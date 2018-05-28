/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : sport

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-05-28 12:59:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO account VALUES ('1', '1', 'cs', '陈帅', 'cs');
INSERT INTO account VALUES ('2', '2', 'bb', '兵兵', 'bb');

-- ----------------------------
-- Table structure for `addscore`
-- ----------------------------
DROP TABLE IF EXISTS `addscore`;
CREATE TABLE `addscore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `grade_num` varchar(255) DEFAULT NULL,
  `add` varchar(255) DEFAULT NULL,
  `standrad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `addscore_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addscore
-- ----------------------------
INSERT INTO addscore VALUES ('1', '11', '11', '20', '40');
INSERT INTO addscore VALUES ('2', '11', '11', '19', '38');
INSERT INTO addscore VALUES ('3', '11', '11', '18', '36');
INSERT INTO addscore VALUES ('4', '11', '11', '17', '34');
INSERT INTO addscore VALUES ('5', '11', '11', '16', '32');
INSERT INTO addscore VALUES ('6', '11', '11', '15', '30');
INSERT INTO addscore VALUES ('7', '11', '11', '14', '28');
INSERT INTO addscore VALUES ('8', '11', '11', '13', '26');
INSERT INTO addscore VALUES ('9', '11', '11', '12', '24');
INSERT INTO addscore VALUES ('10', '11', '11', '11', '22');
INSERT INTO addscore VALUES ('11', '11', '11', '10', '20');
INSERT INTO addscore VALUES ('12', '11', '11', '9', '18');
INSERT INTO addscore VALUES ('13', '11', '11', '8', '16');
INSERT INTO addscore VALUES ('14', '11', '11', '7', '14');
INSERT INTO addscore VALUES ('15', '11', '11', '6', '12');
INSERT INTO addscore VALUES ('16', '11', '11', '5', '10');
INSERT INTO addscore VALUES ('17', '11', '11', '4', '8');
INSERT INTO addscore VALUES ('18', '11', '11', '3', '6');
INSERT INTO addscore VALUES ('19', '11', '11', '2', '4');
INSERT INTO addscore VALUES ('20', '11', '11', '1', '2');

-- ----------------------------
-- Table structure for `clas`
-- ----------------------------
DROP TABLE IF EXISTS `clas`;
CREATE TABLE `clas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL COMMENT 'banjibianma',
  `name` varchar(255) DEFAULT NULL COMMENT 'banjiming',
  `grade_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grade_id` (`grade_id`),
  CONSTRAINT `clas_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clas
-- ----------------------------
INSERT INTO clas VALUES ('62', '11010', '1', '36');
INSERT INTO clas VALUES ('63', '11020', '2', '37');
INSERT INTO clas VALUES ('64', '1201', '1', '38');
INSERT INTO clas VALUES ('65', '1101', '1', '39');
INSERT INTO clas VALUES ('66', '1102', '2', '39');
INSERT INTO clas VALUES ('67', '4201', '1', '40');
INSERT INTO clas VALUES ('68', '4202', '2', '40');
INSERT INTO clas VALUES ('69', '4301', '1', '41');
INSERT INTO clas VALUES ('70', '4302', '2', '41');
INSERT INTO clas VALUES ('71', '4401', '1', '42');
INSERT INTO clas VALUES ('72', '4402', '2', '42');

-- ----------------------------
-- Table structure for `criterion`
-- ----------------------------
DROP TABLE IF EXISTS `criterion`;
CREATE TABLE `criterion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `grade_num` varchar(255) DEFAULT NULL,
  `standrad` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `levl` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `criterion_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of criterion
-- ----------------------------
INSERT INTO criterion VALUES ('1', '11', '11', '109', '优秀', '100');
INSERT INTO criterion VALUES ('2', '11', '11', '104', '优秀', '95');
INSERT INTO criterion VALUES ('3', '11', '11', '99', '优秀', '90');
INSERT INTO criterion VALUES ('4', '11', '11', '93', '良好', '85');
INSERT INTO criterion VALUES ('5', '11', '11', '87', '良好', '80');
INSERT INTO criterion VALUES ('6', '11', '11', '80', '及格', '78');
INSERT INTO criterion VALUES ('7', '11', '11', '73', '及格', '76');
INSERT INTO criterion VALUES ('8', '11', '11', '66', '及格', '74');
INSERT INTO criterion VALUES ('9', '11', '11', '59', '及格', '72');
INSERT INTO criterion VALUES ('10', '11', '11', '52', '及格', '70');
INSERT INTO criterion VALUES ('11', '11', '11', '45', '及格', '68');
INSERT INTO criterion VALUES ('12', '11', '11', '38', '及格', '66');
INSERT INTO criterion VALUES ('13', '11', '11', '31', '及格', '64');
INSERT INTO criterion VALUES ('14', '11', '11', '24', '及格', '62');
INSERT INTO criterion VALUES ('15', '11', '11', '17', '及格', '60');
INSERT INTO criterion VALUES ('16', '11', '11', '14', '不及格', '50');
INSERT INTO criterion VALUES ('17', '11', '11', '11', '不及格', '40');
INSERT INTO criterion VALUES ('18', '11', '11', '8', '不及格', '30');
INSERT INTO criterion VALUES ('19', '11', '11', '5', '不及格', '20');
INSERT INTO criterion VALUES ('20', '11', '11', '2', '不及格', '10');

-- ----------------------------
-- Table structure for `env`
-- ----------------------------
DROP TABLE IF EXISTS `env`;
CREATE TABLE `env` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clas_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL COMMENT 'ticebiao',
  `name` varchar(255) DEFAULT NULL COMMENT 'jiaoshiming',
  `dater` date DEFAULT NULL COMMENT 'ceshishijian',
  `place` varchar(255) DEFAULT NULL COMMENT 'ceshididian',
  `equipment` varchar(255) DEFAULT NULL COMMENT 'qicai',
  `mode` varchar(255) DEFAULT NULL COMMENT 'ceshifangshi',
  PRIMARY KEY (`id`),
  KEY `clas_id` (`clas_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `env_ibfk_1` FOREIGN KEY (`clas_id`) REFERENCES `clas` (`id`),
  CONSTRAINT `env_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of env
-- ----------------------------
INSERT INTO env VALUES ('1', '65', '1', '11', '2018-05-25', '11', '11', '11');
INSERT INTO env VALUES ('2', '65', '2', '11', '2018-05-25', '11', '11', '11');
INSERT INTO env VALUES ('3', '65', '3', '11', '2018-05-25', '11', '11', '11');
INSERT INTO env VALUES ('4', '65', '4', '11', null, null, null, null);
INSERT INTO env VALUES ('5', '65', '5', '11', null, null, null, null);
INSERT INTO env VALUES ('6', '65', '6', '11', null, null, null, null);
INSERT INTO env VALUES ('7', '66', '1', '11', null, null, null, null);
INSERT INTO env VALUES ('8', '66', '2', '11', null, null, null, null);
INSERT INTO env VALUES ('9', '66', '3', '11', null, null, null, null);
INSERT INTO env VALUES ('10', '66', '4', '11', null, null, null, null);
INSERT INTO env VALUES ('11', '66', '5', '11', null, null, null, null);
INSERT INTO env VALUES ('12', '66', '6', '11', null, null, null, null);
INSERT INTO env VALUES ('13', '67', '1', '12', null, null, null, null);
INSERT INTO env VALUES ('14', '67', '2', '12', null, null, null, null);
INSERT INTO env VALUES ('15', '67', '3', '12', null, null, null, null);
INSERT INTO env VALUES ('16', '67', '4', '12', null, null, null, null);
INSERT INTO env VALUES ('17', '67', '5', '12', null, null, null, null);
INSERT INTO env VALUES ('18', '67', '6', '12', null, null, null, null);
INSERT INTO env VALUES ('19', '68', '1', '12', null, null, null, null);
INSERT INTO env VALUES ('20', '68', '2', '12', null, null, null, null);
INSERT INTO env VALUES ('21', '68', '3', '12', null, null, null, null);
INSERT INTO env VALUES ('22', '68', '4', '12', null, null, null, null);
INSERT INTO env VALUES ('23', '68', '5', '12', null, null, null, null);
INSERT INTO env VALUES ('24', '68', '6', '12', null, null, null, null);

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `num` int(11) DEFAULT NULL COMMENT 'nianjibianma',
  `name` varchar(255) DEFAULT NULL COMMENT 'nianjiming',
  PRIMARY KEY (`id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO grade VALUES ('36', '19', '110', '大一');
INSERT INTO grade VALUES ('37', '20', '12', '二年级');
INSERT INTO grade VALUES ('38', '21', '13', '三年级');
INSERT INTO grade VALUES ('39', '25', '11', '一年级');
INSERT INTO grade VALUES ('40', '25', '42', '大二');
INSERT INTO grade VALUES ('41', '25', '43', '大三');
INSERT INTO grade VALUES ('42', '25', '44', '大四');

-- ----------------------------
-- Table structure for `grade_item`
-- ----------------------------
DROP TABLE IF EXISTS `grade_item`;
CREATE TABLE `grade_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grade_id` (`grade_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `grade_item_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`),
  CONSTRAINT `grade_item_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade_item
-- ----------------------------
INSERT INTO grade_item VALUES ('1', '39', '11');
INSERT INTO grade_item VALUES ('2', '39', '2');
INSERT INTO grade_item VALUES ('3', '39', '3');
INSERT INTO grade_item VALUES ('4', '39', '4');
INSERT INTO grade_item VALUES ('5', '39', '5');
INSERT INTO grade_item VALUES ('6', '39', '6');
INSERT INTO grade_item VALUES ('7', '40', '1');
INSERT INTO grade_item VALUES ('8', '40', '2');
INSERT INTO grade_item VALUES ('9', '40', '3');
INSERT INTO grade_item VALUES ('10', '40', '4');
INSERT INTO grade_item VALUES ('11', '40', '5');
INSERT INTO grade_item VALUES ('12', '40', '6');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO item VALUES ('1', '身高男');
INSERT INTO item VALUES ('2', '体重男');
INSERT INTO item VALUES ('3', '身高女');
INSERT INTO item VALUES ('4', '体重女');
INSERT INTO item VALUES ('5', '肺活量男');
INSERT INTO item VALUES ('6', '肺活量女');
INSERT INTO item VALUES ('7', '50米跑男');
INSERT INTO item VALUES ('8', '50米跑女');
INSERT INTO item VALUES ('9', '坐位体前曲男');
INSERT INTO item VALUES ('10', '坐位体前曲女');
INSERT INTO item VALUES ('11', '一分钟跳绳男');
INSERT INTO item VALUES ('12', '一分钟跳绳女');
INSERT INTO item VALUES ('13', '引体向上');
INSERT INTO item VALUES ('14', '立定跳远男');
INSERT INTO item VALUES ('15', '立定跳远女');
INSERT INTO item VALUES ('16', '仰卧起坐');
INSERT INTO item VALUES ('17', '800米');
INSERT INTO item VALUES ('18', '1000米');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `clas_id` int(11) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `clas_id` (`clas_id`),
  KEY `grade_id` (`grade_id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `link_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `link_ibfk_2` FOREIGN KEY (`clas_id`) REFERENCES `clas` (`id`),
  CONSTRAINT `link_ibfk_3` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`),
  CONSTRAINT `link_ibfk_4` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO link VALUES ('1', '1', '65', '39', '25');
INSERT INTO link VALUES ('2', '1', '66', '39', '25');
INSERT INTO link VALUES ('3', '1', '67', '40', '25');
INSERT INTO link VALUES ('4', '1', '68', '40', '25');

-- ----------------------------
-- Table structure for `result`
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `score` varchar(255) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO result VALUES ('1', '11', '1', '109', null, null);
INSERT INTO result VALUES ('2', '4', '1', '60', null, null);
INSERT INTO result VALUES ('4', '6', '1', '2800', null, null);
INSERT INTO result VALUES ('5', '11', '2', '93', null, null);
INSERT INTO result VALUES ('6', '2', '2', '66', null, null);
INSERT INTO result VALUES ('7', '5', '2', '3600', null, null);
INSERT INTO result VALUES ('8', '11', '3', '80', null, null);
INSERT INTO result VALUES ('9', '2', '3', '70', null, null);
INSERT INTO result VALUES ('10', '5', '3', '3456', null, null);
INSERT INTO result VALUES ('11', '11', '4', '14', null, null);
INSERT INTO result VALUES ('12', '4', '4', '50', null, null);
INSERT INTO result VALUES ('13', '6', '4', '2345', null, null);
INSERT INTO result VALUES ('14', '1', '5', '167', null, null);
INSERT INTO result VALUES ('15', '2', '5', '76', null, null);
INSERT INTO result VALUES ('16', '5', '5', '3444', null, null);
INSERT INTO result VALUES ('17', '1', '6', '174', null, null);
INSERT INTO result VALUES ('18', '2', '6', '67', null, null);
INSERT INTO result VALUES ('19', '5', '6', '4544', null, null);
INSERT INTO result VALUES ('20', '3', '7', '161', null, null);
INSERT INTO result VALUES ('21', '4', '7', '53', null, null);
INSERT INTO result VALUES ('22', '6', '7', '2566', null, null);
INSERT INTO result VALUES ('23', '3', '8', '164', null, null);
INSERT INTO result VALUES ('24', '4', '8', '48', null, null);
INSERT INTO result VALUES ('25', '6', '8', '2344', null, null);
INSERT INTO result VALUES ('26', '1', '9', '175', null, null);
INSERT INTO result VALUES ('27', '2', '9', '69', null, null);
INSERT INTO result VALUES ('28', '5', '9', '4000', null, null);
INSERT INTO result VALUES ('29', '1', '10', '173', null, null);
INSERT INTO result VALUES ('30', '2', '10', '70', null, null);
INSERT INTO result VALUES ('31', '5', '10', '3890', null, null);
INSERT INTO result VALUES ('32', '3', '11', '162', null, null);
INSERT INTO result VALUES ('33', '4', '11', '45', null, null);
INSERT INTO result VALUES ('34', '6', '11', '2568', null, null);
INSERT INTO result VALUES ('35', '3', '12', '159', null, null);
INSERT INTO result VALUES ('36', '4', '12', '50', null, null);
INSERT INTO result VALUES ('37', '6', '12', '2345', null, null);
INSERT INTO result VALUES ('38', '1', '13', '173', null, null);
INSERT INTO result VALUES ('39', '2', '13', '76', null, null);
INSERT INTO result VALUES ('40', '5', '13', '3455', null, null);
INSERT INTO result VALUES ('41', '1', '14', '180', null, null);
INSERT INTO result VALUES ('42', '2', '14', '80', null, null);
INSERT INTO result VALUES ('43', '5', '14', '4200', null, null);
INSERT INTO result VALUES ('44', '3', '15', '167', null, null);
INSERT INTO result VALUES ('45', '4', '15', '55', null, null);
INSERT INTO result VALUES ('46', '6', '15', '3244', null, null);
INSERT INTO result VALUES ('47', '3', '16', '168', null, null);
INSERT INTO result VALUES ('48', '4', '16', '54', null, null);
INSERT INTO result VALUES ('49', '6', '16', '3400', null, null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO role VALUES ('1', '秦皇小学管理员', null);
INSERT INTO role VALUES ('2', '燕大管理员', null);
INSERT INTO role VALUES ('3', 'XX高校管理员', null);

-- ----------------------------
-- Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'xuexiaomingcheng',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'xuexiaodizhi',
  `zipcode` int(11) DEFAULT NULL COMMENT 'youbian',
  `president` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'xiaozhang',
  `tel` varchar(11) DEFAULT NULL COMMENT 'dianhua',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'youxiang',
  `schooltype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'xuexiaoleixing',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO school VALUES ('19', '秦皇岛第一中学', '秦皇岛市河北大街1号', '66000', '陈一', '18332337167', '123456781@163.com', '小学');
INSERT INTO school VALUES ('20', '秦皇岛第二中学', '秦皇岛市河北大街2号', '66000', '陈二', '18332337168', '123456782@163.com', '小学');
INSERT INTO school VALUES ('21', '秦皇岛第三中学', '秦皇岛市河北大街3号', '66000', '陈三', '18332337169', '123456783@163.com', '初中');
INSERT INTO school VALUES ('22', '秦皇岛第四中学', '秦皇岛市河北大街4号', '66000', '陈四', '18332337170', '123456784@163.com', '初中');
INSERT INTO school VALUES ('23', '秦皇岛第五中学', '秦皇岛市河北大街5号', '66000', '陈五', '18332337171', '123456785@163.com', '高中');
INSERT INTO school VALUES ('24', '秦皇岛第五中学', '秦皇岛市河北大街6号', '66000', '陈六', '18332337172', '123456786@163.com', '高中');
INSERT INTO school VALUES ('25', '燕山大学', '秦皇岛市河北大街7号', '66000', '陈燕', '18332337173', '123456787@163.com', '大学');
INSERT INTO school VALUES ('26', '里仁学院', '秦皇岛市河北大街8号', '66000', '陈里', '18332337174', '123456788@163.com', '大学');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'xingming',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'xingbie',
  `birth` date DEFAULT NULL COMMENT 'chushengriqi',
  `studentnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'xuehao',
  `ethnic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'minzudaima',
  `personnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'shenfenzhenghao',
  `adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'jiatingzhuzhi',
  `clas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clas_id` (`clas_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`clas_id`) REFERENCES `clas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO student VALUES ('1', '白瑶瑶', '男', '2006-01-01', '001', '1', '1213', '1', '65');
INSERT INTO student VALUES ('2', '陈晨铭', '男', '2006-01-02', '002', '1', '1211', '2', '65');
INSERT INTO student VALUES ('3', '陈程翔', '男', '2006-01-03', '003', '2', '1222', '2', '65');
INSERT INTO student VALUES ('4', '朱静', '男', '2006-01-01', '004', '1', '1215', '3', '65');
INSERT INTO student VALUES ('5', '张三', '男', '2004-01-23', '005', '1', '1234', '1', '66');
INSERT INTO student VALUES ('6', '张四', '男', '2005-01-01', '006', '1', '1233', '1', '66');
INSERT INTO student VALUES ('7', '李三', '女', '2006-01-06', '007', '1', '1123', '1', '66');
INSERT INTO student VALUES ('8', '李四', '女', '2006-02-21', '008', '1', '1345', '1', '66');
INSERT INTO student VALUES ('9', '张五', '男', '2004-04-04', '009', '1', '1456', '1', '67');
INSERT INTO student VALUES ('10', '张六', '男', '2004-03-05', '010', '1', '1236', '1', '67');
INSERT INTO student VALUES ('11', '李五', '女', '2004-02-08', '011', '1', '1346', '1', '67');
INSERT INTO student VALUES ('12', '李六', '女', '2004-05-09', '012', '1', '2134', '1', '67');
INSERT INTO student VALUES ('13', '张七', '男', '2003-02-03', '013', '1', '1093', '1', '68');
INSERT INTO student VALUES ('14', '张八', '男', '2003-09-09', '014', '1', '5423', '1', '68');
INSERT INTO student VALUES ('15', '李七', '女', '2003-12-12', '015', '1', '2321', '1', '68');
INSERT INTO student VALUES ('16', '李八', '女', '2003-04-05', '016', '1', '4321', '1', '68');
