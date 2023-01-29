create table myhotels.employes(
id_employe int primary key not null auto_increment,
nom_employe varchar(100) not null ,
prenom_employe varchar(100) not null ,
age_employe int not null,
anciennete int not null,
salaire int not null,
employe_presta bool not null,
id_presta int,
poste varchar(100) not null ,
hotel int not null ,
);
