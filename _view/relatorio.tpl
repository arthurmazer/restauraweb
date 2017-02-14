
<html lang="en">
<head>
    {include file='../_view/top.tpl'}
</head>
<body>
<div class="layout">
    {include file='../_view/leftmenu.tpl'}
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
                            <a style="cursor: default"><span class="widget-stat">{$totalmudas}</span><span class="widget-icon icon-leaf"></span><span class="widget-label">Total de Mudas</span></a>
                        </div>
                    </div>
                    <div class="span3">
                        <div class="board-widgets green orange small-widget">
                            <a style="cursor: default"><span class="widget-stat">{$totalespecies}</span><span class="widget-icon icon-cloud"></span><span class="widget-label">Total de Espécies</span></a>
                        </div>
                    </div>

                    <div class="span3">
                        <div class="board-widgets green brown small-widget">
                            <a onclick="gerapdf({$idprojeto});"><span class="widget-icon icon-file"></span><span class="widget-label">Gerar PDF</span></a>
                        </div>
                    </div>

                    <div class="span3">
                        <div class="board-widgets bondi-blue small-widget">
                            <a href="/spa/download/excel.php?id={$idprojeto}" target="_blank"><span class="widget-icon icon-table"></span><span class="widget-label">Gerar Excel</span></a>
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
                                    {foreach from=$relatorio item=rel name=relatorioprojeto}
                                    <tr>
                                        <td align="center">
                                            {$rel->getQuantidade()}
                                        </td>
                                        <td>
                                            {$rel->getNomeCientifico()}
                                        </td>
                                        <td>
                                            {$rel->getNomePopular()}
                                        </td>
                                        <td >
                                            {$rel->getNativa()}
                                        </td>
                                        <td >
                                            {$rel->getClasseSucessional()}
                                        </td>
                                        <td >
                                            {$rel->getZoocorica()}
                                        </td>
                                        <td >
                                            {$rel->getAmeacada()}
                                        </td>
                                        <td >
                                            {$rel->getHabito()}
                                        </td>
                                        <td id="tolerancia{$smarty.foreach.relatorioprojeto.iteration}">
                                            {$rel->getTolerancia()}
                                        </td>
                                    </tr>
                                    {/foreach}
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
            &copy; 2017 ESH - Eagles Software House
        </p>
    </div>
    <div class="scroll-top">
        <a href="#" class="tip-top" title="Go Top"><i class="icon-double-angle-up"></i></a>
    </div>
</div>
</body>
</html>