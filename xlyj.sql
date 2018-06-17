# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2018-06-17 12:00:14
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_user"
#

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `admin_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` bigint(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `sdean` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `mimi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "admin_user"
#

INSERT INTO `admin_user` VALUES (1,'123','123',NULL,NULL,NULL,NULL,NULL,NULL),(2,'456','123',NULL,NULL,NULL,NULL,NULL,NULL),(3,'admin吴智辉','admin',NULL,NULL,'雪亮眼镜行','','2018-05-05 28','哈哈'),(4,'小黄','123',NULL,NULL,NULL,NULL,'2018-04-28 15','哈哈'),(5,'小明','123',NULL,NULL,NULL,NULL,'2018-04-28 32','哈哈'),(6,'大明','123',NULL,NULL,NULL,NULL,'2018-04-28 09','哈哈'),(7,'阿黄','123',NULL,NULL,NULL,NULL,'2018-04-28 18','哈哈'),(8,'lalla','123',NULL,NULL,NULL,NULL,NULL,NULL),(9,'123','456',NULL,NULL,NULL,NULL,NULL,NULL),(10,'963','741',NULL,NULL,NULL,NULL,NULL,NULL);

#
# Structure for table "customer"
#

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lefteye` varchar(255) DEFAULT NULL,
  `sglefteye` varchar(255) DEFAULT NULL,
  `righteye` varchar(255) DEFAULT NULL,
  `sgrighteye` varchar(255) DEFAULT NULL,
  `glasses` varchar(255) DEFAULT NULL,
  `price` varchar(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `lens` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `dateNowStr` varchar(255) DEFAULT NULL,
  `a_c_id` bigint(20) DEFAULT NULL,
  `ztj` varchar(255) DEFAULT NULL,
  `xjg` varchar(255) DEFAULT NULL,
  `lensprice` varchar(255) DEFAULT NULL,
  `glassesprice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe6umpixuvi6ttf3iiepw7vmp3` (`a_c_id`),
  CONSTRAINT `FKe6umpixuvi6ttf3iiepw7vmp3` FOREIGN KEY (`a_c_id`) REFERENCES `admin_user` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Data for table "customer"
#

INSERT INTO `customer` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'SSM',13,'13','13','13','13','13','13','13','13','13','13',NULL,'',NULL,'13','13','13','13'),(8,'123',22222,'33333333','','','','','','',NULL,'','',NULL,'',1,'','','',''),(9,'22',NULL,NULL,'','','','','','','800','','',NULL,'2018-6-16',1,'','','',''),(14,'741852',NULL,NULL,'','','','','','','700','','',NULL,'2018-6-16',1,'','','',''),(16,'lalal',NULL,NULL,'','','','','','','600','','',NULL,'2018-6-16',1,'','','',''),(17,'啦啦',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','',''),(18,'娃哈哈',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','',''),(19,'乌拉拉',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','',''),(20,'ceshi',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','',''),(21,'walall',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','',''),(22,'QWE',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','',''),(23,'CESHI',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','',''),(24,'wahahh',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','',''),(25,'123456',NULL,NULL,'','','','','','',NULL,'','',NULL,'2018-6-16',1,'','','','');

#
# Structure for table "fatie"
#

DROP TABLE IF EXISTS `fatie`;
CREATE TABLE `fatie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `texthead` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "fatie"
#

INSERT INTO `fatie` VALUES (7,'123',' 测试','测试',NULL);
