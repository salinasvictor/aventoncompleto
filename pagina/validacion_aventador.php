<?php
$conn = new mysqli('localhost','root','','aventon');
$correo= $_POST['correo'];
echo "Tu nombre es: ".$correo;
$password = $_POST['password'];
echo "Tu nombre es: ".$password;
		
    // Database connection

    
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		echo "Connected successfully";
		;
        $consulta=("SELECT 'correo', 'password' FROM aventador WHERE correo='$correo' AND password='$password'");   
        $resultado=mysqli_query($conn, $consulta);
		$filas=mysqli_num_rows($resultado);
        
		if ($filas>0) {
			header("Location: http://localhost/proyecto/pagina/aventador_activo.html");
			
			echo "Error en la autenticacion";
			  }else {
				header("Location: http://localhost/proyecto/pagina/aventador_alerta.html");
			  }
			
			
	}

	
?> 