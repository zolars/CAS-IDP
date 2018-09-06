/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-09-06 10:29:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assessment_setting
-- ----------------------------
DROP TABLE IF EXISTS `assessment_setting`;
CREATE TABLE `assessment_setting` (
  `aid` int(255) NOT NULL AUTO_INCREMENT,
  `redyellow` int(11) DEFAULT NULL,
  `yellowgreen` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of assessment_setting
-- ----------------------------
INSERT INTO `assessment_setting` VALUES ('1', '90', '60');

-- ----------------------------
-- Table structure for assess_record
-- ----------------------------
DROP TABLE IF EXISTS `assess_record`;
CREATE TABLE `assess_record` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `cbid` int(11) DEFAULT NULL,
  `degree` int(11) DEFAULT NULL,
  `powernum` int(11) DEFAULT NULL,
  `tempreturenum` int(11) DEFAULT NULL,
  `wetnum` int(11) DEFAULT NULL,
  `devicenum` int(11) DEFAULT NULL,
  `apowernum` int(11) DEFAULT NULL,
  `atempreturenum` int(11) DEFAULT NULL,
  `awetnum` int(11) DEFAULT NULL,
  `adevicenum` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of assess_record
-- ----------------------------

-- ----------------------------
-- Table structure for capture_setting
-- ----------------------------
DROP TABLE IF EXISTS `capture_setting`;
CREATE TABLE `capture_setting` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port1` int(255) DEFAULT NULL,
  `port2` int(255) DEFAULT NULL,
  `onlineinterval` int(11) DEFAULT NULL,
  `thansentinterval` int(11) DEFAULT NULL,
  `uploadinterval` int(11) DEFAULT NULL,
  `did` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of capture_setting
-- ----------------------------
INSERT INTO `capture_setting` VALUES ('1', '192.168.1.240', '502', '6000', '5', '30', '60', '1');

-- ----------------------------
-- Table structure for city_bank
-- ----------------------------
DROP TABLE IF EXISTS `city_bank`;
CREATE TABLE `city_bank` (
  `cbid` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cbname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `compRoom` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of city_bank
-- ----------------------------
INSERT INTO `city_bank` VALUES ('1001', '台湾分行', '1，2');
INSERT INTO `city_bank` VALUES ('1401', '济南分行', '1');
INSERT INTO `city_bank` VALUES ('1501', '郑州分行', '1');
INSERT INTO `city_bank` VALUES ('2001', '石家庄分行', '1，2');
INSERT INTO `city_bank` VALUES ('2002', '廊坊分行', '4');
INSERT INTO `city_bank` VALUES ('2003', '秦皇岛分行', '5');
INSERT INTO `city_bank` VALUES ('3001', '太原分行', '1');
INSERT INTO `city_bank` VALUES ('3002', '大同分行', '2');
INSERT INTO `city_bank` VALUES ('3003', '朔州分行 \r\n朔州分行', '1，2');

-- ----------------------------
-- Table structure for computerroom
-- ----------------------------
DROP TABLE IF EXISTS `computerroom`;
CREATE TABLE `computerroom` (
  `rid` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `temprature_main` float(255,0) DEFAULT NULL,
  `temprature_support` float(255,0) DEFAULT NULL,
  `temprature_assist` float(255,0) DEFAULT NULL,
  `humidity_main` float(255,0) DEFAULT NULL,
  `humidity_support` float(255,0) DEFAULT NULL,
  `humidity_assist` float(255,0) DEFAULT NULL,
  `upsset` varchar(255) DEFAULT NULL,
  `didset` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of computerroom
-- ----------------------------
INSERT INTO `computerroom` VALUES ('1', '1号机房', null, null, null, null, null, null, null, '1,2,3');
INSERT INTO `computerroom` VALUES ('2', '2号机房', null, null, null, null, null, null, null, '4');
INSERT INTO `computerroom` VALUES ('3', '3号机房', null, null, null, null, null, null, null, null);
INSERT INTO `computerroom` VALUES ('4', '4号机房', null, null, null, null, null, null, null, null);
INSERT INTO `computerroom` VALUES ('5', '5号机房', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
  `did` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `devicetype` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `serialno` varchar(255) DEFAULT NULL,
  `IPaddress` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isSMS` int(11) DEFAULT NULL,
  `isAlart` int(11) DEFAULT NULL,
  `isPlartform` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of devices
-- ----------------------------
INSERT INTO `devices` VALUES ('1', 'IDP1', '以太网', 'IDP', 'QFEF221321', '192.168.1.240', '502', '242431', '1', '1', '0');
INSERT INTO `devices` VALUES ('2', 'ups1', 'R5485', 'ups', '141243', '192.168.0.1', '12', '', '0', '0', '0');
INSERT INTO `devices` VALUES ('3', 'ups2', 'RS232', 'ups', '12312111', '190.0.0.1', '21', '', '0', '0', '0');

-- ----------------------------
-- Table structure for devices_threshold
-- ----------------------------
DROP TABLE IF EXISTS `devices_threshold`;
CREATE TABLE `devices_threshold` (
  `dtid` int(11) NOT NULL,
  `did` varchar(255) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `standardval` float(255,2) DEFAULT NULL,
  `cellval` float(255,2) DEFAULT NULL,
  `floorval` float(255,2) DEFAULT NULL,
  `isMark` int(255) DEFAULT NULL,
  `alarmcontent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`dtid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of devices_threshold
-- ----------------------------
INSERT INTO `devices_threshold` VALUES ('2', '1', 'IDP', 'U1', 'v', '220.00', '240.00', '200.00', '1', 'U1');

-- ----------------------------
-- Table structure for device_alarm_user
-- ----------------------------
DROP TABLE IF EXISTS `device_alarm_user`;
CREATE TABLE `device_alarm_user` (
  `id` varchar(255) NOT NULL,
  `did` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of device_alarm_user
-- ----------------------------
INSERT INTO `device_alarm_user` VALUES ('1', '1', '1', '2018-08-07 16:04:07', '2018-08-24 16:04:11');
INSERT INTO `device_alarm_user` VALUES ('2', '1', '2', '2018-08-07 16:04:07', '2018-08-24 16:04:11');
INSERT INTO `device_alarm_user` VALUES ('3', '1', '1', '2018-08-01 00:00:00', '2018-09-10 00:00:00');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(255) NOT NULL,
  `item` varchar(255) DEFAULT '',
  `coefficient` int(11) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', 'U1', '1000', 'UPS_A总输入A相电压');
INSERT INTO `dictionary` VALUES ('2', 'U2', '1000', 'UPS_A总输入B相电压');
INSERT INTO `dictionary` VALUES ('3', 'U3', '1000', 'UPS_A总输入C相电压');
INSERT INTO `dictionary` VALUES ('4', 'I1', '1', 'UPS_A总输入A相电流');
INSERT INTO `dictionary` VALUES ('5', 'I2', '1', 'UPS_A总输入B相电流');
INSERT INTO `dictionary` VALUES ('6', 'I3', '1', 'UPS_A总输入C相电流');
INSERT INTO `dictionary` VALUES ('7', 'P1', '1000', 'UPS_A总输入A相有功功率');
INSERT INTO `dictionary` VALUES ('8', 'P2', '1000', 'UPS_A总输入B相有功功率');
INSERT INTO `dictionary` VALUES ('9', 'P3', '1000', 'UPS_A总输入C相有功功率');
INSERT INTO `dictionary` VALUES ('10', 'Q1', '1000', 'UPS_A总输入A相无功功率');
INSERT INTO `dictionary` VALUES ('11', 'Q2', '1000', 'UPS_A总输入B相无功功率');
INSERT INTO `dictionary` VALUES ('12', 'Q3', '1000', 'UPS_A总输入C相无功功率');
INSERT INTO `dictionary` VALUES ('13', 'S1', '1000', 'UPS_A总输入A相视在功率');
INSERT INTO `dictionary` VALUES ('14', 'S2', '1000', 'UPS_A总输入B相视在功率');
INSERT INTO `dictionary` VALUES ('15', 'S3', '1000', 'UPS_A总输入C相视在功率');
INSERT INTO `dictionary` VALUES ('16', 'Psum', '1000', 'UPS_A总输入总有功功率');
INSERT INTO `dictionary` VALUES ('17', 'Qsum', '1000', 'UPS_A总输入总无功功率');
INSERT INTO `dictionary` VALUES ('18', 'Ssum', '1000', 'UPS_A总输入总视在功率');
INSERT INTO `dictionary` VALUES ('19', 'PF1', '1', 'UPS_A总输入A相功率因数');
INSERT INTO `dictionary` VALUES ('20', 'PF2', '1', 'UPS_A总输入B相功率因数');
INSERT INTO `dictionary` VALUES ('21', 'PF3', '1', 'UPS_A总输入C相功率因数');
INSERT INTO `dictionary` VALUES ('22', 'PFsum', '1', 'UPS_A总输入三相功率因数');
INSERT INTO `dictionary` VALUES ('23', 'Uunb', '1', 'UPS_A总输入三相电压负序不平衡度');
INSERT INTO `dictionary` VALUES ('24', 'Uunb', '1', 'UPS_A总输入三相电压零序不平衡度');
INSERT INTO `dictionary` VALUES ('25', 'Aunb', '1', 'UPS_A总输入三相电流负序不平衡度');
INSERT INTO `dictionary` VALUES ('26', 'Aunb', '1', 'UPS_A总输入三相电流零序不平衡度');
INSERT INTO `dictionary` VALUES ('27', 'U1xb_1', '1000', 'UPS_A总输入A相电压谐波1次');
INSERT INTO `dictionary` VALUES ('28', 'U1xb_2', '1', 'UPS_A总输入A相电压谐波2次');
INSERT INTO `dictionary` VALUES ('29', 'U1xb_3', '1', 'UPS_A总输入A相电压谐波3次');
INSERT INTO `dictionary` VALUES ('30', 'U1xb_4', '1', 'UPS_A总输入A相电压谐波4次');
INSERT INTO `dictionary` VALUES ('31', 'U1xb_5', '1', 'UPS_A总输入A相电压谐波5次');
INSERT INTO `dictionary` VALUES ('32', 'U1xb_6', '1', 'UPS_A总输入A相电压谐波6次');
INSERT INTO `dictionary` VALUES ('33', 'U1xb_7', '1', 'UPS_A总输入A相电压谐波7次');
INSERT INTO `dictionary` VALUES ('34', 'U1xb_8', '1', 'UPS_A总输入A相电压谐波8次');
INSERT INTO `dictionary` VALUES ('35', 'U1xb_9', '1', 'UPS_A总输入A相电压谐波9次');
INSERT INTO `dictionary` VALUES ('36', 'U1xb_10', '1', 'UPS_A总输入A相电压谐波10次');
INSERT INTO `dictionary` VALUES ('37', 'U1xb_11', '1', 'UPS_A总输入A相电压谐波11次');
INSERT INTO `dictionary` VALUES ('38', 'U1xb_12', '1', 'UPS_A总输入A相电压谐波12次');
INSERT INTO `dictionary` VALUES ('39', 'U1xb_13', '1', 'UPS_A总输入A相电压谐波13次');
INSERT INTO `dictionary` VALUES ('40', 'U1xb_14', '1', 'UPS_A总输入A相电压谐波14次');
INSERT INTO `dictionary` VALUES ('41', 'U1xb_15', '1', 'UPS_A总输入A相电压谐波15次');
INSERT INTO `dictionary` VALUES ('42', 'U1xb_16', '1', 'UPS_A总输入A相电压谐波16次');
INSERT INTO `dictionary` VALUES ('43', 'U1xb_17', '1', 'UPS_A总输入A相电压谐波17次');
INSERT INTO `dictionary` VALUES ('44', 'U1xb_18', '1', 'UPS_A总输入A相电压谐波18次');
INSERT INTO `dictionary` VALUES ('45', 'U1xb_19', '1', 'UPS_A总输入A相电压谐波19次');
INSERT INTO `dictionary` VALUES ('46', 'U1xb_20', '1', 'UPS_A总输入A相电压谐波20次');
INSERT INTO `dictionary` VALUES ('47', 'U1xb_21', '1', 'UPS_A总输入A相电压谐波21次');
INSERT INTO `dictionary` VALUES ('48', 'U1xb_22', '1', 'UPS_A总输入A相电压谐波22次');
INSERT INTO `dictionary` VALUES ('49', 'U1xb_23', '1', 'UPS_A总输入A相电压谐波23次');
INSERT INTO `dictionary` VALUES ('50', 'U1xb_24', '1', 'UPS_A总输入A相电压谐波24次');
INSERT INTO `dictionary` VALUES ('51', 'U1xb_25', '1', 'UPS_A总输入A相电压谐波25次');
INSERT INTO `dictionary` VALUES ('52', 'U1xb_26', '1', 'UPS_A总输入A相电压谐波26次');
INSERT INTO `dictionary` VALUES ('53', 'U1xb_27', '1', 'UPS_A总输入A相电压谐波27次');
INSERT INTO `dictionary` VALUES ('54', 'U1xb_28', '1', 'UPS_A总输入A相电压谐波28次');
INSERT INTO `dictionary` VALUES ('55', 'U1xb_29', '1', 'UPS_A总输入A相电压谐波29次');
INSERT INTO `dictionary` VALUES ('56', 'U1xb_30', '1', 'UPS_A总输入A相电压谐波30次');
INSERT INTO `dictionary` VALUES ('57', 'U1xb_31', '1', 'UPS_A总输入A相电压谐波31次');
INSERT INTO `dictionary` VALUES ('58', 'U1xb_32', '1', 'UPS_A总输入A相电压谐波32次');
INSERT INTO `dictionary` VALUES ('59', 'U1xb_33', '1', 'UPS_A总输入A相电压谐波33次');
INSERT INTO `dictionary` VALUES ('60', 'U1xb_34', '1', 'UPS_A总输入A相电压谐波34次');
INSERT INTO `dictionary` VALUES ('61', 'U1xb_35', '1', 'UPS_A总输入A相电压谐波35次');
INSERT INTO `dictionary` VALUES ('62', 'U1xb_36', '1', 'UPS_A总输入A相电压谐波36次');
INSERT INTO `dictionary` VALUES ('63', 'U1xb_37', '1', 'UPS_A总输入A相电压谐波37次');
INSERT INTO `dictionary` VALUES ('64', 'U1xb_38', '1', 'UPS_A总输入A相电压谐波38次');
INSERT INTO `dictionary` VALUES ('65', 'U1xb_39', '1', 'UPS_A总输入A相电压谐波39次');
INSERT INTO `dictionary` VALUES ('66', 'U1xb_40', '1', 'UPS_A总输入A相电压谐波40次');
INSERT INTO `dictionary` VALUES ('67', 'U1xb_41', '1', 'UPS_A总输入A相电压谐波41次');
INSERT INTO `dictionary` VALUES ('68', 'U1xb_42', '1', 'UPS_A总输入A相电压谐波42次');
INSERT INTO `dictionary` VALUES ('69', 'U1xb_43', '1', 'UPS_A总输入A相电压谐波43次');
INSERT INTO `dictionary` VALUES ('70', 'U1xb_44', '1', 'UPS_A总输入A相电压谐波44次');
INSERT INTO `dictionary` VALUES ('71', 'U1xb_45', '1', 'UPS_A总输入A相电压谐波45次');
INSERT INTO `dictionary` VALUES ('72', 'U1xb_46', '1', 'UPS_A总输入A相电压谐波46次');
INSERT INTO `dictionary` VALUES ('73', 'U1xb_47', '1', 'UPS_A总输入A相电压谐波47次');
INSERT INTO `dictionary` VALUES ('74', 'U1xb_48', '1', 'UPS_A总输入A相电压谐波48次');
INSERT INTO `dictionary` VALUES ('75', 'U1xb_49', '1', 'UPS_A总输入A相电压谐波49次');
INSERT INTO `dictionary` VALUES ('76', 'U1xb_50', '1', 'UPS_A总输入A相电压谐波50次');
INSERT INTO `dictionary` VALUES ('77', 'U2xb_1', '1000', 'UPS_A总输入B相电压谐波1次');
INSERT INTO `dictionary` VALUES ('78', 'U2xb_2', '1', 'UPS_A总输入B相电压谐波2次');
INSERT INTO `dictionary` VALUES ('79', 'U2xb_3', '1', 'UPS_A总输入B相电压谐波3次');
INSERT INTO `dictionary` VALUES ('80', 'U2xb_4', '1', 'UPS_A总输入B相电压谐波4次');
INSERT INTO `dictionary` VALUES ('81', 'U2xb_5', '1', 'UPS_A总输入B相电压谐波5次');
INSERT INTO `dictionary` VALUES ('82', 'U2xb_6', '1', 'UPS_A总输入B相电压谐波6次');
INSERT INTO `dictionary` VALUES ('83', 'U2xb_7', '1', 'UPS_A总输入B相电压谐波7次');
INSERT INTO `dictionary` VALUES ('84', 'U2xb_8', '1', 'UPS_A总输入B相电压谐波8次');
INSERT INTO `dictionary` VALUES ('85', 'U2xb_9', '1', 'UPS_A总输入B相电压谐波9次');
INSERT INTO `dictionary` VALUES ('86', 'U2xb_10', '1', 'UPS_A总输入B相电压谐波10次');
INSERT INTO `dictionary` VALUES ('87', 'U2xb_11', '1', 'UPS_A总输入B相电压谐波11次');
INSERT INTO `dictionary` VALUES ('88', 'U2xb_12', '1', 'UPS_A总输入B相电压谐波12次');
INSERT INTO `dictionary` VALUES ('89', 'U2xb_13', '1', 'UPS_A总输入B相电压谐波13次');
INSERT INTO `dictionary` VALUES ('90', 'U2xb_14', '1', 'UPS_A总输入B相电压谐波14次');
INSERT INTO `dictionary` VALUES ('91', 'U2xb_15', '1', 'UPS_A总输入B相电压谐波15次');
INSERT INTO `dictionary` VALUES ('92', 'U2xb_16', '1', 'UPS_A总输入B相电压谐波16次');
INSERT INTO `dictionary` VALUES ('93', 'U2xb_17', '1', 'UPS_A总输入B相电压谐波17次');
INSERT INTO `dictionary` VALUES ('94', 'U2xb_18', '1', 'UPS_A总输入B相电压谐波18次');
INSERT INTO `dictionary` VALUES ('95', 'U2xb_19', '1', 'UPS_A总输入B相电压谐波19次');
INSERT INTO `dictionary` VALUES ('96', 'U2xb_20', '1', 'UPS_A总输入B相电压谐波20次');
INSERT INTO `dictionary` VALUES ('97', 'U2xb_21', '1', 'UPS_A总输入B相电压谐波21次');
INSERT INTO `dictionary` VALUES ('98', 'U2xb_22', '1', 'UPS_A总输入B相电压谐波22次');
INSERT INTO `dictionary` VALUES ('99', 'U2xb_23', '1', 'UPS_A总输入B相电压谐波23次');
INSERT INTO `dictionary` VALUES ('100', 'U2xb_24', '1', 'UPS_A总输入B相电压谐波24次');
INSERT INTO `dictionary` VALUES ('101', 'U2xb_25', '1', 'UPS_A总输入B相电压谐波25次');
INSERT INTO `dictionary` VALUES ('102', 'U2xb_26', '1', 'UPS_A总输入B相电压谐波26次');
INSERT INTO `dictionary` VALUES ('103', 'U2xb_27', '1', 'UPS_A总输入B相电压谐波27次');
INSERT INTO `dictionary` VALUES ('104', 'U2xb_28', '1', 'UPS_A总输入B相电压谐波28次');
INSERT INTO `dictionary` VALUES ('105', 'U2xb_29', '1', 'UPS_A总输入B相电压谐波29次');
INSERT INTO `dictionary` VALUES ('106', 'U2xb_30', '1', 'UPS_A总输入B相电压谐波30次');
INSERT INTO `dictionary` VALUES ('107', 'U2xb_31', '1', 'UPS_A总输入B相电压谐波31次');
INSERT INTO `dictionary` VALUES ('108', 'U2xb_32', '1', 'UPS_A总输入B相电压谐波32次');
INSERT INTO `dictionary` VALUES ('109', 'U2xb_33', '1', 'UPS_A总输入B相电压谐波33次');
INSERT INTO `dictionary` VALUES ('110', 'U2xb_34', '1', 'UPS_A总输入B相电压谐波34次');
INSERT INTO `dictionary` VALUES ('111', 'U2xb_35', '1', 'UPS_A总输入B相电压谐波35次');
INSERT INTO `dictionary` VALUES ('112', 'U2xb_36', '1', 'UPS_A总输入B相电压谐波36次');
INSERT INTO `dictionary` VALUES ('113', 'U2xb_37', '1', 'UPS_A总输入B相电压谐波37次');
INSERT INTO `dictionary` VALUES ('114', 'U2xb_38', '1', 'UPS_A总输入B相电压谐波38次');
INSERT INTO `dictionary` VALUES ('115', 'U2xb_39', '1', 'UPS_A总输入B相电压谐波39次');
INSERT INTO `dictionary` VALUES ('116', 'U2xb_40', '1', 'UPS_A总输入B相电压谐波40次');
INSERT INTO `dictionary` VALUES ('117', 'U2xb_41', '1', 'UPS_A总输入B相电压谐波41次');
INSERT INTO `dictionary` VALUES ('118', 'U2xb_42', '1', 'UPS_A总输入B相电压谐波42次');
INSERT INTO `dictionary` VALUES ('119', 'U2xb_43', '1', 'UPS_A总输入B相电压谐波43次');
INSERT INTO `dictionary` VALUES ('120', 'U2xb_44', '1', 'UPS_A总输入B相电压谐波44次');
INSERT INTO `dictionary` VALUES ('121', 'U2xb_45', '1', 'UPS_A总输入B相电压谐波45次');
INSERT INTO `dictionary` VALUES ('122', 'U2xb_46', '1', 'UPS_A总输入B相电压谐波46次');
INSERT INTO `dictionary` VALUES ('123', 'U2xb_47', '1', 'UPS_A总输入B相电压谐波47次');
INSERT INTO `dictionary` VALUES ('124', 'U2xb_48', '1', 'UPS_A总输入B相电压谐波48次');
INSERT INTO `dictionary` VALUES ('125', 'U2xb_49', '1', 'UPS_A总输入B相电压谐波49次');
INSERT INTO `dictionary` VALUES ('126', 'U2xb_50', '1', 'UPS_A总输入B相电压谐波50次');
INSERT INTO `dictionary` VALUES ('127', 'U3xb_1', '1000', 'UPS_A总输入C相电压谐波1次');
INSERT INTO `dictionary` VALUES ('128', 'U3xb_2', '1', 'UPS_A总输入C相电压谐波2次');
INSERT INTO `dictionary` VALUES ('129', 'U3xb_3', '1', 'UPS_A总输入C相电压谐波3次');
INSERT INTO `dictionary` VALUES ('130', 'U3xb_4', '1', 'UPS_A总输入C相电压谐波4次');
INSERT INTO `dictionary` VALUES ('131', 'U3xb_5', '1', 'UPS_A总输入C相电压谐波5次');
INSERT INTO `dictionary` VALUES ('132', 'U3xb_6', '1', 'UPS_A总输入C相电压谐波6次');
INSERT INTO `dictionary` VALUES ('133', 'U3xb_7', '1', 'UPS_A总输入C相电压谐波7次');
INSERT INTO `dictionary` VALUES ('134', 'U3xb_8', '1', 'UPS_A总输入C相电压谐波8次');
INSERT INTO `dictionary` VALUES ('135', 'U3xb_9', '1', 'UPS_A总输入C相电压谐波9次');
INSERT INTO `dictionary` VALUES ('136', 'U3xb_10', '1', 'UPS_A总输入C相电压谐波10次');
INSERT INTO `dictionary` VALUES ('137', 'U3xb_11', '1', 'UPS_A总输入C相电压谐波11次');
INSERT INTO `dictionary` VALUES ('138', 'U3xb_12', '1', 'UPS_A总输入C相电压谐波12次');
INSERT INTO `dictionary` VALUES ('139', 'U3xb_13', '1', 'UPS_A总输入C相电压谐波13次');
INSERT INTO `dictionary` VALUES ('140', 'U3xb_14', '1', 'UPS_A总输入C相电压谐波14次');
INSERT INTO `dictionary` VALUES ('141', 'U3xb_15', '1', 'UPS_A总输入C相电压谐波15次');
INSERT INTO `dictionary` VALUES ('142', 'U3xb_16', '1', 'UPS_A总输入C相电压谐波16次');
INSERT INTO `dictionary` VALUES ('143', 'U3xb_17', '1', 'UPS_A总输入C相电压谐波17次');
INSERT INTO `dictionary` VALUES ('144', 'U3xb_18', '1', 'UPS_A总输入C相电压谐波18次');
INSERT INTO `dictionary` VALUES ('145', 'U3xb_19', '1', 'UPS_A总输入C相电压谐波19次');
INSERT INTO `dictionary` VALUES ('146', 'U3xb_20', '1', 'UPS_A总输入C相电压谐波20次');
INSERT INTO `dictionary` VALUES ('147', 'U3xb_21', '1', 'UPS_A总输入C相电压谐波21次');
INSERT INTO `dictionary` VALUES ('148', 'U3xb_22', '1', 'UPS_A总输入C相电压谐波22次');
INSERT INTO `dictionary` VALUES ('149', 'U3xb_23', '1', 'UPS_A总输入C相电压谐波23次');
INSERT INTO `dictionary` VALUES ('150', 'U3xb_24', '1', 'UPS_A总输入C相电压谐波24次');
INSERT INTO `dictionary` VALUES ('151', 'U3xb_25', '1', 'UPS_A总输入C相电压谐波25次');
INSERT INTO `dictionary` VALUES ('152', 'U3xb_26', '1', 'UPS_A总输入C相电压谐波26次');
INSERT INTO `dictionary` VALUES ('153', 'U3xb_27', '1', 'UPS_A总输入C相电压谐波27次');
INSERT INTO `dictionary` VALUES ('154', 'U3xb_28', '1', 'UPS_A总输入C相电压谐波28次');
INSERT INTO `dictionary` VALUES ('155', 'U3xb_29', '1', 'UPS_A总输入C相电压谐波29次');
INSERT INTO `dictionary` VALUES ('156', 'U3xb_30', '1', 'UPS_A总输入C相电压谐波30次');
INSERT INTO `dictionary` VALUES ('157', 'U3xb_31', '1', 'UPS_A总输入C相电压谐波31次');
INSERT INTO `dictionary` VALUES ('158', 'U3xb_32', '1', 'UPS_A总输入C相电压谐波32次');
INSERT INTO `dictionary` VALUES ('159', 'U3xb_33', '1', 'UPS_A总输入C相电压谐波33次');
INSERT INTO `dictionary` VALUES ('160', 'U3xb_34', '1', 'UPS_A总输入C相电压谐波34次');
INSERT INTO `dictionary` VALUES ('161', 'U3xb_35', '1', 'UPS_A总输入C相电压谐波35次');
INSERT INTO `dictionary` VALUES ('162', 'U3xb_36', '1', 'UPS_A总输入C相电压谐波36次');
INSERT INTO `dictionary` VALUES ('163', 'U3xb_37', '1', 'UPS_A总输入C相电压谐波37次');
INSERT INTO `dictionary` VALUES ('164', 'U3xb_38', '1', 'UPS_A总输入C相电压谐波38次');
INSERT INTO `dictionary` VALUES ('165', 'U3xb_39', '1', 'UPS_A总输入C相电压谐波39次');
INSERT INTO `dictionary` VALUES ('166', 'U3xb_40', '1', 'UPS_A总输入C相电压谐波40次');
INSERT INTO `dictionary` VALUES ('167', 'U3xb_41', '1', 'UPS_A总输入C相电压谐波41次');
INSERT INTO `dictionary` VALUES ('168', 'U3xb_42', '1', 'UPS_A总输入C相电压谐波42次');
INSERT INTO `dictionary` VALUES ('169', 'U3xb_43', '1', 'UPS_A总输入C相电压谐波43次');
INSERT INTO `dictionary` VALUES ('170', 'U3xb_44', '1', 'UPS_A总输入C相电压谐波44次');
INSERT INTO `dictionary` VALUES ('171', 'U3xb_45', '1', 'UPS_A总输入C相电压谐波45次');
INSERT INTO `dictionary` VALUES ('172', 'U3xb_46', '1', 'UPS_A总输入C相电压谐波46次');
INSERT INTO `dictionary` VALUES ('173', 'U3xb_47', '1', 'UPS_A总输入C相电压谐波47次');
INSERT INTO `dictionary` VALUES ('174', 'U3xb_48', '1', 'UPS_A总输入C相电压谐波48次');
INSERT INTO `dictionary` VALUES ('175', 'U3xb_49', '1', 'UPS_A总输入C相电压谐波49次');
INSERT INTO `dictionary` VALUES ('176', 'U3xb_50', '1', 'UPS_A总输入C相电压谐波50次');
INSERT INTO `dictionary` VALUES ('177', 'I1xb_1', '1', 'UPS_A总输入A相电流谐波1次');
INSERT INTO `dictionary` VALUES ('178', 'I1xb_2', '1', 'UPS_A总输入A相电流谐波2次');
INSERT INTO `dictionary` VALUES ('179', 'I1xb_3', '1', 'UPS_A总输入A相电流谐波3次');
INSERT INTO `dictionary` VALUES ('180', 'I1xb_4', '1', 'UPS_A总输入A相电流谐波4次');
INSERT INTO `dictionary` VALUES ('181', 'I1xb_5', '1', 'UPS_A总输入A相电流谐波5次');
INSERT INTO `dictionary` VALUES ('182', 'I1xb_6', '1', 'UPS_A总输入A相电流谐波6次');
INSERT INTO `dictionary` VALUES ('183', 'I1xb_7', '1', 'UPS_A总输入A相电流谐波7次');
INSERT INTO `dictionary` VALUES ('184', 'I1xb_8', '1', 'UPS_A总输入A相电流谐波8次');
INSERT INTO `dictionary` VALUES ('185', 'I1xb_9', '1', 'UPS_A总输入A相电流谐波9次');
INSERT INTO `dictionary` VALUES ('186', 'I1xb_10', '1', 'UPS_A总输入A相电流谐波10次');
INSERT INTO `dictionary` VALUES ('187', 'I1xb_11', '1', 'UPS_A总输入A相电流谐波11次');
INSERT INTO `dictionary` VALUES ('188', 'I1xb_12', '1', 'UPS_A总输入A相电流谐波12次');
INSERT INTO `dictionary` VALUES ('189', 'I1xb_13', '1', 'UPS_A总输入A相电流谐波13次');
INSERT INTO `dictionary` VALUES ('190', 'I1xb_14', '1', 'UPS_A总输入A相电流谐波14次');
INSERT INTO `dictionary` VALUES ('191', 'I1xb_15', '1', 'UPS_A总输入A相电流谐波15次');
INSERT INTO `dictionary` VALUES ('192', 'I1xb_16', '1', 'UPS_A总输入A相电流谐波16次');
INSERT INTO `dictionary` VALUES ('193', 'I1xb_17', '1', 'UPS_A总输入A相电流谐波17次');
INSERT INTO `dictionary` VALUES ('194', 'I1xb_18', '1', 'UPS_A总输入A相电流谐波18次');
INSERT INTO `dictionary` VALUES ('195', 'I1xb_19', '1', 'UPS_A总输入A相电流谐波19次');
INSERT INTO `dictionary` VALUES ('196', 'I1xb_20', '1', 'UPS_A总输入A相电流谐波20次');
INSERT INTO `dictionary` VALUES ('197', 'I1xb_21', '1', 'UPS_A总输入A相电流谐波21次');
INSERT INTO `dictionary` VALUES ('198', 'I1xb_22', '1', 'UPS_A总输入A相电流谐波22次');
INSERT INTO `dictionary` VALUES ('199', 'I1xb_23', '1', 'UPS_A总输入A相电流谐波23次');
INSERT INTO `dictionary` VALUES ('200', 'I1xb_24', '1', 'UPS_A总输入A相电流谐波24次');
INSERT INTO `dictionary` VALUES ('201', 'I1xb_25', '1', 'UPS_A总输入A相电流谐波25次');
INSERT INTO `dictionary` VALUES ('202', 'I1xb_26', '1', 'UPS_A总输入A相电流谐波26次');
INSERT INTO `dictionary` VALUES ('203', 'I1xb_27', '1', 'UPS_A总输入A相电流谐波27次');
INSERT INTO `dictionary` VALUES ('204', 'I1xb_28', '1', 'UPS_A总输入A相电流谐波28次');
INSERT INTO `dictionary` VALUES ('205', 'I1xb_29', '1', 'UPS_A总输入A相电流谐波29次');
INSERT INTO `dictionary` VALUES ('206', 'I1xb_30', '1', 'UPS_A总输入A相电流谐波30次');
INSERT INTO `dictionary` VALUES ('207', 'I1xb_31', '1', 'UPS_A总输入A相电流谐波31次');
INSERT INTO `dictionary` VALUES ('208', 'I1xb_32', '1', 'UPS_A总输入A相电流谐波32次');
INSERT INTO `dictionary` VALUES ('209', 'I1xb_33', '1', 'UPS_A总输入A相电流谐波33次');
INSERT INTO `dictionary` VALUES ('210', 'I1xb_34', '1', 'UPS_A总输入A相电流谐波34次');
INSERT INTO `dictionary` VALUES ('211', 'I1xb_35', '1', 'UPS_A总输入A相电流谐波35次');
INSERT INTO `dictionary` VALUES ('212', 'I1xb_36', '1', 'UPS_A总输入A相电流谐波36次');
INSERT INTO `dictionary` VALUES ('213', 'I1xb_37', '1', 'UPS_A总输入A相电流谐波37次');
INSERT INTO `dictionary` VALUES ('214', 'I1xb_38', '1', 'UPS_A总输入A相电流谐波38次');
INSERT INTO `dictionary` VALUES ('215', 'I1xb_39', '1', 'UPS_A总输入A相电流谐波39次');
INSERT INTO `dictionary` VALUES ('216', 'I1xb_40', '1', 'UPS_A总输入A相电流谐波40次');
INSERT INTO `dictionary` VALUES ('217', 'I1xb_41', '1', 'UPS_A总输入A相电流谐波41次');
INSERT INTO `dictionary` VALUES ('218', 'I1xb_42', '1', 'UPS_A总输入A相电流谐波42次');
INSERT INTO `dictionary` VALUES ('219', 'I1xb_43', '1', 'UPS_A总输入A相电流谐波43次');
INSERT INTO `dictionary` VALUES ('220', 'I1xb_44', '1', 'UPS_A总输入A相电流谐波44次');
INSERT INTO `dictionary` VALUES ('221', 'I1xb_45', '1', 'UPS_A总输入A相电流谐波45次');
INSERT INTO `dictionary` VALUES ('222', 'I1xb_46', '1', 'UPS_A总输入A相电流谐波46次');
INSERT INTO `dictionary` VALUES ('223', 'I1xb_47', '1', 'UPS_A总输入A相电流谐波47次');
INSERT INTO `dictionary` VALUES ('224', 'I1xb_48', '1', 'UPS_A总输入A相电流谐波48次');
INSERT INTO `dictionary` VALUES ('225', 'I1xb_49', '1', 'UPS_A总输入A相电流谐波49次');
INSERT INTO `dictionary` VALUES ('226', 'I1xb_50', '1', 'UPS_A总输入A相电流谐波50次');
INSERT INTO `dictionary` VALUES ('227', 'I2xb_1', '1', 'UPS_A总输入B相电流谐波1次');
INSERT INTO `dictionary` VALUES ('228', 'I2xb_2', '1', 'UPS_A总输入B相电流谐波2次');
INSERT INTO `dictionary` VALUES ('229', 'I2xb_3', '1', 'UPS_A总输入B相电流谐波3次');
INSERT INTO `dictionary` VALUES ('230', 'I2xb_4', '1', 'UPS_A总输入B相电流谐波4次');
INSERT INTO `dictionary` VALUES ('231', 'I2xb_5', '1', 'UPS_A总输入B相电流谐波5次');
INSERT INTO `dictionary` VALUES ('232', 'I2xb_6', '1', 'UPS_A总输入B相电流谐波6次');
INSERT INTO `dictionary` VALUES ('233', 'I2xb_7', '1', 'UPS_A总输入B相电流谐波7次');
INSERT INTO `dictionary` VALUES ('234', 'I2xb_8', '1', 'UPS_A总输入B相电流谐波8次');
INSERT INTO `dictionary` VALUES ('235', 'I2xb_9', '1', 'UPS_A总输入B相电流谐波9次');
INSERT INTO `dictionary` VALUES ('236', 'I2xb_10', '1', 'UPS_A总输入B相电流谐波10次');
INSERT INTO `dictionary` VALUES ('237', 'I2xb_11', '1', 'UPS_A总输入B相电流谐波11次');
INSERT INTO `dictionary` VALUES ('238', 'I2xb_12', '1', 'UPS_A总输入B相电流谐波12次');
INSERT INTO `dictionary` VALUES ('239', 'I2xb_13', '1', 'UPS_A总输入B相电流谐波13次');
INSERT INTO `dictionary` VALUES ('240', 'I2xb_14', '1', 'UPS_A总输入B相电流谐波14次');
INSERT INTO `dictionary` VALUES ('241', 'I2xb_15', '1', 'UPS_A总输入B相电流谐波15次');
INSERT INTO `dictionary` VALUES ('242', 'I2xb_16', '1', 'UPS_A总输入B相电流谐波16次');
INSERT INTO `dictionary` VALUES ('243', 'I2xb_17', '1', 'UPS_A总输入B相电流谐波17次');
INSERT INTO `dictionary` VALUES ('244', 'I2xb_18', '1', 'UPS_A总输入B相电流谐波18次');
INSERT INTO `dictionary` VALUES ('245', 'I2xb_19', '1', 'UPS_A总输入B相电流谐波19次');
INSERT INTO `dictionary` VALUES ('246', 'I2xb_20', '1', 'UPS_A总输入B相电流谐波20次');
INSERT INTO `dictionary` VALUES ('247', 'I2xb_21', '1', 'UPS_A总输入B相电流谐波21次');
INSERT INTO `dictionary` VALUES ('248', 'I2xb_22', '1', 'UPS_A总输入B相电流谐波22次');
INSERT INTO `dictionary` VALUES ('249', 'I2xb_23', '1', 'UPS_A总输入B相电流谐波23次');
INSERT INTO `dictionary` VALUES ('250', 'I2xb_24', '1', 'UPS_A总输入B相电流谐波24次');
INSERT INTO `dictionary` VALUES ('251', 'I2xb_25', '1', 'UPS_A总输入B相电流谐波25次');
INSERT INTO `dictionary` VALUES ('252', 'I2xb_26', '1', 'UPS_A总输入B相电流谐波26次');
INSERT INTO `dictionary` VALUES ('253', 'I2xb_27', '1', 'UPS_A总输入B相电流谐波27次');
INSERT INTO `dictionary` VALUES ('254', 'I2xb_28', '1', 'UPS_A总输入B相电流谐波28次');
INSERT INTO `dictionary` VALUES ('255', 'I2xb_29', '1', 'UPS_A总输入B相电流谐波29次');
INSERT INTO `dictionary` VALUES ('256', 'I2xb_30', '1', 'UPS_A总输入B相电流谐波30次');
INSERT INTO `dictionary` VALUES ('257', 'I2xb_31', '1', 'UPS_A总输入B相电流谐波31次');
INSERT INTO `dictionary` VALUES ('258', 'I2xb_32', '1', 'UPS_A总输入B相电流谐波32次');
INSERT INTO `dictionary` VALUES ('259', 'I2xb_33', '1', 'UPS_A总输入B相电流谐波33次');
INSERT INTO `dictionary` VALUES ('260', 'I2xb_34', '1', 'UPS_A总输入B相电流谐波34次');
INSERT INTO `dictionary` VALUES ('261', 'I2xb_35', '1', 'UPS_A总输入B相电流谐波35次');
INSERT INTO `dictionary` VALUES ('262', 'I2xb_36', '1', 'UPS_A总输入B相电流谐波36次');
INSERT INTO `dictionary` VALUES ('263', 'I2xb_37', '1', 'UPS_A总输入B相电流谐波37次');
INSERT INTO `dictionary` VALUES ('264', 'I2xb_38', '1', 'UPS_A总输入B相电流谐波38次');
INSERT INTO `dictionary` VALUES ('265', 'I2xb_39', '1', 'UPS_A总输入B相电流谐波39次');
INSERT INTO `dictionary` VALUES ('266', 'I2xb_40', '1', 'UPS_A总输入B相电流谐波40次');
INSERT INTO `dictionary` VALUES ('267', 'I2xb_41', '1', 'UPS_A总输入B相电流谐波41次');
INSERT INTO `dictionary` VALUES ('268', 'I2xb_42', '1', 'UPS_A总输入B相电流谐波42次');
INSERT INTO `dictionary` VALUES ('269', 'I2xb_43', '1', 'UPS_A总输入B相电流谐波43次');
INSERT INTO `dictionary` VALUES ('270', 'I2xb_44', '1', 'UPS_A总输入B相电流谐波44次');
INSERT INTO `dictionary` VALUES ('271', 'I2xb_45', '1', 'UPS_A总输入B相电流谐波45次');
INSERT INTO `dictionary` VALUES ('272', 'I2xb_46', '1', 'UPS_A总输入B相电流谐波46次');
INSERT INTO `dictionary` VALUES ('273', 'I2xb_47', '1', 'UPS_A总输入B相电流谐波47次');
INSERT INTO `dictionary` VALUES ('274', 'I2xb_48', '1', 'UPS_A总输入B相电流谐波48次');
INSERT INTO `dictionary` VALUES ('275', 'I2xb_49', '1', 'UPS_A总输入B相电流谐波49次');
INSERT INTO `dictionary` VALUES ('276', 'I2xb_50', '1', 'UPS_A总输入B相电流谐波50次');
INSERT INTO `dictionary` VALUES ('277', 'I3xb_1', '1', 'UPS_A总输入C相电流谐波1次');
INSERT INTO `dictionary` VALUES ('278', 'I3xb_2', '1', 'UPS_A总输入C相电流谐波2次');
INSERT INTO `dictionary` VALUES ('279', 'I3xb_3', '1', 'UPS_A总输入C相电流谐波3次');
INSERT INTO `dictionary` VALUES ('280', 'I3xb_4', '1', 'UPS_A总输入C相电流谐波4次');
INSERT INTO `dictionary` VALUES ('281', 'I3xb_5', '1', 'UPS_A总输入C相电流谐波5次');
INSERT INTO `dictionary` VALUES ('282', 'I3xb_6', '1', 'UPS_A总输入C相电流谐波6次');
INSERT INTO `dictionary` VALUES ('283', 'I3xb_7', '1', 'UPS_A总输入C相电流谐波7次');
INSERT INTO `dictionary` VALUES ('284', 'I3xb_8', '1', 'UPS_A总输入C相电流谐波8次');
INSERT INTO `dictionary` VALUES ('285', 'I3xb_9', '1', 'UPS_A总输入C相电流谐波9次');
INSERT INTO `dictionary` VALUES ('286', 'I3xb_10', '1', 'UPS_A总输入C相电流谐波10次');
INSERT INTO `dictionary` VALUES ('287', 'I3xb_11', '1', 'UPS_A总输入C相电流谐波11次');
INSERT INTO `dictionary` VALUES ('288', 'I3xb_12', '1', 'UPS_A总输入C相电流谐波12次');
INSERT INTO `dictionary` VALUES ('289', 'I3xb_13', '1', 'UPS_A总输入C相电流谐波13次');
INSERT INTO `dictionary` VALUES ('290', 'I3xb_14', '1', 'UPS_A总输入C相电流谐波14次');
INSERT INTO `dictionary` VALUES ('291', 'I3xb_15', '1', 'UPS_A总输入C相电流谐波15次');
INSERT INTO `dictionary` VALUES ('292', 'I3xb_16', '1', 'UPS_A总输入C相电流谐波16次');
INSERT INTO `dictionary` VALUES ('293', 'I3xb_17', '1', 'UPS_A总输入C相电流谐波17次');
INSERT INTO `dictionary` VALUES ('294', 'I3xb_18', '1', 'UPS_A总输入C相电流谐波18次');
INSERT INTO `dictionary` VALUES ('295', 'I3xb_19', '1', 'UPS_A总输入C相电流谐波19次');
INSERT INTO `dictionary` VALUES ('296', 'I3xb_20', '1', 'UPS_A总输入C相电流谐波20次');
INSERT INTO `dictionary` VALUES ('297', 'I3xb_21', '1', 'UPS_A总输入C相电流谐波21次');
INSERT INTO `dictionary` VALUES ('298', 'I3xb_22', '1', 'UPS_A总输入C相电流谐波22次');
INSERT INTO `dictionary` VALUES ('299', 'I3xb_23', '1', 'UPS_A总输入C相电流谐波23次');
INSERT INTO `dictionary` VALUES ('300', 'I3xb_24', '1', 'UPS_A总输入C相电流谐波24次');
INSERT INTO `dictionary` VALUES ('301', 'I3xb_25', '1', 'UPS_A总输入C相电流谐波25次');
INSERT INTO `dictionary` VALUES ('302', 'I3xb_26', '1', 'UPS_A总输入C相电流谐波26次');
INSERT INTO `dictionary` VALUES ('303', 'I3xb_27', '1', 'UPS_A总输入C相电流谐波27次');
INSERT INTO `dictionary` VALUES ('304', 'I3xb_28', '1', 'UPS_A总输入C相电流谐波28次');
INSERT INTO `dictionary` VALUES ('305', 'I3xb_29', '1', 'UPS_A总输入C相电流谐波29次');
INSERT INTO `dictionary` VALUES ('306', 'I3xb_30', '1', 'UPS_A总输入C相电流谐波30次');
INSERT INTO `dictionary` VALUES ('307', 'I3xb_31', '1', 'UPS_A总输入C相电流谐波31次');
INSERT INTO `dictionary` VALUES ('308', 'I3xb_32', '1', 'UPS_A总输入C相电流谐波32次');
INSERT INTO `dictionary` VALUES ('309', 'I3xb_33', '1', 'UPS_A总输入C相电流谐波33次');
INSERT INTO `dictionary` VALUES ('310', 'I3xb_34', '1', 'UPS_A总输入C相电流谐波34次');
INSERT INTO `dictionary` VALUES ('311', 'I3xb_35', '1', 'UPS_A总输入C相电流谐波35次');
INSERT INTO `dictionary` VALUES ('312', 'I3xb_36', '1', 'UPS_A总输入C相电流谐波36次');
INSERT INTO `dictionary` VALUES ('313', 'I3xb_37', '1', 'UPS_A总输入C相电流谐波37次');
INSERT INTO `dictionary` VALUES ('314', 'I3xb_38', '1', 'UPS_A总输入C相电流谐波38次');
INSERT INTO `dictionary` VALUES ('315', 'I3xb_39', '1', 'UPS_A总输入C相电流谐波39次');
INSERT INTO `dictionary` VALUES ('316', 'I3xb_40', '1', 'UPS_A总输入C相电流谐波40次');
INSERT INTO `dictionary` VALUES ('317', 'I3xb_41', '1', 'UPS_A总输入C相电流谐波41次');
INSERT INTO `dictionary` VALUES ('318', 'I3xb_42', '1', 'UPS_A总输入C相电流谐波42次');
INSERT INTO `dictionary` VALUES ('319', 'I3xb_43', '1', 'UPS_A总输入C相电流谐波43次');
INSERT INTO `dictionary` VALUES ('320', 'I3xb_44', '1', 'UPS_A总输入C相电流谐波44次');
INSERT INTO `dictionary` VALUES ('321', 'I3xb_45', '1', 'UPS_A总输入C相电流谐波45次');
INSERT INTO `dictionary` VALUES ('322', 'I3xb_46', '1', 'UPS_A总输入C相电流谐波46次');
INSERT INTO `dictionary` VALUES ('323', 'I3xb_47', '1', 'UPS_A总输入C相电流谐波47次');
INSERT INTO `dictionary` VALUES ('324', 'I3xb_48', '1', 'UPS_A总输入C相电流谐波48次');
INSERT INTO `dictionary` VALUES ('325', 'I3xb_49', '1', 'UPS_A总输入C相电流谐波49次');
INSERT INTO `dictionary` VALUES ('326', 'I3xb_50', '1', 'UPS_A总输入C相电流谐波50次');
INSERT INTO `dictionary` VALUES ('327', 'UPS_AU', '1', 'UPS_A总输入A相电压总谐波畸变率');
INSERT INTO `dictionary` VALUES ('328', 'UPS_BU', '1', 'UPS_A总输入B相电压总谐波畸变率');
INSERT INTO `dictionary` VALUES ('329', 'UPS_CU', '1', 'UPS_A总输入C相电压总谐波畸变率');
INSERT INTO `dictionary` VALUES ('330', 'UPS_AI', '1', 'UPS_A总输入A相电流总谐波畸变率');
INSERT INTO `dictionary` VALUES ('331', 'UPS_BI', '1', 'UPS_A总输入B相电流总谐波畸变率');
INSERT INTO `dictionary` VALUES ('332', 'UPS_CI', '1', 'UPS_A总输入C相电流总谐波畸变率');
INSERT INTO `dictionary` VALUES ('333', 'Hz', '1', 'UPS_A总输入频率');
INSERT INTO `dictionary` VALUES ('334', '|f|_sum', '1', 'UPS_A总输入频率偏差');
INSERT INTO `dictionary` VALUES ('335', '|f|_U1', '1', 'UPS_A总输入A相电压偏差');
INSERT INTO `dictionary` VALUES ('336', '|f|_U2', '1', 'UPS_A总输入B相电压偏差');
INSERT INTO `dictionary` VALUES ('337', '|f|_U3', '1', 'UPS_A总输入C相电压偏差');
INSERT INTO `dictionary` VALUES ('338', 'Pst_U1', '1', 'UPS_A总输入A相短时闪变');
INSERT INTO `dictionary` VALUES ('339', 'Pst_U2', '1', 'UPS_A总输入B相短时闪变');
INSERT INTO `dictionary` VALUES ('340', 'Pst_U3', '1', 'UPS_A总输入C相短时闪变');
INSERT INTO `dictionary` VALUES ('341', 'Plt_U1', '1', 'UPS_A总输入A相长时闪变');
INSERT INTO `dictionary` VALUES ('342', 'Plt_U2', '1', 'UPS_A总输入B相长时闪变');
INSERT INTO `dictionary` VALUES ('343', 'Plt_U3', '1', 'UPS_A总输入C相长时闪变');
INSERT INTO `dictionary` VALUES ('344', 'PHI_U1', '1', 'UPS_A总输入A相电压谐波相位');
INSERT INTO `dictionary` VALUES ('345', 'PHI_U2', '1', 'UPS_A总输入B相电压谐波相位');
INSERT INTO `dictionary` VALUES ('346', 'PHI_U3', '1', 'UPS_A总输入C相电压谐波相位');
INSERT INTO `dictionary` VALUES ('347', 'PHI_I1', '1', 'UPS_A总输入A相电流谐波相位');
INSERT INTO `dictionary` VALUES ('348', 'PHI_I2', '1', 'UPS_A总输入B相电流谐波相位');
INSERT INTO `dictionary` VALUES ('349', 'PHI_I3', '1', 'UPS_A总输入C相电流谐波相位');
INSERT INTO `dictionary` VALUES ('350', 'U1va_2', '1', 'UPS_A总输入A相电压谐波含有率2次');
INSERT INTO `dictionary` VALUES ('351', 'U1va_3', '1', 'UPS_A总输入A相电压谐波含有率3次');
INSERT INTO `dictionary` VALUES ('352', 'U1va_4', '1', 'UPS_A总输入A相电压谐波含有率4次');
INSERT INTO `dictionary` VALUES ('353', 'U1va_5', '1', 'UPS_A总输入A相电压谐波含有率5次');
INSERT INTO `dictionary` VALUES ('354', 'U1va_6', '1', 'UPS_A总输入A相电压谐波含有率6次');
INSERT INTO `dictionary` VALUES ('355', 'U1va_7', '1', 'UPS_A总输入A相电压谐波含有率7次');
INSERT INTO `dictionary` VALUES ('356', 'U1va_8', '1', 'UPS_A总输入A相电压谐波含有率8次');
INSERT INTO `dictionary` VALUES ('357', 'U1va_9', '1', 'UPS_A总输入A相电压谐波含有率9次');
INSERT INTO `dictionary` VALUES ('358', 'U1va_10', '1', 'UPS_A总输入A相电压谐波含有率10次');
INSERT INTO `dictionary` VALUES ('359', 'U1va_11', '1', 'UPS_A总输入A相电压谐波含有率11次');
INSERT INTO `dictionary` VALUES ('360', 'U1va_12', '1', 'UPS_A总输入A相电压谐波含有率12次');
INSERT INTO `dictionary` VALUES ('361', 'U1va_13', '1', 'UPS_A总输入A相电压谐波含有率13次');
INSERT INTO `dictionary` VALUES ('362', 'U1va_14', '1', 'UPS_A总输入A相电压谐波含有率14次');
INSERT INTO `dictionary` VALUES ('363', 'U1va_15', '1', 'UPS_A总输入A相电压谐波含有率15次');
INSERT INTO `dictionary` VALUES ('364', 'U1va_16', '1', 'UPS_A总输入A相电压谐波含有率16次');
INSERT INTO `dictionary` VALUES ('365', 'U1va_17', '1', 'UPS_A总输入A相电压谐波含有率17次');
INSERT INTO `dictionary` VALUES ('366', 'U1va_18', '1', 'UPS_A总输入A相电压谐波含有率18次');
INSERT INTO `dictionary` VALUES ('367', 'U1va_19', '1', 'UPS_A总输入A相电压谐波含有率19次');
INSERT INTO `dictionary` VALUES ('368', 'U1va_20', '1', 'UPS_A总输入A相电压谐波含有率20次');
INSERT INTO `dictionary` VALUES ('369', 'U1va_21', '1', 'UPS_A总输入A相电压谐波含有率21次');
INSERT INTO `dictionary` VALUES ('370', 'U1va_22', '1', 'UPS_A总输入A相电压谐波含有率22次');
INSERT INTO `dictionary` VALUES ('371', 'U1va_23', '1', 'UPS_A总输入A相电压谐波含有率23次');
INSERT INTO `dictionary` VALUES ('372', 'U1va_24', '1', 'UPS_A总输入A相电压谐波含有率24次');
INSERT INTO `dictionary` VALUES ('373', 'U1va_25', '1', 'UPS_A总输入A相电压谐波含有率25次');
INSERT INTO `dictionary` VALUES ('374', 'U1va_26', '1', 'UPS_A总输入A相电压谐波含有率26次');
INSERT INTO `dictionary` VALUES ('375', 'U1va_27', '1', 'UPS_A总输入A相电压谐波含有率27次');
INSERT INTO `dictionary` VALUES ('376', 'U1va_28', '1', 'UPS_A总输入A相电压谐波含有率28次');
INSERT INTO `dictionary` VALUES ('377', 'U1va_29', '1', 'UPS_A总输入A相电压谐波含有率29次');
INSERT INTO `dictionary` VALUES ('378', 'U1va_30', '1', 'UPS_A总输入A相电压谐波含有率30次');
INSERT INTO `dictionary` VALUES ('379', 'U1va_31', '1', 'UPS_A总输入A相电压谐波含有率31次');
INSERT INTO `dictionary` VALUES ('380', 'U1va_32', '1', 'UPS_A总输入A相电压谐波含有率32次');
INSERT INTO `dictionary` VALUES ('381', 'U1va_33', '1', 'UPS_A总输入A相电压谐波含有率33次');
INSERT INTO `dictionary` VALUES ('382', 'U1va_34', '1', 'UPS_A总输入A相电压谐波含有率34次');
INSERT INTO `dictionary` VALUES ('383', 'U1va_35', '1', 'UPS_A总输入A相电压谐波含有率35次');
INSERT INTO `dictionary` VALUES ('384', 'U1va_36', '1', 'UPS_A总输入A相电压谐波含有率36次');
INSERT INTO `dictionary` VALUES ('385', 'U1va_37', '1', 'UPS_A总输入A相电压谐波含有率37次');
INSERT INTO `dictionary` VALUES ('386', 'U1va_38', '1', 'UPS_A总输入A相电压谐波含有率38次');
INSERT INTO `dictionary` VALUES ('387', 'U1va_39', '1', 'UPS_A总输入A相电压谐波含有率39次');
INSERT INTO `dictionary` VALUES ('388', 'U1va_40', '1', 'UPS_A总输入A相电压谐波含有率40次');
INSERT INTO `dictionary` VALUES ('389', 'U1va_41', '1', 'UPS_A总输入A相电压谐波含有率41次');
INSERT INTO `dictionary` VALUES ('390', 'U1va_42', '1', 'UPS_A总输入A相电压谐波含有率42次');
INSERT INTO `dictionary` VALUES ('391', 'U1va_43', '1', 'UPS_A总输入A相电压谐波含有率43次');
INSERT INTO `dictionary` VALUES ('392', 'U1va_44', '1', 'UPS_A总输入A相电压谐波含有率44次');
INSERT INTO `dictionary` VALUES ('393', 'U1va_45', '1', 'UPS_A总输入A相电压谐波含有率45次');
INSERT INTO `dictionary` VALUES ('394', 'U1va_46', '1', 'UPS_A总输入A相电压谐波含有率46次');
INSERT INTO `dictionary` VALUES ('395', 'U1va_47', '1', 'UPS_A总输入A相电压谐波含有率47次');
INSERT INTO `dictionary` VALUES ('396', 'U1va_48', '1', 'UPS_A总输入A相电压谐波含有率48次');
INSERT INTO `dictionary` VALUES ('397', 'U1va_49', '1', 'UPS_A总输入A相电压谐波含有率49次');
INSERT INTO `dictionary` VALUES ('398', 'U1va_50', '1', 'UPS_A总输入A相电压谐波含有率50次');
INSERT INTO `dictionary` VALUES ('399', 'U2va_2', '1', 'UPS_A总输入B相电压谐波含有率2次');
INSERT INTO `dictionary` VALUES ('400', 'U2va_3', '1', 'UPS_A总输入B相电压谐波含有率3次');
INSERT INTO `dictionary` VALUES ('401', 'U2va_4', '1', 'UPS_A总输入B相电压谐波含有率4次');
INSERT INTO `dictionary` VALUES ('402', 'U2va_5', '1', 'UPS_A总输入B相电压谐波含有率5次');
INSERT INTO `dictionary` VALUES ('403', 'U2va_6', '1', 'UPS_A总输入B相电压谐波含有率6次');
INSERT INTO `dictionary` VALUES ('404', 'U2va_7', '1', 'UPS_A总输入B相电压谐波含有率7次');
INSERT INTO `dictionary` VALUES ('405', 'U2va_8', '1', 'UPS_A总输入B相电压谐波含有率8次');
INSERT INTO `dictionary` VALUES ('406', 'U2va_9', '1', 'UPS_A总输入B相电压谐波含有率9次');
INSERT INTO `dictionary` VALUES ('407', 'U2va_10', '1', 'UPS_A总输入B相电压谐波含有率10次');
INSERT INTO `dictionary` VALUES ('408', 'U2va_11', '1', 'UPS_A总输入B相电压谐波含有率11次');
INSERT INTO `dictionary` VALUES ('409', 'U2va_12', '1', 'UPS_A总输入B相电压谐波含有率12次');
INSERT INTO `dictionary` VALUES ('410', 'U2va_13', '1', 'UPS_A总输入B相电压谐波含有率13次');
INSERT INTO `dictionary` VALUES ('411', 'U2va_14', '1', 'UPS_A总输入B相电压谐波含有率14次');
INSERT INTO `dictionary` VALUES ('412', 'U2va_15', '1', 'UPS_A总输入B相电压谐波含有率15次');
INSERT INTO `dictionary` VALUES ('413', 'U2va_16', '1', 'UPS_A总输入B相电压谐波含有率16次');
INSERT INTO `dictionary` VALUES ('414', 'U2va_17', '1', 'UPS_A总输入B相电压谐波含有率17次');
INSERT INTO `dictionary` VALUES ('415', 'U2va_18', '1', 'UPS_A总输入B相电压谐波含有率18次');
INSERT INTO `dictionary` VALUES ('416', 'U2va_19', '1', 'UPS_A总输入B相电压谐波含有率19次');
INSERT INTO `dictionary` VALUES ('417', 'U2va_20', '1', 'UPS_A总输入B相电压谐波含有率20次');
INSERT INTO `dictionary` VALUES ('418', 'U2va_21', '1', 'UPS_A总输入B相电压谐波含有率21次');
INSERT INTO `dictionary` VALUES ('419', 'U2va_22', '1', 'UPS_A总输入B相电压谐波含有率22次');
INSERT INTO `dictionary` VALUES ('420', 'U2va_23', '1', 'UPS_A总输入B相电压谐波含有率23次');
INSERT INTO `dictionary` VALUES ('421', 'U2va_24', '1', 'UPS_A总输入B相电压谐波含有率24次');
INSERT INTO `dictionary` VALUES ('422', 'U2va_25', '1', 'UPS_A总输入B相电压谐波含有率25次');
INSERT INTO `dictionary` VALUES ('423', 'U2va_26', '1', 'UPS_A总输入B相电压谐波含有率26次');
INSERT INTO `dictionary` VALUES ('424', 'U2va_27', '1', 'UPS_A总输入B相电压谐波含有率27次');
INSERT INTO `dictionary` VALUES ('425', 'U2va_28', '1', 'UPS_A总输入B相电压谐波含有率28次');
INSERT INTO `dictionary` VALUES ('426', 'U2va_29', '1', 'UPS_A总输入B相电压谐波含有率29次');
INSERT INTO `dictionary` VALUES ('427', 'U2va_30', '1', 'UPS_A总输入B相电压谐波含有率30次');
INSERT INTO `dictionary` VALUES ('428', 'U2va_31', '1', 'UPS_A总输入B相电压谐波含有率31次');
INSERT INTO `dictionary` VALUES ('429', 'U2va_32', '1', 'UPS_A总输入B相电压谐波含有率32次');
INSERT INTO `dictionary` VALUES ('430', 'U2va_33', '1', 'UPS_A总输入B相电压谐波含有率33次');
INSERT INTO `dictionary` VALUES ('431', 'U2va_34', '1', 'UPS_A总输入B相电压谐波含有率34次');
INSERT INTO `dictionary` VALUES ('432', 'U2va_35', '1', 'UPS_A总输入B相电压谐波含有率35次');
INSERT INTO `dictionary` VALUES ('433', 'U2va_36', '1', 'UPS_A总输入B相电压谐波含有率36次');
INSERT INTO `dictionary` VALUES ('434', 'U2va_37', '1', 'UPS_A总输入B相电压谐波含有率37次');
INSERT INTO `dictionary` VALUES ('435', 'U2va_38', '1', 'UPS_A总输入B相电压谐波含有率38次');
INSERT INTO `dictionary` VALUES ('436', 'U2va_39', '1', 'UPS_A总输入B相电压谐波含有率39次');
INSERT INTO `dictionary` VALUES ('437', 'U2va_40', '1', 'UPS_A总输入B相电压谐波含有率40次');
INSERT INTO `dictionary` VALUES ('438', 'U2va_41', '1', 'UPS_A总输入B相电压谐波含有率41次');
INSERT INTO `dictionary` VALUES ('439', 'U2va_42', '1', 'UPS_A总输入B相电压谐波含有率42次');
INSERT INTO `dictionary` VALUES ('440', 'U2va_43', '1', 'UPS_A总输入B相电压谐波含有率43次');
INSERT INTO `dictionary` VALUES ('441', 'U2va_44', '1', 'UPS_A总输入B相电压谐波含有率44次');
INSERT INTO `dictionary` VALUES ('442', 'U2va_45', '1', 'UPS_A总输入B相电压谐波含有率45次');
INSERT INTO `dictionary` VALUES ('443', 'U2va_46', '1', 'UPS_A总输入B相电压谐波含有率46次');
INSERT INTO `dictionary` VALUES ('444', 'U2va_47', '1', 'UPS_A总输入B相电压谐波含有率47次');
INSERT INTO `dictionary` VALUES ('445', 'U2va_48', '1', 'UPS_A总输入B相电压谐波含有率48次');
INSERT INTO `dictionary` VALUES ('446', 'U2va_49', '1', 'UPS_A总输入B相电压谐波含有率49次');
INSERT INTO `dictionary` VALUES ('447', 'U2va_50', '1', 'UPS_A总输入B相电压谐波含有率50次');
INSERT INTO `dictionary` VALUES ('448', 'U3va_2', '1', 'UPS_A总输入C相电压谐波含有率2次');
INSERT INTO `dictionary` VALUES ('449', 'U3va_3', '1', 'UPS_A总输入C相电压谐波含有率3次');
INSERT INTO `dictionary` VALUES ('450', 'U3va_4', '1', 'UPS_A总输入C相电压谐波含有率4次');
INSERT INTO `dictionary` VALUES ('451', 'U3va_5', '1', 'UPS_A总输入C相电压谐波含有率5次');
INSERT INTO `dictionary` VALUES ('452', 'U3va_6', '1', 'UPS_A总输入C相电压谐波含有率6次');
INSERT INTO `dictionary` VALUES ('453', 'U3va_7', '1', 'UPS_A总输入C相电压谐波含有率7次');
INSERT INTO `dictionary` VALUES ('454', 'U3va_8', '1', 'UPS_A总输入C相电压谐波含有率8次');
INSERT INTO `dictionary` VALUES ('455', 'U3va_9', '1', 'UPS_A总输入C相电压谐波含有率9次');
INSERT INTO `dictionary` VALUES ('456', 'U3va_10', '1', 'UPS_A总输入C相电压谐波含有率10次');
INSERT INTO `dictionary` VALUES ('457', 'U3va_11', '1', 'UPS_A总输入C相电压谐波含有率11次');
INSERT INTO `dictionary` VALUES ('458', 'U3va_12', '1', 'UPS_A总输入C相电压谐波含有率12次');
INSERT INTO `dictionary` VALUES ('459', 'U3va_13', '1', 'UPS_A总输入C相电压谐波含有率13次');
INSERT INTO `dictionary` VALUES ('460', 'U3va_14', '1', 'UPS_A总输入C相电压谐波含有率14次');
INSERT INTO `dictionary` VALUES ('461', 'U3va_15', '1', 'UPS_A总输入C相电压谐波含有率15次');
INSERT INTO `dictionary` VALUES ('462', 'U3va_16', '1', 'UPS_A总输入C相电压谐波含有率16次');
INSERT INTO `dictionary` VALUES ('463', 'U3va_17', '1', 'UPS_A总输入C相电压谐波含有率17次');
INSERT INTO `dictionary` VALUES ('464', 'U3va_18', '1', 'UPS_A总输入C相电压谐波含有率18次');
INSERT INTO `dictionary` VALUES ('465', 'U3va_19', '1', 'UPS_A总输入C相电压谐波含有率19次');
INSERT INTO `dictionary` VALUES ('466', 'U3va_20', '1', 'UPS_A总输入C相电压谐波含有率20次');
INSERT INTO `dictionary` VALUES ('467', 'U3va_21', '1', 'UPS_A总输入C相电压谐波含有率21次');
INSERT INTO `dictionary` VALUES ('468', 'U3va_22', '1', 'UPS_A总输入C相电压谐波含有率22次');
INSERT INTO `dictionary` VALUES ('469', 'U3va_23', '1', 'UPS_A总输入C相电压谐波含有率23次');
INSERT INTO `dictionary` VALUES ('470', 'U3va_24', '1', 'UPS_A总输入C相电压谐波含有率24次');
INSERT INTO `dictionary` VALUES ('471', 'U3va_25', '1', 'UPS_A总输入C相电压谐波含有率25次');
INSERT INTO `dictionary` VALUES ('472', 'U3va_26', '1', 'UPS_A总输入C相电压谐波含有率26次');
INSERT INTO `dictionary` VALUES ('473', 'U3va_27', '1', 'UPS_A总输入C相电压谐波含有率27次');
INSERT INTO `dictionary` VALUES ('474', 'U3va_28', '1', 'UPS_A总输入C相电压谐波含有率28次');
INSERT INTO `dictionary` VALUES ('475', 'U3va_29', '1', 'UPS_A总输入C相电压谐波含有率29次');
INSERT INTO `dictionary` VALUES ('476', 'U3va_30', '1', 'UPS_A总输入C相电压谐波含有率30次');
INSERT INTO `dictionary` VALUES ('477', 'U3va_31', '1', 'UPS_A总输入C相电压谐波含有率31次');
INSERT INTO `dictionary` VALUES ('478', 'U3va_32', '1', 'UPS_A总输入C相电压谐波含有率32次');
INSERT INTO `dictionary` VALUES ('479', 'U3va_33', '1', 'UPS_A总输入C相电压谐波含有率33次');
INSERT INTO `dictionary` VALUES ('480', 'U3va_34', '1', 'UPS_A总输入C相电压谐波含有率34次');
INSERT INTO `dictionary` VALUES ('481', 'U3va_35', '1', 'UPS_A总输入C相电压谐波含有率35次');
INSERT INTO `dictionary` VALUES ('482', 'U3va_36', '1', 'UPS_A总输入C相电压谐波含有率36次');
INSERT INTO `dictionary` VALUES ('483', 'U3va_37', '1', 'UPS_A总输入C相电压谐波含有率37次');
INSERT INTO `dictionary` VALUES ('484', 'U3va_38', '1', 'UPS_A总输入C相电压谐波含有率38次');
INSERT INTO `dictionary` VALUES ('485', 'U3va_39', '1', 'UPS_A总输入C相电压谐波含有率39次');
INSERT INTO `dictionary` VALUES ('486', 'U3va_40', '1', 'UPS_A总输入C相电压谐波含有率40次');
INSERT INTO `dictionary` VALUES ('487', 'U3va_41', '1', 'UPS_A总输入C相电压谐波含有率41次');
INSERT INTO `dictionary` VALUES ('488', 'U3va_42', '1', 'UPS_A总输入C相电压谐波含有率42次');
INSERT INTO `dictionary` VALUES ('489', 'U3va_43', '1', 'UPS_A总输入C相电压谐波含有率43次');
INSERT INTO `dictionary` VALUES ('490', 'U3va_44', '1', 'UPS_A总输入C相电压谐波含有率44次');
INSERT INTO `dictionary` VALUES ('491', 'U3va_45', '1', 'UPS_A总输入C相电压谐波含有率45次');
INSERT INTO `dictionary` VALUES ('492', 'U3va_46', '1', 'UPS_A总输入C相电压谐波含有率46次');
INSERT INTO `dictionary` VALUES ('493', 'U3va_47', '1', 'UPS_A总输入C相电压谐波含有率47次');
INSERT INTO `dictionary` VALUES ('494', 'U3va_48', '1', 'UPS_A总输入C相电压谐波含有率48次');
INSERT INTO `dictionary` VALUES ('495', 'U3va_49', '1', 'UPS_A总输入C相电压谐波含有率49次');
INSERT INTO `dictionary` VALUES ('496', 'U3va_50', '1', 'UPS_A总输入C相电压谐波含有率50次');
INSERT INTO `dictionary` VALUES ('497', 'I1va_2', '1', 'UPS_A总输入A相电流谐波含有率2次');
INSERT INTO `dictionary` VALUES ('498', 'I1va_3', '1', 'UPS_A总输入A相电流谐波含有率3次');
INSERT INTO `dictionary` VALUES ('499', 'I1va_4', '1', 'UPS_A总输入A相电流谐波含有率4次');
INSERT INTO `dictionary` VALUES ('500', 'I1va_5', '1', 'UPS_A总输入A相电流谐波含有率5次');
INSERT INTO `dictionary` VALUES ('501', 'I1va_6', '1', 'UPS_A总输入A相电流谐波含有率6次');
INSERT INTO `dictionary` VALUES ('502', 'I1va_7', '1', 'UPS_A总输入A相电流谐波含有率7次');
INSERT INTO `dictionary` VALUES ('503', 'I1va_8', '1', 'UPS_A总输入A相电流谐波含有率8次');
INSERT INTO `dictionary` VALUES ('504', 'I1va_9', '1', 'UPS_A总输入A相电流谐波含有率9次');
INSERT INTO `dictionary` VALUES ('505', 'I1va_10', '1', 'UPS_A总输入A相电流谐波含有率10次');
INSERT INTO `dictionary` VALUES ('506', 'I1va_11', '1', 'UPS_A总输入A相电流谐波含有率11次');
INSERT INTO `dictionary` VALUES ('507', 'I1va_12', '1', 'UPS_A总输入A相电流谐波含有率12次');
INSERT INTO `dictionary` VALUES ('508', 'I1va_13', '1', 'UPS_A总输入A相电流谐波含有率13次');
INSERT INTO `dictionary` VALUES ('509', 'I1va_14', '1', 'UPS_A总输入A相电流谐波含有率14次');
INSERT INTO `dictionary` VALUES ('510', 'I1va_15', '1', 'UPS_A总输入A相电流谐波含有率15次');
INSERT INTO `dictionary` VALUES ('511', 'I1va_16', '1', 'UPS_A总输入A相电流谐波含有率16次');
INSERT INTO `dictionary` VALUES ('512', 'I1va_17', '1', 'UPS_A总输入A相电流谐波含有率17次');
INSERT INTO `dictionary` VALUES ('513', 'I1va_18', '1', 'UPS_A总输入A相电流谐波含有率18次');
INSERT INTO `dictionary` VALUES ('514', 'I1va_19', '1', 'UPS_A总输入A相电流谐波含有率19次');
INSERT INTO `dictionary` VALUES ('515', 'I1va_20', '1', 'UPS_A总输入A相电流谐波含有率20次');
INSERT INTO `dictionary` VALUES ('516', 'I1va_21', '1', 'UPS_A总输入A相电流谐波含有率21次');
INSERT INTO `dictionary` VALUES ('517', 'I1va_22', '1', 'UPS_A总输入A相电流谐波含有率22次');
INSERT INTO `dictionary` VALUES ('518', 'I1va_23', '1', 'UPS_A总输入A相电流谐波含有率23次');
INSERT INTO `dictionary` VALUES ('519', 'I1va_24', '1', 'UPS_A总输入A相电流谐波含有率24次');
INSERT INTO `dictionary` VALUES ('520', 'I1va_25', '1', 'UPS_A总输入A相电流谐波含有率25次');
INSERT INTO `dictionary` VALUES ('521', 'I1va_26', '1', 'UPS_A总输入A相电流谐波含有率26次');
INSERT INTO `dictionary` VALUES ('522', 'I1va_27', '1', 'UPS_A总输入A相电流谐波含有率27次');
INSERT INTO `dictionary` VALUES ('523', 'I1va_28', '1', 'UPS_A总输入A相电流谐波含有率28次');
INSERT INTO `dictionary` VALUES ('524', 'I1va_29', '1', 'UPS_A总输入A相电流谐波含有率29次');
INSERT INTO `dictionary` VALUES ('525', 'I1va_30', '1', 'UPS_A总输入A相电流谐波含有率30次');
INSERT INTO `dictionary` VALUES ('526', 'I1va_31', '1', 'UPS_A总输入A相电流谐波含有率31次');
INSERT INTO `dictionary` VALUES ('527', 'I1va_32', '1', 'UPS_A总输入A相电流谐波含有率32次');
INSERT INTO `dictionary` VALUES ('528', 'I1va_33', '1', 'UPS_A总输入A相电流谐波含有率33次');
INSERT INTO `dictionary` VALUES ('529', 'I1va_34', '1', 'UPS_A总输入A相电流谐波含有率34次');
INSERT INTO `dictionary` VALUES ('530', 'I1va_35', '1', 'UPS_A总输入A相电流谐波含有率35次');
INSERT INTO `dictionary` VALUES ('531', 'I1va_36', '1', 'UPS_A总输入A相电流谐波含有率36次');
INSERT INTO `dictionary` VALUES ('532', 'I1va_37', '1', 'UPS_A总输入A相电流谐波含有率37次');
INSERT INTO `dictionary` VALUES ('533', 'I1va_38', '1', 'UPS_A总输入A相电流谐波含有率38次');
INSERT INTO `dictionary` VALUES ('534', 'I1va_39', '1', 'UPS_A总输入A相电流谐波含有率39次');
INSERT INTO `dictionary` VALUES ('535', 'I1va_40', '1', 'UPS_A总输入A相电流谐波含有率40次');
INSERT INTO `dictionary` VALUES ('536', 'I1va_41', '1', 'UPS_A总输入A相电流谐波含有率41次');
INSERT INTO `dictionary` VALUES ('537', 'I1va_42', '1', 'UPS_A总输入A相电流谐波含有率42次');
INSERT INTO `dictionary` VALUES ('538', 'I1va_43', '1', 'UPS_A总输入A相电流谐波含有率43次');
INSERT INTO `dictionary` VALUES ('539', 'I1va_44', '1', 'UPS_A总输入A相电流谐波含有率44次');
INSERT INTO `dictionary` VALUES ('540', 'I1va_45', '1', 'UPS_A总输入A相电流谐波含有率45次');
INSERT INTO `dictionary` VALUES ('541', 'I1va_46', '1', 'UPS_A总输入A相电流谐波含有率46次');
INSERT INTO `dictionary` VALUES ('542', 'I1va_47', '1', 'UPS_A总输入A相电流谐波含有率47次');
INSERT INTO `dictionary` VALUES ('543', 'I1va_48', '1', 'UPS_A总输入A相电流谐波含有率48次');
INSERT INTO `dictionary` VALUES ('544', 'I1va_49', '1', 'UPS_A总输入A相电流谐波含有率49次');
INSERT INTO `dictionary` VALUES ('545', 'I1va_50', '1', 'UPS_A总输入A相电流谐波含有率50次');
INSERT INTO `dictionary` VALUES ('546', 'I2va_2', '1', 'UPS_A总输入B相电流谐波含有率2次');
INSERT INTO `dictionary` VALUES ('547', 'I2va_3', '1', 'UPS_A总输入B相电流谐波含有率3次');
INSERT INTO `dictionary` VALUES ('548', 'I2va_4', '1', 'UPS_A总输入B相电流谐波含有率4次');
INSERT INTO `dictionary` VALUES ('549', 'I2va_5', '1', 'UPS_A总输入B相电流谐波含有率5次');
INSERT INTO `dictionary` VALUES ('550', 'I2va_6', '1', 'UPS_A总输入B相电流谐波含有率6次');
INSERT INTO `dictionary` VALUES ('551', 'I2va_7', '1', 'UPS_A总输入B相电流谐波含有率7次');
INSERT INTO `dictionary` VALUES ('552', 'I2va_8', '1', 'UPS_A总输入B相电流谐波含有率8次');
INSERT INTO `dictionary` VALUES ('553', 'I2va_9', '1', 'UPS_A总输入B相电流谐波含有率9次');
INSERT INTO `dictionary` VALUES ('554', 'I2va_10', '1', 'UPS_A总输入B相电流谐波含有率10次');
INSERT INTO `dictionary` VALUES ('555', 'I2va_11', '1', 'UPS_A总输入B相电流谐波含有率11次');
INSERT INTO `dictionary` VALUES ('556', 'I2va_12', '1', 'UPS_A总输入B相电流谐波含有率12次');
INSERT INTO `dictionary` VALUES ('557', 'I2va_13', '1', 'UPS_A总输入B相电流谐波含有率13次');
INSERT INTO `dictionary` VALUES ('558', 'I2va_14', '1', 'UPS_A总输入B相电流谐波含有率14次');
INSERT INTO `dictionary` VALUES ('559', 'I2va_15', '1', 'UPS_A总输入B相电流谐波含有率15次');
INSERT INTO `dictionary` VALUES ('560', 'I2va_16', '1', 'UPS_A总输入B相电流谐波含有率16次');
INSERT INTO `dictionary` VALUES ('561', 'I2va_17', '1', 'UPS_A总输入B相电流谐波含有率17次');
INSERT INTO `dictionary` VALUES ('562', 'I2va_18', '1', 'UPS_A总输入B相电流谐波含有率18次');
INSERT INTO `dictionary` VALUES ('563', 'I2va_19', '1', 'UPS_A总输入B相电流谐波含有率19次');
INSERT INTO `dictionary` VALUES ('564', 'I2va_20', '1', 'UPS_A总输入B相电流谐波含有率20次');
INSERT INTO `dictionary` VALUES ('565', 'I2va_21', '1', 'UPS_A总输入B相电流谐波含有率21次');
INSERT INTO `dictionary` VALUES ('566', 'I2va_22', '1', 'UPS_A总输入B相电流谐波含有率22次');
INSERT INTO `dictionary` VALUES ('567', 'I2va_23', '1', 'UPS_A总输入B相电流谐波含有率23次');
INSERT INTO `dictionary` VALUES ('568', 'I2va_24', '1', 'UPS_A总输入B相电流谐波含有率24次');
INSERT INTO `dictionary` VALUES ('569', 'I2va_25', '1', 'UPS_A总输入B相电流谐波含有率25次');
INSERT INTO `dictionary` VALUES ('570', 'I2va_26', '1', 'UPS_A总输入B相电流谐波含有率26次');
INSERT INTO `dictionary` VALUES ('571', 'I2va_27', '1', 'UPS_A总输入B相电流谐波含有率27次');
INSERT INTO `dictionary` VALUES ('572', 'I2va_28', '1', 'UPS_A总输入B相电流谐波含有率28次');
INSERT INTO `dictionary` VALUES ('573', 'I2va_29', '1', 'UPS_A总输入B相电流谐波含有率29次');
INSERT INTO `dictionary` VALUES ('574', 'I2va_30', '1', 'UPS_A总输入B相电流谐波含有率30次');
INSERT INTO `dictionary` VALUES ('575', 'I2va_31', '1', 'UPS_A总输入B相电流谐波含有率31次');
INSERT INTO `dictionary` VALUES ('576', 'I2va_32', '1', 'UPS_A总输入B相电流谐波含有率32次');
INSERT INTO `dictionary` VALUES ('577', 'I2va_33', '1', 'UPS_A总输入B相电流谐波含有率33次');
INSERT INTO `dictionary` VALUES ('578', 'I2va_34', '1', 'UPS_A总输入B相电流谐波含有率34次');
INSERT INTO `dictionary` VALUES ('579', 'I2va_35', '1', 'UPS_A总输入B相电流谐波含有率35次');
INSERT INTO `dictionary` VALUES ('580', 'I2va_36', '1', 'UPS_A总输入B相电流谐波含有率36次');
INSERT INTO `dictionary` VALUES ('581', 'I2va_37', '1', 'UPS_A总输入B相电流谐波含有率37次');
INSERT INTO `dictionary` VALUES ('582', 'I2va_38', '1', 'UPS_A总输入B相电流谐波含有率38次');
INSERT INTO `dictionary` VALUES ('583', 'I2va_39', '1', 'UPS_A总输入B相电流谐波含有率39次');
INSERT INTO `dictionary` VALUES ('584', 'I2va_40', '1', 'UPS_A总输入B相电流谐波含有率40次');
INSERT INTO `dictionary` VALUES ('585', 'I2va_41', '1', 'UPS_A总输入B相电流谐波含有率41次');
INSERT INTO `dictionary` VALUES ('586', 'I2va_42', '1', 'UPS_A总输入B相电流谐波含有率42次');
INSERT INTO `dictionary` VALUES ('587', 'I2va_43', '1', 'UPS_A总输入B相电流谐波含有率43次');
INSERT INTO `dictionary` VALUES ('588', 'I2va_44', '1', 'UPS_A总输入B相电流谐波含有率44次');
INSERT INTO `dictionary` VALUES ('589', 'I2va_45', '1', 'UPS_A总输入B相电流谐波含有率45次');
INSERT INTO `dictionary` VALUES ('590', 'I2va_46', '1', 'UPS_A总输入B相电流谐波含有率46次');
INSERT INTO `dictionary` VALUES ('591', 'I2va_47', '1', 'UPS_A总输入B相电流谐波含有率47次');
INSERT INTO `dictionary` VALUES ('592', 'I2va_48', '1', 'UPS_A总输入B相电流谐波含有率48次');
INSERT INTO `dictionary` VALUES ('593', 'I2va_49', '1', 'UPS_A总输入B相电流谐波含有率49次');
INSERT INTO `dictionary` VALUES ('594', 'I2va_50', '1', 'UPS_A总输入B相电流谐波含有率50次');
INSERT INTO `dictionary` VALUES ('595', 'I3va_2', '1', 'UPS_A总输入C相电流谐波含有率2次');
INSERT INTO `dictionary` VALUES ('596', 'I3va_3', '1', 'UPS_A总输入C相电流谐波含有率3次');
INSERT INTO `dictionary` VALUES ('597', 'I3va_4', '1', 'UPS_A总输入C相电流谐波含有率4次');
INSERT INTO `dictionary` VALUES ('598', 'I3va_5', '1', 'UPS_A总输入C相电流谐波含有率5次');
INSERT INTO `dictionary` VALUES ('599', 'I3va_6', '1', 'UPS_A总输入C相电流谐波含有率6次');
INSERT INTO `dictionary` VALUES ('600', 'I3va_7', '1', 'UPS_A总输入C相电流谐波含有率7次');
INSERT INTO `dictionary` VALUES ('601', 'I3va_8', '1', 'UPS_A总输入C相电流谐波含有率8次');
INSERT INTO `dictionary` VALUES ('602', 'I3va_9', '1', 'UPS_A总输入C相电流谐波含有率9次');
INSERT INTO `dictionary` VALUES ('603', 'I3va_10', '1', 'UPS_A总输入C相电流谐波含有率10次');
INSERT INTO `dictionary` VALUES ('604', 'I3va_11', '1', 'UPS_A总输入C相电流谐波含有率11次');
INSERT INTO `dictionary` VALUES ('605', 'I3va_12', '1', 'UPS_A总输入C相电流谐波含有率12次');
INSERT INTO `dictionary` VALUES ('606', 'I3va_13', '1', 'UPS_A总输入C相电流谐波含有率13次');
INSERT INTO `dictionary` VALUES ('607', 'I3va_14', '1', 'UPS_A总输入C相电流谐波含有率14次');
INSERT INTO `dictionary` VALUES ('608', 'I3va_15', '1', 'UPS_A总输入C相电流谐波含有率15次');
INSERT INTO `dictionary` VALUES ('609', 'I3va_16', '1', 'UPS_A总输入C相电流谐波含有率16次');
INSERT INTO `dictionary` VALUES ('610', 'I3va_17', '1', 'UPS_A总输入C相电流谐波含有率17次');
INSERT INTO `dictionary` VALUES ('611', 'I3va_18', '1', 'UPS_A总输入C相电流谐波含有率18次');
INSERT INTO `dictionary` VALUES ('612', 'I3va_19', '1', 'UPS_A总输入C相电流谐波含有率19次');
INSERT INTO `dictionary` VALUES ('613', 'I3va_20', '1', 'UPS_A总输入C相电流谐波含有率20次');
INSERT INTO `dictionary` VALUES ('614', 'I3va_21', '1', 'UPS_A总输入C相电流谐波含有率21次');
INSERT INTO `dictionary` VALUES ('615', 'I3va_22', '1', 'UPS_A总输入C相电流谐波含有率22次');
INSERT INTO `dictionary` VALUES ('616', 'I3va_23', '1', 'UPS_A总输入C相电流谐波含有率23次');
INSERT INTO `dictionary` VALUES ('617', 'I3va_24', '1', 'UPS_A总输入C相电流谐波含有率24次');
INSERT INTO `dictionary` VALUES ('618', 'I3va_25', '1', 'UPS_A总输入C相电流谐波含有率25次');
INSERT INTO `dictionary` VALUES ('619', 'I3va_26', '1', 'UPS_A总输入C相电流谐波含有率26次');
INSERT INTO `dictionary` VALUES ('620', 'I3va_27', '1', 'UPS_A总输入C相电流谐波含有率27次');
INSERT INTO `dictionary` VALUES ('621', 'I3va_28', '1', 'UPS_A总输入C相电流谐波含有率28次');
INSERT INTO `dictionary` VALUES ('622', 'I3va_29', '1', 'UPS_A总输入C相电流谐波含有率29次');
INSERT INTO `dictionary` VALUES ('623', 'I3va_30', '1', 'UPS_A总输入C相电流谐波含有率30次');
INSERT INTO `dictionary` VALUES ('624', 'I3va_31', '1', 'UPS_A总输入C相电流谐波含有率31次');
INSERT INTO `dictionary` VALUES ('625', 'I3va_32', '1', 'UPS_A总输入C相电流谐波含有率32次');
INSERT INTO `dictionary` VALUES ('626', 'I3va_33', '1', 'UPS_A总输入C相电流谐波含有率33次');
INSERT INTO `dictionary` VALUES ('627', 'I3va_34', '1', 'UPS_A总输入C相电流谐波含有率34次');
INSERT INTO `dictionary` VALUES ('628', 'I3va_35', '1', 'UPS_A总输入C相电流谐波含有率35次');
INSERT INTO `dictionary` VALUES ('629', 'I3va_36', '1', 'UPS_A总输入C相电流谐波含有率36次');
INSERT INTO `dictionary` VALUES ('630', 'I3va_37', '1', 'UPS_A总输入C相电流谐波含有率37次');
INSERT INTO `dictionary` VALUES ('631', 'I3va_38', '1', 'UPS_A总输入C相电流谐波含有率38次');
INSERT INTO `dictionary` VALUES ('632', 'I3va_39', '1', 'UPS_A总输入C相电流谐波含有率39次');
INSERT INTO `dictionary` VALUES ('633', 'I3va_40', '1', 'UPS_A总输入C相电流谐波含有率40次');
INSERT INTO `dictionary` VALUES ('634', 'I3va_41', '1', 'UPS_A总输入C相电流谐波含有率41次');
INSERT INTO `dictionary` VALUES ('635', 'I3va_42', '1', 'UPS_A总输入C相电流谐波含有率42次');
INSERT INTO `dictionary` VALUES ('636', 'I3va_43', '1', 'UPS_A总输入C相电流谐波含有率43次');
INSERT INTO `dictionary` VALUES ('637', 'I3va_44', '1', 'UPS_A总输入C相电流谐波含有率44次');
INSERT INTO `dictionary` VALUES ('638', 'I3va_45', '1', 'UPS_A总输入C相电流谐波含有率45次');
INSERT INTO `dictionary` VALUES ('639', 'I3va_46', '1', 'UPS_A总输入C相电流谐波含有率46次');
INSERT INTO `dictionary` VALUES ('640', 'I3va_47', '1', 'UPS_A总输入C相电流谐波含有率47次');
INSERT INTO `dictionary` VALUES ('641', 'I3va_48', '1', 'UPS_A总输入C相电流谐波含有率48次');
INSERT INTO `dictionary` VALUES ('642', 'I3va_49', '1', 'UPS_A总输入C相电流谐波含有率49次');
INSERT INTO `dictionary` VALUES ('643', 'I3va_50', '1', 'UPS_A总输入C相电流谐波含有率50次');

-- ----------------------------
-- Table structure for dictionary_plus
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_plus`;
CREATE TABLE `dictionary_plus` (
  `part` int(255) NOT NULL,
  `slaveid` int(255) DEFAULT NULL,
  `functioncode` int(255) DEFAULT NULL,
  `start` int(255) DEFAULT NULL,
  `length` int(255) DEFAULT NULL,
  PRIMARY KEY (`part`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dictionary_plus
-- ----------------------------
INSERT INTO `dictionary_plus` VALUES ('1', '1', '3', '0', '44');
INSERT INTO `dictionary_plus` VALUES ('2', '1', '3', '56', '8');
INSERT INTO `dictionary_plus` VALUES ('3', '1', '3', '64', '100');
INSERT INTO `dictionary_plus` VALUES ('4', '1', '3', '164', '100');
INSERT INTO `dictionary_plus` VALUES ('5', '1', '3', '264', '100');
INSERT INTO `dictionary_plus` VALUES ('6', '1', '3', '664', '100');
INSERT INTO `dictionary_plus` VALUES ('7', '1', '3', '764', '100');
INSERT INTO `dictionary_plus` VALUES ('8', '1', '3', '864', '100');
INSERT INTO `dictionary_plus` VALUES ('9', '1', '3', '1864', '12');
INSERT INTO `dictionary_plus` VALUES ('10', '1', '3', '6056', '22');
INSERT INTO `dictionary_plus` VALUES ('11', '1', '3', '364', '2');
INSERT INTO `dictionary_plus` VALUES ('12', '1', '3', '464', '2');
INSERT INTO `dictionary_plus` VALUES ('13', '1', '3', '564', '2');
INSERT INTO `dictionary_plus` VALUES ('14', '1', '3', '964', '2');
INSERT INTO `dictionary_plus` VALUES ('15', '1', '3', '1064', '2');
INSERT INTO `dictionary_plus` VALUES ('16', '1', '3', '1164', '2');
INSERT INTO `dictionary_plus` VALUES ('17', '1', '3', '1876', '98');
INSERT INTO `dictionary_plus` VALUES ('18', '1', '3', '1974', '98');
INSERT INTO `dictionary_plus` VALUES ('19', '1', '3', '2072', '98');
INSERT INTO `dictionary_plus` VALUES ('20', '1', '3', '2170', '98');
INSERT INTO `dictionary_plus` VALUES ('21', '1', '3', '2268', '98');
INSERT INTO `dictionary_plus` VALUES ('22', '1', '3', '2366', '98');

-- ----------------------------
-- Table structure for eventtype_device
-- ----------------------------
DROP TABLE IF EXISTS `eventtype_device`;
CREATE TABLE `eventtype_device` (
  `eid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `priorty` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eventtype_device
-- ----------------------------
INSERT INTO `eventtype_device` VALUES ('1', '过高报警', null);
INSERT INTO `eventtype_device` VALUES ('2', '过低报警', null);
INSERT INTO `eventtype_device` VALUES ('3', '报警(异常)', null);
INSERT INTO `eventtype_device` VALUES ('4', '恢复正常', null);
INSERT INTO `eventtype_device` VALUES ('5', '通讯中断', null);
INSERT INTO `eventtype_device` VALUES ('6', '异常数据', null);
INSERT INTO `eventtype_device` VALUES ('7', '市电故障', null);
INSERT INTO `eventtype_device` VALUES ('8', '旁路故障', null);
INSERT INTO `eventtype_device` VALUES ('9', '整流器故障', null);
INSERT INTO `eventtype_device` VALUES ('10', '逆变器故障', null);

-- ----------------------------
-- Table structure for eventtype_environment
-- ----------------------------
DROP TABLE IF EXISTS `eventtype_environment`;
CREATE TABLE `eventtype_environment` (
  `eid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `priorty` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eventtype_environment
-- ----------------------------
INSERT INTO `eventtype_environment` VALUES ('1', '温度', null);
INSERT INTO `eventtype_environment` VALUES ('2', '湿度', null);
INSERT INTO `eventtype_environment` VALUES ('3', '报警(异常)', null);
INSERT INTO `eventtype_environment` VALUES ('4', '恢复正常', null);
INSERT INTO `eventtype_environment` VALUES ('5', '通讯中断', null);
INSERT INTO `eventtype_environment` VALUES ('6', '异常数据', null);

-- ----------------------------
-- Table structure for eventtype_power
-- ----------------------------
DROP TABLE IF EXISTS `eventtype_power`;
CREATE TABLE `eventtype_power` (
  `eid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `priorty` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eventtype_power
-- ----------------------------
INSERT INTO `eventtype_power` VALUES ('1', '过高报警', null);
INSERT INTO `eventtype_power` VALUES ('2', '过低报警', null);
INSERT INTO `eventtype_power` VALUES ('3', '报警(异常)', null);
INSERT INTO `eventtype_power` VALUES ('4', '恢复正常', null);
INSERT INTO `eventtype_power` VALUES ('5', '通讯中断', null);
INSERT INTO `eventtype_power` VALUES ('6', '异常数据', null);
INSERT INTO `eventtype_power` VALUES ('7', '市电故障', null);
INSERT INTO `eventtype_power` VALUES ('8', '旁路故障', null);
INSERT INTO `eventtype_power` VALUES ('9', '整流器故障', null);
INSERT INTO `eventtype_power` VALUES ('10', '逆变器故障', null);
INSERT INTO `eventtype_power` VALUES ('11', '浪涌塌陷', null);
INSERT INTO `eventtype_power` VALUES ('12', '谐波', null);
INSERT INTO `eventtype_power` VALUES ('13', '三相不平衡度', null);
INSERT INTO `eventtype_power` VALUES ('14', '瞬变', null);
INSERT INTO `eventtype_power` VALUES ('15', '闪变', null);

-- ----------------------------
-- Table structure for event_power
-- ----------------------------
DROP TABLE IF EXISTS `event_power`;
CREATE TABLE `event_power` (
  `epid` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(255) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `occurtime` datetime DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `annotation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `etype` varchar(255) DEFAULT NULL,
  `isMark` int(11) DEFAULT NULL,
  `mpid` int(11) NOT NULL,
  PRIMARY KEY (`epid`)
) ENGINE=InnoDB AUTO_INCREMENT=8244 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event_power
-- ----------------------------

-- ----------------------------
-- Table structure for event_transient
-- ----------------------------
DROP TABLE IF EXISTS `event_transient`;
CREATE TABLE `event_transient` (
  `teid` int(11) NOT NULL,
  `did` varchar(255) DEFAULT NULL,
  `time` datetime NOT NULL,
  `eventtype` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `subtype` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `value` double NOT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `mpid` int(11) NOT NULL,
  PRIMARY KEY (`teid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_transient
-- ----------------------------
INSERT INTO `event_transient` VALUES ('1', '1', '2018-08-25 23:02:31', '1', '2', '13', '266', '-13.556492', '', '0');
INSERT INTO `event_transient` VALUES ('2', '1', '2018-08-25 23:02:31', '1', '2', '13', '266', '-13.556492', '', '0');
INSERT INTO `event_transient` VALUES ('3', '1', '2018-08-25 23:02:31', '1', '2', '13', '266', '-13.556492', '', '0');
INSERT INTO `event_transient` VALUES ('4', '1', '2018-08-25 23:05:54', '1', '2', '3', '11', '-10.574543', '', '0');
INSERT INTO `event_transient` VALUES ('5', '1', '2018-08-25 23:05:54', '1', '2', '13', '3746', '-89.816025', '', '0');
INSERT INTO `event_transient` VALUES ('6', '1', '2018-08-25 23:05:57', '1', '2', '13', '57', '-89.698822', '', '0');
INSERT INTO `event_transient` VALUES ('7', '1', '2018-08-25 23:05:57', '1', '3', '9', '11', '-90.135704', '', '0');
INSERT INTO `event_transient` VALUES ('8', '1', '2018-08-25 23:05:57', '1', '3', '9', '12', '-91.110718', '', '0');
INSERT INTO `event_transient` VALUES ('9', '1', '2018-08-25 23:05:57', '1', '3', '7', '11', '-92.416878', '', '0');
INSERT INTO `event_transient` VALUES ('10', '1', '2018-08-25 23:05:57', '1', '3', '7', '11', '-92.080078', '', '0');
INSERT INTO `event_transient` VALUES ('11', '1', '2018-08-25 23:05:57', '1', '3', '7', '11', '-93.76828', '', '0');
INSERT INTO `event_transient` VALUES ('12', '1', '2018-08-25 23:05:57', '1', '3', '9', '12', '-92.826874', '', '0');
INSERT INTO `event_transient` VALUES ('13', '1', '2018-08-25 23:05:57', '1', '3', '19', '23', '-90.957924', '', '0');
INSERT INTO `event_transient` VALUES ('14', '1', '2018-08-25 23:05:57', '1', '3', '18', '22', '-90.054207', '', '0');
INSERT INTO `event_transient` VALUES ('15', '1', '2018-08-25 23:05:57', '1', '3', '9', '11', '-94.262024', '', '0');
INSERT INTO `event_transient` VALUES ('16', '1', '2018-08-25 23:05:57', '1', '3', '18', '23', '-90.954384', '', '0');
INSERT INTO `event_transient` VALUES ('17', '1', '2018-08-25 23:05:57', '1', '3', '21', '90', '-92.259171', '', '0');
INSERT INTO `event_transient` VALUES ('18', '1', '2018-08-25 23:05:57', '1', '3', '8', '11', '-96.245705', '', '0');
INSERT INTO `event_transient` VALUES ('19', '1', '2018-08-26 17:45:03', '1', '2', '2', '20', '-99.680763', 'Ub 暂降，eventtyp1浪涌塌陷事件', '0');
INSERT INTO `event_transient` VALUES ('20', '1', '2018-08-26 17:45:03', '2', '2', '2', '20', '-99.680763', 'eventtyp2瞬变事件', '0');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `kid` int(11) NOT NULL,
  `uid` varchar(11) DEFAULT NULL,
  `parentkid` int(11) DEFAULT NULL,
  `kname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES ('1', '1', '0', '用户管理', '');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `pid` int(11) NOT NULL,
  `parentpid` int(11) DEFAULT NULL,
  `permissionname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '0', '基础信息配置');
INSERT INTO `permission` VALUES ('2', '0', '账号管理');
INSERT INTO `permission` VALUES ('3', '0', '限值管理');
INSERT INTO `permission` VALUES ('4', '0', '设备管理');
INSERT INTO `permission` VALUES ('5', '0', '查看检测数据及图表显示');
INSERT INTO `permission` VALUES ('6', '0', '组织管理');
INSERT INTO `permission` VALUES ('7', '0', '角色管理');
INSERT INTO `permission` VALUES ('8', '0', '功能管理');
INSERT INTO `permission` VALUES ('9', '0', '预警管理');
INSERT INTO `permission` VALUES ('10', '4', 'IDP');
INSERT INTO `permission` VALUES ('11', '4', 'UPS');
INSERT INTO `permission` VALUES ('12', '4', '蓄电池');
INSERT INTO `permission` VALUES ('13', '4', '柴油发电机');
INSERT INTO `permission` VALUES ('14', '4', '空调');
INSERT INTO `permission` VALUES ('15', '4', '其他传感器');
INSERT INTO `permission` VALUES ('16', '3', '电能质量');
INSERT INTO `permission` VALUES ('17', '3', '动力环境');
INSERT INTO `permission` VALUES ('18', '3', '其他传感器');

-- ----------------------------
-- Table structure for powerparm_monitor
-- ----------------------------
DROP TABLE IF EXISTS `powerparm_monitor`;
CREATE TABLE `powerparm_monitor` (
  `ppid` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `U1` float(255,2) DEFAULT NULL,
  `U2` float(255,2) DEFAULT NULL,
  `U3` float(255,2) DEFAULT NULL,
  `U4` float(255,2) DEFAULT NULL,
  `I1` float(255,2) DEFAULT NULL,
  `I2` float(255,2) DEFAULT NULL,
  `I3` float(255,2) DEFAULT NULL,
  `I4` float(255,2) DEFAULT NULL,
  `P1` float(255,2) DEFAULT NULL,
  `P2` float(255,2) DEFAULT NULL,
  `P3` float(255,2) DEFAULT NULL,
  `Psum` float(255,2) DEFAULT NULL,
  `Q1` float(255,2) DEFAULT NULL,
  `Q2` float(255,2) DEFAULT NULL,
  `Q3` float(255,2) DEFAULT NULL,
  `Qsum` float(255,2) DEFAULT NULL,
  `S1` float(255,2) DEFAULT NULL,
  `S2` float(255,2) DEFAULT NULL,
  `S3` float(255,2) DEFAULT NULL,
  `Ssum` float(255,2) DEFAULT NULL,
  `PF1` float(255,2) DEFAULT NULL,
  `PF2` float(255,2) DEFAULT NULL,
  `PF3` float(255,2) DEFAULT NULL,
  `PFsum` float(255,2) DEFAULT NULL,
  `CosPHI1` float(255,2) DEFAULT NULL,
  `CosPHI2` float(255,2) DEFAULT NULL,
  `CosPHI3` float(255,2) DEFAULT NULL,
  `Ifl_U1` float(255,2) DEFAULT NULL,
  `Ifl_U2` float(255,2) DEFAULT NULL,
  `Ifl_U3` float(255,2) DEFAULT NULL,
  `Pst_U1` float(255,2) DEFAULT NULL,
  `Pst_U2` float(255,2) DEFAULT NULL,
  `Pst_U3` float(255,2) DEFAULT NULL,
  `Plt_U1` float(255,2) DEFAULT NULL,
  `Plt_U2` float(255,2) DEFAULT NULL,
  `Plt_U3` float(255,2) DEFAULT NULL,
  `Hz` float(255,2) DEFAULT NULL,
  PRIMARY KEY (`ppid`)
) ENGINE=InnoDB AUTO_INCREMENT=19035 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powerparm_monitor
-- ----------------------------
INSERT INTO `powerparm_monitor` VALUES ('1', '1', '2018-09-06 10:19:34', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('2', '1', '2018-09-06 10:19:39', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('3', '1', '2018-09-06 10:19:44', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('4', '1', '2018-09-06 10:19:49', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('5', '1', '2018-09-06 10:19:54', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('6', '1', '2018-09-06 10:19:59', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('7', '1', '2018-09-06 10:20:04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('8', '1', '2018-09-06 10:20:09', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('9', '1', '2018-09-06 10:20:14', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('10', '1', '2018-09-06 10:20:19', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('11', '1', '2018-09-06 10:20:24', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('12', '1', '2018-09-06 10:20:29', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('13', '1', '2018-09-06 10:20:34', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for powersxdy_monitor
-- ----------------------------
DROP TABLE IF EXISTS `powersxdy_monitor`;
CREATE TABLE `powersxdy_monitor` (
  `sxid` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(255) NOT NULL,
  `time` datetime DEFAULT NULL,
  `U1` float(255,2) DEFAULT NULL,
  `U2` float(255,2) DEFAULT NULL,
  `U3` float(255,2) DEFAULT NULL,
  `V1` float(255,2) DEFAULT NULL,
  `V2` float(255,2) DEFAULT NULL,
  `V3` float(255,2) DEFAULT NULL,
  `I1` float(255,2) DEFAULT NULL,
  `I2` float(255,2) DEFAULT NULL,
  `I3` float(255,2) DEFAULT NULL,
  `angleU1` float(255,2) DEFAULT NULL,
  `angleU2` float(255,2) DEFAULT NULL,
  `angleU3` float(255,2) DEFAULT NULL,
  `angleV1` float(255,2) DEFAULT NULL,
  `angleV2` float(255,2) DEFAULT NULL,
  `angleV3` float(255,2) DEFAULT NULL,
  `angleI1` float(255,2) DEFAULT NULL,
  `angleI2` float(255,2) DEFAULT NULL,
  `angleI3` float(255,2) DEFAULT NULL,
  `Aunb` float(255,2) DEFAULT NULL,
  `Uunb` float(255,2) DEFAULT NULL,
  `Vunb` float(255,2) DEFAULT NULL,
  PRIMARY KEY (`sxid`)
) ENGINE=InnoDB AUTO_INCREMENT=17811 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powersxdy_monitor
-- ----------------------------
INSERT INTO `powersxdy_monitor` VALUES ('1', '1', '2018-09-06 09:15:09', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('2', '1', '2018-09-06 09:15:09', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('3', '1', '2018-09-06 09:15:09', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('4', '1', '2018-09-06 09:15:09', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('5', '1', '2018-09-06 09:15:09', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('6', '1', '2018-09-06 09:15:28', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('7', '1', '2018-09-06 09:15:33', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('8', '1', '2018-09-06 09:15:38', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('9', '1', '2018-09-06 09:15:43', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('10', '1', '2018-09-06 09:15:48', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for powerxb_monitor
-- ----------------------------
DROP TABLE IF EXISTS `powerxb_monitor`;
CREATE TABLE `powerxb_monitor` (
  `xbid` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `U1xb_1` float(255,2) DEFAULT NULL,
  `U2xb_1` float(255,2) DEFAULT NULL,
  `U3xb_1` float(255,2) DEFAULT NULL,
  `U1va_1` float(255,2) DEFAULT NULL,
  `U2va_1` float(255,2) DEFAULT NULL,
  `U3va_1` float(255,2) DEFAULT NULL,
  `I1xb_1` float(255,2) DEFAULT NULL,
  `I2xb_1` float(255,2) DEFAULT NULL,
  `I3xb_1` float(255,2) DEFAULT NULL,
  `I1va_1` float(255,2) DEFAULT NULL,
  `I2va_1` float(255,2) DEFAULT NULL,
  `I3va_1` float(255,2) DEFAULT NULL,
  `U1xb_2` float(255,2) DEFAULT NULL,
  `U2xb_2` float(255,2) DEFAULT NULL,
  `U3xb_2` float(255,2) DEFAULT NULL,
  `U1va_2` float(255,2) DEFAULT NULL,
  `U2va_2` float(255,2) DEFAULT NULL,
  `U3va_2` float(255,2) DEFAULT NULL,
  `I1xb_2` float(255,2) DEFAULT NULL,
  `I2xb_2` float(255,2) DEFAULT NULL,
  `I3xb_2` float(255,2) DEFAULT NULL,
  `I1va_2` float(255,2) DEFAULT NULL,
  `I2va_2` float(255,2) DEFAULT NULL,
  `I3va_2` float(255,2) DEFAULT NULL,
  `U1xb_3` float(255,2) DEFAULT NULL,
  `U2xb_3` float(255,2) DEFAULT NULL,
  `U3xb_3` float(255,2) DEFAULT NULL,
  `U1va_3` float(255,2) DEFAULT NULL,
  `U2va_3` float(255,2) DEFAULT NULL,
  `U3va_3` float(255,2) DEFAULT NULL,
  `I1xb_3` float(255,2) DEFAULT NULL,
  `I2xb_3` float(255,2) DEFAULT NULL,
  `I3xb_3` float(255,2) DEFAULT NULL,
  `I1va_3` float(255,2) DEFAULT NULL,
  `I2va_3` float(255,2) DEFAULT NULL,
  `I3va_3` float(255,2) DEFAULT NULL,
  `U1xb_4` float(255,2) DEFAULT NULL,
  `U2xb_4` float(255,2) DEFAULT NULL,
  `U3xb_4` float(255,2) DEFAULT NULL,
  `U1va_4` float(255,2) DEFAULT NULL,
  `U2va_4` float(255,2) DEFAULT NULL,
  `U3va_4` float(255,2) DEFAULT NULL,
  `I1xb_4` float(255,2) DEFAULT NULL,
  `I2xb_4` float(255,2) DEFAULT NULL,
  `I3xb_4` float(255,2) DEFAULT NULL,
  `I1va_4` float(255,2) DEFAULT NULL,
  `I2va_4` float(255,2) DEFAULT NULL,
  `I3va_4` float(255,2) DEFAULT NULL,
  `U1xb_5` float(255,2) DEFAULT NULL,
  `U2xb_5` float(255,2) DEFAULT NULL,
  `U3xb_5` float(255,2) DEFAULT NULL,
  `U1va_5` float(255,2) DEFAULT NULL,
  `U2va_5` float(255,2) DEFAULT NULL,
  `U3va_5` float(255,2) DEFAULT NULL,
  `I1xb_5` float(255,2) DEFAULT NULL,
  `I2xb_5` float(255,2) DEFAULT NULL,
  `I3xb_5` float(255,2) DEFAULT NULL,
  `I1va_5` float(255,2) DEFAULT NULL,
  `I2va_5` float(255,2) DEFAULT NULL,
  `I3va_5` float(255,2) DEFAULT NULL,
  `U1xb_6` float(255,2) DEFAULT NULL,
  `U2xb_6` float(255,2) DEFAULT NULL,
  `U3xb_6` float(255,2) DEFAULT NULL,
  `U1va_6` float(255,2) DEFAULT NULL,
  `U2va_6` float(255,2) DEFAULT NULL,
  `U3va_6` float(255,2) DEFAULT NULL,
  `I1xb_6` float(255,2) DEFAULT NULL,
  `I2xb_6` float(255,2) DEFAULT NULL,
  `I3xb_6` float(255,2) DEFAULT NULL,
  `I1va_6` float(255,2) DEFAULT NULL,
  `I2va_6` float(255,2) DEFAULT NULL,
  `I3va_6` float(255,2) DEFAULT NULL,
  `U1xb_7` float(255,2) DEFAULT NULL,
  `U2xb_7` float(255,2) DEFAULT NULL,
  `U3xb_7` float(255,2) DEFAULT NULL,
  `U1va_7` float(255,2) DEFAULT NULL,
  `U2va_7` float(255,2) DEFAULT NULL,
  `U3va_7` float(255,2) DEFAULT NULL,
  `I1xb_7` float(255,2) DEFAULT NULL,
  `I2xb_7` float(255,2) DEFAULT NULL,
  `I3xb_7` float(255,2) DEFAULT NULL,
  `I1va_7` float(255,2) DEFAULT NULL,
  `I2va_7` float(255,2) DEFAULT NULL,
  `I3va_7` float(255,2) DEFAULT NULL,
  `U1xb_8` float(255,2) DEFAULT NULL,
  `U2xb_8` float(255,2) DEFAULT NULL,
  `U3xb_8` float(255,2) DEFAULT NULL,
  `U1va_8` float(255,2) DEFAULT NULL,
  `U2va_8` float(255,2) DEFAULT NULL,
  `U3va_8` float(255,2) DEFAULT NULL,
  `I1xb_8` float(255,2) DEFAULT NULL,
  `I2xb_8` float(255,2) DEFAULT NULL,
  `I3xb_8` float(255,2) DEFAULT NULL,
  `I1va_8` float(255,2) DEFAULT NULL,
  `I2va_8` float(255,2) DEFAULT NULL,
  `I3va_8` float(255,2) DEFAULT NULL,
  `U1xb_9` float(255,2) DEFAULT NULL,
  `U2xb_9` float(255,2) DEFAULT NULL,
  `U3xb_9` float(255,2) DEFAULT NULL,
  `U1va_9` float(255,2) DEFAULT NULL,
  `U2va_9` float(255,2) DEFAULT NULL,
  `U3va_9` float(255,2) DEFAULT NULL,
  `I1xb_9` float(255,2) DEFAULT NULL,
  `I2xb_9` float(255,2) DEFAULT NULL,
  `I3xb_9` float(255,2) DEFAULT NULL,
  `I1va_9` float(255,2) DEFAULT NULL,
  `I2va_9` float(255,2) DEFAULT NULL,
  `I3va_9` float(255,2) DEFAULT NULL,
  `U1xb_10` float(255,2) DEFAULT NULL,
  `U2xb_10` float(255,2) DEFAULT NULL,
  `U3xb_10` float(255,2) DEFAULT NULL,
  `U1va_10` float(255,2) DEFAULT NULL,
  `U2va_10` float(255,2) DEFAULT NULL,
  `U3va_10` float(255,2) DEFAULT NULL,
  `I1xb_10` float(255,2) DEFAULT NULL,
  `I2xb_10` float(255,2) DEFAULT NULL,
  `I3xb_10` float(255,2) DEFAULT NULL,
  `I1va_10` float(255,2) DEFAULT NULL,
  `I2va_10` float(255,2) DEFAULT NULL,
  `I3va_10` float(255,2) DEFAULT NULL,
  `U1xb_11` float(255,2) DEFAULT NULL,
  `U2xb_11` float(255,2) DEFAULT NULL,
  `U3xb_11` float(255,2) DEFAULT NULL,
  `U1va_11` float(255,2) DEFAULT NULL,
  `U2va_11` float(255,2) DEFAULT NULL,
  `U3va_11` float(255,2) DEFAULT NULL,
  `I1xb_11` float(255,2) DEFAULT NULL,
  `I2xb_11` float(255,2) DEFAULT NULL,
  `I3xb_11` float(255,2) DEFAULT NULL,
  `I1va_11` float(255,2) DEFAULT NULL,
  `I2va_11` float(255,2) DEFAULT NULL,
  `I3va_11` float(255,2) DEFAULT NULL,
  `U1xb_12` float(255,2) DEFAULT NULL,
  `U2xb_12` float(255,2) DEFAULT NULL,
  `U3xb_12` float(255,2) DEFAULT NULL,
  `U1va_12` float(255,2) DEFAULT NULL,
  `U2va_12` float(255,2) DEFAULT NULL,
  `U3va_12` float(255,2) DEFAULT NULL,
  `I1xb_12` float(255,2) DEFAULT NULL,
  `I2xb_12` float(255,2) DEFAULT NULL,
  `I3xb_12` float(255,2) DEFAULT NULL,
  `I1va_12` float(255,2) DEFAULT NULL,
  `I2va_12` float(255,2) DEFAULT NULL,
  `I3va_12` float(255,2) DEFAULT NULL,
  `U1xb_13` float(255,2) DEFAULT NULL,
  `U2xb_13` float(255,2) DEFAULT NULL,
  `U3xb_13` float(255,2) DEFAULT NULL,
  `U1va_13` float(255,2) DEFAULT NULL,
  `U2va_13` float(255,2) DEFAULT NULL,
  `U3va_13` float(255,2) DEFAULT NULL,
  `I1xb_13` float(255,2) DEFAULT NULL,
  `I2xb_13` float(255,2) DEFAULT NULL,
  `I3xb_13` float(255,2) DEFAULT NULL,
  `I1va_13` float(255,2) DEFAULT NULL,
  `I2va_13` float(255,2) DEFAULT NULL,
  `I3va_13` float(255,2) DEFAULT NULL,
  `U1xb_14` float(255,2) DEFAULT NULL,
  `U2xb_14` float(255,2) DEFAULT NULL,
  `U3xb_14` float(255,2) DEFAULT NULL,
  `U1va_14` float(255,2) DEFAULT NULL,
  `U2va_14` float(255,2) DEFAULT NULL,
  `U3va_14` float(255,2) DEFAULT NULL,
  `I1xb_14` float(255,2) DEFAULT NULL,
  `I2xb_14` float(255,2) DEFAULT NULL,
  `I3xb_14` float(255,2) DEFAULT NULL,
  `I1va_14` float(255,2) DEFAULT NULL,
  `I2va_14` float(255,2) DEFAULT NULL,
  `I3va_14` float(255,2) DEFAULT NULL,
  `U1xb_15` float(255,2) DEFAULT NULL,
  `U2xb_15` float(255,2) DEFAULT NULL,
  `U3xb_15` float(255,2) DEFAULT NULL,
  `U1va_15` float(255,2) DEFAULT NULL,
  `U2va_15` float(255,2) DEFAULT NULL,
  `U3va_15` float(255,2) DEFAULT NULL,
  `I1xb_15` float(255,2) DEFAULT NULL,
  `I2xb_15` float(255,2) DEFAULT NULL,
  `I3xb_15` float(255,2) DEFAULT NULL,
  `I1va_15` float(255,2) DEFAULT NULL,
  `I2va_15` float(255,2) DEFAULT NULL,
  `I3va_15` float(255,2) DEFAULT NULL,
  `U1xb_16` float(255,2) DEFAULT NULL,
  `U2xb_16` float(255,2) DEFAULT NULL,
  `U3xb_16` float(255,2) DEFAULT NULL,
  `U1va_16` float(255,2) DEFAULT NULL,
  `U2va_16` float(255,2) DEFAULT NULL,
  `U3va_16` float(255,2) DEFAULT NULL,
  `I1xb_16` float(255,2) DEFAULT NULL,
  `I2xb_16` float(255,2) DEFAULT NULL,
  `I3xb_16` float(255,2) DEFAULT NULL,
  `I1va_16` float(255,2) DEFAULT NULL,
  `I2va_16` float(255,2) DEFAULT NULL,
  `I3va_16` float(255,2) DEFAULT NULL,
  `U1xb_17` float(255,2) DEFAULT NULL,
  `U2xb_17` float(255,2) DEFAULT NULL,
  `U3xb_17` float(255,2) DEFAULT NULL,
  `U1va_17` float(255,2) DEFAULT NULL,
  `U2va_17` float(255,2) DEFAULT NULL,
  `U3va_17` float(255,2) DEFAULT NULL,
  `I1xb_17` float(255,2) DEFAULT NULL,
  `I2xb_17` float(255,2) DEFAULT NULL,
  `I3xb_17` float(255,2) DEFAULT NULL,
  `I1va_17` float(255,2) DEFAULT NULL,
  `I2va_17` float(255,2) DEFAULT NULL,
  `I3va_17` float(255,2) DEFAULT NULL,
  `U1xb_18` float(255,2) DEFAULT NULL,
  `U2xb_18` float(255,2) DEFAULT NULL,
  `U3xb_18` float(255,2) DEFAULT NULL,
  `U1va_18` float(255,2) DEFAULT NULL,
  `U2va_18` float(255,2) DEFAULT NULL,
  `U3va_18` float(255,2) DEFAULT NULL,
  `I1xb_18` float(255,2) DEFAULT NULL,
  `I2xb_18` float(255,2) DEFAULT NULL,
  `I3xb_18` float(255,2) DEFAULT NULL,
  `I1va_18` float(255,2) DEFAULT NULL,
  `I2va_18` float(255,2) DEFAULT NULL,
  `I3va_18` float(255,2) DEFAULT NULL,
  `U1xb_19` float(255,2) DEFAULT NULL,
  `U2xb_19` float(255,2) DEFAULT NULL,
  `U3xb_19` float(255,2) DEFAULT NULL,
  `U1va_19` float(255,2) DEFAULT NULL,
  `U2va_19` float(255,2) DEFAULT NULL,
  `U3va_19` float(255,2) DEFAULT NULL,
  `I1xb_19` float(255,2) DEFAULT NULL,
  `I2xb_19` float(255,2) DEFAULT NULL,
  `I3xb_19` float(255,2) DEFAULT NULL,
  `I1va_19` float(255,2) DEFAULT NULL,
  `I2va_19` float(255,2) DEFAULT NULL,
  `I3va_19` float(255,2) DEFAULT NULL,
  `U1xb_20` float(255,2) DEFAULT NULL,
  `U2xb_20` float(255,2) DEFAULT NULL,
  `U3xb_20` float(255,2) DEFAULT NULL,
  `U1va_20` float(255,2) DEFAULT NULL,
  `U2va_20` float(255,2) DEFAULT NULL,
  `U3va_20` float(255,2) DEFAULT NULL,
  `I1xb_20` float(255,2) DEFAULT NULL,
  `I2xb_20` float(255,2) DEFAULT NULL,
  `I3xb_20` float(255,2) DEFAULT NULL,
  `I1va_20` float(255,2) DEFAULT NULL,
  `I2va_20` float(255,2) DEFAULT NULL,
  `I3va_20` float(255,2) DEFAULT NULL,
  `U1xb_21` float(255,2) DEFAULT NULL,
  `U2xb_21` float(255,2) DEFAULT NULL,
  `U3xb_21` float(255,2) DEFAULT NULL,
  `U1va_21` float(255,2) DEFAULT NULL,
  `U2va_21` float(255,2) DEFAULT NULL,
  `U3va_21` float(255,2) DEFAULT NULL,
  `I1xb_21` float(255,2) DEFAULT NULL,
  `I2xb_21` float(255,2) DEFAULT NULL,
  `I3xb_21` float(255,2) DEFAULT NULL,
  `I1va_21` float(255,2) DEFAULT NULL,
  `I2va_21` float(255,2) DEFAULT NULL,
  `I3va_21` float(255,2) DEFAULT NULL,
  `U1xb_22` float(255,2) DEFAULT NULL,
  `U2xb_22` float(255,2) DEFAULT NULL,
  `U3xb_22` float(255,2) DEFAULT NULL,
  `U1va_22` float(255,2) DEFAULT NULL,
  `U2va_22` float(255,2) DEFAULT NULL,
  `U3va_22` float(255,2) DEFAULT NULL,
  `I1xb_22` float(255,2) DEFAULT NULL,
  `I2xb_22` float(255,2) DEFAULT NULL,
  `I3xb_22` float(255,2) DEFAULT NULL,
  `I1va_22` float(255,2) DEFAULT NULL,
  `I2va_22` float(255,2) DEFAULT NULL,
  `I3va_22` float(255,2) DEFAULT NULL,
  `U1xb_23` float(255,2) DEFAULT NULL,
  `U2xb_23` float(255,2) DEFAULT NULL,
  `U3xb_23` float(255,2) DEFAULT NULL,
  `U1va_23` float(255,2) DEFAULT NULL,
  `U2va_23` float(255,2) DEFAULT NULL,
  `U3va_23` float(255,2) DEFAULT NULL,
  `I1xb_23` float(255,2) DEFAULT NULL,
  `I2xb_23` float(255,2) DEFAULT NULL,
  `I3xb_23` float(255,2) DEFAULT NULL,
  `I1va_23` float(255,2) DEFAULT NULL,
  `I2va_23` float(255,2) DEFAULT NULL,
  `I3va_23` float(255,2) DEFAULT NULL,
  `U1xb_24` float(255,2) DEFAULT NULL,
  `U2xb_24` float(255,2) DEFAULT NULL,
  `U3xb_24` float(255,2) DEFAULT NULL,
  `U1va_24` float(255,2) DEFAULT NULL,
  `U2va_24` float(255,2) DEFAULT NULL,
  `U3va_24` float(255,2) DEFAULT NULL,
  `I1xb_24` float(255,2) DEFAULT NULL,
  `I2xb_24` float(255,2) DEFAULT NULL,
  `I3xb_24` float(255,2) DEFAULT NULL,
  `I1va_24` float(255,2) DEFAULT NULL,
  `I2va_24` float(255,2) DEFAULT NULL,
  `I3va_24` float(255,2) DEFAULT NULL,
  `U1xb_25` float(255,2) DEFAULT NULL,
  `U2xb_25` float(255,2) DEFAULT NULL,
  `U3xb_25` float(255,2) DEFAULT NULL,
  `U1va_25` float(255,2) DEFAULT NULL,
  `U2va_25` float(255,2) DEFAULT NULL,
  `U3va_25` float(255,2) DEFAULT NULL,
  `I1xb_25` float(255,2) DEFAULT NULL,
  `I2xb_25` float(255,2) DEFAULT NULL,
  `I3xb_25` float(255,2) DEFAULT NULL,
  `I1va_25` float(255,2) DEFAULT NULL,
  `I2va_25` float(255,2) DEFAULT NULL,
  `I3va_25` float(255,2) DEFAULT NULL,
  `U1xb_26` float(255,2) DEFAULT NULL,
  `U2xb_26` float(255,2) DEFAULT NULL,
  `U3xb_26` float(255,2) DEFAULT NULL,
  `U1va_26` float(255,2) DEFAULT NULL,
  `U2va_26` float(255,2) DEFAULT NULL,
  `U3va_26` float(255,2) DEFAULT NULL,
  `I1xb_26` float(255,2) DEFAULT NULL,
  `I2xb_26` float(255,2) DEFAULT NULL,
  `I3xb_26` float(255,2) DEFAULT NULL,
  `I1va_26` float(255,2) DEFAULT NULL,
  `I2va_26` float(255,2) DEFAULT NULL,
  `I3va_26` float(255,2) DEFAULT NULL,
  `U1xb_27` float(255,2) DEFAULT NULL,
  `U2xb_27` float(255,2) DEFAULT NULL,
  `U3xb_27` float(255,2) DEFAULT NULL,
  `U1va_27` float(255,2) DEFAULT NULL,
  `U2va_27` float(255,2) DEFAULT NULL,
  `U3va_27` float(255,2) DEFAULT NULL,
  `I1xb_27` float(255,2) DEFAULT NULL,
  `I2xb_27` float(255,2) DEFAULT NULL,
  `I3xb_27` float(255,2) DEFAULT NULL,
  `I1va_27` float(255,2) DEFAULT NULL,
  `I2va_27` float(255,2) DEFAULT NULL,
  `I3va_27` float(255,2) DEFAULT NULL,
  `U1xb_28` float(255,2) DEFAULT NULL,
  `U2xb_28` float(255,2) DEFAULT NULL,
  `U3xb_28` float(255,2) DEFAULT NULL,
  `U1va_28` float(255,2) DEFAULT NULL,
  `U2va_28` float(255,2) DEFAULT NULL,
  `U3va_28` float(255,2) DEFAULT NULL,
  `I1xb_28` float(255,2) DEFAULT NULL,
  `I2xb_28` float(255,2) DEFAULT NULL,
  `I3xb_28` float(255,2) DEFAULT NULL,
  `I1va_28` float(255,2) DEFAULT NULL,
  `I2va_28` float(255,2) DEFAULT NULL,
  `I3va_28` float(255,2) DEFAULT NULL,
  `U1xb_29` float(255,2) DEFAULT NULL,
  `U2xb_29` float(255,2) DEFAULT NULL,
  `U3xb_29` float(255,2) DEFAULT NULL,
  `U1va_29` float(255,2) DEFAULT NULL,
  `U2va_29` float(255,2) DEFAULT NULL,
  `U3va_29` float(255,2) DEFAULT NULL,
  `I1xb_29` float(255,2) DEFAULT NULL,
  `I2xb_29` float(255,2) DEFAULT NULL,
  `I3xb_29` float(255,2) DEFAULT NULL,
  `I1va_29` float(255,2) DEFAULT NULL,
  `I2va_29` float(255,2) DEFAULT NULL,
  `I3va_29` float(255,2) DEFAULT NULL,
  `U1xb_30` float(255,2) DEFAULT NULL,
  `U2xb_30` float(255,2) DEFAULT NULL,
  `U3xb_30` float(255,2) DEFAULT NULL,
  `U1va_30` float(255,2) DEFAULT NULL,
  `U2va_30` float(255,2) DEFAULT NULL,
  `U3va_30` float(255,2) DEFAULT NULL,
  `I1xb_30` float(255,2) DEFAULT NULL,
  `I2xb_30` float(255,2) DEFAULT NULL,
  `I3xb_30` float(255,2) DEFAULT NULL,
  `I1va_30` float(255,2) DEFAULT NULL,
  `I2va_30` float(255,2) DEFAULT NULL,
  `I3va_30` float(255,2) DEFAULT NULL,
  `U1xb_31` float(255,2) DEFAULT NULL,
  `U2xb_31` float(255,2) DEFAULT NULL,
  `U3xb_31` float(255,2) DEFAULT NULL,
  `U1va_31` float(255,2) DEFAULT NULL,
  `U2va_31` float(255,2) DEFAULT NULL,
  `U3va_31` float(255,2) DEFAULT NULL,
  `I1xb_31` float(255,2) DEFAULT NULL,
  `I2xb_31` float(255,2) DEFAULT NULL,
  `I3xb_31` float(255,2) DEFAULT NULL,
  `I1va_31` float(255,2) DEFAULT NULL,
  `I2va_31` float(255,2) DEFAULT NULL,
  `I3va_31` float(255,2) DEFAULT NULL,
  `U1xb_32` float(255,2) DEFAULT NULL,
  `U2xb_32` float(255,2) DEFAULT NULL,
  `U3xb_32` float(255,2) DEFAULT NULL,
  `U1va_32` float(255,2) DEFAULT NULL,
  `U2va_32` float(255,2) DEFAULT NULL,
  `U3va_32` float(255,2) DEFAULT NULL,
  `I1xb_32` float(255,2) DEFAULT NULL,
  `I2xb_32` float(255,2) DEFAULT NULL,
  `I3xb_32` float(255,2) DEFAULT NULL,
  `I1va_32` float(255,2) DEFAULT NULL,
  `I2va_32` float(255,2) DEFAULT NULL,
  `I3va_32` float(255,2) DEFAULT NULL,
  `U1xb_33` float(255,2) DEFAULT NULL,
  `U2xb_33` float(255,2) DEFAULT NULL,
  `U3xb_33` float(255,2) DEFAULT NULL,
  `U1va_33` float(255,2) DEFAULT NULL,
  `U2va_33` float(255,2) DEFAULT NULL,
  `U3va_33` float(255,2) DEFAULT NULL,
  `I1xb_33` float(255,2) DEFAULT NULL,
  `I2xb_33` float(255,2) DEFAULT NULL,
  `I3xb_33` float(255,2) DEFAULT NULL,
  `I1va_33` float(255,2) DEFAULT NULL,
  `I2va_33` float(255,2) DEFAULT NULL,
  `I3va_33` float(255,2) DEFAULT NULL,
  `U1xb_34` float(255,2) DEFAULT NULL,
  `U2xb_34` float(255,2) DEFAULT NULL,
  `U3xb_34` float(255,2) DEFAULT NULL,
  `U1va_34` float(255,2) DEFAULT NULL,
  `U2va_34` float(255,2) DEFAULT NULL,
  `U3va_34` float(255,2) DEFAULT NULL,
  `I1xb_34` float(255,2) DEFAULT NULL,
  `I2xb_34` float(255,2) DEFAULT NULL,
  `I3xb_34` float(255,2) DEFAULT NULL,
  `I1va_34` float(255,2) DEFAULT NULL,
  `I2va_34` float(255,2) DEFAULT NULL,
  `I3va_34` float(255,2) DEFAULT NULL,
  `U1xb_35` float(255,2) DEFAULT NULL,
  `U2xb_35` float(255,2) DEFAULT NULL,
  `U3xb_35` float(255,2) DEFAULT NULL,
  `U1va_35` float(255,2) DEFAULT NULL,
  `U2va_35` float(255,2) DEFAULT NULL,
  `U3va_35` float(255,2) DEFAULT NULL,
  `I1xb_35` float(255,2) DEFAULT NULL,
  `I2xb_35` float(255,2) DEFAULT NULL,
  `I3xb_35` float(255,2) DEFAULT NULL,
  `I1va_35` float(255,2) DEFAULT NULL,
  `I2va_35` float(255,2) DEFAULT NULL,
  `I3va_35` float(255,2) DEFAULT NULL,
  `U1xb_36` float(255,2) DEFAULT NULL,
  `U2xb_36` float(255,2) DEFAULT NULL,
  `U3xb_36` float(255,2) DEFAULT NULL,
  `U1va_36` float(255,2) DEFAULT NULL,
  `U2va_36` float(255,2) DEFAULT NULL,
  `U3va_36` float(255,2) DEFAULT NULL,
  `I1xb_36` float(255,2) DEFAULT NULL,
  `I2xb_36` float(255,2) DEFAULT NULL,
  `I3xb_36` float(255,2) DEFAULT NULL,
  `I1va_36` float(255,2) DEFAULT NULL,
  `I2va_36` float(255,2) DEFAULT NULL,
  `I3va_36` float(255,2) DEFAULT NULL,
  `U1xb_37` float(255,2) DEFAULT NULL,
  `U2xb_37` float(255,2) DEFAULT NULL,
  `U3xb_37` float(255,2) DEFAULT NULL,
  `U1va_37` float(255,2) DEFAULT NULL,
  `U2va_37` float(255,2) DEFAULT NULL,
  `U3va_37` float(255,2) DEFAULT NULL,
  `I1xb_37` float(255,2) DEFAULT NULL,
  `I2xb_37` float(255,2) DEFAULT NULL,
  `I3xb_37` float(255,2) DEFAULT NULL,
  `I1va_37` float(255,2) DEFAULT NULL,
  `I2va_37` float(255,2) DEFAULT NULL,
  `I3va_37` float(255,2) DEFAULT NULL,
  `U1xb_38` float(255,2) DEFAULT NULL,
  `U2xb_38` float(255,2) DEFAULT NULL,
  `U3xb_38` float(255,2) DEFAULT NULL,
  `U1va_38` float(255,2) DEFAULT NULL,
  `U2va_38` float(255,2) DEFAULT NULL,
  `U3va_38` float(255,2) DEFAULT NULL,
  `I1xb_38` float(255,2) DEFAULT NULL,
  `I2xb_38` float(255,2) DEFAULT NULL,
  `I3xb_38` float(255,2) DEFAULT NULL,
  `I1va_38` float(255,2) DEFAULT NULL,
  `I2va_38` float(255,2) DEFAULT NULL,
  `I3va_38` float(255,2) DEFAULT NULL,
  `U1xb_39` float(255,2) DEFAULT NULL,
  `U2xb_39` float(255,2) DEFAULT NULL,
  `U3xb_39` float(255,2) DEFAULT NULL,
  `U1va_39` float(255,2) DEFAULT NULL,
  `U2va_39` float(255,2) DEFAULT NULL,
  `U3va_39` float(255,2) DEFAULT NULL,
  `I1xb_39` float(255,2) DEFAULT NULL,
  `I2xb_39` float(255,2) DEFAULT NULL,
  `I3xb_39` float(255,2) DEFAULT NULL,
  `I1va_39` float(255,2) DEFAULT NULL,
  `I2va_39` float(255,2) DEFAULT NULL,
  `I3va_39` float(255,2) DEFAULT NULL,
  `U1xb_40` float(255,2) DEFAULT NULL,
  `U2xb_40` float(255,2) DEFAULT NULL,
  `U3xb_40` float(255,2) DEFAULT NULL,
  `U1va_40` float(255,2) DEFAULT NULL,
  `U2va_40` float(255,2) DEFAULT NULL,
  `U3va_40` float(255,2) DEFAULT NULL,
  `I1xb_40` float(255,2) DEFAULT NULL,
  `I2xb_40` float(255,2) DEFAULT NULL,
  `I3xb_40` float(255,2) DEFAULT NULL,
  `I1va_40` float(255,2) DEFAULT NULL,
  `I2va_40` float(255,2) DEFAULT NULL,
  `I3va_40` float(255,2) DEFAULT NULL,
  `U1xb_41` float(255,2) DEFAULT NULL,
  `U2xb_41` float(255,2) DEFAULT NULL,
  `U3xb_41` float(255,2) DEFAULT NULL,
  `U1va_41` float(255,2) DEFAULT NULL,
  `U2va_41` float(255,2) DEFAULT NULL,
  `U3va_41` float(255,2) DEFAULT NULL,
  `I1xb_41` float(255,2) DEFAULT NULL,
  `I2xb_41` float(255,2) DEFAULT NULL,
  `I3xb_41` float(255,2) DEFAULT NULL,
  `I1va_41` float(255,2) DEFAULT NULL,
  `I2va_41` float(255,2) DEFAULT NULL,
  `I3va_41` float(255,2) DEFAULT NULL,
  `U1xb_42` float(255,2) DEFAULT NULL,
  `U2xb_42` float(255,2) DEFAULT NULL,
  `U3xb_42` float(255,2) DEFAULT NULL,
  `U1va_42` float(255,2) DEFAULT NULL,
  `U2va_42` float(255,2) DEFAULT NULL,
  `U3va_42` float(255,2) DEFAULT NULL,
  `I1xb_42` float(255,2) DEFAULT NULL,
  `I2xb_42` float(255,2) DEFAULT NULL,
  `I3xb_42` float(255,2) DEFAULT NULL,
  `I1va_42` float(255,2) DEFAULT NULL,
  `I2va_42` float(255,2) DEFAULT NULL,
  `I3va_42` float(255,2) DEFAULT NULL,
  `U1xb_43` float(255,2) DEFAULT NULL,
  `U2xb_43` float(255,2) DEFAULT NULL,
  `U3xb_43` float(255,2) DEFAULT NULL,
  `U1va_43` float(255,2) DEFAULT NULL,
  `U2va_43` float(255,2) DEFAULT NULL,
  `U3va_43` float(255,2) DEFAULT NULL,
  `I1xb_43` float(255,2) DEFAULT NULL,
  `I2xb_43` float(255,2) DEFAULT NULL,
  `I3xb_43` float(255,2) DEFAULT NULL,
  `I1va_43` float(255,2) DEFAULT NULL,
  `I2va_43` float(255,2) DEFAULT NULL,
  `I3va_43` float(255,2) DEFAULT NULL,
  `U1xb_44` float(255,2) DEFAULT NULL,
  `U2xb_44` float(255,2) DEFAULT NULL,
  `U3xb_44` float(255,2) DEFAULT NULL,
  `U1va_44` float(255,2) DEFAULT NULL,
  `U2va_44` float(255,2) DEFAULT NULL,
  `U3va_44` float(255,2) DEFAULT NULL,
  `I1xb_44` float(255,2) DEFAULT NULL,
  `I2xb_44` float(255,2) DEFAULT NULL,
  `I3xb_44` float(255,2) DEFAULT NULL,
  `I1va_44` float(255,2) DEFAULT NULL,
  `I2va_44` float(255,2) DEFAULT NULL,
  `I3va_44` float(255,2) DEFAULT NULL,
  `U1xb_45` float(255,2) DEFAULT NULL,
  `U2xb_45` float(255,2) DEFAULT NULL,
  `U3xb_45` float(255,2) DEFAULT NULL,
  `U1va_45` float(255,2) DEFAULT NULL,
  `U2va_45` float(255,2) DEFAULT NULL,
  `U3va_45` float(255,2) DEFAULT NULL,
  `I1xb_45` float(255,2) DEFAULT NULL,
  `I2xb_45` float(255,2) DEFAULT NULL,
  `I3xb_45` float(255,2) DEFAULT NULL,
  `I1va_45` float(255,2) DEFAULT NULL,
  `I2va_45` float(255,2) DEFAULT NULL,
  `I3va_45` float(255,2) DEFAULT NULL,
  `U1xb_46` float(255,2) DEFAULT NULL,
  `U2xb_46` float(255,2) DEFAULT NULL,
  `U3xb_46` float(255,2) DEFAULT NULL,
  `U1va_46` float(255,2) DEFAULT NULL,
  `U2va_46` float(255,2) DEFAULT NULL,
  `U3va_46` float(255,2) DEFAULT NULL,
  `I1xb_46` float(255,2) DEFAULT NULL,
  `I2xb_46` float(255,2) DEFAULT NULL,
  `I3xb_46` float(255,2) DEFAULT NULL,
  `I1va_46` float(255,2) DEFAULT NULL,
  `I2va_46` float(255,2) DEFAULT NULL,
  `I3va_46` float(255,2) DEFAULT NULL,
  `U1xb_47` float(255,2) DEFAULT NULL,
  `U2xb_47` float(255,2) DEFAULT NULL,
  `U3xb_47` float(255,2) DEFAULT NULL,
  `U1va_47` float(255,2) DEFAULT NULL,
  `U2va_47` float(255,2) DEFAULT NULL,
  `U3va_47` float(255,2) DEFAULT NULL,
  `I1xb_47` float(255,2) DEFAULT NULL,
  `I2xb_47` float(255,2) DEFAULT NULL,
  `I3xb_47` float(255,2) DEFAULT NULL,
  `I1va_47` float(255,2) DEFAULT NULL,
  `I2va_47` float(255,2) DEFAULT NULL,
  `I3va_47` float(255,2) DEFAULT NULL,
  `U1xb_48` float(255,2) DEFAULT NULL,
  `U2xb_48` float(255,2) DEFAULT NULL,
  `U3xb_48` float(255,2) DEFAULT NULL,
  `U1va_48` float(255,2) DEFAULT NULL,
  `U2va_48` float(255,2) DEFAULT NULL,
  `U3va_48` float(255,2) DEFAULT NULL,
  `I1xb_48` float(255,2) DEFAULT NULL,
  `I2xb_48` float(255,2) DEFAULT NULL,
  `I3xb_48` float(255,2) DEFAULT NULL,
  `I1va_48` float(255,2) DEFAULT NULL,
  `I2va_48` float(255,2) DEFAULT NULL,
  `I3va_48` float(255,2) DEFAULT NULL,
  `U1xb_49` float(255,2) DEFAULT NULL,
  `U2xb_49` float(255,2) DEFAULT NULL,
  `U3xb_49` float(255,2) DEFAULT NULL,
  `U1va_49` float(255,2) DEFAULT NULL,
  `U2va_49` float(255,2) DEFAULT NULL,
  `U3va_49` float(255,2) DEFAULT NULL,
  `I1xb_49` float(255,2) DEFAULT NULL,
  `I2xb_49` float(255,2) DEFAULT NULL,
  `I3xb_49` float(255,2) DEFAULT NULL,
  `I1va_49` float(255,2) DEFAULT NULL,
  `I2va_49` float(255,2) DEFAULT NULL,
  `I3va_49` float(255,2) DEFAULT NULL,
  `U1xb_50` float(255,2) DEFAULT NULL,
  `U2xb_50` float(255,2) DEFAULT NULL,
  `U3xb_50` float(255,2) DEFAULT NULL,
  `U1va_50` float(255,2) DEFAULT NULL,
  `U2va_50` float(255,2) DEFAULT NULL,
  `U3va_50` float(255,2) DEFAULT NULL,
  `I1xb_50` float(255,2) DEFAULT NULL,
  `I2xb_50` float(255,2) DEFAULT NULL,
  `I3xb_50` float(255,2) DEFAULT NULL,
  `I1va_50` float(255,2) DEFAULT NULL,
  `I2va_50` float(255,2) DEFAULT NULL,
  `I3va_50` float(255,2) DEFAULT NULL,
  PRIMARY KEY (`xbid`)
) ENGINE=InnoDB AUTO_INCREMENT=19950 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powerxb_monitor
-- ----------------------------
INSERT INTO `powerxb_monitor` VALUES ('1', '1', '2018-09-06 10:20:24', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('2', '1', '2018-09-06 10:20:29', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('3', '1', '2018-09-06 10:20:35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('4', '1', '2018-09-06 10:20:39', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('5', '1', '2018-09-06 10:20:44', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('6', '1', '2018-09-06 10:20:49', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('7', '1', '2018-09-06 10:20:54', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('8', '1', '2018-09-06 10:20:59', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('9', '1', '2018-09-06 10:21:05', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('10', '1', '2018-09-06 10:21:09', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('11', '1', '2018-09-06 10:21:14', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('12', '1', '2018-09-06 10:21:19', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('13', '1', '2018-09-06 10:21:25', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for province_bank
-- ----------------------------
DROP TABLE IF EXISTS `province_bank`;
CREATE TABLE `province_bank` (
  `pbid` varchar(255) NOT NULL,
  `pbname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cbidset` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`pbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of province_bank
-- ----------------------------
INSERT INTO `province_bank` VALUES ('100', '台湾分行', '1001');
INSERT INTO `province_bank` VALUES ('110', '安徽分行', null);
INSERT INTO `province_bank` VALUES ('120', '福建分行', null);
INSERT INTO `province_bank` VALUES ('130', '江西分行', null);
INSERT INTO `province_bank` VALUES ('140', '山东分行', '1401');
INSERT INTO `province_bank` VALUES ('150', '河南分行', '1501');
INSERT INTO `province_bank` VALUES ('160', '湖北分行', null);
INSERT INTO `province_bank` VALUES ('170', '湖南分行', null);
INSERT INTO `province_bank` VALUES ('180', '广东分行', null);
INSERT INTO `province_bank` VALUES ('190', '广西分行', null);
INSERT INTO `province_bank` VALUES ('200', '河北分行', '2001，2002，2003');
INSERT INTO `province_bank` VALUES ('210', '海南分行', null);
INSERT INTO `province_bank` VALUES ('220', '四川分行', null);
INSERT INTO `province_bank` VALUES ('230', '贵州分行', null);
INSERT INTO `province_bank` VALUES ('240', '云南分行', null);
INSERT INTO `province_bank` VALUES ('250', '西藏分行', null);
INSERT INTO `province_bank` VALUES ('260', '陕西分行', null);
INSERT INTO `province_bank` VALUES ('270', '甘肃分行', null);
INSERT INTO `province_bank` VALUES ('280', '青海分行', null);
INSERT INTO `province_bank` VALUES ('290', '宁夏分行', null);
INSERT INTO `province_bank` VALUES ('300', '山西分行', '3001，3002，3003');
INSERT INTO `province_bank` VALUES ('310', '新疆分行', null);
INSERT INTO `province_bank` VALUES ('320', '北京分行', null);
INSERT INTO `province_bank` VALUES ('330', '天津分行', null);
INSERT INTO `province_bank` VALUES ('340', '上海分行', null);
INSERT INTO `province_bank` VALUES ('350', '重庆分行', null);
INSERT INTO `province_bank` VALUES ('360', '香港分行', null);
INSERT INTO `province_bank` VALUES ('370', '澳门分行', null);
INSERT INTO `province_bank` VALUES ('400', '内蒙古分行', '4001，');
INSERT INTO `province_bank` VALUES ('500', '辽宁分行', null);
INSERT INTO `province_bank` VALUES ('600', '吉林分行', null);
INSERT INTO `province_bank` VALUES ('700', '黑龙江分行', null);
INSERT INTO `province_bank` VALUES ('800', '江苏分行', null);
INSERT INTO `province_bank` VALUES ('900', '浙江分行', null);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `rid` varchar(255) NOT NULL COMMENT 'auto_increment=true',
  `rolesname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `extra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '管理员', null);
INSERT INTO `roles` VALUES ('2', '技术人员', null);
INSERT INTO `roles` VALUES ('3', '运维人员', null);

-- ----------------------------
-- Table structure for roles_permission
-- ----------------------------
DROP TABLE IF EXISTS `roles_permission`;
CREATE TABLE `roles_permission` (
  `rid` varchar(255) NOT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles_permission
-- ----------------------------
INSERT INTO `roles_permission` VALUES ('1', '1,2,3,4,5,6,7,8');
INSERT INTO `roles_permission` VALUES ('2', '3,5');
INSERT INTO `roles_permission` VALUES ('3', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `chinesename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `govtelephone` varchar(11) DEFAULT NULL,
  `pbid` varchar(255) DEFAULT NULL,
  `cbid` varchar(255) DEFAULT NULL,
  `rid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '周小川', 'E10ADC3949BA59ABBE56E057F20F883E', '', '', null, null, '1');
INSERT INTO `user` VALUES ('2', 'test2', null, 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, null, null);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `uid` varchar(255) NOT NULL,
  `rid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('1', '1');
INSERT INTO `user_roles` VALUES ('2', '2');
INSERT INTO `user_roles` VALUES ('3', '3');
INSERT INTO `user_roles` VALUES ('5', '1');
INSERT INTO `user_roles` VALUES ('6', '1');
