-- Introduction aux Bases de Données 
-- L3P AII

-- [1] Clause SELECT
-- Afficher les prénoms et salaires des employés
SELECT prenom, salaire FROM employes;

-- Afficher toutes les informations des employés.
SELECT * FROM employes;


-- [2] Clause SELECT avec contraintes
-- Afficher les prénoms des employés du service production.
SELECT prenom FROM employes WHERE service='Production';
-- Afficher les prénoms des employés qui gagne 110 ou moins.
SELECT prenom FROM employes WHERE salaire<=110;
-- Afficher les prénoms des employés dont l'adresse contient la chaine "an".
SELECT prenom FROM employes WHERE adresse LIKE '%an%';
-- Afficher les prénoms et salaires des employés du service Production et Maintenance.
SELECT prenom, salaire FROM employes WHERE service='Production' OR service='Maintenance';

-- [3] Filtrer les résultats: Clause DISTINCT
-- Afficher sans répétition la liste des services.
SELECT DISTINCT(service) FROM employes;
-- Afficher sans répétition les débuts de services.
SELECT DISTINCT(debut), service FROM horaires;

-- [4] Filtrer les résultats: Clause ORDER BY
-- Afficher toutes les informations sur les employes en les triants par ordre alphabétique sur les prénoms.
SELECT * FROM employes ORDER BY prenoms;
-- Afficher prénoms et adresses des employes en triant par salaires décroissants.


-- [5] Filtrer les résultats: Clauses LIMIT et OFFSET
-- Afficher l'employé le moins bien payé.
SELECT * FROM employes ORDER BY salaire LIMIT 1;
-- Afficher le deuxieme employé le moins bien payé.
SELECT * FROM employes ORDER BY salaire LIMIT 1 OFFSET 1;

-- [6] Requêtes sur plusieurs tables: Clause INNER JOIN

-- Afficher les horaires de John.
SELECT debut, fin 
FROM 
	employes
INNER JOIN
	horaires
ON 
	employes.service = horaires.service
WHERE 
	prenom = 'John';
	
-- Afficher les noms et horaires de tous les employés du service production.
SELECT prenom, debut, fin 
FROM 
	employes
INNER JOIN
	horaires
ON 
	employes.service = horaires.service
WHERE 
	employes.service = 'Production';

-- [7] Requêtes sur plusieurs tables: Clause LEFT JOIN
-- Afficher la jonction de toutes les informations de la BDD
SELECT * FROM 
	employes 
LEFT JOIN
	horaires
ON employes.service = horaires.service;


-- Afficher les prénoms des employés qui n'ont pas d'horaires.
SELECT * FROM 
	employes 
LEFT JOIN
	horaires
ON employes.service = horaires.service
WHERE 
	debut IS NULL;



-- [8] Les expressions
-- Les salaires de la base sont journaliers. Afficher les prénoms et salaires mensuels (20 jours travaillés).
SELECT salaire * 20 AS salaire_mensuel FROM employes;

-- [9] Les aggrégats: les fonctons d'aggrégats
-- Afficher le nombre d'employés.
SELECT COUNT(*) AS nombre_d_employes FROM employes;
-- Afficher le salaire minimal.
SELECT MIN(salaire) AS salaire_min FROM employes;
-- Afficher le salaire moyen.
SELECT AVG(salaire) AS salaire_moyen FROM employes;

-- Afficher la masse salariale totale.
SELECT SUM(salaire) AS masse_salariale FROM employes;

-- [9] Les aggrégats: Clauses GROUP BY et HAVING
-- Afficher la masse salariale de chaque service.
SELECT service, SUM(salaire) AS masse_salariale FROM employes GROUP BY service;

-- Afficher le salaire moyen par adresse.
SELECT adresse, SUM(salaire) AS masse_salariale FROM employes GROUP BY adresse;

-- Afficher le salaire moyen des groupes d'employés dont le salaire moyen du service est supérieur à 120
SELECT service, AVG(salaire) AS salaire_moyen
FROM employes
GROUP BY service
HAVING AVG(salaire) > 120;

-- [10] Insérer: Clause INSERT INTO
-- Ajouter un nouvel employé dans le service "Production"
-- Ajouter un service "Production Après-Midi" dont les horaires seront 13h-20h.
-- Ajouter les horaires 16h-5h pour le service "Astreinte"
-- Ajouter un nouvel employé "John" au service "Production Après-Midi". Que ce passe il ? 

-- [11] Modifier: Clause UPDATE
-- Augmenter le salaire des employes de "Astreinte" de 30%
-- L'employé Tom change de service et passe à l'après midi 
-- Supprimer le service de production après-midi.

-- [12] Supprimer: Clause DELETE FROM 
-- Augmenter le salaire des employes de "Astreinte" de 30%
-- L'employé Tom change de service et passe à l'après midi 
-- Supprimer le service de production après-midi.
