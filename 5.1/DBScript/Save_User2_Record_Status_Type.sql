SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_User2_Record_Status_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_User2_Record_Status_Type]
GO
CREATE PROCEDURE Save_User2_Record_Status_Type
/**********************************************************
Name		: Save_User2_Record_Status_Type
Table		: User2_Record_Status_Type
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@UserID Int = NULL,
	@RecordStatusTypeID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [User2_Record_Status_Type] (	UserID,
	RecordStatusTypeID

)
VALUES (
	@UserID,
	@RecordStatusTypeID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [User2_Record_Status_Type] WITH(UPDLOCK) SET
	UserID = @UserID,
	RecordStatusTypeID = @RecordStatusTypeID

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
GRANT  EXECUTE  ON [DBO].[Save_User2_Record_Status_Type]  TO [wswebuser]
GO
