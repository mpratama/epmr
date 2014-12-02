<?php
$database = new medoo();
$list_dokter = $database->select("dokter", [
	"iddokter",
	"nama",
	"lokasi",
	"telepon"
],[
	"ORDER" => "nama ASC"
]);

$app->render('dokter.html.twig', array(
	'data' => $list_dokter
	));