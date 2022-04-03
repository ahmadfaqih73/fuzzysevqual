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

 Date: 03/04/2022 13:22:10
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
INSERT INTO `pernyataan_harapan` VALUES (3, 1, 'packaging/kemasan selalu rapi');
INSERT INTO `pernyataan_harapan` VALUES (4, 1, 'packing paket selalu aman');
INSERT INTO `pernyataan_harapan` VALUES (5, 1, 'barang tidak pernah lecet/rusak');
INSERT INTO `pernyataan_harapan` VALUES (6, 1, 'penjual selalu mengirim barang sesuai pesanan');
INSERT INTO `pernyataan_harapan` VALUES (7, 1, 'penjual selalu mencantumkan alamat pada paket dengan benar');
INSERT INTO `pernyataan_harapan` VALUES (8, 2, 'ketika sudah membuat sebuah kesepakatan, penjual menepati');
INSERT INTO `pernyataan_harapan` VALUES (9, 2, 'ketika ada masalah, penjual membantu memberikan solusi');
INSERT INTO `pernyataan_harapan` VALUES (10, 2, 'penjual memiliki pencatatan/rincian pesanan yang akurat');
INSERT INTO `pernyataan_harapan` VALUES (11, 2, 'kiriman paket datang tepat waktu sesuai perkiraan');
INSERT INTO `pernyataan_harapan` VALUES (13, 2, 'penjual dapat dipercaya tentang kualitas produk');
INSERT INTO `pernyataan_harapan` VALUES (14, 3, 'penjual menjawab pesan chat dengan cepat');
INSERT INTO `pernyataan_harapan` VALUES (15, 3, 'penjual selalu bersikap sopan');
INSERT INTO `pernyataan_harapan` VALUES (16, 3, 'penjual memiliki pengetahuan yang akurat terhadap produk');
INSERT INTO `pernyataan_harapan` VALUES (17, 3, 'saat ada keluhan, penjual dengan sigap menyelesaikan');
INSERT INTO `pernyataan_harapan` VALUES (18, 3, 'saat berkonsultasi, penjual memberikan solusi dengan tepat');
INSERT INTO `pernyataan_harapan` VALUES (19, 4, 'penjual memberikan keamanan saat bertransaksi');
INSERT INTO `pernyataan_harapan` VALUES (20, 4, 'penjual menjamin kualitas produk selalu bagus');
INSERT INTO `pernyataan_harapan` VALUES (21, 4, 'penjual menjamin kelebihan produk sesuai dengan yang di katakan');
INSERT INTO `pernyataan_harapan` VALUES (22, 4, 'jika ada kesalahan/kerusakan produk penjual mengganti dengan yang baru');
INSERT INTO `pernyataan_harapan` VALUES (23, 4, 'penjual berkata jujur kelebihan dan kekurangan produk');
INSERT INTO `pernyataan_harapan` VALUES (24, 11, 'penjual memberikan perhatian pada pelanggan');
INSERT INTO `pernyataan_harapan` VALUES (25, 11, 'penjual selalu membuat nyaman saat berkomunikasi');
INSERT INTO `pernyataan_harapan` VALUES (26, 11, 'penjual mengutamakan kepentingan pelanggan');
INSERT INTO `pernyataan_harapan` VALUES (27, 11, 'penjual memahami kebutuhan pelanggan');
INSERT INTO `pernyataan_harapan` VALUES (28, 11, 'penjual selalu bertanya keluhan/keinginan pelanggan');

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
