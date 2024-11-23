
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
  INDEX `usuario:Id` (`Usuario_ID` ASC) VISIBLE,
  CONSTRAINT `Usuario_ID`
    FOREIGN KEY (`Usuario_ID`)
    REFERENCES `mydb`.`Registro` (`Registro_ID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `usuario_ID`
    FOREIGN KEY (`Usuario_ID`)
    REFERENCES `mydb`.`Reporte` (`Reporte_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

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
  CONSTRAINT `visitante_rol`
    FOREIGN KEY ()
    REFERENCES `mydb`.`Registro` ()
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

