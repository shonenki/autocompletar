<?php
require('../model/pais.class.php');
class pais_controller
{
    function busca_pais($busca){
        //Define una variable con la clase país en el modelo
        $accion = new pais();
        //Llama a la función y se retorna el valor para que sea procesado por jquery
        return $accion->retorna_pais($busca);
    }
    
    function busca_todo($busca){
        $accion = new pais();
        return $accion->retorna_todo($busca);
    }
}
