<?php 
session_start();

$mysqli=new mysqli('localhost', 'root', '', 'property');
  if($mysqli->connect_error) {
    printf("Cannot connect to database, try again! %s\n",$mysqli->connect_error);
    exit();

  }
if(isset($_POST['register'])){
		$name= $_POST['user'];
		$password= $_POST['password'];
		
		$s= "SELECT * FROM usertable where name = '$name'";
		$result = mysqli_query($mysqli, $s);

		$num = mysqli_num_rows($result);

		if($num == 1) {
			echo "Username already exist";
		}else {
			$reg= "INSERT INTO usertable(name, password) VALUES('$name', '$password')";
			mysqli_query($mysqli, $reg);
			header("Location: userlogin.php");
           return;
           
		}
}

?>