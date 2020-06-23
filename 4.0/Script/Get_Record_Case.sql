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
	StatusJudgment,
	AdditionalIdentifier,
	UserID,
	StreetName,
	Address2,
	City,
	StateId,
	ZipCode,
	CaseComments
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
	COUNT(C2.ID) AS CaseCount,
	CT.IsCivil,
	R.AdditionalIdentifier,
	R.UserID,
	R.StreetName,
	R.Address2,
	R.City,
	R.StateId,
	R.ZipCode,
	R.CaseComments
	FROM [Record_Case] R WITH(NOLOCK)
	LEFT OUTER JOIN [Case2] C2 on R.ID = C2.CaseID  
	LEFT OUTER JOIN [Batch_Record] BR on BR.ID = R.RecordID
	LEFT OUTER JOIN [Case_Type] CT on BR.CaseTypeID = CT.ID
	WHERE RecordID =@RecordID
	GROUP BY R.ID, RecordID,R.CreatedDate,R.ModifiedDate,R.NameFound,R.DOBFound,R.Alias,R.CaseNumber,R.ViolationDate,R.FileDate,R.DispoDate,R.ProbationType,R.FileFee,R.Restitution,R.Jail,R.JailCredit,R.SentencingDetail,
			R.DistrictCourt, R.CaseTypeLevel, R.CaseName,	R.Plaintiff, R.Defendant, R.StatusJudgment, CT.IsCivil, R.AdditionalIdentifier, R.UserID,R.StreetName,	R.Address2,	R.City,	R.StateId,	R.ZipCode, R.CaseComments
		
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Case]  TO [wswebuser]
GO
