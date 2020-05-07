
IF NOT EXISTS (SELECT 'X' FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME IN ('SortOrder') AND TABLE_NAME IN ('Record_Status_Type'))
	ALTER TABLE DBO.[Record_Status_Type] ADD SortOrder Integer
GO


/*Record_Detail_Comments SCHEMA */
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Record_Detail_Comments')
CREATE TABLE [DBO].[Record_Detail_Comments] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[CaseID] Int,
	[CreatedDate] Datetime,
	[UserID] Int,
	[Description] Varchar(8000),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Record_Detail_Comments_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Record_Detail_Comments WITH NOCHECK ADD 
	CONSTRAINT [PK_Record_Detail_Comments_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_Detail_Comments_CaseID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Record_Detail_Comments] ADD CONSTRAINT [FK_Record_Detail_Comments_CaseID] FOREIGN KEY
	([CaseID]) REFERENCES [DBO].[Batch_Record] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_Detail_Comments_UserID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Record_Detail_Comments] ADD CONSTRAINT [FK_Record_Detail_Comments_UserID] FOREIGN KEY
	([UserID]) REFERENCES [DBO].[User2] ([ID])



update Batch_Record 
set CountyID  = 38
where CountyID = 49


DELETE FROM County
WHERE ID = 49


