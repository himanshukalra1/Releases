SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_RecordPipeline]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_RecordPipeline]
GO
CREATE PROCEDURE Get_RecordPipeline
/**********************************************************
Name                   :Get_RecordPipeline
Table                  :BatchRecord
Updates               :
**********************************************************/
(
  @PageNumber  INT     = 0   
  ,@NumOfRows  INT     = 10
  ,@SortField   VARCHAR(50)  = 'B.ID DESC'         
 , @SearchData	VARCHAR(2000) = ' 1 =1 '    
)
AS
SET NOCOUNT ON
DECLARE @SqlString nvarchar(max)
Declare @UpperBand int
Declare @LowerBand int        
    
    SET @LowerBand  = (@PageNumber) * @NumOfRows
    SET @UpperBand  = ((@PageNumber+1) * @NumOfRows) + 1    

    BEGIN

	   
		SET @SqlString= 'Create table  #BatchRecord(RowNumber INT IDENTITY, ID INT, CompanyName VARCHAR(200), ReceivedDate Datetime, CreatedDate Datetime, CustomerRefNo VARCHAR(200),RecordStatusName varchar(200), County varchar(200),Name VARCHAR(200),DOB DATETIME,CaseTypeName VARCHAR(200),Years INT,ActionTypeName VARCHAR(200),ClientRemarks VARCHAR(8000),ClientSplRemarks VARCHAR(MAX), CaseCount INT, CRNCount INT, StateName VARCHAR(50))
					INSERT INTO #BatchRecord
					SELECT 
						B.ID,
						C.Name AS CompanyName,
						B.ReceivedDate ,
						B.CreatedDate ,
						B.CustomerRefNo,
						RS.Name AS RecordStatusName,
						CY.Name As County,
						Replace(B.Name,'''''''',''''),
						B.DOB,
						CS.Name AS CaseTypeName,
						B.Years,
						A.Name AS ActionTypeName,
						B.ClientRemarks,
						B.ClientSplRemarks,
						COUNT(RC.RecordID) AS CaseCount,
						CRNCount.Value As CRNCount,
						st.Name AS StateName
						FROM [dbo].Batch_Record B
						LEFT OUTER JOIN Company C ON C.ID = CompanyID 
						LEFT OUTER JOIN Record_Status_Type RS ON RS.ID = RecordStatusID 
						LEFT OUTER JOIN Case_Type CS ON CS.ID = CaseTypeID 
						LEFT OUTER JOIN Action_Type A ON A.ID = ActionID
						LEFT OUTER JOIN Record_Case RC ON RC.RecordID = B.ID 
						LEFT OUTER JOIN County CY ON CY.ID = B.CountyID
						LEFT OUTER JOIN State_Type st ON st.ID = B.StateID
						OUTER APPLY (SELECT COUNT(ID) AS Value 
						FROM Batch_Record B2 where B2.BatchID = B.BatchID and B2.CustomerRefNo = B.CustomerRefNo
						GROUP BY B2.CustomerRefNo HAVING COUNT(B2.CustomerRefNo) > 0) CRNCount' 

		SET @SqlString	=  @SqlString + ' WHERE ' + @SearchData    
		SET @SqlString	=  @SqlString + ' GROUP BY B.ID,C.Name, B.ReceivedDate, B.CreatedDate, B.CustomerRefNo,RS.Name,CY.Name,B.Name,B.DOB,CS.Name,B.Years,A.Name,B.ClientRemarks,B.ClientSplRemarks, CY.Name, CRNCount.Value, st.Name'
		SET @SqlString	=  @SqlString + ' ORDER BY ' + @SortField   

		SET @SqlString	=  @SqlString + ' SELECT * FROM #BatchRecord 
										WHERE  RowNumber > ' + CONVERT(VARCHAR,@LowerBand) + ' AND RowNumber < ' + CONVERT(VARCHAR, @UpperBand)

		SET @SqlString =@SqlString + ' SELECT COUNT(*)FROM #BatchRecord 
								DROP TABLE #BatchRecord'

		EXEC sp_executesql @SqlString          


    END



GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_RecordPipeline]  TO [wswebuser]
GO
