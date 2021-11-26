-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: recommendation_spark
-- ------------------------------------------------------
-- Server version	5.7.36-google-log

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
-- Current Database: `recommendation_spark`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `recommendation_spark` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `recommendation_spark`;

--
-- Table structure for table `Accommodation`
--

DROP TABLE IF EXISTS `Accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accommodation` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `rooms` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accommodation`
--

LOCK TABLES `Accommodation` WRITE;
/*!40000 ALTER TABLE `Accommodation` DISABLE KEYS */;
INSERT INTO `Accommodation` VALUES ('1','Comfy Quiet Chalet','Vancouver',50,3,3.1,'cottage'),('10','Sizable Calm Country House','Auckland',650,9,4.9,'mansion'),('11','Homy Quiet Shanty','Melbourne',50,1,2.8,'cottage'),('12','Beautiful Peaceful Villa','Seattle',90,2,2.1,'house'),('13','Enormous Peaceful Fortress','Melbourne',3300,12,2.3,'castle'),('14','Colossal Peaceful Palace','Melbourne',1200,21,1.5,'castle'),('15','Vast Private Fort','London',1300,18,2.6,'castle'),('16','Large Calm House','Melbourne',45,3,4.1,'house'),('17','Large Calm Sately House','NYC',850,9,1.2,'mansion'),('18','Big Peaceful Hut','Melbourne',60,2,2.4,'cottage'),('19','Giant Quiet Castle','Paris',4500,18,1.6,'castle'),('2','Cozy Calm Hut','London',65,2,4.1,'cottage'),('20','Big Private Hall','Buenos Aires',650,12,1.2,'mansion'),('21','Big Peaceful Cabin','Seattle',80,2,4.9,'cottage'),('22','Pleasant Peaceful House','Auckland',50,5,3.5,'house'),('23','Homy Calm House','Paris',70,2,2,'cottage'),('24','Nice Private Cottage','San Francisco',40,2,1.1,'cottage'),('25','Nice Calm Chalet','Seattle',55,2,4.5,'cottage'),('26','Enormous Peaceful Palace','Paris',1300,18,1.1,'castle'),('27','Enormous Calm Castle','Berlin',1500,12,2.3,'castle'),('28','Beautiful Calm Villa','Tokyo',110,2,4.2,'house'),('29','Big Quiet Manor','San Francisco',650,12,4.3,'mansion'),('3','Agreable Calm Place','London',65,4,4.8,'house'),('30','Large Peaceful House','Berlin',110,5,2.3,'house'),('31','Colossal Private Castle','Buenos Aires',1400,15,3.3,'castle'),('32','Immense Private Hall','Seattle',850,12,1,'mansion'),('33','Pleasant Calm Place','Tokyo',30,2,4.8,'house'),('34','Vast Private Fort','NYC',4400,21,1.7,'castle'),('35','Colossal Quiet Chateau','NYC',2300,14,4.6,'castle'),('36','Comfy Private Shanty','NYC',80,1,3.7,'cottage'),('37','Enormous Quiet Chateau','Berlin',2000,20,2.7,'castle'),('38','Big Private House','San Francisco',70,4,2.9,'house'),('39','Beautiful Calm Villa','Vancouver',50,3,3.5,'house'),('4','Colossal Quiet Chateau','Paris',3400,16,2.7,'castle'),('40','Colossal Private Castle','Seattle',2900,24,1.5,'castle'),('41','Big Calm Manor','Seattle',800,11,2.7,'mansion'),('42','Large Calm Residence','London',900,12,2.4,'mansion'),('43','Nice Private Hut','Melbourne',60,3,2.8,'cottage'),('44','Big Peaceful Chateau','Melbourne',3400,21,3.2,'castle'),('45','Vast Quiet Chateau','Tokyo',1100,19,2.3,'castle'),('46','Colossal Private Castle','San Francisco',1900,15,3.7,'castle'),('47','Sizable Calm Sately House','Seattle',900,10,1.5,'mansion'),('48','Big Calm Fort','Vancouver',4500,22,4,'castle'),('49','Big Private Villa','NYC',90,2,4.8,'house'),('5','Homy Quiet Shack','Paris',50,1,1.1,'cottage'),('50','Enormous Calm Fort','Seattle',2300,22,4.5,'castle'),('51','Nice Quiet Hut','Auckland',70,3,1.4,'cottage'),('52','Giant Private Palace','Melbourne',1800,23,2.7,'castle'),('53','Comfy Private Shanty','Buenos Aires',40,2,4.6,'cottage'),('54','Enormous Quiet Chateau','Melbourne',4400,20,1.7,'castle'),('55','Cozy Peaceful Hut','London',75,2,1.7,'cottage'),('56','Sizable Private Residence','London',800,11,3.5,'mansion'),('57','Immense Quiet Residence','Auckland',800,11,3.5,'mansion'),('58','Nice Calm Cottage','Berlin',40,3,3.9,'cottage'),('59','Large Peaceful Place','Tokyo',55,5,1.2,'house'),('6','Pleasant Quiet Place','Dublin',35,5,4.3,'house'),('60','Vast Peaceful Palace','Seattle',1600,19,1.1,'castle'),('61','Large Calm Place','NYC',60,2,1.3,'house'),('62','Comfy Calm Cabin','Buenos Aires',65,2,4.3,'cottage'),('63','Big Private Chateau','Buenos Aires',2400,23,4.5,'castle'),('64','Enormous Peaceful Fort','Berlin',3500,13,1.8,'castle'),('65','Comfy Private Chalet','NYC',45,2,1,'cottage'),('66','Beautiful Private Villa','London',80,2,2.4,'house'),('67','Giant Calm Chateau','Vancouver',2300,13,3.2,'castle'),('68','Giant Peaceful Fort','Paris',1800,21,1.1,'castle'),('69','Homy Quiet House','NYC',65,1,3.1,'cottage'),('7','Vast Peaceful Fortress','Seattle',3200,24,1.9,'castle'),('70','Great Calm Sately House','Paris',1050,10,2.2,'mansion'),('71','Cozy Calm Hut','San Francisco',55,2,3.8,'cottage'),('72','Beautiful Calm Place','Paris',80,4,2.1,'house'),('73','Nice Peaceful Cabin','London',60,1,3.4,'cottage'),('74','Giant Calm Fort','Melbourne',2400,12,2.3,'castle'),('75','Large Private Place','Berlin',50,4,3.6,'house'),('76','Pleasant Calm Villa','Berlin',30,2,2.4,'house'),('77','Great Private Country House','Dublin',1150,10,2.4,'mansion'),('78','Giant Private Fortress','Tokyo',2100,17,2.5,'castle'),('79','Large Private Manor','Vancouver',1050,10,4.8,'mansion'),('8','Giant Quiet Fortress','San Francisco',3400,12,4.1,'castle'),('80','Big Quiet Cabin','San Francisco',40,3,4.3,'cottage'),('81','Homy Quiet Shack','Seattle',70,3,2.2,'cottage'),('82','Cozy Peaceful Cabin','San Francisco',75,1,1.6,'cottage'),('83','Comfy Calm Shack','San Francisco',40,3,3.4,'cottage'),('84','Great Peaceful Sately House','Melbourne',700,8,3.2,'mansion'),('85','Nice Private Shack','Auckland',55,1,4.9,'cottage'),('86','Large Quiet House','London',100,4,4,'house'),('87','Immense Peaceful Hall','San Francisco',850,12,4.4,'mansion'),('88','Colossal Quiet Palace','Seattle',4100,16,3.6,'castle'),('89','Nice Private House','Seattle',45,2,3.2,'cottage'),('9','Giant Peaceful Palace','London',1500,20,3.5,'castle'),('90','Big Quiet House','Seattle',35,5,3.2,'house'),('91','Large Peaceful Hall','Melbourne',650,10,1.9,'mansion'),('92','Cozy Quiet Bungalow','San Francisco',85,3,3.5,'cottage'),('93','Giant Quiet Chateau','Vancouver',1800,16,3.9,'castle'),('94','Giant Peaceful Castle','Auckland',2900,25,3.3,'castle'),('95','Great Calm Hall','San Francisco',800,11,3.8,'mansion'),('96','Immense Private Country House','Tokyo',800,9,3.8,'mansion'),('97','Cozy Quiet Chalet','Auckland',75,1,2.3,'cottage'),('98','Big Private Castle','Paris',2000,23,4.6,'castle'),('99','Pleasant Quiet Place','NYC',80,4,3.2,'house');
/*!40000 ALTER TABLE `Accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rating`
--

DROP TABLE IF EXISTS `Rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rating` (
  `userId` varchar(255) NOT NULL,
  `accoId` varchar(255) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`accoId`,`userId`),
  CONSTRAINT `Rating_ibfk_1` FOREIGN KEY (`accoId`) REFERENCES `Accommodation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rating`
--

LOCK TABLES `Rating` WRITE;
/*!40000 ALTER TABLE `Rating` DISABLE KEYS */;
INSERT INTO `Rating` VALUES ('10','1',1),('13','1',1),('18','1',2),('12','10',3),('18','10',1),('21','10',2),('4','10',1),('1','11',1),('10','11',1),('11','11',1),('12','11',2),('13','11',3),('14','11',3),('15','11',1),('16','11',2),('17','11',4),('19','11',2),('20','11',1),('21','11',1),('22','11',1),('23','11',1),('24','11',4),('3','11',3),('4','11',2),('5','11',1),('6','11',3),('7','11',1),('0','12',5),('10','12',5),('16','12',4),('21','12',4),('23','12',4),('4','12',5),('7','12',5),('8','12',4),('11','13',2),('14','13',1),('16','13',2),('17','13',1),('18','13',1),('19','13',2),('2','13',3),('20','13',3),('3','13',2),('5','13',1),('6','13',4),('9','13',1),('1','14',2),('11','14',4),('13','14',2),('14','14',2),('15','14',1),('17','14',1),('20','14',2),('22','14',3),('3','14',1),('4','14',2),('5','14',4),('8','14',1),('9','14',1),('10','15',1),('11','15',1),('16','15',1),('19','15',4),('2','15',1),('20','15',1),('21','15',2),('23','15',2),('3','15',3),('4','15',1),('7','15',1),('8','15',2),('0','16',4),('10','16',4),('16','16',5),('21','16',5),('23','16',4),('4','16',4),('7','16',5),('8','16',4),('10','17',1),('12','17',1),('16','17',2),('19','17',4),('21','17',1),('23','17',2),('4','17',2),('7','17',1),('8','17',2),('10','18',1),('11','18',3),('13','18',4),('14','18',4),('15','18',3),('17','18',4),('18','18',2),('19','18',2),('2','18',4),('20','18',2),('22','18',3),('24','18',1),('5','18',4),('6','18',3),('7','18',1),('8','18',2),('9','18',2),('1','19',1),('10','19',2),('12','19',3),('14','19',3),('15','19',1),('18','19',1),('19','19',1),('20','19',3),('21','19',2),('22','19',1),('23','19',1),('4','19',1),('6','19',1),('8','19',1),('1','2',2),('11','2',1),('12','2',1),('13','2',3),('19','2',2),('2','2',4),('20','2',2),('3','2',1),('4','2',2),('7','2',2),('10','20',1),('16','20',1),('18','20',4),('19','20',3),('2','20',2),('20','20',2),('23','20',1),('4','20',1),('8','20',2),('13','21',2),('16','21',1),('19','21',3),('2','21',1),('20','21',4),('22','21',2),('23','21',1),('24','21',2),('4','21',1),('8','21',1),('9','21',1),('0','22',4),('10','22',4),('16','22',5),('21','22',4),('23','22',4),('4','22',4),('7','22',4),('8','22',5),('1','23',2),('10','23',1),('19','23',2),('2','23',4),('20','23',3),('21','23',1),('23','23',1),('4','23',1),('6','23',3),('7','23',1),('1','24',4),('10','24',1),('11','24',2),('12','24',1),('13','24',4),('14','24',4),('15','24',3),('16','24',1),('17','24',4),('18','24',1),('19','24',1),('2','24',4),('20','24',4),('21','24',1),('22','24',3),('23','24',2),('24','24',1),('3','24',1),('4','24',2),('5','24',4),('6','24',4),('7','24',2),('9','24',4),('1','25',3),('10','25',1),('13','25',3),('16','25',1),('18','25',4),('19','25',4),('21','25',1),('23','25',1),('4','25',1),('5','25',4),('7','25',2),('8','25',2),('9','25',4),('10','26',2),('13','26',4),('14','26',1),('16','26',2),('17','26',1),('18','26',3),('20','26',4),('21','26',1),('22','26',2),('23','26',1),('3','26',2),('4','26',2),('5','26',4),('7','26',2),('9','26',2),('1','27',1),('10','27',1),('11','27',1),('13','27',1),('15','27',1),('16','27',1),('18','27',2),('19','27',1),('2','27',3),('23','27',1),('24','27',3),('3','27',3),('4','27',2),('5','27',3),('7','27',2),('9','27',1),('0','28',4),('10','28',4),('16','28',4),('21','28',4),('23','28',4),('4','28',4),('7','28',5),('8','28',4),('11','29',1),('15','29',3),('17','29',2),('19','29',2),('2','29',2),('7','29',1),('0','3',4),('10','3',5),('16','3',5),('21','3',5),('23','3',5),('4','3',5),('7','3',4),('8','3',4),('0','30',5),('10','30',5),('16','30',5),('21','30',5),('23','30',5),('4','30',5),('7','30',4),('8','30',5),('13','31',3),('16','31',1),('19','31',3),('21','31',2),('23','31',1),('4','31',2),('7','31',1),('8','31',2),('11','32',1),('12','32',3),('15','32',1),('16','32',1),('19','32',1),('23','32',1),('24','32',4),('4','32',2),('7','32',1),('8','32',2),('9','32',2),('0','33',4),('10','33',5),('16','33',4),('21','33',4),('23','33',4),('4','33',5),('7','33',5),('8','33',4),('1','34',2),('10','34',2),('11','34',2),('12','34',2),('13','34',3),('14','34',4),('15','34',2),('16','34',1),('17','34',4),('18','34',4),('19','34',3),('2','34',4),('20','34',3),('21','34',2),('22','34',2),('23','34',2),('24','34',2),('3','34',2),('4','34',2),('5','34',1),('6','34',4),('8','34',1),('9','34',2),('12','35',1),('21','35',2),('3','35',2),('4','35',1),('7','35',2),('1','36',2),('16','36',1),('24','36',3),('9','36',3),('1','37',3),('10','37',2),('11','37',4),('12','37',3),('13','37',4),('14','37',2),('15','37',1),('17','37',2),('18','37',1),('19','37',2),('2','37',2),('20','37',2),('22','37',2),('24','37',2),('3','37',2),('5','37',3),('6','37',2),('9','37',1),('0','38',4),('10','38',4),('16','38',4),('21','38',5),('23','38',5),('4','38',4),('7','38',5),('8','38',5),('10','39',5),('16','39',4),('21','39',4),('23','39',4),('4','39',4),('7','39',5),('8','39',5),('1','4',4),('11','4',4),('12','4',3),('13','4',1),('14','4',1),('15','4',4),('17','4',3),('18','4',4),('19','4',3),('2','4',1),('20','4',1),('21','4',2),('22','4',3),('23','4',1),('24','4',2),('3','4',1),('4','4',1),('5','4',3),('6','4',1),('7','4',2),('9','4',1),('1','40',1),('11','40',3),('12','40',4),('13','40',3),('14','40',4),('15','40',2),('17','40',4),('18','40',1),('19','40',1),('2','40',3),('20','40',2),('22','40',3),('24','40',3),('3','40',1),('5','40',1),('6','40',2),('7','40',1),('9','40',4),('11','41',1),('13','41',3),('14','41',2),('16','41',1),('3','41',2),('4','41',2),('8','41',2),('1','42',2),('14','42',1),('17','42',1),('2','42',4),('24','42',2),('4','42',1),('11','43',4),('12','43',4),('16','43',2),('18','43',3),('19','43',4),('21','43',2),('22','43',1),('23','43',1),('24','43',2),('4','43',1),('7','43',2),('8','43',1),('1','44',2),('10','44',2),('13','44',1),('15','44',2),('16','44',1),('17','44',3),('19','44',4),('2','44',1),('23','44',2),('3','44',4),('5','44',4),('6','44',4),('1','45',3),('11','45',4),('12','45',2),('17','45',4),('18','45',3),('2','45',1),('3','45',4),('4','45',2),('5','45',4),('7','45',1),('13','46',2),('14','46',3),('16','46',1),('2','46',4),('22','46',3),('23','46',2),('3','46',2),('5','46',2),('7','46',1),('9','46',4),('11','47',1),('12','47',2),('13','47',3),('14','47',1),('15','47',4),('17','47',4),('21','47',2),('24','47',2),('5','47',4),('6','47',3),('7','47',2),('1','48',3),('11','48',4),('12','48',2),('13','48',1),('14','48',1),('15','48',4),('16','48',1),('17','48',4),('18','48',1),('19','48',4),('2','48',1),('20','48',2),('22','48',4),('23','48',2),('24','48',2),('3','48',3),('5','48',3),('6','48',3),('8','48',2),('9','48',4),('10','49',4),('16','49',4),('21','49',5),('23','49',5),('4','49',5),('7','49',5),('8','49',5),('1','5',3),('10','5',1),('11','5',3),('12','5',4),('13','5',4),('14','5',1),('15','5',1),('16','5',1),('17','5',4),('18','5',2),('19','5',3),('2','5',1),('20','5',3),('21','5',2),('23','5',2),('24','5',2),('3','5',1),('4','5',1),('5','5',3),('6','5',1),('9','5',4),('16','50',2),('2','50',4),('21','50',1),('23','50',1),('4','50',2),('8','50',2),('9','50',4),('1','51',1),('15','51',4),('16','51',2),('18','51',2),('19','51',4),('2','51',1),('20','51',3),('21','51',1),('23','51',1),('24','51',2),('5','51',1),('8','51',2),('1','52',1),('10','52',2),('12','52',1),('13','52',2),('14','52',2),('15','52',1),('16','52',1),('17','52',2),('18','52',2),('19','52',1),('2','52',3),('20','52',4),('22','52',2),('23','52',2),('24','52',2),('3','52',1),('4','52',1),('5','52',2),('6','52',4),('7','52',2),('8','52',1),('9','52',1),('1','53',4),('11','53',4),('12','53',3),('13','53',4),('14','53',1),('15','53',4),('16','53',2),('17','53',3),('18','53',2),('19','53',2),('2','53',2),('20','53',1),('21','53',1),('23','53',2),('3','53',4),('4','53',1),('5','53',2),('6','53',2),('7','53',1),('8','53',1),('9','53',4),('1','54',4),('11','54',4),('12','54',4),('15','54',3),('16','54',2),('17','54',2),('19','54',1),('2','54',4),('22','54',1),('24','54',2),('5','54',4),('1','55',2),('10','55',1),('11','55',3),('12','55',2),('13','55',3),('16','55',2),('17','55',1),('18','55',4),('19','55',3),('2','55',2),('21','55',2),('22','55',3),('23','55',1),('3','55',3),('4','55',2),('5','55',3),('6','55',1),('7','55',1),('8','55',2),('1','56',4),('13','56',1),('17','56',3),('18','56',2),('19','56',1),('2','56',1),('20','56',2),('22','56',3),('24','56',1),('5','56',3),('7','56',2),('9','56',2),('10','57',1),('12','57',3),('14','57',4),('15','57',2),('16','57',1),('21','57',2),('23','57',1),('4','57',2),('6','57',3),('7','57',2),('8','57',2),('9','57',3),('1','58',4),('10','58',2),('11','58',3),('12','58',4),('13','58',2),('14','58',1),('15','58',1),('16','58',2),('17','58',1),('18','58',2),('19','58',2),('2','58',4),('20','58',2),('21','58',2),('22','58',3),('23','58',2),('24','58',3),('3','58',3),('4','58',1),('5','58',1),('6','58',4),('8','58',2),('10','59',4),('16','59',4),('21','59',5),('23','59',5),('4','59',4),('7','59',4),('8','59',5),('0','6',5),('10','6',5),('16','6',5),('21','6',4),('23','6',5),('4','6',5),('7','6',5),('8','6',5),('1','60',1),('20','60',2),('3','60',2),('5','60',4),('6','60',1),('7','60',1),('8','60',2),('9','60',3),('10','61',5),('16','61',5),('21','61',5),('23','61',4),('4','61',4),('7','61',5),('8','61',4),('1','62',1),('15','62',2),('16','62',1),('19','62',2),('2','62',4),('20','62',1),('23','62',2),('24','62',1),('10','63',2),('16','63',2),('2','63',3),('23','63',2),('7','63',1),('11','64',4),('15','64',3),('16','64',2),('20','64',4),('21','64',2),('23','64',2),('4','64',2),('6','64',3),('7','64',1),('8','64',2),('9','64',2),('10','65',2),('13','65',1),('14','65',4),('16','65',1),('17','65',1),('22','65',1),('7','65',2),('8','65',2),('10','66',5),('16','66',5),('21','66',5),('23','66',5),('4','66',4),('7','66',5),('8','66',5),('1','67',1),('10','67',1),('11','67',2),('12','67',4),('15','67',4),('16','67',1),('17','67',1),('19','67',2),('21','67',1),('22','67',4),('23','67',2),('4','67',2),('5','67',4),('6','67',1),('7','67',1),('1','68',1),('10','68',2),('11','68',2),('12','68',1),('13','68',4),('14','68',1),('15','68',1),('16','68',2),('17','68',3),('18','68',4),('19','68',4),('2','68',4),('21','68',1),('22','68',3),('23','68',1),('24','68',2),('3','68',4),('4','68',1),('5','68',4),('6','68',3),('7','68',1),('8','68',2),('9','68',4),('10','69',2),('11','69',3),('12','69',2),('13','69',3),('14','69',1),('16','69',2),('18','69',1),('19','69',1),('2','69',2),('20','69',1),('22','69',2),('24','69',2),('3','69',3),('5','69',2),('6','69',1),('7','69',2),('8','69',2),('9','69',4),('1','7',1),('11','7',4),('12','7',1),('13','7',4),('14','7',1),('15','7',3),('16','7',1),('17','7',2),('18','7',3),('19','7',2),('2','7',1),('20','7',4),('22','7',3),('24','7',4),('3','7',2),('5','7',4),('6','7',3),('9','7',3),('11','70',3),('12','70',3),('13','70',3),('16','70',2),('20','70',2),('24','70',2),('1','71',1),('10','71',1),('13','71',2),('15','71',2),('16','71',2),('17','71',2),('18','71',2),('21','71',2),('24','71',2),('4','71',2),('6','71',1),('7','71',2),('8','71',2),('9','71',4),('10','72',4),('16','72',4),('21','72',5),('23','72',5),('4','72',4),('7','72',4),('8','72',4),('1','73',4),('10','73',1),('11','73',4),('12','73',4),('16','73',1),('17','73',1),('18','73',1),('2','73',4),('20','73',4),('22','73',3),('24','73',4),('3','73',4),('5','73',4),('6','73',3),('7','73',1),('12','74',2),('13','74',2),('14','74',2),('16','74',2),('18','74',3),('21','74',2),('23','74',1),('3','74',1),('7','74',2),('10','75',4),('16','75',5),('21','75',4),('23','75',5),('4','75',5),('7','75',4),('8','75',5),('10','76',5),('16','76',5),('21','76',5),('23','76',5),('4','76',5),('7','76',5),('8','76',4),('1','77',2),('11','77',3),('12','77',4),('13','77',3),('17','77',2),('18','77',3),('19','77',3),('2','77',4),('20','77',3),('24','77',1),('4','77',1),('5','77',3),('6','77',1),('10','78',2),('12','78',3),('13','78',1),('14','78',2),('16','78',2),('17','78',2),('20','78',1),('21','78',2),('22','78',3),('23','78',1),('24','78',3),('3','78',2),('4','78',1),('6','78',1),('8','78',2),('16','79',1),('17','79',2),('21','79',1),('23','79',2),('4','79',2),('6','79',4),('1','8',3),('10','8',2),('11','8',2),('12','8',3),('13','8',4),('14','8',3),('15','8',1),('16','8',1),('17','8',4),('18','8',4),('19','8',2),('2','8',4),('20','8',3),('21','8',1),('22','8',2),('23','8',1),('24','8',1),('3','8',2),('5','8',2),('6','8',2),('7','8',2),('8','8',1),('9','8',1),('1','80',1),('10','80',2),('11','80',4),('12','80',1),('13','80',3),('15','80',1),('24','80',4),('3','80',2),('5','80',3),('6','80',1),('7','80',1),('8','80',2),('9','80',4),('1','81',1),('10','81',2),('12','81',1),('13','81',4),('14','81',1),('15','81',1),('17','81',4),('18','81',2),('19','81',1),('2','81',4),('20','81',1),('22','81',4),('24','81',4),('3','81',1),('5','81',3),('6','81',1),('9','81',4),('1','82',1),('10','82',2),('11','82',2),('12','82',2),('13','82',2),('14','82',2),('15','82',2),('16','82',1),('17','82',1),('18','82',4),('19','82',4),('2','82',3),('20','82',2),('21','82',2),('3','82',4),('4','82',2),('5','82',2),('6','82',2),('7','82',2),('8','82',1),('9','82',3),('10','83',1),('13','83',2),('14','83',2),('16','83',2),('18','83',1),('20','83',4),('21','83',1),('23','83',2),('4','83',2),('6','83',2),('7','83',1),('11','84',2),('12','84',1),('14','84',4),('16','84',2),('19','84',3),('24','84',1),('3','84',4),('4','84',1),('10','85',1),('11','85',4),('12','85',3),('17','85',4),('18','85',3),('19','85',3),('21','85',1),('22','85',4),('3','85',4),('4','85',1),('6','85',3),('9','85',1),('10','86',5),('16','86',4),('21','86',5),('23','86',4),('4','86',5),('7','86',4),('8','86',4),('1','87',3),('10','87',1),('12','87',3),('13','87',4),('14','87',4),('18','87',4),('20','87',2),('21','87',1),('22','87',3),('3','87',2),('4','87',2),('6','87',3),('7','87',1),('9','87',4),('1','88',3),('10','88',2),('12','88',4),('13','88',2),('14','88',4),('15','88',3),('16','88',1),('17','88',3),('18','88',4),('19','88',1),('2','88',2),('20','88',4),('22','88',4),('23','88',1),('24','88',1),('3','88',3),('4','88',2),('5','88',4),('6','88',1),('8','88',1),('9','88',4),('1','89',3),('10','89',1),('12','89',3),('13','89',1),('16','89',1),('21','89',1),('23','89',2),('4','89',1),('7','89',1),('9','89',3),('10','9',1),('15','9',2),('16','9',1),('21','9',2),('23','9',1),('4','9',2),('7','9',1),('8','9',2),('10','90',4),('16','90',4),('21','90',4),('23','90',4),('4','90',4),('7','90',5),('8','90',5),('1','91',1),('10','91',2),('12','91',3),('13','91',1),('14','91',2),('16','91',1),('17','91',1),('19','91',4),('20','91',1),('21','91',1),('22','91',2),('23','91',1),('24','91',1),('3','91',3),('4','91',1),('5','91',1),('7','91',1),('8','91',2),('9','91',2),('1','92',2),('10','92',1),('11','92',4),('13','92',3),('16','92',1),('17','92',3),('20','92',4),('21','92',1),('6','92',3),('7','92',2),('10','93',1),('16','93',2),('21','93',1),('23','93',1),('3','93',3),('4','93',2),('7','93',1),('8','93',1),('1','94',2),('10','94',2),('11','94',4),('12','94',2),('13','94',1),('14','94',2),('15','94',1),('17','94',1),('18','94',1),('19','94',3),('2','94',1),('20','94',2),('21','94',2),('22','94',4),('23','94',1),('24','94',4),('3','94',3),('4','94',2),('6','94',2),('7','94',1),('8','94',2),('9','94',2),('1','95',4),('10','95',1),('11','95',3),('12','95',3),('13','95',1),('14','95',2),('16','95',1),('18','95',4),('19','95',4),('2','95',2),('20','95',1),('21','95',1),('22','95',4),('23','95',2),('24','95',3),('3','95',2),('4','95',1),('5','95',2),('6','95',1),('7','95',1),('8','95',1),('9','95',3),('10','96',2),('12','96',4),('16','96',1),('1','97',3),('10','97',1),('15','97',2),('17','97',4),('18','97',3),('19','97',3),('2','97',3),('20','97',4),('21','97',2),('23','97',1),('7','97',1),('1','98',3),('10','98',2),('11','98',1),('12','98',3),('13','98',4),('15','98',1),('16','98',1),('17','98',2),('18','98',4),('19','98',1),('2','98',2),('20','98',1),('21','98',1),('22','98',3),('23','98',2),('24','98',2),('4','98',2),('6','98',3),('7','98',2),('8','98',1),('10','99',4),('16','99',5),('21','99',5),('23','99',5),('4','99',4),('7','99',5),('8','99',5);
/*!40000 ALTER TABLE `Rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recommendation`
--

DROP TABLE IF EXISTS `Recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recommendation` (
  `userId` text,
  `accoId` text,
  `prediction` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recommendation`
--

LOCK TABLES `Recommendation` WRITE;
/*!40000 ALTER TABLE `Recommendation` DISABLE KEYS */;
INSERT INTO `Recommendation` VALUES ('12','59',2.6932127),('12','72',2.6184576),('12','61',2.615237),('13','6',3.5107472),('13','12',3.3703492),('13','33',3.083691),('13','30',2.822295),('13','45',2.7908206),('14','97',2.986665),('14','86',2.6321008),('14','23',2.323913),('14','2',2.1827655),('14','50',2.1050858),('15','45',2.8675919),('15','85',2.7837145),('15','95',2.099154),('15','87',1.930258),('15','92',1.9236904),('16','80',1.696584),('16','94',1.4279982),('16','81',1.2835418),('16','37',1.1119635),('16','60',1.0878212),('17','87',3.0334055),('17','95',2.4147265),('17','46',2.033137),('17','25',1.9880332),('17','57',1.699751),('18','12',2.4581723),('18','6',2.1714976),('18','33',2.1481254),('18','2',2.082264),('18','16',2.079033),('19','30',4.2759743),('19','6',4.1370068),('19','38',3.8426816),('19','12',3.779092),('19','22',3.501005),('20','16',2.4226825),('20','44',2.395454),('20','68',2.345792),('20','12',2.3400545),('20','61',2.330862),('21','45',1.760653),('21','69',1.737146),('21','88',1.6963214),('21','40',1.6897192),('21','77',1.5761102),('22','30',4.8313437),('22','59',4.1877866),('22','6',4.1382856),('22','38',4.0097156),('22','3',3.9873614),('23','47',1.7236563),('23','81',1.6903898),('23','71',1.5174999),('23','56',1.4176611),('23','2',1.3806455),('24','3',3.591757),('24','6',3.5397089),('24','30',3.5228164),('24','76',3.4997554),('24','12',3.417661),('0','76',3.2500274),('0','75',3.249176),('0','66',3.2043839),('0','49',3.188123),('0','39',3.1495485),('1','85',2.9420347),('1','18',2.5475268),('1','43',2.1376238),('1','38',1.6633934),('1','46',1.5937303),('2','61',2.2916915),('2','87',2.2914145),('2','76',2.2566402),('2','66',2.2223217),('2','99',2.052272),('3','30',4.2587094),('3','3',4.0023813),('3','12',3.7066052),('3','6',3.6564858),('3','16',3.392838),('4','47',2.257881),('4','18',1.906445),('4','7',1.8905344),('4','46',1.8490022),('4','65',1.6529408),('5','12',3.0885136),('5','6',2.97691),('5','30',2.4858239),('5','33',2.4737468),('5','94',2.3763387),('6','75',3.1344852),('6','49',3.0937757),('6','90',2.9691105),('6','6',2.8959367),('6','51',2.8764226),('7','34',2.0381756),('7','58',1.897187),('7','5',1.840447),('7','54',1.6596913),('7','37',1.650643),('8','44',2.0377052),('8','67',2.0127373),('8','47',1.7915355),('8','24',1.6356894),('8','40',1.5071429),('9','30',3.940154),('9','6',3.8440087),('9','38',3.5672598),('9','12',3.4083586),('9','22',3.3922527),('10','46',1.7914853),('10','40',1.6517344),('10','84',1.605596),('10','74',1.3760482),('10','41',1.3542864),('11','51',2.990662),('11','97',2.6573045),('11','81',2.0974085),('11','25',2.0411818),('11','21',2.00718),('12','66',2.8208606),('12','99',2.697176);
/*!40000 ALTER TABLE `Recommendation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26  0:53:47
