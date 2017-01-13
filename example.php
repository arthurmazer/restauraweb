<?php
// Test CVS

require_once '/Excel/reader.php';


ExcelFile("planilha1", 'utf-8');
$data = new Spreadsheet_Excel_Reader();


// Set output Encoding.
$data->setOutputEncoding('CP1251');

/***
* if you want you can change 'iconv' to mb_convert_encoding:
* $data->setUTFEncoder('mb');
*
**/

/***
* By default rows & cols indeces start with 1
* For change initial index use:
* $data->setRowColOffset(0);
*
**/



/***
*  Some function for formatting output.
* $data->setDefaultFormat('%.2f');
* setDefaultFormat - set format for columns with unknown formatting
*
* $data->setColumnFormat(4, '%.3f');
* setColumnFormat - set format for column (apply only to number fields)
*
**/

$data->read('planilha1.ods');



for ($i = 0; $i < $data->sheets[0]['numRows']; $i++){
		$idEspecie = $data->sheets[0]['cells'][$i][0];
		$nomeCientifico = $data->sheets[0]['cells'][$i][1];
		$nomePopular = $data->sheets[0]['cells'][$i][2];
		$nativa = $data->sheets[0]['cells'][$i][3];
		$classeSucessional = $data->sheets[0]['cells'][$i][4];
		$zoocorica = $data->sheets[0]['cells'][$i][5];
		$ameacada = $data->sheets[0]['cells'][$i][6];
		$habito = $data->sheets[0]['cells'][$i][7];
		$tolerancia = $data->sheets[0]['cells'][$i][8];
	if ( $nativa != "0" && $nativa != '' && $classeSucessional != "0" && $classeSucessional != '' && $zoocorica != "0" && $zoocorica != '' && $ameacada != "0" && $ameacada != '' && $habito != "0" && $habito != '' && $tolerancia != "0" && $tolerancia != ''){
        $sql = "INSERT INTO especie(idEspecie, nomeCientifico,nomePopular,nativa,classeSucessional,zoocorica,ameacada,habito,tolerancia,tabelaReferente) VALUES ($idEspecie,'$nomeCientifico','$nomePopular','$nativa','$classeSucessional','$zoocorica','$ameacada','$habito','$tolerancia',$tabela)";
		echo $sql . ";";
    }
}



error_reporting(E_ALL ^ E_NOTICE);




//print_r($data);
//print_r($data->formatRecords);
?>
