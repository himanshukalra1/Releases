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
