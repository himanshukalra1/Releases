IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Record_Address')
CREATE TABLE [DBO].[Record_Address] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[RecordID] int NOT NULL,
	[StreetName] varchar(2000) NULL,
	[AddressL2] varchar(2000) NULL,
	[City] varchar(2000) NULL,
	[AddressState] varchar(500) NULL,
	[ZipCode] varchar(20) NULL,
	[CountryCode] varchar(20) NULL,
	[IsCurrent] bit NULL,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Record_Address_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Record_Address WITH NOCHECK ADD 
	CONSTRAINT [PK_Record_Address_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_Address_RecordID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].Record_Address ADD CONSTRAINT [FK_Record_Address_RecordID] FOREIGN KEY
	([RecordID]) REFERENCES [DBO].[Batch_Record] ([ID])

GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Record_Names')
CREATE TABLE [DBO].[Record_Names] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[RecordID] int NOT NULL,
	[FirstName] varchar(2000) NULL,
	[MiddleName] varchar(2000) NULL,
	[LastName] varchar(2000) NULL,
	[IsCurrent] bit NULL,
	[IsCommon] bit NULL,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Record_Names_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Record_Names WITH NOCHECK ADD 
	CONSTRAINT [PK_Record_Names_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_Names_RecordID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].Record_Names ADD CONSTRAINT [FK_Record_Names_RecordID] FOREIGN KEY
	([RecordID]) REFERENCES [DBO].[Batch_Record] ([ID])

GO



IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Record_WorkLocations')
CREATE TABLE [DBO].[Record_WorkLocations] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[RecordID] int NOT NULL,
	[Description] varchar(2000) NULL,
	[AddressL1] varchar(2000) NULL,
	[AddressL2] varchar(2000) NULL,
	[City] varchar(2000) NULL,
	[AddressState] varchar(500) NULL,
	[ZipCode] varchar(20) NULL,
	[CountryCode] varchar(100) NULL,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Record_WorkLocations_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Record_WorkLocations WITH NOCHECK ADD 
	CONSTRAINT [PK_Record_WorkLocations_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_WorkLocations_RecordID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].Record_WorkLocations ADD CONSTRAINT [FK_Record_WorkLocations_RecordID] FOREIGN KEY
	([RecordID]) REFERENCES [DBO].[Batch_Record] ([ID])

GO


IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('Salary') AND TABLE_NAME IN ('Batch_Record'))
	ALTER TABLE DBO.[Batch_Record] Add Salary VARCHAR(2000) NULL
GO