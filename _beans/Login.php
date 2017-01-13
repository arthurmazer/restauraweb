<?php
require_once("/../database/DbConnection.php");
/**
 * Created by PhpStorm.
 * User: User
 * Date: 19/08/2016
 * Time: 09:22
 */
class Login
{
    private $login;
    private $senha;

    public function __construct($login, $senha){
        $this->login = $login;
        $this->senha = $senha;
    }

    public function validaLogin(){
        $db = new DbConnection();
        return $db->validaLogin($this->login, $this->senha);
    }

}
