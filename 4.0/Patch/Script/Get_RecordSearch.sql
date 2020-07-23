SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_RecordSearch]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_RecordSearch]
GO
CREATE PROCEDURE Get_RecordSearch
/**********************************************************  
Name                   :Get_RecordSearch  
Table                  :BatchRecord  
Updates               :  
**********************************************************/  
(  
  @ID  INT      
)  
AS  
SET NOCOUNT ON  
DECLARE @NameSent varchar(8000),@CountyID int,@DOB datetime, @CaseTypeID int  
DECLARE @strName VARCHAR(8000),@ind Int,@ind1 Int, @sep VARCHAR(5),@sep1 VARCHAR(5), @sep2 VARCHAR(5), @strFName VARCHAR(8000), @strLName VARCHAR(8000)  
DECLARE @strQry nvarchar(4000), @strWhere varchar(8000)  
  
select @sep = '~', @sep1 =',', @sep2 =' '  
  
SELECT @NameSent = Replace(br.Name,'''',''), @CountyID = CountyID, @DOB=br.DOB ,@CaseTypeID = br.CaseTypeID
FROM Batch_Record br  
WHERE br.ID = @ID      
  
BEGIN  
 SELECT @NameSent = replace(@NameSent, 'aka:', @sep)  
 SELECT @NameSent = replace(@NameSent, '/', @sep)  
 SELECT @NameSent = replace(@NameSent, '\', @sep)  
   
 SELECT @NameSent = @NameSent + @sep  
  
 Create table  #SEARCH(ID INT IDENTITY, RecordID INT )  
  
   
 IF(@NameSent is not null)  
 BEGIN  
  SET @ind = CharIndex(@sep,@NameSent)  
    
  --1st While loop for more than 1 names in one col separator by @sep  
  WHILE @ind > 0   
  BEGIN  
   SET @strName = LTRIM(RTRIM(SUBSTRING(@NameSent,1,@ind-1)))  
   SET @NameSent = SUBSTRING(@NameSent,@ind+1,LEN(@NameSent)-@ind)  
  
  
   IF(LEN(@strName)>0)  
   BEGIN  
    --Use @sep1 for separating FName and LName  
      
    SET @ind1 = CharIndex(@sep1,@strName)   
    IF(@ind1>0)  
    Begin  
      
     SET @strLName = LTRIM(RTRIM(SUBSTRING(@strName,1,@ind1-1)))  
     SET @strFName = SUBSTRING(@strName,@ind1+1,LEN(@strName)-@ind1)  
     /*--Ignore MName  
     SET @ind1 = CharIndex(@sep1,@strFName)  
     IF (@ind1>0)  
      SET @strFName = SUBSTRING(@strFName,@ind1+1,LEN(@strFName)-@ind1)  
     --Ignore MName End*/  
       
     SELECT @strLName = REPLACE(LTRIM(RTRIM(@strLName)),@sep2,'%'' OR B.Name like ''%')  
     SELECT @strLName = '(B.Name like ''%' + @strLName  + '%'')'  
       
     SELECT @strFName = REPLACE(LTRIM(RTRIM(@strFName)),@sep2,'%'' OR B.Name like ''%')  
     print @strFName   
     SELECT @strFName = '(B.Name like ''%' + @strFName  + '%'')'  
     print @strFName   
     SELECT @strWhere = ' (' + @strFName + ' AND ' +  @strLName + ')'  
       
       
    END  
    ELSE  
    BEGIN  
      
         
     SELECT @strWhere = '(B.Name LIKE ''%' + LTRIM(RTRIM(@strName)) +'%'')'  
     PRINT @strWhere   
    END  
      
    SELECT @strQry = 'INSERT INTO #SEARCH  
     SELECT TOP 20 B.ID FROM Batch_Record B  
     WHERE B.ID <> ' + CAST(@ID AS NVARCHAR(20)) + '     
     AND B.CountyID = ' + CAST(ISNULL(@CountyID,'') AS NVARCHAR(20)) + '   
     AND B.CaseTypeID = ' + CAST(ISNULL(@CaseTypeID,'') AS NVARCHAR(20)) + '       
     AND ' + @strWhere   + ' 
     order by B.ID desc
     '
       
    print @strQry  
    EXEC sp_executesql @strQry  
      
   END  
   SET @ind = CharIndex(@sep,@NameSent)  
  END  
 END  
    
        
 SELECT   
  B.ID,  
  C.Name AS CompanyName,  
  B.ReceivedDate ,  
  B.CreatedDate ,  
  RS.Name AS RecordStatusName,  
  cy.Name as County,  
  B.Name,  
  B.DOB,  
  CS.Name AS CaseTypeName,  
  B.Years,  
  A.Name AS ActionTypeName,  
  B.OldResult + '/' + B.TableName AS OldResult,  
  CS.IsCivil AS IsCivil  
  FROM [dbo].Batch_Record B  
  LEFT OUTER JOIN Company C WITH(NOLOCK) ON C.ID = CompanyID   
  LEFT OUTER JOIN Record_Status_Type RS WITH(NOLOCK) ON RS.ID = RecordStatusID   
  LEFT OUTER JOIN Case_Type CS WITH(NOLOCK) ON CS.ID = CaseTypeID   
  LEFT OUTER JOIN Action_Type A WITH(NOLOCK) ON A.ID = ActionID  
  LEFT OUTER JOIN County cy WITH(NOLOCK) on cy.ID = B.CountyID    
  WHERE B.ID in (SELECT RecordID FROM #SEARCH)  
    order by B.ID desc
 DROP TABLE  #SEARCH  
END  

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_RecordSearch]  TO [wswebuser]
GO



