SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Delete_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Delete_Group2]
GO
CREATE PROCEDURE Delete_Group2
/**********************************************************
Name                   :Delete_Group2
Table                   :Group2
Updates               :
**********************************************************/
(
@ID[INT] = NULL
)
AS
SET NOCOUNT ON
IF ISNULL( @ID,0)>0
BEGIN
EXEC Delete_Group2_Permission @ID
DELETE FROM Group2 WHERE ID = @ID
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Delete_Group2]  TO [wswebuser]
GO
