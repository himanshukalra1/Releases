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
	@Restitution Money = NULL,
	@Jail Varchar(100) = NULL,
	@JailCredit Varchar(100) = NULL,
	@SentencingDetail Varchar(max) = NULL,
	@DistrictCourt Varchar(200) = NULL,
	@CaseTypeLevel Varchar(200) = NULL,
	@CaseName Varchar(200) = NULL,
	@Plaintiff Varchar(200) = NULL,
	@Defendant Varchar(200) = NULL,
	@StatusJudgment Varchar(200) = NULL,
	@AdditionalIdentifier Varchar(50) = NULL,
	@UserID int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN

IF ISNULL(@UserID, 0)=0
BEGIN
	RAISERROR ('User ID is required to save record case information',16,1);
END

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
	Jail,
	DistrictCourt,
	CaseTypeLevel,
	CaseName,
	Plaintiff,
	Defendant,
	StatusJudgment,
	AdditionalIdentifier,
	UserID
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
	@Jail,
	@DistrictCourt,
	@CaseTypeLevel,
	@CaseName,
	@Plaintiff,
	@Defendant,
	@StatusJudgment,
	@AdditionalIdentifier,
	@UserID
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
	Jail = @Jail,
	DistrictCourt = @DistrictCourt,
	CaseTypeLevel = @CaseTypeLevel,
	CaseName = @CaseName,
	Plaintiff = @Plaintiff,
	Defendant = @Defendant,
	StatusJudgment = @StatusJudgment,
	AdditionalIdentifier = @AdditionalIdentifier

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
