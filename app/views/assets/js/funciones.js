//Registra tecleo en el campo de Búsqueda
$( "#buscar" ).keyup(function(){
    //Asigna el contenido tecleado a la variable txt
    var txt = $("input:text[name=buscar]").val();

    //Envía por Post la variable tecleada al controlador y es validada
    //por el archivo post.controller.php
    $.post("app/controller/post.controller.php", {busca:""+txt+"", accion:"busca_pais"}, function(data){
        //hace un parse al resultado devuelto en json
        var paises = JSON.parse(data);
        //integra el resultado al "autocomplete" del input
        $( "#buscar" ).autocomplete({
            source: paises
        });
    });
});

//Devuelve información del registro marcado
$( "#buscar" ).autocomplete({
    select: function( event, ui ) {
        var pais = ui.item.value;
        $.post("app/controller/post.controller.php", {busca: ""+pais+"", accion:"busca_todo"}, function(data){
            var json = JSON.parse(data); 
            //anexa el resultado a los campos correspondientes utilizando JS
            document.getElementById('id_pais').value = json.id_pais;
            document.getElementById('siglas').value = json.siglas;
            document.getElementById('pais').value = json.pais;
        });
    }
});