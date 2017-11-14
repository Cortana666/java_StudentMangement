/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : javawebtest

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 14/11/2017 20:20:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `gid` int(10) NOT NULL,
  `php` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `java` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `asp` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`gid`) USING BTREE,
  CONSTRAINT `id` FOREIGN KEY (`gid`) REFERENCES `information` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` int(10) NOT NULL,
  `name` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  `idcard` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(0) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Procedure structure for gradedelete
-- ----------------------------
DROP PROCEDURE IF EXISTS `gradedelete`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gradedelete`(IN `cid` int)
BEGIN
	DELETE FROM grade WHERE gid = cid;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for studentdelete
-- ----------------------------
DROP PROCEDURE IF EXISTS `studentdelete`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `studentdelete`(IN `cid` int)
BEGIN
	DELETE FROM information WHERE id = cid;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table information
-- ----------------------------
DROP TRIGGER IF EXISTS `studelete`;
delimiter ;;
CREATE TRIGGER `studelete` BEFORE DELETE ON `information` FOR EACH ROW begin  
      delete from grade where gid = old.id;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
