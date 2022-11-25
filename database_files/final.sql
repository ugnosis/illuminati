BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "university" (
	"id"	INTEGER,
	"Name"	TEXT,
	"RUR 2022.00"	INTEGER,
	"2023lacrank"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "nonprofit" (
	"nonprofit_id"	INTEGER NOT NULL UNIQUE,
	"nonprofit_name"	INTEGER,
	"nonprofit_city"	INTEGER,
	PRIMARY KEY("nonprofit_id" AUTOINCREMENT),
	FOREIGN KEY("nonprofit_city") REFERENCES "city"("city_id")
);
CREATE TABLE IF NOT EXISTS "city" (
	"city_id"	INTEGER,
	"city_name"	TEXT,
	"country_name"	INTEGER,
	"us_state_name"	TEXT,
	PRIMARY KEY("city_id")
);
CREATE TABLE IF NOT EXISTS "location" (
	"person_id"	INTEGER,
	"birth_city"	INTEGER,
	"current_city"	INTEGER,
	PRIMARY KEY("person_id")
);
CREATE TABLE IF NOT EXISTS "family" (
	"individual"	INTEGER,
	"mother"	INTEGER,
	"father"	INTEGER,
	"sibling"	INTEGER,
	PRIMARY KEY("individual"),
	FOREIGN KEY("mother") REFERENCES "person"("person_id"),
	FOREIGN KEY("individual") REFERENCES "person"("person_id"),
	FOREIGN KEY("father") REFERENCES "person"("person_id")
);
CREATE TABLE IF NOT EXISTS "person" (
	"person_id"	INTEGER NOT NULL UNIQUE,
	"first_name"	TEXT,
	"middle_name"	TEXT,
	"last_name"	TEXT,
	"title"	TEXT,
	"genre"	TEXT,
	"born"	TEXT,
	"person_party"	TEXT,
	"denomination"	TEXT,
	"person_ethnicity"	TEXT,
	PRIMARY KEY("person_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "education" (
	"person_id"	INTEGER,
	"ba_degree"	INTEGER,
	"ba_degree_year"	INTEGER,
	"grad_degree"	INTEGER,
	"grad_degree_year"	INTEGER,
	"hs_degree"	INTEGER,
	"hs_grad_year"	INTEGER,
	PRIMARY KEY("person_id"),
	FOREIGN KEY("person_id") REFERENCES "person"("person_id")
);
CREATE TABLE IF NOT EXISTS "contacts" (
	"id"	INTEGER NOT NULL UNIQUE,
	"name"	VARCHAR(40) NOT NULL,
	"job"	VARCHAR(50),
	"email"	VARCHAR(40) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "university" VALUES (1,'Harvard University',1,NULL);
INSERT INTO "university" VALUES (2,'Massachusetts Institute of Technology (MIT)',1,NULL);
INSERT INTO "university" VALUES (3,'Stanford University',3,NULL);
INSERT INTO "university" VALUES (4,'University of Cambridge',4,NULL);
INSERT INTO "university" VALUES (5,'University of Oxford',5,NULL);
INSERT INTO "university" VALUES (6,'University of California, Berkeley',5,NULL);
INSERT INTO "university" VALUES (7,'University of California, Los Angeles',7,NULL);
INSERT INTO "university" VALUES (8,'Princeton University',8,NULL);
INSERT INTO "university" VALUES (9,'Yale University',9,NULL);
INSERT INTO "university" VALUES (10,'California Institute of Technology (Caltech)',10,NULL);
INSERT INTO "university" VALUES (11,'University of Tokyo',11,NULL);
INSERT INTO "university" VALUES (12,'University of Chicago',11,NULL);
INSERT INTO "university" VALUES (13,'University of Michigan',13,NULL);
INSERT INTO "university" VALUES (14,'Imperial College London',14,NULL);
INSERT INTO "university" VALUES (15,'Columbia University',14,NULL);
INSERT INTO "university" VALUES (16,'ETH Zurich (Swiss Federal Institute of Technology)',16,NULL);
INSERT INTO "university" VALUES (17,'National University of Singapore',17,NULL);
INSERT INTO "university" VALUES (18,'Johns Hopkins University',18,NULL);
INSERT INTO "university" VALUES (19,'University of Toronto',19,NULL);
INSERT INTO "university" VALUES (20,'University of Pennsylvania',19,NULL);
INSERT INTO "university" VALUES (21,'Cornell University',21,NULL);
INSERT INTO "university" VALUES (22,'Tsinghua University',22,NULL);
INSERT INTO "university" VALUES (23,'University College London',23,NULL);
INSERT INTO "university" VALUES (24,'University of Illinois at Urbana - Champaign',23,NULL);
INSERT INTO "university" VALUES (25,'University of Washington',25,NULL);
INSERT INTO "university" VALUES (26,'London School of Economics and Political Science',26,NULL);
INSERT INTO "university" VALUES (27,'Georgia Institute of Technology',27,NULL);
INSERT INTO "university" VALUES (28,'Peking University',28,NULL);
INSERT INTO "university" VALUES (29,'New York University',29,NULL);
INSERT INTO "university" VALUES (30,'University of Wisconsin - Madison',30,NULL);
INSERT INTO "university" VALUES (31,'Kyoto University',31,NULL);
INSERT INTO "university" VALUES (32,'Lomonosov Moscow State University',32,NULL);
INSERT INTO "university" VALUES (33,'University of California, San Diego',33,NULL);
INSERT INTO "university" VALUES (34,'Carnegie Mellon University',34,NULL);
INSERT INTO "university" VALUES (35,'Nanyang Technological University',35,NULL);
INSERT INTO "university" VALUES (36,'University of British Columbia',36,NULL);
INSERT INTO "university" VALUES (37,'Northwestern University',36,NULL);
INSERT INTO "university" VALUES (38,'Ecole Polytechnique Federale de Lausanne',38,NULL);
INSERT INTO "university" VALUES (39,'Pennsylvania State University',39,NULL);
INSERT INTO "university" VALUES (40,'Purdue University',40,NULL);
INSERT INTO "university" VALUES (41,'University of North Carolina',41,NULL);
INSERT INTO "university" VALUES (42,'University of California, Davis',42,NULL);
INSERT INTO "university" VALUES (43,'Technical University of Munich',43,NULL);
INSERT INTO "university" VALUES (44,'University of Manchester',44,NULL);
INSERT INTO "university" VALUES (45,'McGill University',45,NULL);
INSERT INTO "university" VALUES (46,'Tohoku University',46,NULL);
INSERT INTO "university" VALUES (47,'University of Minnesota',46,NULL);
INSERT INTO "university" VALUES (48,'University of Hong Kong',48,NULL);
INSERT INTO "university" VALUES (49,'Tokyo Institute of Technology',49,NULL);
INSERT INTO "university" VALUES (50,'Sorbonne University',50,NULL);
INSERT INTO "university" VALUES (51,'Ohio State University',51,NULL);
INSERT INTO "university" VALUES (52,'University of Sydney',52,NULL);
INSERT INTO "university" VALUES (53,'University of Edinburgh',53,NULL);
INSERT INTO "university" VALUES (54,'Washington University in St. Louis',54,NULL);
INSERT INTO "university" VALUES (55,'Osaka University',55,NULL);
INSERT INTO "university" VALUES (56,'University of Sao Paulo',56,NULL);
INSERT INTO "university" VALUES (57,'King`s College London',57,NULL);
INSERT INTO "university" VALUES (58,'Hong Kong University of Science and Technology',58,NULL);
INSERT INTO "university" VALUES (59,'Ludwig Maximilian University of Munich',59,NULL);
INSERT INTO "university" VALUES (60,'Katholieke Universiteit Leuven (KU Leuven)',60,NULL);
INSERT INTO "university" VALUES (61,'Karolinska Institute',61,NULL);
INSERT INTO "university" VALUES (62,'University of California, Santa Barbara',62,NULL);
INSERT INTO "university" VALUES (63,'Wageningen University & Research Center',63,NULL);
INSERT INTO "university" VALUES (64,'Korea Advanced Institute of Science and Technology (KAIST)',64,NULL);
INSERT INTO "university" VALUES (65,'Michigan State University',65,NULL);
INSERT INTO "university" VALUES (66,'Monash University',66,NULL);
INSERT INTO "university" VALUES (67,'University of Pittsburgh',67,NULL);
INSERT INTO "university" VALUES (68,'University of Southern California',68,NULL);
INSERT INTO "university" VALUES (69,'Australian National University',69,NULL);
INSERT INTO "university" VALUES (70,'University of Florida',70,NULL);
INSERT INTO "university" VALUES (71,'Boston University',71,NULL);
INSERT INTO "university" VALUES (72,'Humboldt University of Berlin',72,NULL);
INSERT INTO "university" VALUES (73,'University of Queensland Australia',73,NULL);
INSERT INTO "university" VALUES (74,'Indiana University',74,NULL);
INSERT INTO "university" VALUES (75,'Middle East Technical University',75,NULL);
INSERT INTO "university" VALUES (76,'Utrecht University',76,NULL);
INSERT INTO "university" VALUES (77,'National Taiwan University',77,NULL);
INSERT INTO "university" VALUES (78,'Texas A&M University',78,NULL);
INSERT INTO "university" VALUES (79,'Brown University',79,NULL);
INSERT INTO "university" VALUES (80,'Emory University',80,NULL);
INSERT INTO "university" VALUES (81,'University of Colorado',81,NULL);
INSERT INTO "university" VALUES (82,'University of New South Wales',82,NULL);
INSERT INTO "university" VALUES (83,'University of Maryland, College Park',83,NULL);
INSERT INTO "university" VALUES (84,'Yonsei University',84,NULL);
INSERT INTO "university" VALUES (85,'RWTH Aachen University',85,NULL);
INSERT INTO "university" VALUES (86,'Arizona State University',86,NULL);
INSERT INTO "university" VALUES (87,'Technical University of Berlin',87,NULL);
INSERT INTO "university" VALUES (88,'Chinese University Hong Kong',87,NULL);
INSERT INTO "university" VALUES (89,'Nagoya University',89,NULL);
INSERT INTO "university" VALUES (90,'Sungkyunkwan University',90,NULL);
INSERT INTO "university" VALUES (91,'Royal Institute of Technology (KTH)',91,NULL);
INSERT INTO "university" VALUES (92,'Moscow Institute of Physics and Technology',92,NULL);
INSERT INTO "university" VALUES (93,'University of Zurich',93,NULL);
INSERT INTO "university" VALUES (94,'Karlsruhe Institute of Technology',94,NULL);
INSERT INTO "university" VALUES (95,'Shanghai Jiao Tong University',95,NULL);
INSERT INTO "university" VALUES (96,'Indian Institute of Science',96,NULL);
INSERT INTO "university" VALUES (97,'Polytechnic University of Milan',97,NULL);
INSERT INTO "university" VALUES (98,'University of Arizona',98,NULL);
INSERT INTO "university" VALUES (99,'Free University of Berlin',99,NULL);
INSERT INTO "university" VALUES (100,'Vanderbilt University',100,NULL);
INSERT INTO "university" VALUES (101,'Saint Petersburg State University',101,NULL);
INSERT INTO "university" VALUES (102,'Lund University',102,NULL);
INSERT INTO "university" VALUES (103,'University of California, Irvine',103,NULL);
INSERT INTO "university" VALUES (104,'Sapienza University of Rome',104,NULL);
INSERT INTO "university" VALUES (105,'Virginia Polytechnic Institute and State University',105,NULL);
INSERT INTO "university" VALUES (106,'Ghent University',106,NULL);
INSERT INTO "university" VALUES (107,'University of Sheffield',107,NULL);
INSERT INTO "university" VALUES (108,'State University of Campinas (Unicamp)',108,NULL);
INSERT INTO "university" VALUES (109,'University of Malaya',109,NULL);
INSERT INTO "university" VALUES (110,'Rutgers the State University of New Jersey',110,NULL);
INSERT INTO "university" VALUES (111,'University of Tehran',111,NULL);
INSERT INTO "university" VALUES (112,'University of Bristol',112,NULL);
INSERT INTO "university" VALUES (113,'University of Illinois at Chicago',113,NULL);
INSERT INTO "university" VALUES (114,'Ruprecht Karl University of Heidelberg',114,NULL);
INSERT INTO "university" VALUES (115,'National Autonomous University of Mexico',115,NULL);
INSERT INTO "university" VALUES (116,'North Carolina State University',116,NULL);
INSERT INTO "university" VALUES (117,'University of Warwick',117,NULL);
INSERT INTO "university" VALUES (118,'Hokkaido University',118,NULL);
INSERT INTO "university" VALUES (119,'Zhejiang University',119,NULL);
INSERT INTO "university" VALUES (120,'University of Reading',120,NULL);
INSERT INTO "university" VALUES (121,'University of Waterloo',121,NULL);
INSERT INTO "university" VALUES (122,'Financial University under the Government of the Russian Federation',122,NULL);
INSERT INTO "university" VALUES (123,'Fudan University',123,NULL);
INSERT INTO "university" VALUES (124,'Technical University of Denmark',124,NULL);
INSERT INTO "university" VALUES (125,'Erasmus University Rotterdam',125,NULL);
INSERT INTO "university" VALUES (126,'University of Helsinki',126,NULL);
INSERT INTO "university" VALUES (127,'Indian Institute of Technology, Madras',127,NULL);
INSERT INTO "university" VALUES (128,'Bogazici University',128,NULL);
INSERT INTO "university" VALUES (129,'University of Barcelona',129,NULL);
INSERT INTO "university" VALUES (130,'University of Glasgow',130,NULL);
INSERT INTO "university" VALUES (131,'University of Georgia',131,NULL);
INSERT INTO "university" VALUES (132,'University of Iowa',132,NULL);
INSERT INTO "university" VALUES (133,'University of Gottingen',133,NULL);
INSERT INTO "university" VALUES (134,'Technion Israel Institute of Technology',134,NULL);
INSERT INTO "university" VALUES (135,'University of Birmingham',135,NULL);
INSERT INTO "university" VALUES (136,'University of Bonn',136,NULL);
INSERT INTO "university" VALUES (137,'Rice University',137,NULL);
INSERT INTO "university" VALUES (138,'Indian Institute of Technology, Delhi',138,NULL);
INSERT INTO "university" VALUES (139,'Hong Kong Polytechnic University',139,NULL);
INSERT INTO "university" VALUES (140,'City University of Hong Kong',140,NULL);
INSERT INTO "university" VALUES (141,'Keio University',141,NULL);
INSERT INTO "university" VALUES (142,'McMaster University',142,NULL);
INSERT INTO "university" VALUES (143,'Universite de Montreal',143,NULL);
INSERT INTO "university" VALUES (144,'Complutense University of Madrid',144,NULL);
INSERT INTO "university" VALUES (145,'Hebrew University of Jerusalem',145,NULL);
INSERT INTO "university" VALUES (146,'National Research Nuclear University MEPhI (Moscow Engineering Physics Institute)',146,NULL);
INSERT INTO "university" VALUES (147,'Aalto University',147,NULL);
INSERT INTO "university" VALUES (148,'Oxford Brookes University',147,NULL);
INSERT INTO "university" VALUES (149,'Istanbul Technical University',149,NULL);
INSERT INTO "university" VALUES (150,'University of Groningen',150,NULL);
INSERT INTO "university" VALUES (151,'Durham University',150,NULL);
INSERT INTO "university" VALUES (152,'Colorado School of Mines',152,NULL);
INSERT INTO "university" VALUES (153,'Georgetown University',152,NULL);
INSERT INTO "university" VALUES (154,'University of Southampton',154,NULL);
INSERT INTO "university" VALUES (155,'University of Science and Technology of China',155,NULL);
INSERT INTO "university" VALUES (156,'Autonomous University of Barcelona',156,NULL);
INSERT INTO "university" VALUES (157,'Lancaster University',157,NULL);
INSERT INTO "university" VALUES (158,'Universite de Paris',158,NULL);
INSERT INTO "university" VALUES (159,'Hacettepe University',159,NULL);
INSERT INTO "university" VALUES (160,'Tel Aviv University',162,NULL);
INSERT INTO "university" VALUES (161,'University of Tsukuba',162,NULL);
INSERT INTO "university" VALUES (162,'Pohang University of Science and Technology (POSTECH)',162,NULL);
INSERT INTO "university" VALUES (163,'Bauman Moscow State Technical University',162,NULL);
INSERT INTO "university" VALUES (164,'Universiti Kebangsaan Malaysia',164,NULL);
INSERT INTO "university" VALUES (165,'Waseda University',165,NULL);
INSERT INTO "university" VALUES (166,'Chalmers University of Technology',166,NULL);
INSERT INTO "university" VALUES (167,'University of Cape Town',167,NULL);
INSERT INTO "university" VALUES (168,'University of Liverpool',168,NULL);
INSERT INTO "university" VALUES (169,'University of Auckland',169,NULL);
INSERT INTO "university" VALUES (170,'Rockefeller University',170,NULL);
INSERT INTO "university" VALUES (171,'Aarhus University',171,NULL);
INSERT INTO "university" VALUES (172,'Bilkent University',172,NULL);
INSERT INTO "university" VALUES (173,'University of Freiburg',173,NULL);
INSERT INTO "university" VALUES (174,'Tongji University',174,NULL);
INSERT INTO "university" VALUES (175,'Newcastle University',175,NULL);
INSERT INTO "university" VALUES (176,'University of California, Riverside',176,NULL);
INSERT INTO "university" VALUES (177,'Colorado State University',177,NULL);
INSERT INTO "university" VALUES (178,'Norwegian University of Science and Technology',178,NULL);
INSERT INTO "university" VALUES (179,'Harbin Institute of Technology',179,NULL);
INSERT INTO "university" VALUES (180,'Charles University in Prague',180,NULL);
INSERT INTO "university" VALUES (181,'University of Notre Dame',181,NULL);
INSERT INTO "university" VALUES (182,'Technische Universitat Dresden (TU Dresden)',182,NULL);
INSERT INTO "university" VALUES (183,'Nanjing University',183,NULL);
INSERT INTO "university" VALUES (184,'Beijing Normal University',184,NULL);
INSERT INTO "university" VALUES (185,'Trinity College Dublin',184,NULL);
INSERT INTO "university" VALUES (186,'Polytechnic University of Turin',187,NULL);
INSERT INTO "university" VALUES (187,'Case Western Reserve University',187,NULL);
INSERT INTO "university" VALUES (188,'Tufts University',187,NULL);
INSERT INTO "university" VALUES (189,'University of Western Australia',189,NULL);
INSERT INTO "university" VALUES (190,'Tomsk State University',190,NULL);
INSERT INTO "university" VALUES (191,'Indian Institute of Technology, Kanpur',191,NULL);
INSERT INTO "university" VALUES (192,'Universiti Sains Malaysia',192,NULL);
INSERT INTO "university" VALUES (193,'Cardiff University',192,NULL);
INSERT INTO "university" VALUES (194,'School of Oriental and African Studies (SOAS University)',194,NULL);
INSERT INTO "university" VALUES (195,'ITMO University',195,NULL);
INSERT INTO "university" VALUES (196,'National Tsing Hua University',195,NULL);
INSERT INTO "university" VALUES (197,'University of Geneva',197,NULL);
INSERT INTO "university" VALUES (198,'University of St. Andrews',197,NULL);
INSERT INTO "university" VALUES (199,'RMIT University',199,NULL);
INSERT INTO "university" VALUES (200,'University of Gothenburg',200,NULL);
INSERT INTO "university" VALUES (201,'Oregon State University',201,NULL);
INSERT INTO "university" VALUES (202,'University of Calgary',202,NULL);
INSERT INTO "university" VALUES (203,'Loughborough University',203,NULL);
INSERT INTO "university" VALUES (204,'University of Utah',204,NULL);
INSERT INTO "university" VALUES (205,'George Washington University',205,NULL);
INSERT INTO "university" VALUES (206,'Syracuse University',206,NULL);
INSERT INTO "university" VALUES (207,'Queensland University of Technology',207,NULL);
INSERT INTO "university" VALUES (208,'University of California, Santa Cruz',208,NULL);
INSERT INTO "university" VALUES (209,'University of Rochester',209,NULL);
INSERT INTO "university" VALUES (210,'Curtin University',210,NULL);
INSERT INTO "university" VALUES (211,'Koc University',210,NULL);
INSERT INTO "university" VALUES (212,'Technical University of Darmstadt',212,NULL);
INSERT INTO "university" VALUES (213,'Autonomous University of Madrid',213,NULL);
INSERT INTO "university" VALUES (214,'Weizmann Institute of Science',214,NULL);
INSERT INTO "university" VALUES (215,'Queen Mary University of London',214,NULL);
INSERT INTO "university" VALUES (216,'National Taras Shevchenko University of Kyiv',216,NULL);
INSERT INTO "university" VALUES (217,'Dartmouth College',217,NULL);
INSERT INTO "university" VALUES (218,'University Catholique de Louvain',218,NULL);
INSERT INTO "university" VALUES (219,'Aalborg University',219,NULL);
INSERT INTO "university" VALUES (220,'National Yang Ming Chiao Tung University',220,NULL);
INSERT INTO "university" VALUES (221,'University of Exeter',220,NULL);
INSERT INTO "university" VALUES (222,'Universiti Putra Malaysia',222,NULL);
INSERT INTO "university" VALUES (223,'University of Lisbon',222,NULL);
INSERT INTO "university" VALUES (224,'MIREA - Russian Technological University',225,NULL);
INSERT INTO "university" VALUES (225,'Cankaya University',225,NULL);
INSERT INTO "university" VALUES (226,'Boston College',225,NULL);
INSERT INTO "university" VALUES (227,'University of Miami',227,NULL);
INSERT INTO "university" VALUES (228,'Federal University of Rio de Janeiro',228,NULL);
INSERT INTO "university" VALUES (229,'Indian Institute of Technology, Kharagpur',229,NULL);
INSERT INTO "university" VALUES (230,'University of Guelph',230,NULL);
INSERT INTO "university" VALUES (231,'SOAS University of London',230,NULL);
INSERT INTO "university" VALUES (232,'Swedish University of Agricultural Sciences',232,NULL);
INSERT INTO "university" VALUES (233,'University of Bern',233,NULL);
INSERT INTO "university" VALUES (234,'Tomsk Polytechnic University',234,NULL);
INSERT INTO "university" VALUES (235,'University of Adelaide',235,NULL);
INSERT INTO "university" VALUES (236,'University of York',235,NULL);
INSERT INTO "university" VALUES (237,'University of Hamburg',237,NULL);
INSERT INTO "university" VALUES (238,'University of Sussex',238,NULL);
INSERT INTO "university" VALUES (239,'Peter the Great St. Petersburg Polytechnic University',239,NULL);
INSERT INTO "university" VALUES (240,'University of Hawaii',240,NULL);
INSERT INTO "university" VALUES (241,'University of Twente',241,NULL);
INSERT INTO "university" VALUES (242,'Universiti Teknologi Malaysia',242,NULL);
INSERT INTO "university" VALUES (243,'Washington State University',242,NULL);
INSERT INTO "university" VALUES (244,'University of Delaware',244,NULL);
INSERT INTO "university" VALUES (245,'King Abdulaziz University',245,NULL);
INSERT INTO "university" VALUES (246,'Polytechnic University of Catalonia',246,NULL);
INSERT INTO "university" VALUES (247,'Sabanci University',247,NULL);
INSERT INTO "university" VALUES (248,'Pontificia University Catolica de Chile',248,NULL);
INSERT INTO "university" VALUES (249,'Kobe University',249,NULL);
INSERT INTO "university" VALUES (250,'University of Navarra',249,NULL);
INSERT INTO "university" VALUES (251,'Polytechnic University of Valencia',251,NULL);
INSERT INTO "university" VALUES (252,'Hiroshima University',252,NULL);
INSERT INTO "university" VALUES (253,'Polytechnic University of Madrid',252,NULL);
INSERT INTO "university" VALUES (254,'State University of New York, Stony Brook',254,NULL);
INSERT INTO "university" VALUES (255,'Scuola Normale Superiore di Pisa',255,NULL);
INSERT INTO "university" VALUES (256,'University of Bath',255,NULL);
INSERT INTO "university" VALUES (257,'Kazan Federal University',258,NULL);
INSERT INTO "university" VALUES (258,'Mahidol University',258,NULL);
INSERT INTO "university" VALUES (259,'Ankara University',258,NULL);
INSERT INTO "university" VALUES (260,'University of Witwatersrand',260,NULL);
INSERT INTO "university" VALUES (261,'Tokyo Medical and Dental University',261,NULL);
INSERT INTO "university" VALUES (262,'Pompeu Fabra University',262,NULL);
INSERT INTO "university" VALUES (263,'Wuhan University',263,NULL);
INSERT INTO "university" VALUES (264,'University of Kansas',263,NULL);
INSERT INTO "university" VALUES (265,'Chulalongkorn University',265,NULL);
INSERT INTO "university" VALUES (266,'Charles III University of Madrid',266,NULL);
INSERT INTO "university" VALUES (267,'University of Porto',267,NULL);
INSERT INTO "university" VALUES (268,'University of Padua',268,NULL);
INSERT INTO "university" VALUES (269,'Tehran University of Medical Sciences',269,NULL);
INSERT INTO "university" VALUES (270,'Queen`s University Belfast',270,NULL);
INSERT INTO "university" VALUES (271,'Deakin University',272,NULL);
INSERT INTO "university" VALUES (272,'Johann Wolfgang Goethe University Frankfurt am Main',272,NULL);
INSERT INTO "university" VALUES (273,'Politecnico di Torino',272,NULL);
INSERT INTO "university" VALUES (274,'Tokyo University of Science',274,NULL);
INSERT INTO "university" VALUES (275,'University of Oregon',275,NULL);
INSERT INTO "university" VALUES (276,'King Fahd University of Petroleum and Minerals',276,NULL);
INSERT INTO "university" VALUES (277,'University of Munster',277,NULL);
INSERT INTO "university" VALUES (278,'Cairo University',278,NULL);
INSERT INTO "university" VALUES (279,'University of Central Florida',279,NULL);
INSERT INTO "university" VALUES (280,'University College Dublin',280,NULL);
INSERT INTO "university" VALUES (281,'National Cheng Kung University',282,NULL);
INSERT INTO "university" VALUES (282,'University of Strathclyde',283,NULL);
INSERT INTO "university" VALUES (283,'Queens University',284,NULL);
INSERT INTO "university" VALUES (284,'Aix Marseille University',286,NULL);
INSERT INTO "university" VALUES (285,'Xi`an Jiaotong University',287,NULL);
INSERT INTO "university" VALUES (286,'University of Valencia',289,NULL);
INSERT INTO "university" VALUES (287,'University of Essex',289,NULL);
INSERT INTO "university" VALUES (288,'State University of New York, Buffalo',289,NULL);
INSERT INTO "university" VALUES (289,'Northeastern University',291,NULL);
INSERT INTO "university" VALUES (290,'Ural Federal University',292,NULL);
INSERT INTO "university" VALUES (291,'University of Chile',293,NULL);
INSERT INTO "university" VALUES (292,'University of Otago',293,NULL);
INSERT INTO "university" VALUES (293,'University of Surrey',295,NULL);
INSERT INTO "university" VALUES (294,'University of Texas at Dallas',296,NULL);
INSERT INTO "university" VALUES (295,'State University of New York, Albany',297,NULL);
INSERT INTO "university" VALUES (296,'Istanbul University',298,NULL);
INSERT INTO "university" VALUES (297,'Stellenbosch University',299,NULL);
INSERT INTO "university" VALUES (298,'University of Pretoria',299,NULL);
INSERT INTO "university" VALUES (299,'Vrije Universiteit Brussels (VUB)',302,NULL);
INSERT INTO "university" VALUES (300,'Radboud University Nijmegen',302,NULL);
INSERT INTO "university" VALUES (301,'University of Missouri',302,NULL);
INSERT INTO "university" VALUES (302,'Southeast University',304,NULL);
INSERT INTO "university" VALUES (303,'University of Montpellier',304,NULL);
INSERT INTO "university" VALUES (304,'National University of Science and Technology MISiS',306,NULL);
INSERT INTO "university" VALUES (305,'University of Ljubljana',306,NULL);
INSERT INTO "university" VALUES (306,'National Taiwan Normal University',308,NULL);
INSERT INTO "university" VALUES (307,'University of Ottawa',309,NULL);
INSERT INTO "university" VALUES (308,'Tilburg University',310,NULL);
INSERT INTO "university" VALUES (309,'Macquarie University',311,NULL);
INSERT INTO "university" VALUES (310,'Central European University',311,NULL);
INSERT INTO "university" VALUES (311,'Aristotle University of Thessaloniki',313,NULL);
INSERT INTO "university" VALUES (312,'Western University',314,NULL);
INSERT INTO "university" VALUES (313,'University of Tennessee Knoxville',314,NULL);
INSERT INTO "university" VALUES (314,'University of Aberdeen',316,NULL);
INSERT INTO "university" VALUES (315,'University of Connecticut',316,NULL);
INSERT INTO "university" VALUES (316,'Auburn University',318,NULL);
INSERT INTO "university" VALUES (317,'Sun Yat-sen University',319,NULL);
INSERT INTO "university" VALUES (318,'University of Wurzburg',319,NULL);
INSERT INTO "university" VALUES (319,'Universite Grenoble Alpes (UGA)',322,NULL);
INSERT INTO "university" VALUES (320,'University of Konstanz',322,NULL);
INSERT INTO "university" VALUES (321,'University of Coimbra',322,NULL);
INSERT INTO "university" VALUES (322,'University of Minho',324,NULL);
INSERT INTO "university" VALUES (323,'Hanyang University',325,NULL);
INSERT INTO "university" VALUES (324,'Kursk State University',326,NULL);
INSERT INTO "university" VALUES (325,'China Agricultural University',328,NULL);
INSERT INTO "university" VALUES (326,'University of Erlangen Nuremberg',328,NULL);
INSERT INTO "university" VALUES (327,'University of Dundee',328,NULL);
INSERT INTO "university" VALUES (328,'Beihang University',330,NULL);
INSERT INTO "university" VALUES (329,'Universite Paris-Sud',330,NULL);
INSERT INTO "university" VALUES (330,'University of South Florida',332,NULL);
INSERT INTO "university" VALUES (331,'Ecole Normale Superieure, Lyon',333,NULL);
INSERT INTO "university" VALUES (332,'University of Pisa',334,NULL);
INSERT INTO "university" VALUES (333,'Ben-Gurion University of the Negev',335,NULL);
INSERT INTO "university" VALUES (334,'University of Wollongong',336,NULL);
INSERT INTO "university" VALUES (335,'King Saud University',337,NULL);
INSERT INTO "university" VALUES (336,'Hitotsubashi University',338,NULL);
INSERT INTO "university" VALUES (337,'University of Ibadan',338,NULL);
INSERT INTO "university" VALUES (338,'University of Cologne',341,NULL);
INSERT INTO "university" VALUES (339,'University of Seville',341,NULL);
INSERT INTO "university" VALUES (340,'Drexel University',341,NULL);
INSERT INTO "university" VALUES (341,'Huazhong University of Science and Technology',343,NULL);
INSERT INTO "university" VALUES (342,'Novosibirsk State Technical University',343,NULL);
INSERT INTO "university" VALUES (343,'Temple University',345,NULL);
INSERT INTO "university" VALUES (344,'Universite du Quebec a Montreal',346,NULL);
INSERT INTO "university" VALUES (345,'University of Hannover',346,NULL);
INSERT INTO "university" VALUES (346,'American University of Beirut',348,NULL);
INSERT INTO "university" VALUES (347,'University of Bergen',348,NULL);
INSERT INTO "university" VALUES (348,'University of Tartu',350,NULL);
INSERT INTO "university" VALUES (349,'Gazi University',350,NULL);
INSERT INTO "university" VALUES (350,'Central South University',352,NULL);
INSERT INTO "university" VALUES (351,'Tulane University',352,NULL);
INSERT INTO "university" VALUES (352,'University of Florence',354,NULL);
INSERT INTO "university" VALUES (353,'University of South Carolina',355,NULL);
INSERT INTO "university" VALUES (354,'University of Oklahoma',356,NULL);
INSERT INTO "university" VALUES (355,'York University',357,NULL);
INSERT INTO "university" VALUES (356,'Louisiana State University',358,NULL);
INSERT INTO "university" VALUES (357,'University of Lausanne',360,NULL);
INSERT INTO "university" VALUES (358,'Royal Holloway, University of London',360,NULL);
INSERT INTO "university" VALUES (359,'University of Houston',360,NULL);
INSERT INTO "university" VALUES (360,'Lobachevsky University',363,NULL);
INSERT INTO "university" VALUES (361,'University of Manitoba',366,NULL);
INSERT INTO "university" VALUES (362,'University of Oulu',366,NULL);
INSERT INTO "university" VALUES (363,'University of Bordeaux',366,NULL);
INSERT INTO "university" VALUES (364,'Babes-Bolyai University',366,NULL);
INSERT INTO "university" VALUES (365,'University of New Mexico',366,NULL);
INSERT INTO "university" VALUES (366,'Medical University of Vienna',369,NULL);
INSERT INTO "university" VALUES (367,'Bielefeld University',369,NULL);
INSERT INTO "university" VALUES (368,'University of Antwerp',371,NULL);
INSERT INTO "university" VALUES (369,'Beijing Institute of Technology',372,NULL);
INSERT INTO "university" VALUES (370,'Masaryk University',372,NULL);
INSERT INTO "university" VALUES (371,'Laval University',375,NULL);
INSERT INTO "university" VALUES (372,'University of Zagreb',375,NULL);
INSERT INTO "university" VALUES (373,'Rensselaer Polytechnic Institute',375,NULL);
INSERT INTO "university" VALUES (374,'University of Turin',377,NULL);
INSERT INTO "university" VALUES (375,'Umea University',377,NULL);
INSERT INTO "university" VALUES (376,'RANEPA, The Russian Presidential Academy of National Economy and Public Administration',379,NULL);
INSERT INTO "university" VALUES (377,'RUDN University',380,NULL);
INSERT INTO "university" VALUES (378,'George Mason University',380,NULL);
INSERT INTO "university" VALUES (379,'Brno University of Technology',382,NULL);
INSERT INTO "university" VALUES (380,'University of Canterbury',383,NULL);
INSERT INTO "university" VALUES (381,'Renmin University of China',385,NULL);
INSERT INTO "university" VALUES (382,'Brunel University',385,NULL);
INSERT INTO "university" VALUES (383,'University of Westminster',385,NULL);
INSERT INTO "university" VALUES (384,'Iran University of Science & Technology',387,NULL);
INSERT INTO "university" VALUES (385,'Monterrey Institute of Technology and Higher Education',387,NULL);
INSERT INTO "university" VALUES (386,'University of Aveiro',391,NULL);
INSERT INTO "university" VALUES (387,'Mendeleev University of Chemical Technology',391,NULL);
INSERT INTO "university" VALUES (388,'Goldsmiths College',391,NULL);
INSERT INTO "university" VALUES (389,'Texas Tech University',391,NULL);
INSERT INTO "university" VALUES (390,'Simon Fraser University',394,NULL);
INSERT INTO "university" VALUES (391,'Shanghai University',394,NULL);
INSERT INTO "university" VALUES (392,'University of Jyvaskyla',394,NULL);
INSERT INTO "university" VALUES (393,'Victoria University of Wellington',396,NULL);
INSERT INTO "university" VALUES (394,'University of Saskatchewan',397,NULL);
INSERT INTO "university" VALUES (395,'University of South Australia',398,NULL);
INSERT INTO "university" VALUES (396,'University of Tasmania',398,NULL);
INSERT INTO "university" VALUES (397,'Wake Forest University',400,NULL);
INSERT INTO "university" VALUES (398,'University of Western Sydney',401,NULL);
INSERT INTO "university" VALUES (399,'University de Lorraine',402,NULL);
INSERT INTO "university" VALUES (400,'University of Nebraska',402,NULL);
INSERT INTO "university" VALUES (401,'University of Qatar',404,NULL);
INSERT INTO "university" VALUES (402,'University of Turku',405,NULL);
INSERT INTO "university" VALUES (403,'University of the Ryukyus',406,NULL);
INSERT INTO "university" VALUES (404,'Saint-Petersburg State Electrotechnical University ``LETI``',407,NULL);
INSERT INTO "university" VALUES (405,'Heriot-Watt University',407,NULL);
INSERT INTO "university" VALUES (406,'Massey University',409,NULL);
INSERT INTO "university" VALUES (407,'University of KwaZulu Natal',409,NULL);
INSERT INTO "university" VALUES (408,'University of Bremen',413,NULL);
INSERT INTO "university" VALUES (409,'University of Trieste',413,NULL);
INSERT INTO "university" VALUES (410,'Tokai University',413,NULL);
INSERT INTO "university" VALUES (411,'University of Bucharest',413,NULL);
INSERT INTO "university" VALUES (412,'Russian State University for the Humanities',413,NULL);
INSERT INTO "university" VALUES (413,'Isfahan University of Technology',416,NULL);
INSERT INTO "university" VALUES (414,'Concordia University',417,NULL);
INSERT INTO "university" VALUES (415,'Xiamen University',418,NULL);
INSERT INTO "university" VALUES (416,'University of Nova de Lisboa',418,NULL);
INSERT INTO "university" VALUES (417,'Eotvos Lorand University',421,NULL);
INSERT INTO "university" VALUES (418,'Okayama University',421,NULL);
INSERT INTO "university" VALUES (419,'University of Stirling',421,NULL);
INSERT INTO "university" VALUES (420,'University of Innsbruck',423,NULL);
INSERT INTO "university" VALUES (421,'East China Normal University',424,NULL);
INSERT INTO "university" VALUES (422,'Moscow Aviation Institute',425,NULL);
INSERT INTO "university" VALUES (423,'University of Rome III',428,NULL);
INSERT INTO "university" VALUES (424,'Moscow Pedagogical State University',428,NULL);
INSERT INTO "university" VALUES (425,'Sheffield Hallam University',428,NULL);
INSERT INTO "university" VALUES (426,'University of East Anglia',428,NULL);
INSERT INTO "university" VALUES (427,'Oklahoma State University',428,NULL);
INSERT INTO "university" VALUES (428,'Shahid Beheshti University',432,NULL);
INSERT INTO "university" VALUES (429,'Novosibirsk State University of Economics and Management',432,NULL);
INSERT INTO "university" VALUES (430,'Florida International University',432,NULL);
INSERT INTO "university" VALUES (431,'La Trobe University',434,NULL);
INSERT INTO "university" VALUES (432,'Sichuan University',435,NULL);
INSERT INTO "university" VALUES (433,'University of Sofia',437,NULL);
INSERT INTO "university" VALUES (434,'University of Santiago de Compostela',437,NULL);
INSERT INTO "university" VALUES (435,'University of Plymouth',437,NULL);
INSERT INTO "university" VALUES (436,'Lehigh University',439,NULL);
INSERT INTO "university" VALUES (437,'The New School',439,NULL);
INSERT INTO "university" VALUES (438,'Dalian University of Technology',441,NULL);
INSERT INTO "university" VALUES (439,'Tokyo Metropolitan University',441,NULL);
INSERT INTO "university" VALUES (440,'University of Genoa',444,NULL);
INSERT INTO "university" VALUES (441,'Kent State University',444,NULL);
INSERT INTO "university" VALUES (442,'Northern Arizona University',444,NULL);
INSERT INTO "university" VALUES (443,'Birkbeck, University of London',446,NULL);
INSERT INTO "university" VALUES (444,'University of Alabama Birmingham',446,NULL);
INSERT INTO "university" VALUES (445,'James Cook University',451,NULL);
INSERT INTO "university" VALUES (446,'South China University of Technology',451,NULL);
INSERT INTO "university" VALUES (447,'Yokohama National University',451,NULL);
INSERT INTO "university" VALUES (448,'Auckland University of Technology',451,NULL);
INSERT INTO "university" VALUES (449,'University Politechica of Bucharest',451,NULL);
INSERT INTO "university" VALUES (450,'Chernivtsi National University',451,NULL);
INSERT INTO "university" VALUES (451,'San Diego State University',451,NULL);
INSERT INTO "university" VALUES (452,'University of Victoria',455,NULL);
INSERT INTO "university" VALUES (453,'Northwest University, Xi`an',456,NULL);
INSERT INTO "university" VALUES (454,'Jilin University',460,NULL);
INSERT INTO "university" VALUES (455,'University of Eastern Finland',460,NULL);
INSERT INTO "university" VALUES (456,'University of Limerick',460,NULL);
INSERT INTO "university" VALUES (457,'Kyung Hee University',460,NULL);
INSERT INTO "university" VALUES (458,'University of Peradeniya',460,NULL);
INSERT INTO "university" VALUES (459,'National Central University',460,NULL);
INSERT INTO "university" VALUES (460,'National Taiwan University of Science and Technology',460,NULL);
INSERT INTO "university" VALUES (461,'Beijing Jiaotong University',466,NULL);
INSERT INTO "university" VALUES (462,'Hong Kong Baptist University',466,NULL);
INSERT INTO "university" VALUES (463,'Sechenov University',466,NULL);
INSERT INTO "university" VALUES (464,'Karadeniz Technical University',466,NULL);
INSERT INTO "university" VALUES (465,'Chiang Mai University',466,NULL);
INSERT INTO "university" VALUES (466,'University of Texas at San Antonio',469,NULL);
INSERT INTO "university" VALUES (467,'Universite Libre de Bruxelles',470,NULL);
INSERT INTO "university" VALUES (468,'University of Ulm',471,NULL);
INSERT INTO "university" VALUES (469,'University of Salamanca',472,NULL);
INSERT INTO "university" VALUES (470,'Universita Cattolica del Sacro Cuore',473,NULL);
INSERT INTO "university" VALUES (471,'Swansea University',473,NULL);
INSERT INTO "university" VALUES (472,'Flinders University',475,NULL);
INSERT INTO "university" VALUES (473,'Federal University of Vicosa',475,NULL);
INSERT INTO "university" VALUES (474,'William & Mary',477,NULL);
INSERT INTO "university" VALUES (475,'American University in Cairo',478,NULL);
INSERT INTO "university" VALUES (476,'University of Johannesburg',478,NULL);
INSERT INTO "university" VALUES (477,'National Taipei University',480,NULL);
INSERT INTO "university" VALUES (478,'University of Canberra',483,NULL);
INSERT INTO "university" VALUES (479,'University College Cork',483,NULL);
INSERT INTO "university" VALUES (480,'Bar-Ilan University',483,NULL);
INSERT INTO "university" VALUES (481,'Comenius University in Bratislava',483,NULL);
INSERT INTO "university" VALUES (482,'Manchester Metropolitan University',485,NULL);
INSERT INTO "university" VALUES (483,'Swinburne University of Technology',489,NULL);
INSERT INTO "university" VALUES (484,'Osaka City University',489,NULL);
INSERT INTO "university" VALUES (485,'European University at St. Petersburg',489,NULL);
INSERT INTO "university" VALUES (486,'University of Zaragoza',489,NULL);
INSERT INTO "university" VALUES (487,'Coventry University',489,NULL);
INSERT INTO "university" VALUES (488,'St George`s University of London',489,NULL);
INSERT INTO "university" VALUES (489,'University of Texas at Arlington',489,NULL);
INSERT INTO "university" VALUES (490,'Samara University',493,NULL);
INSERT INTO "university" VALUES (491,'Saratov State University',493,NULL);
INSERT INTO "university" VALUES (492,'Belarusian State University',498,NULL);
INSERT INTO "university" VALUES (493,'Gifu University',498,NULL);
INSERT INTO "university" VALUES (494,'Universiti Teknologi Petronas',498,NULL);
INSERT INTO "university" VALUES (495,'University of St. Gallen',498,NULL);
INSERT INTO "university" VALUES (496,'Kasetsart University',498,NULL);
INSERT INTO "university" VALUES (497,'Yeditepe University',498,NULL);
INSERT INTO "university" VALUES (498,'Makerere University',498,NULL);
INSERT INTO "university" VALUES (499,'Harbin Engineering University',502,NULL);
INSERT INTO "university" VALUES (500,'Nankai University',503,NULL);
INSERT INTO "university" VALUES (501,'Lappeenranta University of Technology',503,NULL);
INSERT INTO "university" VALUES (502,'Manipal Academy of Higher Education',509,NULL);
INSERT INTO "university" VALUES (503,'University of Hyderabad',509,NULL);
INSERT INTO "university" VALUES (504,'University of Palermo',509,NULL);
INSERT INTO "university" VALUES (505,'Chiba University',509,NULL);
INSERT INTO "university" VALUES (506,'Far Eastern Federal University',509,NULL);
INSERT INTO "university" VALUES (507,'Irkutsk State University',509,NULL);
INSERT INTO "university" VALUES (508,'University of Hull',509,NULL);
INSERT INTO "university" VALUES (509,'American University',509,NULL);
INSERT INTO "university" VALUES (510,'Aberystwyth University',513,NULL);
INSERT INTO "university" VALUES (511,'Miami University',513,NULL);
INSERT INTO "university" VALUES (512,'Fluminense Federal University',517,NULL);
INSERT INTO "university" VALUES (513,'Jiangnan University',517,NULL);
INSERT INTO "university" VALUES (514,'Kumamoto University',517,NULL);
INSERT INTO "university" VALUES (515,'University of Arkansas',517,NULL);
INSERT INTO "university" VALUES (516,'Ain Shams University',519,NULL);
INSERT INTO "university" VALUES (517,'National Chung Hsing University',519,NULL);
INSERT INTO "university" VALUES (518,'China Medical University (Taiwan)',524,NULL);
INSERT INTO "university" VALUES (519,'Riga Technical University',524,NULL);
INSERT INTO "university" VALUES (520,'Orel State University',524,NULL);
INSERT INTO "university" VALUES (521,'Tomsk State University of Control Systems and Radioelectronics (TUSUR University)',524,NULL);
INSERT INTO "university" VALUES (522,'National Sun Yat-Sen University',524,NULL);
INSERT INTO "university" VALUES (523,'King Mongkut`s University of Technology Thonburi',524,NULL);
INSERT INTO "university" VALUES (524,'K. N. Toosi University of Technology',529,NULL);
INSERT INTO "university" VALUES (525,'University of Baghdad',529,NULL);
INSERT INTO "university" VALUES (526,'Covenant University',529,NULL);
INSERT INTO "university" VALUES (527,'University of Alaska',529,NULL);
INSERT INTO "university" VALUES (528,'Worcester Polytechnic Institute',529,NULL);
INSERT INTO "university" VALUES (529,'Claude Bernard University Lyon 1',532,NULL);
INSERT INTO "university" VALUES (530,'Ufa State Aviation Technical University',532,NULL);
INSERT INTO "university" VALUES (531,'Palacky University of Olomouc',534,NULL);
INSERT INTO "university" VALUES (532,'Aston University',534,NULL);
INSERT INTO "university" VALUES (533,'Alexandria University',536,NULL);
INSERT INTO "university" VALUES (534,'University of Isfahan',537,NULL);
INSERT INTO "university" VALUES (535,'Herzen University',539,NULL);
INSERT INTO "university" VALUES (536,'Thammasat University',539,NULL);
INSERT INTO "university" VALUES (537,'University of Vermont',539,NULL);
INSERT INTO "university" VALUES (538,'Australian Catholic University',543,NULL);
INSERT INTO "university" VALUES (539,'L.N. Gumilyov Eurasian National University',543,NULL);
INSERT INTO "university" VALUES (540,'South Ural State University',543,NULL);
INSERT INTO "university" VALUES (541,'University of the Basque Country',543,NULL);
INSERT INTO "university" VALUES (542,'University of Ulster',543,NULL);
INSERT INTO "university" VALUES (543,'University of New Brunswick',549,NULL);
INSERT INTO "university" VALUES (544,'Beijing University of Chemical Technology',549,NULL);
INSERT INTO "university" VALUES (545,'Northwestern Polytechnical University',549,NULL);
INSERT INTO "university" VALUES (546,'Shandong University',549,NULL);
INSERT INTO "university" VALUES (547,'Shenzhen University',549,NULL);
INSERT INTO "university" VALUES (548,'Gwangju Institute of Science and Technology',549,NULL);
INSERT INTO "university" VALUES (549,'State University of New York, Binghamton',549,NULL);
INSERT INTO "university" VALUES (550,'Vilnius University',553,NULL);
INSERT INTO "university" VALUES (551,'Universidade Federal do Ceara',557,NULL);
INSERT INTO "university" VALUES (552,'University of Szeged',557,NULL);
INSERT INTO "university" VALUES (553,'Sogang University',557,NULL);
INSERT INTO "university" VALUES (554,'University of Zilina',557,NULL);
INSERT INTO "university" VALUES (555,'Northumbria University',557,NULL);
INSERT INTO "university" VALUES (556,'National Technical University Kharkiv Polytechnic Institute',557,NULL);
INSERT INTO "university" VALUES (557,'University of Yamanashi',560,NULL);
INSERT INTO "university" VALUES (558,'West Virginia University',560,NULL);
INSERT INTO "university" VALUES (559,'Amity University',563,NULL);
INSERT INTO "university" VALUES (560,'Dublin City University',563,NULL);
INSERT INTO "university" VALUES (561,'Universidad de Guadalajara',563,NULL);
INSERT INTO "university" VALUES (562,'Charles Darwin University',570,NULL);
INSERT INTO "university" VALUES (563,'Pontificia Universidade Catolica do Rio Grande do Sul',570,NULL);
INSERT INTO "university" VALUES (564,'Northeastern University (China)',570,NULL);
INSERT INTO "university" VALUES (565,'IMT Mines Albi-Carmaux',570,NULL);
INSERT INTO "university" VALUES (566,'Jamia Millia Islamia',570,NULL);
INSERT INTO "university" VALUES (567,'Kyushu Institute of Technology',570,NULL);
INSERT INTO "university" VALUES (568,'Metropolitan Autonomous University',570,NULL);
INSERT INTO "university" VALUES (569,'Chonnam National University',570,NULL);
INSERT INTO "university" VALUES (570,'Plekhanov Russian University of Economics',570,NULL);
INSERT INTO "university" VALUES (571,'Eskisehir Osmangazi University',570,NULL);
INSERT INTO "university" VALUES (572,'American University of Sharjah',570,NULL);
INSERT INTO "university" VALUES (573,'China University of Mining & Technology',577,NULL);
INSERT INTO "university" VALUES (574,'Dublin Institute of Technology',577,NULL);
INSERT INTO "university" VALUES (575,'University of Salerno',577,NULL);
INSERT INTO "university" VALUES (576,'Ege University',579,NULL);
INSERT INTO "university" VALUES (577,'University of Southern Queensland',580,NULL);
INSERT INTO "university" VALUES (578,'Beijing University of Technology',580,NULL);
INSERT INTO "university" VALUES (579,'University of South Africa',584,NULL);
INSERT INTO "university" VALUES (580,'Brandeis University',584,NULL);
INSERT INTO "university" VALUES (581,'University of Wyoming',584,NULL);
INSERT INTO "university" VALUES (582,'China Pharmaceutical University',591,NULL);
INSERT INTO "university" VALUES (583,'Swiss Montreux Business School',591,NULL);
INSERT INTO "university" VALUES (584,'Vellore Institute of Technology',591,NULL);
INSERT INTO "university" VALUES (585,'Perm State University',591,NULL);
INSERT INTO "university" VALUES (586,'Samara State Technical University',591,NULL);
INSERT INTO "university" VALUES (587,'National Taipei University of Technology',591,NULL);
INSERT INTO "university" VALUES (588,'University of Bradford',591,NULL);
INSERT INTO "university" VALUES (589,'Mississippi State University',591,NULL);
INSERT INTO "university" VALUES (590,'Portland State University',591,NULL);
INSERT INTO "university" VALUES (591,'University of Montana',591,NULL);
INSERT INTO "university" VALUES (592,'University of Quebec at Chicoutimi',600,NULL);
INSERT INTO "university" VALUES (593,'Tianjin University',600,NULL);
INSERT INTO "university" VALUES (594,'IMT Atlantique',600,NULL);
INSERT INTO "university" VALUES (595,'Ca`Foscari University of Venice',600,NULL);
INSERT INTO "university" VALUES (596,'University of Macau',600,NULL);
INSERT INTO "university" VALUES (597,'King Mongkut`s Institute of Technology Ladkrabang',600,NULL);
INSERT INTO "university" VALUES (598,'New Mexico State University',600,NULL);
INSERT INTO "university" VALUES (599,'University of Nebraska Omaha',600,NULL);
INSERT INTO "university" VALUES (600,'Kanazawa University',604,NULL);
INSERT INTO "university" VALUES (601,'Chongqing University',609,NULL);
INSERT INTO "university" VALUES (602,'University of Patras',609,NULL);
INSERT INTO "university" VALUES (603,'University of Waikato',609,NULL);
INSERT INTO "university" VALUES (604,'Ewha Womans University',609,NULL);
INSERT INTO "university" VALUES (605,'Perm National Research Polytechnic University',609,NULL);
INSERT INTO "university" VALUES (606,'University of Alcala',609,NULL);
INSERT INTO "university" VALUES (607,'University of Vigo',609,NULL);
INSERT INTO "university" VALUES (608,'Prince of Songkla University',609,NULL);
INSERT INTO "university" VALUES (609,'Western Michigan University',609,NULL);
INSERT INTO "university" VALUES (610,'Indian Institute of Science Education and Research, Pune',615,NULL);
INSERT INTO "university" VALUES (611,'Marmara University',615,NULL);
INSERT INTO "university" VALUES (612,'Liverpool John Moores University',615,NULL);
INSERT INTO "university" VALUES (613,'Pontificial Catholic University of Valparaiso',624,NULL);
INSERT INTO "university" VALUES (614,'Chang`an University',624,NULL);
INSERT INTO "university" VALUES (615,'Osaka Prefecture University',624,NULL);
INSERT INTO "university" VALUES (616,'Universiti Teknologi MARA',624,NULL);
INSERT INTO "university" VALUES (617,'Autonomous University of Mexico State',624,NULL);
INSERT INTO "university" VALUES (618,'ISCTE - Instituto Universitario de Lisboa',624,NULL);
INSERT INTO "university" VALUES (619,'Kyungpook National University',624,NULL);
INSERT INTO "university" VALUES (620,'Moscow State University of Civil Engineering',624,NULL);
INSERT INTO "university" VALUES (621,'National Research University of Electronic Technology (MIET)',624,NULL);
INSERT INTO "university" VALUES (622,'Omsk State Technical University',624,NULL);
INSERT INTO "university" VALUES (623,'Russian State Agrarian University',624,NULL);
INSERT INTO "university" VALUES (624,'USI - Universita della Svizzera italiana',624,NULL);
INSERT INTO "university" VALUES (625,'Chang Gung University',624,NULL);
INSERT INTO "university" VALUES (626,'Khalifa University',624,NULL);
INSERT INTO "university" VALUES (627,'University of Tromso',631,NULL);
INSERT INTO "university" VALUES (628,'Murdoch University',634,NULL);
INSERT INTO "university" VALUES (629,'University of Electronic Science and Technology of China',634,NULL);
INSERT INTO "university" VALUES (630,'Siberian Federal University',634,NULL);
INSERT INTO "university" VALUES (631,'Voronezh State University',634,NULL);
INSERT INTO "university" VALUES (632,'Edith Cowan University',642,NULL);
INSERT INTO "university" VALUES (633,'East China University of Science and Technology',642,NULL);
INSERT INTO "university" VALUES (634,'Hunan University',642,NULL);
INSERT INTO "university" VALUES (635,'Nanjing University of Science & Technology',642,NULL);
INSERT INTO "university" VALUES (636,'Wuhan University of Science & Technology',642,NULL);
INSERT INTO "university" VALUES (637,'Jeonbuk National University',642,NULL);
INSERT INTO "university" VALUES (638,'Immanuel Kant Baltic Federal University',642,NULL);
INSERT INTO "university" VALUES (639,'Glasgow Caledonian University',642,NULL);
INSERT INTO "university" VALUES (640,'Keele University',642,NULL);
INSERT INTO "university" VALUES (641,'Middlesex University',642,NULL);
INSERT INTO "university" VALUES (642,'Creighton University',642,NULL);
INSERT INTO "university" VALUES (643,'Florida Atlantic University',642,NULL);
INSERT INTO "university" VALUES (644,'Texas Christian University',642,NULL);
INSERT INTO "university" VALUES (645,'Yildiz Technical University',649,NULL);
INSERT INTO "university" VALUES (646,'Universite Paris Cite',650,NULL);
INSERT INTO "university" VALUES (647,'University of Ferrara',652,NULL);
INSERT INTO "university" VALUES (648,'Kazan National Research Technical University named after A.N. Tupolev',652,NULL);
INSERT INTO "university" VALUES (649,'University of Huddersfield',652,NULL);
INSERT INTO "university" VALUES (650,'Nanjing University of Aeronautics & Astronautics',659,NULL);
INSERT INTO "university" VALUES (651,'Soochow University (China)',659,NULL);
INSERT INTO "university" VALUES (652,'Wuhan University of Technology',659,NULL);
INSERT INTO "university" VALUES (653,'University of Crete',659,NULL);
INSERT INTO "university" VALUES (654,'University of Iceland',659,NULL);
INSERT INTO "university" VALUES (655,'Fujita Health University',659,NULL);
INSERT INTO "university" VALUES (656,'Omsk State University',659,NULL);
INSERT INTO "university" VALUES (657,'Reshetnev Siberian State University of Science and Technology',659,NULL);
INSERT INTO "university" VALUES (658,'National Chung Cheng University',659,NULL);
INSERT INTO "university" VALUES (659,'Ataturk University',659,NULL);
INSERT INTO "university" VALUES (660,'Beijing Forestry University',672,NULL);
INSERT INTO "university" VALUES (661,'University of Bari',672,NULL);
INSERT INTO "university" VALUES (662,'University of Brescia',672,NULL);
INSERT INTO "university" VALUES (663,'Juntendo University',672,NULL);
INSERT INTO "university" VALUES (664,'Belgorod State Technological University',672,NULL);
INSERT INTO "university" VALUES (665,'Kemerovo State University',672,NULL);
INSERT INTO "university" VALUES (666,'Tomsk State Pedagogical University',672,NULL);
INSERT INTO "university" VALUES (667,'University of Rovira i Virgili',672,NULL);
INSERT INTO "university" VALUES (668,'Leeds Beckett University',672,NULL);
INSERT INTO "university" VALUES (669,'London Metropolitan University',672,NULL);
INSERT INTO "university" VALUES (670,'University of Central Lancashire',672,NULL);
INSERT INTO "university" VALUES (671,'Florida Institute of Technology',672,NULL);
INSERT INTO "university" VALUES (672,'Marquette University',672,NULL);
INSERT INTO "university" VALUES (673,'Old Dominion University',672,NULL);
INSERT INTO "university" VALUES (674,'University of Idaho',672,NULL);
INSERT INTO "university" VALUES (675,'University of Nebraska Medical Center',672,NULL);
INSERT INTO "university" VALUES (676,'University of Sherbrooke',680,NULL);
INSERT INTO "university" VALUES (677,'Baku State University',683,NULL);
INSERT INTO "university" VALUES (678,'University of Tabriz',683,NULL);
INSERT INTO "university" VALUES (679,'Kuwait University',683,NULL);
INSERT INTO "university" VALUES (680,'New Economic School (NES)',683,NULL);
INSERT INTO "university" VALUES (681,'Universidad Pontificia Bolivariana de Medellin-Colombia',685,NULL);
INSERT INTO "university" VALUES (682,'South Ukrainian National Pedagogical University named after K.D. Ushynsky',685,NULL);
INSERT INTO "university" VALUES (683,'Federation University Australia',700,NULL);
INSERT INTO "university" VALUES (684,'Hangzhou Dianzi University',700,NULL);
INSERT INTO "university" VALUES (685,'Jinan University',700,NULL);
INSERT INTO "university" VALUES (686,'Northeast Normal University (China)',700,NULL);
INSERT INTO "university" VALUES (687,'Shanghai University of Traditional Chinese Medicine',700,NULL);
INSERT INTO "university" VALUES (688,'Xiangtan University',700,NULL);
INSERT INTO "university" VALUES (689,'University of West Bohemia',700,NULL);
INSERT INTO "university" VALUES (690,'Amrita Vishwa Vidyapeetham University',700,NULL);
INSERT INTO "university" VALUES (691,'Indian Institute of Technology (Indian School of Mines)',700,NULL);
INSERT INTO "university" VALUES (692,'Babol Noshirvani University of Technology',700,NULL);
INSERT INTO "university" VALUES (693,'Yamagata University',700,NULL);
INSERT INTO "university" VALUES (694,'Inha University',700,NULL);
INSERT INTO "university" VALUES (695,'University of Science and Technology (UST)',700,NULL);
INSERT INTO "university" VALUES (696,'Bashkir State University',700,NULL);
INSERT INTO "university" VALUES (697,'Tambov State Technical University',700,NULL);
INSERT INTO "university" VALUES (698,'Ufa State Petroleum Technological University (USPTU)',700,NULL);
INSERT INTO "university" VALUES (699,'Vladimir State University named after Alexander and Nikolay Stoletovs',700,NULL);
INSERT INTO "university" VALUES (700,'Khon Kaen University',700,NULL);
INSERT INTO "university" VALUES (701,'King Mongkut`s University of Technology North Bangkok',700,NULL);
INSERT INTO "university" VALUES (702,'Suleyman Demirel University',700,NULL);
INSERT INTO "university" VALUES (703,'University of Portsmouth',700,NULL);
INSERT INTO "university" VALUES (704,'Kharkiv National University of Radio Electronics',700,NULL);
INSERT INTO "university" VALUES (705,'Kyiv National Economic University',700,NULL);
INSERT INTO "university" VALUES (706,'Poltava National Technical Yuri Kondratyuk University',700,NULL);
INSERT INTO "university" VALUES (707,'Hofstra University',700,NULL);
INSERT INTO "university" VALUES (708,'Oakland University',700,NULL);
INSERT INTO "university" VALUES (709,'University of Memphis',700,NULL);
INSERT INTO "university" VALUES (710,'Al-Farabi Kazakh National University',714,NULL);
INSERT INTO "university" VALUES (711,'National University of Uzbekistan named after Mirzo Ulugbek',714,NULL);
INSERT INTO "university" VALUES (712,'University of Debrecen',722,NULL);
INSERT INTO "university" VALUES (713,'University of Basrah',722,NULL);
INSERT INTO "university" VALUES (714,'Kindai University',722,NULL);
INSERT INTO "university" VALUES (715,'University of Electro-Communications',722,NULL);
INSERT INTO "university" VALUES (716,'Lebanese American University',722,NULL);
INSERT INTO "university" VALUES (717,'University of Puerto Rico',722,NULL);
INSERT INTO "university" VALUES (718,'Ivane Javakhishvili Tbilisi State University',722,NULL);
INSERT INTO "university" VALUES (719,'Gyeongsang National University',722,NULL);
INSERT INTO "university" VALUES (720,'Saint Petersburg State University of Architecture and Civil Engineering',722,NULL);
INSERT INTO "university" VALUES (721,'University of Maribor',722,NULL);
INSERT INTO "university" VALUES (722,'Kaohsiung Medical University',722,NULL);
INSERT INTO "university" VALUES (723,'Erciyes University',722,NULL);
INSERT INTO "university" VALUES (724,'Stevens Institute of Technology',722,NULL);
INSERT INTO "university" VALUES (725,'Jiangsu Normal University',732,NULL);
INSERT INTO "university" VALUES (726,'Xidian University',732,NULL);
INSERT INTO "university" VALUES (727,'University of Rijeka',732,NULL);
INSERT INTO "university" VALUES (728,'Kookmin University',732,NULL);
INSERT INTO "university" VALUES (729,'University of Valladolid',732,NULL);
INSERT INTO "university" VALUES (730,'East Carolina University',732,NULL);
INSERT INTO "university" VALUES (731,'Sejong University',736,NULL);
INSERT INTO "university" VALUES (732,'University of the West of England',736,NULL);
INSERT INTO "university" VALUES (733,'University of Salento',738,NULL);
INSERT INTO "university" VALUES (734,'Zhejiang University of Technology',746,NULL);
INSERT INTO "university" VALUES (735,'Beni-Suef University',746,NULL);
INSERT INTO "university" VALUES (736,'Athens University of Economics and Business',746,NULL);
INSERT INTO "university" VALUES (737,'Mustansiriyah University',746,NULL);
INSERT INTO "university" VALUES (738,'Yokohama City University',746,NULL);
INSERT INTO "university" VALUES (739,'Altai State University',746,NULL);
INSERT INTO "university" VALUES (740,'Gubkin Russian State University of Oil and Gas',746,NULL);
INSERT INTO "university" VALUES (741,'Maikop State Technological University',746,NULL);
INSERT INTO "university" VALUES (742,'Pacific National University',746,NULL);
INSERT INTO "university" VALUES (743,'Kosygin University',746,NULL);
INSERT INTO "university" VALUES (744,'Vyatka State University',746,NULL);
INSERT INTO "university" VALUES (745,'TOBB University of Economics and Technology',746,NULL);
INSERT INTO "university" VALUES (746,'University of Hertfordshire',746,NULL);
INSERT INTO "university" VALUES (747,'New Jersey Institute of Technology (NJIT)',746,NULL);
INSERT INTO "university" VALUES (748,'North Dakota State University',746,NULL);
INSERT INTO "university" VALUES (749,'Universidade Federal de Lavras',756,NULL);
INSERT INTO "university" VALUES (750,'Southern Medical University - China',756,NULL);
INSERT INTO "university" VALUES (751,'Universiti Malaysia Pahang',756,NULL);
INSERT INTO "university" VALUES (752,'University of the Algarve',756,NULL);
INSERT INTO "university" VALUES (753,'Gebze Technical University',756,NULL);
INSERT INTO "university" VALUES (754,'Azerbaijan Technical University',759,NULL);
INSERT INTO "university" VALUES (755,'Austral University (Argentina)',779,NULL);
INSERT INTO "university" VALUES (756,'Nanjing Medical University',779,NULL);
INSERT INTO "university" VALUES (757,'Nanjing University of Technology',779,NULL);
INSERT INTO "university" VALUES (758,'Southwest Jiaotong University',779,NULL);
INSERT INTO "university" VALUES (759,'University of South China',779,NULL);
INSERT INTO "university" VALUES (760,'Yanshan University',779,NULL);
INSERT INTO "university" VALUES (761,'Tanta University',779,NULL);
INSERT INTO "university" VALUES (762,'Al-Mustaqbal University College',779,NULL);
INSERT INTO "university" VALUES (763,'Middle Technical University',779,NULL);
INSERT INTO "university" VALUES (764,'University of Kufa',779,NULL);
INSERT INTO "university" VALUES (765,'Interdisciplinary Center Herzliya (IDC Herzliya)',779,NULL);
INSERT INTO "university" VALUES (766,'Toyohashi University of Technology',779,NULL);
INSERT INTO "university" VALUES (767,'Suleyman Demirel University - Kazakhstan',779,NULL);
INSERT INTO "university" VALUES (768,'Macau University of Science and Technology',779,NULL);
INSERT INTO "university" VALUES (769,'Hallym University',779,NULL);
INSERT INTO "university" VALUES (770,'Yeungnam University',779,NULL);
INSERT INTO "university" VALUES (771,'Dunarea de Jos University of Galati',779,NULL);
INSERT INTO "university" VALUES (772,'Belgorod National Research University',779,NULL);
INSERT INTO "university" VALUES (773,'Lipetsk State Technical University',779,NULL);
INSERT INTO "university" VALUES (774,'Togliatti State University',779,NULL);
INSERT INTO "university" VALUES (775,'Tyumen State University',779,NULL);
INSERT INTO "university" VALUES (776,'Volgograd State Technical University',779,NULL);
INSERT INTO "university" VALUES (777,'Volgograd State University',779,NULL);
INSERT INTO "university" VALUES (778,'Chaoyang University of Technology',779,NULL);
INSERT INTO "university" VALUES (779,'Chung Shan Medical University',779,NULL);
INSERT INTO "university" VALUES (780,'Fu Jen Catholic University',779,NULL);
INSERT INTO "university" VALUES (781,'I-Shou University',779,NULL);
INSERT INTO "university" VALUES (782,'Ming Chuan University',779,NULL);
INSERT INTO "university" VALUES (783,'Tamkang University',779,NULL);
INSERT INTO "university" VALUES (784,'Suranaree University of Technology',779,NULL);
INSERT INTO "university" VALUES (785,'Universite de Carthage',779,NULL);
INSERT INTO "university" VALUES (786,'Universite de Tunis El Manar',779,NULL);
INSERT INTO "university" VALUES (787,'Atilim University',779,NULL);
INSERT INTO "university" VALUES (788,'De Montfort University',779,NULL);
INSERT INTO "university" VALUES (789,'University of Greenwich',779,NULL);
INSERT INTO "university" VALUES (790,'Odessa National Academy of Food Technologies',779,NULL);
INSERT INTO "university" VALUES (791,'Ostrogradskiy National University of Kremenchuk',779,NULL);
INSERT INTO "university" VALUES (792,'California State University, Long Beach',779,NULL);
INSERT INTO "university" VALUES (793,'Technical University of Sofia',802,NULL);
INSERT INTO "university" VALUES (794,'Universite de Paris-Nord - Paris 13',802,NULL);
INSERT INTO "university" VALUES (795,'Cochin University of Science and Technology',802,NULL);
INSERT INTO "university" VALUES (796,'University of Tuscia',802,NULL);
INSERT INTO "university" VALUES (797,'Transilvania University of Brasov',802,NULL);
INSERT INTO "university" VALUES (798,'Kozma Minin Nizhny Novgorod State Pedagogical University',802,NULL);
INSERT INTO "university" VALUES (799,'Rey Juan Carlos University',802,NULL);
INSERT INTO "university" VALUES (800,'National University of Ostroh Academy',802,NULL);
INSERT INTO "university" VALUES (801,'West University of Timisoara',806,NULL);
INSERT INTO "university" VALUES (802,'Nanjing Normal University',811,NULL);
INSERT INTO "university" VALUES (803,'Universite Cote d`Azur (ComUE)',811,NULL);
INSERT INTO "university" VALUES (804,'Semmelweis University',811,NULL);
INSERT INTO "university" VALUES (805,'Devi Ahilya Vishwavidyalaya',811,NULL);
INSERT INTO "university" VALUES (806,'Kashan University',811,NULL);
INSERT INTO "university" VALUES (807,'Salahaddin University',811,NULL);
INSERT INTO "university" VALUES (808,'University of Malaysia Perlis',811,NULL);
INSERT INTO "university" VALUES (809,'Konkuk University',811,NULL);
INSERT INTO "university" VALUES (810,'Kazan National Research Technological University',811,NULL);
INSERT INTO "university" VALUES (811,'Zhejiang Normal University',820,NULL);
INSERT INTO "university" VALUES (812,'Shibaura Institute of Technology',820,NULL);
INSERT INTO "university" VALUES (813,'Tottori University',820,NULL);
INSERT INTO "university" VALUES (814,'Don State Technical University',820,NULL);
INSERT INTO "university" VALUES (815,'Southwest State University',820,NULL);
INSERT INTO "university" VALUES (816,'Tomsk State University of Architecture and Building',820,NULL);
INSERT INTO "university" VALUES (817,'National Formosa University',820,NULL);
INSERT INTO "university" VALUES (818,'National Yunlin University of Science and Technology',820,NULL);
INSERT INTO "university" VALUES (819,'Southern Cross University',835,NULL);
INSERT INTO "university" VALUES (820,'Shantou University',835,NULL);
INSERT INTO "university" VALUES (821,'South China Normal University',835,NULL);
INSERT INTO "university" VALUES (822,'Kafrelsheikh University',835,NULL);
INSERT INTO "university" VALUES (823,'Allameh Tabataba`i University',835,NULL);
INSERT INTO "university" VALUES (824,'Alzahra University',835,NULL);
INSERT INTO "university" VALUES (825,'University of Kurdistan',835,NULL);
INSERT INTO "university" VALUES (826,'Al-Kitab University',835,NULL);
INSERT INTO "university" VALUES (827,'University of Babylon',835,NULL);
INSERT INTO "university" VALUES (828,'Maynooth University',835,NULL);
INSERT INTO "university" VALUES (829,'Al-Ahliyya Amman University',835,NULL);
INSERT INTO "university" VALUES (830,'Chonbuk National University',835,NULL);
INSERT INTO "university" VALUES (831,'Grigore T. Popa University of Medicine and Pharmacy',835,NULL);
INSERT INTO "university" VALUES (832,'North Caucasus Federal University',835,NULL);
INSERT INTO "university" VALUES (833,'North-Eastern Federal University',835,NULL);
INSERT INTO "university" VALUES (834,'Rostov State University of Economics',835,NULL);
INSERT INTO "university" VALUES (835,'Ryazan State Medical University',835,NULL);
INSERT INTO "university" VALUES (836,'Tver State University',835,NULL);
INSERT INTO "university" VALUES (837,'National Changhua University of Education',835,NULL);
INSERT INTO "university" VALUES (838,'Tunghai University',835,NULL);
INSERT INTO "university" VALUES (839,'Universite de la Manouba',835,NULL);
INSERT INTO "university" VALUES (840,'Sumy State University',835,NULL);
INSERT INTO "university" VALUES (841,'Azerbaijan State University of Economics (UNEC)',943,NULL);
INSERT INTO "university" VALUES (842,'Azerbaijan University of Architecture and Construction',943,NULL);
INSERT INTO "university" VALUES (843,'Western Caspian University',943,NULL);
INSERT INTO "university" VALUES (844,'Gomel State Medical University',943,NULL);
INSERT INTO "university" VALUES (845,'National Institute of Higher Education',943,NULL);
INSERT INTO "university" VALUES (846,'University of Sarajevo',943,NULL);
INSERT INTO "university" VALUES (847,'A.C.Camargo Cancer Center',943,NULL);
INSERT INTO "university" VALUES (848,'Anhui Medical University',943,NULL);
INSERT INTO "university" VALUES (849,'Donghua University',943,NULL);
INSERT INTO "university" VALUES (850,'Guangdong University of Technology',943,NULL);
INSERT INTO "university" VALUES (851,'Guangzhou Medical University',943,NULL);
INSERT INTO "university" VALUES (852,'Guizhou University',943,NULL);
INSERT INTO "university" VALUES (853,'Hunan Normal University',943,NULL);
INSERT INTO "university" VALUES (854,'Jiangsu University',943,NULL);
INSERT INTO "university" VALUES (855,'Liaoning University',943,NULL);
INSERT INTO "university" VALUES (856,'Nanjing Agricultural University',943,NULL);
INSERT INTO "university" VALUES (857,'Ningbo University',943,NULL);
INSERT INTO "university" VALUES (858,'Qingdao University',943,NULL);
INSERT INTO "university" VALUES (859,'Shanghai Maritime University',943,NULL);
INSERT INTO "university" VALUES (860,'Southwest Petroleum University',943,NULL);
INSERT INTO "university" VALUES (861,'Taiyuan University of Technology',943,NULL);
INSERT INTO "university" VALUES (862,'Wenzhou University',943,NULL);
INSERT INTO "university" VALUES (863,'Yangzhou University',943,NULL);
INSERT INTO "university" VALUES (864,'University of Dubrovnik',943,NULL);
INSERT INTO "university" VALUES (865,'Prigo University',943,NULL);
INSERT INTO "university" VALUES (866,'University of Pardubice',943,NULL);
INSERT INTO "university" VALUES (867,'British University in Egypt',943,NULL);
INSERT INTO "university" VALUES (868,'Canadian International College',943,NULL);
INSERT INTO "university" VALUES (869,'Damietta University',943,NULL);
INSERT INTO "university" VALUES (870,'October 6 University (O6U)',943,NULL);
INSERT INTO "university" VALUES (871,'Eurecom (Grande Ecole)',943,NULL);
INSERT INTO "university" VALUES (872,'IMT MINES ALES',943,NULL);
INSERT INTO "university" VALUES (873,'Democritus University of Thrace',943,NULL);
INSERT INTO "university" VALUES (874,'University of Pecs',943,NULL);
INSERT INTO "university" VALUES (875,'University of Sopron',943,NULL);
INSERT INTO "university" VALUES (876,'Universitas Bakrie',943,NULL);
INSERT INTO "university" VALUES (877,'Kermanshah University of Technology',943,NULL);
INSERT INTO "university" VALUES (878,'University of Mazandaran',943,NULL);
INSERT INTO "university" VALUES (879,'Al-Amarah University College',943,NULL);
INSERT INTO "university" VALUES (880,'Al-Ayen University',943,NULL);
INSERT INTO "university" VALUES (881,'Al-Bayan University',943,NULL);
INSERT INTO "university" VALUES (882,'Al-Esraa University College',943,NULL);
INSERT INTO "university" VALUES (883,'Al-Farabi University College',943,NULL);
INSERT INTO "university" VALUES (884,'Al-Farahidi University College',943,NULL);
INSERT INTO "university" VALUES (885,'Al-Furat Al-Awsat Technical  University',943,NULL);
INSERT INTO "university" VALUES (886,'Al-Hikma University College',943,NULL);
INSERT INTO "university" VALUES (887,'Al-Imam University College',943,NULL);
INSERT INTO "university" VALUES (888,'Al-Iraqia University',943,NULL);
INSERT INTO "university" VALUES (889,'Al-Karkh University of Science',943,NULL);
INSERT INTO "university" VALUES (890,'Al-Kunooze University College',943,NULL);
INSERT INTO "university" VALUES (891,'Al-Kut University College',943,NULL);
INSERT INTO "university" VALUES (892,'Al-Maarif University College',943,NULL);
INSERT INTO "university" VALUES (893,'Al-Mansour University College',943,NULL);
INSERT INTO "university" VALUES (894,'Al-Muthanna University',943,NULL);
INSERT INTO "university" VALUES (895,'Al-Noor University College',943,NULL);
INSERT INTO "university" VALUES (896,'Al-Qasim green university Iraq',943,NULL);
INSERT INTO "university" VALUES (897,'Al-Toosi University College',943,NULL);
INSERT INTO "university" VALUES (898,'Al-Yarmouk University College',943,NULL);
INSERT INTO "university" VALUES (899,'Ashur University College',943,NULL);
INSERT INTO "university" VALUES (900,'Baghdad College Of Economic Sciences University',943,NULL);
INSERT INTO "university" VALUES (901,'Behalf of Basrah University College of Science and Technology',943,NULL);
INSERT INTO "university" VALUES (902,'Bilad Alrafidain University College',943,NULL);
INSERT INTO "university" VALUES (903,'Dijlah University College',943,NULL);
INSERT INTO "university" VALUES (904,'Hawler Medical University',943,NULL);
INSERT INTO "university" VALUES (905,'Imam Al-Kadhum College',943,NULL);
INSERT INTO "university" VALUES (906,'Imam Ja`afar Al-Sadiq University',943,NULL);
INSERT INTO "university" VALUES (907,'Iraq University College',943,NULL);
INSERT INTO "university" VALUES (908,'Islamic University in Najaf',943,NULL);
INSERT INTO "university" VALUES (909,'Jabir Ibn Hayyan Medical University',943,NULL);
INSERT INTO "university" VALUES (910,'Madenat Al-elem University College',943,NULL);
INSERT INTO "university" VALUES (911,'Mazaya University College',943,NULL);
INSERT INTO "university" VALUES (912,'National University for Science and Technology',943,NULL);
INSERT INTO "university" VALUES (913,'Ninevah University',943,NULL);
INSERT INTO "university" VALUES (914,'Northern Technical University',943,NULL);
INSERT INTO "university" VALUES (915,'Southern Technical University',943,NULL);
INSERT INTO "university" VALUES (916,'University College in Baghdad Iraq',943,NULL);
INSERT INTO "university" VALUES (917,'University of Ahl al-Bayt',943,NULL);
INSERT INTO "university" VALUES (918,'University of Al-Ameed',943,NULL);
INSERT INTO "university" VALUES (919,'University of Al-Hamdaniya',943,NULL);
INSERT INTO "university" VALUES (920,'University of Alkafeel',943,NULL);
INSERT INTO "university" VALUES (921,'University of AL-Qadisiyah',943,NULL);
INSERT INTO "university" VALUES (922,'University of Anbar',943,NULL);
INSERT INTO "university" VALUES (923,'University of Diyala',943,NULL);
INSERT INTO "university" VALUES (924,'University of Fallujah',943,NULL);
INSERT INTO "university" VALUES (925,'University of Information Technology and Communications',943,NULL);
INSERT INTO "university" VALUES (926,'University of Kerbala',943,NULL);
INSERT INTO "university" VALUES (927,'University of Kirkuk',943,NULL);
INSERT INTO "university" VALUES (928,'University of Misan',943,NULL);
INSERT INTO "university" VALUES (929,'University of Mosul',943,NULL);
INSERT INTO "university" VALUES (930,'University of Samarra',943,NULL);
INSERT INTO "university" VALUES (931,'University of Sumer',943,NULL);
INSERT INTO "university" VALUES (932,'University of Telafer',943,NULL);
INSERT INTO "university" VALUES (933,'University of Thi-Qar',943,NULL);
INSERT INTO "university" VALUES (934,'University of Tikrit',943,NULL);
INSERT INTO "university" VALUES (935,'University of Warith Alanbiyaa',943,NULL);
INSERT INTO "university" VALUES (936,'Uruk University',943,NULL);
INSERT INTO "university" VALUES (937,'D`Annunzio University',943,NULL);
INSERT INTO "university" VALUES (938,'University of Petra (UOP)',943,NULL);
INSERT INTO "university" VALUES (939,'EA Buketov Karaganda State University',943,NULL);
INSERT INTO "university" VALUES (940,'Karaganda University of Kaspotrebsoyuz',943,NULL);
INSERT INTO "university" VALUES (941,'Shakarim University',943,NULL);
INSERT INTO "university" VALUES (942,'Technical University of Moldova',943,NULL);
INSERT INTO "university" VALUES (943,'Mohammed V University',943,NULL);
INSERT INTO "university" VALUES (944,'Redeemer`s University',943,NULL);
INSERT INTO "university" VALUES (945,'European University Skopje',943,NULL);
INSERT INTO "university" VALUES (946,'Institute of Space Technology',943,NULL);
INSERT INTO "university" VALUES (947,'NED University of Engineering and Technology',943,NULL);
INSERT INTO "university" VALUES (948,'Arab American University (AAUP)',943,NULL);
INSERT INTO "university" VALUES (949,'Ajou University',943,NULL);
INSERT INTO "university" VALUES (950,'Chung-Ang University',943,NULL);
INSERT INTO "university" VALUES (951,'University of Ulsan',943,NULL);
INSERT INTO "university" VALUES (952,'``George Emil Palade`` University of Medicine, Pharmacy, Science, and Technology  of Targu Mures',943,NULL);
INSERT INTO "university" VALUES (953,'Iuliu Hatieganu University of Medicine and Pharmacy Cluj-Napoca',943,NULL);
INSERT INTO "university" VALUES (954,'Lucian Blaga University of Sibiu',943,NULL);
INSERT INTO "university" VALUES (955,'Technical University of Cluj-Napoca',943,NULL);
INSERT INTO "university" VALUES (956,'University of Agricultural Sciences and Veterinary Medicine of Cluj-Napoca',943,NULL);
INSERT INTO "university" VALUES (957,'Almazov National Medical Research Centre',943,NULL);
INSERT INTO "university" VALUES (958,'Bashkirian State Medical University',943,NULL);
INSERT INTO "university" VALUES (959,'Chelyabinsk State University',943,NULL);
INSERT INTO "university" VALUES (960,'Emperor Alexander I St.Petersburg State Transport University',943,NULL);
INSERT INTO "university" VALUES (961,'Innopolis University',943,NULL);
INSERT INTO "university" VALUES (962,'Irkutsk National Research Technical University',943,NULL);
INSERT INTO "university" VALUES (963,'Kabardino-Balkarian State University',943,NULL);
INSERT INTO "university" VALUES (964,'Kirov Saint Petersburg State Lesotechnic University',943,NULL);
INSERT INTO "university" VALUES (965,'Kuban State Technological University',943,NULL);
INSERT INTO "university" VALUES (966,'Kursk State Medical University',943,NULL);
INSERT INTO "university" VALUES (967,'Magnitogorsk State Technical University',943,NULL);
INSERT INTO "university" VALUES (968,'Mari State University',943,NULL);
INSERT INTO "university" VALUES (969,'Mordovia State University',943,NULL);
INSERT INTO "university" VALUES (970,'Moscow State Technology University Stankin',943,NULL);
INSERT INTO "university" VALUES (971,'Moscow State University of Food Production',943,NULL);
INSERT INTO "university" VALUES (972,'Murmansk Arctic State University',943,NULL);
INSERT INTO "university" VALUES (973,'Northern (Arctic) Federal University (NArFU)',943,NULL);
INSERT INTO "university" VALUES (974,'North-Western State Medical University named after I.I. Mechnikov',943,NULL);
INSERT INTO "university" VALUES (975,'Novgorod State University',943,NULL);
INSERT INTO "university" VALUES (976,'Omsk State Agrarian University',943,NULL);
INSERT INTO "university" VALUES (977,'Omsk State Pedagogical University',943,NULL);
INSERT INTO "university" VALUES (978,'Orel State Agrarian University',943,NULL);
INSERT INTO "university" VALUES (979,'Pirogov University',943,NULL);
INSERT INTO "university" VALUES (980,'Platov South-Russian State Polytechnic University',943,NULL);
INSERT INTO "university" VALUES (981,'Polzunov Altai State Technical University',943,NULL);
INSERT INTO "university" VALUES (982,'Russian New University',943,NULL);
INSERT INTO "university" VALUES (983,'Sergo Ordzhonikidze Russian State University for Geological Prospecting',943,NULL);
INSERT INTO "university" VALUES (984,'Siberian State Medical University',943,NULL);
INSERT INTO "university" VALUES (985,'Siberian State University of Water Transport',943,NULL);
INSERT INTO "university" VALUES (986,'Tver State Technical University',943,NULL);
INSERT INTO "university" VALUES (987,'Ulyanovsk State University',943,NULL);
INSERT INTO "university" VALUES (988,'Ural State University of Economics',943,NULL);
INSERT INTO "university" VALUES (989,'Voronezh Institute of High Technologies',943,NULL);
INSERT INTO "university" VALUES (990,'Voronezh State Technical University',943,NULL);
INSERT INTO "university" VALUES (991,'Taif University',943,NULL);
INSERT INTO "university" VALUES (992,'University of Nova Gorica',943,NULL);
INSERT INTO "university" VALUES (993,'ESIC Business and Marketing School',943,NULL);
INSERT INTO "university" VALUES (994,'IQS Universitat Ramon Llull',943,NULL);
INSERT INTO "university" VALUES (995,'University of Lucerne',943,NULL);
INSERT INTO "university" VALUES (996,'Asia University (Taiwan)',943,NULL);
INSERT INTO "university" VALUES (997,'Chung Hua University',943,NULL);
INSERT INTO "university" VALUES (998,'Chung Yuan Christian University',943,NULL);
INSERT INTO "university" VALUES (999,'Feng Chia University',943,NULL);
INSERT INTO "university" VALUES (1000,'National Chiayi University',943,NULL);
INSERT INTO "university" VALUES (1001,'National Dong Hwa University',943,NULL);
INSERT INTO "university" VALUES (1002,'National Taiwan Ocean University',943,NULL);
INSERT INTO "university" VALUES (1003,'National University of Kaohsiung',943,NULL);
INSERT INTO "university" VALUES (1004,'Soochow University (Taiwan)',943,NULL);
INSERT INTO "university" VALUES (1005,'Tatung University',943,NULL);
INSERT INTO "university" VALUES (1006,'Yuan Ze University',943,NULL);
INSERT INTO "university" VALUES (1007,'Mahasarakham University',943,NULL);
INSERT INTO "university" VALUES (1008,'Ubon Ratchathani University',943,NULL);
INSERT INTO "university" VALUES (1009,'University of the Thai Chamber of Commerce',943,NULL);
INSERT INTO "university" VALUES (1010,'University of Monastir',943,NULL);
INSERT INTO "university" VALUES (1011,'Abdullah Gul University',943,NULL);
INSERT INTO "university" VALUES (1012,'Bursa Uludag University',943,NULL);
INSERT INTO "university" VALUES (1013,'Dokuz Eylul University',943,NULL);
INSERT INTO "university" VALUES (1014,'Istanbul Aydin University',943,NULL);
INSERT INTO "university" VALUES (1015,'Istanbul Gelisim University',943,NULL);
INSERT INTO "university" VALUES (1016,'Istanbul Medipol University',943,NULL);
INSERT INTO "university" VALUES (1017,'Izmir Institute of Technology',943,NULL);
INSERT INTO "university" VALUES (1018,'Kocaeli University',943,NULL);
INSERT INTO "university" VALUES (1019,'Zonguldak Bulent Ecevit University',943,NULL);
INSERT INTO "university" VALUES (1020,'Institute of Telecommunications and Informatics of Turkmenistan',943,NULL);
INSERT INTO "university" VALUES (1021,'Kherson State Maritime Academy',943,NULL);
INSERT INTO "university" VALUES (1022,'Savannah College of Art and Design',943,NULL);
INSERT INTO "university" VALUES (1023,'University of South Dakota',943,NULL);
INSERT INTO "university" VALUES (1024,'Can Tho University',943,NULL);
INSERT INTO "university" VALUES (1025,'Tra Vinh University',943,NULL);
INSERT INTO "university" VALUES (1026,'Williams College',NULL,'1');
INSERT INTO "university" VALUES (1027,'Amherst College',NULL,'2');
INSERT INTO "university" VALUES (1028,'Pomona College',NULL,'3');
INSERT INTO "university" VALUES (1029,'Swarthmore College',NULL,'4');
INSERT INTO "university" VALUES (1030,'Wellesley College',NULL,'5');
INSERT INTO "university" VALUES (1031,'Bowdoin College',NULL,'6');
INSERT INTO "university" VALUES (1032,'Carleton College',NULL,'6');
INSERT INTO "university" VALUES (1033,'United States Naval Academy',NULL,'6');
INSERT INTO "university" VALUES (1034,'Claremont McKenna College',NULL,'9');
INSERT INTO "university" VALUES (1035,'United States Military Academy',NULL,'9');
INSERT INTO "university" VALUES (1036,'Middlebury College',NULL,'11');
INSERT INTO "university" VALUES (1037,'Washington and Lee University',NULL,'11');
INSERT INTO "university" VALUES (1038,'Smith College',NULL,'13');
INSERT INTO "university" VALUES (1039,'Vassar College',NULL,'13');
INSERT INTO "university" VALUES (1040,'Davidson College',NULL,'15');
INSERT INTO "university" VALUES (1041,'Grinnell College',NULL,'15');
INSERT INTO "university" VALUES (1042,'Hamilton College',NULL,'15');
INSERT INTO "university" VALUES (1043,'Barnard College',NULL,'18');
INSERT INTO "university" VALUES (1044,'Colgate University',NULL,'18');
INSERT INTO "university" VALUES (1045,'Haverford College',NULL,'18');
INSERT INTO "university" VALUES (1046,'United States Air Force Academy',NULL,'18');
INSERT INTO "university" VALUES (1047,'University of Richmond',NULL,'18');
INSERT INTO "university" VALUES (1048,'Wesleyan University',NULL,'18');
INSERT INTO "university" VALUES (1049,'Colby College',NULL,'24');
INSERT INTO "university" VALUES (1050,'Bates College',NULL,'25');
INSERT INTO "university" VALUES (1051,'Berea College',NULL,'26');
INSERT INTO "university" VALUES (1052,'Colorado College',NULL,'27');
INSERT INTO "university" VALUES (1053,'Macalester College',NULL,'27');
INSERT INTO "university" VALUES (1054,'Harvey Mudd College',NULL,'29');
INSERT INTO "university" VALUES (1055,'Soka University of America',NULL,'29');
INSERT INTO "university" VALUES (1056,'Bryn Mawr College',NULL,'31');
INSERT INTO "university" VALUES (1057,'Kenyon College',NULL,'31');
INSERT INTO "university" VALUES (1058,'College of the Holy Cross',NULL,'33');
INSERT INTO "university" VALUES (1059,'Pitzer College',NULL,'33');
INSERT INTO "university" VALUES (1060,'Scripps College',NULL,'33');
INSERT INTO "university" VALUES (1061,'Mount Holyoke College',NULL,'36');
INSERT INTO "university" VALUES (1062,'Bucknell University',NULL,'37');
INSERT INTO "university" VALUES (1063,'Occidental College',NULL,'37');
INSERT INTO "university" VALUES (1064,'Denison University',NULL,'39');
INSERT INTO "university" VALUES (1065,'Franklin and Marshall College',NULL,'39');
INSERT INTO "university" VALUES (1066,'Lafayette College',NULL,'39');
INSERT INTO "university" VALUES (1067,'Oberlin College and Conservatory',NULL,'39');
INSERT INTO "university" VALUES (1068,'Skidmore College',NULL,'39');
INSERT INTO "university" VALUES (1069,'Trinity College',NULL,'39');
INSERT INTO "university" VALUES (1070,'DePauw University',NULL,'45');
INSERT INTO "university" VALUES (1071,'Furman University',NULL,'45');
INSERT INTO "university" VALUES (1072,'Thomas Aquinas College',NULL,'45');
INSERT INTO "university" VALUES (1073,'Hillsdale College',NULL,'48');
INSERT INTO "university" VALUES (1074,'Union College',NULL,'48');
INSERT INTO "university" VALUES (1075,'Whitman College',NULL,'48');
INSERT INTO "university" VALUES (1076,'Dickinson College',NULL,'51');
INSERT INTO "university" VALUES (1077,'Principia College',NULL,'51');
INSERT INTO "university" VALUES (1078,'Sewanee-University of the South',NULL,'51');
INSERT INTO "university" VALUES (1079,'Spelman College',NULL,'51');
INSERT INTO "university" VALUES (1080,'Centre College',NULL,'55');
INSERT INTO "university" VALUES (1081,'Connecticut College',NULL,'55');
INSERT INTO "university" VALUES (1082,'Rhodes College',NULL,'55');
INSERT INTO "university" VALUES (1083,'Trinity University',NULL,'55');
INSERT INTO "university" VALUES (1084,'Wabash College',NULL,'55');
INSERT INTO "university" VALUES (1085,'Bard College',NULL,'60');
INSERT INTO "university" VALUES (1086,'Gettysburg College',NULL,'61');
INSERT INTO "university" VALUES (1087,'St. John''s College',NULL,'61');
INSERT INTO "university" VALUES (1088,'Agnes Scott College',NULL,'63');
INSERT INTO "university" VALUES (1089,'Lawrence University',NULL,'63');
INSERT INTO "university" VALUES (1090,'St. John''s College',NULL,'63');
INSERT INTO "university" VALUES (1091,'St. Olaf College',NULL,'63');
INSERT INTO "university" VALUES (1092,'Wheaton College',NULL,'63');
INSERT INTO "university" VALUES (1093,'Kalamazoo College',NULL,'68');
INSERT INTO "university" VALUES (1094,'St. Lawrence University',NULL,'68');
INSERT INTO "university" VALUES (1095,'Virginia Military Institute',NULL,'70');
INSERT INTO "university" VALUES (1096,'Wofford College',NULL,'70');
INSERT INTO "university" VALUES (1097,'Hobart and William Smith College',NULL,'72');
INSERT INTO "university" VALUES (1098,'Knox College',NULL,'72');
INSERT INTO "university" VALUES (1099,'Reed College',NULL,'72');
INSERT INTO "university" VALUES (1100,'Sarah Lawrence College',NULL,'72');
INSERT INTO "university" VALUES (1101,'Allegheny College',NULL,'76');
INSERT INTO "university" VALUES (1102,'College of Wooster',NULL,'76');
INSERT INTO "university" VALUES (1103,'Muhlenberg College',NULL,'76');
INSERT INTO "university" VALUES (1104,'New College of Florida',NULL,'76');
INSERT INTO "university" VALUES (1105,'Willamette University',NULL,'76');
INSERT INTO "university" VALUES (1106,'Beloit College',NULL,'81');
INSERT INTO "university" VALUES (1107,'Earlham College',NULL,'81');
INSERT INTO "university" VALUES (1108,'Gustavus Adolphus College',NULL,'81');
INSERT INTO "university" VALUES (1109,'Bennington College',NULL,'84');
INSERT INTO "university" VALUES (1110,'Lake Forest College',NULL,'85');
INSERT INTO "university" VALUES (1111,'Southwestern University',NULL,'85');
INSERT INTO "university" VALUES (1112,'University of Puget Sound',NULL,'85');
INSERT INTO "university" VALUES (1113,'Washington College',NULL,'85');
INSERT INTO "university" VALUES (1114,'Juniata College',NULL,'89');
INSERT INTO "university" VALUES (1115,'St. Mary''s College of Maryland',NULL,'89');
INSERT INTO "university" VALUES (1116,'Stonehill College',NULL,'89');
INSERT INTO "university" VALUES (1117,'Ursinus College',NULL,'89');
INSERT INTO "university" VALUES (1118,'Wheaton College',NULL,'89');
INSERT INTO "university" VALUES (1119,'Augustana College',NULL,'94');
INSERT INTO "university" VALUES (1120,'College of St. Benedict',NULL,'94');
INSERT INTO "university" VALUES (1121,'Hampden-Sydney College',NULL,'94');
INSERT INTO "university" VALUES (1122,'Lewis and Clark College',NULL,'94');
INSERT INTO "university" VALUES (1123,'St. John''s University',NULL,'94');
INSERT INTO "university" VALUES (1124,'Washington and Jefferson College',NULL,'94');
INSERT INTO "university" VALUES (1125,'Cornell College',NULL,'100');
INSERT INTO "university" VALUES (1126,'Saint Mary''s College',NULL,'100');
INSERT INTO "university" VALUES (1127,'Hanover College',NULL,'102');
INSERT INTO "university" VALUES (1128,'Hendrix College',NULL,'102');
INSERT INTO "university" VALUES (1129,'Hollins University',NULL,'102');
INSERT INTO "university" VALUES (1130,'Hope College',NULL,'102');
INSERT INTO "university" VALUES (1131,'Transylvania University',NULL,'102');
INSERT INTO "university" VALUES (1132,'Austin College',NULL,'107');
INSERT INTO "university" VALUES (1133,'Luther College',NULL,'107');
INSERT INTO "university" VALUES (1134,'Randolph-Macon College',NULL,'107');
INSERT INTO "university" VALUES (1135,'Whittier College',NULL,'107');
INSERT INTO "university" VALUES (1136,'Birmingham-Southern College',NULL,'111');
INSERT INTO "university" VALUES (1137,'Drew University',NULL,'111');
INSERT INTO "university" VALUES (1138,'Goucher College',NULL,'111');
INSERT INTO "university" VALUES (1139,'Lycoming College',NULL,'111');
INSERT INTO "university" VALUES (1140,'Ohio Wesleyan University',NULL,'111');
INSERT INTO "university" VALUES (1141,'Saint Anselm College',NULL,'111');
INSERT INTO "university" VALUES (1142,'St. Norbert College',NULL,'111');
INSERT INTO "university" VALUES (1143,'Susquehanna University',NULL,'111');
INSERT INTO "university" VALUES (1144,'Saint Michael''s College',NULL,'119');
INSERT INTO "university" VALUES (1145,'Hampshire College',NULL,'120');
INSERT INTO "university" VALUES (1146,'Linfield College',NULL,'120');
INSERT INTO "university" VALUES (1147,'Roanoke College',NULL,'120');
INSERT INTO "university" VALUES (1148,'Saint Vincent College',NULL,'120');
INSERT INTO "university" VALUES (1149,'Morehouse College',NULL,'124');
INSERT INTO "university" VALUES (1150,'Presbyterian College',NULL,'124');
INSERT INTO "university" VALUES (1151,'Randolph College',NULL,'124');
INSERT INTO "university" VALUES (1152,'Salem College',NULL,'124');
INSERT INTO "university" VALUES (1153,'Westminster College',NULL,'124');
INSERT INTO "university" VALUES (1154,'Westmont College',NULL,'124');
INSERT INTO "university" VALUES (1155,'Eckerd College',NULL,'130');
INSERT INTO "university" VALUES (1156,'Houghton College',NULL,'130');
INSERT INTO "university" VALUES (1157,'Illinois College',NULL,'130');
INSERT INTO "university" VALUES (1158,'Massachusetts College of Liberal Arts',NULL,'130');
INSERT INTO "university" VALUES (1159,'Meredith College',NULL,'130');
INSERT INTO "university" VALUES (1160,'Monmouth College',NULL,'130');
INSERT INTO "university" VALUES (1161,'Albion College',NULL,'136');
INSERT INTO "university" VALUES (1162,'Millsaps College',NULL,'136');
INSERT INTO "university" VALUES (1163,'Ripon College',NULL,'136');
INSERT INTO "university" VALUES (1164,'SUNY-Purchase College',NULL,'136');
INSERT INTO "university" VALUES (1165,'University of Minnesota-Morris',NULL,'136');
INSERT INTO "university" VALUES (1166,'University of North Carolina-Asheville',NULL,'136');
INSERT INTO "university" VALUES (1167,'Coe College',NULL,'142');
INSERT INTO "university" VALUES (1168,'Franklin College',NULL,'142');
INSERT INTO "university" VALUES (1169,'Hartwick College',NULL,'142');
INSERT INTO "university" VALUES (1170,'Central College',NULL,'145');
INSERT INTO "university" VALUES (1171,'Concordia College at Moorhead',NULL,'145');
INSERT INTO "university" VALUES (1172,'Covenant College',NULL,'147');
INSERT INTO "university" VALUES (1173,'Wittenberg University',NULL,'147');
INSERT INTO "university" VALUES (1174,'Aquinas College',NULL,'149');
INSERT INTO "university" VALUES (1175,'University of Mary Washington',NULL,'149');
INSERT INTO "university" VALUES (1176,'Emmanuel College',NULL,'151');
INSERT INTO "university" VALUES (1177,'Fisk University',NULL,'151');
INSERT INTO "university" VALUES (1178,'Gordon College',NULL,'151');
INSERT INTO "university" VALUES (1179,'Marymount Manhattan College',NULL,'151');
INSERT INTO "university" VALUES (1180,'Tougaloo College',NULL,'151');
INSERT INTO "university" VALUES (1181,'University of Virginia',NULL,NULL);
INSERT INTO "university" VALUES (1182,'Widener University',NULL,NULL);
INSERT INTO "university" VALUES (1183,'Yale Law School',NULL,NULL);
INSERT INTO "university" VALUES (1184,'Syracuse University College of Law',NULL,NULL);
INSERT INTO "university" VALUES (1185,'NYU School of Law',NULL,NULL);
INSERT INTO "nonprofit" VALUES (1,'ACLU',1);
INSERT INTO "nonprofit" VALUES (2,'NAACP',30);
INSERT INTO "nonprofit" VALUES (3,'Center for Constitutional Rights',1);
INSERT INTO "nonprofit" VALUES (4,'Southern Poverty Law Center
',133);
INSERT INTO "nonprofit" VALUES (5,'The Advancement Project',20);
INSERT INTO "nonprofit" VALUES (6,'Equal Justice Initiative',133);
INSERT INTO "nonprofit" VALUES (7,'National Urban League',1);
INSERT INTO "nonprofit" VALUES (8,'Amnesty International',201);
INSERT INTO "nonprofit" VALUES (9,'Lambda Legal',1);
INSERT INTO "nonprofit" VALUES (10,'Meta Oversight Board',201);
INSERT INTO "city" VALUES (1,'New York City','United States','NY');
INSERT INTO "city" VALUES (2,'Los Angeles','United States','CA');
INSERT INTO "city" VALUES (3,'Chicago','United States','IL');
INSERT INTO "city" VALUES (4,'Houston','United States','TX');
INSERT INTO "city" VALUES (5,'Phoenix','United States','AZ');
INSERT INTO "city" VALUES (6,'Philadelphia','United States','PA');
INSERT INTO "city" VALUES (7,'San Antonio','United States','TX');
INSERT INTO "city" VALUES (8,'San Diego','United States','CA');
INSERT INTO "city" VALUES (9,'Dallas','United States','TX');
INSERT INTO "city" VALUES (10,'San Jose','United States','CA');
INSERT INTO "city" VALUES (11,'Austin','United States','TX');
INSERT INTO "city" VALUES (12,'Jacksonville','United States','FL');
INSERT INTO "city" VALUES (13,'Fort Worth','United States','TX');
INSERT INTO "city" VALUES (14,'Columbus','United States','OH');
INSERT INTO "city" VALUES (15,'Charlotte','United States','NC');
INSERT INTO "city" VALUES (16,'Indianapolis','United States','IN');
INSERT INTO "city" VALUES (17,'San Francisco','United States','CA');
INSERT INTO "city" VALUES (18,'Seattle','United States','WA');
INSERT INTO "city" VALUES (19,'Denver','United States','CO');
INSERT INTO "city" VALUES (20,'Washington','United States','DC');
INSERT INTO "city" VALUES (21,'Nashville','United States','TN');
INSERT INTO "city" VALUES (22,'Oklahoma City','United States','OK');
INSERT INTO "city" VALUES (23,'Boston','United States','MA');
INSERT INTO "city" VALUES (24,'El Paso','United States','TX');
INSERT INTO "city" VALUES (25,'Portland','United States','OR');
INSERT INTO "city" VALUES (26,'Las Vegas','United States','NV');
INSERT INTO "city" VALUES (27,'Louisville','United States','KY');
INSERT INTO "city" VALUES (28,'Memphis','United States','TN');
INSERT INTO "city" VALUES (29,'Detroit','United States','MI');
INSERT INTO "city" VALUES (30,'Baltimore','United States','MD');
INSERT INTO "city" VALUES (31,'Milwaukee','United States','WI');
INSERT INTO "city" VALUES (32,'Albuquerque','United States','NM');
INSERT INTO "city" VALUES (33,'Fresno','United States','CA');
INSERT INTO "city" VALUES (34,'Tucson','United States','AZ');
INSERT INTO "city" VALUES (35,'Sacramento','United States','CA');
INSERT INTO "city" VALUES (36,'Kansas City','United States','MO');
INSERT INTO "city" VALUES (37,'Mesa','United States','AZ');
INSERT INTO "city" VALUES (38,'Atlanta','United States','GA');
INSERT INTO "city" VALUES (39,'Omaha','United States','NE');
INSERT INTO "city" VALUES (40,'Colorado Springs','United States','CO');
INSERT INTO "city" VALUES (41,'Raleigh','United States','NC');
INSERT INTO "city" VALUES (42,'Long Beach','United States','CA');
INSERT INTO "city" VALUES (43,'Virginia Beach','United States','VA');
INSERT INTO "city" VALUES (44,'Miami','United States','FL');
INSERT INTO "city" VALUES (45,'Oakland','United States','CA');
INSERT INTO "city" VALUES (46,'Minneapolis','United States','MN');
INSERT INTO "city" VALUES (47,'Tulsa','United States','OK');
INSERT INTO "city" VALUES (48,'Bakersfield','United States','CA');
INSERT INTO "city" VALUES (49,'Wichita','United States','KS');
INSERT INTO "city" VALUES (50,'Arlington','United States','TX');
INSERT INTO "city" VALUES (51,'Aurora','United States','CO');
INSERT INTO "city" VALUES (52,'Tampa','United States','FL');
INSERT INTO "city" VALUES (53,'New Orleans','United States','LA');
INSERT INTO "city" VALUES (54,'Cleveland','United States','OH');
INSERT INTO "city" VALUES (55,'Honolulu','United States','HI');
INSERT INTO "city" VALUES (56,'Anaheim','United States','CA');
INSERT INTO "city" VALUES (57,'Henderson','United States','NV');
INSERT INTO "city" VALUES (58,'Lexington','United States','KY');
INSERT INTO "city" VALUES (59,'Irvine','United States','CA');
INSERT INTO "city" VALUES (60,'Stockton','United States','CA');
INSERT INTO "city" VALUES (61,'Orlando','United States','FL');
INSERT INTO "city" VALUES (62,'Corpus Christi','United States','TX');
INSERT INTO "city" VALUES (63,'Newark','United States','NJ');
INSERT INTO "city" VALUES (64,'Riverside','United States','CA');
INSERT INTO "city" VALUES (65,'St. Paul','United States','MN');
INSERT INTO "city" VALUES (66,'Cincinnati','United States','OH');
INSERT INTO "city" VALUES (67,'San Juan','United States','PR');
INSERT INTO "city" VALUES (68,'Santa Ana','United States','CA');
INSERT INTO "city" VALUES (69,'Greensboro','United States','NC');
INSERT INTO "city" VALUES (70,'Pittsburgh','United States','PA');
INSERT INTO "city" VALUES (71,'Jersey City','United States','NJ');
INSERT INTO "city" VALUES (72,'St. Louis','United States','MO');
INSERT INTO "city" VALUES (73,'Lincoln','United States','NE');
INSERT INTO "city" VALUES (74,'Durham','United States','NC');
INSERT INTO "city" VALUES (75,'Anchorage','United States','AK');
INSERT INTO "city" VALUES (76,'Plano','United States','TX');
INSERT INTO "city" VALUES (77,'Chandler','United States','AZ');
INSERT INTO "city" VALUES (78,'Chula Vista','United States','CA');
INSERT INTO "city" VALUES (79,'Buffalo','United States','NY');
INSERT INTO "city" VALUES (80,'Gilbert','United States','AZ');
INSERT INTO "city" VALUES (81,'Madison','United States','WI');
INSERT INTO "city" VALUES (82,'Reno','United States','NV');
INSERT INTO "city" VALUES (83,'North Las Vegas','United States','NV');
INSERT INTO "city" VALUES (84,'Toledo','United States','OH');
INSERT INTO "city" VALUES (85,'Fort Wayne','United States','IN');
INSERT INTO "city" VALUES (86,'Irving','United States','TX');
INSERT INTO "city" VALUES (87,'Lubbock','United States','TX');
INSERT INTO "city" VALUES (88,'St. Petersburg','United States','FL');
INSERT INTO "city" VALUES (89,'Laredo','United States','TX');
INSERT INTO "city" VALUES (90,'Chesapeake','United States','VA');
INSERT INTO "city" VALUES (91,'Winston-Salem','United States','NC');
INSERT INTO "city" VALUES (92,'Glendale','United States','AZ');
INSERT INTO "city" VALUES (93,'Garland','United States','TX');
INSERT INTO "city" VALUES (94,'Scottsdale','United States','AZ');
INSERT INTO "city" VALUES (95,'Arlington','United States','VA');
INSERT INTO "city" VALUES (96,'Enterprise','United States','NV');
INSERT INTO "city" VALUES (97,'Boise','United States','ID');
INSERT INTO "city" VALUES (98,'Santa Clarita','United States','CA');
INSERT INTO "city" VALUES (99,'Norfolk','United States','VA');
INSERT INTO "city" VALUES (100,'Fremont','United States','CA');
INSERT INTO "city" VALUES (101,'Spokane','United States','WA');
INSERT INTO "city" VALUES (102,'Richmond','United States','VA');
INSERT INTO "city" VALUES (103,'Baton Rouge','United States','LA');
INSERT INTO "city" VALUES (104,'San Bernardino','United States','CA');
INSERT INTO "city" VALUES (105,'Tacoma','United States','WA');
INSERT INTO "city" VALUES (106,'Spring Valley','United States','NV');
INSERT INTO "city" VALUES (107,'Hialeah','United States','FL');
INSERT INTO "city" VALUES (108,'Huntsville','United States','AL');
INSERT INTO "city" VALUES (109,'Modesto','United States','CA');
INSERT INTO "city" VALUES (110,'Frisco','United States','TX');
INSERT INTO "city" VALUES (111,'Des Moines','United States','IA');
INSERT INTO "city" VALUES (112,'Yonkers','United States','NY');
INSERT INTO "city" VALUES (113,'Port St. Lucie','United States','FL');
INSERT INTO "city" VALUES (114,'Moreno Valley','United States','CA');
INSERT INTO "city" VALUES (115,'Worcester','United States','MA');
INSERT INTO "city" VALUES (116,'Rochester','United States','NY');
INSERT INTO "city" VALUES (117,'Fontana','United States','CA');
INSERT INTO "city" VALUES (118,'Columbus','United States','GA');
INSERT INTO "city" VALUES (119,'Fayetteville','United States','NC');
INSERT INTO "city" VALUES (120,'Sunrise Manor','United States','NV');
INSERT INTO "city" VALUES (121,'McKinney','United States','TX');
INSERT INTO "city" VALUES (122,'Little Rock','United States','AR');
INSERT INTO "city" VALUES (123,'Augusta','United States','GA');
INSERT INTO "city" VALUES (124,'Oxnard','United States','CA');
INSERT INTO "city" VALUES (125,'Salt Lake City','United States','UT');
INSERT INTO "city" VALUES (126,'Amarillo','United States','TX');
INSERT INTO "city" VALUES (127,'Overland Park','United States','KS');
INSERT INTO "city" VALUES (128,'Cape Coral','United States','FL');
INSERT INTO "city" VALUES (129,'Grand Rapids','United States','MI');
INSERT INTO "city" VALUES (130,'Huntington Beach','United States','CA');
INSERT INTO "city" VALUES (131,'Sioux Falls','United States','SD');
INSERT INTO "city" VALUES (132,'Grand Prairie','United States','TX');
INSERT INTO "city" VALUES (133,'Montgomery','United States','AL');
INSERT INTO "city" VALUES (134,'Tallahassee','United States','FL');
INSERT INTO "city" VALUES (135,'Birmingham','United States','AL');
INSERT INTO "city" VALUES (136,'Peoria','United States','AZ');
INSERT INTO "city" VALUES (137,'Glendale','United States','CA');
INSERT INTO "city" VALUES (138,'Vancouver','United States','WA');
INSERT INTO "city" VALUES (139,'Providence','United States','RI');
INSERT INTO "city" VALUES (140,'Knoxville','United States','TN');
INSERT INTO "city" VALUES (141,'Brownsville','United States','TX');
INSERT INTO "city" VALUES (142,'Akron','United States','OH');
INSERT INTO "city" VALUES (143,'Newport News','United States','VA');
INSERT INTO "city" VALUES (144,'Fort Lauderdale','United States','FL');
INSERT INTO "city" VALUES (145,'Mobile','United States','AL');
INSERT INTO "city" VALUES (146,'Shreveport','United States','LA');
INSERT INTO "city" VALUES (147,'Paradise','United States','NV');
INSERT INTO "city" VALUES (148,'Tempe','United States','AZ');
INSERT INTO "city" VALUES (149,'Chattanooga','United States','TN');
INSERT INTO "city" VALUES (150,'Cary','United States','NC');
INSERT INTO "city" VALUES (151,'Eugene','United States','OR');
INSERT INTO "city" VALUES (152,'Elk Grove','United States','CA');
INSERT INTO "city" VALUES (153,'Santa Rosa','United States','CA');
INSERT INTO "city" VALUES (154,'Salem','United States','OR');
INSERT INTO "city" VALUES (155,'Ontario','United States','CA');
INSERT INTO "city" VALUES (156,'Aurora','United States','IL');
INSERT INTO "city" VALUES (157,'Lancaster','United States','CA');
INSERT INTO "city" VALUES (158,'Rancho Cucamonga','United States','CA');
INSERT INTO "city" VALUES (159,'Oceanside','United States','CA');
INSERT INTO "city" VALUES (160,'Fort Collins','United States','CO');
INSERT INTO "city" VALUES (161,'Pembroke Pines','United States','FL');
INSERT INTO "city" VALUES (162,'Clarksville','United States','TN');
INSERT INTO "city" VALUES (163,'Palmdale','United States','CA');
INSERT INTO "city" VALUES (164,'Garden Grove','United States','CA');
INSERT INTO "city" VALUES (165,'Springfield','United States','MO');
INSERT INTO "city" VALUES (166,'Hayward','United States','CA');
INSERT INTO "city" VALUES (167,'Salinas','United States','CA');
INSERT INTO "city" VALUES (168,'Alexandria','United States','VA');
INSERT INTO "city" VALUES (169,'Paterson','United States','NJ');
INSERT INTO "city" VALUES (170,'Murfreesboro','United States','TN');
INSERT INTO "city" VALUES (171,'Bayamon','United States','PR');
INSERT INTO "city" VALUES (172,'Sunnyvale','United States','CA');
INSERT INTO "city" VALUES (173,'Kansas City','United States','KS');
INSERT INTO "city" VALUES (174,'Lakewood','United States','CO');
INSERT INTO "city" VALUES (175,'Killeen','United States','TX');
INSERT INTO "city" VALUES (176,'Corona','United States','CA');
INSERT INTO "city" VALUES (177,'Bellevue','United States','WA');
INSERT INTO "city" VALUES (178,'Springfield','United States','MA');
INSERT INTO "city" VALUES (179,'Charleston','United States','SC');
INSERT INTO "city" VALUES (180,'Macon','United States','GA');
INSERT INTO "city" VALUES (181,'Hollywood','United States','FL');
INSERT INTO "city" VALUES (182,'Roseville','United States','CA');
INSERT INTO "city" VALUES (183,'Pasadena','United States','TX');
INSERT INTO "city" VALUES (184,'Escondido','United States','CA');
INSERT INTO "city" VALUES (185,'Pomona','United States','CA');
INSERT INTO "city" VALUES (186,'Mesquite','United States','TX');
INSERT INTO "city" VALUES (187,'Naperville','United States','IL');
INSERT INTO "city" VALUES (188,'Joliet','United States','IL');
INSERT INTO "city" VALUES (189,'Savannah','United States','GA');
INSERT INTO "city" VALUES (190,'Jackson','United States','MS');
INSERT INTO "city" VALUES (191,'Bridgeport','United States','CT');
INSERT INTO "city" VALUES (192,'Syracuse','United States','NY');
INSERT INTO "city" VALUES (193,'Surprise','United States','AZ');
INSERT INTO "city" VALUES (194,'Rockford','United States','IL');
INSERT INTO "city" VALUES (195,'Torrance','United States','CA');
INSERT INTO "city" VALUES (196,'Thornton','United States','CO');
INSERT INTO "city" VALUES (197,'Kent','United States','WA');
INSERT INTO "city" VALUES (198,'Fullerton','United States','CA');
INSERT INTO "city" VALUES (199,'Denton','United States','TX');
INSERT INTO "city" VALUES (200,'Visalia','United States','CA');
INSERT INTO "city" VALUES (201,'Stamford','United States','CT');
INSERT INTO "city" VALUES (202,'Shanghai','China',NULL);
INSERT INTO "city" VALUES (203,'Beijing','China',NULL);
INSERT INTO "city" VALUES (204,'Shenzhen','China',NULL);
INSERT INTO "city" VALUES (205,'Guangzhou','China',NULL);
INSERT INTO "city" VALUES (206,'Lagos','Nigeria',NULL);
INSERT INTO "city" VALUES (207,'Istanbul','Turkey',NULL);
INSERT INTO "city" VALUES (208,'Chengdu','China',NULL);
INSERT INTO "city" VALUES (209,'Buenos Aires','Argentina',NULL);
INSERT INTO "city" VALUES (210,'Mumbai','India',NULL);
INSERT INTO "city" VALUES (211,'Mexico City','Mexico',NULL);
INSERT INTO "city" VALUES (212,'Karachi','Pakistan',NULL);
INSERT INTO "city" VALUES (213,'Tianjin','China',NULL);
INSERT INTO "city" VALUES (214,'Delhi','India',NULL);
INSERT INTO "city" VALUES (215,'Wuhan','China',NULL);
INSERT INTO "city" VALUES (216,'Moscow','Russian Federation',NULL);
INSERT INTO "city" VALUES (217,'Dhaka','Bangladesh',NULL);
INSERT INTO "city" VALUES (218,'Seoul','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (219,'São Paulo','Brazil',NULL);
INSERT INTO "city" VALUES (220,'Dongguan','China',NULL);
INSERT INTO "city" VALUES (221,'Cairo','Egypt',NULL);
INSERT INTO "city" VALUES (222,'Xi’an','China',NULL);
INSERT INTO "city" VALUES (223,'Nanjing','China',NULL);
INSERT INTO "city" VALUES (224,'Hangzhou','China',NULL);
INSERT INTO "city" VALUES (225,'Foshan','China',NULL);
INSERT INTO "city" VALUES (226,'Ho Chi Minh City','Viet Nam',NULL);
INSERT INTO "city" VALUES (227,'London','United Kingdom',NULL);
INSERT INTO "city" VALUES (228,'Jakarta','Indonesia',NULL);
INSERT INTO "city" VALUES (229,'Bengaluru','India',NULL);
INSERT INTO "city" VALUES (230,'Tokyo','Japan',NULL);
INSERT INTO "city" VALUES (231,'Hanoi','Viet Nam',NULL);
INSERT INTO "city" VALUES (232,'Taipei','Taiwan, China',NULL);
INSERT INTO "city" VALUES (233,'Kinshasa','Congo, Democratic Republic of the',NULL);
INSERT INTO "city" VALUES (234,'Lima','Peru',NULL);
INSERT INTO "city" VALUES (235,'Bogotá','Colombia',NULL);
INSERT INTO "city" VALUES (236,'Hong Kong','Hong Kong, China',NULL);
INSERT INTO "city" VALUES (237,'Chongqing','China',NULL);
INSERT INTO "city" VALUES (238,'Baghdad','Iraq',NULL);
INSERT INTO "city" VALUES (239,'Qingdao','China',NULL);
INSERT INTO "city" VALUES (240,'Tehran','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (241,'Shenyang','China',NULL);
INSERT INTO "city" VALUES (242,'Hyderābād','India',NULL);
INSERT INTO "city" VALUES (243,'Suzhou','China',NULL);
INSERT INTO "city" VALUES (244,'Ahmedabad','India',NULL);
INSERT INTO "city" VALUES (245,'Lahore','Pakistan',NULL);
INSERT INTO "city" VALUES (246,'Rio de Janeiro','Brazil',NULL);
INSERT INTO "city" VALUES (247,'Singapore','Singapore',NULL);
INSERT INTO "city" VALUES (248,'Johannesburg','South Africa',NULL);
INSERT INTO "city" VALUES (249,'Saint Petersburg','Russian Federation',NULL);
INSERT INTO "city" VALUES (250,'Alexandria','Egypt',NULL);
INSERT INTO "city" VALUES (251,'Harbin','China',NULL);
INSERT INTO "city" VALUES (252,'Bangkok','Thailand',NULL);
INSERT INTO "city" VALUES (253,'Hefei','China',NULL);
INSERT INTO "city" VALUES (254,'Dalian','China',NULL);
INSERT INTO "city" VALUES (255,'Santiago','Chile',NULL);
INSERT INTO "city" VALUES (256,'Changchun','China',NULL);
INSERT INTO "city" VALUES (257,'Cape Town','South Africa',NULL);
INSERT INTO "city" VALUES (258,'Jeddah','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (259,'Chennai','India',NULL);
INSERT INTO "city" VALUES (260,'Kolkata','India',NULL);
INSERT INTO "city" VALUES (261,'Sydney','Australia',NULL);
INSERT INTO "city" VALUES (262,'Xiamen','China',NULL);
INSERT INTO "city" VALUES (263,'Surat','India',NULL);
INSERT INTO "city" VALUES (264,'Yangon','Myanmar',NULL);
INSERT INTO "city" VALUES (265,'Kabul','Afghanistan',NULL);
INSERT INTO "city" VALUES (266,'Wuxi','China',NULL);
INSERT INTO "city" VALUES (267,'Giza','Egypt',NULL);
INSERT INTO "city" VALUES (268,'Jinan','China',NULL);
INSERT INTO "city" VALUES (269,'Taiyuan','China',NULL);
INSERT INTO "city" VALUES (270,'Zhengzhou','China',NULL);
INSERT INTO "city" VALUES (271,'Melbourne','Australia',NULL);
INSERT INTO "city" VALUES (272,'Riyadh','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (273,'Kano','Nigeria',NULL);
INSERT INTO "city" VALUES (274,'Shijiazhuang','China',NULL);
INSERT INTO "city" VALUES (275,'Chattogram','Bangladesh',NULL);
INSERT INTO "city" VALUES (276,'Kunming','China',NULL);
INSERT INTO "city" VALUES (277,'Zhongshan','China',NULL);
INSERT INTO "city" VALUES (278,'Nanning','China',NULL);
INSERT INTO "city" VALUES (279,'Shantou','China',NULL);
INSERT INTO "city" VALUES (280,'Yokohama','Japan',NULL);
INSERT INTO "city" VALUES (281,'Fuzhou','China',NULL);
INSERT INTO "city" VALUES (282,'Ningbo','China',NULL);
INSERT INTO "city" VALUES (283,'Busan','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (284,'Abidjan','Côte d''Ivoire',NULL);
INSERT INTO "city" VALUES (285,'Ibadan','Nigeria',NULL);
INSERT INTO "city" VALUES (286,'Puyang','China',NULL);
INSERT INTO "city" VALUES (287,'Ankara','Turkey',NULL);
INSERT INTO "city" VALUES (288,'Dubai','United Arab Emirates',NULL);
INSERT INTO "city" VALUES (289,'Shiyan','China',NULL);
INSERT INTO "city" VALUES (290,'Berlin','Germany',NULL);
INSERT INTO "city" VALUES (291,'Tangshan','China',NULL);
INSERT INTO "city" VALUES (292,'Changzhou','China',NULL);
INSERT INTO "city" VALUES (293,'Madrid','Spain',NULL);
INSERT INTO "city" VALUES (294,'Pyongyang','Korea, Dem. People''s Rep. of',NULL);
INSERT INTO "city" VALUES (295,'Casablanca','Morocco',NULL);
INSERT INTO "city" VALUES (296,'Zibo','China',NULL);
INSERT INTO "city" VALUES (297,'Pune','India',NULL);
INSERT INTO "city" VALUES (298,'Durban','South Africa',NULL);
INSERT INTO "city" VALUES (299,'Changsha','China',NULL);
INSERT INTO "city" VALUES (300,'Guiyang','China',NULL);
INSERT INTO "city" VALUES (301,'Ürümqi','China',NULL);
INSERT INTO "city" VALUES (302,'Lanzhou','China',NULL);
INSERT INTO "city" VALUES (303,'Caracas','Venezuela, Bolivarian Rep. of',NULL);
INSERT INTO "city" VALUES (304,'Incheon','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (305,'Huizhou','China',NULL);
INSERT INTO "city" VALUES (306,'Surabaya','Indonesia',NULL);
INSERT INTO "city" VALUES (307,'Haikou','China',NULL);
INSERT INTO "city" VALUES (308,'Kanpur','India',NULL);
INSERT INTO "city" VALUES (309,'Kyiv','Ukraine',NULL);
INSERT INTO "city" VALUES (310,'Quito','Ecuador',NULL);
INSERT INTO "city" VALUES (311,'Luanda','Angola',NULL);
INSERT INTO "city" VALUES (312,'Quezon City','Philippines',NULL);
INSERT INTO "city" VALUES (313,'Addis Ababa','Ethiopia',NULL);
INSERT INTO "city" VALUES (314,'Osaka','Japan',NULL);
INSERT INTO "city" VALUES (315,'Nairobi','Kenya',NULL);
INSERT INTO "city" VALUES (316,'Linyi','China',NULL);
INSERT INTO "city" VALUES (317,'Baoding','China',NULL);
INSERT INTO "city" VALUES (318,'Guayaquil','Ecuador',NULL);
INSERT INTO "city" VALUES (319,'Salvador','Brazil',NULL);
INSERT INTO "city" VALUES (320,'Jaipur','India',NULL);
INSERT INTO "city" VALUES (321,'Dar es Salaam','Tanzania, United Republic of',NULL);
INSERT INTO "city" VALUES (322,'Wenzhou','China',NULL);
INSERT INTO "city" VALUES (323,'Yunfu','China',NULL);
INSERT INTO "city" VALUES (324,'Basrah','Iraq',NULL);
INSERT INTO "city" VALUES (325,'Toronto','Canada',NULL);
INSERT INTO "city" VALUES (326,'Navi Mumbai','India',NULL);
INSERT INTO "city" VALUES (327,'Mogadishu','Somalia',NULL);
INSERT INTO "city" VALUES (328,'Daegu','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (329,'Bekasi','Indonesia',NULL);
INSERT INTO "city" VALUES (330,'Faisalabad','Pakistan',NULL);
INSERT INTO "city" VALUES (331,'İzmir','Turkey',NULL);
INSERT INTO "city" VALUES (332,'Huai''an','China',NULL);
INSERT INTO "city" VALUES (333,'Dakar','Senegal',NULL);
INSERT INTO "city" VALUES (334,'Lucknow','India',NULL);
INSERT INTO "city" VALUES (335,'Bandung','Indonesia',NULL);
INSERT INTO "city" VALUES (336,'Medan','Indonesia',NULL);
INSERT INTO "city" VALUES (337,'Fortaleza','Brazil',NULL);
INSERT INTO "city" VALUES (338,'Cali','Colombia',NULL);
INSERT INTO "city" VALUES (339,'Belo Horizonte','Brazil',NULL);
INSERT INTO "city" VALUES (340,'Nanchang','China',NULL);
INSERT INTO "city" VALUES (341,'Hohhot','China',NULL);
INSERT INTO "city" VALUES (342,'Rome','Italy',NULL);
INSERT INTO "city" VALUES (343,'Mashhad','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (344,'Kowloon','Hong Kong, China',NULL);
INSERT INTO "city" VALUES (345,'Shaoxing','China',NULL);
INSERT INTO "city" VALUES (346,'Nantong','China',NULL);
INSERT INTO "city" VALUES (347,'Nagpur','India',NULL);
INSERT INTO "city" VALUES (348,'Yantai','China',NULL);
INSERT INTO "city" VALUES (349,'Maracaibo','Venezuela, Bolivarian Rep. of',NULL);
INSERT INTO "city" VALUES (350,'Brasília','Brazil',NULL);
INSERT INTO "city" VALUES (351,'Zhuhai','China',NULL);
INSERT INTO "city" VALUES (352,'Santo Domingo','Dominican Republic',NULL);
INSERT INTO "city" VALUES (353,'Nagoya','Japan',NULL);
INSERT INTO "city" VALUES (354,'Brisbane','Australia',NULL);
INSERT INTO "city" VALUES (355,'Havana','Cuba',NULL);
INSERT INTO "city" VALUES (356,'Baotou','China',NULL);
INSERT INTO "city" VALUES (357,'Paris','France',NULL);
INSERT INTO "city" VALUES (358,'Coimbatore','India',NULL);
INSERT INTO "city" VALUES (359,'Kunshan','China',NULL);
INSERT INTO "city" VALUES (360,'Al Mawşil al Jadīdah','Iraq',NULL);
INSERT INTO "city" VALUES (361,'Depok','Indonesia',NULL);
INSERT INTO "city" VALUES (362,'Weifang','China',NULL);
INSERT INTO "city" VALUES (363,'Zunyi','China',NULL);
INSERT INTO "city" VALUES (364,'Al Başrah al Qadīmah','Iraq',NULL);
INSERT INTO "city" VALUES (365,'La Paz','Bolivia',NULL);
INSERT INTO "city" VALUES (366,'Lianyungang','China',NULL);
INSERT INTO "city" VALUES (367,'Medellín','Colombia',NULL);
INSERT INTO "city" VALUES (368,'Tashkent','Uzbekistan',NULL);
INSERT INTO "city" VALUES (369,'Algiers','Algeria',NULL);
INSERT INTO "city" VALUES (370,'Ganzhou','China',NULL);
INSERT INTO "city" VALUES (371,'Almaty','Kazakhstan',NULL);
INSERT INTO "city" VALUES (372,'Khartoum','Sudan, The Republic of',NULL);
INSERT INTO "city" VALUES (373,'Sapporo','Japan',NULL);
INSERT INTO "city" VALUES (374,'Accra','Ghana',NULL);
INSERT INTO "city" VALUES (375,'Ordos','China',NULL);
INSERT INTO "city" VALUES (376,'Sanaa','Yemen',NULL);
INSERT INTO "city" VALUES (377,'Beirut','Lebanon',NULL);
INSERT INTO "city" VALUES (378,'Tangerang','Indonesia',NULL);
INSERT INTO "city" VALUES (379,'Jieyang','China',NULL);
INSERT INTO "city" VALUES (380,'Perth','Australia',NULL);
INSERT INTO "city" VALUES (381,'Jilin','China',NULL);
INSERT INTO "city" VALUES (382,'Bucharest','Romania',NULL);
INSERT INTO "city" VALUES (383,'Camayenne','Guinea',NULL);
INSERT INTO "city" VALUES (384,'Kakamega','Kenya',NULL);
INSERT INTO "city" VALUES (385,'Port Harcourt','Nigeria',NULL);
INSERT INTO "city" VALUES (386,'Nanchong','China',NULL);
INSERT INTO "city" VALUES (387,'Datong','China',NULL);
INSERT INTO "city" VALUES (388,'Hamburg','Germany',NULL);
INSERT INTO "city" VALUES (389,'Indore','India',NULL);
INSERT INTO "city" VALUES (390,'Santa Cruz de la Sierra','Bolivia',NULL);
INSERT INTO "city" VALUES (391,'Vadodara','India',NULL);
INSERT INTO "city" VALUES (392,'Iztapalapa','Mexico',NULL);
INSERT INTO "city" VALUES (393,'Nanyang','China',NULL);
INSERT INTO "city" VALUES (394,'Jiangmen','China',NULL);
INSERT INTO "city" VALUES (395,'Benin City','Nigeria',NULL);
INSERT INTO "city" VALUES (396,'Jiangyin','China',NULL);
INSERT INTO "city" VALUES (397,'Davao','Philippines',NULL);
INSERT INTO "city" VALUES (398,'Fuyang','China',NULL);
INSERT INTO "city" VALUES (399,'Conakry','Guinea',NULL);
INSERT INTO "city" VALUES (400,'Montréal','Canada',NULL);
INSERT INTO "city" VALUES (401,'Bayan Nur','China',NULL);
INSERT INTO "city" VALUES (402,'Maracay','Venezuela, Bolivarian Rep. of',NULL);
INSERT INTO "city" VALUES (403,'Chaozhou','China',NULL);
INSERT INTO "city" VALUES (404,'Rawalpindi','Pakistan',NULL);
INSERT INTO "city" VALUES (405,'Minsk','Belarus',NULL);
INSERT INTO "city" VALUES (406,'Budapest','Hungary',NULL);
INSERT INTO "city" VALUES (407,'Mosul','Iraq',NULL);
INSERT INTO "city" VALUES (408,'Qingyuan','China',NULL);
INSERT INTO "city" VALUES (409,'Tai’an','China',NULL);
INSERT INTO "city" VALUES (410,'Curitiba','Brazil',NULL);
INSERT INTO "city" VALUES (411,'Johor Bahru','Malaysia',NULL);
INSERT INTO "city" VALUES (412,'Warsaw','Poland',NULL);
INSERT INTO "city" VALUES (413,'Soweto','South Africa',NULL);
INSERT INTO "city" VALUES (414,'Puebla','Mexico',NULL);
INSERT INTO "city" VALUES (415,'Vienna','Austria',NULL);
INSERT INTO "city" VALUES (416,'Kallakurichi','India',NULL);
INSERT INTO "city" VALUES (417,'Xining','China',NULL);
INSERT INTO "city" VALUES (418,'Changshu','China',NULL);
INSERT INTO "city" VALUES (419,'Palembang','Indonesia',NULL);
INSERT INTO "city" VALUES (420,'Huainan','China',NULL);
INSERT INTO "city" VALUES (421,'Rabat','Morocco',NULL);
INSERT INTO "city" VALUES (422,'Ecatepec de Morelos','Mexico',NULL);
INSERT INTO "city" VALUES (423,'Semarang','Indonesia',NULL);
INSERT INTO "city" VALUES (424,'Suzhou','China',NULL);
INSERT INTO "city" VALUES (425,'Lu’an','China',NULL);
INSERT INTO "city" VALUES (426,'Barcelona','Spain',NULL);
INSERT INTO "city" VALUES (427,'Valencia','Venezuela, Bolivarian Rep. of',NULL);
INSERT INTO "city" VALUES (428,'Pretoria','South Africa',NULL);
INSERT INTO "city" VALUES (429,'Yancheng','China',NULL);
INSERT INTO "city" VALUES (430,'Novosibirsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (431,'Taizhou','China',NULL);
INSERT INTO "city" VALUES (432,'Daqing','China',NULL);
INSERT INTO "city" VALUES (433,'Fukuoka','Japan',NULL);
INSERT INTO "city" VALUES (434,'Aleppo','Syrian Arab Republic',NULL);
INSERT INTO "city" VALUES (435,'Manila','Philippines',NULL);
INSERT INTO "city" VALUES (436,'Patna','India',NULL);
INSERT INTO "city" VALUES (437,'Bhopāl','India',NULL);
INSERT INTO "city" VALUES (438,'Manaus','Brazil',NULL);
INSERT INTO "city" VALUES (439,'Wuhu','China',NULL);
INSERT INTO "city" VALUES (440,'Santiago de Querétaro','Mexico',NULL);
INSERT INTO "city" VALUES (441,'Dazhou','China',NULL);
INSERT INTO "city" VALUES (442,'Yangzhou','China',NULL);
INSERT INTO "city" VALUES (443,'Kaduna','Nigeria',NULL);
INSERT INTO "city" VALUES (444,'Mecca','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (445,'Phnom Penh','Cambodia',NULL);
INSERT INTO "city" VALUES (446,'Guilin','China',NULL);
INSERT INTO "city" VALUES (447,'Damascus','Syrian Arab Republic',NULL);
INSERT INTO "city" VALUES (448,'Zhaoqing','China',NULL);
INSERT INTO "city" VALUES (449,'Onitsha','Nigeria',NULL);
INSERT INTO "city" VALUES (450,'Mianyang','China',NULL);
INSERT INTO "city" VALUES (451,'Isfahan','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (452,'Ludhiāna','India',NULL);
INSERT INTO "city" VALUES (453,'Harare','Zimbabwe',NULL);
INSERT INTO "city" VALUES (454,'Putian','China',NULL);
INSERT INTO "city" VALUES (455,'Shangqiu','China',NULL);
INSERT INTO "city" VALUES (456,'Kawasaki','Japan',NULL);
INSERT INTO "city" VALUES (457,'Kobe','Japan',NULL);
INSERT INTO "city" VALUES (458,'Kaohsiung','Taiwan, China',NULL);
INSERT INTO "city" VALUES (459,'Stockholm','Sweden',NULL);
INSERT INTO "city" VALUES (460,'Caloocan City','Philippines',NULL);
INSERT INTO "city" VALUES (461,'Guadalajara','Mexico',NULL);
INSERT INTO "city" VALUES (462,'Yekaterinburg','Russian Federation',NULL);
INSERT INTO "city" VALUES (463,'Gwangju','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (464,'Yinchuan','China',NULL);
INSERT INTO "city" VALUES (465,'Taizhou','China',NULL);
INSERT INTO "city" VALUES (466,'Asunción','Paraguay',NULL);
INSERT INTO "city" VALUES (467,'Yiwu','China',NULL);
INSERT INTO "city" VALUES (468,'Recife','Brazil',NULL);
INSERT INTO "city" VALUES (469,'Daejeon','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (470,'Quanzhou','China',NULL);
INSERT INTO "city" VALUES (471,'Kumasi','Ghana',NULL);
INSERT INTO "city" VALUES (472,'Madurai','India',NULL);
INSERT INTO "city" VALUES (473,'Jinhua','China',NULL);
INSERT INTO "city" VALUES (474,'Kyoto','Japan',NULL);
INSERT INTO "city" VALUES (475,'Kota Bharu','Malaysia',NULL);
INSERT INTO "city" VALUES (476,'Cixi','China',NULL);
INSERT INTO "city" VALUES (477,'Changde','China',NULL);
INSERT INTO "city" VALUES (478,'Kuala Lumpur','Malaysia',NULL);
INSERT INTO "city" VALUES (479,'Kaifeng','China',NULL);
INSERT INTO "city" VALUES (480,'Anshan','China',NULL);
INSERT INTO "city" VALUES (481,'Karaj','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (482,'Kathmandu','Nepal',NULL);
INSERT INTO "city" VALUES (483,'Baoji','China',NULL);
INSERT INTO "city" VALUES (484,'Suqian','China',NULL);
INSERT INTO "city" VALUES (485,'Multan','Pakistan',NULL);
INSERT INTO "city" VALUES (486,'Liuzhou','China',NULL);
INSERT INTO "city" VALUES (487,'Tirunelveli','India',NULL);
INSERT INTO "city" VALUES (488,'Zhangjiagang','China',NULL);
INSERT INTO "city" VALUES (489,'Kharkiv','Ukraine',NULL);
INSERT INTO "city" VALUES (490,'Agra','India',NULL);
INSERT INTO "city" VALUES (491,'Córdoba','Argentina',NULL);
INSERT INTO "city" VALUES (492,'Tabriz','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (493,'Makassar','Indonesia',NULL);
INSERT INTO "city" VALUES (494,'Jinjiang','China',NULL);
INSERT INTO "city" VALUES (495,'Bursa','Turkey',NULL);
INSERT INTO "city" VALUES (496,'Bozhou','China',NULL);
INSERT INTO "city" VALUES (497,'Qujing','China',NULL);
INSERT INTO "city" VALUES (498,'Belém','Brazil',NULL);
INSERT INTO "city" VALUES (499,'Zhanjiang','China',NULL);
INSERT INTO "city" VALUES (500,'Fushun','China',NULL);
INSERT INTO "city" VALUES (501,'Antananarivo','Madagascar',NULL);
INSERT INTO "city" VALUES (502,'Rājkot','India',NULL);
INSERT INTO "city" VALUES (503,'Luoyang','China',NULL);
INSERT INTO "city" VALUES (504,'Hyderabad','Pakistan',NULL);
INSERT INTO "city" VALUES (505,'Gujranwala','Pakistan',NULL);
INSERT INTO "city" VALUES (506,'Guankou','China',NULL);
INSERT INTO "city" VALUES (507,'Lubumbashi','Congo, Democratic Republic of the',NULL);
INSERT INTO "city" VALUES (508,'Porto Alegre','Brazil',NULL);
INSERT INTO "city" VALUES (509,'Milan','Italy',NULL);
INSERT INTO "city" VALUES (510,'South Tangerang','Indonesia',NULL);
INSERT INTO "city" VALUES (511,'Najafgarh','India',NULL);
INSERT INTO "city" VALUES (512,'Handan','China',NULL);
INSERT INTO "city" VALUES (513,'Kampala','Uganda',NULL);
INSERT INTO "city" VALUES (514,'Yichang','China',NULL);
INSERT INTO "city" VALUES (515,'Heze','China',NULL);
INSERT INTO "city" VALUES (516,'Khulna','Bangladesh',NULL);
INSERT INTO "city" VALUES (517,'Jamshedpur','India',NULL);
INSERT INTO "city" VALUES (518,'Douala','Cameroon',NULL);
INSERT INTO "city" VALUES (519,'Saitama','Japan',NULL);
INSERT INTO "city" VALUES (520,'Gorakhpur','India',NULL);
INSERT INTO "city" VALUES (521,'Sharjah','United Arab Emirates',NULL);
INSERT INTO "city" VALUES (522,'Ciudad Juárez','Mexico',NULL);
INSERT INTO "city" VALUES (523,'Liupanshui','China',NULL);
INSERT INTO "city" VALUES (524,'Maoming','China',NULL);
INSERT INTO "city" VALUES (525,'Tijuana','Mexico',NULL);
INSERT INTO "city" VALUES (526,'Callao','Peru',NULL);
INSERT INTO "city" VALUES (527,'Medina','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (528,'Yaoundé','Cameroon',NULL);
INSERT INTO "city" VALUES (529,'Bamako','Mali',NULL);
INSERT INTO "city" VALUES (530,'Qinzhou','China',NULL);
INSERT INTO "city" VALUES (531,'Luohe','China',NULL);
INSERT INTO "city" VALUES (532,'Xiangyang','China',NULL);
INSERT INTO "city" VALUES (533,'Yangjiang','China',NULL);
INSERT INTO "city" VALUES (534,'Nashik','India',NULL);
INSERT INTO "city" VALUES (535,'Yixing','China',NULL);
INSERT INTO "city" VALUES (536,'Brazzaville','Congo',NULL);
INSERT INTO "city" VALUES (537,'Pimpri','India',NULL);
INSERT INTO "city" VALUES (538,'Amman','Jordan',NULL);
INSERT INTO "city" VALUES (539,'Budta','Philippines',NULL);
INSERT INTO "city" VALUES (540,'Belgrade','Serbia',NULL);
INSERT INTO "city" VALUES (541,'Montevideo','Uruguay',NULL);
INSERT INTO "city" VALUES (542,'Lusaka','Zambia',NULL);
INSERT INTO "city" VALUES (543,'Xuchang','China',NULL);
INSERT INTO "city" VALUES (544,'Kalyān','India',NULL);
INSERT INTO "city" VALUES (545,'Zigong','China',NULL);
INSERT INTO "city" VALUES (546,'Thāne','India',NULL);
INSERT INTO "city" VALUES (547,'Munich','Germany',NULL);
INSERT INTO "city" VALUES (548,'Nizhniy Novgorod','Russian Federation',NULL);
INSERT INTO "city" VALUES (549,'Xuzhou','China',NULL);
INSERT INTO "city" VALUES (550,'Dammam','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (551,'Ra’s Bayrūt','Lebanon',NULL);
INSERT INTO "city" VALUES (552,'Neijiang','China',NULL);
INSERT INTO "city" VALUES (553,'Shiraz','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (554,'Yiyang','China',NULL);
INSERT INTO "city" VALUES (555,'Adana','Turkey',NULL);
INSERT INTO "city" VALUES (556,'Kazan','Russian Federation',NULL);
INSERT INTO "city" VALUES (557,'Suwon','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (558,'Jining','China',NULL);
INSERT INTO "city" VALUES (559,'Shubrā al Khaymah','Egypt',NULL);
INSERT INTO "city" VALUES (560,'León de los Aldama','Mexico',NULL);
INSERT INTO "city" VALUES (561,'Abuja','Nigeria',NULL);
INSERT INTO "city" VALUES (562,'Port-au-Prince','Haiti',NULL);
INSERT INTO "city" VALUES (563,'Xinyang','China',NULL);
INSERT INTO "city" VALUES (564,'Liaocheng','China',NULL);
INSERT INTO "city" VALUES (565,'Jinzhong','China',NULL);
INSERT INTO "city" VALUES (566,'Adelaide','Australia',NULL);
INSERT INTO "city" VALUES (567,'Meerut','India',NULL);
INSERT INTO "city" VALUES (568,'Nowrangapur','India',NULL);
INSERT INTO "city" VALUES (569,'Faridabad','India',NULL);
INSERT INTO "city" VALUES (570,'Peshawar','Pakistan',NULL);
INSERT INTO "city" VALUES (571,'Changzhi','China',NULL);
INSERT INTO "city" VALUES (572,'Tianshui','China',NULL);
INSERT INTO "city" VALUES (573,'Mombasa','Kenya',NULL);
INSERT INTO "city" VALUES (574,'Mandalay','Myanmar',NULL);
INSERT INTO "city" VALUES (575,'Barranquilla','Colombia',NULL);
INSERT INTO "city" VALUES (576,'Chelyabinsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (577,'Mérida','Mexico',NULL);
INSERT INTO "city" VALUES (578,'Santiago de los Caballeros','Dominican Republic',NULL);
INSERT INTO "city" VALUES (579,'Shymkent','Kazakhstan',NULL);
INSERT INTO "city" VALUES (580,'Omdurman','Sudan, The Republic of',NULL);
INSERT INTO "city" VALUES (581,'Hiroshima','Japan',NULL);
INSERT INTO "city" VALUES (582,'Weinan','China',NULL);
INSERT INTO "city" VALUES (583,'Ghāziābād','India',NULL);
INSERT INTO "city" VALUES (584,'Dhanbad','India',NULL);
INSERT INTO "city" VALUES (585,'Dombivli','India',NULL);
INSERT INTO "city" VALUES (586,'Maputo','Mozambique',NULL);
INSERT INTO "city" VALUES (587,'Gustavo Adolfo Madero','Mexico',NULL);
INSERT INTO "city" VALUES (588,'Jiaxing','China',NULL);
INSERT INTO "city" VALUES (589,'Rosario','Argentina',NULL);
INSERT INTO "city" VALUES (590,'Omsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (591,'Goiânia','Brazil',NULL);
INSERT INTO "city" VALUES (592,'Guarulhos','Brazil',NULL);
INSERT INTO "city" VALUES (593,'Bandar Lampung','Indonesia',NULL);
INSERT INTO "city" VALUES (594,'Prague','Czech Republic',NULL);
INSERT INTO "city" VALUES (595,'Varanasi','India',NULL);
INSERT INTO "city" VALUES (596,'Batam','Indonesia',NULL);
INSERT INTO "city" VALUES (597,'Jiujiang','China',NULL);
INSERT INTO "city" VALUES (598,'Samara','Russian Federation',NULL);
INSERT INTO "city" VALUES (599,'Copenhagen','Denmark',NULL);
INSERT INTO "city" VALUES (600,'Sofia','Bulgaria',NULL);
INSERT INTO "city" VALUES (601,'Tripoli','Libyan Arab Jamahiriya',NULL);
INSERT INTO "city" VALUES (602,'Anyang','China',NULL);
INSERT INTO "city" VALUES (603,'Zapopan','Mexico',NULL);
INSERT INTO "city" VALUES (604,'Birmingham','United Kingdom',NULL);
INSERT INTO "city" VALUES (605,'Bijie','China',NULL);
INSERT INTO "city" VALUES (606,'Monterrey','Mexico',NULL);
INSERT INTO "city" VALUES (607,'Kigali','Rwanda',NULL);
INSERT INTO "city" VALUES (608,'Rostov-na-Donu','Russian Federation',NULL);
INSERT INTO "city" VALUES (609,'Zhuzhou','China',NULL);
INSERT INTO "city" VALUES (610,'Malingao','Philippines',NULL);
INSERT INTO "city" VALUES (611,'Ufa','Russian Federation',NULL);
INSERT INTO "city" VALUES (612,'Ranchi','India',NULL);
INSERT INTO "city" VALUES (613,'Baku','Azerbaijan',NULL);
INSERT INTO "city" VALUES (614,'Shangrao','China',NULL);
INSERT INTO "city" VALUES (615,'Barquisimeto','Venezuela, Bolivarian Rep. of',NULL);
INSERT INTO "city" VALUES (616,'Huaibei','China',NULL);
INSERT INTO "city" VALUES (617,'Meishan','China',NULL);
INSERT INTO "city" VALUES (618,'Ciudad Nezahualcoyotl','Mexico',NULL);
INSERT INTO "city" VALUES (619,'Bogor','Indonesia',NULL);
INSERT INTO "city" VALUES (620,'Sendai','Japan',NULL);
INSERT INTO "city" VALUES (621,'Yerevan','Armenia',NULL);
INSERT INTO "city" VALUES (622,'Amritsar','India',NULL);
INSERT INTO "city" VALUES (623,'Krasnoyarsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (624,'Fuzhou','China',NULL);
INSERT INTO "city" VALUES (625,'Ouagadougou','Burkina Faso',NULL);
INSERT INTO "city" VALUES (626,'Guigang','China',NULL);
INSERT INTO "city" VALUES (627,'Hengyang','China',NULL);
INSERT INTO "city" VALUES (628,'Allahābād','India',NULL);
INSERT INTO "city" VALUES (629,'Goyang-si','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (630,'Gaziantep','Turkey',NULL);
INSERT INTO "city" VALUES (631,'Visakhapatnam','India',NULL);
INSERT INTO "city" VALUES (632,'Yulin','China',NULL);
INSERT INTO "city" VALUES (633,'Jingzhou','China',NULL);
INSERT INTO "city" VALUES (634,'Tbilisi','Georgia',NULL);
INSERT INTO "city" VALUES (635,'Voronezh','Russian Federation',NULL);
INSERT INTO "city" VALUES (636,'Xinxiang','China',NULL);
INSERT INTO "city" VALUES (637,'Yichun','China',NULL);
INSERT INTO "city" VALUES (638,'Taichung','Taiwan, China',NULL);
INSERT INTO "city" VALUES (639,'Teni','India',NULL);
INSERT INTO "city" VALUES (640,'Xianyang','China',NULL);
INSERT INTO "city" VALUES (641,'Mexicali','Mexico',NULL);
INSERT INTO "city" VALUES (642,'Matola','Mozambique',NULL);
INSERT INTO "city" VALUES (643,'Seongnam-si','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (644,'Campinas','Brazil',NULL);
INSERT INTO "city" VALUES (645,'Sanya','China',NULL);
INSERT INTO "city" VALUES (646,'Jabalpur','India',NULL);
INSERT INTO "city" VALUES (647,'Shaoguan','China',NULL);
INSERT INTO "city" VALUES (648,'Hāora','India',NULL);
INSERT INTO "city" VALUES (649,'Longyan','China',NULL);
INSERT INTO "city" VALUES (650,'Donetsk','Ukraine',NULL);
INSERT INTO "city" VALUES (651,'Dublin','Ireland',NULL);
INSERT INTO "city" VALUES (652,'Tiruchirappalli','India',NULL);
INSERT INTO "city" VALUES (653,'Yongzhou','China',NULL);
INSERT INTO "city" VALUES (654,'Calgary','Canada',NULL);
INSERT INTO "city" VALUES (655,'Brussels','Belgium',NULL);
INSERT INTO "city" VALUES (656,'Aurangabad','India',NULL);
INSERT INTO "city" VALUES (657,'Huzhou','China',NULL);
INSERT INTO "city" VALUES (658,'Volgograd','Russian Federation',NULL);
INSERT INTO "city" VALUES (659,'Odesa','Ukraine',NULL);
INSERT INTO "city" VALUES (660,'Edmonton','Canada',NULL);
INSERT INTO "city" VALUES (661,'Wuwei','China',NULL);
INSERT INTO "city" VALUES (662,'Arequipa','Peru',NULL);
INSERT INTO "city" VALUES (663,'Hanzhong','China',NULL);
INSERT INTO "city" VALUES (664,'Hezhou','China',NULL);
INSERT INTO "city" VALUES (665,'Nova Iguaçu','Brazil',NULL);
INSERT INTO "city" VALUES (666,'Shivaji Nagar','India',NULL);
INSERT INTO "city" VALUES (667,'Zhu Cheng City','China',NULL);
INSERT INTO "city" VALUES (668,'Dongying','China',NULL);
INSERT INTO "city" VALUES (669,'Luzhou','China',NULL);
INSERT INTO "city" VALUES (670,'Dnipro','Ukraine',NULL);
INSERT INTO "city" VALUES (671,'Solāpur','India',NULL);
INSERT INTO "city" VALUES (672,'Guatemala City','Guatemala',NULL);
INSERT INTO "city" VALUES (673,'Meizhou','China',NULL);
INSERT INTO "city" VALUES (674,'Yueyang','China',NULL);
INSERT INTO "city" VALUES (675,'Laiwu','China',NULL);
INSERT INTO "city" VALUES (676,'Da Nang','Viet Nam',NULL);
INSERT INTO "city" VALUES (677,'Benxi','China',NULL);
INSERT INTO "city" VALUES (678,'Pekanbaru','Indonesia',NULL);
INSERT INTO "city" VALUES (679,'Perm','Russian Federation',NULL);
INSERT INTO "city" VALUES (680,'Chiba','Japan',NULL);
INSERT INTO "city" VALUES (681,'Pingdingshan','China',NULL);
INSERT INTO "city" VALUES (682,'Srinagar','India',NULL);
INSERT INTO "city" VALUES (683,'Zaria','Nigeria',NULL);
INSERT INTO "city" VALUES (684,'Managua','Nicaragua',NULL);
INSERT INTO "city" VALUES (685,'Bengbu','China',NULL);
INSERT INTO "city" VALUES (686,'Port Elizabeth','South Africa',NULL);
INSERT INTO "city" VALUES (687,'Fès','Morocco',NULL);
INSERT INTO "city" VALUES (688,'Cebu City','Philippines',NULL);
INSERT INTO "city" VALUES (689,'Köln','Germany',NULL);
INSERT INTO "city" VALUES (690,'Tiruppur','India',NULL);
INSERT INTO "city" VALUES (691,'Ulsan','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (692,'Chandīgarh','India',NULL);
INSERT INTO "city" VALUES (693,'Naples','Italy',NULL);
INSERT INTO "city" VALUES (694,'Xiangtan','China',NULL);
INSERT INTO "city" VALUES (695,'Linfen','China',NULL);
INSERT INTO "city" VALUES (696,'Victoria','Hong Kong, China',NULL);
INSERT INTO "city" VALUES (697,'Maceió','Brazil',NULL);
INSERT INTO "city" VALUES (698,'Zhenjiang','China',NULL);
INSERT INTO "city" VALUES (699,'Ciudad Guayana','Venezuela, Bolivarian Rep. of',NULL);
INSERT INTO "city" VALUES (700,'Sulţānah','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (701,'Kitakyushu','Japan',NULL);
INSERT INTO "city" VALUES (702,'Monrovia','Liberia',NULL);
INSERT INTO "city" VALUES (703,'Kingston','Jamaica',NULL);
INSERT INTO "city" VALUES (704,'Baoshan','China',NULL);
INSERT INTO "city" VALUES (705,'Erbil','Iraq',NULL);
INSERT INTO "city" VALUES (706,'Rui’an','China',NULL);
INSERT INTO "city" VALUES (707,'Chihuahua','Mexico',NULL);
INSERT INTO "city" VALUES (708,'Nay Pyi Taw','Myanmar',NULL);
INSERT INTO "city" VALUES (709,'Jodhpur','India',NULL);
INSERT INTO "city" VALUES (710,'Trujillo','Peru',NULL);
INSERT INTO "city" VALUES (711,'Salem','India',NULL);
INSERT INTO "city" VALUES (712,'São Luís','Brazil',NULL);
INSERT INTO "city" VALUES (713,'Cartagena','Colombia',NULL);
INSERT INTO "city" VALUES (714,'Laibin','China',NULL);
INSERT INTO "city" VALUES (715,'Padang','Indonesia',NULL);
INSERT INTO "city" VALUES (716,'Xiaogan','China',NULL);
INSERT INTO "city" VALUES (717,'Ziyang','China',NULL);
INSERT INTO "city" VALUES (718,'Sale','Morocco',NULL);
INSERT INTO "city" VALUES (719,'Quzhou','China',NULL);
INSERT INTO "city" VALUES (720,'Petaling Jaya','Malaysia',NULL);
INSERT INTO "city" VALUES (721,'Abobo','Côte d''Ivoire',NULL);
INSERT INTO "city" VALUES (722,'Bishkek','Kyrgyzstan',NULL);
INSERT INTO "city" VALUES (723,'Abū Ghurayb','Iraq',NULL);
INSERT INTO "city" VALUES (724,'Qom','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (725,'Zaozhuang','China',NULL);
INSERT INTO "city" VALUES (726,'Krasnodar','Russian Federation',NULL);
INSERT INTO "city" VALUES (727,'Guwahati','India',NULL);
INSERT INTO "city" VALUES (728,'Aba','Nigeria',NULL);
INSERT INTO "city" VALUES (729,'Pingxiang','China',NULL);
INSERT INTO "city" VALUES (730,'Zhoushan','China',NULL);
INSERT INTO "city" VALUES (731,'Gwalior','India',NULL);
INSERT INTO "city" VALUES (732,'Qiqihar','China',NULL);
INSERT INTO "city" VALUES (733,'Klang','Malaysia',NULL);
INSERT INTO "city" VALUES (734,'Mendoza','Argentina',NULL);
INSERT INTO "city" VALUES (735,'Konya','Turkey',NULL);
INSERT INTO "city" VALUES (736,'Puning','China',NULL);
INSERT INTO "city" VALUES (737,'Mbuji-Mayi','Congo, Democratic Republic of the',NULL);
INSERT INTO "city" VALUES (738,'Vijayawada','India',NULL);
INSERT INTO "city" VALUES (739,'Pikine','Senegal',NULL);
INSERT INTO "city" VALUES (740,'Bhiwandi','India',NULL);
INSERT INTO "city" VALUES (741,'Marseille','France',NULL);
INSERT INTO "city" VALUES (742,'Ankang','China',NULL);
INSERT INTO "city" VALUES (743,'Mysore','India',NULL);
INSERT INTO "city" VALUES (744,'Langfang','China',NULL);
INSERT INTO "city" VALUES (745,'Jiaozuo','China',NULL);
INSERT INTO "city" VALUES (746,'Liverpool','United Kingdom',NULL);
INSERT INTO "city" VALUES (747,'Rohini','India',NULL);
INSERT INTO "city" VALUES (748,'Wanxian','China',NULL);
INSERT INTO "city" VALUES (749,'Guang’an','China',NULL);
INSERT INTO "city" VALUES (750,'Tegucigalpa','Honduras',NULL);
INSERT INTO "city" VALUES (751,'Bucheon-si','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (752,'Turin','Italy',NULL);
INSERT INTO "city" VALUES (753,'Cheongju-si','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (754,'Saratov','Russian Federation',NULL);
INSERT INTO "city" VALUES (755,'Ulan Bator','Mongolia',NULL);
INSERT INTO "city" VALUES (756,'Weihai','China',NULL);
INSERT INTO "city" VALUES (757,'Takeo','Cambodia',NULL);
INSERT INTO "city" VALUES (758,'Malang','Indonesia',NULL);
INSERT INTO "city" VALUES (759,'Haiphong','Viet Nam',NULL);
INSERT INTO "city" VALUES (760,'Cochabamba','Bolivia',NULL);
INSERT INTO "city" VALUES (761,'Ahvaz','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (762,'Hubli','India',NULL);
INSERT INTO "city" VALUES (763,'Ipoh','Malaysia',NULL);
INSERT INTO "city" VALUES (764,'Zhabei','China',NULL);
INSERT INTO "city" VALUES (765,'Xinyu','China',NULL);
INSERT INTO "city" VALUES (766,'Marrakesh','Morocco',NULL);
INSERT INTO "city" VALUES (767,'Yibin','China',NULL);
INSERT INTO "city" VALUES (768,'Denpasar','Indonesia',NULL);
INSERT INTO "city" VALUES (769,'Kampung Baru Subang','Malaysia',NULL);
INSERT INTO "city" VALUES (770,'Samarinda','Indonesia',NULL);
INSERT INTO "city" VALUES (771,'Taicang','China',NULL);
INSERT INTO "city" VALUES (772,'Biên Hòa','Viet Nam',NULL);
INSERT INTO "city" VALUES (773,'Chenzhou','China',NULL);
INSERT INTO "city" VALUES (774,'Duque de Caxias','Brazil',NULL);
INSERT INTO "city" VALUES (775,'Jos','Nigeria',NULL);
INSERT INTO "city" VALUES (776,'Ilorin','Nigeria',NULL);
INSERT INTO "city" VALUES (777,'Ottawa','Canada',NULL);
INSERT INTO "city" VALUES (778,'Cần Thơ','Viet Nam',NULL);
INSERT INTO "city" VALUES (779,'Culiacán','Mexico',NULL);
INSERT INTO "city" VALUES (780,'Benghazi','Libyan Arab Jamahiriya',NULL);
INSERT INTO "city" VALUES (781,'Anqing','China',NULL);
INSERT INTO "city" VALUES (782,'Freetown','Sierra Leone',NULL);
INSERT INTO "city" VALUES (783,'San Pedro Sula','Honduras',NULL);
INSERT INTO "city" VALUES (784,'Jerusalem','Israel',NULL);
INSERT INTO "city" VALUES (785,'Narela','India',NULL);
INSERT INTO "city" VALUES (786,'Xingtai','China',NULL);
INSERT INTO "city" VALUES (787,'Niigata','Japan',NULL);
INSERT INTO "city" VALUES (788,'Muscat','Oman',NULL);
INSERT INTO "city" VALUES (789,'Zarqa','Jordan',NULL);
INSERT INTO "city" VALUES (790,'Naucalpan de Juárez','Mexico',NULL);
INSERT INTO "city" VALUES (791,'Çankaya','Turkey',NULL);
INSERT INTO "city" VALUES (792,'Hamamatsu','Japan',NULL);
INSERT INTO "city" VALUES (793,'Valencia','Spain',NULL);
INSERT INTO "city" VALUES (794,'Rahim Yar Khan','Pakistan',NULL);
INSERT INTO "city" VALUES (795,'Pasragad Branch','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (796,'Zhaotong','China',NULL);
INSERT INTO "city" VALUES (797,'Panzhihua','China',NULL);
INSERT INTO "city" VALUES (798,'Boumerdas','Algeria',NULL);
INSERT INTO "city" VALUES (799,'Jalandhar','India',NULL);
INSERT INTO "city" VALUES (800,'Thiruvananthapuram','India',NULL);
INSERT INTO "city" VALUES (801,'Chuzhou','China',NULL);
INSERT INTO "city" VALUES (802,'Sakai','Japan',NULL);
INSERT INTO "city" VALUES (803,'San Miguel de Tucumán','Argentina',NULL);
INSERT INTO "city" VALUES (804,'Port Said','Egypt',NULL);
INSERT INTO "city" VALUES (805,'Cotonou','Benin',NULL);
INSERT INTO "city" VALUES (806,'Cúcuta','Colombia',NULL);
INSERT INTO "city" VALUES (807,'Homs','Syrian Arab Republic',NULL);
INSERT INTO "city" VALUES (808,'Xuanzhou','China',NULL);
INSERT INTO "city" VALUES (809,'Niamey','Niger',NULL);
INSERT INTO "city" VALUES (810,'Tainan','Taiwan, China',NULL);
INSERT INTO "city" VALUES (811,'Shangyu','China',NULL);
INSERT INTO "city" VALUES (812,'Łódź','Poland',NULL);
INSERT INTO "city" VALUES (813,'Tyumen','Russian Federation',NULL);
INSERT INTO "city" VALUES (814,'Kahrīz','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (815,'Anshun','China',NULL);
INSERT INTO "city" VALUES (816,'Rājshāhi','Bangladesh',NULL);
INSERT INTO "city" VALUES (817,'Kota','India',NULL);
INSERT INTO "city" VALUES (818,'Natal','Brazil',NULL);
INSERT INTO "city" VALUES (819,'Bhubaneshwar','India',NULL);
INSERT INTO "city" VALUES (820,'Wuzhou','China',NULL);
INSERT INTO "city" VALUES (821,'Qinhuangdao','China',NULL);
INSERT INTO "city" VALUES (822,'Maiduguri','Nigeria',NULL);
INSERT INTO "city" VALUES (823,'Antalya','Turkey',NULL);
INSERT INTO "city" VALUES (824,'Kraków','Poland',NULL);
INSERT INTO "city" VALUES (825,'Alīgarh','India',NULL);
INSERT INTO "city" VALUES (826,'Shaoyang','China',NULL);
INSERT INTO "city" VALUES (827,'Pietermaritzburg','South Africa',NULL);
INSERT INTO "city" VALUES (828,'Lomé','Togo',NULL);
INSERT INTO "city" VALUES (829,'Winnipeg','Canada',NULL);
INSERT INTO "city" VALUES (830,'Bağcılar','Turkey',NULL);
INSERT INTO "city" VALUES (831,'Bareilly','India',NULL);
INSERT INTO "city" VALUES (832,'Buraydah','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (833,'Teresina','Brazil',NULL);
INSERT INTO "city" VALUES (834,'São Bernardo do Campo','Brazil',NULL);
INSERT INTO "city" VALUES (835,'Hegang','China',NULL);
INSERT INTO "city" VALUES (836,'Morelia','Mexico',NULL);
INSERT INTO "city" VALUES (837,'Nampula','Mozambique',NULL);
INSERT INTO "city" VALUES (838,'Riga','Latvia',NULL);
INSERT INTO "city" VALUES (839,'Amsterdam','Netherlands',NULL);
INSERT INTO "city" VALUES (840,'Ma’anshan','China',NULL);
INSERT INTO "city" VALUES (841,'Kumamoto','Japan',NULL);
INSERT INTO "city" VALUES (842,'Zaporizhzhya','Ukraine',NULL);
INSERT INTO "city" VALUES (843,'Oyo','Nigeria',NULL);
INSERT INTO "city" VALUES (844,'Deyang','China',NULL);
INSERT INTO "city" VALUES (845,'Quetta','Pakistan',NULL);
INSERT INTO "city" VALUES (846,'Yangquan','China',NULL);
INSERT INTO "city" VALUES (847,'Campo Grande','Brazil',NULL);
INSERT INTO "city" VALUES (848,'Ashgabat','Turkmenistan',NULL);
INSERT INTO "city" VALUES (849,'Álvaro Obregón','Mexico',NULL);
INSERT INTO "city" VALUES (850,'Muzaffarābād','Pakistan',NULL);
INSERT INTO "city" VALUES (851,'Wanzhou','China',NULL);
INSERT INTO "city" VALUES (852,'As Sulaymānīyah','Iraq',NULL);
INSERT INTO "city" VALUES (853,'San Luis Potosí','Mexico',NULL);
INSERT INTO "city" VALUES (854,'Aguascalientes','Mexico',NULL);
INSERT INTO "city" VALUES (855,'Zhumadian','China',NULL);
INSERT INTO "city" VALUES (856,'Morādābād','India',NULL);
INSERT INTO "city" VALUES (857,'N''Djamena','Chad',NULL);
INSERT INTO "city" VALUES (858,'Okayama','Japan',NULL);
INSERT INTO "city" VALUES (859,'Lviv','Ukraine',NULL);
INSERT INTO "city" VALUES (860,'Ansan-si','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (861,'Hermosillo','Mexico',NULL);
INSERT INTO "city" VALUES (862,'Saltillo','Mexico',NULL);
INSERT INTO "city" VALUES (863,'Subang Jaya','Malaysia',NULL);
INSERT INTO "city" VALUES (864,'Tolyatti','Russian Federation',NULL);
INSERT INTO "city" VALUES (865,'Jaboatão','Brazil',NULL);
INSERT INTO "city" VALUES (866,'Santo Domingo Oeste','Dominican Republic',NULL);
INSERT INTO "city" VALUES (867,'Battagram','Pakistan',NULL);
INSERT INTO "city" VALUES (868,'Santo Domingo Este','Dominican Republic',NULL);
INSERT INTO "city" VALUES (869,'Suez','Egypt',NULL);
INSERT INTO "city" VALUES (870,'Changzhi','China',NULL);
INSERT INTO "city" VALUES (871,'Bulawayo','Zimbabwe',NULL);
INSERT INTO "city" VALUES (872,'Zagreb','Croatia',NULL);
INSERT INTO "city" VALUES (873,'Agadir','Morocco',NULL);
INSERT INTO "city" VALUES (874,'Sarajevo','Bosnia and Herzegovina',NULL);
INSERT INTO "city" VALUES (875,'La Plata','Argentina',NULL);
INSERT INTO "city" VALUES (876,'Bauchi','Nigeria',NULL);
INSERT INTO "city" VALUES (877,'Tunis','Tunisia',NULL);
INSERT INTO "city" VALUES (878,'Zhangjiakou','China',NULL);
INSERT INTO "city" VALUES (879,'Serang','Indonesia',NULL);
INSERT INTO "city" VALUES (880,'Shizuoka','Japan',NULL);
INSERT INTO "city" VALUES (881,'Paranaque City','Philippines',NULL);
INSERT INTO "city" VALUES (882,'Fuxin','China',NULL);
INSERT INTO "city" VALUES (883,'Enugu','Nigeria',NULL);
INSERT INTO "city" VALUES (884,'Ta’if','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (885,'Tangier','Morocco',NULL);
INSERT INTO "city" VALUES (886,'Huangshi','China',NULL);
INSERT INTO "city" VALUES (887,'Liaoyang','China',NULL);
INSERT INTO "city" VALUES (888,'Baise','China',NULL);
INSERT INTO "city" VALUES (889,'Sheffield','United Kingdom',NULL);
INSERT INTO "city" VALUES (890,'Sevilla','Spain',NULL);
INSERT INTO "city" VALUES (891,'Binzhou','China',NULL);
INSERT INTO "city" VALUES (892,'Yuncheng','China',NULL);
INSERT INTO "city" VALUES (893,'Raipur','India',NULL);
INSERT INTO "city" VALUES (894,'General Santos','Philippines',NULL);
INSERT INTO "city" VALUES (895,'Dezhou','China',NULL);
INSERT INTO "city" VALUES (896,'Dushanbe','Tajikistan',NULL);
INSERT INTO "city" VALUES (897,'Osasco','Brazil',NULL);
INSERT INTO "city" VALUES (898,'Zaragoza','Spain',NULL);
INSERT INTO "city" VALUES (899,'Gorakhpur','India',NULL);
INSERT INTO "city" VALUES (900,'Guadalupe','Mexico',NULL);
INSERT INTO "city" VALUES (901,'Acapulco de Juárez','Mexico',NULL);
INSERT INTO "city" VALUES (902,'Sanmenxia','China',NULL);
INSERT INTO "city" VALUES (903,'E’zhou','China',NULL);
INSERT INTO "city" VALUES (904,'Mississauga','Canada',NULL);
INSERT INTO "city" VALUES (905,'Tabuk','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (906,'Cheonan','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (907,'Mudanjiang','China',NULL);
INSERT INTO "city" VALUES (908,'Athens','Greece',NULL);
INSERT INTO "city" VALUES (909,'Leshan','China',NULL);
INSERT INTO "city" VALUES (910,'Santo André','Brazil',NULL);
INSERT INTO "city" VALUES (911,'Rizhao','China',NULL);
INSERT INTO "city" VALUES (912,'Nouakchott','Mauritania',NULL);
INSERT INTO "city" VALUES (913,'Pointe-Noire','Congo',NULL);
INSERT INTO "city" VALUES (914,'Pontianak','Indonesia',NULL);
INSERT INTO "city" VALUES (915,'Banjarmasin','Indonesia',NULL);
INSERT INTO "city" VALUES (916,'Puducherry','India',NULL);
INSERT INTO "city" VALUES (917,'Suining','China',NULL);
INSERT INTO "city" VALUES (918,'Puyang','China',NULL);
INSERT INTO "city" VALUES (919,'Tlalnepantla','Mexico',NULL);
INSERT INTO "city" VALUES (920,'Jeonju','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (921,'João Pessoa','Brazil',NULL);
INSERT INTO "city" VALUES (922,'Frankfurt am Main','Germany',NULL);
INSERT INTO "city" VALUES (923,'Macau','Macau, China',NULL);
INSERT INTO "city" VALUES (924,'Palermo','Italy',NULL);
INSERT INTO "city" VALUES (925,'Izhevsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (926,'Colombo','Sri Lanka',NULL);
INSERT INTO "city" VALUES (927,'Lilongwe','Malawi',NULL);
INSERT INTO "city" VALUES (928,'Oran','Algeria',NULL);
INSERT INTO "city" VALUES (929,'Diyarbakır','Turkey',NULL);
INSERT INTO "city" VALUES (930,'Honchō','Japan',NULL);
INSERT INTO "city" VALUES (931,'Taguig','Philippines',NULL);
INSERT INTO "city" VALUES (932,'Hwaseong-si','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (933,'Gold Coast','Australia',NULL);
INSERT INTO "city" VALUES (934,'Kotli','Pakistan',NULL);
INSERT INTO "city" VALUES (935,'Al Aḩmadī','Kuwait',NULL);
INSERT INTO "city" VALUES (936,'Cuenca','Ecuador',NULL);
INSERT INTO "city" VALUES (937,'Yogyakarta','Indonesia',NULL);
INSERT INTO "city" VALUES (938,'Chisinau','Moldova, Republic of',NULL);
INSERT INTO "city" VALUES (939,'Wrocław','Poland',NULL);
INSERT INTO "city" VALUES (940,'Hebi','China',NULL);
INSERT INTO "city" VALUES (941,'Tébessa','Algeria',NULL);
INSERT INTO "city" VALUES (942,'Jingmen','China',NULL);
INSERT INTO "city" VALUES (943,'Barnaul','Russian Federation',NULL);
INSERT INTO "city" VALUES (944,'Dandong','China',NULL);
INSERT INTO "city" VALUES (945,'Stuttgart','Germany',NULL);
INSERT INTO "city" VALUES (946,'Jaboatão dos Guararapes','Brazil',NULL);
INSERT INTO "city" VALUES (947,'Cancún','Mexico',NULL);
INSERT INTO "city" VALUES (948,'Contagem','Brazil',NULL);
INSERT INTO "city" VALUES (949,'Ulyanovsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (950,'Bhilai','India',NULL);
INSERT INTO "city" VALUES (951,'Panshan','China',NULL);
INSERT INTO "city" VALUES (952,'Kryvyy Rih','Ukraine',NULL);
INSERT INTO "city" VALUES (953,'Djibouti','Djibouti',NULL);
INSERT INTO "city" VALUES (954,'Irkutsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (955,'Al Manşūrah','Egypt',NULL);
INSERT INTO "city" VALUES (956,'Kermanshah','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (957,'Düsseldorf','Germany',NULL);
INSERT INTO "city" VALUES (958,'Coyoacán','Mexico',NULL);
INSERT INTO "city" VALUES (959,'Ribeirão Preto','Brazil',NULL);
INSERT INTO "city" VALUES (960,'Feira de Santana','Brazil',NULL);
INSERT INTO "city" VALUES (961,'Jiaozhou','China',NULL);
INSERT INTO "city" VALUES (962,'Suizhou','China',NULL);
INSERT INTO "city" VALUES (963,'Khabarovsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (964,'Al Ḩudaydah','Yemen',NULL);
INSERT INTO "city" VALUES (965,'Pasig City','Philippines',NULL);
INSERT INTO "city" VALUES (966,'Bristol','United Kingdom',NULL);
INSERT INTO "city" VALUES (967,'Chizhou','China',NULL);
INSERT INTO "city" VALUES (968,'Taiz','Yemen',NULL);
INSERT INTO "city" VALUES (969,'São José dos Campos','Brazil',NULL);
INSERT INTO "city" VALUES (970,'Santa María Chimalhuacán','Mexico',NULL);
INSERT INTO "city" VALUES (971,'Ya''an','China',NULL);
INSERT INTO "city" VALUES (972,'Borivli','India',NULL);
INSERT INTO "city" VALUES (973,'Torreón','Mexico',NULL);
INSERT INTO "city" VALUES (974,'Yaroslavl','Russian Federation',NULL);
INSERT INTO "city" VALUES (975,'Kawaguchi','Japan',NULL);
INSERT INTO "city" VALUES (976,'Jambi City','Indonesia',NULL);
INSERT INTO "city" VALUES (977,'Ha''il','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (978,'Bhavnagar','India',NULL);
INSERT INTO "city" VALUES (979,'Benoni','South Africa',NULL);
INSERT INTO "city" VALUES (980,'Vladivostok','Russian Federation',NULL);
INSERT INTO "city" VALUES (981,'Cochin','India',NULL);
INSERT INTO "city" VALUES (982,'Jinzhou','China',NULL);
INSERT INTO "city" VALUES (983,'Amrāvati','India',NULL);
INSERT INTO "city" VALUES (984,'Abu Dhabi','United Arab Emirates',NULL);
INSERT INTO "city" VALUES (985,'Sanming','China',NULL);
INSERT INTO "city" VALUES (986,'Islamabad','Pakistan',NULL);
INSERT INTO "city" VALUES (987,'Kirkuk','Iraq',NULL);
INSERT INTO "city" VALUES (988,'Sāngli','India',NULL);
INSERT INTO "city" VALUES (989,'Vancouver','Canada',NULL);
INSERT INTO "city" VALUES (990,'Shuangyashan','China',NULL);
INSERT INTO "city" VALUES (991,'Situbondo','Indonesia',NULL);
INSERT INTO "city" VALUES (992,'Rotterdam','Netherlands',NULL);
INSERT INTO "city" VALUES (993,'Kleinzschocher','Germany',NULL);
INSERT INTO "city" VALUES (994,'Großzschocher','Germany',NULL);
INSERT INTO "city" VALUES (995,'Luancheng','China',NULL);
INSERT INTO "city" VALUES (996,'Makhachkala','Russian Federation',NULL);
INSERT INTO "city" VALUES (997,'Anyang-si','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (998,'Kagoshima','Japan',NULL);
INSERT INTO "city" VALUES (999,'Rasht','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (1000,'Brampton','Canada',NULL);
INSERT INTO "city" VALUES (1001,'Abeokuta','Nigeria',NULL);
INSERT INTO "city" VALUES (1002,'Essen','Germany',NULL);
INSERT INTO "city" VALUES (1003,'Kayseri','Turkey',NULL);
INSERT INTO "city" VALUES (1004,'Al Maḩallah al Kubrá','Egypt',NULL);
INSERT INTO "city" VALUES (1005,'Glasgow','United Kingdom',NULL);
INSERT INTO "city" VALUES (1006,'Yingkou','China',NULL);
INSERT INTO "city" VALUES (1007,'Las Piñas','Philippines',NULL);
INSERT INTO "city" VALUES (1008,'Zhangzhou','China',NULL);
INSERT INTO "city" VALUES (1009,'Reynosa','Mexico',NULL);
INSERT INTO "city" VALUES (1010,'Thuận An','Viet Nam',NULL);
INSERT INTO "city" VALUES (1011,'Dortmund','Germany',NULL);
INSERT INTO "city" VALUES (1012,'Göteborg','Sweden',NULL);
INSERT INTO "city" VALUES (1013,'Blantyre','Malawi',NULL);
INSERT INTO "city" VALUES (1014,'New Kingston','Jamaica',NULL);
INSERT INTO "city" VALUES (1015,'Üsküdar','Turkey',NULL);
INSERT INTO "city" VALUES (1016,'Bucaramanga','Colombia',NULL);
INSERT INTO "city" VALUES (1017,'Genoa','Italy',NULL);
INSERT INTO "city" VALUES (1018,'Cuttack','India',NULL);
INSERT INTO "city" VALUES (1019,'Oslo','Norway',NULL);
INSERT INTO "city" VALUES (1020,'Malacca','Malaysia',NULL);
INSERT INTO "city" VALUES (1021,'Málaga','Spain',NULL);
INSERT INTO "city" VALUES (1022,'Khabarovsk Vtoroy','Russian Federation',NULL);
INSERT INTO "city" VALUES (1023,'Libreville','Gabon',NULL);
INSERT INTO "city" VALUES (1024,'Kerman','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (1025,'Orūmīyeh','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (1026,'Bahçelievler','Turkey',NULL);
INSERT INTO "city" VALUES (1027,'Ţanţā','Egypt',NULL);
INSERT INTO "city" VALUES (1028,'Bīkaner','India',NULL);
INSERT INTO "city" VALUES (1029,'Tlaquepaque','Mexico',NULL);
INSERT INTO "city" VALUES (1030,'Tlalpan','Mexico',NULL);
INSERT INTO "city" VALUES (1031,'Herāt','Afghanistan',NULL);
INSERT INTO "city" VALUES (1032,'Tomsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (1033,'Umraniye','Turkey',NULL);
INSERT INTO "city" VALUES (1034,'Shihezi','China',NULL);
INSERT INTO "city" VALUES (1035,'Kota Kinabalu','Malaysia',NULL);
INSERT INTO "city" VALUES (1036,'Poznań','Poland',NULL);
INSERT INTO "city" VALUES (1037,'Irbid','Jordan',NULL);
INSERT INTO "city" VALUES (1038,'Cimahi','Indonesia',NULL);
INSERT INTO "city" VALUES (1039,'Puente Alto','Chile',NULL);
INSERT INTO "city" VALUES (1040,'Bouaké','Côte d''Ivoire',NULL);
INSERT INTO "city" VALUES (1041,'Nyala','Sudan, The Republic of',NULL);
INSERT INTO "city" VALUES (1042,'Orenburg','Russian Federation',NULL);
INSERT INTO "city" VALUES (1043,'Bokāro','India',NULL);
INSERT INTO "city" VALUES (1044,'Asmara','Eritrea',NULL);
INSERT INTO "city" VALUES (1045,'Sokoto','Nigeria',NULL);
INSERT INTO "city" VALUES (1046,'Uberlândia','Brazil',NULL);
INSERT INTO "city" VALUES (1047,'Hachiōji','Japan',NULL);
INSERT INTO "city" VALUES (1048,'Wenchang','China',NULL);
INSERT INTO "city" VALUES (1049,'Hamhŭng','Korea, Dem. People''s Rep. of',NULL);
INSERT INTO "city" VALUES (1050,'Kemerovo','Russian Federation',NULL);
INSERT INTO "city" VALUES (1051,'Sorocaba','Brazil',NULL);
INSERT INTO "city" VALUES (1052,'Helsinki','Finland',NULL);
INSERT INTO "city" VALUES (1053,'Warangal','India',NULL);
INSERT INTO "city" VALUES (1054,'Dresden','Germany',NULL);
INSERT INTO "city" VALUES (1055,'Bloemfontein','South Africa',NULL);
INSERT INTO "city" VALUES (1056,'Santiago de Cuba','Cuba',NULL);
INSERT INTO "city" VALUES (1057,'Siping','China',NULL);
INSERT INTO "city" VALUES (1058,'Mar del Plata','Argentina',NULL);
INSERT INTO "city" VALUES (1059,'Huaihua','China',NULL);
INSERT INTO "city" VALUES (1060,'Bahawalpur','Pakistan',NULL);
INSERT INTO "city" VALUES (1061,'Chiclayo','Peru',NULL);
INSERT INTO "city" VALUES (1062,'Zahedan','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (1063,'Kimhae','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (1064,'Aden','Yemen',NULL);
INSERT INTO "city" VALUES (1065,'Nanded','India',NULL);
INSERT INTO "city" VALUES (1066,'Kozhikode','India',NULL);
INSERT INTO "city" VALUES (1068,'Changwon','Korea, Republic of',NULL);
INSERT INTO "city" VALUES (1069,'Jiamusi','China',NULL);
INSERT INTO "city" VALUES (1070,'Antipolo','Philippines',NULL);
INSERT INTO "city" VALUES (1071,'Korla','China',NULL);
INSERT INTO "city" VALUES (1072,'Kuantan','Malaysia',NULL);
INSERT INTO "city" VALUES (1073,'Bremen','Germany',NULL);
INSERT INTO "city" VALUES (1074,'Wanning','China',NULL);
INSERT INTO "city" VALUES (1075,'Meknès','Morocco',NULL);
INSERT INTO "city" VALUES (1076,'Xinzhou','China',NULL);
INSERT INTO "city" VALUES (1077,'Banqiao','Taiwan, China',NULL);
INSERT INTO "city" VALUES (1078,'Sargodha','Pakistan',NULL);
INSERT INTO "city" VALUES (1079,'Bangui','Central African Republic',NULL);
INSERT INTO "city" VALUES (1080,'Vilnius','Lithuania',NULL);
INSERT INTO "city" VALUES (1081,'Pingdu','China',NULL);
INSERT INTO "city" VALUES (1082,'Calamba','Philippines',NULL);
INSERT INTO "city" VALUES (1083,'Novokuznetsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (1084,'Kisangani','Congo, Democratic Republic of the',NULL);
INSERT INTO "city" VALUES (1085,'Ryazan’','Russian Federation',NULL);
INSERT INTO "city" VALUES (1086,'Ji’an','China',NULL);
INSERT INTO "city" VALUES (1087,'Mersin','Turkey',NULL);
INSERT INTO "city" VALUES (1088,'Tuxtla','Mexico',NULL);
INSERT INTO "city" VALUES (1089,'Raurkela','India',NULL);
INSERT INTO "city" VALUES (1090,'Warri','Nigeria',NULL);
INSERT INTO "city" VALUES (1091,'Guli','China',NULL);
INSERT INTO "city" VALUES (1092,'Aksu','China',NULL);
INSERT INTO "city" VALUES (1093,'Ebute Ikorodu','Nigeria',NULL);
INSERT INTO "city" VALUES (1094,'Tanggu','China',NULL);
INSERT INTO "city" VALUES (1095,'Astrakhan','Russian Federation',NULL);
INSERT INTO "city" VALUES (1096,'Beira','Mozambique',NULL);
INSERT INTO "city" VALUES (1097,'Québec','Canada',NULL);
INSERT INTO "city" VALUES (1098,'Cuauhtémoc','Mexico',NULL);
INSERT INTO "city" VALUES (1099,'Shangluo','China',NULL);
INSERT INTO "city" VALUES (1100,'Guntur','India',NULL);
INSERT INTO "city" VALUES (1101,'Ibagué','Colombia',NULL);
INSERT INTO "city" VALUES (1102,'Maturín','Venezuela, Bolivarian Rep. of',NULL);
INSERT INTO "city" VALUES (1103,'Touba','Senegal',NULL);
INSERT INTO "city" VALUES (1104,'Asyūţ','Egypt',NULL);
INSERT INTO "city" VALUES (1105,'Hamadān','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (1106,'Qionghai','China',NULL);
INSERT INTO "city" VALUES (1107,'Cangzhou','China',NULL);
INSERT INTO "city" VALUES (1108,'San Salvador','El Salvador',NULL);
INSERT INTO "city" VALUES (1109,'Himeji','Japan',NULL);
INSERT INTO "city" VALUES (1110,'Beihai','China',NULL);
INSERT INTO "city" VALUES (1111,'Penza','Russian Federation',NULL);
INSERT INTO "city" VALUES (1112,'Mazār-e Sharīf','Afghanistan',NULL);
INSERT INTO "city" VALUES (1113,'Kandahār','Afghanistan',NULL);
INSERT INTO "city" VALUES (1114,'Surakarta','Indonesia',NULL);
INSERT INTO "city" VALUES (1115,'Hengshui','China',NULL);
INSERT INTO "city" VALUES (1116,'Dehra Dūn','India',NULL);
INSERT INTO "city" VALUES (1117,'Cuiabá','Brazil',NULL);
INSERT INTO "city" VALUES (1118,'Erode','India',NULL);
INSERT INTO "city" VALUES (1119,'Bhayandar','India',NULL);
INSERT INTO "city" VALUES (1120,'Esenler','Turkey',NULL);
INSERT INTO "city" VALUES (1121,'Hamilton','Canada',NULL);
INSERT INTO "city" VALUES (1122,'Al Fayyūm','Egypt',NULL);
INSERT INTO "city" VALUES (1123,'Durgapur','India',NULL);
INSERT INTO "city" VALUES (1124,'Victoria de Durango','Mexico',NULL);
INSERT INTO "city" VALUES (1125,'Ajmer','India',NULL);
INSERT INTO "city" VALUES (1126,'Lisbon','Portugal',NULL);
INSERT INTO "city" VALUES (1127,'Ulhasnagar','India',NULL);
INSERT INTO "city" VALUES (1128,'Guangyuan','China',NULL);
INSERT INTO "city" VALUES (1129,'Kolhāpur','India',NULL);
INSERT INTO "city" VALUES (1130,'Siliguri','India',NULL);
INSERT INTO "city" VALUES (1131,'Nürnberg','Germany',NULL);
INSERT INTO "city" VALUES (1132,'Hannover','Germany',NULL);
INSERT INTO "city" VALUES (1133,'Eskişehir','Turkey',NULL);
INSERT INTO "city" VALUES (1134,'Āzādshahr','Iran, Islamic Rep. of',NULL);
INSERT INTO "city" VALUES (1135,'Salta','Argentina',NULL);
INSERT INTO "city" VALUES (1136,'Xianning','China',NULL);
INSERT INTO "city" VALUES (1137,'Tembisa','South Africa',NULL);
INSERT INTO "city" VALUES (1138,'Bilimora','India',NULL);
INSERT INTO "city" VALUES (1139,'Aparecida de Goiânia','Brazil',NULL);
INSERT INTO "city" VALUES (1140,'Makati City','Philippines',NULL);
INSERT INTO "city" VALUES (1141,'Tonghua','China',NULL);
INSERT INTO "city" VALUES (1142,'Mianzhu, Deyang, Sichuan','China',NULL);
INSERT INTO "city" VALUES (1143,'Naberezhnyye Chelny','Russian Federation',NULL);
INSERT INTO "city" VALUES (1144,'Matsuyama','Japan',NULL);
INSERT INTO "city" VALUES (1145,'Lipetsk','Russian Federation',NULL);
INSERT INTO "city" VALUES (1146,'Leicester','United Kingdom',NULL);
INSERT INTO "city" VALUES (1147,'Banan','China',NULL);
INSERT INTO "city" VALUES (1148,'Tuen Mun','Hong Kong, China',NULL);
INSERT INTO "city" VALUES (1149,'Zhangye','China',NULL);
INSERT INTO "city" VALUES (1150,'Kirov','Russian Federation',NULL);
INSERT INTO "city" VALUES (1151,'Kashgar','China',NULL);
INSERT INTO "city" VALUES (1152,'Edinburgh','United Kingdom',NULL);
INSERT INTO "city" VALUES (1153,'Barcelona','Venezuela, Bolivarian Rep. of',NULL);
INSERT INTO "city" VALUES (1154,'Najrān','Saudi Arabia',NULL);
INSERT INTO "city" VALUES (1155,'Karol Bāgh','India',NULL);
INSERT INTO "city" VALUES (1156,'Zhoukou','China',NULL);
INSERT INTO "city" VALUES (1157,'Leipzig','Germany',NULL);
INSERT INTO "city" VALUES (1158,'Pingliang','China',NULL);
INSERT INTO "city" VALUES (1159,'Kalininskiy','Russian Federation',NULL);
INSERT INTO "city" VALUES (1160,'Duisburg','Germany',NULL);
INSERT INTO "city" VALUES (1161,'Āsansol','India',NULL);
INSERT INTO "location" VALUES (19,'Roubaix, France','');
INSERT INTO "location" VALUES (22,'Riyadh, Saudi Arabia','');
INSERT INTO "location" VALUES (29,'','San Francisco, US');
INSERT INTO "location" VALUES (31,'','Brooklyn, US');
INSERT INTO "location" VALUES (32,'','Manhattan, US');
INSERT INTO "location" VALUES (33,'','Brooklyn, US');
INSERT INTO "location" VALUES (50,'Queens, NY','');
INSERT INTO "location" VALUES (51,'Milton, MA','');
INSERT INTO "location" VALUES (53,'Brooklyn, NY','');
INSERT INTO "location" VALUES (60,'New South Wales, Australia','');
INSERT INTO "location" VALUES (85,'Buffalo, NY','');
INSERT INTO "location" VALUES (86,'Pin Point, GA','');
INSERT INTO "location" VALUES (87,'Trenton, NJ','');
INSERT INTO "location" VALUES (88,'Bronx, NY','');
INSERT INTO "location" VALUES (89,'Manhattan, NY','');
INSERT INTO "location" VALUES (90,'Denver, CO','');
INSERT INTO "location" VALUES (91,'Washington, D.C.','');
INSERT INTO "location" VALUES (92,'New Orleans, LA','');
INSERT INTO "location" VALUES (93,'Washigton, D.C.','');
INSERT INTO "location" VALUES (99,'Brooklyn, NY','');
INSERT INTO "location" VALUES (100,'Baltimore, MD, US','');
INSERT INTO "location" VALUES (104,NULL,'San Francisco, US');
INSERT INTO "family" VALUES (2,NULL,NULL,7);
INSERT INTO "family" VALUES (43,102,103,NULL);
INSERT INTO "person" VALUES (1,'Roula','','Khalaf','','Media','','','','');
INSERT INTO "person" VALUES (2,'Rahm','','Emanuel','','Politics','','','','');
INSERT INTO "person" VALUES (3,'Jerome','','Powell','16th Chair Fed','Politics, Corporate','','','','');
INSERT INTO "person" VALUES (4,'Ron','','Klain','Biden Chief of Staff','Politics','','','','');
INSERT INTO "person" VALUES (5,'Tim','','Cook','CEO APPL','Corporate','','','','');
INSERT INTO "person" VALUES (6,'Stephen','','Schwarzman','CEO Blackstone','Corporate','2/14/1947','','Jewish','');
INSERT INTO "person" VALUES (7,'Ari','','Emanuel','CEO Endeavor','Entertainment','','','Jewish','');
INSERT INTO "person" VALUES (8,'Sundar','','Pichai','CEO GOOGL','Corporate','','','','Indian');
INSERT INTO "person" VALUES (9,'Lloyd','','Blankfein','CEO Goldman Sachs','Corporate','','','Jewish','');
INSERT INTO "person" VALUES (10,'Mark','Elliot','Zuckerberg','CEO META','Corporate','','','Jewish','');
INSERT INTO "person" VALUES (11,'Satya','','Nadella','CEO MSFT','Corporate','','','','Indian');
INSERT INTO "person" VALUES (12,'Jensen','','Huang','CEO NVDA','Corporate','','','','Asian');
INSERT INTO "person" VALUES (13,'Jeff','','Shell','CEO, NBCUniversal','Media','','','','');
INSERT INTO "person" VALUES (14,'Anderson','','Cooper','CNN','Media','','','','');
INSERT INTO "person" VALUES (15,'Cecilia','','Rouse','Chair, Council of Economic Advisors','Politics, Academia','','','','');
INSERT INTO "person" VALUES (16,'Arthur','','Sulzberger','Chairman NYT','Media','','','','Germany');
INSERT INTO "person" VALUES (17,'Warren','','Buffett','Chairman, CEO BRK.A','Corporate','','','','White');
INSERT INTO "person" VALUES (18,'Brian','L','Roberts','Chairman, CEO Comcast','Media','','','Jewish','');
INSERT INTO "person" VALUES (19,'Bernard','','Arnault','Chairman, CEO LVMH','Corporate','3/5/1949','','','');
INSERT INTO "person" VALUES (20,'Olaf','','Scholz','Chancellor Germany','Politics','','Social Democratic Party of Germany','','');
INSERT INTO "person" VALUES (21,'Adam','','Silver','Comissioner NBA','Media','','','','');
INSERT INTO "person" VALUES (22,'Mohammed','','bin Salman','Crown Prince, PM Saudi Arabia','Politics','8/31/1985','','Islamic','Arab');
INSERT INTO "person" VALUES (23,'William','Joseph','Burns','Director, CIA','Politics','','','','');
INSERT INTO "person" VALUES (24,'Brian','','Deese','Director, National Economic Council','Politics','','','','');
INSERT INTO "person" VALUES (25,'Zanny','Minton','Beddoes','Editor-in-chief, The Economist','','','','','');
INSERT INTO "person" VALUES (26,'Kathleen','','Kingsbury','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (27,'Jyoti','','Thottam','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (28,'Binyamin','','Appelbaum','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (29,'Greg','','Bensinger','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (30,'Michelle','','Cottle','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (31,'Mara','','Gay','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (32,'Jeneen','','Interlandi','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (33,'Lauren','','Kelley','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (34,'Alex','','Kingsbury','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (35,'Serge','','Schmemann','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (36,'Brent','','Staples','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (37,'Farah','','Stockman','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (38,'Jesse','','Wegman','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (39,'Nick','','Fox','Editorial board, NYT','Media','','','','');
INSERT INTO "person" VALUES (40,'Tucker','','Carlson','FOX','Media','','','','');
INSERT INTO "person" VALUES (41,'Laura','','Ingraham','FOX','Media','','','','');
INSERT INTO "person" VALUES (42,'Sebastian','','Mallaby','Fellow, Council on Foreign Relations','Media','','','','');
INSERT INTO "person" VALUES (43,'Sam','','Bankman-Fried','Former CEO FTX','Corporate','','','Jewish','');
INSERT INTO "person" VALUES (44,'John','','Dingell','Former Congressman','Politics','','','','');
INSERT INTO "person" VALUES (45,'John','','Deutch','Former DCI','Academia, Politics','','','Jewish','');
INSERT INTO "person" VALUES (46,'Janet','','Yellen','Former Fed chair','Politics, Academia','','','Jewish','');
INSERT INTO "person" VALUES (47,'Barack','','Obama','Former POTUS','Politics','','','Christian','');
INSERT INTO "person" VALUES (48,'George','Walker','Bush Jr.','Former POTUS','Politics','','','Christian','');
INSERT INTO "person" VALUES (49,'William','Jefferson','Clinton','Former POTUS','Politics','','','Baptist','');
INSERT INTO "person" VALUES (50,'Donald','','Trump','Former POTUS','Politics','7/14/1946','','Christian','');
INSERT INTO "person" VALUES (51,'George','HW','Bush','Former POTUS','Politics','6/12/1924','','Christian','');
INSERT INTO "person" VALUES (52,'Hanna','','Gray','Former President, University of Chicago','Academia','','','','');
INSERT INTO "person" VALUES (53,'Ruth','Bader','Ginsburg','Former SCOTUS','Politics','3/15/1933','','Jewish','');
INSERT INTO "person" VALUES (54,'Hillary','Diane','Clinton','Former Senator','Politics','','','Methodist','');
INSERT INTO "person" VALUES (55,'Xi','','Jinping','General Secretary China','Politics','','','','');
INSERT INTO "person" VALUES (56,'Jamal','','Khashoggi','Journalist, The Washington Post','Media','','','','');
INSERT INTO "person" VALUES (57,'Rachel','','Maddow','MSNBC','Media','','','','');
INSERT INTO "person" VALUES (58,'Rupert','','Murdoch','News Corp','Media','','','Christian','');
INSERT INTO "person" VALUES (59,'Joe','','Tsai','Owner Nets','Media','','','','');
INSERT INTO "person" VALUES (60,'Anthony','','Albanese','PM Australia','Politics','2/3/1963','','','Irish, Italian');
INSERT INTO "person" VALUES (61,'Justin','','Trudeau','PM Canada','Politics','','','','');
INSERT INTO "person" VALUES (62,'Narendra','','Modi','PM India','Politics','','','','');
INSERT INTO "person" VALUES (63,'Giorgia','','Meloni','PM Italy','Politics','','','','');
INSERT INTO "person" VALUES (64,'Fumio','','Kishida','PM Japan','Politics','','','','');
INSERT INTO "person" VALUES (65,'Rishi','','Sunak','PM UK','Politics','','','','');
INSERT INTO "person" VALUES (66,'Joseph','Robinette','Biden Jr.','POTUS','Name,Country name EN,Population
Shanghai,China,22315474
Beijing,China,18960744
Shenzhen,China,17494398
Guangzhou,China,16096724
Lagos,Nigeria,15388000
Istanbul,Turkey,14804116
Chengdu,China,13568357
Buenos Aires,Argentina,13076300
Mumbai,India,12691836
Mexico City,Mexico,12294193
Karachi,Pakistan,11624219
Tianjin,China,11090314
Delhi,India,10927986
Wuhan,China,10392693
Moscow,Russian Federation,10381222
Dhaka,Bangladesh,10356500
Seoul,"Korea, Republic of",10349312
São Paulo,Brazil,10021295
Dongguan,China,9644871
Cairo,Egypt,9606916
Xi’an,China,9600000
Nanjing,China,9314685
Hangzhou,China,9236032
Foshan,China,9042509
Ho Chi Minh City,Viet Nam,8993082
London,United Kingdom,8961989
New York City,United States,8804190
Jakarta,Indonesia,8540121
Bengaluru,India,8443675
Tokyo,Japan,8336599
Hanoi,Viet Nam,8053663
Taipei,"Taiwan, China",7871900
Kinshasa,"Congo, Democratic Republic of the",7785965
Lima,Peru,7737002
Bogotá,Colombia,7674366
Hong Kong,"Hong Kong, China",7482500
Chongqing,China,7457599
Baghdad,Iraq,7216000
Qingdao,China,7172451
Tehran,"Iran, Islamic Rep. of",7153309
Shenyang,China,7050000
Hyderābād,India,6809970
Suzhou,China,6715559
Ahmedabad,India,6357693
Lahore,Pakistan,6310888
Rio de Janeiro,Brazil,6023699
Singapore,Singapore,5638700
Johannesburg,South Africa,5635127
Saint Petersburg,Russian Federation,5351935
Alexandria,Egypt,5263542
Harbin,China,5242897
Bangkok,Thailand,5104476
Hefei,China,5050000
Dalian,China,4913879
Santiago,Chile,4837295
Changchun,China,4714996
Cape Town,South Africa,4710000
Jeddah,Saudi Arabia,4697000
Chennai,India,4681087
Kolkata,India,4631392
Sydney,Australia,4627345
Xiamen,China,4617251
Surat,India,4591246
Yangon,Myanmar,4477638
Kabul,Afghanistan,4434550
Wuxi,China,4396835
Giza,Egypt,4367343
Jinan,China,4335989
Taiyuan,China,4303673
Zhengzhou,China,4253913
Melbourne,Australia,4246375
Riyadh,Saudi Arabia,4205961
Kano,Nigeria,4103000
Shijiazhuang,China,3938513
Chattogram,Bangladesh,3920222
Los Angeles,United States,3898747
Kunming,China,3855346
Zhongshan,China,3841873
Nanning,China,3839800
Shantou,China,3838900
Yokohama,Japan,3761630
Fuzhou,China,3740000
Ningbo,China,3731203
Busan,"Korea, Republic of",3678555
Abidjan,Côte d''Ivoire,3677115
Ibadan,Nigeria,3649000
Puyang,China,3590000
Ankara,Turkey,3517182
Dubai,United Arab Emirates,3478300
Shiyan,China,3460000
Berlin,Germany,3426354
Tangshan,China,3372102
Changzhou,China,3290918
Madrid,Spain,3255944
Pyongyang,"Korea, Dem. People''s Rep. of",3222000
Casablanca,Morocco,3144909
Zibo,China,3129228
Pune,India,3124458
Durban,South Africa,3120282
Changsha,China,3093980
Guiyang,China,3037159
Ürümqi,China,3029372
Lanzhou,China,3000000
Caracas,"Venezuela, Bolivarian Rep. of",3000000
Incheon,"Korea, Republic of",2954955
Huizhou,China,2900113
Surabaya,Indonesia,2874314
Haikou,China,2873358
Kanpur,India,2823249
Kyiv,Ukraine,2797553
Quito,Ecuador,2781641
Luanda,Angola,2776168
Quezon City,Philippines,2761720
Addis Ababa,Ethiopia,2757729
Osaka,Japan,2753862
Nairobi,Kenya,2750547
Chicago,United States,2746388
Linyi,China,2743843
Baoding,China,2739887
Brooklyn,United States,2736074
Guayaquil,Ecuador,2723665
Salvador,Brazil,2711840
Jaipur,India,2711758
Dar es Salaam,"Tanzania, United Republic of",2698652
Wenzhou,China,2650000
Yunfu,China,2612800
Basrah,Iraq,2600000
Toronto,Canada,2600000
Navi Mumbai,India,2600000
Mogadishu,Somalia,2587183
Daegu,"Korea, Republic of",2566540
Bekasi,Indonesia,2564940
Faisalabad,Pakistan,2506595
İzmir,Turkey,2500603
Huai''an,China,2494013
Dakar,Senegal,2476400
Lucknow,India,2472011
Bandung,Indonesia,2444160
Medan,Indonesia,2435252
Fortaleza,Brazil,2400000
Cali,Colombia,2392877
Belo Horizonte,Brazil,2373224
Nanchang,China,2357839
Hohhot,China,2350000
Rome,Italy,2318895
Mashhad,"Iran, Islamic Rep. of",2307177
Houston,United States,2304580
Kowloon,"Hong Kong, China",2303100
Shaoxing,China,2300000
Nantong,China,2273326
Queens,United States,2272771
Nagpur,India,2228018
Yantai,China,2227733
Maracaibo,"Venezuela, Bolivarian Rep. of",2225000
Brasília,Brazil,2207718
Zhuhai,China,2207090
Santo Domingo,Dominican Republic,2201941
Nagoya,Japan,2191279
Brisbane,Australia,2189878
Havana,Cuba,2163824
Baotou,China,2150000
Paris,France,2138551
Coimbatore,India,2136916
Kunshan,China,2092496
Al Mawşil al Jadīdah,Iraq,2065597
Depok,Indonesia,2056400
Weifang,China,2044028
Zunyi,China,2037775
Al Başrah al Qadīmah,Iraq,2015483
La Paz,Bolivia,2004652
Lianyungang,China,2001009
Medellín,Colombia,1999979
Tashkent,Uzbekistan,1978028
Algiers,Algeria,1977663
Ganzhou,China,1977253
Almaty,Kazakhstan,1977011
Khartoum,"Sudan, The Republic of",1974647
Sapporo,Japan,1973832
Accra,Ghana,1963264
Ordos,China,1940653
Sanaa,Yemen,1937451
Beirut,Lebanon,1916100
Tangerang,Indonesia,1911914
Jieyang,China,1899394
Perth,Australia,1896548
Jilin,China,1895865
Bucharest,Romania,1877155
Camayenne,Guinea,1871242
Kakamega,Kenya,1867579
Port Harcourt,Nigeria,1865000
Nanchong,China,1858875
Datong,China,1850000
Hamburg,Germany,1845229
Indore,India,1837041
Santa Cruz de la Sierra,Bolivia,1831434
Vadodara,India,1822221
Iztapalapa,Mexico,1815786
Nanyang,China,1811812
Jiangmen,China,1795459
Benin City,Nigeria,1782000
Jiangyin,China,1779515
Davao,Philippines,1776949
Fuyang,China,1768947
Conakry,Guinea,1767200
Montréal,Canada,1762949
Bayan Nur,China,1760000
Maracay,"Venezuela, Bolivarian Rep. of",1754256
Chaozhou,China,1750945
Rawalpindi,Pakistan,1743101
Minsk,Belarus,1742124
Budapest,Hungary,1741041
Mosul,Iraq,1739800
Qingyuan,China,1738424
Tai’an,China,1735425
Curitiba,Brazil,1718421
Johor Bahru,Malaysia,1711191
Warsaw,Poland,1702139
Soweto,South Africa,1695047
Puebla,Mexico,1692181
Vienna,Austria,1691468
Kallakurichi,India,1682687
Xining,China,1677177
Changshu,China,1677050
Palembang,Indonesia,1668848
Huainan,China,1666826
Rabat,Morocco,1655753
Ecatepec de Morelos,Mexico,1655015
Semarang,Indonesia,1653524
Suzhou,China,1647642
Lu’an,China,1644344
Barcelona,Spain,1620343
Valencia,"Venezuela, Bolivarian Rep. of",1619470
Pretoria,South Africa,1619438
Yancheng,China,1615717
Novosibirsk,Russian Federation,1612833
Phoenix,United States,1608139
Taizhou,China,1607108
Daqing,China,1604027
Philadelphia,United States,1603797
Fukuoka,Japan,1603543
Aleppo,Syrian Arab Republic,1602264
Manila,Philippines,1600000
Patna,India,1599920
Bhopāl,India,1599914
Manaus,Brazil,1598210
Wuhu,China,1598165
Santiago de Querétaro,Mexico,1594212
Dazhou,China,1589435
Yangzhou,China,1584237
Kaduna,Nigeria,1582102
Mecca,Saudi Arabia,1578722
Phnom Penh,Cambodia,1573544
Guilin,China,1572300
Damascus,Syrian Arab Republic,1569394
Zhaoqing,China,1553109
Onitsha,Nigeria,1553000
Mianyang,China,1550000
Isfahan,"Iran, Islamic Rep. of",1547164
Ludhiāna,India,1545368
Harare,Zimbabwe,1542813
Putian,China,1539389
Shangqiu,China,1536392
Kawasaki,Japan,1531646
Kobe,Japan,1522188
Kaohsiung,"Taiwan, China",1519711
Stockholm,Sweden,1515017
Caloocan City,Philippines,1500000
Guadalajara,Mexico,1495182
Yekaterinburg,Russian Federation,1495066
Gwangju,"Korea, Republic of",1490092
Yinchuan,China,1487579
Manhattan,United States,1487536
Taizhou,China,1485502
Asunción,Paraguay,1482200
Yiwu,China,1481384
Recife,Brazil,1478098
Daejeon,"Korea, Republic of",1469543
Quanzhou,China,1469157
Kumasi,Ghana,1468609
Madurai,India,1465625
Jinhua,China,1463990
Kyoto,Japan,1463723
Kota Bharu,Malaysia,1459994
Cixi,China,1457510
Changde,China,1457419
Kuala Lumpur,Malaysia,1453975
Kaifeng,China,1451741
Anshan,China,1450000
Karaj,"Iran, Islamic Rep. of",1448075
Kathmandu,Nepal,1442271
Baoji,China,1437802
Suqian,China,1437685
Multan,Pakistan,1437230
Liuzhou,China,1436599
Tirunelveli,India,1435844
San Antonio,United States,1434625
Zhangjiagang,China,1432044
Kharkiv,Ukraine,1430885
Agra,India,1430055
Córdoba,Argentina,1428214
Tabriz,"Iran, Islamic Rep. of",1424641
Makassar,Indonesia,1423877
Jinjiang,China,1416151
Bursa,Turkey,1412701
Bozhou,China,1409436
Qujing,China,1408500
Belém,Brazil,1407737
Zhanjiang,China,1400709
Fushun,China,1400646
San Diego,United States,1394928
Antananarivo,Madagascar,1391433
Rājkot,India,1390640
Luoyang,China,1390581
Hyderabad,Pakistan,1386330
The Bronx,United States,1385108
Gujranwala,Pakistan,1384471
Guankou,China,1380000
Lubumbashi,"Congo, Democratic Republic of the",1373770
Porto Alegre,Brazil,1372741
Milan,Italy,1371498
South Tangerang,Indonesia,1365688
Najafgarh,India,1365000
Handan,China,1358318
Kampala,Uganda,1353189
Yichang,China,1350150
Heze,China,1346717
Khulna,Bangladesh,1342339
Jamshedpur,India,1339438
Douala,Cameroon,1338082
Saitama,Japan,1324854
Gorakhpur,India,1324570
Sharjah,United Arab Emirates,1324473
Ciudad Juárez,Mexico,1321004
Liupanshui,China,1320825
Maoming,China,1307802
Tijuana,Mexico,1300983
Dallas,United States,1300092
Callao,Peru,1300000
Medina,Saudi Arabia,1300000
Yaoundé,Cameroon,1299369
Bamako,Mali,1297281
Qinzhou,China,1296300
Luohe,China,1294974
Xiangyang,China,1294733
Yangjiang,China,1292987
Nashik,India,1289497
Yixing,China,1285785
Brazzaville,Congo,1284609
Pimpri,India,1284606
Amman,Jordan,1275857
Budta,Philippines,1273715
Belgrade,Serbia,1273651
Montevideo,Uruguay,1270737
Lusaka,Zambia,1267440
Xuchang,China,1265536
Kalyān,India,1262255
Zigong,China,1262064
Thāne,India,1261517
Munich,Germany,1260391
Nizhniy Novgorod,Russian Federation,1259013
Xuzhou,China,1253991
Dammam,Saudi Arabia,1252523
Ra’s Bayrūt,Lebanon,1251739
Neijiang,China,1251095
Shiraz,"Iran, Islamic Rep. of",1249942
Yiyang,China,1249807
Adana,Turkey,1248988
Kazan,Russian Federation,1243500
Suwon,"Korea, Republic of",1241311
Jining,China,1241012
Shubrā al Khaymah,Egypt,1240289
León de los Aldama,Mexico,1238962
Abuja,Nigeria,1235880
Port-au-Prince,Haiti,1234742
Xinyang,China,1230042
Liaocheng,China,1229768
Jinzhong,China,1226617
Adelaide,Australia,1225235
Meerut,India,1223184
Nowrangapur,India,1220946
Faridabad,India,1220229
Peshawar,Pakistan,1218773
Changzhi,China,1214940
Tianshui,China,1212791
Mombasa,Kenya,1208333
Mandalay,Myanmar,1208099
Barranquilla,Colombia,1206319
Chelyabinsk,Russian Federation,1202371
Mérida,Mexico,1201000
Santiago de los Caballeros,Dominican Republic,1200000
Shymkent,Kazakhstan,1200000
Omdurman,"Sudan, The Republic of",1200000
Hiroshima,Japan,1199391
Weinan,China,1199290
Ghāziābād,India,1199191
Dhanbad,India,1196214
Dombivli,India,1193000
Maputo,Mozambique,1191613
Gustavo Adolfo Madero,Mexico,1185772
Jiaxing,China,1180000
Rosario,Argentina,1173533
Omsk,Russian Federation,1172070
Goiânia,Brazil,1171195
Guarulhos,Brazil,1169577
Bandar Lampung,Indonesia,1166066
Prague,Czech Republic,1165581
Varanasi,India,1164404
Batam,Indonesia,1164352
Jiujiang,China,1164268
Samara,Russian Federation,1163399
Copenhagen,Denmark,1153615
Sofia,Bulgaria,1152556
Tripoli,Libyan Arab Jamahiriya,1150989
Anyang,China,1146839
Zapopan,Mexico,1142483
Birmingham,United Kingdom,1141816
Bijie,China,1137383
Monterrey,Mexico,1135512
Kigali,Rwanda,1132686
Rostov-na-Donu,Russian Federation,1130305
Zhuzhou,China,1129687
Malingao,Philippines,1121974
Ufa,Russian Federation,1120547
Ranchi,India,1120374
Baku,Azerbaijan,1116513
Shangrao,China,1116486
Barquisimeto,"Venezuela, Bolivarian Rep. of",1114097
Huaibei,China,1113321
Meishan,China,1107742
Ciudad Nezahualcoyotl,Mexico,1104585
Bogor,Indonesia,1099422
Sendai,Japan,1096704
Yerevan,Armenia,1093485
Amritsar,India,1092450
Krasnoyarsk,Russian Federation,1090811
Fuzhou,China,1089888
Ouagadougou,Burkina Faso,1086505
Guigang,China,1086327
Hengyang,China,1075516
Allahābād,India,1073438
Goyang-si,"Korea, Republic of",1073069
Gaziantep,Turkey,1065975
Visakhapatnam,India,1063178
Yulin,China,1056743
Jingzhou,China,1052282
Tbilisi,Georgia,1049498
Voronezh,Russian Federation,1047549
Xinxiang,China,1047088
Yichun,China,1045952
Taichung,"Taiwan, China",1040725
Teni,India,1034724
Xianyang,China,1034081
Mexicali,Mexico,1032686
Matola,Mozambique,1032197
Seongnam-si,"Korea, Republic of",1031935
Campinas,Brazil,1031554
Sanya,China,1031396
Jabalpur,India,1030168
Shaoguan,China,1028460
Hāora,India,1027672
San Jose,United States,1026908
Longyan,China,1025087
Donetsk,Ukraine,1024700
Dublin,Ireland,1024027
Tiruchirappalli,India,1022518
Yongzhou,China,1020715
Calgary,Canada,1019942
Brussels,Belgium,1019022
Aurangabad,India,1016441
Huzhou,China,1015937
Volgograd,Russian Federation,1013533
Odesa,Ukraine,1013159
Edmonton,Canada,1010899
Wuwei,China,1010295
Arequipa,Peru,1008290
Hanzhong,China,1006557
Hezhou,China,1005490
Nova Iguaçu,Brazil,1002118
Shivaji Nagar,India,1000000
Zhu Cheng City,China,1000000
Dongying,China,998968
Luzhou,China,998900
Dnipro,Ukraine,998103
Solāpur,India,997281
Guatemala City,Guatemala,994938
Meizhou,China,992351
Yueyang,China,991465
Laiwu,China,989535
Da Nang,Viet Nam,988561
Benxi,China,987717
Pekanbaru,Indonesia,983356
Perm,Russian Federation,982419
Chiba,Japan,979768
Pingdingshan,China,979130
Srinagar,India,975857
Zaria,Nigeria,975153
Managua,Nicaragua,973087
Bengbu,China,972784
Port Elizabeth,South Africa,967677
Fès,Morocco,964891
Cebu City,Philippines,964169
Köln,Germany,963395
Tiruppur,India,963173
Ulsan,"Korea, Republic of",962865
Chandīgarh,India,960787
Naples,Italy,959470
Xiangtan,China,959303
Linfen,China,959198
Victoria,"Hong Kong, China",956800
Maceió,Brazil,954991
Zhenjiang,China,950516
Ciudad Guayana,"Venezuela, Bolivarian Rep. of",950052
Jacksonville,United States,949611
Sulţānah,Saudi Arabia,946697
Kitakyushu,Japan,940978
Monrovia,Liberia,939524
Kingston,Jamaica,937700
Baoshan,China,935618
Erbil,Iraq,932800
Austin,United States,931830
Rui’an,China,927383
Chihuahua,Mexico,925762
Nay Pyi Taw,Myanmar,925000
Jodhpur,India,921476
Trujillo,Peru,919899
Fort Worth,United States,918915
Salem,India,917414
São Luís,Brazil,917237
Cartagena,Colombia,914552
Laibin,China,910282
Padang,Indonesia,909040
Xiaogan,China,908266
Columbus,United States,905748
Ziyang,China,905729
Sale,Morocco,903485
Quzhou,China,902767
Petaling Jaya,Malaysia,902086
Abobo,Côte d''Ivoire,900000
Bishkek,Kyrgyzstan,900000
Abū Ghurayb,Iraq,900000
Qom,"Iran, Islamic Rep. of",900000
Zaozhuang,China,899753
Krasnodar,Russian Federation,899541
Guwahati,India,899094
Aba,Nigeria,897560
Pingxiang,China,893550
Indianapolis,United States,887642
Zhoushan,China,882932
Gwalior,India,882458
Qiqihar,China,882364
Klang,Malaysia,879867
Mendoza,Argentina,876884
Konya,Turkey,875530
Puning,China,874954
Mbuji-Mayi,"Congo, Democratic Republic of the",874761
Vijayawada,India,874587
Charlotte,United States,874579
Pikine,Senegal,874062
Bhiwandi,India,874032
Marseille,France,870731
Ankang,China,870126
Mysore,India,868313
Langfang,China,868066
Jiaozuo,China,865413
San Francisco,United States,864816
Liverpool,United Kingdom,864122
Rohini,India,860000
Wanxian,China,859662
Guang’an,China,858159
Tegucigalpa,Honduras,850848
Bucheon-si,"Korea, Republic of",850731
Turin,Italy,847287
Cheongju-si,"Korea, Republic of",846291
Saratov,Russian Federation,844858
Ulan Bator,Mongolia,844818
Weihai,China,844310
Takeo,Cambodia,843931
Malang,Indonesia,843810
Haiphong,Viet Nam,841520
Cochabamba,Bolivia,841276
Ahvaz,"Iran, Islamic Rep. of",841145
Hubli,India,840214
Ipoh,Malaysia,840000
Zhabei,China,840000
Xinyu,China,839488
Marrakesh,Morocco,839296
Yibin,China,836340
Denpasar,Indonesia,834881
Kampung Baru Subang,Malaysia,833571
Samarinda,Indonesia,831460
Taicang,China,831113
Biên Hòa,Viet Nam,830829
Chenzhou,China,822534
Duque de Caxias,Brazil,818329
Jos,Nigeria,816824
Ilorin,Nigeria,814192
Ottawa,Canada,812129
Cần Thơ,Viet Nam,812088
Culiacán,Mexico,808416
Benghazi,Libyan Arab Jamahiriya,807250
Anqing,China,804493
Freetown,Sierra Leone,802639
San Pedro Sula,Honduras,801259
Jerusalem,Israel,801000
Narela,India,800000
Xingtai,China,798770
Niigata,Japan,797591
Muscat,Oman,797000
Zarqa,Jordan,792665
Naucalpan de Juárez,Mexico,792211
Çankaya,Turkey,792189
Hamamatsu,Japan,791707
Valencia,Spain,789744
Rahim Yar Khan,Pakistan,788915
Pasragad Branch,"Iran, Islamic Rep. of",787878
Zhaotong,China,787845
Panzhihua,China,787177
Boumerdas,Algeria,786499
Jalandhar,India,785178
Thiruvananthapuram,India,784153
Chuzhou,China,782671
Sakai,Japan,782339
San Miguel de Tucumán,Argentina,781023
Port Said,Egypt,780515
Cotonou,Benin,780000
Cúcuta,Colombia,777106
Homs,Syrian Arab Republic,775404
Xuanzhou,China,774332
Niamey,Niger,774235
Tainan,"Taiwan, China",771235
Shangyu,China,770000
Łódź,Poland,768755
Tyumen,Russian Federation,768358
Kahrīz,"Iran, Islamic Rep. of",766706
Anshun,China,765313
Rājshāhi,Bangladesh,763580
Kota,India,763088
Natal,Brazil,763043
Bhubaneshwar,India,762243
Wuzhou,China,761948
Qinhuangdao,China,759718
Maiduguri,Nigeria,758700
Antalya,Turkey,758188
Kraków,Poland,755050
Alīgarh,India,753207
Shaoyang,China,753194
Pietermaritzburg,South Africa,750845
Lomé,Togo,749700
Winnipeg,Canada,749607
Bağcılar,Turkey,749024
Bareilly,India,745435
Buraydah,Saudi Arabia,745353
Teresina,Brazil,744512
São Bernardo do Campo,Brazil,743372
Hegang,China,743307
Morelia,Mexico,743275
Nampula,Mozambique,743125
Riga,Latvia,742572
Amsterdam,Netherlands,741636
Ma’anshan,China,741531
Kumamoto,Japan,738907
Zaporizhzhya,Ukraine,738728
Seattle,United States,737015
Oyo,Nigeria,736072
Deyang,China,735070
Quetta,Pakistan,733675
Yangquan,China,731228
Campo Grande,Brazil,729151
Ashgabat,Turkmenistan,727700
Álvaro Obregón,Mexico,726664
Muzaffarābād,Pakistan,725000
Wanzhou,China,723215
As Sulaymānīyah,Iraq,723170
San Luis Potosí,Mexico,722772
Aguascalientes,Mexico,722250
Zhumadian,China,721670
Morādābād,India,721139
N''Djamena,Chad,721081
Okayama,Japan,720841
Lviv,Ukraine,717803
Ansan-si,"Korea, Republic of",716785
Denver,United States,715522
Hermosillo,Mexico,715061
Saltillo,Mexico,709671
Subang Jaya,Malaysia,708296
Tolyatti,Russian Federation,702879
Jaboatão,Brazil,702621
Santo Domingo Oeste,Dominican Republic,701269
Battagram,Pakistan,700000
Santo Domingo Este,Dominican Republic,700000
Suez,Egypt,699541
Changzhi,China,699514
Bulawayo,Zimbabwe,699385
Zagreb,Croatia,698966
Agadir,Morocco,698310
Sarajevo,Bosnia and Herzegovina,696731
La Plata,Argentina,694167
Bauchi,Nigeria,693700
Tunis,Tunisia,693210
Zhangjiakou,China,692602
Serang,Indonesia,692101
Shizuoka,Japan,690881
Paranaque City,Philippines,689992
Washington,United States,689545
Nashville,United States,689447
Fuxin,China,689050
Enugu,Nigeria,688862
Ta’if,Saudi Arabia,688693
Tangier,Morocco,688356
Huangshi,China,688090
Liaoyang,China,687890
Baise,China,686078
Sheffield,United Kingdom,685368
Sevilla,Spain,684234
Binzhou,China,682717
El Paso,United States,681124
Oklahoma City,United States,681054
Yuncheng,China,680036
Raipur,India,679995
General Santos,Philippines,679588
Dezhou,China,679535
Dushanbe,Tajikistan,679400
Osasco,Brazil,677856
Detroit,United States,677116
Boston,United States,675647
Zaragoza,Spain,675301
Gorakhpur,India,674246
Guadalupe,Mexico,673616
Acapulco de Juárez,Mexico,673479
Sanmenxia,China,669307
E’zhou,China,668727
Mississauga,Canada,668549
Tabuk,Saudi Arabia,667000
Cheonan,"Korea, Republic of",666417
Mudanjiang,China,665915
Athens,Greece,664046
Leshan,China,662814
Santo André,Brazil,662373
Rizhao,China,661943
Nouakchott,Mauritania,661400
Pointe-Noire,Congo,659084
Pontianak,Indonesia,658685
Banjarmasin,Indonesia,657663
Puducherry,India,657209
Suining,China,656760
Puyang,China,655674
Tlalnepantla,Mexico,653410
Portland,United States,652503
Jeonju,"Korea, Republic of",652392
João Pessoa,Brazil,650883
Frankfurt am Main,Germany,650000
Macau,"Macau, China",649335
Palermo,Italy,648260
Izhevsk,Russian Federation,648213
Colombo,Sri Lanka,648034
Lilongwe,Malawi,646750
Oran,Algeria,645984
Diyarbakır,Turkey,644763
Honchō,Japan,644668
Taguig,Philippines,644473
New South Memphis,United States,641608
Hwaseong-si,"Korea, Republic of",640890
Gold Coast,Australia,640778
Kotli,Pakistan,640000
Al Aḩmadī,Kuwait,637411
Cuenca,Ecuador,636996
Yogyakarta,Indonesia,636660
Chisinau,"Moldova, Republic of",635994
Wrocław,Poland,634893
Hebi,China,634721
Tébessa,Algeria,634332
Memphis,United States,633104
Jingmen,China,632954
Barnaul,Russian Federation,632372
Dandong,China,631973
Stuttgart,Germany,630305
Jaboatão dos Guararapes,Brazil,630008
Cancún,Mexico,628306
Contagem,Brazil,627123
Ulyanovsk,Russian Federation,626540
Bhilai,India,625138
Panshan,China,625040
Kryvyy Rih,Ukraine,624579
Djibouti,Djibouti,623891
Irkutsk,Russian Federation,623869
Las Vegas,United States,623747
Al Manşūrah,Egypt,621953
Baltimore,United States,621849
Kermanshah,"Iran, Islamic Rep. of",621100
Düsseldorf,Germany,620523
Coyoacán,Mexico,620416
Ribeirão Preto,Brazil,619746
Feira de Santana,Brazil,619609
Jiaozhou,China,619266
Suizhou,China,618582
Khabarovsk,Russian Federation,618150
Al Ḩudaydah,Yemen,617871
Pasig City,Philippines,617301
Bristol,United Kingdom,617280
Chizhou,China,615274
Taiz,Yemen,615222
São José dos Campos,Brazil,613764
Santa María Chimalhuacán,Mexico,612383
Ya''an,China,612056
Borivli,India,609617
Torreón,Mexico,608836
Yaroslavl,Russian Federation,608722
Kawaguchi,Japan,607373
Jambi City,Indonesia,606200
Ha''il,Saudi Arabia,605930
Bhavnagar,India,605882
Benoni,South Africa,605344
Vladivostok,Russian Federation,604901
Cochin,India,604696
Jinzhou,China,604269
Amrāvati,India,603837
Abu Dhabi,United Arab Emirates,603492
Sanming,China,602166
Islamabad,Pakistan,601600
Kirkuk,Iraq,601433
Sāngli,India,601214
Milwaukee,United States,600155
Vancouver,Canada,600000
Shuangyashan,China,600000
Situbondo,Indonesia,600000
Rotterdam,Netherlands,598199
Kleinzschocher,Germany,597493
Großzschocher,Germany,597493
Luancheng,China,597130
Makhachkala,Russian Federation,596356
Anyang-si,"Korea, Republic of",595644
Kagoshima,Japan,595049
Rasht,"Iran, Islamic Rep. of",594590
Brampton,Canada,593638
Abeokuta,Nigeria,593100
Essen,Germany,593085
Kayseri,Turkey,592840
Al Maḩallah al Kubrá,Egypt,592573
Glasgow,United Kingdom,591620
Yingkou,China,591159
Las Piñas,Philippines,590000
Zhangzhou,China,589831
Reynosa,Mexico,589466
Thuận An,Viet Nam,588616
Dortmund,Germany,588462
Göteborg,Sweden,587549
Blantyre,Malawi,584877
New Kingston,Jamaica,583958
Üsküdar,Turkey,582666
Bucaramanga,Colombia,581130
Genoa,Italy,580097
Cuttack,India,580000
Oslo,Norway,580000
Malacca,Malaysia,579000
Málaga,Spain,578460
Khabarovsk Vtoroy,Russian Federation,578303
Libreville,Gabon,578156
Kerman,"Iran, Islamic Rep. of",577514
Orūmīyeh,"Iran, Islamic Rep. of",577307
Bahçelievler,Turkey,576799
Ţanţā,Egypt,576648
Bīkaner,India,576015
Tlaquepaque,Mexico,575942
Tlalpan,Mexico,574577
Herāt,Afghanistan,574300
Tomsk,Russian Federation,574002
Umraniye,Turkey,573265
Shihezi,China,572772
Kota Kinabalu,Malaysia,572500
South Boston,United States,571281
Poznań,Poland,570352
Irbid,Jordan,569068
Cimahi,Indonesia,568400
Puente Alto,Chile,568106
Bouaké,Côte d''Ivoire,567481
Nyala,"Sudan, The Republic of",565734
Orenburg,Russian Federation,564773
Bokāro,India,564319
Asmara,Eritrea,563930
Sokoto,Nigeria,563861
Uberlândia,Brazil,563536
Hachiōji,Japan,561344
Wenchang,China,560894
Albuquerque,United States,559121
Hamhŭng,"Korea, Dem. People''s Rep. of",559056
Kemerovo,Russian Federation,558973
Sorocaba,Brazil,558862
Helsinki,Finland,558457
Warangal,India,557802
Dresden,Germany,556227
Bloemfontein,South Africa,556000
Santiago de Cuba,Cuba,555865
Siping,China,555609
Mar del Plata,Argentina,553935
Huaihua,China,552622
Bahawalpur,Pakistan,552607
Chiclayo,Peru,552508
Zahedan,"Iran, Islamic Rep. of",551980
Kimhae,"Korea, Republic of",550758
Aden,Yemen,550602
Nanded,India,550564
Kozhikode,India,550440
Pristina,,550000
Changwon,"Korea, Republic of",550000
Jiamusi,China,549549
Antipolo,Philippines,549543
Korla,China,549324
Kuantan,Malaysia,548014
Bremen,Germany,546501
Wanning,China,545992
Meknès,Morocco,545705
Xinzhou,China,544683
Banqiao,"Taiwan, China",543342
Sargodha,Pakistan,542603
Bangui,Central African Republic,542393
Vilnius,Lithuania,542366
Pingdu,China,542234
Calamba,Philippines,539671
Novokuznetsk,Russian Federation,539616
Kisangani,"Congo, Democratic Republic of the",539158
Ryazan’,Russian Federation,538962
Ji’an,China,538699
Mersin,Turkey,537842
Tuxtla,Mexico,537102
Raurkela,India,536450
Warri,Nigeria,536023
Guli,China,536000
Aksu,China,535657
Ebute Ikorodu,Nigeria,535619
Tanggu,China,535298
Astrakhan,Russian Federation,533925
Beira,Mozambique,533825
Québec,Canada,531902
Cuauhtémoc,Mexico,531831
Shangluo,China,531696
Tucson,United States,531641
Guntur,India,530577
Ibagué,Colombia,529635
Maturín,"Venezuela, Bolivarian Rep. of",529376
Touba,Senegal,529176
Asyūţ,Egypt,528669
Hamadān,"Iran, Islamic Rep. of",528256
Qionghai,China,528238
Cangzhou,China,527681
San Salvador,El Salvador,525990
Himeji,Japan,525682
Beihai,China,525329
Penza,Russian Federation,523553
Mazār-e Sharīf,Afghanistan,523300
Kandahār,Afghanistan,523300
Surakarta,Indonesia,522364
Hengshui,China,522147
Dehra Dūn,India,522081
Cuiabá,Brazil,521934
Erode,India,521891
Bhayandar,India,520301
Esenler,Turkey,520235
Fresno,United States,520052
Hamilton,Canada,519949
Al Fayyūm,Egypt,519047
Durgapur,India,518872
Victoria de Durango,Mexico,518709
Ajmer,India,517911
Lisbon,Portugal,517802
Ulhasnagar,India,516584
Guangyuan,China,516424
Kolhāpur,India,516142
Siliguri,India,515574
Nürnberg,Germany,515543
Hannover,Germany,515140
Eskişehir,Turkey,514869
Āzādshahr,"Iran, Islamic Rep. of",514102
Salta,Argentina,512686
Xianning,China,512517
Tembisa,South Africa,511655
Bilimora,India,510879
Aparecida de Goiânia,Brazil,510770
Makati City,Philippines,510383
Tonghua,China,510000
"Mianzhu, Deyang, Sichuan",China,510000
Naberezhnyye Chelny,Russian Federation,509870
Matsuyama,Japan,509835
Lipetsk,Russian Federation,509735
Leicester,United Kingdom,508916
Banan,China,508703
Tuen Mun,"Hong Kong, China",507900
Zhangye,China,507433
Kirov,Russian Federation,507155
Kashgar,China,506640
Edinburgh,United Kingdom,506520
Barcelona,"Venezuela, Bolivarian Rep. of",506016
Najrān,Saudi Arabia,505652
Karol Bāgh,India,505241
Zhoukou,China,505171
Leipzig,Germany,504971
Pingliang,China,504848
Kalininskiy,Russian Federation,504641
Duisburg,Germany,504358
Āsansol,India,504271','','','Catholic','');
INSERT INTO "person" VALUES (67,'Jair','','Bolsonaro','President Brazil','Politics','','','','');
INSERT INTO "person" VALUES (68,'Ursula','','von der Leyen','President European Commission','Politics','','Christian Democratic Union of Germany','','');
INSERT INTO "person" VALUES (69,'Emmanuel','','Macron','President France','Politics','','','','');
INSERT INTO "person" VALUES (70,'Joko','','Widodo','President Indonesia','Politics','','','','');
INSERT INTO "person" VALUES (71,'Andrés','','Obrador','President Mexico','Politics','','','','');
INSERT INTO "person" VALUES (72,'Vladimir','','Putin','President Russia','Politics','','','','');
INSERT INTO "person" VALUES (73,'Yoon','','Suk-yeol','President South Korea','Politics','','','Catholic','');
INSERT INTO "person" VALUES (74,'Recep','','Erdoğan','President Turkey','Politics','','','','');
INSERT INTO "person" VALUES (75,'Volodymyr','','Zelensky','President of Ukraine','Politics','','','Jewish','');
INSERT INTO "person" VALUES (76,'Elizabeth','','Alexander','President, Andrew W. Mellon Foundation + Pulitzer Prize Board 2022-2023','Academia, Media','','','','');
INSERT INTO "person" VALUES (77,'Christina','','Paxson','President, Brown University','Academia','','','','');
INSERT INTO "person" VALUES (78,'Lee','','Bollinger','President, Columbia University + Pulitzer Prize Board 2022-2023','Academia, Media','','','','');
INSERT INTO "person" VALUES (79,'Martha','','Pollack','President, Cornell University','Academia','','','','');
INSERT INTO "person" VALUES (80,'Philip','','Hanlon','President, Dartmouth College','Academia','','','','');
INSERT INTO "person" VALUES (81,'Laurence','','Bacow','President, Harvard University','Academia','','','','');
INSERT INTO "person" VALUES (82,'Christopher','','Eisgruber','President, Princeton University','Academia','','','','');
INSERT INTO "person" VALUES (83,'Mary','Elizabeth','Magill','President, University of Pennsylvania','Academia','','','','');
INSERT INTO "person" VALUES (84,'Peter','','Salovey','President, Yale University','Academia','','','','');
INSERT INTO "person" VALUES (85,'John','','Roberts','SCOTUS','Politics','1/27/1955','Republican','Catholic','');
INSERT INTO "person" VALUES (86,'Clarence','','Thomas','SCOTUS','Politics','6/23/1948','Republican','Catholic','');
INSERT INTO "person" VALUES (87,'Samuel','','Alito','SCOTUS','Politics','4/1/1950','Republican','Catholic','');
INSERT INTO "person" VALUES (88,'Sonia','','Sotomayor','SCOTUS','Politics','6/25/1954','Democrat','Catholic','');
INSERT INTO "person" VALUES (89,'Elena','','Kagan','SCOTUS','Politics, Academia','4/28/1960','Democrat','Jewish','');
INSERT INTO "person" VALUES (90,'Neil','','Gorsuch','SCOTUS','Politics','8/29/1967','Republican','Christian','');
INSERT INTO "person" VALUES (91,'Brett','','Kavanaugh','SCOTUS','Politics','2/12/1965','Republican','Catholic','');
INSERT INTO "person" VALUES (92,'Vivian','','Barrett','SCOTUS','Politics','1/28/1972','Republican','Catholic','');
INSERT INTO "person" VALUES (93,'Ketanji','','Jackson','SCOTUS','Politics','9/14/1970','Democrat','Christian','');
INSERT INTO "person" VALUES (94,'Lloyd','','Austin','Secretary of Defense','Politics','','','','');
INSERT INTO "person" VALUES (95,'Anne','','Applebaum','Staff writer, The Atlantic','Media','','','','');
INSERT INTO "person" VALUES (96,'Linda','','Thomas-Greenfield','US Ambassador to the UN','Politics','','','','');
INSERT INTO "person" VALUES (97,'Antony','','Blinken','US Secretary of State','Politics','','','','');
INSERT INTO "person" VALUES (98,'Bernie','','Sanders','US Senate','Politics','','','Jewish','');
INSERT INTO "person" VALUES (99,'Charles','Ellis','Schumer','US Senate Majority Leader','Politics','11/23/1950','','Jewish','');
INSERT INTO "person" VALUES (100,'Nancy','Patricia','Pelosi','US Speaker of House','Politics','3/26/1940','','Catholic','');
INSERT INTO "person" VALUES (101,'Kamala','','Harris','Vice POTUS','Politics','','','Baptist','');
INSERT INTO "person" VALUES (102,'Barbara',NULL,'Fried','','Academia, Politics',NULL,NULL,NULL,NULL);
INSERT INTO "person" VALUES (103,'Joe',NULL,'Bankman',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "person" VALUES (104,'David',NULL,'Yaffe-Bellany','Reporter, NYTimes',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "person" VALUES (105,'Sudhir',NULL,'Krishnaswamy','Vice Chancellor, National Law School of India University',NULL,NULL,NULL,NULL,'Indian');
INSERT INTO "education" VALUES (1,'Syracuse University',NULL,'Columbia University',NULL,NULL,NULL);
INSERT INTO "education" VALUES (3,'Princeton University',1975,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (6,9,1969,'Harvard Business School',1972,'Abington Senior High School, PA',NULL);
INSERT INTO "education" VALUES (7,'Macalester College',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (16,'Brown University',2003,NULL,NULL,'Ethical Culture Fieldston School, NY',NULL);
INSERT INTO "education" VALUES (18,'University of Pennsylvania',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (20,'University of Hamburg',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (22,'King Saud University',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (25,'University of Oxford',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (26,'Georgetown University',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (27,9,1993,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (28,'University of Pennsylvania',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (29,'University of Virginia',NULL,'Journalism, Columbia University',NULL,NULL,NULL);
INSERT INTO "education" VALUES (30,'Vanderbilt University',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (31,'University of Michigan',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (32,'Rutgers University',NULL,'Columbia University',NULL,NULL,NULL);
INSERT INTO "education" VALUES (33,'Texas Christian University',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (34,'George Washington University',NULL,'Columbia University',NULL,NULL,NULL);
INSERT INTO "education" VALUES (35,1,1967,'Columbia University',1971,'Collegiate School',1963);
INSERT INTO "education" VALUES (36,'Widener University',1973,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (37,1,1996,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (38,'Wesleyan University',1996,'NYU Law School',2005,NULL,NULL);
INSERT INTO "education" VALUES (39,'Binghamton University',NULL,'Journalism, Columbia University',NULL,NULL,NULL);
INSERT INTO "education" VALUES (42,'University of Oxford',1986,NULL,NULL,'Eton College',NULL);
INSERT INTO "education" VALUES (43,'MIT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (44,'Georgetown University',1949,NULL,NULL,'Georgetown Preparatory School',NULL);
INSERT INTO "education" VALUES (45,'Amherst College',NULL,NULL,NULL,'Sidwell Friends School',NULL);
INSERT INTO "education" VALUES (47,'Columbia University',1983,'Harvard Law School',1991,'Punahou School, HI',1979);
INSERT INTO "education" VALUES (48,9,1968,'Harvard Business School',1975,'Phillips Academy, MA',NULL);
INSERT INTO "education" VALUES (49,'Georgetown University',1968,'Yale Law School',1973,'Hot Springs High School, AK',1949);
INSERT INTO "education" VALUES (50,'Wharton, University of Pennsylvania',1968,NULL,NULL,'New York Military Academy',NULL);
INSERT INTO "education" VALUES (51,NULL,NULL,NULL,NULL,'Phillips Academy, MA',1942);
INSERT INTO "education" VALUES (52,'Bryn Mawr College',1950,NULL,NULL,'Sidwell Friends School',1948);
INSERT INTO "education" VALUES (53,'Cornell University',NULL,'Columbia Law School',1959,'James Madison High School, NY',1950);
INSERT INTO "education" VALUES (54,'Wellesley College',1969,'Yale Law School',1973,'Maine South High School, ME',1965);
INSERT INTO "education" VALUES (56,'Indiana State University',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (57,'Stanford University',1994,'DPhil, Oxford University',2001,'Castro Valley High School, CA',NULL);
INSERT INTO "education" VALUES (60,'University of Sydney',1984,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (64,'Waseda',1982,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (66,'University of Delaware',1965,'Syracuse University College of Law',1968,'Archmere Academy, DE',1961);
INSERT INTO "education" VALUES (68,NULL,NULL,'Hannover Medical School',1987,NULL,NULL);
INSERT INTO "education" VALUES (76,'Boston University',1984,NULL,NULL,'Sidwell Friends School',NULL);
INSERT INTO "education" VALUES (77,'Swarthmore College',1982,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (78,'University of Oregon',1968,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (79,'Dartmouth College',1979,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (80,'Dartmouth College',1977,'MIT',1981,NULL,NULL);
INSERT INTO "education" VALUES (81,'MIT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (82,'Princeton University',1983,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (83,9,1988,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (84,'Stanford University',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (90,NULL,NULL,NULL,NULL,'Georgetown Preparatory School',1985);
INSERT INTO "education" VALUES (91,NULL,NULL,NULL,NULL,'Georgetown Preparatory School',1983);
INSERT INTO "education" VALUES (93,1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "education" VALUES (95,9,NULL,NULL,NULL,'Sidwell Friends School',NULL);
INSERT INTO "education" VALUES (98,'University of Chicago',1964,NULL,NULL,'James Madison High School, NY',NULL);
INSERT INTO "education" VALUES (99,1,1971,'Harvard Law School',1974,'James Madison High School, NY',NULL);
INSERT INTO "education" VALUES (100,'Trinity College, DC',1962,NULL,NULL,'Institute of Notre Dame',1958);
COMMIT;
