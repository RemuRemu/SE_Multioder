-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: seproject
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_des` longtext NOT NULL,
  `userprofile_uid` int(11) NOT NULL,
  PRIMARY KEY (`address_id`,`userprofile_uid`),
  KEY `userprofile_address_id_idx` (`userprofile_uid`),
  CONSTRAINT `userprofile_address_id` FOREIGN KEY (`userprofile_uid`) REFERENCES `userprofile` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'72/6น้า',1),(2,'72/5',1),(3,'72/6 ต.หนามแดง อ.เมือง จ.ฉะเชิงเทรา 24000',3),(4,'72/4 ต.หนามแดง อ.เมือง จ.ฉะเชิงเทรา 24000',3),(5,'คณะเทคโนโลยีสารสนเทศ 10520',3),(6,'11/12 อ.หัวหิน จ. ประจวบคีรีขันธ์ 77110',4),(7,'11/13 อ.หัวหิน จ. ประจวบคีรีขันธ์ 77110',4),(8,'11/14 อ.หัวหิน จ. ประจวบคีรีขันธ์ 77110',4);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `emid` int(11) NOT NULL AUTO_INCREMENT,
  `emuser` varchar(45) DEFAULT NULL,
  `empass` varchar(45) DEFAULT NULL,
  `emfirstname` varchar(45) DEFAULT NULL,
  `emlastname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`emid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'1234','1234','กรี่','ก็อต');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `price` float NOT NULL,
  `image` longtext NOT NULL,
  `recommend` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`shop_id`),
  KEY `shop_id_idx` (`shop_id`),
  CONSTRAINT `shop_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shopid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'ไก่ทอด',1,'พี่ให้4ชิ้น',50,'1','0'),(2,'ไก่ทอด',2,'พี่ให้5ชิ้ยเลย',60,'2','0'),(3,'ไก่ทอด',3,'เอาไปเลย6ชิ้น',70,'3','0'),(4,'ไก่ทอด',4,'7พอป่าว',70,'4','0'),(5,'ไก่ทอด',5,'7ก็พอแหละ',50,'5','0'),(6,'ไก่ทอด',6,'จะลองซัก8ไหม',80,'6','0'),(7,'ไก่ทอด',7,'1ชิ้นก็พอ',12,'7','0'),(8,'ไก่ทอด',8,'3มะ',35,'8','0'),(9,'ไก่ทอด',9,'5ชิ้นละ',48,'9','0'),(10,'ไก่ทอด',10,'10 ชิ้น',100,'10','0'),(11,'ไก่ทอด',11,'Don\'t be sell',0,'11','10'),(12,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',1,'หมูนุ่มละมุนลิ้น',40,'12','0'),(13,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',2,'หมูกรอบมาก',40,'13','0'),(14,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',3,'ไข่นุ่มมาก',40,'14','0'),(15,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',4,'ไข่สองฟองไปเลย',45,'15','0'),(16,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',5,'ไม่ใส่ใบกระเพา',35,'16','1'),(17,'ข้าวไข่เจียว',6,'ใส่ไข่2ฟอง มีน้ำพริกกะปิ',35,'17','0'),(18,'ข้าวไข่เจียว',7,'ไข่1ฟอง มีน้ำปลาพริก',30,'18','0'),(19,'ข้าวไข่เจียว',8,'ไข่3ฟอง ไม่มีอะไรเพิ่มเติม',38,'19','0'),(20,'ข้าวไข่เจียว',9,'มีแต่น้ำพริก ไข่หมด',5,'20','0'),(21,'ข้าวไข่เจียว',10,'ไข่5 มีน้ำพริกกะปิ ใส่หมูด้วย',100,'21','0'),(22,'ข้าวไข่เจียว',11,'ไข่นกกระจอกเทศ',125,'22','0'),(23,'ข้าวราดหมูกระเทียม',1,'หมูนุ่ม',40,'23','0'),(24,'ข้าวราดหมูกระเทียม',2,'หมูนิ่ม',40,'24','0'),(25,'ข้าวราดหมูกระเทียม',3,'หมูอร่อย',40,'25','0'),(26,'ข้าวราดหมูกระเทียม',4,'หมูไม่เหนียว',40,'26','0'),(27,'ข้าวราดหมูกระเทียม',5,'ให้ข้าวเยอะ',40,'27','0'),(28,'ข้าวราดไก่ทอดกระเทียม',6,'ไม่ใส่หมู',40,'28','0'),(29,'ข้าวราดไก่ทอดกระเทียม',7,'อิสลามกินได้',40,'29','0'),(30,'ข้าวราดไก่ทอดกระเทียม',8,'อิศลามห้ามกิน',35,'30','0'),(31,'ข้าวราดไก่ทอดกระเทียม',9,'ใช้อกไก่',45,'31','0'),(32,'ข้าวราดไก่ทอดกระเทียม',10,'อร่อยมาก',50,'32','0'),(33,'ข้าวราดไก่ทอดกระเทียม',11,'ยังไม่ขาย',0,'33','0'),(34,'ข้าวราดปลาหมึกผัดผงกะหรี่',1,'หมึกตัวใหญ่',45,'34','0'),(35,'ข้าวราดปลาหมึกผัดผงกะหรี่',2,'ใส่เยอะ',45,'35','0'),(36,'ข้าวราดปลาหมึกผัดผงกะหรี่',3,'อร่อย',45,'36','0'),(37,'ข้าวราดปลาหมึกผัดผงกะหรี่',4,'ที่สุดของปลากหมึก',50,'37','0'),(38,'ต้มยำกุ้ง',5,'กุ้งแม่น้ำ',320,'38','0'),(39,'ต้มยำกุ้ง',6,'กุ้งเลี้ยง',300,'39','0'),(40,'ต้มยำกุ้ง',7,'กุ้งกุลาดำ',310,'40','0'),(41,'เฟรนช์ฟรายส์',8,'กรอบมาก',40,'41','0'),(42,'เฟรนช์ฟรายส์',9,'แบบหนา',45,'42','0'),(43,'เฟรนช์ฟรายส์',10,'อร่อยโคตร',45,'43','0'),(44,'เฟรนช์ฟรายส์',11,'อันนี้ขาย',40,'44','0'),(45,'ข้าวเปล่า',1,'หอมมะลิ',10,'45','0'),(46,'ข้าวเปล่า',2,'หอมมะลิ 100%',10,'46','0'),(47,'ส้มตำไทย',3,'ตำไทย ใส่ถั่ว',40,'47','0'),(48,'ส้มตำปู',3,'ใส่ปูนะ',40,'48','0'),(49,'ตำไทยใส่ปู',3,'ใส่ทั้งถั่วและปู',50,'49','0'),(50,'ข้าวเหนียว',3,'ขนาด1คนกิน',10,'50','0');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_date` datetime NOT NULL,
  `status` enum('prepare','sending','done') NOT NULL DEFAULT 'prepare',
  `address` varchar(45) NOT NULL,
  `total` varchar(45) NOT NULL,
  `userprofile_uid` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `userprofile_order_uid_idx` (`userprofile_uid`),
  CONSTRAINT `userprofile_order_uid` FOREIGN KEY (`userprofile_uid`) REFERENCES `userprofile` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `itemnumber` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` varchar(45) NOT NULL,
  `amount` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`itemnumber`,`menu_id`,`order_id`,`shop_id`),
  UNIQUE KEY `shop_id_UNIQUE` (`shop_id`),
  KEY `menu_order_item_idx` (`menu_id`),
  KEY `order_order_item_idx` (`order_id`),
  KEY `shop_id_idx` (`shop_id`),
  CONSTRAINT `menu_order_item` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menuid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `order_order_item` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `shop_order_item` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shopid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderist`
--

DROP TABLE IF EXISTS `orderist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderist` (
  `orderid` int(11) NOT NULL,
  `status` enum('prepare','sending','done') DEFAULT 'prepare',
  `shopid` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderist`
--

LOCK TABLES `orderist` WRITE;
/*!40000 ALTER TABLE `orderist` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `order_payment_idx` (`order_id`),
  CONSTRAINT `order_payment` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `shopid` int(11) NOT NULL AUTO_INCREMENT,
  `shopname` varchar(45) NOT NULL,
  `shop_status` tinyint(4) NOT NULL,
  `shoplogo` varchar(45) DEFAULT NULL,
  `shopusername` varchar(45) DEFAULT NULL,
  `shoppassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`shopid`),
  UNIQUE KEY `shopusername_UNIQUE` (`shopusername`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'KFfree',1,'KFfree','kfc','kfc'),(2,'McRonald',1,'Mcronald','mc','mc'),(3,'Pixxarhut',1,'Pizzahut','pizza','pizza'),(4,'ดักกินโดนัท',1,'ดักกิน','donut','donut'),(5,'HestiaFamilia',1,'hestia',NULL,NULL),(6,'LokiFamilia',1,'loki',NULL,NULL),(7,'Wu',1,'wu',NULL,NULL),(8,'Shu',1,'shu',NULL,NULL),(9,'Wei',1,'wei',NULL,NULL),(10,'Orochi',1,'orochi',NULL,NULL),(11,'Nuwa',0,'nuwa',NULL,NULL),(12,'Fuxi',0,'fuxi',NULL,NULL);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprofile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
INSERT INTO `userprofile` VALUES (1,'zhinagikuz','Hinagiku12','อิศรา','โพธิ์อ่อน','59070193@kmitl.ac.th','082-7877079'),(2,'asd','asd','asd','asd','lololol@gmitl.ac.th','089-9393934'),(3,'test','test','test','test','test','082-4598956'),(4,'amp2541','2541','Patchara','Hetchara','59070116@kmitl.ac.th','088-6112111');
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-18 12:45:36
