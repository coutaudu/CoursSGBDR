-- Introduction au Base de données 
-- AII 2023
-- Theme 2 Select avec contraintes

-- Sélectionner l'île dont l'id est 6.
select * from ILES where id=6;

-- Sélectionner toutes les îles dont la population est exactement de 66 habitants.
select * from iles where population==66;

-- Sélectionner les îles dont la superficie est inférieure à 50.
select * from iles where superficie>50;

-- Sélectionner les îles qui ont une population supérieure à 120 et une superficie inférieure à 40.
select * from iles where population>120 and superficie<40;

-- L'île à laquelle vous devez vous rendre maintenant vérifie les conditions précédentes et a en plus le nom qui contient "aza"
-- Adaptez la requête précédente pour n'avoir qu'un seul résultat et le bon ! 
select * from iles where population>120 and superficie<40 and nom like "%aza%";

