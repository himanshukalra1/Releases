SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_System]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_System]
GO
CREATE PROCEDURE Save_System
/**********************************************************
Name		: Save_System
Table		: System
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@MaxPasswordAttempt Int = NULL,
	@MaxPasswordDays Int = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [System] (	MaxPasswordAttempt,
	MaxPasswordDays

)
VALUES (
	@MaxPasswordAttempt,
	@MaxPasswordDays

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [System] WITH(UPDLOCK) SET
	MaxPasswordAttempt = @MaxPasswordAttempt,
	MaxPasswordDays = @MaxPasswordDays

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
GRANT  EXECUTE  ON [DBO].[Save_System]  TO [wswebuser]
GO
