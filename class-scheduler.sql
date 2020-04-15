-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: project1
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cisrooms`
--

DROP TABLE IF EXISTS `cisrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisrooms` (
  `Rooms` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisrooms`
--

LOCK TABLES `cisrooms` WRITE;
/*!40000 ALTER TABLE `cisrooms` DISABLE KEYS */;
INSERT INTO `cisrooms` VALUES ('F904'),('F905'),('F906'),('F907'),('F908'),('F1113'),('F1201'),('F1203'),('F1204'),('M1209');
/*!40000 ALTER TABLE `cisrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cscourses`
--

DROP TABLE IF EXISTS `cscourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cscourses` (
  `CourseNo` text DEFAULT NULL,
  `Title` text DEFAULT NULL,
  `Credits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cscourses`
--

LOCK TABLES `cscourses` WRITE;
/*!40000 ALTER TABLE `cscourses` DISABLE KEYS */;
INSERT INTO `cscourses` VALUES ('CIS100','Comp. Applications',3),('CSC110','Comp. Programming I',4),('CIS495','Database Systems II',3),('CSC430','Data Structures II',3),('CSC330','Data Structures I',3),('CSC331','Data Structures',3),('CSC111','Introduction to Programming',4),('CSC310','Assem Lang & Arc I',3),('CIS255','Computer Software',4),('CIS200','Intro.Info System',3),('CSC210','Comp. Prog. II',4),('CIS345','Telecom. Networks I',4),('CSC350','Software Development',3),('GIS261','Intro To Geographic Info Sci',3),('GIS361','Advanced Geographic Info Sci',3),('GIS201','Intro To Geographic Methods',3),('CIS385','Web Programming I',3),('CIS440','Unix',3),('CIS485','Web Programming II',3),('CSC101','Principles In Info Tech & Comp',3),('CSC211','Advanced Programming Technique',3),('CIS155','Computer Hardware',4),('CIS455','Network Security',4),('CSC215','Fund. of Computer Systems',3),('CIS115','Intro.Comp.Inf.Secu',3),('CIS180','Intro To Internet',3),('CIS359','Information Assurance',3),('CIS395','Database Systems I',4),('CIS445','Tele. Networks II',4),('CSC230','Discrete Structures',3),('CSC231','Disc Struc & Applic Comp Sci',3),('CSC410','Assem Lang & Arc II',3);
/*!40000 ALTER TABLE `cscourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generatedschedule`
--

DROP TABLE IF EXISTS `generatedschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generatedschedule` (
  `days` varchar(20) DEFAULT NULL,
  `rooms` varchar(20) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `times` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generatedschedule`
--

LOCK TABLES `generatedschedule` WRITE;
/*!40000 ALTER TABLE `generatedschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `generatedschedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-15 10:38:12
