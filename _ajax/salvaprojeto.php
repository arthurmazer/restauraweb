<?php

header('Content-Type: text/html; charset=utf-8');
require_once("/../_beans/Projeto.php");

$arr = json_decode($_POST['data'], true);

if (isset($_SESSION['codusuario'])){
    $projeto = new Projeto($_SESSION['codusuario']);
}else{
    $projeto = new Projeto(2);
}

$idProjeto = $projeto->cria_novo_projeto();

for ( $i = 0; $i < count($arr) ; $i++ ){
    $quantidade = $arr[$i]['quantidade'];
    $idespecie = $arr[$i]['idespecie'];

    $projeto->insere_muda_projeto($idespecie,$quantidade);
}

echo $idProjeto;