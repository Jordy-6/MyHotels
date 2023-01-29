create table myhotels.client(
id_client int primary key not null auto_increment,
nom_client varchar(100) not null ,
prenom_client varchar(100) not null ,
tel_client varchar(15) not null ,
email varchar(100) not null ,
pays varchar(100) not null 
);
