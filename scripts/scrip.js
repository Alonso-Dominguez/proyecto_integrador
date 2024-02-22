document.getElementById("btn__iniciar-sesion").addEventListener("click", iniciarSesion);
document.getElementById("btn__registrarse").addEventListener("click", register);
document.querySelector(".btn_siguiente").addEventListener("click", siguiente);
document.querySelector(".btn_atras").addEventListener("click", atras);
window.addEventListener("resize", anchoPagina);


//Declaracion de variables

var contenedor_login_register = document.querySelector(".contenedor__login-register");
var formulario_login = document.querySelector(".formulario__login");
var formulario_register = document.querySelector(".formulario__register");
var caja_trasera_login = document.querySelector(".caja__trasera-login");
var caja_trasera_register = document.querySelector(".caja__trasera-register");
var datos_1 = document.querySelector(".datos_1");
var datos_2 = document.querySelector(".datos_2");
var boton = document.querySelector(".boton");
var boton_1 = document.querySelector(".boton_1");
var boton_2 = document.querySelector(".boton_2");

function anchoPagina(){
    if(window.innerWidth > 850){
        caja_trasera_login.style.display = "block";
        caja_trasera_register.style.display = "block";
    }else{
        caja_trasera_register.style.display = "block";
        caja_trasera_register.style.opacity = "1";
        caja_trasera_login.style.display = "none";
        formulario_login.style.display = "block";
        formulario_register.style.display = "none";
        contenedor_login_register.style.left = "0px";
    }
    
}

anchoPagina();


function iniciarSesion(){

    event.preventDefault();

    if(window.innerWidth > 850){
        formulario_register.style.display = "none";
        contenedor_login_register.style.left = "10px";
        formulario_login.style.display = "block";
        caja_trasera_register.style.opacity = "1";
        caja_trasera_login.style.opacity = "0";
    }else{
        formulario_register.style.display = "none";
        contenedor_login_register.style.left = "0px";
        formulario_login.style.display = "block";
        caja_trasera_register.style.display = "block";
        caja_trasera_login.style.display = "none";
    }
    
}

function register(){

    event.preventDefault();

    if(window.innerWidth > 850){
        formulario_register.style.display = "block";
        contenedor_login_register.style.left = "410px";
        formulario_login.style.display = "none";
        caja_trasera_register.style.opacity = "0";
        caja_trasera_login.style.opacity = "1";
    }else{
        formulario_register.style.display = "block";
        contenedor_login_register.style.left = "0px";
        formulario_login.style.display = "none";
        caja_trasera_register.style.display = "none";
        caja_trasera_login.style.display = "block";
        caja_trasera_login.style.opacity = "1";
    }
    
}

function siguiente() {

    event.preventDefault();

    datos_1.style.display = "none";
    datos_2.style.display = "block";
    boton.style.display = "block";
    boton_1.style.display = "block";
    boton_2.style.display = "none";
}

function atras() {

    event.preventDefault();

    datos_2.style.display = "none";
    datos_1.style.display = "block";
    boton.style.display = "none";
    boton_1.style.display = "none";
    boton_2.style.display = "block";
}

document.getElementById("btn__iniciar-sesion").addEventListener("click", iniciarSesion);
document.getElementById("btn__registrarse").addEventListener("click", register);
document.querySelector(".btn_siguiente").addEventListener("click", siguiente);
document.querySelector(".btn_atras").addEventListener("click", atras);
window.addEventListener("resize", anchoPagina);

