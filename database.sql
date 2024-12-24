-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotelreservation
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BookingID` int NOT NULL AUTO_INCREMENT,
  `GuestID` int NOT NULL,
  `RoomID` int NOT NULL,
  `RoomType` varchar(50) NOT NULL,
  `CheckInDate` date NOT NULL,
  `CheckOutDate` date NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `GuestID` (`GuestID`),
  KEY `RoomID` (`RoomID`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`RoomID`) REFERENCES `rooms` (`RoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,1,'Single','2024-01-01','2024-01-03',4000.00),(2,2,2,'Double','2024-01-02','2024-01-05',9000.00),(3,3,3,'Suite','2024-01-04','2024-01-06',10000.00),(4,4,4,'Single','2024-01-05','2024-01-08',6000.00),(5,5,5,'Double','2024-01-06','2024-01-09',9000.00),(6,6,6,'Suite','2024-01-07','2024-01-10',15000.00),(7,7,7,'Single','2024-01-08','2024-01-11',6000.00),(8,8,8,'Double','2024-01-09','2024-01-15',18000.00),(9,9,9,'Suite','2024-01-10','2024-01-18',40000.00),(10,10,10,'Single','2024-01-11','2024-01-14',6000.00),(11,11,11,'Double','2024-01-12','2024-01-15',9000.00),(12,12,12,'Suite','2024-01-13','2024-01-16',15000.00),(13,13,13,'Single','2024-01-14','2024-01-19',10000.00),(14,14,14,'Double','2024-01-15','2024-01-20',15000.00),(15,15,15,'Suite','2024-01-16','2024-01-23',35000.00),(16,1,16,'Single','2024-01-17','2024-01-20',6000.00),(17,2,17,'Double','2024-01-18','2024-01-21',9000.00),(18,3,18,'Suite','2024-01-19','2024-01-22',15000.00),(19,4,19,'Single','2024-01-20','2024-01-23',6000.00),(20,5,20,'Double','2024-01-21','2024-01-24',9000.00),(21,6,21,'Suite','2024-01-22','2024-01-25',15000.00),(22,7,22,'Single','2024-01-23','2024-01-26',6000.00),(23,8,23,'Double','2024-01-24','2024-01-28',12000.00),(24,9,24,'Suite','2024-01-25','2024-01-28',15000.00),(25,10,25,'Single','2024-01-26','2024-01-29',6000.00);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `HireDate` date NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Ahmet Yılmaz','Yönetici','2018-01-12','555-123-4567'),(2,'Ayşe Kaya','Resepsiyonist','2019-05-20','555-234-5678'),(3,'Mehmet Demir','Aşçı','2020-08-15','555-345-6789'),(4,'Fatma Çelik','Kat Görevlisi','2021-02-10','555-456-7890'),(5,'Hasan Kara','Bakım Görevlisi','2017-07-25','555-567-8901'),(6,'Zeynep Aksoy','Vale','2022-03-01','555-678-9012'),(7,'Ali Şahin','Güvenlik','2021-06-18','555-789-0123'),(8,'Elif Özkan','Spa Terapisti','2023-04-05','555-890-1234'),(9,'Burak Aydın','Barmen','2019-09-11','555-901-2345'),(10,'Gamze Polat','Garson','2020-11-19','555-012-3456'),(11,'Kemal Çakır','Mutfak Asistanı','2018-04-22','555-123-4568'),(12,'Nurten Koç','Kat Amiri','2023-01-15','555-234-5679'),(13,'Serkan Güneş','Etkinlik Planlayıcı','2020-10-30','555-345-6780'),(14,'Betül Yıldız','Animatör','2021-07-14','555-456-7891'),(15,'Emre Akın','Teknik Destek','2019-03-12','555-567-8902'),(16,'Hülya Tekin','Muhasebe Uzmanı','2022-06-27','555-678-9013'),(17,'Murat Çelik','Beden Eğitimi Eğitmeni','2020-09-15','555-789-0124'),(18,'Leyla Çınar','Kat Görevlisi','2018-02-20','555-890-1235'),(19,'Cemal Tuncer','Güvenlik Amiri','2021-12-01','555-901-2346'),(20,'Pelin Özdemir','Ön Büro Memuru','2019-11-10','555-012-3457'),(21,'Rıza Uslu','Bakım Şefi','2020-05-18','555-123-4569'),(22,'Fadime Altun','Vale','2021-09-25','555-234-5670'),(23,'Okan Kurt','Spa Görevlisi','2023-07-14','555-345-6781'),(24,'Necla Çoban','Oda Servisi','2020-08-30','555-456-7892'),(25,'Vedat Öztürk','Genel Müdür Yardımcısı','2021-03-18','555-567-8903');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `GuestID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` text,
  `DateOfBirth` date DEFAULT NULL,
  PRIMARY KEY (`GuestID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,'Ali Yılmaz','ali.yilmaz@example.com','5551234567','Istanbul, Turkey','1995-05-21'),(2,'Ayşe Demir','ayse.demir@example.com','5552345678','Ankara, Turkey','1990-08-14'),(3,'Mehmet Kaya','mehmet.kaya@example.com','5553456789','Izmir, Turkey','1987-03-10'),(4,'Fatma Çelik','fatma.celik@example.com','5554567890','Antalya, Turkey','1992-11-30'),(5,'Ahmet Şahin','ahmet.sahin@example.com','5555678901','Bursa, Turkey','1985-07-22'),(6,'Elif Yıldız','elif.yildiz@example.com','5556789012','Konya, Turkey','1998-02-15'),(7,'Mustafa Özcan','mustafa.ozcan@example.com','5557890123','Adana, Turkey','1993-09-25'),(8,'Zeynep Aydın','zeynep.aydin@example.com','5558901234','Trabzon, Turkey','1991-06-18'),(9,'Emre Kılıç','emre.kilic@example.com','5559012345','Samsun, Turkey','1989-12-05'),(10,'Hülya Arslan','hulya.arslan@example.com','5550123456','Mersin, Turkey','1994-04-28'),(11,'Cemal Güneş','cemal.gunes@example.com','5551231234','Eskisehir, Turkey','1986-10-12'),(12,'Selin Tekin','selin.tekin@example.com','5552342345','Denizli, Turkey','1997-01-17'),(13,'Burak Karaca','burak.karaca@example.com','5553453456','Malatya, Turkey','1990-03-23'),(14,'Gamze Aksoy','gamze.aksoy@example.com','5554564567','Sakarya, Turkey','1988-07-15'),(15,'Can Yıldırım','can.yildirim@example.com','5555675678','Hatay, Turkey','1995-09-02'),(16,'Nazlı Demirtaş','nazli.demirtas@example.com','5556786789','Manisa, Turkey','1999-12-20'),(17,'Okan Erdem','okan.erdem@example.com','5557897890','Gaziantep, Turkey','1992-05-11'),(18,'Sevgi Öztürk','sevgi.ozturk@example.com','5558908901','Kocaeli, Turkey','1996-11-04'),(19,'Umut Yılmaz','umut.yilmaz@example.com','5559019012','Ordu, Turkey','1991-08-07'),(20,'Merve Taş','merve.tas@example.com','5550120123','Çorum, Turkey','1993-01-29'),(21,'Eren Kurt','eren.kurt@example.com','5551236789','Balikesir, Turkey','1987-02-13'),(22,'Nazan Çetinkaya','nazan.cetinkaya@example.com','5552347890','Aydın, Turkey','1990-04-14'),(23,'Kadir Akbulut','kadir.akbulut@example.com','5553458901','Kayseri, Turkey','1994-06-03'),(24,'Furkan Koç','furkan.koc@example.com','5554569012','Van, Turkey','1998-09-19'),(25,'Ayça Dinç','ayca.dinc@example.com','5555670123','Rize, Turkey','1997-03-08');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `BookingID` int NOT NULL,
  `PaymentDate` date NOT NULL,
  `AmountPaid` decimal(10,2) NOT NULL,
  `PaymentMethod` varchar(50) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `BookingID` (`BookingID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`BookingID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'2024-01-03',4000.00,'Credit Card'),(2,2,'2024-01-05',9000.00,'Cash'),(3,3,'2024-01-06',10000.00,'Debit Card'),(4,4,'2024-01-08',6000.00,'Credit Card'),(5,5,'2024-01-09',9000.00,'Cash'),(6,6,'2024-01-10',15000.00,'Bank Transfer'),(7,7,'2024-01-11',6000.00,'Credit Card'),(8,8,'2024-01-15',18000.00,'Cash'),(9,9,'2024-01-18',40000.00,'Debit Card'),(10,10,'2024-01-14',6000.00,'Credit Card'),(11,11,'2024-01-15',9000.00,'Cash'),(12,12,'2024-01-16',15000.00,'Bank Transfer'),(13,13,'2024-01-19',10000.00,'Credit Card'),(14,14,'2024-01-20',15000.00,'Debit Card'),(15,15,'2024-01-23',30000.00,'Cash'),(16,16,'2024-01-20',6000.00,'Bank Transfer'),(17,17,'2024-01-21',9000.00,'Credit Card'),(18,18,'2024-01-22',15000.00,'Cash'),(19,19,'2024-01-23',6000.00,'Debit Card'),(20,20,'2024-01-24',9000.00,'Credit Card'),(21,21,'2024-01-25',15000.00,'Bank Transfer'),(22,22,'2024-01-26',6000.00,'Cash'),(23,23,'2024-01-28',12000.00,'Debit Card'),(24,24,'2024-01-28',15000.00,'Credit Card'),(25,25,'2024-01-29',6000.00,'Bank Transfer');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `RoomID` int NOT NULL AUTO_INCREMENT,
  `RoomNumber` varchar(10) NOT NULL,
  `RoomType` varchar(50) NOT NULL,
  `PricePerNight` decimal(10,2) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`RoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'101','Single',2000.00,'Available'),(2,'102','Double',3000.00,'Available'),(3,'103','Suite',5000.00,'Occupied'),(4,'104','Single',2000.00,'Available'),(5,'105','Double',3000.00,'Occupied'),(6,'106','Suite',5000.00,'Available'),(7,'107','Single',2000.00,'Available'),(8,'108','Double',3000.00,'Occupied'),(9,'109','Suite',5000.00,'Available'),(10,'110','Single',2000.00,'Available'),(11,'111','Double',3000.00,'Occupied'),(12,'112','Suite',5000.00,'Available'),(13,'113','Single',2000.00,'Occupied'),(14,'114','Double',3000.00,'Available'),(15,'115','Suite',5000.00,'Available'),(16,'116','Single',2000.00,'Available'),(17,'117','Double',3000.00,'Occupied'),(18,'118','Suite',5000.00,'Available'),(19,'119','Single',2000.00,'Occupied'),(20,'120','Double',3000.00,'Available'),(21,'121','Suite',5000.00,'Available'),(22,'122','Single',2000.00,'Available'),(23,'123','Double',3000.00,'Available'),(24,'124','Suite',5000.00,'Occupied'),(25,'125','Single',2000.00,'Available');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `ServiceID` int NOT NULL AUTO_INCREMENT,
  `ServiceName` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Room Service',1480.00),(2,'Laundry',700.00),(3,'Spa Treatment',3500.00),(4,'Restaurant Meal',1850.00),(5,'Tour Package',9999.00),(6,'Airport Transfer',4100.00),(7,'Gym Access',650.00),(8,'Massage',5400.00),(9,'Conference Room',3900.00),(10,'Valet Parking',599.00),(11,'Baby Sitting',880.00),(12,'Special Meal Requests',9820.00),(13,'Pet Care',550.00),(14,'Late Checkout',2000.00),(15,'Luggage Storage',450.00),(16,'Dry Cleaning',390.00),(17,'Breakfast Buffet',2300.00),(18,'Car Rental',596.00),(19,'Personal Trainer',420.00),(20,'Yoga Classes',570.00),(21,'Event Planning',1899.00),(22,'Photographer Services',100.00),(23,'Live Music',500.00),(24,'Sea Activity',7800.00),(25,'Wi-Fi',360.00);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceusage`
--

DROP TABLE IF EXISTS `serviceusage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceusage` (
  `ServiceUsageID` int NOT NULL AUTO_INCREMENT,
  `BookingID` int NOT NULL,
  `ServiceID` int NOT NULL,
  `EmployeeID` int NOT NULL,
  `UsageDate` date NOT NULL,
  `Quantity` int NOT NULL,
  `TotalCost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ServiceUsageID`),
  KEY `BookingID` (`BookingID`),
  KEY `ServiceID` (`ServiceID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `serviceusage_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`BookingID`),
  CONSTRAINT `serviceusage_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `services` (`ServiceID`),
  CONSTRAINT `serviceusage_ibfk_3` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceusage`
--

LOCK TABLES `serviceusage` WRITE;
/*!40000 ALTER TABLE `serviceusage` DISABLE KEYS */;
INSERT INTO `serviceusage` VALUES (1,1,1,2,'2024-12-15',2,2960.00),(2,2,2,4,'2024-12-16',1,700.00),(3,3,3,6,'2024-12-17',3,10500.00),(4,4,4,8,'2024-12-18',1,1880.00),(5,5,5,10,'2024-12-19',2,19998.00),(6,6,6,12,'2024-12-20',1,4100.00),(7,7,7,14,'2024-12-21',1,650.00),(8,8,8,16,'2024-12-22',4,21600.00),(9,9,9,18,'2024-12-23',2,7800.00),(10,10,10,20,'2024-12-24',1,599.00),(11,11,11,1,'2024-12-25',1,880.00),(12,12,12,3,'2024-12-26',2,19640.00),(13,13,13,5,'2024-12-27',1,550.00),(14,14,14,7,'2024-12-28',1,200.00),(15,15,15,9,'2024-12-29',2,900.00),(16,16,1,11,'2024-12-30',1,390.00),(17,17,2,13,'2024-12-31',3,6900.00),(18,18,3,15,'2025-01-01',1,596.00),(19,19,4,17,'2025-01-02',4,1680.00),(20,20,5,19,'2025-01-03',2,1140.00),(21,21,6,21,'2025-01-04',1,1899.00),(22,22,7,2,'2025-01-05',1,100.00),(23,23,8,4,'2025-01-06',2,1000.00),(24,24,9,6,'2025-01-07',1,7800.00),(25,25,10,8,'2025-01-08',3,1080.00);
/*!40000 ALTER TABLE `serviceusage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24 13:49:34
