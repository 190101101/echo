code_id
code_token
code_status
code_number
code_type
code_desc
code_microtime
code_created

<?php 

$data = [];

for($i = 0; $i < 10000; $i++){

    $data[] = [
        'code_token' => md5(uniqid()),
        'code_number' => rand(10000, 99999),
        'code_type' => 'dynamic',
        'code_desc' => 'dqwdqwd',
        'code_microtime' => microtime(true),
    ];
}

$store = [];
foreach($data as $key => $value){
    $store[] = [
        'code_token' => $value['code_token'],
        'code_number' => $value['code_number'],
        'code_type' => $value['code_type'],
        'code_desc' => $value['code_desc'],
        'code_microtime' => $value['code_microtime'],
    ];
}

dd(db()->store('code', [
    'code_token',
    'code_number',
    'code_type',
    'code_desc',
    'code_microtime'
] , $store));