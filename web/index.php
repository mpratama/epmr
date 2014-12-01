<?php

require '/../vendor/autoload.php';

$app = new \Slim\Slim(array(
	'debug' => true, //ubah false untuk nonaktifkan debug
	'templates.path' => '../views/', //lokasi view
	'view' => new \Slim\Views\Twig() //Twig
	));

$app->get('/', function () use ($app) {
    include '/../controller/index.php';
});

$app->get('/lihat/pasien/:idpasien', function ($idpasien) use ($app) {
    include '/../controller/select.php';
});

$app->run();

?>