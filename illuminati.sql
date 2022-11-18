BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "elite" (
	"ID"	INTEGER,
	"FirstName"	TEXT,
	"field2"	TEXT,
	"LastName"	TEXT,
	"Title"	TEXT,
	"Genre"	TEXT,
	"Born"	TEXT,
	"Birthplace"	TEXT,
	"Current"	TEXT,
	"Party"	TEXT,
	"Denomination"	TEXT,
	"Ethnicity"	TEXT,
	"BADegree"	TEXT,
	"BAgraduationyear"	INTEGER,
	"HighSchool"	TEXT,
	"HSgraduationyear"	TEXT,
	"GraduateDegree"	TEXT,
	"Gradgraduationyear"	INTEGER,
	"Family"	TEXT,
	"Facts"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO "elite" VALUES (1,'Roula','','Khalaf','','Media','','','','','','','Syracuse University','','','','Columbia University','','','');
INSERT INTO "elite" VALUES (2,'Rahm','','Emanuel','','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (3,'Jerome','','Powell','16th Chair Fed','Politics, Corporate','Washington, D.C.','','','','','','Princeton University',1975,'','','','','','');
INSERT INTO "elite" VALUES (4,'Ron','','Klain','Biden Chief of Staff','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (5,'Tim','','Cook','CEO APPL','Corporate','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (6,'Stephen','','Schwarzman','CEO Blackstone','Corporate','2/14/1947','','','','Jewish','','Yale University',1969,'Abington Senior High School, PA','','Harvard Business School',1972,'','');
INSERT INTO "elite" VALUES (7,'Ari','','Emanuel','CEO Endeavor','Entertainment','','','','','Jewish','','Macalester College','','','','','','Rahm Emanuel','');
INSERT INTO "elite" VALUES (8,'Sundar','','Pichai','CEO GOOGL','Corporate','','','','','','Indian','','','','','','','','');
INSERT INTO "elite" VALUES (9,'Lloyd','','Blankfein','CEO Goldman Sachs','Corporate','','','','','Jewish','','','','','','','','','');
INSERT INTO "elite" VALUES (10,'Mark','Elliot','Zuckerberg','CEO META','Corporate','','','','','Jewish','','','','Phillips Exeter Academy, NH','','','','','');
INSERT INTO "elite" VALUES (11,'Satya','','Nadella','CEO MSFT','Corporate','','','','','','Indian','','','','','','','','');
INSERT INTO "elite" VALUES (12,'Jensen','','Huang','CEO NVDA','Corporate','','','','','','Asian','','','','','','','','');
INSERT INTO "elite" VALUES (13,'Jeff','','Shell','CEO, NBCUniversal','Media','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (14,'Anderson','','Cooper','CNN','Media','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (15,'Cecilia','','Rouse','Chair, Council of Economic Advisors','Politics, Academia','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (16,'Arthur','','Sulzberger','Chairman NYT','Media','','','','','','Germany','Brown University',2003,'Ethical Culture Fieldston School, NY','','','','','');
INSERT INTO "elite" VALUES (17,'Warren','','Buffett','Chairman, CEO BRK.A','Corporate','','','','','','White','','','','','','','','');
INSERT INTO "elite" VALUES (18,'Brian','L','Roberts','Chairman, CEO Comcast','Media','','','','','Jewish','','University of Pennsylvania','','','','','','','');
INSERT INTO "elite" VALUES (19,'Bernard','','Arnault','Chairman, CEO LVMH','Corporate','3/5/1949','Roubaix, France','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (20,'Olaf','','Scholz','Chancellor Germany','Politics','','','','Social Democratic Party of Germany','','','University of Hamburg','','','','','','','');
INSERT INTO "elite" VALUES (21,'Adam','','Silver','Comissioner NBA','Media','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (22,'Mohammed','','bin Salman','Crown Prince, PM Saudi Arabia','Politics','8/31/1985','Riyadh, Saudi Arabia','','','Islamic','Arab','King Saud University','','','','','','','');
INSERT INTO "elite" VALUES (23,'William','Joseph','Burns','Director, CIA','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (24,'Brian','','Deese','Director, National Economic Council','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (25,'Zanny','Minton','Beddoes','Editor-in-chief, The Economist','','','','','','','','University of Oxford','','','','','','','');
INSERT INTO "elite" VALUES (26,'Kathleen','','Kingsbury','Editorial board, NYT','Media','','','','','','','Georgetown University','','','','','','','');
INSERT INTO "elite" VALUES (27,'Jyoti','','Thottam','Editorial board, NYT','Media','','','','','','','Yale University',1993,'','','','','','');
INSERT INTO "elite" VALUES (28,'Binyamin','','Appelbaum','Editorial board, NYT','Media','','','','','','','University of Pennsylvania','','','','','','','');
INSERT INTO "elite" VALUES (29,'Greg','','Bensinger','Editorial board, NYT','Media','','','San Francisco, US','','','','University of Virginia','','','','Journalism, Columbia University','','','');
INSERT INTO "elite" VALUES (30,'Michelle','','Cottle','Editorial board, NYT','Media','','','','','','','Vanderbilt University','','','','','','','');
INSERT INTO "elite" VALUES (31,'Mara','','Gay','Editorial board, NYT','Media','','','Brooklyn, US','','','','University of Michigan','','','','','','','');
INSERT INTO "elite" VALUES (32,'Jeneen','','Interlandi','Editorial board, NYT','Media','','','Manhattan, US','','','','Rutgers University','','','','Columbia University','','','');
INSERT INTO "elite" VALUES (33,'Lauren','','Kelley','Editorial board, NYT','Media','','','Brooklyn, US','','','','Texas Christian University','','','','','','','');
INSERT INTO "elite" VALUES (34,'Alex','','Kingsbury','Editorial board, NYT','Media','','','','','','','George Washington University','','','','Columbia University','','','');
INSERT INTO "elite" VALUES (35,'Serge','','Schmemann','Editorial board, NYT','Media','','','','','','','Harvard University',1967,'Collegiate School','1963','Columbia University',1971,'','');
INSERT INTO "elite" VALUES (36,'Brent','','Staples','Editorial board, NYT','Media','','','','','','','Widener University',1973,'','','','','','');
INSERT INTO "elite" VALUES (37,'Farah','','Stockman','Editorial board, NYT','Media','','','','','','','Harvard University',1996,'','','','','','');
INSERT INTO "elite" VALUES (38,'Jesse','','Wegman','Editorial board, NYT','Media','','','','','','','Wesleyan University',1996,'','','NYU Law School',2005,'','');
INSERT INTO "elite" VALUES (39,'Nick','','Fox','Editorial board, NYT','Media','','','','','','','Binghamton University','','','','Journalism, Columbia University','','','');
INSERT INTO "elite" VALUES (40,'Tucker','','Carlson','FOX','Media','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (41,'Laura','','Ingraham','FOX','Media','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (42,'Sebastian','','Mallaby','Fellow, Council on Foreign Relations','Media','','','','','','','University of Oxford',1986,'Eton College','','','','Christopher Mallaby','');
INSERT INTO "elite" VALUES (43,'Sam','','Bankman-Fried','Former CEO FTX','Corporate','','','','','Jewish','','MIT','','','','','','','');
INSERT INTO "elite" VALUES (44,'John','','Dingell','Former Congressman','Politics','','','','','','','Georgetown University',1949,'Georgetown Preparatory School','','','','','');
INSERT INTO "elite" VALUES (45,'John','','Deutch','Former DCI','Academia, Politics','','','','','Jewish','','Amherst College','','Sidwell Friends School','','','','','');
INSERT INTO "elite" VALUES (46,'Janet','','Yellen','Former Fed chair','Politics, Academia','','','','','Jewish','','','','','','','','','');
INSERT INTO "elite" VALUES (47,'Barack','','Obama','Former POTUS','Politics','','','','','Christian','','Columbia University',1983,'Punahou School, HI','1979','Harvard Law School',1991,'','');
INSERT INTO "elite" VALUES (48,'George','Walker','Bush Jr.','Former POTUS','Politics','','','','','Christian','','Yale University',1968,'Phillips Academy, MA','','Harvard Business School',1975,'','');
INSERT INTO "elite" VALUES (49,'William','Jefferson','Clinton','Former POTUS','Politics','','','','','Baptist','','Georgetown University',1968,'Hot Springs High School, AK','1964','Yale Law School',1973,'','');
INSERT INTO "elite" VALUES (50,'Donald','','Trump','Former POTUS','Politics','7/14/1946','Queens, NY','','','Christian','','Wharton, University of Pennsylvania',1968,'New York Military Academy','','','','','');
INSERT INTO "elite" VALUES (51,'George','HW','Bush','Former POTUS','Politics','6/12/1924','Milton, MA','','','Christian','','Yale University',1948,'Phillips Academy, MA','1942','','','','');
INSERT INTO "elite" VALUES (52,'Hanna','','Gray','Former President, University of Chicago','Academia','','','','','','','Bryn Mawr College',1950,'Sidwell Friends School','1948','','','','');
INSERT INTO "elite" VALUES (53,'Ruth','Bader','Ginsburg','Former SCOTUS','Politics','3/15/1933','Brooklyn, NY','','','Jewish','','Cornell University','','James Madison High School, NY','1950','Columbia Law School',1959,'','');
INSERT INTO "elite" VALUES (54,'Hillary','Diane','Clinton','Former Senator','Politics','','','','','Methodist','','Wellesley College',1969,'Maine South High School, ME','1965','Yale Law School',1973,'','');
INSERT INTO "elite" VALUES (55,'Xi','','Jinping','General Secretary China','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (56,'Jamal','','Khashoggi','Journalist, The Washington Post','Media','','','','','','','Indiana State University','','','','','','','');
INSERT INTO "elite" VALUES (57,'Rachel','','Maddow','MSNBC','Media','','','','','','','Stanford University',1994,'Castro Valley High School, CA','','DPhil, Oxford University',2001,'','');
INSERT INTO "elite" VALUES (58,'Rupert','','Murdoch','News Corp','Media','','','','','Christian','','','','','','','','','');
INSERT INTO "elite" VALUES (59,'Joe','','Tsai','Owner Nets','Media','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (60,'Anthony','','Albanese','PM Australia','Politics','2/3/1963','New South Wales, Australia','','','','Irish, Italian','University of Sydney',1984,'','','','','','');
INSERT INTO "elite" VALUES (61,'Justin','','Trudeau','PM Canada','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (62,'Narendra','','Modi','PM India','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (63,'Giorgia','','Meloni','PM Italy','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (64,'Fumio','','Kishida','PM Japan','Politics','','','','','','','Waseda',1982,'','','','','','');
INSERT INTO "elite" VALUES (65,'Rishi','','Sunak','PM UK','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (66,'Joseph','Robinette','Biden Jr.','POTUS','Politics','','','','','Catholic','','University of Delaware',1965,'Archmere Academy, DE','1961','Syracuse University College of Law',1968,'','');
INSERT INTO "elite" VALUES (67,'Jair','','Bolsonaro','President Brazil','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (68,'Ursula','','von der Leyen','President European Commission','Politics','','','','Christian Democratic Union of Germany','','','','','','','Hannover Medical School',1987,'','');
INSERT INTO "elite" VALUES (69,'Emmanuel','','Macron','President France','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (70,'Joko','','Widodo','President Indonesia','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (71,'Andrés','','Obrador','President Mexico','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (72,'Vladimir','','Putin','President Russia','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (73,'Yoon','','Suk-yeol','President South Korea','Politics','','','','','Catholic','','','','','','','','','');
INSERT INTO "elite" VALUES (74,'Recep','','Erdoğan','President Turkey','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (75,'Volodymyr','','Zelensky','President of Ukraine','Politics','','','','','Jewish','','','','','','','','','');
INSERT INTO "elite" VALUES (76,'Elizabeth','','Alexander','President, Andrew W. Mellon Foundation + Pulitzer Prize Board 2022-2023','Academia, Media','','','','','','','Boston University',1984,'Sidwell Friends School','1980','','','Clifford Alexander Jr, Mark C. Alexander','Recited poem at 2009 inauguration');
INSERT INTO "elite" VALUES (77,'Christina','','Paxson','President, Brown University','Academia','','','','','','','Swarthmore College',1982,'','','','','','');
INSERT INTO "elite" VALUES (78,'Lee','','Bollinger','President, Columbia University + Pulitzer Prize Board 2022-2023','Academia, Media','','','','','','','University of Oregon',1968,'','','','','','');
INSERT INTO "elite" VALUES (79,'Martha','','Pollack','President, Cornell University','Academia','','','','','','','Dartmouth College',1979,'','','','','','');
INSERT INTO "elite" VALUES (80,'Philip','','Hanlon','President, Dartmouth College','Academia','','','','','','','Dartmouth College',1977,'','','MIT',1981,'','');
INSERT INTO "elite" VALUES (81,'Laurence','','Bacow','President, Harvard University','Academia','','','','','','','MIT','','','','','','','');
INSERT INTO "elite" VALUES (82,'Christopher','','Eisgruber','President, Princeton University','Academia','','','','','','','Princeton University',1983,'','','','','','');
INSERT INTO "elite" VALUES (83,'Mary','Elizabeth','Magill','President, University of Pennsylvania','Academia','','','','','','','Yale University',1988,'','','','','','');
INSERT INTO "elite" VALUES (84,'Peter','','Salovey','President, Yale University','Academia','','','','','','','Stanford University','','','','','','','');
INSERT INTO "elite" VALUES (85,'John','','Roberts','SCOTUS','Politics','1/27/1955','Buffalo, NY','','Republican','Catholic','','','','','','','','','');
INSERT INTO "elite" VALUES (86,'Clarence','','Thomas','SCOTUS','Politics','6/23/1948','Pin Point, GA','','Republican','Catholic','','','','','','','','','');
INSERT INTO "elite" VALUES (87,'Samuel','','Alito','SCOTUS','Politics','4/1/1950','Trenton, NJ','','Republican','Catholic','','','','','','','','','');
INSERT INTO "elite" VALUES (88,'Sonia','','Sotomayor','SCOTUS','Politics','6/25/1954','Bronx, NY','','Democrat','Catholic','','','','','','','','','');
INSERT INTO "elite" VALUES (89,'Elena','','Kagan','SCOTUS','Politics, Academia','4/28/1960','Manhattan, NY','','Democrat','Jewish','','','','','','','','','');
INSERT INTO "elite" VALUES (90,'Neil','','Gorsuch','SCOTUS','Politics','8/29/1967','Denver, CO','','Republican','Christian','','','','Georgetown Preparatory School','1985','','','','');
INSERT INTO "elite" VALUES (91,'Brett','','Kavanaugh','SCOTUS','Politics','2/12/1965','Washington, D.C.','','Republican','Catholic','','','','Georgetown Preparatory School','1983','','','','');
INSERT INTO "elite" VALUES (92,'Vivian','','Barrett','SCOTUS','Politics','1/28/1972','New Orleans, LA','','Republican','Catholic','','','','','','','','','');
INSERT INTO "elite" VALUES (93,'Ketanji','','Jackson','SCOTUS','Politics','9/14/1970','Washigton, D.C.','','Democrat','Christian','','Harvard University','','','','','','','');
INSERT INTO "elite" VALUES (94,'Lloyd','','Austin','Secretary of Defense','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (95,'Anne','','Applebaum','Staff writer, The Atlantic','Media','','','','','','','Yale University','','Sidwell Friends School','','','','','');
INSERT INTO "elite" VALUES (96,'Linda','','Thomas-Greenfield','US Ambassador to the UN','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (97,'Antony','','Blinken','US Secretary of State','Politics','','','','','','','','','','','','','','');
INSERT INTO "elite" VALUES (98,'Bernie','','Sanders','US Senate','Politics','','','','','Jewish','','University of Chicago',1964,'James Madison High School, NY','1959','','','','');
INSERT INTO "elite" VALUES (99,'Charles','Ellis','Schumer','US Senate Majority Leader','Politics','11/23/1950','Brooklyn, NY','','','Jewish','','Harvard University',1971,'James Madison High School, NY','1967','Harvard Law School',1974,'','');
INSERT INTO "elite" VALUES (100,'Nancy','Patricia','Pelosi','US Speaker of House','Politics','3/26/1940','Baltimore, MD, US','','','Catholic','','Trinity College, DC',1962,'Institute of Notre Dame','1958','','','','');
INSERT INTO "elite" VALUES (101,'Kamala','','Harris','Vice POTUS','Politics','','','','','Baptist','','','','','','','','','');
COMMIT;
