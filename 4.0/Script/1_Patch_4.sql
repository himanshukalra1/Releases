IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Interface')
CREATE TABLE [DBO].[Interface] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[CompanyID] int NOT NULL,
	[Name] varchar(50) NOT NULL,
	[URL] varchar(5000) NOT NULL,
	[UserName] varchar(5000) NOT NULL,
	[Password] varchar(500) NOT NULL,
	[UDF1] varchar(5000) NULL,
	[UDF2] varchar(5000) NULL,
	[UDF3] varchar(5000) NULL,
	[UDF4] varchar(5000) NULL,
	[UDF5] varchar(5000) NULL,
	[UDF6] varchar(5000) NULL,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Interface_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Interface WITH NOCHECK ADD 
	CONSTRAINT [PK_Interface_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Interface_CompanyID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].Interface ADD CONSTRAINT [FK_Interface_CompanyID] FOREIGN KEY
	([CompanyID]) REFERENCES [DBO].[Company] ([ID])

GO
	

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('AddressL1') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add AddressL1 VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('City') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add City VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('AddressState') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add AddressState VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('ZipCode') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add ZipCode VARCHAR(2000) NULL
GO


IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('LicenseNumber') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add LicenseNumber VARCHAR(100) NULL
GO


IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('LicenseState') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add LicenseState VARCHAR(100) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('ArrestingAgency') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add ArrestingAgency VARCHAR(100) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('SentencingDate') AND TABLE_NAME IN ('Case2'))
	ALTER TABLE DBO.[Case2] Add SentencingDate DATETIME NULL
GO


IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('Imported') AND TABLE_NAME IN ('Batch'))
	ALTER TABLE DBO.[Batch] Add Imported BIT NOT NULL DEFAULT (0)
GO


IF EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('LeadNo') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] ALTER COLUMN LeadNo VARCHAR(100) NULL
GO


IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('FirstName') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add FirstName VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('MiddleName') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add MiddleName VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('LastName') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add LastName VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('StreetName') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] Add StreetName VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('Address2') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] Add Address2 VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('City') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] Add City VARCHAR(2000) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('StateId') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] Add StateId INT NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('ZipCode') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] Add ZipCode VARCHAR(10) NULL
GO

IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('CaseComments') AND TABLE_NAME IN ('Record_Case'))
	ALTER TABLE DBO.[Record_Case] Add CaseComments VARCHAR(5000) NULL
GO

UPDATE BATCH_RECORD
SET STATEID =58
WHERE STATEID = 14

UPDATE BATCH_RECORD
SET COUNTYID =737
WHERE COUNTYID = 693

DELETE FROM COUNTY
WHERE ID = 693

DELETE FROM STATE_TYPE
WHERE ID = 14
GO
