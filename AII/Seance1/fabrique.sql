DROP DATABASE IF EXISTS "fabrique";

CREATE DATABASE "fabrique" WITH
    OWNER = postgres
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
\c fabrique
	
DROP TABLE IF EXISTS "employes";

CREATE TABLE employes (
	prenom PRIMARY KEY TEXT,
	salaire			INTEGER,
    adresse			TEXT,
    service_id		TEXT
);


DROP TABLE IF EXISTS horaires;

CREATE TABLE horaires (
    service	PRIMARY KEY		TEXT,
	debut			INTEGER,
	fin				INTEGER
);

INSERT INTO employes VALUES ('John',120,'Randwick','Production');
INSERT INTO employes VALUES ('Mary',130,'Wollolong','Maintenance');
INSERT INTO employes VALUES ('Peter',110,'Randwick','Stock');
INSERT INTO employes VALUES ('Tom',120,'Botany Bay','Production');
INSERT INTO employes VALUES ('Pats',130,'Botany Bay','Astreinte');

INSERT INTO horaires VALUES ('Production',5,13);
INSERT INTO horaires VALUES ('Maintenance',8,16);
INSERT INTO horaires VALUES ('Stock',8,16);
