
/* Data for table Case_Type */
SET IDENTITY_INSERT Case_Type ON
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 22)
UPDATE Case_Type SET Name = 'BANKRUPTCY', Value = 'BNKRPT', IsCivil = 0 WHERE ID = 22
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (22, 'BANKRUPTCY', 'BNKRPT', 0)
GO

SET IDENTITY_INSERT Case_Type OFF
GO



/* Data for table Record_Status_Type */
SET IDENTITY_INSERT Record_Status_Type ON
GO
IF EXISTS(SELECT ID FROM Record_Status_Type WHERE ID = 49)
UPDATE Record_Status_Type SET Name = 'Auto Hit', Value = 'AutoHit', SortOrder = 49 WHERE ID = 49
ELSE
INSERT INTO Record_Status_Type(ID, Name, Value, SortOrder) VALUES (49, 'Auto Hit', 'AutoHit', 49)
GO
IF EXISTS(SELECT ID FROM Record_Status_Type WHERE ID = 50)
UPDATE Record_Status_Type SET Name = 'Auto Clear', Value = 'AutoClear', SortOrder = 50 WHERE ID = 50
ELSE
INSERT INTO Record_Status_Type(ID, Name, Value, SortOrder) VALUES (50, 'Auto Clear', 'AutoClear', 50)
GO
SET IDENTITY_INSERT Record_Status_Type OFF
GO
