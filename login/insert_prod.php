<?php

  include("database.php");

  $nombre = $_POST["nombre_u"];
  $apellidos = $_POST["apellidos_u"];
  $apodo = $_POST["nick"];
  $correo = $_POST["email"];
  $tel = $_POST["telefono"];
  //$contraseña=MD5 = $_POST["password"];
  $contraseña=password_hash($_POST["password"],PASSWORD_DEFAULT);

  //VALIDAR SI EL SUSUARIO YA EXISTS
  $sql_validar_user="SELECT *  FROM productos WHERE email = '$correo' ";
  $result=$conn->query($sql_validar_user);





  $sql = "INSERT INTO productos (nombre_u,apellidos_u,nick,email,telefono,password )  VALUES ('$nombre','$apellidos','$apodo','$correo','$tel','$contraseña')";
  if ($conn->query($sql)===TRUE) {
    //echo "Producto registrado con exito";
    //echo "<a href='index.php'>Regresar</a>";
    echo "<script language='javascript'>alert(':::usuario registrado con exito:::')</script>";
    header("Refresh:0;url=login.php");
  }else {
    die ("Error". $conn->error);
  }

 ?>
