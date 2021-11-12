/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : x-admin

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 11/11/2021 16:28:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 423 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;
CREATE TABLE `t_message`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父ID',
  `foreign_id` bigint NULL DEFAULT 0 COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '留言表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (16, 'The real-time temperature function of this feeder is reaaaaaaally good. Seeing that it is cold today, I remotely turned on an air conditioner in the office. She must be cozzzzzy right now.', 'Fiona', '2021-04-23 23:15:57', NULL, 0);
INSERT INTO `t_message` VALUES (17, 'My sweetie ate a lot today, and there isn\'t much left in the pot. It seems to be getting fat. I love fat&cute cat.', 'Joey', '2021-04-23 23:17:46', 16, 0);
INSERT INTO `t_message` VALUES (19, 'Ticks me off, this dog doesn\'t eat all day long. Is he going to keep.... fit.....???', 'Fiona', '2021-04-24 11:08:41', 17, 0);

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (80, '用户 admin 登录系统', '2021-05-25 16:42:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (81, '更新用户：admin ', '2021-05-25 16:42:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (82, '用户 admin 退出系统', '2021-05-25 16:42:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (83, '用户 admin 登录系统', '2021-05-25 16:42:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (84, '更新用户：jerry ', '2021-05-25 16:49:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (85, '用户 admin 登录系统', '2021-05-25 16:49:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (86, '用户 admin 登录系统', '2021-05-25 16:50:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (87, '更新用户：jerry ', '2021-05-25 16:50:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (88, '用户 admin 登录系统', '2021-05-26 16:35:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (89, '更新用户：jerry ', '2021-05-26 16:36:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (90, '更新用户：jack ', '2021-05-26 16:36:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (91, '删除用户 tom ', '2021-05-26 16:36:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (92, '删除用户 hello ', '2021-05-26 16:36:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (93, '删除用户 jack ', '2021-05-26 16:36:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (94, '删除用户 jerry ', '2021-05-26 16:36:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (95, '用户 admin 登录系统', '2021-05-31 12:18:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (96, '更新用户：admin ', '2021-05-31 12:19:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (97, '更新用户：admin ', '2021-05-31 12:19:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (98, '用户 admin 登录系统', '2021-06-01 16:46:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (99, '新增用户：zhang ', '2021-06-01 16:46:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (100, '新增用户：li ', '2021-06-01 16:47:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (101, '更新用户：admin ', '2021-06-01 16:47:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (102, '用户 admin 退出系统', '2021-06-01 16:47:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (103, '用户 admin 登录系统', '2021-06-01 16:47:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (104, '更新用户：li ', '2021-06-01 16:47:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (105, '更新用户：zhang ', '2021-06-01 16:47:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (106, '用户 admin 登录系统', '2021-06-07 12:32:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (107, '用户 admin 登录系统', '2021-06-07 14:16:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (108, '用户 admin 登录系统', '2021-06-07 14:34:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (109, '更新用户：li ', '2021-06-07 14:35:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (110, '更新用户：li ', '2021-06-07 14:35:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (111, '更新角色：超级管理员', '2021-06-07 14:35:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (112, '更新角色：超级管理员', '2021-06-07 14:35:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (113, '更新权限菜单：用户管理', '2021-06-07 14:37:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (114, '更新权限菜单：用户管理', '2021-06-07 14:38:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (115, '更新权限菜单：用户管理', '2021-06-07 14:38:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (116, '更新权限菜单：用户管理', '2021-06-07 14:38:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (117, '用户 admin 登录系统', '2021-06-07 14:57:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (118, '更新角色：超级管理员', '2021-06-07 14:57:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (119, '用户 admin 登录系统', '2021-06-09 23:19:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (120, '删除权限菜单：学生管理', '2021-06-09 23:19:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (121, '用户 admin 登录系统', '2021-06-12 10:18:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (122, '更新角色：超级管理员', '2021-06-12 10:30:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (123, '用户 admin 登录系统', '2021-06-12 13:55:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (124, '用户 admin 登录系统', '2021-06-27 10:44:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (125, '更新角色：超级管理员', '2021-06-27 10:44:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (126, '用户 admin 登录系统', '2021-06-27 11:15:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (127, '更新角色：超级管理员', '2021-06-27 11:15:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (128, '用户 admin 登录系统', '2021-06-27 11:18:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (129, '用户 admin 登录系统', '2021-06-27 11:41:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (130, '更新角色：超级管理员', '2021-06-27 11:42:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (131, '用户 admin 登录系统', '2021-06-27 11:49:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (132, '用户 admin 登录系统', '2021-09-28 19:16:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (133, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (134, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (135, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (136, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (137, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (138, '用户 admin 登录系统', '2021-09-28 19:43:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (139, '用户 admin 登录系统', '2021-09-28 19:45:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (140, '用户 admin 登录系统', '2021-09-28 19:55:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (141, '用户 admin 登录系统', '2021-09-28 19:59:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (142, '用户 admin 登录系统', '2021-10-04 18:39:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (143, '用户 admin 登录系统', '2021-10-04 18:40:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (144, '更新用户：admin ', '2021-10-04 18:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (145, '用户 admin 登录系统', '2021-10-04 19:35:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (146, '更新用户：admin ', '2021-10-04 19:41:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (147, '用户 admin 登录系统', '2021-10-04 19:42:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (148, '用户 admin 登录系统', '2021-10-04 19:56:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (149, '用户 admin 登录系统', '2021-10-04 19:58:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (150, '用户 admin 登录系统', '2021-10-04 20:23:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (151, '用户 admin 登录系统', '2021-10-04 20:29:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (152, '用户 admin 登录系统', '2021-10-04 20:32:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (153, '用户 admin 登录系统', '2021-10-04 20:33:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (154, '用户 admin 登录系统', '2021-10-04 20:35:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (155, '用户 admin 登录系统', '2021-10-04 20:36:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (156, '用户 admin 登录系统', '2021-10-04 20:37:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (157, '用户 admin 登录系统', '2021-10-04 20:38:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (158, '用户 admin 登录系统', '2021-10-04 20:40:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (159, '用户 admin 登录系统', '2021-10-04 20:42:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (160, '用户 admin 登录系统', '2021-10-04 20:43:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (161, '用户 admin 登录系统', '2021-10-04 20:45:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (162, '用户 admin 登录系统', '2021-10-04 20:45:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (163, '用户 admin 登录系统', '2021-10-04 20:46:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (164, '用户 admin 登录系统', '2021-10-04 20:48:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (165, '用户 admin 登录系统', '2021-10-04 20:55:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (166, '用户 admin 登录系统', '2021-10-04 20:56:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (167, '用户 admin 登录系统', '2021-10-04 20:57:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (168, '用户 admin 登录系统', '2021-10-04 20:58:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (169, '用户 admin 登录系统', '2021-10-04 20:58:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (170, '用户 admin 登录系统', '2021-10-04 20:59:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (171, '用户 admin 登录系统', '2021-10-04 21:00:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (172, '用户 admin 登录系统', '2021-10-04 21:02:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (173, '用户 admin 登录系统', '2021-10-04 21:04:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (174, '用户 admin 登录系统', '2021-10-04 21:06:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (175, '用户 admin 登录系统', '2021-10-10 09:43:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (176, '用户 admin 登录系统', '2021-10-10 09:44:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (177, '用户 admin 登录系统', '2021-10-10 09:46:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (178, '用户 admin 登录系统', '2021-10-10 09:47:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (179, '用户 admin 登录系统', '2021-10-10 09:49:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (180, '用户 admin 登录系统', '2021-10-10 09:50:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (181, '用户 admin 登录系统', '2021-10-10 09:53:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (182, '用户 admin 登录系统', '2021-10-10 09:58:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (183, '用户 admin 登录系统', '2021-10-10 09:59:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (184, '用户 admin 登录系统', '2021-10-10 10:00:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (185, '用户 admin 登录系统', '2021-10-10 10:01:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (186, '用户 admin 登录系统', '2021-10-10 10:04:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (187, '用户 admin 登录系统', '2021-10-10 10:05:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (188, '用户 admin 登录系统', '2021-10-10 10:05:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (189, '用户 admin 登录系统', '2021-10-10 10:06:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (190, '用户 admin 登录系统', '2021-10-10 10:07:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (191, '用户 admin 登录系统', '2021-10-10 10:08:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (192, '用户 admin 登录系统', '2021-10-10 10:09:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (193, '用户 admin 登录系统', '2021-10-10 10:09:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (194, '用户 admin 登录系统', '2021-10-10 10:11:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (195, '用户 admin 登录系统', '2021-10-10 10:12:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (196, '用户 admin 登录系统', '2021-10-18 14:01:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (197, '用户 admin 登录系统', '2021-10-18 15:31:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (198, '用户 admin 登录系统', '2021-10-18 16:06:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (199, '用户 admin 登录系统', '2021-10-18 16:06:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (200, '用户 admin 登录系统', '2021-10-24 14:07:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (201, '用户 admin 登录系统', '2021-10-24 14:07:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (202, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (203, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (204, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (205, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (206, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (207, '用户 admin 登录系统', '2021-10-24 14:16:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (208, '用户 admin 登录系统', '2021-10-24 14:16:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (209, '用户 admin 登录系统', '2021-10-24 14:20:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (210, '用户 admin 登录系统', '2021-10-24 14:22:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (211, '用户 admin 登录系统', '2021-10-24 14:25:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (212, '用户 admin 登录系统', '2021-10-24 15:02:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (213, '用户 admin 登录系统', '2021-10-24 15:02:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (214, '用户 admin 登录系统', '2021-10-24 15:03:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (215, '用户 admin 登录系统', '2021-10-24 15:03:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (216, '用户 admin 登录系统', '2021-10-24 15:07:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (217, '用户 admin 登录系统', '2021-10-24 15:08:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (218, '用户 admin 登录系统', '2021-10-24 15:08:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (219, '用户 admin 登录系统', '2021-10-24 15:37:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (220, '用户 admin 登录系统', '2021-10-24 15:38:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (221, '用户 admin 登录系统', '2021-10-24 15:41:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (222, '用户 admin 登录系统', '2021-10-24 15:42:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (223, '用户 admin 登录系统', '2021-10-24 15:45:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (224, '用户 admin 登录系统', '2021-10-24 15:46:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (225, '用户 admin 登录系统', '2021-10-24 15:47:11', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (226, '用户 admin 登录系统', '2021-10-24 15:48:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (227, '用户 admin 退出系统', '2021-10-24 15:52:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (228, '用户 admin 登录系统', '2021-10-24 15:52:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (229, '用户 admin 登录系统', '2021-10-24 16:00:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (230, '用户 admin 登录系统', '2021-10-24 16:11:47', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (231, '用户 admin 登录系统', '2021-10-24 16:13:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (232, '用户 admin 退出系统', '2021-10-24 16:13:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (233, '用户 admin 登录系统', '2021-10-24 16:14:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (234, '用户 admin 登录系统', '2021-10-24 16:16:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (235, '用户 admin 登录系统', '2021-10-24 16:17:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (236, '用户 admin 登录系统', '2021-10-24 16:35:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (237, '更新用户：admin ', '2021-10-24 16:35:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (238, '更新用户：admin ', '2021-10-24 16:36:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (239, '用户 admin 退出系统', '2021-10-24 16:36:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (240, '用户 admin 登录系统', '2021-10-24 16:36:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (241, '更新用户：admin ', '2021-10-24 16:38:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (242, '用户 admin 退出系统', '2021-10-24 16:38:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (243, '用户 Fiona 登录系统', '2021-10-24 16:38:43', 'Fiona', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (244, '更新用户：Fiona ', '2021-10-24 16:38:59', 'Fiona', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (245, '用户 Fiona 退出系统', '2021-10-24 16:39:11', 'Fiona', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (246, '用户 Joey 登录系统', '2021-10-24 16:39:26', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (247, '更新用户：Joey ', '2021-10-24 16:39:37', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (248, '用户 Joey 退出系统', '2021-10-24 16:39:45', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (249, '用户 admin 登录系统', '2021-10-24 16:39:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (250, '用户 admin 登录系统', '2021-10-24 17:11:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (251, '用户 admin 登录系统', '2021-10-25 14:33:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (252, '更新用户：Joey ', '2021-10-25 14:34:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (253, '用户 admin 登录系统', '2021-10-25 14:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (254, '用户 admin 登录系统', '2021-10-25 14:48:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (255, '用户 admin 登录系统', '2021-10-25 14:51:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (256, '用户 admin 登录系统', '2021-10-25 14:53:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (257, '用户 admin 登录系统', '2021-10-25 14:54:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (258, '用户 admin 退出系统', '2021-10-25 14:55:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (259, '用户 Fiona 登录系统', '2021-10-25 14:56:37', 'Fiona', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (260, '用户 admin 登录系统', '2021-10-25 15:56:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (261, '用户 admin 登录系统', '2021-10-25 16:05:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (262, '用户 admin 登录系统', '2021-10-25 16:10:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (263, '更新用户：Joey ', '2021-10-25 16:10:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (264, '更新用户：Fiona ', '2021-10-25 16:10:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (265, '用户 admin 登录系统', '2021-10-25 16:12:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (266, '用户 admin 登录系统', '2021-10-25 16:18:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (267, '用户 admin 登录系统', '2021-10-25 16:23:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (268, '用户 admin 登录系统', '2021-10-25 16:27:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (269, '用户 admin 登录系统', '2021-10-25 16:28:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (270, '用户 admin 退出系统', '2021-10-25 16:32:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (271, '用户 Joey 登录系统', '2021-10-25 16:32:51', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (272, '用户 joey 登录系统', '2021-10-25 16:48:57', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (273, '用户 admin 登录系统', '2021-10-31 10:44:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (274, '用户 admin 登录系统', '2021-10-31 10:47:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (275, '用户 admin 退出系统', '2021-10-31 10:47:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (276, '用户 joey 登录系统', '2021-10-31 10:48:03', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (277, '用户 joey 登录系统', '2021-10-31 10:57:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (278, '用户 joey 登录系统', '2021-10-31 11:09:17', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (279, '更新用户：Joey ', '2021-10-31 11:12:08', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (280, '用户 joey 登录系统', '2021-10-31 12:00:30', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (281, '用户 admin 登录系统', '2021-10-31 13:49:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (282, '用户 admin 退出系统', '2021-10-31 13:51:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (283, '用户 admin 登录系统', '2021-10-31 13:51:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (284, '用户 admin 退出系统', '2021-10-31 13:52:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (285, '用户 joey 登录系统', '2021-10-31 13:52:20', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (286, '用户 joey 登录系统', '2021-10-31 14:43:25', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (287, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (288, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (289, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (290, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (291, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (292, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (293, '用户 admin 登录系统', '2021-10-31 14:55:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (294, '用户 admin 登录系统', '2021-10-31 15:52:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (295, '用户 admin 登录系统', '2021-10-31 16:10:17', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (296, '更新用户：Joey ', '2021-10-31 16:10:57', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (297, '更新用户：Fiona ', '2021-10-31 16:11:00', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (298, '用户 admin 登录系统', '2021-10-31 16:18:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (299, '更新用户：admin ', '2021-10-31 16:23:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (300, '用户 admin 退出系统', '2021-10-31 16:23:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (301, '用户 admin 登录系统', '2021-10-31 16:23:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (302, '用户 admin 退出系统', '2021-10-31 16:24:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (303, '用户 joey 登录系统', '2021-10-31 16:24:34', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (304, '用户 joey 登录系统', '2021-10-31 16:26:48', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (305, '用户 admin 登录系统', '2021-10-31 16:28:28', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (306, '用户 joey 登录系统', '2021-10-31 16:36:28', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (307, '用户 admin 登录系统', '2021-10-31 16:36:34', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (308, '用户 admin 登录系统', '2021-10-31 16:36:37', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (309, '用户 joey 登录系统', '2021-10-31 16:37:11', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (310, '用户 joey 登录系统', '2021-10-31 16:42:47', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (311, '用户 joey 登录系统', '2021-10-31 16:42:58', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (312, '用户 joey 登录系统', '2021-10-31 16:45:56', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (313, '用户 admin 登录系统', '2021-10-31 16:46:08', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (314, '用户 admin 登录系统', '2021-10-31 16:46:17', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (315, '用户 admin 登录系统', '2021-11-01 13:28:31', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (316, '用户 joey 登录系统', '2021-11-01 13:30:03', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (317, '用户 admin 登录系统', '2021-11-01 13:30:06', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (318, '用户 admin 登录系统', '2021-11-01 13:32:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (319, '用户 joey 登录系统', '2021-11-01 13:32:31', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (320, '用户 joey 登录系统', '2021-11-01 13:38:25', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (321, '用户 admin 登录系统', '2021-11-01 13:59:38', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (322, '用户 admin 登录系统', '2021-11-06 12:32:21', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (323, '用户 joey 登录系统', '2021-11-06 12:32:32', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (324, '用户 admin 登录系统', '2021-11-06 13:29:21', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (325, '用户 admin 登录系统', '2021-11-06 13:49:24', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (326, '用户 joey 登录系统', '2021-11-06 13:49:44', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (327, '用户 admin 登录系统', '2021-11-06 13:49:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (328, '用户 admin 登录系统', '2021-11-06 14:04:50', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (329, '用户 admin 登录系统', '2021-11-06 14:05:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (330, '用户 admin 登录系统', '2021-11-06 14:08:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (331, '用户 admin 登录系统', '2021-11-06 14:13:55', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (332, '用户 admin 登录系统', '2021-11-06 14:26:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (333, '用户 admin 登录系统', '2021-11-06 14:27:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (334, '用户 admin 登录系统', '2021-11-06 14:27:53', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (335, '用户 admin 登录系统', '2021-11-06 14:34:43', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (336, '用户 admin 登录系统', '2021-11-06 14:41:54', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (337, '用户 admin 登录系统', '2021-11-06 14:43:41', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (338, '用户 admin 登录系统', '2021-11-06 14:45:08', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (339, '用户 admin 登录系统', '2021-11-06 14:45:57', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (340, '用户 admin 登录系统', '2021-11-06 14:46:55', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (341, '用户 admin 登录系统', '2021-11-06 14:47:49', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (342, '用户 admin 登录系统', '2021-11-06 14:48:38', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (343, '用户 admin 登录系统', '2021-11-06 14:48:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (344, '用户 admin 登录系统', '2021-11-06 14:55:15', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (345, '用户 admin 登录系统', '2021-11-07 19:38:45', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (346, '用户 admin 登录系统', '2021-11-07 20:02:33', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (347, '用户 admin 登录系统', '2021-11-07 20:05:39', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (348, '用户 admin 登录系统', '2021-11-07 20:17:18', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (349, '用户 admin 登录系统', '2021-11-07 20:29:24', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (350, '用户 admin 登录系统', '2021-11-07 20:31:31', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (351, '用户 admin 登录系统', '2021-11-07 20:32:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (352, '用户 admin 登录系统', '2021-11-07 20:33:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (353, '用户 mike 注册账号成功', '2021-11-07 21:06:04', 'mike', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (354, '用户 mike 登录系统', '2021-11-07 21:06:14', 'mike', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (355, '用户 joey 登录系统', '2021-11-07 21:06:37', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (356, '更新用户：Joey ', '2021-11-07 21:10:21', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (357, '用户 Joey 退出系统', '2021-11-07 21:10:49', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (358, '用户 admin 登录系统', '2021-11-07 21:10:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (359, '更新用户：mike ', '2021-11-07 21:11:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (360, '更新用户：mike ', '2021-11-07 21:11:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (361, '更新用户：mike ', '2021-11-07 21:11:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (362, '用户 admin 退出系统', '2021-11-07 21:17:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (363, '用户 joey 登录系统', '2021-11-07 21:21:30', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (364, '用户 joey 登录系统', '2021-11-07 21:23:46', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (365, '用户 Joey 退出系统', '2021-11-07 21:29:01', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (366, '用户 admin 登录系统', '2021-11-07 21:29:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (367, '用户 admin 登录系统', '2021-11-08 13:00:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (368, '用户 joey 登录系统', '2021-11-08 13:01:15', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (369, '用户 joey 登录系统', '2021-11-08 13:01:27', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (370, '用户 Joey 退出系统', '2021-11-08 13:01:37', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (371, '用户 joey 登录系统', '2021-11-08 13:01:43', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (372, '用户 Joey 退出系统', '2021-11-08 13:02:23', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (373, '用户 joey 登录系统', '2021-11-08 13:02:30', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (374, '用户 Joey 退出系统', '2021-11-08 13:02:37', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (375, '用户 joey 登录系统', '2021-11-08 13:02:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (376, '用户 joey 登录系统', '2021-11-08 13:08:09', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (377, '用户 joey 登录系统', '2021-11-08 13:09:52', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (378, '用户 joey 登录系统', '2021-11-08 13:09:52', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (379, '用户 joey 登录系统', '2021-11-08 13:10:32', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (380, '用户 joey 登录系统', '2021-11-08 13:11:06', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (381, '用户 Joey 退出系统', '2021-11-08 13:37:05', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (382, '用户 joey 登录系统', '2021-11-08 13:37:27', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (383, '用户 Joey 退出系统', '2021-11-08 13:37:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (384, '用户 joey 登录系统', '2021-11-08 13:42:57', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (385, '用户 Joey 退出系统', '2021-11-08 13:47:39', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (386, '用户 joey 登录系统', '2021-11-08 13:47:55', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (387, '用户 joey 登录系统', '2021-11-08 13:53:00', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (388, '用户 joey 登录系统', '2021-11-08 13:54:27', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (389, '用户 joey 登录系统', '2021-11-08 13:58:40', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (390, '用户 Joey 退出系统', '2021-11-08 14:07:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (391, '用户 joey 登录系统', '2021-11-08 14:07:40', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (392, '用户 joey 登录系统', '2021-11-08 14:13:02', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (393, '用户 joey 登录系统', '2021-11-08 14:17:04', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (394, '用户 Joey 退出系统', '2021-11-08 14:29:30', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (395, '用户 joey 登录系统', '2021-11-08 14:37:46', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (396, '用户 Joey 退出系统', '2021-11-08 14:43:48', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (397, '用户 admin 登录系统', '2021-11-08 14:43:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (398, '用户 admin 退出系统', '2021-11-08 14:47:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (399, '用户 joey 登录系统', '2021-11-08 14:49:23', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (400, '用户 Joey 退出系统', '2021-11-08 14:49:33', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (401, '用户 joey 登录系统', '2021-11-08 14:49:35', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (402, '用户 Joey 退出系统', '2021-11-08 14:50:13', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (403, '用户 joey 登录系统', '2021-11-08 14:50:42', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (404, '用户 Joey 退出系统', '2021-11-08 14:53:21', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (405, '用户 admin 登录系统', '2021-11-08 14:53:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (406, '用户 admin 退出系统', '2021-11-08 14:54:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (407, '用户 joey 登录系统', '2021-11-08 14:55:10', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (408, '用户 Joey 退出系统', '2021-11-08 15:04:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (409, '用户 joey 登录系统', '2021-11-08 15:08:14', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (410, '用户 Joey 退出系统', '2021-11-08 15:15:15', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (411, '用户 joey 登录系统', '2021-11-08 15:15:20', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (412, '用户 Joey 退出系统', '2021-11-08 15:16:08', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (413, '用户 admin 登录系统', '2021-11-08 15:16:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (414, '用户 admin 登录系统', '2021-11-10 11:13:20', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (415, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (416, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (417, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (418, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (419, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (420, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (421, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (422, '用户 admin 登录系统', '2021-11-11 16:26:36', 'admin', '127.0.0.1');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 423 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (80, '用户 admin 登录系统', '2021-05-25 16:42:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (81, '更新用户：admin ', '2021-05-25 16:42:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (82, '用户 admin 退出系统', '2021-05-25 16:42:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (83, '用户 admin 登录系统', '2021-05-25 16:42:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (84, '更新用户：jerry ', '2021-05-25 16:49:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (85, '用户 admin 登录系统', '2021-05-25 16:49:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (86, '用户 admin 登录系统', '2021-05-25 16:50:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (87, '更新用户：jerry ', '2021-05-25 16:50:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (88, '用户 admin 登录系统', '2021-05-26 16:35:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (89, '更新用户：jerry ', '2021-05-26 16:36:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (90, '更新用户：jack ', '2021-05-26 16:36:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (91, '删除用户 tom ', '2021-05-26 16:36:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (92, '删除用户 hello ', '2021-05-26 16:36:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (93, '删除用户 jack ', '2021-05-26 16:36:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (94, '删除用户 jerry ', '2021-05-26 16:36:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (95, '用户 admin 登录系统', '2021-05-31 12:18:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (96, '更新用户：admin ', '2021-05-31 12:19:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (97, '更新用户：admin ', '2021-05-31 12:19:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (98, '用户 admin 登录系统', '2021-06-01 16:46:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (99, '新增用户：zhang ', '2021-06-01 16:46:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (100, '新增用户：li ', '2021-06-01 16:47:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (101, '更新用户：admin ', '2021-06-01 16:47:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (102, '用户 admin 退出系统', '2021-06-01 16:47:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (103, '用户 admin 登录系统', '2021-06-01 16:47:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (104, '更新用户：li ', '2021-06-01 16:47:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (105, '更新用户：zhang ', '2021-06-01 16:47:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (106, '用户 admin 登录系统', '2021-06-07 12:32:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (107, '用户 admin 登录系统', '2021-06-07 14:16:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (108, '用户 admin 登录系统', '2021-06-07 14:34:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (109, '更新用户：li ', '2021-06-07 14:35:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (110, '更新用户：li ', '2021-06-07 14:35:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (111, '更新角色：超级管理员', '2021-06-07 14:35:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (112, '更新角色：超级管理员', '2021-06-07 14:35:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (113, '更新权限菜单：用户管理', '2021-06-07 14:37:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (114, '更新权限菜单：用户管理', '2021-06-07 14:38:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (115, '更新权限菜单：用户管理', '2021-06-07 14:38:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (116, '更新权限菜单：用户管理', '2021-06-07 14:38:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (117, '用户 admin 登录系统', '2021-06-07 14:57:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (118, '更新角色：超级管理员', '2021-06-07 14:57:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (119, '用户 admin 登录系统', '2021-06-09 23:19:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (120, '删除权限菜单：学生管理', '2021-06-09 23:19:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (121, '用户 admin 登录系统', '2021-06-12 10:18:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (122, '更新角色：超级管理员', '2021-06-12 10:30:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (123, '用户 admin 登录系统', '2021-06-12 13:55:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (124, '用户 admin 登录系统', '2021-06-27 10:44:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (125, '更新角色：超级管理员', '2021-06-27 10:44:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (126, '用户 admin 登录系统', '2021-06-27 11:15:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (127, '更新角色：超级管理员', '2021-06-27 11:15:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (128, '用户 admin 登录系统', '2021-06-27 11:18:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (129, '用户 admin 登录系统', '2021-06-27 11:41:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (130, '更新角色：超级管理员', '2021-06-27 11:42:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (131, '用户 admin 登录系统', '2021-06-27 11:49:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (132, '用户 admin 登录系统', '2021-09-28 19:16:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (133, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (134, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (135, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (136, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (137, '用户 admin 登录系统', '2021-09-28 19:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (138, '用户 admin 登录系统', '2021-09-28 19:43:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (139, '用户 admin 登录系统', '2021-09-28 19:45:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (140, '用户 admin 登录系统', '2021-09-28 19:55:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (141, '用户 admin 登录系统', '2021-09-28 19:59:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (142, '用户 admin 登录系统', '2021-10-04 18:39:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (143, '用户 admin 登录系统', '2021-10-04 18:40:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (144, '更新用户：admin ', '2021-10-04 18:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (145, '用户 admin 登录系统', '2021-10-04 19:35:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (146, '更新用户：admin ', '2021-10-04 19:41:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (147, '用户 admin 登录系统', '2021-10-04 19:42:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (148, '用户 admin 登录系统', '2021-10-04 19:56:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (149, '用户 admin 登录系统', '2021-10-04 19:58:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (150, '用户 admin 登录系统', '2021-10-04 20:23:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (151, '用户 admin 登录系统', '2021-10-04 20:29:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (152, '用户 admin 登录系统', '2021-10-04 20:32:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (153, '用户 admin 登录系统', '2021-10-04 20:33:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (154, '用户 admin 登录系统', '2021-10-04 20:35:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (155, '用户 admin 登录系统', '2021-10-04 20:36:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (156, '用户 admin 登录系统', '2021-10-04 20:37:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (157, '用户 admin 登录系统', '2021-10-04 20:38:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (158, '用户 admin 登录系统', '2021-10-04 20:40:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (159, '用户 admin 登录系统', '2021-10-04 20:42:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (160, '用户 admin 登录系统', '2021-10-04 20:43:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (161, '用户 admin 登录系统', '2021-10-04 20:45:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (162, '用户 admin 登录系统', '2021-10-04 20:45:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (163, '用户 admin 登录系统', '2021-10-04 20:46:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (164, '用户 admin 登录系统', '2021-10-04 20:48:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (165, '用户 admin 登录系统', '2021-10-04 20:55:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (166, '用户 admin 登录系统', '2021-10-04 20:56:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (167, '用户 admin 登录系统', '2021-10-04 20:57:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (168, '用户 admin 登录系统', '2021-10-04 20:58:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (169, '用户 admin 登录系统', '2021-10-04 20:58:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (170, '用户 admin 登录系统', '2021-10-04 20:59:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (171, '用户 admin 登录系统', '2021-10-04 21:00:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (172, '用户 admin 登录系统', '2021-10-04 21:02:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (173, '用户 admin 登录系统', '2021-10-04 21:04:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (174, '用户 admin 登录系统', '2021-10-04 21:06:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (175, '用户 admin 登录系统', '2021-10-10 09:43:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (176, '用户 admin 登录系统', '2021-10-10 09:44:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (177, '用户 admin 登录系统', '2021-10-10 09:46:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (178, '用户 admin 登录系统', '2021-10-10 09:47:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (179, '用户 admin 登录系统', '2021-10-10 09:49:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (180, '用户 admin 登录系统', '2021-10-10 09:50:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (181, '用户 admin 登录系统', '2021-10-10 09:53:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (182, '用户 admin 登录系统', '2021-10-10 09:58:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (183, '用户 admin 登录系统', '2021-10-10 09:59:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (184, '用户 admin 登录系统', '2021-10-10 10:00:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (185, '用户 admin 登录系统', '2021-10-10 10:01:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (186, '用户 admin 登录系统', '2021-10-10 10:04:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (187, '用户 admin 登录系统', '2021-10-10 10:05:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (188, '用户 admin 登录系统', '2021-10-10 10:05:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (189, '用户 admin 登录系统', '2021-10-10 10:06:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (190, '用户 admin 登录系统', '2021-10-10 10:07:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (191, '用户 admin 登录系统', '2021-10-10 10:08:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (192, '用户 admin 登录系统', '2021-10-10 10:09:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (193, '用户 admin 登录系统', '2021-10-10 10:09:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (194, '用户 admin 登录系统', '2021-10-10 10:11:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (195, '用户 admin 登录系统', '2021-10-10 10:12:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (196, '用户 admin 登录系统', '2021-10-18 14:01:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (197, '用户 admin 登录系统', '2021-10-18 15:31:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (198, '用户 admin 登录系统', '2021-10-18 16:06:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (199, '用户 admin 登录系统', '2021-10-18 16:06:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (200, '用户 admin 登录系统', '2021-10-24 14:07:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (201, '用户 admin 登录系统', '2021-10-24 14:07:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (202, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (203, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (204, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (205, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (206, '用户 admin 登录系统', '2021-10-24 14:16:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (207, '用户 admin 登录系统', '2021-10-24 14:16:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (208, '用户 admin 登录系统', '2021-10-24 14:16:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (209, '用户 admin 登录系统', '2021-10-24 14:20:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (210, '用户 admin 登录系统', '2021-10-24 14:22:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (211, '用户 admin 登录系统', '2021-10-24 14:25:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (212, '用户 admin 登录系统', '2021-10-24 15:02:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (213, '用户 admin 登录系统', '2021-10-24 15:02:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (214, '用户 admin 登录系统', '2021-10-24 15:03:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (215, '用户 admin 登录系统', '2021-10-24 15:03:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (216, '用户 admin 登录系统', '2021-10-24 15:07:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (217, '用户 admin 登录系统', '2021-10-24 15:08:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (218, '用户 admin 登录系统', '2021-10-24 15:08:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (219, '用户 admin 登录系统', '2021-10-24 15:37:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (220, '用户 admin 登录系统', '2021-10-24 15:38:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (221, '用户 admin 登录系统', '2021-10-24 15:41:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (222, '用户 admin 登录系统', '2021-10-24 15:42:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (223, '用户 admin 登录系统', '2021-10-24 15:45:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (224, '用户 admin 登录系统', '2021-10-24 15:46:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (225, '用户 admin 登录系统', '2021-10-24 15:47:11', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (226, '用户 admin 登录系统', '2021-10-24 15:48:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (227, '用户 admin 退出系统', '2021-10-24 15:52:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (228, '用户 admin 登录系统', '2021-10-24 15:52:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (229, '用户 admin 登录系统', '2021-10-24 16:00:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (230, '用户 admin 登录系统', '2021-10-24 16:11:47', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (231, '用户 admin 登录系统', '2021-10-24 16:13:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (232, '用户 admin 退出系统', '2021-10-24 16:13:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (233, '用户 admin 登录系统', '2021-10-24 16:14:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (234, '用户 admin 登录系统', '2021-10-24 16:16:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (235, '用户 admin 登录系统', '2021-10-24 16:17:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (236, '用户 admin 登录系统', '2021-10-24 16:35:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (237, '更新用户：admin ', '2021-10-24 16:35:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (238, '更新用户：admin ', '2021-10-24 16:36:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (239, '用户 admin 退出系统', '2021-10-24 16:36:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (240, '用户 admin 登录系统', '2021-10-24 16:36:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (241, '更新用户：admin ', '2021-10-24 16:38:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (242, '用户 admin 退出系统', '2021-10-24 16:38:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (243, '用户 Fiona 登录系统', '2021-10-24 16:38:43', 'Fiona', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (244, '更新用户：Fiona ', '2021-10-24 16:38:59', 'Fiona', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (245, '用户 Fiona 退出系统', '2021-10-24 16:39:11', 'Fiona', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (246, '用户 Joey 登录系统', '2021-10-24 16:39:26', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (247, '更新用户：Joey ', '2021-10-24 16:39:37', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (248, '用户 Joey 退出系统', '2021-10-24 16:39:45', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (249, '用户 admin 登录系统', '2021-10-24 16:39:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (250, '用户 admin 登录系统', '2021-10-24 17:11:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (251, '用户 admin 登录系统', '2021-10-25 14:33:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (252, '更新用户：Joey ', '2021-10-25 14:34:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (253, '用户 admin 登录系统', '2021-10-25 14:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (254, '用户 admin 登录系统', '2021-10-25 14:48:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (255, '用户 admin 登录系统', '2021-10-25 14:51:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (256, '用户 admin 登录系统', '2021-10-25 14:53:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (257, '用户 admin 登录系统', '2021-10-25 14:54:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (258, '用户 admin 退出系统', '2021-10-25 14:55:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (259, '用户 Fiona 登录系统', '2021-10-25 14:56:37', 'Fiona', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (260, '用户 admin 登录系统', '2021-10-25 15:56:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (261, '用户 admin 登录系统', '2021-10-25 16:05:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (262, '用户 admin 登录系统', '2021-10-25 16:10:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (263, '更新用户：Joey ', '2021-10-25 16:10:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (264, '更新用户：Fiona ', '2021-10-25 16:10:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (265, '用户 admin 登录系统', '2021-10-25 16:12:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (266, '用户 admin 登录系统', '2021-10-25 16:18:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (267, '用户 admin 登录系统', '2021-10-25 16:23:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (268, '用户 admin 登录系统', '2021-10-25 16:27:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (269, '用户 admin 登录系统', '2021-10-25 16:28:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (270, '用户 admin 退出系统', '2021-10-25 16:32:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (271, '用户 Joey 登录系统', '2021-10-25 16:32:51', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (272, '用户 joey 登录系统', '2021-10-25 16:48:57', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (273, '用户 admin 登录系统', '2021-10-31 10:44:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (274, '用户 admin 登录系统', '2021-10-31 10:47:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (275, '用户 admin 退出系统', '2021-10-31 10:47:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (276, '用户 joey 登录系统', '2021-10-31 10:48:03', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (277, '用户 joey 登录系统', '2021-10-31 10:57:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (278, '用户 joey 登录系统', '2021-10-31 11:09:17', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (279, '更新用户：Joey ', '2021-10-31 11:12:08', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (280, '用户 joey 登录系统', '2021-10-31 12:00:30', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (281, '用户 admin 登录系统', '2021-10-31 13:49:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (282, '用户 admin 退出系统', '2021-10-31 13:51:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (283, '用户 admin 登录系统', '2021-10-31 13:51:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (284, '用户 admin 退出系统', '2021-10-31 13:52:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (285, '用户 joey 登录系统', '2021-10-31 13:52:20', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (286, '用户 joey 登录系统', '2021-10-31 14:43:25', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (287, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (288, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
INSERT INTO `t_log` VALUES (289, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (290, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (291, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (292, '用户 admin 登录系统', '2021-10-31 14:54:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (293, '用户 admin 登录系统', '2021-10-31 14:55:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (294, '用户 admin 登录系统', '2021-10-31 15:52:42', 'admin', '0:0:0:0:0:0:0:1');
DROP TABLE IF EXISTS `t_notice`;
INSERT INTO `t_log` VALUES (295, '用户 admin 登录系统', '2021-10-31 16:10:17', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (296, '更新用户：Joey ', '2021-10-31 16:10:57', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (297, '更新用户：Fiona ', '2021-10-31 16:11:00', 'admin', '127.0.0.1');
CREATE TABLE `t_notice`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;
INSERT INTO `t_log` VALUES (298, '用户 admin 登录系统', '2021-10-31 16:18:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (299, '更新用户：admin ', '2021-10-31 16:23:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (300, '用户 admin 退出系统', '2021-10-31 16:23:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (301, '用户 admin 登录系统', '2021-10-31 16:23:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (302, '用户 admin 退出系统', '2021-10-31 16:24:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (303, '用户 joey 登录系统', '2021-10-31 16:24:34', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (304, '用户 joey 登录系统', '2021-10-31 16:26:48', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (305, '用户 admin 登录系统', '2021-10-31 16:28:28', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (306, '用户 joey 登录系统', '2021-10-31 16:36:28', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (307, '用户 admin 登录系统', '2021-10-31 16:36:34', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (308, '用户 admin 登录系统', '2021-10-31 16:36:37', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (309, '用户 joey 登录系统', '2021-10-31 16:37:11', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (310, '用户 joey 登录系统', '2021-10-31 16:42:47', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (311, '用户 joey 登录系统', '2021-10-31 16:42:58', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (312, '用户 joey 登录系统', '2021-10-31 16:45:56', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (313, '用户 admin 登录系统', '2021-10-31 16:46:08', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (314, '用户 admin 登录系统', '2021-10-31 16:46:17', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (315, '用户 admin 登录系统', '2021-11-01 13:28:31', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (316, '用户 joey 登录系统', '2021-11-01 13:30:03', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (317, '用户 admin 登录系统', '2021-11-01 13:30:06', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (318, '用户 admin 登录系统', '2021-11-01 13:32:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (319, '用户 joey 登录系统', '2021-11-01 13:32:31', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (320, '用户 joey 登录系统', '2021-11-01 13:38:25', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (321, '用户 admin 登录系统', '2021-11-01 13:59:38', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (322, '用户 admin 登录系统', '2021-11-06 12:32:21', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (323, '用户 joey 登录系统', '2021-11-06 12:32:32', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (324, '用户 admin 登录系统', '2021-11-06 13:29:21', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (325, '用户 admin 登录系统', '2021-11-06 13:49:24', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (326, '用户 joey 登录系统', '2021-11-06 13:49:44', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (327, '用户 admin 登录系统', '2021-11-06 13:49:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (328, '用户 admin 登录系统', '2021-11-06 14:04:50', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (329, '用户 admin 登录系统', '2021-11-06 14:05:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (330, '用户 admin 登录系统', '2021-11-06 14:08:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (331, '用户 admin 登录系统', '2021-11-06 14:13:55', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (332, '用户 admin 登录系统', '2021-11-06 14:26:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (333, '用户 admin 登录系统', '2021-11-06 14:27:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (334, '用户 admin 登录系统', '2021-11-06 14:27:53', 'admin', '127.0.0.1');

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_log` VALUES (335, '用户 admin 登录系统', '2021-11-06 14:34:43', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (336, '用户 admin 登录系统', '2021-11-06 14:41:54', 'admin', '127.0.0.1');
INSERT INTO `t_notice` VALUES (4, 'cat', 'cat', '2021-05-17 15:29:29');
INSERT INTO `t_notice` VALUES (5, 'dog', 'dog', '2021-05-17 15:30:08');
INSERT INTO `t_log` VALUES (337, '用户 admin 登录系统', '2021-11-06 14:43:41', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (338, '用户 admin 登录系统', '2021-11-06 14:45:08', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (339, '用户 admin 登录系统', '2021-11-06 14:45:57', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (340, '用户 admin 登录系统', '2021-11-06 14:46:55', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (341, '用户 admin 登录系统', '2021-11-06 14:47:49', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (342, '用户 admin 登录系统', '2021-11-06 14:48:38', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (343, '用户 admin 登录系统', '2021-11-06 14:48:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (344, '用户 admin 登录系统', '2021-11-06 14:55:15', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (345, '用户 admin 登录系统', '2021-11-07 19:38:45', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (346, '用户 admin 登录系统', '2021-11-07 20:02:33', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (347, '用户 admin 登录系统', '2021-11-07 20:05:39', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (348, '用户 admin 登录系统', '2021-11-07 20:17:18', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (349, '用户 admin 登录系统', '2021-11-07 20:29:24', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (350, '用户 admin 登录系统', '2021-11-07 20:31:31', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (351, '用户 admin 登录系统', '2021-11-07 20:32:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (352, '用户 admin 登录系统', '2021-11-07 20:33:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (353, '用户 mike 注册账号成功', '2021-11-07 21:06:04', 'mike', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (354, '用户 mike 登录系统', '2021-11-07 21:06:14', 'mike', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (355, '用户 joey 登录系统', '2021-11-07 21:06:37', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (356, '更新用户：Joey ', '2021-11-07 21:10:21', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (357, '用户 Joey 退出系统', '2021-11-07 21:10:49', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (358, '用户 admin 登录系统', '2021-11-07 21:10:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (359, '更新用户：mike ', '2021-11-07 21:11:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (360, '更新用户：mike ', '2021-11-07 21:11:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (361, '更新用户：mike ', '2021-11-07 21:11:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (362, '用户 admin 退出系统', '2021-11-07 21:17:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (363, '用户 joey 登录系统', '2021-11-07 21:21:30', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (364, '用户 joey 登录系统', '2021-11-07 21:23:46', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (365, '用户 Joey 退出系统', '2021-11-07 21:29:01', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (366, '用户 admin 登录系统', '2021-11-07 21:29:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (367, '用户 admin 登录系统', '2021-11-08 13:00:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (368, '用户 joey 登录系统', '2021-11-08 13:01:15', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (369, '用户 joey 登录系统', '2021-11-08 13:01:27', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (370, '用户 Joey 退出系统', '2021-11-08 13:01:37', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (371, '用户 joey 登录系统', '2021-11-08 13:01:43', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (372, '用户 Joey 退出系统', '2021-11-08 13:02:23', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (373, '用户 joey 登录系统', '2021-11-08 13:02:30', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (374, '用户 Joey 退出系统', '2021-11-08 13:02:37', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (375, '用户 joey 登录系统', '2021-11-08 13:02:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (376, '用户 joey 登录系统', '2021-11-08 13:08:09', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (377, '用户 joey 登录系统', '2021-11-08 13:09:52', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (378, '用户 joey 登录系统', '2021-11-08 13:09:52', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (379, '用户 joey 登录系统', '2021-11-08 13:10:32', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (380, '用户 joey 登录系统', '2021-11-08 13:11:06', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (381, '用户 Joey 退出系统', '2021-11-08 13:37:05', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (382, '用户 joey 登录系统', '2021-11-08 13:37:27', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (383, '用户 Joey 退出系统', '2021-11-08 13:37:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (384, '用户 joey 登录系统', '2021-11-08 13:42:57', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (385, '用户 Joey 退出系统', '2021-11-08 13:47:39', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (386, '用户 joey 登录系统', '2021-11-08 13:47:55', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (387, '用户 joey 登录系统', '2021-11-08 13:53:00', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (388, '用户 joey 登录系统', '2021-11-08 13:54:27', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (389, '用户 joey 登录系统', '2021-11-08 13:58:40', 'Joey', '127.0.0.1');
INSERT INTO `t_log` VALUES (390, '用户 Joey 退出系统', '2021-11-08 14:07:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (391, '用户 joey 登录系统', '2021-11-08 14:07:40', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (392, '用户 joey 登录系统', '2021-11-08 14:13:02', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (393, '用户 joey 登录系统', '2021-11-08 14:17:04', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (394, '用户 Joey 退出系统', '2021-11-08 14:29:30', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (395, '用户 joey 登录系统', '2021-11-08 14:37:46', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (396, '用户 Joey 退出系统', '2021-11-08 14:43:48', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (397, '用户 admin 登录系统', '2021-11-08 14:43:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (398, '用户 admin 退出系统', '2021-11-08 14:47:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (399, '用户 joey 登录系统', '2021-11-08 14:49:23', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (400, '用户 Joey 退出系统', '2021-11-08 14:49:33', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (401, '用户 joey 登录系统', '2021-11-08 14:49:35', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (402, '用户 Joey 退出系统', '2021-11-08 14:50:13', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (403, '用户 joey 登录系统', '2021-11-08 14:50:42', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (404, '用户 Joey 退出系统', '2021-11-08 14:53:21', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (405, '用户 admin 登录系统', '2021-11-08 14:53:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (406, '用户 admin 退出系统', '2021-11-08 14:54:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (407, '用户 joey 登录系统', '2021-11-08 14:55:10', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (408, '用户 Joey 退出系统', '2021-11-08 15:04:38', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (409, '用户 joey 登录系统', '2021-11-08 15:08:14', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (410, '用户 Joey 退出系统', '2021-11-08 15:15:15', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (411, '用户 joey 登录系统', '2021-11-08 15:15:20', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (412, '用户 Joey 退出系统', '2021-11-08 15:16:08', 'Joey', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (413, '用户 admin 登录系统', '2021-11-08 15:16:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (414, '用户 admin 登录系统', '2021-11-10 11:13:20', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (415, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (416, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (417, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (418, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (419, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (420, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (421, '用户 admin 登录系统', '2021-11-11 16:26:23', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (422, '用户 admin 登录系统', '2021-11-11 16:26:36', 'admin', '127.0.0.1');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父ID',
  `foreign_id` bigint NULL DEFAULT 0 COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '留言表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;

-- ----------------------------
-- Records of t_message
-- ----------------------------
CREATE TABLE `t_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 's-data' COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限菜单表' ROW_FORMAT = DYNAMIC;
INSERT INTO `t_message` VALUES (16, 'The real-time temperature function of this feeder is reaaaaaaally good. Seeing that it is cold today, I remotely turned on an air conditioner in the office. She must be cozzzzzy right now.', 'Fiona', '2021-04-23 23:15:57', NULL, 0);
INSERT INTO `t_message` VALUES (17, 'My sweetie ate a lot today, and there isn\'t much left in the pot. It seems to be getting fat. I love fat&cute cat.', 'Joey', '2021-04-23 23:17:46', 16, 0);
INSERT INTO `t_message` VALUES (19, 'Ticks me off, this dog doesn\'t eat all day long. Is he going to keep.... fit.....???', 'Fiona', '2021-04-24 11:08:41', 17, 0);

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, 'User MGMT', 'User MGMT', 'user', 'user-solid');
INSERT INTO `t_permission` VALUES (2, 'Role MGMT', 'Role MGMT', 'role', 's-cooperation');
INSERT INTO `t_permission` VALUES (3, 'Authority MGMT', 'Authority MGMT', 'permission', 'menu');
INSERT INTO `t_permission` VALUES (19, 'Notification MGMT', 'Notification MGMT', 'notice', 'data-board');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_notice`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;
CREATE TABLE `t_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `permission` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (4, 'cat', 'cat', '2021-05-17 15:29:29');
INSERT INTO `t_notice` VALUES (5, 'dog', 'dog', '2021-05-17 15:30:08');

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员', '所有权限', '[1,2,3,19,27,30,31]');
INSERT INTO `t_role` VALUES (2, '普通用户', '部分权限', '[]');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 's-data' COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, 'User MGMT', 'User MGMT', 'user', 'user-solid');
INSERT INTO `t_permission` VALUES (2, 'Role MGMT', 'Role MGMT', 'role', 's-cooperation');
INSERT INTO `t_permission` VALUES (3, 'Authority MGMT', 'Authority MGMT', 'permission', 'menu');
INSERT INTO `t_permission` VALUES (19, 'Notification MGMT', 'Notification MGMT', 'notice', 'data-board');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', 'QLU', '111124444', '13978786565', '1635668608468', '[1]', '猫星', NULL);
INSERT INTO `t_user` VALUES (2, 'Fiona', '123456', '张三', 'zhang@qq.com', '13089897878', '1635064739181', '[2]', '', 24);
INSERT INTO `t_user` VALUES (3, 'Joey', '123456', 'Lee', '8888888@qlu.stu.cn', '13888888888', '1635064777191', '[2]', '', 22);
INSERT INTO `t_user` VALUES (4, 'mike', '123', NULL, NULL, NULL, NULL, '[]', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 1;
