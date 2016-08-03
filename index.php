<?php
//by: shonenki
//date: 02/08/2016
//title: Ejemplo de autocompletación asincrónica utilizando PHP, Jquery y MySQL

//Visualización de errores y llamada al controlador
error_reporting(E_ALL);
ini_set('display_errors', 1);
require('app/controller/mvc.controller.php');

//Llama al controlador y envía la página a visualizar
$mvc = new mvc_controller("buscador.php");
$mvc->arma_seccion();
