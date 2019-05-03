><?php

  $codigo = $_GET['cod'];

  //1 conxion base de trader_cdlrisefall3methods
  include("database.php");
//2
  $sql = "DELETE FROM productos WHERE codigo_prod = '$codigo' ";
  //ejecute
  $conn->query($sql);
  //4
  echo "<script language='javascript'>alert(':::producto eliminado con exito:::')</script>";
  header("Refresh:0;url=index.php");


 ?>
