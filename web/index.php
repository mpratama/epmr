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
})->name('pasien');

$app->get('/pasien/:s/kunjungan/:id/', function ($s, $id) use ($app) {
    include '/../controller/riwayat_kunjungan.php';
})->name('kunjungan');

$app->get('/pasien/baru/', function () use ($app) {
	$app->render('tambah_pasien.html.twig');
})->name('pasienbaru');

$app->post('/pasien/baru/entry/', function () use ($app) {
	$database = new medoo();
	$tambah_pasien = $database->insert("pasien",[
		'nama' => $_POST["nama"],
		'alamat' => $_POST["alamat"],
		'telepon' => $_POST["telepon"]
		]);
	$max = $database->max("pasien", "idpasien");
	$app->response->redirect($app->urlFor('pasien', array( 'idpasien' => $max )));
});

$app->post('/pasien/:idpasien/edit', function ($idpasien) use ($app) {
    include '/../controller/update.php';
});

$app->get('/hapus/:idpasien', function ($idpasien) use ($app) {
    include '/../controller/hapus.php';
});

$app->get('/dokter/', function () use ($app) {
    include '/../controller/dokter.php';
});

$app->run();

?>