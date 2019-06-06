#!/usr/bin/php
<?php
/**
 * Created by PhpStorm.
 * User: grimm
 * Date: 8/22/16
 * Time: 7:52 PM
 */
/**
if (PHP_SAPI == 'cli-server') {
    // To help the built-in PHP dev server, check if the request was actually for
    // something which should probably be served as a static file
    $file = __DIR__ . $_SERVER['REQUEST_URI'];
    if (is_file($file)) {
        return false;
    }
}
 **/

require __DIR__ . '/../../../vendor/autoload.php';

if (gethostname() != 'vincodo1') {
    putenv('APP_ENV=cli-dev');
}

// Instantiate the app
$settings = require __DIR__ . '/../../../src/settings.local.php';
$app = new \Slim\App($settings);

// Set up dependencies
require __DIR__ . '/../../../src/dependencies.php';

$worker = $container->get('worker_class');
$snapShotLogger = $container->get('fb_snapshot_logger');
$snapShotDbMapper = $container->get('facebookSnapShotMapper');


/******
 * Main
 ******/

$db =  $container->get('db');
$job = $worker->watchQueue($container->get('settings')['queue_name']);
$job = $worker->reserveJob();

$jobData = $worker->getData($job);

try {
    switch ($jobData->action) {

        case 'fb_snapshot':

            if (file_exists($container->get('settings')['fb_snapshot_logger']['path'])) {
                unlink($container->get('settings')['fb_snapshot_logger']['path']);
            }

            $fbSnapshot = new \Classes\services\FacebookSnapshot($db, $snapShotLogger, $snapShotDbMapper);
            $fbSnapshot->run($jobData->data);

    }
} catch (\Exception $e) {
    $snapShotLogger->addCritical($e->getMessage());

} finally {
    $worker->deleteJob($job);
}








