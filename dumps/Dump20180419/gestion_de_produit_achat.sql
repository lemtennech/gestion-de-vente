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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-19  0:22:27
