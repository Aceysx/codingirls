-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: codingirls
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.10.1

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
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` VALUES (1,'development'),(2,'designer'),(3,'marketing'),(4,'product'),(5,'manager');
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job`
--

DROP TABLE IF EXISTS `t_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `description` text,
  `how_to_apply` text,
  `category_id` varchar(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `is_public` int(11) DEFAULT NULL,
  `is_expiry` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_type_id` varchar(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `expiry_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job`
--

LOCK TABLES `t_job` WRITE;
/*!40000 ALTER TABLE `t_job` DISABLE KEYS */;
INSERT INTO `t_job` VALUES (1,'Java初级开发','Voyageone','职位描述：\n\n1、进行电商系统开发，店铺装修，产品上新，人员对接等\n\n2、经理安排的其他任务\n\n\n\n任职资格：\n\n1、计算机及相关专业，211或985本科以上学历（熟悉Java，了解CSS，HTML，aql等）；\n\n2、基础课程扎实，有实践性项目或者自己开发过工具优先，\n\n3、刻苦勤奋，善钻研和创新，喜欢新技术\n\n4、热爱电子商务行业\n\n5、具有很强的研究意识和探索精神\n\n\n\n工作地址\n\n- 郭守敬路498号20号楼101','郭守敬路498号20号楼101','1','上海','中国',1,0,33,'1','2017-09-12',NULL),(2,'Java开发工程师','随手科技集团','\n2、负责数据产品的研发，如数据分析平台等后端开发工作。\n\n\n\n任职要求：\n\n1、统招本科及以上学历，计算机软件等相关专业；\n\n2、热爱java web 编程，具备1年经验以上相关工作经验；\n\n3、java基础扎实，熟悉主流开发框架 如struts 2,springmvc；\n\n','深圳 - 南山区 - 科技园 - 科技园金蝶软件园B栋10楼','2','深圳','中国',1,0,33,'1','2017-09-14',NULL),(3,'Java开发工程师1','随手科技集团','  ',NULL,'3','深圳','中国',1,0,33,'3','2017-09-14',NULL),(4,'Java开发工程师1','Voyageone','  ',NULL,'2','上海','中国',1,0,33,'2','2017-09-20',NULL),(5,'Java开发工程师1','Voyageone','  ',NULL,'2','上海','中国',1,0,33,'3','2017-09-14',NULL),(19,'软件开发工程师 ','ThoughtWorks','## ThoughtWorks需要你：\n\n用高质量的代码帮助全球顶尖客户攻克业务瓶颈。构建高可用和高灵活的系统框架，敏捷支撑客户业务的多变与指数级增长。践行自动化测试与持续集成，探索前沿的自动化部署方案，一起实现业界一流的交付体验。用匠心精神攻难克艰，突围技术难题。我们的客户包括：中国银行、REA Group、 Vodafone、 MYER、顺丰速递……你在用技术，与他们一起改变世界\n\nThoughtWorks期望你：\n1. 至少掌握一门语言（如C/C++, Java, C#,  Javascript, Ruby等）\n2. 学习能力强，动手能力强，主动学习，有好奇心，不耻下问，愿意探求技术背后的原理\n3. 善于沟通，能够成为一名积极，乐于分享的团队成员\n4. 做过项目、参加过比赛、自己做过小应用者优先\n5. 了解WEB应用开发，及对应的WEB开发框架以及常用第三方类库者优先；掌握Git等SCM工具，拥有并使用github账户者优先\n6. 英文（为加分项）','### 请勿通过此渠道投递简历，通过以下网址进行网申：\n\nhttp://join.thoughtworks.cn/','1','西安','China',0,0,33,'3','2017-09-21','2017-09-23'),(20,'销售经理 ','安存科技营销一部招聘','## 岗位要求： \n\n1. 独立销售工作经历3年以上，具有方案类行业营销经验（有银行、电力、运营商或其他大型行业项目销售经验者优先）。\n\n2. 具有一定的IT、通讯等信息行业技术背景，对互联网有一定了解。\n\n3.能适应经常出差的情况；\n\n\n\n岗位职责：\n\n1、根据部门的年度销售计划，积极拓展业务；\n\n2、负责行业市场的具体开拓和客户维护，执行自己的年度销售任务，按时完成销售目标；\n\n3、遵守并执行公司及部门管理的各项规章制度；\n\n4、建立客户关系，挖掘用户需求，协助处理客户投诉，跟踪处理结果，提升客户满意度；\n\n5、及时掌握市场动态，做好行业需求调查、市场分析、预测；\n\n6、独立完成客户引导、应标、商务谈判与协议签订等工作；\n\n7、协助市场部收集客户对公司品牌的反馈意见，及竞争品牌、竞争对手的相关信息；\n\n8、完成上级领导交办的其他事项。\n\n9、按公司财务制度要求，及时回收应收账款，并作为收款责任第一人。','杭州 - 拱墅区 - 莫干山路972号泰嘉园A座','1','西安','China',1,0,33,'3','2017-09-21','2017-09-29'),(34,'研发工程师3','西安极数宝开发部招聘3','___职位描述：___\n\n![hah](https://static.lagou.com/i/image2/M00/00/F7/CgoB5lm95rOAZNdKAAUk5GI-OpQ750.JPG)\n1. java,js开发\n2. 数据库，包括NoSQL数据库（redis, etc.），SQL数据库（db2 or mysql）\n数据分析建模（实时分析，离线分析）\n架构设计（概念视图，组建视图，技术视图，部署视图）\n大数据平台设计，spark，Hadoop生态圈相关组件应用（非必需）\n微服务，容器化管理（比如docker）（非必需）\nuser scenarios --> use cases\n代码框架搭建\n项目进度管控\n代码review，项目质量验收3','## 工作地址\n\n西安 - 雁塔区 - 文景路 - 曲江金融中心12063','4','西安3','Barbados',1,0,33,'3','2017-09-21','2017-09-23'),(36,'Web前端开发工程师','西安轩承网络科技有限公司','__职位描述：__\n\n__岗位要求：__\n\n1、计算机软件及相关专业，大学本科及以上学历；\n\n2、熟悉ES6、HTML、CSS、JavaScript、DOM、Ajax、JSON等开发技术，了解其在不同浏览器上的兼容情况及性能优化知识；\n\n3、熟悉jQuery、BootStrap等前端框架；\n\n4、两年以上相关工作经验；\n5、具有良好的学习能力，强烈的工作责任心、良好的沟通能力和团队合作精神；\n\n6、有过电商应用开发经验者优先。\n','公司信息\n  ‘车美达’是西安轩承网络科技有限公司&西安轩途网络科技有限公司联合打造的汽车行业互联网+项目。营运团队位于西安市经济技术开发区凤城八路，技术研发中心位于西安高新区高科广场。\n   公司是由专业的汽车服务、电子商务团队组成的综合性互联网公司，经营多元化的互联网业务。自成立以来，公司建立了领先的消费电子支付系统、网络交易平台，近几年更积极开拓无线应用、移动支付应用和汽车服务应用，同时致力于智能硬件在汽车行业信息化建设中的研究与应用。\n   车美达（www.chemeida.com）是轩承网络旗下移动互联网孵化项目，定位于汽车后市场的本地化汽车生活服务平台，平台采用“B-S-C”即线上交易与线下服务相结合的商业模式，通过“数据交互中心？+？多元智能终端 +移动支付”的架构，联合众多优质服务商，为广大车主提供车与生活相关的全方位服务。秉承“客户至上，服务为先”的理念，通过先进的运营管理模式，帮助上游客户提升品牌价值，帮助渠道伙伴提高经营效益，帮助车主用户获得更加优质的服务。\n   车美达服务网点遍布西安地区，并与数十家知名企业进行深度合作，为超过10万车主用户提供优质服务。目前业务在不断迅速发展，在西安地区已拥有各类服务机构超300家。\n\n公司地址：西安市未央区凤城八路（市政府正对面）风景御园19号写字楼912室，\n乘车路线：\n1. 乘坐地铁2号线（行政中心站-西南B2口向西300米）\n2.公交线路： 163路、207路、228路、230路、267路、336路、50路、530路、618路、619路、702路、723路行政中心站下车\n\n车美达事业部招聘热线：029-87800827 400-998-6908','3','xi\'an','China',1,0,34,'3','2017-09-22','2017-09-11');
/*!40000 ALTER TABLE `t_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job_tag`
--

DROP TABLE IF EXISTS `t_job_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_job_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job_tag`
--

LOCK TABLES `t_job_tag` WRITE;
/*!40000 ALTER TABLE `t_job_tag` DISABLE KEYS */;
INSERT INTO `t_job_tag` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,3),(7,18,1),(8,18,2),(9,19,1),(10,19,2),(11,20,3),(12,33,2),(13,33,3),(17,35,1),(18,0,1),(19,0,2),(20,0,3),(23,36,1),(24,36,2);
/*!40000 ALTER TABLE `t_job_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_promo_code`
--

DROP TABLE IF EXISTS `t_promo_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_promo_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_use` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_promo_code`
--

LOCK TABLES `t_promo_code` WRITE;
/*!40000 ALTER TABLE `t_promo_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_promo_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tag`
--

DROP TABLE IF EXISTS `t_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tag`
--

LOCK TABLES `t_tag` WRITE;
/*!40000 ALTER TABLE `t_tag` DISABLE KEYS */;
INSERT INTO `t_tag` VALUES (1,'html',8,1,1),(2,'JavaScript',8,1,1),(3,'CSS',4,1,1);
/*!40000 ALTER TABLE `t_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_type`
--

DROP TABLE IF EXISTS `t_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_type`
--

LOCK TABLES `t_type` WRITE;
/*!40000 ALTER TABLE `t_type` DISABLE KEYS */;
INSERT INTO `t_type` VALUES (1,'Volunteer'),(2,'Permanent'),(3,'Freelance'),(4,'Contract');
/*!40000 ALTER TABLE `t_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `activation_code` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `company_address` varchar(200) DEFAULT NULL,
  `company_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (31,'aceysx@163.com','111111',1,'d231ff23704c45b392060f916057ace9','Eurasia','陕西西安','IT'),(33,'748890247@qq.com','111111',1,'255fa884afdf46dc8124e67a6599f6bd','Eurasia11','陕西西安','IT'),(34,'977986310@qq.com','CABB948233af',1,'8aa74759f4bb48b8b864e86d0b19c704',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-22 14:23:33
