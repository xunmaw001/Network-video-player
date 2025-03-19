-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm6goml
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615192066025 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2021-03-08 08:12:44',1,1,'提问1','回复1',1),(42,'2021-03-08 08:12:44',2,2,'提问2','回复2',2),(43,'2021-03-08 08:12:44',3,3,'提问3','回复3',3),(44,'2021-03-08 08:12:44',4,4,'提问4','回复4',4),(45,'2021-03-08 08:12:44',5,5,'提问5','回复5',5),(46,'2021-03-08 08:12:44',6,6,'提问6','回复6',6),(1615192066024,'2021-03-08 08:27:45',11,NULL,'‍11111\r\n','22222\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm6goml/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm6goml/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm6goml/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/jspm6goml/upload/1615192248787.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshipinxinxi`
--

DROP TABLE IF EXISTS `discussshipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615191988577 DEFAULT CHARSET=utf8 COMMENT='视频信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshipinxinxi`
--

LOCK TABLES `discussshipinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshipinxinxi` DISABLE KEYS */;
INSERT INTO `discussshipinxinxi` VALUES (71,'2021-03-08 08:12:44',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-03-08 08:12:44',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-03-08 08:12:44',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-03-08 08:12:44',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-03-08 08:12:44',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-03-08 08:12:44',6,6,'用户名6','评论内容6','回复内容6'),(1615191988576,'2021-03-08 08:26:27',21,11,NULL,'2222',NULL);
/*!40000 ALTER TABLE `discussshipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615192054709 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (51,'2021-03-08 08:12:44','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(52,'2021-03-08 08:12:44','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(53,'2021-03-08 08:12:44','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(54,'2021-03-08 08:12:44','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(55,'2021-03-08 08:12:44','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(56,'2021-03-08 08:12:44','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615192043498,'2021-03-08 08:27:23','222','<p><img src=\"../../../upload/1615192031726.jpg\" /></p>\n<p>&nbsp;</p>\n<p>111111</p>\n<p><img src=\"../../../upload/1615192039085.jpg\" /></p>\n<p><img src=\"../../..//upload/1615192087663.jpg\" /></p>',0,11,'用户1','开放'),(1615192054708,'2021-03-08 08:27:34',NULL,'111',1615192043498,11,'用户1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipinxinxi`
--

DROP TABLE IF EXISTS `shipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `shipinleixing` varchar(200) DEFAULT NULL COMMENT '视频类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `shipinxiangqing` longtext COMMENT '视频详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615192190874 DEFAULT CHARSET=utf8 COMMENT='视频信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipinxinxi`
--

LOCK TABLES `shipinxinxi` WRITE;
/*!40000 ALTER TABLE `shipinxinxi` DISABLE KEYS */;
INSERT INTO `shipinxinxi` VALUES (21,'2021-03-08 08:12:44','视频名称1','视频类型1','http://localhost:8080/jspm6goml/upload/shipinxinxi_fengmian1.jpg','','视频详情1',2,2,'2021-03-08 16:28:22',4),(22,'2021-03-08 08:12:44','视频名称2','视频类型2','http://localhost:8080/jspm6goml/upload/shipinxinxi_fengmian2.jpg','','视频详情2',2,2,'2021-03-08 16:12:44',2),(23,'2021-03-08 08:12:44','视频名称3','视频类型3','http://localhost:8080/jspm6goml/upload/shipinxinxi_fengmian3.jpg','','视频详情3',3,3,'2021-03-08 16:12:44',3),(24,'2021-03-08 08:12:44','视频名称4','视频类型4','http://localhost:8080/jspm6goml/upload/shipinxinxi_fengmian4.jpg','','视频详情4',4,4,'2021-03-08 16:12:44',4),(25,'2021-03-08 08:12:44','视频名称5','视频类型5','http://localhost:8080/jspm6goml/upload/shipinxinxi_fengmian5.jpg','','视频详情5',5,5,'2021-03-08 16:12:44',5),(26,'2021-03-08 08:12:44','视频名称6','视频类型6','http://localhost:8080/jspm6goml/upload/shipinxinxi_fengmian6.jpg','','视频详情6',6,6,'2021-03-08 16:12:44',6),(1615192190873,'2021-03-08 08:29:50','22','22','http://localhost:8080/jspm6goml/upload/1615192179079.jpg','http://localhost:8080/jspm6goml/upload/1615192181829.mp4','22222<img src=\"http://localhost:8080/jspm6goml/upload/1615192188597.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm6goml/upload/1615192188597.jpg\">\r\n',0,0,NULL,0);
/*!40000 ALTER TABLE `shipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615191980927 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615191980926,'2021-03-08 08:26:20',11,21,'shipinxinxi','视频名称1','http://localhost:8080/jspm6goml/upload/shipinxinxi_fengmian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','238jdpf1cyq48iwyk27ytexzditiek9q','2021-03-08 08:26:15','2021-03-08 09:26:15'),(2,1,'abo','users','管理员','t8pfkfrsxbi7h7ok0au86d84w8ohmq24','2021-03-08 08:28:56','2021-03-08 09:28:57');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-08 08:12:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615192218473 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (31,'2021-03-08 08:12:44','公告标题1','公告类型1','http://localhost:8080/jspm6goml/upload/xitonggonggao_tupian1.jpg','内容1','2021-03-08'),(32,'2021-03-08 08:12:44','公告标题2','公告类型2','http://localhost:8080/jspm6goml/upload/xitonggonggao_tupian2.jpg','内容2','2021-03-08'),(33,'2021-03-08 08:12:44','公告标题3','公告类型3','http://localhost:8080/jspm6goml/upload/xitonggonggao_tupian3.jpg','内容3','2021-03-08'),(34,'2021-03-08 08:12:44','公告标题4','公告类型4','http://localhost:8080/jspm6goml/upload/xitonggonggao_tupian4.jpg','内容4','2021-03-08'),(35,'2021-03-08 08:12:44','公告标题5','公告类型5','http://localhost:8080/jspm6goml/upload/xitonggonggao_tupian5.jpg','内容5','2021-03-08'),(36,'2021-03-08 08:12:44','公告标题6','公告类型6','http://localhost:8080/jspm6goml/upload/xitonggonggao_tupian6.jpg','内容6','2021-03-08'),(1615192218472,'2021-03-08 08:30:17','33','33','http://localhost:8080/jspm6goml/upload/1615192211200.jpg','<img src=\"http://localhost:8080/jspm6goml/upload/1615192216232.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm6goml/upload/1615192216232.jpg\">\r\n','2021-03-08');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615192152278 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-08 08:12:44','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/jspm6goml/upload/1615192074542.jpg','备注1'),(12,'2021-03-08 08:12:44','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/jspm6goml/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-03-08 08:12:44','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/jspm6goml/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-03-08 08:12:44','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/jspm6goml/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-03-08 08:12:44','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/jspm6goml/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-03-08 08:12:44','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/jspm6goml/upload/yonghu_zhaopian6.jpg','备注6'),(1615192152277,'2021-03-08 08:29:12','11','11','11','男','13800138000','','http://localhost:8080/jspm6goml/upload/1615192151575.jpg','');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09 15:00:30
