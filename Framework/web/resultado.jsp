<%-- 
    Document   : resultado
    Created on : Sep 23, 2022, 7:51:08 PM
    Author     : Jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESULTADO</title>
    </head>
    <body>
        <%
            int C = (int)request.getAttribute("C");
            int i = (int)request.getAttribute("i");
            int n = (int)request.getAttribute("n");
            int I = (int)request.getAttribute("I");
        %>
            
        <center>
         <h1>RESULTADO</h1>
            <table class="table table-striped" style="width: 20%">
                <tr>
                    <td><strong> CAPITAL INGRESADO: </strong></td><td>$<% out.print(C);%></td>
                </tr>
                <tr>
                    <td><strong> INTERES DE: </strong></td><td><% out.print(i);%>%</td>
                </tr>
                <tr>
                    <td><strong> CANTIDA DE AÑOS DE: </strong></td><td><% out.print(n);%></td>
                </tr>
                <tr>
                    <td><strong> TOTAL DE INTERES CALCULADO: </strong></td><td>$<% out.print(I);%></td>
                </tr>
               
            </table>
         </center>
    </body>
</html>
