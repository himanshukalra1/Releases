SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_BillingCompany]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_BillingCompany]
GO
CREATE PROCEDURE Save_BillingCompany
/**********************************************************
Name		: Save_BillingCompany
Table		: BillingCompany
Updates		:
**********************************************************/
(
	@BillingID [INT],
	@CompanyID [INT]
)
AS
SET NOCOUNT ON

BEGIN TRAN

INSERT [BillingCompany] (
BillingID,
CompanyID
)
VALUES (
@BillingID,
@CompanyID
)

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @CompanyID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_BillingCompany]  TO [wswebuser]
GO
