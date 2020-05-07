SET QUOTED_IDENTIFIER OFF  
GO
SET ANSI_NULLS ON 
GO

IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_User2_Logon]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_User2_Logon]
GO

CREATE  Procedure Get_User2_Logon  
/**********************************************************  
Name		: Get_User2_Logon  
Created	: 03.05.2008
Table		: [User2]  
Notes		:	Selects records from [User2]
Updates	:  
 ***********************************************************/  
( @Name  VARCHAR(50)  
, @Password VARCHAR(50)
, @Attempt  SMALLINT = 0  
, @DTNow DATETIME
)  
AS  

SET NOCOUNT ON  
  
DECLARE @ID INT
, @PasswordDB VARCHAR(50)
, @PasswordChangeDate DATETIME
, @PasswordRemainingDays INT
, @LastLogon AS DATETIME
, @MaxPasswordAttempt INT
, @MaxPasswordDays INT

SELECT 
	@MaxPasswordAttempt = MaxPasswordAttempt,
	@MaxPasswordDays = MaxPasswordDays 
FROM System WITH(NOLOCK)  
  
SELECT @ID = ID
, @PasswordDB = Password
, @PasswordChangeDate = PasswordChangeDate
, @LastLogon = LastLogon
FROM User2 WITH(NOLOCK) 
WHERE Name = @Name  

SELECT @PasswordRemainingDays = ISNULL(DATEDIFF(DAY,@DTNow,@PasswordChangeDate),0)
  
-- Check the user password and, if good, update logon date; else, attempt lock  
IF NOT @ID IS NULL  
BEGIN  
		IF (@Password = @PasswordDB) 
		BEGIN
			IF @LastLogon IS NULL OR @PasswordRemainingDays >= @MaxPasswordDays
			BEGIN
					UPDATE User2 WITH(UPDLOCK)
					SET ChangePassword = 1 
					WHERE ID = @ID  
			END
			UPDATE User2 WITH(UPDLOCK) 
			SET LastLogon = @DTNow
			WHERE ID = @ID  

		SELECT
	 			[ID],
				[Name],
				[FirstName],
				[LastName],
				[Password],
				[ModifiedDate],
				[Active],
				[Lock],
				[ContactNo],
				[EMail],
				[TypeID],
				[LastLogon],
				[ChangePassword],
				[PasswordChangeDate],
				[LastPassword],
				@PasswordRemainingDays AS PasswordRemainingDays
			FROM [User2] WITH(NOLOCK)   
			WHERE (Name = @Name)  
		END
		ELSE  
		BEGIN  
			IF (@Attempt = @MaxPasswordAttempt) 
			BEGIN  
				UPDATE User2 WITH(UPDLOCK) 
				SET Lock = 1
				WHERE ID = @ID  
			END  
		END  
END  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
GRANT  EXECUTE  ON [dbo].[Get_User2_Logon]  TO [wswebuser]
GO


