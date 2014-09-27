/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : uunemodb

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-05-11 11:40:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `option`
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` varchar(200) NOT NULL,
  `istrue` tinyint(3) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of option
-- ----------------------------
INSERT INTO `option` VALUES ('1', '1', 'I am not good at C', null);
INSERT INTO `option` VALUES ('2', '1', 'I am C master', '001');
INSERT INTO `option` VALUES ('3', '1', 'I am Java master', '001');
INSERT INTO `option` VALUES ('4', '1', 'c2-1', '001');
INSERT INTO `option` VALUES ('5', '1', 'c2-2', null);
INSERT INTO `option` VALUES ('6', '1', 'c3-1', null);
INSERT INTO `option` VALUES ('7', '1', 'c3-2', '001');
