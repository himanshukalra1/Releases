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
DECLARE @Name varchar(8000),@County varchar(200),@DOB datetime, @CaseTypeID int
DECLARE @str VARCHAR(200),@ind Int, @seprator VARCHAR(200)

select @seprator = '~'

SELECT @Name = Name, @County = County, @DOB=DOB ,@CaseTypeID = CaseTypeID  FROM Batch_Record 
WHERE ID = @ID  

BEGIN
	SELECT @Name = replace(@Name, 'aka:', @seprator)
	SELECT @Name = replace(@Name, '/', @seprator)
	SELECT @Name = replace(@Name, '\', @seprator)
	
	SELECT @Name = @Name + @seprator

	Create table  #SEARCH(ID INT IDENTITY, RecordID INT )

	
	IF(@Name is not null)
	BEGIN
		SET @ind = CharIndex(@seprator,@Name)
		WHILE @ind > 0
		BEGIN
			SET @str = LTRIM(RTRIM(SUBSTRING(@Name,1,@ind-1)))
			SET @Name = SUBSTRING(@Name,@ind+1,LEN(@Name)-@ind)

			IF(LEN(@str)>0)
			BEGIN
				INSERT INTO #SEARCH
				SELECT ID FROM Batch_Record B
				WHERE B.ID <>@ID   AND @County = B.County AND @CaseTypeID = B.CaseTypeID AND
				( Name like '%' + @str + '%')
			END
			SET @ind = CharIndex(@seprator,@Name)
		END
	END
  
      
	SELECT 
		B.ID,
		C.Name AS CompanyName,
		B.ReceivedDate ,
		RS.Name AS RecordStatusName,
		B.County,
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



