<?php


require_once("./database/DbConnection.php");
/**
 * Created by PhpStorm.
 * User: shermano
 * Date: 27/05/2016
 * Time: 21:10
 */
class Especie
{

    private $idEspecie;
    private $nomeCientifico;
    private $nomePopular;
    private $nativa;
    private $classeSucessional;
    private $zoocorica;
    private $ameacada;
    private $habito;
    private $tolerancia;
    private $tabelaReferente;

    function getAllEspecies($numTabela = 1){

        $arr_esp = array();

        $db = new DbConnection();
        $rst = $db->retorna_todas_especies($numTabela);

        if ( $rst ){
            while ($row = mysqli_fetch_assoc($rst)){
                $esp = new Especie();

                $esp->idEspecie = $row['idEspecie'];
                $esp->nomeCientifico = utf8_encode($row['nomeCientifico']);
                $esp->nomePopular = utf8_encode($row['nomePopular']);
                $esp->nativa = utf8_encode($row['nativa']);
                $esp->classeSucessional = utf8_encode($row['classeSucessional']);
                $esp->zoocorica = utf8_encode($row['zoocorica']);
                $esp->ameacada = utf8_encode($row['ameacada']);
                $esp->habito = utf8_encode($row['habito']);
                $esp->tolerancia = utf8_encode($row['tolerancia']);
                $esp->tabelaReferente = $row['tabelaReferente'];

                array_push($arr_esp,$esp);
            }
            return $arr_esp;
        }else{
            echo "PROBLEMA AO SELECIONAR BANCO DE ESPÉCIES!";
            return -1;
        }
    }

    public function getTabelasEspecies(){
        $arr_esp = array();

        $db = new DbConnection();
        $rst = $db->retorna_tabelas_especies();
        if ( $rst ){
            while ($row = mysqli_fetch_assoc($rst)){
                $esp = new Especie();
                $esp->tabelaReferente = $row['tabelaReferente'];

                array_push($arr_esp,$esp);
            }
            return $arr_esp;
        }else{
            echo "PROBLEMA AO SELECIONAR BANCO DE ESPÉCIES!";
            return -1;
        }

    }

    /**
     * @return mixed
     */
    public function getIdEspecie()
    {
        return $this->idEspecie;
    }

    /**
     * @param mixed $idEspecie
     */
    public function setIdEspecie($idEspecie)
    {
        $this->idEspecie = $idEspecie;
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

    /**
     * @return mixed
     */
    public function getTabelaReferente()
    {
        return $this->tabelaReferente;
    }

    /**
     * @param mixed $tabelaReferente
     */
    public function setTabelaReferente($tabelaReferente)
    {
        $this->tabelaReferente = $tabelaReferente;
    }
    
    

}