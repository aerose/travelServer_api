-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `adminId` int(11) AUTO_INCREMENT NOT NULL COMMENT '管理员主键',
  `adminAccount` varchar(15) NOT NULL COMMENT '管理员账号',
  `adminPassword` varchar(15) NOT NULL COMMENT '管理员密码',
  `adminName` varchar(15) DEFAULT NULL COMMENT '管理员昵称',
  `adminDuty` varchar(31) NOT NULL COMMENT '管理员职责',
  `adminDescription` varchar(63) NOT NULL COMMENT '权限说明',
  `adminIfFreeze` char(2) NOT NULL COMMENT '是否冻结',
  `adminCreateTime` datetime NOT NULL COMMENT '添加时间',
  `adminChangeTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'root','1234','小明','主管理员','所有权限','F','2022-09-03 08:00:00','2022-09-03 08:00:00'),(2,'1234','a1234','xiaohua','景点管理员','景点，线路增删改','F','2022-09-03 08:00:00','2022-09-03 08:00:00'),(3,'a1234','123456','a1234','用户管理员','用户增删改查','F','2022-09-03 08:00:00','2022-09-03 08:00:00'),(4,'1234a','12345a',NULL,'用户管理员','用户增删改查','T','2022-09-03 08:00:00','2022-09-03 08:00:00'),(5,'11111','11111',NULL,'用户管理员','用户增删改查','T','2022-09-03 08:00:00','2022-09-03 08:00:00');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remark` (
  `remarkId` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论主键',
  `userId` int(11) NOT NULL COMMENT '评论人主键',
  `scenicId` int(11) NOT NULL COMMENT '景点主键',
  `userName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论人昵称',
  `remarkDetails` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `remarkCreateTime` datetime NOT NULL COMMENT '添加时间',
  `remarkChangeTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`remarkId`),
  KEY `scenicIdr` (`scenicId`),
  KEY `userIdr` (`userId`),
  CONSTRAINT `scenicIdr` FOREIGN KEY (`scenicId`) REFERENCES `scenic` (`scenicId`) ON UPDATE CASCADE,
  CONSTRAINT `userIdr` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remark`
--

LOCK TABLES `remark` WRITE;
/*!40000 ALTER TABLE `remark` DISABLE KEYS */;
INSERT INTO `remark` VALUES (1,1,1,'小明','秦始皇陵兵马俑是闻名中外的世界八大奇迹，是初到西安的必去之地，是世界最大的地下军事博物馆','2022-09-03 08:00:00','2022-09-03 08:00:00'),(2,2,1,'rose','今天叁观了秦始皇兵马俑，为秦皇的霸气和秦人巧夺天工的技艺赞叹，先人的智慧2000多年后仍然令后人钦佩不已。','2022-09-03 08:00:00','2022-09-03 08:00:00'),(3,3,2,'XiaoHua','自古华山一条路，夜爬华山我最酷 ','2022-09-03 08:00:00','2022-09-03 08:00:00'),(4,4,3,NULL,'山姿水态冠秦疆，美色当初醉李唐。只把风怀传妙丽，依然韵致舞霓裳。游过华清池让我对它有了新的认识。美丽古老的传说，千古流传的诗句回荡在耳畔久久不能散去。值得一来！','2022-09-03 08:00:00','2022-09-03 08:00:00'),(5,5,4,NULL,'唐宫乐舞绕青龙，','2022-09-03 08:00:00','2022-09-03 08:00:00');
/*!40000 ALTER TABLE `remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `routeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '线路主键',
  `scenicId` int(11) NOT NULL COMMENT '景点主键',
  `routeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '线路名称',
  `routeIntroduction` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '线路介绍',
  `routeTime` time DEFAULT NULL COMMENT '耗时',
  `routeCreateTime` datetime NOT NULL COMMENT '添加时间',
  `routeChangeTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`routeId`),
  KEY `scenicId` (`scenicId`),
  CONSTRAINT `scenicId` FOREIGN KEY (`scenicId`) REFERENCES `scenic` (`scenicId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT  CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,2,'华山经典路线','玉泉院→“自古华山一条路”路段→爬苍龙岭→东/西/南/中4峰，登华山的最佳路线，是最老最经典也是沿途景点最多的线路，有“自古华山一条路”的美称。 如果不是住在玉泉路附近，可以在华山游客中心乘免费摆渡车到达玉泉院 沿途景点有，玉泉院、鱼石、五里关、希夷峡、沙萝坪、药王洞、十八盘、毛女洞、云门、青柯坪、九天宫、千尺幢、百尺峡、惊心石、老君犁沟','06:00:00','2022-09-03 08:00:00','2022-09-03 08:00:00'),(2,2,'华山北峰索道路线','华山游客中心→乘北峰索道→北峰→爬苍龙岭→东/西/南/中4峰 从华山游客中心坐景区大巴（20元/人）到北峰上山索道处，到北峰后再从苍龙岭往上爬。旅游团基本都是走该路线。','08:00:00','2022-09-03 08:00:00','2022-09-03 08:00:00'),(3,1,'秦始皇陵经典一天路线','秦始皇兵马俑博物馆——秦始皇主题馆——丽山园',NULL,'2022-09-03 08:00:00','2022-09-03 08:00:00'),(4,3,'华清池线路','梨园 > 香凝池 > 长汤 > 少阳汤 > 碑林 > 按歌台 > 西面 碑刻 > 东面 碑刻 >荷花池 >阿房宫长廊 > 碑亭 > 棋亭 > 五间厅 > 荷花阁 > 唐御汤遗址博物馆 > 陈列馆 > 九龙湖> 芙蓉湖风景区 > 杨玉环奉诏华清宫壁画',NULL,'2022-09-03 08:00:00','2022-09-03 08:00:00'),(5,4,'大唐芙蓉园演出线路','御苑门外广场——银桥飞瀑/紫云楼南广场/胡店/彩霞长廊——紫云楼北广场','06:00:00','2022-09-03 08:00:00','2022-09-03 08:00:00');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenic`
--

DROP TABLE IF EXISTS `scenic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenic` (
  `scenicId` int(11) NOT NULL AUTO_INCREMENT COMMENT '景点主键',
  `scenicName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '景点名称',
  `scenicIntroduction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '介绍',
  `scenicPrice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '门票价格',
  `scenicCity` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '城市',
  `scenicLocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详细位置',
  `scenicOpenTime` time DEFAULT NULL COMMENT '营业开始时间',
  `scenicCloseTime` time DEFAULT NULL COMMENT '关闭时间',
  `scenicPic` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '景点图片',
  `scenicGrade` varchar(31) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '级别',
  `scenicClass` varchar(31) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型',
  `scenicStatus` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `scenicCreateTime` datetime NOT NULL COMMENT '创建时间',
  `scenicChangeTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`scenicId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenic`
--

LOCK TABLES `scenic` WRITE;
/*!40000 ALTER TABLE `scenic` DISABLE KEYS */;
INSERT INTO `scenic` VALUES (1,'秦始皇陵兵马俑博物馆','秦始皇兵马俑博物馆位于陕西省西安市临潼区秦陵镇，成立于1975年11月，原为秦始皇兵马俑筹建处，于1979年10月1日正式开馆，建于临潼县东7.5公里的骊山北麓的秦始皇帝陵兵马俑坑遗址上，西距西安37.5公里；和丽山园合称秦始皇帝陵博物院。','120.5（不分淡旺季）','陕西省西安市','秦始皇陵东1.5公里处','08:30:00','18:00:00','1271a1d9-a2b1-4c08-b947-8e66b5ae3836.jpg','AAAAA','博物馆','开放','2022-09-03 08:00:00','2022-09-03 08:00:00'),(2,'华山',NULL,'160（旺季） 100（淡季）','山东省济南市','历城区 东北，位于 黄河 以南， 小清河 以北，将军路以东',NULL,NULL,NULL,'AAAAA','风景区','开放','2022-09-03 08:00:00','2022-09-03 08:00:00'),(3,'华清宫','华清宫背山面渭，倚骊峰山势而筑，规模宏大，建筑壮丽，楼台馆殿，遍布骊山上下。初名“汤泉宫”，后改名温泉宫。','122（不分淡旺季）','陕西省西安市临潼区',NULL,'07:30:00','19:00:00','bee2628a-912a-4bf5-a8f6-b264c7ce2115.jpg','AAAAA','历史建筑','暂时关闭（疫情）','2022-09-03 08:00:00','2022-09-03 08:00:00'),(4,'大唐芙蓉园','在原唐代芙蓉园遗址以北，仿照唐代皇家园林式样重新建造的，是中国第一个全方位展示盛唐风貌的大型皇家园林式文化主题公园，',NULL,'陕西省西安市曲江开发区',NULL,'09:00:00','22:00:00',NULL,NULL,NULL,NULL,'2022-09-03 08:00:00','2022-09-03 08:00:00'),(5,'陕西历史博物馆','中国第一座大型现代化国家级博物馆，首批“AAAA”级旅游景点，被誉为“古都明珠，华夏宝库”。',NULL,'陕西省西安市雁塔区',NULL,'09:00:00','17:30:00',NULL,NULL,NULL,NULL,'2022-09-03 08:00:00','2022-09-03 08:00:00');
/*!40000 ALTER TABLE `scenic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `together`
--

DROP TABLE IF EXISTS `together`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `together` (
  `togetherId` int(11) NOT NULL AUTO_INCREMENT COMMENT '结伴主键',
  `scenicId` int(11) NOT NULL COMMENT '景点主键',
  `userId` int(15) NOT NULL COMMENT '发起人账号',
  `userContact` varchar(31) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发起人联系方式',
  `togetherDetails` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '结伴内容',
  `togetherStartTime` datetime NOT NULL COMMENT '结伴开始时间',
  `togetherEndTime` datetime NOT NULL COMMENT '结伴结束时间',
  `togetherCreateTime` datetime NOT NULL COMMENT '添加时间',
  `togetherChangeTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`togetherId`),
  KEY `scenicIdt` (`scenicId`),
  KEY `userIdt` (`userId`),
  CONSTRAINT `scenicIdt` FOREIGN KEY (`scenicId`) REFERENCES `scenic` (`scenicId`) ON UPDATE CASCADE,
  CONSTRAINT `userIdt` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT  CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `together`
--

LOCK TABLES `together` WRITE;
/*!40000 ALTER TABLE `together` DISABLE KEYS */;
INSERT INTO `together` VALUES (1,1,1,'15068611111','我将于明日去秦始皇陵游览','2022-09-03 08:00:00','2022-09-03 18:00:00','2022-09-03 08:00:00','2022-09-03 08:00:00'),(2,2,2,'97968@qq.com',NULL,'2022-09-03 08:00:00','2022-09-03 18:00:00','2022-09-03 08:00:00','2022-09-03 08:00:00'),(3,3,3,NULL,'有人明天一起去华清池游玩的不','2022-09-03 08:00:00','2022-09-03 14:00:00','2022-09-03 08:00:00','2022-09-03 08:00:00'),(4,4,4,NULL,'我将去大唐芙蓉园游玩','2022-09-03 08:00:00','2022-09-03 18:00:00','2022-09-03 08:00:00','2022-09-03 08:00:00'),(5,5,5,NULL,'(NULL)我将去陕西历史博物馆','2022-09-03 09:00:00','2022-09-03 18:00:00','2022-09-03 08:00:00','2022-09-03 08:00:00');
/*!40000 ALTER TABLE `together` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `userAccount` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户账号',
  `userPassword` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户密码',
  `userName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `userSex` char(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `userPhone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `userAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `userEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `userNation` varchar(31) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '民族',
  `userCreateTime` datetime NOT NULL COMMENT '注册时间',
  `userChangeTime` datetime NOT NULL COMMENT '修改时间',
  `userRemarks` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'979687','123456','小明','M','15068611111','浙江省台州市温岭市XX镇','9796@qq.com','汉','2022-09-03 08:00:00','2022-09-03 08:00:00','注册用户'),(2,'rose_18','a123456','rose','F',NULL,'山西省','wer@163.com','汉','2022-09-03 08:00:00','2022-09-03 08:00:00',NULL),(3,'qwer23','123456','XiaoHua',NULL,NULL,'陕西省西安市',NULL,NULL,'2022-09-03 08:00:00','2022-09-03 08:00:01',NULL),(4,'b123456','123456',NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-03 08:00:00','2022-09-03 08:00:02',NULL),(5,'t123456','123456',NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-03 08:00:00','2022-09-03 08:00:03',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-04 23:40:12
