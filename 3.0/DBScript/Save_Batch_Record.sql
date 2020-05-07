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
	@CountyID  int = NULL,
	@Name Varchar(200) = NULL,
	@DOB Datetime = NULL,
	@ActualCaseType Varchar(200) = NULL,
	@CaseTypeID Int = NULL,
	@Years int = NULL,
	@SSN Varchar(20) = NULL,
	@ActionID Int = NULL,
	@VendorID Int = NULL,
	@ContactTypeID Int = NULL,
	@ClientRemarks Varchar(8000) = NULL,
	@ClientSplRemarks Varchar(max) = NULL,
	@RISComments Varchar(8000) = NULL,
	@UserID int = NULL,
	@StateID int
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN

IF ISNULL(@UserID, 0)=0
BEGIN
	RAISERROR ('User ID is required to save batch record information',16,1);
END

INSERT [Batch_Record] (BatchID,
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
	CountyID,
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
	RISComments,
	UserID,
	StateID
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
	@CountyID,
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
	@RISComments,
	@UserID,
	@StateID
)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN

DECLARE @OLD_RecordStatusID INT

SELECT @OLD_RecordStatusID = RecordStatusID 
FROM [Batch_Record] WHERE ID = @ID

IF((@RecordStatusID IN (SELECT A.ID FROM Record_Status_Type A WHERE A.Name IN ('CANCEL','DUPLICATE')))
	AND (@OLD_RecordStatusID IN (SELECT A.ID FROM Record_Status_Type A WHERE A.Name = 'QA' OR A.Name LIKE 'SUBMIT%')))
	BEGIN
		RAISERROR ('Transition not allowed',16,1);
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
	CountyID = @CountyID,
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
	RISComments = @RISComments,
	StateID = @StateID

WHERE ID = @ID
END
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
