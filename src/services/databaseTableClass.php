<?php
/**
 * Created by PhpStorm.
 * User: grimm
 * Date: 1/13/16
 * Time: 9:31 PM
 */

namespace Classes\services;

class databaseTableClass
{
    protected $db;

    protected function __construct(\PDO $db)
    {
        $this->db = $db;
    }


    /**
     * @param $table
     * @param $modelData
     *
     * @return array
     * @throws \Exception
     */
    protected function insert($table, $modelData)
    {
        try {
            unset($modelData['id']);
            $columns = implode(',', array_keys($modelData));
            $bindParams = implode(',:', array_keys($modelData));
            $bindParams = ':' . $bindParams;

            $sql = "insert into {$table} ( {$columns} ) values ({$bindParams})";

            $statement = $this->db->prepare($sql);
            $statement->execute($modelData);

            return [ 'status' => 'insert' ];

        } catch (\PDOException $e) {
            throw new FileMoverException('An database error occurred saving this job.  Please contact support');
        } catch (\Exception $e) {
            throw new FileMoverException('An application error ocurred Please contact support');
        }
    }

    /**
     * @param $table
     * @param $modelData
     *
     * @return array
     * @throws \Classes\services\FileMoverException
     *
     * to_directory = :to_directory,
     * @todo: remove FileMoverException, refactor to use \Exception
     */
    protected function update($table, $modelData)
    {
        $id = null;

        try {
            $modelData = array_filter($modelData);

            $id = (isset($modelData['id'])) ? $modelData['id'] : null;
            unset($modelData['id']);

            $bindParams = array_keys($modelData);
            $bindValues = array_values($modelData);

            $updateParamsArray = array_map(function($a, $b) {
                if (isset($b) && ! empty($b)) {
                    return $a . ' = ' . ':' . $a;
                }
                return null;

            }, $bindParams, $bindValues);

            $updateParamsString = implode(',', $updateParamsArray);

            $sql = "update {$table} set {$updateParamsString}";

            if (isset($id)) {
                $sql .= ' where id = :id';
                $modelData['id'] = $id;
            }

            $statement = $this->db->prepare($sql);
            $statement->execute($modelData);

            return [ 'status' => 'update'];

        } catch (\PDOException $e) {
            throw new FileMoverException($e->getMessage());
        }
    }

    /**
     * Delete a record from the file mover table
     * @param $table
     * @param $modelData
     *
     * @throws \Classes\services\FileMoverException
     * @todo: remove FileMoverException, refactor to use \Exceptoin
     */
    protected function delete($table, $modelData)
    {
        try {
            $sql = "delete from {$table} where id = :id";

            $statement = $this->db->prepare($sql);
            $statement->execute([ 'id' => $modelData['id'] ]);

        } catch (\PDOException $e) {
            throw new FileMoverException($e-getMessage());
        }
    }
}