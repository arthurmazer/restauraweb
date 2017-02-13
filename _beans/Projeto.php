<?php
require_once("/../database/DbConnection.php");
/**
 * Created by PhpStorm.
 * User: User
 * Date: 16/08/2016
 * Time: 10:39
 */
class Projeto
{
    private $idProjeto;
    private $idusuario;

    public function __construct($idUsuario){
        $this->idusuario = $idUsuario;
    }

    /**
     * @return mixed
     */
    public function getIdProjeto()
    {
        return $this->idProjeto;
    }

    /**
     * @param mixed $idProjeto
     */
    public function setIdProjeto($idProjeto)
    {
        $this->idProjeto = $idProjeto;
    }

    /**
     * @return mixed
     */
    public function getIdusuario()
    {
        return $this->idusuario;
    }

    /**
     * @param mixed $idusuario
     */
    public function setIdusuario($idusuario)
    {
        $this->idusuario = $idusuario;
    }

    public function cria_novo_projeto(){
        $db = new DbConnection();
        $this->idProjeto = $db->cria_novo_projeto($this->idusuario);
        return $this->idProjeto;
    }
    
    public function insere_muda_projeto($especie, $quantidade){
        $db = new DbConnection();
        return $db->insere_muda_projeto($this->idProjeto, $especie, $quantidade);
    }

    public function get_mudas_projeto(){
        $db = new DbConnection();
    }

}