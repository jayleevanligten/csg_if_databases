-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.19.04.2-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `naam` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `wachtwoord` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'meneer van der Veen','vnr@gmail.com','hallo'),(2,'Jaylee van Ligten','jvl@gmail.com','hallo'),(3,'Carlijn Kammenga','ckg@gmail.com','hallo'),(4,'Nicoline van Deemter','nvd@gmail.com','hallo'),(5,'Yasmine Ibrahim','yih@gmail.com','hallo');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `titel` varchar(32) NOT NULL,
  `subtitel` varchar(32) NOT NULL,
  `omschrijving` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,'Maatregelen','Maatregelen Coronavirus','Dit zijn de huidige regels'),(2,'Besmettingen','Aantal besmettingen','Het aantal nieuwe besmettingen'),(3,'Mondkapjes','Wanneer mondkapjes dragen?','Regels mondkapjes Nederland'),(4,'Symptomen','Symptomen Coronavirus','Maatregelen bij symptomen');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacties`
--

DROP TABLE IF EXISTS `reacties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reacties` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `foto` varchar(32) NOT NULL,
  `account` varchar(32) NOT NULL,
  `reactie` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacties`
--

LOCK TABLES `reacties` WRITE;
/*!40000 ALTER TABLE `reacties` DISABLE KEYS */;
INSERT INTO `reacties` VALUES (1,'1','1','Erg handig! Zeker een 5.9 waard!'),(2,'1','3','Ik vind het nogal overdreven.'),(3,'2','4','Gelukkig! Weinig in het Noorden.'),(4,'2','5','Wow! In het Zuiden best veel..'),(5,'3','3','Nou fijn! Ik woon in Tolbert..'),(6,'3','4','Gelukkig kan ik goed fietsen!'),(7,'4','3','Oh nee! Ik ben verkouden..'),(8,'4','2','Gelukkig heb ik geen symptomen!');
/*!40000 ALTER TABLE `reacties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22 20:28:05
