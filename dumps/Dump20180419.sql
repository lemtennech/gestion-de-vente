CREATE DATABASE  IF NOT EXISTS `gestion_de_produit` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gestion_de_produit`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: gestion_de_produit
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achat`
--

DROP TABLE IF EXISTS `achat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achat` (
  `N_achat` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prenom_forn` varchar(30) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_total` float NOT NULL,
  `prix_unitaire` double NOT NULL,
  `date_achat` date NOT NULL,
  `fact_id` int(11) NOT NULL,
  PRIMARY KEY (`N_achat`),
  KEY `fact_id_idx` (`N_achat`),
  KEY `fact_id_idx1` (`fact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achat`
--

LOCK TABLES `achat` WRITE;
/*!40000 ALTER TABLE `achat` DISABLE KEYS */;
INSERT INTO `achat` VALUES (1,'YQCINE','كاس صغير',120,13680,114,'2018-04-01',1),(2,'YQCINE','كاس صغير',200,2800,14,'2018-04-01',2),(3,'YQCINE',',b,nb',200,20400,102,'2018-04-14',3),(4,'YQCINE','كاس صغير',1520,152000,100,'2018-04-14',4),(5,'YQCINE','كاس صغير',150,18000,120,'2018-04-14',5),(6,'YQCINE','كاس صغير',120,1320,11,'2018-04-14',6),(7,'YQCINE','hhh',120,1440,12,'2018-04-14',6),(8,'YQCINE',',b,nb',120,14400,120,'2018-04-14',7),(9,'YQCINE','كاس صغير',11,1320,120,'2018-04-14',8),(10,'YQCINE',',b,nb',120,1440,12,'2018-04-14',9),(11,'YQCINE','كاس صغير',120,1320,11,'2018-04-14',9),(12,'YQCINE','كاس صغير',120,1320,11,'2018-04-18',10),(13,'YQCINE',',b,nb',120,1344,11.199999809265137,'2018-04-18',11),(14,'YQCINE',',b,nb',120,1344,11.199999809265137,'2018-04-18',11),(15,'YQCINE',',b,nb',120,1320,11,'2018-04-18',11),(16,'YQCINE','كاس صغير',1500,18450,12.300000190734863,'2018-04-18',12),(17,'YQCINE','hhh',143,1758.9,12.300000190734863,'2018-04-18',12);
/*!40000 ALTER TABLE `achat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `N_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prenom` varchar(30) NOT NULL,
  `N_telephone` varchar(20) DEFAULT NULL,
  `Adresse` varchar(60) NOT NULL,
  `credit` float DEFAULT NULL,
  PRIMARY KEY (`N_client`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'salim','06665211','dsds',0);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_v`
--

DROP TABLE IF EXISTS `fact_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_v` (
  `n_fact` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `client` varchar(45) NOT NULL,
  `somme` float NOT NULL,
  `credit` float DEFAULT NULL,
  `verement` float DEFAULT NULL,
  UNIQUE KEY `n_fact` (`n_fact`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_v`
--

LOCK TABLES `fact_v` WRITE;
/*!40000 ALTER TABLE `fact_v` DISABLE KEYS */;
INSERT INTO `fact_v` VALUES (1,'2018-03-30','salim',2400,1500,1000),(2,'2018-04-01','salim',12880,2900,10000),(3,'2018-04-14','salim',150,5780,1200),(4,'2018-04-14','salim',0,NULL,NULL),(5,'2018-04-18','salim',1680,4730,6410),(6,'2018-04-18','salim',0,NULL,NULL),(7,'2018-04-18','salim',0,NULL,NULL),(8,'2018-04-18','salim',0,NULL,NULL),(9,'2018-04-18','salim',0,NULL,NULL),(10,'2018-04-18','salim',0,NULL,NULL),(11,'2018-04-18','salim',0,NULL,NULL),(12,'2018-04-18','salim',378,0,378),(13,'2018-04-18','salim',0,NULL,NULL),(14,'2018-04-18','salim',0,NULL,NULL);
/*!40000 ALTER TABLE `fact_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facture` (
  `n_fact` int(11) NOT NULL AUTO_INCREMENT,
  `fornisseur` varchar(50) NOT NULL,
  `somme` float DEFAULT NULL,
  `date` date NOT NULL,
  `credit` float DEFAULT NULL,
  `verment` float DEFAULT NULL,
  PRIMARY KEY (`n_fact`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facture`
--

LOCK TABLES `facture` WRITE;
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
INSERT INTO `facture` VALUES (1,'YQCINE',13680,'2018-04-01',NULL,NULL),(2,'YQCINE',0,'2018-04-01',NULL,NULL),(3,'YQCINE',20400,'2018-04-14',NULL,NULL),(4,'YQCINE',152000,'2018-04-14',NULL,NULL),(5,'YQCINE',0,'2018-04-14',NULL,NULL),(6,'YQCINE',0,'2018-04-14',NULL,NULL),(7,'YQCINE',0,'2018-04-14',NULL,NULL),(8,'YQCINE',0,'2018-04-14',NULL,NULL),(9,'YQCINE',0,'2018-04-14',NULL,NULL),(10,'YQCINE',0,'2018-04-18',NULL,NULL),(11,'YQCINE',0,'2018-04-18',NULL,NULL),(12,'YQCINE',0,'2018-04-18',NULL,NULL);
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornisseur`
--

DROP TABLE IF EXISTS `fornisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornisseur` (
  `N_forn` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prenom` varchar(30) NOT NULL,
  `N_telephone` varchar(20) DEFAULT NULL,
  `Adresse` varchar(60) NOT NULL,
  `credit` float DEFAULT NULL,
  PRIMARY KEY (`N_forn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornisseur`
--

LOCK TABLES `fornisseur` WRITE;
/*!40000 ALTER TABLE `fornisseur` DISABLE KEYS */;
INSERT INTO `fornisseur` VALUES (1,'YQCINE','06521455','OGX',10058.6);
/*!40000 ALTER TABLE `fornisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `N_prod` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) NOT NULL,
  `categorie` varchar(80) DEFAULT NULL,
  `unite` varchar(10) NOT NULL,
  `prix_vent` float NOT NULL,
  `qnt` int(11) DEFAULT '0',
  `alerte` smallint(6) DEFAULT '0',
  `unite_d` smallint(6) DEFAULT NULL,
  `prix_achat` float DEFAULT NULL,
  PRIMARY KEY (`N_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,',b,nb','sdfg',',nbn',160,1077,15,12,150),(2,'كاس صغير','كاس','كرطون',14,5659,30,120,12),(3,'hhh','','kjk',14,511,11,120,10);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vente`
--

DROP TABLE IF EXISTS `vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vente` (
  `N_vente` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prenom_client` varchar(60) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `prix` float NOT NULL,
  `qnt` int(11) NOT NULL,
  `date_vente` datetime NOT NULL,
  `prix_total` float NOT NULL,
  `factv_id` int(11) NOT NULL,
  `gain` float NOT NULL,
  PRIMARY KEY (`N_vente`),
  KEY `factv_id_idx` (`factv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vente`
--

LOCK TABLES `vente` WRITE;
/*!40000 ALTER TABLE `vente` DISABLE KEYS */;
INSERT INTO `vente` VALUES (1,'salim',',b,nb',160,15,'2018-03-30 00:00:00',2400,1,0),(2,'salim','كاس صغير',14,120,'2018-04-01 00:00:00',1680,2,0),(3,'salim',',b,nb',160,70,'2018-04-01 00:00:00',11200,2,0),(4,'salim','كاس صغير',15,10,'2018-04-14 00:00:00',150,3,0),(5,'salim','كاس صغير',14,120,'2018-04-18 00:00:00',1680,5,0),(6,'salim',',b,nb',160,120,'2018-04-18 00:00:00',19200,7,0),(7,'salim','كاس صغير',14.3,15,'2018-04-18 00:00:00',214.5,10,0),(8,'salim','كاس صغير',14,12,'2018-04-18 00:00:00',168,12,2),(9,'salim','hhh',14,15,'2018-04-18 00:00:00',210,12,4),(10,'salim','كاس صغير',14,12,'2018-04-18 00:00:00',168,13,24),(11,'salim','كاس صغير',14.17,20,'2018-04-18 00:00:00',283.4,14,43.4);
/*!40000 ALTER TABLE `vente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-19  0:23:05
