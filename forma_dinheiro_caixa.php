<?php 
    include 'conecta.php'; 
    $q_item_impresso = mysql_query("SELECT count(id) FROM pedido_balcao where impresso = 0");
    $item_impresso      = mysql_result($q_item_impresso, 0);

    if ($item_impresso != 0) 
    {
        echo '<div class="ui negative message">
              <div class="header">
                Há itens não impressos no Caixa!
              </div>
              <p>Caso deseja finalizar mesmo assim, prossiga com o pagamento.
            </p></div>';

    echo '<script>';
        include 'js/ajaxpost.js';
    echo "$('form').keypress(function(e) {
            if(e.which == 13 || e.keyCode == 13) 
                $('#enviar_caixa').click();
        });";
    echo '</script>';

    $ver_sub = mysql_query("SELECT
                        sum(a.quantidade*b.cost) as Subtotal
                        FROM
                        pedido_balcao a
                        INNER JOIN
                        tec_products b
                        ON
                        a.id_produto = b.id
                        ORDER BY a.id
                        ");

$subtotal = mysql_result($ver_sub,0);
?>

<h2 class="ui center aligned header">Dinheiro</h2>
<br>
<form action="#" method="post" onsubmit="return false">
<div class="ui center aligned container">
<div class="ui right labeled input">
    <div class="ui green label">R$</div>
        <input type="text" name="nome" id="nome" size="12" autofocus="">
    <div class="ui basic label">.00</div>
</div>
</div>
<?php echo '<input type="hidden" value="'.$subtotal.'" name="email" id="email" />'; ?>
<input type="hidden" name="telefone" id="telefone" />
<input type="hidden" value="Enviar" id="enviar_caixa" />
</form>
<div id="resposta">
<br>
<div class="ui center aligned container">
                <div class="ui huge compact message">
                  <div class="header">
                    Troco: &nbsp;&nbsp;&nbsp;&nbsp; <big><big> - </big></big>
                  </div>
                  </div></div><br>
</div>
<?php 
}

else
{
    echo '<script>';
        include 'js/ajaxpost.js';
    echo "$('form').keypress(function(e) {
            if(e.which == 13 || e.keyCode == 13) 
                $('#enviar_caixa').click();
        });";
    echo '</script>';

    $ver_sub = mysql_query("SELECT
                        sum(a.quantidade*b.cost) as Subtotal
                        FROM
                        pedido_balcao a
                        INNER JOIN
                        tec_products b
                        ON
                        a.id_produto = b.id
                        ORDER BY a.id
                        ");

$subtotal = mysql_result($ver_sub,0);
?>

<h2 class="ui center aligned header">Dinheiro</h2>
<br>
<form action="#" method="post" onsubmit="return false">
<div class="ui center aligned container">
<div class="ui right labeled input">
    <div class="ui green label">R$</div>
        <input type="text" name="nome" id="nome" size="12" autofocus="">
    <div class="ui basic label">.00</div>
</div>
</div>
<?php echo '<input type="hidden" value="'.$subtotal.'" name="email" id="email" />'; ?>
<input type="hidden" name="telefone" id="telefone" />
<input type="hidden" value="Enviar" id="enviar_caixa" />
</form>
<div id="resposta">
<br>
<div class="ui center aligned container">
                <div class="ui huge compact message">
                  <div class="header">
                    Troco: &nbsp;&nbsp;&nbsp;&nbsp; <big><big> - </big></big>
                  </div>
                  </div></div><br>
</div>
<?php 
}
 ?>
