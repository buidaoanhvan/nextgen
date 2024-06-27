-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: nextgen
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `content` longtext COLLATE utf8mb3_unicode_ci,
  `meta` longtext COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `elements_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,1,'BG_HOME_1','Hình nền phần 1','img',1,'/img/banner_home.png',NULL,'2024-06-21 21:01:20','2024-06-21 21:01:20'),(2,1,'CONTENT_HOME_1','Tiêu đề phần 1','html',1,'<h1><span style=\"color: #ecf0f1; font-size: 64px;\">Tiv&eacute;a healthy food drink good</span></h1> <p><span style=\"color: #ecf0f1; font-size: 18px;\">Almost before we knew it, we had left the ground.Almost before we knew it, we had left the groundAlmost before we knew it, we had left the groundAlmost before we knew it, we had left the ground</span></p>',NULL,'2024-06-21 21:18:13','2024-06-21 21:18:13'),(4,1,'IMG_SLIDE_HOME_1','Hình slide 1','img',1,'/img/home_img_1.png ',NULL,'2024-06-22 05:13:57','2024-06-22 05:13:57'),(5,1,'IMG_SLIDE_HOME_2','Hình slide 2','img',1,'/img/home_img_2.png ',NULL,'2024-06-22 05:13:57','2024-06-22 05:13:57'),(6,1,'IMG_SLIDE_HOME_3','Hình slide 3','img',1,'/img/home_img_3.png ',NULL,'2024-06-22 05:13:57','2024-06-22 05:13:57'),(7,1,'IMG_SLIDE_HOME_4','Hình slide 4','img',1,'/img/home_img_4.png ',NULL,'2024-06-22 05:13:57','2024-06-22 05:13:57'),(8,1,'IMG_SLIDE_HOME_5','Hình slide 5','img',1,'/img/home_img_5.png ',NULL,'2024-06-22 05:13:57','2024-06-22 05:13:57'),(9,1,'IMG_SLIDE_HOME_6','Hình slide 6','img',1,'/img/home_img_6.png ',NULL,'2024-06-22 05:13:57','2024-06-22 05:13:57'),(10,1,'CARD_2_IMG_1_HOME','Hình ảnh card 1','img',2,'/img/card2_img_home_1.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(11,1,'CARD_2_IMG_2_HOME','Hình ảnh card 2','img',2,'/img/card2_img_home_2.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(12,1,'CARD_2_IMG_3_HOME','Hình ảnh card 3','img',2,'/img/card2_img_home_3.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(13,1,'CARD_2_TITLE_1_HOME','Tiêu đề card 1','text',2,'Almost before we knew it,',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(14,1,'CARD_2_TITLE_2_HOME','Tiêu đề card 2','text',2,'Almost before we knew it,',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(15,1,'CARD_2_TITLE_3_HOME','Tiêu đề card 3','text',2,'Almost before we knew it,',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(16,1,'CARD_2_CONTENT_1_HOME','Nội dung card 1','text',2,'Almost before we knew it, we had left the ground. We knew it, we had left the ground.',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(17,1,'CARD_2_CONTENT_2_HOME','Nội dung card 2','text',2,'Almost before we knew it, we had left the ground. We knew it, we had left the ground.',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(18,1,'CARD_2_CONTENT_3_HOME','Nội dung card 3','text',2,'Almost before we knew it, we had left the ground. We knew it, we had left the ground.',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(19,1,'BG_3_HOME','Hình nền phần 3','img',3,'/img/bg_3_home.jpg',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(20,1,'BANNER_SALE_HOME','Banner khuyến mãi trang chủ:','img',4,'/img/banner_sale.png',NULL,'2024-06-23 14:56:30','2024-06-23 14:56:30'),(21,1,'CONTENT_3_HOME','Nội dung phần 3','html',3,'<h1><span style=\"color: #000000;\">Ti&ecirc;u đề</span></h1>\n<p><span style=\"font-size: 14px; color: #ced4d9;\">Almost before we knew it</span></p>\n<p><span style=\"color: #000000;\">Almost before we knew it, we had left the ground.Almost before we knew it, we had left the groundAlmost before we knew it, we had left the groundAlmost before we knew it, we had left the ground</span></p>\n<p><span style=\"color: #000000;\">Almost before we knew it, we had left the ground.Almost before we knew it, we had left the groundAlmost before we knew it, we had left the groundAlmost before we knew it, we had left the ground</span></p>',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(22,2,'BANNER_1_ABOUT','Hình nền phần 1:','img',1,'/img/banner_about_1.png',NULL,'2024-06-23 15:30:26','2024-06-23 15:30:26'),(23,2,'CONTENT_1_ABOUT','Nội dung phần 1:','html',1,'<h1><span style=\"color: #ecf0f1; font-size: 48px;\">CHÚNG TÔI LÀM THIẾT KẾ SÁNG TẠO KHÔNG NGỪNG NGHỈ</span></h1> <p><span style=\"color: #ecf0f1; font-size: 18px;\">Almost before we knew it, we had left the ground.Almost before we knew it, we had left the groundAlmost before we knew it, we had left the groundAlmost before we knew it, we had left the ground</span></p>',NULL,'2024-06-23 15:30:26','2024-06-23 15:30:26'),(24,2,'CARD_2_IMG_1_ABOUT','Hình ảnh card 1','img',2,'/img/card2_img_home_1.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(25,2,'CARD_2_IMG_2_ABOUT','Hình ảnh card 2','img',2,'/img/card2_img_home_2.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(26,2,'CARD_2_IMG_3_ABOUT','Hình ảnh card 3','img',2,'/img/card2_img_home_3.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(27,2,'CARD_2_TITLE_1_ABOUT','Tiêu đề card 1','text',2,'Almost before we knew it,',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(28,2,'CARD_2_TITLE_2_ABOUT','Tiêu đề card 2','text',2,'Almost before we knew it,',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(29,2,'CARD_2_TITLE_3_ABOUT','Tiêu đề card 3','text',2,'Almost before we knew it,',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(30,2,'CARD_2_CONTENT_1_ABOUT','Nội dung card 1','text',2,'Almost before we knew it, we had left the ground. We knew it, we had left the ground.',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(31,2,'CARD_2_CONTENT_2_ABOUT','Nội dung card 2','text',2,'Almost before we knew it, we had left the ground. We knew it, we had left the ground.',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(32,2,'CARD_2_CONTENT_3_ABOUT','Nội dung card 3','text',2,'Almost before we knew it, we had left the ground. We knew it, we had left the ground.',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(33,2,'CARD_2_TITLE_ABOUT','Tiêu đề card phần 2','html',2,'<h1><span style=\"color: #000000;\">Ti&ecirc;u đề</span></h1> <p><span style=\"font-size: 14px; color: #ced4d9;\">Almost before we knew it</span></p>',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(34,2,'CONTENT_ABOUT_3','Nội dung phần 3','html',3,'<h1>Ti&ecirc;u đ&ecirc;̀</h1> <p><span style=\"font-size: 14px;\">Almost before we knew it,</span></p> <p>&nbsp;</p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(35,2,'IMG_ABOUT_3','Hình ảnh phần 3','img',3,'/img/img_3_about.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(36,2,'CONTENT_ABOUT_4','Nội dung phần 4','html',4,'<h1>Ti&ecirc;u đ&ecirc;̀</h1> <p><span style=\"font-size: 14px;\">Almost before we knew it,</span></p> <p>&nbsp;</p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(37,2,'IMG_ABOUT_4','Hình ảnh phần 4','img',4,'/img/img_3_about_2.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(38,2,'CONTENT_ABOUT_5','Nội dung phần 5','html',5,'<h1>Ti&ecirc;u đ&ecirc;̀</h1> <p><span style=\"font-size: 14px;\">Almost before we knew it,</span></p> <p>&nbsp;</p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p> <p><span style=\"font-size: 18px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(39,2,'IMG_ABOUT_5','Hình ảnh phần 5','img',5,'/img/img_3_about_3.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(40,3,'POLICY_BANNER_1','Hình ảnh phần 1','img',1,'/img/policy_banner_1.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(41,4,'CONTACT_BANNER_1','Hình ảnh phần 1','img',1,'/img/banner_contact.png',NULL,'2024-06-22 06:43:49','2024-06-22 06:43:49'),(42,4,'INFO_COMPANY','Thông tin công ty','html',2,'<h1>C&ocirc;ng ty TNHH DVP...</h1> <p>&nbsp;</p> <p><strong>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</strong></p> <p>&nbsp;</p> <p><span style=\"color: #7e8c8d;\">C&ocirc;ng ty TNHH 1 th&agrave;nh vi&ecirc;n DVP Media</span><br><span style=\"color: #7e8c8d;\">GCNĐKKD: 0108755817 </span><br><span style=\"color: #7e8c8d;\">Cấp ng&agrave;y: 01/01/2024</span><br><span style=\"color: #7e8c8d;\">Nơi cấp: Sở Kế Hoạch Đầu Tư Th&agrave;nh phố</span><br><span style=\"color: #7e8c8d;\">H&agrave; Nội</span></p>',NULL,'2024-06-24 09:25:28','2024-06-24 09:25:28');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item_toppings`
--

DROP TABLE IF EXISTS `order_item_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item_toppings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_item_id` int DEFAULT NULL,
  `topping_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `topping_id` (`topping_id`),
  CONSTRAINT `order_item_toppings_ibfk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_item_toppings_ibfk_2` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_toppings`
--

LOCK TABLES `order_item_toppings` WRITE;
/*!40000 ALTER TABLE `order_item_toppings` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_item_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `item` longtext COLLATE utf8mb3_unicode_ci,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '0',
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `voucher_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_price` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `ship_price` int DEFAULT NULL,
  `tax_price` int DEFAULT NULL,
  `payment_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Trang chủ','trang-chu',NULL,'2024-06-21 20:59:15','2024-06-21 20:59:15'),(2,'Giới thiệu','gioi-thieu',NULL,'2024-06-21 20:59:15','2024-06-21 20:59:15'),(3,'Chính sách','chinh-sach',NULL,'2024-06-21 20:59:15','2024-06-21 20:59:15'),(4,'Liên hệ','lien-he',NULL,'2024-06-21 20:59:15','2024-06-21 20:59:15');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb3_unicode_ci,
  `author_id` int DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'draft',
  `meta` longtext COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (9,'Bài viết 1','bai-viet-1','<p><span style=\"font-size: 18px;\">Sữa chua cung cấp gần như mọi chất dinh dưỡng m&agrave; cơ thể cần. Trong đ&oacute;, canxi đặc biệt cần thiết cho sự ph&aacute;t triển của răng v&agrave; xương. Vitamin B, đặc biệt l&agrave; vitamin B12 v&agrave; riboflavin, c&oacute; t&aacute;c dụng bảo vệ cơ quan tim. C&aacute;c kho&aacute;ng chất như phốt pho, magie v&agrave; kali c&oacute; trong sữa chua đ&oacute;ng vai tr&ograve; quan trọng trong qu&aacute; tr&igrave;nh trao đổi chất v&agrave; điều h&ograve;a huyết &aacute;p.</span></p><p><img src=\"/uploads/file-1719471281064.png\" style=\"width: 450px;\" class=\"fr-fic fr-dib fr-rounded\"></p>',1,'public','a,b,c','2024-06-27 04:50:51','2024-06-27 04:50:51','/uploads/file-1719471252965.png'),(10,'Sữa chua có lợi cho sức khỏe hệ tiêu hóa','sua-chua-co-loi-cho-suc-khoe-he-tieu-hoa','<ol style=\"list-style-type: upper-roman;\"><li style=\"font-weight: bold; font-size: 24px;\"><span id=\"isPasted\" style=\"color: rgb(65, 65, 65); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important;\"><strong>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi</strong></span><ol style=\"font-weight: initial; font-size: initial;\"><li><br></li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li><br></li><li style=\"text-align: center;\"><img src=\"/uploads/file-1719484691710.png\" style=\"width: 554px;\" class=\"fr-fic fr-dib\"></li><li style=\"text-align: center;\"><br></li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li><br></li></ol></li><li style=\"font-weight: bold; font-size: 24px;\"><span id=\"isPasted\" style=\"color: rgb(65, 65, 65); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important;\"><strong>Hội chứng ruột k&iacute;ch th&iacute;ch (IBS)</strong></span><ol style=\"font-weight: initial; font-size: initial;\"><li><br></li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li><br></li><li style=\"text-align: center;\"><img src=\"/uploads/file-1719484707235.png\" style=\"width: 619px;\" class=\"fr-fic fr-dib\"></li><li><br></li></ol></li><li style=\"font-weight: bold; font-size: 24px;\"><span id=\"isPasted\" style=\"color: rgb(65, 65, 65); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important;\"><strong>H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y</strong></span><ol style=\"font-weight: initial; font-size: initial;\"><li><br></li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li><li>Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.Sữa chua chứa rất nhiều vi khuẩn c&oacute; lợi cho đường ruột v&agrave; sức khỏe hệ ti&ecirc;u h&oacute;a. Men vi sinh Bifidobacteria v&agrave; Lactobacillus trong sữa chua c&oacute; t&aacute;c dụng l&agrave;m giảm c&aacute;c triệu chứng kh&oacute; chịu của hội chứng ruột k&iacute;ch th&iacute;ch (IBS), một chứng rối loạn phổ biến ở đại tr&agrave;ng. C&aacute;c men vi sinh n&agrave;y cũng hạn chế c&aacute;c triệu chứng rối loạn ti&ecirc;u h&oacute;a th&ocirc;ng thường như đầy bụng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n. Hơn nữa, c&aacute;c hoạt chất trong sữa chua c&ograve;n ngăn ngừa vi khuẩn H.pylori g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li></ol></li></ol>',1,'public','bánh ngọt,ngon','2024-06-27 06:59:20','2024-06-27 06:59:20','/uploads/file-1719484670111.png');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sizes` (
  `product_id` int NOT NULL,
  `size_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`size_id`),
  KEY `size_id` (`size_id`),
  CONSTRAINT `product_sizes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_sizes_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sizes`
--

LOCK TABLES `product_sizes` WRITE;
/*!40000 ALTER TABLE `product_sizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tags` (
  `product_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `product_tags_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_toppings`
--

DROP TABLE IF EXISTS `product_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_toppings` (
  `product_id` int NOT NULL,
  `topping_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`topping_id`),
  KEY `topping_id` (`topping_id`),
  CONSTRAINT `product_toppings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_toppings_ibfk_2` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_toppings`
--

LOCK TABLES `product_toppings` WRITE;
/*!40000 ALTER TABLE `product_toppings` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `price` int DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb3_unicode_ci,
  `value` text COLLATE utf8mb3_unicode_ci,
  `type` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'logo','Logo trang web:','/img/logo.png','img','2024-06-21 11:15:49','2024-06-21 11:15:49'),(2,'email','Email liên hệ:','minhlinkin@gmail.com','text','2024-06-21 11:17:23','2024-06-21 11:17:23'),(3,'phone','Số điện thoại:','+845 590 85054','text','2024-06-21 11:18:31','2024-06-21 11:18:31'),(4,'website','Địa chỉ website:','www.nextgen.com','text','2024-06-21 11:19:44','2024-06-21 11:19:44'),(5,'facebook','Link facebook:','facebook.com','text','2024-06-21 11:21:13','2024-06-21 11:21:13'),(6,'zalo','Link zalo:','zalo.com','text','2024-06-21 11:21:30','2024-06-21 11:21:30'),(7,'instagram','Link instagram:','instagram.com','text','2024-06-21 11:22:07','2024-06-21 11:22:07'),(8,'youtube','Link youtube:','youtube.com','text','2024-06-21 11:22:19','2024-06-21 11:22:19'),(9,'bg_footer','Hình nền chân trang:','/img/bg_footer.png','img','2024-06-21 11:15:49','2024-06-21 11:15:49'),(10,'address','Địa chỉ:','Almost before we knew it, we had left the ground.','text','2024-06-22 15:50:40','2024-06-22 15:50:40'),(11,'google_map','Bản đồ google:','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4248781225892!2d106.6769732124796!3d10.778734589325909!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f262e1187e9%3A0xd44a4b70126406ab!2zMjg1IEjhurttIDI4NSBDw6FjaCBN4bqhbmcgVGjDoW5nIFTDoW0sIFBoxrDhu51uZyAxMiwgUXXhuq1uIDEwLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1719220400713!5m2!1svi!2s\" width=\"90%\" height=\"90%\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','html','2024-06-22 16:09:14','2024-06-22 16:09:14');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `additional_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppings`
--

DROP TABLE IF EXISTS `toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `additional_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppings`
--

LOCK TABLES `toppings` WRITE;
/*!40000 ALTER TABLE `toppings` DISABLE KEYS */;
/*!40000 ALTER TABLE `toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favorites`
--

DROP TABLE IF EXISTS `user_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `user_favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_favorites_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorites`
--

LOCK TABLES `user_favorites` WRITE;
/*!40000 ALTER TABLE `user_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '0',
  `roles` longtext COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'buidaoanhvan','buidaoanhvan','admin@admin.com','0987654321','37 Đường 13 Quận 12 TP.HCM','sha1$287b1804$1$31557032714703105fe0797588cc9eb385394222',1,'[\"admin\"]','2024-06-25 04:22:13','2024-06-25 04:22:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb3_unicode_ci,
  `description` text COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_value` int DEFAULT NULL,
  `discount_max` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `vouchers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 17:47:13
