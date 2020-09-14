SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Record_Names]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Record_Names]
GO
CREATE PROCEDURE Save_Record_Names
/**********************************************************
Name		: Save_Record_Names
Table		: Record_Names
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@RecordID int,
	@FirstName varchar(2000) = null,
	@MiddleName varchar(2000) = null,
	@LastName varchar(200) = null,
	@IsCurrent bit = null,
	@IsCommon bit= null
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Record_Names] (RecordID,
FirstName,
MiddleName,
LastName,
IsCurrent,
IsCommon

)
VALUES (
@RecordID ,
	@FirstName ,
	@MiddleName ,
	@LastName ,
	@IsCurrent ,
	@IsCommon 

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Record_Names] WITH(UPDLOCK) SET
	RecordID =@RecordID,
FirstName=@FirstName,
MiddleName=@MiddleName,
LastName=@LastName,
IsCurrent=@IsCurrent,
IsCommon=@IsCommon

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
GRANT  EXECUTE  ON [DBO].[Save_Record_Names]  TO [wswebuser]
GO
