
function validar() {

    var correo, clave, expresion, verificar;

    verificar = document.getElementById("txtCheck").checked; // RETORNA UN VALOR DE TIPO BOOLEAN
    correo = document.getElementById("txtCorreo").value; //RETORNA VALORES DEL TIPO STRING
    clave = document.getElementById("txtClave").value; // RETORNA VALORES DEL TIPO STRING
    expresion = /\w+@+\w+\.+[a-z]/;  //EXPRESION REGULAR

    if (correo === "") {
        alertify.alert('Mensaje Importante', 'Deberá de ingresar su cuenta de correo!');
        return false;
    } else if (correo.length <= 6) {
        alertify.alert('Mensaje Importante', 'Su cuenta de correo no tiene el tamaño requerido!');
        return false;
    } else if (!expresion.test(correo)) {
        alertify.alert('Mensaje Importante', 'Su cuenta de correo no tiene el formato requerido!');
        return false;
    }
    if (clave === "") {
        alertify.alert('Mensaje Importante', 'Deberá de ingresar su contraseña');
        return false;
    } else if (clave.length != 4) {
        alertify.alert('Mensaje Importante', 'Su contraseña no tiene el tamaño requerido!');
        return false;

    } else if (isNaN(clave)) {
        alertify.alert('Mensaje Importante', 'Deberá de ingresar solo números!');
        return false;
    }
    if (!verificar) {
        alertify.alert('Mensaje Importante', 'Deberá de aceptar los terminos y condiciones!');
        return false;
    }

}


