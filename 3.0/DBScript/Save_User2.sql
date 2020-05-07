SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_User2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_User2]
GO

CREATE Procedure Save_User2      
/**********************************************************      
Name		: Save_User2      
Created	: 01.05.2008
Table		: [Saves records in to User2]      
Notes		: 
Updates	:       
***********************************************************/      
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
	@DepartmentID Int = NULL,
	@Groups VARCHAR(8000) = NULL
)      
AS      

SET NOCOUNT ON   

DECLARE @GroupID VARCHAR(50)
BEGIN TRAN

IF ISNULL(@ID,0) = 0
	BEGIN
		INSERT [User2]
		(
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

		)	
		VALUES
		(
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
		DECLARE @CurrentPassword AS VARCHAR(50),
						@CurrentUserChangePassword BIT
		SELECT 
			@CurrentPassword = Password,
			@CurrentUserChangePassword = ChangePassword,
			@LastPassword = LastPassword,
			@PasswordChangeDate =GETDATE() 
		FROM User2 WITH (NOLOCK) WHERE ID=@ID

		--Handling change password and manually changing the password
		IF @Password IS NOT NULL 
		BEGIN		
			IF ((ISNULL(@CurrentUserChangePassword,0) = 1 AND @CurrentPassword <> @Password AND @Password <> ISNULL(@LastPassword,'') AND ISNULL(@ChangePassword,0)=0) OR 
				@CurrentPassword <> @Password AND @Password <> @LastPassword)
					SELECT @LastPassword = @CurrentPassword, @ChangePassword = 0
			ELSE
				BEGIN
					ROLLBACK TRAN
					RAISERROR('Please change your password before proceeding. The new password should not be same as current and previous password.',16,1)
					RETURN -1
				END
		END		

		UPDATE User2 WITH (UPDLOCK)
		SET
			Name = COALESCE(@Name,Name),
			FirstName = COALESCE(@FirstName,FirstName),
			LastName = COALESCE(@LastName,LastName),
			Password = COALESCE(@Password,Password),
			Active = COALESCE(@Active,Active),
			Lock = COALESCE(@Lock,Lock),
			ParentID = COALESCE(@ParentID,ParentID),
			TypeID = COALESCE(@TypeID,TypeID),
			ModifiedDate = COALESCE(@ModifiedDate,ModifiedDate),
			ContactNo = COALESCE(@ContactNo,ContactNo),
			Email = COALESCE(@Email,Email),
			LastLogon = COALESCE(@LastLogon,LastLogon),
			ChangePassword = COALESCE(@ChangePassword,ChangePassword),
			PasswordChangeDate = COALESCE(@PasswordChangeDate,PasswordChangeDate),
			LastPassword = COALESCE(@LastPassword,LastPassword),
			DailyWages = COALESCE(@DailyWages,DailyWages),
			DepartmentID = COALESCE(@DepartmentID,DepartmentID)
		WHERE [ID] = @ID

	END   

IF NOT @Groups  IS NULL
BEGIN
	DELETE FROM User2_Group2 WITH(ROWLOCK)
	WHERE UserID= @ID

	WHILE LEN(@Groups) > 0
	BEGIN
	  IF CHARINDEX('|', @Groups) > 0
	  BEGIN
		SET @GroupID =  LTRIM(RTRIM(SUBSTRING(@Groups, 1, (CHARINDEX('|', @Groups) -1))))
		INSERT INTO User2_Group2(UserID,GroupID) VALUES (@ID,@GroupID)
		SET @Groups = RIGHT(@Groups, (LEN(@Groups) - CHARINDEX('|', @Groups)))
	  END
	END
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	declare @sMsg varchar(800) 
	SET @sMsg = 'Error: Save_User2 : ID=' + CAST (@ID AS VARCHAR) 
	RAISERROR (@sMsg,16,1)
	RETURN -1
END
ELSE
BEGIN
	COMMIT TRAN 
	RETURN 0 
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

GRANT  EXECUTE  ON [dbo].[Save_User2]  TO [wswebuser]
GO
