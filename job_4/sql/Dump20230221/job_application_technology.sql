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
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bas_id` int DEFAULT NULL,
  `technology_name` varchar(45) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bas_id_idx` (`bas_id`),
  CONSTRAINT `bas_id` FOREIGN KEY (`bas_id`) REFERENCES `basic_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,56,'node','beginner'),(2,56,'java','moderate'),(3,57,'php','beginner'),(4,57,'node','beginner'),(5,58,'php','beginner'),(6,58,'java','beginner'),(7,59,'php','beginner'),(8,59,'node','beginner'),(9,59,'java','beginner'),(10,60,'php','beginner'),(11,60,'java','beginner'),(12,61,'node','beginner'),(13,61,'java','beginner'),(14,62,'node','moderate'),(15,62,'java','expert'),(16,63,'node','expert'),(17,63,'java','beginner'),(18,64,'php','beginner'),(19,64,'node','beginner'),(20,65,'php','expert'),(21,65,'node','expert'),(22,66,'node','beginner'),(23,66,'java','beginner'),(24,67,'php','beginner'),(25,67,'java','beginner'),(26,68,'php','moderate'),(27,68,'node','moderate'),(28,68,'java','expert'),(29,69,'php','beginner'),(30,69,'node','beginner'),(31,70,'php','beginner'),(32,70,'java','beginner'),(33,71,'php','moderate'),(34,71,'node','moderate'),(35,71,'java','expert'),(36,72,'java','beginner'),(37,72,'.net','beginner'),(38,73,'php','beginner'),(39,73,'.net','beginner'),(40,74,'java','beginner'),(41,74,'.net','beginner'),(42,76,'node','moderate'),(43,76,'java','moderate'),(44,77,'node','moderate'),(45,77,'java','beginner'),(46,77,'.net','beginner'),(47,78,'node','moderate'),(48,78,'java','beginner'),(49,79,'node','beginner'),(50,79,'java','moderate'),(51,80,'node','beginner'),(52,80,'java','moderate'),(53,81,'node','beginner'),(54,81,'java','beginner'),(55,82,'node','beginner'),(56,82,'java','beginner'),(57,83,'node','beginner'),(58,83,'java','beginner'),(59,84,'php','beginner'),(60,84,'java','beginner'),(61,85,'php','beginner'),(62,85,'java','beginner'),(63,86,'php','beginner'),(64,86,'java','beginner'),(65,87,'php','beginner'),(66,87,'java','beginner'),(67,88,'php','beginner'),(68,88,'java','beginner'),(69,89,'php','beginner'),(70,89,'java','beginner'),(71,90,'php','beginner'),(72,90,'java','beginner'),(73,91,'php','beginner'),(74,91,'java','beginner'),(75,92,'php','beginner'),(76,92,'java','beginner'),(77,93,'php','beginner'),(78,93,'java','beginner'),(79,94,'php','beginner'),(80,94,'java','beginner'),(81,95,'php','beginner'),(82,95,'java','beginner'),(83,96,'php','beginner'),(84,96,'java','beginner'),(85,97,'php','beginner'),(86,97,'java','beginner'),(87,98,'php','beginner'),(88,98,'java','beginner'),(89,99,'php','beginner'),(90,99,'java','beginner'),(91,101,'php','beginner'),(92,101,'java','beginner'),(93,102,'php','beginner'),(94,102,'java','beginner'),(95,103,'php','beginner'),(96,103,'java','beginner'),(97,104,'php','beginner'),(98,104,'java','beginner'),(99,105,'php','beginner'),(100,105,'java','beginner'),(101,106,'php','beginner'),(102,106,'java','beginner'),(103,107,'php','beginner'),(104,107,'java','beginner'),(105,108,'php','beginner'),(106,108,'java','beginner'),(107,109,'php','beginner'),(108,109,'java','beginner'),(109,110,'php','beginner'),(110,110,'java','beginner'),(111,111,'php','beginner'),(112,111,'java','beginner'),(113,112,'php','beginner'),(114,112,'java','beginner'),(115,113,'php','beginner'),(116,113,'java','beginner'),(117,114,'php','beginner'),(118,114,'java','beginner'),(119,115,'php','beginner'),(120,115,'java','beginner'),(121,116,'php','beginner'),(122,116,'java','beginner'),(123,117,'php','beginner'),(124,117,'java','beginner'),(125,118,'php','beginner'),(126,118,'java','beginner'),(127,119,'php','beginner'),(128,119,'java','beginner'),(129,120,'php','beginner'),(130,120,'java','beginner'),(131,121,'php','beginner'),(132,121,'java','beginner'),(133,122,'php','beginner'),(134,122,'java','beginner'),(135,123,'php','beginner'),(136,123,'java','beginner'),(137,124,'php','beginner'),(138,124,'java','beginner'),(139,125,'php','beginner'),(140,125,'java','beginner'),(141,126,'php','beginner'),(142,126,'java','beginner'),(143,127,'php','beginner'),(144,127,'java','beginner'),(145,128,'php','beginner'),(146,128,'java','beginner'),(147,129,'php','beginner'),(148,129,'java','beginner'),(149,130,'php','beginner'),(150,130,'java','beginner'),(151,131,'php','beginner'),(152,131,'java','beginner'),(153,132,'php','beginner'),(154,132,'java','beginner'),(155,133,'php','beginner'),(156,133,'java','beginner'),(157,134,'php','beginner'),(158,134,'java','beginner'),(159,135,'php','beginner'),(160,135,'java','beginner'),(161,136,'php','beginner'),(162,136,'java','beginner'),(163,137,'php','beginner'),(164,137,'java','beginner'),(165,138,'php','beginner'),(166,138,'java','beginner'),(167,139,'php','beginner'),(168,139,'java','beginner'),(169,140,'php','beginner'),(170,140,'java','beginner'),(171,141,'php','beginner'),(172,141,'java','beginner'),(173,142,'php','beginner'),(174,142,'java','beginner'),(175,143,'php','beginner'),(176,143,'java','beginner'),(177,144,'php','beginner'),(178,144,'java','beginner'),(179,145,'php','beginner'),(180,145,'java','beginner'),(181,146,'php','beginner'),(182,146,'java','beginner'),(183,147,'php','beginner'),(184,147,'java','beginner'),(185,148,'php','beginner'),(186,148,'java','beginner'),(187,149,'php','beginner'),(188,149,'java','beginner'),(189,150,'php','beginner'),(190,150,'java','beginner'),(191,151,'php','beginner'),(192,151,'java','beginner'),(193,152,'php','beginner'),(194,152,'java','beginner'),(195,153,'php','beginner'),(196,153,'java','beginner'),(197,154,'php','beginner'),(198,154,'java','beginner'),(199,155,'php','beginner'),(200,155,'java','beginner'),(201,156,'php','beginner'),(202,156,'java','beginner'),(203,157,'php','beginner'),(204,157,'java','beginner'),(205,158,'php','beginner'),(206,158,'java','beginner'),(207,159,'php','beginner'),(208,159,'java','beginner'),(209,160,'php','beginner'),(210,160,'java','beginner'),(211,161,'php','beginner'),(212,161,'java','beginner'),(213,162,'php','beginner'),(214,162,'java','beginner'),(215,163,'php','beginner'),(216,163,'java','beginner'),(217,164,'php','beginner'),(218,164,'java','beginner'),(219,165,'php','beginner'),(220,165,'java','beginner'),(221,166,'php','beginner'),(222,166,'java','beginner'),(223,167,'php','beginner'),(224,167,'java','beginner'),(225,168,'php','beginner'),(226,168,'java','beginner'),(227,169,'php','beginner'),(228,169,'java','beginner'),(229,170,'php','beginner'),(230,170,'java','beginner'),(231,171,'php','beginner'),(232,171,'java','beginner'),(233,172,'php','beginner'),(234,172,'java','beginner'),(235,173,'php','beginner'),(236,173,'java','beginner'),(237,174,'php','beginner'),(238,174,'java','beginner'),(239,175,'php','beginner'),(240,175,'java','beginner'),(241,176,'php','beginner'),(242,176,'java','beginner'),(243,177,'php','beginner'),(244,177,'java','beginner'),(245,178,'php','beginner'),(246,178,'java','beginner'),(247,179,'php','beginner'),(248,179,'java','beginner'),(249,180,'php','beginner'),(250,180,'java','beginner'),(251,181,'php','beginner'),(252,181,'java','beginner'),(253,182,'php','beginner'),(254,182,'java','beginner'),(255,183,'php','beginner'),(256,183,'java','beginner'),(257,184,'php','beginner'),(258,184,'java','beginner'),(259,185,'php','beginner'),(260,185,'java','beginner'),(261,186,'php','beginner'),(262,186,'java','beginner'),(263,187,'php','beginner'),(264,187,'java','beginner'),(265,188,'php','beginner'),(266,188,'.net','beginner'),(267,189,'php','beginner'),(268,189,'java','beginner'),(269,190,'php','beginner'),(270,190,'.net','beginner'),(271,191,'php','beginner'),(272,191,'node','beginner'),(273,192,'php','beginner'),(274,192,'node','beginner'),(275,193,'php','beginner'),(276,193,'node','beginner');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
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
