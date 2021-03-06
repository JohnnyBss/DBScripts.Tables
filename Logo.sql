USE CBSS;
DROP TABLE IF EXISTS `Logo`;
CREATE TABLE `Logo` (
	`LogoID` INT NOT NULL AUTO_INCREMENT,
	`BankID` INT NOT NULL ,
	`BranchID` INT NOT NULL ,
	`LogoUrl` VARCHAR(200) NOT NULL DEFAULT '',
	`Status` CHAR(1) NOT NULL DEFAULT 'A',
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`LogoID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;

CREATE INDEX Logo_Index_BankID ON `Logo`(`BankID`);
CREATE INDEX Logo_Index_BranchID ON `Logo`(`BranchID`);