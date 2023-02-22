-- Introduction au Base de donn�es 
-- AII 2023
-- Theme 2 Select avec contraintes

-- S�lectionner l'�le dont l'id est 6.
select * from ILES where id=6;

-- S�lectionner toutes les �les dont la population est exactement de 66 habitants.
select * from iles where population==66;

-- S�lectionner les �les dont la superficie est inf�rieure � 50.
select * from iles where superficie>50;

-- S�lectionner les �les qui ont une population sup�rieure � 120 et une superficie inf�rieure � 40.
select * from iles where population>120 and superficie<40;

-- L'�le � laquelle vous devez vous rendre maintenant v�rifie les conditions pr�c�dentes et a en plus le nom qui contient "aza"
-- Adaptez la requ�te pr�c�dente pour n'avoir qu'un seul r�sultat et le bon ! 
select * from iles where population>120 and superficie<40 and nom like "%aza%";

