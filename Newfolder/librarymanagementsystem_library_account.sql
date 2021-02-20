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
-- Table structure for table `library_account`
--

DROP TABLE IF EXISTS `library_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_account` (
  `passcode` varchar(10) DEFAULT NULL,
  `login_id` varchar(255) NOT NULL,
  `fine_amt` int DEFAULT NULL,
  `mgr_id` int NOT NULL,
  `is_student` varchar(45) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`login_id`),
  KEY `mgr_id` (`mgr_id`),
  CONSTRAINT `library_account_ibfk_1` FOREIGN KEY (`mgr_id`) REFERENCES `library_manager` (`mgr_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_account`
--

LOCK TABLES `library_account` WRITE;
/*!40000 ALTER TABLE `library_account` DISABLE KEYS */;
INSERT INTO `library_account` VALUES ('924','924',0,0,'true'),('22@3','a1189',50,44,'true'),('45&5','b347',30,43,'true'),('s#44','bi347',90,45,'true'),('344$','c456',100,43,'true'),('kk642','kk642',0,0,'true'),('kk995','kk995',0,0,'true'),('o088','l456',45,44,'true'),('ma265','ma265',0,0,'true'),('ma528','ma528',0,0,'true'),('dgh4^','s976',122,46,'true');
/*!40000 ALTER TABLE `library_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-05  1:06:58
