USE CBSS;
DROP TABLE IF EXISTS `NewsContent`;
CREATE TABLE `NewsContent` (
	`NewsContentID` INT NOT NULL AUTO_INCREMENT,
	`NewsID` INT NOT NULL ,
	`NewsContentType` CHAR(1) NOT NULL,
	`NewsContent` VARCHAR(1000) NOT NULL,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`NewsContentID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;

CREATE INDEX NewsContent_Index_NewsID ON `NewsContent`(`NewsID`);