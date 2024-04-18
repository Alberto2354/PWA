CREATE DATABASE  IF NOT EXISTS `seguridad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `seguridad`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: seguridad
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `acceso`
--

DROP TABLE IF EXISTS `acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acceso` (
  `id_rol` int NOT NULL,
  `id_ubicacion` int NOT NULL,
  PRIMARY KEY (`id_rol`,`id_ubicacion`),
  KEY `id_ubicacion` (`id_ubicacion`),
  CONSTRAINT `acceso_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  CONSTRAINT `acceso_ibfk_2` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicaciones` (`id_ubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acceso`
--

LOCK TABLES `acceso` WRITE;
/*!40000 ALTER TABLE `acceso` DISABLE KEYS */;
INSERT INTO `acceso` VALUES (1,1),(2,1),(3,1),(4,1),(1,3),(2,3),(1,4),(3,4),(6,5),(9,5),(10,5),(6,6),(9,6),(10,6),(1,7),(2,7),(3,7),(5,7),(1,9),(7,9),(1,11),(4,11),(1,13),(8,13),(1,15),(3,15),(1,16),(1,17),(7,17),(1,18),(7,18),(1,19),(7,19),(1,20),(7,20);
/*!40000 ALTER TABLE `acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `id_area` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_departamento` int NOT NULL,
  PRIMARY KEY (`id_area`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `area_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Seguridad Física','Encargados de la seguridad física de la organización',1),(2,'Seguridad de la Información','Encargados de la seguridad informática',1),(3,'Soporte Técnico','Encargados del soporte y mantenimiento de los sistemas',2),(4,'Seguridad Informática','Encargados de garantizar la seguridad de la infraestructura tecnológica',2),(5,'Cumplimiento Normativo','Encargados de asegurar el cumplimiento de regulaciones y normas',3),(6,'Auditoría Interna','Encargados de realizar auditorías internas en la organización',3),(7,'Investigación de Productos','Encargados de la investigación y desarrollo de nuevos productos',4),(8,'Desarrollo Tecnológico','Encargados del desarrollo de nuevas tecnologías',4),(9,'Asesoría Legal','Encargados de brindar asesoramiento legal',5),(10,'Gestión de Contratos','Encargados de gestionar los contratos legales de la organización',5);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id_departamento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Seguridad','Departamento encargado de la seguridad física y protección de la organización'),(2,'Tecnología de la Información','Departamento encargado de la gestión de la infraestructura tecnológica y la seguridad informática'),(3,'Cumplimiento y Auditoría','Departamento encargado de garantizar el cumplimiento normativo y realizar auditorías internas'),(4,'Investigación y Desarrollo','Departamento encargado de la investigación y desarrollo de nuevos productos o tecnologías'),(5,'Legal','Departamento encargado de brindar asesoramiento legal y gestionar los aspectos legales de la organización');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huellas`
--

DROP TABLE IF EXISTS `huellas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huellas` (
  `id_huella` int NOT NULL AUTO_INCREMENT,
  `huella` longtext NOT NULL,
  `fecha_registro` date NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_huella`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `huellas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huellas`
--

LOCK TABLES `huellas` WRITE;
/*!40000 ALTER TABLE `huellas` DISABLE KEYS */;
INSERT INTO `huellas` VALUES (1,'huella1','2023-11-29',1),(2,'huella2','2023-11-29',2),(3,'huella3','2023-11-29',3),(4,'huella4','2023-11-29',4),(5,'huella5','2023-11-29',5),(6,'huella6','2023-11-29',6),(7,'huella7','2023-11-29',7),(8,'huella8','2023-11-29',8),(9,'huella9','2023-11-29',9),(10,'huella10','2023-11-29',10),(11,'huella11','2023-11-29',11),(12,'huella12','2023-11-29',12),(13,'huella13','2023-11-29',13),(14,'huella14','2023-11-29',14),(15,'huella15','2023-11-29',15),(16,'huella16','2023-11-29',16),(17,'huella17','2023-11-29',17),(18,'huella18','2023-11-29',18),(19,'huella19','2023-11-29',19),(20,'huella20','2023-11-29',20);
/*!40000 ALTER TABLE `huellas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0000_00_00_000000_create_websockets_statistics_entries_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\Usuario',52093,'auth_token','7f759ab460b838671539f1cf0dfd5c30ba22562091b3d1969517a1b24b39b2e2','[\"*\"]',NULL,NULL,'2023-11-30 15:51:55','2023-11-30 15:51:55'),(2,'App\\Models\\Usuario',52093,'auth_token','cbed50fdd5c36254f38cb3899cc233d56bb6525aa858492115fc6a7c9785e2b1','[\"*\"]','2023-11-30 16:26:50',NULL,'2023-11-30 15:54:07','2023-11-30 16:26:50'),(3,'App\\Models\\Usuario',52093,'auth_token','be422a9614acddecdaf24382ae0e11251ac6e0d69b3556fc992bb80c66076673','[\"*\"]',NULL,NULL,'2023-11-30 19:40:14','2023-11-30 19:40:14'),(4,'App\\Models\\Usuario',52093,'auth_token','c96583e0c42b96bda6b46d238fdaa1af79dc614ccd68d0417f53691433b3736d','[\"*\"]',NULL,NULL,'2023-11-30 19:42:04','2023-11-30 19:42:04'),(5,'App\\Models\\Usuario',52093,'auth_token','4f7d33ad4c30479f2c7285053655eef9b7753c3c40e5bcb799f518eb6f2c5e91','[\"*\"]',NULL,NULL,'2023-11-30 19:42:12','2023-11-30 19:42:12'),(6,'App\\Models\\Usuario',52093,'auth_token','da74c376dc3f38043e023c3f7b46cd022a99244d41d45df95de699eede306446','[\"*\"]',NULL,NULL,'2023-11-30 19:44:50','2023-11-30 19:44:50'),(7,'App\\Models\\Usuario',52093,'auth_token','5262d21cce9ecdee820e7c2fb383021d77b4b81096c647242e395585487da029','[\"*\"]',NULL,NULL,'2023-11-30 19:49:32','2023-11-30 19:49:32'),(8,'App\\Models\\Usuario',52093,'auth_token','fc688f8c6522a1beae591087d6cd45108f7f9f81890273b591f43586ca64bfaa','[\"*\"]',NULL,NULL,'2023-11-30 19:52:40','2023-11-30 19:52:40'),(9,'App\\Models\\Usuario',52093,'auth_token','c445ba19d694513118ef93969945de6f8e410963dab2ca6b7ac802c4cd6369c0','[\"*\"]','2023-11-30 20:11:50',NULL,'2023-11-30 20:09:12','2023-11-30 20:11:50'),(10,'App\\Models\\Usuario',52093,'auth_token','c63adcfe6260b5f29e4ad009145f2142e655c8e2cfb71c2fc5e22c58d49514e8','[\"*\"]','2023-11-30 20:14:38',NULL,'2023-11-30 20:14:11','2023-11-30 20:14:38'),(11,'App\\Models\\Usuario',52093,'auth_token','2a42338552d4f0b491bc613fcd00e6161809f71ad523d694bb78228ead312b65','[\"*\"]','2023-11-30 20:18:13',NULL,'2023-11-30 20:15:10','2023-11-30 20:18:13'),(12,'App\\Models\\Usuario',52093,'auth_token','e1db3726c0248080bdf39d39886626c0a6445f4530721231ef22d6e080491123','[\"*\"]',NULL,NULL,'2023-11-30 20:18:37','2023-11-30 20:18:37'),(13,'App\\Models\\Usuario',52093,'auth_token','b66ba3083da35837016176ebd2a859f688d4c144f138f90c3acc1374746852f5','[\"*\"]','2023-11-30 20:37:55',NULL,'2023-11-30 20:29:01','2023-11-30 20:37:55'),(14,'App\\Models\\Usuario',52093,'auth_token','d47086959aa099a212b85d1c4d00468bd3ba7175b0b71e425e8ee69b908a4b64','[\"*\"]','2023-11-30 20:46:08',NULL,'2023-11-30 20:45:32','2023-11-30 20:46:08'),(15,'App\\Models\\Usuario',52093,'auth_token','9e6405fa09a4112f5da785dff530938ade2cbb369ce0e1b03ae0c3b4ecd5bd63','[\"*\"]','2023-11-30 21:46:28',NULL,'2023-11-30 20:49:27','2023-11-30 21:46:28'),(16,'App\\Models\\Usuario',52093,'auth_token','4657176551ddb8fb29beb70beee079fe057c85828f4a8de7f36847a72597fc68','[\"*\"]','2023-11-30 22:56:39',NULL,'2023-11-30 22:54:38','2023-11-30 22:56:39'),(17,'App\\Models\\Usuario',52093,'auth_token','a6922f9431bf03a4f1d10508c2bf4c8d60279128c9d02da6e59a71ba559526b7','[\"*\"]',NULL,NULL,'2023-11-30 23:06:58','2023-11-30 23:06:58'),(18,'App\\Models\\Usuario',52093,'auth_token','8bfb0059829b5eccd977d26e89955f080d20b223cffcf2580dbfcb5b35b3bb18','[\"*\"]','2023-12-01 00:06:44',NULL,'2023-11-30 23:08:39','2023-12-01 00:06:44'),(19,'App\\Models\\Usuario',52093,'auth_token','64286e9fdd6ea8bbc607b0b7fe9b188a29929f1bc88ee0805c9488cb08b86b09','[\"*\"]','2023-12-01 01:18:10',NULL,'2023-12-01 00:18:21','2023-12-01 01:18:10'),(20,'App\\Models\\Usuario',52093,'auth_token','a47417333a18ab41bc1f850ccef61c773ca5a54a1f3db2b7f99b64cbf9db0f3b','[\"*\"]','2023-12-07 12:58:46',NULL,'2023-12-07 11:59:54','2023-12-07 12:58:46'),(21,'App\\Models\\Usuario',52093,'auth_token','cee8021c89de0ecb0399fa8fcd582f65b2f9a98fd9d59fac09111a9b86dfd698','[\"*\"]','2023-12-07 14:00:49',NULL,'2023-12-07 13:01:19','2023-12-07 14:00:49'),(22,'App\\Models\\Usuario',52093,'auth_token','1b9fb8498ff3d648c76059cbe95f075222df947039c7a917601f943135bb4ad7','[\"*\"]','2023-12-07 14:02:51',NULL,'2023-12-07 14:02:45','2023-12-07 14:02:51'),(23,'App\\Models\\Usuario',52093,'auth_token','c497c7a26f8bc338d1490308cb87866abe10b442017afd25054abec8d66b4df3','[\"*\"]','2023-12-07 14:26:43',NULL,'2023-12-07 14:02:46','2023-12-07 14:26:43'),(24,'App\\Models\\Usuario',52093,'auth_token','eda43c1df425ac3c18e1c84a6c97dbad7bba36887e70066f3738b78c8884d75f','[\"*\"]','2023-12-07 15:01:24',NULL,'2023-12-07 14:33:23','2023-12-07 15:01:24');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_accesos`
--

DROP TABLE IF EXISTS `registro_accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_accesos` (
  `id_acceso` int NOT NULL AUTO_INCREMENT,
  `fecha_hora` datetime NOT NULL,
  `resultado` varchar(50) NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_sensor` int NOT NULL,
  PRIMARY KEY (`id_acceso`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_sensor` (`id_sensor`),
  CONSTRAINT `registro_accesos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `registro_accesos_ibfk_2` FOREIGN KEY (`id_sensor`) REFERENCES `sensores` (`id_sensor`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_accesos`
--

LOCK TABLES `registro_accesos` WRITE;
/*!40000 ALTER TABLE `registro_accesos` DISABLE KEYS */;
INSERT INTO `registro_accesos` VALUES (63,'2019-07-01 08:15:00','1',1,1),(64,'2019-07-02 12:30:00','1',2,2),(65,'2019-07-03 16:45:00','1',3,7),(66,'2019-07-04 09:00:00','0',4,8),(67,'2019-07-05 14:20:00','1',5,1),(68,'2019-07-06 10:05:00','1',6,2),(69,'2019-07-07 18:30:00','0',7,7),(70,'2019-07-08 07:45:00','1',8,8),(71,'2019-07-09 11:10:00','1',9,1),(72,'2019-07-10 15:25:00','1',10,2),(73,'2019-07-11 08:40:00','0',11,7),(74,'2019-07-12 13:00:00','1',12,8),(75,'2019-07-13 17:15:00','1',13,1),(76,'2019-07-14 09:30:00','1',14,2),(77,'2019-07-15 14:50:00','0',15,7),(78,'2019-07-16 10:05:00','1',16,8),(79,'2019-07-17 19:20:00','1',17,1),(80,'2019-07-18 07:35:00','1',18,2),(81,'2019-07-19 11:50:00','0',19,7),(82,'2019-07-20 16:10:00','1',20,8),(83,'2019-07-21 08:25:00','0',NULL,1),(84,'2019-07-22 12:40:00','0',NULL,2),(85,'2019-07-23 16:55:00','0',NULL,7),(86,'2019-07-24 09:10:00','0',NULL,8),(87,'2019-07-25 14:30:00','0',NULL,1),(88,'2019-07-26 10:45:00','0',NULL,2),(89,'2019-07-27 18:00:00','0',NULL,7),(90,'2019-07-28 07:15:00','0',NULL,8),(91,'2019-07-29 11:30:00','0',NULL,1),(92,'2019-07-30 15:45:00','0',NULL,2),(93,'2019-07-31 09:00:00','0',NULL,7),(94,'2019-07-01 08:15:00','1',1,1),(95,'2019-07-02 12:30:00','1',2,2),(96,'2019-07-03 16:45:00','1',3,7),(97,'2019-07-04 09:00:00','0',4,8),(98,'2019-07-05 14:20:00','1',5,1),(99,'2019-07-06 10:05:00','1',6,2),(100,'2019-07-07 18:30:00','0',7,7),(101,'2019-07-08 07:45:00','1',8,8),(102,'2019-07-09 11:10:00','1',9,1),(103,'2019-07-10 15:25:00','1',10,2),(104,'2019-07-11 08:40:00','0',11,7),(105,'2019-07-12 13:00:00','1',12,8),(106,'2019-07-13 17:15:00','1',13,1),(107,'2019-07-14 09:30:00','1',14,2),(108,'2019-07-15 14:50:00','0',15,7),(109,'2019-07-16 10:05:00','1',16,8),(110,'2019-07-17 19:20:00','1',17,1),(111,'2019-07-18 07:35:00','1',18,2),(112,'2019-07-19 11:50:00','0',19,7),(113,'2019-07-20 16:10:00','1',20,8),(114,'2019-07-21 08:25:00','0',NULL,1),(115,'2019-07-22 12:40:00','0',NULL,2),(116,'2019-07-23 16:55:00','0',NULL,7),(117,'2019-07-24 09:10:00','0',NULL,8),(118,'2019-07-25 14:30:00','0',NULL,1),(119,'2019-07-26 10:45:00','0',NULL,2),(120,'2019-07-27 18:00:00','0',NULL,7),(121,'2019-07-28 07:15:00','0',NULL,8),(122,'2019-07-29 11:30:00','0',NULL,1),(123,'2019-07-30 15:45:00','0',NULL,2),(124,'2019-07-31 09:00:00','0',NULL,7),(125,'2019-08-01 08:15:00','1',1,1),(126,'2019-08-02 12:30:00','1',2,2),(127,'2019-08-03 16:45:00','1',3,7),(128,'2019-08-04 09:00:00','0',4,8),(129,'2019-08-05 14:20:00','1',5,1),(130,'2019-08-06 10:05:00','1',6,2),(131,'2019-08-07 18:30:00','0',7,7),(132,'2019-08-08 07:45:00','1',8,8),(133,'2019-08-09 11:10:00','1',9,1),(134,'2019-08-10 15:25:00','1',10,2),(135,'2019-08-11 08:40:00','0',11,7),(136,'2019-08-12 13:00:00','1',12,8),(137,'2019-08-13 17:15:00','1',13,1),(138,'2019-08-14 09:30:00','1',14,2),(139,'2019-08-15 14:50:00','0',15,7),(140,'2019-08-16 10:05:00','1',16,8),(141,'2019-08-17 19:20:00','1',17,1),(142,'2019-08-18 07:35:00','1',18,2),(143,'2019-08-19 11:50:00','0',19,7),(144,'2019-08-20 16:10:00','1',20,8),(145,'2019-08-21 08:25:00','0',NULL,1),(146,'2019-08-22 12:40:00','0',NULL,2),(147,'2019-08-23 16:55:00','0',NULL,7),(148,'2019-08-24 09:10:00','0',NULL,8),(149,'2019-08-25 14:30:00','0',NULL,1),(150,'2019-08-26 10:45:00','0',NULL,2),(151,'2019-08-27 18:00:00','0',NULL,7),(152,'2019-08-28 07:15:00','0',NULL,8),(153,'2019-08-29 11:30:00','0',NULL,1),(154,'2019-08-30 15:45:00','0',NULL,2),(155,'2019-08-31 09:00:00','0',NULL,7),(156,'2019-08-01 08:15:00','1',1,1),(157,'2019-08-02 12:30:00','1',2,2),(158,'2019-08-03 16:45:00','1',3,7),(159,'2019-08-04 09:00:00','0',4,8),(160,'2019-08-05 14:20:00','1',5,1),(161,'2019-08-06 10:05:00','1',6,2),(162,'2019-08-07 18:30:00','0',7,7),(163,'2019-08-08 07:45:00','1',8,8),(164,'2019-08-09 11:10:00','1',9,1),(165,'2019-08-10 15:25:00','1',10,2),(166,'2019-08-11 08:40:00','0',11,7),(167,'2019-08-12 13:00:00','1',12,8),(168,'2019-08-13 17:15:00','1',13,1),(169,'2019-08-14 09:30:00','1',14,2),(170,'2019-08-15 14:50:00','0',15,7),(171,'2019-08-16 10:05:00','1',16,8),(172,'2019-08-17 19:20:00','1',17,1),(173,'2019-08-18 07:35:00','1',18,2),(174,'2019-08-19 11:50:00','0',19,7),(175,'2019-08-20 16:10:00','1',20,8),(176,'2019-08-21 08:25:00','0',NULL,1),(177,'2019-08-22 12:40:00','0',NULL,2),(178,'2019-08-23 16:55:00','0',NULL,7),(179,'2019-08-24 09:10:00','0',NULL,8),(180,'2019-08-25 14:30:00','0',NULL,1),(181,'2019-08-26 10:45:00','0',NULL,2),(182,'2019-08-27 18:00:00','0',NULL,7),(183,'2019-08-28 07:15:00','0',NULL,8),(184,'2019-08-29 11:30:00','0',NULL,1),(185,'2019-08-30 15:45:00','0',NULL,2),(186,'2019-08-31 09:00:00','0',NULL,7),(187,'2019-09-01 08:15:00','1',1,1),(188,'2019-09-02 12:30:00','1',2,2),(189,'2019-09-03 16:45:00','1',3,7),(190,'2019-09-04 09:00:00','0',4,8),(191,'2019-09-05 14:20:00','1',5,1),(192,'2019-09-06 10:05:00','1',6,2),(193,'2019-09-07 18:30:00','0',7,7),(194,'2019-09-08 07:45:00','1',8,8),(195,'2019-09-09 11:10:00','1',9,1),(196,'2019-09-10 15:25:00','1',10,2),(197,'2019-09-11 08:40:00','0',11,7),(198,'2019-09-12 13:00:00','1',12,8),(199,'2019-09-13 17:15:00','1',13,1),(200,'2019-09-14 09:30:00','1',14,2),(201,'2019-09-15 14:50:00','0',15,7),(202,'2019-09-16 10:05:00','1',16,8),(203,'2019-09-17 19:20:00','1',17,1),(204,'2019-09-18 07:35:00','1',18,2),(205,'2019-09-19 11:50:00','0',19,7),(206,'2019-09-20 16:10:00','1',20,8),(207,'2019-09-21 08:25:00','0',NULL,1),(208,'2019-09-22 12:40:00','0',NULL,2),(209,'2019-09-23 16:55:00','0',NULL,7),(210,'2019-09-24 09:10:00','0',NULL,8),(211,'2019-09-25 14:30:00','0',NULL,1),(212,'2019-09-26 10:45:00','0',NULL,2),(213,'2019-09-27 18:00:00','0',NULL,7),(214,'2019-09-28 07:15:00','0',NULL,8),(215,'2019-09-29 11:30:00','0',NULL,1),(216,'2019-09-30 15:45:00','0',NULL,2),(217,'2019-09-01 08:15:00','1',1,1),(218,'2019-09-02 12:30:00','1',2,2),(219,'2019-09-03 16:45:00','1',3,7),(220,'2019-09-04 09:00:00','0',4,8),(221,'2019-09-05 14:20:00','1',5,1),(222,'2019-09-06 10:05:00','1',6,2),(223,'2019-09-07 18:30:00','0',7,7),(224,'2019-09-08 07:45:00','1',8,8),(225,'2019-09-09 11:10:00','1',9,1),(226,'2019-09-10 15:25:00','1',10,2),(227,'2019-09-11 08:40:00','0',11,7),(228,'2019-09-12 13:00:00','1',12,8),(229,'2019-09-13 17:15:00','1',13,1),(230,'2019-09-14 09:30:00','1',14,2),(231,'2019-09-15 14:50:00','0',15,7),(232,'2019-09-16 10:05:00','1',16,8),(233,'2019-09-17 19:20:00','1',17,1),(234,'2019-09-18 07:35:00','1',18,2),(235,'2019-09-19 11:50:00','0',19,7),(236,'2019-09-20 16:10:00','1',20,8),(237,'2019-09-21 08:25:00','0',NULL,1),(238,'2019-09-22 12:40:00','0',NULL,2),(239,'2019-09-23 16:55:00','0',NULL,7),(240,'2019-09-24 09:10:00','0',NULL,8),(241,'2019-09-25 14:30:00','0',NULL,1),(242,'2019-09-26 10:45:00','0',NULL,2),(243,'2019-09-27 18:00:00','0',NULL,7),(244,'2019-09-28 07:15:00','0',NULL,8),(245,'2019-09-29 11:30:00','0',NULL,1),(246,'2019-09-30 15:45:00','0',NULL,2),(247,'2019-08-01 08:15:00','1',1,1),(248,'2019-08-02 12:30:00','1',2,2),(249,'2019-08-03 16:45:00','1',3,7),(250,'2019-08-04 09:00:00','0',4,8),(251,'2019-08-05 14:20:00','1',5,1),(252,'2019-08-06 10:05:00','1',6,2),(253,'2019-08-07 18:30:00','0',7,7),(254,'2019-08-08 07:45:00','1',8,8),(255,'2019-08-09 11:10:00','1',9,1),(256,'2019-08-10 15:25:00','1',10,2),(257,'2019-08-11 08:40:00','0',11,7),(258,'2019-08-12 13:00:00','1',12,8),(259,'2019-08-13 17:15:00','1',13,1),(260,'2019-08-14 09:30:00','1',14,2),(261,'2019-08-15 14:50:00','0',15,7),(262,'2019-08-16 10:05:00','1',16,8),(263,'2019-08-17 19:20:00','1',17,1),(264,'2019-08-18 07:35:00','1',18,2),(265,'2019-08-19 11:50:00','0',19,7),(266,'2019-08-20 16:10:00','1',20,8),(267,'2019-08-21 08:25:00','0',NULL,1),(268,'2019-08-22 12:40:00','0',NULL,2),(269,'2019-08-23 16:55:00','0',NULL,7),(270,'2019-08-24 09:10:00','0',NULL,8),(271,'2019-08-25 14:30:00','0',NULL,1),(272,'2019-08-26 10:45:00','0',NULL,2),(273,'2019-08-27 18:00:00','0',NULL,7),(274,'2019-08-28 07:15:00','0',NULL,8),(275,'2019-08-29 11:30:00','0',NULL,1),(276,'2019-08-30 15:45:00','0',NULL,2),(277,'2019-08-31 09:00:00','0',NULL,7),(278,'2019-08-01 08:15:00','1',1,1),(279,'2019-08-02 12:30:00','1',2,2),(280,'2019-08-03 16:45:00','1',3,7),(281,'2019-08-04 09:00:00','0',4,8),(282,'2019-08-05 14:20:00','1',5,1),(283,'2019-08-06 10:05:00','1',6,2),(284,'2019-08-07 18:30:00','0',7,7),(285,'2019-08-08 07:45:00','1',8,8),(286,'2019-08-09 11:10:00','1',9,1),(287,'2019-08-10 15:25:00','1',10,2),(288,'2019-08-11 08:40:00','0',11,7),(289,'2019-08-12 13:00:00','1',12,8),(290,'2019-08-13 17:15:00','1',13,1),(291,'2019-08-14 09:30:00','1',14,2),(292,'2019-08-15 14:50:00','0',15,7),(293,'2019-08-16 10:05:00','1',16,8),(294,'2019-08-17 19:20:00','1',17,1),(295,'2019-08-18 07:35:00','1',18,2),(296,'2019-08-19 11:50:00','0',19,7),(297,'2019-08-20 16:10:00','1',20,8),(298,'2019-08-21 08:25:00','0',NULL,1),(299,'2019-08-22 12:40:00','0',NULL,2),(300,'2019-08-23 16:55:00','0',NULL,7),(301,'2019-08-24 09:10:00','0',NULL,8),(302,'2019-08-25 14:30:00','0',NULL,1),(303,'2019-08-26 10:45:00','0',NULL,2),(304,'2019-08-27 18:00:00','0',NULL,7),(305,'2019-08-28 07:15:00','0',NULL,8),(306,'2019-08-29 11:30:00','0',NULL,1),(307,'2019-08-30 15:45:00','0',NULL,2),(308,'2019-08-31 09:00:00','0',NULL,7),(309,'2019-09-01 08:15:00','1',1,1),(310,'2019-09-02 12:30:00','1',2,2),(311,'2019-09-03 16:45:00','1',3,7),(312,'2019-09-04 09:00:00','0',4,8),(313,'2019-09-05 14:20:00','1',5,1),(314,'2019-09-06 10:05:00','1',6,2),(315,'2019-09-07 18:30:00','0',7,7),(316,'2019-09-08 07:45:00','1',8,8),(317,'2019-09-09 11:10:00','1',9,1),(318,'2019-09-10 15:25:00','1',10,2),(319,'2019-09-11 08:40:00','0',11,7),(320,'2019-09-12 13:00:00','1',12,8),(321,'2019-09-13 17:15:00','1',13,1),(322,'2019-09-14 09:30:00','1',14,2),(323,'2019-09-15 14:50:00','0',15,7),(324,'2019-09-16 10:05:00','1',16,8),(325,'2019-09-17 19:20:00','1',17,1),(326,'2019-09-18 07:35:00','1',18,2),(327,'2019-09-19 11:50:00','0',19,7),(328,'2019-09-20 16:10:00','1',20,8),(329,'2019-09-21 08:25:00','0',NULL,1),(330,'2019-09-22 12:40:00','0',NULL,2),(331,'2019-09-23 16:55:00','0',NULL,7),(332,'2019-09-24 09:10:00','0',NULL,8),(333,'2019-09-25 14:30:00','0',NULL,1),(334,'2019-09-26 10:45:00','0',NULL,2),(335,'2019-09-27 18:00:00','0',NULL,7),(336,'2019-09-28 07:15:00','0',NULL,8),(337,'2019-09-29 11:30:00','0',NULL,1),(338,'2019-09-30 15:45:00','0',NULL,2),(339,'2019-09-01 08:15:00','1',1,1),(340,'2019-09-02 12:30:00','1',2,2),(341,'2019-09-03 16:45:00','1',3,7),(342,'2019-09-04 09:00:00','0',4,8),(343,'2019-09-05 14:20:00','1',5,1),(344,'2019-09-06 10:05:00','1',6,2),(345,'2019-09-07 18:30:00','0',7,7),(346,'2019-09-08 07:45:00','1',8,8),(347,'2019-09-09 11:10:00','1',9,1),(348,'2019-09-10 15:25:00','1',10,2),(349,'2019-09-11 08:40:00','0',11,7),(350,'2019-09-12 13:00:00','1',12,8),(351,'2019-09-13 17:15:00','1',13,1),(352,'2019-09-14 09:30:00','1',14,2),(353,'2019-09-15 14:50:00','0',15,7),(354,'2019-09-16 10:05:00','1',16,8),(355,'2019-09-17 19:20:00','1',17,1),(356,'2019-09-18 07:35:00','1',18,2),(357,'2019-09-19 11:50:00','0',19,7),(358,'2019-09-20 16:10:00','1',20,8),(359,'2019-09-21 08:25:00','0',NULL,1),(360,'2019-09-22 12:40:00','0',NULL,2),(361,'2019-09-23 16:55:00','0',NULL,7),(362,'2019-09-24 09:10:00','0',NULL,8),(363,'2019-09-25 14:30:00','0',NULL,1),(364,'2019-09-26 10:45:00','0',NULL,2),(365,'2019-09-27 18:00:00','0',NULL,7),(366,'2019-09-28 07:15:00','0',NULL,8),(367,'2019-09-29 11:30:00','0',NULL,1),(368,'2019-09-30 15:45:00','0',NULL,2);
/*!40000 ALTER TABLE `registro_accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_usuarios`
--

DROP TABLE IF EXISTS `registro_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_usuarios` (
  `id_registro` int NOT NULL AUTO_INCREMENT,
  `fecha_registro` datetime NOT NULL,
  `id_usuario_registrador` int NOT NULL,
  `id_usuario_nuevo` int NOT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `id_usuario_registrador` (`id_usuario_registrador`),
  KEY `id_usuario_nuevo` (`id_usuario_nuevo`),
  CONSTRAINT `registro_usuarios_ibfk_1` FOREIGN KEY (`id_usuario_registrador`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `registro_usuarios_ibfk_2` FOREIGN KEY (`id_usuario_nuevo`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_usuarios`
--

LOCK TABLES `registro_usuarios` WRITE;
/*!40000 ALTER TABLE `registro_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Analista de Seguridad'),(3,'Ingeniero de Seguridad'),(4,'Auditor de Seguridad'),(5,'Especialista en Ciberseguridad'),(6,'Gerente de TI'),(7,'Asesor Legal'),(8,'Investigador de Desarrollo'),(9,'Técnico de Soporte'),(10,'Empleado Regular');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_movimiento`
--

DROP TABLE IF EXISTS `sensor_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor_movimiento` (
  `id_deteccion` int NOT NULL AUTO_INCREMENT,
  `id_sensor` int NOT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` bit(1) NOT NULL,
  PRIMARY KEY (`id_deteccion`),
  KEY `id_sensor` (`id_sensor`),
  CONSTRAINT `sensor_movimiento_ibfk_1` FOREIGN KEY (`id_sensor`) REFERENCES `sensores` (`id_sensor`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_movimiento`
--

LOCK TABLES `sensor_movimiento` WRITE;
/*!40000 ALTER TABLE `sensor_movimiento` DISABLE KEYS */;
INSERT INTO `sensor_movimiento` VALUES (1,1,'2023-08-04 08:00:00',_binary ''),(2,2,'2023-08-04 08:05:00',_binary '\0'),(3,3,'2023-08-04 08:10:00',_binary ''),(4,4,'2023-08-04 08:15:00',_binary '\0'),(5,5,'2023-08-04 08:20:00',_binary ''),(6,6,'2023-08-04 08:25:00',_binary '\0'),(7,7,'2023-08-04 08:30:00',_binary ''),(8,8,'2023-08-04 08:35:00',_binary '\0'),(9,9,'2023-08-04 08:40:00',_binary ''),(10,10,'2023-08-04 08:45:00',_binary '\0'),(11,11,'2023-08-04 08:50:00',_binary ''),(12,12,'2023-08-04 08:55:00',_binary '\0');
/*!40000 ALTER TABLE `sensor_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensores`
--

DROP TABLE IF EXISTS `sensores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensores` (
  `id_sensor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `id_tipo_sensor` int NOT NULL,
  `fecha_instalacion` date NOT NULL,
  `id_ubicacion` int NOT NULL,
  PRIMARY KEY (`id_sensor`),
  KEY `id_tipo_sensor` (`id_tipo_sensor`),
  KEY `id_ubicacion` (`id_ubicacion`),
  CONSTRAINT `sensores_ibfk_1` FOREIGN KEY (`id_tipo_sensor`) REFERENCES `tipo_sensor` (`id_tipo_sensor`),
  CONSTRAINT `sensores_ibfk_2` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicaciones` (`id_ubicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensores`
--

LOCK TABLES `sensores` WRITE;
/*!40000 ALTER TABLE `sensores` DISABLE KEYS */;
INSERT INTO `sensores` VALUES (1,'Sensor Control de Acceso 1',2,'2022-01-01',1),(2,'Sensor Control de Acceso 2',2,'2022-01-01',1),(3,'Sensor Huella Control de Acceso',1,'2022-01-01',1),(4,'Sensor Vigilancia Perimetral 1',2,'2022-01-01',2),(5,'Sensor Vigilancia Perimetral 2',2,'2022-01-01',2),(6,'Sensor Huella Vigilancia Perimetral',1,'2022-01-01',2),(7,'Sensor Centro de Datos 1',2,'2022-01-01',3),(8,'Sensor Centro de Datos 2',2,'2022-01-01',3),(9,'Sensor Huella Centro de Datos',1,'2022-01-01',3),(10,'Sensor Seguridad de Redes 1',2,'2022-01-01',4),(11,'Sensor Seguridad de Redes 2',2,'2022-01-01',4),(12,'Sensor Huella Seguridad de Redes',1,'2022-01-01',4),(13,'Sensor Oficina 101',2,'2022-01-01',5),(14,'Sensor Huella Oficina 101',1,'2022-01-01',5),(15,'Sensor Oficina 102',2,'2022-01-01',6),(16,'Sensor Huella Oficina 102',1,'2022-01-01',6),(17,'Sensor Sala de Servidores 1',2,'2022-01-01',7),(18,'Sensor Sala de Servidores 2',2,'2022-01-01',7),(19,'Sensor Huella Sala de Servidores',1,'2022-01-01',7),(20,'Sensor Centro de Monitoreo 1',2,'2022-01-01',8),(21,'Sensor Centro de Monitoreo 2',2,'2022-01-01',8),(22,'Sensor Huella Centro de Monitoreo',1,'2022-01-01',8),(23,'Sensor Oficina Cumplimiento 1',2,'2022-01-01',9),(24,'Sensor Huella Oficina Cumplimiento',1,'2022-01-01',9),(25,'Sensor Sala de Auditorías 1',2,'2022-01-01',10),(26,'Sensor Sala de Auditorías 2',2,'2022-01-01',10),(27,'Sensor Huella Sala de Auditorías',1,'2022-01-01',10);
/*!40000 ALTER TABLE `sensores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_sensor`
--

DROP TABLE IF EXISTS `tipo_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_sensor` (
  `id_tipo_sensor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipo_sensor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_sensor`
--

LOCK TABLES `tipo_sensor` WRITE;
/*!40000 ALTER TABLE `tipo_sensor` DISABLE KEYS */;
INSERT INTO `tipo_sensor` VALUES (1,'Sensor de Huellas','Sensor biométrico para escanear huellas digitales.'),(2,'Sensor de Movimiento','Sensor que detecta movimientos en su área de cobertura.');
/*!40000 ALTER TABLE `tipo_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicaciones`
--

DROP TABLE IF EXISTS `ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicaciones` (
  `id_ubicacion` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  `id_area` int DEFAULT NULL,
  PRIMARY KEY (`id_ubicacion`),
  KEY `id_area` (`id_area`),
  CONSTRAINT `ubicaciones_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES (1,'Piso 1 - Control de Acceso',1),(2,'Piso 2 - Vigilancia Perimetral',1),(3,'Centro de Datos',2),(4,'Sala de Seguridad de Redes',2),(5,'Oficina 101',3),(6,'Oficina 102',3),(7,'Sala de Servidores',4),(8,'Centro de Monitoreo',4),(9,'Oficina de Cumplimiento',5),(10,'Sala de Auditorías',5),(11,'Oficina de Auditoría',6),(12,'Sala de Reuniones de Auditoría',6),(13,'Laboratorio de Investigación',7),(14,'Sala de Prototipos',7),(15,'Sala de Innovación',8),(16,'Área de Desarrollo de Software',8),(17,'Despacho Legal 1',9),(18,'Despacho Legal 2',9),(19,'Oficina de Contratos',10),(20,'Sala de Archivo Legal',10);
/*!40000 ALTER TABLE `ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `prim_apellido` varchar(50) NOT NULL,
  `seg_apellido` varchar(50) NOT NULL,
  `clave_acceso` varchar(200) NOT NULL,
  `fecha_registro` date NOT NULL,
  `id_area` int NOT NULL,
  `id_rol` int NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_area` (`id_area`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan','Gómez','Pérez','clave1','2023-11-29',1,1,1),(2,'María','López','Martínez','clave2','2023-11-29',2,2,1),(3,'Carlos','Rodríguez','Sánchez','clave3','2023-11-29',3,3,1),(4,'Ana','Martínez','González','clave4','2023-11-29',1,4,1),(5,'Pedro','Fernández','Ramírez','clave5','2023-11-29',2,5,1),(6,'Laura','Gutiérrez','Hernández','clave6','2023-11-29',3,6,1),(7,'Javier','Díaz','Jiménez','clave7','2023-11-29',1,7,1),(8,'Carmen','Ruiz','Romero','clave8','2023-11-29',2,8,1),(9,'Manuel','Pérez','Gómez','clave9','2023-11-29',3,9,1),(10,'Isabel','Sánchez','López','clave10','2023-11-29',1,10,1),(11,'Miguel','Ramírez','Fernández','clave11','2023-11-29',2,1,1),(12,'Raquel','Jiménez','Díaz','clave12','2023-11-29',3,2,1),(13,'Antonio','Romero','Ruiz','clave13','2023-11-29',1,3,1),(14,'Elena','González','Martínez','clave14','2023-11-29',2,4,1),(15,'Pablo','Hernández','Gutiérrez','clave15','2023-11-29',3,5,1),(16,'Natalia','Martínez','Fernández','clave16','2023-11-29',1,6,1),(17,'Sergio','Jiménez','Ruiz','clave17','2023-11-29',2,7,1),(18,'Silvia','Romero','Gómez','clave18','2023-11-29',3,8,1),(19,'Hugo','Gómez','Díaz','clave19','2023-11-29',1,9,1),(20,'Lucía','Díaz','Sánchez','clave20','2023-11-29',2,10,1),(52093,'Luis Roberto','Roque','Vargas','$2y$12$auXQUkLqmbxMZL3GUzpoqeiTsGoFMVi7kFsLPA/fmwDsOhdYnrWG2','2023-11-29',8,1,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_acceso`
--

DROP TABLE IF EXISTS `vista_acceso`;
/*!50001 DROP VIEW IF EXISTS `vista_acceso`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_acceso` AS SELECT 
 1 AS `id_rol`,
 1 AS `Rol`,
 1 AS `id_ubicacion`,
 1 AS `UBICACION_ACCESO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_areas`
--

DROP TABLE IF EXISTS `vista_areas`;
/*!50001 DROP VIEW IF EXISTS `vista_areas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_areas` AS SELECT 
 1 AS `id_area`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `departamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_registro_accesos`
--

DROP TABLE IF EXISTS `vista_registro_accesos`;
/*!50001 DROP VIEW IF EXISTS `vista_registro_accesos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_registro_accesos` AS SELECT 
 1 AS `fecha_hora`,
 1 AS `resultado`,
 1 AS `id_usuario`,
 1 AS `NombreUsuario`,
 1 AS `ubicacion`,
 1 AS `nombre_area`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_registro_de_usuarios`
--

DROP TABLE IF EXISTS `vista_registro_de_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vista_registro_de_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_registro_de_usuarios` AS SELECT 
 1 AS `fecha_registro`,
 1 AS `id_usuario_registrador`,
 1 AS `NombreRegistrador`,
 1 AS `id_usuario_nuevo`,
 1 AS `NombreUsuarioNuevo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_sensores`
--

DROP TABLE IF EXISTS `vista_sensores`;
/*!50001 DROP VIEW IF EXISTS `vista_sensores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_sensores` AS SELECT 
 1 AS `id_sensor`,
 1 AS `nombre`,
 1 AS `tipo_sensor`,
 1 AS `fecha_instalacion`,
 1 AS `ubicacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_sensores_movimiento`
--

DROP TABLE IF EXISTS `vista_sensores_movimiento`;
/*!50001 DROP VIEW IF EXISTS `vista_sensores_movimiento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_sensores_movimiento` AS SELECT 
 1 AS `id_sensor`,
 1 AS `fecha_hora`,
 1 AS `estado`,
 1 AS `nombre`,
 1 AS `id_tipo_sensor`,
 1 AS `id_ubicacion`,
 1 AS `descripcion`,
 1 AS `id_area`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_usuarios`
--

DROP TABLE IF EXISTS `vista_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios` AS SELECT 
 1 AS `id_usuario`,
 1 AS `Nombre`,
 1 AS `ApellidoP`,
 1 AS `ApellidoM`,
 1 AS `fecha_registro`,
 1 AS `area`,
 1 AS `rol`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `websockets_statistics_entries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websockets_statistics_entries`
--

LOCK TABLES `websockets_statistics_entries` WRITE;
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'seguridad'
--

--
-- Dumping routines for database 'seguridad'
--

--
-- Final view structure for view `vista_acceso`
--

/*!50001 DROP VIEW IF EXISTS `vista_acceso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_acceso` AS select `r`.`id_rol` AS `id_rol`,`r`.`descripcion` AS `Rol`,`u`.`id_ubicacion` AS `id_ubicacion`,`u`.`descripcion` AS `UBICACION_ACCESO` from ((`acceso` `ac` join `roles` `r` on((`ac`.`id_rol` = `r`.`id_rol`))) join `ubicaciones` `u` on((`ac`.`id_ubicacion` = `u`.`id_ubicacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_areas`
--

/*!50001 DROP VIEW IF EXISTS `vista_areas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_areas` AS select `a`.`id_area` AS `id_area`,`a`.`nombre` AS `nombre`,`a`.`descripcion` AS `descripcion`,`dp`.`nombre` AS `departamento` from (`area` `a` join `departamentos` `dp` on((`a`.`id_departamento` = `dp`.`id_departamento`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_registro_accesos`
--

/*!50001 DROP VIEW IF EXISTS `vista_registro_accesos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_registro_accesos` AS select `ra`.`fecha_hora` AS `fecha_hora`,`ra`.`resultado` AS `resultado`,`ra`.`id_usuario` AS `id_usuario`,concat(`u`.`nombre`,' ',`u`.`prim_apellido`,' ',`u`.`seg_apellido`) AS `NombreUsuario`,`ub`.`descripcion` AS `ubicacion`,`a`.`nombre` AS `nombre_area` from ((((`registro_accesos` `ra` left join `usuario` `u` on((`ra`.`id_usuario` = `u`.`id_usuario`))) join `sensores` `sen` on((`ra`.`id_sensor` = `sen`.`id_sensor`))) join `ubicaciones` `ub` on((`sen`.`id_ubicacion` = `ub`.`id_ubicacion`))) join `area` `a` on(((`ub`.`id_area` = `ub`.`id_area`) = `a`.`id_area`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_registro_de_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `vista_registro_de_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_registro_de_usuarios` AS select `ru`.`fecha_registro` AS `fecha_registro`,`ru`.`id_usuario_registrador` AS `id_usuario_registrador`,concat(`u1`.`nombre`,' ',`u1`.`prim_apellido`,' ',`u1`.`seg_apellido`) AS `NombreRegistrador`,`ru`.`id_usuario_nuevo` AS `id_usuario_nuevo`,concat(`u2`.`nombre`,' ',`u2`.`prim_apellido`,' ',`u2`.`seg_apellido`) AS `NombreUsuarioNuevo` from ((`registro_usuarios` `ru` join `usuario` `u1` on((`ru`.`id_usuario_registrador` = `u1`.`id_usuario`))) join `usuario` `u2` on((`ru`.`id_usuario_nuevo` = `u2`.`id_usuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_sensores`
--

/*!50001 DROP VIEW IF EXISTS `vista_sensores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_sensores` AS select `sen`.`id_sensor` AS `id_sensor`,`sen`.`nombre` AS `nombre`,`tp`.`nombre` AS `tipo_sensor`,`sen`.`fecha_instalacion` AS `fecha_instalacion`,`ub`.`descripcion` AS `ubicacion` from ((`sensores` `sen` join `tipo_sensor` `tp` on((`sen`.`id_tipo_sensor` = `tp`.`id_tipo_sensor`))) join `ubicaciones` `ub` on((`sen`.`id_ubicacion` = `ub`.`id_ubicacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_sensores_movimiento`
--

/*!50001 DROP VIEW IF EXISTS `vista_sensores_movimiento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_sensores_movimiento` AS select `sm`.`id_sensor` AS `id_sensor`,`sm`.`fecha_hora` AS `fecha_hora`,`sm`.`estado` AS `estado`,`sen`.`nombre` AS `nombre`,`sen`.`id_tipo_sensor` AS `id_tipo_sensor`,`ub`.`id_ubicacion` AS `id_ubicacion`,`ub`.`descripcion` AS `descripcion`,`ub`.`id_area` AS `id_area` from ((`sensor_movimiento` `sm` join `sensores` `sen` on((`sm`.`id_sensor` = `sen`.`id_sensor`))) join `ubicaciones` `ub` on((`sen`.`id_ubicacion` = `ub`.`id_ubicacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios` AS select `u`.`id_usuario` AS `id_usuario`,`u`.`nombre` AS `Nombre`,`u`.`prim_apellido` AS `ApellidoP`,`u`.`seg_apellido` AS `ApellidoM`,`u`.`fecha_registro` AS `fecha_registro`,`a`.`nombre` AS `area`,`r`.`descripcion` AS `rol` from ((`usuario` `u` join `area` `a` on((`u`.`id_area` = `a`.`id_area`))) join `roles` `r` on((`u`.`id_rol` = `r`.`id_rol`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12  8:35:24
