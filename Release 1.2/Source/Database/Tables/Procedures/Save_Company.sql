SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Company]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Company]
GO
CREATE PROCEDURE Save_Company
/**********************************************************
Name		: Save_Company
Table		: Company
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name Varchar(500) = NULL,
	@AddressL1 Varchar(100) = NULL,
	@AddressL2 Varchar(100) = NULL,
	@City Varchar(50) = NULL,
	@StateID Int = NULL,
	@PostalCode Varchar(10) = NULL,
	@ContactPerson Varchar(100) = NULL,
	@Phone Varchar(100) = NULL,
	@Fax Varchar(100) = NULL,
	@Email Varchar(100) = NULL,
	@WebSite Varchar(100) = NULL,
	@Active BIT = NULL,
	@DTSMapping xml = NULL,
	@CaseTypeMapping xml = NULL,
	@Comments Varchar(8000) = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Company] (	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	ContactPerson,
	Phone,
	Fax,
	Email,
	WebSite,
	Active,
	DTSMapping,
	CaseTypeMapping,
	Comments

)
VALUES (
	@Name,
	@AddressL1,
	@AddressL2,
	@City,
	@StateID,
	@PostalCode,
	@ContactPerson,
	@Phone,
	@Fax,
	@Email,
	@WebSite,
	@Active,
	@DTSMapping,
	@CaseTypeMapping,
	@Comments

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Company] WITH(UPDLOCK) SET
	Name = @Name,
	AddressL1 = @AddressL1,
	AddressL2 = @AddressL2,
	City = @City,
	StateID = @StateID,
	PostalCode = @PostalCode,
	ContactPerson = @ContactPerson,
	Phone = @Phone,
	Fax = @Fax,
	Email = @Email,
	WebSite = @WebSite,
	Active = @Active,
	DTSMapping = @DTSMapping,
	CaseTypeMapping = @CaseTypeMapping,
	Comments = @Comments

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
GRANT  EXECUTE  ON [DBO].[Save_Company]  TO [wswebuser]
GO
