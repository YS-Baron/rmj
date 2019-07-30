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

 Date: 30/07/2019 20:48:31
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
  `date` datetime(0) NULL DEFAULT NULL,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `hid`(`hid`) USING BTREE,
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`hid`) REFERENCES `houses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES (6, 16, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (6, 7, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (6, 8, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (6, 9, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (6, 10, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (6, 11, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (6, 12, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (6, 13, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (7, 14, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (7, 15, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (7, 16, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (7, 17, '2019-07-28 19:41:45');
INSERT INTO `favorites` VALUES (7, 18, '2019-07-28 19:41:45');

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
  `uid` int(11) NULL DEFAULT NULL COMMENT '房东',
  `roomNum` int(11) NULL DEFAULT NULL COMMENT '房间个数',
  `lastroom` int(11) NULL DEFAULT NULL COMMENT '剩余房间个数',
  `isqualified` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否合格，1表示检查合格，0表示未检查或则不合格',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '房屋描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  CONSTRAINT `houses_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `housestype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of houses
-- ----------------------------
INSERT INTO `houses` VALUES (7, 1, 1500.00, 15.00, '深圳', '龙岗', '德兴城花园', 8, 4, 4, '1', '该房源为主卧，带明窗，房屋采光比较好，业主用心维护，配置自如家电家私，搭配年轻舒适的装修风格，为您打造温馨舒适的居住环境，适合附近热爱生活的年轻白领或情侣入住');
INSERT INTO `houses` VALUES (8, 1, 1500.00, 15.00, '深圳', '龙岗', '德兴城花园', 8, 3, 3, '1', '该房源为主卧，带明窗，房屋采光比较好，业主用心维护，配置自如家电家私，搭配年轻舒适的装修风格，为您打造温馨舒适的居住环境，适合附近热爱生活的年轻白领或情侣入住');
INSERT INTO `houses` VALUES (9, 1, 1600.00, 15.00, '深圳', '龙岗', '锦荟PARK', 8, 2, 2, '1', '主卧，房间面积很大，采光很好，视野开阔。自如拿铁4.0风格，非常适宜情侣或闺蜜的你们居住！');
INSERT INTO `houses` VALUES (10, 1, 2000.00, 20.00, '深圳', '龙岗', '富通天骏', 8, 2, 2, '1', '四居室中的朝南大卧室，房间采光较好，带独立阳台，业主用心维护，配置自如家电家具，搭配自如装修风格，为您打造温馨舒适的居住环境，周边配套设施多，生活便利，适合热爱生活的你。');
INSERT INTO `houses` VALUES (11, 1, 1930.00, 12.00, '深圳', '龙岗', '景贝南小区', 8, 3, 3, '1', '这个房间户型方正，面积较大。经过业主的用心维护，自如的精心装修，配备自如家电家私，搭配清新的装修风格，适合热爱生活的你，小区安保较好，安静，周边配套设施多，生活便利，小区交通方便。');
INSERT INTO `houses` VALUES (12, 1, 2000.00, 8.00, '深圳', '南山', '海昌大厦', 8, 4, 4, '1', '朝西南的房间，拥有自如配备的密码锁，您能感受到独立空间带来的安全感；风格清新的家具；小区环境优雅，周边配套完善，在您慢享生活的同时为您提供便利。');
INSERT INTO `houses` VALUES (13, 1, 1890.00, 10.00, '深圳', '南山', '龙联花园', 8, 4, 4, '1', '四居室中的次卧室，刚好适合一个人居住，光线好，自然舒适，业主精心维护，房间配备自如家私家电，喜欢读书的你拥有安静的世界，适合热爱生活的你。');
INSERT INTO `houses` VALUES (14, 1, 1790.00, 7.60, '深圳', '南山', '桃源村一期', 8, 4, 4, '1', '四居室中的次卧，适合一个人居住，光线好，自然舒适，业主精心维护，房间配备自如家私，公区配置品牌家电，适合热爱生活的你。');
INSERT INTO `houses` VALUES (15, 1, 2300.00, 11.00, '深圳', '南山', '爱榕园', 8, 4, 4, '1', '该房源为阳台大卧室，房屋采光比较好，业主用心维护，配置自如家电家私，搭配清新活泼的装修风格，为您打造温馨舒适的居住环境，适合附近热爱生活的小情侣入住，两个人也不会显得拥挤。');
INSERT INTO `houses` VALUES (16, 1, 2400.00, 7.50, '深圳', '南山', '如意家园', 8, 4, 4, '1', '4居室次卧，适合一个人入住，带飘窗，房间朝南飘窗，窗户很通透，配自如家具家电，带有饭厅和生活小阳台，适合生活居家。值得推荐！');
INSERT INTO `houses` VALUES (17, 1, 1500.00, 15.00, '深圳', '龙岗', '德兴城花园', 8, 3, 3, '1', '该房源为主卧，带明窗，房屋采光比较好，业主用心维护，配置自如家电家私，搭配年轻舒适的装修风格，为您打造温馨舒适的居住环境，适合附近热爱生活的年轻白领或情侣入住');
INSERT INTO `houses` VALUES (18, 1, 1600.00, 15.00, '深圳', '龙岗', '锦荟PARK', 8, 2, 2, '1', '主卧，房间面积很大，采光很好，视野开阔。自如拿铁4.0风格，非常适宜情侣或闺蜜的你们居住！');
INSERT INTO `houses` VALUES (19, 1, 2000.00, 20.00, '深圳', '龙岗', '富通天骏', 8, 2, 2, '1', '四居室中的朝南大卧室，房间采光较好，带独立阳台，业主用心维护，配置自如家电家具，搭配自如装修风格，为您打造温馨舒适的居住环境，周边配套设施多，生活便利，适合热爱生活的你。');
INSERT INTO `houses` VALUES (20, 1, 1930.00, 12.00, '深圳', '龙岗', '景贝南小区', 8, 3, 3, '1', '这个房间户型方正，面积较大。经过业主的用心维护，自如的精心装修，配备自如家电家私，搭配清新的装修风格，适合热爱生活的你，小区安保较好，安静，周边配套设施多，生活便利，小区交通方便。');
INSERT INTO `houses` VALUES (21, 1, 2000.00, 8.00, '深圳', '南山', '海昌大厦', 8, 4, 4, '1', '朝西南的房间，拥有自如配备的密码锁，您能感受到独立空间带来的安全感；风格清新的家具；小区环境优雅，周边配套完善，在您慢享生活的同时为您提供便利。');
INSERT INTO `houses` VALUES (22, 1, 1890.00, 10.00, '深圳', '南山', '龙联花园', 8, 4, 4, '1', '四居室中的次卧室，刚好适合一个人居住，光线好，自然舒适，业主精心维护，房间配备自如家私家电，喜欢读书的你拥有安静的世界，适合热爱生活的你。');
INSERT INTO `houses` VALUES (23, 1, 1790.00, 7.60, '深圳', '南山', '桃源村一期', 8, 4, 4, '1', '四居室中的次卧，适合一个人居住，光线好，自然舒适，业主精心维护，房间配备自如家私，公区配置品牌家电，适合热爱生活的你。');
INSERT INTO `houses` VALUES (24, 1, 2300.00, 11.00, '深圳', '南山', '爱榕园', 8, 4, 4, '1', '该房源为阳台大卧室，房屋采光比较好，业主用心维护，配置自如家电家私，搭配清新活泼的装修风格，为您打造温馨舒适的居住环境，适合附近热爱生活的小情侣入住，两个人也不会显得拥挤。');
INSERT INTO `houses` VALUES (25, 1, 2400.00, 7.50, '深圳', '南山', '如意家园', 8, 4, 4, '1', '4居室次卧，适合一个人入住，带飘窗，房间朝南飘窗，窗户很通透，配自如家具家电，带有饭厅和生活小阳台，适合生活居家。值得推荐！');
INSERT INTO `houses` VALUES (26, 1, 2930.00, 10.06, '北京', '东城', '广渠家园', 8, 3, 3, '1', '大窗，明亮采光，阳光很好，楼下就是菜市场，价格便宜。温馨舒适，视野特别好，房间比较大，来住吧。享受生活的同时，也享受自如。');
INSERT INTO `houses` VALUES (27, 1, 3490.00, 10.40, '北京', '东城', '悠胜美苑', 8, 3, 3, '1', '此房源为朝南向卧室，采光良好，屋内明亮，屋内配置的自如的家具家电，适合附近上班的，地铁沿线上班的情侣，同事，白领居住，小区属于居住区，周围生活设施方便，欢迎入住此房源。');
INSERT INTO `houses` VALUES (28, 1, 3130.00, 9.10, '北京', '东城', '永铁苑', 8, 3, 3, '1', '房源主卧采光好，带独立阳台，业主用心维护的房源，附带自如家具，适合喜欢阳光的你，小区环境优美，绿化良好，出行非常方便，欢迎您的入住。');
INSERT INTO `houses` VALUES (29, 1, 3130.00, 9.60, '北京', '东城', '东环居苑', 8, 3, 3, '1', '该房源为三居中比较大的卧室，同时该房间的朝向为南向，室内光线良好，空间很大，在您入住之后会有充沛的阳光，同时该房间所在的小区相对于周边的小区属于较好的小区');
INSERT INTO `houses` VALUES (30, 1, 3190.00, 10.40, '北京', '东城', '黄金苑', 8, 3, 3, '1', '主卧室朝南向带阳台！高性价比！没有浪费面积视野非常好！温馨居住的小家！');
INSERT INTO `houses` VALUES (31, 1, 2960.00, 11.00, '北京', '东城', '福盈家园', 8, 3, 3, '1', '清新的风格让您体验超乎想象的自如租住体验~适合您的品味，免费WiFi，双周保洁，免费维修，快快拿起电话联系我吧');
INSERT INTO `houses` VALUES (32, 1, 2930.00, 10.06, '北京', '东城', '广渠家园', 8, 3, 3, '1', '大窗，明亮采光，阳光很好，楼下就是菜市场，价格便宜。温馨舒适，视野特别好，房间比较大，来住吧。享受生活的同时，也享受自如。');
INSERT INTO `houses` VALUES (33, 1, 3490.00, 10.40, '北京', '东城', '悠胜美苑', 8, 3, 3, '1', '此房源为朝南向卧室，采光良好，屋内明亮，屋内配置的自如的家具家电，适合附近上班的，地铁沿线上班的情侣，同事，白领居住，小区属于居住区，周围生活设施方便，欢迎入住此房源。');
INSERT INTO `houses` VALUES (34, 1, 3130.00, 9.10, '北京', '东城', '永铁苑', 8, 3, 3, '1', '房源主卧采光好，带独立阳台，业主用心维护的房源，附带自如家具，适合喜欢阳光的你，小区环境优美，绿化良好，出行非常方便，欢迎您的入住。');
INSERT INTO `houses` VALUES (35, 1, 3130.00, 9.60, '北京', '东城', '东环居苑', 8, 3, 3, '1', '该房源为三居中比较大的卧室，同时该房间的朝向为南向，室内光线良好，空间很大，在您入住之后会有充沛的阳光，同时该房间所在的小区相对于周边的小区属于较好的小区');
INSERT INTO `houses` VALUES (36, 1, 3190.00, 10.40, '北京', '东城', '黄金苑', 8, 3, 3, '1', '主卧室朝南向带阳台！高性价比！没有浪费面积视野非常好！温馨居住的小家！');
INSERT INTO `houses` VALUES (37, 1, 2960.00, 11.00, '北京', '东城', '福盈家园', 8, 3, 3, '1', '清新的风格让您体验超乎想象的自如租住体验~适合您的品味，免费WiFi，双周保洁，免费维修，快快拿起电话联系我吧');
INSERT INTO `houses` VALUES (38, 2, 6390.00, 55.00, '北京', '东城', '双龙南里', 8, 2, 2, '1', '房子是正规两居室，冬天采暖舒适，都是自如装修的，适合一家人居住。双龙南里东区的房子，让您的自如租住生活温馨舒适！配备了业主精心挑选的家具家电，您如果想体验大学的生活，选择这个房子，能到北工大，感受大学时光。');
INSERT INTO `houses` VALUES (39, 2, 6890.00, 57.34, '北京', '东城', '永泰西里', 8, 2, 2, '1', '简单温馨的房屋风格，配有自如配置的家具家电，满足生活的基本需求；整租两居，给您一个属于自己的空间，享受清晨的一抹阳光，温暖舒适；可独居，可与朋友和家人一起居住，闲暇时间您还可以邀请朋友简单聚餐，与朋友一起分享生活中的喜悦，创享品质生活。');
INSERT INTO `houses` VALUES (40, 2, 6590.00, 51.90, '北京', '东城', '亮甲店小区', 8, 2, 2, '1', '简单温馨的房屋风格，配有自如配置的家具家电，满足生活的基本需求；整租两居，给您一个属于自己的空间，南向起居室，享受清晨的一抹阳光，温暖舒适；可独居，可与家人一起居住，闲暇时间您还可以邀请好友简单聚餐，与朋友一起分享生活中的喜悦，创享品质生活。');
INSERT INTO `houses` VALUES (41, 2, 5860.00, 46.00, '深圳', '宝安', '泰华君逸世家', 8, 1, 1, '1', '小区环境优美，管理严格，非常适合居住。小区绿化面积高，先去环境好，安静很适合居住，小区物业管理也比较好，让您住的更省心，安心主卧带阳台，小区环境优美，管理严格，非常适合居住');
INSERT INTO `houses` VALUES (42, 2, 4390.00, 28.00, '深圳', '宝安', '花样年花乡', 8, 1, 1, '1', '小小区东南门出走就是地铁一号线宝体地铁站，沃尔玛商场就在地铁站B出口，商场附近就是KFC，星巴克，必胜客，可颂坊，味千拉面，真功夫等等餐饮店。小区附近就是各种快餐美食店，湘菜粤菜各色菜系！周边也有绿色出行的自行车，而且从小区出门走就是宝安体育馆，适合锻炼的人群哦！');
INSERT INTO `houses` VALUES (43, 2, 5090.00, 71.00, '深圳', '宝安', '灵芝新村', 8, 1, 1, '1', '该房源户型方正，装修采光通风都很好，整租房源拥有独立的个人空间，精致装修，周边商圈发展成熟，生活出行方便，舒适度高。比较适合年轻家庭及情侣居住。小区出门不远就是海雅缤纷城，各种美食，满足您的生活娱乐各种需求，紧靠广深公路，公交站点多，可直达南山！');
INSERT INTO `houses` VALUES (44, 1, 6000.00, 40.00, '江西', '南昌', '红谷滩', 7, 2, 2, '1', '面向赣江');

-- ----------------------------
-- Table structure for housestype
-- ----------------------------
DROP TABLE IF EXISTS `housestype`;
CREATE TABLE `housestype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `typename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of housestype
-- ----------------------------
INSERT INTO `housestype` VALUES (1, '合租');
INSERT INTO `housestype` VALUES (2, '整租');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `hid` int(11) NULL DEFAULT NULL COMMENT '房屋编号',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `hid`(`hid`) USING BTREE,
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `houses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (2, 7, '/upload/200000022.jpg');
INSERT INTO `image` VALUES (3, 7, '/upload/200000023.jpg');
INSERT INTO `image` VALUES (4, 7, '/upload/200000045.jpg');
INSERT INTO `image` VALUES (5, 7, '/upload/200000043.jpg');
INSERT INTO `image` VALUES (6, 7, '/upload/200000048.jpg');
INSERT INTO `image` VALUES (7, 7, '/upload/200000050.jpg');
INSERT INTO `image` VALUES (8, 7, '/upload/200000051.jpg');
INSERT INTO `image` VALUES (9, 7, '/upload/200000056.jpg');
INSERT INTO `image` VALUES (10, 7, '/upload/200000052.jpg');
INSERT INTO `image` VALUES (11, 7, '/upload/200000058.jpg');
INSERT INTO `image` VALUES (12, 7, '/upload/200000059.jpg');
INSERT INTO `image` VALUES (13, 7, '/upload/200000060.jpg');
INSERT INTO `image` VALUES (14, 7, '/upload/200000061.jpg');
INSERT INTO `image` VALUES (15, 7, '/upload/200000062.jpg');
INSERT INTO `image` VALUES (16, 7, '/upload/200000063.jpg');
INSERT INTO `image` VALUES (17, 8, '/upload/200000021.jpg');
INSERT INTO `image` VALUES (18, 8, '/upload/200000022.jpg');
INSERT INTO `image` VALUES (19, 8, '/upload/200000023.jpg');
INSERT INTO `image` VALUES (20, 8, '/upload/200000043.jpg');
INSERT INTO `image` VALUES (21, 8, '/upload/200000045.jpg');
INSERT INTO `image` VALUES (22, 8, '/upload/200000048.jpg');
INSERT INTO `image` VALUES (23, 8, '/upload/200000050.jpg');
INSERT INTO `image` VALUES (24, 8, '/upload/200000051.jpg');
INSERT INTO `image` VALUES (25, 8, '/upload/200000052.jpg');
INSERT INTO `image` VALUES (26, 8, '/upload/200000056.jpg');
INSERT INTO `image` VALUES (27, 8, '/upload/200000058.jpg');
INSERT INTO `image` VALUES (28, 8, '/upload/200000059.jpg');
INSERT INTO `image` VALUES (29, 8, '/upload/200000060.jpg');
INSERT INTO `image` VALUES (30, 8, '/upload/200000061.jpg');
INSERT INTO `image` VALUES (31, 8, '/upload/200000062.jpg');
INSERT INTO `image` VALUES (32, 8, '/upload/200000063.jpg');
INSERT INTO `image` VALUES (33, 9, '/upload/200000021.jpg');
INSERT INTO `image` VALUES (34, 9, '/upload/200000022.jpg');
INSERT INTO `image` VALUES (35, 9, '/upload/200000023.jpg');
INSERT INTO `image` VALUES (36, 9, '/upload/200000043.jpg');
INSERT INTO `image` VALUES (37, 9, '/upload/200000045.jpg');
INSERT INTO `image` VALUES (38, 9, '/upload/200000048.jpg');
INSERT INTO `image` VALUES (39, 9, '/upload/200000050.jpg');
INSERT INTO `image` VALUES (40, 9, '/upload/200000051.jpg');
INSERT INTO `image` VALUES (41, 9, '/upload/200000052.jpg');
INSERT INTO `image` VALUES (42, 9, '/upload/200000056.jpg');
INSERT INTO `image` VALUES (43, 9, '/upload/200000058.jpg');
INSERT INTO `image` VALUES (44, 9, '/upload/200000059.jpg');
INSERT INTO `image` VALUES (45, 9, '/upload/200000060.jpg');
INSERT INTO `image` VALUES (46, 9, '/upload/200000061.jpg');
INSERT INTO `image` VALUES (47, 9, '/upload/200000062.jpg');
INSERT INTO `image` VALUES (48, 9, '/upload/200000063.jpg');
INSERT INTO `image` VALUES (49, 10, '/upload/200000021.jpg');
INSERT INTO `image` VALUES (50, 10, '/upload/200000022.jpg');
INSERT INTO `image` VALUES (51, 10, '/upload/200000023.jpg');
INSERT INTO `image` VALUES (52, 10, '/upload/200000043.jpg');
INSERT INTO `image` VALUES (53, 10, '/upload/200000045.jpg');
INSERT INTO `image` VALUES (54, 10, '/upload/200000048.jpg');
INSERT INTO `image` VALUES (55, 10, '/upload/200000050.jpg');
INSERT INTO `image` VALUES (56, 10, '/upload/200000051.jpg');
INSERT INTO `image` VALUES (57, 10, '/upload/200000052.jpg');
INSERT INTO `image` VALUES (58, 10, '/upload/200000056.jpg');
INSERT INTO `image` VALUES (59, 10, '/upload/200000058.jpg');
INSERT INTO `image` VALUES (60, 10, '/upload/200000059.jpg');
INSERT INTO `image` VALUES (61, 10, '/upload/200000060.jpg');
INSERT INTO `image` VALUES (62, 10, '/upload/200000061.jpg');
INSERT INTO `image` VALUES (63, 10, '/upload/200000062.jpg');
INSERT INTO `image` VALUES (64, 10, '/upload/200000063.jpg');

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
-- Records of rent
-- ----------------------------
INSERT INTO `rent` VALUES (6, 7, '2019-07-29 01:13:32', '2019-10-29 01:13:32', 4500.00, '该房子出租3个月');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号用于与其他表的关联作用',
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话号码和登录账号',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `role` int(11) NULL DEFAULT NULL COMMENT '角色：1：租客；2：房东；0：管理员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tel`(`tel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '15893834485', '管理员1号', 'C88FA127172860CBB92C382CC9BF092A', NULL, '/upload/head.jpg', 0);
INSERT INTO `user` VALUES (6, '13787389834', '宜家客1146', 'B714E887236D11F2DC3E2DC55DA38DC3', NULL, '/upload/head.jpg', 1);
INSERT INTO `user` VALUES (7, '13787389833', '宜家客', 'C88FA127172860CBB92C382CC9BF092A', '', '/upload/head.jpg', 1);
INSERT INTO `user` VALUES (8, '13538474875', '宜家客52c9', 'C88FA127172860CBB92C382CC9BF092A', NULL, '/upload/head.jpg', 2);

SET FOREIGN_KEY_CHECKS = 1;
