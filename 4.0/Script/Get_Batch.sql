SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Batch]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Batch]
GO
CREATE PROCEDURE Get_Batch  
/**********************************************************  
Name  : Get_Batch  
Table  : Batch  
Updates  :  
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
 UserID,  
 CreatedDate,  
 CompanyID,  
 TotalCount,  
 PassCount,  
 FailCount,
 Imported  
  
 FROM [Batch] WITH(NOLOCK)  
 WHERE ID= @ID  
END  
ELSE  
BEGIN  
 SELECT  
 ID,  
 Name,  
 UserID,  
 CreatedDate,  
 CompanyID,  
 TotalCount,  
 PassCount,  
 FailCount ,
 Imported 
  
 FROM [Batch] WITH(NOLOCK)  
END  
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Batch]  TO [wswebuser]
GO