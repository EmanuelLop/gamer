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
        <title>Tienda</title>
        <link
        rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/pagina2.css"/>
    </head>
    <body>
    <h1 class="main__header__title">Tienda <?php echo $_SESSION["usuario"]; ?></h1>
        <div class="bread-crums">
            <ul>
               
                <li><a href="../Index.php"><i class="fa fa-home" ></i> HOME </a></li>
                <li><a href="../Paginas/Productos.php"><i class="fa fa-image"></i> Productos </a></li>
                <li><a href="../Paginas/Tienda.php"><i class="fa fa-users"></i> Tienda </a></li>
                <li><a href="../cerrar_sesion.php"><i class=""></i>Cerrar sesión</a></li>
            
            </ul>
        </div>
        <center>
            <div class="Imagen">
                 <img src="https://i.pinimg.com/originals/26/d7/c3/26d7c3abfcc7bc8050e41e8660a8435e.gif" alt="Rock and Roll Hall of Fame">               
        </center>        
        </div>
    </body>
</html>



