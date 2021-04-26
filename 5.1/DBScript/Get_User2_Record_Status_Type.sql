SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_User2_Record_Status_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_User2_Record_Status_Type]
GO
CREATE PROCEDURE Get_User2_Record_Status_Type
/**********************************************************
Name		: Get_User2_Record_Status_Type
Table		: User2_Record_Status_Type
Updates		:
**********************************************************/
(
	@UserID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@UserID, 0)>0
BEGIN
	SELECT
	ID,
	UserID,
	RecordStatusTypeID

	FROM [User2_Record_Status_Type] WITH(NOLOCK)
	WHERE UserID= @UserID
END
ELSE
BEGIN
	SELECT
	ID,
	UserID,
	RecordStatusTypeID

	FROM [User2_Record_Status_Type] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_User2_Record_Status_Type]  TO [wswebuser]
GO
