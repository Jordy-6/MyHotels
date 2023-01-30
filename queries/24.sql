create view myhotels.anciens as
select nom_employe, prenom_employe, age_employe, anciennete , age_employe - anciennete as age_entree_entreprise,poste 
from myhotels.employes e
order by anciennete desc limit 5;
