<?php

$database = new medoo();
$hapus_pasien = $database->delete("pasien", [
	"AND" => [
		"idpasien" => $idpasien
		]
	]
);
$app->response->redirect($app->urlFor('index'));