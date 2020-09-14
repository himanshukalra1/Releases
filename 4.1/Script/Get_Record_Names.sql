SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Names]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Names]
GO
CREATE PROCEDURE Get_Record_Names
/**********************************************************
Name		: Get_Record_Names
Table		: Record_Names
Updates		:
**********************************************************/
(
	@RecordID[INT] = NULL
)
AS
SET NOCOUNT ON


	SELECT
	ID,
	RecordID,
FirstName,
MiddleName,
LastName,
IsCurrent,
IsCommon
	FROM [Record_Names] WITH(NOLOCK)
	WHERE RecordID= @RecordID

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Names]  TO [wswebuser]
GO
