<?php
// Include the main TCPDF library (search for installation path).
require_once('tcpdf_include.php');

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Restaura Web');
$pdf->SetTitle('Relatório de Mudas');
$pdf->SetSubject('');
$pdf->SetKeywords('Relatório, Mudas, PDF, RestauraWEB, Restaura');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 048', PDF_HEADER_STRING);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
    require_once(dirname(__FILE__).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('helvetica', 'B', 20);

// add a page
$pdf->AddPage();

$pdf->Write(0, 'Relatório de Mudas', '', 0, 'L', true, 0, false, false, 0);

$pdf->SetFont('helvetica', '', 8);


$rel = new Relatorio();
$arr_rel = array();
$arr_rel = $rel->getRelatorio($_POST['idProjeto']);
$size = sizeof($arr_rel);

$tbl = '<table border="1" cellpadding="2" cellspacing="2">';

$nativa = '';
$classeSucessional = '';
$zoocorica = '';
$ameacada = '';
$habito = '';
$tolerancia = '';
foreach($arr_rel as $i => $rel){
    // Table with rowspans and THEAD
    if($rel->getNativa() == 'S'){$nativa = 'Sim';}else{$nativa = 'Não';}
    if($rel->getClasseSucessional() == 'P'){$classeSucessional = 'Pioneira';}else{$classeSucessional = 'Não Pioneira';}
    if ($rel->getZoocorica() == 'S'){$zoocorica = 'Sim';}else{$zoocorica = 'Não';}
    if ($rel->getAmeacada() == 'S'){$ameacada = 'Sim';}else{$ameacada = 'Não';}
    if ($rel->getHabito() == 'Ar'){$habito = 'Árvore';}else{$habito = 'Arbusto';}
    if ($rel->getTolerancia() == 'A'){$tolerancia = 'Alta';}elseif($rel->getTolerancia() == 'M'){$tolerancia = 'Média';}else{$tolerancia = 'Baixa';}

    $tbl .= '
        <thead>
            <tr style="background-color:#2e852e;color:#f3f3f3;">
              <td width="30" align="center"><b>'.$rel->getQuantidade().'x</b></td>
              <td width="280" align="left"><b>Nome Científico: </b>'.utf8_encode($rel->getNomeCientifico()).' </td>
              <td width="280" align="left"><b>Nome Popular: </b>'.utf8_encode($rel->getNomePopular()).' </td>
            </tr>
        </thead>
            <tr>
                <td width="590"><b>Nativa: </b>' .$nativa.' <br/><b>Classe Sucessional:</b>' .$classeSucessional.'  <br /><b>Zoocórica:</b> ' .$zoocorica.' <br /><b>Ameaçada:</b> ' .$ameacada.' <br /><b>Hábito:</b> ' .$habito.' <br /><b>Tolerância ao enchercamento:</b> ' .$tolerancia.'</td>
            </tr>';
}

$tbl = '</table>';

$pdf->writeHTML($tbl, true, false, false, false, '');


// -----------------------------------------------------------------------------

//Close and output PDF document
$pdf->Output('relatorio_mudas.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
