SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_User2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_User2]
GO
CREATE PROCEDURE Save_User2
/**********************************************************
Name		: Save_User2
Table		: User2
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name Varchar(50) = NULL,
	@FirstName Varchar(50) = NULL,
	@LastName Varchar(50) = NULL,
	@Password Varchar(50) = NULL,
	@Active BIT = NULL,
	@Lock BIT = NULL,
	@ParentID Int = NULL,
	@TypeID Int = NULL,
	@ModifiedDate DateTime = NULL,
	@ContactNo Varchar(50) = NULL,
	@Email Varchar(50) = NULL,
	@LastLogon Datetime = NULL,
	@ChangePassword Bit = NULL,
	@PasswordChangeDate Datetime = NULL,
	@LastPassword Varchar(50) = NULL,
	@DailyWages Money = NULL,
	@DepartmentID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [User2] (	Name,
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

)
VALUES (
	@Name,
	@FirstName,
	@LastName,
	@Password,
	@Active,
	@Lock,
	@ParentID,
	@TypeID,
	@ModifiedDate,
	@ContactNo,
	@Email,
	@LastLogon,
	@ChangePassword,
	@PasswordChangeDate,
	@LastPassword,
	@DailyWages,
	@DepartmentID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [User2] WITH(UPDLOCK) SET
	Name = @Name,
	FirstName = @FirstName,
	LastName = @LastName,
	Password = @Password,
	Active = @Active,
	Lock = @Lock,
	ParentID = @ParentID,
	TypeID = @TypeID,
	ModifiedDate = @ModifiedDate,
	ContactNo = @ContactNo,
	Email = @Email,
	LastLogon = @LastLogon,
	ChangePassword = @ChangePassword,
	PasswordChangeDate = @PasswordChangeDate,
	LastPassword = @LastPassword,
	DailyWages = @DailyWages,
	DepartmentID = @DepartmentID

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_User2]  TO [wswebuser]
GO
