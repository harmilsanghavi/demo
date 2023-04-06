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
-- Table structure for table `prefrences`
--

DROP TABLE IF EXISTS `prefrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prefrences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `basic_detai_id` int DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `notice_period` varchar(45) DEFAULT NULL,
  `expected_ctc` varchar(45) DEFAULT NULL,
  `current_ctc` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basic_detai_id_idx` (`basic_detai_id`),
  CONSTRAINT `basic_detai_id` FOREIGN KEY (`basic_detai_id`) REFERENCES `basic_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prefrences`
--

LOCK TABLES `prefrences` WRITE;
/*!40000 ALTER TABLE `prefrences` DISABLE KEYS */;
INSERT INTO `prefrences` VALUES (1,56,'bhavnagar','1','5','4','hr'),(2,57,'bhavnagar','1','8','5','marketing'),(3,58,'bhavnagar','1','8','5','hr'),(4,59,'bhavnagar','1','9','5','marketing'),(5,60,'rajkot','1','8','4','hr'),(6,61,'surat','1','9','5','hr'),(7,62,'rajkot','1','9','4','hr'),(8,63,'surat','1','9','5','hr'),(9,64,'rajkot','1','8','4','marketing'),(10,65,'surat','1','10','5','hr'),(11,66,'surat','1','10','5','marketing'),(12,67,'surat','1','10','8','hr'),(13,68,'rajkot','1','15','10','hr'),(14,69,'rajkot','1','15','10','hr'),(15,70,'bhavnagar','1','15','8','hr'),(16,71,'bhavnagar','1','15','10','hr'),(17,72,'bhavnagar','1','8','4','hr'),(18,73,'rajkot','1','8','4','marketing'),(19,74,'surat','1','10','5','hr'),(20,76,'bhavnagar','','','','hr'),(21,77,'surat','1','15','8','hr'),(22,78,'surat','1','10','4','hr'),(23,79,'bhavnagar','1','15','10','hr'),(24,80,'bhavnagar','1','10','5','hr'),(25,81,'bhavnagar','1','15','10','hr'),(26,82,'bhavnagar','1','15','10','hr'),(27,83,'bhavnagar','1','15','10','hr'),(28,84,'bhavnagar','1','10','10','hr'),(29,85,'bhavnagar','1','10','10','hr'),(30,86,'bhavnagar','1','10','10','hr'),(31,87,'bhavnagar','1','10','10','hr'),(32,88,'bhavnagar','1','10','10','hr'),(33,89,'bhavnagar','1','10','10','hr'),(34,90,'bhavnagar','1','10','10','hr'),(35,91,'bhavnagar','1','10','10','hr'),(36,92,'bhavnagar','1','10','10','hr'),(37,93,'bhavnagar','1','10','10','hr'),(38,94,'bhavnagar','1','10','10','hr'),(39,95,'bhavnagar','1','10','10','hr'),(40,96,'bhavnagar','1','10','10','hr'),(41,97,'bhavnagar','1','10','10','hr'),(42,98,'bhavnagar','1','10','10','hr'),(43,99,'bhavnagar','1','10','10','hr'),(44,101,'bhavnagar','1','10','10','hr'),(45,102,'bhavnagar','1','10','10','hr'),(46,103,'bhavnagar','1','10','10','hr'),(47,104,'bhavnagar','1','10','10','hr'),(48,105,'bhavnagar','1','10','10','hr'),(49,106,'bhavnagar','1','10','10','hr'),(50,107,'bhavnagar','1','10','10','hr'),(51,108,'bhavnagar','1','10','10','hr'),(52,109,'bhavnagar','1','10','10','hr'),(53,110,'bhavnagar','1','10','10','hr'),(54,111,'bhavnagar','1','10','10','hr'),(55,112,'bhavnagar','1','10','10','hr'),(56,113,'bhavnagar','1','10','10','hr'),(57,114,'bhavnagar','1','10','10','hr'),(58,115,'bhavnagar','1','10','10','hr'),(59,116,'bhavnagar','1','10','10','hr'),(60,117,'bhavnagar','1','10','10','hr'),(61,118,'bhavnagar','1','10','10','hr'),(62,119,'bhavnagar','1','10','10','hr'),(63,120,'bhavnagar','1','10','10','hr'),(64,121,'bhavnagar','1','10','10','hr'),(65,122,'bhavnagar','1','10','10','hr'),(66,123,'bhavnagar','1','10','10','hr'),(67,124,'bhavnagar','1','10','10','hr'),(68,125,'bhavnagar','1','10','10','hr'),(69,126,'bhavnagar','1','10','10','hr'),(70,127,'bhavnagar','1','10','10','hr'),(71,128,'bhavnagar','1','10','10','hr'),(72,129,'bhavnagar','1','10','10','hr'),(73,130,'bhavnagar','1','10','10','hr'),(74,131,'bhavnagar','1','10','10','hr'),(75,132,'bhavnagar','1','10','10','hr'),(76,133,'bhavnagar','1','10','10','hr'),(77,134,'bhavnagar','1','10','8','hr'),(78,135,'bhavnagar','1','10','8','hr'),(79,136,'bhavnagar','1','10','8','hr'),(80,137,'bhavnagar','1','15','10','hr'),(81,138,'bhavnagar','1','15','10','hr'),(82,139,'bhavnagar','1','15','10','hr'),(83,140,'bhavnagar','1','15','10','hr'),(84,141,'bhavnagar','1','15','10','hr'),(85,142,'bhavnagar','1','15','10','hr'),(86,143,'bhavnagar','1','15','10','hr'),(87,144,'bhavnagar','1','15','10','hr'),(88,145,'bhavnagar','1','15','10','hr'),(89,146,'bhavnagar','1','15','10','hr'),(90,147,'bhavnagar','1','15','10','hr'),(91,148,'bhavnagar','1','15','10','hr'),(92,149,'bhavnagar','1','15','10','hr'),(93,150,'bhavnagar','1','15','10','hr'),(94,151,'bhavnagar','1','15','10','hr'),(95,152,'bhavnagar','1','15','10','hr'),(96,153,'bhavnagar','1','15','10','hr'),(97,154,'bhavnagar','1','15','10','hr'),(98,155,'bhavnagar','1','15','10','hr'),(99,156,'bhavnagar','1','15','10','hr'),(100,157,'bhavnagar','1','15','10','hr'),(101,158,'bhavnagar','1','15','10','hr'),(102,159,'bhavnagar','1','15','10','hr'),(103,160,'bhavnagar','1','15','10','hr'),(104,161,'bhavnagar','1','15','10','hr'),(105,162,'bhavnagar','1','15','10','hr'),(106,163,'bhavnagar','1','15','10','hr'),(107,164,'bhavnagar','1','15','10','hr'),(108,165,'bhavnagar','1','15','10','hr'),(109,166,'bhavnagar','1','15','10','hr'),(110,167,'bhavnagar','1','15','10','hr'),(111,168,'bhavnagar','1','15','10','hr'),(112,169,'bhavnagar','1','15','10','hr'),(113,170,'bhavnagar','1','15','10','hr'),(114,171,'bhavnagar','1','15','10','hr'),(115,172,'bhavnagar','1','15','10','hr'),(116,173,'bhavnagar','1','15','10','hr'),(117,174,'bhavnagar','1','15','10','hr'),(118,175,'bhavnagar','1','15','10','hr'),(119,176,'bhavnagar','1','15','10','hr'),(120,177,'bhavnagar','1','15','10','hr'),(121,178,'bhavnagar','1','15','10','hr'),(122,179,'bhavnagar','1','15','10','hr'),(123,180,'bhavnagar','1','15','10','hr'),(124,181,'bhavnagar','1','15','10','hr'),(125,182,'bhavnagar','1','15','10','hr'),(126,183,'bhavnagar','1','15','10','hr'),(127,184,'bhavnagar','1','15','10','hr'),(128,185,'bhavnagar','1','15','10','hr'),(129,186,'bhavnagar','1','15','10','hr'),(130,187,'bhavnagar','1','15','10','hr'),(131,188,'bhavnagar','1','8','5','hr'),(132,189,'bhavnagar','1','9','5','hr'),(133,190,'bhavnagar','1','8','4','hr'),(134,191,'bhavnagar','1','15','8','hr'),(135,192,'bhavnagar','1','15','8','hr'),(136,193,'bhavnagar','1','15','8','hr');
/*!40000 ALTER TABLE `prefrences` ENABLE KEYS */;
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
