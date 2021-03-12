-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: vk
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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Группы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'eius','1980-02-13 01:34:14','1986-04-21 17:16:58'),(2,'et','1991-08-03 12:22:10','1984-04-20 00:56:08'),(3,'cupiditate','1976-09-25 01:29:09','1999-11-16 12:41:13'),(4,'eum','2007-02-17 11:20:36','1972-08-23 09:08:29'),(5,'corrupti','2019-07-24 15:49:18','2011-09-28 09:49:31'),(6,'vel','2007-05-24 20:33:19','1985-10-10 13:02:53'),(7,'magni','2009-03-28 15:24:53','1994-12-03 02:07:10'),(8,'sint','1977-05-21 00:21:59','1997-09-16 21:54:16'),(9,'est','1973-12-15 23:18:46','1986-04-30 08:39:56'),(10,'earum','1982-12-09 22:42:54','1998-11-03 15:07:19'),(11,'iure','2016-03-24 20:05:15','1980-04-18 14:03:16'),(12,'tenetur','1993-06-23 02:57:06','2014-03-21 21:10:57'),(13,'modi','2002-10-15 00:52:46','2003-08-13 04:12:06'),(14,'aut','2011-07-10 01:36:19','2012-03-28 11:48:04'),(15,'nemo','1989-04-13 21:57:40','2015-09-26 16:35:44'),(16,'sunt','2003-07-21 06:40:10','1972-04-14 08:43:55'),(17,'fuga','2009-06-30 13:59:42','1982-01-26 19:07:45'),(18,'temporibus','1971-04-20 16:22:26','2014-08-20 17:33:14'),(19,'nihil','2016-10-24 11:53:37','1989-08-21 06:56:34'),(20,'quibusdam','1993-06-28 04:04:32','1972-07-24 16:42:05'),(21,'veniam','2001-01-22 17:58:53','1992-05-15 14:22:33'),(22,'quia','2018-07-19 10:02:01','1975-09-02 13:49:44'),(23,'reprehenderit','2004-05-13 18:16:20','1986-03-18 08:21:34'),(24,'autem','1981-09-16 01:16:08','2018-01-26 16:55:59'),(25,'error','1999-04-01 20:56:49','2006-02-26 16:56:45'),(26,'id','1977-07-04 18:51:26','1998-04-21 16:30:49'),(27,'consequatur','1992-01-31 00:37:49','1979-10-15 22:45:45'),(28,'in','2021-02-03 16:37:35','1978-10-10 17:18:55'),(29,'ut','1991-07-30 07:16:37','1989-12-18 18:38:11'),(30,'odit','2010-07-09 11:55:50','2010-12-17 14:32:46'),(31,'numquam','1987-04-27 04:12:52','2016-05-20 07:32:36'),(32,'eos','2008-06-30 22:13:20','2014-04-25 23:50:42'),(33,'sed','2012-11-30 00:53:57','1974-07-26 08:43:33'),(34,'pariatur','2002-09-25 19:07:13','1984-10-26 01:40:43'),(35,'dolor','2001-09-09 02:05:22','1985-02-03 00:47:09'),(36,'quos','1983-12-10 23:46:09','2010-05-27 17:00:25'),(37,'recusandae','1981-05-26 06:36:06','1970-05-01 08:06:50'),(38,'quidem','1985-06-21 06:05:34','2005-01-01 11:05:19'),(39,'non','2012-10-18 19:03:08','2007-05-11 04:59:48'),(40,'dolorem','1974-12-03 18:00:51','2003-05-30 03:00:52'),(41,'praesentium','2012-02-21 23:06:24','1997-10-15 17:47:29'),(42,'atque','2005-09-03 17:20:26','2002-06-21 22:26:25'),(43,'animi','2000-09-18 16:22:00','2003-12-19 04:25:48'),(44,'voluptatem','1985-04-11 23:14:49','1995-04-18 17:46:21'),(45,'rerum','1998-12-11 11:22:50','1971-09-18 18:48:47'),(46,'ea','2020-05-31 00:44:08','1988-02-23 14:30:32'),(47,'voluptate','1999-07-27 17:44:45','1988-06-16 13:20:27'),(48,'tempore','2016-12-05 03:49:53','2000-09-05 22:13:25'),(49,'illum','1972-07-21 01:19:52','1988-12-05 13:11:41'),(50,'iusto','2018-05-18 05:14:06','1978-05-08 16:45:14');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Участники групп, связь между пользователями и группами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица дружбы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статусы дружбы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) NOT NULL COMMENT 'Путь к файлу',
  `size` int NOT NULL COMMENT 'Размер файла',
  `metadata` json DEFAULT NULL COMMENT 'Метаданные файла',
  `media_type_id` int unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Медиафайлы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Типы медиафайлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Сообщения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Профили';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (0,'','2020-05-17',527,'Laudantium quia ratione quas e','Hintzburgh','91','2016-04-05 07:24:51','1989-01-02 17:58:40'),(2,'3','1975-07-24',8008,'Eius qui et provident voluptat','Lake Eleonorebury','78577638','2015-06-15 01:05:43','1974-06-17 19:09:28'),(4,'','1997-02-22',58454552,'Voluptates magnam deleniti ut ','Beiermouth','3481928','1978-10-19 16:23:28','1980-04-06 16:37:18'),(5,'9','1975-05-25',907,'Sint odio quisquam repellat ap','Adrainfort','','1983-02-14 03:23:58','1999-01-09 14:18:12'),(6,'3','1996-05-30',155987,'Et exercitationem sed saepe to','Ashleighberg','','1994-08-10 23:59:35','2012-10-21 19:02:41'),(9,'7','2019-06-20',14,'Libero sunt qui eum sit vero. ','New Julianneside','','1974-07-04 21:48:12','2016-01-05 16:08:34'),(32,'6','1998-06-29',47730,'Itaque a quia et nostrum volup','Georgefurt','84862667','1980-11-19 08:24:12','1975-01-10 18:17:27'),(49,'1','1997-03-18',0,'Corporis doloribus ut rem quas','North Everardoborough','17383813','1972-05-19 22:51:31','2020-06-10 23:36:38'),(76,'3','2020-03-18',4083725,'Eos laborum neque sunt asperio','South Delmermouth','897','1971-07-22 16:44:20','2017-11-30 05:35:04'),(87,'4','2015-05-10',60271,'Sapiente omnis et animi. Disti','Port Ransomberg','547834397','1984-07-15 03:27:32','1973-11-13 15:33:02'),(96,'','1980-03-20',82,'Sed maxime eius facilis numqua','East Rickeyshire','986817265','2006-11-24 13:52:26','2006-11-26 07:49:36'),(99,'4','2006-03-20',0,'Corrupti sunt non eum et quia ','Weissnathaven','3','1995-04-27 17:45:55','1970-03-07 17:07:52'),(113,'8','2003-12-25',7,'Laudantium sit nihil sit solut','West Jarrell','1241699','1991-01-04 02:08:41','1998-02-11 02:36:09'),(276,'9','1994-07-07',0,'Architecto laudantium consequa','Sigmundburgh','196','1981-06-05 04:02:12','2002-04-13 15:17:49'),(315,'7','2011-05-14',40574,'Velit quos exercitationem itaq','Hayesborough','25','2017-02-05 12:32:59','1984-12-06 01:22:23'),(532,'7','2010-05-24',2,'In voluptas dolore ab rerum. P','West Susie','2783','2006-07-23 18:14:10','1990-01-17 05:15:50'),(1031,'','1997-10-29',0,'Ratione officia doloribus quod','South Margarete','64318','2017-04-25 05:25:46','1992-06-02 08:22:34'),(1965,'7','2017-11-05',72,'Et nihil ab id est excepturi s','Sarinachester','','1985-02-15 14:56:53','1986-12-09 09:18:09'),(2025,'3','1990-04-18',0,'Aut asperiores et unde sint et','Lake Zula','798648834','2002-01-02 20:07:23','1995-01-03 12:14:57'),(4344,'1','2003-06-20',59245644,'Ab nemo quibusdam facilis dolo','Kaileeborough','3139364','1975-05-26 14:51:26','2006-08-06 13:43:31'),(8291,'8','1994-10-06',66025382,'Et maxime exercitationem incid','Haleighton','2831643','2009-02-26 23:04:40','2004-08-05 12:58:49'),(49069,'5','2015-09-22',1941,'Eligendi beatae odit et sunt. ','Elvaside','40','1996-03-24 13:54:20','1984-06-08 21:34:44'),(50359,'7','2006-10-01',3207621,'Enim consequatur aliquam conse','Port Daisha','4679923','1985-03-11 19:46:06','2001-03-17 11:29:49'),(74006,'','1996-11-02',9942,'Est aperiam eius vel perferend','Marianeton','793','1988-05-08 07:16:16','1971-12-21 19:50:03'),(100530,'6','1978-04-09',246983296,'Autem quasi dolores quae nobis','West Prince','9','2019-03-18 17:32:50','2000-07-15 03:59:28'),(210866,'1','2019-11-20',463340,'Quis molestiae consequatur rep','North Jovanborough','75504837','1974-07-16 11:13:42','1998-03-24 03:16:39'),(393161,'6','1995-02-20',6618309,'Deserunt at laborum impedit eo','Stehrport','384386844','1975-05-27 00:52:21','1977-09-10 15:35:59'),(1564614,'8','1985-10-29',3,'Qui repudiandae ipsum voluptas','Feeneyshire','2','2005-10-13 15:06:07','1978-08-25 17:34:12'),(2355224,'1','1992-11-16',0,'Et officia qui assumenda delen','Jastview','8649','2013-08-05 01:23:23','2010-12-18 03:12:23'),(3089005,'5','2005-08-20',435046521,'Qui suscipit eos eius rem opti','North Murphy','','1986-08-29 18:58:25','1972-05-18 07:19:30'),(4296665,'4','1976-11-20',337360954,'Impedit dignissimos ut et illu','West Alyce','1','1978-09-17 07:49:28','2009-01-07 20:19:01'),(8917683,'6','1992-10-29',995,'Asperiores quia modi ut. Simil','Ignatiusmouth','1874821','2010-06-16 12:46:55','1979-07-02 23:19:46'),(16344983,'2','2009-03-11',183,'Eius consequatur qui voluptas ','Lake Garland','847223728','1986-11-29 09:27:34','2010-12-01 17:44:59'),(20237242,'8','2003-04-29',3747784,'Amet dolorum dignissimos amet ','Deontechester','189278825','2019-12-11 09:54:52','2003-05-21 10:31:22'),(24670598,'','2001-04-15',4280921,'Pariatur excepturi asperiores ','New Guido','20','1995-04-23 20:30:17','2011-09-15 23:31:07'),(41897612,'3','1979-09-08',729217679,'Aliquam quis neque dolorem acc','Swaniawskifort','824813','2012-07-07 06:40:53','1988-03-09 11:03:58'),(147690142,'7','2011-02-02',3,'Omnis sapiente voluptatibus qu','South Braedenburgh','372303814','2004-09-05 22:20:06','1973-06-09 15:15:41'),(170721599,'2','1973-02-12',12240448,'Necessitatibus quasi ut evenie','Millerview','9','1999-01-16 10:44:40','1976-05-20 23:04:16'),(327129223,'8','1984-05-08',8880,'Tenetur nemo exercitationem as','North Hardy','85238','1998-04-17 05:29:27','2010-12-17 17:48:51'),(490142807,'5','2002-10-18',94328,'Vitae totam esse expedita comm','Eladiobury','1702','1977-06-27 06:24:26','1990-12-26 03:56:54'),(741894635,'6','1986-07-14',0,'Voluptatem est et similique cu','West Raheemchester','7','1988-02-04 00:22:29','1989-05-21 18:45:30');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) NOT NULL COMMENT 'Почта',
  `phone` varchar(100) NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Tamia','Ledner','coby22@example.net','06674020655','1994-02-28 12:51:01','1997-07-28 20:00:22'),(2,'Tracy','Kuphal','sigmund53@example.org','081-497-1845x034','1971-09-08 10:01:09','1973-04-03 04:00:04'),(3,'Carley','Dietrich','napoleon52@example.org','589-802-3564x007','2007-11-28 12:25:45','2008-02-09 04:04:53'),(4,'Harrison','West','zthiel@example.com','165-755-1619x11656','2010-12-29 09:15:48','2003-12-13 03:50:16'),(5,'Kayli','Larson','lkihn@example.com','00712943241','1985-09-20 04:46:58','2016-08-31 00:07:57'),(6,'Orlo','Schulist','lubowitz.myrtie@example.org','967-238-0950','1983-07-09 15:13:50','1988-07-03 06:26:28'),(7,'Alexandrea','Wilkinson','tarmstrong@example.org','268.938.8514x325','1990-04-08 19:53:29','2019-12-26 21:03:23'),(8,'Angela','Wilkinson','cali12@example.com','(695)195-3884x086','1971-02-12 03:42:58','1973-05-26 21:55:46'),(9,'Claudia','Bayer','americo.koelpin@example.com','+59(2)3718996174','2010-11-02 00:01:11','2006-09-18 00:37:12'),(10,'Vilma','Langworth','wilburn51@example.org','(688)111-8732','2003-09-11 12:59:16','1978-08-13 18:49:05'),(11,'Cortney','Weimann','selena99@example.net','092-394-5837','1986-11-15 00:05:34','2001-10-14 05:09:52'),(12,'Kenneth','McKenzie','sheldon.schneider@example.org','04389194893','1988-10-28 03:06:25','2007-10-07 11:33:52'),(13,'Ramiro','Collins','urenner@example.org','586.499.7416x9250','1979-10-14 23:44:35','2009-07-17 01:56:30'),(14,'Eryn','Ebert','hessel.lamar@example.org','09947601496','1978-07-05 19:37:12','2008-11-09 10:15:23'),(15,'Reginald','Miller','tremaine.jacobson@example.net','663-280-0703x608','1975-04-17 00:29:42','2007-12-29 04:43:00'),(16,'Issac','McCullough','lyda.stanton@example.com','318.994.5123x37037','1992-06-27 20:24:04','1988-04-05 10:00:28'),(17,'Alexandrea','Quitzon','hosea40@example.net','04205973088','1999-09-12 13:47:06','1974-03-16 14:12:01'),(18,'Alena','Monahan','angus.haley@example.net','1-883-449-1071','1980-08-31 23:04:05','1982-02-11 11:23:42'),(19,'Vernice','Bechtelar','bernier.tessie@example.com','918.167.8826x6197','1996-02-11 18:29:41','1992-01-04 08:26:33'),(20,'Esmeralda','Kuvalis','lonie.moen@example.com','06167569255','1980-08-08 23:59:35','1983-01-27 07:39:38'),(21,'Brady','Grimes','bonita.runolfsdottir@example.net','(954)612-8725x89564','2004-12-04 10:40:09','2000-05-23 03:35:41'),(22,'Daryl','Lemke','kulas.madge@example.org','1-936-307-7404x4751','2005-08-28 09:26:08','1987-10-28 14:23:45'),(23,'Neha','Boehm','mylene51@example.com','827-086-0578','1979-03-08 02:57:53','2014-01-17 22:47:26'),(24,'Kayley','Ankunding','thompson.eriberto@example.com','847-755-7411','1987-04-27 05:39:27','1989-02-01 16:06:58'),(25,'Astrid','Fahey','nannie.dubuque@example.net','894.779.2114x03195','2004-06-03 03:09:35','1993-03-10 03:27:11'),(26,'Noelia','Leannon','vwindler@example.net','1-936-181-1756x462','1978-03-10 18:59:49','2003-02-21 11:52:10'),(27,'Elinor','Schumm','hilario.casper@example.com','1-084-104-6538','1988-10-19 03:55:12','1976-09-18 17:27:39'),(28,'Shyann','Schumm','samson.swaniawski@example.org','676-666-5224x497','2008-05-17 04:09:01','2011-11-02 00:22:07'),(29,'Marshall','McLaughlin','domenic03@example.com','+61(5)6923335550','1987-04-11 10:12:05','2012-05-16 12:38:02'),(30,'Adam','Schiller','savanah.wunsch@example.com','08227007657','1978-03-12 21:10:18','1991-04-25 12:49:20'),(31,'Retha','Murphy','felix.corwin@example.com','586-857-3672x755','2013-12-16 02:52:16','2011-05-15 04:16:33'),(32,'Shyanne','Veum','ratke.ara@example.org','02886367257','2006-10-28 00:24:12','1970-01-04 00:00:13'),(33,'Bette','Klein','enos57@example.com','+08(6)5567751030','2013-10-09 18:50:20','2012-06-26 08:49:10'),(34,'Chase','Lockman','mclaughlin.john@example.net','088.200.2857','1980-01-20 23:26:52','1995-04-21 18:45:55'),(35,'Gerry','Dietrich','hmetz@example.net','09411105880','2009-01-16 13:19:37','1992-05-08 02:36:46'),(36,'Barry','Flatley','bmccullough@example.org','523-986-7687','1971-12-30 23:54:07','2009-01-31 03:38:05'),(37,'Jasmin','Renner','zelda52@example.com','320.366.0022x35138','2003-05-19 02:32:13','2013-03-09 07:08:49'),(38,'Yasmine','DuBuque','ykuhlman@example.org','413.359.1166','1974-07-20 06:31:53','2002-12-12 02:50:47'),(39,'Gretchen','Swaniawski','agoodwin@example.com','396.702.1730x0085','2002-06-08 23:36:21','2001-08-11 02:18:11'),(40,'Ceasar','Hintz','ryan.frank@example.org','(070)249-0625x39865','2018-06-02 06:10:33','1993-08-08 18:44:53'),(41,'Jerrell','Parker','freida88@example.net','1-863-412-0756x3543','1993-01-11 20:54:51','1989-07-30 15:00:43'),(42,'Yesenia','Morar','gilberto.klocko@example.org','857.071.2519x284','2019-02-06 07:15:08','2002-10-23 09:52:50'),(43,'Delphia','Waelchi','matilda.schuppe@example.net','+82(3)5937883920','1971-05-17 11:39:38','2017-11-16 20:51:06'),(44,'Cedrick','Fadel','khauck@example.org','(017)315-5080x69544','1982-08-22 07:55:12','1986-08-29 01:54:20'),(45,'Reuben','Lesch','ole22@example.org','1-993-805-4886','1985-08-21 19:53:34','1992-05-09 02:05:36'),(46,'Arjun','Frami','enrico.hilll@example.net','+92(2)0180053987','2015-12-17 02:50:12','1976-09-23 14:43:11'),(47,'Ayden','Rohan','john.toy@example.org','00449739311','2016-08-28 15:36:53','2018-09-13 12:55:24'),(48,'Paxton','Willms','sasha70@example.org','(680)711-4253x764','2018-07-30 07:32:42','1988-03-08 07:45:06'),(49,'Andreanne','Boyer','brionna.powlowski@example.net','1-321-712-1144','1976-10-09 19:02:20','2001-05-09 21:19:58'),(50,'Justen','Dietrich','bins.madison@example.net','(650)190-5649','1993-07-15 07:49:42','1983-05-19 09:11:33');
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

-- Dump completed on 2021-03-12  7:02:45
