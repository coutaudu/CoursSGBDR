drop table LesMaladies ;
drop table LesAnimaux ;
drop table LesGardiens ;
drop table LesCages ;
drop table LesResponsables ;
drop table LesEmployes ;


create table LesEmployes (
   nomE varchar2(20),
   adresse varchar2(20) not null,
   constraint LesEmployes_C1 primary key (nomE)
);

insert into LesEmployes select nomE, adresse from zoo.LesEmployes;

create table LesResponsables (
   noAllee number(3),
   nomE varchar2(20) not null,
   constraint LesResponsables_C1 primary key (noAllee),
   constraint LesResponsables_C2
       foreign key (nomE) references LesEmployes (nomE)
       on delete cascade,
   constraint LesResponsables_C3 check (noAllee between 1 and 999)
);

insert into LesResponsables select noAllee, nomE from zoo.LesResponsables;


create table LesCages (
   noCage number(3),
   fonction varchar2(20) not null,
   noAllee number(3) not null,
   constraint LesCages_C1 primary key (noCage),
   constraint LesCages_C2 check (noCage between 1 and 999),
   constraint LesCages_C3 foreign key (noAllee) references LesResponsables (noAllee) on delete cascade
 );

insert into LesCages select noCage, fonction,noAllee from zoo.LesCages;


create table LesGardiens (
   noCage number(3),
   nomE varchar2(20),
   constraint LesGardiens_C1 primary key (noCage, nomE),
   constraint LesGardiens_C2
       foreign key (nomE) references LesEmployes (nomE) on delete cascade,
   constraint LesGardiens_C3
       foreign key (noCage) references LesCages (noCage)
       on delete cascade);

insert into LesGardiens select noCage,nomE from zoo.LesGardiens;

create table LesAnimaux (
   nomA varchar2(20),
   sexe varchar2(13) DEFAULT 'male',
   type varchar2(15) not null,
   pays varchar2(20) DEFAULT 'France',
   anNais number(4),
   noCage number(3) not null,
   constraint LesAnimaux_C1 primary key (nomA),
   constraint LesAnimaux_C2 check (sexe in ('femelle','male','hermaphrodite')),
   constraint LesAnimaux_C3 check (anNais >= 1900),
   constraint LesAnimaux_C4 foreign key(noCage) references LesCages (noCage)
       on delete cascade
);

insert into LesAnimaux select nomA, sexe,type,pays,anNais,noCage from zoo.LesAnimaux;

create table LesMaladies (
   nomA varchar2(20),
   nomM varchar2(20),
   constraint LesMaladies_C1 primary key (nomA,nomM),
   constraint LesMaladies_C2 
       foreign key (nomA) references LesAnimaux (nomA)
       on delete cascade);

insert into LesMaladies select nomA,nomM from zoo.LesMaladies;






commit;