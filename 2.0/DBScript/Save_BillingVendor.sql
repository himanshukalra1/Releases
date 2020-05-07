SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_BillingVendor]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_BillingVendor]
GO
CREATE PROCEDURE Save_BillingVendor
/**********************************************************
Name		: Save_BillingVendor
Table		: BillingVendor
Updates		:
**********************************************************/
(
	@BillingID [INT],
	@VendorID [INT]
)
AS
SET NOCOUNT ON

BEGIN TRAN

INSERT [BillingVendor] (
BillingID,
VendorID
)
VALUES (
@BillingID,
@VendorID
)

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @VendorID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_BillingVendor]  TO [wswebuser]
GO
