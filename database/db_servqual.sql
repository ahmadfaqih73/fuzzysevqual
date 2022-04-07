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

 Date: 07/04/2022 12:15:01
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
-- Table structure for kuisioner
-- ----------------------------
DROP TABLE IF EXISTS `kuisioner`;
CREATE TABLE `kuisioner`  (
  `id_kuisioner` int(11) NOT NULL AUTO_INCREMENT,
  `id_pernyataan` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `dimensi_id` int(11) NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Jenis` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kepuasan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kuisioner`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kuisioner
-- ----------------------------
INSERT INTO `kuisioner` VALUES (1, 1, 1, 1, '2022-04-07 06:59:36', 'Harapan', 'KTS');
INSERT INTO `kuisioner` VALUES (2, 2, 1, 1, '2022-04-07 06:59:36', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (3, 3, 1, 1, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (4, 4, 1, 1, '2022-04-07 06:59:36', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (5, 5, 1, 1, '2022-04-07 06:59:36', 'Harapan', 'S');
INSERT INTO `kuisioner` VALUES (6, 6, 1, 2, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (7, 7, 1, 2, '2022-04-07 06:59:36', 'Harapan', 'S');
INSERT INTO `kuisioner` VALUES (8, 8, 1, 2, '2022-04-07 06:59:36', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (9, 9, 1, 2, '2022-04-07 06:59:36', 'Harapan', 'KTS');
INSERT INTO `kuisioner` VALUES (10, 10, 1, 2, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (11, 11, 1, 3, '2022-04-07 06:59:36', 'Harapan', 'S');
INSERT INTO `kuisioner` VALUES (12, 12, 1, 3, '2022-04-07 06:59:36', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (13, 13, 1, 3, '2022-04-07 06:59:36', 'Harapan', 'SS');
INSERT INTO `kuisioner` VALUES (14, 14, 1, 3, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (15, 15, 1, 3, '2022-04-07 06:59:36', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (16, 16, 1, 4, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (17, 17, 1, 4, '2022-04-07 06:59:36', 'Harapan', 'KTS');
INSERT INTO `kuisioner` VALUES (18, 18, 1, 4, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (19, 19, 1, 4, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (20, 20, 1, 4, '2022-04-07 06:59:36', 'Harapan', 'KTS');
INSERT INTO `kuisioner` VALUES (21, 21, 1, 11, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (22, 22, 1, 11, '2022-04-07 06:59:36', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (23, 23, 1, 11, '2022-04-07 06:59:36', 'Harapan', 'S');
INSERT INTO `kuisioner` VALUES (24, 24, 1, 11, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (25, 25, 1, 11, '2022-04-07 06:59:36', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (26, 2, 1, 1, '2022-04-07 07:00:23', 'Persepsi', 'KTS');
INSERT INTO `kuisioner` VALUES (27, 3, 1, 1, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (28, 4, 1, 1, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (29, 5, 1, 1, '2022-04-07 07:00:23', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (30, 6, 1, 1, '2022-04-07 07:00:23', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (31, 7, 1, 2, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (32, 8, 1, 2, '2022-04-07 07:00:23', 'Persepsi', 'S');
INSERT INTO `kuisioner` VALUES (33, 9, 1, 2, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (34, 10, 1, 2, '2022-04-07 07:00:23', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (35, 11, 1, 2, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (36, 12, 1, 3, '2022-04-07 07:00:23', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (37, 13, 1, 3, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (38, 14, 1, 3, '2022-04-07 07:00:23', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (39, 15, 1, 3, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (40, 16, 1, 3, '2022-04-07 07:00:23', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (41, 17, 1, 4, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (42, 18, 1, 4, '2022-04-07 07:00:23', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (43, 19, 1, 4, '2022-04-07 07:00:23', 'Persepsi', 'S');
INSERT INTO `kuisioner` VALUES (44, 20, 1, 4, '2022-04-07 07:00:23', 'Persepsi', 'S');
INSERT INTO `kuisioner` VALUES (45, 21, 1, 4, '2022-04-07 07:00:23', 'Persepsi', 'S');
INSERT INTO `kuisioner` VALUES (46, 22, 1, 11, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (47, 23, 1, 11, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (48, 24, 1, 11, '2022-04-07 07:00:23', 'Persepsi', 'S');
INSERT INTO `kuisioner` VALUES (49, 25, 1, 11, '2022-04-07 07:00:23', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (50, 26, 1, 11, '2022-04-07 07:00:23', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (51, 1, 2, 1, '2022-04-07 07:01:19', 'Harapan', 'KTS');
INSERT INTO `kuisioner` VALUES (52, 2, 2, 1, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (53, 3, 2, 1, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (54, 4, 2, 1, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (55, 5, 2, 1, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (56, 6, 2, 2, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (57, 7, 2, 2, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (58, 8, 2, 2, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (59, 9, 2, 2, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (60, 10, 2, 2, '2022-04-07 07:01:19', 'Harapan', 'S');
INSERT INTO `kuisioner` VALUES (61, 11, 2, 3, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (62, 12, 2, 3, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (63, 13, 2, 3, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (64, 14, 2, 3, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (65, 15, 2, 3, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (66, 16, 2, 4, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (67, 17, 2, 4, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (68, 18, 2, 4, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (69, 19, 2, 4, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (70, 20, 2, 4, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (71, 21, 2, 11, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (72, 22, 2, 11, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (73, 23, 2, 11, '2022-04-07 07:01:19', 'Harapan', 'KS');
INSERT INTO `kuisioner` VALUES (74, 24, 2, 11, '2022-04-07 07:01:19', 'Harapan', 'S');
INSERT INTO `kuisioner` VALUES (75, 25, 2, 11, '2022-04-07 07:01:19', 'Harapan', 'CS');
INSERT INTO `kuisioner` VALUES (76, 2, 2, 1, '2022-04-07 07:02:18', 'Persepsi', 'KTS');
INSERT INTO `kuisioner` VALUES (77, 3, 2, 1, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (78, 4, 2, 1, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (79, 5, 2, 1, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (80, 6, 2, 1, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (81, 7, 2, 2, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (82, 8, 2, 2, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (83, 9, 2, 2, '2022-04-07 07:02:18', 'Persepsi', 'S');
INSERT INTO `kuisioner` VALUES (84, 10, 2, 2, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (85, 11, 2, 2, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (86, 12, 2, 3, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (87, 13, 2, 3, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (88, 14, 2, 3, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (89, 15, 2, 3, '2022-04-07 07:02:18', 'Persepsi', 'SS');
INSERT INTO `kuisioner` VALUES (90, 16, 2, 3, '2022-04-07 07:02:18', 'Persepsi', 'S');
INSERT INTO `kuisioner` VALUES (91, 17, 2, 4, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (92, 18, 2, 4, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (93, 19, 2, 4, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (94, 20, 2, 4, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (95, 21, 2, 4, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (96, 22, 2, 11, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (97, 23, 2, 11, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (98, 24, 2, 11, '2022-04-07 07:02:18', 'Persepsi', 'CS');
INSERT INTO `kuisioner` VALUES (99, 25, 2, 11, '2022-04-07 07:02:18', 'Persepsi', 'KS');
INSERT INTO `kuisioner` VALUES (100, 26, 2, 11, '2022-04-07 07:02:18', 'Persepsi', 'CS');

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan`  (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `Nama_Pelanggan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
