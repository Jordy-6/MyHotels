create view myhotels.tarif_par_clients as
select nom_client, prenom_client, datediff(date_depart, date_arrivee) as duree_sejour, type_de_chambre, datediff(date_depart, date_arrivee) * prix_chambres as tarif from myhotels.reservations r 
join myhotels.client c on r.id_client_reservation = c.id_client 
join myhotels.chambre c2 on r.id_chambre_reservation = c2.id_chambre;
