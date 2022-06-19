<?php

	session_start();
	if(!isset($_SESSION['usuario']))
	{
		echo'
			<script>
				alert("Por favor inicia sesiòn");
				window.location = "../login.php";
			</script>
		';
		session_destroy();
		die();
	}

?>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Open+Sans&display=swap" rel="stylesheet"> 
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.min.css">
    
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.css">
    <link rel="stylesheet" href="../css/Estilo.css">
        <link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/pagina2.css"/>
    </head>
    <body>
        
        <header class="main-header">
            <div class="container flex">
                <div class="main-header__container">
                <h1 class="main__header__title">Productos <?php echo $_SESSION["usuario"]; ?></h1>
                <span class="icon-menu fas fa-bars" id="btn-menu"></span>
                <nav class="main-nav" id="main-nav">
        
                     <div class="bread-crums">
                    <ul>
                       
                        <li><a href="../Index.php"><i class="fa fa-home" ></i> HOME </a></li>
                        <li><a href="../Paginas/Productos.php"><i class="fa fa-image"></i> Productos </a></li>
                        <li><a href="../Paginas/Tienda.php"><i class="fa fa-users"></i> Tienda </a></li>
                        <li><a href="../cerrar_sesion.php"><i class=""></i>Cerrar sesión</a></li>
        
                       
                    
                    </ul>
                </div>
                
                 </nav>
            </div>
           
                <div class="main-header__container">
            <span class="main-header__txt">need Help</span>
                <p class="main-header__txt"><i class="fas fa-phone"></i>Numero 2255889966</p>
                </div>
                <div class="main-header__container">
                    <i class="far fa-user"></i>
                    <a href="" class="main-header__btn">Carrito  <i class="fas fa-shopping-cart"></i></a>
                    <input type="search" class="main-header__input" placeholder="Buscar Productos"><i class="fas fa-search"></i>
                </div>
            </div>
            
            </header>
          
                        <div class="Imagen">
                            <img src="../img/img1.jpg" alt="Rock and Roll Hall of Fame">
                           
                        </div>
            
        <br><br><br>
    </body>
</html>