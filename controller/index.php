<?php
$database = new medoo();
$list_pasien = $database->select("pasien", [
	"idpasien",
	"nama",
	"alamat",
	"telepon",
	"usia"
],[
	"ORDER" => "nama ASC"
]);

$app->render('index.html.twig', array(
	'data' => $list_pasien
	));