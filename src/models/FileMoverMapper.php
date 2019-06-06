<?php
/**
 * Date: 1/9/16
 * Time: 7:57 AM
 */

namespace Classes\models;

use \PDO;
use Classes\services\FileMoverException;
use Classes\services\databaseTableClass;
use \Monolog;

/**
 * Data Model class where all data manipulation is done.
 * Class FileMoverMapper
 * @package Classes\models
 */
class FileMoverMapper extends databaseTableClass
{
    protected $db;
    protected $logger;
    protected $table = 'file_mover';

    public function __construct(PDO $db, Monolog\Logger $logger)
    {
        $this->db = $db;
        $this->logger = $logger;
        parent::__construct($this->db);
    }

    /**
     * @return array
     */
    public function findAll()
    {
        $statement = $this->db->query('select * from ' . $this->table . ' order by modified_date desc');
        return $this->dataExchange('out', $statement->fetchAll(PDO::FETCH_ASSOC));
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function findById($id)
    {
        $sql = "select * from {$this->table} where id = :id";
        $statement = $this->db->prepare($sql);

        $statement->execute([ 'id' => $id ]);

        return $statement->fetch(PDO::FETCH_ASSOC);
    }

    /**
     * Saves a record to the table(insert or update)
     * @param $jsonData
     *
     * @return array
     * @throws \Exception
     */
    public function save($jsonData)
    {
        $data = json_decode($jsonData, true);
        $data = $this->dataExchange('in', $data);
        $data['run_time'] = (int) str_replace(':', '', $data['run_time']);

        try {

            if (! isset($data['id']) || empty($data['id'])) {
                $data['create_date'] = date('Y-m-d H:i:s'); // mysql 5.5 does not support multiple default current_timestamp
                $this->insert($this->table, $data);
                return [ 'status' => true ];
            }

            return $this->update($this->table, $data);

        } catch (FileMoverException $e) {
            $exceptionMsg = $e->getMessage();
            $exceptionTrace = $e->getTraceAsString();
            $this->logger->crit($exceptionMsg . PHP_EOL . $exceptionTrace);
            return [ 'error' => $e->getMessage() ];
        }
    }

    /**
     * Updates the force_run column to 1 so the file mover daemon
     * will run all jobs on next cycle
     * @return array
     */
    public function runAll() {
        try {
            $data = ['force_run' => 1];
            $data = $this->dataExchange('in', $data);
            unset($data['enabled']); // dataExchange defaults to on.  todo: refactor

            $this->update($this->table, $data);
            return ['status' => true];

        } catch (FileMoverException $e) {
            $exceptionMsg = $e->getMessage();
            $exceptionTrace = $e->getTraceAsString();
            $this->logger->crit($exceptionMsg . PHP_EOL . $exceptionTrace);
            return [ 'error' => $e->getMessage() ];
        }
    }

    /**
     * Updates the force_run column to 1 for a single mover job
     *
     * @param $id
     * @return array
     */
    public function runSingleJob($id)
    {
        $data = ['file_mover_id' => $id, 'force_run' => 1];
        try {
            $data = $this->dataExchange('in', $data);
            unset($data['enabled']); // dataExchange defaults to on.  todo: refactor

            $this->update($this->table, $data);
            return ['status' => true];

        } catch (FileMoverException $e) {
            $exceptionMsg = $e->getMessage();
            $exceptionTrace = $e->getTraceAsString();
            $this->logger->crit($exceptionMsg . PHP_EOL . $exceptionTrace);
            return [ 'error' => $e->getMessage() ];
        }
    }

    /**
     * Delete a specified record
     * @param $jsonData
     *
     * @return array
     */
    public function deleteConfig($jsonData)
    {
        $data = json_decode($jsonData, true);
        $data = $this->dataExchange('in', $data);

        try {
            if (isset($data['id'])) {
                $this->delete($this->table, $data);
                return [ 'status' => true, 'deleted_id' => $data['id'] ];
            }

            throw new FileMoverException('Record not found.  Can not delete');

        } catch (FileMoverException $e) {
            $exceptionMsg = $e->getMessage();
            $exceptionTrace = $e->getTraceAsString();
            $this->logger->crit($exceptionMsg . PHP_EOL . $exceptionTrace);
            return [ 'error' => $e->getMessage() ];
        }

    }

    /**
     * decouples the html form from the database table.  Provides a mapping between the two
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
                    'from_directory' => $record['from_directory'],
                    'file_string_match' => $record['file_string_match'],
                    'to_directory' => $record['to_directory'],
                    'to_filename' => $record['to_filename'],
                    'run_time' => $record['run_time'],
                    'status' => $record['enabled'],
                    'create_date' => $record['create_date'],
                    'modified_date' => $record['modified_date'],
                    'user' => $record['user'],
                    'force_run' => $record['force_run']
                ];
            }
        }

        if ($direction == 'in') {
            $results['id'] = (isset($data['file_mover_id'])) ? $data['file_mover_id'] : null;
            $results['from_directory'] = (isset($data['from_directory'])) ? $data['from_directory'] : null;
            $results['file_string_match'] = (isset($data['file_string_match'])) ? $data['file_string_match'] : null;
            $results['to_directory'] = (isset($data['to_directory'])) ? $data['to_directory'] : null;
            $results['to_filename'] = (isset($data['to_filename'])) ? $data['to_filename'] : null;
            $results['run_time'] = (isset($data['run_time'])) ? $data['run_time'] : null;
            $results['enabled'] = (isset($data['file_mover_status'])) ? $data['file_mover_status'] : 'on';
            $results['user'] = (isset($data['user'])) ? $data['user'] : $_SERVER['PHP_AUTH_USER'];
            $results['force_run'] = (isset($data['force_run'])) ? $data['force_run'] : 0;
        }

        return $results;
    }
}