/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : cool

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 20/03/2021 12:43:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
