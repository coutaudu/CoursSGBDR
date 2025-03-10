\c postgres

DROP DATABASE IF EXISTS "atelier";

CREATE DATABASE "atelier" WITH
    OWNER = postgres
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
\c atelier

CREATE TABLE services (
	id			INTEGER PRIMARY KEY,
    nom			TEXT
);

CREATE TABLE horaires (
    service_id		INTEGER PRIMARY KEY,
	debut			INTEGER,
	fin				INTEGER,
	CONSTRAINT service_existant FOREIGN KEY (service_id) REFERENCES services(id)
);

CREATE TABLE employes (
	id				INTEGER,
	prenom  		TEXT,
	salaire			INTEGER,
    adresse			TEXT,
	email			TEXT,
    service_id			INTEGER,
	CONSTRAINT cle_primaire_employes PRIMARY KEY (id),
	CONSTRAINT service_existant FOREIGN KEY (service_id) REFERENCES services(id),
	CONSTRAINT email_format CHECK (email LIKE '%@%'),
	CONSTRAINT email_unique UNIQUE (email)
);

CREATE TABLE chefs (
	service_id			INTEGER PRIMARY KEY,
	employe_id			INTEGER,
	CONSTRAINT service_existant FOREIGN KEY (service_id) REFERENCES services(id) DEFERRABLE,
	CONSTRAINT employe_existant FOREIGN KEY (employe_id) REFERENCES employes(id) DEFERRABLE
	);


INSERT INTO services VALUES (1, 'Production' );
INSERT INTO services VALUES (2, 'Maintenance');
INSERT INTO services VALUES (3, 'Stock'      );
INSERT INTO services VALUES (4, 'Astreinte'  );

INSERT INTO horaires VALUES (1, 5   , 13);
INSERT INTO horaires VALUES (2, 8   , 16);
INSERT INTO horaires VALUES (3, 8   , 16);
INSERT INTO horaires VALUES (4, NULL, NULL);

INSERT INTO employes VALUES (1, 'John',120,'Randwick','john@fabrique.com',1);
INSERT INTO employes VALUES (2, 'Mary',130,'Wollolong',NULL,2);
INSERT INTO employes VALUES (3, 'Peter',110,'Randwick','peter@fabrique.com',3);
INSERT INTO employes VALUES (4, 'Tom',120,'Botany Bay',NULL,1);
INSERT INTO employes VALUES (5, 'Pats',130,'Botany Bay','pats@fabrique.com',1);
INSERT INTO employes VALUES (6, 'Peter',110,'Venissieux','peter2@fabrique.com',1);


INSERT INTO chefs VALUES (1, 5);
INSERT INTO chefs VALUES (2, 1);
INSERT INTO chefs VALUES (3, 3);
INSERT INTO chefs VALUES (4, 5);
