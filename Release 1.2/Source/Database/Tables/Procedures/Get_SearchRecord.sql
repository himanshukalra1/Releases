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
DECLARE @NameSent varchar(8000),@County varchar(200),@DOB datetime, @CaseTypeID int
DECLARE @strName VARCHAR(2000),@ind Int,@ind1 Int, @separator VARCHAR(200),@separator1 VARCHAR(200), @strFName VARCHAR(200), @strLName VARCHAR(200)

select @separator = '~', @separator1 =','

SELECT @NameSent = br.Name, @County = cy.Name, @DOB=br.DOB ,@CaseTypeID = br.CaseTypeID  
FROM Batch_Record br
LEFT OUTER JOIN County cy on cy.ID = br.CountyID
WHERE br.ID = @ID    

BEGIN
	SELECT @NameSent = replace(@NameSent, 'aka:', @separator)
	SELECT @NameSent = replace(@NameSent, '/', @separator)
	SELECT @NameSent = replace(@NameSent, '\', @separator)
	
	SELECT @NameSent = @NameSent + @separator

	Create table  #SEARCH(ID INT IDENTITY, RecordID INT )

	
	IF(@NameSent is not null)
	BEGIN
		SET @ind = CharIndex(@separator,@NameSent)
		
		--1st While loop for more than 1 names in one col separator by @separator
		WHILE @ind > 0 
		BEGIN
			SET @strName = LTRIM(RTRIM(SUBSTRING(@NameSent,1,@ind-1)))
			SET @NameSent = SUBSTRING(@NameSent,@ind+1,LEN(@NameSent)-@ind)

			IF(LEN(@strName)>0)
			BEGIN
				--Use @separator1 for separating FName and LName
				SET @ind1 = CharIndex(@separator1,@strName) 
				SET @strLName = LTRIM(RTRIM(SUBSTRING(@strName,1,@ind1-1)))
				SET @strFName = SUBSTRING(@strName,@ind1+1,LEN(@strName)-@ind1)
				--Ignore MName
				SET @ind1 = CharIndex(@separator1,@strFName)
				IF (@ind1>0)
					SET @strFName = SUBSTRING(@strFName,@ind1+1,LEN(@strFName)-@ind1)
				--Ignore MName End
				
				INSERT INTO #SEARCH
				SELECT B.ID FROM Batch_Record B
				LEFT OUTER JOIN County cy on cy.ID = B.CountyID
				WHERE B.ID <>@ID   AND @County = cy.Name AND @CaseTypeID = B.CaseTypeID AND  
				( B.Name like '%' + @strName + '%')
			END
			SET @ind = CharIndex(@separator,@NameSent)
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
		CS.IsCivil AS IsCivil
		FROM [dbo].Batch_Record B
		LEFT OUTER JOIN Company C ON C.ID = CompanyID 
		LEFT OUTER JOIN Record_Status_Type RS ON RS.ID = RecordStatusID 
		LEFT OUTER JOIN Case_Type CS ON CS.ID = CaseTypeID 
		LEFT OUTER JOIN Action_Type A ON A.ID = ActionID
		LEFT OUTER JOIN County cy on cy.ID = B.CountyID		
		WHERE B.ID in (SELECT RecordID FROM #SEARCH)
		
	DROP TABLE  #SEARCH
END    

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_RecordSearch]  TO [wswebuser]
GO



