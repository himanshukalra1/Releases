SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_BatchPipeline]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_BatchPipeline]
GO
CREATE PROCEDURE Get_BatchPipeline
/**********************************************************
Name                   :Get_BatchPipeline
Table                  :Batch
Updates               :
**********************************************************/
(
  @PageNumber  INT     = 0   
  ,@NumOfRows  INT     = 10
  ,@SortField   VARCHAR(50)  = 'B.ID DESC'              
 , @SearchData	VARCHAR(2000) = NULL    
)
AS
SET NOCOUNT ON
DECLARE @SqlString nvarchar(max)
    Declare @UpperBand int
    Declare @LowerBand int        
    
    SET @LowerBand  = (@PageNumber) * @NumOfRows
    SET @UpperBand  = ((@PageNumber+1) * @NumOfRows) + 1    

    BEGIN

	SET @SqlString='Create table  #BATCH(RowNumber INT IDENTITY, ID INT, Name VARCHAR(200),CreatedDate Datetime, PassCount int,UserName varchar(200), CompanyName varchar(200))

			INSERT INTO #BATCH
			SELECT 
				B.ID,
				B.Name,
				B.CreatedDate, 
				B.PassCount,
				U.Name AS UserName,
	            C.Name AS CompanyName
				FROM [dbo].[Batch] B
				LEFT OUTER JOIN User2 U ON U.ID = UserID
				LEFT OUTER JOIN Company C ON C.ID = CompanyID ' 
			
				IF (ISNULL(@SearchData,'')<>'')
					SET @SqlString	=  @SqlString + 'WHERE ' + @SearchData    
			
				SET @SqlString	=  @SqlString + 'ORDER BY ' + @SortField   + ' 
		
		SELECT 
				ID,
				Name,
				CreatedDate, 
				PassCount,
				UserName,
				CompanyName
				FROM #BATCH 
				WHERE 
            RowNumber > ' + CONVERT(VARCHAR,@LowerBand) + 
            '  AND RowNumber < ' + CONVERT(VARCHAR, @UpperBand)
            
            
  SET @SqlString =@SqlString + ' SELECT COUNT(*)FROM #BATCH 
								drop table #BATCH'
   
            print @SqlString
	EXEC sp_executesql @SqlString
	
	            


    END

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_BatchPipeline]  TO [wswebuser]
GO
