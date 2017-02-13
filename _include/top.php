
    <meta charset="utf-8">
    <title>RestauraWeb</title>
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
    <script src="js/TableTools.js"></script>
    <script src="js/ZeroClipboard.js"></script>
    <script src="js/jquery.tablecloth.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/dashboard/dashboard.js"></script>
    <script src="js/respond.min.js"></script>
    <script src="js/ios-orientationchange-fix.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/main.js"></script>
    <script src="js/relatorio.js"></script>
    <script src="js/jspdf.min.js"></script>
    <script src="js/jspdf.plugin.autotable.min.js"></script>
    <script src="js/jquery.flot.js"></script>
    <script src="js/jquery.flot.selection.js"></script>
    <script src="js/excanvas.js"></script>
    <script src="js/jquery.flot.pie.js"></script>
    <script src="js/jquery.tablesorter.min.js"></script>
    <script src="js/jquery.flot.tooltip.js"></script>
    <script src="js/jquery.flot.resize.js"></script>



    <!--============= relatorio ============

    <!-- TOPO ================================================== -->
    <div class="navbar navbar-inverse top-nav navbar-fixed-top" id="top">
        <div class="navbar-inner">
            <div class="container">
                <span class="home-link"><a href="./index.php" class="icon-home"></a></span><a class="brand" href="./index.php"><img src="images/logo-saf.png" width="103" height="50" alt="Falgun" style="margin-top: 13px"></a>
                <?php if( isset($_COOKIE['loginusuario']) && !empty($_COOKIE['loginusuario']) && $_COOKIE['tipousuario'] == 1){  ?>
                    <div class="nav-collapse">
                        <ul class="nav">
                            <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-th-large"></i> Menu Administrador <b class="icon-angle-down"></b></a>
                                <div class="dropdown-menu">
                                    <ul>
                                        <li><a href="admin.php"><i class="icon-list-alt"></i> Lista de Projetos </a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                <?php } ?>
                <div class="btn-toolbar pull-right notification-nav">
                    <div class="btn-group">
                        <?php if ( !isset($_COOKIE['loginusuario']) || empty($_COOKIE['loginusuario']) || $_COOKIE['tipousuario'] != 1 ){?>
                            <div class="dropdown">
                                <a class="btn btn-notification" href="./login.php"><i class="icon-lock"></i></a>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

