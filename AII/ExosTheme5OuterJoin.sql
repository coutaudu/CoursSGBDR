-- Introduction au Base de donn�es 
-- AII 2023
-- Theme 5 OUTER JOIN

-- La table des sp�cialit�s recensent tous les clans qui ont exist� sur l'�le, mais certains ne comptent plus de membre.
-- En utilisant une jointure, afficher le nom des clans tri�s par ordre alphab�tique qui n'ont plus d'habitant sur l'archipel.
SELECT specialites.clan FROM
specialites 
LEFT JOIN
habitants
ON
specialites.clan=habitants.clan
WHERE 
habitants.id IS NULL;