-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: 120.25.235.144    Database: codingirls
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` VALUES (1,'development'),(2,'designer'),(3,'marketing'),(4,'product'),(5,'manager');
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job`
--

DROP TABLE IF EXISTS `t_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `description` text,
  `how_to_apply` text,
  `category_id` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `is_public` int(11) DEFAULT NULL,
  `is_expiry` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=521 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job`
--

LOCK TABLES `t_job` WRITE;
/*!40000 ALTER TABLE `t_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job_tag`
--

DROP TABLE IF EXISTS `t_job_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_job_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job_tag`
--

LOCK TABLES `t_job_tag` WRITE;
/*!40000 ALTER TABLE `t_job_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_promo_code`
--

DROP TABLE IF EXISTS `t_promo_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_promo_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_use` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_promo_code`
--

LOCK TABLES `t_promo_code` WRITE;
/*!40000 ALTER TABLE `t_promo_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_promo_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tag`
--

DROP TABLE IF EXISTS `t_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tag`
--

LOCK TABLES `t_tag` WRITE;
/*!40000 ALTER TABLE `t_tag` DISABLE KEYS */;
INSERT INTO `t_tag` VALUES (1,'html',0,1,1),(2,'JavaScript',0,1,1),(3,'CSS',0,1,1);
/*!40000 ALTER TABLE `t_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_type`
--

DROP TABLE IF EXISTS `t_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_type`
--

LOCK TABLES `t_type` WRITE;
/*!40000 ALTER TABLE `t_type` DISABLE KEYS */;
INSERT INTO `t_type` VALUES (1,'Volunteer'),(2,'Permanent'),(3,'Freelance'),(4,'Contract');
/*!40000 ALTER TABLE `t_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `activation_code` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `company_address` varchar(200) DEFAULT NULL,
  `company_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'name',NULL,NULL,NULL,NULL,NULL,NULL),(2,'admin',NULL,NULL,NULL,NULL,NULL,NULL),(3,'admin',NULL,NULL,NULL,NULL,NULL,NULL),(4,'admin',NULL,NULL,NULL,NULL,NULL,NULL),(5,'11',NULL,NULL,NULL,NULL,NULL,NULL),(6,'11',NULL,NULL,NULL,NULL,NULL,NULL),(7,'rooe',NULL,NULL,NULL,NULL,NULL,NULL),(8,'rooe',NULL,NULL,NULL,NULL,NULL,NULL),(9,'rooe',NULL,NULL,NULL,NULL,NULL,NULL),(10,'rooe',NULL,NULL,NULL,NULL,NULL,NULL),(11,'admin',NULL,NULL,NULL,NULL,NULL,NULL),(12,'2r3',NULL,NULL,NULL,NULL,NULL,NULL),(13,'email',NULL,NULL,NULL,NULL,NULL,NULL),(14,'admin',NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'s',NULL,NULL,NULL,NULL,NULL,NULL),(17,'',NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'',NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-18 19:27:06
