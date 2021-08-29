/*
 Navicat Premium Data Transfer

 Source Server         : tools
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 139.196.196.203:3306
 Source Schema         : cool-tools

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 11/08/2021 14:18:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_info
-- ----------------------------
DROP TABLE IF EXISTS `app_info`;
CREATE TABLE `app_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `logo` varchar(255) NOT NULL COMMENT 'LOGO',
  `description` text NOT NULL COMMENT '描述',
  `downloadUrl` varchar(255) DEFAULT NULL COMMENT '下载地址',
  `preload` varchar(255) DEFAULT NULL COMMENT '预加载的js',
  `main` varchar(255) NOT NULL COMMENT '入口文件',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0: 开发中 1：待审核 2：通过 3：不通过 4：已过时',
  `failReason` varchar(255) DEFAULT NULL COMMENT '失败理由',
  `type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '类型 0：系统 1：官方 2：开发者 3: 私有',
  `classify` int(11) NOT NULL DEFAULT '0' COMMENT '分类 0：通用',
  `version` varchar(255) NOT NULL DEFAULT '1.0.0' COMMENT '版本号',
  `versionDesc` text COMMENT '版本描述',
  `appId` varchar(255) NOT NULL COMMENT '插件ID',
  `path` varchar(255) DEFAULT NULL COMMENT '项目路径',
  `platform` varchar(255) NOT NULL COMMENT '平台 格式如：win32;darwin;linux',
  `keyWords` varchar(255) NOT NULL COMMENT '关键字 格式如：cool;ssh',
  `releaseTime` datetime DEFAULT NULL COMMENT '发布时间',
  `enable` int(11) NOT NULL DEFAULT '1' COMMENT '是否启用 0：否 1：是',
  `readme` varchar(255) NOT NULL COMMENT 'readme介绍',
  `config` text COMMENT '配置',
  `isDev` int(11) NOT NULL DEFAULT '1' COMMENT '是否开发 0：否 1：是',
  `auditId` bigint(20) DEFAULT NULL COMMENT '审核员，非后台用户ID',
  PRIMARY KEY (`id`),
  KEY `IDX_f5a2cb59c2739a6ff6612a7b96` (`createTime`),
  KEY `IDX_feef671de42350ab8774d9ef0f` (`updateTime`),
  KEY `IDX_16b7bd8e01d06dee1ac1aea40e` (`userId`),
  KEY `IDX_18d7a53a09635d5a2643915566` (`auditId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of app_info
-- ----------------------------
BEGIN;
INSERT INTO `app_info` VALUES (23, '2021-07-09 15:53:46.794000', '2021-07-16 10:45:15.000000', 7, '这是个测试应用', 'logo.png', '测试应用', NULL, 'preload.js', 'index.html', 1, NULL, 2, 0, '0.0.10', NULL, 'rKxcCwish@dev', '/Users/mac/Documents/src/temp/test/', 'win32;darwin', 'cool-ai;cool', NULL, 1, 'README.md', '{\n    \"appId\": \"rKxcCwish\",\n    \"name\": \"这是个测试应用\",\n    \"version\": \"0.0.10\",\n    \"description\": \"测试应用\",\n    \"main\": \"index.html\",\n    \"preload\": \"preload.js\",\n    \"logo\": \"logo.png\",\n    \"readme\": \"README.md\",\n    \"platform\": [ \"win32\", \"darwin\" ],\n    \"keyWords\": [ \"cool-ai\", \"cool\" ],\n    \"dev\": { \"main\": \"index.html\", \"preload\": \"preload.js\", \"logo\": \"logo.png\" }\n}', 1, NULL);
INSERT INTO `app_info` VALUES (24, '2021-07-09 15:53:46.000000', '2021-07-09 15:59:55.748435', 7, '这是个测试应用', 'http://127.0.0.1:8001/uploads/20210709/db0b6d80-e08a-11eb-856f-6f05a2e4417a.png', '测试应用', 'http://127.0.0.1:8001/uploads/20210709/db048fb0-e08a-11eb-856f-6f05a2e4417a.cool', 'preload.js', 'index.html', 4, NULL, 2, 0, '0.0.7', '12345678', 'rKxcCwish', 'rKxcCwish/0.0.7.asar', 'win32;darwin', 'cool-ai;cool', NULL, 1, 'http://127.0.0.1:8001/uploads/20210709/db118800-e08a-11eb-856f-6f05a2e4417a.md', '{\n    \"appId\": \"rKxcCwish\",\n    \"name\": \"这是个测试应用\",\n    \"version\": \"0.0.7\",\n    \"description\": \"测试应用\",\n    \"main\": \"index.html\",\n    \"preload\": \"preload.js\",\n    \"logo\": \"logo.png\",\n    \"readme\": \"README.md\",\n    \"platform\": [ \"win32\", \"darwin\" ],\n    \"keyWords\": [ \"cool-ai\", \"cool\" ],\n    \"dev\": { \"main\": \"index.html\", \"preload\": \"preload.js\", \"logo\": \"logo.png\" }\n}', 0, NULL);
INSERT INTO `app_info` VALUES (25, '2021-07-09 15:53:46.000000', '2021-07-09 16:27:18.840332', 7, '这是个测试应用', 'http://127.0.0.1:8001/uploads/20210709/9de1a9a0-e08b-11eb-856f-6f05a2e4417a.png', '测试应用', 'http://127.0.0.1:8001/uploads/20210709/9ddaa4c0-e08b-11eb-856f-6f05a2e4417a.cool', 'preload.js', 'index.html', 4, NULL, 2, 0, '0.0.8', '1234567', 'rKxcCwish', 'rKxcCwish/0.0.8.asar', 'win32;darwin', 'cool-ai;cool', NULL, 1, 'http://127.0.0.1:8001/uploads/20210709/9df04fa0-e08b-11eb-856f-6f05a2e4417a.md', '{\n    \"appId\": \"rKxcCwish\",\n    \"name\": \"这是个测试应用\",\n    \"version\": \"0.0.8\",\n    \"description\": \"测试应用\",\n    \"main\": \"index.html\",\n    \"preload\": \"preload.js\",\n    \"logo\": \"logo.png\",\n    \"readme\": \"README.md\",\n    \"platform\": [ \"win32\", \"darwin\" ],\n    \"keyWords\": [ \"cool-ai\", \"cool\" ],\n    \"dev\": { \"main\": \"index.html\", \"preload\": \"preload.js\", \"logo\": \"logo.png\" }\n}', 0, NULL);
INSERT INTO `app_info` VALUES (26, '2021-07-09 15:53:46.000000', '2021-07-09 16:31:02.556606', 7, '这是个测试应用', 'http://127.0.0.1:8001/uploads/20210709/6d1a7e10-e08f-11eb-856f-6f05a2e4417a.png', '测试应用', 'http://127.0.0.1:8001/uploads/20210709/6d15c320-e08f-11eb-856f-6f05a2e4417a.cool', 'preload.js', 'index.html', 4, NULL, 2, 0, '0.0.9', '12345678', 'rKxcCwish', 'rKxcCwish/0.0.9.asar', 'win32;darwin', 'cool-ai;cool', NULL, 1, 'http://127.0.0.1:8001/uploads/20210709/6d2330a0-e08f-11eb-856f-6f05a2e4417a.md', '{\n    \"appId\": \"rKxcCwish\",\n    \"name\": \"这是个测试应用\",\n    \"version\": \"0.0.9\",\n    \"description\": \"测试应用\",\n    \"main\": \"index.html\",\n    \"preload\": \"preload.js\",\n    \"logo\": \"logo.png\",\n    \"readme\": \"README.md\",\n    \"platform\": [ \"win32\", \"darwin\" ],\n    \"keyWords\": [ \"cool-ai\", \"cool\" ],\n    \"dev\": { \"main\": \"index.html\", \"preload\": \"preload.js\", \"logo\": \"logo.png\" }\n}', 0, NULL);
INSERT INTO `app_info` VALUES (27, '2021-07-09 15:53:46.000000', '2021-07-09 16:31:08.767016', 7, '这是个测试应用', 'http://127.0.0.1:8001/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '测试应用', 'http://127.0.0.1:8001/uploads/20210709/f76b4680-e08f-11eb-856f-6f05a2e4417a.cool', 'preload.js', 'index.html', 2, NULL, 2, 0, '0.0.10', '1234', 'rKxcCwish', 'rKxcCwish/0.0.10.asar', 'win32;darwin', 'cool-ai;cool', NULL, 1, 'http://127.0.0.1:8001/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '{\n    \"appId\": \"rKxcCwish\",\n    \"name\": \"这是个测试应用\",\n    \"version\": \"0.0.10\",\n    \"description\": \"测试应用\",\n    \"main\": \"index.html\",\n    \"preload\": \"preload.js\",\n    \"logo\": \"logo.png\",\n    \"readme\": \"README.md\",\n    \"platform\": [ \"win32\", \"darwin\" ],\n    \"keyWords\": [ \"cool-ai\", \"cool\" ],\n    \"dev\": { \"main\": \"index.html\", \"preload\": \"preload.js\", \"logo\": \"logo.png\" }\n}', 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for base_app_space_info
-- ----------------------------
DROP TABLE IF EXISTS `base_app_space_info`;
CREATE TABLE `base_app_space_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `url` varchar(255) NOT NULL COMMENT '地址',
  `type` varchar(255) NOT NULL COMMENT '类型',
  `classifyId` bigint(20) DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`),
  KEY `IDX_4aed04cbfa2ecdc01485b86e51` (`createTime`),
  KEY `IDX_abd5de4a4895eb253a5cabb20f` (`updateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_app_space_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for base_app_space_type
-- ----------------------------
DROP TABLE IF EXISTS `base_app_space_type`;
CREATE TABLE `base_app_space_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) NOT NULL COMMENT '类别名称',
  `parentId` tinyint(4) DEFAULT NULL COMMENT '父分类ID',
  PRIMARY KEY (`id`),
  KEY `IDX_5e8376603f89fdf3e7bb05103a` (`createTime`),
  KEY `IDX_500ea9e8b2c5c08c9b86a0667e` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_app_space_type
-- ----------------------------
BEGIN;
INSERT INTO `base_app_space_type` VALUES (1, '2021-02-26 14:07:48.867045', '2021-02-26 14:07:48.867045', 'a', NULL);
INSERT INTO `base_app_space_type` VALUES (2, '2021-02-26 14:07:52.285531', '2021-02-26 14:07:52.285531', 'b', NULL);
COMMIT;

-- ----------------------------
-- Table structure for base_sys_conf
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_conf`;
CREATE TABLE `base_sys_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `cKey` varchar(255) NOT NULL COMMENT '配置键',
  `cValue` varchar(255) NOT NULL COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_9be195d27767b4485417869c3a` (`cKey`),
  KEY `IDX_905208f206a3ff9fd513421971` (`createTime`),
  KEY `IDX_4c6f27f6ecefe51a5a196a047a` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_conf
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_conf` VALUES (1, '2021-02-25 14:23:26.810981', '2021-02-25 14:23:26.810981', 'logKeep', '31');
COMMIT;

-- ----------------------------
-- Table structure for base_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_department`;
CREATE TABLE `base_sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) NOT NULL COMMENT '部门名称',
  `parentId` bigint(20) DEFAULT NULL COMMENT '上级部门ID',
  `orderNum` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `IDX_be4c53cd671384fa588ca9470a` (`createTime`),
  KEY `IDX_ca1473a793961ec55bc0c8d268` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_department
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_department` VALUES (1, '2021-02-24 21:17:11.971397', '2021-02-24 21:17:15.697917', 'COOL', NULL, 0);
INSERT INTO `base_sys_department` VALUES (11, '2021-02-26 14:17:06.690613', '2021-02-26 14:17:06.690613', '开发', 1, 0);
INSERT INTO `base_sys_department` VALUES (12, '2021-02-26 14:17:11.576369', '2021-02-26 14:17:11.576369', '测试', 1, 0);
INSERT INTO `base_sys_department` VALUES (13, '2021-02-26 14:28:59.685177', '2021-02-26 14:28:59.685177', '游客', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for base_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_log`;
CREATE TABLE `base_sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `action` varchar(100) NOT NULL COMMENT '行为',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  `ipAddr` varchar(50) DEFAULT NULL COMMENT 'ip地址',
  `params` text COMMENT '参数',
  PRIMARY KEY (`id`),
  KEY `IDX_51a2caeb5713efdfcb343a8772` (`userId`),
  KEY `IDX_938f886fb40e163db174b7f6c3` (`action`),
  KEY `IDX_24e18767659f8c7142580893f2` (`ip`),
  KEY `IDX_a03a27f75cf8d502b3060823e1` (`ipAddr`),
  KEY `IDX_c9382b76219a1011f7b8e7bcd1` (`createTime`),
  KEY `IDX_bfd44e885b470da43bcc39aaa7` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=5627 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_log
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_log` VALUES (4844, '2021-07-14 16:38:17.100576', '2021-07-14 16:38:17.100576', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4845, '2021-07-14 16:38:17.688847', '2021-07-14 16:38:17.688847', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4846, '2021-07-14 16:38:47.420020', '2021-07-14 16:38:47.420020', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4847, '2021-07-14 16:38:47.445553', '2021-07-14 16:38:47.445553', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4848, '2021-07-14 16:39:12.069168', '2021-07-14 16:39:12.069168', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4849, '2021-07-14 16:39:12.072444', '2021-07-14 16:39:12.072444', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4850, '2021-07-14 16:39:37.537586', '2021-07-14 16:39:37.537586', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":0,\"name\":\"用户管理\",\"isShow\":true,\"icon\":\"icon-user\",\"orderNum\":7}');
INSERT INTO `base_sys_log` VALUES (4851, '2021-07-14 16:39:37.537905', '2021-07-14 16:39:37.537905', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":0,\"name\":\"用户管理\",\"isShow\":true,\"icon\":\"icon-user\",\"orderNum\":7}');
INSERT INTO `base_sys_log` VALUES (4852, '2021-07-14 16:39:38.084058', '2021-07-14 16:39:38.084058', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4853, '2021-07-14 16:39:38.099106', '2021-07-14 16:39:38.099106', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4854, '2021-07-14 16:39:40.696160', '2021-07-14 16:39:40.696160', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4855, '2021-07-14 16:39:40.699091', '2021-07-14 16:39:40.699091', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4856, '2021-07-14 16:40:02.323509', '2021-07-14 16:40:02.323509', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":0,\"name\":\"应用管理\",\"isShow\":true,\"icon\":\"icon-workbench\",\"orderNum\":6}');
INSERT INTO `base_sys_log` VALUES (4857, '2021-07-14 16:40:02.328984', '2021-07-14 16:40:02.328984', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":0,\"name\":\"应用管理\",\"isShow\":true,\"icon\":\"icon-workbench\",\"orderNum\":6}');
INSERT INTO `base_sys_log` VALUES (4858, '2021-07-14 16:40:03.160397', '2021-07-14 16:40:03.160397', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4859, '2021-07-14 16:40:03.162374', '2021-07-14 16:40:03.162374', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4860, '2021-07-14 16:40:04.173719', '2021-07-14 16:40:04.173719', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4861, '2021-07-14 16:40:04.180629', '2021-07-14 16:40:04.180629', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4862, '2021-07-14 16:40:23.382339', '2021-07-14 16:40:23.382339', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":0,\"name\":\"版本管理\",\"isShow\":true,\"icon\":\"icon-new\",\"orderNum\":8}');
INSERT INTO `base_sys_log` VALUES (4863, '2021-07-14 16:40:23.384193', '2021-07-14 16:40:23.384193', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":0,\"name\":\"版本管理\",\"isShow\":true,\"icon\":\"icon-new\",\"orderNum\":8}');
INSERT INTO `base_sys_log` VALUES (4864, '2021-07-14 16:40:23.879073', '2021-07-14 16:40:23.879073', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4865, '2021-07-14 16:40:23.885034', '2021-07-14 16:40:23.885034', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4866, '2021-07-14 16:40:25.791875', '2021-07-14 16:40:25.791875', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4867, '2021-07-14 16:40:26.026053', '2021-07-14 16:40:26.026053', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4868, '2021-07-14 16:40:26.184469', '2021-07-14 16:40:26.184469', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4869, '2021-07-14 16:40:26.186039', '2021-07-14 16:40:26.186039', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4870, '2021-07-14 16:40:33.972552', '2021-07-14 16:40:33.972552', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4871, '2021-07-14 16:40:33.973637', '2021-07-14 16:40:33.973637', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4872, '2021-07-14 16:41:32.309114', '2021-07-14 16:41:32.309114', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"审核应用\",\"parentId\":121,\"router\":\"/app/audit\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/app/views/audit.vue\",\"icon\":\"icon-menu\"}');
INSERT INTO `base_sys_log` VALUES (4873, '2021-07-14 16:41:32.310805', '2021-07-14 16:41:32.310805', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"审核应用\",\"parentId\":121,\"router\":\"/app/audit\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/app/views/audit.vue\",\"icon\":\"icon-menu\"}');
INSERT INTO `base_sys_log` VALUES (4874, '2021-07-14 16:41:32.877421', '2021-07-14 16:41:32.877421', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4875, '2021-07-14 16:41:32.880043', '2021-07-14 16:41:32.880043', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4876, '2021-07-14 16:41:41.749282', '2021-07-14 16:41:41.749282', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4877, '2021-07-14 16:41:41.779175', '2021-07-14 16:41:41.779175', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4878, '2021-07-14 16:42:11.980332', '2021-07-14 16:42:11.980332', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"发布应用\",\"parentId\":121,\"router\":\"/app/release\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/app/views/release.vue\",\"icon\":\"icon-menu\"}');
INSERT INTO `base_sys_log` VALUES (4879, '2021-07-14 16:42:11.987741', '2021-07-14 16:42:11.987741', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"发布应用\",\"parentId\":121,\"router\":\"/app/release\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/app/views/release.vue\",\"icon\":\"icon-menu\"}');
INSERT INTO `base_sys_log` VALUES (4880, '2021-07-14 16:42:12.853498', '2021-07-14 16:42:12.853498', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4881, '2021-07-14 16:42:12.861616', '2021-07-14 16:42:12.861616', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4882, '2021-07-14 16:42:29.852452', '2021-07-14 16:42:29.852452', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4883, '2021-07-14 16:42:29.855286', '2021-07-14 16:42:29.855286', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4884, '2021-07-14 16:42:51.411376', '2021-07-14 16:42:51.411376', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"轮播图\",\"parentId\":121,\"router\":\"/app/banner\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/app/views/banner.vue\",\"icon\":\"icon-menu\"}');
INSERT INTO `base_sys_log` VALUES (4885, '2021-07-14 16:42:51.415550', '2021-07-14 16:42:51.415550', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"轮播图\",\"parentId\":121,\"router\":\"/app/banner\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/app/views/banner.vue\",\"icon\":\"icon-menu\"}');
INSERT INTO `base_sys_log` VALUES (4886, '2021-07-14 16:42:51.957693', '2021-07-14 16:42:51.957693', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4887, '2021-07-14 16:42:51.966542', '2021-07-14 16:42:51.966542', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4888, '2021-07-14 16:42:56.973926', '2021-07-14 16:42:56.973926', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4889, '2021-07-14 16:42:56.976236', '2021-07-14 16:42:56.976236', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4890, '2021-07-14 16:43:16.973163', '2021-07-14 16:43:16.973163', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"新增\",\"parentId\":123,\"perms\":\"app:info:add\"}');
INSERT INTO `base_sys_log` VALUES (4891, '2021-07-14 16:43:16.980248', '2021-07-14 16:43:16.980248', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"新增\",\"parentId\":123,\"perms\":\"app:info:add\"}');
INSERT INTO `base_sys_log` VALUES (4892, '2021-07-14 16:43:17.822789', '2021-07-14 16:43:17.822789', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4893, '2021-07-14 16:43:17.827111', '2021-07-14 16:43:17.827111', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4894, '2021-07-14 16:43:20.327199', '2021-07-14 16:43:20.327199', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4895, '2021-07-14 16:43:20.331137', '2021-07-14 16:43:20.331137', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4896, '2021-07-14 16:43:32.858929', '2021-07-14 16:43:32.858929', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"编辑\",\"parentId\":123,\"perms\":\"app:info:update\"}');
INSERT INTO `base_sys_log` VALUES (4897, '2021-07-14 16:43:32.860120', '2021-07-14 16:43:32.860120', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"编辑\",\"parentId\":123,\"perms\":\"app:info:update\"}');
INSERT INTO `base_sys_log` VALUES (4898, '2021-07-14 16:43:33.374036', '2021-07-14 16:43:33.374036', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4899, '2021-07-14 16:43:33.383106', '2021-07-14 16:43:33.383106', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4900, '2021-07-14 16:43:41.166218', '2021-07-14 16:43:41.166218', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4901, '2021-07-14 16:43:41.167428', '2021-07-14 16:43:41.167428', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4902, '2021-07-14 16:43:55.395931', '2021-07-14 16:43:55.395931', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"删除\",\"parentId\":123,\"perms\":\"app:info:delete\"}');
INSERT INTO `base_sys_log` VALUES (4903, '2021-07-14 16:43:55.402597', '2021-07-14 16:43:55.402597', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"删除\",\"parentId\":123,\"perms\":\"app:info:delete\"}');
INSERT INTO `base_sys_log` VALUES (4904, '2021-07-14 16:43:56.274456', '2021-07-14 16:43:56.274456', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4905, '2021-07-14 16:43:56.279053', '2021-07-14 16:43:56.279053', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4906, '2021-07-14 16:43:59.365223', '2021-07-14 16:43:59.365223', 1, '/admin/base/sys/menu/info', '192.168.3.45', '局域网', '{\"id\":\"126\"}');
INSERT INTO `base_sys_log` VALUES (4907, '2021-07-14 16:43:59.374952', '2021-07-14 16:43:59.374952', 1, '/admin/base/sys/menu/info', '192.168.3.45', '局域网', '{\"id\":\"126\"}');
INSERT INTO `base_sys_log` VALUES (4908, '2021-07-14 16:43:59.684150', '2021-07-14 16:43:59.684150', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4909, '2021-07-14 16:43:59.686566', '2021-07-14 16:43:59.686566', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4910, '2021-07-14 16:44:04.735869', '2021-07-14 16:44:04.735869', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4911, '2021-07-14 16:44:04.737933', '2021-07-14 16:44:04.737933', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4912, '2021-07-14 16:44:20.585153', '2021-07-14 16:44:20.585153', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"查询\",\"parentId\":123,\"perms\":\"app:info:page,app:info:list,app:info:info\"}');
INSERT INTO `base_sys_log` VALUES (4913, '2021-07-14 16:44:20.586291', '2021-07-14 16:44:20.586291', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"查询\",\"parentId\":123,\"perms\":\"app:info:page,app:info:list,app:info:info\"}');
INSERT INTO `base_sys_log` VALUES (4914, '2021-07-14 16:44:21.484177', '2021-07-14 16:44:21.484177', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4915, '2021-07-14 16:44:21.486378', '2021-07-14 16:44:21.486378', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4916, '2021-07-14 16:44:26.865713', '2021-07-14 16:44:26.865713', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4917, '2021-07-14 16:44:26.867948', '2021-07-14 16:44:26.867948', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4918, '2021-07-14 16:44:38.477256', '2021-07-14 16:44:38.477256', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"审核\",\"parentId\":123,\"perms\":\"app:info:audit\"}');
INSERT INTO `base_sys_log` VALUES (4919, '2021-07-14 16:44:38.480176', '2021-07-14 16:44:38.480176', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"审核\",\"parentId\":123,\"perms\":\"app:info:audit\"}');
INSERT INTO `base_sys_log` VALUES (4920, '2021-07-14 16:44:39.053306', '2021-07-14 16:44:39.053306', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4921, '2021-07-14 16:44:39.060412', '2021-07-14 16:44:39.060412', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4922, '2021-07-14 16:44:44.980950', '2021-07-14 16:44:44.980950', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4923, '2021-07-14 16:44:44.983523', '2021-07-14 16:44:44.983523', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4924, '2021-07-14 16:44:54.731061', '2021-07-14 16:44:54.731061', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"新增\",\"parentId\":124,\"perms\":\"app:info:add\"}');
INSERT INTO `base_sys_log` VALUES (4925, '2021-07-14 16:44:54.734150', '2021-07-14 16:44:54.734150', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"新增\",\"parentId\":124,\"perms\":\"app:info:add\"}');
INSERT INTO `base_sys_log` VALUES (4926, '2021-07-14 16:44:55.561031', '2021-07-14 16:44:55.561031', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4927, '2021-07-14 16:44:55.564153', '2021-07-14 16:44:55.564153', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4928, '2021-07-14 16:44:59.483195', '2021-07-14 16:44:59.483195', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4929, '2021-07-14 16:44:59.488211', '2021-07-14 16:44:59.488211', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4930, '2021-07-14 16:45:14.478634', '2021-07-14 16:45:14.478634', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"修改\",\"parentId\":124,\"perms\":\"app:info:update\"}');
INSERT INTO `base_sys_log` VALUES (4931, '2021-07-14 16:45:14.480392', '2021-07-14 16:45:14.480392', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"修改\",\"parentId\":124,\"perms\":\"app:info:update\"}');
INSERT INTO `base_sys_log` VALUES (4932, '2021-07-14 16:45:15.018657', '2021-07-14 16:45:15.018657', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4933, '2021-07-14 16:45:15.018821', '2021-07-14 16:45:15.018821', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4934, '2021-07-14 16:45:17.989172', '2021-07-14 16:45:17.989172', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4935, '2021-07-14 16:45:17.990724', '2021-07-14 16:45:17.990724', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4936, '2021-07-14 16:45:28.195943', '2021-07-14 16:45:28.195943', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"删除\",\"parentId\":124,\"perms\":\"app:info:delete\"}');
INSERT INTO `base_sys_log` VALUES (4937, '2021-07-14 16:45:28.198647', '2021-07-14 16:45:28.198647', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"删除\",\"parentId\":124,\"perms\":\"app:info:delete\"}');
INSERT INTO `base_sys_log` VALUES (4938, '2021-07-14 16:45:29.061440', '2021-07-14 16:45:29.061440', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4939, '2021-07-14 16:45:29.072049', '2021-07-14 16:45:29.072049', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4940, '2021-07-14 16:45:31.071129', '2021-07-14 16:45:31.071129', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4941, '2021-07-14 16:45:31.076602', '2021-07-14 16:45:31.076602', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4942, '2021-07-14 16:45:41.945999', '2021-07-14 16:45:41.945999', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"查询\",\"parentId\":124,\"perms\":\"app:info:page,app:info:list,app:info:info\"}');
INSERT INTO `base_sys_log` VALUES (4943, '2021-07-14 16:45:41.949921', '2021-07-14 16:45:41.949921', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"查询\",\"parentId\":124,\"perms\":\"app:info:page,app:info:list,app:info:info\"}');
INSERT INTO `base_sys_log` VALUES (4944, '2021-07-14 16:45:42.471159', '2021-07-14 16:45:42.471159', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4945, '2021-07-14 16:45:42.475505', '2021-07-14 16:45:42.475505', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4946, '2021-07-14 16:45:45.776389', '2021-07-14 16:45:45.776389', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4947, '2021-07-14 16:45:45.776695', '2021-07-14 16:45:45.776695', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4948, '2021-07-14 16:45:54.367279', '2021-07-14 16:45:54.367279', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"审核\",\"parentId\":124,\"perms\":\"app:info:audit\"}');
INSERT INTO `base_sys_log` VALUES (4949, '2021-07-14 16:45:54.373972', '2021-07-14 16:45:54.373972', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"审核\",\"parentId\":124,\"perms\":\"app:info:audit\"}');
INSERT INTO `base_sys_log` VALUES (4950, '2021-07-14 16:45:55.250251', '2021-07-14 16:45:55.250251', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4951, '2021-07-14 16:45:55.252628', '2021-07-14 16:45:55.252628', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4952, '2021-07-14 16:46:01.908168', '2021-07-14 16:46:01.908168', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4953, '2021-07-14 16:46:01.909951', '2021-07-14 16:46:01.909951', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4954, '2021-07-14 16:46:40.973964', '2021-07-14 16:46:40.973964', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"用户列表\",\"parentId\":120,\"router\":\"/user/info\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/user/views/user.vue\",\"icon\":\"icon-user\"}');
INSERT INTO `base_sys_log` VALUES (4955, '2021-07-14 16:46:40.977133', '2021-07-14 16:46:40.977133', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"用户列表\",\"parentId\":120,\"router\":\"/user/info\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/user/views/user.vue\",\"icon\":\"icon-user\"}');
INSERT INTO `base_sys_log` VALUES (4956, '2021-07-14 16:46:41.528116', '2021-07-14 16:46:41.528116', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4957, '2021-07-14 16:46:41.538219', '2021-07-14 16:46:41.538219', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4958, '2021-07-14 16:46:45.649881', '2021-07-14 16:46:45.649881', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4959, '2021-07-14 16:46:45.651917', '2021-07-14 16:46:45.651917', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4960, '2021-07-14 16:46:58.390040', '2021-07-14 16:46:58.390040', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"新增\",\"parentId\":136,\"perms\":\"user:info:add\"}');
INSERT INTO `base_sys_log` VALUES (4961, '2021-07-14 16:46:58.390262', '2021-07-14 16:46:58.390262', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"新增\",\"parentId\":136,\"perms\":\"user:info:add\"}');
INSERT INTO `base_sys_log` VALUES (4962, '2021-07-14 16:46:59.233369', '2021-07-14 16:46:59.233369', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4963, '2021-07-14 16:46:59.243012', '2021-07-14 16:46:59.243012', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4964, '2021-07-14 16:47:01.683276', '2021-07-14 16:47:01.683276', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4965, '2021-07-14 16:47:01.686582', '2021-07-14 16:47:01.686582', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4966, '2021-07-14 16:47:12.619722', '2021-07-14 16:47:12.619722', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"修改\",\"parentId\":136,\"perms\":\"user:info:update\"}');
INSERT INTO `base_sys_log` VALUES (4967, '2021-07-14 16:47:12.620122', '2021-07-14 16:47:12.620122', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"修改\",\"parentId\":136,\"perms\":\"user:info:update\"}');
INSERT INTO `base_sys_log` VALUES (4968, '2021-07-14 16:47:13.153512', '2021-07-14 16:47:13.153512', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4969, '2021-07-14 16:47:13.168627', '2021-07-14 16:47:13.168627', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4970, '2021-07-14 16:47:15.348822', '2021-07-14 16:47:15.348822', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4971, '2021-07-14 16:47:15.350252', '2021-07-14 16:47:15.350252', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4972, '2021-07-14 16:47:24.620623', '2021-07-14 16:47:24.620623', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"删除\",\"parentId\":136,\"perms\":\"user:info:delete\"}');
INSERT INTO `base_sys_log` VALUES (4973, '2021-07-14 16:47:24.623082', '2021-07-14 16:47:24.623082', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"删除\",\"parentId\":136,\"perms\":\"user:info:delete\"}');
INSERT INTO `base_sys_log` VALUES (4974, '2021-07-14 16:47:25.462239', '2021-07-14 16:47:25.462239', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4975, '2021-07-14 16:47:25.470089', '2021-07-14 16:47:25.470089', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4976, '2021-07-14 16:47:27.443045', '2021-07-14 16:47:27.443045', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4977, '2021-07-14 16:47:27.445197', '2021-07-14 16:47:27.445197', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4978, '2021-07-14 16:47:40.491286', '2021-07-14 16:47:40.491286', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"查询\",\"parentId\":136,\"perms\":\"user:info:list,user:info:page,user:info:info\"}');
INSERT INTO `base_sys_log` VALUES (4979, '2021-07-14 16:47:40.491700', '2021-07-14 16:47:40.491700', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"查询\",\"parentId\":136,\"perms\":\"user:info:list,user:info:page,user:info:info\"}');
INSERT INTO `base_sys_log` VALUES (4980, '2021-07-14 16:47:41.023355', '2021-07-14 16:47:41.023355', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4981, '2021-07-14 16:47:41.039150', '2021-07-14 16:47:41.039150', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4982, '2021-07-14 16:47:46.130019', '2021-07-14 16:47:46.130019', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4983, '2021-07-14 16:47:46.131469', '2021-07-14 16:47:46.131469', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4984, '2021-07-14 16:48:24.962877', '2021-07-14 16:48:24.962877', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"版本列表\",\"parentId\":122,\"router\":\"/platform/version\",\"keepAlive\":true,\"isShow\":true}');
INSERT INTO `base_sys_log` VALUES (4985, '2021-07-14 16:48:24.964806', '2021-07-14 16:48:24.964806', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"版本列表\",\"parentId\":122,\"router\":\"/platform/version\",\"keepAlive\":true,\"isShow\":true}');
INSERT INTO `base_sys_log` VALUES (4986, '2021-07-14 16:48:25.829597', '2021-07-14 16:48:25.829597', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4987, '2021-07-14 16:48:25.841458', '2021-07-14 16:48:25.841458', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4988, '2021-07-14 16:49:14.845113', '2021-07-14 16:49:14.845113', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4989, '2021-07-14 16:49:15.077199', '2021-07-14 16:49:15.077199', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4990, '2021-07-14 16:49:15.253972', '2021-07-14 16:49:15.253972', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4991, '2021-07-14 16:49:15.255460', '2021-07-14 16:49:15.255460', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4992, '2021-07-14 16:49:36.860307', '2021-07-14 16:49:36.860307', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4993, '2021-07-14 16:49:37.494797', '2021-07-14 16:49:37.494797', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4994, '2021-07-14 16:49:37.813786', '2021-07-14 16:49:37.813786', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4995, '2021-07-14 16:49:37.818168', '2021-07-14 16:49:37.818168', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4996, '2021-07-14 16:49:54.025756', '2021-07-14 16:49:54.025756', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4997, '2021-07-14 16:49:54.396937', '2021-07-14 16:49:54.396937', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4998, '2021-07-14 16:49:54.407705', '2021-07-14 16:49:54.407705', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (4999, '2021-07-14 16:49:54.413513', '2021-07-14 16:49:54.413513', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5000, '2021-07-14 16:50:09.449879', '2021-07-14 16:50:09.449879', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5001, '2021-07-14 16:50:09.750065', '2021-07-14 16:50:09.750065', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5002, '2021-07-14 16:50:09.883071', '2021-07-14 16:50:09.883071', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5003, '2021-07-14 16:50:09.887053', '2021-07-14 16:50:09.887053', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5004, '2021-07-14 16:50:27.567908', '2021-07-14 16:50:27.567908', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5005, '2021-07-14 16:50:27.806679', '2021-07-14 16:50:27.806679', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5006, '2021-07-14 16:50:27.930807', '2021-07-14 16:50:27.930807', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5007, '2021-07-14 16:50:27.934447', '2021-07-14 16:50:27.934447', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5008, '2021-07-14 16:50:34.651788', '2021-07-14 16:50:34.651788', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5009, '2021-07-14 16:50:35.052734', '2021-07-14 16:50:35.052734', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5010, '2021-07-14 16:50:35.229578', '2021-07-14 16:50:35.229578', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5011, '2021-07-14 16:50:35.234106', '2021-07-14 16:50:35.234106', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5012, '2021-07-14 16:50:42.335050', '2021-07-14 16:50:42.335050', 1, '/admin/base/sys/menu/info', '192.168.3.45', '局域网', '{\"id\":\"141\"}');
INSERT INTO `base_sys_log` VALUES (5013, '2021-07-14 16:50:42.336994', '2021-07-14 16:50:42.336994', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5014, '2021-07-14 16:50:42.343234', '2021-07-14 16:50:42.343234', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5015, '2021-07-14 16:50:42.348646', '2021-07-14 16:50:42.348646', 1, '/admin/base/sys/menu/info', '192.168.3.45', '局域网', '{\"id\":\"141\"}');
INSERT INTO `base_sys_log` VALUES (5016, '2021-07-14 16:50:50.178148', '2021-07-14 16:50:50.178148', 1, '/admin/base/sys/menu/update', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"版本列表\",\"parentId\":\"122\",\"router\":\"/platform/version\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/platform/views/version.vue\",\"icon\":null,\"orderNum\":0,\"id\":141,\"createTime\":\"2021-07-14 16:48:25\",\"updateTime\":\"2021-07-14 16:48:25\"}');
INSERT INTO `base_sys_log` VALUES (5017, '2021-07-14 16:50:50.182699', '2021-07-14 16:50:50.182699', 1, '/admin/base/sys/menu/update', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"版本列表\",\"parentId\":\"122\",\"router\":\"/platform/version\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/platform/views/version.vue\",\"icon\":null,\"orderNum\":0,\"id\":141,\"createTime\":\"2021-07-14 16:48:25\",\"updateTime\":\"2021-07-14 16:48:25\"}');
INSERT INTO `base_sys_log` VALUES (5018, '2021-07-14 16:50:51.074583', '2021-07-14 16:50:51.074583', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5019, '2021-07-14 16:50:51.077457', '2021-07-14 16:50:51.077457', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5020, '2021-07-14 16:50:52.796313', '2021-07-14 16:50:52.796313', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5021, '2021-07-14 16:50:52.803486', '2021-07-14 16:50:52.803486', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5022, '2021-07-14 16:51:10.042142', '2021-07-14 16:51:10.042142', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"新增\",\"parentId\":141,\"perms\":\"platform:version:add\"}');
INSERT INTO `base_sys_log` VALUES (5023, '2021-07-14 16:51:10.043955', '2021-07-14 16:51:10.043955', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"新增\",\"parentId\":141,\"perms\":\"platform:version:add\"}');
INSERT INTO `base_sys_log` VALUES (5024, '2021-07-14 16:51:10.598413', '2021-07-14 16:51:10.598413', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5025, '2021-07-14 16:51:10.601316', '2021-07-14 16:51:10.601316', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5026, '2021-07-14 16:51:12.784111', '2021-07-14 16:51:12.784111', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5027, '2021-07-14 16:51:12.786090', '2021-07-14 16:51:12.786090', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5028, '2021-07-14 16:51:24.754055', '2021-07-14 16:51:24.754055', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"修改\",\"parentId\":141,\"perms\":\"platform:version:update\"}');
INSERT INTO `base_sys_log` VALUES (5029, '2021-07-14 16:51:24.761643', '2021-07-14 16:51:24.761643', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"修改\",\"parentId\":141,\"perms\":\"platform:version:update\"}');
INSERT INTO `base_sys_log` VALUES (5030, '2021-07-14 16:51:25.614285', '2021-07-14 16:51:25.614285', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5031, '2021-07-14 16:51:25.625733', '2021-07-14 16:51:25.625733', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5032, '2021-07-14 16:51:28.321130', '2021-07-14 16:51:28.321130', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5033, '2021-07-14 16:51:28.322225', '2021-07-14 16:51:28.322225', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5034, '2021-07-14 16:51:38.153705', '2021-07-14 16:51:38.153705', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"删除\",\"parentId\":141,\"perms\":\"platform:version:delete\"}');
INSERT INTO `base_sys_log` VALUES (5035, '2021-07-14 16:51:38.155758', '2021-07-14 16:51:38.155758', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"删除\",\"parentId\":141,\"perms\":\"platform:version:delete\"}');
INSERT INTO `base_sys_log` VALUES (5036, '2021-07-14 16:51:38.670993', '2021-07-14 16:51:38.670993', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5037, '2021-07-14 16:51:38.678700', '2021-07-14 16:51:38.678700', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5038, '2021-07-14 16:51:40.519635', '2021-07-14 16:51:40.519635', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5039, '2021-07-14 16:51:40.524180', '2021-07-14 16:51:40.524180', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5040, '2021-07-14 16:51:50.464879', '2021-07-14 16:51:50.464879', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"查询\",\"parentId\":141,\"perms\":\"platform:version:page,platform:version:list,platform:version:info\"}');
INSERT INTO `base_sys_log` VALUES (5041, '2021-07-14 16:51:50.468976', '2021-07-14 16:51:50.468976', 1, '/admin/base/sys/menu/add', '192.168.3.45', '局域网', '{\"type\":2,\"name\":\"查询\",\"parentId\":141,\"perms\":\"platform:version:page,platform:version:list,platform:version:info\"}');
INSERT INTO `base_sys_log` VALUES (5042, '2021-07-14 16:51:51.303365', '2021-07-14 16:51:51.303365', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5043, '2021-07-14 16:51:51.305290', '2021-07-14 16:51:51.305290', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5044, '2021-07-14 16:51:54.940261', '2021-07-14 16:51:54.940261', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5045, '2021-07-14 16:51:55.292101', '2021-07-14 16:51:55.292101', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5046, '2021-07-14 16:51:55.305599', '2021-07-14 16:51:55.305599', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5047, '2021-07-14 16:51:55.309084', '2021-07-14 16:51:55.309084', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5048, '2021-07-14 16:52:01.522320', '2021-07-14 16:52:01.522320', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5049, '2021-07-14 16:52:01.529409', '2021-07-14 16:52:01.529409', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5050, '2021-07-14 16:52:04.509273', '2021-07-14 16:52:04.509273', 1, '/admin/user/info/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5051, '2021-07-14 16:52:04.510601', '2021-07-14 16:52:04.510601', 1, '/admin/user/info/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5052, '2021-07-14 16:52:06.958633', '2021-07-14 16:52:06.958633', 1, '/admin/app/info/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20,\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5053, '2021-07-14 16:52:06.963239', '2021-07-14 16:52:06.963239', 1, '/admin/app/info/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20,\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5054, '2021-07-14 16:52:07.106753', '2021-07-14 16:52:07.106753', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5055, '2021-07-14 16:52:08.097237', '2021-07-14 16:52:08.097237', 1, '/admin/app/info/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5056, '2021-07-14 16:52:08.101288', '2021-07-14 16:52:08.101288', 1, '/admin/app/info/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5057, '2021-07-14 16:52:08.222296', '2021-07-14 16:52:08.222296', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5058, '2021-07-14 16:52:28.569241', '2021-07-14 16:52:28.569241', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5059, '2021-07-14 16:52:28.570663', '2021-07-14 16:52:28.570663', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5060, '2021-07-14 16:52:37.051813', '2021-07-14 16:52:37.051813', 1, '/admin/base/sys/menu/info', '192.168.3.45', '局域网', '{\"id\":\"141\"}');
INSERT INTO `base_sys_log` VALUES (5061, '2021-07-14 16:52:37.063129', '2021-07-14 16:52:37.063129', 1, '/admin/base/sys/menu/info', '192.168.3.45', '局域网', '{\"id\":\"141\"}');
INSERT INTO `base_sys_log` VALUES (5062, '2021-07-14 16:52:37.371808', '2021-07-14 16:52:37.371808', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5063, '2021-07-14 16:52:37.373628', '2021-07-14 16:52:37.373628', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5064, '2021-07-14 16:52:44.419612', '2021-07-14 16:52:44.419612', 1, '/admin/base/sys/menu/update', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"版本列表\",\"parentId\":\"122\",\"router\":\"/platform/version\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/platform/views/version.vue\",\"icon\":null,\"orderNum\":0,\"id\":141,\"createTime\":\"2021-07-14 16:48:25\",\"updateTime\":\"2021-07-14 16:48:25\"}');
INSERT INTO `base_sys_log` VALUES (5065, '2021-07-14 16:52:44.421092', '2021-07-14 16:52:44.421092', 1, '/admin/base/sys/menu/update', '192.168.3.45', '局域网', '{\"type\":1,\"name\":\"版本列表\",\"parentId\":\"122\",\"router\":\"/platform/version\",\"keepAlive\":true,\"isShow\":true,\"viewPath\":\"cool/modules/platform/views/version.vue\",\"icon\":null,\"orderNum\":0,\"id\":141,\"createTime\":\"2021-07-14 16:48:25\",\"updateTime\":\"2021-07-14 16:48:25\"}');
INSERT INTO `base_sys_log` VALUES (5066, '2021-07-14 16:52:44.897627', '2021-07-14 16:52:44.897627', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5067, '2021-07-14 16:52:44.902604', '2021-07-14 16:52:44.902604', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5068, '2021-07-14 16:52:47.462881', '2021-07-14 16:52:47.462881', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5069, '2021-07-14 16:52:47.774502', '2021-07-14 16:52:47.774502', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5070, '2021-07-14 16:52:47.786247', '2021-07-14 16:52:47.786247', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5071, '2021-07-14 16:52:47.788722', '2021-07-14 16:52:47.788722', 1, '/admin/base/sys/menu/list', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5072, '2021-07-14 16:56:03.246603', '2021-07-14 16:56:03.246603', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5073, '2021-07-14 16:56:21.527703', '2021-07-14 16:56:21.527703', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5074, '2021-07-14 16:56:21.903051', '2021-07-14 16:56:21.903051', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5075, '2021-07-14 16:56:21.923104', '2021-07-14 16:56:21.923104', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5076, '2021-07-14 16:56:38.499808', '2021-07-14 16:56:38.499808', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5077, '2021-07-14 16:56:38.805319', '2021-07-14 16:56:38.805319', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5078, '2021-07-14 16:56:38.817717', '2021-07-14 16:56:38.817717', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5079, '2021-07-14 16:56:50.888252', '2021-07-14 16:56:50.888252', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5080, '2021-07-14 16:56:51.249104', '2021-07-14 16:56:51.249104', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5081, '2021-07-14 16:56:51.261384', '2021-07-14 16:56:51.261384', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5082, '2021-07-14 16:57:44.837280', '2021-07-14 16:57:44.837280', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5083, '2021-07-14 16:57:53.223127', '2021-07-14 16:57:53.223127', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5084, '2021-07-14 16:58:17.571103', '2021-07-14 16:58:17.571103', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5085, '2021-07-14 16:58:17.835433', '2021-07-14 16:58:17.835433', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5086, '2021-07-14 16:58:18.034967', '2021-07-14 16:58:18.034967', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5087, '2021-07-14 16:59:02.621809', '2021-07-14 16:59:02.621809', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5088, '2021-07-14 16:59:04.226658', '2021-07-14 16:59:04.226658', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5089, '2021-07-14 17:00:49.055934', '2021-07-14 17:00:49.055934', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5090, '2021-07-14 17:00:49.559830', '2021-07-14 17:00:49.559830', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5091, '2021-07-14 17:00:49.578590', '2021-07-14 17:00:49.578590', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5092, '2021-07-14 17:00:49.581545', '2021-07-14 17:00:49.581545', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5093, '2021-07-14 17:15:23.300622', '2021-07-14 17:15:23.300622', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5094, '2021-07-14 17:15:23.305341', '2021-07-14 17:15:23.305341', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5095, '2021-07-14 17:15:56.379988', '2021-07-14 17:15:56.379988', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5096, '2021-07-14 17:15:56.382786', '2021-07-14 17:15:56.382786', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5097, '2021-07-14 17:16:13.974242', '2021-07-14 17:16:13.974242', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5098, '2021-07-14 17:16:13.978294', '2021-07-14 17:16:13.978294', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5099, '2021-07-14 17:21:17.055191', '2021-07-14 17:21:17.055191', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5100, '2021-07-14 17:21:17.446172', '2021-07-14 17:21:17.446172', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5101, '2021-07-14 17:21:17.632949', '2021-07-14 17:21:17.632949', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5102, '2021-07-14 17:21:17.633001', '2021-07-14 17:21:17.633001', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5103, '2021-07-14 17:22:50.615649', '2021-07-14 17:22:50.615649', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5104, '2021-07-14 17:22:50.618040', '2021-07-14 17:22:50.618040', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5105, '2021-07-14 17:23:28.065054', '2021-07-14 17:23:28.065054', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5106, '2021-07-14 17:23:28.066553', '2021-07-14 17:23:28.066553', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5107, '2021-07-14 17:24:15.066860', '2021-07-14 17:24:15.066860', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5108, '2021-07-14 17:24:15.072233', '2021-07-14 17:24:15.072233', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5109, '2021-07-14 17:24:57.550741', '2021-07-14 17:24:57.550741', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5110, '2021-07-14 17:24:57.561236', '2021-07-14 17:24:57.561236', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5111, '2021-07-14 17:25:42.733752', '2021-07-14 17:25:42.733752', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5112, '2021-07-14 17:25:42.734587', '2021-07-14 17:25:42.734587', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5113, '2021-07-14 17:26:15.803077', '2021-07-14 17:26:15.803077', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5114, '2021-07-14 17:26:15.825073', '2021-07-14 17:26:15.825073', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5115, '2021-07-14 17:26:48.303689', '2021-07-14 17:26:48.303689', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5116, '2021-07-14 17:26:48.304003', '2021-07-14 17:26:48.304003', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5117, '2021-07-14 17:28:08.299671', '2021-07-14 17:28:08.299671', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5118, '2021-07-14 17:28:08.303329', '2021-07-14 17:28:08.303329', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5119, '2021-07-14 17:29:35.889857', '2021-07-14 17:29:35.889857', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5120, '2021-07-14 17:29:35.891460', '2021-07-14 17:29:35.891460', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5121, '2021-07-14 17:29:46.915180', '2021-07-14 17:29:46.915180', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5122, '2021-07-14 17:29:47.279147', '2021-07-14 17:29:47.279147', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5123, '2021-07-14 17:29:47.301038', '2021-07-14 17:29:47.301038', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5124, '2021-07-14 17:29:47.301699', '2021-07-14 17:29:47.301699', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5125, '2021-07-14 17:30:13.390055', '2021-07-14 17:30:13.390055', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5126, '2021-07-14 17:30:13.395055', '2021-07-14 17:30:13.395055', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5127, '2021-07-14 17:30:53.765739', '2021-07-14 17:30:53.765739', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5128, '2021-07-14 17:30:53.767293', '2021-07-14 17:30:53.767293', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5129, '2021-07-14 17:31:06.976581', '2021-07-14 17:31:06.976581', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5130, '2021-07-14 17:31:06.978069', '2021-07-14 17:31:06.978069', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5131, '2021-07-14 17:31:15.848768', '2021-07-14 17:31:15.848768', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5132, '2021-07-14 17:31:15.852971', '2021-07-14 17:31:15.852971', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5133, '2021-07-14 17:31:21.685940', '2021-07-14 17:31:21.685940', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5134, '2021-07-14 17:31:22.081465', '2021-07-14 17:31:22.081465', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5135, '2021-07-14 17:31:22.098320', '2021-07-14 17:31:22.098320', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5136, '2021-07-14 17:31:22.100253', '2021-07-14 17:31:22.100253', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5137, '2021-07-14 17:31:47.326321', '2021-07-14 17:31:47.326321', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5138, '2021-07-14 17:31:47.332382', '2021-07-14 17:31:47.332382', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5139, '2021-07-14 17:32:03.278665', '2021-07-14 17:32:03.278665', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5140, '2021-07-14 17:32:03.280586', '2021-07-14 17:32:03.280586', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5141, '2021-07-14 17:32:12.380056', '2021-07-14 17:32:12.380056', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5142, '2021-07-14 17:32:12.383824', '2021-07-14 17:32:12.383824', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5143, '2021-07-14 17:32:26.167047', '2021-07-14 17:32:26.167047', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5144, '2021-07-14 17:32:26.170892', '2021-07-14 17:32:26.170892', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5145, '2021-07-14 17:33:15.726367', '2021-07-14 17:33:15.726367', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5146, '2021-07-14 17:33:15.727511', '2021-07-14 17:33:15.727511', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5147, '2021-07-14 17:33:27.423746', '2021-07-14 17:33:27.423746', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5148, '2021-07-14 17:33:27.427552', '2021-07-14 17:33:27.427552', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5149, '2021-07-14 17:33:34.699530', '2021-07-14 17:33:34.699530', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5150, '2021-07-14 17:33:34.961586', '2021-07-14 17:33:34.961586', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5151, '2021-07-14 17:33:35.127860', '2021-07-14 17:33:35.127860', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5152, '2021-07-14 17:33:35.131732', '2021-07-14 17:33:35.131732', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5153, '2021-07-14 17:33:59.621033', '2021-07-14 17:33:59.621033', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5154, '2021-07-14 17:33:59.623242', '2021-07-14 17:33:59.623242', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5155, '2021-07-14 17:34:10.927020', '2021-07-14 17:34:10.927020', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5156, '2021-07-14 17:34:10.930938', '2021-07-14 17:34:10.930938', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5157, '2021-07-14 17:34:58.819958', '2021-07-14 17:34:58.819958', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5158, '2021-07-14 17:34:58.822793', '2021-07-14 17:34:58.822793', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5159, '2021-07-14 17:35:15.685291', '2021-07-14 17:35:15.685291', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5160, '2021-07-14 17:35:15.686529', '2021-07-14 17:35:15.686529', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5161, '2021-07-14 17:36:04.342039', '2021-07-14 17:36:04.342039', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5162, '2021-07-14 17:36:04.343379', '2021-07-14 17:36:04.343379', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5163, '2021-07-14 17:37:29.198055', '2021-07-14 17:37:29.198055', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5164, '2021-07-14 17:37:29.220075', '2021-07-14 17:37:29.220075', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5165, '2021-07-14 17:37:48.151365', '2021-07-14 17:37:48.151365', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5166, '2021-07-14 17:37:48.154333', '2021-07-14 17:37:48.154333', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5167, '2021-07-14 17:39:19.533997', '2021-07-14 17:39:19.533997', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5168, '2021-07-14 17:39:19.535736', '2021-07-14 17:39:19.535736', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5169, '2021-07-14 17:40:52.407720', '2021-07-14 17:40:52.407720', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5170, '2021-07-14 17:40:52.411713', '2021-07-14 17:40:52.411713', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5171, '2021-07-14 17:41:04.738883', '2021-07-14 17:41:04.738883', 1, '/admin/base/comm/permmenu', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5172, '2021-07-14 17:41:05.152692', '2021-07-14 17:41:05.152692', 1, '/admin/base/comm/person', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5173, '2021-07-14 17:41:05.172088', '2021-07-14 17:41:05.172088', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5174, '2021-07-14 17:41:05.175853', '2021-07-14 17:41:05.175853', 1, '/admin/platform/version/page', '192.168.3.45', '局域网', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5175, '2021-07-14 18:00:50.730510', '2021-07-14 18:00:50.730510', 1, '/admin/base/comm/uploadMode', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5176, '2021-07-14 18:00:50.988603', '2021-07-14 18:00:50.988603', 1, '/admin/base/comm/upload', '192.168.3.45', '局域网', NULL);
INSERT INTO `base_sys_log` VALUES (5177, '2021-07-14 18:51:39.789319', '2021-07-14 18:51:39.789319', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsyaE1I4VGe6zZeMFKRbnGg\",\"CreateTime\":\"1626259899\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"123123\"}');
INSERT INTO `base_sys_log` VALUES (5178, '2021-07-14 18:51:45.191637', '2021-07-14 18:51:45.191637', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsyaE1I4VGe6zZeMFKRbnGg\",\"CreateTime\":\"1626259904\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"123\"}');
INSERT INTO `base_sys_log` VALUES (5179, '2021-07-14 18:51:46.719849', '2021-07-14 18:51:46.719849', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsyaE1I4VGe6zZeMFKRbnGg\",\"CreateTime\":\"1626259906\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"123123\"}');
INSERT INTO `base_sys_log` VALUES (5180, '2021-07-14 18:52:09.770995', '2021-07-14 18:52:09.770995', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsyaE1I4VGe6zZeMFKRbnGg\",\"CreateTime\":\"1626259929\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"867be730-e491-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQFC8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNGVpa2wzaVVkNDIxWm81S053Y0cAAgTUwe5gAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5181, '2021-07-14 19:12:23.389185', '2021-07-14 19:12:23.389185', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwgb5X-H-5-kU67v8Hfk65I0\",\"CreateTime\":\"1626261142\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_47184e00-e494-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQG48DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRWdXMWxTaVVkNDIxX1M5S053Y1oAAgRyxu5gAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5182, '2021-07-14 19:12:40.706423', '2021-07-14 19:12:40.706423', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwgb5X-H-5-kU67v8Hfk65I0\",\"CreateTime\":\"1626261156\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"61a61860-e494-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQEZ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVEJnTWw3aVVkNDIxWXphS3h3Y18AAgSfxu5gAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5183, '2021-07-14 19:16:13.139351', '2021-07-14 19:16:13.139351', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwjuo8zIectUStx8liCc4e2A\",\"CreateTime\":\"1626261372\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"dd4f8140-e494-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQEy8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQ0RIcmt3aVVkNDIxX09hS2h3Y3UAAgRux_5gAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5184, '2021-07-14 19:20:11.258075', '2021-07-14 19:20:11.258075', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwmQ_rX4-4QKPqs2riZYRK4U\",\"CreateTime\":\"1626261610\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_6eb5cb80-e495-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQGm8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyOFp3WWxCaVVkNDIxX0NiS053Y0QAAgRiyO5gAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5185, '2021-07-14 19:20:25.643536', '2021-07-14 19:20:25.643536', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwmQ_rX4-4QKPqs2riZYRK4U\",\"CreateTime\":\"1626261625\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"7891c050-e495-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQFX8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEZsR2xYaVVkNDIxX1RiS3h3Y2oAAgRzyO5gAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5186, '2021-07-14 19:56:32.191967', '2021-07-14 19:56:32.191967', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwi9ADbq1GLf7_U4yxrsV2Q0\",\"CreateTime\":\"1626263791\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_7f3e54e0-e49a-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQGF8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydEtpYWtzaVVkNDIxWkJrS2h3Y2oAAgTh0O5gAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5187, '2021-07-14 19:56:34.729347', '2021-07-14 19:56:34.729347', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwi9ADbq1GLf7_U4yxrsV2Q0\",\"CreateTime\":\"1626263794\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"123123\"}');
INSERT INTO `base_sys_log` VALUES (5188, '2021-07-14 19:56:42.617057', '2021-07-14 19:56:42.617057', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwi9ADbq1GLf7_U4yxrsV2Q0\",\"CreateTime\":\"1626263802\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"123\"}');
INSERT INTO `base_sys_log` VALUES (5189, '2021-07-14 19:57:15.333005', '2021-07-14 19:57:15.333005', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwi9ADbq1GLf7_U4yxrsV2Q0\",\"CreateTime\":\"1626263834\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"97c0e5f0-e49a-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQGm8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRUF2eGxGaVVkNDIxLWVrS3h3Y1oAAgQK0e5gAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5190, '2021-07-15 15:37:39.110433', '2021-07-15 15:37:39.110433', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5191, '2021-07-15 15:37:39.379750', '2021-07-15 15:37:39.379750', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5192, '2021-07-15 15:38:38.886513', '2021-07-15 15:38:38.886513', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5193, '2021-07-15 15:38:40.814578', '2021-07-15 15:38:40.814578', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5194, '2021-07-15 15:38:41.913485', '2021-07-15 15:38:41.913485', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5195, '2021-07-15 15:38:42.585979', '2021-07-15 15:38:42.585979', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5196, '2021-07-15 15:40:41.581640', '2021-07-15 15:40:41.581640', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5197, '2021-07-15 19:43:16.981055', '2021-07-15 19:43:16.981055', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5198, '2021-07-15 19:43:17.182566', '2021-07-15 19:43:17.182566', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5199, '2021-07-15 19:43:17.784294', '2021-07-15 19:43:17.784294', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5200, '2021-07-15 19:43:18.308689', '2021-07-15 19:43:18.308689', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5201, '2021-07-15 19:43:18.839396', '2021-07-15 19:43:18.839396', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5202, '2021-07-15 19:43:19.262397', '2021-07-15 19:43:19.262397', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5203, '2021-07-16 10:40:45.672125', '2021-07-16 10:40:45.672125', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5204, '2021-07-16 10:40:45.983423', '2021-07-16 10:40:45.983423', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5205, '2021-07-16 10:40:46.375060', '2021-07-16 10:40:46.375060', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5206, '2021-07-16 10:40:46.902168', '2021-07-16 10:40:46.902168', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5207, '2021-07-16 10:40:47.188469', '2021-07-16 10:40:47.188469', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5208, '2021-07-16 10:40:47.492807', '2021-07-16 10:40:47.492807', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5209, '2021-07-16 10:40:48.146281', '2021-07-16 10:40:48.146281', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5210, '2021-07-16 10:40:48.193982', '2021-07-16 10:40:48.193982', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5211, '2021-07-16 10:40:48.207645', '2021-07-16 10:40:48.207645', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5212, '2021-07-16 10:40:48.210723', '2021-07-16 10:40:48.210723', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5213, '2021-07-16 10:40:48.224265', '2021-07-16 10:40:48.224265', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5214, '2021-07-16 10:40:50.696961', '2021-07-16 10:40:50.696961', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5215, '2021-07-16 10:40:50.697857', '2021-07-16 10:40:50.697857', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5216, '2021-07-16 10:40:50.715677', '2021-07-16 10:40:50.715677', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5217, '2021-07-16 10:40:50.718502', '2021-07-16 10:40:50.718502', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5218, '2021-07-16 10:40:50.724141', '2021-07-16 10:40:50.724141', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5219, '2021-07-16 10:40:51.545111', '2021-07-16 10:40:51.545111', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":7,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5220, '2021-07-16 10:40:51.551522', '2021-07-16 10:40:51.551522', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5221, '2021-07-16 10:40:51.551784', '2021-07-16 10:40:51.551784', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5222, '2021-07-16 10:40:51.555708', '2021-07-16 10:40:51.555708', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5223, '2021-07-16 10:40:51.562284', '2021-07-16 10:40:51.562284', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5224, '2021-07-16 10:40:56.054433', '2021-07-16 10:40:56.054433', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":8,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5225, '2021-07-16 10:40:56.057471', '2021-07-16 10:40:56.057471', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5226, '2021-07-16 10:40:56.063702', '2021-07-16 10:40:56.063702', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5227, '2021-07-16 10:40:56.065181', '2021-07-16 10:40:56.065181', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5228, '2021-07-16 10:40:56.069875', '2021-07-16 10:40:56.069875', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5229, '2021-07-16 10:42:26.010398', '2021-07-16 10:42:26.010398', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5230, '2021-07-16 10:42:28.421232', '2021-07-16 10:42:28.421232', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5231, '2021-07-16 10:42:28.425191', '2021-07-16 10:42:28.425191', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5232, '2021-07-16 10:42:28.426424', '2021-07-16 10:42:28.426424', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":9,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5233, '2021-07-16 10:42:28.427685', '2021-07-16 10:42:28.427685', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5234, '2021-07-16 10:42:28.430073', '2021-07-16 10:42:28.430073', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5235, '2021-07-16 10:42:28.598173', '2021-07-16 10:42:28.598173', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5236, '2021-07-16 10:42:33.518612', '2021-07-16 10:42:33.518612', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5237, '2021-07-16 10:42:33.584553', '2021-07-16 10:42:33.584553', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5238, '2021-07-16 10:42:35.076057', '2021-07-16 10:42:35.076057', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5239, '2021-07-16 10:42:36.055239', '2021-07-16 10:42:36.055239', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5240, '2021-07-16 10:43:13.982421', '2021-07-16 10:43:13.982421', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5241, '2021-07-16 10:43:14.045857', '2021-07-16 10:43:14.045857', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5242, '2021-07-16 10:43:28.103371', '2021-07-16 10:43:28.103371', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5243, '2021-07-16 10:43:28.316583', '2021-07-16 10:43:28.316583', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5244, '2021-07-16 10:43:28.850354', '2021-07-16 10:43:28.850354', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5245, '2021-07-16 10:43:30.447047', '2021-07-16 10:43:30.447047', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5246, '2021-07-16 10:43:31.221044', '2021-07-16 10:43:31.221044', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5247, '2021-07-16 10:43:31.916636', '2021-07-16 10:43:31.916636', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5248, '2021-07-16 10:43:32.618533', '2021-07-16 10:43:32.618533', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5249, '2021-07-16 10:43:34.224239', '2021-07-16 10:43:34.224239', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5250, '2021-07-16 10:43:34.746310', '2021-07-16 10:43:34.746310', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5251, '2021-07-16 10:43:35.084237', '2021-07-16 10:43:35.084237', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5252, '2021-07-16 10:43:35.603406', '2021-07-16 10:43:35.603406', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5253, '2021-07-16 10:43:57.359842', '2021-07-16 10:43:57.359842', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5254, '2021-07-16 10:43:59.121430', '2021-07-16 10:43:59.121430', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5255, '2021-07-16 10:43:59.181800', '2021-07-16 10:43:59.181800', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5256, '2021-07-16 10:44:00.528526', '2021-07-16 10:44:00.528526', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5257, '2021-07-16 10:44:01.687101', '2021-07-16 10:44:01.687101', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5258, '2021-07-16 10:44:02.412349', '2021-07-16 10:44:02.412349', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5259, '2021-07-16 10:44:02.689839', '2021-07-16 10:44:02.689839', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5260, '2021-07-16 10:44:07.204290', '2021-07-16 10:44:07.204290', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5261, '2021-07-16 10:44:10.085345', '2021-07-16 10:44:10.085345', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5262, '2021-07-16 10:44:10.139683', '2021-07-16 10:44:10.139683', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5263, '2021-07-16 10:44:10.905860', '2021-07-16 10:44:10.905860', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5264, '2021-07-16 10:44:13.593383', '2021-07-16 10:44:13.593383', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5265, '2021-07-16 10:44:14.838707', '2021-07-16 10:44:14.838707', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5266, '2021-07-16 10:44:16.042993', '2021-07-16 10:44:16.042993', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5267, '2021-07-16 10:44:19.620299', '2021-07-16 10:44:19.620299', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5268, '2021-07-16 10:44:20.283294', '2021-07-16 10:44:20.283294', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5269, '2021-07-16 10:45:12.590673', '2021-07-16 10:45:12.590673', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5270, '2021-07-16 10:45:13.227065', '2021-07-16 10:45:13.227065', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5271, '2021-07-16 10:45:13.954417', '2021-07-16 10:45:13.954417', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5272, '2021-07-16 10:45:14.818520', '2021-07-16 10:45:14.818520', NULL, '/app/app/info/enable', '127.0.0.1', '本机地址', '{\"id\":23,\"enable\":0}');
INSERT INTO `base_sys_log` VALUES (5273, '2021-07-16 10:45:15.859893', '2021-07-16 10:45:15.859893', NULL, '/app/app/info/enable', '127.0.0.1', '本机地址', '{\"id\":23,\"enable\":1}');
INSERT INTO `base_sys_log` VALUES (5274, '2021-07-16 10:45:17.008558', '2021-07-16 10:45:17.008558', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5275, '2021-07-16 10:45:17.489512', '2021-07-16 10:45:17.489512', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5276, '2021-07-16 10:45:17.875183', '2021-07-16 10:45:17.875183', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5277, '2021-07-16 10:45:18.175413', '2021-07-16 10:45:18.175413', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5278, '2021-07-16 10:45:20.259715', '2021-07-16 10:45:20.259715', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5279, '2021-07-16 10:45:20.808474', '2021-07-16 10:45:20.808474', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5280, '2021-07-16 10:45:21.260561', '2021-07-16 10:45:21.260561', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5281, '2021-07-16 10:45:23.327734', '2021-07-16 10:45:23.327734', NULL, '/app/user/login/wxQrcode', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5282, '2021-07-16 10:47:29.254360', '2021-07-16 10:47:29.254360', NULL, '/app/user/login/wxQrcode', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5283, '2021-07-16 10:47:30.966737', '2021-07-16 10:47:30.966737', NULL, '/app/user/login/wxQrcode', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5284, '2021-07-16 10:47:36.275124', '2021-07-16 10:47:36.275124', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwiaxiPzPS4YpjZHK_FFgYp4\",\"CreateTime\":\"1626403656\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"2a2624f0-e5e0-11eb-b112-138e6441a7d5@tools\",\"Ticket\":\"gQGt7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTmFoSmthaVVkNDIxWmJXTU53Y3kAAgRD8-BgAwQIBwAA\"}');
INSERT INTO `base_sys_log` VALUES (5285, '2021-07-16 10:47:36.969548', '2021-07-16 10:47:36.969548', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5286, '2021-07-16 10:47:37.039185', '2021-07-16 10:47:37.039185', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5287, '2021-07-16 10:47:56.423055', '2021-07-16 10:47:56.423055', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5288, '2021-07-16 10:47:57.117054', '2021-07-16 10:47:57.117054', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5289, '2021-07-16 10:47:57.477430', '2021-07-16 10:47:57.477430', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5290, '2021-07-16 10:47:57.822220', '2021-07-16 10:47:57.822220', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5291, '2021-07-16 10:47:58.191742', '2021-07-16 10:47:58.191742', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5292, '2021-07-16 10:47:58.629470', '2021-07-16 10:47:58.629470', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5293, '2021-07-16 10:47:58.921845', '2021-07-16 10:47:58.921845', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5294, '2021-07-16 10:47:59.598687', '2021-07-16 10:47:59.598687', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5295, '2021-07-16 10:48:10.027768', '2021-07-16 10:48:10.027768', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5296, '2021-07-16 10:48:10.866211', '2021-07-16 10:48:10.866211', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5297, '2021-07-16 10:48:11.227272', '2021-07-16 10:48:11.227272', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5298, '2021-07-16 10:48:11.688275', '2021-07-16 10:48:11.688275', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5299, '2021-07-16 10:48:12.454817', '2021-07-16 10:48:12.454817', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5300, '2021-07-16 10:48:12.893218', '2021-07-16 10:48:12.893218', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5301, '2021-07-16 10:48:13.302268', '2021-07-16 10:48:13.302268', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5302, '2021-07-16 10:48:13.765456', '2021-07-16 10:48:13.765456', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5303, '2021-07-16 10:48:15.615528', '2021-07-16 10:48:15.615528', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5304, '2021-07-16 10:48:15.978003', '2021-07-16 10:48:15.978003', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5305, '2021-07-16 10:48:16.308853', '2021-07-16 10:48:16.308853', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5306, '2021-07-16 10:48:17.456885', '2021-07-16 10:48:17.456885', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5307, '2021-07-16 10:48:17.738996', '2021-07-16 10:48:17.738996', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5308, '2021-07-16 10:48:18.012616', '2021-07-16 10:48:18.012616', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5309, '2021-07-16 10:48:18.519648', '2021-07-16 10:48:18.519648', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5310, '2021-07-16 10:48:18.742787', '2021-07-16 10:48:18.742787', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5311, '2021-07-16 10:51:36.861702', '2021-07-16 10:51:36.861702', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5312, '2021-07-16 10:51:46.446777', '2021-07-16 10:51:46.446777', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5313, '2021-07-16 10:52:38.426490', '2021-07-16 10:52:38.426490', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5314, '2021-07-16 11:09:12.367330', '2021-07-16 11:09:12.367330', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwkHn9IfrfJn65475ScS7epo\",\"CreateTime\":\"1626404951\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_28d9ee80-e5e3-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQF28DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyczhCU2wzaVVkNDIxX2RYTWh3Y1kAAgRJ_PBgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5315, '2021-07-16 11:09:37.607599', '2021-07-16 11:09:37.607599', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwkHn9IfrfJn65475ScS7epo\",\"CreateTime\":\"1626404977\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"3d5cf050-e5e3-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQF_8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNUU0dWtGaVVkNDIxX0xYTWh3Y1IAAgRr_PBgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5316, '2021-07-16 11:11:59.789918', '2021-07-16 11:11:59.789918', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwnjiMe312giTPXg9_7wXDik\",\"CreateTime\":\"1626405119\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"\"}');
INSERT INTO `base_sys_log` VALUES (5317, '2021-07-16 11:12:46.809772', '2021-07-16 11:12:46.809772', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwjsh3ffqhan6Ifw1CoU1pJs\",\"CreateTime\":\"1626405166\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_aea72aa0-e5e3-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQEG8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyT0NQQmxCaVVkNDIxLUpZTU53Y1oAAgQp_fBgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5318, '2021-07-16 11:13:05.670803', '2021-07-16 11:13:05.670803', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwjsh3ffqhan6Ifw1CoU1pJs\",\"CreateTime\":\"1626405185\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"b7af0690-e5e3-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQFW8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyODJpN2swaVVkNDIxLVlZTTF3YzYAAgQ4_fBgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5319, '2021-07-16 11:14:54.274997', '2021-07-16 11:14:54.274997', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwnjiMe312giTPXg9_7wXDik\",\"CreateTime\":\"1626405293\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https://mall-h5.cool-js.com\",\"MenuId\":\"684282980\"}');
INSERT INTO `base_sys_log` VALUES (5320, '2021-07-16 11:19:08.069132', '2021-07-16 11:19:08.069132', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsxkPNWx7QdoyQ2FaXOVFp8\",\"CreateTime\":\"1626405547\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_8ab56520-e5e4-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQFQ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRDZENmttaVVkNDIxWXUtTWh3Y18AAgSa_vBgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5321, '2021-07-16 11:19:16.582929', '2021-07-16 11:19:16.582929', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5322, '2021-07-16 11:19:17.163001', '2021-07-16 11:19:17.163001', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5323, '2021-07-16 11:19:19.629354', '2021-07-16 11:19:19.629354', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsxkPNWx7QdoyQ2FaXOVFp8\",\"CreateTime\":\"1626405559\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https://cool-js.com\",\"MenuId\":\"684282980\"}');
INSERT INTO `base_sys_log` VALUES (5324, '2021-07-16 11:19:23.986818', '2021-07-16 11:19:23.986818', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsxkPNWx7QdoyQ2FaXOVFp8\",\"CreateTime\":\"1626405563\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https://cool-js.com/team.html\",\"MenuId\":\"684282980\"}');
INSERT INTO `base_sys_log` VALUES (5325, '2021-07-16 11:19:33.779598', '2021-07-16 11:19:33.779598', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsxkPNWx7QdoyQ2FaXOVFp8\",\"CreateTime\":\"1626405573\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"9a446590-e5e4-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQEo8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydVBJV2xVaVVkNDIxWVYtTTF3Y2gAAgS1_vBgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5326, '2021-07-16 11:20:24.195809', '2021-07-16 11:20:24.195809', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5327, '2021-07-16 11:20:24.280564', '2021-07-16 11:20:24.280564', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5328, '2021-07-16 11:20:48.591283', '2021-07-16 11:20:48.591283', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5329, '2021-07-16 11:20:50.504770', '2021-07-16 11:20:50.504770', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5330, '2021-07-16 11:20:50.611210', '2021-07-16 11:20:50.611210', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5331, '2021-07-16 11:21:47.191577', '2021-07-16 11:21:47.191577', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5332, '2021-07-16 11:21:47.358417', '2021-07-16 11:21:47.358417', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5333, '2021-07-16 11:23:38.318751', '2021-07-16 11:23:38.318751', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5334, '2021-07-16 11:23:41.122899', '2021-07-16 11:23:41.122899', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5335, '2021-07-16 11:23:41.189437', '2021-07-16 11:23:41.189437', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5336, '2021-07-16 11:24:31.930167', '2021-07-16 11:24:31.930167', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5337, '2021-07-16 11:24:31.996069', '2021-07-16 11:24:31.996069', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5338, '2021-07-16 11:25:05.247514', '2021-07-16 11:25:05.247514', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5339, '2021-07-16 11:25:07.439213', '2021-07-16 11:25:07.439213', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5340, '2021-07-16 11:25:07.505549', '2021-07-16 11:25:07.505549', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5341, '2021-07-16 11:25:16.948396', '2021-07-16 11:25:16.948396', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5342, '2021-07-16 11:25:19.321481', '2021-07-16 11:25:19.321481', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5343, '2021-07-16 11:25:19.383506', '2021-07-16 11:25:19.383506', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5344, '2021-07-16 11:25:37.843981', '2021-07-16 11:25:37.843981', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5345, '2021-07-16 11:25:45.503253', '2021-07-16 11:25:45.503253', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5346, '2021-07-16 11:26:09.881542', '2021-07-16 11:26:09.881542', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5347, '2021-07-16 11:26:26.088055', '2021-07-16 11:26:26.088055', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5348, '2021-07-16 11:26:28.328861', '2021-07-16 11:26:28.328861', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5349, '2021-07-16 11:26:28.394465', '2021-07-16 11:26:28.394465', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5350, '2021-07-16 11:27:25.439704', '2021-07-16 11:27:25.439704', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5351, '2021-07-16 11:27:28.063841', '2021-07-16 11:27:28.063841', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5352, '2021-07-16 11:27:28.133679', '2021-07-16 11:27:28.133679', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5353, '2021-07-16 11:27:45.076828', '2021-07-16 11:27:45.076828', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5354, '2021-07-16 11:27:48.376039', '2021-07-16 11:27:48.376039', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5355, '2021-07-16 11:27:48.436082', '2021-07-16 11:27:48.436082', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5356, '2021-07-16 11:29:55.167938', '2021-07-16 11:29:55.167938', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5357, '2021-07-16 11:30:55.638240', '2021-07-16 11:30:55.638240', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5358, '2021-07-16 11:30:58.886862', '2021-07-16 11:30:58.886862', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5359, '2021-07-16 11:30:58.956544', '2021-07-16 11:30:58.956544', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5360, '2021-07-16 11:31:09.749365', '2021-07-16 11:31:09.749365', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5361, '2021-07-16 11:31:09.814043', '2021-07-16 11:31:09.814043', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5362, '2021-07-16 11:31:16.743936', '2021-07-16 11:31:16.743936', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5363, '2021-07-16 11:31:18.355748', '2021-07-16 11:31:18.355748', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5364, '2021-07-16 11:31:18.417975', '2021-07-16 11:31:18.417975', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5365, '2021-07-16 11:31:33.322332', '2021-07-16 11:31:33.322332', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5366, '2021-07-16 11:31:34.955809', '2021-07-16 11:31:34.955809', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5367, '2021-07-16 11:31:35.023166', '2021-07-16 11:31:35.023166', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5368, '2021-07-16 11:31:45.815365', '2021-07-16 11:31:45.815365', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5369, '2021-07-16 11:31:48.056645', '2021-07-16 11:31:48.056645', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5370, '2021-07-16 11:31:48.118746', '2021-07-16 11:31:48.118746', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5371, '2021-07-16 11:31:56.681769', '2021-07-16 11:31:56.681769', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5372, '2021-07-16 11:31:56.750446', '2021-07-16 11:31:56.750446', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5373, '2021-07-16 11:32:03.731130', '2021-07-16 11:32:03.731130', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5374, '2021-07-16 11:32:03.791769', '2021-07-16 11:32:03.791769', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5375, '2021-07-16 11:32:42.774182', '2021-07-16 11:32:42.774182', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5376, '2021-07-16 11:32:51.732535', '2021-07-16 11:32:51.732535', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5377, '2021-07-16 11:32:56.941488', '2021-07-16 11:32:56.941488', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5378, '2021-07-16 11:33:00.355733', '2021-07-16 11:33:00.355733', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5379, '2021-07-16 11:33:00.424967', '2021-07-16 11:33:00.424967', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5380, '2021-07-16 11:34:38.902277', '2021-07-16 11:34:38.902277', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5381, '2021-07-16 11:34:38.970568', '2021-07-16 11:34:38.970568', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5382, '2021-07-16 11:35:01.056284', '2021-07-16 11:35:01.056284', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5383, '2021-07-16 11:36:21.863879', '2021-07-16 11:36:21.863879', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5384, '2021-07-16 11:36:28.049049', '2021-07-16 11:36:28.049049', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5385, '2021-07-16 11:36:54.558052', '2021-07-16 11:36:54.558052', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5386, '2021-07-16 11:36:54.631452', '2021-07-16 11:36:54.631452', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5387, '2021-07-16 11:37:40.444499', '2021-07-16 11:37:40.444499', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5388, '2021-07-16 11:37:40.535038', '2021-07-16 11:37:40.535038', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5389, '2021-07-16 11:37:44.191907', '2021-07-16 11:37:44.191907', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5390, '2021-07-16 11:37:48.433385', '2021-07-16 11:37:48.433385', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5391, '2021-07-16 11:38:06.146069', '2021-07-16 11:38:06.146069', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5392, '2021-07-16 11:38:10.569720', '2021-07-16 11:38:10.569720', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5393, '2021-07-16 11:38:10.629734', '2021-07-16 11:38:10.629734', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5394, '2021-07-16 11:38:28.488370', '2021-07-16 11:38:28.488370', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5395, '2021-07-16 11:38:34.831672', '2021-07-16 11:38:34.831672', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5396, '2021-07-16 11:38:36.734996', '2021-07-16 11:38:36.734996', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5397, '2021-07-16 11:38:36.798971', '2021-07-16 11:38:36.798971', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5398, '2021-07-16 11:39:32.219220', '2021-07-16 11:39:32.219220', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5399, '2021-07-16 11:39:32.284112', '2021-07-16 11:39:32.284112', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5400, '2021-07-16 11:39:33.118627', '2021-07-16 11:39:33.118627', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5401, '2021-07-16 11:39:33.185051', '2021-07-16 11:39:33.185051', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5402, '2021-07-16 11:43:44.950459', '2021-07-16 11:43:44.950459', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5403, '2021-07-16 11:43:45.041049', '2021-07-16 11:43:45.041049', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5404, '2021-07-16 11:43:47.599888', '2021-07-16 11:43:47.599888', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5405, '2021-07-16 11:44:23.883963', '2021-07-16 11:44:23.883963', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5406, '2021-07-16 11:44:25.932060', '2021-07-16 11:44:25.932060', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5407, '2021-07-16 11:44:53.202905', '2021-07-16 11:44:53.202905', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5408, '2021-07-16 11:45:11.122049', '2021-07-16 11:45:11.122049', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5409, '2021-07-16 11:45:14.360246', '2021-07-16 11:45:14.360246', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5410, '2021-07-16 11:45:14.512974', '2021-07-16 11:45:14.512974', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5411, '2021-07-16 11:45:15.988697', '2021-07-16 11:45:15.988697', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5412, '2021-07-16 11:45:28.026730', '2021-07-16 11:45:28.026730', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5413, '2021-07-16 11:45:30.969686', '2021-07-16 11:45:30.969686', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5414, '2021-07-16 11:45:31.034418', '2021-07-16 11:45:31.034418', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5415, '2021-07-16 11:45:31.877049', '2021-07-16 11:45:31.877049', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5416, '2021-07-16 11:46:56.986355', '2021-07-16 11:46:56.986355', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5417, '2021-07-16 11:46:57.058286', '2021-07-16 11:46:57.058286', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5418, '2021-07-16 11:46:57.911034', '2021-07-16 11:46:57.911034', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5419, '2021-07-16 11:48:07.798619', '2021-07-16 11:48:07.798619', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5420, '2021-07-16 11:48:07.858697', '2021-07-16 11:48:07.858697', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5421, '2021-07-16 11:48:08.605559', '2021-07-16 11:48:08.605559', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5422, '2021-07-16 11:49:29.103549', '2021-07-16 11:49:29.103549', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwhnyh0GxZijUOolLtYuerEQ\",\"CreateTime\":\"1626407368\",\"MsgType\":\"event\",\"Event\":\"TEMPLATESENDJOBFINISH\",\"MsgID\":\"1959832122282573827\",\"Status\":\"success\"}');
INSERT INTO `base_sys_log` VALUES (5423, '2021-07-16 11:49:40.796140', '2021-07-16 11:49:40.796140', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwhnyh0GxZijUOolLtYuerEQ\",\"CreateTime\":\"1626407380\",\"MsgType\":\"event\",\"Event\":\"TEMPLATESENDJOBFINISH\",\"MsgID\":\"1959832322283765760\",\"Status\":\"success\"}');
INSERT INTO `base_sys_log` VALUES (5424, '2021-07-16 11:51:12.102808', '2021-07-16 11:51:12.102808', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5425, '2021-07-16 11:51:24.205553', '2021-07-16 11:51:24.205553', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5426, '2021-07-16 11:51:45.142276', '2021-07-16 11:51:45.142276', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwhIKzn32OneYJwPajTzqFEY\",\"CreateTime\":\"1626407504\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_1ba68290-e5e9-11eb-8a29-b73eb51ec4e2\",\"Ticket\":\"gQHb7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyS21PdGxOaVVkNDIxTmM5Tk53Y1oAAgREAvFgAwQIBwAA\"}');
INSERT INTO `base_sys_log` VALUES (5427, '2021-07-16 11:52:44.935073', '2021-07-16 11:52:44.935073', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwhnyh0GxZijUOolLtYuerEQ\",\"CreateTime\":\"1626407564\",\"MsgType\":\"event\",\"Event\":\"TEMPLATESENDJOBFINISH\",\"MsgID\":\"1959835407949332484\",\"Status\":\"success\"}');
INSERT INTO `base_sys_log` VALUES (5428, '2021-07-16 11:54:11.502402', '2021-07-16 11:54:11.502402', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5429, '2021-07-16 11:54:39.284539', '2021-07-16 11:54:39.284539', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5430, '2021-07-16 11:54:54.795623', '2021-07-16 11:54:54.795623', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5431, '2021-07-16 11:54:58.391055', '2021-07-16 11:54:58.391055', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5432, '2021-07-16 11:54:58.454713', '2021-07-16 11:54:58.454713', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5433, '2021-07-16 11:55:01.526929', '2021-07-16 11:55:01.526929', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5434, '2021-07-16 11:55:06.250547', '2021-07-16 11:55:06.250547', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5435, '2021-07-16 11:55:21.119024', '2021-07-16 11:55:21.119024', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5436, '2021-07-16 11:56:46.724651', '2021-07-16 11:56:46.724651', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5437, '2021-07-16 11:56:49.060482', '2021-07-16 11:56:49.060482', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5438, '2021-07-16 11:56:49.790239', '2021-07-16 11:56:49.790239', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5439, '2021-07-16 11:56:49.856050', '2021-07-16 11:56:49.856050', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5440, '2021-07-16 11:56:50.763590', '2021-07-16 11:56:50.763590', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5441, '2021-07-16 11:58:21.211880', '2021-07-16 11:58:21.211880', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5442, '2021-07-16 11:58:36.305597', '2021-07-16 11:58:36.305597', NULL, '/uploads/20210709/f7770650-e08f-11eb-856f-6f05a2e4417a.md', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5443, '2021-07-16 13:06:30.535363', '2021-07-16 13:06:30.535363', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsDO9xZptoEWAq6NJ3XQq5M\",\"CreateTime\":\"1626411990\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_8897b770-e5f3-11eb-8a29-b73eb51ec4e2\",\"Ticket\":\"gQGd8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyOFJyOWtXaVVkNDIxUDlxTk53YzgAAgTBE-FgAwQIBwAA\"}');
INSERT INTO `base_sys_log` VALUES (5444, '2021-07-16 13:40:04.536088', '2021-07-16 13:40:04.536088', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwqXZHEc775yCEYJywidrQIA\",\"CreateTime\":\"1626414003\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_3e42fe00-e5f8-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQHb8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQktBYmtsaVVkNDIxTUl2Tmh3Y1cAAgSoG-FgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5445, '2021-07-16 13:40:25.873551', '2021-07-16 13:40:25.873551', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwqXZHEc775yCEYJywidrQIA\",\"CreateTime\":\"1626414025\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"4bcf0280-e5f8-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQHw8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyU0JJX2tIaVVkNDIxTjN2Tmh3Y1cAAgS-G-FgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5446, '2021-07-16 13:55:03.426251', '2021-07-16 13:55:03.426251', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsDinFI81227ywXm7e3fi8g\",\"CreateTime\":\"1626414902\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_553ce150-e5fa-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQGO8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydFREVWtSaVVkNDIxT0t5TjF3YzcAAgQqH-FgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5447, '2021-07-16 13:55:25.236307', '2021-07-16 13:55:25.236307', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsDinFI81227ywXm7e3fi8g\",\"CreateTime\":\"1626414924\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"68f65190-e5fa-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQEV8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNXJuT2xwaVVkNDIxUGZ5Tk53YzQAAgRLH-FgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5448, '2021-07-16 13:55:55.405351', '2021-07-16 13:55:55.405351', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5449, '2021-07-16 13:55:55.533577', '2021-07-16 13:55:55.533577', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5450, '2021-07-16 13:56:05.741800', '2021-07-16 13:56:05.741800', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5451, '2021-07-16 13:56:05.966541', '2021-07-16 13:56:05.966541', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5452, '2021-07-16 13:57:31.715383', '2021-07-16 13:57:31.715383', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5453, '2021-07-16 13:57:31.955759', '2021-07-16 13:57:31.955759', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5454, '2021-07-16 13:57:34.921834', '2021-07-16 13:57:34.921834', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5455, '2021-07-16 13:57:35.082796', '2021-07-16 13:57:35.082796', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5456, '2021-07-16 13:58:06.022223', '2021-07-16 13:58:06.022223', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5457, '2021-07-16 13:58:06.216313', '2021-07-16 13:58:06.216313', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5458, '2021-07-16 13:59:10.413590', '2021-07-16 13:59:10.413590', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5459, '2021-07-16 13:59:10.939193', '2021-07-16 13:59:10.939193', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5460, '2021-07-16 13:59:14.566846', '2021-07-16 13:59:14.566846', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5461, '2021-07-16 13:59:14.740345', '2021-07-16 13:59:14.740345', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5462, '2021-07-16 13:59:19.868870', '2021-07-16 13:59:19.868870', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5463, '2021-07-16 13:59:20.030662', '2021-07-16 13:59:20.030662', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5464, '2021-07-16 13:59:49.764982', '2021-07-16 13:59:49.764982', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5465, '2021-07-16 13:59:50.768125', '2021-07-16 13:59:50.768125', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5466, '2021-07-16 14:01:00.026730', '2021-07-16 14:01:00.026730', NULL, '/app/app/info/add', '127.0.0.1', '本机地址', '{\"appId\":\"rKxcCwish@dev\",\"name\":\"这是个测试应用\",\"version\":\"0.0.10\",\"description\":\"测试应用\",\"main\":\"index.html\",\"preload\":\"preload.js\",\"logo\":\"logo.png\",\"readme\":\"README.md\",\"platform\":[\"win32\",\"darwin\"],\"keyWords\":[\"cool-ai\",\"cool\"],\"dev\":{\"main\":\"index.html\",\"preload\":\"preload.js\",\"logo\":\"logo.png\"},\"config\":\"{\\n    \\\"appId\\\": \\\"rKxcCwish\\\",\\n    \\\"name\\\": \\\"这是个测试应用\\\",\\n    \\\"version\\\": \\\"0.0.10\\\",\\n    \\\"description\\\": \\\"测试应用\\\",\\n    \\\"main\\\": \\\"index.html\\\",\\n    \\\"preload\\\": \\\"preload.js\\\",\\n    \\\"logo\\\": \\\"logo.png\\\",\\n    \\\"readme\\\": \\\"README.md\\\",\\n    \\\"platform\\\": [ \\\"win32\\\", \\\"darwin\\\" ],\\n    \\\"keyWords\\\": [ \\\"cool-ai\\\", \\\"cool\\\" ],\\n    \\\"dev\\\": { \\\"main\\\": \\\"index.html\\\", \\\"preload\\\": \\\"preload.js\\\", \\\"logo\\\": \\\"logo.png\\\" }\\n}\",\"path\":\"/Users/mac/Documents/src/temp/test/\"}');
INSERT INTO `base_sys_log` VALUES (5467, '2021-07-16 14:01:00.161111', '2021-07-16 14:01:00.161111', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5468, '2021-07-16 14:01:56.154716', '2021-07-16 14:01:56.154716', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5469, '2021-07-16 14:01:56.363309', '2021-07-16 14:01:56.363309', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5470, '2021-07-16 14:02:02.932519', '2021-07-16 14:02:02.932519', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwsDinFI81227ywXm7e3fi8g\",\"CreateTime\":\"1626415322\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":\"\"}');
INSERT INTO `base_sys_log` VALUES (5471, '2021-07-16 14:02:14.031973', '2021-07-16 14:02:14.031973', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5472, '2021-07-16 14:03:11.369677', '2021-07-16 14:03:11.369677', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5473, '2021-07-16 14:03:11.494980', '2021-07-16 14:03:11.494980', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5474, '2021-07-16 14:03:13.244552', '2021-07-16 14:03:13.244552', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5475, '2021-07-16 14:03:14.459890', '2021-07-16 14:03:14.459890', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5476, '2021-07-16 14:03:14.942130', '2021-07-16 14:03:14.942130', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5477, '2021-07-16 14:03:15.576543', '2021-07-16 14:03:15.576543', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5478, '2021-07-16 14:03:16.002599', '2021-07-16 14:03:16.002599', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5479, '2021-07-16 14:03:16.298701', '2021-07-16 14:03:16.298701', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5480, '2021-07-16 14:03:38.369630', '2021-07-16 14:03:38.369630', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5481, '2021-07-16 14:03:38.451527', '2021-07-16 14:03:38.451527', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5482, '2021-07-16 14:03:39.312948', '2021-07-16 14:03:39.312948', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5483, '2021-07-16 14:03:58.497546', '2021-07-16 14:03:58.497546', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwqF29oo22K1-8ckbXNtjiow\",\"CreateTime\":\"1626415438\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_7a99e4b0-e5fb-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQGQ8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQk9TWWtRaVVkNDIxT3FBTk53Y2EAAgQWIfFgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5484, '2021-07-16 14:04:08.595650', '2021-07-16 14:04:08.595650', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5485, '2021-07-16 14:04:08.771974', '2021-07-16 14:04:08.771974', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5486, '2021-07-16 14:04:11.746243', '2021-07-16 14:04:11.746243', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5487, '2021-07-16 14:04:24.642675', '2021-07-16 14:04:24.642675', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwqSSnlTYi9dXHBRb3hVALt8\",\"CreateTime\":\"1626415464\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"a50803d0-e5fb-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQHh7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySWptaWxzaVVkNDIxUHhBTk53Y1IAAgRdIfFgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5488, '2021-07-16 14:18:58.617048', '2021-07-16 14:18:58.617048', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwkb2Guhwnhbh7IiVAB6hRI8\",\"CreateTime\":\"1626416338\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_717e95e0-e5fd-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQEG8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWHI0ZWxxaVVkNDIxUENETnh3Y1UAAgRiJPFgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5489, '2021-07-16 14:20:40.139734', '2021-07-16 14:20:40.139734', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwkb2Guhwnhbh7IiVAB6hRI8\",\"CreateTime\":\"1626416439\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"717e95e0-e5fd-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQEG8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWHI0ZWxxaVVkNDIxUENETnh3Y1UAAgRiJPFgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5490, '2021-07-16 14:41:43.153443', '2021-07-16 14:41:43.153443', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwgTgdPKOEkOujzglb1QUOZM\",\"CreateTime\":\"1626417702\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":\"\"}');
INSERT INTO `base_sys_log` VALUES (5491, '2021-07-16 14:42:55.085747', '2021-07-16 14:42:55.085747', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwgf4UFpQQPMytS_IJUZHb-o\",\"CreateTime\":\"1626417774\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_fe815790-e600-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQGF8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTjlaNWxXaVVkNDIxUHJKTjF3Y1QAAgRXKvFgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5492, '2021-07-16 14:43:15.332528', '2021-07-16 14:43:15.332528', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwgf4UFpQQPMytS_IJUZHb-o\",\"CreateTime\":\"1626417795\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"13f5e550-e601-11eb-9e9d-bfe97af30603\",\"Ticket\":\"gQHV7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycThsdms2aVVkNDIxUF9KTmh3Y2kAAgR7KvFgAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5493, '2021-08-11 13:53:38.565077', '2021-08-11 13:53:38.565077', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5494, '2021-08-11 13:53:38.709149', '2021-08-11 13:53:38.709149', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5495, '2021-08-11 13:53:41.392955', '2021-08-11 13:53:41.392955', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5496, '2021-08-11 13:53:42.148314', '2021-08-11 13:53:42.148314', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5497, '2021-08-11 13:53:43.550381', '2021-08-11 13:53:43.550381', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5498, '2021-08-11 13:53:48.542247', '2021-08-11 13:53:48.542247', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5499, '2021-08-11 13:53:49.438514', '2021-08-11 13:53:49.438514', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5500, '2021-08-11 13:53:50.804760', '2021-08-11 13:53:50.804760', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5501, '2021-08-11 13:53:52.083924', '2021-08-11 13:53:52.083924', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5502, '2021-08-11 13:53:52.899172', '2021-08-11 13:53:52.899172', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5503, '2021-08-11 13:53:57.365561', '2021-08-11 13:53:57.365561', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5504, '2021-08-11 13:53:58.107765', '2021-08-11 13:53:58.107765', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5505, '2021-08-11 13:53:59.189229', '2021-08-11 13:53:59.189229', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5506, '2021-08-11 13:53:59.732706', '2021-08-11 13:53:59.732706', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5507, '2021-08-11 13:54:00.269022', '2021-08-11 13:54:00.269022', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5508, '2021-08-11 13:54:00.782110', '2021-08-11 13:54:00.782110', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5509, '2021-08-11 13:54:02.018114', '2021-08-11 13:54:02.018114', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5510, '2021-08-11 13:54:02.023148', '2021-08-11 13:54:02.023148', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5511, '2021-08-11 13:54:02.023318', '2021-08-11 13:54:02.023318', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5512, '2021-08-11 13:54:02.136694', '2021-08-11 13:54:02.136694', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5513, '2021-08-11 13:54:04.510514', '2021-08-11 13:54:04.510514', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5514, '2021-08-11 13:54:04.519941', '2021-08-11 13:54:04.519941', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5515, '2021-08-11 13:54:04.539252', '2021-08-11 13:54:04.539252', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5516, '2021-08-11 13:54:04.568795', '2021-08-11 13:54:04.568795', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5517, '2021-08-11 13:54:04.958426', '2021-08-11 13:54:04.958426', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5518, '2021-08-11 13:54:04.959510', '2021-08-11 13:54:04.959510', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5519, '2021-08-11 13:54:04.965190', '2021-08-11 13:54:04.965190', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5520, '2021-08-11 13:54:04.968147', '2021-08-11 13:54:04.968147', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5521, '2021-08-11 13:54:05.681830', '2021-08-11 13:54:05.681830', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5522, '2021-08-11 13:54:05.698416', '2021-08-11 13:54:05.698416', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5523, '2021-08-11 13:54:05.699528', '2021-08-11 13:54:05.699528', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5524, '2021-08-11 13:54:05.700147', '2021-08-11 13:54:05.700147', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5525, '2021-08-11 13:54:08.740355', '2021-08-11 13:54:08.740355', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5526, '2021-08-11 13:54:09.245525', '2021-08-11 13:54:09.245525', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5527, '2021-08-11 13:54:11.783262', '2021-08-11 13:54:11.783262', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5528, '2021-08-11 13:54:11.783493', '2021-08-11 13:54:11.783493', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":7,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5529, '2021-08-11 13:54:11.784280', '2021-08-11 13:54:11.784280', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5530, '2021-08-11 13:54:11.784281', '2021-08-11 13:54:11.784281', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":6,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5531, '2021-08-11 13:54:11.855366', '2021-08-11 13:54:11.855366', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5532, '2021-08-11 13:54:12.439859', '2021-08-11 13:54:12.439859', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":7,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5533, '2021-08-11 13:54:12.439872', '2021-08-11 13:54:12.439872', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":8,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5534, '2021-08-11 13:54:12.440489', '2021-08-11 13:54:12.440489', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":7,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5535, '2021-08-11 13:54:12.440676', '2021-08-11 13:54:12.440676', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":7,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5536, '2021-08-11 13:54:12.442713', '2021-08-11 13:54:12.442713', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":3,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5537, '2021-08-11 13:54:13.182951', '2021-08-11 13:54:13.182951', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":9,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5538, '2021-08-11 13:54:13.185058', '2021-08-11 13:54:13.185058', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":8,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5539, '2021-08-11 13:54:13.185320', '2021-08-11 13:54:13.185320', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":8,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5540, '2021-08-11 13:54:13.194841', '2021-08-11 13:54:13.194841', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":8,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5541, '2021-08-11 13:54:13.222707', '2021-08-11 13:54:13.222707', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":4,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5542, '2021-08-11 13:54:13.791379', '2021-08-11 13:54:13.791379', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":10,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5543, '2021-08-11 13:54:13.799509', '2021-08-11 13:54:13.799509', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":9,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5544, '2021-08-11 13:54:13.814334', '2021-08-11 13:54:13.814334', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":9,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5545, '2021-08-11 13:54:13.814334', '2021-08-11 13:54:13.814334', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":9,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5546, '2021-08-11 13:54:13.821670', '2021-08-11 13:54:13.821670', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":5,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5547, '2021-08-11 13:54:16.084998', '2021-08-11 13:54:16.084998', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5548, '2021-08-11 13:54:20.686740', '2021-08-11 13:54:20.686740', NULL, '/app/user/login/wxQrcode', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5549, '2021-08-11 13:54:48.217621', '2021-08-11 13:54:48.217621', NULL, '/app/user/login/wxQrcode', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5550, '2021-08-11 13:56:57.250801', '2021-08-11 13:56:57.250801', NULL, '/', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5551, '2021-08-11 13:56:57.407648', '2021-08-11 13:56:57.407648', NULL, '/css/welcome.css', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5552, '2021-08-11 13:56:57.486267', '2021-08-11 13:56:57.486267', NULL, '/js/welcome.js', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5553, '2021-08-11 13:56:57.754273', '2021-08-11 13:56:57.754273', NULL, '/favicon.ico', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5554, '2021-08-11 13:57:43.043366', '2021-08-11 13:57:43.043366', NULL, '/app/user/login/wxQrcode', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5555, '2021-08-11 13:57:49.017846', '2021-08-11 13:57:49.017846', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwiaxiPzPS4YpjZHK_FFgYp4\",\"CreateTime\":\"1628661468\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"0afee880-fa69-11eb-8abd-5fc532cd519d@tools\",\"Ticket\":\"gQGv7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTWxremxGaVVkNDIxN3ZKajF4Y0QAAgTXZhNhAwQIBwAA\"}');
INSERT INTO `base_sys_log` VALUES (5556, '2021-08-11 13:57:49.927466', '2021-08-11 13:57:49.927466', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5557, '2021-08-11 13:57:50.034949', '2021-08-11 13:57:50.034949', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5558, '2021-08-11 13:57:57.640484', '2021-08-11 13:57:57.640484', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5559, '2021-08-11 13:57:59.656543', '2021-08-11 13:57:59.656543', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5560, '2021-08-11 13:58:00.458529', '2021-08-11 13:58:00.458529', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5561, '2021-08-11 13:58:01.122297', '2021-08-11 13:58:01.122297', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5562, '2021-08-11 13:58:01.364139', '2021-08-11 13:58:01.364139', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5563, '2021-08-11 13:58:04.644824', '2021-08-11 13:58:04.644824', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5564, '2021-08-11 13:58:08.271927', '2021-08-11 13:58:08.271927', NULL, '/app/user/login/wxQrcode', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5565, '2021-08-11 13:58:55.946502', '2021-08-11 13:58:55.946502', NULL, '/app/user/login/wxQrcode', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5566, '2021-08-11 13:58:58.711253', '2021-08-11 13:58:58.711253', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwpNn6vdyH6RKkbHwsL3iJkY\",\"CreateTime\":\"1628661538\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_2ca84f30-fa69-11eb-a201-b76f9ffcbbea\",\"Ticket\":\"gQHa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyV1Jvd2xMaVVkNDIxNmpHak54Y2QAAgQPZxNhAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5567, '2021-08-11 13:59:01.914672', '2021-08-11 13:59:01.914672', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwiaxiPzPS4YpjZHK_FFgYp4\",\"CreateTime\":\"1628661541\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"366a7a70-fa69-11eb-8abd-5fc532cd519d@tools\",\"Ticket\":\"gQHW7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNDZfQ2tQaVVkNDIxNEVLanh4Y0gAAgQgZxNhAwQIBwAA\"}');
INSERT INTO `base_sys_log` VALUES (5568, '2021-08-11 13:59:03.335018', '2021-08-11 13:59:03.335018', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5569, '2021-08-11 13:59:05.559878', '2021-08-11 13:59:05.559878', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwpNn6vdyH6RKkbHwsL3iJkY\",\"CreateTime\":\"1628661545\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https://cool-js.com\",\"MenuId\":\"684282980\"}');
INSERT INTO `base_sys_log` VALUES (5570, '2021-08-11 13:59:10.927864', '2021-08-11 13:59:10.927864', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5571, '2021-08-11 13:59:11.655879', '2021-08-11 13:59:11.655879', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5572, '2021-08-11 13:59:12.291207', '2021-08-11 13:59:12.291207', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5573, '2021-08-11 13:59:12.947065', '2021-08-11 13:59:12.947065', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5574, '2021-08-11 13:59:13.914411', '2021-08-11 13:59:13.914411', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5575, '2021-08-11 13:59:14.518661', '2021-08-11 13:59:14.518661', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5576, '2021-08-11 13:59:15.560178', '2021-08-11 13:59:15.560178', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5577, '2021-08-11 13:59:15.966709', '2021-08-11 13:59:15.966709', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5578, '2021-08-11 13:59:16.572076', '2021-08-11 13:59:16.572076', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5579, '2021-08-11 13:59:17.130409', '2021-08-11 13:59:17.130409', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5580, '2021-08-11 13:59:27.050971', '2021-08-11 13:59:27.050971', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwoZ0nZMGO5XKO0d-lhGQG6E\",\"CreateTime\":\"1628661566\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":\"\"}');
INSERT INTO `base_sys_log` VALUES (5581, '2021-08-11 14:00:27.038052', '2021-08-11 14:00:27.038052', NULL, '/app/user/login/message-local', '127.0.0.1', '本机地址', '{\"ToUserName\":\"gh_cc8a05bec2a6\",\"FromUserName\":\"oUnhEwpNn6vdyH6RKkbHwsL3iJkY\",\"CreateTime\":\"1628661626\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"67bf9150-fa69-11eb-a201-b76f9ffcbbea\",\"Ticket\":\"gQFy7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybHhXbWtpaVVkNDIxN1NHajF4Y2cAAgRyZxNhAwSEAwAA\"}');
INSERT INTO `base_sys_log` VALUES (5582, '2021-08-11 14:00:49.797228', '2021-08-11 14:00:49.797228', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5583, '2021-08-11 14:00:50.446132', '2021-08-11 14:00:50.446132', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5584, '2021-08-11 14:00:51.111191', '2021-08-11 14:00:51.111191', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5585, '2021-08-11 14:00:52.693100', '2021-08-11 14:00:52.693100', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5586, '2021-08-11 14:01:04.360436', '2021-08-11 14:01:04.360436', NULL, '/app/app/info/add', '127.0.0.1', '本机地址', '{\"appId\":\"rKxcCwish@dev\",\"name\":\"这是个测试应用\",\"version\":\"0.0.10\",\"description\":\"测试应用\",\"main\":\"index.html\",\"preload\":\"preload.js\",\"logo\":\"logo.png\",\"readme\":\"README.md\",\"platform\":[\"win32\",\"darwin\"],\"keyWords\":[\"cool-ai\",\"cool\"],\"dev\":{\"main\":\"index.html\",\"preload\":\"preload.js\",\"logo\":\"logo.png\"},\"config\":\"{\\n    \\\"appId\\\": \\\"rKxcCwish\\\",\\n    \\\"name\\\": \\\"这是个测试应用\\\",\\n    \\\"version\\\": \\\"0.0.10\\\",\\n    \\\"description\\\": \\\"测试应用\\\",\\n    \\\"main\\\": \\\"index.html\\\",\\n    \\\"preload\\\": \\\"preload.js\\\",\\n    \\\"logo\\\": \\\"logo.png\\\",\\n    \\\"readme\\\": \\\"README.md\\\",\\n    \\\"platform\\\": [ \\\"win32\\\", \\\"darwin\\\" ],\\n    \\\"keyWords\\\": [ \\\"cool-ai\\\", \\\"cool\\\" ],\\n    \\\"dev\\\": { \\\"main\\\": \\\"index.html\\\", \\\"preload\\\": \\\"preload.js\\\", \\\"logo\\\": \\\"logo.png\\\" }\\n}\",\"path\":\"/Users/mac/Documents/src/temp/test/\"}');
INSERT INTO `base_sys_log` VALUES (5587, '2021-08-11 14:01:04.502205', '2021-08-11 14:01:04.502205', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5588, '2021-08-11 14:01:05.233762', '2021-08-11 14:01:05.233762', NULL, '/app/app/info/add', '127.0.0.1', '本机地址', '{\"appId\":\"rKxcCwish@dev\",\"name\":\"这是个测试应用\",\"version\":\"0.0.10\",\"description\":\"测试应用\",\"main\":\"index.html\",\"preload\":\"preload.js\",\"logo\":\"logo.png\",\"readme\":\"README.md\",\"platform\":[\"win32\",\"darwin\"],\"keyWords\":[\"cool-ai\",\"cool\"],\"dev\":{\"main\":\"index.html\",\"preload\":\"preload.js\",\"logo\":\"logo.png\"},\"config\":\"{\\n    \\\"appId\\\": \\\"rKxcCwish\\\",\\n    \\\"name\\\": \\\"这是个测试应用\\\",\\n    \\\"version\\\": \\\"0.0.10\\\",\\n    \\\"description\\\": \\\"测试应用\\\",\\n    \\\"main\\\": \\\"index.html\\\",\\n    \\\"preload\\\": \\\"preload.js\\\",\\n    \\\"logo\\\": \\\"logo.png\\\",\\n    \\\"readme\\\": \\\"README.md\\\",\\n    \\\"platform\\\": [ \\\"win32\\\", \\\"darwin\\\" ],\\n    \\\"keyWords\\\": [ \\\"cool-ai\\\", \\\"cool\\\" ],\\n    \\\"dev\\\": { \\\"main\\\": \\\"index.html\\\", \\\"preload\\\": \\\"preload.js\\\", \\\"logo\\\": \\\"logo.png\\\" }\\n}\",\"path\":\"/Users/mac/Documents/src/temp/test/\"}');
INSERT INTO `base_sys_log` VALUES (5589, '2021-08-11 14:01:05.437675', '2021-08-11 14:01:05.437675', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5590, '2021-08-11 14:01:07.626842', '2021-08-11 14:01:07.626842', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5591, '2021-08-11 14:01:23.068210', '2021-08-11 14:01:23.068210', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5592, '2021-08-11 14:01:25.860466', '2021-08-11 14:01:25.860466', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5593, '2021-08-11 14:01:29.929689', '2021-08-11 14:01:29.929689', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5594, '2021-08-11 14:01:31.440534', '2021-08-11 14:01:31.440534', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5595, '2021-08-11 14:01:31.933867', '2021-08-11 14:01:31.933867', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5596, '2021-08-11 14:01:33.120410', '2021-08-11 14:01:33.120410', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5597, '2021-08-11 14:01:33.502390', '2021-08-11 14:01:33.502390', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5598, '2021-08-11 14:01:34.046782', '2021-08-11 14:01:34.046782', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5599, '2021-08-11 14:01:34.817086', '2021-08-11 14:01:34.817086', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5600, '2021-08-11 14:03:47.816052', '2021-08-11 14:03:47.816052', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5601, '2021-08-11 14:03:47.961739', '2021-08-11 14:03:47.961739', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5602, '2021-08-11 14:03:53.118403', '2021-08-11 14:03:53.118403', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5603, '2021-08-11 14:03:53.725994', '2021-08-11 14:03:53.725994', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5604, '2021-08-11 14:04:28.444066', '2021-08-11 14:04:28.444066', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5605, '2021-08-11 14:04:28.573093', '2021-08-11 14:04:28.573093', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5606, '2021-08-11 14:04:36.347838', '2021-08-11 14:04:36.347838', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5607, '2021-08-11 14:04:36.460246', '2021-08-11 14:04:36.460246', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5608, '2021-08-11 14:04:37.927520', '2021-08-11 14:04:37.927520', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5609, '2021-08-11 14:04:38.544975', '2021-08-11 14:04:38.544975', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5610, '2021-08-11 14:05:53.026467', '2021-08-11 14:05:53.026467', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5611, '2021-08-11 14:05:53.154815', '2021-08-11 14:05:53.154815', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5612, '2021-08-11 14:05:54.781705', '2021-08-11 14:05:54.781705', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5613, '2021-08-11 14:05:55.485895', '2021-08-11 14:05:55.485895', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5614, '2021-08-11 14:13:00.502533', '2021-08-11 14:13:00.502533', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5615, '2021-08-11 14:13:00.608855', '2021-08-11 14:13:00.608855', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5616, '2021-08-11 14:13:01.907394', '2021-08-11 14:13:01.907394', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5617, '2021-08-11 14:14:35.747435', '2021-08-11 14:14:35.747435', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5618, '2021-08-11 14:14:35.883636', '2021-08-11 14:14:35.883636', NULL, '/uploads/20210709/f77076a0-e08f-11eb-856f-6f05a2e4417a.png', '127.0.0.1', '本机地址', NULL);
INSERT INTO `base_sys_log` VALUES (5619, '2021-08-11 14:14:39.655220', '2021-08-11 14:14:39.655220', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5620, '2021-08-11 14:15:25.134995', '2021-08-11 14:15:25.134995', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5621, '2021-08-11 14:15:25.673590', '2021-08-11 14:15:25.673590', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5622, '2021-08-11 14:15:26.142612', '2021-08-11 14:15:26.142612', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":1,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5623, '2021-08-11 14:15:27.405434', '2021-08-11 14:15:27.405434', NULL, '/app/platform/message/page', '127.0.0.1', '本机地址', '{\"page\":2,\"size\":20}');
INSERT INTO `base_sys_log` VALUES (5624, '2021-08-11 14:15:32.488538', '2021-08-11 14:15:32.488538', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
INSERT INTO `base_sys_log` VALUES (5625, '2021-08-11 14:15:33.484000', '2021-08-11 14:15:33.484000', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[0,1,2,3],\"isDev\":1}');
INSERT INTO `base_sys_log` VALUES (5626, '2021-08-11 14:15:34.151799', '2021-08-11 14:15:34.151799', NULL, '/app/app/info/list', '127.0.0.1', '本机地址', '{\"status\":[2],\"isDev\":0}');
COMMIT;

-- ----------------------------
-- Table structure for base_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_menu`;
CREATE TABLE `base_sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父菜单ID',
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `router` varchar(255) DEFAULT NULL COMMENT '菜单地址',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0：目录 1：菜单 2：按钮',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `orderNum` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `viewPath` varchar(255) DEFAULT NULL COMMENT '视图地址',
  `keepAlive` tinyint(4) NOT NULL DEFAULT '1' COMMENT '路由缓存',
  `isShow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '父菜单名称',
  PRIMARY KEY (`id`),
  KEY `IDX_05e3d6a56604771a6da47ebf8e` (`createTime`),
  KEY `IDX_d5203f18daaf7c3fe0ab34497f` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_menu` VALUES (1, '2019-09-11 11:14:44.000000', '2019-11-18 15:56:36.000000', NULL, '工作台', '/', NULL, 0, 'icon-workbench', 1, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (2, '2019-09-11 11:14:47.000000', '2021-02-27 17:16:05.000000', NULL, '系统管理', '/sys', NULL, 0, 'icon-system', 2, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (8, '1900-01-20 23:19:57.000000', '2021-03-08 22:59:12.000000', 27, '菜单列表', '/sys/menu', NULL, 1, 'icon-menu', 2, 'cool/modules/base/views/menu.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (10, '1900-01-20 00:19:27.325000', '1900-01-20 00:19:27.325000', 8, '新增', NULL, 'base:sys:menu:add', 2, NULL, 1, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (11, '1900-01-20 00:19:51.101000', '1900-01-20 00:19:51.101000', 8, '删除', NULL, 'base:sys:menu:delete', 2, NULL, 2, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (12, '1900-01-20 00:20:05.150000', '1900-01-20 00:20:05.150000', 8, '修改', NULL, 'base:sys:menu:update', 2, NULL, 3, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (13, '1900-01-20 00:20:19.341000', '1900-01-20 00:20:19.341000', 8, '查询', NULL, 'base:sys:menu:page,base:sys:menu:list,base:sys:menu:info', 2, NULL, 4, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (22, '2019-09-12 00:34:01.000000', '2021-03-08 22:59:23.000000', 27, '角色列表', '/sys/role', NULL, 1, 'icon-common', 3, 'cool/modules/base/views/role.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (23, '1900-01-20 00:34:23.459000', '1900-01-20 00:34:23.459000', 22, '新增', NULL, 'base:sys:role:add', 2, NULL, 1, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (24, '1900-01-20 00:34:40.523000', '1900-01-20 00:34:40.523000', 22, '删除', NULL, 'base:sys:role:delete', 2, NULL, 2, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (25, '1900-01-20 00:34:53.306000', '1900-01-20 00:34:53.306000', 22, '修改', NULL, 'base:sys:role:update', 2, NULL, 3, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (26, '1900-01-20 00:35:05.024000', '1900-01-20 00:35:05.024000', 22, '查询', NULL, 'base:sys:role:page,base:sys:role:list,base:sys:role:info', 2, NULL, 4, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (27, '2019-09-12 15:52:44.000000', '2019-09-15 22:11:56.000000', 2, '权限管理', NULL, NULL, 0, 'icon-auth', 1, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (29, '2019-09-12 17:35:51.000000', '2021-03-08 23:01:39.000000', 105, '请求日志', '/sys/log', NULL, 1, 'icon-log', 1, 'cool/modules/base/views/log.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (30, '2019-09-12 17:37:03.000000', '2021-03-03 10:16:26.000000', 29, '权限', NULL, 'base:sys:log:page,base:sys:log:clear,base:sys:log:getKeep,base:sys:log:setKeep', 2, NULL, 1, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (43, '2019-11-07 14:22:34.000000', '2021-03-08 23:02:51.000000', 45, 'crud 示例', '/crud', NULL, 1, 'icon-favor', 1, 'cool/modules/demo/views/crud.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (45, '2019-11-07 22:36:57.000000', '2019-11-11 15:21:10.000000', 1, '组件库', '/ui-lib', NULL, 0, 'icon-common', 2, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (47, '2019-11-08 09:35:08.000000', '2021-02-27 17:16:35.000000', NULL, '框架教程', '/tutorial', NULL, 0, 'icon-task', 4, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (48, '2019-11-08 09:35:53.000000', '2021-03-03 11:03:21.000000', 47, '文档', '/tutorial/doc', NULL, 1, 'icon-log', 0, 'https://admin.cool-js.com', 1, 1);
INSERT INTO `base_sys_menu` VALUES (49, '2019-11-09 22:11:13.000000', '2021-03-09 09:50:46.000000', 45, 'quill 富文本编辑器', '/editor-quill', NULL, 1, 'icon-favor', 2, 'cool/modules/demo/views/editor-quill.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (59, '2019-11-18 16:50:27.000000', '2019-11-18 16:50:27.000000', 97, '部门列表', NULL, 'base:sys:department:list', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (60, '2019-11-18 16:50:45.000000', '2019-11-18 16:50:45.000000', 97, '新增部门', NULL, 'base:sys:department:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (61, '2019-11-18 16:50:59.000000', '2019-11-18 16:50:59.000000', 97, '更新部门', NULL, 'base:sys:department:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (62, '2019-11-18 16:51:13.000000', '2019-11-18 16:51:13.000000', 97, '删除部门', NULL, 'base:sys:department:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (63, '2019-11-18 17:49:35.000000', '2019-11-18 17:49:35.000000', 97, '部门排序', NULL, 'base:sys:department:order', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (65, '2019-11-18 23:59:21.000000', '2019-11-18 23:59:21.000000', 97, '用户转移', NULL, 'base:sys:user:move', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (78, '2019-12-10 13:27:56.000000', '2021-02-27 17:08:53.000000', 2, '参数配置', NULL, NULL, 0, 'icon-common', 4, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (79, '1900-01-20 13:29:33.000000', '2021-03-08 23:01:48.000000', 78, '参数列表', '/sys/param', NULL, 1, 'icon-menu', 0, 'cool/modules/base/views/param.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (80, '1900-01-20 13:29:50.146000', '1900-01-20 13:29:50.146000', 79, '新增', NULL, 'base:sys:param:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (81, '1900-01-20 13:30:10.030000', '1900-01-20 13:30:10.030000', 79, '修改', NULL, 'base:sys:param:info,base:sys:param:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (82, '1900-01-20 13:30:25.791000', '1900-01-20 13:30:25.791000', 79, '删除', NULL, 'base:sys:param:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (83, '1900-01-20 13:30:40.469000', '1900-01-20 13:30:40.469000', 79, '查看', NULL, 'base:sys:param:page,base:sys:param:list,base:sys:param:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (84, '2020-07-25 16:21:30.000000', '2020-07-25 16:21:30.000000', NULL, '通用', NULL, NULL, 0, 'icon-radioboxfill', 99, NULL, 1, 0);
INSERT INTO `base_sys_menu` VALUES (85, '2020-07-25 16:22:14.000000', '2021-03-03 10:36:00.000000', 84, '图片上传', NULL, 'space:info:page,space:info:list,space:info:info,space:info:add,space:info:delete,space:info:update,space:type:page,space:type:list,space:type:info,space:type:add,space:type:delete,space:type:update', 2, NULL, 1, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (86, '2020-08-12 09:56:27.000000', '2021-03-08 23:03:03.000000', 45, '文件上传', '/upload', NULL, 1, 'icon-favor', 3, 'cool/modules/demo/views/upload.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (90, '1900-01-20 10:26:58.615000', '1900-01-20 10:26:58.615000', 84, '客服聊天', NULL, 'base:app:im:message:read,base:app:im:message:page,base:app:im:session:page,base:app:im:session:list,base:app:im:session:unreadCount,base:app:im:session:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (96, '2021-01-12 14:12:20.000000', '2021-03-08 23:02:40.000000', 1, '组件预览', '/demo', NULL, 1, 'icon-favor', 0, 'cool/modules/demo/views/demo.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (97, '1900-01-20 14:14:02.000000', '2021-03-09 11:03:09.000000', 27, '用户列表', '/sys/user', NULL, 1, 'icon-user', 0, 'cool/modules/base/views/user.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (98, '1900-01-20 14:14:13.528000', '1900-01-20 14:14:13.528000', 97, '新增', NULL, 'base:sys:user:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (99, '1900-01-20 14:14:22.823000', '1900-01-20 14:14:22.823000', 97, '删除', NULL, 'base:sys:user:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (100, '1900-01-20 14:14:33.973000', '1900-01-20 14:14:33.973000', 97, '修改', NULL, 'base:sys:user:delete,base:sys:user:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (101, '2021-01-12 14:14:51.000000', '2021-01-12 14:14:51.000000', 97, '查询', NULL, 'base:sys:user:page,base:sys:user:list,base:sys:user:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (105, '2021-01-21 10:42:55.000000', '2021-01-21 10:42:55.000000', 2, '监控管理', NULL, NULL, 0, 'icon-rank', 6, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (109, '2021-02-27 14:13:56.000000', '2021-02-27 17:09:19.000000', NULL, '插件管理', NULL, NULL, 0, 'icon-menu', 3, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (110, '2021-02-27 14:14:13.000000', '2021-03-08 23:01:30.000000', 109, '插件列表', '/plugin', NULL, 1, 'icon-menu', 0, 'cool/modules/base/views/plugin.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (111, '2021-02-27 14:24:41.877000', '2021-02-27 14:24:41.877000', 110, '编辑', NULL, 'base:plugin:info:info,base:plugin:info:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (112, '2021-02-27 14:24:52.159000', '2021-02-27 14:24:52.159000', 110, '列表', NULL, 'base:plugin:info:list', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (113, '2021-02-27 14:25:02.066000', '2021-02-27 14:25:02.066000', 110, '删除', NULL, 'base:plugin:info:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (114, '2021-02-27 16:36:59.322000', '2021-02-27 16:36:59.322000', 110, '保存配置', NULL, 'base:plugin:info:config', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (115, '2021-02-27 16:38:21.000000', '2021-02-27 18:18:22.000000', 110, '获取配置', NULL, 'base:plugin:info:getConfig', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (116, '2021-02-27 17:57:42.000000', '2021-02-27 18:19:35.000000', 110, '开启、关闭', NULL, 'base:plugin:info:enable', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (117, '2021-03-05 10:58:25.000000', '2021-03-05 10:58:25.000000', NULL, '任务管理', NULL, NULL, 0, 'icon-activity', 5, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (118, '2021-03-05 10:59:42.000000', '2021-03-05 10:59:42.000000', 117, '任务列表', '/task', NULL, 1, 'icon-menu', 0, 'cool/modules/task/views/task.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (119, '2021-03-05 11:00:00.000000', '2021-03-05 11:00:00.000000', 118, '权限', NULL, 'task:info:page,task:info:list,task:info:info,task:info:add,task:info:delete,task:info:update,task:info:stop,task:info:start,task:info:once,task:info:log', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (120, '2021-07-14 16:39:37.572936', '2021-07-14 16:39:37.572936', NULL, '用户管理', NULL, NULL, 0, 'icon-user', 7, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (121, '2021-07-14 16:40:02.366243', '2021-07-14 16:40:02.366243', NULL, '应用管理', NULL, NULL, 0, 'icon-workbench', 6, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (122, '2021-07-14 16:40:23.419875', '2021-07-14 16:40:23.419875', NULL, '版本管理', NULL, NULL, 0, 'icon-new', 8, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (123, '2021-07-14 16:41:32.351951', '2021-07-14 16:41:32.351951', 121, '审核应用', '/app/audit', NULL, 1, 'icon-menu', 0, 'cool/modules/app/views/audit.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (124, '2021-07-14 16:42:12.028643', '2021-07-14 16:42:12.028643', 121, '发布应用', '/app/release', NULL, 1, 'icon-menu', 0, 'cool/modules/app/views/release.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (125, '2021-07-14 16:42:51.449194', '2021-07-14 16:42:51.449194', 121, '轮播图', '/app/banner', NULL, 1, 'icon-menu', 0, 'cool/modules/app/views/banner.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (126, '2021-07-14 16:43:17.008669', '2021-07-14 16:43:17.008669', 123, '新增', NULL, 'app:info:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (127, '2021-07-14 16:43:32.900111', '2021-07-14 16:43:32.900111', 123, '编辑', NULL, 'app:info:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (128, '2021-07-14 16:43:55.448151', '2021-07-14 16:43:55.448151', 123, '删除', NULL, 'app:info:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (129, '2021-07-14 16:44:20.637992', '2021-07-14 16:44:20.637992', 123, '查询', NULL, 'app:info:page,app:info:list,app:info:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (130, '2021-07-14 16:44:38.515382', '2021-07-14 16:44:38.515382', 123, '审核', NULL, 'app:info:audit', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (131, '2021-07-14 16:44:54.775779', '2021-07-14 16:44:54.775779', 124, '新增', NULL, 'app:info:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (132, '2021-07-14 16:45:14.523795', '2021-07-14 16:45:14.523795', 124, '修改', NULL, 'app:info:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (133, '2021-07-14 16:45:28.238547', '2021-07-14 16:45:28.238547', 124, '删除', NULL, 'app:info:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (134, '2021-07-14 16:45:41.982567', '2021-07-14 16:45:41.982567', 124, '查询', NULL, 'app:info:page,app:info:list,app:info:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (135, '2021-07-14 16:45:54.416138', '2021-07-14 16:45:54.416138', 124, '审核', NULL, 'app:info:audit', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (136, '2021-07-14 16:46:41.022062', '2021-07-14 16:46:41.022062', 120, '用户列表', '/user/info', NULL, 1, 'icon-user', 0, 'cool/modules/user/views/user.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (137, '2021-07-14 16:46:58.431387', '2021-07-14 16:46:58.431387', 136, '新增', NULL, 'user:info:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (138, '2021-07-14 16:47:12.653243', '2021-07-14 16:47:12.653243', 136, '修改', NULL, 'user:info:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (139, '2021-07-14 16:47:24.665715', '2021-07-14 16:47:24.665715', 136, '删除', NULL, 'user:info:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (140, '2021-07-14 16:47:40.530809', '2021-07-14 16:47:40.530809', 136, '查询', NULL, 'user:info:list,user:info:page,user:info:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (141, '2021-07-14 16:48:25.000000', '2021-07-14 16:48:25.000000', 122, '版本列表', '/platform/version', NULL, 1, NULL, 0, 'cool/modules/platform/views/version.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (142, '2021-07-14 16:51:10.075018', '2021-07-14 16:51:10.075018', 141, '新增', NULL, 'platform:version:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (143, '2021-07-14 16:51:24.792327', '2021-07-14 16:51:24.792327', 141, '修改', NULL, 'platform:version:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (144, '2021-07-14 16:51:38.187222', '2021-07-14 16:51:38.187222', 141, '删除', NULL, 'platform:version:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (145, '2021-07-14 16:51:50.506462', '2021-07-14 16:51:50.506462', 141, '查询', NULL, 'platform:version:page,platform:version:list,platform:version:info', 2, NULL, 0, NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for base_sys_param
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_param`;
CREATE TABLE `base_sys_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `keyName` varchar(255) NOT NULL COMMENT '键位',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `data` text NOT NULL COMMENT '数据',
  `dataType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据类型 0:字符串 1：数组 2：键值对',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `IDX_cf19b5e52d8c71caa9c4534454` (`keyName`),
  KEY `IDX_7bcb57371b481d8e2d66ddeaea` (`createTime`),
  KEY `IDX_479122e3bf464112f7a7253dac` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_param
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_param` VALUES (1, '2021-02-26 13:53:05.000000', '2021-03-03 17:50:04.000000', 'text', '富文本参数', '<p><strong class=\"ql-size-huge\">111xxxxx2222<span class=\"ql-cursor\">﻿﻿</span></strong></p>', 0, NULL);
INSERT INTO `base_sys_param` VALUES (2, '2021-02-26 13:53:18.000000', '2021-02-26 13:53:18.000000', 'json', 'JSON参数', '{\n    code: 111\n}', 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for base_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_role`;
CREATE TABLE `base_sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` varchar(255) NOT NULL COMMENT '用户ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `label` varchar(50) DEFAULT NULL COMMENT '角色标签',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `relevance` int(11) NOT NULL DEFAULT '1' COMMENT '数据权限是否关联上下级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_469d49a5998170e9550cf113da` (`name`),
  UNIQUE KEY `IDX_f3f24fbbccf00192b076e549a7` (`label`),
  KEY `IDX_6f01184441dec49207b41bfd92` (`createTime`),
  KEY `IDX_d64ca209f3fc52128d9b20e97b` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_role
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_role` VALUES (1, '2021-02-24 21:18:39.682358', '2021-02-24 21:18:39.682358', '1', '超管', 'admin', '最高权限的角色', 1);
INSERT INTO `base_sys_role` VALUES (10, '2021-02-26 14:15:38.000000', '2021-02-26 14:15:38.000000', '1', '系统管理员', 'admin-sys', NULL, 1);
INSERT INTO `base_sys_role` VALUES (11, '2021-02-26 14:16:49.044744', '2021-02-26 14:16:49.044744', '1', '游客', 'visitor', NULL, 0);
INSERT INTO `base_sys_role` VALUES (12, '2021-02-26 14:26:51.000000', '2021-02-26 14:32:35.000000', '1', '开发', 'dev', NULL, 0);
INSERT INTO `base_sys_role` VALUES (13, '2021-02-26 14:27:58.000000', '2021-02-26 14:33:49.000000', '1', '测试', 'test', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for base_sys_role_department
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_role_department`;
CREATE TABLE `base_sys_role_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `roleId` bigint(20) NOT NULL COMMENT '角色ID',
  `departmentId` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`),
  KEY `IDX_e881a66f7cce83ba431cf20194` (`createTime`),
  KEY `IDX_cbf48031efee5d0de262965e53` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_role_department
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_role_department` VALUES (1, '2021-02-26 12:00:23.787939', '2021-02-26 12:00:23.787939', 8, 4);
INSERT INTO `base_sys_role_department` VALUES (2, '2021-02-26 12:01:11.525205', '2021-02-26 12:01:11.525205', 9, 1);
INSERT INTO `base_sys_role_department` VALUES (3, '2021-02-26 12:01:11.624266', '2021-02-26 12:01:11.624266', 9, 4);
INSERT INTO `base_sys_role_department` VALUES (4, '2021-02-26 12:01:11.721894', '2021-02-26 12:01:11.721894', 9, 5);
INSERT INTO `base_sys_role_department` VALUES (5, '2021-02-26 12:01:11.823342', '2021-02-26 12:01:11.823342', 9, 8);
INSERT INTO `base_sys_role_department` VALUES (6, '2021-02-26 12:01:11.922873', '2021-02-26 12:01:11.922873', 9, 9);
INSERT INTO `base_sys_role_department` VALUES (23, '2021-02-26 14:32:40.354669', '2021-02-26 14:32:40.354669', 12, 11);
INSERT INTO `base_sys_role_department` VALUES (25, '2021-02-26 14:32:59.726608', '2021-02-26 14:32:59.726608', 10, 1);
INSERT INTO `base_sys_role_department` VALUES (27, '2021-02-26 14:33:54.579947', '2021-02-26 14:33:54.579947', 13, 12);
COMMIT;

-- ----------------------------
-- Table structure for base_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_role_menu`;
CREATE TABLE `base_sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `roleId` bigint(20) NOT NULL COMMENT '角色ID',
  `menuId` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `IDX_3641f81d4201c524a57ce2aa54` (`createTime`),
  KEY `IDX_f860298298b26e7a697be36e5b` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_role_menu` VALUES (1, '2021-02-26 12:00:18.240154', '2021-02-26 12:00:18.240154', 8, 1);
INSERT INTO `base_sys_role_menu` VALUES (2, '2021-02-26 12:00:18.342131', '2021-02-26 12:00:18.342131', 8, 96);
INSERT INTO `base_sys_role_menu` VALUES (3, '2021-02-26 12:00:18.444143', '2021-02-26 12:00:18.444143', 8, 45);
INSERT INTO `base_sys_role_menu` VALUES (4, '2021-02-26 12:00:18.545490', '2021-02-26 12:00:18.545490', 8, 43);
INSERT INTO `base_sys_role_menu` VALUES (5, '2021-02-26 12:00:18.649626', '2021-02-26 12:00:18.649626', 8, 49);
INSERT INTO `base_sys_role_menu` VALUES (6, '2021-02-26 12:00:18.752369', '2021-02-26 12:00:18.752369', 8, 86);
INSERT INTO `base_sys_role_menu` VALUES (7, '2021-02-26 12:00:18.856023', '2021-02-26 12:00:18.856023', 8, 2);
INSERT INTO `base_sys_role_menu` VALUES (8, '2021-02-26 12:00:18.956131', '2021-02-26 12:00:18.956131', 8, 27);
INSERT INTO `base_sys_role_menu` VALUES (9, '2021-02-26 12:00:19.071490', '2021-02-26 12:00:19.071490', 8, 97);
INSERT INTO `base_sys_role_menu` VALUES (10, '2021-02-26 12:00:19.171745', '2021-02-26 12:00:19.171745', 8, 59);
INSERT INTO `base_sys_role_menu` VALUES (11, '2021-02-26 12:00:19.274495', '2021-02-26 12:00:19.274495', 8, 60);
INSERT INTO `base_sys_role_menu` VALUES (12, '2021-02-26 12:00:19.374610', '2021-02-26 12:00:19.374610', 8, 61);
INSERT INTO `base_sys_role_menu` VALUES (13, '2021-02-26 12:00:19.474750', '2021-02-26 12:00:19.474750', 8, 62);
INSERT INTO `base_sys_role_menu` VALUES (14, '2021-02-26 12:00:19.573369', '2021-02-26 12:00:19.573369', 8, 63);
INSERT INTO `base_sys_role_menu` VALUES (15, '2021-02-26 12:00:19.674242', '2021-02-26 12:00:19.674242', 8, 65);
INSERT INTO `base_sys_role_menu` VALUES (16, '2021-02-26 12:00:19.772886', '2021-02-26 12:00:19.772886', 8, 98);
INSERT INTO `base_sys_role_menu` VALUES (17, '2021-02-26 12:00:19.874134', '2021-02-26 12:00:19.874134', 8, 99);
INSERT INTO `base_sys_role_menu` VALUES (18, '2021-02-26 12:00:19.972728', '2021-02-26 12:00:19.972728', 8, 100);
INSERT INTO `base_sys_role_menu` VALUES (19, '2021-02-26 12:00:20.085877', '2021-02-26 12:00:20.085877', 8, 101);
INSERT INTO `base_sys_role_menu` VALUES (20, '2021-02-26 12:00:20.192887', '2021-02-26 12:00:20.192887', 8, 8);
INSERT INTO `base_sys_role_menu` VALUES (21, '2021-02-26 12:00:20.293747', '2021-02-26 12:00:20.293747', 8, 10);
INSERT INTO `base_sys_role_menu` VALUES (22, '2021-02-26 12:00:20.393491', '2021-02-26 12:00:20.393491', 8, 11);
INSERT INTO `base_sys_role_menu` VALUES (23, '2021-02-26 12:00:20.495110', '2021-02-26 12:00:20.495110', 8, 12);
INSERT INTO `base_sys_role_menu` VALUES (24, '2021-02-26 12:00:20.594083', '2021-02-26 12:00:20.594083', 8, 13);
INSERT INTO `base_sys_role_menu` VALUES (25, '2021-02-26 12:00:20.695727', '2021-02-26 12:00:20.695727', 8, 22);
INSERT INTO `base_sys_role_menu` VALUES (26, '2021-02-26 12:00:20.794729', '2021-02-26 12:00:20.794729', 8, 23);
INSERT INTO `base_sys_role_menu` VALUES (27, '2021-02-26 12:00:20.895601', '2021-02-26 12:00:20.895601', 8, 24);
INSERT INTO `base_sys_role_menu` VALUES (28, '2021-02-26 12:00:20.994972', '2021-02-26 12:00:20.994972', 8, 25);
INSERT INTO `base_sys_role_menu` VALUES (29, '2021-02-26 12:00:21.110384', '2021-02-26 12:00:21.110384', 8, 26);
INSERT INTO `base_sys_role_menu` VALUES (30, '2021-02-26 12:00:21.210970', '2021-02-26 12:00:21.210970', 8, 69);
INSERT INTO `base_sys_role_menu` VALUES (31, '2021-02-26 12:00:21.311852', '2021-02-26 12:00:21.311852', 8, 70);
INSERT INTO `base_sys_role_menu` VALUES (32, '2021-02-26 12:00:21.411591', '2021-02-26 12:00:21.411591', 8, 71);
INSERT INTO `base_sys_role_menu` VALUES (33, '2021-02-26 12:00:21.513584', '2021-02-26 12:00:21.513584', 8, 72);
INSERT INTO `base_sys_role_menu` VALUES (34, '2021-02-26 12:00:21.612212', '2021-02-26 12:00:21.612212', 8, 73);
INSERT INTO `base_sys_role_menu` VALUES (35, '2021-02-26 12:00:21.712720', '2021-02-26 12:00:21.712720', 8, 74);
INSERT INTO `base_sys_role_menu` VALUES (36, '2021-02-26 12:00:21.812839', '2021-02-26 12:00:21.812839', 8, 75);
INSERT INTO `base_sys_role_menu` VALUES (37, '2021-02-26 12:00:21.913321', '2021-02-26 12:00:21.913321', 8, 76);
INSERT INTO `base_sys_role_menu` VALUES (38, '2021-02-26 12:00:22.013970', '2021-02-26 12:00:22.013970', 8, 77);
INSERT INTO `base_sys_role_menu` VALUES (39, '2021-02-26 12:00:22.144879', '2021-02-26 12:00:22.144879', 8, 78);
INSERT INTO `base_sys_role_menu` VALUES (40, '2021-02-26 12:00:22.246707', '2021-02-26 12:00:22.246707', 8, 79);
INSERT INTO `base_sys_role_menu` VALUES (41, '2021-02-26 12:00:22.347579', '2021-02-26 12:00:22.347579', 8, 80);
INSERT INTO `base_sys_role_menu` VALUES (42, '2021-02-26 12:00:22.446947', '2021-02-26 12:00:22.446947', 8, 81);
INSERT INTO `base_sys_role_menu` VALUES (43, '2021-02-26 12:00:22.547082', '2021-02-26 12:00:22.547082', 8, 82);
INSERT INTO `base_sys_role_menu` VALUES (44, '2021-02-26 12:00:22.647197', '2021-02-26 12:00:22.647197', 8, 83);
INSERT INTO `base_sys_role_menu` VALUES (45, '2021-02-26 12:00:22.748089', '2021-02-26 12:00:22.748089', 8, 105);
INSERT INTO `base_sys_role_menu` VALUES (46, '2021-02-26 12:00:22.847814', '2021-02-26 12:00:22.847814', 8, 102);
INSERT INTO `base_sys_role_menu` VALUES (47, '2021-02-26 12:00:22.949071', '2021-02-26 12:00:22.949071', 8, 103);
INSERT INTO `base_sys_role_menu` VALUES (48, '2021-02-26 12:00:23.047353', '2021-02-26 12:00:23.047353', 8, 29);
INSERT INTO `base_sys_role_menu` VALUES (49, '2021-02-26 12:00:23.147826', '2021-02-26 12:00:23.147826', 8, 30);
INSERT INTO `base_sys_role_menu` VALUES (50, '2021-02-26 12:00:23.246800', '2021-02-26 12:00:23.246800', 8, 47);
INSERT INTO `base_sys_role_menu` VALUES (51, '2021-02-26 12:00:23.349541', '2021-02-26 12:00:23.349541', 8, 48);
INSERT INTO `base_sys_role_menu` VALUES (52, '2021-02-26 12:00:23.463177', '2021-02-26 12:00:23.463177', 8, 84);
INSERT INTO `base_sys_role_menu` VALUES (53, '2021-02-26 12:00:23.564096', '2021-02-26 12:00:23.564096', 8, 90);
INSERT INTO `base_sys_role_menu` VALUES (54, '2021-02-26 12:00:23.663815', '2021-02-26 12:00:23.663815', 8, 85);
INSERT INTO `base_sys_role_menu` VALUES (55, '2021-02-26 12:01:05.971978', '2021-02-26 12:01:05.971978', 9, 1);
INSERT INTO `base_sys_role_menu` VALUES (56, '2021-02-26 12:01:06.085568', '2021-02-26 12:01:06.085568', 9, 96);
INSERT INTO `base_sys_role_menu` VALUES (57, '2021-02-26 12:01:06.198271', '2021-02-26 12:01:06.198271', 9, 45);
INSERT INTO `base_sys_role_menu` VALUES (58, '2021-02-26 12:01:06.309736', '2021-02-26 12:01:06.309736', 9, 43);
INSERT INTO `base_sys_role_menu` VALUES (59, '2021-02-26 12:01:06.410785', '2021-02-26 12:01:06.410785', 9, 49);
INSERT INTO `base_sys_role_menu` VALUES (60, '2021-02-26 12:01:06.510712', '2021-02-26 12:01:06.510712', 9, 86);
INSERT INTO `base_sys_role_menu` VALUES (61, '2021-02-26 12:01:06.612457', '2021-02-26 12:01:06.612457', 9, 2);
INSERT INTO `base_sys_role_menu` VALUES (62, '2021-02-26 12:01:06.710397', '2021-02-26 12:01:06.710397', 9, 27);
INSERT INTO `base_sys_role_menu` VALUES (63, '2021-02-26 12:01:06.809104', '2021-02-26 12:01:06.809104', 9, 97);
INSERT INTO `base_sys_role_menu` VALUES (64, '2021-02-26 12:01:06.907088', '2021-02-26 12:01:06.907088', 9, 59);
INSERT INTO `base_sys_role_menu` VALUES (65, '2021-02-26 12:01:07.009988', '2021-02-26 12:01:07.009988', 9, 60);
INSERT INTO `base_sys_role_menu` VALUES (66, '2021-02-26 12:01:07.122372', '2021-02-26 12:01:07.122372', 9, 61);
INSERT INTO `base_sys_role_menu` VALUES (67, '2021-02-26 12:01:07.223694', '2021-02-26 12:01:07.223694', 9, 62);
INSERT INTO `base_sys_role_menu` VALUES (68, '2021-02-26 12:01:07.325022', '2021-02-26 12:01:07.325022', 9, 63);
INSERT INTO `base_sys_role_menu` VALUES (69, '2021-02-26 12:01:07.425209', '2021-02-26 12:01:07.425209', 9, 65);
INSERT INTO `base_sys_role_menu` VALUES (70, '2021-02-26 12:01:07.522081', '2021-02-26 12:01:07.522081', 9, 98);
INSERT INTO `base_sys_role_menu` VALUES (71, '2021-02-26 12:01:07.622775', '2021-02-26 12:01:07.622775', 9, 99);
INSERT INTO `base_sys_role_menu` VALUES (72, '2021-02-26 12:01:07.721181', '2021-02-26 12:01:07.721181', 9, 100);
INSERT INTO `base_sys_role_menu` VALUES (73, '2021-02-26 12:01:07.819589', '2021-02-26 12:01:07.819589', 9, 101);
INSERT INTO `base_sys_role_menu` VALUES (74, '2021-02-26 12:01:07.920497', '2021-02-26 12:01:07.920497', 9, 8);
INSERT INTO `base_sys_role_menu` VALUES (75, '2021-02-26 12:01:08.018875', '2021-02-26 12:01:08.018875', 9, 10);
INSERT INTO `base_sys_role_menu` VALUES (76, '2021-02-26 12:01:08.135192', '2021-02-26 12:01:08.135192', 9, 11);
INSERT INTO `base_sys_role_menu` VALUES (77, '2021-02-26 12:01:08.246405', '2021-02-26 12:01:08.246405', 9, 12);
INSERT INTO `base_sys_role_menu` VALUES (78, '2021-02-26 12:01:08.346661', '2021-02-26 12:01:08.346661', 9, 13);
INSERT INTO `base_sys_role_menu` VALUES (79, '2021-02-26 12:01:08.448436', '2021-02-26 12:01:08.448436', 9, 22);
INSERT INTO `base_sys_role_menu` VALUES (80, '2021-02-26 12:01:08.547496', '2021-02-26 12:01:08.547496', 9, 23);
INSERT INTO `base_sys_role_menu` VALUES (81, '2021-02-26 12:01:08.648457', '2021-02-26 12:01:08.648457', 9, 24);
INSERT INTO `base_sys_role_menu` VALUES (82, '2021-02-26 12:01:08.750564', '2021-02-26 12:01:08.750564', 9, 25);
INSERT INTO `base_sys_role_menu` VALUES (83, '2021-02-26 12:01:08.851783', '2021-02-26 12:01:08.851783', 9, 26);
INSERT INTO `base_sys_role_menu` VALUES (84, '2021-02-26 12:01:08.950898', '2021-02-26 12:01:08.950898', 9, 69);
INSERT INTO `base_sys_role_menu` VALUES (85, '2021-02-26 12:01:09.061982', '2021-02-26 12:01:09.061982', 9, 70);
INSERT INTO `base_sys_role_menu` VALUES (86, '2021-02-26 12:01:09.165258', '2021-02-26 12:01:09.165258', 9, 71);
INSERT INTO `base_sys_role_menu` VALUES (87, '2021-02-26 12:01:09.266177', '2021-02-26 12:01:09.266177', 9, 72);
INSERT INTO `base_sys_role_menu` VALUES (88, '2021-02-26 12:01:09.366427', '2021-02-26 12:01:09.366427', 9, 73);
INSERT INTO `base_sys_role_menu` VALUES (89, '2021-02-26 12:01:09.467877', '2021-02-26 12:01:09.467877', 9, 74);
INSERT INTO `base_sys_role_menu` VALUES (90, '2021-02-26 12:01:09.568526', '2021-02-26 12:01:09.568526', 9, 75);
INSERT INTO `base_sys_role_menu` VALUES (91, '2021-02-26 12:01:09.668052', '2021-02-26 12:01:09.668052', 9, 76);
INSERT INTO `base_sys_role_menu` VALUES (92, '2021-02-26 12:01:09.766367', '2021-02-26 12:01:09.766367', 9, 77);
INSERT INTO `base_sys_role_menu` VALUES (93, '2021-02-26 12:01:09.866170', '2021-02-26 12:01:09.866170', 9, 78);
INSERT INTO `base_sys_role_menu` VALUES (94, '2021-02-26 12:01:09.963037', '2021-02-26 12:01:09.963037', 9, 79);
INSERT INTO `base_sys_role_menu` VALUES (95, '2021-02-26 12:01:10.082046', '2021-02-26 12:01:10.082046', 9, 80);
INSERT INTO `base_sys_role_menu` VALUES (96, '2021-02-26 12:01:10.185024', '2021-02-26 12:01:10.185024', 9, 81);
INSERT INTO `base_sys_role_menu` VALUES (97, '2021-02-26 12:01:10.283787', '2021-02-26 12:01:10.283787', 9, 82);
INSERT INTO `base_sys_role_menu` VALUES (98, '2021-02-26 12:01:10.382883', '2021-02-26 12:01:10.382883', 9, 83);
INSERT INTO `base_sys_role_menu` VALUES (99, '2021-02-26 12:01:10.481150', '2021-02-26 12:01:10.481150', 9, 105);
INSERT INTO `base_sys_role_menu` VALUES (100, '2021-02-26 12:01:10.579579', '2021-02-26 12:01:10.579579', 9, 102);
INSERT INTO `base_sys_role_menu` VALUES (101, '2021-02-26 12:01:10.679489', '2021-02-26 12:01:10.679489', 9, 103);
INSERT INTO `base_sys_role_menu` VALUES (102, '2021-02-26 12:01:10.777496', '2021-02-26 12:01:10.777496', 9, 29);
INSERT INTO `base_sys_role_menu` VALUES (103, '2021-02-26 12:01:10.878292', '2021-02-26 12:01:10.878292', 9, 30);
INSERT INTO `base_sys_role_menu` VALUES (104, '2021-02-26 12:01:10.977354', '2021-02-26 12:01:10.977354', 9, 47);
INSERT INTO `base_sys_role_menu` VALUES (105, '2021-02-26 12:01:11.097786', '2021-02-26 12:01:11.097786', 9, 48);
INSERT INTO `base_sys_role_menu` VALUES (106, '2021-02-26 12:01:11.201390', '2021-02-26 12:01:11.201390', 9, 84);
INSERT INTO `base_sys_role_menu` VALUES (107, '2021-02-26 12:01:11.302120', '2021-02-26 12:01:11.302120', 9, 90);
INSERT INTO `base_sys_role_menu` VALUES (108, '2021-02-26 12:01:11.402751', '2021-02-26 12:01:11.402751', 9, 85);
INSERT INTO `base_sys_role_menu` VALUES (161, '2021-02-26 14:16:49.162546', '2021-02-26 14:16:49.162546', 11, 1);
INSERT INTO `base_sys_role_menu` VALUES (162, '2021-02-26 14:16:49.257677', '2021-02-26 14:16:49.257677', 11, 96);
INSERT INTO `base_sys_role_menu` VALUES (163, '2021-02-26 14:16:49.356225', '2021-02-26 14:16:49.356225', 11, 45);
INSERT INTO `base_sys_role_menu` VALUES (164, '2021-02-26 14:16:49.450708', '2021-02-26 14:16:49.450708', 11, 43);
INSERT INTO `base_sys_role_menu` VALUES (165, '2021-02-26 14:16:49.543794', '2021-02-26 14:16:49.543794', 11, 49);
INSERT INTO `base_sys_role_menu` VALUES (166, '2021-02-26 14:16:49.636496', '2021-02-26 14:16:49.636496', 11, 86);
INSERT INTO `base_sys_role_menu` VALUES (167, '2021-02-26 14:16:49.728634', '2021-02-26 14:16:49.728634', 11, 47);
INSERT INTO `base_sys_role_menu` VALUES (168, '2021-02-26 14:16:49.824754', '2021-02-26 14:16:49.824754', 11, 48);
INSERT INTO `base_sys_role_menu` VALUES (169, '2021-02-26 14:16:49.919329', '2021-02-26 14:16:49.919329', 11, 85);
INSERT INTO `base_sys_role_menu` VALUES (170, '2021-02-26 14:16:50.015239', '2021-02-26 14:16:50.015239', 11, 84);
INSERT INTO `base_sys_role_menu` VALUES (290, '2021-02-26 14:32:35.143867', '2021-02-26 14:32:35.143867', 12, 1);
INSERT INTO `base_sys_role_menu` VALUES (291, '2021-02-26 14:32:35.239965', '2021-02-26 14:32:35.239965', 12, 96);
INSERT INTO `base_sys_role_menu` VALUES (292, '2021-02-26 14:32:35.336398', '2021-02-26 14:32:35.336398', 12, 45);
INSERT INTO `base_sys_role_menu` VALUES (293, '2021-02-26 14:32:35.435180', '2021-02-26 14:32:35.435180', 12, 43);
INSERT INTO `base_sys_role_menu` VALUES (294, '2021-02-26 14:32:35.528631', '2021-02-26 14:32:35.528631', 12, 49);
INSERT INTO `base_sys_role_menu` VALUES (295, '2021-02-26 14:32:35.623123', '2021-02-26 14:32:35.623123', 12, 86);
INSERT INTO `base_sys_role_menu` VALUES (296, '2021-02-26 14:32:35.718831', '2021-02-26 14:32:35.718831', 12, 2);
INSERT INTO `base_sys_role_menu` VALUES (297, '2021-02-26 14:32:35.812975', '2021-02-26 14:32:35.812975', 12, 27);
INSERT INTO `base_sys_role_menu` VALUES (298, '2021-02-26 14:32:35.904487', '2021-02-26 14:32:35.904487', 12, 97);
INSERT INTO `base_sys_role_menu` VALUES (299, '2021-02-26 14:32:35.998773', '2021-02-26 14:32:35.998773', 12, 59);
INSERT INTO `base_sys_role_menu` VALUES (300, '2021-02-26 14:32:36.107749', '2021-02-26 14:32:36.107749', 12, 60);
INSERT INTO `base_sys_role_menu` VALUES (301, '2021-02-26 14:32:36.213069', '2021-02-26 14:32:36.213069', 12, 61);
INSERT INTO `base_sys_role_menu` VALUES (302, '2021-02-26 14:32:36.308985', '2021-02-26 14:32:36.308985', 12, 62);
INSERT INTO `base_sys_role_menu` VALUES (303, '2021-02-26 14:32:36.404237', '2021-02-26 14:32:36.404237', 12, 63);
INSERT INTO `base_sys_role_menu` VALUES (304, '2021-02-26 14:32:36.499569', '2021-02-26 14:32:36.499569', 12, 65);
INSERT INTO `base_sys_role_menu` VALUES (305, '2021-02-26 14:32:36.593710', '2021-02-26 14:32:36.593710', 12, 98);
INSERT INTO `base_sys_role_menu` VALUES (306, '2021-02-26 14:32:36.685988', '2021-02-26 14:32:36.685988', 12, 99);
INSERT INTO `base_sys_role_menu` VALUES (307, '2021-02-26 14:32:36.778733', '2021-02-26 14:32:36.778733', 12, 100);
INSERT INTO `base_sys_role_menu` VALUES (308, '2021-02-26 14:32:36.874715', '2021-02-26 14:32:36.874715', 12, 101);
INSERT INTO `base_sys_role_menu` VALUES (309, '2021-02-26 14:32:36.973153', '2021-02-26 14:32:36.973153', 12, 8);
INSERT INTO `base_sys_role_menu` VALUES (310, '2021-02-26 14:32:37.082734', '2021-02-26 14:32:37.082734', 12, 10);
INSERT INTO `base_sys_role_menu` VALUES (311, '2021-02-26 14:32:37.176859', '2021-02-26 14:32:37.176859', 12, 11);
INSERT INTO `base_sys_role_menu` VALUES (312, '2021-02-26 14:32:37.271440', '2021-02-26 14:32:37.271440', 12, 12);
INSERT INTO `base_sys_role_menu` VALUES (313, '2021-02-26 14:32:37.365206', '2021-02-26 14:32:37.365206', 12, 13);
INSERT INTO `base_sys_role_menu` VALUES (314, '2021-02-26 14:32:37.457092', '2021-02-26 14:32:37.457092', 12, 22);
INSERT INTO `base_sys_role_menu` VALUES (315, '2021-02-26 14:32:37.549860', '2021-02-26 14:32:37.549860', 12, 23);
INSERT INTO `base_sys_role_menu` VALUES (316, '2021-02-26 14:32:37.645684', '2021-02-26 14:32:37.645684', 12, 24);
INSERT INTO `base_sys_role_menu` VALUES (317, '2021-02-26 14:32:37.743370', '2021-02-26 14:32:37.743370', 12, 25);
INSERT INTO `base_sys_role_menu` VALUES (318, '2021-02-26 14:32:37.837218', '2021-02-26 14:32:37.837218', 12, 26);
INSERT INTO `base_sys_role_menu` VALUES (319, '2021-02-26 14:32:37.930953', '2021-02-26 14:32:37.930953', 12, 69);
INSERT INTO `base_sys_role_menu` VALUES (320, '2021-02-26 14:32:38.031191', '2021-02-26 14:32:38.031191', 12, 70);
INSERT INTO `base_sys_role_menu` VALUES (321, '2021-02-26 14:32:38.130839', '2021-02-26 14:32:38.130839', 12, 71);
INSERT INTO `base_sys_role_menu` VALUES (322, '2021-02-26 14:32:38.229359', '2021-02-26 14:32:38.229359', 12, 72);
INSERT INTO `base_sys_role_menu` VALUES (323, '2021-02-26 14:32:38.323868', '2021-02-26 14:32:38.323868', 12, 73);
INSERT INTO `base_sys_role_menu` VALUES (324, '2021-02-26 14:32:38.415194', '2021-02-26 14:32:38.415194', 12, 74);
INSERT INTO `base_sys_role_menu` VALUES (325, '2021-02-26 14:32:38.505597', '2021-02-26 14:32:38.505597', 12, 75);
INSERT INTO `base_sys_role_menu` VALUES (326, '2021-02-26 14:32:38.600426', '2021-02-26 14:32:38.600426', 12, 76);
INSERT INTO `base_sys_role_menu` VALUES (327, '2021-02-26 14:32:38.698676', '2021-02-26 14:32:38.698676', 12, 77);
INSERT INTO `base_sys_role_menu` VALUES (328, '2021-02-26 14:32:38.793832', '2021-02-26 14:32:38.793832', 12, 78);
INSERT INTO `base_sys_role_menu` VALUES (329, '2021-02-26 14:32:38.889203', '2021-02-26 14:32:38.889203', 12, 79);
INSERT INTO `base_sys_role_menu` VALUES (330, '2021-02-26 14:32:38.985851', '2021-02-26 14:32:38.985851', 12, 80);
INSERT INTO `base_sys_role_menu` VALUES (331, '2021-02-26 14:32:39.092110', '2021-02-26 14:32:39.092110', 12, 81);
INSERT INTO `base_sys_role_menu` VALUES (332, '2021-02-26 14:32:39.188945', '2021-02-26 14:32:39.188945', 12, 82);
INSERT INTO `base_sys_role_menu` VALUES (333, '2021-02-26 14:32:39.280043', '2021-02-26 14:32:39.280043', 12, 83);
INSERT INTO `base_sys_role_menu` VALUES (334, '2021-02-26 14:32:39.374899', '2021-02-26 14:32:39.374899', 12, 105);
INSERT INTO `base_sys_role_menu` VALUES (335, '2021-02-26 14:32:39.473563', '2021-02-26 14:32:39.473563', 12, 102);
INSERT INTO `base_sys_role_menu` VALUES (336, '2021-02-26 14:32:39.570921', '2021-02-26 14:32:39.570921', 12, 103);
INSERT INTO `base_sys_role_menu` VALUES (337, '2021-02-26 14:32:39.665052', '2021-02-26 14:32:39.665052', 12, 29);
INSERT INTO `base_sys_role_menu` VALUES (338, '2021-02-26 14:32:39.760189', '2021-02-26 14:32:39.760189', 12, 30);
INSERT INTO `base_sys_role_menu` VALUES (339, '2021-02-26 14:32:39.852856', '2021-02-26 14:32:39.852856', 12, 47);
INSERT INTO `base_sys_role_menu` VALUES (340, '2021-02-26 14:32:39.944180', '2021-02-26 14:32:39.944180', 12, 48);
INSERT INTO `base_sys_role_menu` VALUES (341, '2021-02-26 14:32:40.038086', '2021-02-26 14:32:40.038086', 12, 84);
INSERT INTO `base_sys_role_menu` VALUES (342, '2021-02-26 14:32:40.135874', '2021-02-26 14:32:40.135874', 12, 90);
INSERT INTO `base_sys_role_menu` VALUES (343, '2021-02-26 14:32:40.234015', '2021-02-26 14:32:40.234015', 12, 85);
INSERT INTO `base_sys_role_menu` VALUES (355, '2021-02-26 14:32:54.538822', '2021-02-26 14:32:54.538822', 10, 1);
INSERT INTO `base_sys_role_menu` VALUES (356, '2021-02-26 14:32:54.634784', '2021-02-26 14:32:54.634784', 10, 96);
INSERT INTO `base_sys_role_menu` VALUES (357, '2021-02-26 14:32:54.732878', '2021-02-26 14:32:54.732878', 10, 45);
INSERT INTO `base_sys_role_menu` VALUES (358, '2021-02-26 14:32:54.826023', '2021-02-26 14:32:54.826023', 10, 43);
INSERT INTO `base_sys_role_menu` VALUES (359, '2021-02-26 14:32:54.920173', '2021-02-26 14:32:54.920173', 10, 49);
INSERT INTO `base_sys_role_menu` VALUES (360, '2021-02-26 14:32:55.019141', '2021-02-26 14:32:55.019141', 10, 86);
INSERT INTO `base_sys_role_menu` VALUES (361, '2021-02-26 14:32:55.119438', '2021-02-26 14:32:55.119438', 10, 2);
INSERT INTO `base_sys_role_menu` VALUES (362, '2021-02-26 14:32:55.211471', '2021-02-26 14:32:55.211471', 10, 27);
INSERT INTO `base_sys_role_menu` VALUES (363, '2021-02-26 14:32:55.304855', '2021-02-26 14:32:55.304855', 10, 97);
INSERT INTO `base_sys_role_menu` VALUES (364, '2021-02-26 14:32:55.397939', '2021-02-26 14:32:55.397939', 10, 59);
INSERT INTO `base_sys_role_menu` VALUES (365, '2021-02-26 14:32:55.491674', '2021-02-26 14:32:55.491674', 10, 60);
INSERT INTO `base_sys_role_menu` VALUES (366, '2021-02-26 14:32:55.584051', '2021-02-26 14:32:55.584051', 10, 61);
INSERT INTO `base_sys_role_menu` VALUES (367, '2021-02-26 14:32:55.676449', '2021-02-26 14:32:55.676449', 10, 62);
INSERT INTO `base_sys_role_menu` VALUES (368, '2021-02-26 14:32:55.774524', '2021-02-26 14:32:55.774524', 10, 63);
INSERT INTO `base_sys_role_menu` VALUES (369, '2021-02-26 14:32:55.871634', '2021-02-26 14:32:55.871634', 10, 65);
INSERT INTO `base_sys_role_menu` VALUES (370, '2021-02-26 14:32:55.964611', '2021-02-26 14:32:55.964611', 10, 98);
INSERT INTO `base_sys_role_menu` VALUES (371, '2021-02-26 14:32:56.074043', '2021-02-26 14:32:56.074043', 10, 99);
INSERT INTO `base_sys_role_menu` VALUES (372, '2021-02-26 14:32:56.169316', '2021-02-26 14:32:56.169316', 10, 100);
INSERT INTO `base_sys_role_menu` VALUES (373, '2021-02-26 14:32:56.263408', '2021-02-26 14:32:56.263408', 10, 101);
INSERT INTO `base_sys_role_menu` VALUES (374, '2021-02-26 14:32:56.356537', '2021-02-26 14:32:56.356537', 10, 8);
INSERT INTO `base_sys_role_menu` VALUES (375, '2021-02-26 14:32:56.448195', '2021-02-26 14:32:56.448195', 10, 10);
INSERT INTO `base_sys_role_menu` VALUES (376, '2021-02-26 14:32:56.544394', '2021-02-26 14:32:56.544394', 10, 11);
INSERT INTO `base_sys_role_menu` VALUES (377, '2021-02-26 14:32:56.641515', '2021-02-26 14:32:56.641515', 10, 12);
INSERT INTO `base_sys_role_menu` VALUES (378, '2021-02-26 14:32:56.735242', '2021-02-26 14:32:56.735242', 10, 13);
INSERT INTO `base_sys_role_menu` VALUES (379, '2021-02-26 14:32:56.828811', '2021-02-26 14:32:56.828811', 10, 22);
INSERT INTO `base_sys_role_menu` VALUES (380, '2021-02-26 14:32:56.922664', '2021-02-26 14:32:56.922664', 10, 23);
INSERT INTO `base_sys_role_menu` VALUES (381, '2021-02-26 14:32:57.016873', '2021-02-26 14:32:57.016873', 10, 24);
INSERT INTO `base_sys_role_menu` VALUES (382, '2021-02-26 14:32:57.123800', '2021-02-26 14:32:57.123800', 10, 25);
INSERT INTO `base_sys_role_menu` VALUES (383, '2021-02-26 14:32:57.223306', '2021-02-26 14:32:57.223306', 10, 26);
INSERT INTO `base_sys_role_menu` VALUES (384, '2021-02-26 14:32:57.328482', '2021-02-26 14:32:57.328482', 10, 69);
INSERT INTO `base_sys_role_menu` VALUES (385, '2021-02-26 14:32:57.430006', '2021-02-26 14:32:57.430006', 10, 70);
INSERT INTO `base_sys_role_menu` VALUES (386, '2021-02-26 14:32:57.521664', '2021-02-26 14:32:57.521664', 10, 71);
INSERT INTO `base_sys_role_menu` VALUES (387, '2021-02-26 14:32:57.612399', '2021-02-26 14:32:57.612399', 10, 72);
INSERT INTO `base_sys_role_menu` VALUES (388, '2021-02-26 14:32:57.705553', '2021-02-26 14:32:57.705553', 10, 73);
INSERT INTO `base_sys_role_menu` VALUES (389, '2021-02-26 14:32:57.799288', '2021-02-26 14:32:57.799288', 10, 74);
INSERT INTO `base_sys_role_menu` VALUES (390, '2021-02-26 14:32:57.893894', '2021-02-26 14:32:57.893894', 10, 75);
INSERT INTO `base_sys_role_menu` VALUES (391, '2021-02-26 14:32:57.988856', '2021-02-26 14:32:57.988856', 10, 76);
INSERT INTO `base_sys_role_menu` VALUES (392, '2021-02-26 14:32:58.090250', '2021-02-26 14:32:58.090250', 10, 77);
INSERT INTO `base_sys_role_menu` VALUES (393, '2021-02-26 14:32:58.196616', '2021-02-26 14:32:58.196616', 10, 78);
INSERT INTO `base_sys_role_menu` VALUES (394, '2021-02-26 14:32:58.288151', '2021-02-26 14:32:58.288151', 10, 79);
INSERT INTO `base_sys_role_menu` VALUES (395, '2021-02-26 14:32:58.378493', '2021-02-26 14:32:58.378493', 10, 80);
INSERT INTO `base_sys_role_menu` VALUES (396, '2021-02-26 14:32:58.471283', '2021-02-26 14:32:58.471283', 10, 81);
INSERT INTO `base_sys_role_menu` VALUES (397, '2021-02-26 14:32:58.564666', '2021-02-26 14:32:58.564666', 10, 82);
INSERT INTO `base_sys_role_menu` VALUES (398, '2021-02-26 14:32:58.658511', '2021-02-26 14:32:58.658511', 10, 83);
INSERT INTO `base_sys_role_menu` VALUES (399, '2021-02-26 14:32:58.752713', '2021-02-26 14:32:58.752713', 10, 105);
INSERT INTO `base_sys_role_menu` VALUES (400, '2021-02-26 14:32:58.849472', '2021-02-26 14:32:58.849472', 10, 102);
INSERT INTO `base_sys_role_menu` VALUES (401, '2021-02-26 14:32:58.948387', '2021-02-26 14:32:58.948387', 10, 103);
INSERT INTO `base_sys_role_menu` VALUES (402, '2021-02-26 14:32:59.042410', '2021-02-26 14:32:59.042410', 10, 29);
INSERT INTO `base_sys_role_menu` VALUES (403, '2021-02-26 14:32:59.132594', '2021-02-26 14:32:59.132594', 10, 30);
INSERT INTO `base_sys_role_menu` VALUES (404, '2021-02-26 14:32:59.226150', '2021-02-26 14:32:59.226150', 10, 47);
INSERT INTO `base_sys_role_menu` VALUES (405, '2021-02-26 14:32:59.319494', '2021-02-26 14:32:59.319494', 10, 48);
INSERT INTO `base_sys_role_menu` VALUES (406, '2021-02-26 14:32:59.413370', '2021-02-26 14:32:59.413370', 10, 84);
INSERT INTO `base_sys_role_menu` VALUES (407, '2021-02-26 14:32:59.507584', '2021-02-26 14:32:59.507584', 10, 90);
INSERT INTO `base_sys_role_menu` VALUES (408, '2021-02-26 14:32:59.604332', '2021-02-26 14:32:59.604332', 10, 85);
INSERT INTO `base_sys_role_menu` VALUES (463, '2021-02-26 14:33:49.310315', '2021-02-26 14:33:49.310315', 13, 1);
INSERT INTO `base_sys_role_menu` VALUES (464, '2021-02-26 14:33:49.403445', '2021-02-26 14:33:49.403445', 13, 96);
INSERT INTO `base_sys_role_menu` VALUES (465, '2021-02-26 14:33:49.496802', '2021-02-26 14:33:49.496802', 13, 45);
INSERT INTO `base_sys_role_menu` VALUES (466, '2021-02-26 14:33:49.595210', '2021-02-26 14:33:49.595210', 13, 43);
INSERT INTO `base_sys_role_menu` VALUES (467, '2021-02-26 14:33:49.688024', '2021-02-26 14:33:49.688024', 13, 49);
INSERT INTO `base_sys_role_menu` VALUES (468, '2021-02-26 14:33:49.781292', '2021-02-26 14:33:49.781292', 13, 86);
INSERT INTO `base_sys_role_menu` VALUES (469, '2021-02-26 14:33:49.874061', '2021-02-26 14:33:49.874061', 13, 2);
INSERT INTO `base_sys_role_menu` VALUES (470, '2021-02-26 14:33:49.965534', '2021-02-26 14:33:49.965534', 13, 27);
INSERT INTO `base_sys_role_menu` VALUES (471, '2021-02-26 14:33:50.072373', '2021-02-26 14:33:50.072373', 13, 97);
INSERT INTO `base_sys_role_menu` VALUES (472, '2021-02-26 14:33:50.176473', '2021-02-26 14:33:50.176473', 13, 59);
INSERT INTO `base_sys_role_menu` VALUES (473, '2021-02-26 14:33:50.272264', '2021-02-26 14:33:50.272264', 13, 60);
INSERT INTO `base_sys_role_menu` VALUES (474, '2021-02-26 14:33:50.370328', '2021-02-26 14:33:50.370328', 13, 61);
INSERT INTO `base_sys_role_menu` VALUES (475, '2021-02-26 14:33:50.463159', '2021-02-26 14:33:50.463159', 13, 62);
INSERT INTO `base_sys_role_menu` VALUES (476, '2021-02-26 14:33:50.557911', '2021-02-26 14:33:50.557911', 13, 63);
INSERT INTO `base_sys_role_menu` VALUES (477, '2021-02-26 14:33:50.650669', '2021-02-26 14:33:50.650669', 13, 65);
INSERT INTO `base_sys_role_menu` VALUES (478, '2021-02-26 14:33:50.742871', '2021-02-26 14:33:50.742871', 13, 98);
INSERT INTO `base_sys_role_menu` VALUES (479, '2021-02-26 14:33:50.838052', '2021-02-26 14:33:50.838052', 13, 99);
INSERT INTO `base_sys_role_menu` VALUES (480, '2021-02-26 14:33:50.932201', '2021-02-26 14:33:50.932201', 13, 100);
INSERT INTO `base_sys_role_menu` VALUES (481, '2021-02-26 14:33:51.030973', '2021-02-26 14:33:51.030973', 13, 101);
INSERT INTO `base_sys_role_menu` VALUES (482, '2021-02-26 14:33:51.168873', '2021-02-26 14:33:51.168873', 13, 8);
INSERT INTO `base_sys_role_menu` VALUES (483, '2021-02-26 14:33:51.265779', '2021-02-26 14:33:51.265779', 13, 10);
INSERT INTO `base_sys_role_menu` VALUES (484, '2021-02-26 14:33:51.379934', '2021-02-26 14:33:51.379934', 13, 11);
INSERT INTO `base_sys_role_menu` VALUES (485, '2021-02-26 14:33:51.473016', '2021-02-26 14:33:51.473016', 13, 12);
INSERT INTO `base_sys_role_menu` VALUES (486, '2021-02-26 14:33:51.568753', '2021-02-26 14:33:51.568753', 13, 13);
INSERT INTO `base_sys_role_menu` VALUES (487, '2021-02-26 14:33:51.667262', '2021-02-26 14:33:51.667262', 13, 22);
INSERT INTO `base_sys_role_menu` VALUES (488, '2021-02-26 14:33:51.761865', '2021-02-26 14:33:51.761865', 13, 23);
INSERT INTO `base_sys_role_menu` VALUES (489, '2021-02-26 14:33:51.857295', '2021-02-26 14:33:51.857295', 13, 24);
INSERT INTO `base_sys_role_menu` VALUES (490, '2021-02-26 14:33:51.951231', '2021-02-26 14:33:51.951231', 13, 25);
INSERT INTO `base_sys_role_menu` VALUES (491, '2021-02-26 14:33:52.047431', '2021-02-26 14:33:52.047431', 13, 26);
INSERT INTO `base_sys_role_menu` VALUES (492, '2021-02-26 14:33:52.141210', '2021-02-26 14:33:52.141210', 13, 69);
INSERT INTO `base_sys_role_menu` VALUES (493, '2021-02-26 14:33:52.236892', '2021-02-26 14:33:52.236892', 13, 70);
INSERT INTO `base_sys_role_menu` VALUES (494, '2021-02-26 14:33:52.332986', '2021-02-26 14:33:52.332986', 13, 71);
INSERT INTO `base_sys_role_menu` VALUES (495, '2021-02-26 14:33:52.432629', '2021-02-26 14:33:52.432629', 13, 72);
INSERT INTO `base_sys_role_menu` VALUES (496, '2021-02-26 14:33:52.529105', '2021-02-26 14:33:52.529105', 13, 73);
INSERT INTO `base_sys_role_menu` VALUES (497, '2021-02-26 14:33:52.625291', '2021-02-26 14:33:52.625291', 13, 74);
INSERT INTO `base_sys_role_menu` VALUES (498, '2021-02-26 14:33:52.721109', '2021-02-26 14:33:52.721109', 13, 75);
INSERT INTO `base_sys_role_menu` VALUES (499, '2021-02-26 14:33:52.813753', '2021-02-26 14:33:52.813753', 13, 76);
INSERT INTO `base_sys_role_menu` VALUES (500, '2021-02-26 14:33:52.905436', '2021-02-26 14:33:52.905436', 13, 77);
INSERT INTO `base_sys_role_menu` VALUES (501, '2021-02-26 14:33:52.998499', '2021-02-26 14:33:52.998499', 13, 78);
INSERT INTO `base_sys_role_menu` VALUES (502, '2021-02-26 14:33:53.100975', '2021-02-26 14:33:53.100975', 13, 79);
INSERT INTO `base_sys_role_menu` VALUES (503, '2021-02-26 14:33:53.199493', '2021-02-26 14:33:53.199493', 13, 80);
INSERT INTO `base_sys_role_menu` VALUES (504, '2021-02-26 14:33:53.294088', '2021-02-26 14:33:53.294088', 13, 81);
INSERT INTO `base_sys_role_menu` VALUES (505, '2021-02-26 14:33:53.391390', '2021-02-26 14:33:53.391390', 13, 82);
INSERT INTO `base_sys_role_menu` VALUES (506, '2021-02-26 14:33:53.486104', '2021-02-26 14:33:53.486104', 13, 83);
INSERT INTO `base_sys_role_menu` VALUES (507, '2021-02-26 14:33:53.578385', '2021-02-26 14:33:53.578385', 13, 105);
INSERT INTO `base_sys_role_menu` VALUES (508, '2021-02-26 14:33:53.670073', '2021-02-26 14:33:53.670073', 13, 102);
INSERT INTO `base_sys_role_menu` VALUES (509, '2021-02-26 14:33:53.763868', '2021-02-26 14:33:53.763868', 13, 103);
INSERT INTO `base_sys_role_menu` VALUES (510, '2021-02-26 14:33:53.860706', '2021-02-26 14:33:53.860706', 13, 29);
INSERT INTO `base_sys_role_menu` VALUES (511, '2021-02-26 14:33:53.959262', '2021-02-26 14:33:53.959262', 13, 30);
INSERT INTO `base_sys_role_menu` VALUES (512, '2021-02-26 14:33:54.064932', '2021-02-26 14:33:54.064932', 13, 47);
INSERT INTO `base_sys_role_menu` VALUES (513, '2021-02-26 14:33:54.168918', '2021-02-26 14:33:54.168918', 13, 48);
INSERT INTO `base_sys_role_menu` VALUES (514, '2021-02-26 14:33:54.273982', '2021-02-26 14:33:54.273982', 13, 84);
INSERT INTO `base_sys_role_menu` VALUES (515, '2021-02-26 14:33:54.366992', '2021-02-26 14:33:54.366992', 13, 90);
INSERT INTO `base_sys_role_menu` VALUES (516, '2021-02-26 14:33:54.458682', '2021-02-26 14:33:54.458682', 13, 85);
COMMIT;

-- ----------------------------
-- Table structure for base_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_user`;
CREATE TABLE `base_sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `departmentId` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `passwordV` int(11) NOT NULL DEFAULT '1' COMMENT '密码版本, 作用是改完密码，让原来的token失效',
  `nickName` varchar(255) DEFAULT NULL COMMENT '昵称',
  `headImg` varchar(255) DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 0:禁用 1：启用',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `socketId` varchar(255) DEFAULT NULL COMMENT 'socketId',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_469ad55973f5b98930f6ad627b` (`username`),
  KEY `IDX_0cf944da378d70a94f5fefd803` (`departmentId`),
  KEY `IDX_9ec6d7ac6337eafb070e4881a8` (`phone`),
  KEY `IDX_ca8611d15a63d52aa4e292e46a` (`createTime`),
  KEY `IDX_a0f2f19cee18445998ece93ddd` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_user
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_user` VALUES (1, '2021-02-24 21:16:41.525157', '2021-02-27 18:21:16.000000', 1, '超级管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 3, '管理员', 'https://cool-admin-pro.oss-cn-shanghai.aliyuncs.com/app/c8128c24-d0e9-4e07-9c0d-6f65446e105b.png', '18000000000', 'team@cool-js.com', 1, '拥有最高权限的用户', NULL);
INSERT INTO `base_sys_user` VALUES (24, '2021-02-26 14:17:38.000000', '2021-02-26 14:17:38.000000', 11, '小白', 'xiaobai', 'e10adc3949ba59abbe56e057f20f883e', 1, '小白', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `base_sys_user` VALUES (25, '2021-02-26 14:28:25.000000', '2021-02-26 14:28:25.000000', 12, '小黑', 'xiaohei', 'e10adc3949ba59abbe56e057f20f883e', 1, '小黑', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `base_sys_user` VALUES (26, '2021-02-26 14:28:49.000000', '2021-02-26 14:28:49.000000', 12, '小绿', 'xiaolv', 'e10adc3949ba59abbe56e057f20f883e', 1, '小绿', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `base_sys_user` VALUES (27, '2021-02-26 14:29:23.000000', '2021-02-26 14:29:23.000000', 13, '小青', 'xiaoqin', 'e10adc3949ba59abbe56e057f20f883e', 1, '小青', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `base_sys_user` VALUES (28, '2021-02-26 14:29:52.000000', '2021-02-26 14:29:52.000000', 11, '神仙都没用', 'icssoa', 'e10adc3949ba59abbe56e057f20f883e', 1, '神仙都没用', 'https://cool-admin.cn.utools.club/uploads//20210226/0eeab9a0-77fc-11eb-b64f-674cd46b6601.jpg', NULL, NULL, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for base_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_user_role`;
CREATE TABLE `base_sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `roleId` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`),
  KEY `IDX_fa9555e03e42fce748c9046b1c` (`createTime`),
  KEY `IDX_3e36c0d2b1a4c659c6b4fc64b3` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `base_sys_user_role` VALUES (1, '2021-02-24 22:03:11.665805', '2021-02-24 22:03:11.665805', 1, 1);
INSERT INTO `base_sys_user_role` VALUES (2, '2021-02-25 11:03:55.325988', '2021-02-25 11:03:55.325988', 2, 1);
INSERT INTO `base_sys_user_role` VALUES (3, '2021-02-25 14:30:57.295150', '2021-02-25 14:30:57.295150', 3, 1);
INSERT INTO `base_sys_user_role` VALUES (4, '2021-02-25 14:39:32.975014', '2021-02-25 14:39:32.975014', 4, 1);
INSERT INTO `base_sys_user_role` VALUES (5, '2021-02-25 14:40:56.812948', '2021-02-25 14:40:56.812948', 5, 1);
INSERT INTO `base_sys_user_role` VALUES (6, '2021-02-25 14:44:08.436555', '2021-02-25 14:44:08.436555', 6, 1);
INSERT INTO `base_sys_user_role` VALUES (7, '2021-02-25 14:46:17.409232', '2021-02-25 14:46:17.409232', 7, 1);
INSERT INTO `base_sys_user_role` VALUES (8, '2021-02-25 14:47:47.211749', '2021-02-25 14:47:47.211749', 8, 1);
INSERT INTO `base_sys_user_role` VALUES (9, '2021-02-25 14:48:11.734024', '2021-02-25 14:48:11.734024', 9, 1);
INSERT INTO `base_sys_user_role` VALUES (10, '2021-02-25 14:50:48.288616', '2021-02-25 14:50:48.288616', 10, 1);
INSERT INTO `base_sys_user_role` VALUES (11, '2021-02-25 14:51:32.123884', '2021-02-25 14:51:32.123884', 11, 1);
INSERT INTO `base_sys_user_role` VALUES (12, '2021-02-25 15:46:26.356943', '2021-02-25 15:46:26.356943', 12, 1);
INSERT INTO `base_sys_user_role` VALUES (13, '2021-02-25 15:56:43.475155', '2021-02-25 15:56:43.475155', 13, 1);
INSERT INTO `base_sys_user_role` VALUES (14, '2021-02-25 16:03:14.417784', '2021-02-25 16:03:14.417784', 14, 1);
INSERT INTO `base_sys_user_role` VALUES (16, '2021-02-25 16:22:11.200152', '2021-02-25 16:22:11.200152', 16, 1);
INSERT INTO `base_sys_user_role` VALUES (17, '2021-02-25 17:44:37.635550', '2021-02-25 17:44:37.635550', 15, 1);
INSERT INTO `base_sys_user_role` VALUES (19, '2021-02-25 17:51:00.554812', '2021-02-25 17:51:00.554812', 18, 1);
INSERT INTO `base_sys_user_role` VALUES (21, '2021-02-25 17:54:41.375113', '2021-02-25 17:54:41.375113', 17, 1);
INSERT INTO `base_sys_user_role` VALUES (22, '2021-02-25 17:55:49.385301', '2021-02-25 17:55:49.385301', 20, 1);
INSERT INTO `base_sys_user_role` VALUES (24, '2021-02-25 17:58:35.452363', '2021-02-25 17:58:35.452363', 22, 1);
INSERT INTO `base_sys_user_role` VALUES (27, '2021-02-25 21:25:55.005236', '2021-02-25 21:25:55.005236', 19, 1);
INSERT INTO `base_sys_user_role` VALUES (28, '2021-02-26 13:50:05.633242', '2021-02-26 13:50:05.633242', 21, 8);
INSERT INTO `base_sys_user_role` VALUES (29, '2021-02-26 13:50:17.836990', '2021-02-26 13:50:17.836990', 23, 8);
INSERT INTO `base_sys_user_role` VALUES (38, '2021-02-26 14:36:08.899046', '2021-02-26 14:36:08.899046', 26, 13);
INSERT INTO `base_sys_user_role` VALUES (39, '2021-02-26 14:36:13.149510', '2021-02-26 14:36:13.149510', 25, 13);
INSERT INTO `base_sys_user_role` VALUES (40, '2021-02-26 14:36:20.737073', '2021-02-26 14:36:20.737073', 27, 11);
INSERT INTO `base_sys_user_role` VALUES (42, '2021-02-26 14:36:53.481478', '2021-02-26 14:36:53.481478', 24, 12);
INSERT INTO `base_sys_user_role` VALUES (43, '2021-02-26 14:36:58.477817', '2021-02-26 14:36:58.477817', 28, 12);
INSERT INTO `base_sys_user_role` VALUES (44, '2021-02-26 14:36:58.577114', '2021-02-26 14:36:58.577114', 28, 10);
COMMIT;

-- ----------------------------
-- Table structure for core_config
-- ----------------------------
DROP TABLE IF EXISTS `core_config`;
CREATE TABLE `core_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `cKey` varchar(255) NOT NULL COMMENT '配置键 唯一性',
  `cValue` text NOT NULL COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_fd61f44f8fc57eaf4694a4fd56` (`cKey`),
  KEY `IDX_bd838f3b2d5bfa596c57412646` (`createTime`),
  KEY `IDX_ad74623a3e9a43335eac8d1154` (`updateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of core_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for core_module
-- ----------------------------
DROP TABLE IF EXISTS `core_module`;
CREATE TABLE `core_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) NOT NULL COMMENT '模块名称',
  `dbInit` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否初始化数据库 0：否 1：是',
  `allConfig` text COMMENT '配置所有',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_bb5e1af48c40f92cf059d45d56` (`name`),
  KEY `IDX_b3a06b55a1bbed1dbf9110ba5f` (`createTime`),
  KEY `IDX_3660f389f2b8204a9ae3d0da08` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of core_module
-- ----------------------------
BEGIN;
INSERT INTO `core_module` VALUES (1, '2021-06-28 11:53:25.018493', '2021-07-14 18:51:32.000000', 'base', 1, '{\"name\":\"权限管理\",\"description\":\"基础的权限管理功能，包括登录，权限校验\",\"globalMiddlewares\":[\"baseAuthorityMiddleware\",\"baseLogMiddleware\"],\"jwt\":{\"secret\":\"FOAPOFALOEQIPNNLQ\",\"token\":{\"expire\":7200,\"refreshExpire\":1296000}}}');
INSERT INTO `core_module` VALUES (2, '2021-06-28 11:53:25.200467', '2021-06-28 11:53:25.200467', 'demo', 0, '{\"name\":\"测试模块\",\"description\":\"演示示例\",\"middlewares\":[\"testMiddleware\"]}');
INSERT INTO `core_module` VALUES (3, '2021-06-28 11:53:25.379456', '2021-06-28 11:53:25.379456', 'space', 0, '{\"name\":\"文件空间\",\"description\":\"上传和管理文件资源\",\"middlewares\":[]}');
INSERT INTO `core_module` VALUES (4, '2021-06-28 11:53:25.558970', '2021-06-28 11:53:25.558970', 'task', 1, '{\"name\":\"任务调度\",\"description\":\"任务调度模块，支持分布式任务，由redis整个集群的任务\",\"middlewares\":[]}');
INSERT INTO `core_module` VALUES (5, '2021-06-28 11:53:25.737494', '2021-07-16 14:28:05.000000', 'user', 0, '{\"name\":\"用户\",\"description\":\"用户登录、修改信息、地址信息等\",\"middlewares\":[],\"globalMiddlewares\":[\"userMiddleware\"],\"order\":1,\"token\":{\"secret\":\"cool-js.com\",\"expiresIn\":{\"access\":311040000,\"refresh\":31104000},\"ignoreUrls\":[\"/app/user/login/wxQrcode\",\"/app/user/login/wxOpenLogin\",\"/app/user/login/wxMpLogin\",\"/app/user/login/wxMiniLogin\",\"/app/user/login/refreshToken\",\"/app/user/login/sendSms\",\"/app/user/login/phoneLogin\",\"/app/user/login/wxMpConfig\",\"/app/user/login/message-local\"]},\"wx\":{\"mini\":{\"appid\":\"wx8651c4868edbd649\",\"appsecret\":\"9e3a6364412f3ff7639b179e649616d5\"},\"mp\":{\"appid\":\"wx14cb082fd5f06648\",\"appsecret\":\"35fc28c03fdb53034923c595c4b9962d\",\"templateMsgId\":\"hg03kwhJzzQXk9JrHyALO9Yga7syklI42PDKG5obXMs\",\"encodingAESKey\":\"WCXbAIeMqQrhZtWsfD6C3obHwDHhEdoDraMtyk0Q7t8\",\"token\":\"13004f27ce484499ba887473092a6f29\"},\"open\":{}},\"sms\":{\"signName\":\"\",\"templateCode\":\" \",\"accessKeyId\":\"\",\"accessKeySecret\":\"\"}}');
INSERT INTO `core_module` VALUES (6, '2021-07-01 15:15:30.474892', '2021-07-01 15:15:30.474892', 'api', 0, '{\"name\":\"Cool Tools 云API模块\",\"description\":\"Cool Tools 云API模块\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
INSERT INTO `core_module` VALUES (7, '2021-07-01 15:15:31.131019', '2021-07-01 15:15:31.131019', 'im', 0, '{\"name\":\"im即时通讯\",\"description\":\"im即时通讯，后端与平台之间，应用与应用之间的通讯\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
INSERT INTO `core_module` VALUES (8, '2021-07-01 15:15:31.551286', '2021-07-01 15:15:31.551286', 'platform', 0, '{\"name\":\"Cool Tools 平台模块\",\"description\":\"Cool Tools 平台模块\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
INSERT INTO `core_module` VALUES (9, '2021-07-01 15:15:32.303900', '2021-07-01 15:15:32.303900', 'tools', 0, '{\"name\":\"tools\",\"description\":\"Cool Tools 核心模块\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
INSERT INTO `core_module` VALUES (10, '2021-07-02 09:16:13.853584', '2021-07-02 09:16:13.853584', 'app', 0, '{\"name\":\"tools\",\"description\":\"Cool Tools 核心模块\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
INSERT INTO `core_module` VALUES (11, '2021-07-02 09:40:16.672982', '2021-07-02 09:40:25.000000', 'ai', 0, '{\"name\":\"\",\"description\":\"\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
INSERT INTO `core_module` VALUES (12, '2021-07-02 09:40:37.520099', '2021-07-02 09:40:37.520099', 'application', 0, '{\"name\":\"\",\"description\":\"\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
INSERT INTO `core_module` VALUES (13, '2021-07-02 09:40:47.278886', '2021-07-02 09:40:47.278886', 'carousel', 0, '{\"name\":\"\",\"description\":\"\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
INSERT INTO `core_module` VALUES (14, '2021-07-02 09:40:59.461433', '2021-07-02 09:40:59.461433', 'login', 0, '{\"name\":\"\",\"description\":\"\",\"middlewares\":[],\"globalMiddlewares\":[],\"order\":0}');
COMMIT;

-- ----------------------------
-- Table structure for core_plugin
-- ----------------------------
DROP TABLE IF EXISTS `core_plugin`;
CREATE TABLE `core_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `author` varchar(255) NOT NULL COMMENT '作者',
  `contact` varchar(255) NOT NULL COMMENT '联系方式',
  `description` text NOT NULL COMMENT '功能描述',
  `version` varchar(255) NOT NULL COMMENT '版本号',
  `enable` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否启用 0：否 1：是',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:缺少配置 1:可用 2: 配置错误 3:未知错误',
  `namespace` varchar(255) NOT NULL COMMENT '命名空间',
  `view` text COMMENT '页面信息',
  `providerId` varchar(255) DEFAULT NULL COMMENT '实例ID',
  `replaceProvider` varchar(255) DEFAULT NULL COMMENT '替换的实例',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_eecfe4f7cae1c102745ffccb9d` (`name`),
  KEY `IDX_851967f56db40707b8a55914d7` (`createTime`),
  KEY `IDX_b9880bb45d647eba03fc3052c4` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of core_plugin
-- ----------------------------
BEGIN;
INSERT INTO `core_plugin` VALUES (1, '2021-06-28 11:53:25.958005', '2021-08-11 13:53:14.000000', '阿里云OSS', 'cool官方', '邮箱：team@cool-js.com', '将文件上传到阿里云oss，前端签名直传方式', '1.0.12', 1, 0, 'oss', '[{\n    \"label\": \"accessKeyId\",\n    \"prop\": \"accessKeyId\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"阿里云accessKeyId\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"130px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}, {\n    \"label\": \"accessKeySecret\",\n    \"prop\": \"accessKeySecret\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"阿里云accessKeySecret\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"130px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}, {\n    \"label\": \"bucket\",\n    \"prop\": \"bucket\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"阿里云oss的bucket\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"130px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}, {\n    \"label\": \"endpoint\",\n    \"prop\": \"endpoint\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"阿里云oss的endpoint\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"130px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}, {\n    \"label\": \"timeout\",\n    \"prop\": \"timeout\",\n    \"value\": \"3600s\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"阿里云oss的timeout\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"130px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}]', 'oss:ossFileHandler', 'coolFile');
INSERT INTO `core_plugin` VALUES (2, '2021-06-28 11:53:26.013589', '2021-08-11 13:53:15.000000', 'Redis缓存', 'cool官方', '邮箱：team@cool-js.com', '替换系统的默认缓存为redis', '1.1.6', 1, 1, 'redis', '[{\n    \"label\": \"配置\",\n    \"prop\": \"redis\",\n    \"component\": {\n        \"name\": \"cl-codemirror\",\n        \"attrs\": {\n            \"placeholder\": \"{\\\"host\\\":\\\"127.0.0.1\\\",\\\"password\\\":\\\"\\\",\\\"port\\\":6379,\\\"db\\\":2}\"\n        },\n        \"props\":{\n            \"height\": \"200px\"\n        }\n    },\n    \"value\": \"{\\\"host\\\":\\\"127.0.0.1\\\",\\\"password\\\":\\\"\\\",\\\"port\\\":6379,\\\"db\\\":2}\",\n    \"props\": {\n        \"label-width\": \"80px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}]', 'redis:redisCacheHandler', 'coolCache');
INSERT INTO `core_plugin` VALUES (3, '2021-06-28 11:53:26.021249', '2021-08-11 13:53:15.000000', 'Socket即时通讯', 'cool官方', '邮箱：team@cool-js.com', '基于socket.io的即使通讯', '1.0.8', 1, 1, 'socket', '[{\n    \"label\": \"配置\",\n    \"prop\": \"redis\",\n    \"component\": {\n        \"name\": \"cl-codemirror\",\n        \"attrs\": {\n            \"placeholder\": \"{\\\"host\\\":\\\"127.0.0.1\\\",\\\"password\\\":\\\"\\\",\\\"port\\\":6379,\\\"db\\\":2}\"\n        },\n        \"props\":{\n            \"height\": \"200px\"\n        }\n    },\n    \"value\": \"{\\\"host\\\":\\\"127.0.0.1\\\",\\\"password\\\":\\\"\\\",\\\"port\\\":6379,\\\"db\\\":2}\",\n    \"props\": {\n        \"label-width\": \"80px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}]', 'socket:coolSocketIo', NULL);
INSERT INTO `core_plugin` VALUES (4, '2021-06-28 11:53:26.023987', '2021-08-11 13:53:15.000000', '微信支付', 'cool官方', '邮箱：team@cool-js.com', '基于tenpay的微信支付', '1.0.12', 1, 0, 'wxpay', '[{\n    \"label\": \"appid\",\n    \"prop\": \"appid\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"微信应用ID\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"100px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}, {\n    \"label\": \"mchid\",\n    \"prop\": \"mchid\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"微信商户ID\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"100px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}, {\n    \"label\": \"partnerKey\",\n    \"prop\": \"partnerKey\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"微信商户秘钥\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"100px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}, {\n    \"label\": \"notify_url\",\n    \"prop\": \"notify_url\",\n    \"component\": {\n        \"name\": \"el-input\",\n        \"attrs\": {\n            \"placeholder\": \"异步回调地址\"\n        }\n    },\n    \"props\": {\n        \"label-width\": \"100px\"\n    },\n    \"rules\": {\n        \"required\": true,\n        \"message\": \"值不能为空\"\n    }\n}, {\n    \"label\": \"证书\",\n    \"prop\": \"pfx\",\n    \"component\": {\n        \"name\": \"cl-upload\",\n        \"attrs\": {\n            \"placeholder\": \"证书\"\n        },\n        \"props\": {\n            \"list-type\": \"text\",\n            \"accept\": \"*\",\n            \"limit\": 1\n        }\n    },\n    \"props\": {\n        \"label-width\": \"100px\"\n    }\n}]', 'wxpay:sdk', NULL);
COMMIT;

-- ----------------------------
-- Table structure for demo_app_goods
-- ----------------------------
DROP TABLE IF EXISTS `demo_app_goods`;
CREATE TABLE `demo_app_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `pic` varchar(255) NOT NULL COMMENT '图片',
  `price` decimal(5,2) NOT NULL COMMENT '价格',
  `type` tinyint(4) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  KEY `IDX_de2b99b64158bb4030487d7475` (`createTime`),
  KEY `IDX_f84cff6dc28b1a5dcc53856e66` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of demo_app_goods
-- ----------------------------
BEGIN;
INSERT INTO `demo_app_goods` VALUES (1, '2021-03-02 17:22:10.687462', '2021-03-02 17:22:10.687462', 'cool-mall商城', 'https://docs.cool-js.com/mall/show05.jpeg', 20.00, 0);
COMMIT;

-- ----------------------------
-- Table structure for platform_message
-- ----------------------------
DROP TABLE IF EXISTS `platform_message`;
CREATE TABLE `platform_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0：未读 1：已读',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0：系统 1：应用',
  `action` tinyint(4) NOT NULL DEFAULT '0' COMMENT '动作 0: 无 1：跳转链接 2：跳转应用',
  `resources` varchar(255) DEFAULT NULL COMMENT '资源',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `IDX_8d7fc88b1235915c3fce3bc8bb` (`createTime`),
  KEY `IDX_a2818cf21bec81f5ec334beb85` (`updateTime`),
  KEY `IDX_280fd801e6d83d68e2eac6b75e` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of platform_message
-- ----------------------------
BEGIN;
INSERT INTO `platform_message` VALUES (1, '2021-07-14 16:09:18.172166', '2021-07-14 16:09:18.172166', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (2, '2021-07-14 16:36:54.048799', '2021-07-14 16:36:54.048799', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (3, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (4, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (5, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (6, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (7, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (8, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (9, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (10, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (11, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (12, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (13, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (14, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (15, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (16, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (17, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (18, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (19, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (20, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (21, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (22, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (23, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (24, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (25, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (26, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (27, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (28, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (29, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (30, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (31, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (32, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (33, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (34, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (35, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (36, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (37, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (38, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (39, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (40, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (41, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (42, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (43, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (44, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (45, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (46, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (47, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (48, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (49, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (50, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (51, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (52, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (53, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (54, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (55, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (56, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (57, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (58, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (59, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (60, '2021-07-14 16:55:58.040757', '2021-07-14 16:55:58.040757', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (61, '2021-07-16 10:47:41.893449', '2021-07-16 10:47:41.893449', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (62, '2021-08-11 13:57:54.826019', '2021-08-11 13:57:54.826019', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
INSERT INTO `platform_message` VALUES (63, '2021-08-11 13:59:08.112756', '2021-08-11 13:59:08.112756', '欢迎使用', '亲爱的啊平，欢迎使用COOL-TOOLS，我们又多了一个贴心的伙伴🤗🤗', 7, 0, 0, 0, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for platform_version
-- ----------------------------
DROP TABLE IF EXISTS `platform_version`;
CREATE TABLE `platform_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version` varchar(255) NOT NULL COMMENT '版本号',
  `description` varchar(255) NOT NULL COMMENT '版本特性',
  `winDownloadUrl` varchar(255) DEFAULT NULL COMMENT 'win下载地址',
  `macDownloadUrl` varchar(255) DEFAULT NULL COMMENT 'mac下载地址',
  `liunxDownloadUrl` varchar(255) DEFAULT NULL COMMENT 'linux下载地址',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0 开发中 1 发布 2 下架',
  `isMandatory` int(11) NOT NULL DEFAULT '0' COMMENT '是否强制更新',
  PRIMARY KEY (`id`),
  KEY `IDX_a8fa62605d25543da2580c9f0a` (`createTime`),
  KEY `IDX_5df56dd5c4624e640395a1d2c8` (`updateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of platform_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for task_info
-- ----------------------------
DROP TABLE IF EXISTS `task_info`;
CREATE TABLE `task_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `jobId` varchar(255) DEFAULT NULL COMMENT '任务ID',
  `repeatConf` varchar(1000) DEFAULT NULL COMMENT '任务配置',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `cron` varchar(255) DEFAULT NULL COMMENT 'cron',
  `limit` int(11) DEFAULT NULL COMMENT '最大执行次数 不传为无限次',
  `every` int(11) DEFAULT NULL COMMENT '每间隔多少毫秒执行一次 如果cron设置了 这项设置就无效',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 0:停止 1：运行',
  `startDate` datetime DEFAULT NULL COMMENT '开始时间',
  `endDate` datetime DEFAULT NULL COMMENT '结束时间',
  `data` varchar(255) DEFAULT NULL COMMENT '数据',
  `service` varchar(255) DEFAULT NULL COMMENT '执行的service实例ID',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:系统 1：用户',
  `nextRunTime` datetime DEFAULT NULL COMMENT '下一次执行时间',
  `taskType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:cron 1：时间间隔',
  PRIMARY KEY (`id`),
  KEY `IDX_6ced02f467e59bd6306b549bb0` (`createTime`),
  KEY `IDX_2adc6f9c241391126f27dac145` (`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of task_info
-- ----------------------------
BEGIN;
INSERT INTO `task_info` VALUES (1, '2021-03-10 14:25:13.381172', '2021-03-10 14:25:19.011000', NULL, '{\"count\":1,\"type\":1,\"limit\":5,\"name\":\"每秒执行,总共5次\",\"taskType\":1,\"every\":1000,\"service\":\"taskDemoService.test()\",\"status\":1,\"id\":1,\"createTime\":\"2021-03-10 14:25:13\",\"updateTime\":\"2021-03-10 14:25:13\",\"jobId\":1}', '每秒执行,总共5次', NULL, 5, 1000, NULL, 0, NULL, NULL, NULL, 'taskDemoService.test()', 1, '2021-03-10 14:25:18', 1);
INSERT INTO `task_info` VALUES (2, '2021-03-10 14:25:53.000000', '2021-03-10 14:26:18.209202', NULL, '{\"count\":1,\"id\":2,\"createTime\":\"2021-03-10 14:25:53\",\"updateTime\":\"2021-03-10 14:25:55\",\"name\":\"cron任务，5秒执行一次\",\"cron\":\"0/5 * * * * ? \",\"status\":1,\"service\":\"taskDemoService.test()\",\"type\":1,\"nextRunTime\":\"2021-03-10 14:26:00\",\"taskType\":0,\"jobId\":2}', 'cron任务，5秒执行一次', '0/5 * * * * ? ', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'taskDemoService.test()', 1, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for task_log
-- ----------------------------
DROP TABLE IF EXISTS `task_log`;
CREATE TABLE `task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `taskId` bigint(20) DEFAULT NULL COMMENT '任务ID',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:失败 1：成功',
  `detail` text COMMENT '详情描述',
  PRIMARY KEY (`id`),
  KEY `IDX_b9af0e100be034924b270aab31` (`createTime`),
  KEY `IDX_8857d8d43d38bebd7159af1fa6` (`updateTime`),
  KEY `IDX_1142dfec452e924b346f060fda` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of task_log
-- ----------------------------
BEGIN;
INSERT INTO `task_log` VALUES (1, '2021-03-10 14:25:14.020930', '2021-03-10 14:25:14.020930', 1, 1, '\"任务执行成功\"');
INSERT INTO `task_log` VALUES (2, '2021-03-10 14:25:15.012030', '2021-03-10 14:25:15.012030', 1, 1, '\"任务执行成功\"');
INSERT INTO `task_log` VALUES (3, '2021-03-10 14:25:16.011443', '2021-03-10 14:25:16.011443', 1, 1, '\"任务执行成功\"');
INSERT INTO `task_log` VALUES (4, '2021-03-10 14:25:17.009939', '2021-03-10 14:25:17.009939', 1, 1, '\"任务执行成功\"');
INSERT INTO `task_log` VALUES (5, '2021-03-10 14:25:18.010410', '2021-03-10 14:25:18.010410', 1, 1, '\"任务执行成功\"');
INSERT INTO `task_log` VALUES (6, '2021-03-10 14:25:55.012816', '2021-03-10 14:25:55.012816', 2, 1, '');
INSERT INTO `task_log` VALUES (7, '2021-03-10 14:26:00.011880', '2021-03-10 14:26:00.011880', 2, 1, '');
INSERT INTO `task_log` VALUES (8, '2021-03-10 14:26:05.016832', '2021-03-10 14:26:05.016832', 2, 1, '\"任务执行成功\"');
INSERT INTO `task_log` VALUES (9, '2021-03-10 14:26:10.011763', '2021-03-10 14:26:10.011763', 2, 1, '\"任务执行成功\"');
INSERT INTO `task_log` VALUES (10, '2021-03-10 14:26:15.010246', '2021-03-10 14:26:15.010246', 2, 1, '\"任务执行成功\"');
COMMIT;

-- ----------------------------
-- Table structure for tools_info
-- ----------------------------
DROP TABLE IF EXISTS `tools_info`;
CREATE TABLE `tools_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `logo` varchar(255) NOT NULL COMMENT 'LOGO',
  `description` text NOT NULL COMMENT '描述',
  `downloadUrl` varchar(255) DEFAULT NULL COMMENT '下载地址',
  `status` tinyint(4) NOT NULL COMMENT '状态 0: 开发中 1：待审核 2：通过 3：不通过 4：已过时',
  `failReason` varchar(255) DEFAULT NULL COMMENT '失败理由',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型 0：系统 1：官方 2：开发者 3: 私有',
  `classify` int(11) NOT NULL DEFAULT '0' COMMENT '分类 0：通用',
  `version` varchar(255) NOT NULL DEFAULT '1.0.0' COMMENT '版本号',
  `versionDesc` text COMMENT '版本描述',
  `appId` varchar(255) NOT NULL COMMENT '插件ID',
  `path` varchar(255) DEFAULT NULL COMMENT '项目路径',
  `platform` varchar(255) NOT NULL COMMENT '平台 格式如：win32;darwin;linux',
  `keyWords` varchar(255) NOT NULL COMMENT '关键字 格式如：cool;ssh',
  `releaseTime` datetime DEFAULT NULL COMMENT '发布时间',
  `enable` tinyint(4) DEFAULT NULL COMMENT '是否启用 0：否 1：是',
  `readme` varchar(255) NOT NULL COMMENT 'readme介绍',
  `config` varchar(255) DEFAULT NULL COMMENT '配置',
  `auditId` bigint(20) DEFAULT NULL COMMENT '审核员，非后台用户ID',
  PRIMARY KEY (`id`),
  KEY `IDX_64a7747128ef1ec4c0f3f1beac` (`createTime`),
  KEY `IDX_937c2bfb541944ada32c1d5bc1` (`updateTime`),
  KEY `IDX_282d677b91feafc3dda1439410` (`userId`),
  KEY `IDX_c66a52f0215ce94d35681bd72b` (`auditId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tools_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `province` varchar(255) NOT NULL COMMENT '省份',
  `city` varchar(255) NOT NULL COMMENT '城市',
  `country` varchar(255) NOT NULL COMMENT '区',
  `detail` varchar(255) NOT NULL COMMENT '详细地址',
  `contact` varchar(255) NOT NULL COMMENT '联系人',
  `phone` varchar(255) NOT NULL COMMENT '手机号码',
  `isDefault` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认',
  PRIMARY KEY (`id`),
  KEY `IDX_144621f4f7bf21e72ed6972d85` (`createTime`),
  KEY `IDX_de647797f6286697bfe9527955` (`updateTime`),
  KEY `IDX_1abd8badc4a127b0f357d9ecbc` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_address
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '头像',
  `phone` varchar(255) DEFAULT NULL,
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '性别  0：未知 1：男 2：女',
  `wxId` varchar(255) DEFAULT NULL COMMENT '微信ID，如果有配置微信开放平台则为unionid，没有则为openid',
  `miniOpenid` varchar(255) DEFAULT NULL COMMENT '小程序openid',
  `mpOpenid` varchar(255) DEFAULT NULL COMMENT '公众号openid',
  `openOpenid` varchar(255) DEFAULT NULL COMMENT 'app openid',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 0: 禁用  1： 启用',
  `socketId` varchar(255) DEFAULT NULL COMMENT 'socketId，即时通讯用的',
  `source` tinyint(4) NOT NULL DEFAULT '0' COMMENT '来源 0: APP 1: 公众号 2: 小程序 3: H5',
  `labels` varchar(255) DEFAULT NULL COMMENT '标签，多个标签按“,”隔开',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  PRIMARY KEY (`id`),
  KEY `IDX_e6386e92c288d85dbc43ac53f7` (`createTime`),
  KEY `IDX_5271afbb87138d688b6220b589` (`updateTime`),
  KEY `IDX_5f193296031cf3f7880ecd42c7` (`wxId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (7, '2021-07-02 16:29:37.562428', '2021-08-11 13:59:02.000000', '啊平', 'http://thirdwx.qlogo.cn/mmopen/njDPk4dh2fYdJ73xegkNs0jicHpYlrAYGaKtIyYWsLUziapic8ib4HD0VE9n3qgIFFnNVqN3gyBS2zibtibGnX2kaWAx2ldiaggMLau/132', NULL, 1, 'oDCYu0coAiq06U2wfGYobtYxUlyU', NULL, 'oUnhEwiaxiPzPS4YpjZHK_FFgYp4', NULL, 1, NULL, 1, NULL, '漳州', '中国', '福建');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
