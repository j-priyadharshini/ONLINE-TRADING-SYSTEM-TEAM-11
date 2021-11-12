-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinetrading
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `symbol` mediumtext,
  `shares` int DEFAULT NULL,
  `current_price` float DEFAULT NULL,
  `name_company` text,
  `purchased_on` date DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES ('A',2,155.26,'Agilent Technologies Inc.','2021-10-28',16,310.52),('w',2,230.13,'Wayfair Inc - Class A','2021-10-28',12,460.26),('w',1,230.13,'Wayfair Inc - Class A','2021-10-28',17,230.13),('a',1,155.26,'Agilent Technologies Inc.','2021-10-28',20,155.26),('p',2,8.38,'','2021-10-29',21,8.38),('p',1,8.38,'','2021-10-29',21,8.38),('A',1,156.41,'Agilent Technologies Inc.','2021-10-29',8,156.41),('AA',1,46.45,'Alcoa Corp','2021-10-29',22,46.45),('AA',1,46.45,'Alcoa Corp','2021-10-29',23,46.45),('a',1,156.41,'Agilent Technologies Inc.','2021-10-29',8,156.41),('w',1,246.22,'Wayfair Inc - Class A','2021-11-06',8,246.22),('aa',1,47.86,'Alcoa Corp','2021-11-06',8,47.86),('aa',1,47.86,'Alcoa Corp','2021-11-08',8,47.86),('aa',1,47.86,'Alcoa Corp','2021-11-08',8,47.86),('aa',1,47.86,'Alcoa Corp','2021-11-08',8,47.86);
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `symbol` mediumtext,
  `shares` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `transacted_on` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES ('w',2,236.47,'2021-10-25 17:57:21',12),('w',-1,236.47,'2021-10-25 17:58:02',12),('w',-1,230.13,'2021-10-28 08:51:29',12),('A',3,155.26,'2021-10-28 09:35:01',16),('A',-1,155.26,'2021-10-28 09:35:15',16),('w',2,230.13,'2021-10-28 12:22:09',12),('w',2,230.13,'2021-10-28 13:43:40',17),('w',-1,230.13,'2021-10-28 13:43:51',17),('a',2,155.26,'2021-10-28 17:38:39',20),('a',-1,155.26,'2021-10-28 17:39:11',20),('p',2,8.38,'2021-10-29 08:09:52',21),('p',1,8.38,'2021-10-29 08:10:11',21),('aa',2,46.45,'2021-10-29 08:11:15',21),('aa',-2,46.45,'2021-10-29 08:11:46',21),('A',2,155.76,'2021-10-29 08:29:26',8),('A',-1,155.76,'2021-10-29 08:29:58',8),('AA',2,46.45,'2021-10-29 08:40:45',22),('AA',-1,46.45,'2021-10-29 08:40:59',22),('AA',2,46.45,'2021-10-29 10:00:49',23),('AA',-1,46.45,'2021-10-29 10:01:17',23),('a',2,155.76,'2021-10-29 11:57:24',8),('w',1,246.22,'2021-11-06 20:09:07',8),('aa',1,47.86,'2021-11-06 20:52:45',8),('aa',1,47.86,'2021-11-08 16:52:09',8),('aa',1,47.86,'2021-11-08 16:52:11',8),('aa',1,47.86,'2021-11-08 16:53:28',8),('A',-1,156.41,'2021-11-08 16:54:17',8);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` mediumtext NOT NULL,
  `password` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `cash` decimal(10,0) NOT NULL DEFAULT '10000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'priya','priya','j.priyadharshini2002@gmail.com',9250),(30,'s','s','j.priyadharshini2002@gmail.com',10000);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 21:47:31
