SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Batch_Record]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Batch_Record]
GO
CREATE PROCEDURE Delete_Batch_Record
/**********************************************************
Name		: Delete_Batch_Record
Table		: Batch_Record
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
	DELETE FROM Batch_Record WHERE ID = @ID
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
GRANT  EXECUTE  ON [DBO].[Delete_Batch_Record]  TO [wswebuser]
GO
