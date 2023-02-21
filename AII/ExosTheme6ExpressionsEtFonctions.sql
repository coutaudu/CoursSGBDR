-- Introduction au Base de données 
-- AII 2023
-- Theme 6 Aggregat

-- Trier les îles par densité de population de la plus peuplée à la moins peuplée. ( on prendra la population théorique de l'île, c'est à dire celle de la table iles )
-- Le résulat doit retourner deux colonnes :
-- Le nom de l'île et la densité dans une colonne contenant portant le nom "densite"

SELECT colonne1, SUM(colonne2)
FROM nom_table
GROUP BY colonne1
HAVING fonction(colonne2) operateur valeur;

-- Afficher uniquement le nom des îles dont la densité est inférieur à 1 habitant par km2
SELECT 
    iles.nom
FROM 
    iles
GROUP BY
    iles.id
HAVING   
    (iles.population/iles.superficie) < 1;
	
-- Afficher les prénoms des habitants nés 5 ans autour de 1950.
SELECT 
    habitants.prenom
FROM 
    habitants
WHERE   
    (habitants.annee_naissance+5)>=1950 AND (habitants.annee_naissance-5)<=1950;
    
	
-- La table iles contient une colonne population mais cette dernière n'est pas forcément à jour par rapport aux habitants réellement présents sur chaque île.

-- En utilisant la table habitants et une jointure afficher le nombre d'habitants de chaque île. Stocker ce nombre dans une colonne intitulée population_reelle 

-- Il faudra donc compter le nombre d'habitants depuis la table habitants directement
SELECT iles.nom, count(habitants.id) AS population_reelle
FROM 
    habitants
JOIN
    iles
ON habitants.ile_id=iles.id
GROUP BY 
    ile_id;
	
-- Afficher le nom du clan le plus peuplé.
SELECT habitants.clan
FROM 
    habitants
GROUP BY 
    habitants.clan
ORDER BY count(habitants.id) DESC
LIMIT 1;

-- Afficher le nom des clans dont la date de naissance moyenne est inférieure à 1940
SELECT habitants.clan
FROM 
    habitants
GROUP BY 
    habitants.clan
HAVING AVG(habitants.annee_naissance)<1940;