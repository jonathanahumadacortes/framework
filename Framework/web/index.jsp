<%-- 
    Document   : inicio
    Created on : Sep 16, 2022, 10:09:51 AM
    Author     : Jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="Script.js" type="text/javascript"></script>
        <script src="validarut.js" type="text/javascript"></script>
        <title>INICIO</title>
    </head>
    <body>
        
        <center>
            <div><h2 class="text-primary">FORMULARIO DE INSCRIPCION</h2></div>
        <br>
        
        <form  name="form1" action = "servletController" method="POST" onsubmit="return ValidarDatos()" >
            <table class="table table-primary table-hover"  style="width: 50%">
                <tr>
                    <td><h4><label for="name">NOMBRE</label></h4></td>
                    <td><div><input class="form-control" type="text" name="name" id="name"/></div></td>
                </tr>
                <tr> 
                    <td><h4><label for="last_name">APELLIDOS</label></h4></td>
                    <td><div><input class="form-control" type="text" name="last_name" id="last_name"/></div></td>   
                </tr>
                <tr> 
                    <td><h4><label for="adresse">DIRECCION</label></h4></td>
                    <td><div><input class="form-control" type="text" name="adresse" id="adresse"/></div></td>   
                </tr>
                <tr>
                    <td><h4><label for="gender">GENERO</label></h4></td>
                    <td>
                        <select class="form-select" aria-label="Default select example" name="gender" id="gender" >
                            <option value="">SELECCIONE GENERO</option>
                            <option value="MASCULINO">MASCULINO</option>
                            <option value="FEMENINO">FEMENINO</option>
                            <option value="NO_RESPONDIDO">PREFIERO NO DECIRLO</option>                    
                        </select>
                    </td>
                </tr>
                <tr> 
                    <td><h4><label for="run">RUT</label></h4></td>
                    <td><div><input class="form-control" type="text" name="run" id="run" oninput="checkRut(this)" placeholder="11222333-4"/></div></td>   
                </tr>
                <tr> 
                    <td><h4><label for="date_of_birth">FECHA DE NACIMIENTO</label></h4></td>
                    <td><div><input class="form-control" type="date" name="date_of_birth" id="date_of_birth"/></div></td>   
                </tr>
                <tr>
                    <td colspan="2"  style="text-align:center">
                        <div class="btn btn-outline-secondary">
                            <h6><label for="facebook">FACEBOOK</label></h6>
                            <input type="checkbox" name="facebook" id="facebook" value="FACEBOOK">
                        </div>
                        <div class="btn btn-outline-secondary">
                            <h6><label for="instagram">INSTAGRAM</label></h6>
                            <input type="checkbox" name="instagram" id="instagram" value="INSTAGRAM">
                        </div>
                        <div class="btn btn-outline-secondary">
                            <h6><label for="twitter">TWITTER</label></h6>
                            <input type="checkbox" name="twitter" id="twitter" value="TWITTER">
                        </div>
                        <div class="btn btn-outline-secondary">
                            <h6><label for="otras">OTRAS</label></h6>
                            <input type="checkbox" name="otras" id="otras" value="OTRAS">
                        </div>
                    </td>
                 </tr>  
            </table>
            <br>
                    <input class="btn btn-primary" type="submit" name="enviar" id="enviar" value="ENVIAR"  />
        </form>  
      </center>
    
    </body>
</html>
