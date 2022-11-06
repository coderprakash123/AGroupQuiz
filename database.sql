-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: db_quiz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tbl_options`
--

DROP TABLE IF EXISTS `tbl_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_options` (
  `q_number` int NOT NULL AUTO_INCREMENT,
  `op1` varchar(255) DEFAULT NULL,
  `op2` varchar(255) DEFAULT NULL,
  `op3` varchar(255) DEFAULT NULL,
  `op4` varchar(255) DEFAULT NULL,
  KEY `q_number` (`q_number`),
  CONSTRAINT `tbl_options_ibfk_1` FOREIGN KEY (`q_number`) REFERENCES `tbl_questions` (`q_number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_options`
--

LOCK TABLES `tbl_options` WRITE;
/*!40000 ALTER TABLE `tbl_options` DISABLE KEYS */;
INSERT INTO `tbl_options` VALUES (1,'dynamic','secure','use of pointers','robust'),(2,'jvm','jre','jdk','jdb'),(3,'int','string','boolean','char'),(4,'stack memory','string memory','heap memory','random storage'),(5,'polymorphism','composition','abstraction','inheritance'),(6,'runnable interface','marker interface','functional interface','abstract'),(7,'java.sql','java.swing','java.lang','java.util'),(8,'19','16','10','20'),(9,'.js','.java','.class','.text'),(10,'system','static','main','object');
/*!40000 ALTER TABLE `tbl_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_questions`
--

DROP TABLE IF EXISTS `tbl_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_questions` (
  `q_number` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `correct_option` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`q_number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_questions`
--

LOCK TABLES `tbl_questions` WRITE;
/*!40000 ALTER TABLE `tbl_questions` DISABLE KEYS */;
INSERT INTO `tbl_questions` VALUES (1,'Which of the following is not a java feature?','use of pointers','c'),(2,'___ is used to find and fix bugs in the Java programs.','jdb','d'),(3,'What is the return type of the hashCode() method in the Object class?','int','a'),(4,'In which memory a String is stored, when we create a string using new operator?','heap memory','c'),(5,'Which of the following is not an OOPS concept in Java?','composition','b'),(6,'An interface with no fields or methods is known as a ___.','marker interface','b'),(7,'Which package contains the Random class?','java.util','d'),(8,'What is the initial quantity of the ArrayList list?','10','c'),(9,'What is the extension of compiled java classes?','.class','c'),(10,'Which of the following is a reserved keyword in Java?','static','b');
/*!40000 ALTER TABLE `tbl_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_studentrecord`
--

DROP TABLE IF EXISTS `tbl_studentrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_studentrecord` (
  `student_id` int NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `marks` int DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_studentrecord`
--

LOCK TABLES `tbl_studentrecord` WRITE;
/*!40000 ALTER TABLE `tbl_studentrecord` DISABLE KEYS */;
INSERT INTO `tbl_studentrecord` VALUES (101,'Prakash',6,'B'),(222,'Rutuja',4,'fail'),(546,'Samapt',5,'C'),(500,'Mahesh',6,'B'),(974,'ABC',6,'B'),(444,'xyz',8,'A'),(123,'aaa',6,'B'),(888,'pqr',10,'A');
/*!40000 ALTER TABLE `tbl_studentrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 17:45:19
