-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';



DROP SCHEMA IF EXISTS `bibliothèque` ;

CREATE SCHEMA IF NOT EXISTS `bibliothèque` DEFAULT CHARACTER SET utf8 ;

USE `bibliothèque` ;



-- -----------------------------------------------------

-- Table `bibliothèque`.`abonnes`

-- -----------------------------------------------------

DROP TABLE IF EXISTS `bibliothèque`.`abonnes` ;



CREATE  TABLE IF NOT EXISTS `bibliothèque`.`abonnes` (

  `idab` INT(11) NOT NULL DEFAULT '0' ,

  `Nom` VARCHAR(45) NOT NULL COMMENT 'nom de jeune fille pour les femmes mariées' ,

  `Prénom` VARCHAR(45) NOT NULL ,

  `tél` INT(11) NULL DEFAULT NULL ,

  `adresse` VARCHAR(45) NULL DEFAULT NULL ,

  PRIMARY KEY (`idab`) )

ENGINE = InnoDB

DEFAULT CHARACTER SET = utf8

COMMENT = 'la liste des abonnés';





-- -----------------------------------------------------

-- Table `bibliothèque`.`auteur`

-- -----------------------------------------------------

DROP TABLE IF EXISTS `bibliothèque`.`auteur` ;



CREATE  TABLE IF NOT EXISTS `bibliothèque`.`auteur` (

  `idAUTEUR` INT(11) NOT NULL ,

  `Nom` VARCHAR(45) NOT NULL ,

  `Prénom` VARCHAR(45) NOT NULL ,

  PRIMARY KEY (`idAUTEUR`) )

ENGINE = InnoDB

DEFAULT CHARACTER SET = utf8

COMMENT = 'contient la liste des auteurs';





-- -----------------------------------------------------

-- Table `bibliothèque`.`editeur`

-- -----------------------------------------------------

DROP TABLE IF EXISTS `bibliothèque`.`editeur` ;



CREATE  TABLE IF NOT EXISTS `bibliothèque`.`editeur` (

  `idediteur` INT(11) NOT NULL AUTO_INCREMENT ,

  `nom` VARCHAR(45) NOT NULL ,

  PRIMARY KEY (`idediteur`) )

ENGINE = InnoDB

AUTO_INCREMENT = 6

DEFAULT CHARACTER SET = utf8

COMMENT = 'contient les éditeurs';





-- -----------------------------------------------------

-- Table `bibliothèque`.`livre`

-- -----------------------------------------------------

DROP TABLE IF EXISTS `bibliothèque`.`livre` ;



CREATE  TABLE IF NOT EXISTS `bibliothèque`.`livre` (

  `idLivre` INT(11) NOT NULL AUTO_INCREMENT ,

  `Titre` VARCHAR(45) NOT NULL ,

  `idEditeur` INT(11) NOT NULL ,

  PRIMARY KEY (`idLivre`) )

ENGINE = InnoDB

AUTO_INCREMENT = 11

DEFAULT CHARACTER SET = utf8

COMMENT = 'contient les titres';





-- -----------------------------------------------------

-- Table `bibliothèque`.`auteurde`

-- -----------------------------------------------------

DROP TABLE IF EXISTS `bibliothèque`.`auteurde` ;



CREATE  TABLE IF NOT EXISTS `bibliothèque`.`auteurde` (

  `idauteur` INT(11) NOT NULL ,

  `idLivre` INT(11) NOT NULL ,

  PRIMARY KEY (`idauteur`, `idLivre`) ,

  INDEX `auteurFk_idx` (`idauteur` ASC) ,

  INDEX `livreFK_idx` (`idLivre` ASC) )

ENGINE = InnoDB

DEFAULT CHARACTER SET = utf8

COMMENT = 'permet les co-auteurs';





-- -----------------------------------------------------

-- Table `bibliothèque`.`exemplaire`

-- -----------------------------------------------------

DROP TABLE IF EXISTS `bibliothèque`.`exemplaire` ;



CREATE  TABLE IF NOT EXISTS `bibliothèque`.`exemplaire` (

  `idexemplaire` INT(11) NOT NULL ,

  `idLivre` INT(11) NULL DEFAULT NULL ,

  PRIMARY KEY (`idexemplaire`) )

ENGINE = InnoDB

DEFAULT CHARACTER SET = utf8;





-- -----------------------------------------------------

-- Table `bibliothèque`.`emprunt`

-- -----------------------------------------------------

DROP TABLE IF EXISTS `bibliothèque`.`emprunt` ;



CREATE  TABLE IF NOT EXISTS `bibliothèque`.`emprunt` (

  `idab` INT(11) NOT NULL DEFAULT '0' ,

  `idex` INT(11) NOT NULL DEFAULT '0' ,

  `dateEmprunt` DATE NULL DEFAULT NULL ,

  `dateRetour` DATE NULL DEFAULT NULL ,

  PRIMARY KEY (`idex`, `idab`) )

ENGINE = InnoDB

DEFAULT CHARACTER SET = utf8;



USE `bibliothèque` ;

