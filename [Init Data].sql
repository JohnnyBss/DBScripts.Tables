USE CBSS;
INSERT INTO Bank (BankName) VALUES('交通银行');
INSERT INTO Branch (BranchName, BankID) VALUES('渭南分行', 100000);
INSERT INTO SystemName(BankID, BranchID, SysName) VALUES(100000, 200000, '交通银行服务档案后台管理系统');
-- 初始化十大模块
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('环境管理', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('服务功能', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('信息管理', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('大堂管理', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('柜面服务与效率', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('员工管理', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('服务基础管理', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('经营业绩', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('消费者权益保护与社会责任履行', 'M', 0, 100000, 200000);
INSERT INTO Item (ItemName, ItemType, ParentItemID, BankID, BranchID)
VALUES('服务文化', 'M', 0, 100000, 200000);