SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Group2]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Group2]
GO
CREATE PROCEDURE Save_Group2
/**********************************************************
Name                   :Save_Group2
Table                   :Group2
Updates               :
**********************************************************/
(
@ID [INT] = NULL,
@Name VARCHAR(50) = NULL,
@Description VARCHAR(50) = NULL,
@Permissions VARCHAR(8000) = NULL
)
AS
SET NOCOUNT ON

DECLARE @PermissionID VARCHAR(50) 

IF EXISTS (SELECT ID FROM Group2 WHERE Name = @Name) AND ISNULL(@ID,0) = 0
	RAISERROR ('Please select a different name as the current group name exists already in the database.',16,1)

BEGIN TRAN

IF ISNULL( @ID,0)=0
	BEGIN
		INSERT [Group2] 
		(
			Name,
			Description
		)
		VALUES 
		(
			@Name,
			@Description
		)
		SELECT @ID = @@IDENTITY
	END
ELSE
	BEGIN
		UPDATE [Group2] WITH(UPDLOCK) SET
			Name = COALESCE(@Name,Name),
			Description = COALESCE(@Description,Description)
		WHERE ID = @ID
	END

DELETE FROM Group2_PERMISSION WITH(ROWLOCK)
WHERE GroupID= @ID

WHILE LEN(@Permissions) > 0
BEGIN
  IF CHARINDEX('|', @Permissions) > 0
  BEGIN
    SET @PermissionID =  LTRIM(RTRIM(SUBSTRING(@Permissions, 1, (CHARINDEX('|', @Permissions) -1))))
    INSERT INTO Group2_PERMISSION(GroupID,PermissionID) VALUES (@ID,@PermissionID)
    SET @Permissions = RIGHT(@Permissions, (LEN(@Permissions) - CHARINDEX('|', @Permissions)))
  END
END

IF (@@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	declare @sMsg varchar(800) 
	SET @sMsg = 'Error: Save_Group2 : GRP_ID=' + CAST (@ID AS VARCHAR) 
	RAISERROR (@sMsg,16,1)
	RETURN -1
END
ELSE
BEGIN
	COMMIT TRAN 
	RETURN 0 
END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Save_Group2]  TO [wswebuser]
GO
