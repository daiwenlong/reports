/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : reports

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-02-02 17:03:47
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
INSERT INTO `data_info` VALUES ('DT0005', 'DB0004', '各街道男女数据', 'select xbdm,xldm,jwh,count(*) as value from person_info group by xbdm,xldm,jwh', '[{\"jwh\":\"临汾路375弄居委会\",\"value\":\"334\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"临汾路380弄居委会\",\"value\":\"769\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"临汾路99弄居委会\",\"value\":\"395\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"保德路425弄居委会\",\"value\":\"881\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"场中路1011弄居委会\",\"value\":\"967\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"岭南路270弄居委会\",\"value\":\"350\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"岭南路700弄居委会\",\"value\":\"1091\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"景凤路520弄居委会\",\"value\":\"468\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"汾西路261弄居委会\",\"value\":\"219\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"汾西路87弄居委会\",\"value\":\"579\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"闻喜路251弄居委会\",\"value\":\"658\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"闻喜路555弄居委会\",\"value\":\"499\",\"xbdm\":\"1\",\"xldm\":\"0\"},{\"jwh\":\"临汾路375弄居委会\",\"value\":\"359\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"临汾路380弄居委会\",\"value\":\"747\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"临汾路99弄居委会\",\"value\":\"360\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"保德路425弄居委会\",\"value\":\"912\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"场中路1011弄居委会\",\"value\":\"954\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"岭南路270弄居委会\",\"value\":\"355\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"岭南路700弄居委会\",\"value\":\"1038\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"景凤路520弄居委会\",\"value\":\"493\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"汾西路261弄居委会\",\"value\":\"253\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"汾西路87弄居委会\",\"value\":\"532\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"闻喜路251弄居委会\",\"value\":\"676\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"闻喜路555弄居委会\",\"value\":\"535\",\"xbdm\":\"1\",\"xldm\":\"1\"},{\"jwh\":\"临汾路375弄居委会\",\"value\":\"372\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"临汾路380弄居委会\",\"value\":\"786\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"临汾路99弄居委会\",\"value\":\"345\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"保德路425弄居委会\",\"value\":\"870\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"场中路1011弄居委会\",\"value\":\"925\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"岭南路270弄居委会\",\"value\":\"333\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"岭南路700弄居委会\",\"value\":\"1121\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"景凤路520弄居委会\",\"value\":\"474\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"汾西路261弄居委会\",\"value\":\"231\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"汾西路87弄居委会\",\"value\":\"570\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"闻喜路251弄居委会\",\"value\":\"707\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"闻喜路555弄居委会\",\"value\":\"518\",\"xbdm\":\"1\",\"xldm\":\"2\"},{\"jwh\":\"临汾路375弄居委会\",\"value\":\"376\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"临汾路380弄居委会\",\"value\":\"818\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"临汾路99弄居委会\",\"value\":\"378\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"保德路425弄居委会\",\"value\":\"936\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"场中路1011弄居委会\",\"value\":\"982\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"岭南路270弄居委会\",\"value\":\"332\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"岭南路700弄居委会\",\"value\":\"1123\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"景凤路520弄居委会\",\"value\":\"511\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"汾西路261弄居委会\",\"value\":\"244\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"汾西路87弄居委会\",\"value\":\"556\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"闻喜路251弄居委会\",\"value\":\"697\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"闻喜路555弄居委会\",\"value\":\"564\",\"xbdm\":\"2\",\"xldm\":\"0\"},{\"jwh\":\"临汾路375弄居委会\",\"value\":\"336\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"临汾路380弄居委会\",\"value\":\"825\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"临汾路99弄居委会\",\"value\":\"441\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"保德路425弄居委会\",\"value\":\"944\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"场中路1011弄居委会\",\"value\":\"1019\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"岭南路270弄居委会\",\"value\":\"361\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"岭南路700弄居委会\",\"value\":\"1091\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"景凤路520弄居委会\",\"value\":\"537\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"汾西路261弄居委会\",\"value\":\"261\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"汾西路87弄居委会\",\"value\":\"569\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"闻喜路251弄居委会\",\"value\":\"675\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"闻喜路555弄居委会\",\"value\":\"562\",\"xbdm\":\"2\",\"xldm\":\"1\"},{\"jwh\":\"临汾路375弄居委会\",\"value\":\"385\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"临汾路380弄居委会\",\"value\":\"791\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"临汾路99弄居委会\",\"value\":\"330\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"保德路425弄居委会\",\"value\":\"964\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"场中路1011弄居委会\",\"value\":\"980\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"岭南路270弄居委会\",\"value\":\"391\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"岭南路700弄居委会\",\"value\":\"1167\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"景凤路520弄居委会\",\"value\":\"493\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"汾西路261弄居委会\",\"value\":\"268\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"汾西路87弄居委会\",\"value\":\"568\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"闻喜路251弄居委会\",\"value\":\"694\",\"xbdm\":\"2\",\"xldm\":\"2\"},{\"jwh\":\"闻喜路555弄居委会\",\"value\":\"536\",\"xbdm\":\"2\",\"xldm\":\"2\"}]', '2018-01-30 15:02:42');
INSERT INTO `data_info` VALUES ('DT0006', 'DB0003', '111', '111', null, null);

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
INSERT INTO `num_info` VALUES ('DT', '', '0', '6');
INSERT INTO `num_info` VALUES ('HD', '', '0', '7');
INSERT INTO `num_info` VALUES ('RT', 'RT', '4', '7');

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
  `orders` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_detail
-- ----------------------------
INSERT INTO `report_detail` VALUES ('13b1a345-719d-4527-a4eb-7fda84ce55e4', 'RT0004', 'HD0007', '', '0', '1', null);
INSERT INTO `report_detail` VALUES ('348fe9ab-590b-41c5-a391-65b8c72f27a8', 'RT0004', 'HD0003', '', '0', '0', null);
INSERT INTO `report_detail` VALUES ('4577ace0-e826-4111-9ea9-61b3494d6967', 'RT0007', 'HD0004', 'HD0003', '1', '0', '0');
INSERT INTO `report_detail` VALUES ('5e4313e3-76ba-40f4-8b0d-57015bd2646c', 'RT0005', 'HD0004', 'HD0003', '0', '0', null);
INSERT INTO `report_detail` VALUES ('60591c02-5347-49ec-9392-eca579947b69', 'RT0007', 'HD0003', '', '0', '0', '3');
INSERT INTO `report_detail` VALUES ('c641511b-ac11-47bc-b57f-89fa88ee1168', 'RT0005', 'HD0007', '', '0', '1', null);
INSERT INTO `report_detail` VALUES ('cff344ab-8696-403a-a6bf-bda933b6fa65', 'RT0007', 'HD0007', '', '1', '1', '1');
INSERT INTO `report_detail` VALUES ('d51e99cb-3b48-4159-a53d-8f357c5af2e2', 'RT0007', 'HD0003', '', '1', '1', '2');

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
INSERT INTO `report_info` VALUES ('RT0007', '各街道男女', '<table  class=\"table table-bordered table-striped text-center\">\r\n <tr id=\"first\">\r\n              <td rowspan=\"2\"></td>\r\n	          		  <td  colspan=\"3\">硕士</td>\r\n	          		  <td  colspan=\"3\">本科</td>\r\n	          		  <td  colspan=\"3\">大专</td>\r\n				   <td rowspan=\"2\">合计</td>\r\n	          		<td rowspan=\"2\">男</td>\r\n	          		<td rowspan=\"2\">女</td>\r\n </tr>\r\n 	<tr id=\"second\">\r\n		          		<td>男</td>\r\n		          		<td>女</td>\r\n					    <td>合计</td>\r\n		          		<td>男</td>\r\n		          		<td>女</td>\r\n					    <td>合计</td>\r\n		          		<td>男</td>\r\n		          		<td>女</td>\r\n					    <td>合计</td>\r\n 	</tr>\r\n	 	  <tr>\r\n	  		<td>临汾路380弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#临汾路380弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路380弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>临汾路99弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#临汾路99弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路99弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>场中路1011弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#场中路1011弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#场中路1011弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>汾西路261弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#汾西路261弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路261弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>汾西路87弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#汾西路87弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#汾西路87弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>闻喜路251弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#闻喜路251弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路251弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>保德路425弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#保德路425弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#保德路425弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>岭南路700弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#岭南路700弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#岭南路700弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>景凤路520弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#景凤路520弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#景凤路520弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>临汾路375弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#临汾路375弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#临汾路375弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>闻喜路555弄居委会</td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"jwh#闻喜路555弄居委会,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#闻喜路555弄居委会,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n		   <tr>\r\n		     <td>合计</td>\r\n			          		<td type=\"data\" id=\"jwh#all,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#all,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#all,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#all,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#all,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#all,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#all,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#all,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"jwh#all,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"jwh#all,xldm#all,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"jwh#all,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"jwh#all,xbdm#2\"></td>\r\n		   </tr>\r\n	 	  <tr>\r\n	  		<td>男</td>\r\n			          		<td type=\"data\" id=\"xbdm#1,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#1,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#1,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#1,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#1,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#1,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#1,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#1,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#1,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"xbdm#1,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"xbdm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#1,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n	 	  <tr>\r\n	  		<td>女</td>\r\n			          		<td type=\"data\" id=\"xbdm#2,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#2,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#2,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#2,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#2,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#2,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#2,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#2,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#2,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"xbdm#2,xldm#all,xbdm#all\"></td>\r\n		           \r\n			          		<td type=\"data\" id=\"xbdm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#2,xbdm#2\"></td>\r\n		           \r\n	  	  </tr>\r\n		   <tr>\r\n		     <td>合计</td>\r\n			          		<td type=\"data\" id=\"xbdm#all,xldm#0,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#all,xldm#0,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#all,xldm#0,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#all,xldm#1,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#all,xldm#1,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#all,xldm#1,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#all,xldm#2,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#all,xldm#2,xbdm#2\"></td>\r\n						   <td type=\"data\" id=\"xbdm#all,xldm#2,xbdm#all\"></td>\r\n						   <td type=\"data\" id=\"xbdm#all,xldm#all,xbdm#all\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#all,xbdm#1\"></td>\r\n			          		<td type=\"data\" id=\"xbdm#all,xbdm#2\"></td>\r\n		   </tr>\r\n</table>', '<html>\n <head></head>\n <body>\n  <table class=\"table table-bordered table-striped text-center\"> \n   <tbody>\n    <tr id=\"first\"> \n     <td rowspan=\"2\"></td> \n     <td colspan=\"3\">硕士</td> \n     <td colspan=\"3\">本科</td> \n     <td colspan=\"3\">大专</td> \n     <td rowspan=\"2\">合计</td> \n     <td rowspan=\"2\">男</td> \n     <td rowspan=\"2\">女</td> \n    </tr> \n    <tr id=\"second\"> \n     <td>男</td> \n     <td>女</td> \n     <td>合计</td> \n     <td>男</td> \n     <td>女</td> \n     <td>合计</td> \n     <td>男</td> \n     <td>女</td> \n     <td>合计</td> \n    </tr> \n    <tr> \n     <td>临汾路380弄居委会</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#0,xbdm#1\">769</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#0,xbdm#2\">818</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#0,xbdm#all\">1587</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#1,xbdm#1\">747</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#1,xbdm#2\">825</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#1,xbdm#all\">1572</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#2,xbdm#1\">786</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#2,xbdm#2\">791</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#2,xbdm#all\">1577</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xldm#all,xbdm#all\">4736</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xbdm#1\">2302</td> \n     <td type=\"data\" id=\"jwh#临汾路380弄居委会,xbdm#2\">2434</td> \n    </tr> \n    <tr> \n     <td>临汾路99弄居委会</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#0,xbdm#1\">395</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#0,xbdm#2\">378</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#0,xbdm#all\">773</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#1,xbdm#1\">360</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#1,xbdm#2\">441</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#1,xbdm#all\">801</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#2,xbdm#1\">345</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#2,xbdm#2\">330</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#2,xbdm#all\">675</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xldm#all,xbdm#all\">2249</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xbdm#1\">1100</td> \n     <td type=\"data\" id=\"jwh#临汾路99弄居委会,xbdm#2\">1149</td> \n    </tr> \n    <tr> \n     <td>场中路1011弄居委会</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#0,xbdm#1\">967</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#0,xbdm#2\">982</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#0,xbdm#all\">1949</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#1,xbdm#1\">954</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#1,xbdm#2\">1019</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#1,xbdm#all\">1973</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#2,xbdm#1\">925</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#2,xbdm#2\">980</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#2,xbdm#all\">1905</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xldm#all,xbdm#all\">5827</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xbdm#1\">2846</td> \n     <td type=\"data\" id=\"jwh#场中路1011弄居委会,xbdm#2\">2981</td> \n    </tr> \n    <tr> \n     <td>汾西路261弄居委会</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#0,xbdm#1\">219</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#0,xbdm#2\">244</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#0,xbdm#all\">463</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#1,xbdm#1\">253</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#1,xbdm#2\">261</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#1,xbdm#all\">514</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#2,xbdm#1\">231</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#2,xbdm#2\">268</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#2,xbdm#all\">499</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xldm#all,xbdm#all\">1476</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xbdm#1\">703</td> \n     <td type=\"data\" id=\"jwh#汾西路261弄居委会,xbdm#2\">773</td> \n    </tr> \n    <tr> \n     <td>汾西路87弄居委会</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#0,xbdm#1\">579</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#0,xbdm#2\">556</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#0,xbdm#all\">1135</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#1,xbdm#1\">532</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#1,xbdm#2\">569</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#1,xbdm#all\">1101</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#2,xbdm#1\">570</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#2,xbdm#2\">568</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#2,xbdm#all\">1138</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xldm#all,xbdm#all\">3374</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xbdm#1\">1681</td> \n     <td type=\"data\" id=\"jwh#汾西路87弄居委会,xbdm#2\">1693</td> \n    </tr> \n    <tr> \n     <td>闻喜路251弄居委会</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#0,xbdm#1\">658</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#0,xbdm#2\">697</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#0,xbdm#all\">1355</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#1,xbdm#1\">676</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#1,xbdm#2\">675</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#1,xbdm#all\">1351</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#2,xbdm#1\">707</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#2,xbdm#2\">694</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#2,xbdm#all\">1401</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xldm#all,xbdm#all\">4107</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xbdm#1\">2041</td> \n     <td type=\"data\" id=\"jwh#闻喜路251弄居委会,xbdm#2\">2066</td> \n    </tr> \n    <tr> \n     <td>保德路425弄居委会</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#0,xbdm#1\">881</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#0,xbdm#2\">936</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#0,xbdm#all\">1817</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#1,xbdm#1\">912</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#1,xbdm#2\">944</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#1,xbdm#all\">1856</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#2,xbdm#1\">870</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#2,xbdm#2\">964</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#2,xbdm#all\">1834</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xldm#all,xbdm#all\">5507</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xbdm#1\">2663</td> \n     <td type=\"data\" id=\"jwh#保德路425弄居委会,xbdm#2\">2844</td> \n    </tr> \n    <tr> \n     <td>岭南路700弄居委会</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#0,xbdm#1\">1091</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#0,xbdm#2\">1123</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#0,xbdm#all\">2214</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#1,xbdm#1\">1038</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#1,xbdm#2\">1091</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#1,xbdm#all\">2129</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#2,xbdm#1\">1121</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#2,xbdm#2\">1167</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#2,xbdm#all\">2288</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xldm#all,xbdm#all\">6631</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xbdm#1\">3250</td> \n     <td type=\"data\" id=\"jwh#岭南路700弄居委会,xbdm#2\">3381</td> \n    </tr> \n    <tr> \n     <td>景凤路520弄居委会</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#0,xbdm#1\">468</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#0,xbdm#2\">511</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#0,xbdm#all\">979</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#1,xbdm#1\">493</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#1,xbdm#2\">537</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#1,xbdm#all\">1030</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#2,xbdm#1\">474</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#2,xbdm#2\">493</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#2,xbdm#all\">967</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xldm#all,xbdm#all\">2976</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xbdm#1\">1435</td> \n     <td type=\"data\" id=\"jwh#景凤路520弄居委会,xbdm#2\">1541</td> \n    </tr> \n    <tr> \n     <td>临汾路375弄居委会</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#0,xbdm#1\">334</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#0,xbdm#2\">376</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#0,xbdm#all\">710</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#1,xbdm#1\">359</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#1,xbdm#2\">336</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#1,xbdm#all\">695</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#2,xbdm#1\">372</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#2,xbdm#2\">385</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#2,xbdm#all\">757</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xldm#all,xbdm#all\">2162</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xbdm#1\">1065</td> \n     <td type=\"data\" id=\"jwh#临汾路375弄居委会,xbdm#2\">1097</td> \n    </tr> \n    <tr> \n     <td>闻喜路555弄居委会</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#0,xbdm#1\">499</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#0,xbdm#2\">564</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#0,xbdm#all\">1063</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#1,xbdm#1\">535</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#1,xbdm#2\">562</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#1,xbdm#all\">1097</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#2,xbdm#1\">518</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#2,xbdm#2\">536</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#2,xbdm#all\">1054</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xldm#all,xbdm#all\">3214</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xbdm#1\">1552</td> \n     <td type=\"data\" id=\"jwh#闻喜路555弄居委会,xbdm#2\">1662</td> \n    </tr> \n    <tr> \n     <td>合计</td> \n     <td type=\"data\" id=\"jwh#all,xldm#0,xbdm#1\">7210</td> \n     <td type=\"data\" id=\"jwh#all,xldm#0,xbdm#2\">7517</td> \n     <td type=\"data\" id=\"jwh#all,xldm#0,xbdm#all\">14727</td> \n     <td type=\"data\" id=\"jwh#all,xldm#1,xbdm#1\">7214</td> \n     <td type=\"data\" id=\"jwh#all,xldm#1,xbdm#2\">7621</td> \n     <td type=\"data\" id=\"jwh#all,xldm#1,xbdm#all\">14835</td> \n     <td type=\"data\" id=\"jwh#all,xldm#2,xbdm#1\">7252</td> \n     <td type=\"data\" id=\"jwh#all,xldm#2,xbdm#2\">7567</td> \n     <td type=\"data\" id=\"jwh#all,xldm#2,xbdm#all\">14819</td> \n     <td type=\"data\" id=\"jwh#all,xldm#all,xbdm#all\">44381</td> \n     <td type=\"data\" id=\"jwh#all,xbdm#1\">21676</td> \n     <td type=\"data\" id=\"jwh#all,xbdm#2\">22705</td> \n    </tr> \n    <tr> \n     <td>男</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#0,xbdm#1\">7210</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#0,xbdm#2\">0</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#0,xbdm#all\">7210</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#1,xbdm#1\">7214</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#1,xbdm#2\">0</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#1,xbdm#all\">7214</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#2,xbdm#1\">7252</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#2,xbdm#2\">0</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#2,xbdm#all\">7252</td> \n     <td type=\"data\" id=\"xbdm#1,xldm#all,xbdm#all\">21676</td> \n     <td type=\"data\" id=\"xbdm#1,xbdm#1\">21676</td> \n     <td type=\"data\" id=\"xbdm#1,xbdm#2\">0</td> \n    </tr> \n    <tr> \n     <td>女</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#0,xbdm#1\">0</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#0,xbdm#2\">7517</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#0,xbdm#all\">7517</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#1,xbdm#1\">0</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#1,xbdm#2\">7621</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#1,xbdm#all\">7621</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#2,xbdm#1\">0</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#2,xbdm#2\">7567</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#2,xbdm#all\">7567</td> \n     <td type=\"data\" id=\"xbdm#2,xldm#all,xbdm#all\">22705</td> \n     <td type=\"data\" id=\"xbdm#2,xbdm#1\">0</td> \n     <td type=\"data\" id=\"xbdm#2,xbdm#2\">22705</td> \n    </tr> \n    <tr> \n     <td>合计</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#0,xbdm#1\">7210</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#0,xbdm#2\">7517</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#0,xbdm#all\">14727</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#1,xbdm#1\">7214</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#1,xbdm#2\">7621</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#1,xbdm#all\">14835</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#2,xbdm#1\">7252</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#2,xbdm#2\">7567</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#2,xbdm#all\">14819</td> \n     <td type=\"data\" id=\"xbdm#all,xldm#all,xbdm#all\">44381</td> \n     <td type=\"data\" id=\"xbdm#all,xbdm#1\">21676</td> \n     <td type=\"data\" id=\"xbdm#all,xbdm#2\">22705</td> \n    </tr> \n   </tbody>\n  </table>\n </body>\n</html>', null, null, '2018-02-02 16:50:09', 'DT0005');
