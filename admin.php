<!DOCTYPE HTML>

<?php if( isset($_COOKIE['loginusuario']) && !empty($_COOKIE['loginusuario']) && $_COOKIE['tipousuario'] == 1){
   // header("Location: index.php");
} ?>
<?php require_once("./_beans/RelatorioAdmin.php");?>
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

</script>
</head>
<body>
<div class="layout">
	<?php
	include("_include/top.php");
	?>

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
                        <h3 class="page-header">Administrador - Página de Projetos</h3>
                        </form>
						
					</div>
				</div>
			</div>

            <div class="board-widgets gray">
                <div class="board-widgets-head clearfix">
                    <h4 class="pull-left">Estatísticas</h4>
                    <a href="#" class="widget-settings"><i class="icon-group"></i></a>
                </div>
                <div class="board-widgets-content">
                    <div class="row-fluid">
					<div class="span12">
					<div class="content-widgets">
						<div>
							<div class="widget-header-block">
								<h4 class="widget-header"><i class=" icon-leaf"></i> Top 10 Espécies Selecionadas</h4>
							</div>
							<div class="content-box">
								<table class="paper-table table table-paper table-striped table-sortable">
							<tbody>
							<tr>
								<th align="center">
									Ranking
								</th>
								<th>
									Nome Científico
								</th>
								<th>
									Nome Popular
								</th>
								<th>
									Quantidade Total
								</th>
							  </tr>
							<?php
								$adm = new RelatorioAdmin();
								$arr_adm = array();
                                $arr_adm = $adm->retorna_top10_especies();
                                $size = sizeof($arr_adm);
								foreach($arr_adm as $i => $adm){
							?>
							<tr>
								<td align="center">
									<b><?= $i+1 ?></b>
								</td>
								<td>
									<?= $adm->getNomeEspecie() ?>
								</td>
								<td>
									<?= $adm->getNomePopular() ?>
								</td>
								<td>
									<?= $adm->getQntEspecie() ?>
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

                 </div>
                </div>
            <div class="row-fluid">
                <div class="span3">
                    <h3 class=" page-header"> <b>Últimos Projetos</b></h3>
                </div>
            </div>
			<div class="row-fluid">
                <div class="span12">
                    <div class="content-widgets light-gray">
                        <div>
                            <div>
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <th style="text-align:center;">
                                            Data Criação
                                        </th>
                                        <th style="text-align:center;">
                                            Total de Mudas
                                        </th>
                                        <th style="text-align:center;">
                                            #Pioneiras
                                        </th>
                                        <th style="text-align:center;"> 
                                            #Não-Pioneiras
                                        </th>
                                        <th style="text-align:center;">
                                            #Zoocóricas
                                        </th>
                                        <th style="text-align:center;">
                                            #Ameaçadas
                                        </th>
                                    </tr>
									<?php
									    $adm = new RelatorioAdmin();
									    $arr_adm = array();
                                        $arr_adm = $adm->getRelatorioAdmin();
                                        $size = sizeof($arr_adm);
									    foreach($arr_adm as $i => $adm){
									?>
									<tr>
										<td style="text-align:center;">
                                            <?= $adm->getDataCriacao() ?>
										</td>
										<td style="text-align:center;">
                                            <?= $adm->getTotalMudas() ?>
										</td>
										<td style="text-align:center;">
											 <?= $adm->getQtdPioneiras() ?>
										</td>
										<td style="text-align:center;">
											<?= $adm->getQtdNaoPioneiras() ?>
										</td>
										<td style="text-align:center;">
											<?= $adm->getQtdZoocoricas() ?>
										</td>
										<td style="text-align:center;">
											<?= $adm->getQtdAmeacadas() ?>
										</td>
									</tr>
									<?php
									} //end for
									?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row-fluid">
				
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