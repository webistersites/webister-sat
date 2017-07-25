 <script>
  $(function() {
    $('#result').load("getDataBalcao.php?id=");
    $('#tabela_aux').css("display", "none");
});

</script>

<!-- <div class="ui secondary pointing menu">
    <a class="item active" href="#">
        Caixa
      </a>
    <a href="fechar_caixa.php" class="right floated item">Fechar Caixa</a>
</div> -->

<div class="ui segment">
        <h2 class="ui center aligned dividing header">
            Balcão
        </h2>
        <div class="ui grey inverted small menu">
            <?php
                $buscaCategorias = mysql_query("SELECT * FROM categorias");
                while ($categoria = mysql_fetch_array($buscaCategorias))
                {
                    echo '<script>
                            $(document).ready(function(){
                             $("#'.$categoria['categoria'].'").click(function(){
                              $("#refresh").load("lista_'.$categoria['categoria'].'_balcao.php");
                             });
                            });
                            </script>';

                    echo '<a href="javascript:void(0)" id="'.$categoria['categoria'].'" class="right floated item '.$categoria['categoria'].'" >'
                            . $categoria['categoria']
                        . '</a>';
                }
            ?>
        </div>
<?php
  include 'novo_caixa2.php';
?>
    </div>

