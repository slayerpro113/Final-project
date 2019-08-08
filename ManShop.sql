-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: man_shop
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bannerName` varchar(255) DEFAULT NULL,
  `enable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'banner_shirts.jpg',''),(2,'banner_jeans.jpg',''),(3,'banner_jackets.jpg',''),(4,'banner_2.jpg','true'),(5,'banner_1.jpg','false'),(6,'banner_hoodies.jpg',''),(7,'banner_3.jpg','false'),(8,'banner_4.jpg','false'),(9,'banner_6.jpg','false'),(10,'banner_7.jpg','false'),(11,'banner_8.jpg','false'),(12,'banner_9.jpg','true'),(13,'banner_10.jpg','false'),(14,'banner_11.jpg','true'),(15,'banner_12.jpg','false'),(16,'banner_13.jpg','false'),(17,'banner_14.jpg','false'),(18,'banner_15.jpg','false'),(19,'banner_17.jpg','false'),(20,'banner_18.jpg','false'),(21,'banner_19.jpg','false'),(22,'banner_20.jpg','false'),(23,'banner_21.jpg','false'),(24,'banner_22.jpg','false'),(25,'banner_23.jpg','false'),(26,'banner_24.jpg','false'),(27,'banner_28.jpg','false'),(28,'banner_29.jpg','false'),(29,'banner_30.jpg','false'),(30,'banner_31.jpg','false'),(31,'banner_32.jpg','false'),(32,'banner_34.jpg','false'),(33,'banner_36.jpg','true'),(34,'banner_37.jpg','false');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Shirts'),(2,'Jeans'),(3,'Jacket'),(4,'Hoodie'),(5,'All');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discountcode`
--

DROP TABLE IF EXISTS `discountcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discountcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `isUsed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discountcode`
--

LOCK TABLES `discountcode` WRITE;
/*!40000 ALTER TABLE `discountcode` DISABLE KEYS */;
INSERT INTO `discountcode` VALUES (7,'10713','True'),(8,'10439','True'),(9,'10564','True'),(10,'10440','False');
/*!40000 ALTER TABLE `discountcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnvc6x72kysjxffc1lttvtx4x7` (`userId`),
  KEY `FK6km33u64j5cosr4oxr4h6r209` (`productId`),
  CONSTRAINT `FK6km33u64j5cosr4oxr4h6r209` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKnvc6x72kysjxffc1lttvtx4x7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite`
--

LOCK TABLES `favourite` WRITE;
/*!40000 ALTER TABLE `favourite` DISABLE KEYS */;
INSERT INTO `favourite` VALUES (7,112,3),(8,28,3),(19,28,6),(20,92,6),(21,28,2),(22,92,2),(23,40,2);
/*!40000 ALTER TABLE `favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1g60xv2yh6utuf1kmhip6347v` (`productId`),
  CONSTRAINT `FK1g60xv2yh6utuf1kmhip6347v` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'1_1.jpg',1),(2,'1_2.jpg',1),(3,'2_1.jpg',2),(4,'2_2.jpg',2),(5,'3_1.jpg',3),(6,'3_2.jpg',3),(7,'4_1.jpg',4),(8,'4_2.jpg',4),(9,'5_1.jpg',5),(10,'5_2.jpg',5),(11,'6_1.jpg',6),(12,'6_2.jpg',6),(13,'7_1.jpg',7),(14,'7_2.jpg',7),(15,'8_1.jpg',8),(16,'8_2.jpg',8),(17,'9_1.jpg',9),(18,'9_2.jpg',9),(19,'10_1.jpg',10),(20,'10_2.jpg',10),(21,'11_1.jpg',11),(22,'11_2.jpg',11),(23,'12_1.jpg',12),(24,'12_2.jpg',12),(25,'13_1.jpg',13),(26,'13_2.jpg',13),(27,'14_1.jpg',14),(28,'14_2.jpg',14),(29,'15_1.jpg',15),(30,'15_2.jpg',15),(31,'16_1.jpg',16),(32,'16_2.jpg',16),(33,'17_1.jpg',17),(34,'17_2.jpg',17),(35,'18_1.jpg',18),(36,'18_2.jpg',18),(37,'19_1.jpg',19),(38,'19_2.jpg',19),(39,'20_1.jpg',20),(40,'20_2.jpg',20),(41,'21_1.jpg',21),(42,'21_2.jpg',21),(43,'22_1.jpg',22),(44,'22_2.jpg',22),(45,'23_1.jpg',23),(46,'23_2.jpg',23),(47,'24_1.jpg',24),(48,'24_1.jpg',24),(49,'25_1.jpg',25),(50,'25_2.jpg',25),(51,'26_1.jpg',26),(52,'26_2.jpg',26),(53,'27_1.jpg',27),(54,'27_2.jpg',27),(55,'28_1.jpg',28),(56,'28_2.jpg',28),(57,'29_1.jpg',29),(58,'29_2.jpg',29),(59,'30_1.jpg',30),(60,'30_2.jpg',30),(61,'31_1.jpg',31),(62,'32_2.jpg',31),(63,'32_1.jpg',32),(64,'32_2.jpg',32),(65,'33_1.jpg',33),(66,'33_2.jpg',33),(67,'34_1.jpg',34),(68,'34_2.jpg',34),(69,'35_1.jpg',35),(70,'35_2.jpg',35),(71,'36_1.jpg',36),(72,'36_2.jpg',36),(73,'37_1.jpg',37),(74,'37_2.jpg',37),(75,'38_1.jpg',38),(76,'38_2.jpg',38),(77,'41_1.jpg',39),(78,'41_2.jpg',39),(79,'42_1.jpg',40),(80,'42_2.jpg',40),(81,'43_1.jpg',41),(82,'43_2.jpg',41),(83,'44_1.jpg',42),(84,'44_2.jpg',42),(85,'45_1.jpg',43),(86,'45_2.jpg',43),(87,'46_1.jpg',44),(88,'46_2.jpg',44),(89,'47_1.jpg',45),(90,'47_2.jpg',45),(91,'48_1.jpg',46),(92,'48_2.jpg',46),(93,'49_1.jpg',47),(94,'49_2.jpg',47),(95,'50_1.jpg',48),(96,'50_2.jpg',48),(97,'51_1.jpg',49),(98,'51_2.jpg',49),(99,'52_1.jpg',50),(100,'52_2.jpg',50),(101,'53_1.jpg',51),(102,'53_2.jpg',51),(103,'54_1.jpg',52),(104,'54_2.jpg',52),(105,'55_1.jpg',53),(106,'55_2.jpg',53),(107,'56_1.jpg',54),(108,'56_2.jpg',54),(109,'57_1.jpg',55),(110,'57_2.jpg',55),(111,'58_1.jpg',56),(112,'58_2.jpg',56),(113,'59_1.jpg',57),(114,'59_2.jpg',57),(115,'60_1.jpg',58),(116,'60_2.jpg',58),(117,'61_1.jpg',59),(118,'61_2.jpg',59),(119,'62_1.jpg',60),(120,'62_2.jpg',60),(121,'63_1.jpg',61),(122,'63_2.jpg',61),(123,'64_1.jpg',62),(124,'64_2.jpg',62),(125,'65_1.jpg',63),(126,'65_2.jpg',63),(127,'66_1.jpg',64),(128,'66_2.jpg',64),(129,'67_1.jpg',65),(130,'67_2.jpg',65),(131,'68_1.jpg',66),(132,'68_2.jpg',66),(133,'69_1.jpg',67),(134,'69_2.jpg',67),(135,'70_1.jpg',68),(136,'70_2.jpg',68),(137,'71_1.jpg',69),(138,'71_2.jpg',69),(139,'72_1.jpg',70),(140,'72_2.jpg',70),(141,'73_1.jpg',71),(142,'73_2.jpg',71),(143,'74_1.jpg',72),(144,'74_2.jpg',72),(145,'75_1.jpg',73),(146,'75_2.jpg',73),(147,'76_1.jpg',74),(148,'76_2.jpg',74),(149,'77_1.jpg',75),(150,'77_2.jpg',75),(151,'78_1.jpg',76),(152,'78_2.jpg',76),(153,'79_1.jpg',77),(154,'79_2.jpg',77),(155,'80_1.jpg',78),(156,'80_2.jpg',78),(157,'81_1.jpg',79),(158,'81_2.jpg',79),(159,'82_1.jpg',80),(160,'82_2.jpg',80),(161,'83_1.jpg',81),(162,'83_2.jpg',81),(163,'84_1.jpg',82),(164,'84_2.jpg',82),(165,'85_1.jpg',83),(166,'85_2.jpg',83),(167,'87_1.jpg',84),(168,'87_2.jpg',84),(169,'88_1.jpg',85),(170,'88_2.jpg',85),(171,'89_1.jpg',86),(172,'89_2.jpg',86),(173,'90_1.jpg',87),(174,'90_2.jpg',87),(175,'91_1.jpg',88),(176,'91_2.jpg',88),(177,'92_1.jpg',89),(178,'92_2.jpg',89),(179,'93_1.jpg',90),(180,'93_2.jpg',90),(181,'94_1.jpg',91),(182,'94_2.jpg',91),(183,'95_1.jpg',92),(184,'95_2.jpg',92),(185,'96_1.jpg',93),(186,'96_1.jpg',93),(187,'97_1.jpg',94),(188,'97_1.jpg',94),(189,'98_1.jpg',95),(190,'98_2.jpg',95),(191,'99_1.jpg',96),(192,'99_2.jpg',96),(193,'100_1.jpg',97),(194,'100_2.jpg',97),(195,'101_1.jpg',98),(196,'101_2.jpg',98),(197,'102_1.jpg',99),(198,'102_2.jpg',99),(199,'103_1.jpg',100),(200,'103_2.jpg',100),(201,'104_1.jpg',101),(202,'104_2.jpg',101),(203,'105_1.jpg',102),(204,'105_2.jpg',102),(205,'106_1.jpg',103),(206,'106_2.jpg',103),(207,'107_1.jpg',104),(208,'107_2.jpg',104),(209,'108_1.jpg',105),(210,'108_2.jpg',105),(211,'109_1.jpg',106),(212,'109_2.jpg',106),(213,'110_1.jpg',107),(214,'110_2.jpg',107),(215,'111_1.jpg',108),(216,'111_2.jpg',108),(217,'112_1.jpg',109),(218,'112_2.jpg',109),(219,'113_1.jpg',110),(220,'113_2.jpg',110),(221,'114_1.jpg',111),(222,'114_2.jpg',111),(223,'115_1.jpg',112),(224,'115_2.jpg',112),(225,'116_1.jpg',113),(226,'117_1.jpg',114),(227,'117_2.jpg',114),(228,'118_1.jpg',115),(229,'118_2.jpg',115),(230,'119_1.jpg',116),(231,'119_2.jpg',116),(232,'120_1.jpg',117),(233,'120_2.jpg',117),(234,'121_1.jpg',118),(235,'121_2.jpg',118),(236,'122_1.jpg',119),(237,'122_2.jpg',119),(238,'123_1.jpg',120),(239,'123_2.jpg',120),(240,'124_1.jpg',121),(241,'124_2.jpg',121),(242,'125_1.jpg',122),(243,'125_2.jpg',122),(244,'127_1.jpg',123),(245,'127_2.jpg',123),(246,'116_2.jpg',113),(247,'128_1.jpg',124),(248,'128_2.jpg',124),(249,'129_1.jpg',125),(250,'129_2.jpg',125),(251,'130_1.jpg',126),(252,'130_2.jpg',126),(253,'131_1.jpg',127),(254,'131_2.jpg',127),(255,'132_1.jpg',128),(256,'132_2.jpg',128),(257,'133_1.jpg',129),(258,'133_2.jpg',129),(259,'134_1.jpg',130),(260,'134_2.jpg',130),(261,'135_1.jpg',131),(262,'135_2.jpg',131),(263,'136_1.jpg',132),(264,'136_2.jpg',132),(265,'137_1.jpg',133),(266,'137_2.jpg',133),(267,'138_1.jpg',134),(268,'138_2.jpg',134),(269,'139_1.jpg',135),(270,'139_2.jpg',135),(271,'140_1.jpg',136),(272,'140_2.jpg',136),(273,'141_1.jpg',137),(274,'141_2.jpg',137),(275,'142_1.jpg',138),(276,'142_2.jpg',138),(277,'143_1.jpg',139),(278,'143_2.jpg',139),(279,'144_1.jpg',140),(280,'144_2.jpg',140),(281,'145_1.jpg',141),(282,'145_2.jpg',141),(283,'146_1.jpg',142),(284,'146_2.jpg',142),(285,'147_1.jpg',143),(286,'147_2.jpg',143),(287,'148_1.jpg',144),(288,'148_2.jpg',144),(289,'149_1.jpg',145),(290,'149_2.jpg',145),(291,'150_1.jpg',146),(292,'150_1.jpg',146),(293,'151_1.jpg',147),(294,'152_1.jpg',148),(295,'152_2.jpg',148),(296,'153_1.jpg',149),(297,'153_2.jpg',149),(298,'154_1.jpg',150),(299,'154_2.jpg',150),(300,'155_1.jpg',151),(301,'155_2.jpg',151),(302,'156_1.jpg',152),(303,'156_2.jpg',152),(304,'157_1.jpg',153),(305,'157_2.jpg',153),(306,'158_1.jpg',154),(307,'158_2.jpg',154),(308,'159_1.jpg',155),(309,'159_2.jpg',155),(310,'160_1.jpg',156),(311,'160_2.jpg',156),(312,'161_1.jpg',157),(313,'161_2.jpg',157),(314,'162_1.jpg',158),(315,'162_2.jpg',158),(316,'163_1.jpg',159),(317,'163_2.jpg',159),(318,'164_1.jpg',160),(319,'164_2.jpg',160),(320,'165_1.jpg',161),(321,'165_2.jpg',161),(322,'166_1.jpg',162),(323,'166_2.jpg',162),(324,'167_1.jpg',163),(325,'167_2.jpg',163),(326,'168_1.jpg',164),(327,'168_2.jpg',164),(328,'169_1.jpg',165),(329,'169_2.jpg',165),(330,'170_1.jpg',166),(331,'170_2.jpg',166),(332,'171_1.jpg',167),(333,'171_2.jpg',167),(334,'172_1.jpg',168),(335,'172_2.jpg',168),(336,'173_1.jpg',169),(337,'173_2.jpg',169),(338,'151_2.jpg',147),(339,'174_1.jpg',170),(340,'174_2.jpg',170),(341,'175_1.jpg',171),(342,'175_2.jpg',171),(343,'176_1.jpg',172),(344,'176_2.jpg',172),(345,'177_1.jpg',173),(346,'177_2.jpg',173),(347,'178_1.jpg',174),(348,'178_2.jpg',174),(349,'179_1.jpg',175),(350,'179_2.jpg',175),(351,'180_1.jpg',176),(352,'180_2.jpg',176),(353,'181_1.jpg',177),(354,'181_2.jpg',177),(355,'182_1.jpg',178),(356,'182_2.jpg',178),(357,'183_1.jpg',179),(358,'183_2.jpg',179),(359,'184_1.jpg',180),(360,'184_2.jpg',180),(361,'185_1.jpg',181),(362,'185_2.jpg',181),(363,'186_1.jpg',182),(364,'186_2.jpg',182),(365,'187_1.jpg',183),(366,'187_2.jpg',183),(367,'188_1.jpg',184),(368,'188_2.jpg',184),(369,'189_1.jpg',185),(370,'189_2.jpg',185),(371,'190_1.jpg',186),(372,'190_2.jpg',186),(391,'upload353825883246849177.jpg',187),(392,'upload6655939785294364457.jpg',187),(393,'200_1.jpg',188),(394,'200_2.jpg',188),(395,'201_1.jpg',189),(396,'201_2.jpg',189);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isRep` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmv088mdste5ik1pv4x7iuewyl` (`userId`),
  CONSTRAINT `FKmv088mdste5ik1pv4x7iuewyl` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'Your staff is so kind',2,'anhquoc1311@gmail.com','false'),(2,'It\'s been 10 days and i haven\'t seen my purchase. ',3,'nguyenwangsang1104@gmail.com','true'),(3,'The  price is reasonable, and the items are outstanding.',2,'anhquoc1311@gmail.com','false');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `subTotal` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsahrxweh8731a9xh36b0fig6r` (`orderId`),
  KEY `FKqin7tg4v41eecosrpqs37b7js` (`productId`),
  CONSTRAINT `FKqin7tg4v41eecosrpqs37b7js` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKsahrxweh8731a9xh36b0fig6r` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,5,'S',1,167,1450),(2,1,'S',2,8,380),(3,1,'S',3,108,600),(4,1,'Waist: 71cm Length: 76cm',4,10,850),(5,1,'S',4,2,330),(6,1,'Waist: 71cm Length: 76cm',5,10,850),(7,3,'S',6,125,750),(8,2,'S',6,6,760),(9,1,'M',7,101,540),(10,1,'S',8,2,330),(11,1,'S',9,160,310),(12,1,'S',10,2,330),(13,9,'S',11,110,5400),(14,1,'M',11,109,600);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `orderTotal` double DEFAULT NULL,
  `userEntityId` int(11) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  `orderSubtotal` double DEFAULT NULL,
  `shippingFee` double DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq3xnmwy8e3hknkf212rnpg34i` (`userEntityId`),
  KEY `FKdtdni7ngxrs3bqwg865ftwhpc` (`stateId`),
  CONSTRAINT `FKdtdni7ngxrs3bqwg865ftwhpc` FOREIGN KEY (`stateId`) REFERENCES `state` (`id`),
  CONSTRAINT `FKq3xnmwy8e3hknkf212rnpg34i` FOREIGN KEY (`userEntityId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'49 Dinh Cong Trang, phuong Thuan Phuoc, quan Hai Chau, thanh pho Da Nang','2018-03-30 05:53:07','anhquoc1311@gmail.com','Ho Van Anh Quoc','                        ','0263113114',1450,2,5,1450,0,0),(2,'190 Le Thanh Nghi, hải châu','2018-03-30 10:46:12','nguyenwangsang1104@gmail.com','Nguyen Wang Sang','                        ','0263114115',430,3,2,380,50,0),(3,'49 Dinh Cong Trang, phuong Thuan Phuoc, quan Hai Chau, thanh pho Da Nang','2018-03-30 10:56:41','anhquoc1311@gmail.com','Ho Van Anh Quoc','                        ','0263113114',600,2,3,600,0,0),(4,'49 Dinh Cong Trang, phuong Thuan Phuoc, quan Hai Chau, thanh pho Da Nang','2018-03-31 12:19:20','anhquoc1311@gmail.com','Ho Van Anh Quoc','                        ','0263113114',1180,2,2,1180,0,0),(5,'49 Dinh Cong Trang, phuong Thuan Phuoc, quan Hai Chau, thanh pho Da Nang','2018-03-31 12:43:51','anhquoc1311@gmail.com','Ho Van Anh Quoc','                        ','0263113114',850,2,4,850,0,0),(6,'12 Nui Thanh','2018-03-31 09:25:26','huynhdanghung1996@gmail.com','Huynh Dang Hung','','01333333',1510,4,1,1510,0,0),(7,'49 Dinh Cong Trang, phuong Thuan Phuoc, quan Hai Chau, thanh pho Da Nang','2018-03-31 10:13:52','anhquoc1311@gmail.com','Ho Van Anh Quoc','                        ','0263113114',540,2,1,540,0,0),(8,'12 Nui Thanh','2018-03-31 11:28:54','huynhdanghung1996@gmail.com','Huynh Dang Hung','                        ','01333333',380,4,2,330,50,0),(9,'34 New York City','2018-03-31 12:37:43','peterparker@gmail.com','Peter Parker','                        ','0905123321',298,5,1,310,50,20),(10,'12 le duan','2018-03-31 03:11:07','anhquoc1134@gmail.com','Ho Anh Quoc','                        ','123123',314,6,5,330,50,20),(11,'49 Dinh Cong Trang, phuong Thuan Phuoc, quan Hai Chau, thanh pho Da Nang','2018-04-03 08:03:25','anhquoc1311@gmail.com','Ho Van Anh Quoc','                        ','0263113114',6000,2,1,6000,0,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pass_word`
--

DROP TABLE IF EXISTS `pass_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pass_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashedPass` varchar(255) DEFAULT NULL,
  `keyHash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass_word`
--

LOCK TABLES `pass_word` WRITE;
/*!40000 ALTER TABLE `pass_word` DISABLE KEYS */;
INSERT INTO `pass_word` VALUES (1,'E5B148A43B9556CD2A802558F0ED5B62B8C8431261AAB8C7D4C886296FC18185','JILNCTGL3BY7H3K1'),(2,'78BE7F8C306C05C91F8ECC6742E683923296A67EC7269657ECDACE8F7D9C0F83','UZ6M0RF6P0JUOMMB'),(3,'E7FDFCB297F8D1E86C8A3DBA438BA868694AFFC8AAA3DA1E6E5252430074260E','XSMHQ6QAKSEGH5I2'),(4,'ECD5659663B1BC7FBD61E89F54091E4C02F4B6D0F7DEB0E4F524E68C9C42D8A2','1V8HWB9YGQ61P83C'),(5,'5FD18C8C701EFE815A3E2AFE259F087B10558B1746BFA60EEAA60CE9448B7791','U1U5B041EMXRVGXX'),(6,'FE2738A39D0C6DB4095B98015FDBCCCA0315E086F23F32ACEAEB8C8690B60A2D','X60QH6K1TORV7NZC');
/*!40000 ALTER TABLE `pass_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `isDel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6i3ku5n5njmijfxwv43ktj2ki` (`categoryId`),
  CONSTRAINT `FK6i3ku5n5njmijfxwv43ktj2ki` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',330,'Engineered Rookie Shirt',1,'true'),(2,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',330,'Army Corps Lite Long Sleeve Shirt',1,'true'),(3,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',330,'Poolside Slim Shirt',1,'true'),(4,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',330,'Rookie Long Sleeve Shirt',1,'true'),(5,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',380,'Dragway Patch Denim Shirt',1,'true'),(6,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',380,'Pinpoint Oxford Shirt',1,'true'),(7,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',380,'Army Corps Lite Short Sleeve Shirt',1,'true'),(8,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',380,'Ultimate University Oxford Shirt',1,'true'),(9,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',380,'Dragway Denim Shirt',1,'true'),(10,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',850,'Slim Jeans',2,'true'),(11,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',850,'Slim Jeans',2,'true'),(12,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',850,'Slim Jeans',2,'true'),(13,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',850,'Slim Jeans',2,'true'),(14,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',680,'Slim Jeans',2,'true'),(15,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',680,'Slim Low Rider Jeans',2,'true'),(16,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',680,'Slim Low Rider Jeans',2,'true'),(17,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',750,'Slim Low Rider Jeans',2,'true'),(18,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',750,'Slim Low Rider Jeans',2,'true'),(19,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',750,'Call Sheet Corporal Jeans',2,'true'),(20,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',750,'Call Sheet Corporal Jeans',2,'true'),(21,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',550,'Call Sheet Corporal Jeans',2,'true'),(22,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',550,'Call Sheet Corporal Jeans',2,'true'),(23,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',300,'Rookie Para Parka Jacket',3,'true'),(24,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',300,'Premium Leather Racer Jacket',3,'true'),(25,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',300,'Power Fade Jacket',3,'true'),(26,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',450,'SDR Wax Flight Bomber',3,'true'),(27,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',450,'Microfibre Hooded SD-Windattacker',3,'true'),(28,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',450,'Hooded SD-Windtrekker Jacket',3,'true'),(29,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',450,'Hooded SD-Windtrekker Jacket',3,'true'),(30,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',420,'Hooded SD-Windtrekker Jacket',3,'true'),(31,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',420,'Real Hero Leather Biker Jacket',3,'true'),(32,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',420,'Superdry Premium Rogue Trench Coat',3,'true'),(33,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',420,'Colour Stripe Fuji Jacket',3,'true'),(34,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',380,'Caleb Hooded Bomber Jacket',3,'true'),(35,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',380,'Rookie Deck Patched Jacket',3,'true'),(36,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',380,'SD Endurance Custom Leather Jacket',3,'true'),(37,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',380,'Power Fade Jacket',3,'true'),(38,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',390,'Leather Rotor Jacket',3,'true'),(39,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',540,'Orange Label Hyper Pop Zip Hoodie',4,'true'),(40,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',540,'Storm Mountain Zip Hoodie',4,'true'),(41,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',540,'World Tour Hoodie',4,'true'),(42,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',540,'Trackster Baseball Hoodie',4,'true'),(43,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',630,'Premium Goods Raglan Hoodie',4,'true'),(44,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',630,'Sweat Shirt Store Tri Hoodie',4,'true'),(45,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',630,'Orange Label Zip Hoodie',4,'true'),(46,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',630,'LA Athletic Zip Hoodie',4,'true'),(47,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',320,'Super 77 Surf Raglan Zip Hoodie',4,'true'),(48,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',320,'Orange Label Hyper Pop Hoodie',4,'true'),(49,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',320,'Sweat Shirt Store Tri Hoodie',4,'true'),(50,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',320,'Trackster Zip Hoodie',4,'true'),(51,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',390,'Storm Mountain Zip Hoodie',4,'true'),(52,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',390,'Orange Label Lite Zip Hoodie',4,'true'),(53,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',390,'Premium Goods Duo Hoodie',4,'true'),(54,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',390,'Orange Label Lite Hoodie',4,'true'),(55,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',450,'Jean AE form Super Skinny',2,'true'),(56,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',450,'Jean AEO form Slim',2,'true'),(57,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',450,'Jean AE form Super Skinny',2,'true'),(58,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',450,'AEO Jean Slim Fit',2,'true'),(59,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',450,'Jean AEO Slim Taper',2,'true'),(60,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',600,'Jean  East West form Slim',2,'true'),(61,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',600,'Jean American Eagle Extreme Skinny',2,'true'),(62,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',600,'Jean AE 360 Flex Slim',2,'true'),(63,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',600,'Jean American Ealge Slim Straight',2,'true'),(64,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',650,'Jean AE Slim Straight',2,'true'),(65,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',650,'Hollister Jean Classic Straight',2,'true'),(66,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',650,'Jean Pacsun Skinny màu kem',2,'true'),(67,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',650,'Khaki Penguin Straight màu Kalp',2,'true'),(68,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',700,'AEO Extreme Skinny Jean',2,'true'),(69,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',700,'AEO Jean Straight',2,'true'),(70,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',700,'Jean Hollister Skinny ',2,'true'),(71,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',700,'Abercrombie Slim Chino Pant',2,'true'),(72,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',800,'Jean Hollister Skinny Ankle ',2,'true'),(73,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',800,'Jean nam Levis 513',2,'true'),(74,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',800,'Jean DCShoes form Straight',2,'true'),(75,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',800,'Jean Lee Comfort Fit',2,'true'),(76,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',550,'Jean Lee form Regular',2,'true'),(77,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',550,'Jean Quiksilver slim fit',2,'true'),(78,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',550,'Hollister Slim Straight màu ghi',2,'true'),(79,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',550,'Jean Quiksilver form Taper',2,'true'),(80,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',900,'Jean nam Lee Slim',2,'true'),(81,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',900,'Jean Pacsun Skinny',2,'true'),(82,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',900,'Jean AE form Skinny SA',2,'true'),(83,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',900,'Jean AE form  Skinny',2,'true'),(84,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',520,'Rookie Military Jacket',3,'true'),(85,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',520,'Double Zip Tweed Fuji Hooded Jacket',3,'true'),(86,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',520,'Fuji Tweed Triple Zip Through Jacket',3,'true'),(87,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',520,'Pop Zip Hooded Arctic SD-Windcheater Jacket',3,'true'),(88,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',470,'Pop Zip Hooded Arctic SD-Windcheater Jacket',3,'true'),(89,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',470,'Hooded SD-Windtrekker Jacket',3,'true'),(90,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',470,'Faux Fur Trimmed Everest Coat',3,'true'),(91,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',470,'Pop Zip Hooded Arctic SD-Windcheater Jacket',3,'true'),(92,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',360,'Faux Fur Trimmed Everest Coat',3,'true'),(93,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',360,'Pop Zip Hooded Arctic SD-Windcheater Jacket',3,'true'),(94,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',360,'Super Slalom Ski Jacket',3,'true'),(95,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',360,'Rookie Heavy Weather Field Jacket',3,'true'),(96,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',330,'Super SD Multi Jacket',3,'true'),(97,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',330,'Polar SD-Windattacker Jacket',3,'true'),(98,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',330,'Hooded SD-Windtrekker Jacket',3,'true'),(99,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',330,'Polar SD-Wind Attacker Jacket',3,'true'),(100,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',540,'Premium Ultimate Down Jacket',3,'true'),(101,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',540,'Microfibre Hooded SD-Windattacker',3,'true'),(102,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',540,'Fuji Triple Zip Through Jacket',3,'true'),(103,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',540,'Ski Assassin Down Puffer Jacket',3,'true'),(104,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',570,'Polar SD-Windattacker Jacket',3,'true'),(105,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',570,'Rookie Military Parka Jacket',3,'true'),(106,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',570,'Polar Sports Puffer Jacket',3,'true'),(107,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',570,'Super SD Multi Jacket',3,'true'),(108,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',600,'Base Jumper Jacket',3,'true'),(109,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',600,'Polar SD-Wind Attacker Jacket',3,'true'),(110,'Superdry men\'s SD-3 Parka jacket. A classic style parka jacket with a hood. The jacket features a removable faux fur trim on the drawstring hood, a zip and toggle button fastening, five outer pockets, one inner pocket and ribbed cuffs',600,'Micro Quilt Hooded Down Jacket',3,'true'),(111,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',430,'Spray On Skinny Jeans',2,'true'),(112,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',430,'Slim Jeans',2,'true'),(113,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',430,'Skinny Jeans',2,'true'),(114,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',460,'Loose Jean',2,'true'),(115,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',460,'Spray On Skinny Jeans',2,'true'),(116,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',460,'Slim Low Rider Jeans',2,'true'),(117,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',460,'Spray On Skinny Jeans',2,'true'),(118,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',540,'Slim Low Rider Jeans',2,'true'),(119,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',540,'Straight Jean',2,'true'),(120,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',540,'Officer Jeans',2,'true'),(121,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',540,'Oversized Tapered Jeans',2,'true'),(122,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',600,'Slim Low Jeans',2,'true'),(123,'Superdry men’s Loose Jeans. A pair of relaxed fit denim exclusive indigo jeans in the classic five pocket design with a button fly. The jeans feature a Vintage Superdry logo on the coin pocket',600,'Slim Rider Jeans',2,'true'),(124,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',250,'Ultimate University Oxford Shirt',1,'true'),(125,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',250,'Dragway Patch Denim Shirt',1,'true'),(126,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',250,'Lumberjack Lite Shirt',1,'true'),(127,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',250,'Shoreditch Button Down Shirt',1,'true'),(128,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',250,'Pinpoint Oxford Shirt',1,'true'),(129,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Lumberjack Lite Shirt',1,'true'),(130,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Academy Sails Button Down Shirt',1,'true'),(131,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Engineered Rookie Shirt',1,'true'),(132,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Pinpoint Oxford Shirt',1,'true'),(133,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',320,'Lumberjack Lite Shirt',1,'true'),(134,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',320,'Army Corps Lite Long Sleeve Shirt',1,'true'),(135,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',320,'Ultimate University Oxford Shirt',1,'true'),(136,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',320,'Engineered Rookie Shirt',1,'true'),(137,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',320,'Poolside Slim Shirt',1,'true'),(138,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',350,'Washbasket Long Sleeve Shirt',1,'true'),(139,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',350,'Pinpoint Oxford Shirt',1,'true'),(140,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',350,'Washbasket Long Sleeve Shirt',1,'true'),(141,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',350,'Premium Button Down Long Sleeve Shirst',1,'true'),(142,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',350,'Ultimate University Oxford Shirt',1,'true'),(143,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',270,'Dragway Denim Shirt',1,'true'),(144,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',270,'Academy Sails Button Down Shirt',1,'true'),(145,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',270,'Cut Away Collar Shirt',1,'true'),(146,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',270,'Rookie Long Sleeve Shirt',1,'true'),(147,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',340,'Army Corps Lite Short Sleeve Shirt',1,'true'),(148,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',340,'Dragway Denim Shirt',1,'true'),(149,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',360,'Ultimate University Oxford Shirt',1,'true'),(150,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',360,'Boston Button Down Shirt',1,'true'),(151,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',360,'Premium Button Down Long Sleeve Shirt',1,'true'),(152,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',360,'Cut Away Collar Shirt',1,'true'),(153,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',360,'Washbasket Short Sleeve Shirt',1,'true'),(154,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',280,'Boston Button Down Shirt',1,'true'),(155,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',280,'Washbasket Short Sleeve Shirt',1,'true'),(156,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',280,'Premium Button Down Long Sleeve Shirt',1,'true'),(157,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',280,'Cut Away Collar Shirt',1,'true'),(158,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',280,'London Button Down Shirt',1,'true'),(159,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',310,'Ultimate Tweed Shirt',1,'true'),(160,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',310,'Tailored Long Sleeved Slim Shirt',1,'true'),(161,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',310,'Tailored Long Sleeved Slim Shirt',1,'true'),(162,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',310,'Milled Flannel Shirt',1,'true'),(163,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',310,'Tailored Long Sleeved Slim Shirt',1,'true'),(164,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Academy Oxford Shirt',1,'true'),(165,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Ultimate Hounds Shirt',1,'true'),(166,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Roadster Denim Shirt',1,'true'),(167,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Academy Oxford Shirt',1,'true'),(168,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Ultimate Hounds Shirt',1,'true'),(169,'Superdry men’s Poolside slim shirt. This button down shirt features a single chest pocket and buttoned collar and cuffs. The Poolside slim shirt is finished with a Superdry logo tab on the pocket and on the hem and a Superdry logo patch on the placket. ',290,'Ultimate Hounds Shirt',1,'true'),(170,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',250,'Vintage Logo Cali Stripe Hoodie',4,'true'),(171,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',250,'Orange Label Urban Flash Zip Hoodie',4,'true'),(172,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',250,'Vintage Logo Cali Stripe Hoodie',4,'true'),(173,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',250,'Trophy Chest Band Hoodie',4,'true'),(174,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',250,'Trophy Chest Band Hoodie',4,'true'),(175,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',430,'Trophy Chest Band Hoodie',4,'true'),(176,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',430,'Trophy Sleeve Panel Zip Hoodie',4,'true'),(177,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',430,'Famous Flyers Hoodie',4,'true'),(178,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',430,'Orange Label Zip Hoodie',4,'true'),(179,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',430,'Storm Mountain Zip Hoodie',4,'true'),(180,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',370,'Trackster Zip Hoodie',4,'true'),(181,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',370,'Premium Goods Zip Hoodie',4,'true'),(182,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',370,'Premium Goods Duo Hoodie',4,'true'),(183,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',370,'Premium Goods Raglan Hoodie',4,'true'),(184,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',370,'World Wide Ticket Type Zip Hoodie',4,'true'),(185,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',260,'Premium Goods Tri Hoodie',4,'true'),(186,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',320,'Super 77 Surf Raglan Hoodie',4,'true'),(187,'Super Jacket',300,'Ultimate Jacket',3,'false'),(188,'Superdry men’s Premium Goods tri hoodie. This comfortable hoodie features a cracked effect tri-colour Superdry Premium Goods logo across the chest, a front pouch pocket and a drawstring adjustable hood',320,'Hoodie America',4,'true'),(189,'Anh Quoc',330,'Dang Hung ',3,'true');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_quantity`
--

DROP TABLE IF EXISTS `product_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_quantity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_quantity`
--

LOCK TABLES `product_quantity` WRITE;
/*!40000 ALTER TABLE `product_quantity` DISABLE KEYS */;
INSERT INTO `product_quantity` VALUES (1,0),(2,279),(3,298),(4,0),(5,0),(6,297),(7,296),(8,299),(9,300),(10,291),(11,297),(12,299),(13,300),(14,300),(15,300),(16,299),(17,300),(18,300),(19,300),(20,299),(21,300),(22,300),(23,300),(24,300),(25,300),(26,300),(27,300),(28,292),(29,300),(30,300),(31,300),(32,300),(33,300),(34,300),(35,300),(36,300),(37,300),(38,299),(39,300),(40,300),(41,300),(42,300),(43,300),(44,299),(45,300),(46,300),(47,300),(48,299),(49,300),(50,300),(51,300),(52,300),(53,300),(54,300),(55,300),(56,299),(57,294),(58,300),(59,300),(60,300),(61,300),(62,300),(63,299),(64,300),(65,300),(66,300),(67,300),(68,300),(69,300),(70,300),(71,300),(72,300),(73,300),(74,300),(75,297),(76,299),(77,300),(78,300),(79,300),(80,0),(81,299),(82,299),(83,300),(84,300),(85,299),(86,300),(87,299),(88,300),(89,300),(90,300),(91,300),(92,300),(93,300),(94,300),(95,299),(96,300),(97,0),(98,299),(99,299),(100,298),(101,298),(102,300),(103,294),(104,296),(105,300),(106,300),(107,293),(108,298),(109,291),(110,290),(111,299),(112,300),(113,290),(114,299),(115,296),(116,296),(117,300),(118,297),(119,300),(120,297),(121,295),(122,0),(123,298),(124,300),(125,296),(126,299),(127,300),(128,300),(129,300),(130,300),(131,300),(132,300),(133,300),(134,300),(135,300),(136,300),(137,300),(138,299),(139,290),(140,300),(141,300),(142,299),(143,300),(144,298),(145,300),(146,300),(147,300),(148,300),(149,300),(150,300),(151,300),(152,300),(153,298),(154,300),(155,300),(156,299),(157,299),(158,299),(159,300),(160,298),(161,299),(162,297),(163,296),(164,297),(165,0),(166,294),(167,291),(168,0),(169,0),(170,300),(171,299),(172,300),(173,297),(174,300),(175,295),(176,298),(177,298),(178,298),(179,297),(180,299),(181,0),(182,295),(183,299),(184,0),(185,276),(186,300),(196,200),(197,200),(198,123);
/*!40000 ALTER TABLE `product_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Role_User'),(2,'Role_Admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sizeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'S'),(2,'M'),(3,'L'),(4,'XL'),(5,'Waist: 71cm  Length: 76cm'),(6,'Waist: 71cm  Length: 81cm'),(7,'Waist: 76cm  Length: 76cm'),(8,'Waist: 76cm  Length: 81cm'),(9,'Waist: 81cm  Length: 76cm'),(10,'Waist: 81cm  Length: 81cm');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Being Prepared'),(2,'On Hold'),(3,'Delivering'),(4,'Canceled'),(5,'Received Successfully');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `isDel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8yhl7wdo39n3ee04f8rpajces` (`roleId`),
  CONSTRAINT `FK8yhl7wdo39n3ee04f8rpajces` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'12 Ngu Hanh Son','admin@gmail.com','admin_DangHung','0511113113',2,'true'),(2,'49 Dinh Cong Trang, phuong Thuan Phuoc, quan Hai Chau, thanh pho Da Nang','anhquoc1311@gmail.com','Ho Van Anh Quoc','0263113114',1,'true'),(3,'190 Le Thanh Nghi, hải châu','nguyenwangsang1104@gmail.com','Nguyen Wang Sang','0263114115',1,'true'),(4,'12 Nui Thanh','huynhdanghung1996@gmail.com','Huynh Dang Hung','01333333',1,'true'),(5,'34 New York City','peterparker@gmail.com','Peter Parker','0905123321',1,'true'),(6,'12 le duan','anhquoc1134@gmail.com','Ho VAn Anh Quoc','123123',1,'true');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view`
--

DROP TABLE IF EXISTS `view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view`
--

LOCK TABLES `view` WRITE;
/*!40000 ALTER TABLE `view` DISABLE KEYS */;
INSERT INTO `view` VALUES (1,115),(2,121),(3,126),(4,105),(5,108),(6,118),(7,109),(8,108),(9,101),(10,116),(11,105),(12,104),(13,101),(14,100),(15,100),(16,100),(17,102),(18,100),(19,101),(20,103),(21,100),(22,103),(23,101),(24,100),(25,100),(26,134),(27,112),(28,146),(29,111),(30,110),(31,130),(32,118),(33,118),(34,119),(35,132),(36,127),(37,122),(38,101),(39,100),(40,142),(41,100),(42,118),(43,100),(44,100),(45,100),(46,100),(47,100),(48,101),(49,100),(50,100),(51,100),(52,102),(53,100),(54,100),(55,101),(56,100),(57,100),(58,100),(59,100),(60,100),(61,112),(62,128),(63,122),(64,100),(65,101),(66,100),(67,100),(68,100),(69,100),(70,100),(71,100),(72,101),(73,100),(74,100),(75,100),(76,100),(77,103),(78,102),(79,100),(80,100),(81,100),(82,102),(83,101),(84,101),(85,101),(86,100),(87,101),(88,101),(89,101),(90,101),(91,102),(92,142),(93,101),(94,100),(95,102),(96,100),(97,100),(98,102),(99,139),(100,107),(101,105),(102,105),(103,107),(104,109),(105,105),(106,108),(107,108),(108,118),(109,114),(110,116),(111,124),(112,111),(113,103),(114,101),(115,107),(116,104),(117,109),(118,105),(119,102),(120,105),(121,104),(122,107),(123,109),(124,122),(125,137),(126,103),(127,100),(128,100),(129,101),(130,100),(131,101),(132,100),(133,100),(134,100),(135,101),(136,105),(137,104),(138,108),(139,107),(140,111),(141,114),(142,114),(143,115),(144,101),(145,100),(146,100),(147,100),(148,101),(149,101),(150,103),(151,101),(152,107),(153,107),(154,100),(155,100),(156,101),(157,100),(158,101),(159,104),(160,104),(161,106),(162,102),(163,104),(164,106),(165,113),(166,107),(167,134),(168,112),(169,136),(170,131),(171,113),(172,111),(173,112),(174,111),(175,111),(176,114),(177,115),(178,117),(179,116),(180,118),(181,122),(182,127),(183,123),(184,128),(185,122),(186,128),(187,124),(188,129);
/*!40000 ALTER TABLE `view` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 23:53:32
