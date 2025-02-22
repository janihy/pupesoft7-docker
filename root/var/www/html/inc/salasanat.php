<?php

date_default_timezone_set("Europe/Helsinki");

$dbhost = getenv("MARIADB_HOST");
$dbuser = getenv("MARIADB_USER");
$dbpass = getenv("MARIADB_PASSWORD");
$dbkanta = getenv("MARIADB_DATABASE");

$palvelin = getenv("SERVER");

if (isset($_SERVER["SERVER_PORT"]) and $_SERVER["SERVER_PORT"] == "443") {
    $palvelin = "https://www.palvelin.com/";
}

?>
