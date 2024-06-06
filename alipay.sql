/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : alipay

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 11/11/2023 22:41:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品编号',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生产日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'CHERRY樱桃MX10.0游戏竞技超薄机械键盘', 'CHERRY MX10.0', 1399.00, '2023-10-11');
INSERT INTO `goods` VALUES (2, '达尔优61蓝牙机械键盘', 'RK61', 473.00, '2023-10-11');
INSERT INTO `goods` VALUES (3, '樱桃cherry轴RK机械键盘', '987/988樱桃', 229.00, '2023-10-11');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `num` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `total` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `pay_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付编号',
  `pay_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '1722615712065633189', '樱桃cherry轴RK机械键盘', 1, 229.00, '2023-11-09 22:02:45', NULL, NULL, '待支付');
INSERT INTO `orders` VALUES (2, '1722615841031614464', '樱桃cherry轴RK机械键盘', 1, 229.00, '2023-11-09 22:03:15', '2023110922001446850501095740', '2023-11-09 22:25:16', '已支付');
INSERT INTO `orders` VALUES (3, '1722615920324931584', '达尔优61蓝牙机械键盘', 1, 473.00, '2023-11-09 22:03:34', '2023110922001446850501094326', '2023-11-09 22:24:32', '已支付');
INSERT INTO `orders` VALUES (4, '1722615967116583456', '达尔优61蓝牙机械键盘', 1, 473.00, '2023-11-09 22:03:45', '2023110922001446850501092459', '2023-11-09 22:20:02', '已支付');
INSERT INTO `orders` VALUES (5, '1723341492961361920', '樱桃cherry轴RK机械键盘', 1, 229.00, '2023-11-11 22:06:44', NULL, NULL, '待支付');
INSERT INTO `orders` VALUES (6, '1723348926815686656', '达尔优61蓝牙机械键盘', 1, 473.00, '2023-11-11 22:36:17', '2023111122001446850501104825', '2023-11-11 22:37:09', '已支付');

SET FOREIGN_KEY_CHECKS = 1;
