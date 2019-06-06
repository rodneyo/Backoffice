<?php
/**
 * Vincodo
 * Date: 8/21/16
 * Time: 3:38 PM
 */

namespace Classes\controllers;

use Classes\models\FacebookSnapshotMapper;
use Pheanstalk\PheanstalkInterface;
use Slim\Views\Twig;

class FacebookSnapshotController
{
    protected $queue;
    protected $view;
    protected $queueName;
    protected $snapshotLogPath;
    protected $snapShotMapper;

    public function __construct(
        Twig $view, PheanstalkInterface $queue , $queueName, $snapshotLogPath, FacebookSnapshotMapper $fbSnapShotMapper
    )
    {
        $this->queue = $queue;
        $this->view = $view;
        $this->queueName = $queueName;
        $this->snapshotLogPath = $snapshotLogPath;
        $this->snapShotMapper = $fbSnapShotMapper;
    }

    /**
     * @param $request
     * @param $response
     */
    public function Index($request, $response)
    {
        $fbAccounts = $this->snapShotMapper->getAccounts();
        $this->view->render($response, 'fb_snapshot_index.twig', ['accounts' => $fbAccounts]);
    }

    /**
     * Load a job onto the queue
     * @param $request
     * @param $response
     */
    public function Run($request, $response)
    {
        $formData = $request->getParsedBody();

        $job = [
            'action' => 'fb_snapshot',
            'data' => $formData
        ];

        $this->queue->useTube($this->queueName)->put(json_encode($job));
        $this->view->render($response, 'fb_snapshot_index.twig');
    }

    /**
     * Poll the snapshot log and send back the contents
     * Called via jquery ajax
     * @param $request
     * @param $response
     *
     * @return mixed
     */
    public function getStatus($request, $response)
    {
        $status = file($this->snapshotLogPath);

        return $response->withJson($status, 200);
    }
}