<%-- 
    Document   : muestradatos
    Created on : Sep 17, 2022, 2:17:40 PM
    Author     : Jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
       
           <%
                String name = (String)request.getAttribute("name");
                String last_name = (String)request.getAttribute("last_name");
                String adresse = (String)request.getAttribute("adresse");
                String gender = (String)request.getAttribute("gender");
                String run = (String)request.getAttribute("run");
                String date_of_birth = (String)request.getAttribute("date_of_birth");
                String instagram = (String)request.getAttribute("instagram");
                String facebook = (String)request.getAttribute("facebook");
                String twitter = (String)request.getAttribute("twitter");
                String otras = (String)request.getAttribute("otras");
                
            %>
            
        <center>
         <h1>DATOS INGRESADOS</h1>
            <table class="table table-striped" style="width: 50%">
                <tr>
                    <td><strong> El NOMBRE INGRESADO ES: </strong></td><td><% out.print(name);%></td>
                </tr>
                <tr>
                    <td><strong> LOS APELLIDOS INGRESADOS SON: </strong></td><td><% out.print(last_name);%></td>
                </tr>
                <tr>
                    <td><strong> SU DIRECCION ES: </strong></td><td><% out.print(adresse);%></td>
                </tr>
                <tr>
                    <td><strong> GENERO: </strong></td><td><% out.print(gender);%></td>
                </tr>
                <tr>
                    <td><strong> El RUT ES: </strong></td><td><% out.print(run);%></td>
                </tr>
                <tr>
                    <td><strong> LA FECHA DE NACIMIENTO ES: </strong></td><td><% out.print(date_of_birth);%></td>
                </tr>
                <tr>
                    <td><strong> REDES SOCIALES: </strong></td><td><% out.print(facebook + " " + instagram + " " + twitter + " " + otras)  ;%></td>
                </tr>
            </table>
         </center>
    </body>
</html>
