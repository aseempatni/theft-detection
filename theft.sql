-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: theft
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `ccd`
--

DROP TABLE IF EXISTS `ccd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccd` (
  `comno` varchar(20) NOT NULL DEFAULT '',
  `allocationdate` date DEFAULT NULL,
  `ocrm_name` varchar(50) DEFAULT NULL,
  `workcompletiondate` date DEFAULT NULL,
  `com_status` varchar(30) DEFAULT NULL,
  `com_bu` int(11) DEFAULT NULL,
  `com_pc` int(11) DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `com_service_no` char(8) DEFAULT NULL,
  PRIMARY KEY (`comno`),
  KEY `com_service_no` (`com_service_no`),
  CONSTRAINT `ccd_ibfk_1` FOREIGN KEY (`com_service_no`) REFERENCES `cm` (`SRM_SERVICE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccd`
--

LOCK TABLES `ccd` WRITE;
/*!40000 ALTER TABLE `ccd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm`
--

DROP TABLE IF EXISTS `cm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm` (
  `SRM_SERVICE_NO` char(8) NOT NULL DEFAULT '',
  `SRM_BU_ID` char(4) DEFAULT NULL,
  `SRM_PC_ID` char(1) DEFAULT NULL,
  `SRM_TRANSFORMER_ID` char(7) DEFAULT NULL,
  `SRM_SACNCTION_LOAD` float DEFAULT NULL,
  `TFM_TARIFF_NAME` varchar(20) DEFAULT NULL,
  `SRM_POLE_ID` varchar(10) DEFAULT NULL,
  `MDBM_SERIAL_NO` char(6) DEFAULT NULL,
  `MDBM_MFG_CODE` int(11) DEFAULT NULL,
  `SRM_PHASE` int(11) DEFAULT NULL,
  `SRM_LOT_ID` char(4) DEFAULT NULL,
  `SRM_CONNECTION_DATE` date DEFAULT NULL,
  `SRM_PURPOSE_ID` int(11) DEFAULT NULL,
  `SRM_DISCON_TAG_ID` int(11) DEFAULT NULL,
  `SRM_SPANCO_DISCON_TAG` int(11) DEFAULT NULL,
  `SRM_GOVT_EMP_CATEGORY` int(11) DEFAULT NULL,
  `SRM_MSEDCL_NET_BILL_AMT` int(11) DEFAULT NULL,
  `SRM_PAY_DATE` date DEFAULT NULL,
  `SRM_ARREARS` float DEFAULT NULL,
  `SRM_BILL_AMOUNT` float DEFAULT NULL,
  PRIMARY KEY (`SRM_SERVICE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm`
--

LOCK TABLES `cm` WRITE;
/*!40000 ALTER TABLE `cm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_complaint_details`
--

DROP TABLE IF EXISTS `npc_complaint_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_complaint_details` (
  `FLM_SERVICENUMBER` char(8) DEFAULT NULL,
  `COMPNO` varchar(20) NOT NULL DEFAULT '',
  `COMP_REG_DATE` date DEFAULT NULL,
  `COMP_COLSE_DATE` date DEFAULT NULL,
  `FLM_COMPTYPE` char(1) DEFAULT NULL,
  `CMTM_NAME` varchar(30) DEFAULT NULL,
  `CWM_RNAME` varchar(50) DEFAULT NULL,
  `HOUR` int(11) DEFAULT NULL,
  PRIMARY KEY (`COMPNO`),
  KEY `FLM_SERVICENUMBER` (`FLM_SERVICENUMBER`),
  CONSTRAINT `npc_complaint_details_ibfk_1` FOREIGN KEY (`FLM_SERVICENUMBER`) REFERENCES `cm` (`SRM_SERVICE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_complaint_details`
--

LOCK TABLES `npc_complaint_details` WRITE;
/*!40000 ALTER TABLE `npc_complaint_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_complaint_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `apt_service_no` varchar(10) DEFAULT NULL,
  `apt_payment_date` date DEFAULT NULL,
  `apt_amt` int(11) DEFAULT NULL,
  `apt_receipt_no` varchar(7) NOT NULL DEFAULT '',
  `Apt_Machine_no` varchar(5) DEFAULT NULL,
  `apt_payment_type_id` int(11) DEFAULT NULL,
  `paymode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`apt_receipt_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vd`
--

DROP TABLE IF EXISTS `vd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vd` (
  `sr_no` int(11) NOT NULL DEFAULT '0',
  `consumer_id` char(8) DEFAULT NULL,
  `date_of_detection` date DEFAULT NULL,
  PRIMARY KEY (`sr_no`),
  KEY `consumer_id` (`consumer_id`),
  CONSTRAINT `vd_ibfk_1` FOREIGN KEY (`consumer_id`) REFERENCES `cm` (`SRM_SERVICE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vd`
--

LOCK TABLES `vd` WRITE;
/*!40000 ALTER TABLE `vd` DISABLE KEYS */;
/*!40000 ALTER TABLE `vd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-17 16:34:34
