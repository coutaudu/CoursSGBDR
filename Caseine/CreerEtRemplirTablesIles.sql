
	

-- Database: AII

-- DROP DATABASE IF EXISTS "AII";

CREATE DATABASE "AII"
WITH
OWNER = postgres
ENCODING = 'UTF8'
LC_COLLATE = 'English_Europe.1252'
LC_CTYPE = 'English_Europe.1252'
TABLESPACE = pg_default
CONNECTION LIMIT = -1
IS_TEMPLATE = False;
	
CREATE TABLE iles (
	id 			INTEGER,
	nom			TEXT,
	population	INTEGER,
	superficie	INTEGER,
	langue		TEXT	
);

INSERT INTO iles VALUES (1, 'Alphazap', 66, 96, 'SQL');
INSERT INTO iles VALUES (2, 'Alphazap', 124, 35, 'SQL');
INSERT INTO iles VALUES (3, 'Latlux', 66, 84, 'SQL');
INSERT INTO iles VALUES (4, 'Namfix', 78, 44, 'SQL');
INSERT INTO iles VALUES (5, 'Toughjoyfax', 61, 96, 'SQL');
INSERT INTO iles VALUES (6, 'Subin', 116, 88, 'SQL');
INSERT INTO iles VALUES (7, 'Latlux', 79, 98, 'SQL');
INSERT INTO iles VALUES (8, 'Y-Solowarn', 59, 80, 'SQL');
INSERT INTO iles VALUES (9, 'Zamit', 102, 38, 'SQL');
INSERT INTO iles VALUES (10, 'Overhold', 138, 33, 'SQL');


CREATE TABLE iles2 (
	id 			INTEGER,
	nom			TEXT,
	population	INTEGER,
	superficie	INTEGER,
	latitude	REAL,
	longitude 	REAL,
	religion	TEXT
);


-- Regexp
-- Find : \|([0-9])
-- Replace With: , \1
-- Find : \|([0-9][A-Z])
-- Replace With: , '\1'\)\;
-- Find : \|([A-Z][A-Z])
-- Replace With: , '\1'\)\;
-- Find : \|([FM])\,
-- Replace With: , '\1'\,
-- Find : \|([FM])\,
-- Replace With: , '\1'\,
-- Find : '([A-Z][a-z]+)\|([A-Z][a-z]+)\,
-- Replace With: '\1'\, \'\2\',




INSERT INTO iles2 VALUES (1, 'Ventosanzap', 74, 54, 55.6845883, 21.1844774, 'Dyviwas');
INSERT INTO iles2 VALUES (2, 'Redhold', 33, 56, 33.1, -117.28, 'Uashi');
INSERT INTO iles2 VALUES (3, 'Cardify', 52, 50, 31.2303904, 121.4737021, 'Maasm');
INSERT INTO iles2 VALUES (4, 'Keylex', 55, 59, 40.5072039, 20.9253299, 'Dyviwas');
INSERT INTO iles2 VALUES (5, 'Voltsillam', 137, 81, 14.8465342, -88.3032755, 'Dyviwas');
INSERT INTO iles2 VALUES (6, 'Domainer', 114, 100, -19.4021302, 46.9537969, 'Dyviwas');
INSERT INTO iles2 VALUES (7, 'Redhold', 44, 73, 47.3752386, -0.8453268, 'Dyviwas');
INSERT INTO iles2 VALUES (8, 'Tresom', 137, 68, 50.8963676, 40.5554489, 'Dyviwas');
INSERT INTO iles2 VALUES (9, 'Zamit', 111, 85, 29.849977, 95.775494, 'Maasm');
INSERT INTO iles2 VALUES (10, 'Voltsillam', 87, 65, 49.1954831, 16.2990752, 'Maasm');
INSERT INTO iles2 VALUES (11, 'Veribet', 109, 73, 30.2516885, 120.170382, 'Uashi');
INSERT INTO iles2 VALUES (12, 'Asoka', 55, 51, 43.4945737, 5.8978018, 'Dyviwas');
INSERT INTO iles2 VALUES (13, 'Overhold', 81, 82, -12.836985, 45.176077, 'Uashi');
INSERT INTO iles2 VALUES (14, 'Alpha', 149, 50, 49.9808189, 21.726063, 'Dyviwas');
INSERT INTO iles2 VALUES (15, 'Job', 67, 53, 63.8223321, 20.2753893, 'Maasm');
INSERT INTO iles2 VALUES (16, 'Temp', 135, 98, 40.2278236, -8.5382163, 'Maasm' );
INSERT INTO iles2 VALUES (17, 'Zontrax', 136, 56, 26.352089, 111.262144, 'Dyviwas');
INSERT INTO iles2 VALUES (18, 'Y-Solowarm', 70, 85, -6.921715, 112.054703, 'Uashi');
INSERT INTO iles2 VALUES (19, 'Zamit', 119, 85, -6.2433851, 105.9200531, 'Maasm');
INSERT INTO iles2 VALUES (20, 'Subin', 148, 93, 36.289265, 116.456187, 'Maasm');
INSERT INTO iles2 VALUES (21, 'Matsoft', 74, 63, 39.9799992, -105.248737, 'Maasm');
INSERT INTO iles2 VALUES (22, 'Lotlux', 146, 97, 41.2875744, -8.447078, 'Uashi');
INSERT INTO iles2 VALUES (23, 'Cardify', 100, 83, -10.5219124, -38.9066439, 'Maasm');
INSERT INTO iles2 VALUES (24, 'Stronghold', 109, 61, 24.803563, 115.482733, 'Maasm');
INSERT INTO iles2 VALUES (25, 'Biodex', 94, 89, 13.8565034, 109.1642208, 'Maasm');
INSERT INTO iles2 VALUES (26, 'Voyatouch', 79, 83, 7.5252594, 122.3617095, 'Uashi');
INSERT INTO iles2 VALUES (27, 'Solarbreeze', 84, 83, -6.9160809, 110.9036507, 'Maasm');
INSERT INTO iles2 VALUES (28, 'Voyatouch', 128, 57, 0.0074415, 37.0722303, 'Dyviwas' );
INSERT INTO iles2 VALUES (29, 'Zaam-Dox', 85, 61, -2.1587078, 16.2345633, 'Dyviwas');
INSERT INTO iles2 VALUES (30, 'Bitwolf', 69, 88, 45.9735653, 134.1872425, 'Maasm' );
INSERT INTO iles2 VALUES (31, 'Tempsoft', 85, 63, 46.6669865, 3.590421, 'Dyviwas');
INSERT INTO iles2 VALUES (32, 'Veribet', 148, 77, 27.08556, 112.949437, 'Uashi');
INSERT INTO iles2 VALUES (33, 'Wrapsafe', 139, 82, 25.7357116, -80.3992652, 'Dyviwas');
INSERT INTO iles2 VALUES (34, 'Prodder', 50, 53, 59.9123889, 10.8335476, 'Uashi');
INSERT INTO iles2 VALUES (35, 'Tres-Zap', 99, 69, -9.5295, 119.2674, 'Uashi');
INSERT INTO iles2 VALUES (36, 'Voltsillam', 109, 100, -8.7765432, 116.5093719, 'Dyviwas');
INSERT INTO iles2 VALUES (37, 'It', 56, 55, -18.6517964, -48.1904503, 'Uashi');
INSERT INTO iles2 VALUES (38, 'Veribet', 63, 67, -6.5096059, 108.4543113, 'Dyviwas');
INSERT INTO iles2 VALUES (39, 'Span', 48, 62, 45.8580458, 17.3018974, 'Maasm');
INSERT INTO iles2 VALUES (40, 'Bigtax', 46, 94, 46.25006, -83.5666, 'Uashi');
INSERT INTO iles2 VALUES (41, 'Sonair', 64, 72, 50.7592361, 17.6835478, 'Uashi');
INSERT INTO iles2 VALUES (42, 'Zoolab', 82, 81, 55.536259, 37.5985159, 'Uashi' );
INSERT INTO iles2 VALUES (43, 'Latlux', 69, 80, 40.6349415, 22.5004081, 'Dyviwas');
INSERT INTO iles2 VALUES (44, 'Tampflex', 45, 73, 12.8383201, -85.4607639, 'Uashi');
INSERT INTO iles2 VALUES (45, 'Rank', 102, 65, 13.5027167, 144.8016402, 'Uashi');
INSERT INTO iles2 VALUES (46, 'Toughjoyfax', 132, 70, 35.86166, 104.195397, 'Maasm');
INSERT INTO iles2 VALUES (47, 'Fix San', 47, 67, 45.9559485, 14.3016556, 'Maasm');
INSERT INTO iles2 VALUES (48, 'Mat Lam Tam', 142, 68, 56.3448609, 25.5603229, 'Dyviwas' );
INSERT INTO iles2 VALUES (49, 'Veribet', 144, 96, 20.0910963, -98.7623874, 'Dyviwas' );
INSERT INTO iles2 VALUES (50, 'It', 103, 66, 30.914922, 118.334359, 'Uashi' );



