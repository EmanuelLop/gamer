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
                <li><a href="../Paginas/tienda.php"><i class="fa fa-users"></i> Tienda </a></li>
                <li><a href="../cerrar_sesion.php"><i class=""></i>Cerrar sesión</a></li>
            
            </ul>
        </div>
        <body style="width:100%;height:100px;overflow:auto;">

<div class="jumbotron" style="background-color: rgb(255, 226, 235);">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" >
       <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="img/cover48.jpg" alt="juegos">
          </div>
          <div class="carousel-item">
           <center><img class="d-block w-100" src="img/descarga.jpg" alt="juegos"></center>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/maxresdefault.jpg" alt="juegos">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
  </div>

        <center>
            <div class="Imagen">
                 <img src="https://i.pinimg.com/originals/26/d7/c3/26d7c3abfcc7bc8050e41e8660a8435e.gif" alt="Rock and Roll Hall of Fame">               
        </center>        
        </div>
    </body>
</html>



