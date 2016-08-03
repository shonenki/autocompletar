<?php

class pais extends db
{
    function retorna_pais($busca){
        //Arma el query con las coincidecias según lo que teclee el usuario
        $sql = "SELECT pais FROM paises WHERE pais like '%".$busca."%' LIMIT 10 ";
        //llama a la función para ejecutar el query de la clase db y retorna el resultado
        $resultado = $this->sql_ejecuta($sql);
        //recorre el resultado y arma un arreglo con las coincidencias de países
        while($data = mysqli_fetch_array($resultado)){
            $paises[] = $data["pais"];
        }
        
        //hace un encode en json y retorna el resultado al controlador
        $obj = json_encode($paises);
        return $obj;
       
    }
    
    function retorna_todo($busca){
        //Devuelve los campos del país seleccionado
        $sql = "SELECT * FROM paises WHERE pais = '$busca' ";
        $resultado = $this->sql_ejecuta($sql);
        $data = mysqli_fetch_array($resultado);
        
        //Arma un array con los valores
        $datos = array(
            "id_pais"=>$data["id_pais"],
            "siglas"=>$data["siglas"],
            "pais"=>$data["pais"]
        );
        //hace un encode en json y retorna el resultado al controlador
        $obj = json_encode($datos);
        return $obj;
    }
}