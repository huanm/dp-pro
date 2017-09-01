/*
Navicat MySQL Data Transfer

Source Server         : mysql192.168.180.134
Source Server Version : 50548
Source Host           : 192.168.180.134:3306
Source Database       : dp-pro

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2017-09-01 14:59:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, '', '0', 'fa fa-coffee', '0', '2017-08-09 22:49:47', '2017-08-17 09:53:26');
INSERT INTO `sys_menu` VALUES ('2', '1', '系统菜单', 'base/menu/list.html', null, '1', 'fa fa-th-list', '1', '2017-08-09 22:55:15', '2017-08-17 10:00:12');
INSERT INTO `sys_menu` VALUES ('3', '0', '组织机构', null, null, '0', 'fa fa-desktop', '1', '2017-08-09 23:06:55', '2017-08-17 09:54:28');
INSERT INTO `sys_menu` VALUES ('4', '1', '通用字典', 'base/macro/list.html', null, '1', 'fa fa-book', '2', '2017-08-09 23:06:58', '2017-08-17 10:00:24');
INSERT INTO `sys_menu` VALUES ('6', '3', '用户管理', 'base/user/list.html', null, '1', 'fa fa-user', '2', '2017-08-10 14:12:11', '2017-08-17 09:57:40');
INSERT INTO `sys_menu` VALUES ('7', '3', '角色管理', 'base/role/list.html', null, '1', 'fa fa-paw', '1', '2017-08-10 14:13:19', '2017-08-17 09:57:32');
INSERT INTO `sys_menu` VALUES ('11', '6', '刷新', null, 'sys:user:list', '2', null, '0', '2017-08-14 10:51:05', null);
INSERT INTO `sys_menu` VALUES ('12', '6', '新增', null, 'sys:user:save', '2', null, '0', '2017-08-14 10:51:35', null);
INSERT INTO `sys_menu` VALUES ('13', '6', '编辑', null, 'sys:user:edit', '2', null, '0', '2017-08-14 10:52:06', null);
INSERT INTO `sys_menu` VALUES ('14', '6', '删除', null, 'sys:user:remove', '2', null, '0', '2017-08-14 10:52:24', null);
INSERT INTO `sys_menu` VALUES ('15', '7', '刷新', null, 'sys:role:list', '2', null, '0', '2017-08-14 10:56:37', null);
INSERT INTO `sys_menu` VALUES ('16', '7', '新增', null, 'sys:role:save', '2', null, '0', '2017-08-14 10:57:02', null);
INSERT INTO `sys_menu` VALUES ('17', '7', '编辑', null, 'sys:role:edit', '2', null, '0', '2017-08-14 10:57:31', '2017-08-17 14:28:27');
INSERT INTO `sys_menu` VALUES ('18', '7', '删除', null, 'sys:role:remove', '2', null, '0', '2017-08-14 10:57:50', null);
INSERT INTO `sys_menu` VALUES ('19', '7', '操作权限', null, 'sys:role:authorizeOpt', '2', null, '0', '2017-08-14 10:58:55', '2017-08-17 13:48:54');
INSERT INTO `sys_menu` VALUES ('20', '2', '刷新', null, 'sys:menu:list', '2', null, '0', '2017-08-14 10:59:32', null);
INSERT INTO `sys_menu` VALUES ('21', '2', '新增', null, 'sys:menu:save', '2', null, '0', '2017-08-14 10:59:56', null);
INSERT INTO `sys_menu` VALUES ('22', '2', '编辑', null, 'sys:menu:edit', '2', null, '0', '2017-08-14 11:00:26', null);
INSERT INTO `sys_menu` VALUES ('23', '2', '删除', null, 'sys:menu:remove', '2', null, '0', '2017-08-14 11:00:58', null);
INSERT INTO `sys_menu` VALUES ('24', '6', '启用', null, 'sys:user:enable', '2', null, '0', '2017-08-14 17:27:18', null);
INSERT INTO `sys_menu` VALUES ('25', '6', '停用', null, 'sys:user:disable', '2', null, '0', '2017-08-14 17:27:43', null);
INSERT INTO `sys_menu` VALUES ('26', '6', '重置密码', null, 'sys:user:resetPassword', '2', null, '0', '2017-08-14 17:28:34', null);
INSERT INTO `sys_menu` VALUES ('27', '1', '系统日志', 'base/log/list.html', null, '1', 'fa fa-warning', '3', '2017-08-14 22:11:53', '2017-08-17 09:55:19');
INSERT INTO `sys_menu` VALUES ('28', '27', '刷新', null, 'sys:log:list', '2', null, '0', '2017-08-14 22:30:22', null);
INSERT INTO `sys_menu` VALUES ('29', '27', '删除', null, 'sys:log:remove', '2', null, '0', '2017-08-14 22:30:43', null);
INSERT INTO `sys_menu` VALUES ('30', '27', '清空', null, 'sys:log:clear', '2', null, '0', '2017-08-14 22:31:02', null);
INSERT INTO `sys_menu` VALUES ('32', '4', '刷新', null, 'sys:macro:list', '2', null, '0', '2017-08-15 16:55:33', null);
INSERT INTO `sys_menu` VALUES ('33', '4', '新增', null, 'sys:macro:save', '2', null, '0', '2017-08-15 16:55:52', null);
INSERT INTO `sys_menu` VALUES ('34', '4', '编辑', null, 'sys:macro:edit', '2', null, '0', '2017-08-15 16:56:09', null);
INSERT INTO `sys_menu` VALUES ('35', '4', '删除', null, 'sys:macro:remove', '2', null, '0', '2017-08-15 16:56:29', null);
INSERT INTO `sys_menu` VALUES ('36', '3', '机构管理', 'base/org/list.html', null, '1', 'fa fa-sitemap', '0', '2017-08-17 09:57:14', null);
INSERT INTO `sys_menu` VALUES ('37', '1', '行政区域', 'base/area/list.html', null, '1', 'fa fa-leaf', '0', '2017-08-17 09:59:57', null);
INSERT INTO `sys_menu` VALUES ('38', '37', '刷新', null, 'sys:area:list', '2', null, '0', '2017-08-17 10:01:33', '2017-08-17 10:01:52');
INSERT INTO `sys_menu` VALUES ('39', '37', '新增', null, 'sys:area:save', '2', null, '0', '2017-08-17 10:02:16', null);
INSERT INTO `sys_menu` VALUES ('40', '37', '编辑', null, 'sys:area:edit', '2', null, '0', '2017-08-17 10:02:33', null);
INSERT INTO `sys_menu` VALUES ('41', '37', '删除', null, 'sys:area:remove', '2', null, '0', '2017-08-17 10:02:50', null);
INSERT INTO `sys_menu` VALUES ('42', '36', '刷新', null, 'sys:org:list', '2', null, '0', '2017-08-17 10:03:36', null);
INSERT INTO `sys_menu` VALUES ('43', '36', '新增', null, 'sys:org:save', '2', null, '0', '2017-08-17 10:03:54', null);
INSERT INTO `sys_menu` VALUES ('44', '36', '编辑', null, 'sys:org:edit', '2', null, '0', '2017-08-17 10:04:11', null);
INSERT INTO `sys_menu` VALUES ('45', '36', '删除', null, 'sys:org:remove', '2', null, '0', '2017-08-17 10:04:30', null);
INSERT INTO `sys_menu` VALUES ('46', '7', '数据权限', null, 'sys:role:authorizeData', '2', null, '0', '2017-08-17 13:48:11', null);
INSERT INTO `sys_menu` VALUES ('47', '1', '定时任务', 'base/quartz/list.html', null, '1', 'fa fa-bell', '4', '2017-08-19 23:00:08', null);
INSERT INTO `sys_menu` VALUES ('48', '47', '刷新', null, 'quartz:job:list', '2', null, '0', '2017-08-19 23:00:54', null);
INSERT INTO `sys_menu` VALUES ('49', '47', '新增', null, 'quartz:job:save', '2', null, '0', '2017-08-19 23:01:29', null);
INSERT INTO `sys_menu` VALUES ('50', '47', '编辑', null, 'quartz:job:edit', '2', null, '0', '2017-08-19 23:01:58', null);
INSERT INTO `sys_menu` VALUES ('51', '47', '删除', null, 'quartz:job:remove', '2', null, '0', '2017-08-19 23:02:30', null);
INSERT INTO `sys_menu` VALUES ('52', '47', '启用', null, 'quartz:job:enable', '2', null, '0', '2017-08-19 23:08:59', null);
INSERT INTO `sys_menu` VALUES ('53', '47', '停用', null, 'quartz:job:disable', '2', null, '0', '2017-08-19 23:09:31', null);
INSERT INTO `sys_menu` VALUES ('54', '47', '立即执行', null, 'quartz:job:run', '2', null, '0', '2017-08-19 23:10:09', null);
INSERT INTO `sys_menu` VALUES ('55', '47', '日志列表', null, 'quartz:job:log', '2', null, '0', '2017-08-19 23:10:40', null);
INSERT INTO `sys_menu` VALUES ('56', '47', '刷新', null, 'quartz:log:list', '2', null, '0', '2017-08-21 13:25:33', null);
INSERT INTO `sys_menu` VALUES ('57', '47', '删除', null, 'quartz:log:remove', '2', null, '0', '2017-08-21 13:25:52', null);
INSERT INTO `sys_menu` VALUES ('58', '47', '清空', null, 'quartz:log:clear', '2', null, '0', '2017-08-21 13:26:11', null);

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `org_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级机构ID，一级机构为0',
  `code` varchar(100) DEFAULT NULL COMMENT '机构编码',
  `name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT '1' COMMENT '可用标识  1：可用  0：不可用',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='机构管理';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('1', '0', 'js', '江苏省', '0', '1', '2017-08-17 12:03:15', '2017-08-17 17:06:08');
INSERT INTO `sys_org` VALUES ('2', '1', 'nj', '南京市', '0', '1', '2017-08-17 12:03:43', null);
INSERT INTO `sys_org` VALUES ('3', '2', 'gc', '高淳区', '0', '1', '2017-08-17 12:04:47', null);
INSERT INTO `sys_org` VALUES ('4', '3', 'syxx', '高淳区实验小学', '0', '1', '2017-08-17 12:05:31', null);
INSERT INTO `sys_org` VALUES ('5', '4', 'syxx01', '一年级', '0', '1', '2017-08-17 12:06:35', null);
INSERT INTO `sys_org` VALUES ('6', '4', 'syxx02', '二年级', '1', '1', '2017-08-17 12:06:37', null);
INSERT INTO `sys_org` VALUES ('7', '4', 'syxx03', '三年级', '2', '1', '2017-08-17 12:06:41', null);
INSERT INTO `sys_org` VALUES ('9', '5', 'syxx0102', '二班', '1', '1', '2017-08-17 12:07:39', null);
INSERT INTO `sys_org` VALUES ('10', '5', 'syxx0103', '三班', '2', '1', '2017-08-17 12:07:41', null);
INSERT INTO `sys_org` VALUES ('11', '6', 'syxx0201', '一班', '0', '1', '2017-08-17 12:08:56', null);
INSERT INTO `sys_org` VALUES ('12', '6', 'syxx0202', '二班', '1', '1', '2017-08-17 12:08:59', null);
INSERT INTO `sys_org` VALUES ('13', '6', 'syxx0203', '三班', '2', '1', '2017-08-17 12:09:03', null);
INSERT INTO `sys_org` VALUES ('14', '7', 'syxx0301', '一班', '0', '1', '2017-08-17 12:09:05', null);
INSERT INTO `sys_org` VALUES ('15', '7', 'syxx0302', '二班', '1', '1', '2017-08-17 12:09:08', null);
INSERT INTO `sys_org` VALUES ('16', '7', 'syxx0303', '三班', '2', '1', '2017-08-17 12:09:10', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `org_id` bigint(255) DEFAULT NULL COMMENT '所属机构',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='系统角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '1', '超级管理员', 'admin', '【系统内置】', '2', '2017-08-12 00:43:52', '2017-08-12 19:14:59');
INSERT INTO `sys_role` VALUES ('39', '3', '测试用户', 'test', null, '1', '2017-08-17 19:41:15', '2017-08-17 19:42:39');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=834 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('778', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('779', '1', '37');
INSERT INTO `sys_role_menu` VALUES ('780', '1', '38');
INSERT INTO `sys_role_menu` VALUES ('781', '1', '39');
INSERT INTO `sys_role_menu` VALUES ('782', '1', '40');
INSERT INTO `sys_role_menu` VALUES ('783', '1', '41');
INSERT INTO `sys_role_menu` VALUES ('784', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('785', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('786', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('787', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('788', '1', '23');
INSERT INTO `sys_role_menu` VALUES ('789', '1', '4');
INSERT INTO `sys_role_menu` VALUES ('790', '1', '32');
INSERT INTO `sys_role_menu` VALUES ('791', '1', '33');
INSERT INTO `sys_role_menu` VALUES ('792', '1', '34');
INSERT INTO `sys_role_menu` VALUES ('793', '1', '35');
INSERT INTO `sys_role_menu` VALUES ('794', '1', '27');
INSERT INTO `sys_role_menu` VALUES ('795', '1', '28');
INSERT INTO `sys_role_menu` VALUES ('796', '1', '29');
INSERT INTO `sys_role_menu` VALUES ('797', '1', '30');
INSERT INTO `sys_role_menu` VALUES ('798', '1', '47');
INSERT INTO `sys_role_menu` VALUES ('799', '1', '48');
INSERT INTO `sys_role_menu` VALUES ('800', '1', '49');
INSERT INTO `sys_role_menu` VALUES ('801', '1', '50');
INSERT INTO `sys_role_menu` VALUES ('802', '1', '51');
INSERT INTO `sys_role_menu` VALUES ('803', '1', '52');
INSERT INTO `sys_role_menu` VALUES ('804', '1', '53');
INSERT INTO `sys_role_menu` VALUES ('805', '1', '54');
INSERT INTO `sys_role_menu` VALUES ('806', '1', '55');
INSERT INTO `sys_role_menu` VALUES ('807', '1', '56');
INSERT INTO `sys_role_menu` VALUES ('808', '1', '57');
INSERT INTO `sys_role_menu` VALUES ('809', '1', '58');
INSERT INTO `sys_role_menu` VALUES ('813', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('814', '1', '36');
INSERT INTO `sys_role_menu` VALUES ('815', '1', '42');
INSERT INTO `sys_role_menu` VALUES ('816', '1', '43');
INSERT INTO `sys_role_menu` VALUES ('817', '1', '44');
INSERT INTO `sys_role_menu` VALUES ('818', '1', '45');
INSERT INTO `sys_role_menu` VALUES ('819', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('820', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('821', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('822', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('823', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('824', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('825', '1', '46');
INSERT INTO `sys_role_menu` VALUES ('826', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('827', '1', '11');
INSERT INTO `sys_role_menu` VALUES ('828', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('829', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('830', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('831', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('832', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('833', '1', '26');

-- ----------------------------
-- Table structure for sys_role_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_org`;
CREATE TABLE `sys_role_org` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `org_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='角色与机构对应关系';

-- ----------------------------
-- Records of sys_role_org
-- ----------------------------
INSERT INTO `sys_role_org` VALUES ('14', '1', '1');
INSERT INTO `sys_role_org` VALUES ('15', '1', '2');
INSERT INTO `sys_role_org` VALUES ('16', '39', '9');
INSERT INTO `sys_role_org` VALUES ('17', '39', '12');
INSERT INTO `sys_role_org` VALUES ('18', '39', '16');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `org_id` bigint(255) DEFAULT NULL COMMENT '所属机构',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(255) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', 'admin', '33808479d49ca8a3cdc93d4f976d1e3d', 'admin@example.com', '123456', '1', null, '1', '2017-08-15 21:40:39', '2017-08-15 21:41:00');
INSERT INTO `sys_user` VALUES ('2', '7', 'test', '432d2eb39bc04f6e7142f3620dba3633', null, null, '1', null, '1', '2017-08-14 13:43:05', '2017-08-31 14:36:29');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('46', '1', '1');
INSERT INTO `sys_user_role` VALUES ('47', '2', '1');
INSERT INTO `sys_user_role` VALUES ('48', '2', '39');
