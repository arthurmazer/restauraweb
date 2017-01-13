<?php

/**
 * Created by PhpStorm.
 * User: User
 * Date: 16/08/2016
 * Time: 10:40
 */
class Usuario
{

    private $idUsuario;
    private $login;
    private $senha;
    private $tipousuario;

    /**
     * @return mixed
     */
    public function getIdUsuario()
    {
        return $this->idUsuario;
    }
    


    /**
     * @return mixed
     */
    public function getLogin()
    {
        return $this->login;
    }

    /**
     * @param mixed $login
     */
    public function setLogin($login)
    {
        $this->login = $login;
    }

    /**
     * @param mixed $senha
     */
    public function setSenha($senha)
    {
        $this->senha = $senha;
    }

    /**
     * @return mixed
     */
    public function getTipousuario()
    {
        return $this->tipousuario;
    }

    /**
     * @param mixed $tipousuario
     */
    public function setTipousuario($tipousuario)
    {
        $this->tipousuario = $tipousuario;
    }

    public function isAdministrador(){
        if ( $this->tipousuario == 1){
            return true;
        }else{
            return false;
        }
    }



}