<?php

if( __DEBUG__ ) 
{    
    // Debug Mode - Development
     return array(
                'templates.path'    => './templates/',
                'debug' => true,
                'log.enabled' => true,
                'log.writer' => new \Yee\Log\FileLogger(
                    array(
                        'path' => __DIR__.'/logs',
                        'name_format' => 'Y-m-d',
                        'message_format' => '%label% - %date% - %message%'
                    )
                ),
                'session' => 'php',   // php, database or memcached
                'cache.path'=> __DIR__.'/cache',
                'cache.timeout'=> 1800,
                'system.base.url'   => "http://localhost",
                'system.base.path'  => "/var/www/html/",

                    // Database connect
                'database' => array(
                    'default' => array(
                        "database.host" => "localhost",
                        "database.user" => "root",
                        "database.pass" => "",
                        "database.name" => "mebeli_krasi",
                        "database.port" => 3306, 
                    )
                ),
    
    );

} else {
    // Production Mode   
    return array(
                'templates.path'    => './templates/',
                'debug' => false,
                'log.enabled' => true,
                'log.writer' => new \Yee\Log\FileLogger(
                    array(
                        'path' => __DIR__.'/logs',
                        'name_format' => 'Y-m-d',
                        'message_format' => '%label% - %date% - %message%'
                    )
                ),
                'session' => 'php',   // php, database or memcached
                'cache.path'=> __DIR__.'/cache',
                'cache.timeout'=> 1800,
                'system.base.url'   => "http://localhost",
                'system.base.path'  => "/var/www/html/"
    
    );
    
}    