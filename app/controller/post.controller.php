<?php
//Este controlador se encarga de recibir los POST que son enviados 
//asincrónicamente a través del $.post del Jquery.

//Llama al controlador para el país y a la clase DB
require('../model/db.class.php');
require('pais.controller.php');

//Valida que la variable recibida por POST exista
if(isset($_POST["accion"])){
    switch($_POST["accion"]){
        case "busca_pais": //Valida que la variable teclada exista
            //llama al controlador para paises
            $pais = new pais_controller();
            //retorna la variable y la imprime para que pueda ser leída por el jquery
            echo $pais->busca_pais($_POST["busca"]);
            break;
        case "busca_todo": //Devuelve todos los campos vinculados al país seleccionado
            $pais = new pais_controller();
            echo $pais->busca_todo($_POST["busca"]);
            break;
    }
    
}

