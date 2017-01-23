<!DOCTYPE HTML>
<?php require_once("./_beans/Especie.php");?>
<html lang="pt">
<head>
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