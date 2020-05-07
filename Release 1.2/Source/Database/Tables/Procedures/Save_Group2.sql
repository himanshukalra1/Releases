SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Group2]
GO
CREATE PROCEDURE Save_Group2
/**********************************************************
Name		: Save_Group2
Table		: Group2
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name Varchar(50) = NULL,
	@Description Varchar(50) = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Group2] (	Name,
	Description

)
VALUES (
	@Name,
	@Description

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Group2] WITH(UPDLOCK) SET
	Name = @Name,
	Description = @Description

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
GRANT  EXECUTE  ON [DBO].[Save_Group2]  TO [wswebuser]
GO
