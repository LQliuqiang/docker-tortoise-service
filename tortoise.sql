/*
Navicat MySQL Data Transfer

Source Server         : 10.124.132.40
Source Server Version : 50642
Source Host           : 10.124.132.40:3306
Source Database       : tortoise

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2020-07-10 10:25:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for err_log
-- ----------------------------
DROP TABLE IF EXISTS `err_log`;
CREATE TABLE `err_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id号',
  `err_info` text NOT NULL COMMENT '错误信息',
  `server_name` varchar(128) DEFAULT NULL,
  `request_url` varchar(128) DEFAULT NULL,
  `query_args` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of err_log
-- ----------------------------

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(64) NOT NULL,
  `permission_tag` varchar(64) NOT NULL,
  `permission_desc` varchar(255) DEFAULT NULL,
  `permission_type` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '管理员权限', 'ADMIN', '系统管理员', '管理员', '2020-05-05 13:39:33', '2020-05-05 13:39:38');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) NOT NULL,
  `role_tag` varchar(64) DEFAULT NULL,
  `role_desc` varchar(255) DEFAULT NULL,
  `role_type` varchar(64) DEFAULT NULL,
  `permissions` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', 'admin', '管理员', '系统管理员', '1', '2020-05-05 11:29:26', '2020-05-05 11:29:28');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `department` varchar(64) DEFAULT NULL,
  `duty` varchar(64) DEFAULT NULL,
  `head_url` varchar(128) DEFAULT NULL,
  `roles` varchar(68) DEFAULT NULL,
  `custom_info` text,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('c1b1bb738d9747fda82ec3fda9d4364e', 'tortoise', 'VK06w+V6ss6DHNMeXsGytw==', '管理员', 'admin', '13677921069', '1342685905@qq.com', 'fiiaa', '产品部', '经理', null, '1', null, '2020-05-07 07:08:57', '2020-07-10 02:07:13');
