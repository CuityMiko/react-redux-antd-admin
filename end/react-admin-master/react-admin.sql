/*
Navicat MySQL Data Transfer

Source Server         : gl
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : react-admin

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-05-28 12:42:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_resource`;
CREATE TABLE `t_sys_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL COMMENT '文本信息',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `parent_id` int(11) DEFAULT '0' COMMENT '父级id',
  `path` varchar(255) DEFAULT NULL COMMENT '对应路径',
  `type` int(1) DEFAULT NULL COMMENT '1-目录 2-菜单 3-资源',
  `perm` varchar(255) DEFAULT NULL COMMENT '权限信息',
  `deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_sys_resource
-- ----------------------------
INSERT INTO `t_sys_resource` VALUES ('1', '基础管理', 'setting', '0', null, '1', null, '0', '2018-04-25 17:39:21', '2018-04-25 17:39:21', null, null);
INSERT INTO `t_sys_resource` VALUES ('2', '用户管理', 'user', '1', '/user', '2', null, '0', '2018-04-25 17:39:30', '2018-04-25 17:39:30', null, null);
INSERT INTO `t_sys_resource` VALUES ('3', '角色管理', 'up-circle-o', '1', '/role', '2', null, '0', '2018-04-25 17:39:36', '2018-04-25 17:39:36', null, null);
INSERT INTO `t_sys_resource` VALUES ('4', '资源管理', 'up-circle-o', '1', '/resource', '2', null, '0', '2018-04-25 17:39:58', '2018-04-25 17:39:58', null, null);
INSERT INTO `t_sys_resource` VALUES ('5', '查看', null, '2', null, '3', 'user-select', '0', '2018-04-27 16:50:55', '2018-04-27 16:50:55', null, null);
INSERT INTO `t_sys_resource` VALUES ('6', '修改', null, '2', null, '3', 'user-update', '0', '2018-04-27 16:51:05', '2018-04-27 16:51:05', null, null);
INSERT INTO `t_sys_resource` VALUES ('7', '新增', null, '2', null, '3', 'user-save', '0', '2018-04-27 16:51:20', '2018-04-27 16:51:20', null, null);
INSERT INTO `t_sys_resource` VALUES ('8', '删除', null, '2', null, '3', 'user-del', '0', '2018-04-27 16:51:32', '2018-04-27 16:51:32', null, null);
INSERT INTO `t_sys_resource` VALUES ('9', '获取角色信息', null, '7', null, '3', 'user-role-get', '0', '2018-05-16 17:36:43', '2018-05-16 17:36:43', null, null);
INSERT INTO `t_sys_resource` VALUES ('10', '查看', null, '4', null, '3', 'resource-select', '0', '2018-05-21 17:38:03', '2018-05-21 17:38:03', null, null);
INSERT INTO `t_sys_resource` VALUES ('11', '修改', null, '4', null, '3', 'resource-update', '0', '2018-05-21 17:38:11', '2018-05-21 17:38:11', null, null);
INSERT INTO `t_sys_resource` VALUES ('12', '新增', null, '4', null, '3', 'resource-save', '0', '2018-05-21 17:38:15', '2018-05-21 17:38:15', null, null);
INSERT INTO `t_sys_resource` VALUES ('13', '删除', null, '4', null, '3', 'resource-del', '0', '2018-05-21 17:38:21', '2018-05-21 17:38:21', null, null);
INSERT INTO `t_sys_resource` VALUES ('15', '仓库管理', 'home', '0', null, '1', null, '0', '2018-05-26 13:49:51', '2018-05-26 14:12:57', '1', '0');
INSERT INTO `t_sys_resource` VALUES ('16', '查看', null, '3', null, '3', 'role-select', '0', '2018-05-26 15:28:55', '2018-05-26 15:28:55', null, null);
INSERT INTO `t_sys_resource` VALUES ('17', '修改', null, '3', null, '3', 'role-update', '0', '2018-05-26 15:28:59', '2018-05-26 15:28:59', null, null);
INSERT INTO `t_sys_resource` VALUES ('18', '新增', null, '3', null, '3', 'role-save', '0', '2018-05-26 15:29:01', '2018-05-26 15:29:01', null, null);
INSERT INTO `t_sys_resource` VALUES ('19', '删除', null, '3', null, '3', 'role-del', '0', '2018-05-26 15:29:04', '2018-05-26 15:29:04', null, null);
INSERT INTO `t_sys_resource` VALUES ('20', '获取资源信息', null, '3', null, '3', 'role-resource-get', '0', '2018-05-26 15:29:06', '2018-05-26 15:29:06', null, null);

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', 'ROLE_ADMIN', '管理员', '0', '2018-04-25 17:30:28', '2018-04-25 17:30:28', null, null);
INSERT INTO `t_sys_role` VALUES ('2', 'ROLE_ADMIN1', '管理员1', '0', '2018-04-27 12:59:25', '2018-04-27 12:59:25', null, null);
INSERT INTO `t_sys_role` VALUES ('5', 'TEST', '测试', '0', '2018-05-28 10:47:20', '2018-05-28 10:47:27', '0', '0');
INSERT INTO `t_sys_role` VALUES ('6', 'TEST1', '测试1', '0', '2018-05-28 12:12:45', '2018-05-28 12:12:56', '0', '0');

-- ----------------------------
-- Table structure for t_sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_resource`;
CREATE TABLE `t_sys_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_sys_role_resource
-- ----------------------------
INSERT INTO `t_sys_role_resource` VALUES ('21', '5', '16');
INSERT INTO `t_sys_role_resource` VALUES ('22', '5', '3');
INSERT INTO `t_sys_role_resource` VALUES ('41', '6', '5');
INSERT INTO `t_sys_role_resource` VALUES ('42', '6', '2');
INSERT INTO `t_sys_role_resource` VALUES ('43', '6', '16');
INSERT INTO `t_sys_role_resource` VALUES ('44', '6', '17');
INSERT INTO `t_sys_role_resource` VALUES ('45', '6', '20');
INSERT INTO `t_sys_role_resource` VALUES ('46', '6', '3');
INSERT INTO `t_sys_role_resource` VALUES ('47', '6', '1');

-- ----------------------------
-- Table structure for t_sys_token
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_token`;
CREATE TABLE `t_sys_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_sys_token
-- ----------------------------
INSERT INTO `t_sys_token` VALUES ('1', '1', 'sss', '2018-05-29 00:16:49', '0', '2018-05-28 12:16:49', '2018-05-28 12:16:49', '0', '0');
INSERT INTO `t_sys_token` VALUES ('2', '2', '4058c4abfad24b5f8e863982be8cc095', '2018-05-22 03:15:28', '0', '2018-05-21 15:15:28', '2018-05-21 15:15:28', '0', '0');
INSERT INTO `t_sys_token` VALUES ('3', '3', 'b11a205713704e17a5b3befcd4b0482e', '2018-05-29 00:16:17', '0', '2018-05-28 12:16:17', '2018-05-28 12:16:17', '0', '0');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '孙大大', '0', '2018-04-25 17:11:28', '2018-04-25 17:11:28', null, null);
INSERT INTO `t_sys_user` VALUES ('2', 'fangfang', '202cb962ac59075b964b07152d234b70', 'fangfang1', '0', '2018-04-27 17:08:50', '2018-05-21 15:15:19', '1', '1');
INSERT INTO `t_sys_user` VALUES ('3', 'jingjing', '202cb962ac59075b964b07152d234b70', 'jingjingg2', '0', '2018-04-27 17:08:56', '2018-05-28 12:09:52', '1', '1');
INSERT INTO `t_sys_user` VALUES ('4', 'mingming', null, 'mingming', '1', '2018-04-27 17:09:01', '2018-04-27 17:09:01', '1', null);
INSERT INTO `t_sys_user` VALUES ('5', 'mingming1', null, 'mingming2', '1', '2018-05-01 20:54:11', '2018-05-21 16:19:02', '1', '1');
INSERT INTO `t_sys_user` VALUES ('6', 'mingming2', null, null, '1', '2018-05-01 20:54:14', '2018-05-01 20:54:14', '1', null);
INSERT INTO `t_sys_user` VALUES ('7', 'mingming3', null, null, '0', '2018-05-01 20:54:17', '2018-05-01 20:54:17', '1', null);
INSERT INTO `t_sys_user` VALUES ('8', 'mingming4', null, null, '0', '2018-05-01 20:54:20', '2018-05-01 20:54:20', '1', null);
INSERT INTO `t_sys_user` VALUES ('9', 'mingming5', null, null, '0', '2018-05-01 20:54:23', '2018-05-01 20:54:23', '1', null);
INSERT INTO `t_sys_user` VALUES ('10', 'mingming6', null, null, '0', '2018-05-01 20:54:26', '2018-05-01 20:54:26', '1', null);
INSERT INTO `t_sys_user` VALUES ('11', 'mingming7', null, null, '0', '2018-05-01 20:54:29', '2018-05-01 20:54:29', '1', null);
INSERT INTO `t_sys_user` VALUES ('12', 'mingming8', null, null, '0', '2018-05-01 20:54:32', '2018-05-01 20:54:32', '1', null);
INSERT INTO `t_sys_user` VALUES ('13', 'admin', 'admin', 'f', '0', '2018-05-16 16:50:28', '2018-05-16 16:50:28', '0', '0');
INSERT INTO `t_sys_user` VALUES ('14', 'admin', 'admin', 'as', '0', '2018-05-17 14:20:02', '2018-05-17 14:20:02', '0', '0');
INSERT INTO `t_sys_user` VALUES ('15', 'admin', 'admin', 'd', '1', '2018-05-17 14:34:50', '2018-05-17 14:34:50', '0', '0');
INSERT INTO `t_sys_user` VALUES ('16', 'g', 'g', 'g', '0', '2018-05-17 14:45:35', '2018-05-17 14:45:35', '0', '0');
INSERT INTO `t_sys_user` VALUES ('17', 'sunh', '123456', '孙涵', '0', '2018-05-18 16:03:57', '2018-05-18 16:03:57', '0', '0');
INSERT INTO `t_sys_user` VALUES ('18', '111', '111', '111', '0', '2018-05-18 17:06:22', '2018-05-18 17:06:22', '1', '0');
INSERT INTO `t_sys_user` VALUES ('19', '222', '222', '222', '0', '2018-05-18 17:08:16', '2018-05-18 17:08:16', '1', '0');
INSERT INTO `t_sys_user` VALUES ('20', 'fff', 'fff', 'fffgg', '0', '2018-05-18 17:12:42', '2018-05-18 18:19:49', '1', '1');
INSERT INTO `t_sys_user` VALUES ('21', 'admin', '202cb962ac59075b964b07152d234b70', 'f', '1', '2018-05-22 14:07:23', '2018-05-22 14:09:50', '1', '1');
INSERT INTO `t_sys_user` VALUES ('22', 'f', 'c20ad4d76fe97759aa27a0c99bff6710', 'f', '1', '2018-05-22 14:11:52', '2018-05-22 14:12:00', '1', '1');

-- ----------------------------
-- Table structure for t_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_role`;
CREATE TABLE `t_sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------
INSERT INTO `t_sys_user_role` VALUES ('1', '1', '2');
INSERT INTO `t_sys_user_role` VALUES ('2', '1', '1');
INSERT INTO `t_sys_user_role` VALUES ('13', '20', '1');
INSERT INTO `t_sys_user_role` VALUES ('14', '20', '2');
INSERT INTO `t_sys_user_role` VALUES ('20', '2', '2');
INSERT INTO `t_sys_user_role` VALUES ('21', '5', '2');
INSERT INTO `t_sys_user_role` VALUES ('30', '21', '1');
INSERT INTO `t_sys_user_role` VALUES ('33', '22', '1');
INSERT INTO `t_sys_user_role` VALUES ('34', '22', '2');
INSERT INTO `t_sys_user_role` VALUES ('36', '3', '6');

-- ----------------------------
-- Procedure structure for generateCommonField
-- ----------------------------
DROP PROCEDURE IF EXISTS `generateCommonField`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateCommonField`(in tableName varchar(32))
BEGIN
-- set @_sql = '';
set @_sql = concat(' alter table ', tableName ,' add column deleted tinyint(1) default 0;');
PREPARE stmt from @_sql;
EXECUTE stmt; 
set @_sql = concat(' alter table ', tableName ,' add column create_time datetime default CURRENT_TIMESTAMP;');
PREPARE stmt from @_sql;
EXECUTE stmt; 
set @_sql = concat(' alter table ', tableName ,' add column update_time datetime default CURRENT_TIMESTAMP;');
PREPARE stmt from @_sql;
EXECUTE stmt; 
set @_sql = concat(' alter table ', tableName ,' add column create_user_id int;');
PREPARE stmt from @_sql;
EXECUTE stmt; 
set @_sql = concat(' alter table ', tableName ,' add column update_user_id int;');
PREPARE stmt from @_sql;
EXECUTE stmt; 
DEALLOCATE PREPARE stmt; 
END
;;
DELIMITER ;
