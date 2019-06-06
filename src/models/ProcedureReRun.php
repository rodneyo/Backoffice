<?php
/**
 * Created by PhpStorm.
 * User: grimm
 * Date: 2/15/16
 * Time: 1:10 PM
 */

namespace Classes\models;


use \PDO;
use Classes\services\databaseTableClass;
use Classes\services\ProcReRunException;
use Monolog\Logger;

class ProcedureReRun extends databaseTableClass
{
    const   QUEUED = 'queued';
    protected $db;
    protected $logger;
    protected $rrjTable = 'proc_rerun_jobs';
    protected $rrlTable = 'proc_rerun_log';
    protected $run_log_view = 'latest_job_run_log';

    public function __construct( PDO $db, Logger $logger)
    {
        $this->db = $db;
        $this->logger = $logger;
    }

    /**
     * @return array
     * @todo: refactor to use latest_job_run_log
     */
    public function findAllJobs()
    {
        // This sql is not sql standard
        //@todo: refactor to use latest_job_run_log view
        $sql = "
            select rrj.id, rrj.procedure_display_name, rrl.app_id, rrl.run_time, rrl.finish_time, rrl2.user, rrl2.status,
                   rrl2.error_message
            from {$this->rrjTable} as rrj
            left join
              (
                select app_id, max(id) as id, max(run_time) as run_time, max(finish_time) as finish_time
                from {$this->rrlTable}
                group by app_id
              ) as rrl
            on rrj.id = rrl.app_id
            left join {$this->rrlTable} as rrl2 on rrl.id = rrl2.id
            order by rrl.run_time desc
        ";

        $statement = $this->db->query($sql);
        return $this->dataExchange('out', $statement->fetchAll(PDO::FETCH_ASSOC));

    }

    /**
     * Insert a job to run into the database queue
     * for processing
     *
     * @param $data
     *
     * @return array
     */
    public function submitJob($data)
    {
        $jobData = json_decode($data, true);

        try {
            $jobStatus = $this->getJob($jobData['jobId']);
            if ($jobStatus['status'] != self::QUEUED && $jobStatus['status'] != 'running') {
                $data = [
                    'app_id'      => $jobData['jobId'],
                    'run_time'    => null,
                    'finish_time' => '0000-00-00 00:00:00',
                    'status'      => self::QUEUED,
                    'user'        => (isset($_SERVER['PHP_AUTH_USER']) ? $_SERVER['PHP_AUTH_USER'] : 'auto runner')
                ];
                $this->dataExchange('in', $data);
                $this->insert($this->rrlTable, $data);
                return [ 'job' => [ 'status' => 'submitted' ] ];
            }
            return [ 'job' => $jobStatus ];

        } catch (ProcReRunException $e) {
            $exceptionMsg = $e->getMessage();
            $exceptionTrace = $e->getTraceAsString();
            $this->logger->crit($exceptionMsg . PHP_EOL . $exceptionTrace);
            return [ 'error' => $exceptionMsg ];
        }

    }

    public function refreshJob($jobId)
    {
        return [ 'job' => $this->getJob($jobId) ];
    }

    /**
     * @param $jobId
     *
     * @return mixed
     */
    protected function getJob($jobId)
    {
        $sql = "select * from {$this->run_log_view} 
                where job_id = :jobId
                and date(run_time) = CURRENT_DATE
                order by run_time DESC";
            
        $statement = $this->db->prepare($sql);
        try {
            $statement->execute([ 'jobId' => $jobId ]);

            return $statement->fetch(PDO::FETCH_ASSOC);
            
        } catch (\PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    /**
     * @param $direction
     * @param $data
     *
     * @return array
     */
    protected function dataExchange($direction, $data)
    {
        $results = [];

        if ($direction == 'out') {
            foreach ($data as $record) {
                $results[] = [
                    'id' => $record['id'],
                    'job_name' => $record['procedure_display_name'],
                    'app_id' => $record['app_id'],
                    'run_time' => $record['run_time'],
                    'finish_time' => $record['finish_time'],
                    'user' => $record['user'],
                    'status' => $record['status'],
                    'error_message' => $record['error_message']
                ];
            }
        }

        if ($direction == 'in') {
            $results['id'] = (isset($data['jobId'])) ? $data['jobId'] : null;
            $results['job_name'] = (isset($data['job_name'])) ? $data['job_name'] : null;
            $results['app_id'] = (isset($data['app_id'])) ? $data['app_id'] : null;
            $results['run_time'] = (isset($data['run_time'])) ? $data['run_time'] : null;
            $results['finish_time'] = (isset($data['finish_time'])) ? $data['finish_time'] : null;
            $results['user'] = (isset($data['user'])) ? $data['run_time'] : null;
            $results['status'] = (isset($data['status'])) ? $data['status'] : null;
        }

        return $results;
    }

}