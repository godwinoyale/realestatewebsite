<?php
session_start();
//checks if the button has been submitted
if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST["user"])&& isset($_POST["password"])){
        if($_POST["password"]=="godwin"){
            //if password is correct then redirect to app
           header("Location: insert.php");
           return;
        }else{
            $_SESSION["error"] = "Sorry, wrong password";
            header("Location: userlogin.php");
            return;
        }
    }
}

?>