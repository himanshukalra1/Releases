SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Interface]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Interface]
GO
CREATE PROCEDURE Get_Interface
/**********************************************************
Name		: Get_Interface
Table		: Interface
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
	[URL],
	UserName,
	[Password],
	CompanyID,
	UDF1,
	UDF2,
	UDF3,
	UDF4,
	UDF5,
	UDF6
	FROM [Interface] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	[URL],
	UserName,
	[Password],
	CompanyID,
	UDF1,
	UDF2,
	UDF3,
	UDF4,
	UDF5,
	UDF6
	FROM [Interface] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Interface]  TO [wswebuser]
GO
