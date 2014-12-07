<?php

$database = new medoo();
$lihat_kunjungan = $database->select("kunjungan", [
	"id",
	"idpas",
	"tipe",
	"dokter",
	"obat",
	"info_dokter",
	"khasiat_obat",
	"keterangan_resep",
	"penyimpanan_obat",
	"interaksi_obat",
	"tanggal"],[
	"id" => $id,
	]);

$app->render('detail_kunjungan.html.twig', array(
	'data' => $lihat_kunjungan,
	));