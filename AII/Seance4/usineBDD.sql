
DROP DATABASE IF EXISTS "usine";

CREATE DATABASE "usine" ;
	
\c usine
	
DROP TABLE IF EXISTS "salaries";

CREATE TABLE salaries (
    id 				INTEGER PRIMARY KEY,
	prenom			TEXT,
	nom				TEXT,
	sexe			TEXT,
    annee_naissance	INTEGER,
    annee_embauche	INTEGER,
	poste			TEXT,
	telephone		INTEGER,
	service_id		INTEGER,
	salle_id		INTEGER
);


DROP TABLE IF EXISTS salles;

CREATE TABLE salles (
    id 				INTEGER PRIMARY KEY,
	nom				TEXT,
	superficie		REAL,
	latitude		numeric,
    longitude		numeric
);

DROP TABLE IF EXISTS services;
CREATE TABLE services (
    id 				INTEGER PRIMARY KEY,
	nom				TEXT,
	effectif		INTEGER
);

INSERT INTO salaries VALUES (0,'Orianne','Leroy','F',1957,1975,'Support IT',2231,0,6);
INSERT INTO salaries VALUES (1,'Mado','Ciceron','F',1953,1977,'Directrice Generale',1469,7,NULL);
INSERT INTO salaries VALUES (2,'Ozgur','Ergul','M',1956,1978,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (3,'Lara','Zita','F',1962,1982,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (4,'Emma','Perrier','F',1952,1982,'Assistance RH',4582,9,4);
INSERT INTO salaries VALUES (5,'Rosita','Bouvier','F',1960,1987,'Chef de ligne',NULL,3,1);
INSERT INTO salaries VALUES (6,'Clement','Delaunay','M',1967,1987,'Ingenieur',8003,5,4);
INSERT INTO salaries VALUES (7,'Sylvain','Evans','M',1973,1991,'Responsable technique et maintenance',4960,1,6);
INSERT INTO salaries VALUES (8,'Lucie','Buono','F',1957,1991,'Chef de ligne',NULL,3,1);
INSERT INTO salaries VALUES (9,'Ali','Oudib','M',1965,1992,'Regleur',NULL,2,0);
INSERT INTO salaries VALUES (10,'Christophe','Leclerc','M',1974,1994,'Regleur',NULL,2,0);
INSERT INTO salaries VALUES (11,'Diego','Sanchez','M',1953,1997,'Regleur',NULL,2,0);
INSERT INTO salaries VALUES (12,'Siegfried','Meyer','M',1971,1997,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (13,'Marcella','Andrei','F',1959,1997,'Agent d''Entretien',NULL,6,NULL);
INSERT INTO salaries VALUES (14,'Paolo','Vidal','M',1972,1998,'Regleur',NULL,2,0);
INSERT INTO salaries VALUES (15,'Omar','Toure','M',1973,1998,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (16,'Hassan','Kellouai','M',1959,1998,'Chef de ligne',NULL,3,1);
INSERT INTO salaries VALUES (17,'Nicolas','Maldame','M',1974,1998,'Cariste',9327,4,2);
INSERT INTO salaries VALUES (18,'Hermann','Click','M',1972,2000,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (19,'Anita','Allegrini','F',1964,2000,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (20,'Emma','Pavis','F',1963,2000,'Directrice RH',3909,9,4);
INSERT INTO salaries VALUES (21,'Enzo','Pischedda','M',1984,2001,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (22,'Anatole','Tessier','M',1970,2001,'Coordinateur',4077,4,2);
INSERT INTO salaries VALUES (23,'Mireille','Langlois','F',1983,2002,'Chef de ligne',NULL,3,1);
INSERT INTO salaries VALUES (24,'Saana','Dehni','F',1978,2003,'Regleur',NULL,2,0);
INSERT INTO salaries VALUES (25,'Leslie','Jouannic','F',1960,2003,'Cariste',3296,4,2);
INSERT INTO salaries VALUES (26,'Enzo','Baraquier','M',1963,2005,'Technicien',7395,1,6);
INSERT INTO salaries VALUES (27,'Aurelien','Barre','M',1977,2005,'Chef de ligne',NULL,3,1);
INSERT INTO salaries VALUES (28,'Philippe','Antoniou','M',1971,2005,'Cariste',4308,4,2);
INSERT INTO salaries VALUES (29,'Pierre','Phoebus','M',1981,2006,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (30,'Marine','Chiarelli','F',1964,2006,'NULL',NULL,6,NULL);
INSERT INTO salaries VALUES (31,'Evan','Pacoret','M',1976,2007,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (32,'Pierre-matteo','Roulph','M',1988,2007,'Agent d''entetien',NULL,6,NULL);
INSERT INTO salaries VALUES (33,'Hamid','Rami','M',1959,2008,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (34,'Ali','Chetouane','M',1986,2009,'Technicien',5401,1,6);
INSERT INTO salaries VALUES (35,'Juan','Vidal','M',1992,2009,'Regleur',NULL,2,0);
INSERT INTO salaries VALUES (36,'Siswe','Nyuka','M',1988,2010,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (37,'Djamila','Achour','F',1971,2010,'Ingenieur',2619,5,4);
INSERT INTO salaries VALUES (38,'Clarisse','Oudib','F',1952,2010,'Responsable achat',3203,8,4);
INSERT INTO salaries VALUES (39,'Jules','Laporte','M',1987,2011,'Technicien',8611,1,6);
INSERT INTO salaries VALUES (40,'Josepha','Fernandez','F',1988,2011,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (41,'emilie','Bourget','F',1991,2011,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (42,'Agathe','Ciccia','F',1980,2011,'Cariste',2713,4,2);
INSERT INTO salaries VALUES (43,'Augustin','Benoit','M',1972,2011,'Chef d''atelier',5047,7,1);
INSERT INTO salaries VALUES (44,'Soshana','Chaudy','F',1994,2012,'Commercial sedentaire',2468,11,NULL);
INSERT INTO salaries VALUES (45,'Fahim','Fahs','M',1993,2013,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (46,'Raoul','Lecomte','M',1994,2013,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (47,'Robin','Lamy','M',1990,2013,'Cariste',7255,4,2);
INSERT INTO salaries VALUES (48,'Veronique','Bourgeois','F',1995,2014,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (49,'Dorina','Papanastasiou','F',1978,2014,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (50,'Farida','Accardo','F',1988,2014,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (51,'Quentin','Durand','M',1975,2015,'Support IT',9533,0,6);
INSERT INTO salaries VALUES (52,'Romane','Frayssinous','F',1988,2015,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (53,'Marie','Jacquin','F',1988,2015,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (54,'Yves','Delmonte','M',1978,2015,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (55,'Mateo','Juspot','M',1984,2015,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (56,'Cyril','Diallo','M',1962,2015,'Technicien support',8029,5,4);
INSERT INTO salaries VALUES (57,'Arthur','Ciccia','M',1995,2015,'Directeur adjoint',9785,7,0);
INSERT INTO salaries VALUES (58,'Daniel','Moreau','M',1995,2015,'Commercial itinerant',9243,11,NULL);
INSERT INTO salaries VALUES (59,'Mario','Levy','M',1996,2015,'Technicien integration',9165,12,6);
INSERT INTO salaries VALUES (60,'Marie','Caron','F',1995,2016,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (61,'Louise','Gauthier','F',1971,2016,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (62,'Brigitte','Hennebo','F',1998,2016,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (63,'Giula','Rey','F',1968,2016,'Agent d`''entretien',NULL,6,NULL);
INSERT INTO salaries VALUES (64,'William','Fumet','M',1998,2017,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (65,'Moussa','Barry','M',2000,2017,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (66,'Abdelhak','Batalha','M',1988,2017,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (67,'Arnaud','Ciapin','M',2000,2018,'Automaticien',2297,12,6);
INSERT INTO salaries VALUES (68,'Vidal','Hoarau','F',2000,2019,'Developpeur',4474,0,6);
INSERT INTO salaries VALUES (69,'Guillaume','Murphy','M',2002,2022,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (70,'Mohammed','Belkacem','M',2005,2022,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (71,'Franz','Fisher','M',2005,2022,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (72,'Mohamed','Boutaleb','M',2005,2022,'Chef d''atelier',2102,7,0);
INSERT INTO salaries VALUES (73,'Ahmed','Berrahal','M',2006,2023,'Operateur',NULL,2,0);
INSERT INTO salaries VALUES (74,'Sisanda','Qwabe','F',2003,2023,'Operateur',NULL,3,1);
INSERT INTO salaries VALUES (75,'Delphine','Coste','F',2005,2023,'Agent d''entretien',NULL,6,NULL);
INSERT INTO salaries VALUES (76,'Aurore','Rodriguez','F',2006,2023,'Agent d''entretien',NULL,6,NULL);




INSERT INTO salles VALUES (0,'atelier_usinage',560.0,45.7115,4.8933);
INSERT INTO salles VALUES (1,'atelier_montage',329.9,45.7075,4.8933);
INSERT INTO salles VALUES (2,'dock',45,45.7072,4.8958);
INSERT INTO salles VALUES (3,'entrepot',185.5,45.7073,4.8958);
INSERT INTO salles VALUES (4,'open space',29,45.7096,4.8958);
INSERT INTO salles VALUES (5,'salle de pause',15,45.7115,4.8913);
INSERT INTO salles VALUES (6,'bureau maintenance',16,45.7096,4.8927);
INSERT INTO salles VALUES (7,'salle de reunion',18,45.7096,4.8940);
INSERT INTO salles VALUES (8,'Bureau direction',15,45.7106,4.9140);
INSERT INTO salles VALUES (9,'Bureau direction 2',15,45.7090,4.9140);
INSERT INTO salles VALUES (10,NULL,10.5,45.7080,4.8913);
INSERT INTO salles VALUES (11,NULL,10.5,45.7125,4.9140);
INSERT INTO salles VALUES (12,NULL,10.5,45.7115,4.9140);
INSERT INTO salles VALUES (13,NULL,11,45.7015,4.9140);
INSERT INTO salles VALUES (14,NULL,10,45.7150,4.9);


INSERT INTO services VALUES (0,'IT',3);
INSERT INTO services VALUES (1,'Maintenance',4);
INSERT INTO services VALUES (2,'Usinage',25);
INSERT INTO services VALUES (3,'Montage',14);
INSERT INTO services VALUES (4,'Logistique',6);
INSERT INTO services VALUES (5,'R&D',3);
INSERT INTO services VALUES (6,'Nettoyage',6);
INSERT INTO services VALUES (7,'Direction',4);
INSERT INTO services VALUES (8,'Achat',1);
INSERT INTO services VALUES (9,'RH',2);
INSERT INTO services VALUES (10,'Communication',1);
INSERT INTO services VALUES (11,'Commercial',2);
INSERT INTO services VALUES (12,'Informatique Industrielle',2);
INSERT INTO services VALUES (13,'Juridique',0);

select * from salaries limit 10;