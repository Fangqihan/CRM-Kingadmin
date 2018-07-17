-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: crm_db
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `合同`
--

DROP TABLE IF EXISTS `合同`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `合同` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `content` longtext NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `合同`
--

LOCK TABLES `合同` WRITE;
/*!40000 ALTER TABLE `合同` DISABLE KEYS */;
INSERT INTO `合同` VALUES (1,'线下合同A','甲方：\r\n\r\n　　公司地址：\r\n\r\n　　项目负责人：\r\n\r\n　　电话：\r\n\r\n　　乙方：\r\n\r\n　　公司地址：\r\n\r\n　　项目负责人：\r\n\r\n　　电话：\r\n\r\n　　甲乙双方依据《中华人民共和国合同法》，遵循平等、自愿、公平和诚实信用的原则，就乙方为甲方提供活动服务的事宜达成如下协议：\r\n\r\n　　一、培训事宜\r\n\r\n　　1.课程名称：详见附件一\r\n\r\n　　2.培训地点：客户指定地点\r\n\r\n　　3.培训对象：\r\n\r\n　　二、双方责任和义务\r\n\r\n　　甲方责任：\r\n\r\n　　1、培训前10个工作日与乙方签订培训合同；按照课程要求及时、充分地与乙方进行培训前期沟通，明确培训目的、内容及相关要求；提供培训场地、设施及必要的文具。根据乙方授课要求，提供培训环境布置协助。合同签订后，如因甲方原因，导致培训课程、日期、时间、地点和人数等培训要件发生变化时，甲方均应于开始培训前五个工作日通知乙方；并承担由此带来的不确定性和相关的费用增加；如甲方单方面取消此次培训，乙方有权解除本合同；则甲方需向乙方支付培训总合同额的50%，作为违约金；与乙方协商一致的除外；\r\n\r\n　　2、因不可抗力导致本合同不能履行的，甲方不承担责任；\r\n\r\n　　3、原则上不得安排旁听人，如安排，须征得乙方同意，并承担由此对课程质量的全部影响；有义务对参训学员进行引导，并要求其遵守培训中的秩序要求；为保护乙方知识产权，培训过程中不得进行录音、摄像。如有此类需求须与乙方协商一致，并在合同中注明。\r\n\r\n　　乙方的责任：\r\n\r\n　　1.培训前10个工作日与甲方签订培训合同；\r\n\r\n　　2.按照课程要求及时、充分地与甲方进行培训前期沟通，明确培训目的、内容及相关要求；\r\n\r\n　　3.负责培训课程方案的设计、制定和实施；\r\n\r\n　　4.选派合格的讲师承担培训实施工作；\r\n\r\n　　5.根据授课需要，提供培训环境布置；\r\n\r\n　　6.讲师严格按照培训方案完成教学任务，并能达到甲方的培训目的。\r\n\r\n　　7.合同签订后，如因乙方原因，导致培训课程、日期、时间、地点和人数等培训要件发生变化时，\r\n\r\n　　乙方均应于开始培训前七个工作日通知甲方；并承担由此带来的相关的费用增加；如因乙方单方面原因，无法执行培训，则乙方需向甲方支付培训总合同额的50%，作为违约金；与甲方协商一致的除外；\r\n\r\n　　8.因不可抗力导致本合同不能履行的，乙方不承担责任。\r\n\r\n　　三、合同金额及支付\r\n\r\n　　1.培训费用\r\n\r\n　　按上课人数收费元/人，预算合计RMB元（大写：）\r\n\r\n　　2.付款方式：支票□现金□汇款？\r\n\r\n　　3.付款时间：合同签订后，2011年培训结束后3个工作日内，甲方向乙方结清本合同列明的实际发生的全部费用。乙方为甲方开具足额发票。\r\n\r\n　　4.付款/付款方式：\r\n\r\n　　乙方指定的账户如下，并在支付第二次服务费之前提供全额正式税务发票：请注明。\r\n\r\n　　四、其他约定\r\n\r\n　　1.在双方确定好合同内容的情况下，特殊情况下可以采用传真的方式签订合同即：一方将盖章的合同传真至另一方，另一方盖章传真回，双方确认收到后生效。\r\n\r\n　　2.本协议项下的一切纠纷，如友好协商不成，可提交有管辖权的法院审理。\r\n\r\n　　五、本合同一式肆份，双方各执贰份，具有同等法律效力，双方签字盖章后生效。如有未尽事宜，双方另行商定。\r\n\r\n　　甲方：\r\n\r\n　　乙方：\r\n\r\n　　（盖章）\r\n\r\n　　负责人签字：（盖章）负责人签字：','2018-07-17'),(2,'线下合同B','合作协议书\r\n\r\n金牌教育(甲方):介休名师助学中心(乙方):\r\n\r\n甲方负责人:乙方负责人:\r\n\r\n甲方联系方式:乙方联系方式:\r\n\r\n一、双方的权利和义务\r\n\r\n1、甲方的权利和义务\r\n\r\n①甲方有义务保证对辅导学生的教学质量\r\n\r\n②甲方根据家长和学生需求有权利决定辅导方式,乙方不得干涉。\r\n\r\n③甲方有权利定期对辅导学生和家长进行沟通回访,如发现反馈情况不符合事实,有权利取消合作关系。\r\n\r\n2、乙方的权利和义务\r\n\r\n①乙方有义务及时联系和反馈甲方提供的信息。原则上当天反馈联系情况,无论成否。\r\n\r\n②乙方有权利对甲方的服务进行监督。\r\n\r\n③乙方有权利对甲方的服务进行评定,并决定是否继续合作。如果对金牌教育的服务不满意,可以随时\r\n\r\n取消合作关系。\r\n\r\n二、合作细则\r\n\r\n1、乙方与甲方共同编写广告短信,家长答问,课程设计,招生策划,乙方为甲方选派初中老师团队。\r\n\r\n2、甲方为乙方提供高中老师住宿,高中辅导教室。乙方可付5000元的住宿和教室费。开课两日内付清。\r\n\r\n3、前期招生方案由甲方和乙方共同商讨制定,招生方案由甲乙双方共同执行,初中招生不利,需甲乙双\r\n\r\n方共同探讨解决办法,开课后一周时间,乙方为甲方选派老师不得擅自离开岗位。\r\n\r\n4、如果乙方招生不利,无需甲方住宿和教室,甲方应付乙方前期策划和选派老师的除房租预付款的费用\r\n\r\n5、甲方对乙方推荐的五位初中教师(语数理化英)要开课前说明薪酬即代课费,开课3天内做出评价,\r\n\r\n认为不满意的辞退按说好的代课费给付已上课时,乙方可以再推荐一位同科目教师顶替。3天内甲方没有提出,则乙方认为教师合格,不负责更换教师。如教师离开需推荐顶岗教师,否则按违规处理\r\n\r\n6、甲方对外地初中教师的交通安全要特别重视,为他们提供力所能及的帮助。由于外地初中老师对甲方\r\n\r\n服务不周或代课费没有按提前约定给付导致的教师流失,乙方不负责再推荐教师。\r\n\r\n7、乙方选派教师有义务推广金牌教育北京四中网校网络课程和新学年精品晚辅班。\r\n\r\n三、招生宣传方式\r\n\r\n1、对甲方现有学生进行宣传,利用甲方现有信息对暑假课程进行电销,短信群发等\r\n\r\n2、由甲方制作宣传海报,传单等在各小区发放,设置宣传位;在考试期间在考场附近散发传单对暑期初高中课程进行统一宣传,由乙方承担宣传品制作费用的百分之三十\r\n\r\n3、由乙方向甲方提供选派教师信息,教学成就,方便甲方宣传(例如将乙方教师打造为辅导名师等)\r\n\r\n4、由乙方承担后续宣传费用的百分之三十\r\n\r\n四、收费方式\r\n\r\n1、七年级课程招生,学习数学英语,阅读写作,写字25天共四门600元单科300元\r\n\r\n2、八年级课程招生,学习数学英语物理25天共三门700元单科350元\r\n\r\n3、九年级课程招生,学习数理化英25天共四门1000元单科400元','2018-07-17');
/*!40000 ALTER TABLE `合同` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `学习记录`
--

DROP TABLE IF EXISTS `学习记录`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `学习记录` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` smallint(6) NOT NULL,
  `show_status` smallint(6) NOT NULL,
  `note` longtext,
  `date` date NOT NULL,
  `course_record_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_studyrecord_course_record_id_e3601e93_fk_课程记录_id` (`course_record_id`),
  KEY `crm_studyrecord_student_id_18b0c323_fk_crm_student_id` (`student_id`),
  CONSTRAINT `crm_studyrecord_course_record_id_e3601e93_fk_课程记录_id` FOREIGN KEY (`course_record_id`) REFERENCES `课程记录` (`id`),
  CONSTRAINT `crm_studyrecord_student_id_18b0c323_fk_crm_student_id` FOREIGN KEY (`student_id`) REFERENCES `学生` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `学习记录`
--

LOCK TABLES `学习记录` WRITE;
/*!40000 ALTER TABLE `学习记录` DISABLE KEYS */;
/*!40000 ALTER TABLE `学习记录` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `学生`
--

DROP TABLE IF EXISTS `学生`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `学生` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  CONSTRAINT `crm_student_customer_id_fd3c95de_fk_客户信息_id` FOREIGN KEY (`customer_id`) REFERENCES `客户信息` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `学生`
--

LOCK TABLES `学生` WRITE;
/*!40000 ALTER TABLE `学生` DISABLE KEYS */;
/*!40000 ALTER TABLE `学生` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `学生报名`
--

DROP TABLE IF EXISTS `学生报名`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `学生报名` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_agreed` tinyint(1) NOT NULL,
  `contract_signed_time` datetime(6) DEFAULT NULL,
  `contract_approved` tinyint(1) NOT NULL,
  `contract_approved_time` datetime(6) DEFAULT NULL,
  `class_grade_id` int(11) NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_studentenrollment_customer_id_class_grade_id_ea05a631_uniq` (`customer_id`,`class_grade_id`),
  KEY `crm_studentenrollment_class_grade_id_328a33b3_fk_班_id` (`class_grade_id`),
  KEY `crm_studentenrollment_consultant_id_55b098f1_fk_用户信息_id` (`consultant_id`),
  CONSTRAINT `crm_studentenrollment_class_grade_id_328a33b3_fk_班_id` FOREIGN KEY (`class_grade_id`) REFERENCES `班` (`id`),
  CONSTRAINT `crm_studentenrollment_consultant_id_55b098f1_fk_用户信息_id` FOREIGN KEY (`consultant_id`) REFERENCES `用户信息` (`id`),
  CONSTRAINT `crm_studentenrollment_customer_id_3e0e896d_fk_客户信息_id` FOREIGN KEY (`customer_id`) REFERENCES `客户信息` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `学生报名`
--

LOCK TABLES `学生报名` WRITE;
/*!40000 ALTER TABLE `学生报名` DISABLE KEYS */;
INSERT INTO `学生报名` VALUES (1,0,NULL,0,NULL,3,3,1),(2,0,NULL,0,NULL,2,2,3),(3,0,NULL,0,NULL,2,3,2),(4,0,NULL,0,NULL,1,3,4),(8,0,NULL,0,NULL,2,3,1);
/*!40000 ALTER TABLE `学生报名` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `学生_class_grade`
--

DROP TABLE IF EXISTS `学生_class_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `学生_class_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `classlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_student_class_grade_student_id_classlist_id_d321ccce_uniq` (`student_id`,`classlist_id`),
  KEY `crm_student_class_grade_classlist_id_e6330070_fk_班_id` (`classlist_id`),
  CONSTRAINT `crm_student_class_grade_classlist_id_e6330070_fk_班_id` FOREIGN KEY (`classlist_id`) REFERENCES `班` (`id`),
  CONSTRAINT `crm_student_class_grade_student_id_6b811166_fk_crm_student_id` FOREIGN KEY (`student_id`) REFERENCES `学生` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `学生_class_grade`
--

LOCK TABLES `学生_class_grade` WRITE;
/*!40000 ALTER TABLE `学生_class_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `学生_class_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `客户信息`
--

DROP TABLE IF EXISTS `客户信息`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `客户信息` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `contact_type` int(11) NOT NULL,
  `contact_info` varchar(64) NOT NULL,
  `consult_content` longtext NOT NULL,
  `status` smallint(6) NOT NULL,
  `source` smallint(6) NOT NULL,
  `date` date NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `referral_from_id` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `emergency_contact` varchar(20) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `id_num` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_info` (`contact_info`),
  KEY `客户信息_consultant_id_c15dec6b_fk_用户信息_id` (`consultant_id`),
  KEY `客户信息_referral_from_id_cb9a7c18_fk_客户信息_id` (`referral_from_id`),
  CONSTRAINT `客户信息_consultant_id_c15dec6b_fk_用户信息_id` FOREIGN KEY (`consultant_id`) REFERENCES `用户信息` (`id`),
  CONSTRAINT `客户信息_referral_from_id_cb9a7c18_fk_客户信息_id` FOREIGN KEY (`referral_from_id`) REFERENCES `客户信息` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `客户信息`
--

LOCK TABLES `客户信息` WRITE;
/*!40000 ALTER TABLE `客户信息` DISABLE KEYS */;
INSERT INTO `客户信息` VALUES (1,'方淇韩',0,'1869754235231','就业',0,0,'2018-07-17',2,NULL,19,'1519754235223',0,'423525362362737237'),(2,'陈序',1,'193487384823','就业',0,4,'2018-07-17',3,NULL,30,'193487384823',0,'42212323123123125'),(3,'徐红',2,'122353247273','学习环境',0,2,'2018-07-17',3,NULL,25,'122353247273',1,'4235263612361236123123'),(4,'陈秋实',0,'1212121232','就业',0,1,'2018-07-17',2,NULL,28,'1212121232',0,'4223261898909197332');
/*!40000 ALTER TABLE `客户信息` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `客户信息_consult_course`
--

DROP TABLE IF EXISTS `客户信息_consult_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `客户信息_consult_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerinfo_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `客户信息_consult_course_customerinfo_id_course_id_b71aa4fb_uniq` (`customerinfo_id`,`course_id`),
  KEY `客户信息_consult_course_course_id_985addd1_fk_课程_id` (`course_id`),
  CONSTRAINT `客户信息_consult_course_course_id_985addd1_fk_课程_id` FOREIGN KEY (`course_id`) REFERENCES `课程` (`id`),
  CONSTRAINT `客户信息_consult_course_customerinfo_id_0d0347b3_fk_客户信息_id` FOREIGN KEY (`customerinfo_id`) REFERENCES `客户信息` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `客户信息_consult_course`
--

LOCK TABLES `客户信息_consult_course` WRITE;
/*!40000 ALTER TABLE `客户信息_consult_course` DISABLE KEYS */;
INSERT INTO `客户信息_consult_course` VALUES (4,1,4),(2,2,2),(3,3,3),(5,4,1);
/*!40000 ALTER TABLE `客户信息_consult_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `客户跟踪记录`
--

DROP TABLE IF EXISTS `客户跟踪记录`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `客户跟踪记录` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `status` smallint(6) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `客户跟踪记录_customer_id_dc39b53c_fk_客户信息_id` (`customer_id`),
  KEY `客户跟踪记录_user_id_dbf9b22a_fk_用户信息_id` (`user_id`),
  CONSTRAINT `客户跟踪记录_customer_id_dc39b53c_fk_客户信息_id` FOREIGN KEY (`customer_id`) REFERENCES `客户信息` (`id`),
  CONSTRAINT `客户跟踪记录_user_id_dbf9b22a_fk_用户信息_id` FOREIGN KEY (`user_id`) REFERENCES `用户信息` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `客户跟踪记录`
--

LOCK TABLES `客户跟踪记录` WRITE;
/*!40000 ALTER TABLE `客户跟踪记录` DISABLE KEYS */;
/*!40000 ALTER TABLE `客户跟踪记录` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `校区`
--

DROP TABLE IF EXISTS `校区`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `校区` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `校区`
--

LOCK TABLES `校区` WRITE;
/*!40000 ALTER TABLE `校区` DISABLE KEYS */;
INSERT INTO `校区` VALUES (1,'上海','浦东新区'),(2,'北京','海淀区');
/*!40000 ALTER TABLE `校区` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `班`
--

DROP TABLE IF EXISTS `班`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `班` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` smallint(6) NOT NULL,
  `start_date` date NOT NULL,
  `graduate_date` date DEFAULT NULL,
  `class_type` smallint(6) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `contract_tempalte_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `班_course_id_semester_branch_id_class_type_75092988_uniq` (`course_id`,`semester`,`branch_id`,`class_type`),
  KEY `班_branch_id_d97256ac_fk_crm_branch_id` (`branch_id`),
  KEY `班_contract_tempalte_id_6959fd8e_fk_crm_contracttemplate_id` (`contract_tempalte_id`),
  CONSTRAINT `班_branch_id_d97256ac_fk_crm_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `校区` (`id`),
  CONSTRAINT `班_contract_tempalte_id_6959fd8e_fk_crm_contracttemplate_id` FOREIGN KEY (`contract_tempalte_id`) REFERENCES `合同` (`id`),
  CONSTRAINT `班_course_id_6148550a_fk_课程_id` FOREIGN KEY (`course_id`) REFERENCES `课程` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `班`
--

LOCK TABLES `班` WRITE;
/*!40000 ALTER TABLE `班` DISABLE KEYS */;
INSERT INTO `班` VALUES (1,1,'2018-07-17',NULL,0,1,1,NULL),(2,1,'2018-07-17',NULL,0,2,2,NULL),(3,7,'2018-07-17',NULL,0,1,3,NULL),(4,8,'2018-07-17',NULL,0,1,4,NULL);
/*!40000 ALTER TABLE `班` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `班_teachers`
--

DROP TABLE IF EXISTS `班_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `班_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classlist_id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `班_teachers_classlist_id_userprofile_id_eadc22f3_uniq` (`classlist_id`,`userprofile_id`),
  KEY `班_teachers_userprofile_id_b0e781c0_fk_用户信息_id` (`userprofile_id`),
  CONSTRAINT `班_teachers_classlist_id_f86b112b_fk_班_id` FOREIGN KEY (`classlist_id`) REFERENCES `班` (`id`),
  CONSTRAINT `班_teachers_userprofile_id_b0e781c0_fk_用户信息_id` FOREIGN KEY (`userprofile_id`) REFERENCES `用户信息` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `班_teachers`
--

LOCK TABLES `班_teachers` WRITE;
/*!40000 ALTER TABLE `班_teachers` DISABLE KEYS */;
INSERT INTO `班_teachers` VALUES (1,1,4),(2,2,4),(3,3,6),(4,4,6);
/*!40000 ALTER TABLE `班_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `用户信息`
--

DROP TABLE IF EXISTS `用户信息`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `用户信息` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `用户信息`
--

LOCK TABLES `用户信息` WRITE;
/*!40000 ALTER TABLE `用户信息` DISABLE KEYS */;
INSERT INTO `用户信息` VALUES (1,'pbkdf2_sha256$36000$4psSVj0O6iLK$qCnctnnoVjSud9Zqy7Aut1mq4rNbRYdrN6CoMlktAM4=','2018-07-16 13:44:39.000000',1,'admin','','','',1,1,'2018-07-16 13:35:42.000000'),(2,'pbkdf2_sha256$36000$xYfEUaGcyGIa$3KpiqDaJPsXLAT237ooly+AOp/dtyzjCk3TmSmrUpns=','2018-07-16 13:37:03.000000',0,'kate','','','',0,1,'2018-07-16 13:36:57.000000'),(3,'pbkdf2_sha256$36000$H0Aly8hknxkc$7LfFeaTxMX/OzInZBORPWJ9QfMnkYrawpAt1Rkg+JqQ=',NULL,0,'shanshan','','','',0,1,'2018-07-16 13:37:20.000000'),(4,'pbkdf2_sha256$36000$oRRD044GH3Af$XAhesb4DmJKGC/pTBJvymsaD8xfRR2et//T4eUUUHF8=','2018-07-16 13:40:25.000000',0,'alex','','','',0,1,'2018-07-16 13:37:33.000000'),(5,'pbkdf2_sha256$36000$IgxWNw8d1Ft8$dUpPDXmyzdekT45114lXHCADVNC4OcbLnD1+3B61740=','2018-07-16 13:44:27.000000',0,'bob','','','',0,1,'2018-07-16 13:44:20.000000'),(6,'pbkdf2_sha256$36000$VMDwNiOSOwNK$vyeL+mhLngoaXmoI/nxKricmo3pw/jrlhuE2cxdN2hA=',NULL,0,'ago','','','',0,1,'2018-07-17 02:07:30.000000');
/*!40000 ALTER TABLE `用户信息` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `用户信息_groups`
--

DROP TABLE IF EXISTS `用户信息_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `用户信息_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `用户信息_groups_userprofile_id_group_id_ea4214ed_uniq` (`userprofile_id`,`group_id`),
  KEY `用户信息_groups_group_id_b3ef61bd_fk_auth_group_id` (`group_id`),
  CONSTRAINT `用户信息_groups_group_id_b3ef61bd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `用户信息_groups_userprofile_id_b724b54c_fk_用户信息_id` FOREIGN KEY (`userprofile_id`) REFERENCES `用户信息` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `用户信息_groups`
--

LOCK TABLES `用户信息_groups` WRITE;
/*!40000 ALTER TABLE `用户信息_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `用户信息_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `用户信息_role`
--

DROP TABLE IF EXISTS `用户信息_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `用户信息_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `用户信息_role_userprofile_id_role_id_65cdfde2_uniq` (`userprofile_id`,`role_id`),
  KEY `用户信息_role_role_id_7035bea8_fk_角色_id` (`role_id`),
  CONSTRAINT `用户信息_role_role_id_7035bea8_fk_角色_id` FOREIGN KEY (`role_id`) REFERENCES `角色` (`id`),
  CONSTRAINT `用户信息_role_userprofile_id_a091c7c1_fk_用户信息_id` FOREIGN KEY (`userprofile_id`) REFERENCES `用户信息` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `用户信息_role`
--

LOCK TABLES `用户信息_role` WRITE;
/*!40000 ALTER TABLE `用户信息_role` DISABLE KEYS */;
INSERT INTO `用户信息_role` VALUES (8,1,4),(3,2,3),(2,3,3),(1,4,2),(5,6,2);
/*!40000 ALTER TABLE `用户信息_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `用户信息_user_permissions`
--

DROP TABLE IF EXISTS `用户信息_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `用户信息_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `用户信息_user_permissions_userprofile_id_permission_id_e82df4e0_uniq` (`userprofile_id`,`permission_id`),
  KEY `用户信息_user_permission_permission_id_bbbc86e5_fk_auth_perm` (`permission_id`),
  CONSTRAINT `用户信息_user_permission_permission_id_bbbc86e5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `用户信息_user_permissions_userprofile_id_52e44ade_fk_用户信息_id` FOREIGN KEY (`userprofile_id`) REFERENCES `用户信息` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `用户信息_user_permissions`
--

LOCK TABLES `用户信息_user_permissions` WRITE;
/*!40000 ALTER TABLE `用户信息_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `用户信息_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `缴费记录`
--

DROP TABLE IF EXISTS `缴费记录`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `缴费记录` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_amount` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `enrollment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_paymentrecord_consultant_id_45289fb8_fk_客户信息_id` (`consultant_id`),
  KEY `crm_paymentrecord_enrollment_id_12b6f1b0_fk_crm_stude` (`enrollment_id`),
  CONSTRAINT `crm_paymentrecord_consultant_id_45289fb8_fk_客户信息_id` FOREIGN KEY (`consultant_id`) REFERENCES `客户信息` (`id`),
  CONSTRAINT `crm_paymentrecord_enrollment_id_12b6f1b0_fk_crm_stude` FOREIGN KEY (`enrollment_id`) REFERENCES `学生报名` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `缴费记录`
--

LOCK TABLES `缴费记录` WRITE;
/*!40000 ALTER TABLE `缴费记录` DISABLE KEYS */;
/*!40000 ALTER TABLE `缴费记录` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `菜单`
--

DROP TABLE IF EXISTS `菜单`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `菜单` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url_type` smallint(6) NOT NULL,
  `url_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_menu_name_url_name_045d3a2c_uniq` (`name`,`url_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `菜单`
--

LOCK TABLES `菜单` WRITE;
/*!40000 ALTER TABLE `菜单` DISABLE KEYS */;
INSERT INTO `菜单` VALUES (1,'学生',0,'/student/my_courses'),(2,'讲师',1,'teacher/'),(3,'销售',0,'/crm/consultant/');
/*!40000 ALTER TABLE `菜单` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `角色`
--

DROP TABLE IF EXISTS `角色`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `角色` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `角色`
--

LOCK TABLES `角色` WRITE;
/*!40000 ALTER TABLE `角色` DISABLE KEYS */;
INSERT INTO `角色` VALUES (4,'学生'),(2,'讲师'),(3,'销售');
/*!40000 ALTER TABLE `角色` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `角色_menu`
--

DROP TABLE IF EXISTS `角色_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `角色_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `角色_menu_role_id_menu_id_96d595c0_uniq` (`role_id`,`menu_id`),
  KEY `角色_menu_menu_id_b36c682a_fk_crm_menu_id` (`menu_id`),
  CONSTRAINT `角色_menu_menu_id_b36c682a_fk_crm_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `菜单` (`id`),
  CONSTRAINT `角色_menu_role_id_c216d6b9_fk_角色_id` FOREIGN KEY (`role_id`) REFERENCES `角色` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `角色_menu`
--

LOCK TABLES `角色_menu` WRITE;
/*!40000 ALTER TABLE `角色_menu` DISABLE KEYS */;
INSERT INTO `角色_menu` VALUES (2,2,2),(3,3,3),(4,4,1);
/*!40000 ALTER TABLE `角色_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `课程`
--

DROP TABLE IF EXISTS `课程`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `课程` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `price` smallint(5) unsigned NOT NULL,
  `outline` longtext NOT NULL,
  `period` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `课程`
--

LOCK TABLES `课程` WRITE;
/*!40000 ALTER TABLE `课程` DISABLE KEYS */;
INSERT INTO `课程` VALUES (1,'go语言',16000,'go语言',19000),(2,'python全栈',20000,'python全栈',6),(3,'linux运维',22000,'linux运维',7),(4,'java',18000,'java',18000);
/*!40000 ALTER TABLE `课程` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `课程记录`
--

DROP TABLE IF EXISTS `课程记录`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `课程记录` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_num` smallint(6) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` longtext NOT NULL,
  `has_homework` tinyint(1) NOT NULL,
  `homework` longtext,
  `date` date NOT NULL,
  `class_grade_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `课程记录_day_num_class_grade_id_006e9e81_uniq` (`day_num`,`class_grade_id`),
  KEY `课程记录_class_grade_id_9370a2f5_fk_班_id` (`class_grade_id`),
  KEY `课程记录_teacher_id_de218340_fk_用户信息_id` (`teacher_id`),
  CONSTRAINT `课程记录_class_grade_id_9370a2f5_fk_班_id` FOREIGN KEY (`class_grade_id`) REFERENCES `班` (`id`),
  CONSTRAINT `课程记录_teacher_id_de218340_fk_用户信息_id` FOREIGN KEY (`teacher_id`) REFERENCES `用户信息` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `课程记录`
--

LOCK TABLES `课程记录` WRITE;
/*!40000 ALTER TABLE `课程记录` DISABLE KEYS */;
/*!40000 ALTER TABLE `课程记录` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app02_department`
--

DROP TABLE IF EXISTS `app02_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app02_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `num_of_people` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app02_department`
--

LOCK TABLES `app02_department` WRITE;
/*!40000 ALTER TABLE `app02_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `app02_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 用户信息',6,'add_userprofile'),(17,'Can change 用户信息',6,'change_userprofile'),(18,'Can delete 用户信息',6,'delete_userprofile'),(19,'Can add 校区',7,'add_branch'),(20,'Can change 校区',7,'change_branch'),(21,'Can delete 校区',7,'delete_branch'),(22,'Can add 班',8,'add_classlist'),(23,'Can change 班',8,'change_classlist'),(24,'Can delete 班',8,'delete_classlist'),(25,'Can add 课程',9,'add_course'),(26,'Can change 课程',9,'change_course'),(27,'Can delete 课程',9,'delete_course'),(28,'Can add 课程记录',10,'add_courserecord'),(29,'Can change 课程记录',10,'change_courserecord'),(30,'Can delete 课程记录',10,'delete_courserecord'),(31,'Can add 客户跟踪记录',11,'add_customerfollowup'),(32,'Can change 客户跟踪记录',11,'change_customerfollowup'),(33,'Can delete 客户跟踪记录',11,'delete_customerfollowup'),(34,'Can add 客户信息',12,'add_customerinfo'),(35,'Can change 客户信息',12,'change_customerinfo'),(36,'Can delete 客户信息',12,'delete_customerinfo'),(37,'Can add 角色',13,'add_role'),(38,'Can change 角色',13,'change_role'),(39,'Can delete 角色',13,'delete_role'),(40,'Can add 学生',14,'add_student'),(41,'Can change 学生',14,'change_student'),(42,'Can delete 学生',14,'delete_student'),(43,'Can add 学习记录',15,'add_studyrecord'),(44,'Can change 学习记录',15,'change_studyrecord'),(45,'Can delete 学习记录',15,'delete_studyrecord'),(46,'Can add 菜单',16,'add_menu'),(47,'Can change 菜单',16,'change_menu'),(48,'Can delete 菜单',16,'delete_menu'),(49,'Can add contract template',17,'add_contracttemplate'),(50,'Can change contract template',17,'change_contracttemplate'),(51,'Can delete contract template',17,'delete_contracttemplate'),(52,'Can add payment record',18,'add_paymentrecord'),(53,'Can change payment record',18,'change_paymentrecord'),(54,'Can delete payment record',18,'delete_paymentrecord'),(55,'Can add student enrollment',19,'add_studentenrollment'),(56,'Can change student enrollment',19,'change_studentenrollment'),(57,'Can delete student enrollment',19,'delete_studentenrollment'),(58,'Can add department',20,'add_department'),(59,'Can change department',20,'change_department'),(60,'Can delete department',20,'delete_department');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_用户信息_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_用户信息_id` FOREIGN KEY (`user_id`) REFERENCES `用户信息` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-07-16 13:39:28.084670','1','学生',1,'[{\"added\": {}}]',16,1),(2,'2018-07-16 13:39:31.976853','1','学生',1,'[{\"added\": {}}]',13,1),(3,'2018-07-16 13:43:02.279480','2','讲师',1,'[{\"added\": {}}]',16,1),(4,'2018-07-16 13:43:03.613058','2','讲师',1,'[{\"added\": {}}]',13,1),(5,'2018-07-16 13:43:07.241563','4','alex',2,'[{\"changed\": {\"fields\": [\"last_login\"]}}]',6,1),(6,'2018-07-16 13:43:41.153867','3','销售',1,'[{\"added\": {}}]',16,1),(7,'2018-07-16 13:43:42.983675','3','销售',1,'[{\"added\": {}}]',13,1),(8,'2018-07-16 13:43:44.428923','3','shanshan',2,'[]',6,1),(9,'2018-07-16 13:43:50.843909','4','alex',2,'[]',6,1),(10,'2018-07-16 13:44:00.625918','2','kate',2,'[]',6,1),(11,'2018-07-16 13:44:46.371699','5','bob',2,'[]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(20,'app02','department'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'crm','branch'),(8,'crm','classlist'),(17,'crm','contracttemplate'),(9,'crm','course'),(10,'crm','courserecord'),(11,'crm','customerfollowup'),(12,'crm','customerinfo'),(16,'crm','menu'),(18,'crm','paymentrecord'),(13,'crm','role'),(14,'crm','student'),(19,'crm','studentenrollment'),(15,'crm','studyrecord'),(6,'crm','userprofile'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-07-16 13:35:02.214900'),(2,'contenttypes','0002_remove_content_type_name','2018-07-16 13:35:02.356736'),(3,'auth','0001_initial','2018-07-16 13:35:02.800664'),(4,'auth','0002_alter_permission_name_max_length','2018-07-16 13:35:02.886724'),(5,'auth','0003_alter_user_email_max_length','2018-07-16 13:35:02.897735'),(6,'auth','0004_alter_user_username_opts','2018-07-16 13:35:02.909742'),(7,'auth','0005_alter_user_last_login_null','2018-07-16 13:35:02.920751'),(8,'auth','0006_require_contenttypes_0002','2018-07-16 13:35:02.925756'),(9,'auth','0007_alter_validators_add_error_messages','2018-07-16 13:35:02.937763'),(10,'auth','0008_alter_user_username_max_length','2018-07-16 13:35:02.947771'),(11,'crm','0001_initial','2018-07-16 13:35:06.161860'),(12,'admin','0001_initial','2018-07-16 13:35:06.389709'),(13,'admin','0002_logentry_remove_auto_add','2018-07-16 13:35:06.418235'),(14,'app02','0001_initial','2018-07-16 13:35:06.459261'),(15,'crm','0002_auto_20180704_1950','2018-07-16 13:35:06.625383'),(16,'crm','0003_remove_student_student','2018-07-16 13:35:06.742468'),(17,'crm','0004_auto_20180705_0003','2018-07-16 13:35:07.044486'),(18,'crm','0005_auto_20180705_0004','2018-07-16 13:35:07.077507'),(19,'crm','0006_auto_20180705_1135','2018-07-16 13:35:07.089516'),(20,'crm','0007_auto_20180709_2327','2018-07-16 13:35:07.115539'),(21,'crm','0008_auto_20180709_2328','2018-07-16 13:35:07.142560'),(22,'crm','0009_auto_20180716_0946','2018-07-16 13:35:07.971226'),(23,'crm','0010_auto_20180716_1927','2018-07-16 13:35:08.062293'),(24,'crm','0011_auto_20180716_2113','2018-07-16 13:35:08.129977'),(25,'crm','0012_auto_20180716_2126','2018-07-16 13:35:09.124828'),(26,'crm','0013_auto_20180716_2131','2018-07-16 13:35:10.034632'),(27,'sessions','0001_initial','2018-07-16 13:35:10.107183'),(28,'crm','0014_auto_20180717_1009','2018-07-17 02:09:52.493296'),(29,'crm','0015_auto_20180717_2118','2018-07-17 13:18:28.012718');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('tus4nzc6m99nzxfe5ymq9458izlqj1m7','NWFiMTVmMjBmOGQ3YWMyMDU3MjE5OTIwNTdiOTZjOTM1OTEzNGMxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNThlMDAyMmM4YTM0YWIxZjJjOTU1ODE4NDVhZWExMThkZDQwNDQ0In0=','2018-07-30 13:44:39.459709');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-17 21:34:26
