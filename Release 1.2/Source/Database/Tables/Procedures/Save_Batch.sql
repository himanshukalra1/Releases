SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Batch]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Batch]
GO
CREATE PROCEDURE Save_Batch
/**********************************************************
Name		: Save_Batch
Table		: Batch
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name Varchar(50) = NULL,
	@UserID Int = NULL,
	@CreatedDate Datetime = NULL,
	@CompanyID Int = NULL,
	@TotalCount Int = NULL,
	@PassCount Int = NULL,
	@FailCount Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Batch] (	Name,
	UserID,
	CreatedDate,
	CompanyID,
	TotalCount,
	PassCount,
	FailCount

)
VALUES (
	@Name,
	@UserID,
	@CreatedDate,
	@CompanyID,
	@TotalCount,
	@PassCount,
	@FailCount

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Batch] WITH(UPDLOCK) SET
	Name = @Name,
	UserID = @UserID,
	CreatedDate = @CreatedDate,
	CompanyID = @CompanyID,
	TotalCount = @TotalCount,
	PassCount = @PassCount,
	FailCount = @FailCount

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
GRANT  EXECUTE  ON [DBO].[Save_Batch]  TO [wswebuser]
GO
