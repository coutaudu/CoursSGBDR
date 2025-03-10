DROP DATABASE IF EXISTS "fabrique";

CREATE DATABASE "fabrique" WITH
    OWNER = postgres
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
\c fabrique
	

CREATE TABLE employes (
	prenom  		TEXT PRIMARY KEY,
	salaire			INTEGER,
    adresse			TEXT,
    service		TEXT
);



CREATE TABLE horaires (
    service			TEXT PRIMARY KEY,
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
