-- Introduction au Base de donn�es 
-- AII 2023
-- Theme 3 Rappels sur les requ�tes simples

-- Afficher le nom et la population des �les dont la religion principale est Maasm
SELECT nom, population FROM iles2 WHERE religion="Maasm";

-- Trier le r�sultat de cette derni�re requ�te en classant les �les du Nord au Sud.
SELECT nom, population FROM iles2 WHERE religion="Maasm" ORDER BY latitude ASC ;

-- Lister toutes les �les � l'ouest de l'�le Asoka class�es d'ouest en est.
-- Il vous faudra d'abord trouver les coordonn�es GPS d'Asoka
SELECT longitude FROM iles2 WHERE nom="Asoka";
SELECT * FROM iles2 where longitude>=5.8978018 ORDER BY longitude DESC;
SELECT nom, population FROM iles2
WHERE longitude>(SELECT longitude FROM iles2 WHERE nom="Asoka") 
ORDER BY longitude DESC ;

-- Afficher le nom et la superficie deux �les avec le plus d'habitants qui pratiquent la religion Dyviwas
SELECT nom, superficie FROM iles2 WHERE religion=="Dyviwas" ORDER BY population DESC LIMIT 2;

-- Afficher la 3i�me et la 4i�me plus grande �le.
SELECT nom FROM iles2 ORDER BY superficie DESC LIMIT 2 OFFSET 2;

