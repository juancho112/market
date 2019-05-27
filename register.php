<?php
  include('database.php');

  $ident=$_POST['ident'];

  //nombre del archivo
  $file_name = $_FILES['photo']['name'];
  //tipo de archivo
  $file_type = $_FILES['photo']['type'];
  //tamaño del archivo default (kb)
  $file_size = $_FILES['photo']['size'];
  //donde guarda la carpeta
  $file_tmp = $_FILES['photo']['tmp_name'];
//  echo $idNumber."<br>".$file_name."<br>".$file_type."<br>".$file_size."<br>".$file_tmp;
  move_uploaded_file($_FILES['photo']['tmp_name'],"images/".$_FILES['photo']['name']);
  $photo_url_db= "images/".$_FILES['photo']['name'];
  $sql="INSERT INTO usuarios (ident,photo) VALUES($ident,'$photo_url_db')";
  $conn->query($sql);
?>
