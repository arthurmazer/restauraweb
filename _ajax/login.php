<?php

header('Content-Type: text/html; charset=utf-8');
require_once("/../_beans/Login.php");

$login = $_POST['login'];
$senha = $_POST['senha'];

if (isset($login) && isset($senha)){

    $objLogin = new Login($login,$senha);
    $ret = $objLogin->validaLogin();

    if ($ret != -1){
        echo $ret[0].'-'.$ret[1].'-'.$ret[2];
    }else{
        echo $ret;
    }

}