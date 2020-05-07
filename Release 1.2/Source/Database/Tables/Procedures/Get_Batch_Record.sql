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

	FROM [Batch_Record] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Batch_Record]  TO [wswebuser]
GO
