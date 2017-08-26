/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.0.27-community-nt : Database - project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project`;

/*Table structure for table `chequedetails` */

DROP TABLE IF EXISTS `chequedetails`;

CREATE TABLE `chequedetails` (
  `id` int(100) NOT NULL auto_increment,
  `ticket_no` int(100) default NULL,
  `cheque_no` varchar(100) default NULL,
  `cheque_date` varchar(40) default NULL,
  `bank_name` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `creditcarddetails` */

DROP TABLE IF EXISTS `creditcarddetails`;

CREATE TABLE `creditcarddetails` (
  `id` int(100) NOT NULL auto_increment,
  `ticket_no` int(100) default NULL,
  `card_no` varchar(70) default NULL,
  `card_type` varchar(30) default NULL,
  `holder_name` varchar(30) default NULL,
  `expiry_date` varchar(30) default NULL,
  `bank_name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `customerdetails` */

DROP TABLE IF EXISTS `customerdetails`;

CREATE TABLE `customerdetails` (
  `cust_id` int(25) NOT NULL auto_increment,
  `cust_name` varchar(25) default NULL,
  `gender` varchar(25) default NULL,
  `dob` varchar(25) default NULL,
  `phone_no` varchar(30) default NULL,
  `address` varchar(25) default NULL,
  `password` varchar(30) default NULL,
  PRIMARY KEY  (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `flightdetails` */

DROP TABLE IF EXISTS `flightdetails`;

CREATE TABLE `flightdetails` (
  `flight_id` int(25) NOT NULL auto_increment,
  `flight_name` varchar(25) default NULL,
  `source` varchar(25) default NULL,
  `destination` varchar(25) default NULL,
  `dep` date default NULL,
  `ret` date default NULL,
  `charge` int(20) default NULL,
  `seat` int(20) default NULL,
  PRIMARY KEY  (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `flights` */

DROP TABLE IF EXISTS `flights`;

CREATE TABLE `flights` (
  `id` int(50) NOT NULL auto_increment,
  `flight_name` varchar(25) default NULL,
  `source` varchar(20) default NULL,
  `destination` varchar(20) default NULL,
  `dep` date default NULL,
  `dtime` time default NULL,
  `ret` date default NULL,
  `rtime` time default NULL,
  `charge` int(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `ticket_id` int(50) NOT NULL auto_increment,
  `ticket_no` int(50) default NULL,
  `amount` int(50) default NULL,
  `mode` varchar(25) default NULL,
  PRIMARY KEY  (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `reservation` */

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
  `id` int(25) NOT NULL auto_increment,
  `source` varchar(50) default NULL,
  `destination` varchar(50) default NULL,
  `ticket_no` int(25) default NULL,
  `cust_name` varchar(50) default NULL,
  `gender` varchar(25) default NULL,
  `dob` varchar(25) default NULL,
  `phone_no` varchar(35) default NULL,
  `address` varchar(50) default NULL,
  `dep` date default NULL,
  `ret` date default NULL,
  `seat_no` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
