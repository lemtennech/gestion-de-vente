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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-19  0:22:25
