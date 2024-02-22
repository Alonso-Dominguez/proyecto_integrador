CREATE TABLE administradores (
    ID_admin INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50), 
    primer_apellido VARCHAR(50),
    segundo_apellido VARCHAR(50),
    correo VARCHAR(100),
    contra VARCHAR(150),
    role ENUM('candidato', 'admin') NOT NULL DEFAULT 'admin'
);

INSERT INTO administradores(nombre, primer_apellido, segundo_apellido, correo, contra) VALUES
('José Alonso', 'Domínguez', 'Castillo', 'jose.alonso.26.02.03@gmail.com', '94f0628b0b5d30f98b628404a8ca9eb10b01a1377840b40afe5da4f0406bf95fed19bf5dcc73c8421c15bc95390aa1143e9af26c75895068892e8c0f3c68a544');

CREATE TABLE candidatos (
    ID_candidato INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50),
    edad INT,
    correo VARCHAR(100),
    telefono VARCHAR(20),
    contra VARCHAR(150),
    aprobada TINYINT(1) NOT NULL DEFAULT 0,
    role ENUM('candidato', 'admin') NOT NULL DEFAULT 'candidato'
);

CREATE TABLE documentos (
    ID_documento INT AUTO_INCREMENT PRIMARY KEY,
    ID_candidato INT,
    comprobante_domicilio VARCHAR(255),
    cartas_recomendacion VARCHAR(255),
    ine VARCHAR(255),
    curp VARCHAR(255), 
    licencia VARCHAR(255),
    FOREIGN KEY (ID_candidato) REFERENCES candidatos(ID_candidato)
);

CREATE TABLE registros (
    ID_registro INT AUTO_INCREMENT PRIMARY KEY,
    ID_candidato INT,
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    nombre_boton VARCHAR(100),
    FOREIGN KEY (ID_candidato) REFERENCES candidatos(ID_candidato)
);

CREATE TABLE respuestas (
    id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
    pregunta VARCHAR(255) NOT NULL,
    respuesta VARCHAR(255) NOT NULL
    );

INSERT INTO `respuestas` (`id_pregunta`, `pregunta`, `respuesta`) VALUES
(1, 1, 'Es la educación que se recibe ampliamente en la calle'),
(2, 2, 'Exceso de velocidad'),
(3, 3, 'Es toda persona que conduce un vehículo automotor'),
(4, 4, 'Es un cable'),
(5, 5, 'Es todo artefacto empleado para almacenar documentos'),
(6, 6, 'Especiales, de arrastre y de transporte público'),
(7, 7, 'Urbanas y suburbanas'),
(8, 8, 'Informativas, restrictivas y preventivas'),
(9, 9, 'True'),
(10, 10, 'True'),
(11, 11, 'True'),
(12, 12, 'True'),
(13, 13, 'Motociclista, automovilista, chofer servicio particular y chofer servicio publico'),
(14, 14, 'Ajuste de espejos laterales'),
(15, 15, '60 Km/hr'),
(16, 16, 'Camellones, andadores y retornos'),
(17, 17, 'Aumentar la velocidad y cruzar la línea férrea tan pronto como le sea posible'),
(18, 18, 'Pasar al ciclista ya que usted tiene el derecho de vía'),
(19, 19, 'Cualquier carril'),
(20, 20, 'Mantener un asiento acolchonado para proteger su cuerpo en el caso de un accidente vehicular'),
(21, 21, 'Sonar la bocina y utilizar los gestos apropiados para indicar su intención de cambiar carril'),
(22, 22, 'Ceder el paso a cualquier automóvil ya circulando en el redondel'),
(23, 23, 'Depende del estado del tiempo y de las condiciones de la carretera'),
(24, 24, 'Usted tiene el derecho de vía'),
(25, 25, 'Que el rebasar es permitido');

CREATE TABLE respuestas2(
    id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
    pregunta VARCHAR(255) NOT NULL,
    respuesta VARCHAR(255) NOT NULL
);

INSERT INTO `respuestas2` (`id_pregunta`, `pregunta`, `respuesta`) VALUES
(1, 1, 'Regular la circulación vial'),
(2, 2, 'Marcas en el pavimento y estructuras'),
(3, 3, 'Orientar a los conductores y peatones'),
(4, 4, 'Blanco'),
(5, 5, 'Líneas transversales'),
(6, 6, 'Para demarcar carriles y calzadas'),
(7, 7, 'Prohibición de adelantar a otros vehículos'),
(8, 8, 'Separación de carriles en el mismo sentido'),
(9, 9, 'Marcar el lugar donde deben cruzar los peatones'),
(10, 10, 'Paso de cebra'),
(11, 11, 'Ayudan a orientar a los conductores y peatones'),
(12, 12, 'Multas para los conductores'),
(13, 13, 'Para garantizar la seguridad vial y evitar infracciones'),
(14, 14, 'Marcar el lugar donde los vehículos deben detenerse'),
(15, 15, 'En diversas vías, incluyendo carriles confinados para transporte público');

CREATE TABLE calificaciones (
    ID_candidato INT,
    nombre_evaluacion VARCHAR(255),
    calificacion INT
);