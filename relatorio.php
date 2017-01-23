<?php if (!isset($_POST['idProjeto']) || $_POST['idProjeto']==0){
    header("Location: index.php");
}?>
<?php require_once("./_beans/Relatorio.php");?>
<html lang="en">
<head>

<!--============ javascript ===========-->
<script src="js/jquery.flot.js"></script>
<script src="js/jquery.flot.selection.js"></script>
<script src="js/excanvas.js"></script>
<script src="js/jquery.flot.pie.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.flot.tooltip.js"></script>
<script src="js/jquery.flot.resize.js"></script>
<script src="js/relatorio.js"></script>
<script type="text/javascript">
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
</script>
<?php include("_include/top.php"); ?>
</head>
<body>
<div class="layout">
    <?php include("_include/leftmenu.php"); ?>
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