<?php
/**
 * Created by PhpStorm.
 * User: grimm
 * Date: 1/23/16
 * Time: 6:58 PM
 */

namespace Classes\services;

use Respect\Validation\Rules\AbstractRule;

class DirectoryExists extends AbstractRule
{
    protected $directoryRoot;

    public function __construct($directoryRoot)
    {
        $this->directoryRoot = $directoryRoot;
    }

    public function validate($input)
    {
        $input = $this->directoryRoot . $input;
        $input = str_replace('\'', '', $input);
        $value = file_exists($input);
        return $value;
    }
}