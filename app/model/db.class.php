<?php 

class db
{ 
    private $host, $user, $pass, $database, $charset;
    
    public function __construct(){
        $config = require 'config.class.php';
        $this->host = $config["host"];
        $this->user = $config["user"];
        $this->pass = $config["pass"];
        $this->database = $config["database"];
        $this->charset = $config["charset"];
    }
    
    public function conecta(){
        $link = mysqli_connect($this->host, $this->user, $this->pass, $this->database);
        $link->query("SET NAMES '".$this->charset."' ");
        return $link; 
    }
    
    public function desconecta(){
        mysqli_close($this->conecta());
    }
    
    public function sql_ejecuta($sql){
        $link = $this->conecta();
        $resultado = mysqli_query($link, $sql)
            or die("Error: ".mysqli_error($link));
        return $resultado;
    }
}

