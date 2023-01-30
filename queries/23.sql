select nom_prestataire, count(id_employe)  
from myhotels.prestataires p  
join myhotels.employes e on p.id_prestataire = e.id_presta 
where employe_presta = true
group by nom_prestataire;
