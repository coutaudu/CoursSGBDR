-- Introduction au Base de données 
-- AII 2023
-- Theme 4 Requêtes sur plusieurs tables: JOIN


-- En utilisant une jointure afficher la liste des habitants ( prénom et nom ) ainsi que leur métier
SELECT prenom, nom, metier FROM habitants JOIN specialites ON habitants.clan=specialites.clan;

-- Afficher la liste des habitants ( prenom et nom ) avec le nom et la superficie de l'île sur laquelle ils vivent.
-- Renommer dans le résultat de votre requête la colonne du nom de l'île par nom_ile
SELECT habitants.prenom, habitants.nom, iles.nom AS nom_ile, iles.superficie
FROM habitants JOIN iles
ON iles.id=habitants.ile_id;


-- Afin d'y voir plus clair afficher la liste des métiers présents sur l'île où vous êtes triés par ordre alphabétique et sans doublon.
-- Pour rappel vous êtes sur l'île dont l'id est 2.
SELECT DISTINCT specialites.metier FROM habitants
JOIN specialites
ON specialites.clan=habitants.clan
WHERE ile_id=2
ORDER BY specialites.metier;

SELECT DISTINCT specialites.metier FROM habitants
JOIN specialites
ON ile_id=2 AND specialites.clan=habitants.clan
ORDER BY specialites.metier;

SELECT DISTINCT specialites.metier FROM
    (SELECT DISTINCT clan AS ClanIle2 FROM habitants WHERE ile_id=2 )
JOIN specialites
ON specialites.clan=ClanIle2
ORDER BY specialites.metier;

-- Afficher le métier des 3 doyens de l'archipel.
SELECT specialites.metier FROM
specialites
JOIN 
habitants
ON habitants.clan=specialites.clan
ORDER BY annee_naissance
LIMIT 3;