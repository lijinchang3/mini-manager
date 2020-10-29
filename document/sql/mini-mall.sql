/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : mini-mall

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-10-29 14:54:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_ad_item
-- ----------------------------
DROP TABLE IF EXISTS `a_ad_item`;
CREATE TABLE `a_ad_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_space_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '广告名称',
  `object_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `content` text COMMENT '内容',
  `weight` double DEFAULT '0' COMMENT '权重',
  `create_admin` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_ad_item
-- ----------------------------
INSERT INTO `a_ad_item` VALUES ('264', '7', '现代简约', null, '2', '{\"link\":\"#\",\"text\":\"现代简约\"}', '0', '2', '2013-06-30 13:13:39', '2020-10-29 10:16:13');
INSERT INTO `a_ad_item` VALUES ('265', '7', '欧式奢华', null, '2', '{\"link\":\"#\",\"text\":\"欧式奢华\"}', '0', '2', '2013-06-30 13:14:19', '2020-10-29 10:16:20');
INSERT INTO `a_ad_item` VALUES ('266', '7', '田园', null, '2', '{\"link\":\"#\",\"text\":\"田园\"}', '0', '2', '2013-06-30 13:15:37', '2020-10-29 10:16:23');
INSERT INTO `a_ad_item` VALUES ('267', '7', '地中海', null, '2', '{\"link\":\"#\",\"text\":\"地中海\"}', '0', '2', '2013-06-30 13:16:59', '2020-10-29 10:26:30');
INSERT INTO `a_ad_item` VALUES ('268', '7', '后现代', null, '2', '{\"link\":\"#\",\"text\":\"后现代\"}', '0', '2', '2013-06-30 13:18:53', '2020-10-29 10:16:26');
INSERT INTO `a_ad_item` VALUES ('269', '7', '宜家', null, '2', '{\"link\":\"#\",\"text\":\"宜家\"}', '0', '2', '2013-06-30 13:19:40', '2020-10-29 10:16:32');
INSERT INTO `a_ad_item` VALUES ('270', '10', '铁艺', null, '2', '{\"text\":\"铁艺\",\"link\":\"/so/--%E9%93%81%E8%89%BA--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:21:02', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('271', '10', '木质', null, '2', '{\"text\":\"木质\",\"link\":\"/so/--%E6%9C%A8%E8%B4%A8--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:22:06', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('272', '10', '不锈钢', null, '2', '{\"text\":\"不锈钢\",\"link\":\"/so/--%E4%B8%8D%E9%94%88%E9%92%A2--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:22:45', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('273', '10', '水晶', null, '2', '{\"text\":\"水晶\",\"link\":\"/so/--%E6%B0%B4%E6%99%B6--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:23:09', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('274', '10', 'PVC塑料', null, '2', '{\"text\":\"PVC塑料\",\"link\":\"/so/--PVC--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:23:48', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('275', '10', '布艺', null, '2', '{\"text\":\"布艺\",\"link\":\"/so/--%E5%B8%83%E8%89%BA--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:24:11', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('276', '10', '玻璃钢', null, '2', '{\"text\":\"玻璃钢\",\"link\":\"/so/--%E7%8E%BB%E7%92%83%E9%92%A2--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:24:53', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('277', '10', '亚克力', null, '2', '{\"text\":\"亚克力\",\"link\":\"/so/--%E4%BA%9A%E5%85%8B%E5%8A%9B--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:25:19', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('278', '8', '吸顶灯', null, '2', '{\"link\":\"#\",\"text\":\"吸顶灯\"}', '0', '2', '2013-06-30 13:27:01', '2020-10-29 10:28:47');
INSERT INTO `a_ad_item` VALUES ('280', '8', '吊灯', null, '2', '{\"link\":\"#\",\"text\":\"吊灯\"}', '0', '2', '2013-06-30 13:27:43', '2020-10-29 10:28:50');
INSERT INTO `a_ad_item` VALUES ('281', '8', '台灯', null, '2', '{\"link\":\"#\",\"text\":\"台灯\"}', '0', '2', '2013-06-30 13:28:10', '2020-10-29 10:28:53');
INSERT INTO `a_ad_item` VALUES ('282', '8', '射灯', null, '2', '{\"link\":\"#\",\"text\":\"射灯\"}', '0', '2', '2013-06-30 13:28:39', '2020-10-29 10:28:56');
INSERT INTO `a_ad_item` VALUES ('283', '8', '壁灯', null, '2', '{\"link\":\"#\",\"text\":\"壁灯\"}', '0', '2', '2013-06-30 13:29:01', '2020-10-29 10:28:59');
INSERT INTO `a_ad_item` VALUES ('284', '8', '筒灯', null, '2', '{\"link\":\"#\",\"text\":\"筒灯\"}', '0', '2', '2013-06-30 13:29:19', '2020-10-29 10:29:04');
INSERT INTO `a_ad_item` VALUES ('285', '8', '落地灯', null, '2', '{\"link\":\"#\",\"text\":\"落地灯\"}', '0', '2', '2013-06-30 13:29:58', '2020-10-29 10:29:08');
INSERT INTO `a_ad_item` VALUES ('286', '8', '镜前灯', null, '2', '{\"link\":\"#\",\"text\":\"镜前灯\"}', '0', '2', '2013-06-30 13:30:17', '2020-10-29 10:29:10');
INSERT INTO `a_ad_item` VALUES ('287', '11', '客厅', null, '2', '{\"text\":\"客厅\",\"link\":\"/so/--%E5%AE%A2%E5%8E%85--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:31:15', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('288', '11', '餐厅', null, '2', '{\"text\":\"餐厅\",\"link\":\"/so/--%E9%A4%90%E5%8E%85--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:31:44', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('289', '11', '厨房', null, '2', '{\"text\":\"厨房\",\"link\":\"/so/--%E5%8E%A8%E6%88%BF--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:32:09', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('290', '11', '书房', null, '2', '{\"text\":\"书房\",\"link\":\"/so/--%E4%B9%A6%E6%88%BF--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:32:33', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('291', '11', '卧室', null, '2', '{\"text\":\"卧室\",\"link\":\"/so/--%E5%8D%A7%E5%AE%A4--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:33:18', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('292', '11', '卫生间', null, '2', '{\"text\":\"卫生间\",\"link\":\"/so/--%E5%8D%AB%E7%94%9F%E9%97%B4--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:34:13', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('295', '10', '树脂', null, '2', '{\"text\":\"树脂\",\"link\":\"/so/--%E6%A0%91%E8%84%82--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:42:54', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('296', '10', '贝壳', null, '2', '{\"text\":\"贝壳\",\"link\":\"/so/--%E8%B4%9D%E5%A3%B3--0.0-0.0--0\"}', '0', '2', '2013-06-30 13:44:08', '2020-10-29 10:31:59');
INSERT INTO `a_ad_item` VALUES ('318', '13', '灯饰灯具 光源 节能灯 LED尖泡 E14节能', '330', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":54,\"month\":5,\"seconds\":32,\"time\":1371869672000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105432410.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105432455.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105432534.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105432656.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105432711.jpg\\\" class=lazy /><br />\\n<br />\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":330,\"name\":\"灯饰灯具 光源 节能灯 LED尖泡 E14节能\",\"note\":\"D15DF63200000000040100001260FB40\",\"originalPrice\":38,\"picFilenames\":\"20130622105432855.jpg,20130622105434039.jpg,20130622105434888.jpg,20130622105436073.jpg,20130622105437182.jpg\",\"price\":18.9,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1313,\"product\":null},\"status\":1,\"stock\":152,\"type\":1,\"virtualSalesNum\":587}}', '0', '2', '2013-07-01 20:45:29', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('319', '13', '灯饰灯具奢华黄水晶灯大厅灯 吸顶灯金色客厅灯【特价500mm】', '331', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":54,\"month\":5,\"seconds\":38,\"time\":1371869678000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105438541.jpg\\\" class=lazy /> \\n         &nbsp;<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><strong><span style=\\\"font-size:18px;\\\">关于特价商品<\\/span><\\/strong><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">&nbsp;&nbsp;&nbsp; 特价均是商用款，如要家装款的，可以联系客服补配件差价 边长500mm 或600mm的加80元，边长800mm或 1000mm的加100元。<\\/span><\\/p>\\n<span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"> <p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><strong><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">关于<\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">商用款及家装款<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/strong><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">&nbsp;&nbsp; 本灯可选择带<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">、带遥控各种款式。<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">家装款：<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">其中<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">+LED+<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">遥控<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">分组的<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">款式&nbsp;有<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">小彩灯，有分段功能，带遥控器<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">送灯泡<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">。&nbsp;<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">商用款：没有<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">分段控制功能，<\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">没有<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">带遥控器<\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">，<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">没有<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">小彩灯。不带<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">款式是<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">又称<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">裸灯，不带<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">不带遥控<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">,<\\/span><\\/span><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">&nbsp; 无分段控制功能<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">,<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">不送光源。<\\/span><\\/span><\\/span><\\/p>\\n<span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><span style=\\\"font-family:宋体;\\\"><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p> <p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><strong><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">关于光源<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/strong><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">本灯灯头适合规格是<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">E14<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">接口，也就是平常我们说的小螺口。本灯出厂是不带光源的，我们可以送您光源，因网上价格透明，利润不高，所以受成本限制，我们送您的是普通白炽灯泡&nbsp;<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">(<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">灯泡会多送一两个的，因为是赠送的，所以运输造成的灯泡破损恕不补发，请亲谅解）。如有需要更换为节能灯泡或<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">灯泡的，请另购。本店也有节能灯泡与<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">灯泡出售，链接如下。<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">节能灯：<a href=\\\"http://auction1.paipai.com/D15DF63200000000040100000A4B4E13#nolink\\\"><span style=\\\"font-size:18px;\\\">http://auction1.paipai.com/D15DF63200000000040100000A4B4E13#nolink<\\/span><\\/a><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">LED<span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">灯泡：<\\/span><a href=\\\"http://auction1.paipai.com/D15DF63200000000040100001260FB40\\\"><span style=\\\"font-size:18px;\\\">http://auction1.paipai.com/D15DF63200000000040100001260FB40<\\/span><\\/a><span style=\\\"font-size:18px;\\\">（<span style=\\\"color:#f10b00;\\\">同时<\\/span><\\/span><span style=\\\"font-size:18px;\\\"><span style=\\\"color:#f10b00;\\\">购14.8元一个只限今天<\\/span>）<\\/span><\\/span><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\">\\n<\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<strong><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">关于<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/strong> <p><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">本灯有带<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">的款式可选择。这里的<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">是指先装好的<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">彩色小灯珠，只作小夜灯和装饰作用，不作正常照明作用，并非主光源。此<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">小彩灯有红绿蓝三色，可用遥控器控制不同颜色变换闪烁和组合效果。<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">关于<\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">商用款及家装款<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><strong><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">本灯可选择带<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">、带遥控各种款式。<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/strong><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">家装款：<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">其中<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">+LED+<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">遥控<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">分组的<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">款式&nbsp;有<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">小彩灯，有分段功能，带遥控器<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">送灯泡<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">。&nbsp;<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">商用款：没有<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">分段控制功能，<\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">没有<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">带遥控器<\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">，<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">没有<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">小彩灯。不带<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">款式是<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">又称<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">裸灯，不带<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">不带遥控<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">,<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">无分段控制功能<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">,<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">不送光源。<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><strong><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">关于分段<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/strong><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">本灯带遥控的款式都有分段控制功能。本灯可分<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">4<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">段控制，分别为：内圈亮、<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">****<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">亮、<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">7<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">彩灯亮、全亮。也可以不带<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">款式减少一段<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">LED<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">亮&nbsp;，只要分组摇控<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">联系客服<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">。内<\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">圈亮、****亮。<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">指本灯的主光源灯泡分为两段控制。以<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">1000<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">尺寸为例，内圈<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">6<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">个灯泡，<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;宋体&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">****<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">15<span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">个灯泡。其它尺寸可能略有不同。带遥控的款式，分段功能也可以不通过遥控，而用开关来控制<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">,<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">每关一次再开一次，就切换到下一段，以此类推循环。<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><strong><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">关于物流运输<\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/strong><\\/p>\\n<p style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" class=\\\"p0\\\"><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:18px;mso-spacerun:&#39;yes&#39;;\\\">本店所有灯饰运输风险均由我们负责，亲们在提货时只要货物件数正确，货物外包装完整就可以签收了。在安装时有发现任何配件缺少或破损，我们全部为您免费补寄。亲是<span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">0<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">风险购物的。本店大灯均发物流自提，不发快递，此款灯全系列均属大灯。其一因为灯具中玻璃等易碎品容易破损，而物流是专线运输，中转次数少，比快递安全很多。其二因为大灯加上包装再打上木箱，整体比较重。以本灯为例，毛重约<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">37<\\/span><\\/span><span style=\\\"font-family:宋体;\\\"><span style=\\\"font-size:18px;\\\">公斤，快递费用会非常高，大幅增加亲的购物成本。物流一般默认发灯具专线物流&nbsp;<\\/span><span style=\\\"font-size:18px;\\\">。是发到物流公司在当地的提货点（一般只能到县级以上地区，县以下和乡镇都到不了），我们会尽量发离亲比较近的网点，有特别要指定物流与网点的，请提前与客服沟通，谢谢！&nbsp;另请亲注意填写正确的收件人姓名与电话，提货的时候是需要本人带身份证去的，别忘了哦<\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;\\\"><span style=\\\"font-size:18px;\\\">~<\\/span><\\/span><\\/span><span style=\\\"font-family:&#39;Times New Roman&#39;;font-size:10.5pt;mso-spacerun:&#39;yes&#39;;\\\"><o:p><\\/o:p><\\/span><\\/p>\\n<\\/o:p><\\/span><\\/span> <p><img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105438585.jpg\\\" class=lazy /><\\/p>\\n<p><img border=\\\"0\\\" src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105438889.jpg\\\" class=lazy /><br  />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105439012.jpg\\\" class=lazy /><br  />\\n<br  />\\n<br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105439140.jpg\\\" class=lazy /><\\/p>\\n<p><br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105439324.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105439506.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105439688.jpg\\\" class=lazy /><img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105439779.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105439903.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105439994.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105440095.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105440198.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105440260.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105440313.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105440464.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105440624.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105440808.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105440991.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441083.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441145.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441206.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441258.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441335.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441457.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441536.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441689.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441877.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105441997.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105442149.jpg\\\" class=lazy /><br  />\\n<br  />\\n<img src=\\\"/images/grey.gif\\\"  data-original=\\\"/tempfile/20130622105442202.jpg\\\" class=lazy /> <\\/p>\\n  \\n         \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":331,\"name\":\"灯饰灯具奢华黄水晶灯大厅灯 吸顶灯金色客厅灯【特价500mm】\",\"note\":\"D15DF6320000000004010000121FCACE\",\"originalPrice\":2888,\"picFilenames\":\"20130622105442454.jpg,20130622105443500.jpg,20130622105444509.jpg,20130622105445805.jpg,20130622105446817.jpg\",\"price\":468,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1316,\"product\":null},\"status\":1,\"stock\":22,\"type\":1,\"virtualSalesNum\":17}}', '0', '2', '2013-07-01 20:45:41', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('320', '13', '奢华客厅灯LED低压平板灯LED水晶灯LED灯LED客厅灯灯饰灯具9686', '332', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":54,\"month\":5,\"seconds\":48,\"time\":1371869688000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105448464.jpg\\\" class=lazy /> <p align=\\\"center\\\"><img id=\\\"pp4\\\" alt=\\\"点击图片可关闭大图\\\" src=\\\"/images/grey.gif\\\" width=\\\"662\\\" height=\\\"520\\\" jquery1300762437468=\\\"187\\\" data-original=\\\"/tempfile/20130622105448547.jpg\\\" class=lazy /><\\/p>\\n<p align=\\\"center\\\"><img id=\\\"pp4\\\" alt=\\\"点击图片可关闭大图\\\" src=\\\"/images/grey.gif\\\" width=\\\"671\\\" height=\\\"506\\\" jquery1300762437468=\\\"189\\\" data-original=\\\"/tempfile/20130622105449215.jpg\\\" class=lazy /><\\/p>\\n<p align=\\\"center\\\"><img id=\\\"pp4\\\" alt=\\\"点击图片可关闭大图\\\" src=\\\"/images/grey.gif\\\" width=\\\"670\\\" height=\\\"434\\\" jquery1300762437468=\\\"191\\\" data-original=\\\"/tempfile/20130622105449619.jpg\\\" class=lazy /><\\/p>\\n<p align=\\\"center\\\"><img id=\\\"pp4\\\" alt=\\\"点击图片可关闭大图\\\" src=\\\"/images/grey.gif\\\" width=\\\"670\\\" height=\\\"516\\\" jquery1300762437468=\\\"193\\\" data-original=\\\"/tempfile/20130622105450083.jpg\\\" class=lazy /><\\/p>\\n<p align=\\\"center\\\"><img id=\\\"pp4\\\" alt=\\\"点击图片可关闭大图\\\" src=\\\"/images/grey.gif\\\" width=\\\"670\\\" height=\\\"520\\\" jquery1300762437468=\\\"195\\\" data-original=\\\"/tempfile/20130622105450487.jpg\\\" class=lazy /><\\/p>\\n<p align=\\\"center\\\">&nbsp;<\\/p>\\n<p align=\\\"center\\\">&nbsp;<\\/p>\\n<p align=\\\"center\\\"><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105450963.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105451063.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105451219.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105451911.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<\\/p>\\n<p align=\\\"center\\\">&nbsp;<\\/p>\\n<p align=\\\"center\\\">&nbsp;<\\/p>\\n<p align=\\\"center\\\">&nbsp;<\\/p>\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":332,\"name\":\"奢华客厅灯LED低压平板灯LED水晶灯LED灯LED客厅灯灯饰灯具9686\",\"note\":\"D15DF632000000000401000011EBC7B8\",\"originalPrice\":5888,\"picFilenames\":\"20130622105452147.jpg\",\"price\":1080,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1315,\"product\":null},\"status\":1,\"stock\":46,\"type\":1,\"virtualSalesNum\":28}}', '0', '2', '2013-07-01 20:45:48', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('321', '13', '现代简约经典灯饰灯具 客厅卧室吸顶灯简约装饰照明吸顶灯8004-7', '333', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":54,\"month\":5,\"seconds\":54,\"time\":1371869694000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105454482.jpg\\\" class=lazy /> <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105454535.jpg\\\" class=lazy />&nbsp;&nbsp;&nbsp;<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105454630.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105454817.jpg\\\" class=lazy /><br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105454900.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455035.jpg\\\" class=lazy /><br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455091.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455213.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455339.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455404.jpg\\\" class=lazy /><br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455437.jpg\\\" class=lazy /><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455493.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455591.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455701.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455763.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455815.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455873.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455937.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105455992.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456055.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456112.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456209.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456273.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456306.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456359.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456440.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456506.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456568.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456650.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105456757.jpg\\\" class=lazy /><br />\\n<p><\\/p>&nbsp; \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":333,\"name\":\"现代简约经典灯饰灯具 客厅卧室吸顶灯简约装饰照明吸顶灯8004-7\",\"note\":\"D15DF632000000000401000011DDEB29\",\"originalPrice\":585,\"picFilenames\":\"20130622105456907.jpg,20130622105458334.jpg,20130622105459033.jpg,20130622105459876.jpg,20130622105500763.jpg\",\"price\":358,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1317,\"product\":null},\"status\":1,\"stock\":29,\"type\":1,\"virtualSalesNum\":5}}', '0', '2', '2013-07-01 20:45:57', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('322', '13', '气泡水晶餐厅吊灯餐吊灯吊灯奢华水晶吊灯吧台灯水晶灯', '334', '2', '{\"product\":{\"categoryid\":214,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":55,\"month\":5,\"seconds\":2,\"time\":1371869702000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\" \\r\\n         &nbsp;<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105502540.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105502674.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105502833.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105502990.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105503099.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105503288.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105503416.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105503671.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105503768.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n  \\r\\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":334,\"name\":\"气泡水晶餐厅吊灯餐吊灯吊灯奢华水晶吊灯吧台灯水晶灯\",\"note\":\"D15DF632000000000401000011D8B09A\",\"originalPrice\":988,\"picFilenames\":\"20130622105503905.jpg,20130622105504693.jpg,20130622105505377.jpg,20130622105505903.jpg,20130622105506679.jpg\",\"price\":99,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1318,\"product\":null},\"status\":1,\"stock\":17,\"type\":1,\"virtualSalesNum\":15}}', '0', '2', '2013-07-01 20:46:07', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('323', '13', '灯饰灯具铁艺四叶草客厅灯卧室灯时尚整体观念吸顶灯送光源', '335', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":55,\"month\":5,\"seconds\":7,\"time\":1371869707000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105507719.jpg\\\" class=lazy /> \\n         &nbsp;<div class=\\\"_mode0 _mf320\\\" pagesize=\\\"\\\" audited=\\\"0\\\" data-hprice=\\\"\\\" data-lprice=\\\"\\\" data-key=\\\"\\\" property=\\\"3077\\\" attr-banner=\\\"\\\" fsid=\\\"63729595\\\" segid=\\\"3\\\" segsequence=\\\"1\\\" page=\\\"2\\\" picstyle=\\\"\\\" showmax=\\\"\\\" shownum=\\\"0\\\" auditarea=\\\"01\\\" auditforbid=\\\"0\\\" auditflag=\\\"0\\\" showline=\\\"\\\" ordertype=\\\"\\\" actionid=\\\"\\\" categoryid=\\\"\\\" shopid=\\\"492227875\\\" areaid=\\\"1\\\" mfid=\\\"0\\\" frameid=\\\"0\\\" pageid=\\\"0\\\" modid=\\\"20\\\" modtitle=\\\"商品描述\\\">\\n<div class=\\\"bd _bd_01\\\">\\n<div id=\\\"commoditymess\\\" class=\\\"description\\\"><a id=\\\"commodityvediolink\\\" name=\\\"commodityvediolink\\\"><\\/a> <div style=\\\"text-align:center;\\\" id=\\\"videoShow\\\"><\\/div>\\n<div id=\\\"comSelfContent\\\" class=\\\"paipai_editor item_selfcode100\\\"><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105507786.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105508018.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105508237.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105508458.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105508639.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105508800.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105508928.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105509108.jpg\\\" class=lazy /><br />\\n<\\/div>\\n<\\/div>\\n<\\/div>\\n<\\/div>\\n  \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":335,\"name\":\"灯饰灯具铁艺四叶草客厅灯卧室灯时尚整体观念吸顶灯送光源\",\"note\":\"D15DF632000000000401000011D03ED6\",\"originalPrice\":888,\"picFilenames\":\"20130622105509376.jpg,20130622105510717.jpg,20130622105511734.jpg,20130622105513024.jpg,20130622105513811.jpg\",\"price\":268,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1319,\"product\":null},\"status\":1,\"stock\":773,\"type\":1,\"virtualSalesNum\":12}}', '0', '2', '2013-07-01 20:46:15', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('324', '13', '凯晶堡灯饰灯具吸顶灯客厅灯卧室灯具传统水晶灯黄色水晶灯菠萝珠', '336', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":55,\"month\":5,\"seconds\":15,\"time\":1371869715000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105515539.jpg\\\" class=lazy /> \\n         \\n         <p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105515582.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105516385.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105516550.jpg\\\" class=lazy /><\\/p>\\n  \\n          \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":336,\"name\":\"凯晶堡灯饰灯具吸顶灯客厅灯卧室灯具传统水晶灯黄色水晶灯菠萝珠\",\"note\":\"D15DF632000000000401000011CED3FA\",\"originalPrice\":198,\"picFilenames\":\"20130622105517154.jpg,20130622105518408.jpg,20130622105519793.jpg,20130622105520792.jpg,20130622105521826.jpg\",\"price\":68,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1320,\"product\":null},\"status\":1,\"stock\":305,\"type\":1,\"virtualSalesNum\":197}}', '0', '2', '2013-07-01 20:46:23', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('325', '13', '凯晶堡现代个性大功率水晶LED吸顶灯客厅卧室装饰灯饰灯具韵律', '337', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":55,\"month\":5,\"seconds\":23,\"time\":1371869723000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105523225.jpg\\\" class=lazy /> <img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105523264.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105523481.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105523669.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105523882.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105524039.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105524194.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105524348.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105524479.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105524574.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105524832.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105525018.jpg\\\" class=lazy /><br />\\n<br />\\n<img border=\\\"0\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105525229.jpg\\\" class=lazy /><br />\\n<br />\\n<br />\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":337,\"name\":\"凯晶堡现代个性大功率水晶LED吸顶灯客厅卧室装饰灯饰灯具韵律\",\"note\":\"D15DF6320000000004010000114FDEE5\",\"originalPrice\":2888,\"picFilenames\":\"20130622105525373.jpg,20130622105526411.jpg,20130622105527687.jpg,20130622105528706.jpg,20130622105529975.jpg\",\"price\":468,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1321,\"product\":null},\"status\":1,\"stock\":64,\"type\":1,\"virtualSalesNum\":26}}', '0', '2', '2013-07-01 20:46:33', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('331', '15', '促销 220VSMD5050贴片LED灯带 超亮5050高压LED灯带 高亮灯带', '343', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":55,\"month\":5,\"seconds\":55,\"time\":1371869755000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105555937.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105555982.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105556113.jpg\\\" class=lazy /><br />\\n<br />\\n<br />\\n<br />\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105556241.jpg\\\" class=lazy />产品名称 5050贴片灯带 <\\/p>\\n<p><span style=\\\"font-size:18px;\\\">60灯每米 光源 台湾LED芯片<\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\"><strong>额定功率:<\\/strong> 14.4<\\/span><span style=\\\"font-size:18px;\\\">W/米 <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\"><strong>产品规格:<\\/strong> 宽度1.2CM 厚0.6CM 50米一卷<\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\"><strong>使用寿命:<\\/strong>正常使用下可达5-10万小时 <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\"><strong>使用范围:<\\/strong> 室内（-40°C~70°C） <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\"><strong>颜色分类:<\\/strong> 白色 暖白色 黄色 蓝色 <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\"><strong>使用范围:<\\/strong>电视背景墙,天花吊灯,广告灯箱，装饰 <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\"><strong>备注说明:<\\/strong> 灯带需另配专用插头【请联系客服购买】<\\/span> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105556500.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105556630.jpg\\\" class=lazy /><br />\\n<br />\\n<img alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"700\\\" data-original=\\\"/tempfile/20130622105556821.jpg\\\" class=lazy /><br />\\n<br />\\n<\\/p>\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":343,\"name\":\"促销 220VSMD5050贴片LED灯带 超亮5050高压LED灯带  高亮灯带\",\"note\":\"D15DF63200000000040100000F9C7B07\",\"originalPrice\":45,\"picFilenames\":\"20130622105557097.jpg,20130622105558107.jpg,20130622105559172.jpg\",\"price\":25.8,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1327,\"product\":null},\"status\":1,\"stock\":4427,\"type\":1,\"virtualSalesNum\":125}}', '0', '2', '2013-07-01 20:48:55', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('332', '15', 'LED灯泡12WLED节能灯LED球泡灯12W节能灯相当于灯泡120W', '344', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":2,\"time\":1371869762000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105602324.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105602376.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105602599.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105602782.jpg\\\" class=lazy /><br />\\n<br />\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":344,\"name\":\"LED灯泡12WLED节能灯LED球泡灯12W节能灯相当于灯泡120W\",\"note\":\"D15DF63200000000040100000F7B17E0\",\"originalPrice\":150,\"picFilenames\":\"20130622105602984.jpg,20130622105603847.jpg,20130622105605012.jpg\",\"price\":75,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1328,\"product\":null},\"status\":1,\"stock\":995,\"type\":1,\"virtualSalesNum\":9}}', '0', '2', '2013-07-01 20:49:13', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('333', '15', 'LED灯泡9WLED节能灯LED球泡灯9W节能灯', '345', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":6,\"time\":1371869766000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105606620.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105606669.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105606724.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105606807.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105606963.jpg\\\" class=lazy /><br />\\n<br />\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":345,\"name\":\"LED灯泡9WLED节能灯LED球泡灯9W节能灯\",\"note\":\"D15DF63200000000040100000F7B177A\",\"originalPrice\":130,\"picFilenames\":\"20130622105607068.jpg,20130622105608014.jpg,20130622105608888.jpg,20130622105609694.jpg\",\"price\":65,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1329,\"product\":null},\"status\":1,\"stock\":995,\"type\":1,\"virtualSalesNum\":5}}', '0', '2', '2013-07-01 20:49:21', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('334', '15', 'LED灯泡7WLED节能灯LED球泡灯7W节能灯相当于灯泡70W', '346', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":10,\"time\":1371869770000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105610866.jpg\\\" class=lazy /> \\n         <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105610910.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105611038.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105611091.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105611148.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105611447.jpg\\\" class=lazy /><br />\\n<br />\\n  \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":346,\"name\":\"LED灯泡7WLED节能灯LED球泡灯7W节能灯相当于灯泡70W\",\"note\":\"D15DF63200000000040100000F79AD4E\",\"originalPrice\":90,\"picFilenames\":\"20130622105611657.jpg,20130622105612327.jpg,20130622105612944.jpg,20130622105613702.jpg,20130622105614750.jpg\",\"price\":45,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1330,\"product\":null},\"status\":1,\"stock\":999,\"type\":1,\"virtualSalesNum\":1}}', '0', '2', '2013-07-01 20:49:27', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('335', '15', 'LED E27螺口灯泡5WLED节能灯LED球泡灯', '347', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":16,\"time\":1371869776000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105616319.jpg\\\" class=lazy /> \\n         <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105616372.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105616521.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105616792.jpg\\\" class=lazy /><br />\\n<br />\\n  \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":347,\"name\":\"LED E27螺口灯泡5WLED节能灯LED球泡灯\",\"note\":\"D15DF63200000000040100000F7A3751\",\"originalPrice\":70,\"picFilenames\":\"20130622105617008.jpg,20130622105617958.jpg,20130622105618833.jpg\",\"price\":35,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1332,\"product\":null},\"status\":1,\"stock\":105,\"type\":1,\"virtualSalesNum\":51}}', '0', '2', '2013-07-01 20:49:34', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('336', '15', 'LED贴片灯带天花灯带超高亮SMD3528 60珠 72珠220V吊顶槽灯软灯条', '348', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":20,\"time\":1371869780000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\" \\r\\n        <img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105620013.jpg\\\" class=lazy /> &nbsp; <p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105620066.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105620120.jpg\\\" class=lazy /><\\/p>\\r\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105620183.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105620467.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105620750.jpg\\\" class=lazy /><br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105620877.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105621383.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105621509.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<br />\\r\\n<br />\\r\\n<\\/p>\\r\\n  \\r\\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":348,\"name\":\"LED贴片灯带天花灯带超高亮SMD3528 60珠 72珠220V吊顶槽灯软灯条\",\"note\":\"D15DF63200000000040100000F37E616\",\"originalPrice\":20,\"picFilenames\":\"20130622105621781.jpg\",\"price\":8.8,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1331,\"product\":null},\"status\":1,\"stock\":737,\"type\":1,\"virtualSalesNum\":150}}', '0', '2', '2013-07-01 20:49:55', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('337', '15', 'LED一体化双头格栅射灯 双头天花射灯10W开孔20cm*10cm', '349', '2', '{\"product\":{\"categoryid\":219,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":23,\"time\":1371869783000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105623438.jpg\\\" class=lazy /> <p>【工作电压】 220V<br />\\r\\n【耗电功率】 10W(10PCS 纯四金线进口LED芯片)<br />\\r\\n【光源颜色】 正白 暖白<br />\\r\\n【外壳颜色】 银色+拉丝<br />\\r\\n【照射角度】 默认30度聚光<br />\\r\\n【亮度介绍】 单颗100流明<br />\\r\\n【产品净重】 1000g<br />\\r\\n【面盖材质】 航空级耐热铝材<br />\\r\\n【规格尺寸】 240*120*44MM 开孔200*100MM <\\/p>\\r\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105623488.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105623672.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105623776.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105623937.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<\\/p>\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":349,\"name\":\"LED一体化双头格栅射灯 双头天花射灯10W开孔20cm*10cm\",\"note\":\"D15DF63200000000040100000F367F75\",\"originalPrice\":168,\"picFilenames\":\"20130622105624064.jpg\",\"price\":79.9,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1333,\"product\":null},\"status\":1,\"stock\":979,\"type\":1,\"virtualSalesNum\":21}}', '0', '2', '2013-07-01 20:50:01', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('338', '15', '凯晶堡LED射灯明装 吸顶/座式/轨道射灯背景墙灯 服装店 5W', '350', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":25,\"time\":1371869785000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105625143.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105625193.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105625297.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105625379.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105625459.jpg\\\" class=lazy /><br />\\n<br />\\n<br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105625590.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105625717.jpg\\\" class=lazy /><br />\\n<br />\\n<br />\\n<br />\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":350,\"name\":\"凯晶堡LED射灯明装 吸顶/座式/轨道射灯背景墙灯 服装店 5W\",\"note\":\"D15DF63200000000040100000E8464FD\",\"originalPrice\":110,\"picFilenames\":\"20130622105625999.jpg,20130622105626921.jpg,20130622105627619.jpg\",\"price\":55,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1335,\"product\":null},\"status\":1,\"stock\":1996,\"type\":1,\"virtualSalesNum\":4}}', '0', '2', '2013-07-01 20:50:11', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('339', '16', 'LED镜前灯梳妆台镜灯浴室灯白光特价欧式简约不锈钢', '351', '2', '{\"product\":{\"categoryid\":216,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":28,\"time\":1371869788000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105628827.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105628877.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105628940.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105628993.jpg\\\" class=lazy /><br />\\n<br />\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":351,\"name\":\"LED镜前灯梳妆台镜灯浴室灯白光特价欧式简约不锈钢\",\"note\":\"D15DF63200000000040100000E765DB4\",\"originalPrice\":220,\"picFilenames\":\"20130622105629081.jpg,20130622105629792.jpg,20130622105630493.jpg\",\"price\":118,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1334,\"product\":null},\"status\":1,\"stock\":998,\"type\":1,\"virtualSalesNum\":2}}', '0', '2', '2013-07-01 20:50:53', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('340', '16', 'LED节能灯LED灯泡LED球泡灯炫彩灯壳 5W高光', '352', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":31,\"time\":1371869791000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105631439.jpg\\\" class=lazy /> \\n         <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105631490.jpg\\\" class=lazy /><br />\\n<br />\\n  \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":352,\"name\":\"LED节能灯LED灯泡LED球泡灯炫彩灯壳 5W高光\",\"note\":\"D15DF63200000000040100000E7697F1\",\"originalPrice\":90,\"picFilenames\":\"20130622105631654.jpg\",\"price\":38,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1336,\"product\":null},\"status\":1,\"stock\":999,\"type\":1,\"virtualSalesNum\":3}}', '0', '2', '2013-07-01 20:51:01', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('341', '16', 'LED射灯LED水晶射灯节能灯水晶天花灯开孔5.8cm~8.5cm	', '353', '2', '{\"product\":{\"categoryid\":219,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":32,\"time\":1371869792000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105632984.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105633029.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105633157.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105633238.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105633411.jpg\\\" class=lazy /><br />\\n<br />\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":353,\"name\":\"LED射灯LED水晶射灯节能灯水晶天花灯开孔5.8cm~8.5cm\",\"note\":\"D15DF63200000000040100000E7697E2\",\"originalPrice\":65,\"picFilenames\":\"20130622105633515.jpg,20130622105634445.jpg,20130622105635465.jpg,20130622105636157.jpg\",\"price\":29.8,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1337,\"product\":null},\"status\":1,\"stock\":381,\"type\":1,\"virtualSalesNum\":147}}', '0', '2', '2013-07-01 20:51:13', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('342', '16', 'LED射灯LED水晶射灯节能灯水晶天花灯圆形射灯开孔5.8cm~8.6cm', '354', '2', '{\"product\":{\"categoryid\":219,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":37,\"time\":1371869797000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105637725.jpg\\\" class=lazy /> <p align=\\\"center\\\"><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105637777.jpg\\\" class=lazy /><br />\\n<br />\\n<br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105637960.jpg\\\" class=lazy /><br />\\n<br />\\n<\\/p>\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":354,\"name\":\"LED射灯LED水晶射灯节能灯水晶天花灯圆形射灯开孔5.8cm~8.6cm\",\"note\":\"D15DF63200000000040100000E7697D7\",\"originalPrice\":75,\"picFilenames\":\"20130622105638164.jpg,20130622105639010.jpg\",\"price\":32.6,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1338,\"product\":null},\"status\":1,\"stock\":457,\"type\":1,\"virtualSalesNum\":50}}', '0', '2', '2013-07-01 20:51:23', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('343', '16', 'LED射灯LED节能射灯天花灯天花射灯6W双头格栅射灯3W*2', '355', '2', '{\"product\":{\"categoryid\":219,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":40,\"time\":1371869800000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105640892.jpg\\\" class=lazy /> \\n         <p><span style=\\\"font-size:18px;\\\">【品　　牌】 凯晶堡<\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\">【产品型号】 KGB-3w*2<\\/span><span style=\\\"font-size:18px;\\\">【工作电压】 220V <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\">【光源颜色】 正白 暖白<\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\">【灯体颜色】 透明白、茶晶色、彩色幻变（不同角度颜色不同）<\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\">【照射角度】 散光 、聚光 【光源介绍】 6*1W 台湾光宏芯片<\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\">【耗电功率】 6W 【产品材质】 面罩 K9水晶 /灯体散热器全铝 <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\">【开孔尺寸】 长:150<span style=\\\"color:#ff9d7d;\\\"><\\/span>-170mm 宽：60-80mm 【外径尺寸】 90x180mm 高度：28mm <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\">【安装方式】 嵌入式安装 <\\/span><\\/p>\\n<p><span style=\\\"font-size:18px;\\\"><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105640944.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105641102.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105641266.jpg\\\" class=lazy /><br />\\n<br />\\n<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\\n  \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":355,\"name\":\"LED射灯LED节能射灯天花灯天花射灯6W双头格栅射灯3W*2\",\"note\":\"D15DF63200000000040100000E765D44\",\"originalPrice\":118,\"picFilenames\":\"20130622105641503.jpg\",\"price\":58,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1339,\"product\":null},\"status\":1,\"stock\":177,\"type\":1,\"virtualSalesNum\":32}}', '0', '2', '2013-07-01 20:51:29', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('344', '16', '凯晶堡 LED天花灯射灯3W暖白开孔8-8.5水晶玻璃秒杀 水晶天花灯', '356', '2', '{\"product\":{\"categoryid\":219,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":42,\"time\":1371869802000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105642733.jpg\\\" class=lazy /> \\n         &nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105642784.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105642813.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105642848.jpg\\\" class=lazy /><br />\\n<br />\\n  \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":356,\"name\":\"凯晶堡 LED天花灯射灯3W暖白开孔8-8.5水晶玻璃秒杀 水晶天花灯\",\"note\":\"D15DF63200000000040100000E7691BA\",\"originalPrice\":65,\"picFilenames\":\"20130622105642908.jpg,20130622105643714.jpg,20130622105644387.jpg\",\"price\":24.8,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1340,\"product\":null},\"status\":1,\"stock\":860,\"type\":1,\"virtualSalesNum\":223}}', '0', '2', '2013-07-01 20:51:37', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('345', '16', '灯饰灯具 LED水晶画卷大功率吸顶灯 清爽大气 客厅灯 950大', '357', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":56,\"month\":5,\"seconds\":45,\"time\":1371869805000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105645503.jpg\\\" class=lazy /> \\n        &nbsp;<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105645553.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105645610.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105645737.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105646019.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105646225.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105646336.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105646545.jpg\\\" class=lazy /><br />\\n<br />\\n  \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":357,\"name\":\"灯饰灯具 LED水晶画卷大功率吸顶灯 清爽大气 客厅灯 950大\",\"note\":\"D15DF63200000000040100000E769766\",\"originalPrice\":2888,\"picFilenames\":\"20130622105647535.jpg,20130622105648484.jpg,20130622105649441.jpg,20130622105650527.jpg,20130622105652425.jpg\",\"price\":1180,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1341,\"product\":null},\"status\":1,\"stock\":5,\"type\":1,\"virtualSalesNum\":5}}', '0', '2', '2013-07-01 20:51:47', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('347', '16', 'LED天花灯LED射灯筒灯孔灯大功率3W超亮芯片开孔7cm-8cm', '359', '2', '{\"product\":{\"categoryid\":219,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":57,\"month\":5,\"seconds\":2,\"time\":1371869822000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105702388.jpg\\\" class=lazy /> \\n         <span style=\\\"font-family:Arial Black;color:#fe2419;font-size:16px;\\\">CCTV10《科教频道》为你实验解答什么样的灯最耐用。实验室采用LED球泡灯 ，本次团购是LED天花灯。道理是一样的，如需LED节能灯，<\\/span><a href=\\\"http://auction1.paipai.com/D15DF6320000000004010000077101ED?PTAG=40042.1.8\\\" target=\\\"_blank\\\"><span style=\\\"font-family:Arial Black;color:#fe2419;font-size:16px;\\\">请点击这里<\\/span><\\/a><span style=\\\"font-family:Arial Black;color:#fe2419;font-size:16px;\\\"> <\\/span> <p><br />\\n<br />\\n<br />\\n<\\/p>\\n<p align=\\\"left\\\" sizcache=\\\"3\\\" sizset=\\\"1120\\\"><\\/p>\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105702484.jpg\\\" class=lazy /><\\/p>\\n<p align=\\\"left\\\"><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105702798.jpg\\\" class=lazy /><\\/p>\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105702900.jpg\\\" class=lazy /><br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105703032.jpg\\\" class=lazy /><br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105703194.jpg\\\" class=lazy /><\\/p>\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105703272.jpg\\\" class=lazy /><br />\\n<br />\\n<br />\\n<\\/p>\\n  \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":359,\"name\":\"LED天花灯LED射灯筒灯孔灯大功率3W超亮芯片开孔7cm-8cm\",\"note\":\"D15DF63200000000040100000E62E2A0\",\"originalPrice\":68,\"picFilenames\":\"20130622105703539.jpg,20130622105703968.jpg\",\"price\":16.8,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1342,\"product\":null},\"status\":1,\"stock\":671,\"type\":1,\"virtualSalesNum\":894}}', '0', '2', '2013-07-01 20:52:36', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('351', '4', '凯晶堡盛大开业', null, '2', '{\"link\":\"http://www.aaa.com\",\"picPath\":\"/mall/ad/image/4/2020-10-29/1603936801175.jpg\"}', '110', '2', '2013-07-13 12:31:13', '2020-10-29 10:00:05');
INSERT INTO `a_ad_item` VALUES ('352', '12', '凯晶堡 台灯 5000K色温 学习护眼台灯 儿童台灯 舒目台灯', '487', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":11,\"minutes\":8,\"month\":5,\"seconds\":0,\"time\":1371870480000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622110800982.jpg\\\" class=lazy /> <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110801034.jpg\\\" class=lazy /> <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110801086.jpg\\\" class=lazy /> &nbsp;<p class=\\\"custom-area\\\" align=\\\"center\\\" sizcache=\\\"12\\\" sizset=\\\"142\\\"><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110801141.jpg\\\" class=lazy /><\\/p>\\n<p><\\/p>\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":487,\"name\":\"凯晶堡 台灯 5000K色温 学习护眼台灯 儿童台灯 舒目台灯\",\"note\":\"D15DF6320000000004010000008D8687\",\"originalPrice\":188,\"picFilenames\":\"20130622110801970.jpg,20130622110803352.jpg,20130622110804622.jpg\",\"price\":75,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1470,\"product\":null},\"status\":1,\"stock\":108,\"type\":1,\"virtualSalesNum\":140}}', '0', '2', '2013-08-11 12:21:53', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('353', '12', '欧式田园风格 印花布艺台灯 卧室 书房灯 铁艺台灯', '364', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":57,\"month\":5,\"seconds\":28,\"time\":1371869848000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\" &nbsp; <table id=\\\"__01\\\" height=\\\"939\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" width=\\\"730\\\" border=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"3\\\">\\r\\n<p align=\\\"left\\\" sizset=\\\"1120\\\" sizcache=\\\"3\\\"><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\"><strong>1&nbsp;、西藏 <span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\">内蒙古 新疆 青海 甘肃 <\\/span><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\">宁夏 山西 <\\/span><strong><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\">香港 澳门 海外等地区不包邮<\\/span><\\/strong><span style=\\\"font-size:18px;color:#ffffff;\\\">。<\\/span><\\/strong><\\/span><\\/p>\\r\\n<p align=\\\"left\\\" sizset=\\\"1120\\\" sizcache=\\\"3\\\"><strong><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\">2、特价商品，主要快递是韵达和汇通<span style=\\\"font-size:18px;color:#ffffff;\\\">，指定快递不到请与客服沟通，买家留言发韵 达&nbsp;或汇通优先发货。韵达汇通不到的地区，请补10元邮费发E邮宝<\\/span><\\/span><\\/strong><\\/p>\\r\\n<p align=\\\"left\\\" sizset=\\\"1120\\\" sizcache=\\\"3\\\"><strong><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\"><span style=\\\"font-size:18px;color:#ffffff;\\\"><\\/span><\\/span><\\/strong><strong><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\"><\\/span><\\/strong><strong jquery1168585683718=\\\"133\\\" jquery1168222606750=\\\"136\\\"><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\">3、商品都是不包安装，出厂不配光源。<\\/span><\\/strong><\\/p>\\r\\n<p align=\\\"left\\\" sizset=\\\"1120\\\" sizcache=\\\"3\\\"><strong jquery1168585683718=\\\"133\\\" jquery1168222606750=\\\"136\\\"><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\">4、商品报价不含税，可订做大的吸顶灯请与客服联系。<\\/span><\\/strong><\\/p>\\r\\n<p align=\\\"left\\\" sizset=\\\"1120\\\" sizcache=\\\"3\\\"><strong jquery1168585683718=\\\"133\\\" jquery1168222606750=\\\"136\\\"><span style=\\\"font-size:18px;color:#ffffff;background-color:#940000;\\\">5，如需要购买灯泡请连接客服。有普通E14尖泡和E14节能灯尖泡选购。<\\/span><\\/strong><\\/p>\\r\\n<p><img height=\\\"78\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"730\\\" data-original=\\\"/tempfile/20130622105728035.jpg\\\" class=lazy /><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D704AD\\\" target=\\\"_blank\\\"><img height=\\\"264\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"251\\\" data-original=\\\"/tempfile/20130622105728098.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D704BF\\\" target=\\\"_blank\\\"><img height=\\\"264\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"253\\\" data-original=\\\"/tempfile/20130622105728162.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D7B016\\\" target=\\\"_blank\\\"><img height=\\\"264\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"226\\\" data-original=\\\"/tempfile/20130622105728344.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF63200000000040100000687108F\\\" target=\\\"_blank\\\"><img height=\\\"306\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"251\\\" data-original=\\\"/tempfile/20130622105728408.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF6320000000004010000068710A6\\\" target=\\\"_blank\\\"><img height=\\\"306\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"253\\\" data-original=\\\"/tempfile/20130622105728532.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D7FA3F\\\" target=\\\"_blank\\\"><img height=\\\"306\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"226\\\" data-original=\\\"/tempfile/20130622105728613.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D7B035\\\" target=\\\"_blank\\\"><img height=\\\"291\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"251\\\" data-original=\\\"/tempfile/20130622105728738.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td colspan=\\\"2\\\">\\r\\n<p><img height=\\\"291\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"479\\\" data-original=\\\"/tempfile/20130622105728802.jpg\\\" class=lazy /><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105728868.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n<table id=\\\"__01\\\" height=\\\"939\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" width=\\\"730\\\" border=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"3\\\"><img height=\\\"78\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"730\\\" data-original=\\\"/tempfile/20130622105729436.jpg\\\" class=lazy /><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D704AD\\\" target=\\\"_blank\\\"><img height=\\\"264\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"251\\\" data-original=\\\"/tempfile/20130622105729468.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D704BF\\\" target=\\\"_blank\\\"><img height=\\\"264\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"253\\\" data-original=\\\"/tempfile/20130622105729530.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D7B016\\\" target=\\\"_blank\\\"><img height=\\\"264\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"226\\\" data-original=\\\"/tempfile/20130622105729609.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF63200000000040100000687108F\\\" target=\\\"_blank\\\"><img height=\\\"306\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"251\\\" data-original=\\\"/tempfile/20130622105729671.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF6320000000004010000068710A6\\\" target=\\\"_blank\\\"><img height=\\\"306\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"253\\\" data-original=\\\"/tempfile/20130622105729763.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D7FA3F\\\" target=\\\"_blank\\\"><img height=\\\"306\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"226\\\" data-original=\\\"/tempfile/20130622105729842.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a href=\\\"http://auction1.paipai.com/D15DF632000000000401000006D7B035\\\" target=\\\"_blank\\\"><img height=\\\"291\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"251\\\" data-original=\\\"/tempfile/20130622105729935.jpg\\\" class=lazy /><\\/a><\\/td>\\r\\n<td colspan=\\\"2\\\"><img height=\\\"291\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"479\\\" data-original=\\\"/tempfile/20130622105729998.jpg\\\" class=lazy /><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<img alt=\\\"\\\" src=\\\"/images/grey.gif\\\" border=\\\"0\\\" data-original=\\\"/tempfile/20130622105730029.jpg\\\" class=lazy /> \",\"evaluationNum\":1,\"evaluationScore\":5,\"id\":364,\"name\":\"欧式田园风格 印花布艺台灯 卧室 书房灯 铁艺台灯   \",\"note\":\"D15DF63200000000040100000D06890B\",\"originalPrice\":0,\"picFilenames\":\"20130622105731634.jpg,20130622105732295.jpg\",\"price\":59,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1347,\"product\":null},\"status\":1,\"stock\":19,\"type\":1,\"virtualSalesNum\":22}}', '0', '2', '2013-08-11 12:22:19', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('354', '12', '触摸台灯 现代时尚台灯卧室灯可调控 床头灯简易创意台灯8813', '432', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":11,\"minutes\":3,\"month\":5,\"seconds\":9,\"time\":1371870189000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622110309809.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110309865.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110309962.jpg\\\" class=lazy /><br />\\n<br />\\n\",\"evaluationNum\":1,\"evaluationScore\":5,\"id\":432,\"name\":\"灯饰灯具 时尚现代云朵玻璃吸顶灯客厅灯卧室灯00086-3\",\"note\":\"D15DF6320000000004010000045DBA57\",\"originalPrice\":400,\"picFilenames\":\"20130622110310391.jpg,20130622110311553.jpg,20130622110312333.jpg,20130622110312950.jpg\",\"price\":218,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1416,\"product\":null},\"status\":1,\"stock\":29,\"type\":1,\"virtualSalesNum\":2}}', '0', '2', '2013-08-11 12:22:55', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('355', '12', '凯晶堡灯饰灯具 卧室田园台灯', '272', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":48,\"month\":5,\"seconds\":6,\"time\":1371869286000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\" <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622104806235.jpg\\\" class=lazy /><br />\\r\\n<br />\\r\\n\",\"evaluationNum\":1,\"evaluationScore\":5,\"id\":272,\"name\":\"凯晶堡灯饰灯具  卧室田园台灯 \",\"note\":\"D15DF632000000000401000027CFCF69\",\"originalPrice\":158,\"picFilenames\":\"20130622104806936.jpg,20130622104807992.jpg\",\"price\":99,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1255,\"product\":null},\"status\":1,\"stock\":65,\"type\":1,\"virtualSalesNum\":5}}', '0', '2', '2013-08-11 12:23:20', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('356', '12', '凯晶堡灯饰灯具台灯客厅灯 奢华摆件台灯 卧室灯 LT803A', '480', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":11,\"minutes\":7,\"month\":5,\"seconds\":15,\"time\":1371870435000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622110715511.jpg\\\" class=lazy /> <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110715578.jpg\\\" class=lazy /> <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110715710.jpg\\\" class=lazy /><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110715775.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110715941.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110716134.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110716416.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110716520.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110716705.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110716889.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110717241.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110718135.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110718413.jpg\\\" class=lazy /><br />\\n<br />\\n<br />\\n<br />\\n<p><\\/p>\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":480,\"name\":\"凯晶堡灯饰灯具台灯客厅灯 奢华摆件台灯 卧室灯 LT803A\",\"note\":\"D15DF632000000000401000000D8E183\",\"originalPrice\":560,\"picFilenames\":\"20130622110718683.jpg\",\"price\":98,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1465,\"product\":null},\"status\":1,\"stock\":9,\"type\":1,\"virtualSalesNum\":3}}', '0', '2', '2013-08-11 12:24:03', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('357', '12', '灯饰灯具 台灯卧室灯客厅摆件灯 奢华装饰台灯LT805', '481', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":11,\"minutes\":7,\"month\":5,\"seconds\":20,\"time\":1371870440000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622110720225.jpg\\\" class=lazy /> <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110720272.jpg\\\" class=lazy /> <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110720531.jpg\\\" class=lazy /><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110720595.jpg\\\" class=lazy /><br />\\n<br />\\n&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110722820.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110723057.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110723153.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110723234.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110723445.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110723575.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110723783.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110723948.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110724874.jpg\\\" class=lazy /><br />\\n<br />\\n<br />\\n<br />\\n<p><\\/p>\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":481,\"name\":\"灯饰灯具 台灯卧室灯客厅摆件灯 奢华装饰台灯LT805\",\"note\":\"D15DF632000000000401000000D89A57\",\"originalPrice\":680,\"picFilenames\":\"20130622110725200.jpg\",\"price\":98,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1463,\"product\":null},\"status\":1,\"stock\":10,\"type\":1,\"virtualSalesNum\":2}}', '0', '2', '2013-08-11 12:24:20', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('358', '14', '全LED水晶吸顶灯 吊灯大功率节能时尚只需15W 36W', '385', '2', '{\"product\":{\"categoryid\":0,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":58,\"month\":5,\"seconds\":44,\"time\":1371869924000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105844289.jpg\\\" class=lazy /> <p>&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105844338.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105844439.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105844562.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105844716.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105845079.jpg\\\" class=lazy /><br />\\n<br />\\n<\\/p>\\n\",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":385,\"name\":\"全LED水晶吸顶灯 吊灯大功率节能时尚只需15W 36W\",\"note\":\"D15DF63200000000040100000A43A85F\",\"originalPrice\":3888,\"picFilenames\":\"20130622105845357.jpg,20130622105846106.jpg,20130622105847110.jpg\",\"price\":420,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1369,\"product\":null},\"status\":1,\"stock\":14,\"type\":1,\"virtualSalesNum\":90}}', '0', '2', '2013-08-11 12:26:47', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('359', '14', '豪华水晶灯具 黄水晶吊灯 水晶灯 黄水晶灯 水晶吊灯 客厅灯餐厅', '314', '2', '{\"product\":{\"categoryid\":214,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":52,\"month\":5,\"seconds\":58,\"time\":1371869578000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622105258394.jpg\\\" class=lazy /> \\n         <p>&nbsp;<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>&nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105258481.jpg\\\" class=lazy /><br />\\n<\\/p>\\n<p><img alt=\\\"\\\" src=\\\"/images/grey.gif\\\" width=\\\"750\\\" data-original=\\\"/tempfile/20130622105258870.jpg\\\" class=lazy /><\\/p>\\n<p><br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105259059.jpg\\\" class=lazy /><\\/p>\\n  \\n        \",\"evaluationNum\":6,\"evaluationScore\":4.61,\"id\":314,\"name\":\"豪华水晶灯具 黄水晶吊灯 水晶灯 黄水晶灯 水晶吊灯 客厅灯餐厅\",\"note\":\"D15DF632000000000401000017F9BB46\",\"originalPrice\":998,\"picFilenames\":\"20130622105259306.jpg\",\"price\":398,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1298,\"product\":null},\"status\":1,\"stock\":1,\"type\":1,\"virtualSalesNum\":42}}', '0', '2', '2013-08-11 12:27:32', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('360', '14', '凯晶堡旋转灯笼水晶灯阳台吊灯节日户外喜庆灯笼灯【囍气临门】', '285', '2', '{\"product\":{\"categoryid\":214,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":10,\"minutes\":50,\"month\":5,\"seconds\":16,\"time\":1371869416000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\" \\r\\n         0  <table id=\\\"__01\\\" width=\\\"740\\\" height=\\\"309\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\t<tbody><tr>\\r\\n\\t\\t<td>\\r\\n\\t\\t\\t<a href=\\\"http://auction1.paipai.com/D15DF63200000000040100001D38C4F0\\\" target=\\\"_blank\\\"><img src=\\\"/images/grey.gif\\\" border=\\\"0\\\" data-original=\\\"/tempfile/20130622105016778.jpg\\\" class=lazy /><\\/a><br />\\r\\n<br />\\r\\n<\\/td>\\r\\n\\t\\t<td>\\r\\n\\t\\t\\t<a href=\\\"http://auction1.paipai.com/D15DF632000000000401000000981694?CacheTime=1368079034\\\" target=\\\"_blank\\\"><img src=\\\"/images/grey.gif\\\" border=\\\"0\\\" data-original=\\\"/tempfile/20130622105016881.jpg\\\" class=lazy /><\\/a><br />\\r\\n<br />\\r\\n<\\/td>\\r\\n\\t<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n         <p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105016989.jpg\\\" class=lazy /><\\/p>\\r\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105017380.jpg\\\" class=lazy /><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105017637.jpg\\\" class=lazy /><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622105017978.jpg\\\" class=lazy /><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n  \\r\\n           \\r\\n        \",\"evaluationNum\":1,\"evaluationScore\":5,\"id\":285,\"name\":\"凯晶堡旋转灯笼水晶灯阳台吊灯节日户外喜庆灯笼灯【囍气临门】\",\"note\":\"D15DF63200000000040100001D38C4F0\",\"originalPrice\":488,\"picFilenames\":\"20130622105018226.jpg\",\"price\":158,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1260,\"product\":null},\"status\":1,\"stock\":141,\"type\":1,\"virtualSalesNum\":22}}', '0', '2', '2013-08-11 12:27:46', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('361', '14', '灯饰灯具 现代时尚胶片吸顶灯 可做餐厅吊灯J00086-1', '446', '2', '{\"product\":{\"categoryid\":218,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":11,\"minutes\":4,\"month\":5,\"seconds\":0,\"time\":1371870240000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622110400145.jpg\\\" class=lazy /> \\n        &nbsp;<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110400194.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110400500.jpg\\\" class=lazy /><br />\\n<br />\\n  \\n        \",\"evaluationNum\":1,\"evaluationScore\":4.67,\"id\":446,\"name\":\"灯饰灯具 现代时尚胶片吸顶灯 可做餐厅吊灯J00086-1\",\"note\":\"D15DF632000000000401000003F6F7FF\",\"originalPrice\":120,\"picFilenames\":\"20130622110402477.jpg,20130622110403275.jpg,20130622110403962.jpg,20130622110404720.jpg\",\"price\":58,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1430,\"product\":null},\"status\":1,\"stock\":71,\"type\":1,\"virtualSalesNum\":21}}', '0', '2', '2013-08-11 12:27:58', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('362', '14', '灯饰灯具 欧式吊灯 卧室客厅餐吊 客厅顶级K9水晶', '468', '2', '{\"product\":{\"categoryid\":214,\"costPrice\":0,\"createAdmin\":null,\"createTime\":{\"date\":22,\"day\":6,\"hours\":11,\"minutes\":5,\"month\":5,\"seconds\":57,\"time\":1371870357000,\"timezoneOffset\":-480,\"year\":113},\"detail\":\"<img src=\\\"/images/grey.gif\\\" width=\\\"0px\\\" height=\\\"0px\\\" data-original=\\\"/tempfile/20130622110557603.jpg\\\" class=lazy /> \\n         \\n         <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110557703.jpg\\\" class=lazy /> <img border=\\\"0\\\" alt=\\\"\\\" src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110557829.jpg\\\" class=lazy /> <img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110557953.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110558149.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110558654.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110558761.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110558923.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110559135.jpg\\\" class=lazy /><br />\\n<br />\\n<img src=\\\"/images/grey.gif\\\" data-original=\\\"/tempfile/20130622110559453.jpg\\\" class=lazy /><br />\\n<br />\\n<p><\\/p>  \\n          \\n        \",\"evaluationNum\":0,\"evaluationScore\":0,\"id\":468,\"name\":\"灯饰灯具 欧式吊灯 卧室客厅餐吊 客厅顶级K9水晶\",\"note\":\"D15DF632000000000401000001A84FB7\",\"originalPrice\":688,\"picFilenames\":\"20130622110559933.jpg,20130622110601314.jpg,20130622110602498.jpg,20130622110603626.jpg,20130622110604516.jpg\",\"price\":368,\"properties\":\"\",\"purchaseUrl\":\"\",\"salesNum\":0,\"snapshot\":{\"content\":\"\",\"createTime\":null,\"id\":1452,\"product\":null},\"status\":1,\"stock\":24,\"type\":1,\"virtualSalesNum\":21}}', '0', '2', '2013-08-11 12:28:11', '2020-10-25 22:43:28');
INSERT INTO `a_ad_item` VALUES ('363', '22', '一样一样', '681', '1', '{\"product\":{\"categoryId\":214,\"createTime\":1381210816000,\"evaluationNum\":0,\"evaluationScore\":0.0,\"id\":681,\"name\":\"凯晶堡灯饰灯具欧式简约水晶吊灯客厅卧室灯8014\",\"note\":\"D15DF63200000000040100003323EAF2\",\"originalPrice\":0.0,\"picFilenames\":\"20131008134032286.jpg,20131008134033341.jpg,20131008134034176.jpg,20131008134035181.jpg,20131008134036209.jpg\",\"price\":1516.0,\"salesNum\":0,\"status\":1,\"stock\":20,\"virtualSalesNum\":0}}', '444', 'admin', '2020-10-26 19:41:58', '2020-10-26 19:41:58');
INSERT INTO `a_ad_item` VALUES ('364', '22', '哈哈哈', '679', '1', '{\"product\":{\"categoryId\":218,\"createTime\":1381210779000,\"evaluationNum\":0,\"evaluationScore\":0.0,\"id\":679,\"name\":\"凯晶堡灯饰灯具金色水晶吸顶灯客厅卧室水晶灯68910\",\"note\":\"D15DF632000000000401000033117B12\",\"originalPrice\":0.0,\"picFilenames\":\"20131008133942366.jpg,20131008133944230.jpg,20131008133945435.jpg,20131008133946391.jpg,20131008133947339.jpg\",\"price\":1200.0,\"salesNum\":0,\"status\":1,\"stock\":100,\"virtualSalesNum\":0}}', '3', 'admin', '2020-10-26 19:44:03', '2020-10-26 19:44:02');
INSERT INTO `a_ad_item` VALUES ('365', '11', 'ppp', null, '2', '{\"link\":\"hhhh2\",\"text\":\"ppp\"}', '44', 'admin', '2020-10-27 09:49:07', '2020-10-29 10:33:46');
INSERT INTO `a_ad_item` VALUES ('366', '11', 'bbb', null, '2', '{\"link\":\"tttt\",\"text\":\"bbb\"}', '3', 'admin', '2020-10-27 09:52:08', '2020-10-29 10:33:46');
INSERT INTO `a_ad_item` VALUES ('374', '23', 'hhgg222', null, '2', '{\"link\":\"rwerwer222\",\"picPath\":\"/ad/23/2020-10-27/1603775385813.jpg\",\"text\":\"1231232222\"}', '332', 'admin', '2020-10-27 13:09:52', '2020-10-27 14:37:20');
INSERT INTO `a_ad_item` VALUES ('375', '9', 'yyyy', '704', '2', '{\"product\":{\"allCategoryIds\":\"233,234\",\"categoryId\":234,\"costPrice\":111.0,\"createAdmin\":\"admin\",\"createTime\":1603545565000,\"evaluationNum\":0,\"evaluationScore\":0.0,\"id\":704,\"mainPic\":\"/mall/product/704/image/2020-10-29/1603942451404.jpg\",\"name\":\"yyyyyyyy\",\"originalPrice\":111.0,\"picFilenames\":\"/mall/product/704/image/2020-10-29/1603942451404.jpg,/mall/product/704/image/2020-10-29/1603942451404.jpg\",\"price\":11.0,\"salesNum\":0,\"status\":1,\"stock\":1111,\"virtualSalesNum\":111}}', '111', 'admin', '2020-10-29 11:35:05', '2020-10-29 11:35:06');

-- ----------------------------
-- Table structure for a_ad_space
-- ----------------------------
DROP TABLE IF EXISTS `a_ad_space`;
CREATE TABLE `a_ad_space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '广告名称',
  `no` varchar(20) DEFAULT NULL COMMENT '广告编号',
  `template` text COMMENT '模板内容',
  `number` int(11) DEFAULT NULL COMMENT '容量',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型',
  `width` int(5) DEFAULT NULL COMMENT '图片',
  `height` int(5) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_ad_space
-- ----------------------------
INSERT INTO `a_ad_space` VALUES ('4', '首页轮播图', 'SY001', '<div class=\"focus\" id=\"slides\">\n    <ul class=\"tab-nav\">\n    <#list 1..model.adItemVos?size as i>\n      <li class=\"<#if i == 1 >onpic</#if>\">${i}</li>\n    </#list>\n    </ul>\n    <div class=\"focusbg\"></div>\n    <div class=\"tab-content\">\n    <#list model.adItemVos as ai >\n		<#assign content=ai.content?eval />\n			<div class=\"tab-pannel\">\n		   			<a href=\"${content.link}\" target=\"_blank\"><img class=\"lazy\" src=\"${model.domain}/images/grey.gif\" data-original=\"${model.domain}${ content.picPath}\" width=\"${model.width}\" height=\"${model.height}\" alt=\"${ai.name}\"/></a>\n			</div>\n	  </#list>\n	  </div>\n  </div>\n', '5', '2', '750', '355', null, '2020-10-27 14:57:25');
INSERT INTO `a_ad_space` VALUES ('7', '首页风格分类', 'SY002', '<div class=\"txt\">\n      <ul>\n      <#list model.adItemVos as ai >\n		<#assign content=ai.content?eval />\n        <li><a href=\"${content.link}\" target=\"_blank\" title=\"${content.text}\">${content.text}</a><#if ai_has_next>|</#if></li>\n	  </#list>\n      </ul>\n    </div>\n', '10', '4', '240', '48', null, '2020-10-29 10:26:51');
INSERT INTO `a_ad_space` VALUES ('8', '首页格调分类', 'SY003', '<div class=\"txt\">\n      <ul>\n      <#list model.adItemVos as ai >\n		<#assign content=ai.content?eval />\n        <li><a href=\"${content.link}\" target=\"_blank\" title=\"${content.text}\">${content.text}</a><#if ai_has_next>|</#if></li>\n	  </#list>\n      </ul>\n    </div>\n', '5', '4', '240', '48', null, '2020-10-29 10:28:41');
INSERT INTO `a_ad_space` VALUES ('9', '首页首推商品', 'SY006', ' <div class=\"grid1000 item1\">\n    <div class=\"next Left\"><a href=\"javascript:;\">上一页</a></div>\n   <div class=\"txt Slide\">\n      <ul>\n      <#list model.adItemVos as ai >\n	  <#assign content=ai.content?eval />\n      <#assign product=content.product />\n     \n       <li>\n          <div><a href=\"/html/product/detail?id=${product.id}\" target=\"_blank\" title=\"${product.name}\">\n          <img class=\"lazy\" src=\"/images/grey.gif\" data-original=\"${product.mainPic}\" width=\"90\" height=\"90\" alt=\"${product.name}\"></a></div>\n          <h4><a href=\"/html/product/detail?id=${product.id}\" target=\"_blank\">${product.name}</a></h4>\n          <b>￥${product.price}</b> <span>已售${product.salesNum + product.virtualSalesNum }件</span> </li>\n       \n	  </#list>\n      \n      </ul>\n    </div> \n    <div class=\"prev Right\"><a href=\"javascript:;\">下一页</a></div>\n  </div>\n', '10', '1', '1000', '142', null, '2020-10-29 10:42:09');
INSERT INTO `a_ad_space` VALUES ('10', '首页材质分类', 'SY004', '<div class=\"txt\">\n      <ul>\n      <#list model.adItemVos as ai >\n		<#assign content=ai.content?eval />\n        <li><a href=\"${content.link}\" target=\"_blank\" title=\"${content.text}\">${content.text}</a><#if ai_has_next>|</#if></li>\n	  </#list>\n      </ul>\n    </div>\n', '5', '4', '240', '48', null, '2020-10-29 10:30:14');
INSERT INTO `a_ad_space` VALUES ('11', '首页款式分类', 'SY005', '<div class=\"txt\">\n      <ul>\n      <#list model.adItemVos as ai >\n		<#assign content=ai.content?eval />\n        <li><a href=\"${content.link}\" target=\"_blank\" title=\"${content.text}\">${content.text}</a><#if ai_has_next>|</#if></li>\n	  </#list>\n      </ul>\n    </div>\n', '10', '4', '240', '48', null, '2020-10-29 10:33:33');
INSERT INTO `a_ad_space` VALUES ('12', '台灯专区', 'SY007', 'SY007', '6', '1', null, null, null, '2020-10-25 22:44:41');
INSERT INTO `a_ad_space` VALUES ('13', '首页广告位', 'SY008', '', '10', '1', null, null, null, '2020-10-25 22:44:41');
INSERT INTO `a_ad_space` VALUES ('14', '吊灯专区', 'SY009', '', '10', '1', null, null, null, '2020-10-25 22:44:41');
INSERT INTO `a_ad_space` VALUES ('15', '首页广告位', 'SY010', '', '10', '1', null, null, null, '2020-10-25 22:44:41');
INSERT INTO `a_ad_space` VALUES ('16', '首页广告位', 'SY011', 'SY008', '10', '1', null, null, null, '2020-10-25 22:44:41');
INSERT INTO `a_ad_space` VALUES ('22', 'aaa', '111', 'sdasd', '22', '1', '1', '2', '2020-10-25 12:00:31', '2020-10-25 22:44:41');
INSERT INTO `a_ad_space` VALUES ('23', 'hhh', 'xxx', 'dadfadfdasf', '10', '3', '100', '200', '2020-10-27 12:39:33', '2020-10-27 12:39:33');

-- ----------------------------
-- Table structure for o_gateway_order
-- ----------------------------
DROP TABLE IF EXISTS `o_gateway_order`;
CREATE TABLE `o_gateway_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `gateway_trade_no` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `notify_time` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `pay_type` tinyint(4) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o_gateway_order
-- ----------------------------

-- ----------------------------
-- Table structure for o_logistic
-- ----------------------------
DROP TABLE IF EXISTS `o_logistic`;
CREATE TABLE `o_logistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `code` varchar(50) DEFAULT NULL COMMENT '快递公司代码',
  `company_url` varchar(100) DEFAULT NULL COMMENT '公司网址',
  `weight` double DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o_logistic
-- ----------------------------

-- ----------------------------
-- Table structure for o_order
-- ----------------------------
DROP TABLE IF EXISTS `o_order`;
CREATE TABLE `o_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT NULL COMMENT '订单状态',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `pay_amount` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `refund_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `total_quantity` int(11) DEFAULT NULL COMMENT '订单数量',
  `consumer_user_id` int(11) DEFAULT NULL,
  `consignee_tel` varchar(20) DEFAULT NULL COMMENT '收货人电话',
  `consignee_cellphone` varchar(20) DEFAULT NULL COMMENT '收货人手机',
  `consignee_name` varchar(100) DEFAULT NULL COMMENT '收货人姓名',
  `consignee_address` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `logisticid` int(11) DEFAULT NULL COMMENT '快递',
  `logistic_no` varchar(20) DEFAULT NULL COMMENT '快递单号',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o_order
-- ----------------------------

-- ----------------------------
-- Table structure for o_order_item
-- ----------------------------
DROP TABLE IF EXISTS `o_order_item`;
CREATE TABLE `o_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `message` varchar(500) DEFAULT NULL COMMENT '留言',
  `snapshot_id` int(11) DEFAULT NULL COMMENT '商品快照',
  `name` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `pic_url` varchar(100) DEFAULT NULL COMMENT '商品图片url',
  `product_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_t_order_t_snapshot` (`snapshot_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for o_order_log
-- ----------------------------
DROP TABLE IF EXISTS `o_order_log`;
CREATE TABLE `o_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for o_refund_apply
-- ----------------------------
DROP TABLE IF EXISTS `o_refund_apply`;
CREATE TABLE `o_refund_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '单订号',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `reason` varchar(1000) DEFAULT NULL COMMENT '退款原因',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  `reply` varchar(1000) DEFAULT NULL COMMENT '理员管回复',
  `reply_time` datetime DEFAULT NULL,
  `replay_admin_id` int(11) DEFAULT NULL,
  `pics` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o_refund_apply
-- ----------------------------

-- ----------------------------
-- Table structure for p_category
-- ----------------------------
DROP TABLE IF EXISTS `p_category`;
CREATE TABLE `p_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '上级id',
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `leaf` bit(1) DEFAULT NULL COMMENT '是否是叶子',
  `weight` double DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_admin` varchar(50) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_category
-- ----------------------------
INSERT INTO `p_category` VALUES ('1', '-1', 'aaa', 'aaa', '\0', '1', '2020-10-27 16:29:09', 'admin');
INSERT INTO `p_category` VALUES ('2', '1', 'bbb', 'bbb', '', '1', '2020-10-27 16:29:17', 'admin');

-- ----------------------------
-- Table structure for p_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `p_evaluation`;
CREATE TABLE `p_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `type` tinyint(4) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `agree` int(11) DEFAULT '0' COMMENT '认为此评价有用人数',
  `product_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `attitude_score` double(2,1) DEFAULT NULL COMMENT '服务态度得分',
  `describe_score` double(2,1) DEFAULT NULL COMMENT '描述相符得分',
  `speed_score` double(2,1) DEFAULT NULL COMMENT '发货速度得分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for p_product
-- ----------------------------
DROP TABLE IF EXISTS `p_product`;
CREATE TABLE `p_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `main_pic` varchar(100) DEFAULT NULL COMMENT '主图',
  `pic_filenames` varchar(500) DEFAULT NULL COMMENT '轮播图',
  `price` decimal(10,2) DEFAULT NULL COMMENT '销售价',
  `original_price` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `cost_price` decimal(10,2) DEFAULT NULL COMMENT '成本价',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_admin` varchar(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `category_id` int(11) DEFAULT NULL COMMENT '分类',
  `all_category_ids` varchar(150) DEFAULT NULL COMMENT '所有的分类id',
  `stock` int(6) DEFAULT NULL COMMENT '库存',
  `sales_num` int(6) DEFAULT '0' COMMENT '销量',
  `virtual_sales_num` int(6) DEFAULT '0' COMMENT '虚拟销量',
  `evaluation_num` int(6) DEFAULT '0' COMMENT '评价数量',
  `evaluation_score` double(3,2) DEFAULT '0.00' COMMENT '商品评价的总平均分',
  `properties` varchar(1000) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL COMMENT '备用字段',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_product
-- ----------------------------

-- ----------------------------
-- Table structure for p_product_detail
-- ----------------------------
DROP TABLE IF EXISTS `p_product_detail`;
CREATE TABLE `p_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `detail` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of p_product_detail
-- ----------------------------
INSERT INTO `p_product_detail` VALUES ('1', '1', '<p>dsfadfasdfasdf</p><p><br></p><p>adfadfasf</p>');

-- ----------------------------
-- Table structure for p_product_log
-- ----------------------------
DROP TABLE IF EXISTS `p_product_log`;
CREATE TABLE `p_product_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_product_log
-- ----------------------------

-- ----------------------------
-- Table structure for p_property
-- ----------------------------
DROP TABLE IF EXISTS `p_property`;
CREATE TABLE `p_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '属性名',
  `property_values` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_property
-- ----------------------------

-- ----------------------------
-- Table structure for p_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `p_snapshot`;
CREATE TABLE `p_snapshot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `content` longtext,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_snapshot
-- ----------------------------

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `real_name` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_admin` varchar(50) DEFAULT NULL COMMENT '创建人',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态，1：正常，2：冻结',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES ('2', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '13331333223', 'aa@qq.com', '超级管理员', '2013-03-17 22:30:31', '2020-10-28 19:00:02', '2', '1', '2020-10-28 19:00:01');
INSERT INTO `s_admin` VALUES ('28', 'kefu', 'e10adc3949ba59abbe56e057f20f883e', '13331333223', 'sdf@df.fd', '客服', '2020-10-27 16:28:21', '2020-10-27 16:28:33', 'admin', '1', '2020-10-27 16:28:33');

-- ----------------------------
-- Table structure for s_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `s_admin_role`;
CREATE TABLE `s_admin_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='后台用户和角色关系表';

-- ----------------------------
-- Records of s_admin_role
-- ----------------------------
INSERT INTO `s_admin_role` VALUES ('32', '21', '8');
INSERT INTO `s_admin_role` VALUES ('33', '21', '10');
INSERT INTO `s_admin_role` VALUES ('34', '26', '10');
INSERT INTO `s_admin_role` VALUES ('35', '26', '12');
INSERT INTO `s_admin_role` VALUES ('36', '26', '14');
INSERT INTO `s_admin_role` VALUES ('38', '23', '8');
INSERT INTO `s_admin_role` VALUES ('39', '23', '10');
INSERT INTO `s_admin_role` VALUES ('40', '27', '14');
INSERT INTO `s_admin_role` VALUES ('41', '28', '12');
INSERT INTO `s_admin_role` VALUES ('42', '2', '8');

-- ----------------------------
-- Table structure for s_permission
-- ----------------------------
DROP TABLE IF EXISTS `s_permission`;
CREATE TABLE `s_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '父级权限id',
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `code` varchar(200) DEFAULT NULL COMMENT '权限值',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `type` tinyint(2) DEFAULT NULL COMMENT '权限类型：1->菜单；2->按钮（接口绑定权限）',
  `href` varchar(200) DEFAULT NULL COMMENT '前端资源路径',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `weight` double(5,2) DEFAULT NULL COMMENT '排序',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='后台用户权限表';

-- ----------------------------
-- Records of s_permission
-- ----------------------------
INSERT INTO `s_permission` VALUES ('20', '33', '权限管理', 'permission:mgt', '', '1', '/page/permission-list.html', '2020-10-15 12:39:06', '3.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('28', '33', '角色管理', 'role:mgt', '', '1', '/page/role-list.html', '2020-10-16 18:45:45', '2.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('33', null, '系统管理', 'sys:mgt', 'layui-icon layui-icon-set', '1', '', '2020-10-19 10:23:37', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('34', '20', '添加权限', 'permission:add', '', '2', '', '2020-10-19 11:45:02', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('35', '20', '修改权限', 'permission:update', '', '2', '', '2020-10-19 12:52:11', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('36', '20', '删除权限', 'permission:del', '', '2', '', '2020-10-19 13:00:26', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('38', '28', '修改角色', 'role:update', '', '2', '', '2020-10-19 14:24:53', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('39', '28', '创建角色', 'role:add', '', '2', '', '2020-10-20 10:09:55', '2.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('40', '33', '管理员管理', 'admin:mgt', '', '1', '/page/admin-list.html', '2020-10-20 11:44:12', '10.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('41', '40', '创建管理员', 'admin:add', '', '2', '', '2020-10-20 13:03:53', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('42', '40', '删除管理员', 'admin:del', '', '2', '', '2020-10-20 13:05:06', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('43', '40', '修改管理员', 'admin:update', '', '2', '', '2020-10-20 13:05:42', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('44', '40', '冻结启用', 'admin:status', '', '2', '', '2020-10-20 13:09:39', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('45', '28', '删除角色', 'role:del', '', '2', '', '2020-10-20 13:25:26', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('48', null, '运营管理', 'biz:mgt', 'layui-icon layui-icon-service', '1', '', '2020-10-20 16:19:32', '10.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('49', '48', '商品管理', 'product:mgt', '', '1', '/page/product-list.html', '2020-10-20 16:20:12', '10.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('50', '48', '分类管理', 'category:mgt', '', '1', '/page/category-list.html', '2020-10-20 17:27:50', '5.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('51', null, '用户管理', 'user:mgt', 'layui-icon layui-icon-user', '1', '/page/user-list.html', '2020-10-20 18:52:52', '3.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('52', '49', '添加商品', 'product:add', '', '2', '', '2020-10-20 19:07:23', '8.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('53', '54', '订单列表', 'order:mgt', '', '1', '/page/order-list.html', '2020-10-20 19:08:39', '10.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('54', null, '交易管理', 'trade:mgt', 'layui-icon layui-icon-cart', '1', '', '2020-10-20 19:09:56', '5.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('55', '54', '待发货订单', 'order:pay-list', '', '1', '/page/order-paid-list.html', '2020-10-20 19:14:05', '5.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('56', '54', '待退款订单', 'order:refund-list', '', '1', '/page/order-refund-list.html', '2020-10-20 19:15:13', '3.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('57', '48', '广告位管理', 'ad-space:mgt', '', '1', '/page/ad-space-list.html', '2020-10-20 19:21:03', '3.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('58', '57', '添加广告位', 'ad-space:add', '', '2', '', '2020-10-20 19:22:07', '5.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('59', '50', '添加分类', 'category:add', '', '2', '', '2020-10-21 13:53:14', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('60', '50', '删除分类', 'category:del', '', '2', '', '2020-10-21 13:55:02', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('61', '50', '修改分类', 'category:update', '', '2', '', '2020-10-21 14:21:30', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('62', '49', '修改商品', 'product:update', '', '2', '', '2020-10-22 22:17:09', '5.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('63', '49', '删除商品', 'product:del', '', '2', '', '2020-10-22 22:20:37', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('64', '49', '上架商品', 'product:publish', '', '2', '', '2020-10-24 21:46:58', '2.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('65', '49', '下架商品', 'product:suspend', '', '2', '', '2020-10-24 21:47:32', '2.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('66', '57', '删除广告位', 'ad-space:del', '', '2', '', '2020-10-25 12:02:43', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('67', '57', '修改广告位', 'ad-space:update', '', '2', '', '2020-10-25 12:03:09', '2.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('68', '57', '广告管理', 'ad:mgt', '', '2', '', '2020-10-25 21:09:48', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('69', '68', '修改广告', 'ad:update', '', '2', '', '2020-10-25 22:40:39', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('70', '68', '删除广告', 'ad:del', '', '2', '', '2020-10-25 22:41:37', '1.00', '2020-10-25 22:48:18');
INSERT INTO `s_permission` VALUES ('71', '68', '添加广告', 'ad:add', '', '2', '', '2020-10-26 14:00:21', '3.00', '2020-10-26 14:00:21');
INSERT INTO `s_permission` VALUES ('72', '68', '发布广告', 'ad:publish', '', '2', '', '2020-10-27 14:27:37', '1.00', '2020-10-27 14:27:36');
INSERT INTO `s_permission` VALUES ('73', '51', '修改用户', 'user:update', '', '2', '', '2020-10-28 18:43:37', '1.00', '2020-10-28 18:43:36');
INSERT INTO `s_permission` VALUES ('74', '51', '删除用户', 'user:del', '', '2', '', '2020-10-28 18:44:12', '1.00', '2020-10-28 18:44:12');

-- ----------------------------
-- Table structure for s_role
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_admin` varchar(50) DEFAULT '0',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='后台用户角色表';

-- ----------------------------
-- Records of s_role
-- ----------------------------
INSERT INTO `s_role` VALUES ('8', '管理员', '555', null, '0', '2020-10-25 22:48:02');
INSERT INTO `s_role` VALUES ('12', '客服', '客服', '2020-10-20 10:11:07', '1', '2020-10-27 16:25:59');

-- ----------------------------
-- Table structure for s_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `s_role_permission`;
CREATE TABLE `s_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(20) DEFAULT NULL,
  `permission_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=763 DEFAULT CHARSET=utf8 COMMENT='后台用户角色和权限关系表';

-- ----------------------------
-- Records of s_role_permission
-- ----------------------------
INSERT INTO `s_role_permission` VALUES ('38', '9', '33');
INSERT INTO `s_role_permission` VALUES ('39', '9', '34');
INSERT INTO `s_role_permission` VALUES ('40', '9', '35');
INSERT INTO `s_role_permission` VALUES ('41', '9', '20');
INSERT INTO `s_role_permission` VALUES ('42', '9', '36');
INSERT INTO `s_role_permission` VALUES ('43', '9', '37');
INSERT INTO `s_role_permission` VALUES ('136', '10', '33');
INSERT INTO `s_role_permission` VALUES ('137', '10', '34');
INSERT INTO `s_role_permission` VALUES ('138', '10', '35');
INSERT INTO `s_role_permission` VALUES ('139', '10', '20');
INSERT INTO `s_role_permission` VALUES ('140', '10', '36');
INSERT INTO `s_role_permission` VALUES ('141', '10', '37');
INSERT INTO `s_role_permission` VALUES ('142', '10', '38');
INSERT INTO `s_role_permission` VALUES ('143', '10', '28');
INSERT INTO `s_role_permission` VALUES ('164', '14', '33');
INSERT INTO `s_role_permission` VALUES ('165', '14', '34');
INSERT INTO `s_role_permission` VALUES ('166', '14', '35');
INSERT INTO `s_role_permission` VALUES ('167', '14', '20');
INSERT INTO `s_role_permission` VALUES ('168', '14', '36');
INSERT INTO `s_role_permission` VALUES ('169', '14', '37');
INSERT INTO `s_role_permission` VALUES ('170', '14', '38');
INSERT INTO `s_role_permission` VALUES ('171', '14', '39');
INSERT INTO `s_role_permission` VALUES ('172', '14', '28');
INSERT INTO `s_role_permission` VALUES ('722', '8', '64');
INSERT INTO `s_role_permission` VALUES ('723', '8', '65');
INSERT INTO `s_role_permission` VALUES ('724', '8', '66');
INSERT INTO `s_role_permission` VALUES ('725', '8', '67');
INSERT INTO `s_role_permission` VALUES ('726', '8', '68');
INSERT INTO `s_role_permission` VALUES ('727', '8', '69');
INSERT INTO `s_role_permission` VALUES ('728', '8', '70');
INSERT INTO `s_role_permission` VALUES ('729', '8', '71');
INSERT INTO `s_role_permission` VALUES ('730', '8', '72');
INSERT INTO `s_role_permission` VALUES ('731', '8', '73');
INSERT INTO `s_role_permission` VALUES ('732', '8', '74');
INSERT INTO `s_role_permission` VALUES ('733', '8', '20');
INSERT INTO `s_role_permission` VALUES ('734', '8', '28');
INSERT INTO `s_role_permission` VALUES ('735', '8', '33');
INSERT INTO `s_role_permission` VALUES ('736', '8', '34');
INSERT INTO `s_role_permission` VALUES ('737', '8', '35');
INSERT INTO `s_role_permission` VALUES ('738', '8', '36');
INSERT INTO `s_role_permission` VALUES ('739', '8', '38');
INSERT INTO `s_role_permission` VALUES ('740', '8', '39');
INSERT INTO `s_role_permission` VALUES ('741', '8', '40');
INSERT INTO `s_role_permission` VALUES ('742', '8', '41');
INSERT INTO `s_role_permission` VALUES ('743', '8', '42');
INSERT INTO `s_role_permission` VALUES ('744', '8', '43');
INSERT INTO `s_role_permission` VALUES ('745', '8', '44');
INSERT INTO `s_role_permission` VALUES ('746', '8', '45');
INSERT INTO `s_role_permission` VALUES ('747', '8', '48');
INSERT INTO `s_role_permission` VALUES ('748', '8', '49');
INSERT INTO `s_role_permission` VALUES ('749', '8', '50');
INSERT INTO `s_role_permission` VALUES ('750', '8', '51');
INSERT INTO `s_role_permission` VALUES ('751', '8', '52');
INSERT INTO `s_role_permission` VALUES ('752', '8', '53');
INSERT INTO `s_role_permission` VALUES ('753', '8', '54');
INSERT INTO `s_role_permission` VALUES ('754', '8', '55');
INSERT INTO `s_role_permission` VALUES ('755', '8', '56');
INSERT INTO `s_role_permission` VALUES ('756', '8', '57');
INSERT INTO `s_role_permission` VALUES ('757', '8', '58');
INSERT INTO `s_role_permission` VALUES ('758', '8', '59');
INSERT INTO `s_role_permission` VALUES ('759', '8', '60');
INSERT INTO `s_role_permission` VALUES ('760', '8', '61');
INSERT INTO `s_role_permission` VALUES ('761', '8', '62');
INSERT INTO `s_role_permission` VALUES ('762', '8', '63');

-- ----------------------------
-- Table structure for u_cart
-- ----------------------------
DROP TABLE IF EXISTS `u_cart`;
CREATE TABLE `u_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of u_cart
-- ----------------------------

-- ----------------------------
-- Table structure for u_consignee_info
-- ----------------------------
DROP TABLE IF EXISTS `u_consignee_info`;
CREATE TABLE `u_consignee_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `region` varchar(100) DEFAULT NULL COMMENT '地区',
  `address` varchar(255) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `default_use` tinyint(1) DEFAULT '0' COMMENT '是否为默认收货地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of u_consignee_info
-- ----------------------------

-- ----------------------------
-- Table structure for u_favorite
-- ----------------------------
DROP TABLE IF EXISTS `u_favorite`;
CREATE TABLE `u_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pic_url` varchar(100) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `objectid` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of u_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for u_open_user
-- ----------------------------
DROP TABLE IF EXISTS `u_open_user`;
CREATE TABLE `u_open_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `user_info` varchar(2000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `access_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of u_open_user
-- ----------------------------

-- ----------------------------
-- Table structure for u_session_token
-- ----------------------------
DROP TABLE IF EXISTS `u_session_token`;
CREATE TABLE `u_session_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_token` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remote_address` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_token` (`session_token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of u_session_token
-- ----------------------------

-- ----------------------------
-- Table structure for u_user
-- ----------------------------
DROP TABLE IF EXISTS `u_user`;
CREATE TABLE `u_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of u_user
-- ----------------------------
