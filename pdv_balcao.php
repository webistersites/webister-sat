<?php
    include "cabecalho.php";
    $verificaAbertura = mysql_query("SELECT * FROM caixa01 ORDER BY id DESC");
    $caixa01 = mysql_fetch_assoc($verificaAbertura);    
?>
<style type="text/css">
    body {
      background-color: #EEE;
    }
    .sumir {
        display: none;
    }
</style>

<div class="ui container">

<?php
    $consulta_pdv_aberto = mysql_query("SELECT status FROM caixa01 where id = (select max(id) from caixa01)");
    if (mysql_result($consulta_pdv_aberto,0) == 'Fechado')
    {
        echo '<br><br>
            <div class="ui center aligned grid">
            <div class="ui negative message">
                <i class="close icon"></i>
                <div class="header">
                  Caixa está fechado!
                </div>
                <p>Por favor, faça abertura do caixa para utilizar o Balcão!
              </p>
              <p><a href="pdv.php" class="ui green button">Abrir caixa</a></p></div></div>';
    }
 else {
     
     include 'balcao2.php';
 }
?>
    
</div>

<?php
 
    include "rodape.php";
    echo '<div class="sumir">';
    include 'teste/autocomplete/789/index.php';
    echo '</div>';
?>
