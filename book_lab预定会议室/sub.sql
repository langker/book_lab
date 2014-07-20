-- phpMyAdmin SQL Dump
-- version 2.11.2.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 03 月 14 日 04:07
-- 服务器版本: 5.0.45
-- PHP 版本: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `subscribe_lab`
--

-- --------------------------------------------------------

--
-- 表的结构 `lab_info`
--

CREATE TABLE `lab_info` (
  `id` int(32) NOT NULL auto_increment,
  `name` char(32) collate utf8_bin NOT NULL,
  `building` char(32) collate utf8_bin NOT NULL,
  `floor` int(2) NOT NULL,
  `type` char(32) collate utf8_bin NOT NULL,
  `capacity` int(4) NOT NULL,
  `expect` char(64) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- 导出表中的数据 `lab_info`
--

INSERT INTO `lab_info` (`id`, `name`, `building`, `floor`, `type`, `capacity`, `expect`) VALUES
(2, '东306', '信软学院', 3, '基础实验室', 75, ''),
(1, '东305', '信软学院', 3, '基础实验室', 75, ''),
(3, '东307', '信软学院', 3, '基础实验室', 75, ''),
(4, '南101', '第三教学楼', 1, '网络实验室', 70, ''),
(5, '南102', '第三教学楼', 1, '网络实验室', 70, ''),
(6, '西202', '信软学院', 2, '信息安全实验室', 70, ''),
(7, '西204', '信软学院', 2, '信息安全实验室', 70, ''),
(8, '北504', '第三教学楼', 5, '数学实验室', 70, ''),
(9, '会议室', '第三教学楼', 3, '会议室', 75, '');

-- --------------------------------------------------------

--
-- 表的结构 `lab_subscribe`
--

CREATE TABLE `lab_subscribe` (
  `id` int(32) NOT NULL auto_increment,
  `lab_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `number` int(4) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `commands` varchar(200) collate utf8_bin NOT NULL,
  `status` int(2) NOT NULL,
  `expect` char(64) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=297 ;

--
-- 导出表中的数据 `lab_subscribe`
--

INSERT INTO `lab_subscribe` (`id`, `lab_id`, `user_id`, `number`, `date`, `start_time`, `end_time`, `commands`, `status`, `expect`) VALUES
(296, 9, 6, 75, '2014-03-13', '13:00:00', '14:00:00', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `teachername` varchar(32) character set utf8 NOT NULL,
  `jobnumber` varchar(32) NOT NULL,
  KEY `teachername` (`teachername`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 导出表中的数据 `teacher`
--

INSERT INTO `teacher` (`teachername`, `jobnumber`) VALUES
('白忠建', '3204242'),
('蔡竟业', '3203753'),
('曹明生', '5110037'),
('陈安龙', '5060112'),
('陈波', '5080186'),
('陈虹', '3202781'),
('陈佳', '3210208'),
('陈守京', '3203988'),
('陈伟', '3204635'),
('陈峥', '5090161'),
('杜向辉', '3204643'),
('傅翀', '3203604'),
('龚心愿', '5080145'),
('顾小丰', '3204384'),
('管庆', '3203702'),
('郭建东', '3203634'),
('郭文生', '3204525'),
('郭迅', '3204415'),
('郝晓青', '3202005'),
('郝宗波', '5070176'),
('何明耘', '5040126'),
('何兴高', '3201762'),
('洪磊', '5040084'),
('胡旺', '5070032'),
('黄克军', '3201692'),
('惠孛', '5090115'),
('江春华', '3203400'),
('江维', '3210476'),
('蒋沥泉', '6110027'),
('蓝天', '5090236'),
('雷航', '3201366'),
('李凡', '5080092'),
('李光跃', '3201497'),
('李巧勤', '3204544'),
('李树全', '3203265'),
('廖勇', '5070005'),
('刘玓', '3201542'),
('刘辉', '3202540'),
('刘军', '3201475'),
('刘乃琦', '3201531'),
('刘峤', '5110007'),
('刘瑶', '3204007'),
('刘勇国', '5050081'),
('陆鑫', '3204136'),
('罗惠琼', '3201456'),
('罗绪成', '5090020'),
('罗瑜', '5080045'),
('聂旭云', '5070183'),
('潘琳', '5060150'),
('钱伟中', '3210429'),
('任立勇', '3210088'),
('桑楠', '3204084'),
('佘堃', '3204184'),
('苏生', '5080071'),
('汤羽', '5090041'),
('唐雪飞', '3201231'),
('田文洪', '5080216'),
('万晓枫', '3203887'),
('王佳昊', '5070181'),
('王静', '5070195'),
('王琪华', '3201608'),
('王伟东', '5080099'),
('王焱', '5080016'),
('王雁东', '3201833'),
('王晔', 'Y001'),
('文军', '3201771'),
('吴劲', '3204375'),
('吴正华', '5080170'),
('吴祖峰', '3210048'),
('肖堃', '5080169'),
('谢娟', '3203896'),
('熊虎', '5090235'),
('徐红霞', '5070020'),
('徐旭如', '3210326'),
('许毅', '3210319'),
('杨尚明', '3210246'),
('杨霞', '3204202'),
('杨小桦', '3201516'),
('姚远哲', '5070233'),
('于永斌', '5080094'),
('詹瑾瑜', '3204581'),
('张帆', '3210251'),
('张宁', '5090119'),
('张翔', '3210343'),
('张学', '5080254'),
('张彦昭', '5050065'),
('赵洋', '5090218'),
('郑冰', '3201555'),
('周瑞', '5110016'),
('朱大勇', '3210340'),
('朱国斌', '3210049'),
('朱清新', '3202487'),
('王琳', '3204143'),
('吴佳', '5120016'),
('周尔强', '5120017'),
('易黎', '6120009'),
('饶云波', '5120043'),
('王娅', '6120040'),
('魏娟', '6120012'),
('梁一天', '5120069'),
('何中海', '6120058'),
('周帆', '5130009'),
('方峻', '5130008');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `username` varchar(32) character set utf8 NOT NULL,
  `user_id` int(32) NOT NULL auto_increment,
  `realname` varchar(32) character set utf8 NOT NULL,
  `jobnumber` varchar(32) default NULL,
  `onecard` varchar(32) default NULL,
  `identity` varchar(32) default NULL,
  `sex` varchar(32) default NULL,
  `idgroup` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `tel` varchar(32) default NULL,
  `password` varchar(32) default NULL,
  `token` varchar(20) default NULL,
  `token_exptime` int(32) default NULL,
  `status` tinyint(10) default NULL,
  `SignUpdate` int(32) default NULL,
  `UserLevel` tinyint(4) default NULL,
  `LastLogin` varchar(32) default NULL,
  `LastLoginFail` varchar(32) default NULL,
  `NumLoginFail` tinyint(4) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `user`
--

INSERT INTO `user` (`username`, `user_id`, `realname`, `jobnumber`, `onecard`, `identity`, `sex`, `idgroup`, `email`, `tel`, `password`, `token`, `token_exptime`, `status`, `SignUpdate`, `UserLevel`, `LastLogin`, `LastLoginFail`, `NumLoginFail`) VALUES
('zhangsan', 4, '张三', '2012227010001', '123456789', '121212121212121121', 'male', 'student', '123454545@qq.com', '15881005659', '12345678', '4fe565fcf557dd3e03d2', 1394011577, 0, 4, 1, '0', '0', 0),
('wanger', 5, '王二', '2012227010001', '123456789', '123456789098765432', 'male', 'student', '12345678@qq.com', '12345678909', '123456789', 'e4a2cc735d1b02488268', 1394095898, 0, 5, 1, '0', '0', 0),
('langker', 6, '向超然', '2013220401003', '1234567890', '130206199411021834', 'male', 'student', 'langker@aliyun.com', '18349209818', 'abcd12345', 'c0c7f48cc6d8e232cfd4', 1394173909, 0, 6, 1, '0', '0', 0);
