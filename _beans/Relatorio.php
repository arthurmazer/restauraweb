<?php
require_once("/../database/DbConnection.php");
/**
 * Created by PhpStorm.
 * User: User
 * Date: 16/08/2016
 * Time: 16:13
 */
class Relatorio
{

    private $quantidade;
    private $nomeCientifico;
    private $nomePopular;
    private $nativa;
    private $classeSucessional;
    private $zoocorica;
    private $ameacada;
    private $habito;
    private $tolerancia;

    function getRelatorio($idProjeto){

        $arr_rel = array();

        $db = new DbConnection();
        $rst = $db->retorna_relatorio($idProjeto);

        if ( $rst ){
            while ($row = mysqli_fetch_assoc($rst)){
                $rel = new Relatorio();

                $rel->quantidade = $row['quantidade'];
                $rel->nomeCientifico = $row['nomecientifico'];
                $rel->nomePopular = $row['nomepopular'];
                $rel->nativa = $row['nativa'];
                $rel->classeSucessional = $row['classesucessional'];
                $rel->zoocorica = $row['zoocorica'];
                $rel->ameacada = $row['ameacada'];
                $rel->habito = $row['habito'];
                $rel->tolerancia = $row['tolerancia'];

                array_push($arr_rel,$rel);
            }
            return $arr_rel;
        }else{
            echo "PROBLEMA AO CARREGAR RELATÓRIO!";
            return -1;
        }
    }

    /**
     * @return mixed
     */
    public function getQuantidade()
    {
        return $this->quantidade;
    }

    /**
     * @param mixed $quantidade
     */
    public function setQuantidade($quantidade)
    {
        $this->quantidade = $quantidade;
    }

    /**
     * @return mixed
     */
    public function getNomeCientifico()
    {
        return $this->nomeCientifico;
    }

    /**
     * @param mixed $nomeCientifico
     */
    public function setNomeCientifico($nomeCientifico)
    {
        $this->nomeCientifico = $nomeCientifico;
    }

    /**
     * @return mixed
     */
    public function getNomePopular()
    {
        return $this->nomePopular;
    }

    /**
     * @param mixed $nomePopular
     */
    public function setNomePopular($nomePopular)
    {
        $this->nomePopular = $nomePopular;
    }

    /**
     * @return mixed
     */
    public function getNativa()
    {
        return $this->nativa;
    }

    /**
     * @param mixed $nativa
     */
    public function setNativa($nativa)
    {
        $this->nativa = $nativa;
    }

    /**
     * @return mixed
     */
    public function getClasseSucessional()
    {
        return $this->classeSucessional;
    }

    /**
     * @param mixed $classeSucessional
     */
    public function setClasseSucessional($classeSucessional)
    {
        $this->classeSucessional = $classeSucessional;
    }

    /**
     * @return mixed
     */
    public function getZoocorica()
    {
        return $this->zoocorica;
    }

    /**
     * @param mixed $zoocorica
     */
    public function setZoocorica($zoocorica)
    {
        $this->zoocorica = $zoocorica;
    }

    /**
     * @return mixed
     */
    public function getAmeacada()
    {
        return $this->ameacada;
    }

    /**
     * @param mixed $ameacada
     */
    public function setAmeacada($ameacada)
    {
        $this->ameacada = $ameacada;
    }

    /**
     * @return mixed
     */
    public function getHabito()
    {
        return $this->habito;
    }

    /**
     * @param mixed $habito
     */
    public function setHabito($habito)
    {
        $this->habito = $habito;
    }

    /**
     * @return mixed
     */
    public function getTolerancia()
    {
        return $this->tolerancia;
    }

    /**
     * @param mixed $tolerancia
     */
    public function setTolerancia($tolerancia)
    {
        $this->tolerancia = $tolerancia;
    }



}