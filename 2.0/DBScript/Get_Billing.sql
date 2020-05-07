SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Billing]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Billing]
GO
CREATE PROCEDURE Get_Billing
/**********************************************************
Name		: Get_Billing
Table		: Billing
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
	b.ID,
	b.Name,
	MonthOf,
	Created,
	UserID,
	Data,
	u.Name as 'User'	
	FROM [Billing] b WITH(NOLOCK)
	INNER JOIN User2 u ON u.ID = b.UserID
	WHERE b.ID= @ID
END
ELSE
BEGIN
	SELECT
	b.ID,
	b.Name,
	MonthOf,
	Created,
	UserID,
	Data,
	u.Name as 'User'	
	FROM [Billing] b WITH(NOLOCK)
	INNER JOIN User2 u ON u.ID = b.UserID
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Billing]  TO [wswebuser]
GO
