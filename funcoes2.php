<?php 
include 'conecta.php';

function gerarSenha() {
	$q_id_abertura 	= mysql_query("select id from caixa01 where status = 'Aberto'");
	$id_abertura 	= mysql_result($q_id_abertura,0);

	$q_csenha    	= mysql_query("SELECT sum(senha),senha from pedido_balcao");
 	$has_senha      = mysql_result($q_senha,0);

 	if ($has_senha == 0) {
 		# code...
 	}

	$q_senha 		= mysql_query("select max(senha)+1 as senha from senhas_painel where id_abertura = $id_abertura");
	$senha 			= mysql_result($q_senha, 0);

	return $senha;
}

 ?>