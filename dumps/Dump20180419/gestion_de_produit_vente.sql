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

-- Dump completed on 2018-04-19  0:22:26
