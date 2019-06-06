<?php

/**
 * daemon that reads the file_mover table and executes the mover configs
 * if the current time matches the config
 *
 * @todo:  this entire script is quick and dirty and should be refactored to a proper phar file
 */
$seconds = 60;
$settingsPath = $argv[1];
$zipFileExtractLoc = '/tmp/file_mover_unzipped';
require $settingsPath;

while (true) {
    $currentDateTime = date('YmdGi');
    $currentDate = date('Ymd');

    $dsn = 'mysql:host=localhost;dbname=' . $database;
    $table = 'file_mover';

    $options = [ PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8' ];

    $db = new PDO($dsn, $user, $password);

    $sql = "select * from {$table} where enabled = ?";
    $statement = $db->prepare($sql);

    $statement->execute( ['on'] );
    $records = $statement->fetchAll(PDO::FETCH_ASSOC);

    foreach ($records as $record) {
        $execResults = [];
        $latestFile = [];
        $execReturnCode = 0;
        $configDateTime = $currentDate . $record['run_time'];

        if ($configDateTime == $currentDateTime || $record['force_run']) {
            $copyFromCmd = $fromRootDir . '/' . $record['from_directory'] . '/' . $record['file_string_match'];
            $copyToCmd = $toRootDir . '/' . $record['to_directory'] . '/' . $record['to_filename'];


            $latestFileCmd = 'ls -1t ' . str_replace(' ', "\\ ", $copyFromCmd) . ' | head -1';

            exec($latestFileCmd, $latestFile, $latestFileReturnCode);

            $fileToCopy = checkFileMimeType($latestFile[0], $zipFileExtractLoc);

            $copyCmd = 'cp ' . str_replace(' ' , "\\ ", quotemeta($fileToCopy)) . ' '
                . str_replace(' ', "\\ ", $copyToCmd) .
                ' 2>&1';

            exec($copyCmd, $execResults, $execReturnCode);

            if ($execReturnCode != 0) {
                error_log(print_r($execResults, true));
            } else {
                print ('INFO::' . date('Y-m-d H:i:s') . 'Copy Results: ' . $copyCmd . PHP_EOL);
            }

            recursiveRmDir($zipFileExtractLoc);

            if ($record['force_run']) {
                $sql = "update {$table} set force_run = 0 where id = ?";
                try {
                    $statement = $db->prepare($sql);
                    $statement->execute([$record['id']]);
                } catch (\PDOException $e) {
                    error_log($e->getMessage());
                }
            }

        }
    }
    sleep($seconds);
}

/**
 * If file is zipped, unzip to tmp and send unzipped file and path
 * back copy command
 * @param $file
 * @param $zipFileExtractLoc
 *
 * @return string
 */
function checkFileMimeType($file, $zipFileExtractLoc)
{
    $mimeType = mime_content_type($file);

    if (preg_match('/application\/zip/i', $mimeType)) {

        $zip = new \ZipArchive();

        if ($zip->open($file) === true) {

            $fileName = $zip->getNameIndex(0);
            $zip->extractTo($zipFileExtractLoc);
            $zip->close();

            $fileToCopy =  $zipFileExtractLoc . '/' . $fileName;

            return $fileToCopy;
        }
    }


    return $file;
}

/**
 * recursively remove the file mover tmp dir
 * @param $dir
 */
function recursiveRmDir($dir)
{
    $iterator = new RecursiveIteratorIterator(new \RecursiveDirectoryIterator($dir, \FilesystemIterator::SKIP_DOTS), \RecursiveIteratorIterator::CHILD_FIRST);
    foreach ($iterator as $filename => $fileInfo) {
        if ($fileInfo->isDir()) {
            rmdir($filename);
        } else {
            unlink($filename);
        }
    }
}
