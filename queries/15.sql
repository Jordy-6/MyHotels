create view myhotels.famille_nombreuse as
select nom_client, prenom_client from myhotels.client c 
join myhotels.reservations r on c.id_client = r.id_client_reservation 
where presence_mineur = true and nb_mineur > 2;
