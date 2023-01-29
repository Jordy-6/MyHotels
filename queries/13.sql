create view myhotels.touristes as
select nom_client, prenom_client,pays from myhotels.client c  
where tel_client not like '+33%';
