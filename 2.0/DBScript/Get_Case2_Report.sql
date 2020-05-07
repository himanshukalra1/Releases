SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON
GO
IF EXISTS (SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[Get_Case2_Report]') AND OBJECTPROPERTY(ID, N'ISPROCEDURE') = 1)
DROP PROCEDURE [DBO].[Get_Case2_Report]
GO
CREATE PROCEDURE Get_Case2_Report
/**********************************************************
Name		: Get_Case2_Report
Table		: Case2
Updates		:
**********************************************************/
(
	@CaseID[INT] 
)
AS
SET NOCOUNT ON

	SELECT
	CaseID,
	Description,
	L.Name AS  LevelTypeName,
	P.Name	AS PleaTypeName,
	D.Name AS DispositionTypeName,
	C2.ProbationType AS ProbationType ,
	C2.FileFee AS FileFee,
	C2.Restitution AS Restitution,
	C2.SentencingDetail AS SentencingDetail

	FROM [Case2] C2 WITH(NOLOCK)
	LEFT OUTER JOIN Level_Type L ON L.ID = C2.LevelTypeID
	LEFT OUTER JOIN Plea_Type P ON P.ID = C2.PleaTypeID
	LEFT OUTER JOIN Disposition_Type D ON D.ID = C2.DispositionTypeID
	WHERE C2.CaseID = @CaseID
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
GRANT  EXECUTE  ON [DBO].[Get_Case2_Report]  TO [wswebuser]
GO
