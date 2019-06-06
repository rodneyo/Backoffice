CREATE DATABASE  IF NOT EXISTS `bleachercreatures` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bleachercreatures`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: bleachercreatures
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
-- Table structure for table `date format`
--

DROP TABLE IF EXISTS `date format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date format` (
  `Format Date` varchar(50) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Fiscal Year` varchar(50) NOT NULL DEFAULT '',
  `Fiscal Month` varchar(50) NOT NULL DEFAULT '',
  `Fiscal Week` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Format Date`,`Date`,`Fiscal Year`,`Fiscal Month`,`Fiscal Week`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final table`
--

DROP TABLE IF EXISTS `final table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final table` (
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(255) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `vConversions` varchar(45) DEFAULT NULL,
  `vSales` varchar(45) DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Date`,`Campaign`,`Ad Group`,`Match Type`,`Keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2014`
--

DROP TABLE IF EXISTS `final_table_2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2014` (
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(255) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Profit Margin` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Date`,`Campaign`,`Ad Group`,`Match Type`,`Keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2015`
--

DROP TABLE IF EXISTS `final_table_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2015` (
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(255) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `Profit Margin` double DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Date`,`Campaign`,`Ad Group`,`Match Type`,`Keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2016`
--

DROP TABLE IF EXISTS `final_table_2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2016` (
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(255) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `vConversions` varchar(45) DEFAULT NULL,
  `vSales` varchar(45) DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Date`,`Campaign`,`Ad Group`,`Match Type`,`Keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_table_2017`
--

DROP TABLE IF EXISTS `final_table_2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_table_2017` (
  `Engine` varchar(255) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Campaign` varchar(50) NOT NULL DEFAULT '',
  `Ad Group` varchar(50) NOT NULL DEFAULT '',
  `Match Type` varchar(50) NOT NULL DEFAULT '',
  `Keyword` varchar(255) NOT NULL DEFAULT '',
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `Sales Amount` double DEFAULT NULL,
  `vConversions` varchar(45) DEFAULT NULL,
  `vSales` varchar(45) DEFAULT NULL,
  `Avg Pos Counter` double DEFAULT NULL,
  `Fiscal Year` varchar(50) DEFAULT NULL,
  `Fiscal Month` varchar(255) DEFAULT NULL,
  `Fiscal Week` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Engine`,`Date`,`Campaign`,`Ad Group`,`Match Type`,`Keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull`
--

DROP TABLE IF EXISTS `weekly data pull`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull` (
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
-- Table structure for table `weekly data pull - cj`
--

DROP TABLE IF EXISTS `weekly data pull - cj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cj` (
  `Period` varchar(25) DEFAULT NULL,
  `Publisher Name` varchar(100) DEFAULT NULL,
  `Publisher Commission (USD)` double DEFAULT NULL,
  `CJ Fee (USD)` double DEFAULT NULL,
  `Total Commission (USD)` double DEFAULT NULL,
  `Sale Amount (USD)` double DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Leads` double DEFAULT NULL,
  `Items` double DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Impressions` int(11) DEFAULT NULL,
  `CR` double DEFAULT NULL,
  `CTR` double DEFAULT NULL,
  `EPC (USD)` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - content`
--

DROP TABLE IF EXISTS `weekly data pull - content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - content` (
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
  `Rev` varchar(15) DEFAULT NULL,
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
-- Table structure for table `weekly data pull - cse shopping`
--

DROP TABLE IF EXISTS `weekly data pull - cse shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - cse shopping` (
  `Date` varchar(15) DEFAULT NULL,
  `Clicks` double DEFAULT NULL,
  `Avg CPC` double DEFAULT NULL,
  `Cost` double DEFAULT NULL,
  `CTS (%)` double DEFAULT NULL,
  `Total Orders` double DEFAULT NULL,
  `Sales ($)` double DEFAULT NULL,
  `COS (%)` double DEFAULT NULL
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
  `Clicks` double DEFAULT NULL,
  `Cost` varchar(15) DEFAULT NULL,
  `Avg CPC` varchar(15) DEFAULT NULL,
  `Orders` double DEFAULT NULL,
  `Sales` varchar(15) DEFAULT NULL
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
  `vConversions` double DEFAULT NULL,
  `Conversions` double DEFAULT NULL,
  `vRevenue` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Relevance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weekly data pull - products`
--

DROP TABLE IF EXISTS `weekly data pull - products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - products` (
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
-- Table structure for table `weekly data pull - sas`
--

DROP TABLE IF EXISTS `weekly data pull - sas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - sas` (
  `transID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `transdate` varchar(50) DEFAULT NULL,
  `transamount` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `ssamount` double DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `voided` varchar(50) DEFAULT NULL,
  `locked` varchar(50) DEFAULT NULL,
  `pending` varchar(50) DEFAULT NULL,
  `lastip` varchar(50) DEFAULT NULL,
  `lastreferrer` varchar(255) DEFAULT NULL,
  `bannernumber` int(11) DEFAULT NULL,
  `bannerpage` varchar(255) DEFAULT NULL,
  `dateoftrans` varchar(50) DEFAULT NULL,
  `dateofclick` varchar(50) DEFAULT NULL,
  `timeofclick` varchar(50) DEFAULT NULL,
  `dateofreversal` varchar(50) DEFAULT NULL,
  `returndays` varchar(50) DEFAULT NULL,
  `toolID` varchar(50) DEFAULT NULL,
  `storeID` varchar(50) DEFAULT NULL,
  `lockDate` varchar(50) DEFAULT NULL,
  `transactionType` varchar(50) DEFAULT NULL,
  `CommissionType` varchar(50) DEFAULT NULL,
  `skulist` varchar(50) DEFAULT NULL,
  `priceList` varchar(50) DEFAULT NULL,
  `quantityList` varchar(50) DEFAULT NULL,
  `orderNumber` varchar(50) DEFAULT NULL,
  `parentTrans` varchar(50) DEFAULT NULL,
  `bannerName` varchar(50) DEFAULT NULL,
  `bannerType` varchar(50) DEFAULT NULL,
  `couponCode` varchar(50) DEFAULT NULL,
  `referenceTrans` varchar(50) DEFAULT NULL,
  `newCustomerFlag` varchar(50) DEFAULT NULL,
  `userAgent` longtext,
  `originalCurrency` varchar(50) DEFAULT NULL,
  `originalCurrencyAmount` varchar(50) DEFAULT NULL,
  `isMobile` varchar(50) DEFAULT NULL,
  `usedACoupon` varchar(50) DEFAULT NULL,
  `merchantDefinedType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
-- Table structure for table `weekly data pull - zero`
--

DROP TABLE IF EXISTS `weekly data pull - zero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly data pull - zero` (
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
-- Dumping routines for database 'bleachercreatures'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-11  8:09:23
