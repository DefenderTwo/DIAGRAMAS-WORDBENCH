-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EJEMPLOS
-- -----------------------------------------------------
-- EJEMPLOS DE TRANSICIÓN

-- -----------------------------------------------------
-- Schema EJEMPLOS
--
-- EJEMPLOS DE TRANSICIÓN
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EJEMPLOS` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
-- -----------------------------------------------------
-- Schema ejemploscutres
-- -----------------------------------------------------
USE `EJEMPLOS` ;

-- -----------------------------------------------------
-- Table `EJEMPLOS`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS`.`LIBRO` (
  `ISBN` INT NOT NULL,
  `Titulo` VARCHAR(45) NOT NULL,
  `Subtitulo` VARCHAR(45) NULL,
  `Editorial` VARCHAR(45) NOT NULL,
  `Idioma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `ISBN_UNIQUE` ON `EJEMPLOS`.`LIBRO` (`ISBN` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `EJEMPLOS`.`AUTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS`.`AUTOR` (
  `Autor` VARCHAR(30) NOT NULL,
  `LIBRO_ISBN` INT NOT NULL,
  PRIMARY KEY (`Autor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EJEMPLOS`.`EDICIÓN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS`.`EDICIÓN` (
  `Numero` INT NOT NULL,
  `Año` VARCHAR(45) NOT NULL,
  `LIBRO_ISBN` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EJEMPLOS`.`AUTORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS`.`AUTORES` (
  `Juan-Rulfo` INT NOT NULL,
  `Pedro-Paramo` VARCHAR(45) NULL,
  `AUTOREScol` VARCHAR(45) NULL,
  PRIMARY KEY (`Juan-Rulfo`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
