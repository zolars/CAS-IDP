/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-10-30 16:01:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assess_record
-- ----------------------------
DROP TABLE IF EXISTS `assess_record`;
CREATE TABLE `assess_record` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) DEFAULT NULL,
  `degree` int(11) DEFAULT NULL,
  `teid` int(11) DEFAULT NULL,
  `eventclass` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=7571 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of assess_record
-- ----------------------------

-- ----------------------------
-- Table structure for basic_setting
-- ----------------------------
DROP TABLE IF EXISTS `basic_setting`;
CREATE TABLE `basic_setting` (
  `id` int(11) NOT NULL,
  `onlineinterval` int(11) DEFAULT '0',
  `thansentinterval` int(11) DEFAULT NULL,
  `uploadinterval` int(11) DEFAULT NULL,
  `qstinterval` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic_setting
-- ----------------------------
INSERT INTO `basic_setting` VALUES ('0', '1', '5', '1', '5');

-- ----------------------------
-- Table structure for city_bank
-- ----------------------------
DROP TABLE IF EXISTS `city_bank`;
CREATE TABLE `city_bank` (
  `cbid` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cbname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `compRoom` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `didset` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tempset` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`cbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of city_bank
-- ----------------------------
INSERT INTO `city_bank` VALUES ('1001', '台北分行', '', null, null);
INSERT INTO `city_bank` VALUES ('1501', '郑州分行', '', null, null);
INSERT INTO `city_bank` VALUES ('2001', '石家庄分行', '10001，10002', null, null);
INSERT INTO `city_bank` VALUES ('2002', '廊坊分行', '10003，10004', null, null);
INSERT INTO `city_bank` VALUES ('2003', '秦皇岛分行', '10005', null, null);
INSERT INTO `city_bank` VALUES ('3001', '太原分行', '', null, null);
INSERT INTO `city_bank` VALUES ('3002', '大同分行', '', null, null);
INSERT INTO `city_bank` VALUES ('3003', '朔州分行', '', null, null);

-- ----------------------------
-- Table structure for computerroom
-- ----------------------------
DROP TABLE IF EXISTS `computerroom`;
CREATE TABLE `computerroom` (
  `rid` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `didset` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tempset` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of computerroom
-- ----------------------------
INSERT INTO `computerroom` VALUES ('10001', '1号机房', '1，2', '2');
INSERT INTO `computerroom` VALUES ('10002', '2号机房', '', null);
INSERT INTO `computerroom` VALUES ('10003', '3号机房', null, null);
INSERT INTO `computerroom` VALUES ('10004', '4号机房', null, null);
INSERT INTO `computerroom` VALUES ('10005', '5号机房', null, null);
INSERT INTO `computerroom` VALUES ('10006', '6号机房', null, null);

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
  `did` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `devicetype` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `serialno` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `IPaddress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `port` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isSMS` int(11) DEFAULT NULL,
  `isAlart` int(11) DEFAULT NULL,
  `isPlartform` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of devices
-- ----------------------------
INSERT INTO `devices` VALUES ('1', 'IDP1', '以太网', 'IDP', 'QFEF221321', '192.168.1.240', '502', '6000', '1', '1', '0');
INSERT INTO `devices` VALUES ('2', 'temp1', 'RS485', 'temp', 'ppp', '192.168.0.131', '90', '90', '1', '1', '1');
INSERT INTO `devices` VALUES ('3', 'ctrl', 'RS485', 'ctrl', '', '192.168.0.11', '11', '', '1', '1', '1');

-- ----------------------------
-- Table structure for devices_standard
-- ----------------------------
DROP TABLE IF EXISTS `devices_standard`;
CREATE TABLE `devices_standard` (
  `cid` int(11) NOT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devices_standard
-- ----------------------------
INSERT INTO `devices_standard` VALUES ('24', '2');
INSERT INTO `devices_standard` VALUES ('25', '2');
INSERT INTO `devices_standard` VALUES ('26', '2');
INSERT INTO `devices_standard` VALUES ('27', '2');
INSERT INTO `devices_standard` VALUES ('28', '2');
INSERT INTO `devices_standard` VALUES ('29', '2');
INSERT INTO `devices_standard` VALUES ('30', '2');
INSERT INTO `devices_standard` VALUES ('31', '2');
INSERT INTO `devices_standard` VALUES ('32', '2');
INSERT INTO `devices_standard` VALUES ('33', '2');
INSERT INTO `devices_standard` VALUES ('34', '2');
INSERT INTO `devices_standard` VALUES ('35', '2');
INSERT INTO `devices_standard` VALUES ('36', '2');
INSERT INTO `devices_standard` VALUES ('37', '2');
INSERT INTO `devices_standard` VALUES ('38', '2');
INSERT INTO `devices_standard` VALUES ('39', '2');
INSERT INTO `devices_standard` VALUES ('40', '2');
INSERT INTO `devices_standard` VALUES ('41', '2');
INSERT INTO `devices_standard` VALUES ('42', '2');
INSERT INTO `devices_standard` VALUES ('43', '2');
INSERT INTO `devices_standard` VALUES ('44', '2');
INSERT INTO `devices_standard` VALUES ('45', '2');
INSERT INTO `devices_standard` VALUES ('46', '2');
INSERT INTO `devices_standard` VALUES ('47', '2');
INSERT INTO `devices_standard` VALUES ('48', '2');
INSERT INTO `devices_standard` VALUES ('49', '2');
INSERT INTO `devices_standard` VALUES ('50', '2');
INSERT INTO `devices_standard` VALUES ('51', '2');
INSERT INTO `devices_standard` VALUES ('52', '2');
INSERT INTO `devices_standard` VALUES ('53', '2');
INSERT INTO `devices_standard` VALUES ('54', '2');
INSERT INTO `devices_standard` VALUES ('55', '2');
INSERT INTO `devices_standard` VALUES ('56', '2');
INSERT INTO `devices_standard` VALUES ('57', '2');
INSERT INTO `devices_standard` VALUES ('58', '2');
INSERT INTO `devices_standard` VALUES ('59', '2');
INSERT INTO `devices_standard` VALUES ('60', '2');
INSERT INTO `devices_standard` VALUES ('61', '2');
INSERT INTO `devices_standard` VALUES ('62', '2');
INSERT INTO `devices_standard` VALUES ('63', '2');
INSERT INTO `devices_standard` VALUES ('64', '2');
INSERT INTO `devices_standard` VALUES ('65', '2');
INSERT INTO `devices_standard` VALUES ('66', '2');
INSERT INTO `devices_standard` VALUES ('67', '2');
INSERT INTO `devices_standard` VALUES ('68', '2');
INSERT INTO `devices_standard` VALUES ('69', '2');
INSERT INTO `devices_standard` VALUES ('70', '2');
INSERT INTO `devices_standard` VALUES ('71', '2');
INSERT INTO `devices_standard` VALUES ('72', '2');
INSERT INTO `devices_standard` VALUES ('73', '2');
INSERT INTO `devices_standard` VALUES ('74', '2');
INSERT INTO `devices_standard` VALUES ('75', '2');
INSERT INTO `devices_standard` VALUES ('76', '2');
INSERT INTO `devices_standard` VALUES ('77', '2');
INSERT INTO `devices_standard` VALUES ('78', '2');
INSERT INTO `devices_standard` VALUES ('79', '2');
INSERT INTO `devices_standard` VALUES ('80', '2');
INSERT INTO `devices_standard` VALUES ('81', '2');
INSERT INTO `devices_standard` VALUES ('82', '2');
INSERT INTO `devices_standard` VALUES ('83', '2');
INSERT INTO `devices_standard` VALUES ('84', '2');
INSERT INTO `devices_standard` VALUES ('85', '2');
INSERT INTO `devices_standard` VALUES ('86', '2');
INSERT INTO `devices_standard` VALUES ('87', '2');
INSERT INTO `devices_standard` VALUES ('88', '2');
INSERT INTO `devices_standard` VALUES ('89', '2');
INSERT INTO `devices_standard` VALUES ('90', '2');
INSERT INTO `devices_standard` VALUES ('91', '2');
INSERT INTO `devices_standard` VALUES ('92', '2');
INSERT INTO `devices_standard` VALUES ('93', '2');
INSERT INTO `devices_standard` VALUES ('94', '2');
INSERT INTO `devices_standard` VALUES ('95', '2');
INSERT INTO `devices_standard` VALUES ('96', '2');
INSERT INTO `devices_standard` VALUES ('97', '2');
INSERT INTO `devices_standard` VALUES ('98', '2');
INSERT INTO `devices_standard` VALUES ('99', '2');
INSERT INTO `devices_standard` VALUES ('100', '2');
INSERT INTO `devices_standard` VALUES ('101', '2');
INSERT INTO `devices_standard` VALUES ('102', '2');
INSERT INTO `devices_standard` VALUES ('103', '2');
INSERT INTO `devices_standard` VALUES ('104', '2');
INSERT INTO `devices_standard` VALUES ('105', '2');
INSERT INTO `devices_standard` VALUES ('106', '2');
INSERT INTO `devices_standard` VALUES ('107', '2');
INSERT INTO `devices_standard` VALUES ('108', '2');
INSERT INTO `devices_standard` VALUES ('109', '2');
INSERT INTO `devices_standard` VALUES ('110', '2');
INSERT INTO `devices_standard` VALUES ('111', '2');
INSERT INTO `devices_standard` VALUES ('112', '2');
INSERT INTO `devices_standard` VALUES ('113', '2');
INSERT INTO `devices_standard` VALUES ('114', '2');
INSERT INTO `devices_standard` VALUES ('115', '2');
INSERT INTO `devices_standard` VALUES ('116', '2');
INSERT INTO `devices_standard` VALUES ('117', '2');
INSERT INTO `devices_standard` VALUES ('118', '2');
INSERT INTO `devices_standard` VALUES ('119', '2');
INSERT INTO `devices_standard` VALUES ('120', '2');
INSERT INTO `devices_standard` VALUES ('121', '2');
INSERT INTO `devices_standard` VALUES ('122', '2');
INSERT INTO `devices_standard` VALUES ('123', '2');
INSERT INTO `devices_standard` VALUES ('124', '2');
INSERT INTO `devices_standard` VALUES ('125', '2');
INSERT INTO `devices_standard` VALUES ('126', '2');
INSERT INTO `devices_standard` VALUES ('127', '2');
INSERT INTO `devices_standard` VALUES ('128', '2');
INSERT INTO `devices_standard` VALUES ('129', '2');
INSERT INTO `devices_standard` VALUES ('130', '2');
INSERT INTO `devices_standard` VALUES ('131', '2');
INSERT INTO `devices_standard` VALUES ('132', '2');
INSERT INTO `devices_standard` VALUES ('133', '2');
INSERT INTO `devices_standard` VALUES ('134', '2');
INSERT INTO `devices_standard` VALUES ('135', '2');
INSERT INTO `devices_standard` VALUES ('136', '2');
INSERT INTO `devices_standard` VALUES ('137', '2');
INSERT INTO `devices_standard` VALUES ('138', '2');
INSERT INTO `devices_standard` VALUES ('139', '2');
INSERT INTO `devices_standard` VALUES ('140', '2');
INSERT INTO `devices_standard` VALUES ('141', '2');
INSERT INTO `devices_standard` VALUES ('142', '2');
INSERT INTO `devices_standard` VALUES ('143', '2');
INSERT INTO `devices_standard` VALUES ('144', '2');
INSERT INTO `devices_standard` VALUES ('145', '2');
INSERT INTO `devices_standard` VALUES ('146', '2');
INSERT INTO `devices_standard` VALUES ('147', '2');
INSERT INTO `devices_standard` VALUES ('148', '2');
INSERT INTO `devices_standard` VALUES ('149', '2');
INSERT INTO `devices_standard` VALUES ('150', '2');
INSERT INTO `devices_standard` VALUES ('151', '2');
INSERT INTO `devices_standard` VALUES ('152', '2');
INSERT INTO `devices_standard` VALUES ('153', '2');
INSERT INTO `devices_standard` VALUES ('154', '2');
INSERT INTO `devices_standard` VALUES ('155', '2');
INSERT INTO `devices_standard` VALUES ('156', '2');
INSERT INTO `devices_standard` VALUES ('157', '2');
INSERT INTO `devices_standard` VALUES ('158', '2');
INSERT INTO `devices_standard` VALUES ('159', '2');
INSERT INTO `devices_standard` VALUES ('160', '2');
INSERT INTO `devices_standard` VALUES ('161', '2');
INSERT INTO `devices_standard` VALUES ('162', '2');
INSERT INTO `devices_standard` VALUES ('163', '2');
INSERT INTO `devices_standard` VALUES ('164', '2');
INSERT INTO `devices_standard` VALUES ('165', '2');
INSERT INTO `devices_standard` VALUES ('166', '2');
INSERT INTO `devices_standard` VALUES ('167', '2');
INSERT INTO `devices_standard` VALUES ('168', '2');
INSERT INTO `devices_standard` VALUES ('169', '2');
INSERT INTO `devices_standard` VALUES ('170', '2');
INSERT INTO `devices_standard` VALUES ('171', '2');
INSERT INTO `devices_standard` VALUES ('172', '2');
INSERT INTO `devices_standard` VALUES ('173', '2');
INSERT INTO `devices_standard` VALUES ('177', '2');
INSERT INTO `devices_standard` VALUES ('178', '2');
INSERT INTO `devices_standard` VALUES ('179', '2');
INSERT INTO `devices_standard` VALUES ('180', '2');
INSERT INTO `devices_standard` VALUES ('181', '2');
INSERT INTO `devices_standard` VALUES ('182', '2');
INSERT INTO `devices_standard` VALUES ('183', '2');
INSERT INTO `devices_standard` VALUES ('184', '2');
INSERT INTO `devices_standard` VALUES ('185', '2');
INSERT INTO `devices_standard` VALUES ('186', '2');
INSERT INTO `devices_standard` VALUES ('187', '2');
INSERT INTO `devices_standard` VALUES ('188', '2');
INSERT INTO `devices_standard` VALUES ('189', '2');
INSERT INTO `devices_standard` VALUES ('190', '2');
INSERT INTO `devices_standard` VALUES ('191', '2');
INSERT INTO `devices_standard` VALUES ('192', '2');
INSERT INTO `devices_standard` VALUES ('193', '2');
INSERT INTO `devices_standard` VALUES ('194', '2');
INSERT INTO `devices_standard` VALUES ('195', '2');
INSERT INTO `devices_standard` VALUES ('196', '2');
INSERT INTO `devices_standard` VALUES ('197', '2');
INSERT INTO `devices_standard` VALUES ('198', '2');
INSERT INTO `devices_standard` VALUES ('199', '2');
INSERT INTO `devices_standard` VALUES ('200', '2');
INSERT INTO `devices_standard` VALUES ('201', '2');
INSERT INTO `devices_standard` VALUES ('202', '2');
INSERT INTO `devices_standard` VALUES ('203', '2');
INSERT INTO `devices_standard` VALUES ('204', '2');
INSERT INTO `devices_standard` VALUES ('205', '2');
INSERT INTO `devices_standard` VALUES ('206', '2');
INSERT INTO `devices_standard` VALUES ('207', '2');
INSERT INTO `devices_standard` VALUES ('208', '2');
INSERT INTO `devices_standard` VALUES ('209', '2');
INSERT INTO `devices_standard` VALUES ('210', '2');
INSERT INTO `devices_standard` VALUES ('211', '2');
INSERT INTO `devices_standard` VALUES ('212', '2');
INSERT INTO `devices_standard` VALUES ('213', '2');
INSERT INTO `devices_standard` VALUES ('214', '2');
INSERT INTO `devices_standard` VALUES ('215', '2');
INSERT INTO `devices_standard` VALUES ('216', '2');
INSERT INTO `devices_standard` VALUES ('217', '2');
INSERT INTO `devices_standard` VALUES ('218', '2');
INSERT INTO `devices_standard` VALUES ('219', '2');
INSERT INTO `devices_standard` VALUES ('220', '2');
INSERT INTO `devices_standard` VALUES ('221', '2');
INSERT INTO `devices_standard` VALUES ('222', '2');
INSERT INTO `devices_standard` VALUES ('223', '2');
INSERT INTO `devices_standard` VALUES ('224', '2');
INSERT INTO `devices_standard` VALUES ('225', '2');
INSERT INTO `devices_standard` VALUES ('226', '2');
INSERT INTO `devices_standard` VALUES ('227', '2');
INSERT INTO `devices_standard` VALUES ('228', '2');
INSERT INTO `devices_standard` VALUES ('229', '2');
INSERT INTO `devices_standard` VALUES ('230', '2');
INSERT INTO `devices_standard` VALUES ('231', '2');
INSERT INTO `devices_standard` VALUES ('232', '2');
INSERT INTO `devices_standard` VALUES ('233', '2');
INSERT INTO `devices_standard` VALUES ('234', '2');
INSERT INTO `devices_standard` VALUES ('235', '2');
INSERT INTO `devices_standard` VALUES ('236', '2');
INSERT INTO `devices_standard` VALUES ('237', '2');
INSERT INTO `devices_standard` VALUES ('238', '2');
INSERT INTO `devices_standard` VALUES ('239', '2');
INSERT INTO `devices_standard` VALUES ('240', '2');
INSERT INTO `devices_standard` VALUES ('241', '2');
INSERT INTO `devices_standard` VALUES ('242', '2');
INSERT INTO `devices_standard` VALUES ('243', '2');
INSERT INTO `devices_standard` VALUES ('244', '2');
INSERT INTO `devices_standard` VALUES ('245', '2');
INSERT INTO `devices_standard` VALUES ('246', '2');
INSERT INTO `devices_standard` VALUES ('247', '2');
INSERT INTO `devices_standard` VALUES ('248', '2');
INSERT INTO `devices_standard` VALUES ('249', '2');
INSERT INTO `devices_standard` VALUES ('250', '2');
INSERT INTO `devices_standard` VALUES ('251', '2');
INSERT INTO `devices_standard` VALUES ('252', '2');
INSERT INTO `devices_standard` VALUES ('253', '2');
INSERT INTO `devices_standard` VALUES ('254', '2');
INSERT INTO `devices_standard` VALUES ('255', '2');
INSERT INTO `devices_standard` VALUES ('256', '2');
INSERT INTO `devices_standard` VALUES ('257', '2');
INSERT INTO `devices_standard` VALUES ('258', '2');
INSERT INTO `devices_standard` VALUES ('259', '2');
INSERT INTO `devices_standard` VALUES ('260', '2');
INSERT INTO `devices_standard` VALUES ('261', '2');
INSERT INTO `devices_standard` VALUES ('262', '2');
INSERT INTO `devices_standard` VALUES ('263', '2');
INSERT INTO `devices_standard` VALUES ('264', '2');
INSERT INTO `devices_standard` VALUES ('265', '2');
INSERT INTO `devices_standard` VALUES ('266', '2');
INSERT INTO `devices_standard` VALUES ('267', '2');
INSERT INTO `devices_standard` VALUES ('268', '2');
INSERT INTO `devices_standard` VALUES ('269', '2');
INSERT INTO `devices_standard` VALUES ('270', '2');
INSERT INTO `devices_standard` VALUES ('271', '2');
INSERT INTO `devices_standard` VALUES ('272', '2');
INSERT INTO `devices_standard` VALUES ('273', '2');
INSERT INTO `devices_standard` VALUES ('274', '2');
INSERT INTO `devices_standard` VALUES ('275', '2');
INSERT INTO `devices_standard` VALUES ('276', '2');
INSERT INTO `devices_standard` VALUES ('277', '2');
INSERT INTO `devices_standard` VALUES ('278', '2');
INSERT INTO `devices_standard` VALUES ('279', '2');
INSERT INTO `devices_standard` VALUES ('280', '2');
INSERT INTO `devices_standard` VALUES ('281', '2');
INSERT INTO `devices_standard` VALUES ('282', '2');
INSERT INTO `devices_standard` VALUES ('283', '2');
INSERT INTO `devices_standard` VALUES ('284', '2');
INSERT INTO `devices_standard` VALUES ('285', '2');
INSERT INTO `devices_standard` VALUES ('286', '2');
INSERT INTO `devices_standard` VALUES ('287', '2');
INSERT INTO `devices_standard` VALUES ('288', '2');
INSERT INTO `devices_standard` VALUES ('289', '2');
INSERT INTO `devices_standard` VALUES ('290', '2');
INSERT INTO `devices_standard` VALUES ('291', '2');
INSERT INTO `devices_standard` VALUES ('292', '2');
INSERT INTO `devices_standard` VALUES ('293', '2');
INSERT INTO `devices_standard` VALUES ('294', '2');
INSERT INTO `devices_standard` VALUES ('295', '2');
INSERT INTO `devices_standard` VALUES ('296', '2');
INSERT INTO `devices_standard` VALUES ('297', '2');
INSERT INTO `devices_standard` VALUES ('298', '2');
INSERT INTO `devices_standard` VALUES ('299', '2');
INSERT INTO `devices_standard` VALUES ('300', '2');
INSERT INTO `devices_standard` VALUES ('301', '2');
INSERT INTO `devices_standard` VALUES ('302', '2');
INSERT INTO `devices_standard` VALUES ('303', '2');
INSERT INTO `devices_standard` VALUES ('304', '2');
INSERT INTO `devices_standard` VALUES ('305', '2');
INSERT INTO `devices_standard` VALUES ('306', '2');
INSERT INTO `devices_standard` VALUES ('307', '2');
INSERT INTO `devices_standard` VALUES ('308', '2');
INSERT INTO `devices_standard` VALUES ('309', '2');
INSERT INTO `devices_standard` VALUES ('310', '2');
INSERT INTO `devices_standard` VALUES ('311', '2');
INSERT INTO `devices_standard` VALUES ('312', '2');
INSERT INTO `devices_standard` VALUES ('313', '2');
INSERT INTO `devices_standard` VALUES ('314', '2');
INSERT INTO `devices_standard` VALUES ('315', '2');
INSERT INTO `devices_standard` VALUES ('316', '2');
INSERT INTO `devices_standard` VALUES ('317', '2');
INSERT INTO `devices_standard` VALUES ('318', '2');
INSERT INTO `devices_standard` VALUES ('319', '2');
INSERT INTO `devices_standard` VALUES ('320', '2');
INSERT INTO `devices_standard` VALUES ('321', '2');
INSERT INTO `devices_standard` VALUES ('322', '2');
INSERT INTO `devices_standard` VALUES ('323', '2');

-- ----------------------------
-- Table structure for devices_threshold
-- ----------------------------
DROP TABLE IF EXISTS `devices_threshold`;
CREATE TABLE `devices_threshold` (
  `dtid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `classify` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cellval` float DEFAULT NULL,
  `floorval` float DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `ismark` int(11) DEFAULT NULL,
  PRIMARY KEY (`dtid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of devices_threshold
-- ----------------------------
INSERT INTO `devices_threshold` VALUES ('1', '频率上限值', '4', '1', '电能', 'v', '0.5', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('2', '频率上限值', '4', '1', '电能', 'v', '0.6', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('3', '频率上限值', '4', '1', '电能', 'v', '0.8', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('4', '频率下限值', '5', '1', '电能', 'v', null, '-0.5', '1', '1');
INSERT INTO `devices_threshold` VALUES ('5', '频率下限值', '5', '1', '电能', 'v', null, '-0.6', '2', '1');
INSERT INTO `devices_threshold` VALUES ('6', '频率下限值', '5', '1', '电能', 'v', null, '-0.8', '3', '1');
INSERT INTO `devices_threshold` VALUES ('7', '电压偏差越上限', '9', '1', '电能', '百分比', '7', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('8', '电压偏差越上限', '9', '1', '电能', '百分比', '15', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('9', '电压偏差越上限', '9', '1', '电能', '百分比', '70', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('10', '电压偏差越下限', '8', '1', '电能', '百分比', null, '-10', '1', '1');
INSERT INTO `devices_threshold` VALUES ('11', '电压偏差越下限', '8', '1', '电能', '百分比', null, '-20', '2', '1');
INSERT INTO `devices_threshold` VALUES ('12', '电压偏差越下限', '8', '1', '电能', '百分比', null, '-70', '3', '1');
INSERT INTO `devices_threshold` VALUES ('13', '短时闪变', '10', '1', '电能', 'v', '110', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('14', '短时闪变', '10', '1', '电能', 'v', '110', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('15', '短时闪变', '10', '1', '电能', 'v', '130', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('16', '长时闪变', '11', '1', '电能', 'v', '110', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('17', '长时闪变', '11', '1', '电能', 'v', '120', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('18', '长时闪变', '11', '1', '电能', 'v', '130', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('19', '三相电压负序不平衡度', '112', '1', '电能', 'v', '10', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('20', '三相电压负序不平衡度', '112', '1', '电能', 'v', '20', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('21', '三相电压负序不平衡度', '112', '1', '电能', 'v', '25', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('22', '电压暂升阈值', '2', '1', '电能', 'v', '220', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('23', '电压暂升阈值', '2', '1', '电能', 'v', '230', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('24', '电压暂升阈值', '2', '1', '电能', 'v', '240', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('25', '电压暂降阈值', '1', '1', '电能', 'v', null, '200', '1', '1');
INSERT INTO `devices_threshold` VALUES ('26', '电压暂降阈值', '1', '1', '电能', 'v', null, '190', '2', '1');
INSERT INTO `devices_threshold` VALUES ('27', '电压暂降阈值', '1', '1', '电能', 'v', null, '180', '3', '1');
INSERT INTO `devices_threshold` VALUES ('28', '电压短时中断阈值', '3', '1', '电能', 'v', '-1', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('29', '电压短时中断阈值', '3', '1', '电能', 'v', '-1.1', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('30', '电压短时中断阈值', '3', '1', '电能', 'v', '-1.2', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('31', '电压总谐波含有率', '7', '1', '电能', 'v', '5', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('32', '电压总谐波含有率', '7', '1', '电能', 'v', '5.1', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('33', '电压总谐波含有率', '7', '1', '电能', 'v', '5.2', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('34', '电流总谐波含有率', '6', '1', '电能', 'a', '8', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('35', '电流总谐波含有率', '6', '1', '电能', 'a', '8.1', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('36', '电流总谐波含有率', '6', '1', '电能', 'a', '8.2', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('37', '电压总谐波含有率限值2', '62', '1', '电能', 'v', '2', null, '1', '0');
INSERT INTO `devices_threshold` VALUES ('38', '电压总谐波含有率限值2', '62', '1', '电能', 'v', '2.1', null, '2', '0');
INSERT INTO `devices_threshold` VALUES ('39', '电压总谐波含有率限值2', '62', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('40', '电压总谐波含有率限值3', '63', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('41', '电压总谐波含有率限值3', '63', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('42', '电压总谐波含有率限值3', '63', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('43', '电压总谐波含有率限值4', '64', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('44', '电压总谐波含有率限值4', '64', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('45', '电压总谐波含有率限值4', '64', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('46', '电压总谐波含有率限值5', '65', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('47', '电压总谐波含有率限值5', '65', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('48', '电压总谐波含有率限值5', '65', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('49', '电压总谐波含有率限值6', '66', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('50', '电压总谐波含有率限值6', '66', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('51', '电压总谐波含有率限值6', '66', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('52', '电压总谐波含有率限值7', '67', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('53', '电压总谐波含有率限值7', '67', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('54', '电压总谐波含有率限值7', '67', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('55', '电压总谐波含有率限值8', '68', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('56', '电压总谐波含有率限值8', '68', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('57', '电压总谐波含有率限值8', '68', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('58', '电压总谐波含有率限值9', '69', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('59', '电压总谐波含有率限值9', '69', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('60', '电压总谐波含有率限值9', '69', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('61', '电压总谐波含有率限值10', '70', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('62', '电压总谐波含有率限值10', '70', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('63', '电压总谐波含有率限值10', '70', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('64', '电压总谐波含有率限值11', '71', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('65', '电压总谐波含有率限值11', '71', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('66', '电压总谐波含有率限值11', '71', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('67', '电压总谐波含有率限值12', '72', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('68', '电压总谐波含有率限值12', '72', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('69', '电压总谐波含有率限值12', '72', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('70', '电压总谐波含有率限值13', '73', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('71', '电压总谐波含有率限值13', '73', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('72', '电压总谐波含有率限值13', '73', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('73', '电压总谐波含有率限值14', '74', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('74', '电压总谐波含有率限值14', '74', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('75', '电压总谐波含有率限值14', '74', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('76', '电压总谐波含有率限值15', '75', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('77', '电压总谐波含有率限值15', '75', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('78', '电压总谐波含有率限值15', '75', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('79', '电压总谐波含有率限值16', '76', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('80', '电压总谐波含有率限值16', '76', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('81', '电压总谐波含有率限值16', '76', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('82', '电压总谐波含有率限值17', '77', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('83', '电压总谐波含有率限值17', '77', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('84', '电压总谐波含有率限值17', '77', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('85', '电压总谐波含有率限值18', '78', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('86', '电压总谐波含有率限值18', '78', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('87', '电压总谐波含有率限值18', '78', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('88', '电压总谐波含有率限值19', '79', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('89', '电压总谐波含有率限值19', '79', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('90', '电压总谐波含有率限值19', '79', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('91', '电压总谐波含有率限值20', '80', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('92', '电压总谐波含有率限值20', '80', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('93', '电压总谐波含有率限值20', '80', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('94', '电压总谐波含有率限值21', '81', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('95', '电压总谐波含有率限值21', '81', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('96', '电压总谐波含有率限值21', '81', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('97', '电压总谐波含有率限值22', '82', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('98', '电压总谐波含有率限值22', '82', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('99', '电压总谐波含有率限值22', '82', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('100', '电压总谐波含有率限值23', '83', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('101', '电压总谐波含有率限值23', '83', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('102', '电压总谐波含有率限值23', '83', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('103', '电压总谐波含有率限值24', '84', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('104', '电压总谐波含有率限值24', '84', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('105', '电压总谐波含有率限值24', '84', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('106', '电压总谐波含有率限值25', '85', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('107', '电压总谐波含有率限值25', '85', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('108', '电压总谐波含有率限值25', '85', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('109', '电压总谐波含有率限值26', '86', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('110', '电压总谐波含有率限值26', '86', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('111', '电压总谐波含有率限值26', '86', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('112', '电压总谐波含有率限值27', '87', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('113', '电压总谐波含有率限值27', '87', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('114', '电压总谐波含有率限值27', '87', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('115', '电压总谐波含有率限值28', '88', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('116', '电压总谐波含有率限值28', '88', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('117', '电压总谐波含有率限值28', '88', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('118', '电压总谐波含有率限值29', '89', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('119', '电压总谐波含有率限值29', '89', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('120', '电压总谐波含有率限值29', '89', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('121', '电压总谐波含有率限值30', '90', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('122', '电压总谐波含有率限值30', '90', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('123', '电压总谐波含有率限值30', '90', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('124', '电压总谐波含有率限值31', '91', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('125', '电压总谐波含有率限值31', '91', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('126', '电压总谐波含有率限值31', '91', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('127', '电压总谐波含有率限值32', '92', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('128', '电压总谐波含有率限值32', '92', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('129', '电压总谐波含有率限值32', '92', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('130', '电压总谐波含有率限值33', '93', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('131', '电压总谐波含有率限值33', '93', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('132', '电压总谐波含有率限值33', '93', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('133', '电压总谐波含有率限值34', '94', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('134', '电压总谐波含有率限值34', '94', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('135', '电压总谐波含有率限值34', '94', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('136', '电压总谐波含有率限值35', '95', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('137', '电压总谐波含有率限值35', '95', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('138', '电压总谐波含有率限值35', '95', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('139', '电压总谐波含有率限值36', '96', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('140', '电压总谐波含有率限值36', '96', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('141', '电压总谐波含有率限值36', '96', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('142', '电压总谐波含有率限值37', '97', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('143', '电压总谐波含有率限值37', '97', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('144', '电压总谐波含有率限值37', '97', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('145', '电压总谐波含有率限值38', '98', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('146', '电压总谐波含有率限值38', '98', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('147', '电压总谐波含有率限值38', '98', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('148', '电压总谐波含有率限值39', '99', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('149', '电压总谐波含有率限值39', '99', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('150', '电压总谐波含有率限值39', '99', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('151', '电压总谐波含有率限值40', '100', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('152', '电压总谐波含有率限值40', '100', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('153', '电压总谐波含有率限值40', '100', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('154', '电压总谐波含有率限值41', '101', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('155', '电压总谐波含有率限值41', '101', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('156', '电压总谐波含有率限值41', '101', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('157', '电压总谐波含有率限值42', '102', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('158', '电压总谐波含有率限值42', '102', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('159', '电压总谐波含有率限值42', '102', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('160', '电压总谐波含有率限值43', '103', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('161', '电压总谐波含有率限值43', '103', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('162', '电压总谐波含有率限值43', '103', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('163', '电压总谐波含有率限值44', '104', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('164', '电压总谐波含有率限值44', '104', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('165', '电压总谐波含有率限值44', '104', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('166', '电压总谐波含有率限值45', '105', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('167', '电压总谐波含有率限值45', '105', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('168', '电压总谐波含有率限值45', '105', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('169', '电压总谐波含有率限值46', '106', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('170', '电压总谐波含有率限值46', '106', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('171', '电压总谐波含有率限值46', '106', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('172', '电压总谐波含有率限值47', '107', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('173', '电压总谐波含有率限值47', '107', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('174', '电压总谐波含有率限值47', '107', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('175', '电压总谐波含有率限值48', '108', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('176', '电压总谐波含有率限值48', '108', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('177', '电压总谐波含有率限值48', '108', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('178', '电压总谐波含有率限值49', '109', '1', '电能', 'v', '4', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('179', '电压总谐波含有率限值49', '109', '1', '电能', 'v', '4.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('180', '电压总谐波含有率限值49', '109', '1', '电能', 'v', '4.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('181', '电压总谐波含有率限值50', '110', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('182', '电压总谐波含有率限值50', '110', '1', '电能', 'v', '2.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('183', '电压总谐波含有率限值50', '110', '1', '电能', 'v', '2.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('184', '电流总谐波有效值限值2', '12', '1', '电能', 'v', '78', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('185', '电流总谐波有效值限值2', '12', '1', '电能', 'v', '78.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('186', '电流总谐波有效值限值2', '12', '1', '电能', 'v', '78.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('187', '电流总谐波有效值限值3', '13', '1', '电能', 'v', '62', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('188', '电流总谐波有效值限值3', '13', '1', '电能', 'v', '62.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('189', '电流总谐波有效值限值3', '13', '1', '电能', 'v', '62.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('190', '电流总谐波有效值限值4', '14', '1', '电能', 'v', '39', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('191', '电流总谐波有效值限值4', '14', '1', '电能', 'v', '39.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('192', '电流总谐波有效值限值4', '14', '1', '电能', 'v', '39.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('193', '电流总谐波有效值限值5', '15', '1', '电能', 'v', '62', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('194', '电流总谐波有效值限值5', '15', '1', '电能', 'v', '62.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('195', '电流总谐波有效值限值5', '15', '1', '电能', 'v', '62.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('196', '电流总谐波有效值限值6', '16', '1', '电能', 'v', '26', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('197', '电流总谐波有效值限值6', '16', '1', '电能', 'v', '26.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('198', '电流总谐波有效值限值6', '16', '1', '电能', 'v', '26.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('199', '电流总谐波有效值限值7', '17', '1', '电能', 'v', '44', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('200', '电流总谐波有效值限值7', '17', '1', '电能', 'v', '44.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('201', '电流总谐波有效值限值7', '17', '1', '电能', 'v', '44.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('202', '电流总谐波有效值限值8', '18', '1', '电能', 'v', '19', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('203', '电流总谐波有效值限值8', '18', '1', '电能', 'v', '19.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('204', '电流总谐波有效值限值8', '18', '1', '电能', 'v', '19.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('205', '电流总谐波有效值限值9', '19', '1', '电能', 'v', '21', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('206', '电流总谐波有效值限值9', '19', '1', '电能', 'v', '21.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('207', '电流总谐波有效值限值9', '19', '1', '电能', 'v', '21.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('208', '电流总谐波有效值限值10', '20', '1', '电能', 'v', '16', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('209', '电流总谐波有效值限值10', '20', '1', '电能', 'v', '16.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('210', '电流总谐波有效值限值10', '20', '1', '电能', 'v', '16.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('211', '电流总谐波有效值限值11', '21', '1', '电能', 'v', '28', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('212', '电流总谐波有效值限值11', '21', '1', '电能', 'v', '28.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('213', '电流总谐波有效值限值11', '21', '1', '电能', 'v', '28.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('214', '电流总谐波有效值限值12', '22', '1', '电能', 'v', '13', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('215', '电流总谐波有效值限值12', '22', '1', '电能', 'v', '13.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('216', '电流总谐波有效值限值12', '22', '1', '电能', 'v', '13.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('217', '电流总谐波有效值限值13', '23', '1', '电能', 'v', '24', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('218', '电流总谐波有效值限值13', '23', '1', '电能', 'v', '24.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('219', '电流总谐波有效值限值13', '23', '1', '电能', 'v', '24.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('220', '电流总谐波有效值限值14', '24', '1', '电能', 'v', '11', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('221', '电流总谐波有效值限值14', '24', '1', '电能', 'v', '11.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('222', '电流总谐波有效值限值14', '24', '1', '电能', 'v', '11.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('223', '电流总谐波有效值限值15', '25', '1', '电能', 'v', '12', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('224', '电流总谐波有效值限值15', '25', '1', '电能', 'v', '12.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('225', '电流总谐波有效值限值15', '25', '1', '电能', 'v', '12.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('226', '电流总谐波有效值限值16', '26', '1', '电能', 'v', '9.7', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('227', '电流总谐波有效值限值16', '26', '1', '电能', 'v', '9.8', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('228', '电流总谐波有效值限值16', '26', '1', '电能', 'v', '9.9', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('229', '电流总谐波有效值限值17', '27', '1', '电能', 'v', '18', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('230', '电流总谐波有效值限值17', '27', '1', '电能', 'v', '18.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('231', '电流总谐波有效值限值17', '27', '1', '电能', 'v', '18.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('232', '电流总谐波有效值限值18', '28', '1', '电能', 'v', '8.6', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('233', '电流总谐波有效值限值18', '28', '1', '电能', 'v', '8.7', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('234', '电流总谐波有效值限值18', '28', '1', '电能', 'v', '8.8', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('235', '电流总谐波有效值限值19', '29', '1', '电能', 'v', '16', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('236', '电流总谐波有效值限值19', '29', '1', '电能', 'v', '16.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('237', '电流总谐波有效值限值19', '29', '1', '电能', 'v', '16.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('238', '电流总谐波有效值限值20', '30', '1', '电能', 'v', '7.8', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('239', '电流总谐波有效值限值20', '30', '1', '电能', 'v', '7.9', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('240', '电流总谐波有效值限值20', '30', '1', '电能', 'v', '8', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('241', '电流总谐波有效值限值21', '31', '1', '电能', 'v', '8.9', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('242', '电流总谐波有效值限值21', '31', '1', '电能', 'v', '9', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('243', '电流总谐波有效值限值21', '31', '1', '电能', 'v', '9.1', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('244', '电流总谐波有效值限值22', '32', '1', '电能', 'v', '7.1', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('245', '电流总谐波有效值限值22', '32', '1', '电能', 'v', '7.2', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('246', '电流总谐波有效值限值22', '32', '1', '电能', 'v', '7.3', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('247', '电流总谐波有效值限值23', '33', '1', '电能', 'v', '14', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('248', '电流总谐波有效值限值23', '33', '1', '电能', 'v', '14.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('249', '电流总谐波有效值限值23', '33', '1', '电能', 'v', '14.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('250', '电流总谐波有效值限值24', '34', '1', '电能', 'v', '6.5', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('251', '电流总谐波有效值限值24', '34', '1', '电能', 'v', '6.6', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('252', '电流总谐波有效值限值24', '34', '1', '电能', 'v', '6.7', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('253', '电流总谐波有效值限值25', '35', '1', '电能', 'v', '12', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('254', '电流总谐波有效值限值25', '35', '1', '电能', 'v', '12.1', null, '2', null);
INSERT INTO `devices_threshold` VALUES ('255', '电流总谐波有效值限值25', '35', '1', '电能', 'v', '12.2', null, '3', null);
INSERT INTO `devices_threshold` VALUES ('256', '电流总谐波有效值限值26', '36', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('257', '电流总谐波有效值限值26', '36', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('258', '电流总谐波有效值限值26', '36', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('259', '电流总谐波有效值限值27', '37', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('260', '电流总谐波有效值限值27', '37', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('261', '电流总谐波有效值限值27', '37', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('262', '电流总谐波有效值限值28', '38', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('263', '电流总谐波有效值限值28', '38', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('264', '电流总谐波有效值限值28', '38', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('265', '电流总谐波有效值限值29', '39', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('266', '电流总谐波有效值限值29', '39', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('267', '电流总谐波有效值限值29', '39', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('268', '电流总谐波有效值限值30', '40', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('269', '电流总谐波有效值限值30', '40', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('270', '电流总谐波有效值限值30', '40', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('271', '电流总谐波有效值限值31', '41', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('272', '电流总谐波有效值限值31', '41', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('273', '电流总谐波有效值限值31', '41', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('274', '电流总谐波有效值限值32', '42', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('275', '电流总谐波有效值限值32', '42', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('276', '电流总谐波有效值限值32', '42', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('277', '电流总谐波有效值限值33', '43', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('278', '电流总谐波有效值限值33', '43', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('279', '电流总谐波有效值限值33', '43', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('280', '电流总谐波有效值限值34', '44', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('281', '电流总谐波有效值限值34', '44', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('282', '电流总谐波有效值限值34', '44', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('283', '电流总谐波有效值限值35', '45', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('284', '电流总谐波有效值限值35', '45', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('285', '电流总谐波有效值限值35', '45', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('286', '电流总谐波有效值限值36', '46', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('287', '电流总谐波有效值限值36', '46', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('288', '电流总谐波有效值限值36', '46', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('289', '电流总谐波有效值限值37', '47', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('290', '电流总谐波有效值限值37', '47', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('291', '电流总谐波有效值限值37', '47', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('292', '电流总谐波有效值限值38', '48', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('293', '电流总谐波有效值限值38', '48', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('294', '电流总谐波有效值限值38', '48', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('295', '电流总谐波有效值限值39', '49', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('296', '电流总谐波有效值限值39', '49', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('297', '电流总谐波有效值限值39', '49', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('298', '电流总谐波有效值限值40', '50', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('299', '电流总谐波有效值限值40', '50', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('300', '电流总谐波有效值限值40', '50', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('301', '电流总谐波有效值限值41', '51', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('302', '电流总谐波有效值限值41', '51', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('303', '电流总谐波有效值限值41', '51', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('304', '电流总谐波有效值限值42', '52', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('305', '电流总谐波有效值限值42', '52', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('306', '电流总谐波有效值限值42', '52', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('307', '电流总谐波有效值限值43', '53', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('308', '电流总谐波有效值限值43', '53', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('309', '电流总谐波有效值限值43', '53', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('310', '电流总谐波有效值限值44', '54', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('311', '电流总谐波有效值限值44', '54', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('312', '电流总谐波有效值限值44', '54', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('313', '电流总谐波有效值限值45', '55', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('314', '电流总谐波有效值限值45', '55', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('315', '电流总谐波有效值限值45', '55', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('316', '电流总谐波有效值限值46', '56', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('317', '电流总谐波有效值限值46', '56', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('318', '电流总谐波有效值限值46', '56', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('319', '电流总谐波有效值限值47', '57', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('320', '电流总谐波有效值限值47', '57', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('321', '电流总谐波有效值限值47', '57', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('322', '电流总谐波有效值限值48', '58', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('323', '电流总谐波有效值限值48', '58', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('324', '电流总谐波有效值限值48', '58', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('325', '电流总谐波有效值限值49', '59', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('326', '电流总谐波有效值限值49', '59', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('327', '电流总谐波有效值限值49', '59', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('328', '电流总谐波有效值限值50', '60', '1', '电能', 'v', null, null, '1', null);
INSERT INTO `devices_threshold` VALUES ('329', '电流总谐波有效值限值50', '60', '1', '电能', 'v', null, null, '2', null);
INSERT INTO `devices_threshold` VALUES ('330', '电流总谐波有效值限值50', '60', '1', '电能', 'v', null, null, '3', null);
INSERT INTO `devices_threshold` VALUES ('331', '温度过高', '113', '1', '环境', '摄氏度', '40', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('332', '温度过高', '113', '1', '环境', '摄氏度', '45', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('333', '温度过高', '113', '1', '环境', '摄氏度', '50', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('334', '温度过低', '114', '1', '环境', '摄氏度', null, '10', '1', '1');
INSERT INTO `devices_threshold` VALUES ('335', '温度过低', '114', '1', '环境', '摄氏度', null, '5', '2', '1');
INSERT INTO `devices_threshold` VALUES ('336', '温度过低', '114', '1', '环境', '摄氏度', null, '0', '3', '1');
INSERT INTO `devices_threshold` VALUES ('337', '湿度过高', '115', '1', '环境', '百分比', '30', null, '1', '1');
INSERT INTO `devices_threshold` VALUES ('338', '湿度过高', '115', '1', '环境', '百分比', '40', null, '2', '1');
INSERT INTO `devices_threshold` VALUES ('339', '湿度过高', '115', '1', '环境', '百分比', '50', null, '3', '1');
INSERT INTO `devices_threshold` VALUES ('340', '湿度过低', '116', '1', '环境', '百分比', null, '5', '1', '1');
INSERT INTO `devices_threshold` VALUES ('341', '湿度过低', '116', '1', '环境', '百分比', null, '2', '2', '1');
INSERT INTO `devices_threshold` VALUES ('342', '湿度过低', '116', '1', '环境', '百分比', null, '1', '3', '1');

-- ----------------------------
-- Table structure for device_alarm_user
-- ----------------------------
DROP TABLE IF EXISTS `device_alarm_user`;
CREATE TABLE `device_alarm_user` (
  `id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(11) DEFAULT NULL,
  `timeperiod` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isAlert` int(11) DEFAULT NULL,
  `isPlantform` int(11) DEFAULT NULL,
  `isSMS` int(11) DEFAULT NULL,
  `precontent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `aid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of device_alarm_user
-- ----------------------------
INSERT INTO `device_alarm_user` VALUES ('1', '1', '0', '1', '0', '0', '请注意# 该事件发生值为& 事件发生时间为%', '1', '1', '0');
INSERT INTO `device_alarm_user` VALUES ('2', '2', '0', '1', '1', '0', '请注意：告警信息！# 该事件发生值为& 事件发生时间为%', '1', '1', '0');
INSERT INTO `device_alarm_user` VALUES ('3', '3', '1', '1', '0', '1', '严重告警！！！# 该事件发生值为& 事件发生时间为%', '1', '1', '0');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(255) NOT NULL,
  `item` varchar(255) CHARACTER SET utf8 DEFAULT '',
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
INSERT INTO `dictionary` VALUES ('24', 'Uunbzero', '1', 'UPS_A总输入三相电压零序不平衡度');
INSERT INTO `dictionary` VALUES ('25', 'Aunb', '1', 'UPS_A总输入三相电流负序不平衡度');
INSERT INTO `dictionary` VALUES ('26', 'Aunbzero', '1', 'UPS_A总输入三相电流零序不平衡度');
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
INSERT INTO `dictionary` VALUES ('327', 'THDU1', '1', 'UPS_A总输入A相电压总谐波畸变率');
INSERT INTO `dictionary` VALUES ('328', 'THDU2', '1', 'UPS_A总输入B相电压总谐波畸变率');
INSERT INTO `dictionary` VALUES ('329', 'THDU3', '1', 'UPS_A总输入C相电压总谐波畸变率');
INSERT INTO `dictionary` VALUES ('330', 'THDI1', '1', 'UPS_A总输入A相电流总谐波畸变率');
INSERT INTO `dictionary` VALUES ('331', 'THDI2', '1', 'UPS_A总输入B相电流总谐波畸变率');
INSERT INTO `dictionary` VALUES ('332', 'THDI3', '1', 'UPS_A总输入C相电流总谐波畸变率');
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
-- Table structure for dictionary_ctrl
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_ctrl`;
CREATE TABLE `dictionary_ctrl` (
  `id` bigint(20) NOT NULL,
  `functioncode` int(20) DEFAULT NULL,
  `addr` bigint(20) DEFAULT NULL,
  `description` longtext,
  `forTrue` longtext,
  `forFalse` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary_ctrl
-- ----------------------------
INSERT INTO `dictionary_ctrl` VALUES ('1', '0', '1', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('2', '0', '2', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('3', '0', '3', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('4', '1', '4', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('5', '1', '5', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('6', '1', '6', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('7', '1', '7', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('8', '1', '8', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('9', '1', '9', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('10', '1', '10', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('11', '1', '11', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('12', '1', '12', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('13', '1', '13', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('14', '1', '14', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('15', '1', '15', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('16', '1', '16', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('17', '1', '17', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('18', '1', '18', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('19', '1', '19', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('20', '1', '20', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('21', '1', '21', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('22', '1', '22', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('23', '1', '23', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('24', '1', '24', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('25', '1', '25', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('26', '1', '26', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('27', '1', '27', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('28', '1', '28', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('29', '1', '29', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('30', '0', '30', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('31', '0', '31', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('32', '0', '32', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('33', '1', '33', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('34', '1', '34', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('35', '1', '35', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('36', '5', '36', null, null, null);
INSERT INTO `dictionary_ctrl` VALUES ('37', '5', '37', null, null, null);

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
-- Table structure for dictionary_threshold
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_threshold`;
CREATE TABLE `dictionary_threshold` (
  `id` int(20) NOT NULL,
  `addr1` int(11) DEFAULT NULL,
  `addr2` int(11) DEFAULT NULL,
  `description` longtext,
  `functioncode` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary_threshold
-- ----------------------------
INSERT INTO `dictionary_threshold` VALUES ('1', '80', '0', '频率上限值', '10');
INSERT INTO `dictionary_threshold` VALUES ('2', '80', '2', '频率下限值', '10');
INSERT INTO `dictionary_threshold` VALUES ('3', '80', '4', '电压偏差越上限', '10');
INSERT INTO `dictionary_threshold` VALUES ('4', '80', '6', '电压偏差越下限', '10');
INSERT INTO `dictionary_threshold` VALUES ('5', '80', '8', '短时闪变', '10');
INSERT INTO `dictionary_threshold` VALUES ('6', '80', '10', '长时闪变', '10');
INSERT INTO `dictionary_threshold` VALUES ('7', '80', '12', '三相电压波动限制', '10');
INSERT INTO `dictionary_threshold` VALUES ('8', '80', '14', '三相电压负序不平衡度', '10');
INSERT INTO `dictionary_threshold` VALUES ('9', '80', '16', '三相电压零序不平衡度', '10');
INSERT INTO `dictionary_threshold` VALUES ('10', '80', '18', '三相电流负序不平衡度', '10');
INSERT INTO `dictionary_threshold` VALUES ('11', '80', '20', '三相电流零序不平衡度', '10');
INSERT INTO `dictionary_threshold` VALUES ('12', '80', '22', '电压暂升阈值', '10');
INSERT INTO `dictionary_threshold` VALUES ('13', '80', '24', '电压暂降阈值', '10');
INSERT INTO `dictionary_threshold` VALUES ('14', '80', '26', '电压短时中断阈值', '10');
INSERT INTO `dictionary_threshold` VALUES ('15', '80', '28', '电压总谐波含有率', '10');
INSERT INTO `dictionary_threshold` VALUES ('16', '80', '30', '电流总谐波含有率', '10');
INSERT INTO `dictionary_threshold` VALUES ('17', '80', '32', '电压谐波含有率限值2', '10');
INSERT INTO `dictionary_threshold` VALUES ('18', '80', '34', '电压谐波含有率限值3', '10');
INSERT INTO `dictionary_threshold` VALUES ('19', '80', '36', '电压谐波含有率限值4', '10');
INSERT INTO `dictionary_threshold` VALUES ('20', '80', '38', '电压谐波含有率限值5', '10');
INSERT INTO `dictionary_threshold` VALUES ('21', '80', '40', '电压谐波含有率限值6', '10');
INSERT INTO `dictionary_threshold` VALUES ('22', '80', '42', '电压谐波含有率限值7', '10');
INSERT INTO `dictionary_threshold` VALUES ('23', '80', '44', '电压谐波含有率限值8', '10');
INSERT INTO `dictionary_threshold` VALUES ('24', '80', '46', '电压谐波含有率限值9', '10');
INSERT INTO `dictionary_threshold` VALUES ('25', '80', '48', '电压谐波含有率限值10', '10');
INSERT INTO `dictionary_threshold` VALUES ('26', '80', '50', '电压谐波含有率限值11', '10');
INSERT INTO `dictionary_threshold` VALUES ('27', '80', '52', '电压谐波含有率限值12', '10');
INSERT INTO `dictionary_threshold` VALUES ('28', '80', '54', '电压谐波含有率限值13', '10');
INSERT INTO `dictionary_threshold` VALUES ('29', '80', '56', '电压谐波含有率限值14', '10');
INSERT INTO `dictionary_threshold` VALUES ('30', '80', '58', '电压谐波含有率限值15', '10');
INSERT INTO `dictionary_threshold` VALUES ('31', '80', '60', '电压谐波含有率限值16', '10');
INSERT INTO `dictionary_threshold` VALUES ('32', '80', '62', '电压谐波含有率限值17', '10');
INSERT INTO `dictionary_threshold` VALUES ('33', '80', '64', '电压谐波含有率限值18', '10');
INSERT INTO `dictionary_threshold` VALUES ('34', '80', '66', '电压谐波含有率限值19', '10');
INSERT INTO `dictionary_threshold` VALUES ('35', '80', '68', '电压谐波含有率限值20', '10');
INSERT INTO `dictionary_threshold` VALUES ('36', '80', '70', '电压谐波含有率限值21', '10');
INSERT INTO `dictionary_threshold` VALUES ('37', '80', '72', '电压谐波含有率限值22', '10');
INSERT INTO `dictionary_threshold` VALUES ('38', '80', '74', '电压谐波含有率限值23', '10');
INSERT INTO `dictionary_threshold` VALUES ('39', '80', '76', '电压谐波含有率限值24', '10');
INSERT INTO `dictionary_threshold` VALUES ('40', '80', '78', '电压谐波含有率限值25', '10');
INSERT INTO `dictionary_threshold` VALUES ('41', '80', '80', '电压谐波含有率限值26', '10');
INSERT INTO `dictionary_threshold` VALUES ('42', '80', '82', '电压谐波含有率限值27', '10');
INSERT INTO `dictionary_threshold` VALUES ('43', '80', '84', '电压谐波含有率限值28', '10');
INSERT INTO `dictionary_threshold` VALUES ('44', '80', '86', '电压谐波含有率限值29', '10');
INSERT INTO `dictionary_threshold` VALUES ('45', '80', '88', '电压谐波含有率限值30', '10');
INSERT INTO `dictionary_threshold` VALUES ('46', '80', '90', '电压谐波含有率限值31', '10');
INSERT INTO `dictionary_threshold` VALUES ('47', '80', '92', '电压谐波含有率限值32', '10');
INSERT INTO `dictionary_threshold` VALUES ('48', '80', '94', '电压谐波含有率限值33', '10');
INSERT INTO `dictionary_threshold` VALUES ('49', '80', '96', '电压谐波含有率限值34', '10');
INSERT INTO `dictionary_threshold` VALUES ('50', '80', '98', '电压谐波含有率限值35', '10');
INSERT INTO `dictionary_threshold` VALUES ('51', '81', '0', '电压谐波含有率限值36', '10');
INSERT INTO `dictionary_threshold` VALUES ('52', '81', '2', '电压谐波含有率限值37', '10');
INSERT INTO `dictionary_threshold` VALUES ('53', '81', '4', '电压谐波含有率限值38', '10');
INSERT INTO `dictionary_threshold` VALUES ('54', '81', '6', '电压谐波含有率限值39', '10');
INSERT INTO `dictionary_threshold` VALUES ('55', '81', '8', '电压谐波含有率限值40', '10');
INSERT INTO `dictionary_threshold` VALUES ('56', '81', '10', '电压谐波含有率限值41', '10');
INSERT INTO `dictionary_threshold` VALUES ('57', '81', '12', '电压谐波含有率限值42', '10');
INSERT INTO `dictionary_threshold` VALUES ('58', '81', '14', '电压谐波含有率限值43', '10');
INSERT INTO `dictionary_threshold` VALUES ('59', '81', '16', '电压谐波含有率限值44', '10');
INSERT INTO `dictionary_threshold` VALUES ('60', '81', '18', '电压谐波含有率限值45', '10');
INSERT INTO `dictionary_threshold` VALUES ('61', '81', '20', '电压谐波含有率限值46', '10');
INSERT INTO `dictionary_threshold` VALUES ('62', '81', '22', '电压谐波含有率限值47', '10');
INSERT INTO `dictionary_threshold` VALUES ('63', '81', '24', '电压谐波含有率限值48', '10');
INSERT INTO `dictionary_threshold` VALUES ('64', '81', '26', '电压谐波含有率限值49', '10');
INSERT INTO `dictionary_threshold` VALUES ('65', '81', '28', '电压谐波含有率限值50', '10');
INSERT INTO `dictionary_threshold` VALUES ('67', '81', '30', '电流谐波含有率限值2', '10');
INSERT INTO `dictionary_threshold` VALUES ('68', '81', '32', '电流谐波含有率限值3', '10');
INSERT INTO `dictionary_threshold` VALUES ('69', '81', '34', '电流谐波含有率限值4', '10');
INSERT INTO `dictionary_threshold` VALUES ('70', '81', '36', '电流谐波含有率限值5', '10');
INSERT INTO `dictionary_threshold` VALUES ('71', '81', '38', '电流谐波含有率限值6', '10');
INSERT INTO `dictionary_threshold` VALUES ('72', '81', '40', '电流谐波含有率限值7', '10');
INSERT INTO `dictionary_threshold` VALUES ('73', '81', '42', '电流谐波含有率限值8', '10');
INSERT INTO `dictionary_threshold` VALUES ('74', '81', '44', '电流谐波含有率限值9', '10');
INSERT INTO `dictionary_threshold` VALUES ('75', '81', '46', '电流谐波含有率限值10', '10');
INSERT INTO `dictionary_threshold` VALUES ('76', '81', '48', '电流谐波含有率限值11', '10');
INSERT INTO `dictionary_threshold` VALUES ('77', '81', '50', '电流谐波含有率限值12', '10');
INSERT INTO `dictionary_threshold` VALUES ('78', '81', '52', '电流谐波含有率限值13', '10');
INSERT INTO `dictionary_threshold` VALUES ('79', '81', '54', '电流谐波含有率限值14', '10');
INSERT INTO `dictionary_threshold` VALUES ('80', '81', '56', '电流谐波含有率限值15', '10');
INSERT INTO `dictionary_threshold` VALUES ('81', '81', '58', '电流谐波含有率限值16', '10');
INSERT INTO `dictionary_threshold` VALUES ('82', '81', '60', '电流谐波含有率限值17', '10');
INSERT INTO `dictionary_threshold` VALUES ('83', '81', '62', '电流谐波含有率限值18', '10');
INSERT INTO `dictionary_threshold` VALUES ('84', '81', '64', '电流谐波含有率限值19', '10');
INSERT INTO `dictionary_threshold` VALUES ('85', '81', '66', '电流谐波含有率限值20', '10');
INSERT INTO `dictionary_threshold` VALUES ('86', '81', '68', '电流谐波含有率限值21', '10');
INSERT INTO `dictionary_threshold` VALUES ('87', '81', '70', '电流谐波含有率限值22', '10');
INSERT INTO `dictionary_threshold` VALUES ('88', '81', '72', '电流谐波含有率限值23', '10');
INSERT INTO `dictionary_threshold` VALUES ('89', '81', '74', '电流谐波含有率限值24', '10');
INSERT INTO `dictionary_threshold` VALUES ('90', '81', '76', '电流谐波含有率限值25', '10');
INSERT INTO `dictionary_threshold` VALUES ('91', '81', '78', '电流谐波含有率限值26', '10');
INSERT INTO `dictionary_threshold` VALUES ('92', '81', '80', '电流谐波含有率限值27', '10');
INSERT INTO `dictionary_threshold` VALUES ('93', '81', '82', '电流谐波含有率限值28', '10');
INSERT INTO `dictionary_threshold` VALUES ('94', '81', '84', '电流谐波含有率限值29', '10');
INSERT INTO `dictionary_threshold` VALUES ('95', '81', '86', '电流谐波含有率限值30', '10');
INSERT INTO `dictionary_threshold` VALUES ('96', '81', '88', '电流谐波含有率限值31', '10');
INSERT INTO `dictionary_threshold` VALUES ('97', '81', '90', '电流谐波含有率限值32', '10');
INSERT INTO `dictionary_threshold` VALUES ('98', '81', '92', '电流谐波含有率限值33', '10');
INSERT INTO `dictionary_threshold` VALUES ('99', '81', '94', '电流谐波含有率限值34', '10');
INSERT INTO `dictionary_threshold` VALUES ('100', '81', '96', '电流谐波含有率限值35', '10');
INSERT INTO `dictionary_threshold` VALUES ('101', '81', '98', '电流谐波含有率限值36', '10');
INSERT INTO `dictionary_threshold` VALUES ('102', '82', '0', '电流谐波含有率限值37', '10');
INSERT INTO `dictionary_threshold` VALUES ('103', '82', '2', '电流谐波含有率限值38', '10');
INSERT INTO `dictionary_threshold` VALUES ('104', '82', '4', '电流谐波含有率限值39', '10');
INSERT INTO `dictionary_threshold` VALUES ('105', '82', '6', '电流谐波含有率限值40', '10');
INSERT INTO `dictionary_threshold` VALUES ('106', '82', '8', '电流谐波含有率限值41', '10');
INSERT INTO `dictionary_threshold` VALUES ('107', '82', '10', '电流谐波含有率限值42', '10');
INSERT INTO `dictionary_threshold` VALUES ('108', '82', '12', '电流谐波含有率限值43', '10');
INSERT INTO `dictionary_threshold` VALUES ('109', '82', '14', '电流谐波含有率限值44', '10');
INSERT INTO `dictionary_threshold` VALUES ('110', '82', '16', '电流谐波含有率限值45', '10');
INSERT INTO `dictionary_threshold` VALUES ('111', '82', '18', '电流谐波含有率限值46', '10');
INSERT INTO `dictionary_threshold` VALUES ('112', '82', '20', '电流谐波含有率限值47', '10');
INSERT INTO `dictionary_threshold` VALUES ('113', '82', '22', '电流谐波含有率限值48', '10');
INSERT INTO `dictionary_threshold` VALUES ('114', '82', '24', '电流谐波含有率限值49', '10');
INSERT INTO `dictionary_threshold` VALUES ('115', '82', '26', '电流谐波含有率限值50', '10');

-- ----------------------------
-- Table structure for events_type
-- ----------------------------
DROP TABLE IF EXISTS `events_type`;
CREATE TABLE `events_type` (
  `cid` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `devicename` varchar(255) DEFAULT NULL,
  `prior` int(11) DEFAULT NULL,
  `classify` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of events_type
-- ----------------------------
INSERT INTO `events_type` VALUES ('1', '0001', '3333', '1', '1', 'IDP', '1', '塌陷', 'Ua暂降');
INSERT INTO `events_type` VALUES ('2', '0001', '3333', '1', '2', 'IDP', '1', '塌陷', 'Ub暂降');
INSERT INTO `events_type` VALUES ('3', '0001', '3333', '1', '3', 'IDP', '1', '塌陷', 'Uc暂降');
INSERT INTO `events_type` VALUES ('4', '0001', '3333', '1', '10', 'IDP', '1', '塌陷', 'Ua Ub暂降');
INSERT INTO `events_type` VALUES ('5', '0001', '3333', '1', '11', 'IDP', '1', '塌陷', 'Ub Uc暂降');
INSERT INTO `events_type` VALUES ('6', '0001', '3333', '1', '12', 'IDP', '1', '塌陷', 'Uc Ua暂降');
INSERT INTO `events_type` VALUES ('7', '0001', '3333', '1', '13', 'IDP', '1', '塌陷', 'Ua Ub Uc暂降');
INSERT INTO `events_type` VALUES ('8', '0001', '3333', '2', '4', 'IDP', '2', '浪涌', 'Ua暂升');
INSERT INTO `events_type` VALUES ('9', '0001', '3333', '2', '5', 'IDP', '2', '浪涌', 'Ub暂升');
INSERT INTO `events_type` VALUES ('10', '0001', '3333', '2', '6', 'IDP', '2', '浪涌', 'Uc暂升');
INSERT INTO `events_type` VALUES ('11', '0001', '3333', '2', '14', 'IDP', '2', '浪涌', 'Ua Ub暂升');
INSERT INTO `events_type` VALUES ('12', '0001', '3333', '2', '15', 'IDP', '2', '浪涌', 'Ub Uc暂升');
INSERT INTO `events_type` VALUES ('13', '0001', '3333', '2', '16', 'IDP', '2', '浪涌', 'Uc Ua暂升');
INSERT INTO `events_type` VALUES ('14', '0001', '3333', '2', '17', 'IDP', '2', '浪涌', 'Ua Ub Uc暂升');
INSERT INTO `events_type` VALUES ('15', '0001', '3333', '3', '7', 'IDP', '3', '瞬变', 'Ua短时中断');
INSERT INTO `events_type` VALUES ('16', '0001', '3333', '3', '8', 'IDP', '3', '瞬变', 'Ub短时中端');
INSERT INTO `events_type` VALUES ('17', '0001', '3333', '3', '9', 'IDP', '3', '瞬变', 'Uc短时中断');
INSERT INTO `events_type` VALUES ('18', '0001', '3333', '3', '18', 'IDP', '3', '瞬变', 'Ua Ub短时中断');
INSERT INTO `events_type` VALUES ('19', '0001', '3333', '3', '19', 'IDP', '3', '瞬变', 'Ub Uc短时中断');
INSERT INTO `events_type` VALUES ('20', '0001', '3333', '3', '20', 'IDP', '3', '瞬变', 'Uc Ua短时中断');
INSERT INTO `events_type` VALUES ('21', '0001', '3333', '3', '21', 'IDP', '3', '瞬变', 'Ua Ub Uc短时中断');
INSERT INTO `events_type` VALUES ('22', '0002', '3333', '4', '2', 'IDP', '4', '频率偏差越上限', '频率偏差越上限');
INSERT INTO `events_type` VALUES ('23', '0002', '3333', '5', '3', 'IDP', '4', '频率偏差越下限', '频率偏差越下限');
INSERT INTO `events_type` VALUES ('24', '0002', '3333', '6', '26', 'IDP', '5', '电流谐波越限', 'Ia总谐波畸变率越限');
INSERT INTO `events_type` VALUES ('25', '0002', '3333', '6', '27', 'IDP', '5', '电流谐波越限', 'Ib总谐波畸变率越限');
INSERT INTO `events_type` VALUES ('26', '0002', '3333', '6', '28', 'IDP', '5', '电流谐波越限', 'Ic总谐波畸变率越限');
INSERT INTO `events_type` VALUES ('27', '0002', '3333', '12', '176', 'IDP', '5', '电流谐波越限2', 'Ia谐波有效值越限2');
INSERT INTO `events_type` VALUES ('28', '0002', '3333', '13', '177', 'IDP', '5', '电流谐波越限3', 'Ia谐波有效值越限3');
INSERT INTO `events_type` VALUES ('29', '0002', '3333', '14', '178', 'IDP', '5', '电流谐波越限4', 'Ia谐波有效值越限4');
INSERT INTO `events_type` VALUES ('30', '0002', '3333', '15', '179', 'IDP', '5', '电流谐波越限5', 'Ia谐波有效值越限5');
INSERT INTO `events_type` VALUES ('31', '0002', '3333', '16', '180', 'IDP', '5', '电流谐波越限6', 'Ia谐波有效值越限6');
INSERT INTO `events_type` VALUES ('32', '0002', '3333', '17', '181', 'IDP', '5', '电流谐波越限7', 'Ia谐波有效值越限7');
INSERT INTO `events_type` VALUES ('33', '0002', '3333', '18', '182', 'IDP', '5', '电流谐波越限8', 'Ia谐波有效值越限8');
INSERT INTO `events_type` VALUES ('34', '0002', '3333', '19', '183', 'IDP', '5', '电流谐波越限9', 'Ia谐波有效值越限9');
INSERT INTO `events_type` VALUES ('35', '0002', '3333', '20', '184', 'IDP', '5', '电流谐波越限10', 'Ia谐波有效值越限10');
INSERT INTO `events_type` VALUES ('36', '0002', '3333', '21', '185', 'IDP', '5', '电流谐波越限11', 'Ia谐波有效值越限11');
INSERT INTO `events_type` VALUES ('37', '0002', '3333', '22', '186', 'IDP', '5', '电流谐波越限12', 'Ia谐波有效值越限12');
INSERT INTO `events_type` VALUES ('38', '0002', '3333', '23', '187', 'IDP', '5', '电流谐波越限13', 'Ia谐波有效值越限13');
INSERT INTO `events_type` VALUES ('39', '0002', '3333', '24', '188', 'IDP', '5', '电流谐波越限14', 'Ia谐波有效值越限14');
INSERT INTO `events_type` VALUES ('40', '0002', '3333', '25', '189', 'IDP', '5', '电流谐波越限15', 'Ia谐波有效值越限15');
INSERT INTO `events_type` VALUES ('41', '0002', '3333', '26', '190', 'IDP', '5', '电流谐波越限16', 'Ia谐波有效值越限16');
INSERT INTO `events_type` VALUES ('42', '0002', '3333', '27', '191', 'IDP', '5', '电流谐波越限17', 'Ia谐波有效值越限17');
INSERT INTO `events_type` VALUES ('43', '0002', '3333', '28', '192', 'IDP', '5', '电流谐波越限18', 'Ia谐波有效值越限18');
INSERT INTO `events_type` VALUES ('44', '0002', '3333', '29', '193', 'IDP', '5', '电流谐波越限19', 'Ia谐波有效值越限19');
INSERT INTO `events_type` VALUES ('45', '0002', '3333', '30', '194', 'IDP', '5', '电流谐波越限20', 'Ia谐波有效值越限20');
INSERT INTO `events_type` VALUES ('46', '0002', '3333', '31', '195', 'IDP', '5', '电流谐波越限21', 'Ia谐波有效值越限21');
INSERT INTO `events_type` VALUES ('47', '0002', '3333', '32', '196', 'IDP', '5', '电流谐波越限22', 'Ia谐波有效值越限22');
INSERT INTO `events_type` VALUES ('48', '0002', '3333', '33', '197', 'IDP', '5', '电流谐波越限23', 'Ia谐波有效值越限23');
INSERT INTO `events_type` VALUES ('49', '0002', '3333', '34', '198', 'IDP', '5', '电流谐波越限24', 'Ia谐波有效值越限24');
INSERT INTO `events_type` VALUES ('50', '0002', '3333', '35', '199', 'IDP', '5', '电流谐波越限25', 'Ia谐波有效值越限25');
INSERT INTO `events_type` VALUES ('51', '0002', '3333', '36', '200', 'IDP', '5', '电流谐波越限26', 'Ia谐波有效值越限26');
INSERT INTO `events_type` VALUES ('52', '0002', '3333', '37', '201', 'IDP', '5', '电流谐波越限27', 'Ia谐波有效值越限27');
INSERT INTO `events_type` VALUES ('53', '0002', '3333', '38', '202', 'IDP', '5', '电流谐波越限28', 'Ia谐波有效值越限28');
INSERT INTO `events_type` VALUES ('54', '0002', '3333', '39', '203', 'IDP', '5', '电流谐波越限29', 'Ia谐波有效值越限29');
INSERT INTO `events_type` VALUES ('55', '0002', '3333', '40', '204', 'IDP', '5', '电流谐波越限30', 'Ia谐波有效值越限30');
INSERT INTO `events_type` VALUES ('56', '0002', '3333', '41', '205', 'IDP', '5', '电流谐波越限31', 'Ia谐波有效值越限31');
INSERT INTO `events_type` VALUES ('57', '0002', '3333', '42', '206', 'IDP', '5', '电流谐波越限32', 'Ia谐波有效值越限32');
INSERT INTO `events_type` VALUES ('58', '0002', '3333', '43', '207', 'IDP', '5', '电流谐波越限33', 'Ia谐波有效值越限33');
INSERT INTO `events_type` VALUES ('59', '0002', '3333', '44', '208', 'IDP', '5', '电流谐波越限34', 'Ia谐波有效值越限34');
INSERT INTO `events_type` VALUES ('60', '0002', '3333', '45', '209', 'IDP', '5', '电流谐波越限35', 'Ia谐波有效值越限35');
INSERT INTO `events_type` VALUES ('61', '0002', '3333', '46', '210', 'IDP', '5', '电流谐波越限36', 'Ia谐波有效值越限36');
INSERT INTO `events_type` VALUES ('62', '0002', '3333', '47', '211', 'IDP', '5', '电流谐波越限37', 'Ia谐波有效值越限37');
INSERT INTO `events_type` VALUES ('63', '0002', '3333', '48', '212', 'IDP', '5', '电流谐波越限38', 'Ia谐波有效值越限38');
INSERT INTO `events_type` VALUES ('64', '0002', '3333', '49', '213', 'IDP', '5', '电流谐波越限39', 'Ia谐波有效值越限39');
INSERT INTO `events_type` VALUES ('65', '0002', '3333', '50', '214', 'IDP', '5', '电流谐波越限40', 'Ia谐波有效值越限40');
INSERT INTO `events_type` VALUES ('66', '0002', '3333', '51', '215', 'IDP', '5', '电流谐波越限41', 'Ia谐波有效值越限41');
INSERT INTO `events_type` VALUES ('67', '0002', '3333', '52', '216', 'IDP', '5', '电流谐波越限42', 'Ia谐波有效值越限42');
INSERT INTO `events_type` VALUES ('68', '0002', '3333', '53', '217', 'IDP', '5', '电流谐波越限43', 'Ia谐波有效值越限43');
INSERT INTO `events_type` VALUES ('69', '0002', '3333', '54', '218', 'IDP', '5', '电流谐波越限44', 'Ia谐波有效值越限44');
INSERT INTO `events_type` VALUES ('70', '0002', '3333', '55', '219', 'IDP', '5', '电流谐波越限45', 'Ia谐波有效值越限45');
INSERT INTO `events_type` VALUES ('71', '0002', '3333', '56', '220', 'IDP', '5', '电流谐波越限46', 'Ia谐波有效值越限46');
INSERT INTO `events_type` VALUES ('72', '0002', '3333', '57', '221', 'IDP', '5', '电流谐波越限47', 'Ia谐波有效值越限47');
INSERT INTO `events_type` VALUES ('73', '0002', '3333', '58', '222', 'IDP', '5', '电流谐波越限48', 'Ia谐波有效值越限48');
INSERT INTO `events_type` VALUES ('74', '0002', '3333', '59', '223', 'IDP', '5', '电流谐波越限49', 'Ia谐波有效值越限49');
INSERT INTO `events_type` VALUES ('75', '0002', '3333', '60', '224', 'IDP', '5', '电流谐波越限50', 'Ia谐波有效值越限50');
INSERT INTO `events_type` VALUES ('76', '0002', '3333', '12', '225', 'IDP', '5', '电流谐波越限2', 'Ib谐波有效值越限2');
INSERT INTO `events_type` VALUES ('77', '0002', '3333', '13', '226', 'IDP', '5', '电流谐波越限3', 'Ib谐波有效值越限3');
INSERT INTO `events_type` VALUES ('78', '0002', '3333', '14', '227', 'IDP', '5', '电流谐波越限4', 'Ib谐波有效值越限4');
INSERT INTO `events_type` VALUES ('79', '0002', '3333', '15', '228', 'IDP', '5', '电流谐波越限5', 'Ib谐波有效值越限5');
INSERT INTO `events_type` VALUES ('80', '0002', '3333', '16', '229', 'IDP', '5', '电流谐波越限6', 'Ib谐波有效值越限6');
INSERT INTO `events_type` VALUES ('81', '0002', '3333', '17', '230', 'IDP', '5', '电流谐波越限7', 'Ib谐波有效值越限7');
INSERT INTO `events_type` VALUES ('82', '0002', '3333', '18', '231', 'IDP', '5', '电流谐波越限8', 'Ib谐波有效值越限8');
INSERT INTO `events_type` VALUES ('83', '0002', '3333', '19', '232', 'IDP', '5', '电流谐波越限9', 'Ib谐波有效值越限9');
INSERT INTO `events_type` VALUES ('84', '0002', '3333', '20', '233', 'IDP', '5', '电流谐波越限10', 'Ib谐波有效值越限10');
INSERT INTO `events_type` VALUES ('85', '0002', '3333', '21', '234', 'IDP', '5', '电流谐波越限11', 'Ib谐波有效值越限11');
INSERT INTO `events_type` VALUES ('86', '0002', '3333', '22', '235', 'IDP', '5', '电流谐波越限12', 'Ib谐波有效值越限12');
INSERT INTO `events_type` VALUES ('87', '0002', '3333', '23', '236', 'IDP', '5', '电流谐波越限13', 'Ib谐波有效值越限13');
INSERT INTO `events_type` VALUES ('88', '0002', '3333', '24', '237', 'IDP', '5', '电流谐波越限14', 'Ib谐波有效值越限14');
INSERT INTO `events_type` VALUES ('89', '0002', '3333', '25', '238', 'IDP', '5', '电流谐波越限15', 'Ib谐波有效值越限15');
INSERT INTO `events_type` VALUES ('90', '0002', '3333', '26', '239', 'IDP', '5', '电流谐波越限16', 'Ib谐波有效值越限16');
INSERT INTO `events_type` VALUES ('91', '0002', '3333', '27', '240', 'IDP', '5', '电流谐波越限17', 'Ib谐波有效值越限17');
INSERT INTO `events_type` VALUES ('92', '0002', '3333', '28', '241', 'IDP', '5', '电流谐波越限18', 'Ib谐波有效值越限18');
INSERT INTO `events_type` VALUES ('93', '0002', '3333', '29', '242', 'IDP', '5', '电流谐波越限19', 'Ib谐波有效值越限19');
INSERT INTO `events_type` VALUES ('94', '0002', '3333', '30', '243', 'IDP', '5', '电流谐波越限20', 'Ib谐波有效值越限20');
INSERT INTO `events_type` VALUES ('95', '0002', '3333', '31', '244', 'IDP', '5', '电流谐波越限21', 'Ib谐波有效值越限21');
INSERT INTO `events_type` VALUES ('96', '0002', '3333', '32', '245', 'IDP', '5', '电流谐波越限22', 'Ib谐波有效值越限22');
INSERT INTO `events_type` VALUES ('97', '0002', '3333', '33', '246', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限23');
INSERT INTO `events_type` VALUES ('98', '0002', '3333', '34', '247', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限24');
INSERT INTO `events_type` VALUES ('99', '0002', '3333', '35', '248', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限25');
INSERT INTO `events_type` VALUES ('100', '0002', '3333', '36', '249', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限26');
INSERT INTO `events_type` VALUES ('101', '0002', '3333', '37', '250', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限27');
INSERT INTO `events_type` VALUES ('102', '0002', '3333', '38', '251', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限28');
INSERT INTO `events_type` VALUES ('103', '0002', '3333', '39', '252', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限29');
INSERT INTO `events_type` VALUES ('104', '0002', '3333', '40', '253', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限30');
INSERT INTO `events_type` VALUES ('105', '0002', '3333', '41', '254', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限31');
INSERT INTO `events_type` VALUES ('106', '0002', '3333', '42', '255', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限32');
INSERT INTO `events_type` VALUES ('107', '0002', '3333', '43', '256', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限33');
INSERT INTO `events_type` VALUES ('108', '0002', '3333', '44', '257', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限34');
INSERT INTO `events_type` VALUES ('109', '0002', '3333', '45', '258', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限35');
INSERT INTO `events_type` VALUES ('110', '0002', '3333', '46', '259', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限36');
INSERT INTO `events_type` VALUES ('111', '0002', '3333', '47', '260', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限37');
INSERT INTO `events_type` VALUES ('112', '0002', '3333', '48', '261', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限38');
INSERT INTO `events_type` VALUES ('113', '0002', '3333', '49', '262', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限39');
INSERT INTO `events_type` VALUES ('114', '0002', '3333', '50', '263', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限40');
INSERT INTO `events_type` VALUES ('115', '0002', '3333', '51', '264', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限41');
INSERT INTO `events_type` VALUES ('116', '0002', '3333', '52', '265', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限42');
INSERT INTO `events_type` VALUES ('117', '0002', '3333', '53', '266', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限43');
INSERT INTO `events_type` VALUES ('118', '0002', '3333', '54', '267', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限44');
INSERT INTO `events_type` VALUES ('119', '0002', '3333', '55', '268', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限45');
INSERT INTO `events_type` VALUES ('120', '0002', '3333', '56', '269', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限46');
INSERT INTO `events_type` VALUES ('121', '0002', '3333', '57', '270', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限47');
INSERT INTO `events_type` VALUES ('122', '0002', '3333', '58', '271', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限48');
INSERT INTO `events_type` VALUES ('123', '0002', '3333', '59', '272', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限49');
INSERT INTO `events_type` VALUES ('124', '0002', '3333', '60', '273', 'IDP', '5', '电流谐波越限', 'Ib谐波有效值越限50');
INSERT INTO `events_type` VALUES ('125', '0002', '3333', '12', '274', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限2');
INSERT INTO `events_type` VALUES ('126', '0002', '3333', '13', '275', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限3');
INSERT INTO `events_type` VALUES ('127', '0002', '3333', '14', '276', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限4');
INSERT INTO `events_type` VALUES ('128', '0002', '3333', '15', '277', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限5');
INSERT INTO `events_type` VALUES ('129', '0002', '3333', '16', '278', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限6');
INSERT INTO `events_type` VALUES ('130', '0002', '3333', '17', '279', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限7');
INSERT INTO `events_type` VALUES ('131', '0002', '3333', '18', '280', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限8');
INSERT INTO `events_type` VALUES ('132', '0002', '3333', '19', '281', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限9');
INSERT INTO `events_type` VALUES ('133', '0002', '3333', '20', '282', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限10');
INSERT INTO `events_type` VALUES ('134', '0002', '3333', '21', '283', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限11');
INSERT INTO `events_type` VALUES ('135', '0002', '3333', '22', '284', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限12');
INSERT INTO `events_type` VALUES ('136', '0002', '3333', '23', '285', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限13');
INSERT INTO `events_type` VALUES ('137', '0002', '3333', '24', '286', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限14');
INSERT INTO `events_type` VALUES ('138', '0002', '3333', '25', '287', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限15');
INSERT INTO `events_type` VALUES ('139', '0002', '3333', '26', '288', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限16');
INSERT INTO `events_type` VALUES ('140', '0002', '3333', '27', '289', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限17');
INSERT INTO `events_type` VALUES ('141', '0002', '3333', '28', '290', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限18');
INSERT INTO `events_type` VALUES ('142', '0002', '3333', '29', '291', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限19');
INSERT INTO `events_type` VALUES ('143', '0002', '3333', '30', '292', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限20');
INSERT INTO `events_type` VALUES ('144', '0002', '3333', '31', '293', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限21');
INSERT INTO `events_type` VALUES ('145', '0002', '3333', '32', '294', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限22');
INSERT INTO `events_type` VALUES ('146', '0002', '3333', '33', '295', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限23');
INSERT INTO `events_type` VALUES ('147', '0002', '3333', '34', '296', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限24');
INSERT INTO `events_type` VALUES ('148', '0002', '3333', '35', '297', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限25');
INSERT INTO `events_type` VALUES ('149', '0002', '3333', '36', '298', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限26');
INSERT INTO `events_type` VALUES ('150', '0002', '3333', '37', '299', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限27');
INSERT INTO `events_type` VALUES ('151', '0002', '3333', '38', '300', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限28');
INSERT INTO `events_type` VALUES ('152', '0002', '3333', '39', '301', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限29');
INSERT INTO `events_type` VALUES ('153', '0002', '3333', '40', '302', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限30');
INSERT INTO `events_type` VALUES ('154', '0002', '3333', '41', '303', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限31');
INSERT INTO `events_type` VALUES ('155', '0002', '3333', '42', '304', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限32');
INSERT INTO `events_type` VALUES ('156', '0002', '3333', '43', '305', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限33');
INSERT INTO `events_type` VALUES ('157', '0002', '3333', '44', '306', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限34');
INSERT INTO `events_type` VALUES ('158', '0002', '3333', '45', '307', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限35');
INSERT INTO `events_type` VALUES ('159', '0002', '3333', '46', '308', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限36');
INSERT INTO `events_type` VALUES ('160', '0002', '3333', '47', '309', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限37');
INSERT INTO `events_type` VALUES ('161', '0002', '3333', '48', '310', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限38');
INSERT INTO `events_type` VALUES ('162', '0002', '3333', '49', '311', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限39');
INSERT INTO `events_type` VALUES ('163', '0002', '3333', '50', '312', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限40');
INSERT INTO `events_type` VALUES ('164', '0002', '3333', '51', '313', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限41');
INSERT INTO `events_type` VALUES ('165', '0002', '3333', '52', '314', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限42');
INSERT INTO `events_type` VALUES ('166', '0002', '3333', '53', '315', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限43');
INSERT INTO `events_type` VALUES ('167', '0002', '3333', '54', '316', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限44');
INSERT INTO `events_type` VALUES ('168', '0002', '3333', '55', '317', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限45');
INSERT INTO `events_type` VALUES ('169', '0002', '3333', '56', '318', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限46');
INSERT INTO `events_type` VALUES ('170', '0002', '3333', '57', '319', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限47');
INSERT INTO `events_type` VALUES ('171', '0002', '3333', '58', '320', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限48');
INSERT INTO `events_type` VALUES ('172', '0002', '3333', '59', '321', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限49');
INSERT INTO `events_type` VALUES ('173', '0002', '3333', '60', '322', 'IDP', '5', '电流谐波越限', 'Ic谐波有效值越限50');
INSERT INTO `events_type` VALUES ('174', '0002', '3333', '7', '23', 'IDP', '6', '电压谐波越限', 'Ua总谐波畸变率越限');
INSERT INTO `events_type` VALUES ('175', '0002', '3333', '7', '24', 'IDP', '6', '电压谐波越限', 'Ub总谐波畸变率越限');
INSERT INTO `events_type` VALUES ('176', '0002', '3333', '7', '25', 'IDP', '6', '电压谐波越限', 'Uc总谐波畸变率越限');
INSERT INTO `events_type` VALUES ('177', '0002', '3333', '62', '29', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限2');
INSERT INTO `events_type` VALUES ('178', '0002', '3333', '63', '30', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限3');
INSERT INTO `events_type` VALUES ('179', '0002', '3333', '64', '31', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限4');
INSERT INTO `events_type` VALUES ('180', '0002', '3333', '65', '32', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限5');
INSERT INTO `events_type` VALUES ('181', '0002', '3333', '66', '33', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限6');
INSERT INTO `events_type` VALUES ('182', '0002', '3333', '67', '34', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限7');
INSERT INTO `events_type` VALUES ('183', '0002', '3333', '68', '35', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限8');
INSERT INTO `events_type` VALUES ('184', '0002', '3333', '69', '36', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限9');
INSERT INTO `events_type` VALUES ('185', '0002', '3333', '70', '37', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限10');
INSERT INTO `events_type` VALUES ('186', '0002', '3333', '71', '38', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限11');
INSERT INTO `events_type` VALUES ('187', '0002', '3333', '72', '39', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限12');
INSERT INTO `events_type` VALUES ('188', '0002', '3333', '73', '40', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限13');
INSERT INTO `events_type` VALUES ('189', '0002', '3333', '74', '41', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限14');
INSERT INTO `events_type` VALUES ('190', '0002', '3333', '75', '42', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限15');
INSERT INTO `events_type` VALUES ('191', '0002', '3333', '76', '43', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限16');
INSERT INTO `events_type` VALUES ('192', '0002', '3333', '77', '44', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限17');
INSERT INTO `events_type` VALUES ('193', '0002', '3333', '78', '45', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限18');
INSERT INTO `events_type` VALUES ('194', '0002', '3333', '79', '46', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限19');
INSERT INTO `events_type` VALUES ('195', '0002', '3333', '80', '47', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限20');
INSERT INTO `events_type` VALUES ('196', '0002', '3333', '81', '48', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限21');
INSERT INTO `events_type` VALUES ('197', '0002', '3333', '82', '49', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限22');
INSERT INTO `events_type` VALUES ('198', '0002', '3333', '83', '50', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限23');
INSERT INTO `events_type` VALUES ('199', '0002', '3333', '84', '51', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限24');
INSERT INTO `events_type` VALUES ('200', '0002', '3333', '85', '52', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限25');
INSERT INTO `events_type` VALUES ('201', '0002', '3333', '86', '53', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限26');
INSERT INTO `events_type` VALUES ('202', '0002', '3333', '87', '54', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限27');
INSERT INTO `events_type` VALUES ('203', '0002', '3333', '88', '55', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限28');
INSERT INTO `events_type` VALUES ('204', '0002', '3333', '89', '56', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限29');
INSERT INTO `events_type` VALUES ('205', '0002', '3333', '90', '57', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限30');
INSERT INTO `events_type` VALUES ('206', '0002', '3333', '91', '58', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限31');
INSERT INTO `events_type` VALUES ('207', '0002', '3333', '92', '59', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限32');
INSERT INTO `events_type` VALUES ('208', '0002', '3333', '93', '60', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限33');
INSERT INTO `events_type` VALUES ('209', '0002', '3333', '94', '61', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限34');
INSERT INTO `events_type` VALUES ('210', '0002', '3333', '95', '62', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限35');
INSERT INTO `events_type` VALUES ('211', '0002', '3333', '96', '63', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限36');
INSERT INTO `events_type` VALUES ('212', '0002', '3333', '97', '64', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限37');
INSERT INTO `events_type` VALUES ('213', '0002', '3333', '98', '65', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限38');
INSERT INTO `events_type` VALUES ('214', '0002', '3333', '99', '66', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限39');
INSERT INTO `events_type` VALUES ('215', '0002', '3333', '100', '67', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限40');
INSERT INTO `events_type` VALUES ('216', '0002', '3333', '101', '68', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限41');
INSERT INTO `events_type` VALUES ('217', '0002', '3333', '102', '69', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限42');
INSERT INTO `events_type` VALUES ('218', '0002', '3333', '103', '70', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限43');
INSERT INTO `events_type` VALUES ('219', '0002', '3333', '104', '71', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限44');
INSERT INTO `events_type` VALUES ('220', '0002', '3333', '105', '72', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限45');
INSERT INTO `events_type` VALUES ('221', '0002', '3333', '106', '73', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限46');
INSERT INTO `events_type` VALUES ('222', '0002', '3333', '107', '74', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限47');
INSERT INTO `events_type` VALUES ('223', '0002', '3333', '108', '75', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限48');
INSERT INTO `events_type` VALUES ('224', '0002', '3333', '109', '76', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限49');
INSERT INTO `events_type` VALUES ('225', '0002', '3333', '110', '77', 'IDP', '6', '电压谐波越限', 'Ua谐波含有率越限50');
INSERT INTO `events_type` VALUES ('226', '0002', '3333', '62', '78', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限2');
INSERT INTO `events_type` VALUES ('227', '0002', '3333', '63', '79', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限3');
INSERT INTO `events_type` VALUES ('228', '0002', '3333', '64', '80', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限4');
INSERT INTO `events_type` VALUES ('229', '0002', '3333', '65', '81', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限5');
INSERT INTO `events_type` VALUES ('230', '0002', '3333', '66', '82', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限6');
INSERT INTO `events_type` VALUES ('231', '0002', '3333', '67', '83', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限7');
INSERT INTO `events_type` VALUES ('232', '0002', '3333', '68', '84', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限8');
INSERT INTO `events_type` VALUES ('233', '0002', '3333', '69', '85', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限9');
INSERT INTO `events_type` VALUES ('234', '0002', '3333', '70', '86', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限10');
INSERT INTO `events_type` VALUES ('235', '0002', '3333', '71', '87', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限11');
INSERT INTO `events_type` VALUES ('236', '0002', '3333', '72', '88', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限12');
INSERT INTO `events_type` VALUES ('237', '0002', '3333', '73', '89', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限13');
INSERT INTO `events_type` VALUES ('238', '0002', '3333', '74', '90', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限14');
INSERT INTO `events_type` VALUES ('239', '0002', '3333', '75', '91', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限15');
INSERT INTO `events_type` VALUES ('240', '0002', '3333', '76', '92', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限16');
INSERT INTO `events_type` VALUES ('241', '0002', '3333', '77', '93', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限17');
INSERT INTO `events_type` VALUES ('242', '0002', '3333', '78', '94', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限18');
INSERT INTO `events_type` VALUES ('243', '0002', '3333', '79', '95', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限19');
INSERT INTO `events_type` VALUES ('244', '0002', '3333', '80', '96', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限20');
INSERT INTO `events_type` VALUES ('245', '0002', '3333', '81', '97', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限21');
INSERT INTO `events_type` VALUES ('246', '0002', '3333', '82', '98', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限22');
INSERT INTO `events_type` VALUES ('247', '0002', '3333', '83', '99', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限23');
INSERT INTO `events_type` VALUES ('248', '0002', '3333', '84', '100', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限24');
INSERT INTO `events_type` VALUES ('249', '0002', '3333', '85', '101', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限25');
INSERT INTO `events_type` VALUES ('250', '0002', '3333', '86', '102', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限26');
INSERT INTO `events_type` VALUES ('251', '0002', '3333', '87', '103', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限27');
INSERT INTO `events_type` VALUES ('252', '0002', '3333', '88', '104', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限28');
INSERT INTO `events_type` VALUES ('253', '0002', '3333', '89', '105', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限29');
INSERT INTO `events_type` VALUES ('254', '0002', '3333', '90', '106', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限30');
INSERT INTO `events_type` VALUES ('255', '0002', '3333', '91', '107', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限31');
INSERT INTO `events_type` VALUES ('256', '0002', '3333', '92', '108', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限32');
INSERT INTO `events_type` VALUES ('257', '0002', '3333', '93', '109', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限33');
INSERT INTO `events_type` VALUES ('258', '0002', '3333', '94', '110', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限34');
INSERT INTO `events_type` VALUES ('259', '0002', '3333', '95', '111', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限35');
INSERT INTO `events_type` VALUES ('260', '0002', '3333', '96', '112', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限36');
INSERT INTO `events_type` VALUES ('261', '0002', '3333', '97', '113', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限37');
INSERT INTO `events_type` VALUES ('262', '0002', '3333', '98', '114', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限38');
INSERT INTO `events_type` VALUES ('263', '0002', '3333', '99', '115', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限39');
INSERT INTO `events_type` VALUES ('264', '0002', '3333', '100', '116', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限40');
INSERT INTO `events_type` VALUES ('265', '0002', '3333', '101', '117', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限41');
INSERT INTO `events_type` VALUES ('266', '0002', '3333', '102', '118', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限42');
INSERT INTO `events_type` VALUES ('267', '0002', '3333', '103', '119', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限43');
INSERT INTO `events_type` VALUES ('268', '0002', '3333', '104', '120', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限44');
INSERT INTO `events_type` VALUES ('269', '0002', '3333', '105', '121', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限45');
INSERT INTO `events_type` VALUES ('270', '0002', '3333', '106', '122', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限46');
INSERT INTO `events_type` VALUES ('271', '0002', '3333', '107', '123', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限47');
INSERT INTO `events_type` VALUES ('272', '0002', '3333', '108', '124', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限48');
INSERT INTO `events_type` VALUES ('273', '0002', '3333', '109', '125', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限49');
INSERT INTO `events_type` VALUES ('274', '0002', '3333', '110', '126', 'IDP', '6', '电压谐波越限', 'Ub谐波含有率越限50');
INSERT INTO `events_type` VALUES ('275', '0002', '3333', '62', '127', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限2');
INSERT INTO `events_type` VALUES ('276', '0002', '3333', '63', '128', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限3');
INSERT INTO `events_type` VALUES ('277', '0002', '3333', '64', '129', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限4');
INSERT INTO `events_type` VALUES ('278', '0002', '3333', '65', '130', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限5');
INSERT INTO `events_type` VALUES ('279', '0002', '3333', '66', '131', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限6');
INSERT INTO `events_type` VALUES ('280', '0002', '3333', '67', '132', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限7');
INSERT INTO `events_type` VALUES ('281', '0002', '3333', '68', '133', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限8');
INSERT INTO `events_type` VALUES ('282', '0002', '3333', '69', '134', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限9');
INSERT INTO `events_type` VALUES ('283', '0002', '3333', '70', '135', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限10');
INSERT INTO `events_type` VALUES ('284', '0002', '3333', '71', '136', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限11');
INSERT INTO `events_type` VALUES ('285', '0002', '3333', '72', '137', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限12');
INSERT INTO `events_type` VALUES ('286', '0002', '3333', '73', '138', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限13');
INSERT INTO `events_type` VALUES ('287', '0002', '3333', '74', '139', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限14');
INSERT INTO `events_type` VALUES ('288', '0002', '3333', '75', '140', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限15');
INSERT INTO `events_type` VALUES ('289', '0002', '3333', '76', '141', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限16');
INSERT INTO `events_type` VALUES ('290', '0002', '3333', '77', '142', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限17');
INSERT INTO `events_type` VALUES ('291', '0002', '3333', '78', '143', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限18');
INSERT INTO `events_type` VALUES ('292', '0002', '3333', '79', '144', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限19');
INSERT INTO `events_type` VALUES ('293', '0002', '3333', '80', '145', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限20');
INSERT INTO `events_type` VALUES ('294', '0002', '3333', '81', '146', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限21');
INSERT INTO `events_type` VALUES ('295', '0002', '3333', '82', '147', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限22');
INSERT INTO `events_type` VALUES ('296', '0002', '3333', '83', '148', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限23');
INSERT INTO `events_type` VALUES ('297', '0002', '3333', '84', '149', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限24');
INSERT INTO `events_type` VALUES ('298', '0002', '3333', '85', '150', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限25');
INSERT INTO `events_type` VALUES ('299', '0002', '3333', '86', '151', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限26');
INSERT INTO `events_type` VALUES ('300', '0002', '3333', '87', '152', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限27');
INSERT INTO `events_type` VALUES ('301', '0002', '3333', '88', '153', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限28');
INSERT INTO `events_type` VALUES ('302', '0002', '3333', '89', '154', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限29');
INSERT INTO `events_type` VALUES ('303', '0002', '3333', '90', '155', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限30');
INSERT INTO `events_type` VALUES ('304', '0002', '3333', '91', '156', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限31');
INSERT INTO `events_type` VALUES ('305', '0002', '3333', '92', '157', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限32');
INSERT INTO `events_type` VALUES ('306', '0002', '3333', '93', '158', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限33');
INSERT INTO `events_type` VALUES ('307', '0002', '3333', '94', '159', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限34');
INSERT INTO `events_type` VALUES ('308', '0002', '3333', '95', '160', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限35');
INSERT INTO `events_type` VALUES ('309', '0002', '3333', '96', '161', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限36');
INSERT INTO `events_type` VALUES ('310', '0002', '3333', '97', '162', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限37');
INSERT INTO `events_type` VALUES ('311', '0002', '3333', '98', '163', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限38');
INSERT INTO `events_type` VALUES ('312', '0002', '3333', '99', '164', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限39');
INSERT INTO `events_type` VALUES ('313', '0002', '3333', '100', '165', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限40');
INSERT INTO `events_type` VALUES ('314', '0002', '3333', '101', '166', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限41');
INSERT INTO `events_type` VALUES ('315', '0002', '3333', '102', '167', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限42');
INSERT INTO `events_type` VALUES ('316', '0002', '3333', '103', '168', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限43');
INSERT INTO `events_type` VALUES ('317', '0002', '3333', '104', '169', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限44');
INSERT INTO `events_type` VALUES ('318', '0002', '3333', '105', '170', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限45');
INSERT INTO `events_type` VALUES ('319', '0002', '3333', '106', '171', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限46');
INSERT INTO `events_type` VALUES ('320', '0002', '3333', '107', '172', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限47');
INSERT INTO `events_type` VALUES ('321', '0002', '3333', '108', '173', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限48');
INSERT INTO `events_type` VALUES ('322', '0002', '3333', '109', '174', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限49');
INSERT INTO `events_type` VALUES ('323', '0002', '3333', '110', '175', 'IDP', '6', '电压谐波越限', 'Uc谐波含有率越限50');
INSERT INTO `events_type` VALUES ('324', '0002', '3333', '9', '5', 'IDP', '7', '电压偏差越上限', 'Ua电压偏差越上限');
INSERT INTO `events_type` VALUES ('325', '0002', '3333', '8', '6', 'IDP', '7', '电压偏差越下限', 'Ua电压偏差越下限');
INSERT INTO `events_type` VALUES ('326', '0002', '3333', '9', '8', 'IDP', '7', '电压偏差越上限', 'Ub电压偏差越上限');
INSERT INTO `events_type` VALUES ('327', '0002', '3333', '8', '9', 'IDP', '7', '电压偏差越下限', 'Ub电压偏差越下限');
INSERT INTO `events_type` VALUES ('328', '0002', '3333', '9', '11', 'IDP', '7', '电压偏差越上限', 'Uc电压偏差越上限');
INSERT INTO `events_type` VALUES ('329', '0002', '3333', '8', '12', 'IDP', '7', '电压偏差越下限', 'Uc电压偏差越下限');
INSERT INTO `events_type` VALUES ('330', '0002', '3333', '10', '17', 'IDP', '8', '电压闪变越限短闪', 'Ua短时闪变越限');
INSERT INTO `events_type` VALUES ('331', '0002', '3333', '10', '18', 'IDP', '8', '电压闪变越限短闪', 'Ub短时闪变越限');
INSERT INTO `events_type` VALUES ('332', '0002', '3333', '10', '19', 'IDP', '8', '电压闪变越限短闪', 'Uc短时闪变越限');
INSERT INTO `events_type` VALUES ('333', '0002', '3333', '11', '20', 'IDP', '8', '电压闪变越限长闪', 'Ua长时闪变越限');
INSERT INTO `events_type` VALUES ('334', '0002', '3333', '11', '21', 'IDP', '8', '电压闪变越限长闪', 'Ub长时闪变越限');
INSERT INTO `events_type` VALUES ('335', '0002', '3333', '11', '22', 'IDP', '8', '电压闪变越限长闪', 'Uc长时闪变越限');
INSERT INTO `events_type` VALUES ('336', '0002', '3333', '112', '13', 'IDP', '9', '电压不平衡度', '电压负序不平衡度越限');
INSERT INTO `events_type` VALUES ('337', '0002', '3333', '', '1', 'IDP', '10', 'TBD（未定义）', 'TBD（未定义）');
INSERT INTO `events_type` VALUES ('338', '0002', '3333', '', '4', 'IDP', '10', 'TBD（未定义）', 'TBD（未定义）');
INSERT INTO `events_type` VALUES ('339', '0002', '3333', '', '5', 'IDP', '10', 'TBD（未定义）', 'TBD（未定义）');
INSERT INTO `events_type` VALUES ('340', '0002', '3333', '', '10', 'IDP', '10', 'TBD（未定义）', 'TBD（未定义）');
INSERT INTO `events_type` VALUES ('341', '0002', '3333', '', '14', 'IDP', '10', 'TBD（未定义）', 'TBD（未定义）');
INSERT INTO `events_type` VALUES ('342', '0002', '3333', '', '15', 'IDP', '10', 'TBD（未定义）', 'TBD（未定义）');
INSERT INTO `events_type` VALUES ('343', '0002', '3333', '', '16', 'IDP', '10', 'TBD（未定义）', 'TBD（未定义）');
INSERT INTO `events_type` VALUES ('344', '01', '2222', '113', '1', 'tempreture', '11', '温度', '温度过高');
INSERT INTO `events_type` VALUES ('345', '01', '2222', '114', '2', 'tempreture', '11', '温度', '温度过低');
INSERT INTO `events_type` VALUES ('346', '01', '2222', '115', '3', 'tempreture', '11', '湿度', '湿度过高');
INSERT INTO `events_type` VALUES ('347', '01', '2222', '116', '4', 'tempreture', '11', '湿度', '湿度过低');
INSERT INTO `events_type` VALUES ('348', '01', '1111', '117', '1', 'ctrl', '12', '整机故障', '整机故障标志');
INSERT INTO `events_type` VALUES ('1111', null, '0', null, '', '', null, '设备类', '设备类');
INSERT INTO `events_type` VALUES ('2222', null, '0', null, null, null, null, '环境类', '环境类');
INSERT INTO `events_type` VALUES ('3333', null, '0', null, null, null, null, '电能质量类', '电能质量类');

-- ----------------------------
-- Table structure for event_ctrl
-- ----------------------------
DROP TABLE IF EXISTS `event_ctrl`;
CREATE TABLE `event_ctrl` (
  `teid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `limitval` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `did` longtext,
  `time` datetime DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `annotation` varchar(255) DEFAULT NULL,
  `subtype` int(11) DEFAULT NULL,
  PRIMARY KEY (`teid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_ctrl
-- ----------------------------

-- ----------------------------
-- Table structure for event_environment
-- ----------------------------
DROP TABLE IF EXISTS `event_environment`;
CREATE TABLE `event_environment` (
  `teid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `value` double NOT NULL,
  `limitval` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `did` varchar(255) DEFAULT NULL,
  `time` datetime NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `annotation` varchar(255) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_environment
-- ----------------------------

-- ----------------------------
-- Table structure for event_power
-- ----------------------------
DROP TABLE IF EXISTS `event_power`;
CREATE TABLE `event_power` (
  `teid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `value` double NOT NULL,
  `limitval` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `did` varchar(255) DEFAULT NULL,
  `time` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `annotation` varchar(255) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teid`)
) ENGINE=InnoDB AUTO_INCREMENT=584 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_power
-- ----------------------------

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
INSERT INTO `knowledge` VALUES ('1', '1', '0', '1 知识库', '');
INSERT INTO `knowledge` VALUES ('2', '1', '1', '1.1 在线监测模块', '');
INSERT INTO `knowledge` VALUES ('3', '1', '2', '1.1.1 趋势图监测', '趋势图监测可以观察实时THD、RMS、W、VA、VAR、Plt、Pst等电能质量参数');
INSERT INTO `knowledge` VALUES ('4', '1', '2', '1.1.2 谐波监测', '谐波监测可以看谐波各个次数的百分比，分为柱状图、折线图、数值等多种显示模式');

-- ----------------------------
-- Table structure for orgnization_structure
-- ----------------------------
DROP TABLE IF EXISTS `orgnization_structure`;
CREATE TABLE `orgnization_structure` (
  `id` varchar(255) NOT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgnization_structure
-- ----------------------------
INSERT INTO `orgnization_structure` VALUES ('1', '0', '总行');
INSERT INTO `orgnization_structure` VALUES ('100', '1', '台湾分行');
INSERT INTO `orgnization_structure` VALUES ('10001', '2001', '1号机房');
INSERT INTO `orgnization_structure` VALUES ('10002', '2001', '2号机房');
INSERT INTO `orgnization_structure` VALUES ('10003', '2002', '3号机房');
INSERT INTO `orgnization_structure` VALUES ('10004', '2002', '4号机房');
INSERT INTO `orgnization_structure` VALUES ('10005', '2003', '5号机房');
INSERT INTO `orgnization_structure` VALUES ('10006', '140', '6号机房');
INSERT INTO `orgnization_structure` VALUES ('1001', '100', '台北分行');
INSERT INTO `orgnization_structure` VALUES ('110', '1', '安徽分行');
INSERT INTO `orgnization_structure` VALUES ('120', '1', '福建分行');
INSERT INTO `orgnization_structure` VALUES ('130', '1', '江西分行');
INSERT INTO `orgnization_structure` VALUES ('140', '1', '山东分行');
INSERT INTO `orgnization_structure` VALUES ('150', '1', '河南分行');
INSERT INTO `orgnization_structure` VALUES ('1501', '150', '郑州分行');
INSERT INTO `orgnization_structure` VALUES ('160', '1', '湖北分行');
INSERT INTO `orgnization_structure` VALUES ('170', '1', '湖南分行');
INSERT INTO `orgnization_structure` VALUES ('180', '1', '广东分行');
INSERT INTO `orgnization_structure` VALUES ('190', '1', '广西分行');
INSERT INTO `orgnization_structure` VALUES ('200', '1', '河北分行');
INSERT INTO `orgnization_structure` VALUES ('2001', '200', '石家庄分行');
INSERT INTO `orgnization_structure` VALUES ('2002', '200', '廊坊分行');
INSERT INTO `orgnization_structure` VALUES ('2003', '200', '秦皇岛分行');
INSERT INTO `orgnization_structure` VALUES ('210', '1', '海南分行');
INSERT INTO `orgnization_structure` VALUES ('220', '1', '四川分行');
INSERT INTO `orgnization_structure` VALUES ('230', '1', '贵州分行');
INSERT INTO `orgnization_structure` VALUES ('240', '1', '云南分行');
INSERT INTO `orgnization_structure` VALUES ('250', '1', '西藏分行');
INSERT INTO `orgnization_structure` VALUES ('260', '1', '陕西分行');
INSERT INTO `orgnization_structure` VALUES ('270', '1', '甘肃分行');
INSERT INTO `orgnization_structure` VALUES ('280', '1', '青海分行');
INSERT INTO `orgnization_structure` VALUES ('290', '1', '宁夏分行');
INSERT INTO `orgnization_structure` VALUES ('300', '1', '山西分行');
INSERT INTO `orgnization_structure` VALUES ('3001', '300', '太原分行');
INSERT INTO `orgnization_structure` VALUES ('3002', '300', '大同分行');
INSERT INTO `orgnization_structure` VALUES ('3003', '300', '朔州分行');
INSERT INTO `orgnization_structure` VALUES ('310', '1', '新疆分行');
INSERT INTO `orgnization_structure` VALUES ('320', '1', '北京分行');
INSERT INTO `orgnization_structure` VALUES ('330', '1', '天津分行');
INSERT INTO `orgnization_structure` VALUES ('340', '1', '上海分行');
INSERT INTO `orgnization_structure` VALUES ('350', '1', '重庆分行');
INSERT INTO `orgnization_structure` VALUES ('360', '1', '香港分行');
INSERT INTO `orgnization_structure` VALUES ('370', '1', '澳门分行');
INSERT INTO `orgnization_structure` VALUES ('400', '1', '内蒙古分行');
INSERT INTO `orgnization_structure` VALUES ('500', '1', '辽宁分行');
INSERT INTO `orgnization_structure` VALUES ('600', '1', '吉林分行');

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
  `Ifl_sum` float(255,2) DEFAULT NULL,
  `Pst_U1` float(255,2) DEFAULT NULL,
  `Pst_U2` float(255,2) DEFAULT NULL,
  `Pst_U3` float(255,2) DEFAULT NULL,
  `Plt_U1` float(255,2) DEFAULT NULL,
  `Plt_U2` float(255,2) DEFAULT NULL,
  `Plt_U3` float(255,2) DEFAULT NULL,
  `Hz` float(255,2) DEFAULT NULL,
  PRIMARY KEY (`ppid`)
) ENGINE=InnoDB AUTO_INCREMENT=120969 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powerparm_monitor
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=119562 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powersxdy_monitor
-- ----------------------------

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
  `THDU1` float(255,2) DEFAULT NULL,
  `THDU2` float(255,2) DEFAULT NULL,
  `THDU3` float(255,2) DEFAULT NULL,
  `THDI1` float(255,2) DEFAULT NULL,
  `THDI2` float(255,2) DEFAULT NULL,
  `THDI3` float(255,2) DEFAULT NULL,
  PRIMARY KEY (`xbid`)
) ENGINE=InnoDB AUTO_INCREMENT=121792 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powerxb_monitor
-- ----------------------------

-- ----------------------------
-- Table structure for province_bank
-- ----------------------------
DROP TABLE IF EXISTS `province_bank`;
CREATE TABLE `province_bank` (
  `pbid` varchar(255) NOT NULL,
  `pbname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cbidset` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `compRoom` varchar(255) DEFAULT NULL,
  `didset` varchar(255) DEFAULT NULL,
  `tempset` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of province_bank
-- ----------------------------
INSERT INTO `province_bank` VALUES ('100', '台湾分行', '1001', null, null, null);
INSERT INTO `province_bank` VALUES ('110', '安徽分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('120', '福建分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('130', '江西分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('140', '山东分行', '', '10006', '', null);
INSERT INTO `province_bank` VALUES ('150', '河南分行', '1501', null, null, null);
INSERT INTO `province_bank` VALUES ('160', '湖北分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('170', '湖南分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('180', '广东分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('190', '广西分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('200', '河北分行', '2001，2002，2003', null, null, null);
INSERT INTO `province_bank` VALUES ('210', '海南分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('220', '四川分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('230', '贵州分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('240', '云南分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('250', '西藏分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('260', '陕西分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('270', '甘肃分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('280', '青海分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('290', '宁夏分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('300', '山西分行', '3001，3002，3003', null, null, null);
INSERT INTO `province_bank` VALUES ('310', '新疆分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('320', '北京分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('330', '天津分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('340', '上海分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('350', '重庆分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('360', '香港分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('370', '澳门分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('400', '内蒙古分行', '', null, null, null);
INSERT INTO `province_bank` VALUES ('500', '辽宁分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('600', '吉林分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('700', '黑龙江分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('800', '江苏分行', null, null, null, null);
INSERT INTO `province_bank` VALUES ('900', '浙江分行', null, null, null, null);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `rid` varchar(255) NOT NULL COMMENT 'auto_increment=true',
  `rolesname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `extra` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '管理员', '');
INSERT INTO `roles` VALUES ('2', '技术人员', '');
INSERT INTO `roles` VALUES ('3', '运维人员', '');

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
INSERT INTO `roles_permission` VALUES ('1', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
INSERT INTO `roles_permission` VALUES ('2', '3,5,1,2');
INSERT INTO `roles_permission` VALUES ('3', '5');

-- ----------------------------
-- Table structure for temperature_monitor
-- ----------------------------
DROP TABLE IF EXISTS `temperature_monitor`;
CREATE TABLE `temperature_monitor` (
  `ppid` int(11) NOT NULL,
  `did` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `temperature` float(255,2) NOT NULL,
  `humidity` float(255,0) NOT NULL,
  PRIMARY KEY (`ppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temperature_monitor
-- ----------------------------

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
INSERT INTO `user` VALUES ('1', 'admin', '周小川', 'E10ADC3949BA59ABBE56E057F20F883E', '18511587339', '18511587339', '', '', '');
INSERT INTO `user` VALUES ('2', 'test', '测试账号', 'E10ADC3949BA59ABBE56E057F20F883E', '19900000000', '19900000000', '200', '2001', '10001');

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
INSERT INTO `user_roles` VALUES ('2', '3');
