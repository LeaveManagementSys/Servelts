-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `job_location` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (100,'deepu','deepak','ranjith@gmail.com','919553547891','3919-07-23','engineer',0,'3897-05-04','jntu'),(109,'rahul','chowdary','rahul@gmail.com','919494728415','3919-10-23','Accountant',32000,'3893-04-23','hyderabad'),(110,'gaya','paka','gaya@gmail.com','911234567890','3919-04-21','manager',28000,'3897-08-03','hyd'),(111,'chinnu','paka','paka@gmail.com','911234567890','3918-05-21','manager',24000,'3894-05-21','chennai'),(112,'bhagya','paka','paka@gmail.com','911234567890','3919-10-21','associate',21000,'3893-08-23','gurgon'),(113,'jeeva','dhoni','jeeav@gmail.com','912134567890','3919-09-21','manager',0,'3892-07-03','hyd'),(114,'sakshi','dhoni','doni@gmail.com','911234567890','3918-04-21','programmer',0,'3893-04-23','hyd'),(225,'jahf','jahfu','jasgf@gmail.com','911234567890','3919-10-21','Manager',29000,'3896-04-21','hyd'),(307,'swapna','n','nbch@gmail.com','911234567890','3918-03-12','Manager',0,'3898-11-25','hyd'),(3001,'fgghj','jgjh','swa@b.','911234567890','3918-09-12','Accountant',28000,'3898-09-03','sefew');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(45) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Programmer'),(2,'HumanResources'),(3,'Accountant'),(4,'SalesManager'),(5,'Manager'),(6,'SalesRepresentative'),(7,'AssociateEngineer'),(8,'DataAnalyst'),(9,'Webdeveloper'),(10,'Networkengineer');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavebalance`
--

DROP TABLE IF EXISTS `leavebalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leavebalance` (
  `emp_id` int(11) NOT NULL,
  `sick_leaves` int(11) DEFAULT NULL,
  `earned_leaves` int(11) DEFAULT NULL,
  `bevarement_leaves` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavebalance`
--

LOCK TABLES `leavebalance` WRITE;
/*!40000 ALTER TABLE `leavebalance` DISABLE KEYS */;
INSERT INTO `leavebalance` VALUES (100,5,11,3),(8065679,6,12,4);
/*!40000 ALTER TABLE `leavebalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves_table`
--

DROP TABLE IF EXISTS `leaves_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaves_table` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `leave_type` varchar(45) DEFAULT NULL,
  `from_date` varchar(45) DEFAULT NULL,
  `to_date` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `leave_description` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  UNIQUE KEY `leave_id_UNIQUE` (`leave_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves_table`
--

LOCK TABLES `leaves_table` WRITE;
/*!40000 ALTER TABLE `leaves_table` DISABLE KEYS */;
INSERT INTO `leaves_table` VALUES (1,100,'sick','10-02-2020','20-02-2020','test','test','Rejected'),(2,8065679,'sick','10-09-2019','12-09-2019','Associate','Fallen Sick','Hold'),(3,103,'Earned Leave','2019-10-03','2019-10-03',NULL,NULL,'Hold'),(4,8065679,'Earned Leave','2019-10-03','2019-10-03',NULL,'tets','Hold'),(5,8065679,'Earned Leave','2019-10-04','2019-10-05',NULL,'tets','Hold'),(6,8065679,'Earned Leave','2019-10-05','2019-10-06',NULL,'tets','Hold'),(7,8065679,'Sick Leave','2019-10-10','2019-10-12',NULL,'tets','Hold'),(8,8065679,'Earned Leave','2019-10-17','2019-10-19',NULL,'tets','Hold'),(9,100,'sick','wedrfwqe','ewqeq3w','rqwerq','qerqr','Rejected'),(10,300,'casual','12/5/19','13/5/19','manager','function','Hold');
/*!40000 ALTER TABLE `leaves_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `emp_id` int(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`emp_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1005,'gayathri','EMPLOYEE'),(1014,'pavani','HR'),(1038,'manager','MANAGER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-18 17:14:47
