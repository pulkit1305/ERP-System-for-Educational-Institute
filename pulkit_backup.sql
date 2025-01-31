-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: pulkit
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Username` varchar(1000) DEFAULT NULL,
  `Password` varchar(1000) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Raj Kumar','Raj@123',1,NULL),('Rahul Singh','Rahul@123',2,NULL),('Raju sharma','Raju@123',3,NULL),('Manish','Manish@123',4,'Manish@gmail.com'),('rax','Rax@123',5,'rex@gmail.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admissions`
--

DROP TABLE IF EXISTS `admissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `date_of_admission` date DEFAULT NULL,
  `amount_paid` int DEFAULT '0',
  `reference_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference_number` (`reference_number`),
  KEY `course_id` (`course_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `admissions_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admissions`
--

LOCK TABLES `admissions` WRITE;
/*!40000 ALTER TABLE `admissions` DISABLE KEYS */;
INSERT INTO `admissions` VALUES (78,108,3,'2024-12-05',10000,'REF2024120565691000'),(79,108,2,'2024-12-05',0,'BIL2024120582511000'),(80,108,4,'2024-12-05',0,'BIL202412056331000'),(81,108,1,'2024-12-05',0,'BIL2024120555251000'),(82,109,2,'2024-12-06',1000,'REF2024120618971000'),(83,109,1,'2024-12-06',1000,'REF202412066697'),(84,109,4,'2024-12-06',10,'REF202412066209'),(85,109,3,'2024-12-06',2,'REF202412062641'),(86,110,1,'2024-12-06',22,'REF2024120678981000'),(87,110,2,'2024-12-06',89,'REF202412067283'),(88,110,3,'2024-12-06',450,'REF202412065751'),(89,110,4,'2024-12-06',8753,'REF202412061706'),(90,111,1,'2024-12-06',444,'REF2024120684521000'),(91,111,2,'2024-12-06',405,'REF202412067691'),(92,111,4,'2024-12-06',4,'REF202412069599'),(93,111,3,'2024-12-06',999,'REF202412064565'),(94,112,1,'2024-12-06',16,'REF2024120657231000'),(95,112,2,'2024-12-06',17,'REF202412062387'),(96,112,3,'2024-12-06',19,'REF202412066489'),(97,112,4,'2024-12-06',20,'REF202412067780'),(98,113,1,'2024-12-06',2011,'REF2024120673521000'),(99,113,2,'2024-12-06',2011,'REF202412065533'),(100,113,3,'2024-12-06',3111,'REF202412061227'),(101,114,1,'2024-12-06',210,'REF2024120627481000'),(102,114,2,'2024-12-06',201,'REF202412069102'),(103,115,1,'2024-12-06',1010,'REF2024120671661000'),(104,115,2,'2024-12-06',64,'REF202412065039'),(105,115,3,'2024-12-06',340,'REF202412066970'),(106,116,3,'2024-12-06',3401,'REF2024120652891000'),(107,116,1,'2024-12-06',2060,'REF202412065213'),(108,117,4,'2024-12-07',10000,'REF202412078731000'),(109,117,1,'2024-12-07',7001,'REF202412079873'),(110,118,3,'2024-12-07',12012,'REF2024120747221000'),(111,118,4,'2024-12-07',26001,'REF202412075887'),(112,119,1,'2024-12-07',3003,'REF202412072621000'),(113,119,3,'2024-12-07',6001,'REF202412078714'),(114,119,2,'2024-12-07',60,'REF202412072722'),(115,119,4,'2024-12-07',600,'REF202412077786'),(116,137,2,'2024-12-07',0,'REF2024120763731000'),(117,139,3,'2024-12-07',2222,'REF2024120749931000'),(118,140,3,'2024-12-07',5,'REF2024120739731000'),(119,140,1,'2024-12-07',90,'REF202412073055'),(120,140,2,'2024-12-07',40,'REF202412077632'),(121,140,4,'2024-12-08',2000,'REF20241208285'),(122,140,4,'2024-12-08',1000,'REF202412087808'),(123,157,1,'2024-12-08',1001,'REF202412086072'),(124,157,2,'2024-12-08',1234,'REF20241208505'),(125,157,3,'2024-12-08',2001,'REF202412086770'),(126,157,4,'2024-12-08',0,'REF202412083497'),(127,157,5,'2024-12-08',0,'REF202412082018'),(128,117,3,'2024-12-08',2,'REF202412087645'),(129,158,1,'2024-12-08',0,'REF202412081081'),(130,159,2,'2024-12-08',100,'REF202412084715'),(131,139,2,'2024-12-09',0,'REF202412097279'),(132,160,5,'2024-12-14',5000,'REF202412144674');
/*!40000 ALTER TABLE `admissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `database_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Company A','pulkit','2024-12-09 20:59:27'),(2,'Company B','company_b_db','2024-12-09 20:59:27'),(3,'Company C','company_c_db','2024-12-09 20:59:27');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_users`
--

DROP TABLE IF EXISTS `company_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `company_users_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_users`
--

LOCK TABLES `company_users` WRITE;
/*!40000 ALTER TABLE `company_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL DEFAULT '1',
  `name` varchar(1000) DEFAULT NULL,
  `description` text,
  `fees` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'JAVA','OOPs',8000),(2,'React','should know javascript',2000),(3,'JAVA+REACT','JAVA is used as a backend and react is used for a front end \n',20000),(4,'DATA ANALYSIS','In Data Analysis we have  Power BI ,Tabalue etc.',30000),(5,'Cloud Computing ','Cloud computing is a way to access IT resources, like storage, computing power, and databases, over the internet on a pay-as-you-go basis.',45000);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `id` int NOT NULL,
  `username` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (1,'pulkit','sharma','2024-11-18 08:02:43'),(2,'Raju','R23@123','2024-11-18 08:02:43'),(3,'Ram','Rm32@165','2024-11-18 08:02:43'),(4,'ravi kan','Ravi@48555','2024-11-18 08:02:43'),(5,'Rahul kumar','rk@123','2024-11-17 08:06:33');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `enrollment_date` date DEFAULT NULL,
  `admission_id` int DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  KEY `admission_id` (`admission_id`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `enrollments_ibfk_3` FOREIGN KEY (`admission_id`) REFERENCES `admissions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,108,3,'2024-12-05',78),(2,108,3,'2024-12-05',78),(3,108,2,'2024-12-05',79),(4,108,4,'2024-12-05',80),(5,108,4,'2024-12-05',80),(6,108,1,'2024-12-05',81),(7,109,2,'2024-12-06',82),(8,109,1,'2024-12-06',83),(9,109,4,'2024-12-06',84),(10,109,3,'2024-12-06',85),(11,110,1,'2024-12-06',86),(12,110,2,'2024-12-06',87),(13,110,3,'2024-12-06',88),(14,110,4,'2024-12-06',89),(15,111,1,'2024-12-06',90),(16,111,2,'2024-12-06',91),(17,111,4,'2024-12-06',92),(18,111,2,'2024-12-06',91),(19,111,3,'2024-12-06',93),(20,112,1,'2024-12-06',94),(21,112,2,'2024-12-06',95),(22,112,3,'2024-12-06',96),(23,112,4,'2024-12-06',97),(24,113,1,'2024-12-06',98),(25,113,2,'2024-12-06',99),(26,113,3,'2024-12-06',100),(27,114,1,'2024-12-06',101),(28,114,2,'2024-12-06',102),(29,115,1,'2024-12-06',103),(30,115,2,'2024-12-06',104),(31,115,3,'2024-12-06',105),(32,113,1,'2024-12-06',98),(33,116,3,'2024-12-06',106),(34,116,1,'2024-12-06',107),(35,117,4,'2024-12-07',108),(36,117,1,'2024-12-07',109),(37,118,3,'2024-12-07',110),(38,118,4,'2024-12-07',111),(39,119,1,'2024-12-07',112),(40,119,3,'2024-12-07',113),(41,119,2,'2024-12-07',114),(42,119,4,'2024-12-07',115),(43,137,2,'2024-12-07',116),(44,139,3,'2024-12-07',117),(45,140,3,'2024-12-07',118),(46,140,1,'2024-12-07',119),(47,140,2,'2024-12-07',120),(48,140,4,'2024-12-08',121),(49,140,4,'2024-12-08',122),(50,157,1,'2024-12-08',123),(51,157,2,'2024-12-08',124),(52,157,3,'2024-12-08',125),(53,157,4,'2024-12-08',126),(54,157,5,'2024-12-08',127),(55,117,3,'2024-12-08',128),(56,158,1,'2024-12-08',129),(57,159,2,'2024-12-08',130),(58,139,2,'2024-12-09',131),(59,160,5,'2024-12-14',132);
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_number` varchar(20) NOT NULL,
  `user_id` int NOT NULL,
  `admission_id` int NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_method` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bill_number` (`bill_number`),
  KEY `user_id` (`user_id`),
  KEY `admission_id` (`admission_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`admission_id`) REFERENCES `admissions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'BIL2024120578601000',108,78,10000.00,'2024-12-04 18:30:00',NULL),(2,'BIL2024120658751000',109,82,1000.00,'2024-12-05 18:30:00',NULL),(3,'BIL2024120630951000',110,86,22.00,'2024-12-05 18:30:00',NULL),(4,'BIL2024120681841000',110,86,20000.00,'2024-12-05 18:49:56',NULL),(5,'BIL2024120641021000',110,86,30000.00,'2024-12-05 18:50:30',NULL),(6,'BIL202412063001000',111,90,401.00,'2024-12-05 18:30:00',NULL),(7,'BIL2024120640671000',111,90,1002.00,'2024-12-05 18:59:21',NULL),(8,'BIL2024120657031000',111,90,4.00,'2024-12-05 20:14:03',NULL),(9,'BIL2024120658151000',111,90,888.00,'2024-12-05 20:14:35',NULL),(10,'BIL2024120614001000',111,90,1038.00,'2024-12-05 20:16:29',NULL),(11,'BIL20241206121000',112,94,16.00,'2024-12-05 18:30:00',NULL),(12,'BIL2024120648481000',112,94,17.00,'2024-12-05 20:17:48',NULL),(13,'BIL2024120612111000',112,94,19.00,'2024-12-05 20:18:16',NULL),(14,'BIL2024120672851000',112,94,20.00,'2024-12-05 20:18:32',NULL),(15,'BIL2024120627951000',113,98,2001.00,'2024-12-05 18:30:00',NULL),(16,'BIL2024120636541000',113,99,2012.00,'2024-12-05 20:44:49',NULL),(17,'BIL2024120619441000',113,100,5103.00,'2024-12-05 20:45:12',NULL),(18,'BIL202412066061000',114,101,210.00,'2024-12-05 18:30:00',NULL),(19,'BIL2024120645881000',114,102,201.00,'2024-12-05 21:05:22',NULL),(20,'BIL2024120689951000',115,103,1010.00,'2024-12-05 18:30:00',NULL),(21,'BIL2024120648321000',115,104,64.00,'2024-12-06 05:45:34',NULL),(22,'BIL2024120672541000',115,105,340.00,'2024-12-06 05:52:29',NULL),(23,'BIL20241206331000',113,98,2011.00,'2024-12-06 05:59:30',NULL),(24,'BIL2024120675791000',116,106,3401.00,'2024-12-05 18:30:00',NULL),(25,'BIL202412063021000',116,107,2060.00,'2024-12-06 07:22:37',NULL),(26,'BIL2024120773661000',117,108,10001.00,'2024-12-06 18:30:00',NULL),(27,'BIL2024120733751000',117,109,7000.00,'2024-12-06 20:03:05',NULL),(28,'BIL2024120743571000',118,110,13012.00,'2024-12-06 18:30:00',NULL),(29,'BIL2024120747821000',118,111,25001.00,'2024-12-06 20:17:16',NULL),(30,'BIL2024120740171000',119,112,3003.00,'2024-12-06 18:30:00',NULL),(31,'BIL2024120710621000',119,113,6001.00,'2024-12-06 20:35:50',NULL),(32,'BIL202412075601000',119,114,60.00,'2024-12-06 20:49:27',NULL),(33,'BIL2024120764641000',119,115,600.00,'2024-12-06 21:28:55',NULL),(34,'BIL2024120717921000',137,116,0.00,'2024-12-06 18:30:00',NULL),(35,'BIL202412075821000',139,117,2222.00,'2024-12-06 18:30:00',NULL),(36,'BIL2024120753471000',140,118,5.00,'2024-12-06 18:30:00',NULL),(37,'BIL202412071403',140,119,90.00,'2024-12-07 16:34:02',NULL),(38,'BIL20241207884',140,120,40.00,'2024-12-07 16:34:36',NULL),(39,'BIL20241208248',140,121,2000.00,'2024-12-07 18:30:00',NULL),(40,'BIL202412081725',140,122,1000.00,'2024-12-07 18:30:00',NULL),(41,'BIL202412083639',157,123,1001.00,'2024-12-07 18:30:00',NULL),(42,'BIL202412083556',157,124,1234.00,'2024-12-07 18:30:00',NULL),(43,'BIL202412088501',157,125,2001.00,'2024-12-07 18:30:00',NULL),(44,'BIL202412088664',157,126,0.00,'2024-12-07 18:30:00',NULL),(45,'BIL202412085408',157,127,0.00,'2024-12-07 18:30:00',NULL),(46,'BIL202412084864',117,128,2.00,'2024-12-07 18:30:00',NULL),(47,'BIL202412086582',158,129,0.00,'2024-12-07 18:30:00',NULL),(48,'BIL202412082867',159,130,100.00,'2024-12-07 18:30:00',NULL),(49,'BIL202412098373',139,131,0.00,'2024-12-08 18:30:00',NULL),(50,'BIL202412145745',160,132,5000.00,'2024-12-13 18:30:00',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (108,'pulkit',23,'8920345220','pulkit@gmail.com','_pulkit002','16092002'),(109,'soumya',23,'dfasafafaF','FaFDAFAf',NULL,NULL),(110,'rexwal',88,'1212121212','rexwal@gmail.com',NULL,NULL),(111,'rushan',55,'47767676','rushan@gmail.com',NULL,NULL),(112,'abs',12,'534335','fdwgfgffsg',NULL,NULL),(113,'hfh',22,'334344','sadgasg',NULL,NULL),(114,'chomu',54,'43727351636','chomu@gmail.com',NULL,NULL),(115,'MANIK',24,'76504330','manik@gmail.com',NULL,NULL),(116,'nisha ',26,'23472365','nisha@gmail.com',NULL,NULL),(117,'vandana',44,'9821212828','vandana@gmail.com',NULL,NULL),(118,'shivam singh',18,'65283902','shivamsingh@gmail.com',NULL,NULL),(119,'prakhar sinha',21,'828134492','pk@gmail.com',NULL,NULL),(137,'pulkit singh',24,'7959584','pulkit567@gmail.com',NULL,NULL),(139,'pulkit singh so vinod singh',22,'454351','adfffafd',NULL,NULL),(140,'dsdsds',234,'432432342','dfda',NULL,NULL),(157,'aryan vats',66,'6565566','ar@gmail.com',NULL,NULL),(158,'oliv',12,'7773432423','olive@gmail.com',NULL,NULL),(159,'soumya sharma',23,'7019213980','soumya@gmail.com',NULL,NULL),(160,'rocky singh',98,'568573899','rockysingh@gmail.com',NULL,NULL);
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

-- Dump completed on 2024-12-15 13:52:49
