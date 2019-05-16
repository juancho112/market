<?php

    include("database.php");

    $email=$_POST['email'];
    $pswd=password_hash($_POST['pswd'],PASSWORD_DEFAULT);

    $sql_validation = "SELECT * FROM usuarios WHERE email = '$email' ";

    $result=$conn->query($sql_validation);

    if($result->num_rows == 0){
          $sql_validation ="SELECT * FROM usuarios WHERE email='$email'";
      if ($conn->query($sql) == 0) {
        echo "<script language='javascript'>alert('Usuario no encontrado')</script>";
        header("Refresh:0;url=login.php");
      }else{
        echo "Error:".$sql."<br>".$conn->error;
      }
    }



    $sql_validation ="SELECT * FROM usuarios WHERE email='$email' AND password = '$pswd'";
    $result=$conn->query($sql_validation);

    if ($result->num_rows >0) {
      header("Refresh:0;url=index.php");
    }else {
      echo "<script language='javascript'>alert('Contraseña invaida')</script>";
      header("Refresh:0;url=login.php");
    }

?>
