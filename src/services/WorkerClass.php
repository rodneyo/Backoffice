<?php
/**
 * Created by PhpStorm.
 * User: grimm
 * Date: 8/22/16
 * Time: 7:22 PM
 */

namespace Classes\services;


use Pheanstalk\PheanstalkInterface;

class WorkerClass
{
    protected $db;
    protected $queue;

    public function __construct(\PDO $db, PheanstalkInterface $queue)
    {
        $this->db = $db;
        $this->queue = $queue;
    }

    public function watchQueue($name)
    {
        $this->queue->watch($name);
    }

    public function ignoreTube($tube)
    {
        $this->queue->ignore($tube);
    }

    public function reserveJob()
    {
        return $this->queue->reserve();
    }

    public function getData($job)
    {
        return json_decode($job->getData());
    }

    public function jobStats($job)
    {
        return $this->queue->statsJob($job);

    }

    public function deleteJob($job)
    {
        return $this->queue->delete($job);
    }
}