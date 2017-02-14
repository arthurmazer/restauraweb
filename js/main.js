$(function() {
    
    $(window).scroll(function(e){
        var $el = $('.fixedElement');
        var isPositionFixed = ($el.css('position') == 'fixed');
        if ($(this).scrollTop() > 200 && !isPositionFixed){
            $('.fixedElement').css({'position': 'fixed', 'top': '0px'});
        }
        if ($(this).scrollTop() < 200 && isPositionFixed)
        {
            $('.fixedElement').css({'position': 'static', 'top': '0px'});
        }
    });

    $('.tbl-simple').dataTable({
        "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
    });
    $('[data-toggle="tooltip"]').tooltip();
    $("#DataTables_Table_0_length").hide();

    $(".cInputQtd").spinner({
        min: 0,
        step: 1
    });

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

                //verifica habito
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
                swal({
                    title: "Erro!",
                    text: "Você não atingiu a quantidade mínima de nativas de espécies diferentes. Mínima: " + 80 + ", Você escolheu: " + $("#hTotPioneiras").val(),
                    type: "error",
                    confirmButtonText: "OK"
                });
                return false;
            }

            if ($("#hTxEspZoocoricas").val() < 40) {
                swal({
                    title: "Erro!",
                    text: "Você não atingiu a taxa de zoocóricas em relação ao número de espécies. Mínima: 40%, Você escolheu: " + $("#hTxEspZoocoricas").val() + "%",
                    type: "error",
                    confirmButtonText: "OK"
                });
                return false;
            }
            if ($("#hTxAmeacada").val() < 5) {
                swal({
                    title: "Erro!",
                    text: "Você não atingiu a taxa de ameaçadas em relação ao número de espécies. Mínima: 5%, Você escolheu: " + $("#hTxAmeacada").val() + "%",
                    type: "error",
                    confirmButtonText: "OK"
                });
                return false;
            }
            if ($("#hTxEspPioneira").val() < 40 || $("#hTxEspNaoPioneira").val() < 40) {
                swal({
                    title: "Erro!",
                    text: "Você não atingiu a taxa de P e NP em relação ao número de espécies. Mínima: 40%, Máximo: 60%, Você escolheu: " + $("#hTxEspPioneira").val() + "% de P e " + $("#hTxEspNaoPioneira").val() + "% de NP",
                    type: "error",
                    confirmButtonText: "OK"
                });
                return false;
            }
            if ($("#hTxIndivPioneira").val() < 40 || $("#hTxIndivNaoPioneira").val() < 40) {
                swal({
                    title: "Erro!",
                    text: "Você não atingiu a taxa de P e NP em relação ao número de indivíduos. Mínima: 40%, Máximo: 60%, Você escolheu: " + $("#hTxEspPioneira").val() + "% de P e " + $("#hTxEspNaoPioneira").val() + "% de NP",
                    type: "error",
                    confirmButtonText: "OK"
                });
                return false;
            }

            $fPioneira = $arrayPioneraIndividual.filter(function (x) {
                return x > 10;
            });

            if ($fPioneira.length != 0) {
                swal({
                    title: "Erro!",
                    text: "Você escolheu mais de 10% de uma única espécie pioneira",
                    type: "error",
                    confirmButtonText: "OK"
                });
                return false;
            }

            $fNaoPioneira = $arrayNaoPioneraIndividual.filter(function (x) {
                return x > 5;
            });

            if ($fNaoPioneira.length != 0) {
                swal({
                    title: "Erro!",
                    text: "Você escolheu mais de 5% de uma única espécie não pioneira",
                    type: "error",
                    confirmButtonText: "OK"
                });
                return false;
            }

            if ($("#hTxMenosQueSeis").val() > 10) {
                swal({
                    title: "Erro!",
                    text: $("#hTxMenosQueSeis").val() + "% de suas espécies tem menos que 6 indíviduos. Máximo permitido: 10%",
                    type: "error",
                    confirmButtonText: "OK"
                });
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
            }
        });

    }


});