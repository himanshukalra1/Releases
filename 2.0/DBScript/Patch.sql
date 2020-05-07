
IF EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('Restitution') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] alter column Restitution money NULL
GO
  
IF NOT EXISTS (SELECT * FROM dbo.sysindexes WHERE id = object_id(N'[dbo].[Batch_record]')
               AND name = 'IDX_CaseTypeID')
CREATE INDEX [IDX_CaseTypeID] ON [dbo].[Batch_record]([CaseTypeID]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

IF NOT EXISTS (SELECT * FROM dbo.sysindexes WHERE id = object_id(N'[dbo].[Batch_record]')
               AND name = 'IDX_BatchID')
CREATE INDEX [IDX_BatchID] ON [dbo].[Batch_record]([BatchID]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

IF NOT EXISTS (SELECT * FROM dbo.sysindexes WHERE id = object_id(N'[dbo].[Batch_record]')
               AND name = 'IDX_CompanyID')
CREATE INDEX [IDX_CompanyID] ON [dbo].[Batch_record]([CompanyID]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

IF NOT EXISTS (SELECT * FROM dbo.sysindexes WHERE id = object_id(N'[dbo].[Record_Case]')
               AND name = 'IDX_RecordID')
CREATE INDEX [IDX_RecordID] ON [dbo].[Record_Case]([RecordID]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

IF NOT EXISTS (SELECT * FROM dbo.sysindexes WHERE id = object_id(N'[dbo].[Case2]')
               AND name = 'IDX_CaseID')
CREATE INDEX [IDX_CaseID] ON [dbo].[Case2]([CaseID]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('SpecialFee') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add SpecialFee money NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('AdditionalIdentifier') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] Add AdditionalIdentifier varchar(50) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('ProbationType') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add ProbationType varchar(100) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('FileFee') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add FileFee money NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('JailCredit') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add JailCredit varchar(100) NULL

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('SentencingDetail') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add SentencingDetail varchar(max) NULL


	IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('SpecialFee') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add SpecialFee money NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('AdditionalIdentifier') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] Add AdditionalIdentifier varchar(50) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('ProbationType') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add ProbationType varchar(100) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('FileFee') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add FileFee money NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('JailCredit') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add JailCredit varchar(100) NULL

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('SentencingDetail') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add SentencingDetail varchar(max) NULL

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('Restitution') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add Restitution money NULL
GO

/*Billing SCHEMA */

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'BillingCompany')
	DROP TABLE [DBO].BillingCompany
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'BillingVendor')
	DROP TABLE [DBO].BillingVendor
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Billing')
	DROP TABLE [DBO].Billing
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Billing')
CREATE TABLE [DBO].[Billing] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] varchar(50) NOT NULL,
	[MonthOf] Datetime NOT NULL,
	[Created] Datetime NOT NULL,
	[UserID] int NOT NULL,
	[Data] xml NOT NUll,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Billing_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Billing WITH NOCHECK ADD 
	CONSTRAINT [PK_Billing_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Billing_UserID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].Billing ADD CONSTRAINT [FK_Billing_UserID] FOREIGN KEY
	([UserID]) REFERENCES [DBO].[User2] ([ID])
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*BillingCompany SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'BillingCompany')
CREATE TABLE [DBO].[BillingCompany] (
	[BillingID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_BillingCompany_BillingID_CompanyID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].BillingCompany WITH NOCHECK ADD 
	CONSTRAINT [PK_BillingCompany_BillingID_CompanyID] PRIMARY KEY CLUSTERED ([BillingID],[CompanyID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_BillingCompany_CompanyID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[BillingCompany] ADD CONSTRAINT [FK_BillingCompany_CompanyID] FOREIGN KEY
	([CompanyID]) REFERENCES [DBO].[Company] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_BillingCompany_BillingID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[BillingCompany] ADD CONSTRAINT [FK_BillingCompany_BillingID] FOREIGN KEY
	([BillingID]) REFERENCES [DBO].[Billing] ([ID])

/*BillingVendor SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'BillingVendor')
CREATE TABLE [DBO].[BillingVendor] (
	[BillingID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_BillingVendor_BillingID_VendorID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].BillingVendor WITH NOCHECK ADD 
	CONSTRAINT [PK_BillingVendor_BillingID_VendorID] PRIMARY KEY CLUSTERED ([BillingID],[VendorID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_BillingVendor_VendorID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[BillingVendor] ADD CONSTRAINT [FK_BillingVendor_VendorID] FOREIGN KEY
	([VendorID]) REFERENCES [DBO].[Vendor] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_BillingVendor_BillingID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[BillingVendor] ADD CONSTRAINT [FK_BillingVendor_BillingID] FOREIGN KEY
	([BillingID]) REFERENCES [DBO].[Billing] ([ID])

SET IDENTITY_INSERT Permission ON
GO
IF EXISTS(SELECT ID FROM Permission WHERE ID = 8)
UPDATE Permission SET Name = 'Company Billing', Value = 'CompanyBilling' WHERE ID = 8
ELSE
INSERT INTO Permission(ID, Name, Value) VALUES (8, 'Company Billing', 'CompanyBilling')
GO


/* Data for table Disposition_Type */
SET IDENTITY_INSERT Disposition_Type ON
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 1)
UPDATE Disposition_Type SET Name = 'Warrant', Value = 'Warrant' WHERE ID = 1
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (1, 'Warrant', 'Warrant')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 2)
UPDATE Disposition_Type SET Name = 'Conviction', Value = 'Conviction' WHERE ID = 2
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (2, 'Conviction', 'Conviction')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 3)
UPDATE Disposition_Type SET Name = 'Found Guilty', Value = 'FoundGuilty' WHERE ID = 3
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (3, 'Found Guilty', 'FoundGuilty')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 4)
UPDATE Disposition_Type SET Name = 'Dismissed', Value = 'Dismissed' WHERE ID = 4
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (4, 'Dismissed', 'Dismissed')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 5)
UPDATE Disposition_Type SET Name = 'Deferred Adjudication', Value = 'DeferredAdjudication' WHERE ID = 5
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (5, 'Deferred Adjudication', 'DeferredAdjudication')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 6)
UPDATE Disposition_Type SET Name = 'Diversion', Value = 'Diversion' WHERE ID = 6
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (6, 'Diversion', 'Diversion')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 7)
UPDATE Disposition_Type SET Name = 'Dismissed Per Pc 1203', Value = 'DismissedPerPc1203' WHERE ID = 7
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (7, 'Dismissed Per Pc 1203', 'DismissedPerPc1203')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 8)
UPDATE Disposition_Type SET Name = 'Pending', Value = 'Pending' WHERE ID = 8
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (8, 'Pending', 'Pending')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 9)
UPDATE Disposition_Type SET Name = 'Bail Forfeited', Value = 'Bail Forfeited' WHERE ID = 9
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (9, 'Bail Forfeited', 'Bail Forfeited')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 10)
UPDATE Disposition_Type SET Name = 'Deferred Entry of Judgment', Value = 'DeferredEntryofJudgment' WHERE ID = 10
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (10, 'Deferred Entry of Judgment', 'DeferredEntryofJudgment')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 11)
UPDATE Disposition_Type SET Name = 'Prop 36 Programs', Value = 'Prop36Programs' WHERE ID = 11
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (11, 'Prop 36 Programs', 'Prop36Programs')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 12)
UPDATE Disposition_Type SET Name = 'Others', Value = 'Others' WHERE ID = 12
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (12, 'Others', 'Others')
GO
SET IDENTITY_INSERT Disposition_Type OFF
GO
