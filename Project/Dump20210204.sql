-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: delivering_service
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` bigint unsigned DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `address_1` varchar(50) NOT NULL,
  `zip` varchar(11) DEFAULT NULL,
  `is_branch` tinyint(1) DEFAULT NULL,
  `legal_entity_address` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_branch` (`is_branch`,`city`),
  KEY `idx_city` (`city`),
  KEY `fk_address_et` (`entity_id`),
  CONSTRAINT `fk_address_et` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,100,'Slovenia','District of Columbia','Schambergermouth','4880 Korey Glen Apt. 078','94315-7264',0,1),(2,232,'Bouvet Island (Bouvetoya)','Alaska','Sabinaside','889 Marcelino Islands','39331-0649',0,1),(3,9,'Netherlands','Michigan','Nataliatown','80123 Otis Rest Apt. 352','82690-4792',0,1),(4,1109,'Libyan Arab Jamahiriya','NewYork','Lauriechester','8579 Rowena Flats','67987-8759',0,1),(5,1084,'Panama','NorthCarolina','Kalifurt','402 Rohan Prairie Suite 706','04157',0,1),(6,695,'Switzerland','Minnesota','Hamillmouth','119 Thalia Plaza','35796',0,0),(7,991,'British Virgin Islands','Utah','South Teresa','407 Wehner Turnpike Suite 020','71189',0,0),(8,1078,'Barbados','Tennessee','Boehmhaven','8874 Lilla Oval Apt. 123','55553-5299',0,0),(9,485,'Saint Helena','Nevada','South Dominique','999 Kessler Summit','70521-7025',0,0),(10,387,'Heard Island and McDonald Islands','District of Columbia','Parisianport','95480 McDermott Summit','18841',0,1),(11,319,'Congo','Kentucky','Horaciomouth','116 Shields Islands Apt. 146','67391',0,0),(12,280,'French Guiana','Washington','East Freddiehaven','37487 Willms Stravenue Apt. 370','88747-2125',0,1),(13,1193,'United Arab Emirates','SouthDakota','South Alysamouth','484 Hagenes Wall Apt. 149','83274-7000',0,1),(14,115,'Chad','Nebraska','New Aimeemouth','480 Grant Light','20668',0,0),(15,596,'Liberia','Vermont','South Nicktown','23777 Swift Curve Apt. 068','66005-1583',0,1),(16,755,'Serbia','Idaho','Mackland','039 Donnelly Mill Suite 839','14716-4427',0,0),(17,279,'Tunisia','Idaho','West Jessika','83073 Kurt Pass Suite 443','16173-4948',0,0),(18,508,'Sudan','Connecticut','Murrayside','750 Abshire Plaza Apt. 321','39468',0,0),(19,1046,'Ethiopia','Virginia','Port Maida','966 Lind Stravenue','53162-0437',0,1),(20,1143,'Northern Mariana Islands','Connecticut','New Howard','18815 Delia Unions','19706-8491',0,1),(21,66,'Burundi','Idaho','Manteborough','61902 Vida Plain Suite 105','03400-5178',0,1),(22,20,'Holy See (Vatican City State)','NewMexico','West Haley','42433 Emmerich Oval','41703',0,0),(23,1124,'Libyan Arab Jamahiriya','NorthCarolina','North Korey','2965 Darby Isle','99556-9132',0,0),(24,918,'Portugal','Arizona','Shyannfort','7349 Wuckert Shore Suite 042','03152',0,1),(25,1193,'Heard Island and McDonald Islands','Colorado','North Araceli','67931 Heaney Lodge','05694-7218',0,0),(26,260,'Seychelles','Kentucky','Phoebestad','31655 Berniece Pine Apt. 751','54991',0,0),(27,156,'Syrian Arab Republic','Virginia','New Harleybury','46805 Dulce View Apt. 626','36894-1148',0,0),(28,2,'Peru','Florida','East Denis','0305 Yvonne Isle','74413-2952',0,0),(29,1,'China','Vermont','East Madonna','2053 Flossie Parkway','08736-7948',0,1),(30,1079,'Moldova','NewHampshire','East Manleystad','0815 Labadie Keys Suite 011','44588-6715',0,0),(31,723,'Mongolia','Connecticut','New Savanna','556 Adalberto Freeway Apt. 701','57415',0,1),(32,562,'Israel','NewHampshire','Ryderland','64474 Johathan Parkway','09879',0,1),(33,1145,'United Kingdom','Delaware','Vellaside','90837 Mann Plains Suite 148','27079',0,1),(34,495,'Guinea','Washington','Port Flo','156 Denesik Flats Suite 383','77538',0,1),(35,153,'Fiji','Arizona','Borerfort','44938 Schaden Lock Suite 342','33595-4626',0,1),(36,590,'Niue','Wisconsin','East Rylan','225 Mills Drive Suite 571','07722-0499',0,0),(37,375,'Malaysia','Wisconsin','Port Adrienne','2450 Dale Common','17879-0384',0,1),(38,898,'Macedonia','Tennessee','New Eduardoland','35635 Renner View','49757',1,0),(39,1043,'Bosnia and Herzegovina','Ohio','Effertzchester','1844 Schuppe Plain','06534-0421',0,0),(40,652,'Grenada','RhodeIsland','New Davidshire','01508 Hyman Glen Suite 797','30809-9464',0,0),(41,18,'Portugal','Virginia','Enidland','622 Lilian Mountain Suite 132','23595-7729',0,1),(42,929,'Isle of Man','NewMexico','Kulasborough','189 Cremin Rest','40153',0,0),(43,85,'Hungary','Alabama','Veumtown','94798 Watsica Fall Apt. 484','83363',0,1),(44,715,'Greece','WestVirginia','Keeblerville','59735 Cleveland Station Apt. 225','82870',0,1),(45,536,'New Caledonia','WestVirginia','West Geraldineton','855 Hillard Overpass','16753-3717',0,1),(46,214,'El Salvador','Maryland','Parkerberg','0271 Danielle Island Apt. 163','51567-6397',0,1),(47,463,'Serbia','WestVirginia','Deeshire','770 Viola Garden','01299',0,1),(48,833,'Australia','Kentucky','New Houston','77463 Spinka Oval Apt. 004','87855',0,0),(49,114,'Christmas Island','Kansas','Douglasmouth','2329 Esther Neck Apt. 914','33155',0,0),(50,895,'French Polynesia','Connecticut','Williamsonville','55181 Schumm Stream','49420-2220',0,0),(51,631,'Kenya','Texas','Luciofort','9821 Karina Cliffs','10244',0,0),(52,1068,'Montserrat','Minnesota','Ivaview','6123 Natasha Forest Apt. 994','87122-7396',1,1),(53,511,'Belize','Michigan','New Adolfo','198 Kyla Parks','18356-3929',0,1),(54,966,'Russian Federation','Georgia','South Arjunton','8999 Trantow Trafficway Suite 078','00255',1,0),(55,1219,'Indonesia','Maryland','East Devantefort','6684 Fern Crossing','36784',0,0),(56,775,'Micronesia','Oregon','Swaniawskifurt','1792 Hamill Branch','99928-3320',0,0),(57,188,'Denmark','Georgia','East Ashtyn','234 Fay Corners','69130',0,1),(58,372,'Vietnam','Delaware','North Jacinto','991 Schmitt Landing','44337',0,1),(59,831,'United Arab Emirates','NewHampshire','New Guy','5189 Keaton Ridges Suite 514','12230',0,0),(60,875,'China','NewHampshire','Lake Leslychester','88531 Ethyl Springs','41663-4549',0,0),(61,1235,'Peru','California','North Dulceville','486 O\'Conner Valleys Apt. 410','37916',0,0),(62,669,'Dominica','Oklahoma','Stoltenberghaven','83770 Aylin Light Apt. 820','89835-6407',0,0),(63,798,'Malta','Arkansas','East Jailynfurt','760 Isabel View Suite 858','06593',0,0),(64,1102,'Malta','Kansas','North Elias','4551 Howe Viaduct','83603',0,1),(65,42,'Saint Vincent and the Grenadines','Kansas','Port Abbey','9101 Tevin Dam','82575',0,1),(66,652,'Israel','Nebraska','Marksport','678 Beatrice Coves','31582',0,1),(67,797,'Anguilla','Alaska','East Rickie','652 Bosco Plains','24711-2423',0,0),(68,166,'Japan','WestVirginia','Strackemouth','817 Kemmer Groves','78287-9210',0,1),(69,823,'India','Oklahoma','Port Reggie','88809 Haag Via Suite 175','16773-5550',0,1),(70,564,'Comoros','RhodeIsland','Amariberg','294 Tyrese Pass','45755-7425',0,0),(71,883,'United States Minor Outlying Islands','Iowa','Havenfurt','0704 Mayert Dale','63785',0,1),(72,739,'Timor-Leste','Colorado','Wernermouth','2580 Jacobson Brook Apt. 091','96059',0,0),(73,470,'Croatia','Washington','East Alene','871 Dietrich Keys Apt. 815','23943-9551',0,1),(74,865,'Malaysia','NorthCarolina','Port Kathryn','23938 Ashly Land Suite 398','92654',0,1),(75,1133,'Iraq','Maryland','Port Elvie','350 Lempi Canyon Apt. 156','34095',0,0),(76,999,'Panama','RhodeIsland','Alvaburgh','27350 Brakus Stravenue','58490-4279',0,0),(77,1231,'Lithuania','Idaho','Tiffanyshire','6041 Okuneva Village Suite 449','46813-6312',0,1),(78,829,'Norfolk Island','Mississippi','South Savanah','73458 Jarvis Square Suite 188','65473-2726',0,0),(79,780,'France','Mississippi','New Magali','753 Kemmer Pike Apt. 832','65061',0,1),(80,848,'Hong Kong','Nevada','Gastonmouth','5469 Bins Villages','04120',0,1),(81,1177,'Tunisia','Pennsylvania','West Marianneborough','026 Hugh Estate','05500-0607',0,0),(82,1275,'Serbia','NewHampshire','Port Abbey','77463 Spinka Oval Apt. 004','49757',0,0),(83,1279,'Bosnia and Herzegovina','Virginia','East Manleystad','9821 Karina Cliffs','65061',0,0),(84,1284,'Holy See (Vatican City State)','Nevada','East Manleystad','026 Hugh Estate','70521-7025',0,0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carriers`
--

DROP TABLE IF EXISTS `carriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carriers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` bigint unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `car_mark` varchar(50) DEFAULT NULL,
  `car_color` varchar(50) DEFAULT NULL,
  `car_number` varchar(10) DEFAULT NULL,
  `document_type` int unsigned DEFAULT NULL COMMENT 'references to document types table',
  `document_id` varchar(25) DEFAULT NULL,
  `other_data` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_carrier_documents` (`document_type`),
  KEY `fk_carriers_et` (`entity_id`),
  CONSTRAINT `fk_carrier_documents` FOREIGN KEY (`document_type`) REFERENCES `document_types` (`id`),
  CONSTRAINT `fk_carriers_et` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carriers`
--

LOCK TABLES `carriers` WRITE;
/*!40000 ALTER TABLE `carriers` DISABLE KEYS */;
INSERT INTO `carriers` VALUES (1,82,'Trycia Toy','facilis','MediumSpringGreen','900',1,'repellat','Iusto aut rerum et fuga nemo dicta et voluptatem. Voluptatem nemo optio nostrum quo. Aliquid voluptas ut aut fugit mollitia molestiae maxime.'),(2,360,'Mrs. Charlotte Walsh','quo','Moccasin','489',1,'officiis','Qui consequatur architecto dignissimos fuga voluptatem omnis. Aperiam incidunt eius nobis quaerat culpa laborum. Facilis numquam ea distinctio iste eius vitae commodi perspiciatis. Ratione itaque vel '),(3,347,'Elmore Kuphal','et','DarkSalmon','98',2,'qui','Sed ab soluta animi nesciunt veniam eum officia. Rerum quia occaecati quidem mollitia repudiandae. Illum voluptas voluptatibus ipsa saepe.'),(4,803,'Prof. Albin McDermott','et','MidnightBlue','',3,'pariatur','Ex facere debitis ut quo. Et autem cupiditate necessitatibus. Neque autem vel deserunt. Voluptas magnam voluptatem vel explicabo.'),(5,1086,'Oren Hoeger','optio','Wheat','7520',1,'similique','Exercitationem sapiente voluptatem reiciendis omnis et. Consequuntur rerum tempore voluptates. Consequuntur officiis ipsam libero quidem provident. Voluptatem reiciendis maxime et odio quaerat debitis'),(6,867,'Prof. Aiden Cole','expedita','Beige','7983',1,'explicabo','Ut et deleniti natus quaerat velit amet odio. Voluptas ducimus neque sunt officiis quia sed. Modi commodi et praesentium quia suscipit dolore. Numquam molestias officia non officia.'),(7,388,'Marianna Sawayn','deserunt','MediumOrchid','465',2,'nesciunt','Nulla voluptatem enim et aliquid rem provident et. Consectetur quis dignissimos impedit est blanditiis natus delectus. Aut sed eius voluptas ea harum corrupti omnis. Laborum architecto voluptatem veri'),(8,289,'Prof. Jeremie Yost IV','eum','DarkOliveGreen','607349881',3,'harum','Et asperiores eligendi consequatur inventore rerum. Provident tempore facere vel a omnis sequi. Similique est debitis eligendi omnis aut. Aliquid odit rerum quo voluptatum.'),(9,903,'Aiyana Dickens','voluptate','FloralWhite','1',2,'saepe','Et minus et excepturi totam. Veniam omnis saepe et iusto incidunt corporis. Quidem nesciunt id vel nesciunt quas excepturi.'),(10,642,'Reggie Schuster II','maiores','Tan','599651',2,'consectetu','Consequatur optio eos aut minima maiores nulla rem repellendus. Architecto voluptas cupiditate enim nulla sed fugit iure consequatur. Et voluptates et ad officia iure quam debitis. Repellendus eum con'),(11,269,'Jenifer Conroy','quia','SlateBlue','713',2,'consectetu','Molestiae et adipisci sint inventore delectus praesentium. Odit aut non harum eveniet et ad quidem. Aspernatur amet consequatur et incidunt ex sapiente. Eum esse explicabo quod eum.'),(12,415,'April Schroeder PhD','sequi','Blue','9',1,'eum','Praesentium et autem voluptatem. Saepe et qui delectus necessitatibus rem ut porro voluptatem.'),(13,783,'Bette Rutherford','illum','Ivory','283637',1,'ut','Et explicabo iste nulla dolorum pariatur dolorem sed deleniti. Et rerum laboriosam enim numquam ipsum. Dolores et autem qui quam.'),(14,86,'Amir Vandervort','quidem','Silver','4',2,'quas','Ullam voluptate sed non. Omnis possimus dolores ut maxime. Et iste debitis aut aut illum sunt ipsam cumque. Asperiores aut aut hic est deserunt voluptas vero.'),(15,701,'Alverta Kerluke','fugit','LightSeaGreen','203463887',2,'fugit','Labore voluptatum minima sed. Molestias quisquam ratione velit. Provident saepe magnam excepturi et.'),(16,1030,'Wilmer Windler','sit','SeaShell','32',2,'ullam','Blanditiis est debitis esse perspiciatis at. Voluptatem soluta magnam minus reprehenderit. Eius quidem esse voluptate cumque molestias ut necessitatibus. Totam enim quia architecto.'),(17,1039,'Alva Bode','cum','Teal','130209568',3,'non','Libero totam et ut. Ipsam enim nihil voluptas sit. Aut aliquid voluptas quos illum rerum impedit assumenda ab. Quo minus ipsa in sunt autem et laboriosam.'),(18,599,'Miss Drew Wilderman III','officia','GhostWhite','3',2,'et','Sit vitae rem ex. Aperiam voluptates velit ut aut ea itaque. Sint illum provident autem et sit.'),(19,1032,'Brain Turcotte','sit','Olive','774',3,'quibusdam','Similique voluptas nulla aut eius dolores mollitia aliquam. In odio perferendis accusamus quis minima. Repudiandae aliquid voluptatum quis laboriosam.'),(20,771,'Agustin Crist','cum','LightSeaGreen','59422682',1,'consectetu','Doloribus totam aut itaque. Et facilis distinctio qui ipsa quo. Quia rem cum beatae ipsam soluta occaecati a. Nemo quae quo ea autem quasi sequi.');
/*!40000 ALTER TABLE `carriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_status`
--

DROP TABLE IF EXISTS `client_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_status` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `status_description` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_status`
--

LOCK TABLES `client_status` WRITE;
/*!40000 ALTER TABLE `client_status` DISABLE KEYS */;
INSERT INTO `client_status` VALUES (10001,'Active',1),(10002,'deleted',1),(10003,'off-limits',1),(10004,'suspended',1);
/*!40000 ALTER TABLE `client_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'own number of client',
  `entity_id` bigint unsigned NOT NULL COMMENT 'link to entity table',
  `client_status` smallint unsigned DEFAULT NULL COMMENT 'link to client_status table',
  `client_name` varchar(100) DEFAULT NULL COMMENT 'can be combination of FN and LN for individuals',
  `first_name` varchar(50) NOT NULL COMMENT 'FN of contact person in case of legal entity',
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL COMMENT 'LN of contact person in case of legal entity',
  `address` int unsigned DEFAULT NULL COMMENT 'link to address table',
  `contact_phone` bigint unsigned DEFAULT NULL COMMENT 'link to phone table',
  `can_sms` tinyint(1) DEFAULT '1',
  `email` bigint unsigned DEFAULT NULL COMMENT 'link to email table',
  `other_contact_method` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `legal_entity` tinyint(1) DEFAULT '0' COMMENT 'True if client is legal entity',
  `payment_information` bigint unsigned DEFAULT NULL COMMENT 'Should be populated if client is legal entity',
  PRIMARY KEY (`id`),
  KEY `fk_clients_et` (`entity_id`),
  KEY `fk_clients_clientstatus` (`client_status`),
  KEY `client_names` (`client_name`),
  KEY `fk_clients_phone` (`contact_phone`),
  KEY `fk_client_payment` (`payment_information`),
  KEY `fk_client_email` (`email`),
  CONSTRAINT `fk_client_email` FOREIGN KEY (`email`) REFERENCES `email` (`entity_id`),
  CONSTRAINT `fk_client_payment` FOREIGN KEY (`payment_information`) REFERENCES `payment_info` (`entity_id`),
  CONSTRAINT `fk_clients_clientstatus` FOREIGN KEY (`client_status`) REFERENCES `client_status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_clients_phone` FOREIGN KEY (`contact_phone`) REFERENCES `phone` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,666,10001,'officia','Albina','optio','Reilly',562,880,1,209,NULL,'2005-09-20',0,NULL),(2,459,10003,'officia','Albina','optio','Reilly',1219,622,1,251,NULL,'2005-09-20',0,NULL),(3,178,10002,'amet','Delaney','labore','Maggio',929,1199,1,41,NULL,'2000-10-12',1,1161),(4,832,10001,'esse','Edmond','aperiam','Wehner',1084,393,1,227,NULL,'2002-12-04',0,NULL),(5,874,10002,'nemo','Columbus','voluptatem','Lehner',848,80,1,224,NULL,'1998-12-10',0,NULL),(6,837,10003,'nam','Fred','optio','Kulas',564,392,1,184,NULL,'1982-10-25',1,621),(7,1217,10001,'voluptas','Camilla','sint','Rath',631,554,1,125,NULL,'1994-03-09',1,150),(8,553,10002,'laudantium','Otha','minus','Jacobson',1193,876,0,173,NULL,'1971-11-30',1,423),(9,714,10003,'est','Maggie','numquam','Pouros',1079,320,0,113,NULL,'1979-12-19',1,888),(10,538,10002,'earum','Belle','sed','Cremin',1043,137,1,106,NULL,'1999-03-13',0,NULL),(11,1175,10002,'magni','Junius','ipsum','Feil',18,408,0,247,NULL,'1977-12-02',1,686),(12,721,10004,'quas','Kraig','aut','Shanahan',715,1223,1,133,NULL,'1970-10-22',0,NULL),(13,760,10002,'autem','Beryl','illo','Feest',898,270,1,183,NULL,'2002-04-13',0,NULL),(14,354,10003,'dolorem','Haley','repellendus','Bode',114,1251,1,108,NULL,'1978-10-02',0,NULL),(15,448,10002,'nam','Soledad','assumenda','Hartmann',1124,1172,1,56,NULL,'1995-03-16',0,NULL),(16,889,10002,'quibusdam','Malachi','accusantium','O\'Connell',375,971,1,208,NULL,'1994-03-01',1,892),(17,566,10004,'ducimus','Hipolito','vel','Thompson',536,530,1,91,NULL,'1986-06-07',1,1238),(18,351,10001,'animi','Roxanne','eos','Anderson',755,796,1,223,NULL,'1998-02-01',0,NULL),(19,1097,10003,'nihil','Citlalli','minus','Koss',214,307,0,23,NULL,'1992-10-12',1,1013),(20,986,10004,'unde','Natasha','libero','Runte',991,502,1,51,NULL,'1996-02-28',0,NULL),(21,118,10002,'sunt','Arvilla','et','Metz',883,806,1,79,NULL,'1972-02-12',0,NULL),(22,1178,10001,'aspernatur','Jarred','beatae','Kub',669,785,1,255,NULL,'1988-11-03',1,537),(23,491,10003,'aut','Caterina','ipsam','Kassulke',85,1066,1,225,NULL,'1992-12-09',0,NULL),(24,35,10001,'quaerat','Katelin','iure','Goldner',823,919,1,3,NULL,'1972-12-15',0,NULL),(25,447,10004,'debitis','Vita','odit','Wiza',999,349,1,97,NULL,'2004-01-29',1,46),(26,1037,10004,'blanditiis','Madie','est','Johnston',508,967,1,206,NULL,'1995-05-01',0,NULL),(27,403,10001,'iusto','Nelle','quo','Upton',1133,1076,0,256,NULL,'1985-01-28',0,NULL),(28,563,10003,'labore','Braeden','voluptatem','Swift',485,737,1,72,NULL,'1994-07-26',0,NULL),(29,840,10003,'incidunt','Elaina','qui','Zieme',279,713,1,151,NULL,'1995-08-05',0,NULL),(30,1187,10002,'ut','Cristina','nesciunt','Lemke',153,664,1,207,NULL,'1998-06-02',1,709),(31,1242,10003,'vel','Jerrold','hic','Stamm',723,761,1,78,NULL,'1995-10-21',1,353),(32,218,10001,'laboriosam','Beaulah','aut','Armstrong',115,673,1,253,NULL,'2002-03-30',1,497),(33,74,10003,'ut','Rubie','corrupti','Jaskolski',319,638,1,37,NULL,'1984-11-19',0,NULL),(34,533,10003,'possimus','Shanelle','delectus','Hintz',188,1114,0,140,NULL,'1997-11-30',0,NULL),(35,1249,10002,'enim','Lolita','est','Mraz',495,76,1,67,NULL,'1996-12-13',1,246),(36,36,10004,'aut','Brianne','et','Barton',1068,1204,1,6,NULL,'1997-11-30',0,NULL),(37,426,10002,'accusamus','Alaina','et','Dickens',2,756,1,234,NULL,'1995-07-27',1,920),(38,422,10003,'consectetur','Sylvia','sit','Ferry',372,96,1,233,NULL,'1985-05-02',0,NULL),(39,609,10004,'harum','Jessy','voluptates','O\'Connell',590,778,1,26,NULL,'1987-03-03',0,NULL),(40,1181,10001,'veritatis','Cierra','ducimus','Kihn',1143,591,1,90,NULL,'1972-05-18',1,984),(41,352,10003,'in','Tito','qui','Grady',1102,712,1,143,NULL,'1984-08-10',0,NULL),(42,807,10002,'sapiente','Susan','minima','Prosacco',511,379,1,88,NULL,'1980-10-28',0,NULL),(43,1244,10002,'aliquam','Gladyce','consequuntur','Altenwerth',1109,19,1,61,NULL,'1983-01-14',1,197),(44,1157,10002,'illo','Lenna','pariatur','Moore',100,979,1,131,NULL,'1976-04-18',1,369),(45,574,10004,'alias','Jennyfer','iusto','Marvin',1235,267,1,148,NULL,'1998-05-02',1,399),(46,1116,10004,'ipsam','Macy','repudiandae','Russel',831,203,1,5,NULL,'1986-08-14',0,NULL),(47,1241,10002,'et','Agnes','dignissimos','Stark',166,939,1,210,NULL,'1995-11-04',1,258),(48,946,10003,'magnam','Jeremy','libero','Jacobi',280,790,1,175,NULL,'1994-06-02',1,694),(49,486,10003,'doloremque','Kylee','quod','Wiegand',42,341,1,174,NULL,'1983-11-07',1,852),(50,142,10002,'libero','Queenie','et','Nienow',918,526,1,249,NULL,'1998-09-01',1,283),(51,703,10004,'delectus','Theo','doloribus','Ullrich',470,819,1,147,NULL,'1993-09-15',0,NULL),(52,988,10003,'et','Jaclyn','repellendus','Bosco',780,400,1,182,NULL,'1989-10-20',1,499),(53,873,10001,'debitis','Christa','occaecati','Breitenberg',66,373,0,219,NULL,'1994-11-25',1,678),(54,371,10003,'sit','Sophie','consequatur','Turcotte',797,900,1,60,NULL,'1970-12-23',0,NULL),(55,646,10003,'qui','Cynthia','harum','Pollich',895,1152,0,124,NULL,'1983-05-25',0,NULL),(56,257,10004,'repellat','Eda','natus','Abbott',387,913,1,248,NULL,'2004-06-03',1,505),(57,477,10004,'aperiam','Jarrod','temporibus','Feest',463,851,1,202,NULL,'1996-11-01',0,NULL),(58,792,10003,'ipsa','Friedrich','labore','Stracke',1177,1091,1,110,NULL,'1982-05-27',0,NULL),(59,1059,10003,'nam','Kylie','enim','O\'Reilly',1046,738,1,193,NULL,'1983-01-31',0,NULL),(60,362,10003,'accusamus','Tomasa','magnam','DuBuque',829,1208,1,68,NULL,'2004-07-23',1,931),(61,424,10003,'fugit','Dale','facere','Crona',652,44,1,12,NULL,'1986-02-14',1,964),(62,105,10004,'qui','Gillian','et','Lang',775,433,1,231,NULL,'1993-10-02',0,NULL),(63,680,10001,'est','Birdie','nam','Strosin',1145,634,1,242,NULL,'1985-01-04',1,194),(64,1207,10002,'ipsum','Danny','iure','Hessel',232,794,1,199,NULL,'1995-02-23',0,NULL),(65,321,10001,'sapiente','Tierra','excepturi','Mueller',1231,996,0,164,NULL,'1975-02-04',1,329),(66,99,10001,'praesentium','Ford','ipsum','O\'Kon',20,884,1,171,NULL,'1983-01-18',1,1222),(67,659,10004,'commodi','Chanelle','voluptas','Roberts',966,1000,1,228,NULL,'1979-08-27',0,NULL),(68,1248,10004,'accusamus','Shanel','sit','Feeney',596,615,1,55,NULL,'1984-01-27',1,1182),(69,914,10001,'sit','Everette','et','Price',9,1110,0,161,NULL,'1980-06-22',0,NULL),(70,998,10002,'a','Sydnie','fugiat','Borer',739,958,1,176,NULL,'2003-06-03',0,NULL),(71,472,10001,'velit','Paul','quia','Feest',875,120,1,191,NULL,'1988-01-14',1,322),(72,593,10004,'non','Claudia','laudantium','Zulauf',1,825,1,122,NULL,'1999-04-20',1,200),(73,707,10003,'vero','Jany','culpa','Mitchell',695,871,0,149,NULL,'1978-06-13',1,517),(74,1185,10002,'sint','Lempi','alias','Fahey',833,1096,1,212,NULL,'2003-07-06',0,NULL),(75,1029,10004,'deserunt','Lucienne','rerum','Zieme',798,748,1,213,NULL,'1986-04-17',1,1167),(76,43,10004,'aut','Newton','cumque','Gorczany',1078,464,1,236,NULL,'2001-11-25',1,515),(77,762,10004,'veniam','Esteban','delectus','Erdman',156,222,1,158,NULL,'1994-12-29',0,NULL),(78,34,10004,'repellat','Rafaela','error','Howe',260,449,1,192,NULL,'1975-04-05',0,NULL),(79,741,10003,'blanditiis','Soledad','placeat','Runolfsson',865,366,1,172,NULL,'1970-07-24',1,677),(85,1283,10001,'Test Test LN','Test',NULL,'Test LN',1284,1285,NULL,1286,'Other contact method for test 1','1987-05-26',0,NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_clients_client_name` BEFORE INSERT ON `clients` FOR EACH ROW begin
		if (new.client_name is null) then
			set new.client_name = concat(new.first_name, ' ', new.last_name);
		end if;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_client_to_log` AFTER INSERT ON `clients` FOR EACH ROW begin
	insert into log (entity_id, entity_name, event_date)
		values (new.entity_id, new.client_name, now());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `current_deliverings`
--

DROP TABLE IF EXISTS `current_deliverings`;
/*!50001 DROP VIEW IF EXISTS `current_deliverings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `current_deliverings` AS SELECT 
 1 AS `order_id`,
 1 AS `order_status`,
 1 AS `city_from`,
 1 AS `city_to`,
 1 AS `address_to`,
 1 AS `is_branch`,
 1 AS `carrier`,
 1 AS `fragile`,
 1 AS `dangerous`,
 1 AS `flamable`,
 1 AS `notes`,
 1 AS `client_name`,
 1 AS `contact_phone`,
 1 AS `contact_notes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `deliverings`
--

DROP TABLE IF EXISTS `deliverings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'internal id',
  `entity_id` bigint unsigned DEFAULT NULL COMMENT 'general number in system',
  `order_id` varchar(100) DEFAULT NULL,
  `order_status` int unsigned DEFAULT NULL,
  `from_address_id` bigint unsigned NOT NULL,
  `to_address_id` bigint unsigned NOT NULL,
  `from_id` bigint unsigned NOT NULL,
  `to_id` bigint unsigned NOT NULL,
  `cost` float NOT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `pay_client_ref` bigint unsigned NOT NULL,
  `carrier` bigint unsigned DEFAULT NULL,
  `fragile` tinyint(1) DEFAULT '0',
  `dangerous` tinyint(1) DEFAULT '0',
  `flamable` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `notes` varchar(1000) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `expected_receiving` datetime DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  UNIQUE KEY `order_id_2` (`order_id`),
  KEY `idx_carrier` (`carrier`),
  KEY `order_status` (`order_status`),
  KEY `fk_deliverings_entity_table` (`entity_id`),
  KEY `fk_deliverings_address_from` (`from_address_id`),
  KEY `fk_deliverings_address_to` (`to_address_id`),
  KEY `fk_deliverings_client_from` (`from_id`),
  KEY `fk_deliverings_client_to` (`to_id`),
  KEY `fk_deliverings_payclient` (`pay_client_ref`),
  CONSTRAINT `deliverings_ibfk_1` FOREIGN KEY (`order_status`) REFERENCES `order_status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_delivering_carrier` FOREIGN KEY (`carrier`) REFERENCES `carriers` (`entity_id`),
  CONSTRAINT `fk_deliverings_address_from` FOREIGN KEY (`from_address_id`) REFERENCES `address` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_address_to` FOREIGN KEY (`to_address_id`) REFERENCES `address` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_client_from` FOREIGN KEY (`from_id`) REFERENCES `clients` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_client_to` FOREIGN KEY (`to_id`) REFERENCES `clients` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_entity_table` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_payclient` FOREIGN KEY (`pay_client_ref`) REFERENCES `clients` (`entity_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverings`
--

LOCK TABLES `deliverings` WRITE;
/*!40000 ALTER TABLE `deliverings` DISABLE KEYS */;
INSERT INTO `deliverings` VALUES (2,838,'486/321/42/1231/1979-01-02 08:10:55',20002,42,1231,486,321,88.1687,0,321,289,1,1,1,0,NULL,'2020-11-03 19:50:59',NULL,NULL),(3,1131,'422/257/372/387/1986-11-22 04:22:44',20007,372,387,422,257,26.1927,0,257,347,0,1,1,0,NULL,'2020-04-27 19:50:59',NULL,NULL),(4,657,'703/873/470/66/1984-12-07 13:43:09',20006,470,66,703,873,56.15,0,873,599,1,0,1,1,NULL,'2020-02-28 19:50:59',NULL,'2020-07-24 19:51:52'),(5,217,'422/659/372/966/1983-12-23 16:40:57',20001,372,966,422,659,58.0983,0,659,771,0,1,0,0,NULL,'2020-02-27 19:50:59',NULL,NULL),(6,211,'371/472/797/875/2014-11-20 13:48:16',20003,797,875,371,472,38.8591,1,371,771,1,0,0,1,NULL,'2020-09-30 19:50:59',NULL,'2020-08-06 19:51:52'),(7,1149,'1217/593/631/1/1971-09-22 09:13:26',20001,631,1,1217,593,30.0533,0,593,599,1,0,1,1,NULL,'2020-05-30 19:50:59',NULL,'2020-08-01 19:51:52'),(8,69,'574/43/1235/1078/1975-01-20 20:13:53',20007,1235,1078,574,43,80.0695,0,43,289,0,0,1,1,NULL,'2020-09-28 19:50:59',NULL,'2020-12-01 19:51:52'),(9,937,'43/659/1078/966/1979-03-02 21:23:58',20003,1078,966,43,659,84.0811,0,659,347,1,0,0,1,NULL,'2020-09-28 19:50:59',NULL,'2021-02-04 19:51:52'),(10,144,'946/371/280/797/2006-04-12 04:48:46',20003,280,797,946,371,95.7516,1,946,415,1,1,0,1,NULL,'2020-09-28 19:50:59',NULL,'2020-09-28 19:51:52'),(11,543,'646/178/895/929/1985-05-06 13:47:31',20002,895,929,646,178,82.4881,0,178,1039,1,1,1,1,NULL,'2020-05-27 19:50:59',NULL,'2020-12-29 19:51:52'),(12,647,'1181/448/1143/1124/2017-03-08 07:05:44',20005,1143,1124,1181,448,35.2506,1,1181,599,1,1,1,1,NULL,'2020-04-01 19:50:59',NULL,'2020-02-28 19:51:52'),(13,921,'424/659/652/966/1973-12-01 21:13:37',20008,652,966,424,659,73.182,1,424,903,0,0,1,1,NULL,'2020-10-24 19:50:59',NULL,'2020-12-26 19:51:52'),(14,344,'1244/1242/1109/723/2015-10-21 06:24:22',20008,1109,723,1244,1242,66.9716,1,1244,783,1,0,0,1,NULL,'2020-12-01 19:50:59',NULL,'2021-02-02 19:51:52'),(15,600,'36/986/1068/991/1981-10-12 01:42:42',20005,1068,991,36,986,0.604144,1,36,771,0,1,0,0,NULL,'2020-10-24 19:50:59',NULL,NULL),(16,826,'486/998/42/739/1998-06-09 17:53:02',20008,42,739,486,998,62.6834,0,998,388,1,1,1,1,NULL,'2020-05-02 19:50:59',NULL,'2021-01-03 19:51:52'),(17,28,'448/1037/1124/508/1971-05-27 20:38:51',20001,1124,508,448,1037,96.8705,0,1037,289,1,1,1,1,NULL,'2020-12-05 19:50:59',NULL,'2020-11-25 19:51:52'),(18,1008,'593/178/1/929/1985-11-20 21:41:03',20007,1,929,593,178,22.0706,0,178,347,0,1,0,0,NULL,'2020-10-30 19:50:59',NULL,NULL),(19,38,'792/43/1177/1078/1983-10-18 05:57:22',20006,1177,1078,792,43,32.1073,0,43,867,0,1,1,0,NULL,'2020-10-29 19:50:59',NULL,NULL),(20,932,'257/946/387/280/2005-12-02 12:42:48',20006,387,280,257,946,71.9825,0,946,82,0,1,0,1,NULL,'2020-02-29 19:50:59',NULL,'2020-10-30 19:51:52'),(21,1056,'832/593/1084/1/1981-11-05 23:49:37',20005,1084,1,832,593,85.1571,1,832,1030,1,1,0,1,NULL,'2020-09-06 19:50:59',NULL,'2020-04-27 19:51:52'),(22,391,'988/1029/780/798/1992-08-23 06:33:16',20008,780,798,988,1029,50.1117,0,1029,701,1,0,0,1,NULL,'2020-07-04 19:50:59',NULL,'2020-10-24 19:51:52'),(23,598,'257/1157/387/100/1992-03-16 01:06:00',20001,387,100,257,1157,51.2943,1,257,642,1,0,1,1,NULL,'2020-09-30 19:50:59',NULL,'2020-04-27 19:51:52'),(24,529,'986/760/991/898/1974-05-22 02:51:37',20002,991,898,986,760,3.34803,1,986,803,1,0,0,0,NULL,'2020-09-30 19:50:59',NULL,NULL),(25,899,'566/491/536/85/1970-02-18 21:07:36',20005,536,85,566,491,37.8286,0,491,360,0,1,0,1,NULL,'2020-12-31 19:50:59',NULL,'2020-04-29 19:51:52'),(26,57,'609/321/590/1231/1981-07-22 03:20:37',20007,590,1231,609,321,54.3014,0,321,803,1,0,0,1,NULL,'2021-02-02 19:50:59',NULL,'2020-06-06 19:51:52'),(27,544,'874/566/848/536/1999-11-08 05:10:42',20002,848,536,874,566,20.1814,0,566,289,0,0,0,1,NULL,'2020-11-30 19:50:59',NULL,'2020-12-28 19:51:52'),(28,301,'105/1187/775/153/1992-08-29 13:59:40',20001,775,153,105,1187,69.3745,0,1187,701,0,1,0,1,NULL,'2020-02-27 19:50:59',NULL,'2020-05-29 19:51:52'),(29,157,'1157/707/100/695/1990-11-04 18:07:10',20003,100,695,1157,707,12.4825,0,707,289,1,0,0,1,NULL,'2020-08-31 19:50:59',NULL,'2020-04-30 19:51:52'),(30,662,'321/646/1231/895/2008-08-08 16:08:33',20007,1231,895,321,646,22.3138,0,646,1086,0,0,0,0,NULL,'2020-04-26 19:50:59',NULL,NULL),(31,75,'1029/362/798/829/2001-12-10 08:28:04',20001,798,829,1029,362,29.1335,1,1029,1039,0,0,0,0,NULL,'2020-09-30 19:50:59',NULL,NULL),(32,230,'762/666/156/562/1970-03-22 12:37:31',20001,156,562,762,666,52.7971,1,762,599,0,0,1,1,NULL,'2020-08-01 19:50:59',NULL,'2020-12-01 19:51:52'),(33,365,'371/1181/797/1143/1971-02-26 08:16:49',20003,797,1143,371,1181,3.72936,1,371,388,1,0,1,1,NULL,'2020-12-27 19:50:59',NULL,'2020-04-25 19:51:52'),(34,450,'1029/714/798/1079/2020-06-15 21:04:04',20002,798,1079,1029,714,41.9782,0,714,360,0,0,0,1,NULL,'2020-03-03 19:50:59',NULL,'2020-05-03 19:51:52'),(35,334,'1217/593/631/1/1974-10-09 08:52:51',20004,631,1,1217,593,17.4916,1,1217,599,0,0,1,0,NULL,'2020-07-05 19:50:59',NULL,NULL),(36,442,'998/403/739/1133/1984-09-19 06:38:49',20006,739,1133,998,403,37.9328,1,998,771,1,0,0,1,NULL,'2020-11-26 19:50:59',NULL,'2020-07-24 19:51:52'),(37,204,'666/703/562/470/1984-12-01 14:01:04',20004,562,470,666,703,13.0153,1,666,86,1,1,0,0,NULL,'2020-05-28 19:50:59',NULL,NULL),(38,281,'1207/36/232/1068/1978-06-19 18:51:16',20008,232,1068,1207,36,29.5072,0,36,771,1,1,1,1,NULL,'2020-10-31 19:50:59',NULL,'2020-04-30 19:51:52'),(39,665,'1207/593/232/1/1973-10-30 05:09:31',20005,232,1,1207,593,78.8707,1,1207,82,0,0,1,1,NULL,'2020-08-05 19:50:59',NULL,'2020-09-30 19:51:52'),(40,1209,'426/257/2/387/2014-06-11 12:09:54',20007,2,387,426,257,8.48436,0,257,1030,0,0,0,1,NULL,'2020-02-29 19:50:59',NULL,'2020-02-29 19:51:52'),(41,21,'840/1157/279/100/1987-05-19 09:13:52',20004,279,100,840,1157,8.98286,1,840,599,1,0,1,1,NULL,'2020-08-02 19:50:59',NULL,'2020-03-02 19:51:52'),(42,1127,'178/426/929/2/1999-05-30 16:14:41',20007,929,2,178,426,34.4638,0,426,415,1,0,0,1,NULL,'2020-09-26 19:50:59',NULL,'2020-09-29 19:51:52'),(43,904,'142/714/918/1079/1977-07-04 22:10:55',20007,918,1079,142,714,3.25519,1,142,347,1,0,1,1,NULL,'2020-05-01 19:50:59',NULL,'2020-06-24 19:51:52'),(44,734,'609/840/590/279/2003-07-27 14:44:14',20003,590,279,609,840,26.4818,0,840,388,0,1,0,1,NULL,'2020-07-27 19:50:59',NULL,'2020-04-01 19:51:52'),(45,697,'609/1244/590/1109/1982-01-22 09:44:19',20002,590,1109,609,1244,25.8927,1,609,1032,1,1,0,1,NULL,'2020-04-02 19:50:59',NULL,'2020-11-01 19:51:52'),(46,784,'74/105/319/775/1974-05-16 23:37:48',20004,319,775,74,105,74.0921,0,105,783,1,0,1,1,NULL,'2020-10-29 19:50:59',NULL,'2020-12-04 19:51:52'),(47,261,'1241/354/166/114/2005-04-29 16:14:40',20002,166,114,1241,354,31.6286,0,354,1032,1,0,1,0,NULL,'2020-06-28 19:50:59',NULL,NULL),(48,705,'946/563/280/485/1982-01-26 14:00:57',20005,280,485,946,563,35.9183,1,946,867,0,1,0,0,NULL,'2020-09-05 19:50:59',NULL,NULL),(49,750,'646/1249/895/495/1971-06-21 14:10:19',20003,895,495,646,1249,89.4179,0,1249,269,1,1,0,1,NULL,'2021-02-05 19:50:59',NULL,'2020-08-26 19:51:52'),(50,687,'142/35/918/823/2013-02-02 17:16:47',20008,918,823,142,35,40.4752,1,142,388,0,0,1,0,NULL,'2020-02-26 19:50:59',NULL,NULL),(51,1160,'1097/459/214/1219/2019-12-01 12:33:26',20005,214,1219,1097,459,28.2765,0,459,867,0,1,0,1,NULL,'2020-03-29 19:50:59',NULL,'2020-02-29 19:51:52'),(52,747,'721/659/715/966/2010-05-09 22:08:00',20007,715,966,721,659,40.847,0,659,1086,0,0,1,0,NULL,'2020-05-28 19:50:59',NULL,NULL),(53,103,'574/352/1235/1102/2001-04-24 03:05:35',20007,1235,1102,574,352,43.9812,0,352,701,0,1,0,0,NULL,'2020-11-28 19:50:59',NULL,NULL),(54,431,'1097/986/214/991/1985-02-05 11:27:38',20003,214,991,1097,986,79.9605,0,986,1030,0,1,1,0,NULL,'2020-05-05 19:50:59',NULL,NULL),(55,605,'714/447/1079/999/1995-03-11 07:36:03',20006,1079,999,714,447,74.1503,0,447,360,0,1,0,0,NULL,'2020-05-29 19:50:59',NULL,NULL),(56,348,'840/1097/279/214/1990-08-16 20:28:37',20004,279,214,840,1097,19.6375,0,1097,360,0,1,0,1,NULL,'2020-04-30 19:50:59',NULL,'2020-07-24 19:51:52'),(57,757,'703/1241/470/166/2019-11-30 00:36:46',20005,470,166,703,1241,97.4643,1,703,771,0,1,1,1,NULL,'2021-02-02 19:50:59',NULL,'2020-08-29 19:51:52'),(58,753,'593/563/1/485/1989-11-04 04:57:57',20006,1,485,593,563,55.6122,1,593,903,1,1,0,1,NULL,'2020-12-31 19:50:59',NULL,'2020-02-29 19:51:52'),(59,1113,'1241/792/166/1177/2002-08-29 15:09:50',20005,166,1177,1241,792,67.918,1,1241,415,0,1,0,1,NULL,'2020-05-03 19:50:59',NULL,'2021-02-01 19:51:52'),(60,457,'760/533/898/188/1999-10-10 00:27:34',20003,898,188,760,533,58.9445,0,533,867,0,0,0,0,NULL,'2020-10-01 19:50:59',NULL,NULL),(61,324,'35/1037/823/508/1984-11-17 22:53:02',20004,823,508,35,1037,66.2609,1,35,903,0,1,0,1,NULL,'2020-08-24 19:50:59',NULL,'2020-10-27 19:51:52'),(62,965,'1029/721/798/715/1998-06-30 02:28:14',20006,798,715,1029,721,60.8599,1,1029,1030,0,0,0,1,NULL,'2020-10-30 19:50:59',NULL,'2020-07-05 19:51:52'),(63,1087,'609/477/590/463/2009-09-17 22:33:52',20001,590,463,609,477,92.332,0,477,867,0,0,1,1,NULL,'2020-03-24 19:50:59',NULL,'2020-03-27 19:51:52'),(64,129,'574/1097/1235/214/1990-04-23 12:22:04',20004,1235,214,574,1097,39.8283,0,1097,289,1,1,1,0,NULL,'2021-01-02 19:50:59',NULL,NULL),(65,326,'1185/1242/833/723/1997-08-26 16:01:36',20006,833,723,1185,1242,18.0362,0,1242,903,0,1,1,1,NULL,'2021-01-28 19:50:59',NULL,'2020-04-27 19:51:52'),(66,1103,'257/218/387/115/1981-10-06 00:15:37',20005,387,115,257,218,53.3326,1,257,903,0,0,0,1,NULL,'2020-09-05 19:50:59',NULL,'2020-07-27 19:51:52'),(67,927,'741/533/865/188/1982-07-19 02:49:14',20005,865,188,741,533,62.8178,0,533,1039,0,1,1,0,NULL,'2021-01-25 19:50:59',NULL,NULL),(68,439,'142/840/918/279/2007-08-31 00:52:58',20001,918,279,142,840,54.2718,0,840,269,0,0,0,1,NULL,'2020-08-30 19:50:59',NULL,'2020-04-29 19:51:52'),(69,492,'1187/472/153/875/2015-06-23 02:08:48',20006,153,875,1187,472,26.435,0,472,347,1,0,1,1,NULL,'2020-06-26 19:50:59',NULL,'2020-05-03 19:51:52'),(70,710,'362/703/829/470/2006-05-31 00:04:13',20006,829,470,362,703,42.9416,0,703,415,1,1,0,0,NULL,'2020-09-25 19:50:59',NULL,NULL),(71,696,'807/99/511/20/1998-09-07 05:42:06',20007,511,20,807,99,17.0498,0,99,360,0,1,1,1,NULL,'2020-12-03 19:50:59',NULL,'2020-06-03 19:51:52'),(72,425,'1207/792/232/1177/1989-07-15 10:39:22',20005,232,1177,1207,792,65.8681,1,1207,867,1,1,1,0,NULL,'2020-05-06 19:50:59',NULL,NULL),(73,725,'447/362/999/829/2003-06-15 14:18:55',20005,999,829,447,362,9.95715,1,447,388,1,0,0,1,NULL,'2020-12-25 19:50:59',NULL,'2020-04-01 19:51:52'),(74,1229,'874/1029/848/798/2014-06-21 18:20:12',20006,848,798,874,1029,37.7223,0,1029,1039,1,1,1,1,NULL,'2020-11-25 19:50:59',NULL,'2020-03-05 19:51:52'),(75,62,'566/1244/536/1109/1989-01-30 01:07:25',20007,536,1109,566,1244,31.4284,1,566,289,0,1,0,1,NULL,'2020-11-04 19:50:59',NULL,'2020-03-30 19:51:52'),(76,942,'1097/1178/214/669/2003-07-25 12:23:04',20008,214,669,1097,1178,38.9916,0,1178,360,0,0,1,0,NULL,'2020-04-24 19:50:59',NULL,NULL),(77,337,'946/533/280/188/2010-08-10 08:12:30',20001,280,188,946,533,23.9189,0,533,289,1,0,0,1,NULL,'2020-03-03 19:50:59',NULL,'2020-05-25 19:51:52'),(78,1260,'666/459/562/562/2021-02-03 22:53:41',20001,562,562,666,459,250,1,666,NULL,0,1,0,1,'Some text there','2020-06-25 19:50:59',NULL,'2020-03-06 19:51:52'),(81,1268,'680/1207/1145/232/2021-02-06 18:17:54',20001,1145,232,680,1207,167,1,680,NULL,1,1,0,1,'Some text 2021-02-06 18:17:54','2020-03-02 19:50:59',NULL,'2021-01-30 19:51:52'),(82,1269,'1185/352/833/1102/2021-02-06 18:21:34',20001,833,1102,1185,352,103,1,352,NULL,1,1,1,1,'Some text 2021-02-06 18:21:34','2020-12-29 19:50:59',NULL,'2020-10-31 19:51:52');
/*!40000 ALTER TABLE `deliverings` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_order_no` BEFORE INSERT ON `deliverings` FOR EACH ROW begin
   -- declare order_no varchar(25);
		if new.order_id is null then
			set new.order_id = concat(new.from_id, '/'
								, new.to_id, '/'
                                , new.from_address_id, '/'
                                , new.to_address_id, '/'
                                , (select created from entity_table where entity_id = new.entity_id));
		end if;
	end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_delivering_to_log` AFTER INSERT ON `deliverings` FOR EACH ROW begin
	insert into log (entity_id, entity_name, event_date)
		values (new.entity_id, 'delivering', now());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `document_types`
--

DROP TABLE IF EXISTS `document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'internal id',
  `document_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_types`
--

LOCK TABLES `document_types` WRITE;
/*!40000 ALTER TABLE `document_types` DISABLE KEYS */;
INSERT INTO `document_types` VALUES (1,'passport'),(2,'drive licence'),(3,'diploma');
/*!40000 ALTER TABLE `document_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` bigint unsigned DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_note` varchar(150) DEFAULT NULL COMMENT 'comment about email',
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `fk_email_et` (`entity_id`),
  CONSTRAINT `fk_email_et` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `ch_email_format` CHECK (regexp_like(`email`,_utf8mb4'^[A-Z0-9._%-]+@[A-Z0-9.-]+.[A-Z]{2,4}$'))
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,97,'hlang@example.net','Repudiandae enim odio modi fugit itaque accusamus.'),(2,253,'torphy.mattie@example.com','Sed fugit qui ipsa saepe voluptatem ipsa optio.'),(3,5,'wilburn83@example.net','Esse animi omnis quas architecto esse.'),(4,125,'sister.bradtke@example.org','Ut est dolor et voluptatem cum.'),(5,225,'hbeier@example.com','Itaque rerum harum labore perspiciatis consequatur totam voluptatem odit.'),(6,171,'sfriesen@example.net','Corrupti consectetur debitis in quia.'),(7,184,'vyundt@example.org','Neque est at ab unde praesentium nesciunt alias debitis.'),(8,91,'aurelio77@example.net','Suscipit debitis consequuntur ut dolor dolores eum id qui.'),(9,161,'crona.kali@example.com','Eos ab eaque ipsam quia magnam.'),(10,149,'melody80@example.com','Nam voluptatem non enim nihil laborum illo fugiat.'),(11,173,'crystel69@example.net','Debitis et expedita consectetur autem vero ex placeat.'),(12,251,'jarmstrong@example.com','Aut voluptates aut atque consequatur.'),(13,88,'retta.marquardt@example.org','Iste ab aut cumque et voluptatem ea rerum eligendi.'),(14,208,'eleanore28@example.com','Quo excepturi laboriosam eius neque earum voluptatibus suscipit.'),(15,207,'laila.trantow@example.net','Aliquid veritatis illo consectetur dolorem necessitatibus et.'),(16,72,'murazik.kamryn@example.org','Iusto fugit et ratione fugiat.'),(17,37,'oberbrunner.garnet@example.org','Consequatur nulla odit exercitationem qui maiores iure beatae.'),(18,122,'pedro.mclaughlin@example.org','Ut laborum consequatur itaque rerum voluptatem eligendi repudiandae earum.'),(19,199,'tianna.kris@example.com','Enim et quia sed dicta ab.'),(20,90,'katheryn.krajcik@example.org','Explicabo sit quod cumque voluptas.'),(21,61,'herman.haleigh@example.com','Est et id nihil iste quia.'),(22,191,'monserrat92@example.com','In eaque explicabo provident veritatis nam consequuntur illum.'),(23,227,'jkertzmann@example.net','Quidem unde enim a alias enim ad.'),(24,256,'sonia.wintheiser@example.org','Natus et animi quisquam ullam.'),(25,209,'gwuckert@example.net','Quis unde non qui iure hic.'),(26,172,'maybelle.zemlak@example.org','Provident nisi sunt nobis quod vel aut repellendus.'),(27,242,'lharber@example.net','Omnis commodi magnam unde soluta sunt non amet.'),(28,249,'fjones@example.org','Expedita dolorem sint eum hic.'),(29,26,'janelle70@example.net','Atque aut dolore labore saepe tenetur ut qui.'),(30,110,'leonel31@example.net','Blanditiis explicabo fugiat ipsa autem.'),(31,247,'udenesik@example.com','Sapiente et ducimus nihil consectetur aspernatur nostrum.'),(32,147,'coralie.abshire@example.com','Omnis nihil aperiam cupiditate tempore eos magnam laudantium nesciunt.'),(33,60,'lemke.kris@example.com','Voluptate quisquam reiciendis non odio quis quaerat rerum soluta.'),(34,106,'corbin20@example.org','Nisi architecto architecto eius tenetur nam labore similique.'),(35,55,'olson.daisha@example.com','Iusto impedit ad ut voluptas.'),(36,175,'casimir19@example.net','Iusto aut voluptatem et sed aut.'),(37,224,'nbecker@example.org','Itaque qui enim quaerat quis reiciendis.'),(38,212,'nelson.mclaughlin@example.org','Quas veniam non corporis ullam aut.'),(39,6,'jamey50@example.net','Dolorum pariatur aperiam vel accusamus.'),(40,23,'brett.ortiz@example.net','Nesciunt molestiae optio sequi debitis nostrum eos voluptates.'),(41,124,'cluettgen@example.net','Aspernatur iusto voluptas sed commodi qui.'),(42,151,'kunze.emiliano@example.com','Neque natus consequatur quia atque.'),(43,56,'zechariah.schiller@example.net','Est aliquam asperiores itaque molestiae nisi.'),(44,255,'greg.bailey@example.net','Qui doloribus velit exercitationem tempora.'),(45,148,'meaghan.reichel@example.net','Est qui voluptatum dolor ducimus ut iusto harum.'),(46,174,'sasha03@example.com','Eligendi consequatur est eos magnam temporibus sit sed.'),(47,213,'chandler.hilpert@example.com','Voluptates omnis occaecati quod.'),(48,140,'ganderson@example.net','Ut labore sit eum laborum omnis et dolorum.'),(49,193,'ida47@example.org','Officia architecto quia reprehenderit.'),(50,231,'maxwell24@example.net','Optio maxime corporis modi veniam iure.'),(51,176,'clair.walker@example.net','Voluptates veritatis quae ipsam dolores optio.'),(52,131,'kenton62@example.net','Aspernatur ratione quo quasi delectus repellendus quo.'),(53,133,'hackett.jimmy@example.net','Quis perspiciatis laboriosam porro culpa deserunt earum aliquid.'),(54,192,'jwaters@example.org','Vel consequatur nobis amet quibusdam inventore sunt.'),(55,183,'ransom.quigley@example.com','Sint aperiam omnis minima ut praesentium eligendi temporibus sint.'),(56,182,'ashleigh72@example.org','Ipsum fugit incidunt modi consequatur qui eius odio.'),(57,67,'kihn.frankie@example.net','Alias voluptatum aspernatur dolorum repudiandae itaque sed et.'),(58,51,'dominique86@example.net','Distinctio dolor illo voluptatem tenetur occaecati molestias libero.'),(59,79,'gaylord.gilbert@example.net','Eum rerum nemo itaque qui facere.'),(60,164,'sammy.lind@example.org','Omnis libero qui et exercitationem.'),(61,158,'marks.shad@example.net','Ut quis enim officia.'),(62,248,'grant.ethelyn@example.org','Aut sed asperiores ipsam ab quo et.'),(63,202,'raquel.lindgren@example.com','Error eligendi tempore ex debitis.'),(64,210,'gerlach.clemens@example.net','Sed officiis eaque accusantium unde.'),(65,223,'bgislason@example.net','Repellat quam molestias enim ea qui veniam voluptas.'),(66,68,'terry.julia@example.org','Et labore qui reprehenderit illo iure fuga.'),(67,113,'wolff.allan@example.org','Accusamus sit dicta perferendis consequuntur.'),(68,236,'christa.legros@example.org','Inventore enim est sunt reiciendis quas tempore nisi inventore.'),(69,228,'wyman41@example.com','Fuga temporibus et officia accusantium voluptates repudiandae totam.'),(70,233,'hrath@example.com','Illo quos harum non enim quo laborum enim.'),(71,165,'neoma99@example.com','Aut quia vel molestias et.'),(72,78,'uwintheiser@example.com','Vitae debitis laboriosam cumque autem quis dolore accusamus.'),(73,206,'everardo70@example.org','Quidem eaque laboriosam hic eius voluptatem.'),(74,12,'kreiger.jessika@example.net','Vero voluptatibus provident iusto suscipit necessitatibus.'),(75,219,'bwolff@example.org','Dolores soluta aut sint quia temporibus et dicta.'),(76,143,'rosalinda.bednar@example.com','Excepturi excepturi repudiandae rem consectetur sapiente.'),(77,3,'watsica.polly@example.net','Et in aperiam cum sint perferendis consequuntur porro.'),(78,41,'gwendolyn.runolfsdottir@example.com','Incidunt sed exercitationem dolorum et et sed tempore.'),(79,108,'jacobson.jerry@example.org','Modi rerum est optio aspernatur sint a amet.'),(80,234,'ewindler@example.com','Vitae incidunt qui ex iure facilis modi vero.'),(81,1277,'testmail@testmail.com',NULL),(82,1281,'testmail@testmail.com',NULL),(83,1286,'testmail@testmail.com',NULL);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_table`
--

DROP TABLE IF EXISTS `entity_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_table` (
  `entity_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'unique value for whole system',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'time and date for entity creation',
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'time and date of entity update',
  `deleted` tinyint(1) DEFAULT '0' COMMENT 'shows status of entity',
  PRIMARY KEY (`entity_id`),
  KEY `idx_entityid` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_table`
--

LOCK TABLES `entity_table` WRITE;
/*!40000 ALTER TABLE `entity_table` DISABLE KEYS */;
INSERT INTO `entity_table` VALUES (1,'1987-09-17 18:18:12','2007-12-27 20:50:48',1),(2,'1981-08-06 01:58:02','1994-04-27 11:52:23',1),(3,'1989-02-09 02:33:03','2010-02-25 23:46:12',0),(4,'2018-04-28 15:24:22','2018-04-28 15:24:22',1),(5,'2002-09-11 15:04:14','2002-09-11 15:04:14',1),(6,'2017-07-18 06:39:46','2017-07-18 06:39:46',1),(7,'1991-11-03 10:16:42','1991-11-03 10:16:42',1),(8,'1997-08-30 05:59:10','2004-03-13 15:08:41',1),(9,'2007-08-27 08:52:45','2007-08-27 08:52:45',1),(10,'2011-05-17 02:03:11','2011-11-20 12:41:08',1),(11,'1991-08-19 00:45:51','1991-08-19 00:45:51',0),(12,'1973-07-23 18:28:25','1973-07-23 18:28:25',1),(13,'1981-07-30 04:04:00','1992-07-25 01:42:02',0),(14,'1997-01-15 11:47:37','2019-05-26 05:40:53',1),(15,'1986-03-10 20:18:28','2011-06-16 07:32:24',1),(16,'1971-09-19 09:22:45','1994-12-23 15:33:15',1),(17,'2015-11-14 18:43:14','2015-11-14 18:43:14',1),(18,'2001-05-28 02:04:10','2010-03-04 02:14:54',1),(19,'1996-07-25 16:02:27','2010-09-10 00:56:15',1),(20,'1980-06-11 21:33:11','1984-03-03 08:59:29',1),(21,'1987-05-19 09:13:52','2005-02-16 11:40:50',1),(22,'2012-01-07 03:43:45','2017-08-17 21:14:44',1),(23,'2001-10-22 14:09:46','2001-10-22 14:09:46',1),(24,'1995-05-11 10:52:41','1995-05-11 10:52:41',1),(25,'1992-07-31 14:32:04','1997-08-23 14:57:14',1),(26,'2001-08-17 21:11:06','2001-08-17 21:11:06',1),(27,'1975-04-03 09:29:37','2002-08-24 18:45:56',1),(28,'1971-05-27 20:38:51','2015-11-28 09:55:35',1),(29,'1974-10-20 02:53:38','1985-01-20 22:29:42',0),(30,'1979-05-28 05:46:43','1979-05-28 05:46:43',1),(31,'2013-03-22 15:55:02','2013-03-22 15:55:02',1),(32,'1978-09-03 03:49:37','1978-09-03 03:49:37',1),(33,'1978-04-18 21:01:06','1990-05-15 09:05:24',1),(34,'2017-06-06 07:51:02','2017-06-06 07:51:02',0),(35,'1972-06-08 03:07:33','1993-01-07 06:16:16',1),(36,'2009-03-24 10:14:40','2009-03-24 10:14:40',1),(37,'1981-08-28 19:25:08','2014-11-27 03:20:19',1),(38,'1983-10-18 05:57:22','1983-10-18 05:57:22',1),(39,'1981-10-19 05:41:03','2011-08-27 12:55:24',1),(40,'1997-10-11 22:59:36','2004-02-05 16:50:13',1),(41,'2016-02-17 04:22:53','2016-02-17 04:22:53',1),(42,'2008-12-01 05:29:34','2008-12-01 05:29:34',1),(43,'2018-04-25 10:25:11','2018-04-25 10:25:11',1),(44,'1999-01-13 05:27:47','1999-01-13 05:27:47',1),(45,'1981-09-04 06:57:29','1994-10-05 13:55:46',1),(46,'2016-12-12 15:25:10','2016-12-12 15:25:10',1),(47,'1992-01-16 16:48:56','1992-01-16 16:48:56',1),(48,'2007-10-30 05:20:59','2012-07-22 03:34:03',1),(49,'2016-11-25 01:46:37','2016-11-25 01:46:37',1),(50,'2013-02-23 17:50:18','2013-02-23 17:50:18',1),(51,'1985-07-13 13:41:37','1991-11-23 13:01:32',1),(52,'1989-07-31 19:58:28','1989-07-31 19:58:28',1),(53,'1993-09-27 06:07:12','2010-08-13 04:27:50',1),(54,'1984-12-07 05:39:55','1984-12-07 05:39:55',1),(55,'1997-07-29 10:29:58','1997-07-29 10:29:58',1),(56,'2012-02-01 05:30:02','2017-06-16 12:44:28',1),(57,'1981-07-22 03:20:37','1981-07-22 03:20:37',1),(58,'1988-10-20 06:49:16','1994-03-18 16:30:49',1),(59,'1981-09-26 13:02:13','1994-05-15 18:25:50',1),(60,'2010-03-24 12:49:27','2010-03-24 12:49:27',1),(61,'2004-06-02 19:06:56','2016-06-14 16:52:51',1),(62,'1989-01-30 01:07:25','2000-10-05 20:23:46',1),(63,'1973-02-28 02:26:01','2006-10-24 09:33:17',1),(64,'1994-01-23 11:11:28','1994-01-23 11:11:28',1),(65,'1982-03-25 08:26:31','1986-06-18 05:51:33',1),(66,'1986-06-21 05:47:38','2013-10-25 03:53:37',1),(67,'1984-08-07 14:48:21','2011-04-26 12:26:07',1),(68,'1977-10-29 08:45:16','2000-02-11 14:14:24',1),(69,'1975-01-20 20:13:53','1986-04-11 07:00:09',1),(70,'1970-11-24 10:38:23','2006-10-10 05:45:29',1),(71,'1978-11-07 10:33:48','2014-06-12 03:01:24',1),(72,'1977-12-16 18:46:18','1997-06-09 04:02:27',1),(73,'1990-06-07 01:49:19','2013-03-30 05:26:19',1),(74,'2008-05-24 21:29:57','2017-10-12 23:20:57',1),(75,'2001-12-10 08:28:04','2001-12-10 08:28:04',1),(76,'1990-09-10 10:50:24','2007-03-29 12:01:28',1),(77,'1996-05-03 12:07:14','1999-07-12 17:37:05',1),(78,'2008-03-29 03:12:38','2008-03-29 03:12:38',1),(79,'2018-06-18 08:21:52','2018-06-18 08:21:52',0),(80,'1974-08-11 11:08:02','1979-10-11 09:35:04',1),(81,'2012-03-23 07:07:57','2012-03-23 07:07:57',1),(82,'2001-05-06 03:44:52','2001-05-06 03:44:52',1),(83,'2000-09-13 23:32:26','2015-06-14 13:28:32',1),(84,'2016-06-24 17:45:51','2016-06-24 17:45:51',1),(85,'2000-07-27 01:37:19','2000-07-27 01:37:19',1),(86,'1993-05-06 20:50:34','1993-05-06 20:50:34',1),(87,'2021-01-30 08:08:26','2021-01-30 08:08:26',1),(88,'1973-06-08 13:17:53','2011-08-19 07:50:55',1),(89,'1988-01-18 03:24:18','2019-05-03 23:38:53',1),(90,'1983-01-16 13:58:01','1999-09-25 16:52:46',1),(91,'1992-03-27 08:26:35','1996-03-12 18:23:18',1),(92,'2014-11-20 09:30:11','2014-11-20 09:30:11',1),(93,'2017-08-24 03:48:59','2017-08-24 03:48:59',1),(94,'1970-07-21 13:58:48','1996-09-23 09:07:55',1),(95,'1998-01-26 01:16:26','1998-01-26 01:16:26',1),(96,'1972-03-05 07:43:02','2009-10-08 03:39:16',1),(97,'1995-11-27 16:13:00','2013-10-11 17:50:05',1),(98,'1984-09-11 15:08:16','1989-12-08 16:05:00',1),(99,'2008-12-18 00:54:42','2013-12-15 07:29:38',1),(100,'1993-07-02 05:48:29','1993-07-02 05:48:29',1),(101,'1976-10-14 18:38:49','1977-08-11 11:54:34',0),(102,'1974-08-25 16:13:02','1987-04-24 08:30:37',1),(103,'2001-04-24 03:05:35','2001-04-24 03:05:35',1),(104,'1984-05-25 12:24:19','2021-01-12 16:19:09',1),(105,'2003-02-13 10:54:06','2003-02-13 10:54:06',1),(106,'2001-01-31 00:40:55','2001-01-31 00:40:55',1),(107,'2017-08-21 02:34:03','2017-08-21 02:34:03',1),(108,'1995-08-07 11:42:08','1995-08-07 11:42:08',1),(109,'1993-12-15 22:05:21','1993-12-15 22:05:21',1),(110,'1982-04-22 22:11:00','2012-03-25 01:14:46',1),(111,'1999-05-29 07:29:19','1999-05-29 07:29:19',1),(112,'2014-05-16 23:21:23','2014-05-16 23:21:23',1),(113,'1987-12-22 06:36:57','1987-12-22 06:36:57',1),(114,'2003-11-30 23:25:50','2003-11-30 23:25:50',1),(115,'2007-11-16 10:45:49','2007-11-16 10:45:49',1),(116,'2010-03-30 13:16:21','2011-06-16 11:08:14',1),(117,'2017-03-13 01:23:53','2017-03-13 01:23:53',1),(118,'1979-01-27 23:21:09','1983-08-21 03:29:41',1),(119,'2015-12-29 12:50:17','2015-12-29 12:50:17',1),(120,'1998-01-22 06:14:53','1998-01-22 06:14:53',1),(121,'1971-11-28 16:36:37','1974-05-29 10:24:00',1),(122,'2005-11-03 05:48:20','2005-11-03 05:48:20',1),(123,'1992-04-23 09:11:17','2014-08-28 17:59:50',1),(124,'1972-08-14 17:50:40','1979-02-13 13:14:43',1),(125,'1988-12-08 01:28:46','1988-12-08 01:28:46',1),(126,'2000-01-20 12:55:14','2006-11-26 01:01:47',1),(127,'1981-11-06 21:50:05','1988-05-23 05:46:37',1),(128,'1982-04-21 18:01:30','2015-12-05 11:16:57',1),(129,'1990-04-23 12:22:04','1990-04-23 12:22:04',1),(130,'1978-02-28 03:44:23','2003-06-09 21:56:27',1),(131,'1971-05-03 04:35:22','2007-03-24 07:45:05',1),(132,'1975-12-29 02:46:01','2000-02-21 18:19:35',1),(133,'2016-06-14 02:00:11','2016-06-14 02:00:11',1),(134,'1975-09-05 16:22:13','1996-06-25 09:52:11',1),(135,'1987-06-11 09:34:22','1991-02-06 13:29:20',1),(136,'1973-11-29 08:28:25','2007-11-12 11:50:29',1),(137,'2009-02-23 13:30:36','2009-02-23 13:30:36',1),(138,'1973-07-02 21:24:40','2000-08-21 06:36:19',1),(139,'1970-09-22 00:28:12','1987-09-11 09:06:57',1),(140,'2000-05-17 19:25:29','2000-05-17 19:25:29',1),(141,'2020-12-20 18:53:52','2021-01-23 07:38:49',1),(142,'1986-11-19 03:52:41','1986-11-19 03:52:41',1),(143,'1993-11-04 15:19:30','1993-11-04 15:19:30',1),(144,'2006-04-12 04:48:46','2008-07-17 23:48:28',1),(145,'1982-06-02 09:11:01','2016-08-22 17:53:13',1),(146,'1999-04-25 14:43:42','1999-04-25 14:43:42',1),(147,'1972-01-02 00:26:03','2000-09-27 17:38:04',1),(148,'1994-06-19 00:24:02','2018-12-11 08:22:14',1),(149,'1993-10-09 12:11:26','2006-08-01 18:10:06',1),(150,'1978-10-19 13:26:35','1989-08-24 15:10:31',1),(151,'1987-11-13 03:42:18','1990-06-08 03:13:56',1),(152,'1983-01-07 17:06:10','2006-06-01 21:06:31',1),(153,'1990-02-15 00:03:32','1990-02-15 00:03:32',1),(154,'2017-05-28 10:55:34','2017-05-28 10:55:34',1),(155,'1980-01-21 22:19:12','2008-07-27 02:19:48',1),(156,'1975-02-28 20:52:15','2010-09-14 03:08:32',1),(157,'1990-11-04 18:07:10','2018-01-03 20:55:22',1),(158,'1989-02-17 23:51:41','1989-02-17 23:51:41',1),(159,'1982-01-24 00:32:50','2015-12-30 13:51:42',1),(160,'2003-09-30 06:26:12','2003-09-30 06:26:12',0),(161,'1996-02-13 07:36:39','2019-12-14 00:41:26',1),(162,'2007-01-06 16:35:55','2010-04-28 11:40:00',1),(163,'2011-07-13 06:14:28','2011-07-13 06:14:28',1),(164,'1981-04-14 15:25:16','1991-11-02 18:27:45',1),(165,'2018-11-06 09:14:07','2018-11-06 09:14:07',1),(166,'2007-05-18 04:40:30','2007-05-18 04:40:30',1),(167,'1993-05-27 15:48:40','1993-05-27 15:48:40',1),(168,'1982-10-24 00:39:23','1982-10-24 00:39:23',0),(169,'1984-01-13 19:14:07','2013-07-16 02:16:05',1),(170,'1973-06-16 22:09:51','2011-03-10 06:30:37',1),(171,'1986-08-02 07:02:32','1986-08-02 07:02:32',1),(172,'1992-04-23 11:55:21','2011-12-23 02:08:03',1),(173,'2016-10-05 12:53:58','2016-10-05 12:53:58',1),(174,'2011-12-25 11:07:36','2011-12-25 11:07:36',1),(175,'2008-12-15 08:58:24','2018-04-26 06:43:19',1),(176,'1997-08-06 10:04:59','1997-08-06 10:04:59',1),(177,'1988-08-03 03:55:59','1988-08-03 03:55:59',1),(178,'1991-05-19 22:04:53','1991-05-19 22:04:53',1),(179,'2013-11-30 08:22:48','2013-11-30 08:22:48',1),(180,'1992-01-30 08:44:39','2005-01-14 22:54:09',1),(181,'2012-05-03 17:48:23','2012-05-03 17:48:23',1),(182,'2005-05-18 17:32:47','2005-05-18 17:32:47',1),(183,'1977-07-29 13:54:32','2018-12-28 09:43:50',1),(184,'2008-03-09 03:26:25','2008-03-09 03:26:25',1),(185,'1999-09-13 14:57:30','2010-03-09 05:49:07',1),(186,'2012-12-26 11:59:50','2012-12-26 11:59:50',1),(187,'2020-08-10 00:37:16','2020-08-10 00:37:16',1),(188,'1990-08-28 22:38:58','1990-08-28 22:38:58',1),(189,'1994-02-21 00:52:22','2005-01-01 23:25:09',1),(190,'1992-10-07 20:38:50','1993-05-24 13:38:00',1),(191,'2012-06-28 08:05:54','2012-06-28 08:05:54',1),(192,'2008-07-20 00:34:33','2011-06-16 23:26:53',1),(193,'1990-05-03 12:14:28','1990-05-03 12:14:28',1),(194,'1970-04-26 10:47:33','1993-02-23 02:48:15',1),(195,'1971-02-15 10:47:22','2018-05-29 23:59:30',1),(196,'2015-07-30 22:43:24','2015-07-30 22:43:24',1),(197,'2020-12-01 12:43:39','2020-12-01 12:43:39',1),(198,'1989-10-30 13:19:29','2019-12-01 19:57:26',1),(199,'2011-09-10 21:50:07','2011-09-10 21:50:07',1),(200,'2006-11-29 22:44:01','2006-11-29 22:44:01',1),(201,'1970-08-01 11:05:11','2003-01-10 14:02:11',1),(202,'1980-10-06 09:22:47','2020-07-09 07:57:14',1),(203,'2006-03-06 23:47:26','2006-03-06 23:47:26',0),(204,'1984-12-01 14:01:04','1984-12-01 14:01:04',1),(205,'1981-01-31 03:56:22','1981-01-31 03:56:22',1),(206,'1987-06-16 07:10:27','1987-06-16 07:10:27',1),(207,'2010-09-21 23:36:04','2010-09-21 23:36:04',1),(208,'2010-06-01 18:06:05','2011-12-02 15:21:18',1),(209,'2008-12-13 08:38:27','2008-12-13 08:38:27',1),(210,'1988-05-30 22:09:13','1997-01-23 08:16:37',1),(211,'2014-11-20 13:48:16','2014-11-20 13:48:16',1),(212,'1985-12-27 21:19:56','1985-12-27 21:19:56',1),(213,'2019-03-05 14:16:38','2019-03-05 14:16:38',1),(214,'1989-08-22 01:16:54','1989-08-22 01:16:54',1),(215,'2018-11-20 12:51:45','2018-11-20 12:51:45',1),(216,'2006-06-29 12:04:20','2006-06-29 12:04:20',1),(217,'1983-12-23 16:40:57','1990-07-15 21:12:19',1),(218,'1980-09-20 18:46:57','1998-11-08 13:52:33',1),(219,'1987-08-28 21:10:54','1987-08-28 21:10:54',1),(220,'1995-07-20 22:24:26','1995-07-20 22:24:26',1),(221,'1997-07-13 16:54:30','2003-11-14 18:34:01',1),(222,'2001-09-15 03:10:54','2011-06-25 04:59:56',1),(223,'1993-11-20 05:46:01','2005-07-24 23:37:22',1),(224,'2012-03-02 04:06:58','2012-03-02 04:06:58',0),(225,'2009-01-31 21:56:06','2017-03-26 11:06:31',1),(226,'2011-05-13 02:36:17','2011-05-13 02:36:17',1),(227,'2009-01-04 20:46:09','2009-01-04 20:46:09',1),(228,'1978-07-11 23:58:56','1978-07-11 23:58:56',1),(229,'2002-03-27 13:20:23','2020-11-04 03:01:06',1),(230,'1970-03-22 12:37:31','2011-01-04 02:34:34',1),(231,'1978-01-27 23:08:25','2006-08-20 06:01:13',1),(232,'1998-05-22 09:43:46','1998-05-22 09:43:46',1),(233,'2020-11-05 09:10:33','2020-11-05 09:10:33',1),(234,'1992-11-07 00:26:05','1992-11-07 00:26:05',1),(235,'1974-09-16 05:46:56','2011-01-16 00:01:02',1),(236,'2011-02-04 23:56:05','2011-02-04 23:56:05',1),(237,'1984-09-17 15:22:05','2013-09-06 10:51:48',1),(238,'2008-03-04 13:18:31','2008-03-04 13:18:31',1),(239,'2016-09-07 06:10:11','2016-09-07 06:10:11',1),(240,'1988-09-11 20:04:58','2010-01-16 21:53:43',1),(241,'2005-06-09 20:27:38','2005-06-09 20:27:38',1),(242,'1981-05-04 22:26:28','1996-03-24 01:10:55',1),(243,'2004-12-23 12:21:27','2004-12-23 12:21:27',1),(244,'2002-12-14 17:08:20','2007-10-19 12:20:04',1),(245,'2011-10-08 07:50:06','2011-10-08 07:50:06',1),(246,'1983-12-03 19:24:57','1983-12-03 19:24:57',1),(247,'1982-06-15 05:43:19','2010-10-22 15:49:50',1),(248,'2015-02-04 08:17:59','2015-02-04 08:17:59',1),(249,'1980-07-27 12:47:54','1995-10-23 20:49:06',1),(250,'2011-08-11 04:42:27','2011-08-11 04:42:27',1),(251,'2010-06-12 12:03:01','2010-06-12 12:03:01',1),(252,'2020-07-26 01:03:47','2020-07-26 01:03:47',1),(253,'2003-09-13 22:34:47','2003-09-13 22:34:47',1),(254,'1976-06-07 06:12:52','2006-01-08 21:15:15',1),(255,'2003-07-18 11:02:04','2003-07-18 11:02:04',1),(256,'1979-05-03 13:50:28','2018-12-18 09:09:12',1),(257,'2005-10-28 14:07:40','2005-10-28 14:07:40',1),(258,'1985-01-19 05:00:21','2017-04-25 02:31:02',1),(259,'1974-11-01 22:51:00','1985-05-08 13:33:44',0),(260,'2017-04-11 01:45:51','2017-04-11 01:45:51',0),(261,'2005-04-29 16:14:40','2005-04-29 16:14:40',0),(262,'2005-01-28 09:26:39','2005-01-28 09:26:39',0),(263,'1992-01-20 15:32:18','1992-01-20 15:32:18',0),(264,'1997-07-16 20:49:10','2017-06-12 23:09:44',0),(265,'2013-07-13 08:04:11','2013-07-13 08:04:11',0),(266,'1983-02-25 08:39:36','1998-02-14 21:54:12',0),(267,'1976-04-29 11:40:57','2004-12-21 04:23:05',0),(268,'1988-10-10 23:56:38','1988-10-10 23:56:38',0),(269,'1989-11-08 20:31:45','2012-10-01 16:36:10',0),(270,'1996-06-27 20:58:31','1996-06-27 20:58:31',0),(271,'1992-09-16 18:33:24','1992-09-16 18:33:24',0),(272,'1977-03-04 01:50:07','1978-06-06 01:09:04',0),(273,'1993-10-21 22:36:25','2005-09-11 10:41:55',0),(274,'1977-04-30 16:33:32','2010-02-19 07:28:33',0),(275,'1973-09-11 05:10:45','2000-08-22 17:59:15',0),(276,'1986-09-12 20:54:58','1998-12-02 05:07:37',0),(277,'2002-12-11 12:00:52','2002-12-11 12:00:52',0),(278,'1989-05-07 23:01:33','2017-09-13 12:12:41',0),(279,'2008-08-29 06:36:42','2008-08-29 06:36:42',0),(280,'1996-09-24 21:44:22','2004-08-03 12:09:51',0),(281,'1978-06-19 18:51:16','2015-02-16 17:06:04',0),(282,'2017-11-15 09:40:32','2017-11-15 09:40:32',0),(283,'2005-10-08 19:33:34','2005-10-08 19:33:34',0),(284,'1985-05-15 15:27:15','1985-05-15 15:27:15',0),(285,'2009-05-02 16:37:55','2009-05-02 16:37:55',0),(286,'1993-05-20 02:37:25','1993-05-20 02:37:25',0),(287,'2020-10-26 13:36:04','2020-10-26 13:36:04',0),(288,'2006-12-28 06:05:21','2006-12-28 06:05:21',0),(289,'1997-01-02 09:25:08','1997-01-02 09:25:08',0),(290,'1973-08-01 21:09:15','1991-05-15 21:01:07',1),(291,'2019-12-20 00:13:47','2019-12-20 00:13:47',0),(292,'2002-07-03 22:10:13','2002-07-03 22:10:13',0),(293,'1984-06-16 18:26:06','1994-07-20 12:25:19',0),(294,'2009-10-28 08:18:20','2009-10-28 08:18:20',0),(295,'2017-05-30 10:13:00','2017-05-30 10:13:00',0),(296,'2013-08-06 06:23:36','2013-08-06 06:23:36',0),(297,'2007-08-31 18:45:36','2014-06-19 19:28:53',1),(298,'2016-09-30 01:39:51','2016-09-30 01:39:51',0),(299,'1983-10-07 17:39:53','2005-09-28 01:48:14',0),(300,'1975-11-06 02:50:57','2009-03-06 12:41:08',0),(301,'1992-08-29 13:59:40','2007-06-28 07:02:48',0),(302,'1983-03-29 04:17:46','1983-04-08 02:58:15',1),(303,'2011-05-25 13:57:03','2011-05-25 13:57:03',0),(304,'2014-07-08 00:29:34','2014-07-08 00:29:34',0),(305,'1991-10-02 16:33:19','1994-09-29 05:26:19',0),(306,'1978-04-23 12:58:56','2004-02-01 02:34:37',0),(307,'2001-10-20 11:08:56','2012-09-12 10:24:49',0),(308,'2019-12-15 10:44:49','2019-12-15 10:44:49',0),(309,'2015-10-22 04:44:13','2015-10-22 04:44:13',0),(310,'1976-08-04 08:33:34','2002-05-05 23:49:19',0),(311,'1999-10-30 13:18:36','1999-10-30 13:18:36',0),(312,'1985-01-28 18:14:48','1996-12-20 02:39:45',0),(313,'1981-09-24 15:23:39','1991-01-13 00:43:41',0),(314,'2000-04-15 13:23:00','2010-08-25 04:58:52',0),(315,'1993-07-18 21:16:45','2019-01-18 10:06:15',0),(316,'1972-11-03 12:01:52','2020-04-16 12:21:05',0),(317,'1978-03-16 08:56:09','1988-06-14 19:32:14',0),(318,'2010-06-25 16:33:55','2010-06-25 16:33:55',0),(319,'1974-08-15 17:41:45','1980-08-04 07:33:13',0),(320,'1992-03-18 12:02:48','1993-10-19 21:43:51',0),(321,'1974-10-26 20:04:33','2002-09-28 02:08:41',0),(322,'1997-12-01 13:53:21','1997-12-01 13:53:21',0),(323,'1986-05-09 22:39:18','2004-11-17 15:45:24',0),(324,'1984-11-17 22:53:02','1996-06-29 06:18:18',0),(325,'2001-01-13 10:18:05','2001-01-13 10:18:05',0),(326,'1997-08-26 16:01:36','1997-08-26 16:01:36',0),(327,'2006-01-27 16:20:04','2013-08-01 04:50:13',0),(328,'1979-08-04 12:17:57','2012-07-20 19:58:49',0),(329,'2015-12-12 03:29:17','2015-12-12 03:29:17',0),(330,'1999-11-30 21:26:36','2012-11-14 10:55:16',0),(331,'1973-12-16 23:23:47','2001-05-25 11:27:48',0),(332,'1989-10-12 10:52:52','2004-10-17 07:53:02',0),(333,'1996-08-29 10:46:08','1996-08-29 10:46:08',0),(334,'1974-10-09 08:52:51','2003-06-29 23:07:19',0),(335,'1978-10-17 10:50:53','2018-01-05 13:40:21',1),(336,'2018-05-09 14:44:54','2018-05-09 14:44:54',0),(337,'2010-08-10 08:12:30','2010-08-10 08:12:30',0),(338,'1979-08-26 19:09:13','2006-06-01 03:05:35',0),(339,'1972-12-12 19:41:02','2001-12-05 22:24:14',0),(340,'2007-06-12 15:03:21','2007-06-12 15:03:21',0),(341,'1983-02-28 13:14:08','2015-07-10 14:12:40',0),(342,'2014-07-03 09:32:32','2014-07-03 09:32:32',0),(343,'1989-11-05 00:13:02','1989-11-05 00:13:02',0),(344,'2015-10-21 06:24:22','2015-10-21 06:24:22',0),(345,'1981-06-13 14:31:29','2009-08-12 18:07:26',0),(346,'2008-02-11 08:10:43','2008-02-11 08:10:43',0),(347,'2010-01-23 07:27:40','2010-01-23 07:27:40',0),(348,'1990-08-16 20:28:37','1996-06-16 21:25:03',0),(349,'2021-01-07 19:00:04','2021-01-07 19:00:04',0),(350,'1990-10-22 03:06:19','1990-10-22 03:06:19',0),(351,'1977-06-07 11:22:11','1978-10-19 11:22:53',0),(352,'1978-08-27 19:17:46','1978-08-27 19:17:46',0),(353,'2016-06-16 02:36:40','2016-06-16 02:36:40',0),(354,'2005-10-13 09:04:03','2005-10-13 09:04:03',0),(355,'1990-01-23 13:51:12','1995-12-29 21:35:51',0),(356,'2020-01-18 20:20:11','2020-01-18 20:20:11',0),(357,'2020-06-29 18:59:43','2020-06-29 18:59:43',0),(358,'1993-09-14 16:57:08','1993-09-14 16:57:08',0),(359,'1992-07-05 15:15:00','2011-08-23 03:21:35',0),(360,'2019-06-18 21:10:06','2019-06-18 21:10:06',0),(361,'2015-03-29 05:53:17','2015-03-29 05:53:17',0),(362,'2013-05-22 17:03:15','2013-05-22 17:03:15',0),(363,'1995-11-22 21:55:11','1995-11-22 21:55:11',0),(364,'2009-07-26 09:49:41','2009-07-26 09:49:41',0),(365,'1971-02-26 08:16:49','2013-10-13 16:00:21',0),(366,'1993-02-04 10:17:18','1993-02-04 10:17:18',0),(367,'1979-07-24 06:09:52','2003-01-30 11:46:33',0),(368,'1976-12-01 10:49:59','1987-11-12 21:55:42',0),(369,'1991-11-09 08:43:52','1998-04-21 16:09:44',0),(370,'1977-03-11 15:22:49','1978-12-08 17:27:16',0),(371,'1975-04-01 07:01:37','1991-11-13 03:17:51',0),(372,'2003-07-09 03:14:57','2003-07-09 03:14:57',0),(373,'1986-02-25 14:38:22','1992-07-31 07:08:16',0),(374,'1981-09-23 10:03:07','2005-04-16 02:17:15',0),(375,'2010-03-17 10:08:50','2010-03-17 10:08:50',0),(376,'2000-12-14 06:19:13','2000-12-14 06:19:13',0),(377,'1991-12-02 17:52:30','2018-01-19 09:52:19',1),(378,'2014-09-07 11:47:46','2014-09-07 11:47:46',0),(379,'1979-07-04 17:38:51','2014-08-05 20:31:15',0),(380,'1981-03-04 22:48:08','2016-06-28 01:23:47',0),(381,'1980-03-12 08:13:42','2012-10-06 20:00:21',0),(382,'1974-08-24 15:38:39','1991-02-26 13:27:10',1),(383,'1984-02-29 21:52:26','1996-09-23 21:11:18',1),(384,'1970-05-05 07:16:20','1971-02-12 02:49:15',0),(385,'1974-06-02 00:04:37','2016-12-26 21:23:14',0),(386,'2020-12-18 05:47:02','2020-12-18 05:47:02',0),(387,'1972-04-18 18:20:14','1992-03-25 09:46:08',0),(388,'1988-04-14 23:11:25','1998-10-27 22:27:38',0),(389,'2017-07-05 12:47:43','2017-07-05 12:47:43',0),(390,'2000-07-06 15:22:31','2000-07-06 15:22:31',0),(391,'1992-08-23 06:33:16','1992-08-23 06:33:16',0),(392,'2010-02-26 11:07:00','2019-05-16 21:11:04',0),(393,'1978-01-23 17:45:16','1997-07-12 06:18:57',0),(394,'1999-01-04 04:59:27','2003-07-09 23:43:12',0),(395,'2011-12-03 03:00:43','2011-12-03 03:00:43',0),(396,'1977-10-20 15:25:32','1979-11-11 09:19:13',0),(397,'2020-02-14 16:53:48','2020-02-14 16:53:48',0),(398,'2016-05-12 16:02:25','2016-05-12 16:02:25',0),(399,'1983-06-13 22:16:32','1983-06-13 22:16:32',0),(400,'1982-10-28 14:58:48','2004-02-19 04:12:43',0),(401,'1997-08-07 03:54:20','1997-08-07 03:54:20',0),(402,'1981-06-07 10:21:23','1990-01-27 08:13:48',0),(403,'2008-03-29 19:49:28','2010-03-25 10:42:04',0),(404,'1988-11-21 05:17:08','2006-01-11 13:14:13',1),(405,'2018-06-17 19:24:02','2018-06-17 19:24:02',0),(406,'1971-07-01 14:56:20','1976-04-24 00:38:40',0),(407,'1985-08-22 04:18:08','2004-08-29 01:36:50',0),(408,'2016-08-05 13:23:41','2016-08-05 13:23:41',0),(409,'1973-07-24 20:22:49','2015-05-29 20:09:45',0),(410,'2019-08-28 03:27:02','2019-08-28 03:27:02',0),(411,'2018-04-05 19:01:24','2018-04-05 19:01:24',0),(412,'1983-03-05 21:14:53','1983-03-05 21:14:53',0),(413,'1972-06-12 21:27:10','2004-01-03 17:26:55',0),(414,'1976-10-16 02:29:15','1982-03-16 08:50:47',0),(415,'1980-10-30 07:57:31','2016-12-13 00:11:03',0),(416,'1970-10-15 19:36:40','2010-08-06 08:28:06',0),(417,'2013-11-08 11:24:03','2013-11-08 11:24:03',0),(418,'2018-07-10 11:54:34','2018-07-10 11:54:34',0),(419,'1993-04-10 10:07:32','1993-04-10 10:07:32',0),(420,'1997-01-26 12:02:31','1997-01-26 12:02:31',0),(421,'2011-11-05 19:37:41','2011-11-05 19:37:41',0),(422,'2012-05-12 08:15:17','2012-05-12 08:15:17',0),(423,'2009-04-02 05:14:29','2009-04-02 05:14:29',0),(424,'1990-04-11 19:12:26','2007-11-18 07:03:03',0),(425,'1989-07-15 10:39:22','1989-07-15 10:39:22',0),(426,'1990-02-09 02:05:19','2019-09-09 17:49:25',0),(427,'2013-07-31 14:17:16','2013-07-31 14:17:16',0),(428,'1980-01-15 18:57:56','1993-01-31 19:19:27',0),(429,'1986-03-13 13:10:22','1986-03-13 13:10:22',0),(430,'1975-01-01 00:20:22','2010-06-07 06:21:03',0),(431,'1985-02-05 11:27:38','1991-04-12 15:52:36',0),(432,'1979-01-25 03:44:51','1985-11-12 22:24:06',0),(433,'2003-08-14 01:37:02','2003-08-14 01:37:02',0),(434,'2014-07-09 22:59:06','2014-07-09 22:59:06',0),(435,'2008-11-28 18:34:00','2008-11-28 18:34:00',0),(436,'1999-07-19 19:45:46','1999-07-19 19:45:46',0),(437,'1981-11-28 17:57:41','1984-08-08 13:31:50',0),(438,'1975-11-18 02:34:42','2009-09-09 14:18:08',0),(439,'2007-08-31 00:52:58','2018-06-17 04:56:16',0),(440,'1995-10-16 10:36:33','2005-03-13 19:04:05',0),(441,'1998-03-02 10:58:45','2003-10-14 05:32:51',0),(442,'1984-09-19 06:38:49','1984-09-19 06:38:49',0),(443,'2012-11-19 18:39:39','2012-11-19 18:39:39',0),(444,'1993-03-21 06:22:59','1993-03-21 06:22:59',0),(445,'2012-12-30 10:41:16','2012-12-30 10:41:16',0),(446,'1982-07-02 23:38:25','1982-07-02 23:38:25',0),(447,'1976-04-27 20:35:47','1979-09-28 04:05:28',0),(448,'2012-11-16 18:30:50','2012-11-16 18:30:50',0),(449,'2016-10-06 21:08:46','2018-04-04 11:28:27',0),(450,'2020-06-15 21:04:04','2020-06-15 21:04:04',1),(451,'2006-07-02 17:19:51','2006-07-02 17:19:51',0),(452,'2017-12-20 15:32:10','2021-01-02 23:06:03',0),(453,'2000-11-18 16:14:43','2000-11-18 16:14:43',0),(454,'1993-10-08 06:07:49','1993-10-08 06:07:49',1),(455,'2007-04-17 08:32:22','2019-11-05 02:31:08',0),(456,'1973-02-13 14:07:17','1983-05-21 08:04:45',0),(457,'1999-10-10 00:27:34','1999-10-10 00:27:34',0),(458,'2012-10-05 11:21:29','2012-10-05 11:21:29',0),(459,'2014-04-18 13:28:39','2014-04-18 13:28:39',0),(460,'2020-12-25 17:24:16','2020-12-25 17:24:16',0),(461,'2008-10-12 20:56:02','2008-10-12 20:56:02',0),(462,'1976-09-09 05:03:28','1976-09-09 05:03:28',1),(463,'1975-09-20 16:31:15','1985-05-13 12:37:15',0),(464,'1998-01-08 21:33:00','2011-10-30 03:58:41',0),(465,'1993-07-11 07:16:16','1993-07-11 07:16:16',0),(466,'2020-04-23 05:08:47','2020-04-23 05:08:47',0),(467,'2000-02-10 17:50:45','2000-02-10 17:50:45',0),(468,'1976-08-09 18:23:41','2014-08-17 19:41:19',0),(469,'2018-07-08 04:40:20','2018-07-08 04:40:20',0),(470,'1996-10-01 20:40:09','2005-09-28 07:02:37',0),(471,'2013-11-15 05:55:51','2013-11-15 05:55:51',0),(472,'2017-05-27 16:14:35','2017-05-27 16:14:35',0),(473,'1996-05-27 23:59:18','1996-05-27 23:59:18',0),(474,'2006-09-27 23:08:26','2006-09-27 23:08:26',0),(475,'2001-08-21 22:22:30','2010-02-28 17:20:09',0),(476,'1981-03-17 15:53:48','2005-07-29 10:04:08',0),(477,'2020-03-11 22:32:32','2020-03-11 22:32:32',0),(478,'2016-12-15 11:17:06','2016-12-15 11:17:06',0),(479,'1996-05-26 11:48:07','1996-05-26 11:48:07',1),(480,'1997-09-23 20:41:09','1998-04-21 14:23:29',0),(481,'2012-05-05 03:35:09','2014-12-20 07:27:23',0),(482,'1979-08-07 19:46:47','1979-08-07 19:46:47',0),(483,'1975-02-09 01:34:45','1997-11-23 20:38:50',0),(484,'1995-08-22 18:28:51','2000-07-03 10:06:57',0),(485,'2014-04-27 06:59:02','2014-04-27 06:59:02',0),(486,'1996-07-11 11:04:27','2004-10-25 23:58:42',0),(487,'1981-09-05 05:50:03','1981-09-05 05:50:03',0),(488,'1983-07-23 08:17:57','1997-09-29 10:23:41',0),(489,'1992-06-12 09:14:46','1992-06-12 09:14:46',0),(490,'1993-07-04 16:20:06','2010-05-30 09:18:51',0),(491,'2017-05-29 18:37:24','2017-05-29 18:37:24',0),(492,'2015-06-23 02:08:48','2015-06-23 02:08:48',0),(493,'1996-11-10 02:12:04','2002-02-17 11:36:26',0),(494,'2013-12-26 23:08:36','2013-12-26 23:08:36',0),(495,'2002-02-24 22:26:02','2002-02-24 22:26:02',0),(496,'1985-07-08 18:22:22','1985-07-08 18:22:22',0),(497,'1999-07-07 23:05:05','1999-07-07 23:05:05',0),(498,'2009-06-23 20:27:21','2009-06-23 20:27:21',0),(499,'2001-11-19 19:37:19','2012-03-20 01:17:09',0),(500,'1995-12-02 17:06:54','1995-12-02 17:06:54',0),(501,'2012-06-01 05:51:17','2015-04-13 13:50:41',0),(502,'2008-05-09 11:08:46','2008-05-09 11:08:46',0),(503,'1978-06-04 01:39:51','1983-09-27 18:31:34',0),(504,'2016-03-19 16:17:02','2016-03-19 16:17:02',0),(505,'1971-09-18 00:45:44','1983-06-17 11:58:27',0),(506,'1992-11-30 16:19:31','1992-11-30 16:19:31',0),(507,'2003-10-02 06:41:01','2003-10-02 06:41:01',0),(508,'2011-05-10 11:42:18','2011-05-10 11:42:18',0),(509,'1989-03-06 05:09:27','2004-07-07 10:21:28',0),(510,'1992-08-09 11:33:28','2014-07-06 16:35:38',0),(511,'2010-11-06 04:55:28','2020-01-06 08:19:05',0),(512,'1976-01-21 18:32:14','1982-08-27 01:51:51',0),(513,'2013-12-10 21:53:03','2013-12-10 21:53:03',1),(514,'1983-12-15 07:25:07','2001-01-20 23:18:42',0),(515,'1985-12-20 02:43:30','2007-07-09 23:00:07',0),(516,'1970-01-15 06:17:59','1978-12-04 18:13:14',0),(517,'2009-08-16 17:22:03','2009-08-16 17:22:03',0),(518,'2008-10-22 05:51:30','2008-10-22 05:51:30',1),(519,'1973-05-31 14:02:33','2008-03-26 20:01:12',0),(520,'2010-09-05 09:26:40','2010-09-05 09:26:40',0),(521,'1983-02-03 21:54:43','2000-02-24 03:31:00',0),(522,'1974-12-22 18:22:14','1992-09-01 15:08:20',0),(523,'1982-02-16 10:17:34','1987-06-22 14:48:01',0),(524,'2007-07-24 17:02:39','2015-12-30 12:44:30',0),(525,'2004-02-05 10:23:51','2005-04-30 00:02:28',0),(526,'2019-12-28 02:58:49','2019-12-28 02:58:49',1),(527,'1984-05-12 00:32:04','2004-10-26 11:52:32',0),(528,'1974-02-08 02:48:54','2016-12-28 00:27:11',0),(529,'1974-05-22 02:51:37','2007-01-03 02:18:25',0),(530,'1972-08-08 17:47:39','2018-07-20 23:52:32',0),(531,'1974-06-27 20:05:35','2012-12-23 08:55:34',0),(532,'1970-03-23 09:51:31','2017-11-13 04:29:45',0),(533,'1985-10-30 21:26:42','1985-10-30 21:26:42',0),(534,'1993-04-16 08:44:11','1993-04-16 08:44:11',0),(535,'1975-03-12 13:51:21','2014-11-16 20:01:49',0),(536,'1998-01-27 10:02:16','2008-01-18 20:31:24',1),(537,'1975-08-10 11:52:37','1991-04-13 03:28:43',0),(538,'2000-11-15 00:40:15','2004-03-03 05:30:27',0),(539,'1995-04-23 23:23:14','1995-04-23 23:23:14',1),(540,'2011-05-20 08:54:19','2011-05-20 08:54:19',0),(541,'2020-01-21 16:34:52','2020-01-21 16:34:52',0),(542,'1995-03-22 11:07:40','1995-03-22 11:07:40',0),(543,'1985-05-06 13:47:31','2012-12-17 06:49:33',0),(544,'1999-11-08 05:10:42','1999-11-08 05:10:42',0),(545,'2014-02-20 23:53:36','2016-06-03 07:17:37',0),(546,'2017-10-12 16:57:12','2017-10-12 16:57:12',0),(547,'2012-08-26 08:09:13','2012-08-26 08:09:13',0),(548,'1996-06-09 16:39:32','2001-10-10 03:44:35',0),(549,'1991-03-11 09:40:37','1991-03-11 09:40:37',0),(550,'1983-10-10 12:49:59','1994-04-17 14:43:28',0),(551,'1980-02-26 00:44:37','2005-10-07 09:42:43',0),(552,'2008-06-25 09:25:34','2008-06-25 09:25:34',0),(553,'1998-02-21 08:07:13','1998-02-21 08:07:13',0),(554,'1978-10-14 14:50:19','2007-09-14 23:07:11',0),(555,'1975-12-01 05:37:34','1998-12-29 05:13:05',0),(556,'1973-11-02 07:05:42','1989-05-25 15:52:14',0),(557,'1974-09-04 11:28:04','2010-01-04 14:05:48',0),(558,'1981-05-16 20:08:58','2011-12-14 08:01:31',0),(559,'2008-03-02 16:05:23','2008-03-02 16:05:23',0),(560,'1991-10-19 03:08:21','1991-10-19 03:08:21',0),(561,'1997-09-28 14:59:07','1997-09-28 14:59:07',0),(562,'1989-10-25 23:56:02','1989-10-25 23:56:02',0),(563,'2017-12-24 02:09:13','2017-12-24 02:09:13',0),(564,'2017-07-14 13:10:21','2017-07-14 13:10:21',0),(565,'1990-04-12 21:12:13','2013-08-25 20:06:56',0),(566,'1980-05-01 08:36:58','1993-01-31 04:45:12',0),(567,'1981-04-20 05:45:01','1988-12-19 04:57:41',0),(568,'1991-07-26 13:48:52','2013-10-12 16:58:56',0),(569,'2015-02-22 09:03:26','2015-02-22 09:03:26',0),(570,'2009-11-10 05:45:22','2009-11-10 05:45:22',0),(571,'2008-07-21 19:53:50','2015-04-15 13:35:36',0),(572,'1982-12-11 20:14:26','1982-12-11 20:14:26',0),(573,'2011-07-10 01:00:06','2011-07-10 01:00:06',0),(574,'2007-02-08 19:42:17','2007-02-08 19:42:17',0),(575,'2004-02-01 20:49:09','2004-02-01 20:49:09',0),(576,'1974-05-26 12:32:03','1994-04-27 23:25:37',0),(577,'1990-05-18 02:26:59','2007-01-01 04:48:23',0),(578,'2012-07-26 03:53:50','2013-02-11 03:36:20',0),(579,'1984-07-28 21:32:46','2008-11-06 07:52:47',0),(580,'1988-05-27 02:57:33','1988-05-27 02:57:33',0),(581,'2008-02-21 16:49:51','2008-02-21 16:49:51',0),(582,'2011-10-15 11:52:31','2013-10-08 21:25:18',0),(583,'2002-05-28 19:18:30','2002-05-28 19:18:30',0),(584,'1972-08-21 05:16:52','1980-01-28 04:07:45',0),(585,'1997-10-14 04:25:31','1997-10-14 04:25:31',0),(586,'2003-09-20 21:52:50','2003-09-20 21:52:50',0),(587,'2017-04-24 03:27:19','2017-04-24 03:27:19',0),(588,'1976-08-27 08:32:39','1979-10-06 18:38:49',0),(589,'2004-09-06 12:26:00','2016-07-03 07:11:37',0),(590,'2001-01-11 18:00:55','2001-01-11 18:00:55',0),(591,'1970-01-24 22:10:27','2005-02-27 06:48:03',1),(592,'1982-08-12 14:17:51','1984-09-24 03:30:07',0),(593,'1972-10-27 14:22:28','2000-08-30 10:33:40',0),(594,'2017-01-30 13:42:38','2017-01-30 13:42:38',0),(595,'1974-03-20 14:11:13','2020-10-31 17:37:14',0),(596,'1988-08-11 04:12:06','1989-06-19 21:53:41',0),(597,'2013-04-20 23:46:09','2013-04-20 23:46:09',0),(598,'1992-03-16 01:06:00','2005-11-01 06:35:50',0),(599,'1995-11-24 20:55:28','2013-12-29 20:08:22',0),(600,'1981-10-12 01:42:42','1984-09-22 06:55:11',0),(601,'2018-05-21 19:12:13','2018-05-21 19:12:13',0),(602,'2010-04-14 18:47:35','2010-04-14 18:47:35',0),(603,'2007-09-14 12:34:37','2018-09-13 00:31:02',0),(604,'1984-10-03 06:26:29','2014-09-09 23:13:57',0),(605,'1995-03-11 07:36:03','1995-03-11 07:36:03',0),(606,'2019-12-09 08:47:07','2019-12-09 08:47:07',0),(607,'1985-08-11 03:03:15','1998-08-30 02:07:52',0),(608,'2013-07-26 13:51:24','2013-07-26 13:51:24',0),(609,'1973-10-14 17:35:12','1979-09-08 22:35:22',0),(610,'1983-08-10 04:03:20','1988-03-06 20:09:34',0),(611,'2012-02-15 06:42:08','2012-02-15 06:42:08',0),(612,'2012-04-29 03:05:07','2012-04-29 03:05:07',0),(613,'2011-09-11 01:04:30','2011-09-11 01:04:30',0),(614,'1988-01-25 02:42:45','1999-09-28 04:33:37',0),(615,'1985-09-10 21:55:19','1985-09-10 21:55:19',0),(616,'1998-04-09 23:20:18','2009-03-16 19:39:40',0),(617,'1972-06-21 01:38:44','2019-02-17 07:25:54',0),(618,'2012-06-27 09:31:37','2013-03-31 17:16:41',0),(619,'2009-03-09 02:48:37','2009-03-09 02:48:37',0),(620,'2010-02-13 04:15:43','2010-02-13 04:15:43',0),(621,'1974-09-02 11:17:02','1998-07-03 12:30:20',0),(622,'1991-05-05 18:43:23','1991-05-05 18:43:23',0),(623,'2014-06-15 17:49:24','2014-06-15 17:49:24',0),(624,'1983-01-16 22:29:03','1983-01-16 22:29:03',0),(625,'1970-05-13 01:47:31','1999-02-12 10:08:54',0),(626,'2011-02-05 00:52:31','2011-02-05 00:52:31',0),(627,'2002-11-04 11:10:11','2002-11-04 11:10:11',0),(628,'1970-09-25 23:54:35','1998-12-03 11:54:36',0),(629,'1999-05-18 21:28:33','1999-05-18 21:28:33',0),(630,'1986-01-17 00:19:19','2016-03-26 06:56:50',0),(631,'2005-12-12 06:26:30','2005-12-12 06:26:30',0),(632,'1979-07-15 21:28:07','2013-01-01 22:42:46',0),(633,'1986-04-28 13:54:48','1992-08-10 06:19:48',0),(634,'1985-08-03 00:51:41','2004-02-09 06:16:24',0),(635,'2007-03-03 20:04:13','2007-03-03 20:04:13',0),(636,'1983-11-21 02:02:18','1983-11-21 02:02:18',0),(637,'1990-07-16 23:17:18','1997-04-26 22:30:16',0),(638,'1985-06-28 23:26:55','1985-06-28 23:26:55',0),(639,'1995-05-31 18:47:18','1998-06-25 13:43:28',0),(640,'1974-12-15 08:16:18','2000-06-25 09:52:05',0),(641,'1991-12-12 03:16:51','2001-05-27 01:23:14',0),(642,'1988-12-28 07:37:02','1988-12-28 07:37:02',1),(643,'2001-06-23 05:30:06','2018-09-18 15:28:19',0),(644,'1995-10-03 15:00:22','1995-10-03 15:00:22',0),(645,'2003-10-05 18:33:49','2003-10-05 18:33:49',0),(646,'1972-09-15 05:43:41','1973-06-23 16:39:19',0),(647,'2017-03-08 07:05:44','2017-03-08 07:05:44',0),(648,'1979-09-01 05:54:45','1982-10-18 07:13:21',0),(649,'2006-07-23 22:10:21','2006-07-23 22:10:21',0),(650,'1986-02-22 08:07:55','1986-02-22 08:07:55',0),(651,'1990-11-15 19:30:16','2008-12-12 23:03:16',0),(652,'2016-03-31 00:41:15','2016-03-31 00:41:15',0),(653,'1980-12-09 23:16:43','2005-11-09 06:19:15',0),(654,'1995-05-07 04:17:00','1995-05-07 04:17:00',0),(655,'2002-11-10 06:40:46','2002-11-10 06:40:46',0),(656,'1995-06-13 22:36:45','2003-05-11 13:30:09',0),(657,'1984-12-07 13:43:09','2002-03-23 13:43:25',0),(658,'1987-08-10 23:16:43','2009-04-26 14:52:09',0),(659,'1995-08-03 11:30:38','1998-10-12 23:49:04',0),(660,'2000-12-20 21:57:39','2000-12-20 21:57:39',0),(661,'1995-05-07 07:50:44','1995-05-07 07:50:44',0),(662,'2008-08-08 16:08:33','2008-08-08 16:08:33',0),(663,'1994-08-20 10:05:08','2014-03-12 16:54:02',0),(664,'2014-11-08 16:34:42','2014-11-08 16:34:42',1),(665,'1973-10-30 05:09:31','1996-12-23 19:36:53',0),(666,'2014-03-11 21:43:13','2016-04-25 17:20:00',0),(667,'1970-05-23 02:14:20','1997-10-16 18:48:38',0),(668,'2014-01-31 09:16:23','2014-01-31 09:16:23',1),(669,'1976-06-10 14:24:16','2004-05-26 08:00:14',0),(670,'2008-10-27 19:50:29','2008-10-27 19:50:29',0),(671,'2015-01-04 14:03:10','2015-01-04 14:03:10',0),(672,'1982-03-23 23:03:51','2008-01-24 16:40:33',1),(673,'2010-08-01 13:27:01','2010-08-01 13:27:01',0),(674,'2014-05-21 18:16:41','2015-10-09 21:20:39',0),(675,'1991-07-12 03:26:21','1992-05-04 21:19:23',0),(676,'2017-01-30 20:19:43','2017-01-30 20:19:43',0),(677,'1973-03-01 05:55:49','1989-05-26 06:25:37',0),(678,'1970-01-22 00:11:59','1980-05-01 09:27:36',1),(679,'2000-10-16 13:30:34','2000-10-16 13:30:34',0),(680,'1974-11-06 02:38:17','1990-07-29 05:04:47',0),(681,'2011-08-23 14:32:41','2011-08-23 14:32:41',0),(682,'1980-09-25 03:08:35','2018-01-06 13:49:33',1),(683,'2019-09-30 03:06:58','2019-09-30 03:06:58',0),(684,'1971-01-24 10:43:59','2007-11-18 13:17:51',0),(685,'1988-12-28 05:15:00','1988-12-28 05:15:00',1),(686,'2010-06-22 10:40:04','2010-06-22 10:40:04',0),(687,'2013-02-02 17:16:47','2013-02-02 17:16:47',0),(688,'2003-04-07 21:08:55','2003-04-07 21:08:55',0),(689,'2012-02-19 06:31:55','2012-02-19 06:31:55',0),(690,'1980-11-01 21:28:03','1989-01-07 01:17:26',0),(691,'2010-01-15 09:00:27','2010-01-15 09:00:27',0),(692,'2017-06-08 22:01:29','2017-06-08 22:01:29',0),(693,'1994-11-21 18:32:04','1994-11-21 18:32:04',0),(694,'2014-07-29 12:31:38','2016-12-08 09:16:23',0),(695,'1996-11-24 08:49:41','1996-11-24 08:49:41',0),(696,'1998-09-07 05:42:06','2020-10-15 07:04:42',0),(697,'1982-01-22 09:44:19','1989-02-06 08:08:31',0),(698,'1986-03-25 14:27:57','2020-06-16 20:54:37',0),(699,'2015-02-10 00:12:07','2015-02-10 00:12:07',0),(700,'1978-09-02 10:17:58','1994-08-17 22:30:17',0),(701,'1991-04-12 07:11:47','1996-08-12 04:45:02',0),(702,'2020-02-02 08:26:48','2020-02-02 08:26:48',0),(703,'2017-11-18 03:44:34','2017-11-18 03:44:34',0),(704,'2006-07-24 05:20:44','2006-07-24 05:20:44',0),(705,'1982-01-26 14:00:57','1988-04-25 16:59:51',0),(706,'1984-02-09 21:13:39','1984-02-09 21:13:39',0),(707,'2005-10-24 11:59:48','2005-10-24 11:59:48',0),(708,'1988-05-31 16:22:03','1988-05-31 16:22:03',0),(709,'1978-04-24 12:39:39','2005-04-20 22:56:45',0),(710,'2006-05-31 00:04:13','2006-05-31 00:04:13',0),(711,'1990-07-06 14:12:48','1990-07-06 14:12:48',0),(712,'2018-04-02 06:41:51','2018-04-02 06:41:51',0),(713,'2012-07-23 13:21:14','2012-07-23 13:21:14',0),(714,'2004-12-07 11:15:11','2004-12-07 11:15:11',0),(715,'1975-06-24 13:02:13','1991-12-19 09:19:14',0),(716,'1972-12-29 02:48:24','1989-02-16 05:15:38',0),(717,'1975-01-22 20:52:44','2013-06-04 06:23:02',0),(718,'1997-01-08 19:40:26','1997-01-08 19:40:26',0),(719,'1973-02-17 20:18:09','1995-07-26 15:41:21',0),(720,'2018-08-14 01:47:09','2018-08-14 01:47:09',0),(721,'1998-03-29 00:33:42','1998-03-29 00:33:42',0),(722,'1973-08-25 13:37:56','1995-08-02 13:21:57',0),(723,'2018-07-12 20:28:12','2018-07-12 20:28:12',1),(724,'2011-03-29 00:31:44','2011-08-27 23:22:43',0),(725,'2003-06-15 14:18:55','2009-04-27 18:54:42',0),(726,'1989-07-28 18:35:38','1996-06-25 23:31:12',0),(727,'2006-11-15 18:56:20','2006-11-15 18:56:20',0),(728,'2001-04-15 10:00:40','2011-09-12 18:42:38',0),(729,'1974-10-16 11:03:54','1992-08-26 22:50:08',0),(730,'2011-06-06 17:24:39','2011-06-06 17:24:39',0),(731,'1995-11-05 04:58:55','1995-11-05 04:58:55',0),(732,'1994-10-31 22:55:36','1994-10-31 22:55:36',0),(733,'2011-10-05 11:04:03','2011-10-05 11:04:03',0),(734,'2003-07-27 14:44:14','2003-07-27 14:44:14',0),(735,'1976-11-27 02:17:02','1981-10-30 13:55:46',0),(736,'2020-12-16 08:47:34','2020-12-16 08:47:34',0),(737,'1997-10-30 19:18:05','1997-10-30 19:18:05',0),(738,'1999-08-21 02:17:12','1999-08-21 02:17:12',0),(739,'2002-04-08 07:19:36','2002-04-08 07:19:36',0),(740,'1988-09-18 19:05:03','2014-03-28 09:41:43',0),(741,'1992-08-17 02:16:12','2005-01-17 23:54:01',1),(742,'2016-09-04 09:18:26','2016-09-04 09:18:26',0),(743,'1992-02-06 09:37:25','2006-09-11 13:40:10',0),(744,'1989-07-31 18:07:27','2003-06-16 22:23:10',0),(745,'2021-01-26 00:50:04','2021-01-26 00:50:04',0),(746,'1998-11-07 02:15:02','1998-11-07 02:15:02',0),(747,'2010-05-09 22:08:00','2010-05-09 22:08:00',0),(748,'1972-01-08 23:01:10','2006-10-27 06:08:23',0),(749,'1973-05-17 00:53:23','2020-12-21 05:22:56',0),(750,'1971-06-21 14:10:19','1995-06-08 15:31:23',0),(751,'1984-06-22 13:00:05','2001-05-20 07:55:30',0),(752,'1976-07-24 10:09:30','1977-12-01 01:21:58',0),(753,'1989-11-04 04:57:57','1996-05-14 21:17:23',0),(754,'2007-12-23 23:18:14','2013-02-28 20:10:00',0),(755,'1973-12-09 09:44:59','1999-03-05 23:54:14',0),(756,'1971-02-04 05:47:01','1994-11-24 10:31:46',0),(757,'2019-11-30 00:36:46','2019-11-30 00:36:46',0),(758,'1973-04-17 05:57:24','2012-05-26 09:43:59',0),(759,'2013-02-14 07:34:36','2013-02-14 07:34:36',0),(760,'2011-03-18 06:59:39','2011-03-18 06:59:39',0),(761,'1988-01-02 23:12:17','1998-06-20 09:38:32',0),(762,'2011-01-31 06:52:48','2011-01-31 06:52:48',0),(763,'1970-10-01 18:21:48','1987-02-04 06:02:02',0),(764,'1972-09-25 18:40:51','1987-09-10 09:52:05',0),(765,'1978-05-16 10:13:08','2019-06-13 16:21:53',0),(766,'1983-09-16 01:42:36','1983-09-16 01:42:36',0),(767,'1976-11-01 08:09:27','1976-11-01 08:09:27',0),(768,'1971-06-13 18:17:14','1972-07-03 00:04:13',0),(769,'1998-11-13 00:40:02','2010-04-19 19:49:13',0),(770,'2019-09-20 14:41:15','2019-09-20 14:41:15',0),(771,'1987-06-23 17:21:56','1987-06-23 17:21:56',0),(772,'1985-09-17 20:06:55','1999-08-17 22:45:00',0),(773,'1979-08-09 13:30:15','2019-05-10 14:30:08',1),(774,'1999-04-14 17:56:30','1999-04-14 17:56:30',0),(775,'2006-02-20 08:49:59','2006-02-20 08:49:59',0),(776,'1988-07-28 11:11:50','1998-12-26 11:58:27',0),(777,'2013-01-02 08:27:38','2013-01-02 08:27:38',0),(778,'1992-12-19 14:51:55','1992-12-19 14:51:55',0),(779,'1994-03-05 15:14:32','1994-03-05 15:14:32',0),(780,'1972-01-25 16:34:13','1987-02-02 04:54:57',0),(781,'2010-04-28 18:02:11','2020-10-31 00:07:33',0),(782,'2021-01-17 22:35:55','2021-01-17 22:35:55',0),(783,'2000-07-14 02:24:30','2000-07-14 02:24:30',0),(784,'1974-05-16 23:37:48','2003-07-15 20:13:24',0),(785,'2001-11-29 00:20:34','2009-03-10 12:21:49',0),(786,'1984-03-18 22:38:02','1984-03-18 22:38:02',0),(787,'1980-06-22 01:45:58','1992-11-27 19:23:53',0),(788,'1977-01-16 21:21:16','1979-08-14 07:41:44',0),(789,'1993-07-22 05:33:15','1995-11-30 20:16:49',0),(790,'1979-11-05 07:49:22','1996-05-08 23:47:28',0),(791,'1997-12-02 15:31:17','2003-10-30 15:16:00',0),(792,'1981-11-17 04:45:12','2019-12-23 14:54:20',0),(793,'1987-08-10 01:46:12','2021-01-17 06:48:09',0),(794,'1983-07-06 08:08:14','1983-07-06 08:08:14',0),(795,'1977-11-16 03:07:21','1977-11-16 03:07:21',0),(796,'2003-12-01 20:28:23','2003-12-01 20:28:23',0),(797,'1985-12-18 16:48:43','1985-12-18 16:48:43',0),(798,'1998-08-22 14:21:55','1998-08-22 14:21:55',0),(799,'1981-04-06 21:02:30','1981-04-06 21:02:30',0),(800,'2020-08-30 12:49:37','2020-08-30 12:49:37',0),(801,'2008-12-29 10:22:45','2019-10-03 23:56:18',0),(802,'1984-11-24 07:04:10','2005-07-22 19:04:28',0),(803,'1971-07-09 19:13:17','2018-01-14 17:02:48',0),(804,'1975-04-11 16:27:55','1975-04-11 16:27:55',0),(805,'2012-09-14 14:47:40','2012-09-14 14:47:40',0),(806,'1997-05-03 00:48:11','2019-02-03 16:29:42',0),(807,'1984-12-11 08:41:40','1998-01-18 08:26:12',0),(808,'1971-09-09 17:30:22','1986-02-09 06:56:27',0),(809,'2017-08-20 01:12:54','2017-08-20 01:12:54',0),(810,'1999-07-25 07:46:23','2006-08-13 16:01:21',0),(811,'1972-11-12 18:26:53','2010-01-14 05:08:56',0),(812,'1996-02-14 21:13:24','1996-02-14 21:13:24',0),(813,'1973-01-10 16:16:43','2008-12-16 09:19:25',0),(814,'1987-09-20 20:23:30','1987-09-20 20:23:30',0),(815,'2011-12-02 19:44:34','2011-12-02 19:44:34',0),(816,'2011-12-21 06:27:45','2011-12-21 06:27:45',0),(817,'1993-11-17 06:23:01','2019-05-29 03:28:07',0),(818,'1975-02-13 08:00:47','2004-12-01 09:01:42',0),(819,'1991-03-22 15:59:18','1991-03-22 15:59:18',0),(820,'1974-01-18 05:05:46','1979-03-18 10:59:17',1),(821,'1973-02-08 15:19:31','2014-12-19 15:48:07',0),(822,'2007-06-18 04:49:09','2019-03-06 06:58:10',0),(823,'2010-09-27 17:55:34','2016-06-19 02:32:43',0),(824,'1977-12-14 10:42:28','1977-12-14 10:42:28',0),(825,'2009-04-10 00:29:42','2009-04-10 00:29:42',0),(826,'1998-06-09 17:53:02','2016-01-11 00:34:05',0),(827,'1986-11-19 04:45:23','1993-10-24 17:30:44',0),(828,'1994-10-30 18:23:28','1998-03-08 18:49:14',0),(829,'2000-04-17 04:12:12','2010-02-25 08:29:55',0),(830,'2018-07-11 11:13:47','2018-07-11 11:13:47',0),(831,'2017-01-15 22:59:59','2017-01-15 22:59:59',0),(832,'2016-11-13 05:38:41','2016-11-13 05:38:41',0),(833,'1999-08-26 17:10:57','2016-05-28 03:11:55',0),(834,'2004-03-03 11:43:29','2004-03-03 11:43:29',1),(835,'2010-10-25 04:52:31','2010-10-25 04:52:31',0),(836,'2013-12-03 15:25:20','2013-12-03 15:25:20',0),(837,'1993-03-15 18:37:38','1993-03-15 18:37:38',0),(838,'1979-01-02 08:10:55','1995-08-19 23:59:36',0),(839,'2021-01-30 16:07:00','2021-01-30 16:07:00',0),(840,'2008-07-27 09:59:44','2008-07-27 09:59:44',0),(841,'2000-12-28 17:14:03','2000-12-28 17:14:03',0),(842,'1993-05-10 23:35:01','2003-04-22 20:22:47',0),(843,'2006-02-05 17:38:03','2017-05-07 20:20:06',0),(844,'1998-11-29 16:56:02','1998-11-29 16:56:02',0),(845,'1993-01-24 08:33:08','2013-02-23 21:06:54',0),(846,'2016-11-14 10:08:23','2016-11-14 10:08:23',0),(847,'2001-02-19 10:01:59','2001-02-19 10:01:59',0),(848,'1995-01-27 09:07:41','1995-01-27 09:07:41',0),(849,'1987-10-06 02:45:11','1987-10-06 02:45:11',0),(850,'2010-08-28 18:28:05','2010-08-28 18:28:05',0),(851,'1991-08-09 07:04:44','2019-03-10 12:19:59',0),(852,'1977-04-05 14:25:58','1994-08-26 09:56:43',0),(853,'2011-05-06 15:38:58','2011-05-06 15:38:58',0),(854,'1989-09-14 20:19:36','2013-03-05 05:39:14',0),(855,'1980-05-06 11:23:33','2018-07-20 14:26:58',0),(856,'1977-05-18 07:42:23','1986-01-26 23:08:40',0),(857,'2004-12-04 15:03:01','2004-12-04 15:03:01',0),(858,'1994-05-18 16:21:03','1994-05-18 16:21:03',0),(859,'1983-07-29 05:28:52','1983-07-29 05:28:52',0),(860,'1985-01-02 05:36:05','1985-01-02 05:36:05',0),(861,'2017-11-08 01:19:57','2017-11-08 01:19:57',0),(862,'1995-08-09 01:52:36','1995-08-09 01:52:36',0),(863,'2018-06-24 02:48:16','2018-06-24 02:48:16',0),(864,'2018-08-30 19:48:02','2018-08-30 19:48:02',0),(865,'1998-04-12 13:34:21','2014-01-19 09:34:38',0),(866,'1971-07-03 13:37:08','1980-11-15 00:25:22',0),(867,'1985-04-12 07:05:17','2005-05-25 12:04:19',0),(868,'2004-06-24 01:56:26','2004-06-24 01:56:26',0),(869,'1990-03-01 10:18:25','2018-09-30 21:24:36',0),(870,'1985-07-03 10:35:13','2009-10-21 16:15:50',0),(871,'1988-08-29 18:50:31','2003-11-27 16:27:32',0),(872,'1978-12-03 03:24:25','1978-12-03 03:24:25',0),(873,'1982-05-03 21:12:07','1982-08-23 07:24:45',1),(874,'1994-03-16 03:55:19','1994-03-16 03:55:19',0),(875,'1976-03-23 00:47:35','1976-03-23 00:47:35',0),(876,'1984-07-13 01:44:58','1991-10-22 19:43:18',0),(877,'1995-12-29 12:58:35','2016-02-27 23:23:05',0),(878,'2000-03-11 07:29:20','2009-07-20 21:30:32',1),(879,'2003-04-04 20:14:31','2019-02-05 03:58:15',0),(880,'1983-02-08 22:00:17','2016-05-05 22:45:44',0),(881,'1974-12-24 14:15:00','2003-09-09 17:39:24',0),(882,'2010-12-19 18:56:52','2010-12-19 18:56:52',0),(883,'1998-09-10 17:51:52','2007-05-14 13:02:52',0),(884,'2001-05-22 18:15:22','2001-05-22 18:15:22',0),(885,'1985-01-16 14:58:15','2017-02-04 23:30:16',0),(886,'2011-04-03 23:45:58','2011-04-03 23:45:58',0),(887,'1989-05-03 13:14:52','1989-05-03 13:14:52',1),(888,'2017-04-10 07:26:59','2017-04-10 07:26:59',0),(889,'2019-05-18 04:08:54','2019-05-18 04:08:54',0),(890,'2018-03-29 11:41:52','2018-03-29 11:41:52',0),(891,'1997-04-14 11:07:36','1997-04-14 11:07:36',0),(892,'2019-02-26 15:13:44','2019-02-26 15:13:44',0),(893,'1997-08-22 04:25:40','2019-12-06 09:32:26',0),(894,'1978-10-15 04:47:50','2003-06-29 16:04:03',0),(895,'1995-10-26 22:46:22','2012-09-16 05:34:11',0),(896,'2000-05-01 16:13:26','2000-05-01 16:13:26',0),(897,'1980-07-05 13:25:42','1989-01-24 07:35:41',0),(898,'1989-05-02 08:07:01','1989-05-02 08:07:01',0),(899,'1970-02-18 21:07:36','1991-12-30 02:48:55',0),(900,'1996-10-13 08:41:56','2015-06-19 19:17:04',0),(901,'1988-08-17 11:57:27','2016-07-07 07:17:37',0),(902,'2016-10-01 07:07:17','2016-10-01 07:07:17',0),(903,'2008-11-20 02:23:00','2008-11-20 02:23:00',0),(904,'1977-07-04 22:10:55','1983-04-26 13:33:34',0),(905,'2002-12-09 16:17:44','2002-12-09 16:17:44',0),(906,'1993-04-02 03:03:37','2017-12-08 05:25:52',1),(907,'1976-07-31 03:56:21','1990-06-17 16:31:43',0),(908,'2014-09-24 09:34:05','2014-09-24 09:34:05',0),(909,'1999-07-14 11:03:56','2003-04-28 01:03:48',0),(910,'1999-01-13 09:41:29','2006-04-24 10:59:58',0),(911,'2006-03-29 18:39:58','2006-03-29 18:39:58',0),(912,'2014-03-29 12:08:18','2014-03-29 12:08:18',0),(913,'2013-04-14 03:48:24','2013-04-14 03:48:24',0),(914,'1989-03-27 11:25:31','2001-07-22 17:03:58',0),(915,'1982-04-21 14:07:42','2020-08-22 17:39:54',0),(916,'2000-04-17 06:29:31','2000-04-17 06:29:31',0),(917,'2011-12-30 11:24:43','2015-05-12 13:09:27',0),(918,'1981-10-27 07:08:18','2009-10-07 22:21:49',0),(919,'2020-08-03 16:16:52','2020-08-03 16:16:52',0),(920,'2013-05-10 20:08:46','2013-05-10 20:08:46',0),(921,'1973-12-01 21:13:37','2016-05-13 20:39:48',0),(922,'2008-07-02 01:39:26','2008-07-02 01:39:26',0),(923,'1981-12-21 01:36:04','1993-10-20 23:00:28',0),(924,'2017-03-21 09:08:36','2017-03-21 09:08:36',0),(925,'1972-08-13 09:08:54','2003-03-20 09:22:47',0),(926,'2011-12-23 09:11:22','2011-12-23 09:11:22',0),(927,'1982-07-19 02:49:14','2015-10-30 12:52:07',0),(928,'1990-04-10 07:28:27','2018-02-23 20:30:04',0),(929,'2008-09-04 15:38:14','2008-09-04 15:38:14',1),(930,'1995-05-19 02:25:53','2003-10-10 00:15:46',0),(931,'1974-09-05 15:46:46','1986-08-08 15:10:27',0),(932,'2005-12-02 12:42:48','2015-01-29 15:55:59',0),(933,'2016-07-05 06:35:19','2016-07-05 06:35:19',0),(934,'1990-11-14 11:20:20','1996-08-17 04:57:08',1),(935,'2017-01-06 00:54:46','2017-01-06 00:54:46',0),(936,'2002-11-30 10:14:06','2014-10-08 21:46:57',0),(937,'1979-03-02 21:23:58','1979-03-02 21:23:58',0),(938,'1972-11-29 18:07:14','2007-09-03 10:38:19',0),(939,'2008-07-15 01:05:20','2011-03-20 15:47:55',0),(940,'1980-06-15 19:03:58','1980-06-15 19:03:58',0),(941,'1981-12-09 15:59:28','1984-12-25 17:48:34',0),(942,'2003-07-25 12:23:04','2003-07-25 12:23:04',0),(943,'1975-02-18 18:30:08','1975-02-18 18:30:08',0),(944,'2010-06-12 04:21:45','2010-06-12 04:21:45',0),(945,'1982-10-08 00:39:18','1996-06-10 08:35:14',0),(946,'2002-06-27 02:10:50','2009-09-25 04:47:08',0),(947,'1990-02-28 17:58:52','1990-02-28 17:58:52',1),(948,'2019-04-18 13:04:41','2019-04-18 13:04:41',0),(949,'1986-12-01 03:11:11','1986-12-01 03:11:11',0),(950,'1997-07-10 07:30:49','1997-07-10 07:30:49',0),(951,'1982-07-12 12:05:29','1984-10-05 09:25:12',0),(952,'1999-09-05 21:51:10','2002-05-23 05:51:02',0),(953,'1989-01-11 07:01:32','1989-01-11 07:01:32',0),(954,'1975-08-11 05:28:04','2000-09-14 10:42:04',0),(955,'2013-05-23 23:20:38','2013-05-23 23:20:38',0),(956,'1974-06-18 15:40:24','1983-10-31 20:42:48',0),(957,'2007-05-03 18:31:32','2007-05-03 18:31:32',0),(958,'1984-11-24 22:23:50','1984-11-24 22:23:50',0),(959,'1996-04-06 15:15:49','1996-04-06 15:15:49',0),(960,'1983-02-12 01:43:25','1988-12-27 18:01:51',0),(961,'2005-07-30 16:36:02','2005-07-30 16:36:02',0),(962,'2009-11-20 16:44:31','2016-08-17 13:03:12',0),(963,'2012-06-06 10:09:29','2012-06-06 10:09:29',0),(964,'1988-04-20 06:53:47','2016-01-13 05:47:17',0),(965,'1998-06-30 02:28:14','1998-06-30 02:28:14',0),(966,'1974-07-12 00:30:00','2008-01-11 20:34:53',0),(967,'1995-03-09 07:35:44','1995-03-09 07:35:44',0),(968,'2017-04-30 05:45:43','2017-04-30 05:45:43',0),(969,'1971-09-10 15:28:37','2011-07-04 22:56:55',0),(970,'1980-05-18 00:09:23','2008-11-04 20:47:03',0),(971,'1993-01-24 20:51:40','2007-06-21 03:28:23',0),(972,'2019-06-05 07:49:03','2020-09-10 00:37:30',0),(973,'1985-01-12 14:28:27','2015-01-20 09:21:18',0),(974,'1976-06-22 12:08:05','2019-06-08 23:30:23',0),(975,'1984-05-22 00:02:29','1992-07-13 23:51:43',0),(976,'2012-03-09 02:52:29','2012-03-09 02:52:29',0),(977,'1997-06-17 02:44:40','1997-06-17 02:44:40',0),(978,'2016-07-28 13:03:43','2016-07-28 13:03:43',0),(979,'1982-12-29 00:02:00','2007-03-10 16:18:05',0),(980,'2008-10-22 03:12:10','2008-10-22 03:12:10',0),(981,'2018-06-08 19:54:08','2018-06-08 19:54:08',0),(982,'1982-06-16 00:59:19','1985-06-13 04:45:58',1),(983,'1973-02-10 15:29:03','1995-01-01 00:57:57',0),(984,'1971-11-16 03:02:23','1991-07-08 03:45:04',0),(985,'1998-06-17 14:18:02','1998-06-17 14:18:02',0),(986,'1996-01-01 23:11:02','2012-08-05 11:05:22',0),(987,'2007-07-13 06:36:24','2007-07-13 06:36:24',0),(988,'2018-06-26 11:58:40','2018-06-26 11:58:40',0),(989,'2013-06-28 16:23:02','2013-06-28 16:23:02',0),(990,'2012-01-22 07:51:21','2012-01-22 07:51:21',0),(991,'1991-09-08 14:12:18','1991-09-08 14:12:18',0),(992,'2017-07-18 08:49:06','2017-07-18 08:49:06',0),(993,'1988-07-30 21:38:22','2004-08-22 08:48:10',1),(994,'2010-01-09 03:39:26','2010-01-09 03:39:26',0),(995,'2016-02-28 00:58:12','2020-10-21 05:34:40',0),(996,'1993-06-10 13:02:12','1993-06-10 13:02:12',0),(997,'1979-11-06 06:43:17','1997-03-27 00:52:17',0),(998,'1990-02-27 14:04:00','1991-07-10 09:16:41',0),(999,'1980-02-21 17:56:21','1984-12-26 12:17:31',0),(1000,'1997-08-10 19:18:05','2002-01-16 00:29:15',0),(1001,'1974-01-23 10:43:45','1995-11-13 18:26:05',0),(1002,'2016-02-12 12:55:15','2016-02-12 12:55:15',0),(1003,'2004-11-24 14:37:54','2004-11-24 14:37:54',0),(1004,'2018-04-21 08:26:31','2018-04-21 08:26:31',0),(1005,'1988-08-01 02:32:42','1997-01-31 06:20:24',0),(1006,'1994-11-25 05:16:00','2000-12-29 05:16:55',0),(1007,'1995-01-13 23:08:05','2013-05-19 04:48:09',0),(1008,'1985-11-20 21:41:03','2013-11-09 05:43:42',0),(1009,'1988-10-16 12:15:16','1988-10-16 12:15:16',0),(1010,'2003-07-08 20:51:11','2003-07-08 20:51:11',0),(1011,'1992-06-17 22:10:05','2001-02-21 17:45:15',0),(1012,'1991-02-12 17:15:40','2012-03-23 19:41:18',0),(1013,'1998-01-17 08:30:09','2015-12-14 18:26:16',0),(1014,'1991-12-11 18:59:26','2007-09-19 15:28:58',0),(1015,'2017-04-29 16:44:02','2017-04-29 16:44:02',0),(1016,'1979-06-08 13:18:55','1981-11-13 10:19:15',0),(1017,'2010-06-30 04:02:39','2015-08-14 12:07:18',0),(1018,'1977-03-08 23:35:20','1996-12-30 16:11:42',0),(1019,'1976-07-12 10:35:36','1996-09-14 18:42:29',0),(1020,'2006-03-17 12:45:23','2006-03-17 12:45:23',0),(1021,'1999-04-06 02:54:12','2002-11-02 23:10:46',0),(1022,'2004-01-08 04:41:31','2004-01-08 04:41:31',0),(1023,'1983-05-29 12:08:02','1996-08-27 07:52:26',0),(1024,'2016-04-05 22:19:52','2016-04-05 22:19:52',0),(1025,'1999-08-23 04:46:41','1999-08-23 04:46:41',0),(1026,'1987-11-29 11:27:57','2000-01-05 10:51:43',0),(1027,'2007-03-07 16:27:53','2007-03-07 16:27:53',0),(1028,'1972-09-14 17:00:20','1977-02-15 05:27:41',0),(1029,'2005-01-16 06:01:54','2011-02-10 19:33:29',0),(1030,'2003-09-20 16:44:03','2003-09-20 16:44:03',0),(1031,'2005-11-14 18:40:57','2005-11-14 18:40:57',0),(1032,'1975-11-18 05:08:07','2019-07-07 21:26:18',0),(1033,'1985-08-23 17:42:05','2019-06-11 16:27:36',0),(1034,'1977-11-26 20:20:40','1977-11-26 20:20:40',0),(1035,'1989-01-05 08:26:08','2007-04-02 02:17:27',0),(1036,'1995-09-11 11:38:03','2012-03-20 20:52:59',0),(1037,'1992-03-08 21:32:40','2007-08-17 22:35:37',0),(1038,'1980-01-27 04:12:38','2015-01-12 19:10:45',0),(1039,'1987-07-03 16:39:13','1990-07-26 21:36:20',0),(1040,'1983-01-14 12:22:14','2010-03-07 23:42:29',0),(1041,'1989-08-17 22:40:09','1998-01-16 10:05:14',0),(1042,'1991-04-30 13:05:35','1991-04-30 13:05:35',0),(1043,'2007-12-24 08:06:59','2007-12-24 08:06:59',0),(1044,'1990-12-13 04:23:18','1990-12-13 04:23:18',0),(1045,'1991-03-03 09:48:22','1991-03-03 09:48:22',0),(1046,'2003-02-09 01:44:06','2013-12-14 10:49:48',0),(1047,'1991-02-21 20:58:45','2005-10-22 13:34:14',0),(1048,'1971-04-04 14:58:01','2010-05-21 22:44:06',0),(1049,'2007-05-06 06:18:29','2007-05-06 06:18:29',0),(1050,'1997-06-01 22:41:51','1997-06-01 22:41:51',0),(1051,'1988-10-15 19:07:03','1988-10-15 19:07:03',0),(1052,'1975-10-10 13:50:34','1990-01-01 02:23:43',0),(1053,'2020-08-10 15:14:35','2020-08-10 15:14:35',0),(1054,'1999-06-03 09:09:32','1999-06-03 09:09:32',0),(1055,'1979-12-11 06:23:01','1994-03-07 14:52:40',0),(1056,'1981-11-05 23:49:37','1989-03-25 11:32:18',0),(1057,'1997-11-30 16:23:43','1997-11-30 16:23:43',0),(1058,'1977-10-15 11:20:52','2008-04-22 06:54:48',0),(1059,'2010-07-04 02:20:45','2010-07-04 02:20:45',0),(1060,'1979-09-17 03:24:09','2011-07-04 00:13:50',0),(1061,'1971-12-20 07:31:39','1975-06-10 23:41:52',0),(1062,'1983-10-10 16:28:50','2000-04-26 07:50:57',0),(1063,'2010-01-13 12:40:31','2018-05-19 06:53:42',0),(1064,'1982-08-07 11:53:32','2004-09-25 08:26:18',0),(1065,'2017-03-12 02:11:20','2017-03-12 02:11:20',1),(1066,'2009-09-01 14:25:38','2012-02-21 22:15:06',0),(1067,'1981-06-15 20:06:24','2016-01-21 01:37:49',0),(1068,'2003-07-18 22:05:34','2003-07-18 22:05:34',0),(1069,'1994-07-11 22:56:16','1994-07-11 22:56:16',0),(1070,'2010-04-25 02:31:49','2010-04-25 02:31:49',0),(1071,'1981-01-24 10:21:56','2013-08-06 05:41:33',0),(1072,'2001-02-07 09:49:24','2016-03-07 15:41:11',0),(1073,'1976-05-06 21:13:57','1980-05-03 21:49:38',0),(1074,'1981-04-27 12:25:43','1982-09-10 19:28:37',0),(1075,'2001-12-11 04:53:47','2001-12-11 04:53:47',0),(1076,'2018-06-17 09:42:20','2018-06-17 09:42:20',0),(1077,'2017-11-17 23:09:16','2017-11-17 23:09:16',0),(1078,'2013-12-04 03:29:20','2013-12-04 03:29:20',0),(1079,'1972-05-31 04:18:51','2017-06-02 03:12:31',0),(1080,'1986-10-14 01:20:15','1986-10-14 01:20:15',0),(1081,'1978-08-14 23:42:02','2002-01-09 14:45:16',0),(1082,'1977-04-16 00:30:17','1982-09-25 16:03:51',0),(1083,'1984-08-08 03:42:10','2011-09-25 05:57:11',0),(1084,'1997-01-08 08:06:58','2011-09-28 22:13:14',0),(1085,'1988-12-07 01:59:32','2019-07-16 13:40:24',0),(1086,'1977-03-04 07:16:27','2002-03-06 19:19:16',0),(1087,'2009-09-17 22:33:52','2013-06-10 16:09:19',0),(1088,'2005-01-04 17:47:36','2018-08-14 22:01:48',0),(1089,'2006-08-08 16:19:03','2016-01-14 15:48:05',0),(1090,'1971-09-28 11:14:05','1984-08-19 09:11:46',0),(1091,'1979-07-14 14:31:32','1979-07-14 14:31:32',0),(1092,'1983-07-12 17:47:50','1988-04-13 17:20:59',0),(1093,'1997-05-11 08:28:12','2003-03-17 03:08:26',0),(1094,'1991-11-30 19:19:52','2011-09-04 00:15:22',0),(1095,'2011-01-31 17:31:11','2017-03-09 13:00:25',0),(1096,'1971-09-22 13:03:43','1998-06-01 09:05:43',1),(1097,'2014-06-08 10:06:23','2014-06-08 10:06:23',0),(1098,'1981-01-28 19:03:49','1981-01-28 19:03:49',0),(1099,'2011-06-30 20:25:49','2011-06-30 20:25:49',0),(1100,'2016-10-20 23:24:30','2016-10-20 23:24:30',0),(1101,'1991-06-02 01:06:39','1991-08-05 11:31:50',0),(1102,'2001-07-23 02:57:58','2001-07-23 02:57:58',0),(1103,'1981-10-06 00:15:37','2000-06-24 21:06:51',0),(1104,'1996-02-29 00:52:56','1997-08-29 01:34:59',0),(1105,'1990-12-24 19:20:36','1990-12-24 19:20:36',0),(1106,'2013-07-08 04:10:45','2013-07-08 04:10:45',0),(1107,'2016-09-21 13:27:13','2016-09-21 13:27:13',0),(1108,'2000-05-10 01:39:37','2000-05-10 01:39:37',0),(1109,'2004-12-20 05:06:26','2004-12-20 05:06:26',1),(1110,'2001-03-30 18:36:29','2010-02-07 17:48:28',0),(1111,'1999-10-27 01:19:48','1999-10-27 01:19:48',0),(1112,'2018-03-16 17:33:46','2018-03-16 17:33:46',0),(1113,'2002-08-29 15:09:50','2009-08-14 01:40:15',0),(1114,'1982-11-17 04:31:22','2008-05-27 18:23:11',0),(1115,'1995-12-01 01:26:15','1995-12-01 01:26:15',0),(1116,'1990-05-28 22:28:15','2004-07-18 23:37:28',0),(1117,'1978-10-18 12:25:00','1978-10-18 12:25:00',0),(1118,'2007-04-09 15:05:59','2007-04-09 15:05:59',0),(1119,'1972-12-27 12:00:47','1999-08-15 07:50:55',0),(1120,'2002-02-14 18:37:00','2002-02-14 18:37:00',0),(1121,'1981-05-11 21:07:15','1981-05-11 21:07:15',0),(1122,'2006-04-11 05:54:34','2006-04-11 05:54:34',0),(1123,'1971-10-23 18:02:32','1999-04-20 01:13:23',0),(1124,'1977-09-04 21:17:28','1988-07-16 00:18:34',0),(1125,'1990-05-15 09:47:17','1990-05-15 09:47:17',0),(1126,'1999-08-27 23:08:00','1999-08-27 23:08:00',0),(1127,'1999-05-30 16:14:41','1999-05-30 16:14:41',0),(1128,'1999-03-08 17:26:29','2011-01-04 05:43:37',0),(1129,'1970-10-15 01:12:52','2007-02-14 23:47:34',0),(1130,'1996-07-31 12:04:52','2011-11-19 13:12:42',0),(1131,'1986-11-22 04:22:44','1999-08-11 16:43:09',0),(1132,'1975-12-16 14:12:23','1975-12-16 14:12:23',0),(1133,'1974-02-06 19:35:14','2007-02-26 17:33:08',0),(1134,'2012-12-21 00:13:05','2012-12-21 00:13:05',0),(1135,'1971-01-18 09:38:05','2015-03-20 21:38:46',0),(1136,'1996-11-11 05:09:37','1996-11-11 05:09:37',0),(1137,'1979-10-28 10:33:54','2016-04-07 10:05:59',0),(1138,'1995-06-10 03:35:34','2006-12-11 14:55:32',0),(1139,'1985-06-08 20:21:10','1985-06-08 20:21:10',0),(1140,'1976-05-06 12:46:44','1988-02-29 15:19:59',1),(1141,'2017-12-01 16:10:39','2017-12-01 16:10:39',0),(1142,'1980-01-31 09:44:46','2011-07-19 12:09:10',0),(1143,'1985-11-04 14:47:59','1985-11-04 14:47:59',0),(1144,'1972-07-23 19:16:02','2020-12-18 05:06:16',0),(1145,'1981-12-06 19:54:49','1992-01-16 03:33:22',0),(1146,'1978-04-23 16:48:30','1978-04-23 16:48:30',0),(1147,'2008-11-28 23:37:43','2016-01-13 10:35:43',0),(1148,'2009-05-29 05:26:06','2009-05-29 05:26:06',0),(1149,'1971-09-22 09:13:26','1986-01-28 12:35:36',0),(1150,'1996-12-03 03:41:21','1998-04-08 03:40:20',0),(1151,'1970-06-24 16:53:01','1990-04-11 04:28:44',0),(1152,'1988-01-27 18:05:50','2008-12-17 06:42:59',0),(1153,'1994-03-11 09:44:45','2004-12-19 23:25:38',0),(1154,'2001-02-01 10:18:26','2001-02-01 10:18:26',0),(1155,'1979-03-09 01:19:54','1979-03-09 01:19:54',0),(1156,'1981-12-21 15:15:50','2019-01-09 09:49:52',0),(1157,'1985-09-07 00:52:06','1993-06-24 22:34:36',0),(1158,'1991-05-01 17:49:44','2003-11-15 04:00:55',0),(1159,'2017-01-05 07:43:37','2017-01-05 07:43:37',0),(1160,'2019-12-01 12:33:26','2019-12-01 12:33:26',0),(1161,'1970-08-24 22:11:55','1977-06-17 20:19:16',0),(1162,'2018-01-03 17:15:06','2018-01-03 17:15:06',0),(1163,'1996-12-21 23:56:17','1996-12-21 23:56:17',0),(1164,'1988-12-22 22:44:16','1988-12-22 22:44:16',0),(1165,'2011-12-04 00:42:41','2016-03-11 06:09:05',0),(1166,'1992-01-29 12:27:13','1998-11-06 19:44:26',0),(1167,'2000-08-22 21:49:17','2000-08-22 21:49:17',0),(1168,'1993-01-21 05:47:15','1993-01-21 05:47:15',0),(1169,'2020-03-06 17:33:17','2020-03-06 17:33:17',0),(1170,'1981-03-17 20:21:17','2016-12-24 16:56:43',1),(1171,'1995-01-11 13:40:54','2003-02-19 21:08:23',0),(1172,'2006-05-07 10:42:21','2006-05-07 10:42:21',0),(1173,'2011-01-31 00:09:15','2013-10-22 11:20:08',0),(1174,'2007-08-12 15:44:51','2007-08-12 15:44:51',0),(1175,'1984-01-15 00:12:59','2009-09-12 13:48:26',0),(1176,'2007-06-18 05:28:26','2007-06-18 05:28:26',0),(1177,'1987-11-24 07:08:38','1987-11-24 07:08:38',0),(1178,'2020-03-03 11:46:01','2020-03-03 11:46:01',0),(1179,'1989-11-01 01:07:53','1993-09-27 15:37:55',0),(1180,'1978-03-15 22:38:10','2017-05-22 11:38:13',0),(1181,'1999-10-04 07:41:26','2006-12-18 08:26:36',0),(1182,'1984-05-20 00:02:31','1984-05-20 00:02:31',0),(1183,'1978-09-05 22:02:31','1981-08-15 21:58:58',0),(1184,'1992-12-14 23:18:20','1992-12-14 23:18:20',0),(1185,'1998-02-20 15:00:41','1998-02-20 15:00:41',0),(1186,'2010-06-27 20:36:30','2010-06-27 20:36:30',0),(1187,'2018-10-30 12:47:04','2018-10-30 12:47:04',0),(1188,'1981-04-27 02:26:18','2017-07-20 14:34:55',0),(1189,'2009-04-06 19:39:52','2009-04-06 19:39:52',0),(1190,'1986-07-26 19:05:07','2001-04-11 14:15:24',0),(1191,'2017-10-10 00:14:54','2018-08-22 03:52:05',0),(1192,'2016-06-28 02:05:53','2018-02-23 15:11:08',0),(1193,'1997-08-22 22:20:50','1997-08-22 22:20:50',0),(1194,'1988-01-16 08:07:04','1988-01-16 08:07:04',0),(1195,'1976-10-26 09:08:37','2017-02-15 13:37:20',0),(1196,'1983-10-06 18:36:50','1983-10-06 18:36:50',0),(1197,'1972-12-10 17:19:50','1994-08-08 19:42:51',0),(1198,'2016-05-28 23:25:31','2016-05-28 23:25:31',0),(1199,'2008-08-01 02:17:38','2008-08-01 02:17:38',0),(1200,'1983-08-31 14:21:22','1983-08-31 14:21:22',0),(1201,'2010-06-26 22:43:09','2020-05-24 09:01:52',0),(1202,'2012-04-13 14:29:02','2018-11-07 23:00:43',0),(1203,'1989-07-24 21:54:07','2010-03-19 01:01:14',0),(1204,'1984-07-30 05:46:39','2018-01-06 13:40:01',0),(1205,'1980-07-07 11:14:45','2004-06-28 13:29:43',0),(1206,'2016-01-09 23:05:00','2020-11-08 02:11:09',0),(1207,'2006-12-08 14:42:41','2020-02-23 16:29:56',0),(1208,'1972-09-24 11:17:48','1986-06-20 17:23:01',0),(1209,'2014-06-11 12:09:54','2014-06-11 12:09:54',0),(1210,'1990-02-28 22:56:52','2009-10-15 09:41:08',0),(1211,'1990-02-26 13:29:12','1993-09-04 09:52:51',0),(1212,'1976-01-05 21:26:16','1994-06-03 23:15:26',0),(1213,'1970-01-08 02:58:55','1991-08-27 17:11:40',0),(1214,'2003-09-25 07:57:23','2003-09-25 07:57:23',0),(1215,'2008-04-07 23:23:08','2008-04-07 23:23:08',0),(1216,'2000-04-27 05:15:17','2003-12-05 07:27:55',0),(1217,'1974-05-23 08:03:05','2010-10-14 23:20:06',0),(1218,'2002-11-21 19:25:25','2020-11-27 03:48:31',0),(1219,'1980-05-04 16:13:41','1980-05-04 16:13:41',0),(1220,'2015-09-30 13:52:05','2015-09-30 13:52:05',0),(1221,'1981-07-11 10:23:50','1988-08-26 19:03:23',0),(1222,'1980-02-23 09:35:23','1980-02-23 09:35:23',0),(1223,'2019-09-30 09:58:43','2019-09-30 09:58:43',0),(1224,'2011-12-15 02:23:14','2011-12-15 02:23:14',0),(1225,'1980-01-21 04:23:22','1996-02-17 21:05:59',0),(1226,'1977-08-24 17:40:47','2004-07-09 20:24:46',0),(1227,'2001-06-06 21:00:10','2001-06-06 21:00:10',0),(1228,'2014-10-01 10:23:25','2014-10-01 10:23:25',0),(1229,'2014-06-21 18:20:12','2014-06-21 18:20:12',0),(1230,'1999-08-15 03:03:28','1999-08-15 03:03:28',0),(1231,'1988-09-06 15:09:51','2020-06-03 04:25:15',0),(1232,'2003-11-15 07:50:18','2003-11-15 07:50:18',0),(1233,'2009-10-12 16:27:45','2009-10-12 16:27:45',0),(1234,'1983-04-13 08:42:12','1983-04-13 08:42:12',0),(1235,'1994-10-04 03:44:31','2010-09-18 19:24:49',0),(1236,'1988-12-04 14:57:18','2020-04-24 04:53:24',0),(1237,'2015-07-23 18:29:10','2015-07-23 18:29:10',0),(1238,'2010-10-20 18:43:05','2010-10-20 18:43:05',0),(1239,'2005-08-28 19:45:13','2005-08-28 19:45:13',0),(1240,'2013-05-06 21:23:39','2013-05-06 21:23:39',0),(1241,'2006-01-22 15:47:21','2006-01-22 15:47:21',0),(1242,'2018-09-07 12:22:05','2018-09-07 12:22:05',0),(1243,'1984-10-04 21:09:53','1997-07-18 08:24:33',0),(1244,'1986-11-10 09:12:53','1986-11-10 09:12:53',0),(1245,'1976-05-27 23:33:04','1994-10-26 10:48:12',0),(1246,'1991-03-27 17:09:44','1996-04-26 17:43:51',0),(1247,'1971-03-09 23:18:40','1972-04-06 19:39:07',1),(1248,'1981-01-31 08:27:57','2000-01-31 19:48:25',0),(1249,'1983-02-25 14:21:09','1995-09-07 19:12:35',0),(1250,'1973-08-17 22:54:40','2016-05-03 17:22:41',1),(1251,'1979-03-16 09:15:49','2006-02-21 20:07:36',0),(1252,'1984-11-01 09:32:09','1984-11-01 09:32:09',0),(1253,'1977-10-16 16:29:08','1977-10-16 16:29:08',0),(1254,'2009-07-04 22:26:39','2009-07-04 22:26:39',0),(1255,'1985-06-25 15:27:00','2008-12-07 12:52:37',0),(1256,'1987-12-21 20:15:29','1990-06-01 08:28:18',0),(1257,'2001-08-27 11:58:20','2001-08-27 11:58:20',1),(1258,'2010-05-11 13:02:55','2010-05-11 13:02:55',0),(1259,'2021-02-03 22:52:06','2021-02-03 22:52:06',0),(1260,'2021-02-03 22:53:41','2021-02-03 22:53:41',0),(1261,'2021-02-06 18:10:00','2021-02-06 18:10:00',0),(1262,'2021-02-06 18:12:03','2021-02-06 18:12:03',0),(1263,'2021-02-06 18:12:53','2021-02-06 18:12:53',0),(1264,'2021-02-06 18:13:35','2021-02-06 18:13:35',0),(1265,'2021-02-06 18:14:17','2021-02-06 18:14:17',0),(1266,'2021-02-06 18:16:19','2021-02-06 18:16:19',0),(1267,'2021-02-06 18:17:07','2021-02-06 18:17:07',0),(1268,'2021-02-06 18:17:54','2021-02-06 18:17:54',0),(1269,'2021-02-06 18:21:34','2021-02-06 18:21:34',0),(1270,'2021-02-06 18:34:49','2021-02-06 18:34:49',0),(1271,'2021-02-06 18:34:49','2021-02-06 18:34:49',0),(1272,'2021-02-06 18:34:49','2021-02-06 18:34:49',0),(1273,'2021-02-06 18:34:49','2021-02-06 18:34:49',0),(1274,'2021-02-06 18:36:49','2021-02-06 18:36:49',0),(1275,'2021-02-06 18:36:49','2021-02-06 18:36:49',0),(1276,'2021-02-06 18:36:49','2021-02-06 18:36:49',0),(1277,'2021-02-06 18:36:49','2021-02-06 18:36:49',0),(1278,'2021-02-06 18:44:18','2021-02-06 18:44:18',0),(1279,'2021-02-06 18:44:18','2021-02-06 18:44:18',0),(1280,'2021-02-06 18:44:18','2021-02-06 18:44:18',0),(1281,'2021-02-06 18:44:18','2021-02-06 18:44:18',0),(1282,'2021-02-06 18:48:26','2021-02-06 18:48:26',0),(1283,'2021-02-06 18:51:32','2021-02-06 18:51:32',0),(1284,'2021-02-06 18:51:32','2021-02-06 18:51:32',0),(1285,'2021-02-06 18:51:32','2021-02-06 18:51:32',0),(1286,'2021-02-06 18:51:32','2021-02-06 18:51:32',0),(1287,'2021-02-07 15:47:35','2021-02-07 15:47:35',0),(1288,'2021-02-07 15:51:54','2021-02-07 15:51:54',0),(1289,'2021-02-07 15:52:28','2021-02-07 15:52:28',0),(1290,'2021-02-07 15:54:50','2021-02-07 15:54:50',0),(1291,'2021-02-07 16:54:12','2021-02-07 16:54:12',0),(1292,'2021-02-07 16:54:19','2021-02-07 16:54:19',0),(1293,'2021-02-07 16:54:56','2021-02-07 16:54:56',0),(1294,'2021-02-07 17:00:49','2021-02-07 17:00:49',0),(1295,'2021-02-07 17:01:07','2021-02-07 17:01:07',0),(1296,'2021-02-07 17:01:28','2021-02-07 17:01:28',0),(1297,'2021-02-07 17:01:45','2021-02-07 17:01:45',0),(1298,'2021-02-07 17:04:21','2021-02-07 17:04:21',0),(1299,'2021-02-07 17:04:46','2021-02-07 17:04:46',0),(1300,'2021-02-07 17:05:01','2021-02-07 17:05:01',0),(1301,'2021-02-07 17:06:22','2021-02-07 17:06:22',0),(1302,'2021-02-07 17:08:01','2021-02-07 17:08:01',0),(1303,'2021-02-07 17:08:25','2021-02-07 17:08:25',0),(1304,'2021-02-07 17:09:12','2021-02-07 17:09:12',0),(1305,'2021-02-07 17:09:33','2021-02-07 17:09:33',0),(1306,'2021-02-07 17:12:16','2021-02-07 17:12:16',0),(1307,'2021-02-07 17:12:44','2021-02-07 17:12:44',0),(1308,'2021-02-07 17:14:05','2021-02-07 17:14:05',0),(1309,'2021-02-07 17:15:39','2021-02-07 17:15:39',0),(1310,'2021-02-07 17:16:19','2021-02-07 17:16:19',0),(1311,'2021-02-07 17:29:39','2021-02-07 17:29:39',0),(1312,'2021-02-07 17:30:30','2021-02-07 17:30:30',0),(1313,'2021-02-07 17:31:27','2021-02-07 17:31:27',0),(1314,'2021-02-07 17:31:38','2021-02-07 17:31:38',0),(1315,'2021-02-07 17:35:09','2021-02-07 17:35:09',0),(1316,'2021-02-07 17:40:10','2021-02-07 17:40:10',0),(1317,'2021-02-07 17:41:30','2021-02-07 17:41:30',0);
/*!40000 ALTER TABLE `entity_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'internal id',
  `entity_id` bigint unsigned DEFAULT NULL COMMENT 'general number in system',
  `invoice_number` varchar(50) DEFAULT NULL,
  `invoice_amt` float DEFAULT NULL,
  `client_id` bigint unsigned DEFAULT NULL,
  `fully_paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_invoices_entity_table` (`entity_id`),
  KEY `fk_invoices_client` (`client_id`),
  CONSTRAINT `fk_invoices_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`entity_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_invoices_entity_table` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,245,'qvlx',1000000,1029,1),(2,933,'nkcz',1000000,1241,1),(3,1197,'ngco',4,1097,0),(4,1026,'zxjx',252,1241,1),(5,32,'ggvf',1000000,1029,1),(6,522,'gmrt',3.911,43,0),(7,628,'mivy',1000000,593,0),(8,1234,'hilf',0,703,0),(9,601,'jgbo',31035.2,1181,1),(10,1195,'yaqr',56160.7,946,0),(11,940,'fuxl',0,840,0),(12,858,'cwjd',1000000,448,0),(13,368,'eyxc',61909,703,0),(14,181,'qeza',495.724,840,1),(15,73,'jwdg',7170.4,760,1),(16,1239,'pjrr',27.8362,1029,1),(17,298,'ifvj',0,703,0),(18,160,'cfft',46.9487,1097,1),(19,885,'bgih',36.04,257,1),(20,1198,'erhv',695.378,566,1),(21,728,'qdju',4.826,447,1),(22,339,'zdnt',1000000,703,1),(23,1136,'xnlr',0,1029,1),(24,637,'twkb',15.3027,946,1),(25,893,'jsmt',1000000,593,0),(26,560,'scct',1000000,998,0),(27,323,'ntbr',0,593,1),(28,1128,'avjj',1336,1097,1),(29,1196,'aeqp',0.9532,593,1),(30,520,'iava',316549,1029,1),(31,1289,NULL,NULL,659,0),(32,1290,NULL,58.0983,659,0),(33,1291,NULL,58.0983,659,0),(36,1300,NULL,58.0983,659,0),(38,1302,NULL,58.0983,659,0),(40,1304,'0/2021-02-07',58.0983,659,0),(41,1305,'1305/2021-02-07',58.0983,659,0),(42,1308,'1308/2021-02-07',58.0983,659,0),(43,1313,'1313/2021-02-07',NULL,NULL,0),(44,1314,'1314/2021-02-07',NULL,NULL,0),(45,1315,'1315/2021-02-07',NULL,NULL,0),(46,1316,'1316/2021-02-07',NULL,NULL,0),(47,1317,'1317/2021-02-07',142.47,321,0);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_invoice_number` BEFORE INSERT ON `invoices` FOR EACH ROW begin
	declare invoice_date date;
    set invoice_date = (select date(created) from entity_table where entity_id = new.entity_id limit 1);
    set new.invoice_number = concat(new.entity_id, '/', invoice_date);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` bigint unsigned NOT NULL,
  `entity_name` varchar(100) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,666,'officia','2021-02-03 20:49:22'),(2,459,'officia','2021-02-03 20:49:38'),(3,178,'amet','2021-02-03 20:57:16'),(4,832,'esse','2021-02-03 20:57:16'),(5,874,'nemo','2021-02-03 20:57:16'),(6,837,'nam','2021-02-03 20:57:16'),(7,1217,'voluptas','2021-02-03 20:57:16'),(8,553,'laudantium','2021-02-03 20:57:16'),(9,714,'est','2021-02-03 20:57:16'),(10,538,'earum','2021-02-03 20:57:16'),(11,1175,'magni','2021-02-03 20:57:16'),(12,721,'quas','2021-02-03 20:57:16'),(13,760,'autem','2021-02-03 20:57:16'),(14,354,'dolorem','2021-02-03 20:57:16'),(15,448,'nam','2021-02-03 20:57:16'),(16,889,'quibusdam','2021-02-03 20:57:16'),(17,566,'ducimus','2021-02-03 20:57:16'),(18,351,'animi','2021-02-03 20:57:16'),(19,1097,'nihil','2021-02-03 20:57:16'),(20,986,'unde','2021-02-03 20:57:16'),(21,118,'sunt','2021-02-03 20:57:16'),(22,1178,'aspernatur','2021-02-03 20:57:16'),(23,491,'aut','2021-02-03 20:57:16'),(24,35,'quaerat','2021-02-03 20:57:16'),(25,447,'debitis','2021-02-03 20:57:16'),(26,1037,'blanditiis','2021-02-03 20:57:16'),(27,403,'iusto','2021-02-03 20:57:16'),(28,563,'labore','2021-02-03 20:57:16'),(29,840,'incidunt','2021-02-03 20:57:16'),(30,1187,'ut','2021-02-03 20:57:16'),(31,1242,'vel','2021-02-03 20:57:16'),(32,218,'laboriosam','2021-02-03 20:57:16'),(33,74,'ut','2021-02-03 20:57:16'),(34,533,'possimus','2021-02-03 20:57:16'),(35,1249,'enim','2021-02-03 20:57:16'),(36,36,'aut','2021-02-03 20:57:16'),(37,426,'accusamus','2021-02-03 20:57:16'),(38,422,'consectetur','2021-02-03 20:57:16'),(39,609,'harum','2021-02-03 20:57:16'),(40,1181,'veritatis','2021-02-03 20:57:16'),(41,352,'in','2021-02-03 20:57:16'),(42,807,'sapiente','2021-02-03 20:57:16'),(43,1244,'aliquam','2021-02-03 20:57:16'),(44,1157,'illo','2021-02-03 20:57:16'),(45,574,'alias','2021-02-03 20:57:16'),(46,1116,'ipsam','2021-02-03 20:57:16'),(47,1241,'et','2021-02-03 20:57:16'),(48,946,'magnam','2021-02-03 20:57:16'),(49,486,'doloremque','2021-02-03 20:57:16'),(50,142,'libero','2021-02-03 20:57:16'),(51,703,'delectus','2021-02-03 20:57:16'),(52,988,'et','2021-02-03 20:57:16'),(53,873,'debitis','2021-02-03 20:57:16'),(54,371,'sit','2021-02-03 20:57:16'),(55,646,'qui','2021-02-03 20:57:16'),(56,257,'repellat','2021-02-03 20:57:16'),(57,477,'aperiam','2021-02-03 20:57:16'),(58,792,'ipsa','2021-02-03 20:57:16'),(59,1059,'nam','2021-02-03 20:57:16'),(60,362,'accusamus','2021-02-03 20:57:16'),(61,424,'fugit','2021-02-03 20:57:16'),(62,105,'qui','2021-02-03 20:57:16'),(63,680,'est','2021-02-03 20:57:16'),(64,1207,'ipsum','2021-02-03 20:57:16'),(65,321,'sapiente','2021-02-03 20:57:16'),(66,99,'praesentium','2021-02-03 20:57:16'),(67,659,'commodi','2021-02-03 20:57:16'),(68,1248,'accusamus','2021-02-03 20:57:16'),(69,914,'sit','2021-02-03 20:57:16'),(70,998,'a','2021-02-03 20:57:16'),(71,472,'velit','2021-02-03 20:57:16'),(72,593,'non','2021-02-03 20:57:16'),(73,707,'vero','2021-02-03 20:57:16'),(74,1185,'sint','2021-02-03 20:57:16'),(75,1029,'deserunt','2021-02-03 20:57:16'),(76,43,'aut','2021-02-03 20:57:16'),(77,762,'veniam','2021-02-03 20:57:16'),(78,34,'repellat','2021-02-03 20:57:16'),(79,741,'blanditiis','2021-02-03 20:57:16'),(80,514,'ipsum','2021-02-03 20:57:16'),(81,571,'qui','2021-02-03 20:57:16'),(82,187,'qui','2021-02-03 20:57:16'),(83,838,'delivering','2021-02-03 22:16:46'),(84,1131,'delivering','2021-02-03 22:16:48'),(85,657,'delivering','2021-02-03 22:16:48'),(86,217,'delivering','2021-02-03 22:16:48'),(87,211,'delivering','2021-02-03 22:16:48'),(88,1149,'delivering','2021-02-03 22:16:49'),(89,69,'delivering','2021-02-03 22:16:49'),(90,937,'delivering','2021-02-03 22:16:49'),(91,144,'delivering','2021-02-03 22:16:49'),(92,543,'delivering','2021-02-03 22:16:49'),(93,647,'delivering','2021-02-03 22:16:50'),(94,921,'delivering','2021-02-03 22:16:50'),(95,344,'delivering','2021-02-03 22:16:50'),(96,600,'delivering','2021-02-03 22:16:50'),(97,826,'delivering','2021-02-03 22:16:50'),(98,28,'delivering','2021-02-03 22:16:51'),(99,1008,'delivering','2021-02-03 22:16:51'),(100,38,'delivering','2021-02-03 22:16:51'),(101,932,'delivering','2021-02-03 22:16:51'),(102,1056,'delivering','2021-02-03 22:16:52'),(103,391,'delivering','2021-02-03 22:16:52'),(104,598,'delivering','2021-02-03 22:16:52'),(105,529,'delivering','2021-02-03 22:16:52'),(106,899,'delivering','2021-02-03 22:16:52'),(107,57,'delivering','2021-02-03 22:16:53'),(108,544,'delivering','2021-02-03 22:16:53'),(109,301,'delivering','2021-02-03 22:16:53'),(110,157,'delivering','2021-02-03 22:16:53'),(111,662,'delivering','2021-02-03 22:16:54'),(112,75,'delivering','2021-02-03 22:16:54'),(113,230,'delivering','2021-02-03 22:16:54'),(114,365,'delivering','2021-02-03 22:16:54'),(115,450,'delivering','2021-02-03 22:16:54'),(116,334,'delivering','2021-02-03 22:16:55'),(117,442,'delivering','2021-02-03 22:16:55'),(118,204,'delivering','2021-02-03 22:16:55'),(119,281,'delivering','2021-02-03 22:16:55'),(120,665,'delivering','2021-02-03 22:16:55'),(121,1209,'delivering','2021-02-03 22:16:56'),(122,21,'delivering','2021-02-03 22:16:56'),(123,1127,'delivering','2021-02-03 22:16:56'),(124,904,'delivering','2021-02-03 22:16:56'),(125,734,'delivering','2021-02-03 22:16:57'),(126,697,'delivering','2021-02-03 22:16:57'),(127,784,'delivering','2021-02-03 22:16:57'),(128,261,'delivering','2021-02-03 22:16:57'),(129,705,'delivering','2021-02-03 22:16:57'),(130,750,'delivering','2021-02-03 22:16:58'),(131,687,'delivering','2021-02-03 22:16:58'),(132,1160,'delivering','2021-02-03 22:16:58'),(133,747,'delivering','2021-02-03 22:16:58'),(134,103,'delivering','2021-02-03 22:16:59'),(135,431,'delivering','2021-02-03 22:16:59'),(136,605,'delivering','2021-02-03 22:16:59'),(137,348,'delivering','2021-02-03 22:16:59'),(138,757,'delivering','2021-02-03 22:16:59'),(139,753,'delivering','2021-02-03 22:17:00'),(140,1113,'delivering','2021-02-03 22:17:00'),(141,457,'delivering','2021-02-03 22:17:00'),(142,324,'delivering','2021-02-03 22:17:00'),(143,965,'delivering','2021-02-03 22:17:00'),(144,1087,'delivering','2021-02-03 22:17:01'),(145,129,'delivering','2021-02-03 22:17:01'),(146,326,'delivering','2021-02-03 22:17:01'),(147,1103,'delivering','2021-02-03 22:17:01'),(148,927,'delivering','2021-02-03 22:17:02'),(149,439,'delivering','2021-02-03 22:17:02'),(150,492,'delivering','2021-02-03 22:17:02'),(151,710,'delivering','2021-02-03 22:17:02'),(152,696,'delivering','2021-02-03 22:17:02'),(153,425,'delivering','2021-02-03 22:17:03'),(154,725,'delivering','2021-02-03 22:17:03'),(155,1229,'delivering','2021-02-03 22:17:03'),(156,62,'delivering','2021-02-03 22:17:03'),(157,942,'delivering','2021-02-03 22:17:04'),(158,337,'delivering','2021-02-03 22:17:04'),(159,1260,'delivering','2021-02-03 22:53:41'),(160,1268,'delivering','2021-02-06 18:17:55'),(161,1269,'delivering','2021-02-06 18:21:34'),(162,1283,'Test Test LN','2021-02-06 18:51:32');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` int unsigned NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (20001,'Open',1),(20002,'Waiting for delivery',1),(20003,'shipped',1),(20004,'arrived to exchange center',1),(20005,'arrived to destination point',1),(20006,'completed',1),(20007,'closed',1),(20008,'cancelled',1);
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `our_branches`
--

DROP TABLE IF EXISTS `our_branches`;
/*!50001 DROP VIEW IF EXISTS `our_branches`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `our_branches` AS SELECT 
 1 AS `id`,
 1 AS `entity_id`,
 1 AS `country`,
 1 AS `region`,
 1 AS `city`,
 1 AS `address_1`,
 1 AS `zip`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'internal id',
  `entity_id` bigint unsigned DEFAULT NULL COMMENT 'general number in system',
  `bank_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'name of bank',
  `tax_number` varchar(20) DEFAULT NULL COMMENT 'enterprize tax no',
  `bank_account` varchar(20) DEFAULT NULL COMMENT 'number of bank acc',
  `BIC_code` varchar(8) DEFAULT NULL,
  `bank_city` varchar(50) DEFAULT NULL COMMENT 'city where bank account was registered',
  PRIMARY KEY (`id`),
  KEY `fk_payment_info_entity_table` (`entity_id`),
  CONSTRAINT `fk_payment_info_entity_table` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `length_bank_acc` CHECK ((length(`bank_account`) <= 20)),
  CONSTRAINT `length_tax_no` CHECK ((length(`tax_number`) <= 20))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
INSERT INTO `payment_info` VALUES (1,709,'Voluptatibus ipsa hic magni ut fuga aliquid dolor quos.','400','537','ewvh','East Darbyshire'),(2,46,'Sint assumenda ad expedita itaque.','496','4289594','mgvw','North Kileyburgh'),(3,194,'Enim et aut sed autem beatae.','7','296738','njap','Port Anya'),(4,200,'Odio ex voluptas et consectetur quas.','610','4350601','qxco','Cameronside'),(5,1238,'Exercitationem vitae molestiae est consequuntur.','992801','833978','zeoo','Donnamouth'),(6,984,'Dolor voluptatum soluta ducimus blanditiis.','980','','fmob','Powlowskimouth'),(7,515,'Quam ipsum quidem explicabo id veritatis quidem necessitatibus.','8385622','','kjxz','New Myah'),(8,499,'Possimus quis quidem amet eum non itaque.','77733680','7','bdbs','Rathborough'),(9,1161,'Eos optio quis dolorem dolores.','53469','','pbla','Port Monserratfurt'),(10,694,'Et cumque eligendi est tenetur molestiae quam aut.','2081','9431','npzf','Laurianebury'),(11,677,'Reiciendis est ut velit optio labore eius nisi quisquam.','220','84190698','tipy','North Axelhaven'),(12,1182,'Sit placeat facilis esse eligendi dignissimos.','5790','817','faad','Port Arelyport'),(13,892,'Eaque eligendi voluptates et voluptas mollitia et sed.','988','990528','zudb','Lilahaven'),(14,678,'Sunt in voluptas ipsam exercitationem repellat cupiditate harum.','0','3300545','crap','Wuckertfurt'),(15,329,'Est et consequatur quod in necessitatibus ea aliquid saepe.','45787','7','rnyx','Lianaburgh'),(16,505,'Alias ab aut aut minus nostrum.','6661225','','krkz','East Raphael'),(17,423,'Reiciendis sunt fuga tempore ut.','5327','','pjws','Port Mertiebury'),(18,962,'Excepturi voluptatem exercitationem illo odit.','2813','','ukdi','North Jedfort'),(19,920,'Ut et officia omnis excepturi qui.','122','','ucat','West Bettyton'),(20,322,'In quod accusamus aut quaerat.','0','139084','nlkn','North Brooklyn'),(21,931,'In repudiandae consequatur earum ut odit dolorum.','28983','8','doge','East Hadley'),(22,258,'Quasi dolores consequuntur autem sed.','487','599069388','jqmr','O\'Reillyview'),(23,497,'Aut saepe harum cupiditate corrupti optio assumenda.','1687107','','nrok','Lake Rosina'),(24,621,'Doloribus omnis molestiae ut nostrum et alias quos.','813047','9677','xych','Port Neal'),(25,888,'Quia exercitationem molestias fugit eos doloribus numquam temporibus natus.','71109632','116961','otqu','East Eunice'),(26,537,'Dolorem delectus et molestiae hic commodi exercitationem.','99873','8','ucts','New Evaborough'),(27,1167,'Eaque illo eum reprehenderit architecto in aut nihil.','2848417','','trtt','West Sallyshire'),(28,246,'Omnis nihil vel necessitatibus.','6443657','892758','fbwp','Gregport'),(29,283,'Nisi voluptas optio odit dolore qui.','66291858','','tmjm','Mauricemouth'),(30,353,'Laudantium et porro sit minus natus qui ad aut.','0','9','ojlg','Herzogshire'),(31,399,'Libero qui et quam eaque illum et et.','8741','5','zgmg','Port Brownburgh'),(32,150,'Iusto culpa enim unde magnam sapiente totam.','433281','16','soxs','Lake Ashleyberg'),(33,1013,'Rerum quis dolor nisi quaerat.','542561','4','bbgp','West Bartholometown'),(34,1222,'Modi sapiente aut harum dolores.','0','26660','bhyv','Port Amparobury'),(35,197,'Laboriosam accusamus in blanditiis asperiores.','2623','7372','tqts','Beertown'),(36,964,'Aperiam ducimus in quae voluptatem laborum quam inventore ex.','9689548','1881','cupm','New Lillie'),(37,686,'Perspiciatis odio aut necessitatibus voluptas magnam vero suscipit.','910767','169496624','cqaz','Port Bernie'),(38,517,'Non placeat quaerat illum atque dolores et.','16103','9802','ofsl','Tobyside'),(39,852,'Sint nobis assumenda ratione expedita tenetur molestiae.','781','7750','exqs','New Feltonville'),(40,369,'Consequuntur recusandae quidem mollitia eos pariatur.','84','2','ssgx','East Bradfordchester');
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `id` bigint unsigned DEFAULT NULL,
  `phone` varchar(14) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  KEY `idx_phone` (`phone`),
  KEY `fk_phone_et` (`id`),
  CONSTRAINT `fk_phone_et` FOREIGN KEY (`id`) REFERENCES `entity_table` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `ch_phone_format` CHECK ((length(`phone`) >= 7))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (748,'00357413797','Sunt odio praesentium perferendis omnis dolorem.'),(979,'+48(9)66788879','Similique fugit asperiores rerum vero doloribus in quod.'),(341,'1-414-292-7715','At enim voluptas earum modi alias tempore sit.'),(433,'(033)079-6966x','Fugiat ut veritatis ut recusandae.'),(971,'046-344-5987','A exercitationem ut totam quia ut et.'),(554,'(850)438-8241x','Voluptate quasi et harum cum voluptas.'),(400,'+01(8)53166432','Rerum sint magnam et nostrum delectus laudantium.'),(379,'522.173.5586x4','Ipsam rerum est nihil sed aut porro iure.'),(634,'(532)831-3726x','Nam officiis rem dolores rerum quia.'),(267,'1-342-184-0631','Consequatur ex est et sunt.'),(80,'1-360-052-3400','Saepe rem doloribus quia similique a aut facilis.'),(591,'(905)588-5677x','Ex ut inventore ea dolores debitis ut.'),(96,'1-598-904-2880','Ut nulla atque vitae occaecati sapiente sint ad et.'),(464,'(947)933-5013','Aut at natus voluptatem.'),(1204,'875.577.8666','Nostrum totam laudantium atque voluptatibus et aut at natus.'),(737,'(563)540-4374x','Esse consequatur amet qui cumque.'),(880,'450.611.8228x2','Facere dolorum debitis maxime quis in consequatur.'),(622,'1-130-749-7533','Et nobis sit aut eveniet.'),(913,'06134307442','Consequatur aut pariatur repellat similique illum est similique et.'),(19,'(751)351-1551','Expedita explicabo sit et nesciunt nemo.'),(526,'1-888-070-8554','Tempora omnis officiis harum laudantium distinctio tempora cum.'),(713,'(545)368-7664x','Inventore et eum nulla tempora.'),(1110,'(166)957-3456','Eveniet error odit quae facere commodi qui.'),(1076,'(359)298-5089','Aut eos quo perspiciatis tenetur.'),(1091,'03408393699','Non qui quaerat occaecati.'),(939,'+99(1)11978386','Sed ex dignissimos voluptas.'),(919,'(729)234-3641x','Illo et asperiores rerum vel ipsam tempora.'),(320,'389.933.9049','Beatae qui et cumque et est a.'),(1172,'1-882-792-9144','Officiis totam repudiandae ea vitae.'),(76,'02250499754','Asperiores deserunt consequatur odit rerum reprehenderit.'),(502,'+32(8)03923842','Commodi nemo doloribus et modi.'),(825,'637.347.9381','Adipisci error corrupti quo fugit.'),(307,'07280425831','Error cupiditate sed non quam eos repellendus vel.'),(884,'1-369-228-4100','Et dolorem iusto et consequatur tenetur esse non et.'),(1251,'200-883-4581','Quas quas dolor et neque.'),(1199,'658-903-1568x5','Assumenda corrupti vitae iste ipsum quam.'),(392,'776.000.1102x4','Placeat ut omnis soluta eum.'),(1152,'(684)954-1963x','Aut voluptas consequatur modi dolore cumque facilis eos repudiandae.'),(796,'023-119-8714','Vero dolore eos qui fugiat architecto.'),(756,'(460)760-5792','Nihil quaerat sunt corrupti officiis numquam.'),(996,'432.079.8577x4','Sint animi ut dolores a.'),(366,'068.389.2901x0','Qui placeat officia ut.'),(1208,'+61(4)79324561','Sit ab unde enim non ipsum et dignissimos.'),(270,'582.169.7026x3','Non non perferendis voluptatem minus corporis nisi.'),(1000,'911.405.8907x5','Quia quo nisi et quia nesciunt quibusdam ratione ratione.'),(1114,'(321)681-2491x','Nam cum et impedit qui sed eveniet ab nostrum.'),(851,'00667250134','Aperiam id aut nostrum placeat.'),(790,'347.375.6382','At occaecati cumque eveniet distinctio facere ea molestias.'),(1096,'165.193.7013','Sed omnis omnis minus in neque dolores.'),(967,'1-940-943-6784','Ut voluptatem vel sit voluptatibus repellendus consequatur laudantium odit.'),(738,'(257)034-5376','Quisquam non repudiandae quia nihil dolorem voluptatibus tenetur quis.'),(349,'1-397-259-0207','Aut natus doloremque quia beatae dolorem dolores.'),(137,'449-101-2953x3','Quaerat aut voluptatum odit voluptas.'),(900,'048-140-9292','Perferendis modi in eos reprehenderit odit.'),(1223,'748.446.7504x1','Et numquam quod illo.'),(449,'(366)680-7074x','Ab voluptatem qui qui aperiam.'),(876,'494-815-6560x7','Id repudiandae quasi impedit accusantium voluptates quia.'),(615,'101-390-4297','Ipsum in possimus provident ipsum tempore delectus provident facilis.'),(373,'422-926-7547x8','Saepe quibusdam aut maxime pariatur non id quasi.'),(806,'801-989-3353x7','Quos ut blanditiis dolores consequuntur voluptatum.'),(778,'427.722.8773','Consequuntur deleniti repellendus est eligendi ea doloribus.'),(203,'(733)275-5130x','Autem repellat eligendi ipsa aut.'),(819,'324.177.5274','Possimus commodi quia nulla dolores magni saepe.'),(958,'1-604-888-3315','Eum nihil et est.'),(871,'918.001.2273','Vero facere ipsum dicta beatae culpa voluptates facilis possimus.'),(530,'(028)235-9980','Possimus adipisci architecto sapiente est.'),(664,'674.750.3432x3','Debitis dolores modi impedit omnis non necessitatibus in nesciunt.'),(761,'024-346-9030x5','Architecto quo ipsa consequatur recusandae blanditiis provident deleniti.'),(673,'712.999.4522','Porro corporis quasi eaque.'),(408,'971-711-2202','Quod assumenda fugiat saepe quas cum et laudantium placeat.'),(712,'(472)689-8536','Qui sed dolores commodi consequuntur qui adipisci doloribus.'),(120,'1-644-477-6785','Nam assumenda perferendis autem aut quos culpa hic.'),(1066,'(393)600-6126x','Debitis vero hic nihil suscipit expedita autem ut.'),(44,'437.454.1470x7','Voluptas occaecati voluptatibus magni dicta.'),(794,'492-334-6640x0','Illum voluptas vero possimus dicta.'),(393,'908.596.0226x0','Dolorem consequuntur officia culpa id.'),(52,'(825)378-0044x','Dolores provident aut sit rerum cupiditate alias odio.'),(222,'621-292-1488','Occaecati autem nemo et earum nisi architecto.'),(785,'+02(8)08864272','Reprehenderit quisquam nemo sunt eum minima.'),(638,'1-338-259-1576','Possimus dolorem consequatur excepturi.'),(NULL,'(555)555-55-55',NULL),(NULL,'(555)555-55-56',NULL),(1285,'(555)555-55-56',NULL);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_delivering_invoice`
--

DROP TABLE IF EXISTS `x_delivering_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x_delivering_invoice` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `delivering` bigint unsigned DEFAULT NULL,
  `invoice_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `x_client` (`client_id`),
  KEY `x_delivering` (`delivering`),
  KEY `x_invoice` (`invoice_id`),
  CONSTRAINT `x_delivering` FOREIGN KEY (`delivering`) REFERENCES `deliverings` (`entity_id`),
  CONSTRAINT `x_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_delivering_invoice`
--

LOCK TABLES `x_delivering_invoice` WRITE;
/*!40000 ALTER TABLE `x_delivering_invoice` DISABLE KEYS */;
INSERT INTO `x_delivering_invoice` VALUES (1,75,245,1029),(2,1113,933,1241),(3,129,1197,1097),(4,1113,1026,1241),(5,391,32,1029),(6,38,522,43),(7,753,628,593),(8,710,1234,703),(9,647,601,1181),(10,932,1195,946),(11,439,940,840),(13,710,368,703),(14,21,181,840),(16,391,1239,1029),(17,757,298,703),(18,348,160,1097),(19,598,885,257),(20,62,1198,566),(21,725,728,447),(22,710,339,703),(23,391,1136,1029),(24,144,637,946),(25,1149,893,593),(26,442,560,998),(27,1149,323,593),(28,348,1128,1097),(29,753,1196,593),(30,75,520,1029),(32,217,1289,659),(33,217,1290,659),(34,217,1291,659),(35,217,1300,659),(36,217,1302,659),(37,217,1304,659),(38,217,1305,659),(39,217,1308,659),(40,NULL,1317,NULL),(41,NULL,1317,NULL);
/*!40000 ALTER TABLE `x_delivering_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'delivering_service'
--
/*!50003 DROP FUNCTION IF EXISTS `return_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `return_address`() RETURNS int
begin
		declare entity int8;
        set entity = (select a.entity_id
						from address as a
                        left join clients as c
                        on a.entity_id = c.address
						where c.address is null
                        order by rand() limit 1);
		return entity;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `return_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `return_email`() RETURNS int
begin
		declare entity int8;
        set entity = (select e.entity_id
						from email as e
                        left join clients as c
                        on e.entity_id = c.email
						where c.email is null
                        order by rand() limit 1);
		return entity;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `return_entity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `return_entity`() RETURNS int
begin
		declare entity int8;
        set entity = (SELECT et.entity_id 
					from entity_table as et 
                    where et. entity_id not in (select entity_id from email)
						and et.entity_id not in (select id from phone) 
                        and et.entity_id not in (select entity_id from clients) 
                        and et.entity_id not in (select entity_id from deliverings) 
                        and et.entity_id not in (select entity_id from carriers) 
                        and et.entity_id not in (select entity_id from invoices) 
                        and et.entity_id not in (select entity_id from payment_info) 
                        and et.entity_id not in (select entity_id from address) 
                        order by rand() limit 1);
		return entity;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `return_payments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `return_payments`() RETURNS int
begin
		declare entity int8;
        set entity = (select p.entity_id
						from payment_info as p
                        left join clients as c
                        on p.entity_id = c.payment_information
						where c.payment_information is null
                        order by rand() limit 1);
		return entity;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `return_phone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `return_phone`() RETURNS int
begin
		declare entity int8;
        set entity = (select p.id
						from phone as p
                        left join clients as c
                        on p.id = c.contact_phone
						where c.contact_phone is null
                        order by rand() limit 1);
		return entity;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_client`(in client_name varchar(50)
								, first_name varchar(50)
                                , last_name varchar(50)
                                , middle_name varchar(50)
                                , country varchar(50)
                                , region varchar(50)
                                , city varchar(50)
                                , address_1 varchar(50)
                                , zip varchar(11)
                                , is_branch tinyint(1)
                                , legal_entity_address tinyint(1)
                                , phone varchar(14)
                                , can_sms tinyint(1)
                                , email varchar(255)
                                , dob datetime
                                , other_contact_method varchar(100))
begin
	declare client_entity_id int8;
    declare address_entity_id int8;
    declare phone_entity_id int8;
    declare email_entity_id int8;
    declare client_status smallint;
	
    start transaction;	
	
    -- entity_id for client
    insert into entity_table(created, updated, deleted)
    values (now(), now(), 0);
    set client_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
    
    -- entity_id for address
    insert into entity_table(created, updated, deleted)
    values (now(), now(), 0); 
    set address_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
    

    
    -- entity_id for phone
    insert into entity_table(created, updated, deleted)
    values (now(), now(), 0); 
    set phone_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
        
    -- entity_id for email
    insert into entity_table(created, updated, deleted)
    values (now(), now(), 0); 
    set email_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
    
	insert into address (entity_id, country, region, city, address_1, zip, is_branch, legal_entity_address)
    values (address_entity_id, country, region, city, address_1, zip, is_branch, legal_entity_address);
    
    insert into email (entity_id, email)
    values (email_entity_id, email);
    
    insert into phone (id, phone)
    values (phone_entity_id, phone);
    
    set client_status = (select id from client_status where status_description = 'Active');
    
    insert into clients (entity_id, client_status, client_name, first_name, last_name, middle_name, address, contact_phone, can_sms, email, other_contact_method,
			date_of_birth, legal_entity)
	values (client_entity_id, client_status, client_name, first_name, last_name, middle_name, address_entity_id, phone_entity_id, can_sms,
			email_entity_id, other_contact_method, dob, legal_entity_address);    
    
commit;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_invoice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_invoice`( in inv_client_id int8,
								delivering_id int8,
								amount float
                               -- , out invoice_entity_id int8
                                	
)
begin
	declare invoice_entity_id int8 unsigned;
		declare amt float;
        declare client_id int8;
	start transaction;		
		-- obtaining entity_id for invoice
        insert into entity_table(created, updated, deleted)
		values (now(), now(), 0);
		set invoice_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
        
        -- populating of tables depends on data in call of sp
		if delivering_id is null then
			DROP TEMPORARY TABLE IF EXISTS tmp_invoice_data;
            create temporary table tmp_invoice_data  			
            select pay_client_ref as client_id
					, entity_id as delivering_id
					, cost
                    , round(sum(cost) over (), 2)as inv_amt
                    , invoice_entity_id as invoice_id
            from deliverings 
            where pay_client_ref = inv_client_id 
									and paid <> 1;    
                                    
           
            if amount is null then
				set amt = (select distinct inv_amt from tmp_invoice_data limit 1);
			else
				set amt = amount;
            end if;
            
              
            -- insert values from variables to invoice as single row
            insert into invoices (entity_id, invoice_amt, client_id, fully_paid)
            values (invoice_entity_id, amt, inv_client_id, 0);
            
            
            insert into x_delivering_invoice(delivering, invoice_id, client_id)
				select delivering_id, invoice_id, client_id 
				from tmp_invoice_data;
            
            drop temporary table tmp_invoice_data;           
            
            
		else
			-- setting of amt value
            if amount is null then
				set amt = (select cost from deliverings where deliverings.entity_id = delivering_id);
            else
				set amt = amount;
			end if;
            -- choose client id by delivering
            set client_id = ifnull(client_id, (select pay_client_ref from deliverings where entity_id = delivering_id));
            
            insert into invoices (entity_id, invoice_amt, client_id, fully_paid)
				values (invoice_entity_id, amt, client_id, 0);
            
            insert into x_delivering_invoice(delivering, invoice_id, client_id)
				values (delivering_id, invoice_entity_id, client_id);
		end if; 
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `client_search_by_city` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `client_search_by_city`(in city varchar(50))
begin
	select cl.entity_id 
	from clients as cl
    inner join address as a
    on cl.address = a.entity_id 
    where a.city = city;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `client_search_by_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `client_search_by_name`(in fullname varchar(50),
											first_name varchar(50),
                                            last_name varchar(50)
										)
begin
	if fullname is not null then
		select entity_id 
        from clients 
        where clients.client_name = fullname;
	elseif first_name is not null and last_name is null then
		select entity_id 
        from clients 
        where clients.first_name = first_name;
	elseif last_name is not null and first_name is null then
		select entity_id 
        from clients 
        where clients.last_name = last_name;
	else
		select entity_id
        from clients
        where clients.first_name = first_name and clients.last_name = last_name;
    end if;    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `client_search_by_phone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `client_search_by_phone`(in phone varchar(14))
begin
	select cl.entity_id 
	from clients as cl
    inner join phone as p
    on cl.contact_phone = p.id 
    where p.phone = ifnull(phone, 0);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_delivering` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_delivering`(client_from int8, 
									client_to int8, 
                                    address_from int8,
                                    address_to int8, 
                                    cost float, 
                                    paid boolean,
                                    who_paid int8,
                                    fragile boolean,
                                    dangerous boolean,
                                    flamable boolean,
                                    notes varchar(1000) )
begin
		declare now datetime;
        declare id_entity int8 unsigned;
        declare order_status int4;
        
        
        set now = now();
		insert into entity_table (created, updated)
        values (now, now);
        
        set id_entity = (select entity_id from entity_table order by entity_id desc limit 1);
        set order_status = (select id from order_status where description = 'Open');
        
        insert into deliverings(entity_id, order_status, `deliverings`.`from_address_id`, to_address_id, from_id, to_id, cost, paid, pay_client_ref, fragile, dangerous, flamable, notes)
        values(id_entity, order_status, address_from, address_to, client_from, client_to, cost, paid, who_paid, fragile, dangerous, flamable, notes)  ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delivering_count_by_interval` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delivering_count_by_interval`(in start_date date, 
												end_date date)
begin
	select 
    clf.client_name as client_from
    , clt.client_name as client_to
    , d.send_date
    , count(*) over (partition by send_date order by send_date desc) as amt_sent_by_date
    , count(*) over (partition by d.from_id) as amt_sent_by_client_from
	, count(*) over (partition by d.to_id) as amt_sent_by_client_to
    , count(*) over() as general_amount
    from deliverings as d
    inner join clients as clf
		on d.from_id = clf.entity_id
	inner join clients as clt 
		on d.to_id = clt.entity_id
    where send_date between ifnull(start_date, date('1970-01-01')) and ifnull(end_date, date(date_add(now(), interval 1 DAY)));
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delivering_search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delivering_search`(in city varchar(50)
									, client_name varchar(50)
                                    , completed boolean
                                    , start_date date
                                    , end_date date)
begin
	select distinct
    d.entity_id
    from deliverings as d
		inner join address as af
			on d.from_address_id = af.entity_id
		inner join address as a_t
			on d.to_address_id = a_t.entity_id
		inner join clients as clf
			on d.from_id = clf.entity_id
		inner join clients as clt
			on d.to_id = clt.entity_id
    where (af.city = city or a_t.city = city) and 
           (clt.client_name like concat(client_name, '%') or clf.client_name like concat(client_name, '%'))
           and (d.completed = ifnull(completed, 0) or d.completed = ifnull(completed, 1))
           and (send_date between ifnull(start_date, date('1970-01-01')) and ifnull(end_date, date(date_add(now(), interval 1 DAY))))
    ;
    
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `current_deliverings`
--

/*!50001 DROP VIEW IF EXISTS `current_deliverings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `current_deliverings` AS select `d`.`order_id` AS `order_id`,`os`.`description` AS `order_status`,`a_from`.`city` AS `city_from`,`a_to`.`city` AS `city_to`,`a_to`.`address_1` AS `address_to`,`a_to`.`is_branch` AS `is_branch`,`d`.`carrier` AS `carrier`,`d`.`fragile` AS `fragile`,`d`.`dangerous` AS `dangerous`,`d`.`flamable` AS `flamable`,`d`.`notes` AS `notes`,`c_to`.`client_name` AS `client_name`,`p`.`phone` AS `contact_phone`,`p`.`notes` AS `contact_notes` from ((((((`deliverings` `d` join `clients` `c_from` on((`d`.`from_id` = `c_from`.`entity_id`))) join `clients` `c_to` on((`d`.`to_id` = `c_to`.`entity_id`))) left join `phone` `p` on((`c_to`.`contact_phone` = `p`.`id`))) join `address` `a_from` on((`d`.`from_address_id` = `a_from`.`entity_id`))) join `address` `a_to` on((`d`.`to_address_id` = `a_to`.`entity_id`))) join `order_status` `os` on((`d`.`order_status` = `os`.`id`))) where (`d`.`completed` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `our_branches`
--

/*!50001 DROP VIEW IF EXISTS `our_branches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `our_branches` AS select `address`.`id` AS `id`,`address`.`entity_id` AS `entity_id`,`address`.`country` AS `country`,`address`.`region` AS `region`,`address`.`city` AS `city`,`address`.`address_1` AS `address_1`,`address`.`zip` AS `zip` from `address` where (`address`.`is_branch` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-07 19:44:00
