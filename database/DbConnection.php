<?php
/**
 * Created by PhpStorm.
 * User: Shermano
 * Date: 27/05/2016
 * Time: 09:32
 */
class DbConnection
{
    private $database_name;
    private $username;
    private $password;
    private static $connection;
    private $url;
    private $resultSet;

    function __construct(){

        //external file with configurations
        //$config = parse_ini_file('/../_include/config.ini');

        $this->username = "bracatinga";
        $this->password = "Tamarindo3418";
        $this->database_name = "dbtre";
        $this->url = "localhost";
        $this->connection = mysqli_connect($this->url,$this->username,$this->password,$this->database_name);
        //mysqli_query("SET character_set_results=utf8", $this->connection);
        //mb_language('uni');
        //mb_internal_encoding('UTF-8');
        //mysqli_query("SET NAMES 'utf8'");
        if ( $this->connection == false ){
            exit("Erro ao conectar-se ao banco de dados!");
        }

    }

    function getConnection(){
        return $this->connection;
    }

    function insere_nova_especie($nomeCientifico, $nomePopular, $nativa, $classeSucessional, $zoocorica,$ameacada, $habito, $tolerancia,$tabela){

        echo $nativa . '-';
        if ( $nativa == '' ){
            echo 'bele';
        }else{
            echo 'n';
        }
       // if ( $nativa != "0" && $nativa != '' && $classeSucessional != "0" && $classeSucessional != '' && $zoocorica != "0" && $zoocorica != '' && $ameacada != "0" && $ameacada != '' && $habito != "0" && $habito != '' && $tolerancia != "0" && $tolerancia != ''){
           // $sql = "INSERT INTO especie(nomeCientifico,nomePopular,nativa,classeSucessional,zoocorica,ameacada,habito,tolerancia,tabelaReferente) VALUES ('$nomeCientifico','$nomePopular','$nativa','$classeSucessional','$zoocorica','$ameacada','$habito','$tolerancia',$tabela)";
            //echo $sql . ";";
        //}


       # $this->resultSet = mysqli_query($this->connection,$sql);

     #   if ($this->resultSet == false){
      #      echo mysqli_error($this->connection);
    #        exit("Erro#0230 - Banco de dados Falhou!");
     #   }else{
            //success
  #          return true;
 #       }

    }

    function cria_novo_projeto($idUser = 2){
        $data = date('Y-m-d H:i:s');
        $sql = "INSERT INTO projeto(idusuario,datacriacao) VALUES($idUser,'$data');";
         $this->resultSet = mysqli_query($this->connection,$sql);

        if ($this->resultSet == false){
              echo mysqli_error($this->connection);
              exit("Erro#0231 - Banco de dados Falhou!");
        }else{
              //success
              return mysqli_insert_id($this->getConnection());
        }
        return -1;


    }

    function insere_muda_projeto($idprojeto, $idespecie, $quantidade){
        $sql = "INSERT INTO projetomudas(idprojeto,idespecie,quantidade) VALUES($idprojeto,$idespecie,$quantidade);";
        $this->resultSet = mysqli_query($this->connection,$sql);

        if ($this->resultSet == false){
            echo mysqli_error($this->connection);
            exit("Erro#0232 - Banco de dados Falhou!");
        }else{
            //success
            return true;
        }

    }

    function retorna_relatorio($idProjeto){

        $sql = "select m.quantidade, e.nomecientifico, e.nomepopular, e.nativa, e.classesucessional, e.zoocorica, e.ameacada,
                e.habito, e.tolerancia from projetomudas m 
                left join especie e on e.idEspecie = m.idespecie
                where idprojeto = $idProjeto";

        $this->resultSet = mysqli_query($this->connection,$sql);

        if ($this->resultSet == false){
            exit("Erro#0233 - Banco de dados Falhou!");
        }else{
            //success
            return $this->resultSet;
        }

    }

    function retorna_todas_especies($numTabela = 1){

        $sql = "SELECT * from especie where tabelaReferente = $numTabela;";

        $this->resultSet = mysqli_query($this->connection,$sql);

        if ($this->resultSet == false){
            exit("Erro#0230 - Banco de dados Falhou!");
        }else{
            //success
            return $this->resultSet;
        }

    }
	
	function top_dez_especies(){
		
		$sql = "SELECT p.idespecie,e.nomeCientifico, e.nomePopular, COUNT(*) as count 
				FROM projetomudas p
				LEFT JOIN especie e on e.idEspecie = p.idespecie
				GROUP BY idespecie 
				ORDER BY count DESC LIMIT 10;";
		
        $this->resultSet = mysqli_query($this->connection,$sql);

        if ($this->resultSet == false){
            exit("Erro#0330 - Banco de dados Falhou!");
        }else{
            //success
            return $this->resultSet;
        }		
				
		
	}

    function retorna_tabela_admin(){

        $sql = "select DATE_FORMAT(prj.datacriacao,'%d/%m/%Y') as datacriacao,
                    SUM(p.quantidade) as quantidade,
                    SUM(if(e.classeSucessional = 'P',1,0)) as qntpioneira,
                    SUM(if(e.classeSucessional = 'NP',1,0)) as qntnaopioneira,
                    SUM(if(e.zoocorica = 'S',1,0)) as qntzoocorica,
                    SUM(if(e.ameacada = 'S',1,0)) as qntameacada
                from projetomudas p
                left join projeto prj on prj.idprojeto = p.idprojeto
                left join especie e on e.idEspecie = p.idespecie
                group by p.idprojeto
				order by datacriacao desc;";
        $this->resultSet = mysqli_query($this->connection,$sql);

        if ($this->resultSet == false){
            exit("Erro#0235 - Banco de dados Falhou!");
        }else{
            //success
            return $this->resultSet;
        }


    }

    function validaLogin($login, $senha){


        $sql = "select idUsuario, login, tipousuario from usuario where login = '$login' and senha = '$senha' ;";
        $this->resultSet = mysqli_query($this->connection,$sql);


        if (mysqli_affected_rows($this->getConnection()) > 0 ){
            $row = mysqli_fetch_assoc($this->resultSet);
            $arrayUsuario = array($row['idUsuario'],$row['login'],$row['tipousuario']);
            return $arrayUsuario;
        }else{
            return -1;
        }

    }



}