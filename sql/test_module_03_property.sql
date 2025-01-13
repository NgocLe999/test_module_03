-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: test_module_03
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area` text NOT NULL,
  `status` enum('Trống','Hạ tầng','Đầy đủ') NOT NULL,
  `floor` int NOT NULL,
  `type` enum('Trọn gói','Cho thuê') NOT NULL,
  `description` text NOT NULL,
  `rentalPrice` int NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `property_chk_1` CHECK ((`floor` between 1 and 15))
) ENGINE=InnoDB AUTO_INCREMENT=123214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'90','Trống',3,'Cho thuê','Small office space',4500,'2025-01-01','2025-06-30'),(2,'110','Hạ tầng',6,'Trọn gói','Basic infrastructure set up',6000,'2025-02-01','2025-12-31'),(3,'130','Đầy đủ',8,'Cho thuê','Furnished with office furniture',8500,'2025-03-01','2025-09-30'),(4,'160','Trống',10,'Trọn gói','Spacious floor, vacant',12000,'2025-01-15','2025-11-15'),(5,'140','Hạ tầng',7,'Cho thuê','Infrastructure ready',7500,'2025-04-01','2025-08-31'),(6,'170','Đầy đủ',9,'Trọn gói','Full amenities provided',12500,'2025-05-01','2025-10-31'),(7,'100','Trống',2,'Cho thuê','Open space available',5000,'2025-03-15','2025-12-15'),(8,'120','Hạ tầng',5,'Trọn gói','Partially furnished',7000,'2025-06-01','2025-11-30'),(9,'150','Đầy đủ',11,'Cho thuê','Fully equipped with modern amenities',10000,'2025-07-01','2025-12-31'),(10,'200','Trống',12,'Trọn gói','Large space for multiple uses',15000,'2025-02-15','2025-08-15'),(11,'180','Hạ tầng',13,'Cho thuê','Basic setup ready',13000,'2025-03-01','2025-09-01'),(12,'190','Đầy đủ',14,'Trọn gói','Luxury office space',18000,'2025-04-01','2025-11-01'),(13,'170','Trống',1,'Cho thuê','Ground floor space',8500,'2025-05-15','2025-11-15'),(14,'150','Hạ tầng',4,'Trọn gói','Mid-sized office',9500,'2025-01-01','2025-12-01'),(15,'140','Đầy đủ',5,'Cho thuê','Fully furnished office',9000,'2025-06-01','2025-10-01'),(16,'160','Trống',6,'Trọn gói','Ready for immediate use',10000,'2025-07-15','2025-12-15'),(17,'130','Hạ tầng',7,'Cho thuê','Partially equipped',8000,'2025-02-01','2025-08-01'),(18,'180','Đầy đủ',8,'Trọn gói','Fully set up with tech and furniture',14000,'2025-03-01','2025-09-01'),(19,'200','Trống',9,'Cho thuê','Large open area',15500,'2025-04-15','2025-10-15'),(20,'170','Hạ tầng',10,'Trọn gói','Equipped with basic amenities',12000,'2025-05-01','2025-11-01'),(123213,'123213','Trống',1,'Trọn gói','12321321',123213213,'2025-01-13','2025-01-24');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-13 21:32:35
