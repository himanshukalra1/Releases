SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Vendor_CountyRate]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Vendor_CountyRate]
GO
CREATE PROCEDURE Save_Vendor_CountyRate
/**********************************************************
Name		: Save_Vendor_CountyRate
Table		: Vendor_CountyRate
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@VendorID Int = NULL,
	@CountyID Int = NULL,
	@Rate Money = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Vendor_CountyRate] (	VendorID,
	CountyID,
	Rate

)
VALUES (
	@VendorID,
	@CountyID,
	@Rate

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Vendor_CountyRate] WITH(UPDLOCK) SET
	VendorID = @VendorID,
	CountyID = @CountyID,
	Rate = @Rate

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
GRANT  EXECUTE  ON [DBO].[Save_Vendor_CountyRate]  TO [wswebuser]
GO
