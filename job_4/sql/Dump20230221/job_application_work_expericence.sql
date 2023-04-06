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
-- Table structure for table `work_expericence`
--

DROP TABLE IF EXISTS `work_expericence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_expericence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `basic_id` int DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basic_id_idx` (`basic_id`),
  CONSTRAINT `basic_id` FOREIGN KEY (`basic_id`) REFERENCES `basic_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_expericence`
--

LOCK TABLES `work_expericence` WRITE;
/*!40000 ALTER TABLE `work_expericence` DISABLE KEYS */;
INSERT INTO `work_expericence` VALUES (1,56,'xyz','devloper','2023-02-01','2023-02-08'),(2,57,'xyz','mafrketing','2023-01-31','2023-02-08'),(3,58,'xyz','finance','2023-02-01','2023-02-02'),(4,58,'abc','finance','2023-02-17','2023-02-24'),(5,59,'xyz','mafrketing','2022-09-28','2022-12-06'),(6,59,'abc','marketing','2022-11-28','2023-02-16'),(7,60,'xyz','hr','2023-01-31','2023-02-16'),(8,61,'xyz','finance','2017-01-17','2020-01-17'),(9,61,'abc','finance','2020-01-18','2023-02-17'),(10,62,'xyz','devloper','2018-01-31','2023-02-17'),(11,63,'xyz','devloper','2023-02-01','2023-02-17'),(12,64,'xyz','marketing','2023-02-01','2023-02-09'),(13,65,'pqr','devloper','2023-02-01','2023-02-17'),(14,66,'bbc','marketing','2020-01-17','2021-02-17'),(15,66,'abb','marketing','2022-06-16','2023-02-17'),(16,67,'khj','hr','2023-02-01','2023-02-16'),(17,68,'esparkbiz','devloper','2023-01-23','2026-11-08'),(18,69,'ppp','finance','2023-01-30','2023-02-17'),(19,70,'xyz','hr','2009-12-28','2023-02-17'),(20,71,'lll','devloper','2011-12-27','2023-02-17'),(21,72,'xyz','devloper','2023-02-02','2023-02-17'),(22,73,'khj','marketing','2023-02-01','2023-02-17'),(23,74,'plm','hr','2023-02-02','2023-02-17'),(24,76,'xyz','devloper','2023-02-01','2023-02-17'),(25,77,'esparkbiz','devloper','2023-02-01','2023-02-17'),(26,78,'esparkbiz','hr','2023-02-01','2023-02-17'),(27,79,'xyz','devloper','2023-02-01','2023-02-17'),(28,80,'xyz','devloper','2023-02-01','2023-02-17'),(29,81,'xyz','devloper','2023-01-31','2023-02-16'),(30,82,'xyz','devloper','2023-01-31','2023-02-16'),(31,83,'xyz','devloper','2023-01-31','2023-02-16'),(32,84,'xyz','devloper','2023-02-01','2023-02-08'),(33,85,'xyz','devloper','2023-02-01','2023-02-08'),(34,86,'xyz','devloper','2023-02-01','2023-02-08'),(35,87,'xyz','devloper','2023-02-01','2023-02-08'),(36,88,'xyz','devloper','2023-02-01','2023-02-08'),(37,89,'xyz','devloper','2023-02-01','2023-02-08'),(38,90,'xyz','devloper','2023-02-01','2023-02-08'),(39,91,'xyz','devloper','2023-02-01','2023-02-08'),(40,92,'xyz','devloper','2023-02-01','2023-02-08'),(41,93,'xyz','devloper','2023-02-01','2023-02-08'),(42,94,'xyz','devloper','2023-02-01','2023-02-08'),(43,95,'xyz','devloper','2023-02-01','2023-02-08'),(44,96,'xyz','devloper','2023-02-01','2023-02-08'),(45,97,'xyz','devloper','2023-02-01','2023-02-08'),(46,98,'xyz','devloper','2023-02-01','2023-02-08'),(47,99,'xyz','devloper','2023-02-01','2023-02-08'),(48,100,'xyz','devloper','2023-02-01','2023-02-08'),(49,101,'xyz','devloper','2023-02-01','2023-02-08'),(50,102,'xyz','devloper','2023-02-01','2023-02-08'),(51,103,'xyz','devloper','2023-02-01','2023-02-08'),(52,104,'xyz','devloper','2023-02-01','2023-02-08'),(53,105,'xyz','devloper','2023-02-01','2023-02-08'),(54,106,'xyz','devloper','2023-02-01','2023-02-08'),(55,107,'xyz','devloper','2023-02-01','2023-02-08'),(56,108,'xyz','devloper','2023-02-01','2023-02-08'),(57,109,'xyz','devloper','2023-02-01','2023-02-08'),(58,110,'xyz','devloper','2023-02-01','2023-02-08'),(59,111,'xyz','devloper','2023-02-01','2023-02-08'),(60,112,'xyz','devloper','2023-02-01','2023-02-08'),(61,113,'xyz','devloper','2023-02-01','2023-02-08'),(62,114,'xyz','devloper','2023-02-01','2023-02-08'),(63,115,'xyz','devloper','2023-02-01','2023-02-08'),(64,116,'xyz','devloper','2023-02-01','2023-02-08'),(65,117,'xyz','devloper','2023-02-01','2023-02-08'),(66,118,'xyz','devloper','2023-02-01','2023-02-08'),(67,119,'xyz','devloper','2023-02-01','2023-02-08'),(68,120,'xyz','devloper','2023-02-01','2023-02-08'),(69,121,'xyz','devloper','2023-02-01','2023-02-08'),(70,122,'xyz','devloper','2023-02-01','2023-02-08'),(71,123,'xyz','devloper','2023-02-01','2023-02-08'),(72,124,'xyz','devloper','2023-02-01','2023-02-08'),(73,125,'xyz','devloper','2023-02-01','2023-02-08'),(74,126,'xyz','devloper','2023-02-01','2023-02-08'),(75,127,'xyz','devloper','2023-02-01','2023-02-08'),(76,128,'xyz','devloper','2023-02-01','2023-02-08'),(77,129,'xyz','devloper','2023-02-01','2023-02-08'),(78,130,'xyz','devloper','2023-02-01','2023-02-08'),(79,131,'xyz','devloper','2023-02-01','2023-02-08'),(80,132,'xyz','devloper','2023-02-01','2023-02-08'),(81,133,'xyz','devloper','2023-02-01','2023-02-08'),(82,134,'xyz','devloper','2023-02-01','2023-02-20'),(83,135,'xyz','devloper','2023-02-01','2023-02-20'),(84,136,'xyz','devloper','2023-02-01','2023-02-20'),(85,137,'xyz','devloper','2023-02-01','2023-02-20'),(86,138,'xyz','devloper','2023-02-01','2023-02-20'),(87,139,'xyz','devloper','2023-02-01','2023-02-20'),(88,140,'xyz','devloper','2023-02-01','2023-02-20'),(89,141,'xyz','devloper','2023-02-01','2023-02-20'),(90,142,'xyz','devloper','2023-02-01','2023-02-20'),(91,143,'xyz','devloper','2023-02-01','2023-02-20'),(92,144,'xyz','devloper','2023-02-01','2023-02-20'),(93,145,'xyz','devloper','2023-02-01','2023-02-20'),(94,146,'xyz','devloper','2023-02-01','2023-02-20'),(95,147,'xyz','devloper','2023-02-01','2023-02-20'),(96,148,'xyz','devloper','2023-02-01','2023-02-20'),(97,149,'xyz','devloper','2023-02-01','2023-02-20'),(98,150,'xyz','devloper','2023-02-01','2023-02-20'),(99,151,'xyz','devloper','2023-02-01','2023-02-20'),(100,152,'xyz','devloper','2023-02-01','2023-02-20'),(101,153,'xyz','devloper','2023-02-01','2023-02-20'),(102,154,'xyz','devloper','2023-02-01','2023-02-20'),(103,155,'xyz','devloper','2023-02-01','2023-02-20'),(104,156,'xyz','devloper','2023-02-01','2023-02-20'),(105,157,'xyz','devloper','2023-02-01','2023-02-20'),(106,158,'xyz','devloper','2023-02-01','2023-02-20'),(107,159,'xyz','devloper','2023-02-01','2023-02-20'),(108,160,'xyz','devloper','2023-02-01','2023-02-20'),(109,161,'xyz','devloper','2023-02-01','2023-02-20'),(110,162,'xyz','devloper','2023-02-01','2023-02-20'),(111,163,'xyz','devloper','2023-02-01','2023-02-20'),(112,164,'xyz','devloper','2023-02-01','2023-02-20'),(113,165,'xyz','devloper','2023-02-01','2023-02-20'),(114,166,'xyz','devloper','2023-02-01','2023-02-20'),(115,167,'xyz','devloper','2023-02-01','2023-02-20'),(116,168,'xyz','devloper','2023-02-01','2023-02-20'),(117,169,'xyz','devloper','2023-02-01','2023-02-20'),(118,170,'xyz','devloper','2023-02-01','2023-02-20'),(119,171,'xyz','devloper','2023-02-01','2023-02-20'),(120,172,'xyz','devloper','2023-02-01','2023-02-20'),(121,173,'xyz','devloper','2023-02-01','2023-02-20'),(122,174,'xyz','devloper','2023-02-01','2023-02-20'),(123,175,'xyz','devloper','2023-02-01','2023-02-20'),(124,176,'xyz','devloper','2023-02-01','2023-02-20'),(125,177,'xyz','devloper','2023-02-01','2023-02-20'),(126,178,'xyz','devloper','2023-02-01','2023-02-20'),(127,179,'xyz','devloper','2023-02-01','2023-02-20'),(128,180,'xyz','devloper','2023-02-01','2023-02-20'),(129,181,'xyz','devloper','2023-02-01','2023-02-20'),(130,182,'xyz','devloper','2023-02-01','2023-02-20'),(131,183,'xyz','devloper','2023-02-01','2023-02-20'),(132,184,'xyz','devloper','2023-02-01','2023-02-20'),(133,185,'xyz','devloper','2023-02-01','2023-02-20'),(134,186,'xyz','devloper','2023-02-01','2023-02-20'),(135,187,'xyz','devloper','2023-02-01','2023-02-20'),(136,188,'xyz','devloper','2023-02-01','2023-02-15'),(137,189,'bbc','devloper','2023-02-01','2023-02-20'),(138,190,'pqr','finance','2023-02-01','2023-02-20'),(139,191,'khj','finance','2023-02-01','2023-02-20'),(140,192,'khj','finance','2023-02-01','2023-02-20'),(141,193,'khj','finance','2023-02-01','2023-02-20');
/*!40000 ALTER TABLE `work_expericence` ENABLE KEYS */;
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
