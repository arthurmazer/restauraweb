<?php

//acessou por outras vias senão salvado ou abrindo um projeto
if (!isset($_POST['idProjeto']) || $_POST['idProjeto']==0){
    header("Location: index.php");
}

include('/_include/common_config.php' );
require_once("./_beans/Relatorio.php");
//require_once("/_beans/Especie.php");

##################### CONTEUDO #############
$rel = new Relatorio();

$smarty->assign("totalmudas", $_POST['totalMudas']);
$smarty->assign("totalespecies", $_POST['hTotPioneiras']);
$smarty->assign("idprojeto", $_POST['idProjeto']);
$smarty->assign("relatorio", $rel->getRelatorio($_POST['idProjeto']));
####################################################

//$smarty->debugging = true;
$smarty->display('_view/relatorio.tpl');