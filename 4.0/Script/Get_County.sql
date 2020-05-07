SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_County]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_County]
GO
CREATE PROCEDURE [dbo].[Get_County]
/**********************************************************
Name			: Get_County
Table			: County
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@StateID [INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value,
	StateID

	FROM [County] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE IF @StateID IS NOT NULL
BEGIN
	SELECT
	ID,
	Name,
	Value,
	StateID
	FROM [County] WITH(NOLOCK)
	WHERE StateID = @StateID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value,
	StateID
	FROM [County] WITH(NOLOCK)
END
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_County]  TO [wswebuser]
GO


