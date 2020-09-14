SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Record_Address]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Record_Address]
GO
CREATE PROCEDURE Save_Record_Address
/**********************************************************
Name		: Save_Record_Address
Table		: Record_Address
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@RecordID int,
	@StreetName varchar(2000) = null,
	@AddressL2 varchar(2000) = null,
	@City varchar(2000) = null,
	@AddressState varchar(500)= null,
	@ZipCode varchar(20)= null,
	@CountryCode varchar(20)= null,
	@IsCurrent bit= null
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Record_Address] (
RecordID,
StreetName,
AddressL2,
City,
AddressState,
ZipCode,
CountryCode,
IsCurrent

)
VALUES (
	@RecordID,
	@StreetName,
	@AddressL2,
	@City,
	@AddressState,
	@ZipCode,
	@CountryCode,
	@IsCurrent

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Record_Address] WITH(UPDLOCK) SET
	RecordID = @RecordID,
	StreetName = @StreetName,
	AddressL2 = @AddressL2,
	City = @City,
	AddressState = @AddressState,
	ZipCode = @ZipCode,
	CountryCode = @CountryCode,
	IsCurrent = @IsCurrent

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
GRANT  EXECUTE  ON [DBO].[Save_Record_Address]  TO [wswebuser]
GO
