-- Introduction au Base de données 
-- AII 2023
-- Theme 3 Filtrer et Trier

-- Afficher les habitants du plus vieux au plus jeune.
SELECT * FROM habitants ORDER BY annee_naissance DESC;
 
-- Afficher le nom et prénom doyen du village.
SELECT nom, prenom FROM habitants ORDER BY annee_naissance ASC LIMIT 1;

-- Le doyen est une doyenne. Afficher aussi le nom et prénom du doyen du village.
SELECT nom, prenom FROM habitants WHERE sexe="M" ORDER BY annee_naissance ASC LIMIT 1;

-- Afficher les prénoms des 4 membres les plus jeunes du clan TX.
SELECT prenom FROM habitants WHERE clan="TX" ORDER BY annee_naissance DESC LIMIT 4;

