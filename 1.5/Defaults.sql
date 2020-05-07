/*
----------------------------------------
WS Factory Defaults SQL
----------------------------------------
*/



SET NOCOUNT ON
GO

/* Data for table System */
SET IDENTITY_INSERT System ON
GO
IF EXISTS(SELECT ID FROM System WHERE ID = 1)
UPDATE System SET MaxPasswordAttempt = 5, MaxPasswordDays = 45 WHERE ID = 1
ELSE
INSERT INTO System(ID, MaxPasswordAttempt, MaxPasswordDays) VALUES (1, 5, 45)
GO
SET IDENTITY_INSERT System OFF
GO

/* Data for table Permission */
SET IDENTITY_INSERT Permission ON
GO
IF EXISTS(SELECT ID FROM Permission WHERE ID = 1)
UPDATE Permission SET Name = 'Administration', Value = 'Administration' WHERE ID = 1
ELSE
INSERT INTO Permission(ID, Name, Value) VALUES (1, 'Administration', 'Administration')
GO
IF EXISTS(SELECT ID FROM Permission WHERE ID = 2)
UPDATE Permission SET Name = 'Batch Upload', Value = 'BatchUpload' WHERE ID = 2
ELSE
INSERT INTO Permission(ID, Name, Value) VALUES (2, 'Batch Upload', 'BatchUpload')
GO
IF EXISTS(SELECT ID FROM Permission WHERE ID = 3)
UPDATE Permission SET Name = 'View Batch Pipeline', Value = 'ViewBatchPipeline' WHERE ID = 3
ELSE
INSERT INTO Permission(ID, Name, Value) VALUES (3, 'View Batch Pipeline', 'ViewBatchPipeline')
GO
IF EXISTS(SELECT ID FROM Permission WHERE ID = 4)
UPDATE Permission SET Name = 'View Record Pipeline', Value = 'ViewRecordPipeline' WHERE ID = 4
ELSE
INSERT INTO Permission(ID, Name, Value) VALUES (4, 'View Record Pipeline', 'ViewRecordPipeline')
GO
IF EXISTS(SELECT ID FROM Permission WHERE ID = 5)
UPDATE Permission SET Name = 'Edit Record', Value = 'EditRecord' WHERE ID = 5
ELSE
INSERT INTO Permission(ID, Name, Value) VALUES (5, 'Edit Record', 'EditRecord')
GO
IF EXISTS(SELECT ID FROM Permission WHERE ID = 6)
UPDATE Permission SET Name = 'Edit County', Value = 'EditCounty' WHERE ID = 6
ELSE
INSERT INTO Permission(ID, Name, Value) VALUES (6, 'Edit County', 'EditCounty')
GO
IF EXISTS(SELECT ID FROM Permission WHERE ID = 7)
UPDATE Permission SET Name = 'Edit Case Type', Value = 'EditCaseType' WHERE ID = 7
ELSE
INSERT INTO Permission(ID, Name, Value) VALUES (7, 'Edit Case Type', 'EditCaseType')
GO
SET IDENTITY_INSERT Permission OFF
GO

/* Data for table Group2 */
SET IDENTITY_INSERT Group2 ON
GO
IF EXISTS(SELECT ID FROM Group2 WHERE ID = 1)
UPDATE Group2 SET Name = 'Adminstration' WHERE ID = 1
ELSE
INSERT INTO Group2(ID, Name) VALUES (1, 'Adminstration')
GO
SET IDENTITY_INSERT Group2 OFF
GO

/* Data for table Group2_Permission */
SET IDENTITY_INSERT Group2_Permission ON
GO
IF EXISTS(SELECT ID FROM Group2_Permission WHERE ID = 1)
UPDATE Group2_Permission SET GroupID = 1, PermissionID = 1 WHERE ID = 1
ELSE
INSERT INTO Group2_Permission(ID, GroupID, PermissionID) VALUES (1, 1, 1)
GO
SET IDENTITY_INSERT Group2_Permission OFF
GO

/* Data for table Employee_Type */
SET IDENTITY_INSERT Employee_Type ON
GO
IF EXISTS(SELECT ID FROM Employee_Type WHERE ID = 1)
UPDATE Employee_Type SET Name = 'Super Admin', Value = 'Super Admin' WHERE ID = 1
ELSE
INSERT INTO Employee_Type(ID, Name, Value) VALUES (1, 'Super Admin', 'Super Admin')
GO
IF EXISTS(SELECT ID FROM Employee_Type WHERE ID = 2)
UPDATE Employee_Type SET Name = 'Admin', Value = 'Admin' WHERE ID = 2
ELSE
INSERT INTO Employee_Type(ID, Name, Value) VALUES (2, 'Admin', 'Admin')
GO
IF EXISTS(SELECT ID FROM Employee_Type WHERE ID = 3)
UPDATE Employee_Type SET Name = 'Supervisor', Value = 'Supervisior' WHERE ID = 3
ELSE
INSERT INTO Employee_Type(ID, Name, Value) VALUES (3, 'Supervisor', 'Supervisior')
GO
IF EXISTS(SELECT ID FROM Employee_Type WHERE ID = 4)
UPDATE Employee_Type SET Name = 'Security', Value = 'Security' WHERE ID = 4
ELSE
INSERT INTO Employee_Type(ID, Name, Value) VALUES (4, 'Security', 'Security')
GO
IF EXISTS(SELECT ID FROM Employee_Type WHERE ID = 5)
UPDATE Employee_Type SET Name = 'Worker', Value = 'Worker' WHERE ID = 5
ELSE
INSERT INTO Employee_Type(ID, Name, Value) VALUES (5, 'Worker', 'Worker')
GO
SET IDENTITY_INSERT Employee_Type OFF
GO

/* Data for table User2 */
SET IDENTITY_INSERT User2 ON
GO
IF EXISTS(SELECT ID FROM User2 WHERE ID = 1)
UPDATE User2 SET Name = 'Admin', FirstName = 'System', LastName = 'Administrator', Password = '5BAA61E4C9B93F3F0682250B6CF8331B7EE68FD8', Active = 1, Lock = 0, ParentID = 1, TypeID = 1 WHERE ID = 1
ELSE
INSERT INTO User2(ID, Name, FirstName, LastName, Password, Active, Lock, ParentID, TypeID) VALUES (1, 'Admin', 'System', 'Administrator', '5BAA61E4C9B93F3F0682250B6CF8331B7EE68FD8', 1, 0, 1, 1)
GO
SET IDENTITY_INSERT User2 OFF
GO

/* Data for table User2_Group2 */
SET IDENTITY_INSERT User2_Group2 ON
GO
IF EXISTS(SELECT ID FROM User2_Group2 WHERE ID = 1)
UPDATE User2_Group2 SET UserID = 1, GroupID = 1 WHERE ID = 1
ELSE
INSERT INTO User2_Group2(ID, UserID, GroupID) VALUES (1, 1, 1)
GO
SET IDENTITY_INSERT User2_Group2 OFF
GO

/* Data for table Department_Type */
SET IDENTITY_INSERT Department_Type ON
GO
IF EXISTS(SELECT ID FROM Department_Type WHERE ID = 1)
UPDATE Department_Type SET Name = 'Management', Value = 'Management' WHERE ID = 1
ELSE
INSERT INTO Department_Type(ID, Name, Value) VALUES (1, 'Management', 'Management')
GO
IF EXISTS(SELECT ID FROM Department_Type WHERE ID = 2)
UPDATE Department_Type SET Name = 'Accounts', Value = 'Accounts' WHERE ID = 2
ELSE
INSERT INTO Department_Type(ID, Name, Value) VALUES (2, 'Accounts', 'Accounts')
GO
IF EXISTS(SELECT ID FROM Department_Type WHERE ID = 3)
UPDATE Department_Type SET Name = 'Production', Value = 'Production' WHERE ID = 3
ELSE
INSERT INTO Department_Type(ID, Name, Value) VALUES (3, 'Production', 'Production')
GO
IF EXISTS(SELECT ID FROM Department_Type WHERE ID = 4)
UPDATE Department_Type SET Name = 'Inspection', Value = 'Inspection' WHERE ID = 4
ELSE
INSERT INTO Department_Type(ID, Name, Value) VALUES (4, 'Inspection', 'Inspection')
GO
SET IDENTITY_INSERT Department_Type OFF
GO

/* Data for table Employee_Hierarchy */
SET IDENTITY_INSERT Employee_Hierarchy ON
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 1)
UPDATE Employee_Hierarchy SET SourceID = 1, TargetID = 2 WHERE ID = 1
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (1, 1, 2)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 2)
UPDATE Employee_Hierarchy SET SourceID = 1, TargetID = 3 WHERE ID = 2
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (2, 1, 3)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 3)
UPDATE Employee_Hierarchy SET SourceID = 1, TargetID = 4 WHERE ID = 3
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (3, 1, 4)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 4)
UPDATE Employee_Hierarchy SET SourceID = 1, TargetID = 5 WHERE ID = 4
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (4, 1, 5)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 5)
UPDATE Employee_Hierarchy SET SourceID = 2, TargetID = 3 WHERE ID = 5
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (5, 2, 3)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 6)
UPDATE Employee_Hierarchy SET SourceID = 2, TargetID = 4 WHERE ID = 6
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (6, 2, 4)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 7)
UPDATE Employee_Hierarchy SET SourceID = 2, TargetID = 5 WHERE ID = 7
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (7, 2, 5)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 8)
UPDATE Employee_Hierarchy SET SourceID = 3, TargetID = 4 WHERE ID = 8
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (8, 3, 4)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 9)
UPDATE Employee_Hierarchy SET SourceID = 3, TargetID = 5 WHERE ID = 9
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (9, 3, 5)
GO
IF EXISTS(SELECT ID FROM Employee_Hierarchy WHERE ID = 10)
UPDATE Employee_Hierarchy SET SourceID = 4, TargetID = 5 WHERE ID = 10
ELSE
INSERT INTO Employee_Hierarchy(ID, SourceID, TargetID) VALUES (10, 4, 5)
GO
SET IDENTITY_INSERT Employee_Hierarchy OFF
GO

/* Data for table State_Type */
SET IDENTITY_INSERT State_Type ON
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 1)
UPDATE State_Type SET Name = 'Alabama', Value = 'AL' WHERE ID = 1
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (1, 'Alabama', 'AL')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 2)
UPDATE State_Type SET Name = 'Alaska', Value = 'AK' WHERE ID = 2
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (2, 'Alaska', 'AK')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 3)
UPDATE State_Type SET Name = 'American Samoa', Value = 'AS' WHERE ID = 3
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (3, 'American Samoa', 'AS')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 4)
UPDATE State_Type SET Name = 'Arizona', Value = 'AZ' WHERE ID = 4
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (4, 'Arizona', 'AZ')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 5)
UPDATE State_Type SET Name = 'Arkansas', Value = 'AR' WHERE ID = 5
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (5, 'Arkansas', 'AR')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 6)
UPDATE State_Type SET Name = 'California', Value = 'CA' WHERE ID = 6
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (6, 'California', 'CA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 7)
UPDATE State_Type SET Name = 'Colorado', Value = 'CO' WHERE ID = 7
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (7, 'Colorado', 'CO')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 8)
UPDATE State_Type SET Name = 'Connecticut', Value = 'CT' WHERE ID = 8
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (8, 'Connecticut', 'CT')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 9)
UPDATE State_Type SET Name = 'Delaware', Value = 'DE' WHERE ID = 9
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (9, 'Delaware', 'DE')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 10)
UPDATE State_Type SET Name = 'District of Columbia', Value = 'DC' WHERE ID = 10
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (10, 'District of Columbia', 'DC')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 11)
UPDATE State_Type SET Name = 'Florida', Value = 'FL' WHERE ID = 11
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (11, 'Florida', 'FL')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 12)
UPDATE State_Type SET Name = 'Georgia', Value = 'GA' WHERE ID = 12
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (12, 'Georgia', 'GA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 13)
UPDATE State_Type SET Name = 'Guam', Value = 'GU' WHERE ID = 13
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (13, 'Guam', 'GU')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 14)
UPDATE State_Type SET Name = 'Hawaii', Value = 'HI' WHERE ID = 14
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (14, 'Hawaii', 'HI')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 15)
UPDATE State_Type SET Name = 'Idaho', Value = 'ID' WHERE ID = 15
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (15, 'Idaho', 'ID')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 16)
UPDATE State_Type SET Name = 'Illinois', Value = 'IL' WHERE ID = 16
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (16, 'Illinois', 'IL')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 17)
UPDATE State_Type SET Name = 'Indiana', Value = 'IN' WHERE ID = 17
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (17, 'Indiana', 'IN')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 18)
UPDATE State_Type SET Name = 'Iowa', Value = 'IA' WHERE ID = 18
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (18, 'Iowa', 'IA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 19)
UPDATE State_Type SET Name = 'Kansas', Value = 'KS' WHERE ID = 19
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (19, 'Kansas', 'KS')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 20)
UPDATE State_Type SET Name = 'Kentucky', Value = 'KY' WHERE ID = 20
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (20, 'Kentucky', 'KY')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 21)
UPDATE State_Type SET Name = 'Louisiana', Value = 'LA' WHERE ID = 21
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (21, 'Louisiana', 'LA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 22)
UPDATE State_Type SET Name = 'Maine', Value = 'ME' WHERE ID = 22
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (22, 'Maine', 'ME')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 23)
UPDATE State_Type SET Name = 'Marshall Islands', Value = 'MH' WHERE ID = 23
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (23, 'Marshall Islands', 'MH')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 24)
UPDATE State_Type SET Name = 'Maryland', Value = 'MD' WHERE ID = 24
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (24, 'Maryland', 'MD')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 25)
UPDATE State_Type SET Name = 'Massachusetts', Value = 'MA' WHERE ID = 25
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (25, 'Massachusetts', 'MA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 26)
UPDATE State_Type SET Name = 'Michigan', Value = 'MI' WHERE ID = 26
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (26, 'Michigan', 'MI')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 27)
UPDATE State_Type SET Name = 'Minnesota', Value = 'MN' WHERE ID = 27
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (27, 'Minnesota', 'MN')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 28)
UPDATE State_Type SET Name = 'Mississippi', Value = 'MS' WHERE ID = 28
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (28, 'Mississippi', 'MS')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 29)
UPDATE State_Type SET Name = 'Missouri', Value = 'MO' WHERE ID = 29
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (29, 'Missouri', 'MO')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 30)
UPDATE State_Type SET Name = 'Montana', Value = 'MT' WHERE ID = 30
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (30, 'Montana', 'MT')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 31)
UPDATE State_Type SET Name = 'Nebraska', Value = 'NE' WHERE ID = 31
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (31, 'Nebraska', 'NE')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 32)
UPDATE State_Type SET Name = 'Nevada', Value = 'NV' WHERE ID = 32
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (32, 'Nevada', 'NV')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 33)
UPDATE State_Type SET Name = 'New Jersey', Value = 'NJ' WHERE ID = 33
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (33, 'New Jersey', 'NJ')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 34)
UPDATE State_Type SET Name = 'New Hampshire', Value = 'NH' WHERE ID = 34
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (34, 'New Hampshire', 'NH')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 35)
UPDATE State_Type SET Name = 'New Mexico', Value = 'NM' WHERE ID = 35
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (35, 'New Mexico', 'NM')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 36)
UPDATE State_Type SET Name = 'New York', Value = 'NY' WHERE ID = 36
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (36, 'New York', 'NY')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 37)
UPDATE State_Type SET Name = 'North Carolina', Value = 'NC' WHERE ID = 37
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (37, 'North Carolina', 'NC')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 38)
UPDATE State_Type SET Name = 'North Dakota', Value = 'ND' WHERE ID = 38
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (38, 'North Dakota', 'ND')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 39)
UPDATE State_Type SET Name = 'Northern Mariana Is.', Value = 'MP' WHERE ID = 39
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (39, 'Northern Mariana Is.', 'MP')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 40)
UPDATE State_Type SET Name = 'Ohio', Value = 'OH' WHERE ID = 40
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (40, 'Ohio', 'OH')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 41)
UPDATE State_Type SET Name = 'Oklahoma', Value = 'OK' WHERE ID = 41
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (41, 'Oklahoma', 'OK')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 42)
UPDATE State_Type SET Name = 'Oregon', Value = 'OR' WHERE ID = 42
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (42, 'Oregon', 'OR')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 43)
UPDATE State_Type SET Name = 'Pennsylvania', Value = 'PA' WHERE ID = 43
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (43, 'Pennsylvania', 'PA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 44)
UPDATE State_Type SET Name = 'Puerto Rico', Value = 'PR' WHERE ID = 44
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (44, 'Puerto Rico', 'PR')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 45)
UPDATE State_Type SET Name = 'Rhode Island', Value = 'RI' WHERE ID = 45
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (45, 'Rhode Island', 'RI')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 46)
UPDATE State_Type SET Name = 'South Carolina', Value = 'SC' WHERE ID = 46
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (46, 'South Carolina', 'SC')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 47)
UPDATE State_Type SET Name = 'South Dakota', Value = 'SD' WHERE ID = 47
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (47, 'South Dakota', 'SD')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 48)
UPDATE State_Type SET Name = 'Tennessee', Value = 'TN' WHERE ID = 48
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (48, 'Tennessee', 'TN')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 49)
UPDATE State_Type SET Name = 'Texas', Value = 'TX' WHERE ID = 49
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (49, 'Texas', 'TX')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 50)
UPDATE State_Type SET Name = 'Utah', Value = 'UT' WHERE ID = 50
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (50, 'Utah', 'UT')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 51)
UPDATE State_Type SET Name = 'Vermont', Value = 'VT' WHERE ID = 51
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (51, 'Vermont', 'VT')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 52)
UPDATE State_Type SET Name = 'Virgin Islands', Value = 'VI' WHERE ID = 52
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (52, 'Virgin Islands', 'VI')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 53)
UPDATE State_Type SET Name = 'Virginia', Value = 'VA' WHERE ID = 53
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (53, 'Virginia', 'VA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 54)
UPDATE State_Type SET Name = 'Washington', Value = 'WA' WHERE ID = 54
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (54, 'Washington', 'WA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 55)
UPDATE State_Type SET Name = 'West Virginia', Value = 'WV' WHERE ID = 55
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (55, 'West Virginia', 'WV')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 56)
UPDATE State_Type SET Name = 'Wisconsin', Value = 'WI' WHERE ID = 56
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (56, 'Wisconsin', 'WI')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 57)
UPDATE State_Type SET Name = 'Wyoming', Value = 'WY' WHERE ID = 57
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (57, 'Wyoming', 'WY')
GO
SET IDENTITY_INSERT State_Type OFF
GO

/* Data for table Payment_Type */
SET IDENTITY_INSERT Payment_Type ON
GO
IF EXISTS(SELECT ID FROM Payment_Type WHERE ID = 1)
UPDATE Payment_Type SET Name = 'Wire', Value = 'Wire' WHERE ID = 1
ELSE
INSERT INTO Payment_Type(ID, Name, Value) VALUES (1, 'Wire', 'Wire')
GO
IF EXISTS(SELECT ID FROM Payment_Type WHERE ID = 2)
UPDATE Payment_Type SET Name = 'Cash', Value = 'Cash' WHERE ID = 2
ELSE
INSERT INTO Payment_Type(ID, Name, Value) VALUES (2, 'Cash', 'Cash')
GO
SET IDENTITY_INSERT Payment_Type OFF
GO

/* Data for table Case_Type */
SET IDENTITY_INSERT Case_Type ON
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 1)
UPDATE Case_Type SET Name = 'CERT COPY RQST', Value = 'CERTCOPY', IsCivil = 0 WHERE ID = 1
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (1, 'CERT COPY RQST', 'CERTCOPY', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 2)
UPDATE Case_Type SET Name = 'CIVIL', Value = 'CIVIL', IsCivil = 1 WHERE ID = 2
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (2, 'CIVIL', 'CIVIL', 1)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 3)
UPDATE Case_Type SET Name = 'CIVIL CASE COPIES', Value = 'CIVILCASECOPIES', IsCivil = 1 WHERE ID = 3
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (3, 'CIVIL CASE COPIES', 'CIVILCASECOPIES', 1)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 4)
UPDATE Case_Type SET Name = 'CIVIL CERT COPY', Value = 'CIVILCERTCOPY', IsCivil = 1 WHERE ID = 4
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (4, 'CIVIL CERT COPY', 'CIVILCERTCOPY', 1)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 5)
UPDATE Case_Type SET Name = 'CIVIL DOCKET PRNT', Value = 'CIVILDOCKETPRNT', IsCivil = 1 WHERE ID = 5
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (5, 'CIVIL DOCKET PRNT', 'CIVILDOCKETPRNT', 1)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 6)
UPDATE Case_Type SET Name = 'CIVLOW', Value = 'CIVLOW', IsCivil = 1 WHERE ID = 6
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (6, 'CIVLOW', 'CIVLOW', 1)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 7)
UPDATE Case_Type SET Name = 'CIVUP', Value = 'CIVUP', IsCivil = 1 WHERE ID = 7
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (7, 'CIVUP', 'CIVUP', 1)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 8)
UPDATE Case_Type SET Name = 'CRIM', Value = 'CRIM', IsCivil = 0 WHERE ID = 8
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (8, 'CRIM', 'CRIM', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 9)
UPDATE Case_Type SET Name = 'CRIM CASE COPIES', Value = 'CRIMCASECOPIES', IsCivil = 0 WHERE ID = 9
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (9, 'CRIM CASE COPIES', 'CRIMCASECOPIES', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 10)
UPDATE Case_Type SET Name = 'CRIM CERT COPY', Value = 'CRIMCERTCOPY', IsCivil = 0 WHERE ID = 10
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (10, 'CRIM CERT COPY', 'CRIMCERTCOPY', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 11)
UPDATE Case_Type SET Name = 'CRIM DOCKET PRNT', Value = 'CRIMDOCKETPRNT', IsCivil = 0 WHERE ID = 11
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (11, 'CRIM DOCKET PRNT', 'CRIMDOCKETPRNT', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 12)
UPDATE Case_Type SET Name = 'CVRO', Value = 'CVRO', IsCivil = 0 WHERE ID = 12
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (12, 'CVRO', 'CVRO', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 13)
UPDATE Case_Type SET Name = 'CVRO10', Value = 'CVRO10', IsCivil = 0 WHERE ID = 13
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (13, 'CVRO10', 'CVRO10', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 14)
UPDATE Case_Type SET Name = 'FAMLY-LAW', Value = 'FamLaw', IsCivil = 0 WHERE ID = 14
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (14, 'FAMLY-LAW', 'FamLaw', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 15)
UPDATE Case_Type SET Name = 'FED CIVIL', Value = 'FEDCIVIL', IsCivil = 0 WHERE ID = 15
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (15, 'FED CIVIL', 'FEDCIVIL', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 16)
UPDATE Case_Type SET Name = 'FRED-CRIM', Value = 'FEDCRM', IsCivil = 0 WHERE ID = 16
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (16, 'FRED-CRIM', 'FEDCRM', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 17)
UPDATE Case_Type SET Name = 'FELONY', Value = 'FELONY', IsCivil = 0 WHERE ID = 17
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (17, 'FELONY', 'FELONY', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 18)
UPDATE Case_Type SET Name = 'MSDM', Value = 'MSDM', IsCivil = 0 WHERE ID = 18
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (18, 'MSDM', 'MSDM', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 19)
UPDATE Case_Type SET Name = 'OTHER TYPE', Value = 'OTHERTYPE', IsCivil = 0 WHERE ID = 19
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (19, 'OTHER TYPE', 'OTHERTYPE', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 20)
UPDATE Case_Type SET Name = 'FELMSD', Value = 'FELMSD', IsCivil = 0 WHERE ID = 20
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (20, 'FELMSD', 'FELMSD', 0)
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 21)
UPDATE Case_Type SET Name = 'DOCKET PRINT OUT', Value = 'DOCKETPRINTOUT', IsCivil = 0 WHERE ID = 21
ELSE
INSERT INTO Case_Type(ID, Name, Value, IsCivil) VALUES (21, 'DOCKET PRINT OUT', 'DOCKETPRINTOUT', 0)
GO
SET IDENTITY_INSERT Case_Type OFF
GO

/* Data for table Record_Status_Type */
SET IDENTITY_INSERT Record_Status_Type ON
GO
IF EXISTS(SELECT ID FROM Record_Status_Type WHERE ID = 1)
UPDATE Record_Status_Type SET Name = 'RESEARCH', Value = 'RESEARCH' WHERE ID = 1
ELSE
INSERT INTO Record_Status_Type(ID, Name, Value) VALUES (1, 'RESEARCH', 'RESEARCH')
GO
IF EXISTS(SELECT ID FROM Record_Status_Type WHERE ID = 2)
UPDATE Record_Status_Type SET Name = 'DISPO', Value = 'DISPO' WHERE ID = 2
ELSE
INSERT INTO Record_Status_Type(ID, Name, Value) VALUES (2, 'DISPO', 'DISPO')
GO
IF EXISTS(SELECT ID FROM Record_Status_Type WHERE ID = 3)
UPDATE Record_Status_Type SET Name = 'QA', Value = 'QA' WHERE ID = 3
ELSE
INSERT INTO Record_Status_Type(ID, Name, Value) VALUES (3, 'QA', 'QA')
GO
IF EXISTS(SELECT ID FROM Record_Status_Type WHERE ID = 4)
UPDATE Record_Status_Type SET Name = 'SUBMIT', Value = 'SUBMIT' WHERE ID = 4
ELSE
INSERT INTO Record_Status_Type(ID, Name, Value) VALUES (4, 'SUBMIT', 'SUBMIT')
GO
IF EXISTS(SELECT ID FROM Record_Status_Type WHERE ID = 5)
UPDATE Record_Status_Type SET Name = 'ARCHIVE', Value = 'ARCHIVE' WHERE ID = 5
ELSE
INSERT INTO Record_Status_Type(ID, Name, Value) VALUES (5, 'ARCHIVE', 'ARCHIVE')
GO
IF EXISTS(SELECT ID FROM Record_Status_Type WHERE ID = 6)
UPDATE Record_Status_Type SET Name = 'CANCEL', Value = 'CANCEL' WHERE ID = 6
ELSE
INSERT INTO Record_Status_Type(ID, Name, Value) VALUES (6, 'CANCEL', 'CANCEL')
GO
SET IDENTITY_INSERT Record_Status_Type OFF
GO

/* Data for table Action_Type */
SET IDENTITY_INSERT Action_Type ON
GO
IF EXISTS(SELECT ID FROM Action_Type WHERE ID = 1)
UPDATE Action_Type SET Name = 'Outsourced', Value = 'Outsourced' WHERE ID = 1
ELSE
INSERT INTO Action_Type(ID, Name, Value) VALUES (1, 'Outsourced', 'Outsourced')
GO
IF EXISTS(SELECT ID FROM Action_Type WHERE ID = 2)
UPDATE Action_Type SET Name = 'Court', Value = 'Court' WHERE ID = 2
ELSE
INSERT INTO Action_Type(ID, Name, Value) VALUES (2, 'Court', 'Court')
GO
IF EXISTS(SELECT ID FROM Action_Type WHERE ID = 3)
UPDATE Action_Type SET Name = 'Autherization', Value = 'Autherization' WHERE ID = 3
ELSE
INSERT INTO Action_Type(ID, Name, Value) VALUES (3, 'Autherization', 'Autherization')
GO
SET IDENTITY_INSERT Action_Type OFF
GO

/* Data for table Contact_Type */
SET IDENTITY_INSERT Contact_Type ON
GO
IF EXISTS(SELECT ID FROM Contact_Type WHERE ID = 1)
UPDATE Contact_Type SET Name = 'Email', Value = 'Email' WHERE ID = 1
ELSE
INSERT INTO Contact_Type(ID, Name, Value) VALUES (1, 'Email', 'Email')
GO
IF EXISTS(SELECT ID FROM Contact_Type WHERE ID = 2)
UPDATE Contact_Type SET Name = 'Fax', Value = 'Fax' WHERE ID = 2
ELSE
INSERT INTO Contact_Type(ID, Name, Value) VALUES (2, 'Fax', 'Fax')
GO
IF EXISTS(SELECT ID FROM Contact_Type WHERE ID = 3)
UPDATE Contact_Type SET Name = 'Mail', Value = 'Mail' WHERE ID = 3
ELSE
INSERT INTO Contact_Type(ID, Name, Value) VALUES (3, 'Mail', 'Mail')
GO
IF EXISTS(SELECT ID FROM Contact_Type WHERE ID = 4)
UPDATE Contact_Type SET Name = 'Phone', Value = 'Phone' WHERE ID = 4
ELSE
INSERT INTO Contact_Type(ID, Name, Value) VALUES (4, 'Phone', 'Phone')
GO
IF EXISTS(SELECT ID FROM Contact_Type WHERE ID = 5)
UPDATE Contact_Type SET Name = 'Web', Value = 'Web' WHERE ID = 5
ELSE
INSERT INTO Contact_Type(ID, Name, Value) VALUES (5, 'Web', 'Web')
GO
SET IDENTITY_INSERT Contact_Type OFF
GO

/* Data for table Level_Type */
SET IDENTITY_INSERT Level_Type ON
GO
IF EXISTS(SELECT ID FROM Level_Type WHERE ID = 1)
UPDATE Level_Type SET Name = 'Felony', Value = 'Felony' WHERE ID = 1
ELSE
INSERT INTO Level_Type(ID, Name, Value) VALUES (1, 'Felony', 'Felony')
GO
IF EXISTS(SELECT ID FROM Level_Type WHERE ID = 2)
UPDATE Level_Type SET Name = 'Misdemeanor', Value = 'Misdemeanor' WHERE ID = 2
ELSE
INSERT INTO Level_Type(ID, Name, Value) VALUES (2, 'Misdemeanor', 'Misdemeanor')
GO
IF EXISTS(SELECT ID FROM Level_Type WHERE ID = 3)
UPDATE Level_Type SET Name = 'Infraction', Value = 'Infraction' WHERE ID = 3
ELSE
INSERT INTO Level_Type(ID, Name, Value) VALUES (3, 'Infraction', 'Infraction')
GO
IF EXISTS(SELECT ID FROM Level_Type WHERE ID = 4)
UPDATE Level_Type SET Name = 'Unclassified', Value = 'Unclassified' WHERE ID = 4
ELSE
INSERT INTO Level_Type(ID, Name, Value) VALUES (4, 'Unclassified', 'Unclassified')
GO
SET IDENTITY_INSERT Level_Type OFF
GO

/* Data for table Plea_Type */
SET IDENTITY_INSERT Plea_Type ON
GO
IF EXISTS(SELECT ID FROM Plea_Type WHERE ID = 1)
UPDATE Plea_Type SET Name = 'Guilty', Value = 'Guilty' WHERE ID = 1
ELSE
INSERT INTO Plea_Type(ID, Name, Value) VALUES (1, 'Guilty', 'Guilty')
GO
IF EXISTS(SELECT ID FROM Plea_Type WHERE ID = 2)
UPDATE Plea_Type SET Name = 'Nolo Contendere', Value = 'NoloContendere' WHERE ID = 2
ELSE
INSERT INTO Plea_Type(ID, Name, Value) VALUES (2, 'Nolo Contendere', 'NoloContendere')
GO
IF EXISTS(SELECT ID FROM Plea_Type WHERE ID = 3)
UPDATE Plea_Type SET Name = 'Not Found', Value = 'NotFound' WHERE ID = 3
ELSE
INSERT INTO Plea_Type(ID, Name, Value) VALUES (3, 'Not Found', 'NotFound')
GO
SET IDENTITY_INSERT Plea_Type OFF
GO

/* Data for table Disposition_Type */
SET IDENTITY_INSERT Disposition_Type ON
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 1)
UPDATE Disposition_Type SET Name = 'Warrant', Value = 'Warrant' WHERE ID = 1
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (1, 'Warrant', 'Warrant')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 2)
UPDATE Disposition_Type SET Name = 'Conviction', Value = 'Conviction' WHERE ID = 2
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (2, 'Conviction', 'Conviction')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 3)
UPDATE Disposition_Type SET Name = 'Found Guilty', Value = 'FoundGuilty' WHERE ID = 3
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (3, 'Found Guilty', 'FoundGuilty')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 4)
UPDATE Disposition_Type SET Name = 'Dismissed', Value = 'Dismissed' WHERE ID = 4
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (4, 'Dismissed', 'Dismissed')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 5)
UPDATE Disposition_Type SET Name = 'Deferred Adjudication', Value = 'DeferredAdjudication' WHERE ID = 5
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (5, 'Deferred Adjudication', 'DeferredAdjudication')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 6)
UPDATE Disposition_Type SET Name = 'Diversion', Value = 'Diversion' WHERE ID = 6
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (6, 'Diversion', 'Diversion')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 7)
UPDATE Disposition_Type SET Name = 'Dismissed Per Pc 1203', Value = 'DismissedPerPc1203' WHERE ID = 7
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (7, 'Dismissed Per Pc 1203', 'DismissedPerPc1203')
GO
IF EXISTS(SELECT ID FROM Disposition_Type WHERE ID = 8)
UPDATE Disposition_Type SET Name = 'Pending', Value = 'Pending' WHERE ID = 8
ELSE
INSERT INTO Disposition_Type(ID, Name, Value) VALUES (8, 'Pending', 'Pending')
GO
SET IDENTITY_INSERT Disposition_Type OFF
GO

/* Data for table Company */
SET IDENTITY_INSERT Company ON
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 1)
UPDATE Company SET Name = 'ALPHA RESEARCH', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 1
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (1, 'ALPHA RESEARCH', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 2)
UPDATE Company SET Name = 'ATLAS RESEARCH', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 2
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (2, 'ATLAS RESEARCH', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 3)
UPDATE Company SET Name = 'C & S RESEARCH INC.', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 3
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (3, 'C & S RESEARCH INC.', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 4)
UPDATE Company SET Name = 'CARCO GROUP, INC', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 4
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (4, 'CARCO GROUP, INC', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 5)
UPDATE Company SET Name = 'CBY SYSTEMS INC', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 5
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (5, 'CBY SYSTEMS INC', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 6)
UPDATE Company SET Name = 'CLEAR INVESTIGATIVE  ADVANTAGE', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 6
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (6, 'CLEAR INVESTIGATIVE  ADVANTAGE', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 7)
UPDATE Company SET Name = 'ACXIOM', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 7
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (7, 'ACXIOM', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 8)
UPDATE Company SET Name = 'INFO TRACK', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 8
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (8, 'INFO TRACK', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 9)
UPDATE Company SET Name = 'AZURA INVESTIGATIONS', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 9
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (9, 'AZURA INVESTIGATIONS', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 10)
UPDATE Company SET Name = 'K. GRIFF INVESTIGATIONS', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 10
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (10, 'K. GRIFF INVESTIGATIONS', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 11)
UPDATE Company SET Name = 'OMNI DATA RETRIEVAL', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 11
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (11, 'OMNI DATA RETRIEVAL', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 12)
UPDATE Company SET Name = 'PHOENIX RESEARCH INC', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 12
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (12, 'PHOENIX RESEARCH INC', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 13)
UPDATE Company SET Name = 'PRIORITY RES INC', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 13
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (13, 'PRIORITY RES INC', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 14)
UPDATE Company SET Name = 'PROFESSIONAL BACKGROUND INVESTIGATIONS', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 14
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (14, 'PROFESSIONAL BACKGROUND INVESTIGATIONS', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 15)
UPDATE Company SET Name = 'RELIANCE PERSONAL CARE ', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 15
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (15, 'RELIANCE PERSONAL CARE ', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 16)
UPDATE Company SET Name = 'SECURITEC SCREENING SOLUTIONS, INC.', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 16
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (16, 'SECURITEC SCREENING SOLUTIONS, INC.', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 17)
UPDATE Company SET Name = 'UNITED SCREENING SERVICE CORP', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 17
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (17, 'UNITED SCREENING SERVICE CORP', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 18)
UPDATE Company SET Name = 'WHOLESALE SCREENING SOLUTIONS', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 18
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (18, 'WHOLESALE SCREENING SOLUTIONS', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 19)
UPDATE Company SET Name = 'CRRG, INC', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 19
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (19, 'CRRG, INC', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 20)
UPDATE Company SET Name = 'GREENBERG TRAURIG, LLP', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 20
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (20, 'GREENBERG TRAURIG, LLP', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 21)
UPDATE Company SET Name = 'LEXPRO', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 21
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (21, 'LEXPRO', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 22)
UPDATE Company SET Name = 'RIS, INC', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 22
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (22, 'RIS, INC', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 23)
UPDATE Company SET Name = 'REHMANN.COM', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 23
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (23, 'REHMANN.COM', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 24)
UPDATE Company SET Name = 'DATATRACE ONLINE, INC.', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 24
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (24, 'DATATRACE ONLINE, INC.', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 25)
UPDATE Company SET Name = 'INTELLI CORP', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 25
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (25, 'INTELLI CORP', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
IF EXISTS(SELECT ID FROM Company WHERE ID = 26)
UPDATE Company SET Name = 'GAPRS', AddressL1 = NULL, AddressL2 = NULL, City = NULL, StateID = 1, PostalCode = NULL, ContactPerson = 'ABC', Phone = 1234567890, Fax = NULL, Email = 'abc@abc.com', WebSite = NULL, Active = 1, Comments = NULL WHERE ID = 26
ELSE
INSERT INTO Company(ID, Name, AddressL1, AddressL2, City, StateID, PostalCode, ContactPerson, Phone, Fax, Email, WebSite, Active, Comments) VALUES (26, 'GAPRS', NULL, NULL, NULL, 1, NULL, 'ABC', 1234567890, NULL, 'abc@abc.com', NULL, 1, NULL)
GO
SET IDENTITY_INSERT Company OFF
GO

/* Data for table County */
SET IDENTITY_INSERT County ON
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 1)
UPDATE County SET Name = 'ALAMEDA', Value = 'ALAMEDA' WHERE ID = 1
ELSE
INSERT INTO County(ID, Name, Value) VALUES (1, 'ALAMEDA', 'ALAMEDA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 2)
UPDATE County SET Name = 'ALPINE', Value = 'ALPINE' WHERE ID = 2
ELSE
INSERT INTO County(ID, Name, Value) VALUES (2, 'ALPINE', 'ALPINE')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 3)
UPDATE County SET Name = 'AMADOR', Value = 'AMADOR' WHERE ID = 3
ELSE
INSERT INTO County(ID, Name, Value) VALUES (3, 'AMADOR', 'AMADOR')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 4)
UPDATE County SET Name = 'BUTTE', Value = 'BUTTE' WHERE ID = 4
ELSE
INSERT INTO County(ID, Name, Value) VALUES (4, 'BUTTE', 'BUTTE')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 5)
UPDATE County SET Name = 'CALAVARES', Value = 'CALAVARES' WHERE ID = 5
ELSE
INSERT INTO County(ID, Name, Value) VALUES (5, 'CALAVARES', 'CALAVARES')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 6)
UPDATE County SET Name = 'CENTRAL DISTRICT', Value = 'CENTRALDISTRICT' WHERE ID = 6
ELSE
INSERT INTO County(ID, Name, Value) VALUES (6, 'CENTRAL DISTRICT', 'CENTRALDISTRICT')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 7)
UPDATE County SET Name = 'COLUSA', Value = 'COLUSA' WHERE ID = 7
ELSE
INSERT INTO County(ID, Name, Value) VALUES (7, 'COLUSA', 'COLUSA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 8)
UPDATE County SET Name = 'CONTRA COSTA', Value = 'CONTRACOSTA' WHERE ID = 8
ELSE
INSERT INTO County(ID, Name, Value) VALUES (8, 'CONTRA COSTA', 'CONTRACOSTA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 9)
UPDATE County SET Name = 'DEL NORTE', Value = 'DELNORTE' WHERE ID = 9
ELSE
INSERT INTO County(ID, Name, Value) VALUES (9, 'DEL NORTE', 'DELNORTE')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 10)
UPDATE County SET Name = 'EASTERN DISTRICT', Value = 'EASTERNDISTRICT' WHERE ID = 10
ELSE
INSERT INTO County(ID, Name, Value) VALUES (10, 'EASTERN DISTRICT', 'EASTERNDISTRICT')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 11)
UPDATE County SET Name = 'EL DORADO', Value = 'ELDORADO' WHERE ID = 11
ELSE
INSERT INTO County(ID, Name, Value) VALUES (11, 'EL DORADO', 'ELDORADO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 12)
UPDATE County SET Name = 'FRESNO', Value = 'FRESNO' WHERE ID = 12
ELSE
INSERT INTO County(ID, Name, Value) VALUES (12, 'FRESNO', 'FRESNO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 13)
UPDATE County SET Name = 'GLENN', Value = 'GLENN' WHERE ID = 13
ELSE
INSERT INTO County(ID, Name, Value) VALUES (13, 'GLENN', 'GLENN')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 14)
UPDATE County SET Name = 'HUMBOLDT', Value = 'HUMBOLDT' WHERE ID = 14
ELSE
INSERT INTO County(ID, Name, Value) VALUES (14, 'HUMBOLDT', 'HUMBOLDT')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 15)
UPDATE County SET Name = 'IMPERIAL', Value = 'IMPERIAL' WHERE ID = 15
ELSE
INSERT INTO County(ID, Name, Value) VALUES (15, 'IMPERIAL', 'IMPERIAL')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 16)
UPDATE County SET Name = 'INYO', Value = 'INYO' WHERE ID = 16
ELSE
INSERT INTO County(ID, Name, Value) VALUES (16, 'INYO', 'INYO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 17)
UPDATE County SET Name = 'KERN', Value = 'KERN' WHERE ID = 17
ELSE
INSERT INTO County(ID, Name, Value) VALUES (17, 'KERN', 'KERN')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 18)
UPDATE County SET Name = 'KINGS', Value = 'KINGS' WHERE ID = 18
ELSE
INSERT INTO County(ID, Name, Value) VALUES (18, 'KINGS', 'KINGS')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 19)
UPDATE County SET Name = 'LAKE', Value = 'LAKE' WHERE ID = 19
ELSE
INSERT INTO County(ID, Name, Value) VALUES (19, 'LAKE', 'LAKE')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 20)
UPDATE County SET Name = 'LASSEN', Value = 'LASSEN' WHERE ID = 20
ELSE
INSERT INTO County(ID, Name, Value) VALUES (20, 'LASSEN', 'LASSEN')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 21)
UPDATE County SET Name = 'LOS ANGELES', Value = 'LOSANGELES' WHERE ID = 21
ELSE
INSERT INTO County(ID, Name, Value) VALUES (21, 'LOS ANGELES', 'LOSANGELES')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 22)
UPDATE County SET Name = 'MADERA', Value = 'MADERA' WHERE ID = 22
ELSE
INSERT INTO County(ID, Name, Value) VALUES (22, 'MADERA', 'MADERA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 23)
UPDATE County SET Name = 'MARIN', Value = 'MARIN' WHERE ID = 23
ELSE
INSERT INTO County(ID, Name, Value) VALUES (23, 'MARIN', 'MARIN')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 24)
UPDATE County SET Name = 'MARIPOSA', Value = 'MARIPOSA' WHERE ID = 24
ELSE
INSERT INTO County(ID, Name, Value) VALUES (24, 'MARIPOSA', 'MARIPOSA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 25)
UPDATE County SET Name = 'MENDOCINO', Value = 'MENDOCINO' WHERE ID = 25
ELSE
INSERT INTO County(ID, Name, Value) VALUES (25, 'MENDOCINO', 'MENDOCINO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 26)
UPDATE County SET Name = 'MERCED', Value = 'MERCED' WHERE ID = 26
ELSE
INSERT INTO County(ID, Name, Value) VALUES (26, 'MERCED', 'MERCED')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 27)
UPDATE County SET Name = 'MODOC', Value = 'MODOC' WHERE ID = 27
ELSE
INSERT INTO County(ID, Name, Value) VALUES (27, 'MODOC', 'MODOC')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 28)
UPDATE County SET Name = 'MONO', Value = 'MONO' WHERE ID = 28
ELSE
INSERT INTO County(ID, Name, Value) VALUES (28, 'MONO', 'MONO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 29)
UPDATE County SET Name = 'MONTEREY', Value = 'MONTEREY' WHERE ID = 29
ELSE
INSERT INTO County(ID, Name, Value) VALUES (29, 'MONTEREY', 'MONTEREY')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 30)
UPDATE County SET Name = 'NAPA', Value = 'NAPA' WHERE ID = 30
ELSE
INSERT INTO County(ID, Name, Value) VALUES (30, 'NAPA', 'NAPA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 31)
UPDATE County SET Name = 'NEVADA', Value = 'NEVADA' WHERE ID = 31
ELSE
INSERT INTO County(ID, Name, Value) VALUES (31, 'NEVADA', 'NEVADA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 32)
UPDATE County SET Name = 'NORTHERN DISTRICT', Value = 'NORTHERNDISTRICT' WHERE ID = 32
ELSE
INSERT INTO County(ID, Name, Value) VALUES (32, 'NORTHERN DISTRICT', 'NORTHERNDISTRICT')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 33)
UPDATE County SET Name = 'ORANGE', Value = 'ORANGE' WHERE ID = 33
ELSE
INSERT INTO County(ID, Name, Value) VALUES (33, 'ORANGE', 'ORANGE')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 34)
UPDATE County SET Name = 'OTHER COUNTY', Value = 'OTHERCOUNTY' WHERE ID = 34
ELSE
INSERT INTO County(ID, Name, Value) VALUES (34, 'OTHER COUNTY', 'OTHERCOUNTY')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 35)
UPDATE County SET Name = 'PLACER', Value = 'PLACER' WHERE ID = 35
ELSE
INSERT INTO County(ID, Name, Value) VALUES (35, 'PLACER', 'PLACER')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 36)
UPDATE County SET Name = 'PLUMAS', Value = 'PLUMAS' WHERE ID = 36
ELSE
INSERT INTO County(ID, Name, Value) VALUES (36, 'PLUMAS', 'PLUMAS')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 37)
UPDATE County SET Name = 'RIVERSIDE', Value = 'RIVERSIDE' WHERE ID = 37
ELSE
INSERT INTO County(ID, Name, Value) VALUES (37, 'RIVERSIDE', 'RIVERSIDE')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 38)
UPDATE County SET Name = 'SACRAMENTO', Value = 'SACRAMENTO' WHERE ID = 38
ELSE
INSERT INTO County(ID, Name, Value) VALUES (38, 'SACRAMENTO', 'SACRAMENTO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 39)
UPDATE County SET Name = 'SAN BENITO', Value = 'SANBENITO' WHERE ID = 39
ELSE
INSERT INTO County(ID, Name, Value) VALUES (39, 'SAN BENITO', 'SANBENITO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 40)
UPDATE County SET Name = 'SAN BERNARDINO', Value = 'SANBERNARDINO' WHERE ID = 40
ELSE
INSERT INTO County(ID, Name, Value) VALUES (40, 'SAN BERNARDINO', 'SANBERNARDINO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 41)
UPDATE County SET Name = 'SAN DIEGO', Value = 'SANDIEGO' WHERE ID = 41
ELSE
INSERT INTO County(ID, Name, Value) VALUES (41, 'SAN DIEGO', 'SANDIEGO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 42)
UPDATE County SET Name = 'SAN FRANCISCO', Value = 'SANFRANCISCO' WHERE ID = 42
ELSE
INSERT INTO County(ID, Name, Value) VALUES (42, 'SAN FRANCISCO', 'SANFRANCISCO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 43)
UPDATE County SET Name = 'SAN JOAQUIN', Value = 'SANJOAQUIN' WHERE ID = 43
ELSE
INSERT INTO County(ID, Name, Value) VALUES (43, 'SAN JOAQUIN', 'SANJOAQUIN')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 44)
UPDATE County SET Name = 'SAN LUIS OBISPO', Value = 'SANLUISOBISPO' WHERE ID = 44
ELSE
INSERT INTO County(ID, Name, Value) VALUES (44, 'SAN LUIS OBISPO', 'SANLUISOBISPO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 45)
UPDATE County SET Name = 'SAN MATEO', Value = 'SANMATEO' WHERE ID = 45
ELSE
INSERT INTO County(ID, Name, Value) VALUES (45, 'SAN MATEO', 'SANMATEO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 46)
UPDATE County SET Name = 'SANTA BARBARA', Value = 'SANTABARBARA' WHERE ID = 46
ELSE
INSERT INTO County(ID, Name, Value) VALUES (46, 'SANTA BARBARA', 'SANTABARBARA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 47)
UPDATE County SET Name = 'SANTA CLARA', Value = 'SANTACLARA' WHERE ID = 47
ELSE
INSERT INTO County(ID, Name, Value) VALUES (47, 'SANTA CLARA', 'SANTACLARA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 48)
UPDATE County SET Name = 'SANTA CRUZ', Value = 'SANTACRUZ' WHERE ID = 48
ELSE
INSERT INTO County(ID, Name, Value) VALUES (48, 'SANTA CRUZ', 'SANTACRUZ')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 49)
UPDATE County SET Name = 'SCARAMENTO', Value = 'SCARAMENTO' WHERE ID = 49
ELSE
INSERT INTO County(ID, Name, Value) VALUES (49, 'SCARAMENTO', 'SCARAMENTO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 50)
UPDATE County SET Name = 'SHASTA', Value = 'SHASTA' WHERE ID = 50
ELSE
INSERT INTO County(ID, Name, Value) VALUES (50, 'SHASTA', 'SHASTA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 51)
UPDATE County SET Name = 'SIERRA', Value = 'SIERRA' WHERE ID = 51
ELSE
INSERT INTO County(ID, Name, Value) VALUES (51, 'SIERRA', 'SIERRA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 52)
UPDATE County SET Name = 'SISKIYOU', Value = 'SISKIYOU' WHERE ID = 52
ELSE
INSERT INTO County(ID, Name, Value) VALUES (52, 'SISKIYOU', 'SISKIYOU')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 53)
UPDATE County SET Name = 'SOLANO', Value = 'SOLANO' WHERE ID = 53
ELSE
INSERT INTO County(ID, Name, Value) VALUES (53, 'SOLANO', 'SOLANO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 54)
UPDATE County SET Name = 'SONOMA', Value = 'SONOMA' WHERE ID = 54
ELSE
INSERT INTO County(ID, Name, Value) VALUES (54, 'SONOMA', 'SONOMA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 55)
UPDATE County SET Name = 'SOUTHERN DISTRICT', Value = 'SOUTHERNDISTRICT' WHERE ID = 55
ELSE
INSERT INTO County(ID, Name, Value) VALUES (55, 'SOUTHERN DISTRICT', 'SOUTHERNDISTRICT')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 56)
UPDATE County SET Name = 'STANISLAUS', Value = 'STANISLAUS' WHERE ID = 56
ELSE
INSERT INTO County(ID, Name, Value) VALUES (56, 'STANISLAUS', 'STANISLAUS')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 57)
UPDATE County SET Name = 'SUTTER', Value = 'SUTTER' WHERE ID = 57
ELSE
INSERT INTO County(ID, Name, Value) VALUES (57, 'SUTTER', 'SUTTER')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 58)
UPDATE County SET Name = 'TEHAMA', Value = 'TEHAMA' WHERE ID = 58
ELSE
INSERT INTO County(ID, Name, Value) VALUES (58, 'TEHAMA', 'TEHAMA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 59)
UPDATE County SET Name = 'TRINITY', Value = 'TRINITY' WHERE ID = 59
ELSE
INSERT INTO County(ID, Name, Value) VALUES (59, 'TRINITY', 'TRINITY')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 60)
UPDATE County SET Name = 'TULARE', Value = 'TULARE' WHERE ID = 60
ELSE
INSERT INTO County(ID, Name, Value) VALUES (60, 'TULARE', 'TULARE')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 61)
UPDATE County SET Name = 'TUOLUMNE', Value = 'TUOLUMNE' WHERE ID = 61
ELSE
INSERT INTO County(ID, Name, Value) VALUES (61, 'TUOLUMNE', 'TUOLUMNE')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 62)
UPDATE County SET Name = 'VENTURA', Value = 'VENTURA' WHERE ID = 62
ELSE
INSERT INTO County(ID, Name, Value) VALUES (62, 'VENTURA', 'VENTURA')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 63)
UPDATE County SET Name = 'YOLO', Value = 'YOLO' WHERE ID = 63
ELSE
INSERT INTO County(ID, Name, Value) VALUES (63, 'YOLO', 'YOLO')
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 64)
UPDATE County SET Name = 'YUBA', Value = 'YUBA' WHERE ID = 64
ELSE
INSERT INTO County(ID, Name, Value) VALUES (64, 'YUBA', 'YUBA')
GO
SET IDENTITY_INSERT County OFF
GO

