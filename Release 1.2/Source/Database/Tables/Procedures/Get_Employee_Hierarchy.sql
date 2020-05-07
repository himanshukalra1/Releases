SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Employee_Hierarchy]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Employee_Hierarchy]
GO
CREATE PROCEDURE Get_Employee_Hierarchy
/**********************************************************
Name		: Get_Employee_Hierarchy
Table		: Employee_Hierarchy
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
	SourceID,
	TargetID

	FROM [Employee_Hierarchy] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	SourceID,
	TargetID

	FROM [Employee_Hierarchy] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Employee_Hierarchy]  TO [wswebuser]
GO
