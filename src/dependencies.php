<?php
use Pheanstalk\Pheanstalk;
use Classes\controllers\FacebookSnapshotController;
use Classes\services\WorkerClass;
use Monolog\Logger;
use Monolog\Formatter\LineFormatter;
use Monolog\Handler\StreamHandler;
use Monolog\Processor\UidProcessor;

// DIC configuration
$container = $app->getContainer();

/**
 * @param $c
 *
 * @return Pheanstalk
 */
$container['queue'] = function($c) {
    $bQueue = new Pheanstalk($c->get('settings')['queue_host']);
    return $bQueue;
};

/**
 * @param $c
 *
 * @return Logger
 * @throws Exception
 */
$container['logger'] = function ($c) {
    $settings = $c->get('settings')['logger'];
    $logger = new Logger($settings['name']);
    $logger->pushProcessor(new UidProcessor());
    $logger->pushHandler(new StreamHandler($settings['path'], Logger::DEBUG));
    return $logger;
};

/**
 * Records information from the facebook snapshot worker
 * @param $c
 *
 * @return Logger
 * @throws Exception
 */
$container['fb_snapshot_logger'] = function ($c) {
    $settings = $c->get('settings')['fb_snapshot_logger'];
    $dateFormat = "Y-m-d H:i:s";
    $output = "[%datetime%] %level_name% ==> %message%" . PHP_EOL;

    $formatter = new LineFormatter($output, $dateFormat);
    $stream = new StreamHandler($settings['path'], Logger::DEBUG);
    $stream->setFormatter($formatter);

    $logger = new Logger($settings['name']);
    $logger->pushHandler($stream);

    return $logger;
};

/**
 * @param $c
 *
 * @return mixed
 */
$container['worker_class'] = function($c) {
    $db = $c->get('db');
    $queue = $c->get('queue');
    return new WorkerClass($db, $queue);
};

/**
 * @param $c
 *
 * @return PDO
 */
$container['db'] = function ($c) {
    $db = $c->get('settings')['db'];
    return new PDO($db['dsn'], $db['username'], $db['password'], [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION ]);
};

/********************************
 * Controllers
 *********************************/
$container['FacebookSnapShotController'] = function($c) {
    $queue = $c->get('queue');
    $view = $c->get('view');
    $queueName = $c->get('settings')['queue_name'];
    $fbLogDetails = $c->get('settings')['fb_snapshot_logger'];
    $facebookSnapShotMapper = $c->get('facebookSnapShotMapper');
    return new FacebookSnapshotController(
        $view, $queue, $queueName, $fbLogDetails['path'], $facebookSnapShotMapper);
};

$container['IndexController'] = function($c) {
    $logger = $c->get('logger');
    $view = $c->get('view');
    return new \Classes\controllers\IndexController($view, $logger);
};

/********************************
 * Models
 *********************************/
/**
 * Returns a configured pdo instance for the file_mover table
 * @param $c
 *
 * @return \Classes\models\FileMoverMapper
 */
$container['filemoverModel'] = function ($c) {
    return new Classes\models\FileMoverMapper($c->get('db'), $c->get('logger'));
};

/**
 * @param $c
 *
 * @return \Classes\models\ProcedureReRun
 */
$container['procedureReRunModel'] = function ($c) {
    return new Classes\models\ProcedureReRun($c->get('db'), $c->get('logger'));
};

$container['facebookSnapShotMapper'] = function ($c) {
    return new Classes\models\FacebookSnapshotMapper($c->get('db'), $c->get('fb_snapshot_logger'));
};


/**
 * Validation for saving configurations
 * @param $c
 *
 * @return \DavidePastore\Slim\Validation\Validation
 */
$container['validation'] = function ($c) {

    $directoryRoots = $c->get('settings')['directoryRoots'];

    $validator = new \Respect\Validation\Validator();
    $validator::with('Classes\\services\\');


    $fromDirValidator = $validator::notBlank();
    $fromDirValidator->addRule($validator::DirectoryExists($directoryRoots['fromRoot']));

    $fileStringMatchValidator = $validator::notBlank();

    $toDirectoryValidator = $validator::notBlank();
    $toDirectoryValidator->addRule($validator::DirectoryExists($directoryRoots['toRoot']));

    $toFileNameValidator = $validator::notBlank();

    $validators = [
        'from_directory' => $fromDirValidator,
        'file_string_match' => $fileStringMatchValidator,
        'to_directory' => $toDirectoryValidator,
        'to_filename' => $toFileNameValidator
    ];

    return new DavidePastore\Slim\Validation\Validation($validators);
};

// Twig Templates
$container['view'] = function ($c) {
    $view  = new Slim\Views\Twig(__DIR__ . '/../templates', [ 'cache' => false ]);

    $view->addExtension(new Slim\Views\TwigExtension(
                            $c['router'],
                            $c['request']->getUri()
                        ));

    $filter = new Twig_SimpleFilter('runTimeFormat', function($integer) {
        $charTime = sprintf('%04d', $integer);
        $time = str_split($charTime, strlen($charTime) / 2);
        return implode(':', $time);
    });

    $view->getEnvironment()->addFilter($filter);

    return $view;
};
