/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function ValidarDatos(){
    validarCapital = document.getElementById("C").value;
    validarInteres = document.getElementById("i").value;
    validarAnios = document.getElementById("n").value;
    
    
               if (validarCapital.length === 0) {
               alert("Ingrese Capital");
               return false;
        }else{
                if (validarInteres.length === 0) {
                alert("Ingrese Interes");
                return false;

        }else{
               if (validarAnios.length === 0) {
                alert("Ingrese Años");
                return false;
            }
        }
    }
    
    return true;
    }
    
    
