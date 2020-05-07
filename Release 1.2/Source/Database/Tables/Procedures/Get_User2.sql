SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_User2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_User2]
GO
CREATE PROCEDURE Get_User2
/**********************************************************
Name		: Get_User2
Table		: User2
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
	FirstName,
	LastName,
	Password,
	Active,
	Lock,
	ParentID,
	TypeID,
	ModifiedDate,
	ContactNo,
	Email,
	LastLogon,
	ChangePassword,
	PasswordChangeDate,
	LastPassword,
	DailyWages,
	DepartmentID

	FROM [User2] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	FirstName,
	LastName,
	Password,
	Active,
	Lock,
	ParentID,
	TypeID,
	ModifiedDate,
	ContactNo,
	Email,
	LastLogon,
	ChangePassword,
	PasswordChangeDate,
	LastPassword,
	DailyWages,
	DepartmentID

	FROM [User2] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_User2]  TO [wswebuser]
GO
