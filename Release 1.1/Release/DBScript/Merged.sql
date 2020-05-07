SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Batch]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Batch]
GO
CREATE PROCEDURE Delete_Batch
/**********************************************************
Name		: Delete_Batch
Table		: Batch
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Batch WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Batch
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Batch]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Batch_Record]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Batch_Record]
GO
CREATE PROCEDURE Delete_Batch_Record
/**********************************************************
Name		: Delete_Batch_Record
Table		: Batch_Record
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Batch_Record WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Batch_Record
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Batch_Record]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Case2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Case2]
GO
CREATE PROCEDURE Delete_Case2
/**********************************************************
Name		: Delete_Case2
Table		: Case2
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Case2 WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Case2
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Case2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Company]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Company]
GO
CREATE PROCEDURE Delete_Company
/**********************************************************
Name		: Delete_Company
Table		: Company
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Company WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Company
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Company]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Group2]
GO
CREATE PROCEDURE Delete_Group2
/**********************************************************
Name                   :Delete_Group2
Table                   :Group2
Updates               :
**********************************************************/
(
@ID[INT] = NULL
)
AS
SET NOCOUNT ON
IF ISNULL( @ID,0)>0
BEGIN
EXEC Delete_Group2_Permission @ID
DELETE FROM Group2 WHERE ID = @ID
END
ELSE
BEGIN
DELETE FROM Group2
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Group2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Group2_Permission]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Group2_Permission]
GO
CREATE PROCEDURE Delete_Group2_Permission
/**********************************************************
Name		: Delete_Group2_Permission
Table		: Group2_Permission
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Group2_Permission WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Group2_Permission
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Group2_Permission]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Record_Case]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Record_Case]
GO
CREATE PROCEDURE Delete_Record_Case
/**********************************************************
Name		: Delete_Record_Case
Table		: Record_Case
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Record_Case WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Record_Case
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Record_Case]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Record_History]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Record_History]
GO
CREATE PROCEDURE Delete_Record_History
/**********************************************************
Name		: Delete_Record_History
Table		: Record_History
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Record_History WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Record_History
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Record_History]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_User2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_User2]
GO
CREATE PROCEDURE Delete_User2
/**********************************************************
Name                   :Delete_User2
Table                   :WST_USER
Updates               :
**********************************************************/
(
@ID[INT] = NULL
)
AS
SET NOCOUNT ON
IF ISNULL( @ID,0)>0
BEGIN
EXEC Delete_User2_Group2 @ID
DELETE FROM User2 WHERE ID = @ID
END
ELSE
BEGIN
DELETE FROM User2
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_User2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_User2_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_User2_Group2]
GO
CREATE PROCEDURE Delete_User2_Group2
/**********************************************************
Name		: Delete_User2_Group2
Table		: User2_Group2
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM User2_Group2 WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM User2_Group2
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_User2_Group2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Vendor]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Vendor]
GO
CREATE PROCEDURE Delete_Vendor
/**********************************************************
Name		: Delete_Vendor
Table		: Vendor
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Vendor WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Vendor
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Vendor]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Vendor_CountyRate]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Vendor_CountyRate]
GO
CREATE PROCEDURE Delete_Vendor_CountyRate
/**********************************************************
Name		: Delete_Vendor_CountyRate
Table		: Vendor_CountyRate
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Vendor_CountyRate WHERE ID = @ID
END
ELSE
BEGIN
	DELETE FROM Vendor_CountyRate
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Vendor_CountyRate]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Action_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Action_Type]
GO
CREATE PROCEDURE Get_Action_Type
/**********************************************************
Name		: Get_Action_Type
Table		: Action_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Action_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Action_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Action_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Batch]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Batch]
GO
CREATE PROCEDURE Get_Batch
/**********************************************************
Name		: Get_Batch
Table		: Batch
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	UserID,
	CreatedDate,
	CompanyID,
	TotalCount,
	PassCount,
	FailCount

	FROM [Batch] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	UserID,
	CreatedDate,
	CompanyID,
	TotalCount,
	PassCount,
	FailCount

	FROM [Batch] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Batch]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_BatchPipeline]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_BatchPipeline]
GO
CREATE PROCEDURE Get_BatchPipeline
/**********************************************************
Name                   :Get_BatchPipeline
Table                  :Batch
Updates               :
**********************************************************/
(
  @PageNumber  INT     = 0   
  ,@NumOfRows  INT     = 10
  ,@SortField   VARCHAR(50)  = 'B.ID DESC'              
 , @SearchData	VARCHAR(2000) = NULL    
)
AS
SET NOCOUNT ON
DECLARE @SqlString nvarchar(max)
    Declare @UpperBand int
    Declare @LowerBand int        
    
    SET @LowerBand  = (@PageNumber) * @NumOfRows
    SET @UpperBand  = ((@PageNumber+1) * @NumOfRows) + 1    

    BEGIN

	SET @SqlString='Create table  #BATCH(RowNumber INT IDENTITY, ID INT, Name VARCHAR(200),CreatedDate Datetime, PassCount int,UserName varchar(200), CompanyName varchar(200))

			INSERT INTO #BATCH
			SELECT 
				B.ID,
				B.Name,
				B.CreatedDate, 
				B.PassCount,
				U.Name AS UserName,
	            C.Name AS CompanyName
				FROM [dbo].[Batch] B
				LEFT OUTER JOIN User2 U ON U.ID = UserID
				LEFT OUTER JOIN Company C ON C.ID = CompanyID ' 
			
				IF (ISNULL(@SearchData,'')<>'')
					SET @SqlString	=  @SqlString + 'WHERE ' + @SearchData    
			
				SET @SqlString	=  @SqlString + 'ORDER BY ' + @SortField   + ' 
		
		SELECT 
				ID,
				Name,
				CreatedDate, 
				PassCount,
				UserName,
				CompanyName
				FROM #BATCH 
				WHERE 
            RowNumber > ' + CONVERT(VARCHAR,@LowerBand) + 
            '  AND RowNumber < ' + CONVERT(VARCHAR, @UpperBand)
            
            
  SET @SqlString =@SqlString + ' SELECT COUNT(*)FROM #BATCH 
								drop table #BATCH'
   
            print @SqlString
	EXEC sp_executesql @SqlString
	
	            


    END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_BatchPipeline]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Batch_Record]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Batch_Record]
GO
CREATE PROCEDURE Get_Batch_Record
/**********************************************************
Name		: Get_Batch_Record
Table		: Batch_Record
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	BatchID,
	CreatedDate,
	ModifiedDate,
	CompanyID,
	RecordStatusID,
	ReceivedDate,
	SentDate,
	PrintCost,
	NoOfPages,
	CourtFee,
	CustomerRefNo,
	LeadNo,
	County,
	Name,
	DOB,
	ActualCaseType,
	CaseTypeID,
	Years,
	SSN,
	ActionID,
	VendorID,
	ContactTypeID,
	ClientRemarks,
	ClientSplRemarks,
	RISComments

	FROM [Batch_Record] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	BatchID,
	CreatedDate,
	ModifiedDate,
	CompanyID,
	RecordStatusID,
	ReceivedDate,
	SentDate,
	PrintCost,
	NoOfPages,
	CourtFee,
	CustomerRefNo,
	LeadNo,
	County,
	Name,
	DOB,
	ActualCaseType,
	CaseTypeID,
	Years,
	SSN,
	ActionID,
	VendorID,
	ContactTypeID,
	ClientRemarks,
	ClientSplRemarks,
	RISComments

	FROM [Batch_Record] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Batch_Record]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Case2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Case2]
GO
CREATE PROCEDURE Get_Case2
/**********************************************************
Name		: Get_Case2
Table		: Case2
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@CaseID[INT]= NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	CaseID,
	CreatedDate,
	ModifiedDate,
	Description,
	LevelTypeID,
	PleaTypeID,
	DispositionTypeID

	FROM [Case2] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE IF ISNULL(@CaseID, 0)>0
BEGIN
	SELECT
	ID,
	CaseID,
	CreatedDate,
	ModifiedDate,
	Description,
	LevelTypeID,
	PleaTypeID,
	DispositionTypeID

	FROM [Case2] WITH(NOLOCK)
	WHERE CaseID= @CaseID
END
ELSE
BEGIN
	SELECT
	ID,
	CaseID,
	CreatedDate,
	ModifiedDate,
	Description,
	LevelTypeID,
	PleaTypeID,
	DispositionTypeID

	FROM [Case2] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Case2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Case2_Report]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Case2_Report]
GO
CREATE PROCEDURE Get_Case2_Report
/**********************************************************
Name		: Get_Case2_Report
Table		: Case2
Updates		:
**********************************************************/
(
	@CaseID[INT] 
)
AS
SET NOCOUNT ON

	SELECT
	CaseID,
	Description,
	L.Name AS  LevelTypeName,
	P.Name	AS PleaTypeName,
	D.Name AS DispositionTypeName

	FROM [Case2] C2 WITH(NOLOCK)
	LEFT OUTER JOIN Level_Type L ON L.ID = C2.LevelTypeID
	LEFT OUTER JOIN Plea_Type P ON P.ID = C2.PleaTypeID
	LEFT OUTER JOIN Disposition_Type D ON D.ID = C2.DispositionTypeID
	WHERE C2.CaseID = @CaseID
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Case2_Report]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Case_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Case_Type]
GO
CREATE PROCEDURE Get_Case_Type
/**********************************************************
Name		: Get_Case_Type
Table		: Case_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Case_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Case_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Case_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Company]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Company]
GO
CREATE PROCEDURE Get_Company
/**********************************************************
Name		: Get_Company
Table		: Company
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	ContactPerson,
	Phone,
	Fax,
	Email,
	WebSite,
	Active,
	DTSMapping,
	CaseTypeMapping,
	Comments

	FROM [Company] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	ContactPerson,
	Phone,
	Fax,
	Email,
	WebSite,
	Active,
	DTSMapping,
	CaseTypeMapping,
	Comments

	FROM [Company] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Company]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Contact_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Contact_Type]
GO
CREATE PROCEDURE Get_Contact_Type
/**********************************************************
Name		: Get_Contact_Type
Table		: Contact_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Contact_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Contact_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Contact_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Department_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Department_Type]
GO
CREATE PROCEDURE Get_Department_Type
/**********************************************************
Name		: Get_Department_Type
Table		: Department_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Department_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Department_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Department_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Disposition_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Disposition_Type]
GO
CREATE PROCEDURE Get_Disposition_Type
/**********************************************************
Name		: Get_Disposition_Type
Table		: Disposition_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Disposition_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Disposition_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Disposition_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Employee_Hierarchy]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Employee_Hierarchy]
GO
CREATE PROCEDURE Get_Employee_Hierarchy
/**********************************************************
Name		: Get_Employee_Hierarchy
Table		: Employee_Hierarchy
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	SourceID,
	TargetID

	FROM [Employee_Hierarchy] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	SourceID,
	TargetID

	FROM [Employee_Hierarchy] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Employee_Hierarchy]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Employee_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Employee_Type]
GO
CREATE PROCEDURE Get_Employee_Type
/**********************************************************
Name                   :Get_Employee_Type
Table                   :Employee_Type
Updates               :
**********************************************************/
(
@ID[INT]
)
AS
SET NOCOUNT ON

SELECT
	ID,
	Name,
	Value

	FROM [Employee_Type] WITH(NOLOCK)

/*DECLARE @USER_EMT_ID INT
SELECT @USER_EMT_ID = USER_EMT_ID FROM WST_USER WHERE USER_ID = @USER_ID

IF ISNULL( @EMT_ID,0)>0
BEGIN
	
SELECT
	EMT_ID,
	EMT_NAME,
	EMT_VALUE

	FROM [WST_EMPLOYEE_TYPE] WITH(NOLOCK)
	INNER JOIN WST_EMT_HIERARCHY ON EMTHY_DEST_EMT_ID = EMT_ID
	WHERE EMT_ID= @EMT_ID AND EMTHY_SRC_EMT_ID = @USER_EMT_ID
END
ELSE
BEGIN

SELECT
	EMT_ID,
	EMT_NAME,
	EMT_VALUE

	FROM [WST_EMPLOYEE_TYPE] WITH(NOLOCK)
	LEFT OUTER JOIN WST_EMT_HIERARCHY ON EMTHY_DEST_EMT_ID = EMT_ID
	WHERE EMTHY_SRC_EMT_ID = @USER_EMT_ID OR (ISNULL(@IS_CREATE,0) =0 AND EMT_ID = @USER_EMT_ID)
END*/

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Employee_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Group2]
GO
CREATE PROCEDURE Get_Group2
/**********************************************************
Name		: Get_Group2
Table		: Group2
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Description

	FROM [Group2] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Description

	FROM [Group2] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Group2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Group2_Permission]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Group2_Permission]
GO
CREATE PROCEDURE Get_Group2_Permission
/**********************************************************
Name		: Get_Group2_Permission
Table		: Group2_Permission
Updates		:
**********************************************************/
(
	@GroupID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@GroupID, 0)>0
BEGIN
	SELECT
	ID,
	GroupID,
	PermissionID

	FROM [Group2_Permission] WITH(NOLOCK)
	WHERE GroupID= @GroupID
END
ELSE
BEGIN
	SELECT
	ID,
	GroupID,
	PermissionID

	FROM [Group2_Permission] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Group2_Permission]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Level_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Level_Type]
GO
CREATE PROCEDURE Get_Level_Type
/**********************************************************
Name		: Get_Level_Type
Table		: Level_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Level_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Level_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Level_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Payment_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Payment_Type]
GO
CREATE PROCEDURE Get_Payment_Type
/**********************************************************
Name		: Get_Payment_Type
Table		: Payment_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Payment_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Payment_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Payment_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Permission]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Permission]
GO
CREATE PROCEDURE Get_Permission
/**********************************************************
Name		: Get_Permission
Table		: Permission
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Permission] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Permission] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Permission]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Plea_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Plea_Type]
GO
CREATE PROCEDURE Get_Plea_Type
/**********************************************************
Name		: Get_Plea_Type
Table		: Plea_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Plea_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Plea_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Plea_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_RecordPipeline]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_RecordPipeline]
GO
CREATE PROCEDURE Get_RecordPipeline
/**********************************************************
Name                   :Get_RecordPipeline
Table                  :BatchRecord
Updates               :
**********************************************************/
(
  @PageNumber  INT     = 0   
  ,@NumOfRows  INT     = 10
  ,@SortField   VARCHAR(50)  = 'B.ID DESC'         
 , @SearchData	VARCHAR(2000) = ' 1 =1 '    
)
AS
SET NOCOUNT ON
DECLARE @SqlString nvarchar(max)
    Declare @UpperBand int
    Declare @LowerBand int        
    
    SET @LowerBand  = (@PageNumber) * @NumOfRows
    SET @UpperBand  = ((@PageNumber+1) * @NumOfRows) + 1    

    BEGIN

	   
SET @SqlString= 'Create table  #BatchRecord(RowNumber INT IDENTITY, ID INT, CompanyName VARCHAR(200),ReceivedDate Datetime, CustomerRefNo VARCHAR(200),RecordStatusName varchar(200), County varchar(200),Name VARCHAR(200),DOB DATETIME,CaseTypeName VARCHAR(200),Years INT,ActionTypeName VARCHAR(200),ClientRemarks VARCHAR(8000),ClientSplRemarks VARCHAR(MAX), CaseCount INT)
			INSERT INTO #BatchRecord
			SELECT 
				B.ID,
				C.Name AS CompanyName,
				B.ReceivedDate ,
				B.CustomerRefNo,
				RS.Name AS RecordStatusName,
				B.County,
				B.Name,
				B.DOB,
				CS.Name AS CaseTypeName,
				B.Years,
				A.Name AS ActionTypeName,
				B.ClientRemarks,
	            B.ClientSplRemarks,
	            COUNT(RC.RecordID) AS CaseCount
	            FROM [dbo].Batch_Record B
				LEFT OUTER JOIN Company C ON C.ID = CompanyID 
				LEFT OUTER JOIN Record_Status_Type RS ON RS.ID = RecordStatusID 
				LEFT OUTER JOIN Case_Type CS ON CS.ID = CaseTypeID 
				LEFT OUTER JOIN Action_Type A ON A.ID = ActionID
				LEFT OUTER JOIN Record_Case RC ON RC.RecordID = B.ID ' 

SET @SqlString	=  @SqlString + ' WHERE ' + @SearchData    
SET @SqlString	=  @SqlString + ' GROUP BY B.ID,C.Name, B.ReceivedDate,B.CustomerRefNo,RS.Name,B.County,B.Name,B.DOB,CS.Name,B.Years,A.Name,B.ClientRemarks,B.ClientSplRemarks'
SET @SqlString	=  @SqlString + ' ORDER BY ' + @SortField   

SET @SqlString	=  @SqlString + ' SELECT * FROM #BatchRecord 
								WHERE  RowNumber > ' + CONVERT(VARCHAR,@LowerBand) + ' AND RowNumber < ' + CONVERT(VARCHAR, @UpperBand)

SET @SqlString =@SqlString + ' SELECT COUNT(*)FROM #BatchRecord 
								DROP TABLE #BatchRecord'
   
    print @SqlString
	EXEC sp_executesql @SqlString
	
	            


    END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_RecordPipeline]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Case]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Case]
GO
CREATE PROCEDURE Get_Record_Case
/**********************************************************
Name		: Get_Record_Case
Table		: Record_Case
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@RecordID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	RecordID,
	CreatedDate,
	ModifiedDate,
	NameFound,
	DOBFound,
	Alias,
	CaseNumber,
	ViolationDate,
	FileDate,
	DispoDate,
	ProbationType,
	FileFee,
	Restitution,
	Jail,
	JailCredit,
	SentencingDetail,
	DistrictCourt,
	CaseTypeLevel,
	CaseName,
	Plaintiff,
	Defendant,
	StatusJudgment

	FROM [Record_Case] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	R.ID,
	R.RecordID,
	R.CreatedDate,
	R.ModifiedDate,
	R.NameFound,
	R.DOBFound,
	R.Alias,
	R.CaseNumber,
	R.ViolationDate,
	R.FileDate,
	R.DispoDate,
	R.ProbationType,
	R.FileFee,
	R.Restitution,
	R.Jail,
	R.JailCredit,
	R.SentencingDetail,
	R.DistrictCourt,
	R.CaseTypeLevel,
	R.CaseName,
	R.Plaintiff,
	R.Defendant,
	R.StatusJudgment,
	COUNT(C2.ID) AS CaseCount
	FROM [Record_Case] R WITH(NOLOCK)
	LEFT OUTER JOIN [Case2] C2 on R.ID = C2.CaseID  
	WHERE RecordID =@RecordID
	GROUP BY R.ID, RecordID,R.CreatedDate,R.ModifiedDate,R.NameFound,R.DOBFound,R.Alias,R.CaseNumber,R.ViolationDate,R.FileDate,R.DispoDate,R.ProbationType,R.FileFee,R.Restitution,R.Jail,R.JailCredit,R.SentencingDetail,	R.DistrictCourt, R.CaseTypeLevel, R.CaseName,	R.Plaintiff,	R.Defendant,	R.StatusJudgment
	
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Case]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Case_Report]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Case_Report]
GO
CREATE PROCEDURE Get_Record_Case_Report
/**********************************************************
Name		: Get_Record_Case_Report
Table		: Record_Case
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@RecordID[INT] = NULL
	
)
AS
SET NOCOUNT ON

	SELECT
	RC.ID,
	RC.RecordID,
	RC.CreatedDate,
	RC.ModifiedDate,
	RC.NameFound,
	RC.DOBFound,
	RC.Alias,
	RC.CaseNumber,
	RC.ViolationDate,
	RC.FileDate,
	RC.DispoDate,
	RC.ProbationType,
	RC.FileFee,
	RC.Restitution,
	RC.Jail,
	RC.JailCredit,
	RC.SentencingDetail,
	CO.Name AS CompanyName,
	BR.CustomerRefNo,
	BR.County 

	FROM [Record_Case] RC WITH(NOLOCK)
	LEFT OUTER JOIN Batch_Record BR ON RecordID = BR.ID
	LEFT OUTER JOIN Company CO ON CO.ID = BR.CompanyID 
	WHERE (@ID IS NULL OR RC.ID= @ID) AND (@RecordID IS NULL OR @RecordID = RC.RecordID)

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Case_Report]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_History]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_History]
GO
CREATE PROCEDURE Get_Record_History
/**********************************************************
Name		: Get_Record_History
Table		: Record_History
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@RecordID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	RecordID,
	CreatedDate,
	RecordStatusID,
	UserID

	FROM [Record_History] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE IF ISNULL(@RecordID, 0)>0
BEGIN
	SELECT
	rh.ID,
	RecordID,
	CreatedDate,
	RecordStatusID,
	UserID,
	rst.Name As 'Status',
	u.Name As 'By'
	FROM [Record_History] rh WITH(NOLOCK)
	LEFT OUTER JOIN Record_Status_Type rst WITH (NOLOCK) ON rst.ID = RecordStatusID
	LEFT OUTER JOIN User2 u WITH (NOLOCK) ON u.ID = UserID
	WHERE RecordID= @RecordID
END
ELSE
BEGIN
	SELECT
	ID,
	RecordID,
	CreatedDate,
	RecordStatusID,
	UserID

	FROM [Record_History] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_History]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Status_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Status_Type]
GO
CREATE PROCEDURE Get_Record_Status_Type
/**********************************************************
Name		: Get_Record_Status_Type
Table		: Record_Status_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Record_Status_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Record_Status_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Status_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_RecordSearch]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_RecordSearch]
GO
CREATE PROCEDURE Get_RecordSearch
/**********************************************************
Name                   :Get_RecordSearch
Table                  :BatchRecord
Updates               :
**********************************************************/
(
  @ID  INT    
)
AS
SET NOCOUNT ON
DECLARE @Name varchar(8000),@County varchar(200),@DOB datetime, @CaseTypeID int
DECLARE @str VARCHAR(200),@ind Int, @seprator VARCHAR(200)

select @seprator = '~'

SELECT @Name = Name, @County = County, @DOB=DOB ,@CaseTypeID = CaseTypeID  FROM Batch_Record 
WHERE ID = @ID  

BEGIN
	SELECT @Name = replace(@Name, 'aka:', @seprator)
	SELECT @Name = replace(@Name, '/', @seprator)
	SELECT @Name = replace(@Name, '\', @seprator)
	
	SELECT @Name = @Name + @seprator

	Create table  #SEARCH(ID INT IDENTITY, RecordID INT )

	
	IF(@Name is not null)
	BEGIN
		SET @ind = CharIndex(@seprator,@Name)
		WHILE @ind > 0
		BEGIN
			SET @str = LTRIM(RTRIM(SUBSTRING(@Name,1,@ind-1)))
			SET @Name = SUBSTRING(@Name,@ind+1,LEN(@Name)-@ind)

			IF(LEN(@str)>0)
			BEGIN
				INSERT INTO #SEARCH
				SELECT ID FROM Batch_Record B
				WHERE B.ID <>@ID   AND @County = B.County AND @CaseTypeID = B.CaseTypeID AND
				( Name like '%' + @str + '%')
			END
			SET @ind = CharIndex(@seprator,@Name)
		END
	END
  
      
	SELECT 
		B.ID,
		C.Name AS CompanyName,
		B.ReceivedDate ,
		RS.Name AS RecordStatusName,
		B.County,
		B.Name,
		B.DOB,
		CS.Name AS CaseTypeName,
		B.Years,
		A.Name AS ActionTypeName
		FROM [dbo].Batch_Record B
		LEFT OUTER JOIN Company C ON C.ID = CompanyID 
		LEFT OUTER JOIN Record_Status_Type RS ON RS.ID = RecordStatusID 
		LEFT OUTER JOIN Case_Type CS ON CS.ID = CaseTypeID 
		LEFT OUTER JOIN Action_Type A ON A.ID = ActionID
		WHERE B.ID in (SELECT RecordID FROM #SEARCH)
		
	DROP TABLE  #SEARCH
END    

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_RecordSearch]  TO [wswebuser]
GO



SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_State_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_State_Type]
GO
CREATE PROCEDURE Get_State_Type
/**********************************************************
Name		: Get_State_Type
Table		: State_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [State_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [State_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_State_Type]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_System]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_System]
GO
CREATE PROCEDURE Get_System
/**********************************************************
Name		: Get_System
Table		: System
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	MaxPasswordAttempt,
	MaxPasswordDays

	FROM [System] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	MaxPasswordAttempt,
	MaxPasswordDays

	FROM [System] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_System]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_User2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_User2]
GO
CREATE PROCEDURE Get_User2
/**********************************************************
Name		: Get_User2
Table		: User2
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	FirstName,
	LastName,
	Password,
	Active,
	Lock,
	ParentID,
	TypeID,
	ModifiedDate,
	ContactNo,
	Email,
	LastLogon,
	ChangePassword,
	PasswordChangeDate,
	LastPassword,
	DailyWages,
	DepartmentID

	FROM [User2] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	FirstName,
	LastName,
	Password,
	Active,
	Lock,
	ParentID,
	TypeID,
	ModifiedDate,
	ContactNo,
	Email,
	LastLogon,
	ChangePassword,
	PasswordChangeDate,
	LastPassword,
	DailyWages,
	DepartmentID

	FROM [User2] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_User2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_User2_Group]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_User2_Group]
GO
CREATE PROCEDURE Get_User2_Group
/**********************************************************
Name                   :Get_User2_Group
Table                   :User2_Group2
Updates               :
**********************************************************/
(
@UserID[INT] = NULL
)
AS
SET NOCOUNT ON
IF ISNULL( @UserID,0)>0
BEGIN
	
SELECT
	ID,
	UserID,
	GroupID

	FROM [User2_Group2] WITH(NOLOCK)
	WHERE UserID= @UserID
END
ELSE
BEGIN

SELECT
	ID,
	UserID,
	GroupID

	FROM [User2_Group2] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_User2_Group]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_User2_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_User2_Group2]
GO
CREATE PROCEDURE Get_User2_Group2
/**********************************************************
Name		: Get_User2_Group2
Table		: User2_Group2
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	UserID,
	GroupID

	FROM [User2_Group2] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	UserID,
	GroupID

	FROM [User2_Group2] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_User2_Group2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER OFF  
GO
SET ANSI_NULLS ON 
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_User2_Logon]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_User2_Logon]
GO

CREATE  Procedure Get_User2_Logon  
/**********************************************************  
Name		: Get_User2_Logon  
Created	: 03.05.2008
Table		: [User2]  
Notes		:	Selects records from [User2]
Updates	:  
 ***********************************************************/  
( @Name  VARCHAR(50)  
, @Password VARCHAR(50)
, @Attempt  SMALLINT = 0  
, @DTNow DATETIME
)  
AS  

SET NOCOUNT ON  
  
DECLARE @ID INT
, @PasswordDB VARCHAR(50)
, @PasswordChangeDate DATETIME
, @PasswordRemainingDays INT
, @LastLogon AS DATETIME
, @MaxPasswordAttempt INT
, @MaxPasswordDays INT

SELECT 
	@MaxPasswordAttempt = MaxPasswordAttempt,
	@MaxPasswordDays = MaxPasswordDays 
FROM System WITH(NOLOCK)  
  
SELECT @ID = ID
, @PasswordDB = Password
, @PasswordChangeDate = PasswordChangeDate
, @LastLogon = LastLogon
FROM User2 WITH(NOLOCK) 
WHERE Name = @Name  

SELECT @PasswordRemainingDays = ISNULL(DATEDIFF(DAY,@DTNow,@PasswordChangeDate),0)
  
-- Check the user password and, if good, update logon date; else, attempt lock  
IF NOT @ID IS NULL  
BEGIN  
		IF (@Password = @PasswordDB) 
		BEGIN
			IF @LastLogon IS NULL OR @PasswordRemainingDays >= @MaxPasswordDays
			BEGIN
					UPDATE User2 WITH(UPDLOCK)
					SET ChangePassword = 1 
					WHERE ID = @ID  
			END
			UPDATE User2 WITH(UPDLOCK) 
			SET LastLogon = @DTNow
			WHERE ID = @ID  

		SELECT
	 			[ID],
				[Name],
				[FirstName],
				[LastName],
				[Password],
				[ModifiedDate],
				[Active],
				[Lock],
				[ContactNo],
				[EMail],
				[TypeID],
				[LastLogon],
				[ChangePassword],
				[PasswordChangeDate],
				[LastPassword],
				@PasswordRemainingDays AS PasswordRemainingDays
			FROM [User2] WITH(NOLOCK)   
			WHERE (Name = @Name)  
		END
		ELSE  
		BEGIN  
			IF (@Attempt = @MaxPasswordAttempt) 
			BEGIN  
				UPDATE User2 WITH(UPDLOCK) 
				SET Lock = 1
				WHERE ID = @ID  
			END  
		END  
END  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
GRANT  EXECUTE  ON [dbo].[Get_User2_Logon]  TO [wswebuser]
GO


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Vendor]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Vendor]
GO
CREATE PROCEDURE Get_Vendor
/**********************************************************
Name		: Get_Vendor
Table		: Vendor
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	Comments,
	ContactPerson,
	Phone,
	Fax,
	Email,
	Active,
	GracePeriod,
	PaymentID

	FROM [Vendor] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	Comments,
	ContactPerson,
	Phone,
	Fax,
	Email,
	Active,
	GracePeriod,
	PaymentID

	FROM [Vendor] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Vendor]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Vendor_CountyRate]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Vendor_CountyRate]
GO
CREATE PROCEDURE Get_Vendor_CountyRate
/**********************************************************
Name		: Get_Vendor_CountyRate
Table		: Vendor_CountyRate
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@VendorID [INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	VendorID,
	CountyAssigned,
	Rate

	FROM [Vendor_CountyRate] WITH(NOLOCK)
	WHERE ID= @ID
END
IF ISNULL(@VendorID, 0)>0
BEGIN
	SELECT
	ID,
	VendorID,
	CountyAssigned,
	Rate

	FROM [Vendor_CountyRate] WITH(NOLOCK)
	WHERE VendorID= @VendorID
END
ELSE
BEGIN
	SELECT
	ID,
	VendorID,
	CountyAssigned,
	Rate

	FROM [Vendor_CountyRate] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Vendor_CountyRate]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Batch]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Batch]
GO
CREATE PROCEDURE Save_Batch
/**********************************************************
Name		: Save_Batch
Table		: Batch
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name Varchar(50) = NULL,
	@UserID Int = NULL,
	@CreatedDate Datetime = NULL,
	@CompanyID Int = NULL,
	@TotalCount Int = NULL,
	@PassCount Int = NULL,
	@FailCount Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Batch] (	Name,
	UserID,
	CreatedDate,
	CompanyID,
	TotalCount,
	PassCount,
	FailCount

)
VALUES (
	@Name,
	@UserID,
	@CreatedDate,
	@CompanyID,
	@TotalCount,
	@PassCount,
	@FailCount

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Batch] WITH(UPDLOCK) SET
	Name = @Name,
	UserID = @UserID,
	CreatedDate = @CreatedDate,
	CompanyID = @CompanyID,
	TotalCount = @TotalCount,
	PassCount = @PassCount,
	FailCount = @FailCount

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Batch]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Batch_Record]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Batch_Record]
GO
CREATE PROCEDURE Save_Batch_Record
/**********************************************************
Name		: Save_Batch_Record
Table		: Batch_Record
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@BatchID Int = NULL,
	@CreatedDate Datetime = NULL,
	@ModifiedDate Datetime = NULL,
	@CompanyID Int = NULL,
	@RecordStatusID Int = NULL,
	@ReceivedDate Datetime = NULL,
	@SentDate Datetime = NULL,
	@PrintCost Money = NULL,
	@NoOfPages int = NULL,
	@CourtFee Money = NULL,
	@CustomerRefNo Varchar(50) = NULL,
	@LeadNo int = NULL,
	@County Varchar(50) = NULL,
	@Name Varchar(50) = NULL,
	@DOB Datetime = NULL,
	@ActualCaseType Varchar(200) = NULL,
	@CaseTypeID Int = NULL,
	@Years int = NULL,
	@SSN Varchar(10) = NULL,
	@ActionID Int = NULL,
	@VendorID Int = NULL,
	@ContactTypeID Int = NULL,
	@ClientRemarks Varchar(8000) = NULL,
	@ClientSplRemarks Varchar(max) = NULL,
	@RISComments Varchar(8000) = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Batch_Record] (	BatchID,
	CreatedDate,
	ModifiedDate,
	CompanyID,
	RecordStatusID,
	ReceivedDate,
	SentDate,
	PrintCost,
	NoOfPages,
	CourtFee,
	CustomerRefNo,
	LeadNo,
	County,
	Name,
	DOB,
	ActualCaseType,
	CaseTypeID,
	Years,
	SSN,
	ActionID,
	VendorID,
	ContactTypeID,
	ClientRemarks,
	ClientSplRemarks,
	RISComments

)
VALUES (
	@BatchID,
	@CreatedDate,
	@ModifiedDate,
	@CompanyID,
	@RecordStatusID,
	@ReceivedDate,
	@SentDate,
	@PrintCost,
	@NoOfPages,
	@CourtFee,
	@CustomerRefNo,
	@LeadNo,
	@County,
	@Name,
	@DOB,
	@ActualCaseType,
	@CaseTypeID,
	@Years,
	@SSN,
	@ActionID,
	@VendorID,
	@ContactTypeID,
	@ClientRemarks,
	@ClientSplRemarks,
	@RISComments

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Batch_Record] WITH(UPDLOCK) SET
	ModifiedDate = @ModifiedDate,
	CompanyID = @CompanyID,
	RecordStatusID = @RecordStatusID,
	ReceivedDate = @ReceivedDate,
	SentDate = @SentDate,
	PrintCost = @PrintCost,
	NoOfPages = @NoOfPages,
	CourtFee = @CourtFee,
	CustomerRefNo = @CustomerRefNo,
	LeadNo = @LeadNo,
	County = @County,
	Name = @Name,
	DOB = @DOB,
	ActualCaseType = @ActualCaseType,
	CaseTypeID = @CaseTypeID,
	Years = @Years,
	SSN = @SSN,
	ActionID = @ActionID,
	VendorID = @VendorID,
	ContactTypeID = @ContactTypeID,
	ClientRemarks = @ClientRemarks,
	ClientSplRemarks = @ClientSplRemarks,
	RISComments = @RISComments

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Batch_Record]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Case2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Case2]
GO
CREATE PROCEDURE Save_Case2
/**********************************************************
Name		: Save_Case2
Table		: Case2
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@CaseID Int = NULL,
	@CreatedDate Datetime = NULL,
	@ModifiedDate Datetime = NULL,
	@Description Varchar(8000) = NULL,
	@LevelTypeID Int = NULL,
	@PleaTypeID Int = NULL,
	@DispositionTypeID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Case2] (	CaseID,
	CreatedDate,
	ModifiedDate,
	Description,
	LevelTypeID,
	PleaTypeID,
	DispositionTypeID

)
VALUES (
	@CaseID,
	@CreatedDate,
	@ModifiedDate,
	@Description,
	@LevelTypeID,
	@PleaTypeID,
	@DispositionTypeID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Case2] WITH(UPDLOCK) SET
	CaseID = @CaseID,
	CreatedDate = @CreatedDate,
	ModifiedDate = @ModifiedDate,
	Description = @Description,
	LevelTypeID = @LevelTypeID,
	PleaTypeID = @PleaTypeID,
	DispositionTypeID = @DispositionTypeID

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Case2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Company]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Company]
GO
CREATE PROCEDURE Save_Company
/**********************************************************
Name		: Save_Company
Table		: Company
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name Varchar(500) = NULL,
	@AddressL1 Varchar(100) = NULL,
	@AddressL2 Varchar(100) = NULL,
	@City Varchar(50) = NULL,
	@StateID Int = NULL,
	@PostalCode Varchar(10) = NULL,
	@ContactPerson Varchar(100) = NULL,
	@Phone Varchar(100) = NULL,
	@Fax Varchar(100) = NULL,
	@Email Varchar(100) = NULL,
	@WebSite Varchar(100) = NULL,
	@Active BIT = NULL,
	@DTSMapping xml = NULL,
	@CaseTypeMapping xml = NULL,
	@Comments Varchar(8000) = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Company] (	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	ContactPerson,
	Phone,
	Fax,
	Email,
	WebSite,
	Active,
	DTSMapping,
	CaseTypeMapping,
	Comments

)
VALUES (
	@Name,
	@AddressL1,
	@AddressL2,
	@City,
	@StateID,
	@PostalCode,
	@ContactPerson,
	@Phone,
	@Fax,
	@Email,
	@WebSite,
	@Active,
	@DTSMapping,
	@CaseTypeMapping,
	@Comments

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Company] WITH(UPDLOCK) SET
	Name = @Name,
	AddressL1 = @AddressL1,
	AddressL2 = @AddressL2,
	City = @City,
	StateID = @StateID,
	PostalCode = @PostalCode,
	ContactPerson = @ContactPerson,
	Phone = @Phone,
	Fax = @Fax,
	Email = @Email,
	WebSite = @WebSite,
	Active = @Active,
	DTSMapping  = COALESCE(@DTSMapping,DTSMapping),
	CaseTypeMapping = COALESCE(@CaseTypeMapping,CaseTypeMapping),
	Comments = @Comments

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Company]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Group2]
GO
CREATE PROCEDURE Save_Group2
/**********************************************************
Name                   :Save_Group2
Table                   :Group2
Updates               :
**********************************************************/
(
@ID [INT] = NULL,
@Name VARCHAR(50) = NULL,
@Description VARCHAR(50) = NULL,
@Permissions VARCHAR(8000) = NULL
)
AS
SET NOCOUNT ON

DECLARE @PermissionID VARCHAR(50) 

IF EXISTS (SELECT ID FROM Group2 WHERE Name = @Name) AND ISNULL(@ID,0) = 0
	RAISERROR ('Please select a different name as the current group name exists already in the database.',16,1)

BEGIN TRAN

IF ISNULL( @ID,0)=0
	BEGIN
		INSERT [Group2] 
		(
			Name,
			Description
		)
		VALUES 
		(
			@Name,
			@Description
		)
		SELECT @ID = @@IDENTITY
	END
ELSE
	BEGIN
		UPDATE [Group2] WITH(UPDLOCK) SET
			Name = COALESCE(@Name,Name),
			Description = COALESCE(@Description,Description)
		WHERE ID = @ID
	END

DELETE FROM Group2_PERMISSION WITH(ROWLOCK)
WHERE GroupID= @ID

WHILE LEN(@Permissions) > 0
BEGIN
  IF CHARINDEX('|', @Permissions) > 0
  BEGIN
    SET @PermissionID =  LTRIM(RTRIM(SUBSTRING(@Permissions, 1, (CHARINDEX('|', @Permissions) -1))))
    INSERT INTO Group2_PERMISSION(GroupID,PermissionID) VALUES (@ID,@PermissionID)
    SET @Permissions = RIGHT(@Permissions, (LEN(@Permissions) - CHARINDEX('|', @Permissions)))
  END
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	declare @sMsg varchar(800) 
	SET @sMsg = 'Error: Save_Group2 : GRP_ID=' + CAST (@ID AS VARCHAR) 
	RAISERROR (@sMsg,16,1)
	RETURN -1
END
ELSE
BEGIN
	COMMIT TRAN 
	RETURN 0 
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Group2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Group2_Permission]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Group2_Permission]
GO
CREATE PROCEDURE Save_Group2_Permission
/**********************************************************
Name		: Save_Group2_Permission
Table		: Group2_Permission
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@GroupID Int = NULL,
	@PermissionID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Group2_Permission] (	GroupID,
	PermissionID

)
VALUES (
	@GroupID,
	@PermissionID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Group2_Permission] WITH(UPDLOCK) SET
	GroupID = @GroupID,
	PermissionID = @PermissionID

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Group2_Permission]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Record_Case]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Record_Case]
GO
CREATE PROCEDURE Save_Record_Case
/**********************************************************
Name		: Save_Record_Case
Table		: Record_Case
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@RecordID Int = NULL,
	@CreatedDate Datetime = NULL,
	@ModifiedDate Datetime = NULL,
	@NameFound Varchar(100) = NULL,
	@DOBFound Datetime = NULL,
	@Alias Varchar(8000) = NULL,
	@CaseNumber Varchar(100) = NULL,
	@ViolationDate Datetime = NULL,
	@FileDate Datetime = NULL,
	@DispoDate Datetime = NULL,
	@ProbationType Varchar(100) = NULL,
	@FileFee Money = NULL,
	@Restitution Varchar(100) = NULL,
	@Jail Varchar(100) = NULL,
	@JailCredit Varchar(100) = NULL,
	@SentencingDetail Varchar(max) = NULL,
	@DistrictCourt Varchar(200) = NULL,
	@CaseTypeLevel Varchar(200) = NULL,
	@CaseName Varchar(200) = NULL,
	@Plaintiff Varchar(200) = NULL,
	@Defendant Varchar(200) = NULL,
	@StatusJudgment Varchar(200) = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Record_Case] (	RecordID,
	CreatedDate,
	ModifiedDate,
	NameFound,
	DOBFound,
	Alias,
	CaseNumber,
	ViolationDate,
	FileDate,
	DispoDate,
	ProbationType,
	FileFee,
	Restitution,
	Jail,
	JailCredit,
	SentencingDetail,
	DistrictCourt,
	CaseTypeLevel,
	CaseName,
	Plaintiff,
	Defendant,
	StatusJudgment

)
VALUES (
	@RecordID,
	@CreatedDate,
	@ModifiedDate,
	@NameFound,
	@DOBFound,
	@Alias,
	@CaseNumber,
	@ViolationDate,
	@FileDate,
	@DispoDate,
	@ProbationType,
	@FileFee,
	@Restitution,
	@Jail,
	@JailCredit,
	@SentencingDetail,
	@DistrictCourt,
	@CaseTypeLevel,
	@CaseName,
	@Plaintiff,
	@Defendant,
	@StatusJudgment

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Record_Case] WITH(UPDLOCK) SET
	ModifiedDate = @ModifiedDate,
	NameFound = @NameFound,
	DOBFound = @DOBFound,
	Alias = @Alias,
	CaseNumber = @CaseNumber,
	ViolationDate = @ViolationDate,
	FileDate = @FileDate,
	DispoDate = @DispoDate,
	ProbationType = @ProbationType,
	FileFee = @FileFee,
	Restitution = @Restitution,
	Jail = @Jail,
	JailCredit = @JailCredit,
	SentencingDetail = @SentencingDetail,
	DistrictCourt = @DistrictCourt,
	CaseTypeLevel = @CaseTypeLevel,
	CaseName = @CaseName,
	Plaintiff = @Plaintiff,
	Defendant = @Defendant,
	StatusJudgment = @StatusJudgment

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Record_Case]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Record_History]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Record_History]
GO
CREATE PROCEDURE Save_Record_History
/**********************************************************
Name		: Save_Record_History
Table		: Record_History
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@RecordID Int = NULL,
	@CreatedDate datetime = NULL,
	@RecordStatusID Int = NULL,
	@UserID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Record_History] (	RecordID,
	CreatedDate,
	RecordStatusID,
	UserID

)
VALUES (
	@RecordID,
	@CreatedDate,
	@RecordStatusID,
	@UserID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Record_History] WITH(UPDLOCK) SET
	RecordID = @RecordID,
	CreatedDate = @CreatedDate,
	RecordStatusID = @RecordStatusID,
	UserID = @UserID

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Record_History]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_System]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_System]
GO
CREATE PROCEDURE Save_System
/**********************************************************
Name		: Save_System
Table		: System
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@MaxPasswordAttempt Int = NULL,
	@MaxPasswordDays Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [System] (	MaxPasswordAttempt,
	MaxPasswordDays

)
VALUES (
	@MaxPasswordAttempt,
	@MaxPasswordDays

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [System] WITH(UPDLOCK) SET
	MaxPasswordAttempt = @MaxPasswordAttempt,
	MaxPasswordDays = @MaxPasswordDays

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_System]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_User2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_User2]
GO

CREATE Procedure Save_User2      
/**********************************************************      
Name		: Save_User2      
Created	: 01.05.2008
Table		: [Saves records in to User2]      
Notes		: 
Updates	:       
***********************************************************/      
( 
	@ID [INT] = NULL,
	@Name Varchar(50) = NULL,
	@FirstName Varchar(50) = NULL,
	@LastName Varchar(50) = NULL,
	@Password Varchar(50) = NULL,
	@Active BIT = NULL,
	@Lock BIT = NULL,
	@ParentID Int = NULL,
	@TypeID Int = NULL,
	@ModifiedDate DateTime = NULL,
	@ContactNo Varchar(50) = NULL,
	@Email Varchar(50) = NULL,
	@LastLogon Datetime = NULL,
	@ChangePassword Bit = NULL,
	@PasswordChangeDate Datetime = NULL,
	@LastPassword Varchar(50) = NULL,
	@DailyWages Money = NULL,
	@DepartmentID Int = NULL,
	@Groups VARCHAR(8000) = NULL
)      
AS      

SET NOCOUNT ON   

DECLARE @GroupID VARCHAR(50)
BEGIN TRAN

IF ISNULL(@ID,0) = 0
	BEGIN
		INSERT [User2]
		(
			Name,
			FirstName,
			LastName,
			Password,
			Active,
			Lock,
			ParentID,
			TypeID,
			ModifiedDate,
			ContactNo,
			Email,
			LastLogon,
			ChangePassword,
			PasswordChangeDate,
			LastPassword,
			DailyWages,
			DepartmentID

		)	
		VALUES
		(
			@Name,
			@FirstName,
			@LastName,
			@Password,
			@Active,
			@Lock,
			@ParentID,
			@TypeID,
			@ModifiedDate,
			@ContactNo,
			@Email,
			@LastLogon,
			@ChangePassword,
			@PasswordChangeDate,
			@LastPassword,
			@DailyWages,
			@DepartmentID
		)
		SELECT @ID = @@IDENTITY
	END
ELSE
	BEGIN
		DECLARE @CurrentPassword AS VARCHAR(50),
						@CurrentUserChangePassword BIT
		SELECT 
			@CurrentPassword = Password,
			@CurrentUserChangePassword = ChangePassword
		FROM User2 WITH (NOLOCK) WHERE ID=@ID

		--Handling change password and manually changing the password
		IF @Password IS NOT NULL 
		BEGIN
			IF ISNULL(@CurrentUserChangePassword,0) = 1 AND @CurrentPassword <> @Password AND @Password <> @LastPassword AND ISNULL(@ChangePassword,0)=0 OR 
					@CurrentPassword <> @Password AND @Password <> @LastPassword
					SELECT @LastPassword = @CurrentPassword
			ELSE
				BEGIN
					ROLLBACK TRAN
					RAISERROR('Please change your password before proceeding. The new password should not be same as current and previous password.',16,1)
					RETURN -1
				END
		END		

		UPDATE User2 WITH (UPDLOCK)
		SET
			Name = COALESCE(@Name,Name),
			FirstName = COALESCE(@FirstName,FirstName),
			LastName = COALESCE(@LastName,LastName),
			Password = COALESCE(@Password,Password),
			Active = COALESCE(@Active,Active),
			Lock = COALESCE(@Lock,Lock),
			ParentID = COALESCE(@ParentID,ParentID),
			TypeID = COALESCE(@TypeID,TypeID),
			ModifiedDate = COALESCE(@ModifiedDate,ModifiedDate),
			ContactNo = COALESCE(@ContactNo,ContactNo),
			Email = COALESCE(@Email,Email),
			LastLogon = COALESCE(@LastLogon,LastLogon),
			ChangePassword = COALESCE(@ChangePassword,ChangePassword),
			PasswordChangeDate = COALESCE(@PasswordChangeDate,PasswordChangeDate),
			LastPassword = COALESCE(@LastPassword,LastPassword),
			DailyWages = COALESCE(@DailyWages,DailyWages),
			DepartmentID = COALESCE(@DepartmentID,DepartmentID)
		WHERE [ID] = @ID

	END   

IF NOT @Groups  IS NULL
BEGIN
	DELETE FROM User2_Group2 WITH(ROWLOCK)
	WHERE UserID= @ID

	WHILE LEN(@Groups) > 0
	BEGIN
	  IF CHARINDEX('|', @Groups) > 0
	  BEGIN
		SET @GroupID =  LTRIM(RTRIM(SUBSTRING(@Groups, 1, (CHARINDEX('|', @Groups) -1))))
		INSERT INTO User2_Group2(UserID,GroupID) VALUES (@ID,@GroupID)
		SET @Groups = RIGHT(@Groups, (LEN(@Groups) - CHARINDEX('|', @Groups)))
	  END
	END
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	declare @sMsg varchar(800) 
	SET @sMsg = 'Error: Save_User2 : ID=' + CAST (@ID AS VARCHAR) 
	RAISERROR (@sMsg,16,1)
	RETURN -1
END
ELSE
BEGIN
	COMMIT TRAN 
	RETURN 0 
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

GRANT  EXECUTE  ON [dbo].[Save_User2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_User2_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_User2_Group2]
GO
CREATE PROCEDURE Save_User2_Group2
/**********************************************************
Name		: Save_User2_Group2
Table		: User2_Group2
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@UserID Int = NULL,
	@GroupID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [User2_Group2] (	UserID,
	GroupID

)
VALUES (
	@UserID,
	@GroupID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [User2_Group2] WITH(UPDLOCK) SET
	UserID = @UserID,
	GroupID = @GroupID

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_User2_Group2]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Vendor]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Vendor]
GO
CREATE PROCEDURE Save_Vendor
/**********************************************************
Name		: Save_Vendor
Table		: Vendor
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name Varchar(500) = NULL,
	@AddressL1 Varchar(100) = NULL,
	@AddressL2 Varchar(100) = NULL,
	@City Varchar(50) = NULL,
	@StateID Int = NULL,
	@PostalCode Varchar(10) = NULL,
	@Comments Varchar(8000) = NULL,
	@ContactPerson Varchar(100) = NULL,
	@Phone Varchar(20) = NULL,
	@Fax Varchar(20) = NULL,
	@Email Varchar(100) = NULL,
	@Active BIT = NULL,
	@GracePeriod int = NULL,
	@PaymentID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Vendor] (	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	Comments,
	ContactPerson,
	Phone,
	Fax,
	Email,
	Active,
	GracePeriod,
	PaymentID

)
VALUES (
	@Name,
	@AddressL1,
	@AddressL2,
	@City,
	@StateID,
	@PostalCode,
	@Comments,
	@ContactPerson,
	@Phone,
	@Fax,
	@Email,
	@Active,
	@GracePeriod,
	@PaymentID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Vendor] WITH(UPDLOCK) SET
	Name = @Name,
	AddressL1 = @AddressL1,
	AddressL2 = @AddressL2,
	City = @City,
	StateID = @StateID,
	PostalCode = @PostalCode,
	Comments = @Comments,
	ContactPerson = @ContactPerson,
	Phone = @Phone,
	Fax = @Fax,
	Email = @Email,
	Active = @Active,
	GracePeriod = @GracePeriod,
	PaymentID = @PaymentID

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Vendor]  TO [wswebuser]
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Vendor_CountyRate]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Vendor_CountyRate]
GO
CREATE PROCEDURE Save_Vendor_CountyRate
/**********************************************************
Name		: Save_Vendor_CountyRate
Table		: Vendor_CountyRate
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@VendorID Int = NULL,
	@CountyAssigned Varchar(100) = NULL,
	@Rate Money = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Vendor_CountyRate] (	VendorID,
	CountyAssigned,
	Rate

)
VALUES (
	@VendorID,
	@CountyAssigned,
	@Rate

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Vendor_CountyRate] WITH(UPDLOCK) SET
	VendorID = @VendorID,
	CountyAssigned = @CountyAssigned,
	Rate = @Rate

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Vendor_CountyRate]  TO [wswebuser]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Case_Report]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Case_Report]
GO
CREATE PROCEDURE Get_Record_Case_Report
/**********************************************************
Name		: Get_Record_Case_Report
Table		: Record_Case
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@RecordID[INT] = NULL
	
)
AS
SET NOCOUNT ON

	SELECT
	RC.ID,
	RC.RecordID,
	RC.CreatedDate,
	RC.ModifiedDate,
	RC.NameFound,
	RC.DOBFound,
	RC.Alias,
	RC.CaseNumber,
	RC.ViolationDate,
	RC.FileDate,
	RC.DispoDate,
	RC.ProbationType,
	RC.FileFee,
	RC.Restitution,
	RC.Jail,
	RC.JailCredit,
	RC.SentencingDetail,
	CO.Name AS CompanyName,
	BR.CustomerRefNo,
	BR.County ,
	CT.IsCivil,
	DistrictCourt,
	CaseTypeLevel,
	CaseName,
	Plaintiff,
	Defendant,
	StatusJudgment
	FROM [Record_Case] RC WITH(NOLOCK)
	LEFT OUTER JOIN Batch_Record BR ON RecordID = BR.ID
	LEFT OUTER JOIN Company CO ON CO.ID = BR.CompanyID 
	LEFT OUTER JOIN Case_Type CT ON CT.ID = BR.CaseTypeID 
	WHERE (@ID IS NULL OR RC.ID= @ID) AND (@RecordID IS NULL OR @RecordID = RC.RecordID)

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Case_Report]  TO [wswebuser]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Record_Case]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Record_Case]
GO
CREATE PROCEDURE Save_Record_Case
/**********************************************************
Name		: Save_Record_Case
Table		: Record_Case
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@RecordID Int = NULL,
	@CreatedDate Datetime = NULL,
	@ModifiedDate Datetime = NULL,
	@NameFound Varchar(100) = NULL,
	@DOBFound Datetime = NULL,
	@Alias Varchar(8000) = NULL,
	@CaseNumber Varchar(100) = NULL,
	@ViolationDate Datetime = NULL,
	@FileDate Datetime = NULL,
	@DispoDate Datetime = NULL,
	@ProbationType Varchar(100) = NULL,
	@FileFee Money = NULL,
	@Restitution Varchar(100) = NULL,
	@Jail Varchar(100) = NULL,
	@JailCredit Varchar(100) = NULL,
	@SentencingDetail Varchar(max) = NULL,
	@DistrictCourt Varchar(200) = NULL,
	@CaseTypeLevel Varchar(200) = NULL,
	@CaseName Varchar(200) = NULL,
	@Plaintiff Varchar(200) = NULL,
	@Defendant Varchar(200) = NULL,
	@StatusJudgment Varchar(200) = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Record_Case] (	RecordID,
	CreatedDate,
	ModifiedDate,
	NameFound,
	DOBFound,
	Alias,
	CaseNumber,
	ViolationDate,
	FileDate,
	DispoDate,
	ProbationType,
	FileFee,
	Restitution,
	Jail,
	JailCredit,
	SentencingDetail,
	DistrictCourt,
	CaseTypeLevel,
	CaseName,
	Plaintiff,
	Defendant,
	StatusJudgment

)
VALUES (
	@RecordID,
	@CreatedDate,
	@ModifiedDate,
	@NameFound,
	@DOBFound,
	@Alias,
	@CaseNumber,
	@ViolationDate,
	@FileDate,
	@DispoDate,
	@ProbationType,
	@FileFee,
	@Restitution,
	@Jail,
	@JailCredit,
	@SentencingDetail,
	@DistrictCourt,
	@CaseTypeLevel,
	@CaseName,
	@Plaintiff,
	@Defendant,
	@StatusJudgment

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Record_Case] WITH(UPDLOCK) SET
	ModifiedDate = @ModifiedDate,
	NameFound = @NameFound,
	DOBFound = @DOBFound,
	Alias = @Alias,
	CaseNumber = @CaseNumber,
	ViolationDate = @ViolationDate,
	FileDate = @FileDate,
	DispoDate = @DispoDate,
	ProbationType = @ProbationType,
	FileFee = @FileFee,
	Restitution = @Restitution,
	Jail = @Jail,
	JailCredit = @JailCredit,
	SentencingDetail = @SentencingDetail,
	DistrictCourt = @DistrictCourt,
	CaseTypeLevel = @CaseTypeLevel,
	CaseName = @CaseName,
	Plaintiff = @Plaintiff,
	Defendant = @Defendant,
	StatusJudgment = @StatusJudgment

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Record_Case]  TO [wswebuser]
GO


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Case_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Case_Type]
GO
CREATE PROCEDURE Get_Case_Type
/**********************************************************
Name		: Get_Case_Type
Table		: Case_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value,
	IsCivil

	FROM [Case_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value,
	IsCivil

	FROM [Case_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Case_Type]  TO [wswebuser]
GO

