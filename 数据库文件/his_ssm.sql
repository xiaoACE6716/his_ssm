/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : his_ssm

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 10/03/2021 10:58:29
*/

create database his_ssm;
use his_ssm;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deptName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, 'D01', '门诊部');
INSERT INTO `dept` VALUES (2, 'D02', '住院部');
INSERT INTO `dept` VALUES (3, 'D03', '急诊部');
INSERT INTO `dept` VALUES (4, 'D04', '药房');
INSERT INTO `dept` VALUES (5, 'D05', '收费室');
INSERT INTO `dept` VALUES (6, 'D06', '放射科');
INSERT INTO `dept` VALUES (7, 'D07', '手术室');
INSERT INTO `dept` VALUES (8, 'D08', 'B超室');
INSERT INTO `dept` VALUES (9, 'D09', '行政');
INSERT INTO `dept` VALUES (10, 'D10', '后勤');
INSERT INTO `dept` VALUES (99, 'D99', '系统');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `doctorid` int(11) NULL DEFAULT NULL,
  `doctorname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deptid` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, '喜洋洋', 1);
INSERT INTO `doctor` VALUES (2, '美羊羊', 1);
INSERT INTO `doctor` VALUES (3, '灰太狼', 2);
INSERT INTO `doctor` VALUES (4, '桃太郎', 2);
INSERT INTO `doctor` VALUES (5, '赵四', 3);
INSERT INTO `doctor` VALUES (6, '刘能', 3);
INSERT INTO `doctor` VALUES (7, '扫地僧', 4);
INSERT INTO `doctor` VALUES (8, '一灯大师', 4);
INSERT INTO `doctor` VALUES (9, '孙悟空', 5);
INSERT INTO `doctor` VALUES (10, '猪八戒', 5);
INSERT INTO `doctor` VALUES (11, '华佗', 6);
INSERT INTO `doctor` VALUES (12, '李时珍', 6);

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `drugCode` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品编码',
  `drugName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名称',
  `drugGailsId` int(11) NULL DEFAULT NULL COMMENT '药品类别',
  `vender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂家ID',
  `supplierId` int(11) NULL DEFAULT NULL COMMENT '供货商ID',
  `format` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `pd` datetime(0) NULL DEFAULT NULL COMMENT '生产日期',
  `mfd` datetime(0) NULL DEFAULT NULL COMMENT '有效期',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `del` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES (1, '1000000000', '999感冒灵', 1, '华润三九医药', 1, '10g×9包，袋装10g，一次1包，一日2~3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (2, '1000000001', '蒲地蓝消炎片', 2, '天津中天制药有限公司', 1, '0.3g×48片，一次3片，一日3次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (3, '1000000002', '云南白药气雾剂', 3, '云南白药集团', 1, '每瓶重50g', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (4, '1000000003', '白云山消炎镇痛膏', 3, '广州白云山制药有限公司', 2, '10贴/盒，贴患处，一日1~2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (5, '1000000004', '感康复方氯酚烷胺片', 1, '吴太感康药业有限公司', 2, '每片含对乙酰绿基酚250毫克，一次2片，一日1次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (6, '1000000005', '白云山板蓝根颗粒', 1, '广州白云山和记黄埔股份有限公司', 2, '每袋3克，一次1袋，一天3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (7, '1000000006', '万通 感通片', 1, '通化万通药业', 2, '片重0.32克，一次4片，一日2~3次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (8, '1000000007', '葵花小儿感冒药颗粒', 6, '葵花药业', 3, '每袋装6克，一次1袋，一日2~3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (9, '1000000008', '咳露口服液', 1, '陕西步长制药', 3, '每瓶10毫升，一日1瓶', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (10, '1000000009', '达仁堂清肺消炎丸', 2, '达仁堂制药', 3, '8克×6袋，一次2克，一日2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (11, '1000000010', '消炎镇痛膏', 3, '南通白益制药有限公司', 4, '贴患处，一日1~2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (12, '1000000011', '丹参酮胶囊', 2, '河北兴隆希力药业有限公司', 4, '口服，一次4粒，一日3~4次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (13, '1000000012', '头孢羟氨苄片', 2, '百药集团有限公司', 4, '0.25克×12片×2板/盒，一次2片，一日2~3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (14, '1000000013', '金莲花口服液', 5, '牙克石市森健药业有限公司', 7, '口服，每瓶10ml', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (15, '1000000014', '穿心莲内酯滴丸', 2, '天津天士力制药股份有限公司', 5, '口服', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (16, '1000000015', '虫草清肺胶囊', 11, '青海普兰特药业有限公司', 6, '口服，一次2~3粒，一日3次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (17, '1000000016', '咳速停糖浆', 11, '贵州百灵企业集团制药股份有限公司', 8, '口服，一次10～20毫升，一日3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (18, '1000000017', '补肺丸 ', 11, '甘肃省西峰制药有限责任公司', 5, '口服，一次1丸，一日2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (19, '1000000018', '丹栀逍遥丸 ', 7, '福州海王金象中药制药有限公司', 2, '口服，一次6～9克，一日2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (20, '1000000019', '益母颗粒', 7, '株洲千金药业股份有限公司\r\n\r\n株洲千金药业股份有限公', 1, '14克×10袋', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (21, '1000000021', '活血调经丸', 7, '河南禹州市药王制药有限公司', 1, '黄酒或温开水送服，一次1丸，一日2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (22, '1000000022', '抗菌消炎胶囊', 2, '上海迪冉郸城制药有限公司\r\n\r\n', 2, '口服。一次3-6粒，一日3次。儿童酌减', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (23, '1000000023', '小柴胡颗粒', 5, '江西德上制药有限公司', 5, '开水冲服。一次1袋(10克)~2袋(20克)，一日3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (24, '1000000024', '黄连上清片 ', 5, '贵州百灵企业集团制药股份有限公司', 8, '口服，一次1片', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (25, '1000000025', '清火片', 5, '广西正堂药业有限责任公司', 6, '口服，一次6片，一日2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (26, '1000000026', '大活络丸', 8, '江西药都樟树制药有限公司', 3, '口服，一次4丸，一日1～2次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (27, '1000000027', '消栓通络片', 8, '北京同仁堂科技发展股份有限公司制药厂', 3, '口服，0.38克×60片', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (28, '1000000028', '芦荟软胶囊 ', 9, '威海百合生物技术股份有限公司', 7, '每日1次，每次2粒', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (29, '1000000029', '龙胆泻肝丸', 10, '北京同仁堂制药有限公司', 7, '口服，6克×12袋', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (30, '1000000030', '鹿胎膏', 7, '通化永基药业股份有限公司', 7, '10克×5块/盒', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (31, '1000000031', '清火栀麦片', 5, '广西亿康药业股份有限公司', 7, '口服，一次2片，一日2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (32, '1000000032', '藿香正气胶囊', 1, '四川省旺林堂药业有限公司', 5, '口服，一次4粒，一日2次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (33, '1000000033', '四季感冒胶囊 ', 1, '哈药集团三精千鹤制药有限公司', 5, '口服。一次3～5粒，一日3次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (34, '1000000034', '维生素E软胶囊', 4, '威海华新药业集团有限公司', 5, '0.1克×15粒×2板/盒', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (35, '1000000035', '复合维生素B片', 4, '华中药业股份有限公司', 2, '口服，100片', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (36, '1000000036', '多维元素片', 4, '杭州赛诺菲民生健康药业有限公司', 2, '口服，60片', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (37, '1000000037', '维生素A胶丸', 4, '国药控股星鲨制药(厦门)有限公司', 2, '2.5万单位×100粒/瓶', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (38, '1000000038', '肠胃宁片', 9, '云南省腾冲县东方红制药有限责任公司', 1, '口服，0.3克×15片×3板/盒', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (39, '1000000039', '肠胃宁片', 9, '河南省新四方制药有限公司', 1, '口服，0.3克×24片×3小盒', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (40, '1000000040', '川奇消食片', 9, '南昌川奇保健品有限公司', 1, '每日3次，每次6片，饭前咀嚼食用', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (41, '1000000041', '小儿咳喘灵颗粒', 6, '湖南富兴飞鸽药业有限公司', 8, '开水冲服，2岁以内一次1克；3至4岁一次1.5克，5至7岁一次2克，一日3～4次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (42, '1000000042', '丁桂儿脐贴', 6, '亚宝药业集团股份有限公司', 8, '1.6克×2贴/盒', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (43, '1000000043', '小儿退热贴', 6, '河南羚锐制药股份有限公司', 8, '2片×2袋', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (44, '1000000044', '蒙脱石散', 6, '博福-益普生(天津)制药有限公司', 6, '3克×10袋/盒', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (45, '1000000045', '小儿化痰止咳颗粒', 6, '太阳石(唐山)药业有限公司', 6, '口服，一次1袋。一日1~2次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (46, '1000000046', '心元胶囊', 8, '吉泰安(四川)药业有限公司', 6, '口服，一次3一4粒，一日3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (47, '1000000047', '参芍片', 8, '保定天浩制药有限公司', 6, '口服，0.3克×48片', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (48, '1000000048', '消栓通络片', 8, '河南省百泉制药有限公司', 4, '口服，48片', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (49, '1000000049', '益智温肾十味丸 ', 10, '内蒙古蒙药股份有限公司', 2, '口服，一次11～15粒，一日1～2次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (50, '1000000050', '参茸三肾胶囊', 10, '陕西东泰制药有限公司', 1, '口服.春夏季，一次5粒.秋冬季一次10粒', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (51, '1000000051', '龙胆泻肝丸', 10, '北京御生堂集团石家庄制药有限公司', 3, '口服，6克x10丸/盒', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (52, '1000000052', '龙胆泻肝丸 ', 10, '药都制药集团股份有限公司', 5, '口服，6克x10丸/盒', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (53, '1000000053', '萘普生片', 3, '江苏平光制药有限责任公司', 8, '口服。成人首次0.5克，以后一次0.25克，必要时每6-8小时一次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (54, '1000000054', '精致银翘解毒片 ', 5, '太极集团四川绵阳制药有限公司', 5, '口服，一次3～5片，一日2次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (55, '1000000055', '清热解毒片', 5, '哈尔滨大洋制药股份有限公司', 5, '口服，一日3次，一次2-4片', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (56, '1000000056', '小儿消食片', 6, '沧州得能制药有限公司', 3, '口服，一岁至三岁一次2-4片，三岁至七岁一次4-6片，一日3次。成人一次6-8片，一日3次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (57, '1000000057', '小儿氨酚黄那敏颗粒 ', 6, '葵花药业', 7, '温水冲服。儿童用量见表', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (58, '1000000058', '维铁缓释片', 4, '广州迈特兴华制药厂有限公司', 8, '饭后口服。一次1片，一日1次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (59, '1000000059', '碳酸钙胶囊', 4, '辽宁千里明药业(集团)有限公司', 4, '口服一日200～1200mg(以Ca2+计)，分次服用。也可根据人体需要及膳食钙的供给情况酌情进行补充，或遵医嘱', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (60, '1000000060', '维D钙咀嚼片', 4, '美国安士制药有限公司', 1, '成人每日两片,儿童每日一片。或遵医嘱', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (61, '1000000061', '消炎镇痛膏 ', 3, '南通百益制药有限公司', 7, '贴患处。一日1～2次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (62, '1000000062', '洁阴康洗液 ', 7, '江西药都仁和制药有限公司', 5, '外用。一日1次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (63, '1000000063', '化风丹 ', 8, '遵义廖元和堂药业有限公司', 5, '口服，成人一次8-10丸，一日2-3次，18天为一疗程；或遵医嘱', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (64, '1000000064', '枫蓼肠胃康分散片', 9, '海南皇隆制药股份有限公司', 8, '口服，一次4～6片，一日3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (65, '1000000065', '含笑半步颠', 12, '东软睿道制药有限公司', 8, '口服，一次1粒，一日1次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (66, '1000000066', '麝香镇痛膏', 3, '焦作市联盟卫生材料有限责任公司', 7, '外用，7厘米×10厘米×2贴×5袋', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (67, '1000000067', '消炎镇痛膏', 3, '广东湛江吉民药业股份有限公司', 6, '贴患处。一日1～2次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (68, '1000000068', '乌鸡白凤丸', 7, '天津达仁堂京万红药业有限公司', 5, '口服，一次6克，一日2次；或将药丸加适量开水溶后服', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (69, '1000000069', '复方枣仁胶囊', 8, '北京亚东生物制药有限公司', 3, '口服，0.4克×12粒/盒', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (70, '1000000070', '补肺丸 ', 11, '甘肃省西峰制药有限责任公司', 8, '口服，一次1丸，一日2次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (71, '1000000071', '咳喘宁颗粒', 11, '武汉双龙药业有限公司', 7, '开水冲服。一次15克，一日3次', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (72, '1000000072', '蛤蚧定喘丸', 11, '吉林济邦药业有限公司', 7, '一次一丸，一日两次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (73, '1000000073', '芦荟软胶囊', 9, '广东美丽康保健品有限公司', 7, '每日1次，每次2粒', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (74, '1000000074', '珂妍胶囊', 9, '西安杨健药业有限公司', 8, '每日2次，每次2粒', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (75, '1000000075', '参茸三肾胶囊 ', 10, '吉林省俊宏药业有限公司', 4, '口服.春夏季，一次5粒.秋冬季一次10粒', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (76, '1000000076', '小儿腹泻宁糖浆', 6, '九芝堂股份有限公司', 3, '口服，10毫升×4瓶/盒', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (77, '1000000077', '多种维生素矿物质片 ', 4, '广东汤臣倍健生物科技股份有限公司', 5, '每日1次，每次1片', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (78, '1000000078', '大活络丸', 8, '雷允上药业有限公司', 2, '口服，一次4丸，一日1～2次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (79, '1000000079', '冠心苏合丸', 8, '同药集团大同制药有限公司', 4, '嚼碎服，一次一丸，一日1～3次；或遵医嘱', '2018-11-01 00:00:00', '2020-11-01 00:00:00', 200, 0);
INSERT INTO `drug` VALUES (80, '1000000080', '蚂蚁大力丸', 12, '东软睿道制药有限公司', 3, '口服，一次1粒，一日1次', '2018-11-01 00:00:00', '2019-11-01 00:00:00', 198, 0);
INSERT INTO `drug` VALUES (81, '1000000081', '一日丧命散', 12, '东软睿道制药有限公司', 4, '口服，一日1次，一次毙命。', '2019-10-01 00:00:00', '2021-10-01 00:00:00', 220, 0);
INSERT INTO `drug` VALUES (82, '7555555555', '是你打死你的', 2, '暗杀可乐放哪里发奖啦', 2, '', '2017-01-01 00:00:00', '2021-03-01 00:00:00', 1, 0);

-- ----------------------------
-- Table structure for druggails
-- ----------------------------
DROP TABLE IF EXISTS `druggails`;
CREATE TABLE `druggails`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `drugGailsId` int(11) NULL DEFAULT NULL COMMENT '类别编码',
  `drugGailsName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of druggails
-- ----------------------------
INSERT INTO `druggails` VALUES (1, 1, '抗感冒药类');
INSERT INTO `druggails` VALUES (2, 2, '抗菌消炎药类');
INSERT INTO `druggails` VALUES (3, 3, '解热镇痛类');
INSERT INTO `druggails` VALUES (4, 4, '矿物质与维生素类');
INSERT INTO `druggails` VALUES (5, 5, '清热解毒类');
INSERT INTO `druggails` VALUES (6, 6, '儿科用药类');
INSERT INTO `druggails` VALUES (7, 7, '妇科用药类');
INSERT INTO `druggails` VALUES (8, 8, '心脑血管类');
INSERT INTO `druggails` VALUES (9, 9, '肠胃类');
INSERT INTO `druggails` VALUES (10, 10, '肝胆肾类');
INSERT INTO `druggails` VALUES (11, 11, '呼吸系统类');
INSERT INTO `druggails` VALUES (12, 12, '其他类');

-- ----------------------------
-- Table structure for earnest
-- ----------------------------
DROP TABLE IF EXISTS `earnest`;
CREATE TABLE `earnest`  (
  `enable` int(255) NULL DEFAULT 1 COMMENT '1:启用，0：禁用',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `patient_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance_cost` double(10, 2) NULL DEFAULT NULL,
  `idenno` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deptId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` int(255) NULL DEFAULT 0 COMMENT '0:未删除，1：已删除',
  `creatUserId` int(11) NULL DEFAULT NULL,
  `creatTime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of earnest
-- ----------------------------
INSERT INTO `earnest` VALUES (1, 1, '王大虎', 'A11', 23.20, '12132359632356622', 'D02', 0, 2, '2019-04-09 10:30:56');
INSERT INTO `earnest` VALUES (1, 2, '王小八', 'A02', 300121.00, '210212131231123231', 'D01', 0, 2, '2019-04-09 10:22:00');
INSERT INTO `earnest` VALUES (0, 3, '大司马', 'A03', 123.00, '123', 'D01', 0, 2, '2019-04-09 10:22:50');
INSERT INTO `earnest` VALUES (1, 4, '大鹌鹑', 'A04', 32132.21, '301121191573571223', 'D02', 0, 2, '2019-04-09 10:22:52');
INSERT INTO `earnest` VALUES (0, 6, '张三', 'A06', 6532.11, '232322323232222222', 'D02', 1, 2, '2019-04-09 10:22:53');
INSERT INTO `earnest` VALUES (1, 7, '李大毛', 'A10', 7.00, '712312312135121323', 'D02', 0, 2, '2019-04-09 10:22:54');
INSERT INTO `earnest` VALUES (1, 8, '李四', 'A01', 666.00, '232132312213213212', 'D02', 0, 2, '2019-04-09 10:22:56');
INSERT INTO `earnest` VALUES (0, 27, '利息', 'B99', 12132.20, '211231231231321', 'D02', 0, 2, '2019-04-09 10:22:57');
INSERT INTO `earnest` VALUES (1, 34, '9988', '9', 9.00, '9', 'D02', 0, 2, '2019-04-09 10:23:07');
INSERT INTO `earnest` VALUES (1, 37, '酷妹', 'C05', 233653.00, '43583232135843212', 'D06', 0, 2, '2019-04-09 10:23:09');
INSERT INTO `earnest` VALUES (1, 38, '靓仔', 'C06', 12.00, '565668623553232223', 'D06', 0, 2, '2019-04-09 10:23:10');
INSERT INTO `earnest` VALUES (1, 39, '你好', '121', 212.00, '111212', 'D06', 0, 2, '2019-04-09 10:23:11');
INSERT INTO `earnest` VALUES (1, 41, '333', '333', 333.00, '333', 'D06', 0, 2, '2019-04-09 10:23:12');
INSERT INTO `earnest` VALUES (1, 42, '22', '22', 22.00, '22', 'D06', 0, 2, '2019-04-09 10:23:14');
INSERT INTO `earnest` VALUES (1, 44, '王二小', '12121', 1.00, '1', 'D08', 0, 2, '2019-04-09 10:36:30');
INSERT INTO `earnest` VALUES (1, 45, '5', '5', 5.00, '5', 'D08', 0, 2, '2019-04-09 10:41:30');

-- ----------------------------
-- Table structure for recipe
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `recipeNo` int(14) NULL DEFAULT NULL COMMENT '处方号',
  `patientName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '患者姓名',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(2) NULL DEFAULT NULL COMMENT '年龄',
  `deptId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `regDate` date NULL DEFAULT NULL,
  `doctName` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `drugId` int(11) NULL DEFAULT NULL,
  `num` int(10) NULL DEFAULT NULL,
  `printUserName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe
-- ----------------------------
INSERT INTO `recipe` VALUES (4, 100000001, '杨紫琼', '男', 60, 'D13', '2019-04-02', '赵四', 80, 1, '孙怀祖');
INSERT INTO `recipe` VALUES (5, 100000002, '李连杰', '男', 50, 'D16', '2019-04-02', '刘海柱', 80, 1, '孙怀祖');

-- ----------------------------
-- Table structure for returndrugs
-- ----------------------------
DROP TABLE IF EXISTS `returndrugs`;
CREATE TABLE `returndrugs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `returnId` int(14) NULL DEFAULT NULL,
  `returnName` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `drugId` int(11) NULL DEFAULT NULL,
  `returnTime` datetime(0) NULL DEFAULT NULL,
  `printUserName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of returndrugs
-- ----------------------------
INSERT INTO `returndrugs` VALUES (1, 100000, '宋江', '男', 81, '2019-04-04 16:40:55', '孙怀祖', 20);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'R01', '超级用户');
INSERT INTO `role` VALUES (2, 'R02', '院长');
INSERT INTO `role` VALUES (3, 'R03', '医生');
INSERT INTO `role` VALUES (4, 'R04', '护士');
INSERT INTO `role` VALUES (5, 'R05', '划价');
INSERT INTO `role` VALUES (6, 'R06', '药房');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `supplierId` int(11) NULL DEFAULT NULL COMMENT '供应商编号',
  `supplierName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, 1, '日本');
INSERT INTO `supplier` VALUES (2, 2, '英国');
INSERT INTO `supplier` VALUES (3, 3, '法国');
INSERT INTO `supplier` VALUES (4, 4, '巴基斯坦');
INSERT INTO `supplier` VALUES (5, 5, '阿富汗');
INSERT INTO `supplier` VALUES (6, 6, '美国');
INSERT INTO `supplier` VALUES (7, 7, '俄罗斯');
INSERT INTO `supplier` VALUES (8, 8, '冰岛');

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rights` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roleId` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deptId` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createUserId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `updateUserId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  `del` tinyint(1) NULL DEFAULT 0,
  `enable` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES (1, 'admin', 'admin', '管理员', '超级用户', NULL, 'R01', 'D99', NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `sysuser` VALUES (2, 'A01', '1', '孙怀祖', '院长', NULL, 'R02', 'D09', '1', '2018-12-01 22:03:34', NULL, NULL, 0, 1);
INSERT INTO `sysuser` VALUES (3, 'A02', '1', '马云', '医生', NULL, 'R03', 'D02', '1', '2018-12-01 22:04:43', '3', '2021-02-28 12:17:21', 0, 0);
INSERT INTO `sysuser` VALUES (4, 'A03', '1', '董明珠', '医生', NULL, 'R04', 'D03', '1', '2018-12-01 22:14:02', '1', '2019-03-22 13:45:10', 0, 1);
INSERT INTO `sysuser` VALUES (5, 'A04', '1', '王健林', '药房', NULL, 'R06', 'D04', '1', '2018-12-01 22:16:48', NULL, NULL, 0, 1);
INSERT INTO `sysuser` VALUES (6, 'A05', '1', '马化腾', '划价', NULL, 'R05', 'D05', '1', '2018-12-01 22:16:53', '1', '2019-03-21 14:24:37', 0, 1);
INSERT INTO `sysuser` VALUES (7, 'A06', '1', '马靖玮', '医生', NULL, NULL, 'D07', '1', '2019-03-21 13:52:31', NULL, NULL, 0, 1);
INSERT INTO `sysuser` VALUES (8, 'A07', '1', '席晨', '医生', NULL, NULL, 'D10', '1', '2019-03-21 13:53:00', NULL, NULL, 0, 1);
INSERT INTO `sysuser` VALUES (9, 'A08', '1', '史旭刚', '医生', NULL, NULL, 'D06', '1', '2019-03-21 13:53:58', NULL, NULL, 0, 1);
INSERT INTO `sysuser` VALUES (10, 'A09', '1', '卜铭', '医生', NULL, NULL, 'D11', '1', '2019-03-21 13:54:17', NULL, NULL, 0, 1);
INSERT INTO `sysuser` VALUES (11, 'A10', '1', '刘源', '医生', NULL, NULL, 'D01', '1', '2019-03-22 09:14:05', '1', '2021-03-01 17:55:51', 0, 1);
INSERT INTO `sysuser` VALUES (12, 'A11', '1', '李敏', '划价', NULL, NULL, 'D05', '1', '2019-03-22 16:56:11', '1', '2021-03-01 17:55:48', 0, 1);
INSERT INTO `sysuser` VALUES (13, 'A12', '1', '李阳', '医生', NULL, NULL, 'D99', '1', '2019-03-27 16:46:39', '1', '2021-03-01 17:55:09', 0, 1);

-- ----------------------------
-- Table structure for usermsg
-- ----------------------------
DROP TABLE IF EXISTS `usermsg`;
CREATE TABLE `usermsg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `setuptime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `ghdeptid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delid` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usermsg
-- ----------------------------
INSERT INTO `usermsg` VALUES (1, '杨过', '男', 35, '2019-03-22 14:04:46', '5', '9', '神雕', 0);
INSERT INTO `usermsg` VALUES (2, '郭靖', '男', 32, '2019-03-22 14:04:49', '6', '12', '射雕', 0);
INSERT INTO `usermsg` VALUES (3, '张无忌', '男', 27, '2019-03-22 14:04:50', '2', '3', '倚天', 0);
INSERT INTO `usermsg` VALUES (4, '王语嫣', '女', 25, '2019-03-22 14:04:50', '3', '6', '天龙八部', 0);
INSERT INTO `usermsg` VALUES (5, '赵敏', '女', 26, '2019-03-22 14:04:51', '6', '11', '倚天', 0);
INSERT INTO `usermsg` VALUES (6, '黄蓉', '女', 30, '2019-03-22 14:04:52', '4', '7', '射雕', 0);
INSERT INTO `usermsg` VALUES (7, '周伯通', '男', 99, '2019-03-22 14:04:52', '2', '4', '射雕', 0);
INSERT INTO `usermsg` VALUES (8, '袁承志', '男', 25, '2019-03-22 14:04:53', '1', '1', '碧血剑', 0);
INSERT INTO `usermsg` VALUES (9, '乔峰', '男', 26, '2019-03-22 14:04:53', '3', '5', '天龙八部', 0);
INSERT INTO `usermsg` VALUES (10, '周芷若', '女', 25, '2019-03-22 14:04:55', '4', '8', '倚天', 0);
INSERT INTO `usermsg` VALUES (11, '令狐冲', '男', 27, '2019-03-22 14:04:56', '5', '10', '笑傲', 0);
INSERT INTO `usermsg` VALUES (12, '温青青', '女', 26, '2019-03-27 16:54:01', '1', '2', '碧血剑', 0);
INSERT INTO `usermsg` VALUES (39, '康师傅', '男', 11, '2019-03-22 15:44:54', '4', '3', '七贤岭', 1);
INSERT INTO `usermsg` VALUES (40, '虚空假面', '男', 555, '2019-03-28 09:39:51', '6', '5', '天辉', 1);
INSERT INTO `usermsg` VALUES (41, '杨1', '男', 22, '2019-03-28 10:54:27', '2', '1', '1', 0);
INSERT INTO `usermsg` VALUES (42, '杨2', '男', 11, '2019-03-28 10:54:45', '1', '1', '1', 0);
INSERT INTO `usermsg` VALUES (43, '杨3', '男', 11, '2019-03-28 10:54:54', '1', '1', '1', 0);
INSERT INTO `usermsg` VALUES (44, '杨4', '男', 11, '2019-03-28 10:55:06', '1', '1', '1', 0);
INSERT INTO `usermsg` VALUES (45, '杨5', '男', 11, '2019-03-28 10:55:11', '1', '1', '1', 0);

SET FOREIGN_KEY_CHECKS = 1;
