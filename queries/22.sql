create view myhotels.nb_employee_per_work as
select poste ,count(id_employe) from myhotels.employes e 
group by poste ;
