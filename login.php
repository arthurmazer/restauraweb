<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Falgun - Metro Style Bootstrap Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Admin Panel Template">
<meta name="author" content="Westilian: Kamrujaman Shohel">
<!-- styles -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.css">
<!--[if IE 7]>
            <link rel="stylesheet" href="css/font-awesome-ie7.min.css">
        <![endif]-->
<link href="css/styles.css" rel="stylesheet">
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
<link href="css/aristo-ui.css" rel="stylesheet">
<link href="css/elfinder.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
<!--fav and touch icons -->
<link rel="shortcut icon" href="ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
<!--============j avascript===========-->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui-1.10.1.custom.min.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<script type="text/javascript">
    $(function () {
        $("#erro").hide();
        $("#signin").click(function(){
            $login = $("#login").val();
            $pass = $("#pass").val();
            $.ajax({
                type: "POST",
                url: "./_ajax/login.php",
                data: {login: $login, senha: $pass},
                success: function(data){
                    if (data != -1 ){
                        var usuario = data.split("-");
                        document.cookie = "loginusuario="+usuario[1];
                        document.cookie = "tipousuario="+usuario[2];
                        $("#frmlog").submit();
                    }else{
                        $("#erro").show();
                        $( "#erro" ).fadeOut( 7000);
                    }
                },
                error: function(ajaxContext){
                    console.log("erro ao tentar logar");
                }
            });

        });
        
    });
</script>
<body>
<div class="layout">
	<!-- Navbar================================================== -->
	<div class="navbar navbar-inverse top-nav">
		<div class="navbar-inner">
			<div class="container">
				<span class="home-link"><a href="index.html" class="icon-home"></a></span><a class="brand" href="./index.php"><img src="images/logo-saf.png" width="103" height="50" alt="Falgun" style="margin-top: 13px"></a>
				<div class="btn-toolbar pull-right notification-nav">
					<div class="btn-group">
						<div class="dropdown">
							<a class="btn btn-notification" href="./index.php"><i class="icon-reply"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<form class="form-signin" name="frmlog" id="frmlog" action="./index.php" method="post">
			<h3 class="form-signin-heading">Área do Administrador</h3>
			<div class="controls input-icon">
				<i class=" icon-user-md"></i>
				<input type="text" id="login" class="input-block-level" placeholder="Login">
			</div>
			<div class="controls input-icon">
				<i class=" icon-key"></i><input type="password" id="pass" class="input-block-level" placeholder="Senha">
			</div>
			<button type="button" class="btn btn-inverse btn-block" id="signin">Entrar</button>
		</form>
        <div class="span8" id="erro">
            <div class="alert alert-error" style="left: 180px;">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <i class="icon-exclamation-sign"></i><strong>Erro!</strong> Login e/ou Senha incorretos.
            </div>
        </div>
	</div>
</div>
</body>
</html>