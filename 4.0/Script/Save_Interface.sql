SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Interface]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Interface]
GO
CREATE PROCEDURE Save_Interface
/**********************************************************
Name		: Save_Interface
Table		: Interface
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name varchar(5000),
	@CompanyID int,
	@URL varchar(5000),
	@UserName varchar(5000),
	@Password varchar(500),
	@UDF1 varchar(5000) = null,
	@UDF2 varchar(5000)= null,
	@UDF3 varchar(5000)= null,
	@UDF4 varchar(5000)= null,
	@UDF5 varchar(5000)= null,
	@UDF6  varchar(5000)= null
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Interface] ([Name],
	CompanyID,
	[URL],
	UserName,
	[Password],
	UDF1,
	UDF2,
	UDF3,
	UDF4,
	UDF5,
	UDF6

)
VALUES (
	@Name,
	@CompanyID,
	@URL,
	@UserName,
	@Password,
	@UDF1,
	@UDF2,
	@UDF3,
	@UDF4,
	@UDF5,
	@UDF6

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Interface] WITH(UPDLOCK) SET
	Name = @Name,
	CompanyID = @CompanyID,
	URL = @URL,
	UserName = @UserName,
	Password = @Password,
	UDF1 = @UDF1,
	UDF2 = @UDF2,
	UDF3 = @UDF3,
	UDF4 = @UDF4,
	UDF5 = @UDF5,
	UDF6 = @UDF6

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
GRANT  EXECUTE  ON [DBO].[Save_Interface]  TO [wswebuser]
GO
