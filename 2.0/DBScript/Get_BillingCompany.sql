SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_BillingCompany]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_BillingCompany]
GO
CREATE PROCEDURE Get_BillingCompany
/**********************************************************
Name		: Get_BillingCompany
Table		: BillingCompany
Updates		:
**********************************************************/
(
	@CompanyID[INT]
)
AS
SET NOCOUNT ON

BEGIN
	SELECT
	BillingID,
	b.Name,
	MonthOf,
	Created,
	u.Name 'User'
	FROM [BillingCompany] WITH(NOLOCK)
	INNER JOIN Billing b ON b.ID = BillingID
	INNER JOIN User2 u ON u.ID = b.UserID
	WHERE CompanyID= @CompanyID
	ORDER BY BillingID DESC
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_BillingCompany]  TO [wswebuser]
GO
