<!DOCTYPE HTML>
<?php if (!isset($_POST['idProjeto']) || $_POST['idProjeto']==0){
    header("Location: index.php");
}?>
<?php require_once("./_beans/Relatorio.php");?>
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
<script src="js/jquery.flot.js"></script>
<script src="js/jquery.flot.selection.js"></script>
<script src="js/excanvas.js"></script>
<script src="js/jquery.flot.pie.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.flot.tooltip.js"></script>
<script src="js/jquery.flot.resize.js"></script>
<script src="js/TableTools.js"></script>
<script src="js/ZeroClipboard.js"></script>
<script src="js/jquery.tablecloth.js"></script>
<script src="js/custom.js"></script>
<script src="js/dashboard/dashboard.js"></script>
<script src="js/respond.min.js"></script>
<script src="js/ios-orientationchange-fix.js"></script>
<script type="text/javascript">
    $(function() {

    });
    function gerapdf(){
        $.ajax({
            type: "POST",
            url: $('#frmtable').attr("action"),
            data: {"idProjeto": <?= $_POST['idProjeto'] ?> },
            success: function (result) {
                // do somthing here
            }
        });
    }

    $(function() {
		$(".paper-table").tablecloth({
			theme: "paper",
			striped: true,
			sortable: true,
			condensed: false
		});
	});
	$(function() {
		$(".dark-table").tablecloth({
			theme: "dark",
			striped: true,
			sortable: true,
			condensed: false
		});
	});
	$(function() {
		$(".stat-table").tablecloth({
			theme: "stats",
			striped: true,
			sortable: true,
			condensed: false
		});
	});
	$(function() {
		$("table").tablecloth({
			theme: "default",
			striped: true,
			bordered: true
		});
	});
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
        $("#DataTables_Table_0_length").hide();
    });

    $(function(){
        var taxZoocorica = parseInt("<?=$_POST['hTxEspZoocoricas']?>");
        var taxNaoZoocorica = 100 - taxZoocorica;

        var data = [
            {
            label: "Zoocóricas",
            data: taxZoocorica,
            color: '#CC0000'
            }, {
            label: "Não Zoocóricas",
            data: taxNaoZoocorica,
            color: '#004C99'
            }
        ];
        var options = {
            series: {
                pie: {
                    show: true
                }
            },
            legend: {
                show: true
            },
            grid: {
                hoverable: true,
                clickable: true
            },
            tooltip: true,
            tooltipOpts: {
                content: "%p.0% %s", // show percentages, rounding to 2 decimal places
                shifts: {
                    x: 20,
                    y: 0
                },
                defaultTheme: false
            }
        };
        $.plot($("#pie-chart3 #pie-chartContainer3"), data, options);
    });

    $(function(){
        var taxPioneiraIndv = parseInt("<?=$_POST['hTxIndivPioneira']?>");
        var taxNaoPioneiraIndv = parseInt("<?=$_POST['hTxIndivNaoPioneira']?>");

        var data = [
            {
                label: "Pioneiras",
                data: taxPioneiraIndv,
                color: '#330066'
            }, {
                label: "Não Pioneiras",
                data: taxNaoPioneiraIndv,
                color: '#006600'
            }
        ];
        var options = {
            series: {
                pie: {
                    show: true
                }
            },
            legend: {
                show: true
            },
            grid: {
                hoverable: true,
                clickable: true
            },
            tooltip: true,
            tooltipOpts: {
                content: "%p.0% %s", // show percentages, rounding to 2 decimal places
                shifts: {
                    x: 20,
                    y: 0
                },
                defaultTheme: false
            }
        };
        $.plot($("#pie-chart #pie-chartContainer"), data, options);
    });

    $(function(){
        var taxPioneira = parseInt("<?=$_POST['hTxEspPioneira']?>");
        var taxNaoPioneira = parseInt("<?=$_POST['hTxEspNaoPioneira']?>");

        var data = [
            {
                label: "Pioneiras",
                data: taxPioneira
            }, {
                label: "Não Pioneiras",
                data: taxNaoPioneira
            }
        ];
        var options = {
            series: {
                pie: {
                    show: true
                }
            },
            legend: {
                show: true
            },
            grid: {
                hoverable: true,
                clickable: true
            },
            tooltip: true,
            tooltipOpts: {
                content: "%p.0% %s", // show percentages, rounding to 2 decimal places
                shifts: {
                    x: 20,
                    y: 0
                },
                defaultTheme: false
            }
        };
        $.plot($("#pie-chart2 #pie-chartContainer2"), data, options);
    });

    $(function(){
        var quantTolAlta = parseInt("<?=$_POST['quantTolAlta']?>");
        var quantTolMedia = parseInt("<?=$_POST['quantTolMedia']?>");
        var quantTolBaixa = parseInt("<?=$_POST['quantTolBaixa']?>");

        var data = [
            {
                label: "Alta",
                data: quantTolAlta,
                color: '#CC6600'
            }, {
                label: "Média",
                data: quantTolMedia,
                color: '#CC0066'
            }, {
                label: "Baixa",
                data: quantTolBaixa,
                color: '#606060'
            }
        ];
        var options = {
            series: {
                pie: {
                    show: true
                }
            },
            legend: {
                show: true
            },
            grid: {
                hoverable: true,
                clickable: true
            },
            tooltip: true,
            tooltipOpts: {
                content: "%p.0% %s", // show percentages, rounding to 2 decimal places
                shifts: {
                    x: 20,
                    y: 0
                },
                defaultTheme: false
            }
        };
        $.plot($("#pie-chart4 #pie-chartContainer4"), data, options);
    });

</script>
</head>
<body>
<div class="layout">
    <?php
    include("_include/top.php");
    ?>
	<div class="leftbar leftbar-close clearfix">
		
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
									<div class="bar" id="progressTotNativas" style="width: <?=$_POST['hTotPioneiras']*100/80?>%;">
									</div>
								</div>
								<div id="totalNativas" class="stat-text progress-stat">
									<?=$_POST['hTotPioneiras']?>/ 80
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Espécies Zoocóricas</h4>
								<a href="#" class="widget-settings" title="Porcentagem de espécies zoocóricas (Objetivo: Ter no mínimo 40% de espécies zoocóricas nativas da vegetação regional)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress active min progress-success">
									<div class="bar" id="progressEspZoocoricas" style="width: <?=$_POST['hTxEspZoocoricas']?>%;">
									</div>
								</div>
								<div class="stat-text progress-stat" id="taxaZoocoricas">
									<?=$_POST['hTxEspZoocoricas']?>% - Mínimo: 40%
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
									<div class="bar" id="progressEspAmeacadas" style="width: <?=$_POST['hTxAmeacada']?>%;">
									</div>
								</div>
								<div class="stat-text progress-stat" id="totalAmeacadas">
									<?=$_POST['hTxAmeacada']?>% - Mínimo: 5%
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Esp. Pioneiras e Não Pioneiras</h4>
								<a href="#" class="widget-settings"  title="Porcentagem de espécies pioneiras e não pioneiras (Objetivo ter no máximo 60% de um grupo e no mínimo 40% para outro)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress progress active min progress-success">
									<div class="bar" id="progressEspPNP" style="width: 100%;">
									</div>
								</div>
								<div class="stat-text progress-stat" id="totalPioneiras">
									<?=$_POST['hTxEspPioneira']?>% <?=$_POST['hTxEspNaoPioneira']?>% - Mínimo: 40% | Máximo: 60%
								</div>
							</div>
						</div>
						<div class="board-widgets light-blue ">
							<div class="board-widgets-head clearfix">
								<h4 class="pull-left">Tot. Pioneiras e Não Pioneiras</h4>
								<a href="#" class="widget-settings"  title="Total de indivíduos das espécies selecionadas (Objetivo: O total dos indivíduos pertencentes a um mesmo grupo ecológico (pioneiro e não pioneiro) não exceda 60% do total dos indivíduos do plantio)">
                                    <i class="icon-info-sign"></i>
                                </a>
							</div>
							<div class="board-widgets-content">
								<div class="progress progress active min progress-success">
									<div class="bar" id="progressTotPNP" style="width: 100%;">
									</div>
								</div>
								<div class="stat-text progress-stat" id="pioneiraPorIndividuo">
									<?=$_POST['hTxIndivPioneira']?>% <?=$_POST['hTxIndivNaoPioneira']?>% - Mínimo: 40% | Máximo: 60%
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
                                <div class="progress progress active min progress-success">
                                    <div class="bar" id="progressTaxaMenorSeis" style="width: <?=$_POST['hTxMenosQueSeis']?>%;">
                                    </div>
                                </div>
                                <div id="taxamenosqueseis" class="stat-text progress-stat">
                                    <?=$_POST['hTxMenosQueSeis']?>% - Máximo: 10% das Espécies
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
			<div class="row-fluid">
				<div class="span12">
					<div class="primary-head">
                        <form action="#" method="GET" id="slTable" name="slTable">
                        <h3 class="page-header">Relatório</h3>
                        </form>
						
					</div>
				</div>
			</div>
            <form action="./pdf/pdfrelatorio.php" method="post" id="frmtable" >
            <div class="row-fluid">
                <div class="span3">
                    <div class="board-widgets orange small-widget">
                        <a style="cursor: default"><span class="widget-stat"><?= $_POST['totalMudas'] ?></span><span class="widget-icon icon-leaf"></span><span class="widget-label">Total de Mudas</span></a>
                    </div>
                </div>
                <div class="span3">
                    <div class="board-widgets green orange small-widget">
                        <a style="cursor: default"><span class="widget-stat"><?=$_POST['hTotPioneiras']?></span><span class="widget-icon icon-cloud"></span><span class="widget-label">Total de Espécies</span></a>
                    </div>
                </div>

                <div class="span3">
                    <div class="board-widgets green brown small-widget">
                        <a onclick="gerapdf();"><span class="widget-icon icon-file"></span><span class="widget-label">Gerar PDF</span></a>
                    </div>
                </div>

                <div class="span3">
                    <div class="board-widgets bondi-blue small-widget">
                        <a><span class="widget-icon icon-table"></span><span class="widget-label">Gerar Excel</span></a>
                    </div>
                </div>
            </div>
            </form>
			<div class="row-fluid">
                <div class="span12">
                    <div class="content-widgets light-gray">
                        <div>
                            <div>
                                <table class="table">
                                    <tbody>
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
									<?php
									$rel = new Relatorio();
									$arr_rel = array();
									$arr_rel = $rel->getRelatorio($_POST['idProjeto']);
									$size = sizeof($arr_rel);
									foreach($arr_rel as $i => $rel){
									?>
									<tr>
										<td align="center">
											<?= $rel->getQuantidade() ?>
										</td>
										<td>
                                            <?= utf8_encode($rel->getNomeCientifico()) ?>
										</td>
										<td>
                                            <?= utf8_encode($rel->getNomePopular()) ?>
										</td>
										<td >
											 <?php if($rel->getNativa() == 'S'){echo 'Sim';}else{echo 'Não';}  ?>
										</td>
										<td >
											<?php if($rel->getClasseSucessional() == 'P'){echo 'Pioneira';}else{echo 'Não Pioneira';}  ?>
										</td>
										<td >
											<?php if ($rel->getZoocorica() == 'S'){echo 'Sim';}else{echo 'Não';}  ?>
										</td>
										<td >
											<?php if ($rel->getAmeacada() == 'S'){echo 'Sim';}else{echo 'Não';}  ?>
										</td>
										<td >
											<?php if ($rel->getHabito() == 'Ar'){echo 'Árvore';}else{echo 'Arbusto';} ?>
										</td>
										<td id="tolerancia<?=$i?>">
											<?php if ($rel->getTolerancia() == 'A'){echo 'Alta';}elseif($rel->getTolerancia() == 'M'){echo 'Média';}else{echo 'Baixa';} ?>
										</td>
									</tr>
									<?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span6">
                    <div class="content-widgets light-gray">
                        <div class="widget-head blue">
                            <h3>Taxa Pioneira e Não Pioneiras (Total Mudas)</h3>
                        </div>
                        <div class="widget-container">
                            <div id="pie-chart" class="pie-chart">
                                <div id="pie-chartContainer" style="width: 100%;height:400px; text-align: left;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span6">
                    <div class="content-widgets light-gray">
                        <div class="widget-head blue">
                            <h3>Taxa Pioneira e Não Pioneiras (Espécie)</h3>
                        </div>
                        <div class="widget-container">
                            <div id="pie-chart2" class="pie-chart">
                                <div id="pie-chartContainer2" style="width: 100%;height:400px; text-align: left;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span6">
                    <div class="content-widgets light-gray">
                        <div class="widget-head blue">
                            <h3>Espécies Zoocóricas</h3>
                        </div>
                        <div class="widget-container">
                            <div id="pie-chart3" class="pie-chart">
                                <div id="pie-chartContainer3" style="width: 100%;height:400px; text-align: left;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span6">
                    <div class="content-widgets light-gray">
                        <div class="widget-head blue">
                            <h3>Tolerancia ao encharcamento</h3>
                        </div>
                        <div class="widget-container">
                            <div id="pie-chart4" class="pie-chart">
                                <div id="pie-chartContainer4" style="width: 100%;height:400px; text-align: left;">
                                </div>
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