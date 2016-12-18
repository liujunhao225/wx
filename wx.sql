/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.23-log : Database - wx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `wx_air_machine` */

CREATE TABLE `wx_air_machine` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Device_id` varchar(40) DEFAULT NULL,
  `Device_type` varchar(20) DEFAULT NULL,
  `Device_license` varchar(300) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT 'now()',
  `Mac_address` varchar(20) DEFAULT NULL,
  `ext_1` varchar(300) DEFAULT NULL,
  `ext_2` varchar(300) DEFAULT NULL,
  `ext_3` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_air_machine` */

/*Table structure for table `wx_air_machine_status` */

CREATE TABLE `wx_air_machine_status` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Device_id` varchar(40) DEFAULT NULL,
  `Device_status` char(1) DEFAULT NULL,
  `Update_time` varchar(20) DEFAULT NULL,
  `ext_1` varchar(300) DEFAULT NULL,
  `ext_2` varchar(300) DEFAULT NULL,
  `ext_3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_air_machine_status` */

/*Table structure for table `wx_device_upload_log` */

CREATE TABLE `wx_device_upload_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Device_id` varchar(40) DEFAULT NULL,
  `device_type` varchar(20) DEFAULT NULL,
  `msg_type` varchar(10) DEFAULT NULL,
  `create_time` int(20) DEFAULT NULL,
  `Data` varchar(300) DEFAULT NULL,
  `ext_1` varchar(300) DEFAULT NULL,
  `ext_2` varchar(300) DEFAULT NULL,
  `ext_3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_device_upload_log` */

/*Table structure for table `wx_machine_to_user` */

CREATE TABLE `wx_machine_to_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Device_id` varchar(40) DEFAULT NULL,
  `Open_id` varchar(40) DEFAULT NULL,
  `Device_name` varchar(100) DEFAULT NULL,
  `Status` char(1) DEFAULT NULL,
  `Bind_time` varchar(20) DEFAULT NULL,
  `ext_1` varchar(300) DEFAULT NULL,
  `ext_2` varchar(300) DEFAULT NULL,
  `ext_3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_machine_to_user` */

/*Table structure for table `wx_rename_device_log` */

CREATE TABLE `wx_rename_device_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Device_id` varchar(40) DEFAULT NULL,
  `Open_id` varchar(40) DEFAULT NULL,
  `Up_time` varchar(40) DEFAULT NULL,
  `ext_1` varchar(300) DEFAULT NULL,
  `ext_2` varchar(300) DEFAULT NULL,
  `ext_3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_rename_device_log` */

/*Table structure for table `wx_setting_msg_log` */

CREATE TABLE `wx_setting_msg_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OpenID` varchar(50) DEFAULT NULL,
  `device_type` varchar(20) DEFAULT NULL,
  `device_id` varchar(40) DEFAULT NULL,
  `Setting_msg` varchar(300) DEFAULT NULL,
  `Settting_time` int(20) DEFAULT NULL,
  `Msg_id` int(30) DEFAULT NULL,
  `Update_time` int(20) DEFAULT NULL,
  `Response_code` varchar(5) DEFAULT NULL,
  `ext_1` varchar(300) DEFAULT NULL,
  `ext_2` varchar(300) DEFAULT NULL,
  `ext_3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_setting_msg_log` */

/*Table structure for table `wx_user` */

CREATE TABLE `wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Open_id` varchar(50) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `User_address` varchar(200) DEFAULT NULL,
  `User_status` char(1) DEFAULT NULL,
  `ext_1` varchar(300) DEFAULT NULL,
  `ext_2` varchar(300) DEFAULT NULL,
  `ext_3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
