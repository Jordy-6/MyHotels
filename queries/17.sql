create view myhotels.fin_année_2022 as
select nom_hotel, adresse, ville,nom_client, prenom_client, type_de_chambre from myhotels.hotel h  
join myhotels.reservations r  on h.id_hotel = r.id_hotel_reservation 
join myhotels.client c on r.id_client_reservation = c.id_client 
join myhotels.chambre c2 on r.id_chambre_reservation = c2.id_chambre 
where date_arrivee < '2022/12/30'
