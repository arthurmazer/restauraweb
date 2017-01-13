<?php

require_once ('../database/DbConnection.php');

ini_set('default_charset','utf-8');

header('Content-type: text/html; charset=utf-8');
$db = new DbConnection();
mysqli_set_charset($db->getConnection(),'utf8');



##### DADOS POST #######
$numTabela = '';

if ( empty($numTabela)){
    $numTabela = 1;
}



/*$tableRow = '';
$rst = $db->retorna_todas_especies($numTabela);
$i = 1;
while ($row = mysqli_fetch_assoc($rst)){
    $nomeCientifico = $row['nomeCientifico'];
    $nomePopular = $row['nomePopular'];
    $nativa = $row['nativa'];
    $classeSucessional = $row['classeSucessional'];
    $zoocorica = $row['zoocorica'];
    $ameacada = $row['ameacada'];
    $habito = $row['habito'];
    $tolerancia = $row['tolerancia'];
    $tabelaReferente = $row['tabelaReferente'];
    $idEspecie = $row['idEspecie'];
    

    $tableRow .= '<tr>';
    $tableRow .= '<input type="hidden" value="'.$idEspecie.'" id="hId'.$i.'"/>';
    $tableRow .= '<td ><input class="cInputQtd" id="spinner'.$i.'">';
  //  $tableRow .= '<button id="downQuantity" onclick="javascript:remove_individuo('.$i.');">-</button>
    //    <button id="upQuantity" onclick="javascript:adiciona_individuo('.$i.');">+</button>';
    $tableRow .= '</td>';
    $tableRow .= '<td><a href="#" id="rowNomeEspecie'.$i.'">'.$nomeCientifico.'</a></td>';
    $tableRow .= '<td class="center">'.$nomePopular.'</td>';
    if ($nativa == "S"){
        $tableRow .= '<td class="center"><span class="badge_style b_done" id="rowNativa'.$i.'">Sim</span></td>';
    }else{
        $tableRow .= '<td class="center"><span class="badge_style b_pending" id="rowNativa'.$i.'">Não</span></td>';
    }
    if ($classeSucessional == "P"){
        $tableRow .= '<td class="center" id="rowClasseSucessional'.$i.'">Pioneira</td>';
    }else{
        if ($classeSucessional == "NP"){
            $tableRow .= '<td class="center" id="rowClasseSucessional'.$i.'">Não Pioneira</td>';
        }else{
            $tableRow .= '<td class="center" id="rowClasseSucessional'.$i.'">'.$classeSucessional.'</td>';
        }
    }

    if ($zoocorica == "S"){

        $tableRow .= '<td class="center"><span class="badge_style b_done" id="rowZoocorica'.$i.'">Sim</span></td>';
    }else{
        if ($zoocorica == "N"){
            $tableRow .= '<td class="center"><span class="badge_style b_pending" id="rowZoocorica'.$i.'">Não</span></td>';
        }else{
            $tableRow .= '<td class="center">'.$zoocorica.'</td>';
        }
    }

    if ($ameacada == "S"){
        $tableRow .= '<td class="center"><span class="badge_style b_done" id="rowAmeacada'.$i.'">Sim</span></td>';
    }else{
        $tableRow .= '<td class="center"><span class="badge_style b_pending" id="rowAmeacada'.$i.'">Não</span></td>';
    }

    if ($habito == 'Ar'){
        $habito = "Árvore";
    }elseif($habito == 'At'){
        $habito = "Arbusto";
    }

    $tableRow .= '<td class="center" id="rowHabito'.$i.'">'.$habito.'</td>';

    if ( $tolerancia == 'B'){
        $tolerancia = "Baixa";
    }elseif($tolerancia == 'M'){
        $tolerancia = "Média";
    }elseif($tolerancia == 'A'){
        $tolerancia = "Alta";
    }

    $tableRow .= '<td class="center" id="rowTolerancia'.$i.'">'.$tolerancia.'</td>';
    $tableRow .= '</tr>';

    $i++;
}*/
echo $tableRow;
