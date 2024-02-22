function registrarClick(candidato_id, nombre_boton) {
    fetch(`registro.php?candidato_id=${candidato_id}&nombre_boton=${encodeURIComponent(nombre_boton)}`, {
        method: "GET"
    })
    .then(response => {
        // Aquí puedes manejar la respuesta del servidor si es necesario
        console.log(response);
    })
    .catch(error => {
        // Manejo de errores si algo falla en la solicitud
        console.error(error);
    });
}
