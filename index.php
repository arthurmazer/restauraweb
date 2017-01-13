<!DOCTYPE HTML>
<?php require_once("./_beans/Especie.php");?>
<html lang="en">
<head>
<meta charset="utf-8">
<title>SAFSystem - Tabela de Mudas</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Tabela de Mudas Restauração">
<meta name="author" content="ESH - Eagles Software House">
<!-- styles -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.css">
<!--[if IE 7]>
<link rel="stylesheet" href="css/font-awesome-ie7.min.css">
<![endif]-->
<link href="css/tablecloth.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/theme-wooden.css" rel="stylesheet">

<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="css/ie/ie7.css" />
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="css/ie/ie8.css" />
<![endif]-->
<!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="css/ie/ie9.css" />
<![endif]-->
<link href='http://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
<!--fav and touch icons -->
<link rel="shortcut icon" href="ico/favicon.ico">
<!--============ javascript ===========-->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui-1.10.1.custom.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/accordion.nav.js"></script>
<script src="js/jquery.dataTables.js"></script>
<script src="js/dataTables.bootstrap.js"></script>
<script src="js/TableTools.js"></script>
<script src="js/ZeroClipboard.js"></script>
<script src="js/jquery.tablecloth.js"></script>
<script src="js/custom.js"></script>
<script src="js/dashboard/dashboard.js"></script>
<script src="js/respond.min.js"></script>
<script src="js/ios-orientationchange-fix.js"></script>
<script type="text/javascript">
    $(function () {
        $('.tbl-simple').dataTable({
            "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
        });
    });
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
        $("#DataTables_Table_0_length").hide();
    });

	$(document).ready(function() {
        $(".cInputQtd").spinner({
            min: 0,
            step: 1
        });

    });
	$(function(){
		$( ".cInputQtd" ).spinner({
			spin: function( event, ui ) {
				faz_calculos($(this).attr('id'), ui.value);
			}
		});
		
		$("#slTabRef").change(function(){
			
		});
		
		$("#btnFinalizar").click(function(){
			finalizarRelatorio();
		});

        $("#logout").click(function(){
            document.cookie = "loginusuario=";
            document.cookie = "tipousuario=";
            window.location.replace("./index.php");
        });
		

    function faz_calculos($new_id, $valor){
        $arrayEspecies = [];
        $arrayPioneraIndividual = [];
        $arrayNaoPioneraIndividual = [];
        $totalIndividuos = 0;
        $quantNativas = 0;
        $quantEspecies = 0;
        $quantArbustivas = 0;
        $quantEspecieZoocoricas = 0;
        $quantTotalZoocoricas = 0;
        $quantAmeacada = 0;
        $quantPioneira = 0;
        $quantTotalPioneira = 0;
        $quantTotalNaoPioneira = 0;
        $quantNaoPioneira = 0;
        $txZoocoricaPorTotal = 0;
        $txZoocoricaPorEspecie = 0;
        $txAmeacadaPorEspecie = 0;
        $txPioneiraPorEspecie = 0;
        $txNaoPioneiraPorEspecie = 0;
        $txPioneiraPorIndividuo = 0;
        $txNaoPioneiraPorIndividuo = 0;
		$quantTolAlta = 0;
		$quantTolMedia = 0;
		$quantTolBaixa = 0;
        $quantMenosQueSeis = 0;
        for ($i = 0; $i < $('.cInputQtd').length; $i++ ){
			if ($new_id == "spinner"+$i ){
				$totalIndividuos = $totalIndividuos + parseInt($valor);
			}else{
				$totalIndividuos = $totalIndividuos + parseInt($("#spinner"+$i).val());
			}

        }
        for ($i = 0; $i < $('.cInputQtd').length; $i++ ){
			if ($new_id == "spinner"+$i ){
				$quantidade = parseInt($valor);
			}else{
				$quantidade = parseInt($("#spinner"+$i).val());
			}
			
            if ( $quantidade > 0 ){
                $idEspecie = $("#hId"+$i).val();
				$("#quantidade").val($quantidade);
                $arrayEspecies[$idEspecie] = $quantidade;
				
				$("#nomecientifico").val($("#rowNomeEspecie"+$i).html().trim());

                $quantEspecies++;

                if ( $quantidade < 6 ){
                    $quantMenosQueSeis++;
                }

                //verifica se é nativa
                if ($("#rowNativa"+$i).html().trim() == "Sim"){
                    $quantNativas++;
                }

                //verifica se é nativa
                if ($("#rowHabito"+$i).html().trim() == "Arbusto"){
                    $quantArbustivas++;
                }

                //verifica se é zoocórica
                if ($("#rowZoocorica"+$i).html().trim() == "Sim"){
                    $quantEspecieZoocoricas++;
                    $quantTotalZoocoricas = $quantTotalZoocoricas + $quantidade;
                }
                //verifica se é ameaçada
                if ($("#rowAmeacada"+$i).html().trim() == "Sim"){

                    $quantAmeacada++;
                }
				//verifica se é ameaçada
				if ($("#rowTolerancia"+$i).html().trim() == "Alta"){
					$quantTolAlta++;
				}else{
					if($("#rowTolerancia"+$i).html().trim() == "Média"){
						$quantTolMedia++;
					}else{
						$quantTolBaixa++;
					}
				}
                //verifica se é pioneira
                if ($("#rowClasseSucessional"+$i).html().trim() === "Pioneira"){
					
                    $quantPioneira++;
                    $quantTotalPioneira = $quantTotalPioneira + $quantidade;
                    $taxPioneiraIndividual = parseFloat(($quantidade/$totalIndividuos)*100).toFixed(2);
                    $arrayPioneraIndividual.push($taxPioneiraIndividual);
				

                }else{
                    //verifica se é não pioneira
                    if ($("#rowClasseSucessional"+$i).html().trim() === "Não Pioneira"){
                        $quantNaoPioneira++;
                        $quantTotalNaoPioneira = $quantTotalNaoPioneira + $quantidade;
                        $taxNaoPioneiraIndividual = parseFloat(($quantidade/$totalIndividuos)*100).toFixed(2);
                        $arrayNaoPioneraIndividual.push($taxNaoPioneiraIndividual);

                    }
                }
            }
        }
		$("#totalMudas").val($totalIndividuos);
		$("#quantTolAlta").val($quantTolAlta);
		$("#quantTolMedia").val($quantTolMedia);
		$("#quantTolBaixa").val($quantTolBaixa);


        $("#totalNativas").html('<i class="progres-percent">'+$quantNativas+'</i>/ 80');
		$porcent = $quantNativas*100/80;
		$("#progressTotNativas").css("width",$porcent+"%");
		if ($porcent == 100){
			$("#progressTotNativas").parent().removeClass("progress progress-striped active min progress-success");
			$("#progressTotNativas").parent().addClass("progress progress active min progress-success");
		}
        $("#hTotPioneiras").val($quantNativas);

        $txArbustivaPorEspecie = parseFloat(($quantArbustivas/$quantEspecies)*100).toFixed(0);
        $("#hTxArbustivas").val($txArbustivaPorEspecie);


        $txZoocoricaPorTotal = parseFloat(($quantTotalZoocoricas/$totalIndividuos)*100).toFixed(0);
        $("#hTxTotZoocoricas").val($txZoocoricaPorTotal);

        $txZoocoricaPorEspecie = parseFloat(($quantEspecieZoocoricas/$quantEspecies)*100).toFixed(0);
		$("#taxaZoocoricas").html($txZoocoricaPorEspecie+'% - Mínimo: 40%');
        $("#hTxEspZoocoricas").val($txZoocoricaPorEspecie);
		$("#progressEspZoocoricas").css("width",$txZoocoricaPorEspecie+"%");
		if ($txZoocoricaPorEspecie >= 40){
			$("#progressEspZoocoricas").parent().removeClass("progress progress-striped active min progress-danger");
			$("#progressEspZoocoricas").parent().addClass("progress progress-striped active min progress-success");
		}else{
			$("#progressEspZoocoricas").parent().removeClass("progress progress-striped active min progress-success");
			$("#progressEspZoocoricas").parent().addClass("progress progress-striped active min progress-danger");
		}
		
        $txAmeacadaPorEspecie = parseFloat(($quantAmeacada/$quantEspecies)*100).toFixed(0);
        $("#totalAmeacadas").html($txAmeacadaPorEspecie+'% - Mínimo: 5%');
        $("#hTxAmeacada").val($txAmeacadaPorEspecie);
		$("#progressEspAmeacadas").css("width",$txAmeacadaPorEspecie+"%");
		if ($txAmeacadaPorEspecie >= 5){
			$("#progressEspAmeacadas").parent().removeClass("progress progress-striped active min progress-danger");
			$("#progressEspAmeacadas").parent().addClass("progress progress-striped active min progress-success");
		}else{
			$("#progressEspAmeacadas").parent().removeClass("progress progress-striped active min progress-success");
			$("#progressEspAmeacadas").parent().addClass("progress progress-striped active min progress-danger");
		}

        $txPioneiraPorEspecie = parseFloat(($quantPioneira/$quantEspecies)*100).toFixed(0);
        $("#hTxEspPioneira").val($txPioneiraPorEspecie);
        $txNaoPioneiraPorEspecie = parseFloat(($quantNaoPioneira/$quantEspecies)*100).toFixed(0);
        $("#hTxEspNaoPioneira").val($txNaoPioneiraPorEspecie);
		$("#totalPioneiras").html($txPioneiraPorEspecie +'% ' + $txNaoPioneiraPorEspecie+'% - Mínimo: 40% | Máximo: 60%');
		if ($txPioneiraPorEspecie >= 40 && $txNaoPioneiraPorEspecie >= 40){
			$("#progressEspPNP").css("width","100%");
			$("#progressEspPNP").parent().removeClass("progress progress-striped active min progress-danger");
			$("#progressEspPNP").parent().addClass("progress progress active min progress-success");
		}else{
			$("#progressEspPNP").css("width","100%");
			$("#progressEspPNP").parent().removeClass("progress progress-striped active min progress-success");
			$("#progressEspPNP").parent().addClass("progress progress-striped active min progress-danger");
		}
		
		
        $("#totalIndividuos").html($totalIndividuos);
        $("#hTotalIndiv").val($totalIndividuos);

        $txPioneiraPorIndividuo = parseFloat(($quantTotalPioneira/$totalIndividuos)*100).toFixed(0);
        $("#hTxIndivPioneira").val($txPioneiraPorIndividuo);
        $txNaoPioneiraPorIndividuo = parseFloat(($quantTotalNaoPioneira/$totalIndividuos)*100).toFixed(0);
        $("#hTxIndivNaoPioneira").val($txNaoPioneiraPorIndividuo);
		$("#pioneiraPorIndividuo").html($txPioneiraPorIndividuo +'% ' + $txNaoPioneiraPorIndividuo +'% - Mínimo: 40% | Máximo: 60%');
		if ($txPioneiraPorIndividuo >= 40 && $txNaoPioneiraPorIndividuo >= 40){
			$("#progressTotPNP").css("width","100%");
			$("#progressTotPNP").parent().removeClass("progress progress-striped active min progress-danger");
			$("#progressTotPNP").parent().addClass("progress active min progress-success");
		}else{
			$("#progressTotPNP").css("width","100%");
			$("#progressTotPNP").parent().removeClass("progress progress-striped active min progress-success");
			$("#progressTotPNP").parent().addClass("progress progress-striped active min progress-danger");
		}

        $taxMenosQueSeis = parseFloat(($quantMenosQueSeis/$quantEspecies)*100).toFixed(0);
        $("#hTxMenosQueSeis").val($taxMenosQueSeis);
		$("#taxamenosqueseis").html($taxMenosQueSeis+'% - Máximo: 10% das Espécies');
		$("#progressTaxaMenorSeis").css("width",$taxMenosQueSeis+"%");
		if ($taxMenosQueSeis <= 10){
			$("#progressTaxaMenorSeis").parent().removeClass("progress progress-striped active min progress-danger");
			$("#progressTaxaMenorSeis").parent().addClass("progress active min progress-success");
		}else{
			$("#progressTaxaMenorSeis").parent().removeClass("progress progress-striped active min progress-success");
			$("#progressTaxaMenorSeis").parent().addClass("progress progress-striped active min progress-danger");
		}
		$fPioneira = $arrayPioneraIndividual.filter(function(x) {
			return x > 10;
		});
		if ($fPioneira.length != 0){
			$("#progressTaxaP").parent().removeClass("progress active min progress-success");
			$("#progressTaxaP").parent().addClass("progress progress-striped active min progress-danger");
		}else{
			$("#progressTaxaP").parent().removeClass("progress progress-striped active min progress-danger");
			$("#progressTaxaP").parent().addClass("progress active min progress-success");
		}
		$fNaoPioneira = $arrayNaoPioneraIndividual.filter(function(x) {
			return x > 5;
		});

		if ($fNaoPioneira.length != 0){
			$("#progressTaxaNP").parent().removeClass("progress active min progress-success");
			$("#progressTaxaNP").parent().addClass("progress progress-striped active min progress-danger");
		}else{
			$("#progressTaxaNP").parent().removeClass("progress progress-striped active min progress-danger");
			$("#progressTaxaNP").parent().addClass("progress active min progress-success");
		}		

    }

    function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for(var i = 0; i <ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0)==' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length,c.length);
                }
            }
       return "";
    }

    function finalizarRelatorio(){


		var arrayMudas = new Array();
        $tipousuario = getCookie("tipousuario");

        if ($tipousuario != 1) {


            if ($("#hTotPioneiras").val() < 80) {
                alert("Você não atingiu a quantidade mínima de nativas. Mínima: " + 80 + ", Você escolheu: " + $("#hTotPioneiras").val());
                return false;
            }

            if ($("#hTxEspZoocoricas").val() < 40) {
                alert("Você não atingiu a taxa de zoocóricas em relação ao número de espécies. Mínima: 40%, Você escolheu: " + $("#hTxEspZoocoricas").val() + '%');
                return false;
            }
            if ($("#hTxAmeacada").val() < 5) {
                alert("Você não atingiu a taxa de ameaçadas em relação ao número de espécies. Mínima: 5%, Você escolheu: " + $("#hTxAmeacada").val() + '%');
                return false;
            }
            if ($("#hTxEspPioneira").val() < 40 || $("#hTxEspNaoPioneira").val() < 40) {
                alert("Você não atingiu a taxa de P e NP em relação ao número de espécies. Mínima: 40%, Máximo: 60%, Você escolheu: " + $("#hTxEspPioneira").val() + "% de P e " + $("#hTxEspNaoPioneira").val() + "% de NP");
                return false;
            }
            if ($("#hTxIndivPioneira").val() < 40 || $("#hTxIndivNaoPioneira").val() < 40) {
                alert("Você não atingiu a taxa de P e NP em relação ao número de indivíduos. Mínima: 40%, Máximo: 60%, Você escolheu: " + $("#hTxEspPioneira").val() + "% de P e " + $("#hTxEspNaoPioneira").val() + "% de NP");
                return false;
            }

            $fPioneira = $arrayPioneraIndividual.filter(function (x) {
                return x > 10;
            });

            if ($fPioneira.length != 0) {
                alert("Você escolheu mais de 10% de uma única espécie pioneira.");
                return false;
            }

            $fNaoPioneira = $arrayNaoPioneraIndividual.filter(function (x) {
                return x > 5;
            });

            if ($fNaoPioneira.length != 0) {
                alert("Você escolheu mais de 5% de uma única espécie não pioneira.");
                return false;
            }

            if ($("#hTxMenosQueSeis").val() > 10) {
                alert($("#hTxMenosQueSeis").val() + "% de suas espécies tem menos que 6 indíviduos. Máximo permitido: 10%");
                return false;
            }

        }

        for ($i = 0; $i < $('.cInputQtd').length; $i++ ){
            $quantidade = $("#spinner"+$i).val();
            if ($quantidade > 0 ) {
                var myObject = new Object();
                myObject.quantidade = $quantidade;
                myObject.idespecie = $("#idespecie" + $i).val();
                arrayMudas.push(myObject);
            }
        }

        var myJsonString = JSON.stringify(arrayMudas);
        $idProjeto = 0;
        $.ajax({
            type: "POST",
            url: "./_ajax/salvaprojeto.php",
            data: {data: myJsonString},
            dataType: 'json',
            success: function(data){
                $idProjeto = data;
                $("#idProjeto").val($idProjeto);
                $("#frmtable").submit();
            },
            error: function(ajaxContext){
                console.log(ajaxContext);
            }
        });

    }
	});
	


</script>
</head>
<body>
<div class="layout">
	<!-- Navbar
    ================================================== -->
	<div class="navbar navbar-inverse top-nav">
		<div class="navbar-inner">
			<div class="container">
				<span class="home-link"><a href="./index.php" class="icon-home"></a></span><a class="brand" href="./index.php"><img src="images/logo-saf.png" width="103" height="50" alt="Falgun" style="margin-top: 13px"></a>
                <?php if( isset($_COOKIE['loginusuario']) && !empty($_COOKIE['loginusuario']) && $_COOKIE['tipousuario'] == 1){  ?>
                <div class="nav-collapse">
                    <ul class="nav">
                        <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-th-large"></i> Menu Administrador <b class="icon-angle-down"></b></a>
                            <div class="dropdown-menu">
                                <ul>
                                    <li><a href="admin.php"><i class="icon-list-alt"></i> Lista de Projetos </a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <?php } ?>
                <div class="btn-toolbar pull-right notification-nav">
					<div class="btn-group">
						<?php if ( !isset($_COOKIE['loginusuario']) || empty($_COOKIE['loginusuario']) || $_COOKIE['tipousuario'] != 1 ){?>
						<div class="dropdown">
							<a class="btn btn-notification" href="./login.php"><i class="icon-lock"></i></a>
						</div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="leftbar leftbar-close clearfix">
		<?php if( isset($_COOKIE['loginusuario']) && !empty($_COOKIE['loginusuario']) && $_COOKIE['tipousuario'] == 1){  ?>
		<div class="admin-info clearfix">
			<div class="admin-thumb">
				<i class="icon-user"></i>
			</div>
			<div class="admin-meta">
				<ul>
					<li class="admin-username">Usuário: <?php echo $_COOKIE['loginusuario']; ?></li>
					<li style="margin-left: -5px; margin-top: 10px;"><a href="#" id="logout"><i class="icon-lock"></i> Logout</a></li>
				</ul>
			</div>
		</div>
		<?php } ?>


		<div class="left-nav clearfix">
				<div class="tab-pane active" id="main">
					<br>
					<div class="side-widget">
						<div class="board-widgets light-blue">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Total de Nativas</h4>
								<a href="#" class="widget-settings" title="Quantidade de espécies nativas selecionadas (Objetivo: Atingir 80 espécies)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress progress-striped active min progress-success">
									<div class="bar" id="progressTotNativas" style="width: 0%;">
									</div>
								</div>
								<div id="totalNativas" class="stat-text progress-stat">
									<i class="progres-percent">0</i>/ 80
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Espécies Zoocóricas</h4>
								<a href="#" class="widget-settings"  title="Porcentagem de espécies zoocóricas (Objetivo: Ter no mínimo 40% de espécies zoocóricas nativas da vegetação regional)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress progress-striped active min progress-danger">
									<div class="bar" id="progressEspZoocoricas" style="width: 0%;">
									</div>
								</div>
								<div class="stat-text progress-stat" id="taxaZoocoricas">
									0% - Mínimo: 40%
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Espécies Ameaçadas</h4>
								<a href="#" class="widget-settings" title="Porcentagem de espécies ameaçadas (Objetivo: Ter no mínimo 5% de espécies nativas da vegetação regional, enquadradas em alguma das categorias de ameaça)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress progress-striped active min progress-danger">
									<div class="bar" id="progressEspAmeacadas" style="width: 0%;">
									</div>
								</div>
								<div class="stat-text progress-stat" id="totalAmeacadas">
									0% - Mínimo: 5%
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Esp. Pioneiras e Não Pioneiras</h4>
								<a href="#" class="widget-settings" title="Porcentagem de espécies pioneiras e não pioneiras (Objetivo ter no máximo 60% de um grupo e no mínimo 40% para outro)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress progress-striped active min progress-success">
									<div class="bar" id="progressEspPNP" style="width: 0%;">
									</div>
								</div>
								<div class="stat-text progress-stat" id="totalPioneiras">
									0% 0% - Mínimo: 40% | Máximo: 60%
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Tot. Pioneiras e Não Pioneiras</h4>
								<a href="#" class="widget-settings" title="Total de indivíduos das espécies selecionadas (Objetivo: O total dos indivíduos pertencentes a um mesmo grupo ecológico, pioneiro e não pioneiro, não exceda 60% do total dos indivíduos do plantio)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress progress-striped active min progress-success">
									<div class="bar" id="progressTotPNP" style="width: 0%;">
									</div>
								</div>
								<div class="stat-text progress-stat" id="pioneiraPorIndividuo">
									0% 0% - Mínimo: 40% | Máximo: 60%
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Taxa por Espécie Pioneira</h4>
								<a href="#" class="widget-settings" title="Porcentagem de indivíduos de cada espécie pioneira em relação ao total de indivíduos selecionados (Objetivo: Nenhuma espécie pioneira ultrapasse o limite máximo de 10% de indivíduos do total do plantio)" >
                                    <i class="icon-info-sign" ></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress active min progress-success">
									<div class="bar" id="progressTaxaP" style="width: 100%;">
									</div>
								</div>
								<div class="stat-text progress-stat">
									Máximo: 10% por Espécie
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Taxa por Espécie Não Pioneira</h4>
								<a href="#" class="widget-settings" title="Porcentagem de indivíduos de cada espécie não pioneira em relação ao total de indivíduos selecionados (Objetivo: Nenhuma espécie não pioneira ultrapasse o limite máximo de 5%  de indivíduos do total do plantio)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress active min progress-success">
									<div class="bar" id="progressTaxaNP" style="width: 100%;">
									</div>
								</div>
								<div class="stat-text progress-stat">
									 Máximo: 5% por Espécie
								</div>
							</div>
						</div>
                        <div class="board-widgets light-blue ">
                            <div class="board-widgets-head clearfix">
                                <h4 class="pull-left">Espécies com Menos que 6 Indíviduos</h4>
                                <a href="#" class="widget-settings" title="Porcentagem de espécies em que o usuário colocou menos que 6 indivíduos (Objetivo: No máximo 10% das espécies implantadas tenham menos que 6  indivíduos por hectare)">
                                    <i class="icon-info-sign"></i>
                                </a>
                            </div>
                            <div class="board-widgets-content">
                                <div class="progress progress-striped active min progress-danger">
                                    <div class="bar" id="progressTaxaMenorSeis" style="width: 0%;">
                                    </div>
                                </div>
                                <div id="taxamenosqueseis" class="stat-text progress-stat">
                                    0% - Máximo: 10% das Espécies
                                </div>
                            </div>
                        </div>
					</div>
				</div>
		</div>
	</div>
	<div class="main-wrapper">
		<div class="container-fluid">
			<!--<div class="alert alert-error">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<i class="icon-exclamation-sign"></i><strong>Warning!</strong> Best check yo self, you're not looking too good.
			</div>!-->
			<div class="row-fluid ">
				<div class="span12">
					<div class="primary-head">
                        <form action="#" method="GET" id="slTable" name="slTable">
                        <h3 class="page-header">Tabela de Mudas
						<select class="slTabRef">
							<option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                            <option value="32">32</option>
                            <option value="33">33</option>
                            <option value="34">34</option>
                            <option value="35">35</option>
                            <option value="36">36</option>
                            <option value="37">37</option>
                            <option value="38">38</option>
                            <option value="39">39</option>
                            <option value="40">40</option>
                            <option value="41">41</option>
                            <option value="42">42</option>
                            <option value="43">43</option>
                            <option value="44">44</option>
						</select>
						<button id="btnFinalizar" class="btn btn-primary" type="button">Finalizar Projeto</button>
						</h3>
						
                        </form>
						
					</div>
				</div>
			</div>
			<div class="row-fluid">
                <div class="span12">
                    <div class="content-widgets">
                        <div>
                            <div>
							<form action="./relatorio.php" method="post" id="frmtable" >
								<input type="hidden" id="hTotPioneiras" name="hTotPioneiras" value="0"/>
								<input type="hidden" id="hTxEspZoocoricas" name="hTxEspZoocoricas" value="0"/>
								<input type="hidden" id="hTxAmeacada" name="hTxAmeacada" value="0"/>
								<input type="hidden" id="hTxEspPioneira" name="hTxEspPioneira" value="0"/>
								<input type="hidden" id="hTxEspNaoPioneira" name="hTxEspNaoPioneira" value="0"/>
								<input type="hidden" id="hTxIndivPioneira" name="hTxIndivPioneira" value="0"/>
								<input type="hidden" id="hTxIndivNaoPioneira" name="hTxIndivNaoPioneira"  value="0"/>
								<input type="hidden" id="hTxMenosQueSeis" name="hTxMenosQueSeis" value="0"/>
								<input type="hidden" id="idProjeto" name="idProjeto" value="0"/>
								<input type="hidden" id="totalMudas" name="totalMudas" value="0"/>
								<input type="hidden" id="quantTolAlta" name="quantTolAlta" value="0"/>
								<input type="hidden" id="quantTolMedia" name="quantTolMedia" value="0"/>
								<input type="hidden" id="quantTolBaixa" name="quantTolBaixa" value="0"/>
                                <table class="table table-striped tbl-simple table-bordered">

                                    <thead>
                                    <tr>
                                        <th>
                                            Quantidade
                                        </th>
                                        <th>
                                            Nome Científico
                                        </th>
                                        <th>
                                            Nome Popular
                                        </th>
                                        <th>
                                            Nativa
                                        </th>
                                        <th>
                                            Classe Sucessional
                                        </th>
                                        <th>
                                            Zoocórica
                                        </th>
                                        <th>
                                            Ameaçada
                                        </th>
                                        <th>
                                            Hábito
                                        </th>
                                        <th>
                                            Tolerância ao encharcamento
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
									<?php
									    $esp = new Especie();
									    $arr_esp = array();
                                        $arr_esp = $esp->getAllEspecies();
                                        $size = sizeof($arr_esp);
									    foreach($arr_esp as $i => $esp){
									?>

									<tr>
										<input type="hidden" id="idespecie<?=$i?>" value="<?=$esp->getIdEspecie()?>"/>
										<td>
											<input class="cInputQtd" id="spinner<?=$i?>" value="0">
									
										</td>
										<td id="rowNomeEspecie<?=$i?>">
                                            <?php echo utf8_encode($esp->getNomeCientifico());?>
																					
										</td>
										<td id="rowNomePopular<?=$i?>">
                                            <?php echo utf8_encode($esp->getNomePopular());?>
											
											
										</td>
										<td id="rowNativa<?=$i?>">
											 <?php if($esp->getNativa() == 'S'){echo 'Sim';}else{echo 'Não';} ?>
											 
											
										</td>
										<td id="rowClasseSucessional<?=$i?>">
											<?php if($esp->getClasseSucessional() == 'P'){echo 'Pioneira';}else{echo 'Não Pioneira';} ?>
											
										</td>
										<td id="rowZoocorica<?=$i?>">
											<?php if ($esp->getZoocorica() == 'S'){echo 'Sim';}else{echo 'Não';} ?>
											
										</td>
										<td id="rowAmeacada<?=$i?>">
											<?php if ($esp->getAmeacada() == 'S'){echo 'Sim';}else{echo 'Não';} ?>
											
										</td>
										<td id="rowHabito<?=$i?>">
											<?php if ($esp->getHabito() == 'Ar'){echo 'Árvore';}else{echo 'Arbusto';} ?>
											
										</td>
										<td id="rowTolerancia<?=$i?>">
											<?php if ($esp->getTolerancia() == 'A'){echo 'Alta';}elseif($esp->getTolerancia() == 'M'){echo 'Média';}else{echo 'Baixa';} ?>
											
										</td>
									</tr>
									<?php
									} //end for
									?>
                                    </tbody>
                                </table>
								</form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
	<div class="copyright">
		<p>
			 &copy; 2016 ESH - Eagles Software House
		</p>
	</div>
	<div class="scroll-top">
		<a href="#" class="tip-top" title="Go Top"><i class="icon-double-angle-up"></i></a>
	</div>
</div>
</body>
</html>