/*
 Navicat Premium Data Transfer

 Source Server         : koneksi01
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : db_mavericks

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 06/06/2023 10:30:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for curah_hujan
-- ----------------------------
DROP TABLE IF EXISTS `curah_hujan`;
CREATE TABLE `curah_hujan`  (
  `id_curah_hujan` int NOT NULL AUTO_INCREMENT,
  `tingkat_ch` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ket_ch` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_curah_hujan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of curah_hujan
-- ----------------------------
INSERT INTO `curah_hujan` VALUES (1, '0mm/hari', 'Berawan');
INSERT INTO `curah_hujan` VALUES (2, '0.5 - 20mm/hari', 'Hujan Ringan');
INSERT INTO `curah_hujan` VALUES (3, '20 - 50mm/hari', 'Hujan Sedang');
INSERT INTO `curah_hujan` VALUES (4, '50 - 100mm/hari', 'Hujan lebat');
INSERT INTO `curah_hujan` VALUES (5, '100 - 150 mm/hari', 'Hujan sangat lebat');
INSERT INTO `curah_hujan` VALUES (6, '>150 mm/hari', 'Hujan ekstrem');

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `posisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'queenxhr', 'Ratu Syahirah Khairunnisa', '$2y$10$TuutjyT3E65/97UxGF3RauRKeYyOhMDMf4ZPQOI6Oux68NEw0U/la', 'Frontend Developer');
INSERT INTO `t_admin` VALUES (2, 'bibil', 'Nabila Asyifa', '$2y$10$TuutjyT3E65/97UxGF3RauRKeYyOhMDMf4ZPQOI6Oux68NEw0U/la', 'Backend Developer');
INSERT INTO `t_admin` VALUES (3, 'fatish', 'Mohammad Faridz Fathin', '$2y$10$TuutjyT3E65/97UxGF3RauRKeYyOhMDMf4ZPQOI6Oux68NEw0U/la', 'Backend Developer');

-- ----------------------------
-- Table structure for t_bulan
-- ----------------------------
DROP TABLE IF EXISTS `t_bulan`;
CREATE TABLE `t_bulan`  (
  `id_bulan` int NOT NULL AUTO_INCREMENT,
  `nama_bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_bulan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_bulan
-- ----------------------------
INSERT INTO `t_bulan` VALUES (1, 'JANUARI');
INSERT INTO `t_bulan` VALUES (2, 'FEBRUARI');
INSERT INTO `t_bulan` VALUES (3, 'MARET');
INSERT INTO `t_bulan` VALUES (4, 'APRIL');
INSERT INTO `t_bulan` VALUES (5, 'MEI');
INSERT INTO `t_bulan` VALUES (6, 'JUNI');
INSERT INTO `t_bulan` VALUES (7, 'JULI');
INSERT INTO `t_bulan` VALUES (8, 'AGUSTUS');
INSERT INTO `t_bulan` VALUES (9, 'SEPTEMBER');
INSERT INTO `t_bulan` VALUES (10, 'OKTOBER');
INSERT INTO `t_bulan` VALUES (11, 'NOVEMBER');
INSERT INTO `t_bulan` VALUES (12, 'DESEMBER');

-- ----------------------------
-- Table structure for t_ch
-- ----------------------------
DROP TABLE IF EXISTS `t_ch`;
CREATE TABLE `t_ch`  (
  `id_kasus` int NOT NULL AUTO_INCREMENT,
  `id_tahun` int NOT NULL,
  `id_kota` int NOT NULL,
  `id_ch` int NOT NULL,
  `jumah_ch` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kasus`) USING BTREE,
  INDEX `id_thn`(`id_tahun` ASC) USING BTREE,
  INDEX `id_kota`(`id_kota` ASC) USING BTREE,
  INDEX `id_ch`(`id_ch` ASC) USING BTREE,
  CONSTRAINT `t_ch` FOREIGN KEY (`id_ch`) REFERENCES `curah_hujan` (`id_curah_hujan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_ch_ibfk_5` FOREIGN KEY (`id_kota`) REFERENCES `t_kab_kota` (`id_kab`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_ch_ibfk_6` FOREIGN KEY (`id_tahun`) REFERENCES `t_tahun` (`id_tahun`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 382 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ch
-- ----------------------------
INSERT INTO `t_ch` VALUES (1, 1, 1, 6, '1114');
INSERT INTO `t_ch` VALUES (2, 1, 1, 5, '60');
INSERT INTO `t_ch` VALUES (3, 1, 1, 4, '36');
INSERT INTO `t_ch` VALUES (4, 1, 2, 6, '568');
INSERT INTO `t_ch` VALUES (5, 1, 2, 2, '16');
INSERT INTO `t_ch` VALUES (6, 1, 2, 3, '16');
INSERT INTO `t_ch` VALUES (8, 1, 2, 5, '16');
INSERT INTO `t_ch` VALUES (10, 1, 3, 6, '587');
INSERT INTO `t_ch` VALUES (11, 1, 3, 5, '23');
INSERT INTO `t_ch` VALUES (12, 1, 3, 2, '9');
INSERT INTO `t_ch` VALUES (13, 1, 3, 1, '2');
INSERT INTO `t_ch` VALUES (14, 1, 3, 4, '22');
INSERT INTO `t_ch` VALUES (16, 1, 4, 6, '2096');
INSERT INTO `t_ch` VALUES (17, 1, 4, 3, '116');
INSERT INTO `t_ch` VALUES (18, 1, 4, 2, '72');
INSERT INTO `t_ch` VALUES (19, 1, 4, 1, '38');
INSERT INTO `t_ch` VALUES (20, 1, 4, 4, '313');
INSERT INTO `t_ch` VALUES (21, 1, 5, 2, '519');
INSERT INTO `t_ch` VALUES (22, 1, 5, 3, '250');
INSERT INTO `t_ch` VALUES (24, 1, 6, 6, '151');
INSERT INTO `t_ch` VALUES (25, 1, 6, 4, '37');
INSERT INTO `t_ch` VALUES (26, 1, 6, 2, '16');
INSERT INTO `t_ch` VALUES (27, 1, 6, 1, '4');
INSERT INTO `t_ch` VALUES (30, 1, 6, 3, '2');
INSERT INTO `t_ch` VALUES (34, 1, 7, 6, '348');
INSERT INTO `t_ch` VALUES (35, 1, 7, 2, '34');
INSERT INTO `t_ch` VALUES (37, 1, 7, 4, '22');
INSERT INTO `t_ch` VALUES (38, 1, 8, 6, '461');
INSERT INTO `t_ch` VALUES (39, 1, 8, 3, '35');
INSERT INTO `t_ch` VALUES (40, 1, 8, 4, '9');
INSERT INTO `t_ch` VALUES (41, 1, 9, 2, '480');
INSERT INTO `t_ch` VALUES (42, 1, 9, 3, '810');
INSERT INTO `t_ch` VALUES (45, 1, 9, 1, '1');
INSERT INTO `t_ch` VALUES (46, 1, 10, 6, '358');
INSERT INTO `t_ch` VALUES (47, 1, 10, 5, '79');
INSERT INTO `t_ch` VALUES (50, 1, 10, 1, '12');
INSERT INTO `t_ch` VALUES (51, 1, 10, 4, '8');
INSERT INTO `t_ch` VALUES (54, 1, 11, 3, '450');
INSERT INTO `t_ch` VALUES (55, 1, 11, 2, '213');
INSERT INTO `t_ch` VALUES (57, 1, 12, 4, '18');
INSERT INTO `t_ch` VALUES (58, 1, 12, 5, '31');
INSERT INTO `t_ch` VALUES (59, 1, 12, 6, '168');
INSERT INTO `t_ch` VALUES (60, 1, 12, 3, '4');
INSERT INTO `t_ch` VALUES (61, 1, 12, 2, '1');
INSERT INTO `t_ch` VALUES (64, 1, 13, 4, '66');
INSERT INTO `t_ch` VALUES (65, 1, 13, 3, '167');
INSERT INTO `t_ch` VALUES (66, 1, 13, 2, '35');
INSERT INTO `t_ch` VALUES (68, 1, 13, 1, '2');
INSERT INTO `t_ch` VALUES (69, 1, 14, 6, '516');
INSERT INTO `t_ch` VALUES (70, 1, 14, 4, '10');
INSERT INTO `t_ch` VALUES (71, 1, 14, 3, '11');
INSERT INTO `t_ch` VALUES (72, 1, 14, 2, '3');
INSERT INTO `t_ch` VALUES (73, 1, 14, 1, '0');
INSERT INTO `t_ch` VALUES (74, 1, 14, 5, '4');
INSERT INTO `t_ch` VALUES (76, 1, 15, 4, '14');
INSERT INTO `t_ch` VALUES (77, 1, 15, 6, '105');
INSERT INTO `t_ch` VALUES (78, 1, 15, 5, '64');
INSERT INTO `t_ch` VALUES (79, 1, 15, 1, '1');
INSERT INTO `t_ch` VALUES (80, 1, 15, 3, '15');
INSERT INTO `t_ch` VALUES (82, 1, 16, 6, '197');
INSERT INTO `t_ch` VALUES (83, 1, 16, 5, '246');
INSERT INTO `t_ch` VALUES (84, 1, 16, 2, '45');
INSERT INTO `t_ch` VALUES (86, 1, 16, 4, '23');
INSERT INTO `t_ch` VALUES (88, 1, 17, 6, '1536');
INSERT INTO `t_ch` VALUES (89, 1, 17, 3, '20');
INSERT INTO `t_ch` VALUES (90, 1, 17, 2, '13');
INSERT INTO `t_ch` VALUES (91, 1, 17, 1, '10');
INSERT INTO `t_ch` VALUES (92, 1, 17, 4, '127');
INSERT INTO `t_ch` VALUES (93, 1, 18, 6, '74');
INSERT INTO `t_ch` VALUES (94, 1, 18, 5, '33');
INSERT INTO `t_ch` VALUES (95, 1, 18, 3, '34');
INSERT INTO `t_ch` VALUES (96, 1, 18, 2, '17');
INSERT INTO `t_ch` VALUES (98, 1, 18, 1, '0');
INSERT INTO `t_ch` VALUES (101, 1, 19, 6, '580');
INSERT INTO `t_ch` VALUES (102, 1, 19, 5, '22');
INSERT INTO `t_ch` VALUES (103, 1, 19, 4, '9');
INSERT INTO `t_ch` VALUES (104, 1, 20, 6, '657');
INSERT INTO `t_ch` VALUES (105, 1, 20, 2, '36');
INSERT INTO `t_ch` VALUES (106, 1, 20, 3, '8');
INSERT INTO `t_ch` VALUES (107, 1, 20, 5, '85');
INSERT INTO `t_ch` VALUES (108, 1, 21, 6, '3661');
INSERT INTO `t_ch` VALUES (109, 1, 21, 3, '167');
INSERT INTO `t_ch` VALUES (110, 1, 21, 2, '117');
INSERT INTO `t_ch` VALUES (111, 1, 21, 1, '55');
INSERT INTO `t_ch` VALUES (112, 1, 21, 4, '424');
INSERT INTO `t_ch` VALUES (113, 1, 22, 6, '83');
INSERT INTO `t_ch` VALUES (114, 1, 22, 4, '19');
INSERT INTO `t_ch` VALUES (115, 1, 22, 5, '28');
INSERT INTO `t_ch` VALUES (116, 1, 22, 2, '5');
INSERT INTO `t_ch` VALUES (118, 1, 23, 6, '1440');
INSERT INTO `t_ch` VALUES (119, 1, 23, 5, '585');
INSERT INTO `t_ch` VALUES (120, 1, 23, 2, '329');
INSERT INTO `t_ch` VALUES (121, 1, 23, 4, '19');
INSERT INTO `t_ch` VALUES (122, 1, 24, 4, '1058');
INSERT INTO `t_ch` VALUES (123, 1, 24, 3, '1101');
INSERT INTO `t_ch` VALUES (124, 1, 24, 1, '41');
INSERT INTO `t_ch` VALUES (125, 1, 25, 4, '651');
INSERT INTO `t_ch` VALUES (126, 1, 25, 3, '350');
INSERT INTO `t_ch` VALUES (127, 1, 25, 1, '19');
INSERT INTO `t_ch` VALUES (128, 1, 26, 2, '659');
INSERT INTO `t_ch` VALUES (130, 1, 26, 1, '2');
INSERT INTO `t_ch` VALUES (133, 1, 27, 6, '39');
INSERT INTO `t_ch` VALUES (134, 1, 27, 4, '9');
INSERT INTO `t_ch` VALUES (135, 1, 27, 5, '6');
INSERT INTO `t_ch` VALUES (136, 1, 27, 2, '6');
INSERT INTO `t_ch` VALUES (138, 1, 27, 1, '2');
INSERT INTO `t_ch` VALUES (141, 2, 1, 6, '963');
INSERT INTO `t_ch` VALUES (142, 2, 1, 3, '141');
INSERT INTO `t_ch` VALUES (143, 2, 1, 4, '192');
INSERT INTO `t_ch` VALUES (144, 2, 2, 6, '518');
INSERT INTO `t_ch` VALUES (145, 2, 2, 3, '15');
INSERT INTO `t_ch` VALUES (146, 2, 2, 4, '1');
INSERT INTO `t_ch` VALUES (151, 2, 3, 6, '602');
INSERT INTO `t_ch` VALUES (152, 2, 3, 5, '79');
INSERT INTO `t_ch` VALUES (153, 2, 3, 2, '2');
INSERT INTO `t_ch` VALUES (154, 2, 3, 1, '1');
INSERT INTO `t_ch` VALUES (155, 2, 4, 6, '801');
INSERT INTO `t_ch` VALUES (156, 2, 4, 3, '92');
INSERT INTO `t_ch` VALUES (157, 2, 4, 4, '75');
INSERT INTO `t_ch` VALUES (158, 2, 5, 6, '446');
INSERT INTO `t_ch` VALUES (159, 2, 5, 5, '180');
INSERT INTO `t_ch` VALUES (160, 2, 5, 4, '12');
INSERT INTO `t_ch` VALUES (161, 2, 5, 3, '13');
INSERT INTO `t_ch` VALUES (163, 2, 6, 6, '165');
INSERT INTO `t_ch` VALUES (164, 2, 6, 5, '14');
INSERT INTO `t_ch` VALUES (166, 2, 6, 2, '0');
INSERT INTO `t_ch` VALUES (167, 2, 6, 4, '0');
INSERT INTO `t_ch` VALUES (173, 2, 7, 6, '1278');
INSERT INTO `t_ch` VALUES (174, 2, 7, 5, '163');
INSERT INTO `t_ch` VALUES (175, 2, 7, 3, '16');
INSERT INTO `t_ch` VALUES (176, 2, 8, 6, '341');
INSERT INTO `t_ch` VALUES (177, 2, 8, 3, '7');
INSERT INTO `t_ch` VALUES (178, 2, 8, 4, '14');
INSERT INTO `t_ch` VALUES (181, 2, 8, 2, '0');
INSERT INTO `t_ch` VALUES (182, 2, 9, 6, '795');
INSERT INTO `t_ch` VALUES (183, 2, 9, 4, '9');
INSERT INTO `t_ch` VALUES (184, 2, 9, 3, '6');
INSERT INTO `t_ch` VALUES (185, 2, 9, 2, '0');
INSERT INTO `t_ch` VALUES (187, 2, 9, 5, '70');
INSERT INTO `t_ch` VALUES (192, 2, 10, 6, '1105');
INSERT INTO `t_ch` VALUES (193, 2, 10, 3, '27');
INSERT INTO `t_ch` VALUES (194, 2, 10, 4, '19');
INSERT INTO `t_ch` VALUES (195, 2, 10, 2, '2');
INSERT INTO `t_ch` VALUES (198, 2, 11, 4, '707');
INSERT INTO `t_ch` VALUES (199, 2, 12, 3, '123');
INSERT INTO `t_ch` VALUES (200, 2, 12, 4, '91');
INSERT INTO `t_ch` VALUES (201, 2, 13, 4, '233');
INSERT INTO `t_ch` VALUES (202, 2, 13, 3, '50');
INSERT INTO `t_ch` VALUES (203, 2, 14, 4, '381');
INSERT INTO `t_ch` VALUES (204, 2, 14, 3, '153');
INSERT INTO `t_ch` VALUES (205, 2, 15, 5, '938');
INSERT INTO `t_ch` VALUES (206, 2, 15, 4, '227');
INSERT INTO `t_ch` VALUES (207, 2, 15, 3, '66');
INSERT INTO `t_ch` VALUES (208, 2, 15, 6, '98');
INSERT INTO `t_ch` VALUES (209, 2, 16, 3, '110');
INSERT INTO `t_ch` VALUES (210, 2, 16, 4, '207');
INSERT INTO `t_ch` VALUES (211, 2, 17, 4, '635');
INSERT INTO `t_ch` VALUES (212, 2, 17, 3, '219');
INSERT INTO `t_ch` VALUES (213, 2, 17, 5, '114');
INSERT INTO `t_ch` VALUES (214, 2, 18, 4, '97');
INSERT INTO `t_ch` VALUES (215, 2, 18, 5, '66');
INSERT INTO `t_ch` VALUES (216, 2, 18, 3, '9');
INSERT INTO `t_ch` VALUES (217, 2, 18, 6, '24');
INSERT INTO `t_ch` VALUES (218, 2, 19, 6, '204');
INSERT INTO `t_ch` VALUES (219, 2, 19, 3, '15');
INSERT INTO `t_ch` VALUES (220, 2, 19, 4, '22');
INSERT INTO `t_ch` VALUES (224, 2, 20, 6, '550');
INSERT INTO `t_ch` VALUES (225, 2, 20, 5, '45');
INSERT INTO `t_ch` VALUES (226, 2, 20, 3, '36');
INSERT INTO `t_ch` VALUES (227, 2, 20, 4, '20');
INSERT INTO `t_ch` VALUES (229, 2, 21, 6, '3746');
INSERT INTO `t_ch` VALUES (230, 2, 21, 3, '319');
INSERT INTO `t_ch` VALUES (231, 2, 21, 4, '369');
INSERT INTO `t_ch` VALUES (232, 2, 22, 6, '136');
INSERT INTO `t_ch` VALUES (233, 2, 22, 4, '0');
INSERT INTO `t_ch` VALUES (234, 2, 22, 3, '3');
INSERT INTO `t_ch` VALUES (235, 2, 22, 2, '1');
INSERT INTO `t_ch` VALUES (237, 2, 22, 5, '31');
INSERT INTO `t_ch` VALUES (242, 2, 23, 6, '1654');
INSERT INTO `t_ch` VALUES (243, 2, 24, 6, '1055');
INSERT INTO `t_ch` VALUES (244, 2, 24, 5, '123');
INSERT INTO `t_ch` VALUES (245, 2, 24, 3, '98');
INSERT INTO `t_ch` VALUES (246, 2, 25, 6, '296');
INSERT INTO `t_ch` VALUES (247, 2, 25, 5, '33');
INSERT INTO `t_ch` VALUES (248, 2, 25, 2, '85');
INSERT INTO `t_ch` VALUES (249, 2, 25, 4, '19');
INSERT INTO `t_ch` VALUES (250, 2, 26, 6, '1229');
INSERT INTO `t_ch` VALUES (251, 2, 26, 5, '116');
INSERT INTO `t_ch` VALUES (252, 2, 26, 2, '15');
INSERT INTO `t_ch` VALUES (254, 2, 26, 4, '49');
INSERT INTO `t_ch` VALUES (255, 2, 27, 6, '131');
INSERT INTO `t_ch` VALUES (257, 2, 27, 5, '7');
INSERT INTO `t_ch` VALUES (258, 2, 27, 4, '8');
INSERT INTO `t_ch` VALUES (261, 3, 1, 5, '1054');
INSERT INTO `t_ch` VALUES (262, 3, 1, 6, '1166');
INSERT INTO `t_ch` VALUES (263, 3, 2, 3, '68');
INSERT INTO `t_ch` VALUES (264, 3, 2, 6, '198');
INSERT INTO `t_ch` VALUES (265, 3, 2, 4, '15');
INSERT INTO `t_ch` VALUES (266, 3, 3, 2, '39');
INSERT INTO `t_ch` VALUES (267, 3, 3, 1, '28');
INSERT INTO `t_ch` VALUES (268, 3, 3, 5, '51');
INSERT INTO `t_ch` VALUES (269, 3, 3, 6, '318');
INSERT INTO `t_ch` VALUES (270, 3, 4, 4, '459');
INSERT INTO `t_ch` VALUES (271, 3, 4, 3, '324');
INSERT INTO `t_ch` VALUES (272, 3, 4, 6, '1219');
INSERT INTO `t_ch` VALUES (273, 3, 5, 6, '547');
INSERT INTO `t_ch` VALUES (274, 3, 5, 3, '89');
INSERT INTO `t_ch` VALUES (275, 3, 5, 2, '67');
INSERT INTO `t_ch` VALUES (276, 3, 5, 1, '135');
INSERT INTO `t_ch` VALUES (277, 3, 5, 4, '173');
INSERT INTO `t_ch` VALUES (278, 3, 6, 6, '23');
INSERT INTO `t_ch` VALUES (280, 3, 6, 4, '12');
INSERT INTO `t_ch` VALUES (281, 3, 6, 2, '12');
INSERT INTO `t_ch` VALUES (282, 3, 6, 1, '1');
INSERT INTO `t_ch` VALUES (284, 3, 6, 3, '0');
INSERT INTO `t_ch` VALUES (290, 3, 7, 6, '216');
INSERT INTO `t_ch` VALUES (291, 3, 7, 2, '179');
INSERT INTO `t_ch` VALUES (292, 3, 7, 3, '37');
INSERT INTO `t_ch` VALUES (293, 3, 7, 5, '34');
INSERT INTO `t_ch` VALUES (294, 3, 8, 3, '317');
INSERT INTO `t_ch` VALUES (295, 3, 8, 2, '226');
INSERT INTO `t_ch` VALUES (296, 3, 9, 4, '195');
INSERT INTO `t_ch` VALUES (297, 3, 9, 2, '141');
INSERT INTO `t_ch` VALUES (298, 3, 9, 5, '152');
INSERT INTO `t_ch` VALUES (299, 3, 9, 6, '322');
INSERT INTO `t_ch` VALUES (300, 3, 10, 5, '80');
INSERT INTO `t_ch` VALUES (301, 3, 10, 4, '193');
INSERT INTO `t_ch` VALUES (302, 3, 10, 3, '418');
INSERT INTO `t_ch` VALUES (303, 3, 10, 1, '91');
INSERT INTO `t_ch` VALUES (304, 3, 11, 4, '298');
INSERT INTO `t_ch` VALUES (305, 3, 11, 6, '730');
INSERT INTO `t_ch` VALUES (306, 3, 11, 3, '93');
INSERT INTO `t_ch` VALUES (307, 3, 11, 2, '100');
INSERT INTO `t_ch` VALUES (308, 3, 11, 1, '110');
INSERT INTO `t_ch` VALUES (309, 3, 12, 6, '128');
INSERT INTO `t_ch` VALUES (311, 3, 12, 3, '47');
INSERT INTO `t_ch` VALUES (312, 3, 12, 4, '19');
INSERT INTO `t_ch` VALUES (315, 3, 13, 6, '170');
INSERT INTO `t_ch` VALUES (316, 3, 13, 3, '49');
INSERT INTO `t_ch` VALUES (317, 3, 13, 4, '30');
INSERT INTO `t_ch` VALUES (318, 3, 13, 2, '38');
INSERT INTO `t_ch` VALUES (319, 3, 14, 6, '180');
INSERT INTO `t_ch` VALUES (320, 3, 14, 5, '23');
INSERT INTO `t_ch` VALUES (321, 3, 14, 3, '17');
INSERT INTO `t_ch` VALUES (322, 3, 15, 6, '458');
INSERT INTO `t_ch` VALUES (323, 3, 15, 5, '123');
INSERT INTO `t_ch` VALUES (324, 3, 15, 3, '280');
INSERT INTO `t_ch` VALUES (325, 3, 15, 4, '64');
INSERT INTO `t_ch` VALUES (326, 3, 16, 4, '210');
INSERT INTO `t_ch` VALUES (327, 3, 16, 3, '160');
INSERT INTO `t_ch` VALUES (328, 3, 17, 4, '311');
INSERT INTO `t_ch` VALUES (329, 3, 17, 3, '32');
INSERT INTO `t_ch` VALUES (330, 3, 18, 6, '28');
INSERT INTO `t_ch` VALUES (331, 3, 18, 5, '15');
INSERT INTO `t_ch` VALUES (332, 3, 18, 3, '7');
INSERT INTO `t_ch` VALUES (333, 3, 18, 2, '26');
INSERT INTO `t_ch` VALUES (334, 3, 18, 1, '4');
INSERT INTO `t_ch` VALUES (339, 3, 19, 6, '218');
INSERT INTO `t_ch` VALUES (340, 3, 19, 4, '96');
INSERT INTO `t_ch` VALUES (341, 3, 19, 5, '87');
INSERT INTO `t_ch` VALUES (342, 3, 19, 2, '75');
INSERT INTO `t_ch` VALUES (343, 3, 19, 1, '50');
INSERT INTO `t_ch` VALUES (344, 3, 20, 2, '412');
INSERT INTO `t_ch` VALUES (345, 3, 20, 1, '38');
INSERT INTO `t_ch` VALUES (346, 3, 21, 2, '394');
INSERT INTO `t_ch` VALUES (347, 3, 21, 1, '385');
INSERT INTO `t_ch` VALUES (348, 3, 21, 4, '715');
INSERT INTO `t_ch` VALUES (349, 3, 21, 6, '2015');
INSERT INTO `t_ch` VALUES (350, 3, 21, 3, '234');
INSERT INTO `t_ch` VALUES (351, 3, 22, 6, '103');
INSERT INTO `t_ch` VALUES (356, 3, 23, 6, '1547');
INSERT INTO `t_ch` VALUES (357, 3, 23, 5, '258');
INSERT INTO `t_ch` VALUES (358, 3, 23, 4, '201');
INSERT INTO `t_ch` VALUES (359, 3, 24, 6, '2380');
INSERT INTO `t_ch` VALUES (360, 3, 24, 5, '194');
INSERT INTO `t_ch` VALUES (361, 3, 24, 2, '388');
INSERT INTO `t_ch` VALUES (362, 3, 24, 4, '199');
INSERT INTO `t_ch` VALUES (363, 3, 25, 6, '373');
INSERT INTO `t_ch` VALUES (364, 3, 25, 5, '30');
INSERT INTO `t_ch` VALUES (365, 3, 25, 2, '103');
INSERT INTO `t_ch` VALUES (366, 3, 25, 1, '52');
INSERT INTO `t_ch` VALUES (367, 3, 25, 4, '140');
INSERT INTO `t_ch` VALUES (368, 3, 26, 6, '449');
INSERT INTO `t_ch` VALUES (369, 3, 26, 2, '323');
INSERT INTO `t_ch` VALUES (370, 3, 26, 3, '53');
INSERT INTO `t_ch` VALUES (371, 3, 26, 5, '84');
INSERT INTO `t_ch` VALUES (372, 3, 27, 4, '2');
INSERT INTO `t_ch` VALUES (373, 3, 27, 6, '35');
INSERT INTO `t_ch` VALUES (377, 3, 27, 5, '1');

-- ----------------------------
-- Table structure for t_contact_us
-- ----------------------------
DROP TABLE IF EXISTS `t_contact_us`;
CREATE TABLE `t_contact_us`  (
  `id_kontak` int NOT NULL AUTO_INCREMENT,
  `isi_pesan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subjek_pesan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_pengirim` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kontak`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_contact_us
-- ----------------------------
INSERT INTO `t_contact_us` VALUES (1, 'coba', 'coba dulu', 'a', 'aaa@gmail.com');
INSERT INTO `t_contact_us` VALUES (2, 'mntsbrznz', 'sdfghert43', 'dywtefuygeiuriewhf', 'Ceu.Ceurik@gmail.com');

-- ----------------------------
-- Table structure for t_jenis_kasus
-- ----------------------------
DROP TABLE IF EXISTS `t_jenis_kasus`;
CREATE TABLE `t_jenis_kasus`  (
  `id_kasus` int NOT NULL AUTO_INCREMENT,
  `jenis_kasus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kasus`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_jenis_kasus
-- ----------------------------
INSERT INTO `t_jenis_kasus` VALUES (1, 'Kematian');
INSERT INTO `t_jenis_kasus` VALUES (2, 'Sembuh');

-- ----------------------------
-- Table structure for t_jenis_kelamin
-- ----------------------------
DROP TABLE IF EXISTS `t_jenis_kelamin`;
CREATE TABLE `t_jenis_kelamin`  (
  `id_jenis_kelamin` int NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis_kelamin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_jenis_kelamin
-- ----------------------------
INSERT INTO `t_jenis_kelamin` VALUES (1, 'Laki - laki');
INSERT INTO `t_jenis_kelamin` VALUES (2, 'Perempuan');

-- ----------------------------
-- Table structure for t_kab_kota
-- ----------------------------
DROP TABLE IF EXISTS `t_kab_kota`;
CREATE TABLE `t_kab_kota`  (
  `id_kab` int NOT NULL AUTO_INCREMENT,
  `nama_kab` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_kab` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kab`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_kab_kota
-- ----------------------------
INSERT INTO `t_kab_kota` VALUES (1, 'KABUPATEN BOGOR', '3201');
INSERT INTO `t_kab_kota` VALUES (2, 'KABUPATEN SUKABUMI', '3202');
INSERT INTO `t_kab_kota` VALUES (3, 'KABUPATEN CIANJUR', '3203');
INSERT INTO `t_kab_kota` VALUES (4, 'KABUPATEN BANDUNG', '3204');
INSERT INTO `t_kab_kota` VALUES (5, 'KABUPATEN GARUT', '3205');
INSERT INTO `t_kab_kota` VALUES (6, 'KABUPATEN TASIKMALAYA', '3206');
INSERT INTO `t_kab_kota` VALUES (7, 'KABUPATEN CIAMIS', '3207');
INSERT INTO `t_kab_kota` VALUES (8, 'KABUPATEN KUNINGAN', '3208');
INSERT INTO `t_kab_kota` VALUES (9, 'KABUPATEN CIREBON', '3209');
INSERT INTO `t_kab_kota` VALUES (10, 'KABUPATEN MAJALENGKA', '3210');
INSERT INTO `t_kab_kota` VALUES (11, 'KABUPATEN SUMEDANG', '3211');
INSERT INTO `t_kab_kota` VALUES (12, 'KABUPATEN INDRAMAYU', '3212');
INSERT INTO `t_kab_kota` VALUES (13, 'KABUPATEN SUBANG', '3213');
INSERT INTO `t_kab_kota` VALUES (14, 'KABUPATEN PURWAKARTA', '3214');
INSERT INTO `t_kab_kota` VALUES (15, 'KABUPATEN KARAWANG', '3215');
INSERT INTO `t_kab_kota` VALUES (16, 'KABUPATEN BEKASI', '3216');
INSERT INTO `t_kab_kota` VALUES (17, 'KABUPATEN BANDUNG BARAT', '3217');
INSERT INTO `t_kab_kota` VALUES (18, 'KABUPATEN PANGANDARAN', '3218');
INSERT INTO `t_kab_kota` VALUES (19, 'KOTA BOGOR', '3271');
INSERT INTO `t_kab_kota` VALUES (20, 'KOTA SUKABUMI', '3272');
INSERT INTO `t_kab_kota` VALUES (21, 'KOTA BANDUNG', '3273');
INSERT INTO `t_kab_kota` VALUES (22, 'KOTA CIREBON', '3274');
INSERT INTO `t_kab_kota` VALUES (23, 'KOTA BEKASI', '3275');
INSERT INTO `t_kab_kota` VALUES (24, 'KOTA DEPOK', '3276');
INSERT INTO `t_kab_kota` VALUES (25, 'KOTA CIMAHI', '3277');
INSERT INTO `t_kab_kota` VALUES (26, 'KOTA TASIKMALAYA', '3278');
INSERT INTO `t_kab_kota` VALUES (27, 'KOTA BANJAR', '3279');

-- ----------------------------
-- Table structure for t_kasus_jk
-- ----------------------------
DROP TABLE IF EXISTS `t_kasus_jk`;
CREATE TABLE `t_kasus_jk`  (
  `id_kasus` int NOT NULL AUTO_INCREMENT,
  `id_bln` int NULL DEFAULT NULL,
  `id_tahun` int NOT NULL,
  `id_kota` int NOT NULL,
  `id_ch` int NOT NULL,
  `id_jk` int NOT NULL,
  `jumlah_kasus_jk` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jml_ch` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`id_kasus`) USING BTREE,
  INDEX `id_thn`(`id_tahun` ASC) USING BTREE,
  INDEX `id_kota`(`id_kota` ASC) USING BTREE,
  INDEX `id_jk`(`id_jk` ASC) USING BTREE,
  INDEX `id_ch`(`id_ch` ASC) USING BTREE,
  INDEX `id_bln`(`id_bln` ASC) USING BTREE,
  CONSTRAINT `t_kasus_jk_ibfk_1` FOREIGN KEY (`id_bln`) REFERENCES `t_bulan` (`id_bulan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_kasus_jk_ibfk_2` FOREIGN KEY (`id_ch`) REFERENCES `curah_hujan` (`id_curah_hujan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_kasus_jk_ibfk_4` FOREIGN KEY (`id_jk`) REFERENCES `t_jenis_kelamin` (`id_jenis_kelamin`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_kasus_jk_ibfk_5` FOREIGN KEY (`id_kota`) REFERENCES `t_kab_kota` (`id_kab`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_kasus_jk_ibfk_6` FOREIGN KEY (`id_tahun`) REFERENCES `t_tahun` (`id_tahun`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1945 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_kasus_jk
-- ----------------------------
INSERT INTO `t_kasus_jk` VALUES (1, 1, 1, 1, 6, 1, '53', 288.00);
INSERT INTO `t_kasus_jk` VALUES (2, 2, 1, 1, 6, 1, '45', 277.00);
INSERT INTO `t_kasus_jk` VALUES (3, 3, 1, 1, 6, 1, '34', 231.00);
INSERT INTO `t_kasus_jk` VALUES (4, 4, 1, 1, 6, 1, '120', 671.00);
INSERT INTO `t_kasus_jk` VALUES (5, 5, 1, 1, 6, 1, '60', 312.00);
INSERT INTO `t_kasus_jk` VALUES (6, 6, 1, 1, 5, 1, '35', 138.00);
INSERT INTO `t_kasus_jk` VALUES (7, 7, 1, 1, 4, 1, '18', 53.00);
INSERT INTO `t_kasus_jk` VALUES (8, 8, 1, 1, 6, 1, '30', 170.00);
INSERT INTO `t_kasus_jk` VALUES (9, 9, 1, 1, 6, 1, '23', 152.00);
INSERT INTO `t_kasus_jk` VALUES (10, 10, 1, 1, 6, 1, '67', 382.00);
INSERT INTO `t_kasus_jk` VALUES (11, 11, 1, 1, 6, 1, '55', 330.00);
INSERT INTO `t_kasus_jk` VALUES (12, 12, 1, 1, 6, 1, '94', 553.00);
INSERT INTO `t_kasus_jk` VALUES (13, 1, 1, 1, 6, 2, '50', 288.00);
INSERT INTO `t_kasus_jk` VALUES (14, 2, 1, 1, 6, 2, '35', 277.00);
INSERT INTO `t_kasus_jk` VALUES (15, 3, 1, 1, 6, 2, '24', 231.00);
INSERT INTO `t_kasus_jk` VALUES (16, 4, 1, 1, 6, 2, '117', 671.00);
INSERT INTO `t_kasus_jk` VALUES (17, 5, 1, 1, 6, 2, '50', 312.00);
INSERT INTO `t_kasus_jk` VALUES (18, 6, 1, 1, 5, 2, '25', 138.00);
INSERT INTO `t_kasus_jk` VALUES (19, 7, 1, 1, 4, 2, '18', 53.00);
INSERT INTO `t_kasus_jk` VALUES (20, 8, 1, 1, 6, 2, '39', 170.00);
INSERT INTO `t_kasus_jk` VALUES (21, 9, 1, 1, 6, 2, '13', 152.00);
INSERT INTO `t_kasus_jk` VALUES (22, 10, 1, 1, 6, 2, '66', 382.00);
INSERT INTO `t_kasus_jk` VALUES (23, 11, 1, 1, 6, 2, '45', 330.00);
INSERT INTO `t_kasus_jk` VALUES (24, 12, 1, 1, 6, 2, '94', 553.00);
INSERT INTO `t_kasus_jk` VALUES (25, 1, 1, 2, 6, 1, '58', 398.00);
INSERT INTO `t_kasus_jk` VALUES (26, 2, 1, 2, 6, 1, '43', 387.00);
INSERT INTO `t_kasus_jk` VALUES (27, 3, 1, 2, 6, 1, '25', 272.00);
INSERT INTO `t_kasus_jk` VALUES (28, 4, 1, 2, 6, 1, '37', 419.00);
INSERT INTO `t_kasus_jk` VALUES (29, 5, 1, 2, 6, 1, '11', 194.00);
INSERT INTO `t_kasus_jk` VALUES (30, 6, 1, 2, 2, 1, '1', 3.00);
INSERT INTO `t_kasus_jk` VALUES (31, 7, 1, 2, 3, 1, '7', 23.00);
INSERT INTO `t_kasus_jk` VALUES (32, 8, 1, 2, 2, 1, '0', 1.00);
INSERT INTO `t_kasus_jk` VALUES (33, 9, 1, 2, 2, 1, '5', 19.00);
INSERT INTO `t_kasus_jk` VALUES (34, 10, 1, 2, 2, 1, '3', 12.00);
INSERT INTO `t_kasus_jk` VALUES (35, 11, 1, 2, 5, 1, '9', 105.00);
INSERT INTO `t_kasus_jk` VALUES (36, 12, 1, 2, 6, 1, '110', 627.00);
INSERT INTO `t_kasus_jk` VALUES (37, 1, 1, 2, 6, 2, '45', 398.00);
INSERT INTO `t_kasus_jk` VALUES (38, 2, 1, 2, 6, 2, '32', 387.00);
INSERT INTO `t_kasus_jk` VALUES (39, 3, 1, 2, 6, 2, '27', 272.00);
INSERT INTO `t_kasus_jk` VALUES (40, 4, 1, 2, 6, 2, '38', 419.00);
INSERT INTO `t_kasus_jk` VALUES (41, 5, 1, 2, 6, 2, '13', 194.00);
INSERT INTO `t_kasus_jk` VALUES (42, 6, 1, 2, 2, 2, '0', 3.00);
INSERT INTO `t_kasus_jk` VALUES (43, 7, 1, 2, 3, 2, '9', 23.00);
INSERT INTO `t_kasus_jk` VALUES (44, 8, 1, 2, 2, 2, '1', 1.00);
INSERT INTO `t_kasus_jk` VALUES (45, 9, 1, 2, 2, 2, '4', 19.00);
INSERT INTO `t_kasus_jk` VALUES (46, 10, 1, 2, 2, 2, '2', 12.00);
INSERT INTO `t_kasus_jk` VALUES (47, 11, 1, 2, 5, 2, '7', 105.00);
INSERT INTO `t_kasus_jk` VALUES (48, 12, 1, 2, 6, 2, '129', 627.00);
INSERT INTO `t_kasus_jk` VALUES (49, 1, 1, 3, 6, 1, '72', 275.00);
INSERT INTO `t_kasus_jk` VALUES (50, 2, 1, 3, 5, 1, '13', 111.00);
INSERT INTO `t_kasus_jk` VALUES (51, 3, 1, 3, 6, 1, '35', 153.00);
INSERT INTO `t_kasus_jk` VALUES (52, 4, 1, 3, 6, 1, '97', 303.00);
INSERT INTO `t_kasus_jk` VALUES (53, 5, 1, 3, 6, 1, '19', 154.00);
INSERT INTO `t_kasus_jk` VALUES (54, 6, 1, 3, 2, 1, '3', 8.50);
INSERT INTO `t_kasus_jk` VALUES (55, 7, 1, 3, 1, 1, '2', 0.00);
INSERT INTO `t_kasus_jk` VALUES (56, 8, 1, 3, 2, 1, '2', 11.00);
INSERT INTO `t_kasus_jk` VALUES (57, 9, 1, 3, 4, 1, '5', 62.00);
INSERT INTO `t_kasus_jk` VALUES (58, 10, 1, 3, 4, 1, '10', 72.00);
INSERT INTO `t_kasus_jk` VALUES (59, 11, 1, 3, 6, 1, '125', 425.00);
INSERT INTO `t_kasus_jk` VALUES (60, 12, 1, 3, 6, 1, '11', 187.00);
INSERT INTO `t_kasus_jk` VALUES (61, 1, 1, 3, 6, 2, '32', 275.00);
INSERT INTO `t_kasus_jk` VALUES (62, 2, 1, 3, 5, 2, '10', 111.00);
INSERT INTO `t_kasus_jk` VALUES (63, 3, 1, 3, 6, 2, '15', 153.00);
INSERT INTO `t_kasus_jk` VALUES (64, 4, 1, 3, 6, 2, '67', 303.00);
INSERT INTO `t_kasus_jk` VALUES (65, 5, 1, 3, 6, 2, '9', 154.00);
INSERT INTO `t_kasus_jk` VALUES (66, 6, 1, 3, 2, 2, '3', 8.50);
INSERT INTO `t_kasus_jk` VALUES (67, 7, 1, 3, 1, 2, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (68, 8, 1, 3, 2, 2, '1', 11.00);
INSERT INTO `t_kasus_jk` VALUES (69, 9, 1, 3, 4, 2, '2', 62.00);
INSERT INTO `t_kasus_jk` VALUES (70, 10, 1, 3, 4, 2, '5', 72.00);
INSERT INTO `t_kasus_jk` VALUES (71, 11, 1, 3, 6, 2, '96', 425.00);
INSERT INTO `t_kasus_jk` VALUES (72, 12, 1, 3, 6, 2, '9', 187.00);
INSERT INTO `t_kasus_jk` VALUES (73, 1, 1, 4, 6, 1, '117', 231.00);
INSERT INTO `t_kasus_jk` VALUES (74, 2, 1, 4, 6, 1, '127', 269.00);
INSERT INTO `t_kasus_jk` VALUES (75, 3, 1, 4, 6, 1, '111', 223.00);
INSERT INTO `t_kasus_jk` VALUES (76, 4, 1, 4, 6, 1, '185', 299.00);
INSERT INTO `t_kasus_jk` VALUES (77, 5, 1, 4, 6, 1, '167', 243.00);
INSERT INTO `t_kasus_jk` VALUES (78, 6, 1, 4, 3, 1, '58', 26.00);
INSERT INTO `t_kasus_jk` VALUES (79, 7, 1, 4, 2, 1, '35', 13.00);
INSERT INTO `t_kasus_jk` VALUES (80, 8, 1, 4, 1, 1, '18', 0.00);
INSERT INTO `t_kasus_jk` VALUES (81, 9, 1, 4, 4, 1, '66', 55.00);
INSERT INTO `t_kasus_jk` VALUES (82, 10, 1, 4, 4, 1, '80', 84.00);
INSERT INTO `t_kasus_jk` VALUES (83, 11, 1, 4, 6, 1, '145', 271.00);
INSERT INTO `t_kasus_jk` VALUES (84, 12, 1, 4, 6, 1, '197', 315.00);
INSERT INTO `t_kasus_jk` VALUES (85, 1, 1, 4, 6, 2, '120', 231.00);
INSERT INTO `t_kasus_jk` VALUES (86, 2, 1, 4, 6, 2, '128', 269.00);
INSERT INTO `t_kasus_jk` VALUES (87, 3, 1, 4, 6, 2, '120', 223.00);
INSERT INTO `t_kasus_jk` VALUES (88, 4, 1, 4, 6, 2, '175', 299.00);
INSERT INTO `t_kasus_jk` VALUES (89, 5, 1, 4, 6, 2, '147', 243.00);
INSERT INTO `t_kasus_jk` VALUES (90, 6, 1, 4, 3, 2, '58', 26.00);
INSERT INTO `t_kasus_jk` VALUES (91, 7, 1, 4, 2, 2, '37', 13.00);
INSERT INTO `t_kasus_jk` VALUES (92, 8, 1, 4, 1, 2, '20', 0.00);
INSERT INTO `t_kasus_jk` VALUES (93, 9, 1, 4, 4, 2, '70', 55.00);
INSERT INTO `t_kasus_jk` VALUES (94, 10, 1, 4, 4, 2, '97', 84.00);
INSERT INTO `t_kasus_jk` VALUES (95, 11, 1, 4, 6, 2, '157', 271.00);
INSERT INTO `t_kasus_jk` VALUES (96, 12, 1, 4, 6, 2, '200', 315.00);
INSERT INTO `t_kasus_jk` VALUES (97, 1, 1, 5, 2, 1, '53', 12.00);
INSERT INTO `t_kasus_jk` VALUES (98, 2, 1, 5, 3, 1, '11', 24.00);
INSERT INTO `t_kasus_jk` VALUES (99, 3, 1, 5, 3, 1, '12', 34.00);
INSERT INTO `t_kasus_jk` VALUES (100, 4, 1, 5, 3, 1, '67', 22.00);
INSERT INTO `t_kasus_jk` VALUES (101, 5, 1, 5, 3, 1, '13', 26.00);
INSERT INTO `t_kasus_jk` VALUES (102, 6, 1, 5, 2, 1, '0', 17.00);
INSERT INTO `t_kasus_jk` VALUES (103, 7, 1, 5, 3, 1, '2', 25.00);
INSERT INTO `t_kasus_jk` VALUES (104, 8, 1, 5, 2, 1, '1', 19.00);
INSERT INTO `t_kasus_jk` VALUES (105, 9, 1, 5, 3, 1, '10', 14.00);
INSERT INTO `t_kasus_jk` VALUES (106, 10, 1, 5, 2, 1, '15', 11.00);
INSERT INTO `t_kasus_jk` VALUES (107, 11, 1, 5, 2, 1, '150', 4.00);
INSERT INTO `t_kasus_jk` VALUES (108, 12, 1, 5, 2, 1, '40', 3.00);
INSERT INTO `t_kasus_jk` VALUES (109, 1, 1, 5, 2, 2, '83', 12.00);
INSERT INTO `t_kasus_jk` VALUES (110, 2, 1, 5, 3, 2, '10', 24.00);
INSERT INTO `t_kasus_jk` VALUES (111, 3, 1, 5, 3, 2, '15', 34.00);
INSERT INTO `t_kasus_jk` VALUES (112, 4, 1, 5, 3, 2, '85', 22.00);
INSERT INTO `t_kasus_jk` VALUES (113, 5, 1, 5, 3, 2, '18', 26.00);
INSERT INTO `t_kasus_jk` VALUES (114, 6, 1, 5, 2, 2, '4', 17.00);
INSERT INTO `t_kasus_jk` VALUES (115, 7, 1, 5, 3, 2, '2', 25.00);
INSERT INTO `t_kasus_jk` VALUES (116, 8, 1, 5, 2, 2, '2', 19.00);
INSERT INTO `t_kasus_jk` VALUES (117, 9, 1, 5, 3, 2, '5', 14.00);
INSERT INTO `t_kasus_jk` VALUES (118, 10, 1, 5, 2, 2, '10', 11.00);
INSERT INTO `t_kasus_jk` VALUES (119, 11, 1, 5, 2, 2, '150', 4.00);
INSERT INTO `t_kasus_jk` VALUES (120, 12, 1, 5, 2, 2, '11', 3.00);
INSERT INTO `t_kasus_jk` VALUES (121, 1, 1, 6, 6, 1, '25', 187.00);
INSERT INTO `t_kasus_jk` VALUES (122, 2, 1, 6, 6, 1, '35', 263.00);
INSERT INTO `t_kasus_jk` VALUES (123, 3, 1, 6, 6, 1, '12', 275.00);
INSERT INTO `t_kasus_jk` VALUES (124, 4, 1, 6, 6, 1, '10', 290.00);
INSERT INTO `t_kasus_jk` VALUES (125, 5, 1, 6, 4, 1, '9', 76.00);
INSERT INTO `t_kasus_jk` VALUES (126, 6, 1, 6, 2, 1, '7', 8.00);
INSERT INTO `t_kasus_jk` VALUES (127, 7, 1, 6, 2, 1, '1', 7.00);
INSERT INTO `t_kasus_jk` VALUES (128, 8, 1, 6, 1, 1, '2', 0.00);
INSERT INTO `t_kasus_jk` VALUES (129, 9, 1, 6, 2, 1, '0', 1.00);
INSERT INTO `t_kasus_jk` VALUES (130, 10, 1, 6, 2, 1, '0', 1.00);
INSERT INTO `t_kasus_jk` VALUES (131, 11, 1, 6, 3, 1, '1', 26.00);
INSERT INTO `t_kasus_jk` VALUES (132, 12, 1, 6, 4, 1, '9', 106.00);
INSERT INTO `t_kasus_jk` VALUES (133, 1, 1, 6, 6, 2, '30', 187.00);
INSERT INTO `t_kasus_jk` VALUES (134, 2, 1, 6, 6, 2, '20', 263.00);
INSERT INTO `t_kasus_jk` VALUES (135, 3, 1, 6, 6, 2, '12', 275.00);
INSERT INTO `t_kasus_jk` VALUES (136, 4, 1, 6, 6, 2, '7', 290.00);
INSERT INTO `t_kasus_jk` VALUES (137, 5, 1, 6, 4, 2, '9', 76.00);
INSERT INTO `t_kasus_jk` VALUES (138, 6, 1, 6, 2, 2, '8', 8.00);
INSERT INTO `t_kasus_jk` VALUES (139, 7, 1, 6, 2, 2, '0', 7.00);
INSERT INTO `t_kasus_jk` VALUES (140, 8, 1, 6, 1, 2, '2', 0.00);
INSERT INTO `t_kasus_jk` VALUES (141, 9, 1, 6, 2, 2, '0', 1.00);
INSERT INTO `t_kasus_jk` VALUES (142, 10, 1, 6, 2, 2, '0', 1.00);
INSERT INTO `t_kasus_jk` VALUES (143, 11, 1, 6, 3, 2, '1', 26.00);
INSERT INTO `t_kasus_jk` VALUES (144, 12, 1, 6, 4, 2, '10', 106.00);
INSERT INTO `t_kasus_jk` VALUES (145, 1, 1, 7, 6, 1, '20', 314.00);
INSERT INTO `t_kasus_jk` VALUES (146, 2, 1, 7, 6, 1, '41', 381.00);
INSERT INTO `t_kasus_jk` VALUES (147, 3, 1, 7, 6, 1, '33', 353.00);
INSERT INTO `t_kasus_jk` VALUES (148, 4, 1, 7, 6, 1, '68', 454.00);
INSERT INTO `t_kasus_jk` VALUES (149, 5, 1, 7, 6, 1, '12', 155.00);
INSERT INTO `t_kasus_jk` VALUES (150, 6, 1, 7, 2, 1, '4', 14.00);
INSERT INTO `t_kasus_jk` VALUES (151, 7, 1, 7, 2, 1, '7', 19.00);
INSERT INTO `t_kasus_jk` VALUES (152, 8, 1, 7, 2, 1, '0', 2.00);
INSERT INTO `t_kasus_jk` VALUES (153, 9, 1, 7, 2, 1, '1', 4.00);
INSERT INTO `t_kasus_jk` VALUES (154, 10, 1, 7, 2, 1, '2', 4.00);
INSERT INTO `t_kasus_jk` VALUES (155, 11, 1, 7, 4, 1, '9', 90.00);
INSERT INTO `t_kasus_jk` VALUES (156, 12, 1, 7, 6, 1, '15', 182.00);
INSERT INTO `t_kasus_jk` VALUES (157, 1, 1, 7, 6, 2, '10', 314.00);
INSERT INTO `t_kasus_jk` VALUES (158, 2, 1, 7, 6, 2, '31', 381.00);
INSERT INTO `t_kasus_jk` VALUES (159, 3, 1, 7, 6, 2, '16', 353.00);
INSERT INTO `t_kasus_jk` VALUES (160, 4, 1, 7, 6, 2, '67', 454.00);
INSERT INTO `t_kasus_jk` VALUES (161, 5, 1, 7, 6, 2, '10', 155.00);
INSERT INTO `t_kasus_jk` VALUES (162, 6, 1, 7, 2, 2, '5', 14.00);
INSERT INTO `t_kasus_jk` VALUES (163, 7, 1, 7, 2, 2, '9', 19.00);
INSERT INTO `t_kasus_jk` VALUES (164, 8, 1, 7, 2, 2, '1', 2.00);
INSERT INTO `t_kasus_jk` VALUES (165, 9, 1, 7, 2, 2, '2', 4.00);
INSERT INTO `t_kasus_jk` VALUES (166, 10, 1, 7, 2, 2, '3', 4.00);
INSERT INTO `t_kasus_jk` VALUES (167, 11, 1, 7, 4, 2, '13', 90.00);
INSERT INTO `t_kasus_jk` VALUES (168, 12, 1, 7, 6, 2, '25', 182.00);
INSERT INTO `t_kasus_jk` VALUES (169, 1, 1, 8, 6, 1, '15', 395.00);
INSERT INTO `t_kasus_jk` VALUES (170, 2, 1, 8, 6, 1, '35', 440.00);
INSERT INTO `t_kasus_jk` VALUES (171, 3, 1, 8, 6, 1, '33', 378.00);
INSERT INTO `t_kasus_jk` VALUES (172, 4, 1, 8, 6, 1, '23', 353.00);
INSERT INTO `t_kasus_jk` VALUES (173, 5, 1, 8, 6, 1, '20', 187.00);
INSERT INTO `t_kasus_jk` VALUES (174, 6, 1, 8, 3, 1, '3', 45.00);
INSERT INTO `t_kasus_jk` VALUES (175, 7, 1, 8, 4, 1, '7', 67.00);
INSERT INTO `t_kasus_jk` VALUES (176, 8, 1, 8, 3, 1, '8', 21.00);
INSERT INTO `t_kasus_jk` VALUES (177, 9, 1, 8, 3, 1, '10', 48.00);
INSERT INTO `t_kasus_jk` VALUES (178, 10, 1, 8, 6, 1, '25', 240.00);
INSERT INTO `t_kasus_jk` VALUES (179, 11, 1, 8, 6, 1, '40', 490.00);
INSERT INTO `t_kasus_jk` VALUES (180, 12, 1, 8, 6, 1, '43', 489.00);
INSERT INTO `t_kasus_jk` VALUES (181, 1, 1, 8, 6, 2, '10', 395.00);
INSERT INTO `t_kasus_jk` VALUES (182, 2, 1, 8, 6, 2, '39', 440.00);
INSERT INTO `t_kasus_jk` VALUES (183, 3, 1, 8, 6, 2, '30', 378.00);
INSERT INTO `t_kasus_jk` VALUES (184, 4, 1, 8, 6, 2, '20', 353.00);
INSERT INTO `t_kasus_jk` VALUES (185, 5, 1, 8, 6, 2, '19', 187.00);
INSERT INTO `t_kasus_jk` VALUES (186, 6, 1, 8, 3, 2, '1', 45.00);
INSERT INTO `t_kasus_jk` VALUES (187, 7, 1, 8, 4, 2, '2', 67.00);
INSERT INTO `t_kasus_jk` VALUES (188, 8, 1, 8, 3, 2, '3', 21.00);
INSERT INTO `t_kasus_jk` VALUES (189, 9, 1, 8, 3, 2, '10', 48.00);
INSERT INTO `t_kasus_jk` VALUES (190, 10, 1, 8, 6, 2, '27', 240.00);
INSERT INTO `t_kasus_jk` VALUES (191, 11, 1, 8, 6, 2, '37', 490.00);
INSERT INTO `t_kasus_jk` VALUES (192, 12, 1, 8, 6, 2, '45', 489.00);
INSERT INTO `t_kasus_jk` VALUES (193, 1, 1, 9, 2, 1, '29', 9.39);
INSERT INTO `t_kasus_jk` VALUES (194, 2, 1, 9, 3, 1, '210', 35.08);
INSERT INTO `t_kasus_jk` VALUES (195, 3, 1, 9, 3, 1, '197', 25.84);
INSERT INTO `t_kasus_jk` VALUES (196, 4, 1, 9, 2, 1, '102', 19.06);
INSERT INTO `t_kasus_jk` VALUES (197, 5, 1, 9, 2, 1, '5', 3.02);
INSERT INTO `t_kasus_jk` VALUES (198, 6, 1, 9, 2, 1, '1', 2.90);
INSERT INTO `t_kasus_jk` VALUES (199, 7, 1, 9, 1, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (200, 8, 1, 9, 1, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (201, 9, 1, 9, 2, 1, '2', 4.00);
INSERT INTO `t_kasus_jk` VALUES (202, 10, 1, 9, 2, 1, '1', 1.00);
INSERT INTO `t_kasus_jk` VALUES (203, 11, 1, 9, 2, 1, '37', 11.49);
INSERT INTO `t_kasus_jk` VALUES (204, 12, 1, 9, 2, 1, '54', 14.27);
INSERT INTO `t_kasus_jk` VALUES (205, 1, 1, 9, 2, 2, '37', 9.39);
INSERT INTO `t_kasus_jk` VALUES (206, 2, 1, 9, 3, 2, '223', 35.08);
INSERT INTO `t_kasus_jk` VALUES (207, 3, 1, 9, 3, 2, '180', 25.84);
INSERT INTO `t_kasus_jk` VALUES (208, 4, 1, 9, 2, 2, '97', 19.06);
INSERT INTO `t_kasus_jk` VALUES (209, 5, 1, 9, 2, 2, '6', 3.02);
INSERT INTO `t_kasus_jk` VALUES (210, 6, 1, 9, 2, 2, '2', 2.90);
INSERT INTO `t_kasus_jk` VALUES (211, 7, 1, 9, 1, 2, '1', 0.00);
INSERT INTO `t_kasus_jk` VALUES (212, 8, 1, 9, 1, 2, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (213, 9, 1, 9, 2, 2, '3', 4.00);
INSERT INTO `t_kasus_jk` VALUES (214, 10, 1, 9, 2, 2, '2', 1.00);
INSERT INTO `t_kasus_jk` VALUES (215, 11, 1, 9, 2, 2, '43', 11.49);
INSERT INTO `t_kasus_jk` VALUES (216, 12, 1, 9, 2, 2, '59', 14.27);
INSERT INTO `t_kasus_jk` VALUES (217, 1, 1, 10, 6, 1, '40', 266.00);
INSERT INTO `t_kasus_jk` VALUES (218, 2, 1, 10, 6, 1, '62', 441.00);
INSERT INTO `t_kasus_jk` VALUES (219, 3, 1, 10, 6, 1, '59', 297.50);
INSERT INTO `t_kasus_jk` VALUES (220, 4, 1, 10, 6, 1, '34', 367.70);
INSERT INTO `t_kasus_jk` VALUES (221, 5, 1, 10, 5, 1, '12', 125.60);
INSERT INTO `t_kasus_jk` VALUES (222, 6, 1, 10, 1, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (223, 7, 1, 10, 1, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (224, 8, 1, 10, 1, 1, '3', 0.00);
INSERT INTO `t_kasus_jk` VALUES (225, 9, 1, 10, 1, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (226, 10, 1, 10, 1, 1, '1', 0.00);
INSERT INTO `t_kasus_jk` VALUES (227, 11, 1, 10, 4, 1, '3', 68.00);
INSERT INTO `t_kasus_jk` VALUES (228, 12, 1, 10, 5, 1, '30', 383.70);
INSERT INTO `t_kasus_jk` VALUES (229, 1, 1, 10, 6, 2, '17', 266.00);
INSERT INTO `t_kasus_jk` VALUES (230, 2, 1, 10, 6, 2, '38', 441.00);
INSERT INTO `t_kasus_jk` VALUES (231, 3, 1, 10, 6, 2, '68', 297.50);
INSERT INTO `t_kasus_jk` VALUES (232, 4, 1, 10, 6, 2, '40', 367.70);
INSERT INTO `t_kasus_jk` VALUES (233, 5, 1, 10, 5, 2, '12', 125.60);
INSERT INTO `t_kasus_jk` VALUES (234, 6, 1, 10, 1, 2, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (235, 7, 1, 10, 1, 2, '2', 0.00);
INSERT INTO `t_kasus_jk` VALUES (236, 8, 1, 10, 1, 2, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (237, 9, 1, 10, 1, 2, '5', 0.00);
INSERT INTO `t_kasus_jk` VALUES (238, 10, 1, 10, 1, 2, '1', 0.00);
INSERT INTO `t_kasus_jk` VALUES (239, 11, 1, 10, 4, 2, '5', 68.00);
INSERT INTO `t_kasus_jk` VALUES (240, 12, 1, 10, 5, 2, '25', 383.70);
INSERT INTO `t_kasus_jk` VALUES (241, 1, 1, 11, 3, 1, '23', 34.00);
INSERT INTO `t_kasus_jk` VALUES (242, 2, 1, 11, 3, 1, '24', 29.00);
INSERT INTO `t_kasus_jk` VALUES (243, 3, 1, 11, 2, 1, '36', 20.00);
INSERT INTO `t_kasus_jk` VALUES (244, 4, 1, 11, 3, 1, '48', 30.00);
INSERT INTO `t_kasus_jk` VALUES (245, 5, 1, 11, 3, 1, '26', 35.00);
INSERT INTO `t_kasus_jk` VALUES (246, 6, 1, 11, 2, 1, '24', 12.00);
INSERT INTO `t_kasus_jk` VALUES (247, 7, 1, 11, 2, 1, '19', 10.00);
INSERT INTO `t_kasus_jk` VALUES (248, 8, 1, 11, 2, 1, '20', 8.00);
INSERT INTO `t_kasus_jk` VALUES (249, 9, 1, 11, 2, 1, '20', 2.00);
INSERT INTO `t_kasus_jk` VALUES (250, 10, 1, 11, 3, 1, '19', 25.00);
INSERT INTO `t_kasus_jk` VALUES (251, 11, 1, 11, 3, 1, '35', 31.00);
INSERT INTO `t_kasus_jk` VALUES (252, 12, 1, 11, 3, 1, '45', 45.00);
INSERT INTO `t_kasus_jk` VALUES (253, 1, 1, 11, 3, 2, '19', 34.00);
INSERT INTO `t_kasus_jk` VALUES (254, 2, 1, 11, 3, 2, '34', 29.00);
INSERT INTO `t_kasus_jk` VALUES (255, 3, 1, 11, 2, 2, '47', 20.00);
INSERT INTO `t_kasus_jk` VALUES (256, 4, 1, 11, 3, 2, '38', 30.00);
INSERT INTO `t_kasus_jk` VALUES (257, 5, 1, 11, 3, 2, '30', 35.00);
INSERT INTO `t_kasus_jk` VALUES (258, 6, 1, 11, 2, 2, '30', 12.00);
INSERT INTO `t_kasus_jk` VALUES (259, 7, 1, 11, 2, 2, '9', 10.00);
INSERT INTO `t_kasus_jk` VALUES (260, 8, 1, 11, 2, 2, '8', 8.00);
INSERT INTO `t_kasus_jk` VALUES (261, 9, 1, 11, 2, 2, '0', 2.00);
INSERT INTO `t_kasus_jk` VALUES (262, 10, 1, 11, 3, 2, '19', 25.00);
INSERT INTO `t_kasus_jk` VALUES (263, 11, 1, 11, 3, 2, '40', 31.00);
INSERT INTO `t_kasus_jk` VALUES (264, 12, 1, 11, 3, 2, '50', 45.00);
INSERT INTO `t_kasus_jk` VALUES (265, 1, 1, 12, 4, 1, '9', 79.00);
INSERT INTO `t_kasus_jk` VALUES (266, 2, 1, 12, 5, 1, '10', 110.00);
INSERT INTO `t_kasus_jk` VALUES (267, 3, 1, 12, 5, 1, '8', 103.00);
INSERT INTO `t_kasus_jk` VALUES (268, 4, 1, 12, 6, 1, '35', 1215.00);
INSERT INTO `t_kasus_jk` VALUES (269, 5, 1, 12, 6, 1, '21', 340.00);
INSERT INTO `t_kasus_jk` VALUES (270, 6, 1, 12, 6, 1, '9', 288.00);
INSERT INTO `t_kasus_jk` VALUES (271, 7, 1, 12, 3, 1, '1', 40.00);
INSERT INTO `t_kasus_jk` VALUES (272, 8, 1, 12, 4, 1, '3', 90.00);
INSERT INTO `t_kasus_jk` VALUES (273, 9, 1, 12, 3, 1, '2', 20.00);
INSERT INTO `t_kasus_jk` VALUES (274, 10, 1, 12, 2, 1, '1', 17.00);
INSERT INTO `t_kasus_jk` VALUES (275, 11, 1, 12, 6, 1, '10', 180.00);
INSERT INTO `t_kasus_jk` VALUES (276, 12, 1, 12, 6, 1, '19', 200.00);
INSERT INTO `t_kasus_jk` VALUES (277, 1, 1, 12, 4, 2, '4', 79.00);
INSERT INTO `t_kasus_jk` VALUES (278, 2, 1, 12, 5, 2, '6', 110.00);
INSERT INTO `t_kasus_jk` VALUES (279, 3, 1, 12, 5, 2, '7', 103.00);
INSERT INTO `t_kasus_jk` VALUES (280, 4, 1, 12, 6, 2, '27', 1215.00);
INSERT INTO `t_kasus_jk` VALUES (281, 5, 1, 12, 6, 2, '19', 340.00);
INSERT INTO `t_kasus_jk` VALUES (282, 6, 1, 12, 6, 2, '9', 288.00);
INSERT INTO `t_kasus_jk` VALUES (283, 7, 1, 12, 3, 2, '0', 40.00);
INSERT INTO `t_kasus_jk` VALUES (284, 8, 1, 12, 4, 2, '2', 90.00);
INSERT INTO `t_kasus_jk` VALUES (285, 9, 1, 12, 3, 2, '1', 20.00);
INSERT INTO `t_kasus_jk` VALUES (286, 10, 1, 12, 2, 2, '0', 17.00);
INSERT INTO `t_kasus_jk` VALUES (287, 11, 1, 12, 6, 2, '7', 180.00);
INSERT INTO `t_kasus_jk` VALUES (288, 12, 1, 12, 6, 2, '12', 200.00);
INSERT INTO `t_kasus_jk` VALUES (289, 1, 1, 13, 4, 1, '40', 52.00);
INSERT INTO `t_kasus_jk` VALUES (290, 2, 1, 13, 3, 1, '31', 49.00);
INSERT INTO `t_kasus_jk` VALUES (291, 3, 1, 13, 3, 1, '27', 45.00);
INSERT INTO `t_kasus_jk` VALUES (292, 4, 1, 13, 3, 1, '12', 25.00);
INSERT INTO `t_kasus_jk` VALUES (293, 5, 1, 13, 3, 1, '9', 27.00);
INSERT INTO `t_kasus_jk` VALUES (294, 6, 1, 13, 3, 1, '15', 35.00);
INSERT INTO `t_kasus_jk` VALUES (295, 7, 1, 13, 2, 1, '5', 18.00);
INSERT INTO `t_kasus_jk` VALUES (296, 8, 1, 13, 2, 1, '4', 9.00);
INSERT INTO `t_kasus_jk` VALUES (297, 9, 1, 13, 2, 1, '2', 2.00);
INSERT INTO `t_kasus_jk` VALUES (298, 10, 1, 13, 1, 1, '2', 0.00);
INSERT INTO `t_kasus_jk` VALUES (299, 11, 1, 13, 2, 1, '6', 23.00);
INSERT INTO `t_kasus_jk` VALUES (300, 12, 1, 13, 3, 1, '13', 50.00);
INSERT INTO `t_kasus_jk` VALUES (301, 1, 1, 13, 4, 2, '26', 52.00);
INSERT INTO `t_kasus_jk` VALUES (302, 2, 1, 13, 3, 2, '11', 49.00);
INSERT INTO `t_kasus_jk` VALUES (303, 3, 1, 13, 3, 2, '7', 45.00);
INSERT INTO `t_kasus_jk` VALUES (304, 4, 1, 13, 3, 2, '10', 25.00);
INSERT INTO `t_kasus_jk` VALUES (305, 5, 1, 13, 3, 2, '7', 27.00);
INSERT INTO `t_kasus_jk` VALUES (306, 6, 1, 13, 3, 2, '5', 35.00);
INSERT INTO `t_kasus_jk` VALUES (307, 7, 1, 13, 2, 2, '2', 18.00);
INSERT INTO `t_kasus_jk` VALUES (308, 8, 1, 13, 2, 2, '1', 9.00);
INSERT INTO `t_kasus_jk` VALUES (309, 9, 1, 13, 2, 2, '1', 2.00);
INSERT INTO `t_kasus_jk` VALUES (310, 10, 1, 13, 1, 2, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (311, 11, 1, 13, 2, 2, '14', 23.00);
INSERT INTO `t_kasus_jk` VALUES (312, 12, 1, 13, 3, 2, '20', 50.00);
INSERT INTO `t_kasus_jk` VALUES (313, 1, 1, 14, 6, 1, '67', 408.00);
INSERT INTO `t_kasus_jk` VALUES (314, 2, 1, 14, 6, 1, '79', 428.00);
INSERT INTO `t_kasus_jk` VALUES (315, 3, 1, 14, 6, 1, '20', 211.00);
INSERT INTO `t_kasus_jk` VALUES (316, 4, 1, 14, 6, 1, '80', 463.00);
INSERT INTO `t_kasus_jk` VALUES (317, 5, 1, 14, 6, 1, '13', 167.00);
INSERT INTO `t_kasus_jk` VALUES (318, 6, 1, 14, 4, 1, '6', 62.00);
INSERT INTO `t_kasus_jk` VALUES (319, 7, 1, 14, 3, 1, '9', 35.00);
INSERT INTO `t_kasus_jk` VALUES (320, 8, 1, 14, 2, 1, '2', 19.00);
INSERT INTO `t_kasus_jk` VALUES (321, 9, 1, 14, 1, 1, '0', 6.00);
INSERT INTO `t_kasus_jk` VALUES (322, 10, 1, 14, 6, 1, '3', 180.00);
INSERT INTO `t_kasus_jk` VALUES (323, 11, 1, 14, 5, 1, '2', 144.00);
INSERT INTO `t_kasus_jk` VALUES (324, 12, 1, 14, 6, 1, '17', 321.00);
INSERT INTO `t_kasus_jk` VALUES (325, 1, 1, 14, 6, 2, '57', 408.00);
INSERT INTO `t_kasus_jk` VALUES (326, 2, 1, 14, 6, 2, '69', 428.00);
INSERT INTO `t_kasus_jk` VALUES (327, 3, 1, 14, 6, 2, '15', 211.00);
INSERT INTO `t_kasus_jk` VALUES (328, 4, 1, 14, 6, 2, '70', 463.00);
INSERT INTO `t_kasus_jk` VALUES (329, 5, 1, 14, 6, 2, '5', 167.00);
INSERT INTO `t_kasus_jk` VALUES (330, 6, 1, 14, 4, 2, '4', 62.00);
INSERT INTO `t_kasus_jk` VALUES (331, 7, 1, 14, 3, 2, '2', 35.00);
INSERT INTO `t_kasus_jk` VALUES (332, 8, 1, 14, 2, 2, '1', 19.00);
INSERT INTO `t_kasus_jk` VALUES (333, 9, 1, 14, 1, 2, '0', 6.00);
INSERT INTO `t_kasus_jk` VALUES (334, 10, 1, 14, 6, 2, '4', 180.00);
INSERT INTO `t_kasus_jk` VALUES (335, 11, 1, 14, 5, 2, '2', 144.00);
INSERT INTO `t_kasus_jk` VALUES (336, 12, 1, 14, 6, 2, '17', 321.00);
INSERT INTO `t_kasus_jk` VALUES (337, 1, 1, 15, 4, 1, '1', 70.00);
INSERT INTO `t_kasus_jk` VALUES (338, 2, 1, 15, 6, 1, '44', 226.00);
INSERT INTO `t_kasus_jk` VALUES (339, 3, 1, 15, 6, 1, '17', 188.00);
INSERT INTO `t_kasus_jk` VALUES (340, 4, 1, 15, 4, 1, '2', 64.00);
INSERT INTO `t_kasus_jk` VALUES (341, 5, 1, 15, 5, 1, '11', 106.00);
INSERT INTO `t_kasus_jk` VALUES (342, 6, 1, 15, 4, 1, '3', 72.00);
INSERT INTO `t_kasus_jk` VALUES (343, 7, 1, 15, 1, 1, '1', 0.00);
INSERT INTO `t_kasus_jk` VALUES (344, 8, 1, 15, 4, 1, '2', 50.00);
INSERT INTO `t_kasus_jk` VALUES (345, 9, 1, 15, 3, 1, '9', 27.00);
INSERT INTO `t_kasus_jk` VALUES (346, 10, 1, 15, 6, 1, '10', 155.00);
INSERT INTO `t_kasus_jk` VALUES (347, 11, 1, 15, 3, 1, '2', 50.00);
INSERT INTO `t_kasus_jk` VALUES (348, 12, 1, 15, 5, 1, '30', 139.00);
INSERT INTO `t_kasus_jk` VALUES (349, 1, 1, 15, 4, 2, '1', 70.00);
INSERT INTO `t_kasus_jk` VALUES (350, 2, 1, 15, 6, 2, '22', 226.00);
INSERT INTO `t_kasus_jk` VALUES (351, 3, 1, 15, 6, 2, '7', 188.00);
INSERT INTO `t_kasus_jk` VALUES (352, 4, 1, 15, 4, 2, '1', 64.00);
INSERT INTO `t_kasus_jk` VALUES (353, 5, 1, 15, 5, 2, '6', 106.00);
INSERT INTO `t_kasus_jk` VALUES (354, 6, 1, 15, 4, 2, '2', 72.00);
INSERT INTO `t_kasus_jk` VALUES (355, 7, 1, 15, 1, 2, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (356, 8, 1, 15, 4, 2, '2', 50.00);
INSERT INTO `t_kasus_jk` VALUES (357, 9, 1, 15, 3, 2, '3', 27.00);
INSERT INTO `t_kasus_jk` VALUES (358, 10, 1, 15, 6, 2, '5', 155.00);
INSERT INTO `t_kasus_jk` VALUES (359, 11, 1, 15, 3, 2, '1', 50.00);
INSERT INTO `t_kasus_jk` VALUES (360, 12, 1, 15, 5, 2, '17', 139.00);
INSERT INTO `t_kasus_jk` VALUES (361, 1, 1, 16, 6, 1, '18', 270.00);
INSERT INTO `t_kasus_jk` VALUES (362, 2, 1, 16, 6, 1, '27', 280.00);
INSERT INTO `t_kasus_jk` VALUES (363, 3, 1, 16, 6, 1, '13', 170.00);
INSERT INTO `t_kasus_jk` VALUES (364, 4, 1, 16, 6, 1, '48', 140.00);
INSERT INTO `t_kasus_jk` VALUES (365, 5, 1, 16, 5, 1, '16', 76.00);
INSERT INTO `t_kasus_jk` VALUES (366, 6, 1, 16, 2, 1, '9', 13.00);
INSERT INTO `t_kasus_jk` VALUES (367, 7, 1, 16, 2, 1, '5', 14.00);
INSERT INTO `t_kasus_jk` VALUES (368, 8, 1, 16, 2, 1, '0', 10.00);
INSERT INTO `t_kasus_jk` VALUES (369, 9, 1, 16, 2, 1, '10', 5.30);
INSERT INTO `t_kasus_jk` VALUES (370, 10, 1, 16, 4, 1, '12', 69.00);
INSERT INTO `t_kasus_jk` VALUES (371, 11, 1, 16, 5, 1, '43', 100.00);
INSERT INTO `t_kasus_jk` VALUES (372, 12, 1, 16, 5, 1, '67', 120.00);
INSERT INTO `t_kasus_jk` VALUES (373, 1, 1, 16, 6, 2, '13', 270.00);
INSERT INTO `t_kasus_jk` VALUES (374, 2, 1, 16, 6, 2, '21', 280.00);
INSERT INTO `t_kasus_jk` VALUES (375, 3, 1, 16, 6, 2, '10', 170.00);
INSERT INTO `t_kasus_jk` VALUES (376, 4, 1, 16, 6, 2, '47', 140.00);
INSERT INTO `t_kasus_jk` VALUES (377, 5, 1, 16, 5, 2, '13', 76.00);
INSERT INTO `t_kasus_jk` VALUES (378, 6, 1, 16, 2, 2, '8', 13.00);
INSERT INTO `t_kasus_jk` VALUES (379, 7, 1, 16, 2, 2, '4', 14.00);
INSERT INTO `t_kasus_jk` VALUES (380, 8, 1, 16, 2, 2, '0', 10.00);
INSERT INTO `t_kasus_jk` VALUES (381, 9, 1, 16, 2, 2, '9', 5.30);
INSERT INTO `t_kasus_jk` VALUES (382, 10, 1, 16, 4, 2, '11', 69.00);
INSERT INTO `t_kasus_jk` VALUES (383, 11, 1, 16, 5, 2, '42', 100.00);
INSERT INTO `t_kasus_jk` VALUES (384, 12, 1, 16, 5, 2, '65', 120.00);
INSERT INTO `t_kasus_jk` VALUES (385, 1, 1, 17, 6, 1, '34', 231.00);
INSERT INTO `t_kasus_jk` VALUES (386, 2, 1, 17, 6, 1, '45', 269.00);
INSERT INTO `t_kasus_jk` VALUES (387, 3, 1, 17, 6, 1, '28', 223.00);
INSERT INTO `t_kasus_jk` VALUES (388, 4, 1, 17, 6, 1, '122', 299.00);
INSERT INTO `t_kasus_jk` VALUES (389, 5, 1, 17, 6, 1, '30', 243.00);
INSERT INTO `t_kasus_jk` VALUES (390, 6, 1, 17, 3, 1, '11', 26.00);
INSERT INTO `t_kasus_jk` VALUES (391, 7, 1, 17, 2, 1, '5', 13.00);
INSERT INTO `t_kasus_jk` VALUES (392, 8, 1, 17, 1, 1, '4', 0.00);
INSERT INTO `t_kasus_jk` VALUES (393, 9, 1, 17, 4, 1, '21', 55.00);
INSERT INTO `t_kasus_jk` VALUES (394, 10, 1, 17, 4, 1, '50', 84.00);
INSERT INTO `t_kasus_jk` VALUES (395, 11, 1, 17, 6, 1, '190', 271.00);
INSERT INTO `t_kasus_jk` VALUES (396, 12, 1, 17, 6, 1, '315', 315.00);
INSERT INTO `t_kasus_jk` VALUES (397, 1, 1, 17, 6, 2, '42', 231.00);
INSERT INTO `t_kasus_jk` VALUES (398, 2, 1, 17, 6, 2, '35', 269.00);
INSERT INTO `t_kasus_jk` VALUES (399, 3, 1, 17, 6, 2, '18', 223.00);
INSERT INTO `t_kasus_jk` VALUES (400, 4, 1, 17, 6, 2, '150', 299.00);
INSERT INTO `t_kasus_jk` VALUES (401, 5, 1, 17, 6, 2, '27', 243.00);
INSERT INTO `t_kasus_jk` VALUES (402, 6, 1, 17, 3, 2, '9', 26.00);
INSERT INTO `t_kasus_jk` VALUES (403, 7, 1, 17, 2, 2, '8', 13.00);
INSERT INTO `t_kasus_jk` VALUES (404, 8, 1, 17, 1, 2, '6', 0.00);
INSERT INTO `t_kasus_jk` VALUES (405, 9, 1, 17, 4, 2, '11', 55.00);
INSERT INTO `t_kasus_jk` VALUES (406, 10, 1, 17, 4, 2, '45', 84.00);
INSERT INTO `t_kasus_jk` VALUES (407, 11, 1, 17, 6, 2, '200', 271.00);
INSERT INTO `t_kasus_jk` VALUES (408, 12, 1, 17, 6, 2, '300', 315.00);
INSERT INTO `t_kasus_jk` VALUES (409, 1, 1, 18, 6, 1, '30', 476.00);
INSERT INTO `t_kasus_jk` VALUES (410, 2, 1, 18, 6, 1, '3', 198.00);
INSERT INTO `t_kasus_jk` VALUES (411, 3, 1, 18, 6, 1, '15', 224.00);
INSERT INTO `t_kasus_jk` VALUES (412, 4, 1, 18, 5, 1, '2', 138.00);
INSERT INTO `t_kasus_jk` VALUES (413, 5, 1, 18, 3, 1, '1', 35.00);
INSERT INTO `t_kasus_jk` VALUES (414, 6, 1, 18, 2, 1, '0', 1.00);
INSERT INTO `t_kasus_jk` VALUES (415, 7, 1, 18, 2, 1, '3', 4.00);
INSERT INTO `t_kasus_jk` VALUES (416, 8, 1, 18, 2, 1, '0', 2.00);
INSERT INTO `t_kasus_jk` VALUES (417, 9, 1, 18, 1, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (418, 10, 1, 18, 2, 1, '4', 2.00);
INSERT INTO `t_kasus_jk` VALUES (419, 11, 1, 18, 3, 1, '9', 48.00);
INSERT INTO `t_kasus_jk` VALUES (420, 12, 1, 18, 5, 1, '6', 128.00);
INSERT INTO `t_kasus_jk` VALUES (421, 1, 1, 18, 6, 2, '4', 476.00);
INSERT INTO `t_kasus_jk` VALUES (422, 2, 1, 18, 6, 2, '7', 198.00);
INSERT INTO `t_kasus_jk` VALUES (423, 3, 1, 18, 6, 2, '15', 224.00);
INSERT INTO `t_kasus_jk` VALUES (424, 4, 1, 18, 5, 2, '5', 138.00);
INSERT INTO `t_kasus_jk` VALUES (425, 5, 1, 18, 3, 2, '13', 35.00);
INSERT INTO `t_kasus_jk` VALUES (426, 6, 1, 18, 2, 2, '3', 1.00);
INSERT INTO `t_kasus_jk` VALUES (427, 7, 1, 18, 2, 2, '3', 4.00);
INSERT INTO `t_kasus_jk` VALUES (428, 8, 1, 18, 2, 2, '0', 2.00);
INSERT INTO `t_kasus_jk` VALUES (429, 9, 1, 18, 1, 2, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (430, 10, 1, 18, 2, 2, '4', 2.00);
INSERT INTO `t_kasus_jk` VALUES (431, 11, 1, 18, 3, 2, '11', 48.00);
INSERT INTO `t_kasus_jk` VALUES (432, 12, 1, 18, 5, 2, '20', 128.00);
INSERT INTO `t_kasus_jk` VALUES (433, 1, 1, 19, 6, 1, '30', 288.00);
INSERT INTO `t_kasus_jk` VALUES (434, 2, 1, 19, 6, 1, '27', 277.00);
INSERT INTO `t_kasus_jk` VALUES (435, 3, 1, 19, 6, 1, '20', 231.00);
INSERT INTO `t_kasus_jk` VALUES (436, 4, 1, 19, 6, 1, '70', 671.00);
INSERT INTO `t_kasus_jk` VALUES (437, 5, 1, 19, 6, 1, '35', 312.00);
INSERT INTO `t_kasus_jk` VALUES (438, 6, 1, 19, 5, 1, '13', 138.00);
INSERT INTO `t_kasus_jk` VALUES (439, 7, 1, 19, 4, 1, '5', 53.00);
INSERT INTO `t_kasus_jk` VALUES (440, 8, 1, 19, 6, 1, '18', 170.00);
INSERT INTO `t_kasus_jk` VALUES (441, 9, 1, 19, 6, 1, '15', 152.00);
INSERT INTO `t_kasus_jk` VALUES (442, 10, 1, 19, 6, 1, '40', 382.00);
INSERT INTO `t_kasus_jk` VALUES (443, 11, 1, 19, 6, 1, '27', 330.00);
INSERT INTO `t_kasus_jk` VALUES (444, 12, 1, 19, 6, 1, '33', 553.00);
INSERT INTO `t_kasus_jk` VALUES (445, 1, 1, 19, 6, 2, '27', 288.00);
INSERT INTO `t_kasus_jk` VALUES (446, 2, 1, 19, 6, 2, '23', 277.00);
INSERT INTO `t_kasus_jk` VALUES (447, 3, 1, 19, 6, 2, '19', 231.00);
INSERT INTO `t_kasus_jk` VALUES (448, 4, 1, 19, 6, 2, '61', 671.00);
INSERT INTO `t_kasus_jk` VALUES (449, 5, 1, 19, 6, 2, '29', 312.00);
INSERT INTO `t_kasus_jk` VALUES (450, 6, 1, 19, 5, 2, '9', 138.00);
INSERT INTO `t_kasus_jk` VALUES (451, 7, 1, 19, 4, 2, '4', 53.00);
INSERT INTO `t_kasus_jk` VALUES (452, 8, 1, 19, 6, 2, '13', 170.00);
INSERT INTO `t_kasus_jk` VALUES (453, 9, 1, 19, 6, 2, '11', 152.00);
INSERT INTO `t_kasus_jk` VALUES (454, 10, 1, 19, 6, 2, '30', 382.00);
INSERT INTO `t_kasus_jk` VALUES (455, 11, 1, 19, 6, 2, '21', 330.00);
INSERT INTO `t_kasus_jk` VALUES (456, 12, 1, 19, 6, 2, '31', 553.00);
INSERT INTO `t_kasus_jk` VALUES (457, 1, 1, 20, 6, 1, '78', 398.00);
INSERT INTO `t_kasus_jk` VALUES (458, 2, 1, 20, 6, 1, '56', 387.00);
INSERT INTO `t_kasus_jk` VALUES (459, 3, 1, 20, 6, 1, '21', 272.00);
INSERT INTO `t_kasus_jk` VALUES (460, 4, 1, 20, 6, 1, '89', 419.00);
INSERT INTO `t_kasus_jk` VALUES (461, 5, 1, 20, 6, 1, '20', 194.00);
INSERT INTO `t_kasus_jk` VALUES (462, 6, 1, 20, 2, 1, '4', 3.00);
INSERT INTO `t_kasus_jk` VALUES (463, 7, 1, 20, 3, 1, '5', 23.00);
INSERT INTO `t_kasus_jk` VALUES (464, 8, 1, 20, 2, 1, '2', 1.00);
INSERT INTO `t_kasus_jk` VALUES (465, 9, 1, 20, 2, 1, '10', 19.00);
INSERT INTO `t_kasus_jk` VALUES (466, 10, 1, 20, 2, 1, '2', 12.00);
INSERT INTO `t_kasus_jk` VALUES (467, 11, 1, 20, 5, 1, '35', 105.00);
INSERT INTO `t_kasus_jk` VALUES (468, 12, 1, 20, 6, 1, '79', 627.00);
INSERT INTO `t_kasus_jk` VALUES (469, 1, 1, 20, 6, 2, '56', 398.00);
INSERT INTO `t_kasus_jk` VALUES (470, 2, 1, 20, 6, 2, '68', 387.00);
INSERT INTO `t_kasus_jk` VALUES (471, 3, 1, 20, 6, 2, '11', 272.00);
INSERT INTO `t_kasus_jk` VALUES (472, 4, 1, 20, 6, 2, '79', 419.00);
INSERT INTO `t_kasus_jk` VALUES (473, 5, 1, 20, 6, 2, '30', 194.00);
INSERT INTO `t_kasus_jk` VALUES (474, 6, 1, 20, 2, 2, '10', 3.00);
INSERT INTO `t_kasus_jk` VALUES (475, 7, 1, 20, 3, 2, '3', 23.00);
INSERT INTO `t_kasus_jk` VALUES (476, 8, 1, 20, 2, 2, '1', 1.00);
INSERT INTO `t_kasus_jk` VALUES (477, 9, 1, 20, 2, 2, '5', 19.00);
INSERT INTO `t_kasus_jk` VALUES (478, 10, 1, 20, 2, 2, '2', 12.00);
INSERT INTO `t_kasus_jk` VALUES (479, 11, 1, 20, 5, 2, '50', 105.00);
INSERT INTO `t_kasus_jk` VALUES (480, 12, 1, 20, 6, 2, '70', 627.00);
INSERT INTO `t_kasus_jk` VALUES (481, 1, 1, 21, 6, 1, '190', 231.00);
INSERT INTO `t_kasus_jk` VALUES (482, 2, 1, 21, 6, 1, '215', 269.00);
INSERT INTO `t_kasus_jk` VALUES (483, 3, 1, 21, 6, 1, '200', 223.00);
INSERT INTO `t_kasus_jk` VALUES (484, 4, 1, 21, 6, 1, '372', 299.00);
INSERT INTO `t_kasus_jk` VALUES (485, 5, 1, 21, 6, 1, '255', 243.00);
INSERT INTO `t_kasus_jk` VALUES (486, 6, 1, 21, 3, 1, '100', 26.00);
INSERT INTO `t_kasus_jk` VALUES (487, 7, 1, 21, 2, 1, '60', 13.00);
INSERT INTO `t_kasus_jk` VALUES (488, 8, 1, 21, 1, 1, '30', 0.00);
INSERT INTO `t_kasus_jk` VALUES (489, 9, 1, 21, 4, 1, '100', 55.00);
INSERT INTO `t_kasus_jk` VALUES (490, 10, 1, 21, 4, 1, '120', 84.00);
INSERT INTO `t_kasus_jk` VALUES (491, 11, 1, 21, 6, 1, '260', 271.00);
INSERT INTO `t_kasus_jk` VALUES (492, 12, 1, 21, 6, 1, '420', 315.00);
INSERT INTO `t_kasus_jk` VALUES (493, 1, 1, 21, 6, 2, '180', 231.00);
INSERT INTO `t_kasus_jk` VALUES (494, 2, 1, 21, 6, 2, '200', 269.00);
INSERT INTO `t_kasus_jk` VALUES (495, 3, 1, 21, 6, 2, '190', 223.00);
INSERT INTO `t_kasus_jk` VALUES (496, 4, 1, 21, 6, 2, '350', 299.00);
INSERT INTO `t_kasus_jk` VALUES (497, 5, 1, 21, 6, 2, '209', 243.00);
INSERT INTO `t_kasus_jk` VALUES (498, 6, 1, 21, 3, 2, '67', 26.00);
INSERT INTO `t_kasus_jk` VALUES (499, 7, 1, 21, 2, 2, '57', 13.00);
INSERT INTO `t_kasus_jk` VALUES (500, 8, 1, 21, 1, 2, '25', 0.00);
INSERT INTO `t_kasus_jk` VALUES (501, 9, 1, 21, 4, 2, '97', 55.00);
INSERT INTO `t_kasus_jk` VALUES (502, 10, 1, 21, 4, 2, '107', 84.00);
INSERT INTO `t_kasus_jk` VALUES (503, 11, 1, 21, 6, 2, '230', 271.00);
INSERT INTO `t_kasus_jk` VALUES (504, 12, 1, 21, 6, 2, '390', 315.00);
INSERT INTO `t_kasus_jk` VALUES (505, 1, 1, 22, 6, 1, '7', 450.00);
INSERT INTO `t_kasus_jk` VALUES (506, 2, 1, 22, 6, 1, '10', 488.00);
INSERT INTO `t_kasus_jk` VALUES (507, 3, 1, 22, 6, 1, '1', 270.00);
INSERT INTO `t_kasus_jk` VALUES (508, 4, 1, 22, 4, 1, '5', 76.00);
INSERT INTO `t_kasus_jk` VALUES (509, 5, 1, 22, 5, 1, '10', 140.00);
INSERT INTO `t_kasus_jk` VALUES (510, 6, 1, 22, 4, 1, '3', 82.00);
INSERT INTO `t_kasus_jk` VALUES (511, 7, 1, 22, 4, 1, '5', 50.00);
INSERT INTO `t_kasus_jk` VALUES (512, 8, 1, 22, 2, 1, '1', 8.00);
INSERT INTO `t_kasus_jk` VALUES (513, 9, 1, 22, 2, 1, '3', 6.80);
INSERT INTO `t_kasus_jk` VALUES (514, 10, 1, 22, 5, 1, '9', 120.00);
INSERT INTO `t_kasus_jk` VALUES (515, 11, 1, 22, 6, 1, '11', 198.00);
INSERT INTO `t_kasus_jk` VALUES (516, 12, 1, 22, 6, 1, '16', 610.00);
INSERT INTO `t_kasus_jk` VALUES (517, 1, 1, 22, 6, 2, '8', 450.00);
INSERT INTO `t_kasus_jk` VALUES (518, 2, 1, 22, 6, 2, '11', 488.00);
INSERT INTO `t_kasus_jk` VALUES (519, 3, 1, 22, 6, 2, '3', 270.00);
INSERT INTO `t_kasus_jk` VALUES (520, 4, 1, 22, 4, 2, '2', 76.00);
INSERT INTO `t_kasus_jk` VALUES (521, 5, 1, 22, 5, 2, '7', 140.00);
INSERT INTO `t_kasus_jk` VALUES (522, 6, 1, 22, 4, 2, '1', 82.00);
INSERT INTO `t_kasus_jk` VALUES (523, 7, 1, 22, 4, 2, '3', 50.00);
INSERT INTO `t_kasus_jk` VALUES (524, 8, 1, 22, 2, 2, '1', 8.00);
INSERT INTO `t_kasus_jk` VALUES (525, 9, 1, 22, 2, 2, '0', 6.80);
INSERT INTO `t_kasus_jk` VALUES (526, 10, 1, 22, 5, 2, '2', 120.00);
INSERT INTO `t_kasus_jk` VALUES (527, 11, 1, 22, 6, 2, '1', 198.00);
INSERT INTO `t_kasus_jk` VALUES (528, 12, 1, 22, 6, 2, '15', 610.00);
INSERT INTO `t_kasus_jk` VALUES (529, 1, 1, 23, 6, 1, '203', 270.00);
INSERT INTO `t_kasus_jk` VALUES (530, 2, 1, 23, 6, 1, '215', 280.00);
INSERT INTO `t_kasus_jk` VALUES (531, 3, 1, 23, 6, 1, '180', 170.00);
INSERT INTO `t_kasus_jk` VALUES (532, 4, 1, 23, 6, 1, '139', 140.00);
INSERT INTO `t_kasus_jk` VALUES (533, 5, 1, 23, 5, 1, '100', 76.00);
INSERT INTO `t_kasus_jk` VALUES (534, 6, 1, 23, 2, 1, '50', 13.00);
INSERT INTO `t_kasus_jk` VALUES (535, 7, 1, 23, 2, 1, '57', 14.00);
INSERT INTO `t_kasus_jk` VALUES (536, 8, 1, 23, 2, 1, '40', 10.00);
INSERT INTO `t_kasus_jk` VALUES (537, 9, 1, 23, 2, 1, '35', 5.30);
INSERT INTO `t_kasus_jk` VALUES (538, 10, 1, 23, 4, 1, '10', 69.00);
INSERT INTO `t_kasus_jk` VALUES (539, 11, 1, 23, 5, 1, '78', 100.00);
INSERT INTO `t_kasus_jk` VALUES (540, 12, 1, 23, 5, 1, '115', 120.00);
INSERT INTO `t_kasus_jk` VALUES (541, 1, 1, 23, 6, 2, '209', 270.00);
INSERT INTO `t_kasus_jk` VALUES (542, 2, 1, 23, 6, 2, '222', 280.00);
INSERT INTO `t_kasus_jk` VALUES (543, 3, 1, 23, 6, 2, '167', 170.00);
INSERT INTO `t_kasus_jk` VALUES (544, 4, 1, 23, 6, 2, '105', 140.00);
INSERT INTO `t_kasus_jk` VALUES (545, 5, 1, 23, 5, 2, '120', 76.00);
INSERT INTO `t_kasus_jk` VALUES (546, 6, 1, 23, 2, 2, '25', 13.00);
INSERT INTO `t_kasus_jk` VALUES (547, 7, 1, 23, 2, 2, '47', 14.00);
INSERT INTO `t_kasus_jk` VALUES (548, 8, 1, 23, 2, 2, '50', 10.00);
INSERT INTO `t_kasus_jk` VALUES (549, 9, 1, 23, 2, 2, '25', 5.30);
INSERT INTO `t_kasus_jk` VALUES (550, 10, 1, 23, 4, 2, '9', 69.00);
INSERT INTO `t_kasus_jk` VALUES (551, 11, 1, 23, 5, 2, '67', 100.00);
INSERT INTO `t_kasus_jk` VALUES (552, 12, 1, 23, 5, 2, '105', 120.00);
INSERT INTO `t_kasus_jk` VALUES (553, 1, 1, 24, 4, 1, '180', 57.00);
INSERT INTO `t_kasus_jk` VALUES (554, 2, 1, 24, 3, 1, '120', 37.00);
INSERT INTO `t_kasus_jk` VALUES (555, 3, 1, 24, 3, 1, '107', 48.00);
INSERT INTO `t_kasus_jk` VALUES (556, 4, 1, 24, 4, 1, '215', 85.00);
INSERT INTO `t_kasus_jk` VALUES (557, 5, 1, 24, 3, 1, '135', 36.00);
INSERT INTO `t_kasus_jk` VALUES (558, 6, 1, 24, 3, 1, '155', 42.00);
INSERT INTO `t_kasus_jk` VALUES (559, 7, 1, 24, 3, 1, '15', 32.00);
INSERT INTO `t_kasus_jk` VALUES (560, 8, 1, 24, 3, 1, '25', 47.00);
INSERT INTO `t_kasus_jk` VALUES (561, 9, 1, 24, 1, 1, '20', 0.00);
INSERT INTO `t_kasus_jk` VALUES (562, 10, 1, 24, 3, 1, '43', 38.00);
INSERT INTO `t_kasus_jk` VALUES (563, 11, 1, 24, 4, 1, '69', 52.00);
INSERT INTO `t_kasus_jk` VALUES (564, 12, 1, 24, 4, 1, '78', 68.00);
INSERT INTO `t_kasus_jk` VALUES (565, 1, 1, 24, 4, 2, '175', 57.00);
INSERT INTO `t_kasus_jk` VALUES (566, 2, 1, 24, 3, 2, '100', 37.00);
INSERT INTO `t_kasus_jk` VALUES (567, 3, 1, 24, 3, 2, '120', 48.00);
INSERT INTO `t_kasus_jk` VALUES (568, 4, 1, 24, 4, 2, '220', 85.00);
INSERT INTO `t_kasus_jk` VALUES (569, 5, 1, 24, 3, 2, '95', 36.00);
INSERT INTO `t_kasus_jk` VALUES (570, 6, 1, 24, 3, 2, '101', 42.00);
INSERT INTO `t_kasus_jk` VALUES (571, 7, 1, 24, 3, 2, '20', 32.00);
INSERT INTO `t_kasus_jk` VALUES (572, 8, 1, 24, 3, 2, '15', 47.00);
INSERT INTO `t_kasus_jk` VALUES (573, 9, 1, 24, 1, 2, '21', 0.00);
INSERT INTO `t_kasus_jk` VALUES (574, 10, 1, 24, 3, 2, '50', 38.00);
INSERT INTO `t_kasus_jk` VALUES (575, 11, 1, 24, 4, 2, '35', 52.00);
INSERT INTO `t_kasus_jk` VALUES (576, 12, 1, 24, 4, 2, '86', 68.00);
INSERT INTO `t_kasus_jk` VALUES (577, 1, 1, 25, 4, 1, '55', 57.00);
INSERT INTO `t_kasus_jk` VALUES (578, 2, 1, 25, 3, 1, '21', 37.00);
INSERT INTO `t_kasus_jk` VALUES (579, 3, 1, 25, 3, 1, '32', 48.00);
INSERT INTO `t_kasus_jk` VALUES (580, 4, 1, 25, 4, 1, '120', 85.00);
INSERT INTO `t_kasus_jk` VALUES (581, 5, 1, 25, 3, 1, '47', 36.00);
INSERT INTO `t_kasus_jk` VALUES (582, 6, 1, 25, 3, 1, '12', 42.00);
INSERT INTO `t_kasus_jk` VALUES (583, 7, 1, 25, 3, 1, '11', 32.00);
INSERT INTO `t_kasus_jk` VALUES (584, 8, 1, 25, 3, 1, '20', 47.00);
INSERT INTO `t_kasus_jk` VALUES (585, 9, 1, 25, 1, 1, '10', 0.00);
INSERT INTO `t_kasus_jk` VALUES (586, 10, 1, 25, 3, 1, '35', 38.00);
INSERT INTO `t_kasus_jk` VALUES (587, 11, 1, 25, 4, 1, '66', 52.00);
INSERT INTO `t_kasus_jk` VALUES (588, 12, 1, 25, 4, 1, '89', 68.00);
INSERT INTO `t_kasus_jk` VALUES (589, 1, 1, 25, 4, 2, '65', 57.00);
INSERT INTO `t_kasus_jk` VALUES (590, 2, 1, 25, 3, 2, '31', 37.00);
INSERT INTO `t_kasus_jk` VALUES (591, 3, 1, 25, 3, 2, '22', 48.00);
INSERT INTO `t_kasus_jk` VALUES (592, 4, 1, 25, 4, 2, '130', 85.00);
INSERT INTO `t_kasus_jk` VALUES (593, 5, 1, 25, 3, 2, '37', 36.00);
INSERT INTO `t_kasus_jk` VALUES (594, 6, 1, 25, 3, 2, '9', 42.00);
INSERT INTO `t_kasus_jk` VALUES (595, 7, 1, 25, 3, 2, '10', 32.00);
INSERT INTO `t_kasus_jk` VALUES (596, 8, 1, 25, 3, 2, '18', 47.00);
INSERT INTO `t_kasus_jk` VALUES (597, 9, 1, 25, 1, 2, '9', 0.00);
INSERT INTO `t_kasus_jk` VALUES (598, 10, 1, 25, 3, 2, '45', 38.00);
INSERT INTO `t_kasus_jk` VALUES (599, 11, 1, 25, 4, 2, '46', 52.00);
INSERT INTO `t_kasus_jk` VALUES (600, 12, 1, 25, 4, 2, '80', 68.00);
INSERT INTO `t_kasus_jk` VALUES (601, 1, 1, 26, 2, 1, '87', 10.90);
INSERT INTO `t_kasus_jk` VALUES (602, 2, 1, 26, 2, 1, '20', 8.60);
INSERT INTO `t_kasus_jk` VALUES (603, 3, 1, 26, 2, 1, '93', 16.70);
INSERT INTO `t_kasus_jk` VALUES (604, 4, 1, 26, 2, 1, '39', 12.60);
INSERT INTO `t_kasus_jk` VALUES (605, 5, 1, 26, 2, 1, '12', 4.00);
INSERT INTO `t_kasus_jk` VALUES (606, 6, 1, 26, 2, 1, '3', 0.90);
INSERT INTO `t_kasus_jk` VALUES (607, 7, 1, 26, 2, 1, '2', 0.50);
INSERT INTO `t_kasus_jk` VALUES (608, 8, 1, 26, 2, 1, '0', 0.03);
INSERT INTO `t_kasus_jk` VALUES (609, 9, 1, 26, 2, 1, '1', 0.10);
INSERT INTO `t_kasus_jk` VALUES (610, 10, 1, 26, 1, 1, '2', 0.00);
INSERT INTO `t_kasus_jk` VALUES (611, 11, 1, 26, 2, 1, '1', 1.60);
INSERT INTO `t_kasus_jk` VALUES (612, 12, 1, 26, 2, 1, '100', 12.20);
INSERT INTO `t_kasus_jk` VALUES (613, 1, 1, 26, 2, 2, '90', 10.90);
INSERT INTO `t_kasus_jk` VALUES (614, 2, 1, 26, 2, 2, '15', 8.60);
INSERT INTO `t_kasus_jk` VALUES (615, 3, 1, 26, 2, 2, '73', 16.70);
INSERT INTO `t_kasus_jk` VALUES (616, 4, 1, 26, 2, 2, '27', 12.60);
INSERT INTO `t_kasus_jk` VALUES (617, 5, 1, 26, 2, 2, '9', 4.00);
INSERT INTO `t_kasus_jk` VALUES (618, 6, 1, 26, 2, 2, '3', 0.90);
INSERT INTO `t_kasus_jk` VALUES (619, 7, 1, 26, 2, 2, '2', 0.50);
INSERT INTO `t_kasus_jk` VALUES (620, 8, 1, 26, 2, 2, '0', 0.03);
INSERT INTO `t_kasus_jk` VALUES (621, 9, 1, 26, 2, 2, '1', 0.10);
INSERT INTO `t_kasus_jk` VALUES (622, 10, 1, 26, 1, 2, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (623, 11, 1, 26, 2, 2, '1', 1.60);
INSERT INTO `t_kasus_jk` VALUES (624, 12, 1, 26, 2, 2, '80', 12.20);
INSERT INTO `t_kasus_jk` VALUES (625, 1, 1, 27, 6, 1, '3', 284.00);
INSERT INTO `t_kasus_jk` VALUES (626, 2, 1, 27, 6, 1, '9', 349.00);
INSERT INTO `t_kasus_jk` VALUES (627, 3, 1, 27, 6, 1, '2', 282.00);
INSERT INTO `t_kasus_jk` VALUES (628, 4, 1, 27, 6, 1, '4', 319.00);
INSERT INTO `t_kasus_jk` VALUES (629, 5, 1, 27, 4, 1, '1', 54.00);
INSERT INTO `t_kasus_jk` VALUES (630, 6, 1, 27, 5, 1, '2', 146.00);
INSERT INTO `t_kasus_jk` VALUES (631, 7, 1, 27, 2, 1, '0', 19.00);
INSERT INTO `t_kasus_jk` VALUES (632, 8, 1, 27, 2, 1, '0', 13.00);
INSERT INTO `t_kasus_jk` VALUES (633, 9, 1, 27, 1, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (634, 10, 1, 27, 4, 1, '3', 59.00);
INSERT INTO `t_kasus_jk` VALUES (635, 11, 1, 27, 5, 1, '3', 121.00);
INSERT INTO `t_kasus_jk` VALUES (636, 12, 1, 27, 6, 1, '0', 269.00);
INSERT INTO `t_kasus_jk` VALUES (637, 1, 1, 27, 6, 2, '4', 284.00);
INSERT INTO `t_kasus_jk` VALUES (638, 2, 1, 27, 6, 2, '10', 349.00);
INSERT INTO `t_kasus_jk` VALUES (639, 3, 1, 27, 6, 2, '3', 282.00);
INSERT INTO `t_kasus_jk` VALUES (640, 4, 1, 27, 6, 2, '3', 319.00);
INSERT INTO `t_kasus_jk` VALUES (641, 5, 1, 27, 4, 2, '2', 54.00);
INSERT INTO `t_kasus_jk` VALUES (642, 6, 1, 27, 5, 2, '1', 146.00);
INSERT INTO `t_kasus_jk` VALUES (643, 7, 1, 27, 2, 2, '2', 19.00);
INSERT INTO `t_kasus_jk` VALUES (644, 8, 1, 27, 2, 2, '4', 13.00);
INSERT INTO `t_kasus_jk` VALUES (645, 9, 1, 27, 1, 2, '2', 0.00);
INSERT INTO `t_kasus_jk` VALUES (646, 10, 1, 27, 4, 2, '3', 59.00);
INSERT INTO `t_kasus_jk` VALUES (647, 11, 1, 27, 5, 2, '0', 121.00);
INSERT INTO `t_kasus_jk` VALUES (648, 12, 1, 27, 6, 2, '1', 269.00);
INSERT INTO `t_kasus_jk` VALUES (649, 1, 2, 1, 6, 1, '59', 207.00);
INSERT INTO `t_kasus_jk` VALUES (650, 2, 2, 1, 6, 1, '70', 336.00);
INSERT INTO `t_kasus_jk` VALUES (651, 3, 2, 1, 6, 1, '64', 292.00);
INSERT INTO `t_kasus_jk` VALUES (652, 4, 2, 1, 6, 1, '54', 271.00);
INSERT INTO `t_kasus_jk` VALUES (653, 5, 2, 1, 6, 1, '64', 292.00);
INSERT INTO `t_kasus_jk` VALUES (654, 6, 2, 1, 3, 1, '25', 30.00);
INSERT INTO `t_kasus_jk` VALUES (655, 7, 2, 1, 4, 1, '40', 63.00);
INSERT INTO `t_kasus_jk` VALUES (656, 8, 2, 1, 3, 1, '29', 41.00);
INSERT INTO `t_kasus_jk` VALUES (657, 9, 2, 1, 4, 1, '56', 87.00);
INSERT INTO `t_kasus_jk` VALUES (658, 10, 2, 1, 6, 1, '60', 327.00);
INSERT INTO `t_kasus_jk` VALUES (659, 11, 2, 1, 6, 1, '60', 207.00);
INSERT INTO `t_kasus_jk` VALUES (660, 12, 2, 1, 6, 1, '58', 262.00);
INSERT INTO `t_kasus_jk` VALUES (661, 1, 2, 1, 6, 2, '59', 207.00);
INSERT INTO `t_kasus_jk` VALUES (662, 2, 2, 1, 6, 2, '61', 336.00);
INSERT INTO `t_kasus_jk` VALUES (663, 3, 2, 1, 6, 2, '55', 292.00);
INSERT INTO `t_kasus_jk` VALUES (664, 4, 2, 1, 6, 2, '55', 271.00);
INSERT INTO `t_kasus_jk` VALUES (665, 5, 2, 1, 6, 2, '63', 292.00);
INSERT INTO `t_kasus_jk` VALUES (666, 6, 2, 1, 3, 2, '39', 30.00);
INSERT INTO `t_kasus_jk` VALUES (667, 7, 2, 1, 4, 2, '52', 63.00);
INSERT INTO `t_kasus_jk` VALUES (668, 8, 2, 1, 3, 2, '48', 41.00);
INSERT INTO `t_kasus_jk` VALUES (669, 9, 2, 1, 4, 2, '44', 87.00);
INSERT INTO `t_kasus_jk` VALUES (670, 10, 2, 1, 6, 2, '72', 327.00);
INSERT INTO `t_kasus_jk` VALUES (671, 11, 2, 1, 6, 2, '59', 207.00);
INSERT INTO `t_kasus_jk` VALUES (672, 12, 2, 1, 6, 2, '50', 262.00);
INSERT INTO `t_kasus_jk` VALUES (673, 1, 2, 2, 6, 1, '128', 461.00);
INSERT INTO `t_kasus_jk` VALUES (674, 2, 2, 2, 6, 1, '76', 287.00);
INSERT INTO `t_kasus_jk` VALUES (675, 3, 2, 2, 6, 1, '32', 134.00);
INSERT INTO `t_kasus_jk` VALUES (676, 4, 2, 2, 3, 1, '0', 30.00);
INSERT INTO `t_kasus_jk` VALUES (677, 5, 2, 2, 4, 1, '1', 63.00);
INSERT INTO `t_kasus_jk` VALUES (678, 6, 2, 2, 3, 1, '0', 41.00);
INSERT INTO `t_kasus_jk` VALUES (679, 7, 2, 2, 3, 1, '0', 30.00);
INSERT INTO `t_kasus_jk` VALUES (680, 8, 2, 2, 6, 1, '12', 234.00);
INSERT INTO `t_kasus_jk` VALUES (681, 9, 2, 2, 6, 1, '3', 356.00);
INSERT INTO `t_kasus_jk` VALUES (682, 10, 2, 2, 6, 1, '4', 231.00);
INSERT INTO `t_kasus_jk` VALUES (683, 11, 2, 2, 6, 1, '3', 205.00);
INSERT INTO `t_kasus_jk` VALUES (684, 12, 2, 2, 6, 1, '6', 272.00);
INSERT INTO `t_kasus_jk` VALUES (685, 1, 2, 2, 6, 2, '120', 461.00);
INSERT INTO `t_kasus_jk` VALUES (686, 2, 2, 2, 6, 2, '36', 287.00);
INSERT INTO `t_kasus_jk` VALUES (687, 3, 2, 2, 6, 2, '12', 134.00);
INSERT INTO `t_kasus_jk` VALUES (688, 4, 2, 2, 3, 2, '1', 30.00);
INSERT INTO `t_kasus_jk` VALUES (689, 5, 2, 2, 4, 2, '0', 63.00);
INSERT INTO `t_kasus_jk` VALUES (690, 6, 2, 2, 3, 2, '0', 41.00);
INSERT INTO `t_kasus_jk` VALUES (691, 7, 2, 2, 3, 2, '14', 30.00);
INSERT INTO `t_kasus_jk` VALUES (692, 8, 2, 2, 6, 2, '21', 234.00);
INSERT INTO `t_kasus_jk` VALUES (693, 9, 2, 2, 6, 2, '12', 356.00);
INSERT INTO `t_kasus_jk` VALUES (694, 10, 2, 2, 6, 2, '32', 231.00);
INSERT INTO `t_kasus_jk` VALUES (695, 11, 2, 2, 6, 2, '9', 205.00);
INSERT INTO `t_kasus_jk` VALUES (696, 12, 2, 2, 6, 2, '12', 272.00);
INSERT INTO `t_kasus_jk` VALUES (697, 1, 2, 3, 6, 1, '30', 254.00);
INSERT INTO `t_kasus_jk` VALUES (698, 2, 2, 3, 6, 1, '38', 300.00);
INSERT INTO `t_kasus_jk` VALUES (699, 3, 2, 3, 6, 1, '59', 683.00);
INSERT INTO `t_kasus_jk` VALUES (700, 4, 2, 3, 6, 1, '37', 333.00);
INSERT INTO `t_kasus_jk` VALUES (701, 5, 2, 3, 6, 1, '24', 208.00);
INSERT INTO `t_kasus_jk` VALUES (702, 6, 2, 3, 5, 1, '21', 127.00);
INSERT INTO `t_kasus_jk` VALUES (703, 7, 2, 3, 2, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (704, 8, 2, 3, 1, 1, '0', 0.00);
INSERT INTO `t_kasus_jk` VALUES (705, 9, 2, 3, 5, 1, '10', 141.00);
INSERT INTO `t_kasus_jk` VALUES (706, 10, 2, 3, 6, 1, '12', 230.00);
INSERT INTO `t_kasus_jk` VALUES (707, 11, 2, 3, 6, 1, '68', 516.00);
INSERT INTO `t_kasus_jk` VALUES (708, 12, 2, 3, 6, 1, '38', 353.00);
INSERT INTO `t_kasus_jk` VALUES (709, 1, 2, 3, 6, 2, '33', 254.00);
INSERT INTO `t_kasus_jk` VALUES (710, 2, 2, 3, 6, 2, '39', 300.00);
INSERT INTO `t_kasus_jk` VALUES (711, 3, 2, 3, 6, 2, '60', 683.00);
INSERT INTO `t_kasus_jk` VALUES (712, 4, 2, 3, 6, 2, '41', 333.00);
INSERT INTO `t_kasus_jk` VALUES (713, 5, 2, 3, 6, 2, '32', 208.00);
INSERT INTO `t_kasus_jk` VALUES (714, 6, 2, 3, 5, 2, '21', 127.00);
INSERT INTO `t_kasus_jk` VALUES (715, 7, 2, 3, 2, 2, '2', 0.00);
INSERT INTO `t_kasus_jk` VALUES (716, 8, 2, 3, 1, 2, '1', 0.00);
INSERT INTO `t_kasus_jk` VALUES (717, 9, 2, 3, 5, 2, '27', 141.00);
INSERT INTO `t_kasus_jk` VALUES (718, 10, 2, 3, 6, 2, '38', 230.00);
INSERT INTO `t_kasus_jk` VALUES (719, 11, 2, 3, 6, 2, '41', 516.00);
INSERT INTO `t_kasus_jk` VALUES (720, 12, 2, 3, 6, 2, '12', 353.00);
INSERT INTO `t_kasus_jk` VALUES (721, 1, 2, 4, 6, 1, '47', 207.00);
INSERT INTO `t_kasus_jk` VALUES (722, 2, 2, 4, 6, 1, '54', 336.00);
INSERT INTO `t_kasus_jk` VALUES (723, 3, 2, 4, 6, 1, '42', 290.00);
INSERT INTO `t_kasus_jk` VALUES (724, 4, 2, 4, 6, 1, '48', 271.00);
INSERT INTO `t_kasus_jk` VALUES (725, 5, 2, 4, 6, 1, '51', 292.00);
INSERT INTO `t_kasus_jk` VALUES (726, 6, 2, 4, 3, 1, '28', 30.00);
INSERT INTO `t_kasus_jk` VALUES (727, 7, 2, 4, 4, 1, '32', 63.00);
INSERT INTO `t_kasus_jk` VALUES (728, 8, 2, 4, 3, 1, '31', 41.00);
INSERT INTO `t_kasus_jk` VALUES (729, 9, 2, 4, 4, 1, '12', 87.00);
INSERT INTO `t_kasus_jk` VALUES (730, 10, 2, 4, 6, 1, '63', 327.00);
INSERT INTO `t_kasus_jk` VALUES (731, 11, 2, 4, 6, 1, '46', 207.00);
INSERT INTO `t_kasus_jk` VALUES (732, 12, 2, 4, 6, 1, '52', 261.00);
INSERT INTO `t_kasus_jk` VALUES (733, 1, 2, 4, 6, 2, '42', 207.00);
INSERT INTO `t_kasus_jk` VALUES (734, 2, 2, 4, 6, 2, '65', 336.00);
INSERT INTO `t_kasus_jk` VALUES (735, 3, 2, 4, 6, 2, '36', 290.00);
INSERT INTO `t_kasus_jk` VALUES (736, 4, 2, 4, 6, 2, '43', 271.00);
INSERT INTO `t_kasus_jk` VALUES (737, 5, 2, 4, 6, 2, '51', 292.00);
INSERT INTO `t_kasus_jk` VALUES (738, 6, 2, 4, 3, 2, '12', 30.00);
INSERT INTO `t_kasus_jk` VALUES (739, 7, 2, 4, 4, 2, '28', 63.00);
INSERT INTO `t_kasus_jk` VALUES (740, 8, 2, 4, 3, 2, '21', 41.00);
INSERT INTO `t_kasus_jk` VALUES (741, 9, 2, 4, 4, 2, '3', 87.00);
INSERT INTO `t_kasus_jk` VALUES (742, 10, 2, 4, 6, 2, '64', 327.00);
INSERT INTO `t_kasus_jk` VALUES (743, 11, 2, 4, 6, 2, '45', 207.00);
INSERT INTO `t_kasus_jk` VALUES (744, 12, 2, 4, 6, 2, '52', 261.00);
INSERT INTO `t_kasus_jk` VALUES (745, 1, 2, 5, 6, 1, '98', 382.00);
INSERT INTO `t_kasus_jk` VALUES (746, 2, 2, 5, 5, 1, '84', 117.00);
INSERT INTO `t_kasus_jk` VALUES (747, 3, 2, 5, 6, 1, '51', 239.00);
INSERT INTO `t_kasus_jk` VALUES (748, 4, 2, 5, 6, 1, '34', 336.00);
INSERT INTO `t_kasus_jk` VALUES (749, 5, 2, 5, 5, 1, '21', 147.00);
INSERT INTO `t_kasus_jk` VALUES (750, 6, 2, 5, 6, 1, '7', 151.00);
INSERT INTO `t_kasus_jk` VALUES (751, 7, 2, 5, 4, 1, '12', 99.00);
INSERT INTO `t_kasus_jk` VALUES (752, 8, 2, 5, 3, 1, '5', 30.00);
INSERT INTO `t_kasus_jk` VALUES (753, 9, 2, 5, 6, 1, '12', 182.00);
INSERT INTO `t_kasus_jk` VALUES (754, 10, 2, 5, 6, 1, '9', 366.00);
INSERT INTO `t_kasus_jk` VALUES (755, 11, 2, 5, 6, 1, '12', 307.00);
INSERT INTO `t_kasus_jk` VALUES (756, 12, 2, 5, 6, 1, '9', 278.00);
INSERT INTO `t_kasus_jk` VALUES (757, 1, 2, 5, 6, 2, '87', 382.00);
INSERT INTO `t_kasus_jk` VALUES (758, 2, 2, 5, 5, 2, '54', 117.00);
INSERT INTO `t_kasus_jk` VALUES (759, 3, 2, 5, 6, 2, '12', 239.00);
INSERT INTO `t_kasus_jk` VALUES (760, 4, 2, 5, 6, 2, '7', 336.00);
INSERT INTO `t_kasus_jk` VALUES (761, 5, 2, 5, 5, 2, '21', 147.00);
INSERT INTO `t_kasus_jk` VALUES (762, 6, 2, 5, 6, 2, '11', 151.00);
INSERT INTO `t_kasus_jk` VALUES (763, 7, 2, 5, 4, 2, '0', 99.00);
INSERT INTO `t_kasus_jk` VALUES (764, 8, 2, 5, 3, 2, '8', 30.00);
INSERT INTO `t_kasus_jk` VALUES (765, 9, 2, 5, 6, 2, '10', 182.00);
INSERT INTO `t_kasus_jk` VALUES (766, 10, 2, 5, 6, 2, '32', 366.00);
INSERT INTO `t_kasus_jk` VALUES (767, 11, 2, 5, 6, 2, '29', 307.00);
INSERT INTO `t_kasus_jk` VALUES (768, 12, 2, 5, 6, 2, '26', 278.00);
INSERT INTO `t_kasus_jk` VALUES (769, 1, 2, 6, 6, 1, '13', 263.00);
INSERT INTO `t_kasus_jk` VALUES (770, 2, 2, 6, 6, 1, '36', 701.00);
INSERT INTO `t_kasus_jk` VALUES (771, 3, 2, 6, 6, 1, '16', 467.00);
INSERT INTO `t_kasus_jk` VALUES (772, 4, 2, 6, 6, 1, '6', 362.00);
INSERT INTO `t_kasus_jk` VALUES (773, 5, 2, 6, 6, 1, '12', 221.00);
INSERT INTO `t_kasus_jk` VALUES (774, 6, 2, 6, 5, 1, '14', 101.00);
INSERT INTO `t_kasus_jk` VALUES (775, 7, 2, 6, 2, 1, '0', 3.00);
INSERT INTO `t_kasus_jk` VALUES (776, 8, 2, 6, 2, 1, '0', 14.00);
INSERT INTO `t_kasus_jk` VALUES (777, 9, 2, 6, 6, 1, '3', 229.00);
INSERT INTO `t_kasus_jk` VALUES (778, 10, 2, 6, 4, 1, '0', 57.00);
INSERT INTO `t_kasus_jk` VALUES (779, 11, 2, 6, 6, 1, '12', 469.00);
INSERT INTO `t_kasus_jk` VALUES (780, 12, 2, 6, 6, 1, '9', 424.00);
INSERT INTO `t_kasus_jk` VALUES (781, 1, 2, 6, 6, 2, '2', 263.00);
INSERT INTO `t_kasus_jk` VALUES (782, 2, 2, 6, 6, 2, '18', 701.00);
INSERT INTO `t_kasus_jk` VALUES (783, 3, 2, 6, 6, 2, '12', 467.00);
INSERT INTO `t_kasus_jk` VALUES (784, 4, 2, 6, 6, 2, '7', 362.00);
INSERT INTO `t_kasus_jk` VALUES (785, 5, 2, 6, 6, 2, '9', 221.00);
INSERT INTO `t_kasus_jk` VALUES (786, 6, 2, 6, 5, 2, '0', 101.00);
INSERT INTO `t_kasus_jk` VALUES (787, 7, 2, 6, 2, 2, '0', 3.00);
INSERT INTO `t_kasus_jk` VALUES (788, 8, 2, 6, 2, 2, '0', 14.00);
INSERT INTO `t_kasus_jk` VALUES (789, 9, 2, 6, 6, 2, '0', 229.00);
INSERT INTO `t_kasus_jk` VALUES (790, 10, 2, 6, 4, 2, '0', 57.00);
INSERT INTO `t_kasus_jk` VALUES (791, 11, 2, 6, 6, 2, '6', 469.00);
INSERT INTO `t_kasus_jk` VALUES (792, 12, 2, 6, 6, 2, '4', 424.00);
INSERT INTO `t_kasus_jk` VALUES (793, 1, 2, 7, 6, 1, '129', 452.00);
INSERT INTO `t_kasus_jk` VALUES (794, 2, 2, 7, 5, 1, '59', 125.00);
INSERT INTO `t_kasus_jk` VALUES (795, 3, 2, 7, 6, 1, '61', 238.00);
INSERT INTO `t_kasus_jk` VALUES (796, 4, 2, 7, 3, 1, '7', 45.00);
INSERT INTO `t_kasus_jk` VALUES (797, 5, 2, 7, 6, 1, '39', 276.00);
INSERT INTO `t_kasus_jk` VALUES (798, 6, 2, 7, 6, 1, '49', 378.00);
INSERT INTO `t_kasus_jk` VALUES (799, 7, 2, 7, 6, 1, '54', 289.00);
INSERT INTO `t_kasus_jk` VALUES (800, 8, 2, 7, 6, 1, '153', 399.00);
INSERT INTO `t_kasus_jk` VALUES (801, 9, 2, 7, 6, 1, '78', 189.00);
INSERT INTO `t_kasus_jk` VALUES (802, 10, 2, 7, 6, 1, '50', 298.00);
INSERT INTO `t_kasus_jk` VALUES (803, 11, 2, 7, 5, 1, '17', 126.00);
INSERT INTO `t_kasus_jk` VALUES (804, 12, 2, 7, 6, 1, '19', 341.00);
INSERT INTO `t_kasus_jk` VALUES (805, 1, 2, 7, 6, 2, '169', 452.00);
INSERT INTO `t_kasus_jk` VALUES (806, 2, 2, 7, 5, 2, '39', 125.00);
INSERT INTO `t_kasus_jk` VALUES (807, 3, 2, 7, 6, 2, '29', 238.00);
INSERT INTO `t_kasus_jk` VALUES (808, 4, 2, 7, 3, 2, '9', 45.00);
INSERT INTO `t_kasus_jk` VALUES (809, 5, 2, 7, 6, 2, '18', 276.00);
INSERT INTO `t_kasus_jk` VALUES (810, 6, 2, 7, 6, 2, '39', 378.00);
INSERT INTO `t_kasus_jk` VALUES (811, 7, 2, 7, 6, 2, '67', 289.00);
INSERT INTO `t_kasus_jk` VALUES (812, 8, 2, 7, 6, 2, '84', 399.00);
INSERT INTO `t_kasus_jk` VALUES (813, 9, 2, 7, 6, 2, '53', 189.00);
INSERT INTO `t_kasus_jk` VALUES (814, 10, 2, 7, 6, 2, '59', 298.00);
INSERT INTO `t_kasus_jk` VALUES (815, 11, 2, 7, 5, 2, '48', 126.00);
INSERT INTO `t_kasus_jk` VALUES (816, 12, 2, 7, 6, 2, '128', 341.00);
INSERT INTO `t_kasus_jk` VALUES (817, 1, 2, 8, 6, 1, '32', 405.00);
INSERT INTO `t_kasus_jk` VALUES (818, 2, 2, 8, 6, 1, '20', 462.00);
INSERT INTO `t_kasus_jk` VALUES (819, 3, 2, 8, 6, 1, '19', 399.00);
INSERT INTO `t_kasus_jk` VALUES (820, 4, 2, 8, 6, 1, '15', 361.00);
INSERT INTO `t_kasus_jk` VALUES (821, 5, 2, 8, 6, 1, '7', 192.00);
INSERT INTO `t_kasus_jk` VALUES (822, 6, 2, 8, 3, 1, '2', 41.00);
INSERT INTO `t_kasus_jk` VALUES (823, 7, 2, 8, 4, 1, '6', 62.00);
INSERT INTO `t_kasus_jk` VALUES (824, 8, 2, 8, 3, 1, '0', 20.00);
INSERT INTO `t_kasus_jk` VALUES (825, 9, 2, 8, 3, 1, '0', 48.00);
INSERT INTO `t_kasus_jk` VALUES (826, 10, 2, 8, 6, 1, '16', 237.00);
INSERT INTO `t_kasus_jk` VALUES (827, 11, 2, 8, 6, 1, '32', 498.00);
INSERT INTO `t_kasus_jk` VALUES (828, 12, 2, 8, 6, 1, '21', 496.00);
INSERT INTO `t_kasus_jk` VALUES (829, 1, 2, 8, 6, 2, '34', 405.00);
INSERT INTO `t_kasus_jk` VALUES (830, 2, 2, 8, 6, 2, '23', 462.00);
INSERT INTO `t_kasus_jk` VALUES (831, 3, 2, 8, 6, 2, '11', 399.00);
INSERT INTO `t_kasus_jk` VALUES (832, 4, 2, 8, 6, 2, '28', 361.00);
INSERT INTO `t_kasus_jk` VALUES (833, 5, 2, 8, 6, 2, '12', 192.00);
INSERT INTO `t_kasus_jk` VALUES (834, 6, 2, 8, 3, 2, '3', 41.00);
INSERT INTO `t_kasus_jk` VALUES (835, 7, 2, 8, 4, 2, '8', 62.00);
INSERT INTO `t_kasus_jk` VALUES (836, 8, 2, 8, 2, 2, '0', 20.00);
INSERT INTO `t_kasus_jk` VALUES (837, 9, 2, 8, 3, 2, '2', 48.00);
INSERT INTO `t_kasus_jk` VALUES (838, 10, 2, 8, 6, 2, '12', 237.00);
INSERT INTO `t_kasus_jk` VALUES (839, 11, 2, 8, 6, 2, '21', 498.00);
INSERT INTO `t_kasus_jk` VALUES (840, 12, 2, 8, 6, 2, '38', 496.00);
INSERT INTO `t_kasus_jk` VALUES (841, 1, 2, 9, 6, 1, '67', 550.00);
INSERT INTO `t_kasus_jk` VALUES (842, 2, 2, 9, 6, 1, '72', 588.30);
INSERT INTO `t_kasus_jk` VALUES (843, 3, 2, 9, 6, 1, '21', 370.50);
INSERT INTO `t_kasus_jk` VALUES (844, 4, 2, 9, 6, 1, '18', 176.50);
INSERT INTO `t_kasus_jk` VALUES (845, 5, 2, 9, 6, 1, '31', 240.10);
INSERT INTO `t_kasus_jk` VALUES (846, 6, 2, 9, 4, 1, '9', 92.60);
INSERT INTO `t_kasus_jk` VALUES (847, 7, 2, 9, 3, 1, '6', 50.90);
INSERT INTO `t_kasus_jk` VALUES (848, 8, 2, 9, 2, 1, '0', 8.30);
INSERT INTO `t_kasus_jk` VALUES (849, 9, 2, 9, 2, 1, '0', 18.60);
INSERT INTO `t_kasus_jk` VALUES (850, 10, 2, 9, 5, 1, '38', 137.70);
INSERT INTO `t_kasus_jk` VALUES (851, 11, 2, 9, 6, 1, '89', 212.80);
INSERT INTO `t_kasus_jk` VALUES (852, 12, 2, 9, 6, 1, '105', 605.50);
INSERT INTO `t_kasus_jk` VALUES (853, 1, 2, 9, 6, 2, '120', 550.00);
INSERT INTO `t_kasus_jk` VALUES (854, 2, 2, 9, 6, 2, '93', 588.30);
INSERT INTO `t_kasus_jk` VALUES (855, 3, 2, 9, 6, 2, '21', 370.50);
INSERT INTO `t_kasus_jk` VALUES (856, 4, 2, 9, 6, 2, '19', 176.50);
INSERT INTO `t_kasus_jk` VALUES (857, 5, 2, 9, 6, 2, '12', 240.10);
INSERT INTO `t_kasus_jk` VALUES (858, 6, 2, 9, 4, 2, '0', 92.60);
INSERT INTO `t_kasus_jk` VALUES (859, 7, 2, 9, 3, 2, '0', 50.90);
INSERT INTO `t_kasus_jk` VALUES (860, 8, 2, 9, 2, 2, '0', 8.30);
INSERT INTO `t_kasus_jk` VALUES (861, 9, 2, 9, 2, 2, '0', 18.60);
INSERT INTO `t_kasus_jk` VALUES (862, 10, 2, 9, 5, 2, '32', 137.70);
INSERT INTO `t_kasus_jk` VALUES (863, 11, 2, 9, 6, 2, '9', 212.80);
INSERT INTO `t_kasus_jk` VALUES (864, 12, 2, 9, 6, 2, '118', 605.50);
INSERT INTO `t_kasus_jk` VALUES (865, 1, 2, 10, 6, 1, '178', 405.00);
INSERT INTO `t_kasus_jk` VALUES (866, 2, 2, 10, 6, 1, '98', 462.00);
INSERT INTO `t_kasus_jk` VALUES (867, 3, 2, 10, 6, 1, '76', 399.00);
INSERT INTO `t_kasus_jk` VALUES (868, 4, 2, 10, 6, 1, '54', 361.00);
INSERT INTO `t_kasus_jk` VALUES (869, 5, 2, 10, 6, 1, '21', 192.00);
INSERT INTO `t_kasus_jk` VALUES (870, 6, 2, 10, 3, 1, '0', 41.00);
INSERT INTO `t_kasus_jk` VALUES (871, 7, 2, 10, 4, 1, '0', 62.00);
INSERT INTO `t_kasus_jk` VALUES (872, 8, 2, 10, 2, 1, '2', 20.00);
INSERT INTO `t_kasus_jk` VALUES (873, 9, 2, 10, 3, 1, '6', 48.00);
INSERT INTO `t_kasus_jk` VALUES (874, 10, 2, 10, 6, 1, '12', 237.00);
INSERT INTO `t_kasus_jk` VALUES (875, 11, 2, 10, 6, 1, '31', 489.00);
INSERT INTO `t_kasus_jk` VALUES (876, 12, 2, 10, 6, 1, '136', 496.00);
INSERT INTO `t_kasus_jk` VALUES (877, 1, 2, 10, 6, 2, '78', 405.00);
INSERT INTO `t_kasus_jk` VALUES (878, 2, 2, 10, 6, 2, '109', 462.00);
INSERT INTO `t_kasus_jk` VALUES (879, 3, 2, 10, 6, 2, '76', 399.00);
INSERT INTO `t_kasus_jk` VALUES (880, 4, 2, 10, 6, 2, '65', 361.00);
INSERT INTO `t_kasus_jk` VALUES (881, 5, 2, 10, 6, 2, '53', 192.00);
INSERT INTO `t_kasus_jk` VALUES (882, 6, 2, 10, 3, 2, '21', 41.00);
INSERT INTO `t_kasus_jk` VALUES (883, 7, 2, 10, 4, 2, '19', 62.00);
INSERT INTO `t_kasus_jk` VALUES (884, 8, 2, 10, 2, 2, '0', 20.00);
INSERT INTO `t_kasus_jk` VALUES (885, 9, 2, 10, 3, 2, '0', 48.00);
INSERT INTO `t_kasus_jk` VALUES (886, 10, 2, 10, 6, 2, '12', 237.00);
INSERT INTO `t_kasus_jk` VALUES (887, 11, 2, 10, 6, 2, '28', 489.00);
INSERT INTO `t_kasus_jk` VALUES (888, 12, 2, 10, 6, 2, '78', 496.00);
INSERT INTO `t_kasus_jk` VALUES (889, 1, 2, 11, 4, 1, '18', 60.00);
INSERT INTO `t_kasus_jk` VALUES (890, 2, 2, 11, 4, 1, '21', 65.00);
INSERT INTO `t_kasus_jk` VALUES (891, 3, 2, 11, 4, 1, '31', 78.00);
INSERT INTO `t_kasus_jk` VALUES (892, 4, 2, 11, 4, 1, '42', 80.00);
INSERT INTO `t_kasus_jk` VALUES (893, 5, 2, 11, 4, 1, '19', 62.00);
INSERT INTO `t_kasus_jk` VALUES (894, 6, 2, 11, 4, 1, '21', 66.00);
INSERT INTO `t_kasus_jk` VALUES (895, 7, 2, 11, 4, 1, '32', 79.00);
INSERT INTO `t_kasus_jk` VALUES (896, 8, 2, 11, 4, 1, '25', 68.00);
INSERT INTO `t_kasus_jk` VALUES (897, 9, 2, 11, 4, 1, '28', 69.00);
INSERT INTO `t_kasus_jk` VALUES (898, 10, 2, 11, 4, 1, '32', 79.00);
INSERT INTO `t_kasus_jk` VALUES (899, 11, 2, 11, 4, 1, '41', 80.00);
INSERT INTO `t_kasus_jk` VALUES (900, 12, 2, 11, 4, 1, '16', 59.00);
INSERT INTO `t_kasus_jk` VALUES (901, 1, 2, 11, 4, 2, '28', 68.00);
INSERT INTO `t_kasus_jk` VALUES (902, 2, 2, 11, 4, 2, '52', 99.00);
INSERT INTO `t_kasus_jk` VALUES (903, 3, 2, 11, 4, 2, '42', 81.00);
INSERT INTO `t_kasus_jk` VALUES (904, 4, 2, 11, 4, 2, '11', 60.00);
INSERT INTO `t_kasus_jk` VALUES (905, 5, 2, 11, 4, 2, '21', 66.00);
INSERT INTO `t_kasus_jk` VALUES (906, 6, 2, 11, 4, 2, '26', 65.00);
INSERT INTO `t_kasus_jk` VALUES (907, 7, 2, 11, 4, 2, '29', 67.00);
INSERT INTO `t_kasus_jk` VALUES (908, 8, 2, 11, 4, 2, '15', 58.00);
INSERT INTO `t_kasus_jk` VALUES (909, 9, 2, 11, 4, 2, '25', 64.00);
INSERT INTO `t_kasus_jk` VALUES (910, 10, 2, 11, 4, 2, '48', 89.00);
INSERT INTO `t_kasus_jk` VALUES (911, 11, 2, 11, 4, 2, '32', 80.00);
INSERT INTO `t_kasus_jk` VALUES (912, 12, 2, 11, 4, 2, '52', 99.00);
INSERT INTO `t_kasus_jk` VALUES (913, 1, 2, 12, 3, 1, '10', 49.00);
INSERT INTO `t_kasus_jk` VALUES (914, 2, 2, 12, 4, 1, '14', 52.00);
INSERT INTO `t_kasus_jk` VALUES (915, 3, 2, 12, 4, 1, '11', 50.00);
INSERT INTO `t_kasus_jk` VALUES (916, 4, 2, 12, 3, 1, '8', 32.00);
INSERT INTO `t_kasus_jk` VALUES (917, 5, 2, 12, 3, 1, '6', 30.00);
INSERT INTO `t_kasus_jk` VALUES (918, 6, 2, 12, 3, 1, '8', 33.00);
INSERT INTO `t_kasus_jk` VALUES (919, 7, 2, 12, 4, 1, '12', 52.00);
INSERT INTO `t_kasus_jk` VALUES (920, 8, 2, 12, 4, 1, '10', 50.00);
INSERT INTO `t_kasus_jk` VALUES (921, 9, 2, 12, 3, 1, '9', 49.00);
INSERT INTO `t_kasus_jk` VALUES (922, 10, 2, 12, 4, 1, '12', 51.00);
INSERT INTO `t_kasus_jk` VALUES (923, 11, 2, 12, 3, 1, '8', 32.00);
INSERT INTO `t_kasus_jk` VALUES (924, 12, 2, 12, 3, 1, '7', 32.00);
INSERT INTO `t_kasus_jk` VALUES (925, 1, 2, 12, 3, 2, '10', 48.00);
INSERT INTO `t_kasus_jk` VALUES (926, 2, 2, 12, 3, 2, '9', 47.00);
INSERT INTO `t_kasus_jk` VALUES (927, 3, 2, 12, 4, 2, '12', 65.00);
INSERT INTO `t_kasus_jk` VALUES (928, 4, 2, 12, 3, 2, '6', 32.00);
INSERT INTO `t_kasus_jk` VALUES (929, 5, 2, 12, 4, 2, '8', 65.00);
INSERT INTO `t_kasus_jk` VALUES (930, 6, 2, 12, 3, 2, '5', 43.00);
INSERT INTO `t_kasus_jk` VALUES (931, 7, 2, 12, 3, 2, '10', 47.00);
INSERT INTO `t_kasus_jk` VALUES (932, 8, 2, 12, 3, 2, '9', 43.00);
INSERT INTO `t_kasus_jk` VALUES (933, 9, 2, 12, 3, 2, '3', 32.00);
INSERT INTO `t_kasus_jk` VALUES (934, 10, 2, 12, 4, 2, '12', 64.00);
INSERT INTO `t_kasus_jk` VALUES (935, 11, 2, 12, 3, 2, '9', 45.00);
INSERT INTO `t_kasus_jk` VALUES (936, 12, 2, 12, 3, 2, '6', 42.00);
INSERT INTO `t_kasus_jk` VALUES (937, 1, 2, 13, 4, 1, '12', 76.00);
INSERT INTO `t_kasus_jk` VALUES (938, 2, 2, 13, 4, 1, '16', 79.00);
INSERT INTO `t_kasus_jk` VALUES (939, 3, 2, 13, 4, 1, '10', 75.00);
INSERT INTO `t_kasus_jk` VALUES (940, 4, 2, 13, 4, 1, '8', 65.00);
INSERT INTO `t_kasus_jk` VALUES (941, 5, 2, 13, 4, 1, '21', 88.00);
INSERT INTO `t_kasus_jk` VALUES (942, 6, 2, 13, 4, 1, '19', 80.00);
INSERT INTO `t_kasus_jk` VALUES (943, 7, 2, 13, 4, 1, '20', 80.00);

-- ----------------------------
-- Table structure for t_kasus_ks
-- ----------------------------
DROP TABLE IF EXISTS `t_kasus_ks`;
CREATE TABLE `t_kasus_ks`  (
  `id_kasus_ks` int NOT NULL AUTO_INCREMENT,
  `id_tahun` int NOT NULL,
  `id_kota` int NOT NULL,
  `id_ks` int NOT NULL,
  `jumlah_kasus_ks` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kasus_ks`) USING BTREE,
  INDEX `id_thn`(`id_tahun` ASC) USING BTREE,
  INDEX `id_kota`(`id_kota` ASC) USING BTREE,
  INDEX `id_jenkas`(`id_ks` ASC) USING BTREE,
  CONSTRAINT `id_jenkas` FOREIGN KEY (`id_ks`) REFERENCES `t_jenis_kasus` (`id_kasus`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id_kota` FOREIGN KEY (`id_kota`) REFERENCES `t_kab_kota` (`id_kab`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id_thn` FOREIGN KEY (`id_tahun`) REFERENCES `t_tahun` (`id_tahun`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 555 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_kasus_ks
-- ----------------------------
INSERT INTO `t_kasus_ks` VALUES (246, 2, 1, 1, '11');
INSERT INTO `t_kasus_ks` VALUES (247, 2, 1, 2, '1285');
INSERT INTO `t_kasus_ks` VALUES (248, 2, 2, 1, '5');
INSERT INTO `t_kasus_ks` VALUES (249, 2, 2, 2, '556');
INSERT INTO `t_kasus_ks` VALUES (250, 2, 3, 1, '9');
INSERT INTO `t_kasus_ks` VALUES (251, 2, 3, 2, '675');
INSERT INTO `t_kasus_ks` VALUES (252, 2, 4, 1, '21');
INSERT INTO `t_kasus_ks` VALUES (253, 2, 4, 2, '2282');
INSERT INTO `t_kasus_ks` VALUES (254, 2, 5, 1, '7');
INSERT INTO `t_kasus_ks` VALUES (255, 2, 5, 2, '644');
INSERT INTO `t_kasus_ks` VALUES (256, 2, 6, 1, '3');
INSERT INTO `t_kasus_ks` VALUES (257, 2, 6, 2, '176');
INSERT INTO `t_kasus_ks` VALUES (258, 2, 7, 1, '6');
INSERT INTO `t_kasus_ks` VALUES (259, 2, 7, 2, '1451');
INSERT INTO `t_kasus_ks` VALUES (260, 2, 8, 1, '3');
INSERT INTO `t_kasus_ks` VALUES (261, 2, 8, 2, '359');
INSERT INTO `t_kasus_ks` VALUES (262, 2, 9, 1, '14');
INSERT INTO `t_kasus_ks` VALUES (263, 2, 9, 2, '866');
INSERT INTO `t_kasus_ks` VALUES (264, 2, 10, 1, '6');
INSERT INTO `t_kasus_ks` VALUES (265, 2, 10, 2, '1147');
INSERT INTO `t_kasus_ks` VALUES (266, 2, 11, 1, '7');
INSERT INTO `t_kasus_ks` VALUES (267, 2, 11, 2, '700');
INSERT INTO `t_kasus_ks` VALUES (268, 2, 12, 1, '3');
INSERT INTO `t_kasus_ks` VALUES (269, 2, 12, 2, '211');
INSERT INTO `t_kasus_ks` VALUES (270, 2, 13, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (271, 2, 13, 2, '279');
INSERT INTO `t_kasus_ks` VALUES (272, 2, 14, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (273, 2, 14, 2, '534');
INSERT INTO `t_kasus_ks` VALUES (274, 2, 15, 1, '13');
INSERT INTO `t_kasus_ks` VALUES (275, 2, 15, 2, '1316');
INSERT INTO `t_kasus_ks` VALUES (276, 2, 16, 1, '5');
INSERT INTO `t_kasus_ks` VALUES (277, 2, 16, 2, '312');
INSERT INTO `t_kasus_ks` VALUES (278, 2, 17, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (279, 2, 17, 2, '964');
INSERT INTO `t_kasus_ks` VALUES (280, 2, 18, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (281, 2, 18, 2, '196');
INSERT INTO `t_kasus_ks` VALUES (282, 2, 19, 1, '6');
INSERT INTO `t_kasus_ks` VALUES (283, 2, 19, 2, '235');
INSERT INTO `t_kasus_ks` VALUES (284, 2, 20, 1, '3');
INSERT INTO `t_kasus_ks` VALUES (447, 1, 1, 1, '84');
INSERT INTO `t_kasus_ks` VALUES (448, 1, 1, 2, '1126');
INSERT INTO `t_kasus_ks` VALUES (449, 1, 2, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (450, 1, 2, 2, '612');
INSERT INTO `t_kasus_ks` VALUES (451, 1, 3, 1, '6');
INSERT INTO `t_kasus_ks` VALUES (452, 1, 3, 2, '637');
INSERT INTO `t_kasus_ks` VALUES (453, 1, 4, 1, '10');
INSERT INTO `t_kasus_ks` VALUES (454, 1, 4, 2, '2625');
INSERT INTO `t_kasus_ks` VALUES (455, 1, 5, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (456, 1, 5, 2, '769');
INSERT INTO `t_kasus_ks` VALUES (457, 1, 6, 1, '3');
INSERT INTO `t_kasus_ks` VALUES (458, 1, 6, 2, '207');
INSERT INTO `t_kasus_ks` VALUES (459, 1, 7, 1, '1');
INSERT INTO `t_kasus_ks` VALUES (460, 1, 7, 2, '403');
INSERT INTO `t_kasus_ks` VALUES (461, 1, 8, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (462, 1, 8, 2, '501');
INSERT INTO `t_kasus_ks` VALUES (463, 1, 9, 1, '17');
INSERT INTO `t_kasus_ks` VALUES (464, 1, 9, 2, '1274');
INSERT INTO `t_kasus_ks` VALUES (465, 1, 10, 1, '2');
INSERT INTO `t_kasus_ks` VALUES (466, 1, 10, 2, '455');
INSERT INTO `t_kasus_ks` VALUES (467, 1, 11, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (468, 1, 11, 2, '663');
INSERT INTO `t_kasus_ks` VALUES (469, 1, 12, 1, '1');
INSERT INTO `t_kasus_ks` VALUES (470, 1, 12, 2, '221');
INSERT INTO `t_kasus_ks` VALUES (471, 1, 13, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (472, 1, 13, 2, '266');
INSERT INTO `t_kasus_ks` VALUES (473, 1, 14, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (474, 1, 14, 2, '544');
INSERT INTO `t_kasus_ks` VALUES (475, 1, 15, 1, '2');
INSERT INTO `t_kasus_ks` VALUES (476, 1, 15, 2, '197');
INSERT INTO `t_kasus_ks` VALUES (477, 1, 16, 1, '5');
INSERT INTO `t_kasus_ks` VALUES (478, 1, 16, 2, '506');
INSERT INTO `t_kasus_ks` VALUES (479, 1, 17, 1, '5');
INSERT INTO `t_kasus_ks` VALUES (480, 1, 17, 2, '1701');
INSERT INTO `t_kasus_ks` VALUES (481, 1, 18, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (482, 1, 18, 2, '158');
INSERT INTO `t_kasus_ks` VALUES (483, 1, 19, 1, '10');
INSERT INTO `t_kasus_ks` VALUES (484, 1, 19, 2, '601');
INSERT INTO `t_kasus_ks` VALUES (485, 1, 20, 1, '2');
INSERT INTO `t_kasus_ks` VALUES (486, 1, 20, 2, '784');
INSERT INTO `t_kasus_ks` VALUES (487, 1, 21, 1, '14');
INSERT INTO `t_kasus_ks` VALUES (488, 1, 21, 2, '4410');
INSERT INTO `t_kasus_ks` VALUES (489, 1, 22, 1, '2');
INSERT INTO `t_kasus_ks` VALUES (490, 1, 22, 2, '133');
INSERT INTO `t_kasus_ks` VALUES (491, 1, 23, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (492, 1, 23, 2, '2729');
INSERT INTO `t_kasus_ks` VALUES (493, 1, 24, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (494, 1, 24, 2, '2200');
INSERT INTO `t_kasus_ks` VALUES (495, 1, 25, 1, '2');
INSERT INTO `t_kasus_ks` VALUES (496, 1, 25, 2, '1018');
INSERT INTO `t_kasus_ks` VALUES (497, 1, 26, 1, '6');
INSERT INTO `t_kasus_ks` VALUES (498, 1, 26, 2, '652');
INSERT INTO `t_kasus_ks` VALUES (499, 1, 27, 1, '1');
INSERT INTO `t_kasus_ks` VALUES (500, 1, 27, 2, '61');
INSERT INTO `t_kasus_ks` VALUES (501, 3, 1, 1, '22');
INSERT INTO `t_kasus_ks` VALUES (502, 3, 1, 2, '2198');
INSERT INTO `t_kasus_ks` VALUES (503, 3, 2, 1, '1');
INSERT INTO `t_kasus_ks` VALUES (504, 3, 2, 2, '271');
INSERT INTO `t_kasus_ks` VALUES (505, 3, 3, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (506, 3, 3, 2, '426');
INSERT INTO `t_kasus_ks` VALUES (507, 3, 4, 1, '24');
INSERT INTO `t_kasus_ks` VALUES (508, 3, 4, 2, '2002');
INSERT INTO `t_kasus_ks` VALUES (509, 3, 5, 1, '13');
INSERT INTO `t_kasus_ks` VALUES (510, 3, 5, 2, '998');
INSERT INTO `t_kasus_ks` VALUES (511, 3, 6, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (512, 3, 6, 2, '48');
INSERT INTO `t_kasus_ks` VALUES (513, 3, 7, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (514, 3, 7, 2, '466');
INSERT INTO `t_kasus_ks` VALUES (515, 3, 8, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (516, 3, 8, 2, '540');
INSERT INTO `t_kasus_ks` VALUES (517, 3, 9, 1, '10');
INSERT INTO `t_kasus_ks` VALUES (518, 3, 9, 2, '809');
INSERT INTO `t_kasus_ks` VALUES (519, 3, 10, 1, '5');
INSERT INTO `t_kasus_ks` VALUES (520, 3, 10, 2, '442');
INSERT INTO `t_kasus_ks` VALUES (521, 3, 11, 1, '15');
INSERT INTO `t_kasus_ks` VALUES (522, 3, 11, 2, '1249');
INSERT INTO `t_kasus_ks` VALUES (523, 3, 12, 1, '4');
INSERT INTO `t_kasus_ks` VALUES (524, 3, 12, 2, '184');
INSERT INTO `t_kasus_ks` VALUES (525, 3, 13, 1, '7');
INSERT INTO `t_kasus_ks` VALUES (526, 3, 13, 2, '280');
INSERT INTO `t_kasus_ks` VALUES (527, 3, 14, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (528, 3, 14, 2, '220');
INSERT INTO `t_kasus_ks` VALUES (529, 3, 15, 1, '9');
INSERT INTO `t_kasus_ks` VALUES (530, 3, 15, 2, '920');
INSERT INTO `t_kasus_ks` VALUES (531, 3, 16, 1, '7');
INSERT INTO `t_kasus_ks` VALUES (532, 3, 16, 2, '363');
INSERT INTO `t_kasus_ks` VALUES (533, 3, 17, 1, '2');
INSERT INTO `t_kasus_ks` VALUES (534, 3, 17, 2, '417');
INSERT INTO `t_kasus_ks` VALUES (535, 3, 18, 1, '1');
INSERT INTO `t_kasus_ks` VALUES (536, 3, 18, 2, '78');
INSERT INTO `t_kasus_ks` VALUES (537, 3, 19, 1, '7');
INSERT INTO `t_kasus_ks` VALUES (538, 3, 19, 2, '519');
INSERT INTO `t_kasus_ks` VALUES (539, 3, 20, 1, '3');
INSERT INTO `t_kasus_ks` VALUES (540, 3, 20, 2, '446');
INSERT INTO `t_kasus_ks` VALUES (541, 3, 21, 1, '13');
INSERT INTO `t_kasus_ks` VALUES (542, 3, 21, 2, '3730');
INSERT INTO `t_kasus_ks` VALUES (543, 3, 22, 1, '0');
INSERT INTO `t_kasus_ks` VALUES (544, 3, 22, 2, '166');
INSERT INTO `t_kasus_ks` VALUES (545, 3, 23, 1, '11');
INSERT INTO `t_kasus_ks` VALUES (546, 3, 23, 2, '1833');
INSERT INTO `t_kasus_ks` VALUES (547, 3, 24, 1, '1');
INSERT INTO `t_kasus_ks` VALUES (548, 3, 24, 2, '3154');
INSERT INTO `t_kasus_ks` VALUES (549, 3, 25, 1, '22');
INSERT INTO `t_kasus_ks` VALUES (550, 3, 25, 2, '568');
INSERT INTO `t_kasus_ks` VALUES (551, 3, 26, 1, '21');
INSERT INTO `t_kasus_ks` VALUES (552, 3, 26, 2, '888');
INSERT INTO `t_kasus_ks` VALUES (553, 3, 27, 1, '2');
INSERT INTO `t_kasus_ks` VALUES (554, 3, 27, 2, '27');

-- ----------------------------
-- Table structure for t_kasus_tu
-- ----------------------------
DROP TABLE IF EXISTS `t_kasus_tu`;
CREATE TABLE `t_kasus_tu`  (
  `id_kasus_tu` int NOT NULL AUTO_INCREMENT,
  `id_tahun` int NOT NULL,
  `id_kota` int NOT NULL,
  `id_tingkat` int NOT NULL,
  `jumlah_kasus_tu` int NOT NULL,
  PRIMARY KEY (`id_kasus_tu`) USING BTREE,
  INDEX `id_thn`(`id_tahun` ASC) USING BTREE,
  INDEX `id_kota`(`id_kota` ASC) USING BTREE,
  INDEX `id_tingkat`(`id_tingkat` ASC) USING BTREE,
  CONSTRAINT `t_kasus_tu_ibfk_5` FOREIGN KEY (`id_kota`) REFERENCES `t_kab_kota` (`id_kab`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_kasus_tu_ibfk_6` FOREIGN KEY (`id_tahun`) REFERENCES `t_tahun` (`id_tahun`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_kasus_tu_ibfk_7` FOREIGN KEY (`id_tingkat`) REFERENCES `t_tingkat_umur` (`id_tingkat`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 460 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_kasus_tu
-- ----------------------------
INSERT INTO `t_kasus_tu` VALUES (217, 1, 1, 1, 181);
INSERT INTO `t_kasus_tu` VALUES (218, 1, 1, 2, 626);
INSERT INTO `t_kasus_tu` VALUES (219, 1, 1, 3, 403);
INSERT INTO `t_kasus_tu` VALUES (220, 1, 2, 1, 98);
INSERT INTO `t_kasus_tu` VALUES (221, 1, 2, 2, 313);
INSERT INTO `t_kasus_tu` VALUES (222, 1, 2, 3, 205);
INSERT INTO `t_kasus_tu` VALUES (223, 1, 3, 1, 101);
INSERT INTO `t_kasus_tu` VALUES (224, 1, 3, 2, 328);
INSERT INTO `t_kasus_tu` VALUES (225, 1, 3, 3, 214);
INSERT INTO `t_kasus_tu` VALUES (226, 1, 4, 1, 512);
INSERT INTO `t_kasus_tu` VALUES (227, 1, 4, 2, 1245);
INSERT INTO `t_kasus_tu` VALUES (228, 1, 4, 3, 878);
INSERT INTO `t_kasus_tu` VALUES (229, 1, 5, 1, 112);
INSERT INTO `t_kasus_tu` VALUES (230, 1, 5, 2, 401);
INSERT INTO `t_kasus_tu` VALUES (231, 1, 5, 3, 256);
INSERT INTO `t_kasus_tu` VALUES (232, 1, 6, 1, 37);
INSERT INTO `t_kasus_tu` VALUES (233, 1, 6, 2, 103);
INSERT INTO `t_kasus_tu` VALUES (234, 1, 6, 3, 70);
INSERT INTO `t_kasus_tu` VALUES (235, 1, 7, 1, 35);
INSERT INTO `t_kasus_tu` VALUES (236, 1, 7, 2, 235);
INSERT INTO `t_kasus_tu` VALUES (237, 1, 7, 3, 134);
INSERT INTO `t_kasus_tu` VALUES (238, 1, 8, 1, 80);
INSERT INTO `t_kasus_tu` VALUES (239, 1, 8, 2, 257);
INSERT INTO `t_kasus_tu` VALUES (240, 1, 8, 3, 168);
INSERT INTO `t_kasus_tu` VALUES (241, 1, 9, 1, 221);
INSERT INTO `t_kasus_tu` VALUES (242, 1, 9, 2, 640);
INSERT INTO `t_kasus_tu` VALUES (243, 1, 9, 3, 430);
INSERT INTO `t_kasus_tu` VALUES (244, 1, 10, 1, 95);
INSERT INTO `t_kasus_tu` VALUES (245, 1, 10, 2, 210);
INSERT INTO `t_kasus_tu` VALUES (246, 1, 10, 3, 152);
INSERT INTO `t_kasus_tu` VALUES (247, 1, 11, 1, 75);
INSERT INTO `t_kasus_tu` VALUES (248, 1, 11, 2, 367);
INSERT INTO `t_kasus_tu` VALUES (249, 1, 11, 3, 221);
INSERT INTO `t_kasus_tu` VALUES (250, 1, 12, 1, 50);
INSERT INTO `t_kasus_tu` VALUES (251, 1, 12, 2, 98);
INSERT INTO `t_kasus_tu` VALUES (252, 1, 12, 3, 74);
INSERT INTO `t_kasus_tu` VALUES (253, 1, 13, 1, 68);
INSERT INTO `t_kasus_tu` VALUES (254, 1, 13, 2, 112);
INSERT INTO `t_kasus_tu` VALUES (255, 1, 13, 3, 90);
INSERT INTO `t_kasus_tu` VALUES (256, 1, 14, 1, 133);
INSERT INTO `t_kasus_tu` VALUES (257, 1, 14, 2, 230);
INSERT INTO `t_kasus_tu` VALUES (258, 1, 14, 3, 181);
INSERT INTO `t_kasus_tu` VALUES (259, 1, 15, 1, 44);
INSERT INTO `t_kasus_tu` VALUES (260, 1, 15, 2, 89);
INSERT INTO `t_kasus_tu` VALUES (261, 1, 15, 3, 66);
INSERT INTO `t_kasus_tu` VALUES (262, 1, 16, 1, 125);
INSERT INTO `t_kasus_tu` VALUES (263, 1, 16, 2, 216);
INSERT INTO `t_kasus_tu` VALUES (264, 1, 16, 3, 170);
INSERT INTO `t_kasus_tu` VALUES (265, 1, 17, 1, 434);
INSERT INTO `t_kasus_tu` VALUES (266, 1, 17, 2, 704);
INSERT INTO `t_kasus_tu` VALUES (267, 1, 17, 3, 568);
INSERT INTO `t_kasus_tu` VALUES (268, 1, 18, 1, 39);
INSERT INTO `t_kasus_tu` VALUES (269, 1, 18, 2, 67);
INSERT INTO `t_kasus_tu` VALUES (270, 1, 18, 3, 52);
INSERT INTO `t_kasus_tu` VALUES (271, 1, 19, 1, 67);
INSERT INTO `t_kasus_tu` VALUES (272, 1, 19, 2, 341);
INSERT INTO `t_kasus_tu` VALUES (273, 1, 19, 3, 203);
INSERT INTO `t_kasus_tu` VALUES (274, 1, 20, 1, 173);
INSERT INTO `t_kasus_tu` VALUES (275, 1, 20, 2, 351);
INSERT INTO `t_kasus_tu` VALUES (276, 1, 20, 3, 262);
INSERT INTO `t_kasus_tu` VALUES (277, 1, 21, 1, 899);
INSERT INTO `t_kasus_tu` VALUES (278, 1, 21, 2, 2051);
INSERT INTO `t_kasus_tu` VALUES (279, 1, 21, 3, 1474);
INSERT INTO `t_kasus_tu` VALUES (280, 1, 22, 1, 17);
INSERT INTO `t_kasus_tu` VALUES (281, 1, 22, 2, 63);
INSERT INTO `t_kasus_tu` VALUES (282, 1, 22, 3, 55);
INSERT INTO `t_kasus_tu` VALUES (283, 1, 23, 1, 475);
INSERT INTO `t_kasus_tu` VALUES (284, 1, 23, 2, 1350);
INSERT INTO `t_kasus_tu` VALUES (285, 1, 23, 3, 912);
INSERT INTO `t_kasus_tu` VALUES (286, 1, 24, 1, 465);
INSERT INTO `t_kasus_tu` VALUES (287, 1, 24, 2, 1002);
INSERT INTO `t_kasus_tu` VALUES (288, 1, 24, 3, 733);
INSERT INTO `t_kasus_tu` VALUES (289, 1, 25, 1, 180);
INSERT INTO `t_kasus_tu` VALUES (290, 1, 25, 2, 500);
INSERT INTO `t_kasus_tu` VALUES (291, 1, 25, 3, 340);
INSERT INTO `t_kasus_tu` VALUES (292, 1, 26, 1, 68);
INSERT INTO `t_kasus_tu` VALUES (293, 1, 26, 2, 371);
INSERT INTO `t_kasus_tu` VALUES (294, 1, 26, 3, 219);
INSERT INTO `t_kasus_tu` VALUES (295, 1, 27, 1, 8);
INSERT INTO `t_kasus_tu` VALUES (296, 1, 27, 2, 35);
INSERT INTO `t_kasus_tu` VALUES (297, 1, 27, 3, 20);
INSERT INTO `t_kasus_tu` VALUES (298, 2, 1, 1, 321);
INSERT INTO `t_kasus_tu` VALUES (299, 2, 1, 2, 765);
INSERT INTO `t_kasus_tu` VALUES (300, 2, 1, 3, 210);
INSERT INTO `t_kasus_tu` VALUES (301, 2, 2, 1, 231);
INSERT INTO `t_kasus_tu` VALUES (302, 2, 2, 2, 302);
INSERT INTO `t_kasus_tu` VALUES (303, 2, 2, 3, 28);
INSERT INTO `t_kasus_tu` VALUES (304, 2, 3, 1, 129);
INSERT INTO `t_kasus_tu` VALUES (305, 2, 3, 2, 234);
INSERT INTO `t_kasus_tu` VALUES (306, 2, 3, 3, 321);
INSERT INTO `t_kasus_tu` VALUES (307, 2, 4, 1, 876);
INSERT INTO `t_kasus_tu` VALUES (308, 2, 4, 2, 1203);
INSERT INTO `t_kasus_tu` VALUES (309, 2, 4, 3, 224);
INSERT INTO `t_kasus_tu` VALUES (310, 2, 5, 1, 89);
INSERT INTO `t_kasus_tu` VALUES (311, 2, 5, 2, 276);
INSERT INTO `t_kasus_tu` VALUES (312, 2, 5, 3, 286);
INSERT INTO `t_kasus_tu` VALUES (313, 2, 6, 1, 43);
INSERT INTO `t_kasus_tu` VALUES (314, 2, 6, 2, 78);
INSERT INTO `t_kasus_tu` VALUES (315, 2, 6, 3, 58);
INSERT INTO `t_kasus_tu` VALUES (316, 2, 7, 1, 439);
INSERT INTO `t_kasus_tu` VALUES (317, 2, 7, 2, 475);
INSERT INTO `t_kasus_tu` VALUES (318, 2, 7, 3, 543);
INSERT INTO `t_kasus_tu` VALUES (319, 2, 8, 1, 164);
INSERT INTO `t_kasus_tu` VALUES (320, 2, 8, 2, 78);
INSERT INTO `t_kasus_tu` VALUES (321, 2, 8, 3, 120);
INSERT INTO `t_kasus_tu` VALUES (322, 2, 9, 1, 192);
INSERT INTO `t_kasus_tu` VALUES (323, 2, 9, 2, 276);
INSERT INTO `t_kasus_tu` VALUES (324, 2, 9, 3, 412);
INSERT INTO `t_kasus_tu` VALUES (325, 2, 10, 1, 437);
INSERT INTO `t_kasus_tu` VALUES (326, 2, 10, 2, 531);
INSERT INTO `t_kasus_tu` VALUES (327, 2, 10, 3, 185);
INSERT INTO `t_kasus_tu` VALUES (328, 2, 11, 1, 284);
INSERT INTO `t_kasus_tu` VALUES (329, 2, 11, 2, 320);
INSERT INTO `t_kasus_tu` VALUES (330, 2, 11, 3, 103);
INSERT INTO `t_kasus_tu` VALUES (331, 2, 12, 1, 67);
INSERT INTO `t_kasus_tu` VALUES (332, 2, 12, 2, 104);
INSERT INTO `t_kasus_tu` VALUES (333, 2, 12, 3, 43);
INSERT INTO `t_kasus_tu` VALUES (334, 2, 13, 1, 89);
INSERT INTO `t_kasus_tu` VALUES (335, 2, 13, 2, 65);
INSERT INTO `t_kasus_tu` VALUES (336, 2, 13, 3, 129);
INSERT INTO `t_kasus_tu` VALUES (337, 2, 14, 1, 176);
INSERT INTO `t_kasus_tu` VALUES (338, 2, 14, 2, 192);
INSERT INTO `t_kasus_tu` VALUES (339, 2, 14, 3, 166);
INSERT INTO `t_kasus_tu` VALUES (340, 2, 15, 1, 543);
INSERT INTO `t_kasus_tu` VALUES (341, 2, 15, 2, 671);
INSERT INTO `t_kasus_tu` VALUES (342, 2, 15, 3, 115);
INSERT INTO `t_kasus_tu` VALUES (343, 2, 16, 1, 107);
INSERT INTO `t_kasus_tu` VALUES (344, 2, 16, 2, 98);
INSERT INTO `t_kasus_tu` VALUES (345, 2, 16, 3, 112);
INSERT INTO `t_kasus_tu` VALUES (346, 2, 17, 1, 326);
INSERT INTO `t_kasus_tu` VALUES (347, 2, 17, 2, 276);
INSERT INTO `t_kasus_tu` VALUES (348, 2, 17, 3, 366);
INSERT INTO `t_kasus_tu` VALUES (349, 2, 18, 1, 56);
INSERT INTO `t_kasus_tu` VALUES (350, 2, 18, 2, 89);
INSERT INTO `t_kasus_tu` VALUES (351, 2, 18, 3, 51);
INSERT INTO `t_kasus_tu` VALUES (352, 2, 19, 1, 94);
INSERT INTO `t_kasus_tu` VALUES (353, 2, 19, 2, 62);
INSERT INTO `t_kasus_tu` VALUES (354, 2, 19, 3, 85);
INSERT INTO `t_kasus_tu` VALUES (355, 2, 20, 1, 267);
INSERT INTO `t_kasus_tu` VALUES (356, 2, 20, 2, 234);
INSERT INTO `t_kasus_tu` VALUES (357, 2, 20, 3, 141);
INSERT INTO `t_kasus_tu` VALUES (358, 2, 21, 1, 1768);
INSERT INTO `t_kasus_tu` VALUES (359, 2, 21, 2, 1452);
INSERT INTO `t_kasus_tu` VALUES (360, 2, 21, 3, 1204);
INSERT INTO `t_kasus_tu` VALUES (361, 2, 22, 1, 53);
INSERT INTO `t_kasus_tu` VALUES (362, 2, 22, 2, 68);
INSERT INTO `t_kasus_tu` VALUES (363, 2, 22, 3, 50);
INSERT INTO `t_kasus_tu` VALUES (364, 2, 23, 1, 341);
INSERT INTO `t_kasus_tu` VALUES (365, 2, 23, 2, 654);
INSERT INTO `t_kasus_tu` VALUES (366, 2, 23, 3, 651);
INSERT INTO `t_kasus_tu` VALUES (367, 2, 24, 1, 329);
INSERT INTO `t_kasus_tu` VALUES (368, 2, 24, 2, 549);
INSERT INTO `t_kasus_tu` VALUES (369, 2, 24, 3, 398);
INSERT INTO `t_kasus_tu` VALUES (370, 2, 25, 1, 198);
INSERT INTO `t_kasus_tu` VALUES (371, 2, 25, 2, 173);
INSERT INTO `t_kasus_tu` VALUES (372, 2, 25, 3, 62);
INSERT INTO `t_kasus_tu` VALUES (373, 2, 26, 1, 381);
INSERT INTO `t_kasus_tu` VALUES (374, 2, 26, 2, 569);
INSERT INTO `t_kasus_tu` VALUES (375, 2, 26, 3, 459);
INSERT INTO `t_kasus_tu` VALUES (376, 2, 27, 1, 54);
INSERT INTO `t_kasus_tu` VALUES (377, 2, 27, 2, 91);
INSERT INTO `t_kasus_tu` VALUES (378, 2, 27, 3, 1);
INSERT INTO `t_kasus_tu` VALUES (379, 3, 1, 1, 357);
INSERT INTO `t_kasus_tu` VALUES (380, 3, 1, 2, 839);
INSERT INTO `t_kasus_tu` VALUES (381, 3, 1, 3, 1024);
INSERT INTO `t_kasus_tu` VALUES (382, 3, 2, 1, 35);
INSERT INTO `t_kasus_tu` VALUES (383, 3, 2, 2, 54);
INSERT INTO `t_kasus_tu` VALUES (384, 3, 2, 3, 183);
INSERT INTO `t_kasus_tu` VALUES (385, 3, 3, 1, 202);
INSERT INTO `t_kasus_tu` VALUES (386, 3, 3, 2, 50);
INSERT INTO `t_kasus_tu` VALUES (387, 3, 3, 3, 178);
INSERT INTO `t_kasus_tu` VALUES (388, 3, 4, 1, 629);
INSERT INTO `t_kasus_tu` VALUES (389, 3, 4, 2, 799);
INSERT INTO `t_kasus_tu` VALUES (390, 3, 4, 3, 598);
INSERT INTO `t_kasus_tu` VALUES (391, 3, 5, 1, 220);
INSERT INTO `t_kasus_tu` VALUES (392, 3, 5, 2, 363);
INSERT INTO `t_kasus_tu` VALUES (393, 3, 5, 3, 428);
INSERT INTO `t_kasus_tu` VALUES (394, 3, 6, 1, 32);
INSERT INTO `t_kasus_tu` VALUES (395, 3, 6, 2, 4);
INSERT INTO `t_kasus_tu` VALUES (396, 3, 6, 3, 12);
INSERT INTO `t_kasus_tu` VALUES (397, 3, 7, 1, 60);
INSERT INTO `t_kasus_tu` VALUES (398, 3, 7, 2, 312);
INSERT INTO `t_kasus_tu` VALUES (399, 3, 7, 3, 98);
INSERT INTO `t_kasus_tu` VALUES (400, 3, 8, 1, 72);
INSERT INTO `t_kasus_tu` VALUES (401, 3, 8, 2, 294);
INSERT INTO `t_kasus_tu` VALUES (402, 3, 8, 3, 178);
INSERT INTO `t_kasus_tu` VALUES (403, 3, 9, 1, 261);
INSERT INTO `t_kasus_tu` VALUES (404, 3, 9, 2, 135);
INSERT INTO `t_kasus_tu` VALUES (405, 3, 9, 3, 423);
INSERT INTO `t_kasus_tu` VALUES (406, 3, 10, 1, 75);
INSERT INTO `t_kasus_tu` VALUES (407, 3, 10, 2, 204);
INSERT INTO `t_kasus_tu` VALUES (408, 3, 10, 3, 168);
INSERT INTO `t_kasus_tu` VALUES (409, 3, 11, 1, 340);
INSERT INTO `t_kasus_tu` VALUES (410, 3, 11, 2, 638);
INSERT INTO `t_kasus_tu` VALUES (411, 3, 11, 3, 286);
INSERT INTO `t_kasus_tu` VALUES (412, 3, 12, 1, 50);
INSERT INTO `t_kasus_tu` VALUES (413, 3, 12, 2, 32);
INSERT INTO `t_kasus_tu` VALUES (414, 3, 12, 3, 106);
INSERT INTO `t_kasus_tu` VALUES (415, 3, 13, 1, 127);
INSERT INTO `t_kasus_tu` VALUES (416, 3, 13, 2, 112);
INSERT INTO `t_kasus_tu` VALUES (417, 3, 13, 3, 48);
INSERT INTO `t_kasus_tu` VALUES (418, 3, 14, 1, 34);
INSERT INTO `t_kasus_tu` VALUES (419, 3, 14, 2, 109);
INSERT INTO `t_kasus_tu` VALUES (420, 3, 14, 3, 77);
INSERT INTO `t_kasus_tu` VALUES (421, 3, 15, 1, 527);
INSERT INTO `t_kasus_tu` VALUES (422, 3, 15, 2, 324);
INSERT INTO `t_kasus_tu` VALUES (423, 3, 15, 3, 78);
INSERT INTO `t_kasus_tu` VALUES (424, 3, 16, 1, 34);
INSERT INTO `t_kasus_tu` VALUES (425, 3, 16, 2, 319);
INSERT INTO `t_kasus_tu` VALUES (426, 3, 16, 3, 17);
INSERT INTO `t_kasus_tu` VALUES (427, 3, 17, 1, 214);
INSERT INTO `t_kasus_tu` VALUES (428, 3, 17, 2, 43);
INSERT INTO `t_kasus_tu` VALUES (429, 3, 17, 3, 162);
INSERT INTO `t_kasus_tu` VALUES (430, 3, 18, 1, 2);
INSERT INTO `t_kasus_tu` VALUES (431, 3, 18, 2, 34);
INSERT INTO `t_kasus_tu` VALUES (432, 3, 18, 3, 43);
INSERT INTO `t_kasus_tu` VALUES (433, 3, 19, 1, 342);
INSERT INTO `t_kasus_tu` VALUES (434, 3, 19, 2, 77);
INSERT INTO `t_kasus_tu` VALUES (435, 3, 19, 3, 107);
INSERT INTO `t_kasus_tu` VALUES (436, 3, 20, 1, 99);
INSERT INTO `t_kasus_tu` VALUES (437, 3, 20, 2, 290);
INSERT INTO `t_kasus_tu` VALUES (438, 3, 20, 3, 60);
INSERT INTO `t_kasus_tu` VALUES (439, 3, 21, 1, 2323);
INSERT INTO `t_kasus_tu` VALUES (440, 3, 21, 2, 1027);
INSERT INTO `t_kasus_tu` VALUES (441, 3, 21, 3, 393);
INSERT INTO `t_kasus_tu` VALUES (442, 3, 22, 1, 23);
INSERT INTO `t_kasus_tu` VALUES (443, 3, 22, 2, 75);
INSERT INTO `t_kasus_tu` VALUES (444, 3, 22, 3, 68);
INSERT INTO `t_kasus_tu` VALUES (445, 3, 23, 1, 762);
INSERT INTO `t_kasus_tu` VALUES (446, 3, 23, 2, 344);
INSERT INTO `t_kasus_tu` VALUES (447, 3, 23, 3, 738);
INSERT INTO `t_kasus_tu` VALUES (448, 3, 24, 1, 95);
INSERT INTO `t_kasus_tu` VALUES (449, 3, 24, 2, 2222);
INSERT INTO `t_kasus_tu` VALUES (450, 3, 24, 3, 838);
INSERT INTO `t_kasus_tu` VALUES (451, 3, 25, 1, 325);
INSERT INTO `t_kasus_tu` VALUES (452, 3, 25, 2, 98);
INSERT INTO `t_kasus_tu` VALUES (453, 3, 25, 3, 167);
INSERT INTO `t_kasus_tu` VALUES (454, 3, 26, 1, 82);
INSERT INTO `t_kasus_tu` VALUES (455, 3, 26, 2, 338);
INSERT INTO `t_kasus_tu` VALUES (456, 3, 26, 3, 489);
INSERT INTO `t_kasus_tu` VALUES (457, 3, 27, 1, 15);
INSERT INTO `t_kasus_tu` VALUES (458, 3, 27, 2, 14);
INSERT INTO `t_kasus_tu` VALUES (459, 3, 27, 3, 0);

-- ----------------------------
-- Table structure for t_tahun
-- ----------------------------
DROP TABLE IF EXISTS `t_tahun`;
CREATE TABLE `t_tahun`  (
  `id_tahun` int NOT NULL AUTO_INCREMENT,
  `tahun` year NOT NULL,
  PRIMARY KEY (`id_tahun`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_tahun
-- ----------------------------
INSERT INTO `t_tahun` VALUES (1, 2019);
INSERT INTO `t_tahun` VALUES (2, 2020);
INSERT INTO `t_tahun` VALUES (3, 2021);

-- ----------------------------
-- Table structure for t_tingkat_umur
-- ----------------------------
DROP TABLE IF EXISTS `t_tingkat_umur`;
CREATE TABLE `t_tingkat_umur`  (
  `id_tingkat` int NOT NULL AUTO_INCREMENT,
  `jenis_tingkat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_tingkat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_tingkat_umur
-- ----------------------------
INSERT INTO `t_tingkat_umur` VALUES (1, 'Anak-Anak');
INSERT INTO `t_tingkat_umur` VALUES (2, 'Remaja');
INSERT INTO `t_tingkat_umur` VALUES (3, 'Dewasa');

-- ----------------------------
-- Table structure for t_total
-- ----------------------------
DROP TABLE IF EXISTS `t_total`;
CREATE TABLE `t_total`  (
  `id_total` int NOT NULL AUTO_INCREMENT,
  `id_kota` int NOT NULL,
  `id_tahun` int NOT NULL,
  `jum_total` int NOT NULL,
  PRIMARY KEY (`id_total`) USING BTREE,
  INDEX `id_kt`(`id_kota` ASC) USING BTREE,
  INDEX `id_taon`(`id_tahun` ASC) USING BTREE,
  CONSTRAINT `id_kt` FOREIGN KEY (`id_kota`) REFERENCES `t_kab_kota` (`id_kab`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id_taon` FOREIGN KEY (`id_tahun`) REFERENCES `t_tahun` (`id_tahun`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_total
-- ----------------------------
INSERT INTO `t_total` VALUES (1, 1, 1, 1210);
INSERT INTO `t_total` VALUES (2, 2, 1, 616);
INSERT INTO `t_total` VALUES (3, 3, 1, 643);
INSERT INTO `t_total` VALUES (4, 4, 1, 2635);
INSERT INTO `t_total` VALUES (5, 5, 1, 769);
INSERT INTO `t_total` VALUES (6, 6, 1, 210);
INSERT INTO `t_total` VALUES (7, 7, 1, 404);
INSERT INTO `t_total` VALUES (8, 8, 1, 505);
INSERT INTO `t_total` VALUES (9, 9, 1, 1291);
INSERT INTO `t_total` VALUES (10, 10, 1, 457);
INSERT INTO `t_total` VALUES (11, 11, 1, 663);
INSERT INTO `t_total` VALUES (12, 12, 1, 222);
INSERT INTO `t_total` VALUES (13, 13, 1, 270);
INSERT INTO `t_total` VALUES (14, 14, 1, 544);
INSERT INTO `t_total` VALUES (15, 15, 1, 199);
INSERT INTO `t_total` VALUES (16, 16, 1, 511);
INSERT INTO `t_total` VALUES (17, 17, 1, 1706);
INSERT INTO `t_total` VALUES (18, 18, 1, 158);
INSERT INTO `t_total` VALUES (19, 19, 1, 611);
INSERT INTO `t_total` VALUES (20, 20, 1, 786);
INSERT INTO `t_total` VALUES (21, 21, 1, 4424);
INSERT INTO `t_total` VALUES (22, 22, 1, 135);
INSERT INTO `t_total` VALUES (23, 23, 1, 2373);
INSERT INTO `t_total` VALUES (24, 24, 1, 2200);
INSERT INTO `t_total` VALUES (25, 25, 1, 1020);
INSERT INTO `t_total` VALUES (26, 26, 1, 661);
INSERT INTO `t_total` VALUES (27, 27, 1, 62);
INSERT INTO `t_total` VALUES (28, 1, 2, 1296);
INSERT INTO `t_total` VALUES (29, 2, 2, 534);
INSERT INTO `t_total` VALUES (30, 3, 2, 684);
INSERT INTO `t_total` VALUES (31, 4, 2, 968);
INSERT INTO `t_total` VALUES (32, 5, 2, 651);
INSERT INTO `t_total` VALUES (33, 6, 2, 179);
INSERT INTO `t_total` VALUES (34, 7, 2, 1457);
INSERT INTO `t_total` VALUES (35, 8, 2, 362);
INSERT INTO `t_total` VALUES (36, 9, 2, 880);
INSERT INTO `t_total` VALUES (37, 10, 2, 1153);
INSERT INTO `t_total` VALUES (38, 11, 2, 707);
INSERT INTO `t_total` VALUES (39, 12, 2, 214);
INSERT INTO `t_total` VALUES (40, 13, 2, 283);
INSERT INTO `t_total` VALUES (41, 14, 2, 534);
INSERT INTO `t_total` VALUES (42, 15, 2, 1329);
INSERT INTO `t_total` VALUES (43, 16, 2, 317);
INSERT INTO `t_total` VALUES (44, 17, 2, 968);
INSERT INTO `t_total` VALUES (45, 18, 2, 196);
INSERT INTO `t_total` VALUES (46, 19, 2, 241);
INSERT INTO `t_total` VALUES (47, 20, 2, 651);
INSERT INTO `t_total` VALUES (48, 21, 2, 4434);
INSERT INTO `t_total` VALUES (49, 22, 2, 171);
INSERT INTO `t_total` VALUES (50, 23, 2, 1654);
INSERT INTO `t_total` VALUES (51, 24, 2, 1276);
INSERT INTO `t_total` VALUES (52, 25, 2, 433);
INSERT INTO `t_total` VALUES (53, 26, 2, 1409);
INSERT INTO `t_total` VALUES (54, 27, 2, 146);
INSERT INTO `t_total` VALUES (55, 1, 3, 2220);
INSERT INTO `t_total` VALUES (56, 2, 3, 281);
INSERT INTO `t_total` VALUES (57, 3, 3, 436);
INSERT INTO `t_total` VALUES (58, 4, 3, 2002);
INSERT INTO `t_total` VALUES (59, 5, 3, 1011);
INSERT INTO `t_total` VALUES (60, 6, 3, 48);
INSERT INTO `t_total` VALUES (61, 7, 3, 466);
INSERT INTO `t_total` VALUES (62, 8, 3, 543);
INSERT INTO `t_total` VALUES (63, 9, 3, 810);
INSERT INTO `t_total` VALUES (64, 10, 3, 782);
INSERT INTO `t_total` VALUES (65, 11, 3, 1331);
INSERT INTO `t_total` VALUES (66, 12, 3, 194);
INSERT INTO `t_total` VALUES (67, 13, 3, 287);
INSERT INTO `t_total` VALUES (68, 14, 3, 220);
INSERT INTO `t_total` VALUES (69, 15, 3, 925);
INSERT INTO `t_total` VALUES (70, 16, 3, 370);
INSERT INTO `t_total` VALUES (71, 17, 3, 343);
INSERT INTO `t_total` VALUES (72, 18, 3, 80);
INSERT INTO `t_total` VALUES (73, 19, 3, 526);
INSERT INTO `t_total` VALUES (74, 20, 3, 450);
INSERT INTO `t_total` VALUES (75, 21, 3, 3743);
INSERT INTO `t_total` VALUES (76, 22, 3, 103);
INSERT INTO `t_total` VALUES (77, 23, 3, 2006);
INSERT INTO `t_total` VALUES (78, 24, 3, 3161);
INSERT INTO `t_total` VALUES (79, 25, 3, 698);
INSERT INTO `t_total` VALUES (80, 26, 3, 909);
INSERT INTO `t_total` VALUES (81, 27, 3, 38);

-- ----------------------------
-- Table structure for t_total_perbln
-- ----------------------------
DROP TABLE IF EXISTS `t_total_perbln`;
CREATE TABLE `t_total_perbln`  (
  `id_kasus` int NOT NULL AUTO_INCREMENT,
  `id_bln` int NULL DEFAULT NULL,
  `id_tahun` int NOT NULL,
  `jumlah_kasus` int NOT NULL,
  PRIMARY KEY (`id_kasus`) USING BTREE,
  INDEX `id_thn`(`id_tahun` ASC) USING BTREE,
  INDEX `id_bln`(`id_bln` ASC) USING BTREE,
  CONSTRAINT `t_total_perbln_ibfk_1` FOREIGN KEY (`id_bln`) REFERENCES `t_bulan` (`id_bulan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_total_perbln_ibfk_5` FOREIGN KEY (`id_tahun`) REFERENCES `t_tahun` (`id_tahun`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_total_perbln
-- ----------------------------
INSERT INTO `t_total_perbln` VALUES (1, 1, 1, 2951);
INSERT INTO `t_total_perbln` VALUES (2, 2, 1, 3029);
INSERT INTO `t_total_perbln` VALUES (3, 3, 1, 2612);
INSERT INTO `t_total_perbln` VALUES (4, 4, 1, 4183);
INSERT INTO `t_total_perbln` VALUES (5, 5, 1, 2021);
INSERT INTO `t_total_perbln` VALUES (6, 6, 1, 933);
INSERT INTO `t_total_perbln` VALUES (7, 7, 1, 543);
INSERT INTO `t_total_perbln` VALUES (8, 8, 1, 451);
INSERT INTO `t_total_perbln` VALUES (9, 9, 1, 690);
INSERT INTO `t_total_perbln` VALUES (10, 10, 1, 1118);
INSERT INTO `t_total_perbln` VALUES (11, 11, 1, 2743);
INSERT INTO `t_total_perbln` VALUES (12, 12, 1, 4011);
INSERT INTO `t_total_perbln` VALUES (13, 1, 2, 2852);
INSERT INTO `t_total_perbln` VALUES (14, 2, 2, 2918);
INSERT INTO `t_total_perbln` VALUES (15, 3, 2, 2258);
INSERT INTO `t_total_perbln` VALUES (16, 4, 2, 1918);
INSERT INTO `t_total_perbln` VALUES (17, 5, 2, 1791);
INSERT INTO `t_total_perbln` VALUES (18, 6, 2, 1228);
INSERT INTO `t_total_perbln` VALUES (19, 7, 2, 1316);
INSERT INTO `t_total_perbln` VALUES (20, 8, 2, 1357);
INSERT INTO `t_total_perbln` VALUES (21, 9, 2, 1518);
INSERT INTO `t_total_perbln` VALUES (22, 10, 2, 1784);
INSERT INTO `t_total_perbln` VALUES (23, 11, 2, 1908);
INSERT INTO `t_total_perbln` VALUES (24, 12, 2, 2279);
INSERT INTO `t_total_perbln` VALUES (25, 1, 3, 2430);
INSERT INTO `t_total_perbln` VALUES (26, 2, 3, 1805);
INSERT INTO `t_total_perbln` VALUES (27, 3, 3, 2501);
INSERT INTO `t_total_perbln` VALUES (28, 4, 3, 1913);
INSERT INTO `t_total_perbln` VALUES (29, 5, 3, 1816);
INSERT INTO `t_total_perbln` VALUES (30, 6, 3, 2237);
INSERT INTO `t_total_perbln` VALUES (31, 7, 3, 1615);
INSERT INTO `t_total_perbln` VALUES (32, 8, 3, 1916);
INSERT INTO `t_total_perbln` VALUES (33, 9, 3, 1651);
INSERT INTO `t_total_perbln` VALUES (34, 10, 3, 2017);
INSERT INTO `t_total_perbln` VALUES (35, 11, 3, 1927);
INSERT INTO `t_total_perbln` VALUES (36, 12, 3, 2155);

SET FOREIGN_KEY_CHECKS = 1;
