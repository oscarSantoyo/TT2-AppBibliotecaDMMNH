-- MySQL Script generated by MySQL Workbench
-- Tue May 20 15:08:04 2014
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema BibliotecaDigital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BibliotecaDigital` ;
USE `BibliotecaDigital` ;

-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_tipo_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_tipo_usuario` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_tipo_usuario` (
  `ID_TIPO_USR` INT(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_TIPO` VARCHAR(20) NOT NULL,
  `DESCRIPCION_TIPO` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_USR`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1
COMMENT = 'Tabla que contiene el catalogo de tipos de Usuario';


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_ocupacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_ocupacion` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_ocupacion` (
  `id_ocupacion` INT(11) NOT NULL AUTO_INCREMENT,
  `desc_ocupacion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_ocupacion`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_razon_visita`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_razon_visita` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_razon_visita` (
  `id_razon_visita` INT(11) NOT NULL,
  `desc_razon_visita` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id_razon_visita`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`menus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`menus` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`menus` (
  `idmenu` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` INT(11) NULL DEFAULT NULL,
  `idpadre` VARCHAR(45) NULL DEFAULT NULL,
  `forma` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idmenu`))
ENGINE = InnoDB
AUTO_INCREMENT = 34
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`seg_registro_visitante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`seg_registro_visitante` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`seg_registro_visitante` (
  `id_registro_visitante` INT(11) NOT NULL AUTO_INCREMENT,
  `genero` VARCHAR(50) NULL DEFAULT NULL,
  `id_rango_edad` INT(11) NULL DEFAULT NULL,
  `id_ocupacion` INT(11) NULL DEFAULT NULL,
  `id_estado_civil` VARCHAR(45) NULL DEFAULT NULL,
  `id_razon_visita` INT(11) NULL DEFAULT NULL,
  `id_frecuencia_asistencia` INT(11) NULL DEFAULT NULL,
  `id_numero_acompanantes` INT(11) NULL DEFAULT NULL,
  `fecha_visita` DATE NULL DEFAULT NULL,
  `hora_visita` TIME NULL DEFAULT NULL,
  PRIMARY KEY (`id_registro_visitante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`usuario` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`usuario` (
  `ID_USR` INT(11) NOT NULL AUTO_INCREMENT,
  `ID_TIPO_USR` INT(11) NOT NULL,
  `PASSWORD` VARCHAR(50) NOT NULL,
  `NOMBRE_USR` VARCHAR(30) NOT NULL,
  `APELLIDO_PATERNO_USR` VARCHAR(30) NOT NULL,
  `APELLIDO_MATERNO_USR` VARCHAR(30) NOT NULL,
  `EMAIL_USR` VARCHAR(50) NOT NULL,
  `ESTATUS_USR` INT(11) NOT NULL,
  PRIMARY KEY (`ID_USR`))
ENGINE = InnoDB
AUTO_INCREMENT = 91
DEFAULT CHARACTER SET = latin1
COMMENT = 'Tabla que contiene la informacion de Usuarios';


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`pieza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`pieza` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`pieza` (
  `id_pieza` INT NOT NULL AUTO_INCREMENT,
  `desc_pieza` TEXT NULL,
  `nombre` VARCHAR(1000) NULL,
  `titulo` VARCHAR(1000) NULL,
  `id_autor` INT NULL,
  `cont_visitas` INT NULL,
  `revision` INT NULL DEFAULT 0,
  `comentarioRevision` VARCHAR(1500) NULL,
  PRIMARY KEY (`id_pieza`))
ENGINE = InnoDB
COMMENT = 'Tabla en la cual se registran las piezas que son los entes principales del sistema.';


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`multimedia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`multimedia` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`multimedia` (
  `id_multimedia` INT NOT NULL AUTO_INCREMENT,
  `id_tipo_multimedia` INT NULL,
  `desc_multimedia` TEXT NULL,
  `nombre` VARCHAR(45) NULL,
  `nombre_archivo` VARCHAR(250) NULL,
  `nombre_original` VARCHAR(250) NULL,
  PRIMARY KEY (`id_multimedia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_tipo_multimedia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_tipo_multimedia` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_tipo_multimedia` (
  `id_tipo_multimedia` INT NOT NULL AUTO_INCREMENT,
  `desc_tipo_multimedia` VARCHAR(45) NULL,
  `extension` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_multimedia`))
ENGINE = InnoDB
COMMENT = 'catalogo donde se registran los tipos de multimedia disponibles.';


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_rango_edad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_rango_edad` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_rango_edad` (
  `id_rango_edad` INT NOT NULL,
  `desc_rango_edad` VARCHAR(45) NULL,
  PRIMARY KEY (`id_rango_edad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_estado_civil`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_estado_civil` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_estado_civil` (
  `id_estado_civil` INT NOT NULL,
  `desc_estado_civil` VARCHAR(45) NULL,
  PRIMARY KEY (`id_estado_civil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_frecuencia_asistencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_frecuencia_asistencia` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_frecuencia_asistencia` (
  `id_frecuencia_asistencia` INT NOT NULL,
  `desc_frecuencia_asistencia` VARCHAR(200) NULL,
  PRIMARY KEY (`id_frecuencia_asistencia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_numero_acompanantes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_numero_acompanantes` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_numero_acompanantes` (
  `id_numero_acompanantes` INT NOT NULL,
  `desc_numero_acompanantes` VARCHAR(200) NULL,
  PRIMARY KEY (`id_numero_acompanantes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`pieza_multimedia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`pieza_multimedia` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`pieza_multimedia` (
  `id_pieza` INT NOT NULL,
  `id_multimedia` INT NOT NULL,
  PRIMARY KEY (`id_pieza`, `id_multimedia`))
ENGINE = InnoDB
COMMENT = 'Tabla relacional entre las piezas y la multimedia.';


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`autor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`autor` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`autor` (
  `id_autor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL,
  `desc_autor` TEXT NULL,
  `fecha_nacimiento` DATE NULL,
  `id_epoca` INT NULL,
  PRIMARY KEY (`id_autor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`cat_epoca`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`cat_epoca` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`cat_epoca` (
  `id_epoca` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NULL,
  `desc_epoca` VARCHAR(45) NULL,
  `anio` VARCHAR(20) NULL,
  PRIMARY KEY (`id_epoca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`bitacora`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`bitacora` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`bitacora` (
  `id_bitacora` INT NOT NULL AUTO_INCREMENT,
  `accion` VARCHAR(250) NULL,
  `afecta` VARCHAR(250) NULL,
  `fecha` DATETIME NULL,
  PRIMARY KEY (`id_bitacora`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`reporte_revision`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`reporte_revision` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`reporte_revision` (
  `id_reporte_revision` INT NOT NULL AUTO_INCREMENT,
  `id_pieza` INT NULL,
  `comentario` VARCHAR(250) NULL,
  `fecha` DATETIME NULL,
  `activa` SMALLINT NULL,
  PRIMARY KEY (`id_reporte_revision`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`sala`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`sala` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`sala` (
  `id_sala` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NULL,
  `desc_sala` VARCHAR(250) NULL,
  `fecha` DATETIME NULL,
  `id_exposicion` INT NULL,
  PRIMARY KEY (`id_sala`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`museo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`museo` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`museo` (
  `id_museo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NULL,
  `desc_museo` VARCHAR(250) NULL,
  `direccion` VARCHAR(250) NULL,
  `email` VARCHAR(250) NULL,
  `telefono` VARCHAR(250) NULL,
  PRIMARY KEY (`id_museo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`exposicion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`exposicion` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`exposicion` (
  `id_exposicion` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NULL,
  `desc_exposicion` VARCHAR(250) NULL,
  `id_museo` INT NULL,
  PRIMARY KEY (`id_exposicion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BibliotecaDigital`.`visita_pieza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BibliotecaDigital`.`visita_pieza` ;

CREATE TABLE IF NOT EXISTS `BibliotecaDigital`.`visita_pieza` (
  `id_visita_pieza` INT NOT NULL,
  `id_pieza` VARCHAR(45) NULL,
  PRIMARY KEY (`id_visita_pieza`))
ENGINE = InnoDB;

USE `BibliotecaDigital` ;

-- -----------------------------------------------------
-- function creaMenuDB
-- -----------------------------------------------------

USE `BibliotecaDigital`;
DROP function IF EXISTS `BibliotecaDigital`.`creaMenuDB`;

DELIMITER $$
USE `BibliotecaDigital`$$
CREATE DEFINER=`root`@`%` FUNCTION `creaMenuDB`() RETURNS varchar(65000) CHARSET latin1
BEGIN    
   DECLARE record_not_found     INTEGER DEFAULT 0;
   DECLARE descripcion0         VARCHAR(100) DEFAULT "";
   DECLARE descripcionhijo      VARCHAR(100) DEFAULT "";
   DECLARE descripcionnieto     VARCHAR(100) DEFAULT "";
   
   DECLARE forma0               VARCHAR(100) DEFAULT "";
   DECLARE formahijo            VARCHAR(100) DEFAULT "";	
   DECLARE formanieto           VARCHAR(100) DEFAULT "";
   
   DECLARE menu                 VARCHAR(65000) DEFAULT ""; 
   DECLARE idmenucur            INT DEFAULT 0;
   DECLARE idmenucurhijo        INT DEFAULT 0;
   DECLARE idmenucurnieto       INT DEFAULT 0; 
   DECLARE tipomenu             INT DEFAULT 0;
   DECLARE tipomenunieto        INT DEFAULT 0;
   -- DECLARE id_tipo_usuario      INT DEFAULT 0;
   DECLARE bandera_padre        INT DEFAULT 0;
   DECLARE bandera_hijo         INT DEFAULT 0;
   
   DECLARE my_cursor     CURSOR FOR SELECT descripcion, forma, idmenu FROM menus WHERE idpadre = 0 ORDER BY descripcion;
   DECLARE cur_hijos     CURSOR FOR SELECT descripcion, forma, idmenu, tipo FROM menus WHERE idpadre = idmenucur ORDER BY descripcion;
   DECLARE cur_nietos    CURSOR FOR SELECT descripcion, forma, idmenu, tipo  FROM menus WHERE idpadre = idmenucurhijo ORDER BY descripcion;
   
   
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET record_not_found = 1;
   
    -- SELECT id_tipo_usr INTO id_tipo_usuario FROM usuario WHERE id_usr = id_usuario;

   SET menu="<menus>";
   -- SET id_tipo_usuario = 1;
   OPEN my_cursor;    
   
   ciclo_padre: LOOP 
   FETCH my_cursor INTO descripcion0, forma0, idmenucur; 
   IF record_not_found THEN
		CLOSE my_cursor;
		LEAVE ciclo_padre; 
   END IF; 

-- codigo agregado por mi 
	IF forma0 IS NULL THEN
		SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'""'," >");
	ELSE
		SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'"',forma0,'"'," >");
	END IF;
	SET bandera_padre = 1;

/*
	CASE id_tipo_usuario
		WHEN 1 THEN	
			IF LCASE(descripcion0) = "administración" OR LCASE(descripcion0) = "supervisión" OR LCASE(descripcion0) = "reportes" THEN
				IF forma0 IS NULL THEN
					SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'""'," >");
				ELSE
					SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'"',forma0,'"'," >");
				END IF;
                SET bandera_padre = 1;
            ELSE
                SET bandera_padre = 0;
			END IF;
		WHEN 2 THEN 
			IF LCASE(descripcion0) = "administración" OR LCASE(descripcion0) = "supervisión" OR LCASE(descripcion0) = "atención" THEN
				IF forma0 IS NULL THEN
					SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'""'," >");
				ELSE
					SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'"',forma0,'"'," >");
				END IF;
				SET bandera_padre = 1;
            ELSE
                SET bandera_padre = 0;
			END IF;
		WHEN 3 THEN 
			IF LCASE(descripcion0) = "administración" OR LCASE(descripcion0) = "supervisión" OR LCASE(descripcion0) = "reportes" THEN
				IF forma0 IS NULL THEN
					SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'""'," >");
				ELSE
					SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'"',forma0,'"'," >");
				END IF;
				SET bandera_padre = 1;
            ELSE
                SET bandera_padre = 0;
			END IF;
		WHEN 4 THEN 
			IF LCASE(descripcion0) = "administración" THEN
				IF forma0 IS NULL THEN
					SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'""'," >");
				ELSE
					SET menu= CONCAT(menu,"<menu0 label=",'"',descripcion0,'"'," forma=",'"',forma0,'"'," >");
				END IF;
                SET bandera_padre = 1;
			ELSE
                SET bandera_padre = 0;
			END IF;
	END CASE;
*/
	OPEN cur_hijos;
        ciclo_hijos: LOOP
         FETCH cur_hijos INTO descripcionhijo, formahijo, idmenucurhijo, tipomenu;
            IF record_not_found THEN 
                CLOSE cur_hijos;
                SET record_not_found = 0;
                LEAVE ciclo_hijos;
            END IF;
            IF tipomenu = 1 THEN
	-- Codigo agregado por mi
	IF formahijo IS NULL THEN
		SET menu= CONCAT(menu,"<menu1 label=",'"',descripcionhijo,'"'," forma=",'""'," >");
	ELSE
		SET menu= CONCAT(menu,"<menu1 label=",'"',descripcionhijo,'"'," forma=",'"',formahijo,'"'," >");
	END IF;
	set bandera_hijo = 1;
/*
				CASE id_tipo_usuario
					WHEN 1 THEN	
						IF LCASE(descripcionhijo) = "catálogos" OR LCASE(descripcionhijo) = "nivel de servicio" OR LCASE(descripcionhijo) = "Productividad" OR
						   LCASE(descripcionhijo) = "tráfico de llamadas" OR LCASE(descripcionhijo) = "utilización" THEN
							IF formahijo IS NULL THEN
								SET menu= CONCAT(menu,"<menu1 label=",'"',descripcionhijo,'"'," forma=",'""'," >");
							ELSE
								SET menu= CONCAT(menu,"<menu1 label=",'"',descripcionhijo,'"'," forma=",'"',formahijo,'"'," >");
							END IF;
							set bandera_hijo = 1;
						else
							set bandera_hijo = 0;
						END IF;
					WHEN 2 THEN	
						SET menu= CONCAT(menu,"");
						SET bandera_hijo = 0;
					WHEN 3 THEN 
						IF LCASE(descripcionhijo) = "catálogos" OR LCASE(descripcionhijo) = "nivel de servicio" OR LCASE(descripcionhijo) = "Productividad" OR
						   LCASE(descripcionhijo) = "tráfico de llamadas" OR LCASE(descripcionhijo) = "utilización" THEN
							IF formahijo IS NULL THEN
								SET menu= CONCAT(menu,"<menu1 label=",'"',descripcionhijo,'"'," forma=",'""'," >");
							ELSE
								SET menu= CONCAT(menu,"<menu1 label=",'"',descripcionhijo,'"'," forma=",'"',formahijo,'"'," >");
							END IF;
							set bandera_hijo = 1;
						else
							set bandera_hijo = 0;
						END IF;
					WHEN 4 THEN 
						SET menu= CONCAT(menu,"");
						SET bandera_hijo = 0;
				END CASE;
*/
            OPEN cur_nietos;
                ciclo_nietos: LOOP
                FETCH cur_nietos INTO descripcionnieto, formanieto, idmenucurnieto, tipomenunieto ;
                IF record_not_found THEN 
                CLOSE cur_nietos;
                SET record_not_found = 0;
                LEAVE ciclo_nietos;
                END IF;
                IF tipomenunieto = 1 THEN
				   
				   
				   SET menu= CONCAT(menu,"");
                ELSE 
		-- Codigo agragado por mi 
	IF formanieto IS NULL THEN
		SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionnieto,'"'," forma=",'""'," />");
	ELSE
		SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionnieto,'"'," forma=",'"',formanieto,'"'," />");
	END IF;
/*
					CASE id_tipo_usuario
						WHEN 1 THEN	
							IF LCASE(descripcionnieto) = "resultados inbound" OR LCASE(descripcionnieto) = "resultados outbound" OR LCASE(descripcionnieto) = "integración crm" OR 
							   LCASE(descripcionnieto) = "tiempos generales de nivel de servicio" OR LCASE(descripcionnieto) = "operación diaria" OR 
							   LCASE(descripcionnieto) = "atención de eventos" OR LCASE(descripcionnieto) = "duración de servicio" OR LCASE(descripcionnieto) = "tráfico de llamadas" OR
							   LCASE(descripcionnieto) = "destino de llamadas" OR LCASE(descripcionnieto) = "nivel de atención por fecha" OR LCASE(descripcionnieto) = "nivel de atención por hora" THEN
								IF formanieto IS NULL THEN
									SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionnieto,'"'," forma=",'""'," />");
								ELSE
									SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionnieto,'"'," forma=",'"',formanieto,'"'," />");
								END IF;
							END IF;
						WHEN 2 THEN	
							SET menu= CONCAT(menu,"");
						WHEN 3 THEN 
							IF LCASE(descripcionnieto) = "resultados inbound" OR LCASE(descripcionnieto) = "resultados outbound" OR LCASE(descripcionnieto) = "integración crm" OR 
							   LCASE(descripcionnieto) = "tiempos generales de nivel de servicio" OR LCASE(descripcionnieto) = "operación diaria" OR 
							   LCASE(descripcionnieto) = "atención de eventos" OR LCASE(descripcionnieto) = "duración de servicio" OR LCASE(descripcionnieto) = "tráfico de llamadas" OR
							   LCASE(descripcionnieto) = "destino de llamadas" OR LCASE(descripcionnieto) = "nivel de atención por fecha" OR LCASE(descripcionnieto) = "nivel de atención por hora" THEN
								IF formanieto IS NULL THEN
									SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionnieto,'"'," forma=",'""'," />");
								ELSE
									SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionnieto,'"'," forma=",'"',formanieto,'"'," />");
								END IF;
							END IF;
						WHEN 4 THEN 
							SET menu= CONCAT(menu,"");
					END CASE;
*/
                END IF;
                END LOOP ciclo_nietos;
				IF bandera_hijo = 1 THEN
                    SET menu = CONCAT(menu,"</menu1>");
				END IF;
            ELSE 
-- codigo agregado por mi 
		IF formahijo IS NULL THEN
			SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'""',"/>");
		ELSE
			SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'"',formahijo,'"',"/>");
		END IF;
/*
				CASE id_tipo_usuario
					WHEN 1 THEN	
						IF LCASE(descripcionhijo) != "configurar sistema" AND LCASE(descripcionhijo) != "atender eventos" THEN
							IF formahijo IS NULL THEN
								SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'""',"/>");
							ELSE
								SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'"',formahijo,'"',"/>");
							END IF;
						END IF;
					WHEN 2 THEN	
						IF LCASE(descripcionhijo) = "cambiar contraseña"  OR LCASE(descripcionhijo) = "enviar mensaje" OR LCASE(descripcionhijo) = "atender eventos" THEN
							IF formahijo IS NULL THEN
								SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'""',"/>");
							ELSE
								SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'"',formahijo,'"',"/>");
							END IF;
						END IF;
					WHEN 3 THEN 
						IF LCASE(descripcionhijo) != "configurar sistema" AND LCASE(descripcionhijo) != "atender eventos" THEN
							IF formahijo IS NULL THEN
								SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'""',"/>");
							ELSE
								SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'"',formahijo,'"',"/>");
							END IF;
						END IF;
					WHEN 4 THEN 
						IF LCASE(descripcionhijo) = "cambiar contraseña"  OR LCASE(descripcionhijo) = "configurar sistema" THEN
							IF formahijo IS NULL THEN
								SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'""',"/>");
							ELSE
								SET menu= CONCAT(menu,"<menuitem label=",'"',descripcionhijo,'"'," forma=",'"',formahijo,'"',"/>");
							END IF;
						END IF;
				END CASE;
*/
            END IF; 
         END LOOP ciclo_hijos;
		IF bandera_padre = 1 THEN
		SET menu = CONCAT(menu,"</menu0>");
    END IF;
   END LOOP ciclo_padre;    
   SET menu = CONCAT(menu,"</menus>");    
   RETURN menu; 
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
