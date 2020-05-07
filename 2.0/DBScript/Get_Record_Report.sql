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
	br.CustomerRefNo,
	br.LeadNo,
	br.Name,
	br.DOB,
	br.ActualCaseType,
	br.SSN,
	at.Name As Action,
	v.Name As Vendor,
	ct2.Name As ContactType,
	br.ClientRemarks,
	br.ClientSplRemarks,
	br.RISComments,
	rh.CreatedDate as StatusDate,
	br.PrintCost,
	br.NoOfPages,
	br.CourtFee,
	br.SpecialFee,
	cy.Name As County,
	ct.Name As CaseType,
	br.Years,
	COUNT(R.ID) AS CaseCount  
	FROM [Batch_Record] br WITH(NOLOCK)
	LEFT OUTER JOIN [Record_Case] R on R.RecordID = br.ID 
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
	br.CourtFee,br.SpecialFee,br.CustomerRefNo,br.LeadNo,cy.Name ,br.Name,br.DOB,br.ActualCaseType,ct.Name,br.Years,
	br.SSN,at.Name ,v.Name ,ct2.Name ,	br.ClientRemarks,	br.ClientSplRemarks,	br.RISComments,	rh.CreatedDate 
	
	--order by County
GO	
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Report]  TO [wswebuser]
GO
