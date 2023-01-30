create view myhotels.moyenne_salaire_employes as
select avg(salaire) as moyenne_salaire from myhotels.employes e ; 
