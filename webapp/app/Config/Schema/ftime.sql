-- MySQL dump 10.13  Distrib 5.5.39, for FreeBSD10.0 (amd64)
--
-- Host: localhost    Database: ftime
-- ------------------------------------------------------
-- Server version	5.5.39

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
-- Current Database: `ftime`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ftime` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ftime`;

--
-- Table structure for table `jumps`
--

DROP TABLE IF EXISTS `jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jumps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `ftime` smallint(6) DEFAULT NULL,
  `notes` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jumps`
--

LOCK TABLES `jumps` WRITE;
/*!40000 ALTER TABLE `jumps` DISABLE KEYS */;
INSERT INTO `jumps` VALUES (1,'marck',1000,'The jump','2014-09-17 11:51:21',NULL,NULL),(2,'marck',1010,'A jump once again','2014-09-17 11:51:21',NULL,NULL),(4,'marck',1040,'The jump','2014-09-18 15:54:28',NULL,NULL),(5,'xavi',1210,'A jump once again','2014-09-18 15:54:28',NULL,NULL),(6,'jan',1312,'jump strikes back','2014-09-18 15:54:28',NULL,NULL),(7,'mariona',1040,'The jump','2014-09-18 15:54:28',NULL,NULL),(8,'jan',1210,'A jump once again','2014-09-18 15:54:28',NULL,NULL),(9,'jan',1312,'jump strikes back','2014-09-18 15:54:28',NULL,NULL),(10,'marck',1040,'The jump','2014-09-18 15:55:00',NULL,NULL),(11,'xavi',1210,'A jump once again','2014-09-18 15:55:00',NULL,NULL),(13,'mariona',1040,'The jump','2014-09-18 15:55:00',NULL,NULL),(14,'jan',1210,'A jump once again','2014-09-18 15:55:00',NULL,NULL),(15,'jan',1312,'jump strikes back','2014-09-18 15:55:00',NULL,NULL);
/*!40000 ALTER TABLE `jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$10$xg1m31vZFWBCBe29pXVr0Okl316SS686zC7OM6pVXP1uNDYSRgk0a','admin','2014-09-18 18:50:25','2014-09-18 18:50:25'),(2,'xavi','$2a$10$vKvPzoLqhJpMoxmbdLXWY.sL5pVlCwxMdNrbbD9MWfV9mtW9qBnvC','admin','2014-09-18 18:51:11','2014-09-18 18:51:11'),(4,'jan','$2a$10$I8/syx.w1rtLcSDQHyy6Z.qh.bR.CAApO.Dqiy3OGrMeY0n8mhG3G','jumper','2014-09-18 18:54:13','2014-09-18 18:54:13');
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

-- Dump completed on 2014-09-24 15:56:50
