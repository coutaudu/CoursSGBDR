-- Introduction aux Basex de Donn�es 
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

-- Introduction aux Bases de Donn�es 
-- AII 2023
-- Theme 2 SELECT avec contraintes

-- 7 S�lectionner la salle dont l'id est 6.
SELECT * FROM salles WHERE id=6;

-- 8 S�lectionner les salles d'id 6, 7 ou 8 .
SELECT * FROM salles WHERE id in (6,7,8);

-- 9 S�lectionner tous les services dont l'effectif est exactement de 7 salaries.
SELECT * FROM salles WHERE effectif==7;

-- 10 S�lectionner tous les services dont l'effectif est entre 1 et 10 salaries.
SELECT * FROM salles WHERE effectif>=1 AND effectif<=10;

-- 11 S�lectionner les salariees femmes embauch�es avant 2000.
SELECT * FROM salaries WHERE sexe='F' AND annee_embauche<2000;

-- 12 Afficher le nom et le poste des hommes embauches � 20 ou moins 
SELECT nom, poste FROM salaries WHERE sexe='M' AND (annee_embauche-annee_naissance<=20);

-- 13 La personne que vous devez aller voir est un homme embauch� avant ses 20ans et dont le nom termine par un m
 SELECT * FROM salaries WHERE sexe='M' AND (annee_embauche-annee_naissance<=20) AND nom LIKE '%m';
 
-- Introduction aux Bases de donn�es 
-- AII 2023
-- Theme 3 Filtrer et Trier

-- 14 Il a vu une vielle personne avec votre carnet.
-- Afficher les salaries du plus vieux au plus jeune.
SELECT * FROM salaries ORDER BY annee_naissance DESC;

-- 15 Afficher le nom et pr�nom du doyen de la fabrique.
SELECT nom, prenom FROM salaries ORDER BY annee_naissance ASC LIMIT 1;

-- 16 Non, un homme.
-- Le doyen est une doyenne. Afficher aussi le nom et pr�nom du doyen.
SELECT nom, prenom FROM salaries WHERE sexe="M" ORDER BY annee_naissance ASC LIMIT 1;

-- 17 Il a confi� le carnet au 5eme plus jeune salari� de son service. 
-- Afficher les pr�noms des 5 salari�s les plus jeunes du service du doyen.
SELECT prenom FROM salaries WHERE service_id=2 ORDER BY annee_naissance DESC LIMIT 5;
-- 18 Afficher le pr�nom du 5eme salari� le plus jeunes du service.
SELECT prenom FROM salaries WHERE service_id=2 ORDER BY annee_naissance DESC LIMIT 1 OFFSET 4;

-- Introduction au Base de donn�es 
-- AII 2023
-- Theme 3 Rappels sur les requ�tes simples

-- 19 Il a d�pos� le carnet dans un petite pi�ce de la fabrique (moins de 40m2)
-- Afficher les id et nom des salles dont la superficie est inf�rieure � 40m2.
SELECT id, nom FROM salles WHERE superficie<40;

-- 20 C'�tait la pi�ce la plus � l'Ouest
-- Trier le r�sultat de cette derni�re requ�te en classant les salles d'Ouest en Est.
SELECT id, nom FROM salles WHERE superficie<40  ORDER BY longitude ASC ;


-- 21 Le service de nettoyage est pass�. Ils ont amen� le carnet avec les objets trouv�s.
-- C'est la salle sans nom qui est le plus au nord tout en �tant plus au sud du bureau du directeur.
-- Il vous faudra d'abord trouver les coordonn�es du bureau du directeur
-- Lister toutes les salles au sud du bureau du directeur class�es de Nord vers le Sud.

-- 22 La porte est ferm� il faut trouver l'�quipe de nettoyage pour vous l'ouvrir.
-- Ils font le nettoyage de 6i�me plus grande salle.
-- Afficher la 3i�me plus grandes salles.
SELECT nom FROM salles WHERE superficie IS NOT NULL ORDER BY superficie DESC LIMIT 1 OFFSET 5;

-- Introduction au Base de donn�es 
-- AII 2023
-- Theme 4 Requ�tes sur plusieurs tables: JOIN

-- 23
-- En utilisant une jointure afficher la liste des salaries ( pr�nom et nom ) ainsi que leur service
SELECT salaries.prenom, salaries.nom, services.nom FROM salaries JOIN services ON salaries.service_id=services.id;

-- 24 Afficher la liste des salaries ( prenom et nom ) avec le nom et la superficie des salles dans lesquelles ils travaillent.
-- Renommer dans le r�sultat de votre requ�te la colonne du nom de salles par "nom_salle"
SELECT salaries.prenom, salaries.nom, salles.nom AS nom_salle, salles.superficie
FROM salaries JOIN salles
ON salles.id=salaries.salle_id;


-- 25 Afin d'y voir plus clair afficher la liste des services pr�sents dans la salles o� vous �tes tri�s par ordre alphab�tique et sans doublon.
-- Pour rappel vous �tes sur l'salles dont l'id est 6.
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

-- Introduction au Base de donn�es 
-- AII 2023
-- Theme 5 OUTER JOIN

-- 27 La table des services recensent tous les services qui ont exist� dans la fabrique, mais certains ne comptent plus de salari�s.
-- En utilisant une jointure, afficher le nom des services tri�s par ordre alphab�tique qui n'ont plus de salari�s dans la fabrique.
SELECT services.id, services.nom FROM
services 
LEFT JOIN
salaries
ON
services.id=salaries.service_id
WHERE 
salaries.service_id IS NULL;


-- Introduction au Base de donn�es 
-- AII 2023
-- Theme 6 Aggregat

-- 28 Calculer et afficher l'effectif par salles
-- Par salle_id
select salle_id, COUNT(nom) FROM
salaries
GROUP BY salle_id;
 
-- 29 Calculer et afficher la surface totale de la fabrique
 
-- 30 Calculer et afficher l'effectif par salles avec le nom des salles tri�s par ordre croissant.
select salle_id, COUNT(salaries.nom) as effectif_salles, salles.nom FROM
salaries
JOIN
salles
ON salles.id=salaries.salle_id
GROUP BY salle_id, salles.nom
ORDER BY nombre_personnes ;
 
-- 30 Calculer et afficher la densit� par salles avec le nom des salles tri�s par ordre decroissant.
select salle_id, COUNT(salaries.nom) AS effectif_salles, salles.superficie, (COUNT(salaries.nom)* 1.0)/salles.superficie AS densit�, salles.nom FROM
salaries
JOIN
salles
ON salles.id=salaries.salle_id
GROUP BY salle_id, salles.nom, salles.superficie
ORDER BY densit� ;
  
  
-- 31 Afficher uniquement le nom des salles dont la densit� est inf�rieur � 0.2 salari� par m2

	
-- 32 Afficher les pr�noms des salaries n�s 5 ans autour de 1975.
SELECT 
    salaries.prenom
FROM 
    salaries
WHERE   
    (salaries.annee_naissance+5)>=1950 AND (salaries.annee_naissance-5)<=1950;
    
-- 33 La table services contient une colonne effectif mais cette derni�re n'est pas forc�ment � jour par rapport aux salaries r�ellement pr�sents sur chaque salles.
-- En utilisant la table salaries et une jointure afficher le nombre de salaries de chaque service. Stocker ce nombre dans une colonne intitul�e effectifs_reels 

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


-- Afficher le nom des clans dont la date de naissance moyenne est inf�rieure � 1940
SELECT salaries.clan
FROM 
    salaries
GROUP BY 
    salaries.clan
HAVING AVG(salaries.annee_naissance)<1940;