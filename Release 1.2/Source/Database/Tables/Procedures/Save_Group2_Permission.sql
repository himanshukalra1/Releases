SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Group2_Permission]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Group2_Permission]
GO
CREATE PROCEDURE Save_Group2_Permission
/**********************************************************
Name		: Save_Group2_Permission
Table		: Group2_Permission
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@GroupID Int = NULL,
	@PermissionID Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Group2_Permission] (	GroupID,
	PermissionID

)
VALUES (
	@GroupID,
	@PermissionID

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Group2_Permission] WITH(UPDLOCK) SET
	GroupID = @GroupID,
	PermissionID = @PermissionID

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
GRANT  EXECUTE  ON [DBO].[Save_Group2_Permission]  TO [wswebuser]
GO
