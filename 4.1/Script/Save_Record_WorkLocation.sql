SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Record_WorkLocation]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Record_WorkLocation]
GO
CREATE PROCEDURE Save_Record_WorkLocation
/**********************************************************
Name		: Save_Record_WorkLocation
Table		: Record_WorkLocation
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@RecordID int,
	@Description varchar(2000) = null,
	@AddressL1 varchar(2000) = null,
	@AddressL2 varchar(2000)= null,
	@City varchar(2000)= null,
	@AddressState varchar(500)= null,
	@ZipCode varchar(20)= null,
	@CountryCode  varchar(100)= null
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Record_WorkLocation] (RecordID,
	[Description],
	AddressL1,
	AddressL2,
	City,
	AddressState,
	ZipCode,
	CountryCode

)
VALUES (
	@RecordID,
	@Description,
	@AddressL1,
	@AddressL2,
	@City,
	@AddressState,
	@ZipCode,
	@CountryCode

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Record_WorkLocation] WITH(UPDLOCK) SET
	RecordID = @RecordID,
	Description = @Description,
	AddressL1 = @AddressL1,
	AddressL2 = @AddressL2,
	City = @City,
	AddressState = @AddressState,
	ZipCode = @ZipCode,
	CountryCode = @CountryCode

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
GRANT  EXECUTE  ON [DBO].[Save_Record_WorkLocation]  TO [wswebuser]
GO
