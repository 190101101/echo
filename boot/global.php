<?php 

global $config;

$config = [
    'text' => [
        'modul' => 'textbelt',
        'method' => 'textSend',
        'area' => 'main',
    ],

    'service' => [
        'modul' => 'service',
        'method' => 'serviceList',
        'area' => 'main',
    ],

    'info' => [
        'modul' => 'info',
        'method' => 'infoRule',
        'area' => 'main',
    ],

    'payment' => [
        'modul' => 'payment',
        'method' => 'paymentInfo',
        'area' => 'main',
    ],

    'auth' => [
        'modul' => 'auth',
        'method' => 'auth',
        'area' => 'auth',
    ],
];
