/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : dwsurvey

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 17/01/2023 20:45:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_an_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_an_answer`;
CREATE TABLE `t_an_answer`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_answer
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_checkbox
-- ----------------------------
DROP TABLE IF EXISTS `t_an_checkbox`;
CREATE TABLE `t_an_checkbox`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `other_text` varchar(3255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_item_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_checkbox
-- ----------------------------
INSERT INTO `t_an_checkbox` VALUES ('78a0fc8f-21fd-4ada-b58e-1d8bece01188', '2a793ef9-28d9-4e99-afd5-a009c6356269', '58960016-ff92-4de7-9585-9ac27f961247', NULL, '69fe0041-757b-4a91-91e3-f990e1abd38d', '60fd78c7-964f-4318-822d-b9179d1ae3c7', 1);
INSERT INTO `t_an_checkbox` VALUES ('e8f976a9-8224-44b1-879a-9a0b31ae3f55', '2a793ef9-28d9-4e99-afd5-a009c6356269', '58960016-ff92-4de7-9585-9ac27f961247', NULL, '69fe0041-757b-4a91-91e3-f990e1abd38d', '60515dd8-bb01-414d-adb2-2e0aec0031e4', 1);

-- ----------------------------
-- Table structure for t_an_chen_checkbox
-- ----------------------------
DROP TABLE IF EXISTS `t_an_chen_checkbox`;
CREATE TABLE `t_an_chen_checkbox`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_col_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_row_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_chen_checkbox
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_chen_fbk
-- ----------------------------
DROP TABLE IF EXISTS `t_an_chen_fbk`;
CREATE TABLE `t_an_chen_fbk`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_col_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_row_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_chen_fbk
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_chen_radio
-- ----------------------------
DROP TABLE IF EXISTS `t_an_chen_radio`;
CREATE TABLE `t_an_chen_radio`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_col_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_row_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_chen_radio
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_chen_score
-- ----------------------------
DROP TABLE IF EXISTS `t_an_chen_score`;
CREATE TABLE `t_an_chen_score`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answser_score` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_col_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_row_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_chen_score
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_comp_chen_radio
-- ----------------------------
DROP TABLE IF EXISTS `t_an_comp_chen_radio`;
CREATE TABLE `t_an_comp_chen_radio`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_col_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_option_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_row_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_comp_chen_radio
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_dfillblank
-- ----------------------------
DROP TABLE IF EXISTS `t_an_dfillblank`;
CREATE TABLE `t_an_dfillblank`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer` varchar(3255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_item_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_dfillblank
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_enumqu
-- ----------------------------
DROP TABLE IF EXISTS `t_an_enumqu`;
CREATE TABLE `t_an_enumqu`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `enum_item` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_enumqu
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_fillblank
-- ----------------------------
DROP TABLE IF EXISTS `t_an_fillblank`;
CREATE TABLE `t_an_fillblank`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_fillblank
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_order
-- ----------------------------
DROP TABLE IF EXISTS `t_an_order`;
CREATE TABLE `t_an_order`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ordery_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_row_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_radio
-- ----------------------------
DROP TABLE IF EXISTS `t_an_radio`;
CREATE TABLE `t_an_radio`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `other_text` varchar(3255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_item_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_radio
-- ----------------------------
INSERT INTO `t_an_radio` VALUES ('afb58f3c-c983-4b13-859f-1d4f06d01dea', '2a793ef9-28d9-4e99-afd5-a009c6356269', '58960016-ff92-4de7-9585-9ac27f961247', '', '20a9ede2-7ebd-4a02-b359-55cb1c8490c8', '4384cfef-689a-480e-95e8-0ce981d3e96f', 1);

-- ----------------------------
-- Table structure for t_an_score
-- ----------------------------
DROP TABLE IF EXISTS `t_an_score`;
CREATE TABLE `t_an_score`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answser_score` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_row_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exportIndex`(`belong_answer_id` ASC, `qu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_score
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_uplodfile
-- ----------------------------
DROP TABLE IF EXISTS `t_an_uplodfile`;
CREATE TABLE `t_an_uplodfile`  (
  `id` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `random_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_an_uplodfile
-- ----------------------------

-- ----------------------------
-- Table structure for t_an_yesno
-- ----------------------------
DROP TABLE IF EXISTS `t_an_yesno`;
CREATE TABLE `t_an_yesno`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `belong_answer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  `yesno_answer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_an_yesno
-- ----------------------------

-- ----------------------------
-- Table structure for t_import_error
-- ----------------------------
DROP TABLE IF EXISTS `t_import_error`;
CREATE TABLE `t_import_error`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cell1value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `cell2value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `db_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `row_index` int NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `cell1_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `cell2_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_import_error
-- ----------------------------

-- ----------------------------
-- Table structure for t_mail_invite_inbox
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_invite_inbox`;
CREATE TABLE `t_mail_invite_inbox`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sendcloud_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `survey_mail_invite_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `us_contacts_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_mail_invite_inbox
-- ----------------------------

-- ----------------------------
-- Table structure for t_qu_checkbox
-- ----------------------------
DROP TABLE IF EXISTS `t_qu_checkbox`;
CREATE TABLE `t_qu_checkbox`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `check_type` int NULL DEFAULT NULL,
  `is_note` int NULL DEFAULT NULL,
  `is_required_fill` int NULL DEFAULT NULL,
  `option_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `option_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_qu_checkbox
-- ----------------------------
INSERT INTO `t_qu_checkbox` VALUES ('1c3cc2ad-0ebf-48d6-aa1f-0c26cf030fb4', 0, 0, 0, '选项1', NULL, 0, '69fe0041-757b-4a91-91e3-f990e1abd38d', 1);
INSERT INTO `t_qu_checkbox` VALUES ('60515dd8-bb01-414d-adb2-2e0aec0031e4', 0, 0, 0, '选项2', NULL, 1, '69fe0041-757b-4a91-91e3-f990e1abd38d', 1);
INSERT INTO `t_qu_checkbox` VALUES ('60fd78c7-964f-4318-822d-b9179d1ae3c7', 0, 0, 0, '选项3', NULL, 2, '69fe0041-757b-4a91-91e3-f990e1abd38d', 1);

-- ----------------------------
-- Table structure for t_qu_chen_column
-- ----------------------------
DROP TABLE IF EXISTS `t_qu_chen_column`;
CREATE TABLE `t_qu_chen_column`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_qu_chen_column
-- ----------------------------

-- ----------------------------
-- Table structure for t_qu_chen_option
-- ----------------------------
DROP TABLE IF EXISTS `t_qu_chen_option`;
CREATE TABLE `t_qu_chen_option`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_qu_chen_option
-- ----------------------------

-- ----------------------------
-- Table structure for t_qu_chen_row
-- ----------------------------
DROP TABLE IF EXISTS `t_qu_chen_row`;
CREATE TABLE `t_qu_chen_row`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_qu_chen_row
-- ----------------------------

-- ----------------------------
-- Table structure for t_qu_multi_fillblank
-- ----------------------------
DROP TABLE IF EXISTS `t_qu_multi_fillblank`;
CREATE TABLE `t_qu_multi_fillblank`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `check_type` int NULL DEFAULT NULL,
  `option_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `option_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_qu_multi_fillblank
-- ----------------------------

-- ----------------------------
-- Table structure for t_qu_orderby
-- ----------------------------
DROP TABLE IF EXISTS `t_qu_orderby`;
CREATE TABLE `t_qu_orderby`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `option_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_qu_orderby
-- ----------------------------

-- ----------------------------
-- Table structure for t_qu_radio
-- ----------------------------
DROP TABLE IF EXISTS `t_qu_radio`;
CREATE TABLE `t_qu_radio`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `check_type` int NULL DEFAULT NULL,
  `is_note` int NULL DEFAULT NULL,
  `is_required_fill` int NULL DEFAULT NULL,
  `option_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `option_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_qu_radio
-- ----------------------------
INSERT INTO `t_qu_radio` VALUES ('4384cfef-689a-480e-95e8-0ce981d3e96f', 0, 0, 0, '选项1', NULL, 0, '20a9ede2-7ebd-4a02-b359-55cb1c8490c8', 1);
INSERT INTO `t_qu_radio` VALUES ('63b814fe-3dac-40e5-9f6d-b927c099b187', 0, 0, 0, '选项2', NULL, 1, 'ee8edb00-28d1-45b7-a45f-d5408e79e7b1', 1);
INSERT INTO `t_qu_radio` VALUES ('c71a9ede-f74b-4cfe-81b9-55cf831f746e', 0, 0, 0, '选项1', NULL, 0, 'ee8edb00-28d1-45b7-a45f-d5408e79e7b1', 1);
INSERT INTO `t_qu_radio` VALUES ('e6946cfc-567f-4fcc-8673-193601a2b349', 0, 0, 0, '选项2', NULL, 1, '20a9ede2-7ebd-4a02-b359-55cb1c8490c8', 1);

-- ----------------------------
-- Table structure for t_qu_score
-- ----------------------------
DROP TABLE IF EXISTS `t_qu_score`;
CREATE TABLE `t_qu_score`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `option_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_qu_score
-- ----------------------------

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer_input_row` int NULL DEFAULT NULL,
  `answer_input_width` int NULL DEFAULT NULL,
  `belong_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `cell_count` int NULL DEFAULT NULL,
  `check_type` int NULL DEFAULT NULL,
  `contacts_attr` int NULL DEFAULT NULL,
  `contacts_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `copy_from_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `hv` int NULL DEFAULT NULL,
  `is_required` int NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_by_id` int NULL DEFAULT NULL,
  `param_int01` int NULL DEFAULT NULL,
  `param_int02` int NULL DEFAULT NULL,
  `parent_qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `qu_tag` int NULL DEFAULT NULL,
  `qu_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `qu_type` int NULL DEFAULT NULL,
  `rand_order` int NULL DEFAULT NULL,
  `tag` int NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  `yesno_option` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES ('20a9ede2-7ebd-4a02-b359-55cb1c8490c8', NULL, NULL, '58960016-ff92-4de7-9585-9ac27f961247', 0, NULL, 0, '0', NULL, '2021-12-31 09:47:03', 2, 1, NULL, 1, 3, 10, NULL, NULL, NULL, 1, '题标题？', 1, 0, 2, 1, NULL);
INSERT INTO `t_question` VALUES ('69fe0041-757b-4a91-91e3-f990e1abd38d', NULL, NULL, '58960016-ff92-4de7-9585-9ac27f961247', 0, NULL, 0, '0', NULL, '2021-12-31 09:47:03', 2, 1, NULL, 2, 3, 10, NULL, NULL, NULL, 1, '题标题？', 2, 0, 2, 1, NULL);
INSERT INTO `t_question` VALUES ('ee8edb00-28d1-45b7-a45f-d5408e79e7b1', NULL, NULL, 'fc0eb6f3-b957-4eb1-88f8-a0881ee5a07a', 0, NULL, 0, '0', NULL, '2023-01-16 22:42:06', 2, 1, NULL, 1, 0, 0, NULL, NULL, NULL, 1, '题标题？', 1, 0, 2, 1, NULL);

-- ----------------------------
-- Table structure for t_question_bank
-- ----------------------------
DROP TABLE IF EXISTS `t_question_bank`;
CREATE TABLE `t_question_bank`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `bank_note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `bank_state` int NULL DEFAULT NULL,
  `bank_tag` int NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `dir_type` int NULL DEFAULT NULL,
  `excerpt_num` int NULL DEFAULT NULL,
  `group_id1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `group_id2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_num` int NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_question_bank
-- ----------------------------

-- ----------------------------
-- Table structure for t_question_logic
-- ----------------------------
DROP TABLE IF EXISTS `t_question_logic`;
CREATE TABLE `t_question_logic`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cg_qu_item_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ck_qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `ge_le` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `logic_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `score_num` int NULL DEFAULT NULL,
  `sk_qu_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  `sk_qu_id_end` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_question_logic
-- ----------------------------

-- ----------------------------
-- Table structure for t_survey_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_survey_answer`;
CREATE TABLE `t_survey_answer`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `addr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `bg_an_date` datetime NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `complete_item_num` int NULL DEFAULT NULL,
  `complete_num` int NULL DEFAULT NULL,
  `data_source` int NULL DEFAULT NULL,
  `end_an_date` datetime NULL DEFAULT NULL,
  `handle_state` int NULL DEFAULT NULL,
  `ip_addr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `is_complete` int NULL DEFAULT NULL,
  `is_effective` int NULL DEFAULT NULL,
  `pc_mac` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qu_num` int NULL DEFAULT NULL,
  `survey_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `total_time` float NULL DEFAULT NULL,
  `user_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `survey_id_index`(`survey_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_survey_answer
-- ----------------------------
INSERT INTO `t_survey_answer` VALUES ('2a793ef9-28d9-4e99-afd5-a009c6356269', NULL, NULL, NULL, 2, NULL, 0, '2021-12-31 09:47:16', 0, '192.168.3.2', 1, 1, NULL, NULL, '58960016-ff92-4de7-9585-9ac27f961247', 0, '1');

-- ----------------------------
-- Table structure for t_survey_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_survey_detail`;
CREATE TABLE `t_survey_detail`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `an_item_least_num` int NULL DEFAULT NULL,
  `an_item_most_num` int NULL DEFAULT NULL,
  `dir_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `effective` int NULL DEFAULT NULL,
  `effective_ip` int NULL DEFAULT NULL,
  `effective_time` int NULL DEFAULT NULL,
  `end_num` int NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `end_type` int NULL DEFAULT NULL,
  `mail_only` int NULL DEFAULT NULL,
  `refresh` int NULL DEFAULT NULL,
  `refresh_num` int NULL DEFAULT NULL,
  `rule` int NULL DEFAULT NULL,
  `rule_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `show_answer_da` int NULL DEFAULT NULL,
  `show_share_survey` int NULL DEFAULT NULL,
  `survey_note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `survey_qu_num` int NULL DEFAULT NULL,
  `yn_end_num` int NULL DEFAULT NULL,
  `yn_end_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_survey_detail
-- ----------------------------
INSERT INTO `t_survey_detail` VALUES ('6df77171-a310-4e20-a5a9-ca0dee860858', 0, 0, 'fc0eb6f3-b957-4eb1-88f8-a0881ee5a07a', 1, 0, 5, 1000, NULL, 1, 0, 1, 3, 1, '令牌', 0, 1, '非常感谢您的参与！如有涉及个人信息，我们将严格保密。', 0, 0, 0);
INSERT INTO `t_survey_detail` VALUES ('d78e1615-7b60-4751-bfc3-659e6dbbb550', 0, 0, '58960016-ff92-4de7-9585-9ac27f961247', 1, 0, 5, 1000, NULL, 1, 0, 1, 3, 1, '令牌', 0, 1, '非常感谢您的参与！如有涉及个人信息，我们将严格保密。', 0, 0, 0);

-- ----------------------------
-- Table structure for t_survey_directory
-- ----------------------------
DROP TABLE IF EXISTS `t_survey_directory`;
CREATE TABLE `t_survey_directory`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `an_item_least_num` int NULL DEFAULT NULL,
  `answer_num` int NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `dir_type` int NULL DEFAULT NULL,
  `excerpt_num` int NULL DEFAULT NULL,
  `html_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `is_share` int NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_detail_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_model` int NULL DEFAULT NULL,
  `survey_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_qu_num` int NULL DEFAULT NULL,
  `survey_state` int NULL DEFAULT NULL,
  `survey_tag` int NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `view_answer` int NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  `survey_type` int NULL DEFAULT NULL,
  `orderby_num` int NULL DEFAULT NULL,
  `json_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_name_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_survey_directory
-- ----------------------------
INSERT INTO `t_survey_directory` VALUES ('58960016-ff92-4de7-9585-9ac27f961247', 0, 1, '2021-12-31 09:46:57', 2, 0, NULL, 1, '', '4jfgcquk8', NULL, 1, '第一份测试问卷', 2, 1, 1, '1', 0, 1, NULL, NULL, '/file/survey/4jfgcquk8/4jfgcquk8.json', '第一份测试问卷');
INSERT INTO `t_survey_directory` VALUES ('fc0eb6f3-b957-4eb1-88f8-a0881ee5a07a', 0, 0, '2023-01-16 22:41:54', 2, 0, NULL, 1, '', '7nochqarhw', NULL, 1, '嘤嘤嘤', 0, 0, 1, '1', 0, 0, NULL, NULL, NULL, '嘤嘤嘤');

-- ----------------------------
-- Table structure for t_survey_mail_invite
-- ----------------------------
DROP TABLE IF EXISTS `t_survey_mail_invite`;
CREATE TABLE `t_survey_mail_invite`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `audit` int NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `dw_send_user_mail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `dw_send_user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `dw_survey_link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `dw_survey_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `error_msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `fail_num` int NULL DEFAULT NULL,
  `inbox_num` int NULL DEFAULT NULL,
  `send_num` int NULL DEFAULT NULL,
  `sendcloud_msg_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `success_num` int NULL DEFAULT NULL,
  `survey_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_survey_mail_invite
-- ----------------------------

-- ----------------------------
-- Table structure for t_survey_req_url
-- ----------------------------
DROP TABLE IF EXISTS `t_survey_req_url`;
CREATE TABLE `t_survey_req_url`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  `survey_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_survey_req_url
-- ----------------------------

-- ----------------------------
-- Table structure for t_survey_stats
-- ----------------------------
DROP TABLE IF EXISTS `t_survey_stats`;
CREATE TABLE `t_survey_stats`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `an_avg_time` int NULL DEFAULT NULL,
  `an_min_time` int NULL DEFAULT NULL,
  `answer_num` int NULL DEFAULT NULL,
  `complete_num` int NULL DEFAULT NULL,
  `effective_num` int NULL DEFAULT NULL,
  `first_answer` datetime NULL DEFAULT NULL,
  `handle_pass_num` int NULL DEFAULT NULL,
  `handle_un_pass_num` int NULL DEFAULT NULL,
  `import_num` int NULL DEFAULT NULL,
  `input_num` int NULL DEFAULT NULL,
  `is_new_data` int NULL DEFAULT NULL,
  `last_answer` datetime NULL DEFAULT NULL,
  `mobile_num` int NULL DEFAULT NULL,
  `online_num` int NULL DEFAULT NULL,
  `survey_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `un_complete_num` int NULL DEFAULT NULL,
  `un_effective_num` int NULL DEFAULT NULL,
  `un_handle_num` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_survey_stats
-- ----------------------------

-- ----------------------------
-- Table structure for t_survey_style
-- ----------------------------
DROP TABLE IF EXISTS `t_survey_style`;
CREATE TABLE `t_survey_style`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `body_bg_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `body_bg_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `show_survey_haed` int NULL DEFAULT NULL,
  `survey_bg_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_bg_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_content_bg_colo_topr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_content_bg_color_bottom` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_content_bg_color_middle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_content_bg_image_bottom` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_content_bg_image_middle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_content_bg_image_top` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_content_padding_bottom` int NULL DEFAULT NULL,
  `survey_content_padding_left` int NULL DEFAULT NULL,
  `survey_content_padding_right` int NULL DEFAULT NULL,
  `survey_content_padding_top` int NULL DEFAULT NULL,
  `survey_content_width` int NULL DEFAULT NULL,
  `survey_head_bg_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_head_bg_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_head_height` int NULL DEFAULT NULL,
  `survey_head_padding_bottom` int NULL DEFAULT NULL,
  `survey_head_padding_left` int NULL DEFAULT NULL,
  `survey_head_padding_right` int NULL DEFAULT NULL,
  `survey_head_padding_top` int NULL DEFAULT NULL,
  `survey_head_width` int NULL DEFAULT NULL,
  `survey_id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_padding_bottom` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_padding_left` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_padding_right` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_padding_top` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_style_type` int NULL DEFAULT NULL,
  `survey_width` int NULL DEFAULT NULL,
  `show_body_bi` int NULL DEFAULT NULL,
  `show_survey_bi` int NULL DEFAULT NULL,
  `show_survey_cbim` int NULL DEFAULT NULL,
  `show_survey_hbgi` int NULL DEFAULT NULL,
  `survey_content_bg_color_top` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `show_survey_logo` int NULL DEFAULT NULL,
  `survey_logo_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `question_option_text_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `question_title_text_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_note_text_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_title_text_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `survey_btn_bg_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `show_sur_note` int NULL DEFAULT NULL,
  `show_sur_title` int NULL DEFAULT NULL,
  `show_progressbar` int NULL DEFAULT NULL,
  `show_ti_num` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_survey_style
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_db_backup
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_db_backup`;
CREATE TABLE `t_sys_db_backup`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `backup_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `backup_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `des` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_sys_db_backup
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_email
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_email`;
CREATE TABLE `t_sys_email`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `is_check` int NULL DEFAULT NULL,
  `post` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `send_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  `stmp_pwd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `stmp_server` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `stmp_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_sys_email
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activation_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `birthday` datetime NULL DEFAULT NULL,
  `cellphone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `edu_quali` int NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `find_pwd_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `find_pwd_last_date` datetime NULL DEFAULT NULL,
  `last_login_time` datetime NULL DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  `sha_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `version` int NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sha_password_temp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `visibility` int NULL DEFAULT NULL,
  `wwwooo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `wx_open_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_name`(`login_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', NULL, '2013-03-21 21:15:21', NULL, NULL, '2013-03-21 21:15:21', 1, 'wzunjh@qq.com', NULL, NULL, '2023-01-16 23:49:23', 'wzunjh', '柯远', NULL, 1, '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tracker
-- ----------------------------
DROP TABLE IF EXISTS `tracker`;
CREATE TABLE `tracker`  (
  `id` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `data_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `data_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `optime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tracker
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
