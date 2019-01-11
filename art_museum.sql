/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : art_museum

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2018-05-21 10:04:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', '2018-05-04 10:00:35', null, null);

-- ----------------------------
-- Table structure for `art_work`
-- ----------------------------
DROP TABLE IF EXISTS `art_work`;
CREATE TABLE `art_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `content` text,
  `type` tinyint(4) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `collect` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `art_work_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of art_work
-- ----------------------------
INSERT INTO `art_work` VALUES ('1', '6', '修改的内容', '0', '/uploads/1525184449972.jpg', '', '16', '1', '0', '4', '0', '2018-05-01 22:20:55', '2018-05-11 22:35:21', null);
INSERT INTO `art_work` VALUES ('2', '6', 'emm', '1', '/uploads/1525184642503.mp4', '/uploads/screen-1525184642503.png', '87', '1', '0', '2', '0', '2018-05-01 22:24:27', '2018-05-06 01:17:35', null);
INSERT INTO `art_work` VALUES ('3', '6', '123456', '0', '/uploads/1525234140400.jpg', '', '10', '1', '0', '3', '0', '2018-05-02 12:09:06', '2018-05-05 14:18:25', null);
INSERT INTO `art_work` VALUES ('4', '6', '2018.5.2 无聊ing', '0', '/uploads/1525252490147.jpg', '', '10', '0', '0', '2', '0', '2018-05-02 17:14:52', null, null);
INSERT INTO `art_work` VALUES ('5', '6', 'fnenfkdelnflknckm', '0', '/uploads/1525252655697.jpg', '', '7', '1', '0', '5', '0', '2018-05-02 17:17:45', '2018-05-11 22:30:52', null);
INSERT INTO `art_work` VALUES ('6', '6', '123', '0', '/uploads/1525252712597.jpg', '', '3', '0', '0', '2', '0', '2018-05-02 17:18:41', null, null);
INSERT INTO `art_work` VALUES ('7', '6', '12346', '0', '/uploads/1525252815769.png', '', '7', '1', '0', '3', '0', '2018-05-02 17:20:31', '2018-05-05 12:45:44', null);
INSERT INTO `art_work` VALUES ('8', '6', '', '0', '/uploads/1525253463261.jpg', '', '4', '0', '0', '4', '0', '2018-05-02 17:31:04', null, null);
INSERT INTO `art_work` VALUES ('9', '6', 'QAQ', '0', '/uploads/1525253502442.jpg', '', '31', '1', '0', '5', '0', '2018-05-02 17:32:01', '2018-05-05 00:50:13', null);
INSERT INTO `art_work` VALUES ('10', '6', '说吧 美不美', '0', '/uploads/1525271568682.jpg', '', '31', '0', '0', '6', '0', '2018-05-02 22:33:08', null, null);
INSERT INTO `art_work` VALUES ('11', '6', '', '0', '/uploads/1525271698182.jpg', '', '14', '0', '0', '4', '0', '2018-05-02 22:34:59', null, null);
INSERT INTO `art_work` VALUES ('12', '6', '', '0', '/uploads/1525271719160.jpg', '', '55', '0', '0', '3', '0', '2018-05-02 22:35:20', null, null);
INSERT INTO `art_work` VALUES ('13', '13', 'zz', '0', '/uploads/1525337470127.jpg', '', '27', '1', '0', '2', '0', '2018-05-03 16:51:12', '2018-05-05 00:50:02', null);
INSERT INTO `art_work` VALUES ('14', '14', 'h', '0', '/uploads/1525337980973.jpg', '', '291', '2', '2', '3', '0', '2018-05-03 16:59:44', '2018-05-07 14:46:24', null);
INSERT INTO `art_work` VALUES ('15', '15', '555用户', '0', '/uploads/1525349195358.png', '', '95', '1', '1', '5', '0', '2018-05-03 20:06:45', '2018-05-05 00:47:33', null);
INSERT INTO `art_work` VALUES ('16', '6', 'qqqqqqqqqqq', '0', '/uploads/1525515012990.jpg', '', '1', '0', '0', '3', '0', '2018-05-05 18:10:40', null, null);
INSERT INTO `art_work` VALUES ('17', '6', '123456654321', '0', '/uploads/1525515196750.jpg', '', '1', '0', '0', '2', '0', '2018-05-05 18:13:24', null, null);
INSERT INTO `art_work` VALUES ('18', '6', '', '0', '/uploads/1525515374504.jpg', '', '2', '0', '0', '5', '0', '2018-05-05 18:16:16', null, null);
INSERT INTO `art_work` VALUES ('19', '6', '', '0', '/uploads/1525515386951.jpg', '', '3', '0', '0', '4', '0', '2018-05-05 18:16:29', null, null);
INSERT INTO `art_work` VALUES ('20', '6', '', '0', '/uploads/1525515457623.jpg', '', '3', '0', '1', '4', '0', '2018-05-05 18:17:39', '2018-05-07 14:46:11', null);
INSERT INTO `art_work` VALUES ('21', '6', '再也没有', '1', '/uploads/1525539490014.mp4', '/uploads/screen-1525539490014.png', '9', '0', '0', '5', '0', '2018-05-06 00:59:01', null, null);
INSERT INTO `art_work` VALUES ('22', '18', '有的爱犹豫不决\n\n还在想他就离开', '0', '/uploads/1525675536358.png', '', '9', '2', '1', '3', '0', '2018-05-07 14:45:57', '2018-05-07 14:48:11', null);
INSERT INTO `art_work` VALUES ('23', '11', '', '0', '/uploads/1525682673324.jpg', '', '2', '0', '0', '2', '0', '2018-05-07 16:44:35', null, null);
INSERT INTO `art_work` VALUES ('24', '2', '再也没有', '0', '/uploads/1525675536358.png', null, '1', '0', '0', '1', '0', '2018-05-07 17:08:00', null, null);
INSERT INTO `art_work` VALUES ('25', '3', '再也没有', '0', '/uploads/1525675536358.png', null, '1', '0', '0', '1', '0', '2018-05-07 17:08:36', null, null);
INSERT INTO `art_work` VALUES ('26', '2', '再也没有1', '0', '/uploads/1525675536358.png', null, '2', '0', '0', '1', '0', '2018-05-07 17:09:02', null, null);
INSERT INTO `art_work` VALUES ('27', '3', '再也没有3', '0', '/uploads/1525675536358.png', null, '2', '0', '0', '2', '0', '2018-05-07 17:09:31', null, null);
INSERT INTO `art_work` VALUES ('28', '6', 'dff', '0', '/uploads/1526049623189.jpg', '', '1', '0', '0', '4', '1', '2018-05-11 22:40:33', null, null);
INSERT INTO `art_work` VALUES ('29', '6', '', '0', '/uploads/1526051251316.jpg', '', '1', '0', '0', '6', '1', '2018-05-11 23:07:37', null, null);
INSERT INTO `art_work` VALUES ('30', '6', '', '0', '/uploads/1526051503532.jpg', '', '2', '0', '0', '6', '0', '2018-05-11 23:11:47', null, null);

-- ----------------------------
-- Table structure for `carousel`
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('1', '标题1', '/poster/1526054887688.png', '#', '2018-04-30 12:40:33', '2018-05-12 00:26:12', null);
INSERT INTO `carousel` VALUES ('2', '标题2', '/carousel/02.jpg', '#', '2018-04-30 12:41:44', null, null);
INSERT INTO `carousel` VALUES ('3', '标题3', '/carousel/03.jpg', '#', '2018-04-30 12:42:41', null, null);
INSERT INTO `carousel` VALUES ('4', '标题4', '/carousel/04.jpg', '#', '2018-04-30 12:42:44', null, null);
INSERT INTO `carousel` VALUES ('5', '测试轮播创建', '/poster/1526055723869.jpg', '#', '2018-05-12 00:22:05', null, '2018-05-12 00:26:01');
INSERT INTO `carousel` VALUES ('6', '测试轮播创建1111', '/poster/1526055784098.jpg', '#', '2018-05-12 00:23:05', null, '2018-05-12 00:25:59');

-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `workId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('1', '1', '1', '2018-05-04 17:07:19', null, null);
INSERT INTO `collect` VALUES ('2', '1', '2', '2018-05-04 17:07:27', null, null);
INSERT INTO `collect` VALUES ('3', '1', '3', '2018-05-04 17:07:34', null, null);
INSERT INTO `collect` VALUES ('4', '2', '4', '2018-05-04 17:07:43', null, null);
INSERT INTO `collect` VALUES ('5', '2', '5', '2018-05-04 17:07:51', null, null);
INSERT INTO `collect` VALUES ('6', '3', '5', '2018-05-04 17:08:00', null, null);
INSERT INTO `collect` VALUES ('7', '6', '14', '2018-05-04 22:51:06', null, '2018-05-05 00:26:29');
INSERT INTO `collect` VALUES ('8', '6', '14', '2018-05-04 22:51:30', null, '2018-05-05 00:26:29');
INSERT INTO `collect` VALUES ('9', '6', '10', '2018-05-05 00:13:18', null, null);
INSERT INTO `collect` VALUES ('10', '6', '10', '2018-05-05 00:13:20', null, null);
INSERT INTO `collect` VALUES ('11', '6', '15', '2018-05-05 00:14:11', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('12', '6', '15', '2018-05-05 00:14:33', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('13', '6', '15', '2018-05-05 00:16:29', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('14', '6', '15', '2018-05-05 00:16:35', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('15', '6', '15', '2018-05-05 00:16:36', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('16', '6', '15', '2018-05-05 00:16:38', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('17', '6', '15', '2018-05-05 00:19:08', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('18', '6', '15', '2018-05-05 00:19:45', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('19', '6', '15', '2018-05-05 00:22:34', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('20', '6', '15', '2018-05-05 00:22:35', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('21', '6', '15', '2018-05-05 00:22:36', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('22', '6', '15', '2018-05-05 00:22:37', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('23', '6', '15', '2018-05-05 00:22:38', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('24', '6', '14', '2018-05-05 00:22:46', null, '2018-05-05 00:26:29');
INSERT INTO `collect` VALUES ('25', '6', '13', '2018-05-05 00:24:02', null, '2018-05-05 00:50:01');
INSERT INTO `collect` VALUES ('26', '6', '13', '2018-05-05 00:24:22', null, '2018-05-05 00:50:01');
INSERT INTO `collect` VALUES ('27', '6', '13', '2018-05-05 00:24:24', null, '2018-05-05 00:50:01');
INSERT INTO `collect` VALUES ('28', '6', '13', '2018-05-05 00:24:25', null, '2018-05-05 00:50:01');
INSERT INTO `collect` VALUES ('29', '6', '13', '2018-05-05 00:24:26', null, '2018-05-05 00:50:01');
INSERT INTO `collect` VALUES ('30', '6', '13', '2018-05-05 00:24:26', null, '2018-05-05 00:50:01');
INSERT INTO `collect` VALUES ('31', '6', '13', '2018-05-05 00:24:27', null, '2018-05-05 00:50:01');
INSERT INTO `collect` VALUES ('32', '6', '14', '2018-05-05 00:24:41', null, '2018-05-05 00:26:29');
INSERT INTO `collect` VALUES ('33', '6', '14', '2018-05-05 00:24:43', null, '2018-05-05 00:26:29');
INSERT INTO `collect` VALUES ('34', '6', '15', '2018-05-05 00:24:51', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('35', '6', '15', '2018-05-05 00:26:17', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('36', '6', '14', '2018-05-05 00:26:27', null, '2018-05-05 00:26:29');
INSERT INTO `collect` VALUES ('37', '6', '14', '2018-05-05 00:26:28', null, '2018-05-05 00:26:29');
INSERT INTO `collect` VALUES ('38', '6', '14', '2018-05-05 00:26:29', null, null);
INSERT INTO `collect` VALUES ('39', '6', '13', '2018-05-05 00:26:41', null, '2018-05-05 00:50:01');
INSERT INTO `collect` VALUES ('40', '6', '9', '2018-05-05 00:26:50', null, '2018-05-05 00:26:56');
INSERT INTO `collect` VALUES ('41', '6', '9', '2018-05-05 00:26:55', null, '2018-05-05 00:26:56');
INSERT INTO `collect` VALUES ('42', '6', '7', '2018-05-05 00:27:08', null, '2018-05-05 00:29:44');
INSERT INTO `collect` VALUES ('43', '6', '7', '2018-05-05 00:27:10', null, '2018-05-05 00:29:44');
INSERT INTO `collect` VALUES ('44', '6', '7', '2018-05-05 00:28:39', null, '2018-05-05 00:29:44');
INSERT INTO `collect` VALUES ('45', '6', '7', '2018-05-05 00:28:48', null, '2018-05-05 00:29:44');
INSERT INTO `collect` VALUES ('46', '6', '7', '2018-05-05 00:29:44', null, '2018-05-05 00:29:44');
INSERT INTO `collect` VALUES ('47', '6', '15', '2018-05-05 00:31:46', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('48', '6', '15', '2018-05-05 00:31:48', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('49', '6', '15', '2018-05-05 00:31:49', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('50', '6', '15', '2018-05-05 00:31:50', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('51', '6', '15', '2018-05-05 00:31:51', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('52', '6', '15', '2018-05-05 00:31:52', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('53', '6', '15', '2018-05-05 00:31:53', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('54', '6', '15', '2018-05-05 00:31:54', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('55', '6', '15', '2018-05-05 00:31:57', null, '2018-05-05 00:32:43');
INSERT INTO `collect` VALUES ('56', '6', '15', '2018-05-05 00:32:44', null, null);
INSERT INTO `collect` VALUES ('57', '6', '13', '2018-05-05 00:50:02', null, null);
INSERT INTO `collect` VALUES ('58', '18', '20', '2018-05-07 14:46:11', null, null);
INSERT INTO `collect` VALUES ('59', '18', '14', '2018-05-07 14:46:23', null, null);
INSERT INTO `collect` VALUES ('60', '6', '22', '2018-05-07 14:48:10', null, null);

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workId` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topicId` (`workId`),
  KEY `fromId` (`userId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`workId`) REFERENCES `art_work` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '评论的内容', '1', '2018-05-03 10:01:39', null, null);
INSERT INTO `comment` VALUES ('2', '1', '评论的内容', '2', '2018-05-03 10:02:38', null, null);
INSERT INTO `comment` VALUES ('3', '1', '评论的内容', '3', '2018-05-03 10:03:18', null, null);
INSERT INTO `comment` VALUES ('4', '14', '飒飒', '6', '2018-05-03 22:55:39', null, '2018-05-04 16:17:19');
INSERT INTO `comment` VALUES ('5', '1', '评论的内容', '4', '2018-05-03 23:12:47', null, null);
INSERT INTO `comment` VALUES ('6', '1', '评论的内容', '6', '2018-05-03 23:17:25', null, '2018-05-05 12:36:00');
INSERT INTO `comment` VALUES ('7', '1', '评论的内容1', '7', '2018-05-03 23:18:48', null, null);
INSERT INTO `comment` VALUES ('8', '1', '评论的内容', '7', '2018-05-03 23:19:26', null, null);
INSERT INTO `comment` VALUES ('9', '1', '评论的内容', '8', '2018-05-03 23:20:19', null, null);
INSERT INTO `comment` VALUES ('10', '1', '评论的内容111', '6', '2018-05-03 23:22:44', null, '2018-05-05 14:19:15');
INSERT INTO `comment` VALUES ('11', '1', '评论的内容123123', '9', '2018-05-03 23:25:49', null, null);
INSERT INTO `comment` VALUES ('12', '1', '评论的内容123123', '9', '2018-05-03 23:26:04', null, null);
INSERT INTO `comment` VALUES ('13', '14', '123456789', '6', '2018-05-03 23:28:30', null, '2018-05-04 16:24:34');
INSERT INTO `comment` VALUES ('14', '14', '321', '6', '2018-05-03 23:29:01', null, '2018-05-04 16:24:41');
INSERT INTO `comment` VALUES ('15', '14', '456', '6', '2018-05-03 23:29:44', null, '2018-05-04 16:24:39');
INSERT INTO `comment` VALUES ('16', '12', 'mz', '6', '2018-05-04 00:31:47', null, '2018-05-04 16:25:16');
INSERT INTO `comment` VALUES ('17', '14', '13476969269', '6', '2018-05-04 00:40:39', null, '2018-05-04 16:24:37');
INSERT INTO `comment` VALUES ('18', '15', 'poiuytrewq', '16', '2018-05-04 01:17:22', null, null);
INSERT INTO `comment` VALUES ('19', '1', '评论的内容123123', '9', '2018-05-04 01:25:21', null, null);
INSERT INTO `comment` VALUES ('20', '12', 'u16 to w12 author6', '16', '2018-05-04 02:24:09', null, null);
INSERT INTO `comment` VALUES ('21', '9', '1111', '16', '2018-05-04 02:52:23', null, null);
INSERT INTO `comment` VALUES ('22', '14', 'sdsfdfaf', '16', '2018-05-04 03:10:19', null, null);
INSERT INTO `comment` VALUES ('23', '12', '2018.5.4.3.12', '16', '2018-05-04 03:12:59', null, null);
INSERT INTO `comment` VALUES ('24', '15', 'emm1', '6', '2018-05-04 13:36:12', null, '2018-05-04 16:24:57');
INSERT INTO `comment` VALUES ('25', '12', '我们需要一个等待的过程', '12', '2018-05-04 13:54:08', null, null);
INSERT INTO `comment` VALUES ('26', '13', 'You\'ll always be my brother', '12', '2018-05-04 13:57:04', null, null);
INSERT INTO `comment` VALUES ('27', '9', '1234567890', '17', '2018-05-04 14:28:22', null, null);
INSERT INTO `comment` VALUES ('28', '9', '11111', '17', '2018-05-04 14:30:30', null, null);
INSERT INTO `comment` VALUES ('29', '10', '评论1', '12', '2018-05-04 14:45:21', null, null);
INSERT INTO `comment` VALUES ('30', '14', '12346', '6', '2018-05-04 16:26:00', null, '2018-05-04 16:46:08');
INSERT INTO `comment` VALUES ('31', '15', '123456', '6', '2018-05-04 16:32:42', null, '2018-05-04 16:34:25');
INSERT INTO `comment` VALUES ('32', '15', '456+45615', '6', '2018-05-04 16:32:53', null, '2018-05-04 16:34:27');
INSERT INTO `comment` VALUES ('33', '4', 'asdfghh', '6', '2018-05-05 12:42:57', null, '2018-05-05 12:43:39');
INSERT INTO `comment` VALUES ('34', '14', 'Aefsef ', '6', '2018-05-05 18:07:09', null, '2018-05-07 16:40:49');
INSERT INTO `comment` VALUES ('35', '14', '123456', '18', '2018-05-07 14:46:28', null, null);
INSERT INTO `comment` VALUES ('36', '14', '一辈子的孤单', '18', '2018-05-07 14:46:36', null, null);
INSERT INTO `comment` VALUES ('37', '14', '从明天起，做一个幸福的人  喂马，劈柴，周游世界  从明天起，关心粮食和蔬菜  我有一所房子，面朝大海，春暖花开 ', '6', '2018-05-07 16:57:21', null, null);

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '超详细的大熊猫简笔画', '1', '/uploads/1525545755653.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:29:57', '2018-05-11 21:35:33', null);
INSERT INTO `course` VALUES ('2', '超详细的大熊猫简笔画', '2', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:30:32', '2018-05-11 21:32:39', null);
INSERT INTO `course` VALUES ('3', '超详细的大熊猫简笔画', '2', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:30:58', '2018-05-11 21:32:46', null);
INSERT INTO `course` VALUES ('4', '超详细的大熊猫简笔画', '2', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:31:39', '2018-05-11 21:34:19', null);
INSERT INTO `course` VALUES ('5', '超详细的大熊猫简笔画', '3', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:32:03', null, null);
INSERT INTO `course` VALUES ('6', '超详细的大熊猫简笔画', '4', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:32:34', null, null);
INSERT INTO `course` VALUES ('7', '超详细的大熊猫简笔画', '6', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:32:58', null, null);
INSERT INTO `course` VALUES ('8', '超详细的大熊猫简笔画', '3', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:33:29', null, null);
INSERT INTO `course` VALUES ('9', '超详细的大熊猫简笔画', '3', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:33:50', null, null);
INSERT INTO `course` VALUES ('10', '超详细的大熊猫简笔画', '3', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:34:16', null, null);
INSERT INTO `course` VALUES ('11', '超详细的大熊猫简笔画', '2', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:35:13', null, null);
INSERT INTO `course` VALUES ('12', '超详细的大熊猫简笔画', '3', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 01:35:11', null, null);
INSERT INTO `course` VALUES ('13', '测试教程创建', '2', '/uploads/1525544486969.jpg', 'https://www.meishubao.com/course/detail/10993.html', '2018-05-06 02:21:28', null, null);
INSERT INTO `course` VALUES ('14', '测试教程类型', '2', '/uploads/1526044418882.jpg', 'https://segmentfault.com/a/1190000010958154', '2018-05-11 21:13:40', '2018-05-11 21:14:23', null);
INSERT INTO `course` VALUES ('15', '测试教程类型1111', '3', '/uploads/1526044485469.jpg', '12312312312', '2018-05-11 21:14:46', '2018-05-11 21:34:35', null);
INSERT INTO `course` VALUES ('16', '测试1111', '2', '/uploads/1526044550247.jpg', '1312312312', '2018-05-11 21:15:51', '2018-05-11 21:19:27', null);
INSERT INTO `course` VALUES ('17', '测试333333', '2', '/uploads/1526044757107.jpg', '1212313123123', '2018-05-11 21:19:18', null, null);

-- ----------------------------
-- Table structure for `exhibition`
-- ----------------------------
DROP TABLE IF EXISTS `exhibition`;
CREATE TABLE `exhibition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exhibition
-- ----------------------------
INSERT INTO `exhibition` VALUES ('1', '第1个画展', '2018-05-06', '2018-05-06', '/poster/1525573682136.jpg', '测试第1个画展', '2018-05-05 16:16:38', '2018-05-06 10:28:03', null);
INSERT INTO `exhibition` VALUES ('2', '第2个画展', '2018-05-01', '2018-06-01', '/poster/1525527937466.jpg', '测试第2个画展', '2018-05-05 16:17:23', '2018-05-05 21:59:12', null);
INSERT INTO `exhibition` VALUES ('3', '第3个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第3个画展', '2018-05-05 16:17:32', null, null);
INSERT INTO `exhibition` VALUES ('4', '第4个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第4个画展', '2018-05-05 16:17:35', null, null);
INSERT INTO `exhibition` VALUES ('5', '第5个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第5个画展', '2018-05-05 16:17:36', null, null);
INSERT INTO `exhibition` VALUES ('6', '第6个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第6个画展', '2018-05-05 16:17:37', null, null);
INSERT INTO `exhibition` VALUES ('7', '第7个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第7个画展', '2018-05-05 16:17:38', null, null);
INSERT INTO `exhibition` VALUES ('8', '第8个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第8个画展', '2018-05-05 16:17:38', null, null);
INSERT INTO `exhibition` VALUES ('9', '第9个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第9个画展', '2018-05-05 16:17:39', null, null);
INSERT INTO `exhibition` VALUES ('10', '第10个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第10个画展', '2018-05-05 16:17:39', null, null);
INSERT INTO `exhibition` VALUES ('11', '第11个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第11个画展', '2018-05-05 16:17:42', null, null);
INSERT INTO `exhibition` VALUES ('12', '第12个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第12个画展', '2018-05-05 16:17:42', null, null);
INSERT INTO `exhibition` VALUES ('13', '第13个画展', '2018-05-05', '2018-06-01', '/poster/1525515143392.jpg', '测试第13个画展', '2018-05-05 16:17:43', null, null);
INSERT INTO `exhibition` VALUES ('14', '测试画展创建', '2018-05-01', '2018-06-01', '/poster/1525528659666.jpg', '测试', '2018-05-05 21:58:04', null, null);
INSERT INTO `exhibition` VALUES ('15', '测试创建画展111', '2018-05-02', '2018-05-16', '/poster/1525528858873.jpg', '测测', '2018-05-05 22:01:00', null, null);
INSERT INTO `exhibition` VALUES ('16', '测试创建222', '2018-05-01', '2018-05-01', '/poster/1525528999142.jpg', '123', '2018-05-05 22:03:20', null, null);
INSERT INTO `exhibition` VALUES ('17', null, '2018-05-12', '2018-05-12', null, null, '2018-05-12 00:18:25', null, null);
INSERT INTO `exhibition` VALUES ('18', null, '2018-05-12', '2018-05-12', null, null, '2018-05-12 00:18:45', null, null);

-- ----------------------------
-- Table structure for `exhibition_work`
-- ----------------------------
DROP TABLE IF EXISTS `exhibition_work`;
CREATE TABLE `exhibition_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exhibitionId` int(11) DEFAULT NULL,
  `exhibitionName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exhibition_work
-- ----------------------------
INSERT INTO `exhibition_work` VALUES ('1', '1', '第1个画展', '1', '管理员', '/uploads/1525539600019.jpg', '100', '2018-05-05 23:20:56', null, null);
INSERT INTO `exhibition_work` VALUES ('2', '1', '第1个画展', '1', '管理员', '/uploads/1525184449972.jpg', '12', '2018-05-05 23:24:31', null, null);
INSERT INTO `exhibition_work` VALUES ('3', '1', '第1个画展', '2', '管理员', '/uploads/1525184449972.jpg', '124', '2018-05-05 23:24:57', null, null);
INSERT INTO `exhibition_work` VALUES ('4', '2', '第2个画展', '1', '管理员', '/uploads/1525184449972.jpg', '123', '2018-05-05 23:28:54', null, null);
INSERT INTO `exhibition_work` VALUES ('5', '1', '第1个画展', '1', '管理员', '/uploads/1525184449972.jpg', '54', '2018-05-05 23:29:27', null, null);
INSERT INTO `exhibition_work` VALUES ('6', '1', '第1个画展', '1', '管理员', '/uploads/1525184449972.jpg', '34', '2018-05-05 23:29:51', null, null);
INSERT INTO `exhibition_work` VALUES ('7', '1', '第1个画展', '1', '管理员', '/uploads/1525184449972.jpg', '65', '2018-05-05 23:30:09', null, null);
INSERT INTO `exhibition_work` VALUES ('8', '1', '第1个画展', '1', '管理员', '/uploads/1525184449972.jpg', '76', '2018-05-05 23:30:30', null, null);
INSERT INTO `exhibition_work` VALUES ('9', '1', '第1个画展', '1', '管理员', '/uploads/1525184449972.jpg', '75', '2018-05-05 23:30:47', null, null);
INSERT INTO `exhibition_work` VALUES ('10', '1', '第1个画展', '1', '管理员', '/uploads/1525184449972.jpg', '76', '2018-05-05 23:31:16', null, null);
INSERT INTO `exhibition_work` VALUES ('11', '1', '第1个画展', '1', '管理员', '/uploads/1525184449972.jpg', '65', '2018-05-05 23:31:34', null, null);
INSERT INTO `exhibition_work` VALUES ('12', '1', '第1个画展', '1', '管理员', '/uploads/1525540154547.jpg', '54', '2018-05-05 23:31:54', null, null);

-- ----------------------------
-- Table structure for `like`
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `workId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of like
-- ----------------------------
INSERT INTO `like` VALUES ('1', '1', '1', '2018-05-04 17:05:15', null, null);
INSERT INTO `like` VALUES ('2', '2', '2', '2018-05-24 17:05:24', null, null);
INSERT INTO `like` VALUES ('3', '1', '12', '2018-05-04 17:05:38', null, null);
INSERT INTO `like` VALUES ('4', '1', '13', '2018-05-24 17:05:51', null, null);
INSERT INTO `like` VALUES ('5', '2', '3', '2018-05-04 17:06:06', null, null);
INSERT INTO `like` VALUES ('6', '3', '3', '2018-05-04 17:06:20', null, null);
INSERT INTO `like` VALUES ('7', '6', '15', '2018-05-05 00:43:22', null, '2018-05-05 00:47:33');
INSERT INTO `like` VALUES ('8', '6', '15', '2018-05-05 00:43:24', null, '2018-05-05 00:47:33');
INSERT INTO `like` VALUES ('9', '6', '14', '2018-05-05 00:47:41', null, '2018-05-05 00:48:34');
INSERT INTO `like` VALUES ('10', '6', '14', '2018-05-05 00:48:32', null, '2018-05-05 00:48:34');
INSERT INTO `like` VALUES ('11', '6', '14', '2018-05-05 00:48:33', null, '2018-05-05 00:48:34');
INSERT INTO `like` VALUES ('12', '6', '14', '2018-05-05 00:48:35', null, null);
INSERT INTO `like` VALUES ('13', '6', '13', '2018-05-05 00:50:00', null, null);
INSERT INTO `like` VALUES ('14', '6', '9', '2018-05-05 00:50:13', null, null);
INSERT INTO `like` VALUES ('15', '6', '5', '2018-05-05 12:44:56', null, null);
INSERT INTO `like` VALUES ('16', '6', '7', '2018-05-05 12:45:44', null, null);
INSERT INTO `like` VALUES ('17', '6', '3', '2018-05-05 14:18:25', null, null);
INSERT INTO `like` VALUES ('18', '6', '1', '2018-05-05 14:19:42', null, null);
INSERT INTO `like` VALUES ('19', '6', '2', '2018-05-06 01:17:35', null, null);
INSERT INTO `like` VALUES ('20', '18', '22', '2018-05-07 14:46:05', null, null);
INSERT INTO `like` VALUES ('21', '18', '14', '2018-05-07 14:46:24', null, null);
INSERT INTO `like` VALUES ('22', '6', '22', '2018-05-07 14:48:11', null, null);

-- ----------------------------
-- Table structure for `relation`
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromUserId` int(11) DEFAULT NULL,
  `toUserId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation
-- ----------------------------
INSERT INTO `relation` VALUES ('1', '1', '2', '2018-05-03 00:05:22', null, null);
INSERT INTO `relation` VALUES ('2', '1', '3', '2018-05-03 00:06:05', null, null);
INSERT INTO `relation` VALUES ('3', '6', '6', '2018-05-03 12:36:56', null, '2018-05-07 15:37:02');
INSERT INTO `relation` VALUES ('4', '13', '6', '2018-05-03 16:50:43', null, null);
INSERT INTO `relation` VALUES ('5', '14', '14', '2018-05-03 17:00:24', null, null);
INSERT INTO `relation` VALUES ('6', '6', '14', '2018-05-03 17:18:18', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('7', '6', '14', '2018-05-03 17:30:48', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('8', '6', '14', '2018-05-03 17:31:33', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('9', '6', '13', '2018-05-03 17:34:29', null, '2018-05-07 15:59:08');
INSERT INTO `relation` VALUES ('10', '6', '14', '2018-05-03 17:36:47', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('11', '6', '14', '2018-05-03 20:01:08', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('12', '6', '13', '2018-05-03 20:01:17', null, '2018-05-07 15:59:08');
INSERT INTO `relation` VALUES ('13', '6', '14', '2018-05-03 20:01:22', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('14', '15', '14', '2018-05-03 20:07:03', null, '2018-05-03 20:07:07');
INSERT INTO `relation` VALUES ('15', '6', '15', '2018-05-04 16:31:46', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('16', '6', '15', '2018-05-04 16:32:46', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('17', '6', '15', '2018-05-04 16:34:13', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('18', '6', '15', '2018-05-04 16:34:16', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('19', '6', '15', '2018-05-04 16:44:59', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('20', '6', '15', '2018-05-04 17:04:31', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('21', '6', '15', '2018-05-04 17:05:34', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('22', '6', '15', '2018-05-04 17:06:00', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('23', '6', '15', '2018-05-04 17:08:07', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('24', '6', '15', '2018-05-04 17:08:38', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('25', '6', '15', '2018-05-04 17:16:31', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('26', '6', '14', '2018-05-04 17:16:55', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('27', '6', '15', '2018-05-04 17:17:00', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('28', '6', '15', '2018-05-04 17:17:12', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('29', '6', '13', '2018-05-05 20:08:46', null, '2018-05-07 15:59:08');
INSERT INTO `relation` VALUES ('30', '6', '14', '2018-05-07 13:48:35', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('31', '6', '14', '2018-05-07 13:51:24', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('32', '6', '14', '2018-05-07 13:51:29', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('33', '6', '14', '2018-05-07 13:52:09', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('34', '6', '14', '2018-05-07 13:56:04', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('35', '6', '14', '2018-05-07 14:02:45', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('36', '6', '14', '2018-05-07 14:04:04', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('37', '6', '14', '2018-05-07 14:05:21', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('38', '6', '6', '2018-05-07 14:08:39', null, '2018-05-07 15:37:02');
INSERT INTO `relation` VALUES ('39', '6', '6', '2018-05-07 14:08:44', null, '2018-05-07 15:37:02');
INSERT INTO `relation` VALUES ('40', '6', '15', '2018-05-07 14:10:27', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('41', '6', '15', '2018-05-07 14:13:55', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('42', '6', '3', '2018-05-07 14:14:30', null, '2018-05-07 15:35:56');
INSERT INTO `relation` VALUES ('43', '6', '15', '2018-05-07 14:36:22', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('44', '6', '13', '2018-05-07 14:36:51', null, '2018-05-07 15:59:08');
INSERT INTO `relation` VALUES ('45', '6', '2', '2018-05-07 14:37:13', null, '2018-05-07 15:35:02');
INSERT INTO `relation` VALUES ('46', '6', '7', '2018-05-07 14:37:32', null, '2018-05-07 14:37:33');
INSERT INTO `relation` VALUES ('47', '18', '14', '2018-05-07 14:42:28', null, '2018-05-07 14:46:20');
INSERT INTO `relation` VALUES ('48', '18', '6', '2018-05-07 14:46:12', null, null);
INSERT INTO `relation` VALUES ('49', '18', '14', '2018-05-07 14:46:21', null, null);
INSERT INTO `relation` VALUES ('50', '6', '18', '2018-05-07 14:48:14', null, '2018-05-07 15:59:10');
INSERT INTO `relation` VALUES ('51', '6', '2', '2018-05-07 15:01:12', null, '2018-05-07 15:35:02');
INSERT INTO `relation` VALUES ('52', '6', '18', '2018-05-07 15:01:58', null, '2018-05-07 15:59:10');
INSERT INTO `relation` VALUES ('53', '6', '14', '2018-05-07 15:03:03', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('54', '6', '14', '2018-05-07 15:03:58', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('55', '6', '14', '2018-05-07 15:06:43', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('56', '6', '14', '2018-05-07 15:09:50', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('57', '6', '2', '2018-05-07 15:10:06', null, '2018-05-07 15:35:02');
INSERT INTO `relation` VALUES ('58', '6', '2', '2018-05-07 15:10:14', null, '2018-05-07 15:35:02');
INSERT INTO `relation` VALUES ('59', '6', '5', '2018-05-07 15:10:34', null, '2018-05-07 15:10:35');
INSERT INTO `relation` VALUES ('60', '6', '18', '2018-05-07 15:17:11', null, '2018-05-07 15:59:10');
INSERT INTO `relation` VALUES ('61', '6', '14', '2018-05-07 15:17:35', null, '2018-05-07 16:17:37');
INSERT INTO `relation` VALUES ('62', '6', '15', '2018-05-07 15:17:40', null, '2018-05-07 16:17:42');
INSERT INTO `relation` VALUES ('63', '6', '18', '2018-05-07 15:17:52', null, '2018-05-07 15:59:10');
INSERT INTO `relation` VALUES ('64', '6', '13', '2018-05-07 15:20:34', null, '2018-05-07 15:59:08');
INSERT INTO `relation` VALUES ('65', '6', '6', '2018-05-07 15:20:46', null, '2018-05-07 15:37:02');
INSERT INTO `relation` VALUES ('66', '6', '6', '2018-05-07 15:34:28', null, '2018-05-07 15:37:02');
INSERT INTO `relation` VALUES ('67', '6', '2', '2018-05-07 15:34:38', null, '2018-05-07 15:35:02');
INSERT INTO `relation` VALUES ('68', '6', '18', '2018-05-07 15:34:50', null, '2018-05-07 15:59:10');
INSERT INTO `relation` VALUES ('69', '6', '3', '2018-05-07 15:35:18', null, '2018-05-07 15:35:56');
INSERT INTO `relation` VALUES ('70', '6', '3', '2018-05-07 15:35:52', null, '2018-05-07 15:35:56');
INSERT INTO `relation` VALUES ('71', '6', '3', '2018-05-07 15:35:58', null, null);
INSERT INTO `relation` VALUES ('72', '6', '4', '2018-05-07 15:36:05', null, '2018-05-07 15:53:59');
INSERT INTO `relation` VALUES ('73', '6', '6', '2018-05-07 15:36:39', null, '2018-05-07 15:37:02');
INSERT INTO `relation` VALUES ('74', '6', '5', '2018-05-07 15:57:48', null, null);
INSERT INTO `relation` VALUES ('75', '6', '4', '2018-05-07 15:59:28', null, null);
INSERT INTO `relation` VALUES ('76', '6', '14', '2018-05-07 16:17:32', null, '2018-05-07 16:17:37');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` int(11) DEFAULT NULL,
  `replyId` int(11) DEFAULT NULL,
  `replyType` tinyint(4) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fromId` int(11) DEFAULT NULL,
  `toId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commentId` (`commentId`),
  KEY `fromId` (`fromId`),
  KEY `toId` (`toId`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`commentId`) REFERENCES `comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '1', null, '0', '回复评论', '2', '1', '2018-05-03 11:29:14', null, null);
INSERT INTO `reply` VALUES ('2', '1', null, '0', '用户3回复评论', '3', '1', '2018-05-03 11:31:01', null, null);
INSERT INTO `reply` VALUES ('3', '1', '1', '1', '用户1回复用户2的回复', '1', '2', '2018-05-03 11:32:24', null, null);
INSERT INTO `reply` VALUES ('4', '1', '1', '1', '用户1回复用户2的回复', '1', '2', '2018-05-04 01:37:26', null, null);
INSERT INTO `reply` VALUES ('5', '1', '1', '1', '用户1回复用户2的回复', '6', '2', '2018-05-04 01:37:40', null, '2018-05-05 12:36:07');
INSERT INTO `reply` VALUES ('6', '1', null, '0', '用户1回复用户2的回复', '1', '2', '2018-05-04 01:39:08', null, null);
INSERT INTO `reply` VALUES ('7', '1', null, '0', '用户1回复用户2的回复', '6', '2', '2018-05-04 01:39:45', null, '2018-05-05 12:36:04');
INSERT INTO `reply` VALUES ('8', '1', null, '0', '用户1回复用户2的回复', '6', '14', '2018-05-04 01:48:57', null, '2018-05-05 12:36:02');
INSERT INTO `reply` VALUES ('9', '1', null, '0', '6 to work14', '6', '14', '2018-05-04 01:49:22', null, '2018-05-05 12:36:09');
INSERT INTO `reply` VALUES ('10', '1', null, '0', '6 to work14', '16', '6', '2018-05-04 01:51:13', null, null);
INSERT INTO `reply` VALUES ('11', '1', null, '0', '16 to 6', '16', '6', '2018-05-04 01:51:27', null, null);
INSERT INTO `reply` VALUES ('12', '4', null, '0', 'emm', '16', '6', '2018-05-04 01:54:45', null, null);
INSERT INTO `reply` VALUES ('13', '4', null, '0', 'emm', '16', '6', '2018-05-04 02:12:41', null, null);
INSERT INTO `reply` VALUES ('14', '4', null, '0', 'emm', '16', '6', '2018-05-04 02:26:47', null, null);
INSERT INTO `reply` VALUES ('15', '4', null, '0', '123456', '16', '6', '2018-05-04 13:31:47', null, null);
INSERT INTO `reply` VALUES ('16', '15', null, '0', '789', '16', '6', '2018-05-04 13:32:19', null, null);
INSERT INTO `reply` VALUES ('17', '12', null, '0', 'QAQ', '6', '16', '2018-05-04 13:33:23', null, '2018-05-05 14:19:17');
INSERT INTO `reply` VALUES ('18', '22', null, '0', '11111111', '6', '16', '2018-05-04 13:34:08', null, '2018-05-04 16:24:43');
INSERT INTO `reply` VALUES ('19', '15', null, '0', '789123', '6', '16', '2018-05-04 13:34:30', null, '2018-05-04 16:17:44');
INSERT INTO `reply` VALUES ('20', '18', null, '0', 'emm2', '6', '16', '2018-05-04 13:36:31', null, '2018-05-04 16:24:55');
INSERT INTO `reply` VALUES ('21', '4', null, '0', 'kkkyyyaaa', '12', '6', '2018-05-04 13:46:48', null, null);
INSERT INTO `reply` VALUES ('22', '14', null, '0', 'kayakaya', '12', '6', '2018-05-04 13:47:24', null, null);
INSERT INTO `reply` VALUES ('23', '15', null, '0', '789', '12', '6', '2018-05-04 13:47:47', null, null);
INSERT INTO `reply` VALUES ('24', '14', null, '0', 'emm', '16', '6', '2018-05-04 14:04:16', null, null);
INSERT INTO `reply` VALUES ('25', '15', null, '0', '11111111', '12', '16', '2018-05-04 14:06:28', null, null);
INSERT INTO `reply` VALUES ('26', '13', null, '0', '9999999', '12', '6', '2018-05-04 14:08:05', null, null);
INSERT INTO `reply` VALUES ('27', '15', null, '1', 'from QAQ', '17', '16', '2018-05-04 14:16:44', null, null);
INSERT INTO `reply` VALUES ('28', '21', null, null, '22222', '17', '16', '2018-05-04 14:40:15', null, null);
INSERT INTO `reply` VALUES ('29', '28', null, '1', '333333', '12', '17', '2018-05-04 14:41:05', null, null);
INSERT INTO `reply` VALUES ('30', '29', null, null, '回复评论1', '13', '12', '2018-05-04 14:47:00', null, null);
INSERT INTO `reply` VALUES ('32', '29', null, null, '1.1', '14', '12', '2018-05-04 14:48:28', null, null);
INSERT INTO `reply` VALUES ('36', '15', null, '1', '111112222233333', '14', '16', '2018-05-04 14:53:29', null, null);
INSERT INTO `reply` VALUES ('39', '29', null, '1', '123456', '14', '13', '2018-05-04 15:11:14', null, null);
INSERT INTO `reply` VALUES ('40', '4', null, '1', '55555555', '14', '16', '2018-05-04 15:12:02', null, '2018-05-04 16:13:02');
INSERT INTO `reply` VALUES ('41', '22', null, null, 'for 463', '6', '16', '2018-05-07 16:40:44', null, null);
INSERT INTO `reply` VALUES ('42', '35', null, null, 'for 293', '6', '18', '2018-05-07 16:41:08', null, null);
INSERT INTO `reply` VALUES ('43', '22', null, '1', 'fo eiji', '11', '6', '2018-05-07 16:45:14', null, null);
INSERT INTO `reply` VALUES ('44', '22', null, null, 'emmmmmm', '11', '16', '2018-05-07 16:45:26', null, null);

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(56) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '简笔', '2018-05-11 20:37:23', null, null);
INSERT INTO `type` VALUES ('2', '水彩', '2018-05-11 20:37:54', null, null);
INSERT INTO `type` VALUES ('3', '素描', '2018-05-11 20:41:36', null, null);
INSERT INTO `type` VALUES ('4', '临摹', '2018-05-11 20:41:39', null, null);
INSERT INTO `type` VALUES ('5', '板画', '2018-05-11 20:41:41', null, null);
INSERT INTO `type` VALUES ('6', '其他', '2018-05-11 20:41:44', null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(64) NOT NULL,
  `nickName` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` int(1) DEFAULT '2' COMMENT '0男1女2隐藏性别',
  `signature` varchar(255) DEFAULT '这个家伙很懒，什么都没有写...',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '管理员', '123', '/avatar/1525334477884.jpg', '0', '我就是那个懒家伙1111123123', '2018-04-19 09:20:51', '2018-05-05 01:23:47', null);
INSERT INTO `user` VALUES ('2', 'admin1', '管理员', '123', '/avatar/1525334477884.jpg', '1', '这个家伙很懒，什么都没有写...', '2018-04-19 09:33:09', null, null);
INSERT INTO `user` VALUES ('3', 'admin2', 'CArt-913861', '123', '/avatar/1525334477884.jpg', '0', '这个家伙很懒，什么都没有写...', '2018-04-19 14:56:21', null, null);
INSERT INTO `user` VALUES ('4', 'admin3', 'CArt-923526', '123', '/avatar/1525334477884.jpg', '0', '这个家伙很懒，什么都没有写...', '2018-04-19 15:00:52', null, null);
INSERT INTO `user` VALUES ('5', 'admin124325', 'CArt-518558', '123435', '/avatar/1525334477884.jpg', '0', '这个家伙很懒，什么都没有写...', '2018-04-30 08:33:27', null, null);
INSERT INTO `user` VALUES ('6', 'vv', 'eijikilumaru', 'zou520', '/avatar/1525520918252.png', '1', '愿你历尽千帆，归来任少年', '2018-04-30 10:15:02', '2018-05-05 19:54:16', null);
INSERT INTO `user` VALUES ('7', 'eiji', 'CArt-778527', 'gyef223', '/avatar/1525334477884.jpg', '0', '这个家伙很懒，什么都没有写...', '2018-04-30 10:16:15', null, null);
INSERT INTO `user` VALUES ('8', 'qwe', 'CArt-470446', 'zou456', '/avatar/1525334477884.jpg', '0', '这个家伙很懒，什么都没有写...', '2018-04-30 10:22:35', null, null);
INSERT INTO `user` VALUES ('9', 'vvv', 'CArt-676324', '123www', '/avatar/1525334477884.jpg', '0', '这个家伙很懒，什么都没有写...', '2018-04-30 10:31:21', null, null);
INSERT INTO `user` VALUES ('10', 'hahaha', 'CArt-974164', '123456qqq', '/avatar/1525334477884.jpg', '0', '这个家伙很懒，什么都没有写...', '2018-04-30 10:32:14', null, null);
INSERT INTO `user` VALUES ('11', 'vv1', 'CArt-911129', '213sdf', '/avatar/1525682640908.jpg', '2', '这个家伙很懒，什么都没有写...', '2018-04-30 15:30:14', '2018-05-07 16:44:07', null);
INSERT INTO `user` VALUES ('12', 'a', 'kaya', 'aaa123', '/avatar/1525334477884.jpg', '2', '这个家伙很懒，什么都没有写...', '2018-05-03 15:52:19', '2018-05-04 13:46:12', null);
INSERT INTO `user` VALUES ('13', 'zz', 'CArt-905777', 'zou123', '/avatar/1525337525794.jpg', '1', '这个家伙很懒，什么都没有写...', '2018-05-03 16:02:03', '2018-05-03 16:52:12', null);
INSERT INTO `user` VALUES ('14', 'y', 'CArt-719311', '111aaa', '/avatar/1525337956400.jpg', '2', '这个家伙很懒，什么都没有写...', '2018-05-03 16:55:36', '2018-05-03 16:59:19', null);
INSERT INTO `user` VALUES ('15', '555', 'CArt-971764', 'qaq555', '/avatar/1525334477884.jpg', '2', '这个家伙很懒，什么都没有写...', '2018-05-03 20:06:09', null, null);
INSERT INTO `user` VALUES ('16', 'z', 'CArt-386463', 'zxc123', '/avatar/1525334477884.jpg', '2', '这个家伙很懒，什么都没有写...', '2018-05-04 01:16:56', null, null);
INSERT INTO `user` VALUES ('17', 'qaq', 'QAQ', 'asd123', '/avatar/1525334477884.jpg', '1', '这个家伙很懒，什么都没有写...', '2018-05-04 14:15:41', '2018-05-04 14:16:15', null);
INSERT INTO `user` VALUES ('18', '我有一个梦像雨后彩虹', 'CArt-765293', 'admin123', '/avatar/1525675505718.jpg', '2', '这个家伙很懒，什么都没有写...', '2018-05-07 14:41:33', '2018-05-07 14:45:09', null);
