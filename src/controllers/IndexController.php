<?php
/**
 * Vincodo
 * Date: 8/21/16
 * Time: 3:38 PM
 */

namespace Classes\controllers;

use Monolog\Logger;
use Slim\Views\Twig;

class IndexController
{
    protected $view;
    protected $appLogger;

    public function __construct(Twig $view, Logger $logger)
    {
        $this->view = $view;
        $this->appLogger = $logger;
    }

    /**
     * @param $request
     * @param $response
     */
    public function Index($request, $response)
    {
        $this->view->render($response, 'index.twig');
    }
}
