create view myhotels.meilleur_hotel as
select nom_hotel, adresse, ville, nb_employes, CA  from myhotels.hotel h  
join myhotels.employes e  on h.id_hotel  = e.hotel  
where poste like '%Direct%' order by CA desc limit 1;
