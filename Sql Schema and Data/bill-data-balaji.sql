-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: bill-payment
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` int(11) NOT NULL,
  `consumer_id` varchar(255) NOT NULL,
  `user_us_id` int(11) DEFAULT NULL,
  `vendor_vr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `FK2mbqhdvakof21awq9yv81eoo3` (`user_us_id`),
  KEY `FKddndg72b8598v3j2jd6gd223n` (`vendor_vr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,5000,'123',1,1),(2,2111,'124',1,11),(3,3333,'32332',1,2),(4,1234,'1234',1,3),(5,123456,'1234',1,13),(6,12,'555',1,17);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ro_id` int(11) NOT NULL,
  `ro_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'USER'),(2,'ADMIN'),(3,'VENDOR');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT,
  `us_aadhar` varchar(255) NOT NULL,
  `us_age` int(11) NOT NULL,
  `us_contact` bigint(20) NOT NULL,
  `us_firstname` varchar(255) NOT NULL,
  `us_gender` varchar(255) NOT NULL,
  `us_lastname` varchar(255) NOT NULL,
  `us_pan` varchar(255) NOT NULL,
  `us_password` varchar(255) NOT NULL,
  `us_userid` varchar(255) NOT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'QW',12,12,'balaji','Male','balu','qw','$2a$10$xbsutO6tJgxRfTH72e.4XuN7eKY2clPd2fz8Yo8bErFmEHiHrjBDW','admin'),(1,'as',12,12,'balaji','Male','balu','qw','$2a$10$xbsutO6tJgxRfTH72e.4XuN7eKY2clPd2fz8Yo8bErFmEHiHrjBDW','user'),(5,'asdfdas',12,12,'balaji','Male','balu','asdasd','$2a$10$xbsutO6tJgxRfTH72e.4XuN7eKY2clPd2fz8Yo8bErFmEHiHrjBDW','balu'),(6,'sdaa',123,213,'bsad','Male','sad','asdasd','$2a$10$1BQks3e7f1VQkpNWV1Wpx.IJ/3dZIYqYj6INaYwnj8sHJX2FyGlkO','user1'),(7,'qwe',123,123,'qwe','Male','qwe','qwe','$2a$10$kqGBhN7j62b2iqIU09ySluPi76q7zNlRzsbSsfLtFlFbogwd6rXCW','user2'),(8,'asd',12,12,'balaji','Female','balu','asda','$2a$10$vYETLpKhMLjwHZbTkHqsdOPNvZ85PwQasSKqmkDCK9q0W7pt7lVvK','user3'),(9,'ad',12,12,'a','Male','a','ad','$2a$10$aRlCvK9y1kHJKTopeBMLqOr656.PB4IXjpdb7jWhoTxVpun/aaJGe','a');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT,
  `ur_ro_id` int(11) NOT NULL,
  `ur_us_id` int(11) NOT NULL,
  PRIMARY KEY (`ur_id`),
  KEY `FKjia4161ecu6h4p0egc2oc04lt` (`ur_ro_id`),
  KEY `FK1t65ha4bv531fmav53vlu66fg` (`ur_us_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1),(2,2,2),(3,1,4),(4,1,5),(5,1,6),(6,1,7),(7,1,8),(8,1,9),(9,1,10),(10,1,11),(11,1,12),(12,1,13),(13,1,14),(14,1,15),(15,1,16),(16,1,17),(17,1,18),(18,1,19),(19,1,20),(20,1,21),(21,1,22),(22,1,23),(23,1,1),(24,1,2),(25,1,3),(26,1,4),(27,1,5),(28,1,6),(29,1,7),(30,1,8),(31,1,9);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `vr_id` int(11) NOT NULL AUTO_INCREMENT,
  `vr_address` varchar(255) NOT NULL,
  `vr_cert_issue_date` date NOT NULL,
  `vr_cert_validity_date` date NOT NULL,
  `vr_contact` bigint(20) NOT NULL,
  `vr_country` varchar(255) NOT NULL,
  `vr_name` varchar(255) NOT NULL,
  `vr_payment` varchar(255) NOT NULL,
  `vr_reg_no` varchar(255) NOT NULL,
  `vr_state` varchar(255) NOT NULL,
  `vr_email` varchar(255) NOT NULL,
  `vr_type` varchar(255) NOT NULL,
  `vr_website` varchar(255) NOT NULL,
  `vr_year` int(11) NOT NULL,
  `vr_uname` varchar(255) NOT NULL,
  `vr_password` varchar(255) NOT NULL,
  PRIMARY KEY (`vr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'asdsad','2012-12-18','2012-12-18',12345234,'India','tom','Paytm','as123888','andhra','balu','DTH','sdasda',2014,'vendor','$2a$10$b.KrWNkM7HevIt1L43qt8.uTX6zx18TTwI3KyiX8onIZserCCm6ai'),(2,'asdsad','2012-12-12','2012-12-12',12345,'India','tom','Google Pay','as123','andhra','balu','Telephone','sdasda',2014,'vendor2','$2a$10$BFhXZ4NyXXM.oYFVLccY7e3jbptEti0z2iW3j3EMm9y/d7lAUXzNK'),(3,'asdsad','2012-12-12','2012-12-12',12345,'India','tom','Credit/Debit Card','as123','andhra','balu','DTH','sdasda',2014,'vendor3','$2a$10$BFhXZ4NyXXM.oYFVLccY7e3jbptEti0z2iW3j3EMm9y/d7lAUXzNK'),(18,'qwe','2019-11-14','2019-11-15',123,'USA','nikunj','Internet Banking','qwe123','andhra','qwe','Insurance','nikunj@gmail.com',2134,'nikunj','$2a$10$tP6B7oA9iYCnD0Zr2tD.iO6Zbcqm.8bc0bkuPkNE.afhdJBxqZEny'),(13,'q','1212-12-12','1212-12-12',12,'USA','q','Credit/Debit Card','q','andhra','q','DTH','q',12,'aravind','$2a$10$LyQp78qWQhYqsL.IL5dJQ.NEU8H8hN4bmDLZEXEvBg0kBbFnDOeGa'),(17,'qwe','2019-11-14','2019-11-15',123,'USA','nikunj','Internet Banking','qwe123','andhra','qwe','Insurance','nikunj@gmail.com',2134,'nikunj','$2a$10$UtB7hu9Oj9Uh7ge1EZ7MoOdejVnlZmWOQ6GrDEzym9wJ6kzmeKynO'),(11,'q','1212-12-12','1212-12-12',12,'USA','dhoni','Credit/Debit Card','qqwqeqweeqwqwe','andhra','q','DTH','q',12,'balaji','$2a$10$5W/aM/wLnLXNZk8ASY7qQuI5yAKArPch2N/h7z.3RxoE5MeXZWdCO');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_role`
--

DROP TABLE IF EXISTS `vendor_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_role` (
  `vr_id` int(11) NOT NULL AUTO_INCREMENT,
  `vrr_ro_id` int(11) NOT NULL,
  `vrr_vr_id` int(11) NOT NULL,
  PRIMARY KEY (`vr_id`),
  KEY `FKny5k7lysgxnrctlsv4ajbgsp0` (`vrr_ro_id`),
  KEY `FKdy31uvmp9jtkpy3owd4ui81wi` (`vrr_vr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_role`
--

LOCK TABLES `vendor_role` WRITE;
/*!40000 ALTER TABLE `vendor_role` DISABLE KEYS */;
INSERT INTO `vendor_role` VALUES (1,3,6),(2,3,7),(18,3,1),(4,3,8),(5,3,9),(6,3,10),(8,3,12),(9,3,13),(10,3,15),(11,3,11),(15,3,16),(19,3,17),(20,3,18);
/*!40000 ALTER TABLE `vendor_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 15:04:55
