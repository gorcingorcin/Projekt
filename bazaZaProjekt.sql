-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: supermarket
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand_table`
--

DROP TABLE IF EXISTS `brand_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand_table` (
  `ID_Brand` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Brand`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_table`
--

LOCK TABLES `brand_table` WRITE;
/*!40000 ALTER TABLE `brand_table` DISABLE KEYS */;
INSERT INTO `brand_table` VALUES (6,' LG','Active'),(7,'Samsung','Active'),(8,'krastavac','Active');
/*!40000 ALTER TABLE `brand_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cashier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashier`
--

LOCK TABLES `cashier` WRITE;
/*!40000 ALTER TABLE `cashier` DISABLE KEYS */;
INSERT INTO `cashier` VALUES (1,'ja','ja','Active'),(14,'menil','menil','Active');
/*!40000 ALTER TABLE `cashier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(60) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (7,' Mobile phone','Active'),(8,' povrće','Active');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `cost_price` double DEFAULT NULL,
  `retail_price` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `barcode` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,' LG new','fgfg',2,1,255.6,300,1,1211,'Active'),(4,' fan rowenta','kalorifer',1,1,30.2,59.99,5,2222,'Active'),(5,' Palmolive dustdurf','Shampoo against dustdurf',4,4,7,10.33,289,1,'Deactive'),(9,' Krastavac svježi','domaći krastavac',6,5,0.5,1.25,280,333,'Active'),(10,' LG 1000','mobilni LG telefon',7,6,155,232,91,111,'Active'),(11,' krastavac','krastavac sviježi',8,8,2,3.55,470,1212,'Active');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(45) DEFAULT NULL,
  `cashier` varchar(100) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2019/07/15',NULL,7300,8000,700),(2,'2019/07/15',NULL,7300,8000,700),(3,'2019/07/15',NULL,10800,12000,1200),(4,'2019/07/15',NULL,14300,15000,700),(5,'2019/07/16',NULL,3500,4000,500),(6,'2019/07/16',NULL,350,400,50),(7,'2019/07/16',NULL,350,400,50),(8,'2019/07/16',NULL,350,400,50),(9,'2019/07/16','jLabel17',1050,11000,9950),(10,'2019/07/16','ja',700,1000,300),(11,'2019/07/16','benjamin',10,10,0),(12,'2019/07/16','jLabel17',20,20,0),(13,'2019/07/16','jLabel17',20,20,0),(14,'2019/07/17','jLabel17',10,11,1),(15,'2019/07/17','jLabel17',10,11,1),(16,'2019/07/17','jLabel17',10,11,1),(17,'2019/07/17','jLabel17',31,31,0),(18,'2019/07/17','jLabel17',31,40,9),(19,'2019/07/18','ja',350,400,50),(20,'2019/07/18','jLabel17',350,400,50),(21,'2019/07/18','jLabel17',350,380,30),(22,'2019/07/21','ja',350,400,50),(23,'2019/07/23','jLabel17',767,800,33),(24,'2019/07/23','jLabel17',250,250,0),(25,'2019/07/23','menil',464,500,36),(26,'2019/07/23','jLabel17',11,11,0),(27,'2019/07/23','menil',7,9,2),(28,'2019/07/23','menil',696,700,4);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_product`
--

DROP TABLE IF EXISTS `sales_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sell_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_product`
--

LOCK TABLES `sales_product` WRITE;
/*!40000 ALTER TABLE `sales_product` DISABLE KEYS */;
INSERT INTO `sales_product` VALUES (1,2,1212,350,20,7000),(2,2,1211,300,1,300),(3,3,1212,350,30,10500),(4,3,1211,300,1,300),(5,4,1212,350,40,14000),(6,4,1211,300,1,300),(7,5,1212,350,10,3500),(8,6,1212,350,1,350),(9,7,1212,350,1,350),(10,8,1212,350,1,350),(11,9,1212,350,3,1050),(12,10,1212,350,2,700),(13,11,1,10,1,10),(14,13,1,10,1,10),(15,13,2,9,1,9),(16,14,1,10,1,10),(17,15,1,10,1,1),(18,16,1,10,1,1),(19,17,1,10,3,1),(20,18,1,10,3,1),(21,19,1212,350,3,12),(22,19,1212,350,1,5),(23,20,1212,350,1,5),(24,21,1212,350,1,5),(25,22,333,1,20,1),(26,22,1212,350,1,5),(27,23,1212,4,20,2),(28,23,111,232,3,8),(29,24,111,232,1,3),(30,24,1212,4,5,1),(31,25,111,232,2,6),(32,26,1212,4,3,1),(33,27,1212,4,2,1),(34,28,111,232,3,8);
/*!40000 ALTER TABLE `sales_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-23 17:39:47
