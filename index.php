<?php

include('/_include/common_config.php' );
require_once("/_beans/Especie.php");


##################### CONTEUDO #############
//carrega tabela de mudas
$esp = new Especie();
$smarty->assign("especies", $esp->getAllEspecies());
$smarty->assign("selecttabelas", $esp->getTabelasEspecies());
####################################################

//$smarty->debugging = true;
$smarty->display('_view/index.tpl');