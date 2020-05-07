SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Disposition_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Disposition_Type]
GO
CREATE PROCEDURE Get_Disposition_Type
/**********************************************************
Name		: Get_Disposition_Type
Table		: Disposition_Type
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
	Name,
	Value

	FROM [Disposition_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Disposition_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Disposition_Type]  TO [wswebuser]
GO
