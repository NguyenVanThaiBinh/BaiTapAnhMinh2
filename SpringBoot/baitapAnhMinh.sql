CREATE DATABASE  IF NOT EXISTS `anhminh` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `anhminh`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: anhminh
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'Hue'),(2,'Sai Gon'),(3,'Ha Noi');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces_employee_entity`
--

DROP TABLE IF EXISTS `provinces_employee_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces_employee_entity` (
  `province_id` bigint NOT NULL,
  `employee_entity_id` bigint NOT NULL,
  UNIQUE KEY `UK_73d9ysc90gq8ywud41rixmhg6` (`employee_entity_id`),
  KEY `FKc9jvbtcsu0f500ujehdb9abij` (`province_id`),
  CONSTRAINT `FKc9jvbtcsu0f500ujehdb9abij` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`),
  CONSTRAINT `FKqhgk2bhbl0qodpisf19whtb4r` FOREIGN KEY (`employee_entity_id`) REFERENCES `tbl_employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces_employee_entity`
--

LOCK TABLES `provinces_employee_entity` WRITE;
/*!40000 ALTER TABLE `provinces_employee_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `provinces_employee_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employees`
--

DROP TABLE IF EXISTS `tbl_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_employees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `province_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKquv563c5t4a9nue8mov9jfbsy` (`province_id`),
  CONSTRAINT `FKquv563c5t4a9nue8mov9jfbsy` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employees`
--

LOCK TABLES `tbl_employees` WRITE;
/*!40000 ALTER TABLE `tbl_employees` DISABLE KEYS */;
INSERT INTO `tbl_employees` VALUES (1,'java@mailinator.com','Brandon','Garner',3),(2,'madapyx@mailinator.com','Dora','Williamson',1),(3,'koba@mailinator.com','Leilani','Lopez',1),(4,'rajez@mailinator.com','Cadman','Sanders',2),(5,'zohoqoly@mailinator.com','Ayanna','Adams',2),(6,'resucybi@mailinator.com','Binh Hu','Fox',3),(8,'syjawifego@mailinator.com','Tyler','Jimenez',3),(9,'zicidyti@mailinator.com','Deirdre','Foreman',1),(10,'bujoli@mailinator.com','Quentin','Harding',1),(11,'vowybic@mailinator.com','Eden','Stephenson',2),(12,'xycap@mailinator.com','Aileen','Bradford',1),(13,'gylimuj@mailinator.com','Hammett','Chan',3),(14,'bicet@mailinator.com','Hasad','Morrow',1),(15,'cigavupu@mailinator.com','Drew','Adams',3),(16,'zobepu@mailinator.com','Amal','Day',3),(17,'mesurycuwy@mailinator.com','Owen','Mcleod',3),(18,'jurowynovy@mailinator.com','Raja','Baker',3),(19,'vivi@mailinator.com','Pandora','Daugherty',1),(20,'byhepuwybi@mailinator.com','Baxter','Ewing',2),(21,'piho@mailinator.com','Zeph','Meyers',2),(22,'cedoto@mailinator.com','Germane','Rivas',1),(23,'gakij@mailinator.com','Tanner','Aguilar',3),(24,'civojemy@mailinator.com','Maite','Gibbs',2),(25,'zapawyzizy@mailinator.com','Garth','Cameron',3),(26,'fuxabelo@mailinator.com','Lavinia','Key',1),(27,'lywow@mailinator.com','Jerry','Dixon',3),(28,'buxajorak@mailinator.com','Libby','Melendez',3),(29,'kowyp@mailinator.com','Clare','Callahan',2),(30,'xysy@mailinator.com','Declan','Patton',2),(31,'qafik@mailinator.com','Odette','Lane',1),(32,'qewox@mailinator.com','Brennan','Conway',2),(34,'syfemega@mailinator.com','Binh ','Hu',1),(39,'cesisonyju@mailinator.com','Bianca','Snider',2),(42,'cesisonyju@mailinator.com','Bianca','Snider',2),(43,'cesisonyju@mailinator.com','Bianca','Snider',2),(44,'cesisonyju@mailinator.com','Bianca','Snider',2),(45,'cesisonyju@mailinator.com','Binh Hu HaHa','Snider',2),(46,'cesisonyju@mailinator.com','Sexy Lady','Snider',1),(47,'cesisonyju@mailinator.com','Binh Hu HaHa','Snider',1),(48,'cesisonyju@mailinator.com','Babyyyyyyy','Snider',2),(49,'cesisonyju@mailinator.com','HiHi','Snider',2),(50,'cesisonyju@mailinator.com','Ahihi Do Ngoc','Snider',2),(51,'cesisonyju@mailinator.com','Do Quy Xu Ha','Snider',2),(52,'cesisonyju@mailinator.com','Binh HU HiHi','Snider',2),(53,'cesisonyju@mailinator.com','Bao Binh','Snider',2),(54,'cesisonyju@mailinator.com','Toi La Ai','Snider',2),(55,'gehug@mailinator.com','Tatum','Griffin',1),(56,'gehug@mailinator.com','Obama','Griffin',1),(57,'lakodu@mailinator.com','Cameran','Vaughan',3),(58,'faxese@mailinator.com','Eleanor','Hoover',2),(59,'wilixup@mailinator.com','Nell','Webb',2),(69,'zureva@mailinator.com','Unity','Jennings',3),(70,'qijapar@mailinator.com','Quon','Gould',1),(71,'lelomyni@mailinator.com','Benedict','Brady',1),(73,'bokomirax@mailinator.com','Angelica','Vasquez',3),(74,'jycahahaly@mailinator.com','Callum','Blankenship',1),(75,'rukatu@mailinator.com','Steel','Parker',3),(76,'cofyrif@mailinator.com','Norman','Carr',3),(77,'pusetyxul@mailinator.com','Wyatt','Coffey',1),(78,'dycyvy@mailinator.com','Ronan','Ferrell',1),(79,'wilobyxet@mailinator.com','Stuart','Chavez',1),(81,'doloratyha@mailinator.com','Hayfa','Workman',3),(82,'wipatice@mailinator.com','Gage','Huff',2),(83,'qofipone@mailinator.com','Lucas','William',3),(84,'nowyf@mailinator.com','Kevin','Lindsey',3),(85,'davy@mailinator.com','Cadman','Andrews',1),(86,'qofo@mailinator.com','Erin','Mcdowell',2),(87,'buqig@mailinator.com','Sacha','Mccall',3);
/*!40000 ALTER TABLE `tbl_employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-30 10:44:23
