USE CBSS;
DROP TABLE IF EXISTS `Detail`;
CREATE TABLE `Detail` (
	`DetailID` INT NOT NULL AUTO_INCREMENT,
	`BankID` INT NOT NULL ,
	`BranchID` INT NOT NULL ,
	`ItemID` INT NOT NULL,
	`Sequence` INT NOT NULL,
  `Animation` CHAR(1) NOT NULL DEFAULT '',
  `ContentType` CHAR(1) NOT NULL,
  `Content` VARCHAR(2000) NOT NULL DEFAULT '',
  `TextMapDetail` INT NOT NULL,
  `Year` INT NOT NULL,
  `Quarter` INT NOT NULL,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`DetailID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;

CREATE INDEX Detail_Index_BankID ON `Detail`(`BankID`);
CREATE INDEX Detail_Index_BranchID ON `Detail`(`BranchID`);
CREATE INDEX Detail_Index_ItemID ON `Detail`(`ItemID`);
CREATE INDEX Detail_Index_Year ON `Detail`(`Year`);
CREATE INDEX Detail_Index_Quarter ON `Detail`(`Quarter`);