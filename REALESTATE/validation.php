<?php 
session_start();

$mysqli=new mysqli('localhost', 'root', '', 'property');
  if($mysqli->connect_error) {
    printf("Cannot connect to database, try again! %s\n",$mysqli->connect_error);
    exit();

  }
if(isset($_POST['login'])){
		$name= $_POST['user'];
		$password= $_POST['password'];
		
		$s= "SELECT * FROM usertable where name = '$name' && password = '$password'";
		$result = mysqli_query($mysqli, $s);

		$num = mysqli_num_rows($result);

		if($num == 1) {
			header("Location: index.php");
		}else {
			header("Location: userlogin.php");
		}
}

?>