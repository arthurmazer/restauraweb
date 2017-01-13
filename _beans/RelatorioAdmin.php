<?php

require_once("./database/DbConnection.php");
/**
 * Created by PhpStorm.
 * User: User
 * Date: 19/08/2016
 * Time: 16:52
 */
class RelatorioAdmin
{

    private $datacriacao;
    private $totalmudas;
    private $qtdpioneiras;
    private $qtdnaopioneiras;
    private $qtdzoocoricas;
    private $qtdameacadas;
	
	//---Top10---
	private $nomeEspecie;
	private $qntEspecie;
	private $nomePopular;

	public function getRelatorioAdmin(){
		
		$arr_adm = array();

        $db = new DbConnection();
        $rst = $db->retorna_tabela_admin();

        if ( $rst ){
            while ($row = mysqli_fetch_assoc($rst)){
                $radm = new RelatorioAdmin();

                $radm->datacriacao= $row['datacriacao'];
                $radm->totalmudas = $row['quantidade'];
                $radm->qtdpioneiras = $row['qntpioneira'];
                $radm->qtdnaopioneiras = $row['qntnaopioneira'];
                $radm->qtdzoocoricas = $row['qntzoocorica'];
                $radm->qtdameacadas = $row['qntameacada'];
                array_push($arr_adm,$radm);
            }
            return $arr_adm;
        }else{
            echo "PROBLEMA AO SELECIONAR BANCO DE RELATORIO ADMIN!";
            return -1;
        }
	}
	
	public function retorna_top10_especies(){
		
		$arr_adm = array();

        $db = new DbConnection();
        $rst = $db->top_dez_especies();

        if ( $rst ){
            while ($row = mysqli_fetch_assoc($rst)){
                $radm = new RelatorioAdmin();

                $radm->nomeEspecie = $row['nomeCientifico'];
                $radm->qntEspecie = $row['count'];
				$radm->nomePopular = $row['nomePopular'];
                array_push($arr_adm,$radm);
            }
            return $arr_adm;
        }else{
            echo "PROBLEMA AO SELECIONAR TOP 10 ESPECIES!";
            return -1;
        }
		
	}
	
	public function getDataCriacao(){
		return $this->datacriacao;
	}
	
	public function getTotalMudas(){
		return $this->totalmudas;
	}
	
	public function getQtdPioneiras(){
		return $this->qtdpioneiras;
	}
	
	public function getQtdNaoPioneiras(){
		return $this->qtdnaopioneiras;
	}
    
	public function getQtdZoocoricas(){
		return $this->qtdzoocoricas;
	}

	public function getQtdAmeacadas(){
		return $this->qtdameacadas;
	}
	
	public function getNomeEspecie(){
		return $this->nomeEspecie;
	}
	
	public function getQntEspecie(){
		return $this->qntEspecie;
	}
	
	public function getNomePopular(){
		return $this->nomePopular;
	}
}