/****** Object:  StoredProcedure [dbo].[Get_Case2]    Script Date: 3/2/2020 1:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Case2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Case2]
GO
CREATE PROCEDURE [dbo].[Get_Case2]
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
	c.ID,
	CaseID,
	CreatedDate,
	c.ModifiedDate,
	Description,
	LevelTypeID,
	PleaTypeID,
	DispositionTypeID,
	ProbationType,
	FileFee,
	JailCredit,
	SentencingDetail,
	Restitution,
	UserID,
	ArrestingAgency,
	SentencingDate
	FROM [Case2] c WITH(NOLOCK)
	WHERE c.ID= @ID
END
ELSE IF ISNULL(@CaseID, 0)>0
BEGIN
	SELECT
	c.ID,
	CaseID,
	CreatedDate,
	c.ModifiedDate,
	Description,
	LevelTypeID,
	PleaTypeID,
	DispositionTypeID,
	ProbationType,
	FileFee,
	JailCredit,
	SentencingDetail,
	Restitution,
	UserID,
	ArrestingAgency,
	SentencingDate
	FROM [Case2] c WITH(NOLOCK)
	WHERE CaseID= @CaseID
END
ELSE
BEGIN
	SELECT
	c.ID,
	CaseID,
	CreatedDate,
	c.ModifiedDate,
	Description,
	LevelTypeID,
	PleaTypeID,
	DispositionTypeID,
	ProbationType,
	FileFee,
	JailCredit,
	SentencingDetail,
	Restitution,
	UserID,
	ArrestingAgency,
	SentencingDate
	FROM [Case2] c WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Case2]  TO [wswebuser]
GO