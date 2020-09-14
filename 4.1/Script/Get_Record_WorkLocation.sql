SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_WorkLocation]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_WorkLocation]
GO
CREATE PROCEDURE Get_Record_WorkLocation
/**********************************************************
Name		: Get_Record_WorkLocation
Table		: Record_WorkLocation
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
	[Description],
	AddressL1,
	AddressL2,
	City,
	AddressState,
	ZipCode,
	CountryCode
	FROM [Record_WorkLocations] WITH(NOLOCK)
	WHERE RecordID= @RecordID
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_WorkLocation]  TO [wswebuser]
GO
