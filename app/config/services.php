<?php
/**
 * Services are globally registered in this file
 *
 * @var \Phalcon\Config $config
 */

use Phalcon\Di\FactoryDefault;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Url as UrlResolver;
use Phalcon\Mvc\View\Engine\Volt as VoltEngine;
use Phalcon\Mvc\Model\Metadata\Memory as MetaDataAdapter;
use Phalcon\Session\Adapter\Files as SessionAdapter;
use Phalcon\Flash\Direct as Flash;

/**
 * The FactoryDefault Dependency Injector automatically register the right services providing a full stack framework
 */
$di = new FactoryDefault();

/**
 * The URL component is used to generate all kind of urls in the application
 */
$di->setShared('url', function () use ($config) {
    $url = new UrlResolver();
    $url->setBaseUri($config->application->baseUri);

    return $url;
});

/**
 * Setting up the view component
 */
$di->setShared('view', function () use ($config) {

    $view = new View();

    $view->setViewsDir($config->application->viewsDir);

    $view->registerEngines(array(
        '.volt' => function ($view, $di) use ($config) {

            $volt = new VoltEngine($view, $di);

            $volt->setOptions(array(
                'compiledPath' => $config->application->cacheDir,
                'compiledSeparator' => '_',
                'compileAlways' => true
            ));

            return $volt;
        },
        '.phtml' => 'Phalcon\Mvc\View\Engine\Php'
    ));

    return $view;
});

/**
 * Database connection is created based in the parameters defined in the configuration file
 */
$di->setShared('db', function () use ($config) {
    $dbConfig = $config->database->toArray();
    $adapter = $dbConfig['adapter'];
    unset($dbConfig['adapter']);

    $class = 'Phalcon\Db\Adapter\Pdo\\' . $adapter;

    return new $class($dbConfig);
});

/**
 * If the configuration specify the use of metadata adapter use it or use memory otherwise
 */
$di->setShared('modelsMetadata', function () {
    return new MetaDataAdapter();
});

/**
 * Register the session flash service with the Twitter Bootstrap classes
 */
$di->set('flash', function () {
    return new Flash(array(
        'error'   => 'alert alert-danger text-center',
        'success' => 'alert alert-success text-center',
        'notice'  => 'alert alert-info text-center',
        'warning' => 'alert alert-warning text-center'
    ));
});

/**
 * Start the session the first time some component request the session service
 */
$di->setShared('session', function () {
    $session = new SessionAdapter();
    $session->start();
    return $session;
});

// mongodb

// Simple database connection to localhost
$di->set('mongo', function() {
    $mongo = new MongoClient();
    return $mongo->selectDB("webapp");
}, true);

// Connecting to a domain socket, falling back to localhost connection
$di->set('mongo', function() {
    $mongo = new MongoClient("localhost:27017");
    return $mongo->selectDB("webapp");
}, true);

//Set the CollectionManager
$di->set('collectionManager', function(){
    return new Phalcon\Mvc\Collection\Manager();
}, true);

//MongoDB Database 
$di->set('MongoDB', function () use ($config) {
    if (!$config->database->mongo->username OR !$config->database->mongo->password) {
        $mongo = new MongoClient('mongodb://' . $config->database->mongo->host);
    } else {
        $mongo = new MongoClient("mongodb://" . $config->database->mongo->username . ":" . $config->database->mongo->password . "@" . $config->database->mongo->host, array("db" => $config->database->mongo->dbname));
    }

    return $mongo->selectDb($config->database->mongo->dbname);
}, TRUE);