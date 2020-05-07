SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Billing]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Billing]
GO
CREATE PROCEDURE Save_Billing
/**********************************************************
Name		: Save_Billing
Table		: Billing
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@Name varchar(50),
	@MonthOf Datetime,
	@Created Datetime,
	@UserID int,
	@Data xml 
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Billing] (	Name,
	MonthOf,
	Created,
	UserID,
	Data

)
VALUES (
	@Name,
	@MonthOf,
	@Created,
	@UserID,
	@Data

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Billing] WITH(UPDLOCK) SET
	Name = @Name,
	MonthOf = @MonthOf,
	Created = @Created,
	UserID = @UserID,
	Data = @Data

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
GRANT  EXECUTE  ON [DBO].[Save_Billing]  TO [wswebuser]
GO
