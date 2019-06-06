<?php
/**
 * Created by PhpStorm.
 * User: grimm
 * Date: 1/23/16
 * Time: 10:26 PM
 */

namespace Classes\services;

use Respect\Validation\Exceptions\ValidationException;


class DirectoryExistsException extends ValidationException
{
    public static $defaultTemplates = array(
        self::MODE_DEFAULT => array(
            //example  self::STANDARD => '{{name}} directory does not exist ', // eg: must be string
            self::STANDARD => 'directory does not exist ', // eg: must be string
        ),
        self::MODE_NEGATIVE => array(
            self::STANDARD => 'directory does not exist ', // eg: must not be string
        )
    );
}