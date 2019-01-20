/*
Navicat MySQL Data Transfer

Source Server         : job
Source Server Version : 50015
Source Host           : localhost:3306
Source Database       : job

Target Server Type    : MYSQL
Target Server Version : 50015
File Encoding         : 65001

Date: 2018-06-19 16:15:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commond
-- ----------------------------
DROP TABLE IF EXISTS `commond`;
CREATE TABLE `commond` (
  `commond_id` int(11) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `user_id` int(11) default NULL,
  `createDate` varchar(255) default NULL,
  `info_id` int(11) default NULL,
  PRIMARY KEY  (`commond_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commond
-- ----------------------------
INSERT INTO `commond` VALUES ('1', '培训机构太多，你找不到的', '2', '2018-04-10 18:08:15', '2');
INSERT INTO `commond` VALUES ('2', '这个职位不错，可以考虑', '2', '2017-04-30 18:09:15', '2');
INSERT INTO `commond` VALUES ('3', '问问问问', '17', '2018-04-16 19:14:05', '5');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `com_id` int(11) NOT NULL auto_increment,
  `fullname` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `user_id` int(11) default NULL,
  `comtype` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `empcount` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `manager` varchar(255) default NULL,
  `m_tel` varchar(255) default NULL,
  PRIMARY KEY  (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('5', '青果软件公司', null, '12', '私人公司', '专业信息化软件公司，承接大型项目', '100', '湖南长沙', 'hanxuan@qq.com', '0513-82849503', '', '');
INSERT INTO `company` VALUES ('6', '鲁能软件', null, '16', '国企', '电力信息化软件领导者', '500-1000', '山东济南', 'hanxuan@qq.com', '0513-82849503', '刘先生', '18860977061');
INSERT INTO `company` VALUES ('7', '浪潮', null, '17', '国企', '山东省大型信息技术公司，硬软件均包含', '400-600', '山东济南', 'hanxuan@qq.com', '0513-82849503', '李先生', '18860977061');
INSERT INTO `company` VALUES ('10', '青岛海信', null, '26', '国企', '这家伙很懒，什么都没有留下。', '500', '山东青岛', 'hanxuan@qq.com', '', '温先生', '18860977061');
INSERT INTO `company` VALUES ('11', '问问问问', null, '32', '国企', '这家伙很懒，什么都没有留下。', '1', '二位', '@', '', '', '');
INSERT INTO `company` VALUES ('12', '问问问问', null, '34', '国企', '这家伙很懒，什么都没有留下。', '1', '二位', '@', '0518-11111111', '', '');
INSERT INTO `company` VALUES ('13', '问问问问23232', null, '36', '国企', '这家伙很懒，什么都没有留下。', '1', '二位', '', '0518-11111111', '', '');
INSERT INTO `company` VALUES ('14', 'lishijituan', null, '41', '国企', '这家伙很懒，什么都没有留下。', '100', '', '@', '', '', '');
INSERT INTO `company` VALUES ('15', 'tengxun', null, '45', '国企', '腾讯的子公司信息管理', '1', '江苏南通', '@', '', '李月', '123456');
INSERT INTO `company` VALUES ('16', 'tengxun', null, '45', '国企', '腾讯的子公司信息管理', '1', '江苏南通', '100000@qq.com', '', '李月', '123456');

-- ----------------------------
-- Table structure for com_resume
-- ----------------------------
DROP TABLE IF EXISTS `com_resume`;
CREATE TABLE `com_resume` (
  `resume_id` int(11) NOT NULL auto_increment,
  `com_id` int(11) default NULL,
  `job_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  `resume_name` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `look` varchar(255) default NULL,
  PRIMARY KEY  (`resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_resume
-- ----------------------------

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL auto_increment,
  `realname` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `birthday` varchar(255) default NULL,
  `marry` varchar(255) default NULL,
  `degree` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `jobtype` varchar(255) default NULL,
  `salary` decimal(10,2) default NULL,
  `jobstatus` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `resume_name` varchar(255) default NULL,
  `user_id` int(11) default NULL,
  `country` varchar(255) default NULL,
  `qq` varchar(255) default NULL,
  `hj` varchar(255) default NULL,
  `waddress` varchar(255) default NULL,
  `study` varchar(255) default NULL,
  `work` varchar(255) default NULL,
  `family` varchar(255) default NULL,
  `experience` varchar(255) default NULL,
  `language` varchar(255) default NULL,
  PRIMARY KEY  (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', '温其', '男', '2017-04-29', '否', '本科', '18753202373', '907651927@qq.com', '', '山东济南', '', '10000.00', '否', '/recruit/photo/2017-04-30_公司二维码.jpg', 'java工程师', '2', '中国', '1516465131', '汉族', '', '', '', '', '', '火星语四级');
INSERT INTO `emp` VALUES ('2', '张三', '男', '1995-08-12', '否', '本科', '0532-56235662', '2251804131@qq.com', '活泼大方，幽默搞笑', '江苏南通', '谷歌、微软', '10000000.00', '否', '/recruit/photo/2017-05-01_公司二维码.jpg', 'Android开发', '13', '中国', '2251804131', '山东济南', '美国硅谷', '软件工程师顶级', 'BAT实习', '全的', 'facebook、QQ、MSN', '火星四级');
INSERT INTO `emp` VALUES ('3', '张三1', '男', '2017-05-01', '否', '本科', '0532-8873521', '907651927@qq.com', '活泼', '上海松江', '软工', '8000000.00', '否', '/recruit/photo/2017-05-01_7.jpg', 'IOS开发工程师', '14', '中国', '2280514639', '山东莱芜', '硅谷', '中国青年创业大赛一等奖', '微软', '妈妈爸爸', '各种项目', '外语8级');
INSERT INTO `emp` VALUES ('4', '张三2', '男', '2017-05-09', '否', '本科', '0532-56235662', '2251804131@qq.com', '', '中国台湾', '程序员', '200000.00', '否', '/recruit/photo/2017-05-01_DOM树.jpg', 'C++开发工程师', '15', '中国', '565641633', '中国香港', '北京', '', '', '', '', '六级');
INSERT INTO `emp` VALUES ('5', '王五', '男', '', '否', '本科', '', '', '', '', '', '10000.00', '', null, '', '18', '中国', '', '', '', '', '', '', '', '');
INSERT INTO `emp` VALUES ('6', '王五', '男', '', '否', '本科', '', '', '', '', '', '10000.00', '', '/recruit/photo/2017-05-01_公司二维码.jpg', '', '18', '中国', '', '', '', '', '', '', '', '');
INSERT INTO `emp` VALUES ('7', 'hanxuan', '男', '2018-04-15', '否', '本科', '18860977061', '1', '1', '', '1', '1.00', '否', '/recruit/photo/2018-04-19_IMG_1396.JPG', '1', '31', '中国', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for emp_look
-- ----------------------------
DROP TABLE IF EXISTS `emp_look`;
CREATE TABLE `emp_look` (
  `look_id` int(11) NOT NULL auto_increment,
  `emp_id` int(11) default NULL,
  `com_id` int(11) default NULL,
  `date` varchar(255) default NULL,
  PRIMARY KEY  (`look_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_look
-- ----------------------------

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `info_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `user_id` int(11) default NULL,
  `isApply` int(11) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('2', 'java', '求一份java工程师的工作,薪资大约5K', '2018-04-16 19:14:20', '2', '1', '1');
INSERT INTO `info` VALUES ('5', 'Android工程师', '求一份android开发的职位，薪资大约10K', '2018-04-16 19:14:20', '13', '1', '1');
INSERT INTO `info` VALUES ('6', '求一份销售岗位', '薪资面议，期待稳定', '2018-04-16 19:14:20', '13', '1', '1');
INSERT INTO `info` VALUES ('7', 'IOS开发工程职位', '想找一份IOS开发工程师的职位，目标薪资20000,5年工作经验', '2018-04-16 19:14:20', '14', '1', '1');
INSERT INTO `info` VALUES ('8', '微信开发人员', '想找到一份微信开发工作，薪资面议，java开发3年工作经验', '2018-04-16 19:14:20', '14', '1', '1');
INSERT INTO `info` VALUES ('9', 'C++开发工程师', '求一份C++开发工程师，薪资自己看着给', '2018-04-16 19:14:20', '15', '1', '1');
INSERT INTO `info` VALUES ('10', 'C语言开发工程师', '求一份C语言开发工程师，硬件编程', '2018-04-16 19:14:20', '15', '1', '1');
INSERT INTO `info` VALUES ('11', '问问', '问问', '2018-04-16 19:14:20', '17', '0', '2');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int(11) NOT NULL auto_increment,
  `com_id` int(11) default NULL,
  `job_name` varchar(255) default NULL,
  `job_PersonCount` varchar(255) default NULL,
  `degree` varchar(255) default NULL,
  `language` varchar(255) default NULL,
  `grade` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `salary` varchar(255) default NULL,
  `job_status` varchar(255) default NULL,
  `start_date` varchar(50) default NULL,
  `end_date` varchar(50) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('2', '5', 'java工程师', '1', '本科以上', '四级以上', null, '湖南长沙', '5k-8k', '上市公司', '', '', 'java后端开发');
INSERT INTO `job` VALUES ('3', '5', 'Android开发工程师', '5', '本科', 'Cet4', null, '江苏南通', '5k-10k', '上市公司', '', '', '主要完成android业务的处理，熟悉四大组件、自定义view会用即可');
INSERT INTO `job` VALUES ('4', '5', 'IOS开发工程师', '2', '本科', '英语4级', null, '济南', '6k+', '上市公司', '', '', 'ios手机端开发，界面、逻辑等等');
INSERT INTO `job` VALUES ('5', '6', '秘书', '2', '本科', '六级以上', null, '江苏南通', '8K+', '国企', '', '', '主要负责公司的文秘工作，辅助领导进行一般性的工作');
INSERT INTO `job` VALUES ('6', '6', '硬件开发工程师', '5', '本科', '六级以上', null, '江苏南通', '10K+', '上市公司', '', '', '主要负责公司的硬件方面编程，完成主要的硬件开发工作');
INSERT INTO `job` VALUES ('7', '6', 'CTO', '1', '硕士', '无具体要求', null, '江苏南通', '20K+', '私人公司', '', '', '负责管理公司的日常事务，把握和掌控公司的业务动向和技术走势，带领公司走向成功');
INSERT INTO `job` VALUES ('8', '6', 'PM', '1', '硕士', '无具体要求', null, '江苏南通', '15K+', '私人公司', '', '', '负责管理公司的技术交流，业务谈判，既要熟悉业务，也要对技术有很深的造诣，电商优先');
INSERT INTO `job` VALUES ('9', '7', '数据库工程师', '5', '本科', '4级', null, '江苏南通', '10k+', '上市公司', '', '', '对数据库有很深入的了解，熟悉ORACLE、mysql、sql server等主流数据库');
INSERT INTO `job` VALUES ('10', '13', '1212', '1', '3434', 'qwq', null, '1212', '121', '国企', '', '', '222222222222222222334dsd');

-- ----------------------------
-- Table structure for top_job
-- ----------------------------
DROP TABLE IF EXISTS `top_job`;
CREATE TABLE `top_job` (
  `top_id` int(11) NOT NULL auto_increment,
  `job_id` int(11) default NULL,
  `job_name` varchar(100) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`top_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of top_job
-- ----------------------------
INSERT INTO `top_job` VALUES ('1', '2', 'java工程师', '31');
INSERT INTO `top_job` VALUES ('2', '3', 'Android开发工程师', '8');
INSERT INTO `top_job` VALUES ('3', '4', 'IOS开发工程师', '1');
INSERT INTO `top_job` VALUES ('4', '5', '秘书', '1');
INSERT INTO `top_job` VALUES ('5', '6', '硬件开发工程师', '2');
INSERT INTO `top_job` VALUES ('6', '7', 'CTO', '0');
INSERT INTO `top_job` VALUES ('7', '8', 'PM', '2');
INSERT INTO `top_job` VALUES ('8', '9', '数据库工程师', '1');
INSERT INTO `top_job` VALUES ('9', '10', '1212', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) default NULL,
  `pwd` varchar(20) default NULL,
  `question` varchar(255) default NULL,
  `answer` varchar(255) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'zhangsan1', '123', null, null, '1');
INSERT INTO `user` VALUES ('11', 'admin', 'admin', null, null, '3');
INSERT INTO `user` VALUES ('12', 'lisi', '123456', null, null, '2');
INSERT INTO `user` VALUES ('13', 'zhangsan', '123456', null, null, '1');
INSERT INTO `user` VALUES ('14', 'zhangsan1', '123456', null, null, '1');
INSERT INTO `user` VALUES ('15', 'zhangsan2', '123456', null, null, '1');
INSERT INTO `user` VALUES ('16', 'langchao', '123456', null, null, '2');
INSERT INTO `user` VALUES ('17', '123456', '123456', null, null, '2');
INSERT INTO `user` VALUES ('18', 'wangwu', '123456', '', '', '1');
INSERT INTO `user` VALUES ('29', '11111', '1', null, null, '1');
INSERT INTO `user` VALUES ('30', '11333', '1', null, null, '1');
INSERT INTO `user` VALUES ('31', 'hanxuan', '11111111', null, null, '1');
INSERT INTO `user` VALUES ('32', 'test2', '11111111', null, null, '2');
INSERT INTO `user` VALUES ('33', null, null, null, null, null);
INSERT INTO `user` VALUES ('34', 'test2', '11111111', null, null, '2');
INSERT INTO `user` VALUES ('35', null, null, null, null, null);
INSERT INTO `user` VALUES ('36', 'test2', '11111111', null, null, '2');
INSERT INTO `user` VALUES ('37', 'sususu', '123456', null, null, '1');
INSERT INTO `user` VALUES ('38', 'suming', '19960819', null, null, '1');
INSERT INTO `user` VALUES ('39', 'Amonm', '19961125', null, null, '1');
INSERT INTO `user` VALUES ('40', 'zhangshi', 'zhangshi', null, null, '1');
INSERT INTO `user` VALUES ('41', 'lisiqi', 'lisiqi', null, null, '2');
INSERT INTO `user` VALUES ('42', 'zhiwei', 'zhiwei', null, null, '1');
INSERT INTO `user` VALUES ('43', 'zhaojun', 'zhaojun', null, null, '1');
INSERT INTO `user` VALUES ('44', 'wangshuh', 'wangshuh', null, null, '1');
INSERT INTO `user` VALUES ('45', 'liyuee', 'liyuee', null, null, '2');
INSERT INTO `user` VALUES ('46', null, null, null, null, null);
