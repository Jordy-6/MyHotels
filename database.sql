-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: myhotels
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chambre`
--

DROP TABLE IF EXISTS `chambre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chambre` (
  `id_chambre` int(11) NOT NULL AUTO_INCREMENT,
  `id_hotel_chambre` int(11) NOT NULL,
  `type_de_chambre` varchar(100) NOT NULL,
  `nb_lit` int(11) NOT NULL,
  `num_chambres` int(11) NOT NULL,
  `prix_chambres` int(11) NOT NULL,
  PRIMARY KEY (`id_chambre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambre`
--

LOCK TABLES `chambre` WRITE;
/*!40000 ALTER TABLE `chambre` DISABLE KEYS */;
INSERT INTO `chambre` VALUES (1,1,'Chambre familiale',4,436,50),(2,1,'Chambre standard',1,12,20),(3,1,'Chambre de luxe',2,420,100),(4,1,'Chambre standard',2,32,30),(5,1,'Suite',4,1,150),(6,2,'Chambre familiale',4,13,30),(7,3,'Chambre standard',1,7,30),(8,3,'Chambre de luxe',3,23,90),(9,3,'Chambre standard',1,72,45),(10,3,'Chambre familiale',4,26,60);
/*!40000 ALTER TABLE `chambre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(100) NOT NULL,
  `prenom_client` varchar(100) NOT NULL,
  `tel_client` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Pereira','Jordy','+33748922352','jordy@gmail.com','France'),(2,'Johnson','Sara','+44 673482634','sara@outlook.com','Angleterre'),(3,'Diome','Fatou','+223 721932822','datou@yahoo.fr','Mali'),(4,'Nkosi','Mandela','+27 46647464','mnk@yahoo.fr','Afrique du Sud'),(5,'Madarame','Baku','+81 12563337','stl@gmail.com','Japon'),(6,'Buntaro','Mori','+81 92369894','mori@outlook.com','Japon'),(7,'Lavinho','Jr','+55 76344782','bll@gmail.com','Bresil'),(8,'Ri','Shin','+86 46382942','shin@outlook.com','Chine'),(9,'Salamanca','Lalo','+1 27838244','bcsl@gmail.com','Etats-Unis'),(10,'Taylor','Lauren','+1 73468963','lauren@outlook.com','Etats-Unis');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employes`
--

DROP TABLE IF EXISTS `employes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employes` (
  `id_employe` int(11) NOT NULL AUTO_INCREMENT,
  `nom_employe` varchar(100) NOT NULL,
  `prenom_employe` varchar(100) NOT NULL,
  `age_employe` int(11) NOT NULL,
  `anciennete` int(11) NOT NULL,
  `salaire` int(11) NOT NULL,
  `employe_presta` tinyint(1) NOT NULL,
  `id_presta` int(11) DEFAULT NULL,
  `poste` varchar(100) NOT NULL,
  `hotel` int(11) NOT NULL,
  PRIMARY KEY (`id_employe`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employes`
--

LOCK TABLES `employes` WRITE;
/*!40000 ALTER TABLE `employes` DISABLE KEYS */;
INSERT INTO `employes` VALUES (1,'Saint-Patrick','Tariq',21,1,1350,1,6,'Serveur',1),(2,'Dupont','Emma',30,5,1350,0,NULL,'Agent entretien',1),(3,'Thomas','Martin',55,15,1800,0,NULL,'Agent entretien',3),(4,'Dupont','Emmett',35,5,1350,0,NULL,'Agent entretien',2),(5,'Thomas','Martine',52,19,2000,0,NULL,'Agent entretien',1),(6,'Leroy','Sophie',26,1,1500,0,NULL,'Receptionniste',1),(7,'Garcia','Benjamin',32,3,1650,0,NULL,'Receptionniste',3),(8,'Dubois','Charlotte',44,6,1500,1,6,'Serveur',2),(9,'Moreau','Alexandre',28,1,2000,1,3,'Agent de sécurité',3),(10,'Thomas','Léa',25,2,1500,1,1,'Technicien de maintenance',1),(11,'Hernandez','Maxime',61,30,2500,0,NULL,'Receptionniste',3),(12,'Robert','Julie',48,10,2600,0,NULL,'Agent de sécurité',1),(13,'David','Lucas',27,2,1600,1,4,'Animateur',1),(14,'Petit','Amélie',29,4,1800,1,4,'Animateur',3),(15,'Muller','Nicolas',55,10,4000,0,NULL,'Directeur',3),(16,'Dupuy','Marine',44,8,1700,1,6,'Serveur',2),(17,'Durand','Samuel',33,4,1850,0,NULL,'Serveur',3),(18,'Morel','Coralie',24,1,1450,0,NULL,'Serveur',2),(19,'Leclerc','Paul',48,10,2600,1,3,'Agent de securité',1),(20,'Bertrand','Lucie',56,20,4000,1,2,'Technicien de maintenance',3),(21,'Gagnon','Hugo',37,2,2000,1,2,'Technicien de maintenance',2),(22,'Vidal','Rachelle',53,15,6000,0,NULL,'Directrice',2),(23,'Leblanc','Jérôme',46,17,2400,1,4,'Animateur',1),(24,'Saint-Patrick','James',42,10,5500,0,NULL,'Directeur',1);
/*!40000 ALTER TABLE `employes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL AUTO_INCREMENT,
  `nom_hotel` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL,
  `email_hotel` varchar(100) NOT NULL,
  `numero_tel` varchar(12) NOT NULL,
  `nb_employes` int(11) NOT NULL,
  `nb_chambres` int(11) NOT NULL,
  `nb_reservations_actuelles` int(11) NOT NULL,
  `nb_clients_par_an` int(11) NOT NULL,
  `id_gerant_hotel` int(11) NOT NULL,
  `CA` int(11) NOT NULL,
  `depenses_annuelles` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Truth','15 rue Ghost','Lyon','France','truthpro@gmail.com','0109347433',7,15,5,10000,24,600000,80000),(2,'Fluph','24 rue du time','Aubervilliers','France','fluph@gmail.com','0132864877',6,9,1,3000,15,100000,30000),(3,'Tchuss','36 avenue des eaux','Paris','France','tchusspro@gmail.com','0145678556',8,4,20,20000,22,900000,100000);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestataires`
--

DROP TABLE IF EXISTS `prestataires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestataires` (
  `id_prestataire` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prestataire` varchar(100) NOT NULL,
  `taches_prestataire` varchar(300) NOT NULL,
  `nb_employes_prestataire` int(11) NOT NULL,
  `Tarif` int(11) NOT NULL,
  PRIMARY KEY (`id_prestataire`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestataires`
--

LOCK TABLES `prestataires` WRITE;
/*!40000 ALTER TABLE `prestataires` DISABLE KEYS */;
INSERT INTO `prestataires` VALUES (1,'Clim-hotel','Maintenace de la climatisation',7,2500),(2,'Reserv-hotel','Mise en place et maintenance système de gestion de réservation',10,25000),(3,'Secur-hotel','Services de securités  tels que la surveillance video,la sécurité des clients etc...',25,20000),(4,'Anim-hotel','Organisation de différentes activités : animations,divertissements,spectacles etc...',40,15000),(5,'Mark-hotel','Services de marketing et de vente pour la promotion et optmisation de vos hotels',30,50000),(6,'Rest-hotel','Services de restauration',20,30000);
/*!40000 ALTER TABLE `prestataires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id_reservation` int(11) NOT NULL AUTO_INCREMENT,
  `id_client_reservation` int(11) NOT NULL,
  `id_hotel_reservation` int(11) NOT NULL,
  `id_chambre_reservation` int(11) NOT NULL,
  `id_numero_chambres` int(11) NOT NULL,
  `date_arrivee` date NOT NULL,
  `date_depart` date NOT NULL,
  `presence_mineur` tinyint(1) DEFAULT NULL,
  `nb_mineur` int(11) DEFAULT NULL,
  `info_paiement` varchar(100) NOT NULL,
  PRIMARY KEY (`id_reservation`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (41,1,3,10,26,'2022-12-01','2022-12-07',1,2,'376714185995190'),(42,2,3,9,72,'2023-01-01','2023-01-05',0,NULL,'5102148736587927'),(43,5,1,2,12,'2022-10-01','2022-10-04',0,NULL,'4692523833824309'),(44,4,1,1,436,'2022-11-26','2022-11-30',1,3,'376715637193763'),(45,8,2,6,13,'2023-01-04','2023-01-10',1,1,'4487478551271218'),(46,7,1,4,32,'2022-12-25','2022-12-28',0,NULL,'5102142221631845'),(47,3,3,8,23,'2023-02-02','2023-02-07',0,NULL,'5102142120464736'),(48,9,1,5,1,'2023-01-01','2023-01-10',1,2,'376715637193763'),(49,10,3,7,7,'2022-12-10','2022-12-14',0,NULL,'4273012717057373'),(50,6,1,3,420,'2022-12-31','2023-01-05',0,NULL,'4518802658796038');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'myhotels'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 20:50:03
