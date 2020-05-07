SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Group2_Permission]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Group2_Permission]
GO
CREATE PROCEDURE Delete_Group2_Permission
/**********************************************************
Name		: Delete_Group2_Permission
Table		: Group2_Permission
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)>0
BEGIN
	DELETE FROM Group2_Permission WHERE ID = @ID
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN -1
END
ELSE
BEGIN
	COMMIT  TRAN
	RETURN 0
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Group2_Permission]  TO [wswebuser]
GO
