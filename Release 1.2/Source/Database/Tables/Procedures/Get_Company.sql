SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Company]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Company]
GO
CREATE PROCEDURE Get_Company
/**********************************************************
Name		: Get_Company
Table		: Company
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
	ContactPerson,
	Phone,
	Fax,
	Email,
	WebSite,
	Active,
	DTSMapping,
	CaseTypeMapping,
	Comments

	FROM [Company] WITH(NOLOCK)
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
	ContactPerson,
	Phone,
	Fax,
	Email,
	WebSite,
	Active,
	DTSMapping,
	CaseTypeMapping,
	Comments

	FROM [Company] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Company]  TO [wswebuser]
GO
