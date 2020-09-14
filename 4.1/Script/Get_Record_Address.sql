SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Address]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Address]
GO
CREATE PROCEDURE Get_Record_Address
/**********************************************************
Name		: Get_Record_Address
Table		: Record_Address
Updates		:
**********************************************************/
(
	@RecordID [INT] = NULL
)
AS
SET NOCOUNT ON


	SELECT
	ID,
RecordID,
StreetName,
AddressL2,
City,
AddressState,
ZipCode,
CountryCode,
IsCurrent
	FROM [Record_Address] WITH(NOLOCK)
	WHERE RecordID= @RecordID

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Address]  TO [wswebuser]
GO
