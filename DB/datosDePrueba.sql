INSERT INTO persona (nombre, apellidoP, apellidoM, genero, calle, colonia, cp, telefono) 
VALUES ('Jonathan', 'Sanchez', 'Parra', 'F', 'Calle falsa 123', 'Av. siempre viva', 37254,'7-80-40-20');

INSERT INTO usuario (nombreUsuario, contrasena, rol/*, token*/) 
VALUES ('jonny2181','18002182','cliente'/*,''*/);

INSERT INTO cliente (correo, estatus, idPersona, idUsuario) VALUES ('jsanchez@gmail.com',1,1,1);

INSERT INTO mascota (nombre, edad, raza, especie, sexo, descripcion, idCliente)
VALUES('José José', 60, 'Pitbull', 'Perro', 'Macho','Le gusta el alcohol y vivir en taxis',1);

-- --
INSERT INTO mascota (nombre, edad, raza, especie, sexo, descripcion, idCliente)
VALUES('José José', 60, 'Pitbull', 'Perro', 'Macho','Le gusta el alcohol y vivir en taxis',1);


CALL insertMascota('Lils', 15, 'pitbull', 'perro', 'hembra', 1);
CALL insertMascota('Nia', 12, 'persa', 'gato', 'hembra', 2);
CALL insertMascota('Ken', 3, 'Akita', 'perro', 'macho', 3);
CALL insertMascota('Furbi', 12, 'angora', 'conejo', 'hembra', 4);
CALL insertMascota('Tree', 9, 'ibérica', 'lagartija', 'macho', 5);
