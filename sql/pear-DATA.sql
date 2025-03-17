-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pear
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB
use pear2;
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
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Lublin','20-xxx',7),(3,'Warsaw','30-xxx',7),(4,'Dublin','22-xxx',7),(5,'Kiiv','38-xxx',8),(6,'Mykolaiv','55-xxx',8),(7,'Mykolaiv','67-xxx',8),(8,'Minsk','69-xxx',9),(9,'Niamey','66-xxx',2);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Madagascar','606',1),(2,'Niger','66',1),(3,'Sudan','6',1),(4,'Livan','3',1),(6,'Baklażan','7',1),(7,'Poland','48',2),(8,'Ukraine','38',2),(9,'Belarus','29',2),(10,'Belgium','27',2),(11,'Niemczehia','34',2);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'C.CUSTOMER1@GMAIL.COM','Aaaaa123@','Anna','Nzsa','+38523454323','2001-02-14','Lipowa 32','2025-03-17','2025-03-17 12:51:45',3),(3,'c2.customer2@gmail.com','Maaa234%','Katarzyna','Opona','+48564765456','1999-08-23','Ducha 12','2025-03-17','2025-03-17 12:53:31',1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2025-03-17 14:30:00','2025-03-21 16:30:20',12.00,'waiting',1,NULL),(2,'2025-03-17 14:30:00','2025-03-21 16:30:20',12.00,'waiting',1,NULL),(3,'2025-03-17 14:30:00','2025-03-17 14:30:00',2.00,'pending',3,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'109525','yPhone',10000.00,'planned','phone'),(3,'109524','yPhone 15',9999.00,'planned','phone'),(4,'109523','yPhone 13 SE',9969.00,'archived','phone'),(6,'109513','yPhone 12',968.69,'planned','phone'),(7,'135732','ophone12',1300.00,'planned','phone'),(8,'888234','olaptop3',3000.00,'archived','laptop'),(9,'343356','owatch',720.00,'planned','watch');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `salespoint`
--

LOCK TABLES `salespoint` WRITE;
/*!40000 ALTER TABLE `salespoint` DISABLE KEYS */;
INSERT INTO `salespoint` VALUES (1,'Nadbystrzycka 23/1','+48451264901','2025-03-17 08:51:00',9),(2,'Lite 79','+66451264901','2025-03-17 08:51:57',9),(3,'Lipowa 43','+48669345567}','2025-03-17 12:35:59',1),(4,'Pils 76','+38543234578','2025-03-17 12:38:24',5),(5,'Tocza 21/2','+55544321456','2025-03-17 12:40:03',6);
/*!40000 ALTER TABLE `salespoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `salesterritory`
--

LOCK TABLES `salesterritory` WRITE;
/*!40000 ALTER TABLE `salesterritory` DISABLE KEYS */;
INSERT INTO `salesterritory` VALUES (1,'Africa'),(2,'Europe');
/*!40000 ALTER TABLE `salesterritory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 13:08:33
