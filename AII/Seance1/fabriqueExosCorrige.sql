-- Introduction aux Bases de Donn�es 
-- L3P AII

-- [1] Clause SELECT
-- Afficher les pr�noms et salaires des employ�s
SELECT prenom, salaire FROM employes;

-- Afficher toutes les informations des employ�s.
SELECT * FROM employes;


-- [2] Clause SELECT avec contraintes
-- Afficher les pr�noms des employ�s du service production.
SELECT prenom FROM employes WHERE service='Production';
-- Afficher les pr�noms des employ�s qui gagne 110 ou moins.
SELECT prenom FROM employes WHERE salaire<=110;
-- Afficher les pr�noms des employ�s dont l'adresse contient la chaine "an".
SELECT prenom FROM employes WHERE adresse LIKE '%an%';
-- Afficher les pr�noms et salaires des employ�s du service Production et Maintenance.
SELECT prenom, salaire FROM employes WHERE service='Production' OR service='Maintenance';

-- [3] Filtrer les r�sultats: Clause DISTINCT
-- Afficher sans r�p�tition la liste des services.
SELECT DISTINCT(service) FROM employes;
-- Afficher sans r�p�tition les d�buts de services.
SELECT DISTINCT(debut), service FROM horaires;

-- [4] Filtrer les r�sultats: Clause ORDER BY
-- Afficher toutes les informations sur les employes en les triants par ordre alphab�tique sur les pr�noms.
SELECT * FROM employes ORDER BY prenoms;
-- Afficher pr�noms et adresses des employes en triant par salaires d�croissants.


-- [5] Filtrer les r�sultats: Clauses LIMIT et OFFSET
-- Afficher l'employ� le moins bien pay�.
SELECT * FROM employes ORDER BY salaire LIMIT 1;
-- Afficher le deuxieme employ� le moins bien pay�.
SELECT * FROM employes ORDER BY salaire LIMIT 1 OFFSET 1;

-- [6] Requ�tes sur plusieurs tables: Clause INNER JOIN

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
	
-- Afficher les noms et horaires de tous les employ�s du service production.
SELECT prenom, debut, fin 
FROM 
	employes
INNER JOIN
	horaires
ON 
	employes.service = horaires.service
WHERE 
	employes.service = 'Production';

-- [7] Requ�tes sur plusieurs tables: Clause LEFT JOIN
-- Afficher la jonction de toutes les informations de la BDD
SELECT * FROM 
	employes 
LEFT JOIN
	horaires
ON employes.service = horaires.service;


-- Afficher les pr�noms des employ�s qui n'ont pas d'horaires.
SELECT * FROM 
	employes 
LEFT JOIN
	horaires
ON employes.service = horaires.service
WHERE 
	debut IS NULL;



-- [8] Les expressions
-- Les salaires de la base sont journaliers. Afficher les pr�noms et salaires mensuels (20 jours travaill�s).
SELECT salaire * 20 AS salaire_mensuel FROM employes;

-- [9] Les aggr�gats: les fonctons d'aggr�gats
-- Afficher le nombre d'employ�s.
SELECT COUNT(*) AS nombre_d_employes FROM employes;
-- Afficher le salaire minimal.
SELECT MIN(salaire) AS salaire_min FROM employes;
-- Afficher le salaire moyen.
SELECT AVG(salaire) AS salaire_moyen FROM employes;

-- Afficher la masse salariale totale.
SELECT SUM(salaire) AS masse_salariale FROM employes;

-- [9] Les aggr�gats: Clauses GROUP BY et HAVING
-- Afficher la masse salariale de chaque service.
SELECT service, SUM(salaire) AS masse_salariale FROM employes GROUP BY service;

-- Afficher le salaire moyen par adresse.
SELECT adresse, SUM(salaire) AS masse_salariale FROM employes GROUP BY adresse;

-- Afficher le salaire moyen des groupes d'employ�s dont le salaire moyen du service est sup�rieur � 120
SELECT service, AVG(salaire) AS salaire_moyen
FROM employes
GROUP BY service
HAVING AVG(salaire) > 120;

-- [10] Ins�rer: Clause INSERT INTO
-- Ajouter un nouvel employ� dans le service "Production"
-- Ajouter un service "Production Apr�s-Midi" dont les horaires seront 13h-20h.
-- Ajouter les horaires 16h-5h pour le service "Astreinte"
-- Ajouter un nouvel employ� "John" au service "Production Apr�s-Midi". Que ce passe il ? 

-- [11] Modifier: Clause UPDATE
-- Augmenter le salaire des employes de "Astreinte" de 30%
-- L'employ� Tom change de service et passe � l'apr�s midi 
-- Supprimer le service de production apr�s-midi.

-- [12] Supprimer: Clause DELETE FROM 
-- Augmenter le salaire des employes de "Astreinte" de 30%
-- L'employ� Tom change de service et passe � l'apr�s midi 
-- Supprimer le service de production apr�s-midi.
