<?php
// Application middleware

// e.g: $app->add(new \Slim\Csrf\Guard);

// Basic Auth
$app->add(new \Slim\Middleware\HttpBasicAuthentication([
    'secure' => true,
    'relaxed' => $hosts,
    'users' => [
        'admin' => getenv('ADMIN_PASSWD'),
        'tdaly' => getenv('USER_PASSWD')
    ]
]));
