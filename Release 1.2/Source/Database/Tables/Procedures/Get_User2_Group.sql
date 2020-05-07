SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_User2_Group]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_User2_Group]
GO
CREATE PROCEDURE Get_User2_Group
/**********************************************************
Name                   :Get_User2_Group
Table                   :User2_Group2
Updates               :
**********************************************************/
(
@UserID[INT] = NULL
)
AS
SET NOCOUNT ON
IF ISNULL( @UserID,0)>0
BEGIN
	
SELECT
	ID,
	UserID,
	GroupID

	FROM [User2_Group2] WITH(NOLOCK)
	WHERE UserID= @UserID
END
ELSE
BEGIN

SELECT
	ID,
	UserID,
	GroupID

	FROM [User2_Group2] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_User2_Group]  TO [wswebuser]
GO
