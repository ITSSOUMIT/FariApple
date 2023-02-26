-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'8sCCpmDUxwqtAbQj6UJTu4GhWBC4pj8Y',1,'2023-02-20 00:12:07','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2028-02-20 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,'Top Slider Image 2','2028-02-20 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(3,'Homepage middle 1','2028-02-20 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(4,'Homepage middle 2','2028-02-20 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(5,'Homepage middle 3','2028-02-20 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(6,'Homepage big 1','2028-02-20 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(7,'Homepage bottom small','2028-02-20 00:00:00','not_set','ZEZAIFRG5IHK','promotion/7.jpg','/products',0,7,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(8,'Product sidebar','2028-02-20 00:00:00','product-sidebar','UG52CU8V9TV2','promotion/8.jpg','/products',0,8,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(9,'Homepage big 2','2028-02-20 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Atque ab soluta qui sit rerum quis. Ab numquam harum quis numquam voluptatum ipsa. Provident deserunt perspiciatis beatae minus doloremque est. Exercitationem quis mollitia iure omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(2,'Fashion',0,'Autem eius corrupti dolorem perspiciatis beatae eum expedita animi. Est dicta necessitatibus voluptates quo maiores. Assumenda quis impedit temporibus blanditiis eum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(3,'Electronic',0,'Saepe ut porro dolorem error. Voluptatem voluptatem veniam voluptas suscipit quis recusandae maiores. Autem aliquam commodi omnis corporis et iusto.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(4,'Commercial',0,'In est praesentium natus. Unde possimus similique sed dolore. Et quia odio fuga tempora minima dolor in. Aut inventore nihil numquam esse aut qui. Beatae nam exercitationem possimus nihil ut et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Mr. Cordell Bartoletti Sr.','jordan.moore@example.net','1-737-274-9845','6659 Zoila Shoals Apt. 243\nLeviton, AZ 61747-6837','Aut corrupti nemo perferendis eos saepe.','Laudantium distinctio ea nostrum at quae fugiat ad. Ut ducimus error veritatis et tempora. Aliquid quia tempora tempora ducimus. Et numquam et mollitia sed similique quasi nemo. Itaque est rem asperiores odit nihil recusandae itaque. Molestiae illo libero quis aut placeat repellendus. Id aut doloribus reprehenderit voluptatum. Nihil non nulla ducimus cum. Rem optio ut voluptatem et neque. Recusandae eum excepturi perspiciatis eos. Quo in cupiditate dolorem dicta aut quos.','read','2023-02-20 00:12:06','2023-02-20 00:12:06'),(2,'Ted Lind','greichert@example.net','+1.936.807.1686','98498 Toy Plains Suite 865\nNorth Jabari, MI 72867-8993','Corporis nostrum repudiandae ad id magni.','Error autem quibusdam omnis architecto. Cum sed aut qui labore. Adipisci dolore omnis numquam non excepturi. Accusantium sed culpa vel qui pariatur nisi possimus. Ab doloremque reiciendis quisquam ducimus soluta earum. Vitae cum illum voluptatibus fugit. Corrupti et rerum in voluptates. Voluptate corrupti omnis qui sed unde maiores deserunt. Aperiam officia est aut aut. Cupiditate odit voluptatem consectetur est libero. Velit ut accusantium aut et accusamus totam magnam suscipit.','read','2023-02-20 00:12:06','2023-02-20 00:12:06'),(3,'Prof. Prudence Rowe II','virginie28@example.net','+1 (385) 265-5840','838 Hayes Trafficway Suite 753\nLake Lucas, NM 05746-9682','Molestiae rerum quia ut.','Iure error vero suscipit sed assumenda. Ab nam suscipit voluptas vel soluta molestiae nobis et. Quae dolorem inventore quos maiores et nulla. Est consectetur sint ducimus doloremque fuga repellendus quod. Iusto eos dolore fuga aliquam porro ullam quia sint. Doloribus sapiente consequatur officiis est ut esse unde. Deserunt doloribus voluptate maiores quod id magnam sed. Nulla eius et voluptatem est at eos reiciendis. Qui porro necessitatibus eveniet id. Corrupti et aut reiciendis tempora.','unread','2023-02-20 00:12:06','2023-02-20 00:12:06'),(4,'Prof. Gay Swaniawski V','mkilback@example.com','(262) 383-3820','838 Kelsie Path\nJayceeberg, VT 46114-9687','Neque sunt totam ullam dignissimos quo fugiat.','In neque totam non. Voluptas dolorem magnam nemo voluptatem accusamus quo laboriosam. Explicabo eaque dicta ducimus fugiat neque assumenda. Est ab ea est consequatur dolor. Impedit natus impedit nihil tempora qui. Beatae reiciendis adipisci beatae et dignissimos. Illum exercitationem dolorum illum id. Sint nemo doloribus aut quis expedita iusto ab qui. Explicabo dolore officiis autem. Eligendi expedita quo sed. Atque iste dolores ea consequatur.','read','2023-02-20 00:12:06','2023-02-20 00:12:06'),(5,'Madelynn Gleichner','gulgowski.urban@example.com','+1.854.519.4467','22387 Parker Route\nPort Arielland, GA 47237','Quod facilis distinctio praesentium perferendis.','Molestiae sint non sint quo atque quod sit. Iste ea alias officia voluptatem veritatis iusto. Voluptatem itaque neque quia fugiat non ab quia dolor. Vitae nisi expedita placeat. Iure est ut eveniet eum. Eos facere amet tempore. Praesentium beatae deserunt enim ex sunt. Voluptas id tempore sed sit vel assumenda natus voluptatum. Inventore doloremque similique minus. Voluptatibus ea quis et consequuntur quis. Minima ratione atque aliquid et nesciunt magnam voluptatem dolores.','read','2023-02-20 00:12:06','2023-02-20 00:12:06'),(6,'Elizabeth Hackett','vgulgowski@example.com','440-958-3839','8116 Jadyn Crest\nEast Dessie, MT 98228','Ipsam dolorem iste officiis sint.','Molestiae dicta debitis corrupti incidunt ea aut. Ipsam ea pariatur quam facere. Totam dolorem corrupti fuga maxime fugit repellat doloremque. Vel quo accusamus impedit eos voluptatum ut. Impedit eos itaque adipisci eum eum et quia. Iure consequatur reiciendis quia aut accusamus. Velit sint omnis fugit id eligendi. Perspiciatis ab odio et similique dolor. Atque voluptas officiis aut. Est molestias fuga veritatis libero omnis corrupti. Et necessitatibus ea quam fugiat iste aliquid.','read','2023-02-20 00:12:06','2023-02-20 00:12:06'),(7,'Russel Halvorson','keely81@example.net','352-510-2866','5791 Donnelly Wells Apt. 547\nNorth Guadalupefort, TN 85689-8131','Et praesentium doloribus neque commodi.','Tempore odio ad similique odio sed et sit. Ipsa ut expedita ipsam. Mollitia libero nam repudiandae quis sunt ut expedita. Neque dolores eaque qui velit inventore. Sapiente quia officiis eaque officiis alias pariatur. Sequi soluta inventore qui officiis. Accusantium ullam et sapiente dolor non eveniet. Pariatur omnis laborum ducimus deleniti et quia. Non sed ut quia ipsa. Cum veritatis odio qui.','unread','2023-02-20 00:12:06','2023-02-20 00:12:06'),(8,'Precious Grimes','howell.cale@example.org','571-697-3589','4559 Zachery Mount\nDonnellyport, PA 12687','Cum voluptatem impedit at laborum eos.','Et perferendis sed aut omnis. Enim asperiores modi distinctio harum et. Consequatur omnis deleniti atque atque veniam vero ut. Sequi nemo quod quo a modi nisi consequatur velit. Voluptatem et enim est quasi cum quia. Voluptatem voluptatibus laboriosam laboriosam consequatur nobis fuga libero. Sint porro beatae qui commodi. Harum vel dolorem et. Voluptatibus sed qui consequatur error. Dolor earum quis et autem tenetur qui eius.','read','2023-02-20 00:12:06','2023-02-20 00:12:06'),(9,'Mr. Devon Raynor','vivienne.howell@example.org','1-845-427-0620','57108 Meggie Terrace Suite 643\nSouth Minamouth, VT 31699-0366','Dolores exercitationem et rem sequi.','Perspiciatis corrupti voluptate provident sit laborum. Et accusantium ipsum omnis eligendi eligendi qui. Eos ad ut facilis fugiat sit amet voluptas. Laboriosam laboriosam velit qui et illum dolore numquam. Consectetur quo deserunt omnis ea libero distinctio eum. Dolorum quis quia sed voluptatem hic repudiandae. Iusto quo nesciunt asperiores. Et voluptatem quia officia ea est architecto. Voluptatibus voluptatem et consectetur mollitia.','read','2023-02-20 00:12:06','2023-02-20 00:12:06'),(10,'London Langosh','damon.torp@example.net','305.684.5015','40130 Mante Station Apt. 322\nAngieburgh, ND 42025','Amet possimus et harum qui dolor.','Ea natus vel delectus et labore qui. Perferendis omnis est perferendis impedit. Est et placeat sed similique. Illum nulla veniam dolor vitae a quo architecto. Dolorem sit perspiciatis ea corporis error repudiandae. Culpa odio quaerat officia at autem dolores animi. Placeat asperiores eos qui numquam sit aut. Vitae amet est et iste vel ipsum. Voluptatibus harum nesciunt rerum ipsa. Distinctio ipsam eaque dicta soluta enim aspernatur molestias. Dolor ex et quis ratione.','unread','2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2023-02-20 00:12:00','2023-02-20 00:12:00');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(2,'EUR','€',0,2,1,0,0.84,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(3,'VND','₫',0,0,2,0,23203,'2023-02-20 00:12:00','2023-02-20 00:12:00');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Elias Collins IV','customer@botble.com','+16574588760','HR','Idaho','Port Rod','310 Abraham Trafficway',1,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','63040'),(2,'Elias Collins IV','customer@botble.com','+13525890942','SC','Texas','East Misty','9870 Mante Estates Suite 708',1,0,'2023-02-20 00:12:05','2023-02-20 00:12:05','31506-3542'),(3,'Dayne Leuschke DVM','vendor@botble.com','+12835226801','HK','New Mexico','Lake Ryanfurt','26448 Ruth Route',2,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','38818-1459'),(4,'Dayne Leuschke DVM','vendor@botble.com','+15395982406','VC','Utah','East Maryjane','6333 Bernier Grove',2,0,'2023-02-20 00:12:05','2023-02-20 00:12:05','27827'),(5,'Jeromy Cronin','jast.lesly@example.net','+13617536650','ES','Illinois','Dietrichtown','6491 Keith Ports',3,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','65406'),(6,'Herbert Olson','krosenbaum@example.com','+16237386789','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',4,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','37678'),(7,'Prof. Leopold Mante PhD','olson.eliezer@example.net','+17178240058','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',5,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','64457'),(8,'Dr. Sonya Harvey','elwyn75@example.net','+16825237548','CF','Indiana','South Mathildeborough','19587 Kendra Stream',6,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','02381-9642'),(9,'Jamel Stamm','corine27@example.net','+16263433574','LT','Kansas','Ivahshire','98453 Legros Vista Apt. 375',7,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','47027'),(10,'Jaclyn Yost','eroberts@example.net','+16785169149','MF','Hawaii','West Nelda','1375 Lubowitz Freeway Apt. 459',8,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','46537'),(11,'Prof. Consuelo Botsford Jr.','gschulist@example.org','+18433171431','VU','Georgia','Schaefershire','333 Jess Bridge',9,1,'2023-02-20 00:12:05','2023-02-20 00:12:05','43613-5907'),(12,'Thurman Schinner','fadel.keira@example.org','+15046250172','PF','New Mexico','North Thea','3865 Zieme Forges Suite 555',10,1,'2023-02-20 00:12:06','2023-02-20 00:12:06','61579');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Elias Collins IV','customer@botble.com','$2y$10$9mTIKUzw9BoR5kxhcn./R.qwvmQfFkGd1pjjMYeeJiZObVhyG6gnu','customers/2.jpg','1995-02-14','+15319677903',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:05','2023-02-20 07:12:05',NULL,'activated',0,NULL),(2,'Dayne Leuschke DVM','vendor@botble.com','$2y$10$mt.zMMowyeFP/0Ev8ZQRceRWaFuz3vx6oKggBE1LwWTI0jB85a4iG','customers/2.jpg','1992-02-10','+17633579387',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:09','2023-02-20 07:12:05',NULL,'activated',1,'2023-02-20 07:12:09'),(3,'Jeromy Cronin','jast.lesly@example.net','$2y$10$gUToKNxScpg11Ef1au98zulg.CSxyd0uZkai0DmDTLWUwXDUGQxiO','customers/1.jpg','1990-02-04','+16674986290',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:09','2023-02-20 07:12:05',NULL,'activated',1,'2023-02-20 07:12:09'),(4,'Herbert Olson','krosenbaum@example.com','$2y$10$L3FtCbjQo8v6okx8cUXjNON6xSlVORZy6yjLV0mNNElr/i/xpfxcW','customers/2.jpg','1973-02-10','+17545996607',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:05','2023-02-20 07:12:05',NULL,'activated',0,NULL),(5,'Prof. Leopold Mante PhD','olson.eliezer@example.net','$2y$10$1dIs/RaYnDSsu9AW4fqqlO62E9PtuSxOzi7X8D6wWDN49XGL3QkbS','customers/3.jpg','1985-01-29','+13479956008',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:05','2023-02-20 07:12:05',NULL,'activated',0,NULL),(6,'Dr. Sonya Harvey','elwyn75@example.net','$2y$10$jmzKk3Z1Zv81PzMpxa0OFe0Im9ENDjE8or0UCZGLYneGMzx3T4GZO','customers/4.jpg','1973-01-23','+13074584234',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:09','2023-02-20 07:12:05',NULL,'activated',1,'2023-02-20 07:12:09'),(7,'Jamel Stamm','corine27@example.net','$2y$10$dFYTt4I9LfoeeDOUbtoTzucsocH8EXx8qvu3X0E9z44d8yRT6XuI.','customers/5.jpg','1988-02-18','+14846481518',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:09','2023-02-20 07:12:05',NULL,'activated',1,'2023-02-20 07:12:09'),(8,'Jaclyn Yost','eroberts@example.net','$2y$10$i4q/d800e3itXxfE9nEkzuqZEc6UPNTnl1j6tfVM9UagjnEdS0Ypi','customers/6.jpg','2001-02-19','+18203233429',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:09','2023-02-20 07:12:05',NULL,'activated',1,'2023-02-20 07:12:09'),(9,'Prof. Consuelo Botsford Jr.','gschulist@example.org','$2y$10$g4UfRUb6m5/KSrZUOLuq6e17xF7mk7v5JM1xVqUB648qxczAh8gH2','customers/7.jpg','2003-02-15','+17268374392',NULL,'2023-02-20 00:12:05','2023-02-20 00:12:05','2023-02-20 07:12:05',NULL,'activated',0,NULL),(10,'Thurman Schinner','fadel.keira@example.org','$2y$10$IocW1j786spRQfeDQfaG8Ok2Y3lbF8wYE1Fu0NTRqa12Z6Ea2qfzC','customers/8.jpg','1992-01-23','+14582293364',NULL,'2023-02-20 00:12:06','2023-02-20 00:12:09','2023-02-20 07:12:06',NULL,'activated',1,'2023-02-20 07:12:09');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,44.1375,20,4),(1,2,25.515,12,4),(1,3,10,14,2),(1,4,250.428,14,5),(1,5,271.59,9,4),(1,6,312.78,6,4),(1,7,399.84,11,2),(1,8,503.976,20,2),(1,9,286.5,11,2),(1,10,730.8,7,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2023-03-22 00:00:00','published','2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(1,2,'2 Year',10,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(1,3,'3 Year',20,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(2,4,'4GB',0,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(2,5,'8GB',10,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(2,6,'16GB',20,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(3,7,'Core i5',0,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(3,8,'Core i7',10,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(3,9,'Core i9',20,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(4,10,'128GB',0,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(4,11,'256GB',10,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(4,12,'512GB',20,9999,0,'2023-02-20 00:12:08','2023-02-20 00:12:08');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` int NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-02-20 00:12:08','2023-02-20 00:12:08'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-02-20 00:12:08','2023-02-20 00:12:08');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` int unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` int NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',1,'43613-5907','shipping_address'),(2,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',2,'43613-5907','shipping_address'),(3,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',3,'43613-5907','shipping_address'),(4,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',4,'43613-5907','shipping_address'),(5,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',5,'37678','shipping_address'),(6,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',6,'37678','shipping_address'),(7,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',7,'37678','shipping_address'),(8,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',8,'43613-5907','shipping_address'),(9,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',9,'43613-5907','shipping_address'),(10,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',10,'63040','shipping_address'),(11,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',11,'63040','shipping_address'),(12,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',12,'63040','shipping_address'),(13,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',13,'63040','shipping_address'),(14,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',14,'37678','shipping_address'),(15,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',15,'37678','shipping_address'),(16,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',16,'37678','shipping_address'),(17,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',17,'37678','shipping_address'),(18,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',18,'63040','shipping_address'),(19,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',19,'63040','shipping_address'),(20,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',20,'63040','shipping_address'),(21,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',21,'43613-5907','shipping_address'),(22,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',22,'43613-5907','shipping_address'),(23,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',23,'37678','shipping_address'),(24,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',24,'37678','shipping_address'),(25,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',25,'37678','shipping_address'),(26,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',26,'64457','shipping_address'),(27,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',27,'64457','shipping_address'),(28,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',28,'64457','shipping_address'),(29,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',29,'64457','shipping_address'),(30,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',30,'64457','shipping_address'),(31,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',31,'63040','shipping_address'),(32,'Elias Collins IV','+16574588760','customer@botble.com','HR','Idaho','Port Rod','310 Abraham Trafficway',32,'63040','shipping_address'),(33,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',33,'37678','shipping_address'),(34,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',34,'37678','shipping_address'),(35,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',35,'37678','shipping_address'),(36,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',36,'37678','shipping_address'),(37,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',37,'64457','shipping_address'),(38,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',38,'64457','shipping_address'),(39,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',39,'64457','shipping_address'),(40,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',40,'64457','shipping_address'),(41,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',41,'64457','shipping_address'),(42,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',42,'43613-5907','shipping_address'),(43,'Prof. Consuelo Botsford Jr.','+18433171431','gschulist@example.org','VU','Georgia','Schaefershire','333 Jess Bridge',43,'43613-5907','shipping_address'),(44,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',44,'37678','shipping_address'),(45,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',45,'37678','shipping_address'),(46,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',46,'37678','shipping_address'),(47,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',47,'37678','shipping_address'),(48,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',48,'37678','shipping_address'),(49,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',49,'37678','shipping_address'),(50,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',50,'37678','shipping_address'),(51,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',51,'37678','shipping_address'),(52,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',52,'37678','shipping_address'),(53,'Herbert Olson','+16237386789','krosenbaum@example.com','LR','New Jersey','New Chaunceytown','77297 Carolanne Knolls Apt. 824',53,'37678','shipping_address'),(54,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',54,'64457','shipping_address'),(55,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',55,'64457','shipping_address'),(56,'Prof. Leopold Mante PhD','+17178240058','olson.eliezer@example.net','AL','Maryland','New Keonmouth','311 Abelardo Shoal Suite 305',56,'64457','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-02-08 08:12:10','2023-02-08 08:12:10'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-02-08 08:12:10','2023-02-08 08:12:10'),(3,'create_shipment','Created shipment for order',0,1,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(4,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-02-16 16:12:10','2023-02-16 16:12:10'),(5,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-02-16 16:12:10','2023-02-16 16:12:10'),(6,'create_shipment','Created shipment for order',0,2,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(7,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(8,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(9,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(10,'confirm_payment','Payment was confirmed (amount $3,450.00) by %user_name%',0,3,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-02-06 16:12:10','2023-02-06 16:12:10'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-02-06 16:12:10','2023-02-06 16:12:10'),(15,'confirm_payment','Payment was confirmed (amount $2,535.00) by %user_name%',0,4,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-02-12 02:12:10','2023-02-12 02:12:10'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-02-12 02:12:10','2023-02-12 02:12:10'),(20,'confirm_payment','Payment was confirmed (amount $160.50) by %user_name%',0,5,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-02-04 04:12:10','2023-02-04 04:12:10'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-02-04 04:12:10','2023-02-04 04:12:10'),(25,'confirm_payment','Payment was confirmed (amount $1,107.00) by %user_name%',0,6,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(26,'create_shipment','Created shipment for order',0,6,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(27,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-02-13 16:12:10','2023-02-13 16:12:10'),(29,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-02-13 16:12:10','2023-02-13 16:12:10'),(30,'confirm_payment','Payment was confirmed (amount $594.00) by %user_name%',0,7,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(31,'create_shipment','Created shipment for order',0,7,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(33,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-02-09 12:12:10','2023-02-09 12:12:10'),(34,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-02-09 12:12:10','2023-02-09 12:12:10'),(35,'confirm_payment','Payment was confirmed (amount $1,646.00) by %user_name%',0,8,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(36,'create_shipment','Created shipment for order',0,8,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-02-06 12:12:10','2023-02-06 12:12:10'),(39,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-02-06 12:12:10','2023-02-06 12:12:10'),(40,'confirm_payment','Payment was confirmed (amount $2,208.00) by %user_name%',0,9,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(41,'create_shipment','Created shipment for order',0,9,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-02-15 18:12:10','2023-02-15 18:12:10'),(44,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-02-15 18:12:10','2023-02-15 18:12:10'),(45,'confirm_payment','Payment was confirmed (amount $81.00) by %user_name%',0,10,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(46,'create_shipment','Created shipment for order',0,10,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(48,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-02-10 02:12:10','2023-02-10 02:12:10'),(49,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-02-10 02:12:10','2023-02-10 02:12:10'),(50,'create_shipment','Created shipment for order',0,11,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-02-10 02:12:10','2023-02-10 02:12:10'),(53,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-02-10 02:12:10','2023-02-10 02:12:10'),(54,'confirm_payment','Payment was confirmed (amount $2,208.00) by %user_name%',0,12,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(55,'create_shipment','Created shipment for order',0,12,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-02-11 12:12:10','2023-02-11 12:12:10'),(57,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-02-11 12:12:10','2023-02-11 12:12:10'),(58,'confirm_payment','Payment was confirmed (amount $1,200.00) by %user_name%',0,13,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(59,'create_shipment','Created shipment for order',0,13,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-02-10 16:12:10','2023-02-10 16:12:10'),(61,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-02-10 16:12:10','2023-02-10 16:12:10'),(62,'confirm_payment','Payment was confirmed (amount $1,876.00) by %user_name%',0,14,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(63,'create_shipment','Created shipment for order',0,14,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-02-06 16:12:10','2023-02-06 16:12:10'),(65,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-02-06 16:12:10','2023-02-06 16:12:10'),(66,'confirm_payment','Payment was confirmed (amount $2,535.00) by %user_name%',0,15,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(67,'create_shipment','Created shipment for order',0,15,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(68,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-02-08 18:12:10','2023-02-08 18:12:10'),(70,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-02-08 18:12:10','2023-02-08 18:12:10'),(71,'confirm_payment','Payment was confirmed (amount $1,232.50) by %user_name%',0,16,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(72,'create_shipment','Created shipment for order',0,16,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-02-12 12:12:10','2023-02-12 12:12:10'),(75,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-02-12 12:12:10','2023-02-12 12:12:10'),(76,'confirm_payment','Payment was confirmed (amount $2,978.00) by %user_name%',0,17,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(77,'create_shipment','Created shipment for order',0,17,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-02-18 20:12:10','2023-02-18 20:12:10'),(80,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-02-18 20:12:10','2023-02-18 20:12:10'),(81,'confirm_payment','Payment was confirmed (amount $81.00) by %user_name%',0,18,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(82,'create_shipment','Created shipment for order',0,18,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-02-13 00:12:10','2023-02-13 00:12:10'),(85,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-02-13 00:12:10','2023-02-13 00:12:10'),(86,'confirm_payment','Payment was confirmed (amount $400.00) by %user_name%',0,19,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(87,'create_shipment','Created shipment for order',0,19,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-02-18 20:12:10','2023-02-18 20:12:10'),(89,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-02-18 20:12:10','2023-02-18 20:12:10'),(90,'confirm_payment','Payment was confirmed (amount $2,535.00) by %user_name%',0,20,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(91,'create_shipment','Created shipment for order',0,20,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(92,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(93,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-02-10 06:12:10','2023-02-10 06:12:10'),(94,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-02-10 06:12:10','2023-02-10 06:12:10'),(95,'create_shipment','Created shipment for order',0,21,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(96,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-02-14 14:12:10','2023-02-14 14:12:10'),(97,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-02-14 14:12:10','2023-02-14 14:12:10'),(98,'confirm_payment','Payment was confirmed (amount $400.00) by %user_name%',0,22,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(99,'create_shipment','Created shipment for order',0,22,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(101,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(102,'create_shipment','Created shipment for order',0,23,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(103,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-02-15 00:12:10','2023-02-15 00:12:10'),(105,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-02-15 00:12:10','2023-02-15 00:12:10'),(106,'confirm_payment','Payment was confirmed (amount $4,163.00) by %user_name%',0,24,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(107,'create_shipment','Created shipment for order',0,24,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(108,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(109,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(110,'confirm_payment','Payment was confirmed (amount $800.00) by %user_name%',0,25,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(111,'create_shipment','Created shipment for order',0,25,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(112,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(113,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-02-15 10:12:11','2023-02-15 10:12:11'),(114,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-02-15 10:12:11','2023-02-15 10:12:11'),(115,'confirm_payment','Payment was confirmed (amount $160.50) by %user_name%',0,26,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(116,'create_shipment','Created shipment for order',0,26,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(117,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-02-18 04:12:11','2023-02-18 04:12:11'),(118,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-02-18 04:12:11','2023-02-18 04:12:11'),(119,'confirm_payment','Payment was confirmed (amount $2,436.00) by %user_name%',0,27,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(120,'create_shipment','Created shipment for order',0,27,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(121,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-02-19 02:12:11','2023-02-19 02:12:11'),(122,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-02-19 02:12:11','2023-02-19 02:12:11'),(123,'confirm_payment','Payment was confirmed (amount $1,690.00) by %user_name%',0,28,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(124,'create_shipment','Created shipment for order',0,28,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(125,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-02-15 00:12:11','2023-02-15 00:12:11'),(127,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-02-15 00:12:11','2023-02-15 00:12:11'),(128,'confirm_payment','Payment was confirmed (amount $3,400.00) by %user_name%',0,29,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(129,'create_shipment','Created shipment for order',0,29,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(130,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(131,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-02-14 04:12:11','2023-02-14 04:12:11'),(132,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-02-14 04:12:11','2023-02-14 04:12:11'),(133,'create_shipment','Created shipment for order',0,30,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(134,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-02-18 12:12:11','2023-02-18 12:12:11'),(135,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-02-18 12:12:11','2023-02-18 12:12:11'),(136,'confirm_payment','Payment was confirmed (amount $634.50) by %user_name%',0,31,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(137,'create_shipment','Created shipment for order',0,31,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(138,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(139,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-02-18 12:12:11','2023-02-18 12:12:11'),(140,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-02-18 12:12:11','2023-02-18 12:12:11'),(141,'create_shipment','Created shipment for order',0,32,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(142,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(143,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(144,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(145,'confirm_payment','Payment was confirmed (amount $1,527.00) by %user_name%',0,33,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(146,'create_shipment','Created shipment for order',0,33,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(147,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(148,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-02-18 16:12:11','2023-02-18 16:12:11'),(149,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-02-18 16:12:11','2023-02-18 16:12:11'),(150,'confirm_payment','Payment was confirmed (amount $1,146.00) by %user_name%',0,34,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(151,'create_shipment','Created shipment for order',0,34,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(152,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(153,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(154,'confirm_payment','Payment was confirmed (amount $1,150.00) by %user_name%',0,35,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(155,'create_shipment','Created shipment for order',0,35,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(156,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(157,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-02-14 16:12:11','2023-02-14 16:12:11'),(158,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-02-14 16:12:11','2023-02-14 16:12:11'),(159,'create_shipment','Created shipment for order',0,36,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(160,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(161,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(162,'confirm_payment','Payment was confirmed (amount $81.00) by %user_name%',0,37,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(163,'create_shipment','Created shipment for order',0,37,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(164,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-02-18 20:12:11','2023-02-18 20:12:11'),(165,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-02-18 20:12:11','2023-02-18 20:12:11'),(166,'confirm_payment','Payment was confirmed (amount $1,542.00) by %user_name%',0,38,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(167,'create_shipment','Created shipment for order',0,38,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(168,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-02-19 12:12:11','2023-02-19 12:12:11'),(170,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-02-19 12:12:11','2023-02-19 12:12:11'),(171,'create_shipment','Created shipment for order',0,39,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(172,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-02-17 12:12:11','2023-02-17 12:12:11'),(174,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-02-17 12:12:11','2023-02-17 12:12:11'),(175,'confirm_payment','Payment was confirmed (amount $4,233.00) by %user_name%',0,40,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(176,'create_shipment','Created shipment for order',0,40,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(177,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(178,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-02-16 00:12:11','2023-02-16 00:12:11'),(179,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-02-16 00:12:11','2023-02-16 00:12:11'),(180,'confirm_payment','Payment was confirmed (amount $800.00) by %user_name%',0,41,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(181,'create_shipment','Created shipment for order',0,41,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(182,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(183,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-02-18 18:12:11','2023-02-18 18:12:11'),(184,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-02-18 18:12:11','2023-02-18 18:12:11'),(185,'confirm_payment','Payment was confirmed (amount $524.00) by %user_name%',0,42,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(186,'create_shipment','Created shipment for order',0,42,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(187,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(188,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2023-02-19 04:12:11','2023-02-19 04:12:11'),(189,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2023-02-19 04:12:11','2023-02-19 04:12:11'),(190,'create_shipment','Created shipment for order',0,43,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(191,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(192,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(193,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(194,'confirm_payment','Payment was confirmed (amount $513.00) by %user_name%',0,44,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(195,'create_shipment','Created shipment for order',0,44,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(196,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2023-02-19 00:12:11','2023-02-19 00:12:11'),(197,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2023-02-19 00:12:11','2023-02-19 00:12:11'),(198,'confirm_payment','Payment was confirmed (amount $2,300.00) by %user_name%',0,45,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(199,'create_shipment','Created shipment for order',0,45,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(200,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(201,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(202,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(203,'confirm_payment','Payment was confirmed (amount $2,535.00) by %user_name%',0,46,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(204,'create_shipment','Created shipment for order',0,46,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(205,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2023-02-17 12:12:11','2023-02-17 12:12:11'),(206,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2023-02-17 12:12:11','2023-02-17 12:12:11'),(207,'create_shipment','Created shipment for order',0,47,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(208,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,47,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(209,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2023-02-18 06:12:11','2023-02-18 06:12:11'),(210,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2023-02-18 06:12:11','2023-02-18 06:12:11'),(211,'create_shipment','Created shipment for order',0,48,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(212,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(213,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2023-02-19 06:12:11','2023-02-19 06:12:11'),(214,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2023-02-19 06:12:11','2023-02-19 06:12:11'),(215,'confirm_payment','Payment was confirmed (amount $1,332.00) by %user_name%',0,49,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(216,'create_shipment','Created shipment for order',0,49,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(217,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,49,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(218,'create_order_from_seeder','Order is created from the checkout page',NULL,50,NULL,'2023-02-17 18:12:11','2023-02-17 18:12:11'),(219,'confirm_order','Order was verified by %user_name%',0,50,NULL,'2023-02-17 18:12:11','2023-02-17 18:12:11'),(220,'confirm_payment','Payment was confirmed (amount $845.00) by %user_name%',0,50,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(221,'create_shipment','Created shipment for order',0,50,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(222,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,50,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(223,'create_order_from_seeder','Order is created from the checkout page',NULL,51,NULL,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(224,'confirm_order','Order was verified by %user_name%',0,51,NULL,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(225,'confirm_payment','Payment was confirmed (amount $3,836.00) by %user_name%',0,51,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(226,'create_shipment','Created shipment for order',0,51,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(227,'create_order_from_seeder','Order is created from the checkout page',NULL,52,NULL,'2023-02-19 04:12:11','2023-02-19 04:12:11'),(228,'confirm_order','Order was verified by %user_name%',0,52,NULL,'2023-02-19 04:12:11','2023-02-19 04:12:11'),(229,'confirm_payment','Payment was confirmed (amount $1,791.00) by %user_name%',0,52,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(230,'create_shipment','Created shipment for order',0,52,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(231,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,52,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(232,'create_order_from_seeder','Order is created from the checkout page',NULL,53,NULL,'2023-02-18 08:12:11','2023-02-18 08:12:11'),(233,'confirm_order','Order was verified by %user_name%',0,53,NULL,'2023-02-18 08:12:11','2023-02-18 08:12:11'),(234,'confirm_payment','Payment was confirmed (amount $1,200.00) by %user_name%',0,53,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(235,'create_shipment','Created shipment for order',0,53,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(236,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,53,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(237,'create_order_from_seeder','Order is created from the checkout page',NULL,54,NULL,'2023-02-19 20:12:11','2023-02-19 20:12:11'),(238,'confirm_order','Order was verified by %user_name%',0,54,NULL,'2023-02-19 20:12:11','2023-02-19 20:12:11'),(239,'confirm_payment','Payment was confirmed (amount $1,188.00) by %user_name%',0,54,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(240,'create_shipment','Created shipment for order',0,54,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(241,'create_order_from_seeder','Order is created from the checkout page',NULL,55,NULL,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(242,'confirm_order','Order was verified by %user_name%',0,55,NULL,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(243,'confirm_payment','Payment was confirmed (amount $1,048.00) by %user_name%',0,55,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(244,'create_shipment','Created shipment for order',0,55,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(245,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,55,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(246,'create_order_from_seeder','Order is created from the checkout page',NULL,56,NULL,'2023-02-19 16:12:11','2023-02-19 16:12:11'),(247,'confirm_order','Order was verified by %user_name%',0,56,NULL,'2023-02-19 16:12:11','2023-02-19 16:12:11'),(248,'confirm_payment','Payment was confirmed (amount $800.00) by %user_name%',0,56,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(249,'create_shipment','Created shipment for order',0,56,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(250,'update_status','Order confirmed by %user_name%',0,3,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(251,'update_status','Order confirmed by %user_name%',0,4,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(252,'update_status','Order confirmed by %user_name%',0,5,NULL,'2023-02-20 00:12:12','2023-02-20 00:12:12'),(253,'update_status','Order confirmed by %user_name%',0,6,NULL,'2023-02-20 00:12:12','2023-02-20 00:12:12'),(254,'update_status','Order confirmed by %user_name%',0,7,NULL,'2023-02-20 00:12:12','2023-02-20 00:12:12'),(255,'update_status','Order confirmed by %user_name%',0,8,NULL,'2023-02-20 00:12:12','2023-02-20 00:12:12'),(256,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-02-20 00:12:12','2023-02-20 00:12:12'),(257,'update_status','Order confirmed by %user_name%',0,10,NULL,'2023-02-20 00:12:12','2023-02-20 00:12:12'),(258,'update_status','Order confirmed by %user_name%',0,15,NULL,'2023-02-20 00:12:13','2023-02-20 00:12:13'),(259,'update_status','Order confirmed by %user_name%',0,16,NULL,'2023-02-20 00:12:13','2023-02-20 00:12:13'),(260,'update_status','Order confirmed by %user_name%',0,17,NULL,'2023-02-20 00:12:13','2023-02-20 00:12:13'),(261,'update_status','Order confirmed by %user_name%',0,18,NULL,'2023-02-20 00:12:13','2023-02-20 00:12:13'),(262,'update_status','Order confirmed by %user_name%',0,20,NULL,'2023-02-20 00:12:13','2023-02-20 00:12:13'),(263,'update_status','Order confirmed by %user_name%',0,25,NULL,'2023-02-20 00:12:13','2023-02-20 00:12:13'),(264,'update_status','Order confirmed by %user_name%',0,28,NULL,'2023-02-20 00:12:13','2023-02-20 00:12:13'),(265,'update_status','Order confirmed by %user_name%',0,29,NULL,'2023-02-20 00:12:13','2023-02-20 00:12:13'),(266,'update_status','Order confirmed by %user_name%',0,31,NULL,'2023-02-20 00:12:14','2023-02-20 00:12:14'),(267,'update_status','Order confirmed by %user_name%',0,33,NULL,'2023-02-20 00:12:14','2023-02-20 00:12:14'),(268,'update_status','Order confirmed by %user_name%',0,35,NULL,'2023-02-20 00:12:14','2023-02-20 00:12:14'),(269,'update_status','Order confirmed by %user_name%',0,38,NULL,'2023-02-20 00:12:14','2023-02-20 00:12:14'),(270,'update_status','Order confirmed by %user_name%',0,40,NULL,'2023-02-20 00:12:14','2023-02-20 00:12:14'),(271,'update_status','Order confirmed by %user_name%',0,41,NULL,'2023-02-20 00:12:14','2023-02-20 00:12:14'),(272,'update_status','Order confirmed by %user_name%',0,42,NULL,'2023-02-20 00:12:14','2023-02-20 00:12:14'),(273,'update_status','Order confirmed by %user_name%',0,45,NULL,'2023-02-20 00:12:15','2023-02-20 00:12:15'),(274,'update_status','Order confirmed by %user_name%',0,49,NULL,'2023-02-20 00:12:15','2023-02-20 00:12:15'),(275,'update_status','Order confirmed by %user_name%',0,50,NULL,'2023-02-20 00:12:15','2023-02-20 00:12:15'),(276,'update_status','Order confirmed by %user_name%',0,52,NULL,'2023-02-20 00:12:15','2023-02-20 00:12:15'),(277,'update_status','Order confirmed by %user_name%',0,53,NULL,'2023-02-20 00:12:15','2023-02-20 00:12:15'),(278,'update_status','Order confirmed by %user_name%',0,55,NULL,'2023-02-20 00:12:15','2023-02-20 00:12:15');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,594.00,0.00,'[]',NULL,51,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',704.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(2,2,3,513.00,0.00,'[]',NULL,54,'B&amp;O Play Mini Bluetooth Speaker','products/14.jpg',2592.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(3,3,3,1150.00,0.00,'[]',NULL,63,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',1917.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(4,4,3,845.00,0.00,'[]',NULL,74,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1956.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(5,5,2,80.25,0.00,'[]',NULL,25,'Dual Camera 20MP (Digital)','products/1.jpg',1358.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(6,6,2,40.50,0.00,'[]',NULL,28,'Smart Watches','products/2-2.jpg',1638.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(7,6,2,513.00,0.00,'[]',NULL,54,'B&amp;O Play Mini Bluetooth Speaker','products/14.jpg',1728.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(8,7,1,594.00,0.00,'[]',NULL,53,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',704.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(9,8,2,823.00,0.00,'[]',NULL,34,'Smart Watch External (Digital)','products/5-2.jpg',1122.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(10,9,2,1104.00,0.00,'[]',NULL,42,'Smart Televisions','products/8-2.jpg',1792.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(11,10,2,40.50,0.00,'[]',NULL,27,'Smart Watches','products/2-1.jpg',1638.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(12,11,2,588.00,0.00,'[]',NULL,38,'Audio Equipment','products/7.jpg',1400.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(13,12,2,1104.00,0.00,'[]',NULL,40,'Smart Televisions','products/8.jpg',1792.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(14,13,3,400.00,0.00,'[]',NULL,72,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',2184.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(15,14,1,20.00,0.00,'[]',NULL,29,'Beat Headphone','products/3.jpg',756.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(16,14,1,524.00,0.00,'[]',NULL,57,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',745.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(17,14,2,666.00,0.00,'[]',NULL,67,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',1678.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(18,15,3,845.00,0.00,'[]',NULL,74,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1956.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(19,16,1,40.50,0.00,'[]',NULL,28,'Smart Watches','products/2-2.jpg',819.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(20,16,1,1192.00,0.00,'[]',NULL,61,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',536.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(21,17,1,509.00,0.00,'[]',NULL,31,'Red &amp; Black Headphone','products/4-1.jpg',770.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(22,17,3,823.00,0.00,'[]',NULL,34,'Smart Watch External (Digital)','products/5-2.jpg',1683.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(23,18,2,40.50,0.00,'[]',NULL,28,'Smart Watches','products/2-2.jpg',1638.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(24,19,1,400.00,0.00,'[]',NULL,70,'Baxter Care Hair Kit For Bearded Mens','products/22.jpg',728.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(25,20,3,845.00,0.00,'[]',NULL,78,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1956.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(26,21,2,401.00,0.00,'[]',NULL,36,'Nikon HD camera','products/6.jpg',1196.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(27,22,1,400.00,0.00,'[]',NULL,73,'Baxter Care Hair Kit For Bearded Mens','products/22-3.jpg',728.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(28,23,2,40.50,0.00,'[]',NULL,26,'Smart Watches','products/2.jpg',1638.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(29,24,2,1192.00,0.00,'[]',NULL,47,'Xbox One Wireless Controller Black Color','products/11-1.jpg',1146.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(30,24,3,593.00,0.00,'[]',NULL,49,'EPSION Plaster Printer','products/12-1.jpg',2265.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(31,25,2,400.00,0.00,'[]',NULL,72,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',1456.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','physical',0),(32,26,2,80.25,0.00,'[]',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',1358.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(33,27,1,1104.00,0.00,'[]',NULL,42,'Smart Televisions','products/8-2.jpg',896.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(34,27,2,666.00,0.00,'[]',NULL,67,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',1678.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(35,28,2,845.00,0.00,'[]',NULL,78,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1304.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(36,29,2,1104.00,0.00,'[]',NULL,41,'Smart Televisions','products/8-1.jpg',1792.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(37,29,1,1192.00,0.00,'[]',NULL,47,'Xbox One Wireless Controller Black Color','products/11-1.jpg',573.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(38,30,2,594.00,0.00,'[]',NULL,51,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',1408.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(39,31,3,40.50,0.00,'[]',NULL,26,'Smart Watches','products/2.jpg',2457.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(40,31,1,513.00,0.00,'[]',NULL,55,'B&amp;O Play Mini Bluetooth Speaker','products/14.jpg',864.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(41,32,1,573.00,0.00,'[]',NULL,43,'Samsung Smart Phone (Digital)','products/9.jpg',819.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(42,32,3,1192.00,0.00,'[]',NULL,46,'Xbox One Wireless Controller Black Color','products/11.jpg',1719.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(43,33,3,509.00,0.00,'[]',NULL,30,'Red &amp; Black Headphone','products/4.jpg',2310.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(44,34,2,573.00,0.00,'[]',NULL,43,'Samsung Smart Phone (Digital)','products/9.jpg',1638.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(45,35,1,1150.00,0.00,'[]',NULL,64,'NYX Beauty Couton Pallete Makeup 12','products/19-2.jpg',639.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(46,36,2,845.00,0.00,'[]',NULL,77,'Ciate Palemore Lipstick Bold Red Color','products/23-3.jpg',1304.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(47,37,2,40.50,0.00,'[]',NULL,26,'Smart Watches','products/2.jpg',1638.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(48,38,3,514.00,0.00,'[]',NULL,59,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',1866.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(49,39,3,80.25,0.00,'[]',NULL,25,'Dual Camera 20MP (Digital)','products/1.jpg',2037.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(50,40,3,823.00,0.00,'[]',NULL,32,'Smart Watch External (Digital)','products/5.jpg',1683.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(51,40,3,588.00,0.00,'[]',NULL,39,'Audio Equipment','products/7.jpg',2100.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(52,41,2,400.00,0.00,'[]',NULL,73,'Baxter Care Hair Kit For Bearded Mens','products/22-3.jpg',1456.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(53,42,1,524.00,0.00,'[]',NULL,57,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',745.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(54,43,1,1192.00,0.00,'[]',NULL,61,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',536.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(55,44,1,513.00,0.00,'[]',NULL,55,'B&amp;O Play Mini Bluetooth Speaker','products/14.jpg',864.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(56,45,2,1150.00,0.00,'[]',NULL,63,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',1278.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(57,46,3,845.00,0.00,'[]',NULL,74,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1956.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(58,47,1,80.25,0.00,'[]',NULL,25,'Dual Camera 20MP (Digital)','products/1.jpg',679.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(59,48,1,823.00,0.00,'[]',NULL,33,'Smart Watch External (Digital)','products/5-1.jpg',561.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(60,49,2,666.00,0.00,'[]',NULL,68,'MVMTH Classical Leather Watch In Black (Digital)','products/21-2.jpg',1678.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(61,50,1,845.00,0.00,'[]',NULL,77,'Ciate Palemore Lipstick Bold Red Color','products/23-3.jpg',652.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(62,51,3,1104.00,0.00,'[]',NULL,40,'Smart Televisions','products/8.jpg',2688.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(63,51,1,524.00,0.00,'[]',NULL,57,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',745.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(64,52,3,597.00,0.00,'[]',NULL,56,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1539.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(65,53,3,400.00,0.00,'[]',NULL,71,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',2184.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(66,54,2,594.00,0.00,'[]',NULL,52,'Sound Intone I65 Earphone White Version (Digital)','products/13-1.jpg',1408.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(67,55,2,524.00,0.00,'[]',NULL,57,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1490.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0),(68,56,2,400.00,0.00,'[]',NULL,73,'Baxter Care Hair Kit For Bearded Mens','products/22-3.jpg',1456.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',9,'1','default','pending',594.00,0.00,0.00,NULL,NULL,0.00,594.00,1,NULL,1,NULL,'TSjTkQxYwc3qyxNfJEtkjg2GNvYJx',1,'2023-02-08 08:12:10','2023-02-20 00:12:10',6),(2,'#10000002',9,'1','default','completed',1539.00,0.00,0.00,NULL,NULL,0.00,1539.00,1,NULL,1,'2023-02-20 00:12:10','ZaSnc9drvOjVcBZdpt3XSAuOKahAG',2,'2023-02-16 16:12:10','2023-02-20 00:12:10',4),(3,'#10000003',9,'1','default','completed',3450.00,0.00,0.00,NULL,NULL,0.00,3450.00,1,NULL,1,'2023-02-20 00:12:11','yp1DgnGyR1cUTbQnaRODzFtzUXfuO',3,'2023-02-10 00:12:10','2023-02-20 00:12:11',3),(4,'#10000004',9,'1','default','completed',2535.00,0.00,0.00,NULL,NULL,0.00,2535.00,1,NULL,1,'2023-02-20 00:12:11','c0pazJW9ZSkrDN3UzZFA8es84bEGm',4,'2023-02-06 16:12:10','2023-02-20 00:12:11',5),(5,'#10000005',4,'1','default','completed',160.50,0.00,0.00,NULL,NULL,0.00,160.50,1,NULL,1,'2023-02-20 00:12:12','jgC9WideGjnfaS8NApKKPR5EmWgXP',5,'2023-02-12 02:12:10','2023-02-20 00:12:12',1),(6,'#10000006',4,'1','default','completed',1107.00,0.00,0.00,NULL,NULL,0.00,1107.00,1,NULL,1,'2023-02-20 00:12:12','zX9004htd7y5qu8blv3ZUZVWPLE61',6,'2023-02-04 04:12:10','2023-02-20 00:12:12',4),(7,'#10000007',4,'1','default','completed',594.00,0.00,0.00,NULL,NULL,0.00,594.00,1,NULL,1,'2023-02-20 00:12:12','wzUrdPtEuC5b4TrWG0x3tBQV1WJuM',7,'2023-02-13 16:12:10','2023-02-20 00:12:12',6),(8,'#10000008',9,'1','default','completed',1646.00,0.00,0.00,NULL,NULL,0.00,1646.00,1,NULL,1,'2023-02-20 00:12:12','Bx2w7VOCIV0tz7iSBAQ9mAOg6F1b6',8,'2023-02-09 12:12:10','2023-02-20 00:12:12',6),(9,'#10000009',9,'1','default','completed',2208.00,0.00,0.00,NULL,NULL,0.00,2208.00,1,NULL,1,'2023-02-20 00:12:12','SRi3t8NlBicuJyX6MvXWZgV1KxZwd',9,'2023-02-06 12:12:10','2023-02-20 00:12:12',2),(10,'#10000010',1,'1','default','completed',81.00,0.00,0.00,NULL,NULL,0.00,81.00,1,NULL,1,'2023-02-20 00:12:12','IIz1Amxk4PM72IkenXJWEPAXsGGhZ',10,'2023-02-15 18:12:10','2023-02-20 00:12:12',4),(11,'#10000011',1,'1','default','completed',1176.00,0.00,0.00,NULL,NULL,0.00,1176.00,1,NULL,1,'2023-02-20 00:12:10','pqTqFiJSIpcz4foGn37kwrNKW3g0I',11,'2023-02-10 02:12:10','2023-02-20 00:12:10',6),(12,'#10000012',1,'1','default','pending',2208.00,0.00,0.00,NULL,NULL,0.00,2208.00,1,NULL,1,NULL,'b1Mox815RU3qJhuNLjpGXBfB1MI65',12,'2023-02-10 02:12:10','2023-02-20 00:12:10',2),(13,'#10000013',1,'1','default','pending',1200.00,0.00,0.00,NULL,NULL,0.00,1200.00,1,NULL,1,NULL,'jI3RBk1yTfjUsHa5S33yoiNGP1v1t',13,'2023-02-11 12:12:10','2023-02-20 00:12:10',3),(14,'#10000014',4,'1','default','pending',1876.00,0.00,0.00,NULL,NULL,0.00,1876.00,1,NULL,1,NULL,'zME0zq4qg7xrQh7136dEbpkedS8UX',14,'2023-02-10 16:12:10','2023-02-20 00:12:10',2),(15,'#10000015',4,'1','default','completed',2535.00,0.00,0.00,NULL,NULL,0.00,2535.00,1,NULL,1,'2023-02-20 00:12:13','gqGqocF8TIMY8GUuK1r3Y8X3VlSZP',15,'2023-02-06 16:12:10','2023-02-20 00:12:13',5),(16,'#10000016',4,'1','default','completed',1232.50,0.00,0.00,NULL,NULL,0.00,1232.50,1,NULL,1,'2023-02-20 00:12:13','hR7aQ2DcuV9ORZ5icRTKlalUR86gN',16,'2023-02-08 18:12:10','2023-02-20 00:12:13',4),(17,'#10000017',4,'1','default','completed',2978.00,0.00,0.00,NULL,NULL,0.00,2978.00,1,NULL,1,'2023-02-20 00:12:13','sy48LFAqmWklB47vCGX8KoEaIvq4X',17,'2023-02-12 12:12:10','2023-02-20 00:12:13',6),(18,'#10000018',1,'1','default','completed',81.00,0.00,0.00,NULL,NULL,0.00,81.00,1,NULL,1,'2023-02-20 00:12:13','YmBRZDaGrgGAvl1NKnlvIziRBdPPe',18,'2023-02-18 20:12:10','2023-02-20 00:12:13',4),(19,'#10000019',1,'1','default','pending',400.00,0.00,0.00,NULL,NULL,0.00,400.00,1,NULL,1,NULL,'BaWu8nokKcRdHv0kKEBx1IdRUgyK0',19,'2023-02-13 00:12:10','2023-02-20 00:12:10',3),(20,'#10000020',1,'1','default','completed',2535.00,0.00,0.00,NULL,NULL,0.00,2535.00,1,NULL,1,'2023-02-20 00:12:13','TflqLRHJ3NhnnTQfvTyTZR1s9C1qk',20,'2023-02-18 20:12:10','2023-02-20 00:12:13',5),(21,'#10000021',9,'1','default','pending',802.00,0.00,0.00,NULL,NULL,0.00,802.00,1,NULL,1,NULL,'2oMaaq9zwSwJCgmKSNjWvDAn9jpVK',21,'2023-02-10 06:12:10','2023-02-20 00:12:10',1),(22,'#10000022',9,'1','default','pending',400.00,0.00,0.00,NULL,NULL,0.00,400.00,1,NULL,1,NULL,'nJZEV59Zq1WCEBWGStfzQIJaHVqgi',22,'2023-02-14 14:12:10','2023-02-20 00:12:10',3),(23,'#10000023',4,'1','default','completed',81.00,0.00,0.00,NULL,NULL,0.00,81.00,1,NULL,1,'2023-02-20 00:12:10','PActDc7V3YqRmsPebbnvpQ7pLcL0Y',23,'2023-02-10 00:12:10','2023-02-20 00:12:10',4),(24,'#10000024',4,'1','default','pending',4163.00,0.00,0.00,NULL,NULL,0.00,4163.00,1,NULL,1,NULL,'U46YXpOTVbphnhKyfX6D3K5oRotA8',24,'2023-02-15 00:12:10','2023-02-20 00:12:10',2),(25,'#10000025',4,'1','default','completed',800.00,0.00,0.00,NULL,NULL,0.00,800.00,1,NULL,1,'2023-02-20 00:12:13','7ZbFKXe3Bcyi7BwgiLde2jelvcJu9',25,'2023-02-10 00:12:10','2023-02-20 00:12:13',3),(26,'#10000026',5,'1','default','pending',160.50,0.00,0.00,NULL,NULL,0.00,160.50,1,NULL,1,NULL,'pqfQ0fuqnq1iOh61lCQHFXRtN0XOv',26,'2023-02-15 10:12:11','2023-02-20 00:12:11',1),(27,'#10000027',5,'1','default','pending',2436.00,0.00,0.00,NULL,NULL,0.00,2436.00,1,NULL,1,NULL,'jaJmcpmL4HDpjWkyOKKBoWhhQxUyR',27,'2023-02-18 04:12:11','2023-02-20 00:12:11',2),(28,'#10000028',5,'1','default','completed',1690.00,0.00,0.00,NULL,NULL,0.00,1690.00,1,NULL,1,'2023-02-20 00:12:13','xuxUu0FbUqEethtTQ48Du8dhnY8vH',28,'2023-02-19 02:12:11','2023-02-20 00:12:13',5),(29,'#10000029',5,'1','default','completed',3400.00,0.00,0.00,NULL,NULL,0.00,3400.00,1,NULL,1,'2023-02-20 00:12:13','W61MM2CLYd5IYl8aItX7hMKFJ1Srh',29,'2023-02-15 00:12:11','2023-02-20 00:12:13',2),(30,'#10000030',5,'1','default','pending',1188.00,0.00,0.00,NULL,NULL,0.00,1188.00,1,NULL,1,NULL,'0dYtywGQLZCemGkxROLYQ2k7qFn4h',30,'2023-02-14 04:12:11','2023-02-20 00:12:11',6),(31,'#10000031',1,'1','default','completed',634.50,0.00,0.00,NULL,NULL,0.00,634.50,1,NULL,1,'2023-02-20 00:12:14','C8aE4NziN4M5ghDuVdPsnuvk7iAAG',31,'2023-02-18 12:12:11','2023-02-20 00:12:14',4),(32,'#10000032',1,'1','default','completed',4149.00,0.00,0.00,NULL,NULL,0.00,4149.00,1,NULL,1,'2023-02-20 00:12:11','Gvq1lofgaRfN7v7KSaG8PQOJZ5TeD',32,'2023-02-18 12:12:11','2023-02-20 00:12:11',2),(33,'#10000033',4,'1','default','completed',1527.00,0.00,0.00,NULL,NULL,0.00,1527.00,1,NULL,1,'2023-02-20 00:12:14','vjgct4eV0njStNJK5D7tnmE1iYobh',33,'2023-02-19 08:12:11','2023-02-20 00:12:14',6),(34,'#10000034',4,'1','default','pending',1146.00,0.00,0.00,NULL,NULL,0.00,1146.00,1,NULL,1,NULL,'g7bK23BGX2ZrkNhWSZ1K8vuX8eyhq',34,'2023-02-18 16:12:11','2023-02-20 00:12:11',2),(35,'#10000035',4,'1','default','completed',1150.00,0.00,0.00,NULL,NULL,0.00,1150.00,1,NULL,1,'2023-02-20 00:12:14','tmiIuFuNi7zuB8GnCxBwsl9TCfePV',35,'2023-02-19 08:12:11','2023-02-20 00:12:14',3),(36,'#10000036',4,'1','default','pending',1690.00,0.00,0.00,NULL,NULL,0.00,1690.00,1,NULL,1,NULL,'slPFUfUlhaj4wFlyIEIQeKq0cvmGN',36,'2023-02-14 16:12:11','2023-02-20 00:12:11',5),(37,'#10000037',5,'1','default','pending',81.00,0.00,0.00,NULL,NULL,0.00,81.00,1,NULL,1,NULL,'LvpX1OWjiCxFcuaBczmimcB7wwYaa',37,'2023-02-17 16:12:11','2023-02-20 00:12:11',4),(38,'#10000038',5,'1','default','completed',1542.00,0.00,0.00,NULL,NULL,0.00,1542.00,1,NULL,1,'2023-02-20 00:12:14','eLo5OEocSDNpVI1TEiJsVjfKprfPt',38,'2023-02-18 20:12:11','2023-02-20 00:12:14',3),(39,'#10000039',5,'1','default','completed',240.75,0.00,0.00,NULL,NULL,0.00,240.75,1,NULL,1,'2023-02-20 00:12:11','vONqstTqFRFXlKwZqymRcSd2AzWTY',39,'2023-02-19 12:12:11','2023-02-20 00:12:11',1),(40,'#10000040',5,'1','default','completed',4233.00,0.00,0.00,NULL,NULL,0.00,4233.00,1,NULL,1,'2023-02-20 00:12:14','nyy2iJSWvRfVYZ7u2MqvGzPFR8yRl',40,'2023-02-17 12:12:11','2023-02-20 00:12:14',6),(41,'#10000041',5,'1','default','completed',800.00,0.00,0.00,NULL,NULL,0.00,800.00,1,NULL,1,'2023-02-20 00:12:14','RPDfx7uIp2UTem3xi6oQT9FOo4ze4',41,'2023-02-16 00:12:11','2023-02-20 00:12:14',3),(42,'#10000042',9,'1','default','completed',524.00,0.00,0.00,NULL,NULL,0.00,524.00,1,NULL,1,'2023-02-20 00:12:14','wR4sWbXEeDVHwtmo8pf5yJr2P01J6',42,'2023-02-18 18:12:11','2023-02-20 00:12:14',2),(43,'#10000043',9,'1','default','completed',1192.00,0.00,0.00,NULL,NULL,0.00,1192.00,1,NULL,1,'2023-02-20 00:12:11','PWP5hRSWTUFADGjt0KZ6Mtp0bNSAr',43,'2023-02-19 04:12:11','2023-02-20 00:12:11',4),(44,'#10000044',4,'1','default','pending',513.00,0.00,0.00,NULL,NULL,0.00,513.00,1,NULL,1,NULL,'OJ9lw9aAuSf0B5ZC4KXVMoFNEUhyp',44,'2023-02-17 16:12:11','2023-02-20 00:12:11',4),(45,'#10000045',4,'1','default','completed',2300.00,0.00,0.00,NULL,NULL,0.00,2300.00,1,NULL,1,'2023-02-20 00:12:15','G59i8WrdXUXZ6EoWBtYgrhEmZxsT8',45,'2023-02-19 00:12:11','2023-02-20 00:12:15',3),(46,'#10000046',4,'1','default','pending',2535.00,0.00,0.00,NULL,NULL,0.00,2535.00,1,NULL,1,NULL,'Ih2TuCKEJrO21hcTUP5s1loVTiTXR',46,'2023-02-17 16:12:11','2023-02-20 00:12:11',5),(47,'#10000047',4,'1','default','completed',80.25,0.00,0.00,NULL,NULL,0.00,80.25,1,NULL,1,'2023-02-20 00:12:11','pwGuS2W4gdEtJ4P19w6u2S3PgTz8G',47,'2023-02-17 12:12:11','2023-02-20 00:12:11',1),(48,'#10000048',4,'1','default','completed',823.00,0.00,0.00,NULL,NULL,0.00,823.00,1,NULL,1,'2023-02-20 00:12:11','In0EHqBQUdVM0KRs6KdOSLQHK2Oea',48,'2023-02-18 06:12:11','2023-02-20 00:12:11',6),(49,'#10000049',4,'1','default','completed',1332.00,0.00,0.00,NULL,NULL,0.00,1332.00,1,NULL,1,'2023-02-20 00:12:15','sNtd2xcO3CbVHlMMijj0iWxemq2gM',49,'2023-02-19 06:12:11','2023-02-20 00:12:15',2),(50,'#10000050',4,'1','default','completed',845.00,0.00,0.00,NULL,NULL,0.00,845.00,1,NULL,1,'2023-02-20 00:12:15','XyF8g24DyYL7Ai7HmPCki9iD2gZqs',50,'2023-02-17 18:12:11','2023-02-20 00:12:15',5),(51,'#10000051',4,'1','default','pending',3836.00,0.00,0.00,NULL,NULL,0.00,3836.00,1,NULL,1,NULL,'PdkuVfH57B666Ggx3CJfLTooQ9ya4',51,'2023-02-19 08:12:11','2023-02-20 00:12:11',2),(52,'#10000052',4,'1','default','completed',1791.00,0.00,0.00,NULL,NULL,0.00,1791.00,1,NULL,1,'2023-02-20 00:12:15','47tUgYawT9ri0XcHUBwIl5PBQmFbw',52,'2023-02-19 04:12:11','2023-02-20 00:12:15',6),(53,'#10000053',4,'1','default','completed',1200.00,0.00,0.00,NULL,NULL,0.00,1200.00,1,NULL,1,'2023-02-20 00:12:15','VEqXzgnNyVEfvkdJ8L0rjusUQSVkM',53,'2023-02-18 08:12:11','2023-02-20 00:12:15',3),(54,'#10000054',5,'1','default','pending',1188.00,0.00,0.00,NULL,NULL,0.00,1188.00,1,NULL,1,NULL,'OyPpN1Ta5jx4DjWqsq7L9hz33Aw2i',54,'2023-02-19 20:12:11','2023-02-20 00:12:11',6),(55,'#10000055',5,'1','default','completed',1048.00,0.00,0.00,NULL,NULL,0.00,1048.00,1,NULL,1,'2023-02-20 00:12:15','YTz1KTZ0BJ39UPuv2XTr3AlDKTlDV',55,'2023-02-19 08:12:11','2023-02-20 00:12:15',2),(56,'#10000056',5,'1','default','pending',800.00,0.00,0.00,NULL,NULL,0.00,800.00,1,NULL,1,NULL,'fTs4d99ClEgFpDgl7bdVEGUy7RFk6',56,'2023-02-19 16:12:11','2023-02-20 00:12:11',3);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2023-02-20 00:12:04','2023-02-20 00:12:04',0),(2,'Size','size','text',1,1,1,'published',1,'2023-02-20 00:12:04','2023-02-20 00:12:04',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(6,2,'S','s',NULL,NULL,1,1,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(7,2,'M','m',NULL,NULL,0,2,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(8,2,'L','l',NULL,NULL,0,3,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2023-02-20 00:12:04','2023-02-20 00:12:04'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2023-02-20 00:12:04','2023-02-20 00:12:04');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(23,'Networking',17,NULL,'published',1,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2023-02-20 00:12:00','2023-02-20 00:12:00');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,28,1),(2,30,1),(3,11,1),(4,35,1),(5,3,2),(6,24,2),(7,34,2),(8,20,2),(9,2,3),(10,23,3),(11,10,3),(12,19,3),(13,28,4),(14,7,4),(15,30,4),(16,36,4),(17,21,5),(18,3,5),(19,2,5),(20,32,5),(21,18,6),(22,21,6),(23,17,6),(24,33,6),(25,15,7),(26,10,7),(27,28,7),(28,21,7),(29,11,8),(30,2,8),(31,24,8),(32,31,8),(33,5,9),(34,11,9),(35,6,9),(36,33,9),(37,6,10),(38,29,10),(39,11,10),(40,21,10),(41,30,11),(42,20,11),(43,36,11),(44,28,11),(45,6,12),(46,7,12),(47,21,12),(48,25,12),(49,7,13),(50,12,13),(51,36,13),(52,31,14),(53,10,14),(54,15,14),(55,21,14),(56,11,15),(57,23,15),(58,16,15),(59,34,15),(60,23,16),(61,31,16),(62,28,16),(63,33,16),(64,19,17),(65,35,17),(66,3,17),(67,15,17),(68,21,18),(69,8,18),(70,27,18),(71,20,18),(72,10,19),(73,32,19),(74,33,19),(75,7,20),(76,37,20),(77,17,20),(78,16,20),(79,12,21),(80,11,21),(81,14,21),(82,23,21),(83,23,22),(84,8,22),(85,17,22),(86,37,22),(87,2,23),(88,23,23),(89,11,23),(90,17,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1,1),(2,2,2),(3,3,3),(4,2,4),(5,2,5),(6,2,6),(7,1,7),(8,1,8),(9,1,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,3,14),(15,2,15),(16,2,16),(17,3,17),(18,1,18),(19,3,19),(20,2,20),(21,2,21),(22,1,22),(23,3,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-02-20 00:12:00','2023-02-20 00:12:00',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-02-20 00:12:00','2023-02-20 00:12:00',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-02-20 00:12:00','2023-02-20 00:12:00',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,18),(2,1,12),(3,1,13),(4,1,11),(5,1,19),(6,2,13),(7,2,5),(8,2,9),(9,2,17),(10,2,7),(11,2,8),(12,2,12),(13,3,15),(14,3,18),(15,3,2),(16,3,13),(17,3,6),(18,3,19),(19,4,16),(20,4,15),(21,4,18),(22,4,14),(23,4,8),(24,4,6),(25,5,10),(26,5,8),(27,5,4),(28,5,13),(29,5,1),(30,5,9),(31,6,13),(32,6,4),(33,6,3),(34,6,15),(35,6,5),(36,6,19),(37,6,7),(38,7,8),(39,7,6),(40,7,15),(41,7,11),(42,7,14),(43,7,19),(44,8,10),(45,8,1),(46,8,20),(47,8,11),(48,8,7),(49,8,16),(50,9,13),(51,9,20),(52,9,11),(53,9,4),(54,9,7),(55,9,6),(56,9,8),(57,10,11),(58,10,6),(59,10,3),(60,10,15),(61,10,4),(62,10,13),(63,11,4),(64,11,10),(65,11,17),(66,11,6),(67,11,19),(68,11,7),(69,12,8),(70,12,5),(71,12,17),(72,12,3),(73,12,6),(74,12,11),(75,12,7),(76,13,11),(77,13,15),(78,13,18),(79,13,20),(80,13,5),(81,13,7),(82,13,16),(83,14,7),(84,14,15),(85,14,5),(86,14,4),(87,14,19),(88,14,12),(89,14,16),(90,15,10),(91,15,13),(92,15,2),(93,15,18),(94,15,1),(95,15,16),(96,15,5),(97,16,13),(98,16,4),(99,16,2),(100,16,6),(101,16,10),(102,16,20),(103,17,6),(104,17,10),(105,17,19),(106,17,4),(107,17,5),(108,17,11),(109,18,2),(110,18,11),(111,18,12),(112,18,8),(113,18,13),(114,18,19),(115,19,6),(116,19,13),(117,19,2),(118,19,20),(119,19,17),(120,19,18),(121,19,3),(122,20,7),(123,20,19),(124,20,13),(125,20,16),(126,20,1),(127,20,15),(128,21,1),(129,21,17),(130,21,4),(131,21,18),(132,21,16),(133,21,5),(134,22,9),(135,22,17),(136,22,6),(137,22,14),(138,22,1),(139,22,7),(140,23,14),(141,23,9),(142,23,12),(143,23,17),(144,23,10),(145,23,3),(146,23,1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(2,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(3,32,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(4,32,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(5,32,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(6,32,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(7,33,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(8,33,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(9,33,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(10,33,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(11,34,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(12,34,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(13,34,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(14,34,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(15,35,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(16,35,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(17,35,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(18,35,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(19,43,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(20,43,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(21,43,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(22,51,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(23,51,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(24,52,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(25,52,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(26,53,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(27,53,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(28,59,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(29,59,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(30,59,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(31,59,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(32,66,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(33,66,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(34,66,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(35,67,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(36,67,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(37,67,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(38,68,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(39,68,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(40,68,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(41,69,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(42,69,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04'),(43,69,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-20 07:12:04\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-02-20 00:12:04','2023-02-20 00:12:04');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,15),(1,18),(2,12),(2,21),(3,9);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-02-20 00:12:00','2023-02-20 00:12:00'),(2,'New','#00c9a7','published','2023-02-20 00:12:00','2023-02-20 00:12:00'),(3,'Sale','#fe9931','published','2023-02-20 00:12:00','2023-02-20 00:12:00');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,6),(2,3),(2,4),(3,3),(3,5),(3,6),(4,2),(4,6),(5,3),(5,5),(6,3),(6,6),(7,1),(7,2),(7,6),(8,2),(8,3),(8,5),(9,1),(9,5),(10,1),(10,4),(11,2),(11,3),(11,6),(12,3),(12,5),(12,6),(13,1),(13,4),(13,5),(14,3),(14,4),(14,5),(15,2),(16,3),(16,4),(16,5),(17,4),(17,6),(18,1),(18,5),(18,6),(19,1),(19,3),(19,6),(20,3),(20,4),(20,5),(21,3),(21,5),(21,6),(22,2),(22,3),(23,1),(23,4),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(2,'Mobile',NULL,'published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(3,'Iphone',NULL,'published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(4,'Printer',NULL,'published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(5,'Office',NULL,'published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(6,'IT',NULL,'published','2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (13,1,7),(23,1,12),(35,1,18),(41,1,21),(59,1,30),(63,1,32),(101,1,51),(109,1,55),(9,2,5),(21,2,11),(27,2,14),(33,2,17),(43,2,22),(49,2,25),(53,2,27),(69,2,35),(71,2,36),(73,2,37),(77,2,39),(87,2,44),(97,2,49),(3,3,2),(7,3,4),(15,3,8),(19,3,10),(29,3,15),(51,3,26),(55,3,28),(79,3,40),(91,3,46),(99,3,50),(105,3,53),(107,3,54),(5,4,3),(31,4,16),(37,4,19),(47,4,24),(57,4,29),(61,4,31),(65,4,33),(67,4,34),(75,4,38),(93,4,47),(95,4,48),(103,4,52),(1,5,1),(11,5,6),(17,5,9),(25,5,13),(39,5,20),(45,5,23),(81,5,41),(83,5,42),(85,5,43),(89,5,45),(34,6,17),(60,6,30),(70,6,35),(82,6,41),(104,6,52),(8,7,4),(18,7,9),(36,7,18),(46,7,23),(58,7,29),(62,7,31),(72,7,36),(74,7,37),(86,7,43),(94,7,47),(108,7,54),(4,8,2),(28,8,14),(32,8,16),(40,8,20),(66,8,33),(78,8,39),(80,8,40),(92,8,46),(100,8,50),(110,8,55),(2,9,1),(16,9,8),(20,9,10),(22,9,11),(24,9,12),(30,9,15),(42,9,21),(44,9,22),(50,9,25),(52,9,26),(54,9,27),(56,9,28),(64,9,32),(68,9,34),(76,9,38),(90,9,45),(96,9,48),(98,9,49),(102,9,51),(106,9,53),(6,10,3),(10,10,5),(12,10,6),(14,10,7),(26,10,13),(38,10,19),(48,10,24),(84,10,42),(88,10,44);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,2,1),(4,27,2,0),(5,28,2,0),(6,29,3,1),(7,30,4,1),(8,31,4,0),(9,32,5,1),(10,33,5,0),(11,34,5,0),(12,35,5,0),(13,36,6,1),(14,37,6,0),(15,38,7,1),(16,39,7,0),(17,40,8,1),(18,41,8,0),(19,42,8,0),(20,43,9,1),(21,44,10,1),(22,45,10,0),(23,46,11,1),(24,47,11,0),(25,48,12,1),(26,49,12,0),(27,50,12,0),(28,51,13,1),(29,52,13,0),(30,53,13,0),(31,54,14,1),(32,55,14,0),(33,56,15,1),(34,57,16,1),(35,58,16,0),(36,59,17,1),(37,60,18,1),(38,61,18,0),(39,62,19,1),(40,63,19,0),(41,64,19,0),(42,65,20,1),(43,66,21,1),(44,67,21,0),(45,68,21,0),(46,69,21,0),(47,70,22,1),(48,71,22,0),(49,72,22,0),(50,73,22,0),(51,74,23,1),(52,75,23,0),(53,76,23,0),(54,77,23,0),(55,78,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-02-20',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  `approved_by` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-146-A0',0,17,0,1,1,2,0,0,80.25,NULL,NULL,NULL,20.00,18.00,13.00,679.00,NULL,31579,'2023-02-20 00:12:04','2023-02-20 00:12:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,1,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-175-A0',0,19,0,1,1,3,0,0,40.5,NULL,NULL,NULL,16.00,12.00,11.00,819.00,NULL,90851,'2023-02-20 00:12:04','2023-02-20 00:12:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-182-A0',0,16,0,1,1,4,0,0,20,NULL,NULL,NULL,10.00,19.00,14.00,756.00,NULL,78774,'2023-02-20 00:12:04','2023-02-20 00:12:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-106-A0',0,11,0,1,1,2,0,0,509,417.38,NULL,NULL,16.00,11.00,12.00,770.00,NULL,180188,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,6,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-163-A0',0,10,0,1,1,2,0,0,823,NULL,NULL,NULL,10.00,14.00,19.00,561.00,NULL,141925,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,6,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-177-A0',0,12,0,1,1,7,0,0,401,NULL,NULL,NULL,10.00,12.00,15.00,598.00,NULL,66476,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-147-A0',0,19,0,1,1,5,0,0,588,NULL,NULL,NULL,18.00,20.00,16.00,700.00,NULL,22995,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,6,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-158-A0',0,12,0,1,1,7,0,0,1104,916.32,NULL,NULL,12.00,18.00,12.00,896.00,NULL,144392,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-135-A0',0,12,0,1,1,5,0,0,573,NULL,NULL,NULL,20.00,10.00,15.00,819.00,NULL,161598,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-116-A0',0,16,0,1,0,1,0,0,1160,NULL,NULL,NULL,17.00,15.00,10.00,632.00,NULL,96999,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-132-A0',0,10,0,1,0,4,0,0,1192,NULL,NULL,NULL,18.00,14.00,15.00,573.00,NULL,105713,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-163-A0',0,17,0,1,0,7,0,0,593,468.47,NULL,NULL,11.00,15.00,11.00,755.00,NULL,115354,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-179-A0',0,19,0,1,0,7,0,0,594,NULL,NULL,NULL,11.00,10.00,15.00,704.00,NULL,172503,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,6,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-190-A0',0,18,0,1,0,7,0,0,513,NULL,NULL,NULL,16.00,12.00,14.00,864.00,NULL,14166,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-105-A0',0,15,0,1,0,3,0,0,597,NULL,NULL,NULL,12.00,10.00,14.00,513.00,NULL,180852,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,6,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-137-A0',0,10,0,1,0,7,0,0,524,366.8,NULL,NULL,14.00,11.00,17.00,745.00,NULL,28686,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-167-A0',0,12,0,1,0,7,0,0,514,NULL,NULL,NULL,19.00,18.00,18.00,622.00,NULL,122156,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-179-A0',0,16,0,1,0,3,0,0,1192,NULL,NULL,NULL,16.00,16.00,11.00,536.00,NULL,148086,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-131-A0',0,20,0,1,0,6,0,0,1150,NULL,NULL,NULL,17.00,17.00,10.00,639.00,NULL,17161,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-128-A0',0,20,0,1,0,4,0,0,711,497.7,NULL,NULL,11.00,10.00,13.00,569.00,NULL,18934,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-140-A0',0,13,0,1,0,2,0,0,666,NULL,NULL,NULL,18.00,11.00,12.00,839.00,NULL,54098,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-165-A0',0,15,0,1,0,1,0,0,400,NULL,NULL,NULL,15.00,18.00,18.00,728.00,NULL,182485,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-125-A0',0,17,0,1,0,5,0,0,845,NULL,NULL,NULL,10.00,20.00,17.00,652.00,NULL,197380,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,5,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-146-A0',0,17,0,1,0,2,1,0,80.25,NULL,NULL,NULL,20.00,18.00,13.00,679.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-146-A0-A1',0,17,0,1,0,2,1,0,80.25,NULL,NULL,NULL,20.00,18.00,13.00,679.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-175-A0',0,19,0,1,0,3,1,0,40.5,NULL,NULL,NULL,16.00,12.00,11.00,819.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-175-A0-A1',0,19,0,1,0,3,1,0,40.5,NULL,NULL,NULL,16.00,12.00,11.00,819.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-175-A0-A2',0,19,0,1,0,3,1,0,40.5,NULL,NULL,NULL,16.00,12.00,11.00,819.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-182-A0',0,16,0,1,0,4,1,0,20,NULL,NULL,NULL,10.00,19.00,14.00,756.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(30,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-106-A0',0,11,0,1,0,2,1,0,509,417.38,NULL,NULL,16.00,11.00,12.00,770.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(31,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-106-A0-A1',0,11,0,1,0,2,1,0,509,381.75,NULL,NULL,16.00,11.00,12.00,770.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(32,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-163-A0',0,10,0,1,0,2,1,0,823,NULL,NULL,NULL,10.00,14.00,19.00,561.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(33,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-163-A0-A1',0,10,0,1,0,2,1,0,823,NULL,NULL,NULL,10.00,14.00,19.00,561.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(34,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-163-A0-A2',0,10,0,1,0,2,1,0,823,NULL,NULL,NULL,10.00,14.00,19.00,561.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(35,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-3.jpg\"]','SW-163-A0-A3',0,10,0,1,0,2,1,0,823,NULL,NULL,NULL,10.00,14.00,19.00,561.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-177-A0',0,12,0,1,0,7,1,0,401,NULL,NULL,NULL,10.00,12.00,15.00,598.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(37,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-177-A0-A1',0,12,0,1,0,7,1,0,401,NULL,NULL,NULL,10.00,12.00,15.00,598.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-147-A0',0,19,0,1,0,5,1,0,588,NULL,NULL,NULL,18.00,20.00,16.00,700.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(39,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-147-A0-A1',0,19,0,1,0,5,1,0,588,NULL,NULL,NULL,18.00,20.00,16.00,700.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(40,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-158-A0',0,12,0,1,0,7,1,0,1104,916.32,NULL,NULL,12.00,18.00,12.00,896.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(41,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-158-A0-A1',0,12,0,1,0,7,1,0,1104,850.08,NULL,NULL,12.00,18.00,12.00,896.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(42,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-2.jpg\"]','SW-158-A0-A2',0,12,0,1,0,7,1,0,1104,927.36,NULL,NULL,12.00,18.00,12.00,896.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(43,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-135-A0',0,12,0,1,0,5,1,0,573,NULL,NULL,NULL,20.00,10.00,15.00,819.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(44,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-116-A0',0,16,0,1,0,1,1,0,1160,NULL,NULL,NULL,17.00,15.00,10.00,632.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(45,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-116-A0-A1',0,16,0,1,0,1,1,0,1160,NULL,NULL,NULL,17.00,15.00,10.00,632.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(46,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-132-A0',0,10,0,1,0,4,1,0,1192,NULL,NULL,NULL,18.00,14.00,15.00,573.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(47,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-132-A0-A1',0,10,0,1,0,4,1,0,1192,NULL,NULL,NULL,18.00,14.00,15.00,573.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(48,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-163-A0',0,17,0,1,0,7,1,0,593,468.47,NULL,NULL,11.00,15.00,11.00,755.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(49,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-163-A0-A1',0,17,0,1,0,7,1,0,593,468.47,NULL,NULL,11.00,15.00,11.00,755.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(50,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-163-A0-A2',0,17,0,1,0,7,1,0,593,492.19,NULL,NULL,11.00,15.00,11.00,755.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(51,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-179-A0',0,19,0,1,0,7,1,0,594,NULL,NULL,NULL,11.00,10.00,15.00,704.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(52,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-179-A0-A1',0,19,0,1,0,7,1,0,594,NULL,NULL,NULL,11.00,10.00,15.00,704.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(53,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-179-A0-A2',0,19,0,1,0,7,1,0,594,NULL,NULL,NULL,11.00,10.00,15.00,704.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(54,'B&amp;O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-190-A0',0,18,0,1,0,7,1,0,513,NULL,NULL,NULL,16.00,12.00,14.00,864.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(55,'B&amp;O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-190-A0-A1',0,18,0,1,0,7,1,0,513,NULL,NULL,NULL,16.00,12.00,14.00,864.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(56,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-105-A0',0,15,0,1,0,3,1,0,597,NULL,NULL,NULL,12.00,10.00,14.00,513.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-137-A0',0,10,0,1,0,7,1,0,524,366.8,NULL,NULL,14.00,11.00,17.00,745.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(58,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-137-A0-A1',0,10,0,1,0,7,1,0,524,382.52,NULL,NULL,14.00,11.00,17.00,745.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(59,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-167-A0',0,12,0,1,0,7,1,0,514,NULL,NULL,NULL,19.00,18.00,18.00,622.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(60,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-179-A0',0,16,0,1,0,3,1,0,1192,NULL,NULL,NULL,16.00,16.00,11.00,536.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(61,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-179-A0-A1',0,16,0,1,0,3,1,0,1192,NULL,NULL,NULL,16.00,16.00,11.00,536.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(62,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-131-A0',0,20,0,1,0,6,1,0,1150,NULL,NULL,NULL,17.00,17.00,10.00,639.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(63,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-131-A0-A1',0,20,0,1,0,6,1,0,1150,NULL,NULL,NULL,17.00,17.00,10.00,639.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-2.jpg\"]','SW-131-A0-A2',0,20,0,1,0,6,1,0,1150,NULL,NULL,NULL,17.00,17.00,10.00,639.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-128-A0',0,20,0,1,0,4,1,0,711,497.7,NULL,NULL,11.00,10.00,13.00,569.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(66,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-140-A0',0,13,0,1,0,2,1,0,666,NULL,NULL,NULL,18.00,11.00,12.00,839.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(67,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-140-A0-A1',0,13,0,1,0,2,1,0,666,NULL,NULL,NULL,18.00,11.00,12.00,839.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(68,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-2.jpg\"]','SW-140-A0-A2',0,13,0,1,0,2,1,0,666,NULL,NULL,NULL,18.00,11.00,12.00,839.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(69,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-140-A0-A3',0,13,0,1,0,2,1,0,666,NULL,NULL,NULL,18.00,11.00,12.00,839.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(70,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-165-A0',0,15,0,1,0,1,1,0,400,NULL,NULL,NULL,15.00,18.00,18.00,728.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(71,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-165-A0-A1',0,15,0,1,0,1,1,0,400,NULL,NULL,NULL,15.00,18.00,18.00,728.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(72,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]','SW-165-A0-A2',0,15,0,1,0,1,1,0,400,NULL,NULL,NULL,15.00,18.00,18.00,728.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(73,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-3.jpg\"]','SW-165-A0-A3',0,15,0,1,0,1,1,0,400,NULL,NULL,NULL,15.00,18.00,18.00,728.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(74,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-125-A0',0,17,0,1,0,5,1,0,845,NULL,NULL,NULL,10.00,20.00,17.00,652.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(75,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-125-A0-A1',0,17,0,1,0,5,1,0,845,NULL,NULL,NULL,10.00,20.00,17.00,652.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(76,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-125-A0-A2',0,17,0,1,0,5,1,0,845,NULL,NULL,NULL,10.00,20.00,17.00,652.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-3.jpg\"]','SW-125-A0-A3',0,17,0,1,0,5,1,0,845,NULL,NULL,NULL,10.00,20.00,17.00,652.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-125-A0-A4',0,17,0,1,0,5,1,0,845,NULL,NULL,NULL,10.00,20.00,17.00,652.00,NULL,0,'2023-02-20 00:12:04','2023-02-20 00:12:10','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Smart Watches',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Smart Watches',NULL,NULL),('vi',29,'Beat Headphone',NULL,NULL),('vi',30,'Red & Black Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Smart Watch External',NULL,NULL),('vi',33,'Smart Watch External',NULL,NULL),('vi',34,'Smart Watch External',NULL,NULL),('vi',35,'Smart Watch External',NULL,NULL),('vi',36,'Nikon HD camera',NULL,NULL),('vi',37,'Nikon HD camera',NULL,NULL),('vi',38,'Audio Equipment',NULL,NULL),('vi',39,'Audio Equipment',NULL,NULL),('vi',40,'Smart Televisions',NULL,NULL),('vi',41,'Smart Televisions',NULL,NULL),('vi',42,'Smart Televisions',NULL,NULL),('vi',43,'Samsung Smart Phone',NULL,NULL),('vi',44,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',45,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',46,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',47,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',48,'EPSION Plaster Printer',NULL,NULL),('vi',49,'EPSION Plaster Printer',NULL,NULL),('vi',50,'EPSION Plaster Printer',NULL,NULL),('vi',51,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',52,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',53,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',54,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',55,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',56,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',58,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',59,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',60,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',61,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',62,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',63,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',66,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',67,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',68,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',69,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',70,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',71,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',72,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',73,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',74,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',75,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',76,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,5,6,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(2,8,8,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(3,2,14,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/10.jpg\"]'),(4,6,6,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(5,10,8,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(6,3,15,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\"]'),(7,8,17,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(8,3,13,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(9,7,20,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(10,3,10,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(11,3,9,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(12,3,5,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\"]'),(13,2,7,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(14,9,8,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(15,8,14,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(16,8,18,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(17,4,9,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(18,7,12,5.00,'Good app, good backup service and support. Good documentation.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(19,9,4,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\"]'),(20,7,14,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(21,7,6,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(22,10,3,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(23,2,14,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(24,2,2,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/17.jpg\"]'),(25,2,17,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(26,9,9,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(27,8,13,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(28,10,4,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(29,10,15,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/15.jpg\"]'),(30,5,1,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(31,9,11,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(32,2,13,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(33,8,4,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(34,3,18,3.00,'Clean & perfect source code','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/19.jpg\"]'),(35,4,2,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(36,6,16,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(37,6,10,5.00,'Clean & perfect source code','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(38,1,11,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(39,5,3,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(40,10,5,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(41,2,2,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(42,5,11,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(43,9,15,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(44,10,17,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/13.jpg\"]'),(45,8,8,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(46,3,14,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\"]'),(47,3,16,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(48,4,13,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(49,9,15,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(50,1,9,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(51,1,23,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(52,9,8,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\"]'),(53,5,11,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(54,4,13,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(55,5,1,3.00,'Good app, good backup service and support. Good documentation.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(56,1,15,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(57,4,20,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(58,9,12,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(59,8,13,3.00,'Best ecommerce CMS online store!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(60,9,12,5.00,'Good app, good backup service and support. Good documentation.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(61,2,17,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(62,6,18,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(63,4,7,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(64,3,1,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/22.jpg\"]'),(65,8,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(66,2,2,1.00,'Best ecommerce CMS online store!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(67,3,19,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(68,7,16,2.00,'Best ecommerce CMS online store!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/9.jpg\"]'),(69,3,12,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(70,7,2,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(71,8,17,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(72,5,23,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(73,4,12,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\"]'),(74,9,21,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/11.jpg\"]'),(75,3,1,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(76,1,18,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\"]'),(77,3,13,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(78,6,16,3.00,'Clean & perfect source code','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\"]'),(79,8,13,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\"]'),(80,7,16,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(81,8,15,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(82,10,16,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(83,3,1,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/16.jpg\"]'),(84,9,5,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/16.jpg\"]'),(85,8,4,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\"]'),(86,5,11,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(87,6,8,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(88,2,3,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(89,8,20,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(90,1,20,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(91,5,10,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(92,4,11,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(93,6,18,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(94,2,23,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(95,1,9,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(96,10,6,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(97,4,12,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\"]'),(98,1,10,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(99,8,17,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(100,6,15,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-02-20 00:12:06','2023-02-20 00:12:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-02-08 08:12:10','2023-02-08 08:12:10'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-02-18 08:12:10','2023-02-20 00:12:10'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-02-16 16:12:10','2023-02-16 16:12:10'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-02-18 08:12:10','2023-02-20 00:12:10'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-02-18 08:12:10','2023-02-20 00:12:10'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-02-06 16:12:10','2023-02-06 16:12:10'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-02-18 08:12:10','2023-02-20 00:12:10'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-02-12 02:12:10','2023-02-12 02:12:10'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-02-18 10:12:10','2023-02-20 00:12:10'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(15,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-02-04 04:12:10','2023-02-04 04:12:10'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-02-18 10:12:10','2023-02-20 00:12:10'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-02-13 16:12:10','2023-02-13 16:12:10'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-02-18 10:12:10','2023-02-20 00:12:10'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,7,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(21,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-02-09 12:12:10','2023-02-09 12:12:10'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-02-18 12:12:10','2023-02-20 00:12:10'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(24,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-02-06 12:12:10','2023-02-06 12:12:10'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-02-18 12:12:10','2023-02-20 00:12:10'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(27,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-02-15 18:12:10','2023-02-15 18:12:10'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-02-18 14:12:10','2023-02-20 00:12:10'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(30,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-02-10 02:12:10','2023-02-10 02:12:10'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-02-18 14:12:10','2023-02-20 00:12:10'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(33,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-02-10 02:12:10','2023-02-10 02:12:10'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-02-18 14:12:10','2023-02-20 00:12:10'),(35,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-02-11 12:12:10','2023-02-11 12:12:10'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-02-18 14:12:10','2023-02-20 00:12:10'),(37,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-02-10 16:12:10','2023-02-10 16:12:10'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-02-18 16:12:10','2023-02-20 00:12:10'),(39,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-02-06 16:12:10','2023-02-06 16:12:10'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-02-18 16:12:10','2023-02-20 00:12:10'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(42,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-02-08 18:12:10','2023-02-08 18:12:10'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-02-18 18:12:10','2023-02-20 00:12:10'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,16,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(45,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-02-12 12:12:10','2023-02-12 12:12:10'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-02-18 18:12:10','2023-02-20 00:12:10'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(48,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-02-18 20:12:10','2023-02-18 20:12:10'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-02-18 20:12:10','2023-02-20 00:12:10'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(51,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-02-13 00:12:10','2023-02-13 00:12:10'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-02-18 20:12:10','2023-02-20 00:12:10'),(53,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-02-18 20:12:10','2023-02-18 20:12:10'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-02-18 20:12:10','2023-02-20 00:12:10'),(55,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(56,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2023-02-10 06:12:10','2023-02-10 06:12:10'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2023-02-18 22:12:10','2023-02-20 00:12:10'),(58,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2023-02-14 14:12:10','2023-02-14 14:12:10'),(59,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2023-02-18 22:12:10','2023-02-20 00:12:10'),(60,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2023-02-19 00:12:10','2023-02-20 00:12:10'),(62,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,23,23,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2023-02-20 00:12:10','2023-02-20 00:12:10'),(64,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2023-02-15 00:12:10','2023-02-15 00:12:10'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2023-02-19 00:12:10','2023-02-20 00:12:10'),(66,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2023-02-10 00:12:10','2023-02-10 00:12:10'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2023-02-19 00:12:10','2023-02-20 00:12:10'),(68,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,25,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(69,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2023-02-15 10:12:11','2023-02-15 10:12:11'),(70,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2023-02-19 02:12:11','2023-02-20 00:12:11'),(71,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2023-02-18 04:12:11','2023-02-18 04:12:11'),(72,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2023-02-19 02:12:11','2023-02-20 00:12:11'),(73,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2023-02-19 02:12:11','2023-02-19 02:12:11'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2023-02-19 02:12:11','2023-02-20 00:12:11'),(75,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,28,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(76,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2023-02-15 00:12:11','2023-02-15 00:12:11'),(77,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2023-02-19 04:12:11','2023-02-20 00:12:11'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(79,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2023-02-14 04:12:11','2023-02-14 04:12:11'),(80,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2023-02-19 04:12:11','2023-02-20 00:12:11'),(81,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2023-02-18 12:12:11','2023-02-18 12:12:11'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2023-02-19 06:12:11','2023-02-20 00:12:11'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,31,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(84,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2023-02-18 12:12:11','2023-02-18 12:12:11'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2023-02-19 06:12:11','2023-02-20 00:12:11'),(86,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,32,32,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(87,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,32,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(88,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2023-02-19 08:12:11','2023-02-20 00:12:11'),(90,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(91,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2023-02-18 16:12:11','2023-02-18 16:12:11'),(92,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2023-02-19 08:12:11','2023-02-20 00:12:11'),(93,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(94,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2023-02-19 08:12:11','2023-02-20 00:12:11'),(95,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,35,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(96,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2023-02-14 16:12:11','2023-02-14 16:12:11'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2023-02-19 08:12:11','2023-02-20 00:12:11'),(98,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2023-02-19 10:12:11','2023-02-20 00:12:11'),(100,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2023-02-18 20:12:11','2023-02-18 20:12:11'),(101,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2023-02-19 10:12:11','2023-02-20 00:12:11'),(102,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,38,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(103,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2023-02-19 12:12:11','2023-02-19 12:12:11'),(104,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2023-02-19 12:12:11','2023-02-20 00:12:11'),(105,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,39,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(106,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2023-02-17 12:12:11','2023-02-17 12:12:11'),(107,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2023-02-19 12:12:11','2023-02-20 00:12:11'),(108,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(109,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2023-02-16 00:12:11','2023-02-16 00:12:11'),(110,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2023-02-19 12:12:11','2023-02-20 00:12:11'),(111,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,41,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(112,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2023-02-18 18:12:11','2023-02-18 18:12:11'),(113,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2023-02-19 14:12:11','2023-02-20 00:12:11'),(114,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,42,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(115,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2023-02-19 04:12:11','2023-02-19 04:12:11'),(116,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2023-02-19 14:12:11','2023-02-20 00:12:11'),(117,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,43,43,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(118,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,43,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(119,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(120,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2023-02-19 16:12:11','2023-02-20 00:12:11'),(121,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2023-02-19 00:12:11','2023-02-19 00:12:11'),(122,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,45,45,'2023-02-19 16:12:11','2023-02-20 00:12:11'),(123,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,45,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(124,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2023-02-17 16:12:11','2023-02-17 16:12:11'),(125,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,46,46,'2023-02-19 16:12:11','2023-02-20 00:12:11'),(126,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2023-02-17 12:12:11','2023-02-17 12:12:11'),(127,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,47,47,'2023-02-19 18:12:11','2023-02-20 00:12:11'),(128,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,47,47,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(129,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,47,47,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(130,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2023-02-18 06:12:11','2023-02-18 06:12:11'),(131,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,48,48,'2023-02-19 18:12:11','2023-02-20 00:12:11'),(132,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,48,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(133,'create_from_order','Shipping was created from order %order_id%',0,49,49,'2023-02-19 06:12:11','2023-02-19 06:12:11'),(134,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,49,49,'2023-02-19 18:12:11','2023-02-20 00:12:11'),(135,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,49,49,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(136,'create_from_order','Shipping was created from order %order_id%',0,50,50,'2023-02-17 18:12:11','2023-02-17 18:12:11'),(137,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,50,50,'2023-02-19 18:12:11','2023-02-20 00:12:11'),(138,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,50,50,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(139,'create_from_order','Shipping was created from order %order_id%',0,51,51,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(140,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,51,51,'2023-02-19 20:12:11','2023-02-20 00:12:11'),(141,'create_from_order','Shipping was created from order %order_id%',0,52,52,'2023-02-19 04:12:11','2023-02-19 04:12:11'),(142,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,52,52,'2023-02-19 20:12:11','2023-02-20 00:12:11'),(143,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,52,52,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(144,'create_from_order','Shipping was created from order %order_id%',0,53,53,'2023-02-18 08:12:11','2023-02-18 08:12:11'),(145,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,53,53,'2023-02-19 20:12:11','2023-02-20 00:12:11'),(146,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,53,53,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(147,'create_from_order','Shipping was created from order %order_id%',0,54,54,'2023-02-19 20:12:11','2023-02-19 20:12:11'),(148,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,54,54,'2023-02-19 22:12:11','2023-02-20 00:12:11'),(149,'create_from_order','Shipping was created from order %order_id%',0,55,55,'2023-02-19 08:12:11','2023-02-19 08:12:11'),(150,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,55,55,'2023-02-19 22:12:11','2023-02-20 00:12:11'),(151,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,55,55,'2023-02-20 00:12:11','2023-02-20 00:12:11'),(152,'create_from_order','Shipping was created from order %order_id%',0,56,56,'2023-02-19 16:12:11','2023-02-19 16:12:11'),(153,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,56,56,'2023-02-19 22:12:11','2023-02-20 00:12:11');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,704.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0052289980','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:10',NULL,NULL,NULL),(2,2,NULL,2592.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0085813261','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:10','2023-02-20 07:12:10',NULL,NULL),(3,3,NULL,1917.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0098125625','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:10','2023-02-20 07:12:10',NULL,NULL),(4,4,NULL,1956.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD002299158','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-28 07:12:10','2023-02-20 07:12:10',NULL,NULL),(5,5,NULL,1358.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0031606119','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-24 07:12:10','2023-02-20 07:12:10',NULL,NULL),(6,6,NULL,3366.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0075838795','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-27 07:12:10','2023-02-20 07:12:10',NULL,NULL),(7,7,NULL,704.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0049032906','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-28 07:12:10','2023-02-20 07:12:10',NULL,NULL),(8,8,NULL,1122.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0031373532','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:10','2023-02-20 07:12:10',NULL,NULL),(9,9,NULL,1792.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0095853056','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-01 07:12:10','2023-02-20 07:12:10',NULL,NULL),(10,10,NULL,1638.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0076446360','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-23 07:12:10','2023-02-20 07:12:10',NULL,NULL),(11,11,NULL,1400.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0089841467','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-27 07:12:10','2023-02-20 07:12:10',NULL,NULL),(12,12,NULL,1792.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0034657184','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-23 07:12:10',NULL,NULL,NULL),(13,13,NULL,2184.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD008672737','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:10',NULL,NULL,NULL),(14,14,NULL,3179.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0093513779','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 07:12:10',NULL,NULL,NULL),(15,15,NULL,1956.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0067275779','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-24 07:12:10','2023-02-20 07:12:10',NULL,NULL),(16,16,NULL,1355.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0090850298','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:10','2023-02-20 07:12:10',NULL,NULL),(17,17,NULL,2453.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0099356361','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-25 07:12:10','2023-02-20 07:12:10',NULL,NULL),(18,18,NULL,1638.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0036290037','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:10','2023-02-20 07:12:10',NULL,NULL),(19,19,NULL,728.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0055934921','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 07:12:10',NULL,NULL,NULL),(20,20,NULL,1956.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0036029413','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-23 07:12:10','2023-02-20 07:12:10',NULL,NULL),(21,21,NULL,1196.00,NULL,NULL,'','approved',802.00,'pending','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0088384147','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-26 07:12:10',NULL,NULL,NULL),(22,22,NULL,728.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0037953418','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-24 07:12:10',NULL,NULL,NULL),(23,23,NULL,1638.00,NULL,NULL,'','delivered',81.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0090598561','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 07:12:10','2023-02-20 07:12:10',NULL,NULL),(24,24,NULL,3411.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0065994083','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:10',NULL,NULL,NULL),(25,25,NULL,1456.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:10','2023-02-20 00:12:10','JJD0096159516','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-27 07:12:10','2023-02-20 07:12:10',NULL,NULL),(26,26,NULL,1358.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD005326652','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:11',NULL,NULL,NULL),(27,27,NULL,2574.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD002661618','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-24 07:12:11',NULL,NULL,NULL),(28,28,NULL,1304.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0032053924','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-25 07:12:11','2023-02-20 07:12:11',NULL,NULL),(29,29,NULL,2365.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0060202564','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:11','2023-02-20 07:12:11',NULL,NULL),(30,30,NULL,1408.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0068079259','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-23 07:12:11',NULL,NULL,NULL),(31,31,NULL,3321.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0074205698','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:11','2023-02-20 07:12:11',NULL,NULL),(32,32,NULL,2538.00,NULL,NULL,'','delivered',4149.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0069829339','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 07:12:11','2023-02-20 07:12:11',NULL,NULL),(33,33,NULL,2310.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0075989371','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:11','2023-02-20 07:12:11',NULL,NULL),(34,34,NULL,1638.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0098774020','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:11',NULL,NULL,NULL),(35,35,NULL,639.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0027050120','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-23 07:12:11','2023-02-20 07:12:11',NULL,NULL),(36,36,NULL,1304.00,NULL,NULL,'','approved',1690.00,'pending','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0073877182','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-26 07:12:11',NULL,NULL,NULL),(37,37,NULL,1638.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0044579442','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-01 07:12:11',NULL,NULL,NULL),(38,38,NULL,1866.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0055607458','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-26 07:12:11','2023-02-20 07:12:11',NULL,NULL),(39,39,NULL,2037.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0015192657','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-27 07:12:11','2023-02-20 07:12:11',NULL,NULL),(40,40,NULL,3783.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0059758409','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-25 07:12:11','2023-02-20 07:12:11',NULL,NULL),(41,41,NULL,1456.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0024442849','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-25 07:12:11','2023-02-20 07:12:11',NULL,NULL),(42,42,NULL,745.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0033210283','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 07:12:11','2023-02-20 07:12:11',NULL,NULL),(43,43,NULL,536.00,NULL,NULL,'','delivered',1192.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0099969637','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-26 07:12:11','2023-02-20 07:12:11',NULL,NULL),(44,44,NULL,864.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD001168859','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:11',NULL,NULL,NULL),(45,45,NULL,1278.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0093590173','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-23 07:12:11','2023-02-20 07:12:11',NULL,NULL),(46,46,NULL,1956.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0042503740','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:12:11',NULL,NULL,NULL),(47,47,NULL,679.00,NULL,NULL,'','delivered',80.25,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0072129073','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-28 07:12:11','2023-02-20 07:12:11',NULL,NULL),(48,48,NULL,561.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD003311084','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-01 07:12:11','2023-02-20 07:12:11',NULL,NULL),(49,49,NULL,1678.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0027458168','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:11','2023-02-20 07:12:11',NULL,NULL),(50,50,NULL,652.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0087259281','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:11','2023-02-20 07:12:11',NULL,NULL),(51,51,NULL,3433.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0087954858','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:12:11',NULL,NULL,NULL),(52,52,NULL,1539.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0024272672','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-28 07:12:11','2023-02-20 07:12:11',NULL,NULL),(53,53,NULL,2184.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0083805865','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-26 07:12:11','2023-02-20 07:12:11',NULL,NULL),(54,54,NULL,1408.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0082394865','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-24 07:12:11',NULL,NULL,NULL),(55,55,NULL,1490.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD004813617','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 07:12:11','2023-02-20 07:12:11',NULL,NULL),(56,56,NULL,1456.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-20 00:12:11','2023-02-20 00:12:11','JJD0085577639','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-25 07:12:11',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(2,'None',0.000000,2,'published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(3,'Import Tax',15.000000,3,'published','2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,'PAYMENT',1,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(3,'ORDER &amp; RETURNS',2,'published','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','cabdf68dd3a92c12b3a5257a7a08659e',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','cabdf68dd3a92c12b3a5257a7a08659e',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','9fd9d8beffa3d02d12df5b189f62df20',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','c5b453095f7a4b632f7d08124ec4aa8b',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','17635d9f2ef4ee590454de162a60d8eb',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','ad83d6cf88e0d329f3d30d6925d8efed',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','f8ebe7481723474f2ad034775a54b03c',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','9cc37a64c7b3f0f9e5b74d5ad491aaa4',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','c5b453095f7a4b632f7d08124ec4aa8b',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','17635d9f2ef4ee590454de162a60d8eb',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','ad83d6cf88e0d329f3d30d6925d8efed',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','f8ebe7481723474f2ad034775a54b03c',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',916,'brands/1.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(2,0,'2','2',1,'image/jpeg',916,'brands/2.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(3,0,'3','3',1,'image/jpeg',916,'brands/3.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(4,0,'4','4',1,'image/jpeg',916,'brands/4.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(5,0,'5','5',1,'image/jpeg',916,'brands/5.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(6,0,'6','6',1,'image/jpeg',916,'brands/6.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(7,0,'7','7',1,'image/jpeg',916,'brands/7.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(8,0,'1','1',2,'image/jpeg',2165,'product-categories/1.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(9,0,'2','2',2,'image/jpeg',2165,'product-categories/2.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(10,0,'3','3',2,'image/jpeg',2165,'product-categories/3.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(11,0,'4','4',2,'image/jpeg',2165,'product-categories/4.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(12,0,'5','5',2,'image/jpeg',2165,'product-categories/5.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(13,0,'6','6',2,'image/jpeg',2165,'product-categories/6.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(14,0,'7','7',2,'image/jpeg',2165,'product-categories/7.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(15,0,'8','8',2,'image/jpeg',2165,'product-categories/8.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(16,0,'1','1',3,'image/jpeg',2165,'products/1.jpg','[]','2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(17,0,'10-1','10-1',3,'image/jpeg',2165,'products/10-1.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(18,0,'10-2','10-2',3,'image/jpeg',2165,'products/10-2.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(19,0,'10','10',3,'image/jpeg',2165,'products/10.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(20,0,'11-1','11-1',3,'image/jpeg',2165,'products/11-1.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(21,0,'11-2','11-2',3,'image/jpeg',2165,'products/11-2.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(22,0,'11-3','11-3',3,'image/jpeg',2165,'products/11-3.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(23,0,'11','11',3,'image/jpeg',2165,'products/11.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(24,0,'12-1','12-1',3,'image/jpeg',2165,'products/12-1.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(25,0,'12-2','12-2',3,'image/jpeg',2165,'products/12-2.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(26,0,'12-3','12-3',3,'image/jpeg',2165,'products/12-3.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(27,0,'12','12',3,'image/jpeg',2165,'products/12.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(28,0,'13-1','13-1',3,'image/jpeg',2165,'products/13-1.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(29,0,'13','13',3,'image/jpeg',2165,'products/13.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(30,0,'14','14',3,'image/jpeg',2165,'products/14.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(31,0,'15-1','15-1',3,'image/jpeg',2165,'products/15-1.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(32,0,'15','15',3,'image/jpeg',2165,'products/15.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(33,0,'16','16',3,'image/jpeg',2165,'products/16.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(34,0,'17-1','17-1',3,'image/jpeg',2165,'products/17-1.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(35,0,'17-2','17-2',3,'image/jpeg',2165,'products/17-2.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(36,0,'17-3','17-3',3,'image/jpeg',2165,'products/17-3.jpg','[]','2023-02-20 00:12:01','2023-02-20 00:12:01',NULL),(37,0,'17','17',3,'image/jpeg',2165,'products/17.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(38,0,'18-1','18-1',3,'image/jpeg',2165,'products/18-1.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(39,0,'18-2','18-2',3,'image/jpeg',2165,'products/18-2.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(40,0,'18-3','18-3',3,'image/jpeg',2165,'products/18-3.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(41,0,'18','18',3,'image/jpeg',2165,'products/18.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(42,0,'19-1','19-1',3,'image/jpeg',2165,'products/19-1.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(43,0,'19-2','19-2',3,'image/jpeg',2165,'products/19-2.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(44,0,'19-3','19-3',3,'image/jpeg',2165,'products/19-3.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(45,0,'19','19',3,'image/jpeg',2165,'products/19.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(46,0,'2-1','2-1',3,'image/jpeg',2165,'products/2-1.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(47,0,'2-2','2-2',3,'image/jpeg',2165,'products/2-2.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(48,0,'2-3','2-3',3,'image/jpeg',2165,'products/2-3.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(49,0,'2','2',3,'image/jpeg',2165,'products/2.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(50,0,'20-1','20-1',3,'image/jpeg',2165,'products/20-1.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(51,0,'20-2','20-2',3,'image/jpeg',2165,'products/20-2.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(52,0,'20-3','20-3',3,'image/jpeg',2165,'products/20-3.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(53,0,'20','20',3,'image/jpeg',2165,'products/20.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(54,0,'21-1','21-1',3,'image/jpeg',2165,'products/21-1.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(55,0,'21-2','21-2',3,'image/jpeg',2165,'products/21-2.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(56,0,'21','21',3,'image/jpeg',2165,'products/21.jpg','[]','2023-02-20 00:12:02','2023-02-20 00:12:02',NULL),(57,0,'22-1','22-1',3,'image/jpeg',2165,'products/22-1.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(58,0,'22-2','22-2',3,'image/jpeg',2165,'products/22-2.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(59,0,'22-3','22-3',3,'image/jpeg',2165,'products/22-3.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(60,0,'22','22',3,'image/jpeg',2165,'products/22.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(61,0,'23-1','23-1',3,'image/jpeg',2165,'products/23-1.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(62,0,'23-2','23-2',3,'image/jpeg',2165,'products/23-2.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(63,0,'23-3','23-3',3,'image/jpeg',2165,'products/23-3.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(64,0,'23','23',3,'image/jpeg',2165,'products/23.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(65,0,'3','3',3,'image/jpeg',2165,'products/3.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(66,0,'4-1','4-1',3,'image/jpeg',2165,'products/4-1.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(67,0,'4-2','4-2',3,'image/jpeg',2165,'products/4-2.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(68,0,'4-3','4-3',3,'image/jpeg',2165,'products/4-3.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(69,0,'4','4',3,'image/jpeg',2165,'products/4.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(70,0,'5-1','5-1',3,'image/jpeg',2165,'products/5-1.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(71,0,'5-2','5-2',3,'image/jpeg',2165,'products/5-2.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(72,0,'5-3','5-3',3,'image/jpeg',2165,'products/5-3.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(73,0,'5','5',3,'image/jpeg',2165,'products/5.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(74,0,'6','6',3,'image/jpeg',2165,'products/6.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(75,0,'7','7',3,'image/jpeg',2165,'products/7.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(76,0,'8-1','8-1',3,'image/jpeg',2165,'products/8-1.jpg','[]','2023-02-20 00:12:03','2023-02-20 00:12:03',NULL),(77,0,'8-2','8-2',3,'image/jpeg',2165,'products/8-2.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(78,0,'8-3','8-3',3,'image/jpeg',2165,'products/8-3.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(79,0,'8','8',3,'image/jpeg',2165,'products/8.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(80,0,'9-1','9-1',3,'image/jpeg',2165,'products/9-1.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(81,0,'9-2','9-2',3,'image/jpeg',2165,'products/9-2.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(82,0,'9','9',3,'image/jpeg',2165,'products/9.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(83,0,'1','1',4,'image/jpeg',2165,'customers/1.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(84,0,'10','10',4,'image/jpeg',2165,'customers/10.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(85,0,'2','2',4,'image/jpeg',2165,'customers/2.jpg','[]','2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(86,0,'3','3',4,'image/jpeg',2165,'customers/3.jpg','[]','2023-02-20 00:12:05','2023-02-20 00:12:05',NULL),(87,0,'4','4',4,'image/jpeg',2165,'customers/4.jpg','[]','2023-02-20 00:12:05','2023-02-20 00:12:05',NULL),(88,0,'5','5',4,'image/jpeg',2165,'customers/5.jpg','[]','2023-02-20 00:12:05','2023-02-20 00:12:05',NULL),(89,0,'6','6',4,'image/jpeg',2165,'customers/6.jpg','[]','2023-02-20 00:12:05','2023-02-20 00:12:05',NULL),(90,0,'7','7',4,'image/jpeg',2165,'customers/7.jpg','[]','2023-02-20 00:12:05','2023-02-20 00:12:05',NULL),(91,0,'8','8',4,'image/jpeg',2165,'customers/8.jpg','[]','2023-02-20 00:12:05','2023-02-20 00:12:05',NULL),(92,0,'9','9',4,'image/jpeg',2165,'customers/9.jpg','[]','2023-02-20 00:12:05','2023-02-20 00:12:05',NULL),(93,0,'1','1',5,'image/jpeg',2165,'news/1.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(94,0,'10','10',5,'image/jpeg',2165,'news/10.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(95,0,'11','11',5,'image/jpeg',2165,'news/11.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(96,0,'2','2',5,'image/jpeg',2165,'news/2.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(97,0,'3','3',5,'image/jpeg',2165,'news/3.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(98,0,'4','4',5,'image/jpeg',2165,'news/4.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(99,0,'5','5',5,'image/jpeg',2165,'news/5.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(100,0,'6','6',5,'image/jpeg',2165,'news/6.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(101,0,'7','7',5,'image/jpeg',2165,'news/7.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(102,0,'8','8',5,'image/jpeg',2165,'news/8.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(103,0,'9','9',5,'image/jpeg',2165,'news/9.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(104,0,'1-lg','1-lg',6,'image/jpeg',3852,'sliders/1-lg.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(105,0,'1-md','1-md',6,'image/jpeg',3852,'sliders/1-md.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(106,0,'1-sm','1-sm',6,'image/jpeg',3852,'sliders/1-sm.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(107,0,'2-lg','2-lg',6,'image/jpeg',3852,'sliders/2-lg.jpg','[]','2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(108,0,'2-md','2-md',6,'image/jpeg',3852,'sliders/2-md.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(109,0,'2-sm','2-sm',6,'image/jpeg',3852,'sliders/2-sm.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(110,0,'3-lg','3-lg',6,'image/jpeg',3852,'sliders/3-lg.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(111,0,'3-md','3-md',6,'image/jpeg',3852,'sliders/3-md.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(112,0,'3-sm','3-sm',6,'image/jpeg',3852,'sliders/3-sm.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(113,0,'1','1',7,'image/jpeg',1463,'promotion/1.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(114,0,'2','2',7,'image/jpeg',1463,'promotion/2.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(115,0,'3','3',7,'image/jpeg',2049,'promotion/3.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(116,0,'4','4',7,'image/jpeg',2049,'promotion/4.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(117,0,'5','5',7,'image/jpeg',2049,'promotion/5.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(118,0,'6','6',7,'image/jpeg',2049,'promotion/6.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(119,0,'7','7',7,'image/jpeg',2049,'promotion/7.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(120,0,'8','8',7,'image/jpeg',2049,'promotion/8.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(121,0,'9','9',7,'image/jpeg',2049,'promotion/9.jpg','[]','2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(122,0,'app','app',8,'image/png',1849,'general/app.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(123,0,'coming-soon','coming-soon',8,'image/jpeg',19900,'general/coming-soon.jpg','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(124,0,'favicon','favicon',8,'image/png',1925,'general/favicon.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(125,0,'logo-dark','logo-dark',8,'image/png',784,'general/logo-dark.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(126,0,'logo-light','logo-light',8,'image/png',783,'general/logo-light.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(127,0,'logo','logo',8,'image/png',793,'general/logo.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(128,0,'newsletter','newsletter',8,'image/jpeg',3316,'general/newsletter.jpg','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',813,'general/payment-method-1.jpg','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',878,'general/payment-method-2.jpg','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',816,'general/payment-method-3.jpg','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',638,'general/payment-method-4.jpg','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',659,'general/payment-method-5.jpg','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(134,0,'1','1',9,'image/png',3482,'stores/1.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(135,0,'10','10',9,'image/png',1675,'stores/10.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(136,0,'11','11',9,'image/png',1857,'stores/11.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(137,0,'12','12',9,'image/png',2046,'stores/12.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(138,0,'13','13',9,'image/png',1597,'stores/13.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(139,0,'14','14',9,'image/png',1649,'stores/14.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(140,0,'15','15',9,'image/png',2120,'stores/15.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(141,0,'16','16',9,'image/png',2556,'stores/16.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(142,0,'17','17',9,'image/png',2631,'stores/17.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(143,0,'2','2',9,'image/png',3369,'stores/2.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(144,0,'3','3',9,'image/png',3044,'stores/3.png','[]','2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(145,0,'4','4',9,'image/png',3096,'stores/4.png','[]','2023-02-20 00:12:09','2023-02-20 00:12:09',NULL),(146,0,'5','5',9,'image/png',3607,'stores/5.png','[]','2023-02-20 00:12:09','2023-02-20 00:12:09',NULL),(147,0,'6','6',9,'image/png',3778,'stores/6.png','[]','2023-02-20 00:12:09','2023-02-20 00:12:09',NULL),(148,0,'7','7',9,'image/png',1566,'stores/7.png','[]','2023-02-20 00:12:09','2023-02-20 00:12:09',NULL),(149,0,'8','8',9,'image/png',1773,'stores/8.png','[]','2023-02-20 00:12:09','2023-02-20 00:12:09',NULL),(150,0,'9','9',9,'image/png',1671,'stores/9.png','[]','2023-02-20 00:12:09','2023-02-20 00:12:09',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(2,0,'product-categories','product-categories',0,'2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(3,0,'products','products',0,'2023-02-20 00:12:00','2023-02-20 00:12:00',NULL),(4,0,'customers','customers',0,'2023-02-20 00:12:04','2023-02-20 00:12:04',NULL),(5,0,'news','news',0,'2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(6,0,'sliders','sliders',0,'2023-02-20 00:12:06','2023-02-20 00:12:06',NULL),(7,0,'promotion','promotion',0,'2023-02-20 00:12:07','2023-02-20 00:12:07',NULL),(8,0,'general','general',0,'2023-02-20 00:12:08','2023-02-20 00:12:08',NULL),(9,0,'stores','stores',0,'2023-02-20 00:12:08','2023-02-20 00:12:08',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,5,'main-menu','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,'Quick links','quick-links','published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(3,'Company','company','published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(4,'Business','business','published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(5,'Menu chính','menu-chinh','published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(7,'Công ty','cong-ty','published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(8,'Doanh nghiệp','doanh-nghiep','published','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-20 00:12:00','2023-02-20 00:12:00'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-02-20 00:12:04','2023-02-20 00:12:04'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2020_11_18_150916_ads_create_ads_table',2),(28,'2021_12_02_035301_add_ads_translations_table',2),(29,'2015_06_29_025744_create_audit_history',3),(30,'2015_06_18_033822_create_blog_table',4),(31,'2021_02_16_092633_remove_default_value_for_author_type',4),(32,'2021_12_03_030600_create_blog_translations',4),(33,'2022_04_19_113923_add_index_to_table_posts',4),(34,'2016_06_17_091537_create_contacts_table',5),(35,'2020_03_05_041139_create_ecommerce_tables',6),(36,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(37,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(38,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(39,'2021_02_18_073505_update_table_ec_reviews',6),(40,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(41,'2021_03_10_025153_change_column_tax_amount',6),(42,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(43,'2021_04_28_074008_ecommerce_create_product_label_table',6),(44,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(45,'2021_06_28_153141_correct_slugs_data',6),(46,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(47,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(48,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(49,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(51,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(52,'2021_11_23_071403_correct_languages_for_product_variations',6),(53,'2021_11_28_031808_add_product_tags_translations',6),(54,'2021_12_01_031123_add_featured_image_to_ec_products',6),(55,'2022_01_01_033107_update_table_ec_shipments',6),(56,'2022_02_16_042457_improve_product_attribute_sets',6),(57,'2022_03_22_075758_correct_product_name',6),(58,'2022_04_19_113334_add_index_to_ec_products',6),(59,'2022_04_28_144405_remove_unused_table',6),(60,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(61,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(62,'2022_06_16_095633_add_index_to_some_tables',6),(63,'2022_06_30_035148_create_order_referrals_table',6),(64,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(65,'2022_08_14_032836_create_ec_order_returns_table',6),(66,'2022_08_14_033554_create_ec_order_return_items_table',6),(67,'2022_08_15_040324_add_billing_address',6),(68,'2022_08_30_091114_support_digital_products_table',6),(69,'2022_09_13_095744_create_options_table',6),(70,'2022_09_13_104347_create_option_value_table',6),(71,'2022_10_05_163518_alter_table_ec_order_product',6),(72,'2022_10_12_041517_create_invoices_table',6),(73,'2022_10_12_142226_update_orders_table',6),(74,'2022_10_13_024916_update_table_order_returns',6),(75,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(76,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(77,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(78,'2022_11_19_041643_add_ec_tax_product_table',6),(79,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(80,'2022_12_17_041532_fix_address_in_order_invoice',6),(81,'2022_12_26_070329_create_ec_product_views_table',6),(82,'2023_01_04_033051_fix_product_categories',6),(83,'2023_01_09_050400_add_ec_global_options_translations_table',6),(84,'2023_01_10_093754_add_missing_option_value_id',6),(85,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(86,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(87,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(88,'2018_07_09_221238_create_faq_table',7),(89,'2021_12_03_082134_create_faq_translations',7),(90,'2016_10_03_032336_create_languages_table',8),(91,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(92,'2021_12_03_075608_create_page_translations',9),(93,'2019_11_18_061011_create_country_table',10),(94,'2021_12_03_084118_create_location_translations',10),(95,'2021_12_03_094518_migrate_old_location_data',10),(96,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(97,'2022_01_16_085908_improve_plugin_location',10),(98,'2022_08_04_052122_delete_location_backup_tables',10),(99,'2022_10_29_065232_increase_states_abbreviation_column',10),(100,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(101,'2021_07_06_030002_create_marketplace_table',11),(102,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(103,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(104,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(105,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(106,'2021_12_06_031304_update_table_mp_customer_revenues',11),(107,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(108,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(109,'2022_11_02_071413_add_more_info_for_store',11),(110,'2022_11_02_080444_add_tax_info',11),(111,'2023_02_01_062030_add_store_translations',11),(112,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(113,'2023_02_17_023648_fix_store_prefix',11),(114,'2017_10_24_154832_create_newsletter_table',12),(115,'2017_05_18_080441_create_payment_tables',13),(116,'2021_03_27_144913_add_customer_type_into_table_payments',13),(117,'2021_05_24_034720_make_column_currency_nullable',13),(118,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(119,'2021_10_19_020859_update_metadata_field',13),(120,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(121,'2022_07_07_153354_update_charge_id_in_table_payments',13),(122,'2017_07_11_140018_create_simple_slider_table',14),(123,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` int unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,6,3,3450.00,0.00,3450.00,0.00,'USD',NULL,'2023-02-18 16:12:11','2023-02-18 16:12:11',0,NULL),(2,8,4,2535.00,0.00,2535.00,0.00,'USD',NULL,'2023-02-16 16:12:11','2023-02-16 16:12:11',0,NULL),(3,2,5,160.50,0.00,160.50,0.00,'USD',NULL,'2023-02-15 00:12:12','2023-02-15 00:12:12',0,NULL),(4,7,6,1107.00,0.00,1107.00,0.00,'USD',NULL,'2023-02-15 22:12:12','2023-02-15 22:12:12',0,NULL),(5,10,7,594.00,0.00,594.00,0.00,'USD',NULL,'2023-02-15 08:12:12','2023-02-15 08:12:12',0,NULL),(6,10,8,1646.00,0.00,1646.00,594.00,'USD',NULL,'2023-02-16 06:12:12','2023-02-16 06:12:12',0,NULL),(7,3,9,2208.00,0.00,2208.00,0.00,'USD',NULL,'2023-02-12 12:12:12','2023-02-12 12:12:12',0,NULL),(8,7,10,81.00,0.00,81.00,1107.00,'USD',NULL,'2023-02-17 06:12:12','2023-02-17 06:12:12',0,NULL),(9,8,15,2535.00,0.00,2535.00,2535.00,'USD',NULL,'2023-02-08 00:12:13','2023-02-08 00:12:13',0,NULL),(10,7,16,1232.50,0.00,1232.50,1188.00,'USD',NULL,'2023-02-12 22:12:13','2023-02-12 22:12:13',0,NULL),(11,10,17,2978.00,0.00,2978.00,2240.00,'USD',NULL,'2023-02-08 00:12:13','2023-02-08 00:12:13',0,NULL),(12,7,18,81.00,0.00,81.00,2420.50,'USD',NULL,'2023-02-15 06:12:13','2023-02-15 06:12:13',0,NULL),(13,8,20,2535.00,0.00,2535.00,5070.00,'USD',NULL,'2023-02-11 06:12:13','2023-02-11 06:12:13',0,NULL),(14,6,25,800.00,0.00,800.00,3450.00,'USD',NULL,'2023-02-02 16:12:13','2023-02-02 16:12:13',0,NULL),(15,8,28,1690.00,0.00,1690.00,7605.00,'USD',NULL,'2023-02-10 08:12:13','2023-02-10 08:12:13',0,NULL),(16,3,29,3400.00,0.00,3400.00,2208.00,'USD',NULL,'2023-02-15 00:12:13','2023-02-15 00:12:13',0,NULL),(17,7,31,634.50,0.00,634.50,2501.50,'USD',NULL,'2023-02-14 16:12:14','2023-02-14 16:12:14',0,NULL),(18,10,33,1527.00,0.00,1527.00,5218.00,'USD',NULL,'2023-02-11 12:12:14','2023-02-11 12:12:14',0,NULL),(19,6,35,1150.00,0.00,1150.00,4250.00,'USD',NULL,'2023-02-11 00:12:14','2023-02-11 00:12:14',0,NULL),(20,6,38,1542.00,0.00,1542.00,5400.00,'USD',NULL,'2023-02-03 18:12:14','2023-02-03 18:12:14',0,NULL),(21,10,40,4233.00,0.00,4233.00,6745.00,'USD',NULL,'2023-02-02 22:12:14','2023-02-02 22:12:14',0,NULL),(22,6,41,800.00,0.00,800.00,6942.00,'USD',NULL,'2023-01-30 00:12:14','2023-01-30 00:12:14',0,NULL),(23,3,42,524.00,0.00,524.00,5608.00,'USD',NULL,'2023-02-05 16:12:14','2023-02-05 16:12:14',0,NULL),(24,6,45,2300.00,0.00,2300.00,7742.00,'USD',NULL,'2023-02-08 12:12:15','2023-02-08 12:12:15',0,NULL),(25,3,49,1332.00,0.00,1332.00,6132.00,'USD',NULL,'2023-01-26 00:12:15','2023-01-26 00:12:15',0,NULL),(26,8,50,845.00,0.00,845.00,9295.00,'USD',NULL,'2023-02-11 12:12:15','2023-02-11 12:12:15',0,NULL),(27,10,52,1791.00,0.00,1791.00,10978.00,'USD',NULL,'2023-02-11 04:12:15','2023-02-11 04:12:15',0,NULL),(28,6,53,1200.00,0.00,1200.00,10042.00,'USD',NULL,'2023-01-15 00:12:15','2023-01-15 00:12:15',0,NULL),(29,3,55,1048.00,0.00,1048.00,7464.00,'USD',NULL,'2023-02-15 08:12:15','2023-02-15 08:12:15',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,41.00,160.50,'USD','','{\"name\":\"Lenora Anderson\",\"number\":\"+18628743056\",\"full_name\":\"Anais Mueller\",\"description\":\"Abigail Lindgren\"}',NULL,0,'pending',NULL,'2023-02-20 00:12:15','2023-02-20 00:12:15',NULL),(2,2,0.00,19.00,119.50,'USD','','{\"name\":\"Lenora Anderson\",\"number\":\"+18628743056\",\"full_name\":\"Anais Mueller\",\"description\":\"Abigail Lindgren\"}',NULL,0,'processing',NULL,'2023-02-20 00:12:15','2023-02-20 00:12:15',NULL),(3,3,0.00,2121.00,8512.00,'USD','','{\"name\":\"Prof. Rhoda Jenkins Jr.\",\"number\":\"+14457145408\",\"full_name\":\"Aida O\'Reilly\",\"description\":\"August Crona\"}',NULL,0,'completed',NULL,'2023-02-20 00:12:16','2023-02-20 00:12:16',NULL),(4,3,0.00,852.00,6391.00,'USD','','{\"name\":\"Prof. Rhoda Jenkins Jr.\",\"number\":\"+14457145408\",\"full_name\":\"Aida O\'Reilly\",\"description\":\"August Crona\"}',NULL,0,'processing',NULL,'2023-02-20 00:12:16','2023-02-20 00:12:16',NULL),(5,6,0.00,3693.00,11242.00,'USD','','{\"name\":\"Dr. Raegan Lockman\",\"number\":\"+18432446226\",\"full_name\":\"Davin Schaefer\",\"description\":\"Ellen Cormier\"}',NULL,0,'completed',NULL,'2023-02-20 00:12:16','2023-02-20 00:12:16',NULL),(6,6,0.00,404.00,7549.00,'USD','','{\"name\":\"Dr. Raegan Lockman\",\"number\":\"+18432446226\",\"full_name\":\"Davin Schaefer\",\"description\":\"Ellen Cormier\"}',NULL,0,'processing',NULL,'2023-02-20 00:12:16','2023-02-20 00:12:16',NULL),(7,6,0.00,2296.00,7145.00,'USD','','{\"name\":\"Dr. Raegan Lockman\",\"number\":\"+18432446226\",\"full_name\":\"Davin Schaefer\",\"description\":\"Ellen Cormier\"}',NULL,0,'completed',NULL,'2023-02-20 00:12:16','2023-02-20 00:12:16',NULL),(8,6,0.00,345.00,4849.00,'USD','','{\"name\":\"Dr. Raegan Lockman\",\"number\":\"+18432446226\",\"full_name\":\"Davin Schaefer\",\"description\":\"Ellen Cormier\"}',NULL,0,'processing',NULL,'2023-02-20 00:12:16','2023-02-20 00:12:16',NULL),(9,7,0.00,833.00,3136.00,'USD','','{\"name\":\"Ruby Hansen\",\"number\":\"+13468194732\",\"full_name\":\"Dr. Kendrick Tremblay\",\"description\":\"Leda Glover V\"}',NULL,0,'pending',NULL,'2023-02-20 00:12:16','2023-02-20 00:12:16',NULL),(10,7,0.00,221.00,2303.00,'USD','','{\"name\":\"Ruby Hansen\",\"number\":\"+13468194732\",\"full_name\":\"Dr. Kendrick Tremblay\",\"description\":\"Leda Glover V\"}',NULL,0,'pending',NULL,'2023-02-20 00:12:17','2023-02-20 00:12:17',NULL),(11,7,0.00,401.00,2082.00,'USD','','{\"name\":\"Ruby Hansen\",\"number\":\"+13468194732\",\"full_name\":\"Dr. Kendrick Tremblay\",\"description\":\"Leda Glover V\"}',NULL,0,'processing',NULL,'2023-02-20 00:12:17','2023-02-20 00:12:17',NULL),(12,8,0.00,2110.00,10140.00,'USD','','{\"name\":\"Claudine Goyette DVM\",\"number\":\"+15407403671\",\"full_name\":\"Dr. Ebony Kilback\",\"description\":\"Gladyce Hackett\"}',NULL,0,'completed',NULL,'2023-02-20 00:12:17','2023-02-20 00:12:17',NULL),(13,8,0.00,19.00,8030.00,'USD','','{\"name\":\"Claudine Goyette DVM\",\"number\":\"+15407403671\",\"full_name\":\"Dr. Ebony Kilback\",\"description\":\"Gladyce Hackett\"}',NULL,0,'pending',NULL,'2023-02-20 00:12:17','2023-02-20 00:12:17',NULL),(14,8,0.00,385.00,8011.00,'USD','','{\"name\":\"Claudine Goyette DVM\",\"number\":\"+15407403671\",\"full_name\":\"Dr. Ebony Kilback\",\"description\":\"Gladyce Hackett\"}',NULL,0,'pending',NULL,'2023-02-20 00:12:17','2023-02-20 00:12:17',NULL),(15,8,0.00,1145.00,7626.00,'USD','','{\"name\":\"Claudine Goyette DVM\",\"number\":\"+15407403671\",\"full_name\":\"Dr. Ebony Kilback\",\"description\":\"Gladyce Hackett\"}',NULL,0,'pending',NULL,'2023-02-20 00:12:17','2023-02-20 00:12:17',NULL),(16,10,0.00,247.00,12769.00,'USD','','{\"name\":\"Seth Gislason MD\",\"number\":\"+18128949234\",\"full_name\":\"Duncan Labadie\",\"description\":\"Karli Cronin\"}',NULL,0,'pending',NULL,'2023-02-20 00:12:17','2023-02-20 00:12:17',NULL),(17,10,0.00,1215.00,12522.00,'USD','','{\"name\":\"Seth Gislason MD\",\"number\":\"+18128949234\",\"full_name\":\"Duncan Labadie\",\"description\":\"Karli Cronin\"}',NULL,0,'completed',NULL,'2023-02-20 00:12:17','2023-02-20 00:12:17',NULL),(18,10,0.00,1866.00,11307.00,'USD','','{\"name\":\"Seth Gislason MD\",\"number\":\"+18128949234\",\"full_name\":\"Duncan Labadie\",\"description\":\"Karli Cronin\"}',NULL,0,'completed',NULL,'2023-02-20 00:12:18','2023-02-20 00:12:18',NULL),(19,10,0.00,2527.00,9441.00,'USD','','{\"name\":\"Seth Gislason MD\",\"number\":\"+18128949234\",\"full_name\":\"Duncan Labadie\",\"description\":\"Karli Cronin\"}',NULL,0,'completed',NULL,'2023-02-20 00:12:18','2023-02-20 00:12:18',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','dhudson@example.org','+13258920556','12594 Greenfelder Prairie Suite 061','BM','Pennsylvania','South Myrl',2,'stores/1.png','Dolor illo repellendus aut.','Voluptates velit quis et reiciendis doloremque repudiandae et. Officiis ut qui est non et. Qui ipsa dolores alias.','published',NULL,'2023-02-20 00:12:09','2023-02-20 00:12:09',NULL,NULL),(2,'Global Office','zschoen@example.net','+12154130513','661 Sylvia Mountain Apt. 141','JE','New Hampshire','North Marjory',3,'stores/2.png','Aspernatur dolor ad tempora ut nesciunt.','Eos veniam voluptatem consectetur qui. Voluptas aspernatur dolor debitis non tempora. Aperiam autem et facere dolor ipsa exercitationem et.','published',NULL,'2023-02-20 00:12:09','2023-02-20 00:12:09',NULL,NULL),(3,'Young Shop','qhodkiewicz@example.net','+16462344942','964 Murphy Squares','ZM','Michigan','Collinsborough',6,'stores/3.png','Molestias autem commodi ipsa ut sunt.','Aliquam recusandae repellendus eos praesentium. Dolor sed modi architecto dignissimos dolor nam enim. Voluptas fugit autem id ut.','published',NULL,'2023-02-20 00:12:09','2023-02-20 00:12:09',NULL,NULL),(4,'Global Store','marlon56@example.com','+14323137596','881 Frami Mountains','FM','Connecticut','Elodyhaven',7,'stores/4.png','Dicta illum quia placeat dolor cupiditate qui.','Praesentium eveniet voluptatum quos nostrum ea. Quae totam doloribus recusandae ut. Numquam amet deleniti qui omnis similique suscipit vero quas.','published',NULL,'2023-02-20 00:12:09','2023-02-20 00:12:09',NULL,NULL),(5,'Robert’s Store','laney12@example.com','+18134300088','75079 Elvis Walks Apt. 184','ZA','Vermont','Kutchhaven',8,'stores/5.png','Saepe suscipit odit tempora quo.','Et explicabo quas necessitatibus vitae vero ipsum eos. Corrupti qui aperiam voluptas quia quis. Corporis quo atque et natus illum sed consequuntur.','published',NULL,'2023-02-20 00:12:09','2023-02-20 00:12:09',NULL,NULL),(6,'Stouffer','justice42@example.org','+18459307582','1158 Friesen Brooks','VN','Ohio','Port Marielleview',10,'stores/6.png','Sit et incidunt dolor eius ut nobis.','Molestiae eius sapiente voluptate voluptatem autem perferendis incidunt. Omnis ea sint nulla enim. Aspernatur dicta nam odit dolorum quibusdam omnis.','published',NULL,'2023-02-20 00:12:09','2023-02-20 00:12:09',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,100.50,0.00,160.50,'$2y$10$9NFUXC/ACpP3hVeDCUyWXe8MYB.6.jY5vniRdi/nK2xW/qrCBdkly','{\"name\":\"Lenora Anderson\",\"number\":\"+18628743056\",\"full_name\":\"Anais Mueller\",\"description\":\"Abigail Lindgren\"}','2023-02-20 00:12:09','2023-02-20 00:12:16','bank_transfer',NULL),(2,3,5539.00,0.00,8512.00,'$2y$10$.OMvPtaBemGCG7z64SO4ouSzeckepQEOBGcNfKuSgo01wzuCku4Vm','{\"name\":\"Prof. Rhoda Jenkins Jr.\",\"number\":\"+14457145408\",\"full_name\":\"Aida O\'Reilly\",\"description\":\"August Crona\"}','2023-02-20 00:12:09','2023-02-20 00:12:16','bank_transfer',NULL),(3,6,4504.00,0.00,11242.00,'$2y$10$KVEq5/10q0pgn.OGiJsoEeOgIPAaGJs9k7Ged0imyN80nh.ou44ae','{\"name\":\"Dr. Raegan Lockman\",\"number\":\"+18432446226\",\"full_name\":\"Davin Schaefer\",\"description\":\"Ellen Cormier\"}','2023-02-20 00:12:09','2023-02-20 00:12:16','bank_transfer',NULL),(4,7,1681.00,0.00,3136.00,'$2y$10$BizMVkZ9/fmfj8y5P3.HzuEG53tOKaXr/RfRTlV.8P99.2zIgs8om','{\"name\":\"Ruby Hansen\",\"number\":\"+13468194732\",\"full_name\":\"Dr. Kendrick Tremblay\",\"description\":\"Leda Glover V\"}','2023-02-20 00:12:09','2023-02-20 00:12:17','bank_transfer',NULL),(5,8,6481.00,0.00,10140.00,'$2y$10$KegryL1a5CkX5tm.haZoce/kb51lQAtmXXSxNdwcJkRN8oYm23UVC','{\"name\":\"Claudine Goyette DVM\",\"number\":\"+15407403671\",\"full_name\":\"Dr. Ebony Kilback\",\"description\":\"Gladyce Hackett\"}','2023-02-20 00:12:09','2023-02-20 00:12:17','bank_transfer',NULL),(6,10,6914.00,0.00,12769.00,'$2y$10$8daEzoR6445fiVBRQb1YfOKTEUH/TaqHAaSB42wZ9vU/6YWJnrO3u','{\"name\":\"Seth Gislason MD\",\"number\":\"+18128949234\",\"full_name\":\"Duncan Labadie\",\"description\":\"Karli Cronin\"}','2023-02-20 00:12:09','2023-02-20 00:12:18','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,'About us','<p>Besides, SHE\'S she, and I\'m sure I can\'t get out again. Suddenly she came suddenly upon an open place, with a little irritated at the jury-box, and saw that, in her pocket) till she was playing against herself, for she was losing her temper. \'Are you content now?\' said the King. On this the White Rabbit, who said in a louder tone. \'ARE you to get out again. Suddenly she came in sight of the hall; but, alas! the little crocodile Improve his shining tail, And pour the waters of the Lobster.</p><p>May it won\'t be raving mad--at least not so mad as it went. So she began looking at the bottom of a good many little girls of her skirt, upsetting all the same, the next moment a shower of saucepans, plates, and dishes. The Duchess took no notice of her skirt, upsetting all the rest, Between yourself and me.\' \'That\'s the judge,\' she said aloud. \'I shall be a very deep well. Either the well was very nearly getting up and walking off to the jury, who instantly made a rush at the March Hare and.</p><p>PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was a most extraordinary noise going on within--a constant howling and sneezing, and every now and then, if I know THAT well enough; don\'t be particular--Here, Bill! catch hold of anything, but she gained courage as she went to school every day--\' \'I\'VE been to a lobster--\' (Alice began to get us dry would be like, but it makes rather a handsome pig, I think.\' And she began thinking over all she could not tell whether they.</p><p>March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther received knife and fork with a trumpet in one hand and a large mustard-mine near here. And the Eaglet bent down its head to hide a smile: some of them even when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a farmer, you know, and.</p>',1,NULL,'default',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(3,'Terms Of Use','<p>Alice, as she could not help thinking there MUST be more to come, so she set to work at once crowded round her, about four feet high. \'I wish the creatures argue. It\'s enough to get out again. The rabbit-hole went straight on like a stalk out of that is, but I can\'t get out again. That\'s all.\' \'Thank you,\' said Alice, in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' he said. \'Fifteenth,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak.</p><p>So they went up to Alice, and tried to speak, and no room at all a proper way of speaking to a lobster--\' (Alice began to tremble. Alice looked round, eager to see what was going off into a large pigeon had flown into her eyes; and once she remembered having seen such a dreadful time.\' So Alice began to tremble. Alice looked very uncomfortable. The moment Alice appeared, she was now only ten inches high, and her face in her own ears for having missed their turns, and she ran off at once, and.</p><p>I\'m sure she\'s the best way you go,\' said the Footman, \'and that for two reasons. First, because I\'m on the door began sneezing all at once. The Dormouse had closed its eyes were nearly out of it, and fortunately was just going to begin at HIS time of life. The King\'s argument was, that anything that looked like the look of the guinea-pigs cheered, and was suppressed. \'Come, that finished the goose, with the Lory, as soon as there seemed to be done, I wonder?\' As she said to herself, \'Which.</p><p>First, she tried to say than his first speech. \'You should learn not to her, \'if we had the door began sneezing all at once. \'Give your evidence,\' said the Hatter: \'as the things between whiles.\' \'Then you shouldn\'t talk,\' said the Mock Turtle. \'Certainly not!\' said Alice timidly. \'Would you tell me,\' said Alice, a little girl,\' said Alice, quite forgetting in the middle, nursing a baby; the cook took the thimble, saying \'We beg your pardon!\' said the Hatter: \'as the things get used to call.</p>',1,NULL,'default',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(4,'Terms &amp; Conditions','<p>Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to ask help of any one; so, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I like\"!\' \'You might just as well as she went hunting about, and shouting \'Off with his head!\' or \'Off with her head in the sea!\' cried the Mouse, frowning, but very politely: \'Did you say pig, or fig?\' said the Gryphon said to herself, as well as she listened, or seemed to.</p><p>Alice would not allow without knowing how old it was, even before she made it out again, and put it more clearly,\' Alice replied in an undertone, \'important--unimportant--unimportant--important--\' as if nothing had happened. \'How am I to get out again. Suddenly she came up to the executioner: \'fetch her here.\' And the executioner ran wildly up and beg for its dinner, and all the right way of nursing it, (which was to find her way into a cucumber-frame, or something of the Lobster Quadrille?\'.</p><p>Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the time he was going a journey, I should think!\' (Dinah was the White Rabbit hurried by--the frightened Mouse splashed his way through the air! Do you think, at your age, it is right?\' \'In my youth,\' said the Dodo replied very readily: \'but that\'s because it stays the same as the door and went on again:-- \'I didn\'t know it was over at last: \'and I wish you wouldn\'t keep appearing and vanishing so suddenly.</p><p>I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the shingle--will you come to the general conclusion, that wherever you go to on the bank--the birds with draggled feathers, the animals with their fur clinging close to her that she let the jury--\' \'If any one left alive!\' She was walking by the end of his teacup instead of onions.\' Seven flung down his face, as long as it happens; and if the Queen in a tone of great dismay, and began to get through the air! Do.</p>',1,NULL,'default',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(5,'Refund Policy','<p>Alice remarked. \'Right, as usual,\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the door. \'Call the first to speak. \'What size do you want to see if she had sat down again in a trembling voice:-- \'I passed by his face only, she would feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be very likely to eat her up in such confusion that she was surprised to find her way out. \'I shall be late!\' (when she thought to herself.</p><p>I\'ve got to the door, she found this a very decided tone: \'tell her something worth hearing. For some minutes the whole party look so grave and anxious.) Alice could not think of any one; so, when the White Rabbit cried out, \'Silence in the court!\' and the second verse of the deepest contempt. \'I\'ve seen hatters before,\' she said to herself \'This is Bill,\' she gave one sharp kick, and waited till she too began dreaming after a fashion, and this was her turn or not. \'Oh, PLEASE mind what you\'re.</p><p>French lesson-book. The Mouse gave a little bit, and said nothing. \'Perhaps it doesn\'t understand English,\' thought Alice; \'I must be getting home; the night-air doesn\'t suit my throat!\' and a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of its right ear and left foot, so as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'Not at first.</p><p>King triumphantly, pointing to the shore, and then nodded. \'It\'s no business of MINE.\' The Queen had never left off writing on his spectacles. \'Where shall I begin, please your Majesty,\' said the King repeated angrily, \'or I\'ll have you got in as well,\' the Hatter hurriedly left the court, without even waiting to put down her anger as well wait, as she could, for the hot day made her look up in her life; it was very hot, she kept fanning herself all the while, till at last she stretched her.</p>',1,NULL,'default',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(10,'Affiliate','<p>Let me think: was I the same solemn tone, \'For the Duchess. An invitation from the trees as well she might, what a dear quiet thing,\' Alice went timidly up to the shore, and then all the jurors were writing down \'stupid things!\' on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in them, after all. I needn\'t be afraid of it. Presently the Rabbit angrily. \'Here! Come and help me out of the other players, and shouting \'Off with her head!\' the Queen put on her lap as if he thought.</p><p>So they went up to the Mock Turtle. Alice was very deep, or she fell past it. \'Well!\' thought Alice to herself, and once again the tiny hands were clasped upon her knee, and looking anxiously about her. \'Oh, do let me hear the words:-- \'I speak severely to my boy, I beat him when he sneezes; For he can thoroughly enjoy The pepper when he finds out who was trembling down to the other, and making quite a chorus of \'There goes Bill!\' then the Mock Turtle would be quite absurd for her to speak.</p><p>Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice to herself, \'Why, they\'re only a pack of cards!\' At this the White Rabbit cried out, \'Silence in the flurry of the house, and the moon, and memory, and muchness--you know you say things are \"much of a well?\' \'Take some more bread-and-butter--\' \'But what am I to do that,\' said the King, \'and don\'t look at a reasonable pace,\' said the Gryphon as if it likes.\'.</p><p>Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King exclaimed, turning to Alice, and looking at the stick, and held it out again, so that it might be some sense in your pocket?\' he went on in the after-time, be herself a grown woman; and how she would get up and say \"Who am I to do?\' said Alice. \'Exactly so,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little Alice and.</p>',1,NULL,'default',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(11,'Career','<p>Duchess asked, with another dig of her head was so full of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said the Caterpillar. Alice thought she might as well as I tell you!\' But she went slowly after it: \'I never thought about it,\' said the Hatter, with an M?\' said Alice. \'Call it what you mean,\' the March Hare. \'Then it ought to have been changed for any of them. However, on the OUTSIDE.\' He unfolded the paper as he spoke, \'we were trying--\' \'I see!\'.</p><p>She did it so quickly that the pebbles were all ornamented with hearts. Next came the royal children, and make out what it was: she was quite surprised to see it pop down a good deal frightened at the Lizard as she tucked her arm affectionately into Alice\'s, and they sat down again very sadly and quietly, and looked along the passage into the Dormouse\'s place, and Alice joined the procession, wondering very much what would happen next. \'It\'s--it\'s a very interesting dance to watch,\' said.</p><p>The Mouse did not dare to laugh; and, as she was getting so far off). \'Oh, my poor hands, how is it twelve? I--\' \'Oh, don\'t talk about trouble!\' said the Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' he said to herself \'It\'s the Cheshire Cat, she was nine feet high. \'Whoever lives there,\' thought Alice, \'shall I NEVER get any older than you, and listen to her, so she began again. \'I should have croqueted the Queen\'s voice in the newspapers, at the door-- Pray.</p><p>Alice looked up, and there was a general clapping of hands at this: it was a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the tarts on the English coast you find a pleasure in all directions, tumbling up against each other; however, they got settled down in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t get out again. That\'s all.\' \'Thank you,\' said the Queen. \'It proves nothing of the house, \"Let us both go to.</p>',1,NULL,'default',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'0EEIVAFOOO','bank_transfer',NULL,594.00,1,'pending','confirm',9,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'GIWSPSRUXH','bank_transfer',NULL,1539.00,2,'pending','confirm',9,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'MERDLJBOOO','razorpay',NULL,3450.00,3,'completed','confirm',9,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'OQTOVMKOZM','paypal',NULL,2535.00,4,'completed','confirm',9,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'X3KLFCVBK8','paypal',NULL,160.50,5,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'7Q7SFRFLAR','stripe',NULL,1107.00,6,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'X2GJ3WFKTT','razorpay',NULL,594.00,7,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'0I5D9SDXPW','razorpay',NULL,1646.00,8,'completed','confirm',9,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'GR2PD0BETE','razorpay',NULL,2208.00,9,'completed','confirm',9,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'T4RGVK6H5W','stripe',NULL,81.00,10,'completed','confirm',1,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'HZBOWJN3IK','bank_transfer',NULL,1176.00,11,'pending','confirm',1,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'AV1YM3CWH1','paypal',NULL,2208.00,12,'completed','confirm',1,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'L4GW83GEAI','stripe',NULL,1200.00,13,'completed','confirm',1,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'H1R2EPUCGW','stripe',NULL,1876.00,14,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'WJUATHONWI','sslcommerz',NULL,2535.00,15,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'FRA6PCT5M9','stripe',NULL,1232.50,16,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'UBTMZIFD6X','paystack',NULL,2978.00,17,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'PUHY4LHTUH','paystack',NULL,81.00,18,'completed','confirm',1,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'9XBVYRNBF3','stripe',NULL,400.00,19,'completed','confirm',1,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'EUQU6UEQRF','mollie',NULL,2535.00,20,'completed','confirm',1,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'8KXA3BZAFK','cod',NULL,802.00,21,'pending','confirm',9,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'3K59KKJXWU','paypal',NULL,400.00,22,'completed','confirm',9,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'R25XF1PLH1','cod',NULL,81.00,23,'pending','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'OQFUOSC6JY','mollie',NULL,4163.00,24,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'VX7UNSAQMA','mollie',NULL,800.00,25,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:10','2023-02-20 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'XQNCNDCBBF','paystack',NULL,160.50,26,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'CPEOYVIYUZ','sslcommerz',NULL,2436.00,27,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'XTUYTS5JK8','razorpay',NULL,1690.00,28,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'1UMDO6DLVF','sslcommerz',NULL,3400.00,29,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'CRGT4WHDKY','bank_transfer',NULL,1188.00,30,'pending','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'RKZWTMCKOB','razorpay',NULL,634.50,31,'completed','confirm',1,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'DMZZAHQAJ0','cod',NULL,4149.00,32,'pending','confirm',1,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'ZZGNGGTPSI','mollie',NULL,1527.00,33,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'IUYFWZKTRV','mollie',NULL,1146.00,34,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'W41DWS95ER','razorpay',NULL,1150.00,35,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'5UIDBQRFCE','cod',NULL,1690.00,36,'pending','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'MIDIY7XQKP','razorpay',NULL,81.00,37,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'C4FFVZKY7Y','stripe',NULL,1542.00,38,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'XKWBGFYIOI','bank_transfer',NULL,240.75,39,'pending','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'PI0AHF5J8C','stripe',NULL,4233.00,40,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'4FGBJAUPLA','paystack',NULL,800.00,41,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'F8JVA19TZA','stripe',NULL,524.00,42,'completed','confirm',9,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'YJH78DZ5DC','cod',NULL,1192.00,43,'pending','confirm',9,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'NTRX9L4RIV','paypal',NULL,513.00,44,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'T5OTTXYGCY','razorpay',NULL,2300.00,45,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'7WKXWLKIOB','stripe',NULL,2535.00,46,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'DKCKIZSDMC','cod',NULL,80.25,47,'pending','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'NGS1EJTRTH','bank_transfer',NULL,823.00,48,'pending','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'BAMAIHEPLB','mollie',NULL,1332.00,49,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(50,'USD',0,'7REV0VS7YF','sslcommerz',NULL,845.00,50,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(51,'USD',0,'SKVMZP6ULW','paypal',NULL,3836.00,51,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(52,'USD',0,'KQCS8IY4HP','sslcommerz',NULL,1791.00,52,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(53,'USD',0,'MAE6L4N30Q','razorpay',NULL,1200.00,53,'completed','confirm',4,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(54,'USD',0,'6XYDUVCYZM','paystack',NULL,1188.00,54,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(55,'USD',0,'ZTUVF8D92T','mollie',NULL,1048.00,55,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL),(56,'USD',0,'4PEHCJ20XP','paypal',NULL,800.00,56,'completed','confirm',5,NULL,NULL,'2023-02-20 00:12:11','2023-02-20 00:12:11','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,1),(2,3,1),(3,1,2),(4,4,2),(5,2,3),(6,4,3),(7,1,4),(8,3,4),(9,2,5),(10,4,5),(11,2,6),(12,3,6),(13,2,7),(14,3,7),(15,1,8),(16,4,8),(17,1,9),(18,4,9),(19,1,10),(20,4,10),(21,1,11),(22,4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1081,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1377,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',524,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',679,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',911,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1968,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1923,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1501,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1966,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',120,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1149,NULL,'2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-02-20 00:12:00'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'simple_slider_using_assets','0',NULL,NULL),(9,'media_random_hash','718550ff6d04eaf0b9f5dc713c061bea',NULL,NULL),(10,'permalink-botble-blog-models-post','blog',NULL,NULL),(11,'permalink-botble-blog-models-category','blog',NULL,NULL),(12,'payment_cod_status','1',NULL,NULL),(13,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(14,'payment_bank_transfer_status','1',NULL,NULL),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(16,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(17,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(18,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(19,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(20,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(21,'ecommerce_store_name','Martfury',NULL,NULL),(22,'ecommerce_store_phone','1800979769',NULL,NULL),(23,'ecommerce_store_address','502 New Street',NULL,NULL),(24,'ecommerce_store_state','Brighton VIC',NULL,NULL),(25,'ecommerce_store_city','Brighton VIC',NULL,NULL),(26,'ecommerce_store_country','AU',NULL,NULL),(27,'theme','martfury',NULL,NULL),(28,'admin_logo','general/logo-light.png',NULL,NULL),(29,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(30,'theme-martfury-seo_description','Martfury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, Martfury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(31,'theme-martfury-copyright','© 2023 Martfury. All Rights Reserved.',NULL,NULL),(32,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(33,'theme-martfury-logo','general/logo.png',NULL,NULL),(34,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(35,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(36,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(37,'theme-martfury-email','contact@martfury.co',NULL,NULL),(38,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(39,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(40,'theme-martfury-homepage_id','1',NULL,NULL),(41,'theme-martfury-blog_page_id','6',NULL,NULL),(42,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(43,'theme-martfury-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(44,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(45,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(46,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(47,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(48,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(49,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(50,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(51,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(52,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(53,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(54,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(55,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(56,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(57,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(58,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(59,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(60,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(61,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(62,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(63,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(64,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(65,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(66,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(67,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(68,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(69,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(70,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(71,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(72,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(73,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(74,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(75,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(76,'theme-martfury-social-name-1','Facebook','2023-02-20 00:12:08','2023-02-20 00:12:08'),(77,'theme-martfury-social-url-1','https://www.facebook.com/','2023-02-20 00:12:08','2023-02-20 00:12:08'),(78,'theme-martfury-social-icon-1','fa-facebook','2023-02-20 00:12:08','2023-02-20 00:12:08'),(79,'theme-martfury-social-color-1','#3b5999','2023-02-20 00:12:08','2023-02-20 00:12:08'),(80,'theme-martfury-social-name-2','Twitter','2023-02-20 00:12:08','2023-02-20 00:12:08'),(81,'theme-martfury-social-url-2','https://www.twitter.com/','2023-02-20 00:12:08','2023-02-20 00:12:08'),(82,'theme-martfury-social-icon-2','fa-twitter','2023-02-20 00:12:08','2023-02-20 00:12:08'),(83,'theme-martfury-social-color-2','#55ACF9','2023-02-20 00:12:08','2023-02-20 00:12:08'),(84,'theme-martfury-social-name-3','Instagram','2023-02-20 00:12:08','2023-02-20 00:12:08'),(85,'theme-martfury-social-url-3','https://www.instagram.com/','2023-02-20 00:12:08','2023-02-20 00:12:08'),(86,'theme-martfury-social-icon-3','fa-instagram','2023-02-20 00:12:08','2023-02-20 00:12:08'),(87,'theme-martfury-social-color-3','#E1306C','2023-02-20 00:12:08','2023-02-20 00:12:08'),(88,'theme-martfury-social-name-4','Youtube','2023-02-20 00:12:08','2023-02-20 00:12:08'),(89,'theme-martfury-social-url-4','https://www.youtube.com/','2023-02-20 00:12:08','2023-02-20 00:12:08'),(90,'theme-martfury-social-icon-4','fa-youtube','2023-02-20 00:12:08','2023-02-20 00:12:08'),(91,'theme-martfury-social-color-4','#FF0000','2023-02-20 00:12:08','2023-02-20 00:12:08'),(92,'theme-martfury-vi-copyright','© 2023 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(93,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(94,'theme-martfury-vi-homepage_id','1',NULL,NULL),(95,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(96,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(97,'theme-martfury-vi-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(98,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(99,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(100,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(101,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(102,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-02-20 00:12:07','2023-02-20 00:12:07'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2023-02-20 00:12:07','2023-02-20 00:12:07'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2023-02-20 00:12:07','2023-02-20 00:12:07');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-20 00:12:00','2023-02-20 00:12:00'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-20 00:12:00','2023-02-20 00:12:00'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-20 00:12:00','2023-02-20 00:12:00'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-20 00:12:00','2023-02-20 00:12:00'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-20 00:12:00','2023-02-20 00:12:00'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-20 00:12:00','2023-02-20 00:12:00'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-20 00:12:00','2023-02-20 00:12:00'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-20 00:12:00','2023-02-20 00:12:00'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2023-02-20 00:12:04','2023-02-20 00:12:04'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-20 00:12:06','2023-02-20 00:12:06'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-20 00:12:06','2023-02-20 00:12:06'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-20 00:12:06','2023-02-20 00:12:06'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-20 00:12:06','2023-02-20 00:12:06'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-20 00:12:06','2023-02-20 00:12:06'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-20 00:12:06','2023-02-20 00:12:06'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-02-20 00:12:06','2023-02-20 00:12:06'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-02-20 00:12:06','2023-02-20 00:12:06'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-02-20 00:12:06','2023-02-20 00:12:06'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-02-20 00:12:06','2023-02-20 00:12:06'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-02-20 00:12:06','2023-02-20 00:12:06'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(84,'sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-02-20 00:12:06','2023-02-20 00:12:07'),(94,'home',1,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(97,'terms-amp-conditions',4,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(104,'career',11,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2023-02-20 00:12:07','2023-02-20 00:12:07'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-02-20 00:12:09','2023-02-20 00:12:09'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-02-20 00:12:09','2023-02-20 00:12:09'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-02-20 00:12:09','2023-02-20 00:12:09'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2023-02-20 00:12:09','2023-02-20 00:12:09'),(110,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2023-02-20 00:12:09','2023-02-20 00:12:09'),(111,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2023-02-20 00:12:09','2023-02-20 00:12:09');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-02-20 00:12:06','2023-02-20 00:12:06'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-02-20 00:12:06','2023-02-20 00:12:06');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$RMlJkZhGlamqFSkAJtGcLeXkN7BcqHmL8FCAde6RBfQ.3gTMqi.o.',NULL,'2023-02-20 00:12:07','2023-02-20 00:12:07','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2023-02-20 00:12:08','2023-02-20 00:12:08'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2023-02-20 00:12:08','2023-02-20 00:12:08');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-20 14:12:41