USE CBSS;
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
	`UserID` INT NOT NULL AUTO_INCREMENT,
	`BankID` INT NOT NULL ,
	`BranchID` INT NOT NULL ,
	`UserName` VARCHAR(15) NOT NULL ,
	`Cellphone` VARCHAR(11) NOT NULL ,
	`Password` VARCHAR(15) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`UserID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;

CREATE INDEX User_Index_BankID ON `User`(`BankID`);
CREATE INDEX User_Index_BranchID ON `User`(`BranchID`);