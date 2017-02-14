
<div class="leftbar leftbar-close clearfix" id="leftmenu">
    {if $userlogado eq true}
    <div class="admin-info clearfix">
        <div class="admin-thumb">
            <i class="icon-user"></i>
        </div>
        <div class="admin-meta">
            <ul>
                <li class="admin-username">Usuário: </li>
                <li style="margin-left: -5px; margin-top: 10px;"><a href="#" id="logout"><i class="icon-lock"></i> Logout</a></li>
            </ul>
        </div>
    </div>
    {/if}
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
