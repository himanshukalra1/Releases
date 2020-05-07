SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Vendor_CountyRate]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Vendor_CountyRate]
GO
CREATE PROCEDURE Get_Vendor_CountyRate
/**********************************************************
Name		: Get_Vendor_CountyRate
Table		: Vendor_CountyRate
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
	VendorID,
	CountyID,
	Rate

	FROM [Vendor_CountyRate] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	VendorID,
	CountyID,
	Rate

	FROM [Vendor_CountyRate] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Vendor_CountyRate]  TO [wswebuser]
GO
