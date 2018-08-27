USE CBSS;
DROP TABLE IF EXISTS `Item`;
CREATE TABLE `Item` (
	`ItemID` INT NOT NULL AUTO_INCREMENT,
	`ItemName` VARCHAR(50) NOT NULL ,
	`ItemType` CHAR(1) NOT NULL,
	`ParentItemID` INT NOT NULL DEFAULT 0,
  `BankID` INT NOT NULL ,
	`BranchID` INT NOT NULL,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ItemID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;

CREATE INDEX Item_Index_BankID ON `Item`(`BankID`);
CREATE INDEX Item_Index_BranchID ON `Item`(`BranchID`);