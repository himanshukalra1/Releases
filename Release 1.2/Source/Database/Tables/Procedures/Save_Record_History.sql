SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Record_History]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Record_History]
GO
CREATE PROCEDURE Save_Record_History
/**********************************************************
Name		: Save_Record_History
Table		: Record_History
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@RecordID Int = NULL,
	@CreatedDate datetime = NULL,
	@RecordStatusID Int = NULL,
	@UserID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Record_History] (	RecordID,
	CreatedDate,
	RecordStatusID,
	UserID

)
VALUES (
	@RecordID,
	@CreatedDate,
	@RecordStatusID,
	@UserID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Record_History] WITH(UPDLOCK) SET
	RecordID = @RecordID,
	CreatedDate = @CreatedDate,
	RecordStatusID = @RecordStatusID,
	UserID = @UserID

WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	SELECT @ID
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Record_History]  TO [wswebuser]
GO
