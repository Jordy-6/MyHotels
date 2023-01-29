create table myhotels.prestataires(
id_prestataire int primary key not null auto_increment,
nom_prestataire varchar(100) not null ,
taches_prestataire varchar(300) not null,
nb_employes_prestataire int not null,
Tarif int not null
);
