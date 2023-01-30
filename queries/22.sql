select poste ,count(id_employe) as nb_employe, avg(salaire) as salaire_moyen from myhotels.employes e 
group by poste;
