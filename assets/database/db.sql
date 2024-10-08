
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Reporte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Reporte` (
  `Reporte_ID` INT NOT NULL,
  `Reporte_detalle` VARCHAR(45) NOT NULL,
  `Rerporte_Fecha` VARCHAR(45) NOT NULL,
  `Usuario_ID` VARCHAR(45) NULL,
  PRIMARY KEY (`Reporte_ID`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Inventario` (
  `inventario_ID` INT NOT NULL,
  `inventario_estado` VARCHAR(45) NOT NULL,
  `inventario_observaciones` VARCHAR(45) NOT NULL,
  `registro_ID` VARCHAR(45) NULL,
  `dispositivo_ID` VARCHAR(45) NULL,
  PRIMARY KEY (`inventario_ID`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Registro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Registro` (
  `Registro_ID` INT NOT NULL,
  `Registro_fecha` VARCHAR(45) NOT NULL,
  `Registro_codigo` INT NOT NULL,
  `usuario_ID` VARCHAR(45) NULL,
  `persona_id` VARCHAR(45) NULL,
  `Visitante_rol` VARCHAR(45) NULL,
  PRIMARY KEY (`Registro_ID`),
  CONSTRAINT `registro_ID`
    FOREIGN KEY (`Registro_ID`)
    REFERENCES `mydb`.`Inventario` (`inventario_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `Usuario_ID` INT NOT NULL,
  `usuario_nombre` VARCHAR(45) NOT NULL,
  `usuario_contraseña` VARCHAR(45) NOT NULL,
  `usuario_rol` VARCHAR(45) NOT NULL,
  `Registro_fecha` VARCHAR(45) NULL,
  PRIMARY KEY (`Usuario_ID`),
  INDEX `usuario_id_idx` (`Usuario_ID` ASC),
  CONSTRAINT `fk_usuario_reporte`
    FOREIGN KEY (`Usuario_ID`)
    REFERENCES `mydb`.`Registro` (`Registro_ID`)
    ON DELETE NO ACTION
<<<<<<< HEAD:assets/_docs/trimestre_2/02_normalizacion_modelo_relacional_mr/prueba.sql
    ON UPDATE CASCADE
)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `mydb`.`Regiistro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Registro` (
  `Registro_ID` INT NOT NULL,
  `Registro_fecha` VARCHAR(45) NOT NULL,
  `Registro_codigo` INT NOT NULL,
  `Usuario_ID` INT NULL,
  `Visitante_ID` INT NULL,
  PRIMARY KEY (`Registro_ID`),
  CONSTRAINT `fk_registro_usuario`
    FOREIGN KEY (`Usuario_ID`)
    REFERENCES `mydb`.`Usuario` (`Usuario_ID`)
=======
    ON UPDATE CASCADE,
  CONSTRAINT `usuario_ID`
    FOREIGN KEY (`Usuario_ID`)
    REFERENCES `mydb`.`Reporte` (`Reporte_ID`)
>>>>>>> 740f292c0302c16a9ea5c4d001b3b7ef39000667:assets/database/db.sql
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

<<<<<<< HEAD:assets/_docs/trimestre_2/02_normalizacion_modelo_relacional_mr/prueba.sql


-- -----------------------------------------------------
-- Table `mydb`.`Inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Inventario` (
  `inventario_ID` INT NOT NULL,
  `inventario_estado` VARCHAR(45) NOT NULL,
  `inventario_observaciones` VARCHAR(45) NOT NULL,
  `Registro_ID` INT NULL,
  `Dispositivo_ID` VARCHAR(45) NULL,
  PRIMARY KEY (`inventario_ID`),
  INDEX `Registro_ID_idx` (`Registro_ID` ASC),
  CONSTRAINT `fk_inventario_registro`
    FOREIGN KEY (`Registro_ID`)
    REFERENCES `mydb`.`Registro` (`Registro_ID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
)
ENGINE = InnoDB;



=======
>>>>>>> 740f292c0302c16a9ea5c4d001b3b7ef39000667:assets/database/db.sql
-- -----------------------------------------------------
-- Table `mydb`.`Visitante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Visitante` (
  `Visitante_ID` INT NOT NULL,
  `Visitante_nombre` VARCHAR(45) NOT NULL,
  `Visitante_apellido` VARCHAR(45) NOT NULL,
  `Visitante_cedula` VARCHAR(45) NOT NULL,
  `Visitante_rol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Visitante_ID`),
<<<<<<< HEAD:assets/_docs/trimestre_2/02_normalizacion_modelo_relacional_mr/prueba.sql
  CONSTRAINT `Visitante_ID`
    FOREIGN KEY (`Visitante_ID`)
    REFERENCES `mydb`.`Registro` (`Registro_ID`)
=======
  CONSTRAINT `visitante_rol`
    FOREIGN KEY ()
    REFERENCES `mydb`.`Registro` ()
>>>>>>> 740f292c0302c16a9ea5c4d001b3b7ef39000667:assets/database/db.sql
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Dispositivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dispositivo` (
  `Dispositivo_ID` INT NOT NULL,
  `Dispositivo_marca` VARCHAR(45) NOT NULL,
  `Dispositivo_serie` VARCHAR(45) NOT NULL,
  `Dispositivo_tipo` VARCHAR(45) NOT NULL,
  `Dispositivo_descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Dispositivo_ID`),
  CONSTRAINT `dispositivo_ID`
    FOREIGN KEY (`Dispositivo_ID`)
    REFERENCES `mydb`.`Inventario` (`inventario_ID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

