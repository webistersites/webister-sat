<?php
include 'conecta.php';
echo "<script>";
include 'ajax2.js';
echo "</script>";

$indice = mysql_query("SELECT id FROM categorias WHERE id = 5");
$id_mesa = $_GET['mesa'];

    echo "<p>"
        ."<div class='ui four column doubling stackable grid container'>"
        ;

    $query = mysql_query('select * from tec_products where category_id = 5');
    while ($produtos=mysql_fetch_array($query)) {
      echo "<div class='column'>"
            ."<p>"
              //."<a href='#popup".$produtos['id']."'><img class='ui tiny bordered rounded image' src='pdv/uploads/".$produtos['image']."'></a>"
              ."<a href='javascript:void(0);' onclick='listaMesa(".$produtos['id'].",".$id_mesa.");'><img class='ui tiny bordered rounded image' src='images/".$produtos['image']."'></a>"
            ."</p>"
            ."<p>"
              .$produtos['code']." - ".$produtos['name']
            ."</p>"
          ."</div>"
      ;
    }
    echo "</div>"
        ."</p>";

        
?>