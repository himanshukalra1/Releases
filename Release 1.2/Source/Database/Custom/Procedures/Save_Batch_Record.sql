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
