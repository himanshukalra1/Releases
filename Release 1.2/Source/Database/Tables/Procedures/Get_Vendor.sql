SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Vendor]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Vendor]
GO
CREATE PROCEDURE Get_Vendor
/**********************************************************
Name		: Get_Vendor
Table		: Vendor
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
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

	FROM [Vendor] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
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

	FROM [Vendor] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Vendor]  TO [wswebuser]
GO
