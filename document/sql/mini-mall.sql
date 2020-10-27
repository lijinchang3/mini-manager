/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : mini-mall

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-10-27 16:30:57
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_ad_item
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_ad_space
-- ----------------------------
INSERT INTO `a_ad_space` VALUES ('1', '首页', 'SY001', '<html>', '5', '2', '100', '100', '2020-10-27 16:30:28', '2020-10-27 16:30:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_product
-- ----------------------------
INSERT INTO `p_product` VALUES ('1', 'yyyy', '/temp/2020-10-27/1603787372468.jpg', '/temp/2020-10-27/1603787372468.jpg', '1.00', '2.00', '2.00', '2020-10-27 16:29:46', 'admin', '2', '2', '1,2', '2', '0', '1', '0', '0.00', null, null, '2020-10-27 16:29:57');

-- ----------------------------
-- Table structure for p_product_detail
-- ----------------------------
DROP TABLE IF EXISTS `p_product_detail`;
CREATE TABLE `p_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `detail` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

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
  `phone` char(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `real_name` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_admin` varchar(50) DEFAULT NULL COMMENT '创建人',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态，1：正常，2：冻结',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES ('2', 'admin', '4297f44b13955235245b2497399d7a93', null, null, '超级管理员', '2013-03-17 22:30:31', '2020-10-27 16:28:50', '2', '1', '2020-10-27 16:28:50');
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
INSERT INTO `s_admin_role` VALUES ('31', '2', '8');
INSERT INTO `s_admin_role` VALUES ('32', '21', '8');
INSERT INTO `s_admin_role` VALUES ('33', '21', '10');
INSERT INTO `s_admin_role` VALUES ('34', '26', '10');
INSERT INTO `s_admin_role` VALUES ('35', '26', '12');
INSERT INTO `s_admin_role` VALUES ('36', '26', '14');
INSERT INTO `s_admin_role` VALUES ('38', '23', '8');
INSERT INTO `s_admin_role` VALUES ('39', '23', '10');
INSERT INTO `s_admin_role` VALUES ('40', '27', '14');
INSERT INTO `s_admin_role` VALUES ('41', '28', '12');

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='后台用户权限表';

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
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8 COMMENT='后台用户角色和权限关系表';

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
INSERT INTO `s_role_permission` VALUES ('606', '8', '64');
INSERT INTO `s_role_permission` VALUES ('607', '8', '65');
INSERT INTO `s_role_permission` VALUES ('608', '8', '66');
INSERT INTO `s_role_permission` VALUES ('609', '8', '67');
INSERT INTO `s_role_permission` VALUES ('610', '8', '68');
INSERT INTO `s_role_permission` VALUES ('611', '8', '69');
INSERT INTO `s_role_permission` VALUES ('612', '8', '70');
INSERT INTO `s_role_permission` VALUES ('613', '8', '71');
INSERT INTO `s_role_permission` VALUES ('614', '8', '72');
INSERT INTO `s_role_permission` VALUES ('615', '8', '20');
INSERT INTO `s_role_permission` VALUES ('616', '8', '28');
INSERT INTO `s_role_permission` VALUES ('617', '8', '33');
INSERT INTO `s_role_permission` VALUES ('618', '8', '34');
INSERT INTO `s_role_permission` VALUES ('619', '8', '35');
INSERT INTO `s_role_permission` VALUES ('620', '8', '36');
INSERT INTO `s_role_permission` VALUES ('621', '8', '38');
INSERT INTO `s_role_permission` VALUES ('622', '8', '39');
INSERT INTO `s_role_permission` VALUES ('623', '8', '40');
INSERT INTO `s_role_permission` VALUES ('624', '8', '41');
INSERT INTO `s_role_permission` VALUES ('625', '8', '42');
INSERT INTO `s_role_permission` VALUES ('626', '8', '43');
INSERT INTO `s_role_permission` VALUES ('627', '8', '44');
INSERT INTO `s_role_permission` VALUES ('628', '8', '45');
INSERT INTO `s_role_permission` VALUES ('629', '8', '48');
INSERT INTO `s_role_permission` VALUES ('630', '8', '49');
INSERT INTO `s_role_permission` VALUES ('631', '8', '50');
INSERT INTO `s_role_permission` VALUES ('632', '8', '51');
INSERT INTO `s_role_permission` VALUES ('633', '8', '52');
INSERT INTO `s_role_permission` VALUES ('634', '8', '53');
INSERT INTO `s_role_permission` VALUES ('635', '8', '54');
INSERT INTO `s_role_permission` VALUES ('636', '8', '55');
INSERT INTO `s_role_permission` VALUES ('637', '8', '56');
INSERT INTO `s_role_permission` VALUES ('638', '8', '57');
INSERT INTO `s_role_permission` VALUES ('639', '8', '58');
INSERT INTO `s_role_permission` VALUES ('640', '8', '59');
INSERT INTO `s_role_permission` VALUES ('641', '8', '60');
INSERT INTO `s_role_permission` VALUES ('642', '8', '61');
INSERT INTO `s_role_permission` VALUES ('643', '8', '62');
INSERT INTO `s_role_permission` VALUES ('644', '8', '63');
INSERT INTO `s_role_permission` VALUES ('645', '12', '64');
INSERT INTO `s_role_permission` VALUES ('646', '12', '65');
INSERT INTO `s_role_permission` VALUES ('647', '12', '68');
INSERT INTO `s_role_permission` VALUES ('648', '12', '69');
INSERT INTO `s_role_permission` VALUES ('649', '12', '70');
INSERT INTO `s_role_permission` VALUES ('650', '12', '71');
INSERT INTO `s_role_permission` VALUES ('651', '12', '72');
INSERT INTO `s_role_permission` VALUES ('652', '12', '48');
INSERT INTO `s_role_permission` VALUES ('653', '12', '49');
INSERT INTO `s_role_permission` VALUES ('654', '12', '50');
INSERT INTO `s_role_permission` VALUES ('655', '12', '52');
INSERT INTO `s_role_permission` VALUES ('656', '12', '57');
INSERT INTO `s_role_permission` VALUES ('657', '12', '59');
INSERT INTO `s_role_permission` VALUES ('658', '12', '60');
INSERT INTO `s_role_permission` VALUES ('659', '12', '61');
INSERT INTO `s_role_permission` VALUES ('660', '12', '62');
INSERT INTO `s_role_permission` VALUES ('661', '12', '63');

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
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
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
