/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : db_servqual

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 17/04/2022 20:20:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dimensi
-- ----------------------------
DROP TABLE IF EXISTS `dimensi`;
CREATE TABLE `dimensi`  (
  `id_dimensi` int(11) NOT NULL AUTO_INCREMENT,
  `Nama_dimensi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dimensi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dimensi
-- ----------------------------
INSERT INTO `dimensi` VALUES (1, 'Tangibles');
INSERT INTO `dimensi` VALUES (2, 'Reliability');
INSERT INTO `dimensi` VALUES (3, 'Responsiveness');
INSERT INTO `dimensi` VALUES (4, 'Assurance');
INSERT INTO `dimensi` VALUES (11, 'Empathy');

-- ----------------------------
-- Table structure for fuzzyfikasi_harapan
-- ----------------------------
DROP TABLE IF EXISTS `fuzzyfikasi_harapan`;
CREATE TABLE `fuzzyfikasi_harapan`  (
  `id_fuzzyfikasi_harapan` int(11) NOT NULL AUTO_INCREMENT,
  `dimensi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c` double NULL DEFAULT NULL,
  `a` double NULL DEFAULT NULL,
  `b` double NULL DEFAULT NULL,
  `defuz_harapan` double NULL DEFAULT NULL,
  PRIMARY KEY (`id_fuzzyfikasi_harapan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fuzzyfikasi_harapan
-- ----------------------------
INSERT INTO `fuzzyfikasi_harapan` VALUES (1, 'Tangibles', 1, 2.1666666666667, 3.3333333333333, 2.75);
INSERT INTO `fuzzyfikasi_harapan` VALUES (2, 'Tangibles', 1, 2.5, 4, 3.25);
INSERT INTO `fuzzyfikasi_harapan` VALUES (3, 'Tangibles', 1, 2.1666666666667, 3.3333333333333, 2.75);
INSERT INTO `fuzzyfikasi_harapan` VALUES (4, 'Tangibles', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (5, 'Tangibles', 1.3333333333333, 2.6666666666667, 4, 3.3333333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (6, 'Reliability', 1, 2.5, 4, 3.25);
INSERT INTO `fuzzyfikasi_harapan` VALUES (7, 'Reliability', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_harapan` VALUES (8, 'Reliability', 1, 2.5, 4, 3.25);
INSERT INTO `fuzzyfikasi_harapan` VALUES (9, 'Reliability', 1.3333333333333, 2.6666666666667, 4, 3.3333333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (10, 'Reliability', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (11, 'Responsiveness', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_harapan` VALUES (12, 'Responsiveness', 1.6666666666667, 3.1666666666667, 4.6666666666667, 3.9166666666667);
INSERT INTO `fuzzyfikasi_harapan` VALUES (13, 'Responsiveness', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (14, 'Responsiveness', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_harapan` VALUES (15, 'Responsiveness', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (16, 'Assurance', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (17, 'Assurance', 1.6666666666667, 3.1666666666667, 4.6666666666667, 3.9166666666667);
INSERT INTO `fuzzyfikasi_harapan` VALUES (18, 'Assurance', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_harapan` VALUES (19, 'Assurance', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_harapan` VALUES (20, 'Assurance', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (21, 'Empathy', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (22, 'Empathy', 1.6666666666667, 3.1666666666667, 4.6666666666667, 3.9166666666667);
INSERT INTO `fuzzyfikasi_harapan` VALUES (23, 'Empathy', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_harapan` VALUES (24, 'Empathy', 3.6666666666667, 5.1666666666667, 6.6666666666667, 5.9166666666667);
INSERT INTO `fuzzyfikasi_harapan` VALUES (25, 'Empathy', 1.6666666666667, 3.1666666666667, 4.6666666666667, 3.9166666666667);

-- ----------------------------
-- Table structure for fuzzyfikasi_persepsi
-- ----------------------------
DROP TABLE IF EXISTS `fuzzyfikasi_persepsi`;
CREATE TABLE `fuzzyfikasi_persepsi`  (
  `id_fuzzyfikasi_persepsi` int(11) NOT NULL AUTO_INCREMENT,
  `dimensi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c` double NULL DEFAULT NULL,
  `a` double NULL DEFAULT NULL,
  `b` double NULL DEFAULT NULL,
  `defuz_persepsi` double NULL DEFAULT NULL,
  PRIMARY KEY (`id_fuzzyfikasi_persepsi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fuzzyfikasi_persepsi
-- ----------------------------
INSERT INTO `fuzzyfikasi_persepsi` VALUES (1, 'Tangibles', 2, 3.5, 5, 4.25);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (2, 'Tangibles', 1, 2.5, 4, 3.25);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (3, 'Tangibles', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (4, 'Tangibles', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (5, 'Tangibles', 4.3333333333333, 5.8333333333333, 7.3333333333333, 6.5833333333333);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (6, 'Reliability', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (7, 'Reliability', 1.6666666666667, 3.1666666666667, 4.6666666666667, 3.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (8, 'Reliability', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (9, 'Reliability', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (10, 'Reliability', 3.6666666666667, 5.1666666666667, 6.6666666666667, 5.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (11, 'Responsiveness', 1.6666666666667, 3.1666666666667, 4.6666666666667, 3.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (12, 'Responsiveness', 3.6666666666667, 5.1666666666667, 6.6666666666667, 5.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (13, 'Responsiveness', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (14, 'Responsiveness', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (15, 'Responsiveness', 1.6666666666667, 3.1666666666667, 4.6666666666667, 3.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (16, 'Assurance', 3.6666666666667, 5.1666666666667, 6.6666666666667, 5.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (17, 'Assurance', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (18, 'Assurance', 3.6666666666667, 5.1666666666667, 6.6666666666667, 5.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (19, 'Assurance', 3.6666666666667, 5.1666666666667, 6.6666666666667, 5.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (20, 'Assurance', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (21, 'Empathy', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (22, 'Empathy', 3, 4.5, 6, 5.25);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (23, 'Empathy', 2.3333333333333, 3.8333333333333, 5.3333333333333, 4.5833333333333);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (24, 'Empathy', 1.6666666666667, 3.1666666666667, 4.6666666666667, 3.9166666666667);
INSERT INTO `fuzzyfikasi_persepsi` VALUES (25, 'Empathy', 3.6666666666667, 5.1666666666667, 6.6666666666667, 5.9166666666667);

-- ----------------------------
-- Table structure for hasil
-- ----------------------------
DROP TABLE IF EXISTS `hasil`;
CREATE TABLE `hasil`  (
  `id_GAP` int(11) NOT NULL AUTO_INCREMENT,
  `dimensi` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `GAP` double NULL DEFAULT NULL,
  PRIMARY KEY (`id_GAP`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hasil
-- ----------------------------
INSERT INTO `hasil` VALUES (1, 'Assurance', 0.8);
INSERT INTO `hasil` VALUES (2, 'Empathy', 0.6);
INSERT INTO `hasil` VALUES (3, 'Reliability', 0.8);
INSERT INTO `hasil` VALUES (4, 'Responsiveness', 0.2);
INSERT INTO `hasil` VALUES (5, 'Tangibles', 0.925);

-- ----------------------------
-- Table structure for kepuasan
-- ----------------------------
DROP TABLE IF EXISTS `kepuasan`;
CREATE TABLE `kepuasan`  (
  `id_kepuasaan` int(11) NOT NULL AUTO_INCREMENT,
  `Kepuasan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Nilai` double(11, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kepuasaan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kepuasan
-- ----------------------------
INSERT INTO `kepuasan` VALUES (1, 'STS', 'Sangat Tidak Setuju', 1);
INSERT INTO `kepuasan` VALUES (2, 'KS', 'Kurang Setuju', 1);
INSERT INTO `kepuasan` VALUES (3, 'CS', 'Cukup Setuju', 1);
INSERT INTO `kepuasan` VALUES (4, 'S', 'Setuju', 1);
INSERT INTO `kepuasan` VALUES (6, 'SS', 'Sangat Setuju', 1);

-- ----------------------------
-- Table structure for kuisioner_harapan
-- ----------------------------
DROP TABLE IF EXISTS `kuisioner_harapan`;
CREATE TABLE `kuisioner_harapan`  (
  `id_kuisioner_harapan` int(11) NOT NULL AUTO_INCREMENT,
  `pernyataan_idharapan` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dimensi_id` int(11) NOT NULL,
  `created_at` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Jenis` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `STS` int(11) NULL DEFAULT NULL,
  `KS` int(11) NULL DEFAULT NULL,
  `CS` int(11) NULL DEFAULT NULL,
  `S` int(11) NULL DEFAULT NULL,
  `SS` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kuisioner_harapan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kuisioner_harapan
-- ----------------------------
INSERT INTO `kuisioner_harapan` VALUES (1, 1, 1, 1, '2022-04-10 10:44:29', 'Harapan', 1, 0, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (2, 2, 1, 1, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (3, 3, 1, 1, '2022-04-10 10:44:29', 'Harapan', 1, 0, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (4, 4, 1, 1, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (5, 5, 1, 1, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (6, 6, 1, 2, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (7, 7, 1, 2, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (8, 8, 1, 2, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (9, 9, 1, 2, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (10, 10, 1, 2, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (11, 11, 1, 3, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (12, 12, 1, 3, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (13, 13, 1, 3, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (14, 14, 1, 3, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (15, 15, 1, 3, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (16, 16, 1, 4, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (17, 17, 1, 4, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (18, 18, 1, 4, '2022-04-10 10:44:29', 'Harapan', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_harapan` VALUES (19, 19, 1, 4, '2022-04-10 10:44:29', 'Harapan', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_harapan` VALUES (20, 20, 1, 4, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (21, 21, 1, 11, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (22, 22, 1, 11, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (23, 23, 1, 11, '2022-04-10 10:44:29', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (24, 24, 1, 11, '2022-04-10 10:44:29', 'Harapan', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_harapan` VALUES (25, 25, 1, 11, '2022-04-10 10:44:29', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (26, 1, 2, 1, '2022-04-10 10:45:17', 'Harapan', 1, 0, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (27, 2, 2, 1, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (28, 3, 2, 1, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (29, 4, 2, 1, '2022-04-10 10:45:17', 'Harapan', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_harapan` VALUES (30, 5, 2, 1, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (31, 6, 2, 2, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (32, 7, 2, 2, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (33, 8, 2, 2, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (34, 9, 2, 2, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (35, 10, 2, 2, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (36, 11, 2, 3, '2022-04-10 10:45:17', 'Harapan', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_harapan` VALUES (37, 12, 2, 3, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (38, 13, 2, 3, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (39, 14, 2, 3, '2022-04-10 10:45:17', 'Harapan', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_harapan` VALUES (40, 15, 2, 3, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (41, 16, 2, 4, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (42, 17, 2, 4, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (43, 18, 2, 4, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (44, 19, 2, 4, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (45, 20, 2, 4, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (46, 21, 2, 11, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (47, 22, 2, 11, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (48, 23, 2, 11, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (49, 24, 2, 11, '2022-04-10 10:45:17', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (50, 25, 2, 11, '2022-04-10 10:45:17', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (51, 1, 4, 1, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (52, 2, 4, 1, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (53, 3, 4, 1, '2022-04-17 11:30:32', 'Harapan', 1, 0, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (54, 4, 4, 1, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (55, 5, 4, 1, '2022-04-17 11:30:32', 'Harapan', 1, 0, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (56, 6, 4, 2, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (57, 7, 4, 2, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (58, 8, 4, 2, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (59, 9, 4, 2, '2022-04-17 11:30:32', 'Harapan', 1, 0, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (60, 10, 4, 2, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (61, 11, 4, 3, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (62, 12, 4, 3, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (63, 13, 4, 3, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (64, 14, 4, 3, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (65, 15, 4, 3, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (66, 16, 4, 4, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (67, 17, 4, 4, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (68, 18, 4, 4, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (69, 19, 4, 4, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (70, 20, 4, 4, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (71, 21, 4, 11, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (72, 22, 4, 11, '2022-04-17 11:30:32', 'Harapan', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (73, 23, 4, 11, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_harapan` VALUES (74, 24, 4, 11, '2022-04-17 11:30:32', 'Harapan', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_harapan` VALUES (75, 25, 4, 11, '2022-04-17 11:30:32', 'Harapan', 0, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for kuisioner_persepsi
-- ----------------------------
DROP TABLE IF EXISTS `kuisioner_persepsi`;
CREATE TABLE `kuisioner_persepsi`  (
  `id_kuisioner_persepsi` int(11) NOT NULL AUTO_INCREMENT,
  `pernyataan_persepsi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dimensi_id` int(11) NOT NULL,
  `created_at` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Jenis` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `STS` int(10) NULL DEFAULT NULL,
  `KS` int(10) NULL DEFAULT NULL,
  `CS` int(10) NULL DEFAULT NULL,
  `S` int(10) NULL DEFAULT NULL,
  `SS` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kuisioner_persepsi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kuisioner_persepsi
-- ----------------------------
INSERT INTO `kuisioner_persepsi` VALUES (1, 2, 1, 1, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (2, 3, 1, 1, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (3, 4, 1, 1, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (4, 5, 1, 1, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (5, 6, 1, 1, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (6, 7, 1, 2, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (7, 8, 1, 2, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (8, 9, 1, 2, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (9, 10, 1, 2, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (10, 11, 1, 2, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (11, 12, 1, 3, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (12, 13, 1, 3, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (13, 14, 1, 3, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (14, 15, 1, 3, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (15, 16, 1, 3, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (16, 17, 1, 4, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (17, 18, 1, 4, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (18, 19, 1, 4, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (19, 20, 1, 4, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (20, 21, 1, 4, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (21, 22, 1, 11, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (22, 23, 1, 11, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (23, 24, 1, 11, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (24, 25, 1, 11, '2022-04-10 16:46:55', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (25, 26, 1, 11, '2022-04-10 16:46:55', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (26, 2, 2, 1, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (27, 3, 2, 1, '2022-04-10 16:47:27', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (28, 4, 2, 1, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (29, 5, 2, 1, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (30, 6, 2, 1, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (31, 7, 2, 2, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (32, 8, 2, 2, '2022-04-10 16:47:27', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (33, 9, 2, 2, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (34, 10, 2, 2, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (35, 11, 2, 2, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (36, 12, 2, 3, '2022-04-10 16:47:27', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (37, 13, 2, 3, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (38, 14, 2, 3, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (39, 15, 2, 3, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (40, 16, 2, 3, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (41, 17, 2, 4, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (42, 18, 2, 4, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (43, 19, 2, 4, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (44, 20, 2, 4, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (45, 21, 2, 4, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (46, 22, 2, 11, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (47, 23, 2, 11, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (48, 24, 2, 11, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (49, 25, 2, 11, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (50, 26, 2, 11, '2022-04-10 16:47:27', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (51, 2, 4, 1, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (52, 3, 4, 1, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (53, 4, 4, 1, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (54, 5, 4, 1, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (55, 6, 4, 1, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (56, 7, 4, 2, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (57, 8, 4, 2, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (58, 9, 4, 2, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (59, 10, 4, 2, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (60, 11, 4, 2, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (61, 12, 4, 3, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (62, 13, 4, 3, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (63, 14, 4, 3, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (64, 15, 4, 3, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (65, 16, 4, 3, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (66, 17, 4, 4, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (67, 18, 4, 4, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (68, 19, 4, 4, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (69, 20, 4, 4, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 0, 1, 0);
INSERT INTO `kuisioner_persepsi` VALUES (70, 21, 4, 4, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (71, 22, 4, 11, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (72, 23, 4, 11, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (73, 24, 4, 11, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (74, 25, 4, 11, '2022-04-17 11:31:06', 'Persepsi', 0, 1, 0, 0, 0);
INSERT INTO `kuisioner_persepsi` VALUES (75, 26, 4, 11, '2022-04-17 11:31:06', 'Persepsi', 0, 0, 1, 0, 0);

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan`  (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `namapelanggan` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nohp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_pelanggan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES (2, 'Faqih', '1', 'Maron', '087760115049');
INSERT INTO `pelanggan` VALUES (3, 'dani', '1', 'Genteng', '058776424124');

-- ----------------------------
-- Table structure for pernyataan_harapan
-- ----------------------------
DROP TABLE IF EXISTS `pernyataan_harapan`;
CREATE TABLE `pernyataan_harapan`  (
  `id_pernyataan_harapan` int(11) NOT NULL AUTO_INCREMENT,
  `Antribut` int(11) NOT NULL,
  `Pernyataan_harapan` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_pernyataan_harapan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pernyataan_harapan
-- ----------------------------
INSERT INTO `pernyataan_harapan` VALUES (1, 1, 'packaging/kemasan selalu rapi');
INSERT INTO `pernyataan_harapan` VALUES (2, 1, 'packing paket selalu aman');
INSERT INTO `pernyataan_harapan` VALUES (3, 1, 'barang tidak pernah lecet/rusak');
INSERT INTO `pernyataan_harapan` VALUES (4, 1, 'penjual selalu mengirim barang sesuai pesanan');
INSERT INTO `pernyataan_harapan` VALUES (5, 1, 'penjual selalu mencantumkan alamat pada paket dengan benar');
INSERT INTO `pernyataan_harapan` VALUES (6, 2, 'ketika sudah membuat sebuah kesepakatan, penjual menepati');
INSERT INTO `pernyataan_harapan` VALUES (7, 2, 'ketika ada masalah, penjual membantu memberikan solusi');
INSERT INTO `pernyataan_harapan` VALUES (8, 2, 'penjual memiliki pencatatan/rincian pesanan yang akurat');
INSERT INTO `pernyataan_harapan` VALUES (9, 2, 'kiriman paket datang tepat waktu sesuai perkiraan');
INSERT INTO `pernyataan_harapan` VALUES (10, 2, 'penjual dapat dipercaya tentang kualitas produk');
INSERT INTO `pernyataan_harapan` VALUES (11, 3, 'penjual menjawab pesan chat dengan cepat');
INSERT INTO `pernyataan_harapan` VALUES (12, 3, 'penjual selalu bersikap sopan');
INSERT INTO `pernyataan_harapan` VALUES (13, 3, 'penjual memiliki pengetahuan yang akurat terhadap produk');
INSERT INTO `pernyataan_harapan` VALUES (14, 3, 'saat ada keluhan, penjual dengan sigap menyelesaikan');
INSERT INTO `pernyataan_harapan` VALUES (15, 3, 'saat berkonsultasi, penjual memberikan solusi dengan tepat');
INSERT INTO `pernyataan_harapan` VALUES (16, 4, 'penjual memberikan keamanan saat bertransaksi');
INSERT INTO `pernyataan_harapan` VALUES (17, 4, 'penjual menjamin kualitas produk selalu bagus');
INSERT INTO `pernyataan_harapan` VALUES (18, 4, 'penjual menjamin kelebihan produk sesuai dengan yang di katakan');
INSERT INTO `pernyataan_harapan` VALUES (19, 4, 'jika ada kesalahan/kerusakan produk penjual mengganti dengan yang baru');
INSERT INTO `pernyataan_harapan` VALUES (20, 4, 'penjual berkata jujur kelebihan dan kekurangan produk');
INSERT INTO `pernyataan_harapan` VALUES (21, 11, 'penjual memberikan perhatian pada pelanggan');
INSERT INTO `pernyataan_harapan` VALUES (22, 11, 'penjual selalu membuat nyaman saat berkomunikasi');
INSERT INTO `pernyataan_harapan` VALUES (23, 11, 'penjual mengutamakan kepentingan pelanggan');
INSERT INTO `pernyataan_harapan` VALUES (24, 11, 'penjual memahami kebutuhan pelanggan');
INSERT INTO `pernyataan_harapan` VALUES (25, 11, 'penjual selalu bertanya keluhan/keinginan pelanggan');

-- ----------------------------
-- Table structure for pernyataan_persepsi
-- ----------------------------
DROP TABLE IF EXISTS `pernyataan_persepsi`;
CREATE TABLE `pernyataan_persepsi`  (
  `id_pernyataan_persepsi` int(11) NOT NULL AUTO_INCREMENT,
  `Antribut` int(11) NOT NULL,
  `Pernyataan_Persepsi` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_pernyataan_persepsi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pernyataan_persepsi
-- ----------------------------
INSERT INTO `pernyataan_persepsi` VALUES (2, 1, 'kerapian packaging/kemasan');
INSERT INTO `pernyataan_persepsi` VALUES (3, 1, 'keamanan packing paket');
INSERT INTO `pernyataan_persepsi` VALUES (4, 1, 'keaslian produk (selalu baru, tidak rusak)');
INSERT INTO `pernyataan_persepsi` VALUES (5, 1, 'kesesuaian pesanan');
INSERT INTO `pernyataan_persepsi` VALUES (6, 1, 'kesesuaian identitas pada paket');
INSERT INTO `pernyataan_persepsi` VALUES (7, 2, 'sikap penjual dalam menyepakati kesepakatan');
INSERT INTO `pernyataan_persepsi` VALUES (8, 2, 'sikap penjual dalam memberikan solusi');
INSERT INTO `pernyataan_persepsi` VALUES (9, 2, 'kesesuaian pesanan dengan rincian yang diberikan penjual');
INSERT INTO `pernyataan_persepsi` VALUES (10, 2, 'perkiraan penjual tentang estimasi paket akan sampai');
INSERT INTO `pernyataan_persepsi` VALUES (11, 2, 'kualitas produk yang diuraikan penjual');
INSERT INTO `pernyataan_persepsi` VALUES (12, 3, 'kecepatan penjual dalam merespon chat');
INSERT INTO `pernyataan_persepsi` VALUES (13, 3, 'kesopanan penjual');
INSERT INTO `pernyataan_persepsi` VALUES (14, 3, 'pengetahuan penjual terhadap produk yang dijual');
INSERT INTO `pernyataan_persepsi` VALUES (15, 3, 'sikap penjual dalam menghadapi keluhan pembeli');
INSERT INTO `pernyataan_persepsi` VALUES (16, 3, 'ketepatan penjual dalam memberikan solusi yang dirasakan pembeli');
INSERT INTO `pernyataan_persepsi` VALUES (17, 4, 'keamanan dalam bertransaksi');
INSERT INTO `pernyataan_persepsi` VALUES (18, 4, 'jaminan kualitas produk');
INSERT INTO `pernyataan_persepsi` VALUES (19, 4, 'jaminan kelebihan produk sesuai yang dikatakan penjual');
INSERT INTO `pernyataan_persepsi` VALUES (20, 4, 'jaminan apabila barang salah/rusak diganti yang baru');
INSERT INTO `pernyataan_persepsi` VALUES (21, 4, 'kejujuran penjual terhadap kelebihan & kekurangan produk');
INSERT INTO `pernyataan_persepsi` VALUES (22, 11, 'perhatian penjual terhadap pelanggan');
INSERT INTO `pernyataan_persepsi` VALUES (23, 11, 'kenyamanan dalam berkomunikasi');
INSERT INTO `pernyataan_persepsi` VALUES (24, 11, 'prioritas penjual dalam mendahulukan kepentingan pelanggan');
INSERT INTO `pernyataan_persepsi` VALUES (25, 11, 'sikap penjual dalam memahami kebutuhan pelanggan');
INSERT INTO `pernyataan_persepsi` VALUES (26, 11, 'sikap penjual yang selalu menanyakan keluhan/keinginan pelanggan');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Role_user` int(7) NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'faq', 'faq', '202cb962ac59075b964b07152d234b70', 1);
INSERT INTO `users` VALUES (2, 'danis', 'danis', '202cb962ac59075b964b07152d234b70', 2);
INSERT INTO `users` VALUES (4, 'mami', 'mami', '202cb962ac59075b964b07152d234b70', 0);

SET FOREIGN_KEY_CHECKS = 1;
