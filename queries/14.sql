create view myhotels.client_vip as
select nom_client, prenom_client from myhotels.client c 
join myhotels.reservations r on c.id_client = r.id_client_reservation 
where info_paiement like '3%';
