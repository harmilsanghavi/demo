-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: job_application
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `eduction_detail`
--

DROP TABLE IF EXISTS `eduction_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eduction_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `basic_deatil_id` int DEFAULT NULL,
  `cource_name` varchar(45) DEFAULT NULL,
  `univercity` varchar(45) DEFAULT NULL,
  `passing_year` varchar(45) DEFAULT NULL,
  `percentage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basic_detail_id_idx` (`basic_deatil_id`),
  CONSTRAINT `basic_detail_id` FOREIGN KEY (`basic_deatil_id`) REFERENCES `basic_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eduction_detail`
--

LOCK TABLES `eduction_detail` WRITE;
/*!40000 ALTER TABLE `eduction_detail` DISABLE KEYS */;
INSERT INTO `eduction_detail` VALUES (1,56,'10th','gseb','2001','85'),(2,57,'10th','gseb','2001','85'),(3,57,'12th','gseb','2003','80'),(4,58,'10th','gseb','2001','85'),(5,59,'10th','gseb','2001','85'),(6,59,'12th','gseb','2003','80'),(7,59,'bsc','gtu','2007','80'),(8,60,'10th','gseb','2001','80'),(9,61,'10th','gseb','2001','85'),(10,62,'10th','gseb','2001','85'),(11,62,'diploma','gtu','2004','80'),(12,63,'10th','gseb','2015','85'),(13,64,'10th','gseb','2010','85'),(14,64,'12th','gseb','2012','80'),(15,64,'bsc','gtu','2017','90'),(16,65,'10th','gseb','2001','85'),(17,65,'12th','gseb','2003','80'),(18,66,'10th','gseb','2001','85'),(19,66,'12th','gseb','2003','80'),(20,67,'10th','cbse','2010','85'),(21,67,'12th','cbse','2012','80'),(22,68,'10th','gseb','2016','85'),(23,68,'diploma','gtu','2019','95'),(24,68,'bsc','gtu','2020','99'),(25,69,'10th','gseb','2001','85'),(27,70,'10th','gseb','1990','85'),(28,71,'10th','gseb','1994','85'),(29,72,'10th','gseb','2001','85'),(30,73,'10th','gseb','2010','85'),(31,74,'10th','','2010','85'),(32,76,'10th','gseb','2010','85'),(33,77,'10th','gseb','2017','85'),(34,78,'10th','gseb','2015','85'),(35,79,'10th','gseb','2001','85'),(36,80,'10th','gseb','2001','85'),(37,81,'10th','gseb','2001','85'),(38,82,'10th','gseb','2001','85'),(39,83,'10th','gseb','2001','85'),(40,84,'10th','gseb','2001','85'),(41,85,'10th','gseb','2001','85'),(42,86,'10th','gseb','2001','85'),(43,87,'10th','gseb','2001','85'),(44,88,'10th','gseb','2001','85'),(45,89,'10th','gseb','2001','85'),(46,90,'10th','gseb','2001','85'),(47,91,'10th','gseb','2001','85'),(48,92,'10th','gseb','2001','85'),(49,93,'10th','gseb','2001','85'),(50,94,'10th','gseb','2001','85'),(51,95,'10th','gseb','2001','85'),(52,96,'10th','gseb','2001','85'),(53,97,'10th','gseb','2001','85'),(54,98,'10th','gseb','2001','85'),(55,99,'10th','gseb','2001','85'),(56,101,'10th','gseb','2001','85'),(57,102,'10th','gseb','2001','85'),(58,103,'10th','gseb','2001','85'),(59,104,'10th','gseb','2001','85'),(60,105,'10th','gseb','2001','85'),(61,106,'10th','gseb','2001','85'),(62,107,'10th','gseb','2001','85'),(63,108,'10th','gseb','2001','85'),(64,109,'10th','gseb','2001','85'),(65,110,'10th','gseb','2001','85'),(66,111,'10th','gseb','2001','85'),(67,112,'10th','gseb','2001','85'),(68,113,'10th','gseb','2001','85'),(69,114,'10th','gseb','2001','85'),(70,115,'10th','gseb','2001','85'),(71,116,'10th','gseb','2001','85'),(72,117,'10th','gseb','2001','85'),(73,118,'10th','gseb','2001','85'),(74,119,'10th','gseb','2001','85'),(75,120,'10th','gseb','2001','85'),(76,121,'10th','gseb','2001','85'),(77,122,'10th','gseb','2001','85'),(78,123,'10th','gseb','2001','85'),(79,124,'10th','gseb','2001','85'),(80,125,'10th','gseb','2001','85'),(81,126,'10th','gseb','2001','85'),(82,127,'10th','gseb','2001','85'),(83,128,'10th','gseb','2001','85'),(84,129,'10th','gseb','2001','85'),(85,130,'10th','gseb','2001','85'),(86,131,'10th','gseb','2001','85'),(87,132,'10th','gseb','2001','85'),(88,133,'10th','gseb','2001','85'),(89,134,'10th','gseb','2001','85'),(90,135,'10th','gseb','2001','85'),(91,136,'10th','gseb','2001','85'),(92,137,'10th','gseb','','85'),(93,138,'10th','gseb','','85'),(94,139,'10th','gseb','','85'),(95,140,'10th','gseb','','85'),(96,141,'10th','gseb','','85'),(97,142,'10th','gseb','','85'),(98,143,'10th','gseb','','85'),(99,144,'10th','gseb','','85'),(100,145,'10th','gseb','','85'),(101,146,'10th','gseb','','85'),(102,147,'10th','gseb','','85'),(103,148,'10th','gseb','','85'),(104,149,'10th','gseb','','85'),(105,150,'10th','gseb','','85'),(106,151,'10th','gseb','','85'),(107,152,'10th','gseb','','85'),(108,153,'10th','gseb','','85'),(109,154,'10th','gseb','','85'),(110,155,'10th','gseb','','85'),(111,156,'10th','gseb','','85'),(112,157,'10th','gseb','','85'),(113,158,'10th','gseb','','85'),(114,159,'10th','gseb','','85'),(115,160,'10th','gseb','','85'),(116,161,'10th','gseb','','85'),(117,162,'10th','gseb','','85'),(118,163,'10th','gseb','','85'),(119,164,'10th','gseb','','85'),(120,165,'10th','gseb','','85'),(121,166,'10th','gseb','','85'),(122,167,'10th','gseb','','85'),(123,168,'10th','gseb','','85'),(124,169,'10th','gseb','','85'),(125,170,'10th','gseb','','85'),(126,171,'10th','gseb','','85'),(127,172,'10th','gseb','','85'),(128,173,'10th','gseb','','85'),(129,174,'10th','gseb','','85'),(130,175,'10th','gseb','','85'),(131,176,'10th','gseb','','85'),(132,177,'10th','gseb','','85'),(133,178,'10th','gseb','','85'),(134,179,'10th','gseb','','85'),(135,180,'10th','gseb','','85'),(136,181,'10th','gseb','','85'),(137,182,'10th','gseb','','85'),(138,183,'10th','gseb','','85'),(139,184,'10th','gseb','','85'),(140,185,'10th','gseb','','85'),(141,186,'10th','gseb','','85'),(142,187,'10th','gseb','','85'),(143,188,'10th','','2001',''),(144,189,'10th','gseb','2001','85'),(145,190,'10th','gseb','2001','85'),(146,191,'10th','gseb','2001','85'),(147,192,'10th','gseb','2001','85'),(148,193,'10th','gseb','2001','85');
/*!40000 ALTER TABLE `eduction_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-21  8:59:12
