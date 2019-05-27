<?php

    include "database.php";

    $codigo=$_POST['codigo'];
    $nombre=strtoupper( $_POST['producto']);
    $cantidad=$_POST['cantidad'];
    $costo=$_POST['costo'];



    //donde guarda la carpeta
    $file_tmp = $_FILES['imagen']['tmp_name'];
  //  echo $idNumber."<br>".$file_name."<br>".$file_type."<br>".$file_size."<br>".$file_tmp;
    move_uploaded_file($_FILES['imagen']['tmp_name'],"images/".$_FILES['imagen']['name']);
    $photo_url_db= "images/".$_FILES['imagen']['name'];

    $sql="INSERT INTO productos (codprod,nomprod,cantprod,pcosto,imagen)VALUES('$codigo','$nombre',$cantidad,$costo,'$imagen_url_db')";

    if ($conn->query($sql)===true) {
        echo "<script languaje='javascript'>alert('Producto regisrado con exito')</script>";

    }else{
        echo "Error:".$sql."<br>".$conn->error;
    }

?>
