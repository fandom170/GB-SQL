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
) ENGINE=InnoDB AUTO_INCREMENT=200100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=50100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `fk_clients_phone` (`contact_phone`),
  KEY `client_names` (`client_name`),
  KEY `fk_client_email` (`email`),
  KEY `fk_client_payment` (`payment_information`),
  CONSTRAINT `fk_client_email` FOREIGN KEY (`email`) REFERENCES `email` (`entity_id`),
  CONSTRAINT `fk_client_payment` FOREIGN KEY (`payment_information`) REFERENCES `payment_info` (`entity_id`),
  CONSTRAINT `fk_clients_clientstatus` FOREIGN KEY (`client_status`) REFERENCES `client_status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_clients_et` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_clients_phone` FOREIGN KEY (`contact_phone`) REFERENCES `phone` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


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
  `order_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'unique external id for any deliverings',
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
  `expectind_receiving` datetime DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `fk_deliverings_entity_table` (`entity_id`),
  KEY `fk_deliverings_address_from` (`from_address_id`),
  KEY `fk_deliverings_address_to` (`to_address_id`),
  KEY `fk_deliverings_client_from` (`from_id`),
  KEY `fk_deliverings_client_to` (`to_id`),
  KEY `fk_deliverings_payclient` (`pay_client_ref`),
  KEY `idx_carrier` (`carrier`),
  KEY `order_status` (`order_status`),
  CONSTRAINT `deliverings_ibfk_1` FOREIGN KEY (`order_status`) REFERENCES `order_status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_delivering_carrier` FOREIGN KEY (`carrier`) REFERENCES `carriers` (`entity_id`),
  CONSTRAINT `fk_deliverings_address_from` FOREIGN KEY (`from_address_id`) REFERENCES `address` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_address_to` FOREIGN KEY (`to_address_id`) REFERENCES `address` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_client_from` FOREIGN KEY (`from_id`) REFERENCES `clients` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_client_to` FOREIGN KEY (`to_id`) REFERENCES `clients` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_entity_table` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_deliverings_payclient` FOREIGN KEY (`pay_client_ref`) REFERENCES `clients` (`entity_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `fk_email_et` (`entity_id`),
  KEY `email` (`email`),
  CONSTRAINT `fk_email_et` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `ch_email_format` CHECK (regexp_like(`email`,_utf8mb4'^[A-Z0-9._%-]+@[A-Z0-9.-]+.[A-Z]{2,4}$'))
) ENGINE=InnoDB AUTO_INCREMENT=300100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=1000705 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'internal id',
  `entity_id` bigint unsigned DEFAULT NULL COMMENT 'general number in system',
  `invoice_number` varchar(20) DEFAULT NULL,
  `invoice_amt` float DEFAULT NULL,
  `client_id` bigint unsigned DEFAULT NULL,
  `fully_paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_invoices_entity_table` (`entity_id`),
  KEY `fk_invoices_client` (`client_id`),
  CONSTRAINT `fk_invoices_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`entity_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_invoices_entity_table` FOREIGN KEY (`entity_id`) REFERENCES `entity_table` (`entity_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



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
) ENGINE=InnoDB AUTO_INCREMENT=40100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


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
  KEY `fk_phone_et` (`id`),
  KEY `idx_phone` (`phone`),
  CONSTRAINT `fk_phone_et` FOREIGN KEY (`id`) REFERENCES `entity_table` (`entity_id`) ON UPDATE CASCADE,
  CONSTRAINT `ch_phone_format` CHECK ((length(`phone`) >= 7))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



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
  KEY `x_delivering` (`delivering`),
  KEY `x_client` (`client_id`),
  KEY `x_invoice` (`invoice_id`),
  CONSTRAINT `x_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`entity_id`),
  CONSTRAINT `x_delivering` FOREIGN KEY (`delivering`) REFERENCES `deliverings` (`entity_id`),
  CONSTRAINT `x_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping routines for database 'delivering_service'
--
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
    values (address+entity_id, country, region, city, address_1, zip, is_branch, legal_entity_address);
    
    insert into email (entity_id, email)
    values (email_entity_id, email);
    
    insert into phone (id, phone)
    values (id, phone);
    
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
/*!50003 DROP PROCEDURE IF EXISTS `client_search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `client_search`(in client_name varchar(100)
								, city varchar(50)
                                , address_1 varchar(50)
                                , first_name varchar(50)
                                , last_name varchar(50)
                                , phone varchar(14))
begin
	select cl.entity_id 
	from clients as cl
    inner join address as ad
    on cl.address = ad.entity_id   
    inner join phone as p
    on cl.contact_phone = p.id 
    where ad.city = ifnull(city, 0) 
			or ad.address_1 = ifnull(address_1, 0)
            or cl.client_name = ifnull(client_name, 0)
            or cl.first_name = ifnull(first_name, 0)
			or cl.last_name = ifnull(last_name, 0)
            or p.phone = ifnull(phone, 0);

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
        
        insert into deliverings(entity_id, order_status, from_address_id, to_address_id, from_id, to_id, cost, paid, pay_client_ref, fragile, dangerous, flamable, notes)
        values(id_entity, order_status, address_from, address_to, client_from, client_to, cost, paid, who_paid, fragile, dangerous, flamable, notes)  ;

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
									, client_id int8 
                                    , completed boolean
                                    , sent_date date
                                    , received date)
begin
	select distinct d.entity_id
    from deliverings as d
    inner join address as a1
		on d.from_address_id = a1.entity_id
	inner join address as a2
		on d.to_address_id = a2.entity_id
	inner join clients as cl1
		on d.from_id = cl1.entity_id
    inner join clients as cl2
		on d.to_id = cl2.entity_id 
	where ((a1.city = ifnull(city, 0) or a2.city = ifnull(city, 0))
			or (cl1.entity_id = ifnull(client_id, 0) or cl2.entity_id = ifnull(client_id, 0))
            or d.send_date = ifnull(sent_date, '1970-01-01') 
            or d.date_received = ifnull(received, '1970-01-01') 
            )             
            and d.completed = completed;
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

-- Dump completed on 2021-02-03  0:34:30
