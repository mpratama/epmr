<?php

if (isset($_GET['idpasien']) && is_numeric($_GET['idpasien']))
	{
		// get the 'id' variable from the URL
		$idpasien = $_GET['idpasien'];
		}

$database = new medoo();
$detail_pasien = $database->select("pasien", [
	"idpasien",
	"nama",
	"alamat",
	"telepon",
	"usia"
],[
	"id" => $idpasien
]);

$app->render('detail_pasien.html.twig', array(
	'data2' => $detail_pasien
	));