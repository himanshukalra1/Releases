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
UPDATE State_Type SET Name = 'California', Value = 'CA' WHERE ID = 1
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (1, 'California', 'CA')
GO
IF EXISTS(SELECT ID FROM State_Type WHERE ID = 2)
UPDATE State_Type SET Name = 'Texas', Value = 'TX' WHERE ID = 2
ELSE
INSERT INTO State_Type(ID, Name, Value) VALUES (2, 'Texas', 'TX')
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
UPDATE Case_Type SET Name = 'CERT COPY ', Value = 'CERTCOPY' WHERE ID = 1
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (1, 'CERT COPY ', 'CERTCOPY')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 2)
UPDATE Case_Type SET Name = 'CIVIL', Value = 'CIVIL' WHERE ID = 2
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (2, 'CIVIL', 'CIVIL')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 3)
UPDATE Case_Type SET Name = 'CIVIL CASE COPIES ', Value = 'CIVILCASECOPIES' WHERE ID = 3
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (3, 'CIVIL CASE COPIES ', 'CIVILCASECOPIES')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 4)
UPDATE Case_Type SET Name = 'CIVIL CERT COPY ', Value = 'CIVILCERTCOPY' WHERE ID = 4
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (4, 'CIVIL CERT COPY ', 'CIVILCERTCOPY')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 5)
UPDATE Case_Type SET Name = 'CIVIL DOCKET PRNT', Value = 'CIVILDOCKETPRNT' WHERE ID = 5
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (5, 'CIVIL DOCKET PRNT', 'CIVILDOCKETPRNT')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 6)
UPDATE Case_Type SET Name = 'CIVLOW', Value = 'CIVLOW' WHERE ID = 6
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (6, 'CIVLOW', 'CIVLOW')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 7)
UPDATE Case_Type SET Name = 'CIVUP', Value = 'CIVUP' WHERE ID = 7
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (7, 'CIVUP', 'CIVUP')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 8)
UPDATE Case_Type SET Name = 'CRIM', Value = 'CRIM' WHERE ID = 8
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (8, 'CRIM', 'CRIM')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 9)
UPDATE Case_Type SET Name = 'CRIM CASE COPIES ', Value = 'CRIMCASECOPIES' WHERE ID = 9
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (9, 'CRIM CASE COPIES ', 'CRIMCASECOPIES')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 10)
UPDATE Case_Type SET Name = 'CRIM CERT COPY ', Value = 'CRIMCERTCOPY' WHERE ID = 10
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (10, 'CRIM CERT COPY ', 'CRIMCERTCOPY')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 11)
UPDATE Case_Type SET Name = 'CRIM DOCKET PRNT', Value = 'CRIMDOCKETPRNT' WHERE ID = 11
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (11, 'CRIM DOCKET PRNT', 'CRIMDOCKETPRNT')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 12)
UPDATE Case_Type SET Name = 'CVRO', Value = 'CVRO' WHERE ID = 12
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (12, 'CVRO', 'CVRO')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 13)
UPDATE Case_Type SET Name = 'CVRO10', Value = 'CVRO10' WHERE ID = 13
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (13, 'CVRO10', 'CVRO10')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 14)
UPDATE Case_Type SET Name = 'FamLaw', Value = 'FamLaw' WHERE ID = 14
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (14, 'FamLaw', 'FamLaw')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 15)
UPDATE Case_Type SET Name = 'FED CIVIL', Value = 'FEDCIVIL' WHERE ID = 15
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (15, 'FED CIVIL', 'FEDCIVIL')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 16)
UPDATE Case_Type SET Name = 'FED CRM', Value = 'FEDCRM' WHERE ID = 16
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (16, 'FED CRM', 'FEDCRM')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 17)
UPDATE Case_Type SET Name = 'FELONY', Value = 'FELONY' WHERE ID = 17
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (17, 'FELONY', 'FELONY')
GO
IF EXISTS(SELECT ID FROM Case_Type WHERE ID = 18)
UPDATE Case_Type SET Name = 'MSDM', Value = 'MSDM' WHERE ID = 18
ELSE
INSERT INTO Case_Type(ID, Name, Value) VALUES (18, 'MSDM', 'MSDM')
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
SET IDENTITY_INSERT Disposition_Type OFF
GO

