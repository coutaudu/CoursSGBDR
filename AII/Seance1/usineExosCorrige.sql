-- Introduction aux Basex de Données 
-- AII 2023
-- Theme 1 SELECT

-- 1 Afficher le nom et l'effectif de chaque service
SELECT nom, effectif FROM services;

-- 2 Afficher le nom de toutes les salles de la fabrique.
SELECT nom FROM salles;

-- 3 Afficher le nom et l'id de chaque salle.
SELECT nom, id FROM salles;

-- 4 Afficher le nom et la superficie de chaque salle.
SELECT nom, superficie FROM salles;

-- 5 Afficher toutes les informations des salles de la fabrique.
SELECT * FROM salles;

-- 6 Afficher toutes les informations sur les salaries.
SELECT * FROM salaries;

-- Introduction aux Bases de Données 
-- AII 2023
-- Theme 2 SELECT avec contraintes

-- 7 Sélectionner la salle dont l'id est 6.
SELECT * FROM salles WHERE id=6;

-- 8 Sélectionner les salles d'id 6, 7 ou 8 .
SELECT * FROM salles WHERE id in (6,7,8);

-- 9 Sélectionner tous les services dont l'effectif est exactement de 7 salaries.
SELECT * FROM salles WHERE effectif==7;

-- 10 Sélectionner tous les services dont l'effectif est entre 1 et 10 salaries.
SELECT * FROM salles WHERE effectif>=1 AND effectif<=10;

-- 11 Sélectionner les salariees femmes embauchées avant 2000.
SELECT * FROM salaries WHERE sexe='F' AND annee_embauche<2000;

-- 12 Afficher le nom et le poste des hommes embauches à 20 ou moins 
SELECT nom, poste FROM salaries WHERE sexe='M' AND (annee_embauche-annee_naissance<=20);

-- 13 La personne que vous devez aller voir est un homme embauché avant ses 20ans et dont le nom termine par un m
 SELECT * FROM salaries WHERE sexe='M' AND (annee_embauche-annee_naissance<=20) AND nom LIKE '%m';
 
-- Introduction aux Bases de données 
-- AII 2023
-- Theme 3 Filtrer et Trier

-- 14 Il a vu une vielle personne avec votre carnet.
-- Afficher les salaries du plus vieux au plus jeune.
SELECT * FROM salaries ORDER BY annee_naissance DESC;

-- 15 Afficher le nom et prénom du doyen de la fabrique.
SELECT nom, prenom FROM salaries ORDER BY annee_naissance ASC LIMIT 1;

-- 16 Non, un homme.
-- Le doyen est une doyenne. Afficher aussi le nom et prénom du doyen.
SELECT nom, prenom FROM salaries WHERE sexe="M" ORDER BY annee_naissance ASC LIMIT 1;

-- 17 Il a confié le carnet au 5eme plus jeune salarié de son service. 
-- Afficher les prénoms des 5 salariés les plus jeunes du service du doyen.
SELECT prenom FROM salaries WHERE service_id=2 ORDER BY annee_naissance DESC LIMIT 5;
-- 18 Afficher le prénom du 5eme salarié le plus jeunes du service.
SELECT prenom FROM salaries WHERE service_id=2 ORDER BY annee_naissance DESC LIMIT 1 OFFSET 4;

-- Introduction au Base de données 
-- AII 2023
-- Theme 3 Rappels sur les requêtes simples

-- 19 Il a déposé le carnet dans un petite pièce de la fabrique (moins de 40m2)
-- Afficher les id et nom des salles dont la superficie est inférieure à 40m2.
SELECT id, nom FROM salles WHERE superficie<40;

-- 20 C'était la pièce la plus à l'Ouest
-- Trier le résultat de cette dernière requête en classant les salles d'Ouest en Est.
SELECT id, nom FROM salles WHERE superficie<40  ORDER BY longitude ASC ;


-- 21 Le service de nettoyage est passé. Ils ont amené le carnet avec les objets trouvés.
-- C'est la salle sans nom qui est le plus au nord tout en étant plus au sud du bureau du directeur.
-- Il vous faudra d'abord trouver les coordonnées du bureau du directeur
-- Lister toutes les salles au sud du bureau du directeur classées de Nord vers le Sud.

-- 22 La porte est fermé il faut trouver l'équipe de nettoyage pour vous l'ouvrir.
-- Ils font le nettoyage de 6ième plus grande salle.
-- Afficher la 3ième plus grandes salles.
SELECT nom FROM salles WHERE superficie IS NOT NULL ORDER BY superficie DESC LIMIT 1 OFFSET 5;

-- Introduction au Base de données 
-- AII 2023
-- Theme 4 Requêtes sur plusieurs tables: JOIN

-- 23
-- En utilisant une jointure afficher la liste des salaries ( prénom et nom ) ainsi que leur service
SELECT salaries.prenom, salaries.nom, services.nom FROM salaries JOIN services ON salaries.service_id=services.id;

-- 24 Afficher la liste des salaries ( prenom et nom ) avec le nom et la superficie des salles dans lesquelles ils travaillent.
-- Renommer dans le résultat de votre requête la colonne du nom de salles par "nom_salle"
SELECT salaries.prenom, salaries.nom, salles.nom AS nom_salle, salles.superficie
FROM salaries JOIN salles
ON salles.id=salaries.salle_id;


-- 25 Afin d'y voir plus clair afficher la liste des services présents dans la salles où vous êtes triés par ordre alphabétique et sans doublon.
-- Pour rappel vous êtes sur l'salles dont l'id est 6.
SELECT DISTINCT services.nom FROM salaries
JOIN services
ON services.id=salaries.service_id
WHERE salle_id=6
ORDER BY services.nom;

-- SELECT DISTINCT specialites.metier FROM salaries
-- JOIN specialites
-- ON ile_id=2 AND specialites.clan=salaries.clan
-- ORDER BY specialites.metier;

-- SELECT DISTINCT specialites.metier FROM
    -- (SELECT DISTINCT clan AS ClanIle2 FROM salaries WHERE ile_id=2 )
-- JOIN specialites
-- ON specialites.clan=ClanIle2
-- ORDER BY specialites.metier;

-- 26 Afficher le service des 3 doyens de la fabrique.
SELECT services.nom FROM
services
JOIN 
salaries
ON salaries.service_id=services.id
ORDER BY annee_naissance
LIMIT 3;

-- Introduction au Base de données 
-- AII 2023
-- Theme 5 OUTER JOIN

-- 27 La table des services recensent tous les services qui ont existé dans la fabrique, mais certains ne comptent plus de salariés.
-- En utilisant une jointure, afficher le nom des services triés par ordre alphabétique qui n'ont plus de salariés dans la fabrique.
SELECT services.id, services.nom FROM
services 
LEFT JOIN
salaries
ON
services.id=salaries.service_id
WHERE 
salaries.service_id IS NULL;


-- Introduction au Base de données 
-- AII 2023
-- Theme 6 Aggregat

-- 28 Calculer et afficher l'effectif par salles
-- Par salle_id
select salle_id, COUNT(nom) FROM
salaries
GROUP BY salle_id;
 
-- 29 Calculer et afficher la surface totale de la fabrique
 
-- 30 Calculer et afficher l'effectif par salles avec le nom des salles triés par ordre croissant.
select salle_id, COUNT(salaries.nom) as effectif_salles, salles.nom FROM
salaries
JOIN
salles
ON salles.id=salaries.salle_id
GROUP BY salle_id, salles.nom
ORDER BY nombre_personnes ;
 
-- 30 Calculer et afficher la densité par salles avec le nom des salles triés par ordre decroissant.
select salle_id, COUNT(salaries.nom) AS effectif_salles, salles.superficie, (COUNT(salaries.nom)* 1.0)/salles.superficie AS densité, salles.nom FROM
salaries
JOIN
salles
ON salles.id=salaries.salle_id
GROUP BY salle_id, salles.nom, salles.superficie
ORDER BY densité ;
  
  
-- 31 Afficher uniquement le nom des salles dont la densité est inférieur à 0.2 salarié par m2

	
-- 32 Afficher les prénoms des salaries nés 5 ans autour de 1975.
SELECT 
    salaries.prenom
FROM 
    salaries
WHERE   
    (salaries.annee_naissance+5)>=1950 AND (salaries.annee_naissance-5)<=1950;
    
-- 33 La table services contient une colonne effectif mais cette dernière n'est pas forcément à jour par rapport aux salaries réellement présents sur chaque salles.
-- En utilisant la table salaries et une jointure afficher le nombre de salaries de chaque service. Stocker ce nombre dans une colonne intitulée effectifs_reels 

-- Il faudra donc compter le nombre desalaries depuis la table salaries directement
SELECT salles.nom, count(salaries.id) AS population_reelle
FROM 
    salaries
JOIN
    salles
ON salaries.ile_id=salles.id
GROUP BY 
    ile_id;
	
-- Afficher le nom du service le plus nombreux.
SELECT salaries.clan
FROM 
    salaries
GROUP BY 
    salaries.clan
ORDER BY count(salaries.id) DESC
LIMIT 1;

-- Afficher l'age moyen par service


-- Afficher le nom des clans dont la date de naissance moyenne est inférieure à 1940
SELECT salaries.clan
FROM 
    salaries
GROUP BY 
    salaries.clan
HAVING AVG(salaries.annee_naissance)<1940;