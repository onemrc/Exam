/*
 Navicat MySQL Data Transfer

 Source Server         : one
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : exam

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 03/01/2018 18:01:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(32) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE,
  UNIQUE INDEX `category_name`(`category_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (4, 'test');
INSERT INTO `category` VALUES (3, '英语');
INSERT INTO `category` VALUES (2, '计算机');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `depart_id` int(32) NOT NULL AUTO_INCREMENT,
  `depart_jobNum` int(11) NOT NULL COMMENT '工号',
  `depart_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属单位',
  `depart_staff_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '组织部门人员姓名',
  `depart_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`depart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (11, 11, '梧州学院', '组织1', '11@qq.com');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `exam_id` int(32) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int(32) NOT NULL,
  `exam_time` datetime(0) NOT NULL,
  `exam_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exam_status` int(2) NOT NULL DEFAULT 0 COMMENT '未发布0 ；已发布1',
  PRIMARY KEY (`exam_id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (11, 'test-0', 3, '2018-01-02 12:00:00', '梧州学院', 1);
INSERT INTO `exam` VALUES (12, 'test-0', 4, '2018-01-09 17:40:00', '梧州学院', 1);
INSERT INTO `exam` VALUES (13, 'java', 2, '2018-01-16 00:00:00', '梧州学院', 0);

-- ----------------------------
-- Table structure for examine
-- ----------------------------
DROP TABLE IF EXISTS `examine`;
CREATE TABLE `examine`  (
  `ex_id` int(32) NOT NULL AUTO_INCREMENT,
  `stu_id` int(32) NULL DEFAULT NULL,
  `ex_status` int(2) NOT NULL DEFAULT 0 COMMENT '0 未进行审核  1 审核通过 2 审核未通过',
  `depart_id` int(32) NULL DEFAULT NULL,
  PRIMARY KEY (`ex_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examine
-- ----------------------------
INSERT INTO `examine` VALUES (8, 26, 1, NULL);
INSERT INTO `examine` VALUES (9, 27, 2, NULL);
INSERT INTO `examine` VALUES (10, NULL, 1, 10);
INSERT INTO `examine` VALUES (11, 28, 1, NULL);
INSERT INTO `examine` VALUES (12, 35, 2, NULL);
INSERT INTO `examine` VALUES (13, NULL, 1, 11);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` int(32) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice_about` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publishes_time` datetime(0) NOT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for signup
-- ----------------------------
DROP TABLE IF EXISTS `signup`;
CREATE TABLE `signup`  (
  `signUp_id` int(32) NOT NULL AUTO_INCREMENT,
  `exam_id` int(32) NOT NULL,
  `signUp_startTime` datetime(0) NOT NULL,
  `signUp_endTime` datetime(0) NOT NULL,
  `signUp_putTime` datetime(0) NOT NULL,
  PRIMARY KEY (`signUp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of signup
-- ----------------------------
INSERT INTO `signup` VALUES (3, 11, '2017-12-01 04:00:00', '2017-12-27 08:00:00', '2018-01-02 15:46:00');
INSERT INTO `signup` VALUES (4, 12, '2018-01-02 00:00:00', '2018-01-08 16:25:00', '2018-01-02 18:29:00');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu_id` int(32) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_IdNum` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_phone` int(11) NOT NULL,
  `stu_email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`stu_id`) USING BTREE,
  UNIQUE INDEX `stu_email`(`stu_email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (27, 'test02', '12', 1, '12@qq.com');
INSERT INTO `student` VALUES (28, '测试1', '111', 11, '11@qq.com');
INSERT INTO `student` VALUES (35, '测试2', '110', 11, '2@qq.com');

-- ----------------------------
-- Table structure for studentsignup
-- ----------------------------
DROP TABLE IF EXISTS `studentsignup`;
CREATE TABLE `studentsignup`  (
  `stu_id` int(32) NOT NULL,
  `stuSignUp_id` int(32) NOT NULL,
  `signUp_id` int(32) NOT NULL,
  `signUp_time` datetime(0) NOT NULL,
  PRIMARY KEY (`stuSignUp_id`) USING BTREE,
  INDEX `signUp_id`(`signUp_id`) USING BTREE,
  CONSTRAINT `signUp_id` FOREIGN KEY (`signUp_id`) REFERENCES `signup` (`signUp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_permit` int(2) NOT NULL COMMENT '0 管理员； 1学生用户 ； 2组织部门',
  `stu_id` int(32) NULL DEFAULT NULL,
  `depart_id` int(32) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_email`(`user_email`) USING BTREE,
  INDEX `stu_id`(`stu_id`) USING BTREE,
  INDEX `depart_id`(`depart_id`) USING BTREE,
  CONSTRAINT `stu_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`depart_id`) REFERENCES `department` (`depart_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (14, '测试1', '123', '11@qq.com', 1, 28, NULL);

SET FOREIGN_KEY_CHECKS = 1;
