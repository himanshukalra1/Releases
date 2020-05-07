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
	@StatusID int
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
	br.RISComments

	FROM [Batch_Record] br WITH(NOLOCK)
	INNER JOIN Record_History rh ON rh.RecordID = br.ID
	LEFT OUTER JOIN Company c ON c.ID = br.CompanyID
	LEFT OUTER JOIN Case_Type ct ON ct.ID = br.CaseTypeID
	LEFT OUTER JOIN Action_Type at ON at.ID = br.ActionID
	LEFT OUTER JOIN Vendor v ON v.ID = br.VendorID
	LEFT OUTER JOIN Contact_Type ct2 ON ct2.ID = br.ContactTypeID
	LEFT OUTER JOIN County cy ON cy.ID = br.CountyID 		
	WHERE (rh.RecordStatusID=@StatusID) AND (rh.CreatedDate BETWEEN @From AND @To)

GO	
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Report]  TO [wswebuser]
GO
