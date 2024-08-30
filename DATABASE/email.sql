/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - email
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`email` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `email`;

/*Table structure for table `mail` */

DROP TABLE IF EXISTS `mail`;

CREATE TABLE `mail` (
  `sendtomail` varchar(200) default NULL,
  `subject` varchar(200) default NULL,
  `body` varchar(200) default NULL,
  `sender` varchar(200) default NULL,
  `time` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mail` */

insert  into `mail`(`sendtomail`,`subject`,`body`,`sender`,`time`,`status`) values ('prv@gmail.com','venkat','venkat','praveena@gmail.com','2018-04-07 11:12:23','waiting'),('praveena@gmail.com','venkat','venkat','praveena@gmail.com','2018-04-07 11:18:28','waiting');

/*Table structure for table `newaccount` */

DROP TABLE IF EXISTS `newaccount`;

CREATE TABLE `newaccount` (
  `fname` varchar(200) default NULL,
  `lname` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `cpassword` varchar(200) default NULL,
  `birthday` varchar(200) default NULL,
  `gender` varchar(200) default NULL,
  `mobile` varchar(20) default NULL,
  `location` varchar(200) default NULL,
  `date` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `newaccount` */

insert  into `newaccount`(`fname`,`lname`,`email`,`password`,`cpassword`,`birthday`,`gender`,`mobile`,`location`,`date`) values ('Praveena','praveena','praveena@gmail.com','123456','123456','1994-08-12','Female','9876543210','hyd','2018-01-05 14:57:57'),('Prv','prv','prv@gmail.com','123456','123456','1994-08-12','Female','9876543210','hyd','2018-01-05 14:58:51');

/*Table structure for table `sent` */

DROP TABLE IF EXISTS `sent`;

CREATE TABLE `sent` (
  `sender` varchar(200) default NULL,
  `subject` varchar(200) default NULL,
  `body` varchar(2000) default NULL,
  `senttoemail` varchar(200) default NULL,
  `time` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sent` */

insert  into `sent`(`sender`,`subject`,`body`,`senttoemail`,`time`,`status`) values ('praveena@gmail.com','venkat','venkat','prv@gmail.com','2018-04-07 11:12:24','waiting'),('praveena@gmail.com','venkat','venkat','praveena@gmail.com','2018-04-07 11:18:28','waiting');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
