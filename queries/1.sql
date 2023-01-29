create table myhotels.hotel(
id_hotel int primary key not null auto_increment,
nom_hotel varchar(100) not null,
adresse varchar(100) not null,
ville varchar(100) not null,
pays varchar(100) not null,
email_hotel varchar(100) not null,
numero_tel varchar(12) not null,
nb_employes int not null,
nb_chambres int not null,
nb_reservations_actuelles int not null,
nb_clients_par_an int not null,
id_gerant_hotel int not null
)
