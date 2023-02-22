-- Introduction aux Bases de Données 
-- AII 2023
-- Theme 1 SELECT

-- Vous êtes perdus dans l'usine et vous avez égaré votre carnet avec notées vos heures supplémentaires.
-- Pour le retrouver il faut suivre la piste en SQL.

-- 1 Afficher le nom et l'effectif de chaque service

-- 2 Afficher le nom de toutes les salles de la fabrique.

-- 3 Afficher le nom et l'id de chaque salle.

-- 4 Afficher le nom et la superficie de chaque salle.

-- 5 Afficher toutes les informations des salles de la fabrique.

-- 6 Afficher toutes les informations sur les salaries.

-- 7 Sélectionner la salle dont l'id est 6.

-- 8 Sélectionner les salles d'id 6, 7 ou 8 .

-- 9 Sélectionner tous les services dont l'effectif est exactement de 7 salaries.

-- 10 Sélectionner tous les services dont l'effectif est entre 1 et 10 salaries.

-- 11 Sélectionner les salariees femmes embauchées avant 2000.

-- 12 Afficher le nom et le poste des hommes embauches à 20 ou moins 

-- 13 La personne que vous devez aller voir est un homme embauché avant ses 20ans et dont le nom termine par un m.

-- 14 Afficher les salaries du plus vieux au plus jeune.

-- 15 Afficher le nom et prénom du doyen de la fabrique.

-- 16 Non, un homme.
-- Le doyen est une doyenne. Afficher aussi le nom et prénom du doyen.

-- 17 Il a confié le carnet au 5eme plus jeune salarié de son service. 
-- Afficher les prénoms des 5 salariés les plus jeunes du service du doyen.

-- 18 Afficher le prénom du 5eme salarié le plus jeunes du service.

-- 19 Il a déposé le carnet dans un petite pièce de la fabrique (moins de 40m2)
-- Afficher les id et nom des salles dont la superficie est inférieure à 40m2.

-- 20 C'était la pièce la plus à l'Ouest
-- Trier le résultat de cette dernière requête en classant les salles d'Ouest en Est.

-- 21 Le service de nettoyage est passé. Ils ont amené le carnet avec les objets trouvés.
-- C'est la salle sans nom qui est le plus au nord tout en étant plus au sud du bureau du directeur.
-- Il vous faudra d'abord trouver les coordonnées du bureau du directeur
-- Lister toutes les salles au sud du bureau du directeur classées de Nord vers le Sud.

-- 22 La porte est fermé il faut trouver l'équipe de nettoyage pour vous l'ouvrir.
-- Ils font le nettoyage de 6ième plus grande salle.
-- Afficher la 3ième plus grandes salles.


-- 23
-- En utilisant une jointure afficher la liste des salaries ( prénom et nom ) ainsi que leur service

-- 24 Afficher la liste des salaries ( prenom et nom ) avec le nom et la superficie des salles dans lesquelles ils travaillent.
-- Renommer dans le résultat de votre requête la colonne du nom de salles par "nom_salle"

-- 25 Afin d'y voir plus clair afficher la liste des services présents dans la salle 6  triés par ordre alphabétique et sans doublon.

-- 26 Afficher le service des 3 doyens de la fabrique.

-- 27 La table des services recensent tous les services qui ont existé dans la fabrique, mais certains ne comptent plus de salariés.
-- En utilisant une jointure, afficher le nom des services triés par ordre alphabétique qui n'ont plus de salariés dans la fabrique.

-- 28 Calculer et afficher l'effectif réel (employes affectés dans la salle) par salles

-- 29 Calculer et afficher la surface totale de la fabrique
 
-- 30 Calculer et afficher l'effectif par salles avec le nom des salles triés par ordre croissant.

-- 30 Calculer et afficher la densité par salles avec le nom des salles triés par ordre decroissant.
  
-- 31 Afficher uniquement le nom des salles dont la densité est inférieur à 0.2 salarié par m2

-- 32 Afficher les prénoms des salaries nés 5 ans autour de 1975.
    
-- 33 La table services contient une colonne effectif mais cette dernière n'est pas forcément à jour par rapport aux salaries réellement présents sur chaque salles.
-- En utilisant la table salaries et une jointure afficher le nombre de salaries de chaque service. Stocker ce nombre dans une colonne intitulée effectifs_reels 
-- Il faudra donc compter le nombre de salaries depuis la table salaries directement

-- 34 Afficher le nom du service le plus nombreux.

-- 35 Afficher l'age moyen par service

-- 36 Afficher le nom des services dont la date de naissance moyenne est inférieure à 1970