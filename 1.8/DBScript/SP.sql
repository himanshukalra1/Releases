SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Detail_Comments]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Detail_Comments]
GO
CREATE PROCEDURE Get_Record_Detail_Comments
/**********************************************************
Name		: Get_Record_Detail_Comments
Table		: Record_Detail_Comments
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	u.ID,
	CaseID,
	CreatedDate,
	UserID,
	Description,
	u.Name as 'User'
	FROM [Record_Detail_Comments] rdc WITH(NOLOCK)
	INNER JOIN User2 u ON u.ID = rdc.UserID
	WHERE rdc.CaseID= @ID
END
ELSE
BEGIN
	SELECT
	u.ID,
	CaseID,
	CreatedDate,
	UserID,
	Description,
	u.Name as 'User'
	FROM [Record_Detail_Comments] rdc WITH(NOLOCK)
	INNER JOIN User2 u ON U.ID = rdc.ID

END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Detail_Comments]  TO [wswebuser]
GO


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Save_Record_Detail_Comments]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Save_Record_Detail_Comments]
GO
CREATE PROCEDURE Save_Record_Detail_Comments
/**********************************************************
Name		: Save_Record_Detail_Comments
Table		: Record_Detail_Comments
Updates		:
**********************************************************/
(
	@ID [INT] = NULL,
	@CaseID Int = NULL,
	@CreatedDate Datetime = NULL,
	@UserID Int = NULL,
	@Description Varchar(8000) = NULL
)
AS
SET NOCOUNT ON

BEGIN TRAN

IF ISNULL(@ID, 0)=0
BEGIN
INSERT [Record_Detail_Comments] (	CaseID,
	CreatedDate,
	UserID,
	Description

)
VALUES (
	@CaseID,
	@CreatedDate,
	@UserID,
	@Description

)
SELECT @ID = @@IDENTITY
END
ELSE
BEGIN
UPDATE [Record_Detail_Comments] WITH(UPDLOCK) SET
	CaseID = @CaseID,
	CreatedDate = @CreatedDate,
	UserID = @UserID,
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
GRANT  EXECUTE  ON [DBO].[Save_Record_Detail_Comments]  TO [wswebuser]
GO


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Vendor]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Vendor]
GO
CREATE PROCEDURE Get_Vendor
/**********************************************************
Name		: Get_Vendor
Table		: Vendor
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@CODE VARCHAR(100) = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	Comments,
	ContactPerson,
	Phone,
	Fax,
	Email,
	Active,
	GracePeriod,
	PaymentID

	FROM [Vendor] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
IF ISNULL(@CODE, '')<>''
BEGIN
	SELECT
	ID,
	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	Comments,
	ContactPerson,
	Phone,
	Fax,
	Email,
	Active,
	GracePeriod,
	PaymentID
	FROM [Vendor] WITH(NOLOCK)
	WHERE Name like @CODE +'-%'
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	AddressL1,
	AddressL2,
	City,
	StateID,
	PostalCode,
	Comments,
	ContactPerson,
	Phone,
	Fax,
	Email,
	Active,
	GracePeriod,
	PaymentID

	FROM [Vendor] WITH(NOLOCK)
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Vendor]  TO [wswebuser]
GO


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Status_Type]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Status_Type]
GO
CREATE PROCEDURE Get_Record_Status_Type
/**********************************************************
Name		: Get_Record_Status_Type
Table		: Record_Status_Type
Updates		:
**********************************************************/
(
	@ID[INT] = NULL
)
AS
SET NOCOUNT ON

IF ISNULL(@ID, 0)>0
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Record_Status_Type] WITH(NOLOCK)
	WHERE ID= @ID
END
ELSE
BEGIN
	SELECT
	ID,
	Name,
	Value

	FROM [Record_Status_Type] WITH(NOLOCK)
	order by SortOrder
END
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Status_Type]  TO [wswebuser]
GO


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Report]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Report]
GO
CREATE PROCEDURE Get_Record_Report
/**********************************************************
Name		: Get_Record_Report
Table		: [Batch_Record]
Updates	:
**********************************************************/
(
	@From datetime,
	@To datetime,
	@StatusID int,
	@CompanyID int,
	@CountyID int
)
AS
SET NOCOUNT ON
print @StatusID
	SELECT
	br.CreatedDate,
	br.ModifiedDate,
	c.Name As Company,
	br.ReceivedDate,
	br.SentDate,
	br.PrintCost,
	br.NoOfPages,
	br.CourtFee,
	br.CustomerRefNo,
	br.LeadNo,
	cy.Name As County,
	br.Name,
	br.DOB,
	br.ActualCaseType,
	ct.Name As CaseType,
	br.Years,
	br.SSN,
	at.Name As Action,
	v.Name As Vendor,
	ct2.Name As ContactType,
	br.ClientRemarks,
	br.ClientSplRemarks,
	br.RISComments,
	rh.CreatedDate as StatusDate,
	COUNT(C2.ID) AS CaseCount  
	FROM [Batch_Record] br WITH(NOLOCK)
	LEFT OUTER JOIN [Record_Case] R on R.RecordID = br.ID 
	LEFT OUTER JOIN [Case2] C2 on R.ID = C2.CaseID    
	INNER JOIN Record_History rh ON rh.RecordID = br.ID
	LEFT OUTER JOIN Company c ON c.ID = br.CompanyID
	LEFT OUTER JOIN Case_Type ct ON ct.ID = br.CaseTypeID
	LEFT OUTER JOIN Action_Type at ON at.ID = br.ActionID
	LEFT OUTER JOIN Vendor v ON v.ID = br.VendorID
	LEFT OUTER JOIN Contact_Type ct2 ON ct2.ID = br.ContactTypeID
	LEFT OUTER JOIN County cy ON cy.ID = br.CountyID 		
	WHERE (rh.RecordStatusID=@StatusID) AND (rh.CreatedDate BETWEEN @From AND @To)
	AND (@CompanyID = 0 OR @CompanyID = br.CompanyID )
	AND (@CountyID = 0 OR @CountyID = br.CountyID )
	GROUP BY br.CreatedDate,br.ModifiedDate,c.Name,br.ReceivedDate,br.SentDate,br.PrintCost,br.NoOfPages,
	br.CourtFee,br.CustomerRefNo,br.LeadNo,cy.Name ,br.Name,br.DOB,br.ActualCaseType,ct.Name,br.Years,
	br.SSN,at.Name ,v.Name ,ct2.Name ,	br.ClientRemarks,	br.ClientSplRemarks,	br.RISComments,	rh.CreatedDate 
GO	
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Report]  TO [wswebuser]
GO


