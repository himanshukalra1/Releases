SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_User2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_User2]
GO
CREATE PROCEDURE Delete_User2
/**********************************************************
Name                   :Delete_User2
Table                   :WST_USER
Updates               :
**********************************************************/
(
@ID[INT] = NULL
)
AS
SET NOCOUNT ON
IF ISNULL( @ID,0)>0
BEGIN
EXEC Delete_User2_Group2 @ID
DELETE FROM User2 WHERE ID = @ID
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_User2]  TO [wswebuser]
GO
