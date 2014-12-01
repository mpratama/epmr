<?php

$database = new medoo();
$detail_pasien = $database->select("pasien", [
	"idpasien",
	"nama",
	"alamat",
	"telepon",
	"usia"
],[
	"idpasien" => $idpasien
]);

$app->render('detail_pasien.html.twig', array(
	'data2' => $detail_pasien
	));