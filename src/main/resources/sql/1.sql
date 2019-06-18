/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 8.0.15 : Database - testdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `testdb`;

/*Table structure for table `tb_person` */

DROP TABLE IF EXISTS `tb_person`;

CREATE TABLE `tb_person` (
  `tid` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(32) DEFAULT '0' COMMENT '姓名',
  `age` int(4) DEFAULT '0' COMMENT '年龄',
  `gender` varchar(32) DEFAULT NULL COMMENT '性别',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(500) DEFAULT NULL,
  `version` int(2) DEFAULT '0',
  `state` int(2) DEFAULT '1',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='test';

/*Data for the table `tb_person` */

insert  into `tb_person`(`tid`,`name`,`age`,`gender`,`create_by`,`create_date`,`update_by`,`update_date`,`remark`,`version`,`state`) values ('1d3ed7f6707711e981d354e1ad15ae44','3',2,'5',NULL,'2019-05-07 11:20:50',NULL,'2019-05-07 11:20:50',NULL,0,1),('6fc4e774707b11e981d354e1ad15ae44','代偿',3,'1',NULL,'2019-05-07 11:51:47',NULL,'2019-05-07 14:08:36',NULL,0,1),('fc66ac6b666d11e99fa554e1ad15ae44','a1',18,'男',NULL,'2019-04-24 16:50:18',NULL,'2019-04-24 16:50:18',NULL,0,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
