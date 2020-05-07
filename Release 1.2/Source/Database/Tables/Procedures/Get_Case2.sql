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
	@ID[INT] = NULL
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
