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

$app->get('/pasien/:idpasien/tambah', function ($idpasien) use ($app) {
	$database = new medoo();
	$list_dokter = $database->select('dokter',[
		'nama'
		],[
		'ORDER' => 'nama ASC'
		]);
	$dokter = $list_dokter;
    $app->render('form_kunjungan.html.twig', array( 'idpas' => $idpasien, 'dok' => $dokter));
});

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

$app->post('/pasien/:idpasien/enter/', function ($idpasien) use ($app) {
	$database = new medoo();
	$tambah_kunjungan = $database->insert("kunjungan",[
		'tanggal' => $_POST["tanggal"],
		'tipe' => $_POST["tipe"],
		'dokter' => $_POST["dokter"],
		'obat' => $_POST["obat"],
		'idpas' => $_POST["idpas"],
		'info_dokter' => $_POST["info_dokter"],
		'khasiat_obat' => $_POST["khasiat_obat"],
		'keterangan_resep' => $_POST["keterangan_resep"],
		'penyimpanan_obat' => $_POST["penyimpanan_obat"],
		'interaksi_obat' => $_POST["interaksi_obat"]
		]);
	$app->response->redirect($app->urlFor('pasien', array('idpasien' => $idpasien)));
});

$app->run();

?>