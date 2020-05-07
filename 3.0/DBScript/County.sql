

/* Data for table County */
SET IDENTITY_INSERT County ON
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 1)
UPDATE County SET Name = 'ALAMEDA', Value = 'ALAMEDA', StateID = 6 WHERE ID = 1
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (1, 'ALAMEDA', 'ALAMEDA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 2)
UPDATE County SET Name = 'ALPINE', Value = 'ALPINE', StateID = 6 WHERE ID = 2
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (2, 'ALPINE', 'ALPINE', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 3)
UPDATE County SET Name = 'AMADOR', Value = 'AMADOR', StateID = 6 WHERE ID = 3
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (3, 'AMADOR', 'AMADOR', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 4)
UPDATE County SET Name = 'BUTTE', Value = 'BUTTE', StateID = 6 WHERE ID = 4
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (4, 'BUTTE', 'BUTTE', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 5)
UPDATE County SET Name = 'CALAVERAS', Value = 'CALAVERAS', StateID = 6 WHERE ID = 5
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (5, 'CALAVERAS', 'CALAVERAS', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 6)
UPDATE County SET Name = 'CENTRAL DISTRICT', Value = 'CENTRALDISTRICT', StateID = 6 WHERE ID = 6
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (6, 'CENTRAL DISTRICT', 'CENTRALDISTRICT', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 7)
UPDATE County SET Name = 'COLUSA', Value = 'COLUSA', StateID = 6 WHERE ID = 7
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (7, 'COLUSA', 'COLUSA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 8)
UPDATE County SET Name = 'CONTRA COSTA', Value = 'CONTRACOSTA', StateID = 6 WHERE ID = 8
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (8, 'CONTRA COSTA', 'CONTRACOSTA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 9)
UPDATE County SET Name = 'DEL NORTE', Value = 'DELNORTE', StateID = 6 WHERE ID = 9
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (9, 'DEL NORTE', 'DELNORTE', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 10)
UPDATE County SET Name = 'EASTERN DISTRICT', Value = 'EASTERNDISTRICT', StateID = 6 WHERE ID = 10
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (10, 'EASTERN DISTRICT', 'EASTERNDISTRICT', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 11)
UPDATE County SET Name = 'EL DORADO', Value = 'ELDORADO', StateID = 6 WHERE ID = 11
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (11, 'EL DORADO', 'ELDORADO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 12)
UPDATE County SET Name = 'FRESNO', Value = 'FRESNO', StateID = 6 WHERE ID = 12
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (12, 'FRESNO', 'FRESNO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 13)
UPDATE County SET Name = 'GLENN', Value = 'GLENN', StateID = 6 WHERE ID = 13
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (13, 'GLENN', 'GLENN', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 14)
UPDATE County SET Name = 'HUMBOLDT', Value = 'HUMBOLDT', StateID = 6 WHERE ID = 14
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (14, 'HUMBOLDT', 'HUMBOLDT', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 15)
UPDATE County SET Name = 'IMPERIAL', Value = 'IMPERIAL', StateID = 6 WHERE ID = 15
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (15, 'IMPERIAL', 'IMPERIAL', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 16)
UPDATE County SET Name = 'INYO', Value = 'INYO', StateID = 6 WHERE ID = 16
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (16, 'INYO', 'INYO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 17)
UPDATE County SET Name = 'KERN', Value = 'KERN', StateID = 6 WHERE ID = 17
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (17, 'KERN', 'KERN', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 18)
UPDATE County SET Name = 'KINGS', Value = 'KINGS', StateID = 6 WHERE ID = 18
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (18, 'KINGS', 'KINGS', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 19)
UPDATE County SET Name = 'LAKE', Value = 'LAKE', StateID = 6 WHERE ID = 19
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (19, 'LAKE', 'LAKE', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 20)
UPDATE County SET Name = 'LASSEN', Value = 'LASSEN', StateID = 6 WHERE ID = 20
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (20, 'LASSEN', 'LASSEN', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 21)
UPDATE County SET Name = 'LOS ANGELES', Value = 'LOSANGELES', StateID = 6 WHERE ID = 21
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (21, 'LOS ANGELES', 'LOSANGELES', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 22)
UPDATE County SET Name = 'MADERA', Value = 'MADERA', StateID = 6 WHERE ID = 22
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (22, 'MADERA', 'MADERA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 23)
UPDATE County SET Name = 'MARIN', Value = 'MARIN', StateID = 6 WHERE ID = 23
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (23, 'MARIN', 'MARIN', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 24)
UPDATE County SET Name = 'MARIPOSA', Value = 'MARIPOSA', StateID = 6 WHERE ID = 24
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (24, 'MARIPOSA', 'MARIPOSA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 25)
UPDATE County SET Name = 'MENDOCINO', Value = 'MENDOCINO', StateID = 6 WHERE ID = 25
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (25, 'MENDOCINO', 'MENDOCINO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 26)
UPDATE County SET Name = 'MERCED', Value = 'MERCED', StateID = 6 WHERE ID = 26
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (26, 'MERCED', 'MERCED', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 27)
UPDATE County SET Name = 'MODOC', Value = 'MODOC', StateID = 6 WHERE ID = 27
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (27, 'MODOC', 'MODOC', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 28)
UPDATE County SET Name = 'MONO', Value = 'MONO', StateID = 6 WHERE ID = 28
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (28, 'MONO', 'MONO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 29)
UPDATE County SET Name = 'MONTEREY', Value = 'MONTEREY', StateID = 6 WHERE ID = 29
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (29, 'MONTEREY', 'MONTEREY', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 30)
UPDATE County SET Name = 'NAPA', Value = 'NAPA', StateID = 6 WHERE ID = 30
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (30, 'NAPA', 'NAPA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 31)
UPDATE County SET Name = 'NEVADA', Value = 'NEVADA', StateID = 6 WHERE ID = 31
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (31, 'NEVADA', 'NEVADA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 32)
UPDATE County SET Name = 'NORTHERN DISTRICT', Value = 'NORTHERNDISTRICT', StateID = 6 WHERE ID = 32
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (32, 'NORTHERN DISTRICT', 'NORTHERNDISTRICT', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 33)
UPDATE County SET Name = 'ORANGE', Value = 'ORANGE', StateID = 6 WHERE ID = 33
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (33, 'ORANGE', 'ORANGE', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 34)
UPDATE County SET Name = 'OTHER COUNTY', Value = 'OTHERCOUNTY', StateID = 6 WHERE ID = 34
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (34, 'OTHER COUNTY', 'OTHERCOUNTY', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 35)
UPDATE County SET Name = 'PLACER', Value = 'PLACER', StateID = 6 WHERE ID = 35
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (35, 'PLACER', 'PLACER', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 36)
UPDATE County SET Name = 'PLUMAS', Value = 'PLUMAS', StateID = 6 WHERE ID = 36
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (36, 'PLUMAS', 'PLUMAS', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 37)
UPDATE County SET Name = 'RIVERSIDE', Value = 'RIVERSIDE', StateID = 6 WHERE ID = 37
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (37, 'RIVERSIDE', 'RIVERSIDE', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 38)
UPDATE County SET Name = 'SACRAMENTO', Value = 'SACRAMENTO', StateID = 6 WHERE ID = 38
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (38, 'SACRAMENTO', 'SACRAMENTO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 39)
UPDATE County SET Name = 'SAN BENITO', Value = 'SANBENITO', StateID = 6 WHERE ID = 39
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (39, 'SAN BENITO', 'SANBENITO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 40)
UPDATE County SET Name = 'SAN BERNARDINO', Value = 'SANBERNARDINO', StateID = 6 WHERE ID = 40
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (40, 'SAN BERNARDINO', 'SANBERNARDINO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 41)
UPDATE County SET Name = 'SAN DIEGO', Value = 'SANDIEGO', StateID = 6 WHERE ID = 41
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (41, 'SAN DIEGO', 'SANDIEGO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 42)
UPDATE County SET Name = 'SAN FRANCISCO', Value = 'SANFRANCISCO', StateID = 6 WHERE ID = 42
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (42, 'SAN FRANCISCO', 'SANFRANCISCO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 43)
UPDATE County SET Name = 'SAN JOAQUIN', Value = 'SANJOAQUIN', StateID = 6 WHERE ID = 43
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (43, 'SAN JOAQUIN', 'SANJOAQUIN', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 44)
UPDATE County SET Name = 'SAN LUIS OBISPO', Value = 'SANLUISOBISPO', StateID = 6 WHERE ID = 44
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (44, 'SAN LUIS OBISPO', 'SANLUISOBISPO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 45)
UPDATE County SET Name = 'SAN MATEO', Value = 'SANMATEO', StateID = 6 WHERE ID = 45
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (45, 'SAN MATEO', 'SANMATEO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 46)
UPDATE County SET Name = 'SANTA BARBARA', Value = 'SANTABARBARA', StateID = 6 WHERE ID = 46
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (46, 'SANTA BARBARA', 'SANTABARBARA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 47)
UPDATE County SET Name = 'SANTA CLARA', Value = 'SANTACLARA', StateID = 6 WHERE ID = 47
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (47, 'SANTA CLARA', 'SANTACLARA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 48)
UPDATE County SET Name = 'SANTA CRUZ', Value = 'SANTACRUZ', StateID = 6 WHERE ID = 48
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (48, 'SANTA CRUZ', 'SANTACRUZ', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 49)
UPDATE County SET Name = 'SHASTA', Value = 'SHASTA', StateID = 6 WHERE ID = 49
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (49, 'SHASTA', 'SHASTA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 50)
UPDATE County SET Name = 'SIERRA', Value = 'SIERRA', StateID = 6 WHERE ID = 50
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (50, 'SIERRA', 'SIERRA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 51)
UPDATE County SET Name = 'SISKIYOU', Value = 'SISKIYOU', StateID = 6 WHERE ID = 51
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (51, 'SISKIYOU', 'SISKIYOU', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 52)
UPDATE County SET Name = 'SOLANO', Value = 'SOLANO', StateID = 6 WHERE ID = 52
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (52, 'SOLANO', 'SOLANO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 53)
UPDATE County SET Name = 'SONOMA', Value = 'SONOMA', StateID = 6 WHERE ID = 53
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (53, 'SONOMA', 'SONOMA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 54)
UPDATE County SET Name = 'SOUTHERN DISTRICT', Value = 'SOUTHERNDISTRICT', StateID = 6 WHERE ID = 54
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (54, 'SOUTHERN DISTRICT', 'SOUTHERNDISTRICT', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 55)
UPDATE County SET Name = 'STANISLAUS', Value = 'STANISLAUS', StateID = 6 WHERE ID = 55
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (55, 'STANISLAUS', 'STANISLAUS', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 56)
UPDATE County SET Name = 'SUTTER', Value = 'SUTTER', StateID = 6 WHERE ID = 56
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (56, 'SUTTER', 'SUTTER', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 57)
UPDATE County SET Name = 'TEHAMA', Value = 'TEHAMA', StateID = 6 WHERE ID = 57
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (57, 'TEHAMA', 'TEHAMA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 58)
UPDATE County SET Name = 'TRINITY', Value = 'TRINITY', StateID = 6 WHERE ID = 58
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (58, 'TRINITY', 'TRINITY', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 59)
UPDATE County SET Name = 'TULARE', Value = 'TULARE', StateID = 6 WHERE ID = 59
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (59, 'TULARE', 'TULARE', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 60)
UPDATE County SET Name = 'TUOLUMNE', Value = 'TUOLUMNE', StateID = 6 WHERE ID = 60
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (60, 'TUOLUMNE', 'TUOLUMNE', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 61)
UPDATE County SET Name = 'VENTURA', Value = 'VENTURA', StateID = 6 WHERE ID = 61
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (61, 'VENTURA', 'VENTURA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 62)
UPDATE County SET Name = 'YOLO', Value = 'YOLO', StateID = 6 WHERE ID = 62
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (62, 'YOLO', 'YOLO', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 63)
UPDATE County SET Name = 'YUBA', Value = 'YUBA', StateID = 6 WHERE ID = 63
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (63, 'YUBA', 'YUBA', 6)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 64)
UPDATE County SET Name = 'Apache', Value = 'Apache', StateID = 4 WHERE ID = 64
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (64, 'Apache', 'Apache', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 65)
UPDATE County SET Name = 'Cochise', Value = 'Cochise', StateID = 4 WHERE ID = 65
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (65, 'Cochise', 'Cochise', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 66)
UPDATE County SET Name = 'Coconino', Value = 'Coconino', StateID = 4 WHERE ID = 66
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (66, 'Coconino', 'Coconino', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 67)
UPDATE County SET Name = 'Gila', Value = 'Gila', StateID = 4 WHERE ID = 67
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (67, 'Gila', 'Gila', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 68)
UPDATE County SET Name = 'Graham', Value = 'Graham', StateID = 4 WHERE ID = 68
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (68, 'Graham', 'Graham', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 69)
UPDATE County SET Name = 'Greenlee', Value = 'Greenlee', StateID = 4 WHERE ID = 69
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (69, 'Greenlee', 'Greenlee', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 70)
UPDATE County SET Name = 'La Paz', Value = 'La Paz', StateID = 4 WHERE ID = 70
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (70, 'La Paz', 'La Paz', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 71)
UPDATE County SET Name = 'Maricopa', Value = 'Maricopa', StateID = 4 WHERE ID = 71
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (71, 'Maricopa', 'Maricopa', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 72)
UPDATE County SET Name = 'Mohave', Value = 'Mohave', StateID = 4 WHERE ID = 72
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (72, 'Mohave', 'Mohave', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 73)
UPDATE County SET Name = 'Navajo', Value = 'Navajo', StateID = 4 WHERE ID = 73
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (73, 'Navajo', 'Navajo', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 74)
UPDATE County SET Name = 'Pima', Value = 'Pima', StateID = 4 WHERE ID = 74
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (74, 'Pima', 'Pima', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 75)
UPDATE County SET Name = 'Pinal', Value = 'Pinal', StateID = 4 WHERE ID = 75
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (75, 'Pinal', 'Pinal', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 76)
UPDATE County SET Name = 'Santa Cruz', Value = 'Santa Cruz', StateID = 4 WHERE ID = 76
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (76, 'Santa Cruz', 'Santa Cruz', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 77)
UPDATE County SET Name = 'Yavapai', Value = 'Yavapai', StateID = 4 WHERE ID = 77
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (77, 'Yavapai', 'Yavapai', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 78)
UPDATE County SET Name = 'Yuma', Value = 'Yuma', StateID = 4 WHERE ID = 78
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (78, 'Yuma', 'Yuma', 4)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 79)
UPDATE County SET Name = 'Adams', Value = 'Adams', StateID = 7 WHERE ID = 79
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (79, 'Adams', 'Adams', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 80)
UPDATE County SET Name = 'Alamosa', Value = 'Alamosa', StateID = 7 WHERE ID = 80
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (80, 'Alamosa', 'Alamosa', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 81)
UPDATE County SET Name = 'Arapahoe', Value = 'Arapahoe', StateID = 7 WHERE ID = 81
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (81, 'Arapahoe', 'Arapahoe', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 82)
UPDATE County SET Name = 'Archuleta', Value = 'Archuleta', StateID = 7 WHERE ID = 82
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (82, 'Archuleta', 'Archuleta', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 83)
UPDATE County SET Name = 'Baca', Value = 'Baca', StateID = 7 WHERE ID = 83
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (83, 'Baca', 'Baca', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 84)
UPDATE County SET Name = 'Bent', Value = 'Bent', StateID = 7 WHERE ID = 84
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (84, 'Bent', 'Bent', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 85)
UPDATE County SET Name = 'Boulder', Value = 'Boulder', StateID = 7 WHERE ID = 85
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (85, 'Boulder', 'Boulder', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 86)
UPDATE County SET Name = 'Chaffee', Value = 'Chaffee', StateID = 7 WHERE ID = 86
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (86, 'Chaffee', 'Chaffee', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 87)
UPDATE County SET Name = 'Cheyenne', Value = 'Cheyenne', StateID = 7 WHERE ID = 87
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (87, 'Cheyenne', 'Cheyenne', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 88)
UPDATE County SET Name = 'City and of Broomfield', Value = 'City and of Broomfield', StateID = 7 WHERE ID = 88
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (88, 'City and of Broomfield', 'City and of Broomfield', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 89)
UPDATE County SET Name = 'City and of Denver', Value = 'City and of Denver', StateID = 7 WHERE ID = 89
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (89, 'City and of Denver', 'City and of Denver', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 90)
UPDATE County SET Name = 'Clear Creek', Value = 'Clear Creek', StateID = 7 WHERE ID = 90
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (90, 'Clear Creek', 'Clear Creek', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 91)
UPDATE County SET Name = 'Conejos', Value = 'Conejos', StateID = 7 WHERE ID = 91
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (91, 'Conejos', 'Conejos', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 92)
UPDATE County SET Name = 'Costilla', Value = 'Costilla', StateID = 7 WHERE ID = 92
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (92, 'Costilla', 'Costilla', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 93)
UPDATE County SET Name = 'Crowley', Value = 'Crowley', StateID = 7 WHERE ID = 93
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (93, 'Crowley', 'Crowley', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 94)
UPDATE County SET Name = 'Custer', Value = 'Custer', StateID = 7 WHERE ID = 94
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (94, 'Custer', 'Custer', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 95)
UPDATE County SET Name = 'Delta', Value = 'Delta', StateID = 7 WHERE ID = 95
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (95, 'Delta', 'Delta', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 96)
UPDATE County SET Name = 'Dolores', Value = 'Dolores', StateID = 7 WHERE ID = 96
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (96, 'Dolores', 'Dolores', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 97)
UPDATE County SET Name = 'Douglas', Value = 'Douglas', StateID = 7 WHERE ID = 97
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (97, 'Douglas', 'Douglas', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 98)
UPDATE County SET Name = 'Eagle', Value = 'Eagle', StateID = 7 WHERE ID = 98
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (98, 'Eagle', 'Eagle', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 99)
UPDATE County SET Name = 'El Paso', Value = 'El Paso', StateID = 7 WHERE ID = 99
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (99, 'El Paso', 'El Paso', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 100)
UPDATE County SET Name = 'Elbert', Value = 'Elbert', StateID = 7 WHERE ID = 100
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (100, 'Elbert', 'Elbert', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 101)
UPDATE County SET Name = 'Fremont', Value = 'Fremont', StateID = 7 WHERE ID = 101
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (101, 'Fremont', 'Fremont', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 102)
UPDATE County SET Name = 'Garfield', Value = 'Garfield', StateID = 7 WHERE ID = 102
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (102, 'Garfield', 'Garfield', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 103)
UPDATE County SET Name = 'Gilpin', Value = 'Gilpin', StateID = 7 WHERE ID = 103
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (103, 'Gilpin', 'Gilpin', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 104)
UPDATE County SET Name = 'Grand', Value = 'Grand', StateID = 7 WHERE ID = 104
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (104, 'Grand', 'Grand', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 105)
UPDATE County SET Name = 'Gunnison', Value = 'Gunnison', StateID = 7 WHERE ID = 105
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (105, 'Gunnison', 'Gunnison', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 106)
UPDATE County SET Name = 'Hinsdale', Value = 'Hinsdale', StateID = 7 WHERE ID = 106
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (106, 'Hinsdale', 'Hinsdale', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 107)
UPDATE County SET Name = 'Huerfano', Value = 'Huerfano', StateID = 7 WHERE ID = 107
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (107, 'Huerfano', 'Huerfano', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 108)
UPDATE County SET Name = 'Jackson', Value = 'Jackson', StateID = 7 WHERE ID = 108
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (108, 'Jackson', 'Jackson', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 109)
UPDATE County SET Name = 'Jefferson', Value = 'Jefferson', StateID = 7 WHERE ID = 109
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (109, 'Jefferson', 'Jefferson', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 110)
UPDATE County SET Name = 'Kiowa', Value = 'Kiowa', StateID = 7 WHERE ID = 110
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (110, 'Kiowa', 'Kiowa', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 111)
UPDATE County SET Name = 'Kit Carson', Value = 'Kit Carson', StateID = 7 WHERE ID = 111
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (111, 'Kit Carson', 'Kit Carson', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 112)
UPDATE County SET Name = 'La Plata', Value = 'La Plata', StateID = 7 WHERE ID = 112
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (112, 'La Plata', 'La Plata', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 113)
UPDATE County SET Name = 'Lake', Value = 'Lake', StateID = 7 WHERE ID = 113
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (113, 'Lake', 'Lake', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 114)
UPDATE County SET Name = 'Larimer', Value = 'Larimer', StateID = 7 WHERE ID = 114
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (114, 'Larimer', 'Larimer', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 115)
UPDATE County SET Name = 'Las Animas', Value = 'Las Animas', StateID = 7 WHERE ID = 115
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (115, 'Las Animas', 'Las Animas', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 116)
UPDATE County SET Name = 'Lincoln', Value = 'Lincoln', StateID = 7 WHERE ID = 116
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (116, 'Lincoln', 'Lincoln', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 117)
UPDATE County SET Name = 'Logan', Value = 'Logan', StateID = 7 WHERE ID = 117
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (117, 'Logan', 'Logan', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 118)
UPDATE County SET Name = 'Mesa', Value = 'Mesa', StateID = 7 WHERE ID = 118
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (118, 'Mesa', 'Mesa', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 119)
UPDATE County SET Name = 'Mineral', Value = 'Mineral', StateID = 7 WHERE ID = 119
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (119, 'Mineral', 'Mineral', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 120)
UPDATE County SET Name = 'Moffat', Value = 'Moffat', StateID = 7 WHERE ID = 120
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (120, 'Moffat', 'Moffat', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 121)
UPDATE County SET Name = 'Montezuma', Value = 'Montezuma', StateID = 7 WHERE ID = 121
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (121, 'Montezuma', 'Montezuma', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 122)
UPDATE County SET Name = 'Montrose', Value = 'Montrose', StateID = 7 WHERE ID = 122
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (122, 'Montrose', 'Montrose', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 123)
UPDATE County SET Name = 'Morgan', Value = 'Morgan', StateID = 7 WHERE ID = 123
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (123, 'Morgan', 'Morgan', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 124)
UPDATE County SET Name = 'Otero', Value = 'Otero', StateID = 7 WHERE ID = 124
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (124, 'Otero', 'Otero', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 125)
UPDATE County SET Name = 'Ouray', Value = 'Ouray', StateID = 7 WHERE ID = 125
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (125, 'Ouray', 'Ouray', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 126)
UPDATE County SET Name = 'Park', Value = 'Park', StateID = 7 WHERE ID = 126
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (126, 'Park', 'Park', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 127)
UPDATE County SET Name = 'Phillips', Value = 'Phillips', StateID = 7 WHERE ID = 127
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (127, 'Phillips', 'Phillips', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 128)
UPDATE County SET Name = 'Pitkin', Value = 'Pitkin', StateID = 7 WHERE ID = 128
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (128, 'Pitkin', 'Pitkin', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 129)
UPDATE County SET Name = 'Prowers', Value = 'Prowers', StateID = 7 WHERE ID = 129
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (129, 'Prowers', 'Prowers', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 130)
UPDATE County SET Name = 'Pueblo', Value = 'Pueblo', StateID = 7 WHERE ID = 130
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (130, 'Pueblo', 'Pueblo', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 131)
UPDATE County SET Name = 'Rio Blanco', Value = 'Rio Blanco', StateID = 7 WHERE ID = 131
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (131, 'Rio Blanco', 'Rio Blanco', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 132)
UPDATE County SET Name = 'Rio Grande', Value = 'Rio Grande', StateID = 7 WHERE ID = 132
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (132, 'Rio Grande', 'Rio Grande', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 133)
UPDATE County SET Name = 'Routt', Value = 'Routt', StateID = 7 WHERE ID = 133
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (133, 'Routt', 'Routt', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 134)
UPDATE County SET Name = 'Saguache', Value = 'Saguache', StateID = 7 WHERE ID = 134
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (134, 'Saguache', 'Saguache', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 135)
UPDATE County SET Name = 'San Juan', Value = 'San Juan', StateID = 7 WHERE ID = 135
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (135, 'San Juan', 'San Juan', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 136)
UPDATE County SET Name = 'San Miguel', Value = 'San Miguel', StateID = 7 WHERE ID = 136
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (136, 'San Miguel', 'San Miguel', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 137)
UPDATE County SET Name = 'Sedgwick', Value = 'Sedgwick', StateID = 7 WHERE ID = 137
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (137, 'Sedgwick', 'Sedgwick', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 138)
UPDATE County SET Name = 'Summit', Value = 'Summit', StateID = 7 WHERE ID = 138
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (138, 'Summit', 'Summit', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 139)
UPDATE County SET Name = 'Teller', Value = 'Teller', StateID = 7 WHERE ID = 139
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (139, 'Teller', 'Teller', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 140)
UPDATE County SET Name = 'Washington', Value = 'Washington', StateID = 7 WHERE ID = 140
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (140, 'Washington', 'Washington', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 141)
UPDATE County SET Name = 'Weld', Value = 'Weld', StateID = 7 WHERE ID = 141
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (141, 'Weld', 'Weld', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 142)
UPDATE County SET Name = 'Yuma', Value = 'Yuma', StateID = 7 WHERE ID = 142
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (142, 'Yuma', 'Yuma', 7)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 143)
UPDATE County SET Name = 'Ada', Value = 'Ada', StateID = 15 WHERE ID = 143
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (143, 'Ada', 'Ada', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 144)
UPDATE County SET Name = 'Adams', Value = 'Adams', StateID = 15 WHERE ID = 144
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (144, 'Adams', 'Adams', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 145)
UPDATE County SET Name = 'Bannock', Value = 'Bannock', StateID = 15 WHERE ID = 145
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (145, 'Bannock', 'Bannock', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 146)
UPDATE County SET Name = 'Bear Lake', Value = 'Bear Lake', StateID = 15 WHERE ID = 146
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (146, 'Bear Lake', 'Bear Lake', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 147)
UPDATE County SET Name = 'Benewah', Value = 'Benewah', StateID = 15 WHERE ID = 147
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (147, 'Benewah', 'Benewah', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 148)
UPDATE County SET Name = 'Bingham', Value = 'Bingham', StateID = 15 WHERE ID = 148
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (148, 'Bingham', 'Bingham', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 149)
UPDATE County SET Name = 'Blaine', Value = 'Blaine', StateID = 15 WHERE ID = 149
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (149, 'Blaine', 'Blaine', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 150)
UPDATE County SET Name = 'Boise', Value = 'Boise', StateID = 15 WHERE ID = 150
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (150, 'Boise', 'Boise', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 151)
UPDATE County SET Name = 'Bonner', Value = 'Bonner', StateID = 15 WHERE ID = 151
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (151, 'Bonner', 'Bonner', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 152)
UPDATE County SET Name = 'Bonneville', Value = 'Bonneville', StateID = 15 WHERE ID = 152
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (152, 'Bonneville', 'Bonneville', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 153)
UPDATE County SET Name = 'Boundary', Value = 'Boundary', StateID = 15 WHERE ID = 153
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (153, 'Boundary', 'Boundary', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 154)
UPDATE County SET Name = 'Butte', Value = 'Butte', StateID = 15 WHERE ID = 154
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (154, 'Butte', 'Butte', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 155)
UPDATE County SET Name = 'Camas', Value = 'Camas', StateID = 15 WHERE ID = 155
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (155, 'Camas', 'Camas', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 156)
UPDATE County SET Name = 'Canyon', Value = 'Canyon', StateID = 15 WHERE ID = 156
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (156, 'Canyon', 'Canyon', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 157)
UPDATE County SET Name = 'Caribou', Value = 'Caribou', StateID = 15 WHERE ID = 157
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (157, 'Caribou', 'Caribou', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 158)
UPDATE County SET Name = 'Cassia', Value = 'Cassia', StateID = 15 WHERE ID = 158
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (158, 'Cassia', 'Cassia', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 159)
UPDATE County SET Name = 'Clark', Value = 'Clark', StateID = 15 WHERE ID = 159
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (159, 'Clark', 'Clark', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 160)
UPDATE County SET Name = 'Clearwater', Value = 'Clearwater', StateID = 15 WHERE ID = 160
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (160, 'Clearwater', 'Clearwater', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 161)
UPDATE County SET Name = 'Custer', Value = 'Custer', StateID = 15 WHERE ID = 161
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (161, 'Custer', 'Custer', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 162)
UPDATE County SET Name = 'Elmore', Value = 'Elmore', StateID = 15 WHERE ID = 162
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (162, 'Elmore', 'Elmore', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 163)
UPDATE County SET Name = 'Franklin', Value = 'Franklin', StateID = 15 WHERE ID = 163
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (163, 'Franklin', 'Franklin', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 164)
UPDATE County SET Name = 'Fremont', Value = 'Fremont', StateID = 15 WHERE ID = 164
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (164, 'Fremont', 'Fremont', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 165)
UPDATE County SET Name = 'Gem', Value = 'Gem', StateID = 15 WHERE ID = 165
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (165, 'Gem', 'Gem', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 166)
UPDATE County SET Name = 'Gooding', Value = 'Gooding', StateID = 15 WHERE ID = 166
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (166, 'Gooding', 'Gooding', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 167)
UPDATE County SET Name = 'Idaho', Value = 'Idaho', StateID = 15 WHERE ID = 167
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (167, 'Idaho', 'Idaho', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 168)
UPDATE County SET Name = 'Jefferson', Value = 'Jefferson', StateID = 15 WHERE ID = 168
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (168, 'Jefferson', 'Jefferson', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 169)
UPDATE County SET Name = 'Jerome', Value = 'Jerome', StateID = 15 WHERE ID = 169
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (169, 'Jerome', 'Jerome', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 170)
UPDATE County SET Name = 'Kootenai', Value = 'Kootenai', StateID = 15 WHERE ID = 170
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (170, 'Kootenai', 'Kootenai', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 171)
UPDATE County SET Name = 'Latah', Value = 'Latah', StateID = 15 WHERE ID = 171
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (171, 'Latah', 'Latah', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 172)
UPDATE County SET Name = 'Lemhi', Value = 'Lemhi', StateID = 15 WHERE ID = 172
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (172, 'Lemhi', 'Lemhi', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 173)
UPDATE County SET Name = 'Lewis', Value = 'Lewis', StateID = 15 WHERE ID = 173
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (173, 'Lewis', 'Lewis', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 174)
UPDATE County SET Name = 'Lincoln', Value = 'Lincoln', StateID = 15 WHERE ID = 174
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (174, 'Lincoln', 'Lincoln', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 175)
UPDATE County SET Name = 'Madison', Value = 'Madison', StateID = 15 WHERE ID = 175
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (175, 'Madison', 'Madison', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 176)
UPDATE County SET Name = 'Minidoka', Value = 'Minidoka', StateID = 15 WHERE ID = 176
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (176, 'Minidoka', 'Minidoka', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 177)
UPDATE County SET Name = 'Nez Perce', Value = 'Nez Perce', StateID = 15 WHERE ID = 177
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (177, 'Nez Perce', 'Nez Perce', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 178)
UPDATE County SET Name = 'Oneida', Value = 'Oneida', StateID = 15 WHERE ID = 178
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (178, 'Oneida', 'Oneida', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 179)
UPDATE County SET Name = 'Owyhee', Value = 'Owyhee', StateID = 15 WHERE ID = 179
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (179, 'Owyhee', 'Owyhee', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 180)
UPDATE County SET Name = 'Payette', Value = 'Payette', StateID = 15 WHERE ID = 180
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (180, 'Payette', 'Payette', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 181)
UPDATE County SET Name = 'Power', Value = 'Power', StateID = 15 WHERE ID = 181
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (181, 'Power', 'Power', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 182)
UPDATE County SET Name = 'Shoshone', Value = 'Shoshone', StateID = 15 WHERE ID = 182
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (182, 'Shoshone', 'Shoshone', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 183)
UPDATE County SET Name = 'Teton', Value = 'Teton', StateID = 15 WHERE ID = 183
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (183, 'Teton', 'Teton', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 184)
UPDATE County SET Name = 'Twin Falls', Value = 'Twin Falls', StateID = 15 WHERE ID = 184
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (184, 'Twin Falls', 'Twin Falls', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 185)
UPDATE County SET Name = 'Valley', Value = 'Valley', StateID = 15 WHERE ID = 185
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (185, 'Valley', 'Valley', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 186)
UPDATE County SET Name = 'Washington', Value = 'Washington', StateID = 15 WHERE ID = 186
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (186, 'Washington', 'Washington', 15)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 187)
UPDATE County SET Name = 'Beaverhead', Value = 'Beaverhead', StateID = 30 WHERE ID = 187
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (187, 'Beaverhead', 'Beaverhead', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 188)
UPDATE County SET Name = 'Big Horn', Value = 'Big Horn', StateID = 30 WHERE ID = 188
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (188, 'Big Horn', 'Big Horn', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 189)
UPDATE County SET Name = 'Blaine', Value = 'Blaine', StateID = 30 WHERE ID = 189
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (189, 'Blaine', 'Blaine', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 190)
UPDATE County SET Name = 'Broadwater', Value = 'Broadwater', StateID = 30 WHERE ID = 190
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (190, 'Broadwater', 'Broadwater', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 191)
UPDATE County SET Name = 'Carbon', Value = 'Carbon', StateID = 30 WHERE ID = 191
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (191, 'Carbon', 'Carbon', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 192)
UPDATE County SET Name = 'Carter', Value = 'Carter', StateID = 30 WHERE ID = 192
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (192, 'Carter', 'Carter', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 193)
UPDATE County SET Name = 'Cascade', Value = 'Cascade', StateID = 30 WHERE ID = 193
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (193, 'Cascade', 'Cascade', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 194)
UPDATE County SET Name = 'Chouteau', Value = 'Chouteau', StateID = 30 WHERE ID = 194
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (194, 'Chouteau', 'Chouteau', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 195)
UPDATE County SET Name = 'Custer', Value = 'Custer', StateID = 30 WHERE ID = 195
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (195, 'Custer', 'Custer', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 196)
UPDATE County SET Name = 'Daniels', Value = 'Daniels', StateID = 30 WHERE ID = 196
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (196, 'Daniels', 'Daniels', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 197)
UPDATE County SET Name = 'Dawson', Value = 'Dawson', StateID = 30 WHERE ID = 197
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (197, 'Dawson', 'Dawson', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 198)
UPDATE County SET Name = 'Deer Lodge', Value = 'Deer Lodge', StateID = 30 WHERE ID = 198
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (198, 'Deer Lodge', 'Deer Lodge', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 199)
UPDATE County SET Name = 'Fallon', Value = 'Fallon', StateID = 30 WHERE ID = 199
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (199, 'Fallon', 'Fallon', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 200)
UPDATE County SET Name = 'Fergus', Value = 'Fergus', StateID = 30 WHERE ID = 200
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (200, 'Fergus', 'Fergus', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 201)
UPDATE County SET Name = 'Flathead', Value = 'Flathead', StateID = 30 WHERE ID = 201
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (201, 'Flathead', 'Flathead', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 202)
UPDATE County SET Name = 'Gallatin', Value = 'Gallatin', StateID = 30 WHERE ID = 202
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (202, 'Gallatin', 'Gallatin', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 203)
UPDATE County SET Name = 'Garfield', Value = 'Garfield', StateID = 30 WHERE ID = 203
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (203, 'Garfield', 'Garfield', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 204)
UPDATE County SET Name = 'Glacier', Value = 'Glacier', StateID = 30 WHERE ID = 204
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (204, 'Glacier', 'Glacier', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 205)
UPDATE County SET Name = 'Golden Valley', Value = 'Golden Valley', StateID = 30 WHERE ID = 205
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (205, 'Golden Valley', 'Golden Valley', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 206)
UPDATE County SET Name = 'Granite', Value = 'Granite', StateID = 30 WHERE ID = 206
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (206, 'Granite', 'Granite', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 207)
UPDATE County SET Name = 'Hill', Value = 'Hill', StateID = 30 WHERE ID = 207
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (207, 'Hill', 'Hill', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 208)
UPDATE County SET Name = 'Jefferson', Value = 'Jefferson', StateID = 30 WHERE ID = 208
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (208, 'Jefferson', 'Jefferson', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 209)
UPDATE County SET Name = 'Judith Basin', Value = 'Judith Basin', StateID = 30 WHERE ID = 209
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (209, 'Judith Basin', 'Judith Basin', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 210)
UPDATE County SET Name = 'Lake', Value = 'Lake', StateID = 30 WHERE ID = 210
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (210, 'Lake', 'Lake', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 211)
UPDATE County SET Name = 'Lewis and Clark', Value = 'Lewis and Clark', StateID = 30 WHERE ID = 211
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (211, 'Lewis and Clark', 'Lewis and Clark', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 212)
UPDATE County SET Name = 'Liberty', Value = 'Liberty', StateID = 30 WHERE ID = 212
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (212, 'Liberty', 'Liberty', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 213)
UPDATE County SET Name = 'Lincoln', Value = 'Lincoln', StateID = 30 WHERE ID = 213
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (213, 'Lincoln', 'Lincoln', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 214)
UPDATE County SET Name = 'Madison', Value = 'Madison', StateID = 30 WHERE ID = 214
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (214, 'Madison', 'Madison', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 215)
UPDATE County SET Name = 'McCone', Value = 'McCone', StateID = 30 WHERE ID = 215
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (215, 'McCone', 'McCone', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 216)
UPDATE County SET Name = 'Meagher', Value = 'Meagher', StateID = 30 WHERE ID = 216
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (216, 'Meagher', 'Meagher', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 217)
UPDATE County SET Name = 'Mineral', Value = 'Mineral', StateID = 30 WHERE ID = 217
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (217, 'Mineral', 'Mineral', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 218)
UPDATE County SET Name = 'Missoula', Value = 'Missoula', StateID = 30 WHERE ID = 218
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (218, 'Missoula', 'Missoula', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 219)
UPDATE County SET Name = 'Musselshell', Value = 'Musselshell', StateID = 30 WHERE ID = 219
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (219, 'Musselshell', 'Musselshell', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 220)
UPDATE County SET Name = 'Park', Value = 'Park', StateID = 30 WHERE ID = 220
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (220, 'Park', 'Park', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 221)
UPDATE County SET Name = 'Petroleum', Value = 'Petroleum', StateID = 30 WHERE ID = 221
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (221, 'Petroleum', 'Petroleum', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 222)
UPDATE County SET Name = 'Phillips', Value = 'Phillips', StateID = 30 WHERE ID = 222
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (222, 'Phillips', 'Phillips', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 223)
UPDATE County SET Name = 'Pondera', Value = 'Pondera', StateID = 30 WHERE ID = 223
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (223, 'Pondera', 'Pondera', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 224)
UPDATE County SET Name = 'Powder River', Value = 'Powder River', StateID = 30 WHERE ID = 224
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (224, 'Powder River', 'Powder River', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 225)
UPDATE County SET Name = 'Powell', Value = 'Powell', StateID = 30 WHERE ID = 225
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (225, 'Powell', 'Powell', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 226)
UPDATE County SET Name = 'Prairie', Value = 'Prairie', StateID = 30 WHERE ID = 226
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (226, 'Prairie', 'Prairie', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 227)
UPDATE County SET Name = 'Ravalli', Value = 'Ravalli', StateID = 30 WHERE ID = 227
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (227, 'Ravalli', 'Ravalli', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 228)
UPDATE County SET Name = 'Richland', Value = 'Richland', StateID = 30 WHERE ID = 228
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (228, 'Richland', 'Richland', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 229)
UPDATE County SET Name = 'Roosevelt', Value = 'Roosevelt', StateID = 30 WHERE ID = 229
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (229, 'Roosevelt', 'Roosevelt', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 230)
UPDATE County SET Name = 'Rosebud', Value = 'Rosebud', StateID = 30 WHERE ID = 230
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (230, 'Rosebud', 'Rosebud', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 231)
UPDATE County SET Name = 'Sanders', Value = 'Sanders', StateID = 30 WHERE ID = 231
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (231, 'Sanders', 'Sanders', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 232)
UPDATE County SET Name = 'Sheridan', Value = 'Sheridan', StateID = 30 WHERE ID = 232
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (232, 'Sheridan', 'Sheridan', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 233)
UPDATE County SET Name = 'Silver Bow', Value = 'Silver Bow', StateID = 30 WHERE ID = 233
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (233, 'Silver Bow', 'Silver Bow', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 234)
UPDATE County SET Name = 'Stillwater', Value = 'Stillwater', StateID = 30 WHERE ID = 234
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (234, 'Stillwater', 'Stillwater', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 235)
UPDATE County SET Name = 'Sweet Grass', Value = 'Sweet Grass', StateID = 30 WHERE ID = 235
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (235, 'Sweet Grass', 'Sweet Grass', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 236)
UPDATE County SET Name = 'Teton', Value = 'Teton', StateID = 30 WHERE ID = 236
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (236, 'Teton', 'Teton', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 237)
UPDATE County SET Name = 'Toole', Value = 'Toole', StateID = 30 WHERE ID = 237
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (237, 'Toole', 'Toole', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 238)
UPDATE County SET Name = 'Treasure', Value = 'Treasure', StateID = 30 WHERE ID = 238
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (238, 'Treasure', 'Treasure', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 239)
UPDATE County SET Name = 'Valley', Value = 'Valley', StateID = 30 WHERE ID = 239
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (239, 'Valley', 'Valley', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 240)
UPDATE County SET Name = 'Wheatland', Value = 'Wheatland', StateID = 30 WHERE ID = 240
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (240, 'Wheatland', 'Wheatland', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 241)
UPDATE County SET Name = 'Wibaux', Value = 'Wibaux', StateID = 30 WHERE ID = 241
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (241, 'Wibaux', 'Wibaux', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 242)
UPDATE County SET Name = 'Yellowstone', Value = 'Yellowstone', StateID = 30 WHERE ID = 242
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (242, 'Yellowstone', 'Yellowstone', 30)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 243)
UPDATE County SET Name = 'Carson City', Value = 'Carson City', StateID = 32 WHERE ID = 243
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (243, 'Carson City', 'Carson City', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 244)
UPDATE County SET Name = 'Churchill', Value = 'Churchill', StateID = 32 WHERE ID = 244
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (244, 'Churchill', 'Churchill', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 245)
UPDATE County SET Name = 'Clark', Value = 'Clark', StateID = 32 WHERE ID = 245
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (245, 'Clark', 'Clark', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 246)
UPDATE County SET Name = 'Douglas', Value = 'Douglas', StateID = 32 WHERE ID = 246
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (246, 'Douglas', 'Douglas', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 247)
UPDATE County SET Name = 'Elko', Value = 'Elko', StateID = 32 WHERE ID = 247
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (247, 'Elko', 'Elko', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 248)
UPDATE County SET Name = 'Esmeralda', Value = 'Esmeralda', StateID = 32 WHERE ID = 248
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (248, 'Esmeralda', 'Esmeralda', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 249)
UPDATE County SET Name = 'Eureka', Value = 'Eureka', StateID = 32 WHERE ID = 249
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (249, 'Eureka', 'Eureka', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 250)
UPDATE County SET Name = 'Humboldt', Value = 'Humboldt', StateID = 32 WHERE ID = 250
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (250, 'Humboldt', 'Humboldt', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 251)
UPDATE County SET Name = 'Lander', Value = 'Lander', StateID = 32 WHERE ID = 251
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (251, 'Lander', 'Lander', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 252)
UPDATE County SET Name = 'Lincoln', Value = 'Lincoln', StateID = 32 WHERE ID = 252
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (252, 'Lincoln', 'Lincoln', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 253)
UPDATE County SET Name = 'Lyon', Value = 'Lyon', StateID = 32 WHERE ID = 253
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (253, 'Lyon', 'Lyon', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 254)
UPDATE County SET Name = 'Mineral', Value = 'Mineral', StateID = 32 WHERE ID = 254
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (254, 'Mineral', 'Mineral', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 255)
UPDATE County SET Name = 'Nye', Value = 'Nye', StateID = 32 WHERE ID = 255
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (255, 'Nye', 'Nye', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 256)
UPDATE County SET Name = 'Pershing', Value = 'Pershing', StateID = 32 WHERE ID = 256
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (256, 'Pershing', 'Pershing', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 257)
UPDATE County SET Name = 'Storey', Value = 'Storey', StateID = 32 WHERE ID = 257
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (257, 'Storey', 'Storey', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 258)
UPDATE County SET Name = 'Washoe', Value = 'Washoe', StateID = 32 WHERE ID = 258
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (258, 'Washoe', 'Washoe', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 259)
UPDATE County SET Name = 'White Pine', Value = 'White Pine', StateID = 32 WHERE ID = 259
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (259, 'White Pine', 'White Pine', 32)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 260)
UPDATE County SET Name = 'Bernalillo', Value = 'Bernalillo', StateID = 35 WHERE ID = 260
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (260, 'Bernalillo', 'Bernalillo', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 261)
UPDATE County SET Name = 'Catron', Value = 'Catron', StateID = 35 WHERE ID = 261
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (261, 'Catron', 'Catron', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 262)
UPDATE County SET Name = 'Chaves', Value = 'Chaves', StateID = 35 WHERE ID = 262
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (262, 'Chaves', 'Chaves', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 263)
UPDATE County SET Name = 'Cibola', Value = 'Cibola', StateID = 35 WHERE ID = 263
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (263, 'Cibola', 'Cibola', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 264)
UPDATE County SET Name = 'Colfax', Value = 'Colfax', StateID = 35 WHERE ID = 264
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (264, 'Colfax', 'Colfax', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 265)
UPDATE County SET Name = 'Curry', Value = 'Curry', StateID = 35 WHERE ID = 265
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (265, 'Curry', 'Curry', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 266)
UPDATE County SET Name = 'De Baca', Value = 'De Baca', StateID = 35 WHERE ID = 266
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (266, 'De Baca', 'De Baca', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 267)
UPDATE County SET Name = 'Doña Ana', Value = 'Doña Ana', StateID = 35 WHERE ID = 267
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (267, 'Doña Ana', 'Doña Ana', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 268)
UPDATE County SET Name = 'Eddy', Value = 'Eddy', StateID = 35 WHERE ID = 268
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (268, 'Eddy', 'Eddy', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 269)
UPDATE County SET Name = 'Grant', Value = 'Grant', StateID = 35 WHERE ID = 269
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (269, 'Grant', 'Grant', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 270)
UPDATE County SET Name = 'Guadalupe', Value = 'Guadalupe', StateID = 35 WHERE ID = 270
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (270, 'Guadalupe', 'Guadalupe', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 271)
UPDATE County SET Name = 'Harding', Value = 'Harding', StateID = 35 WHERE ID = 271
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (271, 'Harding', 'Harding', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 272)
UPDATE County SET Name = 'Hidalgo', Value = 'Hidalgo', StateID = 35 WHERE ID = 272
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (272, 'Hidalgo', 'Hidalgo', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 273)
UPDATE County SET Name = 'Lea', Value = 'Lea', StateID = 35 WHERE ID = 273
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (273, 'Lea', 'Lea', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 274)
UPDATE County SET Name = 'Lincoln', Value = 'Lincoln', StateID = 35 WHERE ID = 274
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (274, 'Lincoln', 'Lincoln', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 275)
UPDATE County SET Name = 'Los Alamos', Value = 'Los Alamos', StateID = 35 WHERE ID = 275
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (275, 'Los Alamos', 'Los Alamos', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 276)
UPDATE County SET Name = 'Luna', Value = 'Luna', StateID = 35 WHERE ID = 276
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (276, 'Luna', 'Luna', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 277)
UPDATE County SET Name = 'McKinley', Value = 'McKinley', StateID = 35 WHERE ID = 277
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (277, 'McKinley', 'McKinley', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 278)
UPDATE County SET Name = 'Mora', Value = 'Mora', StateID = 35 WHERE ID = 278
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (278, 'Mora', 'Mora', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 279)
UPDATE County SET Name = 'Otero', Value = 'Otero', StateID = 35 WHERE ID = 279
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (279, 'Otero', 'Otero', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 280)
UPDATE County SET Name = 'Quay', Value = 'Quay', StateID = 35 WHERE ID = 280
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (280, 'Quay', 'Quay', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 281)
UPDATE County SET Name = 'Rio Arriba', Value = 'Rio Arriba', StateID = 35 WHERE ID = 281
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (281, 'Rio Arriba', 'Rio Arriba', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 282)
UPDATE County SET Name = 'Roosevelt', Value = 'Roosevelt', StateID = 35 WHERE ID = 282
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (282, 'Roosevelt', 'Roosevelt', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 283)
UPDATE County SET Name = 'San Juan', Value = 'San Juan', StateID = 35 WHERE ID = 283
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (283, 'San Juan', 'San Juan', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 284)
UPDATE County SET Name = 'San Miguel', Value = 'San Miguel', StateID = 35 WHERE ID = 284
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (284, 'San Miguel', 'San Miguel', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 285)
UPDATE County SET Name = 'Sandoval', Value = 'Sandoval', StateID = 35 WHERE ID = 285
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (285, 'Sandoval', 'Sandoval', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 286)
UPDATE County SET Name = 'Santa Fe', Value = 'Santa Fe', StateID = 35 WHERE ID = 286
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (286, 'Santa Fe', 'Santa Fe', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 287)
UPDATE County SET Name = 'Sierra', Value = 'Sierra', StateID = 35 WHERE ID = 287
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (287, 'Sierra', 'Sierra', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 288)
UPDATE County SET Name = 'Socorro', Value = 'Socorro', StateID = 35 WHERE ID = 288
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (288, 'Socorro', 'Socorro', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 289)
UPDATE County SET Name = 'Taos', Value = 'Taos', StateID = 35 WHERE ID = 289
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (289, 'Taos', 'Taos', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 290)
UPDATE County SET Name = 'Torrance', Value = 'Torrance', StateID = 35 WHERE ID = 290
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (290, 'Torrance', 'Torrance', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 291)
UPDATE County SET Name = 'Union', Value = 'Union', StateID = 35 WHERE ID = 291
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (291, 'Union', 'Union', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 292)
UPDATE County SET Name = 'Valencia', Value = 'Valencia', StateID = 35 WHERE ID = 292
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (292, 'Valencia', 'Valencia', 35)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 293)
UPDATE County SET Name = 'Baker', Value = 'Baker', StateID = 42 WHERE ID = 293
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (293, 'Baker', 'Baker', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 294)
UPDATE County SET Name = 'Benton', Value = 'Benton', StateID = 42 WHERE ID = 294
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (294, 'Benton', 'Benton', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 295)
UPDATE County SET Name = 'Clackamas', Value = 'Clackamas', StateID = 42 WHERE ID = 295
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (295, 'Clackamas', 'Clackamas', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 296)
UPDATE County SET Name = 'Clatsop', Value = 'Clatsop', StateID = 42 WHERE ID = 296
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (296, 'Clatsop', 'Clatsop', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 297)
UPDATE County SET Name = 'Columbia', Value = 'Columbia', StateID = 42 WHERE ID = 297
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (297, 'Columbia', 'Columbia', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 298)
UPDATE County SET Name = 'Coos', Value = 'Coos', StateID = 42 WHERE ID = 298
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (298, 'Coos', 'Coos', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 299)
UPDATE County SET Name = 'Crook', Value = 'Crook', StateID = 42 WHERE ID = 299
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (299, 'Crook', 'Crook', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 300)
UPDATE County SET Name = 'Curry', Value = 'Curry', StateID = 42 WHERE ID = 300
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (300, 'Curry', 'Curry', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 301)
UPDATE County SET Name = 'Deschutes', Value = 'Deschutes', StateID = 42 WHERE ID = 301
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (301, 'Deschutes', 'Deschutes', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 302)
UPDATE County SET Name = 'Douglas', Value = 'Douglas', StateID = 42 WHERE ID = 302
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (302, 'Douglas', 'Douglas', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 303)
UPDATE County SET Name = 'Gilliam', Value = 'Gilliam', StateID = 42 WHERE ID = 303
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (303, 'Gilliam', 'Gilliam', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 304)
UPDATE County SET Name = 'Grant', Value = 'Grant', StateID = 42 WHERE ID = 304
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (304, 'Grant', 'Grant', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 305)
UPDATE County SET Name = 'Harney', Value = 'Harney', StateID = 42 WHERE ID = 305
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (305, 'Harney', 'Harney', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 306)
UPDATE County SET Name = 'Hood River', Value = 'Hood River', StateID = 42 WHERE ID = 306
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (306, 'Hood River', 'Hood River', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 307)
UPDATE County SET Name = 'Jackson', Value = 'Jackson', StateID = 42 WHERE ID = 307
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (307, 'Jackson', 'Jackson', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 308)
UPDATE County SET Name = 'Jefferson', Value = 'Jefferson', StateID = 42 WHERE ID = 308
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (308, 'Jefferson', 'Jefferson', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 309)
UPDATE County SET Name = 'Josephine', Value = 'Josephine', StateID = 42 WHERE ID = 309
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (309, 'Josephine', 'Josephine', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 310)
UPDATE County SET Name = 'Klamath', Value = 'Klamath', StateID = 42 WHERE ID = 310
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (310, 'Klamath', 'Klamath', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 311)
UPDATE County SET Name = 'Lake', Value = 'Lake', StateID = 42 WHERE ID = 311
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (311, 'Lake', 'Lake', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 312)
UPDATE County SET Name = 'Lane', Value = 'Lane', StateID = 42 WHERE ID = 312
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (312, 'Lane', 'Lane', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 313)
UPDATE County SET Name = 'Lincoln', Value = 'Lincoln', StateID = 42 WHERE ID = 313
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (313, 'Lincoln', 'Lincoln', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 314)
UPDATE County SET Name = 'Linn', Value = 'Linn', StateID = 42 WHERE ID = 314
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (314, 'Linn', 'Linn', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 315)
UPDATE County SET Name = 'Malheur', Value = 'Malheur', StateID = 42 WHERE ID = 315
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (315, 'Malheur', 'Malheur', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 316)
UPDATE County SET Name = 'Marion', Value = 'Marion', StateID = 42 WHERE ID = 316
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (316, 'Marion', 'Marion', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 317)
UPDATE County SET Name = 'Morrow', Value = 'Morrow', StateID = 42 WHERE ID = 317
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (317, 'Morrow', 'Morrow', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 318)
UPDATE County SET Name = 'Multnomah', Value = 'Multnomah', StateID = 42 WHERE ID = 318
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (318, 'Multnomah', 'Multnomah', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 319)
UPDATE County SET Name = 'Polk', Value = 'Polk', StateID = 42 WHERE ID = 319
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (319, 'Polk', 'Polk', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 320)
UPDATE County SET Name = 'Sherman', Value = 'Sherman', StateID = 42 WHERE ID = 320
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (320, 'Sherman', 'Sherman', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 321)
UPDATE County SET Name = 'Tillamook', Value = 'Tillamook', StateID = 42 WHERE ID = 321
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (321, 'Tillamook', 'Tillamook', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 322)
UPDATE County SET Name = 'Umatilla', Value = 'Umatilla', StateID = 42 WHERE ID = 322
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (322, 'Umatilla', 'Umatilla', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 323)
UPDATE County SET Name = 'Union', Value = 'Union', StateID = 42 WHERE ID = 323
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (323, 'Union', 'Union', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 324)
UPDATE County SET Name = 'Wallowa', Value = 'Wallowa', StateID = 42 WHERE ID = 324
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (324, 'Wallowa', 'Wallowa', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 325)
UPDATE County SET Name = 'Wasco', Value = 'Wasco', StateID = 42 WHERE ID = 325
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (325, 'Wasco', 'Wasco', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 326)
UPDATE County SET Name = 'Washington', Value = 'Washington', StateID = 42 WHERE ID = 326
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (326, 'Washington', 'Washington', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 327)
UPDATE County SET Name = 'Wheeler', Value = 'Wheeler', StateID = 42 WHERE ID = 327
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (327, 'Wheeler', 'Wheeler', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 328)
UPDATE County SET Name = 'Yamhill', Value = 'Yamhill', StateID = 42 WHERE ID = 328
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (328, 'Yamhill', 'Yamhill', 42)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 329)
UPDATE County SET Name = 'Anderson', Value = 'Anderson', StateID = 49 WHERE ID = 329
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (329, 'Anderson', 'Anderson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 330)
UPDATE County SET Name = 'Andrews', Value = 'Andrews', StateID = 49 WHERE ID = 330
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (330, 'Andrews', 'Andrews', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 331)
UPDATE County SET Name = 'Angelina', Value = 'Angelina', StateID = 49 WHERE ID = 331
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (331, 'Angelina', 'Angelina', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 332)
UPDATE County SET Name = 'Aransas', Value = 'Aransas', StateID = 49 WHERE ID = 332
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (332, 'Aransas', 'Aransas', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 333)
UPDATE County SET Name = 'Archer', Value = 'Archer', StateID = 49 WHERE ID = 333
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (333, 'Archer', 'Archer', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 334)
UPDATE County SET Name = 'Armstrong', Value = 'Armstrong', StateID = 49 WHERE ID = 334
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (334, 'Armstrong', 'Armstrong', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 335)
UPDATE County SET Name = 'Atascosa', Value = 'Atascosa', StateID = 49 WHERE ID = 335
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (335, 'Atascosa', 'Atascosa', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 336)
UPDATE County SET Name = 'Austin', Value = 'Austin', StateID = 49 WHERE ID = 336
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (336, 'Austin', 'Austin', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 337)
UPDATE County SET Name = 'Bailey', Value = 'Bailey', StateID = 49 WHERE ID = 337
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (337, 'Bailey', 'Bailey', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 338)
UPDATE County SET Name = 'Bandera', Value = 'Bandera', StateID = 49 WHERE ID = 338
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (338, 'Bandera', 'Bandera', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 339)
UPDATE County SET Name = 'Bastrop', Value = 'Bastrop', StateID = 49 WHERE ID = 339
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (339, 'Bastrop', 'Bastrop', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 340)
UPDATE County SET Name = 'Baylor', Value = 'Baylor', StateID = 49 WHERE ID = 340
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (340, 'Baylor', 'Baylor', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 341)
UPDATE County SET Name = 'Bee', Value = 'Bee', StateID = 49 WHERE ID = 341
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (341, 'Bee', 'Bee', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 342)
UPDATE County SET Name = 'Bell', Value = 'Bell', StateID = 49 WHERE ID = 342
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (342, 'Bell', 'Bell', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 343)
UPDATE County SET Name = 'Bexar', Value = 'Bexar', StateID = 49 WHERE ID = 343
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (343, 'Bexar', 'Bexar', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 344)
UPDATE County SET Name = 'Blanco', Value = 'Blanco', StateID = 49 WHERE ID = 344
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (344, 'Blanco', 'Blanco', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 345)
UPDATE County SET Name = 'Borden', Value = 'Borden', StateID = 49 WHERE ID = 345
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (345, 'Borden', 'Borden', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 346)
UPDATE County SET Name = 'Bosque', Value = 'Bosque', StateID = 49 WHERE ID = 346
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (346, 'Bosque', 'Bosque', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 347)
UPDATE County SET Name = 'Bowie', Value = 'Bowie', StateID = 49 WHERE ID = 347
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (347, 'Bowie', 'Bowie', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 348)
UPDATE County SET Name = 'Brazoria', Value = 'Brazoria', StateID = 49 WHERE ID = 348
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (348, 'Brazoria', 'Brazoria', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 349)
UPDATE County SET Name = 'Brazos', Value = 'Brazos', StateID = 49 WHERE ID = 349
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (349, 'Brazos', 'Brazos', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 350)
UPDATE County SET Name = 'Brewster', Value = 'Brewster', StateID = 49 WHERE ID = 350
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (350, 'Brewster', 'Brewster', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 351)
UPDATE County SET Name = 'Briscoe', Value = 'Briscoe', StateID = 49 WHERE ID = 351
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (351, 'Briscoe', 'Briscoe', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 352)
UPDATE County SET Name = 'Brooks', Value = 'Brooks', StateID = 49 WHERE ID = 352
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (352, 'Brooks', 'Brooks', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 353)
UPDATE County SET Name = 'Brown', Value = 'Brown', StateID = 49 WHERE ID = 353
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (353, 'Brown', 'Brown', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 354)
UPDATE County SET Name = 'Burleson', Value = 'Burleson', StateID = 49 WHERE ID = 354
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (354, 'Burleson', 'Burleson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 355)
UPDATE County SET Name = 'Burnet', Value = 'Burnet', StateID = 49 WHERE ID = 355
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (355, 'Burnet', 'Burnet', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 356)
UPDATE County SET Name = 'Caldwell', Value = 'Caldwell', StateID = 49 WHERE ID = 356
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (356, 'Caldwell', 'Caldwell', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 357)
UPDATE County SET Name = 'Calhoun', Value = 'Calhoun', StateID = 49 WHERE ID = 357
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (357, 'Calhoun', 'Calhoun', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 358)
UPDATE County SET Name = 'Callahan', Value = 'Callahan', StateID = 49 WHERE ID = 358
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (358, 'Callahan', 'Callahan', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 359)
UPDATE County SET Name = 'Cameron', Value = 'Cameron', StateID = 49 WHERE ID = 359
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (359, 'Cameron', 'Cameron', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 360)
UPDATE County SET Name = 'Camp', Value = 'Camp', StateID = 49 WHERE ID = 360
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (360, 'Camp', 'Camp', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 361)
UPDATE County SET Name = 'Carson', Value = 'Carson', StateID = 49 WHERE ID = 361
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (361, 'Carson', 'Carson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 362)
UPDATE County SET Name = 'Cass', Value = 'Cass', StateID = 49 WHERE ID = 362
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (362, 'Cass', 'Cass', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 363)
UPDATE County SET Name = 'Castro', Value = 'Castro', StateID = 49 WHERE ID = 363
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (363, 'Castro', 'Castro', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 364)
UPDATE County SET Name = 'Chambers', Value = 'Chambers', StateID = 49 WHERE ID = 364
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (364, 'Chambers', 'Chambers', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 365)
UPDATE County SET Name = 'Cherokee', Value = 'Cherokee', StateID = 49 WHERE ID = 365
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (365, 'Cherokee', 'Cherokee', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 366)
UPDATE County SET Name = 'Childress', Value = 'Childress', StateID = 49 WHERE ID = 366
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (366, 'Childress', 'Childress', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 367)
UPDATE County SET Name = 'Clay', Value = 'Clay', StateID = 49 WHERE ID = 367
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (367, 'Clay', 'Clay', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 368)
UPDATE County SET Name = 'Cochran', Value = 'Cochran', StateID = 49 WHERE ID = 368
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (368, 'Cochran', 'Cochran', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 369)
UPDATE County SET Name = 'Coke', Value = 'Coke', StateID = 49 WHERE ID = 369
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (369, 'Coke', 'Coke', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 370)
UPDATE County SET Name = 'Coleman', Value = 'Coleman', StateID = 49 WHERE ID = 370
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (370, 'Coleman', 'Coleman', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 371)
UPDATE County SET Name = 'Collin', Value = 'Collin', StateID = 49 WHERE ID = 371
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (371, 'Collin', 'Collin', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 372)
UPDATE County SET Name = 'Collingsworth', Value = 'Collingsworth', StateID = 49 WHERE ID = 372
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (372, 'Collingsworth', 'Collingsworth', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 373)
UPDATE County SET Name = 'Colorado', Value = 'Colorado', StateID = 49 WHERE ID = 373
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (373, 'Colorado', 'Colorado', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 374)
UPDATE County SET Name = 'Comal', Value = 'Comal', StateID = 49 WHERE ID = 374
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (374, 'Comal', 'Comal', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 375)
UPDATE County SET Name = 'Comanche', Value = 'Comanche', StateID = 49 WHERE ID = 375
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (375, 'Comanche', 'Comanche', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 376)
UPDATE County SET Name = 'Concho', Value = 'Concho', StateID = 49 WHERE ID = 376
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (376, 'Concho', 'Concho', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 377)
UPDATE County SET Name = 'Cooke', Value = 'Cooke', StateID = 49 WHERE ID = 377
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (377, 'Cooke', 'Cooke', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 378)
UPDATE County SET Name = 'Coryell', Value = 'Coryell', StateID = 49 WHERE ID = 378
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (378, 'Coryell', 'Coryell', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 379)
UPDATE County SET Name = 'Cottle', Value = 'Cottle', StateID = 49 WHERE ID = 379
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (379, 'Cottle', 'Cottle', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 380)
UPDATE County SET Name = 'Crane', Value = 'Crane', StateID = 49 WHERE ID = 380
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (380, 'Crane', 'Crane', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 381)
UPDATE County SET Name = 'Crockett', Value = 'Crockett', StateID = 49 WHERE ID = 381
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (381, 'Crockett', 'Crockett', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 382)
UPDATE County SET Name = 'Crosby', Value = 'Crosby', StateID = 49 WHERE ID = 382
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (382, 'Crosby', 'Crosby', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 383)
UPDATE County SET Name = 'Culberson', Value = 'Culberson', StateID = 49 WHERE ID = 383
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (383, 'Culberson', 'Culberson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 384)
UPDATE County SET Name = 'Dallam', Value = 'Dallam', StateID = 49 WHERE ID = 384
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (384, 'Dallam', 'Dallam', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 385)
UPDATE County SET Name = 'Dallas', Value = 'Dallas', StateID = 49 WHERE ID = 385
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (385, 'Dallas', 'Dallas', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 386)
UPDATE County SET Name = 'Dawson', Value = 'Dawson', StateID = 49 WHERE ID = 386
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (386, 'Dawson', 'Dawson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 387)
UPDATE County SET Name = 'Deaf Smith', Value = 'Deaf Smith', StateID = 49 WHERE ID = 387
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (387, 'Deaf Smith', 'Deaf Smith', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 388)
UPDATE County SET Name = 'Delta', Value = 'Delta', StateID = 49 WHERE ID = 388
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (388, 'Delta', 'Delta', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 389)
UPDATE County SET Name = 'Denton', Value = 'Denton', StateID = 49 WHERE ID = 389
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (389, 'Denton', 'Denton', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 390)
UPDATE County SET Name = 'DeWitt', Value = 'DeWitt', StateID = 49 WHERE ID = 390
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (390, 'DeWitt', 'DeWitt', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 391)
UPDATE County SET Name = 'Dickens', Value = 'Dickens', StateID = 49 WHERE ID = 391
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (391, 'Dickens', 'Dickens', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 392)
UPDATE County SET Name = 'Dimmit', Value = 'Dimmit', StateID = 49 WHERE ID = 392
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (392, 'Dimmit', 'Dimmit', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 393)
UPDATE County SET Name = 'Donley', Value = 'Donley', StateID = 49 WHERE ID = 393
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (393, 'Donley', 'Donley', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 394)
UPDATE County SET Name = 'Duval', Value = 'Duval', StateID = 49 WHERE ID = 394
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (394, 'Duval', 'Duval', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 395)
UPDATE County SET Name = 'Eastland', Value = 'Eastland', StateID = 49 WHERE ID = 395
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (395, 'Eastland', 'Eastland', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 396)
UPDATE County SET Name = 'Ector', Value = 'Ector', StateID = 49 WHERE ID = 396
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (396, 'Ector', 'Ector', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 397)
UPDATE County SET Name = 'Edwards', Value = 'Edwards', StateID = 49 WHERE ID = 397
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (397, 'Edwards', 'Edwards', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 398)
UPDATE County SET Name = 'El Paso', Value = 'El Paso', StateID = 49 WHERE ID = 398
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (398, 'El Paso', 'El Paso', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 399)
UPDATE County SET Name = 'Ellis', Value = 'Ellis', StateID = 49 WHERE ID = 399
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (399, 'Ellis', 'Ellis', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 400)
UPDATE County SET Name = 'Erath', Value = 'Erath', StateID = 49 WHERE ID = 400
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (400, 'Erath', 'Erath', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 401)
UPDATE County SET Name = 'Falls', Value = 'Falls', StateID = 49 WHERE ID = 401
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (401, 'Falls', 'Falls', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 402)
UPDATE County SET Name = 'Fannin', Value = 'Fannin', StateID = 49 WHERE ID = 402
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (402, 'Fannin', 'Fannin', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 403)
UPDATE County SET Name = 'Fayette', Value = 'Fayette', StateID = 49 WHERE ID = 403
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (403, 'Fayette', 'Fayette', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 404)
UPDATE County SET Name = 'Fisher', Value = 'Fisher', StateID = 49 WHERE ID = 404
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (404, 'Fisher', 'Fisher', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 405)
UPDATE County SET Name = 'Floyd', Value = 'Floyd', StateID = 49 WHERE ID = 405
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (405, 'Floyd', 'Floyd', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 406)
UPDATE County SET Name = 'Foard', Value = 'Foard', StateID = 49 WHERE ID = 406
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (406, 'Foard', 'Foard', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 407)
UPDATE County SET Name = 'Fort Bend', Value = 'Fort Bend', StateID = 49 WHERE ID = 407
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (407, 'Fort Bend', 'Fort Bend', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 408)
UPDATE County SET Name = 'Franklin', Value = 'Franklin', StateID = 49 WHERE ID = 408
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (408, 'Franklin', 'Franklin', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 409)
UPDATE County SET Name = 'Freestone', Value = 'Freestone', StateID = 49 WHERE ID = 409
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (409, 'Freestone', 'Freestone', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 410)
UPDATE County SET Name = 'Frio', Value = 'Frio', StateID = 49 WHERE ID = 410
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (410, 'Frio', 'Frio', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 411)
UPDATE County SET Name = 'Gaines', Value = 'Gaines', StateID = 49 WHERE ID = 411
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (411, 'Gaines', 'Gaines', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 412)
UPDATE County SET Name = 'Galveston', Value = 'Galveston', StateID = 49 WHERE ID = 412
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (412, 'Galveston', 'Galveston', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 413)
UPDATE County SET Name = 'Garza', Value = 'Garza', StateID = 49 WHERE ID = 413
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (413, 'Garza', 'Garza', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 414)
UPDATE County SET Name = 'Gillespie', Value = 'Gillespie', StateID = 49 WHERE ID = 414
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (414, 'Gillespie', 'Gillespie', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 415)
UPDATE County SET Name = 'Glasscock', Value = 'Glasscock', StateID = 49 WHERE ID = 415
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (415, 'Glasscock', 'Glasscock', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 416)
UPDATE County SET Name = 'Goliad', Value = 'Goliad', StateID = 49 WHERE ID = 416
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (416, 'Goliad', 'Goliad', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 417)
UPDATE County SET Name = 'Gonzales', Value = 'Gonzales', StateID = 49 WHERE ID = 417
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (417, 'Gonzales', 'Gonzales', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 418)
UPDATE County SET Name = 'Gray', Value = 'Gray', StateID = 49 WHERE ID = 418
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (418, 'Gray', 'Gray', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 419)
UPDATE County SET Name = 'Grayson', Value = 'Grayson', StateID = 49 WHERE ID = 419
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (419, 'Grayson', 'Grayson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 420)
UPDATE County SET Name = 'Gregg', Value = 'Gregg', StateID = 49 WHERE ID = 420
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (420, 'Gregg', 'Gregg', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 421)
UPDATE County SET Name = 'Grimes', Value = 'Grimes', StateID = 49 WHERE ID = 421
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (421, 'Grimes', 'Grimes', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 422)
UPDATE County SET Name = 'Guadalupe', Value = 'Guadalupe', StateID = 49 WHERE ID = 422
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (422, 'Guadalupe', 'Guadalupe', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 423)
UPDATE County SET Name = 'Hale', Value = 'Hale', StateID = 49 WHERE ID = 423
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (423, 'Hale', 'Hale', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 424)
UPDATE County SET Name = 'Hall', Value = 'Hall', StateID = 49 WHERE ID = 424
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (424, 'Hall', 'Hall', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 425)
UPDATE County SET Name = 'Hamilton', Value = 'Hamilton', StateID = 49 WHERE ID = 425
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (425, 'Hamilton', 'Hamilton', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 426)
UPDATE County SET Name = 'Hansford', Value = 'Hansford', StateID = 49 WHERE ID = 426
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (426, 'Hansford', 'Hansford', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 427)
UPDATE County SET Name = 'Hardeman', Value = 'Hardeman', StateID = 49 WHERE ID = 427
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (427, 'Hardeman', 'Hardeman', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 428)
UPDATE County SET Name = 'Hardin', Value = 'Hardin', StateID = 49 WHERE ID = 428
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (428, 'Hardin', 'Hardin', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 429)
UPDATE County SET Name = 'Harris', Value = 'Harris', StateID = 49 WHERE ID = 429
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (429, 'Harris', 'Harris', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 430)
UPDATE County SET Name = 'Harrison', Value = 'Harrison', StateID = 49 WHERE ID = 430
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (430, 'Harrison', 'Harrison', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 431)
UPDATE County SET Name = 'Hartley', Value = 'Hartley', StateID = 49 WHERE ID = 431
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (431, 'Hartley', 'Hartley', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 432)
UPDATE County SET Name = 'Haskell', Value = 'Haskell', StateID = 49 WHERE ID = 432
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (432, 'Haskell', 'Haskell', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 433)
UPDATE County SET Name = 'Hays', Value = 'Hays', StateID = 49 WHERE ID = 433
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (433, 'Hays', 'Hays', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 434)
UPDATE County SET Name = 'Hemphill', Value = 'Hemphill', StateID = 49 WHERE ID = 434
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (434, 'Hemphill', 'Hemphill', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 435)
UPDATE County SET Name = 'Henderson', Value = 'Henderson', StateID = 49 WHERE ID = 435
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (435, 'Henderson', 'Henderson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 436)
UPDATE County SET Name = 'Hidalgo', Value = 'Hidalgo', StateID = 49 WHERE ID = 436
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (436, 'Hidalgo', 'Hidalgo', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 437)
UPDATE County SET Name = 'Hill', Value = 'Hill', StateID = 49 WHERE ID = 437
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (437, 'Hill', 'Hill', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 438)
UPDATE County SET Name = 'Hockley', Value = 'Hockley', StateID = 49 WHERE ID = 438
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (438, 'Hockley', 'Hockley', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 439)
UPDATE County SET Name = 'Hood', Value = 'Hood', StateID = 49 WHERE ID = 439
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (439, 'Hood', 'Hood', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 440)
UPDATE County SET Name = 'Hopkins', Value = 'Hopkins', StateID = 49 WHERE ID = 440
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (440, 'Hopkins', 'Hopkins', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 441)
UPDATE County SET Name = 'Houston', Value = 'Houston', StateID = 49 WHERE ID = 441
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (441, 'Houston', 'Houston', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 442)
UPDATE County SET Name = 'Howard', Value = 'Howard', StateID = 49 WHERE ID = 442
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (442, 'Howard', 'Howard', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 443)
UPDATE County SET Name = 'Hudspeth', Value = 'Hudspeth', StateID = 49 WHERE ID = 443
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (443, 'Hudspeth', 'Hudspeth', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 444)
UPDATE County SET Name = 'Hunt', Value = 'Hunt', StateID = 49 WHERE ID = 444
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (444, 'Hunt', 'Hunt', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 445)
UPDATE County SET Name = 'Hutchinson', Value = 'Hutchinson', StateID = 49 WHERE ID = 445
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (445, 'Hutchinson', 'Hutchinson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 446)
UPDATE County SET Name = 'Irion', Value = 'Irion', StateID = 49 WHERE ID = 446
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (446, 'Irion', 'Irion', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 447)
UPDATE County SET Name = 'Jack', Value = 'Jack', StateID = 49 WHERE ID = 447
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (447, 'Jack', 'Jack', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 448)
UPDATE County SET Name = 'Jackson', Value = 'Jackson', StateID = 49 WHERE ID = 448
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (448, 'Jackson', 'Jackson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 449)
UPDATE County SET Name = 'Jasper', Value = 'Jasper', StateID = 49 WHERE ID = 449
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (449, 'Jasper', 'Jasper', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 450)
UPDATE County SET Name = 'Jeff Davis', Value = 'Jeff Davis', StateID = 49 WHERE ID = 450
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (450, 'Jeff Davis', 'Jeff Davis', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 451)
UPDATE County SET Name = 'Jefferson', Value = 'Jefferson', StateID = 49 WHERE ID = 451
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (451, 'Jefferson', 'Jefferson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 452)
UPDATE County SET Name = 'Jim Hogg', Value = 'Jim Hogg', StateID = 49 WHERE ID = 452
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (452, 'Jim Hogg', 'Jim Hogg', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 453)
UPDATE County SET Name = 'Jim Wells', Value = 'Jim Wells', StateID = 49 WHERE ID = 453
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (453, 'Jim Wells', 'Jim Wells', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 454)
UPDATE County SET Name = 'Johnson', Value = 'Johnson', StateID = 49 WHERE ID = 454
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (454, 'Johnson', 'Johnson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 455)
UPDATE County SET Name = 'Jones', Value = 'Jones', StateID = 49 WHERE ID = 455
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (455, 'Jones', 'Jones', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 456)
UPDATE County SET Name = 'Karnes', Value = 'Karnes', StateID = 49 WHERE ID = 456
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (456, 'Karnes', 'Karnes', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 457)
UPDATE County SET Name = 'Kaufman', Value = 'Kaufman', StateID = 49 WHERE ID = 457
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (457, 'Kaufman', 'Kaufman', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 458)
UPDATE County SET Name = 'Kendall', Value = 'Kendall', StateID = 49 WHERE ID = 458
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (458, 'Kendall', 'Kendall', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 459)
UPDATE County SET Name = 'Kenedy', Value = 'Kenedy', StateID = 49 WHERE ID = 459
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (459, 'Kenedy', 'Kenedy', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 460)
UPDATE County SET Name = 'Kent', Value = 'Kent', StateID = 49 WHERE ID = 460
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (460, 'Kent', 'Kent', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 461)
UPDATE County SET Name = 'Kerr', Value = 'Kerr', StateID = 49 WHERE ID = 461
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (461, 'Kerr', 'Kerr', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 462)
UPDATE County SET Name = 'Kimble', Value = 'Kimble', StateID = 49 WHERE ID = 462
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (462, 'Kimble', 'Kimble', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 463)
UPDATE County SET Name = 'King', Value = 'King', StateID = 49 WHERE ID = 463
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (463, 'King', 'King', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 464)
UPDATE County SET Name = 'Kinney', Value = 'Kinney', StateID = 49 WHERE ID = 464
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (464, 'Kinney', 'Kinney', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 465)
UPDATE County SET Name = 'Kleberg', Value = 'Kleberg', StateID = 49 WHERE ID = 465
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (465, 'Kleberg', 'Kleberg', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 466)
UPDATE County SET Name = 'Knox', Value = 'Knox', StateID = 49 WHERE ID = 466
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (466, 'Knox', 'Knox', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 467)
UPDATE County SET Name = 'La Salle', Value = 'La Salle', StateID = 49 WHERE ID = 467
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (467, 'La Salle', 'La Salle', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 468)
UPDATE County SET Name = 'Lamar', Value = 'Lamar', StateID = 49 WHERE ID = 468
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (468, 'Lamar', 'Lamar', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 469)
UPDATE County SET Name = 'Lamb', Value = 'Lamb', StateID = 49 WHERE ID = 469
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (469, 'Lamb', 'Lamb', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 470)
UPDATE County SET Name = 'Lampasas', Value = 'Lampasas', StateID = 49 WHERE ID = 470
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (470, 'Lampasas', 'Lampasas', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 471)
UPDATE County SET Name = 'Lavaca', Value = 'Lavaca', StateID = 49 WHERE ID = 471
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (471, 'Lavaca', 'Lavaca', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 472)
UPDATE County SET Name = 'Lee', Value = 'Lee', StateID = 49 WHERE ID = 472
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (472, 'Lee', 'Lee', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 473)
UPDATE County SET Name = 'Leon', Value = 'Leon', StateID = 49 WHERE ID = 473
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (473, 'Leon', 'Leon', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 474)
UPDATE County SET Name = 'Liberty', Value = 'Liberty', StateID = 49 WHERE ID = 474
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (474, 'Liberty', 'Liberty', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 475)
UPDATE County SET Name = 'Limestone', Value = 'Limestone', StateID = 49 WHERE ID = 475
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (475, 'Limestone', 'Limestone', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 476)
UPDATE County SET Name = 'Lipscomb', Value = 'Lipscomb', StateID = 49 WHERE ID = 476
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (476, 'Lipscomb', 'Lipscomb', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 477)
UPDATE County SET Name = 'Live Oak', Value = 'Live Oak', StateID = 49 WHERE ID = 477
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (477, 'Live Oak', 'Live Oak', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 478)
UPDATE County SET Name = 'Llano', Value = 'Llano', StateID = 49 WHERE ID = 478
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (478, 'Llano', 'Llano', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 479)
UPDATE County SET Name = 'Loving', Value = 'Loving', StateID = 49 WHERE ID = 479
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (479, 'Loving', 'Loving', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 480)
UPDATE County SET Name = 'Lubbock', Value = 'Lubbock', StateID = 49 WHERE ID = 480
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (480, 'Lubbock', 'Lubbock', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 481)
UPDATE County SET Name = 'Lynn', Value = 'Lynn', StateID = 49 WHERE ID = 481
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (481, 'Lynn', 'Lynn', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 482)
UPDATE County SET Name = 'Madison', Value = 'Madison', StateID = 49 WHERE ID = 482
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (482, 'Madison', 'Madison', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 483)
UPDATE County SET Name = 'Marion', Value = 'Marion', StateID = 49 WHERE ID = 483
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (483, 'Marion', 'Marion', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 484)
UPDATE County SET Name = 'Martin', Value = 'Martin', StateID = 49 WHERE ID = 484
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (484, 'Martin', 'Martin', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 485)
UPDATE County SET Name = 'Mason', Value = 'Mason', StateID = 49 WHERE ID = 485
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (485, 'Mason', 'Mason', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 486)
UPDATE County SET Name = 'Matagorda', Value = 'Matagorda', StateID = 49 WHERE ID = 486
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (486, 'Matagorda', 'Matagorda', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 487)
UPDATE County SET Name = 'Maverick', Value = 'Maverick', StateID = 49 WHERE ID = 487
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (487, 'Maverick', 'Maverick', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 488)
UPDATE County SET Name = 'McCulloch', Value = 'McCulloch', StateID = 49 WHERE ID = 488
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (488, 'McCulloch', 'McCulloch', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 489)
UPDATE County SET Name = 'McLennan', Value = 'McLennan', StateID = 49 WHERE ID = 489
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (489, 'McLennan', 'McLennan', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 490)
UPDATE County SET Name = 'McMullen', Value = 'McMullen', StateID = 49 WHERE ID = 490
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (490, 'McMullen', 'McMullen', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 491)
UPDATE County SET Name = 'Medina', Value = 'Medina', StateID = 49 WHERE ID = 491
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (491, 'Medina', 'Medina', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 492)
UPDATE County SET Name = 'Menard', Value = 'Menard', StateID = 49 WHERE ID = 492
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (492, 'Menard', 'Menard', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 493)
UPDATE County SET Name = 'Midland', Value = 'Midland', StateID = 49 WHERE ID = 493
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (493, 'Midland', 'Midland', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 494)
UPDATE County SET Name = 'Milam', Value = 'Milam', StateID = 49 WHERE ID = 494
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (494, 'Milam', 'Milam', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 495)
UPDATE County SET Name = 'Mills', Value = 'Mills', StateID = 49 WHERE ID = 495
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (495, 'Mills', 'Mills', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 496)
UPDATE County SET Name = 'Mitchell', Value = 'Mitchell', StateID = 49 WHERE ID = 496
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (496, 'Mitchell', 'Mitchell', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 497)
UPDATE County SET Name = 'Montague', Value = 'Montague', StateID = 49 WHERE ID = 497
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (497, 'Montague', 'Montague', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 498)
UPDATE County SET Name = 'Montgomery', Value = 'Montgomery', StateID = 49 WHERE ID = 498
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (498, 'Montgomery', 'Montgomery', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 499)
UPDATE County SET Name = 'Moore', Value = 'Moore', StateID = 49 WHERE ID = 499
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (499, 'Moore', 'Moore', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 500)
UPDATE County SET Name = 'Morris', Value = 'Morris', StateID = 49 WHERE ID = 500
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (500, 'Morris', 'Morris', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 501)
UPDATE County SET Name = 'Motley', Value = 'Motley', StateID = 49 WHERE ID = 501
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (501, 'Motley', 'Motley', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 502)
UPDATE County SET Name = 'Nacogdoches', Value = 'Nacogdoches', StateID = 49 WHERE ID = 502
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (502, 'Nacogdoches', 'Nacogdoches', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 503)
UPDATE County SET Name = 'Navarro', Value = 'Navarro', StateID = 49 WHERE ID = 503
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (503, 'Navarro', 'Navarro', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 504)
UPDATE County SET Name = 'Newton', Value = 'Newton', StateID = 49 WHERE ID = 504
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (504, 'Newton', 'Newton', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 505)
UPDATE County SET Name = 'Nolan', Value = 'Nolan', StateID = 49 WHERE ID = 505
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (505, 'Nolan', 'Nolan', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 506)
UPDATE County SET Name = 'Nueces', Value = 'Nueces', StateID = 49 WHERE ID = 506
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (506, 'Nueces', 'Nueces', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 507)
UPDATE County SET Name = 'Ochiltree', Value = 'Ochiltree', StateID = 49 WHERE ID = 507
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (507, 'Ochiltree', 'Ochiltree', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 508)
UPDATE County SET Name = 'Oldham', Value = 'Oldham', StateID = 49 WHERE ID = 508
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (508, 'Oldham', 'Oldham', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 509)
UPDATE County SET Name = 'Orange', Value = 'Orange', StateID = 49 WHERE ID = 509
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (509, 'Orange', 'Orange', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 510)
UPDATE County SET Name = 'Palo Pinto', Value = 'Palo Pinto', StateID = 49 WHERE ID = 510
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (510, 'Palo Pinto', 'Palo Pinto', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 511)
UPDATE County SET Name = 'Panola', Value = 'Panola', StateID = 49 WHERE ID = 511
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (511, 'Panola', 'Panola', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 512)
UPDATE County SET Name = 'Parker', Value = 'Parker', StateID = 49 WHERE ID = 512
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (512, 'Parker', 'Parker', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 513)
UPDATE County SET Name = 'Parmer', Value = 'Parmer', StateID = 49 WHERE ID = 513
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (513, 'Parmer', 'Parmer', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 514)
UPDATE County SET Name = 'Pecos', Value = 'Pecos', StateID = 49 WHERE ID = 514
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (514, 'Pecos', 'Pecos', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 515)
UPDATE County SET Name = 'Polk', Value = 'Polk', StateID = 49 WHERE ID = 515
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (515, 'Polk', 'Polk', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 516)
UPDATE County SET Name = 'Potter', Value = 'Potter', StateID = 49 WHERE ID = 516
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (516, 'Potter', 'Potter', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 517)
UPDATE County SET Name = 'Presidio', Value = 'Presidio', StateID = 49 WHERE ID = 517
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (517, 'Presidio', 'Presidio', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 518)
UPDATE County SET Name = 'Rains', Value = 'Rains', StateID = 49 WHERE ID = 518
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (518, 'Rains', 'Rains', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 519)
UPDATE County SET Name = 'Randall', Value = 'Randall', StateID = 49 WHERE ID = 519
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (519, 'Randall', 'Randall', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 520)
UPDATE County SET Name = 'Reagan', Value = 'Reagan', StateID = 49 WHERE ID = 520
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (520, 'Reagan', 'Reagan', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 521)
UPDATE County SET Name = 'Real', Value = 'Real', StateID = 49 WHERE ID = 521
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (521, 'Real', 'Real', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 522)
UPDATE County SET Name = 'Red River', Value = 'Red River', StateID = 49 WHERE ID = 522
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (522, 'Red River', 'Red River', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 523)
UPDATE County SET Name = 'Reeves', Value = 'Reeves', StateID = 49 WHERE ID = 523
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (523, 'Reeves', 'Reeves', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 524)
UPDATE County SET Name = 'Refugio', Value = 'Refugio', StateID = 49 WHERE ID = 524
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (524, 'Refugio', 'Refugio', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 525)
UPDATE County SET Name = 'Roberts', Value = 'Roberts', StateID = 49 WHERE ID = 525
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (525, 'Roberts', 'Roberts', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 526)
UPDATE County SET Name = 'Robertson', Value = 'Robertson', StateID = 49 WHERE ID = 526
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (526, 'Robertson', 'Robertson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 527)
UPDATE County SET Name = 'Rockwall', Value = 'Rockwall', StateID = 49 WHERE ID = 527
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (527, 'Rockwall', 'Rockwall', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 528)
UPDATE County SET Name = 'Runnels', Value = 'Runnels', StateID = 49 WHERE ID = 528
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (528, 'Runnels', 'Runnels', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 529)
UPDATE County SET Name = 'Rusk', Value = 'Rusk', StateID = 49 WHERE ID = 529
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (529, 'Rusk', 'Rusk', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 530)
UPDATE County SET Name = 'Sabine', Value = 'Sabine', StateID = 49 WHERE ID = 530
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (530, 'Sabine', 'Sabine', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 531)
UPDATE County SET Name = 'San Augustine', Value = 'San Augustine', StateID = 49 WHERE ID = 531
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (531, 'San Augustine', 'San Augustine', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 532)
UPDATE County SET Name = 'San Jacinto', Value = 'San Jacinto', StateID = 49 WHERE ID = 532
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (532, 'San Jacinto', 'San Jacinto', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 533)
UPDATE County SET Name = 'San Patricio', Value = 'San Patricio', StateID = 49 WHERE ID = 533
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (533, 'San Patricio', 'San Patricio', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 534)
UPDATE County SET Name = 'San Saba', Value = 'San Saba', StateID = 49 WHERE ID = 534
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (534, 'San Saba', 'San Saba', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 535)
UPDATE County SET Name = 'Schleicher', Value = 'Schleicher', StateID = 49 WHERE ID = 535
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (535, 'Schleicher', 'Schleicher', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 536)
UPDATE County SET Name = 'Scurry', Value = 'Scurry', StateID = 49 WHERE ID = 536
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (536, 'Scurry', 'Scurry', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 537)
UPDATE County SET Name = 'Shackelford', Value = 'Shackelford', StateID = 49 WHERE ID = 537
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (537, 'Shackelford', 'Shackelford', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 538)
UPDATE County SET Name = 'Shelby', Value = 'Shelby', StateID = 49 WHERE ID = 538
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (538, 'Shelby', 'Shelby', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 539)
UPDATE County SET Name = 'Sherman', Value = 'Sherman', StateID = 49 WHERE ID = 539
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (539, 'Sherman', 'Sherman', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 540)
UPDATE County SET Name = 'Smith', Value = 'Smith', StateID = 49 WHERE ID = 540
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (540, 'Smith', 'Smith', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 541)
UPDATE County SET Name = 'Somervell', Value = 'Somervell', StateID = 49 WHERE ID = 541
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (541, 'Somervell', 'Somervell', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 542)
UPDATE County SET Name = 'Starr', Value = 'Starr', StateID = 49 WHERE ID = 542
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (542, 'Starr', 'Starr', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 543)
UPDATE County SET Name = 'Stephens', Value = 'Stephens', StateID = 49 WHERE ID = 543
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (543, 'Stephens', 'Stephens', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 544)
UPDATE County SET Name = 'Sterling', Value = 'Sterling', StateID = 49 WHERE ID = 544
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (544, 'Sterling', 'Sterling', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 545)
UPDATE County SET Name = 'Stonewall', Value = 'Stonewall', StateID = 49 WHERE ID = 545
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (545, 'Stonewall', 'Stonewall', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 546)
UPDATE County SET Name = 'Sutton', Value = 'Sutton', StateID = 49 WHERE ID = 546
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (546, 'Sutton', 'Sutton', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 547)
UPDATE County SET Name = 'Swisher', Value = 'Swisher', StateID = 49 WHERE ID = 547
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (547, 'Swisher', 'Swisher', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 548)
UPDATE County SET Name = 'Tarrant', Value = 'Tarrant', StateID = 49 WHERE ID = 548
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (548, 'Tarrant', 'Tarrant', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 549)
UPDATE County SET Name = 'Taylor', Value = 'Taylor', StateID = 49 WHERE ID = 549
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (549, 'Taylor', 'Taylor', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 550)
UPDATE County SET Name = 'Terrell', Value = 'Terrell', StateID = 49 WHERE ID = 550
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (550, 'Terrell', 'Terrell', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 551)
UPDATE County SET Name = 'Terry', Value = 'Terry', StateID = 49 WHERE ID = 551
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (551, 'Terry', 'Terry', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 552)
UPDATE County SET Name = 'Throckmorton', Value = 'Throckmorton', StateID = 49 WHERE ID = 552
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (552, 'Throckmorton', 'Throckmorton', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 553)
UPDATE County SET Name = 'Titus', Value = 'Titus', StateID = 49 WHERE ID = 553
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (553, 'Titus', 'Titus', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 554)
UPDATE County SET Name = 'Tom Green', Value = 'Tom Green', StateID = 49 WHERE ID = 554
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (554, 'Tom Green', 'Tom Green', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 555)
UPDATE County SET Name = 'Travis', Value = 'Travis', StateID = 49 WHERE ID = 555
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (555, 'Travis', 'Travis', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 556)
UPDATE County SET Name = 'Trinity', Value = 'Trinity', StateID = 49 WHERE ID = 556
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (556, 'Trinity', 'Trinity', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 557)
UPDATE County SET Name = 'Tyler', Value = 'Tyler', StateID = 49 WHERE ID = 557
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (557, 'Tyler', 'Tyler', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 558)
UPDATE County SET Name = 'Upshur', Value = 'Upshur', StateID = 49 WHERE ID = 558
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (558, 'Upshur', 'Upshur', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 559)
UPDATE County SET Name = 'Upton', Value = 'Upton', StateID = 49 WHERE ID = 559
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (559, 'Upton', 'Upton', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 560)
UPDATE County SET Name = 'Uvalde', Value = 'Uvalde', StateID = 49 WHERE ID = 560
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (560, 'Uvalde', 'Uvalde', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 561)
UPDATE County SET Name = 'Val Verde', Value = 'Val Verde', StateID = 49 WHERE ID = 561
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (561, 'Val Verde', 'Val Verde', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 562)
UPDATE County SET Name = 'Van Zandt', Value = 'Van Zandt', StateID = 49 WHERE ID = 562
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (562, 'Van Zandt', 'Van Zandt', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 563)
UPDATE County SET Name = 'Victoria', Value = 'Victoria', StateID = 49 WHERE ID = 563
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (563, 'Victoria', 'Victoria', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 564)
UPDATE County SET Name = 'Walker', Value = 'Walker', StateID = 49 WHERE ID = 564
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (564, 'Walker', 'Walker', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 565)
UPDATE County SET Name = 'Waller', Value = 'Waller', StateID = 49 WHERE ID = 565
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (565, 'Waller', 'Waller', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 566)
UPDATE County SET Name = 'Ward', Value = 'Ward', StateID = 49 WHERE ID = 566
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (566, 'Ward', 'Ward', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 567)
UPDATE County SET Name = 'Washington', Value = 'Washington', StateID = 49 WHERE ID = 567
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (567, 'Washington', 'Washington', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 568)
UPDATE County SET Name = 'Webb', Value = 'Webb', StateID = 49 WHERE ID = 568
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (568, 'Webb', 'Webb', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 569)
UPDATE County SET Name = 'Wharton', Value = 'Wharton', StateID = 49 WHERE ID = 569
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (569, 'Wharton', 'Wharton', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 570)
UPDATE County SET Name = 'Wheeler', Value = 'Wheeler', StateID = 49 WHERE ID = 570
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (570, 'Wheeler', 'Wheeler', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 571)
UPDATE County SET Name = 'Wichita', Value = 'Wichita', StateID = 49 WHERE ID = 571
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (571, 'Wichita', 'Wichita', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 572)
UPDATE County SET Name = 'Wilbarger', Value = 'Wilbarger', StateID = 49 WHERE ID = 572
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (572, 'Wilbarger', 'Wilbarger', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 573)
UPDATE County SET Name = 'Willacy', Value = 'Willacy', StateID = 49 WHERE ID = 573
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (573, 'Willacy', 'Willacy', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 574)
UPDATE County SET Name = 'Williamson', Value = 'Williamson', StateID = 49 WHERE ID = 574
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (574, 'Williamson', 'Williamson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 575)
UPDATE County SET Name = 'Wilson', Value = 'Wilson', StateID = 49 WHERE ID = 575
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (575, 'Wilson', 'Wilson', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 576)
UPDATE County SET Name = 'Winkler', Value = 'Winkler', StateID = 49 WHERE ID = 576
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (576, 'Winkler', 'Winkler', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 577)
UPDATE County SET Name = 'Wise', Value = 'Wise', StateID = 49 WHERE ID = 577
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (577, 'Wise', 'Wise', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 578)
UPDATE County SET Name = 'Wood', Value = 'Wood', StateID = 49 WHERE ID = 578
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (578, 'Wood', 'Wood', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 579)
UPDATE County SET Name = 'Yoakum', Value = 'Yoakum', StateID = 49 WHERE ID = 579
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (579, 'Yoakum', 'Yoakum', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 580)
UPDATE County SET Name = 'Young', Value = 'Young', StateID = 49 WHERE ID = 580
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (580, 'Young', 'Young', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 581)
UPDATE County SET Name = 'Zapata', Value = 'Zapata', StateID = 49 WHERE ID = 581
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (581, 'Zapata', 'Zapata', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 582)
UPDATE County SET Name = 'Zavala', Value = 'Zavala', StateID = 49 WHERE ID = 582
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (582, 'Zavala', 'Zavala', 49)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 583)
UPDATE County SET Name = 'Beaver', Value = 'Beaver', StateID = 50 WHERE ID = 583
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (583, 'Beaver', 'Beaver', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 584)
UPDATE County SET Name = 'Box Elder', Value = 'Box Elder', StateID = 50 WHERE ID = 584
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (584, 'Box Elder', 'Box Elder', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 585)
UPDATE County SET Name = 'Cache', Value = 'Cache', StateID = 50 WHERE ID = 585
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (585, 'Cache', 'Cache', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 586)
UPDATE County SET Name = 'Carbon', Value = 'Carbon', StateID = 50 WHERE ID = 586
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (586, 'Carbon', 'Carbon', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 587)
UPDATE County SET Name = 'Daggett', Value = 'Daggett', StateID = 50 WHERE ID = 587
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (587, 'Daggett', 'Daggett', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 588)
UPDATE County SET Name = 'Davis', Value = 'Davis', StateID = 50 WHERE ID = 588
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (588, 'Davis', 'Davis', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 589)
UPDATE County SET Name = 'Duchesne', Value = 'Duchesne', StateID = 50 WHERE ID = 589
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (589, 'Duchesne', 'Duchesne', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 590)
UPDATE County SET Name = 'Emery', Value = 'Emery', StateID = 50 WHERE ID = 590
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (590, 'Emery', 'Emery', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 591)
UPDATE County SET Name = 'Garfield', Value = 'Garfield', StateID = 50 WHERE ID = 591
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (591, 'Garfield', 'Garfield', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 592)
UPDATE County SET Name = 'Grand', Value = 'Grand', StateID = 50 WHERE ID = 592
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (592, 'Grand', 'Grand', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 593)
UPDATE County SET Name = 'Iron', Value = 'Iron', StateID = 50 WHERE ID = 593
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (593, 'Iron', 'Iron', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 594)
UPDATE County SET Name = 'Juab', Value = 'Juab', StateID = 50 WHERE ID = 594
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (594, 'Juab', 'Juab', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 595)
UPDATE County SET Name = 'Kane', Value = 'Kane', StateID = 50 WHERE ID = 595
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (595, 'Kane', 'Kane', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 596)
UPDATE County SET Name = 'Millard', Value = 'Millard', StateID = 50 WHERE ID = 596
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (596, 'Millard', 'Millard', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 597)
UPDATE County SET Name = 'Morgan', Value = 'Morgan', StateID = 50 WHERE ID = 597
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (597, 'Morgan', 'Morgan', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 598)
UPDATE County SET Name = 'Piute', Value = 'Piute', StateID = 50 WHERE ID = 598
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (598, 'Piute', 'Piute', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 599)
UPDATE County SET Name = 'Rich', Value = 'Rich', StateID = 50 WHERE ID = 599
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (599, 'Rich', 'Rich', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 600)
UPDATE County SET Name = 'Salt Lake', Value = 'Salt Lake', StateID = 50 WHERE ID = 600
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (600, 'Salt Lake', 'Salt Lake', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 601)
UPDATE County SET Name = 'San Juan', Value = 'San Juan', StateID = 50 WHERE ID = 601
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (601, 'San Juan', 'San Juan', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 602)
UPDATE County SET Name = 'Sanpete', Value = 'Sanpete', StateID = 50 WHERE ID = 602
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (602, 'Sanpete', 'Sanpete', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 603)
UPDATE County SET Name = 'Sevier', Value = 'Sevier', StateID = 50 WHERE ID = 603
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (603, 'Sevier', 'Sevier', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 604)
UPDATE County SET Name = 'Summit', Value = 'Summit', StateID = 50 WHERE ID = 604
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (604, 'Summit', 'Summit', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 605)
UPDATE County SET Name = 'Tooele', Value = 'Tooele', StateID = 50 WHERE ID = 605
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (605, 'Tooele', 'Tooele', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 606)
UPDATE County SET Name = 'Uintah', Value = 'Uintah', StateID = 50 WHERE ID = 606
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (606, 'Uintah', 'Uintah', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 607)
UPDATE County SET Name = 'Utah', Value = 'Utah', StateID = 50 WHERE ID = 607
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (607, 'Utah', 'Utah', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 608)
UPDATE County SET Name = 'Wasatch', Value = 'Wasatch', StateID = 50 WHERE ID = 608
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (608, 'Wasatch', 'Wasatch', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 609)
UPDATE County SET Name = 'Washington', Value = 'Washington', StateID = 50 WHERE ID = 609
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (609, 'Washington', 'Washington', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 610)
UPDATE County SET Name = 'Wayne', Value = 'Wayne', StateID = 50 WHERE ID = 610
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (610, 'Wayne', 'Wayne', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 611)
UPDATE County SET Name = 'Weber', Value = 'Weber', StateID = 50 WHERE ID = 611
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (611, 'Weber', 'Weber', 50)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 612)
UPDATE County SET Name = 'Adams', Value = 'Adams', StateID = 54 WHERE ID = 612
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (612, 'Adams', 'Adams', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 613)
UPDATE County SET Name = 'Asotin', Value = 'Asotin', StateID = 54 WHERE ID = 613
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (613, 'Asotin', 'Asotin', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 614)
UPDATE County SET Name = 'Benton', Value = 'Benton', StateID = 54 WHERE ID = 614
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (614, 'Benton', 'Benton', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 615)
UPDATE County SET Name = 'Chelan', Value = 'Chelan', StateID = 54 WHERE ID = 615
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (615, 'Chelan', 'Chelan', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 616)
UPDATE County SET Name = 'Clallam', Value = 'Clallam', StateID = 54 WHERE ID = 616
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (616, 'Clallam', 'Clallam', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 617)
UPDATE County SET Name = 'Clark', Value = 'Clark', StateID = 54 WHERE ID = 617
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (617, 'Clark', 'Clark', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 618)
UPDATE County SET Name = 'Columbia', Value = 'Columbia', StateID = 54 WHERE ID = 618
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (618, 'Columbia', 'Columbia', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 619)
UPDATE County SET Name = 'Cowlitz', Value = 'Cowlitz', StateID = 54 WHERE ID = 619
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (619, 'Cowlitz', 'Cowlitz', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 620)
UPDATE County SET Name = 'Douglas', Value = 'Douglas', StateID = 54 WHERE ID = 620
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (620, 'Douglas', 'Douglas', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 621)
UPDATE County SET Name = 'Ferry', Value = 'Ferry', StateID = 54 WHERE ID = 621
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (621, 'Ferry', 'Ferry', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 622)
UPDATE County SET Name = 'Franklin', Value = 'Franklin', StateID = 54 WHERE ID = 622
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (622, 'Franklin', 'Franklin', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 623)
UPDATE County SET Name = 'Garfield', Value = 'Garfield', StateID = 54 WHERE ID = 623
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (623, 'Garfield', 'Garfield', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 624)
UPDATE County SET Name = 'Grant', Value = 'Grant', StateID = 54 WHERE ID = 624
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (624, 'Grant', 'Grant', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 625)
UPDATE County SET Name = 'Grays Harbor', Value = 'Grays Harbor', StateID = 54 WHERE ID = 625
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (625, 'Grays Harbor', 'Grays Harbor', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 626)
UPDATE County SET Name = 'Island', Value = 'Island', StateID = 54 WHERE ID = 626
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (626, 'Island', 'Island', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 627)
UPDATE County SET Name = 'Jefferson', Value = 'Jefferson', StateID = 54 WHERE ID = 627
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (627, 'Jefferson', 'Jefferson', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 628)
UPDATE County SET Name = 'King', Value = 'King', StateID = 54 WHERE ID = 628
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (628, 'King', 'King', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 629)
UPDATE County SET Name = 'Kitsap', Value = 'Kitsap', StateID = 54 WHERE ID = 629
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (629, 'Kitsap', 'Kitsap', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 630)
UPDATE County SET Name = 'Kittitas', Value = 'Kittitas', StateID = 54 WHERE ID = 630
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (630, 'Kittitas', 'Kittitas', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 631)
UPDATE County SET Name = 'Klickitat', Value = 'Klickitat', StateID = 54 WHERE ID = 631
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (631, 'Klickitat', 'Klickitat', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 632)
UPDATE County SET Name = 'Lewis', Value = 'Lewis', StateID = 54 WHERE ID = 632
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (632, 'Lewis', 'Lewis', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 633)
UPDATE County SET Name = 'Lincoln', Value = 'Lincoln', StateID = 54 WHERE ID = 633
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (633, 'Lincoln', 'Lincoln', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 634)
UPDATE County SET Name = 'Mason', Value = 'Mason', StateID = 54 WHERE ID = 634
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (634, 'Mason', 'Mason', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 635)
UPDATE County SET Name = 'Okanogan', Value = 'Okanogan', StateID = 54 WHERE ID = 635
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (635, 'Okanogan', 'Okanogan', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 636)
UPDATE County SET Name = 'Pacific', Value = 'Pacific', StateID = 54 WHERE ID = 636
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (636, 'Pacific', 'Pacific', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 637)
UPDATE County SET Name = 'Pend Oreille', Value = 'Pend Oreille', StateID = 54 WHERE ID = 637
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (637, 'Pend Oreille', 'Pend Oreille', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 638)
UPDATE County SET Name = 'Pierce', Value = 'Pierce', StateID = 54 WHERE ID = 638
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (638, 'Pierce', 'Pierce', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 639)
UPDATE County SET Name = 'San Juan', Value = 'San Juan', StateID = 54 WHERE ID = 639
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (639, 'San Juan', 'San Juan', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 640)
UPDATE County SET Name = 'Skagit', Value = 'Skagit', StateID = 54 WHERE ID = 640
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (640, 'Skagit', 'Skagit', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 641)
UPDATE County SET Name = 'Skamania', Value = 'Skamania', StateID = 54 WHERE ID = 641
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (641, 'Skamania', 'Skamania', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 642)
UPDATE County SET Name = 'Snohomish', Value = 'Snohomish', StateID = 54 WHERE ID = 642
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (642, 'Snohomish', 'Snohomish', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 643)
UPDATE County SET Name = 'Spokane', Value = 'Spokane', StateID = 54 WHERE ID = 643
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (643, 'Spokane', 'Spokane', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 644)
UPDATE County SET Name = 'Stevens', Value = 'Stevens', StateID = 54 WHERE ID = 644
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (644, 'Stevens', 'Stevens', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 645)
UPDATE County SET Name = 'Thurston', Value = 'Thurston', StateID = 54 WHERE ID = 645
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (645, 'Thurston', 'Thurston', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 646)
UPDATE County SET Name = 'Wahkiakum', Value = 'Wahkiakum', StateID = 54 WHERE ID = 646
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (646, 'Wahkiakum', 'Wahkiakum', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 647)
UPDATE County SET Name = 'Walla Walla', Value = 'Walla Walla', StateID = 54 WHERE ID = 647
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (647, 'Walla Walla', 'Walla Walla', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 648)
UPDATE County SET Name = 'Whatcom', Value = 'Whatcom', StateID = 54 WHERE ID = 648
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (648, 'Whatcom', 'Whatcom', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 649)
UPDATE County SET Name = 'Whitman', Value = 'Whitman', StateID = 54 WHERE ID = 649
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (649, 'Whitman', 'Whitman', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 650)
UPDATE County SET Name = 'Yakima', Value = 'Yakima', StateID = 54 WHERE ID = 650
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (650, 'Yakima', 'Yakima', 54)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 651)
UPDATE County SET Name = 'Albany', Value = 'Albany', StateID = 57 WHERE ID = 651
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (651, 'Albany', 'Albany', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 652)
UPDATE County SET Name = 'Big Horn', Value = 'Big Horn', StateID = 57 WHERE ID = 652
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (652, 'Big Horn', 'Big Horn', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 653)
UPDATE County SET Name = 'Campbell', Value = 'Campbell', StateID = 57 WHERE ID = 653
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (653, 'Campbell', 'Campbell', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 654)
UPDATE County SET Name = 'Carbon', Value = 'Carbon', StateID = 57 WHERE ID = 654
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (654, 'Carbon', 'Carbon', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 655)
UPDATE County SET Name = 'Converse', Value = 'Converse', StateID = 57 WHERE ID = 655
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (655, 'Converse', 'Converse', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 656)
UPDATE County SET Name = 'Crook', Value = 'Crook', StateID = 57 WHERE ID = 656
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (656, 'Crook', 'Crook', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 657)
UPDATE County SET Name = 'Fremont', Value = 'Fremont', StateID = 57 WHERE ID = 657
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (657, 'Fremont', 'Fremont', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 658)
UPDATE County SET Name = 'Goshen', Value = 'Goshen', StateID = 57 WHERE ID = 658
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (658, 'Goshen', 'Goshen', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 659)
UPDATE County SET Name = 'Hot Springs', Value = 'Hot Springs', StateID = 57 WHERE ID = 659
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (659, 'Hot Springs', 'Hot Springs', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 660)
UPDATE County SET Name = 'Johnson', Value = 'Johnson', StateID = 57 WHERE ID = 660
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (660, 'Johnson', 'Johnson', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 661)
UPDATE County SET Name = 'Laramie', Value = 'Laramie', StateID = 57 WHERE ID = 661
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (661, 'Laramie', 'Laramie', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 662)
UPDATE County SET Name = 'Lincoln', Value = 'Lincoln', StateID = 57 WHERE ID = 662
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (662, 'Lincoln', 'Lincoln', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 663)
UPDATE County SET Name = 'Natrona', Value = 'Natrona', StateID = 57 WHERE ID = 663
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (663, 'Natrona', 'Natrona', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 664)
UPDATE County SET Name = 'Niobrara', Value = 'Niobrara', StateID = 57 WHERE ID = 664
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (664, 'Niobrara', 'Niobrara', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 665)
UPDATE County SET Name = 'Park', Value = 'Park', StateID = 57 WHERE ID = 665
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (665, 'Park', 'Park', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 666)
UPDATE County SET Name = 'Platte', Value = 'Platte', StateID = 57 WHERE ID = 666
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (666, 'Platte', 'Platte', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 667)
UPDATE County SET Name = 'Sheridan', Value = 'Sheridan', StateID = 57 WHERE ID = 667
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (667, 'Sheridan', 'Sheridan', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 668)
UPDATE County SET Name = 'Sublette', Value = 'Sublette', StateID = 57 WHERE ID = 668
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (668, 'Sublette', 'Sublette', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 669)
UPDATE County SET Name = 'Sweetwater', Value = 'Sweetwater', StateID = 57 WHERE ID = 669
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (669, 'Sweetwater', 'Sweetwater', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 670)
UPDATE County SET Name = 'Teton', Value = 'Teton', StateID = 57 WHERE ID = 670
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (670, 'Teton', 'Teton', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 671)
UPDATE County SET Name = 'Uinta', Value = 'Uinta', StateID = 57 WHERE ID = 671
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (671, 'Uinta', 'Uinta', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 672)
UPDATE County SET Name = 'Washakie', Value = 'Washakie', StateID = 57 WHERE ID = 672
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (672, 'Washakie', 'Washakie', 57)
GO
IF EXISTS(SELECT ID FROM County WHERE ID = 673)
UPDATE County SET Name = 'Weston', Value = 'Weston', StateID = 57 WHERE ID = 673
ELSE
INSERT INTO County(ID, Name, Value, StateID) VALUES (673, 'Weston', 'Weston', 57)
GO
SET IDENTITY_INSERT County OFF
GO

