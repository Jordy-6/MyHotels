Je vais vous présenter et vous expliquer la structure de ce dossier, de ce qui la compose ainsi que vous donner une explication détaillée de chaque éléments.

J'ai tout d'abord crée 6 tables qui sont des tableaux qui contiennent les données. Elles sont nommés respectivements client, hotel, chambre, employes, prestataires et reservations.

Dans la table client, on y trouve les attributs (les lignes qui composent la table) : 
- id_client pour identifier les clients,
- nom_client pour le nom du client
- prenom_client pour le prenom du client 
- tel_client pour pour le numero de telephone
- email
- pays

Dans la table chambres, on y trouve les attributs id_chambre, id_hotel_chambre pour identifier dans quel hotel il se situe, type_de_chambre pour savoir si c'est une chambre familiale, une suite etc..., nb_lit, num_chambres et enfin prix_chambres.

Dans la table employes, on a id_employe, nom_employe, prenom_employe, age_employe, anciennete, salaire, employe_presta pour savoir si c'est un employe d'un prestataire ou non, id_presta si c'est le cas et c'est donc l'identifiant du prestataire, poste et hotel pour l'identifiant de l'hotel pour savoir dans quel hotel ils travaillent.

Dans la table hotel, il y a id_hotel, nom_hotel, adresse, ville, pays, email_hotel, numero_tel, nb_chambres, nb_reservations_actuelles, nb_clients_par_an, id_gerant_hotel, CA pour le chiffre d'affaire et depenses_annuelles.

Dans la table reservations, on y trouve id_reservations, id_client_reservation, id_hotel_reservation, id_chambre_reservation, id_numero_chambres, date_arrivee pour la date d'arrivée à l'hotel, date_date_depart pour l'inverse, presence_mineur, nb_mineur et info_paiement qui correspond au numero de carte du client

Enfin dans la derniere table qui est la table prestataire, il y'a id_prestataire, nom_prestataire, taches_prestataire, nb_employes_prestataire et enfin le tarif.


Après avoir rempli toutes les tables de données de tout vos hotels, j'ai crée des vues sql qui permet de creer des tables avec le resultat des requetes que vous pourrez trouver dans le dossier queries.

![image](https://user-images.githubusercontent.com/82671302/215489154-e7e23089-7bd3-4b2f-828b-b409a1782fc9.png)
Dans cette vue la, j'ai décidé de sélectionner tout les clients qui ne viennent pas de France car on pourrait leur proposer des service en plus pour leur montrer la convivialité de la France et aussi proposer des objets souvenirs que l'on pourrait leur facturer.

![image](https://user-images.githubusercontent.com/82671302/215489795-9c268384-90c7-4fa2-ac1a-1a35751a4e81.png)
Dans celle ci, j'ai sélectionné les clients qui ont une American Express pour que les employes puissent leur fournir un meilleur besoin et une meilleure écoute.

![image](https://user-images.githubusercontent.com/82671302/215490597-b8ddef51-d70b-4a78-a922-c508dd7efc35.png)
J'ai sélectionné le client qui arrive en famille pour proposer des services adéquats pour les enfants par exemple des animations etc...

![image](https://user-images.githubusercontent.com/82671302/215491450-6e52a8c2-37ba-4f44-bc32-9665a408d4b2.png)
Dans celle la, cette vue donnera l'hotel qui à le meilleur chiffre d'affaires d'entre tous pour vous permettre de sois investir davantage dans cet hotel afin de profiter de cet avantage ou soit d'investir dans les autres hotels afin de justement essayer d'equilibrer les CA

![image](https://user-images.githubusercontent.com/82671302/215491849-21f1dd2f-ef9b-4e43-9cbd-4f0cff504941.png)
Cette vue donne les clients et le type de chambre dans lequel ils ont sejourné dans l'hotel avant le 30/12/2023.

![image](https://user-images.githubusercontent.com/82671302/215493931-35a4a2eb-ddfe-4d14-a6b9-3337b967576b.png)
Cette vue est quasiment la meme que la précédente à la différence que c'est maintenant après le 30/12/2023 et non avant.

![image](https://user-images.githubusercontent.com/82671302/215494314-6a554ec5-a97f-4258-a530-c2779de0badf.png)
Cette vue représente la somme de tous les salaires des employés en euros par an pour savoir si cette somme est dérisoire ou trop elevée par rapport aux CA.

![image](https://user-images.githubusercontent.com/82671302/215495410-f81f701d-8878-468b-9ea7-e1af939afcef.png)
Celle ci represente tout les couts que doit payer l'hotel par an.

![image](https://user-images.githubusercontent.com/82671302/215501049-c32faafb-3228-40f8-b7f1-9110d8ceb140.png)
Cette vue nous montre la moyenne des salaires de tout les employes par mois.

![image](https://user-images.githubusercontent.com/82671302/215501238-c39ba89f-db35-4872-8f4e-bdf5a1f0737c.png)
Cette vue nous montre la moyenne des salaires et le nombres d'employés en fonction de leur métiers pour pouvoir peut etre réduire ou augmenter. 

![image](https://user-images.githubusercontent.com/82671302/215501988-8b7621f9-df05-44c5-968b-1ee9f4339d9f.png)
Celle ci nous compte le nombre d'employés qui viennent d'un prestataire travaillant dans un hotel en fonction de chaque prestataire.

![image](https://user-images.githubusercontent.com/82671302/215502900-ab70e963-95ae-4b8b-8a77-7044c52f6833.png)
Ce script permet de montrer les infos des 5 doyens de l'entreprise tels que leur nom, leur prénom, l'age à laquelle ils ont integré l'entreprise, leur poste.

![image](https://user-images.githubusercontent.com/82671302/215506632-b4223b97-5c99-4f26-95a2-4b3a7b8d4044.png)
Enfin, le dernier donne le prix que les clients ont payé en fonction de leur temps de séjour et du type de chambres.

Je vous ai donc expliqué comment est la structure de la table ainsi quetout les scripts. N'hésitez pas à revenir vers moi si vous avez une question











