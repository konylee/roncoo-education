﻿# Host: localhost  (Version 5.6.39)
# Date: 2019-03-06 16:55:00
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "nav_bar"
#

CREATE TABLE `nav_bar` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `nav_title` varchar(255) DEFAULT NULL COMMENT '导航标题',
  `nav_url` varchar(255) DEFAULT NULL COMMENT '导航url',
  `target` varchar(255) DEFAULT NULL COMMENT '跳转方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='头部导航';

#
# Data for table "nav_bar"
#

INSERT INTO `nav_bar` VALUES (1060096588522270722,'2018-11-07 17:09:32','2018-11-07 17:09:32',1,2,'课程中心','/list','_self'),(1064696486139854849,'2018-11-20 09:47:57','2018-11-20 09:47:57',1,3,'首页','/index','_self'),(1085443582223257601,'2019-01-16 15:49:36','2019-01-16 15:49:36',1,1,'讲师招募','/recruit','_self');

#
# Structure for table "sys"
#

CREATE TABLE `sys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `video_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '视频存储平台（1保利威视，2七牛）',
  `polyv_useid` varchar(512) DEFAULT NULL COMMENT 'useid',
  `polyv_writetoken` varchar(255) DEFAULT NULL COMMENT 'writetoken',
  `polyv_readtoken` varchar(255) DEFAULT NULL COMMENT 'readtoken',
  `polyv_secretkey` varchar(255) DEFAULT NULL COMMENT 'secretkey',
  `file_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '文件存储类型（1阿里云，2七牛）',
  `aliyun_access_key_id` varchar(255) DEFAULT NULL COMMENT 'access_key_id',
  `aliyun_access_key_secret` varchar(255) DEFAULT NULL COMMENT 'access_key_secret',
  `aliyun_oss_url` varchar(255) DEFAULT NULL COMMENT 'oss_url',
  `aliyun_oss_bucket` varchar(255) DEFAULT NULL COMMENT 'oss_bucket',
  `aliyun_oas_vault` varchar(255) DEFAULT NULL COMMENT 'oas_vault',
  `pay_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '支付通道（1龙果支付，2其他）',
  `pay_url` varchar(255) DEFAULT NULL COMMENT '支付请求',
  `pay_key` varchar(255) DEFAULT NULL COMMENT 'roncoo_key',
  `pay_secret` varchar(255) DEFAULT NULL COMMENT 'roncoo_secret',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '回调地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统配置表';

#
# Data for table "sys"
#

INSERT INTO `sys` VALUES (1,'1899-12-30 01:00:00','1899-12-30 01:00:00',1,1,1,'','','','',1,'','','','','',1,'','','','');

#
# Structure for table "website"
#

CREATE TABLE `website` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `logo_ico` varchar(255) DEFAULT NULL COMMENT 'org_logo_ico',
  `logo_img` varchar(255) DEFAULT NULL COMMENT 'org_logo_img',
  `website_title` varchar(255) DEFAULT NULL COMMENT '站点标题',
  `website_keyword` varchar(255) DEFAULT NULL COMMENT '站点关键词',
  `website_desc` varchar(255) DEFAULT NULL COMMENT '站点描述',
  `copyright` varchar(255) DEFAULT NULL COMMENT '站点版权',
  `icp` varchar(255) DEFAULT NULL COMMENT '备案号',
  `prn` varchar(255) DEFAULT NULL COMMENT '公安备案号',
  `weixin` varchar(255) DEFAULT NULL COMMENT '站点微信',
  `weixin_xcx` varchar(255) DEFAULT NULL COMMENT '小程序二维码',
  `weibo` varchar(255) DEFAULT NULL COMMENT '站点微博',
  `is_enable_statistics` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启统计',
  `statistics_code` varchar(255) DEFAULT NULL COMMENT '统计代码',
  `is_show_service` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示客服信息',
  `service1` varchar(50) DEFAULT NULL COMMENT '客服信息1',
  `service2` varchar(50) DEFAULT NULL COMMENT '客服信息2',
  `user_agreement` text COMMENT '用户协议',
  `recruit_title` varchar(255) DEFAULT '' COMMENT '招募标题',
  `recruit_info` text COMMENT '招募信息',
  `entry_agreement` text COMMENT '入驻协议',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='站点信息';

#
# Data for table "website"
#

INSERT INTO `website` VALUES (934374967448227841,'2018-11-09 17:36:44','1899-12-30 01:00:00',1,1,'http://static-dev.roncoo.com/system/d73a99a804a14f0d8ddb2c2f6fd80e39.ico','http://static-dev.roncoo.com/system/028912caa6af43f1be9929c60e093d84.png','领课教育-1','领课教育-2','领课教育-3','Copyright &copy; 2018-2023 领课教育 版权所有','粤ICP备16009964号-1','粤公网安备 44010602005774号','http://static-dev.roncoo.com/system/e66eedab4c6641a19fe74a55a47a4d76.jpg','http://static-dev.roncoo.com/system/d1abbf37031a470dab1ce7b2ca641d55.jpg','',1,'',1,'297115770','3155237748','<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p>用户协议</p>\n<p>用户协议</p>\n<p>一、用户协议总则</p>\n<p>1、&nbsp;&nbsp;&nbsp;&nbsp; 本协议双方为<u>&nbsp; 领课教育网站&nbsp; </u>和<u>&nbsp; 领课教育网站旗下注册用户&nbsp;&nbsp;</u>。</p>\n<p>2、&nbsp;&nbsp;&nbsp;&nbsp; 用户在注册前请仔细阅读本协议的条款，并按照页面上的提示完成全部注册程序。</p>\n<p>3、&nbsp;&nbsp;&nbsp;&nbsp; 用户在进行注册过程中点击“同意”按钮，即表示用户已充分知悉和完全接受本协议项下全部条款，进而与甲方达成本协议。</p>\n<p>4、&nbsp;&nbsp;&nbsp;&nbsp; 甲方网站有权不时对本协议项下相关规则作出修改或补充，并于网站公布。用户若继续使用即视为您接受修订后的本协议条款。</p>\n<p><br /></p>\n<h2>二、用户服务使用说明</h2>\n<p>1、用户在注册时应按照注册提示填写准确的用户名、密码及真实的手机号码等相关个人资料，符合完整、准确的要求。</p>\n<p>2、用户一旦注册成功，便成为甲方网站合法的注册用户，将获得本网站的一个用户账号和相应密码，用户可随时修改自己的用户密码。用户应对其账号和密码安全负全部责任，并应对其用户名下所进行的所有行为和事件承担相应的法律责任。</p>\n<p>3、用户同意接受甲方网站通过或其他方式向用户发送有关商业信息。</p>\n<p>4、甲方网站不对用户所发布信息的删除或储存失败负责。</p>\n<p>5、甲方网站不提供账号删除服务，如果用户需要删除账号，请直接放弃使用即可。</p>\n<p>6、甲方网站有判定用户的行为是否符合本网站服务条款要求的权利，如果用户违背了服务条款的规定，本网站有权对其用户所提供的网络服务进行中断或停止使用。</p>\n<p>7、用户不得以任何非法目的或其它方式对甲方网站的个人用户账号进行转让、转借、倒卖、账号共享等行为（用户账号仅限由其本人使用）。</p>\n<p><br /></p>\n<h2>三、协议内容的变更和修订</h2>\n<p>1、甲方网站有权在必要时修改服务条款，修改后的协议可以在甲方网站上查看。</p>\n<p>2、用户如果不同意甲方所改动的内容，可自行停止使用本站网络服务。</p>\n<p>3、如果用户继续享用本站网络服务，则视为同意接受本网站服务条款的变动。</p>\n<p>4、甲方网站可随时根据实际情况中断或终止一项或多项网络服务而无需对任何用户或第三方承担任何责任，如用户对一项或多项网络服务的中断或终止有异议，可以行使如下权利：</p>\n<p>（1）&nbsp; 自行停止使用甲方网站的网络服务。</p>\n<p>（2）&nbsp; 通知甲方网站停止对该用户的服务。 结束用户服务后，用户使用网络服务的权利立即终止，从终止时起，用户没有权利再进行处理任何未完成的信息或服务，甲方网站也没有义务为其传送任何未处理的信息或未完成的服务给用户或任何第三方。</p>\n<p><br /></p>\n<h2>四、用户隐私保护</h2>\n<p>甲方网站将严格履行用户个人隐私保密义务，承诺不公开、编辑或透露用户个人信息，但以下特殊情况除外：</p>\n<p>1、经注册用户事先许可授权；</p>\n<p>2、遵守国家法律法规或配合相关政府部门的要求；</p>\n<p>3、遵从甲方网站合法服务程序；</p>\n<p>4、为维护社会公众利益以及甲方网站的合法权益所必须。</p>\n<p><br /></p>\n<h2>五、注册用户的权利与义务</h2>\n<p>1、注册用户在使用甲方网站服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用本服务进行任何违法或不正当的活动，否则用户将自行承担由此产生的一切法律责任。</p>\n<p>2、用户在账号使用过程中不得上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：</p>\n<p>（1）&nbsp; 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</p>\n<p>（2）&nbsp; 损害国家荣誉和利益的；</p>\n<p>（3）&nbsp; 煽动民族仇恨、民族歧视、破坏民族团结的；</p>\n<p>（4）&nbsp; 破坏国家宗教政策，宣扬邪教和封建迷信的；</p>\n<p>（5）&nbsp; 散布谣言，扰乱社会秩序，破坏社会稳定的；</p>\n<p>（6）&nbsp; 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</p>\n<p>（7）&nbsp; 侮辱或者诽谤他人，侵害他人合法权利的；</p>\n<p>（8）&nbsp; 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容。</p>\n<p>3、不得为任何非法目的而使用网络服务系统。</p>\n<p>4、不得利用甲方网站服务故意制作、传播计算机病毒等破坏性程序，或其他从事任何危害计算机信息网络安全的行为。</p>\n<p>5、若用户行为违反上述约定，甲方网站有权作出独立判断并立即取消用户的服务账号，用户应对自己网上的行为承担一切法律责任，甲方网站的系统记录有可能作为用户违反法律的证据提交给相关主管部门。</p>\n<p>6、用户应同意保障和维护甲方网站全体成员及其他用户的利益，如因违反本协议或违反有关的法律法规而给甲方网站或任何第三者造成损失，用户应承担因此产生的法律责任。</p>\n<p><br /></p>\n<h2>五、甲方网络服务内容的所有权</h2>\n<p>1、甲方网站定义的网络服务内容包括但不限于：教学视频、资料、源码、文字、软件、声音、图片、商标等。该等内容均受《著作权法》、《商标法》、《专利法》、《计算机软件保护条例》及其他相关法律法规的保护。</p>\n<p>2、甲方网站所有的文章版权归原文作者和甲方网站共同所有，任何人需要转载本网站版内的文章，必须事先取得原文作者和甲方网站的授权同意。</p>\n<p>3、未经甲方网站或其他有权第三方的事先许可授权，用户不得对包括但不限于：教学视频、学习软件、学习资料、源码、图片、音频内容等在内的任何内容进行翻录、复制、发行、破解、信息网络传播或其他违反知识产权相关法律、法规的行为，否则所导致的一切民事、行政或刑事责任，由用户自行承担。</p>\n<p><br /></p>\n<h2>六、免责声明</h2>\n<p>1、用户同意承担使用甲方网站服务所存在的一切风险以及因使用网络服务而产生的一切后果，甲方网站对用户不承担任何责任。</p>\n<p>2、甲方网站不担保服务一定能满足用户的要求，也不担保服务不会中断，亦对服务的及时性，安全性及可能发生的技术错误均不作任何担保。</p>\n<p>3、任何由于黑客攻击、计算机病毒侵入或发作、政府管制、硬件故障、不可抗力等非甲方故意或严重过失而造成的用户个人资料泄露、丢失、被盗用、被篡改或服务暂定或终止的，对用户可能造成的风险或损失，甲方不承担法律责任。</p>\n<p><br /></p>\n<h2>七、其他约定</h2>\n<p>1、用户同意因本平台服务产生的任何争议均适用中华人民共和国法律，相关争议任何一方可向甲方住所地人民法院提起诉讼解决。</p>\n<p>2、本协议中的标题仅为方便而设，不影响对于条款本身的解释。本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，其余条款仍应具有约束力。</p>\n<p></p>\n<p></p>\n<p></p>\n<p>（完）</p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>','','<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p>本网站是专注于在线教育内容提供的平台,致力于为用户提供优质的在线教育内容。为适应平台的发展和给用户提供更多高质量的内容，我们期待有理想、有追求的您能加入我们一起通过互联网无边界的方式进行传播服务到更多努力求知的用户!<br /></p>\n<p><br /></p>\n<p>讲师权益</p>\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、能力变现：技术能力的兑现且收益可持续</p>\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、精湛加密：保护你的知识版权</p>\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、品牌塑造：帮你打造在线教育领域个人品牌</p>\n<p><br /></p>\n<p>申请条件</p>\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、教育行业内2年以上从业经验，自身有丰富的教学知识体系及经验</p>\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、拥有过讲师、培训讲师经历</p>\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3、喜欢在行业内分享心得（写博客，逛论坛等）</p>\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4、参与过知名教育行业峰会讲师</p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>','<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<h3><b><b><p>一、合作协议总则<br /></p></b></b></h3>\n<h3><b><b><p>1、 本协议双方为甲方和乙方<u>（以下简称“讲师”或“您”）</u>。</p><p>2、 乙方在注册前请仔细阅读本协议的条款，并按照页面上的提示完成全部注册程序。</p><p>3、 乙方在进行注册过程中点击“同意”按钮，即表示您已充分知悉和完全接受本协议项下全部条款，进而与甲方达成本协议。</p><p>4、 甲方有权不时对本协议项下各类业务规则作出修改或补充，并通过甲方网站公布。您若继续使用即视为您接受修订后的本协议条款。否则,您有权在确保用户权益的情况下终止与甲方的合作。</p></b></b></h3>\n<h3>二、合作内容</h3>\n<h3><b><b><p>1、乙方作为甲方旗下:<u>&nbsp;</u><u>领课教育</u><u>&nbsp;</u>的签约讲师，基于甲方 &nbsp;&nbsp;&nbsp;的在线教育平台，为甲方的用户提供远程培训课程及答疑服务。乙方主要工作包括录制课程和定期在线答疑。</p><p>2、甲方提供对乙方的课程信息（讲师）展示和推广服务，提供对课程播放的技术维护、服务器宽带、客服销售支持工作。</p></b></b></h3>\n<h3>三、分成比例与结算方式</h3>\n<h3><b><b><p>1、乙方享有对提供的课程的定价权，甲方可提出定价参考建议。</p><p>2、甲方收取合乙方所发布的课程销售总额的<u>&nbsp;<b>40&nbsp;</b></u><b>%&nbsp;</b>作为报酬。</p><p>3、乙方提供的课程在甲方平台上销售收入和销售分成以甲方系统中实际记录的数据为准,若有异议的双方可协商处理,并于协商之日起7个工作日内予以确认。双方无法协商一致的，任何一方可按本协议争议解决条款维护权益。</p><p>4、乙方分成收益的结算周期为1个月, 甲方于每个月的前10个工作日（法定节假日顺延）汇总统计乙方的应得收益，经乙方确认无误之日起（以电子邮件或微信的形式确认），甲方在3个工作日内将款项支付至乙方指定银行账户。</p><p>5、乙方的银行卡信息若变更需及时通知甲方,否则造成的损失由乙方负责。</p></b></b></h3>\n<h3>四、课程内容规定</h3>\n<h3><b><b><p>1、乙方提供的录制课程不得含有下列内容：</p><p>（1）&nbsp; 违反宪法确定的基本原则的。</p><p>（2）&nbsp; 危害国家的统一、主权和领土完整的。</p><p>（3）&nbsp; 泄漏国家秘密、危害国家安全或者损害国家的荣誉和利益的。</p><p>（4）&nbsp; 煽动民族仇恨、分裂和歧视，侵害少数民族风俗习惯，破坏民族团结的。</p><p>（5）&nbsp; 宣扬邪教、迷信的，扰乱社会秩序，破坏社会稳定的。</p><p>（6）&nbsp; 宣扬淫秽、赌博或者渲染暴力、教唆犯罪的，危害社会公德和民族优秀文化传统的。</p><p>（7）&nbsp; 侮辱或者诽谤他人，侵害他人合法权益的。</p><p>（8）&nbsp; 有法律、行政法规和国家规定禁止的其他内容的。</p><p>2、如因乙方课程内容违法违规造成的一切损失和责任，由乙方自行独立承担。如甲方发现乙方课程存在前述不合法不合规的情况，有权告知乙方并建议调整及整改；乙方应积极配合，主动整改。自收到甲方建议之日起7个工作日内未整改完毕的，甲方有权单方解除本合同。</p></b></b></h3>\n<h3>五、课程交付规则</h3>\n<h3><b><b><p>1、乙方提交课程大纲经甲方审核通过之日起（以电子邮件或微信的形式确认），乙方应在1个月内提交第一次课时内容（首次提交的课时内容不得少于全部课时内容的50%），并承诺保证以后每周至少提交3个课时以上的内容，全部课时必须在3个月以内完成提交。</p><p>2、如乙方由于不可抗力导致不能按时提交/更新课程时，须在出现该原因之日起5日内通知甲方，双方另行约定课程的更新/交付日期。</p><p>3、如果因乙方个人原因导致无法按时完成全部课程时，乙方需提前7个工作日与甲方进行协商沟通, 双方另行约定课程的更新/交付日期。</p><p>4、如果在双方另行约定更新/交付日期到期时，乙方仍不能更新/交付课件，甲方有权选择下线该课程，单方解除合作关系而不承担任何违约责任；乙方同意对已上线的课程收入所得进行冻结，用以垫付用户/学员退款（退款金额全部由乙方承担）；如果乙方课程收入所得无法满足向用户/学员退款的金额，不足部分由乙方承担差额补足责任，并对由此给甲方造成的损失承担法律责任。</p></b></b></h3>\n<h3>六、课程发布规则</h3>\n<h3><b><b><p>1、乙方提供的课程中，必须有1个课时（包含1个课时）以上的免费课时。</p><p>2、乙方提交课程之日起7个工作日内，甲方应完成课程审核，并发布上线，如审核未通过将会在审核结束后3个工作日内以电子邮件方式通知乙方。</p><p>3、如因任何一方出现不可抗力而需要推迟课程发布日期时，存在不可抗力的一方应向另一方及时说明，双方另行协商确定课程发布日期。</p><p>4、如甲方由于不可抗力停止该课程的合作，甲方应按照本合作协议项下的分成比例条款向乙方支付该课程剩余销售所得。</p></b></b></h3>\n<h3>七、播放权与版权规则</h3>\n<h3><b><b><p>1、乙方提供给甲方在线教育平台所发布的课程以及课件（包括但不限于文档），在本协议有效期内，甲方拥有课程及课件的播放权、使用权。本协议有效期届满（或经双方协商一致同意提前终止合作协议后），为保证已付费用户利益，甲方仍保留该课程对已付费用户的播放权，但不会再销售该课程。</p><p>2、如出现因乙方提供的课程涉嫌违反相关法律法规规定，有可能导致甲方承担法律责任、经济或名誉损失的，甲方有权决定停播此课程。</p><p>3、如发现乙方提供的课程在其它网站（包含乙方自己的网站）销售价格低于在甲方网站上销售的价格，甲方有权决定停播此课程。课程停播后，如果出现需要向付费用户退款的情况，乙方同意将乙方课程收入所得用以垫付用户/学员退款（退款金额由乙方承担）；如果乙方课程收入所得无法满足向用户/学员退款的金额，不足部分由乙方承担差额补足责任，并对由此给甲方造成的损失承担法律责任。</p><p>4、除本条第1点约定的播放权和使用权外，本课程的版权归乙方所有。</p><p>5、乙方承诺向甲方提供的课程不存在与第三方的任何版权纠纷或潜在争议。否则，由此带来的一切法律后果由乙方自行独立承担。</p></b></b></h3>\n<h3>八、服务规则</h3>\n<h3><b><b><p>1、乙方按照提交的课程大纲录制作品，并在甲乙双方商定时间内交付/更新。</p><p>2、课程上线后，乙方（讲师）应在48小时内线上回复付费用户与该课程有关的疑问。</p><p>3、本协议有效期届满（或经双方协商一致同意提前终止合作后），乙方仍需回复付费用户与该课程有关的疑问。</p></b></b></h3>\n<h3>九、保密规则</h3>\n<h3><b><b><p>1、甲乙双方应对因履行本协议而取得的对方的各种形式的技术或商业信息保密（包括本协议内容本身），法律法规另有规定的除外；未经一方事先书面允许，另一方不得将双方合作信息，如价格，销售分成比例等透露给第三方。</p></b></b></h3>\n<h3>十、其他约定</h3>\n<h3><b><b><p>1、本协议项下任何争议，双方应友好协商解决；协商不成的，任何一方均可向甲方所在地人民法院提起诉讼。</p><p>2、课程的具体录制内容等其他条款，双方在《课程制作规范》进行约定。《课程制作规范》和本协议具有同等的法律效力。</p><p>3、自乙方点击同意接受本协议全部条款之时生效。</p></b></b></h3>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>');

#
# Structure for table "website_link"
#

CREATE TABLE `website_link` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `link_name` varchar(50) NOT NULL COMMENT '名称',
  `link_url` varchar(255) NOT NULL COMMENT '链接',
  `link_target` varchar(50) NOT NULL COMMENT '跳转方式(_blank，_self)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='站点友情链接';

#
# Data for table "website_link"
#

INSERT INTO `website_link` VALUES (1060350851601158145,'2018-11-08 09:59:52','2018-11-08 09:59:52',1,1,'龙果学院','https://www.roncoo.com','_blank'),(1060353540380708865,'2018-11-08 10:10:33','2018-11-08 10:10:33',1,1,'领课网络','http://www.roncoo.net/','_blank');

#
# Structure for table "website_nav"
#

CREATE TABLE `website_nav` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `parent_id` bigint(20) unsigned NOT NULL COMMENT '父ID',
  `nav_name` varchar(50) NOT NULL COMMENT '导航名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='站点导航';

#
# Data for table "website_nav"
#

INSERT INTO `website_nav` VALUES (1060100633685209089,'2018-11-07 17:25:36','2018-11-07 17:25:36',1,2,0,'商务合作'),(1060107291291365377,'2018-11-07 17:52:03','2018-11-07 17:52:03',1,1,1060100633685209089,'课程合作'),(1060115285643177985,'2018-11-07 18:23:49','2018-11-07 18:23:49',1,1,1060100633685209089,'项目合作'),(1060708747425882114,'2018-11-09 09:42:04','2018-11-09 09:42:04',1,1,0,'协议相关'),(1060708775632576514,'2018-11-09 09:42:11','2018-11-09 09:42:11',1,1,1060708747425882114,'用户协议'),(1080719070034886658,'2019-01-03 14:54:38','2019-01-03 14:54:38',1,1,1060708747425882114,'讲师协议');

#
# Structure for table "website_nav_article"
#

CREATE TABLE `website_nav_article` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `nav_id` bigint(20) NOT NULL COMMENT '导航ID',
  `art_title` varchar(255) NOT NULL COMMENT '文章标题',
  `art_pic` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `art_desc` text NOT NULL COMMENT '文章描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='站点导航文章';

#
# Data for table "website_nav_article"
#

INSERT INTO `website_nav_article` VALUES (1060123213131111,'1899-12-30 01:00:00','1899-12-30 01:00:00',1,1,1060107291291365400,'用户协议','http://static-dev.roncoo.com/course/ec0ae2ff117c4cd7b63e42c1110e25f2.png','1'),(1060233213232111,'1899-12-30 01:00:00','1899-12-30 01:00:00',1,1,1060708775632576500,'平台合作','http://static-dev.roncoo.com/course/8fdd0e9ebe83416fa35e9eb8f25426b5.jpg','1'),(1060354353322411,'1899-12-30 01:00:00','1899-12-30 01:00:00',1,1,1060115285643178000,'商务合作','http://static-dev.roncoo.com/course/b290902a59294ec1885df4a381dd51fd.jpg','1'),(1060109903055106050,'2018-11-07 18:02:26','2018-11-07 18:02:26',1,1,1060107291291365377,'讲师招募','http://static-dev.roncoo.com/course/8fdd0e9ebe83416fa35e9eb8f25426b5.jpg','<p>平台合作</p>\n<p>想试水尝尝网络讲师的滋味？快加入龙果学院讲师队伍吧！&nbsp;<br /><strong>我们希望你：</strong>&nbsp;<br />- 热衷于互联网上分享技术经验，解答技术难题的IT精英；&nbsp;<br />- 有3年以上的大型项目开发经验；&nbsp;<br /></p>\n<p>- 精通JAVA开发、Python、大数据开发、人工智能、go语言开发任意一项即可！</p>\n<p><strong>你的收获：</strong></p>\n<p>- 额外收入，技术、知识兑现且可持续收益；<br />- 技术的沉淀与分享；<br />- 迅速增长的粉丝及业内知名度，帮你打造在线教育领域个人品牌。</p>\n<p><strong>讲师合作联系方式</strong>&nbsp;：<br />讲师招聘负责人：陈老师&nbsp;<br />联系电话：18027263931&nbsp;<br />联系QQ：2955237748&nbsp;<br />联系邮箱：chenbs@roncoo.com&nbsp;<br />官方微信公众号：RonCoo_com</p>\n<p>讲师在线申请地址：<a href=\"http://qa.www.roncoo.com/recruit\">http://qa.www.roncoo.com/recruit</a></p>'),(1060342529602899969,'2018-11-08 09:26:48','2018-11-08 09:26:48',1,1,1060115285643177985,'项目合作','http://static-dev.roncoo.com/course/b290902a59294ec1885df4a381dd51fd.jpg','<p></p>\n<p><strong>商务及项目合作</strong></p>\n<p>吴老师（吴水成）</p>\n<p>手机：18926215592</p>\n<p>微信：wushuicheng</p>\n<p>邮箱：wusc@roncoo.com</p>\n<p><br /></p>\n<p><strong>广州市领课网络科技有限公司</strong><br />地址：广州市天河区珠江新城华强路3号富力盈力大厦北塔1606</p>\n<p>电话：020-87603362</p>\n<p>邮箱：service@roncoo.com</p>\n<p></p>\n<p><br /></p>'),(1060708890749444097,'2018-11-09 09:42:38','2018-11-09 09:42:38',1,1,1060708775632576514,'用户协议','http://static-dev.roncoo.com/course/ec0ae2ff117c4cd7b63e42c1110e25f2.png','<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<h2>一、用户协议总则</h2>\n<p>1、&nbsp;&nbsp;&nbsp;&nbsp; 本协议双方为<u>&nbsp; &nbsp;领课教育&nbsp; &nbsp;</u>和<u>&nbsp; &nbsp;</u><u>领课教育</u><u>网站的注册用户（以下简称用户）&nbsp;&nbsp;</u>。</p>\n<p>2、&nbsp;&nbsp;&nbsp;&nbsp; 用户在注册前请仔细阅读本协议的条款，并按照页面上的提示完成全部注册程序。</p>\n<p>3、&nbsp;&nbsp;&nbsp;&nbsp; 用户在进行注册过程中点击“同意”按钮，即表示用户已充分知悉和完全接受本协议项下全部条款，进而与甲方达成本协议。</p>\n<p>4、&nbsp;&nbsp;&nbsp;&nbsp; 甲方网站有权不时对本协议项下相关规则作出修改或补充，并于网站公布。用户若继续使用即视为您接受修订后的本协议条款。</p>\n<p><br /></p>\n<h2>二、用户服务使用说明</h2>\n<p>1、用户在注册时应按照注册提示填写准确的用户名、密码及真实的手机号码等相关个人资料，符合完整、准确的要求。</p>\n<p>2、用户一旦注册成功，便成为甲方网站合法的注册用户，将获得本网站的一个用户账号和相应密码，用户可随时修改自己的用户密码。用户应对其账号和密码安全负全部责任，并应对其用户名下所进行的所有行为和事件承担相应的法律责任。</p>\n<p>3、用户同意接受甲方网站通过或其他方式向用户发送有关商业信息。</p>\n<p>4、甲方网站不对用户所发布信息的删除或储存失败负责。</p>\n<p>5、甲方网站不提供账号删除服务，如果用户需要删除账号，请直接放弃使用即可。</p>\n<p>6、甲方网站有判定用户的行为是否符合本网站服务条款要求的权利，如果用户违背了服务条款的规定，本网站有权对其用户所提供的网络服务进行中断或停止使用。</p>\n<p>7、用户不得以任何非法目的或其它方式对甲方网站的个人用户账号进行转让、转借、倒卖、账号共享等行为（用户账号仅限由其本人使用）。</p>\n<p><br /></p>\n<h2>三、协议内容的变更和修订</h2>\n<p>1、甲方网站有权在必要时修改服务条款，修改后的协议可以在甲方网站上查看。</p>\n<p>2、用户如果不同意甲方所改动的内容，可自行停止使用本站网络服务。</p>\n<p>3、如果用户继续享用本站网络服务，则视为同意接受本网站服务条款的变动。</p>\n<p>4、甲方网站可随时根据实际情况中断或终止一项或多项网络服务而无需对任何用户或第三方承担任何责任，如用户对一项或多项网络服务的中断或终止有异议，可以行使如下权利：</p>\n<p>（1）&nbsp; 自行停止使用甲方网站的网络服务。</p>\n<p>（2）&nbsp; 通知甲方网站停止对该用户的服务。 结束用户服务后，用户使用网络服务的权利立即终止，从终止时起，用户没有权利再进行处理任何未完成的信息或服务，甲方网站也没有义务为其传送任何未处理的信息或未完成的服务给用户或任何第三方。</p>\n<p><br /></p>\n<h2>四、用户隐私保护</h2>\n<p>甲方网站将严格履行用户个人隐私保密义务，承诺不公开、编辑或透露用户个人信息，但以下特殊情况除外：</p>\n<p>1、经注册用户事先许可授权；</p>\n<p>2、遵守国家法律法规或配合相关政府部门的要求；</p>\n<p>3、遵从甲方网站合法服务程序；</p>\n<p>4、为维护社会公众利益以及甲方网站的合法权益所必须。</p>\n<p><br /></p>\n<h2>五、注册用户的权利与义务</h2>\n<p>1、注册用户在使用甲方网站服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用本服务进行任何违法或不正当的活动，否则用户将自行承担由此产生的一切法律责任。</p>\n<p>2、用户在账号使用过程中不得上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：</p>\n<p>（1）&nbsp; 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</p>\n<p>（2）&nbsp; 损害国家荣誉和利益的；</p>\n<p>（3）&nbsp; 煽动民族仇恨、民族歧视、破坏民族团结的；</p>\n<p>（4）&nbsp; 破坏国家宗教政策，宣扬邪教和封建迷信的；</p>\n<p>（5）&nbsp; 散布谣言，扰乱社会秩序，破坏社会稳定的；</p>\n<p>（6）&nbsp; 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</p>\n<p>（7）&nbsp; 侮辱或者诽谤他人，侵害他人合法权利的；</p>\n<p>（8）&nbsp; 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容。</p>\n<p>3、不得为任何非法目的而使用网络服务系统。</p>\n<p>4、不得利用甲方网站服务故意制作、传播计算机病毒等破坏性程序，或其他从事任何危害计算机信息网络安全的行为。</p>\n<p>5、若用户行为违反上述约定，甲方网站有权作出独立判断并立即取消用户的服务账号，用户应对自己网上的行为承担一切法律责任，甲方网站的系统记录有可能作为用户违反法律的证据提交给相关主管部门。</p>\n<p>6、用户应同意保障和维护甲方网站全体成员及其他用户的利益，如因违反本协议或违反有关的法律法规而给甲方网站或任何第三者造成损失，用户应承担因此产生的法律责任。</p>\n<p><br /></p>\n<h2>五、甲方网络服务内容的所有权</h2>\n<p>1、甲方网站定义的网络服务内容包括但不限于：教学视频、资料、源码、文字、软件、声音、图片、商标等。该等内容均受《著作权法》、《商标法》、《专利法》、《计算机软件保护条例》及其他相关法律法规的保护。</p>\n<p>2、甲方网站所有的文章版权归原文作者和甲方网站共同所有，任何人需要转载本网站版内的文章，必须事先取得原文作者和甲方网站的授权同意。</p>\n<p>3、未经甲方网站或其他有权第三方的事先许可授权，用户不得对包括但不限于：教学视频、学习软件、学习资料、源码、图片、音频内容等在内的任何内容进行翻录、复制、发行、破解、信息网络传播或其他违反知识产权相关法律、法规的行为，否则所导致的一切民事、行政或刑事责任，由用户自行承担。</p>\n<p><br /></p>\n<h2>六、免责声明</h2>\n<p>1、用户同意承担使用甲方网站服务所存在的一切风险以及因使用网络服务而产生的一切后果，甲方网站对用户不承担任何责任。</p>\n<p>2、甲方网站不担保服务一定能满足用户的要求，也不担保服务不会中断，亦对服务的及时性，安全性及可能发生的技术错误均不作任何担保。</p>\n<p>3、任何由于黑客攻击、计算机病毒侵入或发作、政府管制、硬件故障、不可抗力等非甲方故意或严重过失而造成的用户个人资料泄露、丢失、被盗用、被篡改或服务暂定或终止的，对用户可能造成的风险或损失，甲方不承担法律责任。</p>\n<p><br /></p>\n<h2>七、其他约定</h2>\n<p>1、用户同意因本平台服务产生的任何争议均适用中华人民共和国法律，相关争议任何一方可向甲方住所地人民法院提起诉讼解决。</p>\n<p>2、本协议中的标题仅为方便而设，不影响对于条款本身的解释。本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，其余条款仍应具有约束力。</p>\n<p>（完）</p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>'),(1080719257771933698,'2019-01-03 14:55:22','2019-01-03 14:55:22',1,1,1080719070034886658,'讲师协议',NULL,'<p></p>\n<p></p>\n<p></p>\n<p></p>\n<h3>一、合作协议总则</h3>\n<p>1、 本协议双方为甲方和乙方<u>（以下简称“讲师”或“您”）</u>。</p>\n<p>2、 乙方在注册前请仔细阅读本协议的条款，并按照页面上的提示完成全部注册程序。</p>\n<p>3、 乙方在进行注册过程中点击“同意”按钮，即表示您已充分知悉和完全接受本协议项下全部条款，进而与甲方达成本协议。</p>\n<p>4、 甲方有权不时对本协议项下各类业务规则作出修改或补充，并通过甲方网站公布。您若继续使用即视为您接受修订后的本协议条款。否则,您有权在确保用户权益的情况下终止与甲方的合作。</p>\n<p><br /></p>\n<h3>二、合作内容</h3>\n<p>1、乙方作为甲方旗下:<u>&nbsp; &nbsp;&nbsp;</u><u>领课教育&nbsp; &nbsp;</u><u>&nbsp;</u>的签约讲师，基于甲方&nbsp;&nbsp;&nbsp;&nbsp;的在线教育平台，为甲方的用户提供远程培训课程及答疑服务。乙方主要工作包括录制课程和定期在线答疑。</p>\n<p>2、甲方提供对乙方的课程信息（讲师）展示和推广服务，提供对课程播放的技术维护、服务器宽带、客服销售支持工作。</p>\n<p><br /></p>\n<h3>三、分成比例与结算方式</h3>\n<p>1、乙方享有对提供的课程的定价权，甲方可提出定价参考建议。</p>\n<p>2、甲方收取合乙方所发布的课程销售总额的<u>&nbsp;<b>&nbsp;40&nbsp;&nbsp;&nbsp;</b></u><b>%&nbsp;</b>作为报酬。</p>\n<p>3、乙方提供的课程在甲方平台上销售收入和销售分成以甲方系统中实际记录的数据为准,若有异议的双方可协商处理,并于协商之日起7个工作日内予以确认。双方无法协商一致的，任何一方可按本协议争议解决条款维护权益。</p>\n<p>4、乙方分成收益的结算周期为1个月,&nbsp;甲方于每个月的前10个工作日（法定节假日顺延）汇总统计乙方的应得收益，经乙方确认无误之日起（以电子邮件或微信的形式确认），甲方在3个工作日内将款项支付至乙方指定银行账户。</p>\n<p>5、乙方的银行卡信息若变更需及时通知甲方,否则造成的损失由乙方负责。</p>\n<p><br /></p>\n<h3>四、课程内容规定</h3>\n<p>1、乙方提供的录制课程不得含有下列内容：</p>\n<p>（1）&nbsp; 违反宪法确定的基本原则的。</p>\n<p>（2）&nbsp; 危害国家的统一、主权和领土完整的。</p>\n<p>（3）&nbsp; 泄漏国家秘密、危害国家安全或者损害国家的荣誉和利益的。</p>\n<p>（4）&nbsp; 煽动民族仇恨、分裂和歧视，侵害少数民族风俗习惯，破坏民族团结的。</p>\n<p>（5）&nbsp; 宣扬邪教、迷信的，扰乱社会秩序，破坏社会稳定的。</p>\n<p>（6）&nbsp; 宣扬淫秽、赌博或者渲染暴力、教唆犯罪的，危害社会公德和民族优秀文化传统的。</p>\n<p>（7）&nbsp; 侮辱或者诽谤他人，侵害他人合法权益的。</p>\n<p>（8）&nbsp; 有法律、行政法规和国家规定禁止的其他内容的。</p>\n<p>2、如因乙方课程内容违法违规造成的一切损失和责任，由乙方自行独立承担。如甲方发现乙方课程存在前述不合法不合规的情况，有权告知乙方并建议调整及整改；乙方应积极配合，主动整改。自收到甲方建议之日起7个工作日内未整改完毕的，甲方有权单方解除本合同。</p>\n<p><br /></p>\n<h3>五、课程交付规则</h3>\n<p>1、乙方提交课程大纲经甲方审核通过之日起（以电子邮件或微信的形式确认），乙方应在1个月内提交第一次课时内容（首次提交的课时内容不得少于全部课时内容的50%），并承诺保证以后每周至少提交3个课时以上的内容，全部课时必须在3个月以内完成提交。</p>\n<p>2、如乙方由于不可抗力导致不能按时提交/更新课程时，须在出现该原因之日起5日内通知甲方，双方另行约定课程的更新/交付日期。</p>\n<p>3、如果因乙方个人原因导致无法按时完成全部课程时，乙方需提前7个工作日与甲方进行协商沟通,&nbsp;双方另行约定课程的更新/交付日期。</p>\n<p>4、如果在双方另行约定更新/交付日期到期时，乙方仍不能更新/交付课件，甲方有权选择下线该课程，单方解除合作关系而不承担任何违约责任；乙方同意对已上线的课程收入所得进行冻结，用以垫付用户/学员退款（退款金额全部由乙方承担）；如果乙方课程收入所得无法满足向用户/学员退款的金额，不足部分由乙方承担差额补足责任，并对由此给甲方造成的损失承担法律责任。</p>\n<p><br /></p>\n<h3>六、课程发布规则</h3>\n<p>1、乙方提供的课程中，必须有1个课时（包含1个课时）以上的免费课时。</p>\n<p>2、乙方提交课程之日起7个工作日内，甲方应完成课程审核，并发布上线，如审核未通过将会在审核结束后3个工作日内以电子邮件方式通知乙方。</p>\n<p>3、如因任何一方出现不可抗力而需要推迟课程发布日期时，存在不可抗力的一方应向另一方及时说明，双方另行协商确定课程发布日期。</p>\n<p>4、如甲方由于不可抗力停止该课程的合作，甲方应按照本合作协议项下的分成比例条款向乙方支付该课程剩余销售所得。</p>\n<p><br /></p>\n<h3>七、播放权与版权规则</h3>\n<p>1、乙方提供给甲方在线教育平台所发布的课程以及课件（包括但不限于文档），在本协议有效期内，甲方拥有课程及课件的播放权、使用权。本协议有效期届满（或经双方协商一致同意提前终止合作协议后），为保证已付费用户利益，甲方仍保留该课程对已付费用户的播放权，但不会再销售该课程。</p>\n<p>2、如出现因乙方提供的课程涉嫌违反相关法律法规规定，有可能导致甲方承担法律责任、经济或名誉损失的，甲方有权决定停播此课程。</p>\n<p>3、如发现乙方提供的课程在其它网站（包含乙方自己的网站）销售价格低于在甲方网站上销售的价格，甲方有权决定停播此课程。课程停播后，如果出现需要向付费用户退款的情况，乙方同意将乙方课程收入所得用以垫付用户/学员退款（退款金额由乙方承担）；如果乙方课程收入所得无法满足向用户/学员退款的金额，不足部分由乙方承担差额补足责任，并对由此给甲方造成的损失承担法律责任。</p>\n<p>4、除本条第1点约定的播放权和使用权外，本课程的版权归乙方所有。</p>\n<p>5、乙方承诺向甲方提供的课程不存在与第三方的任何版权纠纷或潜在争议。否则，由此带来的一切法律后果由乙方自行独立承担。</p>\n<p><br /></p>\n<h3>八、服务规则</h3>\n<p>1、乙方按照提交的课程大纲录制作品，并在甲乙双方商定时间内交付/更新。</p>\n<p>2、课程上线后，乙方（讲师）应在48小时内线上回复付费用户与该课程有关的疑问。</p>\n<p>3、本协议有效期届满（或经双方协商一致同意提前终止合作后），乙方仍需回复付费用户与该课程有关的疑问。</p>\n<p><br /></p>\n<h3>九、保密规则</h3>\n<p>1、甲乙双方应对因履行本协议而取得的对方的各种形式的技术或商业信息保密（包括本协议内容本身），法律法规另有规定的除外；未经一方事先书面允许，另一方不得将双方合作信息，如价格，销售分成比例等透露给第三方。</p>\n<p><br /></p>\n<h3>十、其他约定</h3>\n<p>1、本协议项下任何争议，双方应友好协商解决；协商不成的，任何一方均可向甲方所在地人民法院提起诉讼。</p>\n<p>2、课程的具体录制内容等其他条款，双方在《课程制作规范》进行约定。《课程制作规范》和本协议具有同等的法律效力。</p>\n<p>3、自乙方点击同意接受本协议全部条款之时生效。</p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>\n<p></p>\n<p><br /></p>');
