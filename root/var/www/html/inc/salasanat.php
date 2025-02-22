<?php

date_default_timezone_set("Europe/Helsinki");

$dbhost = getenv("MYSQL_HOST");
$dbuser = getenv("MYSQL_USER");
$dbpass = getenv("MYSQL_PASSWORD");
$dbkanta = getenv("MYSQL_DATABASE");

$palvelin = getenv("SERVER");

if (isset($_SERVER["SERVER_PORT"]) and $_SERVER["SERVER_PORT"] == "443") {
    $palvelin = "https://www.palvelin.com/";
}
