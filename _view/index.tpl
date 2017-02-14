<!DOCTYPE HTML>
<html lang="pt">
<head>
    {include file='../_view/top.tpl'}
    <style>
        @import url(http://fonts.googleapis.com/css?family=Roboto);

        /****** LOGIN MODAL ******/
        .loginmodal-container {
            padding: 30px;
            max-width: 350px;
            width: 100% !important;
            background-color: #F7F7F7;
            margin: 0 auto;
            border-radius: 2px;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            font-family: roboto;
        }

        .loginmodal-container h1 {
            text-align: center;
            font-size: 1.8em;
            font-family: roboto;
        }

        .loginmodal-container input[type=submit] {
            width: 100%;
            display: block;
            margin-bottom: 10px;
            position: relative;
        }

        .loginmodal-container input[type=text], input[type=password] {
            height: 44px;
            font-size: 16px;
            width: 100%;
            margin-bottom: 10px;
            -webkit-appearance: none;
            background: #fff;
            border: 1px solid #d9d9d9;
            border-top: 1px solid #c0c0c0;
            /* border-radius: 2px; */
            padding: 0 8px;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
        }

        .loginmodal-container input[type=text]:hover, input[type=password]:hover {
            border: 1px solid #b9b9b9;
            border-top: 1px solid #a0a0a0;
            -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
        }

        .loginmodal {
            text-align: center;
            font-size: 14px;
            font-family: 'Arial', sans-serif;
            font-weight: 700;
            height: 36px;
            padding: 0 8px;
            /* border-radius: 3px; */
            /* -webkit-user-select: none;
              user-select: none; */
        }

        .loginmodal-submit {
            /* border: 1px solid #3079ed; */
            border: 0px;
            color: #fff;
            text-shadow: 0 1px rgba(0,0,0,0.1);
            background-color: #4d90fe;
            padding: 17px 0px;
            font-family: roboto;
            font-size: 14px;
            /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
        }

        .loginmodal-submit:hover {
            /* border: 1px solid #2f5bb7; */
            border: 0px;
            text-shadow: 0 1px rgba(0,0,0,0.3);
            background-color: #357ae8;
            /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
        }

        .loginmodal-container a {
            text-decoration: none;
            color: #666;
            font-weight: 400;
            text-align: center;
            display: inline-block;
            opacity: 0.6;
            transition: opacity ease 0.5s;
        }

        .login-help{
            font-size: 12px;
        }
    </style>
</head>
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="loginmodal-container">
            <h1>Login to Your Account</h1><br>
            <form>
                <input type="text" name="user" placeholder="Username">
                <input type="password" name="pass" placeholder="Password">
                <input type="submit" name="login" class="login loginmodal-submit" value="Login">
            </form>

            <div class="login-help">
                <a href="#">Register</a> - <a href="#">Forgot Password</a>
            </div>
        </div>
    </div>
</div>
<body>
<!-- BEGIN MODAL -->

<!-- END # MODAL LOGIN -->
<div class="layout">
    {include file='../_view/leftmenu.tpl'}
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
                                    {foreach from=$selecttabelas item=numtable }
                                        <option value="{$numtable->getTabelaReferente()}">{$numtable->getTabelaReferente()}</option>
                                    {/foreach}
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
                                        {foreach from=$especies item=esp name=tableespecies}
                                        <tr>
                                            <input type="hidden" id="idespecie{$smarty.foreach.tableespecies.iteration}" value="{$esp->getIdEspecie()}"/>
                                            <td>
                                                <input class="cInputQtd" id="spinner{$smarty.foreach.tableespecies.iteration}" value="0">

                                            </td>
                                            <td id="rowNomeEspecie{$smarty.foreach.tableespecies.iteration}">
                                                {$esp->getNomeCientifico()}
                                            </td>
                                            <td id="rowNomePopular{$smarty.foreach.tableespecies.iteration}">
                                                {$esp->getNomePopular()}
                                            </td>
                                            <td id="rowNativa{$smarty.foreach.tableespecies.iteration}">
                                                {$esp->getNativa()}
                                            </td>
                                            <td id="rowClasseSucessional{$smarty.foreach.tableespecies.iteration}">
                                                {$esp->getClasseSucessional()}

                                            </td>
                                            <td id="rowZoocorica{$smarty.foreach.tableespecies.iteration}">
                                                {$esp->getZoocorica()}
                                            </td>
                                            <td id="rowAmeacada{$smarty.foreach.tableespecies.iteration}">
                                                {$esp->getAmeacada()}

                                            </td>
                                            <td id="rowHabito{$smarty.foreach.tableespecies.iteration}">
                                                {$esp->getHabito()}

                                            </td>
                                            <td id="rowTolerancia{$smarty.foreach.tableespecies.iteration}">
                                                {$esp->getTolerancia()}
                                            </td>
                                        </tr>
                                        {/foreach}
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
            &copy; 2017 ESH - Eagles Software House
        </p>
    </div>
    <div class="scroll-top">
        <a href="#" class="tip-top" title="Go Top"><i class="icon-double-angle-up"></i></a>
    </div>
</div>
</body>
</html>