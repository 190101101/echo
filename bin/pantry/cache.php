<?php 

$file = "../tmp/cache/".md5('index').'.html';

if(file_exists($file) && (time() - 10 > filemtime($file))){
	file_put_contents($file, file_get_contents('http://echo.com/dd2'));
}


ob_start();

$file = '../tmp/cache/index.html';

require_once $file;

$data['VIEW'] = ob_get_contents();

ob_end_clean();

require_once "../layout/main.php";


