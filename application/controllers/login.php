<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function login()//Ema 
    {
        if($this->session->userdata('activo')== 1)
		{
			redirect('Login');
			$this->load->view('diseño/navbar');
			$this->load->view('diseño/scripts');
			$this->load->view('Login/login');		
		}
		else
		{
			$this->load->view('diseño/scripts');
			$this->load->view('Login/login');
		}
    }

	include 'conexion.php';

    $nombre_completo = $_POST['nombre_completo'];
    $correo = $_POST['correo'];
    $usuario = $_POST['usuario'];
    $clave = $_POST['clave'];
    $clave = hash('sha512', $clave);

    $query = "INSERT INTO usuarios(nombre_completo, correo, usuario, clave) 
    VALUES('$nombre_completo', '$correo', '$usuario', '$clave')";
    
    //Identificar datos duplicados en la base de datos.

    $verificar_correo =mysqli_query($conexion,"SELECT * FROM usuarios WHERE correo = '$correo'");

    if(mysqli_num_rows($verificar_correo) > 0)
    {
        echo'
        <script>
            alert("Este correo ya esta registrado. Intente con otro :D");
            window.location = "login.php"
        </script>
        ';
        exit();
    }

    //Identificar datos duplicados en la base de datos.

    $verificar_usuario =mysqli_query($conexion,"SELECT * FROM usuarios WHERE usuario = '$usuario'");

    if(mysqli_num_rows($verificar_usuario) > 0)
    {
        echo'
        <script>
            alert("Este usuario ya esta registrado. Intente con otro :D");
            window.location = "login.php"
        </script>
        ';
        exit();
    }

    $ejecutar = mysqli_query($conexion, $query);

    if($ejecutar)
    {
        echo'
        <script>
            alert("Registro completado con exito");
            window.location = "login.php"
        </script>
        ';
    }
    else
    {
        echo'
        <script>
            alert("Error al registrar el usuario. Revise nuevamante que esten correctos los datos");
            window.location = "login.php"
        </script>
        ';
    }
    mysqli_close($conexion);
?>
	
}