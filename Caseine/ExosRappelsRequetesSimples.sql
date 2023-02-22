-- Introduction au Base de données 
-- AII 2023
-- Theme 3 Rappels sur les requêtes simples

-- Afficher le nom et la population des îles dont la religion principale est Maasm
SELECT nom, population FROM iles2 WHERE religion="Maasm";

-- Trier le résultat de cette dernière requête en classant les îles du Nord au Sud.
SELECT nom, population FROM iles2 WHERE religion="Maasm" ORDER BY latitude ASC ;

-- Lister toutes les îles à l'ouest de l'île Asoka classées d'ouest en est.
-- Il vous faudra d'abord trouver les coordonnées GPS d'Asoka
SELECT longitude FROM iles2 WHERE nom="Asoka";
SELECT * FROM iles2 where longitude>=5.8978018 ORDER BY longitude DESC;
SELECT nom, population FROM iles2
WHERE longitude>(SELECT longitude FROM iles2 WHERE nom="Asoka") 
ORDER BY longitude DESC ;

-- Afficher le nom et la superficie deux îles avec le plus d'habitants qui pratiquent la religion Dyviwas
SELECT nom, superficie FROM iles2 WHERE religion=="Dyviwas" ORDER BY population DESC LIMIT 2;

-- Afficher la 3ième et la 4ième plus grande île.
SELECT nom FROM iles2 ORDER BY superficie DESC LIMIT 2 OFFSET 2;

