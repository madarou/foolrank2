/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : uunemodb

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-05-11 11:44:28
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `question_option`
-- ----------------------------
DROP TABLE IF EXISTS `question_option`;
CREATE TABLE `question_option` (
  `question_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`question_id`,`option_id`),
  KEY `fk_optionid` (`option_id`),
  CONSTRAINT `fk_optionid` FOREIGN KEY (`option_id`) REFERENCES `option` (`option_id`),
  CONSTRAINT `fk_questionid` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_option
-- ----------------------------
INSERT INTO `question_option` VALUES ('1', '1');
INSERT INTO `question_option` VALUES ('1', '2');
INSERT INTO `question_option` VALUES ('1', '3');
INSERT INTO `question_option` VALUES ('2', '4');
INSERT INTO `question_option` VALUES ('2', '5');
INSERT INTO `question_option` VALUES ('3', '6');
INSERT INTO `question_option` VALUES ('3', '7');
