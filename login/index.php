<html>

    <head>
       <title> formulario de registro </title>
       <link rel="icon" type="image/ico" href="icons/form.png"/>
    </head>


     <body bgcolor="">  <br>
       <form name=frm1 action="insert_prod.php" method="POST">
         <h1 align=center> <font face="Trebuchet MS" size="16" color="#627EC1">REGISTRO</font> </h1>

          <fieldset>
            <legend>Formulario registro </legend>

                <table border="0" align="center">
                     <tr>
                        <td font face="Trebuchet MS" size="3" > Nombres: <font color="codigocolor">*</font></font> </td>
                        <td> <input type="text" name="nombre_u" style="text-transform:uppercase;" value="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese Nombre" required></td>
                     </tr>

                     <tr>
                        <td font face="Trebuchet MS" size="3" > Apellidos: <font color="codigocolor">*</font></font> </td>
                        <td> <input type="text" name="apellidos_u" style="text-transform:uppercase;" value="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese Apellidos" required></td>
                     </tr>

                     <tr>
                        <td font face="Trebuchet MS" size="3" > Nombre de usuario: <font color="codigocolor">*</font></font> </td>
                        <td> <input type="text" name="nick" style="text-transform:uppercase;" value="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Nombre de usuario" required></td>
                     </tr>

                     <tr>
                        <td font face="Trebuchet MS" size="3" > Email:<font color="codigocolor">*</font> </font> </td>
                        <td> <input type=text name="email" style="text-transform:uppercase;" value="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese email" required></td>
                     </tr>

                     <tr>
                        <td font face="Trebuchet MS" size="3" > Telefono:<font color="codigocolor">*</font> </font> </td>
                        <td> <input type=text name="telefono" style="text-transform:uppercase;" value="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese Telefono" required></td>
                     </tr>

                     <tr>
                        <td font face="Trebuchet MS" size="3" > Contraseña:<font color="codigocolor">*</font> </font> </td>
                        <td> <input type=password name="password" style="text-transform:uppercase;" value="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese email" required></td>
                     </tr>

                 </table>
                  <br>
                   <center><input  type="submit" value="Registrarse"></center>


        </form>
            </fieldset>
     </body>
</html>
