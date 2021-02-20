-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: librarymanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `uni_faculty`
--

DROP TABLE IF EXISTS `uni_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uni_faculty` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_fname` varchar(255) DEFAULT NULL,
  `f_lname` varchar(255) DEFAULT NULL,
  `f_department` varchar(255) DEFAULT NULL,
  `f_designation` varchar(255) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  `f_contact` int DEFAULT NULL,
  `login_id` varchar(233) NOT NULL,
  PRIMARY KEY (`f_id`),
  KEY `login_id` (`login_id`),
  CONSTRAINT `uni_faculty_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `library_account` (`login_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=990 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni_faculty`
--

LOCK TABLES `uni_faculty` WRITE;
/*!40000 ALTER TABLE `uni_faculty` DISABLE KEYS */;
INSERT INTO `uni_faculty` VALUES (233,'Robert','Peter','Prose','Professor','Glasgow, UK',123456,'l456'),(988,'Sam','Claflin','literature','Dean','Nottingham, UK',123455,'bi347');
/*!40000 ALTER TABLE `uni_faculty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-05  1:06:59
