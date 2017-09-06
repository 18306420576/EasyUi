/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.12-log : Database - bjsxteasyui
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bjsxteasyui` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bjsxteasyui`;

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pro_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`id`,`name`,`pro_id`) values (1,'长春',1),(2,'吉林',1),(3,'成都',2),(4,'攀枝花',2),(5,'长沙',3),(6,'岳阳',3),(7,'湘潭',3),(8,'沈阳',4),(9,'大连',4);

/*Table structure for table `org` */

DROP TABLE IF EXISTS `org`;

CREATE TABLE `org` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `iconCls` varchar(50) DEFAULT NULL,
  `principal` varchar(50) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `org` */

insert  into `org`(`id`,`name`,`iconCls`,`principal`,`count`,`description`,`state`,`parent_id`) values (1,'总公司',NULL,'张三',100,'我是总公司',NULL,999999),(2,'北京分公司',NULL,'李四',50,'我是北京分公司',NULL,1),(3,'上海分公司',NULL,'王五',50,'我是上海分公司',NULL,1),(5,'北京财务部',NULL,'小1',20,'北京财务部门',NULL,2),(6,'北京产品部',NULL,'小2',20,'北京产品部门',NULL,2),(7,'北京研发部',NULL,'小3',20,'北京研发部门',NULL,2),(8,'上海产品部',NULL,'小4',20,'上海产品部门',NULL,3),(9,'上海研发部',NULL,'小5',0,'上海研发部门','open',3),(13,'上海销售部',NULL,'小6',20,'我是上海销售部门','open',3);

/*Table structure for table `province` */

DROP TABLE IF EXISTS `province`;

CREATE TABLE `province` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `province` */

insert  into `province`(`id`,`name`) values (1,'吉林省'),(2,'四川省'),(3,'湖南省'),(4,'辽宁省');

/*Table structure for table `resource` */

DROP TABLE IF EXISTS `resource`;

CREATE TABLE `resource` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `checked` int(10) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

/*Data for the table `resource` */

insert  into `resource`(`id`,`name`,`url`,`checked`,`icon`,`parent_id`) values (1,'权限菜单',NULL,0,NULL,999999),(2,'用户管理',NULL,0,NULL,1),(3,'岗位管理',NULL,0,NULL,1),(4,'资源管理',NULL,0,NULL,1),(5,'用户功能1',NULL,0,NULL,2),(7,'岗位功能1','3333',0,NULL,3),(60,'资源功能1','111',0,NULL,4),(61,'资源功能2','223233232',0,NULL,3),(62,'资源功能3','432423',0,NULL,3),(63,'资源功能4','5555',0,NULL,4),(64,'资源功能4的孩子1','1111',0,NULL,63),(65,'资源功能4的孩子2','1111',0,NULL,63),(66,'宋新良','宋新良',0,NULL,62),(67,'de','dd',0,NULL,62);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `city` int(10) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `starttime` varchar(100) DEFAULT NULL,
  `endtime` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`sex`,`age`,`birthday`,`city`,`salary`,`starttime`,`endtime`,`description`) values (1,'admin','1111','1',20,'2013-01-02',4,'1000.00','2013-01-01 01:40:22','2013-01-31 01:40:24','我是管理员'),(6,'张三','1234','1',20,'2013-01-24',1,'2000.00','2013-01-03 01:50:52','2013-01-31 01:50:54','我是张小4'),(8,'李四','1234','2',20,'2013-01-01',3,'1400.00','2013-01-01 16:18:49','2013-01-19 16:18:54','我是李小四我是李小四我是李小四我是李小四我是李小四'),(9,'王五','1234','2',26,'2013-01-02',1,'2000.00','2013-01-04 16:23:47','2013-01-31 16:23:49','8888888888888888111111111111111111111111'),(10,'赵六','1234','1',20,'2013-01-10',4,'2000.00','2013-01-17 16:29:23','2013-01-09 16:29:26','我是赵小六'),(34,'小4','3333','1',20,'2013-01-10',2,'3000.00','2013-01-09 03:31:26','2013-01-29 03:31:27','我是小4'),(35,'小5','4444','1',30,'2013-01-02',1,'4000.00','2013-01-01 03:46:35','2013-01-30 03:46:38','我是小5'),(36,'宋新良','1234','1',21,'2012-03-08',3,'1000.00','2017-02-28 14:26:22','2017-03-03 14:26:25','1223123'),(37,'测试','123456','1',12,'2017-03-07',1,'1234.00','2017-03-08 08:41:07','2017-03-20 08:41:10','这是一条测试数据');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
