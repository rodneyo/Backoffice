<?php
/**
 * Date: 7/3/18
 * Time: 8:54 PM
 */
namespace tests;

use Classes\controllers\IndexController;
use Classes\tests\VincodoTestCase;
use Symfony\Component\DomCrawler\Crawler;

/**
 * Class HomepageTest
 *
 * @package tests
 */
class Test extends VincodoTestCase
{
    protected $app;
    protected $view;
    protected $logger;
    protected $container;
    protected $controller;
    protected $request;
    protected $response;

    public function setUp()
    {
        $settings = require __DIR__  . '/../src/settings.local.php';
        $app = new \Slim\App($settings);

        require __DIR__ . '/../src/dependencies.php';

        $this->view = $container->get('view');
        $this->logger = $container->get('logger');

        require __DIR__ . '/../src/middleware.php';
        require __DIR__ . '/../src/routes.php';

        $this->app = $app;

        // instantiate action
        $this->controller = new IndexController($this->view, $this->logger);

        // We need a request and response object to invoke the action
        $environment = \Slim\Http\Environment::mock([
                'REQUEST_METHOD' => 'GET',
                'REQUEST_URI' => '/'
            ]
        );
        $this->request = \Slim\Http\Request::createFromEnvironment($environment);
        $this->response = new \Slim\Http\Response();
    }

    public function testHomepageIsLoadedAndGives200()
    {
        // run the controller action and test it
        $this->controller->Index($this->request, $this->response);
        $statusCode = $this->response->getStatusCode();
        $this->assertEquals(200, $statusCode, 'Status code should equal 200');
        //print_r(get_class_methods($response));
    }

    public function testVincodoTitleIsDisplayed()
    {
        $this->controller->Index($this->request, $this->response);
        $crawler = new Crawler((string)$this->response->getBody());
        $filter = $crawler->filter('title');
        $this->assertEquals('Vincodo - Back Office', $filter->text(), 'Wrong text in Title');

        $filter = $crawler->filter('button');
    }

    public function testFileProcReRunButtonLinkExists()
    {
        $this->controller->Index($this->request, $this->response);
        $crawler = new Crawler((string)$this->response->getBody());
        $filter = $crawler->selectLink('File Mover');
        $this->assertEquals('File Mover', $filter->text(), 'File Mover button not found');
    }

    public function testFacebookSnapshotButtonLinkExists()
    {
        $this->controller->Index($this->request, $this->response);
        $crawler = new Crawler((string)$this->response->getBody());
        $filter = $crawler->selectLink('Take a Facebook Snapshot');
        print($filter->text());
        $this->assertEquals('Take a Facebook Snapshot', $filter->text(), 'Facebook Snapshot button not found');
    }

    public function testFileMoverButtonLinkExists()
    {
        $this->controller->Index($this->request, $this->response);
        $crawler = new Crawler((string)$this->response->getBody());
        $filter = $crawler->selectLink('MySQL Procedure Re-Run');
        print($filter->text());
        $this->assertEquals('MySQL Procedure Re-Run', $filter->text(), 'Procedure Re-Run button not found');
    }
}
