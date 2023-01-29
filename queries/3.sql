create table myhotels.reservations(
id_reservation int primary key not null auto_increment,
id_client_reservation int not null,
id_hotel_reservation int not null,
id_chambre_reservation int not null,
id_numero_chambres int not null,
date_arrivee date not null,
date_depart date not null,
presence_mineur bool,
nb_mineur int ,
info_paiement int not null
);
