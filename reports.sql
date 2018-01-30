/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : reports

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-01-30 10:30:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `data_info`
-- ----------------------------
DROP TABLE IF EXISTS `data_info`;
CREATE TABLE `data_info` (
  `data_id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `db_id` varchar(64) DEFAULT NULL COMMENT '数据源ID',
  `data_name` varchar(100) DEFAULT NULL COMMENT '数据名称',
  `data_sql` varchar(400) DEFAULT '' COMMENT 'sql串',
  `result` text COMMENT '数据',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_info
-- ----------------------------

-- ----------------------------
-- Table structure for `db_info`
-- ----------------------------
DROP TABLE IF EXISTS `db_info`;
CREATE TABLE `db_info` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `db_name` varchar(200) DEFAULT NULL,
  `db_type` varchar(100) DEFAULT NULL,
  `db_address` varchar(100) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_info
-- ----------------------------
INSERT INTO `db_info` VALUES ('DB0003', '临汾民情日志', 'MySQL', 'jdbc:mysql://localhost:3306/lfpc', 'root', '111111', '1', null);
INSERT INTO `db_info` VALUES ('DB0004', '本地数据库', 'MySQL', 'jdbc:mysql://localhost:3306/reports', 'root', '111111', '1', null);

-- ----------------------------
-- Table structure for `header_detail`
-- ----------------------------
DROP TABLE IF EXISTS `header_detail`;
CREATE TABLE `header_detail` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `header_id` varchar(64) DEFAULT NULL,
  `key_name` varchar(64) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `orders` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of header_detail
-- ----------------------------
INSERT INTO `header_detail` VALUES ('000e87a9-3889-44a0-aa79-702f414def4b', 'HD0004', '0', '硕士', '0');
INSERT INTO `header_detail` VALUES ('0602eb29-5c70-4e59-9f10-30c8158afc3d', 'HD0004', '1', '本科', '1');
INSERT INTO `header_detail` VALUES ('06e571a4-f79a-43c9-b880-8844dfccf347', 'HD0007', '保德路425弄居委会', '保德路425弄居委会', '6');
INSERT INTO `header_detail` VALUES ('1dc18f83-3831-452b-ac1d-8f503852211f', 'HD0004', '2', '大专', '2');
INSERT INTO `header_detail` VALUES ('5e785912-4b39-4619-a5c5-bf6e97753132', 'HD0003', '1', '男', '0');
INSERT INTO `header_detail` VALUES ('7879f80b-1b73-4de6-b12b-78d1e08155b4', 'HD0007', '汾西路261弄居委会', '汾西路261弄居委会', '3');
INSERT INTO `header_detail` VALUES ('93d0bd61-bfa3-4e38-b309-da6d839a4f40', 'HD0007', '闻喜路555弄居委会', '闻喜路555弄居委会', '10');
INSERT INTO `header_detail` VALUES ('94005e9b-9028-498e-a696-d8685a22cd89', 'HD0007', '临汾路99弄居委会', '临汾路99弄居委会', '1');
INSERT INTO `header_detail` VALUES ('a242b04d-9e20-48ff-a38a-36485fea58cb', 'HD0007', '临汾路375弄居委会', '临汾路375弄居委会', '9');
INSERT INTO `header_detail` VALUES ('a36c42ab-eb3a-45eb-838c-9382d3ee1534', 'HD0007', '景凤路520弄居委会', '景凤路520弄居委会', '8');
INSERT INTO `header_detail` VALUES ('a7e748a4-492b-413d-b9c1-2c010502eb57', 'HD0007', '闻喜路251弄居委会', '闻喜路251弄居委会', '5');
INSERT INTO `header_detail` VALUES ('cc4a24f6-5410-4c4c-9912-a3e23abb62e6', 'HD0007', '场中路1011弄居委会', '场中路1011弄居委会', '2');
INSERT INTO `header_detail` VALUES ('df9796e7-60e3-438a-8b28-e541fe2dc16a', 'HD0007', '临汾路380弄居委会', '临汾路380弄居委会', '0');
INSERT INTO `header_detail` VALUES ('e32668a9-af22-4f5b-8569-ea6c3a368c3e', 'HD0003', '2', '女', '1');
INSERT INTO `header_detail` VALUES ('e8c9308c-b0d7-4541-857a-cf944860d68b', 'HD0007', '岭南路700弄居委会', '岭南路700弄居委会', '7');
INSERT INTO `header_detail` VALUES ('e9ced9a7-e0e5-4932-8d95-fb5ac3f2dcf0', 'HD0007', '汾西路87弄居委会', '汾西路87弄居委会', '4');

-- ----------------------------
-- Table structure for `header_info`
-- ----------------------------
DROP TABLE IF EXISTS `header_info`;
CREATE TABLE `header_info` (
  `header_id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `header_dm` varchar(200) DEFAULT NULL,
  `header_name` varchar(200) DEFAULT NULL COMMENT '表头名称',
  PRIMARY KEY (`header_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of header_info
-- ----------------------------
INSERT INTO `header_info` VALUES ('HD0003', 'xbdm', '性别');
INSERT INTO `header_info` VALUES ('HD0004', 'xldm', '学历');
INSERT INTO `header_info` VALUES ('HD0007', 'jwh', '居委会');

-- ----------------------------
-- Table structure for `num_info`
-- ----------------------------
DROP TABLE IF EXISTS `num_info`;
CREATE TABLE `num_info` (
  `num_id` varchar(64) NOT NULL DEFAULT '',
  `num_pre` varchar(50) NOT NULL DEFAULT '',
  `num_len` int(11) DEFAULT '0',
  `num_now` int(11) DEFAULT '0',
  PRIMARY KEY (`num_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of num_info
-- ----------------------------
INSERT INTO `num_info` VALUES ('DB', '', '0', '4');
INSERT INTO `num_info` VALUES ('DT', '', '0', '3');
INSERT INTO `num_info` VALUES ('HD', '', '0', '7');
INSERT INTO `num_info` VALUES ('RT', 'RT', '4', '5');

-- ----------------------------
-- Table structure for `person_info`
-- ----------------------------
DROP TABLE IF EXISTS `person_info`;
CREATE TABLE `person_info` (
  `rk_id` varchar(64) NOT NULL COMMENT 'rk_id',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `xbdm` varchar(10) DEFAULT NULL COMMENT '性别代码',
  `xbhz` varchar(10) DEFAULT NULL COMMENT '性别汉字',
  `csrq` date DEFAULT NULL COMMENT '出生日期',
  `mzdm` varchar(50) DEFAULT NULL COMMENT '民族代码',
  `mzhz` varchar(50) DEFAULT NULL COMMENT '民族汉字',
  `xldm` varchar(50) DEFAULT NULL COMMENT '学历代码',
  `xlhz` varchar(50) DEFAULT NULL COMMENT '学历汉字',
  `jwh` varchar(200) DEFAULT NULL COMMENT '居住地居委会',
  PRIMARY KEY (`rk_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人口基本信息表';

-- ----------------------------
-- Records of person_info
-- ----------------------------
INSERT INTO `person_info` VALUES ('07038651-e55d-11e7-b630-7ff769a37e5a', '俞凌杰', '1', '男性', '1980-11-24', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad62-e55d-11e7-b630-7ff769a37e5a', '朱月明', '2', '女性', '1980-09-30', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad63-e55d-11e7-b630-7ff769a37e5a', '刘敬凤', '2', '女性', '1961-09-01', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad64-e55d-11e7-b630-7ff769a37e5a', '杨栋', '1', '男性', '1987-09-24', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad65-e55d-11e7-b630-7ff769a37e5a', '杨国华', '1', '男性', '1956-07-27', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad66-e55d-11e7-b630-7ff769a37e5a', '王也兰', '2', '女性', '1957-08-09', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad67-e55d-11e7-b630-7ff769a37e5a', '顾良斌', '1', '男性', '1956-06-06', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad68-e55d-11e7-b630-7ff769a37e5a', '韩良知', '1', '男性', '1932-11-01', '03', '回族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad69-e55d-11e7-b630-7ff769a37e5a', '韩世平', '1', '男性', '1967-06-21', '03', '回族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad6a-e55d-11e7-b630-7ff769a37e5a', '韩一一', '2', '女性', '2011-01-11', '03', '回族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad6b-e55d-11e7-b630-7ff769a37e5a', '顾倍莲', '2', '女性', '1974-08-04', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad6c-e55d-11e7-b630-7ff769a37e5a', '姚君昊', '1', '男性', '2012-01-24', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad6d-e55d-11e7-b630-7ff769a37e5a', '姚金林', '1', '男性', '1941-01-03', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad6e-e55d-11e7-b630-7ff769a37e5a', '张龙兰', '2', '女性', '1946-03-16', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad6f-e55d-11e7-b630-7ff769a37e5a', '姚薇', '2', '女性', '1975-12-26', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad70-e55d-11e7-b630-7ff769a37e5a', '姚蕾', '2', '女性', '1979-07-21', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad71-e55d-11e7-b630-7ff769a37e5a', '盛佳颖', '2', '女性', '2006-04-05', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad72-e55d-11e7-b630-7ff769a37e5a', '孟昭申', '2', '女性', '1951-09-04', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad73-e55d-11e7-b630-7ff769a37e5a', '王盛瑛', '2', '女性', '1978-03-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad74-e55d-11e7-b630-7ff769a37e5a', '盛志刚', '1', '男性', '1974-05-29', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad75-e55d-11e7-b630-7ff769a37e5a', '王顺良', '1', '男性', '1951-06-12', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad76-e55d-11e7-b630-7ff769a37e5a', '周瑜哲', '1', '男性', '2017-02-21', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad77-e55d-11e7-b630-7ff769a37e5a', '周凤英', '2', '女性', '1953-10-02', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad78-e55d-11e7-b630-7ff769a37e5a', '周龙生', '1', '男性', '1952-06-29', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad79-e55d-11e7-b630-7ff769a37e5a', '周瑜晟', '1', '男性', '2010-02-10', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad7a-e55d-11e7-b630-7ff769a37e5a', '周骏', '1', '男性', '1979-01-24', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad7b-e55d-11e7-b630-7ff769a37e5a', '张峰', '1', '男性', '1978-06-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad7c-e55d-11e7-b630-7ff769a37e5a', '江竹珺', '2', '女性', '1979-08-09', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad7d-e55d-11e7-b630-7ff769a37e5a', '张隽皓', '1', '男性', '2006-04-03', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad7e-e55d-11e7-b630-7ff769a37e5a', '张惠英', '2', '女性', '1952-04-24', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad7f-e55d-11e7-b630-7ff769a37e5a', '俞嘉泓', '1', '男性', '2016-08-31', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad80-e55d-11e7-b630-7ff769a37e5a', '刘伟', '1', '男性', '1958-08-10', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad81-e55d-11e7-b630-7ff769a37e5a', '吴明智', '2', '女性', '1958-02-21', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad82-e55d-11e7-b630-7ff769a37e5a', '胡绒花', '2', '女性', '1934-12-27', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad83-e55d-11e7-b630-7ff769a37e5a', '孙晓璐', '2', '女性', '1983-03-28', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad84-e55d-11e7-b630-7ff769a37e5a', '万宛辰', '2', '女性', '2014-05-29', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad85-e55d-11e7-b630-7ff769a37e5a', '陈文彪', '1', '男性', '1939-07-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad86-e55d-11e7-b630-7ff769a37e5a', '宗小龙', '2', '女性', '1940-12-02', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad87-e55d-11e7-b630-7ff769a37e5a', '王平', '1', '男性', '1947-10-16', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad88-e55d-11e7-b630-7ff769a37e5a', '王雨阑', '2', '女性', '1975-10-07', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad89-e55d-11e7-b630-7ff769a37e5a', '仲元辰', '2', '女性', '2000-02-14', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad8a-e55d-11e7-b630-7ff769a37e5a', '龚坚', '2', '女性', '1946-10-04', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad8b-e55d-11e7-b630-7ff769a37e5a', '蔡继红', '2', '女性', '1966-12-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad8c-e55d-11e7-b630-7ff769a37e5a', '林春江', '1', '男性', '1963-03-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703ad8d-e55d-11e7-b630-7ff769a37e5a', '王太平', '1', '男性', '1956-02-18', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d49e-e55d-11e7-b630-7ff769a37e5a', '朱佩英', '2', '女性', '1956-02-29', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d49f-e55d-11e7-b630-7ff769a37e5a', '周友海', '1', '男性', '1986-03-25', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a0-e55d-11e7-b630-7ff769a37e5a', '周雅雯', '2', '女性', '2008-10-06', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a1-e55d-11e7-b630-7ff769a37e5a', '王星懿', '2', '女性', '2010-05-08', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a2-e55d-11e7-b630-7ff769a37e5a', '龚佳', '2', '女性', '1983-01-26', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a3-e55d-11e7-b630-7ff769a37e5a', '曹孝和', '2', '女性', '1933-08-29', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a4-e55d-11e7-b630-7ff769a37e5a', '张伟强', '1', '男性', '1957-11-17', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a5-e55d-11e7-b630-7ff769a37e5a', '周方红', '2', '女性', '1957-12-21', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a6-e55d-11e7-b630-7ff769a37e5a', '张欣毅', '1', '男性', '1988-08-09', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a7-e55d-11e7-b630-7ff769a37e5a', '张慧梅', '2', '女性', '1962-05-26', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a8-e55d-11e7-b630-7ff769a37e5a', '朱宇轩', '1', '男性', '1999-06-26', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4a9-e55d-11e7-b630-7ff769a37e5a', '朱继荣', '1', '男性', '1972-07-17', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4aa-e55d-11e7-b630-7ff769a37e5a', '刘翠薇', '2', '女性', '1972-02-24', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4ab-e55d-11e7-b630-7ff769a37e5a', '王麒', '1', '男性', '1981-04-16', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4ac-e55d-11e7-b630-7ff769a37e5a', '王恩强', '1', '男性', '1953-04-03', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4ad-e55d-11e7-b630-7ff769a37e5a', '王天宇', '1', '男性', '2005-05-25', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4ae-e55d-11e7-b630-7ff769a37e5a', '李敏华', '2', '女性', '1959-01-13', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4af-e55d-11e7-b630-7ff769a37e5a', '骆永平', '1', '男性', '1959-08-24', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b0-e55d-11e7-b630-7ff769a37e5a', '骆晓曦', '1', '男性', '1991-05-04', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b1-e55d-11e7-b630-7ff769a37e5a', '周斌', '1', '男性', '1978-06-27', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b2-e55d-11e7-b630-7ff769a37e5a', '周欣妍', '2', '女性', '2008-01-02', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b3-e55d-11e7-b630-7ff769a37e5a', '徐恒亮', '1', '男性', '1957-02-25', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b4-e55d-11e7-b630-7ff769a37e5a', '徐广信', '1', '男性', '1929-12-11', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b5-e55d-11e7-b630-7ff769a37e5a', '刘梅芝', '2', '女性', '1958-02-24', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b6-e55d-11e7-b630-7ff769a37e5a', '徐昕', '2', '女性', '1989-08-03', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b7-e55d-11e7-b630-7ff769a37e5a', '张春鸿', '1', '男性', '1952-04-01', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b8-e55d-11e7-b630-7ff769a37e5a', '顾云芬', '2', '女性', '1954-08-14', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4b9-e55d-11e7-b630-7ff769a37e5a', '余超', '1', '男性', '1975-08-09', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4ba-e55d-11e7-b630-7ff769a37e5a', '张薇兰', '2', '女性', '1977-02-17', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4bb-e55d-11e7-b630-7ff769a37e5a', '余张悦', '2', '女性', '2006-02-11', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4bc-e55d-11e7-b630-7ff769a37e5a', '张燕华', '2', '女性', '1955-12-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4bd-e55d-11e7-b630-7ff769a37e5a', '龚艳', '2', '女性', '1980-09-30', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4be-e55d-11e7-b630-7ff769a37e5a', '吴美伦', '2', '女性', '2016-12-22', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4bf-e55d-11e7-b630-7ff769a37e5a', '陈婷兰', '2', '女性', '1963-04-02', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c0-e55d-11e7-b630-7ff769a37e5a', '张月娥', '2', '女性', '1934-01-03', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c1-e55d-11e7-b630-7ff769a37e5a', '沈伯平', '1', '男性', '1962-09-27', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c2-e55d-11e7-b630-7ff769a37e5a', '沈晟佳', '2', '女性', '1991-10-01', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c3-e55d-11e7-b630-7ff769a37e5a', '林智良', '1', '男性', '1977-11-22', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c4-e55d-11e7-b630-7ff769a37e5a', '张平', '1', '男性', '1964-12-12', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c5-e55d-11e7-b630-7ff769a37e5a', '李雁', '2', '女性', '1970-02-10', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c6-e55d-11e7-b630-7ff769a37e5a', '顾始建', '2', '女性', '1953-10-13', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c7-e55d-11e7-b630-7ff769a37e5a', '孟振明', '1', '男性', '1952-10-08', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c8-e55d-11e7-b630-7ff769a37e5a', '王翠英', '2', '女性', '1933-04-20', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4c9-e55d-11e7-b630-7ff769a37e5a', '贾佩华', '2', '女性', '1958-07-28', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4ca-e55d-11e7-b630-7ff769a37e5a', '任惠忠', '1', '男性', '1954-07-16', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4cb-e55d-11e7-b630-7ff769a37e5a', '李梅君', '2', '女性', '1953-01-27', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4cc-e55d-11e7-b630-7ff769a37e5a', '王新华', '1', '男性', '1953-01-08', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4cd-e55d-11e7-b630-7ff769a37e5a', '冯隽', '1', '男性', '1998-09-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4ce-e55d-11e7-b630-7ff769a37e5a', '冯潇', '2', '女性', '1998-09-15', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4cf-e55d-11e7-b630-7ff769a37e5a', '冯敏', '1', '男性', '1962-01-08', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d0-e55d-11e7-b630-7ff769a37e5a', '朱爱玲', '2', '女性', '1962-08-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d1-e55d-11e7-b630-7ff769a37e5a', '王在华', '2', '女性', '1957-01-24', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d2-e55d-11e7-b630-7ff769a37e5a', '谢孝鹏', '1', '男性', '1951-05-17', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d3-e55d-11e7-b630-7ff769a37e5a', '谢彦元', '1', '男性', '1983-03-26', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d4-e55d-11e7-b630-7ff769a37e5a', '虞肖米', '2', '女性', '1949-02-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d5-e55d-11e7-b630-7ff769a37e5a', '任潮高', '1', '男性', '1947-06-05', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d6-e55d-11e7-b630-7ff769a37e5a', '任翔', '1', '男性', '1973-03-11', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d7-e55d-11e7-b630-7ff769a37e5a', '任子傲', '2', '女性', '2008-02-14', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d8-e55d-11e7-b630-7ff769a37e5a', '朱章裔', '2', '女性', '2002-12-03', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4d9-e55d-11e7-b630-7ff769a37e5a', '叶圣冲', '1', '男性', '1987-09-16', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4da-e55d-11e7-b630-7ff769a37e5a', '叶庆', '1', '男性', '1958-12-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4db-e55d-11e7-b630-7ff769a37e5a', '徐安妮', '2', '女性', '1962-04-23', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4dc-e55d-11e7-b630-7ff769a37e5a', '陈诗佳', '2', '女性', '2000-07-18', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4dd-e55d-11e7-b630-7ff769a37e5a', '周亚琴', '2', '女性', '1972-11-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4de-e55d-11e7-b630-7ff769a37e5a', '陈哲伦', '1', '男性', '1963-06-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703d4df-e55d-11e7-b630-7ff769a37e5a', '查固水', '1', '男性', '1986-12-13', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf0-e55d-11e7-b630-7ff769a37e5a', '查友庆', '1', '男性', '2010-08-02', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf1-e55d-11e7-b630-7ff769a37e5a', '余宇', '2', '女性', '1993-06-17', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf2-e55d-11e7-b630-7ff769a37e5a', '李文清', '2', '女性', '1969-04-11', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf3-e55d-11e7-b630-7ff769a37e5a', '杨忆琳', '2', '女性', '1992-01-07', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf4-e55d-11e7-b630-7ff769a37e5a', '余海龙', '1', '男性', '1976-10-31', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf5-e55d-11e7-b630-7ff769a37e5a', '沈敏洁', '2', '女性', '1980-05-30', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf6-e55d-11e7-b630-7ff769a37e5a', '朱春晨', '2', '女性', '1989-07-18', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf7-e55d-11e7-b630-7ff769a37e5a', '夏贵银', '1', '男性', '1988-10-01', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf8-e55d-11e7-b630-7ff769a37e5a', '吴永高', '1', '男性', '1973-07-12', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faf9-e55d-11e7-b630-7ff769a37e5a', '黄建国', '1', '男性', '1972-07-20', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fafa-e55d-11e7-b630-7ff769a37e5a', '袁俊华', '2', '女性', '1977-09-02', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fafb-e55d-11e7-b630-7ff769a37e5a', '冯策', '1', '男性', '1972-02-10', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fafc-e55d-11e7-b630-7ff769a37e5a', '冯庆丰', '1', '男性', '2002-04-04', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fafd-e55d-11e7-b630-7ff769a37e5a', '杨新万', '1', '男性', '1950-01-20', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fafe-e55d-11e7-b630-7ff769a37e5a', '杨珺', '1', '男性', '1981-05-20', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703faff-e55d-11e7-b630-7ff769a37e5a', '刘芳', '2', '女性', '1978-05-22', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb00-e55d-11e7-b630-7ff769a37e5a', '王刘娣', '2', '女性', '1952-09-19', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb01-e55d-11e7-b630-7ff769a37e5a', '何海松', '1', '男性', '1968-02-07', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb02-e55d-11e7-b630-7ff769a37e5a', '陈洪飙', '1', '男性', '1971-06-17', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb03-e55d-11e7-b630-7ff769a37e5a', '吴迪高', '1', '男性', '1963-11-21', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb04-e55d-11e7-b630-7ff769a37e5a', '吴林芳', '2', '女性', '1997-11-23', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb05-e55d-11e7-b630-7ff769a37e5a', '吴汶家', '2', '女性', '1988-11-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb06-e55d-11e7-b630-7ff769a37e5a', '金小彩', '2', '女性', '1964-06-05', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb07-e55d-11e7-b630-7ff769a37e5a', '刘鸿雁', '2', '女性', '1974-11-07', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb08-e55d-11e7-b630-7ff769a37e5a', '王怡', '2', '女性', '1971-03-06', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb09-e55d-11e7-b630-7ff769a37e5a', '颜如辛', '2', '女性', '2000-03-30', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb0a-e55d-11e7-b630-7ff769a37e5a', '陆羿霖', '1', '男性', '2007-05-28', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb0b-e55d-11e7-b630-7ff769a37e5a', '陆威', '1', '男性', '1981-12-15', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb0c-e55d-11e7-b630-7ff769a37e5a', '谢杏妹', '2', '女性', '1953-01-31', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb0d-e55d-11e7-b630-7ff769a37e5a', '周奕宏', '1', '男性', '2014-04-01', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb0e-e55d-11e7-b630-7ff769a37e5a', '陆奕辰', '1', '男性', '2014-04-01', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb0f-e55d-11e7-b630-7ff769a37e5a', '陆炳兴', '1', '男性', '1956-07-07', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb10-e55d-11e7-b630-7ff769a37e5a', '周洁', '2', '女性', '1982-09-24', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb11-e55d-11e7-b630-7ff769a37e5a', '王从贵', '1', '男性', '1985-09-09', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb12-e55d-11e7-b630-7ff769a37e5a', '戴素红', '2', '女性', '1954-09-13', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb13-e55d-11e7-b630-7ff769a37e5a', '严靓', '2', '女性', '1978-11-21', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb14-e55d-11e7-b630-7ff769a37e5a', '罗新珍', '2', '女性', '1951-08-09', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb15-e55d-11e7-b630-7ff769a37e5a', '胥多', '1', '男性', '2006-12-09', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb16-e55d-11e7-b630-7ff769a37e5a', '胥俊', '1', '男性', '1973-06-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb17-e55d-11e7-b630-7ff769a37e5a', '王粉珍', '2', '女性', '1953-02-14', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb18-e55d-11e7-b630-7ff769a37e5a', '陈舅生', '1', '男性', '1950-09-07', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb19-e55d-11e7-b630-7ff769a37e5a', '陈禹翔', '1', '男性', '2005-10-17', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb1a-e55d-11e7-b630-7ff769a37e5a', '黄伊鑫', '2', '女性', '2015-12-04', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb1b-e55d-11e7-b630-7ff769a37e5a', '黄伊铃', '2', '女性', '2015-12-04', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb1c-e55d-11e7-b630-7ff769a37e5a', '黄居翔', '1', '男性', '1985-04-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb1d-e55d-11e7-b630-7ff769a37e5a', '符旭光', '1', '男性', '1985-01-08', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb1e-e55d-11e7-b630-7ff769a37e5a', '胡桂花', '2', '女性', '1944-03-09', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb1f-e55d-11e7-b630-7ff769a37e5a', '朱佰龙', '1', '男性', '1941-03-17', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb20-e55d-11e7-b630-7ff769a37e5a', '崔萍', '2', '女性', '1964-07-06', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb21-e55d-11e7-b630-7ff769a37e5a', '施卫兵', '1', '男性', '1961-11-18', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb22-e55d-11e7-b630-7ff769a37e5a', '虞潇晓', '2', '女性', '2017-05-18', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb23-e55d-11e7-b630-7ff769a37e5a', '虞凌峰', '1', '男性', '1952-06-17', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb24-e55d-11e7-b630-7ff769a37e5a', '张惠芬', '2', '女性', '1954-11-06', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb25-e55d-11e7-b630-7ff769a37e5a', '虞鸣', '1', '男性', '1981-02-20', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb26-e55d-11e7-b630-7ff769a37e5a', '罗伟忠', '1', '男性', '1968-04-12', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb27-e55d-11e7-b630-7ff769a37e5a', '罗辛遥', '1', '男性', '1995-06-23', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb28-e55d-11e7-b630-7ff769a37e5a', '王友忠', '1', '男性', '1968-12-17', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0703fb29-e55d-11e7-b630-7ff769a37e5a', '张鑫荣', '1', '男性', '1943-05-28', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704223a-e55d-11e7-b630-7ff769a37e5a', '陈敏', '2', '女性', '1947-11-30', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704223b-e55d-11e7-b630-7ff769a37e5a', '张岚', '2', '女性', '1973-12-18', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704223c-e55d-11e7-b630-7ff769a37e5a', '王彧瀚', '1', '男性', '2001-05-30', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704223d-e55d-11e7-b630-7ff769a37e5a', '顾伟', '1', '男性', '1975-03-22', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704223e-e55d-11e7-b630-7ff769a37e5a', '陆进琴', '2', '女性', '1956-05-25', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704223f-e55d-11e7-b630-7ff769a37e5a', '余洁平', '2', '女性', '1970-01-25', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042240-e55d-11e7-b630-7ff769a37e5a', '马冬庆', '1', '男性', '1964-01-08', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042241-e55d-11e7-b630-7ff769a37e5a', '马沁蕊', '2', '女性', '1993-07-19', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042242-e55d-11e7-b630-7ff769a37e5a', '林子卿', '1', '男性', '1995-01-26', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042243-e55d-11e7-b630-7ff769a37e5a', '林淮', '1', '男性', '1959-05-08', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042244-e55d-11e7-b630-7ff769a37e5a', '钱天生', '1', '男性', '1953-04-02', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042245-e55d-11e7-b630-7ff769a37e5a', '刘想', '1', '男性', '1982-01-02', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042246-e55d-11e7-b630-7ff769a37e5a', '张卫萍', '2', '女性', '1958-04-28', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042247-e55d-11e7-b630-7ff769a37e5a', '王先洪', '1', '男性', '1955-11-01', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042248-e55d-11e7-b630-7ff769a37e5a', '刘蓉蓉', '2', '女性', '1958-09-20', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042249-e55d-11e7-b630-7ff769a37e5a', '陈秀云', '2', '女性', '1943-07-19', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704224a-e55d-11e7-b630-7ff769a37e5a', '李晶', '2', '女性', '1969-03-16', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704224b-e55d-11e7-b630-7ff769a37e5a', '王景堂', '1', '男性', '1963-04-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704224c-e55d-11e7-b630-7ff769a37e5a', '王晓鹏', '1', '男性', '1991-01-18', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704224d-e55d-11e7-b630-7ff769a37e5a', '沙燕飞', '1', '男性', '1960-11-16', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704224e-e55d-11e7-b630-7ff769a37e5a', '蒋玉丽', '2', '女性', '1960-07-23', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704224f-e55d-11e7-b630-7ff769a37e5a', '沙金特', '1', '男性', '1991-05-26', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042250-e55d-11e7-b630-7ff769a37e5a', '潘沁', '2', '女性', '1989-02-10', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042251-e55d-11e7-b630-7ff769a37e5a', '顾雪兰', '2', '女性', '1962-11-23', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042252-e55d-11e7-b630-7ff769a37e5a', '张勋', '1', '男性', '1963-07-02', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042253-e55d-11e7-b630-7ff769a37e5a', '张颢', '2', '女性', '1989-09-04', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042254-e55d-11e7-b630-7ff769a37e5a', '张武华', '2', '女性', '1948-11-25', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042255-e55d-11e7-b630-7ff769a37e5a', '张丽萍', '2', '女性', '1979-02-05', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042256-e55d-11e7-b630-7ff769a37e5a', '江浩源', '1', '男性', '1994-01-20', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042257-e55d-11e7-b630-7ff769a37e5a', '江伟', '1', '男性', '1968-10-25', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042258-e55d-11e7-b630-7ff769a37e5a', '季忠', '2', '女性', '1968-10-07', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042259-e55d-11e7-b630-7ff769a37e5a', '蔡向宇', '1', '男性', '1992-10-30', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5c8-e55d-11e7-b630-7ff769a37e5a', '韦倩', '2', '女性', '1992-08-20', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5c9-e55d-11e7-b630-7ff769a37e5a', '顾晶捷', '1', '男性', '1990-08-31', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5ca-e55d-11e7-b630-7ff769a37e5a', '顾利达', '1', '男性', '1963-10-29', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5cb-e55d-11e7-b630-7ff769a37e5a', '郑丹卿', '2', '女性', '1963-11-17', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5cd-e55d-11e7-b630-7ff769a37e5a', '袁初升', '1', '男性', '1951-12-29', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5ce-e55d-11e7-b630-7ff769a37e5a', '袁嘉', '1', '男性', '1982-12-18', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5cf-e55d-11e7-b630-7ff769a37e5a', '张秋萍', '2', '女性', '1955-08-04', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d0-e55d-11e7-b630-7ff769a37e5a', '赵慧明', '1', '男性', '1979-11-24', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d1-e55d-11e7-b630-7ff769a37e5a', '李清良', '1', '男性', '1945-01-21', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d2-e55d-11e7-b630-7ff769a37e5a', '李琥', '1', '男性', '1974-11-03', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d3-e55d-11e7-b630-7ff769a37e5a', '李一心', '1', '男性', '1949-12-18', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d4-e55d-11e7-b630-7ff769a37e5a', '王秀珠', '2', '女性', '1953-06-23', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d5-e55d-11e7-b630-7ff769a37e5a', '李子嶔', '2', '女性', '1984-09-11', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d6-e55d-11e7-b630-7ff769a37e5a', '王慧如', '2', '女性', '1951-01-05', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d7-e55d-11e7-b630-7ff769a37e5a', '葛文俊', '1', '男性', '1987-06-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d8-e55d-11e7-b630-7ff769a37e5a', '郭晓', '1', '男性', '1993-10-26', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5d9-e55d-11e7-b630-7ff769a37e5a', '郭伟', '1', '男性', '1968-02-23', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5da-e55d-11e7-b630-7ff769a37e5a', '丁怿瑶', '2', '女性', '1969-06-16', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5db-e55d-11e7-b630-7ff769a37e5a', '施中益', '1', '男性', '1946-07-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5dc-e55d-11e7-b630-7ff769a37e5a', '范玉贞', '2', '女性', '1947-06-12', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5dd-e55d-11e7-b630-7ff769a37e5a', '吉莉', '2', '女性', '1981-12-06', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5de-e55d-11e7-b630-7ff769a37e5a', '邵景', '1', '男性', '1974-09-21', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5df-e55d-11e7-b630-7ff769a37e5a', '沙赛娟', '2', '女性', '1978-10-27', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e0-e55d-11e7-b630-7ff769a37e5a', '邵圣淏', '1', '男性', '2005-10-11', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e1-e55d-11e7-b630-7ff769a37e5a', '李佳萱', '2', '女性', '2015-03-02', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e2-e55d-11e7-b630-7ff769a37e5a', '李益鸣', '1', '男性', '1979-11-17', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e3-e55d-11e7-b630-7ff769a37e5a', '张蓉蓉', '2', '女性', '1956-04-14', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e4-e55d-11e7-b630-7ff769a37e5a', '张庆骐', '1', '男性', '1954-12-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e5-e55d-11e7-b630-7ff769a37e5a', '舒志强', '1', '男性', '1952-02-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e6-e55d-11e7-b630-7ff769a37e5a', '舒洋', '2', '女性', '1992-04-30', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e7-e55d-11e7-b630-7ff769a37e5a', '余小荣', '2', '女性', '1951-12-26', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e8-e55d-11e7-b630-7ff769a37e5a', '沈申光', '1', '男性', '1948-08-09', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5e9-e55d-11e7-b630-7ff769a37e5a', '许亚玲', '2', '女性', '1949-11-25', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5ea-e55d-11e7-b630-7ff769a37e5a', '周朗辰', '1', '男性', '2007-11-11', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5eb-e55d-11e7-b630-7ff769a37e5a', '沈燕', '2', '女性', '1976-02-01', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5ec-e55d-11e7-b630-7ff769a37e5a', '周时潇', '1', '男性', '1977-05-14', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5ed-e55d-11e7-b630-7ff769a37e5a', '钱曼莉', '2', '女性', '1981-07-20', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5ee-e55d-11e7-b630-7ff769a37e5a', '刘一未', '2', '女性', '1997-11-17', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5ef-e55d-11e7-b630-7ff769a37e5a', '刘克明', '1', '男性', '1931-11-08', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704e5f0-e55d-11e7-b630-7ff769a37e5a', '毛国睿', '1', '男性', '2016-10-21', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704225a-e55d-11e7-b630-7ff769a37e5a', '蔡晨', '1', '男性', '1962-09-26', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704225b-e55d-11e7-b630-7ff769a37e5a', '黄亚玲', '2', '女性', '1963-09-01', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704225c-e55d-11e7-b630-7ff769a37e5a', '孙毅', '1', '男性', '1999-04-30', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704225d-e55d-11e7-b630-7ff769a37e5a', '孙建生', '1', '男性', '1972-07-18', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704225e-e55d-11e7-b630-7ff769a37e5a', '邓海燕', '2', '女性', '1975-01-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704225f-e55d-11e7-b630-7ff769a37e5a', '孙建平', '2', '女性', '1975-04-19', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042260-e55d-11e7-b630-7ff769a37e5a', '王志平', '2', '女性', '1973-06-20', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042261-e55d-11e7-b630-7ff769a37e5a', '胡勤康', '1', '男性', '1974-10-30', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042262-e55d-11e7-b630-7ff769a37e5a', '胡康烨', '1', '男性', '2001-12-15', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042263-e55d-11e7-b630-7ff769a37e5a', '陆伟智', '2', '女性', '1949-08-29', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042264-e55d-11e7-b630-7ff769a37e5a', '吴关喜', '1', '男性', '1950-06-13', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042265-e55d-11e7-b630-7ff769a37e5a', '柳建民', '1', '男性', '1953-11-28', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042266-e55d-11e7-b630-7ff769a37e5a', '柳慧雯', '2', '女性', '1982-12-04', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042267-e55d-11e7-b630-7ff769a37e5a', '陈春花', '2', '女性', '1928-02-08', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042268-e55d-11e7-b630-7ff769a37e5a', '佘玉英', '2', '女性', '1958-02-03', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042269-e55d-11e7-b630-7ff769a37e5a', '罗文跃', '1', '男性', '1955-06-23', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704226a-e55d-11e7-b630-7ff769a37e5a', '罗佩琴', '2', '女性', '1983-09-10', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704226b-e55d-11e7-b630-7ff769a37e5a', '陆家盛', '1', '男性', '1949-10-08', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704226c-e55d-11e7-b630-7ff769a37e5a', '陈志莲', '2', '女性', '1954-12-28', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704226d-e55d-11e7-b630-7ff769a37e5a', '崔祥奕', '1', '男性', '2013-12-19', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704226e-e55d-11e7-b630-7ff769a37e5a', '顾金妍', '2', '女性', '1982-05-17', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704226f-e55d-11e7-b630-7ff769a37e5a', '金菊萍', '2', '女性', '1957-10-13', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042270-e55d-11e7-b630-7ff769a37e5a', '顾富兴', '1', '男性', '1955-03-09', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042271-e55d-11e7-b630-7ff769a37e5a', '张翠琴', '2', '女性', '1958-07-02', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042272-e55d-11e7-b630-7ff769a37e5a', '陈维迅', '1', '男性', '2005-09-19', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042273-e55d-11e7-b630-7ff769a37e5a', '李佳', '2', '女性', '1983-06-12', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042274-e55d-11e7-b630-7ff769a37e5a', '陈小光', '1', '男性', '1975-05-13', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042275-e55d-11e7-b630-7ff769a37e5a', '许鸣', '1', '男性', '1957-09-01', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042276-e55d-11e7-b630-7ff769a37e5a', '郑凤姣', '2', '女性', '1958-01-20', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042277-e55d-11e7-b630-7ff769a37e5a', '牛奔', '1', '男性', '1990-08-24', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07042278-e55d-11e7-b630-7ff769a37e5a', '许洁如', '2', '女性', '1987-02-02', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044989-e55d-11e7-b630-7ff769a37e5a', '辛元白', '1', '男性', '1941-10-25', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704498a-e55d-11e7-b630-7ff769a37e5a', '龚振芳', '2', '女性', '1949-03-16', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704498b-e55d-11e7-b630-7ff769a37e5a', '辛怜', '2', '女性', '1975-01-18', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704498c-e55d-11e7-b630-7ff769a37e5a', '虞嘉依', '2', '女性', '2006-09-11', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704498d-e55d-11e7-b630-7ff769a37e5a', '史梅欣', '2', '女性', '1977-02-03', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704498e-e55d-11e7-b630-7ff769a37e5a', '虞聪', '1', '男性', '1970-10-09', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704498f-e55d-11e7-b630-7ff769a37e5a', '卢佩莲', '2', '女性', '1952-10-27', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044990-e55d-11e7-b630-7ff769a37e5a', '陈孟滔', '1', '男性', '1946-02-06', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044991-e55d-11e7-b630-7ff769a37e5a', '陈颉', '1', '男性', '1979-11-18', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044992-e55d-11e7-b630-7ff769a37e5a', '沈佩根', '1', '男性', '1958-08-23', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044993-e55d-11e7-b630-7ff769a37e5a', '戴国娣', '2', '女性', '1963-01-02', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044994-e55d-11e7-b630-7ff769a37e5a', '沈雯婷', '2', '女性', '1985-12-02', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044995-e55d-11e7-b630-7ff769a37e5a', '王纪倢', '2', '女性', '1987-09-09', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044996-e55d-11e7-b630-7ff769a37e5a', '王楚震', '1', '男性', '1957-03-01', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044997-e55d-11e7-b630-7ff769a37e5a', '滕兆珍', '2', '女性', '1960-11-05', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044998-e55d-11e7-b630-7ff769a37e5a', '何洪祥', '1', '男性', '1949-03-03', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07044999-e55d-11e7-b630-7ff769a37e5a', '颜爱娥', '2', '女性', '1952-12-07', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704499a-e55d-11e7-b630-7ff769a37e5a', '陈丽萍', '2', '女性', '1966-03-19', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704499b-e55d-11e7-b630-7ff769a37e5a', '李成', '1', '男性', '1992-12-31', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704499c-e55d-11e7-b630-7ff769a37e5a', '李长根', '1', '男性', '1963-07-27', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704499d-e55d-11e7-b630-7ff769a37e5a', '黄蓉', '2', '女性', '1969-09-21', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704499e-e55d-11e7-b630-7ff769a37e5a', '梁存娥', '2', '女性', '1964-06-20', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704499f-e55d-11e7-b630-7ff769a37e5a', '吕春亮', '1', '男性', '1965-08-16', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a0-e55d-11e7-b630-7ff769a37e5a', '吕梁嬿', '2', '女性', '1990-10-09', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a1-e55d-11e7-b630-7ff769a37e5a', '唐梦奇', '2', '女性', '1975-07-06', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a2-e55d-11e7-b630-7ff769a37e5a', '张国峰', '1', '男性', '1974-02-18', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a3-e55d-11e7-b630-7ff769a37e5a', '唐瑞超', '1', '男性', '2002-02-08', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a4-e55d-11e7-b630-7ff769a37e5a', '何宇铭', '1', '男性', '2013-03-05', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a5-e55d-11e7-b630-7ff769a37e5a', '郭风蕊', '2', '女性', '1986-09-29', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a6-e55d-11e7-b630-7ff769a37e5a', '何磊', '1', '男性', '1985-03-22', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a7-e55d-11e7-b630-7ff769a37e5a', '郭初平', '1', '男性', '1971-05-03', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a8-e55d-11e7-b630-7ff769a37e5a', '陈海燕', '2', '女性', '1974-03-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449a9-e55d-11e7-b630-7ff769a37e5a', '郭浩予', '1', '男性', '2009-08-20', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449aa-e55d-11e7-b630-7ff769a37e5a', '郭梦琪', '2', '女性', '2002-11-19', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449ab-e55d-11e7-b630-7ff769a37e5a', '顾行健', '1', '男性', '1995-07-04', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449ac-e55d-11e7-b630-7ff769a37e5a', '顾光华', '1', '男性', '1961-05-30', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449ad-e55d-11e7-b630-7ff769a37e5a', '张健', '1', '男性', '1952-01-28', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449ae-e55d-11e7-b630-7ff769a37e5a', '刘兰妹', '2', '女性', '1959-08-17', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449af-e55d-11e7-b630-7ff769a37e5a', '俞淑群', '2', '女性', '1969-04-12', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b0-e55d-11e7-b630-7ff769a37e5a', '姜惠忠', '1', '男性', '1968-06-10', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b1-e55d-11e7-b630-7ff769a37e5a', '胡志彪', '1', '男性', '1954-11-22', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b2-e55d-11e7-b630-7ff769a37e5a', '朱玉英', '2', '女性', '1956-05-12', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b3-e55d-11e7-b630-7ff769a37e5a', '胡文俊', '1', '男性', '1983-08-24', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b4-e55d-11e7-b630-7ff769a37e5a', '张志丰', '1', '男性', '1981-06-25', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b5-e55d-11e7-b630-7ff769a37e5a', '朱轶', '2', '女性', '1980-12-20', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b6-e55d-11e7-b630-7ff769a37e5a', '张殊宸', '1', '男性', '2010-06-22', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b7-e55d-11e7-b630-7ff769a37e5a', '姜宏', '2', '女性', '1977-08-19', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b8-e55d-11e7-b630-7ff769a37e5a', '文伊', '1', '男性', '1976-08-27', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449b9-e55d-11e7-b630-7ff769a37e5a', '来俊凤', '2', '女性', '1976-03-27', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449ba-e55d-11e7-b630-7ff769a37e5a', '甘炳麟', '1', '男性', '1942-02-01', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449bb-e55d-11e7-b630-7ff769a37e5a', '甘时雄', '1', '男性', '1971-03-01', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449bc-e55d-11e7-b630-7ff769a37e5a', '刘敏敏', '2', '女性', '1945-08-01', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449bd-e55d-11e7-b630-7ff769a37e5a', '甘懿闻', '2', '女性', '2000-10-31', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449be-e55d-11e7-b630-7ff769a37e5a', '李留娣', '2', '女性', '1949-05-26', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449bf-e55d-11e7-b630-7ff769a37e5a', '谢在红', '1', '男性', '1945-10-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449c0-e55d-11e7-b630-7ff769a37e5a', '谢理明', '1', '男性', '1976-02-19', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449c1-e55d-11e7-b630-7ff769a37e5a', '王伟民', '1', '男性', '1954-06-04', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449c2-e55d-11e7-b630-7ff769a37e5a', '李兰英', '2', '女性', '1955-09-13', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449c3-e55d-11e7-b630-7ff769a37e5a', '陈丽萍', '2', '女性', '1958-01-02', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449c4-e55d-11e7-b630-7ff769a37e5a', '焦健华', '1', '男性', '1955-02-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449c7-e55d-11e7-b630-7ff769a37e5a', '王秀珍', '2', '女性', '1953-07-13', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449c8-e55d-11e7-b630-7ff769a37e5a', '李俊', '2', '女性', '1978-10-14', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449c9-e55d-11e7-b630-7ff769a37e5a', '李铁铭', '1', '男性', '1947-03-13', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449ca-e55d-11e7-b630-7ff769a37e5a', '向培琴', '2', '女性', '1987-01-14', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070449cb-e55d-11e7-b630-7ff769a37e5a', '徐丽华', '2', '女性', '1961-06-07', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470dc-e55d-11e7-b630-7ff769a37e5a', '向秋云', '1', '男性', '1960-06-04', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470dd-e55d-11e7-b630-7ff769a37e5a', '周子宁', '1', '男性', '2016-06-06', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470de-e55d-11e7-b630-7ff769a37e5a', '沈晓颖', '2', '女性', '1983-03-08', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470df-e55d-11e7-b630-7ff769a37e5a', '鲍勇', '1', '男性', '1975-01-05', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e0-e55d-11e7-b630-7ff769a37e5a', '吴鸿伦', '1', '男性', '1954-09-16', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e1-e55d-11e7-b630-7ff769a37e5a', '徐红', '2', '女性', '1953-03-07', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e2-e55d-11e7-b630-7ff769a37e5a', '吴心宁', '2', '女性', '1987-11-09', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e3-e55d-11e7-b630-7ff769a37e5a', '房珏', '2', '女性', '1985-12-07', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e4-e55d-11e7-b630-7ff769a37e5a', '李秀芹', '2', '女性', '1948-11-16', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e5-e55d-11e7-b630-7ff769a37e5a', '李育霖', '1', '男性', '1949-10-28', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e6-e55d-11e7-b630-7ff769a37e5a', '蒋传灿', '2', '女性', '1952-03-04', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e7-e55d-11e7-b630-7ff769a37e5a', '陈晨', '1', '男性', '1982-04-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e8-e55d-11e7-b630-7ff769a37e5a', '丁玲娣', '2', '女性', '1948-11-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470e9-e55d-11e7-b630-7ff769a37e5a', '姜志康', '1', '男性', '1944-08-06', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470ea-e55d-11e7-b630-7ff769a37e5a', '忻金宸', '1', '男性', '2012-03-02', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470eb-e55d-11e7-b630-7ff769a37e5a', '忻幸生', '1', '男性', '1952-10-02', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470ec-e55d-11e7-b630-7ff769a37e5a', '杨小琴', '2', '女性', '1954-02-11', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470ed-e55d-11e7-b630-7ff769a37e5a', '朱海东', '1', '男性', '1972-12-26', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470ee-e55d-11e7-b630-7ff769a37e5a', '蒋晗', '1', '男性', '1995-10-04', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470ef-e55d-11e7-b630-7ff769a37e5a', '黄奎明', '1', '男性', '1963-12-31', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f0-e55d-11e7-b630-7ff769a37e5a', '黄许歆', '2', '女性', '1994-09-06', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f1-e55d-11e7-b630-7ff769a37e5a', '许铁梅', '2', '女性', '1964-02-20', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f2-e55d-11e7-b630-7ff769a37e5a', '袁斌', '1', '男性', '1980-07-08', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f3-e55d-11e7-b630-7ff769a37e5a', '张小小', '2', '女性', '2009-09-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f4-e55d-11e7-b630-7ff769a37e5a', '张银樑', '1', '男性', '1950-01-18', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f5-e55d-11e7-b630-7ff769a37e5a', '陆培凤', '2', '女性', '1954-09-27', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f6-e55d-11e7-b630-7ff769a37e5a', '施秉生', '1', '男性', '1948-08-29', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f7-e55d-11e7-b630-7ff769a37e5a', '刘旻', '2', '女性', '1978-10-10', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f8-e55d-11e7-b630-7ff769a37e5a', '叶森飞', '1', '男性', '1979-10-06', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470f9-e55d-11e7-b630-7ff769a37e5a', '陈雨丝', '2', '女性', '1995-09-07', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470fa-e55d-11e7-b630-7ff769a37e5a', '陈伟庆', '1', '男性', '1962-10-05', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470fb-e55d-11e7-b630-7ff769a37e5a', '彭虹', '2', '女性', '1969-06-30', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470fc-e55d-11e7-b630-7ff769a37e5a', '陆宝娣', '2', '女性', '1947-02-08', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470fd-e55d-11e7-b630-7ff769a37e5a', '陆汀汀', '2', '女性', '1974-11-02', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('070470ff-e55d-11e7-b630-7ff769a37e5a', '杨依纯', '2', '女性', '1997-06-14', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047100-e55d-11e7-b630-7ff769a37e5a', '张一梅', '2', '女性', '1967-04-03', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047101-e55d-11e7-b630-7ff769a37e5a', '杨晓军', '1', '男性', '1969-12-15', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047102-e55d-11e7-b630-7ff769a37e5a', '纪战林', '1', '男性', '1957-01-05', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047103-e55d-11e7-b630-7ff769a37e5a', '董秋平', '2', '女性', '1956-10-01', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047104-e55d-11e7-b630-7ff769a37e5a', '张黎鸣', '1', '男性', '1979-11-25', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047105-e55d-11e7-b630-7ff769a37e5a', '高瑾', '2', '女性', '1984-08-14', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047106-e55d-11e7-b630-7ff769a37e5a', '姜波', '1', '男性', '1989-01-26', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047107-e55d-11e7-b630-7ff769a37e5a', '徐媚', '2', '女性', '1995-12-27', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047108-e55d-11e7-b630-7ff769a37e5a', '王文彬', '1', '男性', '1973-06-18', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07047109-e55d-11e7-b630-7ff769a37e5a', '姜伟', '2', '女性', '1980-06-09', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704710a-e55d-11e7-b630-7ff769a37e5a', '胡筱钰', '2', '女性', '2007-08-09', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704710b-e55d-11e7-b630-7ff769a37e5a', '胡佛虎', '2', '女性', '2010-06-01', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704710c-e55d-11e7-b630-7ff769a37e5a', '胡志明', '1', '男性', '1976-01-10', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704710d-e55d-11e7-b630-7ff769a37e5a', '王仲琪', '1', '男性', '1962-07-27', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704710e-e55d-11e7-b630-7ff769a37e5a', '邹铭', '1', '男性', '1971-02-07', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('0704710f-e55d-11e7-b630-7ff769a37e5a', '葛金凤', '2', '女性', '1930-05-30', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07049720-e55d-11e7-b630-7ff769a37e5a', '童杰', '1', '男性', '1987-09-17', '01', '汉族', '0', '硕士', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07049721-e55d-11e7-b630-7ff769a37e5a', '朱金珍', '2', '女性', '1963-01-25', '01', '汉族', '1', '本科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('07049722-e55d-11e7-b630-7ff769a37e5a', '田正琦', '1', '男性', '1963-10-17', '01', '汉族', '2', '专科', '汾西路87弄居委会');
INSERT INTO `person_info` VALUES ('5b6a9f2f-e55e-11e7-b630-7ff769a37e5a', '张浩琳', '1', '男性', '2016-10-07', '01', '汉族', '1', '本科', '景凤路520弄居委会');

-- ----------------------------
-- Table structure for `report_detail`
-- ----------------------------
DROP TABLE IF EXISTS `report_detail`;
CREATE TABLE `report_detail` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `rep_id` varchar(64) DEFAULT '' COMMENT '外键',
  `header_id` varchar(64) DEFAULT NULL COMMENT '字典ID',
  `sec_header_id` varchar(100) DEFAULT NULL COMMENT '字典名称',
  `is_sum` varchar(10) DEFAULT NULL COMMENT '是否求和',
  `type` varchar(10) DEFAULT NULL COMMENT '行/列',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_detail
-- ----------------------------
INSERT INTO `report_detail` VALUES ('13b1a345-719d-4527-a4eb-7fda84ce55e4', 'RT0004', 'HD0007', '', '0', '1');
INSERT INTO `report_detail` VALUES ('348fe9ab-590b-41c5-a391-65b8c72f27a8', 'RT0004', 'HD0003', '', '0', '0');
INSERT INTO `report_detail` VALUES ('5e4313e3-76ba-40f4-8b0d-57015bd2646c', 'RT0005', 'HD0004', 'HD0003', '0', '0');
INSERT INTO `report_detail` VALUES ('c641511b-ac11-47bc-b57f-89fa88ee1168', 'RT0005', 'HD0007', '', '0', '1');

-- ----------------------------
-- Table structure for `report_info`
-- ----------------------------
DROP TABLE IF EXISTS `report_info`;
CREATE TABLE `report_info` (
  `rep_id` varchar(64) NOT NULL DEFAULT '' COMMENT 'id',
  `rep_name` varchar(100) DEFAULT NULL COMMENT '报表名称',
  `templet` text COMMENT '初始模板',
  `result` text,
  `is_cache` varchar(10) DEFAULT NULL COMMENT '是否缓存',
  `corn_time` varchar(50) DEFAULT NULL COMMENT 'corn表达式',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `data_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`rep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_info
-- ----------------------------
