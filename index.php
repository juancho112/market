<html>

    <head>
       <title> formulario de registro </title>
       <link rel="icon" type="image/ico" href="icons/form.png"/>
    </head>


     <body bgcolor="">  <br>
       <form name=frm1 action="insert_prod.php" method="POST">
         <h1 align=center> <font face="Trebuchet MS" size="16" color="#627EC1">MARKET</font> </h1>

          <fieldset>
            <legend>Registro</legend>

                <table border="0" align="center">
                     <tr>
                        <td font face="Trebuchet MS" size="3" > Codigo producto: <font color="codigocolor">*</font></font> </td>
                        <td> <input type="text" name="codprod" style="text-transform:uppercase;" value="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese producto" required></td>
                     </tr>

                     <tr>
                        <td font face="Trebuchet MS" size="3" > Nombre producto:<font color="codigocolor">*</font> </font> </td>
                        <td> <input type=text name="nomprod" style="text-transform:uppercase;" value="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese producto" required></td>
                     </tr>


                     <tr>
                        <td font face="Trebuchet MS" size="3" > Cantidad: </font> </td>
                        <td> <input type=text name="cantprod" placeholder="Ingrese cantidad"></td>
                     </tr>

                     <tr>
                        <td font face="Trebuchet MS" size="3" > Estado: <font color="codigocolor">*</font> </font> </td>
                        <td> <select name="estprod" placeholder="Ingrese identificacion" required>
                                <option value="1">Habilitado</option>
                                <option value="2">Deshabilitado</option>

                              </select>
                        </td>
                     </tr>

                 </table>
                  <br>
                   <center><input  type="submit" value="Registrarse"></center>


        </form>
            </fieldset>
     </body>
</html>

  <table border = 1 align ="center">
    <tr><th>CODIGO</th><th>NOMBRE</th><th>CANTIDAD</th><th>.</th><th>..</th></tr>

  <?php
  //1connexio a base de datos
      include("database.php");
      //2crear sql
      $sql = "SELECT * FROM productos";
      $result = $conn->query($sql);

      //3mostrar informacion
      if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
          echo "<tr>";
          echo "<td>".$row["codigo_prod"]."</td>";
          echo "<td>".$row["nombre_prod"]."</td>";
          echo "<td>".$row["cantidad"]."</td>";
          echo"<td><img src='icons/lapiz.png'width='20'></td>";
          echo"<td><a href='delete_product.php?cod=".$row["codigo_prod"]."'><img src='icons/cancelar.png'width='20'></a></td>";
          echo "</tr>";
        }
      }else {
        echo ":::No hay productos registrados:::";
      }
   ?>
