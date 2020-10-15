/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.0.45-community-nt : Database - netbanking
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`netbanking` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `netbanking`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `acc_no` varchar(10) default NULL,
  `j_date` varchar(12) default NULL,
  `j_time` varchar(12) default NULL,
  `acc_type` varchar(35) default NULL,
  `kyc` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`acc_no`,`j_date`,`j_time`,`acc_type`,`kyc`) values ('1000100011','10/06/2020','08:09:45 PM','Saving Account','Verified'),('1000100012','10/06/2020','08:15:07 PM','Saving Account','Verified'),('1000100013','11/06/2020','02:41:58 PM','Saving Account','Verified'),('1000100014','11/06/2020','08:46:49 PM','Saving Account','Verified');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) default NULL,
  `admin` varchar(25) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`,`admin`) values ('admin','admin','Admin Panel');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `acc_no` varchar(10) default NULL,
  `photo` blob,
  `adhar` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image` */

insert  into `image`(`acc_no`,`photo`,`adhar`) values ('1000100011',NULL,NULL),('1000100012',NULL,NULL),('1000100013',NULL,NULL),('1000100014',NULL,NULL);

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `acc_no` varchar(10) default NULL,
  `fname` varchar(25) default NULL,
  `lname` varchar(25) default NULL,
  `f_name` varchar(35) default NULL,
  `m_name` varchar(35) default NULL,
  `dob` varchar(10) default NULL,
  `address` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `info` */

insert  into `info`(`acc_no`,`fname`,`lname`,`f_name`,`m_name`,`dob`,`address`) values ('1000100011','MR. ANKUSH','LOKHANDE','','','13/04/1996',''),('1000100012','MR. RAHUL','jain','','','04/01/1995',''),('1000100013','MISS. APEKSHA','jangid','','','05/09/1997',''),('1000100014','MR. VINOD','prajapati','','','24/12/1993','');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `acc_no` int(10) NOT NULL auto_increment,
  `adhar_no` varchar(12) default NULL,
  `email` varchar(30) default NULL,
  `mobile` varchar(10) default NULL,
  `password` varchar(20) default NULL,
  `hint` varchar(10) default NULL,
  PRIMARY KEY  (`acc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1000100015 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`acc_no`,`adhar_no`,`email`,`mobile`,`password`,`hint`) values (1000100011,'147852369000','ankush13lokhande@gmail.com','8871152219','ankush13','AM40l69jMA'),(1000100012,'123456789987','jain8875rahul@gmail.com','7389316999','123456789','C20QVkhoZD'),(1000100013,'243575798945','5jangiapeksha@gmail.com','7869318224','appy@123','xqzVeNFp3K'),(1000100014,'741258963222','vp143@gmail.com','8109829687','vinod123','8jEMGMOKJl');

/*Table structure for table `nominee` */

DROP TABLE IF EXISTS `nominee`;

CREATE TABLE `nominee` (
  `acc_no` varchar(10) default NULL,
  `n_relation` varchar(35) default NULL,
  `n_name` varchar(35) default NULL,
  `n_dob` varchar(10) default NULL,
  `n_mobile` varchar(10) default NULL,
  `n_add` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nominee` */

insert  into `nominee`(`acc_no`,`n_relation`,`n_name`,`n_dob`,`n_mobile`,`n_add`) values ('1000100011','Sister','POONAM LOKHANDE','16/07/2000','8871152219','89/2-C, KUSHWAH NAGAR, INDORE (M.P.) - 452015'),('1000100012','Brother','ANKUSH LOKHANDE','13/04/1996','8871152219','89/2-C, KUSHWAH NAGAR, INDORE (M.P.) - 452015'),('1000100013','qqqq','ANKUSH LOKHANDE','13/04/1996','8871152219','89/2-C, KUSHWAH NAGAR, INDORE (M.P.) - 452015'),('1000100014','Brother','Ankush','13/04/1996','8871152219','Indore');

/*Table structure for table `s1000100011` */

DROP TABLE IF EXISTS `s1000100011`;

CREATE TABLE `s1000100011` (
  `s_no` int(11) NOT NULL auto_increment,
  `date` varchar(12) default NULL,
  `particulars` varchar(100) default NULL,
  `debit` varchar(10) default NULL,
  `credit` varchar(10) default NULL,
  `balance` varchar(10) default NULL,
  UNIQUE KEY `s_no` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `s1000100011` */

insert  into `s1000100011`(`s_no`,`date`,`particulars`,`debit`,`credit`,`balance`) values (1,'10/06/2020','CASH DEPOSIT SELF','','15000','15000'),(2,'10/06/2020','CASH DEPOSIT SELF','','25000','40000'),(3,'11/06/2020','CASH WITHDRAWL SELF','5000','','35000'),(4,'11/06/2020','CASH WITHDRAWL SELF','1050','','33950'),(5,'11/06/2020','CASH DEPOSIT SELF','','800','34750'),(6,'11/06/2020','CASH DEPOSIT SELF','','14000','48750'),(7,'11/06/2020','CASH DEPOSIT SELF','','950','49700'),(8,'11/06/2020','CASH DEPOSIT SELF','','280','49980'),(9,'11/06/2020','CASH DEPOSIT SELF','','120','50100'),(10,'11/06/2020','CASH DEPOSIT SELF','','14000','64100'),(11,'11/06/2020','CASH WITHDRAWL SELF','300','','63800'),(12,'11/06/2020','CASH WITHDRAWL SELF','400','','63400'),(13,'11/06/2020','CASH WITHDRAWL SELF','900','','62500'),(14,'11/06/2020','CASH WITHDRAWL SELF','4500','','58000'),(15,'11/06/2020','CASH DEPOSIT SELF','','16000','74000'),(16,'11/06/2020','CASH WITHDRAWL SELF','1600','','72400'),(17,'05/08/2020','CASH DEPOSIT SELF','','46000','118400'),(18,'05/08/2020','CASH WITHDRAWL SELF','14800','','103600');

/*Table structure for table `s1000100012` */

DROP TABLE IF EXISTS `s1000100012`;

CREATE TABLE `s1000100012` (
  `s_no` int(11) NOT NULL auto_increment,
  `date` varchar(12) default NULL,
  `particulars` varchar(100) default NULL,
  `debit` varchar(10) default NULL,
  `credit` varchar(10) default NULL,
  `balance` varchar(10) default NULL,
  UNIQUE KEY `s_no` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `s1000100012` */

insert  into `s1000100012`(`s_no`,`date`,`particulars`,`debit`,`credit`,`balance`) values (1,'10/06/2020','CASH DEPOSIT SELF','','15000','15000'),(2,'11/06/2020','CASH DEPOSIT SELF','','35000','50000');

/*Table structure for table `s1000100013` */

DROP TABLE IF EXISTS `s1000100013`;

CREATE TABLE `s1000100013` (
  `s_no` int(11) NOT NULL auto_increment,
  `date` varchar(12) default NULL,
  `particulars` varchar(100) default NULL,
  `debit` varchar(10) default NULL,
  `credit` varchar(10) default NULL,
  `balance` varchar(10) default NULL,
  UNIQUE KEY `s_no` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `s1000100013` */

insert  into `s1000100013`(`s_no`,`date`,`particulars`,`debit`,`credit`,`balance`) values (1,'11/06/2020','CASH DEPOSIT SELF','','15000','15000'),(2,'11/06/2020','CASH DEPOSIT SELF','','40000','55000'),(3,'11/06/2020','CASH DEPOSIT SELF','','16000','71000'),(4,'11/06/2020','CASH DEPOSIT SELF','','2200','73200'),(5,'11/06/2020','CASH WITHDRAWL SELF','7500','','65700'),(6,'11/06/2020','CASH WITHDRAWL SELF','30000','','35700');

/*Table structure for table `s1000100014` */

DROP TABLE IF EXISTS `s1000100014`;

CREATE TABLE `s1000100014` (
  `s_no` int(11) NOT NULL auto_increment,
  `date` varchar(12) default NULL,
  `particulars` varchar(100) default NULL,
  `debit` varchar(10) default NULL,
  `credit` varchar(10) default NULL,
  `balance` varchar(10) default NULL,
  UNIQUE KEY `s_no` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `s1000100014` */

insert  into `s1000100014`(`s_no`,`date`,`particulars`,`debit`,`credit`,`balance`) values (1,'11/06/2020','CASH DEPOSIT SELF','','15000','15000'),(2,'11/06/2020','CASH DEPOSIT SELF','','35000','50000'),(3,'11/06/2020','CASH DEPOSIT SELF','','4200','54200'),(4,'11/06/2020','CASH WITHDRAWL SELF','250','','53950'),(5,'11/06/2020','CASH WITHDRAWL SELF','7000','','46950'),(6,'11/06/2020','CASH WITHDRAWL SELF','15900','','31050');

/*Table structure for table `transfer` */

DROP TABLE IF EXISTS `transfer`;

CREATE TABLE `transfer` (
  `acc_no` varchar(10) default NULL,
  `transferby_acc` varchar(10) default NULL,
  `transferby_mob` varchar(10) default NULL,
  `transferto_acc` varchar(10) default NULL,
  `transferto_mob` varchar(10) default NULL,
  `t_amt` varchar(10) default NULL,
  `t_date` varchar(12) default NULL,
  `t_time` varchar(12) default NULL,
  `t_comment` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transfer` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
