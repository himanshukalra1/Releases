SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Detail_Comments]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Detail_Comments]
GO
CREATE PROCEDURE Get_Record_Detail_Comments
/**********************************************************
Name		: Get_Record_Detail_Comments
Table		: Record_Detail_Comments
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
	u.ID,
	CaseID,
	CreatedDate,
	UserID,
	Description,
	u.Name as 'User'
	FROM [Record_Detail_Comments] rdc WITH(NOLOCK)
	INNER JOIN User2 u ON u.ID = rdc.UserID
	WHERE rdc.CaseID= @ID
	ORDER BY rdc.ID 
END
ELSE
BEGIN
	SELECT
	u.ID,
	CaseID,
	CreatedDate,
	UserID,
	Description,
	u.Name as 'User'
	FROM [Record_Detail_Comments] rdc WITH(NOLOCK)
	INNER JOIN User2 u ON U.ID = rdc.ID
	ORDER BY rdc.ID 
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Detail_Comments]  TO [wswebuser]
GO
