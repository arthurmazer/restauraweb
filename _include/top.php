<!-- TOPO ================================================== -->
<div class="navbar navbar-inverse top-nav">
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