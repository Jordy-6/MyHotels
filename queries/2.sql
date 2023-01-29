
create table myhotels.chambre(
id_chambre int primary key not null auto_increment,
id_hotel_chambre int not null ,
type_de_chambre varchar(100) not null,
nb_lit int not null,
num_chambres int not null,
prix_chambres int not null
);
