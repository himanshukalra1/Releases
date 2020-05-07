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
	@ID[INT] = NULL
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
	SentencingDetail
	IsCivil,
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
	SentencingDetail
	IsCivil,
	DistrictCourt,
	CaseTypeLevel,
	CaseName,
	Plaintiff,
	Defendant,
	StatusJudgment

	FROM [Record_Case] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Case]  TO [wswebuser]
GO
