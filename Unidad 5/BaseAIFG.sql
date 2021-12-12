CREATE DATABASE  IF NOT EXISTS `fresas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fresas`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fresas
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_Cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido_P` varchar(45) NOT NULL,
  `Apellido_M` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Angel','Fonseca','Gómez'),(2,'Luis','Rivas','Barba'),(3,'Jose','Serna','Santana'),(4,'Marco','Reyes','Rodriguez'),(5,'Sergio','Reyes','Ibarra'),(6,'Iker','Humberto','Terrones'),(7,'Rosa','Gómez','P'),(8,'Israel','Fonseca','Gómez'),(9,'Raquel','Gómez ','Prieto'),(10,'Julieta','Terrones','Fonseca'),(11,'Guadalupe','Delgado','Macias'),(12,'Anette','Estrada','Rodriguez'),(13,'Katheryn','Estrada','Rodriguez'),(14,'Carlos','Andrade','G'),(15,'Faridi','Gomez','Macias'),(16,'Emiliano','Reyes','Ibarra'),(17,'Sergio','Reyes','Ibarra'),(18,'Ernesto','de Santos','Chaves'),(19,'Rogelio','Esparza','Esparza'),(20,'Damian','Reyes','Aguilera'),(21,'Saory','Cruz','Calderon'),(22,'Sam','Smith','Grey'),(23,'Joshua','Rodriguez','Estrada'),(24,'Leon ','Muñoz','Rangel'),(25,'Carlos','Aguilar','Moreno'),(26,'Eymard','Lujano','Montañez'),(27,'Cristofer','Dondiego','Macias'),(28,'Cristofer','Perez','Roman'),(29,'Omar','Puentes','Gómez'),(30,'Jose','Moreno','Arias');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ID_Producto` int NOT NULL AUTO_INCREMENT,
  `Stock` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Producto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'300','40','Fresa'),(2,'400','50','Arandano'),(3,'600','10','Brocoli'),(4,'500','50','Frambuesa');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ID_Ticket` int NOT NULL AUTO_INCREMENT,
  `Productos` varchar(45) NOT NULL,
  `ID_Producto` int NOT NULL,
  `ID_Folio` int NOT NULL,
  PRIMARY KEY (`ID_Ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'4',4,1),(2,'1',1,4),(3,'1',3,5),(4,'1',1,6),(5,'1',1,7),(6,'3',3,8),(7,'1',1,11),(8,'1',1,12),(9,'1',3,13),(10,'1',1,14),(11,'1',1,15),(12,'3',3,16),(13,'1',2,19),(14,'2',2,20),(15,'1',1,22),(16,'1',1,23),(17,'1',2,24),(18,'1',1,25),(19,'1',1,26),(20,'1',2,27),(21,'1',1,28),(22,'1',2,29),(23,'2',2,30),(24,'1',1,32),(25,'1',1,33),(26,'1',2,34),(27,'1',3,35),(28,'1',4,36),(29,'1',1,37),(30,'2',2,38),(31,'1',1,40),(32,'1',4,41),(33,'1',3,42);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `ID_Vendedor` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido_P` varchar(45) NOT NULL,
  `Apellido_M` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Jan','Perez','Rodriguez'),(2,'Julia','Gomez','Lara');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `ID_Folio` int NOT NULL AUTO_INCREMENT,
  `ID_Vendedor` int NOT NULL,
  `ID_Cliente` int NOT NULL,
  `ID_Ticket` int NOT NULL,
  PRIMARY KEY (`ID_Folio`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,1,1,1),(2,2,2,1),(3,3,3,1),(4,1,4,2),(5,2,2,3),(6,2,2,4),(7,2,3,5),(8,2,4,6),(9,1,5,6),(10,4,3,6),(11,1,4,7),(12,1,5,8),(13,1,7,9),(14,2,8,10),(15,2,9,11),(16,2,11,12),(17,1,10,12),(18,3,12,12),(19,1,23,13),(20,1,30,14),(21,2,12,14),(22,1,27,15),(23,1,28,16),(24,2,26,17),(25,1,27,18),(26,2,24,19),(27,1,25,20),(28,1,24,21),(29,1,2,22),(30,1,3,23),(31,2,4,23),(32,2,1,24),(33,2,2,25),(34,1,1,26),(35,2,3,27),(36,1,11,28),(37,1,12,29),(38,1,22,30),(39,1,6,30),(40,1,7,31),(41,2,6,32),(42,2,4,33);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-11 20:06:10
