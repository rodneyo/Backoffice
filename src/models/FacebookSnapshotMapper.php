<?php
/**
 *
 * User: grimm
 * Date: 11/20/16
 * Time: 4:10 PM
 */

namespace Classes\models;

use \PDO;
use Classes\services\databaseTableClass;
use Monolog\Logger;


class FacebookSnapshotMapper extends databaseTableClass
{
    protected $db;
    protected $logger;

    public function __construct(PDO $db, Logger $logger)
    {
        $this->db = $db;
        $this->logger = $logger;
        parent::__construct($this->db);
    }

    /**
     * Call the default insert method
     * @param $table
     * @param $data
     */
    public function save($table, $data)
    {
        $this->insert($table, $data);
    }

    /**
     * Move data from one table to the
     * @param $fromTable
     * @param $toTable
     * @param $clientId
     *
     * @throws \Exception
     */
    public function move($fromTable, $toTable, $clientId)
    {
        try {
            $sql = "insert into {$toTable} select * from {$fromTable} where client_id = ?";
            $statement = $this->db->prepare($sql);
            $statement->execute( [$clientId] );

        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }

    /**
     * @param $table
     * @param $clientId
     *
     * @throws \Exception
     * @todo: refactor to use databaseTableClass delete
     */
    public function truncate($table, $clientId)
    {
        try {
            $sql = "delete from {$table} where client_id = ?";
            $statement = $this->db->prepare($sql);
            $statement->execute( [$clientId] );

        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }

    }

    /**
     * Return a list of facebook client account names and ids
     * @return \array
     */
    public function getAccounts()
    {
        $sql = 'select id, fb_account_name from client_marketing_api order by fb_account_name';
        $statement = $this->db->query($sql);

        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

}