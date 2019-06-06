#!/usr/bin/php
<?php
/**
 * Date: 1/29/18
 * Time: 7:56 PM
 */
/**
 * Queue monitor job
 * Managed by supvisord.  Monitors the beanstalkd queue
 * and directs work to specific classes
 * User: roliver
 * Date: 8/22/16
 * Time: 7:52 PM
 */

require __DIR__ . '/../../../../vendor/autoload.php';

/**
 * Detect environment for worker
 */
$cliEnvironment = gethostname();

switch ($cliEnvironment) {
    case 'orion':
        putenv('APP_ENV=cli-stage');
        break;

    case 'vincodo-dev':
        putenv('APP_ENV=cli-dev');
        break;

    default:
}

// Instantiate the app
$settings = require __DIR__ . '/../../../../src/settings.local.php';
$app = new \Slim\App($settings);

// Set up dependencies
require __DIR__ . '/../../../../src/dependencies.php';

$queue_monitor = $container->get('worker_class');

/******
 * Main
 ******/

$appLogger = $container->get('logger');

$db =  $container->get('db');
$job = $queue_monitor->watchQueue($container->get('settings')['queue_name']);
$job = $queue_monitor->reserveJob();
$jobData = $queue_monitor->getData($job);

try {
    switch ($jobData->action) {

        case 'fb_snapshot':

            $snapShotDbMapper = $container->get('facebookSnapShotMapper');
            $snapShotLogger = $container->get('fb_snapshot_logger');

            if (file_exists($container->get('settings')['fb_snapshot_logger']['path'])) {
                unlink($container->get('settings')['fb_snapshot_logger']['path']);
            }

            $fbSnapshot = new \Classes\services\FacebookSnapshot($db, $snapShotLogger, $snapShotDbMapper);
            $fbSnapshot->run($jobData->data);
            break;

        case 'file_mover':

            $fileMoved = false;
            putenv('FROM_ROOT_DIR=' . $container->get('settings')['directoryRoots']['fromRoot']);
            putenv('TO_ROOT_DIR=' . $container->get('settings')['directoryRoots']['toRoot']);

            $fileMoverLogger = $container->get('file_mover_logger');
            $fileMover = new \Classes\services\FileMoverWorkerClass($fileMoverLogger);
            $fileMoved = $fileMover->run($jobData->data);

            if ($fileMoved) {
                $queue_monitor->deleteJob($job);
                break;
            }
            $queue_monitor->releaseJob($job);

            break;
    }
} catch (\Exception $e) {
    $appLogger->addCritical($e->getMessage());

} finally {
    $queue_monitor->deleteJob($job);
}
