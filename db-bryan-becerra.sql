-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: practicabryanbece.mysql.eu.pythonanywhere-services.com    Database: practicabryanbec$BotCancerMama
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add comuna',7,'add_comuna'),(26,'Can change comuna',7,'change_comuna'),(27,'Can delete comuna',7,'delete_comuna'),(28,'Can view comuna',7,'view_comuna'),(29,'Can add genero',8,'add_genero'),(30,'Can change genero',8,'change_genero'),(31,'Can delete genero',8,'delete_genero'),(32,'Can view genero',8,'view_genero'),(33,'Can add ocupacion',9,'add_ocupacion'),(34,'Can change ocupacion',9,'change_ocupacion'),(35,'Can delete ocupacion',9,'delete_ocupacion'),(36,'Can view ocupacion',9,'view_ocupacion'),(37,'Can add pregunta',10,'add_pregunta'),(38,'Can change pregunta',10,'change_pregunta'),(39,'Can delete pregunta',10,'delete_pregunta'),(40,'Can view pregunta',10,'view_pregunta'),(41,'Can add sistema salud',11,'add_sistemasalud'),(42,'Can change sistema salud',11,'change_sistemasalud'),(43,'Can delete sistema salud',11,'delete_sistemasalud'),(44,'Can view sistema salud',11,'view_sistemasalud'),(45,'Can add op c_ respuesta',12,'add_opc_respuesta'),(46,'Can change op c_ respuesta',12,'change_opc_respuesta'),(47,'Can delete op c_ respuesta',12,'delete_opc_respuesta'),(48,'Can view op c_ respuesta',12,'view_opc_respuesta'),(49,'Can add usuario',13,'add_usuario'),(50,'Can change usuario',13,'change_usuario'),(51,'Can delete usuario',13,'delete_usuario'),(52,'Can view usuario',13,'view_usuario'),(53,'Can add respuesta usuario',14,'add_respuestausuario'),(54,'Can change respuesta usuario',14,'change_respuestausuario'),(55,'Can delete respuesta usuario',14,'delete_respuestausuario'),(56,'Can view respuesta usuario',14,'view_respuestausuario'),(57,'Can add pregunta opcion respuesta',12,'add_preguntaopcionrespuesta'),(58,'Can change pregunta opcion respuesta',12,'change_preguntaopcionrespuesta'),(59,'Can delete pregunta opcion respuesta',12,'delete_preguntaopcionrespuesta'),(60,'Can view pregunta opcion respuesta',12,'view_preguntaopcionrespuesta'),(61,'Can add usuario respuesta',14,'add_usuariorespuesta'),(62,'Can change usuario respuesta',14,'change_usuariorespuesta'),(63,'Can delete usuario respuesta',14,'delete_usuariorespuesta'),(64,'Can view usuario respuesta',14,'view_usuariorespuesta'),(65,'Can add usuario texto pregunta',15,'add_usuariotextopregunta'),(66,'Can change usuario texto pregunta',15,'change_usuariotextopregunta'),(67,'Can delete usuario texto pregunta',15,'delete_usuariotextopregunta'),(68,'Can view usuario texto pregunta',15,'view_usuariotextopregunta'),(69,'Can add mi tabla',16,'add_mitabla'),(70,'Can change mi tabla',16,'change_mitabla'),(71,'Can delete mi tabla',16,'delete_mitabla'),(72,'Can view mi tabla',16,'view_mitabla'),(73,'Can add mensaje contenido',16,'add_mensajecontenido'),(74,'Can change mensaje contenido',16,'change_mensajecontenido'),(75,'Can delete mensaje contenido',16,'delete_mensajecontenido'),(76,'Can view mensaje contenido',16,'view_mensajecontenido');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$BuGQuZgI3jAJwwtPUzEbxX$MqHXNrNO8Dxge3LW8zMsuM7YhyWXMzOuD81dVR7S0GQ=','2024-02-20 11:48:10.300066',1,'admin','','','admin@admin.cl',1,1,'2024-01-24 14:26:24.470357');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_comuna`
--

DROP TABLE IF EXISTS `botApp_comuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_comuna` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre_Comuna` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_comuna`
--

LOCK TABLES `botApp_comuna` WRITE;
/*!40000 ALTER TABLE `botApp_comuna` DISABLE KEYS */;
INSERT INTO `botApp_comuna` VALUES (1,'La Florida'),(2,'Puente Alto'),(3,'Otra');
/*!40000 ALTER TABLE `botApp_comuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_genero`
--

DROP TABLE IF EXISTS `botApp_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OPC_Genero` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_genero`
--

LOCK TABLES `botApp_genero` WRITE;
/*!40000 ALTER TABLE `botApp_genero` DISABLE KEYS */;
INSERT INTO `botApp_genero` VALUES (1,'Femenino'),(2,'Masculino'),(3,'Otro');
/*!40000 ALTER TABLE `botApp_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_mensajecontenido`
--

DROP TABLE IF EXISTS `botApp_mensajecontenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_mensajecontenido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `texto` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `Genero_Usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `botApp_mitabla_Genero_Usuario_id_72c41317_fk_botApp_genero_id` (`Genero_Usuario_id`),
  CONSTRAINT `botApp_mitabla_Genero_Usuario_id_72c41317_fk_botApp_genero_id` FOREIGN KEY (`Genero_Usuario_id`) REFERENCES `botApp_genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_mensajecontenido`
--

LOCK TABLES `botApp_mensajecontenido` WRITE;
/*!40000 ALTER TABLE `botApp_mensajecontenido` DISABLE KEYS */;
INSERT INTO `botApp_mensajecontenido` VALUES (1,'Prueba 2, 14/02','2024-02-14',1),(2,'Mensaje Febrero 16 2024 - Hombre','2024-02-16',2),(3,'Mensaje Febrero 16 2024 - Mujer','2024-02-16',1),(4,'Prueba 20-02','2024-02-20',2);
/*!40000 ALTER TABLE `botApp_mensajecontenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_ocupacion`
--

DROP TABLE IF EXISTS `botApp_ocupacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_ocupacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OPC_Ocupacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_ocupacion`
--

LOCK TABLES `botApp_ocupacion` WRITE;
/*!40000 ALTER TABLE `botApp_ocupacion` DISABLE KEYS */;
INSERT INTO `botApp_ocupacion` VALUES (1,'Dueña de Casa'),(2,'Trabajadora'),(3,'Otro');
/*!40000 ALTER TABLE `botApp_ocupacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_pregunta`
--

DROP TABLE IF EXISTS `botApp_pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_pregunta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_pregunta`
--

LOCK TABLES `botApp_pregunta` WRITE;
/*!40000 ALTER TABLE `botApp_pregunta` DISABLE KEYS */;
INSERT INTO `botApp_pregunta` VALUES (4,'¿Te has realizado una mamografía?'),(5,'¿Recuerdas cuando fue tu última mamografía?'),(6,'Fecha de la última mamografía'),(7,'¿Tienes los archivos e informe de tu última mamografía?'),(8,'¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama?'),(10,'¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela)');
/*!40000 ALTER TABLE `botApp_pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_preguntaopcionrespuesta`
--

DROP TABLE IF EXISTS `botApp_preguntaopcionrespuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_preguntaopcionrespuesta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OPC_Respuesta` varchar(200) NOT NULL,
  `id_pregunta_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `botApp_preguntaopcionrespuesta_id_pregunta_id_5928ae3d_fk` (`id_pregunta_id`),
  CONSTRAINT `botApp_preguntaopcionrespuesta_id_pregunta_id_5928ae3d_fk` FOREIGN KEY (`id_pregunta_id`) REFERENCES `botApp_pregunta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_preguntaopcionrespuesta`
--

LOCK TABLES `botApp_preguntaopcionrespuesta` WRITE;
/*!40000 ALTER TABLE `botApp_preguntaopcionrespuesta` DISABLE KEYS */;
INSERT INTO `botApp_preguntaopcionrespuesta` VALUES (8,'Si',4),(9,'No',4),(10,'Si',5),(11,'No',5),(12,'No Aplica',5),(13,'2023',6),(14,'2022',6),(15,'Antes de 2022',6),(16,'No Aplica',6),(17,'Si',7),(18,'No',7),(19,'No lo se',7),(20,'No Aplica',7),(21,'Si',8),(22,'No',8),(23,'No lo se',8),(25,'Si',10),(26,'No',10),(27,'No lo se',10);
/*!40000 ALTER TABLE `botApp_preguntaopcionrespuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_sistemasalud`
--

DROP TABLE IF EXISTS `botApp_sistemasalud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_sistemasalud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OPC_SistemaSalud` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_sistemasalud`
--

LOCK TABLES `botApp_sistemasalud` WRITE;
/*!40000 ALTER TABLE `botApp_sistemasalud` DISABLE KEYS */;
INSERT INTO `botApp_sistemasalud` VALUES (1,'Fonasa'),(2,'Isapre'),(3,'Otro');
/*!40000 ALTER TABLE `botApp_sistemasalud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_usuario`
--

DROP TABLE IF EXISTS `botApp_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Comuna_Usuario_id` int NOT NULL,
  `Genero_Usuario_id` int NOT NULL,
  `Ocupacion_Usuario_id` int NOT NULL,
  `SistemaSalud_Usuario_id` int NOT NULL,
  `Fecha_Ingreso` datetime(6) NOT NULL,
  `id_manychat` varchar(200) NOT NULL,
  `Rut` varchar(10) NOT NULL,
  `Whatsapp` varchar(200) NOT NULL,
  `AnioNacimiento` varchar(200) NOT NULL,
  `Referencia` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `botApp_usuario_Comuna_Usuario_id_16e4b311_fk` (`Comuna_Usuario_id`),
  KEY `botApp_usuario_Genero_Usuario_id_126f17ea_fk` (`Genero_Usuario_id`),
  KEY `botApp_usuario_Ocupacion_Usuario_id_bd60f26c_fk` (`Ocupacion_Usuario_id`),
  KEY `botApp_usuario_SistemaSalud_Usuario_id_9f05bde1_fk` (`SistemaSalud_Usuario_id`),
  CONSTRAINT `botApp_usuario_Comuna_Usuario_id_16e4b311_fk` FOREIGN KEY (`Comuna_Usuario_id`) REFERENCES `botApp_comuna` (`id`),
  CONSTRAINT `botApp_usuario_Genero_Usuario_id_126f17ea_fk` FOREIGN KEY (`Genero_Usuario_id`) REFERENCES `botApp_genero` (`id`),
  CONSTRAINT `botApp_usuario_Ocupacion_Usuario_id_bd60f26c_fk` FOREIGN KEY (`Ocupacion_Usuario_id`) REFERENCES `botApp_ocupacion` (`id`),
  CONSTRAINT `botApp_usuario_SistemaSalud_Usuario_id_9f05bde1_fk` FOREIGN KEY (`SistemaSalud_Usuario_id`) REFERENCES `botApp_sistemasalud` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_usuario`
--

LOCK TABLES `botApp_usuario` WRITE;
/*!40000 ALTER TABLE `botApp_usuario` DISABLE KEYS */;
INSERT INTO `botApp_usuario` VALUES (16,2,1,2,1,'2024-02-06 22:21:11.107222','2081291682','16739051k','56949967027','170587','Sandra'),(17,3,1,2,1,'2024-02-06 22:30:02.110171','1226028163','16546804-k','56979432752','03-02-1987','Sandra'),(18,2,1,1,1,'2024-02-06 23:30:15.951958','1490499485','15430073-2','56974283604','07/01/1982','Sandra'),(19,2,1,2,1,'2024-02-06 23:39:45.206086','1366939124','18442212-3','56926484091','10-05-1993','Sandra'),(20,2,1,2,1,'2024-02-07 00:15:54.118748','2115424117','119763304','56954954096','1972','Sandra'),(21,2,1,3,2,'2024-02-07 02:56:56.964035','229918976','15345890-1','56977838303','12-12-1982','Melina'),(22,2,1,2,1,'2024-02-07 05:03:40.305614','963231300','13450000k','56959874308','27/12/1977','Melina'),(23,2,1,1,3,'2024-02-07 13:32:54.324456','1850313748','16114264-6','56934174251','11-03-1985','Sandra'),(24,2,1,1,1,'2024-02-07 16:26:05.178146','901210248','16911157-k','56931454032','15/09/1988','Otro'),(25,2,1,2,1,'2024-02-08 00:03:11.334305','64321036','17988192-6','56926427915','01-07-1992','Melina'),(26,2,1,2,1,'2024-02-08 00:13:35.780096','913538215','18250076-3','56946850724','22-12-1992','Melina'),(27,2,1,1,1,'2024-02-08 00:18:36.194055','1579918345','8449984 6','56935868941','7 8 60','Melina'),(28,2,1,2,1,'2024-02-08 00:24:47.582023','1941848980','9149504 k','56949587816','17 de marz','Melina'),(29,2,1,1,3,'2024-02-08 00:27:11.998082','1695311028','8863776-3','56972000886','15-8-1960','Melina'),(30,2,1,2,1,'2024-02-08 00:31:34.742083','230419188','16940269-8','56942710526','17/10/1988','Melina'),(31,3,1,2,1,'2024-02-08 00:34:24.555345','2132371836','14474178-1','56991599096','15-11-76','Otro'),(32,2,1,2,1,'2024-02-08 00:44:58.915525','217669409','9607565-0','56995030770','17-04-1965','Melina'),(33,2,1,2,2,'2024-02-08 00:55:33.044213','496873982','108090960','56995799546','31 Mayo 1966','Melina'),(34,2,1,2,1,'2024-02-08 01:01:15.136596','1558278435','102061780','56935925979','2 / 11/ 1964','Melina'),(35,2,1,1,3,'2024-02-08 01:42:22.192058','319811478','16632122-0','56958627737','22-04-1986','Melina'),(36,2,1,3,1,'2024-02-08 01:44:09.749256','1537671199','21322019-5','56950259695','30-05-2003','Melina'),(37,2,1,1,1,'2024-02-08 01:48:21.253537','765999237','9588965-4','56990804392','1 julio 1960','Melina'),(38,2,1,1,1,'2024-02-08 01:48:57.248823','2013577365','11454389-6','56985502411','11/06/1969','Melina'),(39,2,1,1,1,'2024-02-08 01:49:24.038928','729844244','159191206','56955118575','25/11/1984','Otro'),(40,2,1,2,1,'2024-02-08 02:09:42.866076','263146829','11451556-6','56983669561','16 de septiembre 1969','Melina'),(41,2,1,1,1,'2024-02-08 02:21:18.076668','1370958961','9664011-0','56994041146','24/06/1963','Melina'),(42,2,1,1,1,'2024-02-08 03:28:40.325970','1882905223','14506315-9','56991683921','05/11/1974','Melina'),(43,2,1,1,1,'2024-02-08 03:33:47.013686','139457776','12462855_5','56963174690','24 de diciembre 1972','Melina'),(44,2,1,1,1,'2024-02-08 14:25:22.026635','271505200','190052338','56953060636','25-04-1995','Sandra'),(45,2,1,1,1,'2024-02-09 02:53:38.034944','139457776','12462855-5','56963174690','El 24 de diciembre 1972','Melina'),(46,2,2,2,1,'2024-02-09 16:22:39.239009','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(47,3,1,2,1,'2024-02-10 00:04:11.026062','743119091','9833497-1','56982990191','28-03-1981','Otro'),(48,2,2,2,1,'2024-02-12 11:59:50.164160','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(49,2,2,2,1,'2024-02-12 12:11:14.897961','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(50,2,2,2,1,'2024-02-12 14:13:33.749975','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(51,2,2,2,1,'2024-02-13 14:15:17.049429','1646860544','Hola','56945307144','20-07-1994','Otro'),(52,2,1,2,1,'2024-02-13 14:19:56.539732','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(53,2,2,3,1,'2024-02-13 14:40:21.951320','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(54,2,2,2,1,'2024-02-13 18:34:55.661200','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(55,2,2,2,1,'2024-02-13 18:37:53.519413','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(56,2,2,2,1,'2024-02-14 15:35:32.813288','1646860544','18880177-3','56945307144','20-07-1994','Otro'),(57,2,2,2,1,'2024-02-14 15:41:22.165608','1646860544','18880177-3','56945307144','20-07-1994','Otro');
/*!40000 ALTER TABLE `botApp_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_usuariorespuesta`
--

DROP TABLE IF EXISTS `botApp_usuariorespuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_usuariorespuesta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_respuesta` datetime(6) NOT NULL,
  `id_opc_respuesta_id` int NOT NULL,
  `Rut` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `botApp_usuariorespuesta_id_opc_respuesta_id_6d76c6c8_fk` (`id_opc_respuesta_id`),
  CONSTRAINT `botApp_usuariorespuesta_id_opc_respuesta_id_6d76c6c8_fk` FOREIGN KEY (`id_opc_respuesta_id`) REFERENCES `botApp_preguntaopcionrespuesta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_usuariorespuesta`
--

LOCK TABLES `botApp_usuariorespuesta` WRITE;
/*!40000 ALTER TABLE `botApp_usuariorespuesta` DISABLE KEYS */;
INSERT INTO `botApp_usuariorespuesta` VALUES (65,'2024-02-06 22:21:16.938263',9,'16739051k'),(66,'2024-02-06 22:21:17.028550',12,'16739051k'),(67,'2024-02-06 22:21:17.134252',16,'16739051k'),(68,'2024-02-06 22:21:17.241687',20,'16739051k'),(69,'2024-02-06 22:21:24.666374',21,'16739051k'),(70,'2024-02-06 22:23:03.633975',25,'16739051k'),(71,'2024-02-06 22:30:05.698507',8,'16546804-k'),(72,'2024-02-06 22:30:12.063047',10,'16546804-k'),(73,'2024-02-06 22:30:16.404554',15,'16546804-k'),(74,'2024-02-06 22:30:22.994355',17,'16546804-k'),(75,'2024-02-06 22:30:28.450147',21,'16546804-k'),(76,'2024-02-06 22:30:58.934114',26,'16546804-k'),(77,'2024-02-06 23:30:24.838838',9,'15430073-2'),(78,'2024-02-06 23:30:24.930735',12,'15430073-2'),(79,'2024-02-06 23:30:25.010690',16,'15430073-2'),(80,'2024-02-06 23:30:25.082647',20,'15430073-2'),(81,'2024-02-06 23:30:30.790571',21,'15430073-2'),(82,'2024-02-06 23:31:45.314608',26,'15430073-2'),(83,'2024-02-06 23:39:49.322078',9,'18442212-3'),(84,'2024-02-06 23:39:49.418402',12,'18442212-3'),(85,'2024-02-06 23:39:49.505256',16,'18442212-3'),(86,'2024-02-06 23:39:49.586267',20,'18442212-3'),(87,'2024-02-06 23:39:54.542342',21,'18442212-3'),(88,'2024-02-06 23:40:09.570203',26,'18442212-3'),(89,'2024-02-07 00:16:00.080608',9,'119763304'),(90,'2024-02-07 00:16:00.158504',12,'119763304'),(91,'2024-02-07 00:16:00.250062',16,'119763304'),(92,'2024-02-07 00:16:00.305443',20,'119763304'),(93,'2024-02-07 00:16:09.378721',21,'119763304'),(94,'2024-02-07 00:18:56.112877',25,'119763304'),(95,'2024-02-07 02:56:59.002632',8,'15345890-1'),(96,'2024-02-07 02:57:05.505302',10,'15345890-1'),(97,'2024-02-07 02:57:11.118171',13,'15345890-1'),(98,'2024-02-07 02:57:16.914998',19,'15345890-1'),(101,'2024-02-07 02:57:47.108511',22,'15345890-1'),(102,'2024-02-07 02:58:02.562100',26,'15345890-1'),(103,'2024-02-07 05:03:45.538422',9,'13450000k'),(104,'2024-02-07 05:03:45.593441',12,'13450000k'),(105,'2024-02-07 05:03:45.672249',16,'13450000k'),(106,'2024-02-07 05:03:45.741758',20,'13450000k'),(107,'2024-02-07 05:03:50.895137',21,'13450000k'),(108,'2024-02-07 05:05:04.741455',25,'13450000k'),(109,'2024-02-07 13:32:59.506489',9,'16114264-6'),(110,'2024-02-07 13:32:59.610881',12,'16114264-6'),(111,'2024-02-07 13:32:59.710251',16,'16114264-6'),(112,'2024-02-07 13:32:59.786076',20,'16114264-6'),(113,'2024-02-07 13:33:06.051183',21,'16114264-6'),(114,'2024-02-07 13:34:33.521915',26,'16114264-6'),(115,'2024-02-07 16:26:12.430357',9,'16911157-k'),(116,'2024-02-07 16:26:12.538236',12,'16911157-k'),(117,'2024-02-07 16:26:12.611970',16,'16911157-k'),(118,'2024-02-07 16:26:12.690222',20,'16911157-k'),(119,'2024-02-07 16:26:21.386529',21,'16911157-k'),(120,'2024-02-07 16:27:11.612006',26,'16911157-k'),(121,'2024-02-08 00:03:15.637942',9,'17988192-6'),(122,'2024-02-08 00:03:15.695386',12,'17988192-6'),(123,'2024-02-08 00:03:15.757296',16,'17988192-6'),(124,'2024-02-08 00:03:15.816061',20,'17988192-6'),(125,'2024-02-08 00:03:20.892469',21,'17988192-6'),(126,'2024-02-08 00:04:16.367021',26,'17988192-6'),(127,'2024-02-08 00:13:40.144289',9,'18250076-3'),(128,'2024-02-08 00:13:40.188679',12,'18250076-3'),(129,'2024-02-08 00:13:40.243621',16,'18250076-3'),(130,'2024-02-08 00:13:40.298210',20,'18250076-3'),(131,'2024-02-08 00:13:48.464562',21,'18250076-3'),(132,'2024-02-08 00:14:18.979124',26,'18250076-3'),(133,'2024-02-08 00:18:43.594156',9,'8449984 6'),(134,'2024-02-08 00:18:43.686239',12,'8449984 6'),(135,'2024-02-08 00:18:43.780780',16,'8449984 6'),(136,'2024-02-08 00:18:43.874155',20,'8449984 6'),(137,'2024-02-08 00:18:50.634391',21,'8449984 6'),(138,'2024-02-08 00:19:45.982315',26,'8449984 6'),(139,'2024-02-08 00:24:53.170137',9,'9149504 k'),(140,'2024-02-08 00:24:53.250304',12,'9149504 k'),(141,'2024-02-08 00:24:53.328844',16,'9149504 k'),(142,'2024-02-08 00:24:53.393976',20,'9149504 k'),(143,'2024-02-08 00:25:01.101308',21,'9149504 k'),(144,'2024-02-08 00:27:07.645976',25,'9149504 k'),(145,'2024-02-08 00:27:17.922011',8,'8863776-3'),(146,'2024-02-08 00:31:38.356338',9,'16940269-8'),(147,'2024-02-08 00:31:38.451947',12,'16940269-8'),(148,'2024-02-08 00:31:38.530490',16,'16940269-8'),(149,'2024-02-08 00:31:38.599960',20,'16940269-8'),(150,'2024-02-08 00:31:43.482105',21,'16940269-8'),(151,'2024-02-08 00:32:01.890236',25,'16940269-8'),(152,'2024-02-08 00:34:28.538490',8,'14474178-1'),(153,'2024-02-08 00:34:36.190077',10,'14474178-1'),(154,'2024-02-08 00:34:40.736833',15,'14474178-1'),(155,'2024-02-08 00:34:48.886067',18,'14474178-1'),(156,'2024-02-08 00:34:56.938184',22,'14474178-1'),(157,'2024-02-08 00:45:03.744403',8,'9607565-0'),(158,'2024-02-08 00:45:09.359569',10,'9607565-0'),(159,'2024-02-08 00:45:14.175911',13,'9607565-0'),(160,'2024-02-08 00:46:29.037525',17,'9607565-0'),(161,'2024-02-08 00:46:36.776708',21,'9607565-0'),(162,'2024-02-08 00:47:55.302329',26,'9607565-0'),(163,'2024-02-08 00:55:37.085494',8,'108090960'),(164,'2024-02-08 00:55:44.116938',10,'108090960'),(165,'2024-02-08 00:55:47.985543',13,'108090960'),(166,'2024-02-08 00:56:04.586850',18,'108090960'),(167,'2024-02-08 00:56:10.022042',21,'108090960'),(168,'2024-02-08 00:57:06.413889',26,'108090960'),(169,'2024-02-08 01:01:20.382325',8,'102061780'),(170,'2024-02-08 01:02:09.988163',10,'102061780'),(171,'2024-02-08 01:10:05.023092',14,'102061780'),(172,'2024-02-08 01:10:10.979709',18,'102061780'),(173,'2024-02-08 01:10:17.586081',21,'102061780'),(174,'2024-02-08 01:11:08.365247',26,'102061780'),(175,'2024-02-08 01:42:27.831222',9,'16632122-0'),(176,'2024-02-08 01:42:27.878809',12,'16632122-0'),(177,'2024-02-08 01:42:27.922703',16,'16632122-0'),(178,'2024-02-08 01:42:27.964672',20,'16632122-0'),(179,'2024-02-08 01:42:34.707174',21,'16632122-0'),(180,'2024-02-08 01:43:36.803194',26,'16632122-0'),(181,'2024-02-08 01:44:16.235854',9,'21322019-5'),(182,'2024-02-08 01:44:16.292398',12,'21322019-5'),(183,'2024-02-08 01:44:16.346474',16,'21322019-5'),(184,'2024-02-08 01:44:16.389512',20,'21322019-5'),(185,'2024-02-08 01:44:34.237037',21,'21322019-5'),(186,'2024-02-08 01:45:44.777275',26,'21322019-5'),(187,'2024-02-08 01:48:32.834507',8,'9588965-4'),(188,'2024-02-08 01:48:43.218330',11,'9588965-4'),(189,'2024-02-08 01:48:43.306074',16,'9588965-4'),(190,'2024-02-08 01:48:43.376117',20,'9588965-4'),(191,'2024-02-08 01:48:53.008070',21,'9588965-4'),(192,'2024-02-08 01:49:01.806467',8,'11454389-6'),(193,'2024-02-08 01:49:25.477731',26,'9588965-4'),(194,'2024-02-08 01:49:30.980660',10,'11454389-6'),(195,'2024-02-08 01:49:31.239962',8,'159191206'),(196,'2024-02-08 01:49:36.184141',13,'11454389-6'),(197,'2024-02-08 01:49:38.576437',11,'159191206'),(198,'2024-02-08 01:49:38.629931',16,'159191206'),(199,'2024-02-08 01:49:38.683300',20,'159191206'),(200,'2024-02-08 01:49:40.822407',17,'11454389-6'),(201,'2024-02-08 01:49:46.254133',21,'159191206'),(202,'2024-02-08 01:49:46.479164',21,'11454389-6'),(203,'2024-02-08 01:50:26.872354',25,'11454389-6'),(204,'2024-02-08 01:50:56.901271',25,'159191206'),(205,'2024-02-08 02:09:49.966117',8,'11451556-6'),(206,'2024-02-08 02:09:59.146029',10,'11451556-6'),(207,'2024-02-08 02:21:23.049985',8,'9664011-0'),(208,'2024-02-08 02:21:38.898174',10,'9664011-0'),(209,'2024-02-08 02:21:42.830185',14,'9664011-0'),(210,'2024-02-08 02:21:48.698436',17,'9664011-0'),(211,'2024-02-08 02:21:55.310043',21,'9664011-0'),(212,'2024-02-08 02:23:48.391058',25,'9664011-0'),(213,'2024-02-08 03:28:47.600562',8,'14506315-9'),(214,'2024-02-08 03:29:15.461921',10,'14506315-9'),(215,'2024-02-08 03:29:15.786319',10,'14506315-9'),(216,'2024-02-08 03:29:16.055950',10,'14506315-9'),(217,'2024-02-08 03:29:25.645910',15,'14506315-9'),(218,'2024-02-08 03:29:36.197997',19,'14506315-9'),(219,'2024-02-08 03:29:45.027515',21,'14506315-9'),(220,'2024-02-08 03:31:55.910188',27,'14506315-9'),(221,'2024-02-08 03:34:11.797896',8,'12462855_5'),(222,'2024-02-08 03:34:22.569967',11,'12462855_5'),(223,'2024-02-08 03:34:22.649898',16,'12462855_5'),(224,'2024-02-08 03:34:22.718351',20,'12462855_5'),(225,'2024-02-08 03:34:33.342101',21,'12462855_5'),(226,'2024-02-08 03:35:43.286021',26,'12462855_5'),(227,'2024-02-08 14:25:27.506341',9,'190052338'),(228,'2024-02-08 14:25:27.726607',12,'190052338'),(229,'2024-02-08 14:25:27.916182',16,'190052338'),(230,'2024-02-08 14:25:28.114324',20,'190052338'),(231,'2024-02-08 14:25:38.136198',21,'190052338'),(232,'2024-02-08 14:26:17.526438',27,'190052338'),(233,'2024-02-09 02:53:45.483442',8,'12462855-5'),(234,'2024-02-09 02:53:57.358388',10,'12462855-5'),(235,'2024-02-09 02:54:15.776949',15,'12462855-5'),(236,'2024-02-09 02:54:29.102279',17,'12462855-5'),(237,'2024-02-09 02:54:41.701628',21,'12462855-5'),(238,'2024-02-09 02:55:51.567992',26,'12462855-5'),(239,'2024-02-09 16:22:43.005967',9,'18880177-3'),(240,'2024-02-09 16:22:43.121915',12,'18880177-3'),(241,'2024-02-09 16:22:43.217732',16,'18880177-3'),(242,'2024-02-09 16:22:43.298039',20,'18880177-3'),(243,'2024-02-09 16:22:47.205093',21,'18880177-3'),(244,'2024-02-09 16:23:02.784125',25,'18880177-3'),(245,'2024-02-10 00:04:14.582882',8,'9833497-1'),(246,'2024-02-10 00:04:18.696520',10,'9833497-1'),(247,'2024-02-10 00:04:23.627022',14,'9833497-1'),(248,'2024-02-10 00:04:28.296316',17,'9833497-1'),(249,'2024-02-10 00:04:33.916161',22,'9833497-1'),(250,'2024-02-10 00:04:51.287530',26,'9833497-1'),(251,'2024-02-12 12:16:18.182334',21,'18880177-3'),(252,'2024-02-12 14:13:37.709886',9,'18880177-3'),(253,'2024-02-12 14:13:37.917798',12,'18880177-3'),(254,'2024-02-12 14:13:38.009877',16,'18880177-3'),(255,'2024-02-12 14:13:38.120389',20,'18880177-3'),(256,'2024-02-12 14:13:41.574286',21,'18880177-3'),(257,'2024-02-12 14:13:51.316238',25,'18880177-3'),(258,'2024-02-13 14:15:20.626039',9,'Hola'),(259,'2024-02-13 14:15:20.745724',12,'Hola'),(260,'2024-02-13 14:15:20.862049',16,'Hola'),(261,'2024-02-13 14:15:20.985875',20,'Hola'),(262,'2024-02-13 14:15:24.333524',21,'Hola'),(263,'2024-02-13 14:15:34.472941',25,'Hola'),(264,'2024-02-13 14:20:00.002133',9,'18880177-3'),(265,'2024-02-13 14:20:00.425969',12,'18880177-3'),(266,'2024-02-13 14:20:00.607043',16,'18880177-3'),(267,'2024-02-13 14:20:00.659791',20,'18880177-3'),(268,'2024-02-13 14:20:05.464089',21,'18880177-3'),(269,'2024-02-13 14:20:15.521915',25,'18880177-3'),(270,'2024-02-13 14:40:26.077364',9,'18880177-3'),(271,'2024-02-13 14:40:26.193700',12,'18880177-3'),(272,'2024-02-13 14:40:26.288207',16,'18880177-3'),(273,'2024-02-13 14:40:26.385919',20,'18880177-3'),(274,'2024-02-13 14:40:30.749494',21,'18880177-3'),(275,'2024-02-13 14:40:41.193420',25,'18880177-3'),(276,'2024-02-13 18:34:59.550924',9,'18880177-3'),(277,'2024-02-13 18:34:59.606504',12,'18880177-3'),(278,'2024-02-13 18:34:59.649758',16,'18880177-3'),(279,'2024-02-13 18:34:59.697466',20,'18880177-3'),(280,'2024-02-13 18:35:04.938972',21,'18880177-3'),(281,'2024-02-13 18:35:15.998873',25,'18880177-3'),(282,'2024-02-13 18:35:16.351890',25,'18880177-3'),(283,'2024-02-13 18:37:57.202715',9,'18880177-3'),(284,'2024-02-13 18:37:57.284237',12,'18880177-3'),(285,'2024-02-13 18:37:57.364178',16,'18880177-3'),(286,'2024-02-13 18:37:57.427592',20,'18880177-3'),(287,'2024-02-13 18:38:01.652514',21,'18880177-3'),(288,'2024-02-13 18:38:11.920457',25,'18880177-3'),(289,'2024-02-14 15:35:48.193998',9,'18880177-3'),(290,'2024-02-14 15:35:48.345538',12,'18880177-3'),(291,'2024-02-14 15:35:48.461629',16,'18880177-3'),(292,'2024-02-14 15:35:48.539349',20,'18880177-3'),(293,'2024-02-14 15:35:51.774019',21,'18880177-3'),(294,'2024-02-14 15:36:11.689623',25,'18880177-3'),(295,'2024-02-14 15:41:26.126581',9,'18880177-3'),(296,'2024-02-14 15:41:26.333574',12,'18880177-3'),(297,'2024-02-14 15:41:26.411914',16,'18880177-3'),(298,'2024-02-14 15:41:26.493290',20,'18880177-3'),(299,'2024-02-14 15:41:30.937766',21,'18880177-3'),(300,'2024-02-14 15:41:38.916317',25,'18880177-3');
/*!40000 ALTER TABLE `botApp_usuariorespuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botApp_usuariotextopregunta`
--

DROP TABLE IF EXISTS `botApp_usuariotextopregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botApp_usuariotextopregunta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Rut` varchar(10) NOT NULL,
  `texto_pregunta` varchar(200) NOT NULL,
  `fecha_pregunta` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botApp_usuariotextopregunta`
--

LOCK TABLES `botApp_usuariotextopregunta` WRITE;
/*!40000 ALTER TABLE `botApp_usuariotextopregunta` DISABLE KEYS */;
INSERT INTO `botApp_usuariotextopregunta` VALUES (11,'16546804-k','Si','2024-02-06 22:30:45.837528'),(12,'15430073-2','A mí la matrona me mandó a hacerme una mamografía y después una ecomamaria por unos nódulos en los pechos','2024-02-06 23:31:28.181541'),(13,'18442212-3','Si','2024-02-06 23:40:05.277620'),(14,'119763304','Si tengo preguntas','2024-02-07 00:18:44.682477'),(15,'15345890-1','No','2024-02-07 02:57:56.465949'),(16,'13450000k','Como me puedo hacer una mmaografia','2024-02-07 05:04:57.172786'),(17,'16114264-6','Debería ser las mamografía de los 18 años en adelante no desde los 40 años en adelante','2024-02-07 13:34:27.229279'),(18,'16911157-k','No tengo preguntas por aora','2024-02-07 16:26:58.157522'),(19,'17988192-6','Es normal que salgan espenillas en las mamas ?','2024-02-08 00:03:52.753024'),(20,'18250076-3','No','2024-02-08 00:14:11.963740'),(21,'8449984 6','Tuve nódulos y por no haber hora no me he revisado','2024-02-08 00:19:31.506031'),(22,'9149504 k','Cómo se detesta el cáncer de mama','2024-02-08 00:26:47.987728'),(23,'16940269-8','No','2024-02-08 00:31:56.209429'),(24,'9607565-0','es necesario hacer mamagrafia anual','2024-02-08 00:47:47.997490'),(25,'108090960','A que edad debieran realizar la primera mamografia','2024-02-08 00:57:01.172870'),(26,'102061780','Por ahora no muchas gracias','2024-02-08 01:10:59.786261'),(27,'16632122-0','A qué edad me debo hacer la primera mamografía ?','2024-02-08 01:43:28.491349'),(28,'21322019-5','Desde que edad se recomienda ahora hacerse el examen del cáncer de mamá?','2024-02-08 01:45:31.834870'),(29,'9588965-4','No','2024-02-08 01:49:17.774127'),(30,'11454389-6','Muchas gracias','2024-02-08 01:50:13.006889'),(31,'159191206','Com detectar a tiempo un cáncer de mamas','2024-02-08 01:50:45.373556'),(32,'9664011-0','Como se puede saber si tienes cáncer','2024-02-08 02:23:40.833490'),(33,'14506315-9','Si tengo cáncer de tiroides puedo tener cáncer de mamas','2024-02-08 03:31:32.545298'),(34,'12462855_5','Como se detecta el cancer de mamas','2024-02-08 03:35:32.506872'),(35,'190052338','Por que ahí que revisarse?','2024-02-08 14:26:10.740074'),(36,'12462855-5','Muchas gracias por las preguntas','2024-02-09 02:55:38.021850'),(37,'18880177-3','Hola','2024-02-09 16:22:55.479350'),(38,'9833497-1','Gracias','2024-02-10 00:04:45.931925'),(39,'18880177-3','No','2024-02-12 14:13:47.250946'),(40,'Hola','No','2024-02-13 14:15:29.494625'),(41,'18880177-3','No','2024-02-13 14:20:10.555197'),(42,'18880177-3','No','2024-02-13 14:40:36.370285'),(43,'18880177-3','No','2024-02-13 18:35:10.182837'),(44,'18880177-3','Ni','2024-02-13 18:38:06.942636'),(45,'18880177-3','No','2024-02-14 15:36:07.497448'),(46,'18880177-3','No','2024-02-14 15:41:35.414293');
/*!40000 ALTER TABLE `botApp_usuariotextopregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-01-24 15:09:02.675960','1','La Florida',1,'[{\"added\": {}}]',7,1),(2,'2024-01-24 15:09:10.742345','2','Puente Alto',1,'[{\"added\": {}}]',7,1),(3,'2024-01-24 15:09:17.106042','3','Otra',1,'[{\"added\": {}}]',7,1),(4,'2024-01-24 15:10:23.445806','1','Femenino',1,'[{\"added\": {}}]',8,1),(5,'2024-01-24 15:10:28.525813','2','Masculino',1,'[{\"added\": {}}]',8,1),(6,'2024-01-24 15:10:33.397672','3','Otro',1,'[{\"added\": {}}]',8,1),(7,'2024-01-24 15:10:42.044597','1','Dueña de Casa',1,'[{\"added\": {}}]',9,1),(8,'2024-01-24 15:10:47.749842','2','Trabajadora',1,'[{\"added\": {}}]',9,1),(9,'2024-01-24 15:10:51.905612','3','Otro',1,'[{\"added\": {}}]',9,1),(10,'2024-01-24 15:11:30.128302','1','2022',1,'[{\"added\": {}}]',12,1),(11,'2024-01-24 15:11:37.785549','2','2023',1,'[{\"added\": {}}]',12,1),(12,'2024-01-24 15:12:13.932108','3','<2022',1,'[{\"added\": {}}]',12,1),(13,'2024-01-24 15:12:23.533735','4','Si',1,'[{\"added\": {}}]',12,1),(14,'2024-01-24 15:12:32.693677','5','No',1,'[{\"added\": {}}]',12,1),(15,'2024-01-24 15:12:48.509727','6','Si',1,'[{\"added\": {}}]',12,1),(16,'2024-01-24 15:12:59.333653','7','No',1,'[{\"added\": {}}]',12,1),(17,'2024-01-24 15:14:01.566336','1','Fonasa',1,'[{\"added\": {}}]',11,1),(18,'2024-01-24 15:14:06.407220','2','Isapre',1,'[{\"added\": {}}]',11,1),(19,'2024-01-24 15:14:11.581898','3','Otro',1,'[{\"added\": {}}]',11,1),(20,'2024-01-25 11:48:29.047037','1','1646860544 - ¿Recuerdas cuando fue tu última mamografía? - <2022',1,'[{\"added\": {}}]',14,1),(21,'2024-01-29 14:49:01.053995','3','¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela)',3,'',10,1),(22,'2024-01-29 14:49:01.062750','2','¿Tienes los archivos e informe de tu última mamografía?',3,'',10,1),(23,'2024-01-29 14:49:01.066461','1','¿Recuerdas cuando fue tu última mamografía?',3,'',10,1),(24,'2024-01-29 14:53:39.060973','4','¿Te has realizado una mamografía?',1,'[{\"added\": {}}]',10,1),(25,'2024-01-29 14:54:20.528285','5','¿Recuerdas cuando fue tu última mamografía?',1,'[{\"added\": {}}]',10,1),(26,'2024-01-29 14:55:10.392126','6','Fecha de la última mamografía',1,'[{\"added\": {}}]',10,1),(27,'2024-01-29 14:55:29.430972','7','¿Tienes los archivos e informe de tu última mamografía?',1,'[{\"added\": {}}]',10,1),(28,'2024-01-29 14:55:53.198116','8','¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama?',1,'[{\"added\": {}}]',10,1),(29,'2024-01-29 14:56:02.069898','9','¿Qué le preguntarías a una matrona o médico especialista sobre cáncer de mama?',1,'[{\"added\": {}}]',10,1),(30,'2024-01-29 14:57:41.278884','10','¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela)',1,'[{\"added\": {}}]',10,1),(31,'2024-01-29 14:58:01.333419','8','¿Te has realizado una mamografía? - Si',1,'[{\"added\": {}}]',12,1),(32,'2024-01-29 14:58:09.099817','9','¿Te has realizado una mamografía? - No',1,'[{\"added\": {}}]',12,1),(33,'2024-01-29 14:58:15.738637','10','¿Recuerdas cuando fue tu última mamografía? - Si',1,'[{\"added\": {}}]',12,1),(34,'2024-01-29 14:58:24.974562','11','¿Recuerdas cuando fue tu última mamografía? - No',1,'[{\"added\": {}}]',12,1),(35,'2024-01-29 14:58:36.753888','12','Fecha de la última mamografía - 2023',1,'[{\"added\": {}}]',12,1),(36,'2024-01-29 14:58:42.291329','13','Fecha de la última mamografía - 2022',1,'[{\"added\": {}}]',12,1),(37,'2024-01-29 14:58:59.413352','14','Fecha de la última mamografía - Antes de 2022',1,'[{\"added\": {}}]',12,1),(38,'2024-01-29 14:59:06.802621','15','¿Tienes los archivos e informe de tu última mamografía? - Si',1,'[{\"added\": {}}]',12,1),(39,'2024-01-29 14:59:11.423860','16','¿Tienes los archivos e informe de tu última mamografía? - No',1,'[{\"added\": {}}]',12,1),(40,'2024-01-29 14:59:34.786919','17','¿Tienes los archivos e informe de tu última mamografía? - No lo se',1,'[{\"added\": {}}]',12,1),(41,'2024-01-29 14:59:39.539785','18','¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - Si',1,'[{\"added\": {}}]',12,1),(42,'2024-01-29 14:59:46.293493','19','¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No',1,'[{\"added\": {}}]',12,1),(43,'2024-01-29 14:59:52.113928','20','¿Tienes los archivos e informe de tu última mamografía? - No lo se',1,'[{\"added\": {}}]',12,1),(44,'2024-01-29 15:00:45.455938','21','¿Qué le preguntarías a una matrona o médico especialista sobre cáncer de mama? - Texto libre',1,'[{\"added\": {}}]',12,1),(45,'2024-01-29 15:00:55.345878','22','¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela) - Si',1,'[{\"added\": {}}]',12,1),(46,'2024-01-29 15:01:00.559435','23','¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela) - No',1,'[{\"added\": {}}]',12,1),(47,'2024-01-29 15:01:05.694797','24','¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela) - No lo se',1,'[{\"added\": {}}]',12,1),(48,'2024-01-29 15:19:42.351609','20','¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No lo se',2,'[{\"changed\": {\"fields\": [\"Id pregunta\"]}}]',12,1),(49,'2024-02-05 17:22:59.219523','12','¿Recuerdas cuando fue tu última mamografía? - No Aplica',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(50,'2024-02-05 17:23:21.184999','14','Fecha de la última mamografía - 2023',2,'[{\"changed\": {\"fields\": [\"OPC Respuesta\"]}}]',12,1),(51,'2024-02-05 17:23:35.017666','15','Fecha de la última mamografía - Antes de 2022',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(52,'2024-02-05 17:23:51.535284','16','Fecha de la última mamografía - No Aplica',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(53,'2024-02-05 17:24:05.062855','17','¿Tienes los archivos e informe de tu última mamografía? - Si',2,'[{\"changed\": {\"fields\": [\"OPC Respuesta\"]}}]',12,1),(54,'2024-02-05 17:24:19.546297','18','¿Tienes los archivos e informe de tu última mamografía? - No',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(55,'2024-02-05 17:24:37.752113','19','¿Tienes los archivos e informe de tu última mamografía? - No lo se',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(56,'2024-02-05 17:24:53.118759','20','¿Tienes los archivos e informe de tu última mamografía? - No Aplica',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(57,'2024-02-05 17:25:09.405770','22','¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - Si',2,'[{\"changed\": {\"fields\": [\"Id pregunta\"]}}]',12,1),(58,'2024-02-05 17:25:30.501626','21','¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - Si',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(59,'2024-02-05 17:25:42.364228','22','¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No',2,'[{\"changed\": {\"fields\": [\"OPC Respuesta\"]}}]',12,1),(60,'2024-02-05 17:25:53.555763','23','¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No lo se',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(61,'2024-02-05 17:27:10.100692','24','¿Qué le preguntarías a una matrona o médico especialista sobre cáncer de mama? - Texto libre',2,'[{\"changed\": {\"fields\": [\"Id pregunta\", \"OPC Respuesta\"]}}]',12,1),(62,'2024-02-05 17:27:28.665698','25','¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela) - Si',1,'[{\"added\": {}}]',12,1),(63,'2024-02-05 17:27:36.697725','26','¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela) - No',1,'[{\"added\": {}}]',12,1),(64,'2024-02-05 17:27:43.511301','27','¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela) - No lo se',1,'[{\"added\": {}}]',12,1),(65,'2024-02-05 17:32:58.504532','13','Fecha de la última mamografía - 2023',2,'[{\"changed\": {\"fields\": [\"OPC Respuesta\"]}}]',12,1),(66,'2024-02-05 17:33:07.426214','14','Fecha de la última mamografía - 2022',2,'[{\"changed\": {\"fields\": [\"OPC Respuesta\"]}}]',12,1),(67,'2024-02-05 19:21:31.745916','4','4',3,'',13,1),(68,'2024-02-05 19:21:31.765712','3','3',3,'',13,1),(69,'2024-02-05 19:21:31.779793','2','2',3,'',13,1),(70,'2024-02-05 19:21:31.795624','1','1',3,'',13,1),(71,'2024-02-05 19:21:46.103133','6','6',3,'',13,1),(72,'2024-02-05 19:21:46.118610','5','5',3,'',13,1),(73,'2024-02-05 19:24:25.793729','19','18880177-3 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No',3,'',14,1),(74,'2024-02-05 19:24:25.803096','18','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - No Aplica',3,'',14,1),(75,'2024-02-05 19:24:25.811450','17','18880177-3 - ¿Te has realizado una mamografía? - No',3,'',14,1),(76,'2024-02-05 19:24:25.823469','16','18880177-3 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No',3,'',14,1),(77,'2024-02-05 19:24:25.831639','15','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - No',3,'',14,1),(78,'2024-02-05 19:24:25.839283','14','18880177-3 - ¿Te has realizado una mamografía? - No',3,'',14,1),(79,'2024-02-06 13:43:48.537800','9','¿Qué le preguntarías a una matrona o médico especialista sobre cáncer de mama?',3,'',10,1),(80,'2024-02-07 12:12:45.177122','15','15',3,'',13,1),(81,'2024-02-07 12:12:45.182402','14','14',3,'',13,1),(82,'2024-02-07 12:12:45.187227','13','13',3,'',13,1),(83,'2024-02-07 12:12:45.191430','12','12',3,'',13,1),(84,'2024-02-07 12:12:45.195258','11','11',3,'',13,1),(85,'2024-02-07 12:12:45.199652','10','10',3,'',13,1),(86,'2024-02-07 12:12:45.203566','9','9',3,'',13,1),(87,'2024-02-07 12:12:45.207605','8','8',3,'',13,1),(88,'2024-02-07 12:12:45.211460','7','7',3,'',13,1),(89,'2024-02-07 12:14:23.128084','64','18880177-3 - ¿Tienes un familiar directo con cáncer de mama? (hermana, mama, tía, abuela) - Si',3,'',14,1),(90,'2024-02-07 12:14:23.132713','63','18880177-3 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - Si',3,'',14,1),(91,'2024-02-07 12:14:23.136597','62','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - No Aplica',3,'',14,1),(92,'2024-02-07 12:14:23.140880','61','18880177-3 - Fecha de la última mamografía - No Aplica',3,'',14,1),(93,'2024-02-07 12:14:23.145148','60','18880177-3 - ¿Recuerdas cuando fue tu última mamografía? - No',3,'',14,1),(94,'2024-02-07 12:14:23.149959','59','18880177-3 - ¿Te has realizado una mamografía? - Si',3,'',14,1),(95,'2024-02-07 12:14:23.154380','58','18880177-3 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No',3,'',14,1),(96,'2024-02-07 12:14:23.158749','57','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - No',3,'',14,1),(97,'2024-02-07 12:14:23.163967','56','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - No Aplica',3,'',14,1),(98,'2024-02-07 12:14:23.168380','55','18880177-3 - Fecha de la última mamografía - No Aplica',3,'',14,1),(99,'2024-02-07 12:14:23.172950','54','18880177-3 - ¿Recuerdas cuando fue tu última mamografía? - No Aplica',3,'',14,1),(100,'2024-02-07 12:14:23.177033','53','18880177-3 - ¿Te has realizado una mamografía? - No',3,'',14,1),(101,'2024-02-07 12:14:23.181382','52','11111111-1 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No lo se',3,'',14,1),(102,'2024-02-07 12:14:23.185458','51','11111111-1 - ¿Tienes los archivos e informe de tu última mamografía? - No',3,'',14,1),(103,'2024-02-07 12:14:23.189712','50','11111111-1 - ¿Tienes los archivos e informe de tu última mamografía? - No Aplica',3,'',14,1),(104,'2024-02-07 12:14:23.193989','49','11111111-1 - Fecha de la última mamografía - No Aplica',3,'',14,1),(105,'2024-02-07 12:14:23.198129','48','11111111-1 - ¿Recuerdas cuando fue tu última mamografía? - No Aplica',3,'',14,1),(106,'2024-02-07 12:14:23.202623','47','11111111-1 - ¿Te has realizado una mamografía? - No',3,'',14,1),(107,'2024-02-07 12:14:23.208426','46','18880177-3 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No',3,'',14,1),(108,'2024-02-07 12:14:23.211773','45','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - No',3,'',14,1),(109,'2024-02-07 12:14:23.216666','44','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - Si',3,'',14,1),(110,'2024-02-07 12:14:23.221531','43','18880177-3 - Fecha de la última mamografía - 2022',3,'',14,1),(111,'2024-02-07 12:14:23.225272','42','18880177-3 - ¿Recuerdas cuando fue tu última mamografía? - Si',3,'',14,1),(112,'2024-02-07 12:14:23.230041','41','18880177-3 - ¿Te has realizado una mamografía? - Si',3,'',14,1),(113,'2024-02-07 12:14:23.234440','39','8704257-k - ¿Tienes los archivos e informe de tu última mamografía? - No Aplica',3,'',14,1),(114,'2024-02-07 12:14:23.238232','38','8704257-k - ¿Te has realizado una mamografía? - No',3,'',14,1),(115,'2024-02-07 12:14:23.241682','37','13347534-6 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No',3,'',14,1),(116,'2024-02-07 12:14:23.248396','36','13347534-6 - ¿Tienes los archivos e informe de tu última mamografía? - No',3,'',14,1),(117,'2024-02-07 12:14:23.252212','35','13347534-6 - Fecha de la última mamografía - No Aplica',3,'',14,1),(118,'2024-02-07 12:14:23.256050','34','13347534-6 - Fecha de la última mamografía - 2023',3,'',14,1),(119,'2024-02-07 12:14:23.260140','33','13347534-6 - ¿Recuerdas cuando fue tu última mamografía? - Si',3,'',14,1),(120,'2024-02-07 12:14:23.264642','32','13347534-6 - ¿Te has realizado una mamografía? - Si',3,'',14,1),(121,'2024-02-07 12:14:23.268926','31','12111111-1 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No lo se',3,'',14,1),(122,'2024-02-07 12:14:23.272641','30','12111111-1 - ¿Tienes los archivos e informe de tu última mamografía? - No',3,'',14,1),(123,'2024-02-07 12:14:23.276656','29','12111111-1 - ¿Te has realizado una mamografía? - No',3,'',14,1),(124,'2024-02-07 12:14:23.280572','28','11111111-1 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No lo se',3,'',14,1),(125,'2024-02-07 12:14:23.284933','27','11111111-1 - ¿Tienes los archivos e informe de tu última mamografía? - No',3,'',14,1),(126,'2024-02-07 12:14:23.289292','26','11111111-1 - ¿Te has realizado una mamografía? - No',3,'',14,1),(127,'2024-02-07 12:14:23.293473','25','18880177-3 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No',3,'',14,1),(128,'2024-02-07 12:14:23.297561','24','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - No',3,'',14,1),(129,'2024-02-07 12:14:23.300928','23','18880177-3 - ¿Tienes los archivos e informe de tu última mamografía? - Si',3,'',14,1),(130,'2024-02-07 12:14:23.305202','22','18880177-3 - Fecha de la última mamografía - 2022',3,'',14,1),(131,'2024-02-07 12:14:23.309273','21','18880177-3 - ¿Recuerdas cuando fue tu última mamografía? - Si',3,'',14,1),(132,'2024-02-07 12:14:23.313077','20','18880177-3 - ¿Te has realizado una mamografía? - Si',3,'',14,1),(133,'2024-02-07 12:15:08.825640','10','18880177-3 - Hola',3,'',15,1),(134,'2024-02-07 12:15:08.838059','9','18880177-3 - No',3,'',15,1),(135,'2024-02-07 12:15:08.842165','8','11111111-1 - No',3,'',15,1),(136,'2024-02-07 12:15:08.846437','7','18880177-3 - No',3,'',15,1),(137,'2024-02-07 12:15:08.850711','6','8704257-k - No',3,'',15,1),(138,'2024-02-07 12:15:08.855038','5','13347534-6 - Donde me hago la mamografía',3,'',15,1),(139,'2024-02-07 12:15:08.859551','4','12111111-1 - no por ahora',3,'',15,1),(140,'2024-02-07 12:15:08.866858','3','11111111-1 - Dónde se hace el exámen?',3,'',15,1),(141,'2024-02-07 12:15:08.871260','2','18880177-3 - Nada por el momento',3,'',15,1),(142,'2024-02-07 12:15:08.875293','1','18880177-3 - Hola, como estas?',3,'',15,1),(143,'2024-02-07 17:40:38.741867','100','15345890-1 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - No lo se',3,'',14,1),(144,'2024-02-07 17:40:38.755853','99','15345890-1 - ¿Te gustaría recibir más información sobre el cuidado y prevención del cáncer de mama? - Si',3,'',14,1),(145,'2024-02-13 13:54:38.492026','1','MiTabla object (1)',1,'[{\"added\": {}}]',16,1),(146,'2024-02-13 13:54:42.857316','2','MiTabla object (2)',1,'[{\"added\": {}}]',16,1),(147,'2024-02-14 14:49:55.754945','1','MiTabla object (1)',1,'[{\"added\": {}}]',16,1),(148,'2024-02-14 14:50:12.309873','2','MiTabla object (2)',1,'[{\"added\": {}}]',16,1),(149,'2024-02-14 15:34:28.590059','1','MiTabla object (1)',2,'[{\"changed\": {\"fields\": [\"Texto\"]}}]',16,1),(150,'2024-02-15 11:46:51.432178','2','MiTabla object (2)',2,'[{\"changed\": {\"fields\": [\"Texto\"]}}]',16,1),(151,'2024-02-15 12:07:01.281600','2','MensajeContenido object (2)',2,'[{\"changed\": {\"fields\": [\"Genero Usuario\"]}}]',16,1),(152,'2024-02-16 11:59:38.110172','2','MensajeContenido object (2)',2,'[{\"changed\": {\"fields\": [\"Texto\", \"Fecha\"]}}]',16,1),(153,'2024-02-16 11:59:55.077026','2','MensajeContenido object (2)',2,'[{\"changed\": {\"fields\": [\"Texto\"]}}]',16,1),(154,'2024-02-16 12:00:11.848317','3','MensajeContenido object (3)',1,'[{\"added\": {}}]',16,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'botApp','comuna'),(8,'botApp','genero'),(16,'botApp','mensajecontenido'),(9,'botApp','ocupacion'),(10,'botApp','pregunta'),(12,'botApp','preguntaopcionrespuesta'),(11,'botApp','sistemasalud'),(13,'botApp','usuario'),(14,'botApp','usuariorespuesta'),(15,'botApp','usuariotextopregunta'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-01-24 14:22:59.498805'),(2,'auth','0001_initial','2024-01-24 14:23:01.544518'),(3,'admin','0001_initial','2024-01-24 14:23:02.023693'),(4,'admin','0002_logentry_remove_auto_add','2024-01-24 14:23:02.166457'),(5,'admin','0003_logentry_add_action_flag_choices','2024-01-24 14:23:03.869783'),(6,'contenttypes','0002_remove_content_type_name','2024-01-24 14:23:04.538928'),(7,'auth','0002_alter_permission_name_max_length','2024-01-24 14:23:04.975437'),(8,'auth','0003_alter_user_email_max_length','2024-01-24 14:23:05.360015'),(9,'auth','0004_alter_user_username_opts','2024-01-24 14:23:05.466610'),(10,'auth','0005_alter_user_last_login_null','2024-01-24 14:23:05.903697'),(11,'auth','0006_require_contenttypes_0002','2024-01-24 14:23:05.918741'),(12,'auth','0007_alter_validators_add_error_messages','2024-01-24 14:23:06.066434'),(13,'auth','0008_alter_user_username_max_length','2024-01-24 14:23:06.605092'),(14,'auth','0009_alter_user_last_name_max_length','2024-01-24 14:23:06.895118'),(15,'auth','0010_alter_group_name_max_length','2024-01-24 14:23:07.306613'),(16,'auth','0011_update_proxy_permissions','2024-01-24 14:23:07.369680'),(17,'auth','0012_alter_user_first_name_max_length','2024-01-24 14:23:07.799630'),(18,'botApp','0001_initial','2024-01-24 14:23:10.270523'),(19,'botApp','0002_usuario_fecha_ingreso','2024-01-24 14:23:10.419788'),(20,'botApp','0003_rename_pregunta_pregunta_texto_pregunta','2024-01-24 14:23:10.521689'),(21,'botApp','0004_rename_texto_pregunta_pregunta_pregunta','2024-01-24 14:23:10.673027'),(22,'botApp','0005_alter_usuario_fecha_ingreso','2024-01-24 14:23:11.006274'),(23,'botApp','0006_alter_usuario_fecha_ingreso','2024-01-24 14:23:11.231841'),(24,'botApp','0007_alter_respuestausuario_id_opc_respuesta_and_more','2024-01-24 14:23:11.366837'),(25,'botApp','0008_alter_respuestausuario_fecha_respuesta','2024-01-24 14:23:11.730585'),(26,'botApp','0009_pruebaapi_alter_genero_opc_genero_and_more','2024-01-24 14:23:11.836316'),(27,'botApp','0010_rename_pruebaapi_prueba','2024-01-24 14:23:12.277327'),(28,'botApp','0011_delete_prueba_remove_respuestausuario_id_usuario_and_more','2024-01-24 14:23:14.701114'),(29,'botApp','0012_prueba_and_more','2024-01-24 14:23:15.378439'),(30,'botApp','0013_delete_prueba','2024-01-24 14:23:15.429199'),(31,'botApp','0014_rename_id_manychat_respuestausuario_id_manychat_and_more','2024-01-24 14:23:15.921030'),(32,'sessions','0001_initial','2024-01-24 14:23:16.052502'),(33,'botApp','0015_rename_opc_respuesta_preguntaopcionrespuesta','2024-01-25 13:34:15.677002'),(34,'botApp','0016_rename_respuestausuario_usuariorespuesta','2024-01-25 13:34:15.824895'),(35,'botApp','0017_alter_usuario_id','2024-01-25 13:34:16.659107'),(36,'botApp','0018_alter_usuario_id','2024-01-25 13:34:16.680099'),(37,'botApp','0019_remove_usuariorespuesta_id_pregunta','2024-01-25 13:34:17.026280'),(38,'botApp','0020_rename_id_manychat_usuariorespuesta_id_usuario','2024-01-25 13:34:17.369429'),(39,'botApp','0021_alter_comuna_id_alter_genero_id_alter_ocupacion_id_and_more','2024-01-25 13:34:22.069960'),(40,'botApp','0022_remove_usuariorespuesta_id_usuario_and_more','2024-01-26 12:30:09.909399'),(41,'botApp','0023_usuariotextopregunta','2024-01-30 14:40:57.086308'),(42,'botApp','0024_usuario_referencia','2024-01-30 14:40:58.970306'),(43,'botApp','0025_mitabla','2024-02-13 13:53:41.825487'),(44,'botApp','0026_delete_mitabla','2024-02-14 14:47:19.081181'),(45,'botApp','0027_mitabla','2024-02-14 14:47:19.187363'),(46,'botApp','0028_mitabla_genero_usuario','2024-02-15 12:06:01.186553'),(47,'botApp','0029_rename_mitabla_mensajecontenido','2024-02-15 12:06:01.231978');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('52cvfhibysp1oae3g1d9qri7wyblhhlr','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1rcOYS:eQDUu2aHlvvuE-8uWDWw_wTYi10wUE8QVPmkxS4Z2XQ','2024-03-05 11:44:56.070858'),('j9o6p844t6hv8j8vbgmbpxnojfz1juxx','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1rUpGU:-n9G_rMDcTCy5fOdQBgPM4wRs_TNNQvOXSB6JpqvYzo','2024-02-13 14:39:06.129472'),('jlxki4mq7jrufqczq9ravgjivqtxpxez','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1rcOba:Jeln6jRa_Sg5TqKysk2XJGA0MSQrRWiC44qu6efvSCc','2024-03-05 11:48:10.305036'),('mo623570if19ek68my0fy0p1e38mqhx3','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1rY8YB:OZDFMIOA0cZ5iIZKK_YCi32i-9OStWJrNnHT_XNE6CM','2024-02-22 17:51:03.965793'),('p9mhrt2cekxvzw756b9idilnr9wgro18','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1rSeDH:Ryc2CoCEZWI6qToeAcCqh1y-oWfXK520n7IZPFrE9HM','2024-02-07 14:26:47.248586'),('rop0b54qol446sbkjvsanflrgtvsencq','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1rcOaX:N82khZiiZnCD5gS4a-Wy7tkxxVRoDvx88nuJM09Qhj4','2024-03-05 11:47:05.068425'),('sl0efudxiafuilghx4lzveu3b0aq7w5p','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1rcOW7:sRfyjy6B99KZ6wqU3i32xRvm4fSbkvirx3lWOCYgv9U','2024-03-05 11:42:31.657866'),('vakdrf2ftdg54rqrh3kjao9n6y4vew5i','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1rcOSE:TZpNCb2C325bFRGQ1ClUhJwfWhff8U-UnjuY9TQKPAw','2024-03-05 11:38:30.150775'),('yshn8yz5qtevvszrqzep0pa4emz09qxm','.eJxVjM0KgzAQhN8l5xLW_Bjtsfc-Q0h2t41tScDoqfTda8CDwsDAfDPzFT6sS_Jr5dlPJK6iE5djFgO-OTdAr5CfRWLJyzxF2Spyp1XeC_HntndPBynUtK1ZQ6-IrCXsmg06EoAZ1SZEJgeKeQzWmYEjm54ZoiPtHgrJGbDi9wfsNzgy:1razqN:PeP5mve1jVCStdAq5mvSUNzAXoBjziUIhxXQDjfscWw','2024-03-01 15:09:39.292026');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 12:04:04
