SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Record_Case_Report]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Record_Case_Report]
GO
CREATE PROCEDURE Get_Record_Case_Report
/**********************************************************
Name		: Get_Record_Case_Report
Table		: Record_Case
Updates		:
**********************************************************/
(
	@ID[INT] = NULL,
	@RecordID[INT] = NULL
	
)
AS
SET NOCOUNT ON

	SELECT  
 RC.ID,  
 RC.RecordID,  
 RC.CreatedDate,  
 RC.ModifiedDate,  
 RC.NameFound,  
 RC.DOBFound,  
 RC.Alias,  
 RC.CaseNumber,  
 RC.ViolationDate,  
 RC.FileDate,  
 RC.DispoDate,  
 RC.ProbationType,  
 RC.FileFee,  
 RC.Restitution,  
 RC.Jail,  
 RC.JailCredit,  
 RC.SentencingDetail,  
 CO.Name AS CompanyName,  
 BR.CustomerRefNo,  
 CY.Name As County,  
 CT.IsCivil,  
 CT.Value AS CaseTypeValue, 
 DistrictCourt,  
 CaseTypeLevel,  
 CaseName,  
 Plaintiff,  
 Defendant,  
 StatusJudgment,  
 Br.PrintCost,  
 Br.NoOfPages,  
 RC.AdditionalIdentifier  ,
 br.Name,
 br.DOB  
 FROM Batch_Record BR  WITH(NOLOCK)  
 LEFT OUTER JOIN [Record_Case] RC ON RecordID = BR.ID  
 LEFT OUTER JOIN Company CO ON CO.ID = BR.CompanyID   
 LEFT OUTER JOIN Case_Type CT ON CT.ID = BR.CaseTypeID   
 LEFT OUTER JOIN County CY ON CY.ID = BR.CountyID    
 WHERE (@ID IS NULL OR RC.ID= @ID) AND (@RecordID IS NULL OR @RecordID = BR.ID)  
  

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Record_Case_Report]  TO [wswebuser]
GO
