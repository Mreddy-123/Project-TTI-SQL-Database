-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS mydb;
CREATE SCHEMA `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`department` (
  `Department_ID` VARCHAR(50) NOT NULL ,
  `Department` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Department_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`emp_job_level`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`emp_job_level` (
  `JobLevel_ID` VARCHAR(50) NOT NULL,
  `JobLevel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`JobLevel_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Table `mydb`.`emp_stock_option_level`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`emp_stock_option_level` (
  `StockOptionLevel_ID` VARCHAR(50) NOT NULL,
  `StockOptionLevel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`StockOptionLevel_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_travel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_travel` (
  `BusinessTravel_ID` VARCHAR(50) NOT NULL ,
  `BusinessTravel` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`BusinessTravel_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_env_satisfaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_env_satisfaction` (
  `EnvironmentSatisfaction_ID` VARCHAR(50) NOT NULL,
  `EnvironmentSatisfaction` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`EnvironmentSatisfaction_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_job_involvement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_job_involvement` (
  `JobInvolvement_ID` VARCHAR(50) NOT NULL,
  `JobInvolvement` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`JobInvolvement_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_job_satisfaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_job_satisfaction` (
  `JobSatisfaction_ID` VARCHAR(50) NOT NULL,
  `JobSatisfaction` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`JobSatisfaction_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_performance_rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_performance_rating` (
  `PerformanceRating_ID` VARCHAR(50) NOT NULL,
  `PerformanceRating` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`PerformanceRating_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_relationship_satisfaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_relationship_satisfaction` (
  `RelationshipSatisfaction_ID` VARCHAR(50) NOT NULL,
  `RelationshipSatisfaction` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`RelationshipSatisfaction_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_work_life_balance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_work_life_balance` (
  `WorkLifeBalance_ID` VARCHAR(50) NOT NULL,
  `WorkLifeBalance` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`WorkLifeBalance_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_assessment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_assessment` (
  `EmployeeAssessment_ID` VARCHAR(50) NOT NULL,
  `JobSatisfaction_ID` VARCHAR(50) NOT NULL,
  `JobInvolvement_ID` VARCHAR(50) NOT NULL,
  `EnvironmentSatisfaction_ID` VARCHAR(50) NOT NULL,
  `PerformanceRating_ID` VARCHAR(50) NOT NULL,
  `RelationshipSatisfaction_ID` VARCHAR(50) NOT NULL,
  `WorkLifeBalance_ID` VARCHAR(50) NOT NULL,
  `OverTime` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`EmployeeAssessment_ID`),
  INDEX `JobSatisfaction_ID_idx` (`JobSatisfaction_ID` ASC) VISIBLE,
  INDEX `JobInvolvement_ID_idx` (`JobInvolvement_ID` ASC) VISIBLE,
  INDEX `EnvironmentSatisfaction_ID_idx` (`EnvironmentSatisfaction_ID` ASC) VISIBLE,
  INDEX `PerformanceRating_ID_idx` (`PerformanceRating_ID` ASC) VISIBLE,
  INDEX `RelationshipSatisfaction_ID_idx` (`RelationshipSatisfaction_ID` ASC) VISIBLE,
  INDEX `WorkLifeBalance_ID_idx` (`WorkLifeBalance_ID` ASC) VISIBLE,
  CONSTRAINT `EnvironmentSatisfaction_ID`
    FOREIGN KEY (`EnvironmentSatisfaction_ID`)
    REFERENCES `mydb`.`employee_env_satisfaction` (`EnvironmentSatisfaction_ID`),
  CONSTRAINT `JobInvolvement_ID`
    FOREIGN KEY (`JobInvolvement_ID`)
    REFERENCES `mydb`.`employee_job_involvement` (`JobInvolvement_ID`),
  CONSTRAINT `JobSatisfaction_ID`
    FOREIGN KEY (`JobSatisfaction_ID`)
    REFERENCES `mydb`.`employee_job_satisfaction` (`JobSatisfaction_ID`),
  CONSTRAINT `PerformanceRating_ID`
    FOREIGN KEY (`PerformanceRating_ID`)
    REFERENCES `mydb`.`employee_performance_rating` (`PerformanceRating_ID`),
  CONSTRAINT `RelationshipSatisfaction_ID`
    FOREIGN KEY (`RelationshipSatisfaction_ID`)
    REFERENCES `mydb`.`employee_relationship_satisfaction` (`RelationshipSatisfaction_ID`),
  CONSTRAINT `WorkLifeBalance_ID`
    FOREIGN KEY (`WorkLifeBalance_ID`)
    REFERENCES `mydb`.`employee_work_life_balance` (`WorkLifeBalance_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_education_field`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_education_field` (
  `EmployeeField_ID` VARCHAR(50) NOT NULL ,
  `EducationField` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EmployeeField_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_education`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`employee_education`;
CREATE TABLE `mydb`.`employee_education` (
  `EmployeeEducation_ID` VARCHAR(50) NOT NULL ,
  `Education` VARCHAR(50) NOT NULL,
  `EmployeeField_ID` VARCHAR(50) NOT NULL ,
  PRIMARY KEY (`EmployeeEducation_ID`),
  CONSTRAINT `EmployeeField_ID`
    FOREIGN KEY (`EmployeeField_ID`)
    REFERENCES `mydb`.`employee_education_field` (`EmployeeField_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_experience`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_experience` (
  `EmployeeExperience_ID` VARCHAR(50) NOT NULL,
  `NumCompaniesWorked` INT NOT NULL,
  `TotalWorkingYears` INT NOT NULL,
  `TrainingTimesLastYear` INT NOT NULL,
  `YearsAtCompany` INT NOT NULL,
  `YearsInCurrentRole` INT NOT NULL,
  `YearsSinceLastPromotion` INT NOT NULL,
  `YearsWithCurrManager` INT NOT NULL,
  PRIMARY KEY (`EmployeeExperience_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_finances`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_finances` (
  `EmployeeFinances_ID` VARCHAR(50) NOT NULL,
  `DailyRate` INT NOT NULL,
  `HourlyRate` INT NOT NULL,
  `MonthlyIncome` INT NOT NULL,
  `MonthlyRate` INT NOT NULL,
  `PercentSalaryHike` INT NOT NULL,
  `StockOptionLevel_ID` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`EmployeeFinances_ID`),
  INDEX `StockOptionLevel_ID_idx` (`StockOptionLevel_ID` ASC) VISIBLE,
  CONSTRAINT `StockOptionLevel_ID`
    FOREIGN KEY (`StockOptionLevel_ID`)
    REFERENCES `mydb`.`emp_stock_option_level` (`StockOptionLevel_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee_job`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_job` (
  `JobRole_ID` VARCHAR(50) NOT NULL,
  `JobRole` VARCHAR(45) NOT NULL,
  `JobLevel_ID` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`JobRole_ID`),
  INDEX `JobLevel_ID_idx` (`JobLevel_ID` ASC) VISIBLE,
  CONSTRAINT `JobLevel_ID`
    FOREIGN KEY (`JobLevel_ID`)
    REFERENCES `mydb`.`emp_job_level` (`JobLevel_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`employee`
-- -----------------------------------------------------
DROP TABLE `mydb`.`employee`;
CREATE TABLE `mydb`.`employee` (
  `EmployeeNumber` INT NOT NULL,
  `Age` INT NOT NULL,
  `Attrition` VARCHAR(3) NOT NULL,
  `BusinessTravel_ID` VARCHAR(50) NOT NULL,
  `DistanceFromHome` FLOAT NOT NULL,
  `EmployeeEducation_ID` VARCHAR(50) NOT NULL,
  `Gender` VARCHAR(6) NOT NULL,
  `MaritalStatus` VARCHAR(45) NOT NULL,
  `EmployeeFinances_ID` VARCHAR(50) NOT NULL,
  `Department_ID` VARCHAR(50) NOT NULL,
  `JobRole_ID` VARCHAR(50) NOT NULL,
  `EmployeeExperience_ID` VARCHAR(50) NOT NULL,
  `EmployeeAssessment_ID` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`EmployeeNumber`),
  INDEX `BusinessTravel_ID_idx` (`BusinessTravel_ID` ASC) VISIBLE,
  INDEX `EmployeeEducation_ID_idx` (`EmployeeEducation_ID` ASC) VISIBLE,
  INDEX `Department_ID_idx` (`Department_ID` ASC) VISIBLE,
  INDEX `JobRole_ID_idx` (`JobRole_ID` ASC) VISIBLE,
  INDEX `EmployeeExperience_ID_idx` (`EmployeeExperience_ID` ASC) VISIBLE,
  INDEX `EmployeeFinances_ID_idx` (`EmployeeFinances_ID` ASC) VISIBLE,
  INDEX `EmployeeAssessment_ID_idx` (`EmployeeAssessment_ID` ASC) VISIBLE,
  CONSTRAINT `BusinessTravel_ID`
    FOREIGN KEY (`BusinessTravel_ID`)
    REFERENCES `mydb`.`employee_travel` (`BusinessTravel_ID`),
  CONSTRAINT `Department_ID`
    FOREIGN KEY (`Department_ID`)
    REFERENCES `mydb`.`department` (`Department_ID`),
  CONSTRAINT `EmployeeAssessment_ID`
    FOREIGN KEY (`EmployeeAssessment_ID`)
    REFERENCES `mydb`.`employee_assessment` (`EmployeeAssessment_ID`),
  CONSTRAINT `EmployeeEducation_ID`
    FOREIGN KEY (`EmployeeEducation_ID`)
    REFERENCES `mydb`.`employee_education` (`EmployeeEducation_ID`),
  CONSTRAINT `EmployeeExperience_ID`
    FOREIGN KEY (`EmployeeExperience_ID`)
    REFERENCES `mydb`.`employee_experience` (`EmployeeExperience_ID`),
  CONSTRAINT `EmployeeFinances_ID`
    FOREIGN KEY (`EmployeeFinances_ID`)
    REFERENCES `mydb`.`employee_finances` (`EmployeeFinances_ID`),
  CONSTRAINT `JobRole_ID`
    FOREIGN KEY (`JobRole_ID`)
    REFERENCES `mydb`.`employee_job` (`JobRole_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
