-- phpMyAdmin SQL Dump
-- version 3.3.10
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2016 �?09 �?11 �?22:38
-- 服务器版本: 5.5.47
-- PHP 版本: 5.5.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `fenxiang`
--

-- --------------------------------------------------------

--
-- 表的结构 `et_content`
--

CREATE TABLE IF NOT EXISTS `et_content` (
  `content_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `content_body` text NOT NULL,
  `posttime` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `filetype` varchar(10) NOT NULL DEFAULT '0' COMMENT '照片、视频、音乐',
  `retid` int(10) NOT NULL DEFAULT '0' COMMENT '转发的微博id',
  `replyid` int(10) NOT NULL DEFAULT '0' COMMENT '回复的微博id',
  `replytimes` smallint(6) NOT NULL DEFAULT '0' COMMENT '回复次数',
  `zftimes` smallint(6) NOT NULL DEFAULT '0' COMMENT '转发次数',
  `img_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `attach_url` varchar(255) DEFAULT NULL,
  `snap_url` varchar(255) DEFAULT NULL,
  `is_forbid` tinyint(1) NOT NULL,
  `is_lock` tinyint(1) NOT NULL,
  PRIMARY KEY (`content_id`),
  KEY `user_id` (`user_id`),
  KEY `posttime` (`posttime`),
  FULLTEXT KEY `content_body` (`content_body`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `et_content`
--

INSERT INTO `et_content` (`content_id`, `user_id`, `content_body`, `posttime`, `type`, `filetype`, `retid`, `replyid`, `replytimes`, `zftimes`, `img_url`, `video_url`, `attach_url`, `snap_url`, `is_forbid`, `is_lock`) VALUES
(2, 3, 'nuli888给自己的8-9 nuli88发表的微博 评论', 1344477393, '网页', '0', 0, 1, 0, 0, '', '', '', NULL, 0, 0),
(13, 1, '通过手机转发1', 1344482161, '手机', '0', 1, 0, 0, 0, '', '', '', NULL, 0, 0),
(18, 1, '通过手机发表1', 1344482582, '手机', '0', 0, 0, 0, 0, '', '', '', NULL, 0, 0),
(17, 1, '通过手机发表1', 1344482571, '手机', '0', 0, 0, 0, 0, '', '', '', NULL, 0, 0),
(16, 1, '通过手机转发1', 1344482272, '手机', '0', 1, 0, 0, 0, '', '', '', NULL, 0, 0),
(20, 3, '8-29发表的微博', 1346229885, '网页', '', 0, 0, 1, 2, '', '', '', NULL, 0, 0),
(22, 2, 'gfdgdfsgsdfg', 1346230521, '网页', '0', 0, 20, 0, 0, '', '', '', NULL, 0, 0),
(23, 2, 'rgtrgaer', 1346230574, '网页', '0', 20, 0, 0, 0, '', '', '', NULL, 0, 0),
(24, 3, '[T]分享图片[/T] 是的[F l=/photo/20120903/1346654430.png]/photo/20120903/s_1346654430.png[/F]', 1346654436, '网页', '4', 0, 0, 0, 0, '', '', '', NULL, 0, 0),
(38, 3, 'asdfasdfasdfasdfasdf', 1347511351, '网页', '0', 0, 0, 0, 0, '492a31dc28e975b1.jpg', 'http://g1.ykimg.com/11270F1F4650511CB8D8690123193CF15F4B34-EDB7-24D3-05AC-BF4BCE83D1FE', '', NULL, 0, 0),
(37, 3, 'asdfasdfasdf', 1347511036, '网页', '0', 0, 0, 0, 0, '33.jpg', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(36, 3, 'asdf', 1347510725, '网页', '0', 0, 0, 0, 0, '492a31dc28e975b1.jpg', '', '', NULL, 1, 1),
(35, 3, 'asdf', 1347510693, '网页', '0', 0, 0, 0, 0, '492a31dc28e975b1.jpg', '', '', NULL, 1, 1),
(34, 3, 'aa', 1347510655, '网页', '0', 0, 0, 0, 0, '', '', '', NULL, 0, 0),
(39, 3, 'asdfasdfasdfasdfasdf', 1347511421, '网页', '0', 0, 0, 0, 0, '1585980_165950092_2.jpg', 'http://g1.ykimg.com/11270F1F4650511CB8D8690123193CF15F4B34-EDB7-24D3-05AC-BF4BCE83D1FE', '', NULL, 0, 0),
(40, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464', 1347511535, '网页', '0', 0, 0, 0, 0, '', 'http://g3.ykimg.com/11270F1F46504F19CAC01D0123193C5B6BE770-BE2F-E99F-9A3F-E6564B713153', '', NULL, 0, 0),
(41, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464', 1347511662, '网页', '0', 0, 0, 0, 0, '492a31dc28e975b1.jpg', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(42, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464adsfasdf', 1347511815, '网页', '0', 0, 0, 0, 0, '', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(43, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464adsfasdf', 1347512965, '网页', '0', 0, 0, 0, 0, '33.jpg', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(44, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464adsfasdf', 1347513057, '网页', '0', 0, 0, 0, 0, '492a31dc28e975b1.jpg', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(45, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464adsfasdf', 1347516925, '网页', '0', 0, 0, 0, 0, '33.jpg', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(46, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464adsfasdf', 1347517066, '网页', '0', 0, 0, 0, 0, 'a.jpg', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(47, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464adsfasdfafsdf', 1347517470, '网页', '0', 0, 0, 0, 0, '33.jpg', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(48, 3, 'asdfasdfasdfasdfasdfhttp://v.youku.com/v_show/id_XNDQ5MjY4OTY4.html?f=18202464adsfasdfafsdf', 1347517514, '网页', '0', 0, 0, 0, 0, '1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962.jpg', 'http://g2.ykimg.com/1100641F46504E24E9153207B299C80E2A9128-FABB-F128-10E1-6F155A1FF962', '', NULL, 0, 0),
(49, 3, '分享新鲜事...', 1347525399, '网页', '0', 0, 0, 0, 0, '33.jpg', 'http://g1.ykimg.com/11270F1F4650511CB8D8690123193CF15F4B34-EDB7-24D3-05AC-BF4BCE83D1FE', 'aa.jpg', '134752534128311.jpg', 0, 0),
(50, 3, '是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少', 1473595085, '网页', '0', 0, 0, 0, 0, '1.jpg', '', 'bb.zip', '', 0, 0),
(51, 3, '是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少', 1473595094, '网页', '0', 0, 0, 0, 0, '1.jpg', '', 'bb.zip', '', 0, 0),
(52, 3, '是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少是多少', 1473595101, '网页', '0', 0, 0, 0, 0, '1.jpg', '', 'bb.zip', '', 0, 0),
(53, 3, 'ddd', 1473599118, '网页', '0', 0, 0, 0, 0, '', '', '', '', 0, 0),
(54, 3, 'fff', 1473599150, '网页', '0', 0, 0, 0, 0, '', '', '', '', 0, 0),
(55, 3, 'fff', 1473599152, '网页', '0', 0, 0, 0, 0, '', '', '', '', 0, 0),
(56, 3, 'fff', 1473599153, '网页', '0', 0, 0, 0, 0, '', '', '', '', 0, 0),
(57, 3, 'fff', 1473599160, '网页', '0', 0, 0, 0, 0, '', '', '', '', 0, 0),
(58, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473601449, '网页', '0', 0, 0, 0, 0, '', '', '', '', 0, 0),
(59, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473601467, '网页', '0', 0, 0, 0, 0, '1.jpg', '', '', '', 0, 0),
(60, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473601828, '网页', '0', 0, 0, 0, 0, '', '', '', '', 0, 0),
(61, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473601834, '网页', '0', 0, 0, 0, 0, '2.jpg', '', '', '', 0, 0),
(62, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473601895, '网页', '0', 0, 0, 0, 0, '2.jpg', '', 'bb.zip', '', 0, 0),
(63, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473602510, '网页', '0', 0, 0, 0, 0, 'uploads/1609112201484rsbm1je9ge3.jpg', '', '', '', 0, 0),
(64, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473602574, '网页', '0', 0, 0, 0, 0, 'uploads/160911220253ogsoailwj7ye.jpg', '', '', '', 0, 0),
(65, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473602591, '网页', '0', 0, 0, 0, 0, 'uploads/160911220253ogsoailwj7ye.jpg', '', 'bb.zip', '', 0, 0),
(66, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473602658, '网页', '0', 0, 0, 0, 0, '', '', '', '147360264634338.jpg', 0, 0),
(67, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473602785, '网页', '0', 0, 0, 0, 0, 'uploads/160911220537k2jed6byagoz.jpg', 'http://r3.ykimg.com/0541040852648B8C6A0A495808A6E08C', 'bb.zip', '147360276846264.jpg', 0, 0),
(68, 3, '生活里，有很多转瞬即逝，像在车站的告别，刚刚还相互拥抱，转眼已各自天涯。很多时候，你不懂，我也不懂，就这样，说着说着就变了，听着听着就倦了，看着看着就厌了，跟着跟着就慢了，走着走着就散了，爱着爱着就淡了，想着想着就算了', 1473602956, '网页', '0', 0, 0, 0, 0, 'uploads/160911220537k2jed6byagoz.jpg', 'http://r3.ykimg.com/0541040852648B8C6A0A495808A6E08C', 'bb.zip', '147360276846264.jpg', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `et_friend`
--

CREATE TABLE IF NOT EXISTS `et_friend` (
  `fri_id` int(10) NOT NULL AUTO_INCREMENT,
  `fid_jieshou` int(10) NOT NULL COMMENT '被收听人id',
  `fid_fasong` int(10) NOT NULL COMMENT '主动收听人id即听众',
  PRIMARY KEY (`fri_id`),
  KEY `fid_jieshou` (`fid_jieshou`),
  KEY `fid_fasong` (`fid_fasong`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `et_friend`
--

INSERT INTO `et_friend` (`fri_id`, `fid_jieshou`, `fid_fasong`) VALUES
(44, 3, 2),
(43, 1, 3),
(42, 2, 3);

-- --------------------------------------------------------

--
-- 表的结构 `et_users`
--

CREATE TABLE IF NOT EXISTS `et_users` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_head` varchar(100) NOT NULL DEFAULT '0',
  `user_auth` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户认证',
  `auth_info` varchar(200) NOT NULL DEFAULT '0' COMMENT '认证信息',
  `mailadres` varchar(50) NOT NULL DEFAULT '0',
  `live_city` varchar(20) DEFAULT NULL,
  `signupdate` int(10) NOT NULL DEFAULT '0',
  `user_gender` varchar(2) DEFAULT NULL,
  `user_info` varchar(200) NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `msg_num` smallint(6) NOT NULL DEFAULT '0',
  `follow_num` smallint(6) NOT NULL DEFAULT '0',
  `followme_num` smallint(6) NOT NULL DEFAULT '0',
  `priread` smallint(6) NOT NULL DEFAULT '0' COMMENT '未读的私信',
  `newfollownum` smallint(6) NOT NULL DEFAULT '0' COMMENT '新收听人数',
  `atnum` smallint(6) NOT NULL DEFAULT '0' COMMENT '新提及',
  `comments` smallint(6) NOT NULL DEFAULT '0',
  `theme_bgcolor` varchar(7) DEFAULT NULL,
  `theme_pictype` varchar(10) DEFAULT NULL,
  `theme_text` varchar(7) DEFAULT NULL,
  `theme_link` varchar(7) DEFAULT NULL,
  `theme_sidebar` varchar(7) DEFAULT NULL,
  `theme_sidebox` varchar(7) DEFAULT NULL,
  `theme_bgurl` varchar(100) DEFAULT NULL,
  `auth_email` varchar(50) NOT NULL DEFAULT '0',
  `userlock` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` int(10) NOT NULL DEFAULT '0',
  `login_date` int(10) NOT NULL DEFAULT '0' COMMENT '登陆统计字段',
  `lastcontent` varchar(250) NOT NULL DEFAULT '0' COMMENT '最后发表',
  `lastconttime` int(10) NOT NULL DEFAULT '0' COMMENT '最后发表时间',
  `regmailauth` tinyint(1) NOT NULL DEFAULT '0' COMMENT '注册邮箱激活',
  `userguide` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户向导',
  `regip` varchar(25) NOT NULL DEFAULT '0' COMMENT '注册ip',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `password` (`password`),
  KEY `CUSTOMER_ID` (`customer_id`),
  KEY `user_name_2` (`user_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `et_users`
--

INSERT INTO `et_users` (`user_id`, `user_name`, `nickname`, `password`, `user_head`, `user_auth`, `auth_info`, `mailadres`, `live_city`, `signupdate`, `user_gender`, `user_info`, `isadmin`, `msg_num`, `follow_num`, `followme_num`, `priread`, `newfollownum`, `atnum`, `comments`, `theme_bgcolor`, `theme_pictype`, `theme_text`, `theme_link`, `theme_sidebar`, `theme_sidebox`, `theme_bgurl`, `auth_email`, `userlock`, `last_login`, `login_date`, `lastcontent`, `lastconttime`, `regmailauth`, `userguide`, `regip`, `customer_id`) VALUES
(2, 'etadmin', 'etadmin昵称', '5e69ec06bd4c61fe3ccabeb0b0fd425b', '113603.jpg', 1, '网站管理员', 'admin@admin.com', NULL, 1343009976, NULL, '', 1, 5, 5, 3, 0, 0, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, 1347433986, 20120912, '新的 用户id', 1344234861, 1, 1, '0', 2),
(1, 'wwwww', 'ww昵称', '5e69ec06bd4c61fe3ccabeb0b0fd425b', '113652.jpg', 0, '', 'abc@qq.com', '上海市 长宁区', 1343010433, '女', '我是谁', 1, 8, 4, 6, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, 1346229912, 20120829, 'sssssssssss', 1344221837, 0, 1, '127.0.0.1', 1),
(3, 'nuli888', 'nuli888昵称', 'b8818cd633da4a413907d8cce6522e48', 'aa.jpg', 0, '', 'nuli888@qq.com', '广东省 潮州市', 1343180141, '男', '', 0, 7, 5, 7, 4, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, 1347328182, 20120911, '[T]分享图片[/T] 是的', 1346654436, 0, 1, '127.0.0.1', 0);
