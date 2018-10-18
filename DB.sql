/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-10-18 09:54:59
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
) ENGINE=InnoDB AUTO_INCREMENT=7490 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of assess_record
-- ----------------------------
INSERT INTO `assess_record` VALUES ('1464', '1', '1', '104', '1', '2018-09-30 10:50:36');
INSERT INTO `assess_record` VALUES ('1465', '1', '1', '105', '1', '2018-09-30 10:50:40');
INSERT INTO `assess_record` VALUES ('1466', '1', '1', '106', '1', '2018-09-30 11:12:41');
INSERT INTO `assess_record` VALUES ('1467', '1', '1', '107', '1', '2018-09-30 11:12:41');
INSERT INTO `assess_record` VALUES ('1468', '1', '1', '108', '1', '2018-09-30 11:12:41');
INSERT INTO `assess_record` VALUES ('1469', '1', '1', '109', '1', '2018-09-30 11:12:41');
INSERT INTO `assess_record` VALUES ('1470', '1', '3', '110', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1471', '1', '3', '111', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1472', '1', '3', '112', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1473', '1', '3', '113', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1474', '1', '3', '114', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1475', '1', '3', '115', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1476', '1', '3', '116', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1477', '1', '3', '117', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1478', '1', '3', '118', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1479', '1', '3', '119', '1', '2018-09-30 10:50:39');
INSERT INTO `assess_record` VALUES ('1480', '1', '3', '120', '1', '2018-09-30 11:12:41');
INSERT INTO `assess_record` VALUES ('1481', '1', '3', '121', '1', '2018-09-30 11:12:41');
INSERT INTO `assess_record` VALUES ('1482', '1', '1', '130', '1', '2018-09-30 22:24:27');
INSERT INTO `assess_record` VALUES ('1483', '1', '1', '131', '1', '2018-09-30 22:24:27');
INSERT INTO `assess_record` VALUES ('1484', '1', '1', '132', '1', '2018-09-30 22:24:27');
INSERT INTO `assess_record` VALUES ('1485', '1', '1', '133', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1486', '1', '3', '134', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1487', '1', '3', '135', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1488', '1', '3', '136', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1489', '1', '3', '137', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1490', '1', '3', '138', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1491', '1', '3', '139', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1492', '1', '3', '140', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1493', '1', '3', '141', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1494', '1', '3', '142', '1', '2018-09-30 22:24:30');
INSERT INTO `assess_record` VALUES ('1495', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1496', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1497', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1498', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1499', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1500', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1501', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1502', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1503', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1504', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1505', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1506', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1507', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1508', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1509', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1510', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1511', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1512', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1513', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1514', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1515', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1516', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1517', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1518', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1519', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1520', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1521', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1522', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1523', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1524', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1525', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1526', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1527', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1528', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1529', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1530', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1531', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1532', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1533', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1534', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1535', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1536', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1537', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1538', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1539', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1540', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1541', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1542', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1543', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1544', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1545', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1546', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1547', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1548', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1549', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1550', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1551', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1552', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1553', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1554', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1555', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1556', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1557', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1558', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1559', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1560', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1561', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1562', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1563', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1564', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1565', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1566', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1567', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1568', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1569', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1570', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1571', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1572', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1573', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1574', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1575', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1576', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1577', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1578', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1579', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1580', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1581', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1582', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1583', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1584', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1585', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1586', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1587', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1588', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1589', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1590', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1591', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1592', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1593', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1594', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1595', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1596', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1597', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1598', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1599', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1600', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1601', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1602', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1603', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1604', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1605', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1606', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1607', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1608', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1609', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1610', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1611', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1612', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1613', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1614', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1615', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1616', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1617', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1618', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1619', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1620', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1621', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1622', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1623', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1624', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1625', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1626', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1627', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1628', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1629', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1630', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1631', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1632', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1633', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1634', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1635', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1636', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1637', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1638', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1639', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1640', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1641', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1642', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1643', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1644', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1645', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1646', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1647', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1648', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1649', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1650', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1651', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1652', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1653', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1654', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1655', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1656', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1657', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1658', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1659', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1660', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1661', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1662', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1663', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1664', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1665', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1666', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1667', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1668', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1669', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1670', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1671', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1672', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1673', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1674', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1675', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1676', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1677', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1678', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1679', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1680', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1681', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1682', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1683', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1684', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1685', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1686', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1687', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1688', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1689', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1690', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1691', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1692', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1693', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1694', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1695', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1696', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1697', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1698', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1699', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1700', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1701', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1702', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1703', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1704', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1705', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1706', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1707', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1708', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1709', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1710', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1711', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1712', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1713', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1714', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1715', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1716', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1717', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1718', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1719', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1720', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1721', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1722', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1723', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1724', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1725', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1726', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1727', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1728', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1729', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1730', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1731', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1732', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1733', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1734', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1735', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1736', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1737', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1738', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1739', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1740', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1741', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1742', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1743', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1744', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1745', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1746', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1747', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1748', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1749', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1750', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1751', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1752', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1753', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1754', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1755', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1756', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1757', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1758', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1759', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1760', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1761', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1762', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1763', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1764', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1765', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1766', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1767', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1768', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1769', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1770', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1771', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1772', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1773', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1774', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1775', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1776', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1777', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1778', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1779', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1780', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1781', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1782', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1783', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1784', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1785', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1786', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1787', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1788', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1789', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1790', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1791', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1792', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1793', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1794', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1795', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1796', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1797', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1798', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1799', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1800', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1801', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1802', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1803', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1804', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1805', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1806', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1807', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1808', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1809', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1810', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1811', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1812', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1813', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1814', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1815', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1816', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1817', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1818', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1819', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1820', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1821', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1822', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1823', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1824', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1825', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1826', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1827', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1828', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1829', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1830', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1831', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1832', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1833', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1834', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1835', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1836', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1837', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1838', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1839', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1840', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1841', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1842', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1843', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1844', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1845', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1846', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1847', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1848', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1849', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1850', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1851', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1852', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1853', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1854', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1855', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1856', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1857', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1858', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1859', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1860', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1861', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1862', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1863', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1864', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1865', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1866', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1867', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1868', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1869', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1870', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1871', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1872', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1873', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1874', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1875', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1876', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1877', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1878', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1879', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1880', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1881', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1882', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1883', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1884', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1885', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1886', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1887', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1888', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1889', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1890', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1891', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1892', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1893', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1894', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1895', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1896', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1897', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1898', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1899', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1900', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1901', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1902', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1903', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1904', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1905', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1906', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1907', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1908', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1909', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1910', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1911', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1912', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1913', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1914', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1915', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1916', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1917', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1918', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1919', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1920', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1921', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1922', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1923', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1924', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1925', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1926', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1927', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1928', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1929', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1930', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1931', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1932', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1933', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1934', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1935', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1936', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1937', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1938', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1939', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1940', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1941', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1942', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1943', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1944', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1945', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1946', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1947', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1948', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1949', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1950', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1951', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1952', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1953', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1954', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1955', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1956', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1957', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1958', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1959', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1960', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1961', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1962', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1963', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1964', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1965', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1966', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1967', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1968', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1969', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1970', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1971', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1972', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1973', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1974', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1975', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1976', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1977', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1978', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1979', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1980', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1981', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1982', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1983', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1984', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1985', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1986', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1987', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1988', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1989', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('1990', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1991', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1992', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1993', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1994', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1995', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1996', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1997', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1998', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('1999', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2000', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2001', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('2002', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2003', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2004', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2005', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2006', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2007', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2008', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2009', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2010', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2011', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2012', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2013', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('2014', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2015', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2016', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2017', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2018', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2019', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2020', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2021', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2022', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2023', '1', '1', '143', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2024', '1', '1', '144', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2025', '1', '1', '145', '1', '2018-10-08 18:26:00');
INSERT INTO `assess_record` VALUES ('2026', '1', '3', '146', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2027', '1', '3', '147', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2028', '1', '3', '148', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2029', '1', '3', '149', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2030', '1', '3', '150', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2031', '1', '3', '151', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2032', '1', '3', '152', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2033', '1', '3', '153', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2034', '1', '3', '154', '1', '2018-10-08 18:25:57');
INSERT INTO `assess_record` VALUES ('2035', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2036', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2037', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2038', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2039', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2040', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2041', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2042', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2043', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2044', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2045', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2046', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2047', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2048', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2049', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2050', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2051', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2052', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2053', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2054', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2055', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2056', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2057', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2058', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2059', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2060', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2061', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2062', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2063', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2064', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2065', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2066', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2067', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2068', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2069', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2070', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2071', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2072', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2073', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2074', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2075', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2076', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2077', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2078', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2079', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2080', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2081', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2082', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2083', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2084', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2085', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2086', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2087', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2088', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2089', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2090', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2091', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2092', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2093', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2094', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2095', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2096', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2097', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2098', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2099', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2100', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2101', '1', '3', '155', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2102', '1', '3', '156', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2103', '1', '3', '157', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2104', '1', '3', '158', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2105', '1', '3', '159', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2106', '1', '3', '160', '1', '2018-10-11 14:00:24');
INSERT INTO `assess_record` VALUES ('2107', '1', '3', '161', '1', '2018-10-11 14:00:25');
INSERT INTO `assess_record` VALUES ('2108', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2109', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2110', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2111', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2112', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2113', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2114', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2115', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2116', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2117', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2118', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2119', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2120', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2121', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2122', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2123', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2124', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2125', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2126', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2127', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2128', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2129', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2130', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2131', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2132', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2133', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2134', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2135', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2136', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2137', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2138', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2139', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2140', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2141', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2142', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2143', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2144', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2145', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2146', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2147', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2148', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2149', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2150', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2151', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2152', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2153', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2154', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2155', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2156', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2157', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2158', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2159', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2160', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2161', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2162', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2163', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2164', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2165', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2166', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2167', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2168', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2169', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2170', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2171', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2172', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2173', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2174', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2175', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2176', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2177', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2178', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2179', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2180', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2181', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2182', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2183', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2184', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2185', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2186', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2187', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2188', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2189', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2190', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2191', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2192', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2193', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2194', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2195', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2196', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2197', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2198', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2199', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2200', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2201', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2202', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2203', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2204', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2205', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2206', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2207', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2208', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2209', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2210', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2211', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2212', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2213', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2214', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2215', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2216', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2217', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2218', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2219', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2220', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2221', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2222', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2223', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2224', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2225', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2226', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2227', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2228', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2229', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2230', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2231', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2232', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2233', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2234', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2235', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2236', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2237', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2238', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2239', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2240', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2241', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2242', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2243', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2244', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2245', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2246', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2247', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2248', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2249', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2250', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2251', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2252', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2253', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2254', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2255', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2256', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2257', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2258', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2259', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2260', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2261', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2262', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2263', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2264', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2265', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2266', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2267', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2268', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2269', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2270', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2271', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2272', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2273', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2274', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2275', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2276', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2277', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2278', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2279', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2280', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2281', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2282', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2283', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2284', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2285', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2286', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2287', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2288', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2289', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2290', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2291', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2292', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2293', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2294', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2295', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2296', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2297', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2298', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2299', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2300', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2301', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2302', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2303', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2304', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2305', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2306', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2307', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2308', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2309', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2310', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2311', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2312', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2313', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2314', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2315', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2316', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2317', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2318', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2319', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2320', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2321', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2322', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2323', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2324', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2325', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2326', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2327', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2328', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2329', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2330', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2331', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2332', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2333', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2334', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2335', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2336', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2337', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2338', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2339', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2340', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2341', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2342', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2343', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2344', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2345', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2346', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2347', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2348', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2349', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2350', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2351', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2352', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2353', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2354', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2355', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2356', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2357', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2358', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2359', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2360', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2361', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2362', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2363', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2364', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2365', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2366', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2367', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2368', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2369', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2370', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2371', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2372', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2373', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2374', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2375', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2376', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2377', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2378', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2379', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2380', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2381', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2382', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2383', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2384', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2385', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2386', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2387', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2388', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2389', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2390', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2391', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2392', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2393', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2394', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2395', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2396', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2397', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2398', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2399', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2400', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2401', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2402', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2403', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2404', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2405', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2406', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2407', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2408', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2409', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2410', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2411', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2412', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2413', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2414', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2415', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2416', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2417', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2418', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2419', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2420', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2421', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2422', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2423', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2424', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2425', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2426', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2427', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2428', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2429', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2430', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2431', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2432', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2433', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2434', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2435', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2436', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2437', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2438', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2439', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2440', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2441', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2442', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2443', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2444', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2445', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2446', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2447', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2448', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2449', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2450', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2451', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2452', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2453', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2454', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2455', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2456', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2457', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2458', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2459', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2460', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2461', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2462', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2463', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2464', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2465', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2466', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2467', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2468', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2469', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2470', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2471', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2472', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2473', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2474', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2475', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2476', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2477', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2478', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2479', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2480', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2481', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2482', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2483', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2484', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2485', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2486', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2487', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2488', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2489', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2490', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2491', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2492', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2493', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2494', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2495', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2496', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2497', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2498', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2499', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2500', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2501', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2502', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2503', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2504', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2505', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2506', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2507', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2508', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2509', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2510', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2511', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2512', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2513', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2514', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2515', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2516', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2517', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2518', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2519', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2520', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2521', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2522', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2523', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2524', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2525', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2526', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2527', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2528', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2529', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2530', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2531', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2532', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2533', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2534', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2535', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2536', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2537', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2538', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2539', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2540', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2541', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2542', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2543', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2544', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2545', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2546', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2547', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2548', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2549', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2550', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2551', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2552', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2553', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2554', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2555', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2556', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2557', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2558', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2559', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2560', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2561', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2562', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2563', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2564', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2565', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2566', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2567', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2568', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2569', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2570', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2571', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2572', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2573', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2574', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2575', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2576', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2577', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2578', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2579', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2580', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2581', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2582', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2583', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2584', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2585', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2586', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2587', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2588', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2589', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2590', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2591', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2592', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2593', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2594', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2595', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2596', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2597', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2598', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2599', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2600', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2601', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2602', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2603', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2604', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2605', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2606', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2607', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2608', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2609', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2610', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2611', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2612', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2613', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2614', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2615', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2616', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2617', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2618', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2619', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2620', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2621', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2622', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2623', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2624', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2625', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2626', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2627', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2628', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2629', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2630', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2631', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2632', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2633', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2634', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2635', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2636', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2637', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2638', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2639', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2640', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2641', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2642', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2643', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2644', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2645', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2646', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2647', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2648', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2649', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2650', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2651', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2652', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2653', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2654', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2655', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2656', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2657', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2658', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2659', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2660', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2661', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2662', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2663', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2664', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2665', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2666', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2667', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2668', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2669', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2670', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2671', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2672', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2673', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2674', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2675', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2676', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2677', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2678', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2679', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2680', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2681', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2682', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2683', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2684', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2685', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2686', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2687', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2688', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2689', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2690', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2691', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2692', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2693', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2694', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2695', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2696', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2697', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2698', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2699', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2700', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2701', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2702', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2703', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2704', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2705', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2706', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2707', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2708', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2709', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2710', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2711', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2712', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2713', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2714', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2715', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2716', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2717', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2718', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2719', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2720', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2721', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2722', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2723', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2724', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2725', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2726', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2727', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2728', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2729', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2730', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2731', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2732', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2733', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2734', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2735', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2736', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2737', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2738', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2739', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2740', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2741', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2742', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2743', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2744', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2745', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2746', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2747', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2748', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2749', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2750', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2751', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2752', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2753', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2754', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2755', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2756', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2757', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2758', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2759', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2760', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2761', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2762', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2763', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2764', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2765', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2766', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2767', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2768', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2769', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2770', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2771', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2772', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2773', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2774', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2775', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2776', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2777', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2778', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2779', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2780', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2781', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2782', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2783', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2784', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2785', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2786', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2787', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2788', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2789', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2790', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2791', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2792', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2793', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2794', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2795', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2796', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2797', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2798', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2799', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2800', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2801', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2802', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2803', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2804', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2805', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2806', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2807', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2808', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2809', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2810', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2811', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2812', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2813', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2814', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2815', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2816', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2817', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2818', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2819', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2820', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2821', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2822', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2823', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2824', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2825', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2826', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2827', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2828', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2829', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2830', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2831', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2832', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2833', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2834', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2835', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2836', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2837', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2838', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2839', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2840', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2841', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2842', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2843', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2844', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2845', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2846', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2847', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2848', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2849', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2850', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2851', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2852', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2853', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2854', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2855', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2856', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2857', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2858', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2859', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2860', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2861', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2862', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2863', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2864', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2865', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2866', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2867', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2868', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2869', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2870', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2871', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2872', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2873', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2874', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2875', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2876', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2877', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2878', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2879', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2880', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2881', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2882', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2883', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2884', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2885', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2886', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2887', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2888', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2889', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2890', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2891', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2892', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2893', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2894', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2895', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2896', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2897', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2898', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2899', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2900', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2901', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2902', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2903', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2904', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2905', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2906', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2907', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2908', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2909', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2910', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2911', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2912', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2913', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2914', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2915', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2916', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2917', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2918', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2919', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2920', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2921', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2922', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2923', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2924', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2925', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2926', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2927', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2928', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2929', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2930', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2931', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2932', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2933', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2934', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2935', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2936', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2937', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2938', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2939', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2940', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2941', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2942', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2943', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2944', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2945', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2946', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2947', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2948', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2949', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2950', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2951', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2952', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2953', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2954', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2955', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2956', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2957', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2958', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2959', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2960', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2961', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2962', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2963', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2964', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2965', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2966', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2967', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2968', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2969', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2970', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2971', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2972', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2973', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2974', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2975', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2976', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2977', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2978', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2979', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2980', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2981', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2982', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2983', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2984', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2985', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2986', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2987', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2988', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2989', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2990', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2991', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2992', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2993', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('2994', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2995', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2996', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('2997', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('2998', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('2999', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3000', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3001', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3002', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3003', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3004', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3005', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3006', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3007', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3008', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3009', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3010', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3011', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3012', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3013', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('3014', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3015', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3016', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3017', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3018', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3019', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3020', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3021', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3022', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3023', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3024', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3025', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3026', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3027', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3028', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3029', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3030', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3031', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3032', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3033', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3034', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3035', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3036', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3037', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3038', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3039', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3040', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3041', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3042', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3043', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3044', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3045', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3046', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3047', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3048', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3049', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3050', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3051', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3052', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3053', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3054', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3055', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3056', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3057', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3058', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3059', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3060', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3061', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3062', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3063', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3064', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3065', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3066', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3067', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3068', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3069', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3070', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3071', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3072', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3073', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3074', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3075', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3076', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3077', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3078', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3079', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3080', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3081', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3082', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3083', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3084', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3085', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3086', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3087', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3088', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3089', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3090', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3091', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3092', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3093', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3094', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3095', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3096', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3097', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3098', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3099', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3100', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3101', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3102', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3103', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3104', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3105', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3106', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3107', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3108', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3109', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3110', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3111', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3112', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3113', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3114', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3115', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3116', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3117', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3118', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3119', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3120', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3121', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3122', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3123', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3124', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3125', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3126', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3127', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3128', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3129', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3130', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3131', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3132', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3133', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3134', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3135', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3136', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3137', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3138', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3139', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3140', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3141', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3142', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3143', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3144', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3145', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3146', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3147', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3148', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3149', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3150', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3151', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3152', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3153', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3154', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3155', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3156', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3157', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3158', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3159', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3160', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3161', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3162', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3163', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3164', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3165', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3166', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3167', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3168', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3169', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3170', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3171', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3172', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3173', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3174', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3175', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3176', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3177', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3178', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3179', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3180', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3181', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3182', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3183', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3184', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3185', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3186', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3187', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3188', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3189', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3190', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3191', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3192', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3193', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3194', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3195', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3196', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3197', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3198', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3199', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3200', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3201', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3202', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3203', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3204', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3205', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3206', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3207', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3208', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3209', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3210', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3211', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3212', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3213', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3214', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3215', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3216', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3217', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3218', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3219', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3220', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3221', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3222', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3223', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3224', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3225', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3226', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3227', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3228', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3229', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3230', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3231', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3232', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3233', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3234', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3235', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3236', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3237', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3238', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3239', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3240', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3241', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3242', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3243', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3244', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3245', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3246', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3247', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3248', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3249', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3250', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3251', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3252', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3253', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3254', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3255', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3256', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3257', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3258', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3259', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3260', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3261', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3262', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3263', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3264', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3265', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3266', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3267', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3268', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3269', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3270', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3271', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3272', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3273', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3274', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3275', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3276', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3277', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3278', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3279', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3280', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3281', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3282', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3283', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3284', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3285', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3286', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3287', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3288', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3289', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3290', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3291', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3292', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3293', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3294', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3295', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3296', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3297', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3298', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3299', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3300', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3301', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3302', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3303', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3304', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3305', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3306', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3307', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3308', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3309', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3310', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3311', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3312', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3313', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3314', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3315', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3316', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3317', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3318', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3319', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3320', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3321', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3322', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3323', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3324', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3325', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3326', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3327', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3328', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3329', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3330', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3331', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3332', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3333', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3334', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3335', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3336', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3337', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3338', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3339', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3340', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3341', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3342', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3343', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3344', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3345', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3346', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3347', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3348', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3349', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3350', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3351', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3352', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3353', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3354', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3355', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3356', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3357', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3358', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3359', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3360', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3361', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3362', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3363', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3364', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3365', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3366', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3367', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3368', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3369', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3370', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3371', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3372', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3373', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3374', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3375', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3376', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3377', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3378', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3379', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3380', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3381', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3382', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3383', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3384', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3385', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('3386', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3387', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3388', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3389', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3390', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3391', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3392', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3393', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3394', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3395', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3396', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3397', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3398', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3399', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3400', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3401', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3402', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3403', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3404', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3405', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3406', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3407', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3408', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3409', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3410', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3411', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3412', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3413', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3414', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3415', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3416', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3417', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3418', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3419', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3420', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3421', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3422', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3423', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3424', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3425', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3426', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3427', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3428', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3429', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3430', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3431', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3432', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3433', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3434', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3435', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3436', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3437', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3438', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3439', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3440', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3441', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3442', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3443', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3444', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3445', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3446', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3447', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3448', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3449', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3450', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3451', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3452', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3453', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3454', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3455', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3456', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3457', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3458', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3459', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3460', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3461', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3462', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3463', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3464', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3465', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3466', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3467', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3468', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3469', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3470', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3471', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3472', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3473', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3474', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3475', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3476', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3477', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3478', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3479', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3480', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3481', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3482', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3483', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3484', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3485', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3486', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3487', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3488', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3489', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3490', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3491', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3492', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3493', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3494', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3495', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3496', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3497', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3498', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3499', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3500', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3501', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3502', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3503', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3504', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3505', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3506', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3507', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3508', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3509', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3510', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3511', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3512', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3513', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3514', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3515', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3516', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3517', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3518', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3519', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3520', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3521', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3522', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3523', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3524', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3525', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3526', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3527', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3528', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3529', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3530', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3531', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3532', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3533', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3534', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3535', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3536', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3537', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3538', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3539', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3540', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3541', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3542', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3543', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3544', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3545', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3546', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3547', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3548', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3549', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3550', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3551', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3552', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3553', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3554', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3555', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3556', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3557', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3558', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3559', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3560', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3561', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3562', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3563', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3564', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3565', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3566', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3567', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3568', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3569', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3570', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3571', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3572', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3573', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3574', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3575', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3576', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3577', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3578', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3579', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3580', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3581', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3582', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3583', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3584', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3585', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3586', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3587', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3588', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3589', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3590', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3591', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3592', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3593', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3594', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3595', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3596', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3597', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3598', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3599', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3600', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3601', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3602', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3603', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3604', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3605', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3606', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3607', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3608', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3609', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3610', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3611', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3612', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3613', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3614', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3615', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3616', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3617', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3618', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3619', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3620', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3621', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3622', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3623', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3624', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3625', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3626', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3627', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3628', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3629', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3630', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3631', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3632', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3633', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3634', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3635', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3636', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3637', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3638', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3639', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3640', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3641', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3642', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3643', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3644', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3645', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3646', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3647', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3648', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3649', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3650', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3651', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3652', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3653', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3654', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3655', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3656', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3657', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3658', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3659', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3660', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3661', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3662', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3663', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3664', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3665', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3666', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3667', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3668', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3669', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3670', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3671', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3672', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3673', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3674', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3675', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3676', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3677', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3678', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3679', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3680', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3681', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3682', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3683', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3684', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3685', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3686', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3687', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3688', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3689', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3690', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3691', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3692', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3693', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3694', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3695', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3696', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3697', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3698', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3699', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3700', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3701', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3702', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3703', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3704', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3705', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3706', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3707', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3708', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3709', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3710', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3711', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3712', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3713', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3714', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3715', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3716', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3717', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3718', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3719', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3720', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3721', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3722', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3723', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3724', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3725', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3726', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3727', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3728', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3729', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3730', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3731', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3732', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3733', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3734', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3735', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3736', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3737', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3738', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3739', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3740', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3741', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3742', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3743', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3744', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3745', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3746', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3747', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3748', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3749', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3750', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3751', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3752', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3753', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3754', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3755', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3756', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3757', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3758', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3759', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3760', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3761', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3762', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3763', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('3764', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3765', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('3766', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3767', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3768', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3769', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3770', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3771', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3772', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3773', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3774', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3775', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('3776', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3777', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3778', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3779', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3780', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3781', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3782', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3783', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3784', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3785', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3786', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3787', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3788', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3789', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3790', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3791', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3792', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3793', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3794', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3795', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3796', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3797', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3798', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3799', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3800', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3801', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3802', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3803', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3804', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3805', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3806', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3807', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3808', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3809', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3810', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3811', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3812', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3813', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3814', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3815', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3816', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3817', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3818', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3819', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3820', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3821', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3822', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3823', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3824', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3825', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3826', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3827', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3828', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3829', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3830', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3831', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3832', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3833', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3834', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3835', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3836', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3837', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3838', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3839', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3840', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3841', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3842', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3843', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3844', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3845', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3846', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3847', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3848', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3849', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3850', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3851', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3852', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3853', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3854', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3855', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3856', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3857', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3858', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3859', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3860', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3861', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3862', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3863', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3864', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3865', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3866', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3867', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3868', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3869', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3870', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3871', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3872', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3873', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3874', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3875', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3876', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3877', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3878', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3879', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3880', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3881', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3882', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3883', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3884', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3885', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3886', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3887', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3888', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3889', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3890', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3891', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3892', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3893', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3894', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3895', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3896', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3897', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3898', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3899', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3900', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3901', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3902', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3903', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3904', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3905', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3906', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3907', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3908', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3909', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3910', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3911', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3912', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3913', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3914', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3915', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3916', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3917', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3918', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3919', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3920', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3921', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3922', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3923', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3924', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3925', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3926', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3927', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3928', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3929', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3930', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3931', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3932', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3933', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3934', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3935', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3936', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3937', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3938', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3939', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3940', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3941', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3942', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3943', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3944', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3945', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3946', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3947', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3948', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3949', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3950', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3951', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3952', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3953', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3954', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3955', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3956', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3957', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3958', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3959', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3960', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3961', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3962', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3963', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3964', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3965', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3966', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3967', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3968', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3969', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3970', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3971', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3972', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3973', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3974', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3975', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3976', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3977', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3978', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3979', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3980', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3981', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3982', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3983', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('3984', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('3985', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3986', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3987', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3988', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3989', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3990', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3991', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3992', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3993', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3994', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3995', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('3996', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3997', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3998', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('3999', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4000', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4001', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4002', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4003', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4004', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4005', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4006', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4007', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4008', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4009', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4010', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4011', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4012', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4013', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4014', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4015', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4016', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4017', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4018', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4019', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4020', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4021', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4022', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4023', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4024', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4025', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4026', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4027', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4028', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4029', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4030', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4031', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4032', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4033', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4034', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4035', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4036', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4037', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4038', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4039', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4040', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4041', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4042', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4043', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4044', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4045', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4046', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4047', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4048', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4049', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4050', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4051', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4052', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4053', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4054', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4055', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4056', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4057', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4058', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4059', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4060', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4061', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4062', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4063', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4064', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4065', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4066', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4067', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4068', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4069', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4070', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4071', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4072', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4073', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4074', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4075', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4076', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4077', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4078', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4079', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4080', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4081', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4082', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4083', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4084', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4085', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4086', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4087', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4088', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4089', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4090', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4091', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4092', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4093', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4094', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4095', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4096', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4097', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4098', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4099', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4100', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4101', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4102', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4103', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4104', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4105', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4106', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4107', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4108', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4109', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4110', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4111', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4112', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4113', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4114', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4115', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4116', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4117', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4118', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4119', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4120', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4121', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4122', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4123', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4124', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4125', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4126', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4127', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4128', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4129', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4130', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4131', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4132', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4133', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4134', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4135', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4136', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4137', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4138', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4139', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4140', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4141', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4142', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4143', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('4144', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4145', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4146', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4147', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4148', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4149', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4150', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4151', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4152', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4153', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4154', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4155', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4156', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4157', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4158', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4159', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4160', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4161', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4162', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4163', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4164', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4165', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4166', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4167', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4168', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4169', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4170', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4171', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4172', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4173', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4174', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4175', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4176', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4177', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4178', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4179', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4180', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4181', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4182', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4183', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4184', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4185', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4186', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4187', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4188', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4189', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4190', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4191', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4192', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4193', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4194', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4195', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4196', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4197', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4198', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4199', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4200', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4201', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4202', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4203', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4204', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4205', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4206', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4207', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4208', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4209', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4210', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4211', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4212', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4213', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4214', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4215', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4216', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4217', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4218', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4219', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4220', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4221', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4222', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4223', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4224', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4225', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4226', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4227', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4228', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4229', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4230', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4231', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4232', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4233', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4234', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4235', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4236', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4237', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4238', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4239', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4240', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4241', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4242', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4243', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4244', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4245', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4246', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4247', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4248', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4249', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4250', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4251', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4252', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4253', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4254', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4255', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4256', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4257', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4258', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4259', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4260', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4261', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4262', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4263', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4264', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4265', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4266', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4267', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4268', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4269', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4270', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4271', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4272', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4273', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4274', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4275', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4276', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4277', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4278', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4279', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4280', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4281', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4282', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4283', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4284', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4285', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4286', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4287', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4288', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4289', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4290', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4291', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4292', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4293', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4294', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4295', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4296', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4297', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4298', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4299', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4300', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4301', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4302', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4303', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4304', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4305', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4306', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4307', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4308', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4309', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4310', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4311', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4312', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4313', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4314', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4315', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4316', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4317', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4318', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4319', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4320', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4321', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4322', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4323', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4324', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4325', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4326', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4327', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4328', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4329', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4330', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4331', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4332', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4333', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4334', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4335', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4336', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4337', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4338', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4339', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4340', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4341', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4342', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4343', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4344', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4345', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4346', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4347', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4348', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4349', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4350', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4351', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4352', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4353', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4354', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4355', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4356', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4357', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4358', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4359', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4360', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4361', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4362', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4363', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4364', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4365', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4366', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4367', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4368', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4369', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4370', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4371', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4372', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4373', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4374', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4375', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4376', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4377', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4378', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4379', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4380', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4381', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4382', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4383', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4384', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4385', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4386', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4387', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4388', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4389', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4390', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4391', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4392', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4393', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4394', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4395', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4396', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4397', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4398', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4399', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4400', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4401', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4402', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4403', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4404', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4405', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4406', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4407', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4408', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4409', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4410', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4411', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4412', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4413', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4414', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4415', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4416', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4417', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4418', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4419', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4420', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4421', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4422', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4423', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4424', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4425', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4426', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4427', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4428', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4429', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4430', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4431', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4432', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4433', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4434', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4435', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4436', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4437', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4438', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4439', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4440', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4441', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4442', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4443', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4444', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4445', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4446', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4447', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4448', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4449', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4450', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4451', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4452', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4453', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4454', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4455', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4456', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4457', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4458', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4459', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4460', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4461', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4462', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4463', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4464', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4465', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4466', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4467', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4468', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4469', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4470', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4471', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4472', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4473', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4474', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4475', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4476', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4477', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4478', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4479', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4480', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4481', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4482', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4483', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4484', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4485', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4486', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4487', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4488', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4489', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4490', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4491', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4492', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4493', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4494', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4495', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4496', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4497', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4498', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4499', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4500', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4501', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4502', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4503', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4504', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4505', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4506', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4507', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4508', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4509', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4510', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4511', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4512', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4513', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4514', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4515', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4516', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4517', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4518', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4519', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4520', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4521', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4522', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('4523', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4524', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4525', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4526', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4527', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4528', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4529', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4530', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4531', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4532', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4533', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4534', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4535', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4536', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4537', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4538', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4539', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4540', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4541', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4542', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4543', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4544', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4545', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4546', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4547', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4548', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4549', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4550', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4551', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4552', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4553', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4554', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4555', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4556', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4557', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4558', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4559', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4560', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4561', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4562', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4563', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4564', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4565', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4566', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4567', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4568', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4569', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4570', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4571', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4572', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4573', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4574', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4575', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4576', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4577', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4578', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4579', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4580', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4581', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4582', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4583', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4584', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4585', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4586', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4587', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4588', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4589', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4590', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4591', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4592', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4593', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4594', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4595', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4596', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4597', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4598', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4599', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4600', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4601', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4602', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4603', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4604', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4605', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4606', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4607', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4608', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4609', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4610', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4611', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4612', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4613', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4614', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4615', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4616', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4617', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4618', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4619', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4620', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4621', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4622', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4623', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4624', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4625', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4626', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4627', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4628', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4629', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4630', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4631', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4632', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4633', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4634', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4635', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4636', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4637', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4638', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4639', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4640', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4641', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4642', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4643', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4644', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4645', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4646', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4647', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4648', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4649', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4650', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4651', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4652', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4653', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4654', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4655', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4656', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4657', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4658', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4659', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4660', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4661', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4662', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4663', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4664', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4665', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4666', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4667', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4668', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4669', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4670', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4671', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4672', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4673', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4674', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4675', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4676', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4677', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4678', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4679', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4680', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4681', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4682', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4683', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4684', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4685', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4686', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4687', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4688', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4689', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4690', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4691', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4692', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4693', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4694', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4695', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4696', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4697', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4698', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4699', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4700', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4701', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4702', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4703', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4704', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4705', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4706', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4707', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4708', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4709', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4710', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4711', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4712', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4713', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4714', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4715', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4716', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4717', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4718', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4719', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4720', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4721', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4722', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4723', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4724', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4725', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4726', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4727', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4728', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4729', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4730', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4731', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4732', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4733', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4734', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4735', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4736', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4737', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4738', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4739', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4740', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4741', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4742', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4743', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4744', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4745', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4746', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4747', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4748', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4749', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4750', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4751', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4752', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4753', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4754', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4755', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4756', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4757', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4758', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4759', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4760', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4761', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4762', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4763', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4764', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4765', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4766', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4767', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4768', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4769', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4770', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4771', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4772', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4773', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4774', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4775', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4776', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4777', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4778', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4779', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4780', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4781', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4782', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4783', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4784', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4785', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4786', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4787', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4788', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4789', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4790', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4791', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4792', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4793', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4794', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4795', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4796', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4797', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4798', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4799', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4800', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4801', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4802', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4803', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4804', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4805', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4806', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4807', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4808', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4809', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4810', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4811', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4812', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4813', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4814', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4815', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4816', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4817', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4818', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4819', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4820', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4821', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4822', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4823', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4824', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4825', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4826', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4827', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4828', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4829', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4830', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4831', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4832', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4833', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4834', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4835', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4836', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4837', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4838', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4839', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4840', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4841', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4842', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4843', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4844', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4845', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4846', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4847', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4848', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4849', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4850', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4851', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4852', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4853', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4854', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4855', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4856', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4857', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4858', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4859', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4860', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4861', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4862', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4863', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4864', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4865', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4866', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4867', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4868', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4869', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4870', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4871', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4872', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4873', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4874', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4875', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4876', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4877', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4878', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4879', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4880', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4881', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4882', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4883', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4884', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4885', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4886', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4887', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4888', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4889', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4890', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4891', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4892', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4893', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4894', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4895', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4896', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4897', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4898', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4899', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4900', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('4901', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4902', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('4903', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4904', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4905', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4906', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4907', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4908', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4909', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4910', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4911', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4912', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('4913', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4914', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4915', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4916', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4917', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4918', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4919', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4920', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4921', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4922', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4923', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4924', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4925', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4926', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4927', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4928', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4929', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4930', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4931', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4932', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4933', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4934', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4935', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4936', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4937', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4938', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4939', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4940', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4941', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4942', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4943', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4944', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4945', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4946', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4947', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4948', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4949', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4950', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4951', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4952', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4953', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4954', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4955', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4956', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4957', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4958', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4959', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4960', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4961', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4962', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4963', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4964', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4965', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4966', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4967', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4968', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4969', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4970', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4971', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4972', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4973', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4974', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4975', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4976', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4977', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4978', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4979', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4980', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4981', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4982', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4983', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4984', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4985', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4986', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4987', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4988', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4989', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4990', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('4991', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('4992', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('4993', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4994', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4995', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4996', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4997', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4998', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('4999', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5000', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5001', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5002', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5003', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5004', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5005', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5006', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5007', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5008', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5009', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5010', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5011', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5012', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5013', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5014', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5015', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5016', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5017', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5018', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5019', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5020', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5021', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5022', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5023', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5024', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5025', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5026', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5027', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5028', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5029', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5030', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5031', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5032', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5033', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5034', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5035', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5036', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5037', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5038', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5039', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5040', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5041', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5042', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5043', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5044', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5045', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5046', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5047', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5048', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5049', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5050', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5051', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5052', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5053', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5054', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5055', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5056', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5057', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5058', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5059', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5060', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5061', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5062', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5063', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5064', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5065', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5066', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5067', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5068', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5069', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5070', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5071', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5072', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5073', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5074', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5075', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5076', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5077', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5078', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5079', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5080', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5081', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5082', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5083', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5084', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5085', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5086', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5087', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5088', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5089', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5090', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5091', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5092', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5093', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5094', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5095', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5096', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5097', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5098', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5099', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5100', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5101', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5102', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5103', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5104', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5105', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5106', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5107', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5108', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5109', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5110', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5111', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5112', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5113', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5114', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5115', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5116', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5117', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5118', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5119', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5120', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5121', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5122', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5123', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5124', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5125', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5126', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5127', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5128', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5129', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5130', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5131', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5132', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5133', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5134', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5135', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5136', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5137', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5138', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5139', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5140', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5141', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5142', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5143', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5144', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5145', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5146', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5147', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5148', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5149', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5150', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5151', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5152', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5153', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5154', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5155', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5156', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5157', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5158', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5159', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5160', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5161', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5162', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5163', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5164', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5165', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5166', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5167', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5168', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5169', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5170', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5171', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5172', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5173', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5174', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5175', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5176', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5177', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5178', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5179', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5180', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5181', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5182', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5183', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5184', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5185', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5186', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5187', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5188', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5189', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5190', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5191', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5192', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5193', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5194', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5195', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5196', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5197', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5198', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5199', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5200', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5201', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5202', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5203', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5204', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5205', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5206', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5207', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5208', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5209', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5210', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5211', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5212', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5213', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5214', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5215', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5216', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5217', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5218', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5219', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5220', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5221', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5222', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5223', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5224', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5225', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5226', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5227', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5228', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5229', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5230', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5231', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5232', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5233', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5234', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5235', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5236', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5237', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5238', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5239', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5240', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5241', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5242', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5243', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5244', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5245', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5246', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5247', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5248', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5249', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5250', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5251', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5252', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5253', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5254', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5255', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5256', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5257', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5258', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5259', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5260', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5261', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5262', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5263', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5264', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5265', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5266', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5267', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5268', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5269', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5270', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5271', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5272', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5273', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5274', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5275', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5276', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('5277', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('5278', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('5279', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('5280', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5281', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('5282', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5283', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5284', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5285', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5286', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5287', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5288', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5289', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5290', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5291', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5292', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5293', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5294', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5295', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5296', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5297', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5298', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5299', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5300', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5301', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5302', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5303', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5304', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5305', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5306', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5307', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5308', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5309', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5310', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5311', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5312', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5313', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5314', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5315', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5316', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5317', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5318', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5319', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5320', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5321', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5322', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5323', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5324', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5325', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5326', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5327', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5328', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5329', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5330', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5331', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5332', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5333', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5334', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5335', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5336', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5337', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5338', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5339', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5340', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5341', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5342', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5343', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5344', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5345', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5346', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5347', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5348', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5349', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5350', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5351', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5352', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5353', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5354', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5355', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5356', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5357', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5358', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5359', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5360', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5361', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5362', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5363', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5364', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5365', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5366', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5367', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5368', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5369', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5370', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5371', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5372', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5373', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5374', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5375', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5376', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5377', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5378', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5379', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5380', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5381', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5382', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5383', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5384', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5385', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5386', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5387', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5388', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5389', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5390', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5391', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5392', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5393', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5394', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5395', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5396', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5397', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5398', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5399', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5400', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5401', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5402', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5403', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5404', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5405', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5406', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5407', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5408', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5409', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5410', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5411', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5412', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5413', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5414', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5415', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5416', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5417', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5418', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5419', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5420', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5421', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5422', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5423', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5424', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5425', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5426', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5427', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5428', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5429', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5430', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5431', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5432', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5433', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5434', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5435', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5436', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5437', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5438', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5439', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5440', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5441', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5442', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5443', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5444', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5445', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5446', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5447', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5448', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5449', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5450', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5451', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5452', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5453', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5454', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5455', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5456', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5457', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5458', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5459', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5460', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5461', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5462', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5463', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5464', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5465', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5466', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5467', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5468', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5469', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5470', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5471', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5472', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5473', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5474', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5475', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5476', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5477', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5478', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5479', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5480', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5481', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5482', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5483', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5484', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5485', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5486', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5487', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5488', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5489', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5490', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5491', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5492', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5493', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5494', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5495', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5496', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5497', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5498', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5499', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5500', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5501', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5502', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5503', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5504', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5505', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5506', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5507', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5508', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5509', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5510', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5511', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5512', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5513', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5514', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5515', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5516', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5517', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5518', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5519', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5520', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5521', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5522', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5523', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5524', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5525', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5526', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5527', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5528', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5529', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5530', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5531', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5532', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5533', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5534', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5535', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5536', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5537', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5538', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5539', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5540', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5541', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5542', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5543', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5544', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5545', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5546', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5547', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5548', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5549', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5550', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5551', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5552', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5553', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5554', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5555', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5556', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5557', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5558', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5559', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5560', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5561', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5562', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5563', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5564', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5565', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5566', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5567', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5568', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5569', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5570', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5571', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5572', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5573', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5574', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5575', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5576', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5577', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5578', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5579', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5580', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5581', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5582', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5583', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5584', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5585', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5586', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5587', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5588', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5589', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5590', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5591', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5592', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5593', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5594', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5595', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5596', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5597', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5598', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5599', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5600', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5601', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5602', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5603', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5604', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5605', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5606', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5607', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5608', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5609', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5610', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5611', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5612', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5613', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5614', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5615', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5616', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5617', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5618', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5619', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5620', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5621', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5622', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5623', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5624', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5625', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5626', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5627', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5628', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5629', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5630', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5631', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5632', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5633', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5634', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5635', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5636', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5637', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5638', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5639', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5640', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5641', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5642', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5643', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5644', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5645', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5646', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5647', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5648', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5649', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5650', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5651', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5652', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5653', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5654', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('5655', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('5656', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('5657', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('5658', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5659', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('5660', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5661', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5662', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5663', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5664', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5665', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5666', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5667', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5668', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5669', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('5670', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5671', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5672', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5673', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5674', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5675', '1', '1', '163', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5676', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5677', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5678', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5679', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5680', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5681', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5682', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5683', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5684', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5685', '1', '3', '179', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5686', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5687', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5688', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5689', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5690', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5691', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5692', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5693', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5694', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5695', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5696', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5697', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5698', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5699', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5700', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5701', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5702', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5703', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5704', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5705', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5706', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5707', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5708', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5709', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5710', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5711', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5712', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5713', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5714', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5715', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5716', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5717', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5718', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5719', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5720', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5721', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5722', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5723', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5724', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5725', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5726', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5727', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5728', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5729', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5730', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5731', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5732', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5733', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5734', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5735', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5736', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5737', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5738', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5739', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5740', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5741', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5742', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5743', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5744', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5745', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5746', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5747', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5748', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5749', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5750', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5751', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5752', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5753', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5754', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5755', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5756', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5757', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5758', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5759', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5760', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5761', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5762', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5763', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5764', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5765', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5766', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5767', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5768', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5769', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5770', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5771', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5772', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5773', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5774', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5775', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5776', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5777', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5778', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5779', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5780', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5781', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5782', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5783', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5784', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5785', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5786', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5787', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5788', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5789', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5790', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5791', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5792', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5793', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5794', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5795', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5796', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5797', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5798', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5799', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5800', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5801', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5802', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5803', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5804', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5805', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5806', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5807', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5808', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5809', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5810', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5811', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5812', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5813', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5814', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5815', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5816', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5817', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5818', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5819', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5820', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5821', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5822', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5823', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5824', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5825', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5826', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5827', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5828', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5829', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5830', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5831', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5832', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5833', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5834', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5835', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5836', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5837', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5838', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5839', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5840', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5841', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5842', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5843', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5844', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5845', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5846', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5847', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5848', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5849', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5850', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5851', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5852', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5853', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5854', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5855', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5856', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5857', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5858', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5859', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5860', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5861', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5862', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5863', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5864', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5865', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5866', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5867', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5868', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5869', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5870', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5871', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5872', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5873', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5874', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5875', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5876', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5877', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5878', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5879', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5880', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5881', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5882', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5883', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5884', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5885', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5886', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5887', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5888', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5889', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5890', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5891', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5892', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5893', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5894', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5895', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5896', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5897', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5898', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5899', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5900', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5901', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5902', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5903', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5904', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5905', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5906', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5907', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5908', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5909', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5910', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5911', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5912', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5913', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5914', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5915', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5916', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5917', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5918', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5919', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5920', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5921', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5922', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5923', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5924', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5925', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5926', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5927', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5928', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5929', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5930', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5931', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5932', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5933', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5934', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5935', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5936', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5937', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5938', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5939', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5940', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5941', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5942', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5943', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5944', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5945', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5946', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5947', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5948', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5949', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5950', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5951', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5952', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5953', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5954', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5955', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5956', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5957', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5958', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5959', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5960', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5961', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5962', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5963', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5964', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5965', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5966', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5967', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5968', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5969', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5970', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5971', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5972', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('5973', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5974', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5975', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5976', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5977', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5978', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5979', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5980', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5981', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5982', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5983', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5984', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5985', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5986', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('5987', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('5988', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5989', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5990', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5991', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5992', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5993', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5994', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5995', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5996', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5997', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5998', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('5999', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6000', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6001', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6002', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6003', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6004', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6005', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6006', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6007', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6008', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6009', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6010', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6011', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6012', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6013', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6014', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6015', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6016', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6017', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6018', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6019', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6020', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6021', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6022', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6023', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6024', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6025', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6026', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6027', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6028', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6029', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6030', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6031', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6032', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6033', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6034', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6035', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6036', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6037', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6038', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6039', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6040', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6041', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6042', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6043', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6044', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6045', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6046', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6047', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6048', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6049', '1', '3', '166', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6050', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6051', '1', '3', '168', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6052', '1', '3', '170', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6053', '1', '3', '172', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6054', '1', '3', '174', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6055', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6056', '1', '3', '177', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6057', '1', '1', '180', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6058', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6059', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6060', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6061', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6062', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6063', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6064', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6065', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6066', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6067', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6068', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6069', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6070', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6071', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6072', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6073', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6074', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6075', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6076', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6077', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6078', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6079', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6080', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6081', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6082', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6083', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6084', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6085', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6086', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6087', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6088', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6089', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6090', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6091', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6092', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6093', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6094', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6095', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6096', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6097', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6098', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6099', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6100', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6101', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6102', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6103', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6104', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6105', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6106', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6107', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6108', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6109', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6110', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6111', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6112', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6113', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6114', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6115', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6116', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6117', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6118', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6119', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6120', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6121', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6122', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6123', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6124', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6125', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6126', '1', '3', '252', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6127', '1', '1', '253', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6128', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6129', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6130', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6131', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6132', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6133', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6134', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6135', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6136', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6137', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6138', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6139', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6140', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6141', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6142', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6143', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6144', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6145', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6146', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6147', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6148', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6149', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6150', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6151', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6152', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6153', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6154', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6155', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6156', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6157', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6158', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6159', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6160', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6161', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6162', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6163', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6164', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6165', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6166', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6167', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6168', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6169', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6170', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6171', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6172', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6173', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6174', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6175', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6176', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6177', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6178', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6179', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6180', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6181', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6182', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6183', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6184', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6185', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6186', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6187', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6188', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6189', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6190', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6191', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6192', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6193', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6194', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6195', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6196', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6197', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6198', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6199', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6200', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6201', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6202', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6203', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6204', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6205', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6206', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6207', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6208', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6209', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6210', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6211', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6212', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6213', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6214', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6215', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6216', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6217', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6218', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6219', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6220', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6221', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6222', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6223', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6224', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6225', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6226', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6227', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6228', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6229', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6230', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6231', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6232', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6233', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6234', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6235', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6236', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6237', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6238', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6239', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6240', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6241', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6242', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6243', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6244', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6245', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6246', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6247', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6248', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6249', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6250', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6251', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6252', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6253', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6254', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6255', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6256', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6257', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6258', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6259', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6260', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6261', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6262', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6263', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6264', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6265', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6266', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6267', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6268', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6269', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6270', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6271', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6272', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6273', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6274', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6275', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6276', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6277', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6278', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6279', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6280', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6281', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6282', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6283', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6284', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6285', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6286', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6287', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6288', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6289', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6290', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6291', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6292', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6293', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6294', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6295', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6296', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6297', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6298', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6299', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6300', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6301', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6302', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6303', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6304', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6305', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6306', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6307', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6308', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6309', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6310', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6311', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6312', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6313', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6314', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6315', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6316', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6317', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6318', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6319', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6320', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6321', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6322', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6323', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6324', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6325', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6326', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6327', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6328', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6329', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6330', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6331', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6332', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6333', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6334', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6335', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6336', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6337', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6338', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6339', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6340', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6341', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6342', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6343', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6344', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6345', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6346', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6347', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6348', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6349', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6350', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6351', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6352', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6353', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6354', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6355', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6356', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6357', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6358', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6359', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6360', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6361', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6362', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6363', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6364', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6365', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6366', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6367', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6368', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6369', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6370', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6371', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6372', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6373', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6374', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6375', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6376', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6377', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6378', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6379', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6380', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6381', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6382', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6383', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6384', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6385', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6386', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6387', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6388', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6389', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6390', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6391', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6392', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6393', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6394', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6395', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6396', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6397', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6398', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6399', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6400', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6401', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6402', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6403', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6404', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6405', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6406', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6407', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6408', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6409', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6410', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6411', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6412', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6413', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6414', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6415', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6416', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6417', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6418', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6419', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6420', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6421', '1', '1', '162', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6422', '1', '1', '164', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6423', '1', '1', '165', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6424', '1', '3', '167', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6425', '1', '3', '169', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6426', '1', '3', '171', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6427', '1', '3', '173', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6428', '1', '3', '175', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6429', '1', '3', '176', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6430', '1', '1', '178', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6431', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6432', '1', '3', '182', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6433', '1', '3', '183', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6434', '1', '3', '184', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6435', '1', '3', '185', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6436', '1', '3', '186', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6437', '1', '3', '187', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6438', '1', '3', '188', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6439', '1', '1', '189', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6440', '1', '3', '190', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6441', '1', '3', '191', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6442', '1', '3', '192', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6443', '1', '3', '193', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6444', '1', '1', '194', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6445', '1', '3', '195', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6446', '1', '1', '196', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6447', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6448', '1', '3', '198', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6449', '1', '3', '199', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6450', '1', '3', '200', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6451', '1', '3', '201', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6452', '1', '3', '202', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6453', '1', '3', '203', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6454', '1', '3', '204', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6455', '1', '1', '205', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6456', '1', '3', '206', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6457', '1', '3', '207', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6458', '1', '3', '208', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6459', '1', '3', '209', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6460', '1', '1', '210', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6461', '1', '3', '211', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6462', '1', '1', '212', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6463', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6464', '1', '3', '214', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6465', '1', '3', '215', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6466', '1', '3', '216', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6467', '1', '3', '217', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6468', '1', '3', '218', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6469', '1', '3', '219', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6470', '1', '3', '220', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6471', '1', '1', '221', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6472', '1', '3', '222', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6473', '1', '3', '223', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6474', '1', '3', '224', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6475', '1', '3', '225', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6476', '1', '1', '226', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6477', '1', '3', '227', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6478', '1', '1', '228', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6479', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6480', '1', '3', '230', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6481', '1', '3', '231', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6482', '1', '3', '232', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6483', '1', '3', '233', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6484', '1', '3', '234', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6485', '1', '3', '235', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6486', '1', '3', '236', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6487', '1', '1', '237', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6488', '1', '3', '238', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6489', '1', '3', '239', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6490', '1', '3', '240', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6491', '1', '3', '241', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6492', '1', '1', '242', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6493', '1', '3', '243', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6494', '1', '1', '244', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6495', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6496', '1', '3', '246', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6497', '1', '3', '247', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6498', '1', '3', '248', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6499', '1', '3', '249', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6500', '1', '3', '250', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6501', '1', '3', '251', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6502', '1', '3', '254', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6503', '1', '3', '255', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6504', '1', '3', '256', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6505', '1', '3', '257', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6506', '1', '1', '258', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6507', '1', '3', '259', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6508', '1', '1', '260', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6509', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6510', '1', '3', '262', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6511', '1', '3', '263', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6512', '1', '3', '264', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6513', '1', '3', '265', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6514', '1', '3', '266', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6515', '1', '3', '267', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6516', '1', '3', '268', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6517', '1', '1', '269', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6518', '1', '3', '270', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6519', '1', '3', '271', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6520', '1', '3', '272', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6521', '1', '3', '273', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6522', '1', '1', '274', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6523', '1', '3', '275', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6524', '1', '1', '276', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6525', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6526', '1', '3', '278', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6527', '1', '3', '279', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6528', '1', '3', '280', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6529', '1', '3', '281', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6530', '1', '3', '282', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6531', '1', '3', '283', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6532', '1', '3', '284', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6533', '1', '1', '285', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6534', '1', '3', '286', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6535', '1', '3', '287', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6536', '1', '3', '288', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6537', '1', '3', '289', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6538', '1', '1', '290', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6539', '1', '3', '291', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6540', '1', '1', '292', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6541', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6542', '1', '3', '294', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6543', '1', '3', '295', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6544', '1', '3', '296', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6545', '1', '3', '297', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6546', '1', '3', '298', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6547', '1', '3', '299', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6548', '1', '3', '300', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6549', '1', '1', '301', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6550', '1', '3', '302', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6551', '1', '3', '303', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6552', '1', '3', '304', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6553', '1', '3', '305', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6554', '1', '1', '306', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6555', '1', '3', '307', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6556', '1', '1', '308', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6557', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6558', '1', '3', '310', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6559', '1', '3', '311', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6560', '1', '3', '312', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6561', '1', '3', '313', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6562', '1', '3', '314', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6563', '1', '3', '315', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6564', '1', '3', '316', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6565', '1', '1', '317', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6566', '1', '3', '318', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6567', '1', '3', '319', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6568', '1', '3', '320', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6569', '1', '3', '321', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6570', '1', '1', '322', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6571', '1', '3', '323', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6572', '1', '1', '324', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6573', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6574', '1', '3', '326', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6575', '1', '3', '327', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6576', '1', '3', '328', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6577', '1', '3', '329', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6578', '1', '3', '330', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6579', '1', '3', '331', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6580', '1', '3', '332', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6581', '1', '1', '333', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6582', '1', '3', '334', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6583', '1', '3', '335', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6584', '1', '3', '336', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6585', '1', '3', '337', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6586', '1', '1', '338', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6587', '1', '3', '339', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6588', '1', '1', '340', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6589', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6590', '1', '3', '342', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6591', '1', '3', '343', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6592', '1', '3', '344', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6593', '1', '3', '345', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6594', '1', '3', '346', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6595', '1', '3', '347', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6596', '1', '3', '348', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6597', '1', '1', '349', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6598', '1', '3', '350', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6599', '1', '3', '351', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6600', '1', '3', '352', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6601', '1', '3', '353', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6602', '1', '1', '354', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6603', '1', '3', '355', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6604', '1', '1', '356', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6605', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6606', '1', '3', '358', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6607', '1', '3', '359', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6608', '1', '3', '360', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6609', '1', '3', '361', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6610', '1', '3', '362', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6611', '1', '3', '363', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6612', '1', '3', '364', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6613', '1', '1', '365', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6614', '1', '3', '366', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6615', '1', '3', '367', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6616', '1', '3', '368', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6617', '1', '3', '369', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6618', '1', '1', '370', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6619', '1', '3', '371', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6620', '1', '1', '372', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6621', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6622', '1', '3', '374', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6623', '1', '3', '375', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6624', '1', '3', '376', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6625', '1', '3', '377', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6626', '1', '3', '378', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6627', '1', '3', '379', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6628', '1', '3', '380', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6629', '1', '1', '381', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6630', '1', '3', '382', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6631', '1', '3', '383', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6632', '1', '3', '384', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6633', '1', '3', '385', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6634', '1', '1', '386', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6635', '1', '3', '387', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6636', '1', '1', '388', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6637', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6638', '1', '3', '390', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6639', '1', '3', '391', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6640', '1', '3', '392', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6641', '1', '3', '393', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6642', '1', '3', '394', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6643', '1', '3', '395', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6644', '1', '3', '396', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6645', '1', '1', '397', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6646', '1', '3', '398', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6647', '1', '3', '399', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6648', '1', '3', '400', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6649', '1', '3', '401', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6650', '1', '1', '402', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6651', '1', '3', '403', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6652', '1', '1', '404', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6653', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6654', '1', '3', '406', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6655', '1', '3', '407', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6656', '1', '3', '408', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6657', '1', '3', '409', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6658', '1', '3', '410', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6659', '1', '3', '411', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6660', '1', '3', '412', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6661', '1', '1', '413', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6662', '1', '3', '414', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6663', '1', '3', '415', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6664', '1', '3', '416', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6665', '1', '3', '417', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6666', '1', '1', '418', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6667', '1', '3', '419', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6668', '1', '1', '420', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6669', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6670', '1', '3', '422', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6671', '1', '3', '423', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6672', '1', '3', '424', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6673', '1', '3', '425', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6674', '1', '3', '426', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6675', '1', '3', '427', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6676', '1', '3', '428', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6677', '1', '1', '429', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6678', '1', '3', '430', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6679', '1', '3', '431', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6680', '1', '3', '432', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6681', '1', '3', '433', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6682', '1', '1', '434', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6683', '1', '3', '435', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6684', '1', '1', '436', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6685', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6686', '1', '3', '438', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6687', '1', '3', '439', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6688', '1', '3', '440', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6689', '1', '3', '441', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6690', '1', '3', '442', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6691', '1', '3', '443', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6692', '1', '3', '444', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6693', '1', '1', '445', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6694', '1', '3', '446', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6695', '1', '3', '447', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6696', '1', '3', '448', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6697', '1', '3', '449', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6698', '1', '1', '450', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6699', '1', '3', '451', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6700', '1', '1', '452', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6701', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6702', '1', '3', '454', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6703', '1', '3', '455', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6704', '1', '3', '456', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6705', '1', '3', '457', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6706', '1', '3', '458', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6707', '1', '3', '459', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6708', '1', '3', '460', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6709', '1', '1', '461', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6710', '1', '3', '462', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6711', '1', '3', '463', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6712', '1', '3', '464', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6713', '1', '3', '465', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6714', '1', '1', '466', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6715', '1', '3', '467', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6716', '1', '1', '468', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6717', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6718', '1', '3', '470', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6719', '1', '3', '471', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6720', '1', '3', '472', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6721', '1', '3', '473', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6722', '1', '3', '474', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6723', '1', '3', '475', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6724', '1', '3', '476', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6725', '1', '1', '477', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6726', '1', '3', '478', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6727', '1', '3', '479', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6728', '1', '3', '480', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6729', '1', '3', '481', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6730', '1', '1', '482', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6731', '1', '3', '483', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6732', '1', '1', '484', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6733', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6734', '1', '3', '486', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6735', '1', '3', '487', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6736', '1', '3', '488', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6737', '1', '3', '489', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6738', '1', '3', '490', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6739', '1', '3', '491', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6740', '1', '3', '492', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6741', '1', '1', '493', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6742', '1', '3', '494', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6743', '1', '3', '495', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6744', '1', '3', '496', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6745', '1', '3', '497', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6746', '1', '1', '498', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6747', '1', '3', '499', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6748', '1', '1', '500', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6749', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6750', '1', '3', '502', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6751', '1', '3', '503', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6752', '1', '3', '504', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6753', '1', '3', '505', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6754', '1', '3', '506', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6755', '1', '3', '507', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6756', '1', '3', '508', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6757', '1', '1', '509', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6758', '1', '3', '510', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6759', '1', '3', '511', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6760', '1', '3', '512', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6761', '1', '3', '513', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6762', '1', '1', '514', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6763', '1', '3', '515', '1', '2018-10-15 15:31:47');
INSERT INTO `assess_record` VALUES ('6764', '1', '1', '516', '1', '2018-10-15 15:31:51');
INSERT INTO `assess_record` VALUES ('6765', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6766', '1', '3', '518', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6767', '1', '3', '519', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6768', '1', '3', '520', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6769', '1', '3', '521', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6770', '1', '3', '522', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6771', '1', '3', '523', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6772', '1', '3', '524', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6773', '1', '1', '525', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6774', '1', '3', '526', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6775', '1', '3', '527', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6776', '1', '3', '528', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6777', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6778', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6779', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6780', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6781', '1', '3', '533', '1', '2018-10-15 15:31:48');
INSERT INTO `assess_record` VALUES ('6782', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6783', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6784', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6785', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6786', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6787', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6788', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6789', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6790', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6791', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6792', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6793', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6794', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6795', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6796', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6797', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6798', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6799', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6800', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6801', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6802', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6803', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6804', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6805', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6806', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6807', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6808', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6809', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6810', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6811', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6812', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6813', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6814', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6815', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6816', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6817', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6818', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6819', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6820', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6821', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6822', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6823', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6824', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6825', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6826', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6827', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6828', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6829', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6830', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6831', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6832', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6833', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6834', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6835', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6836', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6837', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6838', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6839', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6840', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6841', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6842', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6843', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6844', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6845', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6846', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6847', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6848', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6849', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6850', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6851', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6852', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6853', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6854', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6855', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6856', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6857', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6858', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6859', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6860', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6861', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6862', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6863', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6864', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6865', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6866', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6867', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6868', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6869', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6870', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6871', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6872', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6873', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6874', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6875', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6876', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6877', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6878', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6879', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6880', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6881', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6882', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6883', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6884', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6885', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6886', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6887', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6888', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6889', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6890', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6891', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6892', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6893', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6894', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6895', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6896', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6897', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6898', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6899', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6900', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6901', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6902', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6903', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6904', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6905', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6906', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6907', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6908', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6909', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6910', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6911', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6912', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6913', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6914', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6915', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6916', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6917', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6918', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6919', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6920', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6921', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6922', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6923', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6924', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6925', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6926', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6927', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6928', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6929', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6930', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6931', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6932', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6933', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6934', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6935', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6936', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6937', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6938', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6939', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6940', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6941', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6942', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6943', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6944', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6945', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6946', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6947', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6948', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6949', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6950', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6951', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6952', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6953', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6954', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6955', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6956', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6957', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6958', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6959', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6960', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6961', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6962', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6963', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6964', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6965', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6966', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6967', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6968', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6969', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6970', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6971', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6972', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6973', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6974', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6975', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6976', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6977', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6978', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6979', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('6980', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('6981', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6982', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6983', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6984', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6985', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6986', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6987', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6988', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6989', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6990', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('6991', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6992', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6993', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6994', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6995', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6996', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6997', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6998', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('6999', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7000', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7001', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7002', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7003', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7004', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7005', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7006', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7007', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7008', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7009', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7010', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7011', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7012', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7013', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7014', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7015', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7016', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7017', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7018', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7019', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7020', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7021', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7022', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7023', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7024', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7025', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7026', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7027', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7028', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7029', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7030', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7031', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7032', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7033', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7034', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7035', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7036', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7037', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7038', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7039', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7040', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7041', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7042', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7043', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7044', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7045', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7046', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7047', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7048', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7049', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7050', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7051', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7052', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7053', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7054', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7055', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7056', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7057', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7058', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7059', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7060', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7061', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7062', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7063', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7064', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7065', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7066', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7067', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7068', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7069', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7070', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7071', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7072', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7073', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7074', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7075', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7076', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7077', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7078', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7079', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7080', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7081', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7082', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7083', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7084', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7085', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7086', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7087', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7088', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7089', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7090', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7091', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7092', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7093', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7094', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7095', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7096', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7097', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7098', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7099', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7100', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7101', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7102', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7103', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7104', '1', '3', '245', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7105', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7106', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7107', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7108', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7109', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7110', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7111', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7112', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7113', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7114', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7115', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7116', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7117', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7118', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7119', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7120', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7121', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7122', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7123', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7124', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7125', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7126', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7127', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7128', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7129', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7130', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7131', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7132', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7133', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7134', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7135', '1', '3', '325', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7136', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7137', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7138', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7139', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7140', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7141', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7142', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7143', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7144', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7145', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7146', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7147', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7148', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7149', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7150', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7151', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7152', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7153', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7154', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7155', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7156', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7157', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7158', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7159', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7160', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7161', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7162', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7163', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7164', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7165', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7166', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7167', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7168', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7169', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7170', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7171', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7172', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7173', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7174', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7175', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7176', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7177', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7178', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7179', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7180', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7181', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7182', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7183', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7184', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7185', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7186', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7187', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7188', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7189', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7190', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7191', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7192', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7193', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7194', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7195', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7196', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7197', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7198', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7199', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7200', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7201', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7202', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7203', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7204', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7205', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7206', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7207', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7208', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7209', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7210', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7211', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7212', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7213', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7214', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7215', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7216', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7217', '1', '3', '293', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7218', '1', '3', '309', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7219', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7220', '1', '3', '389', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7221', '1', '3', '405', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7222', '1', '3', '421', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7223', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7224', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7225', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7226', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7227', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7228', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7229', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7230', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7231', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7232', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7233', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7234', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7235', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7236', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7237', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7238', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7239', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7240', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7241', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7242', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7243', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7244', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7245', '1', '3', '197', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7246', '1', '3', '213', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7247', '1', '3', '229', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7248', '1', '3', '261', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7249', '1', '3', '277', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7250', '1', '3', '341', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7251', '1', '3', '357', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7252', '1', '3', '373', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7253', '1', '3', '437', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7254', '1', '3', '453', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7255', '1', '3', '469', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7256', '1', '3', '485', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7257', '1', '3', '501', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7258', '1', '3', '517', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7259', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7260', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7261', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7262', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7263', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7264', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7265', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7266', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7267', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7268', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7269', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7270', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7271', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7272', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7273', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7274', '1', '3', '181', '1', '2018-10-15 17:15:23');
INSERT INTO `assess_record` VALUES ('7275', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7276', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7277', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7278', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7279', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7280', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7281', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7282', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7283', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7284', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7285', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7286', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7287', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7288', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7289', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7290', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7291', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7292', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7293', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7294', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7295', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7296', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7297', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7298', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7299', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7300', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7301', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7302', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7303', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7304', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7305', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7306', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7307', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7308', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7309', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7310', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7311', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7312', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7313', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7314', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7315', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7316', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7317', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7318', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7319', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7320', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7321', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7322', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7323', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7324', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7325', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7326', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7327', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7328', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7329', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7330', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7331', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7332', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7333', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7334', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7335', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7336', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7337', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7338', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7339', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7340', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7341', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7342', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7343', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7344', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7345', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7346', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7347', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7348', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7349', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7350', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7351', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7352', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7353', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7354', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7355', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7356', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7357', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7358', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7359', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7360', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7361', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7362', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7363', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7364', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7365', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7366', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7367', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7368', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7369', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7370', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7371', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7372', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7373', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7374', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7375', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7376', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7377', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7378', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7379', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7380', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7381', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7382', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7383', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7384', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7385', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7386', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7387', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7388', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7389', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7390', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7391', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7392', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7393', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7394', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7395', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7396', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7397', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7398', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7399', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7400', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7401', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7402', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7403', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7404', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7405', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7406', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7407', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7408', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7409', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7410', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7411', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7412', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7413', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7414', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7415', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7416', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7417', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7418', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7419', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7420', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7421', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7422', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7423', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7424', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7425', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7426', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7427', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7428', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7429', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7430', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7431', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7432', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7433', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7434', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7435', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7436', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7437', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7438', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7439', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7440', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7441', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7442', '1', '3', '541', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7443', '1', '3', '543', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7444', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7445', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7446', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7447', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7448', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7449', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7450', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7451', '1', '3', '539', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7452', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7453', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7454', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7455', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7456', '1', '1', '530', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7457', '1', '1', '531', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7458', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7459', '1', '3', '534', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7460', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7461', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7462', '1', '3', '540', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7463', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7464', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7465', '1', '1', '529', '1', '2018-10-16 09:53:04');
INSERT INTO `assess_record` VALUES ('7466', '1', '1', '532', '1', '2018-10-16 09:53:08');
INSERT INTO `assess_record` VALUES ('7467', '1', '3', '535', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7468', '1', '3', '536', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7469', '1', '3', '537', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7470', '1', '3', '538', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7471', '1', '3', '542', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7472', '1', '3', '544', '1', '2018-10-16 09:53:05');
INSERT INTO `assess_record` VALUES ('7473', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7474', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7475', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7476', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7477', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7478', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7479', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7480', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7481', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7482', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7483', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7484', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7485', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7486', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7487', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7488', '1', '1', '545', '1', '2018-10-17 19:18:57');
INSERT INTO `assess_record` VALUES ('7489', '1', '1', '545', '1', '2018-10-17 19:18:57');

-- ----------------------------
-- Table structure for basic_setting
-- ----------------------------
DROP TABLE IF EXISTS `basic_setting`;
CREATE TABLE `basic_setting` (
  `id` int(11) NOT NULL,
  `onlineinterval` int(11) DEFAULT '0',
  `thansentinterval` int(11) DEFAULT NULL,
  `uploadinterval` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic_setting
-- ----------------------------
INSERT INTO `basic_setting` VALUES ('0', '30', '5', '1');

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
INSERT INTO `devices_threshold` VALUES ('37', '电压总谐波含有率限值2', '62', '1', '电能', 'v', '2', null, '1', null);
INSERT INTO `devices_threshold` VALUES ('38', '电压总谐波含有率限值2', '62', '1', '电能', 'v', '2.1', null, '2', null);
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
INSERT INTO `devices_threshold` VALUES ('340', '湿度过低', '115', '1', '环境', '百分比', null, '5', '1', '1');
INSERT INTO `devices_threshold` VALUES ('341', '湿度过低', '115', '1', '环境', '百分比', null, '2', '2', '1');
INSERT INTO `devices_threshold` VALUES ('342', '湿度过低', '115', '1', '环境', '百分比', null, '1', '3', '1');
INSERT INTO `devices_threshold` VALUES ('343', '测试参数', '9999', '1', '电能', 'v', '110', '0', '3', '1');

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
INSERT INTO `device_alarm_user` VALUES ('1', '1', '0', '1', '0', '0', '请注意# 该事件发生值为& 事件发生时间为%', '1，4', '1', '0');
INSERT INTO `device_alarm_user` VALUES ('2', '2', '0', '1', '1', '0', '请注意：告警信息！# 该事件发生值为& 事件发生时间为%', '1，2', '1', '0');
INSERT INTO `device_alarm_user` VALUES ('3', '3', '1', '1', '0', '1', '严重告警！！！！# 该事件发生值为& 事件发生时间为%', '1，4，4，2', '1', '0');

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
INSERT INTO `event_ctrl` VALUES ('1', '348', '1', null, null, '1', '2018-10-02 00:00:00', null, 'admin', '666', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_power
-- ----------------------------
INSERT INTO `event_power` VALUES ('104', '7', '-89.837616', null, null, '1', '2018-09-30 10:50:36', '3583', 'admin', '0930', '13');
INSERT INTO `event_power` VALUES ('105', '3', '-89.874329', null, null, '1', '2018-09-30 10:50:40', '10', 'admin', '555', '3');
INSERT INTO `event_power` VALUES ('106', '2', '-89.486351', null, null, '1', '2018-09-30 11:12:41', '30', 'admin', 'tttt', '2');
INSERT INTO `event_power` VALUES ('107', '3', '-89.716621', null, null, '1', '2018-09-30 11:12:41', '30', 'admin', '666', '3');
INSERT INTO `event_power` VALUES ('108', '1', '-89.736206', null, null, '1', '2018-09-30 11:12:41', '10', null, null, '1');
INSERT INTO `event_power` VALUES ('109', '7', '-89.629921', null, null, '1', '2018-09-30 11:12:41', '884', null, null, '13');
INSERT INTO `event_power` VALUES ('110', '15', '-90.029716', null, null, '1', '2018-09-30 10:50:39', '12', null, null, '7');
INSERT INTO `event_power` VALUES ('111', '15', '-90.900993', null, null, '1', '2018-09-30 10:50:39', '11', null, null, '7');
INSERT INTO `event_power` VALUES ('112', '19', '-90.464409', null, null, '1', '2018-09-30 10:50:39', '23', null, null, '19');
INSERT INTO `event_power` VALUES ('113', '17', '-92.566971', null, null, '1', '2018-09-30 10:50:39', '12', null, null, '9');
INSERT INTO `event_power` VALUES ('114', '17', '-92.860069', null, null, '1', '2018-09-30 10:50:39', '12', null, null, '9');
INSERT INTO `event_power` VALUES ('115', '19', '-91.39444', null, null, '1', '2018-09-30 10:50:39', '23', null, null, '19');
INSERT INTO `event_power` VALUES ('116', '18', '-92.388885', null, null, '1', '2018-09-30 10:50:39', '23', null, null, '18');
INSERT INTO `event_power` VALUES ('117', '21', '-91.793076', null, null, '1', '2018-09-30 10:50:39', '46', null, null, '21');
INSERT INTO `event_power` VALUES ('118', '20', '-91.614967', null, null, '1', '2018-09-30 10:50:39', '23', null, null, '20');
INSERT INTO `event_power` VALUES ('119', '16', '-95.910774', null, null, '1', '2018-09-30 10:50:39', '12', null, null, '8');
INSERT INTO `event_power` VALUES ('120', '21', '-93.718262', null, null, '1', '2018-09-30 11:12:41', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('121', '21', '-91.74276', null, null, '1', '2018-09-30 11:12:41', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('130', '2', '-10.164988', null, null, '1', '2018-09-30 22:24:27', '11', null, null, '2');
INSERT INTO `event_power` VALUES ('131', '6', '-10.065317', null, null, '1', '2018-09-30 22:24:27', '11', null, null, '12');
INSERT INTO `event_power` VALUES ('132', '7', '-89.853195', null, null, '1', '2018-09-30 22:24:27', '3561', null, null, '13');
INSERT INTO `event_power` VALUES ('133', '6', '-89.453896', null, null, '1', '2018-09-30 22:24:30', '40', null, null, '12');
INSERT INTO `event_power` VALUES ('134', '15', '-90.211273', null, null, '1', '2018-09-30 22:24:30', '11', null, null, '7');
INSERT INTO `event_power` VALUES ('135', '17', '-91.246635', null, null, '1', '2018-09-30 22:24:30', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('136', '20', '-90.72879', null, null, '1', '2018-09-30 22:24:30', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('137', '20', '-91.323692', null, null, '1', '2018-09-30 22:24:30', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('138', '19', '-90.37912', null, null, '1', '2018-09-30 22:24:30', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('139', '16', '-94.703606', null, null, '1', '2018-09-30 22:24:30', '43', null, null, '8');
INSERT INTO `event_power` VALUES ('140', '15', '-94.619469', null, null, '1', '2018-09-30 22:24:30', '10', null, null, '7');
INSERT INTO `event_power` VALUES ('141', '19', '-92.370796', null, null, '1', '2018-09-30 22:24:30', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('142', '21', '-92.217728', null, null, '1', '2018-09-30 22:24:30', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('143', '2', '-89.801651', null, null, '1', '2018-10-08 18:25:57', '40', 'admin', '555', '2');
INSERT INTO `event_power` VALUES ('144', '7', '-89.915466', null, null, '1', '2018-10-08 18:25:57', '3687', 'admin', '8989', '13');
INSERT INTO `event_power` VALUES ('145', '3', '-10.660177', null, null, '1', '2018-10-08 18:26:00', '40', null, null, '3');
INSERT INTO `event_power` VALUES ('146', '17', '-93.984886', null, null, '1', '2018-10-08 18:25:57', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('147', '18', '-90.928749', null, null, '1', '2018-10-08 18:25:57', '20', null, null, '18');
INSERT INTO `event_power` VALUES ('148', '20', '-92.048042', null, null, '1', '2018-10-08 18:25:57', '54', null, null, '20');
INSERT INTO `event_power` VALUES ('149', '19', '-90.621704', null, null, '1', '2018-10-08 18:25:57', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('150', '18', '-90.420128', null, null, '1', '2018-10-08 18:25:57', '20', null, null, '18');
INSERT INTO `event_power` VALUES ('151', '20', '-91.520218', null, null, '1', '2018-10-08 18:25:57', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('152', '19', '-90.133316', null, null, '1', '2018-10-08 18:25:57', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('153', '19', '-90.377159', null, null, '1', '2018-10-08 18:25:57', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('154', '20', '-90.476852', null, null, '1', '2018-10-08 18:25:57', '53', null, null, '20');
INSERT INTO `event_power` VALUES ('155', '21', '-91.705856', null, null, '1', '2018-10-11 14:00:24', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('156', '21', '-94.082985', null, null, '1', '2018-10-11 14:00:24', '114', null, null, '21');
INSERT INTO `event_power` VALUES ('157', '20', '-92.24379', null, null, '1', '2018-10-11 14:00:24', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('158', '19', '-90.999413', null, null, '1', '2018-10-11 14:00:24', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('159', '19', '-91.15432', null, null, '1', '2018-10-11 14:00:24', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('160', '20', '-91.220665', null, null, '1', '2018-10-11 14:00:24', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('161', '19', '-90.635376', null, null, '1', '2018-10-11 14:00:25', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('162', '2', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('163', '6', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('164', '7', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('165', '3', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('166', '21', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('167', '21', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('168', '20', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('169', '19', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('170', '18', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('171', '20', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('172', '20', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('173', '17', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('174', '20', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('175', '18', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('176', '16', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('177', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('178', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('179', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('180', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('181', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('182', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('183', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('184', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('185', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('186', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('187', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('188', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('189', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('190', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('191', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('192', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('193', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('194', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('195', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('196', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('197', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('198', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('199', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('200', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('201', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('202', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('203', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('204', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('205', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('206', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('207', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('208', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('209', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('210', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('211', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('212', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('213', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('214', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('215', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('216', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('217', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('218', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('219', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('220', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('221', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('222', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('223', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('224', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('225', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('226', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('227', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('228', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('229', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('230', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('231', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('232', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('233', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('234', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('235', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('236', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('237', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('238', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('239', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('240', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('241', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('242', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('243', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('244', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('245', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('246', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('247', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('248', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('249', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('250', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('251', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('252', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('253', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('254', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('255', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('256', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('257', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('258', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('259', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('260', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('261', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('262', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('263', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('264', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('265', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('266', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('267', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('268', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('269', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('270', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('271', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('272', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('273', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('274', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('275', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('276', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('277', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('278', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('279', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('280', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('281', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('282', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('283', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('284', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('285', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('286', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('287', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('288', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('289', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('290', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('291', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('292', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('293', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('294', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('295', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('296', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('297', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('298', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('299', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('300', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('301', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('302', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('303', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('304', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('305', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('306', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('307', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('308', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('309', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('310', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('311', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('312', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('313', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('314', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('315', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('316', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('317', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('318', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('319', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('320', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('321', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('322', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('323', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('324', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('325', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('326', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('327', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('328', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('329', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('330', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('331', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('332', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('333', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('334', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('335', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('336', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('337', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('338', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('339', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('340', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('341', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('342', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('343', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('344', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('345', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('346', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('347', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('348', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('349', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('350', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('351', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('352', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('353', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('354', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('355', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('356', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('357', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('358', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('359', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('360', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('361', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('362', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('363', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('364', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('365', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('366', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('367', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('368', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('369', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('370', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('371', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('372', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('373', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('374', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('375', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('376', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('377', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('378', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('379', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('380', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('381', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('382', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('383', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('384', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('385', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('386', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('387', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('388', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('389', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('390', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('391', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('392', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('393', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('394', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('395', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('396', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('397', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('398', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('399', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('400', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('401', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('402', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('403', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('404', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('405', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('406', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('407', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('408', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('409', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('410', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('411', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('412', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('413', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('414', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('415', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('416', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('417', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('418', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('419', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('420', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('421', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('422', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('423', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('424', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('425', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('426', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('427', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('428', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('429', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('430', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('431', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('432', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('433', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('434', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('435', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('436', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('437', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('438', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('439', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('440', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('441', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('442', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('443', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('444', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('445', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('446', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('447', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('448', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('449', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('450', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('451', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('452', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('453', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('454', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('455', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('456', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('457', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('458', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('459', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('460', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('461', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('462', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('463', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('464', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('465', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('466', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('467', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('468', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('469', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('470', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('471', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('472', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('473', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('474', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('475', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('476', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('477', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('478', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('479', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('480', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('481', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('482', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('483', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('484', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('485', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('486', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('487', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('488', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('489', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('490', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('491', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('492', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('493', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('494', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('495', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('496', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('497', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('498', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('499', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('500', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('501', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('502', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('503', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('504', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('505', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('506', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('507', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('508', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('509', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('510', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('511', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('512', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('513', '22', '-88.992912', null, null, '1', '2018-10-15 15:31:47', '30', null, null, '2');
INSERT INTO `event_power` VALUES ('514', '329', '-89.514488', null, null, '1', '2018-10-15 15:31:47', '50', null, null, '12');
INSERT INTO `event_power` VALUES ('515', '336', '-89.222481', null, null, '1', '2018-10-15 15:31:47', '3900', null, null, '13');
INSERT INTO `event_power` VALUES ('516', '23', '-10.099048', null, null, '1', '2018-10-15 15:31:51', '10', null, null, '3');
INSERT INTO `event_power` VALUES ('517', '336', '-84.869896', null, null, '1', '2018-10-15 17:15:23', '485', null, null, '13');
INSERT INTO `event_power` VALUES ('518', '334', '-92.496193', null, null, '1', '2018-10-15 15:31:48', '60', null, null, '21');
INSERT INTO `event_power` VALUES ('519', '334', '-92.115211', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('520', '333', '-91.910782', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('521', '332', '-90.41851', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('522', '331', '-90.123283', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('523', '333', '-91.905373', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('524', '333', '-90.079521', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('525', '327', '-92.652199', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('526', '333', '-91.175056', null, null, '1', '2018-10-15 15:31:48', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('527', '331', '-90.394737', null, null, '1', '2018-10-15 15:31:48', '42', null, null, '18');
INSERT INTO `event_power` VALUES ('528', '326', '-90.318588', null, null, '1', '2018-10-15 15:31:48', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('529', '2', '-89.646423', null, null, '1', '2018-10-16 09:53:04', '51', null, null, '2');
INSERT INTO `event_power` VALUES ('530', '3', '-89.337372', null, null, '1', '2018-10-16 09:53:04', '20', null, null, '3');
INSERT INTO `event_power` VALUES ('531', '7', '-89.956062', null, null, '1', '2018-10-16 09:53:04', '3852', null, null, '13');
INSERT INTO `event_power` VALUES ('532', '6', '-10.138869', null, null, '1', '2018-10-16 09:53:08', '30', null, null, '12');
INSERT INTO `event_power` VALUES ('533', '21', '-91.969734', null, null, '1', '2018-10-15 15:31:48', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('534', '15', '-95.371689', null, null, '1', '2018-10-16 09:53:04', '10', null, null, '7');
INSERT INTO `event_power` VALUES ('535', '19', '-91.676994', null, null, '1', '2018-10-16 09:53:05', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('536', '18', '-92.373604', null, null, '1', '2018-10-16 09:53:05', '41', null, null, '18');
INSERT INTO `event_power` VALUES ('537', '20', '-91.380844', null, null, '1', '2018-10-16 09:53:05', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('538', '19', '-91.87767', null, null, '1', '2018-10-16 09:53:05', '20', null, null, '19');
INSERT INTO `event_power` VALUES ('539', '18', '-91.151115', null, null, '1', '2018-10-16 09:53:05', '20', null, null, '18');
INSERT INTO `event_power` VALUES ('540', '15', '-92.843109', null, null, '1', '2018-10-16 09:53:05', '10', null, null, '7');
INSERT INTO `event_power` VALUES ('541', '18', '-91.394135', null, null, '1', '2018-10-16 09:53:05', '20', null, null, '18');
INSERT INTO `event_power` VALUES ('542', '16', '-90.988174', null, null, '1', '2018-10-16 09:53:05', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('543', '15', '-91.029327', null, null, '1', '2018-10-16 09:53:05', '10', null, null, '7');
INSERT INTO `event_power` VALUES ('544', '15', '-90.008087', null, null, '1', '2018-10-16 09:53:05', '10', null, null, '7');
INSERT INTO `event_power` VALUES ('545', '23', '-88.489388', null, null, '1', '2018-10-17 19:18:57', '20', null, null, '3');
INSERT INTO `event_power` VALUES ('546', '340', '-88.469604', null, null, '1', '2018-10-17 19:18:58', '67', null, null, '10');
INSERT INTO `event_power` VALUES ('547', '336', '-89.019051', null, null, '1', '2018-10-17 19:18:58', '3789', null, null, '13');
INSERT INTO `event_power` VALUES ('548', '23', '-11.243063', null, null, '1', '2018-10-17 19:19:01', '20', null, null, '3');
INSERT INTO `event_power` VALUES ('549', '3', '-88.489388', null, null, '1', '2018-10-17 19:18:57', '20', null, null, '3');
INSERT INTO `event_power` VALUES ('550', '337', '-10.199576', null, null, '1', '2018-10-17 19:19:01', '10', null, null, '1');
INSERT INTO `event_power` VALUES ('551', '334', '-91.372589', null, null, '1', '2018-10-17 19:18:58', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('552', '4', '-88.469604', null, null, '1', '2018-10-17 19:18:58', '67', null, null, '10');
INSERT INTO `event_power` VALUES ('553', '326', '-93.442497', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('554', '7', '-89.019051', null, null, '1', '2018-10-17 19:18:58', '3789', null, null, '13');
INSERT INTO `event_power` VALUES ('555', '327', '-94.876389', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('556', '3', '-11.243063', null, null, '1', '2018-10-17 19:19:01', '20', null, null, '3');
INSERT INTO `event_power` VALUES ('557', '331', '-90.387093', null, null, '1', '2018-10-17 19:18:58', '20', null, null, '18');
INSERT INTO `event_power` VALUES ('558', '1', '-10.199576', null, null, '1', '2018-10-17 19:19:01', '10', null, null, '1');
INSERT INTO `event_power` VALUES ('559', '332', '-90.703117', null, null, '1', '2018-10-17 19:18:58', '36', null, null, '19');
INSERT INTO `event_power` VALUES ('560', '21', '-91.372589', null, null, '1', '2018-10-17 19:18:58', '40', null, null, '21');
INSERT INTO `event_power` VALUES ('561', '327', '-93.910172', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('562', '16', '-93.442497', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '8');
INSERT INTO `event_power` VALUES ('563', '333', '-90.190498', null, null, '1', '2018-10-17 19:18:58', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('564', '17', '-94.876389', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('565', '333', '-90.593369', null, null, '1', '2018-10-17 19:18:58', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('566', '18', '-90.387093', null, null, '1', '2018-10-17 19:18:58', '20', null, null, '18');
INSERT INTO `event_power` VALUES ('567', '333', '-90.239105', null, null, '1', '2018-10-17 19:18:58', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('568', '19', '-90.703117', null, null, '1', '2018-10-17 19:18:58', '36', null, null, '19');
INSERT INTO `event_power` VALUES ('569', '327', '-90.779587', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('570', '17', '-93.910172', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('571', '327', '-90.532959', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('572', '20', '-90.190498', null, null, '1', '2018-10-17 19:18:58', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('573', '20', '-90.593369', null, null, '1', '2018-10-17 19:18:58', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('574', '20', '-90.239105', null, null, '1', '2018-10-17 19:18:58', '20', null, null, '20');
INSERT INTO `event_power` VALUES ('575', '17', '-90.779587', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '9');
INSERT INTO `event_power` VALUES ('576', '17', '-90.532959', null, null, '1', '2018-10-17 19:18:58', '10', null, null, '9');

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
INSERT INTO `knowledge` VALUES ('1', '1', '0', '1', '');
INSERT INTO `knowledge` VALUES ('2', '1', '1', '1.1', '本章');
INSERT INTO `knowledge` VALUES ('3', '1', '2', '1.1.1', '');
INSERT INTO `knowledge` VALUES ('4', '1', '2', '如何修改用户名', '请在系统管理下，用户管理中，选择一个用户，并。。。');

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
  `Pst_U1` float(255,2) DEFAULT NULL,
  `Pst_U2` float(255,2) DEFAULT NULL,
  `Pst_U3` float(255,2) DEFAULT NULL,
  `Plt_U1` float(255,2) DEFAULT NULL,
  `Plt_U2` float(255,2) DEFAULT NULL,
  `Plt_U3` float(255,2) DEFAULT NULL,
  `Hz` float(255,2) DEFAULT NULL,
  PRIMARY KEY (`ppid`)
) ENGINE=InnoDB AUTO_INCREMENT=78590 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powerparm_monitor
-- ----------------------------
INSERT INTO `powerparm_monitor` VALUES ('78565', '1', '2018-10-18 09:29:31', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78566', '1', '2018-10-18 09:29:42', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78567', '1', '2018-10-18 09:29:42', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78568', '1', '2018-10-18 09:30:59', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78569', '1', '2018-10-18 09:31:29', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78570', '1', '2018-10-18 09:32:01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78571', '1', '2018-10-18 09:32:30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78572', '1', '2018-10-18 09:33:00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78573', '1', '2018-10-18 09:33:28', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78574', '1', '2018-10-18 09:33:51', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78575', '1', '2018-10-18 09:34:30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78576', '1', '2018-10-18 09:35:01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78577', '1', '2018-10-18 09:36:03', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78578', '1', '2018-10-18 09:36:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78579', '1', '2018-10-18 09:37:06', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78580', '1', '2018-10-18 09:37:35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78581', '1', '2018-10-18 09:38:04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78582', '1', '2018-10-18 09:38:35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78583', '1', '2018-10-18 09:39:04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78584', '1', '2018-10-18 09:39:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78585', '1', '2018-10-18 09:40:06', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78586', '1', '2018-10-18 09:40:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78587', '1', '2018-10-18 09:53:20', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78588', '1', '2018-10-18 09:53:48', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerparm_monitor` VALUES ('78589', '1', '2018-10-18 09:54:20', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '-99.93', '-99.94', '-99.94', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

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
) ENGINE=InnoDB AUTO_INCREMENT=77258 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powersxdy_monitor
-- ----------------------------
INSERT INTO `powersxdy_monitor` VALUES ('77233', '1', '2018-10-18 09:29:31', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77234', '1', '2018-10-18 09:29:42', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77235', '1', '2018-10-18 09:29:42', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77236', '1', '2018-10-18 09:30:59', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77237', '1', '2018-10-18 09:31:29', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77238', '1', '2018-10-18 09:32:01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77239', '1', '2018-10-18 09:32:30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77240', '1', '2018-10-18 09:33:00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77241', '1', '2018-10-18 09:33:28', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77242', '1', '2018-10-18 09:33:51', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77243', '1', '2018-10-18 09:34:30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77244', '1', '2018-10-18 09:35:01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77245', '1', '2018-10-18 09:36:03', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77246', '1', '2018-10-18 09:36:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77247', '1', '2018-10-18 09:37:06', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77248', '1', '2018-10-18 09:37:35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77249', '1', '2018-10-18 09:38:04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77250', '1', '2018-10-18 09:38:35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77251', '1', '2018-10-18 09:39:04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77252', '1', '2018-10-18 09:39:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77253', '1', '2018-10-18 09:40:06', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77254', '1', '2018-10-18 09:40:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77255', '1', '2018-10-18 09:53:20', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77256', '1', '2018-10-18 09:53:48', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powersxdy_monitor` VALUES ('77257', '1', '2018-10-18 09:54:20', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

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
) ENGINE=InnoDB AUTO_INCREMENT=79419 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of powerxb_monitor
-- ----------------------------
INSERT INTO `powerxb_monitor` VALUES ('79394', '1', '2018-10-18 09:29:31', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79395', '1', '2018-10-18 09:29:42', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79396', '1', '2018-10-18 09:29:42', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79397', '1', '2018-10-18 09:30:59', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79398', '1', '2018-10-18 09:31:29', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79399', '1', '2018-10-18 09:32:01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79400', '1', '2018-10-18 09:32:30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79401', '1', '2018-10-18 09:33:00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79402', '1', '2018-10-18 09:33:28', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79403', '1', '2018-10-18 09:33:51', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79404', '1', '2018-10-18 09:34:30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79405', '1', '2018-10-18 09:35:01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79406', '1', '2018-10-18 09:36:03', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79407', '1', '2018-10-18 09:36:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79408', '1', '2018-10-18 09:37:06', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79409', '1', '2018-10-18 09:37:35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79410', '1', '2018-10-18 09:38:04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79411', '1', '2018-10-18 09:38:35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79412', '1', '2018-10-18 09:39:04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79413', '1', '2018-10-18 09:39:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79414', '1', '2018-10-18 09:40:06', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79415', '1', '2018-10-18 09:40:36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79416', '1', '2018-10-18 09:53:20', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79417', '1', '2018-10-18 09:53:48', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `powerxb_monitor` VALUES ('79418', '1', '2018-10-18 09:54:20', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

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
  `extra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '管理员', '');
INSERT INTO `roles` VALUES ('2', '技术人员', '');
INSERT INTO `roles` VALUES ('3', '运维人员', '666');

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
INSERT INTO `roles_permission` VALUES ('2', '3,5,');
INSERT INTO `roles_permission` VALUES ('3', '5,6');

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
INSERT INTO `temperature_monitor` VALUES ('1', '2', '2018-09-30 15:40:35', '33.80', '12');

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
INSERT INTO `user` VALUES ('1', 'admin', '周小川', 'E10ADC3949BA59ABBE56E057F20F883E', '18511587339', '18710968430', null, null, '');
INSERT INTO `user` VALUES ('2', 'test2', '王雯雯', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('3', 'test1', '陈晨', 'E10ADC3949BA59ABBE56E057F20F883E', '', '', '', '', '');
INSERT INTO `user` VALUES ('6', 'test4', 'tet4', '827CCB0EEA8A706C4C34A16891F84E7B', '', '', '200', '2001', '10001');

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
INSERT INTO `user_roles` VALUES ('6', '2');
