-- Introduction au Base de données 
-- AII 2023
-- Theme 5 OUTER JOIN

-- La table des spécialités recensent tous les clans qui ont existé sur l'île, mais certains ne comptent plus de membre.
-- En utilisant une jointure, afficher le nom des clans triés par ordre alphabétique qui n'ont plus d'habitant sur l'archipel.
SELECT specialites.clan FROM
specialites 
LEFT JOIN
habitants
ON
specialites.clan=habitants.clan
WHERE 
habitants.id IS NULL;