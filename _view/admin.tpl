<!DOCTYPE HTML>
<html lang="en">
<head>
    {include file='../_view/top.tpl'}
</head>
<body>
<div class="layout">
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
                                            {foreach from=$top10 item=top10 name=top10especies}
                                            <tr>
                                                <td align="center">
                                                    <b>{$smarty.foreach.tableespecies.iteration+1}</b>
                                                </td>
                                                <td>
                                                    {$top10->getNomeEspecie()}
                                                </td>
                                                <td>
                                                    {$top10->getNomePopular()}
                                                </td>
                                                <td>
                                                    {$top10->getQntEspecie()}
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
                                    {foreach from=$relatorio item=rel name=relatorio}
                                    <tr>
                                        <td style="text-align:center;">
                                            {$rel->getDataCriacao()}
                                        </td>
                                        <td style="text-align:center;">
                                            {$rel->getTotalMudas()}
                                        </td>
                                        <td style="text-align:center;">
                                            {$rel->getQtdPioneiras()}
                                        </td>
                                        <td style="text-align:center;">
                                            {$rel->getQtdNaoPioneiras()}
                                        </td>
                                        <td style="text-align:center;">
                                            {$rel->getQtdZoocoricas()}
                                        </td>
                                        <td style="text-align:center;">
                                            {$rel->getQtdAmeacadas()}
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