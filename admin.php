<?php

include('/_include/common_config.php' );
require_once("./_beans/RelatorioAdmin.php");

##################### CONTEUDO #############
//carrega tabela de mudas
$adm = new RelatorioAdmin();
$smarty->assign("top10", $adm->retorna_top10_especies());
$smarty->assign("relatorio", $adm->getRelatorioAdmin());
####################################################

//$smarty->debugging = true;
$smarty->display('_view/admin.tpl');