-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmish6s
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614223459865 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-02-25 03:17:49',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-02-25 03:17:49',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-02-25 03:17:49',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-02-25 03:17:49',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-02-25 03:17:49',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-02-25 03:17:49',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614223459864,'2021-02-25 03:24:19',1614223406064,'江西省赣州市于都县黄麟乡官兵山','张三','13800000000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'lvyoujingdian' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614223490199 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1614223490198,'2021-02-25 03:24:49','lvyoujingdian',1614223406064,1614223276388,'黄石山公园景区','http://localhost:8080/jspmish6s/upload/1614223242994.jpeg',1,288,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=1614223560219 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (31,'2021-02-25 03:17:49',1,1,'提问1','回复1',1),(32,'2021-02-25 03:17:49',2,2,'提问2','回复2',2),(33,'2021-02-25 03:17:49',3,3,'提问3','回复3',3),(34,'2021-02-25 03:17:49',4,4,'提问4','回复4',4),(35,'2021-02-25 03:17:49',5,5,'提问5','回复5',5),(36,'2021-02-25 03:17:49',6,6,'提问6','回复6',6),(1614223560218,'2021-02-25 03:25:59',1614223406064,NULL,'‍在吗\r\n','在的\r\n',0);
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmish6s/upload/1614223359250.jpg'),(2,'picture2','http://localhost:8080/jspmish6s/upload/1614223369995.jpg'),(3,'picture3','http://localhost:8080/jspmish6s/upload/1614223382681.png'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslvyoujingdian`
--

DROP TABLE IF EXISTS `discusslvyoujingdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614223481778 DEFAULT CHARSET=utf8 COMMENT='旅游景点评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslvyoujingdian`
--

LOCK TABLES `discusslvyoujingdian` WRITE;
/*!40000 ALTER TABLE `discusslvyoujingdian` DISABLE KEYS */;
INSERT INTO `discusslvyoujingdian` VALUES (101,'2021-02-25 03:17:49',1,1,'评论内容1','回复内容1'),(102,'2021-02-25 03:17:49',2,2,'评论内容2','回复内容2'),(103,'2021-02-25 03:17:49',3,3,'评论内容3','回复内容3'),(104,'2021-02-25 03:17:49',4,4,'评论内容4','回复内容4'),(105,'2021-02-25 03:17:49',5,5,'评论内容5','回复内容5'),(106,'2021-02-25 03:17:49',6,6,'评论内容6','回复内容6'),(1614223481777,'2021-02-25 03:24:41',1614223276388,1614223406064,'测试',NULL);
/*!40000 ALTER TABLE `discusslvyoujingdian` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1614223539634 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (41,'2021-02-25 03:17:49','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(42,'2021-02-25 03:17:49','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(43,'2021-02-25 03:17:49','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(44,'2021-02-25 03:17:49','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(45,'2021-02-25 03:17:49','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(46,'2021-02-25 03:17:49','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1614223526473,'2021-02-25 03:25:26','旅游论坛','<p>旅游论坛旅游论坛旅游论坛旅游论坛旅游论坛</p>',0,1614223406064,'001','开放'),(1614223539633,'2021-02-25 03:25:38',NULL,'更贴/回帖',1614223526473,1614223406064,'001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyoujingdian`
--

DROP TABLE IF EXISTS `lvyoujingdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdian` varchar(200) DEFAULT NULL COMMENT '景点',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `jijie` varchar(200) DEFAULT NULL COMMENT '季节',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jiaotong` varchar(200) DEFAULT NULL COMMENT '交通',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kaiyuan` varchar(200) DEFAULT NULL COMMENT '开园',
  `guanyuan` varchar(200) DEFAULT NULL COMMENT '关园',
  `jieshao` longtext COMMENT '介绍',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614223276389 DEFAULT CHARSET=utf8 COMMENT='旅游景点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyoujingdian`
--

LOCK TABLES `lvyoujingdian` WRITE;
/*!40000 ALTER TABLE `lvyoujingdian` DISABLE KEYS */;
INSERT INTO `lvyoujingdian` VALUES (21,'2021-02-25 03:17:49','景点1','1A','春季','自然景观','正常','http://localhost:8080/jspmish6s/upload/lvyoujingdian_fengmian1.jpg','开园1','关园1','介绍1','详情1',1,1,'2021-02-25 11:17:49',1,99.9,1,1,'宇宙银河系地球1号'),(22,'2021-02-25 03:17:49','景点2','1A','春季','自然景观','正常','http://localhost:8080/jspmish6s/upload/lvyoujingdian_fengmian2.jpg','开园2','关园2','介绍2','详情2',2,2,'2021-02-25 11:17:49',2,99.9,2,2,'宇宙银河系地球2号'),(23,'2021-02-25 03:17:49','景点3','1A','春季','自然景观','正常','http://localhost:8080/jspmish6s/upload/lvyoujingdian_fengmian3.jpg','开园3','关园3','介绍3','详情3',3,3,'2021-02-25 11:17:49',3,99.9,3,3,'宇宙银河系地球3号'),(24,'2021-02-25 03:17:49','景点4','1A','春季','自然景观','正常','http://localhost:8080/jspmish6s/upload/lvyoujingdian_fengmian4.jpg','开园4','关园4','介绍4','详情4',4,4,'2021-02-25 11:17:49',4,99.9,4,4,'宇宙银河系地球4号'),(25,'2021-02-25 03:17:49','景点5','1A','春季','自然景观','正常','http://localhost:8080/jspmish6s/upload/lvyoujingdian_fengmian5.jpg','开园5','关园5','介绍5','详情5',5,5,'2021-02-25 11:17:49',5,99.9,5,5,'宇宙银河系地球5号'),(26,'2021-02-25 03:17:49','景点6','1A','春季','自然景观','正常','http://localhost:8080/jspmish6s/upload/lvyoujingdian_fengmian6.jpg','开园6','关园6','介绍6','详情6',6,6,'2021-02-25 11:17:49',6,99.9,6,6,'宇宙银河系地球6号'),(1614223276388,'2021-02-25 03:21:15','黄石山公园景区','4A','全年','自然景观','畅通','http://localhost:8080/jspmish6s/upload/1614223242994.jpeg','早上7点','晚上10点','黄石山公园简介测试','黄石山公园简介测试<img src=\"http://localhost:8080/jspmish6s/upload/1614223274455.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmish6s/upload/1614223274455.jpg\">\r\n',1,0,'2021-02-25 11:25:07',6,288,114.279,27.2555,'江西省吉安市安福县彭坊乡');
/*!40000 ALTER TABLE `lvyoujingdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614223336081 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-02-25 03:17:49','标题1','简介1','http://localhost:8080/jspmish6s/upload/news_picture1.jpg','内容1'),(92,'2021-02-25 03:17:49','标题2','简介2','http://localhost:8080/jspmish6s/upload/news_picture2.jpg','内容2'),(93,'2021-02-25 03:17:49','标题3','简介3','http://localhost:8080/jspmish6s/upload/news_picture3.jpg','内容3'),(94,'2021-02-25 03:17:49','标题4','简介4','http://localhost:8080/jspmish6s/upload/news_picture4.jpg','内容4'),(95,'2021-02-25 03:17:49','标题5','简介5','http://localhost:8080/jspmish6s/upload/news_picture5.jpg','内容5'),(96,'2021-02-25 03:17:49','标题6','简介6','http://localhost:8080/jspmish6s/upload/news_picture6.jpg','内容6'),(1614223336080,'2021-02-25 03:22:15','旅游网站公告测试','旅游网站公告测试旅游网站公告测试旅游网站公告测试旅游网站公告测试','http://localhost:8080/jspmish6s/upload/1614223322300.jpeg','编辑器可传文字/图片<img src=\"http://localhost:8080/jspmish6s/upload/1614223333646.jpeg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmish6s/upload/1614223333646.jpeg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'lvyoujingdian' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614223494184 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1614223494183,'2021-02-25 03:24:53','202122511244821570023','lvyoujingdian',1614223406064,1614223276388,'黄石山公园景区','http://localhost:8080/jspmish6s/upload/1614223242994.jpeg',1,288,288,288,288,1,'已发货','江西省赣州市于都县黄麟乡官兵山');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1614223475959 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614223475958,'2021-02-25 03:24:34',1614223406064,1614223276388,'lvyoujingdian','黄石山公园景区','http://localhost:8080/jspmish6s/upload/1614223242994.jpeg');
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','mkms6aho0ikfdi8g7cmkrc08hsxdx7jv','2021-02-25 03:18:46','2021-02-25 04:26:13'),(2,1614223406064,'001','yonghu','用户','3zdtigkjbyjvtuh6it6b4bdlb1cuuckm','2021-02-25 03:23:33','2021-02-25 04:23:33');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-25 03:17:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614223406065 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-25 03:17:49','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/jspmish6s/upload/yonghu_zhaopian1.jpg',100),(12,'2021-02-25 03:17:49','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/jspmish6s/upload/yonghu_zhaopian2.jpg',100),(13,'2021-02-25 03:17:49','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/jspmish6s/upload/yonghu_zhaopian3.jpg',100),(14,'2021-02-25 03:17:49','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/jspmish6s/upload/yonghu_zhaopian4.jpg',100),(15,'2021-02-25 03:17:49','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/jspmish6s/upload/yonghu_zhaopian5.jpg',100),(16,'2021-02-25 03:17:49','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/jspmish6s/upload/yonghu_zhaopian6.jpg',100),(1614223406064,'2021-02-25 03:23:26','001','001','张三','男',23,'13800000000','123@qq.com','http://localhost:8080/jspmish6s/upload/1614223425484.jpg',9711);
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

-- Dump completed on 2021-02-25 13:18:01
