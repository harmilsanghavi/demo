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
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ba_id` int DEFAULT NULL,
  `read1` varchar(45) DEFAULT NULL,
  `write1` varchar(45) DEFAULT NULL,
  `speak1` varchar(45) DEFAULT NULL,
  `language_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ba_id_idx` (`ba_id`),
  CONSTRAINT `ba_id` FOREIGN KEY (`ba_id`) REFERENCES `basic_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,56,'yes','yes','yes','hindi'),(2,57,'yes','no','no','english'),(3,57,'yes','yes','no','spanish'),(4,58,'yes','yes','yes','english'),(5,58,'yes','yes','yes','gujrati'),(6,59,'no','no','yes','hindi'),(7,59,'no','yes','no','english'),(8,59,'yes','no','no','gujrati'),(9,60,'yes','no','no','hindi'),(10,60,'no','yes','no','gujrati'),(11,61,'yes','yes','yes','english'),(12,62,'yes','yes','yes','hindi'),(13,62,'yes','yes','yes','english'),(14,62,'yes','yes','yes','gujrati'),(15,63,'yes','no','no','hindi'),(16,63,'no','yes','no','english'),(17,64,'yes','yes','yes','english'),(18,65,'yes','yes','yes','hindi'),(19,65,'yes','yes','yes','english'),(20,66,'yes','yes','yes','hindi'),(21,66,'yes','yes','no','spanish'),(22,67,'yes','yes','yes','hindi'),(23,68,'yes','yes','yes','hindi'),(24,68,'yes','yes','yes','english'),(25,68,'yes','yes','yes','gujrati'),(26,69,'yes','yes','yes','hindi'),(27,69,'yes','yes','yes','english'),(28,70,'yes','yes','yes','hindi'),(29,70,'yes','yes','yes','gujrati'),(30,71,'yes','yes','yes','hindi'),(31,71,'yes','yes','yes','english'),(32,72,'yes','yes','yes','maradhi'),(33,73,'yes','yes','yes','spanish'),(34,74,'yes','yes','yes','english'),(35,74,'yes','yes','no','gujrati'),(36,76,'no','yes','no','english'),(37,76,'yes','no','no','gujrati'),(38,77,'yes','yes','yes','english'),(39,78,'yes','yes','yes','gujrati'),(40,79,'yes','yes','yes','gujrati'),(41,80,'yes','yes','yes','gujrati'),(42,81,'yes','yes','yes','gujrati'),(43,82,'yes','yes','yes','gujrati'),(44,83,'yes','yes','yes','gujrati'),(45,84,'yes','yes','no','english'),(46,85,'yes','yes','no','english'),(47,86,'yes','yes','no','english'),(48,87,'yes','yes','no','english'),(49,88,'yes','yes','no','english'),(50,89,'yes','yes','no','english'),(51,90,'yes','yes','no','english'),(52,91,'yes','yes','no','english'),(53,92,'yes','yes','no','english'),(54,93,'yes','yes','no','english'),(55,94,'yes','yes','no','english'),(56,95,'yes','yes','no','english'),(57,96,'yes','yes','no','english'),(58,97,'yes','yes','no','english'),(59,98,'yes','yes','no','english'),(60,99,'yes','yes','no','english'),(61,101,'yes','yes','no','english'),(62,102,'yes','yes','no','english'),(63,103,'yes','yes','no','english'),(64,104,'yes','yes','no','english'),(65,105,'yes','yes','no','english'),(66,106,'yes','yes','no','english'),(67,107,'yes','yes','no','english'),(68,108,'yes','yes','no','english'),(69,109,'yes','yes','no','english'),(70,110,'yes','yes','no','english'),(71,111,'yes','yes','no','english'),(72,112,'yes','yes','no','english'),(73,113,'yes','yes','no','english'),(74,114,'yes','yes','no','english'),(75,115,'yes','yes','no','english'),(76,116,'yes','yes','no','english'),(77,117,'yes','yes','no','english'),(78,118,'yes','yes','no','english'),(79,119,'yes','yes','no','english'),(80,120,'yes','yes','no','english'),(81,121,'yes','yes','no','english'),(82,122,'yes','yes','no','english'),(83,123,'yes','yes','no','english'),(84,124,'yes','yes','no','english'),(85,125,'yes','yes','no','english'),(86,126,'yes','yes','no','english'),(87,127,'yes','yes','no','english'),(88,128,'yes','yes','no','english'),(89,129,'yes','yes','no','english'),(90,130,'yes','yes','no','english'),(91,131,'yes','yes','no','english'),(92,132,'yes','yes','no','english'),(93,133,'yes','yes','no','english'),(94,134,'yes','no','no','hindi'),(95,135,'yes','no','no','hindi'),(96,136,'yes','no','no','hindi'),(97,137,'yes','no','no','hindi'),(98,138,'yes','no','no','hindi'),(99,139,'yes','no','no','hindi'),(100,140,'yes','no','no','hindi'),(101,141,'yes','no','no','hindi'),(102,142,'yes','no','no','hindi'),(103,143,'yes','no','no','hindi'),(104,144,'yes','no','no','hindi'),(105,145,'yes','no','no','hindi'),(106,146,'yes','no','no','hindi'),(107,147,'yes','no','no','hindi'),(108,148,'yes','no','no','hindi'),(109,149,'yes','no','no','hindi'),(110,150,'yes','no','no','hindi'),(111,151,'yes','no','no','hindi'),(112,152,'yes','no','no','hindi'),(113,153,'yes','no','no','hindi'),(114,154,'yes','no','no','hindi'),(115,155,'yes','no','no','hindi'),(116,156,'yes','no','no','hindi'),(117,157,'yes','no','no','hindi'),(118,158,'yes','no','no','hindi'),(119,159,'yes','no','no','hindi'),(120,160,'yes','no','no','hindi'),(121,161,'yes','no','no','hindi'),(122,162,'yes','no','no','hindi'),(123,163,'yes','no','no','hindi'),(124,164,'yes','no','no','hindi'),(125,165,'yes','no','no','hindi'),(126,166,'yes','no','no','hindi'),(127,167,'yes','no','no','hindi'),(128,168,'yes','no','no','hindi'),(129,169,'yes','no','no','hindi'),(130,170,'yes','no','no','hindi'),(131,171,'yes','no','no','hindi'),(132,172,'yes','no','no','hindi'),(133,173,'yes','no','no','hindi'),(134,174,'yes','no','no','hindi'),(135,175,'yes','no','no','hindi'),(136,176,'yes','no','no','hindi'),(137,177,'yes','no','no','hindi'),(138,178,'yes','no','no','hindi'),(139,179,'yes','no','no','hindi'),(140,180,'yes','no','no','hindi'),(141,181,'yes','no','no','hindi'),(142,182,'yes','no','no','hindi'),(143,183,'yes','no','no','hindi'),(144,184,'yes','no','no','hindi'),(145,185,'yes','no','no','hindi'),(146,186,'yes','no','no','hindi'),(147,187,'yes','no','no','hindi'),(148,188,'yes','no','no','hindi'),(149,189,'yes','no','no','english'),(150,190,'yes','no','no','hindi'),(151,191,'yes','no','no','hindi'),(152,192,'yes','no','no','hindi'),(153,193,'yes','no','no','hindi');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
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
