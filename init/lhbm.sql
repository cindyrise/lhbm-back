/*
 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost
 Source Database       : lhbm

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : utf-8

 Date: 05/22/2018 16:33:10 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `ad_info`
-- ----------------------------
DROP TABLE IF EXISTS `ad_info`;
CREATE TABLE `ad_info` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(64) DEFAULT NULL,
  `city_id` varchar(64) DEFAULT NULL,
  `sort` varchar(16) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `city_info`
-- ----------------------------
DROP TABLE IF EXISTS `city_info`;
CREATE TABLE `city_info` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  `remark` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `icon_nav`
-- ----------------------------
DROP TABLE IF EXISTS `icon_info`;
CREATE TABLE `icon_info` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `icon_code` varchar(64) DEFAULT NULL,
  `url_id` varchar(128) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `city_code` int(11) DEFAULT NULL,
  `color` varchar(16) NOT NULL,
  `type` int(11) NOT NULL,
  `remark` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `role_info`
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `url_info`
-- ----------------------------
DROP TABLE IF EXISTS `site_info`;
CREATE TABLE `site_info` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `pwd` varchar(64) DEFAULT NULL,
  `age` int(32) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `lhbm`.`user_info`
 ( `address`, `remark`, `age`, `role_id`, `sex`, `name`, `pwd`) 
 values ( '地球', '\" \"', '18', '2', '1', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E');

SET FOREIGN_KEY_CHECKS = 1;
