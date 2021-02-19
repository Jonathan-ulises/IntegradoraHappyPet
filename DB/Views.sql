/*-------------------MASCOTAS-----------------------*/
DROP VIEW IF EXISTS vMascota;
CREATE VIEW vMascota AS
SELECT m.idMascota, m.nombre as nombreM, m.edad, m.raza, m.tipo, m.sexo, m.estatus, c.idCliente, p.idPersona, p.nombre, p.apellidoP, p.apellidoM FROM mascota m 
INNER JOIN cliente c ON c.idCliente = m.idCliente
INNER JOIN persona p ON p.idPersona = c.idPersona;                  

