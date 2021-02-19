DROP DATABASE IF EXISTS happypet;
CREATE DATABASE happypet;
USE happypet;

DROP TABLE IF EXISTS persona;
CREATE TABLE persona(
	idPersona   INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre		VARCHAR(64),
	apellidoP 	VARCHAR(64),
	apellidoM 	VARCHAR(64),
	genero 		VARCHAR(1),
	calle	 	VARCHAR(64),
    colonia		VARCHAR(64),
    cp			INT,
	telefono 	VARCHAR(15)
);

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
	idUsuario 		INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombreUsuario 	VARCHAR(48),
	contrasena 		VARCHAR(48),
	rol 			VARCHAR(24)/*,
	token 			LONGTEXT*/
);

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente(
	idCliente	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	correo 		VARCHAR(200),
	estatus 	INT,
	idPersona 	INT,
	idUsuario 	INT,
CONSTRAINT  fk_cliente_persona
                FOREIGN KEY (idPersona) REFERENCES Persona(idPersona) ON DELETE CASCADE,
CONSTRAINT  fk_cliente_usuario
                FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario) ON DELETE CASCADE
);

DROP TABLE IF EXISTS mascota;
CREATE TABLE mascota (
    idMascota INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    edad INT,
    raza VARCHAR(30),
    especie VARCHAR(30),
    sexo VARCHAR(6),
    descripcion VARCHAR(300),
    estatus INT NOT NULL DEFAULT 1,
    idCliente INT,
    CONSTRAINT fk_mascota_cliente FOREIGN KEY (idCliente)
        REFERENCES Cliente (idCliente)
        ON DELETE CASCADE
);

CREATE TABLE producto
(
    idProducto      INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre          VARCHAR(45) NOT NULL,
    descripccion 	VARCHAR(45) NOT NULL,
    precio 			INT NOT NULL,
    proveedor 		VARCHAR(45) NOT NULL,
    foto            LONGTEXT
);

CREATE TABLE servicio
(
	idServicio 		INT 		 NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombreServ 		VARCHAR(30)  NOT NULL,
    descripcionServ VARCHAR(400) NOT NULL,
    precio 			DOUBLE	  	 NOT NULL,
    tipo 			TINYINT   	 NOT NULL /*1 - MEDICO, 2 - ESTETICO*/
);

CREATE TABLE citas
(
	idCita 		INT 	  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fechaIni 	DATETIME  NOT NULL,
    fechain 	DATETIME  NOT NULL,
    idMascota 	INT,
    idCliente 	INT,
    idServicio 	INT,
    CONSTRAINT fk_citas_cliente FOREIGN KEY (idCliente)
		REFERENCES cliente (idCliente)
        ON DELETE CASCADE,
	CONSTRAINT fk_citas_mascota FOREIGN KEY (idMascota)
		REFERENCES mascota (idMascota)
        ON DELETE CASCADE,
	CONSTRAINT fk_citas_servicio FOREIGN KEY (idServicio)
		REFERENCES servicio (idServicio)
        ON DELETE CASCADE
);
