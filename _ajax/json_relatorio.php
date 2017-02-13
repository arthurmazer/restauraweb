<?php
require_once("/../database/DbConnection.php");

$idProjeto = $_POST['idProjeto'];

$arr_rel = array();

$db = new DbConnection();
$rst = $db->retorna_relatorio($idProjeto);

if ( $rst ){
    while ($row = mysqli_fetch_assoc($rst)){
        $nativa = '';
        $zoocorica = '';
        $habito = '';
        $ameacada = '';
        $tolerancia = '';
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


        if ($row['habito'] == "Ar"){
            $habito = "Árvore";
        }else{
            $habito = "Arbusto";
        }

        $mudas_array = array(
            "quantidade" => $row['quantidade'],
            "nomecientifico" => utf8_encode($row['nomecientifico']),
            "nomepopular" => utf8_encode($row['nomepopular']),
            "nativa" => $nativa,
            "classesucessional" => $row['classesucessional'],
            "zoocorica" => $zoocorica,
            "ameacada" =>  $ameacada,
            "habito" => $habito,
            "tolerancia" => $tolerancia
        );

        array_push($arr_rel,$mudas_array);
    }
    echo json_encode($arr_rel);
    exit;
}else{
    echo "erro ao gerar pdf";
    exit;
}