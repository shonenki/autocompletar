<?php

class mvc_controller {
    
    public $pagina;
    
    public function __construct($pagina){
        $this->pagina = $pagina;
    }

    public function arma_seccion(){ 
        include('app/views/header.php');
        include('app/views/'.$this->pagina);
        include('app/views/footer.php');
    }        
}