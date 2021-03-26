-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'РќР°Р·РІР°РЅРёРµ СЂР°Р·РґРµР»Р°',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Р Р°Р·РґРµР»С‹ РёРЅС‚РµСЂРЅРµС‚-РјР°РіР°Р·РёРЅР°';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'РџСЂРѕС†РµСЃСЃРѕСЂС‹'),(2,'РњР°С‚РµСЂРёРЅСЃРєРёРµ РїР»Р°С‚С‹'),(3,'Р’РёРґРµРѕРєР°СЂС‚С‹'),(4,'Р–РµСЃС‚РєРёРµ РґРёСЃРєРё'),(5,'РћРїРµСЂР°С‚РёРІРЅР°СЏ РїР°РјСЏС‚СЊ');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL COMMENT 'РљРѕРґ РіРѕСЂРѕРґР°',
  `name` varchar(255) DEFAULT NULL COMMENT 'РќР°Р·РІР°РЅРёРµ РіРѕСЂРѕРґР°',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='РЎР»РѕРІР°СЂСЊ РіРѕСЂРѕРґРѕРІ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'moscow','РњРѕСЃРєРІР°'),(2,'irkutsk','Р�СЂРєСѓС‚СЃРє'),(3,'novgorod','РќРѕРІРіРѕСЂРѕРґ'),(4,'kazan','РљР°Р·Р°РЅСЊ'),(5,'omsk','РћРјСЃРє');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `discount` float unsigned DEFAULT NULL COMMENT 'Р’РµР»РёС‡РёРЅР° СЃРєРёРґРєРё РѕС‚ 0.0 РґРѕ 1.0',
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`),
  KEY `index_of_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='РЎРєРёРґРєРё';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label_from` varchar(255) DEFAULT NULL COMMENT 'Р“РѕСЂРѕРґ РѕС‚СЂР°РІР»РµРЅРёСЏ',
  `label_to` varchar(255) DEFAULT NULL COMMENT 'Р“РѕСЂРѕРґ РїСЂРёР±С‹С‚РёСЏ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Р РµР№СЃС‹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'moscow','omsk'),(2,'irkutsk','kazan'),(3,'novgorod','moscow'),(4,'kazan','novgorod'),(5,'omsk','irkutsk');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Р—Р°РєР°Р·С‹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2021-03-26 07:17:53','2021-03-26 07:17:53'),(2,1,'2021-03-26 07:18:18','2021-03-26 07:18:18'),(3,2,'2021-03-26 07:18:28','2021-03-26 07:18:28'),(4,5,'2021-03-26 07:18:32','2021-03-26 07:18:32');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `total` int unsigned DEFAULT '1' COMMENT 'РљРѕР»РёС‡РµСЃС‚РІРѕ Р·Р°РєР°Р·Р°РЅРЅС‹С… С‚РѕРІР°СЂРЅС‹С… РїРѕР·РёС†РёР№',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='РЎРѕСЃС‚Р°РІ Р·Р°РєР°Р·Р°';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` VALUES (1,1,2,2,'2021-03-26 07:18:08','2021-03-26 07:18:08'),(2,1,2,2,'2021-03-26 07:18:10','2021-03-26 07:18:10'),(3,2,6,2,'2021-03-26 07:18:26','2021-03-26 07:18:26'),(4,3,2,1,'2021-03-26 07:18:30','2021-03-26 07:18:30'),(5,3,6,1,'2021-03-26 07:18:30','2021-03-26 07:18:30'),(7,4,4,1,'2021-03-26 07:18:34','2021-03-26 07:18:34'),(8,4,5,1,'2021-03-26 07:18:34','2021-03-26 07:18:34');
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'РќР°Р·РІР°РЅРёРµ',
  `description` text COMMENT 'РћРїРёСЃР°РЅРёРµ',
  `price` decimal(11,2) DEFAULT NULL COMMENT 'Р¦РµРЅР°',
  `catalog_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_catalog_id` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='РўРѕРІР°СЂРЅС‹Рµ РїРѕР·РёС†РёРё';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Intel Core i3-8100','РџСЂРѕС†РµСЃСЃРѕСЂ РґР»СЏ РЅР°СЃС‚РѕР»СЊРЅС‹С… РїРµСЂСЃРѕРЅР°Р»СЊРЅС‹С… РєРѕРјРїСЊСЋС‚РµСЂРѕРІ, РѕСЃРЅРѕРІР°РЅРЅС‹С… РЅР° РїР»Р°С‚С„РѕСЂРјРµ Intel.',7890.00,1,'2021-03-20 01:21:17','2021-03-20 01:21:17'),(2,'Intel Core i5-7400','РџСЂРѕС†РµСЃСЃРѕСЂ РґР»СЏ РЅР°СЃС‚РѕР»СЊРЅС‹С… РїРµСЂСЃРѕРЅР°Р»СЊРЅС‹С… РєРѕРјРїСЊСЋС‚РµСЂРѕРІ, РѕСЃРЅРѕРІР°РЅРЅС‹С… РЅР° РїР»Р°С‚С„РѕСЂРјРµ Intel.',12700.00,1,'2021-03-20 01:21:17','2021-03-20 01:21:17'),(3,'AMD FX-8320E','РџСЂРѕС†РµСЃСЃРѕСЂ РґР»СЏ РЅР°СЃС‚РѕР»СЊРЅС‹С… РїРµСЂСЃРѕРЅР°Р»СЊРЅС‹С… РєРѕРјРїСЊСЋС‚РµСЂРѕРІ, РѕСЃРЅРѕРІР°РЅРЅС‹С… РЅР° РїР»Р°С‚С„РѕСЂРјРµ AMD.',4780.00,1,'2021-03-20 01:21:17','2021-03-20 01:21:17'),(4,'AMD FX-8320','РџСЂРѕС†РµСЃСЃРѕСЂ РґР»СЏ РЅР°СЃС‚РѕР»СЊРЅС‹С… РїРµСЂСЃРѕРЅР°Р»СЊРЅС‹С… РєРѕРјРїСЊСЋС‚РµСЂРѕРІ, РѕСЃРЅРѕРІР°РЅРЅС‹С… РЅР° РїР»Р°С‚С„РѕСЂРјРµ AMD.',7120.00,1,'2021-03-20 01:21:17','2021-03-20 01:21:17'),(5,'ASUS ROG MAXIMUS X HERO','РњР°С‚РµСЂРёРЅСЃРєР°СЏ РїР»Р°С‚Р° ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',19310.00,2,'2021-03-20 01:21:17','2021-03-20 01:21:17'),(6,'Gigabyte H310M S2H','РњР°С‚РµСЂРёРЅСЃРєР°СЏ РїР»Р°С‚Р° Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX',4790.00,2,'2021-03-20 01:21:17','2021-03-20 01:21:17'),(7,'MSI B250M GAMING PRO','РњР°С‚РµСЂРёРЅСЃРєР°СЏ РїР»Р°С‚Р° MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX',5060.00,2,'2021-03-20 01:21:17','2021-03-20 01:21:17'),(8,'Logitech MX Master 3','РњС‹С€СЊ LOGITECH MX Master 3 for business, РѕРїС‚РёС‡РµСЃРєР°СЏ, Р±РµСЃРїСЂРѕРІРѕРґРЅР°СЏ',7999.00,NULL,'2021-03-26 07:18:37','2021-03-26 07:18:37'),(9,'Microsoft Keyboard - Schwarz','Р­СЂРіРѕРЅРѕРјРёС‡РЅР°СЏ РєР»Р°РІРёР°С‚СѓСЂР° Microsoft Keyboard - Schwarz',7084.00,NULL,'2021-03-26 07:18:39','2021-03-26 07:18:39');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses`
--

DROP TABLE IF EXISTS `storehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'РќР°Р·РІР°РЅРёРµ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='РЎРєР»Р°РґС‹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses`
--

LOCK TABLES `storehouses` WRITE;
/*!40000 ALTER TABLE `storehouses` DISABLE KEYS */;
/*!40000 ALTER TABLE `storehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `storehouse_id` int unsigned DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `value` int unsigned DEFAULT NULL COMMENT 'Р—Р°РїР°СЃ С‚РѕРІР°СЂРЅРѕР№ РїРѕР·РёС†РёРё РЅР° СЃРєР»Р°РґРµ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Р—Р°РїР°СЃС‹ РЅР° СЃРєР»Р°РґРµ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
INSERT INTO `storehouses_products` VALUES (1,1,543,0,'2021-03-26 07:15:41','2021-03-26 07:15:41'),(2,1,789,2500,'2021-03-26 07:15:41','2021-03-26 07:15:41'),(3,1,3432,0,'2021-03-26 07:15:41','2021-03-26 07:15:41'),(4,1,826,30,'2021-03-26 07:15:41','2021-03-26 07:15:41'),(5,1,719,500,'2021-03-26 07:15:41','2021-03-26 07:15:41'),(6,1,638,1,'2021-03-26 07:15:41','2021-03-26 07:15:41');
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Р�РјСЏ РїРѕРєСѓРїР°С‚РµР»СЏ',
  `birthday_at` date DEFAULT NULL COMMENT 'Р”Р°С‚Р° СЂРѕР¶РґРµРЅРёСЏ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='РџРѕРєСѓРїР°С‚РµР»Рё';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Р“РµРЅРЅР°РґРёР№','1990-10-05','2016-01-07 12:05:00','2016-01-07 12:05:00'),(2,'РќР°С‚Р°Р»СЊСЏ','1984-11-12','2016-05-20 16:32:00','2016-05-20 16:32:00'),(3,'РђР»РµРєСЃР°РЅРґСЂ','1985-05-20','2016-08-14 20:10:00','2016-08-14 20:10:00'),(4,'РЎРµСЂРіРµР№','1988-02-14','2016-10-21 09:14:00','2016-10-21 09:14:00'),(5,'Р�РІР°РЅ','1998-01-12','2016-12-15 12:45:00','2016-12-15 12:45:00'),(6,'РњР°СЂРёСЏ','2006-08-29','2017-01-12 08:56:00','2017-01-12 08:56:00'),(7,'Р”РјРёС‚СЂРёР№','1985-12-29','2018-04-15 18:46:00','2018-04-15 18:46:00'),(8,'Р•Р»РµРЅР°','1990-12-30','2017-01-17 19:05:00','2017-01-17 19:05:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26  7:22:01
