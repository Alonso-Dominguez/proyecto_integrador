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
