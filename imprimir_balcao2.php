<?php

include 'cabecalho.php';
$q_senha    = mysql_query("SELECT sum(senha),senha from pedido_balcao2");
 $senha      = mysql_result($q_senha,0);
 
 if ($senha == 0) 
 {
     $s = mt_rand(100, 999); // Gera um valor aleatório de Nota Fiscal;
     mysql_query("UPDATE pedido_balcao2 SET senha = $s");
 }
 else
 {
     $s = mysql_result($q_senha,0,1);
 }
        
    /*
   * Gerar um arquivo .txt para imprimir na impressora Bematech MP-20 MI
   */

        $n_colunas = 45; // 40 colunas por linha
        
        /**
         * Adiciona a quantidade necessaria de espaços no inicio 
         * da string informada para deixa-la centralizada na tela
         * 
         * @global int $n_colunas Numero maximo de caracteres aceitos
         * @param string $info String a ser centralizada
         * @return string
         */
        function centraliza($info)
        {
            global $n_colunas;
            
            $aux = strlen($info);
            
            if ($aux < $n_colunas) {
                // calcula quantos espaços devem ser adicionados
                // antes da string para deixa-la centralizada
                $espacos = floor(($n_colunas - $aux) / 2);
                
                $espaco = '';
                for ($i = 0; $i < $espacos; $i++){
                    $espaco .= ' ';
                }
                
                // retorna a string com os espaços necessários para centraliza-la
                return $espaco.$info;
                
            } else {
                // se for maior ou igual ao número de colunas
                // retorna a string cortada com o número máximo de colunas.
                return substr($info, 0, $n_colunas);
            }
            
        }
        
        /**
         * Adiciona a quantidade de espaços informados na String
         * passada na possição informada.
         * 
         * Se a string informada for maior que a quantidade de posições
         * informada, então corta a string para ela ter a quantidade
         * de caracteres exata das posições.
         * 
         * @param string $string String a ter os espaços adicionados.
         * @param int $posicoes Qtde de posições da coluna
         * @param string $onde Onde será adicionar os espaços. I (inicio) ou F (final).
         * @return string
         */
        function addEspacos($string, $posicoes, $onde)
        {
            
            $aux = strlen($string);
            
            if ($aux >= $posicoes)
                return substr ($string, 0, $posicoes);
            
            $dif = $posicoes - $aux;
            
            $espacos = '';
            
            for($i = 0; $i < $dif; $i++) {
                $espacos .= ' ';
            }
            
            if ($onde === 'I')
                return $espacos.$string;
            else
                return $string.$espacos;
            
        }
        //$nome = mysql_query("SELECT nome FROM nome_nota");
        //$ver_nome = mysql_result($nome,0);
        
        $dados = mysql_query("select 
                                    a.troco,
                                    b.forma_pagamento
                                FROM
                                    valores_nota a
                                INNER JOIN
                                    forma_pagamento b
                                ON
                                    a.forma_pagamento = b.id");
        $ver_dados = mysql_fetch_array($dados);
        $query_impressao = mysql_query('
        SELECT
         a.id,
               b.code,
         b.name as Produto,
         a.quantidade,
         b.cost as Preço,
         a.quantidade*b.cost as Total,
         a.obs,
         b.category_id
       FROM
          pedido_balcao2 a
        INNER JOIN
           tec_products b
         ON
            a.id_produto = b.id
          ORDER BY a.id');

        $q_cpf  = mysql_query("SELECT count(id),cpf FROM cpf_nota WHERE origem = 'balcao'");
        $cpf    = mysql_result($q_cpf, 0);
        $n_cpf    = mysql_result($q_cpf, 0,1);
        
        $txt_cabecalho = array();
        $txt_itens = array();
        $txt_valor_total = '';
        $txt_rodape = array();
        
        $txt_cabecalho[] = 'ESFIHA MANIA'; 
        
        $txt_cabecalho[] = 'Av. Parada Pinto, 1700';
        
        //$txt_cabecalho[] = ' '; // força pular uma linha entre o cabeçalho e os itens
        
        date_default_timezone_set('America/Sao_Paulo');
        $date = date('d/m/Y H:i');
        
        $txt_cabecalho[] = '----------------------------------------------------';

        $txt_cabecalho[] = $date;
        
        $txt_cabecalho[] = "N. Cupom: " . $nf;

        if ($cpf == 0) 
        {
          $txt_cabecalho[] = "*Sem valor fiscal*";
        }
        else
        {
          $txt_cabecalho[] = "CPF: " . $n_cpf;
        }
        
        $txt_cabecalho[] = '*********************************************************';
        
        $txt_cabecalho[] = 'RELATORIO GERENCIAL' ;
        
        $txt_cabecalho[] = '*********************************************************';
        
        $txt_cabecalho[] = 'Itens'; // força pular uma linha entre o cabeçalho e os itens
        
        $txt_itens[] = array('Cod.', 'Produto', ' Total', ' Qtd.', ' V. UN');
        
  $tot_itens = 0;
        
        while($ler = mysql_fetch_array($query_impressao))
            {
                $txt_itens[] = array($ler['code'],$ler['Produto'],$ler['Total'],$ler['quantidade'],$ler['Preço']);
                $tot_itens += $ler['Total'];
            }
        
//      $txt_itens[] = array(251, 'Prod. linha 1', '002', 3, '0.50', '1.50');
//  $tot_itens += 1.50;
//
//      $txt_itens[] = array(278, 'Prod. linha 2', '005', 1, '0.75', '0.75');
//  $tot_itens += 0.75;
//
//      $txt_itens[] = array(553, 'Prod. linha 3', '014', 10, '1.50', '15.00');
//  $tot_itens += 15.00;
        
        $aux_valor_total = 'TOTAL R$ '.number_format($tot_itens,2,',','.');
        
  // calcula o total de espaços que deve ser adicionado antes do "Sub-total" para alinhado a esquerda
        $total_espacos = $n_colunas - strlen($aux_valor_total)+2;
        
        $espacos = '';
        
        for($i = 0; $i < $total_espacos; $i++){
            $espacos .= ' ';
        }
        
        $txt_valor_total = "------------------------------------------------\r\n";
        
        $txt_valor_total .= $espacos.$aux_valor_total;
        
        $txt_valor_total .= "\r\n------------------------------------------------";
        
        
        $txt_rodape[] = 'Forma: ' . $ver_dados['forma_pagamento'];

        if ($ver_dados['forma_pagamento'] == 'Dinheiro') 
        {
            $txt_rodape[] = 'Troco: R$ ' . number_format($ver_dados['troco'],2,",",".");
        }

        $txt_rodape[] = 'Senha: ' . $s;
        
        $txt_rodape[] = '--';
        
        
  // centraliza todas as posições do array $txt_cabecalho
        $cabecalho = array_map("centraliza", $txt_cabecalho);
        
  /* para cada linha de item (array) existente no array $txt_itens,
   * adiciona cada posição da linha em um novo array $itens
   * fazendo a formatação dos espaçamentos entre cada coluna
   * da linha através da função "addEspacos"
   */
        foreach ($txt_itens as $item) {
            
            /*
       * Cod. => máximo de 5 colunas
       * Produto => máximo de 11 colunas
       * Env. => máximo de 6 colunas
       * Qtd => máximo de 4 colunas
       * V. UN => máximo de 7 colunas
       * Total => máximo de 7 colunas
       *
       * $itens[] = 'Cod. Produto      Env. Qtd  V. UN  Total'
       */
            
            $itens[] = addEspacos($item[0], 5, 'F')
                    . addEspacos($item[1], 30, 'F')
                    . addEspacos($item[2], 4, 'I')
                    . addEspacos($item[3], 3, 'I')
                    . addEspacos($item[4], 6, 'I')
                    . addEspacos($item[5], 6, 'I')
                ;
            
        }
        
  /* concatena o cabelhaço, os itens, o sub-total e rodapé
   * adicionando uma quebra de linha "\r\n" ao final de cada
   * item dos arrays $cabecalho, $itens, $txt_rodape
   */
        $txt = implode("\r\n", $cabecalho)
            . "\r\n"
            . implode("\r\n", $itens)
            . "\r\n"
            . $txt_valor_total // Sub-total
            . "\r\n\r\n"
            . implode("\r\n", $txt_rodape);
        
        // caminho e nome onde o TXT será criado no servidor
        $file = 'cupom_balcao2.txt';

        // cria o arquivo
        $_file  = fopen($file,"w+");
        fwrite($_file,$txt);
        fclose($_file);

//        header("Pragma: public"); 
//        // Força o header para salvar o arquivo
//        header("Content-type: application/save");
//        header("X-Download-Options: noopen "); // For IE8
//        header("X-Content-Type-Options: nosniff"); // For IE8
//        // Pré define o nome do arquivo
//        header("Content-Disposition: attachment; filename=imprimir.txt"); 
//        header("Expires: 0"); 
//        header("Pragma: no-cache");
//
//        // Lê o arquivo para download
//        readfile($file);
        
        //exit;
  
        
            mysql_query("TRUNCATE TABLE nome_nota");
?>

<?php

require __DIR__ . '/vendor/mike42/escpos-php/autoload.php';
use Mike42\Escpos\Printer;
 use Mike42\Escpos\PrintConnectors\FilePrintConnector;
 use Mike42\Escpos\EscposImage;

// $connector = new FilePrintConnector("smb://computer/printer");
// $printer = new Printer($connector);
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
use Mike42\Escpos\CapabilityProfile;
$profile = CapabilityProfile::load("simple");
$connector = new WindowsPrintConnector("smb://servidor-pc/Caixa");
$printer = new Printer($connector, $profile);
// use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
// use Mike42\Escpos\CapabilityProfile;
// $profile = CapabilityProfile::load("simple");
// $connector = new WindowsPrintConnector("smb://servidor-pc/Caixa");
// $printer = new Printer($connector, $profile);

$fh = fopen("cupom_balcao2.txt", "rb");
$content = fread($fh, filesize("cupom_balcao2.txt"));
fclose($fh);

/* Initialize */
$printer -> initialize();

/* Text */
//$printer -> text("Hello world\n");

//$printer -> text($content);


//$printer -> cut();

$printer -> pulse();

/* Always close the printer! On some PrintConnectors, no actual
 * data is sent until the printer is closed. */
$printer -> close();



# Código de impressão antigo

error_reporting (E_ALL & ~ E_WARNING & ~ E_DEPRECATED);
$printer = "Caixa";
//$printer = "\\\\Escritorio-pc\\EPSON";
echo $printer;
if($ph = printer_open($printer))
{
   $fh = fopen("cupom_balcao2.txt", "rb");
   $content = fread($fh, filesize("cupom_balcao2.txt"));
   fclose($fh);
    printer_set_option($ph, PRINTER_MODE, "TEXT");
    printer_write($ph, $content);
    printer_close($ph);
   
}
else
{
    echo('<script>alert("Impressora desconectada!");</script>');
    //exit();
}
?>

<?php
// error_reporting (E_ALL & ~ E_WARNING & ~ E_DEPRECATED);
// //$printer = "Balcao";
// $printer = "\\\\escritorio-pc\\epson tm-t20";
// if($ph = printer_open($printer))
// {
//    $fh = fopen("cupom.txt", "rb");
//    $content = fread($fh, filesize("cupom.txt"));
//    fclose($fh);
//     printer_set_option($ph, PRINTER_MODE, "TEXT");
//     printer_write($ph, $content);
//     printer_close($ph);
   
// }
// else
// {
//     echo('<script>alert("Impressora desconectada!");</script>');
//     //exit();
// }
?>