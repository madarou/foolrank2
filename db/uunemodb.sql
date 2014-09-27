-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 03 月 13 日 10:47
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `uunemodb`
--

-- --------------------------------------------------------

--
-- 表的结构 `bulletin`
--

CREATE TABLE IF NOT EXISTS `bulletin` (
  `bulletin_id` int(11) NOT NULL AUTO_INCREMENT,
  `bulletin_date` date DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`bulletin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bulletin`
--

INSERT INTO `bulletin` (`bulletin_id`, `bulletin_date`, `description`) VALUES
(1, '2012-11-08', '在这里，你可以：1 做程序题 2 参与学校排名');

-- --------------------------------------------------------

--
-- 表的结构 `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int(8) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(20) NOT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `idx_permissionname` (`permission_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `permission`
--

INSERT INTO `permission` (`permission_id`, `permission_name`) VALUES
(2, 'edit'),
(1, 'view');

-- --------------------------------------------------------

--
-- 表的结构 `registerquestion`
--

CREATE TABLE IF NOT EXISTS `registerquestion` (
  `regquestionid` int(8) NOT NULL AUTO_INCREMENT,
  `regquestionname` varchar(20) DEFAULT NULL,
  `regquestioncontent` varchar(200) DEFAULT NULL,
  `regquestionanswer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`regquestionid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `registerquestion`
--

INSERT INTO `registerquestion` (`regquestionid`, `regquestionname`, `regquestioncontent`, `regquestionanswer`) VALUES
(1, 'c', 'first register question', 'first answer');

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(8) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`),
  KEY `idx_rolename` (`role_name`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- 表的结构 `role_permission`
--

CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_id` int(8) NOT NULL,
  `permission_id` int(8) NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `fk_rp_roleid` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role_permission`
--

INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `school_id` int(8) NOT NULL AUTO_INCREMENT,
  `conuntry` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `real_name` varchar(100) DEFAULT NULL,
  `school_name` varchar(100) NOT NULL,
  `company` varchar(25) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `real_name`, `school_name`, `company`, `email`) VALUES
(2, 'test', '111111', 'fw', 'tj', NULL, 'tfff@fds');

-- --------------------------------------------------------

--
-- 表的结构 `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(8) NOT NULL,
  `role_id` int(8) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_ur_roleid` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(2, 2);

--
-- 限制导出的表
--

--
-- 限制表 `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `fk_rp_permissionid` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  ADD CONSTRAINT `fk_rp_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- 限制表 `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_ur_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `fk_ur_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
