<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 13/02/2017
 * Time: 14:41
 */
// Incluimos a classe PHPExcel
include  '/../PHPExcel/Classes/PHPExcel.php';
require_once("/../database/DbConnection.php");


$idProjeto = filter_input( INPUT_GET, 'id', FILTER_SANITIZE_URL );
$arr_rel = array();


$db = new DbConnection();
$rst = $db->retorna_relatorio($idProjeto);

if ( $rst ) {
// Instanciamos a classe
    $objPHPExcel = new PHPExcel();

// Definimos o estilo da fonte
    $objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
    $objPHPExcel->getActiveSheet()->getStyle('B1')->getFont()->setBold(true);
    $objPHPExcel->getActiveSheet()->getStyle('C1')->getFont()->setBold(true);
    $objPHPExcel->getActiveSheet()->getStyle('D1')->getFont()->setBold(true);
    $objPHPExcel->getActiveSheet()->getStyle('E1')->getFont()->setBold(true);
    $objPHPExcel->getActiveSheet()->getStyle('F1')->getFont()->setBold(true);
    $objPHPExcel->getActiveSheet()->getStyle('G1')->getFont()->setBold(true);
    $objPHPExcel->getActiveSheet()->getStyle('H1')->getFont()->setBold(true);
    $objPHPExcel->getActiveSheet()->getStyle('I1')->getFont()->setBold(true);

// Criamos as colunas
    $objPHPExcel->setActiveSheetIndex(0)
        ->setCellValue('A1', 'Quantidade')
        ->setCellValue('B1', 'Nome Científico')
        ->setCellValue("C1", 'Nome Popular')
        ->setCellValue("D1", 'Nativa')
        ->setCellValue('E1', 'Classe Sucessional')
        ->setCellValue('F1', 'Zoocórica')
        ->setCellValue("G1", 'Ameaçada')
        ->setCellValue("H1", 'Hábito')
        ->setCellValue("I1", 'Tolerância ao encharcamenteo');

// Podemos configurar diferentes larguras paras as colunas como padrão
    $objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(15);
    $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(60);
    $objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(30);
    $objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(20);
    $objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(20);
    $objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(20);
    $objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(20);
    $objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(20);
    $objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(20);

    $linha = 2;
    $file = fopen('log.txt', 'w');
    while ($row = mysqli_fetch_assoc($rst)) {
        $nativa = '';
        $zoocorica = '';
        $habito = '';
        $ameacada = '';
        $tolerancia = '';
        $classeSuc = '';
        if ($row['nativa'] == "S"){
            $nativa = "Sim";
        }else{
            $nativa = "Não";
        }

        if ($row['zoocorica'] == "S"){
            $zoocorica = "Sim";
        }else{
            $zoocorica = "Não";
        }

        if ($row['ameacada'] == "S"){
            $ameacada = "Sim";
        }else{
            $ameacada = "Não";
        }

        if ($row['tolerancia'] == "A"){
            $tolerancia = "Alta";
        }elseif($row['tolerancia'] == "M"){
            $tolerancia = "Média";
        }else{
            $tolerancia = "Baixa";
        }

        if ($row['classesucessional'] == "P"){
            $classeSuc = "Pioneira";
        }else{
            $classeSuc = "Não-Pioneira";
        }



        if ($row['habito'] == "Ar"){
            $habito = "Árvore";
        }else{
            $habito = "Arbusto";
        }



        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(0, $linha, $row["quantidade"]);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(1, $linha, $row['nomecientifico']);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(2, $linha, utf8_encode($row['nomepopular']));
        fwrite($file, utf8_encode($row['nomepopular']) . "\n");
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(3, $linha, $nativa);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(4, $linha, $classeSuc);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(5, $linha, $zoocorica);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(6, $linha, $ameacada);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(7, $linha, $habito);
        $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow(8, $linha, $tolerancia);
        $linha++;
    }

// Podemos renomear o nome das planilha atual, lembrando que um único arquivo pode ter várias planilhas
    $objPHPExcel->getActiveSheet()->setTitle('Relatório de Mudas');

// Cabeçalho do arquivo para ele baixar
    header('Content-Type: application/vnd.ms-excel');
    header('Content-Disposition: attachment;filename="relatorio-mudas.xls"');
    header('Cache-Control: max-age=0');
// Se for o IE9, isso talvez seja necessário
    header('Cache-Control: max-age=1');

// Acessamos o 'Writer' para poder salvar o arquivo
    $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');

// Salva diretamente no output, poderíamos mudar arqui para um nome de arquivo em um diretório ,caso não quisessemos jogar na tela
    $objWriter->save('php://output');
}
exit;