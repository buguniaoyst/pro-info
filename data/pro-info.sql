/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : pro-info

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-08-21 11:49:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_model
-- ----------------------------
DROP TABLE IF EXISTS `t_model`;
CREATE TABLE `t_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_model
-- ----------------------------
INSERT INTO `t_model` VALUES ('1', 'BOS物流项目进度跟踪问卷', '1');
INSERT INTO `t_model` VALUES ('2', '杰信ERP项目进度跟踪问卷', '0');
INSERT INTO `t_model` VALUES ('4', '新巴巴运动网电商项目进度跟踪问卷', '0');
INSERT INTO `t_model` VALUES ('5', 'Estore商城项目进度跟踪问卷', '0');
INSERT INTO `t_model` VALUES ('18', '啊啊啊啊', '0');
INSERT INTO `t_model` VALUES ('19', '啊啊啊的无若若', '0');

-- ----------------------------
-- Table structure for t_model_item
-- ----------------------------
DROP TABLE IF EXISTS `t_model_item`;
CREATE TABLE `t_model_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `pid` int(11) NOT NULL COMMENT 'pid为model的id',
  `title` varchar(50) DEFAULT NULL COMMENT '问卷项标题',
  `courseorder` int(11) DEFAULT NULL COMMENT '问卷项排序',
  `content` varchar(200) DEFAULT NULL COMMENT '问卷项内容',
  `status` int(11) DEFAULT NULL COMMENT '问卷项状态：0-禁用  1-启用',
  PRIMARY KEY (`id`),
  KEY `f1` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_model_item
-- ----------------------------
INSERT INTO `t_model_item` VALUES ('1', '1', '项目第一天', '1', '项目第一天的主要任务：1.项目搭建', '1');
INSERT INTO `t_model_item` VALUES ('2', '1', '项目第二天', '2', '项目第二天的主要任务：1.BaseAction的封装', '1');

-- ----------------------------
-- Table structure for t_proinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_proinfo`;
CREATE TABLE `t_proinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(255) DEFAULT NULL,
  `day1` int(11) DEFAULT NULL,
  `day2` int(11) DEFAULT NULL,
  `day3` int(11) DEFAULT NULL,
  `day4` int(11) DEFAULT NULL,
  `day5` int(11) DEFAULT NULL,
  `day6` int(11) DEFAULT NULL,
  `day7` int(11) DEFAULT NULL,
  `day8` int(11) DEFAULT NULL,
  `day9` int(11) DEFAULT NULL,
  `day10` int(11) DEFAULT NULL,
  `day11` int(11) DEFAULT NULL,
  `day12` int(11) DEFAULT NULL,
  `day13` int(11) DEFAULT NULL,
  `day14` int(11) DEFAULT NULL,
  `day15` int(11) DEFAULT NULL,
  `day16` int(11) DEFAULT NULL,
  `day17` int(11) DEFAULT NULL,
  `day18` int(11) DEFAULT NULL,
  `day19` int(11) DEFAULT NULL,
  `day20` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_proinfo
-- ----------------------------
INSERT INTO `t_proinfo` VALUES ('1', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '赵蒙');
INSERT INTO `t_proinfo` VALUES ('2', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '龚海');
INSERT INTO `t_proinfo` VALUES ('3', '黑马', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '殷世腾');
INSERT INTO `t_proinfo` VALUES ('4', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '李鹏鑫');
INSERT INTO `t_proinfo` VALUES ('5', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '黄文迪');
INSERT INTO `t_proinfo` VALUES ('6', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '黄波');
INSERT INTO `t_proinfo` VALUES ('7', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '苟方越');
INSERT INTO `t_proinfo` VALUES ('8', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '程继亮');
INSERT INTO `t_proinfo` VALUES ('9', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '杜凌霄');
INSERT INTO `t_proinfo` VALUES ('10', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '吕红');
INSERT INTO `t_proinfo` VALUES ('11', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '吴鹏');
INSERT INTO `t_proinfo` VALUES ('12', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '刘雪');
INSERT INTO `t_proinfo` VALUES ('13', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '杨小委');
INSERT INTO `t_proinfo` VALUES ('14', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '谢迪宇');
INSERT INTO `t_proinfo` VALUES ('15', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '朱小龙');
INSERT INTO `t_proinfo` VALUES ('16', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '唐杰瑾');
INSERT INTO `t_proinfo` VALUES ('17', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '王申');
INSERT INTO `t_proinfo` VALUES ('18', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '汤锦涛');
INSERT INTO `t_proinfo` VALUES ('19', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '孟小刚');
INSERT INTO `t_proinfo` VALUES ('20', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '侯宁');
INSERT INTO `t_proinfo` VALUES ('21', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '杨晓伟');
INSERT INTO `t_proinfo` VALUES ('22', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '季可津');
INSERT INTO `t_proinfo` VALUES ('23', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '童传傲');
INSERT INTO `t_proinfo` VALUES ('24', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '张群');
INSERT INTO `t_proinfo` VALUES ('25', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '楚尧杰');
INSERT INTO `t_proinfo` VALUES ('26', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '任娇');
INSERT INTO `t_proinfo` VALUES ('27', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '周志骅');
INSERT INTO `t_proinfo` VALUES ('28', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '汤健');
INSERT INTO `t_proinfo` VALUES ('29', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '范海伦');
INSERT INTO `t_proinfo` VALUES ('30', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '顾伟');
INSERT INTO `t_proinfo` VALUES ('31', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '谭京诚');
INSERT INTO `t_proinfo` VALUES ('32', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '徐健');
INSERT INTO `t_proinfo` VALUES ('33', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '郭鑫');
INSERT INTO `t_proinfo` VALUES ('34', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '朱发华');
INSERT INTO `t_proinfo` VALUES ('35', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '孙军涛');
INSERT INTO `t_proinfo` VALUES ('36', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '周亚龙');
INSERT INTO `t_proinfo` VALUES ('37', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '万贵阳');
INSERT INTO `t_proinfo` VALUES ('38', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '刘杰');
INSERT INTO `t_proinfo` VALUES ('39', '黑马', '1', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '於芳泽');
INSERT INTO `t_proinfo` VALUES ('40', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '李国胜');
INSERT INTO `t_proinfo` VALUES ('41', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '陈逸恒');
INSERT INTO `t_proinfo` VALUES ('42', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '秦伟力');
INSERT INTO `t_proinfo` VALUES ('43', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '陈攀');
INSERT INTO `t_proinfo` VALUES ('44', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '徐晓斌');
INSERT INTO `t_proinfo` VALUES ('45', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '汪严随');
INSERT INTO `t_proinfo` VALUES ('46', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '田海波');
INSERT INTO `t_proinfo` VALUES ('47', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '王晓智');
INSERT INTO `t_proinfo` VALUES ('48', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '张蔓');
INSERT INTO `t_proinfo` VALUES ('49', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '胡长风');
INSERT INTO `t_proinfo` VALUES ('50', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '朱铮');
INSERT INTO `t_proinfo` VALUES ('51', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '王凯强');
INSERT INTO `t_proinfo` VALUES ('52', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '郝阳');
INSERT INTO `t_proinfo` VALUES ('53', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '王超');
INSERT INTO `t_proinfo` VALUES ('54', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '王林永');
INSERT INTO `t_proinfo` VALUES ('55', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '陈立争');
INSERT INTO `t_proinfo` VALUES ('56', '黑马', '1', '1', '1', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '邵龙庆');
INSERT INTO `t_proinfo` VALUES ('57', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '王超超');
INSERT INTO `t_proinfo` VALUES ('58', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '刘浩');
INSERT INTO `t_proinfo` VALUES ('59', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '孙绪光');
INSERT INTO `t_proinfo` VALUES ('60', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '席国定');
INSERT INTO `t_proinfo` VALUES ('61', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '刘怡帆');
INSERT INTO `t_proinfo` VALUES ('62', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '杨雷');
INSERT INTO `t_proinfo` VALUES ('63', '黑马', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '姣姣');
INSERT INTO `t_proinfo` VALUES ('64', '黑马', '1', '1', '1', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '徐一诚');
INSERT INTO `t_proinfo` VALUES ('65', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '王晓伟');
INSERT INTO `t_proinfo` VALUES ('66', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '笪鹏程');
INSERT INTO `t_proinfo` VALUES ('67', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '张华平');
INSERT INTO `t_proinfo` VALUES ('68', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '畅畅');
INSERT INTO `t_proinfo` VALUES ('69', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '魏德山');
INSERT INTO `t_proinfo` VALUES ('70', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '夏运辉');
INSERT INTO `t_proinfo` VALUES ('71', '黑马', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '王霆');
INSERT INTO `t_proinfo` VALUES ('72', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '姜枭');
INSERT INTO `t_proinfo` VALUES ('73', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', 'wangchao');
INSERT INTO `t_proinfo` VALUES ('74', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '严浩');
INSERT INTO `t_proinfo` VALUES ('75', '黑马', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', 'zhangsan');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '123456', '龚海');
INSERT INTO `t_user` VALUES ('2', '123456', '侯宁');
INSERT INTO `t_user` VALUES ('3', '123456', '汤健');
INSERT INTO `t_user` VALUES ('4', '123456', '郭鑫');
INSERT INTO `t_user` VALUES ('5', '123456', '杜凌霄');
INSERT INTO `t_user` VALUES ('6', '123456', '陈逸恒');
INSERT INTO `t_user` VALUES ('7', '123456', '杨晓伟');
INSERT INTO `t_user` VALUES ('8', '123456', '田海波');
INSERT INTO `t_user` VALUES ('9', '123456', '黄文迪');
INSERT INTO `t_user` VALUES ('10', '123456', '吕红');
INSERT INTO `t_user` VALUES ('11', '123456', '秦伟力');
INSERT INTO `t_user` VALUES ('12', '123456', '程继亮');
INSERT INTO `t_user` VALUES ('13', '123456', '季可津');
INSERT INTO `t_user` VALUES ('14', '123456', '黄波');
INSERT INTO `t_user` VALUES ('15', '123456', '徐晓斌');
INSERT INTO `t_user` VALUES ('16', '123456', '刘雪');
INSERT INTO `t_user` VALUES ('17', '123456', '朱铮');
INSERT INTO `t_user` VALUES ('18', '123456', '李鹏鑫');
INSERT INTO `t_user` VALUES ('19', '123456', '汪严随');
INSERT INTO `t_user` VALUES ('20', '123456', '万贵阳');
INSERT INTO `t_user` VALUES ('21', '123456', '刘怡帆');
INSERT INTO `t_user` VALUES ('22', '123456', '赵蒙');
INSERT INTO `t_user` VALUES ('23', '123456', '汤锦涛');
INSERT INTO `t_user` VALUES ('24', '123456', '朱小龙');
INSERT INTO `t_user` VALUES ('25', '123456', '张蔓');
INSERT INTO `t_user` VALUES ('26', '123456', '夏运辉');
INSERT INTO `t_user` VALUES ('27', '123456', '刘杰');
INSERT INTO `t_user` VALUES ('28', '123456', '陈立争');
INSERT INTO `t_user` VALUES ('29', '123456', '周亚龙');
INSERT INTO `t_user` VALUES ('30', '123456', '唐杰瑾');
INSERT INTO `t_user` VALUES ('31', '123456', '陈攀');
INSERT INTO `t_user` VALUES ('32', '123456', '苟方越');
INSERT INTO `t_user` VALUES ('33', '123456', '郝阳');
INSERT INTO `t_user` VALUES ('34', '123456', '谭京诚');
INSERT INTO `t_user` VALUES ('35', '123456', '朱发华');
INSERT INTO `t_user` VALUES ('36', '123456', '范海伦');
INSERT INTO `t_user` VALUES ('37', '123456', '殷世腾');
INSERT INTO `t_user` VALUES ('38', '123456', '顾伟');
INSERT INTO `t_user` VALUES ('39', '123456', '楚尧杰');
INSERT INTO `t_user` VALUES ('40', '123456', '孟小刚');
INSERT INTO `t_user` VALUES ('41', '123456', '王晓智');
INSERT INTO `t_user` VALUES ('42', '123456', '吴鹏');
INSERT INTO `t_user` VALUES ('43', '123456', '笪鹏程');
INSERT INTO `t_user` VALUES ('44', '123456', '杨小委');
INSERT INTO `t_user` VALUES ('45', '123456', 'wangchao');
INSERT INTO `t_user` VALUES ('46', '123456', '谢迪宇');
INSERT INTO `t_user` VALUES ('47', '123456', '张群');
INSERT INTO `t_user` VALUES ('48', '123456', '任娇');
INSERT INTO `t_user` VALUES ('49', '123456', '王申');
INSERT INTO `t_user` VALUES ('50', '123456', '徐健');
INSERT INTO `t_user` VALUES ('51', '123456', '孙军涛');
INSERT INTO `t_user` VALUES ('52', '123456', '刘杰');
INSERT INTO `t_user` VALUES ('53', '123456', '刘浩');
INSERT INTO `t_user` VALUES ('54', '123456', '李国胜');
INSERT INTO `t_user` VALUES ('55', '123456', '於芳泽');
INSERT INTO `t_user` VALUES ('56', '123456', '王林永');
INSERT INTO `t_user` VALUES ('57', '123456', '童传傲');
INSERT INTO `t_user` VALUES ('58', '123456', '周志骅');
INSERT INTO `t_user` VALUES ('59', '123456', '范海伦');
INSERT INTO `t_user` VALUES ('60', '123456', '王凯强');
INSERT INTO `t_user` VALUES ('61', '123456', '胡长风');
INSERT INTO `t_user` VALUES ('62', '123456', '邵龙庆');
INSERT INTO `t_user` VALUES ('63', '123456', '王超超');
INSERT INTO `t_user` VALUES ('64', '123456', '孙绪光');
INSERT INTO `t_user` VALUES ('65', '123456', '席国定');
INSERT INTO `t_user` VALUES ('66', '123456', '魏德山');
INSERT INTO `t_user` VALUES ('67', '123456', '杨雷');
INSERT INTO `t_user` VALUES ('68', '123456', '徐一诚');
INSERT INTO `t_user` VALUES ('69', '123456', '姣姣');
INSERT INTO `t_user` VALUES ('70', '123456', '王晓伟');
INSERT INTO `t_user` VALUES ('71', '123456', '张华平');
INSERT INTO `t_user` VALUES ('72', '123456', '畅畅');
INSERT INTO `t_user` VALUES ('73', '123456', '王霆');
INSERT INTO `t_user` VALUES ('74', '123456', '姜枭');
INSERT INTO `t_user` VALUES ('75', '123', '严浩');
INSERT INTO `t_user` VALUES ('76', '123', 'zhangsan');
