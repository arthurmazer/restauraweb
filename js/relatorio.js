$(function() {
    $(".paper-table").tablecloth({
        theme: "paper",
        striped: true,
        sortable: true,
        condensed: false
    });
    $(".dark-table").tablecloth({
        theme: "dark",
        striped: true,
        sortable: true,
        condensed: false
    });
    $(".stat-table").tablecloth({
        theme: "stats",
        striped: true,
        sortable: true,
        condensed: false
    });
    $("table").tablecloth({
        theme: "default",
        striped: true,
        bordered: true
    });
    $('[data-toggle="tooltip"]').tooltip();
    $("#DataTables_Table_0_length").hide();

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

