<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 27/05/2016
 * Time: 11:25
 */

require_once 'PHPExcel/IOFactory.php';
$objPHPExcel = PHPExcel_IOFactory::load("planilha1.xlsx");

#$db = new DbConnection();

$nomeEspecie = "";
$nomePopular = "";
$nativa = "";
$classeSucessional = "";
$zoocorica = "";
$ameacada = "";
$habito = "";
$tolerancia = "";


foreach ($objPHPExcel->getWorksheetIterator() as $worksheet) {
    $worksheetTitle     = $worksheet->getTitle();
    $highestRow         = $worksheet->getHighestRow(); // e.g. 10
    $highestColumn      = $worksheet->getHighestColumn(); // e.g 'F'
    $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
    $nrColumns = ord($highestColumn) - 64;

    for ($row = 1; $row <= $highestRow; ++ $row) {

        for ($col = 0; $col < $highestColumnIndex-2; ++ $col) {
            $cell = $worksheet->getCellByColumnAndRow($col, $row);
            $val = $cell->getValue();
            $dataType = PHPExcel_Cell_DataType::dataTypeForValue($val);


				if ($col == 0){
					 $idEspecie = $val;
				}

                if ( $col == 1 ){
                    $nomeCientifico = $val;
                }
                if ( $col == 2 ){
                    $nomePopular = $val;
                }
                if ( $col == 3 ){
                    $nativa = $val;
                }
                if ( $col == 4 ){
                    $classeSucessional = $val;
                }
                if ( $col == 5 ){
                    $zoocorica = $val;
                }
                if ( $col == 6 ){
                    $ameacada = $val;
                }
                if ( $col == 7 ){
                    $habito = $val;
                }
                if ( $col == 8 ){
                    $tolerancia = $val;
                }


        }
		if ( $nativa != "0" && $nativa != '' && $classeSucessional != "0" && $classeSucessional != '' && $zoocorica != "0" && $zoocorica != '' && $ameacada != "0" && $ameacada != '' && $habito != "0" && $habito != '' && $tolerancia != "0" && $tolerancia != ''){
        $sql = "INSERT INTO especie(idEspecie, nomeCientifico,nomePopular,nativa,classeSucessional,zoocorica,ameacada,habito,tolerancia,tabelaReferente) VALUES ($idEspecie,'$nomeCientifico','$nomePopular','$nativa','$classeSucessional','$zoocorica','$ameacada','$habito','$tolerancia',1)";
		echo $sql . ";";
    }
     //   echo $nomeEspecie . "|" . $nomePopular . "|" . $nativa . "|" . $classeSucessional . "|" . $zoocorica . "|" . $ameacada . "|"
       //     . $habito . "|" . $tolerancia;
        //echo "<br>";

    }

}