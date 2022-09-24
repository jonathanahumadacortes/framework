/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function ValidarDatos(){
    validarNombre = document.getElementById("name").value;
    validarApellido = document.getElementById("last_name").value;
    validarDireccion = document.getElementById("adresse").value;
    validarGenero = document.getElementById("gender").value;
    validarfechaNacimiento = document.getElementById("date_of_birth").value;
    
    
               if (validarNombre.length === 0) {
               alert("Ingrese Nombre");
               return false;
        }else{
                if (validarApellido.length === 0) {
                alert("Ingrese Apellido");
                return false;

        }else{
               if (validarDireccion.length === 0) {
                alert("Ingrese Direccion");
                return false;
        }else{
               if (validarGenero.length === 0) {
                alert("Ingrese Genero");
                return false;
        }else{
               if (validarfechaNacimiento.length === 0) {
                alert("Ingrese Fecha de nacimiento");
                return false;
                    }
            
                }
            }
        }
    }
    
    return true;
    }
    
    
