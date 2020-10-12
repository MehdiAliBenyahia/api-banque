<?php

require 'App.php';
$app = new App();

$method = false;

if (key_exists("method", $_GET)) {
    $method = $_GET["method"];
}


if (key_exists("page", $_GET)) {
    $page = ucfirst($_GET["page"]);

    require $page.".php";
    $class = new $page();


    require 'router.php';

} else {
    $app->sendData("Erreur de choix de table");
}
