<?php

$database = new medoo();
$detail_pasien = $database->select("pasien", [
	"idpasien",
	"nama",
	"alamat",
	"telepon",
	"usia",
	"alergi",
	"penyakit_lain"
],[
	"idpasien" => $idpasien
]);

$lihat_kunjungan = $database->select("kunjungan", [
	"id",
	"tanggal"],[
	"idpas" => $idpasien,
	"ORDER" => "id ASC"
	]);

$app->render('detail_pasien.html.twig', array(
	'data2' => $detail_pasien,
	'data3' => $lihat_kunjungan
	));