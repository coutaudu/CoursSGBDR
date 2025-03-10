-- Introduction aux Bases de Données 
-- L3P AII

-- [1] Clause SELECT
-- Afficher les prénoms et salaires des employés.
-- Afficher toutes les informations des employés.

-- [2] Clause SELECT avec contraintes
-- Afficher les prénoms des employés du service production.
-- Afficher les prénoms des employés qui gagne 110 ou moins.
-- Afficher les prénoms des employés dont l'adresse contient la chaine "an".
-- Afficher les prénoms et salaires des employés du service Production et Maintenance.

-- [3] Filtrer les résultats: Clause DISTINCT
-- Afficher sans répétition la liste des services.
-- Afficher sans répétition les horaires de débuts de services.

-- [4] Filtrer les résultats: Clause ORDER BY
-- Afficher toutes les informations sur les employes en les triants par ordre alphabétique sur les prénoms.
-- Afficher prénoms et adresses des employes en triant par salaires décroissants.

-- [5] Filtrer les résultats: Clauses LIMIT et OFFSET
-- Afficher l'employé le moins bien payé.
-- Afficher le deuxieme employé le moins bien payé.

-- [6] Requêtes sur plusieurs tables: Clause INNER JOIN
-- Afficher les horaires de John.
-- Afficher les noms et horaires de tous les employés du service production.

-- [7] Requêtes sur plusieurs tables: Clause LEFT JOIN
-- Afficher la jonction de toutes les informations de la BDD
-- Afficher les prénoms des employés qui n'ont pas d'horaires.

-- [8] Les expressions
-- Les salaires de la base sont journaliers. Afficher les prénoms et salaires mensuels (20 jours travaillés).

-- [9] Les aggrégats: les fonctions d'aggrégats
-- Afficher le nombre d'employés.
-- Afficher le salaire minimal.
-- Afficher le salaire moyen.
-- Afficher la masse salariale totale.

-- [9] Les aggrégats: Clauses GROUP BY et HAVING
-- Afficher la masse salariale de chaque service.
-- Afficher le salaire moyen par adresse.
-- Afficher le salaire moyen des groupes d'employés dont le salaire moyen du service est supérieur à 120

------------------------------------------------------------------------------------
-- Pour la prochaine séance:
-- Faire les requetes pour extraire les données:
-- [1] Afficher les prénoms et les salaires des employés du service Maintenance.
-- [2] Afficher le salaire le plus élevé du service production.
-- [3] Afficher le salaire le plus élevé de l'entreprise
-- [4] Afficher les prénoms des employés qui ne sont pas au service Production.
-- [5] Afficher le salaire moyen par service.
--
-- Envoyer par mail à coutaudu@gmail.com
-- Objet du mail: [L3PAII2025] Seance_1 NomDeFamille
-- Fichier en pièce jointe: L3PAII2025_Seance1_Prenom_NomDeFamille_NumeroEtudiant.sql
------------------------------------------------------------------------------------

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
