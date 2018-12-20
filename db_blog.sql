/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.22 : Database - db_blog3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_blog3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_blog3`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `summary` varchar(400) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `clickHit` int(11) DEFAULT NULL,
  `replyHit` int(11) DEFAULT NULL,
  `content` text,
  `typeId` int(11) DEFAULT NULL,
  `keyWord` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`summary`,`releaseDate`,`clickHit`,`replyHit`,`content`,`typeId`,`keyWord`) values (73,'测试','1、sql拼写中的错误: org.springframework.jdbc.BadSqlGrammarException:StatementCallback; bad SQL grammar [SELECT * FROM DEMO_ORDER WHERE 1=1and order_id ...','2018-05-13 10:09:38',8,1,'<p><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.02px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">1、sql拼写中的错误:<span class=\"Apple-converted-space\">&nbsp;</span></span><em style=\"font-style: normal; color: rgb(204, 0, 0); font-family: arial; font-size: 13px; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.02px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">org.springframework.jdbc.BadSqlGrammarException:</em><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.02px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">StatementCallback; bad SQL grammar [SELECT * FROM DEMO_ORDER WHERE 1=1and order_id ...<img src=\"/Blog/static/userImages/20180525/1527214127124089571.jpg\" title=\"1527214127124089571.jpg\" alt=\"1.jpg\"/></span></p>',1,''),(74,'shajb','JAVA核心基础。','2018-05-23 10:15:38',1,0,'<p>JAVA核心基础。</p>',1,'JAVA'),(76,'SQL简介','SQL语言，是结构化查询语言(Structured Query Language)的简称。SQL语言是一种数据库查询和程序设计语言，用于存取数据以及查询、更新和管理关系数据库系统；同时也是数据库脚本文件的扩展名。','2018-05-25 09:54:19',0,0,'<p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">SQL语言，是结构化</span><a target=\"_blank\" href=\"https://baike.so.com/doc/6735594.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">查询</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">语言(Structured&nbsp;Query&nbsp;Language)的简称。SQL语言是一种数据库</span><a target=\"_blank\" href=\"https://baike.so.com/doc/6735594.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">查询</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">和程序设计语言，用于存取</span><a target=\"_blank\" href=\"https://baike.so.com/doc/5387430.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">数据</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">以及查询、</span><a target=\"_blank\" href=\"https://baike.so.com/doc/10039327.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">更新</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">和管理关系数据库</span><a target=\"_blank\" href=\"https://baike.so.com/doc/5402991.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">系统</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">；同时也是数据库脚本文件的扩展名。</span></p>',5,'查询 程序'),(77,'mysql简介','MySQL 是一个关系型数据库，由瑞典 MySQL AB 公司开发，目前属于 Oracle 旗下公司。MySQL 最流行的关系型数据库管理系统，在 WEB 应用方面 MySQL 是最好的 RDBMS (Relational Database Management System，关系数据库管理系统) 应用软件之','2018-05-25 09:56:19',0,0,'<p><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">MySQL 是一个<a target=\"_blank\" href=\"https://baike.so.com/doc/5294416.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">关系型数据库</a>，</strong><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">由</span><a target=\"_blank\" href=\"https://baike.so.com/doc/802234.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">瑞典</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><span class=\"Apple-converted-space\">&nbsp;</span>MySQL AB 公司开发，目前属于<span class=\"Apple-converted-space\">&nbsp;</span></span><a target=\"_blank\" href=\"https://baike.so.com/doc/1986748.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">Oracle</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><span class=\"Apple-converted-space\">&nbsp;</span>旗下公司。MySQL 最流行的关系型数据库管理系统，在 WEB 应用方面 MySQL 是最好的 RDBMS (Relational Database Management System，关系数据库管理系统) 应用软件之一。MySQL 是一种关联数据库管理系统，关联数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加了速度并提高了灵活性。MySQL 所使用的 SQL 语言是用于访问数据库的最常用标准化语言。MySQL 软件采用了双授权政策(本词条&quot;授权政策&quot;)，它分为社区版和商业版，由于其体积小、速度快、总体拥有成本低，尤其是开放源码这一特点，一般中小型网站的开发都选择 MySQL 作为网站数据库。由于其社区版的性能卓越，搭配<span class=\"Apple-converted-space\">&nbsp;</span></span><a target=\"_blank\" href=\"https://baike.so.com/doc/5336503-5571942.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">PHP</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp;,Linux和<span class=\"Apple-converted-space\">&nbsp;</span></span><a target=\"_blank\" href=\"https://baike.so.com/doc/5333438-5568873.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">Apache</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><span class=\"Apple-converted-space\">&nbsp;</span>可组成良好的开发环境，经过多年的web技术发展,在业内被广泛使用的一种</span><a target=\"_blank\" href=\"https://baike.so.com/doc/4230501-4432285.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">web</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">服务器解决方案之一,称之为LAMP。</span></p>',2,'关系型 双授权'),(78,'Tomcat简介','Tomcat 服务器是一个免费的开放源代码的Web 应用服务器，属于轻量级应用服务器，在中小型系统和并发访问用户不是很多的场合下被普遍使用，是开发和调试JSP 程序的首选。对于一个初学者来说，可以这样认为，当在一台机器上配置好Apache 服务器，可利用它响应HTML(标准通用标记语言下的一个应用)页面的访问','2018-05-25 09:57:36',4,2,'<p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">Tomcat 服务器是一个免费的开放源代码的Web 应用服务器，属于轻量级应用</span><a href=\"https://baike.so.com/doc/4487696-4696885.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">服务器</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">，在中小型系统和并发访问用户不是很多的场合下被普遍使用，是开发和调试JSP 程序的首选。对于一个初学者来说，可以这样认为，当在一台机器上配置好Apache 服务器，可利用它响应</span><a href=\"https://baike.so.com/doc/5869876-6082735.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">HTML</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">(标准通用标记语言下的一个应用)页面的访问请求。实际上Tomcat是Apache 服务器的扩展，但运行时它是独立运行的，所以当你运行tomcat 时，它实际上作为一个与Apache 独立的进程单独运行的。</span></p>',3,'免费 服务器 '),(79,'C语言简介','一键还原类软件的备份文件。使用Ghost Explorer软件打开，可以查看该文件的内容。此文件不可删除!删除了以后就无法恢复系统了。','2018-05-25 09:58:53',3,1,'<p><a href=\"https://baike.so.com/doc/3905523-4099114.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">一键还原</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">类软件的</span><a href=\"https://baike.so.com/doc/2129230-2252791.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">备份</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">文件。使用Ghost Explorer软件打开，可以查看该文件的内容。此文件不可删除!删除了以后就无法恢复系统了。<img src=\"/Blog/static/userImages/20180525/1527214456826039631.jpg\" title=\"1527214456826039631.jpg\" alt=\"2.jpg\"/></span></p>',4,'一键还原'),(80,'测试1','test1 test1','2018-05-25 10:30:35',0,0,'<p>test1 test1</p>',1,'1'),(81,'测试2','test test2','2018-05-25 10:30:57',0,0,'<p>test test2</p>',1,'2'),(82,'测试3','test3 test3','2018-05-25 10:31:19',3,1,'<p>test3 test3</p>',1,'3'),(83,'Java','Java是一种可以撰写跨平台应用软件的面向对象的程序设计语言。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。','2018-05-25 10:33:39',1,0,'<p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">Java是一种可以撰写跨平台</span><a target=\"_blank\" href=\"https://baike.so.com/doc/3175127.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">应用软件</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">的面向对象的</span><a target=\"_blank\" href=\"https://baike.so.com/doc/5797287.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">程序设计语言</a><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。</span><img src=\"/Blog/static/userImages/20180525/1527215599950066966.png\" title=\"1527215599950066966.png\" alt=\"java.png\"/></p>',1,'面向对象'),(84,'Java体系','Java分为三个体系，分别为Java SE（J2SE，Java2 Platform Standard Edition，标准版），JavaEE（J2EE，Java 2 Platform, Enterprise Edition，企业版），Java ME（J2ME，Java 2 Platform Micro Edi','2018-05-25 10:35:11',7,2,'<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 24px; text-indent: 2em; zoom: 1; font-family: arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><a target=\"_blank\" href=\"https://baike.so.com/doc/2886868-3046592.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">Java</a>分为三个体系，分别为Java SE（<a target=\"_blank\" href=\"https://baike.so.com/doc/5458158-5696546.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">J2SE</a>，Java2 Platform Standard Edition，标准版），</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 24px; text-indent: 2em; zoom: 1; font-family: arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">JavaEE（<a target=\"_blank\" href=\"https://baike.so.com/doc/901087-952427.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration-line: none;\">J2EE</a>，Java 2 Platform, Enterprise Edition，企业版），</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 24px; text-indent: 2em; zoom: 1; font-family: arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">Java ME（J2ME，Java 2 Platform Micro Edition，微型版）。</p><p><br/></p>',1,'体系'),(85,'ssbdhhsb','','2018-05-29 08:15:40',1,0,'<p><img src=\"/Blog/static/userImages/20180529/1527552918042004461.jpg\" title=\"1527552918042004461.jpg\" alt=\"2.jpg\"/></p>',6,'dd');

/*Table structure for table `t_blogger` */

DROP TABLE IF EXISTS `t_blogger`;

CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile` text,
  `nickName` varchar(50) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  `imageName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogger` */

insert  into `t_blogger`(`id`,`userName`,`password`,`profile`,`nickName`,`sign`,`imageName`) values (1,'admin','ba61ce8fa1e3725876e6363c76043c8d','<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(255, 255, 255);\">相信梦想是价值的源泉，相信眼光决定未来的一切，相信成功的</span><a href=\"http://www.lz13.cn/lizhimingyan/3564.html\" style=\"text-decoration-line: none; border: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">信念</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(255, 255, 255);\">比</span><a href=\"http://www.lz13.cn/lizhimingyan/3859.html\" style=\"text-decoration-line: none; border: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">成功</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(255, 255, 255);\">本身更重要，相信人生有挫折没有失败，相信生命的质量来自决不妥协的信念。<span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(255, 255, 255);\">既然人生的幕布已经拉开，就一定要积极的演出；既然脚步已经跨出，风雨坎坷也不能退步；既然我已把希望播在这里，就一定要坚持到胜利的谢幕……</span></span></p>','空城','爱学习，爱自由','20180525102738.jpeg');

/*Table structure for table `t_blogtype` */

DROP TABLE IF EXISTS `t_blogtype`;

CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogtype` */

insert  into `t_blogtype`(`id`,`typeName`,`orderNo`) values (1,'Java核心基础',1),(2,'Mysql',2),(3,'Tomcat',3),(4,'c语言',4),(5,'SQL',5),(6,'kongkong',6);

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIp` varchar(50) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

insert  into `t_comment`(`id`,`userIp`,`blogId`,`content`,`commentDate`,`state`) values (1,'0:0:0:0:0:0:0:1',74,'你你i  ni','2018-05-22 15:43:38',0),(2,'0:0:0:0:0:0:0:1',74,'你你i  ni','2018-05-22 15:43:48',0),(3,'0:0:0:0:0:0:0:1',74,'你你i  ni','2018-05-22 15:43:49',0),(4,'0:0:0:0:0:0:0:1',74,'你你i  ni','2018-05-22 15:43:49',0),(5,'0:0:0:0:0:0:0:1',74,'你你i  ni','2018-05-22 15:43:50',0),(6,'0:0:0:0:0:0:0:1',74,'你你i  ni','2018-05-22 15:43:50',0),(7,'0:0:0:0:0:0:0:1',74,'你你i  ni','2018-05-22 15:43:50',0),(8,'0:0:0:0:0:0:0:1',73,'现在发的发的','2018-05-22 15:44:37',1),(9,'0:0:0:0:0:0:0:1',84,'写的很好。','2018-05-25 10:36:35',0),(10,'0:0:0:0:0:0:0:1',79,'很棒。','2018-05-25 10:36:59',0),(11,'0:0:0:0:0:0:0:1',78,'博主很优秀。','2018-05-25 10:37:31',0),(12,'0:0:0:0:0:0:0:1',78,'很棒。','2018-05-25 10:37:45',0),(13,'0:0:0:0:0:0:0:1',82,'test3','2018-05-25 10:38:06',0),(14,'0:0:0:0:0:0:0:1',84,'，很棒','2018-05-29 08:13:04',0);

/*Table structure for table `t_link` */

DROP TABLE IF EXISTS `t_link`;

CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) DEFAULT NULL,
  `linkUrl` varchar(200) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_link` */

insert  into `t_link`(`id`,`linkName`,`linkUrl`,`orderNo`) values (1,'百度','http://www.baidu.com/',1),(2,'新浪','http://www.sina.com.cn/',2),(3,'腾讯','http://www.qq.com/',3),(4,'Java贴吧','http://tieba.baidu.com/f?kw=java',4),(5,'京东','https://www.jd.com/',5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
