<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 14/02/2017
 * Time: 11:01
 */

define('SMARTY_DIR',str_replace("\\","/",getcwd()).'/smarty/libs/');
require_once(SMARTY_DIR.'Smarty.class.php');

$smarty = new Smarty();

$smarty->template_dir = '/../smarty/spa/templates/';
$smarty->compile_dir = '/../smarty/spa/templates_c/';
$smarty->config_dir = '/../smarty/spa/configs/';
$smarty->cache_dir = '/../smarty/spa/cache/';

####################### TOP #######################
$smarty->assign('userlogado', false);
if( isset($_COOKIE['loginusuario']) && !empty($_COOKIE['loginusuario']) && $_COOKIE['tipousuario'] == 1){
    $smarty->assign('userlogado', true);
}else{
    $smarty->assign('userlogado', false);
}
####################################################