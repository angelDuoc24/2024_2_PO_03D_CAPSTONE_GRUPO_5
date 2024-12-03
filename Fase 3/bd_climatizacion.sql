-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_climatizacion
-- ------------------------------------------------------
-- Server version	8.0.40

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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add categorias',7,'add_categorias'),(26,'Can change categorias',7,'change_categorias'),(27,'Can delete categorias',7,'delete_categorias'),(28,'Can view categorias',7,'view_categorias'),(29,'Can add cliente',8,'add_cliente'),(30,'Can change cliente',8,'change_cliente'),(31,'Can delete cliente',8,'delete_cliente'),(32,'Can view cliente',8,'view_cliente'),(33,'Can add empleado',9,'add_empleado'),(34,'Can change empleado',9,'change_empleado'),(35,'Can delete empleado',9,'delete_empleado'),(36,'Can view empleado',9,'view_empleado'),(37,'Can add pedido',10,'add_pedido'),(38,'Can change pedido',10,'change_pedido'),(39,'Can delete pedido',10,'delete_pedido'),(40,'Can view pedido',10,'view_pedido'),(41,'Can add pago',11,'add_pago'),(42,'Can change pago',11,'change_pago'),(43,'Can delete pago',11,'delete_pago'),(44,'Can view pago',11,'view_pago'),(45,'Can add orden_de_compra',12,'add_orden_de_compra'),(46,'Can change orden_de_compra',12,'change_orden_de_compra'),(47,'Can delete orden_de_compra',12,'delete_orden_de_compra'),(48,'Can view orden_de_compra',12,'view_orden_de_compra'),(49,'Can add producto',13,'add_producto'),(50,'Can change producto',13,'change_producto'),(51,'Can delete producto',13,'delete_producto'),(52,'Can view producto',13,'view_producto'),(53,'Can add carrito',14,'add_carrito'),(54,'Can change carrito',14,'change_carrito'),(55,'Can delete carrito',14,'delete_carrito'),(56,'Can view carrito',14,'view_carrito'),(57,'Can add reporte',15,'add_reporte'),(58,'Can change reporte',15,'change_reporte'),(59,'Can delete reporte',15,'delete_reporte'),(60,'Can view reporte',15,'view_reporte'),(61,'Can add compra',16,'add_compra'),(62,'Can change compra',16,'change_compra'),(63,'Can delete compra',16,'delete_compra'),(64,'Can view compra',16,'view_compra'),(65,'Can add producto compra',17,'add_productocompra'),(66,'Can change producto compra',17,'change_productocompra'),(67,'Can delete producto compra',17,'delete_productocompra'),(68,'Can view producto compra',17,'view_productocompra'),(69,'Can add boleta',18,'add_boleta'),(70,'Can change boleta',18,'change_boleta'),(71,'Can delete boleta',18,'delete_boleta'),(72,'Can view boleta',18,'view_boleta'),(73,'Can add mensaje',19,'add_mensaje'),(74,'Can change mensaje',19,'change_mensaje'),(75,'Can delete mensaje',19,'delete_mensaje'),(76,'Can view mensaje',19,'view_mensaje');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$Sg0PKzSQeAqKUB4OI2r9Th$orbxtchllVfeaV0/V6W7P5Avpt/Ds1zty2UGkkn3kPY=',NULL,1,'admin','','','admin@admin.com',1,1,'2024-11-18 21:36:14.240132'),(17,'pbkdf2_sha256$600000$SKVwfPZLpDX5Zx5TBzJUaK$H0lf+rSEeGB+T3GDTRzKpG/nyreEi4PIwLaCkaxsMtE=','2024-12-03 01:05:57.246791',1,'gerardo','','','glclimatizacion@hotmail.com',0,1,'2024-12-03 00:47:24.667623'),(18,'pbkdf2_sha256$600000$XfhJeI5JghpAW5sHamvA2Y$b6zx/FTEr/KNqvQNvYkhzsEgTOoEO/pA9ciLAmTdOuw=','2024-12-03 00:54:02.458960',0,'usuario1','','','usuario1@gmail.com',0,1,'2024-12-03 00:51:29.781433'),(19,'pbkdf2_sha256$600000$ktkdVOK5NdfI2D0p3D3g2h$QVkksOE/GIZ5Wu9XrkO2KjRPm/TbLrtb0DhDjSnhkaw=','2024-12-03 01:27:58.144790',0,'usuario2','','','usuario2@gmail.com',0,1,'2024-12-03 00:52:10.970736'),(20,'pbkdf2_sha256$600000$Bt4MsuMQKrBQbx3TKQ6ovv$3NEVpFvevZU7HcuvP3Ik/Kja854qqrKTSGJT8EgdEj4=','2024-12-03 01:08:00.174898',0,'usuario3','','','usuario3@gmail.com',0,1,'2024-12-03 00:52:59.687858');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(18,'website','boleta'),(14,'website','carrito'),(7,'website','categorias'),(8,'website','cliente'),(16,'website','compra'),(9,'website','empleado'),(19,'website','mensaje'),(12,'website','orden_de_compra'),(11,'website','pago'),(10,'website','pedido'),(13,'website','producto'),(17,'website','productocompra'),(15,'website','reporte');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-18 21:34:45.272652'),(2,'auth','0001_initial','2024-11-18 21:34:46.062781'),(3,'admin','0001_initial','2024-11-18 21:34:46.266919'),(4,'admin','0002_logentry_remove_auto_add','2024-11-18 21:34:46.280920'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-18 21:34:46.307927'),(6,'contenttypes','0002_remove_content_type_name','2024-11-18 21:34:46.451626'),(7,'auth','0002_alter_permission_name_max_length','2024-11-18 21:34:46.569695'),(8,'auth','0003_alter_user_email_max_length','2024-11-18 21:34:46.693579'),(9,'auth','0004_alter_user_username_opts','2024-11-18 21:34:46.706583'),(10,'auth','0005_alter_user_last_login_null','2024-11-18 21:34:46.807051'),(11,'auth','0006_require_contenttypes_0002','2024-11-18 21:34:46.812051'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-18 21:34:46.831835'),(13,'auth','0008_alter_user_username_max_length','2024-11-18 21:34:46.927325'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-18 21:34:47.032899'),(15,'auth','0010_alter_group_name_max_length','2024-11-18 21:34:47.121582'),(16,'auth','0011_update_proxy_permissions','2024-11-18 21:34:47.131579'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-18 21:34:47.233704'),(18,'sessions','0001_initial','2024-11-18 21:34:47.284176'),(19,'website','0001_initial','2024-11-18 21:34:48.109863'),(20,'website','0002_alter_producto_potencia','2024-11-18 22:36:41.435902'),(21,'website','0003_compra_productocompra_boleta','2024-11-22 00:56:42.966063'),(22,'website','0004_empleado_contreaseña','2024-11-23 22:20:09.290503'),(23,'website','0005_compra_estado','2024-11-23 22:20:09.342506'),(24,'website','0006_mensaje','2024-11-27 21:32:58.055949');
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
INSERT INTO `django_session` VALUES ('0d3lkaz5k703e7cu8bl51gvcqn2at3ty','.eJxVjEEOwiAQRe_C2hCgTOm4dO8ZCMyAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIsJnH63WKgR6o74Huotyap1XWZo9wVedAur43T83K4fwcl9PKttUMNaBlVBhxMBiZm7SApdiow2NEyRcoODYFWrHEiIHSsYAxmAPH-ANhDN4U:1tH9xN:I9EbzqsdSZwQqOow2eRqueJDxBKLKVXxNa2hil242C0','2024-12-13 22:59:25.019458'),('149ja7hzt28khxw85fskygfmo9lmrqlu','.eJxVjDEOwjAMAP-SGUVO04aEkZ03VLZj0wJKpKadEH9HlTrAene6txlxW6dxa7KMczYXM5jTLyPkp5Rd5AeWe7Vcy7rMZPfEHrbZW83yuh7t32DCNu3bKByAOINH7VOPnl2XErmIclZRkAiJOqBBPHD2Co7UhdAHjRwSm88X-oo4YQ:1tIFT0:hfZ89dBe_FHp6fDC-hCMODLjA2QmKRbobKvc7hd6XOo','2024-12-16 23:04:34.816810'),('1600uskcsuwrrhbi3kls8asnxs8oe4kh','.eJxVjDEOwjAMAP-SGUVO04aEkZ03VLZj0wJKpKadEH9HlTrAene6txlxW6dxa7KMczYXM5jTLyPkp5Rd5AeWe7Vcy7rMZPfEHrbZW83yuh7t32DCNu3bKByAOINH7VOPnl2XErmIclZRkAiJOqBBPHD2Co7UhdAHjRwSm88X-oo4YQ:1tHBCN:cDQFepjt4mIucEveLI_IFkyL5-_x9sUCbV0v0amDpKg','2024-12-14 00:18:59.007392'),('3yda1o0jz3kyv2sku7m25zsxxp9yxbwf','.eJxVjDEOwjAMAP-SGUVO04aEkZ03VLZj0wJKpKadEH9HlTrAene6txlxW6dxa7KMczYXM5jTLyPkp5Rd5AeWe7Vcy7rMZPfEHrbZW83yuh7t32DCNu3bKByAOINH7VOPnl2XErmIclZRkAiJOqBBPHD2Co7UhdAHjRwSm88X-oo4YQ:1tEykz:0edTaGt9LfteVca9YMy9wCUXGljkUgfQEytN-JT6XRY','2024-12-07 22:37:37.739610'),('dmxgynv0szvyfguy9u79y5rmcjkrlyyv','.eJxVjEEOwiAQRe_C2hCgTOm4dO8ZCMyAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIsJnH63WKgR6o74Huotyap1XWZo9wVedAur43T83K4fwcl9PKttUMNaBlVBhxMBiZm7SApdiow2NEyRcoODYFWrHEiIHSsYAxmAPH-ANhDN4U:1tHtaU:_R4QjYoEC26l6krvSYgA6jp7DUM7ph3F6YqY_PR1w80','2024-12-15 23:42:50.658677'),('f7s3lwn0o1nidu207ft8rcwcdarutbrc','.eJxVjMsOwiAQRf-FtSGAPF267zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYhdm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGnTvl5Pdy_gwqjfmuJSjqF0jgvggUQ1klK2qMp2ZAUjrwlU4yzpJVSQYuSAd1ZFYk6FGDvD8WcN3I:1tFnRQ:UXwEhGiTXJjNY_6CoVQutYBHwAD5vfTDCe6uRVMAlts','2024-12-10 04:44:48.617567'),('i0kxd5jpm8onm7fm27wskc59tn8cz6wa','.eJxVjMsOwiAQRf-FtSGAPF267zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYhdm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGnTvl5Pdy_gwqjfmuJSjqF0jgvggUQ1klK2qMp2ZAUjrwlU4yzpJVSQYuSAd1ZFYk6FGDvD8WcN3I:1tFwZ9:gnebVQu14D9Oze7hVCVFaWqebJFaS7CxOIN0unP0CYQ','2024-12-10 14:29:23.125882'),('l6yabtugnyp39t6p2zkhzqfx5zak55qk','.eJxVjDkOwjAQRe_iGllZ7MwMJT1nsDyLSQAlUpYKcXeIlALa_977L5fytvZpW2xOg7qza93pd-MsDxt3oPc83iYv07jOA_td8Qdd_HVSe14O9--gz0v_rdGwjghCpkTAEKUULRRIaisNVcihgpqgiR2wZQ0FWJpQddiidKju_QHp0zfe:1tDNud:S0d9IidXHuk1cJAuufeuTJnvVb0uWLHE_ORuB0gZZko','2024-12-03 13:04:59.066644'),('ud6hf6k10t3a2p6f95aybpg3nokjxyor','.eJxVjEsOAiEQBe_C2hCgbT4u3XsG0vxk1EAyzKyMdzcks9Dtq6r3Zp72rfp95NUviV2YdOz0OwaKz9wmSQ9q985jb9u6BD4VftDBbz3l1_Vw_w4qjTprgugQUZkClsA4hcZRUlSiFsISRpKgig7FnbV1RQFaKYIFMFlbTOzzBfrfN2E:1tIHhm:c64gzrLPoqO1QeOsZJkqd7R3fTehK6rkVc6Y5Gi2zBY','2024-12-17 01:27:58.149352');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_boleta`
--

DROP TABLE IF EXISTS `website_boleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_boleta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_emision` datetime(6) NOT NULL,
  `numero_boleta` varchar(12) NOT NULL,
  `compra_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_boleta` (`numero_boleta`),
  UNIQUE KEY `compra_id` (`compra_id`),
  CONSTRAINT `website_boleta_compra_id_94d90d4c_fk_website_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `website_compra` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_boleta`
--

LOCK TABLES `website_boleta` WRITE;
/*!40000 ALTER TABLE `website_boleta` DISABLE KEYS */;
INSERT INTO `website_boleta` VALUES (29,'2024-12-03 00:55:01.343450','7207173643',29),(30,'2024-12-03 00:56:29.409783','2405555143',30),(31,'2024-12-03 00:58:01.047537','9323850519',31),(32,'2024-12-03 00:59:01.422426','9158819558',32),(33,'2024-12-03 01:00:35.233458','7149175547',33),(34,'2024-12-03 01:02:04.380710','4644632716',34),(35,'2024-12-03 01:15:57.636155','5541465349',35);
/*!40000 ALTER TABLE `website_boleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_carrito`
--

DROP TABLE IF EXISTS `website_carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_carrito` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `cliente_id` bigint NOT NULL,
  `producto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_carrito_cliente_id_2dda57ea_fk_website_c` (`cliente_id`),
  KEY `website_carrito_producto_id_5b33f67a_fk_website_p` (`producto_id`),
  CONSTRAINT `website_carrito_cliente_id_2dda57ea_fk_website_c` FOREIGN KEY (`cliente_id`) REFERENCES `website_cliente` (`id_cliente`),
  CONSTRAINT `website_carrito_producto_id_5b33f67a_fk_website_p` FOREIGN KEY (`producto_id`) REFERENCES `website_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_carrito`
--

LOCK TABLES `website_carrito` WRITE;
/*!40000 ALTER TABLE `website_carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_categorias`
--

DROP TABLE IF EXISTS `website_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_categorias` (
  `id_categoria` bigint NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_categorias`
--

LOCK TABLES `website_categorias` WRITE;
/*!40000 ALTER TABLE `website_categorias` DISABLE KEYS */;
INSERT INTO `website_categorias` VALUES (1,'AIRE');
/*!40000 ALTER TABLE `website_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_cliente`
--

DROP TABLE IF EXISTS `website_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_cliente` (
  `id_cliente` bigint NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido_p` varchar(60) NOT NULL,
  `apellido_m` varchar(60) NOT NULL,
  `telefono` int NOT NULL,
  `comuna` varchar(40) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `fecha_nacimiento` datetime(6) NOT NULL,
  `rut` varchar(9) NOT NULL,
  `correo` varchar(254) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_cliente`
--

LOCK TABLES `website_cliente` WRITE;
/*!40000 ALTER TABLE `website_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_compra`
--

DROP TABLE IF EXISTS `website_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_compra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `usuario_id` int NOT NULL,
  `estado` varchar(20) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `comuna` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `website_compra_usuario_id_fd0e67dd_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `website_compra_usuario_id_fd0e67dd_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_compra`
--

LOCK TABLES `website_compra` WRITE;
/*!40000 ALTER TABLE `website_compra` DISABLE KEYS */;
INSERT INTO `website_compra` VALUES (29,'2024-12-03 00:55:01.319269',1029980.00,18,'pendiente','13 norte 4656','2024-12-03',NULL),(30,'2024-12-03 00:56:29.396783',1349990.00,18,'pendiente','6 oeste 7890','2024-12-07',NULL),(31,'2024-12-03 00:58:01.020511',899990.00,19,'pendiente','19 poniente 4567','2024-12-05',NULL),(32,'2024-12-03 00:59:01.407425',1229980.00,19,'pendiente','10 poniente 3454','2024-12-03',NULL),(33,'2024-12-03 01:00:35.210753',1099980.00,20,'pendiente','13 norte 5678','2024-12-06',NULL),(34,'2024-12-03 01:02:04.365708',1229980.00,20,'pendiente','34 oeste 5643','2024-12-07',NULL),(35,'2024-12-03 01:15:57.616992',519990.00,20,'pendiente','6 oriente 5675','2024-12-05','Vitacura');
/*!40000 ALTER TABLE `website_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_empleado`
--

DROP TABLE IF EXISTS `website_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_empleado` (
  `id_empleado` bigint NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(60) NOT NULL,
  `apellido_materno` varchar(60) NOT NULL,
  `rut` varchar(9) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `contreaseña` varchar(50) NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_empleado`
--

LOCK TABLES `website_empleado` WRITE;
/*!40000 ALTER TABLE `website_empleado` DISABLE KEYS */;
INSERT INTO `website_empleado` VALUES (1,'nicolas','luna','avila','207313009','n.luna@duocuc.cl','admin','1234');
/*!40000 ALTER TABLE `website_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_mensaje`
--

DROP TABLE IF EXISTS `website_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_mensaje` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `mensaje` text NOT NULL,
  `respuesta` text,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `website_mensaje_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_mensaje`
--

LOCK TABLES `website_mensaje` WRITE;
/*!40000 ALTER TABLE `website_mensaje` DISABLE KEYS */;
INSERT INTO `website_mensaje` VALUES (9,20,'CANCELAR PEDIDO','por temas externos necesito anular el pedido N34, gracias',NULL),(10,19,'Consulta','Tengo una habitacion de 30 metros cuadrados, ¿que equipo podría recomendarme?',NULL);
/*!40000 ALTER TABLE `website_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_orden_de_compra`
--

DROP TABLE IF EXISTS `website_orden_de_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_orden_de_compra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_orden` varchar(200) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `total` int NOT NULL,
  `sitio_web` varchar(25) NOT NULL,
  `cliente_id` bigint NOT NULL,
  `id_pedido_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_orden_de_com_cliente_id_7099c3d8_fk_website_c` (`cliente_id`),
  KEY `website_orden_de_com_id_pedido_id_d48973ad_fk_website_p` (`id_pedido_id`),
  CONSTRAINT `website_orden_de_com_cliente_id_7099c3d8_fk_website_c` FOREIGN KEY (`cliente_id`) REFERENCES `website_cliente` (`id_cliente`),
  CONSTRAINT `website_orden_de_com_id_pedido_id_d48973ad_fk_website_p` FOREIGN KEY (`id_pedido_id`) REFERENCES `website_pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_orden_de_compra`
--

LOCK TABLES `website_orden_de_compra` WRITE;
/*!40000 ALTER TABLE `website_orden_de_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_orden_de_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_pago`
--

DROP TABLE IF EXISTS `website_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_pago` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `metodo_pago` varchar(20) NOT NULL,
  `monto` int NOT NULL,
  `pedido_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_pago_pedido_id_10424544_fk_website_pedido_id` (`pedido_id`),
  CONSTRAINT `website_pago_pedido_id_10424544_fk_website_pedido_id` FOREIGN KEY (`pedido_id`) REFERENCES `website_pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_pago`
--

LOCK TABLES `website_pago` WRITE;
/*!40000 ALTER TABLE `website_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_pedido`
--

DROP TABLE IF EXISTS `website_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_pedido` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `calificacion` int NOT NULL,
  `empleado_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_pedido_empleado_id_efd6dd99_fk_website_e` (`empleado_id`),
  CONSTRAINT `website_pedido_empleado_id_efd6dd99_fk_website_e` FOREIGN KEY (`empleado_id`) REFERENCES `website_empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_pedido`
--

LOCK TABLES `website_pedido` WRITE;
/*!40000 ALTER TABLE `website_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_producto`
--

DROP TABLE IF EXISTS `website_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_producto` (
  `id_producto` bigint NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `descripcion_producto` longtext NOT NULL,
  `precio` int NOT NULL,
  `precio_compra` int NOT NULL,
  `stock` int NOT NULL,
  `potencia` int NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `website_producto_categoria_id_473ffdee_fk_website_c` (`categoria_id`),
  CONSTRAINT `website_producto_categoria_id_473ffdee_fk_website_c` FOREIGN KEY (`categoria_id`) REFERENCES `website_categorias` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_producto`
--

LOCK TABLES `website_producto` WRITE;
/*!40000 ALTER TABLE `website_producto` DISABLE KEYS */;
INSERT INTO `website_producto` VALUES (1,'AIRE ACONDICIONADO SPLIT MURO FRESH AIR INVERTER','Equipo Split Presentación Muro, Capacidad de Frío 9000 BTUH, Refrigerante R32, Bomba de Calor del Tipo INVERTER. Alimentación Monofásica 220V/50HZ. Equipo de Alta Eficiencia, que puede operar en condición de Calefacción hasta -15°C Exterior y en etapa de Frio hasta 60°C Exterior, posee la capacidad de Tomar Aire Exterior y Extraer aire con alta concentración de CO2 del recinto para una óptima ventilación (opción incluida en el control remoto), posee Filtro Combinado HEPA y Carbón Activado para Toma de Aire Exterior y además Incorpora Luz UVC para conseguir una mejor calidad de aire interior eliminando Virus y Bacterias. Incluye Accesorios de Montaje para sistema de Inyección Aire Exterior y Extracción.',500000,419999,1000,9000,'Img/1.jpg',1),(2,'EQUIPO AIRE ACONDICIONADO SPLIT MURO INFINITY INVERTER','Mini Split Muro Bomba de Calor 12000 BTUH INVERTER R32. Equipo con clase Eficiencia A, Alimentacion Monofasica 220V/50HZ. Incluye Kit de Cañeria de 4 mt.',499990,399999,1500,12000,'Img/2.jpg',1),(3,'AIRE ACONDICIONADO SPLIT MURO ON-OFF R32','Mini Split Muro Bomba de Calor 9000 BTUH ON-OFF R32. Equipo con clase Eficiencia A, Alimentacion Monofasica 220V/50HZ. Incluye Kit de Cañeria de 4 mt.',529990,429988,1000,12000,'Img/3.jpg',1),(4,'AIRE ACONDICIONADO SPLIT BTUH ON-OFF','Equipo Split Presentación Muro, Capacidad de Frío 9000 BTUH, Refrigerante R410A, Bomba de Calor del Tipo INVERTER, serie APHRO. Alimentación Monofásica 220V/50HZ. Equipo de Alta Eficiencia, mas compacto y liviano en su unidad Externa, con un nuevo diseño de Panel Frontal y Control remoto Inalambrico. Opera con hasta 7 velcodiades de aire de inyeccion, mas silencioso. Incluye Kit de Cañerias de 4 mt y cables de fuerza y control.',519990,419990,2500,9000,'Img/4_R4T81Bc.jpg',1),(5,'AIRE ACONDICIONADO SPLIT MURO INVERTER R410A','Mini Split Muro Bomba de Calor 9000 BTUH R410A serie N2. Equipo con clase Eficiencia A, Alimentacion Monofasica 220V/50HZ. Incluye Kit de Cañeria de 4 mt.',399990,299990,1000,9000,'Img/5.jpg',1),(6,'AIRE ACONDICIONADO SPLIT MURO INVERTER VIRUS','Blue Fin: Recubrimiento en el intercambiador de la unidad condensadora que evita la corrosión en ambientes húmedos y salinos (más agresivos de lo normal).\r\nFunción de Autodiagnóstico: Monitoreo constante de la unidad. En caso de falla, detiene y protege el sistema automáticamente, mostrando el código de protección o falla en el visor de la unidad interior.\r\nReinicio Automático: En caso de corte de energía eléctrica, el equipo vuelve a operar en la última configuración solicitada por el usuario.\r\nSu tecnología permite capturar material particulado PM2.5, encapsular virus y bacterias.\r\nProtección \"Blue Fin\": Aplicada tanto en la unidad interior como exterior.\r\nVentajas del Sistema Inverter\r\nMás silencioso: El compresor y el ventilador funcionan a velocidades bajas.\r\nMás confort: La temperatura se mantiene estable sin cambios bruscos.\r\nMás ahorro energético: Gracias a la regulación de la frecuencia de funcionamiento del compresor, se alarga la vida del aparato al evitar continuos arranques y paradas.\r\nNota: Los equipos Inverter permiten que el compresor, en lugar de detenerse, reduzca su régimen de funcionamiento, evitando continuos arranques y paradas. Esto disminuye el consumo eléctrico, mantiene una temperatura más estable y reduce el nivel sonoro.',699990,599990,1000,12000,'Img/6.jpg',1),(7,'AIRE ACONDICIONADO SPLIT MURO 18.000 BTUH INVERTER R410A NEW COOL DESIGN','Mini Split Muro Bomba de Calor 18000 BTUH R410A Inverter Aphro Virus Protect. Equipo con clase Eficiencia A, Alimentacion Monofasica 220V/50HZ, y filtro de Iones de Plata. Incluye Kit de Cañeria de 4 mt.',850000,65000,2000,18000,'Img/GES9ECO_INV_CD_12_18.avif',1);
/*!40000 ALTER TABLE `website_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_productocompra`
--

DROP TABLE IF EXISTS `website_productocompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_productocompra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int unsigned DEFAULT NULL,
  `compra_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_productocompra_compra_id_20dd67c2_fk_website_compra_id` (`compra_id`),
  CONSTRAINT `website_productocompra_compra_id_20dd67c2_fk_website_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `website_compra` (`id`),
  CONSTRAINT `website_productocompra_chk_1` CHECK ((`cantidad` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_productocompra`
--

LOCK TABLES `website_productocompra` WRITE;
/*!40000 ALTER TABLE `website_productocompra` DISABLE KEYS */;
INSERT INTO `website_productocompra` VALUES (35,'EQUIPO AIRE ACONDICIONADO SPLIT MURO INFINITY INVERTER',499990.00,1,29),(36,'AIRE ACONDICIONADO SPLIT MURO ON-OFF R32',529990.00,1,29),(37,'EQUIPO AIRE ACONDICIONADO SPLIT MURO INFINITY INVERTER',499990.00,1,30),(38,'AIRE ACONDICIONADO SPLIT MURO 18.000 BTUH INVERTER R410A NEW COOL DESIGN',850000.00,1,30),(39,'AIRE ACONDICIONADO SPLIT MURO FRESH AIR INVERTER',500000.00,1,31),(40,'AIRE ACONDICIONADO SPLIT MURO INVERTER R410A',399990.00,1,31),(41,'AIRE ACONDICIONADO SPLIT MURO ON-OFF R32',529990.00,1,32),(42,'AIRE ACONDICIONADO SPLIT MURO INVERTER VIRUS',699990.00,1,32),(43,'AIRE ACONDICIONADO SPLIT MURO INVERTER VIRUS',699990.00,1,33),(44,'AIRE ACONDICIONADO SPLIT MURO INVERTER R410A',399990.00,1,33),(45,'AIRE ACONDICIONADO SPLIT MURO ON-OFF R32',529990.00,1,34),(46,'AIRE ACONDICIONADO SPLIT MURO INVERTER VIRUS',699990.00,1,34),(47,'AIRE ACONDICIONADO SPLIT BTUH ON-OFF',519990.00,1,35);
/*!40000 ALTER TABLE `website_productocompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_reporte`
--

DROP TABLE IF EXISTS `website_reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_reporte` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_reporte` varchar(200) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `documento` int NOT NULL,
  `id_orden_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_reporte_id_orden_id_cbe237ab_fk_website_o` (`id_orden_id`),
  CONSTRAINT `website_reporte_id_orden_id_cbe237ab_fk_website_o` FOREIGN KEY (`id_orden_id`) REFERENCES `website_orden_de_compra` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_reporte`
--

LOCK TABLES `website_reporte` WRITE;
/*!40000 ALTER TABLE `website_reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_reporte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 23:10:51
