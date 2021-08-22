/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.23 : Database - etsdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`etsdb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `etsdb`;

/*Table structure for table `aspnetroleclaims` */

DROP TABLE IF EXISTS `aspnetroleclaims`;

CREATE TABLE `aspnetroleclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetroleclaims` */

/*Table structure for table `aspnetroles` */

DROP TABLE IF EXISTS `aspnetroles`;

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetroles` */

/*Table structure for table `aspnetuserclaims` */

DROP TABLE IF EXISTS `aspnetuserclaims`;

CREATE TABLE `aspnetuserclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetuserclaims` */

/*Table structure for table `aspnetuserlogins` */

DROP TABLE IF EXISTS `aspnetuserlogins`;

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetuserlogins` */

/*Table structure for table `aspnetuserroles` */

DROP TABLE IF EXISTS `aspnetuserroles`;

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetuserroles` */

/*Table structure for table `aspnetusers` */

DROP TABLE IF EXISTS `aspnetusers`;

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetusers` */

/*Table structure for table `aspnetusertokens` */

DROP TABLE IF EXISTS `aspnetusertokens`;

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `aspnetusertokens` */

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_short_code` varchar(255) DEFAULT NULL,
  `bank_id` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `bank_type` varchar(255) DEFAULT NULL,
  `founded` varchar(255) DEFAULT NULL,
  `headquarter` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

/*Data for the table `bank` */

insert  into `bank`(`id`,`bank_name`,`bank_short_code`,`bank_id`,`bank_code`,`bank_type`,`founded`,`headquarter`,`website`,`logo`) values 
(1,'AB Bank Ltd.','ABL','e9eff6b0-735e-43c2-b08c-9190a9db46a8','ETSTCZ286859734674','Private Commercial Banks','April 2, 1982','Dhaka, Bangladesh','abbl.com',NULL),
(2,'Modhumoti Bank Ltd.','MBL','e31518dd-608c-4cf0-b312-29d06761f8b6','ETSMKI048074580769','Private Commercial Banks','1999','Dhaka, Bangladesh','https://www.modhumotibankltd.com/',NULL),
(3,'Mutual Trust Bank Ltd.','MTBL','8742820e-dc85-43bb-b3fc-56b6d8fb7e28','ETSEEM373474096597','Private Commercial Banks','','Dhaka, Bangladesh','mutualtrustbank.com',NULL),
(4,'NCC Bank Ltd.','NCCBL','fb63e7a0-9929-46b8-a833-a92e3fd7999f','ETSVPJ985867556765','Private Commercial Banks','1985','Dhaka, Bangladesh','',NULL),
(5,'NRB Bank Ltd.','NBL','62805e04-9f2b-4e5d-81ff-4286355b8f62','ETSVBN081865406904','Private Commercial Banks','2013','Dhaka, Bangladesh','www.nrbbankbd.com',NULL),
(6,'NRB Commercial Bank Ltd.','NCBL','dd762381-84a6-4718-bb7c-523d0f71a2ab','ETSDMU772688435771','Private Commercial Banks','02 April 2013',NULL,'https://www.nrbcommercialbank.com/',NULL),
(7,'National Bank Ltd.','NBL','26cbf047-6691-4173-a76b-3bfcac8499e6','ETSSRE828150599858','Private Commercial Banks',NULL,'Dhaka, Bangladesh','www.nblbd.com',NULL),
(8,'National Bank of Pakistan','NBOP','bc16c8c8-4d79-4dea-8658-cac8f02573d2','ETSXXP241808312755','Foreign Commercial Banks','1949','Karachi Pakistan','www.nbp.com.pk',NULL),
(9,'One Bank Ltd.','OBL','f33246d2-229c-4c60-b331-a1abf0893691','ETSPDX473408609727','Private Commercial Banks','','Dhaka, Bangladesh','',NULL),
(10,'Padma Bank Ltd.','PBL','af190718-51e2-472d-852a-5071fbf1a8ab','ETSIWH054943086250','Private Commercial Banks','2013','Gulshan-1, Dhaka, Bangladesh','www.padmabankbd.com',NULL),
(11,'Palli Sanchay Bank','PSB','157f44fc-a60e-4efc-963f-7b420d076297','ETSQLY598048448764','Non-scheduled banks','Dhaka, Bangladesh','Dhaka, Bangladesh','www.pallisanchaybank.gov.bd',NULL),
(12,'Premier Bank Ltd.','PBL','59611f85-e702-4471-b0a4-075c23c74038','ETSDCV093960067538','Private Commercial Banks','1999','42 Kemal Ataturk Avenue, Banani, Dhaka, Bangladesh','www.premierbankltd.com',NULL),
(13,'Prime Bank Ltd.','PBL','d5ebe1f4-a352-4d75-a827-a8eb143e0709','ETSRFO805022924450','Private Commercial Banks','1995','Dhaka, Bangladesh','primebank.com.bd',NULL),
(14,'Pubali Bank Ltd.','PBL','81740421-8340-4c46-9b4b-6b047ef0cea5','ETSQGU887825767843','Private Commercial Banks','1959','26 Dilkusha Commercial Area Dhaka, Bangladesh','http://www.pubalibangla.com/',NULL),
(15,'Midland Bank Ltd.','MBL','664058a5-c9a8-4e61-b836-d33ecebc57d5','ETSQJG248819033027','Private Commercial Banks','June 20, 2013','Gulshan Avenue, Gulshan-2, Dhaka','https://www.midlandbankbd.net/',NULL),
(16,'Rajshahi Krishi Unnayan Bank','RKUB','ed0b95d0-650c-4a6b-a5a0-144a3afb453f','ETSCMA982296818516','Specialized Banks','',NULL,'http://www.rakub.org.bd/',NULL),
(17,'SBAC Bank Ltd.','SBAC','7e196976-0018-4482-a475-43b6240dae92','ETSVDU887457833197','Private Commercial Banks','2013','Dhaka, Bangladesh','',NULL),
(18,'Shahjalal Islami Bank Ltd.','SIBL','b72acac9-1f7d-4f94-87d9-be63c5f4c116','ETSYGC882680017589','Private Commercial Banks','Dhaka, Bangladesh','Dhaka, Bangladesh','sjiblbd.com',NULL),
(19,'Shimanto Bank Ltd.','SBL','fedc7b3d-e479-4220-80fd-aaa26296f2c7','ETSGFV300072949410','Private Commercial Banks','Dhaka, Bangladesh','Dhaka, Bangladesh','http://www.shimantobank.com/',NULL),
(20,'Social Islami Bank Ltd.','SIBL','723c8e23-cd74-4dfe-92eb-4c982460131f','ETSAUS715812122786','Private Commercial Banks','Dhaka, Bangladesh','90/1, City Center, Motijheel, Dhaka-1000, Bangladesh','siblbd.com',NULL),
(21,'Sonali Bank','SBL','bb4a853d-7880-41c1-b475-8c6394fe3df1','ETSZXR751489795894','State Owned Commercial Banks','1972','Motijheel, Dhaka, Bangladesh','http://sonalibank.com.bd',NULL),
(22,'Southeast Bank Ltd.','SBL','48bd24e7-6bad-4e0f-a374-39240b5d257f','ETSFET004076430618','Private Commercial Banks','1995','Dhaka, Bangladesh','www.southeastbank.com.bd',NULL),
(23,'Standard Bank Ltd.','SBL','28078e33-8ce5-4219-8a6e-48957af9eb70','ETSUIY595365859802','Private Commercial Banks','Dhaka, Bangladesh','Dhaka, Bangladesh','Standard Bank Limited',NULL),
(24,'Standard Chartered Bank','SCB','e36bea19-de62-4ac6-84b0-249d3d2fd234','ETSBAH790468292922','Foreign Commercial Banks','29 December 1853','London, England, UK','www.sc.com',NULL),
(25,'State Bank of India','SBOI','39bfdc9c-bb6f-439f-a033-6e3fca216c7a','ETSDWR095529884124','Foreign Commercial Banks','2 June 1806','State Bank Bhawan, M.C. Road, Nariman Point, Mumbai, Maharashtra, India','bank.sbi',NULL),
(26,'The City Bank Ltd.','TCBL','33df6712-e71c-498a-98b6-86483de995be','ETSLGQ433782826129','Private Commercial Banks','28 March 1983','136 Gulshan Avenue, Circle 2, Gulshan, Dhaka, Bangladesh','thecitybank.com',NULL),
(27,'Trust Bank Ltd.','TBL','a4c4677a-bd82-4f4b-ba34-1120cb4f60f5','ETSIIK376271647290','Private Commercial Banks','1999','Shadhinota Tower, Bir Srestha Shahid Jahangir Gate, Dhaka Cantonment, Dhaka, Bangladesh','www.tblbd.com',NULL),
(28,'Union Bank Ltd.','UBL','4e2cdf82-3f9d-47e9-9d4e-533eba0bab43','ETSOIL386559830426','Private Commercial Banks',NULL,NULL,'https://www.unionbank.com.bd/',NULL),
(29,'United Commercial Bank Ltd.','UCBL','41a99933-a044-46fc-b72f-285ae640a262','ETSXLA055084815479','Private Commercial Banks','','Dhaka, Bangladesh','www.ucb.com.bd',NULL),
(30,'Rupali Bank','RBL','79514f60-6a05-4274-b15d-1bbc7e60b545','ETSWMD933975189003','State Owned Commercial Banks','1972','Dhaka, Bangladesh','rupalibank.org',NULL),
(31,'Uttara Bank Ltd.','UBL','b84616ef-e1a0-40ad-bdcf-413ef2f73246','ETSRMX229284277453','Private Commercial Banks','Dhaka, Bangladesh (1965)','Dhaka, Bangladesh','www.uttarabank-bd.com',NULL),
(32,'Mercantile Bank Ltd.','MBL','f4833895-0103-4e36-af5e-59dba526d100','ETSUWN901667291714','Private Commercial Banks','1999','Dhaka, Bangladesh','www.mblbd.com',NULL),
(33,'Karmashangosthan Bank','KB','3cd1a1a3-4cfd-423d-8153-bc08175396a1','ETSGZU541420165657','Non-scheduled banks','Dhaka, Bangladesh','Dhaka, Bangladesh','Karmasangsthan Bank',NULL),
(34,'Agrani Bank','ABL','3a15bd57-e951-452d-89dd-37e4a8d776fe','ETSSUD841867830251','State Owned Commercial Banks','26 March 1972','Dhaka, Bangladesh','www.agranibank.org',NULL),
(35,'Al-Arafah Islami Bank Ltd.','AAIBL','7f1094bd-b175-4636-a3a7-b29e70571788','ETSQQP300068407820','Private Commercial Banks','1995','Dhaka, Bangladesh','al-arafahbank.com',NULL),
(36,'Ansar VDP Unnayan Bank','AVUB','fb9cc752-582c-48a0-a52e-6c13986794b8','ETSBVB470956984235','Non-scheduled banks','Dhaka, Bangladesh','Dhaka, Bangladesh','ansarvdpbank.gov.bd',NULL),
(37,'BASIC Bank','BBL','cdbb1d9b-b1b1-47e2-87b5-6d8c55fcfad6','ETSRPB717827460233','State Owned Commercial Banks','','Dhaka, Bangladesh','http://www.basicbanklimited.com/',NULL),
(38,'BRAC Bank Ltd.','BBL','a9c5c22a-b619-4f40-b092-9688a9892344','ETSKBL775977160931','Private Commercial Banks','4 July 2001','220/B Gulshan Tejgaon Link Road, Dhaka 1208 Dhaka, Bangladesh','www.bracbank.com',NULL),
(39,'Bangladesh Commerce Bank Ltd.','BCBL','35340e69-edf0-489c-aba3-74acbc09294d','ETSOVI284700225301','Private Commercial Banks','Dhaka, Bangladesh','Dhaka, Bangladesh','',NULL),
(40,'Bangladesh Development Bank','BDB','386f2d66-3412-4392-97b8-284740bec72e','ETSYRE358945068364','State Owned Commercial Banks','16 November 2009',NULL,'www.bdbl.com.bd',NULL),
(41,'Bangladesh Krishi Bank','BKB','ac78967b-f3b4-450d-8587-4cb15ca7fb49','ETSRXY587795860355','Specialized Banks','Dhaka, Bangladesh','Dhaka, Bangladesh','http://www.krishibank.org.bd/',NULL),
(42,'Bank Al-Falah','BAFL','f9a7505e-e433-4e38-b855-7cb67338d81d','ETSZQS619967253721','Foreign Commercial Banks','June 21, 1997','Karachi, Pakistan','www.bankalfalah.com',NULL),
(43,'Bank Asia Ltd.','BAL','400fa084-e378-4df7-b895-2654f7204220','ETSQKJ553571316648','Private Commercial Banks','27 November 1999','Dhaka, Bangladesh','Bank Asia Limited',NULL),
(44,'CITI Bank NA','CITIBNA','cf49a11f-6d93-47f7-8ead-16231860ad7a','ETSVPZ000165572222','Foreign Commercial Banks','June 16, 1812','New York City, New York','citi.com',NULL),
(45,'Commercial Bank of Ceylon','CBOC','6060ab21-6bb2-474f-9072-bc8d044ef04e','ETSLAS412679248539','Foreign Commercial Banks','1920','Colombo, Sri Lanka','',NULL),
(46,'Community Bank Bangladesh Limited','CBBL','032ab1c8-566c-416b-8bd6-a742807662d9','ETSHHD849372057807','Private Commercial Banks','2019','Dhaka, Bangladesh','www.communitybankbd.com',NULL),
(47,'Meghna Bank Ltd.','MBL','bb4bc297-cc77-4e49-9c3f-210ce54bee96','ETSNQM993967367099','Private Commercial Banks','21 April 2013','Dhaka, Bangladesh','http://www.meghnabank.com.bd',NULL),
(48,'Dhaka Bank Ltd.','DBL','cb93f52a-9e81-4644-a708-103b64070eea','ETSBJM881913618075','Private Commercial Banks','July 5, 1995','Dhaka, Bangladesh','dhakabankltd.com',NULL),
(49,'EXIM Bank Ltd.','EXIM','0cce643e-a2bc-47a0-a7ec-b2ccdb54d66f','ETSOVS110364731822','Private Commercial Banks','3 August 1999','Dhaka, Bangladesh','www.eximbankbd.com',NULL),
(50,'Eastern Bank Ltd.','EBL','0d940e2d-134e-423f-bde1-fd6a5adb6c4b','ETSEJZ689328380658','Private Commercial Banks','August 8, 1992','Dhaka, Bangladesh','ebl.com.bd',NULL),
(51,'First Security Islami Bank Ltd.','FSIBL','f02a0727-715d-41cb-9e39-db08974aa2b7','ETSYMU603185589979','Private Commercial Banks','25 October 1999','Dhaka, Bangladesh','fsiblbd.com',NULL),
(52,'Global Islamic Bank Ltd.','GIBL','b2315775-b536-49b3-8384-7460ad009ca4','ETSIJC516285715883','Private Commercial Banks',NULL,NULL,'https://www.globalislamibankbd.com/',NULL),
(53,'Grameen Bank','GB','5db337d8-0c12-4302-b2fe-0ac3f51cd89c','ETSBRD588311905419','Non-scheduled banks','October 1983 (1983-10)','Dhaka, Bangladesh','grameen.com',NULL),
(54,'HSBC','HSBC','7b48f4c9-af44-460c-811b-9077766aedf7','ETSALM995913166288','Foreign Commercial Banks','3 March 1865','HSBC Main Building, Central, Hong Kong','www.hsbc.com.hk',NULL),
(55,'Habib Bank Ltd.','HBL','e3b8e7fb-bdec-4f8e-8dbf-982a6e54a9a3','ETSUGA242739001951','Foreign Commercial Banks','25 August 1940','Habib Bank Plaza, Karachi, Pakistan','www.hbl.com',NULL),
(56,'ICB Islamic Bank','IIBL','d253cb9f-650b-45c2-9ec3-b2e11fdfa7c4','ETSEVR577088715731','Private Commercial Banks','1987','Dhaka, Bangladesh','https://www.icbislamic-bd.com/',NULL),
(57,'IFIC Bank Ltd.','IBL','5d664f64-bc70-448e-81db-a929cd06e40e','ETSEBI217416720589','Private Commercial Banks','1976','Dhaka, Bangladesh','www.ificbankbd.com',NULL),
(58,'Islami Bank Bangladesh Ltd.','IBBL','8c9c52e3-65ba-4187-8a65-d29ba6b91031','ETSJZO208961173143','Private Commercial Banks','13 March 1983','Islami Bank Tower 40, Dilkusha C/A, Dhaka - 1000, Bangladesh','islamibankbd.com',NULL),
(59,'Jamuna Bank Ltd.','JBL','1e28c677-8691-4e31-8f12-d55488955fbd','ETSRAA799864366085','Private Commercial Banks','2001','Dhaka, Bangladesh','www.jamunabankbd.com',NULL),
(60,'Janata Bank','JBL','1e3f8ac7-036e-41d0-b2ee-ef7dbc044734','ETSSNZ941943214214','State Owned Commercial Banks','1971','Dhaka, Bangladesh','http://www.jb.com.bd/',NULL),
(61,'Jubilee Bank','JB','4d1f0bd3-c2c1-48ca-896e-fc35f32507a6','ETSKJT301079053193','Non-scheduled banks','Kushtia, Bangladesh','Kushtia, Bangladesh','jubileebank.com',NULL),
(62,'Dutch Bangla Bank Ltd.','DBBL','ab9988f6-f09a-4096-8f37-9daeaada2ea1','ETSFPJ524138302436','Private Commercial Banks','1995','Motijheel, Dhaka, Bangladesh','dutchbanglabank.com',NULL),
(63,'Woori Bank Ltd.','WBL','cb7658cc-c551-4103-8fca-21869b6d7c19','ETSQWM570723445946','Foreign Commercial Banks','30 January 1899','Hoehyeon-dong, Jung-gu, Seoul, South Korea','www.wooribank.com',NULL);

/*Table structure for table `merchant` */

DROP TABLE IF EXISTS `merchant`;

CREATE TABLE `merchant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(255) DEFAULT NULL,
  `merchant_code` varchar(255) DEFAULT NULL,
  `merchant_type` varchar(255) DEFAULT NULL,
  `merchant_logo` varchar(255) DEFAULT NULL,
  `gateway_url` varchar(255) DEFAULT NULL,
  `gateway_key` varchar(255) DEFAULT NULL,
  `gateway_sender_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `merchant` */

/*Table structure for table `request_event` */

DROP TABLE IF EXISTS `request_event`;

CREATE TABLE `request_event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_type` varchar(255) DEFAULT NULL,
  `request_code` varchar(255) DEFAULT NULL,
  `requesting_user_id` varchar(255) DEFAULT NULL,
  `requesting_user_code` varchar(255) DEFAULT NULL,
  `requested_to` varchar(255) DEFAULT NULL,
  `request_time` datetime DEFAULT NULL,
  `pending` tinyint(1) DEFAULT '0',
  `approved` tinyint(1) DEFAULT '0',
  `denied` tinyint(1) DEFAULT '0',
  `request_status_time` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `request_event` */

/*Table structure for table `request_type` */

DROP TABLE IF EXISTS `request_type`;

CREATE TABLE `request_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_type` varchar(255) DEFAULT NULL,
  `request_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `request_type` */

/*Table structure for table `transaction_event` */

DROP TABLE IF EXISTS `transaction_event`;

CREATE TABLE `transaction_event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  `user_account_code` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(255) DEFAULT NULL,
  `merchant_code` varchar(255) DEFAULT NULL,
  `user_merchant_account` varchar(255) DEFAULT NULL,
  `contact_code` varchar(255) DEFAULT NULL,
  `opening_balance` double(20,4) DEFAULT '0.0000',
  `closing_balance` double(20,4) DEFAULT '0.0000',
  `debit` double(20,4) DEFAULT '0.0000',
  `debit_service_charge` double(20,4) DEFAULT '0.0000',
  `total_debit` double(20,4) DEFAULT '0.0000',
  `credit` double(20,4) DEFAULT '0.0000',
  `credit_service_charge` double(20,4) DEFAULT '0.0000',
  `total_credit` double(20,4) DEFAULT '0.0000',
  `transaction_type` varchar(255) DEFAULT NULL,
  `transaction_type_code` varchar(255) DEFAULT NULL,
  `transaction_time` datetime DEFAULT '1000-01-01 00:00:00',
  `transaction_status` varchar(255) DEFAULT NULL,
  `transaction_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transaction_event` */

/*Table structure for table `transaction_type` */

DROP TABLE IF EXISTS `transaction_type`;

CREATE TABLE `transaction_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(255) DEFAULT NULL,
  `transaction_type_code` varchar(255) DEFAULT NULL,
  `transaction_type_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transaction_type` */

/*Table structure for table `user_account` */

DROP TABLE IF EXISTS `user_account`;

CREATE TABLE `user_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  `user_account_code` varchar(255) DEFAULT NULL,
  `user_balance` double(20,4) DEFAULT '0.0000',
  `balance_last_updated` datetime DEFAULT '1000-01-01 00:00:00',
  `balance_last_event` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_account` */

/*Table structure for table `user_client` */

DROP TABLE IF EXISTS `user_client`;

CREATE TABLE `user_client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_primary` varchar(255) DEFAULT NULL,
  `email_primary` varchar(255) DEFAULT NULL,
  `password_hashed` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT '1000-01-01',
  `created_at` datetime DEFAULT '1000-01-01 00:00:00',
  `Last_login_time` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user_client` */

/*Table structure for table `user_contacts` */

DROP TABLE IF EXISTS `user_contacts`;

CREATE TABLE `user_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  `contact_code` varchar(255) DEFAULT NULL,
  `contact_first_name` varchar(255) DEFAULT NULL,
  `contact_last_name` varchar(255) DEFAULT NULL,
  `contact_photo` varchar(255) DEFAULT NULL,
  `contact_primary_phone` varchar(255) DEFAULT NULL,
  `contact_primary_email` varchar(255) DEFAULT NULL,
  `contact_permitted` tinyint(1) DEFAULT '0',
  `contact_added` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_contacts` */

/*Table structure for table `user_merchant` */

DROP TABLE IF EXISTS `user_merchant`;

CREATE TABLE `user_merchant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(255) DEFAULT NULL,
  `merchant_code` varchar(255) DEFAULT NULL,
  `user_merchant_account` varchar(255) DEFAULT NULL,
  `user_merchant_account_id` varchar(255) DEFAULT NULL,
  `user_merchant_account_sl` int DEFAULT '0',
  `user_merchant_account_balance` double(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_merchant` */

/*Table structure for table `user_secret` */

DROP TABLE IF EXISTS `user_secret`;

CREATE TABLE `user_secret` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `phone_primary` varchar(255) DEFAULT NULL,
  `email_primary` varchar(255) DEFAULT NULL,
  `password_hashed` varchar(255) DEFAULT NULL,
  `phone_confirmed` tinyint(1) DEFAULT '0',
  `email_confirmed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_secret` */

/*Table structure for table `users_info` */

DROP TABLE IF EXISTS `users_info`;

CREATE TABLE `users_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `present_thana` varchar(255) DEFAULT NULL,
  `present_district` varchar(255) DEFAULT NULL,
  `present_division` varchar(255) DEFAULT NULL,
  `present_postcode` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `permanent_thana` varchar(255) DEFAULT NULL,
  `permanent_district` varchar(255) DEFAULT NULL,
  `permanent_division` varchar(255) DEFAULT NULL,
  `permanent_postcode` varchar(255) DEFAULT NULL,
  `phone_secondary` varchar(255) DEFAULT NULL,
  `email_secondary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_info` */

/*Table structure for table `wallet` */

DROP TABLE IF EXISTS `wallet`;

CREATE TABLE `wallet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wallet_name` varchar(255) DEFAULT NULL,
  `wallet_id` varchar(255) DEFAULT NULL,
  `wallet_code` varchar(255) DEFAULT NULL,
  `wallet_type` varchar(255) DEFAULT NULL,
  `founded` varchar(255) DEFAULT NULL,
  `headquarter` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wallet` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
