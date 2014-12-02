<?php

$database = new medoo();
$hapus_pasien = $database->delete("pasien", [
	"AND" => [
		"idpasien" => $idpasien
		]
	]
);
$app->redirect('/epmr/web');