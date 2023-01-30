create view myhotels.salaire_annuel as
select sum(salaire) * 12 as salaire_totale_par_an from myhotels.employes e;
