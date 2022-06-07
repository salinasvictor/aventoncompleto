<?php
$conn = new mysqli('localhost','root','','aventon');
$email= $_POST['correo'];
$password= $_POST['password'];

    // Database connection

    
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		echo "Connected successfully";

        $consulta=("SELECT correo, password FROM aventador WHERE correo='$email' AND password='$password'");   
        

        
		if (mysqli_query($conn,$consulta)) {
			
			echo "New record created successfully";
			header("Location: http://localhost/proyecto/map_rutas/index.php");
			exit();
	  } else {
			echo "Error: " . $consulta . "<br>" . mysqli_error($conn);
            
	  }
	}

	
?> 