<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';

$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    
    'components' => [
        
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - thism is required by cookie validation
            'cookieValidationKey' => 'lBrtM8pbt1ozTAw2TqvzfuYx8C5J_Wa7',
        ],
        'db' => $db,
        'authManager'  => [
            'class'        => 'yii\rbac\DbManager',
            //            'defaultRoles' => ['guest'],
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\Users',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
           'class' => 'yii\swiftmailer\Mailer',
            'useFileTransport' => false,
            'transport' => [
                'class' => 'Swift_SmtpTransport',
                'host' => 'smtp.gmail.com',
                'username' => 'spslzam@gmail.com',
                'password' => 'swexvqgyahonaymr',
                'port' => '587',
                'encryption' => 'tls',
            ],
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => $db,
        
        // 'urlManager' => [
        //     'enablePrettyUrl' => true,
        //     'showScriptName' => false,
        //     'rules' => [
        //         // Other URL rules...
    
        //         'client/get-details/<managerId:\d+>' => 'client/get-details', // Assuming 'client' is the controller ID
        //     ],
        // ],

        'controllerNamespace' => 'app\controllers',
        
        
    ],
    'modules' => [

        'gridview' => ['class' => 'kartik\grid\Module']
    ],
    'params' => $params,
    
    
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
  

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
