-- MySQL Script generated by MySQL Workbench
-- Tue Feb 27 18:59:47 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EMPLEADO
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EMPLEADO
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EMPLEADO` DEFAULT CHARACTER SET utf8 ;
USE `EMPLEADO` ;

-- -----------------------------------------------------
-- Table `EMPLEADO`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADO`.`EMPLEADO` (
  `Codemp` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`Codemp`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Codemp_UNIQUE` ON `EMPLEADO`.`EMPLEADO` (`Codemp` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `EMPLEADO`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADO`.`VEHICULO` (
  `Matricula` INT NOT NULL,
  `Modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`Matricula`))
ENGINE = InnoDB;

CREATE INDEX `fk_VEHICULO_EMPLEADO_idx` ON `EMPLEADO`.`VEHICULO` (`EMPLEADO_Codemp` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `EMPLEADO`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADO`.`VEHICULO` (
  `Matricula` INT NOT NULL,
  `Modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`Matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EMPLEADO`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADO`.`EMPLEADO` (
  `Codemp` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`Codemp`))
ENGINE = InnoDB;

CREATE INDEX `fk_EMPLEADO_VEHICULO1_idx` ON `EMPLEADO`.`EMPLEADO` (`VEHICULO_Matricula` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `EMPLEADO`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADO`.`EMPLEADO` (
  `Codemp` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`Codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EMPLEADO`.`Vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADO`.`Vehiculo` (
  `Matricula` INT NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EMPLEADO`.`CODUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADO`.`CODUCE` (
  `Vehiculo_Matricula` INT NOT NULL,
  `EMPLEADO_Codemp` INT NOT NULL,
  PRIMARY KEY (`EMPLEADO_Codemp`),
  CONSTRAINT `fk_CODUCE_Vehiculo1`
    FOREIGN KEY (`Vehiculo_Matricula`)
    REFERENCES `EMPLEADO`.`Vehiculo` (`Matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CODUCE_EMPLEADO1`
    FOREIGN KEY (`EMPLEADO_Codemp`)
    REFERENCES `EMPLEADO`.`EMPLEADO` (`Codemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_CODUCE_Vehiculo1_idx` ON `EMPLEADO`.`CODUCE` (`Vehiculo_Matricula` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
