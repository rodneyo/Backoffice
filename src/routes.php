<?php

$container = $app->getContainer();

// Routes

/************************************
 * Main Index Route
 ************************************/
$app->get('/', 'IndexController:Index');


/**************************
 * File Mover Routes
 **************************/
/**
 * File Mover Route - Index
 */
$app->get('/file-mover', function($request, $response, $args) {
    $this->logger->info('Accessing File Mover...');

    // Pull instance of table from DI container
    $fileMoverModel = $this->filemoverModel;
    $directoryRoots = $this->settings['directoryRoots'];

    return  $this->view->render($response, 'filemover_index.twig', [
        'records' => $fileMoverModel->findAll(),
        'directoryRoots' => $directoryRoots
    ]);
});

/**
 * File Mover Route - Edit
 * Find a specific config by it's id and displays it on the
 * modal
 */
$app->get('/file-mover/edit/{id:[0-9]+}', function($request, $response, $args) {

    $fileMoverModel = $this->filemoverModel;
    $result = json_encode($fileMoverModel->findById($args['id']));

    return $response->withHeader('Content-type', 'application/json')
                    ->write($result);

});

/**
 * File Mover Route - Delete Initiate
 * Find a specific config and prompt for deletion
 *
 * @params: request
 * @params: response
 * @params: args (id)
 */
$app->get('/file-mover/confirm-delete/{id:[0-9]+}', function($request, $response, $args) {

    $fileMoverModel = $this->filemoverModel;
    $result = json_encode($fileMoverModel->findById($args['id']));

    return $response->withHeader('Content-type', 'application/json')
                    ->write($result);

});


/**
 * File Mover Route - Run All Mover Jobs
 * Set force_run to true for all mover jobs
 *
 * @params: request
 * @params: response
 * @params: args (id)
 */
$app->post('/file-mover/run-all', function($request, $response, $args) {

    $fileMoverModel = $this->filemoverModel;
    $result         = json_encode($fileMoverModel->runAll());

    return $response->withHeader('Content-type', 'application/json')
        ->write($result);
});

/**
 * File Mover Route - Run Single Job
 * Set force_run to true for a single mover job
 *
 * @params: request
 * @params: response
 * @params: args (id)
 */
$app->get('/file-mover/run-single-job/{id:[0-9]+}', function($request, $response, $args) {

    $fileMoverModel = $this->filemoverModel;
    $result         = json_encode($fileMoverModel->runSingleJob($args['id']));

    return $response->withHeader('Content-type', 'application/json')
        ->write($result);
});

/**
 * Updates the status of a config (Enabled or Disabled)
 * @params: request
 * @params: response
 * @params: args
 */
$app->post('/file-mover/status', function($request, $response, $args) {

    $fileMoverModel = $this->filemoverModel;
    $data = json_encode($request->getParsedBody());
    $result = json_encode($fileMoverModel->save($data));

    return $response->withHeader('Content-type', 'application/json')
                    ->write($result);

});

/**
 * File Mover Route - Save
 * Notes
 * optional parts of a parameter are enclosed in []
 * optional parms must be in trailing format. Not in the middle of a route
 *      good: /file-mover/save[/{id}]
 *      bad: /file-mover/save[/{id}]/config
 */
$app->post('/file-mover/save', function($request, $response, $args) {

    if ($this->validation->hasErrors()) {
        $errors =  $this->validation->getErrors();

        $result = json_encode(['validation_error' => $errors]);

    } else {
        $fileMoverModel = $this->filemoverModel;
        $data = json_encode($request->getParsedBody());
        $result = json_encode($fileMoverModel->save($data));
    }

    return $response->withHeader('Content-type', 'application/json')
                    ->write($result);
})->add($container->get('validation'));

/**
 *  Delete of a config after confirming
 * @params: postBody deleteId
 */
$app->post('/file-mover/delete', function($request, $response, $args) {

    $fileMoverModel = $this->filemoverModel;
    $data = json_encode($request->getParsedBody());
    $result = json_encode($fileMoverModel->deleteConfig($data));

    return $response->withHeader('Content-type', 'application/json')
                    ->write($result);
});


/************************************
 * Procedure Re-Rerun Routes
 ************************************/
/**
 * Index
 */
$app->get('/proc-rerun', function($request, $response, $args) {
    $procedureReRun = $this->procedureReRunModel;

    $this->view->render($response, 'proc_rerun_index.twig', [
        'records' => $procedureReRun->findAllJobs()
    ]);
});

/**
 * Submit a job to run
 */
$app->post('/proc-rerun/submit', function($request, $response, $args) {
    $procedureReRun = $this->procedureReRunModel;

    $data = json_encode($request->getParsedBody());
    $result = json_encode($procedureReRun->submitJob($data));
    return $response->withHeader('Content-type', 'application/json')->write($result);
});

/**
 * Display the current state of the job
 */
$app->post('/proc-rerun/refresh/{id:[0-9]+}', function($request, $response, $args) {
    $procedureReRun = $this->procedureReRunModel;

    $result = json_encode($procedureReRun->refreshJob($args['id']));
    return $response->withHeader('Content-type', 'application/json')->write($result);
});

/************************************
 * Facebook Snap Shot Routes
 ************************************/
$app->get('/fb-snapshot', 'FacebookSnapShotController:Index');
$app->post('/fb-snapshot/run', 'FacebookSnapShotController:Run');
$app->get('/fb-snapshot/getstatus', 'FacebookSnapShotController:getStatus');
