SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_History]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_History]
GO
CREATE PROCEDURE Get_Record_History
/**********************************************************
Name		: Get_Record_History
Table		: Record_History
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@RecordID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	RecordID,
	CreatedDate,
	RecordStatusID,
	UserID

	FROM [Record_History] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE IF ISNULL(@RecordID, 0)>0
BEGIN
	SELECT
	rh.ID,
	RecordID,
	CreatedDate,
	RecordStatusID,
	UserID,
	rst.Name As 'Status',
	u.Name As 'By'
	FROM [Record_History] rh WITH(NOLOCK)
	LEFT OUTER JOIN Record_Status_Type rst WITH (NOLOCK) ON rst.ID = RecordStatusID
	LEFT OUTER JOIN User2 u WITH (NOLOCK) ON u.ID = UserID
	WHERE RecordID= @RecordID
END
ELSE
BEGIN
	SELECT
	ID,
	RecordID,
	CreatedDate,
	RecordStatusID,
	UserID

	FROM [Record_History] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_History]  TO [wswebuser]
GO
