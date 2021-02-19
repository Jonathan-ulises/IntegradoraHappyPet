/*--------------------PRODUCTO-----------------------------*/
-- INSERTAR --
DELIMITER $$
CREATE PROCEDURE insertProducto( 
    nombre          VARCHAR(45),
    descripccion 	VARCHAR(45),
    precio 			INT,
    proveedor 		VARCHAR(45),
    foto            LONGTEXT                        
    )                               
BEGIN
    #1. Insertamos en producto:
INSERT INTO producto (nombre, descripccion, precio, proveedor, foto)
			VALUES(nombre, descripccion, precio, proveedor, foto);     
END
$$

-- MODIFICAR --
DROP PROCEDURE IF EXISTS updateProducto;
DELIMITER $$
CREATE PROCEDURE updateProducto(
	v_idProducto    INT,
    nombre          VARCHAR(45),
    descripccion 	VARCHAR(45),
    precio 			INT,
    proveedor 		VARCHAR(45),
    foto            LONGTEXT
    )     
BEGIN
	UPDATE producto SET nombre = nombre, descripccion = descripccion, precio = precio, proveedor = proveedor, foto = foto WHERE idProducto = v_idProducto;
END
$$

-- ELIMINAR --


/*----------------------------MASCOTAS---------------------------------*/
 -- INSERTAR --
DROP PROCEDURE IF EXISTS insertMascota;
DELIMITER $$
CREATE PROCEDURE insertMascota( 
    IN _nombre VARCHAR(30),
    IN _edad INT,
    IN _raza VARCHAR(30),
    IN _tipo VARCHAR(30),
    IN _sexo VARCHAR(6),
    IN _idCliente INT
    )                               
BEGIN
    #1. Insertamos en la tabla [persona]:
INSERT INTO mascota (nombre, edad, raza, tipo, sexo, idCliente)
VALUES(_nombre, _edad, _raza, _tipo, _sexo, _idCliente);
END
$$

-- MODIFICAR -- 
DROP PROCEDURE IF EXISTS updateMascota;
DELIMITER $$
CREATE PROCEDURE updateMascota(
	IN _idMascota INT, 
	IN _nombre VARCHAR(30),
    IN _edad INT,
    IN _raza VARCHAR(30),
    IN _tipo VARCHAR(30),
    IN _sexo VARCHAR(6),
    IN _idCliente INT
)
BEGIN
    UPDATE mascota
    SET idMascota = _idMascota, nombre = _nombre, edad = _edad, raza = _raza, tipo = _tipo, sexo = _sexo, idCliente = _idCliente, estatus = 1		
    WHERE idMascota = _idMascota;
END
$$

DROP PROCEDURE IF EXISTS reactMascotaE;
DELIMITER $$
CREATE PROCEDURE reactMascotaE(
	IN _idMascota INT
    )
BEGIN
    UPDATE mascota
    SET  estatus = 1
    WHERE idMascota = _idMascota;
END 
$$

-- ELIMINAR --
DROP PROCEDURE IF EXISTS deleteMascota;
DELIMITER $$
CREATE PROCEDURE deleteMascota(
	IN _idMascota INT
)
BEGIN
    UPDATE mascota
    SET estatus = 0 
    WHERE idMascota = _idMascota;
    
END
$$ 


DROP PROCEDURE IF EXISTS reactMascota;
DELIMITER $$
CREATE PROCEDURE reactMascota(
	IN _idMascota INT
)
BEGIN 
	UPDATE mascota 
    SET estatus = 1 
    WHERE idMascota = _idMascota;
END 
$$ 


