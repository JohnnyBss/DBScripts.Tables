USE CBSS;
DROP TABLE IF EXISTS `Bank`;
CREATE TABLE `Bank` (
	`BankID` INT NOT NULL AUTO_INCREMENT,
	`BankName` VARCHAR(15) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`BankID`)
) ENGINE = INNODB AUTO_INCREMENT=100000 DEFAULT CHAR SET = UTF8;