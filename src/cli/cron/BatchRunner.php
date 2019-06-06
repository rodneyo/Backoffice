#!/usr/bin/php
<?php
/**
 * Daily processor of all reports.  Runs in vincodo
 * crontab.
 * Date: 3/26/16
 * Time: 1:03 PM
 */

class BatchRunner
{
    public function __construct($dbArray)
    {
        $dsn = 'mysql:host=localhost;dbname=' . $dbArray['db'];
        $this->rrl_table = $dbArray['log'];
        $this->rrj_table = $dbArray['jobs'];
        $this->run_log_view_table = $dbArray['run_log_view'];

        $this->dbConn = new \PDO($dsn, $dbArray['user'], $dbArray['password'], [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION ]);
    }

    /**
     * Find all jobs to be run
     *  - Only grab jobs that are new or in a completed state
     * 
     * @return array
     */
    public function getAllJobs()
    {
        $sql = "
                select prj.id 
                  from {$this->rrj_table} as prj
                left join {$this->run_log_view_table} as ljrl
                 where ljrl.status = 'completed' or ljrl.status is null
               ";

        try {
            $statement = $this->dbConn->query($sql);

            return $statement->fetchAll(PDO::FETCH_ASSOC);

        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Short name are usually passed as cli arguments to the BatchRunner.  This allows
     * the BatchRunner to be scheduled in cron and only run specified jobs
     *  - Only grab jobs that are new or in a completed state
     * 
     * @param array $shortNames
     *
     * @return array
     */
    public function getJobsByShortName(array $shortNames)
    {
        $placeHolders = str_repeat('?, ', count($shortNames) - 1) . '?';

        $sql = "
                select prj.id, prj.proc_short_name
                  from {$this->rrj_table} as prj
                left join {$this->run_log_view_table} as ljrl
                on prj.id = ljrl.job_id
                where proc_short_name in ({$placeHolders})
                and (ljrl.status = 'completed' or ljrl.status = 'error' or ljrl.status is null)
                ";
        
        try {
            $statement = $this->dbConn->prepare($sql);
            $statement->execute($shortNames);

            $results = $statement->fetchAll(PDO::FETCH_ASSOC);

            if (count($results) <= 0) {
                $shortNamesStr = implode(', ', $shortNames); 
                $errMessage = "Could not find one or more of these report short-name(s): {$shortNamesStr}." . PHP_EOL;
                $errMessage .= "The job may be currently queued, running or in an error state" . PHP_EOL;
                throw new Exception($errMessage);
            }
            
            return $results;

        } catch (Exception $e) {
            echo $e->getMessage();
            exit;
        }
    }

    /**
     * Inserts a log entry that the re-run daemon will pick up
     * @param $jobId
     */
    public function submitBatchJob($jobId)
    {
        try {
            $data = [
                'app_id'      => $jobId,
                'run_time'    => null,
                'finish_time' => '0000-00-00 00:00:00',
                'status'      => 'queued',
                'user'        => 'auto-runner'
            ];

            $columns = join(',', array_keys($data));
            $bindParams = join(',:', array_keys($data));
            $bindParams = ':' . $bindParams;

            $sql = "insert into {$this->rrl_table} ( {$columns} ) values ({$bindParams})";

            $statement = $this->dbConn->prepare($sql);
            $statement->execute($data);

        } catch (Exception $e) {
            $exceptionMsg = $e->getMessage();
            $exceptionTrace = $e->getTraceAsString();
            echo $exceptionMsg;
            echo $exceptionTrace;
        }
    }
}

/*****************************************
 * Main
 *****************************************/
$longOpts = [ 'spath:', 'short-name::' ];
$options = getopt('', $longOpts);
$settingsPath = $options['spath'];
require $settingsPath;

if (! array_key_exists('spath', $options)) {
    throw new Exception('Please provide the path for the settings file');
}

$batchRunner = new BatchRunner($dbArray);

if (array_key_exists('short-name', $options)) {

    $jobNames = explode(' ', $options['short-name']);
    
    try {
        $jobIds = $batchRunner->getJobsByShortName($jobNames);
    } catch (Exception $e) {
        echo $e->getMessage();
    } 
} else {
    $jobIds = $batchRunner->getAllJobs();
}


foreach ($jobIds as $jobId) {
    $batchRunner->submitBatchJob($jobId['id']);
}
