<?php

session_start();

    error_reporting( E_ALL );

    date_default_timezone_set('Europe/London');

    define( "__DEBUG__", true );
    
    require 'Yee/Yee.php';

    
    
    \Yee\Yee::registerAutoloader();

    $app = new \Yee\Yee( require ( 'config.php' ) );

    $app->view( new \Yee\Views\Twig() );

     $app->view->parserOptions = array(
            'charset' => 'utf-8',
            'cache' => __DIR__ . '/cache/templates_c',
            'auto_reload' => true,
            'strict_variables' => false,
            'autoescape' => true
     );

     $app->view->parserExtensions = array( new \Yee\Views\TwigExtension() );

     /* we need the session variable exposed within templates */
     $twig = $app->view()->getEnvironment();
     $twig->addGlobal( 'session', $_SESSION );

     new Yee\Managers\DatabaseManager();

     //new Yee\Managers\CacheManager();

     new Yee\Managers\RoutingCacheManager(
        array(
            'cache' => __DIR__ . '/cache/routing',
            'controller' => array( __DIR__ . '/App/Controllers' )
        )
     );

     
     
     
   $app->execute();