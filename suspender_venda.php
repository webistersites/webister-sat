<?php

include 'cabecalho.php';

$total      = $_GET['total'];
 $tipo       = $_GET['tipo'];
 $q_senha    = mysql_query("SELECT sum(senha),senha from pedido_balcao");
 $senha      = mysql_result($q_senha,0);
 
 if ($senha == 0) 
 {
    $nf = mt_rand(100, 999); // Gera um valor aleatório de Nota Fiscal;
     mysql_query("UPDATE pedido_balcao SET senha = $nf");
 }
 else
 {
     $nf = mysql_result($q_senha,0,1);
 }

// Pegar o horário atual
date_default_timezone_set('America/Sao_Paulo');
$date = date('Y-m-d H:i');

mysql_query("INSERT vendas_suspensas SELECT '','$nf','$date','$tipo',$total");

if ($tipo == 'balcao') 
    {   
        //include 'imprimir_cozinha.php';

        $pegar_produtos = mysql_query("SELECT id_produto, quantidade, impresso FROM pedido_balcao");

        while ($inserir = mysql_fetch_array($pegar_produtos))
        {
            mysql_query("INSERT produtos_suspensos SELECT '','$nf',".$inserir['id_produto'].",".$inserir['quantidade'].",0,".$inserir['impresso']);
        }

        mysql_query("TRUNCATE TABLE pedido_balcao");
        
        echo '<meta http-equiv="refresh" content="0.1; url=pdv.php">';
    }
    else
    {
        //include 'imprimir_delivery.php';
        
        $pegar_produtos = mysql_query("SELECT id_produto, quantidade, id_motoboy, impresso FROM pedido_delivery");

        while ($inserir = mysql_fetch_array($pegar_produtos))
        {
            mysql_query("INSERT produtos_suspensos SELECT '','$nf',".$inserir['id_produto'].",".$inserir['quantidade'].",".$inserir['id_motoboy'].",".$inserir['impresso']);
        }

        mysql_query("TRUNCATE TABLE pedido_delivery");
        
        echo '<meta http-equiv="refresh" content="0.1; url=pdv_delivery.php">';
    }


?>

