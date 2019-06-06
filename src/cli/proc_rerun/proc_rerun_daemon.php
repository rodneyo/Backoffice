<?php

use Classes\services\ProcReRunException;

/**
 *
 * @todo:  this entire script is quick and dirty and should be refactored to a proper phar file
 */

/**
 * Class ProcReRunner
 */
class ProcReRunner {

    const   QUEUED = 'queued';
    protected $rrj_table;
    protected $rrl_table;
    protected $dbConn;

    /**
     * ProcReRunner constructor.
     *
     * @param array $dbArray
     */
    public function __construct(array $dbArray)
    {
        $dsn = 'mysql:host=localhost;dbname=' . $dbArray['db'];
        $this->rrl_table = $dbArray['log'];
        $this->rrj_table = $dbArray['jobs'];

        $this->dbConn = new \PDO($dsn, $dbArray['user'], $dbArray['password'], [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION ]);
    }

    /**
     * query the database for a list queued jobs
     * @return array
     */
    public function getProcedures()
    {
        try {
            $sql = "
                select rrj.id as jobId, rrj.command_path as commandPath, rrj.command as command,
                rrl.id as jobLogId, rrj.program_type as programType
                from {$this->rrj_table} AS rrj
                join {$this->rrl_table} AS rrl ON rrj.id = rrl.app_id
                where status = ?";

            $statement = $this->dbConn->prepare($sql);

            $statement->execute( [self::QUEUED] );

            return $statement->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $pdoException) {
            $this->logError($pdoException->getMessage());
            exit;

        } catch (ProcReRunException $procReRunException) {
            $this->logError($procReRunException->getMessage());
            exit;
        }
    }

    /**
     * Execute a procedure command and log the result
     * NOTE:  This only starts the command.  It does not poll
     * or gather information about the command it started
     * @param $command
     */
    public function run($command)
    {
        exec($command, $execResults, $execReturnCode);

        print($command . PHP_EOL);
        if ($execReturnCode != 0) {
            print($execReturnCode);
            $this->logError($execResults);
            return;
        }

        $this->logRunning($command);
    }


    /**
     * Log an error
     * @param $errorResults
     */
    public function logError($errorResults)
    {
        //@todo: update log to error state
        if (is_array($errorResults)) {
            error_log('an error has occurred');
            $errors = print_r($errorResults, true);
            error_log($errors);
            //error_log($errorResults[0]);
            return;
        }
        
        error_log($errorResults);
    }

    /**
     * Log a successful command start
     * @param $command
     */
    public function logRunning($command)
    {
        //@todo: update log to running state
        print ('INFO::' . date('Y-m-d H:i:s') . 'Running: ' . $command . PHP_EOL);
    }
}

/*****************************************
 * Main
 *****************************************/
$seconds = 20;
$settingsPath = $argv[1];
require $settingsPath;

$runner = new ProcReRunner($dbArray);

while (true) {

    $procsToRun = $runner->getProcedures();
    
    foreach ($procsToRun as $procedure) {

        switch($procedure['programType']) {
            
            case 'php':
                $command = $procedure['commandPath'] . $procedure['command'] . ' --id=' . $procedure['jobLogId'];
                break;
            
            case 'bash':
            case 'shell':
                $command = $procedure['commandPath'] . $procedure['command'] . ' ' . $procedure['jobLogId'];
                break;
            
            default:
                
        }
        $runner->run(escapeshellcmd($command));
    }
    sleep($seconds);
}

