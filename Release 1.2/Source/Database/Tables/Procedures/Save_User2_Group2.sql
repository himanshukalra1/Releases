SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_User2_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_User2_Group2]
GO
CREATE PROCEDURE Save_User2_Group2
/**********************************************************
Name		: Save_User2_Group2
Table		: User2_Group2
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@UserID Int = NULL,
	@GroupID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [User2_Group2] (	UserID,
	GroupID

)
VALUES (
	@UserID,
	@GroupID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [User2_Group2] WITH(UPDLOCK) SET
	UserID = @UserID,
	GroupID = @GroupID

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
GRANT  EXECUTE  ON [DBO].[Save_User2_Group2]  TO [wswebuser]
GO
