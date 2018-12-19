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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'1234','1234','กรี่','ก็อต'),(2,'7079','7079','ตาอิงค์','เอง');
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
INSERT INTO `menu` VALUES (1,'ไก่ทอด',1,'พี่ให้4ชิ้น',50,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F1.jpg?alt=media&token=1c235d91-15ed-4998-8860-c6c2197203f5','0'),(2,'ไก่ทอด',2,'พี่ให้5ชิ้ยเลย',60,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F2.jpg?alt=media&token=3ffffd79-0ea4-4116-a4b6-55e7726635a0','0'),(3,'ไก่ทอด',3,'เอาไปเลย6ชิ้น',70,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F3.jpg?alt=media&token=d0a83288-91fe-46f3-b2a3-5d6c752c6b44','0'),(4,'ไก่ทอด',4,'7พอป่าว',70,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F4.jpg?alt=media&token=5d31c1ce-f88e-483f-8939-04ff3f8854fd','0'),(5,'ไก่ทอด',5,'7ก็พอแหละ',50,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F5.jpg?alt=media&token=6f48c2a1-eab2-48e2-946a-7d47ed40c976','0'),(6,'ไก่ทอด',6,'จะลองซัก8ไหม',80,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F6.jpg?alt=media&token=720f8785-22d3-46f5-8b24-6098561973ca','0'),(7,'ไก่ทอด',7,'1ชิ้นก็พอ',12,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F7.jpg?alt=media&token=b7bffb23-0276-4ef1-adad-525ec1d651bb','0'),(8,'ไก่ทอด',8,'3มะ',35,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F8.jpg?alt=media&token=565f078b-4f0b-4761-82ab-f7cda70115ab','0'),(9,'ไก่ทอด',9,'5ชิ้นละ',48,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F9.jpg?alt=media&token=d3d571f9-da3a-440b-aac4-a7f651c32c2a','0'),(10,'ไก่ทอด',10,'10 ชิ้น',100,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F10.jpg?alt=media&token=fde3489f-eace-43b7-92c5-752f7b8d74a0','0'),(11,'ไก่ทอด',11,'Don\'t be sell',0,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F11.jpg?alt=media&token=ab97cc7d-3e20-42b6-b621-ce89362899e8','10'),(12,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',1,'หมูนุ่มละมุนลิ้น',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F12.jpg?alt=media&token=8fb16dfc-b15c-4b23-8f68-b2c1d0cb1699','0'),(13,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',2,'หมูกรอบมาก',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F13.jpg?alt=media&token=11c1e331-0af8-41c1-bc39-0138904ab288','0'),(14,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',3,'ไข่นุ่มมาก',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F14.jpg?alt=media&token=bcc1a610-ff54-4115-a403-b1861a228777','0'),(15,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',4,'ไข่สองฟองไปเลย',45,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F15.jpg?alt=media&token=8024fbd0-1715-448e-a2a4-863f5d5829e6','0'),(16,'ข้าวราดผัดกระเพราหมูกรอบ ไข่ดาว',5,'ไม่ใส่ใบกระเพา',35,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F16.jpg?alt=media&token=bbaa1aaf-fb47-4554-aae2-5a70ad46a85e','1'),(17,'ข้าวไข่เจียว',6,'ใส่ไข่2ฟอง มีน้ำพริกกะปิ',35,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F17.jpg?alt=media&token=081f3e43-7e9b-4b4d-8cc6-c4acbf864126','0'),(18,'ข้าวไข่เจียว',7,'ไข่1ฟอง มีน้ำปลาพริก',30,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F19.jpg?alt=media&token=5ad32dcd-60f2-4e01-b2b1-bf68ea9c70ad','0'),(19,'ข้าวไข่เจียว',8,'ไข่3ฟอง ไม่มีอะไรเพิ่มเติม',38,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F19.jpg?alt=media&token=5ad32dcd-60f2-4e01-b2b1-bf68ea9c70ad','0'),(20,'ข้าวไข่เจียว',9,'มีแต่น้ำพริก ไข่หมด',5,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F20.jpg?alt=media&token=c523e23c-6377-413b-9ca0-45804379313e','0'),(21,'ข้าวไข่เจียว',10,'ไข่5 มีน้ำพริกกะปิ ใส่หมูด้วย',100,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F21.jpg?alt=media&token=d636ab3e-f150-45da-9d8d-e45f927cc536','0'),(22,'ข้าวไข่เจียว',11,'ไข่นกกระจอกเทศ',125,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F22.jpg?alt=media&token=702d49d1-0d8e-490f-81ae-2dd422ec14c7','0'),(23,'ข้าวราดหมูกระเทียม',1,'หมูนุ่ม',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F23.jpg?alt=media&token=0c71f86d-50dd-43bc-8556-202793da7fe3','0'),(24,'ข้าวราดหมูกระเทียม',2,'หมูนิ่ม',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F24.jpg?alt=media&token=3260ad43-6e83-41c0-9122-8f790e683628','0'),(25,'ข้าวราดหมูกระเทียม',3,'หมูอร่อย',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F25.jpg?alt=media&token=bdfac114-f7c5-4d32-a3fa-57b9b9926c12','0'),(26,'ข้าวราดหมูกระเทียม',4,'หมูไม่เหนียว',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F26.jpg?alt=media&token=a6c82b9e-cdf6-4f58-8026-6219f8a9460d','0'),(27,'ข้าวราดหมูกระเทียม',5,'ให้ข้าวเยอะ',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F27.jpg?alt=media&token=e8835475-5718-4e3e-9580-c7022b55ee38','0'),(28,'ข้าวราดไก่ทอดกระเทียม',6,'ไม่ใส่หมู',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F28.jpg?alt=media&token=59ec0367-9d62-470e-bf5d-32e2d968577d','0'),(29,'ข้าวราดไก่ทอดกระเทียม',7,'อิสลามกินได้',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F29.jpg?alt=media&token=520c7717-3e28-4762-8ccd-5bedc426a81f','0'),(30,'ข้าวราดไก่ทอดกระเทียม',8,'อิศลามห้ามกิน',35,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F30.jpg?alt=media&token=8e8379c7-b43c-47ce-a8de-acca9a07e96c','0'),(31,'ข้าวราดไก่ทอดกระเทียม',9,'ใช้อกไก่',45,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F31.jpg?alt=media&token=1aa8483e-46da-494b-8bb7-203bc0b4ac0c','0'),(32,'ข้าวราดไก่ทอดกระเทียม',10,'อร่อยมาก',50,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F32.jpg?alt=media&token=4f17a54d-6aff-4598-9641-dc511958bcdc','0'),(33,'ข้าวราดไก่ทอดกระเทียม',11,'ยังไม่ขาย',0,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F33.jpg?alt=media&token=b0cdf72e-aba2-4c76-afa8-537d55c8e576','0'),(34,'ข้าวราดปลาหมึกผัดผงกะหรี่',1,'หมึกตัวใหญ่',45,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F34.jpg?alt=media&token=bd970537-4551-491d-a6f4-d5fab9843822','0'),(35,'ข้าวราดปลาหมึกผัดผงกะหรี่',2,'ใส่เยอะ',45,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F35.jpg?alt=media&token=df76b782-b3aa-43ce-9854-311516278f67','0'),(36,'ข้าวราดปลาหมึกผัดผงกะหรี่',3,'อร่อย',45,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F36.jpg?alt=media&token=85a6f2e0-5581-4a29-98e7-eee16b6d1218','0'),(37,'ข้าวราดปลาหมึกผัดผงกะหรี่',4,'ที่สุดของปลากหมึก',50,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F37.jpg?alt=media&token=0f5322b0-5d88-43ca-975e-364f51e66b72','0'),(38,'ต้มยำกุ้ง',5,'กุ้งแม่น้ำ',320,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F38.jpg?alt=media&token=a376d2b6-f678-4b1e-a052-49d3b9b6f084','0'),(39,'ต้มยำกุ้ง',6,'กุ้งเลี้ยง',300,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F39.jpg?alt=media&token=9a1a589b-243c-4662-82de-961d5416adf1','0'),(40,'ต้มยำกุ้ง',7,'กุ้งกุลาดำ',310,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F40.jpg?alt=media&token=b66296ca-39da-4179-a6dc-80b68bd704df','0'),(41,'เฟรนช์ฟรายส์',8,'กรอบมาก',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F41.jpg?alt=media&token=7679c9c8-ed60-4081-a5ed-23625c736665','0'),(42,'เฟรนช์ฟรายส์',9,'แบบหนา',45,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F42.jpg?alt=media&token=ff891f87-f64b-4a4d-833f-2087a0155e5a','0'),(43,'เฟรนช์ฟรายส์',10,'อร่อยโคตร',45,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F43.jpg?alt=media&token=237b84f1-296e-4fa7-a9c2-f856d92ce7b5','0'),(44,'เฟรนช์ฟรายส์',11,'อันนี้ขาย',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F44.jpg?alt=media&token=a16ed154-2742-4ad5-acb5-8df2a0d8e6fc','0'),(45,'ข้าวเปล่า',1,'หอมมะลิ',10,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F45.jpg?alt=media&token=4a0861a5-11d8-4ddd-9957-42e0a3a25e45','0'),(46,'ข้าวเปล่า',2,'หอมมะลิ 100%',10,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F46.jpg?alt=media&token=ae6bba7a-fbd5-434a-af9b-0450fcc1e6c3','0'),(47,'ส้มตำไทย',3,'ตำไทย ใส่ถั่ว',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F47.jpg?alt=media&token=6dbc0bdd-1dd9-4e6e-8b78-9e8350bf3cdf','0'),(48,'ส้มตำปู',3,'ใส่ปูนะ',40,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F48.jpg?alt=media&token=6d836fea-482b-4542-a1f8-79ab12e1d91a','0'),(49,'ตำไทยใส่ปู',3,'ใส่ทั้งถั่วและปู',50,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F49.jpg?alt=media&token=375dcd73-6d73-441e-951c-6496858b01dc','0'),(50,'ข้าวเหนียว',3,'ขนาด1คนกิน',10,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/menu_dish%2F50.jpg?alt=media&token=e00de2bb-391a-4ed4-b925-1822b47ef12c','0');
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
  `shopid` int(11) NOT NULL,
  PRIMARY KEY (`orderid`,`shopid`),
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
  `shoplogo` varchar(500) DEFAULT NULL,
  `shopusername` varchar(45) NOT NULL,
  `shoppassword` varchar(45) NOT NULL,
  PRIMARY KEY (`shopid`),
  UNIQUE KEY `shopusername_UNIQUE` (`shopusername`),
  UNIQUE KEY `shoppassword_UNIQUE` (`shoppassword`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'KFfree',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2FKFfree.JPG?alt=media&token=59150afc-4c5f-4fbd-8746-84d26f5cc950','kfc','kfc'),(2,'McRonald',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2FMcronald.JPG?alt=media&token=97c855b6-0231-4339-b7cc-b3e891c77b6f','mc','mc'),(3,'Pixxarhut',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2FPizzahut.JPG?alt=media&token=21d9dcac-8856-4398-bb77-87590e481a46','pizza','pizza'),(4,'ดักกินโดนัท',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2F%E0%B8%94%E0%B8%B1%E0%B8%81%E0%B8%81%E0%B8%B4%E0%B8%99.JPG?alt=media&token=ce4b48fc-30f1-4349-bb10-4c4471900214','donut','donut'),(5,'HestiaFamilia',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2Fhestia.JPG?alt=media&token=89b69233-17f7-44b1-ae1c-25b2c2c992d2','hestia','hestia'),(6,'LokiFamilia',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2Floki.JPG?alt=media&token=6797a667-73c4-4eda-8c67-ca89aa51475d','loki','loki'),(7,'Wu',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2Fwu.JPG?alt=media&token=a7c1b5de-a548-4bb1-b96e-64f530368da7','wu','wu'),(8,'Shu',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2Fshu.JPG?alt=media&token=7f8cb51c-749b-425e-ba83-b32ad72ad95c','shu','shu'),(9,'Wei',1,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2Fwei.JPG?alt=media&token=e129fa43-a842-4e87-9ea5-2016376ab0f9','wei','wei'),(10,'Orochi',1,'gs://multioder-24b7f.appspot.com/logo/orochihttps://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2Forochi.JPG?alt=media&token=e1a19a14-0921-4e61-aea1-038951fda7e9.JPG','orochi','orochi'),(11,'Nuwa',0,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2Fnuwa.JPG?alt=media&token=394f61e8-1493-45c3-b289-7cb4c7f49a38','nuwa','nuwa'),(12,'Fuxi',0,'https://firebasestorage.googleapis.com/v0/b/multioder-24b7f.appspot.com/o/logo%2Ffuxi.JPG?alt=media&token=d359d4cd-0e45-46a1-ae25-cc3c382feb08','fuxi','fuxi');
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

-- Dump completed on 2018-12-19 15:32:13
