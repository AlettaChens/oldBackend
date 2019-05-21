/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50514
Source Host           : localhost:3306
Source Database       : old

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2019-02-25 19:55:53
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', '小陈', '123456');
INSERT INTO `t_admin` VALUES ('2', '小苏苏', '123456');
INSERT INTO `t_admin` VALUES ('3', '陈苏', '123456');
INSERT INTO `t_admin` VALUES ('4', '1', '1');
INSERT INTO `t_admin` VALUES ('5', '2', '2');
INSERT INTO `t_admin` VALUES ('6', '1', '1');
INSERT INTO `t_admin` VALUES ('7', '苏苏苏', '123456');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('2', '1', '11', '小明', '10000', '机器人', 'localhost:8080/upload/service_img/3fec8647-7d2b-4c34-8a62-c09e4d918d37.png', '日本', '15755023843', '完成', '2018-11-06 21:32:57');
INSERT INTO `t_order` VALUES ('3', '1', '41', '小明', '10000', '小猪猪', 'localhost:8080/upload/service_img/46996311-b97c-4bf1-bb51-e9b8f1a14c4c.png', '日本', '15755023843', '完成', '2018-11-06 21:55:51');
INSERT INTO `t_order` VALUES ('4', '2', '11', '小强', '10000', '机器人', 'localhost:8080/upload/service_img/3fec8647-7d2b-4c34-8a62-c09e4d918d37.png', '韩国', '15755023843', '未完成', '2018-11-07 09:28:47');
INSERT INTO `t_order` VALUES ('6', '4', '4', '小慧', '10000', '机器人', 'localhost:8080/upload/service_img/1bc49628-91d9-4e48-bbb9-18f1db1658dc.png', '菲律宾', '15755023843', '未完成', '2018-11-07 09:29:00');
INSERT INTO `t_order` VALUES ('7', '5', '4', '不知', '10000', '机器人', 'localhost:8080/upload/service_img/1bc49628-91d9-4e48-bbb9-18f1db1658dc.png', null, null, '完成', '2018-11-07 09:29:06');
INSERT INTO `t_order` VALUES ('9', '7', '4', '祟拜你吧', '10000', '机器人', 'localhost:8080/upload/service_img/1bc49628-91d9-4e48-bbb9-18f1db1658dc.png', null, null, '未完成', '2018-11-07 09:29:12');
INSERT INTO `t_order` VALUES ('11', '9', '8', '可以的', '10000', '机器人', 'localhost:8080/upload/service_img/9a7a0ed2-c3f2-4add-a04f-904b6af48194.png', null, null, '未完成', '2018-11-07 09:29:19');
INSERT INTO `t_order` VALUES ('12', '9', '11', '可以的', '10000', '机器人', 'localhost:8080/upload/service_img/3fec8647-7d2b-4c34-8a62-c09e4d918d37.png', null, null, '未完成', '2018-11-07 09:29:22');

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_service
-- ----------------------------
INSERT INTO `t_service` VALUES ('1', '机器人', '10000', 'localhost:8080/upload/service_img/16cebfde-ac34-4a98-aab3-7f6ad3a311e2.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('4', '机器人', '10000', 'localhost:8080/upload/service_img/1bc49628-91d9-4e48-bbb9-18f1db1658dc.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('5', '机器人', '10000', 'localhost:8080/upload/service_img/cc4c7ea4-a149-48e6-b9ba-4eac5049fb25.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('6', '机器人', '10000', 'localhost:8080/upload/service_img/661181de-1067-4036-bb6c-f0156f0baa07.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('7', '机器人', '10000', 'localhost:8080/upload/service_img/73cc3bb3-0f0e-4dd4-b88f-7d6b2728facf.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('8', '机器人', '10000', 'localhost:8080/upload/service_img/9a7a0ed2-c3f2-4add-a04f-904b6af48194.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('9', '机器人', '10000', 'localhost:8080/upload/service_img/ee190c7b-6b4f-424c-9b09-fa4a011082fe.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('10', '机器人', '10000', 'localhost:8080/upload/service_img/e71ad542-f1ab-486c-8bc0-8d95c883311c.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('11', '机器人', '10000', 'localhost:8080/upload/service_img/3fec8647-7d2b-4c34-8a62-c09e4d918d37.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('12', '机器人', '10000', 'localhost:8080/upload/service_img/8be00e8c-daa0-4c2e-b1ae-a091d92c3897.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('13', '机器人', '10000', 'localhost:8080/upload/service_img/91de1c2f-686b-44e8-9c82-64c24ec6461f.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('14', '机器人', '10000', 'localhost:8080/upload/service_img/d01470c6-1ec5-4d3b-8368-5b6232d64b84.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('15', '机器人', '10000', 'localhost:8080/upload/service_img/6368d040-a7c2-49fe-bf28-ac7fe028285f.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('16', '机器人', '10000', 'localhost:8080/upload/service_img/0deb1a6d-c443-40c1-bce2-cd3d1bfcb456.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('17', '机器人', '10000', 'localhost:8080/upload/service_img/cae184ed-050b-4541-8f72-0a34149ad115.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('18', '机器人', '10000', 'localhost:8080/upload/service_img/3c484868-6aac-4662-842a-ac5ec018de20.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('19', '机器人', '10000', 'localhost:8080/upload/service_img/44432935-7d52-477c-8857-b55fa8c707d0.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('20', '机器人', '10000', 'localhost:8080/upload/service_img/f1853c8d-592e-4f4d-86c6-a953d3c0c010.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('21', '机器人', '10000', 'localhost:8080/upload/service_img/5876130f-b6da-4b61-be3a-290039435240.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('22', '机器人', '10000', 'localhost:8080/upload/service_img/70e7ce37-71cc-4f9a-8938-333f0dde8710.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('23', '机器人', '10000', 'localhost:8080/upload/service_img/7a331d2e-05e3-460b-a021-765ee509a284.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('24', '机器人', '10000', 'localhost:8080/upload/service_img/e78164ca-a175-47a2-a66b-a9c84bdc27a3.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('25', '机器人', '10000', 'localhost:8080/upload/service_img/11958f5d-2855-4eae-9985-67746035c63b.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('26', '机器人', '10000', 'localhost:8080/upload/service_img/c7ab71f5-cfc0-4369-8030-ae24fa1922c8.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('27', '机器人', '10000', 'localhost:8080/upload/service_img/96345e96-6165-4143-92e6-8828a3259350.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('28', '机器人', '10000', 'localhost:8080/upload/service_img/ae582d6e-5b33-42df-862c-96cbf7b3aa4e.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('29', '机器人', '10000', 'localhost:8080/upload/service_img/859206b4-3b72-4d49-abf7-df1ce61a6e36.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('30', '机器人', '10000', 'localhost:8080/upload/service_img/c6f4bb59-00de-4b33-a5f9-38a043cf613f.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('31', '机器人', '10000', 'localhost:8080/upload/service_img/b77e15f5-ddbc-4595-bfe7-64624ddf4c71.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('32', '机器人', '10000', 'localhost:8080/upload/service_img/d67302f5-2854-4c3a-856c-d89f980507c0.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('33', '机器人', '10000', 'localhost:8080/upload/service_img/fdf2d200-f57e-4f86-9d27-bd422a722069.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('34', '机器人', '10000', 'localhost:8080/upload/service_img/c7e802fc-2828-439d-83aa-7d4293295ada.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('35', '机器人', '10000', 'localhost:8080/upload/service_img/63626bcb-f524-4649-8b23-393ee5436aac.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('36', '机器人', '10000', 'localhost:8080/upload/service_img/01115d05-1a4e-4520-bd0b-88bb2e672b50.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('37', '机器人', '10000', 'localhost:8080/upload/service_img/ad32049a-e5f4-4e2b-9832-c9a3156f678f.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('38', '机器人', '10000', 'localhost:8080/upload/service_img/f84095dc-ac4f-4a8a-ab19-3157dd5fe5de.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('39', '机器人', '10000', 'localhost:8080/upload/service_img/d1c09b6d-e491-4057-9c3d-99c053a5b93e.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('40', '机器人', '10000', 'localhost:8080/upload/service_img/0b156531-17ac-4710-ad03-2447cd6ce945.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('41', '小猪猪', '10000', 'localhost:8080/upload/service_img/46996311-b97c-4bf1-bb51-e9b8f1a14c4c.png', '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('42', '语音机器人', '120000', 'localhost:8080/upload/service_img/6914d688-5299-44a7-82bd-71ef39f5972a.pdf', 'good', '热门', '机器人');
INSERT INTO `t_service` VALUES ('47', '除湿机', '5000', 'blob:http://localhost:8090/40a7b012-9504-4e03-9c10-8ea19f77db74', '除湿', '非热门', '除湿');
INSERT INTO `t_service` VALUES ('48', '扫地机器人', '10000', 'blob:http://localhost:8090/b6a9fcb2-52f8-4b25-9a47-71b1c021f17e', '扫地', '热门', '扫地');
INSERT INTO `t_service` VALUES ('49', '11', '11', 'localhost:8080/upload/service_img/38f87a74-8029-4838-b7d5-940e8f0597d5.png', '11', '非热门', '11');
INSERT INTO `t_service` VALUES ('51', '机器人', '10000', null, '机器人', '热门', '机器人');
INSERT INTO `t_service` VALUES ('52', '机器人', '10000', null, '机器人', '热门', '机器人');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shopcart
-- ----------------------------
INSERT INTO `t_shopcart` VALUES ('1', '1', '1', '10000', '机器人', 'localhost:8080/upload/service_img/16cebfde-ac34-4a98-aab3-7f6ad3a311e2.png');

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
  `image_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '小明', '123456', '男', '15755023843', '18', '日本', 'localhost:8080//upload/userimage/1a21725c-d1b9-4864-82dc-4b110d974a12.sql');
INSERT INTO `t_user` VALUES ('2', '小强', '123456', '男', '15755023843', '22', '韩国', null);
INSERT INTO `t_user` VALUES ('3', '小刚', '123456', '男', '15755023843', '33', '美国', null);
INSERT INTO `t_user` VALUES ('4', '小慧', '123456', '女', '15755023843', '11', '菲律宾', null);
INSERT INTO `t_user` VALUES ('5', '不知', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('6', '或许吧', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('7', '祟拜你吧', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('8', '随便吧', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('9', '可以的', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('10', '知道不', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('11', '程序员', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('12', '填数据', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('13', '唐僧1号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('14', '唐僧2号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('15', '唐僧3号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('16', '唐僧4号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('17', '猪猪4号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('18', '猪猪3号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('19', '猪猪2号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('20', '猪猪1号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('21', '猪猪9号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('22', '闪电侠1号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('23', '闪电侠12号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('24', '闪电侠123号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('25', '闪电侠1234号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('26', '闪电侠12345号', '123456', null, null, null, null, null);
INSERT INTO `t_user` VALUES ('27', '小醒', '123456', null, null, null, null, null);
