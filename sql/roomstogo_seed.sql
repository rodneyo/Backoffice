CREATE DATABASE  IF NOT EXISTS `roomstogo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `roomstogo`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: roomstogo
-- ------------------------------------------------------
-- Server version	5.5.59-0ubuntu0.14.04.1-log

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
-- Table structure for table `banner creative xr`
--

DROP TABLE IF EXISTS `banner creative xr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner creative xr` (
  `Image Name` varchar(100) NOT NULL,
  `Grouping` varchar(50) DEFAULT 'Unknown',
  `Type` varchar(50) DEFAULT 'Unknown',
  `Promo Block` varchar(50) DEFAULT 'Unknown',
  `Test Block` varchar(50) DEFAULT 'Unknown',
  `Ad Type` varchar(50) DEFAULT 'Unknown',
  `Ad Format` varchar(50) DEFAULT 'Unknown',
  PRIMARY KEY (`Image Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `category rollup`
--

DROP TABLE IF EXISTS `category rollup`;
/*!50001 DROP VIEW IF EXISTS `category rollup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `category rollup` AS SELECT 
 1 AS `Engine`,
 1 AS `Website`,
 1 AS `Campaign`,
 1 AS `Ad Group`,
 1 AS `Dimension1`,
 1 AS `Dimension2`,
 1 AS `Tier`,
 1 AS `Impressions`,
 1 AS `Clicks`,
 1 AS `Cost`,
 1 AS `Conversions`,
 1 AS `Sales Amount`,
 1 AS `Avg Pos Counter`,
 1 AS `Fiscal Year`,
 1 AS `Fiscal Month`,
 1 AS `Fiscal Week`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `date format`
--

DROP TABLE IF EXISTS `date format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date format` (
  `Format Date` varchar(50) DEFAULT NULL,
  `Date` datetime NOT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  `FLAG` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dbm data pull`
--

DROP TABLE IF EXISTS `dbm data pull`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbm data pull` (
  `Advertiser` varchar(45) DEFAULT NULL,
  `Advertiser ID` int(11) DEFAULT NULL,
  `Advertiser Status` varchar(45) DEFAULT NULL,
  `Advertiser Integration Code` varchar(45) DEFAULT NULL,
  `Insertion Order` varchar(255) DEFAULT NULL,
  `Insertion Order ID` int(11) DEFAULT NULL,
  `Insertion Order Status` varchar(45) DEFAULT NULL,
  `Insertion Order Integration Code` varchar(45) DEFAULT NULL,
  `Line Item` varchar(255) DEFAULT NULL,
  `Line Item ID` int(11) DEFAULT NULL,
  `Line Item Status` varchar(45) DEFAULT NULL,
  `Line Item Integration Code` varchar(45) DEFAULT NULL,
  `Targeted Data Providers` varchar(45) DEFAULT NULL,
  `Creative` varchar(255) DEFAULT NULL,
  `Creative ID` int(11) DEFAULT NULL,
  `DCM Placement ID` int(11) DEFAULT NULL,
  `Creative Status` varchar(45) DEFAULT NULL,
  `Creative Source` varchar(45) DEFAULT NULL,
  `Creative Integration Code` varchar(45) DEFAULT NULL,
  `Site` varchar(255) DEFAULT NULL,
  `Site ID` int(11) DEFAULT NULL,
  `Site Excluded` varchar(45) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Channel ID` int(11) DEFAULT NULL,
  `Channel Type` varchar(45) DEFAULT NULL,
  `Ad Position` varchar(45) DEFAULT NULL,
  `Exchange` varchar(100) DEFAULT NULL,
  `Exchange ID` int(11) DEFAULT NULL,
  `Browser` varchar(45) DEFAULT NULL,
  `Operating System` varchar(45) DEFAULT NULL,
  `Inventory Source` varchar(255) DEFAULT NULL,
  `Inventory Source ID` varchar(100) DEFAULT NULL,
  `Device Type` varchar(45) DEFAULT NULL,
  `Advertiser Currency` varchar(45) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Total Conversions` double DEFAULT NULL,
  `Post-Click Conversions` double DEFAULT NULL,
  `Post-View Conversions` double DEFAULT NULL,
  `Revenue (Adv Currency)` double DEFAULT NULL,
  `Media Cost (Advertiser Currency)` double DEFAULT NULL,
  `Click Rate (CTR)` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dbm data pull - ad group`
--

DROP TABLE IF EXISTS `dbm data pull - ad group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbm data pull - ad group` (
  `Advertiser` varchar(255) DEFAULT NULL,
  `Advertiser ID` double DEFAULT NULL,
  `Advertiser Status` varchar(45) DEFAULT NULL,
  `Advertiser Integration Code` varchar(45) DEFAULT NULL,
  `Insertion Order` varchar(255) DEFAULT NULL,
  `Insertion Order ID` double DEFAULT NULL,
  `Insertion Order Status` varchar(45) DEFAULT NULL,
  `Insertion Order Integration Code` varchar(45) DEFAULT NULL,
  `Line Item` varchar(255) DEFAULT NULL,
  `Line Item ID` double DEFAULT NULL,
  `Line Item Status` varchar(45) DEFAULT NULL,
  `Line Item Integration Code` varchar(45) DEFAULT NULL,
  `Targeted Data Providers` varchar(100) DEFAULT NULL,
  `Creative` varchar(255) DEFAULT NULL,
  `Creative ID` double DEFAULT NULL,
  `DCM Placement ID` double DEFAULT NULL,
  `Creative Status` varchar(45) DEFAULT NULL,
  `Creative Source` varchar(45) DEFAULT NULL,
  `Creative Integration Code` varchar(45) DEFAULT NULL,
  `Conversion Pixel` varchar(255) DEFAULT NULL,
  `Conversion Pixel ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel DCM ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel Status` varchar(45) DEFAULT NULL,
  `Conversion Pixel Integration Code` varchar(45) DEFAULT NULL,
  `Creative Width` varchar(45) DEFAULT NULL,
  `Creative Height` varchar(45) DEFAULT NULL,
  `Ad Position` varchar(45) DEFAULT NULL,
  `Advertiser Currency` varchar(45) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Billable Impressions` double DEFAULT NULL,
  `Active View: Measurable Impressions` double DEFAULT NULL,
  `Active View: Viewable Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Total Conversions` double DEFAULT NULL,
  `Post-Click Conversions` double DEFAULT NULL,
  `Post-View Conversions` double DEFAULT NULL,
  `Media Cost (Advertiser Currency)` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dbm data pull - browser`
--

DROP TABLE IF EXISTS `dbm data pull - browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbm data pull - browser` (
  `Advertiser` varchar(255) DEFAULT NULL,
  `Advertiser ID` double DEFAULT NULL,
  `Advertiser Status` varchar(45) DEFAULT NULL,
  `Advertiser Integration Code` varchar(45) DEFAULT NULL,
  `Insertion Order` varchar(255) DEFAULT NULL,
  `Insertion Order ID` double DEFAULT NULL,
  `Insertion Order Status` varchar(45) DEFAULT NULL,
  `Insertion Order Integration Code` varchar(45) DEFAULT NULL,
  `Line Item` varchar(255) DEFAULT NULL,
  `Line Item ID` double DEFAULT NULL,
  `Line Item Status` varchar(45) DEFAULT NULL,
  `Line Item Integration Code` varchar(45) DEFAULT NULL,
  `Targeted Data Providers` varchar(100) DEFAULT NULL,
  `Conversion Pixel` varchar(255) DEFAULT NULL,
  `Conversion Pixel ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel DCM ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel Status` varchar(45) DEFAULT NULL,
  `Conversion Pixel Integration Code` varchar(45) DEFAULT NULL,
  `Browser` varchar(100) DEFAULT NULL,
  `Operating System` varchar(100) DEFAULT NULL,
  `Device Type` varchar(100) DEFAULT NULL,
  `Advertiser Currency` varchar(45) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Billable Impressions` double DEFAULT NULL,
  `Active View: Measurable Impressions` double DEFAULT NULL,
  `Active View: Viewable Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Total Conversions` double DEFAULT NULL,
  `Post-Click Conversions` double DEFAULT NULL,
  `Post-View Conversions` double DEFAULT NULL,
  `Media Cost (Advertiser Currency)` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dbm data pull - geo`
--

DROP TABLE IF EXISTS `dbm data pull - geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbm data pull - geo` (
  `Advertiser` varchar(255) DEFAULT NULL,
  `Advertiser ID` double DEFAULT NULL,
  `Advertiser Status` varchar(45) DEFAULT NULL,
  `Advertiser Integration Code` varchar(45) DEFAULT NULL,
  `Insertion Order` varchar(255) DEFAULT NULL,
  `Insertion Order ID` double DEFAULT NULL,
  `Insertion Order Status` varchar(45) DEFAULT NULL,
  `Insertion Order Integration Code` varchar(45) DEFAULT NULL,
  `Line Item` varchar(255) DEFAULT NULL,
  `Line Item ID` double DEFAULT NULL,
  `Line Item Status` varchar(45) DEFAULT NULL,
  `Line Item Integration Code` varchar(45) DEFAULT NULL,
  `Targeted Data Providers` varchar(100) DEFAULT NULL,
  `Conversion Pixel` varchar(255) DEFAULT NULL,
  `Conversion Pixel ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel DCM ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel Status` varchar(45) DEFAULT NULL,
  `Conversion Pixel Integration Code` varchar(45) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `Region ID` int(11) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `DMA Code` int(11) DEFAULT NULL,
  `DMA Name` varchar(255) DEFAULT NULL,
  `Advertiser Currency` varchar(45) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Billable Impressions` double DEFAULT NULL,
  `Active View: Measurable Impressions` double DEFAULT NULL,
  `Active View: Viewable Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Total Conversions` double DEFAULT NULL,
  `Post-Click Conversions` double DEFAULT NULL,
  `Post-View Conversions` double DEFAULT NULL,
  `Media Cost (Advertiser Currency)` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dbm data pull - site`
--

DROP TABLE IF EXISTS `dbm data pull - site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbm data pull - site` (
  `Advertiser` varchar(255) DEFAULT NULL,
  `Advertiser ID` double DEFAULT NULL,
  `Advertiser Status` varchar(45) DEFAULT NULL,
  `Advertiser Integration Code` varchar(45) DEFAULT NULL,
  `Insertion Order` varchar(255) DEFAULT NULL,
  `Insertion Order ID` double DEFAULT NULL,
  `Insertion Order Status` varchar(45) DEFAULT NULL,
  `Insertion Order Integration Code` varchar(45) DEFAULT NULL,
  `App/URL` varchar(255) DEFAULT NULL,
  `App/URL ID` int(11) DEFAULT NULL,
  `Conversion Pixel` varchar(255) DEFAULT NULL,
  `Conversion Pixel ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel DCM ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel Status` varchar(45) DEFAULT NULL,
  `Conversion Pixel Integration Code` varchar(45) DEFAULT NULL,
  `Exchange` varchar(100) DEFAULT NULL,
  `Exchange ID` varchar(45) DEFAULT NULL,
  `Inventory Source` varchar(100) DEFAULT NULL,
  `Inventory Source ID` varchar(45) DEFAULT NULL,
  `Advertiser Currency` varchar(45) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Billable Impressions` double DEFAULT NULL,
  `Active View: Measurable Impressions` double DEFAULT NULL,
  `Active View: Viewable Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Total Conversions` double DEFAULT NULL,
  `Post-Click Conversions` double DEFAULT NULL,
  `Post-View Conversions` double DEFAULT NULL,
  `Media Cost (Advertiser Currency)` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dbm data pull - time of day`
--

DROP TABLE IF EXISTS `dbm data pull - time of day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbm data pull - time of day` (
  `Advertiser` varchar(255) DEFAULT NULL,
  `Advertiser ID` double DEFAULT NULL,
  `Advertiser Status` varchar(45) DEFAULT NULL,
  `Advertiser Integration Code` varchar(45) DEFAULT NULL,
  `Insertion Order` varchar(255) DEFAULT NULL,
  `Insertion Order ID` double DEFAULT NULL,
  `Insertion Order Status` varchar(45) DEFAULT NULL,
  `Insertion Order Integration Code` varchar(45) DEFAULT NULL,
  `Line Item` varchar(255) DEFAULT NULL,
  `Line Item ID` double DEFAULT NULL,
  `Line Item Status` varchar(45) DEFAULT NULL,
  `Line Item Integration Code` varchar(45) DEFAULT NULL,
  `Targeted Data Providers` varchar(100) DEFAULT NULL,
  `Conversion Pixel` varchar(255) DEFAULT NULL,
  `Conversion Pixel ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel DCM ID` varchar(45) DEFAULT NULL,
  `Conversion Pixel Status` varchar(45) DEFAULT NULL,
  `Conversion Pixel Integration Code` varchar(45) DEFAULT NULL,
  `Time Of Day` varchar(45) DEFAULT NULL,
  `Day Of Week` varchar(45) DEFAULT NULL,
  `Advertiser Currency` varchar(45) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Billable Impressions` double DEFAULT NULL,
  `Active View: Measurable Impressions` double DEFAULT NULL,
  `Active View: Viewable Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Total Conversions` double DEFAULT NULL,
  `Post-Click Conversions` double DEFAULT NULL,
  `Post-View Conversions` double DEFAULT NULL,
  `Media Cost (Advertiser Currency)` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dimensions`
--

DROP TABLE IF EXISTS `dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimensions` (
  `Website` varchar(45) NOT NULL,
  `Campaign` varchar(255) NOT NULL DEFAULT '',
  `Ad Group` varchar(255) NOT NULL DEFAULT '',
  `Dimension1` varchar(255) DEFAULT NULL,
  `Dimension2` varchar(255) DEFAULT NULL,
  `Tier` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Website`,`Campaign`,`Ad Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dimensions_122615`
--

DROP TABLE IF EXISTS `dimensions_122615`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimensions_122615` (
  `Website` varchar(45) NOT NULL,
  `Campaign` varchar(255) NOT NULL DEFAULT '',
  `Ad Group` varchar(255) NOT NULL DEFAULT '',
  `Dimension1` varchar(255) DEFAULT NULL,
  `Dimension2` varchar(255) DEFAULT NULL,
  `Tier` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Website`,`Campaign`,`Ad Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final device`
--

DROP TABLE IF EXISTS `final device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final device` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Channel` varchar(45) NOT NULL DEFAULT '',
  `Website` varchar(45) NOT NULL,
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL DEFAULT '',
  `Device` varchar(45) NOT NULL DEFAULT '',
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Orders` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Channel`,`Campaign`,`Ad Group`,`Device`,`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final mobile`
--

DROP TABLE IF EXISTS `final mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final mobile` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Channel` varchar(45) NOT NULL DEFAULT '',
  `Device` varchar(45) NOT NULL DEFAULT '',
  `Category` varchar(45) NOT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Pos Counter` double DEFAULT NULL,
  `Order` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Online_Order` double DEFAULT NULL,
  `Online_Sale` double DEFAULT NULL,
  `Store_Order` double DEFAULT NULL,
  `Store_Sale` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Channel`,`Device`,`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `final query: previous year`
--

DROP TABLE IF EXISTS `final query: previous year`;
/*!50001 DROP VIEW IF EXISTS `final query: previous year`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `final query: previous year` AS SELECT 
 1 AS `Website`,
 1 AS `Engine`,
 1 AS `Fiscal Week`,
 1 AS `PY Impressions`,
 1 AS `PY Clicks`,
 1 AS `PY Cost`,
 1 AS `PY Conversions`,
 1 AS `PY Sales`,
 1 AS `PY Avg Pos Counter`,
 1 AS `CY Impressions`,
 1 AS `CY Clicks`,
 1 AS `CY Cost`,
 1 AS `CY Conversion`,
 1 AS `CY Sales`,
 1 AS `CY Avg Pos Counter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `final query: rtg pla compare adults`
--

DROP TABLE IF EXISTS `final query: rtg pla compare adults`;
/*!50001 DROP VIEW IF EXISTS `final query: rtg pla compare adults`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `final query: rtg pla compare adults` AS SELECT 
 1 AS `Account`,
 1 AS `Search term`,
 1 AS `Impressions`,
 1 AS `Clicks`,
 1 AS `Cost`,
 1 AS `Impressions2`,
 1 AS `Clicks2`,
 1 AS `Cost2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `final query: rtg pla compare kids`
--

DROP TABLE IF EXISTS `final query: rtg pla compare kids`;
/*!50001 DROP VIEW IF EXISTS `final query: rtg pla compare kids`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `final query: rtg pla compare kids` AS SELECT 
 1 AS `Account`,
 1 AS `Search term`,
 1 AS `Impressions`,
 1 AS `Clicks`,
 1 AS `Cost`,
 1 AS `Impressions2`,
 1 AS `Clicks2`,
 1 AS `Cost2`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `final table`
--

DROP TABLE IF EXISTS `final table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  `Click Conversions` double DEFAULT NULL,
  `Click Sales` double DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table dfa`
--

DROP TABLE IF EXISTS `final table dfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table dfa` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Site` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(255) NOT NULL,
  `Device` varchar(45) NOT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Media Cost` double DEFAULT NULL,
  `Measurable Impressions` double DEFAULT NULL,
  `Viewable Impressions` double DEFAULT NULL,
  `Measurable Player Size Small` double DEFAULT NULL,
  `Measurable Player Size Medium` double DEFAULT NULL,
  `Measurable Player Size Large` double DEFAULT NULL,
  `Measurable Player Size Unknown` double DEFAULT NULL,
  `Adults_ProductPage_Click` double DEFAULT NULL,
  `Adults_ProductPage_View` double DEFAULT NULL,
  `Adults_PurchaseIntent_Click` double DEFAULT NULL,
  `Adults_PurchaseIntent_View` double DEFAULT NULL,
  `Kids_ProductPage_Click` double DEFAULT NULL,
  `Kids_ProductPage_View` double DEFAULT NULL,
  `Kids_PurchaseIntent_Click` double DEFAULT NULL,
  `Kids_PurchaseIntent_View` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Site`,`Campaign`,`Placement`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table dfa (old)`
--

DROP TABLE IF EXISTS `final table dfa (old)`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table dfa (old)` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Site` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(100) NOT NULL,
  `Device` varchar(45) NOT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Media Cost` double DEFAULT NULL,
  `Measurable Impressions` double DEFAULT NULL,
  `Viewable Impressions` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Site`,`Campaign`,`Placement`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table dfa geo`
--

DROP TABLE IF EXISTS `final table dfa geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table dfa geo` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Advertiser` varchar(45) NOT NULL,
  `Site` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(100) NOT NULL,
  `DMA` varchar(255) NOT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Media Cost` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Advertiser`,`Site`,`Campaign`,`Placement`,`DMA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table ga`
--

DROP TABLE IF EXISTS `final table ga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table ga` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(100) NOT NULL,
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Data Type` varchar(45) NOT NULL,
  `Sessions` int(11) DEFAULT NULL,
  `New Users` int(11) DEFAULT NULL,
  `New Users Non Bounce` int(11) DEFAULT NULL,
  `Bounces` int(11) DEFAULT NULL,
  `Pageviews` int(11) DEFAULT NULL,
  PRIMARY KEY (`Date`,`Keyword`,`Campaign`,`Placement`,`Device`,`Data Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table ga 040316`
--

DROP TABLE IF EXISTS `final table ga 040316`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table ga 040316` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(100) NOT NULL,
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Sessions` int(11) DEFAULT NULL,
  `New Users` int(11) DEFAULT NULL,
  `Bounces` int(11) DEFAULT NULL,
  `Pageviews` int(11) DEFAULT NULL,
  PRIMARY KEY (`Date`,`Keyword`,`Campaign`,`Placement`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `final table ga click`
--

DROP TABLE IF EXISTS `final table ga click`;
/*!50001 DROP VIEW IF EXISTS `final table ga click`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `final table ga click` AS SELECT 
 1 AS `Date`,
 1 AS `Keyword`,
 1 AS `Campaign`,
 1 AS `Placement`,
 1 AS `Device`,
 1 AS `Data Type`,
 1 AS `Sessions`,
 1 AS `New Users`,
 1 AS `New Users Non Bounce`,
 1 AS `Bounces`,
 1 AS `Pageviews`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `final table ga cse`
--

DROP TABLE IF EXISTS `final table ga cse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table ga cse` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Website` varchar(45) NOT NULL,
  `Source` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL,
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Source`,`Campaign`,`Ad Group`,`Device`,`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table ga cse combine`
--

DROP TABLE IF EXISTS `final table ga cse combine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table ga cse combine` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Website` varchar(45) NOT NULL,
  `Source` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL DEFAULT '',
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Source`,`Campaign`,`Ad Group`,`Device`,`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table ga facebook`
--

DROP TABLE IF EXISTS `final table ga facebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table ga facebook` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Engine` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL DEFAULT '',
  `Sessions` int(11) DEFAULT NULL,
  `New Users` int(11) DEFAULT NULL,
  `New Users Non Bounce` int(11) DEFAULT NULL,
  `Bounces` int(11) DEFAULT NULL,
  `Pageviews` int(11) DEFAULT NULL,
  PRIMARY KEY (`Date`,`Engine`,`Campaign`,`Ad Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table ga facebook 040316`
--

DROP TABLE IF EXISTS `final table ga facebook 040316`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table ga facebook 040316` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Engine` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL DEFAULT '',
  `Sessions` int(11) DEFAULT NULL,
  `New Users` int(11) DEFAULT NULL,
  `Bounces` int(11) DEFAULT NULL,
  `Pageviews` int(11) DEFAULT NULL,
  PRIMARY KEY (`Date`,`Engine`,`Campaign`,`Ad Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table ga paid search`
--

DROP TABLE IF EXISTS `final table ga paid search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table ga paid search` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Source` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL,
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Source`,`Campaign`,`Ad Group`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table ga paid search combine`
--

DROP TABLE IF EXISTS `final table ga paid search combine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table ga paid search combine` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Website` varchar(45) NOT NULL,
  `Source` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL DEFAULT '',
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Source`,`Campaign`,`Ad Group`,`Device`,`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `final table ga view`
--

DROP TABLE IF EXISTS `final table ga view`;
/*!50001 DROP VIEW IF EXISTS `final table ga view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `final table ga view` AS SELECT 
 1 AS `Date`,
 1 AS `Keyword`,
 1 AS `Campaign`,
 1 AS `Placement`,
 1 AS `Device`,
 1 AS `Data Type`,
 1 AS `Sessions`,
 1 AS `New Users`,
 1 AS `New Users Non Bounce`,
 1 AS `Bounces`,
 1 AS `Pageviews`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `final table old`
--

DROP TABLE IF EXISTS `final table old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table old` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(50) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table pla`
--

DROP TABLE IF EXISTS `final table pla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table pla` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Product ID` varchar(25) NOT NULL DEFAULT '',
  `Title` varchar(100) NOT NULL DEFAULT '',
  `Brand` varchar(100) NOT NULL DEFAULT '',
  `Channel` varchar(25) NOT NULL DEFAULT '',
  `Campaign Name` varchar(100) NOT NULL DEFAULT '',
  `Ad Group Name` varchar(100) NOT NULL DEFAULT '',
  `Clicks` int(11) DEFAULT NULL,
  `Conversions` int(11) DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Estimate Cost` double DEFAULT NULL,
  `Fiscal Year` varchar(25) DEFAULT NULL,
  `Fiscal Month` varchar(25) DEFAULT NULL,
  `Fiscal Week` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Date`,`Product ID`,`Title`,`Brand`,`Channel`,`Campaign Name`,`Ad Group Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table rodney`
--

DROP TABLE IF EXISTS `final table rodney`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table rodney` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(50) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`),
  KEY `keyword_matchtype_idx` (`Keyword`,`Match Type`),
  KEY `adgroup_keyword_matchtype_idx` (`Ad Group`,`Keyword`,`Match Type`),
  KEY `date_idx` (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table viewability`
--

DROP TABLE IF EXISTS `final table viewability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table viewability` (
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Publisher` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(100) NOT NULL DEFAULT '',
  `Channel` varchar(100) NOT NULL DEFAULT '',
  `Video` varchar(100) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Impressions` double DEFAULT NULL,
  `ClickThroughs` double DEFAULT NULL,
  `Measurable Impressions` double DEFAULT NULL,
  `Viewable (IAB) Impressions` double DEFAULT NULL,
  `Viewable Completions` double DEFAULT NULL,
  `Above The Fold Impressions` double DEFAULT NULL,
  `Measurable Player Size Small` double DEFAULT NULL,
  `Measurable Player Size Medium` double DEFAULT NULL,
  `Measurable Player Size Large` double DEFAULT NULL,
  `Measurable Player Size Unknown` double DEFAULT NULL,
  PRIMARY KEY (`Video`,`Channel`,`Placement`,`Campaign`,`Publisher`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2012`
--

DROP TABLE IF EXISTS `final_table_2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2012` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(50) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2013`
--

DROP TABLE IF EXISTS `final_table_2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2013` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2014`
--

DROP TABLE IF EXISTS `final_table_2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2014` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  `Click Conversions` double DEFAULT NULL,
  `Click Sales` double DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2015`
--

DROP TABLE IF EXISTS `final_table_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2015` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  `Click Conversions` double DEFAULT NULL,
  `Click Sales` double DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2015_dfa`
--

DROP TABLE IF EXISTS `final_table_2015_dfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2015_dfa` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Site` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(100) NOT NULL,
  `Device` varchar(45) NOT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Media Cost` double DEFAULT NULL,
  `Measurable Impressions` double DEFAULT NULL,
  `Viewable Impressions` double DEFAULT NULL,
  `Measurable Player Size Small` double DEFAULT NULL,
  `Measurable Player Size Medium` double DEFAULT NULL,
  `Measurable Player Size Large` double DEFAULT NULL,
  `Measurable Player Size Unknown` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Site`,`Campaign`,`Placement`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2016`
--

DROP TABLE IF EXISTS `final_table_2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2016` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  `Click Conversions` double DEFAULT NULL,
  `Click Sales` double DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2016_dfa`
--

DROP TABLE IF EXISTS `final_table_2016_dfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2016_dfa` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Site` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(100) NOT NULL,
  `Device` varchar(45) NOT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Media Cost` double DEFAULT NULL,
  `Measurable Impressions` double DEFAULT NULL,
  `Viewable Impressions` double DEFAULT NULL,
  `Measurable Player Size Small` double DEFAULT NULL,
  `Measurable Player Size Medium` double DEFAULT NULL,
  `Measurable Player Size Large` double DEFAULT NULL,
  `Measurable Player Size Unknown` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Site`,`Campaign`,`Placement`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2016_ga`
--

DROP TABLE IF EXISTS `final_table_2016_ga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2016_ga` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Placement` varchar(100) NOT NULL,
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Data Type` varchar(45) NOT NULL,
  `Sessions` int(11) DEFAULT NULL,
  `New Users` int(11) DEFAULT NULL,
  `New Users Non Bounce` int(11) DEFAULT NULL,
  `Bounces` int(11) DEFAULT NULL,
  `Pageviews` int(11) DEFAULT NULL,
  PRIMARY KEY (`Date`,`Keyword`,`Campaign`,`Placement`,`Device`,`Data Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2016_ga_cse`
--

DROP TABLE IF EXISTS `final_table_2016_ga_cse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2016_ga_cse` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Website` varchar(45) NOT NULL,
  `Source` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL,
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Source`,`Campaign`,`Ad Group`,`Device`,`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2016_ga_facebook`
--

DROP TABLE IF EXISTS `final_table_2016_ga_facebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2016_ga_facebook` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Engine` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL DEFAULT '',
  `Sessions` int(11) DEFAULT NULL,
  `New Users` int(11) DEFAULT NULL,
  `New Users Non Bounce` int(11) DEFAULT NULL,
  `Bounces` int(11) DEFAULT NULL,
  `Pageviews` int(11) DEFAULT NULL,
  PRIMARY KEY (`Date`,`Engine`,`Campaign`,`Ad Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2016_ga_paid_search`
--

DROP TABLE IF EXISTS `final_table_2016_ga_paid_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2016_ga_paid_search` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Source` varchar(100) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL,
  `Device` varchar(10) NOT NULL DEFAULT '',
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Source`,`Campaign`,`Ad Group`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2017`
--

DROP TABLE IF EXISTS `final_table_2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2017` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(100) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  `Click Conversions` double DEFAULT NULL,
  `Click Sales` double DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`,`Keyword`,`Match Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `geo_location_xr`
--

DROP TABLE IF EXISTS `geo_location_xr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_location_xr` (
  `DMA` varchar(255) NOT NULL,
  `Metro` varchar(255) DEFAULT NULL,
  `Grouping` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DMA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `geography costs`
--

DROP TABLE IF EXISTS `geography costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geography costs` (
  `Engine` varchar(50) NOT NULL DEFAULT '',
  `Keyword Type` varchar(10) NOT NULL,
  `Cost Center` varchar(100) NOT NULL DEFAULT '',
  `State` varchar(10) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Quotes` double DEFAULT NULL,
  `Solds` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(50) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Cost Center`,`State`,`Date`,`Keyword Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `impression_share`
--

DROP TABLE IF EXISTS `impression_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impression_share` (
  `Account` varchar(100) NOT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Ad group` varchar(100) DEFAULT NULL,
  `Match type` varchar(45) DEFAULT NULL,
  `Customer ID` varchar(45) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Max CPC` double DEFAULT NULL,
  `Search Impr share` varchar(45) DEFAULT NULL,
  `Search Exact match IS` varchar(45) DEFAULT NULL,
  `Search Lost IS Rank` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monthly data pull - google geo`
--

DROP TABLE IF EXISTS `monthly data pull - google geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly data pull - google geo` (
  `Account` varchar(50) DEFAULT '',
  `Device` varchar(45) DEFAULT NULL,
  `Network` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Metro` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT '',
  `Ad Group` varchar(100) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monthly data pull - pla compare`
--

DROP TABLE IF EXISTS `monthly data pull - pla compare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly data pull - pla compare` (
  `Search Term` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monthly device type - bing`
--

DROP TABLE IF EXISTS `monthly device type - bing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly device type - bing` (
  `Gregorian date` varchar(25) DEFAULT NULL,
  `Account name` varchar(45) DEFAULT NULL,
  `Campaign name` varchar(100) DEFAULT NULL,
  `Device type` varchar(45) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `CTR` double DEFAULT NULL,
  `Average CPC` double DEFAULT NULL,
  `Spend` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monthly device type - conversions`
--

DROP TABLE IF EXISTS `monthly device type - conversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly device type - conversions` (
  `Currency` varchar(3) DEFAULT NULL,
  `Profile Name` varchar(25) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Channel` varchar(15) DEFAULT NULL,
  `Device Type` varchar(10) DEFAULT NULL,
  `Dimension` varchar(10) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Conversions` int(11) DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monthly device type - final`
--

DROP TABLE IF EXISTS `monthly device type - final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly device type - final` (
  `Date` datetime DEFAULT NULL,
  `Engine` varchar(25) DEFAULT NULL,
  `Website` varchar(45) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Device` varchar(25) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Orders` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Fiscal Year` varchar(25) DEFAULT NULL,
  `Fiscal Month` varchar(25) DEFAULT NULL,
  `Fiscal Week` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monthly device type - google`
--

DROP TABLE IF EXISTS `monthly device type - google`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly device type - google` (
  `Account` varchar(45) DEFAULT NULL,
  `Day` datetime DEFAULT NULL,
  `Device` varchar(45) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` varchar(15) DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `path to conversion final`
--

DROP TABLE IF EXISTS `path to conversion final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `path to conversion final` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Time Zone` varchar(255) DEFAULT NULL,
  `Conv Time` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Match Type` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Profile` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group` varchar(255) DEFAULT NULL,
  `Ad Headline` varchar(255) DEFAULT NULL,
  `Search Term` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Domain` varchar(255) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Num Channels` double DEFAULT NULL,
  `Rev` double DEFAULT NULL,
  `Order ID` varchar(255) DEFAULT NULL,
  `Promo Code` varchar(255) DEFAULT NULL,
  `Conv Id` int(11) DEFAULT NULL,
  `Weight` double DEFAULT NULL,
  `Variant` varchar(100) DEFAULT NULL,
  `Grouping` varchar(100) DEFAULT NULL,
  `Keyword Type` varchar(100) DEFAULT NULL,
  `Flag` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1648130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `path to conversion original`
--

DROP TABLE IF EXISTS `path to conversion original`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `path to conversion original` (
  `Time Zone` varchar(255) DEFAULT NULL,
  `Conv Time` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Match Type` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Profile` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group` varchar(255) DEFAULT NULL,
  `Ad Headline` varchar(255) DEFAULT NULL,
  `Search Term` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Domain` varchar(255) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Num Channels` double DEFAULT NULL,
  `Rev` double DEFAULT NULL,
  `Order ID` varchar(255) DEFAULT NULL,
  `Promo Code` varchar(255) DEFAULT NULL,
  `Conv Id` int(11) DEFAULT NULL,
  `Weight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `performance report`
--

DROP TABLE IF EXISTS `performance report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance report` (
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Fiscal Year` varchar(50) NOT NULL DEFAULT '',
  `Fiscal Month` varchar(255) NOT NULL DEFAULT '',
  `Fiscal Week` varchar(50) NOT NULL DEFAULT '',
  `Channel` varchar(45) NOT NULL DEFAULT '',
  `Website` varchar(45) NOT NULL DEFAULT '',
  `Campaign` varchar(100) NOT NULL DEFAULT '',
  `Ad Group` varchar(100) NOT NULL DEFAULT '',
  `Device` varchar(45) NOT NULL DEFAULT '',
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Fiscal Year`,`Fiscal Month`,`Fiscal Week`,`Channel`,`Website`,`Campaign`,`Ad Group`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pla compare keyword volume`
--

DROP TABLE IF EXISTS `pla compare keyword volume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pla compare keyword volume` (
  `match type` varchar(15) DEFAULT NULL,
  `network` varchar(45) DEFAULT NULL,
  `device` varchar(45) DEFAULT NULL,
  `keyword state` varchar(45) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `campaign` varchar(100) DEFAULT NULL,
  `ad group` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `max cpc` double DEFAULT NULL,
  `impressions` double DEFAULT NULL,
  `clicks` double DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `avg position` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `pla compare keyword volume rollup`
--

DROP TABLE IF EXISTS `pla compare keyword volume rollup`;
/*!50001 DROP VIEW IF EXISTS `pla compare keyword volume rollup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pla compare keyword volume rollup` AS SELECT 
 1 AS `keyword`,
 1 AS `Impressions`,
 1 AS `Clicks`,
 1 AS `Cost`,
 1 AS `Avg Pos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pla compare search terms`
--

DROP TABLE IF EXISTS `pla compare search terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pla compare search terms` (
  `search term` varchar(100) DEFAULT NULL,
  `impressions` double DEFAULT NULL,
  `clicks` double DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `avg position` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `pla data query rollup`
--

DROP TABLE IF EXISTS `pla data query rollup`;
/*!50001 DROP VIEW IF EXISTS `pla data query rollup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pla data query rollup` AS SELECT 
 1 AS `Account`,
 1 AS `Search term`,
 1 AS `Impressions`,
 1 AS `Clicks`,
 1 AS `Cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `placementID_XR`
--

DROP TABLE IF EXISTS `placementID_XR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placementID_XR` (
  `Placement ID` double NOT NULL,
  `Placement Name` varchar(255) DEFAULT NULL,
  `Site` varchar(45) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Placement ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `previous year - 2012`
--

DROP TABLE IF EXISTS `previous year - 2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous year - 2012` (
  `Engine` varchar(50) NOT NULL DEFAULT '',
  `Fiscal Week` varchar(50) NOT NULL DEFAULT '',
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Fiscal Week`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `previous year - 2013`
--

DROP TABLE IF EXISTS `previous year - 2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous year - 2013` (
  `Website` varchar(10) NOT NULL DEFAULT '',
  `Engine` varchar(50) NOT NULL DEFAULT '',
  `Fiscal Week` varchar(50) NOT NULL DEFAULT '',
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Fiscal Week`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `previous year - 2014`
--

DROP TABLE IF EXISTS `previous year - 2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous year - 2014` (
  `Website` varchar(10) NOT NULL DEFAULT '',
  `Engine` varchar(50) NOT NULL DEFAULT '',
  `Fiscal Week` varchar(50) NOT NULL DEFAULT '',
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Fiscal Week`,`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `previous year - 2015`
--

DROP TABLE IF EXISTS `previous year - 2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous year - 2015` (
  `Website` varchar(10) NOT NULL DEFAULT '',
  `Engine` varchar(50) NOT NULL DEFAULT '',
  `Fiscal Week` varchar(50) NOT NULL DEFAULT '',
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Fiscal Week`,`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `ptc final`
--

DROP TABLE IF EXISTS `ptc final`;
/*!50001 DROP VIEW IF EXISTS `ptc final`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ptc final` AS SELECT 
 1 AS `First Click`,
 1 AS `Conversion Click`,
 1 AS `Date`,
 1 AS `Month`,
 1 AS `Type`,
 1 AS `Rev`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ptc first click`
--

DROP TABLE IF EXISTS `ptc first click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc first click` (
  `Conv ID` int(11) NOT NULL,
  `Conv Keyword` varchar(25) NOT NULL,
  PRIMARY KEY (`Conv ID`,`Conv Keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `ptc first click old`
--

DROP TABLE IF EXISTS `ptc first click old`;
/*!50001 DROP VIEW IF EXISTS `ptc first click old`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ptc first click old` AS SELECT 
 1 AS `Conv Id`,
 1 AS `Conv Keyword`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ptc last click`
--

DROP TABLE IF EXISTS `ptc last click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc last click` (
  `Conv ID` int(11) NOT NULL,
  `Conv Keyword` varchar(25) NOT NULL,
  PRIMARY KEY (`Conv ID`,`Conv Keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `ptc last click old`
--

DROP TABLE IF EXISTS `ptc last click old`;
/*!50001 DROP VIEW IF EXISTS `ptc last click old`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ptc last click old` AS SELECT 
 1 AS `Conv Id`,
 1 AS `Conv Keyword`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ptc order rollup`
--

DROP TABLE IF EXISTS `ptc order rollup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc order rollup` (
  `Order ID` varchar(45) NOT NULL,
  `Conv ID` int(11) NOT NULL,
  `Conv Time` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Rev` double NOT NULL,
  PRIMARY KEY (`Order ID`,`Conv ID`,`Conv Time`,`Type`,`Rev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `ptc order rollup old`
--

DROP TABLE IF EXISTS `ptc order rollup old`;
/*!50001 DROP VIEW IF EXISTS `ptc order rollup old`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ptc order rollup old` AS SELECT 
 1 AS `Order ID`,
 1 AS `Conv Id`,
 1 AS `Conv Time`,
 1 AS `Type`,
 1 AS `Rev`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ptc_first_min`
--

DROP TABLE IF EXISTS `ptc_first_min`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_first_min` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ptc_last_max`
--

DROP TABLE IF EXISTS `ptc_last_max`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_last_max` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ptcfinal2`
--

DROP TABLE IF EXISTS `ptcfinal2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptcfinal2` (
  `First Click` varchar(25) DEFAULT NULL,
  `Conversion Click` varchar(25) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Month` varchar(15) DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report export: ad group`
--

DROP TABLE IF EXISTS `report export: ad group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report export: ad group` (
  `Website` varchar(50) NOT NULL DEFAULT '',
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  `Region` varchar(45) DEFAULT NULL,
  `Keyword Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Website`,`Engine`,`Date`,`Campaign`,`Ad Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `report output: ad group`
--

DROP TABLE IF EXISTS `report output: ad group`;
/*!50001 DROP VIEW IF EXISTS `report output: ad group`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `report output: ad group` AS SELECT 
 1 AS `Website`,
 1 AS `Engine`,
 1 AS `Date`,
 1 AS `Campaign`,
 1 AS `Ad Group`,
 1 AS `Impressions`,
 1 AS `Clicks`,
 1 AS `Cost`,
 1 AS `Conversions`,
 1 AS `Sales`,
 1 AS `Avg Pos Counter`,
 1 AS `Fiscal Year`,
 1 AS `Fiscal Month`,
 1 AS `Fiscal Week`,
 1 AS `Region`,
 1 AS `Keyword Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report output: engine`
--

DROP TABLE IF EXISTS `report output: engine`;
/*!50001 DROP VIEW IF EXISTS `report output: engine`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `report output: engine` AS SELECT 
 1 AS `Month`,
 1 AS `Date`,
 1 AS `Engine`,
 1 AS `Website`,
 1 AS `Cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report output: keywords`
--

DROP TABLE IF EXISTS `report output: keywords`;
/*!50001 DROP VIEW IF EXISTS `report output: keywords`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `report output: keywords` AS SELECT 
 1 AS `Website`,
 1 AS `Engine`,
 1 AS `Date`,
 1 AS `Campaign`,
 1 AS `Ad Group`,
 1 AS `Keyword`,
 1 AS `Match Type`,
 1 AS `Impressions`,
 1 AS `Clicks`,
 1 AS `Cost`,
 1 AS `Conversions`,
 1 AS `Sales Amount`,
 1 AS `Avg Pos Counter`,
 1 AS `Fiscal Year`,
 1 AS `Fiscal Month`,
 1 AS `Fiscal Week`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report output: top keyword identify`
--

DROP TABLE IF EXISTS `report output: top keyword identify`;
/*!50001 DROP VIEW IF EXISTS `report output: top keyword identify`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `report output: top keyword identify` AS SELECT 
 1 AS `Keyword`,
 1 AS `Match Type`,
 1 AS `SumOfCost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reports_tempdb_adults`
--

DROP TABLE IF EXISTS `reports_tempdb_adults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_tempdb_adults` (
  `Date` datetime NOT NULL,
  `Fiscal Year` varchar(45) NOT NULL,
  `Fiscal Month` varchar(45) NOT NULL,
  `Fiscal Week` varchar(45) NOT NULL,
  `Channel` varchar(45) NOT NULL,
  `Website` varchar(45) NOT NULL,
  `Campaign` varchar(100) NOT NULL,
  `Ad Group` varchar(100) NOT NULL,
  `Device` varchar(45) NOT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Fiscal Year`,`Fiscal Month`,`Fiscal Week`,`Channel`,`Website`,`Campaign`,`Ad Group`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reports_tempdb_kids`
--

DROP TABLE IF EXISTS `reports_tempdb_kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_tempdb_kids` (
  `Date` datetime NOT NULL,
  `Fiscal Year` varchar(45) NOT NULL,
  `Fiscal Month` varchar(45) NOT NULL,
  `Fiscal Week` varchar(45) NOT NULL,
  `Channel` varchar(45) NOT NULL,
  `Website` varchar(45) NOT NULL,
  `Campaign` varchar(100) NOT NULL,
  `Ad Group` varchar(100) NOT NULL,
  `Device` varchar(45) NOT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `New Users Non Bounce` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL,
  PRIMARY KEY (`Date`,`Fiscal Year`,`Fiscal Month`,`Fiscal Week`,`Channel`,`Website`,`Campaign`,`Ad Group`,`Device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `search data query rollup`
--

DROP TABLE IF EXISTS `search data query rollup`;
/*!50001 DROP VIEW IF EXISTS `search data query rollup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `search data query rollup` AS SELECT 
 1 AS `Account`,
 1 AS `Search term`,
 1 AS `Impressions`,
 1 AS `Clicks`,
 1 AS `Cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ttd data pull - adgroup performance report`
--

DROP TABLE IF EXISTS `ttd data pull - adgroup performance report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - adgroup performance report` (
  `Date` datetime DEFAULT NULL,
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Ad Format` varchar(10) DEFAULT NULL,
  `Creative Id` varchar(10) DEFAULT NULL,
  `Frequency` double DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Creative Name` varchar(100) DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `AdServer Name` varchar(100) DEFAULT NULL,
  `AdServer Creative Placement Id` varchar(20) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - adgroup performance report kids`
--

DROP TABLE IF EXISTS `ttd data pull - adgroup performance report kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - adgroup performance report kids` (
  `Date` datetime DEFAULT NULL,
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Ad Format` varchar(10) DEFAULT NULL,
  `Creative Id` varchar(10) DEFAULT NULL,
  `Frequency` double DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Creative Name` varchar(100) DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `AdServer Name` varchar(100) DEFAULT NULL,
  `AdServer Creative Placement Id` varchar(20) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - browser report`
--

DROP TABLE IF EXISTS `ttd data pull - browser report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - browser report` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Device Type` varchar(50) DEFAULT NULL,
  `OS Family` varchar(50) DEFAULT NULL,
  `OS` varchar(50) DEFAULT NULL,
  `Browser` varchar(50) DEFAULT NULL,
  `Ad Format` varchar(20) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `Matched Language` varchar(50) DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - browser report kids`
--

DROP TABLE IF EXISTS `ttd data pull - browser report kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - browser report kids` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Device Type` varchar(50) DEFAULT NULL,
  `OS Family` varchar(50) DEFAULT NULL,
  `OS` varchar(50) DEFAULT NULL,
  `Browser` varchar(50) DEFAULT NULL,
  `Ad Format` varchar(20) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `Matched Language` varchar(50) DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - data element report`
--

DROP TABLE IF EXISTS `ttd data pull - data element report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - data element report` (
  `Date` datetime DEFAULT NULL,
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Data Element Id` varchar(10) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Data Name` varchar(100) DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Third Party Data Brand Name` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - data element report kids`
--

DROP TABLE IF EXISTS `ttd data pull - data element report kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - data element report kids` (
  `Date` datetime DEFAULT NULL,
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Data Element Id` varchar(10) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Data Name` varchar(100) DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Third Party Data Brand Name` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - geo report`
--

DROP TABLE IF EXISTS `ttd data pull - geo report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - geo report` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `Metropolitan Area` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - geo report kids`
--

DROP TABLE IF EXISTS `ttd data pull - geo report kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - geo report kids` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `Metropolitan Area` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - recency report`
--

DROP TABLE IF EXISTS `ttd data pull - recency report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - recency report` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Audience Id` varchar(10) DEFAULT NULL,
  `Recency Bucket Start In Minutes` double DEFAULT NULL,
  `RecencyBucketEndInMinutes` double DEFAULT NULL,
  `Advertiser Name` varchar(50) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Audience Name` varchar(100) DEFAULT NULL,
  `Recency Bucket Name` varchar(100) DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - recency report kids`
--

DROP TABLE IF EXISTS `ttd data pull - recency report kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - recency report kids` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Audience Id` varchar(10) DEFAULT NULL,
  `Recency Bucket Start In Minutes` double DEFAULT NULL,
  `RecencyBucketEndInMinutes` double DEFAULT NULL,
  `Advertiser Name` varchar(50) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Audience Name` varchar(100) DEFAULT NULL,
  `Recency Bucket Name` varchar(100) DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - site list report`
--

DROP TABLE IF EXISTS `ttd data pull - site list report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - site list report` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Matched Site Strategy Line Id` varchar(10) DEFAULT NULL,
  `Matched Fold Strategy Line Id` varchar(10) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Site Placement Adjustment Line Name` varchar(100) DEFAULT NULL,
  `Site` varchar(100) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Site Adjustment` double DEFAULT NULL,
  `Fold` varchar(100) DEFAULT NULL,
  `Fold Adjustment` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `Category Id` varchar(20) DEFAULT NULL,
  `Category Hierarchy` varchar(100) DEFAULT NULL,
  `Matched Site List Id` varchar(20) DEFAULT NULL,
  `Matched Site List Name` varchar(100) DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - site list report kids`
--

DROP TABLE IF EXISTS `ttd data pull - site list report kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - site list report kids` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Matched Site Strategy Line Id` varchar(10) DEFAULT NULL,
  `Matched Fold Strategy Line Id` varchar(10) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Site Placement Adjustment Line Name` varchar(100) DEFAULT NULL,
  `Site` varchar(100) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Site Adjustment` double DEFAULT NULL,
  `Fold` varchar(100) DEFAULT NULL,
  `Fold Adjustment` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `Category Id` varchar(20) DEFAULT NULL,
  `Category Hierarchy` varchar(100) DEFAULT NULL,
  `Matched Site List Id` varchar(20) DEFAULT NULL,
  `Matched Site List Name` varchar(100) DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - site report`
--

DROP TABLE IF EXISTS `ttd data pull - site report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - site report` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Ad Format` varchar(10) DEFAULT NULL,
  `Site` varchar(100) DEFAULT NULL,
  `Supply Vendor` varchar(100) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL,
  `App Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - site report kids`
--

DROP TABLE IF EXISTS `ttd data pull - site report kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - site report kids` (
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Ad Format` varchar(10) DEFAULT NULL,
  `Site` varchar(100) DEFAULT NULL,
  `Supply Vendor` varchar(100) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL,
  `App Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - time of day report`
--

DROP TABLE IF EXISTS `ttd data pull - time of day report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - time of day report` (
  `Date` datetime DEFAULT NULL,
  `UTC Hour` double DEFAULT NULL,
  `User Hour of Week` double DEFAULT NULL,
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ttd data pull - time of day report kids`
--

DROP TABLE IF EXISTS `ttd data pull - time of day report kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttd data pull - time of day report kids` (
  `Date` datetime DEFAULT NULL,
  `UTC Hour` double DEFAULT NULL,
  `User Hour of Week` double DEFAULT NULL,
  `Partner Id` varchar(10) DEFAULT NULL,
  `Advertiser Id` varchar(10) DEFAULT NULL,
  `Campaign Id` varchar(10) DEFAULT NULL,
  `Ad Group Id` varchar(10) DEFAULT NULL,
  `Advertiser Name` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Ad Group Budget` double DEFAULT NULL,
  `Ad Group Imps Budget` double DEFAULT NULL,
  `Ad Group Daily Target` double DEFAULT NULL,
  `Ad Group Daily Imps Target` double DEFAULT NULL,
  `Ad Group Daily Cap` double DEFAULT NULL,
  `Ad Group Daily Imps Cap` double DEFAULT NULL,
  `Ad Group Base Bid CPM` double DEFAULT NULL,
  `Bids` double DEFAULT NULL,
  `Bid Amount` double DEFAULT NULL,
  `Imps` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `PC 1` double DEFAULT NULL,
  `PC 2` double DEFAULT NULL,
  `PC 3` double DEFAULT NULL,
  `PC 4` double DEFAULT NULL,
  `PC 5` double DEFAULT NULL,
  `PC 6` double DEFAULT NULL,
  `PI 1` double DEFAULT NULL,
  `PI 2` double DEFAULT NULL,
  `PI 3` double DEFAULT NULL,
  `PI 4` double DEFAULT NULL,
  `PI 5` double DEFAULT NULL,
  `PI 6` double DEFAULT NULL,
  `PC 1 Rev` double DEFAULT NULL,
  `PC 2 Rev` double DEFAULT NULL,
  `PC 3 Rev` double DEFAULT NULL,
  `PC 4 Rev` double DEFAULT NULL,
  `PC 5 Rev` double DEFAULT NULL,
  `PC 6 Rev` double DEFAULT NULL,
  `PI 1 Rev` double DEFAULT NULL,
  `PI 2 Rev` double DEFAULT NULL,
  `PI 3 Rev` double DEFAULT NULL,
  `PI 4 Rev` double DEFAULT NULL,
  `PI 5 Rev` double DEFAULT NULL,
  `PI 6 Rev` double DEFAULT NULL,
  `PC 1 Cur` double DEFAULT NULL,
  `PC 2 Cur` double DEFAULT NULL,
  `PC 3 Cur` double DEFAULT NULL,
  `PC 4 Cur` double DEFAULT NULL,
  `PC 5 Cur` double DEFAULT NULL,
  `PC 6 Cur` double DEFAULT NULL,
  `PI 1 Cur` double DEFAULT NULL,
  `PI 2 Cur` double DEFAULT NULL,
  `PI 3 Cur` double DEFAULT NULL,
  `PI 4 Cur` double DEFAULT NULL,
  `PI 5 Cur` double DEFAULT NULL,
  `PI 6 Cur` double DEFAULT NULL,
  `TTD Total Cost` double DEFAULT NULL,
  `Partner Total Cost` double DEFAULT NULL,
  `Advertiser Total Cost` double DEFAULT NULL,
  `CTA 1` double DEFAULT NULL,
  `CTA 2` double DEFAULT NULL,
  `CTA 3` double DEFAULT NULL,
  `CTA 4` double DEFAULT NULL,
  `CTA 5` double DEFAULT NULL,
  `CTA 6` double DEFAULT NULL,
  `CTA 1 Rev` double DEFAULT NULL,
  `CTA 2 Rev` double DEFAULT NULL,
  `CTA 3 Rev` double DEFAULT NULL,
  `CTA 4 Rev` double DEFAULT NULL,
  `CTA 5 Rev` double DEFAULT NULL,
  `CTA 6 Rev` double DEFAULT NULL,
  `TWD 1` double DEFAULT NULL,
  `TWD 2` double DEFAULT NULL,
  `TWD 3` double DEFAULT NULL,
  `TWD 4` double DEFAULT NULL,
  `TWD 5` double DEFAULT NULL,
  `TWD 6` double DEFAULT NULL,
  `TWD 1 Rev` double DEFAULT NULL,
  `TWD 2 Rev` double DEFAULT NULL,
  `TWD 3 Rev` double DEFAULT NULL,
  `TWD 4 Rev` double DEFAULT NULL,
  `TWD 5 Rev` double DEFAULT NULL,
  `TWD 6 Rev` double DEFAULT NULL,
  `VideoEventCreativeView` double DEFAULT NULL,
  `VideoEventStart` double DEFAULT NULL,
  `VideoEventFirstQuarter` double DEFAULT NULL,
  `VideoEventMidpoint` double DEFAULT NULL,
  `VideoEventThirdQuarter` double DEFAULT NULL,
  `VideoEventComplete` double DEFAULT NULL,
  `VideoEventMute` double DEFAULT NULL,
  `VideoEventUnmute` double DEFAULT NULL,
  `VideoEventPause` double DEFAULT NULL,
  `VideoEventResume` double DEFAULT NULL,
  `VideoEventFullscreen` double DEFAULT NULL,
  `VideoEventError` double DEFAULT NULL,
  `VideoEventSkip` double DEFAULT NULL,
  `VideoEventEngagedView` double DEFAULT NULL,
  `VideoEventRewind` double DEFAULT NULL,
  `VideoEventExpand` double DEFAULT NULL,
  `VideoEventCollapse` double DEFAULT NULL,
  `VideoEventAcceptInvitation` double DEFAULT NULL,
  `VideoEventClose` double DEFAULT NULL,
  `Deal Code` varchar(100) DEFAULT NULL,
  `CreativeIsTrackable` double DEFAULT NULL,
  `CreativeWasViewable` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `uk backend data`
--

DROP TABLE IF EXISTS `uk backend data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uk backend data` (
  `Quote_id` varchar(20) DEFAULT '0',
  `Policy_no` int(11) DEFAULT NULL,
  `QuotedDate` datetime DEFAULT NULL,
  `InceptionDate` datetime DEFAULT NULL,
  `Channel_initiated` varchar(10) DEFAULT NULL,
  `Channel_Ended` varchar(10) DEFAULT NULL,
  `Quote_journye_history` varchar(10) DEFAULT NULL,
  `Landing_page` varchar(255) DEFAULT NULL,
  `Platform` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `AdGroup` varchar(100) DEFAULT NULL,
  `Keywords` varchar(100) DEFAULT NULL,
  `QuoteStarts` double DEFAULT NULL,
  `QuoteCompleted` double DEFAULT NULL,
  `QuotesSold` double DEFAULT NULL,
  `SoldPremium` double DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `actual_premium_post_tax` double DEFAULT NULL,
  `AcquisitionMethod` varchar(20) DEFAULT NULL,
  `channel` varchar(20) DEFAULT NULL,
  `location1` varchar(100) DEFAULT NULL,
  `location2` varchar(100) DEFAULT NULL,
  `segment_desc` varchar(50) DEFAULT NULL,
  `alpha_sic_code` varchar(255) DEFAULT NULL,
  `five_digit_sic_code` varchar(255) DEFAULT NULL,
  `UW_Tier` varchar(20) DEFAULT NULL,
  `QualityTier` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `viewability_innovid_xr`
--

DROP TABLE IF EXISTS `viewability_innovid_xr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewability_innovid_xr` (
  `Innovid Campaign` varchar(100) NOT NULL DEFAULT '',
  `DFA Campaign` varchar(100) DEFAULT NULL,
  `Innovid Site` varchar(100) NOT NULL DEFAULT '',
  `DFA Site` varchar(100) DEFAULT NULL,
  `Innovid Placement` varchar(100) NOT NULL DEFAULT '',
  `DFA Placement` varchar(100) DEFAULT '',
  PRIMARY KEY (`Innovid Campaign`,`Innovid Site`,`Innovid Placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - adults`
--

DROP TABLE IF EXISTS `weekly data pull - adults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - adults` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - adults content`
--

DROP TABLE IF EXISTS `weekly data pull - adults content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - adults content` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - adults products`
--

DROP TABLE IF EXISTS `weekly data pull - adults products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - adults products` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - adults products zero`
--

DROP TABLE IF EXISTS `weekly data pull - adults products zero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - adults products zero` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - adults zero`
--

DROP TABLE IF EXISTS `weekly data pull - adults zero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - adults zero` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - aop`
--

DROP TABLE IF EXISTS `weekly data pull - aop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - aop` (
  `Date` varchar(100) DEFAULT NULL,
  `Creative` varchar(100) DEFAULT NULL,
  `Tactic` varchar(100) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `CTR` varchar(45) DEFAULT NULL,
  `VTC` double DEFAULT NULL,
  `CTC` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Gross Spend` varchar(100) DEFAULT NULL,
  `Goal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - banner creative`
--

DROP TABLE IF EXISTS `weekly data pull - banner creative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - banner creative` (
  `currency` varchar(5) DEFAULT NULL,
  `Profile Name` varchar(25) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Channel` varchar(25) DEFAULT NULL,
  `AdGroup` varchar(100) DEFAULT NULL,
  `Headline` varchar(50) DEFAULT NULL,
  `Line 1` varchar(75) DEFAULT NULL,
  `RTG Adults vs Kids` varchar(10) DEFAULT NULL,
  `Image Name` varchar(100) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Conversions` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos.` double DEFAULT NULL,
  `Rev.` double DEFAULT NULL,
  `conv` int(11) DEFAULT NULL,
  `conv_revenue` double DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  `email_revenue` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - bidtellect`
--

DROP TABLE IF EXISTS `weekly data pull - bidtellect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - bidtellect` (
  `Date` varchar(45) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Creative Name` varchar(100) DEFAULT NULL,
  `Short Text` varchar(100) DEFAULT NULL,
  `Url` longtext,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Spend` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - brightroll`
--

DROP TABLE IF EXISTS `weekly data pull - brightroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - brightroll` (
  `Day` varchar(45) DEFAULT NULL,
  `Campaign ID` varchar(45) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Line ID` varchar(45) DEFAULT NULL,
  `Line Name` varchar(100) DEFAULT NULL,
  `Ad ID` varchar(45) DEFAULT NULL,
  `Ad Name` varchar(100) DEFAULT NULL,
  `Campaign Currency Code` varchar(45) DEFAULT NULL,
  `Advertiser Spending` varchar(45) DEFAULT NULL,
  `Impressions` varchar(45) DEFAULT NULL,
  `Clicks` varchar(45) DEFAULT NULL,
  `Click Conversions` varchar(45) DEFAULT NULL,
  `View Conversions` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - cse`
--

DROP TABLE IF EXISTS `weekly data pull - cse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL,
  `Rev` double DEFAULT NULL,
  `Website` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - cse nextag`
--

DROP TABLE IF EXISTS `weekly data pull - cse nextag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse nextag` (
  `Date` varchar(15) DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Avg CPC` varchar(15) DEFAULT NULL,
  `Cost` varchar(15) DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Rev` double DEFAULT NULL,
  `Order Rate` double DEFAULT NULL,
  `Cost Of Sales` varchar(15) DEFAULT NULL,
  `Cost Per Order` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - cse pricegrabber`
--

DROP TABLE IF EXISTS `weekly data pull - cse pricegrabber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse pricegrabber` (
  `Date` varchar(15) DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - cse pricegrabber kids`
--

DROP TABLE IF EXISTS `weekly data pull - cse pricegrabber kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse pricegrabber kids` (
  `Date` varchar(15) DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - cse shopping`
--

DROP TABLE IF EXISTS `weekly data pull - cse shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse shopping` (
  `Date` varchar(15) DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Avg CPC` double DEFAULT NULL,
  `Cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - cse shopping kids`
--

DROP TABLE IF EXISTS `weekly data pull - cse shopping kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse shopping kids` (
  `Date` varchar(15) DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Avg CPC` double DEFAULT NULL,
  `Cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - cse shopzilla`
--

DROP TABLE IF EXISTS `weekly data pull - cse shopzilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse shopzilla` (
  `Date` varchar(15) DEFAULT NULL,
  `Clicks` varchar(15) DEFAULT NULL,
  `Cost` varchar(15) DEFAULT NULL,
  `Avg CPC` varchar(15) DEFAULT NULL,
  `Orders` varchar(45) DEFAULT NULL,
  `Sales Revenue` varchar(45) DEFAULT NULL,
  `Average Order Value` varchar(45) DEFAULT NULL,
  `Cost Per Order` varchar(45) DEFAULT NULL,
  `Conversion` varchar(45) DEFAULT NULL,
  `Cost Of Sale` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - cse shopzilla kids`
--

DROP TABLE IF EXISTS `weekly data pull - cse shopzilla kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse shopzilla kids` (
  `Date` varchar(15) DEFAULT NULL,
  `Clicks` varchar(15) DEFAULT NULL,
  `Cost` varchar(15) DEFAULT NULL,
  `Avg CPC` varchar(15) DEFAULT NULL,
  `Orders` varchar(45) DEFAULT NULL,
  `Sales Revenue` varchar(45) DEFAULT NULL,
  `Average Order Value` varchar(45) DEFAULT NULL,
  `Cost Per Order` varchar(45) DEFAULT NULL,
  `Conversion` varchar(45) DEFAULT NULL,
  `Cost Of Sale` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - dbm`
--

DROP TABLE IF EXISTS `weekly data pull - dbm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - dbm` (
  `Date` datetime DEFAULT '0000-00-00 00:00:00',
  `Advertiser` varchar(100) DEFAULT '',
  `Advertiser ID` varchar(100) DEFAULT NULL,
  `Advertiser Status` varchar(100) DEFAULT NULL,
  `Advertiser Integration Code` varchar(100) DEFAULT NULL,
  `Line Item` varchar(100) DEFAULT '',
  `Line Item ID` varchar(100) DEFAULT NULL,
  `Line Item Status` varchar(100) DEFAULT NULL,
  `Line Item Integration Code` varchar(100) DEFAULT NULL,
  `Targeted Data Providers` varchar(100) DEFAULT NULL,
  `Creative` varchar(255) DEFAULT '',
  `Creative ID` varchar(100) DEFAULT NULL,
  `DCM Placement ID` varchar(100) DEFAULT NULL,
  `Creative Status` varchar(100) DEFAULT NULL,
  `Creative Source` varchar(100) DEFAULT NULL,
  `Creative Integration Code` varchar(100) DEFAULT NULL,
  `Device Type` varchar(100) DEFAULT '',
  `Advertiser Currency` varchar(100) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Media Cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - device`
--

DROP TABLE IF EXISTS `weekly data pull - device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - device` (
  `Currency` varchar(45) DEFAULT NULL,
  `Date` datetime DEFAULT '0000-00-00 00:00:00',
  `Channel` varchar(45) DEFAULT '',
  `Website` varchar(45) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT '',
  `Ad Group` varchar(100) DEFAULT '',
  `Device` varchar(45) DEFAULT '',
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Orders` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Avg Position` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - dfa`
--

DROP TABLE IF EXISTS `weekly data pull - dfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - dfa` (
  `Date` datetime DEFAULT NULL,
  `Site` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Placement` varchar(255) DEFAULT NULL,
  `Device` varchar(100) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Media Cost` double DEFAULT NULL,
  `Measurable Impressions` double DEFAULT NULL,
  `Viewable Impressions` double DEFAULT NULL,
  `Adults_ProductPage_Click` double DEFAULT NULL,
  `Adults_ProductPage_View` varchar(45) DEFAULT NULL,
  `Adults_PurchaseIntent_Click` double DEFAULT NULL,
  `Adults_PurchaseIntent_View` varchar(45) DEFAULT NULL,
  `Kids_ProductPage_Click` double DEFAULT NULL,
  `Kids_ProductPage_View` varchar(45) DEFAULT NULL,
  `Kids_PurchaseIntent_Click` double DEFAULT NULL,
  `Kids_PurchaseIntent_View` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - dfa creative`
--

DROP TABLE IF EXISTS `weekly data pull - dfa creative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - dfa creative` (
  `Date` datetime DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(100) DEFAULT '',
  `Ad` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT '',
  `Creative` varchar(100) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - dfa geo`
--

DROP TABLE IF EXISTS `weekly data pull - dfa geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - dfa geo` (
  `Date` datetime DEFAULT '0000-00-00 00:00:00',
  `Advertiser` varchar(45) DEFAULT NULL,
  `Site` varchar(100) DEFAULT '',
  `Campaign` varchar(100) DEFAULT '',
  `Placement` varchar(100) DEFAULT NULL,
  `DMA` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Media Cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - dv`
--

DROP TABLE IF EXISTS `weekly data pull - dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - dv` (
  `Media Type` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Placement Name` varchar(255) DEFAULT NULL,
  `Placement Code` double DEFAULT NULL,
  `Media Provider` varchar(100) DEFAULT NULL,
  `Delivery Site` varchar(255) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Requests` double DEFAULT NULL,
  `Blocks` double DEFAULT NULL,
  `Block %` double DEFAULT NULL,
  `Monitored Imps` double DEFAULT NULL,
  `Viewable Imps` double DEFAULT NULL,
  `Viewable %` double DEFAULT NULL,
  `Fraud/SIVT Blocks` double DEFAULT NULL,
  `Fraud Blocks` double DEFAULT NULL,
  `Site Fraud/IVT Blocks` double DEFAULT NULL,
  `Bot Fraud Blocks` double DEFAULT NULL,
  `Data Center Traffic Blocks` double DEFAULT NULL,
  `Adware/Malware Blocks` double DEFAULT NULL,
  `Hijacked Devices Blocks` double DEFAULT NULL,
  `Injected Ads Blocks` double DEFAULT NULL,
  `Brand Safety Blocks` double DEFAULT NULL,
  `Out of Geo Blocks` double DEFAULT NULL,
  `Unique Incidents` double DEFAULT NULL,
  `Incident %` double DEFAULT NULL,
  `Fraud/SIVT Incidents` double DEFAULT NULL,
  `Fraud Incidents` double DEFAULT NULL,
  `Site Fraud/IVT Incidents` double DEFAULT NULL,
  `Bot Fraud Incidents` double DEFAULT NULL,
  `Data Center Traffic Incidents` double DEFAULT NULL,
  `Adware/Malware Incidents` double DEFAULT NULL,
  `Hijacked Devices Incidents` double DEFAULT NULL,
  `Injected Ads Incidents` double DEFAULT NULL,
  `Emulator Incidents` double DEFAULT NULL,
  `Brand Safety Incidents` double DEFAULT NULL,
  `Out of Geo Incidents` double DEFAULT NULL,
  `High Sev Blocks` double DEFAULT NULL,
  `High-sev Site Blocks` double DEFAULT NULL,
  `High-sev Page Blocks` double DEFAULT NULL,
  `High-sev Content Incidents` double DEFAULT NULL,
  `On BL Site Blocks` double DEFAULT NULL,
  `On BL Site Incidents` double DEFAULT NULL,
  `On BL App Blocks` double DEFAULT NULL,
  `On BL App Incidents` double DEFAULT NULL,
  `Off WL Site Blocks` double DEFAULT NULL,
  `Off WL Site Incidents` double DEFAULT NULL,
  `Off WL App Blocks` double DEFAULT NULL,
  `Off WL App Incidents` double DEFAULT NULL,
  `Out of Age Blocks` double DEFAULT NULL,
  `Out of Age Incidents` double DEFAULT NULL,
  `Out of Star Blocks` double DEFAULT NULL,
  `Out of Star Incidents` double DEFAULT NULL,
  `Custom Blocks` double DEFAULT NULL,
  `Custom Category Page Blocks` double DEFAULT NULL,
  `Custom Keyword Page Blocks` double DEFAULT NULL,
  `Misc Blocks` double DEFAULT NULL,
  `New Site Blocks` double DEFAULT NULL,
  `Middleware Blocks` double DEFAULT NULL,
  `No Domain Blocks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - facebook`
--

DROP TABLE IF EXISTS `weekly data pull - facebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - facebook` (
  `Start Date` datetime DEFAULT NULL,
  `End Date` datetime DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Set` varchar(100) DEFAULT NULL,
  `Ad` varchar(100) DEFAULT NULL,
  `Budget` double DEFAULT NULL,
  `Impressions` varchar(100) DEFAULT NULL,
  `Clicks` varchar(100) DEFAULT NULL,
  `Spend` varchar(100) DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Relevance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - facebook click`
--

DROP TABLE IF EXISTS `weekly data pull - facebook click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - facebook click` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - facebook kids`
--

DROP TABLE IF EXISTS `weekly data pull - facebook kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - facebook kids` (
  `Start Date` datetime DEFAULT NULL,
  `End Date` datetime DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Set` varchar(100) DEFAULT NULL,
  `Ad` varchar(100) DEFAULT NULL,
  `Budget` double DEFAULT NULL,
  `Impressions` varchar(100) DEFAULT NULL,
  `Clicks` varchar(100) DEFAULT NULL,
  `Spend` varchar(100) DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Relevance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga adults`
--

DROP TABLE IF EXISTS `weekly data pull - ga adults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga adults` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Placement` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga adults cse`
--

DROP TABLE IF EXISTS `weekly data pull - ga adults cse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga adults cse` (
  `Date` datetime DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga adults paid search`
--

DROP TABLE IF EXISTS `weekly data pull - ga adults paid search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga adults paid search` (
  `Date` datetime DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga adults view`
--

DROP TABLE IF EXISTS `weekly data pull - ga adults view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga adults view` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Placement` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga combined`
--

DROP TABLE IF EXISTS `weekly data pull - ga combined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga combined` (
  `Date` datetime DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Placement` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Sessions` int(11) DEFAULT NULL,
  `New Users` int(11) DEFAULT NULL,
  `New Users Non Bounce` varchar(45) DEFAULT NULL,
  `Bounces` int(11) DEFAULT NULL,
  `Pageviews` int(11) DEFAULT NULL,
  `Data Type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga facebook adults`
--

DROP TABLE IF EXISTS `weekly data pull - ga facebook adults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga facebook adults` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga facebook combined`
--

DROP TABLE IF EXISTS `weekly data pull - ga facebook combined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga facebook combined` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `New Users Non Bounce` varchar(45) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga facebook geo adults`
--

DROP TABLE IF EXISTS `weekly data pull - ga facebook geo adults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga facebook geo adults` (
  `Date` varchar(10) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Metro` varchar(100) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga facebook geo kids`
--

DROP TABLE IF EXISTS `weekly data pull - ga facebook geo kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga facebook geo kids` (
  `Date` varchar(10) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Metro` varchar(100) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga facebook kids`
--

DROP TABLE IF EXISTS `weekly data pull - ga facebook kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga facebook kids` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga kids`
--

DROP TABLE IF EXISTS `weekly data pull - ga kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga kids` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Placement` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga kids cse`
--

DROP TABLE IF EXISTS `weekly data pull - ga kids cse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga kids cse` (
  `Date` datetime DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga kids paid search`
--

DROP TABLE IF EXISTS `weekly data pull - ga kids paid search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga kids paid search` (
  `Date` datetime DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` double DEFAULT NULL,
  `New Users` double DEFAULT NULL,
  `Bounces` double DEFAULT NULL,
  `Pageviews` double DEFAULT NULL,
  `Transactions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Product` double DEFAULT NULL,
  `Checkout` double DEFAULT NULL,
  `Store` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga kids triple lift`
--

DROP TABLE IF EXISTS `weekly data pull - ga kids triple lift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga kids triple lift` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga kids view`
--

DROP TABLE IF EXISTS `weekly data pull - ga kids view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga kids view` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Placement` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - ga outlet`
--

DROP TABLE IF EXISTS `weekly data pull - ga outlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - ga outlet` (
  `Date` varchar(10) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Device` varchar(10) DEFAULT NULL,
  `Segment` varchar(45) DEFAULT NULL,
  `Sessions` varchar(10) DEFAULT NULL,
  `New Users` varchar(10) DEFAULT NULL,
  `Bounces` varchar(10) DEFAULT NULL,
  `Pageviews` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - innovid`
--

DROP TABLE IF EXISTS `weekly data pull - innovid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - innovid` (
  `Campaign` varchar(100) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `Placement` varchar(100) DEFAULT NULL,
  `Channel` varchar(100) DEFAULT NULL,
  `Video` varchar(100) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Impressions` varchar(100) DEFAULT NULL,
  `ClickThroughs` varchar(100) DEFAULT NULL,
  `CTR` varchar(100) DEFAULT NULL,
  `View 25%` varchar(100) DEFAULT NULL,
  `View 50%` varchar(100) DEFAULT NULL,
  `View 75%` varchar(100) DEFAULT NULL,
  `View 100%` varchar(100) DEFAULT NULL,
  `Completion Rate` varchar(100) DEFAULT NULL,
  `% Ad Viewed` varchar(100) DEFAULT NULL,
  `Engagements` varchar(100) DEFAULT NULL,
  `Engagement Rate` varchar(100) DEFAULT NULL,
  `Awareness` varchar(100) DEFAULT NULL,
  `Awareness Rate` varchar(100) DEFAULT NULL,
  `Time Earned (sec)` varchar(100) DEFAULT NULL,
  `Duration` varchar(100) DEFAULT NULL,
  `In Unit Clicks` varchar(100) DEFAULT NULL,
  `Measurable Impressions` varchar(100) DEFAULT NULL,
  `Measurable % of Total Impressions` varchar(100) DEFAULT NULL,
  `Non-Measurable Impressions` varchar(100) DEFAULT NULL,
  `Non-Measurable % of Total Impressions` varchar(100) DEFAULT NULL,
  `Non-Measurable Non-VPAID` varchar(100) DEFAULT NULL,
  `Non-Measurable IFrame` varchar(100) DEFAULT NULL,
  `Non-Measurable No JS Access` varchar(100) DEFAULT NULL,
  `Non-Measurable Other` varchar(100) DEFAULT NULL,
  `Viewable (IAB) Impressions` varchar(100) DEFAULT NULL,
  `Viewable (IAB) % of Measurable Impressions` varchar(100) DEFAULT NULL,
  `Viewable Completions` varchar(100) DEFAULT NULL,
  `Viewable Completion Rate` varchar(100) DEFAULT NULL,
  `Above The Fold Impressions` varchar(100) DEFAULT NULL,
  `Above The Fold % of Total Impressions` varchar(100) DEFAULT NULL,
  `Viewable Player Size Small` varchar(100) DEFAULT NULL,
  `Viewable Player Size Medium` varchar(100) DEFAULT NULL,
  `Viewable Player Size Large` varchar(100) DEFAULT NULL,
  `Viewable Player Size Undefined` varchar(100) DEFAULT NULL,
  `Viewable Player Volume Low` varchar(100) DEFAULT NULL,
  `Viewable Player Volume High` varchar(100) DEFAULT NULL,
  `Measurable Player Size Small` varchar(100) DEFAULT NULL,
  `Measurable Player Size Medium` varchar(100) DEFAULT NULL,
  `Measurable Player Size Large` varchar(100) DEFAULT NULL,
  `Measurable Player Size Undefined` varchar(100) DEFAULT NULL,
  `Measurable Player Volume Low` varchar(100) DEFAULT NULL,
  `Measurable Player Volume High` varchar(100) DEFAULT NULL,
  `Non-Viewable Impressions` varchar(100) DEFAULT NULL,
  `Non-Viewable % of Measurable Impressions` varchar(100) DEFAULT NULL,
  `Viewable Impression Distribution (IAB)` varchar(100) DEFAULT NULL,
  `Non-Viewable Impression Distribution (IAB)` varchar(100) DEFAULT NULL,
  `Non-Measurable Impression Distribution (IAB)` varchar(100) DEFAULT NULL,
  `Companion Impressions` varchar(100) DEFAULT NULL,
  `Companion ClickThroughs` varchar(100) DEFAULT NULL,
  `Slate Click Occurrences` varchar(100) DEFAULT NULL,
  `Slate Rollover Occurrences` varchar(100) DEFAULT NULL,
  `Total Slate Occurrences` varchar(100) DEFAULT NULL,
  `ClickThroughs main` varchar(100) DEFAULT NULL,
  `ClickThroughs canvas_click` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - kids`
--

DROP TABLE IF EXISTS `weekly data pull - kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - kids` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - kids content`
--

DROP TABLE IF EXISTS `weekly data pull - kids content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - kids content` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - kids products`
--

DROP TABLE IF EXISTS `weekly data pull - kids products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - kids products` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - kids products zero`
--

DROP TABLE IF EXISTS `weekly data pull - kids products zero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - kids products zero` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - kids zero`
--

DROP TABLE IF EXISTS `weekly data pull - kids zero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - kids zero` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(255) DEFAULT NULL,
  `Keyword` varchar(255) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - mobile`
--

DROP TABLE IF EXISTS `weekly data pull - mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - mobile` (
  `Currency` varchar(45) DEFAULT NULL,
  `Profile Name` varchar(45) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Device` varchar(20) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Online_Orders` double DEFAULT NULL,
  `Online_Sales` double DEFAULT NULL,
  `Store_Orders` double DEFAULT NULL,
  `Store_Sales` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - pla compare`
--

DROP TABLE IF EXISTS `weekly data pull - pla compare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - pla compare` (
  `Account` varchar(100) DEFAULT NULL,
  `Network (with search partners)` varchar(25) DEFAULT NULL,
  `Device` varchar(45) DEFAULT NULL,
  `Search term` varchar(255) DEFAULT NULL,
  `Match type` varchar(25) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg. position` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - pla product`
--

DROP TABLE IF EXISTS `weekly data pull - pla product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - pla product` (
  `Currency` varchar(3) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Product ID` varchar(25) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `Channel` varchar(25) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Conversions` int(11) DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Estimate Cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - reach frequency`
--

DROP TABLE IF EXISTS `weekly data pull - reach frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - reach frequency` (
  `Advertiser` varchar(100) NOT NULL,
  `Campaign` varchar(100) NOT NULL,
  `Site (DCM)` varchar(100) NOT NULL,
  `Impression Reach` double DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Average Impression Frequency` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Click Reach` double DEFAULT NULL,
  `1: Impression Reach` double DEFAULT NULL,
  `1: Click Reach` double DEFAULT NULL,
  `2: Impression Reach` double DEFAULT NULL,
  `2: Click Reach` double NOT NULL,
  `3: Impression Reach` double DEFAULT NULL,
  `3: Click Reach` double DEFAULT NULL,
  `4: Impression Reach` double DEFAULT NULL,
  `4: Click Reach` double DEFAULT NULL,
  `5: Impression Reach` double DEFAULT NULL,
  `5: Click Reach` double DEFAULT NULL,
  `6: Impression Reach` double DEFAULT NULL,
  `6: Click Reach` double DEFAULT NULL,
  `7: Impression Reach` double DEFAULT NULL,
  `7: Click Reach` double DEFAULT NULL,
  `8: Impression Reach` double DEFAULT NULL,
  `8: Click Reach` double DEFAULT NULL,
  `9: Impression Reach` double DEFAULT NULL,
  `9: Click Reach` double DEFAULT NULL,
  `10: Impression Reach` double DEFAULT NULL,
  `10: Click Reach` double DEFAULT NULL,
  `11: Impression Reach` double DEFAULT NULL,
  `11: Click Reach` double DEFAULT NULL,
  `12: Impression Reach` double DEFAULT NULL,
  `12: Click Reach` double DEFAULT NULL,
  `13: Impression Reach` double DEFAULT NULL,
  `13: Click Reach` double DEFAULT NULL,
  `14: Impression Reach` double DEFAULT NULL,
  `14: Click Reach` double DEFAULT NULL,
  `15: Impression Reach` double DEFAULT NULL,
  `15: Click Reach` double DEFAULT NULL,
  `16+: Impression Reach` double DEFAULT NULL,
  `16+: Click Reach` double DEFAULT NULL,
  PRIMARY KEY (`Advertiser`,`Campaign`,`Site (DCM)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - simplifi`
--

DROP TABLE IF EXISTS `weekly data pull - simplifi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - simplifi` (
  `Date` varchar(25) DEFAULT NULL,
  `Ad Name` varchar(100) DEFAULT NULL,
  `Ad ID` varchar(100) DEFAULT NULL,
  `Total Spend` double DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - snap`
--

DROP TABLE IF EXISTS `weekly data pull - snap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - snap` (
  `Start time` datetime DEFAULT NULL,
  `End time` datetime DEFAULT NULL,
  `Campaign ID` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Set ID` varchar(100) DEFAULT NULL,
  `Ad Set Name` varchar(100) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Ad Type` varchar(45) DEFAULT NULL,
  `Daily Budget` double DEFAULT NULL,
  `Goal` varchar(45) DEFAULT NULL,
  `Bid` double DEFAULT NULL,
  `Spend` double DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Paid eCPM` double DEFAULT NULL,
  `Swipe Ups` double DEFAULT NULL,
  `eCPSU` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - taboola`
--

DROP TABLE IF EXISTS `weekly data pull - taboola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - taboola` (
  `Date` datetime DEFAULT NULL,
  `Image URL` longtext,
  `Title` varchar(255) DEFAULT NULL,
  `URL` longtext,
  `Campaign` varchar(100) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Actions` double DEFAULT NULL,
  `Spend` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - top vs other`
--

DROP TABLE IF EXISTS `weekly data pull - top vs other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - top vs other` (
  `Account` varchar(25) DEFAULT NULL,
  `Week` datetime DEFAULT NULL,
  `Device` varchar(45) DEFAULT NULL,
  `Top vs. side` varchar(100) DEFAULT NULL,
  `Campaign Name` varchar(100) DEFAULT NULL,
  `Ad Group Name` varchar(100) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL,
  `Match Type` varchar(45) DEFAULT NULL,
  `Max CPC` double DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Avg Pos` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - trade desk`
--

DROP TABLE IF EXISTS `weekly data pull - trade desk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - trade desk` (
  `Date` varchar(25) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Creative` varchar(255) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `vConversions` double DEFAULT NULL,
  `vRevenue` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - trade desk click`
--

DROP TABLE IF EXISTS `weekly data pull - trade desk click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - trade desk click` (
  `Currency` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Channel` varchar(255) DEFAULT NULL,
  `Campaign Name` varchar(255) DEFAULT NULL,
  `Ad Group Name` varchar(45) DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Rev` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - trade desk kids`
--

DROP TABLE IF EXISTS `weekly data pull - trade desk kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - trade desk kids` (
  `Date` varchar(25) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Creative` varchar(255) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `vConversions` double DEFAULT NULL,
  `vRevenue` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - twitter`
--

DROP TABLE IF EXISTS `weekly data pull - twitter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - twitter` (
  `id` varchar(100) DEFAULT NULL,
  `campaign` varchar(100) DEFAULT NULL,
  `campaign url` varchar(100) DEFAULT NULL,
  `funding instrument id` varchar(100) DEFAULT NULL,
  `funding instrument name` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `campaign start date` varchar(100) DEFAULT NULL,
  `campaign end date` varchar(100) DEFAULT NULL,
  `spend` double DEFAULT NULL,
  `impressions` double DEFAULT NULL,
  `engagements` varchar(100) DEFAULT NULL,
  `billed engagements` varchar(100) DEFAULT NULL,
  `retweets` varchar(100) DEFAULT NULL,
  `replies` varchar(100) DEFAULT NULL,
  `follows` varchar(100) DEFAULT NULL,
  `clicks` double DEFAULT NULL,
  `media engagements` varchar(100) DEFAULT NULL,
  `favorites` varchar(100) DEFAULT NULL,
  `card engagements` varchar(100) DEFAULT NULL,
  `unfollows` varchar(100) DEFAULT NULL,
  `engagement rate` varchar(100) DEFAULT NULL,
  `link clicks` varchar(100) DEFAULT NULL,
  `app clicks` varchar(100) DEFAULT NULL,
  `leads` varchar(100) DEFAULT NULL,
  `link click rate` varchar(100) DEFAULT NULL,
  `App click rate` varchar(100) DEFAULT NULL,
  `lead rate` varchar(100) DEFAULT NULL,
  `follow rate` varchar(100) DEFAULT NULL,
  `call to action` varchar(100) DEFAULT NULL,
  `video starts` varchar(100) DEFAULT NULL,
  `Video played 25%` varchar(100) DEFAULT NULL,
  `Video played 50%` varchar(100) DEFAULT NULL,
  `Video played 75%` varchar(100) DEFAULT NULL,
  `Video completions` varchar(100) DEFAULT NULL,
  `video views` varchar(100) DEFAULT NULL,
  `eCPE` varchar(100) DEFAULT NULL,
  `CPE` varchar(100) DEFAULT NULL,
  `cost per link click` varchar(100) DEFAULT NULL,
  `eCPAC` varchar(100) DEFAULT NULL,
  `cost per lead` varchar(100) DEFAULT NULL,
  `CPF` varchar(100) DEFAULT NULL,
  `product type` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `current remaining budget` varchar(100) DEFAULT NULL,
  `current bid` varchar(100) DEFAULT NULL,
  `current daily budget` varchar(100) DEFAULT NULL,
  `current total budget` varchar(100) DEFAULT NULL,
  `site visits - engage` varchar(100) DEFAULT NULL,
  `site visits - view` varchar(100) DEFAULT NULL,
  `site visits - engage sale amount` varchar(100) DEFAULT NULL,
  `site visits - view sale amount` varchar(100) DEFAULT NULL,
  `site visits - engage order quantity` varchar(100) DEFAULT NULL,
  `site visits - view order quantity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - video`
--

DROP TABLE IF EXISTS `weekly data pull - video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - video` (
  `Account` varchar(50) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Impressions` varchar(50) DEFAULT NULL,
  `Views` varchar(50) DEFAULT NULL,
  `Total cost` varchar(50) DEFAULT NULL,
  `Website clicks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - yahoo`
--

DROP TABLE IF EXISTS `weekly data pull - yahoo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - yahoo` (
  `advertiser_name` varchar(100) NOT NULL DEFAULT '',
  `interval` varchar(25) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creative_name` varchar(255) NOT NULL DEFAULT '',
  `imps` varchar(25) DEFAULT NULL,
  `clicks` varchar(25) DEFAULT NULL,
  `conversions` varchar(25) DEFAULT NULL,
  `arbitrage_spent` varchar(25) DEFAULT NULL,
  `arbitrage_cost_ecpm` varchar(25) DEFAULT NULL,
  `arbitrage_cost_ecpc` varchar(25) DEFAULT NULL,
  `arbitrage_cost_ecpa` varchar(25) DEFAULT NULL,
  `arbitrage_roi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`advertiser_name`,`interval`,`creative_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - yahoo beta`
--

DROP TABLE IF EXISTS `weekly data pull - yahoo beta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - yahoo beta` (
  `day` varchar(25) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `advertiser id` varchar(100) NOT NULL DEFAULT '',
  `advertiser` varchar(255) NOT NULL DEFAULT '',
  `line id` varchar(45) NOT NULL DEFAULT '',
  `line` varchar(255) NOT NULL DEFAULT '',
  `ad size` varchar(45) NOT NULL DEFAULT '',
  `Ad Id` varchar(25) NOT NULL,
  `Ad` varchar(255) NOT NULL,
  `advertising spending` varchar(25) DEFAULT NULL,
  `imps` varchar(25) DEFAULT NULL,
  `clicks` varchar(25) DEFAULT NULL,
  `conversions` varchar(25) DEFAULT NULL,
  `advertiser ecpm` varchar(25) DEFAULT NULL,
  `ctr` varchar(25) DEFAULT NULL,
  `conversion rate` varchar(25) DEFAULT NULL,
  `cpc` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`day`,`advertiser id`,`advertiser`,`line id`,`line`,`ad size`,`Ad Id`,`Ad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - yieldmo`
--

DROP TABLE IF EXISTS `weekly data pull - yieldmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - yieldmo` (
  `Date` datetime DEFAULT NULL,
  `URL` longtext,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Spend` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - zemanta`
--

DROP TABLE IF EXISTS `weekly data pull - zemanta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - zemanta` (
  `Account` varchar(45) DEFAULT NULL,
  `Account Status` varchar(45) DEFAULT NULL,
  `Campaign` varchar(100) DEFAULT NULL,
  `Campaign Status` varchar(45) DEFAULT NULL,
  `Ad Group` varchar(100) DEFAULT NULL,
  `Ad Group Status` varchar(45) DEFAULT NULL,
  `Content Ad` varchar(100) DEFAULT NULL,
  `Content Ad Status` varchar(45) DEFAULT NULL,
  `URL` longtext,
  `Image Hash` longtext,
  `Image URL` longtext,
  `Brand Name` varchar(45) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Label` varchar(100) DEFAULT NULL,
  `Call to action` varchar(45) DEFAULT NULL,
  `Impression trackers` longtext,
  `Day` datetime DEFAULT NULL,
  `Total Spend` double DEFAULT NULL,
  `Impressions` double DEFAULT NULL,
  `Clicks` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'roomstogo'
--

--
-- Final view structure for view `category rollup`
--

/*!50001 DROP VIEW IF EXISTS `category rollup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `category rollup` AS select `final table`.`Engine` AS `Engine`,`final table`.`Website` AS `Website`,`final table`.`Campaign` AS `Campaign`,`final table`.`Ad Group` AS `Ad Group`,`dimensions`.`Dimension1` AS `Dimension1`,`dimensions`.`Dimension2` AS `Dimension2`,`dimensions`.`Tier` AS `Tier`,sum(`final table`.`Impressions`) AS `Impressions`,sum(`final table`.`Clicks`) AS `Clicks`,sum(`final table`.`Cost`) AS `Cost`,sum(`final table`.`Conversions`) AS `Conversions`,sum(`final table`.`Sales Amount`) AS `Sales Amount`,sum(`final table`.`Avg Pos Counter`) AS `Avg Pos Counter`,`final table`.`Fiscal Year` AS `Fiscal Year`,`final table`.`Fiscal Month` AS `Fiscal Month`,`final table`.`Fiscal Week` AS `Fiscal Week` from (`final table` join `dimensions` on(((`final table`.`Ad Group` = `dimensions`.`Ad Group`) and (`final table`.`Campaign` = `dimensions`.`Campaign`) and (`final table`.`Website` = `dimensions`.`Website`)))) group by `final table`.`Engine`,`final table`.`Website`,`final table`.`Campaign`,`final table`.`Ad Group`,`dimensions`.`Dimension1`,`dimensions`.`Dimension2`,`dimensions`.`Tier`,`final table`.`Fiscal Year`,`final table`.`Fiscal Month`,`final table`.`Fiscal Week` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `final query: previous year`
--

/*!50001 DROP VIEW IF EXISTS `final query: previous year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final query: previous year` AS select `previous year - 2015`.`Website` AS `Website`,`previous year - 2015`.`Engine` AS `Engine`,`previous year - 2015`.`Fiscal Week` AS `Fiscal Week`,`previous year - 2014`.`Impressions` AS `PY Impressions`,`previous year - 2014`.`Clicks` AS `PY Clicks`,`previous year - 2014`.`Cost` AS `PY Cost`,`previous year - 2014`.`Conversions` AS `PY Conversions`,`previous year - 2014`.`Sales` AS `PY Sales`,`previous year - 2014`.`Avg Pos Counter` AS `PY Avg Pos Counter`,`previous year - 2015`.`Impressions` AS `CY Impressions`,`previous year - 2015`.`Clicks` AS `CY Clicks`,`previous year - 2015`.`Cost` AS `CY Cost`,`previous year - 2015`.`Conversions` AS `CY Conversion`,`previous year - 2015`.`Sales` AS `CY Sales`,`previous year - 2015`.`Avg Pos Counter` AS `CY Avg Pos Counter` from (`previous year - 2014` join `previous year - 2015` on(((`previous year - 2014`.`Fiscal Week` = `previous year - 2015`.`Fiscal Week`) and (`previous year - 2014`.`Engine` = `previous year - 2015`.`Engine`) and (`previous year - 2014`.`Website` = `previous year - 2015`.`Website`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `final query: rtg pla compare adults`
--

/*!50001 DROP VIEW IF EXISTS `final query: rtg pla compare adults`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final query: rtg pla compare adults` AS select `search data query rollup`.`Account` AS `Account`,`search data query rollup`.`Search term` AS `Search term`,`search data query rollup`.`Impressions` AS `Impressions`,`search data query rollup`.`Clicks` AS `Clicks`,`search data query rollup`.`Cost` AS `Cost`,`pla data query rollup`.`Impressions` AS `Impressions2`,`pla data query rollup`.`Clicks` AS `Clicks2`,`pla data query rollup`.`Cost` AS `Cost2` from (`search data query rollup` left join `pla data query rollup` on(((`search data query rollup`.`Account` = `pla data query rollup`.`Account`) and (`search data query rollup`.`Search term` = `pla data query rollup`.`Search term`)))) where (`search data query rollup`.`Account` like '%roomstogo.com%') order by `search data query rollup`.`Impressions` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `final query: rtg pla compare kids`
--

/*!50001 DROP VIEW IF EXISTS `final query: rtg pla compare kids`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final query: rtg pla compare kids` AS select `search data query rollup`.`Account` AS `Account`,`search data query rollup`.`Search term` AS `Search term`,`search data query rollup`.`Impressions` AS `Impressions`,`search data query rollup`.`Clicks` AS `Clicks`,`search data query rollup`.`Cost` AS `Cost`,`pla data query rollup`.`Impressions` AS `Impressions2`,`pla data query rollup`.`Clicks` AS `Clicks2`,`pla data query rollup`.`Cost` AS `Cost2` from (`search data query rollup` left join `pla data query rollup` on(((`search data query rollup`.`Account` = `pla data query rollup`.`Account`) and (`search data query rollup`.`Search term` = `pla data query rollup`.`Search term`)))) where (`search data query rollup`.`Account` like '%kids%') order by `search data query rollup`.`Impressions` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `final table ga click`
--

/*!50001 DROP VIEW IF EXISTS `final table ga click`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final table ga click` AS select `final table ga`.`Date` AS `Date`,`final table ga`.`Keyword` AS `Keyword`,`final table ga`.`Campaign` AS `Campaign`,`final table ga`.`Placement` AS `Placement`,`final table ga`.`Device` AS `Device`,`final table ga`.`Data Type` AS `Data Type`,`final table ga`.`Sessions` AS `Sessions`,`final table ga`.`New Users` AS `New Users`,`final table ga`.`New Users Non Bounce` AS `New Users Non Bounce`,`final table ga`.`Bounces` AS `Bounces`,`final table ga`.`Pageviews` AS `Pageviews` from `final table ga` where (`final table ga`.`Data Type` = 'Click-Based') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `final table ga view`
--

/*!50001 DROP VIEW IF EXISTS `final table ga view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final table ga view` AS select `final table ga`.`Date` AS `Date`,`final table ga`.`Keyword` AS `Keyword`,`final table ga`.`Campaign` AS `Campaign`,`final table ga`.`Placement` AS `Placement`,`final table ga`.`Device` AS `Device`,`final table ga`.`Data Type` AS `Data Type`,`final table ga`.`Sessions` AS `Sessions`,`final table ga`.`New Users` AS `New Users`,`final table ga`.`New Users Non Bounce` AS `New Users Non Bounce`,`final table ga`.`Bounces` AS `Bounces`,`final table ga`.`Pageviews` AS `Pageviews` from `final table ga` where (`final table ga`.`Data Type` = 'View-Based') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pla compare keyword volume rollup`
--

/*!50001 DROP VIEW IF EXISTS `pla compare keyword volume rollup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pla compare keyword volume rollup` AS select `pla compare keyword volume`.`keyword` AS `keyword`,sum(`pla compare keyword volume`.`impressions`) AS `Impressions`,sum(`pla compare keyword volume`.`clicks`) AS `Clicks`,format(sum(`pla compare keyword volume`.`cost`),2) AS `Cost`,format((sum((`pla compare keyword volume`.`avg position` * `pla compare keyword volume`.`impressions`)) / sum(`pla compare keyword volume`.`impressions`)),2) AS `Avg Pos` from `pla compare keyword volume` group by `pla compare keyword volume`.`keyword` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pla data query rollup`
--

/*!50001 DROP VIEW IF EXISTS `pla data query rollup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pla data query rollup` AS select `weekly data pull - pla compare`.`Account` AS `Account`,`weekly data pull - pla compare`.`Search term` AS `Search term`,sum(`weekly data pull - pla compare`.`Impressions`) AS `Impressions`,sum(`weekly data pull - pla compare`.`Clicks`) AS `Clicks`,sum(`weekly data pull - pla compare`.`Cost`) AS `Cost` from `weekly data pull - pla compare` where ((`weekly data pull - pla compare`.`Campaign` like '%product%') and (`weekly data pull - pla compare`.`Network (with search partners)` = 'Google Search') and (not((`weekly data pull - pla compare`.`Device` like '%Mobile%')))) group by `weekly data pull - pla compare`.`Account`,`weekly data pull - pla compare`.`Search term` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ptc final`
--

/*!50001 DROP VIEW IF EXISTS `ptc final`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ptc final` AS select `ptc first click`.`Conv Keyword` AS `First Click`,`ptc last click`.`Conv Keyword` AS `Conversion Click`,date_format(`ptc order rollup`.`Conv Time`,'%m/%d/%y') AS `Date`,date_format(`ptc order rollup`.`Conv Time`,'%M') AS `Month`,`ptc order rollup`.`Type` AS `Type`,`ptc order rollup`.`Rev` AS `Rev` from ((`ptc order rollup` left join `ptc first click` on((`ptc first click`.`Conv ID` = `ptc order rollup`.`Conv ID`))) left join `ptc last click` on((`ptc last click`.`Conv ID` = `ptc order rollup`.`Conv ID`))) where ((`ptc order rollup`.`Type` in ('email','conv')) and (`ptc last click`.`Conv Keyword` is not null) and (`ptc order rollup`.`Conv Time` > '2013-12-31 23:59:59')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ptc first click old`
--

/*!50001 DROP VIEW IF EXISTS `ptc first click old`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ptc first click old` AS select `path to conversion final`.`Conv Id` AS `Conv Id`,`path to conversion final`.`Keyword Type` AS `Conv Keyword` from `path to conversion final` where (`path to conversion final`.`Variant` in ('First','Only')) group by `path to conversion final`.`Conv Id`,`path to conversion final`.`Keyword Type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ptc last click old`
--

/*!50001 DROP VIEW IF EXISTS `ptc last click old`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ptc last click old` AS select `path to conversion final`.`Conv Id` AS `Conv Id`,`path to conversion final`.`Keyword Type` AS `Conv Keyword` from `path to conversion final` where (`path to conversion final`.`Variant` in ('Last','Only')) group by `path to conversion final`.`Conv Id`,`path to conversion final`.`Keyword Type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ptc order rollup old`
--

/*!50001 DROP VIEW IF EXISTS `ptc order rollup old`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ptc order rollup old` AS select `path to conversion final`.`Order ID` AS `Order ID`,`path to conversion final`.`Conv Id` AS `Conv Id`,`path to conversion final`.`Conv Time` AS `Conv Time`,`path to conversion final`.`Type` AS `Type`,`path to conversion final`.`Rev` AS `Rev` from `path to conversion final` group by `path to conversion final`.`Order ID`,`path to conversion final`.`Conv Id`,`path to conversion final`.`Conv Time`,`path to conversion final`.`Type`,`path to conversion final`.`Rev` having ((`path to conversion final`.`Rev` <> 0) and (`path to conversion final`.`Order ID` <> '')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report output: ad group`
--

/*!50001 DROP VIEW IF EXISTS `report output: ad group`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report output: ad group` AS select `final table`.`Website` AS `Website`,`final table`.`Engine` AS `Engine`,`final table`.`Date` AS `Date`,`final table`.`Campaign` AS `Campaign`,`final table`.`Ad Group` AS `Ad Group`,sum(`final table`.`Impressions`) AS `Impressions`,sum(`final table`.`Clicks`) AS `Clicks`,sum(`final table`.`Cost`) AS `Cost`,sum(`final table`.`Conversions`) AS `Conversions`,sum(`final table`.`Sales Amount`) AS `Sales`,sum(`final table`.`Avg Pos Counter`) AS `Avg Pos Counter`,`final table`.`Fiscal Year` AS `Fiscal Year`,`final table`.`Fiscal Month` AS `Fiscal Month`,`final table`.`Fiscal Week` AS `Fiscal Week`,if((`final table`.`Campaign` like '%- FL%'),'FL',if((`final table`.`Campaign` like '%- SE%'),'SE',if((`final table`.`Campaign` like '%- TX%'),'TX',''))) AS `Region`,if((`final table`.`Campaign` like 'Brand -%'),'Brand','Non-Brand') AS `Keyword Type` from `final table` group by `final table`.`Website`,`final table`.`Engine`,`final table`.`Date`,`final table`.`Campaign`,`final table`.`Ad Group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report output: engine`
--

/*!50001 DROP VIEW IF EXISTS `report output: engine`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report output: engine` AS select date_format(`final table`.`Date`,'%M') AS `Month`,`final table`.`Date` AS `Date`,`final table`.`Engine` AS `Engine`,`final table`.`Website` AS `Website`,sum(`final table`.`Cost`) AS `Cost` from `final table` group by `final table`.`Date`,`final table`.`Engine`,`final table`.`Website` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report output: keywords`
--

/*!50001 DROP VIEW IF EXISTS `report output: keywords`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report output: keywords` AS select `final table`.`Website` AS `Website`,`final table`.`Engine` AS `Engine`,`final table`.`Date` AS `Date`,`final table`.`Campaign` AS `Campaign`,`final table`.`Ad Group` AS `Ad Group`,`final table`.`Keyword` AS `Keyword`,`final table`.`Match Type` AS `Match Type`,`final table`.`Impressions` AS `Impressions`,`final table`.`Clicks` AS `Clicks`,`final table`.`Cost` AS `Cost`,`final table`.`Conversions` AS `Conversions`,`final table`.`Sales Amount` AS `Sales Amount`,`final table`.`Avg Pos Counter` AS `Avg Pos Counter`,`final table`.`Fiscal Year` AS `Fiscal Year`,`final table`.`Fiscal Month` AS `Fiscal Month`,`final table`.`Fiscal Week` AS `Fiscal Week` from (`final table` join `report output: top keyword identify` on(((`final table`.`Keyword` = `report output: top keyword identify`.`Keyword`) and (`final table`.`Match Type` = `report output: top keyword identify`.`Match Type`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report output: top keyword identify`
--

/*!50001 DROP VIEW IF EXISTS `report output: top keyword identify`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report output: top keyword identify` AS select `final table`.`Keyword` AS `Keyword`,`final table`.`Match Type` AS `Match Type`,sum(`final table`.`Cost`) AS `SumOfCost` from `final table` where (`final table`.`Date` > (curdate() - interval 91 day)) group by `final table`.`Keyword`,`final table`.`Match Type` having (sum(`final table`.`Cost`) > 299.99) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `search data query rollup`
--

/*!50001 DROP VIEW IF EXISTS `search data query rollup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tdadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `search data query rollup` AS select `weekly data pull - pla compare`.`Account` AS `Account`,`weekly data pull - pla compare`.`Search term` AS `Search term`,sum(`weekly data pull - pla compare`.`Impressions`) AS `Impressions`,sum(`weekly data pull - pla compare`.`Clicks`) AS `Clicks`,sum(`weekly data pull - pla compare`.`Cost`) AS `Cost` from `weekly data pull - pla compare` where ((`weekly data pull - pla compare`.`Network (with search partners)` = 'Google Search') and (not((`weekly data pull - pla compare`.`Campaign` like '%Product%'))) and (not((`weekly data pull - pla compare`.`Campaign` like '%competitor%*'))) and (not((`weekly data pull - pla compare`.`Campaign` like '%Brand'))) and (not((`weekly data pull - pla compare`.`Campaign` like '%Brand %')))) group by `weekly data pull - pla compare`.`Account`,`weekly data pull - pla compare`.`Search term` having (sum(`weekly data pull - pla compare`.`Impressions`) > 10) */;
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

-- Dump completed on 2018-02-11  8:10:19
