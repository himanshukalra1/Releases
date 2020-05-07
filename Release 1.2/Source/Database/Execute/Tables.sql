/*Permission SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Permission')
CREATE TABLE [DBO].[Permission] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Permission_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Permission WITH NOCHECK ADD 
	CONSTRAINT [PK_Permission_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Group2 SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Group2')
CREATE TABLE [DBO].[Group2] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Description] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Group2_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Group2 WITH NOCHECK ADD 
	CONSTRAINT [PK_Group2_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Group2_Permission SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Group2_Permission')
CREATE TABLE [DBO].[Group2_Permission] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[GroupID] Int,
	[PermissionID] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Group2_Permission_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Group2_Permission WITH NOCHECK ADD 
	CONSTRAINT [PK_Group2_Permission_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Group2_Permission_GroupID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Group2_Permission] ADD CONSTRAINT [FK_Group2_Permission_GroupID] FOREIGN KEY
	([GroupID]) REFERENCES [DBO].[Group2] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Group2_Permission_PermissionID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Group2_Permission] ADD CONSTRAINT [FK_Group2_Permission_PermissionID] FOREIGN KEY
	([PermissionID]) REFERENCES [DBO].[Permission] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Department_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Department_Type')
CREATE TABLE [DBO].[Department_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Department_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Department_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Department_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Employee_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Employee_Type')
CREATE TABLE [DBO].[Employee_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Employee_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Employee_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Employee_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*User2 SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'User2')
CREATE TABLE [DBO].[User2] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[FirstName] Varchar(50),
	[LastName] Varchar(50),
	[Password] Varchar(50),
	[Active] BIT,
	[Lock] BIT,
	[ParentID] Int,
	[TypeID] Int,
	[ModifiedDate] DateTime,
	[ContactNo] Varchar(50),
	[Email] Varchar(50),
	[LastLogon] Datetime,
	[ChangePassword] Bit,
	[PasswordChangeDate] Datetime,
	[LastPassword] Varchar(50),
	[DailyWages] Money,
	[DepartmentID] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_User2_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].User2 WITH NOCHECK ADD 
	CONSTRAINT [PK_User2_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_User2_ParentID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[User2] ADD CONSTRAINT [FK_User2_ParentID] FOREIGN KEY
	([ParentID]) REFERENCES [DBO].[User2] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_User2_TypeID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[User2] ADD CONSTRAINT [FK_User2_TypeID] FOREIGN KEY
	([TypeID]) REFERENCES [DBO].[Employee_Type] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_User2_DepartmentID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[User2] ADD CONSTRAINT [FK_User2_DepartmentID] FOREIGN KEY
	([DepartmentID]) REFERENCES [DBO].[Department_Type] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*User2_Group2 SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'User2_Group2')
CREATE TABLE [DBO].[User2_Group2] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[UserID] Int,
	[GroupID] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_User2_Group2_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].User2_Group2 WITH NOCHECK ADD 
	CONSTRAINT [PK_User2_Group2_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_User2_Group2_UserID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[User2_Group2] ADD CONSTRAINT [FK_User2_Group2_UserID] FOREIGN KEY
	([UserID]) REFERENCES [DBO].[User2] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_User2_Group2_GroupID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[User2_Group2] ADD CONSTRAINT [FK_User2_Group2_GroupID] FOREIGN KEY
	([GroupID]) REFERENCES [DBO].[Group2] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Employee_Hierarchy SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Employee_Hierarchy')
CREATE TABLE [DBO].[Employee_Hierarchy] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[SourceID] Int,
	[TargetID] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Employee_Hierarchy_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Employee_Hierarchy WITH NOCHECK ADD 
	CONSTRAINT [PK_Employee_Hierarchy_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*System SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'System')
CREATE TABLE [DBO].[System] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[MaxPasswordAttempt] Int,
	[MaxPasswordDays] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_System_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].System WITH NOCHECK ADD 
	CONSTRAINT [PK_System_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*State_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'State_Type')
CREATE TABLE [DBO].[State_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_State_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].State_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_State_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Case_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Case_Type')
CREATE TABLE [DBO].[Case_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
	[IsCivil] bit,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Case_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Case_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Case_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Record_Status_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Record_Status_Type')
CREATE TABLE [DBO].[Record_Status_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Record_Status_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Record_Status_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Record_Status_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Payment_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Payment_Type')
CREATE TABLE [DBO].[Payment_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Payment_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Payment_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Payment_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Action_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Action_Type')
CREATE TABLE [DBO].[Action_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Action_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Action_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Action_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Contact_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Contact_Type')
CREATE TABLE [DBO].[Contact_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Contact_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Contact_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Contact_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Level_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Level_Type')
CREATE TABLE [DBO].[Level_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Level_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Level_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Level_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Plea_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Plea_Type')
CREATE TABLE [DBO].[Plea_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Plea_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Plea_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Plea_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Disposition_Type SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Disposition_Type')
CREATE TABLE [DBO].[Disposition_Type] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Disposition_Type_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Disposition_Type WITH NOCHECK ADD 
	CONSTRAINT [PK_Disposition_Type_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*County SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'County')
CREATE TABLE [DBO].[County] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[Value] Varchar(50),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_County_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].County WITH NOCHECK ADD 
	CONSTRAINT [PK_County_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Company SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Company')
CREATE TABLE [DBO].[Company] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(500),
	[AddressL1] Varchar(100),
	[AddressL2] Varchar(100),
	[City] Varchar(50),
	[StateID] Int,
	[PostalCode] Varchar(10),
	[ContactPerson] Varchar(100),
	[Phone] Varchar(100),
	[Fax] Varchar(100),
	[Email] Varchar(100),
	[WebSite] Varchar(100),
	[Active] BIT,
	[DTSMapping] xml,
	[CaseTypeMapping] xml,
	[Comments] Varchar(8000),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Company_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Company WITH NOCHECK ADD 
	CONSTRAINT [PK_Company_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Company_StateID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Company] ADD CONSTRAINT [FK_Company_StateID] FOREIGN KEY
	([StateID]) REFERENCES [DBO].[State_Type] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Vendor SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Vendor')
CREATE TABLE [DBO].[Vendor] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(500),
	[AddressL1] Varchar(100),
	[AddressL2] Varchar(100),
	[City] Varchar(50),
	[StateID] Int,
	[PostalCode] Varchar(10),
	[Comments] Varchar(8000),
	[ContactPerson] Varchar(100),
	[Phone] Varchar(20),
	[Fax] Varchar(20),
	[Email] Varchar(100),
	[Active] BIT,
	[GracePeriod] int,
	[PaymentID] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Vendor_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Vendor WITH NOCHECK ADD 
	CONSTRAINT [PK_Vendor_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Vendor_StateID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Vendor] ADD CONSTRAINT [FK_Vendor_StateID] FOREIGN KEY
	([StateID]) REFERENCES [DBO].[State_Type] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Vendor_PaymentID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Vendor] ADD CONSTRAINT [FK_Vendor_PaymentID] FOREIGN KEY
	([PaymentID]) REFERENCES [DBO].[Payment_Type] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Vendor_CountyRate SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Vendor_CountyRate')
CREATE TABLE [DBO].[Vendor_CountyRate] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[VendorID] Int,
	[CountyID] Int,
	[Rate] Money,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Vendor_CountyRate_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Vendor_CountyRate WITH NOCHECK ADD 
	CONSTRAINT [PK_Vendor_CountyRate_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Vendor_CountyRate_VendorID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Vendor_CountyRate] ADD CONSTRAINT [FK_Vendor_CountyRate_VendorID] FOREIGN KEY
	([VendorID]) REFERENCES [DBO].[Vendor] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Vendor_CountyRate_CountyID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Vendor_CountyRate] ADD CONSTRAINT [FK_Vendor_CountyRate_CountyID] FOREIGN KEY
	([CountyID]) REFERENCES [DBO].[County] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Batch SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Batch')
CREATE TABLE [DBO].[Batch] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[Name] Varchar(50),
	[UserID] Int,
	[CreatedDate] Datetime,
	[CompanyID] Int,
	[TotalCount] Int,
	[PassCount] Int,
	[FailCount] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Batch_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Batch WITH NOCHECK ADD 
	CONSTRAINT [PK_Batch_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_UserID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch] ADD CONSTRAINT [FK_Batch_UserID] FOREIGN KEY
	([UserID]) REFERENCES [DBO].[User2] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_CompanyID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch] ADD CONSTRAINT [FK_Batch_CompanyID] FOREIGN KEY
	([CompanyID]) REFERENCES [DBO].[Company] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Batch_Record SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Batch_Record')
CREATE TABLE [DBO].[Batch_Record] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[BatchID] Int,
	[CreatedDate] Datetime,
	[ModifiedDate] Datetime,
	[CompanyID] Int,
	[RecordStatusID] Int,
	[ReceivedDate] Datetime,
	[SentDate] Datetime,
	[PrintCost] Money,
	[NoOfPages] int,
	[CourtFee] Money,
	[CustomerRefNo] Varchar(50),
	[LeadNo] int,
	[CountyID] Int,
	[Name] Varchar(200),
	[DOB] Datetime,
	[ActualCaseType] Varchar(200),
	[CaseTypeID] Int,
	[Years] int,
	[SSN] Varchar(10),
	[ActionID] Int,
	[VendorID] Int,
	[ContactTypeID] Int,
	[ClientRemarks] Varchar(8000),
	[ClientSplRemarks] Varchar(max),
	[RISComments] Varchar(8000),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Batch_Record_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Batch_Record WITH NOCHECK ADD 
	CONSTRAINT [PK_Batch_Record_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_Record_BatchID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch_Record] ADD CONSTRAINT [FK_Batch_Record_BatchID] FOREIGN KEY
	([BatchID]) REFERENCES [DBO].[Batch] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_Record_CompanyID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch_Record] ADD CONSTRAINT [FK_Batch_Record_CompanyID] FOREIGN KEY
	([CompanyID]) REFERENCES [DBO].[Company] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_Record_RecordStatusID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch_Record] ADD CONSTRAINT [FK_Batch_Record_RecordStatusID] FOREIGN KEY
	([RecordStatusID]) REFERENCES [DBO].[Record_Status_Type] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_Record_CountyID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch_Record] ADD CONSTRAINT [FK_Batch_Record_CountyID] FOREIGN KEY
	([CountyID]) REFERENCES [DBO].[County] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_Record_CaseTypeID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch_Record] ADD CONSTRAINT [FK_Batch_Record_CaseTypeID] FOREIGN KEY
	([CaseTypeID]) REFERENCES [DBO].[Case_Type] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_Record_ActionID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch_Record] ADD CONSTRAINT [FK_Batch_Record_ActionID] FOREIGN KEY
	([ActionID]) REFERENCES [DBO].[Action_Type] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_Record_VendorID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch_Record] ADD CONSTRAINT [FK_Batch_Record_VendorID] FOREIGN KEY
	([VendorID]) REFERENCES [DBO].[Vendor] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Batch_Record_ContactTypeID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Batch_Record] ADD CONSTRAINT [FK_Batch_Record_ContactTypeID] FOREIGN KEY
	([ContactTypeID]) REFERENCES [DBO].[Contact_Type] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Record_History SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Record_History')
CREATE TABLE [DBO].[Record_History] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[RecordID] Int,
	[CreatedDate] datetime,
	[RecordStatusID] Int,
	[UserID] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Record_History_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Record_History WITH NOCHECK ADD 
	CONSTRAINT [PK_Record_History_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_History_RecordID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Record_History] ADD CONSTRAINT [FK_Record_History_RecordID] FOREIGN KEY
	([RecordID]) REFERENCES [DBO].[Batch_Record] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_History_RecordStatusID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Record_History] ADD CONSTRAINT [FK_Record_History_RecordStatusID] FOREIGN KEY
	([RecordStatusID]) REFERENCES [DBO].[Record_Status_Type] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_History_UserID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Record_History] ADD CONSTRAINT [FK_Record_History_UserID] FOREIGN KEY
	([UserID]) REFERENCES [DBO].[User2] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Record_Case SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Record_Case')
CREATE TABLE [DBO].[Record_Case] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[RecordID] Int,
	[CreatedDate] Datetime,
	[ModifiedDate] Datetime,
	[NameFound] Varchar(100),
	[DOBFound] Datetime,
	[Alias] Varchar(8000),
	[CaseNumber] Varchar(100),
	[ViolationDate] Datetime,
	[FileDate] Datetime,
	[DispoDate] Datetime,
	[ProbationType] Varchar(100),
	[FileFee] Money,
	[Restitution] Varchar(100),
	[Jail] Varchar(100),
	[JailCredit] Varchar(100),
	[SentencingDetail] Varchar(max),
	[IsCivil] bit,
	[DistrictCourt] Varchar(200),
	[CaseTypeLevel] Varchar(200),
	[CaseName] Varchar(200),
	[Plaintiff] Varchar(200),
	[Defendant] Varchar(200),
	[StatusJudgment] Varchar(200),
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Record_Case_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Record_Case WITH NOCHECK ADD 
	CONSTRAINT [PK_Record_Case_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Record_Case_RecordID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Record_Case] ADD CONSTRAINT [FK_Record_Case_RecordID] FOREIGN KEY
	([RecordID]) REFERENCES [DBO].[Batch_Record] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Case2 SCHEMA */

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Case2')
CREATE TABLE [DBO].[Case2] (
	[ID] [int] IDENTITY (1, 1) NOT NULL,
	[CaseID] Int,
	[CreatedDate] Datetime,
	[ModifiedDate] Datetime,
	[Description] Varchar(8000),
	[LevelTypeID] Int,
	[PleaTypeID] Int,
	[DispositionTypeID] Int,
) ON [PRIMARY]

--PRIMARY KEY
IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[PK_Case2_ID]')
	AND OBJECTPROPERTY(ID, N'IsPrimaryKey') = 1)
ALTER TABLE [DBO].Case2 WITH NOCHECK ADD 
	CONSTRAINT [PK_Case2_ID] PRIMARY KEY CLUSTERED ([ID])  ON [PRIMARY]
GO

--FOREIGN KEY

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Case2_CaseID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Case2] ADD CONSTRAINT [FK_Case2_CaseID] FOREIGN KEY
	([CaseID]) REFERENCES [DBO].[Record_Case] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Case2_LevelTypeID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Case2] ADD CONSTRAINT [FK_Case2_LevelTypeID] FOREIGN KEY
	([LevelTypeID]) REFERENCES [DBO].[Level_Type] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Case2_PleaTypeID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Case2] ADD CONSTRAINT [FK_Case2_PleaTypeID] FOREIGN KEY
	([PleaTypeID]) REFERENCES [DBO].[Plea_Type] ([ID])

IF NOT EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID= OBJECT_ID(N'[DBO].[FK_Case2_DispositionTypeID]')
	AND OBJECTPROPERTY(ID, N'IsForeignKey') = 1)
ALTER TABLE [DBO].[Case2] ADD CONSTRAINT [FK_Case2_DispositionTypeID] FOREIGN KEY
	([DispositionTypeID]) REFERENCES [DBO].[Disposition_Type] ([ID])

/*--------------------------------------------------------------------------------------------------------------------------------------*/

