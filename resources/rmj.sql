/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : rmj

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 22/07/2019 14:56:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `uid` int(11) NULL DEFAULT NULL COMMENT '收藏的用户',
  `hid` int(11) NULL DEFAULT NULL COMMENT '房屋编号',
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `hid`(`hid`) USING BTREE,
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`hid`) REFERENCES `houses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋编号',
  `tid` int(11) NULL DEFAULT NULL COMMENT '类型',
  `price` decimal(8, 2) NULL DEFAULT NULL COMMENT '价格',
  `area` decimal(6, 2) NULL DEFAULT NULL COMMENT '面积',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '具体地址',
  `uid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房东',
  `roomNum` int(11) NULL DEFAULT NULL COMMENT '房间个数',
  `lastroom` int(11) NULL DEFAULT NULL COMMENT '剩余房间个数',
  `isqualified` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否合格，1表示检查合格，0表示未检查或则不合格',
  `description` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '房屋描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  CONSTRAINT `houses_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `housestype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for housestype
-- ----------------------------
DROP TABLE IF EXISTS `housestype`;
CREATE TABLE `housestype`  (
  `id` int(11) NOT NULL COMMENT '类型编号',
  `typename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `hid` int(11) NULL DEFAULT NULL COMMENT '房屋编号',
  `image` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  INDEX `hid`(`hid`) USING BTREE,
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `houses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rent
-- ----------------------------
DROP TABLE IF EXISTS `rent`;
CREATE TABLE `rent`  (
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户编号',
  `hid` int(11) NULL DEFAULT NULL COMMENT '房屋编号',
  `starttime` timestamp(0) NULL DEFAULT NULL COMMENT '租房开始时间',
  `endtime` timestamp(0) NULL DEFAULT NULL COMMENT '租房结束时间',
  `price` decimal(8, 2) NULL DEFAULT NULL COMMENT '价格',
  `description` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '租房的描述:例如是否是整租，或则是单租某一个房间',
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `hid`(`hid`) USING BTREE,
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`hid`) REFERENCES `houses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号用于与其他表的关联作用',
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话号码和登录账号',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `role` int(11) NULL DEFAULT NULL COMMENT '角色：1：租客；2：房东；0：管理员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tel`(`tel`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
