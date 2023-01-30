create view myhotels.frais_annuels as
select sum(salaire) * 12 + sum(depenses_annuelles) as couts_par_an from myhotels.employes e
join myhotels.hotel h on e.hotel = h.id_hotel ;
