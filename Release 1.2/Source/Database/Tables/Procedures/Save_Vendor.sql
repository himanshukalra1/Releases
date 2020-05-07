SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Vendor]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Vendor]
GO
CREATE PROCEDURE Save_Vendor
/**********************************************************
Name		: Save_Vendor
Table		: Vendor
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
	@Comments Varchar(8000) = NULL,
	@ContactPerson Varchar(100) = NULL,
	@Phone Varchar(20) = NULL,
	@Fax Varchar(20) = NULL,
	@Email Varchar(100) = NULL,
	@Active BIT = NULL,
	@GracePeriod int = NULL,
	@PaymentID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Vendor] (	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	Comments,
	ContactPerson,
	Phone,
	Fax,
	Email,
	Active,
	GracePeriod,
	PaymentID

)
VALUES (
	@Name,
	@AddressL1,
	@AddressL2,
	@City,
	@StateID,
	@PostalCode,
	@Comments,
	@ContactPerson,
	@Phone,
	@Fax,
	@Email,
	@Active,
	@GracePeriod,
	@PaymentID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Vendor] WITH(UPDLOCK) SET
	Name = @Name,
	AddressL1 = @AddressL1,
	AddressL2 = @AddressL2,
	City = @City,
	StateID = @StateID,
	PostalCode = @PostalCode,
	Comments = @Comments,
	ContactPerson = @ContactPerson,
	Phone = @Phone,
	Fax = @Fax,
	Email = @Email,
	Active = @Active,
	GracePeriod = @GracePeriod,
	PaymentID = @PaymentID

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
GRANT  EXECUTE  ON [DBO].[Save_Vendor]  TO [wswebuser]
GO
