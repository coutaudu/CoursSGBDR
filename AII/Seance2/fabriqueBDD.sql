\c postgres

DROP DATABASE IF EXISTS "fabrique";

CREATE DATABASE "fabrique" WITH
    OWNER = postgres
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
\c fabrique
	

CREATE TABLE horaires (
    service			TEXT PRIMARY KEY,
	debut			INTEGER ,
	fin				INTEGER
);
	
CREATE TABLE employes (
	prenom  		TEXT,
	salaire			INTEGER,
    adresse			TEXT,
	email			TEXT,
    service			TEXT,
	CONSTRAINT service_existant FOREIGN KEY (service) REFERENCES horaires(service),
	CONSTRAINT cle_primaire_employes PRIMARY KEY (prenom),
	CONSTRAINT email_format CHECK (email LIKE '%@%'),
	CONSTRAINT email_unique UNIQUE (email)
);

CREATE TABLE chefs (
	prenom			TEXT,
	service			TEXT PRIMARY KEY,
	CONSTRAINT service_existant FOREIGN KEY (service) REFERENCES horaires(service),
	CONSTRAINT employe_existant FOREIGN KEY (prenom) REFERENCES employes(prenom)
	);

INSERT INTO horaires VALUES ('Production',5,13);
INSERT INTO horaires VALUES ('Maintenance',8,16);
INSERT INTO horaires VALUES ('Stock',8,16);
INSERT INTO horaires VALUES ('Astreinte',NULL,NULL);

INSERT INTO employes VALUES ('John',120,'Randwick','john@fabrique.com','Production');
INSERT INTO employes VALUES ('Mary',130,'Wollolong',NULL,'Maintenance');
INSERT INTO employes VALUES ('Peter',110,'Randwick',NULL,'Stock');
INSERT INTO employes VALUES ('Tom',120,'Botany Bay',NULL,'Production');
INSERT INTO employes VALUES ('Idir',110,'Villeurbanne',NULL,'Production');
INSERT INTO employes VALUES ('Pats',130,'Botany Bay',NULL,'Astreinte');

INSERT INTO chefs VALUES ('Pats', 'Astreinte');
INSERT INTO chefs VALUES ('Peter', 'Stock');
INSERT INTO chefs VALUES ('John', 'Production');
INSERT INTO chefs VALUES ('Mary', 'Maintenance');

ALTER TABLE horaires ADD CONSTRAINT service_a_chef FOREIGN KEY (service) REFERENCES chefs(service);


