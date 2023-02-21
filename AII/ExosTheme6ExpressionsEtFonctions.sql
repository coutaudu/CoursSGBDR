-- Introduction au Base de donn�es 
-- AII 2023
-- Theme 6 Aggregat

-- Trier les �les par densit� de population de la plus peupl�e � la moins peupl�e. ( on prendra la population th�orique de l'�le, c'est � dire celle de la table iles )
-- Le r�sulat doit retourner deux colonnes :
-- Le nom de l'�le et la densit� dans une colonne contenant portant le nom "densite"

SELECT colonne1, SUM(colonne2)
FROM nom_table
GROUP BY colonne1
HAVING fonction(colonne2) operateur valeur;

-- Afficher uniquement le nom des �les dont la densit� est inf�rieur � 1 habitant par km2
SELECT 
    iles.nom
FROM 
    iles
GROUP BY
    iles.id
HAVING   
    (iles.population/iles.superficie) < 1;
	
-- Afficher les pr�noms des habitants n�s 5 ans autour de 1950.
SELECT 
    habitants.prenom
FROM 
    habitants
WHERE   
    (habitants.annee_naissance+5)>=1950 AND (habitants.annee_naissance-5)<=1950;
    
	
-- La table iles contient une colonne population mais cette derni�re n'est pas forc�ment � jour par rapport aux habitants r�ellement pr�sents sur chaque �le.

-- En utilisant la table habitants et une jointure afficher le nombre d'habitants de chaque �le. Stocker ce nombre dans une colonne intitul�e population_reelle 

-- Il faudra donc compter le nombre d'habitants depuis la table habitants directement
SELECT iles.nom, count(habitants.id) AS population_reelle
FROM 
    habitants
JOIN
    iles
ON habitants.ile_id=iles.id
GROUP BY 
    ile_id;
	
-- Afficher le nom du clan le plus peupl�.
SELECT habitants.clan
FROM 
    habitants
GROUP BY 
    habitants.clan
ORDER BY count(habitants.id) DESC
LIMIT 1;

-- Afficher le nom des clans dont la date de naissance moyenne est inf�rieure � 1940
SELECT habitants.clan
FROM 
    habitants
GROUP BY 
    habitants.clan
HAVING AVG(habitants.annee_naissance)<1940;