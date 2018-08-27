USE CBSS;
DROP TABLE IF EXISTS `SystemName`;
CREATE TABLE `SystemName` (
	`SysNameID` INT NOT NULL AUTO_INCREMENT,
	`BankID` INT NOT NULL ,
	`BranchID` INT NOT NULL ,
	`SysName` VARCHAR(15) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`SysNameID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;

CREATE INDEX SystemName_Index_BankID ON `SystemName`(`BankID`);
CREATE INDEX SystemName_Index_BranchID ON `SystemName`(`BranchID`);