<?php

require '/../vendor/autoload.php';

$app = new \Slim\Slim(array(
	'debug' => true, //ubah false untuk nonaktifkan debug
	'templates.path' => '../views/', //lokasi view
	'view' => new \Slim\Views\Twig() //Twig
	));

$app->get('/', function () use ($app) {
    include '/../controller/index.php';
})->name('index');

$app->get('/pasien/:idpasien', function ($idpasien) use ($app) {
    include '/../controller/select.php';
});

$app->get('/pasien/:idpasien/edit/', function () use ($app) {
    return 'asdasda';
});

$app->get('/hapus/:idpasien', function ($idpasien) use ($app) {
    include '/../controller/hapus.php';
});

$app->get('/dokter/', function () use ($app) {
    include '/../controller/dokter.php';
});

$app->run();

?>