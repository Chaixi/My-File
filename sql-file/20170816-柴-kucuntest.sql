/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : kucuntest

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-08-16 18:00:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `celiangcanshu`
-- ----------------------------
DROP TABLE IF EXISTS `celiangcanshu`;
CREATE TABLE `celiangcanshu` (
  `xh` int(10) NOT NULL AUTO_INCREMENT,
  `djid` varchar(50) NOT NULL,
  `clsj` datetime DEFAULT NULL,
  `djzjxddsl` varchar(20) DEFAULT NULL,
  `dqgjbmccd` varchar(20) DEFAULT NULL,
  `yqgjbmccd` varchar(20) DEFAULT NULL,
  `djsysm` varchar(20) DEFAULT NULL,
  `djbjsjz` varchar(20) DEFAULT NULL,
  `djcdsjz` varchar(20) DEFAULT NULL,
  `djzpj` varchar(20) DEFAULT NULL,
  `djfpj` varchar(20) DEFAULT NULL,
  `djyhbj` varchar(20) DEFAULT NULL,
  `djdmtd` varchar(20) DEFAULT NULL,
  `djjxtd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of celiangcanshu
-- ----------------------------
INSERT INTO `celiangcanshu` VALUES ('1', 'ZT-0001', '2017-07-27 23:15:05', '6', '40um', '50um', '200', '1.5', '2.0', '40', '20', '12', '0.005', '0.0025');
INSERT INTO `celiangcanshu` VALUES ('4', 'ZT-0001', '2017-07-28 14:50:48', '3', '40um', '50um', '200', '1.5', '2.0', '40', '20', '12', '0.005', '0.0025');
INSERT INTO `celiangcanshu` VALUES ('5', 'ZT-0002', '2017-07-28 15:44:18', '8', '1.56', '', '50', '', '', '30', '25', '', '', '');
INSERT INTO `celiangcanshu` VALUES ('6', 'ZT-0001', '2017-08-09 21:07:11', '4', '40um', '50um', '200', '1.5', '2.0', '40', '20', '12', '0.005', '0.0025');

-- ----------------------------
-- Table structure for `chucang`
-- ----------------------------
DROP TABLE IF EXISTS `chucang`;
CREATE TABLE `chucang` (
  `xh` int(10) NOT NULL AUTO_INCREMENT,
  `cclx` varchar(50) NOT NULL,
  `ccdh` char(20) NOT NULL,
  `rmdh` char(20) NOT NULL,
  `rmzt` varchar(10) DEFAULT NULL,
  `jggy` varchar(50) DEFAULT NULL,
  `lybz` varchar(20) NOT NULL,
  `lyr` varchar(20) NOT NULL,
  `ccrq` date NOT NULL,
  `cj` varchar(20) NOT NULL,
  `bm` varchar(20) NOT NULL,
  `czy` varchar(20) NOT NULL,
  `bz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `chucang_ix1` (`ccdh`),
  UNIQUE KEY `chucang_ix2` (`rmdh`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chucang
-- ----------------------------
INSERT INTO `chucang` VALUES ('1', '领用出仓', 'CC_170505001', 'NO', 'NO', 'OP80', '班组1001', '赵一', '2017-05-05', '机一车间', '刀管中心', 'Blue', '没有可供出仓数量的判断！！！');
INSERT INTO `chucang` VALUES ('2', '刃磨出仓', 'CC_170505002', 'RM_170505001', '刃磨中', '', '', '机动科', '2017-05-05', '机一车间', '刀管中心', 'Jack', '刃磨出仓！！！');

-- ----------------------------
-- Table structure for `chucangmingxi`
-- ----------------------------
DROP TABLE IF EXISTS `chucangmingxi`;
CREATE TABLE `chucangmingxi` (
  `xh` int(10) NOT NULL AUTO_INCREMENT,
  `ccdh` char(20) NOT NULL,
  `xinghao` char(50) NOT NULL,
  `mc` varchar(50) NOT NULL,
  `gg` varchar(10) NOT NULL,
  `sl` int(10) NOT NULL,
  `djgbm` int(10) NOT NULL,
  `cfwz` char(10) NOT NULL,
  `bz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`xh`),
  KEY `chucangmingxi_fk1` (`ccdh`),
  KEY `chucangmingxi_fk2` (`xinghao`),
  KEY `chucangmingxi_fk3` (`djgbm`),
  CONSTRAINT `chucangmingxi_fk1` FOREIGN KEY (`ccdh`) REFERENCES `chucang` (`ccdh`),
  CONSTRAINT `chucangmingxi_fk2` FOREIGN KEY (`xinghao`) REFERENCES `lingbujian` (`xinghao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chucangmingxi
-- ----------------------------
INSERT INTO `chucangmingxi` VALUES ('1', 'CC_170505001', 'lab212', '212实验室', '件', '10', '1002', '#20', '');
INSERT INTO `chucangmingxi` VALUES ('2', 'CC_170505001', 'BT520', '夹头', '件', '10', '1001', '#3', '');
INSERT INTO `chucangmingxi` VALUES ('3', 'CC_170505001', 'BT520', '夹头', '件', '5', '1001', '#2', '');
INSERT INTO `chucangmingxi` VALUES ('4', 'CC_170505002', 'lab212', '212实验室', '盒', '10', '1002', '#20', '');
INSERT INTO `chucangmingxi` VALUES ('5', 'CC_170505002', 'HSK100', '丝锥', '把', '56', '1001', '#9', '');

-- ----------------------------
-- Table structure for `daoju`
-- ----------------------------
DROP TABLE IF EXISTS `daoju`;
CREATE TABLE `daoju` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `djxh` varchar(50) DEFAULT NULL,
  `djlx` varchar(50) DEFAULT NULL,
  `djgg` varchar(50) DEFAULT NULL,
  `djtp` blob,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daoju
-- ----------------------------
INSERT INTO `daoju` VALUES ('1', 'Φ10.4 钻头(T38)', '钻头', 'Φ10.4', null);
INSERT INTO `daoju` VALUES ('2', 'φ20.5 钻头(T52)', '钻头', 'φ20.5', null);
INSERT INTO `daoju` VALUES ('3', 'Φ22 钻头(T49)', '钻头', 'Φ22', null);
INSERT INTO `daoju` VALUES ('4', 'φ14.5 钻头(T202)', '钻头', 'φ14.5', null);
INSERT INTO `daoju` VALUES ('5', 'φ10.5 钻头(T57)', '钻头', 'φ10.5', null);
INSERT INTO `daoju` VALUES ('6', 'Φ26 钻头(T118)', '钻头', 'Φ26', null);
INSERT INTO `daoju` VALUES ('7', 'Φ10.7 钻头(T140)', '钻头', 'Φ10.7', null);
INSERT INTO `daoju` VALUES ('8', 'Φ10.7 钻头(T141)', '钻头', 'Φ10.7', null);
INSERT INTO `daoju` VALUES ('9', 'Φ6 钻头(T148)', '钻头', 'Φ6', null);
INSERT INTO `daoju` VALUES ('10', 'Φ12.5 钻头(T144)', '钻头', 'Φ12.5', null);
INSERT INTO `daoju` VALUES ('11', 'Φ15.7 钻头(T149)', '钻头', 'Φ15.7', null);
INSERT INTO `daoju` VALUES ('12', 'φ20.5 钻头(T116)', '钻头', 'φ20.5', null);
INSERT INTO `daoju` VALUES ('13', 'Φ26 钻(T111)', '钻头', 'Φ26', null);
INSERT INTO `daoju` VALUES ('14', 'φ16 中心钻(T117)', '中心钻', 'φ16', null);
INSERT INTO `daoju` VALUES ('15', 'Φ10.4 直槽钻(T39)', '直槽钻', 'Φ10.4', null);
INSERT INTO `daoju` VALUES ('16', 'Φ18.5 直槽钻(T59)', '直槽钻', 'Φ18.5', null);
INSERT INTO `daoju` VALUES ('17', 'φ6.8 直槽钻(T79)', '直槽钻', 'φ6.8', null);
INSERT INTO `daoju` VALUES ('18', 'φ17.5 直槽钻(T81)', '直槽钻', 'φ17.5', null);
INSERT INTO `daoju` VALUES ('19', 'Φ100玉米铣(T1055)', '玉米铣', 'Φ100', null);
INSERT INTO `daoju` VALUES ('20', 'Φ44玉米铣(T1055)', '玉米铣', 'Φ44', null);
INSERT INTO `daoju` VALUES ('21', 'φ32玉米铣T1104', '玉米铣', 'φ32', null);
INSERT INTO `daoju` VALUES ('22', 'Φ8.65 硬钻(T1028)', '硬钻', 'Φ8.65', null);
INSERT INTO `daoju` VALUES ('23', 'Φ27 硬钻(T1047)', '硬钻', 'Φ27', null);
INSERT INTO `daoju` VALUES ('24', 'Φ12硬钻（T1009)', '硬钻', 'Φ12', null);
INSERT INTO `daoju` VALUES ('25', 'Φ10.8硬钻（T1010)', '硬钻', 'Φ10.8', null);
INSERT INTO `daoju` VALUES ('26', 'φ13 硬钻(T131)', '硬钻', 'φ13', null);
INSERT INTO `daoju` VALUES ('27', 'φ6.8 硬钻(T116)', '硬钻', 'φ6.8', null);
INSERT INTO `daoju` VALUES ('28', 'φ19.7硬钻(T119)', '硬钻', 'φ19.7', null);
INSERT INTO `daoju` VALUES ('29', 'φ8.7 硬钻(T35)', '硬钻', 'φ8.7', null);
INSERT INTO `daoju` VALUES ('30', 'φ13 硬钻(T77)', '硬钻', 'φ13', null);
INSERT INTO `daoju` VALUES ('31', 'φ11 硬钻(T40)', '硬钻', 'φ11', null);
INSERT INTO `daoju` VALUES ('32', 'φ15.7 硬钻(T45)', '硬钻', 'φ15.7', null);
INSERT INTO `daoju` VALUES ('33', 'φ12.5 硬钻(T46)', '硬钻', 'φ12.5', null);
INSERT INTO `daoju` VALUES ('34', 'φ10.7 硬钻(T47)', '硬钻', 'φ10.7', null);
INSERT INTO `daoju` VALUES ('35', 'Φ10.7 硬钻(T49)', '硬钻', 'Φ10.7', null);
INSERT INTO `daoju` VALUES ('36', 'Φ6.05 硬钻(T59)', '硬钻', 'Φ6.05', null);
INSERT INTO `daoju` VALUES ('37', 'Φ6.05 硬钻(T60)', '硬钻', 'Φ6.05', null);
INSERT INTO `daoju` VALUES ('38', 'Φ13 硬钻(T114)', '硬钻', 'Φ13', null);
INSERT INTO `daoju` VALUES ('39', 'Φ17.5 硬钻(T82)', '硬钻', 'Φ17.5', null);
INSERT INTO `daoju` VALUES ('40', 'Φ8.7 硬钻(T86)', '硬钻', 'Φ8.7', null);
INSERT INTO `daoju` VALUES ('41', 'Φ11 硬钻(T88)', '硬钻', 'Φ11', null);
INSERT INTO `daoju` VALUES ('42', 'Φ11.7 硬钻(T89)', '硬钻', 'Φ11.7', null);
INSERT INTO `daoju` VALUES ('43', 'Φ13 硬钻(T90)', '硬钻', 'Φ13', null);
INSERT INTO `daoju` VALUES ('44', 'Φ20铣刀（立）(T53)', '铣刀（立）', 'Φ20', null);
INSERT INTO `daoju` VALUES ('45', 'Φ100 铣刀(T1001)', '铣刀', 'Φ100', null);
INSERT INTO `daoju` VALUES ('46', 'Φ100 铣刀(T1009)', '铣刀', 'Φ100', null);
INSERT INTO `daoju` VALUES ('47', 'Φ84 铣刀(T1015)', '铣刀', 'Φ84', null);
INSERT INTO `daoju` VALUES ('48', 'Φ80 铣刀（T1035）', '铣刀', 'Φ80', null);
INSERT INTO `daoju` VALUES ('49', 'Φ50铣刀(T1054)', '铣刀', 'Φ50', null);
INSERT INTO `daoju` VALUES ('50', 'Φ100铣刀(T1002)', '铣刀', 'Φ100', null);
INSERT INTO `daoju` VALUES ('51', 'Φ25铣刀(T1017)', '铣刀', 'Φ25', null);
INSERT INTO `daoju` VALUES ('52', 'Φ100铣刀(T1028)', '铣刀', 'Φ100', null);
INSERT INTO `daoju` VALUES ('53', 'Φ80铣刀(T1058)', '铣刀', 'Φ80', null);
INSERT INTO `daoju` VALUES ('54', 'D80 铣刀(T185)', '铣刀', 'D80', null);
INSERT INTO `daoju` VALUES ('55', 'D63 铣刀(T101)', '铣刀', 'D63', null);
INSERT INTO `daoju` VALUES ('56', 'Φ30 铣刀(T102)', '铣刀', 'Φ30', null);
INSERT INTO `daoju` VALUES ('57', 'D25 铣刀(T132)', '铣刀', 'D25', null);
INSERT INTO `daoju` VALUES ('58', 'φ20 铣刀(T137)', '铣刀', 'φ20', null);
INSERT INTO `daoju` VALUES ('59', 'Φ32 铣刀(T64)', '铣刀', 'Φ32', null);
INSERT INTO `daoju` VALUES ('60', 'Φ40 铣刀(T130)', '铣刀', 'Φ40', null);
INSERT INTO `daoju` VALUES ('61', 'D125 铣刀(T20)', '铣刀', 'D125', null);
INSERT INTO `daoju` VALUES ('62', 'Φ20 铣刀(T50)', '铣刀', 'Φ20', null);
INSERT INTO `daoju` VALUES ('63', 'Φ34 铣刀(T120)', '铣刀', 'Φ34', null);
INSERT INTO `daoju` VALUES ('64', 'D63/C30 铣刀（T169)', '铣刀', 'D63/C30', null);
INSERT INTO `daoju` VALUES ('65', 'Φ63 铣槽刀(T78)', '铣槽刀', 'Φ63', null);
INSERT INTO `daoju` VALUES ('66', 'Φ31.5 镗刀(T1032)', '镗刀', 'Φ31.5', null);
INSERT INTO `daoju` VALUES ('67', 'Φ15镗刀（T1008)', '镗刀', 'Φ15', null);
INSERT INTO `daoju` VALUES ('68', 'Φ12 镗刀(T1013)', '镗刀', 'Φ12', null);
INSERT INTO `daoju` VALUES ('69', 'Φ42 镗刀(T1021)', '镗刀', 'Φ42', null);
INSERT INTO `daoju` VALUES ('70', 'Φ20 镗刀(T1023)', '镗刀', 'Φ20', null);
INSERT INTO `daoju` VALUES ('71', 'Φ15镗刀(T1054)', '镗刀', 'Φ15', null);
INSERT INTO `daoju` VALUES ('72', 'φ35.72 镗刀(T177)', '镗刀', 'φ35.72', null);
INSERT INTO `daoju` VALUES ('73', 'M10×1 丝锥(T1003)', '丝锥', 'M10×1', null);
INSERT INTO `daoju` VALUES ('74', 'M8 丝锥(T1005)', '丝锥', 'M8', null);
INSERT INTO `daoju` VALUES ('75', 'M22x1.5 丝锥(T1011)', '丝锥', 'M22x1.5', null);
INSERT INTO `daoju` VALUES ('76', 'M12×6H 丝锥（T1013)', '丝锥', 'M12×6H', null);
INSERT INTO `daoju` VALUES ('77', 'M20 丝锥(T1022)', '丝锥', 'M20', null);
INSERT INTO `daoju` VALUES ('78', 'M12×1.25 丝锥(T1025)', '丝锥', 'M12×1.25', null);
INSERT INTO `daoju` VALUES ('79', 'M10x1 丝锥(T1030)', '丝锥', 'M10x1', null);
INSERT INTO `daoju` VALUES ('80', 'M16x1.5 丝锥(T1038)', '丝锥', 'M16x1.5', null);
INSERT INTO `daoju` VALUES ('81', 'M10×1.5丝锥(T1113)', '丝锥', 'M10×1.5', null);
INSERT INTO `daoju` VALUES ('82', 'M16×1.5丝锥（T1005)', '丝锥', 'M16×1.5', null);
INSERT INTO `daoju` VALUES ('83', 'M12×1.25丝锥（T1011)', '丝锥', 'M12×1.25', null);
INSERT INTO `daoju` VALUES ('84', 'M10×1.25丝锥(T1016)', '丝锥', 'M10×1.25', null);
INSERT INTO `daoju` VALUES ('85', 'M22×1.5丝锥(T1019)', '丝锥', 'M22×1.5', null);
INSERT INTO `daoju` VALUES ('86', 'M8丝锥(T1042)', '丝锥', 'M8', null);
INSERT INTO `daoju` VALUES ('87', 'M10×1丝锥(T1045)', '丝锥', 'M10×1', null);
INSERT INTO `daoju` VALUES ('88', 'M6丝锥(T1047)', '丝锥', 'M6', null);
INSERT INTO `daoju` VALUES ('89', 'M18×1.5丝锥(T1049)', '丝锥', 'M18×1.5', null);
INSERT INTO `daoju` VALUES ('90', 'M22*1.5丝锥(T1101)', '丝锥', 'M22*1.5', null);
INSERT INTO `daoju` VALUES ('91', 'M8*1.25丝锥(T118)', '丝锥', 'M8*1.25', null);
INSERT INTO `daoju` VALUES ('92', 'M10*1.25 丝锥(T36)', '丝锥', 'M10*1.25', null);
INSERT INTO `daoju` VALUES ('93', 'M14*1.5 丝锥(T50)', '丝锥', 'M14*1.5', null);
INSERT INTO `daoju` VALUES ('94', 'M12*1.25 丝锥(T51)', '丝锥', 'M12*1.25', null);
INSERT INTO `daoju` VALUES ('95', 'M22*1.5 丝锥(T134)', '丝锥', 'M22*1.5', null);
INSERT INTO `daoju` VALUES ('96', 'M12*1.5 丝锥(T58)', '丝锥', 'M12*1.5', null);
INSERT INTO `daoju` VALUES ('97', 'M20*1.5 丝锥(T61)', '丝锥', 'M20*1.5', null);
INSERT INTO `daoju` VALUES ('98', 'M8*1.25 丝锥(T80)', '丝锥', 'M8*1.25', null);
INSERT INTO `daoju` VALUES ('99', 'M10*1.25 丝锥(T92)', '丝锥', 'M10*1.25', null);
INSERT INTO `daoju` VALUES ('100', 'M22*1.5 丝锥(T117)', '丝锥', 'M22*1.5', null);
INSERT INTO `daoju` VALUES ('101', 'M12*1.25 丝锥(T142)', '丝锥', 'M12*1.25', null);
INSERT INTO `daoju` VALUES ('102', 'M14*1.5 丝锥(T147)', '丝锥', 'M14*1.5', null);
INSERT INTO `daoju` VALUES ('103', 'Φ20H9 枪钻(T1046)', '枪钻', 'Φ20H9', null);
INSERT INTO `daoju` VALUES ('104', 'M39螺纹铣刀（T1103）', '螺纹铣刀', 'M39', null);
INSERT INTO `daoju` VALUES ('105', 'D16*2 螺纹铣刀(T53)', '螺纹铣刀', 'D16*2', null);
INSERT INTO `daoju` VALUES ('106', 'M16*1.5 螺纹铣刀(T56)', '螺纹铣刀', 'M16*1.5', null);
INSERT INTO `daoju` VALUES ('107', '  Φ12立铣刀 (T1052)', '立铣刀', 'Φ13', null);
INSERT INTO `daoju` VALUES ('108', 'Φ16立铣刀(T1056)', '立铣刀', 'Φ16', null);
INSERT INTO `daoju` VALUES ('109', 'Φ25 立铣刀(T86)', '立铣刀', 'Φ25', null);
INSERT INTO `daoju` VALUES ('110', 'Φ11 立铣刀(T87)', '立铣刀', 'Φ11', null);
INSERT INTO `daoju` VALUES ('111', 'φ11.7 扩孔钻(T41)', '扩孔钻', 'φ11.7', null);
INSERT INTO `daoju` VALUES ('112', 'Φ26.5 扩孔钻(T67)', '扩孔钻', 'Φ26.5', null);
INSERT INTO `daoju` VALUES ('113', 'Φ29.5 扩孔钻(T60)', '扩孔钻', 'Φ29.5', null);
INSERT INTO `daoju` VALUES ('114', 'Φ25 扩孔钻(T1034)', '扩孔钻', 'Φ25', null);
INSERT INTO `daoju` VALUES ('115', 'Φ250*15 宽精铣刀（T225）', '宽精铣刀', 'Φ250*15', null);
INSERT INTO `daoju` VALUES ('116', 'Φ250*15 宽精铣刀（T225)', '宽精铣刀', 'Φ250*15', null);
INSERT INTO `daoju` VALUES ('117', 'D63 精铣(T76)', '精铣', 'D63', null);
INSERT INTO `daoju` VALUES ('118', 'D80 精铣(T201)', '精铣', 'D80', null);
INSERT INTO `daoju` VALUES ('119', 'D80 精铣(T199)', '精铣', 'D80', null);
INSERT INTO `daoju` VALUES ('120', 'D25 精铣(T110)', '精铣', 'D25', null);
INSERT INTO `daoju` VALUES ('121', 'Φ120 精镗刀', '精镗刀', 'Φ121', null);
INSERT INTO `daoju` VALUES ('122', 'Φ32 精镗(T1033)', '精镗', 'Φ32', null);
INSERT INTO `daoju` VALUES ('123', 'Φ15R8 精镗(T1040)', '精镗', 'Φ15R8', null);
INSERT INTO `daoju` VALUES ('124', 'Φ15F9 精镗(T1041)', '精镗', 'Φ15F9', null);
INSERT INTO `daoju` VALUES ('125', 'Φ18F9 精镗(T1044)', '精镗', 'Φ18F9', null);
INSERT INTO `daoju` VALUES ('126', 'Φ30精镗(T1049)', '精镗', 'Φ30', null);
INSERT INTO `daoju` VALUES ('127', 'Φ110/Φ130精镗(T1050)', '精镗', 'Φ110/Φ130', null);
INSERT INTO `daoju` VALUES ('128', 'Φ120精镗(T1051)', '精镗', 'Φ120', null);
INSERT INTO `daoju` VALUES ('129', 'Φ38精镗(T1053)', '精镗', 'Φ38', null);
INSERT INTO `daoju` VALUES ('130', 'Φ130精镗(T1057)', '精镗', 'Φ130', null);
INSERT INTO `daoju` VALUES ('131', 'Φ120精镗(T1056)', '精镗', 'Φ120', null);
INSERT INTO `daoju` VALUES ('132', 'Φ68精镗(T73)', '精镗', 'Φ68', null);
INSERT INTO `daoju` VALUES ('133', 'Φ85精镗(T74)', '精镗', 'Φ85', null);
INSERT INTO `daoju` VALUES ('134', 'Φ30精镗(T75)', '精镗', 'Φ30', null);
INSERT INTO `daoju` VALUES ('135', 'Φ80 精镗 (T37)', '精镗', 'Φ80', null);
INSERT INTO `daoju` VALUES ('136', 'Φ72 精镗 (T66)', '精镗', 'Φ72', null);
INSERT INTO `daoju` VALUES ('137', 'Φ396 精镗(T13)', '精镗', 'Φ396', null);
INSERT INTO `daoju` VALUES ('138', 'Φ190 精镗(T235)', '精镗', 'Φ190', null);
INSERT INTO `daoju` VALUES ('139', 'Φ90 精镗(T175)', '精镗', 'Φ90', null);
INSERT INTO `daoju` VALUES ('140', 'Φ85 精镗(T176)', '精镗', 'Φ85', null);
INSERT INTO `daoju` VALUES ('141', 'Φ30 精镗(T62)', '精镗', 'Φ30', null);
INSERT INTO `daoju` VALUES ('142', 'Φ29 阶梯钻(T1031)', '阶梯钻', 'Φ29', null);
INSERT INTO `daoju` VALUES ('143', 'Φ6.8阶梯钻(T1041)', '阶梯钻', 'Φ6.8', null);
INSERT INTO `daoju` VALUES ('144', 'Φ20阶梯钻(T1043)', '阶梯钻', 'Φ20', null);
INSERT INTO `daoju` VALUES ('145', 'Φ9阶梯钻(T1044)', '阶梯钻', 'Φ9', null);
INSERT INTO `daoju` VALUES ('146', 'Φ5阶梯钻(T1046)', '阶梯钻', 'Φ5', null);
INSERT INTO `daoju` VALUES ('147', 'Φ16.5阶梯钻(T1048)', '阶梯钻', 'Φ16.5', null);
INSERT INTO `daoju` VALUES ('148', 'Φ11.8阶梯钻(T1050)', '阶梯钻', 'Φ11.8', null);
INSERT INTO `daoju` VALUES ('149', 'Φ17阶梯钻(T1063)', '阶梯钻', 'Φ17', null);
INSERT INTO `daoju` VALUES ('150', 'Φ12F9-铰刀 (T1051)', '铰刀', 'Φ12F9-', null);
INSERT INTO `daoju` VALUES ('151', 'Φ18R8铰刀(T79)', '铰刀', 'Φ18R8', null);
INSERT INTO `daoju` VALUES ('152', 'Φ20H9铰刀(T80)', '铰刀', 'Φ20H9', null);
INSERT INTO `daoju` VALUES ('153', 'Φ12R8 铰刀(T42)', '铰刀', 'Φ12R8', null);
INSERT INTO `daoju` VALUES ('154', 'Φ16F9 铰刀(T56)', '铰刀', 'Φ16F9', null);
INSERT INTO `daoju` VALUES ('155', 'Φ28 铰刀(T58)', '铰刀', 'Φ28', null);
INSERT INTO `daoju` VALUES ('156', 'Φ26.82 铰刀(T68)', '铰刀', 'Φ26.82', null);
INSERT INTO `daoju` VALUES ('157', 'Φ12R8 铰刀(T93)', '铰刀', 'Φ12R8', null);
INSERT INTO `daoju` VALUES ('158', 'Φ13.2H7 铰刀(T143)', '铰刀', 'Φ13.2H7', null);
INSERT INTO `daoju` VALUES ('159', 'Φ16F9 铰刀(T151)', '铰刀', 'Φ16F9', null);
INSERT INTO `daoju` VALUES ('160', 'Φ17.7锪孔钻(T115)', '锪孔钻', 'Φ17.7', null);
INSERT INTO `daoju` VALUES ('161', 'Φ120反精镗刀(T30)', '反精镗刀', 'Φ120', null);
INSERT INTO `daoju` VALUES ('162', 'Φ200 反精镗(T17)', '反精镗', 'Φ200', null);
INSERT INTO `daoju` VALUES ('163', 'Φ17.5/Φ40 反划(T83)', '反划', 'Φ17.5/Φ40', null);
INSERT INTO `daoju` VALUES ('164', 'φ12 倒角钻(T71)', '倒角钻', 'φ12', null);
INSERT INTO `daoju` VALUES ('165', 'Φ21-Φ35 倒角钻(T52)', '倒角钻', 'Φ21-Φ35', null);
INSERT INTO `daoju` VALUES ('166', 'φ20 倒角钻(T200)', '倒角钻', 'φ20', null);
INSERT INTO `daoju` VALUES ('167', 'Φ50 倒角铣刀(T1020)', '倒角铣刀', 'Φ50', null);
INSERT INTO `daoju` VALUES ('168', 'Φ32.5-48.2倒角铣(T105)', '倒角铣', 'Φ32.5-48.2', null);
INSERT INTO `daoju` VALUES ('169', 'Φ42 倒角铣(T110)', '倒角铣', 'Φ42', null);
INSERT INTO `daoju` VALUES ('170', 'D40/C45 倒角铣(T180)', '倒角铣', 'D40/C45', null);
INSERT INTO `daoju` VALUES ('171', 'D63/C30 倒角刀(T81)', '倒角刀', 'D63/C30', null);
INSERT INTO `daoju` VALUES ('172', 'Φ21-Φ35倒角(T113)', '倒角', 'Φ21-Φ35', null);
INSERT INTO `daoju` VALUES ('173', 'D80 粗铣(T63)', '粗铣', 'D80', null);
INSERT INTO `daoju` VALUES ('174', 'D25 粗铣(T109)', '粗铣', 'D25', null);
INSERT INTO `daoju` VALUES ('175', 'Φ63 粗镗刀(T103)', '粗镗刀', 'Φ63', null);
INSERT INTO `daoju` VALUES ('176', 'φ75 粗镗刀(T136)', '粗镗刀', 'φ75', null);
INSERT INTO `daoju` VALUES ('177', 'φ180 粗镗刀', '粗镗刀', 'φ180', null);
INSERT INTO `daoju` VALUES ('178', 'φ416 粗镗刀', '粗镗刀', 'φ416', null);
INSERT INTO `daoju` VALUES ('179', 'Φ170 粗镗刀', '粗镗刀', 'Φ170', null);
INSERT INTO `daoju` VALUES ('180', 'Φ37.5粗镗(T1052)', '粗镗', 'Φ37.5', null);
INSERT INTO `daoju` VALUES ('181', 'Φ101 粗镗(T106)', '粗镗', 'Φ101', null);
INSERT INTO `daoju` VALUES ('182', 'Φ106 粗镗(T107)', '粗镗', 'Φ106', null);
INSERT INTO `daoju` VALUES ('183', 'Φ80 粗镗(T108)', '粗镗', 'Φ80', null);
INSERT INTO `daoju` VALUES ('184', 'Φ29.7 粗镗(T112)', '粗镗', 'Φ29.7', null);
INSERT INTO `daoju` VALUES ('185', 'Φ115 粗镗(T22)', '粗镗', 'Φ115', null);
INSERT INTO `daoju` VALUES ('186', 'Φ67 粗镗 (T61)', '粗镗', 'Φ67', null);
INSERT INTO `daoju` VALUES ('187', 'Φ189.5 粗镗(T229)', '粗镗', 'Φ189.5', null);
INSERT INTO `daoju` VALUES ('188', 'Φ391 粗镗(T8)', '粗镗', 'Φ391', null);
INSERT INTO `daoju` VALUES ('189', 'φ395.5 粗镗(T2)', '粗镗', 'φ395.5', null);
INSERT INTO `daoju` VALUES ('190', 'Φ33.7 粗镗(T145)', '粗镗', 'Φ33.7', null);
INSERT INTO `daoju` VALUES ('191', 'φ88.5 粗镗(T170)', '粗镗', 'φ88.5', null);
INSERT INTO `daoju` VALUES ('192', 'φ80 粗镗(T172)', '粗镗', 'φ80', null);
INSERT INTO `daoju` VALUES ('193', 'Φ20.2*3.5 槽铣刀（T150)', '槽铣刀', 'Φ20.2*3.5', null);
INSERT INTO `daoju` VALUES ('194', 'φ63*3.15 槽铣刀(T174)', '槽铣刀', 'φ63*3.15', null);
INSERT INTO `daoju` VALUES ('195', 'Φ29.5 半精镗(T1048)', '半精镗', 'Φ29.5', null);
INSERT INTO `daoju` VALUES ('196', 'Φ67.7半精镗(T104)', '半精镗', 'Φ67.7', null);
INSERT INTO `daoju` VALUES ('197', 'φ84.7半精镗(T109)', '半精镗', 'φ84.7', null);
INSERT INTO `daoju` VALUES ('198', 'Φ119.7半精镗(T20)', '半精镗', 'Φ119.7', null);
INSERT INTO `daoju` VALUES ('199', 'Φ79.7 半精镗(T34)', '半精镗', 'Φ79.7', null);
INSERT INTO `daoju` VALUES ('200', 'Φ27.7 半精镗(T57)', '半精镗', 'Φ27.7', null);
INSERT INTO `daoju` VALUES ('201', 'Φ71.7 半精镗(T62)', '半精镗', 'Φ71.7', null);
INSERT INTO `daoju` VALUES ('202', 'Φ27.7 半精镗(T119)', '半精镗', 'Φ27.7', null);
INSERT INTO `daoju` VALUES ('203', 'φ35.4 半精镗(T146)', '半精镗', 'φ35.4', null);
INSERT INTO `daoju` VALUES ('204', 'φ89.7 半精镗(T171)', '半精镗', 'φ89.7', null);
INSERT INTO `daoju` VALUES ('205', 'φ84.7 半精镗(T173)', '半精镗', 'φ84.7', null);
INSERT INTO `daoju` VALUES ('206', 'Φ25U钻(T1057)', 'U钻', 'Φ25', null);
INSERT INTO `daoju` VALUES ('207', 'Φ20.5U钻(T1100)', 'U钻', 'Φ20.5', null);
INSERT INTO `daoju` VALUES ('208', 'φ37U钻（T1102）', 'U钻', 'φ37', null);
INSERT INTO `daoju` VALUES ('210', 'φ520 钻头', '钻头', 'φ520', null);
INSERT INTO `daoju` VALUES ('211', 'φ21.2 中心钻', '中心钻', 'φ21.2', null);
INSERT INTO `daoju` VALUES ('212', 'φ520 中心钻', '中心钻', 'φ520', null);
INSERT INTO `daoju` VALUES ('214', 'φ520 铣槽刀', '铣槽刀', 'φ520', null);
INSERT INTO `daoju` VALUES ('216', 'φ520H212 枪钻', '枪钻', 'φ520H212', null);

-- ----------------------------
-- Table structure for `daojubaofei`
-- ----------------------------
DROP TABLE IF EXISTS `daojubaofei`;
CREATE TABLE `daojubaofei` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `djzt` int(2) DEFAULT NULL,
  `sqbz` varchar(20) NOT NULL,
  `sqr` varchar(10) NOT NULL,
  `sqsb` varchar(20) NOT NULL,
  `sqsj` date NOT NULL,
  `jglj` varchar(20) NOT NULL,
  `gx` varchar(20) NOT NULL,
  `djlx` char(50) NOT NULL,
  `djgg` char(20) NOT NULL,
  `djcd` char(10) DEFAULT NULL,
  `djid` char(20) DEFAULT NULL,
  `bfyy` text NOT NULL,
  `spld` varchar(20) NOT NULL,
  `spyj` text NOT NULL,
  `spsj` date NOT NULL,
  `jbr` varchar(10) NOT NULL,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `danhao` (`danhao`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojubaofei
-- ----------------------------
INSERT INTO `daojubaofei` VALUES ('5', 'DJBF_170709001', '1', '先锋一班', '大刘', 'FMS-1#机', '2017-07-09', '80前箱', '40序', '钻头', 'Φ10.4', '50', 'ZT-0001', '这是第一次报废单测试，均采用默认值。', '周主任', '情况属实。', '2017-07-09', '赵经手');
INSERT INTO `daojubaofei` VALUES ('6', 'DJBF_170709002', '1', '80传动箱班', '张辉辉', 'FMS-1#机', '2016-08-03', '80传动箱', '40序', '钻头', 'Φ10.4', '50', 'ZT-0001', '在加工零件机床正常走程序干至610.4钻头时，钻头切削零件时，钻头折断，后卸下零件观察，发现零件所加工的部位砂眼。', '周主任', '情况属实。', '2016-08-03', '赵经手');
INSERT INTO `daojubaofei` VALUES ('8', 'DJBF_170721001', '0', '先锋一班', '', 'FMS-1#机', '2017-07-21', '80前箱', '序', '钻头', 'Φ10.4', '50', 'ZT-0001', '', '周主任', '情况属实。', '2017-07-21', '赵经手');

-- ----------------------------
-- Table structure for `daojugenghuan`
-- ----------------------------
DROP TABLE IF EXISTS `daojugenghuan`;
CREATE TABLE `daojugenghuan` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `djzt` int(2) DEFAULT NULL,
  `sqbz` varchar(20) NOT NULL,
  `sqr` varchar(10) NOT NULL,
  `sqsb` varchar(20) NOT NULL,
  `sqsj` date NOT NULL,
  `jglj` varchar(20) NOT NULL,
  `gx` varchar(20) NOT NULL,
  `ydjlx` char(50) NOT NULL,
  `ydjgg` char(20) NOT NULL,
  `ydjcd` char(10) DEFAULT NULL,
  `ydjid` char(20) DEFAULT NULL,
  `xdjlx` char(50) NOT NULL,
  `xdjgg` char(20) NOT NULL,
  `xdjcd` char(10) DEFAULT NULL,
  `xdjid` char(20) DEFAULT NULL,
  `ghly` text NOT NULL,
  `spld` varchar(20) NOT NULL,
  `spyj` text NOT NULL,
  `spsj` date NOT NULL,
  `jbr` varchar(10) NOT NULL,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `danhao` (`danhao`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojugenghuan
-- ----------------------------
INSERT INTO `daojugenghuan` VALUES ('1', 'DJGH_170705001', '0', '和谐班', '大刘', 'FMS-1#机', '2017-07-05', '80前箱', '序', '直槽钻', 'Φ10.4', '50', 'ZCZ-0001', '直槽钻', 'φ6.8', '50', 'ZCZ-0003', '170705第一次测试', '周主任', '同意。', '2017-07-05', '赵经手');
INSERT INTO `daojugenghuan` VALUES ('2', 'DJGH_170705002', '1', '先锋一班', '郑一', 'FMS-2#机', '2017-07-05', '80后箱', '20序', '钻头', 'Φ10.4', '100', 'ZT-0001', '钻头', 'Φ6', '50', 'ZT-0010', '原刀具直径太粗，长度过长。', '周主任', '同意。', '2017-07-05', '赵经手');
INSERT INTO `daojugenghuan` VALUES ('3', 'DJGH_170706001', '0', '胜利二班', '是丽丽', 'FMS-2#机', '2017-07-06', '100前箱', '38序', '玉米铣', 'Φ100', '50', 'YMX-0001', '玉米铣', 'Φ44', '50', 'YMX-0002', '太长', '周主任', '同意。', '2017-07-06', '赵经手');
INSERT INTO `daojugenghuan` VALUES ('4', 'DJGH_170706002', '0', '先锋一班', '家旺', 'FMS-1#机', '2017-07-06', '80前箱', '40序', '铣刀', 'Φ25', '200', 'XD-0008', '铣刀', 'Φ25', '150', 'XD-0018', '原刀具长度太长，导致洗削时刀具发振。', '周主任', '同意。', '2017-07-06', '钱刀管');
INSERT INTO `daojugenghuan` VALUES ('5', 'DJGH_170720001', '0', '先锋一班', '啊水', 'FMS-1#机', '2017-07-20', '80前箱', '30序', '钻头', 'Φ10.4', '50', 'ZT-0001', '钻头', 'φ10.5', '100', 'ZT-0005', '无', '周主任', '同意。', '2017-07-20', '赵经手');

-- ----------------------------
-- Table structure for `daojugui`
-- ----------------------------
DROP TABLE IF EXISTS `daojugui`;
CREATE TABLE `daojugui` (
  `xh` int(10) NOT NULL AUTO_INCREMENT,
  `djgbm` int(10) NOT NULL,
  `djgmc` varchar(50) NOT NULL,
  `djglx` char(20) NOT NULL,
  `cjbm` int(10) DEFAULT NULL,
  `djglxid` int(10) DEFAULT NULL,
  `bz` tinytext,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `daojugui_ix1` (`djgbm`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojugui
-- ----------------------------
INSERT INTO `daojugui` VALUES ('1', '1001', 'kardex 1号柜', 'Kardex柜', null, null, null);
INSERT INTO `daojugui` VALUES ('2', '1002', 'kardex 2号柜', 'Kardex柜', null, null, null);
INSERT INTO `daojugui` VALUES ('3', '1003', '箱式 1号柜', '立式柜', null, null, null);
INSERT INTO `daojugui` VALUES ('4', '1004', '箱式 2号柜', '立式柜', null, null, null);
INSERT INTO `daojugui` VALUES ('5', '1005', 'kardex 3号柜', 'Kardex柜', null, null, null);

-- ----------------------------
-- Table structure for `daojuguicengshu`
-- ----------------------------
DROP TABLE IF EXISTS `daojuguicengshu`;
CREATE TABLE `daojuguicengshu` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `djgmc` char(20) CHARACTER SET utf8 NOT NULL,
  `djgcs` char(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of daojuguicengshu
-- ----------------------------
INSERT INTO `daojuguicengshu` VALUES ('1', 'kardex 1号柜', '01层');
INSERT INTO `daojuguicengshu` VALUES ('2', 'kardex 1号柜', '02层');
INSERT INTO `daojuguicengshu` VALUES ('3', 'kardex 1号柜', '03层');
INSERT INTO `daojuguicengshu` VALUES ('4', 'kardex 1号柜', '04层');
INSERT INTO `daojuguicengshu` VALUES ('5', 'kardex 1号柜', '05层');
INSERT INTO `daojuguicengshu` VALUES ('6', 'kardex 1号柜', '06层');
INSERT INTO `daojuguicengshu` VALUES ('7', 'kardex 1号柜', '07层');
INSERT INTO `daojuguicengshu` VALUES ('8', 'kardex 1号柜', '08层');
INSERT INTO `daojuguicengshu` VALUES ('9', 'kardex 1号柜', '09层');
INSERT INTO `daojuguicengshu` VALUES ('10', 'kardex 1号柜', '10层');
INSERT INTO `daojuguicengshu` VALUES ('11', 'kardex 1号柜', '11层');
INSERT INTO `daojuguicengshu` VALUES ('12', 'kardex 1号柜', '12层');
INSERT INTO `daojuguicengshu` VALUES ('13', 'kardex 2号柜', '01层');
INSERT INTO `daojuguicengshu` VALUES ('14', 'kardex 2号柜', '02层');
INSERT INTO `daojuguicengshu` VALUES ('15', 'kardex 2号柜', '03层');
INSERT INTO `daojuguicengshu` VALUES ('16', 'kardex 2号柜', '04层');
INSERT INTO `daojuguicengshu` VALUES ('17', 'kardex 2号柜', '05层');
INSERT INTO `daojuguicengshu` VALUES ('18', 'kardex 2号柜', '06层');
INSERT INTO `daojuguicengshu` VALUES ('19', 'kardex 2号柜', '07层');
INSERT INTO `daojuguicengshu` VALUES ('20', 'kardex 2号柜', '08层');
INSERT INTO `daojuguicengshu` VALUES ('21', 'kardex 2号柜', '09层');
INSERT INTO `daojuguicengshu` VALUES ('22', 'kardex 2号柜', '10层');
INSERT INTO `daojuguicengshu` VALUES ('23', '箱式 1号柜', '01层');
INSERT INTO `daojuguicengshu` VALUES ('24', '箱式 1号柜', '02层');
INSERT INTO `daojuguicengshu` VALUES ('25', '箱式 1号柜', '03层');
INSERT INTO `daojuguicengshu` VALUES ('26', '箱式 1号柜', '04层');
INSERT INTO `daojuguicengshu` VALUES ('27', '箱式 1号柜', '05层');
INSERT INTO `daojuguicengshu` VALUES ('28', '箱式 2号柜', '01层');
INSERT INTO `daojuguicengshu` VALUES ('29', '箱式 2号柜', '02层');
INSERT INTO `daojuguicengshu` VALUES ('30', '箱式 2号柜', '03层');
INSERT INTO `daojuguicengshu` VALUES ('31', '箱式 2号柜', '04层');
INSERT INTO `daojuguicengshu` VALUES ('32', '箱式 2号柜', '05层');
INSERT INTO `daojuguicengshu` VALUES ('33', '箱式 2号柜', '06层');
INSERT INTO `daojuguicengshu` VALUES ('34', '箱式 2号柜', '07层');
INSERT INTO `daojuguicengshu` VALUES ('35', 'kardex 3号柜', '01层');
INSERT INTO `daojuguicengshu` VALUES ('36', 'kardex 3号柜', '02层');
INSERT INTO `daojuguicengshu` VALUES ('37', 'kardex 3号柜', '03层');
INSERT INTO `daojuguicengshu` VALUES ('38', 'kardex 3号柜', '04层');
INSERT INTO `daojuguicengshu` VALUES ('39', 'kardex 3号柜', '05层');

-- ----------------------------
-- Table structure for `daojulingbujian`
-- ----------------------------
DROP TABLE IF EXISTS `daojulingbujian`;
CREATE TABLE `daojulingbujian` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `djxh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lbjmc` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lbjxh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lbjgg` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sl` int(10) NOT NULL,
  `dw` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=669 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of daojulingbujian
-- ----------------------------
INSERT INTO `daojulingbujian` VALUES ('263', 'M10×1 丝锥(T1003)', '主刀柄', 'C4-390.410-100 090A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('264', 'M10×1 丝锥(T1003)', '接杆', 'C4-391.01-40 080A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('265', 'M10×1 丝锥(T1003)', '弹簧夹头', 'C4-391.14-20 052', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('266', 'M10×1 丝锥(T1003)', '夹心', 'ER20-GB Φ7.0-Φ5.5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('267', 'M10×1 丝锥(T1003)', '丝锥', 'E447M10', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('268', 'M10×1 丝锥(T1003)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('269', 'M8 丝锥(T1005)', '主刀柄', 'C6-390.410-100 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('270', 'M8 丝锥(T1005)', '接杆', 'C6-391.01-63 140A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('271', 'M8 丝锥(T1005)', '弹簧夹头', 'C6-391.14-40 130', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('272', 'M8 丝锥(T1005)', '夹心', 'ER40-GB', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('273', 'M8 丝锥(T1005)', '丝锥', 'E446M8', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('274', 'M8 丝锥(T1005)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('275', 'Φ30精镗(T1049)', '主刀柄', 'C3-390.410-100 080A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('276', 'Φ30精镗(T1049)', '精镗单元', 'C3-R825A-AAB072A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('277', 'Φ30精镗(T1049)', '刀夹', 'R825A-AF11STUC06T1A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('278', 'Φ30精镗(T1049)', '刀片', 'TCMT06 T1 04-KF     3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('279', 'Φ30精镗(T1049)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('280', 'Φ110/Φ130精镗(T1050)', '主刀柄', '345-11-9093S-53619(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('281', 'Φ110/Φ130精镗(T1050)', '镗刀杆', '890450232R58429(看不到）', 'L585', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('282', 'Φ110/Φ130精镗(T1050)', '刀片', 'TCMT 11 03 04-KF    3005', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('283', 'Φ110/Φ130精镗(T1050)', '镗刀头', '无型号', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('284', 'Φ110/Φ130精镗(T1050)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('285', 'Φ120精镗(T1051)', '主刀柄', '345-11-9093S-53619', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('286', 'Φ120精镗(T1051)', '镗刀杆', '890450232R58430', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('287', 'Φ120精镗(T1051)', '刀片', 'TCMT 11 03 04-KF    3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('288', 'Φ120精镗(T1051)', '镗刀头', '无型号', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('289', 'Φ120精镗(T1051)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('290', 'Φ37.5粗镗(T1052)', '主刀柄', 'C3-390.410-100 080A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('291', 'Φ37.5粗镗(T1052)', '镗刀接柄', 'C3-391.68A-2-026084B', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('292', 'Φ37.5粗镗(T1052)', '滑块', '391.68A-2-03813C06B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('293', 'Φ37.5粗镗(T1052)', '刀片', 'CCMT 06 02 04-KM     3005', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('294', 'Φ37.5粗镗(T1052)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('295', 'Φ38精镗(T1053)', '主刀柄', 'C4-390.410-100 090A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('296', 'Φ38精镗(T1053)', '精镗单元', 'C4-R825A-AAB084A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('297', 'Φ38精镗(T1053)', '刀夹', 'R825A-AF11STUC06T1A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('298', 'Φ38精镗(T1053)', '刀片', 'TCMT06 T1 04-KF     3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('299', 'Φ38精镗(T1053)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('300', 'Φ50铣刀(T1054)', '主刀柄', 'C5-390.410-100 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('301', 'Φ50铣刀(T1054)', '铣刀盘', 'M10×1.5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('302', 'Φ50铣刀(T1054)', '刀片', 'R390-11 T3 08M-KM    1020', '', '12', '个');
INSERT INTO `daojulingbujian` VALUES ('303', 'Φ50铣刀(T1054)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('304', 'Φ100玉米铣(T1055)', '主刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('305', 'Φ100玉米铣(T1055)', '刀盘', 'R390-100C8-71M', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('306', 'Φ100玉米铣(T1055)', '刀片', 'R390-180608M-KM', '', '20', '个');
INSERT INTO `daojulingbujian` VALUES ('307', 'Φ100玉米铣(T1055)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('308', 'Φ130精镗(T1057)', '主刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('309', 'Φ130精镗(T1057)', '精镗单元', 'C8-R825C-AAH077A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('310', 'Φ130精镗(T1057)', '刀片', 'TCMT110304-KF', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('311', 'Φ130精镗(T1057)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('312', 'Φ120精镗(T1056)', '主刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('313', 'Φ120精镗(T1056)', '精镗单元', 'C8-R825C-AAH077A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('314', 'Φ120精镗(T1056)', '刀片', 'TCMT110304-KF', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('315', 'Φ120精镗(T1056)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('316', 'M10×1.5丝锥(T1113)', '主刀柄', 'A10.022.32', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('317', 'M10×1.5丝锥(T1113)', '夹心', '393.14-32 100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('318', 'M10×1.5丝锥(T1113)', '丝锥', 'E615M10', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('319', 'M10×1.5丝锥(T1113)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('320', 'Φ100铣刀(T1002)', '主刀柄', 'S945-563916(890800100N60566)', 'L=200', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('321', 'Φ100铣刀(T1002)', '刀盘', 'R590-100Q32A-11M', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('322', 'Φ100铣刀(T1002)', '刀片', 'R590-1105H-ZC2-KL  CB50', '', '6', '个');
INSERT INTO `daojulingbujian` VALUES ('323', 'Φ100铣刀(T1002)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('324', 'M16×1.5丝锥（T1005)', '主刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('325', 'M16×1.5丝锥（T1005)', '接杆1', 'C8-391.01-80 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('326', 'M16×1.5丝锥（T1005)', '接杆2', 'C8-391.01-80 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('327', 'M16×1.5丝锥（T1005)', '接杆3', 'C8-391.14-32 070', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('328', 'M16×1.5丝锥（T1005)', '夹心', '393.14-40D120×090', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('329', 'M16×1.5丝锥（T1005)', '丝锥', 'ES13KM16×1.5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('330', 'M16×1.5丝锥（T1005)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('331', 'Φ15镗刀（T1008)', '主刀柄', 'C6-390.410-100 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('332', 'Φ15镗刀（T1008)', '接杆1', 'C6-391.37A-16 075A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('333', 'Φ15镗刀（T1008)', '镗刀杆(非标）', '无号(看不见）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('334', 'Φ15镗刀（T1008)', '刀片', 'TCMT 06 T1 04-KF  3215', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('335', 'Φ15镗刀（T1008)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('336', 'Φ12硬钻（T1009)', '刀柄', '392.41014-100 32 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('337', 'Φ12硬钻（T1009)', '夹心', '393.15-40 12', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('338', 'Φ12硬钻（T1009)', '硬钻', 'R840-1200-70-A1A  1220', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('339', 'Φ12硬钻（T1009)', ' 水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('340', 'Φ10.8硬钻（T1010)', '主刀柄', 'C6-390.410-100 110A', 'L=180', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('341', 'Φ10.8硬钻（T1010)', '刀杆', 'C6-391.14-40 130', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('342', 'Φ10.8硬钻（T1010)', '夹心', '393.15-40 12', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('343', 'Φ10.8硬钻（T1010)', '硬钻', 'R840-1080-50-A1A  1220', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('344', 'Φ10.8硬钻（T1010)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('345', 'M12×1.25丝锥（T1011)', '主刀柄', 'C6-390.410-100 110A', 'L=180', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('346', 'M12×1.25丝锥（T1011)', '刀杆', 'C6-391.14-40 130', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('347', 'M12×1.25丝锥（T1011)', '夹心', 'ER40GB Φ9.0', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('348', 'M12×1.25丝锥（T1011)', '丝锥', 'EP11M12×1.25', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('349', 'M12×1.25丝锥（T1011)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('350', 'Φ12 镗刀(T1013)', '主刀柄', 'C6-390.410-100 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('351', 'Φ12 镗刀(T1013)', '接杆1', 'C6-391.02-50 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('352', 'Φ12 镗刀(T1013)', '接杆2', 'C5-391.37A-12 048B', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('353', 'Φ12 镗刀(T1013)', '刀杆', 'R492.90-11-033-06-AC(看不见）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('354', 'Φ12 镗刀(T1013)', '刀片', 'TCMT 06 T1 04-KF  3215', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('355', 'Φ12 镗刀(T1013)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('356', 'M10×1.25丝锥(T1016)', '主刀柄', 'C6-390.410-100 110A', 'L=180', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('357', 'M10×1.25丝锥(T1016)', '接杆1', 'C6-391.14-32 130', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('358', 'M10×1.25丝锥(T1016)', '夹心', 'ER32GBΦ7.0', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('359', 'M10×1.25丝锥(T1016)', '丝锥', 'ES13KM10×1.25', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('360', 'M10×1.25丝锥(T1016)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('361', 'Φ25铣刀(T1017)', '主刀柄', '930-HA10-HD-25-106', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('362', 'Φ25铣刀(T1017)', '铣刀盘', '看不见', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('363', 'Φ25铣刀(T1017)', '刀片', 'R390-17 04 08M-KM   1020', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('364', 'Φ25铣刀(T1017)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('365', 'M22×1.5丝锥(T1019)', '主刀柄', 'C6-390.410-100 110A', 'L=180', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('366', 'M22×1.5丝锥(T1019)', '接杆1', 'C6-391.14-40 130', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('367', 'M22×1.5丝锥(T1019)', '夹心', '393.14-40D180×145', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('368', 'M22×1.5丝锥(T1019)', '丝锥', 'EP11KM22×1.5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('369', 'M22×1.5丝锥(T1019)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('370', 'Φ42 镗刀(T1021)', '主刀柄', 'C4-390.410-100 40 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('371', 'Φ42 镗刀(T1021)', '接杆', 'C4-R825B-AAC066A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('372', 'Φ42 镗刀(T1021)', '镗刀夹', 'R-AF17STUC0902', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('373', 'Φ42 镗刀(T1021)', '刀片', 'TCMT 09 02 04-KF    3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('374', 'Φ42 镗刀(T1021)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('375', 'Φ20 镗刀(T1023)', '主刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('376', 'Φ20 镗刀(T1023)', '接杆1', 'C8-391.02-63 080A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('377', 'Φ20 镗刀(T1023)', '接杆2', 'C6-391.37A-16 075A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('378', 'Φ20 镗刀(T1023)', '刀杆', 'R429U-A16-17056 TC09A（看不见）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('379', 'Φ20 镗刀(T1023)', '刀片', 'TCMT 09 02 04-KF    3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('380', 'Φ20 镗刀(T1023)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('381', 'Φ100铣刀(T1028)', '主刀柄', '345-11-9003-206344', 'L=275', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('382', 'Φ100铣刀(T1028)', '接杆', 'C8-391.05CD-32 320', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('383', 'Φ100铣刀(T1028)', '铣刀盘', 'R390-100Q32-17M', 'Φ100,z=7', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('384', 'Φ100铣刀(T1028)', '刀片 ', 'R390-17 04 08M-KM  1020', '', '7', '个');
INSERT INTO `daojulingbujian` VALUES ('385', 'Φ100铣刀(T1028)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('386', 'Φ6.8阶梯钻(T1041)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('387', 'Φ6.8阶梯钻(T1041)', '刀柄', '392.41014-100 32 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('388', 'Φ6.8阶梯钻(T1041)', '夹心', 'ER40-DCB 10.0-9.5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('389', 'Φ6.8阶梯钻(T1041)', '非标钻头', 'ST0766 Φ6.8×20×120°×Φ10×103', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('390', 'M8丝锥(T1042)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('391', 'M8丝锥(T1042)', '刀柄', '392.41014-100 32 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('392', 'M8丝锥(T1042)', '钢性夹心', '05.027.964', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('393', 'M8丝锥(T1042)', '丝锥', 'E446M8', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('394', 'Φ20阶梯钻(T1043)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('395', 'Φ20阶梯钻(T1043)', '主柄', 'C6-390.410-100 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('396', 'Φ20阶梯钻(T1043)', '接杆', 'C6-391.14-40 130', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('397', 'Φ20阶梯钻(T1043)', '夹心 ', '393.15-32 20', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('398', 'Φ20阶梯钻(T1043)', '非标钻头', 'ST0759 Φ20×78×Φ20×131', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('399', 'Φ9阶梯钻(T1044)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('400', 'Φ9阶梯钻(T1044)', '刀柄', '392.41014-100 32 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('401', 'Φ9阶梯钻(T1044)', '夹心', '393.15-32 12', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('402', 'Φ9阶梯钻(T1044)', '非标钻头', 'ST0767 Φ9×20×120°×Φ12×103', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('403', 'M10×1丝锥(T1045)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('404', 'M10×1丝锥(T1045)', '刀柄', '392.41014-100 32 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('405', 'M10×1丝锥(T1045)', '钢性夹心', 'ER32-GB  Φ7.0-5.5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('406', 'M10×1丝锥(T1045)', '丝锥', 'ES13KM10×1.0', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('407', 'Φ5阶梯钻(T1046)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('408', 'Φ5阶梯钻(T1046)', '刀柄', '392.41014-100 32 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('409', 'Φ5阶梯钻(T1046)', '夹心', '393.15-32 10', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('410', 'Φ5阶梯钻(T1046)', '复合钻头', 'ST0768 Φ5×20×120°×Φ10×122', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('411', 'M6丝锥(T1047)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('412', 'M6丝锥(T1047)', '刀柄', '392.41014-100 32 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('413', 'M6丝锥(T1047)', '钢性夹心', '05.027.862(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('414', 'M6丝锥(T1047)', '丝锥', 'E616M6', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('415', 'Φ16.5阶梯钻(T1048)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('416', 'Φ16.5阶梯钻(T1048)', '钢性夹头', 'G25 25000A10.022.40', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('417', 'Φ16.5阶梯钻(T1048)', '夹心', '393.15-40 20', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('418', 'Φ16.5阶梯钻(T1048)', '复合钻头', 'ST0762 Φ16.5×42×120°×Φ20×153', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('419', 'M18×1.5丝锥(T1049)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('420', 'M18×1.5丝锥(T1049)', '钢性夹头', 'G25 2500 0A10.022.40', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('421', 'M18×1.5丝锥(T1049)', '钢性夹心', '393.14-40 D140×112', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('422', 'M18×1.5丝锥(T1049)', '丝锥', 'LS-SP M18×1.5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('423', 'Φ11.8阶梯钻(T1050)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('424', 'Φ11.8阶梯钻(T1050)', '刀柄', '392.41014-100 40 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('425', 'Φ11.8阶梯钻(T1050)', '夹心', '393.15-40 14', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('426', 'Φ11.8阶梯钻(T1050)', '复合钻头', 'ST0769 Φ11.8×14×120°×Φ14×120', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('427', 'Φ12F9-铰刀 (T1051)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('428', 'Φ12F9-铰刀 (T1051)', '刀柄', '392.41014-100 40 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('429', 'Φ12F9-铰刀 (T1051)', '夹心', '393.15-40 12', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('430', 'Φ12F9-铰刀 (T1051)', '铰刀', 'TM435.B-XF-435-XF.12', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('431', 'Φ12立铣刀 (T1052)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('432', 'Φ12立铣刀 (T1052)', '刀柄', '392.41014-100 40 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('433', 'Φ12立铣刀 (T1052)', '夹心', '393.15-40 12', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('434', 'Φ12立铣刀 (T1052)', '立铣刀', '2P340-1200-PA       1630', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('435', 'Φ15镗刀(T1054)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('436', 'Φ15镗刀(T1054)', '主刀柄', 'C5-390.410-100 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('437', 'Φ15镗刀(T1054)', '接柄', 'C5-391.37A-12 048B', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('438', 'Φ15镗刀(T1054)', '镗刀杆', 'R429.90-14-040-09（看不见）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('439', 'Φ15镗刀(T1054)', '刀片', 'TPMT090204-KF', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('440', 'Φ44玉米铣(T1055)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('441', 'Φ44玉米铣(T1055)', '主刀柄', 'C4-390.410-100 090A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('442', 'Φ44玉米铣(T1055)', '刀盘', 'R390-044C4-45M', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('443', 'Φ44玉米铣(T1055)', '刀片', 'R390-11T308M-KM', '', '15', '个');
INSERT INTO `daojulingbujian` VALUES ('444', 'Φ16立铣刀(T1056)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('445', 'Φ16立铣刀(T1056)', '主刀柄', 'G25 25000 A10.022.32', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('446', 'Φ16立铣刀(T1056)', '夹心', 'ER32-16', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('447', 'Φ16立铣刀(T1056)', '立铣刀', '2P340-1600-PA', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('448', 'Φ25U钻(T1057)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('449', 'Φ25U钻(T1057)', '主刀柄', 'C5-390.410-100 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('450', 'Φ25U钻(T1057)', '接杆', 'C5-391.01-50 100A', '', '3', '个');
INSERT INTO `daojulingbujian` VALUES ('451', 'Φ25U钻(T1057)', '侧压夹头', 'C5-391.27-25 071', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('452', 'Φ25U钻(T1057)', 'U钻', '880-D2500L25-05', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('453', 'Φ25U钻(T1057)', '中心刀片', '880-050305H-C-GM', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('454', 'Φ25U钻(T1057)', '周边刀片', '880-0503W05H-P-GM', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('455', 'Φ80铣刀(T1058)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('456', 'Φ80铣刀(T1058)', '主刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('457', 'Φ80铣刀(T1058)', '接杆', 'C8-391.06-27 320', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('458', 'Φ80铣刀(T1058)', '铣刀盘', 'R390-080Q27-17M', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('459', 'Φ80铣刀(T1058)', '刀片', 'R390-170408M-KM 3040', '', '6', '个');
INSERT INTO `daojulingbujian` VALUES ('460', 'Φ17阶梯钻(T1063)', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('461', 'Φ17阶梯钻(T1063)', '主刀柄', 'C6-390.410-100 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('462', 'Φ17阶梯钻(T1063)', '侧压夹头', 'C6-391.27-25 070A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('463', 'Φ17阶梯钻(T1063)', '刀杆', 'TM870.2.1-553751（看不见）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('464', 'Φ17阶梯钻(T1063)', '刀片', '870-1700-17-KM 3234', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('465', 'Φ20.5U钻(T1100)', '水嘴', '5692-022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('466', 'Φ20.5U钻(T1100)', '主刀柄', 'C6-390.410-100 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('467', 'Φ20.5U钻(T1100)', '接杆', 'C6-391.01-63 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('468', 'Φ20.5U钻(T1100)', '阶梯接杆', 'C6-391.27-32 075', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('469', 'Φ20.5U钻(T1100)', 'U钻刀杆', '880-D2050L25-05', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('470', 'Φ20.5U钻(T1100)', '中心刀片', '880-030305H-C-GM', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('471', 'Φ20.5U钻(T1100)', '周边刀片', '880-0303W05H-P-GM', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('472', 'M22*1.5丝锥(T1101)', '水嘴', '5692-022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('473', 'M22*1.5丝锥(T1101)', '主刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('474', 'M22*1.5丝锥(T1101)', '阶梯接杆', 'C8-391.02-63 080A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('475', 'M22*1.5丝锥(T1101)', '接杆', 'C6-391.02-50 110A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('476', 'M22*1.5丝锥(T1101)', '刚性夹头', 'C5-391.14-40 060', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('477', 'M22*1.5丝锥(T1101)', '夹心', '393.14-40D180X145', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('478', 'M22*1.5丝锥(T1101)', '丝锥', 'EP11M22X1.5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('479', 'φ37U钻（T1102）', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('480', 'φ37U钻（T1102）', '主刀柄', '392.41020-100 40 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('481', 'φ37U钻（T1102）', 'U钻刀杆', '880-D3700L40-05', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('482', 'φ37U钻（T1102）', '中心刀片', '880-070406H-C-GM', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('483', 'φ37U钻（T1102）', '周边刀片', '880-0704W06H-P-GM', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('484', 'M39螺纹铣刀（T1103）', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('485', 'M39螺纹铣刀（T1103）', '主刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('486', 'M39螺纹铣刀（T1103）', '阶梯接杆', 'C8-391.02-50 080A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('487', 'M39螺纹铣刀（T1103）', '侧压夹头', 'C5-391.27-25 071', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('488', 'M39螺纹铣刀（T1103）', '刀杆', 'SR0021H21', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('489', 'M39螺纹铣刀（T1103）', '螺纹刀片', '21I2.0ISO MT7', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('490', 'φ32玉米铣T1104', '水嘴', '5692 022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('491', 'φ32玉米铣T1104', '主刀柄', 'C5-390.410-100 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('492', 'φ32玉米铣T1104', '接杆', 'C5-391.01-50 080A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('493', 'φ32玉米铣T1104', '铣刀盘', 'R390-032C5-36L', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('494', 'φ32玉米铣T1104', '刀片', 'R390-11T308M-KM', '', '8', '个');
INSERT INTO `daojulingbujian` VALUES ('495', 'D80 铣刀(T185)', '方肩铣刀7刃', 'R220.96-0080-08-7A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('496', 'D80 铣刀(T185)', '刀片', 'XNEX080608TR-MD15.MK2050', '', '7', '个');
INSERT INTO `daojulingbujian` VALUES ('497', 'D80 铣刀(T185)', 'HSKA100铣刀刀柄', 'E9306552527160', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('498', 'D80 铣刀(T185)', 'HSKA100冷却液管', '20E9306', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('499', 'D63 铣刀(T101)', '方肩铣刀6刃', 'R220.96-0063-08-6A-27', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('500', 'D63 铣刀(T101)', '刀片', 'XNEX080608TR-MD15.MK2050', '', '6', '个');
INSERT INTO `daojulingbujian` VALUES ('501', 'D63 铣刀(T101)', 'HSKA100铣刀刀柄', 'E9306552527100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('502', 'D63 铣刀(T101)', 'HSKA100冷却液管', '20E9306', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('503', 'Φ30 铣刀(T102)', '非标立铣刀', 'D30*D32*126', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('504', 'Φ30 铣刀(T102)', '热胀刀柄', '4736 32.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('505', 'Φ30 铣刀(T102)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('506', 'Φ63 粗镗刀(T103)', 'HSK Capto刀柄', 'C5-390.410-100100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('507', 'Φ63 粗镗刀(T103)', '接柄', 'C5-391.68A-5-050 044B', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('508', 'Φ63 粗镗刀(T103)', '车刀片', 'TCMT16T308-KM3215', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('509', 'Φ63 粗镗刀(T103)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('510', 'Φ63 粗镗刀(T103)', '滑块', '391.68A-5-070 26T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('511', 'Φ67.7半精镗(T104)', 'HSKCapto刀柄', 'C5-390.410-100100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('512', 'Φ67.7半精镗(T104)', '接柄', 'C5-391.68A-5-050 044B', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('513', 'Φ67.7半精镗(T104)', '车刀片', 'TCMT16T308-KM3215', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('514', 'Φ67.7半精镗(T104)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('515', 'Φ67.7半精镗(T104)', '滑块', '391.68A-5-070 26T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('516', 'Φ32.5-48.2倒角铣(T105)', '英制倒角立铣刀', 'RA215.64-32M32-4512', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('517', 'Φ32.5-48.2倒角铣(T105)', 'KSK 英制侧固刀柄', 'A932.41020-100 31 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('518', 'Φ32.5-48.2倒角铣(T105)', 'Waveline铣刀片', 'SPMT120408-WH4030', '', '3', '个');
INSERT INTO `daojulingbujian` VALUES ('519', 'Φ32.5-48.2倒角铣(T105)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('520', 'Φ101 粗镗(T106)', '接柄', 'C6-391.68A-7-096 060', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('521', 'Φ101 粗镗(T106)', 'HSK Capto刀柄', 'C6-390.410-1001 10A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('522', 'Φ101 粗镗(T106)', '车刀片', 'TCMT16T308-KM3215', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('523', 'Φ101 粗镗(T106)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('524', 'Φ101 粗镗(T106)', '滑块', '391.68A-7-125 40T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('525', 'Φ106 粗镗(T107)', '接柄', 'C6-391.68A-7-096 060', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('526', 'Φ106 粗镗(T107)', 'HSK Capto刀柄', 'C6-390.410-1001 10A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('527', 'Φ106 粗镗(T107)', '车刀片', 'TCMT16T308-KM3215', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('528', 'Φ106 粗镗(T107)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('529', 'Φ106 粗镗(T107)', '滑块', '391.68A-7-125 40T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('530', 'Φ80 粗镗(T108)', '接柄', 'C6-391.68A-6-063 045C', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('531', 'Φ80 粗镗(T108)', 'HSK Capto刀柄', 'C6-390.410-1001 10HD', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('532', 'Φ80 粗镗(T108)', '车刀片', 'TCMT16T308-KM3215', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('533', 'Φ80 粗镗(T108)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('534', 'Φ80 粗镗(T108)', '滑块', '391.68A-7-125 40T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('535', 'φ84.7半精镗(T109)', '接柄', 'C6-391.68A-6-063 045C', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('536', 'φ84.7半精镗(T109)', 'HSK Capto刀柄', 'C6-390.410-1001 10A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('537', 'φ84.7半精镗(T109)', '车刀片', 'TCMT16T308-KM3215', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('538', 'φ84.7半精镗(T109)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('539', 'φ84.7半精镗(T109)', '滑块', '391.68A-7-125 40T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('540', 'Φ42 倒角铣(T110)', 'HSK Capto刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('541', 'Φ42 倒角铣(T110)', '英制倒角立铣刀', 'RA215.64-36M32-6012', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('542', 'Φ42 倒角铣(T110)', 'Capto英制组合接柄', 'C8-A391.23-31 080', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('543', 'Φ42 倒角铣(T110)', 'Waveline铣刀片', 'SPMT120408-WH4030', '', '3', '个');
INSERT INTO `daojulingbujian` VALUES ('544', 'Φ42 倒角铣(T110)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('545', 'Φ26 钻(T111)', '刀杆', '4108 26.000(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('546', 'Φ26 钻(T111)', '刀片', '4113 26.0', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('547', 'Φ26 钻(T111)', '侧固刀柄', 'GM3004334 32.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('548', 'Φ26 钻(T111)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('549', 'Φ29.7 粗镗(T112)', '刀体', '4H0987239', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('550', 'Φ29.7 粗镗(T112)', 'HSK钻头接柄', '392.41027-100 32 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('551', 'Φ29.7 粗镗(T112)', 'Tum107菱形80°', 'CCMT09T308-KM3210', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('552', 'Φ29.7 粗镗(T112)', '冷却液套管', '56692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('553', 'Φ21-Φ35倒角(T113)', 'Check Product Codel', 'S912-552083', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('554', 'Φ21-Φ35倒角(T113)', 'Tum107菱形80°', 'CCMT09T308-KM3210', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('555', 'Φ21-Φ35倒角(T113)', ' HSK钻头接柄', '392.41027-100 32 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('556', 'Φ21-Φ35倒角(T113)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('557', 'φ13 硬钻(T131)', '整体硬钻', '5510 13.0(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('558', 'φ13 硬钻(T131)', '热胀刀柄', '4736 14.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('559', 'φ13 硬钻(T131)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('560', 'Φ17.7锪孔钻(T115)', '非标HM扩孔钻', 'D17.7*D22*D20*105(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('561', 'Φ17.7锪孔钻(T115)', '热胀刀柄', '4736 20.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('562', 'Φ17.7锪孔钻(T115)', '冷却导管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('563', 'φ6.8 硬钻(T116)', '整体硬钻', '5510 6.800(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('564', 'φ6.8 硬钻(T116)', '热胀刀柄', 'GM3004736 108.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('565', 'φ6.8 硬钻(T116)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('566', 'φ16 中心钻(T117)', '中心钻', '723 16.0(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('567', 'φ16 中心钻(T117)', '热胀刀柄', 'GM3004736 116.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('568', 'φ16 中心钻(T117)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('569', 'M8*1.25丝锥(T118)', '丝锥', '931 8.000(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('570', 'M8*1.25丝锥(T118)', '弹簧夹头刀柄', 'FA:14103955', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('571', 'M8*1.25丝锥(T118)', '螺母', '4306 IC16，100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('572', 'M8*1.25丝锥(T118)', '弹簧夹套', '4308 16.016(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('573', 'M8*1.25丝锥(T118)', '密封环', '4335 6.016(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('574', 'M8*1.25丝锥(T118)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('575', 'φ19.7硬钻(T119)', '整体合金钻', '2477 19.7(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('576', 'φ19.7硬钻(T119)', '热胀刀柄', '4736 120.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('577', 'φ19.7硬钻(T119)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('578', 'φ12 倒角钻(T71)', '合金倒角钻', '6711 12.000(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('579', 'φ12 倒角钻(T71)', '延长杆', '4719 12.125', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('580', 'φ12 倒角钻(T71)', '热胀刀柄', 'GM3004736 25.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('581', 'φ12 倒角钻(T71)', '冷却导管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('582', 'Φ63 铣槽刀(T78)', '槽铣刀（5齿）', 'R335.15-063-03.22-5', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('583', 'Φ63 铣槽刀(T78)', '刀片', 'R335.15-13265FG-M10,F40M', '', '5', '个');
INSERT INTO `daojulingbujian` VALUES ('584', 'Φ63 铣槽刀(T78)', 'HSKA100铣刀刀柄', 'E9306Y552522160', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('585', 'Φ63 铣槽刀(T78)', 'HSKA100冷却液管', '20E9306', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('586', 'Φ115 粗镗(T22)', '接柄', 'C8-391.68A-7-080 060D', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('587', 'Φ115 粗镗(T22)', 'HSK Capto刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('588', 'Φ115 粗镗(T22)', '车刀片', 'TCMT16T308-KM3215', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('589', 'Φ115 粗镗(T22)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('590', 'Φ115 粗镗(T22)', '滑块', '391.68A-7-125 40T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('591', 'Φ119.7半精镗(T20)', '接柄', 'C8-391.68A-7-080 060D', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('592', 'Φ119.7半精镗(T20)', 'HSK Capto刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('593', 'Φ119.7半精镗(T20)', '车刀片', 'TCMT16T308-KM3215', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('594', 'Φ119.7半精镗(T20)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('595', 'Φ119.7半精镗(T20)', '滑块', '391.68A-7-125 40T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('596', 'Φ18R8铰刀(T79)', '非标硬质合金铰刀', 'D18/100(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('597', 'Φ18R8铰刀(T79)', '液压刀柄', '4299 18，100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('598', 'Φ18R8铰刀(T79)', '冷却导管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('599', 'Φ20H9铰刀(T80)', '非标硬质合金铰刀', 'D20*105(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('600', 'Φ20H9铰刀(T80)', '液压刀柄', '4299 20.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('601', 'Φ20H9铰刀(T80)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('602', 'Φ68精镗(T73)', 'HSK Capto刀柄', 'C6-390.410-1001 10A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('603', 'Φ68精镗(T73)', '整体式精镗刀', 'C6-R825C-AAE 097A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('604', 'Φ68精镗(T73)', '107车刀片', 'TCMT110304-KF3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('605', 'Φ68精镗(T73)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('606', 'Φ68精镗(T73)', '鹰嘴', 'C-AF23STVC 1103', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('607', 'Φ85精镗(T74)', 'HSK Capto刀柄', 'C6-390.410-1001 10A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('608', 'Φ85精镗(T74)', '整体式精镗刀', 'C6-R825C-AAE 055A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('609', 'Φ85精镗(T74)', '车刀片', 'TCMT110304-KF3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('610', 'Φ85精镗(T74)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('611', 'Φ85精镗(T74)', '鹰嘴', 'C-AF23STVC 1103', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('612', 'Φ30精镗(T75)', '高精度液压夹头', '930-HA10-HD-25-106', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('613', 'Φ30精镗(T75)', '车刀片', 'TCMT06T104-KF3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('614', 'Φ30精镗(T75)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('615', 'Φ30精镗(T75)', '鹰嘴', 'A-AF11STVC 0671', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('616', 'Φ30精镗(T75)', '精镗杆', 'A25-R825A-AB146-RA', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('617', 'Φ120反精镗刀(T30)', '精镗头', 'R331103', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('618', 'Φ120反精镗刀(T30)', '车刀片', 'TCMT110304-KF3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('619', 'Φ120反精镗刀(T30)', 'HSK Capto刀柄', 'C8-390.410-100 120A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('620', 'Φ120反精镗刀(T30)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('621', 'Φ120反精镗刀(T30)', '接柄', '890 450232R57661', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('622', 'Φ20铣刀（立）(T53)', '立铣刀', '4736.120.100(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('623', 'Φ20铣刀（立）(T53)', '热胀刀柄', 'HSK100A 20.00', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('624', 'Φ20铣刀（立）(T53)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('625', 'D63 精铣(T76)', '方肩铣刀（7刃）', 'R220.96-0063-08-7A-27', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('626', 'D63 精铣(T76)', '刀片', 'XNEX080608TR-M13.MK1500', '', '7', '个');
INSERT INTO `daojulingbujian` VALUES ('627', 'D63 精铣(T76)', 'HSKA100铣刀刀柄', 'E9306Y552527160', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('628', 'D63 精铣(T76)', 'HSKA100冷却液管', '20E9306', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('629', 'Φ10.4 钻头(T38)', '引导钻', '5510 10.4(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('630', 'Φ10.4 钻头(T38)', '热胀刀柄', '4736 112.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('631', 'Φ10.4 钻头(T38)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('632', 'φ13 硬钻(T77)', '整体硬钻', 'D13*D14*168', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('633', 'φ13 硬钻(T77)', '热胀刀柄', 'GM3004736 14.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('634', 'φ13 硬钻(T77)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('635', 'φ11.7 扩孔钻(T41)', '标准合金扩孔钻', '5510-11.7', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('636', 'φ11.7 扩孔钻(T41)', '热胀刀柄', 'GM3004736 12.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('637', 'φ11.7 扩孔钻(T41)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('638', 'D25 铣刀(T132)', '粗铣刀', '2P340-2500-PB1630(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('639', 'D25 铣刀(T132)', '测固刀柄', '391.41020-100 25 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('640', 'D25 铣刀(T132)', '冷却导管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('641', 'Φ28 铰刀(T58)', '非标焊硬质合金铰', 'D28*D25*130', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('642', 'Φ28 铰刀(T58)', '热胀刀柄', 'GM3004736 25.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('643', 'Φ28 铰刀(T58)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('644', 'Φ6.05 硬钻(T59)', '非标整体硬钻', 'D6.05*D8*65', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('645', 'Φ6.05 硬钻(T59)', '热胀刀柄', 'GM3004736 308.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('646', 'Φ6.05 硬钻(T59)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('647', 'Φ6.05 硬钻(T60)', '非标整体硬钻', 'D6.05*D8*108', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('648', 'Φ6.05 硬钻(T60)', '热胀刀柄', 'GM3004736 308.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('649', 'Φ6.05 硬钻(T60)', '冷却管', '4949 24.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('650', 'Φ67 粗镗 (T61)', 'HSK Capto刀柄', 'C6-390.410-1001 10HD', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('651', 'Φ67 粗镗 (T61)', 'Captp缩径接杆', 'C6-391.02-50 080A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('652', 'Φ67 粗镗 (T61)', '接柄', 'C5-391.68A-5-050 044B', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('653', 'Φ67 粗镗 (T61)', '车刀片', 'TCMT16T308-KM3215', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('654', 'Φ67 粗镗 (T61)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('655', 'Φ67 粗镗 (T61)', '滑块', '391.68A-5-070 26T16B', '', '2', '个');
INSERT INTO `daojulingbujian` VALUES ('656', 'Φ32 铣刀(T64)', '高精度液压夹头', '930-HA10-HD-32-110', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('657', 'Φ32 铣刀(T64)', '防震铣刀（4齿）', 'R390D-032A32-11M(看不到）', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('658', 'Φ32 铣刀(T64)', '铣刀片', 'R390-11T308M-KL1020', '', '3', '个');
INSERT INTO `daojulingbujian` VALUES ('659', 'Φ32 铣刀(T64)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('660', 'Φ72 精镗 (T66)', '接柄', 'C6-R825C-AAF 055A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('661', 'Φ72 精镗 (T66)', 'CAPto加长接杆', 'C6-391.01-63 100A', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('662', 'Φ72 精镗 (T66)', 'HSK Capto刀柄', 'C6-390.410-100110HD', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('663', 'Φ72 精镗 (T66)', '车刀片', 'TCMT110304-KF3005', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('664', 'Φ72 精镗 (T66)', '冷却液套管', '5692022-06', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('665', 'Φ72 精镗 (T66)', '鹰嘴', 'C-AF23 STUC 1103', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('666', 'Φ11 硬钻(T88)', '整体硬钻', '5510 11.100看不到', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('667', 'Φ11 硬钻(T88)', '热胀刀柄', '4736 12.100', '', '1', '个');
INSERT INTO `daojulingbujian` VALUES ('668', 'Φ11 硬钻(T88)', '冷却管', '4949 24.100', '', '1', '个');

-- ----------------------------
-- Table structure for `daojulingyong`
-- ----------------------------
DROP TABLE IF EXISTS `daojulingyong`;
CREATE TABLE `daojulingyong` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `chucangdanhao` char(20) NOT NULL,
  `chucangleixing` varchar(20) DEFAULT NULL,
  `lingyongbanzu` varchar(20) DEFAULT NULL,
  `lingyongshebei` varchar(20) DEFAULT NULL,
  `lingyongren` varchar(20) DEFAULT NULL,
  `jiagonggongyi` char(20) DEFAULT NULL,
  `chucangriqi` date DEFAULT NULL,
  `beizhu` tinytext,
  `caozuoyuan` varchar(20) DEFAULT NULL,
  `danjuzhuangtai` int(2) NOT NULL,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `daojuchucang_ix1` (`chucangdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojulingyong
-- ----------------------------
INSERT INTO `daojulingyong` VALUES ('3', 'DJCC_170629001', '领用出仓', '先锋一班', 'OP20', '王先锋', 'GY-1706', '2017-06-29', '这是第一次测试', 'Jack', '1');
INSERT INTO `daojulingyong` VALUES ('5', 'DJCC_170629002', '领用出仓', '先锋一班', 'FMS-1#机', '王先锋', 'GY-1706', '2017-06-29', '6月29日的第2张刀具出仓单', '孙大帐', '1');
INSERT INTO `daojulingyong` VALUES ('6', 'DJCC_170703001', '领用出仓', '先锋一班', 'OP20T238', '李胜利', 'GY_1707', '2017-07-03', '调整后的第一次测试，加工工艺字段改为制件工序、设备字段，删除了部门字段，但是没有存入数据库。', '赵经手', '1');
INSERT INTO `daojulingyong` VALUES ('7', 'DJCC_170704001', '常规领用', '先锋一班', 'FMS-1#机', '11254', 'GY-1707', '2017-07-04', '自动生成单号', '赵经手', '1');
INSERT INTO `daojulingyong` VALUES ('8', 'DJCC_170704002', '常规领用', '先锋一班', '北车床线', '李胜利', 'GY_1707', '2017-07-04', '', '赵经手', '1');
INSERT INTO `daojulingyong` VALUES ('9', 'DJCC_170704003', '常规领用', '先锋一班', 'FMS-2#机', '王先锋', 'GY_1706', '2017-07-04', '', '孙大帐', '1');
INSERT INTO `daojulingyong` VALUES ('10', 'DJCC_170706001', '常规领用', '先锋一班', 'FMS-1#机', '王先锋', 'GY-1707-40', '2017-07-06', '7月5日 测试', '赵经手', '0');
INSERT INTO `daojulingyong` VALUES ('11', 'DJCC_170711001', '常规领用', 'FMS-1#机', '', '赵钱孙', '40序', '2017-07-11', '', '赵经手', '0');
INSERT INTO `daojulingyong` VALUES ('12', 'DJCC_170711002', '常规领用', '先锋一班', 'OP20T40', '钱孙李', 'GY-1707-40序', '2017-07-11', '', '赵经手', '1');
INSERT INTO `daojulingyong` VALUES ('13', 'DJCC_170712001', '常规领用', '胜利二班', '南车床线', '刘大壮', '2209序', '2017-07-12', '正式测试。170712晚测试保存按钮的update语句。', '赵经手', '0');
INSERT INTO `daojulingyong` VALUES ('14', 'DJCC_170712002', '常规领用', '先锋一班', 'FMS-3#机', '大刘壮', '170713002', '2017-07-12', '', '赵经手', '0');
INSERT INTO `daojulingyong` VALUES ('16', 'DJCC_170713001', '常规领用', '80传动箱班', 'FMS-1#机', '刘大壮', '80传动箱-40序', '2017-07-13', '', '赵经手', '0');
INSERT INTO `daojulingyong` VALUES ('17', 'DJCC_170719001', '常规领用', '先锋一班', '南车床线', '121', 'GY170719', '2017-07-19', '0719测试丝锥数量', '赵经手', '1');
INSERT INTO `daojulingyong` VALUES ('18', 'DJCC_170809001', '常规领用', '进口红酒客户即可', 'FMS-2#机', '小小', 'GY-1708', '2017-08-08', '', '赵经手', '1');

-- ----------------------------
-- Table structure for `daojulingyongmingxi`
-- ----------------------------
DROP TABLE IF EXISTS `daojulingyongmingxi`;
CREATE TABLE `daojulingyongmingxi` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `chucangdanhao` char(20) NOT NULL,
  `daojuleixing` varchar(50) NOT NULL,
  `daojuguige` char(20) DEFAULT NULL,
  `changdu` char(10) DEFAULT NULL,
  `daojuid` char(20) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `jiliangdanwei` varchar(10) DEFAULT '套',
  `weizhibiaoshi` char(10) DEFAULT 'M',
  `jichuangbianma` char(20) DEFAULT NULL,
  `daotaohao` char(20) DEFAULT NULL,
  `beizhu` tinytext,
  PRIMARY KEY (`xh`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojulingyongmingxi
-- ----------------------------
INSERT INTO `daojulingyongmingxi` VALUES ('80', 'DJCC_170703001', '丝锥', 'M10×1', '50', 'SZ-0015', '1', '套', 'M', 'FMS-3#机', 'T05', '新增了长度字段');
INSERT INTO `daojulingyongmingxi` VALUES ('84', 'DJCC_170711001', '硬钻', 'Φ8.65', '50', 'YZ-0001', '1', '套', 'M', 'FMS-2#机', 'T02', '');
INSERT INTO `daojulingyongmingxi` VALUES ('86', 'DJCC_170629002', '钻头', 'Φ10.4', '200', 'ZT-0001', '1', '套', 'M', 'FMS-1#机', 'T02', '');
INSERT INTO `daojulingyongmingxi` VALUES ('87', 'DJCC_170629002', '倒角铣刀', 'Φ50', '200', 'DJX-0001', '1', '套', 'M', 'FMS-1#机', 'T04', '');
INSERT INTO `daojulingyongmingxi` VALUES ('89', 'DJCC_170629001', '硬钻', 'Φ27', '100', 'YZ-0002', '1', '套', 'M', '南车床线', 'T09', '2');
INSERT INTO `daojulingyongmingxi` VALUES ('90', 'DJCC_170629001', '硬钻', 'Φ10.8', '150', 'YZ-0004', '1', '套', 'M', 'OP20T01', 'T30', '');
INSERT INTO `daojulingyongmingxi` VALUES ('91', 'DJCC_170629001', '螺纹铣刀', 'M16*1.5', '200', 'LWXD-0003', '1', '套', 'M', 'OP20T238', 'T24', '这是刀具备注');
INSERT INTO `daojulingyongmingxi` VALUES ('92', 'DJCC_170704003', '枪钻', 'Φ20H9', '50', 'QZ-0001', '1', '套', 'M', 'FMS-2#机', 'T01', '');
INSERT INTO `daojulingyongmingxi` VALUES ('93', 'DJCC_170704003', '丝锥', 'M10×1', '100', 'SZ-0001', '1', '套', 'M', 'FMS-2#机', 'T10', '');
INSERT INTO `daojulingyongmingxi` VALUES ('94', 'DJCC_170704002', '阶梯钻', 'Φ29', '150', 'JTZ-0001', '1', '套', 'M', '北车床线', 'T17', '');
INSERT INTO `daojulingyongmingxi` VALUES ('95', 'DJCC_170704002', '阶梯钻', 'Φ17', '150', 'JTZ-0008', '1', '套', 'M', '北车床线', 'T18', '');
INSERT INTO `daojulingyongmingxi` VALUES ('96', 'DJCC_170704002', '精铣', 'D80', '', 'JX-0002', '1', '套', 'M', '北车床线', 'T15', '');
INSERT INTO `daojulingyongmingxi` VALUES ('97', 'DJCC_170704002', '玉米铣', 'Φ100', '', 'YMX-0001', '1', '套', 'M', '北车床线', 'T12', '');
INSERT INTO `daojulingyongmingxi` VALUES ('105', 'DJCC_170711002', '粗镗', 'Φ115', '100', 'CT-0011', '1', '套', 'M', 'OP20T40', 'T08', '可用少1');
INSERT INTO `daojulingyongmingxi` VALUES ('106', 'DJCC_170706001', 'U钻', 'Φ25', '100', 'UZ-0001', '1', '套', 'M', 'FMS-1#机', 'T01', '');
INSERT INTO `daojulingyongmingxi` VALUES ('107', 'DJCC_170706001', 'U钻', 'Φ20.5', '150', 'UZ-0002', '1', '套', 'M', 'FMS-1#机', 'T02', '');
INSERT INTO `daojulingyongmingxi` VALUES ('108', 'DJCC_170706001', 'U钻', 'φ37', '200', 'UZ-0003', '1', '套', 'M', 'FMS-1#机', 'T03', '');
INSERT INTO `daojulingyongmingxi` VALUES ('109', 'DJCC_170704001', '槽铣刀', 'Φ20.2*3.5', '150', 'CXD-0001', '1', '套', 'M', 'FMS-3#机', 'T10', '');
INSERT INTO `daojulingyongmingxi` VALUES ('110', 'DJCC_170704001', '锪孔钻', 'Φ17.7', '100', 'HKZ-0001', '1', '套', 'M', 'FMS-1#机', 'T02', '');
INSERT INTO `daojulingyongmingxi` VALUES ('111', 'DJCC_170704001', '螺纹铣刀', 'M39', '150', 'LWXD-0001', '1', '套', 'M', 'FMS-1#机', 'T02', '');
INSERT INTO `daojulingyongmingxi` VALUES ('112', 'DJCC_170704001', '镗刀', 'Φ31.5', '150', 'TD-0001', '1', '套', 'M', 'FMS-1#机', 'T02', '');
INSERT INTO `daojulingyongmingxi` VALUES ('113', 'DJCC_170719001', '丝锥', 'M8', '100', 'SZ-0002', '1', '套', 'M', 'FMS-1#机', 'T02', '');
INSERT INTO `daojulingyongmingxi` VALUES ('134', 'DJCC_170712002', '铣槽刀', 'Φ63', '100', 'XCD-0001', '1', '套', 'M', 'FMS-3#机', 'T01', '');
INSERT INTO `daojulingyongmingxi` VALUES ('135', 'DJCC_170712002', '宽精铣刀', 'Φ250*15', '50', 'KJXD-0001', '1', '套', 'M', 'FMS-1#机', 'T01', '');
INSERT INTO `daojulingyongmingxi` VALUES ('136', 'DJCC_170712001', '铣刀', 'Φ100', '50', 'XD-0002', '1', '套', 'M', '南车床线', 'T03', '');
INSERT INTO `daojulingyongmingxi` VALUES ('138', 'DJCC_170713001', '精镗刀', 'Φ121', '100', 'JTD-0001', '1', '套', 'M', 'FMS-1#机', 'T07', '');
INSERT INTO `daojulingyongmingxi` VALUES ('140', 'DJCC_170809001', '玉米铣', 'Φ44', '50', 'YMX-0002', '1', '套', 'M', 'FMS-2#机', 'T16', '');

-- ----------------------------
-- Table structure for `daojuliushui`
-- ----------------------------
DROP TABLE IF EXISTS `daojuliushui`;
CREATE TABLE `daojuliushui` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) DEFAULT NULL,
  `dhlx` varchar(10) DEFAULT NULL,
  `djlx` varchar(20) DEFAULT NULL,
  `djgg` char(20) DEFAULT NULL,
  `djid` char(20) DEFAULT NULL,
  `zsl` int(2) DEFAULT NULL,
  `fsl` int(2) DEFAULT NULL,
  `wzbm` varchar(20) DEFAULT NULL,
  `jtwz` varchar(20) DEFAULT NULL,
  `czsj` datetime DEFAULT NULL,
  `jbr` varchar(10) DEFAULT NULL,
  `bz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojuliushui
-- ----------------------------
INSERT INTO `daojuliushui` VALUES ('2', 'DJCC_170703001', '常规领用', '丝锥', 'M10×1', 'SZ-0015', '0', '1', 'FMS-3#机', 'T05', '2017-07-03 00:00:00', '赵经手', '新增了长度字段');
INSERT INTO `daojuliushui` VALUES ('3', 'DJCC_170629002', '常规领用', '钻头', 'Φ10.4', 'ZT-0001', '0', '1', 'FMS-1#机', 'T02', '2017-06-29 00:00:00', '孙大帐', '');
INSERT INTO `daojuliushui` VALUES ('4', 'DJCC_170629002', '常规领用', '倒角铣刀', 'Φ50', 'DJX-0001', '0', '1', 'FMS-1#机', 'T04', '2017-06-29 00:00:00', '孙大帐', '');
INSERT INTO `daojuliushui` VALUES ('6', 'DJCC_170629001', '常规领用', '硬钻', 'Φ27', 'YZ-0002', '0', '1', '南车床线', 'T09', '2017-06-29 00:00:00', 'Jack', '2');
INSERT INTO `daojuliushui` VALUES ('7', 'DJCC_170629001', '常规领用', '硬钻', 'Φ10.8', 'YZ-0004', '0', '1', 'OP20T01', 'T30', '2017-06-29 00:00:00', 'Jack', '');
INSERT INTO `daojuliushui` VALUES ('8', 'DJCC_170629001', '常规领用', '螺纹铣刀', 'M16*1.5', 'LWXD-0003', '0', '1', 'OP20T238', 'T24', '2017-06-29 00:00:00', 'Jack', '这是刀具备注');
INSERT INTO `daojuliushui` VALUES ('9', 'DJCC_170704003', '常规领用', '枪钻', 'Φ20H9', 'QZ-0001', '0', '1', 'FMS-2#机', 'T01', '2017-07-04 00:00:00', '孙大帐', '');
INSERT INTO `daojuliushui` VALUES ('10', 'DJCC_170704003', '常规领用', '丝锥', 'M10×1', 'SZ-0001', '0', '1', 'FMS-2#机', 'T10', '2017-07-04 00:00:00', '孙大帐', '');
INSERT INTO `daojuliushui` VALUES ('11', 'DJCC_170704002', '常规领用', '阶梯钻', 'Φ29', 'JTZ-0001', '0', '1', '北车床线', 'T17', '2017-07-04 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('12', 'DJCC_170704002', '常规领用', '阶梯钻', 'Φ17', 'JTZ-0008', '0', '1', '北车床线', 'T18', '2017-07-04 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('13', 'DJCC_170704002', '常规领用', '精铣', 'D80', 'JX-0002', '0', '1', '北车床线', 'T15', '2017-07-04 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('14', 'DJCC_170704002', '常规领用', '玉米铣', 'Φ100', 'YMX-0001', '0', '1', '北车床线', 'T12', '2017-07-04 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('15', 'DJCC_170711002', '常规领用', '粗镗', 'Φ115', 'CT-0011', '0', '1', 'OP20T40', 'T08', '2017-07-11 00:00:00', '赵经手', '可用少1');
INSERT INTO `daojuliushui` VALUES ('16', 'DJCC_170704001', '常规领用', '槽铣刀', 'Φ20.2*3.5', 'CXD-0001', '0', '1', 'FMS-3#机', 'T10', '2017-07-04 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('17', 'DJCC_170704001', '常规领用', '锪孔钻', 'Φ17.7', 'HKZ-0001', '0', '1', 'FMS-1#机', 'T02', '2017-07-04 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('18', 'DJCC_170704001', '常规领用', '螺纹铣刀', 'M39', 'LWXD-0001', '0', '1', 'FMS-1#机', 'T02', '2017-07-04 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('19', 'DJCC_170704001', '常规领用', '镗刀', 'Φ31.5', 'TD-0001', '0', '1', 'FMS-1#机', 'T02', '2017-07-04 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('20', 'DJCC_170719001', '常规领用', '丝锥', 'M8', 'SZ-0002', '0', '1', 'FMS-1#机', 'T02', '2017-07-19 09:48:35', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('21', 'DJWJ_170706001', '刀具外借', '铣刀（立）', 'Φ20', 'XD-0001', '0', '1', '工艺部', '工艺大神', '2017-07-06 00:00:00', '钱刀管', '');
INSERT INTO `daojuliushui` VALUES ('22', 'DJWJ_170706001', '刀具外借', '直槽钻', 'φ6.8', 'ZCZ-0003', '0', '1', '工艺部', '工艺大神', '2017-07-06 00:00:00', '钱刀管', '');
INSERT INTO `daojuliushui` VALUES ('23', 'DJWJ_170704002', '刀具外借', '中心钻', 'φ16', 'ZXZ-0001', '0', '1', '工艺部', '小工', '2017-07-04 00:00:00', '赵经办', '');
INSERT INTO `daojuliushui` VALUES ('24', 'DJWJ_170704002', '刀具外借', '玉米铣', 'Φ100', 'YMX-0001', '0', '1', '工艺部', '小工', '2017-07-04 00:00:00', '赵经办', '');
INSERT INTO `daojuliushui` VALUES ('25', 'DJWJ_170704002', '刀具外借', '硬钻', 'Φ8.65', 'YZ-0001', '0', '1', '工艺部', '小工', '2017-07-04 00:00:00', '赵经办', '');
INSERT INTO `daojuliushui` VALUES ('26', 'DJGH_170705002', '刀具更换', '钻头', 'Φ10.4', 'ZT-0001', '1', '0', '', '', '2017-07-05 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('27', 'DJGH_170705002', '刀具更换', '钻头', 'Φ6', 'ZT-0010', '0', '1', 'FMS-2#机', '', '2017-07-05 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('39', 'DJCC_170809001', '常规领用', '玉米铣', 'Φ44', 'YMX-0002', '0', '1', 'FMS-2#机', 'T16', '2017-08-08 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('29', 'DJTH_170709003', '刀具退还', '中心钻', 'φ16', 'ZXZ-0001', '1', '0', 'kardex-1#柜', 'L01', '2017-07-09 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('30', 'DJTH_170709003', '刀具退还', '枪钻', 'Φ20H9', 'QZ-0001', '1', '0', 'kardex-1#柜', 'L02', '2017-07-09 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('31', 'DJTH_170709003', '刀具退还', '扩孔钻', 'φ11.7', 'KKZ-0001', '1', '0', 'kardex-1#柜', 'L02', '2017-07-09 00:00:00', '赵经手', '');
INSERT INTO `daojuliushui` VALUES ('32', null, '刀具装配', '钻头', 'Φ10.4', 'ZT-0014', '1', '0', null, null, '2017-07-30 22:18:22', null, null);
INSERT INTO `daojuliushui` VALUES ('33', null, '刀具装配', '中心钻', 'φ16', 'ZXZ-0002', '1', '0', 'Kardex 2#柜', '08层', '2017-07-30 23:26:16', null, null);
INSERT INTO `daojuliushui` VALUES ('35', null, '刀具装配', '中心钻', 'φ16', 'ZXZ-0003', '1', '0', 'Kardex 2#柜', '09层', '2017-07-30 23:34:04', null, null);
INSERT INTO `daojuliushui` VALUES ('36', null, '刀具装配', '中心钻', 'φ16', 'ZXZ-0004', '1', '0', 'Kardex 1#柜', '02层', '2017-07-30 23:40:28', null, null);
INSERT INTO `daojuliushui` VALUES ('37', null, '刀具装配', '钻头', 'Φ10.4', 'ZT-0014', '1', '0', 'Kardex 1#柜', '08层', '2017-07-31 00:13:59', null, null);
INSERT INTO `daojuliushui` VALUES ('38', null, '刀具装配', '钻头', 'Φ10.4', 'ZT-0015', '1', '0', 'Kardex 2#柜', '01层', '2017-07-31 00:21:36', null, null);

-- ----------------------------
-- Table structure for `daojutemp`
-- ----------------------------
DROP TABLE IF EXISTS `daojutemp`;
CREATE TABLE `daojutemp` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `daojuid` char(20) NOT NULL,
  `daojuxinghao` char(20) NOT NULL,
  `daojuguige` char(20) NOT NULL,
  `daojuleixing` varchar(20) NOT NULL,
  `daojushouming` int(10) NOT NULL,
  `weizhi` char(20) NOT NULL,
  `cengshu` char(20) NOT NULL,
  `weizhibiaoshi` char(4) NOT NULL,
  `type` char(20) NOT NULL,
  `kcsl` int(10) NOT NULL,
  `zuixiaokucun` int(10) DEFAULT NULL,
  `zuidakucun` int(10) DEFAULT NULL,
  `beizhu` tinytext,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `daojutemp_ix1` (`daojuid`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojutemp
-- ----------------------------
INSERT INTO `daojutemp` VALUES ('1', 'ZT-0001', 'Φ10.4 钻头(T38)', 'Φ10.4', '钻头', '100', 'FMS-1#机', 'T10', 'M', '刀具', '1', '1', '1', 'T39');
INSERT INTO `daojutemp` VALUES ('2', 'ZT-0002', 'φ20.5 钻头(T52)', 'φ20.5', '钻头', '20', 'OP20T01', 'T13', 'M', '刀具', '1', '1', '1', 'T53');
INSERT INTO `daojutemp` VALUES ('3', 'ZT-0003', 'Φ22 钻头(T49)', 'Φ22', '钻头', '180', 'OP20T01', 'T03', 'M', '刀具', '1', '1', '1', 'T50');
INSERT INTO `daojutemp` VALUES ('4', 'ZT-0004', 'φ14.5 钻头(T202)', 'φ14.5', '钻头', '200', 'FMS-1#机', 'T20', 'M', '刀具', '1', '1', '1', 'T203');
INSERT INTO `daojutemp` VALUES ('5', 'ZT-0005', 'φ10.5 钻头(T57)', 'φ10.5', '钻头', '200', 'FMS-1#机', 'T01', 'M', '刀具', '1', '1', '1', 'T58');
INSERT INTO `daojutemp` VALUES ('6', 'ZT-0006', 'Φ26 钻头(T118)', 'Φ26', '钻头', '30', 'FMS-1#机', 'T11', 'M', '刀具', '1', '1', '1', 'T119');
INSERT INTO `daojutemp` VALUES ('7', 'ZT-0007', 'Φ10.7 钻头(T140)', 'Φ10.7', '钻头', '88', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T141');
INSERT INTO `daojutemp` VALUES ('8', 'ZT-0008', 'Φ10.7 钻头(T141)', 'Φ10.7', '钻头', '120', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T142');
INSERT INTO `daojutemp` VALUES ('9', 'ZT-0009', 'Φ6 钻头(T148)', 'Φ6', '钻头', '50', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T149');
INSERT INTO `daojutemp` VALUES ('10', 'ZT-0010', 'Φ12.5 钻头(T144)', 'Φ12.5', '钻头', '110', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T145');
INSERT INTO `daojutemp` VALUES ('11', 'ZT-0011', 'Φ15.7 钻头(T149)', 'Φ15.7', '钻头', '20', 'FMS-1#机', 'T19', 'M', '刀具', '1', '1', '1', 'T150');
INSERT INTO `daojutemp` VALUES ('12', 'ZT-0012', 'φ20.5 钻头(T116)', 'φ20.5', '钻头', '70', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T117');
INSERT INTO `daojutemp` VALUES ('13', 'ZT-0013', 'Φ26 钻(T111)', 'Φ26', '钻头', '30', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T112');
INSERT INTO `daojutemp` VALUES ('14', 'ZXZ-0001', 'φ16 中心钻(T117)', 'φ16', '中心钻', '200', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T118');
INSERT INTO `daojutemp` VALUES ('15', 'ZCZ-0001', 'Φ10.4 直槽钻(T39)', 'Φ10.4', '直槽钻', '200', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T40');
INSERT INTO `daojutemp` VALUES ('16', 'ZCZ-0002', 'Φ18.5 直槽钻(T59)', 'Φ18.5', '直槽钻', '200', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T60');
INSERT INTO `daojutemp` VALUES ('17', 'ZCZ-0003', 'φ6.8 直槽钻(T79)', 'φ6.8', '直槽钻', '200', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T80');
INSERT INTO `daojutemp` VALUES ('18', 'ZCZ-0004', 'φ17.5 直槽钻(T81)', 'φ17.5', '直槽钻', '200', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T82');
INSERT INTO `daojutemp` VALUES ('19', 'YMX-0001', 'Φ100玉米铣(T1055)', 'Φ100', '玉米铣', '200', 'FMS-1#机', 'T07', 'M', '刀具', '1', '1', '1', 'T1056');
INSERT INTO `daojutemp` VALUES ('20', 'YMX-0002', 'Φ44玉米铣(T1055)', 'Φ44', '玉米铣', '200', 'kardex 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1056');
INSERT INTO `daojutemp` VALUES ('21', 'YMX-0003', 'φ32玉米铣T1104', 'φ32', '玉米铣', '200', 'kardex 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1105');
INSERT INTO `daojutemp` VALUES ('22', 'YZ-0001', 'Φ8.65 硬钻(T1028)', 'Φ8.65', '硬钻', '200', 'kardex 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1029');
INSERT INTO `daojutemp` VALUES ('23', 'YZ-0002', 'Φ27 硬钻(T1047)', 'Φ27', '硬钻', '200', '南车床线', 'T09', 'M', '刀具', '1', '1', '1', 'T1048');
INSERT INTO `daojutemp` VALUES ('24', 'YZ-0003', 'Φ12硬钻（T1009)', 'Φ12', '硬钻', '200', 'kardex 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1010');
INSERT INTO `daojutemp` VALUES ('25', 'YZ-0004', 'Φ10.8硬钻（T1010)', 'Φ10.8', '硬钻', '200', 'OP20T01', 'T30', 'M', '刀具', '1', '1', '1', 'T1011');
INSERT INTO `daojutemp` VALUES ('26', 'YZ-0005', 'φ13 硬钻(T131)', 'φ13', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T131');
INSERT INTO `daojutemp` VALUES ('27', 'YZ-0006', 'φ6.8 硬钻(T116)', 'φ6.8', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T117');
INSERT INTO `daojutemp` VALUES ('28', 'YZ-0007', 'φ19.7硬钻(T119)', 'φ19.7', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T120');
INSERT INTO `daojutemp` VALUES ('29', 'YZ-0008', 'φ8.7 硬钻(T35)', 'φ8.7', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T36');
INSERT INTO `daojutemp` VALUES ('30', 'YZ-0009', 'φ13 硬钻(T77)', 'φ13', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T78');
INSERT INTO `daojutemp` VALUES ('31', 'YZ-0010', 'φ11 硬钻(T40)', 'φ11', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T41');
INSERT INTO `daojutemp` VALUES ('32', 'YZ-0011', 'φ15.7 硬钻(T45)', 'φ15.7', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T46');
INSERT INTO `daojutemp` VALUES ('33', 'YZ-0012', 'φ12.5 硬钻(T46)', 'φ12.5', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T47');
INSERT INTO `daojutemp` VALUES ('34', 'YZ-0013', 'φ10.7 硬钻(T47)', 'φ10.7', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T47');
INSERT INTO `daojutemp` VALUES ('35', 'YZ-0014', 'Φ10.7 硬钻(T49)', 'Φ10.7', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T49');
INSERT INTO `daojutemp` VALUES ('36', 'YZ-0015', 'Φ6.05 硬钻(T59)', 'Φ6.05', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T59');
INSERT INTO `daojutemp` VALUES ('37', 'YZ-0016', 'Φ6.05 硬钻(T60)', 'Φ6.05', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T60');
INSERT INTO `daojutemp` VALUES ('38', 'YZ-0017', 'Φ13 硬钻(T114)', 'Φ13', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T115');
INSERT INTO `daojutemp` VALUES ('39', 'YZ-0018', 'Φ17.5 硬钻(T82)', 'Φ17.5', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T83');
INSERT INTO `daojutemp` VALUES ('40', 'YZ-0019', 'Φ8.7 硬钻(T86)', 'Φ8.7', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T87');
INSERT INTO `daojutemp` VALUES ('41', 'YZ-0020', 'Φ11 硬钻(T88)', 'Φ11', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T89');
INSERT INTO `daojutemp` VALUES ('42', 'YZ-0021', 'Φ11.7 硬钻(T89)', 'Φ11.7', '硬钻', '200', 'kardex 1号柜', '03层', 'S', '刀具', '1', '1', '1', 'T90');
INSERT INTO `daojutemp` VALUES ('43', 'YZ-0022', 'Φ13 硬钻(T90)', 'Φ13', '硬钻', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T91');
INSERT INTO `daojutemp` VALUES ('44', 'XD-0001', 'Φ20铣刀（立）(T53)', 'Φ20', '铣刀（立）', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T54');
INSERT INTO `daojutemp` VALUES ('45', 'XD-0002', 'Φ100 铣刀(T1001)', 'Φ100', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1002');
INSERT INTO `daojutemp` VALUES ('46', 'XD-0003', 'Φ100 铣刀(T1009)', 'Φ100', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1010');
INSERT INTO `daojutemp` VALUES ('47', 'XD-0004', 'Φ84 铣刀(T1015)', 'Φ84', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1016');
INSERT INTO `daojutemp` VALUES ('48', 'XD-0005', 'Φ80 铣刀（T1035）', 'Φ80', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1037');
INSERT INTO `daojutemp` VALUES ('49', 'XD-0006', 'Φ50铣刀(T1054)', 'Φ50', '铣刀', '200', '北车床线', 'T15', 'M', '刀具', '1', '1', '1', 'T1055');
INSERT INTO `daojutemp` VALUES ('50', 'XD-0007', 'Φ100铣刀(T1002)', 'Φ100', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1003');
INSERT INTO `daojutemp` VALUES ('51', 'XD-0008', 'Φ25铣刀(T1017)', 'Φ25', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1018');
INSERT INTO `daojutemp` VALUES ('52', 'XD-0009', 'Φ100铣刀(T1028)', 'Φ100', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1029');
INSERT INTO `daojutemp` VALUES ('53', 'XD-0010', 'Φ80铣刀(T1058)', 'Φ80', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1059');
INSERT INTO `daojutemp` VALUES ('54', 'XD-0011', 'D80 铣刀(T185)', 'D80', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T186');
INSERT INTO `daojutemp` VALUES ('55', 'XD-0012', 'D63 铣刀(T101)', 'D63', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T102');
INSERT INTO `daojutemp` VALUES ('56', 'XD-0013', 'Φ30 铣刀(T102)', 'Φ30', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T103');
INSERT INTO `daojutemp` VALUES ('57', 'XD-0014', 'D25 铣刀(T132)', 'D25', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T133');
INSERT INTO `daojutemp` VALUES ('58', 'XD-0015', 'φ20 铣刀(T137)', 'φ20', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T138');
INSERT INTO `daojutemp` VALUES ('59', 'XD-0016', 'Φ32 铣刀(T64)', 'Φ32', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T65');
INSERT INTO `daojutemp` VALUES ('60', 'XD-0017', 'Φ40 铣刀(T130)', 'Φ40', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T131');
INSERT INTO `daojutemp` VALUES ('61', 'XD-0018', 'D125 铣刀(T20)', 'D125', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T21');
INSERT INTO `daojutemp` VALUES ('62', 'XD-0019', 'Φ20 铣刀(T50)', 'Φ20', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T51');
INSERT INTO `daojutemp` VALUES ('63', 'XD-0020', 'Φ34 铣刀(T120)', 'Φ34', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T121');
INSERT INTO `daojutemp` VALUES ('64', 'XD-0021', 'D63/C30 铣刀（T169)', 'D63/C30', '铣刀', '200', 'kardex 1号柜', '04层', 'S', '刀具', '1', '1', '1', 'T171');
INSERT INTO `daojutemp` VALUES ('65', 'XCD-0001', 'Φ63 铣槽刀(T78)', 'Φ63', '铣槽刀', '200', 'kardex 2号柜', '04层', 'S', '刀具', '1', '1', '1', 'T79');
INSERT INTO `daojutemp` VALUES ('66', 'TD-0001', 'Φ31.5 镗刀(T1032)', 'Φ31.5', '镗刀', '200', 'FMS-1#机', 'T06', 'M', '刀具', '1', '1', '1', 'T1033');
INSERT INTO `daojutemp` VALUES ('67', 'TD-0002', 'Φ15镗刀（T1008)', 'Φ15', '镗刀', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1009');
INSERT INTO `daojutemp` VALUES ('68', 'TD-0003', 'Φ12 镗刀(T1013)', 'Φ12', '镗刀', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1014');
INSERT INTO `daojutemp` VALUES ('69', 'TD-0004', 'Φ42 镗刀(T1021)', 'Φ42', '镗刀', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1022');
INSERT INTO `daojutemp` VALUES ('70', 'TD-0005', 'Φ20 镗刀(T1023)', 'Φ20', '镗刀', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1024');
INSERT INTO `daojutemp` VALUES ('71', 'TD-0006', 'Φ15镗刀(T1054)', 'Φ15', '镗刀', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1055');
INSERT INTO `daojutemp` VALUES ('72', 'TD-0007', 'φ35.72 镗刀(T177)', 'φ35.72', '镗刀', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T178');
INSERT INTO `daojutemp` VALUES ('73', 'SZ-0001', 'M10×1 丝锥(T1003)', 'M10×1', '丝锥', '200', 'FMS-2#机', 'T10', 'M', '刀具', '1', '1', '1', 'T1004');
INSERT INTO `daojutemp` VALUES ('74', 'SZ-0002', 'M8 丝锥(T1005)', 'M8', '丝锥', '200', 'FMS-1#机', 'T02', 'M', '刀具', '1', '1', '1', 'T1006');
INSERT INTO `daojutemp` VALUES ('75', 'SZ-0003', 'M22x1.5 丝锥(T1011)', 'M22x1.5', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1012');
INSERT INTO `daojutemp` VALUES ('76', 'SZ-0004', 'M12×6H 丝锥（T1013)', 'M12×6H', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1014');
INSERT INTO `daojutemp` VALUES ('77', 'SZ-0005', 'M20 丝锥(T1022)', 'M20', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1023');
INSERT INTO `daojutemp` VALUES ('78', 'SZ-0006', 'M12×1.25 丝锥(T1025)', 'M12×1.25', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1026');
INSERT INTO `daojutemp` VALUES ('79', 'SZ-0007', 'M10x1 丝锥(T1030)', 'M10x1', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1031');
INSERT INTO `daojutemp` VALUES ('80', 'SZ-0008', 'M16x1.5 丝锥(T1038)', 'M16x1.5', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1039');
INSERT INTO `daojutemp` VALUES ('81', 'SZ-0009', 'M10×1.5丝锥(T1113)', 'M10×1.5', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1114');
INSERT INTO `daojutemp` VALUES ('82', 'SZ-0010', 'M16×1.5丝锥（T1005)', 'M16×1.5', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1006');
INSERT INTO `daojutemp` VALUES ('83', 'SZ-0011', 'M12×1.25丝锥（T1011)', 'M12×1.25', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1012');
INSERT INTO `daojutemp` VALUES ('84', 'SZ-0012', 'M10×1.25丝锥(T1016)', 'M10×1.25', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1017');
INSERT INTO `daojutemp` VALUES ('85', 'SZ-0013', 'M22×1.5丝锥(T1019)', 'M22×1.5', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1020');
INSERT INTO `daojutemp` VALUES ('86', 'SZ-0014', 'M8丝锥(T1042)', 'M8', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1043');
INSERT INTO `daojutemp` VALUES ('87', 'SZ-0015', 'M10×1丝锥(T1045)', 'M10×1', '丝锥', '200', 'FMS-3#机', 'T05', 'M', '刀具', '1', '1', '1', 'T1046');
INSERT INTO `daojutemp` VALUES ('88', 'SZ-0016', 'M6丝锥(T1047)', 'M6', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1048');
INSERT INTO `daojutemp` VALUES ('89', 'SZ-0017', 'M18×1.5丝锥(T1049)', 'M18×1.5', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1050');
INSERT INTO `daojutemp` VALUES ('90', 'SZ-0018', 'M22*1.5丝锥(T1101)', 'M22*1.5', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1102');
INSERT INTO `daojutemp` VALUES ('91', 'SZ-0019', 'M8*1.25丝锥(T118)', 'M8*1.25', '丝锥', '200', 'kardex 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T119');
INSERT INTO `daojutemp` VALUES ('92', 'SZ-0020', 'M10*1.25 丝锥(T36)', 'M10*1.25', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T37');
INSERT INTO `daojutemp` VALUES ('93', 'SZ-0021', 'M14*1.5 丝锥(T50)', 'M14*1.5', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T51');
INSERT INTO `daojutemp` VALUES ('94', 'SZ-0022', 'M12*1.25 丝锥(T51)', 'M12*1.25', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T52');
INSERT INTO `daojutemp` VALUES ('95', 'SZ-0023', 'M22*1.5 丝锥(T134)', 'M22*1.5', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T135');
INSERT INTO `daojutemp` VALUES ('96', 'SZ-0024', 'M12*1.5 丝锥(T58)', 'M12*1.5', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T59');
INSERT INTO `daojutemp` VALUES ('97', 'SZ-0025', 'M20*1.5 丝锥(T61)', 'M20*1.5', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T62');
INSERT INTO `daojutemp` VALUES ('98', 'SZ-0026', 'M8*1.25 丝锥(T80)', 'M8*1.25', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T81');
INSERT INTO `daojutemp` VALUES ('99', 'SZ-0027', 'M10*1.25 丝锥(T92)', 'M10*1.25', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T93');
INSERT INTO `daojutemp` VALUES ('100', 'SZ-0028', 'M22*1.5 丝锥(T117)', 'M22*1.5', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T118');
INSERT INTO `daojutemp` VALUES ('101', 'SZ-0029', 'M12*1.25 丝锥(T142)', 'M12*1.25', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T143');
INSERT INTO `daojutemp` VALUES ('102', 'SZ-0030', 'M14*1.5 丝锥(T147)', 'M14*1.5', '丝锥', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T148');
INSERT INTO `daojutemp` VALUES ('103', 'QZ-0001', 'Φ20H9 枪钻(T1046)', 'Φ20H9', '枪钻', '200', 'FMS-2#机', 'T01', 'M', '刀具', '1', '1', '1', 'T1047');
INSERT INTO `daojutemp` VALUES ('104', 'LWXD-0001', 'M39螺纹铣刀（T1103）', 'M39', '螺纹铣刀', '200', 'FMS-1#机', 'T03', 'M', '刀具', '1', '1', '1', 'T1104');
INSERT INTO `daojutemp` VALUES ('105', 'LWXD-0002', 'D16*2 螺纹铣刀(T53)', 'D16*2', '螺纹铣刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T54');
INSERT INTO `daojutemp` VALUES ('106', 'LWXD-0003', 'M16*1.5 螺纹铣刀(T56)', 'M16*1.5', '螺纹铣刀', '200', 'OP20T238', 'T24', 'M', '刀具', '1', '1', '1', 'T57');
INSERT INTO `daojutemp` VALUES ('107', 'LXD-0001', '  Φ12立铣刀 (T1052)', 'Φ13', '立铣刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', '');
INSERT INTO `daojutemp` VALUES ('108', 'LXD-0002', 'Φ16立铣刀(T1056)', 'Φ16', '立铣刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1057');
INSERT INTO `daojutemp` VALUES ('109', 'LXD-0003', 'Φ25 立铣刀(T86)', 'Φ25', '立铣刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T87');
INSERT INTO `daojutemp` VALUES ('110', 'LXD-0004', 'Φ11 立铣刀(T87)', 'Φ11', '立铣刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T88');
INSERT INTO `daojutemp` VALUES ('111', 'KKZ-0001', 'φ11.7 扩孔钻(T41)', 'φ11.7', '扩孔钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T42');
INSERT INTO `daojutemp` VALUES ('112', 'KKZ-0002', 'Φ26.5 扩孔钻(T67)', 'Φ26.5', '扩孔钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T68');
INSERT INTO `daojutemp` VALUES ('113', 'KKZ-0003', 'Φ29.5 扩孔钻(T60)', 'Φ29.5', '扩孔钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T61');
INSERT INTO `daojutemp` VALUES ('114', 'KKZ-0004', 'Φ25 扩孔钻(T1034)', 'Φ25', '扩孔钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1035');
INSERT INTO `daojutemp` VALUES ('115', 'KJXD-0001', 'Φ250*15 宽精铣刀（T225）', 'Φ250*15', '宽精铣刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T227');
INSERT INTO `daojutemp` VALUES ('116', 'KJXD-0002', 'Φ250*15 宽精铣刀（T225)', 'Φ250*15', '宽精铣刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T227');
INSERT INTO `daojutemp` VALUES ('117', 'JX-0001', 'D63 精铣(T76)', 'D63', '精铣', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T77');
INSERT INTO `daojutemp` VALUES ('118', 'JX-0002', 'D80 精铣(T201)', 'D80', '精铣', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T202');
INSERT INTO `daojutemp` VALUES ('119', 'JX-0003', 'D80 精铣(T199)', 'D80', '精铣', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T200');
INSERT INTO `daojutemp` VALUES ('120', 'JX-0004', 'D25 精铣(T110)', 'D25', '精铣', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T111');
INSERT INTO `daojutemp` VALUES ('121', 'JTD-0001', 'Φ120 精镗刀', 'Φ121', '精镗刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', '');
INSERT INTO `daojutemp` VALUES ('122', 'JTD-0002', 'Φ32 精镗(T1033)', 'Φ32', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1034');
INSERT INTO `daojutemp` VALUES ('123', 'JTD-0003', 'Φ15R8 精镗(T1040)', 'Φ15R8', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1041');
INSERT INTO `daojutemp` VALUES ('124', 'JTD-0004', 'Φ15F9 精镗(T1041)', 'Φ15F9', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1042');
INSERT INTO `daojutemp` VALUES ('125', 'JTD-0005', 'Φ18F9 精镗(T1044)', 'Φ18F9', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1045');
INSERT INTO `daojutemp` VALUES ('126', 'JTD-0006', 'Φ30精镗(T1049)', 'Φ30', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1050');
INSERT INTO `daojutemp` VALUES ('127', 'JTD-0007', 'Φ110/Φ130精镗(T1050)', 'Φ110/Φ130', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1051');
INSERT INTO `daojutemp` VALUES ('128', 'JTD-0008', 'Φ120精镗(T1051)', 'Φ120', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1052');
INSERT INTO `daojutemp` VALUES ('129', 'JTD-0009', 'Φ38精镗(T1053)', 'Φ38', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1054');
INSERT INTO `daojutemp` VALUES ('130', 'JTD-0010', 'Φ130精镗(T1057)', 'Φ130', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1058');
INSERT INTO `daojutemp` VALUES ('131', 'JTD-0011', 'Φ120精镗(T1056)', 'Φ120', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1057');
INSERT INTO `daojutemp` VALUES ('132', 'JTD-0012', 'Φ68精镗(T73)', 'Φ68', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T74');
INSERT INTO `daojutemp` VALUES ('133', 'JTD-0013', 'Φ85精镗(T74)', 'Φ85', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T75');
INSERT INTO `daojutemp` VALUES ('134', 'JTD-0014', 'Φ30精镗(T75)', 'Φ30', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T76');
INSERT INTO `daojutemp` VALUES ('135', 'JTD-0015', 'Φ80 精镗 (T37)', 'Φ80', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', '');
INSERT INTO `daojutemp` VALUES ('136', 'JTD-0016', 'Φ72 精镗 (T66)', 'Φ72', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', '');
INSERT INTO `daojutemp` VALUES ('137', 'JTD-0017', 'Φ396 精镗(T13)', 'Φ396', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T14');
INSERT INTO `daojutemp` VALUES ('138', 'JTD-0018', 'Φ190 精镗(T235)', 'Φ190', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T236');
INSERT INTO `daojutemp` VALUES ('139', 'JTD-0019', 'Φ90 精镗(T175)', 'Φ90', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T176');
INSERT INTO `daojutemp` VALUES ('140', 'JTD-0020', 'Φ85 精镗(T176)', 'Φ85', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T177');
INSERT INTO `daojutemp` VALUES ('141', 'JTD-0021', 'Φ30 精镗(T62)', 'Φ30', '精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T63');
INSERT INTO `daojutemp` VALUES ('142', 'JTZ-0001', 'Φ29 阶梯钻(T1031)', 'Φ29', '阶梯钻', '200', '北车床线', 'T17', 'M', '刀具', '1', '1', '1', 'T1032');
INSERT INTO `daojutemp` VALUES ('143', 'JTZ-0002', 'Φ6.8阶梯钻(T1041)', 'Φ6.8', '阶梯钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1042');
INSERT INTO `daojutemp` VALUES ('144', 'JTZ-0003', 'Φ20阶梯钻(T1043)', 'Φ20', '阶梯钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1044');
INSERT INTO `daojutemp` VALUES ('145', 'JTZ-0004', 'Φ9阶梯钻(T1044)', 'Φ9', '阶梯钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1045');
INSERT INTO `daojutemp` VALUES ('146', 'JTZ-0005', 'Φ5阶梯钻(T1046)', 'Φ5', '阶梯钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1047');
INSERT INTO `daojutemp` VALUES ('147', 'JTZ-0006', 'Φ16.5阶梯钻(T1048)', 'Φ16.5', '阶梯钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1049');
INSERT INTO `daojutemp` VALUES ('148', 'JTZ-0007', 'Φ11.8阶梯钻(T1050)', 'Φ11.8', '阶梯钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1051');
INSERT INTO `daojutemp` VALUES ('149', 'JTZ-0008', 'Φ17阶梯钻(T1063)', 'Φ17', '阶梯钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1064');
INSERT INTO `daojutemp` VALUES ('150', 'JD-0001', 'Φ12F9-铰刀 (T1051)', 'Φ12F9-', '铰刀', '200', 'FMS-2#机', 'T04', 'M', '刀具', '1', '1', '1', 'T1052');
INSERT INTO `daojutemp` VALUES ('151', 'JD-0002', 'Φ18R8铰刀(T79)', 'Φ18R8', '铰刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T80');
INSERT INTO `daojutemp` VALUES ('152', 'JD-0003', 'Φ20H9铰刀(T80)', 'Φ20H9', '铰刀', '200', 'FMS-3#机', 'T19', 'M', '刀具', '1', '1', '1', 'T81');
INSERT INTO `daojutemp` VALUES ('153', 'JD-0004', 'Φ12R8 铰刀(T42)', 'Φ12R8', '铰刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T43');
INSERT INTO `daojutemp` VALUES ('154', 'JD-0005', 'Φ16F9 铰刀(T56)', 'Φ16F9', '铰刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T57');
INSERT INTO `daojutemp` VALUES ('155', 'JD-0006', 'Φ28 铰刀(T58)', 'Φ28', '铰刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T59');
INSERT INTO `daojutemp` VALUES ('156', 'JD-0007', 'Φ26.82 铰刀(T68)', 'Φ26.82', '铰刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T69');
INSERT INTO `daojutemp` VALUES ('157', 'JD-0008', 'Φ12R8 铰刀(T93)', 'Φ12R8', '铰刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T94');
INSERT INTO `daojutemp` VALUES ('158', 'JD-0009', 'Φ13.2H7 铰刀(T143)', 'Φ13.2H7', '铰刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T144');
INSERT INTO `daojutemp` VALUES ('159', 'JD-0010', 'Φ16F9 铰刀(T151)', 'Φ16F9', '铰刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T152');
INSERT INTO `daojutemp` VALUES ('160', 'HKZ-0001', 'Φ17.7锪孔钻(T115)', 'Φ17.7', '锪孔钻', '200', 'FMS-1#机', 'T02', 'M', '刀具', '1', '1', '1', 'T116');
INSERT INTO `daojutemp` VALUES ('161', 'FJTD-0001', 'Φ120反精镗刀(T30)', 'Φ120', '反精镗刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T31');
INSERT INTO `daojutemp` VALUES ('162', 'FJTD-0002', 'Φ200 反精镗(T17)', 'Φ200', '反精镗', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T18');
INSERT INTO `daojutemp` VALUES ('163', 'FH-0001', 'Φ17.5/Φ40 反划(T83)', 'Φ17.5/Φ40', '反划', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T84');
INSERT INTO `daojutemp` VALUES ('164', 'DJZ-0001', 'φ12 倒角钻(T71)', 'φ12', '倒角钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T72');
INSERT INTO `daojutemp` VALUES ('165', 'DJZ-0002', 'Φ21-Φ35 倒角钻(T52)', 'Φ21-Φ35', '倒角钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T53');
INSERT INTO `daojutemp` VALUES ('166', 'DJZ-0003', 'φ20 倒角钻(T200)', 'φ20', '倒角钻', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T201');
INSERT INTO `daojutemp` VALUES ('167', 'DJX-0001', 'Φ50 倒角铣刀(T1020)', 'Φ50', '倒角铣刀', '200', 'FMS-1#机', 'T04', 'M', '刀具', '1', '1', '1', 'T1021');
INSERT INTO `daojutemp` VALUES ('168', 'DJX-0002', 'Φ32.5-48.2倒角铣(T105)', 'Φ32.5-48.2', '倒角铣', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T106');
INSERT INTO `daojutemp` VALUES ('169', 'DJX-0003', 'Φ42 倒角铣(T110)', 'Φ42', '倒角铣', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T111');
INSERT INTO `daojutemp` VALUES ('170', 'DJX-0004', 'D40/C45 倒角铣(T180)', 'D40/C45', '倒角铣', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T181');
INSERT INTO `daojutemp` VALUES ('171', 'DJ-0001', 'D63/C30 倒角刀(T81)', 'D63/C30', '倒角刀', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T82');
INSERT INTO `daojutemp` VALUES ('172', 'DJ-0002', 'Φ21-Φ35倒角(T113)', 'Φ21-Φ35', '倒角', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T114');
INSERT INTO `daojutemp` VALUES ('173', 'CX-0001', 'D80 粗铣(T63)', 'D80', '粗铣', '200', 'kardex 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T64');
INSERT INTO `daojutemp` VALUES ('174', 'CX-0002', 'D25 粗铣(T109)', 'D25', '粗铣', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T110');
INSERT INTO `daojutemp` VALUES ('175', 'CT-0001', 'Φ63 粗镗刀(T103)', 'Φ63', '粗镗刀', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T104');
INSERT INTO `daojutemp` VALUES ('176', 'CT-0002', 'φ75 粗镗刀(T136)', 'φ75', '粗镗刀', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T137');
INSERT INTO `daojutemp` VALUES ('177', 'CT-0003', 'φ180 粗镗刀', 'φ180', '粗镗刀', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', '');
INSERT INTO `daojutemp` VALUES ('178', 'CT-0004', 'φ416 粗镗刀', 'φ416', '粗镗刀', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', '');
INSERT INTO `daojutemp` VALUES ('179', 'CT-0005', 'Φ170 粗镗刀', 'Φ170', '粗镗刀', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', '');
INSERT INTO `daojutemp` VALUES ('180', 'CT-0006', 'Φ37.5粗镗(T1052)', 'Φ37.5', '粗镗', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T1053');
INSERT INTO `daojutemp` VALUES ('181', 'CT-0007', 'Φ101 粗镗(T106)', 'Φ101', '粗镗', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T107');
INSERT INTO `daojutemp` VALUES ('182', 'CT-0008', 'Φ106 粗镗(T107)', 'Φ106', '粗镗', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T108');
INSERT INTO `daojutemp` VALUES ('183', 'CT-0009', 'Φ80 粗镗(T108)', 'Φ80', '粗镗', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T109');
INSERT INTO `daojutemp` VALUES ('184', 'CT-0010', 'Φ29.7 粗镗(T112)', 'Φ29.7', '粗镗', '200', '箱式 1号柜', '01层', 'S', '刀具', '1', '1', '1', 'T113');
INSERT INTO `daojutemp` VALUES ('185', 'CT-0011', 'Φ115 粗镗(T22)', 'Φ115', '粗镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T23');
INSERT INTO `daojutemp` VALUES ('186', 'CT-0012', 'Φ67 粗镗 (T61)', 'Φ67', '粗镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', '');
INSERT INTO `daojutemp` VALUES ('187', 'CT-0013', 'Φ189.5 粗镗(T229)', 'Φ189.5', '粗镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T230');
INSERT INTO `daojutemp` VALUES ('188', 'CT-0014', 'Φ391 粗镗(T8)', 'Φ391', '粗镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T9');
INSERT INTO `daojutemp` VALUES ('189', 'CT-0015', 'φ395.5 粗镗(T2)', 'φ395.5', '粗镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T3');
INSERT INTO `daojutemp` VALUES ('190', 'CT-0016', 'Φ33.7 粗镗(T145)', 'Φ33.7', '粗镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T146');
INSERT INTO `daojutemp` VALUES ('191', 'CT-0017', 'φ88.5 粗镗(T170)', 'φ88.5', '粗镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T171');
INSERT INTO `daojutemp` VALUES ('192', 'CT-0018', 'φ80 粗镗(T172)', 'φ80', '粗镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T173');
INSERT INTO `daojutemp` VALUES ('193', 'CXD-0001', 'Φ20.2*3.5 槽铣刀（T150)', 'Φ20.2*3.5', '槽铣刀', '200', 'FMS-3#机', 'T10', 'M', '刀具', '1', '1', '1', 'T152');
INSERT INTO `daojutemp` VALUES ('194', 'CXD-0002', 'φ63*3.15 槽铣刀(T174)', 'φ63*3.15', '槽铣刀', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T175');
INSERT INTO `daojutemp` VALUES ('195', 'BJT-0001', 'Φ29.5 半精镗(T1048)', 'Φ29.5', '半精镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T1049');
INSERT INTO `daojutemp` VALUES ('196', 'BJT-0002', 'Φ67.7半精镗(T104)', 'Φ67.7', '半精镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T105');
INSERT INTO `daojutemp` VALUES ('197', 'BJT-0003', 'φ84.7半精镗(T109)', 'φ84.7', '半精镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T110');
INSERT INTO `daojutemp` VALUES ('198', 'BJT-0004', 'Φ119.7半精镗(T20)', 'Φ119.7', '半精镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T21');
INSERT INTO `daojutemp` VALUES ('199', 'BJT-0005', 'Φ79.7 半精镗(T34)', 'Φ79.7', '半精镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T35');
INSERT INTO `daojutemp` VALUES ('200', 'BJT-0006', 'Φ27.7 半精镗(T57)', 'Φ27.7', '半精镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T58');
INSERT INTO `daojutemp` VALUES ('201', 'BJT-0007', 'Φ71.7 半精镗(T62)', 'Φ71.7', '半精镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T63');
INSERT INTO `daojutemp` VALUES ('202', 'BJT-0008', 'Φ27.7 半精镗(T119)', 'Φ27.7', '半精镗', '200', '箱式 1号柜', '02层', 'S', '刀具', '1', '1', '1', 'T120');
INSERT INTO `daojutemp` VALUES ('203', 'BJT-0009', 'φ35.4 半精镗(T146)', 'φ35.4', '半精镗', '200', '箱式 2号柜', '01层', 'S', '刀具', '1', '1', '1', 'T147');
INSERT INTO `daojutemp` VALUES ('204', 'BJT-0010', 'φ89.7 半精镗(T171)', 'φ89.7', '半精镗', '200', '箱式 2号柜', '02层', 'S', '刀具', '1', '1', '1', 'T172');
INSERT INTO `daojutemp` VALUES ('205', 'BJT-0011', 'φ84.7 半精镗(T173)', 'φ84.7', '半精镗', '200', '箱式 2号柜', '03层', 'S', '刀具', '1', '1', '1', 'T174');
INSERT INTO `daojutemp` VALUES ('206', 'UZ-0001', 'Φ25U钻(T1057)', 'Φ25', 'U钻', '200', '箱式 2号柜', '04层', 'S', '刀具', '1', '1', '1', 'T1058');
INSERT INTO `daojutemp` VALUES ('207', 'UZ-0002', 'Φ20.5U钻(T1100)', 'Φ20.5', 'U钻', '200', '箱式 2号柜', '05层', 'S', '刀具', '1', '1', '1', 'T1101');
INSERT INTO `daojutemp` VALUES ('208', 'UZ-0003', 'φ37U钻（T1102）', 'φ37', 'U钻', '200', '箱式 2号柜', '06层', 'S', '刀具', '1', '1', '1', 'T1103');
INSERT INTO `daojutemp` VALUES ('209', 'ZXZ-0002', 'φ16 中心钻(T117)', 'φ16', '中心钻', '1000', 'Kardex 2#柜', '08层', 'S', '刀具', '1', null, null, null);
INSERT INTO `daojutemp` VALUES ('211', 'ZXZ-0003', 'φ16 中心钻(T117)', 'φ16', '中心钻', '1000', 'Kardex 2#柜', '09层', 'S', '刀具', '1', null, null, null);
INSERT INTO `daojutemp` VALUES ('212', 'ZXZ-0004', 'φ16 中心钻(T117)', 'φ16', '中心钻', '1000', 'Kardex 1#柜', '02层', 'S', '刀具', '1', null, null, null);
INSERT INTO `daojutemp` VALUES ('213', 'ZT-0014', 'Φ10.4 钻头(T38)', 'Φ10.4', '钻头', '2000', 'Kardex 1#柜', '08层', 'S', '刀具', '1', null, null, null);
INSERT INTO `daojutemp` VALUES ('214', 'ZT-0015', 'Φ10.4 钻头(T38)', 'Φ10.4', '钻头', '2000', 'Kardex 2#柜', '01层', 'S', '刀具', '1', null, null, null);

-- ----------------------------
-- Table structure for `daojutuihuan`
-- ----------------------------
DROP TABLE IF EXISTS `daojutuihuan`;
CREATE TABLE `daojutuihuan` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `thbz` varchar(20) NOT NULL,
  `thr` varchar(10) NOT NULL,
  `thrq` date NOT NULL,
  `thyy` text,
  `jbr` varchar(10) NOT NULL,
  `jbrq` date NOT NULL,
  `djzt` int(2) DEFAULT NULL,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `danhao` (`danhao`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojutuihuan
-- ----------------------------
INSERT INTO `daojutuihuan` VALUES ('12', 'DJTH_170709002', '先锋一班', '大壮', '2017-07-09', '机床常规退还。', '赵经手', '2017-07-09', '1');
INSERT INTO `daojutuihuan` VALUES ('13', 'DJTH_170709003', '先锋一班', '大壮三', '2017-07-09', '机床常规退还。', '赵经手', '2017-07-09', '1');

-- ----------------------------
-- Table structure for `daojutuihuanmingxi`
-- ----------------------------
DROP TABLE IF EXISTS `daojutuihuanmingxi`;
CREATE TABLE `daojutuihuanmingxi` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `djlx` varchar(50) NOT NULL,
  `djgg` char(20) DEFAULT NULL,
  `djcd` char(10) DEFAULT NULL,
  `djid` char(20) NOT NULL,
  `djzt` varchar(20) DEFAULT NULL,
  `sl` int(11) NOT NULL,
  `jcbm` char(20) NOT NULL,
  `dth` char(20) NOT NULL,
  `djgbm` varchar(20) NOT NULL,
  `cfwz` varchar(20) DEFAULT NULL,
  `bz` tinytext,
  PRIMARY KEY (`xh`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojutuihuanmingxi
-- ----------------------------
INSERT INTO `daojutuihuanmingxi` VALUES ('27', 'DJTH_170709003', '中心钻', 'φ16', '50', 'ZXZ-0001', '旧', '1', 'FMS-2#机', 'T01', 'kardex-1#柜', '01层', '');
INSERT INTO `daojutuihuanmingxi` VALUES ('28', 'DJTH_170709003', '枪钻', 'Φ20H9', '50', 'QZ-0001', '旧', '1', '南车床线', 'T07', 'kardex-1#柜', '02层', '');
INSERT INTO `daojutuihuanmingxi` VALUES ('29', 'DJTH_170709003', '扩孔钻', 'φ11.7', '50', 'KKZ-0001', '旧', '1', '南车床线', 'T10', 'kardex-1#柜', '02层', '');

-- ----------------------------
-- Table structure for `daojuwaijie`
-- ----------------------------
DROP TABLE IF EXISTS `daojuwaijie`;
CREATE TABLE `daojuwaijie` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `jydw` varchar(20) NOT NULL,
  `dwld` varchar(20) DEFAULT NULL,
  `jyr` varchar(20) NOT NULL,
  `lxdh` char(20) DEFAULT NULL,
  `jyyy` text NOT NULL,
  `spld` varchar(20) NOT NULL,
  `spyj` text NOT NULL,
  `jbr` varchar(20) NOT NULL,
  `jcsj` date NOT NULL,
  `ydghsj` date DEFAULT NULL,
  `djzt` int(2) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojuwaijie
-- ----------------------------
INSERT INTO `daojuwaijie` VALUES ('2', 'DJWJ_170704001', '工艺部', '李科长', '小工', '13194071234', '170704第一次测试刀具外界单', '周主任', '同意外借。', '赵经办', '2017-07-04', '2017-07-07', '0');
INSERT INTO `daojuwaijie` VALUES ('3', 'DJWJ_170704002', '工艺部', '李科长', '小工', '13194071234', '2条记录', '周主任', '同意外借。', '赵经办', '2017-07-04', '2017-07-07', '1');
INSERT INTO `daojuwaijie` VALUES ('4', 'DJWJ_170705001', '工艺部', '李科长', '小白白', '', '机床调试备用刀具', '周主任', '同意外借，请工艺部及时下达刀具一览表，督促机动科订货', '赵经办', '2017-07-05', '2017-07-08', '0');
INSERT INTO `daojuwaijie` VALUES ('5', 'DJWJ_170706001', '工艺部', '李科长', '工艺大神', '13194071718', '试刀', '周主任', '同意外借。', '钱刀管', '2017-07-06', '2017-07-09', '1');
INSERT INTO `daojuwaijie` VALUES ('7', 'DJWJ_170720001', '工艺部', '李科长', '小A', '13194071234', '0720测试', '周主任', '同意外借。', '赵经办', '2017-07-20', '2017-07-23', '0');

-- ----------------------------
-- Table structure for `daojuwaijiemingxi`
-- ----------------------------
DROP TABLE IF EXISTS `daojuwaijiemingxi`;
CREATE TABLE `daojuwaijiemingxi` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `djlx` char(50) NOT NULL,
  `djgg` char(20) NOT NULL,
  `djid` char(20) NOT NULL,
  `djzt` varchar(20) NOT NULL,
  `sl` int(6) NOT NULL,
  `jcbm` char(20) NOT NULL,
  `dth` char(10) NOT NULL,
  `bz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojuwaijiemingxi
-- ----------------------------
INSERT INTO `daojuwaijiemingxi` VALUES ('1', 'DJWJ_170704001', '钻头', 'Φ10.4', 'ZT-0001', '新', '1', 'FMS-2#机', 'T01', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('2', 'DJWJ_170704001', '扩孔钻', 'φ11.7', 'KKZ-0001', '新', '1', 'FMS-2#机', 'T02', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('3', 'DJWJ_170704001', '反划', 'Φ17.5/Φ40', 'FH-0001', '新', '1', 'FMS-2#机', 'T04', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('19', 'DJWJ_170704002', '硬钻', 'Φ8.65', 'YZ-0001', '新', '1', '北车床线', 'T05', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('18', 'DJWJ_170704002', '玉米铣', 'Φ100', 'YMX-0001', '新', '1', 'FMS-2#机', 'T04', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('17', 'DJWJ_170704002', '中心钻', 'φ16', 'ZXZ-0001', '新', '1', 'OP20T01', 'T02', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('7', 'DJWJ_170705001', '粗铣', 'D80', 'CX-0001', '新', '1', '传动箱自动线OP10', 'T01', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('8', 'DJWJ_170705001', '粗铣', 'D25', 'CX-0002', '新', '1', '传动箱自动线OP20', 'T10', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('13', 'DJWJ_170706001', '直槽钻', 'φ6.8', 'ZCZ-0003', '新', '1', 'FMS-2#机', 'T02', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('12', 'DJWJ_170706001', '铣刀（立）', 'Φ20', 'XD-0001', '新', '1', 'OP20T01', 'T01', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('15', 'DJWJ_170720001', '硬钻', 'Φ12', 'YZ-0003', '新', '1', 'FMS-2#机', 'T16', '');
INSERT INTO `daojuwaijiemingxi` VALUES ('16', 'DJWJ_170720001', '丝锥', 'M10×1', 'SZ-0001', '新', '1', 'FMS-2#机', 'T18', '');

-- ----------------------------
-- Table structure for `jcdaojuku`
-- ----------------------------
DROP TABLE IF EXISTS `jcdaojuku`;
CREATE TABLE `jcdaojuku` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `jichuangbianma` char(20) CHARACTER SET utf8 NOT NULL,
  `daotaohao` char(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jcdaojuku
-- ----------------------------
INSERT INTO `jcdaojuku` VALUES ('1', 'FMS-1#机', 'T01');
INSERT INTO `jcdaojuku` VALUES ('2', 'FMS-1#机', 'T02');
INSERT INTO `jcdaojuku` VALUES ('3', 'FMS-1#机', 'T03');
INSERT INTO `jcdaojuku` VALUES ('4', 'FMS-1#机', 'T04');
INSERT INTO `jcdaojuku` VALUES ('5', 'FMS-1#机', 'T05');
INSERT INTO `jcdaojuku` VALUES ('6', 'FMS-1#机', 'T06');
INSERT INTO `jcdaojuku` VALUES ('7', 'FMS-1#机', 'T07');
INSERT INTO `jcdaojuku` VALUES ('8', 'FMS-1#机', 'T08');
INSERT INTO `jcdaojuku` VALUES ('9', 'FMS-1#机', 'T09');
INSERT INTO `jcdaojuku` VALUES ('10', 'FMS-1#机', 'T10');
INSERT INTO `jcdaojuku` VALUES ('11', 'FMS-1#机', 'T11');
INSERT INTO `jcdaojuku` VALUES ('12', 'FMS-1#机', 'T12');
INSERT INTO `jcdaojuku` VALUES ('13', 'FMS-1#机', 'T13');
INSERT INTO `jcdaojuku` VALUES ('14', 'FMS-1#机', 'T14');
INSERT INTO `jcdaojuku` VALUES ('15', 'FMS-1#机', 'T15');
INSERT INTO `jcdaojuku` VALUES ('16', 'FMS-1#机', 'T16');
INSERT INTO `jcdaojuku` VALUES ('17', 'FMS-1#机', 'T17');
INSERT INTO `jcdaojuku` VALUES ('18', 'FMS-1#机', 'T18');
INSERT INTO `jcdaojuku` VALUES ('19', 'FMS-1#机', 'T19');
INSERT INTO `jcdaojuku` VALUES ('20', 'FMS-1#机', 'T20');
INSERT INTO `jcdaojuku` VALUES ('21', 'FMS-2#机', 'T01');
INSERT INTO `jcdaojuku` VALUES ('22', 'FMS-2#机', 'T02');
INSERT INTO `jcdaojuku` VALUES ('23', 'FMS-2#机', 'T03');
INSERT INTO `jcdaojuku` VALUES ('24', 'FMS-2#机', 'T04');
INSERT INTO `jcdaojuku` VALUES ('25', 'FMS-2#机', 'T05');
INSERT INTO `jcdaojuku` VALUES ('26', 'FMS-2#机', 'T06');
INSERT INTO `jcdaojuku` VALUES ('27', 'FMS-2#机', 'T07');
INSERT INTO `jcdaojuku` VALUES ('28', 'FMS-2#机', 'T08');
INSERT INTO `jcdaojuku` VALUES ('29', 'FMS-2#机', 'T09');
INSERT INTO `jcdaojuku` VALUES ('30', 'FMS-2#机', 'T10');
INSERT INTO `jcdaojuku` VALUES ('31', 'FMS-2#机', 'T11');
INSERT INTO `jcdaojuku` VALUES ('32', 'FMS-2#机', 'T12');
INSERT INTO `jcdaojuku` VALUES ('33', 'FMS-2#机', 'T13');
INSERT INTO `jcdaojuku` VALUES ('34', 'FMS-2#机', 'T14');
INSERT INTO `jcdaojuku` VALUES ('35', 'FMS-2#机', 'T15');
INSERT INTO `jcdaojuku` VALUES ('36', 'FMS-2#机', 'T16');
INSERT INTO `jcdaojuku` VALUES ('37', 'FMS-2#机', 'T17');
INSERT INTO `jcdaojuku` VALUES ('38', 'FMS-2#机', 'T18');
INSERT INTO `jcdaojuku` VALUES ('39', 'FMS-2#机', 'T19');
INSERT INTO `jcdaojuku` VALUES ('40', 'FMS-2#机', 'T20');
INSERT INTO `jcdaojuku` VALUES ('41', 'FMS-3#机', 'T01');
INSERT INTO `jcdaojuku` VALUES ('42', 'FMS-3#机', 'T02');
INSERT INTO `jcdaojuku` VALUES ('43', 'FMS-3#机', 'T03');
INSERT INTO `jcdaojuku` VALUES ('44', 'FMS-3#机', 'T04');
INSERT INTO `jcdaojuku` VALUES ('45', 'FMS-3#机', 'T05');
INSERT INTO `jcdaojuku` VALUES ('46', 'FMS-3#机', 'T06');
INSERT INTO `jcdaojuku` VALUES ('47', 'FMS-3#机', 'T07');
INSERT INTO `jcdaojuku` VALUES ('48', 'FMS-3#机', 'T08');
INSERT INTO `jcdaojuku` VALUES ('49', 'FMS-3#机', 'T09');
INSERT INTO `jcdaojuku` VALUES ('50', 'FMS-3#机', 'T10');
INSERT INTO `jcdaojuku` VALUES ('51', 'FMS-3#机', 'T11');
INSERT INTO `jcdaojuku` VALUES ('52', 'FMS-3#机', 'T12');
INSERT INTO `jcdaojuku` VALUES ('53', 'FMS-3#机', 'T13');
INSERT INTO `jcdaojuku` VALUES ('54', 'FMS-3#机', 'T14');
INSERT INTO `jcdaojuku` VALUES ('55', 'FMS-3#机', 'T15');
INSERT INTO `jcdaojuku` VALUES ('56', 'FMS-3#机', 'T16');
INSERT INTO `jcdaojuku` VALUES ('57', 'FMS-3#机', 'T17');
INSERT INTO `jcdaojuku` VALUES ('58', 'FMS-3#机', 'T18');
INSERT INTO `jcdaojuku` VALUES ('59', 'FMS-3#机', 'T19');
INSERT INTO `jcdaojuku` VALUES ('60', 'FMS-3#机', 'T20');
INSERT INTO `jcdaojuku` VALUES ('61', 'FMS-3#机', 'T21');
INSERT INTO `jcdaojuku` VALUES ('62', 'FMS-4#机', 'T10');
INSERT INTO `jcdaojuku` VALUES ('63', 'FMS-4#机', 'T01');
INSERT INTO `jcdaojuku` VALUES ('64', 'FMS-4#机', 'T02');
INSERT INTO `jcdaojuku` VALUES ('65', 'FMS-4#机', 'T03');
INSERT INTO `jcdaojuku` VALUES ('66', 'FMS-4#机', 'T04');
INSERT INTO `jcdaojuku` VALUES ('67', 'FMS-4#机', 'T05');
INSERT INTO `jcdaojuku` VALUES ('68', 'FMS-4#机', 'T06');
INSERT INTO `jcdaojuku` VALUES ('69', 'FMS-4#机', 'T07');
INSERT INTO `jcdaojuku` VALUES ('70', 'FMS-4#机', 'T08');
INSERT INTO `jcdaojuku` VALUES ('71', 'FMS-4#机', 'T09');
INSERT INTO `jcdaojuku` VALUES ('72', 'FMS-5#机', 'T01');
INSERT INTO `jcdaojuku` VALUES ('73', 'FMS-5#机', 'T02');
INSERT INTO `jcdaojuku` VALUES ('74', 'FMS-5#机', 'T03');
INSERT INTO `jcdaojuku` VALUES ('75', 'FMS-5#机', 'T04');
INSERT INTO `jcdaojuku` VALUES ('76', 'FMS-5#机', 'T05');
INSERT INTO `jcdaojuku` VALUES ('77', 'FMS-5#机', 'T06');
INSERT INTO `jcdaojuku` VALUES ('78', 'FMS-5#机', 'T07');
INSERT INTO `jcdaojuku` VALUES ('79', 'FMS-5#机', 'T08');
INSERT INTO `jcdaojuku` VALUES ('80', 'FMS-5#机', 'T09');
INSERT INTO `jcdaojuku` VALUES ('81', 'FMS-5#机', 'T10');
INSERT INTO `jcdaojuku` VALUES ('82', '南车床线4', 'T01');
INSERT INTO `jcdaojuku` VALUES ('83', '南车床线4', 'T02');
INSERT INTO `jcdaojuku` VALUES ('84', '南车床线4', 'T03');
INSERT INTO `jcdaojuku` VALUES ('85', '南车床线4', 'T04');
INSERT INTO `jcdaojuku` VALUES ('86', '南车床线4', 'T05');
INSERT INTO `jcdaojuku` VALUES ('87', '南车床线5', 'T01');
INSERT INTO `jcdaojuku` VALUES ('88', '南车床线5', 'T02');
INSERT INTO `jcdaojuku` VALUES ('89', '南车床线5', 'T03');
INSERT INTO `jcdaojuku` VALUES ('90', '南车床线5', 'T04');
INSERT INTO `jcdaojuku` VALUES ('91', '南车床线5', 'T05');
INSERT INTO `jcdaojuku` VALUES ('92', '南车床线5', 'T06');

-- ----------------------------
-- Table structure for `jichuang`
-- ----------------------------
DROP TABLE IF EXISTS `jichuang`;
CREATE TABLE `jichuang` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `shengchanxian` char(20) CHARACTER SET utf8 NOT NULL,
  `jichuangbianma` char(20) CHARACTER SET utf8 NOT NULL,
  `jichuangleixing` char(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jichuang
-- ----------------------------
INSERT INTO `jichuang` VALUES ('1', '生产线1', 'FMS-1#机', 'FMS');
INSERT INTO `jichuang` VALUES ('2', '生产线1', 'FMS-2#机', 'FMS');
INSERT INTO `jichuang` VALUES ('3', '生产线1', 'FMS-3#机', 'FMS');
INSERT INTO `jichuang` VALUES ('4', '生产线2', '南车床线', '南车');
INSERT INTO `jichuang` VALUES ('5', '生产线3', '北车床线', '北车');
INSERT INTO `jichuang` VALUES ('6', '生产线4', 'OP20T01', 'OP20');
INSERT INTO `jichuang` VALUES ('7', '生产线4', 'OP20T40', 'OP20');
INSERT INTO `jichuang` VALUES ('8', '生产线5', 'OP20T238', 'OP20');
INSERT INTO `jichuang` VALUES ('9', '生产线2', '南车床线2', '南车');
INSERT INTO `jichuang` VALUES ('10', '生产线4', 'OP20T02', 'OP20');
INSERT INTO `jichuang` VALUES ('11', '生产线4', 'OP20T03', 'OP20');
INSERT INTO `jichuang` VALUES ('12', '生产线2', '南车床线3', '南车');
INSERT INTO `jichuang` VALUES ('13', '生产线4', 'OP20T04', 'OP20');
INSERT INTO `jichuang` VALUES ('14', '生产线1', 'FMS-4#机', 'FMS');
INSERT INTO `jichuang` VALUES ('15', '生产线1', 'FMS-5#机', 'FMS');
INSERT INTO `jichuang` VALUES ('16', '生产线2', '南车床线4', '南车床');
INSERT INTO `jichuang` VALUES ('17', '生产线2', '南车床线5', '南车');

-- ----------------------------
-- Table structure for `jichucanshu`
-- ----------------------------
DROP TABLE IF EXISTS `jichucanshu`;
CREATE TABLE `jichucanshu` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `csm` varchar(50) DEFAULT NULL,
  `csdm` varchar(50) NOT NULL,
  `csz` varchar(100) NOT NULL,
  `ssfm` varchar(50) NOT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=358 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jichucanshu
-- ----------------------------
INSERT INTO `jichucanshu` VALUES ('1', '刀具轴截形刀段数量', 'p1', '5.0000', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('2', '刀具半径实际值R', 'p2', '0.5800', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('3', '刀具长度实际值L', 'p3', '120.0000', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('4', '刀尖圆弧半径R', 'p4', '2.5000', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('5', '刀具主偏角A1', 'p5', '45.0000', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('6', '刀具副偏角A2', 'p6', '15.0000', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('7', '端面跳动', 'p7', '0.0015', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('8', '径向跳动', 'p8', '0.0030', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('9', '当前工件表明粗糙度', 'p9', '10.0000', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('10', '要求工件表面粗糙度', 'p10', '11.0000', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('11', '刀具剩余寿命', 'p12', '100.0000', 'ZT-0001');
INSERT INTO `jichucanshu` VALUES ('12', '刀具轴截形刀段数量', 'p1', '6.0000', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('13', '刀具半径实际值R', 'p2', '1.2500', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('14', '刀具长度实际值L', 'p3', '135.0000', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('15', '刀尖圆弧半径R', 'p4', '3.0000', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('16', '刀具主偏角A2', 'p5', '60.0000', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('17', '刀具副偏角A3', 'p6', '30.0000', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('18', '端面跳动', 'p7', '0.0250', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('19', '径向跳动', 'p8', '0.0680', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('20', '当前工件表明粗糙度', 'p9', '5.2000', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('21', '要求工件表面粗糙度', 'p10', '5.0000', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('22', '刀具剩余寿命', 'p12', '100.0000', 'ZT-0002');
INSERT INTO `jichucanshu` VALUES ('23', '刀具材料牌号', 'jp1', 'YG3X', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('24', '刀具刀段数量', 'jp2', '3', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('25', '刀具原始寿命', 'jp3', '2000', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('26', '寿命报警阈值', 'jp4', '50', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('27', '刀尖圆弧半径R', 'jp5', '2.5', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('28', '圆弧半径上公差', 'jp6', '0.5', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('29', '圆弧半径下公差', 'jp7', '0.5', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('30', '刀具主偏角', 'jp8', '45', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('31', '刀具副偏角', 'jp9', '15', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('32', '刀具标准半径', 'jp10', '0.5', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('33', '半径上公差', 'jp11', '0.05', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('34', '半径下公差', 'jp12', '0.05', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('35', '刀具标准长度', 'jp13', '120', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('36', '长度上公差', 'jp14', '5', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('37', '长度下公差', 'jp15', '5', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('38', '端面跳动范围', 'jp16', '0.0025', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('39', '径向跳动范围', 'jp17', '0.0025', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('40', '刀具轴截形刀段数量', 'cp1', '3', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('41', '当前工件表面粗糙度', 'cp2', '80um', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('42', '要求工件表面粗糙度', 'cp3', '100um', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('43', '刀具剩余寿命', 'cp4', '1800', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('44', '刀具半径实际值R', 'cp5', '0.501', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('45', '刀具长度实际值L', 'cp6', '119.98', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('46', '刀具主偏角A1', 'cp7', '45', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('47', '刀具副偏角A2', 'cp8', '15', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('48', '刀尖圆弧半径R', 'cp9', '2.5', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('49', '端面跳动', 'cp10', '0.0015', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('50', '径向跳动', 'cp11', '0.0009', 'ZT-0003');
INSERT INTO `jichucanshu` VALUES ('51', null, 'sccj', '山高', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('52', null, 'djclph', 'YG3Z', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('53', null, 'djyssm', '2000', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('54', null, 'djytjs', '规格为10.4的钻头，170729测试保存按钮。第一次测试。', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('55', null, 'smbjyz', '50', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('56', null, 'jxtdfw', '0.0025', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('57', null, 'djfpj', '15', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('58', null, 'dmtdfw', '0.0025', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('59', null, 'yhbjxgc', '0.01', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('60', null, 'djzpj', '30', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('61', null, 'djbzbj', '1.5', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('62', null, 'yhbjsgc', '0.01', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('63', null, 'djddsl', '3', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('64', null, 'cdxgc', '0.01', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('65', null, 'bjxgc', '0.005', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('66', null, 'djyhbj', '1.2', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('67', null, 'cdsgc', '0.01', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('68', null, 'bjsgc', '0.005', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('69', null, 'djbzcd', '120', 'Φ10.4 钻头(T38)');
INSERT INTO `jichucanshu` VALUES ('70', null, 'sccj', '山高', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('71', null, 'djclph', 'YG3X', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('72', null, 'djyssm', '1000', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('73', null, 'djytjs', '规格为20.5的钻头，170729测试。', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('74', null, 'smbjyz', '30', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('75', null, 'jxtdfw', '0.0025', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('76', null, 'djfpj', '15', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('77', null, 'dmtdfw', '0.0025', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('78', null, 'yhbjxgc', '0.01', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('79', null, 'djzpj', '30', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('80', null, 'djbzbj', '1.5', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('81', null, 'yhbjsgc', '0.01', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('82', null, 'djddsl', '3', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('83', null, 'cdxgc', '0.01', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('84', null, 'bjxgc', '0.005', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('85', null, 'djyhbj', '1.2', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('86', null, 'cdsgc', '0.01', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('87', null, 'bjsgc', '0.005', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('88', null, 'djbzcd', '120', 'φ20.5 钻头(T52)');
INSERT INTO `jichucanshu` VALUES ('357', null, 'djbzcd', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('356', null, 'bjsgc', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('355', null, 'cdsgc', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('354', null, 'djyhbj', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('353', null, 'bjxgc', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('352', null, 'cdxgc', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('351', null, 'djddsl', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('130', null, 'sccj', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('131', null, 'djclph', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('132', null, 'djyssm', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('133', null, 'djytjs', '170730测试添加节点按钮', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('134', null, 'smbjyz', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('135', null, 'jxtdfw', '0.005', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('136', null, 'djfpj', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('137', null, 'dmtdfw', '0.005', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('138', null, 'yhbjxgc', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('139', null, 'djzpj', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('140', null, 'djbzbj', '2.5', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('141', null, 'yhbjsgc', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('142', null, 'djddsl', '3', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('143', null, 'cdxgc', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('144', null, 'bjxgc', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('145', null, 'djyhbj', '1.2', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('146', null, 'cdsgc', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('147', null, 'bjsgc', '', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('148', null, 'djbzcd', '50', 'φ520 钻头');
INSERT INTO `jichucanshu` VALUES ('149', null, 'sccj', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('150', null, 'djclph', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('151', null, 'djyssm', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('152', null, 'djytjs', '170730测试添加规格按钮', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('153', null, 'smbjyz', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('154', null, 'jxtdfw', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('155', null, 'djfpj', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('156', null, 'dmtdfw', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('157', null, 'yhbjxgc', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('158', null, 'djzpj', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('159', null, 'djbzbj', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('160', null, 'yhbjsgc', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('161', null, 'djddsl', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('162', null, 'cdxgc', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('163', null, 'bjxgc', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('164', null, 'djyhbj', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('165', null, 'cdsgc', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('166', null, 'bjsgc', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('167', null, 'djbzcd', '', 'φ21.2 中心钻');
INSERT INTO `jichucanshu` VALUES ('168', null, 'sccj', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('169', null, 'djclph', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('170', null, 'djyssm', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('171', null, 'djytjs', '测试添加新规格中心钻', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('172', null, 'smbjyz', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('173', null, 'jxtdfw', '0.0015', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('174', null, 'djfpj', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('175', null, 'dmtdfw', '0.002', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('176', null, 'yhbjxgc', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('177', null, 'djzpj', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('178', null, 'djbzbj', '2', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('179', null, 'yhbjsgc', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('180', null, 'djddsl', '10', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('181', null, 'cdxgc', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('182', null, 'bjxgc', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('183', null, 'djyhbj', '20', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('184', null, 'cdsgc', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('185', null, 'bjsgc', '', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('186', null, 'djbzcd', '52', 'φ520 中心钻');
INSERT INTO `jichucanshu` VALUES ('350', null, 'yhbjsgc', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('349', null, 'djbzbj', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('348', null, 'djzpj', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('347', null, 'yhbjxgc', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('346', null, 'dmtdfw', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('345', null, 'djfpj', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('344', null, 'jxtdfw', '', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('206', null, 'sccj', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('207', null, 'djclph', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('208', null, 'djyssm', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('209', null, 'djytjs', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('210', null, 'smbjyz', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('211', null, 'jxtdfw', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('212', null, 'djfpj', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('213', null, 'dmtdfw', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('214', null, 'yhbjxgc', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('215', null, 'djzpj', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('216', null, 'djbzbj', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('217', null, 'yhbjsgc', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('218', null, 'djddsl', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('219', null, 'cdxgc', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('220', null, 'bjxgc', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('221', null, 'djyhbj', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('222', null, 'cdsgc', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('223', null, 'bjsgc', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('224', null, 'djbzcd', '', 'φ520 铣槽刀');
INSERT INTO `jichucanshu` VALUES ('258', null, 'bjxgc', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('257', null, 'cdxgc', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('255', null, 'yhbjsgc', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('256', null, 'djddsl', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('254', null, 'djbzbj', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('253', null, 'djzpj', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('252', null, 'yhbjxgc', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('251', null, 'dmtdfw', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('250', null, 'djfpj', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('249', null, 'jxtdfw', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('248', null, 'smbjyz', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('247', null, 'djytjs', '170730测试添加新规格与实时刷新效果', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('244', null, 'sccj', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('245', null, 'djclph', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('246', null, 'djyssm', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('259', null, 'djyhbj', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('260', null, 'cdsgc', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('261', null, 'bjsgc', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('262', null, 'djbzcd', '', 'φ520H212 枪钻');
INSERT INTO `jichucanshu` VALUES ('343', null, 'smbjyz', '50', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('342', null, 'djytjs', '测试刀具装配', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('341', null, 'djyssm', '1000', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('340', null, 'djclph', 'YG3X', 'φ16 中心钻(T117)');
INSERT INTO `jichucanshu` VALUES ('339', null, 'sccj', '212', 'φ16 中心钻(T117)');

-- ----------------------------
-- Table structure for `jichuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `jichuxinxi`;
CREATE TABLE `jichuxinxi` (
  `xh` int(10) NOT NULL AUTO_INCREMENT,
  `daojuid` char(20) CHARACTER SET utf8 NOT NULL,
  `daojuxinghao` char(20) CHARACTER SET utf8 NOT NULL,
  `daojuguige` char(20) CHARACTER SET utf8 DEFAULT NULL,
  `daojuleixing` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `daojushouming` int(10) NOT NULL,
  `weizhi` char(20) CHARACTER SET utf8 NOT NULL,
  `cengshu` char(20) CHARACTER SET utf8 NOT NULL,
  `weizhibiaoshi` char(4) CHARACTER SET utf8 NOT NULL,
  `type` char(20) CHARACTER SET utf8 NOT NULL,
  `kcsl` int(10) NOT NULL,
  `zuixiaokucun` int(10) NOT NULL,
  `zuidakucun` int(10) NOT NULL,
  `beizhu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=315 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jichuxinxi
-- ----------------------------
INSERT INTO `jichuxinxi` VALUES ('1', 'OSG机用丝锥', 'M12*1.25非涂层', 'BT16', 'BT16', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '备注');
INSERT INTO `jichuxinxi` VALUES ('2', '锥钻', '37', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('3', '丝锥', 'M39*2', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('4', '铰刀(m)', '020-9668', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('5', '直柄硬质合金钻', '5511-19.5', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('6', 'U钻', '880-D3700C5-04', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('7', '刀片', '880-070406H-C-GM', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('8', '刀片', '880-0704W06H-P-GM', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('9', '刀柄', 'C5-390.58-50 080', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('10', '铣刀', 'WSE40', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('11', '硬质合金钻', '5515-12.5', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('12', '刀片', 'LNKX1506PN-NPL', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '30', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('13', '扩孔钻', '019-9519SZ', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('14', '铰刀', '021-9518SZ', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('15', '刀片', 'LNKX1506PN-NPL', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '30', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('16', '刀片', 'MDHX1004ZDFRGD4W', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('17', '硬质合金钻头', '5511-15.5', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('18', '硬质合金钻头', '5515-14.5', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('19', '丝锥', '040-3064', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('20', '丝锥', '040-3061', '', '', '100', 'kardex 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('21', '刀片', 'WCMX06T308', '', '', '100', 'kardex 1号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('22', '刀片', 'SPMX12T3AP-75F40M', '', '', '100', 'kardex 1号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('23', '刀片', 'SPMX12T308-75F40M', '', '', '100', 'kardex 1号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('24', '加长钻头', '302270595-10.8', '', '', '100', 'kardex 1号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('25', '刀片', 'HNPJ0905ANSNGD', '', '', '100', 'kardex 1号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('26', '刀片', 'XNGJ535ANSNGD3E', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('27', '非标倒角刀', '52/30', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('28', '非标倒角刀', '64/45D', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('29', '非标倒角刀', '70/30', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('30', '非标倒角刀', '85/30', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('31', '刀片', 'LNKX1506PNTN   IC410', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '30', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('32', '铰刀', '302105884 12F9', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('33', '高精度内冷钻头', '302105885-12R8', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('34', '整体硬质合金钻', '5515-10.2', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('35', '整体硬质合金钻头', '5515-8.5', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('36', '丝锥', '5550-M10', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('37', '扩孔钻', '010-6060-1', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('38', '铰刀', '020-9682', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('39', '整体硬质合金钻头', '5515-8.5', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('40', '整体硬质合金钻', '5515-12.5', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('41', '非标钻铰刀', '302265497 S5515-15R8', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('42', '硬质合金钻头', '5515-6.8', '', '', '100', 'kardex 1号柜', '03层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('43', '硬钻', '5514-15.5', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('44', '硬质合金内冷钻', 'S5510-20H8', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('45', '硬质合金内冷钻', 'S5510-25H8', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('46', '直柄硬质合金钻', '5514-5.00', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('47', '硬质合金内冷铰刀', 'S5510-15F9', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('48', '丝锥', 'K045-9004', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('49', '直柄硬质合金钻头', '5514-8.73', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('50', '钴高速钢丝锥', '932-18.007', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('51', '硬质合金钻绞刀', '302362461-16F9*105', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('52', '刀片', 'CNMG120408-KR 3210', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('53', '钻头', 'k001-092', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('54', '刀片', '880.0503W05H-P-GM', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('55', '刀片', '880.0503.5H.C-GM', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('56', '刀片', 'CCMT060208-KM', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('57', '刀片', 'R290-12T308M-KM 3040', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('58', '钻头', 'K001-073', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('59', '钻头', '001-2055', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('60', '丝锥', '040-9534', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('61', '直柄硬质合金钻', '5514-16.5', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('62', '整体硬质合金钻头', '5515-9.0', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('63', '丝锥', '5550-m8', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('64', '内冷硬质合金钻', '5511-17.5', '', '', '100', 'kardex 1号柜', '04层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('65', '内冷硬钻', '5511-6.8', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('66', '倒角钻', '477-50', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('67', '丝锥', '819-M20', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('68', '倒角钻', '477-30', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('69', '丝锥', '819-M12', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('70', '钻攻一体内冷螺纹铣刀', '3785-M12', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('71', '硬质合金钻铰刀', 'S5510-15R8', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('72', '硬质合金钻铰刀', 'S5510-20R8', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('73', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('74', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('75', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('76', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('77', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('78', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('79', '刀片', 'TCMT220408KMH13A', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('80', '刀片', 'R245-12T3M-KM3040', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('81', '刀片', 'R245-12T3M-KM3040', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('82', '刀片', 'TCMT06T104-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('83', '刀片', 'TCMT06T104-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('84', '刀片', 'TCMT06T104-KF', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('85', '刀片', 'CCMT060208-KM', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('86', '刀片', 'CCMT060208-KM', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('87', '刀片', 'TPMT090204-KF3215', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('88', '刀片', 'R210-090412M-KM3220', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('89', '中心刀片', '880-050305H-C-GM1044', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('90', '周边刀片', '880-0503W05H-P-GM404', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('91', '刀片', 'TCMT090204-KF3005', '', '', '100', 'kardex 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('92', '中心刀片', '880-060406H-C-GM1044', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('93', '周边刀片', '880-0604W06H-P-GM404', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('94', '硬钻', '5515-8.6', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('95', '刀片', '490R-08T308M-KM', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('96', '刀片', 'ODEW0605APFN', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('97', '整体硬质合金钻头', '5514-14', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('98', '刀片', '880-050305H-C-GM1044', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('99', '刀片', '880-0503W05H-P-GM404', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('100', '内冷硬质合金钻头', '5510-21', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('101', '钴高速钢丝锥', '930-M10粗柄', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('102', '镗刀', '062-9684', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '4', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('103', '刀片', '880-070406H-C-GM 104', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('104', '刀片', '880-0704W06H-P-GM402', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('105', '刀片', 'SPMX12T3AP-75.F40M', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('106', '刀片', 'SPMX12T308-75.F40M', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('107', '刀片', 'P2706-3-ZK10UF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('108', '整体硬质合金钻', '5515-10.2', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('109', '内冷硬质合金钻', '5511-10.7', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('110', '丝锥', 'M39*2', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('111', '非标直槽钻', 'SIM773-8.00', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('112', '硬质合金钻头', '5514-15', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('113', '硬质合金内冷钻', 'S5510-16F9', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('114', '硬质合金内冷铰刀', 'S5510-15F9', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('115', '硬钻', '5515-17', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('116', '整体硬质合金内冷钻', 'S5525-8.4', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('117', '刀片', '328R13-26502-GM1025', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('118', '刀片', '328R13-31502-GM1025', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('119', '槽刀', 'L=280Φ85×3.15', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('120', '槽刀', 'L=340Φ83.5×2.65', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('121', '刀片', 'TPMT090204-KF3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('122', '刀片', 'CCMT060208-KM', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('123', '中心刀片', '880-050305H-C-GM1044', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('124', '刀片', '880-050305H-C-GM1044', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('125', '刀片', 'TPMT06T104-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('126', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('127', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('128', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('129', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('130', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('131', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('132', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('133', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('134', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('135', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('136', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('137', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('138', '刀片', '880-050305H-C-GR1044', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('139', '刀片', '880-0503W08H-P-GR402', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('140', '刀片', '880-040305H-GR1044', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('141', '刀片', '880-0403W07H-P-GR402', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('142', '刀片', 'R290-12T308M-KM1020', '', '', '100', 'kardex 2号柜', 'T17', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('143', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('144', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('145', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('146', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('147', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('148', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('149', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('150', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('151', '刀片', 'TCMT220408KMH13A', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('152', '刀片', '328R13-26502-GM1025', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('153', '切槽刀片', '327R12-22 215 02-GM', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('154', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '30', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('155', '刀片', 'TPMT090204-KF3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('156', '刀片', 'TPMT090204-KF3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('157', '490铣刀刀片', '490R-08T308M-KM3040', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('158', '刀片', 'R290.12T308-KM', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('159', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('160', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('161', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('162', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('163', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('164', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('165', '刀片', 'TPMT090204-KF3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('166', '刀片', 'TPMT090204-KF3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('167', '刀片', '880-030305H-C-GR1044', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('168', '刀片', '880-0303W06H-P-GR404', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('169', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('170', '刀片', 'TPMT110304-KF', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('171', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '30', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('172', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('173', '刀片', 'TCMT16T308-KM 3215', '', '', '100', 'kardex 2号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('174', '刀片', '331.91-5415-1  SM30', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('175', '刀片', '880-030305H-C-GR1044', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('176', '刀片', '880-0303W06H-P-GR404', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('177', '刀片', 'TPMT110304-KF', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('178', '过心锪钻', 'L=482Φ52', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('179', '刀片', 'R216.2-09T3SM30', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('180', '刀片', 'R216.2-15T312-2SM30', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('181', '刀片', 'TPMT110304-KF', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('182', '刀片', 'TPMT110304-KF', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('183', '锪钻', '012-9575A', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('184', '锪钻', 'k012-9005', '', '', '100', '箱式 1号柜', '01层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('185', '非标外冷硬钻', 'SZ5515-10.2', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('186', '非标外冷钻头', 'SZ5515-8.5', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('187', '刀片', 'TCMT220408KMH13A', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('188', '扩孔钻', '010-8583', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('189', '扩孔钻', '010-8584', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('190', '特型钻', '019-9519SZ', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '3', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('191', '铰刀', '020-8605', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('192', '铰刀', '020-8606', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('193', '铰刀', '020-9570', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('194', '加长铰刀', '021-9518SZ', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '4', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('195', '刀片', '328R13-26502-GM1025', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('196', '合金铰刀', '720-32', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('197', '特型钻', '019-0200SZ', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '5', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('198', '刀片', 'CCMT09T308NNT-LT10-P', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('199', '锪钻', '019-0201SZ', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '4', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('200', '刀片', 'ZPMT160408RJG5040', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('201', '刀片', 'ZPMT160408LJG5041', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('202', '刀片', '345R-1305M-KM3220', '', '', '100', '箱式 1号柜', '02层', 'S', '零部件', '100', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('203', '刀片', '345N-1305E-KW81020', '', '', '100', '箱式 2号柜', '01层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('204', '刀片', '490R-140420M-PH3220', '', '', '100', '箱式 2号柜', '02层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('205', '刀片', '490R-140408M-PM3040', '', '', '100', '箱式 2号柜', '03层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('206', '刀片', '490R-08T308M-PM1030', '', '', '100', '箱式 2号柜', '04层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('207', '精镗刀片', 'TCMT090204-KFH13A', '', '', '100', '箱式 2号柜', '05层', 'S', '零部件', '40', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('208', '刀片', '490R-08T308M-KM1020', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('209', '钻立铣刀', 'R216.2-025', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '1', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('210', '中心刀片', 'R216.2-07T3SM30', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('211', '周边刀片', 'R216.2-15T308-1SM30', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('212', '刀片', 'CCMT060204-KM3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('213', '107车刀片', 'TCMT110304-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('214', '中心刀片', '880-050305H-C-GM  10', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('215', '周边刀片', '880-0503W05H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('216', '刀片', 'TPMT06T104-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('217', '刀片', '345R-1305M-KM3220', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '100', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('218', '刀片', '345N-1305E-KW81020', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('219', '刀片', 'TCMT090204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('220', '刀片', 'TCMT060204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('221', '刀片', '345N-1305E-KW81020', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('222', '刀片', '345R-1305M-KM3220', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('223', '刀片', '490R-08T308M-KM1020', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '200', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('224', '刀片', '345R-1305M-KM3220', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '100', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('225', '修光刀片', '345N-1305E-KW81020', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('226', '刀片', 'TCMT16T308-KM3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('227', '刀片', 'TCMT220408-KMH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('228', '刀片', 'TCMT16T308-KM3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('229', '刀片', '490R-140408M-PM3040', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '100', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('230', '刀片', '490R-140408M-PM3040', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '100', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('231', '刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('232', '刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('233', '刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('234', '刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('235', '刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('236', '刀片', 'TCMT090204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('237', '刀片', 'TCMT060204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('238', '刀片', 'TCMT060204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('239', '刀片', 'TCMT060204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('240', '刀片', 'TCMT060204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('241', '刀片', 'TCMT090204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('242', 'CD8804刃刀片', '880-030305H-C-GR1044', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '40', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('243', 'CD8804刃刀片', '880-0303W06H-P-GR404', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '40', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('244', '精镗刀片', 'TCMT090204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '40', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('245', 'CD8804刃刀片', '880-050305H-C-GR1044', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '40', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('246', 'CD8804刃刀片', '880-0503W06H-P-GR404', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '40', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('247', '精镗刀片', 'TCMT090204-KFH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('248', '刀片', '490R-140408M-PM3040', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '100', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('249', '刀片', '490R-140408M-PM3040', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '100', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('250', '槽铣刀片', '328R13-26502-GM1025', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('251', '切槽刀片', '327R12-2221502-GM102', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('252', '中心刀片', '880-040305H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('253', '周边刀片', '880-0403W05H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('254', '刀片', 'R390-11T308M-K M 102', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '100', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('255', '中心刀片', '880-050305H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('256', '周边刀片', '880-0503W05H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('257', '刀片', 'R390-11T308M-K M 102', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('258', '刀片', 'TCMT220408-KMH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('259', '刀片', 'TCMT220408-KMH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('260', '刀片', 'TCMT220408-KMH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('261', '刀片', 'R245-12T3M-KM3220', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('262', '刀片', 'R245-12T3M-KM3220', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '20', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('263', '刀夹', '391.68A-8-T22-A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '2', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('264', '刀片', 'TCMT220408-KMH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('265', '刀片', 'TCMT220408-KMH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('266', '刀片', 'TCMT16T308-KM3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('267', '刀片', 'TCMT220408-KMH13A', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('268', '中心刀片', '880-050305H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('269', '周边刀片', '880-0503W05H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('270', '中心刀片', '880-060406H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('271', '周边刀片', '880-0604W06H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('272', '中心刀片', '880-070406H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('273', '周边刀片', '880-0704W06H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('274', '中心刀片', '880-080508H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('275', '周边刀片', '880-0805W08H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('276', '精镗刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('277', '精镗刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('278', '中心刀片', '880-040305H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('279', '周边刀片', '880-0403W05H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('280', '中心刀片', '880-060406H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('281', '周边刀片', '880-0604W06H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('282', '刀片', 'TCMT110308-KM3210', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('283', '刀片', 'TCMT110308-KM3210', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('284', '中心刀片', '880-050305H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('285', '周边刀片', '880-0503W05H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('286', '精镗刀片', 'TPMT06T104-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('287', '刀片', 'TCMT220412-KR3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('288', '刀片', 'TCMT220412-KR3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('289', '刀片', 'TCMT16T308-KR3210', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('290', '中心刀片', '880-070406H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('291', '周边刀片', '880-0704W06H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('292', '刀片', '490R-08T308M-KM1020', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '50', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('293', '精镗刀片', 'TCMT09T204-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('294', '精镗刀片', 'TCMT09T204-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('295', '精镗刀片', 'TCMT09T204-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('296', '精镗刀片', 'TCMT09T204-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('297', '精镗刀片', 'TCMT09T204-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('298', '精镗刀片', 'TCMT09T204-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('299', '刀片', 'TCMT16T308-KM3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('300', '刀片', 'TCMT220412-KR3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('301', '刀片', 'TCMT220412-KR3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('302', '刀片', 'TCMT220412-KR3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('303', '刀片', 'TCMT220412-KR3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('304', '刀片', 'TCMT220412-KR3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('305', '精镗刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('306', '精镗刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('307', '精镗刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('308', '精镗刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('309', '精镗刀片', 'TPMT110304-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('310', '精镗刀片', 'TPMT06T104-KF3215', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('311', '中心刀片', '880-040305H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('312', '周边刀片', '880-0403W05H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('313', '中心刀片', '880-050305H-C-GM 104', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');
INSERT INTO `jichuxinxi` VALUES ('314', '周边刀片', '880-0503W05H-P-GM 40', '', '', '100', '箱式 2号柜', '06层', 'S', '零部件', '10', '10', '99', '');

-- ----------------------------
-- Table structure for `lbj_lingyong`
-- ----------------------------
DROP TABLE IF EXISTS `lbj_lingyong`;
CREATE TABLE `lbj_lingyong` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `lybz` varchar(20) DEFAULT NULL,
  `lysb` varchar(20) DEFAULT NULL,
  `lyr` varchar(20) DEFAULT NULL,
  `zjgx` char(20) DEFAULT NULL,
  `lyrq` date DEFAULT NULL,
  `beizhu` tinytext,
  `jbr` varchar(20) DEFAULT NULL,
  `djzt` int(2) NOT NULL,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `daojuchucang_ix1` (`danhao`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbj_lingyong
-- ----------------------------
INSERT INTO `lbj_lingyong` VALUES ('18', 'LBJLY_170724001', '先锋一班', 'FMS-1#机', '大壮李', '80传动箱', '2017-07-24', '以旧换新。', '赵经手', '1');
INSERT INTO `lbj_lingyong` VALUES ('19', 'LBJLY_170726001', '先锋一班', 'FMS-1#机', '大壮', 'OP-20', '2017-07-26', '以旧换新。', '赵经手', '0');
INSERT INTO `lbj_lingyong` VALUES ('20', 'LBJLY_170728001', '先锋一班', '', '', '', '2017-07-28', '以旧换新。', '赵经手', '0');

-- ----------------------------
-- Table structure for `lbj_lingyongmingxi`
-- ----------------------------
DROP TABLE IF EXISTS `lbj_lingyongmingxi`;
CREATE TABLE `lbj_lingyongmingxi` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `lbjmc` varchar(20) DEFAULT NULL,
  `lbjxh` varchar(50) NOT NULL,
  `lbjgg` char(20) DEFAULT NULL,
  `sl` int(11) NOT NULL,
  `dw` varchar(10) DEFAULT '套',
  `wzbs` char(10) DEFAULT 'M',
  `jcbm` char(20) DEFAULT NULL,
  `gx` char(20) DEFAULT NULL,
  `bz` tinytext,
  PRIMARY KEY (`xh`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbj_lingyongmingxi
-- ----------------------------
INSERT INTO `lbj_lingyongmingxi` VALUES ('120', 'LBJLY_170726001', '刀片', '880-070406H-C-GM', '', '10', '件', 'M', 'FMS-1#机', 'OP-20', '');
INSERT INTO `lbj_lingyongmingxi` VALUES ('121', 'LBJLY_170726001', '刀片', 'LNKX1506PN-NPL', '', '10', '件', 'M', 'FMS-1#机', 'OP-20', '');
INSERT INTO `lbj_lingyongmingxi` VALUES ('122', 'LBJLY_170726001', '刀片', 'MDHX1004ZDFRGD4W', '', '10', '件', 'M', 'FMS-1#机', 'OP-20', '');
INSERT INTO `lbj_lingyongmingxi` VALUES ('123', 'LBJLY_170726001', '刀片', 'SPMX12T308-75F40M', '', '10', '件', 'M', 'FMS-1#机', 'OP-20', '');
INSERT INTO `lbj_lingyongmingxi` VALUES ('124', 'LBJLY_170724001', 'OSG机用丝锥', 'M12*1.25非涂层', '', '2', '件', 'M', 'FMS-1#机', '80传动箱-40序', '');

-- ----------------------------
-- Table structure for `lbj_liushui`
-- ----------------------------
DROP TABLE IF EXISTS `lbj_liushui`;
CREATE TABLE `lbj_liushui` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `dhlx` varchar(10) DEFAULT NULL,
  `lbjmc` varchar(20) DEFAULT NULL,
  `lbjgg` char(20) DEFAULT NULL,
  `lbjxh` char(50) DEFAULT NULL,
  `zsl` int(2) DEFAULT NULL,
  `fsl` int(2) DEFAULT NULL,
  `czsj` datetime DEFAULT NULL,
  `jbr` varchar(10) DEFAULT NULL,
  `bz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbj_liushui
-- ----------------------------
INSERT INTO `lbj_liushui` VALUES ('32', 'LBJLY_170724001', '常规领用', 'OSG机用丝锥', '', 'M12*1.25非涂层', '0', '2', '2017-07-24 00:00:00', '赵经手', '');
INSERT INTO `lbj_liushui` VALUES ('33', 'LBJTH_170726001', '零部件退还', '丝锥', '', 'M39*2', '5', '0', '2017-07-26 00:00:00', '赵经手', '');
INSERT INTO `lbj_liushui` VALUES ('34', 'LBJTH_170726001', '零部件退还', '丝锥', '', '040-3061', '5', '0', '2017-07-26 00:00:00', '赵经手', '');
INSERT INTO `lbj_liushui` VALUES ('35', 'LBJTH_170726001', '零部件退还', '丝锥', '', '5550-m8', '5', '0', '2017-07-26 00:00:00', '赵经手', '');
INSERT INTO `lbj_liushui` VALUES ('36', 'LBJTH_170726001', '零部件退还', '丝锥', '', '819-M12', '5', '0', '2017-07-26 00:00:00', '赵经手', '');

-- ----------------------------
-- Table structure for `lbj_temp`
-- ----------------------------
DROP TABLE IF EXISTS `lbj_temp`;
CREATE TABLE `lbj_temp` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `lbjmc` varchar(20) NOT NULL,
  `lbjxh` char(50) NOT NULL,
  `lbjgg` varchar(50) DEFAULT NULL,
  `dw` varchar(10) DEFAULT NULL,
  `dj` decimal(10,2) DEFAULT NULL,
  `sl` int(20) DEFAULT NULL,
  `img` char(100) DEFAULT NULL,
  `bz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbj_temp
-- ----------------------------
INSERT INTO `lbj_temp` VALUES ('1', 'OSG机用丝锥', 'M12*1.25非涂层', '', '件', '197.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('2', '锥钻', '37', '', '件', '324.87', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('3', '丝锥', 'M39*2', '', '件', '158.34', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('4', '铰刀(m)', '020-9668', '', '件', '105.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('5', '直柄硬质合金钻', '5511-19.5', '', '件', '2641.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('6', 'U钻', '880-D3700C5-04', '', '件', '5015.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('7', '刀片', '880-070406H-C-GM', '', '件', '110.25', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('8', '刀片', '880-0704W06H-P-GM', '', '件', '110.25', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('9', '刀柄', 'C5-390.58-50 080', '', '件', '2278.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('10', '铣刀', 'WSE40', '', '件', '412.16', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('11', '硬质合金钻', '5515-12.5', '', '件', '676.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('12', '刀片', 'LNKX1506PN-NPL', '', '件', '105.86', '30', null, null);
INSERT INTO `lbj_temp` VALUES ('13', '扩孔钻', '019-9519SZ', '', '件', '780.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('14', '铰刀', '021-9518SZ', '', '件', '780.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('15', '刀片', 'LNKX1506PN-NPL', '', '件', '105.86', '30', null, null);
INSERT INTO `lbj_temp` VALUES ('16', '刀片', 'MDHX1004ZDFRGD4W', '', '件', '90.00', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('17', '硬质合金钻头', '5511-15.5', '', '件', '1620.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('18', '硬质合金钻头', '5515-14.5', '', '件', '950.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('19', '丝锥', '040-3064', '', '件', '14.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('20', '丝锥', '040-3061', '', '件', '18.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('21', '刀片', 'WCMX06T308', '', '件', '28.50', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('22', '刀片', 'SPMX12T3AP-75F40M', '', '件', '83.30', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('23', '刀片', 'SPMX12T308-75F40M', '', '件', '83.30', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('24', '加长钻头', '302270595-10.8', '', '件', '1588.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('25', '刀片', 'HNPJ0905ANSNGD', '', '件', '110.00', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('26', '刀片', 'XNGJ535ANSNGD3E', '', '件', '120.00', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('27', '非标倒角刀', '52/30', '', '件', '769.23', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('28', '非标倒角刀', '64/45D', '', '件', '854.70', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('29', '非标倒角刀', '70/30', '', '件', '854.70', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('30', '非标倒角刀', '85/30', '', '件', '940.17', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('31', '刀片', 'LNKX1506PNTN   IC4100', '', '件', '120.66', '30', null, null);
INSERT INTO `lbj_temp` VALUES ('32', '铰刀', '302105884 12F9', '', '件', '1152.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('33', '高精度内冷钻头', '302105885-12R8', '', '件', '1152.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('34', '整体硬质合金钻', '5515-10.2', '', '件', '460.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('35', '整体硬质合金钻头', '5515-8.5', '', '件', '356.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('36', '丝锥', '5550-M10', '', '件', '123.33', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('37', '扩孔钻', '010-6060-1', '', '件', '29.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('38', '铰刀', '020-9682', '', '件', '106.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('39', '整体硬质合金钻头', '5515-8.5', '', '件', '356.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('40', '整体硬质合金钻', '5515-12.5', '', '件', '676.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('41', '非标钻铰刀', '302265497 S5515-15R8', '', '件', '1625.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('42', '硬质合金钻头', '5515-6.8', '', '件', '327.18', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('43', '硬钻', '5514-15.5', '', '件', '890.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('44', '硬质合金内冷钻', 'S5510-20H8', '', '件', '2490.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('45', '硬质合金内冷钻', 'S5510-25H8', '', '件', '2960.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('46', '直柄硬质合金钻', '5514-5.00', '', '件', '302.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('47', '硬质合金内冷铰刀', 'S5510-15F9', '', '件', '1625.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('48', '丝锥', 'K045-9004', '', '件', '34.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('49', '直柄硬质合金钻头', '5514-8.73', '', '件', '265.60', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('50', '钴高速钢丝锥', '932-18.007', '', '件', '676.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('51', '硬质合金钻绞刀', '302362461-16F9*105', '', '件', '1625.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('52', '刀片', 'CNMG120408-KR 3210', '', '件', '74.17', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('53', '钻头', 'k001-092', '', '件', '38.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('54', '刀片', '880.0503W05H-P-GM', '', '件', '93.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('55', '刀片', '880.0503.5H.C-GM', '', '件', '91.38', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('56', '刀片', 'CCMT060208-KM', '', '件', '41.96', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('57', '刀片', 'R290-12T308M-KM 3040', '', '件', '78.00', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('58', '钻头', 'K001-073', '', '件', '52.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('59', '钻头', '001-2055', '', '件', '41.28', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('60', '丝锥', '040-9534', '', '件', '30.93', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('61', '直柄硬质合金钻', '5514-16.5', '', '件', '1184.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('62', '整体硬质合金钻头', '5515-9.0', '', '件', '375.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('63', '丝锥', '5550-m8', '', '件', '107.83', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('64', '内冷硬质合金钻', '5511-17.5', '', '件', '2350.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('65', '内冷硬钻', '5511-6.8', '', '件', '526.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('66', '倒角钻', '477-50', '', '件', '676.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('67', '丝锥', '819-M20', '', '件', '491.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('68', '倒角钻', '477-30', '', '件', '357.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('69', '丝锥', '819-M12', '', '件', '218.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('70', '钻攻一体内冷螺纹铣刀', '3785-M12', '', '件', '4185.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('71', '硬质合金钻铰刀', 'S5510-15R8', '', '件', '1625.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('72', '硬质合金钻铰刀', 'S5510-20R8', '', '件', '2490.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('73', '刀片', 'TPMT110304-KF', '', '件', '58.55', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('74', '刀片', 'TPMT110304-KF', '', '件', '58.55', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('75', '刀片', 'TPMT110304-KF', '', '件', '58.55', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('76', '刀片', 'TPMT110304-KF', '', '件', '58.55', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('77', '刀片', 'TPMT110304-KF', '', '件', '58.55', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('78', '刀片', 'TPMT110304-KF', '', '件', '58.55', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('79', '刀片', 'TCMT220408KMH13A', '', '件', '74.20', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('80', '刀片', 'R245-12T3M-KM3040', '', '件', '82.00', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('81', '刀片', 'R245-12T3M-KM3040', '', '件', '82.00', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('82', '刀片', 'TCMT06T104-KF', '', '件', '42.82', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('83', '刀片', 'TCMT06T104-KF', '', '件', '42.82', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('84', '刀片', 'TCMT06T104-KF', '', '件', '42.82', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('85', '刀片', 'CCMT060208-KM', '', '件', '41.96', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('86', '刀片', 'CCMT060208-KM', '', '件', '41.96', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('87', '刀片', 'TPMT090204-KF3215', '', '件', '45.85', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('88', '刀片', 'R210-090412M-KM3220', '', '件', '75.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('89', '中心刀片', '880-050305H-C-GM1044', '', '件', '93.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('90', '周边刀片', '880-0503W05H-P-GM4044', '', '件', '93.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('91', '刀片', 'TCMT090204-KF3005', '', '件', '44.32', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('92', '中心刀片', '880-060406H-C-GM1044', '', '件', '102.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('93', '周边刀片', '880-0604W06H-P-GM4044', '', '件', '102.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('94', '硬钻', '5515-8.6', '', '件', '361.57', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('95', '刀片', '490R-08T308M-KM', '', '件', '129.00', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('96', '刀片', 'ODEW0605APFN', '', '件', '118.20', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('97', '整体硬质合金钻头', '5514-14', '', '件', '601.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('98', '刀片', '880-050305H-C-GM1044', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('99', '刀片', '880-0503W05H-P-GM4044', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('100', '内冷硬质合金钻头', '5510-21', '', '件', '2808.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('101', '钴高速钢丝锥', '930-M10粗柄', '', '件', '253.50', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('102', '镗刀', '062-9684', '', '件', '14.00', '4', null, null);
INSERT INTO `lbj_temp` VALUES ('103', '刀片', '880-070406H-C-GM 1044', '', '件', '110.25', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('104', '刀片', '880-0704W06H-P-GM4024', '', '件', '110.25', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('105', '刀片', 'SPMX12T3AP-75.F40M', '', '件', '83.30', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('106', '刀片', 'SPMX12T308-75.F40M', '', '件', '83.30', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('107', '刀片', 'P2706-3-ZK10UF', '', '件', '23.40', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('108', '整体硬质合金钻', '5515-10.2', '', '件', '460.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('109', '内冷硬质合金钻', '5511-10.7', '', '件', '793.28', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('110', '丝锥', 'M39*2', '', '件', '158.34', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('111', '非标直槽钻', 'SIM773-8.00', '', '件', '1586.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('112', '硬质合金钻头', '5514-15', '', '件', '890.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('113', '硬质合金内冷钻', 'S5510-16F9', '', '件', '1520.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('114', '硬质合金内冷铰刀', 'S5510-15F9', '', '件', '1625.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('115', '硬钻', '5515-17', '', '件', '1287.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('116', '整体硬质合金内冷钻', 'S5525-8.4', '', '件', '2548.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('117', '刀片', '328R13-26502-GM1025', '', '件', '253.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('118', '刀片', '328R13-31502-GM1025', '', '件', '253.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('119', '槽刀', 'L=280Φ85×3.15', '', '件', '10498.25', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('120', '槽刀', 'L=340Φ83.5×2.65', '', '件', '31024.30', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('121', '刀片', 'TPMT090204-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('122', '刀片', 'CCMT060208-KM', '', '件', '41.96', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('123', '中心刀片', '880-050305H-C-GM1044', '', '件', '93.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('124', '刀片', '880-050305H-C-GM1044', '', '件', '93.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('125', '刀片', 'TPMT06T104-KF', '', '件', '40.46', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('126', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('127', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('128', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('129', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('130', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('131', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('132', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('133', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('134', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('135', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('136', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('137', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('138', '刀片', '880-050305H-C-GR1044', '', '件', '100.00', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('139', '刀片', '880-0503W08H-P-GR4024', '', '件', '100.00', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('140', '刀片', '880-040305H-GR1044', '', '件', '89.60', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('141', '刀片', '880-0403W07H-P-GR4024', '', '件', '89.60', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('142', '刀片', 'R290-12T308M-KM1020', '', '件', '84.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('143', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('144', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('145', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('146', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('147', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('148', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('149', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('150', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('151', '刀片', 'TCMT220408KMH13A', '', '件', '72.90', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('152', '刀片', '328R13-26502-GM1025', '', '件', '253.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('153', '切槽刀片', '327R12-22 215 02-GM 1025', '', '件', '280.50', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('154', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '30', null, null);
INSERT INTO `lbj_temp` VALUES ('155', '刀片', 'TPMT090204-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('156', '刀片', 'TPMT090204-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('157', '490铣刀刀片', '490R-08T308M-KM3040', '', '件', '103.70', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('158', '刀片', 'R290.12T308-KM', '', '件', '63.35', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('159', '刀片', 'TPMT110304-KF', '', '件', '46.48', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('160', '刀片', 'TPMT110304-KF', '', '件', '46.48', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('161', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('162', '刀片', 'TPMT110304-KF', '', '件', '46.48', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('163', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('164', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('165', '刀片', 'TPMT090204-KF3215', '', '件', '58.27', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('166', '刀片', 'TPMT090204-KF3215', '', '件', '58.27', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('167', '刀片', '880-030305H-C-GR1044', '', '件', '89.60', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('168', '刀片', '880-0303W06H-P-GR4044', '', '件', '89.60', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('169', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('170', '刀片', 'TPMT110304-KF', '', '件', '46.48', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('171', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '30', null, null);
INSERT INTO `lbj_temp` VALUES ('172', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('173', '刀片', 'TCMT16T308-KM 3215', '', '件', '72.67', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('174', '刀片', '331.91-5415-1  SM30', '', '件', '146.25', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('175', '刀片', '880-030305H-C-GR1044', '', '件', '89.60', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('176', '刀片', '880-0303W06H-P-GR4044', '', '件', '89.60', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('177', '刀片', 'TPMT110304-KF', '', '件', '46.48', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('178', '过心锪钻', 'L=482Φ52', '', '件', '8000.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('179', '刀片', 'R216.2-09T3SM30', '', '件', '124.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('180', '刀片', 'R216.2-15T312-2SM30', '', '件', '66.45', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('181', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('182', '刀片', 'TPMT110304-KF', '', '件', '46.48', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('183', '锪钻', '012-9575A', '', '件', '500.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('184', '锪钻', 'k012-9005', '', '件', '85.50', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('185', '非标外冷硬钻', 'SZ5515-10.2', '', '件', '1082.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('186', '非标外冷钻头', 'SZ5515-8.5', '', '件', '780.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('187', '刀片', 'TCMT220408KMH13A', '', '件', '73.27', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('188', '扩孔钻', '010-8583', '', '件', '560.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('189', '扩孔钻', '010-8584', '', '件', '590.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('190', '特型钻', '019-9519SZ', '', '件', '780.00', '3', null, null);
INSERT INTO `lbj_temp` VALUES ('191', '铰刀', '020-8605', '', '件', '560.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('192', '铰刀', '020-8606', '', '件', '580.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('193', '铰刀', '020-9570', '', '件', '645.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('194', '加长铰刀', '021-9518SZ', '', '件', '780.00', '4', null, null);
INSERT INTO `lbj_temp` VALUES ('195', '刀片', '328R13-26502-GM1025', '', '件', '253.50', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('196', '合金铰刀', '720-32', '', '件', '1297.00', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('197', '特型钻', '019-0200SZ', '', '件', '110.00', '5', null, null);
INSERT INTO `lbj_temp` VALUES ('198', '刀片', 'CCMT09T308NNT-LT10-PVD', '', '件', '33.93', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('199', '锪钻', '019-0201SZ', '', '件', '110.00', '4', null, null);
INSERT INTO `lbj_temp` VALUES ('200', '刀片', 'ZPMT160408RJG5040', '', '件', '61.00', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('201', '刀片', 'ZPMT160408LJG5041', '', '件', '61.00', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('202', '刀片', '345R-1305M-KM3220', '', '片', '141.00', '100', null, null);
INSERT INTO `lbj_temp` VALUES ('203', '刀片', '345N-1305E-KW81020', '', '片', '166.40', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('204', '刀片', '490R-140420M-PH3220', '', '片', '138.00', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('205', '刀片', '490R-140408M-PM3040', '', '片', '128.00', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('206', '刀片', '490R-08T308M-PM1030', '', '片', '131.00', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('207', '精镗刀片', 'TCMT090204-KFH13A', '', '片', '37.68', '40', null, null);
INSERT INTO `lbj_temp` VALUES ('208', '刀片', '490R-08T308M-KM1020', '', '片', '129.00', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('209', '钻立铣刀', 'R216.2-025', '', '件', '2235.00', '1', null, null);
INSERT INTO `lbj_temp` VALUES ('210', '中心刀片', 'R216.2-07T3SM30', '', '片', '100.80', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('211', '周边刀片', 'R216.2-15T308-1SM30', '', '片', '54.46', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('212', '刀片', 'CCMT060204-KM3215', '', '片', '54.56', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('213', '107车刀片', 'TCMT110304-KFH13A', '', '片', '42.30', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('214', '中心刀片', '880-050305H-C-GM  1044', '', '片', '93.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('215', '周边刀片', '880-0503W05H-P-GM 4044', '', '片', '93.75', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('216', '刀片', 'TPMT06T104-KF3215', '', '件', '45.85', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('217', '刀片', '345R-1305M-KM3220', '', '件', '141.00', '100', null, null);
INSERT INTO `lbj_temp` VALUES ('218', '刀片', '345N-1305E-KW81020', '', '件', '166.40', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('219', '刀片', 'TCMT090204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('220', '刀片', 'TCMT060204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('221', '刀片', '345N-1305E-KW81020', '', '件', '166.40', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('222', '刀片', '345R-1305M-KM3220', '', '件', '141.00', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('223', '刀片', '490R-08T308M-KM1020', '', '件', '129.00', '200', null, null);
INSERT INTO `lbj_temp` VALUES ('224', '刀片', '345R-1305M-KM3220', '', '件', '141.00', '100', null, null);
INSERT INTO `lbj_temp` VALUES ('225', '修光刀片', '345N-1305E-KW81020', '', '件', '166.40', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('226', '刀片', 'TCMT16T308-KM3215', '', '件', '72.67', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('227', '刀片', 'TCMT220408-KMH13A', '', '件', '74.20', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('228', '刀片', 'TCMT16T308-KM3215', '', '件', '72.67', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('229', '刀片', '490R-140408M-PM3040', '', '件', '128.00', '100', null, null);
INSERT INTO `lbj_temp` VALUES ('230', '刀片', '490R-140408M-PM3040', '', '件', '128.00', '100', null, null);
INSERT INTO `lbj_temp` VALUES ('231', '刀片', 'TPMT110304-KF3215', '', '件', '58.27', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('232', '刀片', 'TPMT110304-KF3215', '', '件', '58.27', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('233', '刀片', 'TPMT110304-KF3215', '', '件', '58.27', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('234', '刀片', 'TPMT110304-KF3215', '', '件', '58.27', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('235', '刀片', 'TPMT110304-KF3215', '', '件', '58.27', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('236', '刀片', 'TCMT090204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('237', '刀片', 'TCMT060204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('238', '刀片', 'TCMT060204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('239', '刀片', 'TCMT060204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('240', '刀片', 'TCMT060204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('241', '刀片', 'TCMT090204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('242', 'CD8804刃刀片', '880-030305H-C-GR1044', '', '件', '89.60', '40', null, null);
INSERT INTO `lbj_temp` VALUES ('243', 'CD8804刃刀片', '880-0303W06H-P-GR4044', '', '件', '89.60', '40', null, null);
INSERT INTO `lbj_temp` VALUES ('244', '精镗刀片', 'TCMT090204-KFH13A', '', '件', '37.68', '40', null, null);
INSERT INTO `lbj_temp` VALUES ('245', 'CD8804刃刀片', '880-050305H-C-GR1044', '', '件', '100.00', '40', null, null);
INSERT INTO `lbj_temp` VALUES ('246', 'CD8804刃刀片', '880-0503W06H-P-GR4044', '', '件', '100.00', '40', null, null);
INSERT INTO `lbj_temp` VALUES ('247', '精镗刀片', 'TCMT090204-KFH13A', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('248', '刀片', '490R-140408M-PM3040', '', '件', '128.00', '100', null, null);
INSERT INTO `lbj_temp` VALUES ('249', '刀片', '490R-140408M-PM3040', '', '件', '128.00', '100', null, null);
INSERT INTO `lbj_temp` VALUES ('250', '槽铣刀片', '328R13-26502-GM1025', '', '件', '253.50', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('251', '切槽刀片', '327R12-2221502-GM1025', '', '件', '280.50', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('252', '中心刀片', '880-040305H-C-GM 1044', '', '件', '82.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('253', '周边刀片', '880-0403W05H-P-GM 4024', '', '件', '82.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('254', '刀片', 'R390-11T308M-K M 1020', '', '件', '92.25', '100', null, null);
INSERT INTO `lbj_temp` VALUES ('255', '中心刀片', '880-050305H-C-GM 1044', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('256', '周边刀片', '880-0503W05H-P-GM 4024', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('257', '刀片', 'R390-11T308M-K M 1020', '', '件', '92.25', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('258', '刀片', 'TCMT220408-KMH13A', '', '件', '74.20', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('259', '刀片', 'TCMT220408-KMH13A', '', '件', '74.20', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('260', '刀片', 'TCMT220408-KMH13A', '', '件', '74.20', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('261', '刀片', 'R245-12T3M-KM3220', '', '件', '84.00', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('262', '刀片', 'R245-12T3M-KM3220', '', '件', '84.00', '20', null, null);
INSERT INTO `lbj_temp` VALUES ('263', '刀夹', '391.68A-8-T22-A', '', '件', '1436.50', '2', null, null);
INSERT INTO `lbj_temp` VALUES ('264', '刀片', 'TCMT220408-KMH13A', '', '件', '74.20', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('265', '刀片', 'TCMT220408-KMH13A', '', '件', '74.20', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('266', '刀片', 'TCMT16T308-KM3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('267', '刀片', 'TCMT220408-KMH13A', '', '件', '74.20', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('268', '中心刀片', '880-050305H-C-GM 1044', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('269', '周边刀片', '880-0503W05H-P-GM 4024', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('270', '中心刀片', '880-060406H-C-GM 1044', '', '件', '102.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('271', '周边刀片', '880-0604W06H-P-GM 4024', '', '件', '102.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('272', '中心刀片', '880-070406H-C-GM 1044', '', '件', '110.25', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('273', '周边刀片', '880-0704W06H-P-GM 4024', '', '件', '110.25', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('274', '中心刀片', '880-080508H-C-GM 1044', '', '件', '120.00', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('275', '周边刀片', '880-0805W08H-P-GM 4024', '', '件', '120.00', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('276', '精镗刀片', 'TPMT110304-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('277', '精镗刀片', 'TPMT110304-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('278', '中心刀片', '880-040305H-C-GM 1044', '', '件', '82.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('279', '周边刀片', '880-0403W05H-P-GM 4024', '', '件', '82.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('280', '中心刀片', '880-060406H-C-GM 1044', '', '件', '102.75', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('281', '周边刀片', '880-0604W06H-P-GM 4024', '', '件', '102.75', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('282', '刀片', 'TCMT110308-KM3210', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('283', '刀片', 'TCMT110308-KM3210', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('284', '中心刀片', '880-050305H-C-GM 1044', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('285', '周边刀片', '880-0503W05H-P-GM 4024', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('286', '精镗刀片', 'TPMT06T104-KF3215', '', '件', '45.85', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('287', '刀片', 'TCMT220412-KR3215', '', '件', '108.80', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('288', '刀片', 'TCMT220412-KR3215', '', '件', '108.80', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('289', '刀片', 'TCMT16T308-KR3210', '', '件', '77.52', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('290', '中心刀片', '880-070406H-C-GM 1044', '', '件', '110.25', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('291', '周边刀片', '880-0704W06H-P-GM 4024', '', '件', '110.25', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('292', '刀片', '490R-08T308M-KM1020', '', '件', '129.00', '50', null, null);
INSERT INTO `lbj_temp` VALUES ('293', '精镗刀片', 'TCMT09T204-KF3215', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('294', '精镗刀片', 'TCMT09T204-KF3215', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('295', '精镗刀片', 'TCMT09T204-KF3215', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('296', '精镗刀片', 'TCMT09T204-KF3215', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('297', '精镗刀片', 'TCMT09T204-KF3215', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('298', '精镗刀片', 'TCMT09T204-KF3215', '', '件', '37.68', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('299', '刀片', 'TCMT16T308-KM3215', '', '件', '72.67', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('300', '刀片', 'TCMT220412-KR3215', '', '件', '108.80', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('301', '刀片', 'TCMT220412-KR3215', '', '件', '108.80', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('302', '刀片', 'TCMT220412-KR3215', '', '件', '108.80', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('303', '刀片', 'TCMT220412-KR3215', '', '件', '108.80', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('304', '刀片', 'TCMT220412-KR3215', '', '件', '108.80', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('305', '精镗刀片', 'TPMT110304-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('306', '精镗刀片', 'TPMT110304-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('307', '精镗刀片', 'TPMT110304-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('308', '精镗刀片', 'TPMT110304-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('309', '精镗刀片', 'TPMT110304-KF3215', '', '件', '58.27', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('310', '精镗刀片', 'TPMT06T104-KF3215', '', '件', '45.85', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('311', '中心刀片', '880-040305H-C-GM 1044', '', '件', '82.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('312', '周边刀片', '880-0403W05H-P-GM 4024', '', '件', '82.50', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('313', '中心刀片', '880-050305H-C-GM 1044', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('314', '周边刀片', '880-0503W05H-P-GM 4024', '', '件', '93.75', '10', null, null);
INSERT INTO `lbj_temp` VALUES ('315', '中心钻', '723 16.0(看不到）', null, '件', null, '47', null, null);
INSERT INTO `lbj_temp` VALUES ('316', '热涨刀柄', 'GM3004736 116.100', null, '件', null, '18', null, null);
INSERT INTO `lbj_temp` VALUES ('317', '冷却管', '4949 24.100', null, '件', null, '16', null, null);
INSERT INTO `lbj_temp` VALUES ('318', '立铣刀', '4736.120.100(看不到）', null, '个', null, '35', null, null);
INSERT INTO `lbj_temp` VALUES ('319', '热涨刀柄', 'HSK100A 20.00', null, '个', null, '43', null, null);
INSERT INTO `lbj_temp` VALUES ('320', '热胀刀柄', '4736 112.100', null, '个', null, '18', null, null);
INSERT INTO `lbj_temp` VALUES ('322', '引导钻', '5510 10.4(看不到）', null, '个', null, '16', null, null);
INSERT INTO `lbj_temp` VALUES ('323', '主刀柄', 'C8-390.410-100 120A', null, '个', null, '10', null, null);
INSERT INTO `lbj_temp` VALUES ('324', '刀盘', 'R390-100C8-71M', null, '个', null, '15', null, null);
INSERT INTO `lbj_temp` VALUES ('325', '刀片', 'R390-180608M-KM', null, '个', null, '18', null, null);
INSERT INTO `lbj_temp` VALUES ('326', '水嘴', '5692 022-06', null, '个', null, '10', null, null);

-- ----------------------------
-- Table structure for `lbj_tuihuan`
-- ----------------------------
DROP TABLE IF EXISTS `lbj_tuihuan`;
CREATE TABLE `lbj_tuihuan` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `thbz` varchar(20) NOT NULL,
  `thr` varchar(10) NOT NULL,
  `thrq` date NOT NULL,
  `thyy` text,
  `jbr` varchar(10) NOT NULL,
  `jbrq` date NOT NULL,
  `djzt` int(2) DEFAULT NULL,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `danhao` (`danhao`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbj_tuihuan
-- ----------------------------
INSERT INTO `lbj_tuihuan` VALUES ('14', 'LBJTH_170726001', '先锋一班', '小壮', '2017-07-26', '机床退还。', '赵经手', '2017-07-26', '1');
INSERT INTO `lbj_tuihuan` VALUES ('15', 'LBJTH_170726002', '先锋一班', '123', '2017-07-26', '机床退还。', '赵经手', '2017-07-26', '0');

-- ----------------------------
-- Table structure for `lbj_tuihuanmingxi`
-- ----------------------------
DROP TABLE IF EXISTS `lbj_tuihuanmingxi`;
CREATE TABLE `lbj_tuihuanmingxi` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `danhao` char(20) NOT NULL,
  `lbjmc` char(20) DEFAULT NULL,
  `lbjgg` char(20) DEFAULT NULL,
  `lbjxh` varchar(50) NOT NULL,
  `sl` int(11) NOT NULL,
  `dw` varchar(10) NOT NULL,
  `jcbm` char(20) DEFAULT NULL,
  `gx` char(20) DEFAULT NULL,
  `djgbm` varchar(20) DEFAULT NULL,
  `cfwz` varchar(20) DEFAULT NULL,
  `bz` tinytext,
  PRIMARY KEY (`xh`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbj_tuihuanmingxi
-- ----------------------------
INSERT INTO `lbj_tuihuanmingxi` VALUES ('37', 'LBJTH_170726001', '丝锥', '', 'M39*2', '5', '件', 'FMS-1#机', 'OP-20', 'Kardex 1#柜', '01层', '');
INSERT INTO `lbj_tuihuanmingxi` VALUES ('38', 'LBJTH_170726001', '丝锥', '', '040-3061', '5', '件', 'FMS-1#机', 'OP-20', 'Kardex 1#柜', '01层', '');
INSERT INTO `lbj_tuihuanmingxi` VALUES ('39', 'LBJTH_170726001', '丝锥', '', '5550-m8', '5', '件', 'FMS-1#机', 'OP-20', 'Kardex 1#柜', '01层', '');
INSERT INTO `lbj_tuihuanmingxi` VALUES ('40', 'LBJTH_170726001', '丝锥', '', '819-M12', '5', '件', 'FMS-1#机', 'OP-20', 'Kardex 1#柜', '01层', '');

-- ----------------------------
-- Table structure for `lingbujian`
-- ----------------------------
DROP TABLE IF EXISTS `lingbujian`;
CREATE TABLE `lingbujian` (
  `xh` int(11) NOT NULL AUTO_INCREMENT,
  `xinghao` char(50) NOT NULL,
  `mc` varchar(50) NOT NULL,
  `dj` float(6,2) NOT NULL,
  `yssm` float(6,2) NOT NULL,
  `zt` varchar(10) DEFAULT NULL,
  `img` blob,
  `bz` tinytext,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `lingbujian_ix1` (`xinghao`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lingbujian
-- ----------------------------
INSERT INTO `lingbujian` VALUES ('6', 'BT16', '夹头', '101.00', '100.00', null, null, '546');
INSERT INTO `lingbujian` VALUES ('7', 'BT50', '拉丁', '91.00', '100.00', null, null, '634');
INSERT INTO `lingbujian` VALUES ('8', 'BT520', '夹头', '13.00', '100.00', null, null, '这是个夹头');
INSERT INTO `lingbujian` VALUES ('9', 'BT80', '刀片', '300.00', '100.00', null, null, '463');
INSERT INTO `lingbujian` VALUES ('10', 'Colorman8080', '刀杆', '200.00', '100.00', null, null, '');
INSERT INTO `lingbujian` VALUES ('11', 'GS39032', '夹头', '70.00', '100.00', null, null, '');
INSERT INTO `lingbujian` VALUES ('12', 'HSK100', '丝锥', '108.00', '100.00', null, null, '344');
INSERT INTO `lingbujian` VALUES ('13', 'HSK20', '铣刀', '108.00', '100.00', null, null, '111');
INSERT INTO `lingbujian` VALUES ('14', 'HSK212', '铣刀', '108.00', '100.00', null, null, '这是一把刀');
INSERT INTO `lingbujian` VALUES ('15', 'HSK40', '钻头', '108.00', '100.00', null, null, '23234');
INSERT INTO `lingbujian` VALUES ('16', 'HSK52212', '铣刀', '108.00', '100.00', null, null, '这是一把刀');
INSERT INTO `lingbujian` VALUES ('17', 'HSK60', '刀柄', '108.00', '100.00', null, null, '45');
INSERT INTO `lingbujian` VALUES ('18', 'HSK80', '刀杆', '108.00', '100.00', null, null, '');
INSERT INTO `lingbujian` VALUES ('19', 'lab212', '212实验室', '520.00', '100.00', null, null, '我爱实验室');
INSERT INTO `lingbujian` VALUES ('20', 'S1608032', '刀套', '421.00', '100.00', null, null, 'cxzvg');
INSERT INTO `lingbujian` VALUES ('21', ' R331.32-080Q27EM10.00', '铣刀', '6948.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('22', ' N331.1A-084508E-KL3220', '刀片', '105.60', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('23', ' SCLCR2020K12', '车刀杆', '105.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('24', 'SOMT120408PDER-GACK200', '刀片', '51.76', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('25', ' C4-391.01-40080A', '加长接杆', '1997.50', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('26', ' R390-044C4-45M', '铣刀', '6819.12', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('27', 'R390-11T316M-KM1020', '刀片 ', '86.13', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('28', ' C3-391.01-32060A', '刀柄', '2275.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('29', ' 870-2500-25-Pm4234', '刀片', '1155.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('30', ' C4-391.27-25*077', '钻头接柄', '2119.50', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('31', '870-2500-25L32-8', '加长U钻 ', '5455.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('32', ' 4736 308.100', '热涨刀柄', '2956.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('33', ' 3Z6070-18.5', '直柄硬质合金钻头', '3290.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('34', '3Z750-19.70L', '硬质合金内冷铣铰刀 ', '3450.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('35', ' 3Z1025-20.05SL', '硬质合金内冷铰刀', '3650.00', '100.00', null, null, '下落不明');
INSERT INTO `lingbujian` VALUES ('36', ' C5-390.410-100-100A', '主刀柄', '3667.75', '100.00', null, null, '东BW');
INSERT INTO `lingbujian` VALUES ('37', 'C8-390.410-100120A', '主刀柄 ', '4216.00', '100.00', null, null, '');
INSERT INTO `lingbujian` VALUES ('38', ' 5692022-06', '冷却管  ', '318.75', '100.00', null, null, '1-23');
INSERT INTO `lingbujian` VALUES ('39', ' TXP20-D24.7A30P72', '非标倒角刀', '1050.00', '100.00', null, null, '1-9');
INSERT INTO `lingbujian` VALUES ('40', ' C3-390.410-100 080A', '刀柄', '3302.25', '100.00', null, null, '');
INSERT INTO `lingbujian` VALUES ('41', 'C6-390.410-100110A', '主刀柄', '3846.25', '100.00', null, null, '');
INSERT INTO `lingbujian` VALUES ('42', ' C4-390.410-100090A', 'HSK Capto刀柄', '3476.50', '100.00', null, null, '');

-- ----------------------------
-- Table structure for `rucang`
-- ----------------------------
DROP TABLE IF EXISTS `rucang`;
CREATE TABLE `rucang` (
  `xh` int(11) NOT NULL AUTO_INCREMENT,
  `rcdh` char(20) NOT NULL,
  `rclx` varchar(20) NOT NULL,
  `rcrq` date NOT NULL,
  `cj` varchar(20) NOT NULL,
  `bm` varchar(20) NOT NULL,
  `czy` varchar(20) NOT NULL,
  `bz` text,
  PRIMARY KEY (`xh`),
  UNIQUE KEY `rucang_ix1` (`rcdh`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rucang
-- ----------------------------
INSERT INTO `rucang` VALUES ('1', 'RC_170422001', '刃磨', '2017-04-22', '机一车间', '导管中兴', '小赵', null);
INSERT INTO `rucang` VALUES ('2', 'RC_170430001', '全新采购', '2017-04-30', '机一车间', '刀管中心', '孙孙', '1234567');
INSERT INTO `rucang` VALUES ('3', 'RC_170430002', '退还', '2017-04-30', '机一车间', '刀管中心', 'bule', null);
INSERT INTO `rucang` VALUES ('4', 'RC_170501001', '采购入仓', '2017-05-01', '机一车间', 'dgzxjack', 'jack', 'test');
INSERT INTO `rucang` VALUES ('5', 'RC_170501002', '采购入仓', '2017-05-01', '机一车间', '刀管中心dgzx', 'Jack', 'have！有入仓明细！');
INSERT INTO `rucang` VALUES ('6', 'RC_170501003', '采购入仓', '2017-05-01', '机一车间', '刀管中心', 'Jack', '有入仓明细！');
INSERT INTO `rucang` VALUES ('7', 'RC_170503001', '采购入仓', '2017-05-03', '机一车间', '刀管中心', 'Jack', 'youmingxi');
INSERT INTO `rucang` VALUES ('8', 'RC_170504001', '已刃磨入仓', '2017-05-04', '机一车间', '刀管中心', 'Jack', 'xialakuangxuanze!');
INSERT INTO `rucang` VALUES ('9', 'RC_170504002', '机床退还入仓', '2017-05-04', '机一车间', '刀管中心', 'xiaomo', 'xiaomo');

-- ----------------------------
-- Table structure for `rucangmingxi`
-- ----------------------------
DROP TABLE IF EXISTS `rucangmingxi`;
CREATE TABLE `rucangmingxi` (
  `xh` int(11) NOT NULL AUTO_INCREMENT,
  `rcdh` char(20) NOT NULL,
  `xinghao` varchar(50) NOT NULL,
  `mc` varchar(50) NOT NULL,
  `gg` varchar(10) NOT NULL,
  `sl` int(10) NOT NULL,
  `djgbm` char(10) NOT NULL,
  `cfwz` varchar(10) NOT NULL,
  `bz` text,
  PRIMARY KEY (`xh`),
  KEY `rucangmingxi_fk1` (`rcdh`),
  KEY `rucangmingxi_fk2` (`xinghao`),
  CONSTRAINT `rucangmingxi_fk1` FOREIGN KEY (`rcdh`) REFERENCES `rucang` (`rcdh`),
  CONSTRAINT `rucangmingxi_fk2` FOREIGN KEY (`xinghao`) REFERENCES `lingbujian` (`xinghao`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rucangmingxi
-- ----------------------------
INSERT INTO `rucangmingxi` VALUES ('1', 'RC_170422001', 'lab212', '212实验室', '件', '10', '1002', '#20', '');
INSERT INTO `rucangmingxi` VALUES ('2', 'RC_170422001', 'GS39032', '夹头', '件', '10', '1002', '#21', '');
INSERT INTO `rucangmingxi` VALUES ('3', 'RC_170422001', 'S1608032', '刀套', '件', '20', '1002', '#22', '');
INSERT INTO `rucangmingxi` VALUES ('4', 'RC_170430001', 'BT520', '夹头', '件', '10', '1001', '#3', '');
INSERT INTO `rucangmingxi` VALUES ('5', 'RC_170430001', ' N331.1A-084508E-KL3220', '刀片', '盒', '40', '1001', '#5', '');
INSERT INTO `rucangmingxi` VALUES ('6', 'RC_170430001', ' SCLCR2020K12', '车刀杆', '件', '5', '1002', '#4', '');
INSERT INTO `rucangmingxi` VALUES ('7', 'RC_170430001', 'SOMT120408PDER-GACK200', '刀片', '盒', '20', '1001', '#5', '');
INSERT INTO `rucangmingxi` VALUES ('8', 'RC_170430001', ' C4-391.01-40080A', '加长接杆', '件', '5', '1001', '#6', '');
INSERT INTO `rucangmingxi` VALUES ('9', 'RC_170430001', 'R390-11T316M-KM1020', '刀片 ', '盒', '20', '1001', '#5', '');
INSERT INTO `rucangmingxi` VALUES ('10', 'RC_170430002', 'BT520', '夹头', '件', '5', '1001', '#2', '');
INSERT INTO `rucangmingxi` VALUES ('11', 'RC_170430002', ' C3-391.01-32060A', '刀柄', '件', '6', '1001', '#7', '');
INSERT INTO `rucangmingxi` VALUES ('12', 'RC_170430002', ' 870-2500-25-Pm4234', '刀片', '盒', '40', '1001', '#5', '');
INSERT INTO `rucangmingxi` VALUES ('13', 'RC_170501001', 'lab212', '212实验室', '盒', '10', '1002', '#20', '');
INSERT INTO `rucangmingxi` VALUES ('14', 'RC_170501001', ' C4-391.27-25*077', '钻头接柄', '件', '5', '1002', '#21', '');
INSERT INTO `rucangmingxi` VALUES ('15', 'RC_170501001', '870-2500-25L32-8', '加长U钻 ', '件', '5', '1002', '#22', '');
INSERT INTO `rucangmingxi` VALUES ('16', 'RC_170501001', ' 4736 308.100', '热涨刀柄', '件', '6', '1001', '#7', '');
INSERT INTO `rucangmingxi` VALUES ('17', 'RC_170501001', 'C8-390.410-100120A', '主刀柄 ', '件', '6', '1001', '#7', '');
INSERT INTO `rucangmingxi` VALUES ('18', 'RC_170501001', ' 5692022-06', '冷却管  ', '件', '4', '1002', '#8', '');
INSERT INTO `rucangmingxi` VALUES ('19', 'RC_170501002', 'HSK100', '丝锥', '把', '56', '1001', '#9', '');
INSERT INTO `rucangmingxi` VALUES ('20', 'RC_170501002', 'C6-390.410-100110A', '主刀柄', '件', '6', '1001', '#7', '');
INSERT INTO `rucangmingxi` VALUES ('21', 'RC_170501003', ' C4-390.410-100090A', 'HSK Capto刀柄', '件', '4', '1001', '#7', '');
INSERT INTO `rucangmingxi` VALUES ('22', 'RC_170501003', 'Colorman8080', '刀杆', '件', '4', '1001', '#8', '');
INSERT INTO `rucangmingxi` VALUES ('23', 'RC_170501003', 'GS39032', '夹头', '件', '4', '1001', '#9', '');
INSERT INTO `rucangmingxi` VALUES ('24', 'RC_170503001', 'HSK100', '丝锥', '件', '4', '1001', '#10', '');
INSERT INTO `rucangmingxi` VALUES ('25', 'RC_170503001', ' N331.1A-084508E-KL3220', '刀片', '盒', '50', '1001', '#5', '');
INSERT INTO `rucangmingxi` VALUES ('26', 'RC_170503001', ' SCLCR2020K12', '车刀杆', '件', '3', '1002', '#4', '');
INSERT INTO `rucangmingxi` VALUES ('27', 'RC_170504001', 'SOMT120408PDER-GACK200', '刀片', '盒', '60', '1001', '#5', '');
INSERT INTO `rucangmingxi` VALUES ('28', 'RC_170504001', ' C4-391.01-40080A', '加长接杆', '件', '60', '1001', '#6', '');
INSERT INTO `rucangmingxi` VALUES ('29', 'RC_170504002', 'R390-11T316M-KM1020', '刀片 ', '盒', '70', '1001', '#5', '');
INSERT INTO `rucangmingxi` VALUES ('30', 'RC_170504002', ' C3-391.01-32060A', '刀柄', '件', '6', '1001', '#7', '');
INSERT INTO `rucangmingxi` VALUES ('31', 'RC_170504002', ' 870-2500-25-Pm4234', '刀片', '盒', '50', '1001', '#5', '');

-- ----------------------------
-- Table structure for `temp`
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `xh` int(10) NOT NULL AUTO_INCREMENT,
  `xinghao` varchar(50) NOT NULL,
  `szsb` varchar(50) NOT NULL,
  UNIQUE KEY `temp_ix1` (`xh`)
) ENGINE=InnoDB AUTO_INCREMENT=2355 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp
-- ----------------------------
INSERT INTO `temp` VALUES ('1', 'Φ100铣刀(T1001)', '东BW');
INSERT INTO `temp` VALUES ('2', 'Φ100铣刀(T1001)', '东BW');
INSERT INTO `temp` VALUES ('3', 'Φ100铣刀(T1001)', '东BW');
INSERT INTO `temp` VALUES ('4', 'Φ100铣刀(T1001)', '东BW');
INSERT INTO `temp` VALUES ('5', 'Φ8.5-25/120°(T1002)', '东BW');
INSERT INTO `temp` VALUES ('6', 'Φ8.5-25/120°(T1002)', '东BW');
INSERT INTO `temp` VALUES ('7', 'Φ8.5-25/120°(T1002)', '东BW');
INSERT INTO `temp` VALUES ('8', 'Φ8.5-25/120°(T1002)', '东BW');
INSERT INTO `temp` VALUES ('9', 'Φ8.5-25/120°(T1002)', '东BW');
INSERT INTO `temp` VALUES ('10', 'M10×1 丝锥(T1003)', '东BW');
INSERT INTO `temp` VALUES ('11', 'M10×1 丝锥(T1003)', '东BW');
INSERT INTO `temp` VALUES ('12', 'M10×1 丝锥(T1003)', '东BW');
INSERT INTO `temp` VALUES ('13', 'M10×1 丝锥(T1003)', '东BW');
INSERT INTO `temp` VALUES ('14', 'M10×1 丝锥(T1003)', '东BW');
INSERT INTO `temp` VALUES ('15', 'M10×1 丝锥(T1003)', '东BW');
INSERT INTO `temp` VALUES ('16', 'Φ6.8-19/120°(T1004)', '东BW');
INSERT INTO `temp` VALUES ('17', 'Φ6.8-19/120°(T1004)', '东BW');
INSERT INTO `temp` VALUES ('18', 'Φ6.8-19/120°(T1004)', '东BW');
INSERT INTO `temp` VALUES ('19', 'Φ6.8-19/120°(T1004)', '东BW');
INSERT INTO `temp` VALUES ('20', 'M8 丝锥(T1005)', '东BW');
INSERT INTO `temp` VALUES ('21', 'M8 丝锥(T1005)', '东BW');
INSERT INTO `temp` VALUES ('22', 'M8 丝锥(T1005)', '东BW');
INSERT INTO `temp` VALUES ('23', 'M8 丝锥(T1005)', '东BW');
INSERT INTO `temp` VALUES ('24', 'M8 丝锥(T1005)', '东BW');
INSERT INTO `temp` VALUES ('25', 'M8 丝锥(T1005)', '东BW');
INSERT INTO `temp` VALUES ('26', 'Φ22.1-35/90°(T1006)', '东BW');
INSERT INTO `temp` VALUES ('27', 'Φ22.1-35/90°(T1006)', '东BW');
INSERT INTO `temp` VALUES ('28', 'Φ22.1-35/90°(T1006)', '东BW');
INSERT INTO `temp` VALUES ('29', 'Φ22.1-35/90°(T1006)', '东BW');
INSERT INTO `temp` VALUES ('30', 'Φ22.1-35/90°(T1006)', '东BW');
INSERT INTO `temp` VALUES ('31', 'Φ22.1-35/90°(T1006)', '东BW');
INSERT INTO `temp` VALUES ('32', 'Φ11.8-16/120°(T1007)', '东BW');
INSERT INTO `temp` VALUES ('33', 'Φ11.8-16/120°(T1007)', '东BW');
INSERT INTO `temp` VALUES ('34', 'Φ11.8-16/120°(T1007)', '东BW');
INSERT INTO `temp` VALUES ('35', 'Φ11.8-16/120°(T1007)', '东BW');
INSERT INTO `temp` VALUES ('36', 'Φ12F9-11(T1008)', '东BW');
INSERT INTO `temp` VALUES ('37', 'Φ12F9-11(T1008)', '东BW');
INSERT INTO `temp` VALUES ('38', 'Φ12F9-11(T1008)', '东BW');
INSERT INTO `temp` VALUES ('39', 'Φ12F9-11(T1008)', '东BW');
INSERT INTO `temp` VALUES ('40', 'Φ100铣刀(T1009)', '东BW');
INSERT INTO `temp` VALUES ('41', 'Φ100铣刀(T1009)', '东BW');
INSERT INTO `temp` VALUES ('42', 'Φ100铣刀(T1009)', '东BW');
INSERT INTO `temp` VALUES ('43', 'Φ100铣刀(T1009)', '东BW');
INSERT INTO `temp` VALUES ('44', 'Φ20.5-30/Ø32 (T1010)', '东BW');
INSERT INTO `temp` VALUES ('45', 'Φ20.5-30/Ø32 (T1010)', '东BW');
INSERT INTO `temp` VALUES ('46', 'Φ20.5-30/Ø32 (T1010)', '东BW');
INSERT INTO `temp` VALUES ('47', 'Φ20.5-30/Ø32 (T1010)', '东BW');
INSERT INTO `temp` VALUES ('48', 'Φ20.5-30/Ø32 (T1010)', '东BW');
INSERT INTO `temp` VALUES ('49', 'Φ20.5-30/Ø32 (T1010)', '东BW');
INSERT INTO `temp` VALUES ('50', 'M22x1.5 (T1011)', '东BW');
INSERT INTO `temp` VALUES ('51', 'M22x1.5 (T1011)', '东BW');
INSERT INTO `temp` VALUES ('52', 'M22x1.5 (T1011)', '东BW');
INSERT INTO `temp` VALUES ('53', 'M22x1.5 (T1011)', '东BW');
INSERT INTO `temp` VALUES ('54', 'Φ10.3-30/120°(T1012)', '东BW');
INSERT INTO `temp` VALUES ('55', 'Φ10.3-30/120°(T1012)', '东BW');
INSERT INTO `temp` VALUES ('56', 'Φ10.3-30/120°(T1012)', '东BW');
INSERT INTO `temp` VALUES ('57', 'Φ10.3-30/120°(T1012)', '东BW');
INSERT INTO `temp` VALUES ('58', 'M12×6H丝锥（T1013)', '东BW');
INSERT INTO `temp` VALUES ('59', 'M12×6H丝锥（T1013)', '东BW');
INSERT INTO `temp` VALUES ('60', 'M12×6H丝锥（T1013)', '东BW');
INSERT INTO `temp` VALUES ('61', 'M12×6H丝锥（T1013)', '东BW');
INSERT INTO `temp` VALUES ('62', 'Φ84铣刀(T1015)', '东BW');
INSERT INTO `temp` VALUES ('63', 'Φ84铣刀(T1015)', '东BW');
INSERT INTO `temp` VALUES ('64', 'Φ84铣刀(T1015)', '东BW');
INSERT INTO `temp` VALUES ('65', 'Φ84铣刀(T1015)', '东BW');
INSERT INTO `temp` VALUES ('66', 'Φ84铣刀(T1015)', '东BW');
INSERT INTO `temp` VALUES ('67', 'Φ109.5/90°(T1016)', '东BW');
INSERT INTO `temp` VALUES ('68', 'Φ109.5/90°(T1016)', '东BW');
INSERT INTO `temp` VALUES ('69', 'Φ109.5/90°(T1016)', '东BW');
INSERT INTO `temp` VALUES ('70', 'Φ109.5/90°(T1016)', '东BW');
INSERT INTO `temp` VALUES ('71', 'Φ109.5/90°(T1016)', '东BW');
INSERT INTO `temp` VALUES ('72', 'Φ109.5/90°(T1016)', '东BW');
INSERT INTO `temp` VALUES ('73', 'Φ119.5/90°(T1017)', '东BW');
INSERT INTO `temp` VALUES ('74', 'Φ119.5/90°(T1017)', '东BW');
INSERT INTO `temp` VALUES ('75', 'Φ119.5/90°(T1017)', '东BW');
INSERT INTO `temp` VALUES ('76', 'Φ119.5/90°(T1017)', '东BW');
INSERT INTO `temp` VALUES ('77', 'Φ119.5/90°(T1017)', '东BW');
INSERT INTO `temp` VALUES ('78', 'Φ119.5/90°(T1017)', '东BW');
INSERT INTO `temp` VALUES ('79', 'Φ129.5/90°(T1018)', '东BW');
INSERT INTO `temp` VALUES ('80', 'Φ129.5/90°(T1018)', '东BW');
INSERT INTO `temp` VALUES ('81', 'Φ129.5/90°(T1018)', '东BW');
INSERT INTO `temp` VALUES ('82', 'Φ129.5/90°(T1018)', '东BW');
INSERT INTO `temp` VALUES ('83', 'Φ129.5/90°(T1018)', '东BW');
INSERT INTO `temp` VALUES ('84', 'Φ129.5/90°(T1018)', '东BW');
INSERT INTO `temp` VALUES ('85', 'D250 刀检(T1019)', '东BW');
INSERT INTO `temp` VALUES ('86', 'D250 刀检(T1019)', '东BW');
INSERT INTO `temp` VALUES ('87', 'D250 刀检(T1019)', '东BW');
INSERT INTO `temp` VALUES ('88', 'D250 刀检(T1019)', '东BW');
INSERT INTO `temp` VALUES ('89', 'Φ50倒角铣刀(T1020)', '东BW');
INSERT INTO `temp` VALUES ('90', 'Φ50倒角铣刀(T1020)', '东BW');
INSERT INTO `temp` VALUES ('91', 'Φ50倒角铣刀(T1020)', '东BW');
INSERT INTO `temp` VALUES ('92', 'Φ50倒角铣刀(T1020)', '东BW');
INSERT INTO `temp` VALUES ('93', 'Φ50倒角铣刀(T1020)', '东BW');
INSERT INTO `temp` VALUES ('94', 'Φ17.5-42/120°(T1021)', '东BW');
INSERT INTO `temp` VALUES ('95', 'Φ17.5-42/120°(T1021)', '东BW');
INSERT INTO `temp` VALUES ('96', 'Φ17.5-42/120°(T1021)', '东BW');
INSERT INTO `temp` VALUES ('97', 'Φ17.5-42/120°(T1021)', '东BW');
INSERT INTO `temp` VALUES ('98', 'Φ17.5-42/120°(T1021)', '东BW');
INSERT INTO `temp` VALUES ('99', 'Φ17.5-42/120°(T1021)', '东BW');
INSERT INTO `temp` VALUES ('100', 'Φ17.5-42/120°(T1021)', '东BW');
INSERT INTO `temp` VALUES ('101', 'M20丝锥(T1022)', '东BW');
INSERT INTO `temp` VALUES ('102', 'M20丝锥(T1022)', '东BW');
INSERT INTO `temp` VALUES ('103', 'M20丝锥(T1022)', '东BW');
INSERT INTO `temp` VALUES ('104', 'M20丝锥(T1022)', '东BW');
INSERT INTO `temp` VALUES ('105', 'M20丝锥(T1022)', '东BW');
INSERT INTO `temp` VALUES ('106', 'Φ10.8 /120°(T1023)', '东BW');
INSERT INTO `temp` VALUES ('107', 'Φ10.8 /120°(T1023)', '东BW');
INSERT INTO `temp` VALUES ('108', 'Φ10.8 /120°(T1023)', '东BW');
INSERT INTO `temp` VALUES ('109', 'Φ10.8 /120°(T1023)', '东BW');
INSERT INTO `temp` VALUES ('110', 'Φ10.8/8.65/120°(T1024)', '东BW');
INSERT INTO `temp` VALUES ('111', 'Φ10.8/8.65/120°(T1024)', '东BW');
INSERT INTO `temp` VALUES ('112', 'Φ10.8/8.65/120°(T1024)', '东BW');
INSERT INTO `temp` VALUES ('113', 'Φ10.8/8.65/120°(T1024)', '东BW');
INSERT INTO `temp` VALUES ('114', 'M12×1.25丝锥(T1025)', '东BW');
INSERT INTO `temp` VALUES ('115', 'M12×1.25丝锥(T1025)', '东BW');
INSERT INTO `temp` VALUES ('116', 'M12×1.25丝锥(T1025)', '东BW');
INSERT INTO `temp` VALUES ('117', 'M12×1.25丝锥(T1025)', '东BW');
INSERT INTO `temp` VALUES ('118', 'Φ8.65硬钻(T1028)', '东BW');
INSERT INTO `temp` VALUES ('119', 'Φ8.65硬钻(T1028)', '东BW');
INSERT INTO `temp` VALUES ('120', 'Φ8.65硬钻(T1028)', '东BW');
INSERT INTO `temp` VALUES ('121', 'Φ8.65硬钻(T1028)', '东BW');
INSERT INTO `temp` VALUES ('122', 'Φ9-90/120°（T1029)', '东BW');
INSERT INTO `temp` VALUES ('123', 'Φ9-90/120°（T1029)', '东BW');
INSERT INTO `temp` VALUES ('124', 'Φ9-90/120°（T1029)', '东BW');
INSERT INTO `temp` VALUES ('125', 'Φ9-90/120°（T1029)', '东BW');
INSERT INTO `temp` VALUES ('126', 'M10x1丝锥(T1030)', '东BW');
INSERT INTO `temp` VALUES ('127', 'M10x1丝锥(T1030)', '东BW');
INSERT INTO `temp` VALUES ('128', 'M10x1丝锥(T1030)', '东BW');
INSERT INTO `temp` VALUES ('129', 'M10x1丝锥(T1030)', '东BW');
INSERT INTO `temp` VALUES ('130', 'Φ29阶梯钻(T1031)', '东BW');
INSERT INTO `temp` VALUES ('131', 'Φ29阶梯钻(T1031)', '东BW');
INSERT INTO `temp` VALUES ('132', 'Φ29阶梯钻(T1031)', '东BW');
INSERT INTO `temp` VALUES ('133', 'Φ29阶梯钻(T1031)', '东BW');
INSERT INTO `temp` VALUES ('134', 'Φ29阶梯钻(T1031)', '东BW');
INSERT INTO `temp` VALUES ('135', 'Φ29阶梯钻(T1031)', '东BW');
INSERT INTO `temp` VALUES ('136', 'Φ29阶梯钻(T1031)', '东BW');
INSERT INTO `temp` VALUES ('137', 'Φ31.5镗刀(T1032)', '东BW');
INSERT INTO `temp` VALUES ('138', 'Φ31.5镗刀(T1032)', '东BW');
INSERT INTO `temp` VALUES ('139', 'Φ31.5镗刀(T1032)', '东BW');
INSERT INTO `temp` VALUES ('140', 'Φ31.5镗刀(T1032)', '东BW');
INSERT INTO `temp` VALUES ('141', 'Φ31.5镗刀(T1032)', '东BW');
INSERT INTO `temp` VALUES ('142', 'Φ31.5镗刀(T1032)', '东BW');
INSERT INTO `temp` VALUES ('143', 'Φ32精镗(T1033)', '东BW');
INSERT INTO `temp` VALUES ('144', 'Φ32精镗(T1033)', '东BW');
INSERT INTO `temp` VALUES ('145', 'Φ32精镗(T1033)', '东BW');
INSERT INTO `temp` VALUES ('146', 'Φ32精镗(T1033)', '东BW');
INSERT INTO `temp` VALUES ('147', 'Φ32精镗(T1033)', '东BW');
INSERT INTO `temp` VALUES ('148', 'Φ32精镗(T1033)', '东BW');
INSERT INTO `temp` VALUES ('149', 'Φ25扩孔(T1034)', '东BW');
INSERT INTO `temp` VALUES ('150', 'Φ25扩孔(T1034)', '东BW');
INSERT INTO `temp` VALUES ('151', 'Φ25扩孔(T1034)', '东BW');
INSERT INTO `temp` VALUES ('152', 'Φ25扩孔(T1034)', '东BW');
INSERT INTO `temp` VALUES ('153', 'Φ80铣刀（T1035）', '东BW');
INSERT INTO `temp` VALUES ('154', 'Φ80铣刀（T1035）', '东BW');
INSERT INTO `temp` VALUES ('155', 'Φ80铣刀（T1035）', '东BW');
INSERT INTO `temp` VALUES ('156', 'Φ80铣刀（T1035）', '东BW');
INSERT INTO `temp` VALUES ('157', 'Φ80铣刀（T1035）', '东BW');
INSERT INTO `temp` VALUES ('158', 'Φ17-47/90°(T1036)', '东BW');
INSERT INTO `temp` VALUES ('159', 'Φ17-47/90°(T1036)', '东BW');
INSERT INTO `temp` VALUES ('160', 'Φ17-47/90°(T1036)', '东BW');
INSERT INTO `temp` VALUES ('161', 'Φ17-47/90°(T1036)', '东BW');
INSERT INTO `temp` VALUES ('162', 'Φ17-47/90°(T1036)', '东BW');
INSERT INTO `temp` VALUES ('163', 'Φ17-47/90°(T1036)', '东BW');
INSERT INTO `temp` VALUES ('164', 'Φ14.5/120°（T1037)', '东BW');
INSERT INTO `temp` VALUES ('165', 'Φ14.5/120°（T1037)', '东BW');
INSERT INTO `temp` VALUES ('166', 'Φ14.5/120°（T1037)', '东BW');
INSERT INTO `temp` VALUES ('167', 'Φ14.5/120°（T1037)', '东BW');
INSERT INTO `temp` VALUES ('168', 'M16x1.5丝锥(T1038)', '东BW');
INSERT INTO `temp` VALUES ('169', 'M16x1.5丝锥(T1038)', '东BW');
INSERT INTO `temp` VALUES ('170', 'M16x1.5丝锥(T1038)', '东BW');
INSERT INTO `temp` VALUES ('171', 'M16x1.5丝锥(T1038)', '东BW');
INSERT INTO `temp` VALUES ('172', 'Φ14.5-20/90°(T1039)', '东BW');
INSERT INTO `temp` VALUES ('173', 'Φ14.5-20/90°(T1039)', '东BW');
INSERT INTO `temp` VALUES ('174', 'Φ14.5-20/90°(T1039)', '东BW');
INSERT INTO `temp` VALUES ('175', 'Φ14.5-20/90°(T1039)', '东BW');
INSERT INTO `temp` VALUES ('176', 'Φ15R8精镗(T1040)', '东BW');
INSERT INTO `temp` VALUES ('177', 'Φ15R8精镗(T1040)', '东BW');
INSERT INTO `temp` VALUES ('178', 'Φ15R8精镗(T1040)', '东BW');
INSERT INTO `temp` VALUES ('179', 'Φ15R8精镗(T1040)', '东BW');
INSERT INTO `temp` VALUES ('180', 'Φ15R8精镗(T1040)', '东BW');
INSERT INTO `temp` VALUES ('181', 'Φ15F9精镗(T1041)', '东BW');
INSERT INTO `temp` VALUES ('182', 'Φ15F9精镗(T1041)', '东BW');
INSERT INTO `temp` VALUES ('183', 'Φ15F9精镗(T1041)', '东BW');
INSERT INTO `temp` VALUES ('184', 'Φ15F9精镗(T1041)', '东BW');
INSERT INTO `temp` VALUES ('185', 'Φ15F9精镗(T1041)', '东BW');
INSERT INTO `temp` VALUES ('186', 'Φ6.8-17/120°(T1042)', '东BW');
INSERT INTO `temp` VALUES ('187', 'Φ6.8-17/120°(T1042)', '东BW');
INSERT INTO `temp` VALUES ('188', 'Φ6.8-17/120°(T1042)', '东BW');
INSERT INTO `temp` VALUES ('189', 'Φ6.8-17/120°(T1042)', '东BW');
INSERT INTO `temp` VALUES ('190', 'Φ6.8-17/120°(T1042)', '东BW');
INSERT INTO `temp` VALUES ('191', 'Φ6.8-17/120°(T1042)', '东BW');
INSERT INTO `temp` VALUES ('192', 'Φ18F9精镗(T1044)', '东BW');
INSERT INTO `temp` VALUES ('193', 'Φ18F9精镗(T1044)', '东BW');
INSERT INTO `temp` VALUES ('194', 'Φ18F9精镗(T1044)', '东BW');
INSERT INTO `temp` VALUES ('195', 'Φ18F9精镗(T1044)', '东BW');
INSERT INTO `temp` VALUES ('196', 'Φ18F9精镗(T1044)', '东BW');
INSERT INTO `temp` VALUES ('197', 'Φ16 / Φ17.5(T1043) ', '东BW');
INSERT INTO `temp` VALUES ('198', 'Φ16 / Φ17.5(T1043) ', '东BW');
INSERT INTO `temp` VALUES ('199', 'Φ16 / Φ17.5(T1043) ', '东BW');
INSERT INTO `temp` VALUES ('200', 'Φ16 / Φ17.5(T1043) ', '东BW');
INSERT INTO `temp` VALUES ('201', 'Φ16 / Φ17.5(T1043) ', '东BW');
INSERT INTO `temp` VALUES ('202', 'Φ19.5-20/90°(T1045)', '东BW');
INSERT INTO `temp` VALUES ('203', 'Φ19.5-20/90°(T1045)', '东BW');
INSERT INTO `temp` VALUES ('204', 'Φ19.5-20/90°(T1045)', '东BW');
INSERT INTO `temp` VALUES ('205', 'Φ20H9枪钻(T1046)', '东BW');
INSERT INTO `temp` VALUES ('206', 'Φ20H9枪钻(T1046)', '东BW');
INSERT INTO `temp` VALUES ('207', 'Φ20H9枪钻(T1046)', '东BW');
INSERT INTO `temp` VALUES ('208', 'Φ27硬钻(T1047)', '东BW');
INSERT INTO `temp` VALUES ('209', 'Φ27硬钻(T1047)', '东BW');
INSERT INTO `temp` VALUES ('210', 'Φ27硬钻(T1047)', '东BW');
INSERT INTO `temp` VALUES ('211', 'Φ27硬钻(T1047)', '东BW');
INSERT INTO `temp` VALUES ('212', 'Φ27硬钻(T1047)', '东BW');
INSERT INTO `temp` VALUES ('213', 'Φ29.5半精镗(T1048)', '东BW');
INSERT INTO `temp` VALUES ('214', 'Φ29.5半精镗(T1048)', '东BW');
INSERT INTO `temp` VALUES ('215', 'Φ29.5半精镗(T1048)', '东BW');
INSERT INTO `temp` VALUES ('216', 'Φ29.5半精镗(T1048)', '东BW');
INSERT INTO `temp` VALUES ('217', 'Φ29.5半精镗(T1048)', '东BW');
INSERT INTO `temp` VALUES ('218', 'Φ30精镗(T1049)', '东BW');
INSERT INTO `temp` VALUES ('219', 'Φ30精镗(T1049)', '东BW');
INSERT INTO `temp` VALUES ('220', 'Φ30精镗(T1049)', '东BW');
INSERT INTO `temp` VALUES ('221', 'Φ30精镗(T1049)', '东BW');
INSERT INTO `temp` VALUES ('222', 'Φ30精镗(T1049)', '东BW');
INSERT INTO `temp` VALUES ('223', 'Φ110/Φ130精镗(T1050)', '东BW');
INSERT INTO `temp` VALUES ('224', 'Φ110/Φ130精镗(T1050)', '东BW');
INSERT INTO `temp` VALUES ('225', 'Φ110/Φ130精镗(T1050)', '东BW');
INSERT INTO `temp` VALUES ('226', 'Φ110/Φ130精镗(T1050)', '东BW');
INSERT INTO `temp` VALUES ('227', 'Φ110/Φ130精镗(T1050)', '东BW');
INSERT INTO `temp` VALUES ('228', 'Φ120精镗(T1051)', '东BW');
INSERT INTO `temp` VALUES ('229', 'Φ120精镗(T1051)', '东BW');
INSERT INTO `temp` VALUES ('230', 'Φ120精镗(T1051)', '东BW');
INSERT INTO `temp` VALUES ('231', 'Φ120精镗(T1051)', '东BW');
INSERT INTO `temp` VALUES ('232', 'Φ120精镗(T1051)', '东BW');
INSERT INTO `temp` VALUES ('233', 'Φ37.5粗镗(T1052)', '东BW');
INSERT INTO `temp` VALUES ('234', 'Φ37.5粗镗(T1052)', '东BW');
INSERT INTO `temp` VALUES ('235', 'Φ37.5粗镗(T1052)', '东BW');
INSERT INTO `temp` VALUES ('236', 'Φ37.5粗镗(T1052)', '东BW');
INSERT INTO `temp` VALUES ('237', 'Φ37.5粗镗(T1052)', '东BW');
INSERT INTO `temp` VALUES ('238', 'Φ38精镗(T1053)', '东BW');
INSERT INTO `temp` VALUES ('239', 'Φ38精镗(T1053)', '东BW');
INSERT INTO `temp` VALUES ('240', 'Φ38精镗(T1053)', '东BW');
INSERT INTO `temp` VALUES ('241', 'Φ38精镗(T1053)', '东BW');
INSERT INTO `temp` VALUES ('242', 'Φ38精镗(T1053)', '东BW');
INSERT INTO `temp` VALUES ('243', 'Φ50铣刀(T1054)', '东BW');
INSERT INTO `temp` VALUES ('244', 'Φ50铣刀(T1054)', '东BW');
INSERT INTO `temp` VALUES ('245', 'Φ50铣刀(T1054)', '东BW');
INSERT INTO `temp` VALUES ('246', 'Φ50铣刀(T1054)', '东BW');
INSERT INTO `temp` VALUES ('247', 'Φ100玉米铣(T1055)', '东BW');
INSERT INTO `temp` VALUES ('248', 'Φ100玉米铣(T1055)', '东BW');
INSERT INTO `temp` VALUES ('249', 'Φ100玉米铣(T1055)', '东BW');
INSERT INTO `temp` VALUES ('250', 'Φ100玉米铣(T1055)', '东BW');
INSERT INTO `temp` VALUES ('251', 'Φ130精镗(T1057)', '东BW');
INSERT INTO `temp` VALUES ('252', 'Φ130精镗(T1057)', '东BW');
INSERT INTO `temp` VALUES ('253', 'Φ130精镗(T1057)', '东BW');
INSERT INTO `temp` VALUES ('254', 'Φ130精镗(T1057)', '东BW');
INSERT INTO `temp` VALUES ('255', 'Φ120精镗(T1056)', '东BW');
INSERT INTO `temp` VALUES ('256', 'Φ120精镗(T1056)', '东BW');
INSERT INTO `temp` VALUES ('257', 'Φ120精镗(T1056)', '东BW');
INSERT INTO `temp` VALUES ('258', 'Φ120精镗(T1056)', '东BW');
INSERT INTO `temp` VALUES ('259', 'M10×1.5丝锥(T1113)', '东BW');
INSERT INTO `temp` VALUES ('260', 'M10×1.5丝锥(T1113)', '东BW');
INSERT INTO `temp` VALUES ('261', 'M10×1.5丝锥(T1113)', '东BW');
INSERT INTO `temp` VALUES ('262', 'M10×1.5丝锥(T1113)', '东BW');
INSERT INTO `temp` VALUES ('263', 'T998', '东BW');
INSERT INTO `temp` VALUES ('264', 'T999999', '东BW');
INSERT INTO `temp` VALUES ('265', '', '');
INSERT INTO `temp` VALUES ('266', 'Φ100铣刀(T1001)', '西BW');
INSERT INTO `temp` VALUES ('267', 'Φ100铣刀(T1001)', '西BW');
INSERT INTO `temp` VALUES ('268', 'Φ100铣刀(T1001)', '西BW');
INSERT INTO `temp` VALUES ('269', 'Φ100铣刀(T1001)', '西BW');
INSERT INTO `temp` VALUES ('270', 'Φ100铣刀(T1002)', '西BW');
INSERT INTO `temp` VALUES ('271', 'Φ100铣刀(T1002)', '西BW');
INSERT INTO `temp` VALUES ('272', 'Φ100铣刀(T1002)', '西BW');
INSERT INTO `temp` VALUES ('273', 'Φ100铣刀(T1002)', '西BW');
INSERT INTO `temp` VALUES ('274', 'Φ14.5-42/90°(T1003)', '西BW');
INSERT INTO `temp` VALUES ('275', 'Φ14.5-42/90°(T1003)', '西BW');
INSERT INTO `temp` VALUES ('276', 'Φ14.5-42/90°(T1003)', '西BW');
INSERT INTO `temp` VALUES ('277', 'Φ14.5-42/90°(T1003)', '西BW');
INSERT INTO `temp` VALUES ('278', 'Φ14.5-47/90°(T1004)', '西BW');
INSERT INTO `temp` VALUES ('279', 'Φ14.5-47/90°(T1004)', '西BW');
INSERT INTO `temp` VALUES ('280', 'Φ14.5-47/90°(T1004)', '西BW');
INSERT INTO `temp` VALUES ('281', 'Φ14.5-47/90°(T1004)', '西BW');
INSERT INTO `temp` VALUES ('282', 'M16×1.5丝锥（T1005)', '西BW');
INSERT INTO `temp` VALUES ('283', 'M16×1.5丝锥（T1005)', '西BW');
INSERT INTO `temp` VALUES ('284', 'M16×1.5丝锥（T1005)', '西BW');
INSERT INTO `temp` VALUES ('285', 'M16×1.5丝锥（T1005)', '西BW');
INSERT INTO `temp` VALUES ('286', 'M16×1.5丝锥（T1005)', '西BW');
INSERT INTO `temp` VALUES ('287', 'M16×1.5丝锥（T1005)', '西BW');
INSERT INTO `temp` VALUES ('288', 'M16×1.5丝锥（T1005)', '西BW');
INSERT INTO `temp` VALUES ('289', 'Φ17-40/90°(T1006)', '西BW');
INSERT INTO `temp` VALUES ('290', 'Φ17-40/90°(T1006)', '西BW');
INSERT INTO `temp` VALUES ('291', 'Φ17-40/90°(T1006)', '西BW');
INSERT INTO `temp` VALUES ('292', 'Φ17-40/90°(T1006)', '西BW');
INSERT INTO `temp` VALUES ('293', 'Φ14.5-17/90°(T1007)', '西BW');
INSERT INTO `temp` VALUES ('294', 'Φ14.5-17/90°(T1007)', '西BW');
INSERT INTO `temp` VALUES ('295', 'Φ14.5-17/90°(T1007)', '西BW');
INSERT INTO `temp` VALUES ('296', 'Φ14.5-17/90°(T1007)', '西BW');
INSERT INTO `temp` VALUES ('297', 'Φ14.5-17/90°(T1007)', '西BW');
INSERT INTO `temp` VALUES ('298', 'Φ15镗刀（T1008)', '西BW');
INSERT INTO `temp` VALUES ('299', 'Φ15镗刀（T1008)', '西BW');
INSERT INTO `temp` VALUES ('300', 'Φ15镗刀（T1008)', '西BW');
INSERT INTO `temp` VALUES ('301', 'Φ15镗刀（T1008)', '西BW');
INSERT INTO `temp` VALUES ('302', 'Φ15镗刀（T1008)', '西BW');
INSERT INTO `temp` VALUES ('303', 'Φ12硬钻（T1009)', '西BW');
INSERT INTO `temp` VALUES ('304', 'Φ12硬钻（T1009)', '西BW');
INSERT INTO `temp` VALUES ('305', 'Φ12硬钻（T1009)', '西BW');
INSERT INTO `temp` VALUES ('306', 'Φ12硬钻（T1009)', '西BW');
INSERT INTO `temp` VALUES ('307', 'Φ10.8硬钻（T1010)', '西BW');
INSERT INTO `temp` VALUES ('308', 'Φ10.8硬钻（T1010)', '西BW');
INSERT INTO `temp` VALUES ('309', 'Φ10.8硬钻（T1010)', '西BW');
INSERT INTO `temp` VALUES ('310', 'Φ10.8硬钻（T1010)', '西BW');
INSERT INTO `temp` VALUES ('311', 'Φ10.8硬钻（T1010)', '西BW');
INSERT INTO `temp` VALUES ('312', 'M12×1.25丝锥（T1011)', '西BW');
INSERT INTO `temp` VALUES ('313', 'M12×1.25丝锥（T1011)', '西BW');
INSERT INTO `temp` VALUES ('314', 'M12×1.25丝锥（T1011)', '西BW');
INSERT INTO `temp` VALUES ('315', 'M12×1.25丝锥（T1011)', '西BW');
INSERT INTO `temp` VALUES ('316', 'M12×1.25丝锥（T1011)', '西BW');
INSERT INTO `temp` VALUES ('317', 'Φ11.5-16/90°(T1012)', '西BW');
INSERT INTO `temp` VALUES ('318', 'Φ11.5-16/90°(T1012)', '西BW');
INSERT INTO `temp` VALUES ('319', 'Φ11.5-16/90°(T1012)', '西BW');
INSERT INTO `temp` VALUES ('320', 'Φ11.5-16/90°(T1012)', '西BW');
INSERT INTO `temp` VALUES ('321', 'Φ11.5-16/90°(T1012)', '西BW');
INSERT INTO `temp` VALUES ('322', 'Φ12 镗刀(T1013)', '西BW');
INSERT INTO `temp` VALUES ('323', 'Φ12 镗刀(T1013)', '西BW');
INSERT INTO `temp` VALUES ('324', 'Φ12 镗刀(T1013)', '西BW');
INSERT INTO `temp` VALUES ('325', 'Φ12 镗刀(T1013)', '西BW');
INSERT INTO `temp` VALUES ('326', 'Φ12 镗刀(T1013)', '西BW');
INSERT INTO `temp` VALUES ('327', 'Φ12 镗刀(T1013)', '西BW');
INSERT INTO `temp` VALUES ('328', 'Φ8.8-22/90°(T1014)', '西BW');
INSERT INTO `temp` VALUES ('329', 'Φ8.8-22/90°(T1014)', '西BW');
INSERT INTO `temp` VALUES ('330', 'Φ8.8-22/90°(T1014)', '西BW');
INSERT INTO `temp` VALUES ('331', 'Φ8.8-22/90°(T1014)', '西BW');
INSERT INTO `temp` VALUES ('332', 'Φ8.8-22/90°(T1014)', '西BW');
INSERT INTO `temp` VALUES ('333', 'Φ8.3-85(T1015)', '西BW');
INSERT INTO `temp` VALUES ('334', 'Φ8.3-85(T1015)', '西BW');
INSERT INTO `temp` VALUES ('335', 'Φ8.3-85(T1015)', '西BW');
INSERT INTO `temp` VALUES ('336', 'Φ8.3-85(T1015)', '西BW');
INSERT INTO `temp` VALUES ('337', 'Φ8.3-85(T1015)', '西BW');
INSERT INTO `temp` VALUES ('338', 'M10×1.25丝锥(T1016)', '西BW');
INSERT INTO `temp` VALUES ('339', 'M10×1.25丝锥(T1016)', '西BW');
INSERT INTO `temp` VALUES ('340', 'M10×1.25丝锥(T1016)', '西BW');
INSERT INTO `temp` VALUES ('341', 'M10×1.25丝锥(T1016)', '西BW');
INSERT INTO `temp` VALUES ('342', 'M10×1.25丝锥(T1016)', '西BW');
INSERT INTO `temp` VALUES ('343', 'Φ25铣刀(T1017)', '西BW');
INSERT INTO `temp` VALUES ('344', 'Φ25铣刀(T1017)', '西BW');
INSERT INTO `temp` VALUES ('345', 'Φ25铣刀(T1017)', '西BW');
INSERT INTO `temp` VALUES ('346', 'Φ25铣刀(T1017)', '西BW');
INSERT INTO `temp` VALUES ('347', 'Φ20.5-30/90°(T1018)', '西BW');
INSERT INTO `temp` VALUES ('348', 'Φ20.5-30/90°(T1018)', '西BW');
INSERT INTO `temp` VALUES ('349', 'Φ20.5-30/90°(T1018)', '西BW');
INSERT INTO `temp` VALUES ('350', 'Φ20.5-30/90°(T1018)', '西BW');
INSERT INTO `temp` VALUES ('351', 'Φ20.5-30/90°(T1018)', '西BW');
INSERT INTO `temp` VALUES ('352', 'Φ20.5-30/90°(T1018)', '西BW');
INSERT INTO `temp` VALUES ('353', 'M22×1.5丝锥(T1019)', '西BW');
INSERT INTO `temp` VALUES ('354', 'M22×1.5丝锥(T1019)', '西BW');
INSERT INTO `temp` VALUES ('355', 'M22×1.5丝锥(T1019)', '西BW');
INSERT INTO `temp` VALUES ('356', 'M22×1.5丝锥(T1019)', '西BW');
INSERT INTO `temp` VALUES ('357', 'M22×1.5丝锥(T1019)', '西BW');
INSERT INTO `temp` VALUES ('358', 'Φ34/Φ40/Φ42/15°(T1020)', '西BW');
INSERT INTO `temp` VALUES ('359', 'Φ34/Φ40/Φ42/15°(T1020)', '西BW');
INSERT INTO `temp` VALUES ('360', 'Φ34/Φ40/Φ42/15°(T1020)', '西BW');
INSERT INTO `temp` VALUES ('361', 'Φ34/Φ40/Φ42/15°(T1020)', '西BW');
INSERT INTO `temp` VALUES ('362', 'Φ34/Φ40/Φ42/15°(T1020)', '西BW');
INSERT INTO `temp` VALUES ('363', 'Φ42 镗刀(T1021)', '西BW');
INSERT INTO `temp` VALUES ('364', 'Φ42 镗刀(T1021)', '西BW');
INSERT INTO `temp` VALUES ('365', 'Φ42 镗刀(T1021)', '西BW');
INSERT INTO `temp` VALUES ('366', 'Φ42 镗刀(T1021)', '西BW');
INSERT INTO `temp` VALUES ('367', 'Φ42 镗刀(T1021)', '西BW');
INSERT INTO `temp` VALUES ('368', 'Φ19.5/Φ22.5/45°(T1022)', '西BW');
INSERT INTO `temp` VALUES ('369', 'Φ19.5/Φ22.5/45°(T1022)', '西BW');
INSERT INTO `temp` VALUES ('370', 'Φ19.5/Φ22.5/45°(T1022)', '西BW');
INSERT INTO `temp` VALUES ('371', 'Φ19.5/Φ22.5/45°(T1022)', '西BW');
INSERT INTO `temp` VALUES ('372', 'Φ19.5/Φ22.5/45°(T1022)', '西BW');
INSERT INTO `temp` VALUES ('373', 'Φ20 镗刀(T1023)', '西BW');
INSERT INTO `temp` VALUES ('374', 'Φ20 镗刀(T1023)', '西BW');
INSERT INTO `temp` VALUES ('375', 'Φ20 镗刀(T1023)', '西BW');
INSERT INTO `temp` VALUES ('376', 'Φ20 镗刀(T1023)', '西BW');
INSERT INTO `temp` VALUES ('377', 'Φ20 镗刀(T1023)', '西BW');
INSERT INTO `temp` VALUES ('378', 'Φ20 镗刀(T1023)', '西BW');
INSERT INTO `temp` VALUES ('379', 'Φ169.5/90°(T1024)', '西BW');
INSERT INTO `temp` VALUES ('380', 'Φ169.5/90°(T1024)', '西BW');
INSERT INTO `temp` VALUES ('381', 'Φ169.5/90°(T1024)', '西BW');
INSERT INTO `temp` VALUES ('382', 'Φ169.5/90°(T1024)', '西BW');
INSERT INTO `temp` VALUES ('383', 'Φ169.5/90°(T1024)', '西BW');
INSERT INTO `temp` VALUES ('384', 'Φ169.5/90°(T1024)', '西BW');
INSERT INTO `temp` VALUES ('385', 'Φ170H8(T1025)', '西BW');
INSERT INTO `temp` VALUES ('386', 'Φ170H8(T1025)', '西BW');
INSERT INTO `temp` VALUES ('387', 'Φ170H8(T1025)', '西BW');
INSERT INTO `temp` VALUES ('388', 'Φ170H8(T1025)', '西BW');
INSERT INTO `temp` VALUES ('389', 'Φ170H8(T1025)', '西BW');
INSERT INTO `temp` VALUES ('390', 'Φ170H8(T1025)', '西BW');
INSERT INTO `temp` VALUES ('391', 'Φ170H8(T1025)', '西BW');
INSERT INTO `temp` VALUES ('392', 'Φ170H8(T1025)', '西BW');
INSERT INTO `temp` VALUES ('393', 'Φ79.5/90°(T1026)', '西BW');
INSERT INTO `temp` VALUES ('394', 'Φ79.5/90°(T1026)', '西BW');
INSERT INTO `temp` VALUES ('395', 'Φ79.5/90°(T1026)', '西BW');
INSERT INTO `temp` VALUES ('396', 'Φ79.5/90°(T1026)', '西BW');
INSERT INTO `temp` VALUES ('397', 'Φ79.5/90°(T1026)', '西BW');
INSERT INTO `temp` VALUES ('398', 'Φ79.5/90°(T1026)', '西BW');
INSERT INTO `temp` VALUES ('399', 'Φ79.5/90°(T1026)', '西BW');
INSERT INTO `temp` VALUES ('400', 'Φ79.5/90°(T1026)', '西BW');
INSERT INTO `temp` VALUES ('401', 'Φ89.5/90°(T1027)', '西BW');
INSERT INTO `temp` VALUES ('402', 'Φ89.5/90°(T1027)', '西BW');
INSERT INTO `temp` VALUES ('403', 'Φ89.5/90°(T1027)', '西BW');
INSERT INTO `temp` VALUES ('404', 'Φ89.5/90°(T1027)', '西BW');
INSERT INTO `temp` VALUES ('405', 'Φ89.5/90°(T1027)', '西BW');
INSERT INTO `temp` VALUES ('406', 'Φ89.5/90°(T1027)', '西BW');
INSERT INTO `temp` VALUES ('407', 'Φ89.5/90°(T1027)', '西BW');
INSERT INTO `temp` VALUES ('408', 'Φ100铣刀(T1028)', '西BW');
INSERT INTO `temp` VALUES ('409', 'Φ100铣刀(T1028)', '西BW');
INSERT INTO `temp` VALUES ('410', 'Φ100铣刀(T1028)', '西BW');
INSERT INTO `temp` VALUES ('411', 'Φ100铣刀(T1028)', '西BW');
INSERT INTO `temp` VALUES ('412', 'Φ100铣刀(T1028)', '西BW');
INSERT INTO `temp` VALUES ('413', 'Φ119.5/90°(T1029)', '西BW');
INSERT INTO `temp` VALUES ('414', 'Φ119.5/90°(T1029)', '西BW');
INSERT INTO `temp` VALUES ('415', 'Φ119.5/90°(T1029)', '西BW');
INSERT INTO `temp` VALUES ('416', 'Φ119.5/90°(T1029)', '西BW');
INSERT INTO `temp` VALUES ('417', 'Φ119.5/90°(T1029)', '西BW');
INSERT INTO `temp` VALUES ('418', 'Φ119.5/90°(T1029)', '西BW');
INSERT INTO `temp` VALUES ('419', 'Φ139.5/90°L550(T1030)', '西BW');
INSERT INTO `temp` VALUES ('420', 'Φ139.5/90°L550(T1030)', '西BW');
INSERT INTO `temp` VALUES ('421', 'Φ139.5/90°L550(T1030)', '西BW');
INSERT INTO `temp` VALUES ('422', 'Φ139.5/90°L550(T1030)', '西BW');
INSERT INTO `temp` VALUES ('423', 'Φ139.5/90°L550(T1030)', '西BW');
INSERT INTO `temp` VALUES ('424', 'Φ139.5/90°L550(T1030)', '西BW');
INSERT INTO `temp` VALUES ('425', 'Φ28/Φ36(T1031)', '西BW');
INSERT INTO `temp` VALUES ('426', 'Φ28/Φ36(T1031)', '西BW');
INSERT INTO `temp` VALUES ('427', 'Φ28/Φ36(T1031)', '西BW');
INSERT INTO `temp` VALUES ('428', 'Φ28/Φ36(T1031)', '西BW');
INSERT INTO `temp` VALUES ('429', 'Φ28/Φ36(T1031)', '西BW');
INSERT INTO `temp` VALUES ('430', 'Φ28/Φ36(T1031)', '西BW');
INSERT INTO `temp` VALUES ('431', 'Φ28/Φ36(T1031)', '西BW');
INSERT INTO `temp` VALUES ('432', 'Φ29.5/Φ37.7(T1032)', '西BW');
INSERT INTO `temp` VALUES ('433', 'Φ29.5/Φ37.7(T1032)', '西BW');
INSERT INTO `temp` VALUES ('434', 'Φ29.5/Φ37.7(T1032)', '西BW');
INSERT INTO `temp` VALUES ('435', 'Φ29.5/Φ37.7(T1032)', '西BW');
INSERT INTO `temp` VALUES ('436', 'Φ29.5/Φ37.7(T1032)', '西BW');
INSERT INTO `temp` VALUES ('437', 'Φ29.5/Φ37.7(T1032)', '西BW');
INSERT INTO `temp` VALUES ('438', 'Φ29.95/Φ37.95（T1033)', '西BW');
INSERT INTO `temp` VALUES ('439', 'Φ29.95/Φ37.95（T1033)', '西BW');
INSERT INTO `temp` VALUES ('440', 'Φ29.95/Φ37.95（T1033)', '西BW');
INSERT INTO `temp` VALUES ('441', 'Φ29.95/Φ37.95（T1033)', '西BW');
INSERT INTO `temp` VALUES ('442', 'Φ29.95/Φ37.95（T1033)', '西BW');
INSERT INTO `temp` VALUES ('443', 'Φ38(T1034)', '西BW');
INSERT INTO `temp` VALUES ('444', 'Φ38(T1034)', '西BW');
INSERT INTO `temp` VALUES ('445', 'Φ38(T1034)', '西BW');
INSERT INTO `temp` VALUES ('446', 'Φ38(T1034)', '西BW');
INSERT INTO `temp` VALUES ('447', 'Φ80/Φ90 H7 L420(T1035)', '西BW');
INSERT INTO `temp` VALUES ('448', 'Φ80/Φ90 H7 L420(T1035)', '西BW');
INSERT INTO `temp` VALUES ('449', 'Φ80/Φ90 H7 L420(T1035)', '西BW');
INSERT INTO `temp` VALUES ('450', 'Φ80/Φ90 H7 L420(T1035)', '西BW');
INSERT INTO `temp` VALUES ('451', 'Φ80/Φ90 H7 L420(T1035)', '西BW');
INSERT INTO `temp` VALUES ('452', 'Φ140/Φ120 N7 L420(T1036)', '西BW');
INSERT INTO `temp` VALUES ('453', 'Φ140/Φ120 N7 L420(T1036)', '西BW');
INSERT INTO `temp` VALUES ('454', 'Φ140/Φ120 N7 L420(T1036)', '西BW');
INSERT INTO `temp` VALUES ('455', 'Φ140/Φ120 N7 L420(T1036)', '西BW');
INSERT INTO `temp` VALUES ('456', 'Φ63 L420(T1037)', '西BW');
INSERT INTO `temp` VALUES ('457', 'Φ63 L420(T1037)', '西BW');
INSERT INTO `temp` VALUES ('458', 'Φ63 L420(T1037)', '西BW');
INSERT INTO `temp` VALUES ('459', 'Φ63 L420(T1037)', '西BW');
INSERT INTO `temp` VALUES ('460', 'Φ63 L420(T1037)', '西BW');
INSERT INTO `temp` VALUES ('461', 'Φ63 L420(T1037)', '西BW');
INSERT INTO `temp` VALUES ('462', 'Φ40 L250(T1038)', '西BW');
INSERT INTO `temp` VALUES ('463', 'Φ40 L250(T1038)', '西BW');
INSERT INTO `temp` VALUES ('464', 'Φ40 L250(T1038)', '西BW');
INSERT INTO `temp` VALUES ('465', 'Φ40 L250(T1038)', '西BW');
INSERT INTO `temp` VALUES ('466', 'Φ40 L250(T1038)', '西BW');
INSERT INTO `temp` VALUES ('467', 'Φ40 L250(T1038)', '西BW');
INSERT INTO `temp` VALUES ('468', 'Φ50 L250(T1039)', '西BW');
INSERT INTO `temp` VALUES ('469', 'Φ50 L250(T1039)', '西BW');
INSERT INTO `temp` VALUES ('470', 'Φ50 L250(T1039)', '西BW');
INSERT INTO `temp` VALUES ('471', 'Φ50 L250(T1039)', '西BW');
INSERT INTO `temp` VALUES ('472', 'Φ50 L250(T1039)', '西BW');
INSERT INTO `temp` VALUES ('473', 'Φ50 L250(T1039)', '西BW');
INSERT INTO `temp` VALUES ('474', 'Φ32.5/90°(T1040)', '西BW');
INSERT INTO `temp` VALUES ('475', 'Φ32.5/90°(T1040)', '西BW');
INSERT INTO `temp` VALUES ('476', 'Φ32.5/90°(T1040)', '西BW');
INSERT INTO `temp` VALUES ('477', 'Φ32.5/90°(T1040)', '西BW');
INSERT INTO `temp` VALUES ('478', 'Φ32.5/90°(T1040)', '西BW');
INSERT INTO `temp` VALUES ('479', 'Φ32.5/90°(T1040)', '西BW');
INSERT INTO `temp` VALUES ('480', 'Φ6.8阶梯钻(T1041)', '西BW');
INSERT INTO `temp` VALUES ('481', 'Φ6.8阶梯钻(T1041)', '西BW');
INSERT INTO `temp` VALUES ('482', 'Φ6.8阶梯钻(T1041)', '西BW');
INSERT INTO `temp` VALUES ('483', 'Φ6.8阶梯钻(T1041)', '西BW');
INSERT INTO `temp` VALUES ('484', 'M8丝锥(T1042)', '西BW');
INSERT INTO `temp` VALUES ('485', 'M8丝锥(T1042)', '西BW');
INSERT INTO `temp` VALUES ('486', 'M8丝锥(T1042)', '西BW');
INSERT INTO `temp` VALUES ('487', 'M8丝锥(T1042)', '西BW');
INSERT INTO `temp` VALUES ('488', 'Φ20阶梯钻(T1043)', '西BW');
INSERT INTO `temp` VALUES ('489', 'Φ20阶梯钻(T1043)', '西BW');
INSERT INTO `temp` VALUES ('490', 'Φ20阶梯钻(T1043)', '西BW');
INSERT INTO `temp` VALUES ('491', 'Φ20阶梯钻(T1043)', '西BW');
INSERT INTO `temp` VALUES ('492', 'Φ20阶梯钻(T1043)', '西BW');
INSERT INTO `temp` VALUES ('493', 'Φ9阶梯钻(T1044)', '西BW');
INSERT INTO `temp` VALUES ('494', 'Φ9阶梯钻(T1044)', '西BW');
INSERT INTO `temp` VALUES ('495', 'Φ9阶梯钻(T1044)', '西BW');
INSERT INTO `temp` VALUES ('496', 'Φ9阶梯钻(T1044)', '西BW');
INSERT INTO `temp` VALUES ('497', 'M10×1丝锥(T1045)', '西BW');
INSERT INTO `temp` VALUES ('498', 'M10×1丝锥(T1045)', '西BW');
INSERT INTO `temp` VALUES ('499', 'M10×1丝锥(T1045)', '西BW');
INSERT INTO `temp` VALUES ('500', 'M10×1丝锥(T1045)', '西BW');
INSERT INTO `temp` VALUES ('501', 'Φ5阶梯钻(T1046)', '西BW');
INSERT INTO `temp` VALUES ('502', 'Φ5阶梯钻(T1046)', '西BW');
INSERT INTO `temp` VALUES ('503', 'Φ5阶梯钻(T1046)', '西BW');
INSERT INTO `temp` VALUES ('504', 'Φ5阶梯钻(T1046)', '西BW');
INSERT INTO `temp` VALUES ('505', 'M6丝锥(T1047)', '西BW');
INSERT INTO `temp` VALUES ('506', 'M6丝锥(T1047)', '西BW');
INSERT INTO `temp` VALUES ('507', 'M6丝锥(T1047)', '西BW');
INSERT INTO `temp` VALUES ('508', 'M6丝锥(T1047)', '西BW');
INSERT INTO `temp` VALUES ('509', 'Φ16.5阶梯钻(T1048)', '西BW');
INSERT INTO `temp` VALUES ('510', 'Φ16.5阶梯钻(T1048)', '西BW');
INSERT INTO `temp` VALUES ('511', 'Φ16.5阶梯钻(T1048)', '西BW');
INSERT INTO `temp` VALUES ('512', 'Φ16.5阶梯钻(T1048)', '西BW');
INSERT INTO `temp` VALUES ('513', 'M18×1.5丝锥(T1049)', '西BW');
INSERT INTO `temp` VALUES ('514', 'M18×1.5丝锥(T1049)', '西BW');
INSERT INTO `temp` VALUES ('515', 'M18×1.5丝锥(T1049)', '西BW');
INSERT INTO `temp` VALUES ('516', 'M18×1.5丝锥(T1049)', '西BW');
INSERT INTO `temp` VALUES ('517', 'Φ11.8阶梯钻(T1050)', '西BW');
INSERT INTO `temp` VALUES ('518', 'Φ11.8阶梯钻(T1050)', '西BW');
INSERT INTO `temp` VALUES ('519', 'Φ11.8阶梯钻(T1050)', '西BW');
INSERT INTO `temp` VALUES ('520', 'Φ11.8阶梯钻(T1050)', '西BW');
INSERT INTO `temp` VALUES ('521', 'Φ12F9-铰刀 (T1051)', '西BW');
INSERT INTO `temp` VALUES ('522', 'Φ12F9-铰刀 (T1051)', '西BW');
INSERT INTO `temp` VALUES ('523', 'Φ12F9-铰刀 (T1051)', '西BW');
INSERT INTO `temp` VALUES ('524', 'Φ12F9-铰刀 (T1051)', '西BW');
INSERT INTO `temp` VALUES ('525', '  Φ12立铣刀 (T1052)', '西BW');
INSERT INTO `temp` VALUES ('526', '  Φ12立铣刀 (T1052)', '西BW');
INSERT INTO `temp` VALUES ('527', '  Φ12立铣刀 (T1052)', '西BW');
INSERT INTO `temp` VALUES ('528', '  Φ12立铣刀 (T1052)', '西BW');
INSERT INTO `temp` VALUES ('529', '镗刀(T1053)', '西BW');
INSERT INTO `temp` VALUES ('530', '镗刀(T1053)', '西BW');
INSERT INTO `temp` VALUES ('531', '镗刀(T1053)', '西BW');
INSERT INTO `temp` VALUES ('532', '镗刀(T1053)', '西BW');
INSERT INTO `temp` VALUES ('533', '镗刀(T1053)', '西BW');
INSERT INTO `temp` VALUES ('534', '镗刀(T1053)', '西BW');
INSERT INTO `temp` VALUES ('535', 'Φ15镗刀(T1054)', '西BW');
INSERT INTO `temp` VALUES ('536', 'Φ15镗刀(T1054)', '西BW');
INSERT INTO `temp` VALUES ('537', 'Φ15镗刀(T1054)', '西BW');
INSERT INTO `temp` VALUES ('538', 'Φ15镗刀(T1054)', '西BW');
INSERT INTO `temp` VALUES ('539', 'Φ15镗刀(T1054)', '西BW');
INSERT INTO `temp` VALUES ('540', 'Φ44玉米铣(T1055)', '西BW');
INSERT INTO `temp` VALUES ('541', 'Φ44玉米铣(T1055)', '西BW');
INSERT INTO `temp` VALUES ('542', 'Φ44玉米铣(T1055)', '西BW');
INSERT INTO `temp` VALUES ('543', 'Φ44玉米铣(T1055)', '西BW');
INSERT INTO `temp` VALUES ('544', 'Φ16立铣刀(T1056)', '西BW');
INSERT INTO `temp` VALUES ('545', 'Φ16立铣刀(T1056)', '西BW');
INSERT INTO `temp` VALUES ('546', 'Φ16立铣刀(T1056)', '西BW');
INSERT INTO `temp` VALUES ('547', 'Φ16立铣刀(T1056)', '西BW');
INSERT INTO `temp` VALUES ('548', 'Φ25U钻(T1057)', '西BW');
INSERT INTO `temp` VALUES ('549', 'Φ25U钻(T1057)', '西BW');
INSERT INTO `temp` VALUES ('550', 'Φ25U钻(T1057)', '西BW');
INSERT INTO `temp` VALUES ('551', 'Φ25U钻(T1057)', '西BW');
INSERT INTO `temp` VALUES ('552', 'Φ25U钻(T1057)', '西BW');
INSERT INTO `temp` VALUES ('553', 'Φ25U钻(T1057)', '西BW');
INSERT INTO `temp` VALUES ('554', 'Φ25U钻(T1057)', '西BW');
INSERT INTO `temp` VALUES ('555', 'Φ80铣刀(T1058)', '西BW');
INSERT INTO `temp` VALUES ('556', 'Φ80铣刀(T1058)', '西BW');
INSERT INTO `temp` VALUES ('557', 'Φ80铣刀(T1058)', '西BW');
INSERT INTO `temp` VALUES ('558', 'Φ80铣刀(T1058)', '西BW');
INSERT INTO `temp` VALUES ('559', 'Φ80铣刀(T1058)', '西BW');
INSERT INTO `temp` VALUES ('560', 'Φ17阶梯钻(T1063)', '西BW');
INSERT INTO `temp` VALUES ('561', 'Φ17阶梯钻(T1063)', '西BW');
INSERT INTO `temp` VALUES ('562', 'Φ17阶梯钻(T1063)', '西BW');
INSERT INTO `temp` VALUES ('563', 'Φ17阶梯钻(T1063)', '西BW');
INSERT INTO `temp` VALUES ('564', 'Φ17阶梯钻(T1063)', '西BW');
INSERT INTO `temp` VALUES ('565', 'Φ20.5U钻(T1100)', '西BW');
INSERT INTO `temp` VALUES ('566', 'Φ20.5U钻(T1100)', '西BW');
INSERT INTO `temp` VALUES ('567', 'Φ20.5U钻(T1100)', '西BW');
INSERT INTO `temp` VALUES ('568', 'Φ20.5U钻(T1100)', '西BW');
INSERT INTO `temp` VALUES ('569', 'Φ20.5U钻(T1100)', '西BW');
INSERT INTO `temp` VALUES ('570', 'Φ20.5U钻(T1100)', '西BW');
INSERT INTO `temp` VALUES ('571', 'Φ20.5U钻(T1100)', '西BW');
INSERT INTO `temp` VALUES ('572', 'M22*1.5丝锥(T1101)', '西BW');
INSERT INTO `temp` VALUES ('573', 'M22*1.5丝锥(T1101)', '西BW');
INSERT INTO `temp` VALUES ('574', 'M22*1.5丝锥(T1101)', '西BW');
INSERT INTO `temp` VALUES ('575', 'M22*1.5丝锥(T1101)', '西BW');
INSERT INTO `temp` VALUES ('576', 'M22*1.5丝锥(T1101)', '西BW');
INSERT INTO `temp` VALUES ('577', 'M22*1.5丝锥(T1101)', '西BW');
INSERT INTO `temp` VALUES ('578', 'M22*1.5丝锥(T1101)', '西BW');
INSERT INTO `temp` VALUES ('579', 'φ37U钻（T1102）', '西BW');
INSERT INTO `temp` VALUES ('580', 'φ37U钻（T1102）', '西BW');
INSERT INTO `temp` VALUES ('581', 'φ37U钻（T1102）', '西BW');
INSERT INTO `temp` VALUES ('582', 'φ37U钻（T1102）', '西BW');
INSERT INTO `temp` VALUES ('583', 'φ37U钻（T1102）', '西BW');
INSERT INTO `temp` VALUES ('584', 'M39螺纹铣刀（T1103）', '西BW');
INSERT INTO `temp` VALUES ('585', 'M39螺纹铣刀（T1103）', '西BW');
INSERT INTO `temp` VALUES ('586', 'M39螺纹铣刀（T1103）', '西BW');
INSERT INTO `temp` VALUES ('587', 'M39螺纹铣刀（T1103）', '西BW');
INSERT INTO `temp` VALUES ('588', 'M39螺纹铣刀（T1103）', '西BW');
INSERT INTO `temp` VALUES ('589', 'M39螺纹铣刀（T1103）', '西BW');
INSERT INTO `temp` VALUES ('590', 'φ32玉米铣T1104', '西BW');
INSERT INTO `temp` VALUES ('591', 'φ32玉米铣T1104', '西BW');
INSERT INTO `temp` VALUES ('592', 'φ32玉米铣T1104', '西BW');
INSERT INTO `temp` VALUES ('593', 'φ32玉米铣T1104', '西BW');
INSERT INTO `temp` VALUES ('594', 'φ32玉米铣T1104', '西BW');
INSERT INTO `temp` VALUES ('595', '', '');
INSERT INTO `temp` VALUES ('596', 'D80 铣刀(T185)', 'FMS1#机');
INSERT INTO `temp` VALUES ('597', 'D80 铣刀(T185)', 'FMS1#机');
INSERT INTO `temp` VALUES ('598', 'D80 铣刀(T185)', 'FMS1#机');
INSERT INTO `temp` VALUES ('599', 'D80 铣刀(T185)', 'FMS1#机');
INSERT INTO `temp` VALUES ('600', 'D63 铣刀(T101)', 'FMS1#机');
INSERT INTO `temp` VALUES ('601', 'D63 铣刀(T101)', 'FMS1#机');
INSERT INTO `temp` VALUES ('602', 'D63 铣刀(T101)', 'FMS1#机');
INSERT INTO `temp` VALUES ('603', 'D63 铣刀(T101)', 'FMS1#机');
INSERT INTO `temp` VALUES ('604', 'Φ30 铣刀(T102)', 'FMS1#机');
INSERT INTO `temp` VALUES ('605', 'Φ30 铣刀(T102)', 'FMS1#机');
INSERT INTO `temp` VALUES ('606', 'Φ30 铣刀(T102)', 'FMS1#机');
INSERT INTO `temp` VALUES ('607', 'Φ63 粗镗刀(T103)', 'FMS1#机');
INSERT INTO `temp` VALUES ('608', 'Φ63 粗镗刀(T103)', 'FMS1#机');
INSERT INTO `temp` VALUES ('609', 'Φ63 粗镗刀(T103)', 'FMS1#机');
INSERT INTO `temp` VALUES ('610', 'Φ63 粗镗刀(T103)', 'FMS1#机');
INSERT INTO `temp` VALUES ('611', 'Φ63 粗镗刀(T103)', 'FMS1#机');
INSERT INTO `temp` VALUES ('612', 'Φ67.7半精镗(T104)', 'FMS1#机');
INSERT INTO `temp` VALUES ('613', 'Φ67.7半精镗(T104)', 'FMS1#机');
INSERT INTO `temp` VALUES ('614', 'Φ67.7半精镗(T104)', 'FMS1#机');
INSERT INTO `temp` VALUES ('615', 'Φ67.7半精镗(T104)', 'FMS1#机');
INSERT INTO `temp` VALUES ('616', 'Φ67.7半精镗(T104)', 'FMS1#机');
INSERT INTO `temp` VALUES ('617', 'Φ32.5-48.2倒角铣(T105)', 'FMS1#机');
INSERT INTO `temp` VALUES ('618', 'Φ32.5-48.2倒角铣(T105)', 'FMS1#机');
INSERT INTO `temp` VALUES ('619', 'Φ32.5-48.2倒角铣(T105)', 'FMS1#机');
INSERT INTO `temp` VALUES ('620', 'Φ32.5-48.2倒角铣(T105)', 'FMS1#机');
INSERT INTO `temp` VALUES ('621', 'Φ101 粗镗(T106)', 'FMS1#机');
INSERT INTO `temp` VALUES ('622', 'Φ101 粗镗(T106)', 'FMS1#机');
INSERT INTO `temp` VALUES ('623', 'Φ101 粗镗(T106)', 'FMS1#机');
INSERT INTO `temp` VALUES ('624', 'Φ101 粗镗(T106)', 'FMS1#机');
INSERT INTO `temp` VALUES ('625', 'Φ101 粗镗(T106)', 'FMS1#机');
INSERT INTO `temp` VALUES ('626', 'Φ106 粗镗(T107)', 'FMS1#机');
INSERT INTO `temp` VALUES ('627', 'Φ106 粗镗(T107)', 'FMS1#机');
INSERT INTO `temp` VALUES ('628', 'Φ106 粗镗(T107)', 'FMS1#机');
INSERT INTO `temp` VALUES ('629', 'Φ106 粗镗(T107)', 'FMS1#机');
INSERT INTO `temp` VALUES ('630', 'Φ106 粗镗(T107)', 'FMS1#机');
INSERT INTO `temp` VALUES ('631', 'Φ80 粗镗(T108)', 'FMS1#机');
INSERT INTO `temp` VALUES ('632', 'Φ80 粗镗(T108)', 'FMS1#机');
INSERT INTO `temp` VALUES ('633', 'Φ80 粗镗(T108)', 'FMS1#机');
INSERT INTO `temp` VALUES ('634', 'Φ80 粗镗(T108)', 'FMS1#机');
INSERT INTO `temp` VALUES ('635', 'Φ80 粗镗(T108)', 'FMS1#机');
INSERT INTO `temp` VALUES ('636', 'φ84.7半精镗(T109)', 'FMS1#机');
INSERT INTO `temp` VALUES ('637', 'φ84.7半精镗(T109)', 'FMS1#机');
INSERT INTO `temp` VALUES ('638', 'φ84.7半精镗(T109)', 'FMS1#机');
INSERT INTO `temp` VALUES ('639', 'φ84.7半精镗(T109)', 'FMS1#机');
INSERT INTO `temp` VALUES ('640', 'φ84.7半精镗(T109)', 'FMS1#机');
INSERT INTO `temp` VALUES ('641', 'Φ42 倒角铣(T110)', 'FMS1#机');
INSERT INTO `temp` VALUES ('642', 'Φ42 倒角铣(T110)', 'FMS1#机');
INSERT INTO `temp` VALUES ('643', 'Φ42 倒角铣(T110)', 'FMS1#机');
INSERT INTO `temp` VALUES ('644', 'Φ42 倒角铣(T110)', 'FMS1#机');
INSERT INTO `temp` VALUES ('645', 'Φ42 倒角铣(T110)', 'FMS1#机');
INSERT INTO `temp` VALUES ('646', 'Φ26 钻(T111)', 'FMS1#机');
INSERT INTO `temp` VALUES ('647', 'Φ26 钻(T111)', 'FMS1#机');
INSERT INTO `temp` VALUES ('648', 'Φ26 钻(T111)', 'FMS1#机');
INSERT INTO `temp` VALUES ('649', 'Φ26 钻(T111)', 'FMS1#机');
INSERT INTO `temp` VALUES ('650', 'Φ29.7 粗镗(T112)', 'FMS1#机');
INSERT INTO `temp` VALUES ('651', 'Φ29.7 粗镗(T112)', 'FMS1#机');
INSERT INTO `temp` VALUES ('652', 'Φ29.7 粗镗(T112)', 'FMS1#机');
INSERT INTO `temp` VALUES ('653', 'Φ29.7 粗镗(T112)', 'FMS1#机');
INSERT INTO `temp` VALUES ('654', 'Φ21-Φ35倒角(T113)', 'FMS1#机');
INSERT INTO `temp` VALUES ('655', 'Φ21-Φ35倒角(T113)', 'FMS1#机');
INSERT INTO `temp` VALUES ('656', 'Φ21-Φ35倒角(T113)', 'FMS1#机');
INSERT INTO `temp` VALUES ('657', 'Φ21-Φ35倒角(T113)', 'FMS1#机');
INSERT INTO `temp` VALUES ('658', 'φ13 硬钻(T131)', 'FMS1#机');
INSERT INTO `temp` VALUES ('659', 'φ13 硬钻(T131)', 'FMS1#机');
INSERT INTO `temp` VALUES ('660', 'φ13 硬钻(T131)', 'FMS1#机');
INSERT INTO `temp` VALUES ('661', 'Φ17.7锪孔钻(T115)', 'FMS1#机');
INSERT INTO `temp` VALUES ('662', 'Φ17.7锪孔钻(T115)', 'FMS1#机');
INSERT INTO `temp` VALUES ('663', 'Φ17.7锪孔钻(T115)', 'FMS1#机');
INSERT INTO `temp` VALUES ('664', 'φ6.8 硬钻(T116)', 'FMS1#机');
INSERT INTO `temp` VALUES ('665', 'φ6.8 硬钻(T116)', 'FMS1#机');
INSERT INTO `temp` VALUES ('666', 'φ6.8 硬钻(T116)', 'FMS1#机');
INSERT INTO `temp` VALUES ('667', 'φ16 中心钻(T117)', 'FMS1#机');
INSERT INTO `temp` VALUES ('668', 'φ16 中心钻(T117)', 'FMS1#机');
INSERT INTO `temp` VALUES ('669', 'φ16 中心钻(T117)', 'FMS1#机');
INSERT INTO `temp` VALUES ('670', 'M8*1.25丝锥(T118)', 'FMS1#机');
INSERT INTO `temp` VALUES ('671', 'M8*1.25丝锥(T118)', 'FMS1#机');
INSERT INTO `temp` VALUES ('672', 'M8*1.25丝锥(T118)', 'FMS1#机');
INSERT INTO `temp` VALUES ('673', 'M8*1.25丝锥(T118)', 'FMS1#机');
INSERT INTO `temp` VALUES ('674', 'M8*1.25丝锥(T118)', 'FMS1#机');
INSERT INTO `temp` VALUES ('675', 'M8*1.25丝锥(T118)', 'FMS1#机');
INSERT INTO `temp` VALUES ('676', 'φ19.7硬钻(T119)', 'FMS1#机');
INSERT INTO `temp` VALUES ('677', 'φ19.7硬钻(T119)', 'FMS1#机');
INSERT INTO `temp` VALUES ('678', 'φ19.7硬钻(T119)', 'FMS1#机');
INSERT INTO `temp` VALUES ('679', 'φ12 倒角钻(T71)', 'FMS1#机');
INSERT INTO `temp` VALUES ('680', 'φ12 倒角钻(T71)', 'FMS1#机');
INSERT INTO `temp` VALUES ('681', 'φ12 倒角钻(T71)', 'FMS1#机');
INSERT INTO `temp` VALUES ('682', 'φ12 倒角钻(T71)', 'FMS1#机');
INSERT INTO `temp` VALUES ('683', 'Φ63 铣槽刀(T78)', 'FMS1#机');
INSERT INTO `temp` VALUES ('684', 'Φ63 铣槽刀(T78)', 'FMS1#机');
INSERT INTO `temp` VALUES ('685', 'Φ63 铣槽刀(T78)', 'FMS1#机');
INSERT INTO `temp` VALUES ('686', 'Φ63 铣槽刀(T78)', 'FMS1#机');
INSERT INTO `temp` VALUES ('687', 'Φ115 粗镗(T22)', 'FMS1#机');
INSERT INTO `temp` VALUES ('688', 'Φ115 粗镗(T22)', 'FMS1#机');
INSERT INTO `temp` VALUES ('689', 'Φ115 粗镗(T22)', 'FMS1#机');
INSERT INTO `temp` VALUES ('690', 'Φ115 粗镗(T22)', 'FMS1#机');
INSERT INTO `temp` VALUES ('691', 'Φ115 粗镗(T22)', 'FMS1#机');
INSERT INTO `temp` VALUES ('692', 'Φ119.7半精镗(T20)', 'FMS1#机');
INSERT INTO `temp` VALUES ('693', 'Φ119.7半精镗(T20)', 'FMS1#机');
INSERT INTO `temp` VALUES ('694', 'Φ119.7半精镗(T20)', 'FMS1#机');
INSERT INTO `temp` VALUES ('695', 'Φ119.7半精镗(T20)', 'FMS1#机');
INSERT INTO `temp` VALUES ('696', 'Φ119.7半精镗(T20)', 'FMS1#机');
INSERT INTO `temp` VALUES ('697', 'Φ80 铣刀(T72)', 'FMS1#机');
INSERT INTO `temp` VALUES ('698', 'Φ80 铣刀(T72)', 'FMS1#机');
INSERT INTO `temp` VALUES ('699', 'Φ80 铣刀(T72)', 'FMS1#机');
INSERT INTO `temp` VALUES ('700', 'Φ80 铣刀(T72)', 'FMS1#机');
INSERT INTO `temp` VALUES ('701', 'Φ18R8铰刀(T79)', 'FMS1#机');
INSERT INTO `temp` VALUES ('702', 'Φ18R8铰刀(T79)', 'FMS1#机');
INSERT INTO `temp` VALUES ('703', 'Φ18R8铰刀(T79)', 'FMS1#机');
INSERT INTO `temp` VALUES ('704', 'Φ20H9铰刀(T80)', 'FMS1#机');
INSERT INTO `temp` VALUES ('705', 'Φ20H9铰刀(T80)', 'FMS1#机');
INSERT INTO `temp` VALUES ('706', 'Φ20H9铰刀(T80)', 'FMS1#机');
INSERT INTO `temp` VALUES ('707', 'Φ68精镗(T73)', 'FMS1#机');
INSERT INTO `temp` VALUES ('708', 'Φ68精镗(T73)', 'FMS1#机');
INSERT INTO `temp` VALUES ('709', 'Φ68精镗(T73)', 'FMS1#机');
INSERT INTO `temp` VALUES ('710', 'Φ68精镗(T73)', 'FMS1#机');
INSERT INTO `temp` VALUES ('711', 'Φ68精镗(T73)', 'FMS1#机');
INSERT INTO `temp` VALUES ('712', 'Φ85精镗(T74)', 'FMS1#机');
INSERT INTO `temp` VALUES ('713', 'Φ85精镗(T74)', 'FMS1#机');
INSERT INTO `temp` VALUES ('714', 'Φ85精镗(T74)', 'FMS1#机');
INSERT INTO `temp` VALUES ('715', 'Φ85精镗(T74)', 'FMS1#机');
INSERT INTO `temp` VALUES ('716', 'Φ85精镗(T74)', 'FMS1#机');
INSERT INTO `temp` VALUES ('717', 'Φ30精镗(T75)', 'FMS1#机');
INSERT INTO `temp` VALUES ('718', 'Φ30精镗(T75)', 'FMS1#机');
INSERT INTO `temp` VALUES ('719', 'Φ30精镗(T75)', 'FMS1#机');
INSERT INTO `temp` VALUES ('720', 'Φ30精镗(T75)', 'FMS1#机');
INSERT INTO `temp` VALUES ('721', 'Φ30精镗(T75)', 'FMS1#机');
INSERT INTO `temp` VALUES ('722', 'Φ120反精镗刀(T30)', 'FMS1#机');
INSERT INTO `temp` VALUES ('723', 'Φ120反精镗刀(T30)', 'FMS1#机');
INSERT INTO `temp` VALUES ('724', 'Φ120反精镗刀(T30)', 'FMS1#机');
INSERT INTO `temp` VALUES ('725', 'Φ120反精镗刀(T30)', 'FMS1#机');
INSERT INTO `temp` VALUES ('726', 'Φ120反精镗刀(T30)', 'FMS1#机');
INSERT INTO `temp` VALUES ('727', 'Φ20铣刀（立）(T53)', 'FMS1#机');
INSERT INTO `temp` VALUES ('728', 'Φ20铣刀（立）(T53)', 'FMS1#机');
INSERT INTO `temp` VALUES ('729', 'Φ20铣刀（立）(T53)', 'FMS1#机');
INSERT INTO `temp` VALUES ('730', 'D63 精铣(T76)', 'FMS1#机');
INSERT INTO `temp` VALUES ('731', 'D63 精铣(T76)', 'FMS1#机');
INSERT INTO `temp` VALUES ('732', 'D63 精铣(T76)', 'FMS1#机');
INSERT INTO `temp` VALUES ('733', 'D63 精铣(T76)', 'FMS1#机');
INSERT INTO `temp` VALUES ('734', 'φ75粗镗刀(T136)', 'FMS1#机');
INSERT INTO `temp` VALUES ('735', 'φ75粗镗刀(T136)', 'FMS1#机');
INSERT INTO `temp` VALUES ('736', 'φ75粗镗刀(T136)', 'FMS1#机');
INSERT INTO `temp` VALUES ('737', 'φ75粗镗刀(T136)', 'FMS1#机');
INSERT INTO `temp` VALUES ('738', 'φ75粗镗刀(T136)', 'FMS1#机');
INSERT INTO `temp` VALUES ('739', 'Φ79.7半精镗(T34)', 'FMS1#机');
INSERT INTO `temp` VALUES ('740', 'Φ79.7半精镗(T34)', 'FMS1#机');
INSERT INTO `temp` VALUES ('741', 'Φ79.7半精镗(T34)', 'FMS1#机');
INSERT INTO `temp` VALUES ('742', 'Φ79.7半精镗(T34)', 'FMS1#机');
INSERT INTO `temp` VALUES ('743', 'Φ79.7半精镗(T34)', 'FMS1#机');
INSERT INTO `temp` VALUES ('744', 'φ8.7硬钻(T35)', 'FMS1#机');
INSERT INTO `temp` VALUES ('745', 'φ8.7硬钻(T35)', 'FMS1#机');
INSERT INTO `temp` VALUES ('746', 'φ8.7硬钻(T35)', 'FMS1#机');
INSERT INTO `temp` VALUES ('747', 'M10*1.25丝锥(T36)', 'FMS1#机');
INSERT INTO `temp` VALUES ('748', 'M10*1.25丝锥(T36)', 'FMS1#机');
INSERT INTO `temp` VALUES ('749', 'M10*1.25丝锥(T36)', 'FMS1#机');
INSERT INTO `temp` VALUES ('750', 'M10*1.25丝锥(T36)', 'FMS1#机');
INSERT INTO `temp` VALUES ('751', 'M10*1.25丝锥(T36)', 'FMS1#机');
INSERT INTO `temp` VALUES ('752', 'M10*1.25丝锥(T36)', 'FMS1#机');
INSERT INTO `temp` VALUES ('753', 'Φ80精镗 (T37)', 'FMS1#机');
INSERT INTO `temp` VALUES ('754', 'Φ80精镗 (T37)', 'FMS1#机');
INSERT INTO `temp` VALUES ('755', 'Φ80精镗 (T37)', 'FMS1#机');
INSERT INTO `temp` VALUES ('756', 'Φ80精镗 (T37)', 'FMS1#机');
INSERT INTO `temp` VALUES ('757', 'Φ80精镗 (T37)', 'FMS1#机');
INSERT INTO `temp` VALUES ('758', 'Φ10.4 钻头(T38)', 'FMS1#机');
INSERT INTO `temp` VALUES ('759', 'Φ10.4 钻头(T38)', 'FMS1#机');
INSERT INTO `temp` VALUES ('760', 'Φ10.4 钻头(T38)', 'FMS1#机');
INSERT INTO `temp` VALUES ('761', 'Φ10.4直槽钻(T39)', 'FMS1#机');
INSERT INTO `temp` VALUES ('762', 'Φ10.4直槽钻(T39)', 'FMS1#机');
INSERT INTO `temp` VALUES ('763', 'Φ10.4直槽钻(T39)', 'FMS1#机');
INSERT INTO `temp` VALUES ('764', '', '');
INSERT INTO `temp` VALUES ('765', 'φ13 硬钻(T77)', 'FMS1#机');
INSERT INTO `temp` VALUES ('766', 'φ13 硬钻(T77)', 'FMS1#机');
INSERT INTO `temp` VALUES ('767', 'φ13 硬钻(T77)', 'FMS1#机');
INSERT INTO `temp` VALUES ('768', '', '');
INSERT INTO `temp` VALUES ('769', 'φ11硬钻(T40)', 'FMS1#机');
INSERT INTO `temp` VALUES ('770', 'φ11硬钻(T40)', 'FMS1#机');
INSERT INTO `temp` VALUES ('771', 'φ11硬钻(T40)', 'FMS1#机');
INSERT INTO `temp` VALUES ('772', '', '');
INSERT INTO `temp` VALUES ('773', 'φ11.7 扩孔钻(T41)', 'FMS1#机');
INSERT INTO `temp` VALUES ('774', 'φ11.7 扩孔钻(T41)', 'FMS1#机');
INSERT INTO `temp` VALUES ('775', 'φ11.7 扩孔钻(T41)', 'FMS1#机');
INSERT INTO `temp` VALUES ('776', '', '');
INSERT INTO `temp` VALUES ('777', 'Φ12R8铰刀(T42)', 'FMS1#机');
INSERT INTO `temp` VALUES ('778', 'Φ12R8铰刀(T42)', 'FMS1#机');
INSERT INTO `temp` VALUES ('779', 'Φ12R8铰刀(T42)', 'FMS1#机');
INSERT INTO `temp` VALUES ('780', '', '');
INSERT INTO `temp` VALUES ('781', 'D25 铣刀(T132)', 'FMS1#机');
INSERT INTO `temp` VALUES ('782', 'D25 铣刀(T132)', 'FMS1#机');
INSERT INTO `temp` VALUES ('783', 'D25 铣刀(T132)', 'FMS1#机');
INSERT INTO `temp` VALUES ('784', '', '');
INSERT INTO `temp` VALUES ('785', 'Φ250*15宽精铣刀（T225）', 'FMS1#机');
INSERT INTO `temp` VALUES ('786', 'Φ250*15宽精铣刀（T225）', 'FMS1#机');
INSERT INTO `temp` VALUES ('787', 'Φ250*15宽精铣刀（T225）', 'FMS1#机');
INSERT INTO `temp` VALUES ('788', 'Φ250*15宽精铣刀（T225）', 'FMS1#机');
INSERT INTO `temp` VALUES ('789', 'Φ250*15宽精铣刀（T225）', 'FMS1#机');
INSERT INTO `temp` VALUES ('790', '', '');
INSERT INTO `temp` VALUES ('791', 'φ15.7硬钻(T45)', 'FMS1#机');
INSERT INTO `temp` VALUES ('792', 'φ15.7硬钻(T45)', 'FMS1#机');
INSERT INTO `temp` VALUES ('793', 'φ15.7硬钻(T45)', 'FMS1#机');
INSERT INTO `temp` VALUES ('794', '', '');
INSERT INTO `temp` VALUES ('795', 'φ12.5硬钻(T46)', 'FMS1#机');
INSERT INTO `temp` VALUES ('796', 'φ12.5硬钻(T46)', 'FMS1#机');
INSERT INTO `temp` VALUES ('797', 'φ12.5硬钻(T46)', 'FMS1#机');
INSERT INTO `temp` VALUES ('798', '', '');
INSERT INTO `temp` VALUES ('799', 'φ10.7硬钻(T47)', 'FMS1#机');
INSERT INTO `temp` VALUES ('800', 'φ10.7硬钻(T47)', 'FMS1#机');
INSERT INTO `temp` VALUES ('801', 'φ10.7硬钻(T47)', 'FMS1#机');
INSERT INTO `temp` VALUES ('802', '', '');
INSERT INTO `temp` VALUES ('803', 'Φ10.7硬钻(T49)', 'FMS1#机');
INSERT INTO `temp` VALUES ('804', 'Φ10.7硬钻(T49)', 'FMS1#机');
INSERT INTO `temp` VALUES ('805', 'Φ10.7硬钻(T49)', 'FMS1#机');
INSERT INTO `temp` VALUES ('806', '', '');
INSERT INTO `temp` VALUES ('807', 'M14*1.5丝锥(T50)', 'FMS1#机');
INSERT INTO `temp` VALUES ('808', 'M14*1.5丝锥(T50)', 'FMS1#机');
INSERT INTO `temp` VALUES ('809', 'M14*1.5丝锥(T50)', 'FMS1#机');
INSERT INTO `temp` VALUES ('810', 'M14*1.5丝锥(T50)', 'FMS1#机');
INSERT INTO `temp` VALUES ('811', 'M14*1.5丝锥(T50)', 'FMS1#机');
INSERT INTO `temp` VALUES ('812', 'M14*1.5丝锥(T50)', 'FMS1#机');
INSERT INTO `temp` VALUES ('813', 'M12*1.25丝锥(T51)', 'FMS1#机');
INSERT INTO `temp` VALUES ('814', 'M12*1.25丝锥(T51)', 'FMS1#机');
INSERT INTO `temp` VALUES ('815', 'M12*1.25丝锥(T51)', 'FMS1#机');
INSERT INTO `temp` VALUES ('816', 'M12*1.25丝锥(T51)', 'FMS1#机');
INSERT INTO `temp` VALUES ('817', 'M12*1.25丝锥(T51)', 'FMS1#机');
INSERT INTO `temp` VALUES ('818', 'M12*1.25丝锥(T51)', 'FMS1#机');
INSERT INTO `temp` VALUES ('819', 'φ20.5钻头(T52)', 'FMS1#机');
INSERT INTO `temp` VALUES ('820', 'φ20.5钻头(T52)', 'FMS1#机');
INSERT INTO `temp` VALUES ('821', 'φ20.5钻头(T52)', 'FMS1#机');
INSERT INTO `temp` VALUES ('822', 'φ20.5钻头(T52)', 'FMS1#机');
INSERT INTO `temp` VALUES ('823', '', '');
INSERT INTO `temp` VALUES ('824', 'φ20铣刀(T137)', 'FMS1#机');
INSERT INTO `temp` VALUES ('825', 'φ20铣刀(T137)', 'FMS1#机');
INSERT INTO `temp` VALUES ('826', 'φ20铣刀(T137)', 'FMS1#机');
INSERT INTO `temp` VALUES ('827', '', '');
INSERT INTO `temp` VALUES ('828', 'M22*1.5丝锥(T134)', 'FMS1#机');
INSERT INTO `temp` VALUES ('829', 'M22*1.5丝锥(T134)', 'FMS1#机');
INSERT INTO `temp` VALUES ('830', 'M22*1.5丝锥(T134)', 'FMS1#机');
INSERT INTO `temp` VALUES ('831', 'M22*1.5丝锥(T134)', 'FMS1#机');
INSERT INTO `temp` VALUES ('832', 'M22*1.5丝锥(T134)', 'FMS1#机');
INSERT INTO `temp` VALUES ('833', 'M22*1.5丝锥(T134)', 'FMS1#机');
INSERT INTO `temp` VALUES ('834', 'Φ15*3.5±0.1宽铣槽刀(T135)', 'FMS1#机');
INSERT INTO `temp` VALUES ('835', 'Φ15*3.5±0.1宽铣槽刀(T135)', 'FMS1#机');
INSERT INTO `temp` VALUES ('836', 'Φ15*3.5±0.1宽铣槽刀(T135)', 'FMS1#机');
INSERT INTO `temp` VALUES ('837', 'Φ15*3.5±0.1宽铣槽刀(T135)', 'FMS1#机');
INSERT INTO `temp` VALUES ('838', '', '');
INSERT INTO `temp` VALUES ('839', 'Φ16F9铰刀(T56)', 'FMS1#机');
INSERT INTO `temp` VALUES ('840', 'Φ16F9铰刀(T56)', 'FMS1#机');
INSERT INTO `temp` VALUES ('841', 'Φ16F9铰刀(T56)', 'FMS1#机');
INSERT INTO `temp` VALUES ('842', '', '');
INSERT INTO `temp` VALUES ('843', 'Φ27.7半精镗(T57)', 'FMS1#机');
INSERT INTO `temp` VALUES ('844', 'Φ27.7半精镗(T57)', 'FMS1#机');
INSERT INTO `temp` VALUES ('845', 'Φ27.7半精镗(T57)', 'FMS1#机');
INSERT INTO `temp` VALUES ('846', 'Φ27.7半精镗(T57)', 'FMS1#机');
INSERT INTO `temp` VALUES ('847', '', '');
INSERT INTO `temp` VALUES ('848', 'Φ28 铰刀(T58)', 'FMS1#机');
INSERT INTO `temp` VALUES ('849', 'Φ28 铰刀(T58)', 'FMS1#机');
INSERT INTO `temp` VALUES ('850', 'Φ28 铰刀(T58)', 'FMS1#机');
INSERT INTO `temp` VALUES ('851', '', '');
INSERT INTO `temp` VALUES ('852', 'Φ6.05 硬钻(T59)', 'FMS1#机');
INSERT INTO `temp` VALUES ('853', 'Φ6.05 硬钻(T59)', 'FMS1#机');
INSERT INTO `temp` VALUES ('854', 'Φ6.05 硬钻(T59)', 'FMS1#机');
INSERT INTO `temp` VALUES ('855', '', '');
INSERT INTO `temp` VALUES ('856', 'Φ6.05 硬钻(T60)', 'FMS1#机');
INSERT INTO `temp` VALUES ('857', 'Φ6.05 硬钻(T60)', 'FMS1#机');
INSERT INTO `temp` VALUES ('858', 'Φ6.05 硬钻(T60)', 'FMS1#机');
INSERT INTO `temp` VALUES ('859', '', '');
INSERT INTO `temp` VALUES ('860', 'Φ67 粗镗 (T61)', 'FMS1#机');
INSERT INTO `temp` VALUES ('861', 'Φ67 粗镗 (T61)', 'FMS1#机');
INSERT INTO `temp` VALUES ('862', 'Φ67 粗镗 (T61)', 'FMS1#机');
INSERT INTO `temp` VALUES ('863', 'Φ67 粗镗 (T61)', 'FMS1#机');
INSERT INTO `temp` VALUES ('864', 'Φ67 粗镗 (T61)', 'FMS1#机');
INSERT INTO `temp` VALUES ('865', 'Φ67 粗镗 (T61)', 'FMS1#机');
INSERT INTO `temp` VALUES ('866', 'Φ71.7半精镗(T62)', 'FMS1#机');
INSERT INTO `temp` VALUES ('867', 'Φ71.7半精镗(T62)', 'FMS1#机');
INSERT INTO `temp` VALUES ('868', 'Φ71.7半精镗(T62)', 'FMS1#机');
INSERT INTO `temp` VALUES ('869', 'Φ71.7半精镗(T62)', 'FMS1#机');
INSERT INTO `temp` VALUES ('870', 'Φ71.7半精镗(T62)', 'FMS1#机');
INSERT INTO `temp` VALUES ('871', 'Φ71.7半精镗(T62)', 'FMS1#机');
INSERT INTO `temp` VALUES ('872', 'D63/C30倒角刀(T81)', 'FMS1#机');
INSERT INTO `temp` VALUES ('873', 'D63/C30倒角刀(T81)', 'FMS1#机');
INSERT INTO `temp` VALUES ('874', 'D63/C30倒角刀(T81)', 'FMS1#机');
INSERT INTO `temp` VALUES ('875', 'D63/C30倒角刀(T81)', 'FMS1#机');
INSERT INTO `temp` VALUES ('876', '', '');
INSERT INTO `temp` VALUES ('877', 'Φ32 铣刀(T64)', 'FMS1#机');
INSERT INTO `temp` VALUES ('878', 'Φ32 铣刀(T64)', 'FMS1#机');
INSERT INTO `temp` VALUES ('879', 'Φ32 铣刀(T64)', 'FMS1#机');
INSERT INTO `temp` VALUES ('880', 'Φ32 铣刀(T64)', 'FMS1#机');
INSERT INTO `temp` VALUES ('881', '', '');
INSERT INTO `temp` VALUES ('882', '扇面铣刀（T65）', 'FMS1#机');
INSERT INTO `temp` VALUES ('883', '扇面铣刀（T65）', 'FMS1#机');
INSERT INTO `temp` VALUES ('884', '扇面铣刀（T65）', 'FMS1#机');
INSERT INTO `temp` VALUES ('885', '', '');
INSERT INTO `temp` VALUES ('886', 'Φ72 精镗 (T66)', 'FMS1#机');
INSERT INTO `temp` VALUES ('887', 'Φ72 精镗 (T66)', 'FMS1#机');
INSERT INTO `temp` VALUES ('888', 'Φ72 精镗 (T66)', 'FMS1#机');
INSERT INTO `temp` VALUES ('889', 'Φ72 精镗 (T66)', 'FMS1#机');
INSERT INTO `temp` VALUES ('890', 'Φ72 精镗 (T66)', 'FMS1#机');
INSERT INTO `temp` VALUES ('891', 'Φ72 精镗 (T66)', 'FMS1#机');
INSERT INTO `temp` VALUES ('892', 'Φ26.5扩孔钻(T67)', 'FMS1#机');
INSERT INTO `temp` VALUES ('893', 'Φ26.5扩孔钻(T67)', 'FMS1#机');
INSERT INTO `temp` VALUES ('894', 'Φ26.5扩孔钻(T67)', 'FMS1#机');
INSERT INTO `temp` VALUES ('895', '', '');
INSERT INTO `temp` VALUES ('896', 'Φ26.82铰刀(T68)', 'FMS1#机');
INSERT INTO `temp` VALUES ('897', 'Φ26.82铰刀(T68)', 'FMS1#机');
INSERT INTO `temp` VALUES ('898', 'Φ26.82铰刀(T68)', 'FMS1#机');
INSERT INTO `temp` VALUES ('899', 'Φ26.82铰刀(T68)', 'FMS1#机');
INSERT INTO `temp` VALUES ('900', '', '');
INSERT INTO `temp` VALUES ('901', 'Φ25立铣刀(T86)', 'FMS1#机');
INSERT INTO `temp` VALUES ('902', 'Φ25立铣刀(T86)', 'FMS1#机');
INSERT INTO `temp` VALUES ('903', 'Φ25立铣刀(T86)', 'FMS1#机');
INSERT INTO `temp` VALUES ('904', '', '');
INSERT INTO `temp` VALUES ('905', 'Φ11立铣刀(T87)', 'FMS1#机');
INSERT INTO `temp` VALUES ('906', 'Φ11立铣刀(T87)', 'FMS1#机');
INSERT INTO `temp` VALUES ('907', 'Φ11立铣刀(T87)', 'FMS1#机');
INSERT INTO `temp` VALUES ('908', '', '');
INSERT INTO `temp` VALUES ('909', 'Φ40铣刀(T130)', 'FMS1#机');
INSERT INTO `temp` VALUES ('910', 'Φ40铣刀(T130)', 'FMS1#机');
INSERT INTO `temp` VALUES ('911', 'Φ40铣刀(T130)', 'FMS1#机');
INSERT INTO `temp` VALUES ('912', 'Φ40铣刀(T130)', 'FMS1#机');
INSERT INTO `temp` VALUES ('913', '', '');
INSERT INTO `temp` VALUES ('914', 'Φ13硬钻(T114)', 'FMS1#机');
INSERT INTO `temp` VALUES ('915', 'Φ13硬钻(T114)', 'FMS1#机');
INSERT INTO `temp` VALUES ('916', 'Φ13硬钻(T114)', 'FMS1#机');
INSERT INTO `temp` VALUES ('917', 'D125铣刀(T20)', 'FMS2#机');
INSERT INTO `temp` VALUES ('918', 'D125铣刀(T20)', '');
INSERT INTO `temp` VALUES ('919', 'D125铣刀(T20)', '');
INSERT INTO `temp` VALUES ('920', 'D125铣刀(T20)', '');
INSERT INTO `temp` VALUES ('921', '', '');
INSERT INTO `temp` VALUES ('922', 'Φ22钻头(T49)', '');
INSERT INTO `temp` VALUES ('923', 'Φ22钻头(T49)', '');
INSERT INTO `temp` VALUES ('924', 'Φ22钻头(T49)', '');
INSERT INTO `temp` VALUES ('925', '', '');
INSERT INTO `temp` VALUES ('926', '扩孔钻(T51)', '');
INSERT INTO `temp` VALUES ('927', '扩孔钻(T51)', '');
INSERT INTO `temp` VALUES ('928', '扩孔钻(T51)', '');
INSERT INTO `temp` VALUES ('929', '扩孔钻(T51)', '');
INSERT INTO `temp` VALUES ('930', '', '');
INSERT INTO `temp` VALUES ('931', 'Φ21-Φ35倒角钻(T52)', '');
INSERT INTO `temp` VALUES ('932', 'Φ21-Φ35倒角钻(T52)', '');
INSERT INTO `temp` VALUES ('933', 'Φ21-Φ35倒角钻(T52)', '');
INSERT INTO `temp` VALUES ('934', 'Φ21-Φ35倒角钻(T52)', '');
INSERT INTO `temp` VALUES ('935', '', '');
INSERT INTO `temp` VALUES ('936', 'D16*2螺纹铣刀(T53)', '');
INSERT INTO `temp` VALUES ('937', 'D16*2螺纹铣刀(T53)', '');
INSERT INTO `temp` VALUES ('938', 'D16*2螺纹铣刀(T53)', '');
INSERT INTO `temp` VALUES ('939', '', '');
INSERT INTO `temp` VALUES ('940', 'φ14.5钻头(T202)', '');
INSERT INTO `temp` VALUES ('941', 'φ14.5钻头(T202)', '');
INSERT INTO `temp` VALUES ('942', 'φ14.5钻头(T202)', '');
INSERT INTO `temp` VALUES ('943', '', '');
INSERT INTO `temp` VALUES ('944', 'φ20倒角钻(T200)', '');
INSERT INTO `temp` VALUES ('945', 'φ20倒角钻(T200)', '');
INSERT INTO `temp` VALUES ('946', 'φ20倒角钻(T200)', '');
INSERT INTO `temp` VALUES ('947', '', '');
INSERT INTO `temp` VALUES ('948', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `temp` VALUES ('949', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `temp` VALUES ('950', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `temp` VALUES ('951', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `temp` VALUES ('952', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `temp` VALUES ('953', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `temp` VALUES ('954', 'φ10.5钻头(T57)', '');
INSERT INTO `temp` VALUES ('955', 'φ10.5钻头(T57)', '');
INSERT INTO `temp` VALUES ('956', 'φ10.5钻头(T57)', '');
INSERT INTO `temp` VALUES ('957', '', '');
INSERT INTO `temp` VALUES ('958', 'M12*1.5丝锥(T58)', '');
INSERT INTO `temp` VALUES ('959', 'M12*1.5丝锥(T58)', '');
INSERT INTO `temp` VALUES ('960', 'M12*1.5丝锥(T58)', '');
INSERT INTO `temp` VALUES ('961', 'M12*1.5丝锥(T58)', '');
INSERT INTO `temp` VALUES ('962', 'M12*1.5丝锥(T58)', '');
INSERT INTO `temp` VALUES ('963', 'M12*1.5丝锥(T58)', '');
INSERT INTO `temp` VALUES ('964', 'Φ18.5直槽钻(T59)', '');
INSERT INTO `temp` VALUES ('965', 'Φ18.5直槽钻(T59)', '');
INSERT INTO `temp` VALUES ('966', 'Φ18.5直槽钻(T59)', '');
INSERT INTO `temp` VALUES ('967', '', '');
INSERT INTO `temp` VALUES ('968', 'Φ29.5扩孔钻(T60)', '');
INSERT INTO `temp` VALUES ('969', 'Φ29.5扩孔钻(T60)', '');
INSERT INTO `temp` VALUES ('970', 'Φ29.5扩孔钻(T60)', '');
INSERT INTO `temp` VALUES ('971', '', '');
INSERT INTO `temp` VALUES ('972', 'M20*1.5丝锥(T61)', '');
INSERT INTO `temp` VALUES ('973', 'M20*1.5丝锥(T61)', '');
INSERT INTO `temp` VALUES ('974', 'M20*1.5丝锥(T61)', '');
INSERT INTO `temp` VALUES ('975', 'M20*1.5丝锥(T61)', '');
INSERT INTO `temp` VALUES ('976', 'M20*1.5丝锥(T61)', '');
INSERT INTO `temp` VALUES ('977', 'M20*1.5丝锥(T61)', '');
INSERT INTO `temp` VALUES ('978', 'D80粗铣(T63)', '');
INSERT INTO `temp` VALUES ('979', 'D80粗铣(T63)', '');
INSERT INTO `temp` VALUES ('980', 'D80粗铣(T63)', '');
INSERT INTO `temp` VALUES ('981', 'D80粗铣(T63)', '');
INSERT INTO `temp` VALUES ('982', '', '');
INSERT INTO `temp` VALUES ('983', 'Φ189.5粗镗(T229)', '');
INSERT INTO `temp` VALUES ('984', 'Φ189.5粗镗(T229)', '');
INSERT INTO `temp` VALUES ('985', 'Φ189.5粗镗(T229)', '');
INSERT INTO `temp` VALUES ('986', 'Φ189.5粗镗(T229)', '');
INSERT INTO `temp` VALUES ('987', 'Φ189.5粗镗(T229)', '');
INSERT INTO `temp` VALUES ('988', 'Φ189.5粗镗(T229)', '');
INSERT INTO `temp` VALUES ('989', 'Φ199.5粗(T232)', '');
INSERT INTO `temp` VALUES ('990', 'Φ199.5粗(T232)', '');
INSERT INTO `temp` VALUES ('991', 'Φ199.5粗(T232)', '');
INSERT INTO `temp` VALUES ('992', 'Φ199.5粗(T232)', '');
INSERT INTO `temp` VALUES ('993', 'Φ199.5粗(T232)', '');
INSERT INTO `temp` VALUES ('994', 'Φ199.5粗(T232)', '');
INSERT INTO `temp` VALUES ('995', 'φ6.8直槽钻(T79)', '');
INSERT INTO `temp` VALUES ('996', 'φ6.8直槽钻(T79)', '');
INSERT INTO `temp` VALUES ('997', 'φ6.8直槽钻(T79)', '');
INSERT INTO `temp` VALUES ('998', '', '');
INSERT INTO `temp` VALUES ('999', 'M8*1.25丝锥(T80)', '');
INSERT INTO `temp` VALUES ('1000', 'M8*1.25丝锥(T80)', '');
INSERT INTO `temp` VALUES ('1001', 'M8*1.25丝锥(T80)', '');
INSERT INTO `temp` VALUES ('1002', 'M8*1.25丝锥(T80)', '');
INSERT INTO `temp` VALUES ('1003', 'M8*1.25丝锥(T80)', '');
INSERT INTO `temp` VALUES ('1004', '', '');
INSERT INTO `temp` VALUES ('1005', 'D80精铣(T201)', '');
INSERT INTO `temp` VALUES ('1006', 'D80精铣(T201)', '');
INSERT INTO `temp` VALUES ('1007', 'D80精铣(T201)', '');
INSERT INTO `temp` VALUES ('1008', 'D80精铣(T201)', '');
INSERT INTO `temp` VALUES ('1009', '', '');
INSERT INTO `temp` VALUES ('1010', 'Φ391粗镗(T8)', '');
INSERT INTO `temp` VALUES ('1011', 'Φ391粗镗(T8)', '');
INSERT INTO `temp` VALUES ('1012', 'Φ391粗镗(T8)', '');
INSERT INTO `temp` VALUES ('1013', 'Φ391粗镗(T8)', '');
INSERT INTO `temp` VALUES ('1014', 'Φ391粗镗(T8)', '');
INSERT INTO `temp` VALUES ('1015', 'φ395.5粗镗(T2)', '');
INSERT INTO `temp` VALUES ('1016', 'φ395.5粗镗(T2)', '');
INSERT INTO `temp` VALUES ('1017', 'φ395.5粗镗(T2)', '');
INSERT INTO `temp` VALUES ('1018', 'φ395.5粗镗(T2)', '');
INSERT INTO `temp` VALUES ('1019', 'φ395.5粗镗(T2)', '');
INSERT INTO `temp` VALUES ('1020', 'φ17.5直槽钻(T81)', '');
INSERT INTO `temp` VALUES ('1021', 'φ17.5直槽钻(T81)', '');
INSERT INTO `temp` VALUES ('1022', 'φ17.5直槽钻(T81)', '');
INSERT INTO `temp` VALUES ('1023', '', '');
INSERT INTO `temp` VALUES ('1024', 'Φ17.5硬钻(T82)', '');
INSERT INTO `temp` VALUES ('1025', 'Φ17.5硬钻(T82)', '');
INSERT INTO `temp` VALUES ('1026', 'Φ17.5硬钻(T82)', '');
INSERT INTO `temp` VALUES ('1027', '', '');
INSERT INTO `temp` VALUES ('1028', 'Φ17.5/Φ40反划(T83)', '');
INSERT INTO `temp` VALUES ('1029', 'Φ17.5/Φ40反划(T83)', '');
INSERT INTO `temp` VALUES ('1030', 'Φ17.5/Φ40反划(T83)', '');
INSERT INTO `temp` VALUES ('1031', 'Φ17.5/Φ40反划(T83)', '');
INSERT INTO `temp` VALUES ('1032', '', '');
INSERT INTO `temp` VALUES ('1033', 'Φ396精镗(T13)', '');
INSERT INTO `temp` VALUES ('1034', 'Φ396精镗(T13)', '');
INSERT INTO `temp` VALUES ('1035', 'Φ396精镗(T13)', '');
INSERT INTO `temp` VALUES ('1036', 'Φ396精镗(T13)', '');
INSERT INTO `temp` VALUES ('1037', 'Φ396精镗(T13)', '');
INSERT INTO `temp` VALUES ('1038', 'Φ396精镗(T13)', '');
INSERT INTO `temp` VALUES ('1039', 'Φ396精镗(T13)', '');
INSERT INTO `temp` VALUES ('1040', 'Φ396精镗(T13)', '');
INSERT INTO `temp` VALUES ('1041', 'Φ190精镗(T235)', '');
INSERT INTO `temp` VALUES ('1042', 'Φ190精镗(T235)', '');
INSERT INTO `temp` VALUES ('1043', 'Φ190精镗(T235)', '');
INSERT INTO `temp` VALUES ('1044', 'Φ190精镗(T235)', '');
INSERT INTO `temp` VALUES ('1045', 'Φ190精镗(T235)', '');
INSERT INTO `temp` VALUES ('1046', 'Φ190精镗(T235)', '');
INSERT INTO `temp` VALUES ('1047', 'Φ190精镗(T235)', '');
INSERT INTO `temp` VALUES ('1048', 'Φ190精镗(T235)', '');
INSERT INTO `temp` VALUES ('1049', '', '');
INSERT INTO `temp` VALUES ('1050', 'Φ200反精镗(T17)', '');
INSERT INTO `temp` VALUES ('1051', 'Φ200反精镗(T17)', '');
INSERT INTO `temp` VALUES ('1052', 'Φ200反精镗(T17)', '');
INSERT INTO `temp` VALUES ('1053', 'Φ200反精镗(T17)', '');
INSERT INTO `temp` VALUES ('1054', 'Φ200反精镗(T17)', '');
INSERT INTO `temp` VALUES ('1055', 'Φ200反精镗(T17)', '');
INSERT INTO `temp` VALUES ('1056', '', '');
INSERT INTO `temp` VALUES ('1057', 'D80精铣(T199)', '');
INSERT INTO `temp` VALUES ('1058', 'D80精铣(T199)', '');
INSERT INTO `temp` VALUES ('1059', 'D80精铣(T199)', '');
INSERT INTO `temp` VALUES ('1060', 'D80精铣(T199)', '');
INSERT INTO `temp` VALUES ('1061', 'D80精铣(T199)', '');
INSERT INTO `temp` VALUES ('1062', '', '');
INSERT INTO `temp` VALUES ('1063', 'D25粗铣(T109)', '');
INSERT INTO `temp` VALUES ('1064', 'D25粗铣(T109)', '');
INSERT INTO `temp` VALUES ('1065', 'D25粗铣(T109)', '');
INSERT INTO `temp` VALUES ('1066', '', '');
INSERT INTO `temp` VALUES ('1067', 'D25精铣(T110)', '');
INSERT INTO `temp` VALUES ('1068', 'D25精铣(T110)', '');
INSERT INTO `temp` VALUES ('1069', 'D25精铣(T110)', '');
INSERT INTO `temp` VALUES ('1070', '', '');
INSERT INTO `temp` VALUES ('1071', 'Φ8.7硬钻(T86)', '');
INSERT INTO `temp` VALUES ('1072', 'Φ8.7硬钻(T86)', '');
INSERT INTO `temp` VALUES ('1073', 'Φ8.7硬钻(T86)', '');
INSERT INTO `temp` VALUES ('1074', '', '');
INSERT INTO `temp` VALUES ('1075', 'Φ11 硬钻(T88)', '');
INSERT INTO `temp` VALUES ('1076', 'Φ11 硬钻(T88)', '');
INSERT INTO `temp` VALUES ('1077', 'Φ11 硬钻(T88)', '');
INSERT INTO `temp` VALUES ('1078', '', '');
INSERT INTO `temp` VALUES ('1079', 'Φ11.7硬钻(T89)', '');
INSERT INTO `temp` VALUES ('1080', 'Φ11.7硬钻(T89)', '');
INSERT INTO `temp` VALUES ('1081', 'Φ11.7硬钻(T89)', '');
INSERT INTO `temp` VALUES ('1082', '', '');
INSERT INTO `temp` VALUES ('1083', 'Φ13硬钻(T90)', '');
INSERT INTO `temp` VALUES ('1084', 'Φ13硬钻(T90)', '');
INSERT INTO `temp` VALUES ('1085', 'Φ13硬钻(T90)', '');
INSERT INTO `temp` VALUES ('1086', '', '');
INSERT INTO `temp` VALUES ('1087', '中心钻(T91)', '');
INSERT INTO `temp` VALUES ('1088', '中心钻(T91)', '');
INSERT INTO `temp` VALUES ('1089', '中心钻(T91)', '');
INSERT INTO `temp` VALUES ('1090', '', '');
INSERT INTO `temp` VALUES ('1091', 'M10*1.25丝锥(T92)', '');
INSERT INTO `temp` VALUES ('1092', 'M10*1.25丝锥(T92)', '');
INSERT INTO `temp` VALUES ('1093', 'M10*1.25丝锥(T92)', '');
INSERT INTO `temp` VALUES ('1094', 'M10*1.25丝锥(T92)', '');
INSERT INTO `temp` VALUES ('1095', 'M10*1.25丝锥(T92)', '');
INSERT INTO `temp` VALUES ('1096', 'M10*1.25丝锥(T92)', '');
INSERT INTO `temp` VALUES ('1097', 'Φ12R8铰刀(T93)', '');
INSERT INTO `temp` VALUES ('1098', 'Φ12R8铰刀(T93)', '');
INSERT INTO `temp` VALUES ('1099', 'Φ12R8铰刀(T93)', '');
INSERT INTO `temp` VALUES ('1100', '', '');
INSERT INTO `temp` VALUES ('1101', 'Φ20铣刀(T50)', '');
INSERT INTO `temp` VALUES ('1102', 'Φ20铣刀(T50)', '');
INSERT INTO `temp` VALUES ('1103', 'Φ20铣刀(T50)', '');
INSERT INTO `temp` VALUES ('1104', '', '');
INSERT INTO `temp` VALUES ('1105', 'M22*1.5丝锥(T117)', '');
INSERT INTO `temp` VALUES ('1106', 'M22*1.5丝锥(T117)', '');
INSERT INTO `temp` VALUES ('1107', 'M22*1.5丝锥(T117)', '');
INSERT INTO `temp` VALUES ('1108', 'M22*1.5丝锥(T117)', '');
INSERT INTO `temp` VALUES ('1109', 'M22*1.5丝锥(T117)', '');
INSERT INTO `temp` VALUES ('1110', '', '');
INSERT INTO `temp` VALUES ('1111', 'Φ26钻头(T118)', '');
INSERT INTO `temp` VALUES ('1112', 'Φ26钻头(T118)', '');
INSERT INTO `temp` VALUES ('1113', 'Φ26钻头(T118)', '');
INSERT INTO `temp` VALUES ('1114', 'Φ26钻头(T118)', '');
INSERT INTO `temp` VALUES ('1115', '', '');
INSERT INTO `temp` VALUES ('1116', 'Φ27.7半精镗(T119)', '');
INSERT INTO `temp` VALUES ('1117', 'Φ27.7半精镗(T119)', '');
INSERT INTO `temp` VALUES ('1118', 'Φ27.7半精镗(T119)', '');
INSERT INTO `temp` VALUES ('1119', 'Φ27.7半精镗(T119)', '');
INSERT INTO `temp` VALUES ('1120', '', '');
INSERT INTO `temp` VALUES ('1121', 'Φ34铣刀(T120)', '');
INSERT INTO `temp` VALUES ('1122', 'Φ34铣刀(T120)', '');
INSERT INTO `temp` VALUES ('1123', 'Φ34铣刀(T120)', '');
INSERT INTO `temp` VALUES ('1124', 'Φ34铣刀(T120)', '');
INSERT INTO `temp` VALUES ('1125', '', '');
INSERT INTO `temp` VALUES ('1126', 'Φ10.7钻头(T140)', '');
INSERT INTO `temp` VALUES ('1127', 'Φ10.7钻头(T140)', '');
INSERT INTO `temp` VALUES ('1128', 'Φ10.7钻头(T140)', '');
INSERT INTO `temp` VALUES ('1129', '', '');
INSERT INTO `temp` VALUES ('1130', 'M12*1.25丝锥(T142)', '');
INSERT INTO `temp` VALUES ('1131', 'M12*1.25丝锥(T142)', '');
INSERT INTO `temp` VALUES ('1132', 'M12*1.25丝锥(T142)', '');
INSERT INTO `temp` VALUES ('1133', 'M12*1.25丝锥(T142)', '');
INSERT INTO `temp` VALUES ('1134', 'M12*1.25丝锥(T142)', '');
INSERT INTO `temp` VALUES ('1135', 'M12*1.25丝锥(T142)', '');
INSERT INTO `temp` VALUES ('1136', 'Φ10.7钻头(T141)', '');
INSERT INTO `temp` VALUES ('1137', 'Φ10.7钻头(T141)', '');
INSERT INTO `temp` VALUES ('1138', 'Φ10.7钻头(T141)', '');
INSERT INTO `temp` VALUES ('1139', 'Φ10.7钻头(T141)', '');
INSERT INTO `temp` VALUES ('1140', '', '');
INSERT INTO `temp` VALUES ('1141', 'Φ13.2H7铰刀(T143)', '');
INSERT INTO `temp` VALUES ('1142', 'Φ13.2H7铰刀(T143)', '');
INSERT INTO `temp` VALUES ('1143', 'Φ13.2H7铰刀(T143)', '');
INSERT INTO `temp` VALUES ('1144', '', '');
INSERT INTO `temp` VALUES ('1145', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `temp` VALUES ('1146', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `temp` VALUES ('1147', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `temp` VALUES ('1148', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `temp` VALUES ('1149', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `temp` VALUES ('1150', '', '');
INSERT INTO `temp` VALUES ('1151', 'Φ6钻头(T148)', '');
INSERT INTO `temp` VALUES ('1152', 'Φ6钻头(T148)', '');
INSERT INTO `temp` VALUES ('1153', 'Φ6钻头(T148)', '');
INSERT INTO `temp` VALUES ('1154', '', '');
INSERT INTO `temp` VALUES ('1155', 'Φ12.5钻头(T144)', '');
INSERT INTO `temp` VALUES ('1156', 'Φ12.5钻头(T144)', '');
INSERT INTO `temp` VALUES ('1157', 'Φ12.5钻头(T144)', '');
INSERT INTO `temp` VALUES ('1158', '', '');
INSERT INTO `temp` VALUES ('1159', 'M14*1.5丝锥(T147)', '');
INSERT INTO `temp` VALUES ('1160', 'M14*1.5丝锥(T147)', '');
INSERT INTO `temp` VALUES ('1161', 'M14*1.5丝锥(T147)', '');
INSERT INTO `temp` VALUES ('1162', 'M14*1.5丝锥(T147)', '');
INSERT INTO `temp` VALUES ('1163', 'M14*1.5丝锥(T147)', '');
INSERT INTO `temp` VALUES ('1164', '', '');
INSERT INTO `temp` VALUES ('1165', 'Φ15.7钻头(T149)', '');
INSERT INTO `temp` VALUES ('1166', 'Φ15.7钻头(T149)', '');
INSERT INTO `temp` VALUES ('1167', 'Φ15.7钻头(T149)', '');
INSERT INTO `temp` VALUES ('1168', '', '');
INSERT INTO `temp` VALUES ('1169', 'Φ20.2*3.5槽铣刀（T150)', '');
INSERT INTO `temp` VALUES ('1170', 'Φ20.2*3.5槽铣刀（T150)', '');
INSERT INTO `temp` VALUES ('1171', 'Φ20.2*3.5槽铣刀（T150)', '');
INSERT INTO `temp` VALUES ('1172', 'Φ20.2*3.5槽铣刀（T150)', '');
INSERT INTO `temp` VALUES ('1173', '', '');
INSERT INTO `temp` VALUES ('1174', 'Φ16F9铰刀(T151)', '');
INSERT INTO `temp` VALUES ('1175', 'Φ16F9铰刀(T151)', '');
INSERT INTO `temp` VALUES ('1176', 'Φ16F9铰刀(T151)', '');
INSERT INTO `temp` VALUES ('1177', '', '');
INSERT INTO `temp` VALUES ('1178', 'Φ33.7粗镗(T145)', '');
INSERT INTO `temp` VALUES ('1179', 'Φ33.7粗镗(T145)', '');
INSERT INTO `temp` VALUES ('1180', 'Φ33.7粗镗(T145)', '');
INSERT INTO `temp` VALUES ('1181', 'Φ33.7粗镗(T145)', '');
INSERT INTO `temp` VALUES ('1182', 'Φ33.7粗镗(T145)', '');
INSERT INTO `temp` VALUES ('1183', 'Φ33.7粗镗(T145)', '');
INSERT INTO `temp` VALUES ('1184', 'φ35.4半精镗(T146)', '');
INSERT INTO `temp` VALUES ('1185', 'φ35.4半精镗(T146)', '');
INSERT INTO `temp` VALUES ('1186', 'φ35.4半精镗(T146)', '');
INSERT INTO `temp` VALUES ('1187', 'φ35.4半精镗(T146)', '');
INSERT INTO `temp` VALUES ('1188', 'φ35.4半精镗(T146)', '');
INSERT INTO `temp` VALUES ('1189', 'φ35.4半精镗(T146)', '');
INSERT INTO `temp` VALUES ('1190', 'φ88.5粗镗(T170)', '');
INSERT INTO `temp` VALUES ('1191', 'φ88.5粗镗(T170)', '');
INSERT INTO `temp` VALUES ('1192', 'φ88.5粗镗(T170)', '');
INSERT INTO `temp` VALUES ('1193', 'φ88.5粗镗(T170)', '');
INSERT INTO `temp` VALUES ('1194', 'φ88.5粗镗(T170)', '');
INSERT INTO `temp` VALUES ('1195', 'φ88.5粗镗(T170)', '');
INSERT INTO `temp` VALUES ('1196', 'φ89.7半精镗(T171)', '');
INSERT INTO `temp` VALUES ('1197', 'φ89.7半精镗(T171)', '');
INSERT INTO `temp` VALUES ('1198', 'φ89.7半精镗(T171)', '');
INSERT INTO `temp` VALUES ('1199', 'φ89.7半精镗(T171)', '');
INSERT INTO `temp` VALUES ('1200', 'φ89.7半精镗(T171)', '');
INSERT INTO `temp` VALUES ('1201', 'φ89.7半精镗(T171)', '');
INSERT INTO `temp` VALUES ('1202', 'φ80粗镗(T172)', '');
INSERT INTO `temp` VALUES ('1203', 'φ80粗镗(T172)', '');
INSERT INTO `temp` VALUES ('1204', 'φ80粗镗(T172)', '');
INSERT INTO `temp` VALUES ('1205', 'φ80粗镗(T172)', '');
INSERT INTO `temp` VALUES ('1206', 'φ80粗镗(T172)', '');
INSERT INTO `temp` VALUES ('1207', 'φ80粗镗(T172)', '');
INSERT INTO `temp` VALUES ('1208', 'φ80粗镗(T172)', '');
INSERT INTO `temp` VALUES ('1209', 'φ84.7半精镗(T173)', '');
INSERT INTO `temp` VALUES ('1210', 'φ84.7半精镗(T173)', '');
INSERT INTO `temp` VALUES ('1211', 'φ84.7半精镗(T173)', '');
INSERT INTO `temp` VALUES ('1212', 'φ84.7半精镗(T173)', '');
INSERT INTO `temp` VALUES ('1213', 'φ84.7半精镗(T173)', '');
INSERT INTO `temp` VALUES ('1214', 'φ84.7半精镗(T173)', '');
INSERT INTO `temp` VALUES ('1215', 'φ84.7半精镗(T173)', '');
INSERT INTO `temp` VALUES ('1216', 'D40/C45倒角铣(T180)', '');
INSERT INTO `temp` VALUES ('1217', 'D40/C45倒角铣(T180)', '');
INSERT INTO `temp` VALUES ('1218', 'D40/C45倒角铣(T180)', '');
INSERT INTO `temp` VALUES ('1219', 'D40/C45倒角铣(T180)', '');
INSERT INTO `temp` VALUES ('1220', 'D40/C45倒角铣(T180)', '');
INSERT INTO `temp` VALUES ('1221', 'D40/C45倒角铣(T180)', '');
INSERT INTO `temp` VALUES ('1222', '', '');
INSERT INTO `temp` VALUES ('1223', 'D63/C30铣刀（T169)', '');
INSERT INTO `temp` VALUES ('1224', 'D63/C30铣刀（T169)', '');
INSERT INTO `temp` VALUES ('1225', 'D63/C30铣刀（T169)', '');
INSERT INTO `temp` VALUES ('1226', 'D63/C30铣刀（T169)', '');
INSERT INTO `temp` VALUES ('1227', '', '');
INSERT INTO `temp` VALUES ('1228', 'φ63*3.15槽铣刀(T174)', '');
INSERT INTO `temp` VALUES ('1229', 'φ63*3.15槽铣刀(T174)', '');
INSERT INTO `temp` VALUES ('1230', 'φ63*3.15槽铣刀(T174)', '');
INSERT INTO `temp` VALUES ('1231', 'φ63*3.15槽铣刀(T174)', '');
INSERT INTO `temp` VALUES ('1232', '', '');
INSERT INTO `temp` VALUES ('1233', 'Φ90精镗(T175)', '');
INSERT INTO `temp` VALUES ('1234', 'Φ90精镗(T175)', '');
INSERT INTO `temp` VALUES ('1235', 'Φ90精镗(T175)', '');
INSERT INTO `temp` VALUES ('1236', 'Φ90精镗(T175)', '');
INSERT INTO `temp` VALUES ('1237', 'Φ90精镗(T175)', '');
INSERT INTO `temp` VALUES ('1238', 'Φ85精镗(T176)', '');
INSERT INTO `temp` VALUES ('1239', 'Φ85精镗(T176)', '');
INSERT INTO `temp` VALUES ('1240', 'Φ85精镗(T176)', '');
INSERT INTO `temp` VALUES ('1241', 'Φ85精镗(T176)', '');
INSERT INTO `temp` VALUES ('1242', 'Φ85精镗(T176)', '');
INSERT INTO `temp` VALUES ('1243', 'Φ85精镗(T176)', '');
INSERT INTO `temp` VALUES ('1244', '', '');
INSERT INTO `temp` VALUES ('1245', 'φ35.72镗刀(T177)', '');
INSERT INTO `temp` VALUES ('1246', 'φ35.72镗刀(T177)', '');
INSERT INTO `temp` VALUES ('1247', 'φ35.72镗刀(T177)', '');
INSERT INTO `temp` VALUES ('1248', 'φ35.72镗刀(T177)', '');
INSERT INTO `temp` VALUES ('1249', 'φ35.72镗刀(T177)', '');
INSERT INTO `temp` VALUES ('1250', 'Φ30精镗(T62)', '');
INSERT INTO `temp` VALUES ('1251', 'Φ30精镗(T62)', '');
INSERT INTO `temp` VALUES ('1252', 'Φ30精镗(T62)', '');
INSERT INTO `temp` VALUES ('1253', 'Φ30精镗(T62)', '');
INSERT INTO `temp` VALUES ('1254', 'Φ30精镗(T62)', '');
INSERT INTO `temp` VALUES ('1255', 'φ20.5钻头(T116)', '');
INSERT INTO `temp` VALUES ('1256', 'φ20.5钻头(T116)', '');
INSERT INTO `temp` VALUES ('1257', 'φ20.5钻头(T116)', '');
INSERT INTO `temp` VALUES ('1258', 'φ20.5钻头(T116)', '');
INSERT INTO `temp` VALUES ('1259', '', '');
INSERT INTO `temp` VALUES ('1260', 'φ180粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1261', 'φ180粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1262', 'φ180粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1263', 'φ180粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1264', 'φ180粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1265', 'φ180粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1266', 'φ180粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1267', 'φ416粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1268', 'φ416粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1269', 'φ416粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1270', 'φ416粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1271', 'φ416粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1272', 'φ416粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1273', 'φ416粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1274', 'Φ170粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1275', 'Φ170粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1276', 'Φ170粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1277', 'Φ170粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1278', 'Φ170粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1279', 'Φ170粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1280', 'Φ170粗镗刀', '1-29');
INSERT INTO `temp` VALUES ('1281', 'Φ120精镗刀', '1-29');
INSERT INTO `temp` VALUES ('1282', 'Φ120精镗刀', '1-29');
INSERT INTO `temp` VALUES ('1283', 'Φ120精镗刀', '1-29');
INSERT INTO `temp` VALUES ('1284', 'Φ120精镗刀', '1-29');
INSERT INTO `temp` VALUES ('1285', '外圆粗车刀制动器活塞OP20(T01)', '南车床线');
INSERT INTO `temp` VALUES ('1286', '外圆粗车刀制动器活塞OP20(T01)', '南车床线');
INSERT INTO `temp` VALUES ('1287', '内孔粗车刀制动器活塞OP20(T02)', '南车床线');
INSERT INTO `temp` VALUES ('1288', '内孔粗车刀制动器活塞OP20(T02)', '南车床线');
INSERT INTO `temp` VALUES ('1289', '外圆精车刀制动器活塞OP20(T03)', '南车床线');
INSERT INTO `temp` VALUES ('1290', '外圆精车刀制动器活塞OP20(T03)', '南车床线');
INSERT INTO `temp` VALUES ('1291', '倒角车刀制动器活塞OP20(T04)', '南车床线');
INSERT INTO `temp` VALUES ('1292', '倒角车刀制动器活塞OP20(T04)', '南车床线');
INSERT INTO `temp` VALUES ('1293', '内孔精车刀制动器活塞OP20(T05)', '南车床线');
INSERT INTO `temp` VALUES ('1294', '内孔精车刀制动器活塞OP20(T05)', '南车床线');
INSERT INTO `temp` VALUES ('1295', '内孔精车刀制动器活塞OP30(T05)', '南车床线');
INSERT INTO `temp` VALUES ('1296', '外圆粗车刀制动器活塞OP30(T01)', '南车床线');
INSERT INTO `temp` VALUES ('1297', '外圆粗车刀制动器活塞OP30(T01)', '南车床线');
INSERT INTO `temp` VALUES ('1298', '外圆偏车刀制动器活塞OP30(T02)', '南车床线');
INSERT INTO `temp` VALUES ('1299', '外圆偏车刀制动器活塞OP30(T02)', '南车床线');
INSERT INTO `temp` VALUES ('1300', '外圆精车刀制动器活塞OP30(T03)', '南车床线');
INSERT INTO `temp` VALUES ('1301', '外圆精车刀制动器活塞OP30(T03)', '南车床线');
INSERT INTO `temp` VALUES ('1302', 'D10.5*D14组合钻头制动器活塞OP30(T04)', '南车床线');
INSERT INTO `temp` VALUES ('1303', 'D10.5*D14组合钻头制动器活塞OP30(T04)', '南车床线');
INSERT INTO `temp` VALUES ('1304', 'D10.5*D14组合钻头制动器活塞OP30(T04)', '南车床线');
INSERT INTO `temp` VALUES ('1305', '外圆磨制动器活塞OP40（T01)', '北车床线');
INSERT INTO `temp` VALUES ('1306', '外圆磨制动器活塞OP40（T01)', '北车床线');
INSERT INTO `temp` VALUES ('1307', '外圆粗车刀轴承座OP10(T01)', '北车床线');
INSERT INTO `temp` VALUES ('1308', '外圆粗车刀轴承座OP10(T01)', '北车床线');
INSERT INTO `temp` VALUES ('1309', '内孔粗车刀轴承座OP10(T02)', '北车床线');
INSERT INTO `temp` VALUES ('1310', '内孔粗车刀轴承座OP10(T02)', '北车床线');
INSERT INTO `temp` VALUES ('1311', '外圆精车刀轴承座OP10(T03)', '北车床线');
INSERT INTO `temp` VALUES ('1312', '外圆精车刀轴承座OP10(T03)', '北车床线');
INSERT INTO `temp` VALUES ('1313', '内孔精车刀轴承座OP10(T04)', '北车床线');
INSERT INTO `temp` VALUES ('1314', '内孔精车刀轴承座OP10(T04)', '北车床线');
INSERT INTO `temp` VALUES ('1315', '内孔精车刀轴承座OP10(T04)', '北车床线');
INSERT INTO `temp` VALUES ('1316', 'D11*C1组合钻头轴承座OP10(T05)', '北车床线');
INSERT INTO `temp` VALUES ('1317', 'D11*C1组合钻头轴承座OP10(T05)', '北车床线');
INSERT INTO `temp` VALUES ('1318', '外圆粗车刀轴承座OP20(T01)', '北车床线');
INSERT INTO `temp` VALUES ('1319', '外圆粗车刀轴承座OP20(T01)', '北车床线');
INSERT INTO `temp` VALUES ('1320', '外圆精车刀轴承座OP20(T02)', '北车床线');
INSERT INTO `temp` VALUES ('1321', '外圆精车刀轴承座OP20(T02)', '北车床线');
INSERT INTO `temp` VALUES ('1322', '内孔粗车刀轴承座OP20(T03)', '北车床线');
INSERT INTO `temp` VALUES ('1323', '内孔粗车刀轴承座OP20(T03)', '北车床线');
INSERT INTO `temp` VALUES ('1324', 'D16倒角钻轴承座OP20(T04)', '北车床线');
INSERT INTO `temp` VALUES ('1325', 'D16倒角钻轴承座OP20(T04)', '北车床线');
INSERT INTO `temp` VALUES ('1326', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1327', '', '');
INSERT INTO `temp` VALUES ('1328', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1329', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1330', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1331', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1332', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1333', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1334', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1335', '', '');
INSERT INTO `temp` VALUES ('1336', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1337', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1338', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1339', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1340', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1341', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1342', '', '');
INSERT INTO `temp` VALUES ('1343', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1344', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1345', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1346', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1347', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1348', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1349', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1350', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1351', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1352', '', '');
INSERT INTO `temp` VALUES ('1353', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1354', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1355', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1356', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1357', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1358', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1359', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1360', '', '');
INSERT INTO `temp` VALUES ('1361', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1362', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1363', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1364', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1365', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1366', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1367', '', '');
INSERT INTO `temp` VALUES ('1368', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1369', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1370', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1371', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1372', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1373', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1374', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1375', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1376', '', '');
INSERT INTO `temp` VALUES ('1377', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1378', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1379', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1380', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1381', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1382', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1383', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1384', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1385', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1386', '', '');
INSERT INTO `temp` VALUES ('1387', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1388', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1389', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1390', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1391', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1392', '', '');
INSERT INTO `temp` VALUES ('1393', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1394', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1395', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1396', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1397', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1398', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1399', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1400', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1401', '', '');
INSERT INTO `temp` VALUES ('1402', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1403', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1404', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1405', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1406', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1407', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1408', '', '');
INSERT INTO `temp` VALUES ('1409', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1410', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1411', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1412', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1413', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1414', '', '');
INSERT INTO `temp` VALUES ('1415', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1416', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1417', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1418', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1419', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1420', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1421', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1422', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1423', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1424', '', '');
INSERT INTO `temp` VALUES ('1425', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1426', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1427', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1428', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1429', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1430', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1431', '', '');
INSERT INTO `temp` VALUES ('1432', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1433', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1434', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1435', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1436', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1437', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1438', '', '');
INSERT INTO `temp` VALUES ('1439', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1440', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1441', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1442', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1443', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1444', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1445', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1446', '', '');
INSERT INTO `temp` VALUES ('1447', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1448', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1449', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1450', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1451', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1452', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1453', '', '');
INSERT INTO `temp` VALUES ('1454', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1455', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1456', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1457', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1458', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1459', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1460', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1461', '', '');
INSERT INTO `temp` VALUES ('1462', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1463', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1464', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1465', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1466', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1467', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1468', '', '');
INSERT INTO `temp` VALUES ('1469', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1470', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1471', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1472', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1473', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1474', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1475', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1476', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1477', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1478', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1479', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1480', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1481', '', '');
INSERT INTO `temp` VALUES ('1482', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1483', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1484', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1485', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1486', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1487', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1488', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1489', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1490', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1491', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1492', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1493', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1494', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1495', '', '');
INSERT INTO `temp` VALUES ('1496', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1497', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1498', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1499', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1500', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1501', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1502', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1503', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1504', '', '');
INSERT INTO `temp` VALUES ('1505', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1506', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1507', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1508', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1509', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1510', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1511', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1512', '', '');
INSERT INTO `temp` VALUES ('1513', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1514', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1515', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1516', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1517', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1518', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1519', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1520', '', '');
INSERT INTO `temp` VALUES ('1521', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1522', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1523', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1524', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1525', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1526', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1527', '', '');
INSERT INTO `temp` VALUES ('1528', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1529', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1530', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1531', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1532', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1533', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1534', '', '');
INSERT INTO `temp` VALUES ('1535', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1536', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1537', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1538', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1539', '减速器自动线', '减速器自动线');
INSERT INTO `temp` VALUES ('1540', 'OP20T01', '1-34');
INSERT INTO `temp` VALUES ('1541', '', '');
INSERT INTO `temp` VALUES ('1542', '', '1-34');
INSERT INTO `temp` VALUES ('1543', '', '1-34');
INSERT INTO `temp` VALUES ('1544', '', '1-34');
INSERT INTO `temp` VALUES ('1545', '', '1-34');
INSERT INTO `temp` VALUES ('1546', '', '1-34');
INSERT INTO `temp` VALUES ('1547', '', '1-34');
INSERT INTO `temp` VALUES ('1548', 'OP20T40', '1-34');
INSERT INTO `temp` VALUES ('1549', '', '');
INSERT INTO `temp` VALUES ('1550', '', '1-34');
INSERT INTO `temp` VALUES ('1551', '', '1-34');
INSERT INTO `temp` VALUES ('1552', '', '1-34');
INSERT INTO `temp` VALUES ('1553', '', '1-34');
INSERT INTO `temp` VALUES ('1554', '', '1-34');
INSERT INTO `temp` VALUES ('1555', '', '1-34');
INSERT INTO `temp` VALUES ('1556', '', '1-34');
INSERT INTO `temp` VALUES ('1557', '', '1-34');
INSERT INTO `temp` VALUES ('1558', 'OP20T238', '1-34');
INSERT INTO `temp` VALUES ('1559', '', '');
INSERT INTO `temp` VALUES ('1560', '', '1-34');
INSERT INTO `temp` VALUES ('1561', '', '1-34');
INSERT INTO `temp` VALUES ('1562', '', '1-34');
INSERT INTO `temp` VALUES ('1563', '', '1-34');
INSERT INTO `temp` VALUES ('1564', '', '1-34');
INSERT INTO `temp` VALUES ('1565', '', '1-34');
INSERT INTO `temp` VALUES ('1566', '', '1-34');
INSERT INTO `temp` VALUES ('1567', '', '1-34');
INSERT INTO `temp` VALUES ('1568', '', '1-34');
INSERT INTO `temp` VALUES ('1569', 'OP20T239', '1-34');
INSERT INTO `temp` VALUES ('1570', '', '');
INSERT INTO `temp` VALUES ('1571', '', '1-34');
INSERT INTO `temp` VALUES ('1572', '', '1-34');
INSERT INTO `temp` VALUES ('1573', '', '1-34');
INSERT INTO `temp` VALUES ('1574', '', '1-34');
INSERT INTO `temp` VALUES ('1575', '', '1-34');
INSERT INTO `temp` VALUES ('1576', '', '1-34');
INSERT INTO `temp` VALUES ('1577', 'OP20T290', '1-34');
INSERT INTO `temp` VALUES ('1578', '', '');
INSERT INTO `temp` VALUES ('1579', '', '1-34');
INSERT INTO `temp` VALUES ('1580', '', '1-34');
INSERT INTO `temp` VALUES ('1581', '', '1-34');
INSERT INTO `temp` VALUES ('1582', '', '1-34');
INSERT INTO `temp` VALUES ('1583', 'OP20T241', '1-34');
INSERT INTO `temp` VALUES ('1584', '', '');
INSERT INTO `temp` VALUES ('1585', '', '1-34');
INSERT INTO `temp` VALUES ('1586', '', '1-34');
INSERT INTO `temp` VALUES ('1587', '', '1-34');
INSERT INTO `temp` VALUES ('1588', '', '1-34');
INSERT INTO `temp` VALUES ('1589', 'OP20T243', '1-34');
INSERT INTO `temp` VALUES ('1590', '', '');
INSERT INTO `temp` VALUES ('1591', '', '1-34');
INSERT INTO `temp` VALUES ('1592', '', '1-34');
INSERT INTO `temp` VALUES ('1593', '', '1-34');
INSERT INTO `temp` VALUES ('1594', '', '1-34');
INSERT INTO `temp` VALUES ('1595', '', '1-34');
INSERT INTO `temp` VALUES ('1596', '', '1-34');
INSERT INTO `temp` VALUES ('1597', 'OP20T208', '1-34');
INSERT INTO `temp` VALUES ('1598', '', '');
INSERT INTO `temp` VALUES ('1599', '', '1-34');
INSERT INTO `temp` VALUES ('1600', '', '1-34');
INSERT INTO `temp` VALUES ('1601', '', '1-34');
INSERT INTO `temp` VALUES ('1602', '', '1-34');
INSERT INTO `temp` VALUES ('1603', 'OP20T212', '1-34');
INSERT INTO `temp` VALUES ('1604', '', '');
INSERT INTO `temp` VALUES ('1605', '', '1-34');
INSERT INTO `temp` VALUES ('1606', '', '1-34');
INSERT INTO `temp` VALUES ('1607', '', '1-34');
INSERT INTO `temp` VALUES ('1608', '', '1-34');
INSERT INTO `temp` VALUES ('1609', 'OP20T281', '1-34');
INSERT INTO `temp` VALUES ('1610', '', '1-34');
INSERT INTO `temp` VALUES ('1611', '', '1-34');
INSERT INTO `temp` VALUES ('1612', '', '1-34');
INSERT INTO `temp` VALUES ('1613', '', '1-34');
INSERT INTO `temp` VALUES ('1614', '', '1-34');
INSERT INTO `temp` VALUES ('1615', '', '1-34');
INSERT INTO `temp` VALUES ('1616', 'OP20T213', '1-34');
INSERT INTO `temp` VALUES ('1617', '', '');
INSERT INTO `temp` VALUES ('1618', '', '1-34');
INSERT INTO `temp` VALUES ('1619', '', '1-34');
INSERT INTO `temp` VALUES ('1620', '', '1-34');
INSERT INTO `temp` VALUES ('1621', '', '1-34');
INSERT INTO `temp` VALUES ('1622', '', '1-34');
INSERT INTO `temp` VALUES ('1623', 'OP20T242', '1-34');
INSERT INTO `temp` VALUES ('1624', '', '');
INSERT INTO `temp` VALUES ('1625', '', '1-34');
INSERT INTO `temp` VALUES ('1626', '', '1-34');
INSERT INTO `temp` VALUES ('1627', '', '1-34');
INSERT INTO `temp` VALUES ('1628', '', '1-34');
INSERT INTO `temp` VALUES ('1629', '', '1-34');
INSERT INTO `temp` VALUES ('1630', 'OP20T244', '1-34');
INSERT INTO `temp` VALUES ('1631', '', '');
INSERT INTO `temp` VALUES ('1632', '', '1-34');
INSERT INTO `temp` VALUES ('1633', '', '1-34');
INSERT INTO `temp` VALUES ('1634', '', '1-34');
INSERT INTO `temp` VALUES ('1635', '', '1-34');
INSERT INTO `temp` VALUES ('1636', '', '1-34');
INSERT INTO `temp` VALUES ('1637', 'OP20T254', '1-34');
INSERT INTO `temp` VALUES ('1638', '', '');
INSERT INTO `temp` VALUES ('1639', '', '1-34');
INSERT INTO `temp` VALUES ('1640', '', '1-34');
INSERT INTO `temp` VALUES ('1641', '', '1-34');
INSERT INTO `temp` VALUES ('1642', '', '1-34');
INSERT INTO `temp` VALUES ('1643', '', '1-34');
INSERT INTO `temp` VALUES ('1644', '', '1-34');
INSERT INTO `temp` VALUES ('1645', '', '1-34');
INSERT INTO `temp` VALUES ('1646', '', '1-34');
INSERT INTO `temp` VALUES ('1647', 'OP20T255', '1-34');
INSERT INTO `temp` VALUES ('1648', '', '');
INSERT INTO `temp` VALUES ('1649', '', '1-34');
INSERT INTO `temp` VALUES ('1650', '', '1-34');
INSERT INTO `temp` VALUES ('1651', '', '1-34');
INSERT INTO `temp` VALUES ('1652', '', '1-34');
INSERT INTO `temp` VALUES ('1653', '', '1-34');
INSERT INTO `temp` VALUES ('1654', '', '1-34');
INSERT INTO `temp` VALUES ('1655', '', '1-34');
INSERT INTO `temp` VALUES ('1656', 'OP20T256', '1-34');
INSERT INTO `temp` VALUES ('1657', '', '');
INSERT INTO `temp` VALUES ('1658', '', '1-34');
INSERT INTO `temp` VALUES ('1659', '', '1-34');
INSERT INTO `temp` VALUES ('1660', '', '1-34');
INSERT INTO `temp` VALUES ('1661', '', '1-34');
INSERT INTO `temp` VALUES ('1662', '', '1-34');
INSERT INTO `temp` VALUES ('1663', '', '1-34');
INSERT INTO `temp` VALUES ('1664', '', '1-34');
INSERT INTO `temp` VALUES ('1665', '', '1-34');
INSERT INTO `temp` VALUES ('1666', 'OP20T257', '1-34');
INSERT INTO `temp` VALUES ('1667', '', '');
INSERT INTO `temp` VALUES ('1668', '', '1-34');
INSERT INTO `temp` VALUES ('1669', '', '1-34');
INSERT INTO `temp` VALUES ('1670', '', '1-34');
INSERT INTO `temp` VALUES ('1671', '', '1-34');
INSERT INTO `temp` VALUES ('1672', 'OP20T258', '1-34');
INSERT INTO `temp` VALUES ('1673', '', '');
INSERT INTO `temp` VALUES ('1674', '', '1-34');
INSERT INTO `temp` VALUES ('1675', '', '1-34');
INSERT INTO `temp` VALUES ('1676', '', '1-34');
INSERT INTO `temp` VALUES ('1677', '', '1-34');
INSERT INTO `temp` VALUES ('1678', '', '1-34');
INSERT INTO `temp` VALUES ('1679', 'OP20T231', '1-34');
INSERT INTO `temp` VALUES ('1680', '', '');
INSERT INTO `temp` VALUES ('1681', '', '1-34');
INSERT INTO `temp` VALUES ('1682', '', '1-34');
INSERT INTO `temp` VALUES ('1683', '', '1-34');
INSERT INTO `temp` VALUES ('1684', '', '1-34');
INSERT INTO `temp` VALUES ('1685', '', '1-34');
INSERT INTO `temp` VALUES ('1686', '', '1-34');
INSERT INTO `temp` VALUES ('1687', 'OP20T215', '1-34');
INSERT INTO `temp` VALUES ('1688', '2016.6.21借出一套', '');
INSERT INTO `temp` VALUES ('1689', '2016.6.22借出一套', '1-34');
INSERT INTO `temp` VALUES ('1690', '', '1-34');
INSERT INTO `temp` VALUES ('1691', '', '1-34');
INSERT INTO `temp` VALUES ('1692', '', '1-34');
INSERT INTO `temp` VALUES ('1693', '', '1-34');
INSERT INTO `temp` VALUES ('1694', '', '1-34');
INSERT INTO `temp` VALUES ('1695', 'MN107023RA-N462074', '1-34');
INSERT INTO `temp` VALUES ('1696', '', '1-34');
INSERT INTO `temp` VALUES ('1697', 'OP20T216', '1-34');
INSERT INTO `temp` VALUES ('1698', '', '');
INSERT INTO `temp` VALUES ('1699', '', '1-34');
INSERT INTO `temp` VALUES ('1700', '', '1-34');
INSERT INTO `temp` VALUES ('1701', '', '1-34');
INSERT INTO `temp` VALUES ('1702', '', '1-34');
INSERT INTO `temp` VALUES ('1703', '', '1-34');
INSERT INTO `temp` VALUES ('1704', '', '1-34');
INSERT INTO `temp` VALUES ('1705', 'OP20T214', '1-34');
INSERT INTO `temp` VALUES ('1706', '', '');
INSERT INTO `temp` VALUES ('1707', '', '1-34');
INSERT INTO `temp` VALUES ('1708', '', '1-34');
INSERT INTO `temp` VALUES ('1709', '', '1-34');
INSERT INTO `temp` VALUES ('1710', '', '1-34');
INSERT INTO `temp` VALUES ('1711', '', '1-34');
INSERT INTO `temp` VALUES ('1712', '', '1-34');
INSERT INTO `temp` VALUES ('1713', '', '1-34');
INSERT INTO `temp` VALUES ('1714', '', '1-34');
INSERT INTO `temp` VALUES ('1715', 'OP20T209', '1-34');
INSERT INTO `temp` VALUES ('1716', '', '');
INSERT INTO `temp` VALUES ('1717', '', '1-34');
INSERT INTO `temp` VALUES ('1718', '', '1-34');
INSERT INTO `temp` VALUES ('1719', '', '1-34');
INSERT INTO `temp` VALUES ('1720', '', '1-34');
INSERT INTO `temp` VALUES ('1721', '', '1-34');
INSERT INTO `temp` VALUES ('1722', 'OP30T01', '1-28');
INSERT INTO `temp` VALUES ('1723', '', '');
INSERT INTO `temp` VALUES ('1724', '', '1-28');
INSERT INTO `temp` VALUES ('1725', '', '1-28');
INSERT INTO `temp` VALUES ('1726', '', '1-28');
INSERT INTO `temp` VALUES ('1727', '', '1-28');
INSERT INTO `temp` VALUES ('1728', '', '1-28');
INSERT INTO `temp` VALUES ('1729', 'OP30T40', '1-28');
INSERT INTO `temp` VALUES ('1730', '', '');
INSERT INTO `temp` VALUES ('1731', '', '1-28');
INSERT INTO `temp` VALUES ('1732', '', '1-28');
INSERT INTO `temp` VALUES ('1733', '', '1-28');
INSERT INTO `temp` VALUES ('1734', '', '1-28');
INSERT INTO `temp` VALUES ('1735', '', '1-28');
INSERT INTO `temp` VALUES ('1736', '', '1-28');
INSERT INTO `temp` VALUES ('1737', '', '1-28');
INSERT INTO `temp` VALUES ('1738', '', '1-28');
INSERT INTO `temp` VALUES ('1739', '', '1-28');
INSERT INTO `temp` VALUES ('1740', 'OP30T276', '1-28');
INSERT INTO `temp` VALUES ('1741', '', '');
INSERT INTO `temp` VALUES ('1742', '', '1-28');
INSERT INTO `temp` VALUES ('1743', '', '1-28');
INSERT INTO `temp` VALUES ('1744', '', '1-28');
INSERT INTO `temp` VALUES ('1745', '', '1-28');
INSERT INTO `temp` VALUES ('1746', '', '1-28');
INSERT INTO `temp` VALUES ('1747', '', '1-28');
INSERT INTO `temp` VALUES ('1748', 'OP30T239', '1-28');
INSERT INTO `temp` VALUES ('1749', '', '');
INSERT INTO `temp` VALUES ('1750', '', '1-28');
INSERT INTO `temp` VALUES ('1751', '', '1-28');
INSERT INTO `temp` VALUES ('1752', '', '1-28');
INSERT INTO `temp` VALUES ('1753', '', '1-28');
INSERT INTO `temp` VALUES ('1754', '', '1-28');
INSERT INTO `temp` VALUES ('1755', '', '1-28');
INSERT INTO `temp` VALUES ('1756', 'OP30T279', '1-28');
INSERT INTO `temp` VALUES ('1757', '', '');
INSERT INTO `temp` VALUES ('1758', '', '1-28');
INSERT INTO `temp` VALUES ('1759', '', '1-28');
INSERT INTO `temp` VALUES ('1760', '', '1-28');
INSERT INTO `temp` VALUES ('1761', '', '1-28');
INSERT INTO `temp` VALUES ('1762', '', '1-28');
INSERT INTO `temp` VALUES ('1763', '', '1-28');
INSERT INTO `temp` VALUES ('1764', '', '1-28');
INSERT INTO `temp` VALUES ('1765', '', '1-28');
INSERT INTO `temp` VALUES ('1766', 'OP30T207', '1-28');
INSERT INTO `temp` VALUES ('1767', '', '');
INSERT INTO `temp` VALUES ('1768', '', '1-28');
INSERT INTO `temp` VALUES ('1769', '', '1-28');
INSERT INTO `temp` VALUES ('1770', '', '1-28');
INSERT INTO `temp` VALUES ('1771', '', '1-28');
INSERT INTO `temp` VALUES ('1772', '', '1-28');
INSERT INTO `temp` VALUES ('1773', 'OP30T278', '1-28');
INSERT INTO `temp` VALUES ('1774', '', '');
INSERT INTO `temp` VALUES ('1775', '', '1-28');
INSERT INTO `temp` VALUES ('1776', '', '1-28');
INSERT INTO `temp` VALUES ('1777', '', '1-28');
INSERT INTO `temp` VALUES ('1778', '', '1-28');
INSERT INTO `temp` VALUES ('1779', '', '1-28');
INSERT INTO `temp` VALUES ('1780', '', '1-28');
INSERT INTO `temp` VALUES ('1781', '', '1-28');
INSERT INTO `temp` VALUES ('1782', '', '1-28');
INSERT INTO `temp` VALUES ('1783', 'OP30T222', '1-28');
INSERT INTO `temp` VALUES ('1784', '', '');
INSERT INTO `temp` VALUES ('1785', '', '1-28');
INSERT INTO `temp` VALUES ('1786', '', '1-28');
INSERT INTO `temp` VALUES ('1787', '', '1-28');
INSERT INTO `temp` VALUES ('1788', '', '1-28');
INSERT INTO `temp` VALUES ('1789', '', '1-28');
INSERT INTO `temp` VALUES ('1790', 'OP30T224', '1-28');
INSERT INTO `temp` VALUES ('1791', '', '');
INSERT INTO `temp` VALUES ('1792', '', '1-28');
INSERT INTO `temp` VALUES ('1793', '', '1-28');
INSERT INTO `temp` VALUES ('1794', '', '1-28');
INSERT INTO `temp` VALUES ('1795', '', '1-28');
INSERT INTO `temp` VALUES ('1796', '', '1-28');
INSERT INTO `temp` VALUES ('1797', '', '1-28');
INSERT INTO `temp` VALUES ('1798', '', '1-28');
INSERT INTO `temp` VALUES ('1799', '', '1-28');
INSERT INTO `temp` VALUES ('1800', '', '1-28');
INSERT INTO `temp` VALUES ('1801', 'OP30T286', '1-28');
INSERT INTO `temp` VALUES ('1802', '', '');
INSERT INTO `temp` VALUES ('1803', '', '1-28');
INSERT INTO `temp` VALUES ('1804', '', '1-28');
INSERT INTO `temp` VALUES ('1805', '', '1-28');
INSERT INTO `temp` VALUES ('1806', '', '1-28');
INSERT INTO `temp` VALUES ('1807', '', '1-28');
INSERT INTO `temp` VALUES ('1808', '', '1-28');
INSERT INTO `temp` VALUES ('1809', 'OP30T235', '1-28');
INSERT INTO `temp` VALUES ('1810', '', '');
INSERT INTO `temp` VALUES ('1811', '', '1-28');
INSERT INTO `temp` VALUES ('1812', '', '1-28');
INSERT INTO `temp` VALUES ('1813', '', '1-28');
INSERT INTO `temp` VALUES ('1814', '', '1-28');
INSERT INTO `temp` VALUES ('1815', '', '1-28');
INSERT INTO `temp` VALUES ('1816', '', '1-28');
INSERT INTO `temp` VALUES ('1817', '', '1-28');
INSERT INTO `temp` VALUES ('1818', 'OP30T236', '1-28');
INSERT INTO `temp` VALUES ('1819', '', '');
INSERT INTO `temp` VALUES ('1820', '', '1-28');
INSERT INTO `temp` VALUES ('1821', '', '1-28');
INSERT INTO `temp` VALUES ('1822', '', '1-28');
INSERT INTO `temp` VALUES ('1823', '', '1-28');
INSERT INTO `temp` VALUES ('1824', '', '1-28');
INSERT INTO `temp` VALUES ('1825', '', '1-28');
INSERT INTO `temp` VALUES ('1826', '', '1-28');
INSERT INTO `temp` VALUES ('1827', '', '1-28');
INSERT INTO `temp` VALUES ('1828', '', '1-28');
INSERT INTO `temp` VALUES ('1829', 'OP30T232', '1-28');
INSERT INTO `temp` VALUES ('1830', '', '');
INSERT INTO `temp` VALUES ('1831', '', '1-28');
INSERT INTO `temp` VALUES ('1832', '', '1-28');
INSERT INTO `temp` VALUES ('1833', '', '1-28');
INSERT INTO `temp` VALUES ('1834', '', '1-28');
INSERT INTO `temp` VALUES ('1835', '', '1-28');
INSERT INTO `temp` VALUES ('1836', '', '1-28');
INSERT INTO `temp` VALUES ('1837', 'OP30T225', '1-28');
INSERT INTO `temp` VALUES ('1838', '', '');
INSERT INTO `temp` VALUES ('1839', '', '1-28');
INSERT INTO `temp` VALUES ('1840', '', '1-28');
INSERT INTO `temp` VALUES ('1841', '', '1-28');
INSERT INTO `temp` VALUES ('1842', '', '1-28');
INSERT INTO `temp` VALUES ('1843', '', '1-28');
INSERT INTO `temp` VALUES ('1844', '', '1-28');
INSERT INTO `temp` VALUES ('1845', 'OP30T96', '1-28');
INSERT INTO `temp` VALUES ('1846', '', '');
INSERT INTO `temp` VALUES ('1847', '', '1-28');
INSERT INTO `temp` VALUES ('1848', '', '1-28');
INSERT INTO `temp` VALUES ('1849', '', '1-28');
INSERT INTO `temp` VALUES ('1850', '', '1-28');
INSERT INTO `temp` VALUES ('1851', '', '1-28');
INSERT INTO `temp` VALUES ('1852', 'OP30T266', '1-28');
INSERT INTO `temp` VALUES ('1853', '', '');
INSERT INTO `temp` VALUES ('1854', '', '1-28');
INSERT INTO `temp` VALUES ('1855', '', '1-28');
INSERT INTO `temp` VALUES ('1856', '', '1-28');
INSERT INTO `temp` VALUES ('1857', '', '1-28');
INSERT INTO `temp` VALUES ('1858', '', '1-28');
INSERT INTO `temp` VALUES ('1859', '', '1-28');
INSERT INTO `temp` VALUES ('1860', '', '1-28');
INSERT INTO `temp` VALUES ('1861', '', '1-28');
INSERT INTO `temp` VALUES ('1862', '', '1-28');
INSERT INTO `temp` VALUES ('1863', '', '1-28');
INSERT INTO `temp` VALUES ('1864', '', '1-28');
INSERT INTO `temp` VALUES ('1865', 'OP30T262', '1-28');
INSERT INTO `temp` VALUES ('1866', '', '');
INSERT INTO `temp` VALUES ('1867', '', '1-28');
INSERT INTO `temp` VALUES ('1868', '', '1-28');
INSERT INTO `temp` VALUES ('1869', '', '1-28');
INSERT INTO `temp` VALUES ('1870', '', '1-28');
INSERT INTO `temp` VALUES ('1871', '', '1-28');
INSERT INTO `temp` VALUES ('1872', '', '1-28');
INSERT INTO `temp` VALUES ('1873', '', '1-28');
INSERT INTO `temp` VALUES ('1874', '', '1-28');
INSERT INTO `temp` VALUES ('1875', '', '1-28');
INSERT INTO `temp` VALUES ('1876', 'OP30T280', '1-28');
INSERT INTO `temp` VALUES ('1877', '', '');
INSERT INTO `temp` VALUES ('1878', '', '1-28');
INSERT INTO `temp` VALUES ('1879', '', '1-28');
INSERT INTO `temp` VALUES ('1880', '', '1-28');
INSERT INTO `temp` VALUES ('1881', '', '1-28');
INSERT INTO `temp` VALUES ('1882', '', '1-28');
INSERT INTO `temp` VALUES ('1883', '', '1-28');
INSERT INTO `temp` VALUES ('1884', '', '1-28');
INSERT INTO `temp` VALUES ('1885', '', '1-28');
INSERT INTO `temp` VALUES ('1886', 'OP30T233', '1-28');
INSERT INTO `temp` VALUES ('1887', '', '');
INSERT INTO `temp` VALUES ('1888', '', '1-28');
INSERT INTO `temp` VALUES ('1889', '', '1-28');
INSERT INTO `temp` VALUES ('1890', '', '1-28');
INSERT INTO `temp` VALUES ('1891', '', '1-28');
INSERT INTO `temp` VALUES ('1892', '', '1-28');
INSERT INTO `temp` VALUES ('1893', '', '1-28');
INSERT INTO `temp` VALUES ('1894', '', '1-28');
INSERT INTO `temp` VALUES ('1895', 'OP30T296', '1-28');
INSERT INTO `temp` VALUES ('1896', '', '');
INSERT INTO `temp` VALUES ('1897', '', '1-28');
INSERT INTO `temp` VALUES ('1898', '', '1-28');
INSERT INTO `temp` VALUES ('1899', '', '1-28');
INSERT INTO `temp` VALUES ('1900', '', '1-28');
INSERT INTO `temp` VALUES ('1901', '', '1-28');
INSERT INTO `temp` VALUES ('1902', '', '');
INSERT INTO `temp` VALUES ('1903', '', '');
INSERT INTO `temp` VALUES ('1904', '', '');
INSERT INTO `temp` VALUES ('1905', '', '');
INSERT INTO `temp` VALUES ('1906', '', '');
INSERT INTO `temp` VALUES ('1907', '', '');
INSERT INTO `temp` VALUES ('1908', '', '');
INSERT INTO `temp` VALUES ('1909', '', '');
INSERT INTO `temp` VALUES ('1910', '', '');
INSERT INTO `temp` VALUES ('1911', '', '');
INSERT INTO `temp` VALUES ('1912', '', '');
INSERT INTO `temp` VALUES ('1913', '', '');
INSERT INTO `temp` VALUES ('1914', '', '');
INSERT INTO `temp` VALUES ('1915', '', '');
INSERT INTO `temp` VALUES ('1916', '', '');
INSERT INTO `temp` VALUES ('1917', '', '');
INSERT INTO `temp` VALUES ('1918', '', '');
INSERT INTO `temp` VALUES ('1919', '', '');
INSERT INTO `temp` VALUES ('1920', '', '');
INSERT INTO `temp` VALUES ('1921', '', '');
INSERT INTO `temp` VALUES ('1922', '', '');
INSERT INTO `temp` VALUES ('1923', '', '');
INSERT INTO `temp` VALUES ('1924', '', '');
INSERT INTO `temp` VALUES ('1925', '', '');
INSERT INTO `temp` VALUES ('1926', '', '');
INSERT INTO `temp` VALUES ('1927', '', '');
INSERT INTO `temp` VALUES ('1928', '', '');
INSERT INTO `temp` VALUES ('1929', '', '');
INSERT INTO `temp` VALUES ('1930', '', '');
INSERT INTO `temp` VALUES ('1931', '', '');
INSERT INTO `temp` VALUES ('1932', '', '');
INSERT INTO `temp` VALUES ('1933', '', '');
INSERT INTO `temp` VALUES ('1934', '', '');
INSERT INTO `temp` VALUES ('1935', '', '');
INSERT INTO `temp` VALUES ('1936', '', '');
INSERT INTO `temp` VALUES ('1937', '', '');
INSERT INTO `temp` VALUES ('1938', '', '');
INSERT INTO `temp` VALUES ('1939', '', '');
INSERT INTO `temp` VALUES ('1940', '', '');
INSERT INTO `temp` VALUES ('1941', '', '');
INSERT INTO `temp` VALUES ('1942', '', '');
INSERT INTO `temp` VALUES ('1943', '', '');
INSERT INTO `temp` VALUES ('1944', '', '');
INSERT INTO `temp` VALUES ('1945', '', '');
INSERT INTO `temp` VALUES ('1946', '', '');
INSERT INTO `temp` VALUES ('1947', '', '');
INSERT INTO `temp` VALUES ('1948', '', '');
INSERT INTO `temp` VALUES ('1949', '', '');
INSERT INTO `temp` VALUES ('1950', '', '');
INSERT INTO `temp` VALUES ('1951', '', '');
INSERT INTO `temp` VALUES ('1952', '', '');
INSERT INTO `temp` VALUES ('1953', '', '');
INSERT INTO `temp` VALUES ('1954', '', '');
INSERT INTO `temp` VALUES ('1955', '', '');
INSERT INTO `temp` VALUES ('1956', '', '');
INSERT INTO `temp` VALUES ('1957', '', '');
INSERT INTO `temp` VALUES ('1958', '', '');
INSERT INTO `temp` VALUES ('1959', '', '');
INSERT INTO `temp` VALUES ('1960', '', '');
INSERT INTO `temp` VALUES ('1961', '', '');
INSERT INTO `temp` VALUES ('1962', '', '');
INSERT INTO `temp` VALUES ('1963', '', '');
INSERT INTO `temp` VALUES ('1964', '', '');
INSERT INTO `temp` VALUES ('1965', '', '');
INSERT INTO `temp` VALUES ('1966', '', '');
INSERT INTO `temp` VALUES ('1967', '', '');
INSERT INTO `temp` VALUES ('1968', '', '');
INSERT INTO `temp` VALUES ('1969', '', '');
INSERT INTO `temp` VALUES ('1970', '', '');
INSERT INTO `temp` VALUES ('1971', '', '');
INSERT INTO `temp` VALUES ('1972', '', '');
INSERT INTO `temp` VALUES ('1973', '', '');
INSERT INTO `temp` VALUES ('1974', '', '');
INSERT INTO `temp` VALUES ('1975', '', '');
INSERT INTO `temp` VALUES ('1976', '', '');
INSERT INTO `temp` VALUES ('1977', '', '');
INSERT INTO `temp` VALUES ('1978', '', '');
INSERT INTO `temp` VALUES ('1979', '', '');
INSERT INTO `temp` VALUES ('1980', '', '');
INSERT INTO `temp` VALUES ('1981', '', '');
INSERT INTO `temp` VALUES ('1982', '', '');
INSERT INTO `temp` VALUES ('1983', '', '');
INSERT INTO `temp` VALUES ('1984', '', '');
INSERT INTO `temp` VALUES ('1985', '', '');
INSERT INTO `temp` VALUES ('1986', '', '');
INSERT INTO `temp` VALUES ('1987', '', '');
INSERT INTO `temp` VALUES ('1988', '', '');
INSERT INTO `temp` VALUES ('1989', '', '');
INSERT INTO `temp` VALUES ('1990', '', '');
INSERT INTO `temp` VALUES ('1991', '', '');
INSERT INTO `temp` VALUES ('1992', '', '');
INSERT INTO `temp` VALUES ('1993', '', '');
INSERT INTO `temp` VALUES ('1994', '', '');
INSERT INTO `temp` VALUES ('1995', '', '');
INSERT INTO `temp` VALUES ('1996', '', '');
INSERT INTO `temp` VALUES ('1997', '', '');
INSERT INTO `temp` VALUES ('1998', '', '');
INSERT INTO `temp` VALUES ('1999', '', '');
INSERT INTO `temp` VALUES ('2000', '', '');
INSERT INTO `temp` VALUES ('2001', '', '');
INSERT INTO `temp` VALUES ('2002', '', '');
INSERT INTO `temp` VALUES ('2003', '', '');
INSERT INTO `temp` VALUES ('2004', '', '');
INSERT INTO `temp` VALUES ('2005', '', '');
INSERT INTO `temp` VALUES ('2006', '', '');
INSERT INTO `temp` VALUES ('2007', '', '');
INSERT INTO `temp` VALUES ('2008', '', '');
INSERT INTO `temp` VALUES ('2009', '', '');
INSERT INTO `temp` VALUES ('2010', '', '');
INSERT INTO `temp` VALUES ('2011', '', '');
INSERT INTO `temp` VALUES ('2012', '', '');
INSERT INTO `temp` VALUES ('2013', '', '');
INSERT INTO `temp` VALUES ('2014', '', '');
INSERT INTO `temp` VALUES ('2015', '', '');
INSERT INTO `temp` VALUES ('2016', '', '');
INSERT INTO `temp` VALUES ('2017', '', '');
INSERT INTO `temp` VALUES ('2018', '', '');
INSERT INTO `temp` VALUES ('2019', '', '');
INSERT INTO `temp` VALUES ('2020', '', '');
INSERT INTO `temp` VALUES ('2021', '', '');
INSERT INTO `temp` VALUES ('2022', '', '');
INSERT INTO `temp` VALUES ('2023', '', '');
INSERT INTO `temp` VALUES ('2024', '', '');
INSERT INTO `temp` VALUES ('2025', '', '');
INSERT INTO `temp` VALUES ('2026', '', '');
INSERT INTO `temp` VALUES ('2027', '', '');
INSERT INTO `temp` VALUES ('2028', '', '');
INSERT INTO `temp` VALUES ('2029', '', '');
INSERT INTO `temp` VALUES ('2030', '', '');
INSERT INTO `temp` VALUES ('2031', '', '');
INSERT INTO `temp` VALUES ('2032', '', '');
INSERT INTO `temp` VALUES ('2033', '', '');
INSERT INTO `temp` VALUES ('2034', '', '');
INSERT INTO `temp` VALUES ('2035', '', '');
INSERT INTO `temp` VALUES ('2036', '', '');
INSERT INTO `temp` VALUES ('2037', '', '');
INSERT INTO `temp` VALUES ('2038', '', '');
INSERT INTO `temp` VALUES ('2039', '', '');
INSERT INTO `temp` VALUES ('2040', '', '');
INSERT INTO `temp` VALUES ('2041', '', '');
INSERT INTO `temp` VALUES ('2042', '', '');
INSERT INTO `temp` VALUES ('2043', '', '');
INSERT INTO `temp` VALUES ('2044', '', '');
INSERT INTO `temp` VALUES ('2045', '', '');
INSERT INTO `temp` VALUES ('2046', '', '');
INSERT INTO `temp` VALUES ('2047', '', '');
INSERT INTO `temp` VALUES ('2048', '', '');
INSERT INTO `temp` VALUES ('2049', '', '');
INSERT INTO `temp` VALUES ('2050', '', '');
INSERT INTO `temp` VALUES ('2051', '', '');
INSERT INTO `temp` VALUES ('2052', '', '');
INSERT INTO `temp` VALUES ('2053', '', '');
INSERT INTO `temp` VALUES ('2054', '', '');
INSERT INTO `temp` VALUES ('2055', '', '');
INSERT INTO `temp` VALUES ('2056', '', '');
INSERT INTO `temp` VALUES ('2057', '', '');
INSERT INTO `temp` VALUES ('2058', '', '');
INSERT INTO `temp` VALUES ('2059', '', '');
INSERT INTO `temp` VALUES ('2060', '', '');
INSERT INTO `temp` VALUES ('2061', '', '');
INSERT INTO `temp` VALUES ('2062', '', '');
INSERT INTO `temp` VALUES ('2063', '', '');
INSERT INTO `temp` VALUES ('2064', '', '');
INSERT INTO `temp` VALUES ('2065', '', '');
INSERT INTO `temp` VALUES ('2066', '', '');
INSERT INTO `temp` VALUES ('2067', '', '');
INSERT INTO `temp` VALUES ('2068', '', '');
INSERT INTO `temp` VALUES ('2069', '', '');
INSERT INTO `temp` VALUES ('2070', '', '');
INSERT INTO `temp` VALUES ('2071', '', '');
INSERT INTO `temp` VALUES ('2072', '', '');
INSERT INTO `temp` VALUES ('2073', '', '');
INSERT INTO `temp` VALUES ('2074', '', '');
INSERT INTO `temp` VALUES ('2075', '', '');
INSERT INTO `temp` VALUES ('2076', '', '');
INSERT INTO `temp` VALUES ('2077', '', '');
INSERT INTO `temp` VALUES ('2078', '', '');
INSERT INTO `temp` VALUES ('2079', '', '');
INSERT INTO `temp` VALUES ('2080', '', '');
INSERT INTO `temp` VALUES ('2081', '', '');
INSERT INTO `temp` VALUES ('2082', '', '');
INSERT INTO `temp` VALUES ('2083', '', '');
INSERT INTO `temp` VALUES ('2084', '', '');
INSERT INTO `temp` VALUES ('2085', '', '');
INSERT INTO `temp` VALUES ('2086', '', '');
INSERT INTO `temp` VALUES ('2087', '', '');
INSERT INTO `temp` VALUES ('2088', '', '');
INSERT INTO `temp` VALUES ('2089', '', '');
INSERT INTO `temp` VALUES ('2090', '', '');
INSERT INTO `temp` VALUES ('2091', '', '');
INSERT INTO `temp` VALUES ('2092', '', '');
INSERT INTO `temp` VALUES ('2093', '', '');
INSERT INTO `temp` VALUES ('2094', '', '');
INSERT INTO `temp` VALUES ('2095', '', '');
INSERT INTO `temp` VALUES ('2096', '', '');
INSERT INTO `temp` VALUES ('2097', '', '');
INSERT INTO `temp` VALUES ('2098', '', '');
INSERT INTO `temp` VALUES ('2099', '', '');
INSERT INTO `temp` VALUES ('2100', '', '');
INSERT INTO `temp` VALUES ('2101', '', '');
INSERT INTO `temp` VALUES ('2102', '', '');
INSERT INTO `temp` VALUES ('2103', '', '');
INSERT INTO `temp` VALUES ('2104', '', '');
INSERT INTO `temp` VALUES ('2105', '', '');
INSERT INTO `temp` VALUES ('2106', '', '');
INSERT INTO `temp` VALUES ('2107', '', '');
INSERT INTO `temp` VALUES ('2108', '', '');
INSERT INTO `temp` VALUES ('2109', '', '');
INSERT INTO `temp` VALUES ('2110', '', '');
INSERT INTO `temp` VALUES ('2111', '', '');
INSERT INTO `temp` VALUES ('2112', '', '');
INSERT INTO `temp` VALUES ('2113', '', '');
INSERT INTO `temp` VALUES ('2114', '', '');
INSERT INTO `temp` VALUES ('2115', '', '');
INSERT INTO `temp` VALUES ('2116', '', '');
INSERT INTO `temp` VALUES ('2117', '', '');
INSERT INTO `temp` VALUES ('2118', '', '');
INSERT INTO `temp` VALUES ('2119', '', '');
INSERT INTO `temp` VALUES ('2120', '', '');
INSERT INTO `temp` VALUES ('2121', '', '');
INSERT INTO `temp` VALUES ('2122', '', '');
INSERT INTO `temp` VALUES ('2123', '', '');
INSERT INTO `temp` VALUES ('2124', '', '');
INSERT INTO `temp` VALUES ('2125', '', '');
INSERT INTO `temp` VALUES ('2126', '', '');
INSERT INTO `temp` VALUES ('2127', '', '');
INSERT INTO `temp` VALUES ('2128', '', '');
INSERT INTO `temp` VALUES ('2129', '', '');
INSERT INTO `temp` VALUES ('2130', '', '');
INSERT INTO `temp` VALUES ('2131', '', '');
INSERT INTO `temp` VALUES ('2132', '', '');
INSERT INTO `temp` VALUES ('2133', '', '');
INSERT INTO `temp` VALUES ('2134', '', '');
INSERT INTO `temp` VALUES ('2135', '', '');
INSERT INTO `temp` VALUES ('2136', '', '');
INSERT INTO `temp` VALUES ('2137', '', '');
INSERT INTO `temp` VALUES ('2138', '', '');
INSERT INTO `temp` VALUES ('2139', '', '');
INSERT INTO `temp` VALUES ('2140', '', '');
INSERT INTO `temp` VALUES ('2141', '', '');
INSERT INTO `temp` VALUES ('2142', '', '');
INSERT INTO `temp` VALUES ('2143', '', '');
INSERT INTO `temp` VALUES ('2144', '', '');
INSERT INTO `temp` VALUES ('2145', '', '');
INSERT INTO `temp` VALUES ('2146', '', '');
INSERT INTO `temp` VALUES ('2147', '', '');
INSERT INTO `temp` VALUES ('2148', '', '');
INSERT INTO `temp` VALUES ('2149', '', '');
INSERT INTO `temp` VALUES ('2150', '', '');
INSERT INTO `temp` VALUES ('2151', '', '');
INSERT INTO `temp` VALUES ('2152', '', '');
INSERT INTO `temp` VALUES ('2153', '', '');
INSERT INTO `temp` VALUES ('2154', '', '');
INSERT INTO `temp` VALUES ('2155', '', '');
INSERT INTO `temp` VALUES ('2156', '', '');
INSERT INTO `temp` VALUES ('2157', '', '');
INSERT INTO `temp` VALUES ('2158', '', '');
INSERT INTO `temp` VALUES ('2159', '', '');
INSERT INTO `temp` VALUES ('2160', '', '');
INSERT INTO `temp` VALUES ('2161', '', '');
INSERT INTO `temp` VALUES ('2162', '', '');
INSERT INTO `temp` VALUES ('2163', '', '');
INSERT INTO `temp` VALUES ('2164', '', '');
INSERT INTO `temp` VALUES ('2165', '', '');
INSERT INTO `temp` VALUES ('2166', '', '');
INSERT INTO `temp` VALUES ('2167', '', '');
INSERT INTO `temp` VALUES ('2168', '', '');
INSERT INTO `temp` VALUES ('2169', '', '');
INSERT INTO `temp` VALUES ('2170', '', '');
INSERT INTO `temp` VALUES ('2171', '', '');
INSERT INTO `temp` VALUES ('2172', '', '');
INSERT INTO `temp` VALUES ('2173', '', '');
INSERT INTO `temp` VALUES ('2174', '', '');
INSERT INTO `temp` VALUES ('2175', '', '');
INSERT INTO `temp` VALUES ('2176', '', '');
INSERT INTO `temp` VALUES ('2177', '', '');
INSERT INTO `temp` VALUES ('2178', '', '');
INSERT INTO `temp` VALUES ('2179', '', '');
INSERT INTO `temp` VALUES ('2180', '', '');
INSERT INTO `temp` VALUES ('2181', '', '');
INSERT INTO `temp` VALUES ('2182', '', '');
INSERT INTO `temp` VALUES ('2183', '', '');
INSERT INTO `temp` VALUES ('2184', '', '');
INSERT INTO `temp` VALUES ('2185', 'OP10-T01', '1#机');
INSERT INTO `temp` VALUES ('2186', 'OP10-T260', '1#机');
INSERT INTO `temp` VALUES ('2187', 'OP10-T40', '1#机');
INSERT INTO `temp` VALUES ('2188', 'OP10-T275', '1#机');
INSERT INTO `temp` VALUES ('2189', 'OP10-T237', '1#机');
INSERT INTO `temp` VALUES ('2190', 'OP10-T246', '1#机');
INSERT INTO `temp` VALUES ('2191', 'OP10-T248', '1#机');
INSERT INTO `temp` VALUES ('2192', 'OP10-T250', '1#机');
INSERT INTO `temp` VALUES ('2193', 'OP10-T263', '1#机');
INSERT INTO `temp` VALUES ('2194', 'OP10-T291', '1#机');
INSERT INTO `temp` VALUES ('2195', 'OP10-T210', '1#机');
INSERT INTO `temp` VALUES ('2196', 'OP10-T218', '1#机');
INSERT INTO `temp` VALUES ('2197', 'OP10-T220', '1#机');
INSERT INTO `temp` VALUES ('2198', 'OP10-T281', '1#机');
INSERT INTO `temp` VALUES ('2199', 'OP10-T247', '1#机');
INSERT INTO `temp` VALUES ('2200', 'OP10-T249', '1#机');
INSERT INTO `temp` VALUES ('2201', 'OP10-T251', '1#机');
INSERT INTO `temp` VALUES ('2202', 'OP10-T271', '1#机');
INSERT INTO `temp` VALUES ('2203', 'OP10-T272', '1#机');
INSERT INTO `temp` VALUES ('2204', 'OP10-T217', '1#机');
INSERT INTO `temp` VALUES ('2205', 'OP10-T202', '1#机');
INSERT INTO `temp` VALUES ('2206', 'OP10-T203', '1#机');
INSERT INTO `temp` VALUES ('2207', 'OP10-T204', '1#机');
INSERT INTO `temp` VALUES ('2208', 'OP10-T292', '1#机');
INSERT INTO `temp` VALUES ('2209', 'OP10-T211', '1#机');
INSERT INTO `temp` VALUES ('2210', 'OP10-T219', '1#机');
INSERT INTO `temp` VALUES ('2211', '', '');
INSERT INTO `temp` VALUES ('2212', 'OP10-T01', '2#机');
INSERT INTO `temp` VALUES ('2213', 'OP10-T260', '2#机');
INSERT INTO `temp` VALUES ('2214', 'OP10-T40', '2#机');
INSERT INTO `temp` VALUES ('2215', 'OP10-T275', '2#机');
INSERT INTO `temp` VALUES ('2216', 'OP10-T237', '2#机');
INSERT INTO `temp` VALUES ('2217', 'OP10-T246', '2#机');
INSERT INTO `temp` VALUES ('2218', 'OP10-T248', '2#机');
INSERT INTO `temp` VALUES ('2219', 'OP10-T250', '2#机');
INSERT INTO `temp` VALUES ('2220', 'OP10-T263', '2#机');
INSERT INTO `temp` VALUES ('2221', 'OP10-T291', '2#机');
INSERT INTO `temp` VALUES ('2222', 'OP10-T210', '2#机');
INSERT INTO `temp` VALUES ('2223', 'OP10-T218', '2#机');
INSERT INTO `temp` VALUES ('2224', 'OP10-T220', '2#机');
INSERT INTO `temp` VALUES ('2225', 'OP10-T281', '2#机');
INSERT INTO `temp` VALUES ('2226', 'OP10-T247', '2#机');
INSERT INTO `temp` VALUES ('2227', 'OP10-T249', '2#机');
INSERT INTO `temp` VALUES ('2228', 'OP10-T251', '2#机');
INSERT INTO `temp` VALUES ('2229', 'OP10-T271', '2#机');
INSERT INTO `temp` VALUES ('2230', 'OP10-T272', '2#机');
INSERT INTO `temp` VALUES ('2231', 'OP10-T217', '2#机');
INSERT INTO `temp` VALUES ('2232', 'OP10-T202', '2#机');
INSERT INTO `temp` VALUES ('2233', 'OP10-T203', '2#机');
INSERT INTO `temp` VALUES ('2234', 'OP10-T204', '2#机');
INSERT INTO `temp` VALUES ('2235', 'OP10-T292', '2#机');
INSERT INTO `temp` VALUES ('2236', 'OP10-T211', '2#机');
INSERT INTO `temp` VALUES ('2237', 'OP10-T219', '2#机');
INSERT INTO `temp` VALUES ('2238', '', '');
INSERT INTO `temp` VALUES ('2239', 'OP10-T01', '3#机');
INSERT INTO `temp` VALUES ('2240', 'OP10-T260', '3#机');
INSERT INTO `temp` VALUES ('2241', 'OP10-T40', '3#机');
INSERT INTO `temp` VALUES ('2242', 'OP10-T275', '3#机');
INSERT INTO `temp` VALUES ('2243', 'OP10-T237', '3#机');
INSERT INTO `temp` VALUES ('2244', 'OP10-T246', '3#机');
INSERT INTO `temp` VALUES ('2245', 'OP10-T248', '3#机');
INSERT INTO `temp` VALUES ('2246', 'OP10-T250', '3#机');
INSERT INTO `temp` VALUES ('2247', 'OP10-T263', '3#机');
INSERT INTO `temp` VALUES ('2248', 'OP10-T291', '3#机');
INSERT INTO `temp` VALUES ('2249', 'OP10-T210', '3#机');
INSERT INTO `temp` VALUES ('2250', 'OP10-T218', '3#机');
INSERT INTO `temp` VALUES ('2251', 'OP10-T220', '3#机');
INSERT INTO `temp` VALUES ('2252', 'OP10-T281', '3#机');
INSERT INTO `temp` VALUES ('2253', 'OP10-T247', '3#机');
INSERT INTO `temp` VALUES ('2254', 'OP10-T249', '3#机');
INSERT INTO `temp` VALUES ('2255', 'OP10-T251', '3#机');
INSERT INTO `temp` VALUES ('2256', 'OP10-T271', '3#机');
INSERT INTO `temp` VALUES ('2257', 'OP10-T272', '3#机');
INSERT INTO `temp` VALUES ('2258', 'OP10-T217', '3#机');
INSERT INTO `temp` VALUES ('2259', 'OP10-T202', '3#机');
INSERT INTO `temp` VALUES ('2260', 'OP10-T203', '3#机');
INSERT INTO `temp` VALUES ('2261', 'OP10-T204', '3#机');
INSERT INTO `temp` VALUES ('2262', 'OP10-T292', '3#机');
INSERT INTO `temp` VALUES ('2263', 'OP10-T211', '3#机');
INSERT INTO `temp` VALUES ('2264', 'OP10-T219', '3#机');
INSERT INTO `temp` VALUES ('2265', '', '');
INSERT INTO `temp` VALUES ('2266', 'OP20-T01', '4#机');
INSERT INTO `temp` VALUES ('2267', 'OP20-T40', '4#机');
INSERT INTO `temp` VALUES ('2268', 'OP20-T238', '4#机');
INSERT INTO `temp` VALUES ('2269', 'OP20-T239', '4#机');
INSERT INTO `temp` VALUES ('2270', 'OP20-T290', '4#机');
INSERT INTO `temp` VALUES ('2271', 'OP20-T241', '4#机');
INSERT INTO `temp` VALUES ('2272', 'OP20-T243', '4#机');
INSERT INTO `temp` VALUES ('2273', 'OP20-T208', '4#机');
INSERT INTO `temp` VALUES ('2274', 'OP20-T212', '4#机');
INSERT INTO `temp` VALUES ('2275', 'OP20-T254', '4#机');
INSERT INTO `temp` VALUES ('2276', 'OP20-T281', '4#机');
INSERT INTO `temp` VALUES ('2277', 'OP20-T213', '4#机');
INSERT INTO `temp` VALUES ('2278', 'OP20-T209', '4#机');
INSERT INTO `temp` VALUES ('2279', 'OP20-T242', '4#机');
INSERT INTO `temp` VALUES ('2280', 'OP20-T244', '4#机');
INSERT INTO `temp` VALUES ('2281', 'OP20-T255', '4#机');
INSERT INTO `temp` VALUES ('2282', 'OP20-T256', '4#机');
INSERT INTO `temp` VALUES ('2283', 'OP20-T257', '4#机');
INSERT INTO `temp` VALUES ('2284', 'OP20-T258', '4#机');
INSERT INTO `temp` VALUES ('2285', 'OP20-T231', '4#机');
INSERT INTO `temp` VALUES ('2286', 'OP20-T215', '4#机');
INSERT INTO `temp` VALUES ('2287', 'OP20-T216', '4#机');
INSERT INTO `temp` VALUES ('2288', 'OP20-T214', '4#机');
INSERT INTO `temp` VALUES ('2289', '', '');
INSERT INTO `temp` VALUES ('2290', 'OP20-T01', '5#机');
INSERT INTO `temp` VALUES ('2291', 'OP20-T40', '5#机');
INSERT INTO `temp` VALUES ('2292', 'OP20-T238', '5#机');
INSERT INTO `temp` VALUES ('2293', 'OP20-T239', '5#机');
INSERT INTO `temp` VALUES ('2294', 'OP20-T290', '5#机');
INSERT INTO `temp` VALUES ('2295', 'OP20-T241', '5#机');
INSERT INTO `temp` VALUES ('2296', 'OP20-T243', '5#机');
INSERT INTO `temp` VALUES ('2297', 'OP20-T208', '5#机');
INSERT INTO `temp` VALUES ('2298', 'OP20-T212', '5#机');
INSERT INTO `temp` VALUES ('2299', 'OP20-T254', '5#机');
INSERT INTO `temp` VALUES ('2300', 'OP20-T281', '5#机');
INSERT INTO `temp` VALUES ('2301', 'OP20-T213', '5#机');
INSERT INTO `temp` VALUES ('2302', 'OP20-T209', '5#机');
INSERT INTO `temp` VALUES ('2303', 'OP20-T242', '5#机');
INSERT INTO `temp` VALUES ('2304', 'OP20-T244', '5#机');
INSERT INTO `temp` VALUES ('2305', 'OP20-T255', '5#机');
INSERT INTO `temp` VALUES ('2306', 'OP20-T256', '5#机');
INSERT INTO `temp` VALUES ('2307', 'OP20-T257', '5#机');
INSERT INTO `temp` VALUES ('2308', 'OP20-T258', '5#机');
INSERT INTO `temp` VALUES ('2309', 'OP20-T231', '5#机');
INSERT INTO `temp` VALUES ('2310', 'OP20-T215', '5#机');
INSERT INTO `temp` VALUES ('2311', 'OP20-T216', '5#机');
INSERT INTO `temp` VALUES ('2312', 'OP20-T214', '5#机');
INSERT INTO `temp` VALUES ('2313', '', '');
INSERT INTO `temp` VALUES ('2314', 'OP30-T01', '6#机');
INSERT INTO `temp` VALUES ('2315', 'OP30-T266', '6#机');
INSERT INTO `temp` VALUES ('2316', 'OP30-T96', '6#机');
INSERT INTO `temp` VALUES ('2317', 'OP30-T276', '6#机');
INSERT INTO `temp` VALUES ('2318', 'OP30-T239', '6#机');
INSERT INTO `temp` VALUES ('2319', 'OP30-T278', '6#机');
INSERT INTO `temp` VALUES ('2320', 'OP30-T286', '6#机');
INSERT INTO `temp` VALUES ('2321', 'OP30-T235', '6#机');
INSERT INTO `temp` VALUES ('2322', 'OP30-T232', '6#机');
INSERT INTO `temp` VALUES ('2323', 'OP30-T40', '6#机');
INSERT INTO `temp` VALUES ('2324', 'OP30-T262', '6#机');
INSERT INTO `temp` VALUES ('2325', 'OP30-T280', '6#机');
INSERT INTO `temp` VALUES ('2326', 'OP30-T224', '6#机');
INSERT INTO `temp` VALUES ('2327', 'OP30-T222', '6#机');
INSERT INTO `temp` VALUES ('2328', 'OP30-T236', '6#机');
INSERT INTO `temp` VALUES ('2329', 'OP30-T296', '6#机');
INSERT INTO `temp` VALUES ('2330', 'OP30-T279', '6#机');
INSERT INTO `temp` VALUES ('2331', 'OP30-T207', '6#机');
INSERT INTO `temp` VALUES ('2332', 'OP30-T225', '6#机');
INSERT INTO `temp` VALUES ('2333', 'OP30-T233', '6#机');
INSERT INTO `temp` VALUES ('2334', '', '');
INSERT INTO `temp` VALUES ('2335', 'OP30-T01', '7#机');
INSERT INTO `temp` VALUES ('2336', 'OP30-T266', '7#机');
INSERT INTO `temp` VALUES ('2337', 'OP30-T96', '7#机');
INSERT INTO `temp` VALUES ('2338', 'OP30-T276', '7#机');
INSERT INTO `temp` VALUES ('2339', 'OP30-T239', '7#机');
INSERT INTO `temp` VALUES ('2340', 'OP30-T278', '7#机');
INSERT INTO `temp` VALUES ('2341', 'OP30-T286', '7#机');
INSERT INTO `temp` VALUES ('2342', 'OP30-T235', '7#机');
INSERT INTO `temp` VALUES ('2343', 'OP30-T232', '7#机');
INSERT INTO `temp` VALUES ('2344', 'OP30-T40', '7#机');
INSERT INTO `temp` VALUES ('2345', 'OP30-T262', '7#机');
INSERT INTO `temp` VALUES ('2346', 'OP30-T280', '7#机');
INSERT INTO `temp` VALUES ('2347', 'OP30-T224', '7#机');
INSERT INTO `temp` VALUES ('2348', 'OP30-T222', '7#机');
INSERT INTO `temp` VALUES ('2349', 'OP30-T236', '7#机');
INSERT INTO `temp` VALUES ('2350', 'OP30-T296', '7#机');
INSERT INTO `temp` VALUES ('2351', 'OP30-T279', '7#机');
INSERT INTO `temp` VALUES ('2352', 'OP30-T207', '7#机');
INSERT INTO `temp` VALUES ('2353', 'OP30-T225', '7#机');
INSERT INTO `temp` VALUES ('2354', 'OP30-T233', '7#机');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `pwd` char(50) DEFAULT NULL,
  `type` char(50) DEFAULT NULL,
  PRIMARY KEY (`xh`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xmu', '123', '管理员');

-- ----------------------------
-- Table structure for `zuchengmingxi`
-- ----------------------------
DROP TABLE IF EXISTS `zuchengmingxi`;
CREATE TABLE `zuchengmingxi` (
  `xh` int(20) NOT NULL AUTO_INCREMENT,
  `lbjxh` char(50) NOT NULL,
  `lbjmc` varchar(50) NOT NULL,
  `sl` int(10) NOT NULL,
  `guige` varchar(50) DEFAULT NULL,
  `danwei` varchar(10) NOT NULL,
  `szjd` varchar(50) NOT NULL,
  `bz` text,
  PRIMARY KEY (`xh`)
) ENGINE=InnoDB AUTO_INCREMENT=1404 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zuchengmingxi
-- ----------------------------
INSERT INTO `zuchengmingxi` VALUES ('1', 'S945-563916', '主刀柄', '1', '', '个', 'Φ100铣刀(T1001)', '');
INSERT INTO `zuchengmingxi` VALUES ('2', 'R365-100Q32-S15M', '刀盘', '1', 'z=7', '个', 'Φ100铣刀(T1001)', '');
INSERT INTO `zuchengmingxi` VALUES ('3', 'R365-1505ZNE-KM 1020', '刀片', '7', '', '个', 'Φ100铣刀(T1001)', '');
INSERT INTO `zuchengmingxi` VALUES ('4', '5692 022-06', '水嘴', '1', '', '个', 'Φ100铣刀(T1001)', '');
INSERT INTO `zuchengmingxi` VALUES ('5', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ8.5-25/120°(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('6', 'C5-391.14-32 100', '弹簧夹头', '1', '', '个', 'Φ8.5-25/120°(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('7', '393.15-32 12', '夹心', '1', '', '个', 'Φ8.5-25/120°(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('8', '5692 022-06', '水嘴', '1', '', '个', 'Φ8.5-25/120°(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('9', 'C4-390.410-100 090A', '主刀柄', '1', '', '个', 'M10×1 丝锥(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('10', 'C4-391.01-40 080A', '接杆', '1', '', '个', 'M10×1 丝锥(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('11', 'C4-391.14-20 052', '弹簧夹头', '1', '', '个', 'M10×1 丝锥(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('12', 'ER20-GB Φ7.0-Φ5.5', '夹心', '1', '', '个', 'M10×1 丝锥(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('13', 'E447M10', '丝锥', '1', '', '个', 'M10×1 丝锥(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('14', '5692 022-06', '水嘴', '1', '', '个', 'M10×1 丝锥(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('15', 'A10.00.32', '主刀柄', '1', '', '个', 'Φ6.8-19/120°(T1004)', '');
INSERT INTO `zuchengmingxi` VALUES ('16', '393.15-32 10', '夹心', '1', '', '个', 'Φ6.8-19/120°(T1004)', '');
INSERT INTO `zuchengmingxi` VALUES ('17', '5692 022-06', '水嘴', '1', '', '个', 'Φ6.8-19/120°(T1004)', '');
INSERT INTO `zuchengmingxi` VALUES ('18', 'C6-390.410-100 110A', '主刀柄', '1', '', '个', 'M8 丝锥(T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('19', 'C6-391.01-63 140A', '接杆', '1', '', '个', 'M8 丝锥(T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('20', 'C6-391.14-40 130', '弹簧夹头', '1', '', '个', 'M8 丝锥(T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('21', 'ER40-GB', '夹心', '1', '', '个', 'M8 丝锥(T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('22', 'E446M8', '丝锥', '1', '', '个', 'M8 丝锥(T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('23', '5692 022-06', '水嘴', '1', '', '个', 'M8 丝锥(T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('24', 'C6-390.410-100 110A', '主刀柄', '1', '', '个', 'Φ22.1-35/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('25', 'C6-391.27-25 070A', '侧压夹头', '1', '', '个', 'Φ22.1-35/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('26', '870-2210-22-KM       3234', '刀片', '1', '', '个', 'Φ22.1-35/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('27', '880-04 03 W07H-P-GR  4044', '刀片', '1', '', '个', 'Φ22.1-35/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('28', '5692 022-06', '水嘴', '1', '', '个', 'Φ22.1-35/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('29', 'A10.022.32', '主刀柄', '1', '', '个', 'Φ11.8-16/120°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('30', '393.15-32 14', '夹心', '1', '', '个', 'Φ11.8-16/120°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('31', 'ST0790', '阶梯硬钻', '1', '', '个', 'Φ11.8-16/120°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('32', '5692 022-06', '水嘴', '1', '', '个', 'Φ11.8-16/120°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('33', 'A10.022.32', '主刀柄', '1', '', '个', 'Φ12F9-11(T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('34', '393.15-32 12', '夹心', '1', '', '个', 'Φ12F9-11(T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('35', 'ST0781', '铰刀', '1', '', '个', 'Φ12F9-11(T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('36', '5692 022-06', '水嘴', '1', '', '个', 'Φ12F9-11(T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('37', 'S945-563916', '主刀柄', '1', '', '个', 'Φ100铣刀(T1009)', '');
INSERT INTO `zuchengmingxi` VALUES ('38', 'R590-100Q32A-11M', '刀盘', '1', 'z=6', '个', 'Φ100铣刀(T1009)', '');
INSERT INTO `zuchengmingxi` VALUES ('39', 'R590-1105H-ZC2-KL    CB50', '刀片', '6', '', '个', 'Φ100铣刀(T1009)', '');
INSERT INTO `zuchengmingxi` VALUES ('40', '5692 022-06', '水嘴', '1', '', '个', 'Φ100铣刀(T1009)', '');
INSERT INTO `zuchengmingxi` VALUES ('41', '392.41027-100 32 100A', '主刀柄', '1', '', '个', 'Φ20.5-30/Ø32 (T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('42', '880-04 03 05H-C-GR   1044', '刀片', '1', '', '个', 'Φ20.5-30/Ø32 (T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('43', '880-04 03 W07H-P-GR  4044', '刀片', '1', '', '个', 'Φ20.5-30/Ø32 (T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('44', 'TPMT 09 02 08-KM     3215', '刀片', '2', '', '个', 'Φ20.5-30/Ø32 (T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('45', '5692 022-06', '水嘴', '1', '', '个', 'Φ20.5-30/Ø32 (T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('46', '392.41014-100 40 120A', '主刀柄', '1', '', '个', 'M22x1.5 (T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('47', '393.14-40 D180×145', '夹心', '1', '', '个', 'M22x1.5 (T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('48', 'EP11M22X1.5（ST0787)', '丝锥', '1', '', '个', 'M22x1.5 (T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('49', '5692 022-06', '水嘴', '1', '', '个', 'M22x1.5 (T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('50', '392.41014-100 40 100A', '主刀柄', '1', '', '个', 'Φ10.3-30/120°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('51', '393.15-32 14', '夹心', '1', '', '个', 'Φ10.3-30/120°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('52', '5692 022-06', '水嘴', '1', '', '个', 'Φ10.3-30/120°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('53', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'M12×6H丝锥（T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('54', 'ER32-GB Φ9.0', '夹心', '1', '', '个', 'M12×6H丝锥（T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('55', 'E447M12', '丝锥', '1', '', '个', 'M12×6H丝锥（T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('56', '5692 022-06', '水嘴', '1', '', '个', 'M12×6H丝锥（T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('57', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ84铣刀(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('58', 'C8-391.05CD-27 320', '铣刀接柄', '1', '', '个', 'Φ84铣刀(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('59', 'R390-084Q27-11M', '铣刀盘', '1', 'Z=7', '个', 'Φ84铣刀(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('60', 'R390-11 T3 08M-KM    1020', '刀片', '7', '', '个', 'Φ84铣刀(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('61', '5692 022-06', '水嘴', '1', '', '个', 'Φ84铣刀(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('62', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ109.5/90°(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('63', 'S912-561764', '非标镗刀接柄', '1', 'L=420', '个', 'Φ109.5/90°(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('64', 'TCMT 16 T3 08-KR     3210', '刀片', '3', '', '个', 'Φ109.5/90°(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('65', 'STFCR-12CA-16-M', '刀夹', '2', '', '个', 'Φ109.5/90°(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('66', 'STSCR-12CA-16-M', '刀夹', '1', '', '个', 'Φ109.5/90°(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('67', '5692 022-06', '水嘴', '1', '', '个', 'Φ109.5/90°(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('68', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ119.5/90°(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('69', 'S912-561771', '非标镗刀接柄', '1', 'L=420', '个', 'Φ119.5/90°(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('70', 'TCMT 16 T3 08-KR     3210', '刀片', '3', '', '个', 'Φ119.5/90°(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('71', 'STFCR-12CA-16-M', '刀夹', '2', '', '个', 'Φ119.5/90°(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('72', 'STSCR-12CA-16-M（无刀夹）', '刀夹', '0', '', '个', 'Φ119.5/90°(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('73', '5692 022-06', '水嘴', '1', '', '个', 'Φ119.5/90°(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('74', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ129.5/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('75', 'S912-561772', '非标镗刀接柄', '1', 'L=370', '个', 'Φ129.5/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('76', 'TCMT 16 T3 08-KR     3210', '刀片', '2', '', '个', 'Φ129.5/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('77', 'STFCR-12CA-16-M', '刀夹', '2', '', '个', 'Φ129.5/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('78', 'STSCR-12CA-16-M（无刀夹）', '刀夹', '1', '', '个', 'Φ129.5/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('79', '5692 022-06', '水嘴', '1', '', '个', 'Φ129.5/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('80', '392.41020-100 40 120A', '主刀柄', '1', '', '个', 'D250 刀检(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('81', 'SCLCL20 20K12（看不到）', '非标刀杆', '1', '', '个', 'D250 刀检(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('82', 'CCMT 22 04 08-KR    3215', '刀片', '1', '', '个', 'D250 刀检(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('83', '5692 022-06', '水嘴', '1', '', '个', 'D250 刀检(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('84', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ50倒角铣刀(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('85', 'C5-391.05CD-22 220', '铣刀接柄', '1', '', '个', 'Φ50倒角铣刀(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('86', 'R245-050Q22-12M', '铣刀盘', '1', '', '个', 'Φ50倒角铣刀(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('87', 'R245-12 T3 M-KM      1020', '刀片', '4', '', '个', 'Φ50倒角铣刀(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('88', '5692 022-06', '水嘴', '1', '', '个', 'Φ50倒角铣刀(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('89', 'C4-390.410-100 090A', '主刀柄', '1', '', '个', 'Φ17.5-42/120°(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('90', 'C4-391.27-25 077', '侧压接柄', '1', '', '个', 'Φ17.5-42/120°(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('91', 'TM880-553659（看不到）', '刀杆', '1', '', '个', 'Φ17.5-42/120°(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('92', '880-03 03 05H-C-GR  1044', '刀片', '1', '', '个', 'Φ17.5-42/120°(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('93', '880-03 03 W06H-P-GR 4044', '刀片', '1', '', '个', 'Φ17.5-42/120°(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('94', '880-02 02 W05H-P-GR 4044', '刀片', '1', '', '个', 'Φ17.5-42/120°(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('95', '5692 022-06', '水嘴', '1', '', '个', 'Φ17.5-42/120°(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('96', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'M20丝锥(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('97', 'C5-391.14-25 100', '弹簧夹头', '1', '', '个', 'M20丝锥(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('98', '393.14-25 D160X120', '夹心', '1', '', '个', 'M20丝锥(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('99', 'E447M20', '丝锥', '1', '', '个', 'M20丝锥(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('100', '5692 022-06', '水嘴', '1', '', '个', 'M20丝锥(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('101', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'Φ10.8 /120°(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('102', 'ER32GB', '夹心', '1', '', '个', 'Φ10.8 /120°(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('103', 'ST0788', '硬钻', '1', 'L=30', '个', 'Φ10.8 /120°(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('104', '5692 022-06', '水嘴', '1', '', '个', 'Φ10.8 /120°(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('105', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'Φ10.8/8.65/120°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('106', '393.15-32 14', '夹心', '1', '', '个', 'Φ10.8/8.65/120°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('107', 'ST0787', '硬钻', '1', 'L=17', '个', 'Φ10.8/8.65/120°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('108', '5692 022-06', '水嘴', '1', '', '个', 'Φ10.8/8.65/120°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('109', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'M12×1.25丝锥(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('110', 'ER32GB-Φ9.0', '夹心', '1', '', '个', 'M12×1.25丝锥(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('111', 'ES13KM12X1.25', '丝锥', '1', '', '个', 'M12×1.25丝锥(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('112', '5692 022-06', '水嘴', '1', '', '个', 'M12×1.25丝锥(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('113', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'Φ8.65硬钻(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('114', 'ER32DCB Φ10.0-Φ9.5', '夹心', '1', '', '个', 'Φ8.65硬钻(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('115', 'S861.1-GM-553677', '硬钻', '1', '', '个', 'Φ8.65硬钻(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('116', '5692 022-06', '水嘴', '1', '', '个', 'Φ8.65硬钻(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('117', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'Φ9-90/120°（T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('118', 'ER32DCB 12-11.5', '夹心', '1', '', '个', 'Φ9-90/120°（T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('119', 'ST0786', '硬钻', '1', '', '个', 'Φ9-90/120°（T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('120', '5692 022-06', '水嘴', '1', '', '个', 'Φ9-90/120°（T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('121', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'M10x1丝锥(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('122', 'ER32GB-Φ7.0', '夹心', '1', '', '个', 'M10x1丝锥(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('123', 'ES13KM10×1', '丝锥', '1', '', '个', 'M10x1丝锥(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('124', '5692 022-06', '水嘴', '1', '', '个', 'M10x1丝锥(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('125', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ29阶梯钻(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('126', 'C8-391.27-40 095', '侧压接柄', '1', '', '个', 'Φ29阶梯钻(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('127', '880-05 03 05H-C-GR  1044', '刀片', '1', '', '个', 'Φ29阶梯钻(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('128', '880-05 03 W08H-P-GR 4044', '刀片', '1', '', '个', 'Φ29阶梯钻(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('129', '880-04 03 W07H-P-GR 4044', '刀片', '1', '', '个', 'Φ29阶梯钻(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('130', '5692 022-06', '水嘴', '1', '', '个', 'Φ29阶梯钻(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('131', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ31.5镗刀(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('132', 'C8-391.27-40 095', '侧压接柄', '1', '', '个', 'Φ31.5镗刀(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('133', 'S912-553898(看不到）', '刀杆', '1', '', '个', 'Φ31.5镗刀(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('134', 'TCMT 09 02 04-KM    3215', '刀片', '2', '', '个', 'Φ31.5镗刀(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('135', 'STFCR-12CA-16-M(看不到）', '刀夹', '2', '', '个', 'Φ31.5镗刀(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('136', '5692 022-06', '水嘴', '1', '', '个', 'Φ31.5镗刀(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('137', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ32精镗(T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('138', 'C8-391.02-40 070A', '变径接柄', '1', '', '个', 'Φ32精镗(T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('139', 'C4-R825A-AAB120A', '精镗单元', '1', '', '个', 'Φ32精镗(T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('140', 'A-AF11STUC06T1A', '刀夹', '1', '', '个', 'Φ32精镗(T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('141', 'TCMT 06 T1 04-KF    3005', '刀片', '1', '', '个', 'Φ32精镗(T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('142', '5692 022-06', '水嘴', '1', '', '个', 'Φ32精镗(T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('143', '392.41027-100 32 100A', '主刀柄', '1', '', '个', 'Φ25扩孔(T1034)', '');
INSERT INTO `zuchengmingxi` VALUES ('144', 'S912-553749(看不到）', '刀杆', '1', '', '个', 'Φ25扩孔(T1034)', '');
INSERT INTO `zuchengmingxi` VALUES ('145', 'TCMT 11 03 08-KM    3215', '刀片', '2', '', '个', 'Φ25扩孔(T1034)', '');
INSERT INTO `zuchengmingxi` VALUES ('146', '5692 022-06', '水嘴', '1', '', '个', 'Φ25扩孔(T1034)', '');
INSERT INTO `zuchengmingxi` VALUES ('147', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ80铣刀（T1035）', '');
INSERT INTO `zuchengmingxi` VALUES ('148', 'C8-391.05CD-27 320', '铣刀接柄', '1', '', '个', 'Φ80铣刀（T1035）', '');
INSERT INTO `zuchengmingxi` VALUES ('149', 'R590-080Q27S-11M', '铣刀盘', '1', '', '个', 'Φ80铣刀（T1035）', '');
INSERT INTO `zuchengmingxi` VALUES ('150', 'R590-110508H-KL     1020', '刀片', '6', '', '个', 'Φ80铣刀（T1035）', '');
INSERT INTO `zuchengmingxi` VALUES ('151', '5692 022-06', '水嘴', '1', '', '个', 'Φ80铣刀（T1035）', '');
INSERT INTO `zuchengmingxi` VALUES ('152', 'C6-390.410-100 110A', '主刀柄', '1', '', '个', 'Φ17-47/90°(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('153', 'C6-391.27-25 070A', '侧压接柄', '1', '', '个', 'Φ17-47/90°(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('154', '870-1700-17-KM      3234', '刀片', '1', '', '个', 'Φ17-47/90°(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('155', '880-03 03 W06H-P-GR 4044', '刀片', '1', '', '个', 'Φ17-47/90°(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('156', '5692 022-06', '水嘴', '1', '', '个', 'Φ17-47/90°(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('157', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'Φ14.5/120°（T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('158', '393.15-32 18', '夹心', '1', '', '个', 'Φ14.5/120°（T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('159', '5692 022-06', '水嘴', '1', '', '个', 'Φ14.5/120°（T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('160', 'A10.022.40', '主刀柄', '1', '', '个', 'M16x1.5丝锥(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('161', '393.14-40 D120X090', '夹心', '1', '', '个', 'M16x1.5丝锥(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('162', 'ES13KM16X1.5', '丝锥', '1', '', '个', 'M16x1.5丝锥(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('163', '5692 022-06', '水嘴', '1', '', '个', 'M16x1.5丝锥(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('164', '392.41014-100 32 100A', '主刀柄', '1', '', '个', 'Φ14.5-20/90°(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('165', '393.15-32 18', '夹心', '1', '', '个', 'Φ14.5-20/90°(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('166', 'ST0784', '硬钻', '1', '', '个', 'Φ14.5-20/90°(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('167', '5692 022-06', '水嘴', '1', '', '个', 'Φ14.5-20/90°(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('168', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ15R8精镗(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('169', 'C5-391.37A-12 048B', '精镗单元', '1', '', '个', 'Φ15R8精镗(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('170', 'R429U(看不到）', '镗刀杆', '1', '', '个', 'Φ15R8精镗(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('171', 'TCMT 09 02 04-KF   3005', '刀片', '1', '', '个', 'Φ15R8精镗(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('172', '5692 022-06', '水嘴', '1', '', '个', 'Φ15R8精镗(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('173', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ15F9精镗(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('174', 'C5-391.37A-12 048B', '精镗单元', '1', '', '个', 'Φ15F9精镗(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('175', 'R429.90-14-040-09-AC(看不到）', '镗刀杆', '1', '', '个', 'Φ15F9精镗(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('176', 'TCMT 09 02 04-KF   3005', '刀片', '1', '', '个', 'Φ15F9精镗(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('177', '5692 022-06', '水嘴', '1', '', '个', 'Φ15F9精镗(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('178', 'C6-390.410-100110A', '主刀柄', '1', '', '个', 'Φ6.8-17/120°(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('179', 'C6-391.01-63 140A', '接柄', '1', '', '个', 'Φ6.8-17/120°(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('180', 'C6-391.14-40 130', '弹簧夹头', '1', '', '个', 'Φ6.8-17/120°(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('181', '393.15-40 10', '夹心', '1', '', '个', 'Φ6.8-17/120°(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('182', 'ST0783', '丝锥', '1', '', '个', 'Φ6.8-17/120°(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('183', '5692 022-06', '水嘴', '1', '', '个', 'Φ6.8-17/120°(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('184', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ18F9精镗(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('185', 'C5-391.37A-12 048B', '精镗单元', '1', '', '个', 'Φ18F9精镗(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('186', 'R429.90-14-040-09-AC(看不到）', '镗刀杆', '1', '', '个', 'Φ18F9精镗(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('187', 'TCMT 09 02 04-KF   3005', '刀片', '1', '', '个', 'Φ18F9精镗(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('188', '5692 022-06', '水嘴', '1', '', '个', 'Φ18F9精镗(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('189', '392.41027-100 32 100A', '主刀柄', '1', '', '个', 'Φ16 / Φ17.5(T1043) ', '');
INSERT INTO `zuchengmingxi` VALUES ('190', 'S912-561773((看不到）', '刀杆', '1', '', '个', 'Φ16 / Φ17.5(T1043) ', '');
INSERT INTO `zuchengmingxi` VALUES ('191', 'TCMT 09 02 08-KM   3215', '刀片', '1', '', '个', 'Φ16 / Φ17.5(T1043) ', '');
INSERT INTO `zuchengmingxi` VALUES ('192', 'TCMT 06 T1 04-KF   3005', '刀片', '1', '', '个', 'Φ16 / Φ17.5(T1043) ', '');
INSERT INTO `zuchengmingxi` VALUES ('193', '5692 022-06', '水嘴', '1', '', '个', 'Φ16 / Φ17.5(T1043) ', '');
INSERT INTO `zuchengmingxi` VALUES ('194', '930-HA10-HD-25-106', '主刀柄', '1', '', '个', 'Φ19.5-20/90°(T1045)', '');
INSERT INTO `zuchengmingxi` VALUES ('195', 'ST0782', '硬钻', '1', '', '个', 'Φ19.5-20/90°(T1045)', '');
INSERT INTO `zuchengmingxi` VALUES ('196', '5692 022-06', '水嘴', '1', '', '个', 'Φ19.5-20/90°(T1045)', '');
INSERT INTO `zuchengmingxi` VALUES ('197', '930-HA10-HD-25-106', '主刀柄', '1', '', '个', 'Φ20H9枪钻(T1046)', '');
INSERT INTO `zuchengmingxi` VALUES ('198', '5692 022-06', '水嘴', '1', '', '个', 'Φ20H9枪钻(T1046)', '');
INSERT INTO `zuchengmingxi` VALUES ('199', '392.41027-100 32 100A', '主刀柄', '1', '', '个', 'Φ27硬钻(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('200', '880-D2700L32-03', '刀杆', '1', '', '个', 'Φ27硬钻(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('201', '880-05 03 05H-C-GR   1044', '刀片', '1', '', '个', 'Φ27硬钻(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('202', '880-05 03 W08H-P-GR  4044', '刀片', '1', '', '个', 'Φ27硬钻(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('203', '5692 022-06', '水嘴', '1', '', '个', 'Φ27硬钻(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('204', 'C3-390.410-100 080A', '主刀柄', '1', '', '个', 'Φ29.5半精镗(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('205', 'C3-391.68A-1-021068B', '粗镗接柄', '1', '', '个', 'Φ29.5半精镗(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('206', '391.68A-1-03213C06B', '滑块', '2', '', '个', 'Φ29.5半精镗(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('207', 'CCMT 06 02 04-KM     3005', '刀片', '2', '', '个', 'Φ29.5半精镗(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('208', '5692 022-06', '水嘴', '1', '', '个', 'Φ29.5半精镗(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('209', 'C3-390.410-100 080A', '主刀柄', '1', '', '个', 'Φ30精镗(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('210', 'C3-R825A-AAB072A', '精镗单元', '1', '', '个', 'Φ30精镗(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('211', 'R825A-AF11STUC06T1A', '刀夹', '1', '', '个', 'Φ30精镗(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('212', 'TCMT06 T1 04-KF     3005', '刀片', '1', '', '个', 'Φ30精镗(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('213', '5692 022-06', '水嘴', '1', '', '个', 'Φ30精镗(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('214', '345-11-9093S-53619(看不到）', '主刀柄', '1', '', '个', 'Φ110/Φ130精镗(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('215', '890450232R58429(看不到）', '镗刀杆', '1', ' L585', '个', 'Φ110/Φ130精镗(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('216', 'TCMT 11 03 04-KF    3005', '刀片', '2', '', '个', 'Φ110/Φ130精镗(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('217', '无型号', '镗刀头', '2', '', '个', 'Φ110/Φ130精镗(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('218', '5692 022-06', '水嘴', '1', '', '个', 'Φ110/Φ130精镗(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('219', '345-11-9093S-53619', '主刀柄', '1', '', '个', 'Φ120精镗(T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('220', '890450232R58430', '镗刀杆', '1', '', '个', 'Φ120精镗(T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('221', 'TCMT 11 03 04-KF    3005', '刀片', '1', '', '个', 'Φ120精镗(T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('222', '无型号', '镗刀头', '1', '', '个', 'Φ120精镗(T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('223', '5692 022-06', '水嘴', '1', '', '个', 'Φ120精镗(T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('224', 'C3-390.410-100 080A', '主刀柄', '1', '', '个', 'Φ37.5粗镗(T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('225', 'C3-391.68A-2-026084B', '镗刀接柄', '1', '', '个', 'Φ37.5粗镗(T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('226', '391.68A-2-03813C06B', '滑块', '2', '', '个', 'Φ37.5粗镗(T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('227', 'CCMT 06 02 04-KM     3005', '刀片', '2', '', '个', 'Φ37.5粗镗(T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('228', '5692 022-06', '水嘴', '1', '', '个', 'Φ37.5粗镗(T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('229', 'C4-390.410-100 090A', '主刀柄', '1', '', '个', 'Φ38精镗(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('230', 'C4-R825A-AAB084A', '精镗单元', '1', '', '个', 'Φ38精镗(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('231', 'R825A-AF11STUC06T1A', '刀夹', '1', '', '个', 'Φ38精镗(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('232', 'TCMT06 T1 04-KF     3005', '刀片', '1', '', '个', 'Φ38精镗(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('233', '5692 022-06', '水嘴', '1', '', '个', 'Φ38精镗(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('234', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ50铣刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('235', 'M10×1.5', '铣刀盘', '1', '', '个', 'Φ50铣刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('236', 'R390-11 T3 08M-KM    1020', '刀片', '12', '', '个', 'Φ50铣刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('237', '5692 022-06', '水嘴', '1', '', '个', 'Φ50铣刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('238', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ100玉米铣(T1055)', '');
INSERT INTO `zuchengmingxi` VALUES ('239', 'R390-100C8-71M', '刀盘', '1', '', '个', 'Φ100玉米铣(T1055)', '');
INSERT INTO `zuchengmingxi` VALUES ('240', 'R390-180608M-KM', '刀片', '20', '', '个', 'Φ100玉米铣(T1055)', '');
INSERT INTO `zuchengmingxi` VALUES ('241', '5692 022-06', '水嘴', '1', '', '个', 'Φ100玉米铣(T1055)', '');
INSERT INTO `zuchengmingxi` VALUES ('242', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ130精镗(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('243', 'C8-R825C-AAH077A', '精镗单元', '1', '', '个', 'Φ130精镗(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('244', 'TCMT110304-KF', '刀片', '1', '', '个', 'Φ130精镗(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('245', '5692 022-06', '水嘴', '1', '', '个', 'Φ130精镗(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('246', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ120精镗(T1056)', '');
INSERT INTO `zuchengmingxi` VALUES ('247', 'C8-R825C-AAH077A', '精镗单元', '1', '', '个', 'Φ120精镗(T1056)', '');
INSERT INTO `zuchengmingxi` VALUES ('248', 'TCMT110304-KF', '刀片', '1', '', '个', 'Φ120精镗(T1056)', '');
INSERT INTO `zuchengmingxi` VALUES ('249', '5692 022-06', '水嘴', '1', '', '个', 'Φ120精镗(T1056)', '');
INSERT INTO `zuchengmingxi` VALUES ('250', 'A10.022.32', '主刀柄', '1', '', '个', 'M10×1.5丝锥(T1113)', '');
INSERT INTO `zuchengmingxi` VALUES ('251', '393.14-32 100', '夹心', '1', '', '个', 'M10×1.5丝锥(T1113)', '');
INSERT INTO `zuchengmingxi` VALUES ('252', 'E615M10', '丝锥', '1', '', '个', 'M10×1.5丝锥(T1113)', '');
INSERT INTO `zuchengmingxi` VALUES ('253', '5692 022-06', '水嘴', '1', '', '个', 'M10×1.5丝锥(T1113)', '');
INSERT INTO `zuchengmingxi` VALUES ('254', '', '主轴延伸轴', '1', '', '个', 'T998', '');
INSERT INTO `zuchengmingxi` VALUES ('255', '', '测头', '1', '', '个', 'T999999', '');
INSERT INTO `zuchengmingxi` VALUES ('256', 'S945-563916(看不到）', '主刀柄', '1', 'L=200', '个', 'Φ100铣刀(T1001)', '');
INSERT INTO `zuchengmingxi` VALUES ('257', 'R365-100Q32-S15M', '刀盘', '1', '', '个', 'Φ100铣刀(T1001)', '');
INSERT INTO `zuchengmingxi` VALUES ('258', 'R365-1505ZNE-KM  1020', '刀片', '7', '', '个', 'Φ100铣刀(T1001)', '');
INSERT INTO `zuchengmingxi` VALUES ('259', '5692 022-06', '水嘴', '1', '', '个', 'Φ100铣刀(T1001)', '');
INSERT INTO `zuchengmingxi` VALUES ('260', 'S945-563916(890800100N60566)', '主刀柄', '1', 'L=200', '个', 'Φ100铣刀(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('261', 'R590-100Q32A-11M', '刀盘', '1', '', '个', 'Φ100铣刀(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('262', 'R590-1105H-ZC2-KL  CB50', '刀片', '6', '', '个', 'Φ100铣刀(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('263', '5692 022-06', '水嘴', '1', '', '个', 'Φ100铣刀(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('264', '392.41014-100 40 120A', '刀柄', '1', '', '个', 'Φ14.5-42/90°(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('265', '393.15-40 18', '夹心', '1', '', '个', 'Φ14.5-42/90°(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('266', '5692 022-06', '水嘴', '1', '', '个', 'Φ14.5-42/90°(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('267', '392.41014-100 40 120A', '主刀柄', '1', '', '个', 'Φ14.5-47/90°(T1004)', '');
INSERT INTO `zuchengmingxi` VALUES ('268', '393.14-40 18', '夹心', '1', '', '个', 'Φ14.5-47/90°(T1004)', '');
INSERT INTO `zuchengmingxi` VALUES ('269', '5692 022-06', '水嘴', '1', '', '个', 'Φ14.5-47/90°(T1004)', '');
INSERT INTO `zuchengmingxi` VALUES ('270', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'M16×1.5丝锥（T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('271', 'C8-391.01-80 100A', '接杆1', '1', '', '个', 'M16×1.5丝锥（T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('272', 'C8-391.01-80 100A', '接杆2', '1', '', '个', 'M16×1.5丝锥（T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('273', 'C8-391.14-32 070', '接杆3', '1', '', '个', 'M16×1.5丝锥（T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('274', '393.14-40D120×090', '夹心', '1', '', '个', 'M16×1.5丝锥（T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('275', 'ES13KM16×1.5', '丝锥', '1', '', '个', 'M16×1.5丝锥（T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('276', '5692 022-06', '水嘴', '1', '', '个', 'M16×1.5丝锥（T1005)', '');
INSERT INTO `zuchengmingxi` VALUES ('277', 'A10.022.40', 'ER刀柄', '1', 'L=160', '个', 'Φ17-40/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('278', '393.15-40 20', '夹心', '1', '', '个', 'Φ17-40/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('279', '5692 022-06', '水嘴', '1', '', '个', 'Φ17-40/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('280', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'Φ14.5-17/90°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('281', 'C6-391.14-40 130', '接杆', '1', '', '个', 'Φ14.5-17/90°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('282', '393.14-40 18', '夹心', '1', '', '个', 'Φ14.5-17/90°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('283', '5692 022-06', '水嘴', '1', '', '个', 'Φ14.5-17/90°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('284', 'C6-390.410-100 110A', '主刀柄', '1', '', '个', 'Φ15镗刀（T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('285', 'C6-391.37A-16 075A', '接杆1', '1', '', '个', 'Φ15镗刀（T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('286', '无号(看不见）', '镗刀杆(非标）', '1', '', '个', 'Φ15镗刀（T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('287', 'TCMT 06 T1 04-KF  3215', '刀片', '1', '', '个', 'Φ15镗刀（T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('288', '5692 022-06', '水嘴', '1', '', '个', 'Φ15镗刀（T1008)', '');
INSERT INTO `zuchengmingxi` VALUES ('289', '392.41014-100 32 120A', '刀柄', '1', '', '个', 'Φ12硬钻（T1009)', '');
INSERT INTO `zuchengmingxi` VALUES ('290', '393.15-40 12', '夹心', '1', '', '个', 'Φ12硬钻（T1009)', '');
INSERT INTO `zuchengmingxi` VALUES ('291', 'R840-1200-70-A1A  1220', '硬钻', '1', '', '个', 'Φ12硬钻（T1009)', '');
INSERT INTO `zuchengmingxi` VALUES ('292', '5692 022-06', ' 水嘴', '1', '', '个', 'Φ12硬钻（T1009)', '');
INSERT INTO `zuchengmingxi` VALUES ('293', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'Φ10.8硬钻（T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('294', 'C6-391.14-40 130', '刀杆', '1', '', '个', 'Φ10.8硬钻（T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('295', '393.15-40 12', '夹心', '1', '', '个', 'Φ10.8硬钻（T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('296', 'R840-1080-50-A1A  1220', '硬钻', '1', '', '个', 'Φ10.8硬钻（T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('297', '5692 022-06', '水嘴', '1', '', '个', 'Φ10.8硬钻（T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('298', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'M12×1.25丝锥（T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('299', 'C6-391.14-40 130', '刀杆', '1', '', '个', 'M12×1.25丝锥（T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('300', 'ER40GB Φ9.0', '夹心', '1', '', '个', 'M12×1.25丝锥（T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('301', 'EP11M12×1.25', '丝锥', '1', '', '个', 'M12×1.25丝锥（T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('302', '5692 022-06', '水嘴', '1', '', '个', 'M12×1.25丝锥（T1011)', '');
INSERT INTO `zuchengmingxi` VALUES ('303', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'Φ11.5-16/90°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('304', 'C6-391.14-40 130', '刀杆', '1', '', '个', 'Φ11.5-16/90°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('305', '393.15-40 14', '夹心', '1', '', '个', 'Φ11.5-16/90°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('306', '5692 022-06', '水嘴', '1', '', '个', 'Φ11.5-16/90°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('307', 'C6-390.410-100 110A', '主刀柄', '1', '', '个', 'Φ12 镗刀(T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('308', 'C6-391.02-50 110A', '接杆1', '1', '', '个', 'Φ12 镗刀(T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('309', 'C5-391.37A-12 048B', '接杆2', '1', '', '个', 'Φ12 镗刀(T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('310', 'R492.90-11-033-06-AC(看不见）', '刀杆', '1', '', '个', 'Φ12 镗刀(T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('311', 'TCMT 06 T1 04-KF  3215', '刀片', '1', '', '个', 'Φ12 镗刀(T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('312', '5692 022-06', '水嘴', '1', '', '个', 'Φ12 镗刀(T1013)', '');
INSERT INTO `zuchengmingxi` VALUES ('313', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'Φ8.8-22/90°(T1014)', '');
INSERT INTO `zuchengmingxi` VALUES ('314', 'C6-391.02-40 130A', '接杆1', '1', '', '个', 'Φ8.8-22/90°(T1014)', '');
INSERT INTO `zuchengmingxi` VALUES ('315', '393.15-40 12', '夹心', '1', '', '个', 'Φ8.8-22/90°(T1014)', '');
INSERT INTO `zuchengmingxi` VALUES ('316', '5692 022-06', '水嘴', '1', '', '个', 'Φ8.8-22/90°(T1014)', '');
INSERT INTO `zuchengmingxi` VALUES ('317', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'Φ8.3-85(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('318', 'C6-391.02-40 130', '接杆1', '1', '', '个', 'Φ8.3-85(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('319', '393.15-40 10', '夹心', '1', '', '个', 'Φ8.3-85(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('320', '861.1-0833-100A1-GM-GC34', '硬钻', '1', 'L=192', '个', 'Φ8.3-85(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('321', '5692 022-06', '水嘴', '1', '', '个', 'Φ8.3-85(T1015)', '');
INSERT INTO `zuchengmingxi` VALUES ('322', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'M10×1.25丝锥(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('323', 'C6-391.14-32 130', '接杆1', '1', '', '个', 'M10×1.25丝锥(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('324', 'ER32GBΦ7.0', '夹心', '1', '', '个', 'M10×1.25丝锥(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('325', 'ES13KM10×1.25', '丝锥', '1', '', '个', 'M10×1.25丝锥(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('326', '5692 022-06', '水嘴', '1', '', '个', 'M10×1.25丝锥(T1016)', '');
INSERT INTO `zuchengmingxi` VALUES ('327', '930-HA10-HD-25-106', '主刀柄', '1', '', '个', 'Φ25铣刀(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('328', '看不见', '铣刀盘', '1', '', '个', 'Φ25铣刀(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('329', 'R390-17 04 08M-KM   1020', '刀片', '2', '', '个', 'Φ25铣刀(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('330', '5692 022-06', '水嘴', '1', '', '个', 'Φ25铣刀(T1017)', '');
INSERT INTO `zuchengmingxi` VALUES ('331', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'Φ20.5-30/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('332', 'C6-391.27-25 070A', '接杆1', '1', '', '个', 'Φ20.5-30/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('333', '870-2050-20 KM3234', '刀片', '1', '', '个', 'Φ20.5-30/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('334', '880-03 03 W06H-P-GR 4044', '刀片', '1', '', '个', 'Φ20.5-30/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('335', '5692 022-06', '水嘴', '1', '', '个', 'Φ20.5-30/90°(T1018)', '');
INSERT INTO `zuchengmingxi` VALUES ('336', 'C6-390.410-100 110A', '主刀柄', '1', 'L=180', '个', 'M22×1.5丝锥(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('337', 'C6-391.14-40 130', '接杆1', '1', '', '个', 'M22×1.5丝锥(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('338', '393.14-40D180×145', '夹心', '1', '', '个', 'M22×1.5丝锥(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('339', 'EP11KM22×1.5', '丝锥', '1', '', '个', 'M22×1.5丝锥(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('340', '5692 022-06', '水嘴', '1', '', '个', 'M22×1.5丝锥(T1019)', '');
INSERT INTO `zuchengmingxi` VALUES ('341', '392.41027-100 40 110A', '刀柄', '1', '', '个', 'Φ34/Φ40/Φ42/15°(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('342', '890 44929R14211(看不见）', '刀杆', '1', '', '个', 'Φ34/Φ40/Φ42/15°(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('343', 'TCMT 11 03 04-KM    3215', '刀片', '3', '', '个', 'Φ34/Φ40/Φ42/15°(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('344', 'WCMX 06 T3 08 R-53 3040', '刀片', '2', '', '个', 'Φ34/Φ40/Φ42/15°(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('345', '5692 022-06', '水嘴', '1', '', '个', 'Φ34/Φ40/Φ42/15°(T1020)', '');
INSERT INTO `zuchengmingxi` VALUES ('346', 'C4-390.410-100 40 110A', '主刀柄', '1', '', '个', 'Φ42 镗刀(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('347', 'C4-R825B-AAC066A', '接杆', '1', '', '个', 'Φ42 镗刀(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('348', 'R-AF17STUC0902', '镗刀夹', '1', '', '个', 'Φ42 镗刀(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('349', 'TCMT 09 02 04-KF    3005', '刀片', '1', '', '个', 'Φ42 镗刀(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('350', '5692 022-06', '水嘴', '1', '', '个', 'Φ42 镗刀(T1021)', '');
INSERT INTO `zuchengmingxi` VALUES ('351', 'S945-561753', ' 非标刀柄', '1', 'L=250', '个', 'Φ19.5/Φ22.5/45°(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('352', 'S931-561751（看不见）', '非标阶梯刀杆', '1', 'L=85', '个', 'Φ19.5/Φ22.5/45°(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('353', '880-03 03-05H-CM1044', '刀片', '2', '', '个', 'Φ19.5/Φ22.5/45°(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('354', '880-03 03 W06H-P-GR 4044', '刀片', '2', '', '个', 'Φ19.5/Φ22.5/45°(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('355', '5692 022-06', '水嘴', '1', '', '个', 'Φ19.5/Φ22.5/45°(T1022)', '');
INSERT INTO `zuchengmingxi` VALUES ('356', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ20 镗刀(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('357', 'C8-391.02-63 080A', '接杆1', '1', '', '个', 'Φ20 镗刀(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('358', 'C6-391.37A-16 075A', '接杆2', '1', '', '个', 'Φ20 镗刀(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('359', 'R429U-A16-17056 TC09A（看不见）', '刀杆', '1', '', '个', 'Φ20 镗刀(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('360', 'TCMT 09 02 04-KF    3005', '刀片', '1', '', '个', 'Φ20 镗刀(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('361', '5692 022-06', '水嘴', '1', '', '个', 'Φ20 镗刀(T1023)', '');
INSERT INTO `zuchengmingxi` VALUES ('362', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ169.5/90°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('363', '890.450232R58410', '非标阶梯刀杆', '1', ' L=140', '个', 'Φ169.5/90°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('364', 'STGCL12CA-16-M', '刀夹', '2', '', '个', 'Φ169.5/90°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('365', 'STSCL12CA-16-M', '刀夹', '1', '', '个', 'Φ169.5/90°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('366', 'TCMT 16 T3 08-KR  3210', '刀片', '3', '', '个', 'Φ169.5/90°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('367', '5692 022-06', '水嘴', '1', '', '个', 'Φ169.5/90°(T1024)', '');
INSERT INTO `zuchengmingxi` VALUES ('368', '345-11-9003-206344', '主刀柄', '1', 'L=275', '个', 'Φ170H8(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('369', '344-C8-390.01S-80 180', '接杆', '1', 'L=180', '个', 'Φ170H8(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('370', 'C8-R822XLS17-AJ 070', '接杆', '1', '', '个', 'Φ170H8(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('371', 'A34-R826C-E.017', '接杆', '1', '', '个', 'Φ170H8(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('372', 'C-AF23STUC1103A', '刀夹', '1', '', '个', 'Φ170H8(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('373', 'S17-R825XLA34-020', '配重', '2', '', '个', 'Φ170H8(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('374', 'TCMT 09 02 04-KF    3005', '刀片', '1', '', '个', 'Φ170H8(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('375', '5692 022-06', '水嘴', '1', '', '个', 'Φ170H8(T1025)', '');
INSERT INTO `zuchengmingxi` VALUES ('376', '345-11-9003-206344', '主刀柄', '1', ' L=275', '个', 'Φ79.5/90°(T1026)', '');
INSERT INTO `zuchengmingxi` VALUES ('377', '8900450232R58423', '非标刀杆', '1', '', '个', 'Φ79.5/90°(T1026)', '');
INSERT INTO `zuchengmingxi` VALUES ('378', 'STFCR12CA-16-M', '刀夹', '1', '', '个', 'Φ79.5/90°(T1026)', '');
INSERT INTO `zuchengmingxi` VALUES ('379', 'STFCR12CA-16-M', '刀夹', '1', '', '个', 'Φ79.5/90°(T1026)', '');
INSERT INTO `zuchengmingxi` VALUES ('380', 'TCMT 16 T3 08-KM  3210', '刀片', '2', '', '个', 'Φ79.5/90°(T1026)', '');
INSERT INTO `zuchengmingxi` VALUES ('381', 'TCMT 11 T3 08-KM 3210', '刀片', '1', '', '个', 'Φ79.5/90°(T1026)', '');
INSERT INTO `zuchengmingxi` VALUES ('382', 'STSCR 10CA-11-B1', '刀夹', '1', '', '个', 'Φ79.5/90°(T1026)', '');
INSERT INTO `zuchengmingxi` VALUES ('383', '5692 022-06', '水嘴', '1', '', '个', 'Φ79.5/90°(T1026)', '');
INSERT INTO `zuchengmingxi` VALUES ('384', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ89.5/90°(T1027)', '');
INSERT INTO `zuchengmingxi` VALUES ('385', '890450232R58412', '非标阶梯刀杆', '1', '', '个', 'Φ89.5/90°(T1027)', '');
INSERT INTO `zuchengmingxi` VALUES ('386', 'TCMT 16 T3 08-KM  3210', '刀片', '2', '', '个', 'Φ89.5/90°(T1027)', '');
INSERT INTO `zuchengmingxi` VALUES ('387', 'TCMT 11 T3 08-KM 3210', '刀片', '1', '', '个', 'Φ89.5/90°(T1027)', '');
INSERT INTO `zuchengmingxi` VALUES ('388', 'STFCR12CA-16-M', '刀夹', '2', '', '个', 'Φ89.5/90°(T1027)', '');
INSERT INTO `zuchengmingxi` VALUES ('389', 'STSCR12CA-16-M', '刀夹', '1', '', '个', 'Φ89.5/90°(T1027)', '');
INSERT INTO `zuchengmingxi` VALUES ('390', '5692 022-06', '水嘴', '1', '', '个', 'Φ89.5/90°(T1027)', '');
INSERT INTO `zuchengmingxi` VALUES ('391', '345-11-9003-206344', '主刀柄', '1', 'L=275', '个', 'Φ100铣刀(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('392', 'C8-391.05CD-32 320', '接杆', '1', '', '个', 'Φ100铣刀(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('393', 'R390-100Q32-17M', '铣刀盘', '1', 'Φ100,z=7', '个', 'Φ100铣刀(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('394', 'R390-17 04 08M-KM  1020', '刀片 ', '7', '', '个', 'Φ100铣刀(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('395', '5692 022-06', '水嘴', '1', '', '个', 'Φ100铣刀(T1028)', '');
INSERT INTO `zuchengmingxi` VALUES ('396', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ119.5/90°(T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('397', '890450232R58413', '非标阶梯刀杆', '1', '', '个', 'Φ119.5/90°(T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('398', 'TCMT 16 T3 08-KM  3210', '刀片', '3', '', '个', 'Φ119.5/90°(T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('399', 'STFCR12CA-16-M', '刀夹', '2', '', '个', 'Φ119.5/90°(T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('400', 'STSCR12CA-16-M', '刀夹', '1', '', '个', 'Φ119.5/90°(T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('401', '5692 022-06', '水嘴', '1', '', '个', 'Φ119.5/90°(T1029)', '');
INSERT INTO `zuchengmingxi` VALUES ('402', '345-11-9003-206344', '主刀柄', '1', ' L=275 ', '个', 'Φ139.5/90°L550(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('403', '344-C8-391.01S-80 180', '接杆', '1', 'L=180', '个', 'Φ139.5/90°L550(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('404', '890450232R58424', '非标刀杆', '1', '', '个', 'Φ139.5/90°L550(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('405', 'TCMT 16 T3 08-KM  3210', '刀片', '4', '', '个', 'Φ139.5/90°L550(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('406', 'STFCR12CA-16-M', '刀夹', '4', '', '个', 'Φ139.5/90°L550(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('407', '5692 022-06', '水嘴', '1', '', '个', 'Φ139.5/90°L550(T1030)', '');
INSERT INTO `zuchengmingxi` VALUES ('408', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ28/Φ36(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('409', 'C5-391.02-40 065A', '接杆1', '1', '', '个', 'Φ28/Φ36(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('410', 'S931-561614', '非标阶梯刀杆', '1', '', '个', 'Φ28/Φ36(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('411', '880-05 05H-C-GR  1044', '中心刀片', '1', '', '个', 'Φ28/Φ36(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('412', '880-05 03 W08H-P-GR  4024', '中心刀片', '1', '', '个', 'Φ28/Φ36(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('413', 'TCMT 11 T3 08-KM 3215', '刀片', '2', '', '个', 'Φ28/Φ36(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('414', '5692 022-06', '水嘴', '1', '', '个', 'Φ28/Φ36(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('415', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ29.5/Φ37.7(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('416', 'C5-391.02-32 060A', '接杆1', '1', '', '个', 'Φ29.5/Φ37.7(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('417', 'C3-391.68A-3-032 C34B', '镗刀接柄', '1', '', '个', 'Φ29.5/Φ37.7(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('418', '391.68F-3-04716 TC11B', '滑块', '2', '', '个', 'Φ29.5/Φ37.7(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('419', 'TCMT 11 T3 08-KM 3215', '刀片', '2', '', '个', 'Φ29.5/Φ37.7(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('420', '5692 022-06', '水嘴', '1', '', '个', 'Φ29.5/Φ37.7(T1032)', '');
INSERT INTO `zuchengmingxi` VALUES ('421', '890450232R58416', '非标刀杆（整体）', '1', '', '个', 'Φ29.95/Φ37.95（T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('422', '看不见', '支承块', '4', '', '个', 'Φ29.95/Φ37.95（T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('423', '看不见', '刀夹', '4', '', '个', 'Φ29.95/Φ37.95（T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('424', 'TCMT 11 03 04-KF    3005', '刀片', '2', '', '个', 'Φ29.95/Φ37.95（T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('425', '5692 022-06', '水嘴', '1', '', '个', 'Φ29.95/Φ37.95（T1033)', '');
INSERT INTO `zuchengmingxi` VALUES ('426', 'S-L148CX2-29/32/43 315//HSK100A', '减振镗刀杆', '1', '', '个', 'Φ38(T1034)', '');
INSERT INTO `zuchengmingxi` VALUES ('427', 'L148C-13-11 03（看不见）', '精镗刀头', '2', '', '个', 'Φ38(T1034)', '');
INSERT INTO `zuchengmingxi` VALUES ('428', 'TCMT 06 T 104-KF    3005', '刀片', '2', '', '个', 'Φ38(T1034)', '');
INSERT INTO `zuchengmingxi` VALUES ('429', '5692 022-06', '水嘴', '1', '', '个', 'Φ38(T1034)', '');
INSERT INTO `zuchengmingxi` VALUES ('430', '345-11-9003-206344', '主刀柄', '1', 'L=275', '个', 'Φ80/Φ90 H7 L420(T1035)', '');
INSERT INTO `zuchengmingxi` VALUES ('431', '890450232R58422', '非标刀杆', '1', '', '个', 'Φ80/Φ90 H7 L420(T1035)', '');
INSERT INTO `zuchengmingxi` VALUES ('432', 'L148C-13-11 03（看不见）', '精镗刀头', '2', '', '个', 'Φ80/Φ90 H7 L420(T1035)', '');
INSERT INTO `zuchengmingxi` VALUES ('433', 'TCMT 11 03 04-KF    3005', '刀片', '2', '', '个', 'Φ80/Φ90 H7 L420(T1035)', '');
INSERT INTO `zuchengmingxi` VALUES ('434', '5692 022-06', '水嘴', '1', '', '个', 'Φ80/Φ90 H7 L420(T1035)', '');
INSERT INTO `zuchengmingxi` VALUES ('435', '345-11-9003-206344', '主刀柄', '1', 'L=275', '个', 'Φ140/Φ120 N7 L420(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('436', '890450232R58421', '非标刀杆', '1', '', '个', 'Φ140/Φ120 N7 L420(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('437', 'L148C-13-11 03（看不见）', '微调单元', '2', '', '个', 'Φ140/Φ120 N7 L420(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('438', 'TCMT 11 03 04-KF    3005', '刀片', '2', '', '个', 'Φ140/Φ120 N7 L420(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('439', '5692 022-06', '水嘴', '1', '', '个', 'Φ63 L420(T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('440', '345-11-9003-206344', '主刀柄', '1', 'L=275', '个', 'Φ63 L420(T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('441', 'C6-391.05CD-22 200', '接杆', '1', '', '个', 'Φ63 L420(T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('442', '328-063Q22-13M', ' 切槽刀盘', '1', '', '个', 'Φ63 L420(T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('443', '328r13-26545-GC   1025', '刀片', '5', '', '个', 'Φ63 L420(T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('444', '5692 022-06', '水嘴', '1', '', '个', 'Φ63 L420(T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('445', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ40 L250(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('446', 'C8-391.02-50 080A', '接杆1', '1', '', '个', 'Φ40 L250(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('447', '890450272R58420  S912-561756', '刀杆', '1', '', '个', 'Φ40 L250(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('448', 'CCMT 09 T3 08-KM   3215', '刀片', '2', '', '个', 'Φ40 L250(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('449', 'SCFCR 10CA-09', '刀夹', '2', '', '个', 'Φ40 L250(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('450', '5692 022-06', '水嘴', '1', '', '个', 'Φ40 L250(T1038)', '');
INSERT INTO `zuchengmingxi` VALUES ('451', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ50 L250(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('452', 'C8-391.02-50 080A', '接杆1', '1', '', '个', 'Φ50 L250(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('453', '890 450272R58419  S912-561755', '刀杆', '1', '', '个', 'Φ50 L250(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('454', 'CCMT 09 T3 08-KM   3215', '刀片', '2', '', '个', 'Φ50 L250(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('455', 'SCFCR10CA-09', '刀夹', '2', '', '个', 'Φ50 L250(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('456', '5692 022-06', '水嘴', '1', '', '个', 'Φ50 L250(T1039)', '');
INSERT INTO `zuchengmingxi` VALUES ('457', '392.41027-100 40 100A', '刀柄', '1', '', '个', 'Φ32.5/90°(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('458', 'DCI 32.65（看不见）', '非标阶梯刀杆', '1', '', '个', 'Φ32.5/90°(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('459', '880-06 04 06H-C-GR  1044', '中心刀片', '1', '', '个', 'Φ32.5/90°(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('460', '880-06 04 W10H-P-GR  4044', '中心刀片', '1', '', '个', 'Φ32.5/90°(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('461', '880-04 03 W05H-P-GM  4044', '中心刀片', '1', '', '个', 'Φ32.5/90°(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('462', '5692 022-06', '水嘴', '1', '', '个', 'Φ32.5/90°(T1040)', '');
INSERT INTO `zuchengmingxi` VALUES ('463', '5692 022-06', '水嘴', '1', '', '个', 'Φ6.8阶梯钻(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('464', '392.41014-100 32 120A', '刀柄', '1', '', '个', 'Φ6.8阶梯钻(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('465', 'ER40-DCB 10.0-9.5', '夹心', '1', '', '个', 'Φ6.8阶梯钻(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('466', 'ST0766 Φ6.8×20×120°×Φ10×103', '非标钻头', '1', '', '个', 'Φ6.8阶梯钻(T1041)', '');
INSERT INTO `zuchengmingxi` VALUES ('467', '5692 022-06', '水嘴', '1', '', '个', 'M8丝锥(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('468', '392.41014-100 32 110A', '刀柄', '1', '', '个', 'M8丝锥(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('469', '05.027.964', '钢性夹心', '1', '', '个', 'M8丝锥(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('470', 'E446M8', '丝锥', '1', '', '个', 'M8丝锥(T1042)', '');
INSERT INTO `zuchengmingxi` VALUES ('471', '5692 022-06', '水嘴', '1', '', '个', 'Φ20阶梯钻(T1043)', '');
INSERT INTO `zuchengmingxi` VALUES ('472', 'C6-390.410-100 110A', '主柄', '1', '', '个', 'Φ20阶梯钻(T1043)', '');
INSERT INTO `zuchengmingxi` VALUES ('473', 'C6-391.14-40 130', '接杆', '1', '', '个', 'Φ20阶梯钻(T1043)', '');
INSERT INTO `zuchengmingxi` VALUES ('474', '393.15-32 20', '夹心 ', '1', '', '个', 'Φ20阶梯钻(T1043)', '');
INSERT INTO `zuchengmingxi` VALUES ('475', 'ST0759 Φ20×78×Φ20×131', '非标钻头', '1', '', '个', 'Φ20阶梯钻(T1043)', '');
INSERT INTO `zuchengmingxi` VALUES ('476', '5692 022-06', '水嘴', '1', '', '个', 'Φ9阶梯钻(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('477', '392.41014-100 32 100A', '刀柄', '1', '', '个', 'Φ9阶梯钻(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('478', '393.15-32 12', '夹心', '1', '', '个', 'Φ9阶梯钻(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('479', 'ST0767 Φ9×20×120°×Φ12×103', '非标钻头', '1', '', '个', 'Φ9阶梯钻(T1044)', '');
INSERT INTO `zuchengmingxi` VALUES ('480', '5692 022-06', '水嘴', '1', '', '个', 'M10×1丝锥(T1045)', '');
INSERT INTO `zuchengmingxi` VALUES ('481', '392.41014-100 32 100A', '刀柄', '1', '', '个', 'M10×1丝锥(T1045)', '');
INSERT INTO `zuchengmingxi` VALUES ('482', 'ER32-GB  Φ7.0-5.5', '钢性夹心', '1', '', '个', 'M10×1丝锥(T1045)', '');
INSERT INTO `zuchengmingxi` VALUES ('483', 'ES13KM10×1.0', '丝锥', '1', '', '个', 'M10×1丝锥(T1045)', '');
INSERT INTO `zuchengmingxi` VALUES ('484', '5692 022-06', '水嘴', '1', '', '个', 'Φ5阶梯钻(T1046)', '');
INSERT INTO `zuchengmingxi` VALUES ('485', '392.41014-100 32 100A', '刀柄', '1', '', '个', 'Φ5阶梯钻(T1046)', '');
INSERT INTO `zuchengmingxi` VALUES ('486', '393.15-32 10', '夹心', '1', '', '个', 'Φ5阶梯钻(T1046)', '');
INSERT INTO `zuchengmingxi` VALUES ('487', 'ST0768 Φ5×20×120°×Φ10×122', '复合钻头', '1', '', '个', 'Φ5阶梯钻(T1046)', '');
INSERT INTO `zuchengmingxi` VALUES ('488', '5692 022-06', '水嘴', '1', '', '个', 'M6丝锥(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('489', '392.41014-100 32 100A', '刀柄', '1', '', '个', 'M6丝锥(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('490', '05.027.862(看不到）', '钢性夹心', '1', '', '个', 'M6丝锥(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('491', 'E616M6', '丝锥', '1', '', '个', 'M6丝锥(T1047)', '');
INSERT INTO `zuchengmingxi` VALUES ('492', '5692 022-06', '水嘴', '1', '', '个', 'Φ16.5阶梯钻(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('493', 'G25 25000A10.022.40', '钢性夹头', '1', '', '个', 'Φ16.5阶梯钻(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('494', '393.15-40 20', '夹心', '1', '', '个', 'Φ16.5阶梯钻(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('495', 'ST0762 Φ16.5×42×120°×Φ20×153', '复合钻头', '1', '', '个', 'Φ16.5阶梯钻(T1048)', '');
INSERT INTO `zuchengmingxi` VALUES ('496', '5692 022-06', '水嘴', '1', '', '个', 'M18×1.5丝锥(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('497', 'G25 2500 0A10.022.40', '钢性夹头', '1', '', '个', 'M18×1.5丝锥(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('498', '393.14-40 D140×112', '钢性夹心', '1', '', '个', 'M18×1.5丝锥(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('499', 'LS-SP M18×1.5', '丝锥', '1', '', '个', 'M18×1.5丝锥(T1049)', '');
INSERT INTO `zuchengmingxi` VALUES ('500', '5692 022-06', '水嘴', '1', '', '个', 'Φ11.8阶梯钻(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('501', '392.41014-100 40 120A', '刀柄', '1', '', '个', 'Φ11.8阶梯钻(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('502', '393.15-40 14', '夹心', '1', '', '个', 'Φ11.8阶梯钻(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('503', 'ST0769 Φ11.8×14×120°×Φ14×120', '复合钻头', '1', '', '个', 'Φ11.8阶梯钻(T1050)', '');
INSERT INTO `zuchengmingxi` VALUES ('504', '5692 022-06', '水嘴', '1', '', '个', 'Φ12F9-铰刀 (T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('505', '392.41014-100 40 120A', '刀柄', '1', '', '个', 'Φ12F9-铰刀 (T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('506', '393.15-40 12', '夹心', '1', '', '个', 'Φ12F9-铰刀 (T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('507', 'TM435.B-XF-435-XF.12', '铰刀', '1', '', '个', 'Φ12F9-铰刀 (T1051)', '');
INSERT INTO `zuchengmingxi` VALUES ('508', '5692 022-06', '水嘴', '1', '', '个', '  Φ12立铣刀 (T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('509', '392.41014-100 40 120A', '刀柄', '1', '', '个', '  Φ12立铣刀 (T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('510', '393.15-40 12', '夹心', '1', '', '个', '  Φ12立铣刀 (T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('511', '2P340-1200-PA       1630', '立铣刀', '1', '', '个', '  Φ12立铣刀 (T1052)', '');
INSERT INTO `zuchengmingxi` VALUES ('512', '5692 022-06', '水嘴', '1', '', '个', '镗刀(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('513', 'C4-390.410-100 090A', '主刀柄', '1', '', '个', '镗刀(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('514', 'C4-391.02-32 055A', '接柄', '1', '', '个', '镗刀(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('515', 'C3-391.68A-3-032034B', '接柄', '1', '', '个', '镗刀(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('516', '391.68F-3-04716TC11B', '滑块', '2', '', '个', '镗刀(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('517', 'TCMT 11 T3 08-KM 3215', '刀片', '2', '', '个', '镗刀(T1053)', '');
INSERT INTO `zuchengmingxi` VALUES ('518', '5692 022-06', '水嘴', '1', '', '个', 'Φ15镗刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('519', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ15镗刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('520', 'C5-391.37A-12 048B', '接柄', '1', '', '个', 'Φ15镗刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('521', 'R429.90-14-040-09（看不见）', '镗刀杆', '1', '', '个', 'Φ15镗刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('522', 'TPMT090204-KF', '刀片', '1', '', '个', 'Φ15镗刀(T1054)', '');
INSERT INTO `zuchengmingxi` VALUES ('523', '5692 022-06', '水嘴', '1', '', '个', 'Φ44玉米铣(T1055)', '');
INSERT INTO `zuchengmingxi` VALUES ('524', 'C4-390.410-100 090A', '主刀柄', '1', '', '个', 'Φ44玉米铣(T1055)', '');
INSERT INTO `zuchengmingxi` VALUES ('525', 'R390-044C4-45M', '刀盘', '1', '', '个', 'Φ44玉米铣(T1055)', '');
INSERT INTO `zuchengmingxi` VALUES ('526', 'R390-11T308M-KM', '刀片', '15', '', '个', 'Φ44玉米铣(T1055)', '');
INSERT INTO `zuchengmingxi` VALUES ('527', '5692 022-06', '水嘴', '1', '', '个', 'Φ16立铣刀(T1056)', '');
INSERT INTO `zuchengmingxi` VALUES ('528', 'G25 25000 A10.022.32', '主刀柄', '1', '', '个', 'Φ16立铣刀(T1056)', '');
INSERT INTO `zuchengmingxi` VALUES ('529', 'ER32-16', '夹心', '1', '', '个', 'Φ16立铣刀(T1056)', '');
INSERT INTO `zuchengmingxi` VALUES ('530', '2P340-1600-PA', '立铣刀', '1', '', '个', 'Φ16立铣刀(T1056)', '');
INSERT INTO `zuchengmingxi` VALUES ('531', '5692 022-06', '水嘴', '1', '', '个', 'Φ25U钻(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('532', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'Φ25U钻(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('533', 'C5-391.01-50 100A', '接杆', '3', '', '个', 'Φ25U钻(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('534', 'C5-391.27-25 071', '侧压夹头', '1', '', '个', 'Φ25U钻(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('535', '880-D2500L25-05', 'U钻', '1', '', '个', 'Φ25U钻(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('536', '880-050305H-C-GM', '中心刀片', '1', '', '个', 'Φ25U钻(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('537', '880-0503W05H-P-GM', '周边刀片', '1', '', '个', 'Φ25U钻(T1057)', '');
INSERT INTO `zuchengmingxi` VALUES ('538', '5692 022-06', '水嘴', '1', '', '个', 'Φ80铣刀(T1058)', '');
INSERT INTO `zuchengmingxi` VALUES ('539', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'Φ80铣刀(T1058)', '');
INSERT INTO `zuchengmingxi` VALUES ('540', 'C8-391.06-27 320', '接杆', '1', '', '个', 'Φ80铣刀(T1058)', '');
INSERT INTO `zuchengmingxi` VALUES ('541', 'R390-080Q27-17M', '铣刀盘', '1', '', '个', 'Φ80铣刀(T1058)', '');
INSERT INTO `zuchengmingxi` VALUES ('542', 'R390-170408M-KM 3040', '刀片', '6', '', '个', 'Φ80铣刀(T1058)', '');
INSERT INTO `zuchengmingxi` VALUES ('543', '5692 022-06', '水嘴', '1', '', '个', 'Φ17阶梯钻(T1063)', '');
INSERT INTO `zuchengmingxi` VALUES ('544', 'C6-390.410-100 110A', '主刀柄', '1', '', '个', 'Φ17阶梯钻(T1063)', '');
INSERT INTO `zuchengmingxi` VALUES ('545', 'C6-391.27-25 070A', '侧压夹头', '1', '', '个', 'Φ17阶梯钻(T1063)', '');
INSERT INTO `zuchengmingxi` VALUES ('546', 'TM870.2.1-553751（看不见）', '刀杆', '1', '', '个', 'Φ17阶梯钻(T1063)', '');
INSERT INTO `zuchengmingxi` VALUES ('547', '870-1700-17-KM 3234', '刀片', '1', '', '个', 'Φ17阶梯钻(T1063)', '');
INSERT INTO `zuchengmingxi` VALUES ('548', '5692-022-06', '水嘴', '1', '', '个', 'Φ20.5U钻(T1100)', '');
INSERT INTO `zuchengmingxi` VALUES ('549', 'C6-390.410-100 110A', '主刀柄', '1', '', '个', 'Φ20.5U钻(T1100)', '');
INSERT INTO `zuchengmingxi` VALUES ('550', 'C6-391.01-63 100A', '接杆', '1', '', '个', 'Φ20.5U钻(T1100)', '');
INSERT INTO `zuchengmingxi` VALUES ('551', 'C6-391.27-32 075', '阶梯接杆', '1', '', '个', 'Φ20.5U钻(T1100)', '');
INSERT INTO `zuchengmingxi` VALUES ('552', '880-D2050L25-05', 'U钻刀杆', '1', '', '个', 'Φ20.5U钻(T1100)', '');
INSERT INTO `zuchengmingxi` VALUES ('553', '880-030305H-C-GM', '中心刀片', '1', '', '个', 'Φ20.5U钻(T1100)', '');
INSERT INTO `zuchengmingxi` VALUES ('554', '880-0303W05H-P-GM', '周边刀片', '1', '', '个', 'Φ20.5U钻(T1100)', '');
INSERT INTO `zuchengmingxi` VALUES ('555', '5692-022-06', '水嘴', '1', '', '个', 'M22*1.5丝锥(T1101)', '');
INSERT INTO `zuchengmingxi` VALUES ('556', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'M22*1.5丝锥(T1101)', '');
INSERT INTO `zuchengmingxi` VALUES ('557', 'C8-391.02-63 080A', '阶梯接杆', '1', '', '个', 'M22*1.5丝锥(T1101)', '');
INSERT INTO `zuchengmingxi` VALUES ('558', 'C6-391.02-50 110A', '接杆', '1', '', '个', 'M22*1.5丝锥(T1101)', '');
INSERT INTO `zuchengmingxi` VALUES ('559', 'C5-391.14-40 060', '刚性夹头', '1', '', '个', 'M22*1.5丝锥(T1101)', '');
INSERT INTO `zuchengmingxi` VALUES ('560', '393.14-40D180X145', '夹心', '1', '', '个', 'M22*1.5丝锥(T1101)', '');
INSERT INTO `zuchengmingxi` VALUES ('561', 'EP11M22X1.5', '丝锥', '1', '', '个', 'M22*1.5丝锥(T1101)', '');
INSERT INTO `zuchengmingxi` VALUES ('562', '5692 022-06', '水嘴', '1', '', '个', 'φ37U钻（T1102）', '');
INSERT INTO `zuchengmingxi` VALUES ('563', '392.41020-100 40 120A', '主刀柄', '1', '', '个', 'φ37U钻（T1102）', '');
INSERT INTO `zuchengmingxi` VALUES ('564', '880-D3700L40-05', 'U钻刀杆', '1', '', '个', 'φ37U钻（T1102）', '');
INSERT INTO `zuchengmingxi` VALUES ('565', '880-070406H-C-GM', '中心刀片', '1', '', '个', 'φ37U钻（T1102）', '');
INSERT INTO `zuchengmingxi` VALUES ('566', '880-0704W06H-P-GM', '周边刀片', '1', '', '个', 'φ37U钻（T1102）', '');
INSERT INTO `zuchengmingxi` VALUES ('567', '5692 022-06', '水嘴', '1', '', '个', 'M39螺纹铣刀（T1103）', '');
INSERT INTO `zuchengmingxi` VALUES ('568', 'C8-390.410-100 120A', '主刀柄', '1', '', '个', 'M39螺纹铣刀（T1103）', '');
INSERT INTO `zuchengmingxi` VALUES ('569', 'C8-391.02-50 080A', '阶梯接杆', '1', '', '个', 'M39螺纹铣刀（T1103）', '');
INSERT INTO `zuchengmingxi` VALUES ('570', 'C5-391.27-25 071', '侧压夹头', '1', '', '个', 'M39螺纹铣刀（T1103）', '');
INSERT INTO `zuchengmingxi` VALUES ('571', 'SR0021H21', '刀杆', '1', '', '个', 'M39螺纹铣刀（T1103）', '');
INSERT INTO `zuchengmingxi` VALUES ('572', '21I2.0ISO MT7', '螺纹刀片', '1', '', '个', 'M39螺纹铣刀（T1103）', '');
INSERT INTO `zuchengmingxi` VALUES ('573', '5692 022-06', '水嘴', '1', '', '个', 'φ32玉米铣T1104', '');
INSERT INTO `zuchengmingxi` VALUES ('574', 'C5-390.410-100 100A', '主刀柄', '1', '', '个', 'φ32玉米铣T1104', '');
INSERT INTO `zuchengmingxi` VALUES ('575', 'C5-391.01-50 080A', '接杆', '1', '', '个', 'φ32玉米铣T1104', '');
INSERT INTO `zuchengmingxi` VALUES ('576', 'R390-032C5-36L', '铣刀盘', '1', '', '个', 'φ32玉米铣T1104', '');
INSERT INTO `zuchengmingxi` VALUES ('577', 'R390-11T308M-KM', '刀片', '8', '', '个', 'φ32玉米铣T1104', '');
INSERT INTO `zuchengmingxi` VALUES ('578', '', '测头', '1', '', '个', '', '');
INSERT INTO `zuchengmingxi` VALUES ('579', 'R220.96-0080-08-7A', '方肩铣刀7刃', '1', '', '个', 'D80 铣刀(T185)', '');
INSERT INTO `zuchengmingxi` VALUES ('580', 'XNEX080608TR-MD15.MK2050', '刀片', '7', '', '个', 'D80 铣刀(T185)', '');
INSERT INTO `zuchengmingxi` VALUES ('581', 'E9306552527160', 'HSKA100铣刀刀柄', '1', '', '个', 'D80 铣刀(T185)', '');
INSERT INTO `zuchengmingxi` VALUES ('582', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'D80 铣刀(T185)', '');
INSERT INTO `zuchengmingxi` VALUES ('583', 'R220.96-0063-08-6A-27', '方肩铣刀6刃', '1', '', '个', 'D63 铣刀(T101)', '');
INSERT INTO `zuchengmingxi` VALUES ('584', 'XNEX080608TR-MD15.MK2050', '刀片', '6', '', '个', 'D63 铣刀(T101)', '');
INSERT INTO `zuchengmingxi` VALUES ('585', 'E9306552527100', 'HSKA100铣刀刀柄', '1', '', '个', 'D63 铣刀(T101)', '');
INSERT INTO `zuchengmingxi` VALUES ('586', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'D63 铣刀(T101)', '');
INSERT INTO `zuchengmingxi` VALUES ('587', 'D30*D32*126', '非标立铣刀', '1', '', '个', 'Φ30 铣刀(T102)', '');
INSERT INTO `zuchengmingxi` VALUES ('588', '4736 32.100', '热胀刀柄', '1', '', '个', 'Φ30 铣刀(T102)', '');
INSERT INTO `zuchengmingxi` VALUES ('589', '4949 24.100', '冷却管', '1', '', '个', 'Φ30 铣刀(T102)', '');
INSERT INTO `zuchengmingxi` VALUES ('590', 'C5-390.410-100100A', 'HSK Capto刀柄', '1', '', '个', 'Φ63 粗镗刀(T103)', '');
INSERT INTO `zuchengmingxi` VALUES ('591', 'C5-391.68A-5-050 044B', '接柄', '1', '', '个', 'Φ63 粗镗刀(T103)', '');
INSERT INTO `zuchengmingxi` VALUES ('592', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ63 粗镗刀(T103)', '');
INSERT INTO `zuchengmingxi` VALUES ('593', '5692022-06', '冷却液套管', '1', '', '个', 'Φ63 粗镗刀(T103)', '');
INSERT INTO `zuchengmingxi` VALUES ('594', '391.68A-5-070 26T16B', '滑块', '2', '', '个', 'Φ63 粗镗刀(T103)', '');
INSERT INTO `zuchengmingxi` VALUES ('595', 'C5-390.410-100100A', 'HSKCapto刀柄', '1', '', '个', 'Φ67.7半精镗(T104)', '');
INSERT INTO `zuchengmingxi` VALUES ('596', 'C5-391.68A-5-050 044B', '接柄', '1', '', '个', 'Φ67.7半精镗(T104)', '');
INSERT INTO `zuchengmingxi` VALUES ('597', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ67.7半精镗(T104)', '');
INSERT INTO `zuchengmingxi` VALUES ('598', '5692022-06', '冷却液套管', '1', '', '个', 'Φ67.7半精镗(T104)', '');
INSERT INTO `zuchengmingxi` VALUES ('599', '391.68A-5-070 26T16B', '滑块', '2', '', '个', 'Φ67.7半精镗(T104)', '');
INSERT INTO `zuchengmingxi` VALUES ('600', 'RA215.64-32M32-4512', '英制倒角立铣刀', '1', '', '个', 'Φ32.5-48.2倒角铣(T105)', '');
INSERT INTO `zuchengmingxi` VALUES ('601', 'A932.41020-100 31 100A', 'KSK 英制侧固刀柄', '1', '', '个', 'Φ32.5-48.2倒角铣(T105)', '');
INSERT INTO `zuchengmingxi` VALUES ('602', 'SPMT120408-WH4030', 'Waveline铣刀片', '3', '', '个', 'Φ32.5-48.2倒角铣(T105)', '');
INSERT INTO `zuchengmingxi` VALUES ('603', '5692022-06', '冷却液套管', '1', '', '个', 'Φ32.5-48.2倒角铣(T105)', '');
INSERT INTO `zuchengmingxi` VALUES ('604', 'C6-391.68A-7-096 060', '接柄', '1', '', '个', 'Φ101 粗镗(T106)', '');
INSERT INTO `zuchengmingxi` VALUES ('605', 'C6-390.410-1001 10A', 'HSK Capto刀柄', '1', '', '个', 'Φ101 粗镗(T106)', '');
INSERT INTO `zuchengmingxi` VALUES ('606', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ101 粗镗(T106)', '');
INSERT INTO `zuchengmingxi` VALUES ('607', '5692022-06', '冷却液套管', '1', '', '个', 'Φ101 粗镗(T106)', '');
INSERT INTO `zuchengmingxi` VALUES ('608', '391.68A-7-125 40T16B', '滑块', '2', '', '个', 'Φ101 粗镗(T106)', '');
INSERT INTO `zuchengmingxi` VALUES ('609', 'C6-391.68A-7-096 060', '接柄', '1', '', '个', 'Φ106 粗镗(T107)', '');
INSERT INTO `zuchengmingxi` VALUES ('610', 'C6-390.410-1001 10A', 'HSK Capto刀柄', '1', '', '个', 'Φ106 粗镗(T107)', '');
INSERT INTO `zuchengmingxi` VALUES ('611', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ106 粗镗(T107)', '');
INSERT INTO `zuchengmingxi` VALUES ('612', '5692022-06', '冷却液套管', '1', '', '个', 'Φ106 粗镗(T107)', '');
INSERT INTO `zuchengmingxi` VALUES ('613', '391.68A-7-125 40T16B', '滑块', '2', '', '个', 'Φ106 粗镗(T107)', '');
INSERT INTO `zuchengmingxi` VALUES ('614', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'Φ80 粗镗(T108)', '');
INSERT INTO `zuchengmingxi` VALUES ('615', 'C6-390.410-1001 10HD', 'HSK Capto刀柄', '1', '', '个', 'Φ80 粗镗(T108)', '');
INSERT INTO `zuchengmingxi` VALUES ('616', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ80 粗镗(T108)', '');
INSERT INTO `zuchengmingxi` VALUES ('617', '5692022-06', '冷却液套管', '1', '', '个', 'Φ80 粗镗(T108)', '');
INSERT INTO `zuchengmingxi` VALUES ('618', '391.68A-7-125 40T16B', '滑块', '2', '', '个', 'Φ80 粗镗(T108)', '');
INSERT INTO `zuchengmingxi` VALUES ('619', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'φ84.7半精镗(T109)', '');
INSERT INTO `zuchengmingxi` VALUES ('620', 'C6-390.410-1001 10A', 'HSK Capto刀柄', '1', '', '个', 'φ84.7半精镗(T109)', '');
INSERT INTO `zuchengmingxi` VALUES ('621', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'φ84.7半精镗(T109)', '');
INSERT INTO `zuchengmingxi` VALUES ('622', '5692022-06', '冷却液套管', '1', '', '个', 'φ84.7半精镗(T109)', '');
INSERT INTO `zuchengmingxi` VALUES ('623', '391.68A-7-125 40T16B', '滑块', '2', '', '个', 'φ84.7半精镗(T109)', '');
INSERT INTO `zuchengmingxi` VALUES ('624', 'C8-390.410-100 120A', 'HSK Capto刀柄', '1', '', '个', 'Φ42 倒角铣(T110)', '');
INSERT INTO `zuchengmingxi` VALUES ('625', 'RA215.64-36M32-6012', '英制倒角立铣刀', '1', '', '个', 'Φ42 倒角铣(T110)', '');
INSERT INTO `zuchengmingxi` VALUES ('626', 'C8-A391.23-31 080', 'Capto英制组合接柄', '1', '', '个', 'Φ42 倒角铣(T110)', '');
INSERT INTO `zuchengmingxi` VALUES ('627', 'SPMT120408-WH4030', 'Waveline铣刀片', '3', '', '个', 'Φ42 倒角铣(T110)', '');
INSERT INTO `zuchengmingxi` VALUES ('628', '5692022-06', '冷却液套管', '1', '', '个', 'Φ42 倒角铣(T110)', '');
INSERT INTO `zuchengmingxi` VALUES ('629', '4108 26.000(看不到）', '刀杆', '1', '', '个', 'Φ26 钻(T111)', '');
INSERT INTO `zuchengmingxi` VALUES ('630', '4113 26.0', '刀片', '1', '', '个', 'Φ26 钻(T111)', '');
INSERT INTO `zuchengmingxi` VALUES ('631', 'GM3004334 32.100', '侧固刀柄', '1', '', '个', 'Φ26 钻(T111)', '');
INSERT INTO `zuchengmingxi` VALUES ('632', '4949 24.100', '冷却管', '1', '', '个', 'Φ26 钻(T111)', '');
INSERT INTO `zuchengmingxi` VALUES ('633', '4H0987239', '刀体', '1', '', '个', 'Φ29.7 粗镗(T112)', '');
INSERT INTO `zuchengmingxi` VALUES ('634', '392.41027-100 32 100A', 'HSK钻头接柄', '1', '', '个', 'Φ29.7 粗镗(T112)', '');
INSERT INTO `zuchengmingxi` VALUES ('635', 'CCMT09T308-KM3210', 'Tum107菱形80°', '2', '', '个', 'Φ29.7 粗镗(T112)', '');
INSERT INTO `zuchengmingxi` VALUES ('636', '56692022-06', '冷却液套管', '1', '', '个', 'Φ29.7 粗镗(T112)', '');
INSERT INTO `zuchengmingxi` VALUES ('637', 'S912-552083', 'Check Product Codel', '1', '', '个', 'Φ21-Φ35倒角(T113)', '');
INSERT INTO `zuchengmingxi` VALUES ('638', 'CCMT09T308-KM3210', 'Tum107菱形80°', '1', '', '个', 'Φ21-Φ35倒角(T113)', '');
INSERT INTO `zuchengmingxi` VALUES ('639', '392.41027-100 32 100A', ' HSK钻头接柄', '1', '', '个', 'Φ21-Φ35倒角(T113)', '');
INSERT INTO `zuchengmingxi` VALUES ('640', '5692022-06', '冷却液套管', '1', '', '个', 'Φ21-Φ35倒角(T113)', '');
INSERT INTO `zuchengmingxi` VALUES ('641', '5510 13.0(看不到）', '整体硬钻', '1', '', '个', 'φ13 硬钻(T131)', '');
INSERT INTO `zuchengmingxi` VALUES ('642', '4736 14.100', '热胀刀柄', '1', '', '个', 'φ13 硬钻(T131)', '');
INSERT INTO `zuchengmingxi` VALUES ('643', '4949 24.100', '冷却管', '1', '', '个', 'φ13 硬钻(T131)', '');
INSERT INTO `zuchengmingxi` VALUES ('644', 'D17.7*D22*D20*105(看不到）', '非标HM扩孔钻', '1', '', '个', 'Φ17.7锪孔钻(T115)', '');
INSERT INTO `zuchengmingxi` VALUES ('645', '4736 20.100', '热胀刀柄', '1', '', '个', 'Φ17.7锪孔钻(T115)', '');
INSERT INTO `zuchengmingxi` VALUES ('646', '4949 24.100', '冷却导管', '1', '', '个', 'Φ17.7锪孔钻(T115)', '');
INSERT INTO `zuchengmingxi` VALUES ('647', '5510 6.800(看不到）', '整体硬钻', '1', '', '个', 'φ6.8 硬钻(T116)', '');
INSERT INTO `zuchengmingxi` VALUES ('648', 'GM3004736 108.100', '热胀刀柄', '1', '', '个', 'φ6.8 硬钻(T116)', '');
INSERT INTO `zuchengmingxi` VALUES ('649', '4949 24.100', '冷却管', '1', '', '个', 'φ6.8 硬钻(T116)', '');
INSERT INTO `zuchengmingxi` VALUES ('650', '723 16.0(看不到）', '中心钻', '1', '', '个', 'φ16 中心钻(T117)', '');
INSERT INTO `zuchengmingxi` VALUES ('651', 'GM3004736 116.100', '热胀刀柄', '1', '', '个', 'φ16 中心钻(T117)', '');
INSERT INTO `zuchengmingxi` VALUES ('652', '4949 24.100', '冷却管', '1', '', '个', 'φ16 中心钻(T117)', '');
INSERT INTO `zuchengmingxi` VALUES ('653', ' 931 8.000(看不到）', '丝锥', '1', '', '个', 'M8*1.25丝锥(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('654', 'FA:14103955', '弹簧夹头刀柄', '1', '', '个', 'M8*1.25丝锥(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('655', '4306 IC16，100', '螺母', '1', '', '个', 'M8*1.25丝锥(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('656', '4308 16.016(看不到）', '弹簧夹套', '1', '', '个', 'M8*1.25丝锥(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('657', '4335 6.016(看不到）', '密封环', '1', '', '个', 'M8*1.25丝锥(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('658', '4949 24.100', '冷却管', '1', '', '个', 'M8*1.25丝锥(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('659', '2477 19.7(看不到）', '整体合金钻', '1', '', '个', 'φ19.7硬钻(T119)', '');
INSERT INTO `zuchengmingxi` VALUES ('660', '4736 120.100', '热胀刀柄', '1', '', '个', 'φ19.7硬钻(T119)', '');
INSERT INTO `zuchengmingxi` VALUES ('661', '4949 24.100', '冷却管', '1', '', '个', 'φ19.7硬钻(T119)', '');
INSERT INTO `zuchengmingxi` VALUES ('662', '6711 12.000(看不到）', '合金倒角钻', '1', '', '个', 'φ12 倒角钻(T71)', '');
INSERT INTO `zuchengmingxi` VALUES ('663', '4719 12.125', '延长杆', '1', '', '个', 'φ12 倒角钻(T71)', '');
INSERT INTO `zuchengmingxi` VALUES ('664', 'GM3004736 25.100', '热胀刀柄', '1', '', '个', 'φ12 倒角钻(T71)', '');
INSERT INTO `zuchengmingxi` VALUES ('665', '4949 24.100', '冷却导管', '1', '', '个', 'φ12 倒角钻(T71)', '');
INSERT INTO `zuchengmingxi` VALUES ('666', 'R335.15-063-03.22-5', '槽铣刀（5齿）', '1', '', '个', 'Φ63 铣槽刀(T78)', '');
INSERT INTO `zuchengmingxi` VALUES ('667', 'R335.15-13265FG-M10,F40M', '刀片', '5', '', '个', 'Φ63 铣槽刀(T78)', '');
INSERT INTO `zuchengmingxi` VALUES ('668', 'E9306Y552522160', 'HSKA100铣刀刀柄', '1', '', '个', 'Φ63 铣槽刀(T78)', '');
INSERT INTO `zuchengmingxi` VALUES ('669', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'Φ63 铣槽刀(T78)', '');
INSERT INTO `zuchengmingxi` VALUES ('670', 'C8-391.68A-7-080 060D', '接柄', '1', '', '个', 'Φ115 粗镗(T22)', '');
INSERT INTO `zuchengmingxi` VALUES ('671', 'C8-390.410-100 120A', 'HSK Capto刀柄', '1', '', '个', 'Φ115 粗镗(T22)', '');
INSERT INTO `zuchengmingxi` VALUES ('672', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ115 粗镗(T22)', '');
INSERT INTO `zuchengmingxi` VALUES ('673', '5692022-06', '冷却液套管', '1', '', '个', 'Φ115 粗镗(T22)', '');
INSERT INTO `zuchengmingxi` VALUES ('674', '391.68A-7-125 40T16B', '滑块', '2', '', '个', 'Φ115 粗镗(T22)', '');
INSERT INTO `zuchengmingxi` VALUES ('675', 'C8-391.68A-7-080 060D', '接柄', '1', '', '个', 'Φ119.7半精镗(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('676', 'C8-390.410-100 120A', 'HSK Capto刀柄', '1', '', '个', 'Φ119.7半精镗(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('677', 'TCMT16T308-KM3215', '车刀片', '1', '', '个', 'Φ119.7半精镗(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('678', '5692022-06', '冷却液套管', '1', '', '个', 'Φ119.7半精镗(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('679', '391.68A-7-125 40T16B', '滑块', '2', '', '个', 'Φ119.7半精镗(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('680', 'R220.53-0080-12-6A', '面铣刀6齿，45°', '1', '', '个', 'Φ80 铣刀(T72)', '');
INSERT INTO `zuchengmingxi` VALUES ('681', 'SEMX1204AFTN-M15,MK2050', '刀片', '6', '', '个', 'Φ80 铣刀(T72)', '');
INSERT INTO `zuchengmingxi` VALUES ('682', 'E9306Y552527160', 'HSKA100铣刀刀柄', '1', '', '个', 'Φ80 铣刀(T72)', '');
INSERT INTO `zuchengmingxi` VALUES ('683', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'Φ80 铣刀(T72)', '');
INSERT INTO `zuchengmingxi` VALUES ('684', 'D18/100(看不到）', '非标硬质合金铰刀', '1', '', '个', 'Φ18R8铰刀(T79)', '');
INSERT INTO `zuchengmingxi` VALUES ('685', '4299 18，100', '液压刀柄', '1', '', '个', 'Φ18R8铰刀(T79)', '');
INSERT INTO `zuchengmingxi` VALUES ('686', '4949 24.100', '冷却导管', '1', '', '个', 'Φ18R8铰刀(T79)', '');
INSERT INTO `zuchengmingxi` VALUES ('687', 'D20*105(看不到）', '非标硬质合金铰刀', '1', '', '个', 'Φ20H9铰刀(T80)', '');
INSERT INTO `zuchengmingxi` VALUES ('688', '4299 20.100', '液压刀柄', '1', '', '个', 'Φ20H9铰刀(T80)', '');
INSERT INTO `zuchengmingxi` VALUES ('689', '4949 24.100', '冷却管', '1', '', '个', 'Φ20H9铰刀(T80)', '');
INSERT INTO `zuchengmingxi` VALUES ('690', 'C6-390.410-1001 10A', 'HSK Capto刀柄', '1', '', '个', 'Φ68精镗(T73)', '');
INSERT INTO `zuchengmingxi` VALUES ('691', 'C6-R825C-AAE 097A', '整体式精镗刀', '1', '', '个', 'Φ68精镗(T73)', '');
INSERT INTO `zuchengmingxi` VALUES ('692', 'TCMT110304-KF3005', '107车刀片', '1', '', '个', 'Φ68精镗(T73)', '');
INSERT INTO `zuchengmingxi` VALUES ('693', '5692022-06', '冷却液套管', '1', '', '个', 'Φ68精镗(T73)', '');
INSERT INTO `zuchengmingxi` VALUES ('694', 'C-AF23STVC 1103', '鹰嘴', '1', '', '个', 'Φ68精镗(T73)', '');
INSERT INTO `zuchengmingxi` VALUES ('695', 'C6-390.410-1001 10A', 'HSK Capto刀柄', '1', '', '个', 'Φ85精镗(T74)', '');
INSERT INTO `zuchengmingxi` VALUES ('696', 'C6-R825C-AAE 055A', '整体式精镗刀', '1', '', '个', 'Φ85精镗(T74)', '');
INSERT INTO `zuchengmingxi` VALUES ('697', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ85精镗(T74)', '');
INSERT INTO `zuchengmingxi` VALUES ('698', '5692022-06', '冷却液套管', '1', '', '个', 'Φ85精镗(T74)', '');
INSERT INTO `zuchengmingxi` VALUES ('699', 'C-AF23STVC 1103', '鹰嘴', '1', '', '个', 'Φ85精镗(T74)', '');
INSERT INTO `zuchengmingxi` VALUES ('700', '930-HA10-HD-25-106', '高精度液压夹头', '1', '', '个', 'Φ30精镗(T75)', '');
INSERT INTO `zuchengmingxi` VALUES ('701', 'TCMT06T104-KF3005', '车刀片', '1', '', '个', 'Φ30精镗(T75)', '');
INSERT INTO `zuchengmingxi` VALUES ('702', '5692022-06', '冷却液套管', '1', '', '个', 'Φ30精镗(T75)', '');
INSERT INTO `zuchengmingxi` VALUES ('703', 'A-AF11STVC 0671', '鹰嘴', '1', '', '个', 'Φ30精镗(T75)', '');
INSERT INTO `zuchengmingxi` VALUES ('704', 'A25-R825A-AB146-RA', '精镗杆', '1', '', '个', 'Φ30精镗(T75)', '');
INSERT INTO `zuchengmingxi` VALUES ('705', 'R331103', '精镗头', '1', '', '个', 'Φ120反精镗刀(T30)', '');
INSERT INTO `zuchengmingxi` VALUES ('706', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ120反精镗刀(T30)', '');
INSERT INTO `zuchengmingxi` VALUES ('707', 'C8-390.410-100 120A', 'HSK Capto刀柄', '1', '', '个', 'Φ120反精镗刀(T30)', '');
INSERT INTO `zuchengmingxi` VALUES ('708', '5692022-06', '冷却液套管', '1', '', '个', 'Φ120反精镗刀(T30)', '');
INSERT INTO `zuchengmingxi` VALUES ('709', '890 450232R57661', '接柄', '1', '', '个', 'Φ120反精镗刀(T30)', '');
INSERT INTO `zuchengmingxi` VALUES ('710', '4736.120.100(看不到）', '立铣刀', '1', '', '个', 'Φ20铣刀（立）(T53)', '');
INSERT INTO `zuchengmingxi` VALUES ('711', 'HSK100A 20.00', '热胀刀柄', '1', '', '个', 'Φ20铣刀（立）(T53)', '');
INSERT INTO `zuchengmingxi` VALUES ('712', '4949 24.100', '冷却管', '1', '', '个', 'Φ20铣刀（立）(T53)', '');
INSERT INTO `zuchengmingxi` VALUES ('713', 'R220.96-0063-08-7A-27', '方肩铣刀（7刃）', '1', '', '个', 'D63 精铣(T76)', '');
INSERT INTO `zuchengmingxi` VALUES ('714', 'XNEX080608TR-M13.MK1500', '刀片', '7', '', '个', 'D63 精铣(T76)', '');
INSERT INTO `zuchengmingxi` VALUES ('715', 'E9306Y552527160', 'HSKA100铣刀刀柄', '1', '', '个', 'D63 精铣(T76)', '');
INSERT INTO `zuchengmingxi` VALUES ('716', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'D63 精铣(T76)', '');
INSERT INTO `zuchengmingxi` VALUES ('717', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'φ75粗镗刀(T136)', '');
INSERT INTO `zuchengmingxi` VALUES ('718', 'C6-390.410-1001 10HD', 'HSK Capto刀柄', '1', '', '个', 'φ75粗镗刀(T136)', '');
INSERT INTO `zuchengmingxi` VALUES ('719', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'φ75粗镗刀(T136)', '');
INSERT INTO `zuchengmingxi` VALUES ('720', '5692022-06', '冷却液套管', '1', '', '个', 'φ75粗镗刀(T136)', '');
INSERT INTO `zuchengmingxi` VALUES ('721', '391.68A-6-084 30T16B', '滑块', '2', '', '个', 'φ75粗镗刀(T136)', '');
INSERT INTO `zuchengmingxi` VALUES ('722', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'Φ79.7半精镗(T34)', '');
INSERT INTO `zuchengmingxi` VALUES ('723', 'C6-390.410-1001 10A', 'HSK Capto刀柄', '1', '', '个', 'Φ79.7半精镗(T34)', '');
INSERT INTO `zuchengmingxi` VALUES ('724', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ79.7半精镗(T34)', '');
INSERT INTO `zuchengmingxi` VALUES ('725', '5692022-06', '冷却液套管', '1', '', '个', 'Φ79.7半精镗(T34)', '');
INSERT INTO `zuchengmingxi` VALUES ('726', '391.68A-6-084 30T16B', '滑块', '2', '', '个', 'Φ79.7半精镗(T34)', '');
INSERT INTO `zuchengmingxi` VALUES ('727', '5510 8.700(看不到）', '整体硬钻', '1', '', '个', 'φ8.7硬钻(T35)', '');
INSERT INTO `zuchengmingxi` VALUES ('728', '4736 110.100', '热胀刀柄', '1', '', '个', 'φ8.7硬钻(T35)', '');
INSERT INTO `zuchengmingxi` VALUES ('729', '4949 24.100', '冷却管', '1', '', '个', 'φ8.7硬钻(T35)', '');
INSERT INTO `zuchengmingxi` VALUES ('730', '1090 10.006(看不到）', '丝锥', '1', '', '个', 'M10*1.25丝锥(T36)', '');
INSERT INTO `zuchengmingxi` VALUES ('731', 'FA:14103955', '弹簧夹头刀柄', '1', '', '个', 'M10*1.25丝锥(T36)', '');
INSERT INTO `zuchengmingxi` VALUES ('732', '4306 IC16，100', '螺母', '1', '', '个', 'M10*1.25丝锥(T36)', '');
INSERT INTO `zuchengmingxi` VALUES ('733', '4308 7.016(看不到）', '弹簧夹套', '1', '', '个', 'M10*1.25丝锥(T36)', '');
INSERT INTO `zuchengmingxi` VALUES ('734', '4335 7.016(看不到）', '密封环', '1', '', '个', 'M10*1.25丝锥(T36)', '');
INSERT INTO `zuchengmingxi` VALUES ('735', '4949 24.100', '冷却管', '1', '', '个', 'M10*1.25丝锥(T36)', '');
INSERT INTO `zuchengmingxi` VALUES ('736', 'C6-390.410-1001 10A', 'HSKCapto刀柄', '1', '', '个', 'Φ80精镗 (T37)', '');
INSERT INTO `zuchengmingxi` VALUES ('737', 'C6-R825C-AAF 055A', '接柄', '1', '', '个', 'Φ80精镗 (T37)', '');
INSERT INTO `zuchengmingxi` VALUES ('738', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ80精镗 (T37)', '');
INSERT INTO `zuchengmingxi` VALUES ('739', '5692022-06', '冷却液套管', '1', '', '个', 'Φ80精镗 (T37)', '');
INSERT INTO `zuchengmingxi` VALUES ('740', 'C-AF23 STUC 1103', '鹰嘴', '1', '', '个', 'Φ80精镗 (T37)', '');
INSERT INTO `zuchengmingxi` VALUES ('741', '5510 10.4(看不到）', '引导钻', '1', '', '个', 'Φ10.4 钻头(T38)', '');
INSERT INTO `zuchengmingxi` VALUES ('742', '4736 112.100', '热胀刀柄', '1', '', '个', 'Φ10.4 钻头(T38)', '');
INSERT INTO `zuchengmingxi` VALUES ('743', '4949 24.100', '冷却管', '1', '', '个', 'Φ10.4 钻头(T38)', '');
INSERT INTO `zuchengmingxi` VALUES ('744', 'D10*106*D12*155(看不到）', '非标HM直槽钻', '1', '', '个', 'Φ10.4直槽钻(T39)', '');
INSERT INTO `zuchengmingxi` VALUES ('745', '4736 112.100', '热胀刀柄', '1', '', '个', 'Φ10.4直槽钻(T39)', '');
INSERT INTO `zuchengmingxi` VALUES ('746', '4949 24.100', '冷却管', '1', '', '个', 'Φ10.4直槽钻(T39)', '');
INSERT INTO `zuchengmingxi` VALUES ('747', 'D13*D14*168', '整体硬钻', '1', '', '个', 'φ13 硬钻(T77)', '');
INSERT INTO `zuchengmingxi` VALUES ('748', 'GM3004736 14.100', '热胀刀柄', '1', '', '个', 'φ13 硬钻(T77)', '');
INSERT INTO `zuchengmingxi` VALUES ('749', '4949 24.100', '冷却管', '1', '', '个', 'φ13 硬钻(T77)', '');
INSERT INTO `zuchengmingxi` VALUES ('750', '5510 11.0', '整体硬钻', '1', '', '个', 'φ11硬钻(T40)', '');
INSERT INTO `zuchengmingxi` VALUES ('751', 'GM3004736 12.100', '热胀刀柄', '1', '', '个', 'φ11硬钻(T40)', '');
INSERT INTO `zuchengmingxi` VALUES ('752', '4949 24.100', '冷却管', '1', '', '个', 'φ11硬钻(T40)', '');
INSERT INTO `zuchengmingxi` VALUES ('753', '5510-11.7', '标准合金扩孔钻', '1', '', '个', 'φ11.7 扩孔钻(T41)', '');
INSERT INTO `zuchengmingxi` VALUES ('754', 'GM3004736 12.100', '热胀刀柄', '1', '', '个', 'φ11.7 扩孔钻(T41)', '');
INSERT INTO `zuchengmingxi` VALUES ('755', '4949 24.100', '冷却管', '1', '', '个', 'φ11.7 扩孔钻(T41)', '');
INSERT INTO `zuchengmingxi` VALUES ('756', 'D12*90(看不到）', '非标铰刀', '1', '', '个', 'Φ12R8铰刀(T42)', '');
INSERT INTO `zuchengmingxi` VALUES ('757', 'GM3004736 12.100', '热胀刀柄', '1', '', '个', 'Φ12R8铰刀(T42)', '');
INSERT INTO `zuchengmingxi` VALUES ('758', '4949 24.100', '冷却管', '1', '', '个', 'Φ12R8铰刀(T42)', '');
INSERT INTO `zuchengmingxi` VALUES ('759', '2P340-2500-PB1630(看不到）', '粗铣刀', '1', '', '个', 'D25 铣刀(T132)', '');
INSERT INTO `zuchengmingxi` VALUES ('760', '391.41020-100 25 100A', '测固刀柄', '1', '', '个', 'D25 铣刀(T132)', '');
INSERT INTO `zuchengmingxi` VALUES ('761', '5692022-06', '冷却导管', '1', '', '个', 'D25 铣刀(T132)', '');
INSERT INTO `zuchengmingxi` VALUES ('762', '345-C8-390S/410-100 200', 'HSK Capto刀柄', '1', '', '个', 'Φ250*15宽精铣刀（T225）', '');
INSERT INTO `zuchengmingxi` VALUES ('763', 'C8-391.01-50 030', 'CAPto加长接杆', '1', '', '个', 'Φ250*15宽精铣刀（T225）', '');
INSERT INTO `zuchengmingxi` VALUES ('764', 'L331.52-250S50MM', '铣刀盘', '1', '', '个', 'Φ250*15宽精铣刀（T225）', '');
INSERT INTO `zuchengmingxi` VALUES ('765', 'N331.1A-115008E-KL1020', '铣刀片', '16', '', '个', 'Φ250*15宽精铣刀（T225）', '');
INSERT INTO `zuchengmingxi` VALUES ('766', '5692022-06', '冷却液套管', '1', '', '个', 'Φ250*15宽精铣刀（T225）', '');
INSERT INTO `zuchengmingxi` VALUES ('767', '5510 15.700(看不到)', '整体硬钻', '1', '', '个', 'φ15.7硬钻(T45)', '');
INSERT INTO `zuchengmingxi` VALUES ('768', 'GM3004736 16.100', '热胀刀柄', '1', '', '个', 'φ15.7硬钻(T45)', '');
INSERT INTO `zuchengmingxi` VALUES ('769', '4949 24.100', '冷却管', '1', '', '个', 'φ15.7硬钻(T45)', '');
INSERT INTO `zuchengmingxi` VALUES ('770', '5510 12.500(看不到)', '整体硬钻', '1', '', '个', 'φ12.5硬钻(T46)', '');
INSERT INTO `zuchengmingxi` VALUES ('771', 'GM3004736 114.100', '热胀刀柄', '1', '', '个', 'φ12.5硬钻(T46)', '');
INSERT INTO `zuchengmingxi` VALUES ('772', '4949 24.100', '冷却管', '1', '', '个', 'φ12.5硬钻(T46)', '');
INSERT INTO `zuchengmingxi` VALUES ('773', '5511 10.7(看不到)', '整体硬钻', '1', '', '个', 'φ10.7硬钻(T47)', '');
INSERT INTO `zuchengmingxi` VALUES ('774', 'GM3004736 12.100', '热胀刀柄', '1', '', '个', 'φ10.7硬钻(T47)', '');
INSERT INTO `zuchengmingxi` VALUES ('775', '4949 24.100', '冷却管', '1', '', '个', 'φ10.7硬钻(T47)', '');
INSERT INTO `zuchengmingxi` VALUES ('776', 'D10.7*D12*184', '非标整体硬花钻', '1', '', '个', 'Φ10.7硬钻(T49)', '');
INSERT INTO `zuchengmingxi` VALUES ('777', 'GM3004736 12.100', '热胀刀柄', '1', '', '个', 'Φ10.7硬钻(T49)', '');
INSERT INTO `zuchengmingxi` VALUES ('778', '4949 24.100', '冷却管', '1', '', '个', 'Φ10.7硬钻(T49)', '');
INSERT INTO `zuchengmingxi` VALUES ('779', '347 14.007(看不到)', '丝锥', '1', '', '个', 'M14*1.5丝锥(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('780', 'GM3004324 32.101', '弹簧夹头刀柄', '1', '', '个', 'M14*1.5丝锥(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('781', '4308 11.032(看不到)', '弹簧夹套', '1', '', '个', 'M14*1.5丝锥(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('782', '4335 11.032(看不到)', '密封环', '1', '', '个', 'M14*1.5丝锥(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('783', '4949 24.100', '冷却管', '1', '', '个', 'M14*1.5丝锥(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('784', '4306-32.600', '螺母', '1', '', '个', 'M14*1.5丝锥(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('785', '932 12.006(看不到)', '丝锥', '1', '', '个', 'M12*1.25丝锥(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('786', 'GM3004324 32.100', '弹簧夹头刀柄', '1', '', '个', 'M12*1.25丝锥(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('787', '4308 9.032(看不到)', '弹簧夹头', '1', '', '个', 'M12*1.25丝锥(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('788', '4335 9.032(看不到)', '密封环', '1', '', '个', 'M12*1.25丝锥(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('789', '4949 24.100', '冷却管', '1', '', '个', 'M12*1.25丝锥(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('790', '4306-32.600', '螺母', '1', '', '个', 'M12*1.25丝锥(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('791', '4107 20，500(看不到)', 'HT800刀体', '1', '', '个', 'φ20.5钻头(T52)', '');
INSERT INTO `zuchengmingxi` VALUES ('792', '4113 20.500(看不到)', '刀片', '1', '', '个', 'φ20.5钻头(T52)', '');
INSERT INTO `zuchengmingxi` VALUES ('793', 'GM3004334 25.100', '侧固刀柄', '1', '', '个', 'φ20.5钻头(T52)', '');
INSERT INTO `zuchengmingxi` VALUES ('794', '4949 24.100', '冷却管', '1', '', '个', 'φ20.5钻头(T52)', '');
INSERT INTO `zuchengmingxi` VALUES ('795', '3736 20.000(看不到)', '立铣刀', '1', '', '个', 'φ20铣刀(T137)', '');
INSERT INTO `zuchengmingxi` VALUES ('796', 'GM3004736 120.100', '热胀刀柄', '1', '', '个', 'φ20铣刀(T137)', '');
INSERT INTO `zuchengmingxi` VALUES ('797', '4949 24.100', '冷却管', '1', '', '个', 'φ20铣刀(T137)', '');
INSERT INTO `zuchengmingxi` VALUES ('798', '347 22.007(看不到)', '丝锥', '1', '', '个', 'M22*1.5丝锥(T134)', '');
INSERT INTO `zuchengmingxi` VALUES ('799', 'GM3004324 32.100', '弹簧夹头刀柄', '1', '', '个', 'M22*1.5丝锥(T134)', '');
INSERT INTO `zuchengmingxi` VALUES ('800', '4308 18.032(看不到)', '弹簧夹套', '1', '', '个', 'M22*1.5丝锥(T134)', '');
INSERT INTO `zuchengmingxi` VALUES ('801', '4335 18.032(看不到)', '密封环', '1', '', '个', 'M22*1.5丝锥(T134)', '');
INSERT INTO `zuchengmingxi` VALUES ('802', '4949 24.100', '冷却管', '1', '', '个', 'M22*1.5丝锥(T134)', '');
INSERT INTO `zuchengmingxi` VALUES ('803', '4306-32.600', '螺母', '1', '', '个', 'M22*1.5丝锥(T134)', '');
INSERT INTO `zuchengmingxi` VALUES ('804', '930-HA10-S-20-100', '高精度液压夹头', '1', '', '个', 'Φ15*3.5±0.1宽铣槽刀(T135)', '');
INSERT INTO `zuchengmingxi` VALUES ('805', '393.CG-20 16 52', '高精度夹心', '1', '', '个', 'Φ15*3.5±0.1宽铣槽刀(T135)', '');
INSERT INTO `zuchengmingxi` VALUES ('806', 'BU1310036(看不到)', '非标槽铣刀', '1', '', '个', 'Φ15*3.5±0.1宽铣槽刀(T135)', '');
INSERT INTO `zuchengmingxi` VALUES ('807', '5692022-06', '冷却液套管', '1', '', '个', 'Φ15*3.5±0.1宽铣槽刀(T135)', '');
INSERT INTO `zuchengmingxi` VALUES ('808', 'D16*100', '非标铰刀', '1', '', '个', 'Φ16F9铰刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('809', 'GM3004736 16.100', '热胀刀柄', '1', '', '个', 'Φ16F9铰刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('810', '4949 24.100', '冷却管', '1', '', '个', 'Φ16F9铰刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('811', 'S912-552076(看不到)', '镗刀杆', '1', '', '个', 'Φ27.7半精镗(T57)', '');
INSERT INTO `zuchengmingxi` VALUES ('812', 'CCMT09T308-KM3210', 'Tum107菱形80°', '2', '', '个', 'Φ27.7半精镗(T57)', '');
INSERT INTO `zuchengmingxi` VALUES ('813', '392.41027-100 32 100A', 'HSK钻头接柄', '1', '', '个', 'Φ27.7半精镗(T57)', '');
INSERT INTO `zuchengmingxi` VALUES ('814', '5692022-06', '冷却液套管', '1', '', '个', 'Φ27.7半精镗(T57)', '');
INSERT INTO `zuchengmingxi` VALUES ('815', 'D28*D25*130', '非标焊硬质合金铰', '1', '', '个', 'Φ28 铰刀(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('816', 'GM3004736 25.100', '热胀刀柄', '1', '', '个', 'Φ28 铰刀(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('817', '4949 24.100', '冷却管', '1', '', '个', 'Φ28 铰刀(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('818', 'D6.05*D8*65', '非标整体硬钻', '1', '', '个', 'Φ6.05 硬钻(T59)', '');
INSERT INTO `zuchengmingxi` VALUES ('819', 'GM3004736 308.100', '热胀刀柄', '1', '', '个', 'Φ6.05 硬钻(T59)', '');
INSERT INTO `zuchengmingxi` VALUES ('820', '4949 24.100', '冷却管', '1', '', '个', 'Φ6.05 硬钻(T59)', '');
INSERT INTO `zuchengmingxi` VALUES ('821', 'D6.05*D8*108', '非标整体硬钻', '1', '', '个', 'Φ6.05 硬钻(T60)', '');
INSERT INTO `zuchengmingxi` VALUES ('822', 'GM3004736 308.100', '热胀刀柄', '1', '', '个', 'Φ6.05 硬钻(T60)', '');
INSERT INTO `zuchengmingxi` VALUES ('823', '4949 24.100', '冷却管', '1', '', '个', 'Φ6.05 硬钻(T60)', '');
INSERT INTO `zuchengmingxi` VALUES ('824', 'C6-390.410-1001 10HD', 'HSK Capto刀柄', '1', '', '个', 'Φ67 粗镗 (T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('825', 'C6-391.02-50 080A', 'Captp缩径接杆', '1', '', '个', 'Φ67 粗镗 (T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('826', 'C5-391.68A-5-050 044B', '接柄', '1', '', '个', 'Φ67 粗镗 (T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('827', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ67 粗镗 (T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('828', '5692022-06', '冷却液套管', '1', '', '个', 'Φ67 粗镗 (T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('829', '391.68A-5-070 26T16B', '滑块', '2', '', '个', 'Φ67 粗镗 (T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('830', 'C6-390.410-100 110HD', '刀柄', '1', '', '个', 'Φ71.7半精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('831', 'C6-391.01-63 100A', 'Captp加长接杆', '1', '', '个', 'Φ71.7半精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('832', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'Φ71.7半精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('833', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'Φ71.7半精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('834', '5692022-06', '冷却液套管', '1', '', '个', 'Φ71.7半精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('835', '391.68A-6-084 30T16B', '滑块', '2', '', '个', 'Φ71.7半精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('836', 'R220.66-0063-12-4', '面铣刀(4齿，60°﹚', '1', '', '个', 'D63/C30倒角刀(T81)', '');
INSERT INTO `zuchengmingxi` VALUES ('837', 'HPMN1206ZETR-MD20,MK2050', '刀片', '4', '', '个', 'D63/C30倒角刀(T81)', '');
INSERT INTO `zuchengmingxi` VALUES ('838', 'E9306Y552522100', 'HSKA100铣刀刀柄', '1', '', '个', 'D63/C30倒角刀(T81)', '');
INSERT INTO `zuchengmingxi` VALUES ('839', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'D63/C30倒角刀(T81)', '');
INSERT INTO `zuchengmingxi` VALUES ('840', '930-HA10-HD-32-110', '高精度液压夹头', '1', '', '个', 'Φ32 铣刀(T64)', '');
INSERT INTO `zuchengmingxi` VALUES ('841', 'R390D-032A32-11M(看不到）', '防震铣刀（4齿）', '1', '', '个', 'Φ32 铣刀(T64)', '');
INSERT INTO `zuchengmingxi` VALUES ('842', 'R390-11T308M-KL1020', '铣刀片', '3', '', '个', 'Φ32 铣刀(T64)', '');
INSERT INTO `zuchengmingxi` VALUES ('843', '5692022-06', '冷却液套管', '1', '', '个', 'Φ32 铣刀(T64)', '');
INSERT INTO `zuchengmingxi` VALUES ('844', '890 200232R56020', '铣刀', '1', 'R58特殊刀', '个', '扇面铣刀（T65）', '');
INSERT INTO `zuchengmingxi` VALUES ('845', '490R-140408M-PL 1030', '铣刀片', '3', '', '个', '扇面铣刀（T65）', '');
INSERT INTO `zuchengmingxi` VALUES ('846', '5692022-06', '冷却液套管', '1', '', '个', '扇面铣刀（T65）', '');
INSERT INTO `zuchengmingxi` VALUES ('847', 'C6-R825C-AAF 055A', '接柄', '1', '', '个', 'Φ72 精镗 (T66)', '');
INSERT INTO `zuchengmingxi` VALUES ('848', 'C6-391.01-63 100A', 'CAPto加长接杆', '1', '', '个', 'Φ72 精镗 (T66)', '');
INSERT INTO `zuchengmingxi` VALUES ('849', 'C6-390.410-100110HD', 'HSK Capto刀柄', '1', '', '个', 'Φ72 精镗 (T66)', '');
INSERT INTO `zuchengmingxi` VALUES ('850', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ72 精镗 (T66)', '');
INSERT INTO `zuchengmingxi` VALUES ('851', '5692022-06', '冷却液套管', '1', '', '个', 'Φ72 精镗 (T66)', '');
INSERT INTO `zuchengmingxi` VALUES ('852', 'C-AF23 STUC 1103', '鹰嘴', '1', '', '个', 'Φ72 精镗 (T66)', '');
INSERT INTO `zuchengmingxi` VALUES ('853', 'D26.5/D25/275', '非标焊合金扩孔钻', '1', '', '个', 'Φ26.5扩孔钻(T67)', '');
INSERT INTO `zuchengmingxi` VALUES ('854', 'GM3004736 25.100', '侧固刀柄', '1', '', '个', 'Φ26.5扩孔钻(T67)', '');
INSERT INTO `zuchengmingxi` VALUES ('855', '4949 24.100', '冷却管', '1', '', '个', 'Φ26.5扩孔钻(T67)', '');
INSERT INTO `zuchengmingxi` VALUES ('856', 'D26.82*D25*220', '非标硬质合金铰刀', '1', '', '个', 'Φ26.82铰刀(T68)', '');
INSERT INTO `zuchengmingxi` VALUES ('857', 'FA:14701197', '延长杆', '1', '', '个', 'Φ26.82铰刀(T68)', '');
INSERT INTO `zuchengmingxi` VALUES ('858', 'GM3004299 25.100', '液压刀柄', '1', '', '个', 'Φ26.82铰刀(T68)', '');
INSERT INTO `zuchengmingxi` VALUES ('859', '4949 24.100', '冷却管', '1', '', '个', 'Φ26.82铰刀(T68)', '');
INSERT INTO `zuchengmingxi` VALUES ('860', '3627-25.0（看不到）', '立铣刀', '1', '', '个', 'Φ25立铣刀(T86)', '');
INSERT INTO `zuchengmingxi` VALUES ('861', 'GM3004736-25.100', '热涨刀柄', '1', '', '个', 'Φ25立铣刀(T86)', '');
INSERT INTO `zuchengmingxi` VALUES ('862', '4949 24.100', '冷却管', '1', '', '个', 'Φ25立铣刀(T86)', '');
INSERT INTO `zuchengmingxi` VALUES ('863', 'D8×D11×D12×90（看不到）', '非标立铣刀', '1', '', '个', 'Φ11立铣刀(T87)', '');
INSERT INTO `zuchengmingxi` VALUES ('864', '4736-12.100', '热涨刀柄', '1', '', '个', 'Φ11立铣刀(T87)', '');
INSERT INTO `zuchengmingxi` VALUES ('865', '4949-24.100', '冷却管', '1', '', '个', 'Φ11立铣刀(T87)', '');
INSERT INTO `zuchengmingxi` VALUES ('866', 'C6-390.410-100 110HD', '主刀柄（变径）', '1', '', '个', 'Φ40铣刀(T130)', '');
INSERT INTO `zuchengmingxi` VALUES ('867', 'R390-040C6-11M080', '铣刀盘', '1', '', '个', 'Φ40铣刀(T130)', '');
INSERT INTO `zuchengmingxi` VALUES ('868', 'R390-11T308M-KL 1020', '铣刀片', '4', '', '个', 'Φ40铣刀(T130)', '');
INSERT INTO `zuchengmingxi` VALUES ('869', '20E9306', '冷却管', '1', '', '个', 'Φ40铣刀(T130)', '');
INSERT INTO `zuchengmingxi` VALUES ('870', '5510 13.0(看不到）', '整体硬质合金钻', '1', '', '个', 'Φ13硬钻(T114)', '');
INSERT INTO `zuchengmingxi` VALUES ('871', 'GM3004736 114.100', '热涨刀柄', '1', '', '个', 'Φ13硬钻(T114)', '');
INSERT INTO `zuchengmingxi` VALUES ('872', '4949 24.100', '冷却管', '1', '', '个', 'Φ13硬钻(T114)', '');
INSERT INTO `zuchengmingxi` VALUES ('873', 'R220.53-0125-12-8A', '快豹面铣刀(8齿）', '1', '', '个', 'D125铣刀(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('874', 'SEMX1204AFTN-M15,MK2050', '刀片', '8', '', '个', 'D125铣刀(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('875', 'E9306Y552540100', 'HSKA100铣刀刀柄', '1', '', '个', 'D125铣刀(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('876', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'D125铣刀(T20)', '');
INSERT INTO `zuchengmingxi` VALUES ('877', 'D22*90*D20155(看不到）', '立铣刀', '1', '', '个', 'Φ22钻头(T49)', '');
INSERT INTO `zuchengmingxi` VALUES ('878', '4736 20.100', '热胀刀柄', '1', '', '个', 'Φ22钻头(T49)', '');
INSERT INTO `zuchengmingxi` VALUES ('879', '4949 24.100', '冷却刀柄', '1', '', '个', 'Φ22钻头(T49)', '');
INSERT INTO `zuchengmingxi` VALUES ('880', '4107 28，0(看不到）', '扩孔钻', '1', '', '个', '扩孔钻(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('881', '4113 28，0', '刀片', '1', '', '个', '扩孔钻(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('882', '4334 32.100', '侧固刀柄', '1', '', '个', '扩孔钻(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('883', '4949 24.100', '冷却导管', '1', '', '个', '扩孔钻(T51)', '');
INSERT INTO `zuchengmingxi` VALUES ('884', 'S912-552083(看不到）', '倒角刀', '1', '', '个', 'Φ21-Φ35倒角钻(T52)', '');
INSERT INTO `zuchengmingxi` VALUES ('885', 'TCMT220408-PM235', '刀片', '2', '', '个', 'Φ21-Φ35倒角钻(T52)', '');
INSERT INTO `zuchengmingxi` VALUES ('886', '392.41027-100 32 100A', 'HSK 钻头接柄', '1', '', '个', 'Φ21-Φ35倒角钻(T52)', '');
INSERT INTO `zuchengmingxi` VALUES ('887', '5692022-06', '冷却液套管', '1', '', '个', 'Φ21-Φ35倒角钻(T52)', '');
INSERT INTO `zuchengmingxi` VALUES ('888', '3523 16，200(看不到）', 'HM螺纹铣刀', '1', '', '个', 'D16*2螺纹铣刀(T53)', '');
INSERT INTO `zuchengmingxi` VALUES ('889', '4736 16，100', '热胀刀柄', '1', '', '个', 'D16*2螺纹铣刀(T53)', '');
INSERT INTO `zuchengmingxi` VALUES ('890', '4949 24，100', '冷却导管', '1', '', '个', 'D16*2螺纹铣刀(T53)', '');
INSERT INTO `zuchengmingxi` VALUES ('891', '5510 14.5(看不到）', '整体硬钻', '1', '', '个', 'φ14.5钻头(T202)', '');
INSERT INTO `zuchengmingxi` VALUES ('892', '4736 16.100', '热胀刀柄', '1', '', '个', 'φ14.5钻头(T202)', '');
INSERT INTO `zuchengmingxi` VALUES ('893', '4949 24.100', '冷却管', '1', '', '个', 'φ14.5钻头(T202)', '');
INSERT INTO `zuchengmingxi` VALUES ('894', '723 20.100(看不到）', 'NC点钻', '1', '', '个', 'φ20倒角钻(T200)', '');
INSERT INTO `zuchengmingxi` VALUES ('895', '4736 20.100', '热胀刀柄', '1', '', '个', 'φ20倒角钻(T200)', '');
INSERT INTO `zuchengmingxi` VALUES ('896', '4949 24.100', '冷却管', '1', '', '个', 'φ20倒角钻(T200)', '');
INSERT INTO `zuchengmingxi` VALUES ('897', '3523 16,007(看不到）', 'HM螺纹铣刀', '1', '', '个', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('898', '4324 32.100', '弹簧夹头刀柄', '1', '', '个', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('899', '4308 12.032(看不到）', '弹簧夹套', '1', '', '个', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('900', '4325 12.032(看不到）', '密封环', '1', '', '个', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('901', '4949 24.100', '冷却管', '1', '', '个', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('902', '4306 32.600', '螺母', '1', '', '个', 'M16*1.5螺纹铣刀(T56)', '');
INSERT INTO `zuchengmingxi` VALUES ('903', '5510 10.500(看不到）', 'HM麻花钻', '1', '', '个', 'φ10.5钻头(T57)', '');
INSERT INTO `zuchengmingxi` VALUES ('904', '4736 12.100', '热胀刀柄', '1', '', '个', 'φ10.5钻头(T57)', '');
INSERT INTO `zuchengmingxi` VALUES ('905', '4949 24.100', '冷却导管', '1', '', '个', 'φ10.5钻头(T57)', '');
INSERT INTO `zuchengmingxi` VALUES ('906', '974 12，07(看不到）', 'HM丝锥', '1', '', '个', 'M12*1.5丝锥(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('907', '4324 32，100', 'ER刀柄', '1', '', '个', 'M12*1.5丝锥(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('908', '4308 9，032(看不到）', 'ER夹头', '1', '', '个', 'M12*1.5丝锥(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('909', '4949 24.100', '冷却导管', '1', '', '个', 'M12*1.5丝锥(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('910', '4335 9.032(看不到）', 'F封水环', '1', '', '个', 'M12*1.5丝锥(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('911', '4306 32.600', '螺母', '1', '', '个', 'M12*1.5丝锥(T58)', '');
INSERT INTO `zuchengmingxi` VALUES ('912', '6068 18,500(看不到）', 'HM直槽钻', '1', '', '个', 'Φ18.5直槽钻(T59)', '');
INSERT INTO `zuchengmingxi` VALUES ('913', '4736 20.100', '热胀刀柄', '1', '', '个', 'Φ18.5直槽钻(T59)', '');
INSERT INTO `zuchengmingxi` VALUES ('914', '4949 24.100', '冷却导管', '1', '', '个', 'Φ18.5直槽钻(T59)', '');
INSERT INTO `zuchengmingxi` VALUES ('915', 'D29.7*20*D32*120', '非标焊片扩孔刀', '1', '', '个', 'Φ29.5扩孔钻(T60)', '');
INSERT INTO `zuchengmingxi` VALUES ('916', '4299 32.100', '液压刀柄', '1', '', '个', 'Φ29.5扩孔钻(T60)', '');
INSERT INTO `zuchengmingxi` VALUES ('917', '4949 24.100', '冷却导管', '1', '', '个', 'Φ29.5扩孔钻(T60)', '');
INSERT INTO `zuchengmingxi` VALUES ('918', '974 20，007 (看不到）', 'HM丝锥', '1', '', '个', 'M20*1.5丝锥(T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('919', '4324 32，100', 'ER刀柄', '1', '', '个', 'M20*1.5丝锥(T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('920', '4308 20，032(看不到）', 'ER夹头', '1', '', '个', 'M20*1.5丝锥(T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('921', '4335 20.032(看不到）', 'F封水环', '1', '', '个', 'M20*1.5丝锥(T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('922', '4949 24.100', '冷却导管', '1', '', '个', 'M20*1.5丝锥(T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('923', '4306 32.600', '螺母', '1', '', '个', 'M20*1.5丝锥(T61)', '');
INSERT INTO `zuchengmingxi` VALUES ('924', 'R220.96-0080-08-7A', '快豹面铣刀(7齿）', '1', '', '个', 'D80粗铣(T63)', '');
INSERT INTO `zuchengmingxi` VALUES ('925', 'XNEX080608TR-MD15,MK2050', '刀片', '7', '', '个', 'D80粗铣(T63)', '');
INSERT INTO `zuchengmingxi` VALUES ('926', 'E9306552527100', 'HSKA100铣刀刀柄', '1', '', '个', 'D80粗铣(T63)', '');
INSERT INTO `zuchengmingxi` VALUES ('927', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'D80粗铣(T63)', '');
INSERT INTO `zuchengmingxi` VALUES ('928', 'C8-390.410-100 120A', 'HSK Capto刀柄', '1', '', '个', 'Φ189.5粗镗(T229)', '');
INSERT INTO `zuchengmingxi` VALUES ('929', 'C8-R822XLS17-AJ 070', '刀杆', '1', '', '个', 'Φ189.5粗镗(T229)', '');
INSERT INTO `zuchengmingxi` VALUES ('930', 'TCMT220408-KR3215', '车刀片', '2', '', '个', 'Φ189.5粗镗(T229)', '');
INSERT INTO `zuchengmingxi` VALUES ('931', '5692022-06', '冷却液套管', '1', '', '个', 'Φ189.5粗镗(T229)', '');
INSERT INTO `zuchengmingxi` VALUES ('932', 'S17-R820XLS12-012', '滑块', '2', '', '个', 'Φ189.5粗镗(T229)', '');
INSERT INTO `zuchengmingxi` VALUES ('933', 'S12-R820XLR40STFC22', '刀夹', '2', '', '个', 'Φ189.5粗镗(T229)', '');
INSERT INTO `zuchengmingxi` VALUES ('934', 'HSK Capto刀柄', 'HSK Capto刀柄', '1', '', '个', 'Φ199.5粗(T232)', '');
INSERT INTO `zuchengmingxi` VALUES ('935', 'C8-R822XLS17-AJ 070', '整体式粗镗刀', '1', '', '个', 'Φ199.5粗(T232)', '');
INSERT INTO `zuchengmingxi` VALUES ('936', 'TCMT220408-KR3215', '车刀片', '2', '', '个', 'Φ199.5粗(T232)', '');
INSERT INTO `zuchengmingxi` VALUES ('937', '5692022-06', '冷却液套管', '1', '', '个', 'Φ199.5粗(T232)', '');
INSERT INTO `zuchengmingxi` VALUES ('938', 'S17-R820XLS12-012', '滑块', '2', '', '个', 'Φ199.5粗(T232)', '');
INSERT INTO `zuchengmingxi` VALUES ('939', 'S12-R820XLR40STFC22', '刀夹', '2', '', '个', 'Φ199.5粗(T232)', '');
INSERT INTO `zuchengmingxi` VALUES ('940', '6068 6，800(看不到）', 'HM直槽钻', '1', '', '个', 'φ6.8直槽钻(T79)', '');
INSERT INTO `zuchengmingxi` VALUES ('941', '4736 108.100', '热胀刀柄', '1', '', '个', 'φ6.8直槽钻(T79)', '');
INSERT INTO `zuchengmingxi` VALUES ('942', '4949 24.100', '冷却导管', '1', '', '个', 'φ6.8直槽钻(T79)', '');
INSERT INTO `zuchengmingxi` VALUES ('943', '931 8.000（看不到）', '丝锥', '1', '', '个', 'M8*1.25丝锥(T80)', '');
INSERT INTO `zuchengmingxi` VALUES ('944', 'FA:14103955', 'ER刀柄', '1', '', '个', 'M8*1.25丝锥(T80)', '');
INSERT INTO `zuchengmingxi` VALUES ('945', '4306-16.600', '螺母', '1', '', '个', 'M8*1.25丝锥(T80)', '');
INSERT INTO `zuchengmingxi` VALUES ('946', '4335 6.016（看不到）', '夹芯', '1', '', '个', 'M8*1.25丝锥(T80)', '');
INSERT INTO `zuchengmingxi` VALUES ('947', '4949 24.100', '冷却导管', '1', '', '个', 'M8*1.25丝锥(T80)', '');
INSERT INTO `zuchengmingxi` VALUES ('948', 'R220.96-0080-08-9A', '方肩铣刀', '1', '', '个', 'D80精铣(T201)', '');
INSERT INTO `zuchengmingxi` VALUES ('949', 'XNEX080608TR-M13,MP1500', '刀片（9刃）', '9', '', '个', 'D80精铣(T201)', '');
INSERT INTO `zuchengmingxi` VALUES ('950', 'E9306552527160', 'HSKA100铣刀刀柄', '1', '', '个', 'D80精铣(T201)', '');
INSERT INTO `zuchengmingxi` VALUES ('951', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'D80精铣(T201)', '');
INSERT INTO `zuchengmingxi` VALUES ('952', '392.410XL-10040080', '刀柄', '1', '', '个', 'Φ391粗镗(T8)', '');
INSERT INTO `zuchengmingxi` VALUES ('953', 'A40-RALS24-AN2 067', '接柄', '1', '', '个', 'Φ391粗镗(T8)', '');
INSERT INTO `zuchengmingxi` VALUES ('954', 'TCMT220408-KR3215', '车刀片', '2', '', '个', 'Φ391粗镗(T8)', '');
INSERT INTO `zuchengmingxi` VALUES ('955', '5692022-06', '冷却液套管', '1', '', '个', 'Φ391粗镗(T8)', '');
INSERT INTO `zuchengmingxi` VALUES ('956', 'S12-R820XLR40STFC22', '刀夹', '2', '', '个', 'Φ391粗镗(T8)', '');
INSERT INTO `zuchengmingxi` VALUES ('957', '392.410XL-10040080', '刀柄', '1', '', '个', 'φ395.5粗镗(T2)', '');
INSERT INTO `zuchengmingxi` VALUES ('958', 'A40-RALS24-AN2 067', '接柄', '1', '', '个', 'φ395.5粗镗(T2)', '');
INSERT INTO `zuchengmingxi` VALUES ('959', 'TCMT220408-KR3215', '车刀片', '2', '', '个', 'φ395.5粗镗(T2)', '');
INSERT INTO `zuchengmingxi` VALUES ('960', '5692022-06', '冷却液套管', '1', '', '个', 'φ395.5粗镗(T2)', '');
INSERT INTO `zuchengmingxi` VALUES ('961', 'S12-R820XLR40STFC22', '刀夹', '2', '', '个', 'φ395.5粗镗(T2)', '');
INSERT INTO `zuchengmingxi` VALUES ('962', '6068 17，500（看不到）', 'HM直槽钻', '1', '', '个', 'φ17.5直槽钻(T81)', '');
INSERT INTO `zuchengmingxi` VALUES ('963', '4736 18.100', '热胀刀柄', '1', '', '个', 'φ17.5直槽钻(T81)', '');
INSERT INTO `zuchengmingxi` VALUES ('964', '4949 24.100', '冷却导管', '1', '', '个', 'φ17.5直槽钻(T81)', '');
INSERT INTO `zuchengmingxi` VALUES ('965', 'D17.5*183D18*235（看不到）', '硬质合金麻花钻', '1', '', '个', 'Φ17.5硬钻(T82)', '');
INSERT INTO `zuchengmingxi` VALUES ('966', '4736 18.100', '热胀刀柄', '1', '', '个', 'Φ17.5硬钻(T82)', '');
INSERT INTO `zuchengmingxi` VALUES ('967', '4949 24.100', '冷却导管', '1', '', '个', 'Φ17.5硬钻(T82)', '');
INSERT INTO `zuchengmingxi` VALUES ('968', 'HSK100A-CT25S-90', 'ER刀柄', '1', '', '个', 'Φ17.5/Φ40反划(T83)', '');
INSERT INTO `zuchengmingxi` VALUES ('969', 'BSF 17.5/40-155SP', '反划刀杆', '1', '', '个', 'Φ17.5/Φ40反划(T83)', '');
INSERT INTO `zuchengmingxi` VALUES ('970', 'BSF-M-G1200/1000-1A', '刀片', '1', '', '个', 'Φ17.5/Φ40反划(T83)', '');
INSERT INTO `zuchengmingxi` VALUES ('971', '5692022-06', '冷却液套管', '1', '', '个', 'Φ17.5/Φ40反划(T83)', '');
INSERT INTO `zuchengmingxi` VALUES ('972', '392.410XL-10040080', 'Coropak12.2', '1', '', '个', 'Φ396精镗(T13)', '');
INSERT INTO `zuchengmingxi` VALUES ('973', 'A40-RXLS24-AN2 067', '整体式精镗刀', '1', '', '个', 'Φ396精镗(T13)', '');
INSERT INTO `zuchengmingxi` VALUES ('974', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ396精镗(T13)', '');
INSERT INTO `zuchengmingxi` VALUES ('975', '5692022-06', '冷却液套管', '1', '', '个', 'Φ396精镗(T13)', '');
INSERT INTO `zuchengmingxi` VALUES ('976', 'S20-525XL-CW', '滑块', '1', '', '个', 'Φ396精镗(T13)', '');
INSERT INTO `zuchengmingxi` VALUES ('977', 'S24-R825XLA34-012', '滑块', '1', '', '个', 'Φ396精镗(T13)', '');
INSERT INTO `zuchengmingxi` VALUES ('978', 'A34-R825C-E017A', '刀尖', '1', '', '个', 'Φ396精镗(T13)', '');
INSERT INTO `zuchengmingxi` VALUES ('979', 'C-AF23STUC1103', '鹰嘴', '1', '', '个', 'Φ396精镗(T13)', '');
INSERT INTO `zuchengmingxi` VALUES ('980', 'C8-390.410-100120A', 'HSK Capto刀柄', '1', '', '个', 'Φ190精镗(T235)', '');
INSERT INTO `zuchengmingxi` VALUES ('981', 'C8-R822XLS17-AJ 070', '刀杆', '1', '', '个', 'Φ190精镗(T235)', '');
INSERT INTO `zuchengmingxi` VALUES ('982', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ190精镗(T235)', '');
INSERT INTO `zuchengmingxi` VALUES ('983', '5692022-06', '冷却液套管', '1', '', '个', 'Φ190精镗(T235)', '');
INSERT INTO `zuchengmingxi` VALUES ('984', 'A34-R825C-E017A', '夹头', '1', '', '个', 'Φ190精镗(T235)', '');
INSERT INTO `zuchengmingxi` VALUES ('985', 'S17-825XLA34-020', '滑块', '1', '', '个', 'Φ190精镗(T235)', '');
INSERT INTO `zuchengmingxi` VALUES ('986', 'S17-825XL-CW', '滑块', '1', '', '个', 'Φ190精镗(T235)', '');
INSERT INTO `zuchengmingxi` VALUES ('987', 'C-AF23STUC1103', '刀夹', '1', '', '个', 'Φ190精镗(T235)', '');
INSERT INTO `zuchengmingxi` VALUES ('988', '345-C8-390S/410.100 200', 'HSK Capto刀柄', '1', '', '个', 'Φ200反精镗(T17)', '');
INSERT INTO `zuchengmingxi` VALUES ('989', 'C8-391.01-80100A', '抗震铣刀接柄', '1', '', '个', 'Φ200反精镗(T17)', '');
INSERT INTO `zuchengmingxi` VALUES ('990', 'C8-391.05C-32 030M', '接柄', '1', '', '个', 'Φ200反精镗(T17)', '');
INSERT INTO `zuchengmingxi` VALUES ('991', '890450232R56916', '非标镗刀头', '1', '', '个', 'Φ200反精镗(T17)', '');
INSERT INTO `zuchengmingxi` VALUES ('992', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ200反精镗(T17)', '');
INSERT INTO `zuchengmingxi` VALUES ('993', '5692022-06', '冷却液套管', '1', '', '个', 'Φ200反精镗(T17)', '');
INSERT INTO `zuchengmingxi` VALUES ('994', 'R220.69-0080-10-8A', '方肩铣刀（8齿）', '1', '', '个', 'D80精铣(T199)', '');
INSERT INTO `zuchengmingxi` VALUES ('995', 'XOMX10T308TR-M09,MK1500', '刀片', '8', '', '个', 'D80精铣(T199)', '');
INSERT INTO `zuchengmingxi` VALUES ('996', 'M55254627R', '铣刀接柄', '1', '', '个', 'D80精铣(T199)', '');
INSERT INTO `zuchengmingxi` VALUES ('997', 'EM9306Y40146160', 'HSKA100基础刀柄', '1', '', '个', 'D80精铣(T199)', '');
INSERT INTO `zuchengmingxi` VALUES ('998', '20E9306', 'HSKA100冷却液管', '1', '', '个', 'D80精铣(T199)', '');
INSERT INTO `zuchengmingxi` VALUES ('999', '3718 25，000（L=121）看不到', 'HM粗铣刀', '1', '', '个', 'D25粗铣(T109)', '');
INSERT INTO `zuchengmingxi` VALUES ('1000', '4329 25，100（L=100)', '侧固刀柄', '1', '', '个', 'D25粗铣(T109)', '');
INSERT INTO `zuchengmingxi` VALUES ('1001', '4949 24.100', '冷却导管', '1', '', '个', 'D25粗铣(T109)', '');
INSERT INTO `zuchengmingxi` VALUES ('1002', '3627 25.000看不到', '精铣刀', '1', '', '个', 'D25精铣(T110)', '');
INSERT INTO `zuchengmingxi` VALUES ('1003', '4736 25.100（L=100)', '侧固刀柄', '1', '', '个', 'D25精铣(T110)', '');
INSERT INTO `zuchengmingxi` VALUES ('1004', '4949 24,100', '冷却导管', '1', '', '个', 'D25精铣(T110)', '');
INSERT INTO `zuchengmingxi` VALUES ('1005', '5510 8.700看不到', '整体硬钻', '1', '', '个', 'Φ8.7硬钻(T86)', '');
INSERT INTO `zuchengmingxi` VALUES ('1006', '4736 10.100', '热胀刀柄', '1', '', '个', 'Φ8.7硬钻(T86)', '');
INSERT INTO `zuchengmingxi` VALUES ('1007', '4949 24.100', '冷却管', '1', '', '个', 'Φ8.7硬钻(T86)', '');
INSERT INTO `zuchengmingxi` VALUES ('1008', '5510 11.100看不到', '整体硬钻', '1', '', '个', 'Φ11 硬钻(T88)', '');
INSERT INTO `zuchengmingxi` VALUES ('1009', '4736 12.100', '热胀刀柄', '1', '', '个', 'Φ11 硬钻(T88)', '');
INSERT INTO `zuchengmingxi` VALUES ('1010', '4949 24.100', '冷却管', '1', '', '个', 'Φ11 硬钻(T88)', '');
INSERT INTO `zuchengmingxi` VALUES ('1011', '5510 11.7看不到', '麻花钻', '1', '', '个', 'Φ11.7硬钻(T89)', '');
INSERT INTO `zuchengmingxi` VALUES ('1012', '4736 12.100', '热胀刀柄', '1', '', '个', 'Φ11.7硬钻(T89)', '');
INSERT INTO `zuchengmingxi` VALUES ('1013', '4949 24.100', '冷却管', '1', '', '个', 'Φ11.7硬钻(T89)', '');
INSERT INTO `zuchengmingxi` VALUES ('1014', 'D13*D14*168看不到', '整体硬钻', '1', '', '个', 'Φ13硬钻(T90)', '');
INSERT INTO `zuchengmingxi` VALUES ('1015', '4736 14.100', '热胀刀柄', '1', '', '个', 'Φ13硬钻(T90)', '');
INSERT INTO `zuchengmingxi` VALUES ('1016', '4949 24.100', '冷却管', '1', '', '个', 'Φ13硬钻(T90)', '');
INSERT INTO `zuchengmingxi` VALUES ('1017', '723 16.0看不到', '中心钻', '1', '', '个', '中心钻(T91)', '');
INSERT INTO `zuchengmingxi` VALUES ('1018', '4736 116.100', '热胀刀柄', '1', '', '个', '中心钻(T91)', '');
INSERT INTO `zuchengmingxi` VALUES ('1019', '4949 24.100', '冷却管', '1', '', '个', '中心钻(T91)', '');
INSERT INTO `zuchengmingxi` VALUES ('1020', '1090 10.006看不到', '丝锥', '1', '', '个', 'M10*1.25丝锥(T92)', '');
INSERT INTO `zuchengmingxi` VALUES ('1021', '4324 32.100', '弹簧夹头刀柄', '1', '', '个', 'M10*1.25丝锥(T92)', '');
INSERT INTO `zuchengmingxi` VALUES ('1022', '4308 7.032看不到', '弹簧夹套', '1', '', '个', 'M10*1.25丝锥(T92)', '');
INSERT INTO `zuchengmingxi` VALUES ('1023', '4325 7.032看不到', '密封环', '1', '', '个', 'M10*1.25丝锥(T92)', '');
INSERT INTO `zuchengmingxi` VALUES ('1024', '4949 24.100', '冷却管', '1', '', '个', 'M10*1.25丝锥(T92)', '');
INSERT INTO `zuchengmingxi` VALUES ('1025', '4306-32.600', '螺母', '1', '', '个', 'M10*1.25丝锥(T92)', '');
INSERT INTO `zuchengmingxi` VALUES ('1026', 'D12*90看不到', '非标铰刀', '1', '', '个', 'Φ12R8铰刀(T93)', '');
INSERT INTO `zuchengmingxi` VALUES ('1027', '4736 12.100', '热胀刀柄', '1', '', '个', 'Φ12R8铰刀(T93)', '');
INSERT INTO `zuchengmingxi` VALUES ('1028', '4949 24.100', '冷却管', '1', '', '个', 'Φ12R8铰刀(T93)', '');
INSERT INTO `zuchengmingxi` VALUES ('1029', '3736 20.000看不到', '立铣刀', '1', '', '个', 'Φ20铣刀(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('1030', '4736 20.100', '热胀刀柄', '1', '', '个', 'Φ20铣刀(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('1031', '4949 24.100', '冷却管', '1', '', '个', 'Φ20铣刀(T50)', '');
INSERT INTO `zuchengmingxi` VALUES ('1032', '347 22.007看不到', '丝锥', '1', '', '个', 'M22*1.5丝锥(T117)', '');
INSERT INTO `zuchengmingxi` VALUES ('1033', '4324 32.100', '弹簧夹头刀柄', '1', '', '个', 'M22*1.5丝锥(T117)', '');
INSERT INTO `zuchengmingxi` VALUES ('1034', '4308 18.032看不到', '弹簧夹套', '1', '', '个', 'M22*1.5丝锥(T117)', '');
INSERT INTO `zuchengmingxi` VALUES ('1035', '4306-32.600', '密封环', '1', '', '个', 'M22*1.5丝锥(T117)', '');
INSERT INTO `zuchengmingxi` VALUES ('1036', '4949 24.100', '冷却管', '1', '', '个', 'M22*1.5丝锥(T117)', '');
INSERT INTO `zuchengmingxi` VALUES ('1037', '4108 26.000看不到', 'HT800', '1', '', '个', 'Φ26钻头(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('1038', '4113 26.000', '刀片', '1', '', '个', 'Φ26钻头(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('1039', '4334 32.100', '测固刀柄', '1', '', '个', 'Φ26钻头(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('1040', '4949 24.100', '冷却管', '1', '', '个', 'Φ26钻头(T118)', '');
INSERT INTO `zuchengmingxi` VALUES ('1041', '4H0987242', '刀体', '1', '', '个', 'Φ27.7半精镗(T119)', '');
INSERT INTO `zuchengmingxi` VALUES ('1042', 'CCMT09T308-KM3210', 'Turn107菱形80°', '2', '', '个', 'Φ27.7半精镗(T119)', '');
INSERT INTO `zuchengmingxi` VALUES ('1043', '392.41027-100 32 100A', 'HSK 钻头接柄 ', '1', '', '个', 'Φ27.7半精镗(T119)', '');
INSERT INTO `zuchengmingxi` VALUES ('1044', '5692022-06', '冷却液管', '1', '', '个', 'Φ27.7半精镗(T119)', '');
INSERT INTO `zuchengmingxi` VALUES ('1045', '6711 12.000看不到', '合金倒角刀', '1', '', '个', 'Φ34铣刀(T120)', '');
INSERT INTO `zuchengmingxi` VALUES ('1046', '4719 12.125', '延长杆', '1', '', '个', 'Φ34铣刀(T120)', '');
INSERT INTO `zuchengmingxi` VALUES ('1047', '4736 25.100', '液压刀柄', '1', '', '个', 'Φ34铣刀(T120)', '');
INSERT INTO `zuchengmingxi` VALUES ('1048', '4949 24.100', '冷却导管', '1', '', '个', 'Φ34铣刀(T120)', '');
INSERT INTO `zuchengmingxi` VALUES ('1049', '5511 10.700看不到', '整体硬钻', '1', '', '个', 'Φ10.7钻头(T140)', '');
INSERT INTO `zuchengmingxi` VALUES ('1050', '4736 12.100', '热胀刀柄', '1', '', '个', 'Φ10.7钻头(T140)', '');
INSERT INTO `zuchengmingxi` VALUES ('1051', '4949 24.100', '冷却管', '1', '', '个', 'Φ10.7钻头(T140)', '');
INSERT INTO `zuchengmingxi` VALUES ('1052', '932 12.006', '丝锥', '1', '', '个', 'M12*1.25丝锥(T142)', '');
INSERT INTO `zuchengmingxi` VALUES ('1053', '4324 32.100', '弹簧夹头刀柄', '1', '', '个', 'M12*1.25丝锥(T142)', '');
INSERT INTO `zuchengmingxi` VALUES ('1054', '4308 9.032看不到', '弹簧夹套', '1', '', '个', 'M12*1.25丝锥(T142)', '');
INSERT INTO `zuchengmingxi` VALUES ('1055', '4335 9.032看不到', '密封环', '1', '', '个', 'M12*1.25丝锥(T142)', '');
INSERT INTO `zuchengmingxi` VALUES ('1056', '4949 24.100', '冷却管', '1', '', '个', 'M12*1.25丝锥(T142)', '');
INSERT INTO `zuchengmingxi` VALUES ('1057', '4306-32.600', '螺母', '1', '', '个', 'M12*1.25丝锥(T142)', '');
INSERT INTO `zuchengmingxi` VALUES ('1058', 'D10.7*D12*175看不到', '硬质合金钻', '1', '', '个', 'Φ10.7钻头(T141)', '');
INSERT INTO `zuchengmingxi` VALUES ('1059', '4736 12.100', 'ER刀柄', '1', '', '个', 'Φ10.7钻头(T141)', '');
INSERT INTO `zuchengmingxi` VALUES ('1060', '4307 11.025', 'ER夹头', '1', '', '个', 'Φ10.7钻头(T141)', '');
INSERT INTO `zuchengmingxi` VALUES ('1061', '4949 24.100', '冷却管', '1', '', '个', 'Φ10.7钻头(T141)', '');
INSERT INTO `zuchengmingxi` VALUES ('1062', 'D13*D14*97看不到', '非标铰刀', '1', '', '个', 'Φ13.2H7铰刀(T143)', '');
INSERT INTO `zuchengmingxi` VALUES ('1063', '4736 14.100', '热胀刀柄', '1', '', '个', 'Φ13.2H7铰刀(T143)', '');
INSERT INTO `zuchengmingxi` VALUES ('1064', '4949 24.100', '冷却管', '1', '', '个', 'Φ13.2H7铰刀(T143)', '');
INSERT INTO `zuchengmingxi` VALUES ('1065', '345-C8-390S/410-100 200', 'HSK Capto刀柄', '1', '', '个', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `zuchengmingxi` VALUES ('1066', 'C8-391.10-50 030', 'Capto 铣刀接杆', '1', '', '个', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `zuchengmingxi` VALUES ('1067', 'L331.52-250S50MM', '铣刀盘', '1', '', '个', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `zuchengmingxi` VALUES ('1068', 'N331.1A-1150088E-KL1020', '铣刀片', '16', '', '个', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `zuchengmingxi` VALUES ('1069', '5692022-06', '冷却液套管', '1', '', '个', 'Φ250*15宽精铣刀（T225)', '');
INSERT INTO `zuchengmingxi` VALUES ('1070', '5512 6.000看不到', '整体硬钻', '1', '', '个', 'Φ6钻头(T148)', '');
INSERT INTO `zuchengmingxi` VALUES ('1071', '4736 306.100', '热涨刀柄', '1', '', '个', 'Φ6钻头(T148)', '');
INSERT INTO `zuchengmingxi` VALUES ('1072', '4949 24.100', '冷却管', '1', '', '个', 'Φ6钻头(T148)', '');
INSERT INTO `zuchengmingxi` VALUES ('1073', '5510 12.5看不到', '整体硬钻', '1', '', '个', 'Φ12.5钻头(T144)', '');
INSERT INTO `zuchengmingxi` VALUES ('1074', '4736 14.100', '热胀刀柄', '1', '', '个', 'Φ12.5钻头(T144)', '');
INSERT INTO `zuchengmingxi` VALUES ('1075', '4949 24.100', '冷却管', '1', '', '个', 'Φ12.5钻头(T144)', '');
INSERT INTO `zuchengmingxi` VALUES ('1076', '347 14.700看不到', '丝锥', '1', '', '个', 'M14*1.5丝锥(T147)', '');
INSERT INTO `zuchengmingxi` VALUES ('1077', '4324 32.101', '弹簧夹头刀柄', '1', '', '个', 'M14*1.5丝锥(T147)', '');
INSERT INTO `zuchengmingxi` VALUES ('1078', '4308 11.032看不到', '弹簧夹套', '1', '', '个', 'M14*1.5丝锥(T147)', '');
INSERT INTO `zuchengmingxi` VALUES ('1079', '4306-32.600', '密封环', '1', '', '个', 'M14*1.5丝锥(T147)', '');
INSERT INTO `zuchengmingxi` VALUES ('1080', '4949 24.100', '冷却管', '1', '', '个', 'M14*1.5丝锥(T147)', '');
INSERT INTO `zuchengmingxi` VALUES ('1081', '5510 15.700看不到', '整体硬钻', '1', '', '个', 'Φ15.7钻头(T149)', '');
INSERT INTO `zuchengmingxi` VALUES ('1082', '4736 16.100', '热胀刀柄', '1', '', '个', 'Φ15.7钻头(T149)', '');
INSERT INTO `zuchengmingxi` VALUES ('1083', '4949 24.100', '冷却管', '1', '', '个', 'Φ15.7钻头(T149)', '');
INSERT INTO `zuchengmingxi` VALUES ('1084', '930-HA10-S-20-100', '高精度液压夹头', '1', '', '个', 'Φ20.2*3.5槽铣刀（T150)', '');
INSERT INTO `zuchengmingxi` VALUES ('1085', '393.CG-20 16 52', '高精度夹套', '1', '', '个', 'Φ20.2*3.5槽铣刀（T150)', '');
INSERT INTO `zuchengmingxi` VALUES ('1086', 'BU1310036看不到', '非标槽铣刀', '1', '', '个', 'Φ20.2*3.5槽铣刀（T150)', '');
INSERT INTO `zuchengmingxi` VALUES ('1087', '5692022-06', '冷却液套管', '1', '', '个', 'Φ20.2*3.5槽铣刀（T150)', '');
INSERT INTO `zuchengmingxi` VALUES ('1088', 'D16*150看不到', '非标铰刀', '1', '', '个', 'Φ16F9铰刀(T151)', '');
INSERT INTO `zuchengmingxi` VALUES ('1089', '4736 16.100', '热胀刀柄', '1', '', '个', 'Φ16F9铰刀(T151)', '');
INSERT INTO `zuchengmingxi` VALUES ('1090', '4949 24.100', '冷却管', '1', '', '个', 'Φ16F9铰刀(T151)', '');
INSERT INTO `zuchengmingxi` VALUES ('1091', 'C4-390.410-10090HD', '基本刀柄', '1', '', '个', 'Φ33.7粗镗(T145)', '');
INSERT INTO `zuchengmingxi` VALUES ('1092', 'c3-391.68A-2-026 084B', '整体式粗镗刀', '1', '', '个', 'Φ33.7粗镗(T145)', '');
INSERT INTO `zuchengmingxi` VALUES ('1093', 'C4-391.02-32 070A', '缩径接杆', '1', '', '个', 'Φ33.7粗镗(T145)', '');
INSERT INTO `zuchengmingxi` VALUES ('1094', 'CCMT060208-KM3215', '车刀片', '2', '', '个', 'Φ33.7粗镗(T145)', '');
INSERT INTO `zuchengmingxi` VALUES ('1095', '5692022-06', '冷却液套管', '1', '', '个', 'Φ33.7粗镗(T145)', '');
INSERT INTO `zuchengmingxi` VALUES ('1096', '391.68A-2-038 13C06B', '滑块', '2', '', '个', 'Φ33.7粗镗(T145)', '');
INSERT INTO `zuchengmingxi` VALUES ('1097', 'C4-390.410-100090HD', '基本刀柄', '1', '', '个', 'φ35.4半精镗(T146)', '');
INSERT INTO `zuchengmingxi` VALUES ('1098', 'C3-391.68A-2-026084B', '整体式粗镗刀', '1', '', '个', 'φ35.4半精镗(T146)', '');
INSERT INTO `zuchengmingxi` VALUES ('1099', '391.68A-2-038 13C06B', '刀夹', '2', '', '个', 'φ35.4半精镗(T146)', '');
INSERT INTO `zuchengmingxi` VALUES ('1100', 'C4--391.02-32 070A', '缩径接杆', '1', '', '个', 'φ35.4半精镗(T146)', '');
INSERT INTO `zuchengmingxi` VALUES ('1101', 'CCMT060208-KM3215', '车刀片', '2', '', '个', 'φ35.4半精镗(T146)', '');
INSERT INTO `zuchengmingxi` VALUES ('1102', '5692022-06', '冷却液套管', '1', '', '个', 'φ35.4半精镗(T146)', '');
INSERT INTO `zuchengmingxi` VALUES ('1103', '391.68A-2-038 13C06B', '滑块', '2', '', '个', 'φ88.5粗镗(T170)', '');
INSERT INTO `zuchengmingxi` VALUES ('1104', '无号', '垫刀块', '2', '', '个', 'φ88.5粗镗(T170)', '');
INSERT INTO `zuchengmingxi` VALUES ('1105', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'φ88.5粗镗(T170)', '');
INSERT INTO `zuchengmingxi` VALUES ('1106', 'C6-390.410-100110HD', '刀柄', '1', '', '个', 'φ88.5粗镗(T170)', '');
INSERT INTO `zuchengmingxi` VALUES ('1107', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'φ88.5粗镗(T170)', '');
INSERT INTO `zuchengmingxi` VALUES ('1108', '5692022-06', '冷却液套管', '1', '', '个', 'φ88.5粗镗(T170)', '');
INSERT INTO `zuchengmingxi` VALUES ('1109', '391.68A-2-038 13C06B', '滑块', '2', '', '个', 'φ89.7半精镗(T171)', '');
INSERT INTO `zuchengmingxi` VALUES ('1110', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'φ89.7半精镗(T171)', '');
INSERT INTO `zuchengmingxi` VALUES ('1111', 'C6-390.410-100110HD', 'HSK Capto刀柄', '1', '', '个', 'φ89.7半精镗(T171)', '');
INSERT INTO `zuchengmingxi` VALUES ('1112', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'φ89.7半精镗(T171)', '');
INSERT INTO `zuchengmingxi` VALUES ('1113', '5692022-06', '冷却液套管', '1', '', '个', 'φ89.7半精镗(T171)', '');
INSERT INTO `zuchengmingxi` VALUES ('1114', '无号', '垫刀块', '2', '', '个', 'φ89.7半精镗(T171)', '');
INSERT INTO `zuchengmingxi` VALUES ('1115', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'φ80粗镗(T172)', '');
INSERT INTO `zuchengmingxi` VALUES ('1116', 'C6-390.410-100110HD', '刀柄', '1', '', '个', 'φ80粗镗(T172)', '');
INSERT INTO `zuchengmingxi` VALUES ('1117', 'C6-390.01-63 100A', '加长接柄', '1', '', '个', 'φ80粗镗(T172)', '');
INSERT INTO `zuchengmingxi` VALUES ('1118', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'φ80粗镗(T172)', '');
INSERT INTO `zuchengmingxi` VALUES ('1119', '5692022-06', '冷却液套管', '1', '', '个', 'φ80粗镗(T172)', '');
INSERT INTO `zuchengmingxi` VALUES ('1120', '391.68A-2-038 13C06B', '滑块', '2', '', '个', 'φ80粗镗(T172)', '');
INSERT INTO `zuchengmingxi` VALUES ('1121', '无号', '垫刀块', '2', '', '个', 'φ80粗镗(T172)', '');
INSERT INTO `zuchengmingxi` VALUES ('1122', 'C6-391.68A-6-063 045C', '接柄', '1', '', '个', 'φ84.7半精镗(T173)', '');
INSERT INTO `zuchengmingxi` VALUES ('1123', 'C6-390.410-100110HD', '刀柄', '1', '', '个', 'φ84.7半精镗(T173)', '');
INSERT INTO `zuchengmingxi` VALUES ('1124', 'TCMT16T308-KM3215', '车刀片', '2', '', '个', 'φ84.7半精镗(T173)', '');
INSERT INTO `zuchengmingxi` VALUES ('1125', 'C6-390.01-63 100A', '加长接杆', '1', '', '个', 'φ84.7半精镗(T173)', '');
INSERT INTO `zuchengmingxi` VALUES ('1126', '5692022-06', '冷却液套管', '1', '', '个', 'φ84.7半精镗(T173)', '');
INSERT INTO `zuchengmingxi` VALUES ('1127', '391.68A-2-038 13C06B', '滑块', '2', '', '个', 'φ84.7半精镗(T173)', '');
INSERT INTO `zuchengmingxi` VALUES ('1128', '无号', '垫刀块', '2', '', '个', 'φ84.7半精镗(T173)', '');
INSERT INTO `zuchengmingxi` VALUES ('1129', 'R220.49-0040-12', '倒角铣刀', '1', '', '个', 'D40/C45倒角铣(T180)', '');
INSERT INTO `zuchengmingxi` VALUES ('1130', 'SPMX12T3AP-75，F40M', '刀片', '3', '', '个', 'D40/C45倒角铣(T180)', '');
INSERT INTO `zuchengmingxi` VALUES ('1131', 'M55252822R', '铣刀接柄', '1', '', '个', 'D40/C45倒角铣(T180)', '');
INSERT INTO `zuchengmingxi` VALUES ('1132', 'M402551', '加长杆（L=75)', '1', '', '个', 'D40/C45倒角铣(T180)', '');
INSERT INTO `zuchengmingxi` VALUES ('1133', 'EM930640128110', '基础刀柄', '1', '', '个', 'D40/C45倒角铣(T180)', '');
INSERT INTO `zuchengmingxi` VALUES ('1134', '20E9306', '冷却套管', '1', '', '个', 'D40/C45倒角铣(T180)', '');
INSERT INTO `zuchengmingxi` VALUES ('1135', 'R220.66-0063-12-4', '面铣刀（60°）', '1', '', '个', 'D63/C30铣刀（T169)', '');
INSERT INTO `zuchengmingxi` VALUES ('1136', 'HPMN1206ZETR-MD20，MK2050', '刀片', '4', '', '个', 'D63/C30铣刀（T169)', '');
INSERT INTO `zuchengmingxi` VALUES ('1137', 'E9306552522100', '铣刀刀柄', '1', '', '个', 'D63/C30铣刀（T169)', '');
INSERT INTO `zuchengmingxi` VALUES ('1138', '20E9306', '冷却液管', '1', '', '个', 'D63/C30铣刀（T169)', '');
INSERT INTO `zuchengmingxi` VALUES ('1139', 'R335.15-063-05.22-5', '槽铣刀', '1', '', '个', 'φ63*3.15槽铣刀(T174)', '');
INSERT INTO `zuchengmingxi` VALUES ('1140', 'R335.15-18315FG-M12，F40M', '刀片', '5', '', '个', 'φ63*3.15槽铣刀(T174)', '');
INSERT INTO `zuchengmingxi` VALUES ('1141', 'E9306552522160', '铣刀刀柄', '1', '', '个', 'φ63*3.15槽铣刀(T174)', '');
INSERT INTO `zuchengmingxi` VALUES ('1142', '20E9306', '冷却液管', '1', '', '个', 'φ63*3.15槽铣刀(T174)', '');
INSERT INTO `zuchengmingxi` VALUES ('1143', 'C6-390.410-100110A', '刀柄', '1', '', '个', 'Φ90精镗(T175)', '');
INSERT INTO `zuchengmingxi` VALUES ('1144', 'C6-R825C-AAG 067A', '接柄', '1', '', '个', 'Φ90精镗(T175)', '');
INSERT INTO `zuchengmingxi` VALUES ('1145', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ90精镗(T175)', '');
INSERT INTO `zuchengmingxi` VALUES ('1146', '5692022-06', '冷却液套管', '1', '', '个', 'Φ90精镗(T175)', '');
INSERT INTO `zuchengmingxi` VALUES ('1147', 'C-AFR23STUC1103', '鹰嘴', '1', '', '个', 'Φ90精镗(T175)', '');
INSERT INTO `zuchengmingxi` VALUES ('1148', 'C8-390.410-100120A', '刀柄', '1', '', '个', 'Φ85精镗(T176)', '');
INSERT INTO `zuchengmingxi` VALUES ('1149', 'C8-391.02-63 080A', '接杆', '1', '', '个', 'Φ85精镗(T176)', '');
INSERT INTO `zuchengmingxi` VALUES ('1150', 'C8-R825C-AAF055A', '整体式精镗刀头', '1', '', '个', 'Φ85精镗(T176)', '');
INSERT INTO `zuchengmingxi` VALUES ('1151', 'TCMT110304-KF3005', '车刀片', '1', '', '个', 'Φ85精镗(T176)', '');
INSERT INTO `zuchengmingxi` VALUES ('1152', '5692022-06', '冷却液套管', '1', '', '个', 'Φ85精镗(T176)', '');
INSERT INTO `zuchengmingxi` VALUES ('1153', 'C-AFR23STUC1103', '鹰嘴', '1', '', '个', 'Φ85精镗(T176)', '');
INSERT INTO `zuchengmingxi` VALUES ('1154', 'C3-390.410-100080A', '刀柄', '1', '', '个', 'φ35.72镗刀(T177)', '');
INSERT INTO `zuchengmingxi` VALUES ('1155', 'C3-R825A-FAB 208A', '精镗刀杆', '1', '', '个', 'φ35.72镗刀(T177)', '');
INSERT INTO `zuchengmingxi` VALUES ('1156', 'TCMT06T04-KF3005', '车刀片', '1', '', '个', 'φ35.72镗刀(T177)', '');
INSERT INTO `zuchengmingxi` VALUES ('1157', '5692022-06', '冷却液套管', '1', '', '个', 'φ35.72镗刀(T177)', '');
INSERT INTO `zuchengmingxi` VALUES ('1158', 'A-AF STUC06T', '鹰嘴', '1', '', '个', 'φ35.72镗刀(T177)', '');
INSERT INTO `zuchengmingxi` VALUES ('1159', 'C3-390.410-100080A', '刀柄', '1', '', '个', 'Φ30精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('1160', 'C3-R825A-AAB 072A', '精镗刀杆', '1', '', '个', 'Φ30精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('1161', 'TCMT06T04-KF3005', '车刀片', '1', '', '个', 'Φ30精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('1162', '5692022-06', '冷却液套管', '1', '', '个', 'Φ30精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('1163', 'A-AF STUC06T', '鹰嘴', '1', '', '个', 'Φ30精镗(T62)', '');
INSERT INTO `zuchengmingxi` VALUES ('1164', '4107 20.500（看不到）', 'HT800刀体', '1', '', '个', 'φ20.5钻头(T116)', '');
INSERT INTO `zuchengmingxi` VALUES ('1165', '4334 25.100', '侧固刀柄', '1', '', '个', 'φ20.5钻头(T116)', '');
INSERT INTO `zuchengmingxi` VALUES ('1166', '4113 20.500（看不到）', '刀片', '1', '', '个', 'φ20.5钻头(T116)', '');
INSERT INTO `zuchengmingxi` VALUES ('1167', '4949 24.100', '冷却管', '1', '', '个', 'φ20.5钻头(T116)', '');
INSERT INTO `zuchengmingxi` VALUES ('1168', 'C8-390.410-100120A(主刀杆）', 'HSK Capto刀柄', '1', 'φ180', '个', 'φ180粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1169', '820-200TC22-C8（①②③）', 'Coropak13.1', '1', 'φ180', '套', 'φ180粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1170', 'TCMT220408-KR3215', 'CoroTum107车刀片', '2', 'φ180', '个', 'φ180粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1171', '5692022-06', '冷却液套管', '1', 'φ180', '个', 'φ180粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1172', '392.410XL-10040080', 'Coropak13.1', '1', 'φ416', '个', 'φ416粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1173', '820-460TC22(①②③)', '820整体式粗镗刀', '1', 'φ416', '套', 'φ416粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1174', 'TCMT220408-KR3215', 'CoroTum107车刀片', '2', 'φ416', '个', 'φ416粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1175', '5692022-06', '冷却液套管', '1', 'φ416', '个', 'φ416粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1176', 'C8-390.410-100120A(主刀杆）', 'HSK Capto刀柄', '1', 'Φ170', '个', 'Φ170粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1177', '820-200TC22-C8（①②③）', 'Coropak13.1', '1', 'Φ170', '套', 'Φ170粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1178', 'TCMT220408-KR3215', 'CoroTum107车刀片', '2', 'Φ170', '个', 'Φ170粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1179', '5692022-06', '冷却液套管', '1', 'Φ170', '个', 'Φ170粗镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1180', 'C8-390.410-100120A(主刀杆）', 'HSK Capto刀柄', '1', 'Φ120', '个', 'Φ120精镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1181', '825-137T11-C8', '820整体式精镗刀', '1', 'Φ120', '个', 'Φ120精镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1182', 'TCMT110304-KF3005', 'CoroTum107车刀片', '1', 'Φ120', '个', 'Φ120精镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1183', '5692022-06', '冷却液套管', '1', 'Φ120', '个', 'Φ120精镗刀', '');
INSERT INTO `zuchengmingxi` VALUES ('1184', 'MCLNL2525M12', '左手刀杆', '1', '', '个', '外圆粗车刀制动器活塞OP20(T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1185', 'CNMG120412UN KCK15B（CNMG120412-KR3210)', '刀片', '1', '', '个', '外圆粗车刀制动器活塞OP20(T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1186', 'A50UMCLNL12', '左手刀杆', '1', '', '个', '内孔粗车刀制动器活塞OP20(T02)', '');
INSERT INTO `zuchengmingxi` VALUES ('1187', 'CNMG120412UN KCK15B（CNMG120412-KR3210)', '刀片', '1', '', '个', '内孔粗车刀制动器活塞OP20(T02)', '');
INSERT INTO `zuchengmingxi` VALUES ('1188', 'MWLNL2525M08H4', '左手刀杆', '1', '', '个', '外圆精车刀制动器活塞OP20(T03)', '');
INSERT INTO `zuchengmingxi` VALUES ('1189', 'WNGA080408', '刀片', '1', '', '个', '外圆精车刀制动器活塞OP20(T03)', '');
INSERT INTO `zuchengmingxi` VALUES ('1190', 'LAG123G09-32B', '刀杆', '1', '', '个', '倒角车刀制动器活塞OP20(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1191', 'N123G2-0300-0004-GF1125', '刀片', '1', '', '个', '倒角车刀制动器活塞OP20(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1192', 'A40TMWLNL08', '左手刀杆', '1', '', '个', '内孔精车刀制动器活塞OP20(T05)', '');
INSERT INTO `zuchengmingxi` VALUES ('1193', 'WNGA080408MW KCP05', '刀片', '1', '', '个', '内孔精车刀制动器活塞OP20(T05)', '');
INSERT INTO `zuchengmingxi` VALUES ('1194', '50-40', '变径套', '1', '', '个', '内孔精车刀制动器活塞OP30(T05)', '');
INSERT INTO `zuchengmingxi` VALUES ('1195', 'MCLNL2525M12', '左手刀杆', '2', '', '个', '外圆粗车刀制动器活塞OP30(T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1196', 'CNMG120412UN KCK15B（CNMG120412-KR3210)', '刀片', '2', '', '个', '外圆粗车刀制动器活塞OP30(T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1197', 'MVJNL2525M16', '左手刀杆', '2', '', '个', '外圆偏车刀制动器活塞OP30(T02)', '');
INSERT INTO `zuchengmingxi` VALUES ('1198', 'VNMG160404FN KCP10', '刀片', '2', '', '个', '外圆偏车刀制动器活塞OP30(T02)', '');
INSERT INTO `zuchengmingxi` VALUES ('1199', 'MWLNL2525M08H4', '左手刀杆', '2', '', '个', '外圆精车刀制动器活塞OP30(T03)', '');
INSERT INTO `zuchengmingxi` VALUES ('1200', 'WNGA080408MW KCP05', '刀片', '1', '', '个', '外圆精车刀制动器活塞OP30(T03)', '');
INSERT INTO `zuchengmingxi` VALUES ('1201', 'D10.55×7.5×D14×F30×L98×SL45 DOHN5774', '钻头', '2', '', '个', 'D10.5*D14组合钻头制动器活塞OP30(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1202', 'D10.55×7.5×D14×F30×L98×SL45DIHN3164', '钻头', '2', '', '个', 'D10.5*D14组合钻头制动器活塞OP30(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1203', 'ER32-14', '筒夹', '4', '', '个', 'D10.5*D14组合钻头制动器活塞OP30(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1204', '1A 600×80×203.2PA80K7V', '砂轮', '1', '', '个', '外圆磨制动器活塞OP40（T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1205', 'JS-BSB-002-1', '斧型金刚笔', '1', '', '个', '外圆磨制动器活塞OP40（T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1206', 'MCLNL2525M12', '左手刀杆', '2', '', '个', '外圆粗车刀轴承座OP10(T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1207', 'CNMG120412UN KCK15B（CNMG120412-KR3210)', '刀片', '2', '', '个', '外圆粗车刀轴承座OP10(T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1208', 'A50UMCLNL12', '左手刀杆', '2', '', '个', '内孔粗车刀轴承座OP10(T02)', '');
INSERT INTO `zuchengmingxi` VALUES ('1209', 'CNMG120412UN KCK15B（CNMG120412-KR3210)', '刀片', '2', '', '个', '内孔粗车刀轴承座OP10(T02)', '');
INSERT INTO `zuchengmingxi` VALUES ('1210', 'MWLNL2525M08H4', '左手刀杆', '2', '', '个', '外圆精车刀轴承座OP10(T03)', '');
INSERT INTO `zuchengmingxi` VALUES ('1211', 'WNMG080404FP KCP10', '刀片', '2', '', '个', '外圆精车刀轴承座OP10(T03)', '');
INSERT INTO `zuchengmingxi` VALUES ('1212', 'A40TMWLNL08', '左手刀杆', '2', '', '个', '内孔精车刀轴承座OP10(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1213', 'WNMG080404FP KCP10', '刀片', '2', '', '个', '内孔精车刀轴承座OP10(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1214', '50-40', '变径套', '2', '', '个', '内孔精车刀轴承座OP10(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1215', 'D11.02×D14×L120 13405', '钻头', '2', '', '个', 'D11*C1组合钻头轴承座OP10(T05)', '');
INSERT INTO `zuchengmingxi` VALUES ('1216', 'ER32-14', '夹套', '0', '', '个', 'D11*C1组合钻头轴承座OP10(T05)', '');
INSERT INTO `zuchengmingxi` VALUES ('1217', 'MCLNL2525M12', '左手刀杆', '1', '', '个', '外圆粗车刀轴承座OP20(T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1218', 'CNMG120412UN KCK15B（CNMG120412-KR3210)', '刀片', '1', '', '个', '外圆粗车刀轴承座OP20(T01)', '');
INSERT INTO `zuchengmingxi` VALUES ('1219', 'MWLNL2525M08H4', '左手刀杆', '1', '', '个', '外圆精车刀轴承座OP20(T02)', '');
INSERT INTO `zuchengmingxi` VALUES ('1220', 'CNMG120412UN KCK15B（CNMG120412-KR3210)', '刀片', '1', '', '个', '外圆精车刀轴承座OP20(T02)', '');
INSERT INTO `zuchengmingxi` VALUES ('1221', 'A50UMCLNL12', '左手刀杆', '1', '', '个', '内孔粗车刀轴承座OP20(T03)', '');
INSERT INTO `zuchengmingxi` VALUES ('1222', 'CNMG120412UN KCK15B（CNMG120412-KR3210)', '刀片', '1', '', '个', '内孔粗车刀轴承座OP20(T03)', '');
INSERT INTO `zuchengmingxi` VALUES ('1223', 'D16×80 13400', '倒角刀', '1', '', '个', 'D16倒角钻轴承座OP20(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1224', 'ER32-16', '夹套', '0', '', '个', 'D16倒角钻轴承座OP20(T04)', '');
INSERT INTO `zuchengmingxi` VALUES ('1225', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1226', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1227', 'HSK A 100 SEM 32X100 C', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1228', 'T490 FLN D100-13-32-R-13', '铣刀盘', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1229', 'T490 LNMT 1306PNTR  IC810', '刀片', '13', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1230', 'SR34-535-SN', '压刀螺钉', '13', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1231', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1232', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1233', 'T490 LNMT 1306PNTR  IC810', '刀片', '65', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1234', 'SR34-535-SN', '压刀螺钉', '65', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1235', 'T490LNK80*151-5-HSK100-13', '玉米粒铣刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1236', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1237', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1238', 'HSK A 100 SEM 32X100 C', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1239', 'F90LN D100-12-32-R-15', '铣刀盘', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1240', 'LNKX  1506PNTN  IC910', '刀片', '12', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1241', 'SR34-535-SN', '压刀螺钉', '12', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1242', 'AST-4625726', '楔块', '12', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1243', 'SR M4-LR-4026147', '楔块螺钉', '12', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1244', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1245', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1246', 'T490 FLN D050-06-22-R-13', '铣刀盘', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1247', 'T490 LNMT 1306PNTR  IC810', '刀片', '6', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1248', 'SR34-535-SN', '压刀螺钉', '6', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1249', 'HSK A 100 SEM 22X19X200', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1250', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1251', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1252', 'HSK A 100 SRKIN 20X160', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1253', 'DCN 170-085-20R-5D', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1254', 'ICK 175            IC908', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1255', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1256', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1257', 'HSK A 100 EM 20X110 E', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1258', 'AOMT 060204-45DT   IC908', '倒角刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1259', 'SR34-508', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1260', 'MN125 033NA-N3R461933', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1261', 'ICK 125            IC908', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1262', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1263', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1264', 'HSK A 100 MB50X120', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1265', 'EMH MB50-20', '钻头接柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1266', 'AOMT 060204-45DT   IC908', '倒角刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1267', 'SR34-508', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1268', 'ICK 145            IC908', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1269', 'MN145 038NA-N3R461939', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1270', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1271', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1272', 'HSK A 100 SRKIN 10X 90', '热涨刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1273', 'SCD 087-049-100 ACP5  908', '硬钻', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1274', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1275', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1276', 'HSK A 100 EM 20X110 E', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1277', 'ICK 140            IC908', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1278', 'AOMT 060204-45DT   IC908', '倒角刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1279', 'SR34-508', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1280', 'MN140 050NA-N3R461983', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1281', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1282', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1283', 'HSK A 100 EM 16X100', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1284', 'DCN 120-036-16A-3D', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1285', 'ICK 120            IC908', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1286', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1287', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1288', 'HSK A 100 SRKIN 8X160', '热涨刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1289', 'SCD 068-043-080 ACP5  908', '硬钻', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1290', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1291', 'HSK A 100 MB50X120', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1292', 'EMH MB50-20', '接柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1293', 'ICK 130            IC908', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1294', 'AOMT 060204-45DT   IC908', '倒角刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1295', 'SR34-508', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1296', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1297', 'MN130 020NA-N3R461973', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1298', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1299', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1300', 'HSK A 100 SRKIN 20X160', '热涨刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1301', 'MM S-A-L090-C20-T12-W-H', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1302', 'MM HCD200-090-2T12 IC908', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1303', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1304', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1305', 'HSK A 100 ER32X100', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1306', 'ER32 GB S 11X9.00 V1', '丝锥夹套', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1307', 'STP9 M14X1.5 6HX HSS-E', '丝锥', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1308', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1309', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1310', 'HSK A 100 ER32X100', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1311', 'FZ111300.11', '延长杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1312', 'ER32 GB 12X 9', '丝锥夹套', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1313', 'STP9 M16X1.5 6HX', '丝锥', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1314', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1315', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1316', 'HSK A 100 ER16X100', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1317', 'ER16 GB 7.0X5.6', '丝锥夹套', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1318', 'STP9 M10X1.25 6HX', '丝锥', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1319', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1320', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1321', 'HSK A 100 EM 20X160', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1322', 'SOMX 050204-DT     IC9080', '刀片', '4', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1323', 'SR34-533/L', '压刀螺钉', '4', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1324', 'MR195 025NA-P4B461952', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1325', 'ASS-120725-T272', '可换刀头式铰刀', '1', 'φ20F7×295', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1326', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1327', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1328', 'HSK A 100 SRKIN 20×105', '刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1329', 'RM-BNT8-3D-20C', 'SHANK 铰刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1330', 'RM-BN8-20.000-F7SE-IC908', '刀头', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1331', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1332', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1333', 'HSK A 100 EM 32X120 E', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1334', 'SOMT 09T306-DT     IC8080', '周边刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1335', 'SOMT 09T306-DT     IC908', '中心刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1336', 'SR34-506', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1337', 'SOMX 070305-DT     IC8080', '倒角刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1338', 'SR14-560', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1339', 'SOMT 110408-DT     IC8080', '锪面刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1340', 'SR34-508', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1341', 'MR290 069NC-F6R461959', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1342', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1343', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1344', 'SOMX 070305-DT     IC8080', '倒角刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1345', 'SR14-560', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1346', 'LNMX 110408L-HT    IC5005', '镗孔刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1347', 'SR34-550-C', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1348', 'HSK A 100 SEM 32X24X200', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1349', 'CR SSXOR-07-65172', '倒角刀夹', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1350', 'SRM4×16 ISO7380', '螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1351', 'CR-LN11-L-64584', '镗刀夹', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1352', 'SRM8×25 ISO7380', '螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1353', 'CB D82-32-LN11-64580', '粗镗头', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1354', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1355', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1356', 'HSK A 100 EM 20X100', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1357', 'MN150 032WA-N3R65120', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1358', 'AOMT 060204-45DT   IC908', '倒角刀片', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1359', 'SR34-508', '压刀螺钉', '2', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1360', 'ICK 151            IC908', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1361', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1362', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1363', 'HSK A 100 EM 16X100 E', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1364', 'CCMT 060204-14     IC5005', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1365', 'SR14-560/S', '压刀螺钉', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1366', 'MR220 002NR-Q1B465175', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1367', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1368', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1369', 'HSK A 100 EM 16X100 E', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1370', 'CCMT 060204-14     IC5005', '刀片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1371', 'SR14-560/S', '压刀螺钉', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1372', 'MR240 002NR-Q1B464530', '刀杆', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1373', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1374', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1375', 'HSK A 100 ER32X100', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1376', 'TP9 M14X2.0 6HX HSS-E', '丝锥', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1377', 'ER32 GB S D 11X9.00 V1', '丝锥夹套', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1378', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1379', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1380', 'HSK A 100 ER16X160', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1381', 'TP9 M8X1.25 6HX HSS-E', '丝锥', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1382', 'ER16 GB  D 8.0X6.3', '丝锥夹套', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1383', 'CHIP BIS.C122-04/L', '芯片', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1384', 'COOLING TUBE HSK A100', '冷却管', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1385', 'HSK A 100 ER32X160', '主刀柄', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1386', 'TP9 M16X2.0 6HX HSS-E', '丝锥', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1387', 'ER32 GB  D  12X 9', '丝锥夹套', '1', '', '个', '减速器自动线', '');
INSERT INTO `zuchengmingxi` VALUES ('1388', 'ST0792', '阶梯硬钻', '1', 'L=131 L4=25', '个', 'Φ8.5-25/120°(T1002)', '');
INSERT INTO `zuchengmingxi` VALUES ('1389', 'ST0791', '阶梯硬钻', '1', 'L=103 L4=19', '个', 'Φ6.8-19/120°(T1004)', '');
INSERT INTO `zuchengmingxi` VALUES ('1390', 'TM870.2.1-553246（看不到）', '阶梯刀杆', '1', 'L=123 L4=67', '个', 'Φ22.1-35/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('1391', 'TM8800-553248（看不到）', '刀杆', '1', 'L=130 L4=30', '个', 'Φ20.5-30/Ø32 (T1010)', '');
INSERT INTO `zuchengmingxi` VALUES ('1392', 'ST0789', '阶梯钻', '1', ' L=118 L4=30', '个', 'Φ10.3-30/120°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('1393', 'TM880-553682(看不到）', '刀杆', '1', 'L=108 Ø29-40/90°DM40', '个', 'Φ29阶梯钻(T1031)', '');
INSERT INTO `zuchengmingxi` VALUES ('1394', 'TM870.2.1-553751(看不到）', '刀杆', '1', 'L4=72 Ø17-47/90°DM25', '个', 'Φ17-47/90°(T1036)', '');
INSERT INTO `zuchengmingxi` VALUES ('1395', 'ST0785', '硬钻', '1', 'L=143 L4=47 120°', '个', 'Φ14.5/120°（T1037)', '');
INSERT INTO `zuchengmingxi` VALUES ('1396', '428.920000-0620-906', '枪钻', '1', 'L=620 DM25 Φ20H9', '个', 'Φ20H9枪钻(T1046)', '');
INSERT INTO `zuchengmingxi` VALUES ('1397', 'ST0757Φ14.5×42×120°×Φ18×143', '硬钻', '1', 'L=143 L4=42', '个', 'Φ14.5-42/90°(T1003)', '');
INSERT INTO `zuchengmingxi` VALUES ('1398', 'ST0760Φ14.5×47×120°×Φ18×143', '阶梯硬钻', '1', 'L=143 L4=47', '个', 'Φ14.5-47/90°(T1004)', '');
INSERT INTO `zuchengmingxi` VALUES ('1399', 'ST0759Φ17×40×90°×Φ20×131', '硬钻', '1', ' L=131 L4=40', '个', 'Φ17-40/90°(T1006)', '');
INSERT INTO `zuchengmingxi` VALUES ('1400', 'ST0761Φ14.5×17×90°×Φ18×118', '阶梯硬钻', '1', 'L=118 L4=17 ', '个', 'Φ14.5-17/90°(T1007)', '');
INSERT INTO `zuchengmingxi` VALUES ('1401', 'ST0761Φ11.5×16×90°×Φ14×103', '非标阶梯硬钻', '1', 'L=103 L4=16', '个', 'Φ11.5-16/90°(T1012)', '');
INSERT INTO `zuchengmingxi` VALUES ('1402', 'ST0765Φ8.8×22×120°×Φ12×103', '非标阶梯硬钻', '1', 'L=103 L4=16', '个', 'Φ8.8-22/90°(T1014)', '');
INSERT INTO `zuchengmingxi` VALUES ('1403', 'TM870.2.1-549576 mod（看不见）', '阶梯刀杆', '1', 'L=117.4 L4=61.4', '个', 'Φ20.5-30/90°(T1018)', '');
