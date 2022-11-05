-- MySQL Workbench Synchronization
-- Generated: 2022-11-05 09:16
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Administrador

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE TABLE IF NOT EXISTS `bd_dessweb_luisvillatoro`.`producto` (
  `id_producto` INT(11) NOT NULL AUTO_INCREMENT,
  `codigo_producto` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `id_marca` INT(11) NOT NULL,
  `imagen` BLOB NOT NULL,
  `fecha_venicimiento` DATE NOT NULL,
  `hora_registro` DATETIME NOT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `fk_producto_marca_idx` (`id_marca` ASC),
  CONSTRAINT `fk_producto_marca`
    FOREIGN KEY (`id_marca`)
    REFERENCES `bd_dessweb_luisvillatoro`.`marca` (`id_marca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bd_dessweb_luisvillatoro`.`marca` (
  `id_marca` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_marca`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
