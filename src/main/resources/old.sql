/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : old

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-05-14 14:53:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(45) DEFAULT NULL,
  `admin_password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('11', '苏文文', '123456');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `service_id` int(10) unsigned DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `service_name` varchar(45) DEFAULT NULL,
  `service_image_url` varchar(200) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `orderdate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('59', '28', '51', '赵大伟', '10', '止泻药', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/c67e6802-1956-4139-9a63-08720be02584.jpg', null, null, '未完成', '2019-04-17 21:49:17');
INSERT INTO `t_order` VALUES ('60', '28', '53', '赵大伟', '35', '感冒药', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a18e7fda-34b7-412e-86ff-559051235197.jpg', null, null, '未完成', '2019-04-17 21:49:17');
INSERT INTO `t_order` VALUES ('61', '28', '42', '赵大伟', '10', '测血糖', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65177aed-915c-4d71-9658-62e097084903.jpg', null, null, '未完成', '2019-04-17 21:49:17');
INSERT INTO `t_order` VALUES ('62', '28', '14', '赵大伟', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg', null, null, '未完成', '2019-04-17 21:49:17');
INSERT INTO `t_order` VALUES ('63', '28', '48', '赵大伟', '0', '测血压', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/1a85a830-f21a-4055-81f3-71e164a30f23.jpg', null, null, '未完成', '2019-04-17 21:49:17');
INSERT INTO `t_order` VALUES ('64', '28', '52', '赵大伟', '20', '消食药', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/7d730076-0631-4e6f-9234-8406046b5c94.jpg', null, null, '未完成', '2019-04-17 21:49:17');
INSERT INTO `t_order` VALUES ('65', '28', '60', '赵大伟', '0', '广场舞教学', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/1c340e17-97a3-46af-a0bf-539a3fdebaa1.jpg', null, null, '未完成', '2019-04-17 21:49:17');
INSERT INTO `t_order` VALUES ('66', '28', '18', '赵大伟', '10', '老年课堂', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a399b22c-f19b-4156-a6ff-7e4d523bcd9c.jpg', null, null, '未完成', '2019-04-17 21:49:17');
INSERT INTO `t_order` VALUES ('67', '29', '5', '张大爷', '30', '整理衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/702fac6d-f557-48ed-9e77-228c4397c868.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:12');
INSERT INTO `t_order` VALUES ('68', '29', '41', '张大爷', '10', '养生食谱搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/e2a91d99-48f5-4173-bc53-bec533842e0c.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('70', '29', '56', '张大爷', '40', '制作甜点', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/3d6f5711-a1d1-4937-acb9-de4d9cf88544.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('71', '29', '18', '张大爷', '10', '老年课堂', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a399b22c-f19b-4156-a6ff-7e4d523bcd9c.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('72', '29', '52', '张大爷', '20', '消食药', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/7d730076-0631-4e6f-9234-8406046b5c94.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('73', '29', '51', '张大爷', '10', '止泻药', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/c67e6802-1956-4139-9a63-08720be02584.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('74', '29', '61', '张大爷', '25', '早餐吃食', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/31444f3f-22cc-47cb-aec3-6617f442920f.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('75', '29', '4', '张大爷', '20', '熨烫衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2a2e6598-ca8a-48b0-b62b-a41e4453ceed.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('76', '29', '5', '张大爷', '30', '整理衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/702fac6d-f557-48ed-9e77-228c4397c868.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('77', '29', '41', '张大爷', '10', '养生食谱搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/e2a91d99-48f5-4173-bc53-bec533842e0c.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('78', '29', '11', '张大爷', '15', '清洁口腔', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/72a867b9-be6c-44b1-a88b-74d5820e9152.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('79', '29', '14', '张大爷', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('80', '29', '18', '张大爷', '10', '老年课堂', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a399b22c-f19b-4156-a6ff-7e4d523bcd9c.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-18 10:10:33');
INSERT INTO `t_order` VALUES ('81', '1', '7', '小明', '10', '修改衣服', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/22654186-feea-4697-a948-5e84bcbe1ce1.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-18 14:20:15');
INSERT INTO `t_order` VALUES ('82', '1', '42', '小明', '10', '测血糖', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65177aed-915c-4d71-9658-62e097084903.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-18 14:20:15');
INSERT INTO `t_order` VALUES ('83', '1', '7', '小明', '10', '修改衣服', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/22654186-feea-4697-a948-5e84bcbe1ce1.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-18 14:20:15');
INSERT INTO `t_order` VALUES ('84', '1', '14', '小明', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-18 14:20:15');
INSERT INTO `t_order` VALUES ('85', '1', '6', '小明', '10', '清洗衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2c569bb7-4b9f-4180-9739-e6f5897aa986.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-18 14:20:15');
INSERT INTO `t_order` VALUES ('86', '1', '9', '小明', '20', '衣着搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/33c32576-410a-4714-803d-a4038f969bbc.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-18 14:20:15');
INSERT INTO `t_order` VALUES ('87', '1', '4', '小明', '20', '熨烫衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2a2e6598-ca8a-48b0-b62b-a41e4453ceed.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-18 14:24:39');
INSERT INTO `t_order` VALUES ('88', '1', '6', '小明', '10', '清洗衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2c569bb7-4b9f-4180-9739-e6f5897aa986.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-18 14:24:59');
INSERT INTO `t_order` VALUES ('89', '1', '6', '小明', '10', '清洗衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2c569bb7-4b9f-4180-9739-e6f5897aa986.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-19 08:13:15');
INSERT INTO `t_order` VALUES ('90', '1', '9', '小明', '20', '衣着搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/33c32576-410a-4714-803d-a4038f969bbc.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-19 08:13:15');
INSERT INTO `t_order` VALUES ('91', '30', '5', '陈大爷', '30', '整理衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/702fac6d-f557-48ed-9e77-228c4397c868.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-22 08:43:56');
INSERT INTO `t_order` VALUES ('92', '30', '11', '陈大爷', '15', '清洁口腔', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/72a867b9-be6c-44b1-a88b-74d5820e9152.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-22 08:44:02');
INSERT INTO `t_order` VALUES ('93', '30', '18', '陈大爷', '10', '老年课堂', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a399b22c-f19b-4156-a6ff-7e4d523bcd9c.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-22 08:44:03');
INSERT INTO `t_order` VALUES ('94', '30', '41', '陈大爷', '10', '养生食谱搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/e2a91d99-48f5-4173-bc53-bec533842e0c.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-22 08:44:03');
INSERT INTO `t_order` VALUES ('95', '30', '14', '陈大爷', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-22 08:44:03');
INSERT INTO `t_order` VALUES ('96', '30', '42', '陈大爷', '10', '测血糖', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65177aed-915c-4d71-9658-62e097084903.jpg', '安徽省滁州市滁州学院', null, '未完成', '2019-04-22 08:44:03');
INSERT INTO `t_order` VALUES ('97', '1', '77', '小明', '20', '清洗衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/ae4b58a3-c28e-4172-96a4-a4c66627a1ee.jpg', '安徽省滁州市长乐小区', '15755023843', '未完成', '2019-04-24 10:05:38');
INSERT INTO `t_order` VALUES ('98', '29', '5', '张大爷', '30', '整理衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/702fac6d-f557-48ed-9e77-228c4397c868.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:03:25');
INSERT INTO `t_order` VALUES ('99', '29', '41', '张大爷', '10', '养生食谱搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/e2a91d99-48f5-4173-bc53-bec533842e0c.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:03:36');
INSERT INTO `t_order` VALUES ('100', '29', '11', '张大爷', '15', '清洁口腔', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/72a867b9-be6c-44b1-a88b-74d5820e9152.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:03:36');
INSERT INTO `t_order` VALUES ('101', '29', '53', '张大爷', '35', '感冒药', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a18e7fda-34b7-412e-86ff-559051235197.jpg', '安徽省滁州市长乐小区', null, '完成', '2019-04-29 11:03:36');
INSERT INTO `t_order` VALUES ('102', '29', '14', '张大爷', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:03:36');
INSERT INTO `t_order` VALUES ('103', '29', '56', '张大爷', '40', '制作甜点', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/3d6f5711-a1d1-4937-acb9-de4d9cf88544.jpg', '安徽省滁州市长乐小区', null, '完成', '2019-04-29 11:03:36');
INSERT INTO `t_order` VALUES ('104', '29', '41', '张大爷', '10', '养生食谱搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/e2a91d99-48f5-4173-bc53-bec533842e0c.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:27');
INSERT INTO `t_order` VALUES ('105', '29', '18', '张大爷', '10', '老年课堂', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a399b22c-f19b-4156-a6ff-7e4d523bcd9c.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:32');
INSERT INTO `t_order` VALUES ('106', '29', '14', '张大爷', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:32');
INSERT INTO `t_order` VALUES ('107', '29', '14', '张大爷', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:32');
INSERT INTO `t_order` VALUES ('108', '29', '4', '张大爷', '20', '熨烫衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2a2e6598-ca8a-48b0-b62b-a41e4453ceed.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:32');
INSERT INTO `t_order` VALUES ('109', '29', '5', '张大爷', '30', '整理衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/702fac6d-f557-48ed-9e77-228c4397c868.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:33');
INSERT INTO `t_order` VALUES ('110', '29', '6', '张大爷', '10', '清洗衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2c569bb7-4b9f-4180-9739-e6f5897aa986.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:33');
INSERT INTO `t_order` VALUES ('111', '29', '12', '张大爷', '10', '须发清洁', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a70bf446-e93d-472c-a781-80a6db86c9c3.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:33');
INSERT INTO `t_order` VALUES ('112', '29', '51', '张大爷', '10', '止泻药', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/c67e6802-1956-4139-9a63-08720be02584.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:33');
INSERT INTO `t_order` VALUES ('113', '29', '61', '张大爷', '25', '早餐吃食', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/31444f3f-22cc-47cb-aec3-6617f442920f.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:33');
INSERT INTO `t_order` VALUES ('114', '29', '18', '张大爷', '10', '老年课堂', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a399b22c-f19b-4156-a6ff-7e4d523bcd9c.jpg', '安徽省滁州市长乐小区', null, '未完成', '2019-04-29 11:13:33');

-- ----------------------------
-- Table structure for `t_service`
-- ----------------------------
DROP TABLE IF EXISTS `t_service`;
CREATE TABLE `t_service` (
  `service_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) DEFAULT NULL,
  `service_price` float DEFAULT NULL,
  `service_image_url` varchar(200) DEFAULT NULL,
  `service_description` varchar(200) DEFAULT NULL,
  `service_hot` varchar(45) DEFAULT NULL,
  `service_type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_service
-- ----------------------------
INSERT INTO `t_service` VALUES ('6', '清洗衣物', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2c569bb7-4b9f-4180-9739-e6f5897aa986.jpg', '为用户提供清洗衣物的服务，不包括除衣物之外的任何物品', '非热门', '衣着服务');
INSERT INTO `t_service` VALUES ('7', '修改衣服', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/22654186-feea-4697-a948-5e84bcbe1ce1.jpg', '为用户提供修补衣服和修改的服务，达到用户满意的效果为止', '非热门', '衣着服务');
INSERT INTO `t_service` VALUES ('8', '修补衣服', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/0f360be9-5c70-463d-b881-1e12655268a9.jpg', '为用户提供修补衣服的服务', '非热门', '衣着服务');
INSERT INTO `t_service` VALUES ('9', '衣着搭配', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/01aec890-8a34-4ce4-92a1-cdeb80805f3a.jpg', '按用户要求，为用户搭配出席某场合的合适的服饰。', '非热门', '衣着服务');
INSERT INTO `t_service` VALUES ('11', '清洁口腔', '15', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/72a867b9-be6c-44b1-a88b-74d5820e9152.jpg', '为用户提供清洁女口腔卫生的服务', '非热门', '清洁服务');
INSERT INTO `t_service` VALUES ('12', '须发清洁', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a70bf446-e93d-472c-a781-80a6db86c9c3.jpg', '为用户提供清洁口腔卫生的服务', '非热门', '清洁服务');
INSERT INTO `t_service` VALUES ('14', '按摩理疗', '20', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg', '为用户按摩理疗服务', '热门', '健康服务');
INSERT INTO `t_service` VALUES ('18', '老年课堂', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a399b22c-f19b-4156-a6ff-7e4d523bcd9c.jpg', '为老年人提供一次学习的机会', '热门', '助乐服务');
INSERT INTO `t_service` VALUES ('41', '养生食谱搭配', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/e2a91d99-48f5-4173-bc53-bec533842e0c.jpg', '位用户提供健康养生的饮食计划，并且提供上门制作饮食的服务', '热门', '做食服务');
INSERT INTO `t_service` VALUES ('42', '测血糖', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65177aed-915c-4d71-9658-62e097084903.jpg', '为用户提供上门测血糖服务', '热门', '健康服务');
INSERT INTO `t_service` VALUES ('48', '测血压', '0', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/1a85a830-f21a-4055-81f3-71e164a30f23.jpg', '为用户提供上门测血压服务，不收取任何费用', '热门', '健康服务');
INSERT INTO `t_service` VALUES ('51', '止泻药', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/c67e6802-1956-4139-9a63-08720be02584.jpg', '为用户提供常用的止泻药以及服用方法，并且送货上门。', '热门', '健康服务');
INSERT INTO `t_service` VALUES ('52', '消食药', '20', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/7d730076-0631-4e6f-9234-8406046b5c94.jpg', '为用户提供健胃消食的药，以及服用方法，并且提供送货上门的服务', '热门', '健康服务');
INSERT INTO `t_service` VALUES ('53', '感冒药', '35', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a18e7fda-34b7-412e-86ff-559051235197.jpg', '为用户提供常用的感冒药以及服用方法，并且送货上门。', '非热门', '健康服务');
INSERT INTO `t_service` VALUES ('54', '制作餐饭', '30', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/0770c7ca-d1a6-4ce9-8658-60d75f527deb.jpg', '提供上门做饭服务，可根据用户的要求提供一般的家常饭菜，供用户使用，做饭食材可根据用户要求购买，食材费用，由用户承担。', '非热门', '做食服务');
INSERT INTO `t_service` VALUES ('55', '制作小吃', '30', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/960d6792-ec1c-4e50-80d2-2c62d5debc79.jpg', '提供上门制作小吃服务，可根据用户的要求提供一般的小吃类型，供用户使用，做饭食材可根据用户要求购买，食材费用，由用户承担。', '非热门', '做食服务');
INSERT INTO `t_service` VALUES ('56', '制作甜点', '40', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/3d6f5711-a1d1-4937-acb9-de4d9cf88544.jpg', '提供上门制作甜点服务，可根据用户的要求提供一般的甜点制作，供用户使用，做饭食材可根据用户要求购买，食材费用，由用户承担。', '热门', '做食服务');
INSERT INTO `t_service` VALUES ('57', '制作正餐', '60', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/73bd86dd-bc05-408d-a758-9903d6955034.jpg', '提供上门做饭服务，可根据用户的要求提供正式的餐食，可供用户招待客人，做饭食材可根据用户要求购买，食材费用，由用户承担。', '非热门', '做食服务');
INSERT INTO `t_service` VALUES ('60', '广场舞教学', '0', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/1c340e17-97a3-46af-a0bf-539a3fdebaa1.jpg', '为老年人提供广场舞教学', '热门', '助乐服务');
INSERT INTO `t_service` VALUES ('61', '早餐吃食', '25', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/31444f3f-22cc-47cb-aec3-6617f442920f.jpg', '洗脑大V健康', '热门', '做食服务');
INSERT INTO `t_service` VALUES ('62', '面食制作', '35', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/881e76f3-a4bc-4406-9f6a-74dc36cb70cb.jpg', '十多个电饭煲', '热门', '热门服务');
INSERT INTO `t_service` VALUES ('63', '广场舞教学', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/7bc0e8ad-516b-4867-9b7d-fd4fef69dcc9.jpg', '为用户提供广场舞教学服务', '热门', '助乐服务');
INSERT INTO `t_service` VALUES ('75', '熨烫衣物', '20', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/0601c4a5-2957-4c02-a90f-f3a0a0f15865.jpg', '为用户提供熨烫衣物的服务', '非热门', '衣着服务');
INSERT INTO `t_service` VALUES ('76', '熨烫衣物', '20', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/7adfe347-59cc-43b7-89e3-180de23ad33c.jpg', '为用户提供熨烫衣物的服务', '非热门', '衣着服务');
INSERT INTO `t_service` VALUES ('77', '清洗衣物', '20', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/ae4b58a3-c28e-4172-96a4-a4c66627a1ee.jpg', '为用户提供清洗衣物的服务', '非热门', '衣着服务');
INSERT INTO `t_service` VALUES ('78', '屋内清洁', '50', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/663e4932-d862-4d8e-ae76-350bf36b9a4f.jpg', '为用户提供打扫屋内卫生的服务', '非热门', '清洁服务');
INSERT INTO `t_service` VALUES ('79', '剪头发', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/d2b771cb-aef5-4a7a-9001-be38e8a338ee.jpg', '为用户提供剪发服务', '非热门', '修饰服务');
INSERT INTO `t_service` VALUES ('80', '修剪胡须', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/0a9dd204-cce7-4d1a-af06-a3877327420b.jpg', '为用户提供修剪胡须的服务', '非热门', '修饰服务');
INSERT INTO `t_service` VALUES ('82', '衣着搭配', '10', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/5106c8a7-a437-47c4-ad56-7b7924fb6356.jpg', '为用户提供搭配衣着服饰的服务', '非热门', '衣着服务');

-- ----------------------------
-- Table structure for `t_shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `t_shopcart`;
CREATE TABLE `t_shopcart` (
  `shopcart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `price` float DEFAULT NULL,
  `service_name` varchar(45) DEFAULT NULL,
  `service_image_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`shopcart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shopcart
-- ----------------------------
INSERT INTO `t_shopcart` VALUES ('107', '54', '1', '30', '制作餐饭', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/0770c7ca-d1a6-4ce9-8658-60d75f527deb.jpg');
INSERT INTO `t_shopcart` VALUES ('108', '11', '1', '15', '清洁口腔', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/72a867b9-be6c-44b1-a88b-74d5820e9152.jpg');
INSERT INTO `t_shopcart` VALUES ('109', '14', '1', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg');
INSERT INTO `t_shopcart` VALUES ('112', '5', '1', '30', '整理衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/702fac6d-f557-48ed-9e77-228c4397c868.jpg');
INSERT INTO `t_shopcart` VALUES ('113', '56', '1', '40', '制作甜点', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/3d6f5711-a1d1-4937-acb9-de4d9cf88544.jpg');
INSERT INTO `t_shopcart` VALUES ('114', '18', '1', '10', '老年课堂', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/a399b22c-f19b-4156-a6ff-7e4d523bcd9c.jpg');
INSERT INTO `t_shopcart` VALUES ('115', '51', '1', '10', '止泻药', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/c67e6802-1956-4139-9a63-08720be02584.jpg');
INSERT INTO `t_shopcart` VALUES ('116', '14', '1', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg');
INSERT INTO `t_shopcart` VALUES ('117', '41', '1', '10', '养生食谱搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/e2a91d99-48f5-4173-bc53-bec533842e0c.jpg');
INSERT INTO `t_shopcart` VALUES ('118', '14', '1', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg');
INSERT INTO `t_shopcart` VALUES ('119', '6', '1', '10', '清洗衣物', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/2c569bb7-4b9f-4180-9739-e6f5897aa986.jpg');
INSERT INTO `t_shopcart` VALUES ('120', '14', '1', '20', '按摩理疗', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/65216bbf-f84d-4786-ae90-3acb480c71e5.jpg');
INSERT INTO `t_shopcart` VALUES ('141', '8', '1', '10', '修补衣服', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/0f360be9-5c70-463d-b881-1e12655268a9.jpg');
INSERT INTO `t_shopcart` VALUES ('142', '41', '1', '10', '养生食谱搭配', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/service_img/e2a91d99-48f5-4173-bc53-bec533842e0c.jpg');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '小明', '123456', '男', '15755023843', '18', '安徽省滁州市长乐小区', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/userImage/797d49f7-aace-4c54-b525-0589eb351c43.jpg');
INSERT INTO `t_user` VALUES ('28', '赵大伟', '123456', null, null, null, '安徽', null);
INSERT INTO `t_user` VALUES ('29', '张大爷', '123456', null, null, null, '安徽省滁州市长乐小区', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/userImage/af8cd86d-ab7b-4de4-8b56-d4a302cb1502.jpg');
INSERT INTO `t_user` VALUES ('30', '陈大爷', '123456', null, null, null, '安徽省滁州市滁州学院', 'http://134.175.107.153:8080/eldercare-0.0.1-SNAPSHOT/upload/userImage/d05eaeaa-7feb-4509-bb37-1f754199f8b1.jpg');
