DROP TABLE habitants;

CREATE TABLE habitants (
    id 				int,
	prenom			text,
	nom				text,
	sexe			text,
    annee_naissance	int,
	telephone		real,
	clan			text	
);



-- Regexp
-- Find : \|([0-9])
-- Replace With: , \1
-- Find : \|([A-Z][A-Z])
-- Replace With: , '\1'\)\;
-- Find : \|([FM])\,
-- Replace With: , '\1'\,
-- Find : \|([FM])\,
-- Replace With: , '\1'\,
-- Find : '([A-Z][a-z]+)\|([A-Z][a-z]+)\,
-- Replace With: '\1'\, \'\2\',


INSERT INTO habitants VALUES (1,   'Whittaker', 'Dominighi', 'F', 1930, 9373389640.0, 'OH');
INSERT INTO habitants VALUES (2,   'Koenraad', 'Pogosian', 'F', 1988, 2129995541.0, 'NY');
INSERT INTO habitants VALUES (3,   'Rod', 'Leyborne', 'M', 1937, 5869960902.0, 'MI');
INSERT INTO habitants VALUES (4,   'Alfred', 'Hamsher', 'F', 2017, 8183147380.0, 'CA');
INSERT INTO habitants VALUES (5,   'Jerad', 'Pampling', 'F', 1925, 7167857284.0, 'NY');
INSERT INTO habitants VALUES (6,   'Andre', 'Arnold', 'M', 1982, 8644428717.0, 'SC');
INSERT INTO habitants VALUES (7,   'Curt', 'Buckberry', 'M', 1954, 5102190682.0, 'CA');
INSERT INTO habitants VALUES (8,   'Otis', 'Funnell', 'M', 1992, 3209554793.0, 'MN');
INSERT INTO habitants VALUES (9,   'Jeffry', 'Bourdel', 'F', 1948, 4191113156.0, 'OH');
INSERT INTO habitants VALUES (10,  'Lorry', 'Frow', 'F', 1970, 5713358587.0, 'VA');
INSERT INTO habitants VALUES (11,  'Gabriel', 'Jancy', 'F', 1953, 7166104752.0, 'NY');
INSERT INTO habitants VALUES (12,  'Stearne', 'Soar', 'F', 2001, 7138160856.0, 'TX');
INSERT INTO habitants VALUES (13,  'Hershel', 'Tomaszynski', 'F', 1924, 5709732898.0, 'PA');
INSERT INTO habitants VALUES (14,  'Laurence', 'Ottey', 'M', 1922, 6153035818.0, 'TN'); 
INSERT INTO habitants VALUES (15,  'Josias', 'Oakinfold', 'M', 1922, 8433712021.0, 'SC');
INSERT INTO habitants VALUES (16,  'Bink', 'Lathey', 'F', 1925, 2052914456.0, 'AL');
INSERT INTO habitants VALUES (17,  'Vince', 'Lohan', 'M', 2013, 9019950523.0, 'TN');
INSERT INTO habitants VALUES (18,  'Webb', 'Gyles', 'M', 1986, 8623730896.0, 'NJ');
INSERT INTO habitants VALUES (19,  'Rees', 'McNamee', 'M', 1956, 7049938973.0, 'NC');
INSERT INTO habitants VALUES (20,  'Gray', 'Sheeran', 'M', 1970, 2024471569.0, 'DC');
INSERT INTO habitants VALUES (21,  'Calvin', 'Kornousek', 'F', 1992, 2135966408.0, 'CA'); 
INSERT INTO habitants VALUES (22,  'Dalton', 'Boxe', 'M', 1921, 2512057085.0, 'AL'); 
INSERT INTO habitants VALUES (23,  'Lion', 'Hayne', 'F', 1953, 5158867078.0, 'IA');  
INSERT INTO habitants VALUES (24,  'Pennie', 'Yarrow', 'F', 1970, 8609821481.0, 'CT'); 
INSERT INTO habitants VALUES (25,  'Hussein', 'D''Elia', 'F', 1972, 2693711848.0, 'MI');   
INSERT INTO habitants VALUES (26,  'Titos', 'Kirkham', 'F', 2005, 8088566895.0, 'HI'); 
INSERT INTO habitants VALUES (27,  'Puff', 'Toma', 'F', 1991, 9522573876.0, 'MN');   
INSERT INTO habitants VALUES (28,  'Valentine', 'Spada', 'F', 1946, 2037803442.0, 'CT');  
INSERT INTO habitants VALUES (29,  'Franzen', 'Semerad', 'F', 1943, 5012941394.0, 'AR');  
INSERT INTO habitants VALUES (30,  'Orin', 'Dawdry', 'M', 1936, 5048638997.0, 'LA');   
INSERT INTO habitants VALUES (31,  'Nick', 'Dallman', 'F', 1999, 8019509872.0, 'UT'); 
INSERT INTO habitants VALUES (32,  'Cris', 'Lewty', 'M', 1996, 6517224204.0, 'MN'); 
INSERT INTO habitants VALUES (33,  'Vic', 'Prozescky', 'F', 1976, 8184525754.0, 'CA'); 
INSERT INTO habitants VALUES (34,  'Alley', 'Fernando', 'M', 1979, 5619201477.0, 'FL'); 
INSERT INTO habitants VALUES (35,  'West', 'Nevinson', 'M', 2018, 5736002313.0, 'MO'); 
INSERT INTO habitants VALUES (36,  'Dave', 'Bilt', 'F', 1933, 7853837653.0, 'KS'); 
INSERT INTO habitants VALUES (37,  'Chane', 'Bruni', 'M', 1950, 5106777825.0, 'CA'); 
INSERT INTO habitants VALUES (38,  'Otis', 'Whitehall', 'F', 1944, 3396487102.0, 'MA'); 
INSERT INTO habitants VALUES (39,  'Horten', 'Sousa', 'M', 1977, 8505204383.0, 'FL'); 
INSERT INTO habitants VALUES (40,  'Darrick', 'Galbreath', 'F', 2010, 4132024113.0, 'MA');
INSERT INTO habitants VALUES (41,  'Vern', 'Barizeret', 'F', 1979, 9138621749.0, 'KS'); 
INSERT INTO habitants VALUES (42,  'Perkin', 'Gilcriest', 'M', 1985, 2037550567.0, 'CT'); 
INSERT INTO habitants VALUES (43,  'Grove', 'Pawnsford', 'F', 1925, 8045199838.0, 'VA'); 
INSERT INTO habitants VALUES (44,  'Tiebold', 'Romain', 'M', 1997, 8062972095.0, 'TX'); 
INSERT INTO habitants VALUES (45,  'Barnabe', 'Breit', 'F', 1983, 6196318773.0, 'CA'); 
INSERT INTO habitants VALUES (46,  'Alexio', 'Robke', 'M', 1964, 3616179826.0, 'TX'); 
INSERT INTO habitants VALUES (47,  'Beau', 'Grabbam', 'M', 1999, 2125422754.0, 'NY'); 
INSERT INTO habitants VALUES (48,  'Angus', 'Clogg', 'F', 1974, 8121697856.0, 'IN'); 
INSERT INTO habitants VALUES (49,  'Cozmo', 'Clamp', 'M', 2011, 7187039743.0, 'NY'); 
INSERT INTO habitants VALUES (50,  'Purcell', 'Fri', 'M', 2018, 7273714861.0, 'FL'); 
INSERT INTO habitants VALUES (51,  'Kermie', 'Rontsch', 'F', 1925, 8507216782.0, 'FL'); 
INSERT INTO habitants VALUES (52,  'Randolph', 'Dunge', 'F', 1969, 5615855325.0, 'FL'); 
INSERT INTO habitants VALUES (53,  'Matthaeus', 'Low', 'M', 2014, 5125648663.0, 'TX'); 
INSERT INTO habitants VALUES (54,  'Garrek', 'Bowne', 'M', 1954, 2022788820.0, 'DC'); 
INSERT INTO habitants VALUES (55,  'Bartholomew', 'Knevet', 'M', 1972, 4155594804.0, 'CA'); 
INSERT INTO habitants VALUES (56,  'Jarred', 'Gradwell', 'F', 1990, 7703273390.0, 'GA'); 
INSERT INTO habitants VALUES (57,  'Alexandr', 'Drummond', 'M', 1960, 6159849256.0, 'TN'); 
INSERT INTO habitants VALUES (58,  'Keary', 'O''Quirk', 'F', 2019, 9165526456.0, 'CA'); 
INSERT INTO habitants VALUES (59,  'Emmett', 'Goede', 'M', 2020, 4083313062.0, 'CA'); 
INSERT INTO habitants VALUES (60,  'Derrick', 'Daice', 'F', 2017, 5107460593.0, 'CA');
INSERT INTO habitants VALUES (61,  'Chickie', 'Bonellie', 'M', 1947, 5717530523.0, 'VA'); 
INSERT INTO habitants VALUES (62,  'Aurthur', 'Arrault', 'F', 1987, 5027531841.0, 'KY'); 
INSERT INTO habitants VALUES (63,  'Judon', 'Grishanov', 'M', 2012, 4151945640.0, 'CA'); 
INSERT INTO habitants VALUES (64,  'Ahmed', 'Orfeur', 'F', 1936, 3258401016.0, 'TX'); 
INSERT INTO habitants VALUES (65,  'Harland', 'Readshall', 'M', 2009, 9168728142.0, 'CA'); 
INSERT INTO habitants VALUES (66,  'Dennet', 'Sauvage', 'F', 1980, 2109840843.0, 'TX'); 
INSERT INTO habitants VALUES (67,  'Davide', 'Brithman', 'F', 1947, 2149888982.0, 'TX'); 
INSERT INTO habitants VALUES (68,  'Brody', 'Matresse', 'F', 2002, 4068137334.0, 'MT'); 
INSERT INTO habitants VALUES (69,  'Nichols', 'Woodings', 'M', 1963, 9178022602.0, 'NY'); 
INSERT INTO habitants VALUES (70,  'Raffarty', 'Bannerman', 'M', 1949, 7639459519.0, 'MN');   
INSERT INTO habitants VALUES (71,  'Moises', 'Chiese', 'M', 1951, 9099790389.0, 'CA'); 
INSERT INTO habitants VALUES (72,  'Dalt', 'Imort', 'M', 1978, 2254318298.0, 'LA'); 
INSERT INTO habitants VALUES (73,  'Gordie', 'Cuxson', 'M', 1953, 9155646407.0, 'TX'); 
INSERT INTO habitants VALUES (74,  'Corey', 'Ferrige', 'M', 1988, 3195477834.0, 'IA'); 
INSERT INTO habitants VALUES (75,  'Llewellyn', 'Bearham', 'F', 1958, 9136612695.0, 'KS'); 
INSERT INTO habitants VALUES (76,  'Armin', 'Heazel', 'M', 1972, 6028713519.0, 'AZ'); 
INSERT INTO habitants VALUES (77,  'Marcos', 'Darell', 'M', 1990, 7137587591.0, 'TX'); 
INSERT INTO habitants VALUES (78,  'Si', 'Pepin', 'M', 1936, 4045953986.0, 'GA'); 
INSERT INTO habitants VALUES (79,  'Kit', 'Rowney', 'F', 2018, 2691351693.0, 'MI'); 
INSERT INTO habitants VALUES (80,  'Gibb', 'Cosby', 'F', 1930, 2514074784.0, 'AL'); 
INSERT INTO habitants VALUES (81,  'Baxie', 'Wapplington', 'M', 1966, 2021464973.0, 'DC'); 
INSERT INTO habitants VALUES (82,  'Levy', 'Isakovic', 'F', 1953, 5599063633.0, 'CA'); 
INSERT INTO habitants VALUES (83,  'Luce', 'Tewkesberry', 'F', 1964, 8067204439.0, 'TX'); 
INSERT INTO habitants VALUES (84,  'Alexander', 'Glentz', 'M', 1962, 3184546368.0, 'LA'); 
INSERT INTO habitants VALUES (85,  'Kincaid', 'Deaville', 'M', 2008, 9895712595.0, 'MI'); 
INSERT INTO habitants VALUES (86,  'Broddy', 'Pantin', 'M', 2012, 9418405798.0, 'FL'); 
INSERT INTO habitants VALUES (87,  'Umberto', 'Jonson', 'F', 1946, 5041141339.0, 'LA'); 
INSERT INTO habitants VALUES (88,  'Gorden', 'Molan', 'F', 1971, 8049938622.0, 'VA'); 
INSERT INTO habitants VALUES (89,  'Amos', 'Naptine', 'M', 1988, 3176075803.0, 'IN'); 
INSERT INTO habitants VALUES (90,  'Dorie', 'Rivel', 'M', 1924, 7198152096.0, 'CO'); 
INSERT INTO habitants VALUES (91,  'Julian', 'Pinke', 'M', 1919, 2027339841.0, 'DC'); 
INSERT INTO habitants VALUES (92,  'Konrad', 'Delia', 'M', 1936, 3039090174.0, 'CO'); 
INSERT INTO habitants VALUES (93,  'Jonathon', 'Habbershon', 'M', 1932, 2251359827.0, 'LA'); 
INSERT INTO habitants VALUES (94,  'Morton', 'Hirsthouse', 'F', 1960, 7759884452.0, 'NV'); 
INSERT INTO habitants VALUES (95,  'Johnnie', 'Conlaund', 'M', 1956, 2142904403.0, 'TX'); 
INSERT INTO habitants VALUES (96,  'Warren', 'Brilon', 'F', 1992, 8474151261.0, 'IL'); 
INSERT INTO habitants VALUES (97,  'Art', 'Sainsbury', 'F', 1959, 3474562736.0, 'NY'); 
INSERT INTO habitants VALUES (98,  'Ruddy', 'Leander', 'F', 1973, 7141413181.0, 'CA'); 
INSERT INTO habitants VALUES (99,  'Rabbi', 'Cod', 'F', 1980, 9525209306.0, 'MN'); 
INSERT INTO habitants VALUES (100, 'Lammond', 'Lawther', 'M', 1973, 2032056450.0, 'CT'); 
INSERT INTO habitants VALUES (101, 'Byrle', 'Nolleau', 'F', 1949, 8172706576.0, 'TX'); 
INSERT INTO habitants VALUES (102, 'Maison', 'Ounsworth', 'F', 1956, 7137061280.0, 'TX'); 
INSERT INTO habitants VALUES (103, 'Jerrie', 'McPartling', 'M', 2015, 7064208385.0, 'GA'); 
INSERT INTO habitants VALUES (104, 'Raul', 'Tarte', 'F', 2001, 9162992754.0, 'CA'); 
INSERT INTO habitants VALUES (105, 'Farly', 'Sherrock', 'M', 1933, 5034957297.0, 'OR'); 
INSERT INTO habitants VALUES (106, 'Igor', 'Sanney', 'M', 1960, 2029448594.0, 'DC'); 
INSERT INTO habitants VALUES (107, 'Paxon', 'Inglese', 'F', 1927, 3053477186.0, 'FL'); 
INSERT INTO habitants VALUES (108, 'Wood', 'Castello', 'F', 1932, 8057499725.0, 'CA'); 
INSERT INTO habitants VALUES (109, 'Ed', 'Reihm', 'F', 1952, 4346614689.0, 'VA'); 
INSERT INTO habitants VALUES (110, 'Sherlocke', 'Claricoats', 'M', 1955, 6027551727.0, 'AZ'); 
INSERT INTO habitants VALUES (111, 'Lorrie', 'Woodwind', 'F', 1926, 7632702515.0, 'MN'); 
INSERT INTO habitants VALUES (112, 'Pryce', 'Rotherham', 'M', 2006, 6011905754.0, 'MS'); 
INSERT INTO habitants VALUES (113, 'Eldin', 'Murton', 'M', 1958, 4055920490.0, 'OK'); 
INSERT INTO habitants VALUES (114, 'Gerhardt', 'Odo', 'F', 1994, 4134780555.0, 'MA'); 
INSERT INTO habitants VALUES (115, 'Basilius', 'Lghan', 'M', 1927, 2099872182.0, 'CA'); 
INSERT INTO habitants VALUES (116, 'Noam', 'Vankov', 'M', 1966, 8044080381.0, 'VA'); 
INSERT INTO habitants VALUES (117, 'Dudley', 'Blindermann', 'M', 2008, 5304793651.0, 'CA'); 
INSERT INTO habitants VALUES (118, 'Mic', 'Riehm', 'M', 1977, 5851459888.0, 'NY'); 
INSERT INTO habitants VALUES (119, 'Garrett', 'Henbury', 'M', 1922, 3612160574.0, 'TX'); 
INSERT INTO habitants VALUES (120, 'Rafaelle', 'O''Skehan', 'F', 1918, 5135098121.0, 'OH'); 
INSERT INTO habitants VALUES (121, 'Jeffrey', 'Cousen', 'M', 2018, 6502279589.0, 'CA'); 
INSERT INTO habitants VALUES (122, 'Rhett', 'Championnet', 'M', 2003, 9192597252.0, 'NC'); 
INSERT INTO habitants VALUES (123, 'Hube', 'Andrusov', 'F', 1985, 6192874553.0, 'CA'); 
INSERT INTO habitants VALUES (124, 'Valdemar', 'Plante', 'F', 2017, 9171572911.0, 'NY'); 

