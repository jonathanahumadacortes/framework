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
        <script src="JS/Script.js" type="text/javascript"></script>
        <title>INICIO</title>
    </head>
    <body>
         <%
            String I = (String)request.getAttribute("I");
            if (I == null){
                I = "0";
             }else{
                I = (String)request.getAttribute("I");
             }
        %>
        <center>
            <div><h2 class="text-primary">CALCULO INTERES ANUAL</h2></div>
        <br>
        
        <form  name="form1" action = "servlets" method="POST" onsubmit="return ValidarDatos()">
            
            <table class="table table-primary table-hover"  style="width: 50%">
                <tr>
                    <td><h4><label for="C">CAPITAL</label></h4></td>
                    <td><div><input class="form-control" type="number" name="C" id="C" min="1000" max="10000000"/></div></td>
                </tr>
                <tr>
                    <td><h4><label for="i">INTERES</label></h4></td>
                    <td><div><input class="form-control" type="number" name="i" id="i" min="5" max="100" /></div></td>
                </tr>
                <tr>
                      <td><h4><label for="n">AÑOS</label></h4></td>
                      <td>
                          <select class="form-select" aria-label="Default select example" name="n" id="n" >
                              <option value="">SELECCIONE AÑOS</option>
                              <option value="1">1 AÑO</option>
                              <option value="2">2 AÑO</option>
                              <option value="3">3 AÑO</option>                    
                          </select>
                      </td>
                  </tr>
                
            </table>
            <br>
                    <input class="btn btn-primary" type="submit" name="aplicar" id="aplicar" value="APLICAR"  />
        </form>
            <br>
            <table class="table table-dark table-striped-columns"  style="width: 50%">
                <tr>
                    <td style="width: 50%"><h4><label for="total">TOTAL DE INTERES</label></h4></td>
                    <td align="center" class="table-secondary"><div ><h4>$ <% out.print(I);%></h4></div></td>
                </tr>
            </table>        
      </center>
    
    </body>
</html>
