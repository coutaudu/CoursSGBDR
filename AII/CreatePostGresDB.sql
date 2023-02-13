
	

-- Database: AII

DROP DATABASE IF EXISTS "AII";

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
    id 			int,
	nom			varchar(80),
    population	int,
	superficie	int,
	langue		varchar(80)	
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




