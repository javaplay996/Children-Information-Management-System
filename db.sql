/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmwy609
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmwy609` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmwy609`;

/*Table structure for table `aixinjuanzeng` */

DROP TABLE IF EXISTS `aixinjuanzeng`;

CREATE TABLE `aixinjuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `juanzengxingshi` varchar(200) DEFAULT NULL COMMENT '捐赠形式',
  `juanzengwupin` varchar(200) DEFAULT NULL COMMENT '捐赠物品',
  `juankuanjine` int(11) NOT NULL COMMENT '捐款金额',
  `juanzengshijian` datetime DEFAULT NULL COMMENT '捐赠时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='爱心捐赠';

/*Data for the table `aixinjuanzeng` */

insert  into `aixinjuanzeng`(`id`,`addtime`,`ertongxingming`,`zhaopian`,`juanzengxingshi`,`juanzengwupin`,`juankuanjine`,`juanzengshijian`,`beizhu`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`) values (51,'2021-04-16 18:53:42','儿童姓名1','http://localhost:8080/ssmwy609/upload/aixinjuanzeng_zhaopian1.jpg','企业','捐赠物品1',1,'2021-04-16 18:53:42','备注1','账号1','姓名1','手机1','是',''),(52,'2021-04-16 18:53:42','儿童姓名2','http://localhost:8080/ssmwy609/upload/aixinjuanzeng_zhaopian2.jpg','企业','捐赠物品2',2,'2021-04-16 18:53:42','备注2','账号2','姓名2','手机2','是',''),(53,'2021-04-16 18:53:42','儿童姓名3','http://localhost:8080/ssmwy609/upload/aixinjuanzeng_zhaopian3.jpg','企业','捐赠物品3',3,'2021-04-16 18:53:42','备注3','账号3','姓名3','手机3','是',''),(54,'2021-04-16 18:53:42','儿童姓名4','http://localhost:8080/ssmwy609/upload/aixinjuanzeng_zhaopian4.jpg','企业','捐赠物品4',4,'2021-04-16 18:53:42','备注4','账号4','姓名4','手机4','是',''),(55,'2021-04-16 18:53:42','儿童姓名5','http://localhost:8080/ssmwy609/upload/aixinjuanzeng_zhaopian5.jpg','企业','捐赠物品5',5,'2021-04-16 18:53:42','备注5','账号5','姓名5','手机5','是',''),(56,'2021-04-16 18:53:42','儿童姓名6','http://localhost:8080/ssmwy609/upload/aixinjuanzeng_zhaopian6.jpg','企业','捐赠物品6',6,'2021-04-16 18:53:42','备注6','账号6','姓名6','手机6','是','');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmwy609/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmwy609/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmwy609/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `liushouertong` */

DROP TABLE IF EXISTS `liushouertong`;

CREATE TABLE `liushouertong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `juzhutiaojian` varchar(200) DEFAULT NULL COMMENT '居住条件',
  `jiatingzhuangkuang` varchar(200) DEFAULT NULL COMMENT '家庭状况',
  `jiatingshouru` int(11) DEFAULT NULL COMMENT '家庭收入',
  `shifouzaidu` varchar(200) DEFAULT NULL COMMENT '是否在读',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `xuexiaolianxiren` varchar(200) DEFAULT NULL COMMENT '学校联系人',
  `xuexiaodizhi` varchar(200) DEFAULT NULL COMMENT '学校地址',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiankangzhuangkuang` varchar(200) DEFAULT NULL COMMENT '健康状况',
  `jianhurenxinxi` varchar(200) DEFAULT NULL COMMENT '监护人信息',
  `lianxifangshi` longtext COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='留守儿童';

/*Data for the table `liushouertong` */

insert  into `liushouertong`(`id`,`addtime`,`ertongxingming`,`xingbie`,`nianling`,`zhaopian`,`jiatingzhuzhi`,`juzhutiaojian`,`jiatingzhuangkuang`,`jiatingshouru`,`shifouzaidu`,`xuexiaomingcheng`,`xuexiaolianxiren`,`xuexiaodizhi`,`nianji`,`banji`,`jiankangzhuangkuang`,`jianhurenxinxi`,`lianxifangshi`) values (21,'2021-04-16 18:53:42','儿童姓名1','男',1,'http://localhost:8080/ssmwy609/upload/liushouertong_zhaopian1.jpg','家庭住址1','居住条件1','家庭状况1',1,'是','学校名称1','学校联系人1','学校地址1','年级1','班级1','健康状况1','监护人信息1','联系方式1'),(22,'2021-04-16 18:53:42','儿童姓名2','男',2,'http://localhost:8080/ssmwy609/upload/liushouertong_zhaopian2.jpg','家庭住址2','居住条件2','家庭状况2',2,'是','学校名称2','学校联系人2','学校地址2','年级2','班级2','健康状况2','监护人信息2','联系方式2'),(23,'2021-04-16 18:53:42','儿童姓名3','男',3,'http://localhost:8080/ssmwy609/upload/liushouertong_zhaopian3.jpg','家庭住址3','居住条件3','家庭状况3',3,'是','学校名称3','学校联系人3','学校地址3','年级3','班级3','健康状况3','监护人信息3','联系方式3'),(24,'2021-04-16 18:53:42','儿童姓名4','男',4,'http://localhost:8080/ssmwy609/upload/liushouertong_zhaopian4.jpg','家庭住址4','居住条件4','家庭状况4',4,'是','学校名称4','学校联系人4','学校地址4','年级4','班级4','健康状况4','监护人信息4','联系方式4'),(25,'2021-04-16 18:53:42','儿童姓名5','男',5,'http://localhost:8080/ssmwy609/upload/liushouertong_zhaopian5.jpg','家庭住址5','居住条件5','家庭状况5',5,'是','学校名称5','学校联系人5','学校地址5','年级5','班级5','健康状况5','监护人信息5','联系方式5'),(26,'2021-04-16 18:53:42','儿童姓名6','男',6,'http://localhost:8080/ssmwy609/upload/liushouertong_zhaopian6.jpg','家庭住址6','居住条件6','家庭状况6',6,'是','学校名称6','学校联系人6','学校地址6','年级6','班级6','健康状况6','监护人信息6','联系方式6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-04-16 18:53:42',1,'用户名1','留言内容1','回复内容1'),(72,'2021-04-16 18:53:42',2,'用户名2','留言内容2','回复内容2'),(73,'2021-04-16 18:53:42',3,'用户名3','留言内容3','回复内容3'),(74,'2021-04-16 18:53:42',4,'用户名4','留言内容4','回复内容4'),(75,'2021-04-16 18:53:42',5,'用户名5','留言内容5','回复内容5'),(76,'2021-04-16 18:53:42',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='公告资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-04-16 18:53:42','标题1','简介1','http://localhost:8080/ssmwy609/upload/news_picture1.jpg','内容1'),(62,'2021-04-16 18:53:42','标题2','简介2','http://localhost:8080/ssmwy609/upload/news_picture2.jpg','内容2'),(63,'2021-04-16 18:53:42','标题3','简介3','http://localhost:8080/ssmwy609/upload/news_picture3.jpg','内容3'),(64,'2021-04-16 18:53:42','标题4','简介4','http://localhost:8080/ssmwy609/upload/news_picture4.jpg','内容4'),(65,'2021-04-16 18:53:42','标题5','简介5','http://localhost:8080/ssmwy609/upload/news_picture5.jpg','内容5'),(66,'2021-04-16 18:53:42','标题6','简介6','http://localhost:8080/ssmwy609/upload/news_picture6.jpg','内容6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-16 18:53:42');

/*Table structure for table `yiliaofuwu` */

DROP TABLE IF EXISTS `yiliaofuwu`;

CREATE TABLE `yiliaofuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='医疗服务';

/*Data for the table `yiliaofuwu` */

insert  into `yiliaofuwu`(`id`,`addtime`,`ertongxingming`,`zhaopian`,`yiyuanmingcheng`,`yiyuandizhi`,`zhanghao`,`xingming`,`shouji`) values (41,'2021-04-16 18:53:42','儿童姓名1','http://localhost:8080/ssmwy609/upload/yiliaofuwu_zhaopian1.jpg','医院名称1','医院地址1','账号1','姓名1','手机1'),(42,'2021-04-16 18:53:42','儿童姓名2','http://localhost:8080/ssmwy609/upload/yiliaofuwu_zhaopian2.jpg','医院名称2','医院地址2','账号2','姓名2','手机2'),(43,'2021-04-16 18:53:42','儿童姓名3','http://localhost:8080/ssmwy609/upload/yiliaofuwu_zhaopian3.jpg','医院名称3','医院地址3','账号3','姓名3','手机3'),(44,'2021-04-16 18:53:42','儿童姓名4','http://localhost:8080/ssmwy609/upload/yiliaofuwu_zhaopian4.jpg','医院名称4','医院地址4','账号4','姓名4','手机4'),(45,'2021-04-16 18:53:42','儿童姓名5','http://localhost:8080/ssmwy609/upload/yiliaofuwu_zhaopian5.jpg','医院名称5','医院地址5','账号5','姓名5','手机5'),(46,'2021-04-16 18:53:42','儿童姓名6','http://localhost:8080/ssmwy609/upload/yiliaofuwu_zhaopian6.jpg','医院名称6','医院地址6','账号6','姓名6','手机6');

/*Table structure for table `yiyuanxinxi` */

DROP TABLE IF EXISTS `yiyuanxinxi`;

CREATE TABLE `yiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `yiyuantupian` varchar(200) DEFAULT NULL COMMENT '医院图片',
  `yiyuansheshi` varchar(200) DEFAULT NULL COMMENT '医院设施',
  `yiyuanxiangqing` varchar(200) DEFAULT NULL COMMENT '医院详情',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医院信息';

/*Data for the table `yiyuanxinxi` */

insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuandizhi`,`yiyuantupian`,`yiyuansheshi`,`yiyuanxiangqing`,`lianxifangshi`) values (31,'2021-04-16 18:53:42','医院名称1','医院地址1','http://localhost:8080/ssmwy609/upload/yiyuanxinxi_yiyuantupian1.jpg','医院设施1','医院详情1','联系方式1'),(32,'2021-04-16 18:53:42','医院名称2','医院地址2','http://localhost:8080/ssmwy609/upload/yiyuanxinxi_yiyuantupian2.jpg','医院设施2','医院详情2','联系方式2'),(33,'2021-04-16 18:53:42','医院名称3','医院地址3','http://localhost:8080/ssmwy609/upload/yiyuanxinxi_yiyuantupian3.jpg','医院设施3','医院详情3','联系方式3'),(34,'2021-04-16 18:53:42','医院名称4','医院地址4','http://localhost:8080/ssmwy609/upload/yiyuanxinxi_yiyuantupian4.jpg','医院设施4','医院详情4','联系方式4'),(35,'2021-04-16 18:53:42','医院名称5','医院地址5','http://localhost:8080/ssmwy609/upload/yiyuanxinxi_yiyuantupian5.jpg','医院设施5','医院详情5','联系方式5'),(36,'2021-04-16 18:53:42','医院名称6','医院地址6','http://localhost:8080/ssmwy609/upload/yiyuanxinxi_yiyuantupian6.jpg','医院设施6','医院详情6','联系方式6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`sfsh`,`shhf`) values (11,'2021-04-16 18:53:42','用户1','123456','姓名1','男','13823888881','440300199101010001','http://localhost:8080/ssmwy609/upload/yonghu_zhaopian1.jpg','是',''),(12,'2021-04-16 18:53:42','用户2','123456','姓名2','男','13823888882','440300199202020002','http://localhost:8080/ssmwy609/upload/yonghu_zhaopian2.jpg','是',''),(13,'2021-04-16 18:53:42','用户3','123456','姓名3','男','13823888883','440300199303030003','http://localhost:8080/ssmwy609/upload/yonghu_zhaopian3.jpg','是',''),(14,'2021-04-16 18:53:42','用户4','123456','姓名4','男','13823888884','440300199404040004','http://localhost:8080/ssmwy609/upload/yonghu_zhaopian4.jpg','是',''),(15,'2021-04-16 18:53:42','用户5','123456','姓名5','男','13823888885','440300199505050005','http://localhost:8080/ssmwy609/upload/yonghu_zhaopian5.jpg','是',''),(16,'2021-04-16 18:53:42','用户6','123456','姓名6','男','13823888886','440300199606060006','http://localhost:8080/ssmwy609/upload/yonghu_zhaopian6.jpg','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
