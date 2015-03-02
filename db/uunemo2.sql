/*
Navicat MySQL Data Transfer

Source Server         : foolranklocal
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : uunemo2

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-02 20:22:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bulletin
-- ----------------------------
DROP TABLE IF EXISTS `bulletin`;
CREATE TABLE `bulletin` (
  `bulletin_id` int(11) NOT NULL,
  `bulletin_date` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  PRIMARY KEY (`bulletin_id`),
  UNIQUE KEY `bulletin_id` (`bulletin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bulletin
-- ----------------------------

-- ----------------------------
-- Table structure for career
-- ----------------------------
DROP TABLE IF EXISTS `career`;
CREATE TABLE `career` (
  `career_id` int(11) NOT NULL AUTO_INCREMENT,
  `career_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`career_id`),
  UNIQUE KEY `career_id` (`career_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of career
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `total_person` int(11) NOT NULL DEFAULT '0',
  `total_score` int(11) DEFAULT '0',
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for honor
-- ----------------------------
DROP TABLE IF EXISTS `honor`;
CREATE TABLE `honor` (
  `honor_id` int(11) NOT NULL AUTO_INCREMENT,
  `honor_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`honor_id`),
  UNIQUE KEY `honor_id` (`honor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of honor
-- ----------------------------

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `options` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `right_flag` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_id` (`option_id`),
  KEY `FKB586869ECC71388D` (`question_id`),
  CONSTRAINT `FKB586869ECC71388D` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1593 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('4', '122', '1', '1');
INSERT INTO `options` VALUES ('5', '133', '0', '1');
INSERT INTO `options` VALUES ('6', '211', '0', '2');
INSERT INTO `options` VALUES ('7', '222', '1', '2');
INSERT INTO `options` VALUES ('8', '311', '1', '5');
INSERT INTO `options` VALUES ('9', '322', '0', '5');
INSERT INTO `options` VALUES ('10', '411', '1', '6');
INSERT INTO `options` VALUES ('11', '422', '0', '6');
INSERT INTO `options` VALUES ('12', '433', '0', '6');
INSERT INTO `options` VALUES ('421', '函数调用', '0', '109');
INSERT INTO `options` VALUES ('422', '接口对象', '0', '109');
INSERT INTO `options` VALUES ('423', '单例对象', '1', '109');
INSERT INTO `options` VALUES ('424', '网络服务', '0', '109');
INSERT INTO `options` VALUES ('425', '%% %%', '0', '110');
INSERT INTO `options` VALUES ('426', '## ##', '0', '110');
INSERT INTO `options` VALUES ('427', '&& &&', '0', '110');
INSERT INTO `options` VALUES ('428', '{{ }}', '1', '110');
INSERT INTO `options` VALUES ('429', 'ng-template', '0', '111');
INSERT INTO `options` VALUES ('430', 'ng-route', '0', '111');
INSERT INTO `options` VALUES ('431', 'ng-model', '0', '111');
INSERT INTO `options` VALUES ('432', 'ng-controller', '1', '111');
INSERT INTO `options` VALUES ('433', 'x in list ? filter:query', '0', '112');
INSERT INTO `options` VALUES ('434', 'x in list if filter:query', '0', '112');
INSERT INTO `options` VALUES ('435', 'x in list if(query(x))', '0', '112');
INSERT INTO `options` VALUES ('436', 'x in list | filter:query', '1', '112');
INSERT INTO `options` VALUES ('437', 'ng-service', '0', '113');
INSERT INTO `options` VALUES ('438', 'ng-server', '0', '113');
INSERT INTO `options` VALUES ('439', 'ng-class', '0', '113');
INSERT INTO `options` VALUES ('440', 'ng-command', '0', '113');
INSERT INTO `options` VALUES ('441', 'jquery', '0', '114');
INSERT INTO `options` VALUES ('442', 'css', '0', '114');
INSERT INTO `options` VALUES ('443', 'javascript', '1', '114');
INSERT INTO `options` VALUES ('444', 'html', '0', '114');
INSERT INTO `options` VALUES ('445', '函数调用', '0', '115');
INSERT INTO `options` VALUES ('446', '广播', '1', '115');
INSERT INTO `options` VALUES ('447', '全局变量', '0', '115');
INSERT INTO `options` VALUES ('448', '回调', '0', '115');
INSERT INTO `options` VALUES ('449', '发送消息给其它controller', '0', '116');
INSERT INTO `options` VALUES ('450', '手动绑定外部数据', '0', '116');
INSERT INTO `options` VALUES ('451', '使方法生效', '1', '116');
INSERT INTO `options` VALUES ('452', '格式化数据', '0', '116');
INSERT INTO `options` VALUES ('453', '无输出', '1', '117');
INSERT INTO `options` VALUES ('454', 'Waiting 2000ms for update', '0', '117');
INSERT INTO `options` VALUES ('455', '编译错误', '0', '117');
INSERT INTO `options` VALUES ('456', 'Timeout called', '0', '117');
INSERT INTO `options` VALUES ('457', '2.0', '0', '118');
INSERT INTO `options` VALUES ('458', '报错', '0', '118');
INSERT INTO `options` VALUES ('459', '无法确定', '1', '118');
INSERT INTO `options` VALUES ('460', '1.0', '0', '118');
INSERT INTO `options` VALUES ('461', '以上都不是', '0', '119');
INSERT INTO `options` VALUES ('462', '在生成DOM后扫描并生成', '1', '119');
INSERT INTO `options` VALUES ('463', '在生成DOM中扫描并生成', '0', '119');
INSERT INTO `options` VALUES ('464', '在生成DOM前扫描并生成', '0', '119');
INSERT INTO `options` VALUES ('465', 'compile执行中', '0', '120');
INSERT INTO `options` VALUES ('466', '在compile后', '1', '120');
INSERT INTO `options` VALUES ('467', '以上都不是', '0', '120');
INSERT INTO `options` VALUES ('468', 'compile前', '0', '120');
INSERT INTO `options` VALUES ('469', '数据绑定', '0', '121');
INSERT INTO `options` VALUES ('470', '以上都不是', '0', '121');
INSERT INTO `options` VALUES ('471', '定义模版', '0', '121');
INSERT INTO `options` VALUES ('472', '绑定DOM', '1', '121');
INSERT INTO `options` VALUES ('473', '生成DOM时', '0', '122');
INSERT INTO `options` VALUES ('474', 'compiles时', '0', '122');
INSERT INTO `options` VALUES ('475', 'link时', '0', '122');
INSERT INTO `options` VALUES ('476', 'require时', '0', '122');
INSERT INTO `options` VALUES ('477', '显示隐藏', '0', '123');
INSERT INTO `options` VALUES ('478', '给元素绑定监听', '0', '123');
INSERT INTO `options` VALUES ('479', '给元素绑定类名', '1', '123');
INSERT INTO `options` VALUES ('480', '给元素绑定样式', '0', '123');
INSERT INTO `options` VALUES ('481', '给元素绑定类名', '0', '124');
INSERT INTO `options` VALUES ('482', '显示隐藏', '0', '124');
INSERT INTO `options` VALUES ('483', '给元素绑定监听', '0', '124');
INSERT INTO `options` VALUES ('484', '给元素绑定样式', '1', '124');
INSERT INTO `options` VALUES ('485', '能进行DOM操作和数据绑定', '1', '125');
INSERT INTO `options` VALUES ('486', '避免代码分散到各处', '0', '125');
INSERT INTO `options` VALUES ('487', '避免全局对象污染', '0', '125');
INSERT INTO `options` VALUES ('488', '能注入到其它组件', '0', '125');
INSERT INTO `options` VALUES ('489', '$provide', '0', '126');
INSERT INTO `options` VALUES ('490', 'factory', '0', '126');
INSERT INTO `options` VALUES ('491', 'service', '0', '126');
INSERT INTO `options` VALUES ('492', '$instance', '1', '126');
INSERT INTO `options` VALUES ('493', '只显示验证通过', '1', '127');
INSERT INTO `options` VALUES ('494', '只显示v', '0', '127');
INSERT INTO `options` VALUES ('495', '无显示', '0', '127');
INSERT INTO `options` VALUES ('496', '验证通过，并显示v', '0', '127');
INSERT INTO `options` VALUES ('497', '极大的丰富了dom操作', '1', '128');
INSERT INTO `options` VALUES ('498', '前端mvc，极大降低前端开发的耦合', '0', '128');
INSERT INTO `options` VALUES ('499', '实现了依赖注入', '0', '128');
INSERT INTO `options` VALUES ('500', '实现了数据双向绑定', '0', '128');
INSERT INTO `options` VALUES ('501', 'h(K)=1', '0', '129');
INSERT INTO `options` VALUES ('502', ' h(K)=K mod N;', '0', '129');
INSERT INTO `options` VALUES ('503', 'h(K)=(K+rand(N)) mod N, rand(N)返回0到N-1的整数', '1', '129');
INSERT INTO `options` VALUES ('504', 'h(K)=K/N', '0', '129');
INSERT INTO `options` VALUES ('505', '插入排序', '0', '130');
INSERT INTO `options` VALUES ('506', '快速排序', '0', '130');
INSERT INTO `options` VALUES ('507', '冒泡排序', '0', '130');
INSERT INTO `options` VALUES ('508', '堆排序', '1', '130');
INSERT INTO `options` VALUES ('509', '在指令格式中，采用扩展操作码设计方案的目的是为了保持指令字长不变而增加寻址空间', '1', '131');
INSERT INTO `options` VALUES ('510', '冯诺依曼体系结构的主要特征是存储程序的工作方式', '0', '131');
INSERT INTO `options` VALUES ('511', '增加流水线段数理论上可以提高CPU频率', '0', '131');
INSERT INTO `options` VALUES ('512', 'CISC计算机比RISC计算机指令多', '0', '131');
INSERT INTO `options` VALUES ('513', 'CPU', '0', '132');
INSERT INTO `options` VALUES ('514', 'Cache', '1', '132');
INSERT INTO `options` VALUES ('515', 'RAM', '0', '132');
INSERT INTO `options` VALUES ('516', 'ROM', '0', '132');
INSERT INTO `options` VALUES ('517', 'DECBA', '0', '133');
INSERT INTO `options` VALUES ('518', 'ABCDE', '0', '133');
INSERT INTO `options` VALUES ('519', 'ECDBA', '1', '133');
INSERT INTO `options` VALUES ('520', 'DCEBA', '0', '133');
INSERT INTO `options` VALUES ('521', '汇编', '0', '134');
INSERT INTO `options` VALUES ('522', '以上全可以', '1', '134');
INSERT INTO `options` VALUES ('523', 'C语言', '0', '134');
INSERT INTO `options` VALUES ('524', ':VB', '0', '134');
INSERT INTO `options` VALUES ('525', 'static成员变量在对象构造时候生成', '0', '135');
INSERT INTO `options` VALUES ('526', 'static成员函数在对象成员函数中无法调用', '0', '135');
INSERT INTO `options` VALUES ('527', 'static成员函数不能访问static成员变量', '0', '135');
INSERT INTO `options` VALUES ('528', ' 虚成员函数不可能是static成员函数', '1', '135');
INSERT INTO `options` VALUES ('529', '从运行变为阻塞', '1', '136');
INSERT INTO `options` VALUES ('530', '从阻塞变为就绪', '0', '136');
INSERT INTO `options` VALUES ('531', '从运行变为就绪', '0', '136');
INSERT INTO `options` VALUES ('532', '从就绪变为运行', '0', '136');
INSERT INTO `options` VALUES ('533', 'O(n) ', '1', '137');
INSERT INTO `options` VALUES ('534', 'O(N*N)', '0', '137');
INSERT INTO `options` VALUES ('535', 'O(n!)', '0', '137');
INSERT INTO `options` VALUES ('536', 'O(1) ', '0', '137');
INSERT INTO `options` VALUES ('537', '18', '1', '138');
INSERT INTO `options` VALUES ('538', '21', '0', '138');
INSERT INTO `options` VALUES ('539', '不可能', '0', '138');
INSERT INTO `options` VALUES ('540', '24', '0', '138');
INSERT INTO `options` VALUES ('541', 'n-1', '0', '139');
INSERT INTO `options` VALUES ('542', 'n+边数', '0', '139');
INSERT INTO `options` VALUES ('543', 'n', '1', '139');
INSERT INTO `options` VALUES ('544', 'n+1', '0', '139');
INSERT INTO `options` VALUES ('545', '4', '0', '140');
INSERT INTO `options` VALUES ('546', '0', '0', '140');
INSERT INTO `options` VALUES ('547', '1', '1', '140');
INSERT INTO `options` VALUES ('548', '2', '0', '140');
INSERT INTO `options` VALUES ('549', 'O(1),O(n)', '1', '141');
INSERT INTO `options` VALUES ('550', 'O(n),O(1) ', '0', '141');
INSERT INTO `options` VALUES ('551', 'O(n),O(n)', '0', '141');
INSERT INTO `options` VALUES ('552', 'O(n),O(n)', '0', '141');
INSERT INTO `options` VALUES ('553', '11,16', '0', '142');
INSERT INTO `options` VALUES ('554', ' 16,16 ', '0', '142');
INSERT INTO `options` VALUES ('555', '13,12', '0', '142');
INSERT INTO `options` VALUES ('556', '16,12', '1', '142');
INSERT INTO `options` VALUES ('557', '颜色不全相同', '0', '143');
INSERT INTO `options` VALUES ('558', '颜色全相同', '0', '143');
INSERT INTO `options` VALUES ('559', '颜色无红色', '0', '143');
INSERT INTO `options` VALUES ('560', '颜色全不相同', '1', '143');
INSERT INTO `options` VALUES ('561', 'n张牌的任何两个不同排列出现的概率相等', '1', '144');
INSERT INTO `options` VALUES ('562', '每张牌出现在n个位置上的概率独立', '0', '144');
INSERT INTO `options` VALUES ('563', ' 任何连续位置上的两张牌的内容独立', '0', '144');
INSERT INTO `options` VALUES ('564', ' 每张牌出现在n个位置上的概率相等', '0', '144');
INSERT INTO `options` VALUES ('565', '10', '0', '145');
INSERT INTO `options` VALUES ('566', '15', '0', '145');
INSERT INTO `options` VALUES ('567', '11', '0', '145');
INSERT INTO `options` VALUES ('568', '14', '1', '145');
INSERT INTO `options` VALUES ('569', '(nlogn)', '0', '146');
INSERT INTO `options` VALUES ('570', 'O(logn) ', '0', '146');
INSERT INTO `options` VALUES ('571', 'O(d)', '1', '146');
INSERT INTO `options` VALUES ('572', ' O(n) ', '0', '146');
INSERT INTO `options` VALUES ('573', 'r1=0,r2=1', '1', '147');
INSERT INTO `options` VALUES ('574', 'r1=1,r2=0', '1', '147');
INSERT INTO `options` VALUES ('575', 'r1=0,r2=0', '0', '147');
INSERT INTO `options` VALUES ('576', 'r1=1,r2=1', '1', '147');
INSERT INTO `options` VALUES ('577', 'Load:2.5,1.3,1.1表示系统的负载压力在逐渐变小', '0', '148');
INSERT INTO `options` VALUES ('578', '通过TOP命令查看', '1', '148');
INSERT INTO `options` VALUES ('579', ' 通过uptime查看', '1', '148');
INSERT INTO `options` VALUES ('580', '通过就绪和运行的进程数来反映', '1', '148');
INSERT INTO `options` VALUES ('581', '冒泡排序平均时间复杂度O(n^2),最坏O(n^2)', '0', '149');
INSERT INTO `options` VALUES ('582', '快速排序的平均时间复杂度O(nlogn),最坏O(N^2)', '0', '149');
INSERT INTO `options` VALUES ('583', '归并排序的平均时间复杂度O(nlogn),最坏O(n^2)', '1', '149');
INSERT INTO `options` VALUES ('584', '堆排序平均时间复杂度O(nlogn)，最坏O(nlogn)', '0', '149');
INSERT INTO `options` VALUES ('585', 'rand_49', '1', '150');
INSERT INTO `options` VALUES ('586', 'rand_23', '1', '150');
INSERT INTO `options` VALUES ('587', 'rand_3 ', '1', '150');
INSERT INTO `options` VALUES ('588', 'rand_21', '1', '150');
INSERT INTO `options` VALUES ('589', '有序表', '0', '151');
INSERT INTO `options` VALUES ('590', '线性表', '0', '151');
INSERT INTO `options` VALUES ('591', '队列', '0', '151');
INSERT INTO `options` VALUES ('592', '栈', '1', '151');
INSERT INTO `options` VALUES ('593', '取指令和执行指令的时间', '1', '152');
INSERT INTO `options` VALUES ('594', '执行指令和存储操作结果的时间', '0', '152');
INSERT INTO `options` VALUES ('595', '取操作数和执行指令的时间', '0', '152');
INSERT INTO `options` VALUES ('596', '取指令和取操作数的时间', '0', '152');
INSERT INTO `options` VALUES ('597', '通过对象调用一虚函数', '0', '153');
INSERT INTO `options` VALUES ('598', '通过指针或应用调用一静态函数', '0', '153');
INSERT INTO `options` VALUES ('599', '通过指针或引用调用一虚函数', '1', '153');
INSERT INTO `options` VALUES ('600', '通过对象调用静态函数', '0', '153');
INSERT INTO `options` VALUES ('601', '版本管理', '1', '154');
INSERT INTO `options` VALUES ('602', '需求管理', '0', '154');
INSERT INTO `options` VALUES ('603', '变更管理', '0', '154');
INSERT INTO `options` VALUES ('604', '测试管理', '0', '154');
INSERT INTO `options` VALUES ('605', '0', '0', '155');
INSERT INTO `options` VALUES ('606', '400', '0', '155');
INSERT INTO `options` VALUES ('607', '200', '1', '155');
INSERT INTO `options` VALUES ('608', '100', '0', '155');
INSERT INTO `options` VALUES ('609', 'p^.link:=q;\n q^.link:=p^.link', '0', '156');
INSERT INTO `options` VALUES ('610', 'p^.link:=q^.link; q:=p^.link', '0', '156');
INSERT INTO `options` VALUES ('611', 'q:=p^.link;\n p^.link:=q^.link', '0', '156');
INSERT INTO `options` VALUES ('612', 'q^.link:=p^.link; \np^.link:=q', '1', '156');
INSERT INTO `options` VALUES ('613', '数组X的长度大于数组Y的长度', '0', '157');
INSERT INTO `options` VALUES ('614', '数组X和数组Y长度相同', '1', '157');
INSERT INTO `options` VALUES ('615', '数组X和数组Y等价', '0', '157');
INSERT INTO `options` VALUES ('616', '数组X的长度小于数组Y的长度', '0', '157');
INSERT INTO `options` VALUES ('617', 'IE7', '0', '158');
INSERT INTO `options` VALUES ('618', 'Firefox 3.1', '1', '158');
INSERT INTO `options` VALUES ('619', 'Safari', '0', '158');
INSERT INTO `options` VALUES ('620', 'Opera 9.5', '0', '158');
INSERT INTO `options` VALUES ('621', 'hello189', '1', '159');
INSERT INTO `options` VALUES ('622', 'hello27', '0', '159');
INSERT INTO `options` VALUES ('623', ' hello30', '0', '159');
INSERT INTO `options` VALUES ('624', ' hello', '0', '159');
INSERT INTO `options` VALUES ('625', '+color:red;', '0', '160');
INSERT INTO `options` VALUES ('626', '@color:red', '1', '160');
INSERT INTO `options` VALUES ('627', '_color:red; ', '0', '160');
INSERT INTO `options` VALUES ('628', ' *color:red;', '0', '160');
INSERT INTO `options` VALUES ('629', 'true ', '0', '161');
INSERT INTO `options` VALUES ('630', 'undefined', '0', '161');
INSERT INTO `options` VALUES ('631', 'null  ', '0', '161');
INSERT INTO `options` VALUES ('632', '0', '1', '161');
INSERT INTO `options` VALUES ('633', 'grep -E #$ try_grep', '0', '162');
INSERT INTO `options` VALUES ('634', 'grep -E ^$ try_grep', '0', '162');
INSERT INTO `options` VALUES ('635', 'grep -E #a try_grep', '0', '162');
INSERT INTO `options` VALUES ('636', 'grep -E ^a try_grep', '1', '162');
INSERT INTO `options` VALUES ('637', 'free', '0', '163');
INSERT INTO `options` VALUES ('638', 'df', '1', '163');
INSERT INTO `options` VALUES ('639', 'fd', '0', '163');
INSERT INTO `options` VALUES ('640', 'du ', '0', '163');
INSERT INTO `options` VALUES ('641', 'POP ', '0', '164');
INSERT INTO `options` VALUES ('642', 'ICMP  ', '1', '164');
INSERT INTO `options` VALUES ('643', 'IMAP ', '0', '164');
INSERT INTO `options` VALUES ('644', 'SNMP', '0', '164');
INSERT INTO `options` VALUES ('645', '二层交换机', '0', '165');
INSERT INTO `options` VALUES ('646', '四层交换机', '0', '165');
INSERT INTO `options` VALUES ('647', ' 路由器 ', '1', '165');
INSERT INTO `options` VALUES ('648', '防火墙', '0', '165');
INSERT INTO `options` VALUES ('649', '读取18XDVD光盘数据的速度为1Gbps', '1', '166');
INSERT INTO `options` VALUES ('650', '前兆以太网的数据读取速度为1Gpbs', '0', '166');
INSERT INTO `options` VALUES ('651', '读取DDR3内存数据的速度为100Gbps', '0', '166');
INSERT INTO `options` VALUES ('652', 'SATA硬盘的速度速度大约为500Mbps/s', '0', '166');
INSERT INTO `options` VALUES ('653', '信号量', '0', '167');
INSERT INTO `options` VALUES ('654', '临界区', '0', '167');
INSERT INTO `options` VALUES ('655', '共享内存', '1', '167');
INSERT INTO `options` VALUES ('656', '命名管道', '0', '167');
INSERT INTO `options` VALUES ('657', '200ms', '0', '168');
INSERT INTO `options` VALUES ('658', '120ms', '0', '168');
INSERT INTO `options` VALUES ('659', '80ms', '1', '168');
INSERT INTO `options` VALUES ('660', '160ms', '0', '168');
INSERT INTO `options` VALUES ('661', '22', '0', '169');
INSERT INTO `options` VALUES ('662', '1', '0', '169');
INSERT INTO `options` VALUES ('663', '12', '0', '169');
INSERT INTO `options` VALUES ('664', '10', '0', '169');
INSERT INTO `options` VALUES ('665', '55', '1', '170');
INSERT INTO `options` VALUES ('666', '0', '0', '170');
INSERT INTO `options` VALUES ('667', '10', '0', '170');
INSERT INTO `options` VALUES ('668', '3628800', '0', '170');
INSERT INTO `options` VALUES ('669', 'auto', '0', '171');
INSERT INTO `options` VALUES ('670', 'extern', '0', '171');
INSERT INTO `options` VALUES ('671', 'register', '0', '171');
INSERT INTO `options` VALUES ('672', 'static', '1', '171');
INSERT INTO `options` VALUES ('673', 'O(N+LOGM)', '1', '172');
INSERT INTO `options` VALUES ('674', 'O(N)', '0', '172');
INSERT INTO `options` VALUES ('675', 'O(M+N)', '0', '172');
INSERT INTO `options` VALUES ('676', 'O(M+LOGN)', '0', '172');
INSERT INTO `options` VALUES ('677', 'O(n^2log(n))', '0', '173');
INSERT INTO `options` VALUES ('678', 'O(n^2) ', '0', '173');
INSERT INTO `options` VALUES ('679', 'O(n) ', '0', '173');
INSERT INTO `options` VALUES ('680', 'O(nlog(n)) ', '0', '173');
INSERT INTO `options` VALUES ('681', '0', '0', '174');
INSERT INTO `options` VALUES ('682', '**', '0', '174');
INSERT INTO `options` VALUES ('683', '0', '0', '174');
INSERT INTO `options` VALUES ('684', '0', '1', '174');
INSERT INTO `options` VALUES ('685', '快速序排', '0', '175');
INSERT INTO `options` VALUES ('686', '直接插入序排', '0', '175');
INSERT INTO `options` VALUES ('687', '冒泡序排', '0', '175');
INSERT INTO `options` VALUES ('688', '堆序排', '1', '175');
INSERT INTO `options` VALUES ('689', '就绪到运行', '1', '176');
INSERT INTO `options` VALUES ('690', '阻塞到运行', '0', '176');
INSERT INTO `options` VALUES ('691', '运行到阻塞', '1', '176');
INSERT INTO `options` VALUES ('692', '运行到就绪', '0', '176');
INSERT INTO `options` VALUES ('693', '420', '1', '177');
INSERT INTO `options` VALUES ('694', '5040', '0', '177');
INSERT INTO `options` VALUES ('695', '840', '0', '177');
INSERT INTO `options` VALUES ('696', '14', '0', '177');
INSERT INTO `options` VALUES ('697', '-100200', '0', '178');
INSERT INTO `options` VALUES ('698', '-100,50', '0', '178');
INSERT INTO `options` VALUES ('699', '100200', '0', '178');
INSERT INTO `options` VALUES ('700', '100,50', '1', '178');
INSERT INTO `options` VALUES ('701', '1000+10i+j', '0', '179');
INSERT INTO `options` VALUES ('702', '1000+10i+5j', '0', '179');
INSERT INTO `options` VALUES ('703', '1000+5i+j', '1', '179');
INSERT INTO `options` VALUES ('704', '1000+i+j', '0', '179');
INSERT INTO `options` VALUES ('705', '链表', '0', '180');
INSERT INTO `options` VALUES ('706', '栈', '0', '180');
INSERT INTO `options` VALUES ('707', '队列', '0', '180');
INSERT INTO `options` VALUES ('708', '关联数组', '1', '180');
INSERT INTO `options` VALUES ('709', '一个线程既不能读也不能写另一个线程的栈', '1', '181');
INSERT INTO `options` VALUES ('710', '一个线程可以读写另一个线程的寄存器', '0', '181');
INSERT INTO `options` VALUES ('711', '一个线程可以改变另一个线程的程序计数器', '0', '181');
INSERT INTO `options` VALUES ('712', '以上都不对', '0', '181');
INSERT INTO `options` VALUES ('713', '以上都不对', '0', '182');
INSERT INTO `options` VALUES ('714', '从两个方向搜索双链表，比从一个方向搜索双链表速度要快', '0', '182');
INSERT INTO `options` VALUES ('715', '从两个方向搜索双链表，比从一个方向搜索双链表速度要慢', '0', '182');
INSERT INTO `options` VALUES ('716', '从两个方向搜索双链表，比从一个方向搜索双链表速度的方差要小', '1', '182');
INSERT INTO `options` VALUES ('717', 'O(nlogn)', '0', '183');
INSERT INTO `options` VALUES ('718', 'O(nk)', '0', '183');
INSERT INTO `options` VALUES ('719', 'O(n)', '1', '183');
INSERT INTO `options` VALUES ('720', 'O(nlogk)', '0', '183');
INSERT INTO `options` VALUES ('721', '以上都不正确', '0', '184');
INSERT INTO `options` VALUES ('722', '60分钟', '0', '184');
INSERT INTO `options` VALUES ('723', '720/11分钟', '1', '184');
INSERT INTO `options` VALUES ('724', '720/13分钟', '0', '184');
INSERT INTO `options` VALUES ('725', 'R中的沙子比S中的小米多', '0', '185');
INSERT INTO `options` VALUES ('726', 'R中的沙子比S中的小米少', '0', '185');
INSERT INTO `options` VALUES ('727', '无法判断', '0', '185');
INSERT INTO `options` VALUES ('728', 'R中的沙子和S中的小米一样多', '1', '185');
INSERT INTO `options` VALUES ('729', 'T100出现一半正面比T100出现一半正面的概率更大', '0', '186');
INSERT INTO `options` VALUES ('730', 'T100正面次数的方差小于T100出现正面次数的方差', '1', '186');
INSERT INTO `options` VALUES ('731', 'T100前3次都是正面的概率比T10前3次都是正面的可能性大', '0', '186');
INSERT INTO `options` VALUES ('732', 'T100出现正面的比例比T100出现正面的比例在（0.45,0.55）区间中的可能性更大', '0', '186');
INSERT INTO `options` VALUES ('733', '该玩家的策略可以保证游戏结束时赢钱数的期望为整数', '0', '187');
INSERT INTO `options` VALUES ('734', '该玩家会有一定的概率在游戏结束时输钱，但输得不多', '0', '187');
INSERT INTO `options` VALUES ('735', '该玩家赢的可能性比输的可能性大', '1', '187');
INSERT INTO `options` VALUES ('736', '该福彩机构长期会赔钱', '0', '187');
INSERT INTO `options` VALUES ('737', '3只', '1', '188');
INSERT INTO `options` VALUES ('738', '16只', '0', '188');
INSERT INTO `options` VALUES ('739', '4只', '0', '188');
INSERT INTO `options` VALUES ('740', '1只', '0', '188');
INSERT INTO `options` VALUES ('741', '线程越多越好', '0', '189');
INSERT INTO `options` VALUES ('742', '8', '0', '189');
INSERT INTO `options` VALUES ('743', '4', '0', '189');
INSERT INTO `options` VALUES ('744', '12', '1', '189');
INSERT INTO `options` VALUES ('745', '该语言可以正常进行双精度浮点运算', '0', '190');
INSERT INTO `options` VALUES ('746', '该语言可以表示任意的32位整数的数字ID', '0', '190');
INSERT INTO `options` VALUES ('747', '该语言无法实现32位整数的按位与，或，异或运算', '0', '190');
INSERT INTO `options` VALUES ('748', '该语言可以用number类型的变量作为数组的下标', '1', '190');
INSERT INTO `options` VALUES ('749', '使用了多线程机制的服务', '0', '191');
INSERT INTO `options` VALUES ('750', '单条线程尺寸太小的数据', '0', '191');
INSERT INTO `options` VALUES ('751', '有着大量访问的服务', '0', '191');
INSERT INTO `options` VALUES ('752', '数据库中每条数据被访问的概率近似相等，且独立', '1', '191');
INSERT INTO `options` VALUES ('753', 'n的二进制表示中0的个数', '0', '192');
INSERT INTO `options` VALUES ('754', '一个均匀的哈希函数', '0', '192');
INSERT INTO `options` VALUES ('755', 'n的二进制表示的倒序值', '0', '192');
INSERT INTO `options` VALUES ('756', 'n的二进制表示中1的个数', '1', '192');
INSERT INTO `options` VALUES ('757', '1到1024', '0', '193');
INSERT INTO `options` VALUES ('758', '0,1025到2047', '1', '193');
INSERT INTO `options` VALUES ('759', '2到2048之间的全部偶数', '0', '193');
INSERT INTO `options` VALUES ('760', '0到1023', '0', '193');
INSERT INTO `options` VALUES ('761', '（2n-1）！/2', '0', '194');
INSERT INTO `options` VALUES ('762', '2^n(n-1)!', '0', '194');
INSERT INTO `options` VALUES ('763', '(2n)!', '0', '194');
INSERT INTO `options` VALUES ('764', '2(n-1)!', '1', '194');
INSERT INTO `options` VALUES ('765', '0', '1', '195');
INSERT INTO `options` VALUES ('766', '各个分钟的概率相等', '0', '195');
INSERT INTO `options` VALUES ('767', '0', '0', '195');
INSERT INTO `options` VALUES ('768', '0', '0', '195');
INSERT INTO `options` VALUES ('769', '男女会比较均衡', '0', '196');
INSERT INTO `options` VALUES ('770', '会产生较多的剩女', '1', '196');
INSERT INTO `options` VALUES ('771', '信息不足，无法判断', '0', '196');
INSERT INTO `options` VALUES ('772', '会产生较多的剩男', '0', '196');
INSERT INTO `options` VALUES ('773', '一个线程写，多个线程读一个共同的数据结构，写操作是原子操作，读操作不是原子操作', '1', '197');
INSERT INTO `options` VALUES ('774', '多线程写一个共同的数据结构，且写操作不是原子操作', '1', '197');
INSERT INTO `options` VALUES ('775', '多线程写一个共同的数据结构，且写操作是原子操作', '0', '197');
INSERT INTO `options` VALUES ('776', '多线程读一个共同的数据结构，且读操作不是一个原子操作', '0', '197');
INSERT INTO `options` VALUES ('777', '所有的结点均无左孩子', '1', '198');
INSERT INTO `options` VALUES ('778', '是一颗二叉搜索树', '1', '198');
INSERT INTO `options` VALUES ('779', '所有的节点均无右孩子', '1', '198');
INSERT INTO `options` VALUES ('780', '只有一个叶子结点', '1', '198');
INSERT INTO `options` VALUES ('781', '0', '1', '199');
INSERT INTO `options` VALUES ('782', '0', '0', '199');
INSERT INTO `options` VALUES ('783', '10的30次方', '1', '199');
INSERT INTO `options` VALUES ('784', '根号2', '1', '199');
INSERT INTO `options` VALUES ('785', '一个具有1025个节点的二叉树，其高度范围在11~1025之间', '1', '200');
INSERT INTO `options` VALUES ('786', '对于N个节点的二叉树，其高度为nlog2n', '0', '200');
INSERT INTO `options` VALUES ('787', '二叉树中至少有一个节点的度为2', '0', '200');
INSERT INTO `options` VALUES ('788', '二叉树的先序遍历是EFHIGJK，中序遍历为HFIEJKG，该二叉树的右子树的根为G', '1', '200');
INSERT INTO `options` VALUES ('789', 'O(n*n)', '0', '201');
INSERT INTO `options` VALUES ('790', '  O(n)', '0', '201');
INSERT INTO `options` VALUES ('791', ' O(n*log(n))', '0', '201');
INSERT INTO `options` VALUES ('792', ' 以上都不对', '1', '201');
INSERT INTO `options` VALUES ('793', '快速排序', '0', '202');
INSERT INTO `options` VALUES ('794', '直接排序', '0', '202');
INSERT INTO `options` VALUES ('795', '二分法插入', '1', '202');
INSERT INTO `options` VALUES ('796', '归并排序', '1', '202');
INSERT INTO `options` VALUES ('797', ' 使用哈夫曼编码后，a b c d e 这5个字符对应的编码值是唯一确定的', '1', '203');
INSERT INTO `options` VALUES ('798', '使用哈夫曼编码后，使用编码值来存储这段文本将花费最少的存储空间', '0', '203');
INSERT INTO `options` VALUES ('799', '使用哈夫曼编码后，a b c d e 这5个字符对应的编码值可以有多套，但每个字符的编码位数是确定的', '0', '203');
INSERT INTO `options` VALUES ('800', ' b这个字符的编码位数最短，d这个字符的哈夫曼编码位数应该最长', '0', '203');
INSERT INTO `options` VALUES ('801', '1', '0', '204');
INSERT INTO `options` VALUES ('802', '4', '0', '204');
INSERT INTO `options` VALUES ('803', '3', '0', '204');
INSERT INTO `options` VALUES ('804', '2', '1', '204');
INSERT INTO `options` VALUES ('805', '目标代码生成阶段', '0', '205');
INSERT INTO `options` VALUES ('806', ' 词法分析', '0', '205');
INSERT INTO `options` VALUES ('807', '语义分析阶段', '1', '205');
INSERT INTO `options` VALUES ('808', '语法分析', '0', '205');
INSERT INTO `options` VALUES ('809', '3', '1', '206');
INSERT INTO `options` VALUES ('810', ' abc ', '0', '206');
INSERT INTO `options` VALUES ('811', '123', '0', '206');
INSERT INTO `options` VALUES ('812', '456', '0', '206');
INSERT INTO `options` VALUES ('813', '8:4', '0', '207');
INSERT INTO `options` VALUES ('814', '8:0', '0', '207');
INSERT INTO `options` VALUES ('815', '4:10', '0', '207');
INSERT INTO `options` VALUES ('816', '4:4', '0', '207');
INSERT INTO `options` VALUES ('817', 'hello ', '0', '208');
INSERT INTO `options` VALUES ('818', ' Hello0world', '0', '208');
INSERT INTO `options` VALUES ('819', '不确定', '1', '208');
INSERT INTO `options` VALUES ('820', '无输出', '0', '208');
INSERT INTO `options` VALUES ('821', '数字控制', '0', '209');
INSERT INTO `options` VALUES ('822', '存储程序和程序控制 ', '1', '209');
INSERT INTO `options` VALUES ('823', '信息存储', '0', '209');
INSERT INTO `options` VALUES ('824', '存储智能', '0', '209');
INSERT INTO `options` VALUES ('825', 'Visitor ', '0', '210');
INSERT INTO `options` VALUES ('826', ' Observer ', '1', '210');
INSERT INTO `options` VALUES ('827', ' Adapter', '0', '210');
INSERT INTO `options` VALUES ('828', 'Interpreter', '0', '210');
INSERT INTO `options` VALUES ('829', 'P1 和 p2都存在栈中', '0', '211');
INSERT INTO `options` VALUES ('830', '“123456”这6个字符存储在栈中', '1', '211');
INSERT INTO `options` VALUES ('831', 'P2指向的10个字节内存在栈中', '0', '211');
INSERT INTO `options` VALUES ('832', '堆和栈在内存中的生长方向是相反的', '0', '211');
INSERT INTO `options` VALUES ('833', '3\\4', '0', '212');
INSERT INTO `options` VALUES ('834', '3\\8', '0', '212');
INSERT INTO `options` VALUES ('835', '9\\16', '1', '212');
INSERT INTO `options` VALUES ('836', '3\\16', '0', '212');
INSERT INTO `options` VALUES ('837', 'O(log(2n)', '0', '213');
INSERT INTO `options` VALUES ('838', 'O(n)', '0', '213');
INSERT INTO `options` VALUES ('839', 'O(1)', '1', '213');
INSERT INTO `options` VALUES ('840', 'O(n^2)', '0', '213');
INSERT INTO `options` VALUES ('841', '编译器对高级语言程序的处理过程划分成词法分析、语法分析、语义分析，中间代码生成、代码优化、目标代码生成几个阶段', '0', '214');
INSERT INTO `options` VALUES ('842', '解释器不产生目标程序，它直接执行源程序或者源程序的内部形式', '0', '214');
INSERT INTO `options` VALUES ('843', '解释器参与运行控制、程序执行的速度快', '1', '214');
INSERT INTO `options` VALUES ('844', '解释程序和编译程序的主要区别在于是否产生目标程序', '0', '214');
INSERT INTO `options` VALUES ('845', '2', '0', '215');
INSERT INTO `options` VALUES ('846', '5', '0', '215');
INSERT INTO `options` VALUES ('847', '4', '1', '215');
INSERT INTO `options` VALUES ('848', '3', '0', '215');
INSERT INTO `options` VALUES ('849', 'UDP', '1', '216');
INSERT INTO `options` VALUES ('850', 'IP ', '0', '216');
INSERT INTO `options` VALUES ('851', 'TCP ', '1', '216');
INSERT INTO `options` VALUES ('852', 'ICMP协议', '0', '216');
INSERT INTO `options` VALUES ('853', ' Select A.tname ,A.depart from teacher A whereA.tno = course.tno', '0', '217');
INSERT INTO `options` VALUES ('854', ' Select A.tname ,A.depart from teacher A joincourse B on B.tno = .A.tno', '0', '217');
INSERT INTO `options` VALUES ('855', 'Select A.tname ,A.depart from teacher where exsist (select * from course B where B.tno = A.tno)', '0', '217');
INSERT INTO `options` VALUES ('856', 'Select A.tname ,A.depart from teacher wheretno in (select tno from course)', '0', '217');
INSERT INTO `options` VALUES ('857', '169', '0', '218');
INSERT INTO `options` VALUES ('858', '236', '0', '218');
INSERT INTO `options` VALUES ('859', '208', '0', '218');
INSERT INTO `options` VALUES ('860', '640', '1', '218');
INSERT INTO `options` VALUES ('861', '255.255.255.248 ', '0', '219');
INSERT INTO `options` VALUES ('862', '255.255.255.192', '1', '219');
INSERT INTO `options` VALUES ('863', '255.255.255.198 ', '0', '219');
INSERT INTO `options` VALUES ('864', '255.255.255.224', '0', '219');
INSERT INTO `options` VALUES ('865', '磁盘的平均存取时间指的是磁盘的寻道时间加上磁头在某一磁道等待记录扇区的时间', '0', '220');
INSERT INTO `options` VALUES ('866', '计算机的控制器是由多种部件组成，其中包括，指令寄存器、程序计数器和算数逻辑单元', '0', '220');
INSERT INTO `options` VALUES ('867', '系统总线可以分为数据总线、地址总线和控制总线三类', '0', '220');
INSERT INTO `options` VALUES ('868', '一台计算机的字长是32位，表明该机器能处理的数值最多为4个字节', '0', '220');
INSERT INTO `options` VALUES ('869', '3NF', '0', '221');
INSERT INTO `options` VALUES ('870', '2NF', '1', '221');
INSERT INTO `options` VALUES ('871', '1NF', '0', '221');
INSERT INTO `options` VALUES ('872', 'BCNF', '0', '221');
INSERT INTO `options` VALUES ('873', '21', '1', '222');
INSERT INTO `options` VALUES ('874', '3', '0', '222');
INSERT INTO `options` VALUES ('875', '12', '0', '222');
INSERT INTO `options` VALUES ('876', '2', '0', '222');
INSERT INTO `options` VALUES ('877', '270', '0', '223');
INSERT INTO `options` VALUES ('878', '541', '0', '223');
INSERT INTO `options` VALUES ('879', '1024', '1', '223');
INSERT INTO `options` VALUES ('880', '128', '0', '223');
INSERT INTO `options` VALUES ('881', '用户访问数据库资源', '1', '224');
INSERT INTO `options` VALUES ('882', '分配内存', '0', '224');
INSERT INTO `options` VALUES ('883', '输出/输入 ', '0', '224');
INSERT INTO `options` VALUES ('884', ' 资源回收 ', '0', '224');
INSERT INTO `options` VALUES ('885', 'L2P', '0', '225');
INSERT INTO `options` VALUES ('886', ' IPSec ', '0', '225');
INSERT INTO `options` VALUES ('887', 'PPTP ', '1', '225');
INSERT INTO `options` VALUES ('888', ' CHAP', '0', '225');
INSERT INTO `options` VALUES ('889', '接收方的公钥', '0', '226');
INSERT INTO `options` VALUES ('890', '发送方的私钥', '0', '226');
INSERT INTO `options` VALUES ('891', '发送方的公钥', '0', '226');
INSERT INTO `options` VALUES ('892', '接收方的私钥', '0', '226');
INSERT INTO `options` VALUES ('893', '它把任意长度的信息转换成固定的长度输出', '0', '227');
INSERT INTO `options` VALUES ('894', '不同的信息很难产生一样的哈希值', '0', '227');
INSERT INTO `options` VALUES ('895', '它把固定的信息转换成任意长度信息输出', '1', '227');
INSERT INTO `options` VALUES ('896', '根据特定的哈希值，它可以找到对应的原信息值', '0', '227');
INSERT INTO `options` VALUES ('897', 'alert （2 == “2”）', '0', '228');
INSERT INTO `options` VALUES ('898', 'alert（null == undefined）', '0', '228');
INSERT INTO `options` VALUES ('899', 'alert（3 == true）', '1', '228');
INSERT INTO `options` VALUES ('900', 'alert （isNaN（true））', '1', '228');
INSERT INTO `options` VALUES ('901', 'nohup', '1', '229');
INSERT INTO `options` VALUES ('902', 'sed', '0', '229');
INSERT INTO `options` VALUES ('903', 'awk ', '0', '229');
INSERT INTO `options` VALUES ('904', 'erontab', '0', '229');
INSERT INTO `options` VALUES ('905', '3', '1', '230');
INSERT INTO `options` VALUES ('906', '4', '0', '230');
INSERT INTO `options` VALUES ('907', '5', '0', '230');
INSERT INTO `options` VALUES ('908', '2', '0', '230');
INSERT INTO `options` VALUES ('909', ' m+1 ', '0', '231');
INSERT INTO `options` VALUES ('910', '2m+1', '0', '231');
INSERT INTO `options` VALUES ('911', 'n+1', '0', '231');
INSERT INTO `options` VALUES ('912', ' m  ', '1', '231');
INSERT INTO `options` VALUES ('913', '3', '0', '232');
INSERT INTO `options` VALUES ('914', '6', '0', '232');
INSERT INTO `options` VALUES ('915', '4', '1', '232');
INSERT INTO `options` VALUES ('916', '5', '0', '232');
INSERT INTO `options` VALUES ('917', '顺序结构、链式结构', '0', '233');
INSERT INTO `options` VALUES ('918', '静态结构、动态结构', '0', '233');
INSERT INTO `options` VALUES ('919', '初等结构、构造型结构', '0', '233');
INSERT INTO `options` VALUES ('920', '线性结构、非线性结构', '1', '233');
INSERT INTO `options` VALUES ('921', '21', '0', '234');
INSERT INTO `options` VALUES ('922', '19', '1', '234');
INSERT INTO `options` VALUES ('923', '16', '0', '234');
INSERT INTO `options` VALUES ('924', '17', '0', '234');
INSERT INTO `options` VALUES ('925', '146', '0', '235');
INSERT INTO `options` VALUES ('926', '128', '0', '235');
INSERT INTO `options` VALUES ('927', '156', '0', '235');
INSERT INTO `options` VALUES ('928', '145', '1', '235');
INSERT INTO `options` VALUES ('929', '30', '0', '236');
INSERT INTO `options` VALUES ('930', '29', '0', '236');
INSERT INTO `options` VALUES ('931', '28', '1', '236');
INSERT INTO `options` VALUES ('932', '32', '0', '236');
INSERT INTO `options` VALUES ('933', '8', '0', '237');
INSERT INTO `options` VALUES ('934', '7', '0', '237');
INSERT INTO `options` VALUES ('935', '28', '0', '237');
INSERT INTO `options` VALUES ('936', '26', '1', '237');
INSERT INTO `options` VALUES ('937', '29、36、15、46、97、76、65', '0', '238');
INSERT INTO `options` VALUES ('938', '15、29、36、46、97、76、65', '0', '238');
INSERT INTO `options` VALUES ('939', '29、36、15、46、76、97、65', '1', '238');
INSERT INTO `options` VALUES ('940', '29、15、36、46、76、97、65', '0', '238');
INSERT INTO `options` VALUES ('941', '如要更新文件中的记录，必须将整个文件复制', '0', '239');
INSERT INTO `options` VALUES ('942', ' 存取第i个记录，必须先搜索在它之前的i-1个记录', '1', '239');
INSERT INTO `options` VALUES ('943', '插入新的记录时只能加在文件末尾', '0', '239');
INSERT INTO `options` VALUES ('944', '顺序文件中物理记录的顺序和逻辑记录的顺序不一致', '0', '239');
INSERT INTO `options` VALUES ('945', '散列', '0', '240');
INSERT INTO `options` VALUES ('946', '索引', '0', '240');
INSERT INTO `options` VALUES ('947', '链式', '1', '240');
INSERT INTO `options` VALUES ('948', '顺序 ', '0', '240');
INSERT INTO `options` VALUES ('949', '堆排序 ', '0', '241');
INSERT INTO `options` VALUES ('950', '归并排序 ', '1', '241');
INSERT INTO `options` VALUES ('951', '希尔排序', '0', '241');
INSERT INTO `options` VALUES ('952', '选择排序', '0', '241');
INSERT INTO `options` VALUES ('953', ' 堆排序', '0', '242');
INSERT INTO `options` VALUES ('954', '希尔排序', '0', '242');
INSERT INTO `options` VALUES ('955', '选择排序 ', '1', '242');
INSERT INTO `options` VALUES ('956', ' 归并排序', '1', '242');
INSERT INTO `options` VALUES ('957', '堆', '0', '243');
INSERT INTO `options` VALUES ('958', '栈 ', '0', '243');
INSERT INTO `options` VALUES ('959', '字符串', '1', '243');
INSERT INTO `options` VALUES ('960', '有向图', '0', '243');
INSERT INTO `options` VALUES ('961', '循环链表', '1', '244');
INSERT INTO `options` VALUES ('962', '双向链表', '0', '244');
INSERT INTO `options` VALUES ('963', '线性链表', '0', '244');
INSERT INTO `options` VALUES ('964', '线性单链表', '0', '244');
INSERT INTO `options` VALUES ('965', 'top--', '0', '245');
INSERT INTO `options` VALUES ('966', 'top++', '1', '245');
INSERT INTO `options` VALUES ('967', '不变', '0', '245');
INSERT INTO `options` VALUES ('968', '(top++)++', '0', '245');
INSERT INTO `options` VALUES ('969', ' C，A，B ', '0', '246');
INSERT INTO `options` VALUES ('970', 'C、B、A', '0', '246');
INSERT INTO `options` VALUES ('971', 'B，A，C  ', '0', '246');
INSERT INTO `options` VALUES ('972', 'A，C，B', '0', '246');
INSERT INTO `options` VALUES ('973', '三元组', '0', '247');
INSERT INTO `options` VALUES ('974', '队列', '1', '247');
INSERT INTO `options` VALUES ('975', '栈', '0', '247');
INSERT INTO `options` VALUES ('976', '二叉树 ', '0', '247');
INSERT INTO `options` VALUES ('977', '代理服务器技术', '0', '248');
INSERT INTO `options` VALUES ('978', 'NAT技术', '1', '248');
INSERT INTO `options` VALUES ('979', '包过滤技术', '0', '248');
INSERT INTO `options` VALUES ('980', '应用级网关技术', '0', '248');
INSERT INTO `options` VALUES ('981', '逻辑覆盖法', '0', '249');
INSERT INTO `options` VALUES ('982', '边界值法', '1', '249');
INSERT INTO `options` VALUES ('983', '正交试验设计法', '0', '249');
INSERT INTO `options` VALUES ('984', '基本路径法', '0', '249');
INSERT INTO `options` VALUES ('985', 'CFHGEDBA', '1', '250');
INSERT INTO `options` VALUES ('986', 'CDFEGHBA', '0', '250');
INSERT INTO `options` VALUES ('987', 'CFHGEBDA', '0', '250');
INSERT INTO `options` VALUES ('988', 'FGHCDEBA', '0', '250');
INSERT INTO `options` VALUES ('989', '有序链表 ', '0', '251');
INSERT INTO `options` VALUES ('990', 'Hash表', '1', '251');
INSERT INTO `options` VALUES ('991', '有序数组', '0', '251');
INSERT INTO `options` VALUES ('992', 'AVL树', '1', '251');
INSERT INTO `options` VALUES ('993', '堆排序', '1', '252');
INSERT INTO `options` VALUES ('994', '归并排序', '1', '252');
INSERT INTO `options` VALUES ('995', '快速排序     ', '0', '252');
INSERT INTO `options` VALUES ('996', '冒泡排序', '0', '252');
INSERT INTO `options` VALUES ('997', '3 8 2 5 1 6 7 4', '0', '253');
INSERT INTO `options` VALUES ('998', '8 3 2 5 1 6 4 7', '1', '253');
INSERT INTO `options` VALUES ('999', '3 2 8 5 1 4 6 7', '0', '253');
INSERT INTO `options` VALUES ('1000', '8 2 3 5 1 4 7 6', '0', '253');
INSERT INTO `options` VALUES ('1001', '5', '1', '254');
INSERT INTO `options` VALUES ('1002', '8', '0', '254');
INSERT INTO `options` VALUES ('1003', '10', '0', '254');
INSERT INTO `options` VALUES ('1004', '7', '0', '254');
INSERT INTO `options` VALUES ('1005', '26.1%', '0', '255');
INSERT INTO `options` VALUES ('1006', '28.6%', '0', '255');
INSERT INTO `options` VALUES ('1007', '32.5%', '1', '255');
INSERT INTO `options` VALUES ('1008', '37.5%', '0', '255');
INSERT INTO `options` VALUES ('1009', '信号量', '1', '256');
INSERT INTO `options` VALUES ('1010', '消息队列', '1', '256');
INSERT INTO `options` VALUES ('1011', 'Socket', '0', '256');
INSERT INTO `options` VALUES ('1012', '共享内存', '1', '256');
INSERT INTO `options` VALUES ('1013', '代码区', '0', '257');
INSERT INTO `options` VALUES ('1014', '栈区', '0', '257');
INSERT INTO `options` VALUES ('1015', '全局区', '1', '257');
INSERT INTO `options` VALUES ('1016', '堆区', '0', '257');
INSERT INTO `options` VALUES ('1017', 'B', '1', '258');
INSERT INTO `options` VALUES ('1018', 'A', '0', '258');
INSERT INTO `options` VALUES ('1019', 'D', '0', '258');
INSERT INTO `options` VALUES ('1020', 'C', '0', '258');
INSERT INTO `options` VALUES ('1021', '0型语言', '0', '259');
INSERT INTO `options` VALUES ('1022', '3型语言', '0', '259');
INSERT INTO `options` VALUES ('1023', '2型语言', '1', '259');
INSERT INTO `options` VALUES ('1024', '1型语言 ', '0', '259');
INSERT INTO `options` VALUES ('1025', '19', '1', '260');
INSERT INTO `options` VALUES ('1026', '16', '0', '260');
INSERT INTO `options` VALUES ('1027', '35', '0', '260');
INSERT INTO `options` VALUES ('1028', '23', '0', '260');
INSERT INTO `options` VALUES ('1029', ' 服务器繁忙', '0', '261');
INSERT INTO `options` VALUES ('1030', '禁止访问', '1', '261');
INSERT INTO `options` VALUES ('1031', '找不到该页面', '0', '261');
INSERT INTO `options` VALUES ('1032', '内部服务器访问', '0', '261');
INSERT INTO `options` VALUES ('1033', '7', '0', '262');
INSERT INTO `options` VALUES ('1034', '6', '1', '262');
INSERT INTO `options` VALUES ('1035', '9', '0', '262');
INSERT INTO `options` VALUES ('1036', '8', '0', '262');
INSERT INTO `options` VALUES ('1037', ' a(000)  b(001)  h(01)i(10)  o(00)', '0', '263');
INSERT INTO `options` VALUES ('1038', 'a(0000) b(0001)  h(001) o(000) i(1)', '0', '263');
INSERT INTO `options` VALUES ('1039', 'a(0000) b(0001)  h(001)o(01) i(1)', '0', '263');
INSERT INTO `options` VALUES ('1040', 'a(000) b(001) h(01) i(10) o(11)', '1', '263');
INSERT INTO `options` VALUES ('1041', ' Transport layer', '1', '264');
INSERT INTO `options` VALUES ('1042', 'Presentation layer', '0', '264');
INSERT INTO `options` VALUES ('1043', ' Network layer', '1', '264');
INSERT INTO `options` VALUES ('1044', 'Application layer', '0', '264');
INSERT INTO `options` VALUES ('1045', 'DECBA', '0', '265');
INSERT INTO `options` VALUES ('1046', 'EDCBA  ', '0', '265');
INSERT INTO `options` VALUES ('1047', 'DCEAB ', '1', '265');
INSERT INTO `options` VALUES ('1048', 'ABCDE', '0', '265');
INSERT INTO `options` VALUES ('1049', 'stack   ', '0', '266');
INSERT INTO `options` VALUES ('1050', 'register set ', '0', '266');
INSERT INTO `options` VALUES ('1051', 'data section', '1', '266');
INSERT INTO `options` VALUES ('1052', 'file fd', '1', '266');
INSERT INTO `options` VALUES ('1053', '231', '0', '267');
INSERT INTO `options` VALUES ('1054', '123', '0', '267');
INSERT INTO `options` VALUES ('1055', '321', '0', '267');
INSERT INTO `options` VALUES ('1056', '213', '1', '267');
INSERT INTO `options` VALUES ('1057', '访问局部性（locality of reference）满足进程要求', '1', '268');
INSERT INTO `options` VALUES ('1058', ' 进程倾向于占用I/O', '1', '268');
INSERT INTO `options` VALUES ('1059', '进程倾向于占用CPU', '0', '268');
INSERT INTO `options` VALUES ('1060', '使用基于最短剩余时间（shortest remaining time）的调度机制', '0', '268');
INSERT INTO `options` VALUES ('1061', '使用了局部变量', '0', '269');
INSERT INTO `options` VALUES ('1062', '使用了全局变量或者使用了一个或多个参数', '0', '269');
INSERT INTO `options` VALUES ('1063', '没有循环调用', '0', '269');
INSERT INTO `options` VALUES ('1064', '有一个分支不调用自身', '1', '269');
INSERT INTO `options` VALUES ('1065', '分析单词是怎样构成的', '0', '270');
INSERT INTO `options` VALUES ('1066', '分析语句和说明是如何构成程序的', '0', '270');
INSERT INTO `options` VALUES ('1067', '分析单词串是如何构成语言和说明的', '1', '270');
INSERT INTO `options` VALUES ('1068', '分析程序的结构', '0', '270');
INSERT INTO `options` VALUES ('1069', '有限等待', '1', '271');
INSERT INTO `options` VALUES ('1070', '忙则等待 ', '1', '271');
INSERT INTO `options` VALUES ('1071', '空闲让进', '1', '271');
INSERT INTO `options` VALUES ('1072', '让权等待', '1', '271');
INSERT INTO `options` VALUES ('1073', '获得spinlock未果', '1', '272');
INSERT INTO `options` VALUES ('1074', '在时间片轮转的情况下，如果时间片到了', '0', '272');
INSERT INTO `options` VALUES ('1075', 'CPU调度给优先级更高的线程', '0', '272');
INSERT INTO `options` VALUES ('1076', '阻塞的线程获得资源或者信号', '0', '272');
INSERT INTO `options` VALUES ('1077', '观察者模式', '0', '273');
INSERT INTO `options` VALUES ('1078', '状态模式', '0', '273');
INSERT INTO `options` VALUES ('1079', '代理模式', '1', '273');
INSERT INTO `options` VALUES ('1080', '装饰模式', '1', '273');
INSERT INTO `options` VALUES ('1081', ' b 的十六进制表示是：0xffffffe0', '1', '274');
INSERT INTO `options` VALUES ('1082', 'a == c 为真 ', '0', '274');
INSERT INTO `options` VALUES ('1083', ' 上面都不对', '0', '274');
INSERT INTO `options` VALUES ('1084', ' a>0 && c>0 为真', '0', '274');
INSERT INTO `options` VALUES ('1085', 'a=a+1;', '0', '275');
INSERT INTO `options` VALUES ('1086', 'g(f());', '0', '275');
INSERT INTO `options` VALUES ('1087', 'if(!!i){f();}', '1', '275');
INSERT INTO `options` VALUES ('1088', 'g(\"abc\");', '0', '275');
INSERT INTO `options` VALUES ('1089', ' (int*)&a+1', '0', '276');
INSERT INTO `options` VALUES ('1090', '(int*)((char*)&a+sizeof(int))', '0', '276');
INSERT INTO `options` VALUES ('1091', ' &a[0]+1 ', '0', '276');
INSERT INTO `options` VALUES ('1092', ' a+sizeof(int) ', '1', '276');
INSERT INTO `options` VALUES ('1093', '无答案', '0', '277');
INSERT INTO `options` VALUES ('1094', '无答案', '0', '277');
INSERT INTO `options` VALUES ('1095', '栈和堆', '0', '277');
INSERT INTO `options` VALUES ('1096', '栈和常量区', '1', '277');
INSERT INTO `options` VALUES ('1097', '1,2,3', '0', '278');
INSERT INTO `options` VALUES ('1098', '1,0,2', '1', '278');
INSERT INTO `options` VALUES ('1099', '3,2,1', '0', '278');
INSERT INTO `options` VALUES ('1100', '1,3,2', '0', '278');
INSERT INTO `options` VALUES ('1101', 'strlen', '0', '279');
INSERT INTO `options` VALUES ('1102', 'exit', '1', '279');
INSERT INTO `options` VALUES ('1103', 'fopen ', '1', '279');
INSERT INTO `options` VALUES ('1104', ' memcpy ', '0', '279');
INSERT INTO `options` VALUES ('1105', '物理内存的分配', '0', '280');
INSERT INTO `options` VALUES ('1106', '物理内存的释放', '1', '280');
INSERT INTO `options` VALUES ('1107', '虚拟内存的释放', '0', '280');
INSERT INTO `options` VALUES ('1108', '虚拟内存的分配', '1', '280');
INSERT INTO `options` VALUES ('1109', ' DMA 速度快；', '0', '281');
INSERT INTO `options` VALUES ('1110', 'DMA 不需要中断控制', '1', '281');
INSERT INTO `options` VALUES ('1111', 'DMA，Direct Memory Acess 直接存储器访问，使得不同速度的硬件设备可以直接通信，不通过 CPU 干预；', '0', '281');
INSERT INTO `options` VALUES ('1112', 'DMA 访问的时候需要从 CPU 那里夺得总线控制权，然后...', '0', '281');
INSERT INTO `options` VALUES ('1113', '循环等待', '1', '282');
INSERT INTO `options` VALUES ('1114', '互斥条件 ', '1', '282');
INSERT INTO `options` VALUES ('1115', '不可剥夺 ', '1', '282');
INSERT INTO `options` VALUES ('1116', '请求和保持', '1', '282');
INSERT INTO `options` VALUES ('1117', '3', '0', '283');
INSERT INTO `options` VALUES ('1118', '1', '0', '283');
INSERT INTO `options` VALUES ('1119', '2', '0', '283');
INSERT INTO `options` VALUES ('1120', '4', '0', '283');
INSERT INTO `options` VALUES ('1121', '数组的插入和删除可以 O(1)', '1', '284');
INSERT INTO `options` VALUES ('1122', '数组的插入和删除可以是O(n)', '0', '284');
INSERT INTO `options` VALUES ('1123', '哈希表没法范围检查', '0', '284');
INSERT INTO `options` VALUES ('1124', '数组和链表都可以随机访问', '0', '284');
INSERT INTO `options` VALUES ('1125', 'O(n)', '0', '285');
INSERT INTO `options` VALUES ('1126', '无答案', '0', '285');
INSERT INTO `options` VALUES ('1127', 'O(nlogn)', '0', '285');
INSERT INTO `options` VALUES ('1128', 'O(n^2)', '0', '285');
INSERT INTO `options` VALUES ('1129', ' 3n/2', '1', '286');
INSERT INTO `options` VALUES ('1130', 'n-1', '0', '286');
INSERT INTO `options` VALUES ('1131', '4n/3', '0', '286');
INSERT INTO `options` VALUES ('1132', '2n-2 ', '0', '286');
INSERT INTO `options` VALUES ('1133', 'abcedfgh', '0', '287');
INSERT INTO `options` VALUES ('1134', 'defghbca', '0', '287');
INSERT INTO `options` VALUES ('1135', 'adecbghf', '0', '287');
INSERT INTO `options` VALUES ('1136', 'adecbhgf', '1', '287');
INSERT INTO `options` VALUES ('1137', '一个函数修改另外一个函数中的数据', '1', '288');
INSERT INTO `options` VALUES ('1138', '通过全局变量', '1', '288');
INSERT INTO `options` VALUES ('1139', '通过指示器', '0', '288');
INSERT INTO `options` VALUES ('1140', '通过函数参数传递', '0', '288');
INSERT INTO `options` VALUES ('1203', 'pascal', '0', '304');
INSERT INTO `options` VALUES ('1204', 'stdcall', '0', '304');
INSERT INTO `options` VALUES ('1205', 'fastcall', '0', '304');
INSERT INTO `options` VALUES ('1206', ' cdecl ', '1', '304');
INSERT INTO `options` VALUES ('1207', 'A::f()B::f()const ', '0', '305');
INSERT INTO `options` VALUES ('1208', 'B::f()B::f()const ', '0', '305');
INSERT INTO `options` VALUES ('1209', 'B::f()A::f()const', '1', '305');
INSERT INTO `options` VALUES ('1210', ' A::f()A::f()const', '0', '305');
INSERT INTO `options` VALUES ('1211', 'Dynamically add/remove  ', '1', '306');
INSERT INTO `options` VALUES ('1212', 'Data storage type', '1', '306');
INSERT INTO `options` VALUES ('1213', 'Search complexity when both are sorted  ', '1', '306');
INSERT INTO `options` VALUES ('1214', 'Random access efficiency ', '1', '306');
INSERT INTO `options` VALUES ('1215', 'One application in OS must have one Process, but not a necessary to have one Thread    ', '0', '307');
INSERT INTO `options` VALUES ('1216', 'Thread must belongs to a Process   ', '1', '307');
INSERT INTO `options` VALUES ('1217', ' The Process could have its own Stack but the thread only could share the Stack of its parent Process ', '0', '307');
INSERT INTO `options` VALUES ('1218', 'Thread could change its belonging Process', '0', '307');
INSERT INTO `options` VALUES ('1219', '11, 11', '1', '308');
INSERT INTO `options` VALUES ('1220', ' 10, 11', '0', '308');
INSERT INTO `options` VALUES ('1221', '10, 10 ', '0', '308');
INSERT INTO `options` VALUES ('1222', '11, 10', '0', '308');
INSERT INTO `options` VALUES ('1223', '2', '0', '309');
INSERT INTO `options` VALUES ('1224', '9', '0', '309');
INSERT INTO `options` VALUES ('1225', 'overflow', '1', '309');
INSERT INTO `options` VALUES ('1226', '6', '0', '309');
INSERT INTO `options` VALUES ('1227', 'const int a; //const integer ', '1', '310');
INSERT INTO `options` VALUES ('1228', 'int const *a; // a const pointer which point to integer', '0', '310');
INSERT INTO `options` VALUES ('1229', ' int const a; //const integer', '1', '310');
INSERT INTO `options` VALUES ('1230', 'const int *a; //a const pointer which point to integer', '0', '310');
INSERT INTO `options` VALUES ('1231', 'int const *a; //a pointer which point to const integer ', '1', '310');
INSERT INTO `options` VALUES ('1232', '12121212', '0', '311');
INSERT INTO `options` VALUES ('1233', '11112222', '0', '311');
INSERT INTO `options` VALUES ('1234', '21212121(错误)', '1', '311');
INSERT INTO `options` VALUES ('1235', '11111111', '0', '311');
INSERT INTO `options` VALUES ('1236', 'None of the above', '0', '312');
INSERT INTO `options` VALUES ('1237', '10', '1', '312');
INSERT INTO `options` VALUES ('1238', '32', '0', '312');
INSERT INTO `options` VALUES ('1239', '9', '0', '312');
INSERT INTO `options` VALUES ('1240', 'return (7&1)', '1', '313');
INSERT INTO `options` VALUES ('1241', 'the return value of main function if program ends normally   ', '0', '313');
INSERT INTO `options` VALUES ('1242', ' return\"microsoft\"==\"microsoft\"   ', '0', '313');
INSERT INTO `options` VALUES ('1243', 'char *str=\"microsoft\"; return str==\"microsoft\" ', '0', '313');
INSERT INTO `options` VALUES ('1244', 'None of the above', '0', '313');
INSERT INTO `options` VALUES ('1245', ' There is a compiler error ', '0', '314');
INSERT INTO `options` VALUES ('1246', ' F - G = 1 ', '0', '314');
INSERT INTO `options` VALUES ('1247', ' X is odd  ', '0', '314');
INSERT INTO `options` VALUES ('1248', 'X is negative  ', '1', '314');
INSERT INTO `options` VALUES ('1249', 'G - F = 1', '0', '314');
INSERT INTO `options` VALUES ('1250', '20', '0', '315');
INSERT INTO `options` VALUES ('1251', '18', '0', '315');
INSERT INTO `options` VALUES ('1252', '60', '1', '315');
INSERT INTO `options` VALUES ('1253', '40', '0', '315');
INSERT INTO `options` VALUES ('1254', 'None of above is correct', '0', '315');
INSERT INTO `options` VALUES ('1255', '5510', '0', '316');
INSERT INTO `options` VALUES ('1256', '5051', '1', '316');
INSERT INTO `options` VALUES ('1257', '5053', '0', '316');
INSERT INTO `options` VALUES ('1258', '5511', '0', '316');
INSERT INTO `options` VALUES ('1259', ' bubble sort', '0', '317');
INSERT INTO `options` VALUES ('1260', 'Selection sort', '1', '317');
INSERT INTO `options` VALUES ('1261', 'quick sort ', '0', '317');
INSERT INTO `options` VALUES ('1262', 'heap sort', '1', '317');
INSERT INTO `options` VALUES ('1263', 'merge sort ', '0', '317');
INSERT INTO `options` VALUES ('1264', 'A view is a (visual) representation of its model. It renders the model into a form suitable for interaction, typically a user interface element ', '1', '318');
INSERT INTO `options` VALUES ('1265', 'None of the above', '0', '318');
INSERT INTO `options` VALUES ('1266', 'Models often represent data and the business logics needed to manipulate the data in the application', '1', '318');
INSERT INTO `options` VALUES ('1267', ' The common practice of MVC in web applications is, the model receives GET or POST input from user and decides what to do with it, handing over to controller and which hand control to views(HTML-generating components) ', '0', '318');
INSERT INTO `options` VALUES ('1268', 'A controller is the link between a user and the system. It accepts input from the user and instructs the model and a view to perform actions based on that input', '1', '318');
INSERT INTO `options` VALUES ('1269', 'Preorder traversal and inorder traversal   ', '1', '319');
INSERT INTO `options` VALUES ('1270', 'Inorder traversal and postorder traversal ', '1', '319');
INSERT INTO `options` VALUES ('1271', 'Postorder traversal', '0', '319');
INSERT INTO `options` VALUES ('1272', 'Preorder traversal and postorder traversal ', '0', '319');
INSERT INTO `options` VALUES ('1273', 'n!', '0', '320');
INSERT INTO `options` VALUES ('1274', 'n(n+1)/2 ', '1', '320');
INSERT INTO `options` VALUES ('1275', 'n+1 ', '0', '320');
INSERT INTO `options` VALUES ('1276', '2^n-1', '0', '320');
INSERT INTO `options` VALUES ('1277', 'n^2 ', '0', '320');
INSERT INTO `options` VALUES ('1278', '16', '1', '321');
INSERT INTO `options` VALUES ('1279', '20', '1', '321');
INSERT INTO `options` VALUES ('1280', '28', '0', '321');
INSERT INTO `options` VALUES ('1281', '24', '1', '321');
INSERT INTO `options` VALUES ('1282', '12', '1', '321');
INSERT INTO `options` VALUES ('1283', '40', '0', '322');
INSERT INTO `options` VALUES ('1284', '31', '0', '322');
INSERT INTO `options` VALUES ('1285', '32', '0', '322');
INSERT INTO `options` VALUES ('1286', '39', '1', '322');
INSERT INTO `options` VALUES ('1287', '16', '0', '322');
INSERT INTO `options` VALUES ('1288', 'Semaphore', '1', '323');
INSERT INTO `options` VALUES ('1289', 'Local procedure call', '0', '323');
INSERT INTO `options` VALUES ('1290', 'Mailbox', '0', '323');
INSERT INTO `options` VALUES ('1291', 'Mutex', '1', '323');
INSERT INTO `options` VALUES ('1292', '1, 2, 3, 4, 5, 6, 7', '1', '324');
INSERT INTO `options` VALUES ('1293', '1, 7, 6, 5, 4, 3, 2', '0', '324');
INSERT INTO `options` VALUES ('1294', '5, 6, 4, 3, 7, 2, 1', '0', '324');
INSERT INTO `options` VALUES ('1295', ' 7, 6, 5, 4, 3, 2, 1', '1', '324');
INSERT INTO `options` VALUES ('1296', '3, 2, 1, 7, 5, 6, 4', '1', '324');
INSERT INTO `options` VALUES ('1297', '0011 0100 0011 0101', '0', '325');
INSERT INTO `options` VALUES ('1298', '0010 0100 0011 0101', '0', '325');
INSERT INTO `options` VALUES ('1299', '0101 0111 0111 0011', '0', '325');
INSERT INTO `options` VALUES ('1300', '0001 0100 0011 1111', '1', '325');
INSERT INTO `options` VALUES ('1301', 'None of above', '0', '326');
INSERT INTO `options` VALUES ('1302', ' Garbage value', '1', '326');
INSERT INTO `options` VALUES ('1303', '12', '0', '326');
INSERT INTO `options` VALUES ('1304', 'Compile error', '0', '326');
INSERT INTO `options` VALUES ('1305', '11', '0', '326');
INSERT INTO `options` VALUES ('1306', 'void f(int * ret)  \n{  \n    int a[3] = {1, 2, 3};  \n    ret = a;  \n    return;  \n} ', '0', '327');
INSERT INTO `options` VALUES ('1307', '    int *f()  \n    {  \n        int a[3] = [1, 2, 3];  \n        return a;  \n    }  ', '0', '327');
INSERT INTO `options` VALUES ('1308', '    int f()  \n    {  \n        int *a = new int(3);  \n        return *a;  \n    }  ', '0', '327');
INSERT INTO `options` VALUES ('1309', '    vector<int> f()  \n    {  \n        vector<int> v[3];  \n        return v;  \n    }  ', '1', '327');
INSERT INTO `options` VALUES ('1310', '10968', '1', '328');
INSERT INTO `options` VALUES ('1311', '18609', '0', '328');
INSERT INTO `options` VALUES ('1312', '86901', '0', '328');
INSERT INTO `options` VALUES ('1313', '60918', '0', '328');
INSERT INTO `options` VALUES ('1314', '91086', '0', '328');
INSERT INTO `options` VALUES ('1315', ' For an almost sorted array, insertion sort can be more effective than Quicksort.', '0', '329');
INSERT INTO `options` VALUES ('1316', 'Suppose T(n) is the runtime of resolving a problem with n elements, T(n) = Θ(1) if n = 1; T(n) = 2T(n/2) + Θ(n) if > 1; so T(n) is Θ(n log n).', '1', '329');
INSERT INTO `options` VALUES ('1317', 'We can create a binary tree from given preorder and postorder traversal sequences.', '0', '329');
INSERT INTO `options` VALUES ('1318', ' We can create a binary tree from given inorder and preorder traversal sequences.', '1', '329');
INSERT INTO `options` VALUES ('1319', 'None of the above.', '0', '329');
INSERT INTO `options` VALUES ('1320', 'Insertion sort and bubble sort are not effcient for large data sets.', '1', '330');
INSERT INTO `options` VALUES ('1321', ' Heap sort uses two heap operations: insertion and root deletion.', '0', '330');
INSERT INTO `options` VALUES ('1322', ' None of above.', '0', '330');
INSERT INTO `options` VALUES ('1323', 'Quick sort makes O(n^2) comparisons in the worst case.', '1', '330');
INSERT INTO `options` VALUES ('1324', 'There is an array: 7, 6, 5, 4, 3, 2, 1. If using selection sort (ascending), the number of swap operation is 6.', '0', '330');
INSERT INTO `options` VALUES ('1325', 'None of the above', '0', '331');
INSERT INTO `options` VALUES ('1326', 'x ^ (x ^ y)', '0', '331');
INSERT INTO `options` VALUES ('1327', 'y ^(x ^ y)', '0', '331');
INSERT INTO `options` VALUES ('1328', '(x ^ y) ^ (y ^ x)', '0', '331');
INSERT INTO `options` VALUES ('1329', ' y ^ ((x ^ y) & ~(x < y))', '1', '331');
INSERT INTO `options` VALUES ('1330', '784 bytes in UTF-16 encoding', '0', '332');
INSERT INTO `options` VALUES ('1331', '782 bytes in UTF-16 encoding', '0', '332');
INSERT INTO `options` VALUES ('1332', '1176 bytes in UTF-8 encoding', '0', '332');
INSERT INTO `options` VALUES ('1333', '1173 bytes in UTF-8 encoding', '0', '332');
INSERT INTO `options` VALUES ('1334', 'None of the above', '1', '332');
INSERT INTO `options` VALUES ('1335', '–/static', '1', '333');
INSERT INTO `options` VALUES ('1336', 'const static/static', '0', '333');
INSERT INTO `options` VALUES ('1337', 'None of the above', '0', '333');
INSERT INTO `options` VALUES ('1338', 'const/static', '0', '333');
INSERT INTO `options` VALUES ('1339', 'static/const', '0', '333');
INSERT INTO `options` VALUES ('1340', '14', '0', '334');
INSERT INTO `options` VALUES ('1341', '13', '0', '334');
INSERT INTO `options` VALUES ('1342', '11', '1', '334');
INSERT INTO `options` VALUES ('1343', '12', '0', '334');
INSERT INTO `options` VALUES ('1344', 'virtual ', '0', '335');
INSERT INTO `options` VALUES ('1345', 'static ', '1', '335');
INSERT INTO `options` VALUES ('1346', 'const', '1', '335');
INSERT INTO `options` VALUES ('1347', 'inline', '0', '335');
INSERT INTO `options` VALUES ('1348', 'extern', '1', '335');
INSERT INTO `options` VALUES ('1349', 'Access Violation', '0', '336');
INSERT INTO `options` VALUES ('1350', 'abddcccd ', '0', '336');
INSERT INTO `options` VALUES ('1351', 'abcc', '0', '336');
INSERT INTO `options` VALUES ('1352', 'abdd ', '1', '336');
INSERT INTO `options` VALUES ('1353', 'abdcccd ', '0', '336');
INSERT INTO `options` VALUES ('1354', 'quadratic', '0', '337');
INSERT INTO `options` VALUES ('1355', 'exponential', '0', '337');
INSERT INTO `options` VALUES ('1356', 'linear', '0', '337');
INSERT INTO `options` VALUES ('1357', ' logarithmic', '1', '337');
INSERT INTO `options` VALUES ('1358', '25/102, 12/50', '1', '338');
INSERT INTO `options` VALUES ('1359', '1/2, 1/2', '0', '338');
INSERT INTO `options` VALUES ('1360', '25/51, 12/25 ', '0', '338');
INSERT INTO `options` VALUES ('1361', '50/51, 24/25', '0', '338');
INSERT INTO `options` VALUES ('1362', '25/51, 1/2', '0', '338');
INSERT INTO `options` VALUES ('1363', ' ((2n)!) / (n + 1)n!n!', '1', '339');
INSERT INTO `options` VALUES ('1364', 'None of the above', '0', '339');
INSERT INTO `options` VALUES ('1365', ' C_2n^n – C_2n^(n + 1)', '1', '339');
INSERT INTO `options` VALUES ('1366', 'n!', '0', '339');
INSERT INTO `options` VALUES ('1367', 'C_2n^n', '0', '339');
INSERT INTO `options` VALUES ('1368', 'Time: N, Space: C', '0', '340');
INSERT INTO `options` VALUES ('1369', ' Time: N^2, Space: N^2 ', '0', '340');
INSERT INTO `options` VALUES ('1370', 'Time: NlogN, Space: N', '1', '340');
INSERT INTO `options` VALUES ('1371', 'Time: N^2, Space: N ', '0', '340');
INSERT INTO `options` VALUES ('1372', ' Time: N, Space: N  ', '0', '340');
INSERT INTO `options` VALUES ('1373', 'Threads can directly communicate with other threads of its process; Processes must use inter-process communication to communicate with sibling processes', '1', '341');
INSERT INTO `options` VALUES ('1374', 'None of the above.', '0', '341');
INSERT INTO `options` VALUES ('1375', 'Changes to the main thread(cancellation，priority change，etc.) may affect the behavior of the other threads of the process; Changes to the parent process does not affect child processes.', '1', '341');
INSERT INTO `options` VALUES ('1376', 'Multiple threads mar cause deadlock,while multiple processes won\'t cause deadlock.', '0', '341');
INSERT INTO `options` VALUES ('1377', 'Threads share the same address space of the parent process;Processes share the same address space of the parent process.', '0', '341');
INSERT INTO `options` VALUES ('1378', 'Port numbers below 1024 are called well-known ports and are reserved for standard services. For example,port 21 is reserved for FTP protocol, and port 25 is for SMTP protocol.', '1', '342');
INSERT INTO `options` VALUES ('1379', 'None of the above', '0', '342');
INSERT INTO `options` VALUES ('1380', 'TCP provides a way for applications to send encapsulated IP datagrams and send them without having to establish a connection.', '0', '342');
INSERT INTO `options` VALUES ('1381', 'TCP supports multicasting.', '0', '342');
INSERT INTO `options` VALUES ('1382', 'TCP handles package loss reliably.', '1', '342');
INSERT INTO `options` VALUES ('1383', '-1', '1', '343');
INSERT INTO `options` VALUES ('1384', '2', '0', '343');
INSERT INTO `options` VALUES ('1385', '-2', '0', '343');
INSERT INTO `options` VALUES ('1386', '0', '0', '343');
INSERT INTO `options` VALUES ('1387', '1', '0', '343');
INSERT INTO `options` VALUES ('1388', '1,2,5,4,3', '0', '344');
INSERT INTO `options` VALUES ('1389', '5,4,3,2,1', '0', '344');
INSERT INTO `options` VALUES ('1390', '1,2,3,4,5', '0', '344');
INSERT INTO `options` VALUES ('1391', '3,5,1,4,2', '1', '344');
INSERT INTO `options` VALUES ('1392', 'static variable', '0', '345');
INSERT INTO `options` VALUES ('1393', 'external difinitions and references for linking', '1', '345');
INSERT INTO `options` VALUES ('1394', 'BSS segment', '0', '345');
INSERT INTO `options` VALUES ('1395', 'code segment', '1', '345');
INSERT INTO `options` VALUES ('1396', 'global variable', '0', '345');
INSERT INTO `options` VALUES ('1397', '14', '0', '346');
INSERT INTO `options` VALUES ('1398', 'None of the above.', '1', '346');
INSERT INTO `options` VALUES ('1399', '20', '0', '346');
INSERT INTO `options` VALUES ('1400', '24', '0', '346');
INSERT INTO `options` VALUES ('1401', '18', '0', '346');
INSERT INTO `options` VALUES ('1402', '(1) Sort linked list(2) Array.', '0', '347');
INSERT INTO `options` VALUES ('1403', '(1) Tree with Hash(100 bucket) at leaves(2) Tree with linked list at leaves.', '0', '347');
INSERT INTO `options` VALUES ('1404', '(1) Tree with linked list at leaves(2) Hash(10,000 buckets)', '0', '347');
INSERT INTO `options` VALUES ('1405', '(1) Tree with linked list at leaves(2) Array.', '1', '347');
INSERT INTO `options` VALUES ('1406', '0', '1', '348');
INSERT INTO `options` VALUES ('1407', '0', '0', '348');
INSERT INTO `options` VALUES ('1408', '0', '0', '348');
INSERT INTO `options` VALUES ('1409', '0', '0', '348');
INSERT INTO `options` VALUES ('1410', 'The table being joined have only matched data.', '0', '349');
INSERT INTO `options` VALUES ('1411', 'The columns being joined have NULL values.', '1', '349');
INSERT INTO `options` VALUES ('1412', 'The table being joined have NOT NULL columns.', '0', '349');
INSERT INTO `options` VALUES ('1413', 'The table being joined have only unmatched data.', '1', '349');
INSERT INTO `options` VALUES ('1414', 'The table being joined have both matched and unmatched data.', '1', '349');
INSERT INTO `options` VALUES ('1415', 'O(nlgn)', '1', '350');
INSERT INTO `options` VALUES ('1416', 'O(n)', '0', '350');
INSERT INTO `options` VALUES ('1417', 'O(lgn)', '0', '350');
INSERT INTO `options` VALUES ('1418', 'O(n*n)', '0', '350');
INSERT INTO `options` VALUES ('1419', 'DES', '0', '351');
INSERT INTO `options` VALUES ('1420', 'MD5', '1', '351');
INSERT INTO `options` VALUES ('1421', 'RSA', '0', '351');
INSERT INTO `options` VALUES ('1422', 'RC4', '0', '351');
INSERT INTO `options` VALUES ('1423', '50', '1', '352');
INSERT INTO `options` VALUES ('1424', '5', '0', '352');
INSERT INTO `options` VALUES ('1425', '45', '0', '352');
INSERT INTO `options` VALUES ('1426', '30', '0', '352');
INSERT INTO `options` VALUES ('1427', '55', '0', '352');
INSERT INTO `options` VALUES ('1428', 'void* f(int)', '0', '353');
INSERT INTO `options` VALUES ('1429', 'int (*f)()', '1', '353');
INSERT INTO `options` VALUES ('1430', 'void (*(*f)(int))()', '1', '353');
INSERT INTO `options` VALUES ('1431', 'void (*f(int , void(*)(int)))(int)', '0', '353');
INSERT INTO `options` VALUES ('1432', 'Change an algorithm from recursive implementation to iterative implementation.', '1', '354');
INSERT INTO `options` VALUES ('1433', 'Improve memory access pattern to decrease cache misses', '1', '354');
INSERT INTO `options` VALUES ('1434', 'Loop unwinding.', '1', '354');
INSERT INTO `options` VALUES ('1435', 'Use special instructions(e.g. vector instructions) to replace compiler generated assembly code.', '1', '354');
INSERT INTO `options` VALUES ('1436', 'Line 5', '0', '355');
INSERT INTO `options` VALUES ('1437', 'Line 1', '0', '355');
INSERT INTO `options` VALUES ('1438', 'Line 3', '0', '355');
INSERT INTO `options` VALUES ('1439', 'Line 4', '1', '355');
INSERT INTO `options` VALUES ('1440', 'Line 2', '0', '355');
INSERT INTO `options` VALUES ('1441', 'Drive-by downloading', '1', '356');
INSERT INTO `options` VALUES ('1442', 'SQL Injection', '1', '356');
INSERT INTO `options` VALUES ('1443', 'Vulnerability scan', '1', '356');
INSERT INTO `options` VALUES ('1444', 'Brute force', '1', '356');
INSERT INTO `options` VALUES ('1445', 'clustered index and many non-clustered indexes', '0', '357');
INSERT INTO `options` VALUES ('1446', 'Many clustered index', '1', '357');
INSERT INTO `options` VALUES ('1447', 'No indexes', '0', '357');
INSERT INTO `options` VALUES ('1448', 'A clustered index', '0', '357');
INSERT INTO `options` VALUES ('1449', 'Do not host a database server on the same server as your web server', '1', '358');
INSERT INTO `options` VALUES ('1450', 'Do not use blank password for SA account', '1', '358');
INSERT INTO `options` VALUES ('1451', 'Do not host a database server on a server based system', '1', '358');
INSERT INTO `options` VALUES ('1452', 'Employ a centralized administration model', '1', '358');
INSERT INTO `options` VALUES ('1453', '在MAC OS及Windows上支持firefox', '0', '384');
INSERT INTO `options` VALUES ('1454', '在IOS上支持Opera', '1', '384');
INSERT INTO `options` VALUES ('1455', '在IOS及android上都支持chrome', '0', '384');
INSERT INTO `options` VALUES ('1456', '在windows上支持IE8', '0', '384');
INSERT INTO `options` VALUES ('1457', 'firefox支持良好', '0', '385');
INSERT INTO `options` VALUES ('1458', 'IE8支持良好', '1', '385');
INSERT INTO `options` VALUES ('1459', 'IE9支持良好', '0', '385');
INSERT INTO `options` VALUES ('1460', '表示圆角边框', '0', '385');
INSERT INTO `options` VALUES ('1461', '表示支持响应式设计', '0', '386');
INSERT INTO `options` VALUES ('1462', '使得页面编码合乎要求', '0', '386');
INSERT INTO `options` VALUES ('1463', '表示针对滚屏进行适当的适配', '0', '386');
INSERT INTO `options` VALUES ('1464', '支持正常的绘制和缩放', '1', '386');
INSERT INTO `options` VALUES ('1465', 'bootstrap链接从不会带下划线', '0', '387');
INSERT INTO `options` VALUES ('1466', 'bootstrap链接默认都是带下划线', '0', '387');
INSERT INTO `options` VALUES ('1467', 'html5标准的链接默认都是带下划线的', '0', '387');
INSERT INTO `options` VALUES ('1468', 'bootstrap链接只有在hover状态下才带下划线', '1', '387');
INSERT INTO `options` VALUES ('1469', 'col-md-*', '0', '388');
INSERT INTO `options` VALUES ('1470', 'row', '0', '388');
INSERT INTO `options` VALUES ('1471', 'row-fluid', '1', '388');
INSERT INTO `options` VALUES ('1472', 'form-group', '0', '388');
INSERT INTO `options` VALUES ('1473', '<div class=”col-md-1”>\n<div class= “row”>', '0', '389');
INSERT INTO `options` VALUES ('1474', '<div class=“row”>\n   <div class=“container”>', '1', '389');
INSERT INTO `options` VALUES ('1475', '<div class=“row”>\n   <div class=“col-md-1“>', '0', '389');
INSERT INTO `options` VALUES ('1476', '<div class=“container”>\n   <div class=“row”>', '0', '389');
INSERT INTO `options` VALUES ('1477', 'col-xs-*用于小于700的手机屏幕', '1', '390');
INSERT INTO `options` VALUES ('1478', 'col-md-* 一般用于大于992的中等屏幕显示器', '0', '390');
INSERT INTO `options` VALUES ('1479', 'col-sm-* 一般用于大于768的平板', '0', '390');
INSERT INTO `options` VALUES ('1480', 'col-lg-*用于大于1200的桌面显示器', '0', '390');
INSERT INTO `options` VALUES ('1481', '<div class=“container”>\n   <div class=“row”>\n     <div class=“col-xs-1”>', '0', '391');
INSERT INTO `options` VALUES ('1482', ' <div class=“col-sm-1”>\n<div class=“row”>\n', '0', '391');
INSERT INTO `options` VALUES ('1483', ' <div class=“row”>\n   <div class=“container”>\n    <div class=“col-xs-1”>\n', '1', '391');
INSERT INTO `options` VALUES ('1484', '<div class=“row”>\n  <div class=“col-sm-1”>', '0', '391');
INSERT INTO `options` VALUES ('1485', '<small>表示副标题', '1', '392');
INSERT INTO `options` VALUES ('1486', '<h1>最大', '1', '392');
INSERT INTO `options` VALUES ('1487', '<small>用法错误', '0', '392');
INSERT INTO `options` VALUES ('1488', '<h6>最大', '0', '392');
INSERT INTO `options` VALUES ('1489', 'font-size为14px', '0', '393');
INSERT INTO `options` VALUES ('1490', '<p>设置了等于 1/2 行高（即 10px）的底部内边距（padding）', '1', '393');
INSERT INTO `options` VALUES ('1491', 'line-height 设置为 1.428', '0', '393');
INSERT INTO `options` VALUES ('1492', '<p>设置了等于 1/2 行高（即 10px）的底部外边距（margin）', '0', '393');
INSERT INTO `options` VALUES ('1493', '<ins>的文字会带下划线', '0', '394');
INSERT INTO `options` VALUES ('1494', '<strong>用于放大文本', '0', '394');
INSERT INTO `options` VALUES ('1495', '<del>用于显示删除的文本', '0', '394');
INSERT INTO `options` VALUES ('1496', 'mark用于显示高亮元素', '0', '394');
INSERT INTO `options` VALUES ('1497', 'text-left用于左对齐', '0', '395');
INSERT INTO `options` VALUES ('1498', 'text-uppercase可以将文字全部大写', '0', '395');
INSERT INTO `options` VALUES ('1499', 'text-vertical垂直居中对齐', '1', '395');
INSERT INTO `options` VALUES ('1500', 'text-center水平居中对齐', '0', '395');
INSERT INTO `options` VALUES ('1501', '<kbd>来表示用户输入', '1', '396');
INSERT INTO `options` VALUES ('1502', '<code>表示代码片段', '1', '396');
INSERT INTO `options` VALUES ('1503', '<var>用来表示变量', '1', '396');
INSERT INTO `options` VALUES ('1504', 'list-inline类会将所有的元素放置于同一行\n', '1', '396');
INSERT INTO `options` VALUES ('1505', 'col-xs-*', '1', '397');
INSERT INTO `options` VALUES ('1506', 'col-lg-*', '1', '397');
INSERT INTO `options` VALUES ('1507', 'col-md-*', '1', '397');
INSERT INTO `options` VALUES ('1508', 'col-sm-*', '1', '397');
INSERT INTO `options` VALUES ('1509', '其字体默认为14px', '1', '398');
INSERT INTO `options` VALUES ('1510', '会有自动的padding样式', '1', '398');
INSERT INTO `options` VALUES ('1511', '其box-sizing默认为border-box', '1', '398');
INSERT INTO `options` VALUES ('1512', '会有自动的margin样式', '0', '398');
INSERT INTO `options` VALUES ('1513', 'col-lg-8 col-xs-12', '0', '399');
INSERT INTO `options` VALUES ('1514', 'col-lg-8 col-sm-12', '0', '399');
INSERT INTO `options` VALUES ('1515', 'col-md-8 col-sm-12', '0', '399');
INSERT INTO `options` VALUES ('1516', 'col-md-8 col-xs-12', '1', '399');
INSERT INTO `options` VALUES ('1517', 'text-warning', '1', '400');
INSERT INTO `options` VALUES ('1518', 'text-info', '1', '400');
INSERT INTO `options` VALUES ('1519', 'text-success', '1', '400');
INSERT INTO `options` VALUES ('1520', 'text-muted', '1', '400');
INSERT INTO `options` VALUES ('1521', 'bg-info', '1', '401');
INSERT INTO `options` VALUES ('1522', 'bg-warning', '1', '401');
INSERT INTO `options` VALUES ('1523', 'bg-primary', '1', '401');
INSERT INTO `options` VALUES ('1524', 'bg-success', '1', '401');
INSERT INTO `options` VALUES ('1525', 'navbar使用navbar-left类来定义的', '0', '402');
INSERT INTO `options` VALUES ('1526', '<span class=\"caret\"></span>可以用来表示一个三角符号', '0', '402');
INSERT INTO `options` VALUES ('1527', 'navbar使用pull-left类来定义的', '1', '402');
INSERT INTO `options` VALUES ('1528', '<button type=\"button\" class=\"close\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>\n可以用来表示一个关闭按钮', '0', '402');
INSERT INTO `options` VALUES ('1529', 'hidden用来隐藏一个div', '0', '403');
INSERT INTO `options` VALUES ('1530', 'text-hide将会隐藏掉文字', '0', '403');
INSERT INTO `options` VALUES ('1531', 'hide用来隐藏一个div', '1', '403');
INSERT INTO `options` VALUES ('1532', 'show用来显示一个区块', '0', '403');
INSERT INTO `options` VALUES ('1533', 'visible-sm-8 hidden-md', '0', '404');
INSERT INTO `options` VALUES ('1534', 'visible-xs-8 hidden-md', '0', '404');
INSERT INTO `options` VALUES ('1535', 'visible-md-8 hidden-sm', '0', '404');
INSERT INTO `options` VALUES ('1536', 'visible-md-8 hidden-xs', '1', '404');
INSERT INTO `options` VALUES ('1537', 'visible-print-inline', '0', '405');
INSERT INTO `options` VALUES ('1538', 'visible-print-block', '0', '405');
INSERT INTO `options` VALUES ('1539', 'hidden-print', '1', '405');
INSERT INTO `options` VALUES ('1540', 'print-hidden', '0', '405');
INSERT INTO `options` VALUES ('1541', '可以加入pull-right使菜单右对齐', '0', '406');
INSERT INTO `options` VALUES ('1542', '<span class=\"caret\"></span>可以去掉而不影响功能', '0', '406');
INSERT INTO `options` VALUES ('1543', '可加入dropdown-menu-righ使菜单右对齐', '0', '406');
INSERT INTO `options` VALUES ('1544', '表示了一个有四个下拉选项的下拉菜单', '0', '406');
INSERT INTO `options` VALUES ('1545', 'btn-toolbar能将btn做成复杂组件', '1', '407');
INSERT INTO `options` VALUES ('1546', 'btn-group能将按钮组成按钮组', '1', '407');
INSERT INTO `options` VALUES ('1547', '可以使用btn-group-lg，btn-group-sm来调整按钮大小', '1', '407');
INSERT INTO `options` VALUES ('1548', 'btn-group可以嵌套使用', '1', '407');
INSERT INTO `options` VALUES ('1549', '使用input-group来封装控件', '1', '408');
INSERT INTO `options` VALUES ('1550', '使用input-group-addon来添加前置元素', '1', '408');
INSERT INTO `options` VALUES ('1551', '使用input-group-tailon来添加后置元素', '0', '408');
INSERT INTO `options` VALUES ('1552', '必须为input添加form-control类', '1', '408');
INSERT INTO `options` VALUES ('1553', 'D.1<4<3<2', '0', '409');
INSERT INTO `options` VALUES ('1554', 'C.4<1<3<2', '0', '409');
INSERT INTO `options` VALUES ('1555', 'B. 1<4<2<3', '0', '409');
INSERT INTO `options` VALUES ('1556', 'A. 4<1<2<3 ', '1', '409');
INSERT INTO `options` VALUES ('1557', '程序可以正确编译连接，但是运行时会崩溃', '0', '410');
INSERT INTO `options` VALUES ('1558', '程序语法错误，编译不成功', '1', '410');
INSERT INTO `options` VALUES ('1559', 'array: 1 6 3 4 5 6 7 8 9 10', '0', '410');
INSERT INTO `options` VALUES ('1560', 'array: 6 2 3 4 5 6 7 8 9 10', '0', '410');
INSERT INTO `options` VALUES ('1561', '3/16', '0', '411');
INSERT INTO `options` VALUES ('1562', '3/8', '0', '411');
INSERT INTO `options` VALUES ('1563', '9/64', '0', '411');
INSERT INTO `options` VALUES ('1564', '9/32', '1', '411');
INSERT INTO `options` VALUES ('1565', '1', '0', '412');
INSERT INTO `options` VALUES ('1566', '3', '0', '412');
INSERT INTO `options` VALUES ('1567', '4', '0', '412');
INSERT INTO `options` VALUES ('1568', '2', '1', '412');
INSERT INTO `options` VALUES ('1569', '18', '0', '413');
INSERT INTO `options` VALUES ('1570', '14', '1', '413');
INSERT INTO `options` VALUES ('1571', '24', '0', '413');
INSERT INTO `options` VALUES ('1572', '12', '0', '413');
INSERT INTO `options` VALUES ('1573', '34', '0', '414');
INSERT INTO `options` VALUES ('1574', '35', '0', '414');
INSERT INTO `options` VALUES ('1575', '33', '0', '414');
INSERT INTO `options` VALUES ('1576', '36', '1', '414');
INSERT INTO `options` VALUES ('1577', '4', '0', '415');
INSERT INTO `options` VALUES ('1578', '3', '1', '415');
INSERT INTO `options` VALUES ('1579', '2', '0', '415');
INSERT INTO `options` VALUES ('1580', '16', '0', '415');
INSERT INTO `options` VALUES ('1581', 'Socket', '0', '416');
INSERT INTO `options` VALUES ('1582', 'PIPEC', '0', '416');
INSERT INTO `options` VALUES ('1583', 'MEMORY', '0', '416');
INSERT INTO `options` VALUES ('1584', '以上皆可', '1', '416');
INSERT INTO `options` VALUES ('1585', '现代主流C/C++编译器可以对简单的小函数进行自动inline', '1', '417');
INSERT INTO `options` VALUES ('1586', '寄存器分配能够解决程序中的数据依赖问题', '0', '417');
INSERT INTO `options` VALUES ('1587', '循环展开得越多越彻底，程序的性能越好', '0', '417');
INSERT INTO `options` VALUES ('1588', '使用编译器的优化选项后程序性能一定会获得提高', '0', '417');
INSERT INTO `options` VALUES ('1589', 'O(1) ', '0', '418');
INSERT INTO `options` VALUES ('1590', 'O(n) ', '0', '418');
INSERT INTO `options` VALUES ('1591', 'O(logn) ', '0', '418');
INSERT INTO `options` VALUES ('1592', 'O(n^2)', '0', '418');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  UNIQUE KEY `permission_id` (`permission_id`),
  UNIQUE KEY `permission_name` (`permission_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('2', 'menu:*');
INSERT INTO `permission` VALUES ('1', 'user:*');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `point` int(11) DEFAULT '0',
  `question_content` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `question_type` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `answer` longtext COLLATE utf8_bin,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `question_id` (`question_id`),
  KEY `FKBA823BE68DA32FAD` (`quiz_id`),
  CONSTRAINT `FKBA823BE68DA32FAD` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '4', 'what you name', 'option', '1', null);
INSERT INTO `question` VALUES ('2', '4', 'Do you like dream', 'option', '1', null);
INSERT INTO `question` VALUES ('5', '4', 'a beautiful day', 'option', '1', null);
INSERT INTO `question` VALUES ('6', '4', 'how are you ', 'option', '1', null);
INSERT INTO `question` VALUES ('109', '4', 'angularjs中的服务实质上是', 'option', '2', null);
INSERT INTO `question` VALUES ('110', '4', 'AngularJS中页面中用于数据绑定的占位符是什么？', 'option', '2', null);
INSERT INTO `question` VALUES ('111', '4', 'AngularJS中指定控制器的是哪个指令？', 'option', '2', null);
INSERT INTO `question` VALUES ('112', '4', 'AngularJS元素过滤的正确写法是哪一个？', 'option', '2', null);
INSERT INTO `question` VALUES ('113', '4', 'angularjs中服务的正确写法是？', 'option', '2', null);
INSERT INTO `question` VALUES ('114', '4', 'angularjs使用了mvc进行web开发，其中控制层一般用什么语言来定义', 'option', '2', null);
INSERT INTO `question` VALUES ('115', '4', 'angularjs中control间通信最好使用什么方式？', 'option', '2', null);
INSERT INTO `question` VALUES ('116', '4', 'angularjs中的$apply()的作用是？', 'option', '2', null);
INSERT INTO `question` VALUES ('117', '4', '使用了angularjs的如下代码：\nfunctionCtrl($scope) {\n  $scope.message =\"Waiting 2000ms for update\";    \n  setTimeout(function () {\n  　　$scope.message =\"Timeout called!\";\n     \n  }, 2000); \n}输出是', 'option', '2', null);
INSERT INTO `question` VALUES ('118', '4', 'angularjs中的使用了如下代码：\nvar value =1;\n$http({\n url:URL1,\n method:\"GET\"\n}).success(function(data){\n alert(value);\n}).error(function(){\n $scope.store = null;\n});\nvalue+1;\n', 'option', '2', null);
INSERT INTO `question` VALUES ('119', '4', 'angularjs中指令中的compile参数是在什么时候运行的？', 'option', '2', null);
INSERT INTO `question` VALUES ('120', '4', 'anglularjs中指令中的link参数是什么时候运行的？', 'option', '2', null);
INSERT INTO `question` VALUES ('121', '4', 'angularjs指令中compile主要是做什么用的？', 'option', '2', null);
INSERT INTO `question` VALUES ('122', '4', 'angularjs中使用指令，绑定监听是在什么时候？', 'option', '2', null);
INSERT INTO `question` VALUES ('123', '4', ' ng-class是做什么用的？', 'option', '2', null);
INSERT INTO `question` VALUES ('124', '4', ' ng-style是做什么用的？', 'option', '2', null);
INSERT INTO `question` VALUES ('125', '4', 'angularjs中关于服务的说法错误的是', 'option', '2', null);
INSERT INTO `question` VALUES ('126', '4', 'angularjs中定义服务哪种方法是错误的？', 'option', '2', null);
INSERT INTO `question` VALUES ('127', '4', '关于下面的代码，描述正确的是\n<!--html code-->\n<div ng-app=\"MyApp\">\n    <div ng-controller=\"testC3\">\n     <span>{{remoteData.value}}</span>\n        <button ng-click=\"validateData()\">验证数据</button>\n    </div>\n</div>\n<!--js code-->\nvar app = angular.module(\'MyApp\', []);\napp.controller(\'testC3\',function($scope,validate){\n    $scope.validateData = validate;\n});\n\napp.factory(\'remoteData\',function(){\n    var data = {name:\'n\',value:\'v\'};\n    return data;\n});\n\napp.factory(\'validate\',function(remoteData){\n    return function(){\n        if(remoteData.name==\'n\'){\n            alert(\'验证通过\');       \n        }\n    };\n});\n', 'option', '2', null);
INSERT INTO `question` VALUES ('128', '4', '关于angularjs说发，错误的是', 'option', '2', null);
INSERT INTO `question` VALUES ('129', '4', '假设把整数关键码K散列到N个槽列表，以下哪些散列函数是好的散列函数(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('130', '4', '下面排序算法中，初始数据集的排列顺序对算法的性能无影响的是：', 'option', '3', null);
INSERT INTO `question` VALUES ('131', '4', '下面说法错误的是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('132', '4', '不属于冯诺依曼体系结构必要组成部分是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('133', '4', '一个栈的入栈序列式ABCDE则不可能的出栈序列是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('134', '4', '你认为可以完成编写一个C语言编译器的语言是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('135', '4', '关于C++/JAVA类中的static成员和对象成员的说法正确的是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('136', '4', '某进程在运行过程中需要等待从磁盘上读入数据，此时进程的状态将(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('137', '4', '下面算法的时间复杂度为\n     Int f(unsigned int n){\n       If(n==0||n==1)Return 1;\n       Else Return n*f(n-1);\n}(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('138', '4', 'n从1开始，每个操作可以选择对n加1或者对n加倍。若想获得整数2013，最少需要多少个操作。(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('139', '4', '对于一个具有n个顶点的无向图，若采用邻接表数据结构表示，则存放表头节点的数组大小为(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('140', '4', '如下函数，在32bit系统foo(2^31-3)的值是Int foo(int x){Return x&-x;}(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('141', '4', '对于顺序存储的线性数组，访问节点和增加节点删除节点的时间复杂度为(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('142', '4', '在32为系统环境，编译选项为4字节对齐，那么sizeof(A)和sizeof(B)是：\n    Struct A {\n       Int a;\n       short b;\n       int c;\n       char d;\n    };\n    Struct B {\n      int a;\n      short b;\n      char c;\n      int c;\n    };(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('143', '4', '袋中有红球，黄球，白球各一个，每次任意取一个放回，如此连续3次，则下列事件中概率是8/9的是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('144', '4', '一个洗牌程序的功能是将n张牌的顺序打乱，以下关于洗牌程序的功能定义说法最恰当的是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('145', '4', '用两种颜色去染排成一个圈的6个棋子，如果通过旋转得到则只算一种，一共有多少种染色(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('146', '4', '递归式的先序遍历一个n节点，深度为d的二叉树，则需要栈空间的大小为(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('147', '4', '两个线程运行在双核机器上，每个线程主线程如下，线程1：x=1;r1=y;线程2：y=1;r2=x;X和y是全局变量，初始为0。以下哪一个是r1和r2的可能值(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('148', '4', '关于Linux系统的负载，以下表述正确的是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('149', '4', '关于排序算法的以下说法，错误的是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('150', '4', '假设函数rand_k会随机返回一个【1，k】之间的随机数（k>=2）,并且每个证书出现的概率相等。目前有rand_7,通过调用rand_7（）和四则运算符，并适当增加逻辑判断和循环控制逻辑，下列函数可以实现的有(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('151', '4', '在按层次遍历二叉树的算法中, 需要借助的辅组数据结构是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('152', '4', '所谓指令周期是指(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('153', '4', '调用一成员函数时, 使用动态联编的情况是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('154', '4', '配置管理能起到以下哪些作用(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('155', '4', 'HTTP1.1协议中规定便是正常响应的状态代码是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('156', '4', '单链表的每个结点中包括一个指针link, 它指向该结点的后继结点. 现要将指针q指向的新结点插入到指针p指向的单结点之后, 下面的操作序列中哪一个是真确的?(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('157', '4', '给出以下定义, 则正确的叙述为char x[]=\"abcdefg\";\nchar y[]={\'a\',\'b\',\'c\',\'d\',\'e\',\'f\',\'g\'};\n(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('158', '4', 'Google Chrome浏览器对CSS的支持度和下面哪个浏览器基本一致(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('159', '4', '下面这段javascript代码,\nvar msg=\'hello\';\nfor (var i=0; i<10; i++){\n   var msg=\'hello\'+i*2+i;\n}\nalert(msg);\n最后一句alert的输出结果是:(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('160', '4', '下面哪个Hack属性, IE7浏览器不能识别(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('161', '4', '请问在javascript程序中, alert(undefined==null)\n的输出结果是(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('162', '4', '在Linux系统中, 为找到文件try_grep含有以a字母为行开头的内容, 可以使用命令(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('163', '4', '在Linux系统中, 检查硬盘空间使用情况应该使用什么命令？(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('164', '4', 'ping命令使用的协议是', 'option', '3', null);
INSERT INTO `question` VALUES ('165', '4', '以下设备中哪种最适合做网站负载均衡设备(Load Balance)(201309)', 'option', '3', null);
INSERT INTO `question` VALUES ('166', '4', '下列说法不正确的是', 'option', '3', null);
INSERT INTO `question` VALUES ('167', '4', '（）不能用于Linux中的进程通信', 'option', '3', null);
INSERT INTO `question` VALUES ('168', '4', '设在内存中有P1,P2,P3三道程序，并按照P1,P2,P3的优先级次序运行，其中内部计算和IO操作时间由下表给出（CPU计算和IO资源都只能同时由一个程序占用）：\nP1:计算60ms—》IO 80ms—》计算20ms  \nP2:计算120ms—》IO 40ms—》计算40ms \nP3:计算40ms—》IO 80ms—》计算40ms \n完成三道程序比单道运行节省的时间是', 'option', '3', null);
INSERT INTO `question` VALUES ('169', '4', '两个等价线程并发的执行下列程序，a为全局变量，初始为0，假设printf、++、--操作都是原子性的，则输出肯定不是哪个（）\nvoid foo() {\nif(a <= 0) {\n   a++;\n}else {\n   a--;\n}\n   printf(“%d”, a);\n}（无答案）', 'option', '3', null);
INSERT INTO `question` VALUES ('170', '4', '给定fun函数如下，那么fun(10)的输出结果是（）\nint fun(int x) {\n  return (x==1) ? 1 : (x + fun(x-1));\n}', 'option', '3', null);
INSERT INTO `question` VALUES ('171', '4', '在c++程序中，如果一个整型变量频繁使用，最好将他定义为', 'option', '3', null);
INSERT INTO `question` VALUES ('172', '4', '长为n的字符串中匹配长度为m的子串的复杂度为', 'option', '3', null);
INSERT INTO `question` VALUES ('173', '4', '判断一包含n个整数a[]中是否存在i、j、k满足a[i] + a[j] = a[k]的时间复杂度为', 'option', '3', null);
INSERT INTO `question` VALUES ('174', '4', '三次射击能中一次的概率是0.95，请问一次射击能中的概率是多少？', 'option', '3', null);
INSERT INTO `question` VALUES ('175', '4', '下列序排算法中最坏复杂度不是n(n-1)/2的是', 'option', '3', null);
INSERT INTO `question` VALUES ('176', '4', '以下哪些进程状态转换是正确的', 'option', '3', null);
INSERT INTO `question` VALUES ('177', '4', '字符串“alibaba”有（）个不同的排列', 'option', '3', null);
INSERT INTO `question` VALUES ('178', '4', '下面一段C++代码的输出是（）\nClass Base{\n  public:int Bar(char x){\n      return (int)(x);\n  }\n  virtual int Bar(int x){return (2*x);\n}};\nClass Derived:public Base{\n  public:int Bar(char x){\n    return (int)(-x);\n}\n  int Bar(int x){\n    return(x/2);\n}};\nVoid main(void){\n   Derived obj;\n   Base* pobj=&obj;\n   printf(“%d,”,pobj->Bar((char)(100)));\n   printf(“%d”,pobj->Bar(100));\n}', 'option', '3', null);
INSERT INTO `question` VALUES ('179', '4', '有一个二维数组A[10][5]，每个数据占1个字节，且A[0][0]的存储地址是1000，则A[i][j]的地址是', 'option', '3', null);
INSERT INTO `question` VALUES ('180', '4', '下列（C）不是线性表', 'option', '3', null);
INSERT INTO `question` VALUES ('181', '4', '下列有关在一个处理器上跑两个线程的说法中，正确的是', 'option', '3', null);
INSERT INTO `question` VALUES ('182', '4', '关于双链表的搜索给定元素操作的正确说法的是', 'option', '3', null);
INSERT INTO `question` VALUES ('183', '4', '对n个数字时行排序，其中两两不同的数字的个数为k，n远远大于k，而n的取值区间长度超过了内存的大小，时间复杂度最小可以是', 'option', '3', null);
INSERT INTO `question` VALUES ('184', '4', '一台指针式钟表的时针和分针指向的重合的时间间隔是', 'option', '3', null);
INSERT INTO `question` VALUES ('185', '4', '两个大小不同的杯子R和S，R中装着一定量的小米，S中装着一定量的沙子，一儿童用勺子从S中取出一勺沙子放入R，与小米混合之后，再从R中取出等体积的一勺混合物放入S。假定两勺物品的体积相等，且R和S都没有发生溢出。则以下说法中正确的是', 'option', '3', null);
INSERT INTO `question` VALUES ('186', '4', '假定抛出的硬币落地之后正反两面出现的概率分别为1/2，那么抛10次和100次硬币（分别称为T10和T100)相比,以下说法正确的是', 'option', '3', null);
INSERT INTO `question` VALUES ('187', '4', '某福彩机构推出了一款简单的猜谜游戏：游戏玩家只需交纳n元，赌红或者黑。如果开奖结果与游戏一家所赌的颜色相同，则玩家除得到交纳的n元赌资外，还可以获得n元奖励；否则该玩家失去交纳的n元赌资。为了游戏公平，开奖是红或者黑的概率均为1/2。某游戏一家想出了一相玩法，开始出100元参与赌资，然后按照如下规则进行游戏：如果输掉，并且赌资充足，就把已经输了的总钱数翻倍作为赌资进行赌博；否则，就停止该游戏。假定该机构赌资无限，而玩家的赌资有限，以下关于该玩家退出游戏时的情形评论中合理的是', 'option', '3', null);
INSERT INTO `question` VALUES ('188', '4', '有16瓶水，其中只有一瓶水有毒，小白鼠喝一滴后，1小时后会死，请问最少用（B）只小白鼠，在1小时内一定可以找出至少14瓶无毒的水', 'option', '3', null);
INSERT INTO `question` VALUES ('189', '4', '有一台4核CPU的服务器，上面运行着1种在线服务。如果该在线服务器处理一个请求在非独立IO上的等待时间和CPU计算上消耗的时间比2:1，假定IO宽带充足，那么至少开（C）个线程能最大性能地使用该服务器', 'option', '3', null);
INSERT INTO `question` VALUES ('190', '4', '有一种语言称为lua，里面的数字只有1种类型（number），实际上是双精度浮点数。没有各种位数的整数，如32位，64位整数等，那么关于该语言的说法错误的是', 'option', '3', null);
INSERT INTO `question` VALUES ('191', '4', '一个在线服务器通常需要读取存储着海量数据的数据库。为了提高服务器处理速度，通常需要加cache（缓存），以下场景中不适合使用cache的是', 'option', '3', null);
INSERT INTO `question` VALUES ('192', '4', '如下有一段神奇的代码实现的功能是int miracle (unsigned int n){int m=n==0?0:1;while(n=(n&(n-1))){m++;}return m;}', 'option', '3', null);
INSERT INTO `question` VALUES ('193', '4', '有1023个两两不同的整数，取值范围是1到1024，其按位异或的结果的取值范围是', 'option', '3', null);
INSERT INTO `question` VALUES ('194', '4', '七夕节n对恋人（n>=2)围成一圈举行篝火晚会，晚会的规则是：男女相间，且每对恋人处在相邻的位置，请问有多少种不同的圈子？', 'option', '3', null);
INSERT INTO `question` VALUES ('195', '4', '星期天有10个朋友约好一起郊游，在车站的集合时间是早晨9:50:00到10:00:00。已知每个人到达车站的时间是9:50:00到10:00：00内的均匀分布，且彼此独立。那么最后一个人最有可能到达的时间是', 'option', '3', null);
INSERT INTO `question` VALUES ('196', '4', '已知某国家每年出生人口数每年递增3%，且男女比例为1:1,。如果每个男性都希望找到比自己小0.5到3岁的女性结婚，且每个女性都希望找比自己大0.5到3岁的男性结婚，适婚年龄为20到30岁，那么对该国适婚男女婚配方面的说法正确的是', 'option', '3', null);
INSERT INTO `question` VALUES ('197', '4', '要提高多线程程序的效率，对锁的控制策略非常重要。一种策略是在锁的个数不太多，控制结构不太复杂的情况下，尽可能降低加锁的粒度；另一种策略是在合适的条件下取消用锁。以下情况中不能取消锁的是', 'option', '3', null);
INSERT INTO `question` VALUES ('198', '4', '一颗非空的二叉树的先序遍历序列与后序遍历序列正好相反，则该二叉树可能是', 'option', '3', null);
INSERT INTO `question` VALUES ('199', '4', '以下数字在表示为double（8字节的双精度浮点数）时存在舍入误差的有', 'option', '3', null);
INSERT INTO `question` VALUES ('200', '4', '关于二叉树，下面说法正确的是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('201', '4', ' 假设函数f1的时间复杂度O(n)，那么f1*f1的时间复杂度为(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('202', '4', '对下列四种排序方法，在排序中关键字比较次数与记录初始化顺序无关的是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('203', '4', ' 已知一段文本有1382个字符，使用了1382个字节存储，这段文本全部是由a、b、c、d、e字符组成，a 354次，b 483次，c 227次，d 96次，e 222次，对这5个字符使用哈夫曼编码。则以下说法正确的是？(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('204', '4', '判断单链表有没有环的算法中，至少需要几个指针(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('205', '4', '在编译过程中，产生Parse tree的过程是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('206', '4', '阅读下面代码，\n#include \nvoid f（char **p）{\n   *p += 2;\n}\nvoid main(){\n  char *a[ ]={“123”,”abc”,”456”};\n  **p;\n  p=a;\n  f(p);\n  printf(“%s\\r\\n”,**p);\n}\n程序会打印出来的值是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('207', '4', ' Char p1[] = “Tencent”, void p2 = malloc((10)在32位机器上sizeof(p1)和sizeof(p2)对应的值是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('208', '4', '现在有以下两个函数，\nChar* get Mem(void) {\n   Char * p = “hello world ”; \n   P[5] = 0x0;\n   Return p;\n}\nVoid test(void) {\n   Char *s = 0x0;\n   s = get Mem();\n   Printf(s);\n}\n调用test的结果是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('209', '4', '冯诺依曼体系结构计算机的基本原理是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('210', '4', '下面哪种设计模式的定义为：定义对象间的一种一对多的关系，当一个对象改变时，其他依赖于他的对象都能够得到通知并自动更新。(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('211', '4', '请看一下这一段C++代码，\nChar*p1 = “123456”;\nChar*p2 = (char*)malloc(10);\n如果编译后程序在windows下运行，则以下说法正确的是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('212', '4', '将3个球随机放入4个杯子中，则杯子中球的最大个数为2的概率是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('213', '4', '对n个元素的数组进行快速排序，所需要的二外空间为(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('214', '4', '下面关于编译器与解释器的观点，错误的是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('215', '4', '假设系统中有5太设备，有多个进程需要使用2个设备，假定每个进程一次只能使用一台，则至多允许多少个进程来竞争这5个资源，而不会发生死锁(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('216', '4', '下面哪些协议，存在源端口和目的端口是(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('217', '4', '下列哪些sql是等价的(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('218', '4', '某一磁盘请求序列(磁道号):98、 183、 37、122、14、124、 65、 61，按照先来先服务FCFS磁盘调度对磁盘进行请求服务，假设当前磁头在53道上，则磁臂总移动道数为：(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('219', '4', '将一个C类网络划分为3个子网，每个子网最少要容纳55台主机，使用的子网掩码是(201404)：', 'option', '4', null);
INSERT INTO `question` VALUES ('220', '4', '下列关于计算机硬件的描述，正确的是(201404)：', 'option', '4', null);
INSERT INTO `question` VALUES ('221', '4', '假设有关系模式R(A,B,C,D),其数据依赖集：F={(A,B)- >C,C->D},则关系模式R的规范化程度最高达到(201404)：', 'option', '4', null);
INSERT INTO `question` VALUES ('222', '4', '以下为一段浏览器中可运行的Javascript 代码，\nVar obj = { “key”:”1”,”value”:2};\nVar newObj = obj;\nnewObj.value += obj.key;\nalert(obj.value);\n则运行该段Javascript代码的页面弹出框中显示的结果是(201404)：', 'option', '4', null);
INSERT INTO `question` VALUES ('223', '4', '有足够量的2分、5分、1分硬币，如果想凑齐一元钱，可以有多少种方法(201404)', 'option', '4', null);
INSERT INTO `question` VALUES ('224', '4', '操作系统不执行以下哪个操作(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('225', '4', '以下哪个是用于用户拨号认证的(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('226', '4', '下列哪一项用于产生数字签名(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('227', '4', '以下哪个不属于单向哈希表的特征(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('228', '4', '以下哪个语句打印出来的结果时false(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('229', '4', '在退出unix系统账户之后还需要继续运行某个进程，那么可用(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('230', '4', '对有序数组{2、11、15、19、30、32、61、72、88、90、96}进行二分查找，则成功找到15需比较多少次(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('231', '4', '具有n个顶点的有向图，所有顶点的出度之和为m，则所有顶点的入度之和为(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('232', '4', '一棵有12个节点的完全二叉树，其深度是(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('233', '4', '数据结构从逻辑上分为哪两大类(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('234', '4', '一个具有20个叶子节点的二叉树、它有多少个度为2的节点(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('235', '4', '一个完全二叉树总共有289个结点，则该二叉树中的叶子节点数为(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('236', '4', '一个文件包含了200个记录，若采用分块查找法，每块长度为4，则平均查找长度为(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('237', '4', '一个具有8个顶点的连通无向图，最多有几条边(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('238', '4', '已知数组{46、36、65、97、76、15、29}，以46为关键字进行一趟快速排序后，结果为(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('239', '4', '以下对顺序文件描述错误的是(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('240', '4', '线性表如果要频繁的执行插入和删除操作，该线性表采取的存储结构应该是(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('241', '4', '下列排序方法中，辅助空间为O（n）的是(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('242', '4', '下列排序方法中，属于稳定排序的是(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('243', '4', '下列数据结构不是多型数据类型的是(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('244', '4', '从表中任意一个节点出发可以依次访问到表中其他所有节点的结构是(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('245', '4', '采用顺序存储的栈，执行入栈运算，栈顶指针的变化是(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('246', '4', '若让元素A、B、C依次进栈，则出栈次序不可能出现哪种情况(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('247', '4', '图的广度优先搜索算法需使用的辅助数据结构为(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('248', '4', '下列哪种方式不是实现防火墙的主流技术(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('249', '4', '既可以用于黑盒测试，也可以用于白盒测试的方法(201409)', 'option', '4', null);
INSERT INTO `question` VALUES ('250', '4', '已知一棵二叉树，如果先序遍历的节点顺序是ADCEFGHB，中序遍历是CDFEGHAB，则后序遍历结果为(201310)：', 'option', '4', null);
INSERT INTO `question` VALUES ('251', '4', ' 下列哪两个数据结构，同时具有较高的查找和删除性能？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('252', '4', '下列排序算法中，哪些时间复杂度不会超过nlogn？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('253', '4', '初始序列为1 8 6 2 5 4 7 3一组数采用堆排序，当建堆（小根堆）完毕时，堆所对应的二叉树中序遍历序列为(201310)：', 'option', '4', null);
INSERT INTO `question` VALUES ('254', '4', '当n=5时，下列函数\n int foo(int n)  {  \n   if(n<2)return n;  \n   return foo(n-1)+foo(n-2); \n}\n的返回值是(201310)：', 'option', '4', null);
INSERT INTO `question` VALUES ('255', '4', 'S市A，B共有两个区，人口比例为3：5，据历史统计A的犯罪率为0.01%，B区为0.015%，现有一起新案件发生在S市，那么案件发生在A区的可能性有多大？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('256', '4', 'Unix系统中，哪些可以用于进程间的通信？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('257', '4', '静态变量通常存储在进程哪个区？(201310)v', 'option', '4', null);
INSERT INTO `question` VALUES ('258', '4', 'IP地址131.153.12.71是一个（）类IP地址(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('259', '4', '下推自动识别机的语言是(201310)：', 'option', '4', null);
INSERT INTO `question` VALUES ('260', '4', '下列程序的输出是\n#define add(a+b) a+b \nint main(){\n  printf(“%d\\n”,5*add(3+4)); \n  return 0;\n} (201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('261', '4', '浏览器访问某页面，HTTP协议返回状态码为403时表示(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('262', '4', '如果某系统15*4=112成立，则系统采用的是（）进制(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('263', '4', '某段文本中各个字母出现的频率分别是{a:4，b:3，o:12，h:7，i:10}，使用哈夫曼编码，则哪种是可能的编码(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('264', '4', ' TCP和IP分别对应了OSI中的哪几层？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('265', '4', '一个栈的入栈序列是A,B,C,D,E，则栈的不可能的输出序列是？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('266', '4', '同一进程下的线程可以共享以下？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('267', '4', '对于派生类的构造函数，在定义对象时构造函数的执行顺序为？1：成员对象的构造函数2：基类的构造函数3：派生类本身的构造函数(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('268', '4', '如何减少换页错误？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('269', '4', '递归函数最终会结束，那么这个函数一定？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('270', '4', '编译过程中，语法分析器的任务是(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('271', '4', '同步机制应该遵循哪些基本准则？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('272', '4', '进程进入等待状态有哪几种方式？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('273', '4', '设计模式中，属于结构型模式的有哪些？(201310)', 'option', '4', null);
INSERT INTO `question` VALUES ('274', '4', '32位机上根据下面的代码，问哪些说法是正确的？\nsigned char a = 0xe0;\nunsigned int b = a;\nunsigned char c = a;(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('275', '4', '下面哪些选项能编译通过？\nint i;\nchar a[10];\nstring f();\nstring g(string &str);(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('276', '4', 'int a[10]; 问下面哪些不可以表示 a[1] 的地址？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('277', '4', '问下面的数据都存放在哪些存储区？\nint main(){\nchar *p=“hello,world\";\nreturn 0;\n}(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('278', '4', '假设在一个 32 位 little endian 的机器上运行下面的程序，结果是多少？\n#include <stdio.h>\nint main(){\n  long long a = 1, b = 2, c = 3; \n  printf(\"%d %d %d\\n\", a, b, c);  \n return 0;\n}(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('279', '4', '下面哪些函数调用必须进入内核才能完成？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('280', '4', '内存管理中的 LRU 方法是用来管理什么的？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('281', '4', '关于DMA 的说法，哪些是错误的？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('282', '4', '死锁发生的必要条件？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('283', '4', '有两个线程，最初 n=0，一个线程执行 n++; n++; 另一个执行 n+=2; 问，最后可能的 n 值？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('284', '4', '下面哪些说法正确？(201304) ', 'option', '4', null);
INSERT INTO `question` VALUES ('285', '4', '基于比较的排序的时间复杂度下限是多少?(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('286', '4', '求 n 个数中的最大值和最小值，最少的比较次数是？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('287', '4', '一棵二叉树的先序遍历是 f b a c d e g h，中序遍历是 a b d c e f g h，问后序遍历是什么？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('288', '4', '高内聚和低耦合，下面哪个耦合度最高？(201304)', 'option', '4', null);
INSERT INTO `question` VALUES ('304', '4', 'Which of the following calling convention(s) support(s) supportvariable-length parameter(e.g. printf)?(201304)', 'option', '5', 0xE9A298E8A681E6B182E98089E587BAE5838F7072696E7466E4B880E6A0B7E694AFE68C81E58F98E995BFE58F82E695B0E79A84E587BDE695B0E8B083E794A8E7BAA6E5AE9AE380820A0A312EE4BB80E4B988E698AFE587BDE695B0E8B083E794A8E7BAA6E5AE9AEFBC9F0A0AE7AD94EFBC9AE5BD93E4B880E4B8AAE587BDE695B0E8A2ABE8B083E794A8E697B6EFBC8CE587BDE695B0E79A84E58F82E695B0E4BC9AE8A2ABE4BCA0E98092E7BB99E8A2ABE8B083E794A8E79A84E587BDE695B0EFBC8CE5908CE697B6E587BDE695B0E79A84E8BF94E59B9EE580BCE4BC9AE8A2ABE8BF94E59B9EE7BB99E8B083E794A8E587BDE695B0E38082E587BDE695B0E79A84E8B083E794A8E7BAA6E5AE9AE5B0B1E698AFE794A8E69DA5E68F8FE8BFB0E58F82E695B0EFBC88E8BF94E59B9EE580BCEFBC89E698AFE6808EE4B988E4BCA0E98092E5B9B6E4B894E794B1E8B081E69DA5E5B9B3E8A1A1E5A086E6A088E79A84E380820A0A322EE5B8B8E8A781E79A84E587BDE695B0E8B083E794A8E7BAA6E5AE9AE69C89E593AAE4BA9BEFBC9F0A0AE7AD94EFBC9A5F5F73746463616C6CEFBC8C5F5F636465636CEFBC8C5F5F6661737463616C6CEFBC8C5F5F7468697363616C6CEFBC8C5F5F6E616B656463616C6CEFBC8C5F5F70617363616C0A0A2020202020E68C89E58F82E695B0E79A84E4BCA0E98092E9A1BAE5BA8FE5AFB9E8BF99E4BA9BE7BAA6E5AE9AE58FAFE58892E58886E4B8BAEFBC9A0A202020202020202020202061292EE4BB8EE58FB3E588B0E5B7A6E4BE9DE6ACA1E585A5E6A088EFBC9A5F5F73746463616C6CEFBC8C5F5F636465636CEFBC8C5F5F7468697363616C6C0A202020202020202020202062292EE4BB8EE5B7A6E588B0E58FB3E4BE9DE6ACA1E585A5E6A088EFBC9A5F5F70617363616CEFBC8C5F5F6661737463616C6C0A0A332EE694AFE68C81E58F98E995BFE79A84E587BDE695B0E8B083E794A8E7BAA6E5AE9AE69C89E593AAE4BA9BEFBC9F0A0AE7AD94EFBC9A5F5F636465636CEFBC8CE5B8A6E69C89E58F98E995BFE58F82E695B0E79A84E587BDE695B0E5BF85E9A1BBE698AF636465636CE8B083E794A8E7BAA6E5AE9AEFBC8CE794B1E587BDE695B0E79A84E8B083E794A8E88085E69DA5E6B885E999A4E6A088EFBC8CE58F82E695B0E585A5E6A088E79A84E9A1BAE5BA8FE698AFE4BB8EE58FB3E588B0E5B7A620);
INSERT INTO `question` VALUES ('305', '4', 'What\'s the output of the following code(201304)?\nclass A{\n  public: virtual void f() {\n  cout<<\"A::f()\"<<endl;\n}\n  void f() const{\n    cout<<\"A::f() const\"<<endl;\n}};\nclass B: public A{\n  public:void f(){\n  cout<<\"B::f()\"<<endl;\n}\n  void f() const{\n  cout<<\"B::f() const\"<<endl;\n}};\n  void g(const A* a){a->f();}\n   int main(){\n    A* a = new B();\n    a->f();\n    g(a);\n   delete a ;\n}', 'option', '5', 0xE69CACE9A298E4B8BBE8A681E88083E5AF9F432B2BE79A84E9878DE8BDBDE4B88EE5A49AE68081E380820A0A312E432B2BE79A84E5A49AE68081E680A7E698AFE5A682E4BD95E4BD93E78EB0E79A84EFBC9F0A0AE7AD94EFBC9A20E59CA8432B2BE4B8ADEFBC8CE5A49AE68081E680A7E4BB85E794A8E4BA8EE9809AE8BF87E7BBA7E689BFE8808CE79BB8E585B3E88194E79A84E7B1BBE59E8BE79A84E5BC95E794A8E68896E68C87E99288E380820A0A20202020E9809AE8BF87E7BBA7E689BFE68891E4BBACE883BDE5A49FE5AE9AE4B989E8BF99E6A0B7E79A84E7B1BBEFBC8CE5AE83E4BBACE5AFB9E7B1BBE59E8BE4B98BE997B4E79A84E585B3E7B3BBE5BBBAE6A8A1EFBC8CE585B1E4BAABE585ACE585B1E79A84E4B89CE8A5BFEFBC8CE4BB85E4BB85E789B9E58C96E69CACE8B4A8E4B88AE4B88DE5908CE79A84E4B89CE8A5BFE38082E6B4BEE7949FE7B1BBE883BDE5A49FE7BBA7E689BFE59FBAE7B1BBE5AE9AE4B989E79A84E68890E59198EFBC9BE6B4BEE7949FE7B1BBE58FAFE4BBA5E697A0E99C80E694B9E58F98E8808CE4BDBFE794A8E982A3E4BA9BE9B1BCE6B4BEE7949FE7B1BBE59E8BE585B7E4BD93E4B88DE79BB8E585B3E79A84E6938DE4BD9CEFBC9BE6B4BEE7949FE7B1BBE58FAFE4BBA5E9878DE5AE9AE4B989E982A3E4BA9BE4B88EE6B4BEE7949FE7B1BBE59E8BE79BB8E585B3E79A84E68890E59198E587BDE695B0EFBC8CE5B086E587BDE695B0E789B9E58C96EFBC8CE88083E89991E6B4BEE7949FE7B1BBE59E8BE79A84E789B9E680A7EFBC9BE69C80E5908EEFBC8CE999A4E4BA86E4BB8EE59FBAE7B1BBE7BBA7E689BFE79A84E68890E59198E4B98BE5A496EFBC8CE6B4BEE7949FE7B1BBE8BF98E58FAFE4BBA5E5AE9AE4B989E69BB4E5A49AE79A84E68890E59198E380820A0A2020202020E59CA8432B2BE4B8ADEFBC8CE59FBAE7B1BBE5BF85E9A1BBE68C87E587BAE5B88CE69C9BE6B4BEE7949FE7B1BBE9878DE5AE9AE4B989E593AAE4BA9BE587BDE695B0EFBC8CE5AE9AE4B989E4B8BA7669727475616CE79A84E587BDE695B0E698AFE59FBAE7B1BBE69C9FE5BE85E6B4BEE7949FE7B1BBE9878DE696B0E5AE9AE4B989E79A84EFBC8CE59FBAE7B1BBE5B88CE69C9BE6B4BEE7949FE7B1BBE7BBA7E689BFE79A84E587BDE695B0E4B88DE883BDE5AE9AE4B989E4B8BAE8999AE587BDE695B0E380820A0A20202020E9809AE8BF87E58AA8E68081E7BB91E5AE9AE68891E4BBACE883BDE5A49FE7BC96E58699E7A88BE5BA8FE4BDBFE794A8E7BBA7E689BFE5B182E6ACA1E4B8ADE4BBBBE6848FE7B1BBE59E8BE79A84E5AFB9E8B1A1EFBC8CE697A0E99C80E585B3E5BF83E5AFB9E8B1A1E79A84E585B7E4BD93E7B1BBE59E8BE38082E4BDBFE794A8E8BF99E4BA9BE7B1BBE79A84E7A88BE5BA8FE697A0E99C80E58CBAE58886E587BDE695B0E698AFE59CA8E7A7AFE7B4AFE8BF98E698AFE59CA8E6B4BEE7949FE7B1BBE4B8ADE5AE9AE4B989E79A84E380820A0AE38080E38080E59CA8432B2BE4B8ADEFBC8CE9809AE8BF87E59FBAE7B1BBE79A84E5BC95E794A8EFBC88E68896E68C87E99288EFBC89E8B083E794A8E8999AE587BDE695B0E697B6EFBC8CE58F91E7949FE58AA8E68081E7BB91E5AE9AE38082E5BC95E794A8EFBC88E68896E68C87E99288EFBC89E697A2E58FAFE4BBA5E68C87E59091E59FBAE7B1BBE5AFB9E8B1A1E4B99FE58FAFE4BBA5E68C87E59091E6B4BEE7949FE7B1BBE5AFB9E8B1A1EFBC8CE8BF99E4B880E4BA8BE5AE9EE698AFE58AA8E68081E7BB91E5AE9AE79A84E585B3E994AEE38082E794A8E5BC95E794A8EFBC88E68896EFBC89E68C87E99288E8B083E794A8E79A84E8999AE587BDE695B0E59CA8E8BF90E8A18CE697B6E7A1AEE5AE9AEFBC8CE8A2ABE8B083E794A8E79A84E587BDE695B0E698AFE5BC95E794A8EFBC88E68896E68C87E99288EFBC89E68980E68C87E5AFB9E8B1A1E79A84E5AE9EE99985E7B1BBE59E8BE68980E5AE9AE4B989E79A84E380820A0A202020E69CACE4BE8BE4B8ADE4BBA3E7A081E5908CE58AA8E68081E7BB91E5AE9AE79BB8E585B3E88194E79A84E4BBA3E7A081E4B8BAEFBC9A0A0A412A2061203D206E6577204228293B0A612D3E6628293B200A0AE59FBAE7B1BB41E5B086E587BDE695B0766F696420662829E5AE9AE4B989E4B8BA7669727475616CE7B1BBE59E8BEFBC8C41E79A84E6B4BEE7949FE7B1BB42E9878DE696B0E5AE9AE4B989766F696420662829E587BDE695B0EFBC8CE8BF99E4B880E782B9E4B8BBE8A681E5BA94E794A8E4BA86E7BBA7E689BFE8BF99E4B880E789B9E680A7E380820AE38080E38080E59CA86D61696E2829E587BDE695B0E4B8ADEFBC8CE5AE9AE4B989E4B880E4B8AA41E7B1BBE59E8BE79A84E68C87E9928861EFBC8CE5B086E585B6E68C87E59091E6B4BEE7949FE7B1BB42EFBC8CE784B6E5908EE8B083E794A8612D3E662829E5AE9EE8B4A8E4B88AE5BA94E794A8E79A84E5B0B1E698AFE58AA8E68081E7BB91E5AE9AE4BA86EFBC8CE58DB3E2809CE794A8E5BC95E794A8EFBC88E68896EFBC89E68C87E99288E8B083E794A8E79A84E8999AE587BDE695B0E59CA8E8BF90E8A18CE697B6E7A1AEE5AE9AEFBC8CE8A2ABE8B083E794A8E79A84E587BDE695B0E698AFE5BC95E794A8EFBC88E68896E68C87E99288EFBC89E68980E68C87E5AFB9E8B1A1E79A84E5AE9EE99985E7B1BBE59E8BE68980E5AE9AE4B989E79A84E2809DEFBC8CE69585E7ACACE4B880E6ACA1E8BE93E587BAE4B8BAEFBC9A423A3A662829E380820A0AE38080E38080E6ADA4E5A496EFBC8C432B2BE4B8ADE79A84E587BDE695B0E8B083E794A8E9BB98E8AEA4E4B88DE4BDBFE794A8E58AA8E68081E7BB91E5AE9AE38082E8A681E8A7A6E58F91E58AA8E68081E7BB91E5AE9AEFBC8CE5BF85E9A1BBE6BBA1E8B6B3E4B8A4E4B8AAE69DA1E4BBB6EFBC9AE7ACACE4B880EFBC8CE58FAAE69C89E68C87E5AE9AE4B8BAE8999AE587BDE695B0E79A84E68890E59198E587BDE695B0E6898DE883BDE8BF9BE8A18CE58AA8E68081E7BB91E5AE9AEFBC8CE68890E59198E587BDE695B0E9BB98E8AEA4E4B8BAE99D9EE8999AE587BDE695B0EFBC8CE99D9EE8999AE587BDE695B0E4B88DE8BF9BE8A18CE58AA8E68081E7BB91E5AE9AEFBC9BE7ACACE4BA8CEFBC8CE5BF85E9A1BBE9809AE8BF87E59FBAE7B1BBE7B1BBE59E8BE79A84E5BC95E794A8E68896E68C87E99288E8BF9BE8A18CE587BDE695B0E8B083E794A8E380820A0A322EE9878DE8BDBDE587BDE695B00A0AE38080E38080E5AE9AE4B989EFBC9AE587BAE78EB0E59CA8E79BB8E5908CE79A84E4BD9CE794A8E59F9FE4B8ADE79A84E4B8A4E4B8AAE587BDE695B0EFBC8CE5A682E69E9CE585B7E69C89E79BB8E5908CE79A84E5908DE5AD97E8808CE5BDA2E58F82E8A1A8E4B88DE794A8EFBC8CE58899E68890E4B8BAE587BDE695B0E9878DE8BDBDE38082E6B3A8E6848FE587BDE695B0E9878DE8BDBDE4B88DE883BDE59FBAE4BA8EE4B88DE5908CE79A84E8BF94E59B9EE580BCE7B1BBE59E8BE8BF9BE8A18CE9878DE8BDBDE38082E5908CE697B6E6B3A8E6848FE587BDE695B0E9878DE8BDBDE4B8ADE79A84E2809CE5BDA2E58F82E8A1A8E2809DE4B88DE5908CEFBC8CE698AFE68C87E69CACE8B4A8E4B88DE5908CEFBC8CE4B88DE8A681E8A2ABE4B880E4BA9BE8A1A8E8B1A1E8BFB7E68391E380826D61696EE587BDE695B0E4B88DE883BDE8A2ABE9878DE8BDBDE38082E69CACE4BE8BE4B8ADE79A84E59FBAE7B1BB41E5928CE6B4BEE7949FE7B1BBE983BDE5AD98E59CA8E79D80E9878DE8BDBDEFBC8CE4BBA5E59FBAE7B1BB41E4B8BAE4BE8BE8BF9BE8A18CE8AFB4E6988EEFBC9A0AE5A48DE588B6E4BBA3E7A0810A0A636C617373204120200A7B20200A7075626C69633A0A202020207669727475616C20766F69642066282920200A202020207B0A2020202020202020636F75743C3C22413A3A662829223B20200A202020207D20200A20202020766F69642066282920636F6E737420200A202020207B0A2020202020202020636F75743C3C22413A3A66282920636F6E7374223C3C656E646C3B20200A202020207D20200A7D3B200A0AE5A48DE588B6E4BBA3E7A0810A0AE38080E38080E4BB8EE4BBA3E7A081E4B8ADE58FAFE4BBA5E79C8BE588B0E59CA841E7B1BBE4B8ADEFBC8C662829E587BDE695B0E698AFE58F91E7949FE9878DE8BDBDE4BA86EFBC8CE8808CE4B894E698AFE59088E6B395E79A84E38082E59CA8E8B083E794A8E697B6EFBC8CE58FAAE794A841E7B1BBE79A84636F6E7374E5AFB9E8B1A1E6898DE883BDE8B083E794A8636F6E7374E78988E69CACE79A8466E587BDE695B0EFBC8CE8808CE99D9E636F6E7374E5AFB9E8B1A1E58FAFE4BBA5E8B083E794A8E4BBBBE6848FE4B880E7A78DEFBC8CE9809AE5B8B8E99D9E636F6E7374E5AFB9E8B1A1E8B083E794A8E4B88DE698AF636F6E7374E78988E69CACE79A84662829E587BDE695B0E380820A0AE38080E38080E698AFE4B88DE698AFE6849FE588B0E5BE88E59BB0E68391E4BA86EFBC8CE68C89E785A7E9878DE8BDBDE587BDE695B0E79A84E5AE9AE4B989E79FA5E4B88DE5908CE8BF94E59B9EE580BCE7B1BBE59E8BE79A84E587BDE695B0E4B88DE883BDE8BF9BE8A18CE9878DE8BDBDEFBC8CE8BF99E9878CE4B8BAE4BB80E4B988E58F88E698AFE9878DE8BDBDE591A2EFBC9F0A0AE38080E38080E8BF99E9878CE58FAFE4BBA5E9878DE8BDBDE79A84E58E9FE59BA0E698AFEFBC9AE68C89E785A7E587BDE695B0E9878DE8BDBDE79A84E5AE9AE4B989EFBC8CE587BDE695B0E5908DE79BB8E5908CE8808CE5BDA2E58F82E8A1A8E69C89E69CACE8B4A8E4B88DE5908CE79A84E587BDE695B0E7A7B0E4B8BAE9878DE8BDBDE38082E59CA8E7B1BBE4B8ADEFBC8CE794B1E4BA8EE99A90E590ABE79A8474686973E5BDA2E58F82E79A84E5AD98E59CA8EFBC8C636F6E7374E78988E69CACE79A84662829E587BDE695B0E4BDBFE5BE97E4BD9CE4B8BAE5BDA2E58F82E79A8474686973E68C87E99288E79A84E7B1BBE59E8BE58F98E4B8BAE68C87E59091636F6E7374E5AFB9E8B1A1E79A84E68C87E99288EFBC8CE8808CE99D9E636F6E7374E78988E69CACE79A84E4BDBFE5BE97E4BD9CE4B8BAE5BDA2E58F82E79A8474686973E68C87E99288E5B0B1E698AFE6ADA3E5B8B8E78988E69CACE79A84E68C87E99288E38082E6ADA4E5A484E698AFE58F91E7949FE9878DE8BDBDE79A84E69CACE8B4A8E38082E9878DE8BDBDE587BDE695B0E59CA8E69C80E4BDB3E58CB9E9858DE8BF87E7A88BE4B8ADEFBC8CE5AFB9E4BA8E636F6E7374E5AFB9E8B1A1E8B083E794A8E79A84E5B0B1E98089E58F96636F6E7374E78988E69CACE79A84E68890E59198E587BDE695B0EFBC8CE8808CE699AEE9809AE79A84E5AFB9E8B1A1E8B083E794A8E5B0B1E98089E58F96E99D9E636F6E7374E78988E69CACE79A84E68890E59198E587BDE695B0E380820A0AEFBC88E6B3A8EFBC9A74686973E68C87E99288E698AFE4B880E4B8AA636F6E7374E68C87E99288EFBC8CE59CB0E59D80E4B88DE883BDE694B9EFBC8CE4BD86E883BDE694B9E58F98E585B6E68C87E59091E79A84E5AFB9E8B1A1E68896E88085E58F98E9878FEFBC890A0AE8A7A3E7AD94EFBC9AE9A696E58588EFBC8CE4B8A4E4B8AAE68890E59198E587BDE695B0E5A682E69E9CE58FAAE698AFE5B8B8E9878FE680A7E4B88DE5908CEFBC8CE58FAFE4BBA5E8A2ABE9878DE8BDBDE380820AE58588E79C8B6D61696EE587BDE695B0E4B8ADE79A84612D3E662829EFBC8CE794B1E4BA8E61E4B88DE698AFE5B8B8E9878FE79A84E68C87E99288EFBC8CE68980E4BBA5E7BC96E8AF91E599A8E9A696E58588E58CB9E9858DE588B0E79A84E698AF766F696420662829EFBC8CE794B1E4BA8EE6ADA4E587BDE695B0E698AFE8999AE587BDE695B0EFBC8CE59BA0E6ADA4E5AE9EE8A18CE58AA8E68081E7BB91E5AE9AEFBC8CE59BA0E4B8BA61E68980E68C87E79A84E5AE9EE99985E7B1BBE59E8BE698AF636C6173732042EFBC8CE68980E4BBA5E689A7E8A18CE8BF87E7A88BE4B8ADE5AE9EE99985E8B083E794A8E79A84E698AF766F696420423A3A662829E380820AE587BDE695B067E4B8ADE79A84E8B083E794A8EFBC8CE59BA0E4B8BAE58F82E695B061E698AF636F6E737420412AEFBC8CE68980E4BBA5612D3E662829E58CB9E9858DE79A84E698AF766F69642066282920636F6E7374EFBC8CE794B1E4BA8EE8AFA5E587BDE695B0E4B88DE698AFE8999AE587BDE695B0EFBC8CE59BA0E6ADA4E689A7E8A18CE99D99E68081E7BB91E5AE9AEFBC8C61E68980E68C87E79A84E99D99E68081E7B1BBE59E8BE698AF636C6173732041EFBC8CE68980E4BBA5E689A7E8A18CE79A84E698AF766F696420413A3A66282920636F6E7374E38082);
INSERT INTO `question` VALUES ('306', '4', 'What is the difference between a linked list and an array?(201304)', 'option', '5', 0xE69CACE9A298E88083E69FA5E59FBAE69CACE79A84E695B0E68DAEE7BB93E69E84E58685E5AEB9EFBC8CE6AF94E8BE83E993BEE8A1A8E5928CE695B0E7BB84E79A84E58CBAE588ABE38082E4B88BE99DA2E4BB8EE980BBE8BE91E7BB93E69E84E5928CE58685E5AD98E5AD98E582A820E4B8A4E4B8AAE696B9E99DA2E8BF9BE8A18CE8AFA6E7BB86E79A84E68F8FE8BFB0EFBC9A0A0A20202020E4BB8EE980BBE8BE91E7BB93E69E84E69DA5E79C8B0A0A2020202020202020E695B0E7BB84E5BF85E9A1BBE4BA8BE58588E5AE9AE4B989E59BBAE5AE9AE79A84E995BFE5BAA6EFBC8CE58DB3E58583E7B4A0E79A84E4B8AAE695B0EFBC8CE4B88DE883BDE98082E5BA94E695B0E68DAEE79A84E58AA8E68081E5A29EE5878FEFBC9B0A2020202020202020E993BEE8A1A8E58AA8E68081E59CB0E58886E9858DE5AD98E582A8E7A9BAE997B4EFBC8CE58FAFE4BBA5E98082E5BA94E695B0E68DAEE58AA8E68081E79A84E5A29EE5878FE380820A0AE38080E38080E8BF99E7A78DE980BBE8BE91E7BB93E69E84E5AFBCE887B4E79A84E7BB93E69E9CEFBC9A0AE38080E38080E38080E3808031EFBC89E99A8FE69CBAE8AEBFE997AEE69588E78E87E4B88DE5908CEFBC9AE695B0E7BB84E58FAFE4BBA5E6A0B9E68DAEE4B88BE6A087E79BB4E68EA5E5AD98E58F96E695B0E68DAEEFBC8CE5AE9EE78EB0E9AB98E69588E79A84E99A8FE69CBAE8AEBFE997AEEFBC8CE8808CE993BEE8A1A8E5BF85E9A1BBE9809AE8BF87E9818DE58E86E88A82E782B9E6898DE883BDE58F96E5BE97E695B0E68DAEE380820AE38080E38080E38080E3808032EFBC89E695B0E68DAEE59FBAE69CACE69C89E5BA8FE79A84E68385E586B5E4B88BE69FA5E689BEE695B0E68DAEE79A84E697B6E997B4E69588E78E87E4B99FE4B88DE5908CEFBC9AE59CA8E695B0E68DAEE59FBAE69CACE69C89E5BA8FE79A84E68385E586B5E4B88BE8AEBFE997AEE695B0E7BB84E58FAFE4BBA5E588A9E794A8E68A98E58D8AE69FA5E689BEE696B9E6B395E58588E7A1AEE5AE9AE4B88BE6A087EFBC8CE784B6E5908EE9809AE8BF87E4B88BE6A087E5BFABE9809FE5BE97E588B0E695B0E68DAEEFBC8CE8808CE993BEE8A1A8E58899E99C80E8A681E9818DE58E86E695B4E4B8AAE8A1A8E6898DE883BDE5BE97E588B0E695B0E68DAEEFBC9B0AE38080E38080E38080E3808033EFBC89E58AA8E68081E68F92E585A5E5928CE588A0E999A4E79A84E69588E78E87E4B88DE5908CEFBC9AE695B0E7BB84E4B8ADE68F92E585A5E38081E588A0E999A4E695B0E68DAEE9A1B9E697B6EFBC8CE99C80E8A681E7A7BBE58AA8E585B6E4BB96E695B0E68DAEE9A1B9EFBC8CE99D9EE5B8B8E7B981E79090EFBC9BE8808CE993BEE8A1A8E58FAFE4BBA5E6A0B9E68DAE6E657874E68C87E99288E689BEE588B0E4B88BE4B880E4B8AAE58583E7B4A0EFBC8CE5AE9EE78EB0E58AA8E68081E79A84E68F92E585A5E5928CE588A0E999A4E69588E78E87E8BE83E9AB98E380820A0A2020202020202020E4BB8EE58685E5AD98E5AD98E582A8E69DA5E79C8B0A202020202020202020202020EFBC88E99D99E68081EFBC89E695B0E7BB84E4BB8EE6A088E4B8ADE58886E9858DE7A9BAE997B4EFBC8CE887AAE794B1E5BAA6E5B08FEFBC8CE5B9B6E4B894E695B0E7BB84E79A84E59084E4B8AAE58583E7B4A0E4B98BE997B4E79A84E789A9E79086E4BD8DE7BDAEE698AFE79BB8E982BBE79A84E380820A202020202020202020202020E993BEE8A1A8E4BB8EE5A086E4B8ADE58886E9858DE7A9BAE997B4EFBC8CE887AAE794B1E5BAA6E5A4A7EFBC8CE993BEE8A1A8E4B8ADE59084E4B8AAE88A82E782B9E79A84E789A9E79086E4BD8DE7BDAEE58FAFE4BBA5E4B88DE698AFE79BB8E982BBE79A84E380820A);
INSERT INTO `question` VALUES ('307', '4', 'About the Thread and Process in Windows, which description(s) is(are) correct:(201304)', 'option', '5', 0xE8A7A3E7AD94EFBC9AE6ADA4E9A298E88083E5AF9FE8BF9BE7A88BE4B88EE7BABFE7A88BE79A84E6A682E5BFB5E380820AE8BF9BE7A88BE698AFE7B3BBE7BB9FE8BF9BE8A18CE8B584E6BA90E58886E9858DE79A84E59FBAE69CACE58D95E4BD8DEFBC8CE69C89E78BACE7AB8BE79A84E58685E5AD98E59CB0E59D80E7A9BAE997B4EFBC9BE7BABFE7A88BE698AF435055E8B083E5BAA6E79A84E59FBAE69CACE58D95E4BD8DEFBC8CE6B2A1E69C89E58D95E78BACE59CB0E59D80E7A9BAE997B4EFBC8CE69C89E78BACE7AB8BE79A84E6A088E38081E5B180E983A8E58F98E9878FE38081E5AF84E5AD98E599A8E38081E7A88BE5BA8FE8AEA1E695B0E599A8E7AD89E380820AE5889BE5BBBAE8BF9BE7A88BE79A84E5BC80E99480E5A4A7EFBC8CE58C85E68BACE5889BE5BBBAE8999AE68B9FE59CB0E59D80E7A9BAE997B4E7AD89E99C80E8A681E5A4A7E9878FE7B3BBE7BB9FE8B584E6BA90EFBC9BE5889BE5BBBAE7BABFE7A88BE5BC80E99480E5B08FEFBC8CE59FBAE69CACE4B88AE58FAAE69C89E4B880E4B8AAE58685E6A0B8E5AFB9E8B1A1E5928CE4B880E4B8AAE5A086E6A088E380820AE8BF9BE7A88BE58887E68DA2E5BC80E99480E5A4A7EFBC8CE7BABFE7A88BE58887E68DA2E5BC80E99480E5B08FE38082E8BF9BE7A88BE997B4E9809AE4BFA1E5BC80E99480E5A4A7EFBC8CE7BABFE7A88BE997B4E9809AE4BFA1E5BC80E99480E5B08FE380820AE7BABFE7A88BE5B19EE4BA8EE8BF9BE7A88BEFBC8CE4B88DE883BDE78BACE7AB8BE689A7E8A18CE38082E6AF8FE4B8AAE8BF9BE7A88BE887B3E5B091E69C89E4B880E4B8AAE7BABFE7A88BEFBC8CE68890E4B8BAE4B8BBE7BABFE7A88BE38082);
INSERT INTO `question` VALUES ('308', '4', 'What is the output of the following code?(201304)\n{\n   int x = 10 ;\n   int y = 10 ;\n   x = x++ ;\n   y = ++y ;\n   printf(\"%d, %d\\n\",x,y);\n}', 'option', '5', 0xE69CACE9A298E4B8BBE8A681E88083E5AF9FE9989FE7BC96E7A88BE8AFADE8A880E79A84E59FBAE69CACE8AFADE6B395E79A84E79086E8A7A3E380820A0AE59CA843E8AFADE8A880E5928C432B2BE8AFADE8A880E4B8ADEFBC8CE887AAE5A29EE8BF90E7AE97E7ACA6E79A84E4BDBFE794A8E58FAFE4BBA5E698AFE7A88BE5BA8FE79C8BE79D80E7AE80E6B481EFBC8CE6809DE8B7AFE4B99FE6AF94E8BE83E6B885E699B0E38082E887AAE5A29EE8BF90E7AE97E7ACA6E58F88E58886E4B8BAE5898DE887AAE5A29EE5928CE5908EE887AAE5A29EE4B8A4E7B1BBEFBC8CE58DB3E5AE9AE4B989E4B880E4B8AAE58F98E9878FEFBC8CE5A682696E7420693D31303B0A0AE5898DE887AAE5A29EE58FAFE4BBA5E8A1A8E7A4BAE4B8BAEFBC9A2B2B693B200A0AE5908EE887AAE5A29EE58FAFE4BBA5E8A1A8E7A4BAE4B8BAEFBC9A692B2B3B0A0AE58D95E7BAAFE79A84E79C8BE8BF99E4B8A4E69DA1E8AFADE58FA5EFBC8CE59CA8E689A7E8A18CE5AE8CE6AF95E4B98BE5908E69E580BCE5B9B6E6B2A1E69C89E5A4AAE5A4A7E79A84E58CBAE588ABEFBC8CE59D87E4B8BA3131E38082E4B88BE99DA2E69DA5E782B9E4B88DE5908CE79A84EFBC9A0A0A696E742069203D2031302C206A203D2031303B0A696E7420782C20793B0A78203D20692B2B3B0A79203D202B2B6A3B0A0AE997AE78E5928C79E580BCE698AFE590A6E79BB8E7AD89EFBC9FE7BB93E8AEBAE698AF783D3130EFBC8C793D3131EFBC8CE68980E4BBA5E4BB96E4BBACE4B88DE7AD89E38082E8AFADE58FA578203D20692B2B3BE79A84E689A7E8A18CE6B581E7A88BE698AFE58588E5B08669E580BCE8B58BE7BB9978EFBC88783D3130EFBC89EFBC8CE784B6E5908E69E580BCE5868DE58AA031EFBC88693D3131EFBC89E38082E8808CE8AFADE58FA579203D202B2B6A3BE79A84E6B581E7A88BE58899E698AF6AE58588E58AA031EFBC886A3D3131EFBC89EFBC8CE784B6E5908EE5868DE5B0866AE580BCE8B58BE7BB9979EFBC88793D6A3D3131EFBC89E38082E68980E4BBA5E69CACE9A298E7AD94E6A188E4B8BA44E98089E9A1B9E380820A0AE38080E38080E58FA6E5A496EFBC8CE5819AE4B880E4BA9BE585B3E4BA8E6A617661E8AFADE8A880E5A484E79086E5898DE887AAE5A29EE5928CE5908EE887AAE5A29EE79A84E8A1A5E58585E8AFB4E6988EE380826A617661E8AFADE8A880E4B8AD0A0A696E742069203D2031303B0A69203D20692B2B3B0A73797374656D2E6F75742E7072696E746C6E2869293B0A0AE689A7E8A18CE5A682E4B88AE4BBA3E7A081E8BE93E587BAE7BB93E69E9CE4B8BA3130EFBC8CE68980E4BBA5E5BE88E5A49AE5908CE5ADA6E8AEA4E4B8BAE98089E9A1B942E4B99FE698AFE6ADA3E7A1AEE79A84EFBC8CE4BD86E8BF99E9878CE6B3A8E6848FE9A298E79BAEE4B8ADE8BE93E587BAE8AFADE58FA5E98787E794A8E79A84E698AF7072696E74662829E587BDE695B0EFBC8CE69585E58FAFE4BBA5E79086E8A7A3E4B8BA43E8AFADE8A880E4BBA3E7A081E68896432B2BE4BBA3E7A081EFBC8CE68980E4BBA5E69CACE9A298E79A84E594AFE4B880E8A7A3E4B8BAE98089E9A1B944E380820A0AE8A7A3E7AD94EFBC9AE5898DE7BDAE2B2BE4B88EE5908EE7BDAE2B2BE38082E8BF99E4B8AAE997AEE9A298E4B88DE5908CE7BC96E8AF91E599A8E8A1A8E78EB0E79A84E7BB93E69E9CE5B8B8E5B8B8E69C89E5B7AEE5BC82EFBC8CE789B9E588ABE698AFE5A49AE4BD99E8BF9EE7BBADE5A49AE4B8AAE587BAE78EB0E59CA8E5908CE4B880E4B8AAE8AFADE58FA5E4B8ADE697B6E38082E8BF99E9878CE4BBA5565332303130E79A84E5A484E79086E696B9E5BC8FE4B8BAE4BE8BEFBC8CE4B88DE4BF9DE8AF81E585B6E4BB96E7BC96E8AF91E599A8E4B88BE883BDE5BE97E588B0E79BB8E5908CE7BB93E69E9CE380820A2B2B69E8A1A8E7A4BAEFBC8C69E887AAE5A29E31E5908EE5868DE58F82E4B88EE585B6E5AE83E8BF90E7AE97EFBC9BE8808C692B2B20E58899E698AF69E58F82E4B88EE8BF90E7AE97E5908EEFBC8C69E79A84E580BCE5868DE887AAE5A29E31E38082E887AAE5878FE8BF90E7AE97E7ACA62D2DE4B88EE4B98BE7B1BBE4BCBCE380820AE8AFADE58FA578203D20782B2B3B20565332303130E5B086E585B6E5A484E79086E6889078203D20783B2078203D20782B313B20E5AFB9E5BA94E79A84E6B187E7BC96E4BBA3E7A081E4B8BAEFBC9A0A6D6F762020202020202020206561782C64776F726420707472205B785D20200A6D6F7620202020202020202064776F726420707472205B785D2C65617820200A6D6F762020202020202020206563782C64776F726420707472205B785D20200A6164642020202020202020206563782C3120200A6D6F7620202020202020202064776F726420707472205B785D2C6563780AE8AFADE58FA579203D202B2B793B20565332303130E5B086E585B6E5A484E79086E6889079203D20792B313B2079203D20793B20E5AFB9E5BA94E79A84E6B187E7BC96E4BBA3E7A081E4B8BAEFBC9A0A6D6F762020202020202020206561782C64776F726420707472205B795D20200A6164642020202020202020206561782C3120200A6D6F7620202020202020202064776F726420707472205B795D2C65617820200A6D6F762020202020202020206563782C64776F726420707472205B795D20200A6D6F7620202020202020202064776F726420707472205B795D2C6563780AE68980E4BBA5E7BB93E69E9CE698AF31312C203131E380820AE4B88BE99DA2E79C8BE4B880E4B88BE4BBA5E4B88BE4B8A4E4B8AAE8AFADE58FA5EFBC9A0A696E742061203D2028782B2B292B28782B2B293B0A696E742062203D20282B2B79292B282B2B79293B0AE68C89E785A7E4B88AE99DA2E79A84E696B9E5BC8FEFBC8CE58FAFE4BBA5E8A7A3E9878AE68890EFBC9A0A696E742061203D2078202B20783B0A78203D2078202B20313B0A78203D2078202B20313B0A79203D2079202B20313B0A79203D2079202B20313B0A696E742062203D2079202B20793B0AE69C80E5908E61203D203230EFBC8C79203D203234EFBC88565332303130E7BB93E69E9CEFBC89);
INSERT INTO `question` VALUES ('309', '4', 'For the following Java or C# code\nint [][] myArray3 =new int[3][]{new int[3]{5,6,2},new int[5]{6,9,7,8,3},new int[2]{3,2}};\nWhat will myArray3[2][2]  returns?  (201304)', 'option', '5', 0xE69CACE9A298E88083E69FA5E79A84E698AFE59FBAE69CACE79A84E8AFADE6B395E79FA5E8AF86E38082E697A0E8AEBAE698AF4A617661E8AFADE8A880E8BF98E698AF4323E8AFADE8A880EFBC8CE59CA8E8AEA1E7AE97E69CBAE79A84E59FBAE69CACE8AFADE6B395E4B8ADEFBC8C20E695B0E7BB84E5A78BE7BB88E698AFE4BBA530E5BC80E5A78BEFBC8CE5AFB9E4BA8EE4B880E4B8AAE585B7E69C896EE4B8AAE58583E7B4A0E79A84E4B880E4BD8DE695B0E7BB84EFBC8CE585B6E4B88BE6A087E698AFE4BB8E30E588B06E2D31E38082E59BA0E6ADA4E69CACE4BE8BE4B8ADE5AE9AE4B989E79A84E4BA8CE7BBB4E695B0E7BB846D794172726179335B5D5B5DEFBC8CE7ACACE4B880E4B8AAE58583E7B4A0E5AFB9E5BA94E79A84E4B88BE6A08720E8A1A8E7A4BAE4B8BA6D794172726179335B305D5B305DEFBC8CE997AEE9A298E4B8ADE79A846D794172726179335B325D5B325DE79086E8A7A3E4B8BAE7ACACE4B889E8A18CE7ACACE4B889E4B8AAE58583E7B4A0EFBC8CE69FA5E689BEE58E9FE5A78BE695B0E68DAEE58F91E78EB0EFBC8CE7ACACE4B889E8A18CE4BB85E58C85E590ABE4B8A4E4B8AAE58583E7B4A0EFBC8CE8B685E587BAE4BA86E695B020E7BB84E58FAFE8AEBFE997AEE79A84E4BD8DE7BDAEEFBC8CE58F91E7949FE6BAA2E587BAE38082);
INSERT INTO `question` VALUES ('310', '4', 'Please choose the right statement about const usage:(201304)', 'option', '5', 0xE69CACE9A298E88083E69FA5432B2BE4B8ADE794A8636F6E7374E99990E5AE9AE7ACA6E5928CE68C87E99288E69DA5E4BFAEE9A5B0E5AFB9E8B1A1E697B6EFBC8CE5AFB9E8B1A1E79A84E5B19EE680A7E997AEE9A298E380820A0A20202020636F6E7374E99990E5AE9AE7ACA6E58FAFE4BBA5E5B086E4B880E4B8AAE5AFB9E8B1A1E8BDACE68DA2E68890E4B880E4B8AAE5B8B8E9878FE38082E6B3A8E6848FE59BA0E4B8BAE794A8636F6E7374E99990E5AE9AE7ACA6E5AE9AE4B989E79A84E5B8B8E9878FE59CA8E5AE9AE4B989E5908EE5B0B1E4B88DE883BDE8A2ABE4BFAEE694B9EFBC8CE68980E4BBA5E5AE9AE4B989E697B6E5BF85E9A1BBE5889DE5A78BE58C96E380820A20202020E68C87E59091636F6E7374E5AFB9E8B1A1E79A84E68C87E99288EFBC8C432B2BE8AFADE8A880E5BCBAE588B6E8A681E6B182E68C87E59091636F6E7374E5AFB9E8B1A1E79A84E68C87E99288E4B99FE5BF85E9A1BBE585B7E69C89636F6E7374E789B9E680A7E38082E5A682E69CACE9A298E4B8AD636F6E737420696E74202A61EFBC9BE8BF99E9878CE79A8461E698AFE4B880E4B8AAE68C87E59091696E74E7B1BBE59E8BE79A84636F6E7374E5AFB9E8B1A1E68C87E99288EFBC8C636F6E7374E99990E5AE9AE4BA8661E68C87E99288E68980E68C87E59091E79A84E5AFB9E8B1A1E7B1BBE59E8BEFBC8CE8808CE5B9B6E99D9E61E69CACE8BAABEFBC8CE58DB361E69CACE8BAABE5B9B6E4B88DE698AF636F6E7374E7B1BBE59E8BE38082E5908CE697B6E68A8AE4B880E4B8AA636F6E7374E5AFB9E8B1A1E79A84E59CB0E59D80E8B58BE7BB99E4B880E4B8AAE699AEE9809AE79A84E38081E99D9E636F6E7374E5AFB9E8B1A1E79A84E68C87E99288E4B99FE4BC9AE5AFBCE887B4E7BC96E8AF91E697B6E99499E8AFAFE380820A0AE5A48DE588B6E4BBA3E7A0810A0A636F6E737420696E742072203D20323B0A636F6E737420696E74202A61203D20313B0A2F2F2831290A612B2B3B20202020202020202020202020202020202020202020202020202020202F2F636F72726563740A2A612B2B3B2020202020202020202020202020202020202020202020202020202F2F6572726F72EFBC9A2A61206D6967687420626520636F6E73740A2F2F2832290A636F6E737420696E74202A63707472203D2026723B202020202F2F636F72726563743A2063707472206973206120706F696E74657220746F20636F6E73740A696E74202A707472203D2026723B202020202020202020202020202020202F2F6572726F723A20707472206973206120706C61696E20706F696E7465720A2F2F2833290A636F6E737420766F6964202A7670203D2026723B202020202F2F636F72726563742C767020697320636F6E73740A766F6964202A7076203D2026723B202020202020202020202020202F2F6572726F723A7220697320636F6E73740A0AE5A48DE588B6E4BBA3E7A0810A0A202020202020332E636F6E7374E68C87E99288EFBC9AE999A4E68C87E59091636F6E7374E5AFB9E8B1A1E79A84E68C87E99288E5A496EFBC8C432B2BE8AFADE8A880E8BF98E68F90E4BE9BE4BA86636F6E7374E68C87E99288E28094E28094E69CACE8BAABE79A84E580BCE4B88DE883BDE4BFAEE694B9E380820A0A696E74206572724E756D62203D20303B0A696E74202A636F6E737420637572457272203D20266572724E756D623B20202020202F2F637572457272206973206120636F6E7374616E7420706F696E7465720A0A20202020202020E68891E4BBACE58FAFE4BBA5E5B086637572457272E8AFBBE4BD9CE2809CE68C87E59091696E74E59E8BE5AFB9E8B1A1E79A84636F6E7374E68C87E99288E2809DE38082E58DB3637572457272E4B88DE883BDE68C87E59091E585B6E4BB96E5AFB9E8B1A1EFBC8CE4BBBBE4BD95E4BC81E59BBEE7BB99636F6E7374E68C87E99288E8B58BE580BCE79A84E8A18CE4B8BAE983BDE4BC9AE5AFBCE887B4E7BC96E8AF91E697B6E79A84E99499E8AFAFE38082E58FA6E5A496EFBC8C636F6E7374E68C87E99288E5BF85E9A1BBE59CA8E5AE9AE4B989E697B6E5889DE5A78BE58C96E380820A0A20202020202020342EE5A682E4BD95E8AF86E588AB636F6E7374E68C87E99288E5928CE68C87E59091636F6E7374E5AFB9E8B1A1E79A84E68C87E992883F636F6E7374E99990E5AE9AE7ACA6E697A2E58FAFE4BBA5E694BEE59CA8E7B1BBE59E8BE5898DE4B99FE58FAFE4BBA5E694BEE59CA8E7B1BBE59E8BE5908EEFBC8CE4BD86E5AFB9E4BA8EE99D9EE68C87E99288E7B1BBE59E8BE79A84636F6E7374E99990E5AE9AE7ACA6EFBC8CE694BEE59CA8E7B1BBE59E8BE5898DE5928CE7B1BBE59E8BE5908EE69588E69E9CE79BB8E5908CE38082E5AFB9E4BA8EE697A2E69C89636F6E7374E99990E5AE9AE7ACA6E58F88E69C89E68C87E99288E79A84E68385E586B5E4B88BEFBC8CE68891E4BBACE58FAFE4BBA5E6AF94E8BE832AE5928C636F6E7374E79A84E4BD8DE7BDAEE69DA5E588A4E696ADE4BB96E4BBACE5B19EE4BA8EE982A3E7A78DE7B1BBE59E8BE38082636F6E7374E59CA82AE4B98BE5898DE58899E4B8BAE68C87E59091636F6E7374E5AFB9E8B1A1E79A84E68C87E99288EFBC8C636F6E7374E59CA82AE4B98BE5908EE58899E4B8BA636F6E7374E68C87E99288E38082);
INSERT INTO `question` VALUES ('311', '4', 'Given the following code(201304)\n#include <iostream>  \n    class A  \n    {  \n    public:  \n         long a;  \n    };  \n    class B : public A  \n    {  \n          long b;  \n    };  \n    void seta(A* data, int idx)  \n    {  \n          data[idx].a = 2;  \n    }  \n      \n    int _tmain(int argc, _TCHAR* argv[])  \n    {  \n          B data[4];  \n            \n          for(int i = 0; i < 4; ++i)  \n          {  \n                data[i].a = 1;  \n                data[i].b = 1;  \n                seta(data, i);  \n          }  \n      \n          for(int i = 0; i < 4; ++i)  \n          {  \n               std::cout<<data[i].a<<data[i].b;  \n          }  \n      \n          return 0;  \n    }  ', 'option', '5', 0xE6B58BE8AF95E8BF90E8A18CE7BB93E69E9CE4B8BAE28094E2809432323232313131310A0A73657461E4B8ADEFBC8CE58F82E695B0E698AFE59FBAE7B1BB43E7B1BBE59E8BE79A84E68C87E99288EFBC8CE784B6E5908EE7A7BBE58AA8E68C87E99288E58F96E5AFB9E8B1A1E5B9B6E8B58BE580BCEFBC8C0A0AE4BD86E698AF6D61696EE4B8ADE5BE80E587BDE695B073657461E4B8ADE4BCA0E98092E79A84E698AFE6B4BEE7949FE7B1BBE79A84E5AFB9E8B1A1E695B0E7BB84E79A84E8B5B7E5A78BE59CB0E59D80E38082E38082E380820A0AE587BDE695B073657461E4B8ADEFBC8C0A0A646174615B696E6465785D2E613D32EFBC9B0A0AE7AD89E4BBB7E4BA8EEFBC9A282A28646174612B696E64657829292E613D32EFBC9B0A0AE8BF99E9878CE79A8464617461E7B1BBE59E8BE698AFE58F82E695B0E58897E8A1A8E4B8ADE79A84432AEFBC8CE68980E4BBA5E5A682E69E9CE4BCA0E8BF9BE69DA5E79A8464617461E698AFE6B4BEE7949FE7B1BBE5AFB9E8B1A1E695B0E7BB84E79A84E8B5B7E5A78BE59CB0E59D80EFBC8CE982A3E4B988E68C87E99288646174612B696E646578E5B7B2E7BB8FE4B88DE5868DE68C87E59091E7ACAC696E646578E4B8AAE5AFB9E8B1A1E4BA86E380820A0AE58E9FE59BA0E698AF43E5928C44E68980E58DA0E58685E5AD98E4B88DE5908CE380820A0AE887AAE5B7B1E685A2E685A2E4BD93E4BC9AE590A7E38082E38082E380820A0AE7BB99E79A84E7AD94E6A188E9878CE5A5BDE5838FE6B2A1E69C89E8BF99E4B8AAE5958AEFBC9FEFBC9FE99ABEE98193E8BF99E98193E9A298E79BAEE69C80E5A5BDE79A84E58A9EE6B395E5B0B1E698AFE7A9BAE79D80EFBC9FEFBC88E4BDA0E98089E593AAE4B8AAE983BDE4BC9AE689A3E58886EFBC890A0A);
INSERT INTO `question` VALUES ('312', '4', ' 1 of 1000 bottles of water is poisoned which will kill a rat in 1 week if the rat drunk any amout of the water. Given the bottles of water have no visual difference, how many rats are needed at least to find the poisoned one in 1 week?(201304)', 'option', '5', 0xE69CACE9A298E4B8BBE8A681E88083E5AF9FE4BA8CE8BF9BE588B6E4B88EE58D81E8BF9BE588B6E79A84E8BDACE68DA2EFBC8CE4BD86E69BB4E5A49AE79A84E99C80E8A681E781B5E6B4BBE79A84E6809DE88083E997AEE9A298E3808231303030E793B6E6B0B4E9878CE58FAAE69C89E4B880E793B6E69C89E6AF92EFBC8CE4BD86E585B7E4BD93E698AFE593AAE4B880E793B6E69CAAE79FA5EFBC8CE5B086E8BF9931303030E793B6E6B0B4E68C89E4BA8CE8BF9BE588B6E79A84E696B9E5BC8FE7BC96E58FB7312D31303030EFBC8CE58DB330303030303030303031E3808130303030303030303130E3808130303030303030303131E38081E280A6E280A6E3808131313131313030313131EFBC8CE784B6E5908EE5B08FE799BDE9BCA03130E58FAAE58886E588ABE68C89E9A1BAE5BA8FE68E92E58897EFBC8CE58DB3E5B08FE799BDE9BCA0E5969DE4B88EE4B88DE5969DE69F90E793B6E6B0B4E794A830E5928C31E8A1A8E7A4BAEFBC8CE68980E4BBA53130E58FAAE5B08FE799BDE9BCA0E585B1E883BDE8A1A8E7A4BA31303234EFBC88323130EFBC89E7A78DE78AB6E68081EFBC8C31303030E793B6E6B0B4E68C89E7BC96E58FB7E69DA5E59682E5B08FE799BDE9BCA0EFBC88E5A682E7BC96E58FB7E4B8BA31303030313130313031E697B6EFBC8CE7BB99E5B08FE799BDE9BCA031E3808133E3808135E3808136E380813130E59682E6B0B4EFBC89EFBC8CE4B880E591A8E5908EE8A782E5AF9FE7BB93E69E9CEFBC8CE88BA531E3808133E3808135E3808136E380813130E8BF99E587A0E58FAAE5B08FE799BDE9BCA0E6ADBBE4BAA1EFBC8CE58899E4BBA3E8A1A8E7BC96E58FB7E4B8BA31303030313130313031E79A84E793B6E5AD90E4B8ADE79A84E6B0B4E69C89E6AF92EFBC8CE5908CE79086E88BA531E3808132E3808133E8BF99E4B889E58FAAE5B08FE799BDE9BCA0E6ADBBE4BAA1EFBC8CE58899E4BBA3E8A1A8E7BC96E58FB7E4B8BA303030303030313131E79A84E6B0B4E69C89E6AF92E380820A0AEFBC88325E6E203E2031303030EFBC89EFBC8C6E3D3130E58DB3E58FAFE38082);
INSERT INTO `question` VALUES ('313', '4', 'Which of the following statement(s) equal(s) value 1 in C programming language?(201304)', 'option', '5', 0x3126373D31EFBC9B0A0A676363E4B88BE4BC9AE5AFB922616222203D3D2022616222E8ADA6E5918AEFBC9AE6AF94E8BE83E5AD97E99DA2E580BCE698AFE69CAAE5AE9AE4B989E79A84E8A18CE4B8BAE38082E4BD86E698AFE7BB93E69E9CE4B99FE7BB99E587BA312E0A0AE8BF98E69C89E4B880E9A1B9E698AFEFBC9A63686172202A733D22616263223B72657475726E20733D3D22616263223B0A0AE6B58BE8AF95E58F91E78EB0E4B880E888ACE7BC96E8AF91E599A8E983BDE4BC9AE4BC98E58C96EFBC8CE4BD86E698AF672B2BE4BC9AE8ADA6E5918AE38082E38082E380820A0AE8A7A3E7AD94EFBC9A63E8AFADE8A880E4B8AD6D61696EE587BDE695B0E88BA5E689A7E8A18CE68890E58A9FE8BF94E59B9E30EFBC8CE6958541E4B88DE5AFB9E38082372631203D20283030303030313131622026203030303030303031622029203D2031EFBC8C42E6ADA3E7A1AEE3808243E5928C44E79BB8E5908CEFBC8CE58588E8AFB444EFBC8CE5B8B8E9878FE5AD97E7ACA6E4B8B2E2809C6D6963726F736F6674E2809DE4BD8DE4BA8EE5B8B8E9878FE58CBAEFBC8CE7BC96E8AF91E599A8E4B880E888ACE983BDE58FAAE4BF9DE79599E4B880E4BBBDEFBC8CE4B88DE4BC9AE69C89E9878DE5A48DEFBC8CE6958544E6ADA3E7A1AEE3808243E4B99FE698AFEFBC8C63686172202A737472203D20226D6963726F736F667422EFBC8CE4B99FE698AFE5B086E5B8B8E9878FE58CBAE4B8ADE5AD97E7ACA6E4B8B2E79A84E8B5B7E5A78BE59CB0E59D80E8B58BE580BCE7BB99737472EFBC8CE4BD86E68891E4BBACE4B88DE883BDE9809AE8BF87737472E4BFAEE694B9E982A3E4B8AAE5AD97E7ACA6E4B8B2EFBC8CE590A6E58899E7A88BE5BA8FE4BC9AE5B4A9E6BA83EFBC8CE59BA0E4B8BAE5AE83E59CA8E5B8B8E9878FE58CBAE380820A565332303130E6B187E7BC96E4BBA3E7A081E58F82E88083EFBC9A0AE5A48DE588B6E4BBA3E7A0810A0A63686172202A737472203D20226D6963726F736F6674223B200A206D6F7620202020202020202064776F726420707472205B7374725D2C6F666673657420737472696E6720226D6963726F736F667422202831324637383330682920200A696E7420666C616731203D2028737472203D3D20226D6963726F736F667422293B0A20786F722020202020202020206561782C65617820200A20636D7020202020202020202064776F726420707472205B7374725D2C6F666673657420737472696E6720226D6963726F736F667422202831324637383330682920200A20736574652020202020202020616C20200A206D6F7620202020202020202064776F726420707472205B666C6167315D2C65617820200A696E7420666C616732203D2028226D6963726F736F667422203D3D20226D6963726F736F667422293B0A206D6F762020202020202020206561782C6F666673657420737472696E6720226D6963726F736F667422202831324637383330682920200A20786F722020202020202020206563782C65637820200A20636D702020202020202020206561782C6F666673657420737472696E6720226D6963726F736F667422202831324637383330682920200A20736574652020202020202020636C20200A206D6F7620202020202020202064776F726420707472205B666C6167325D2C65637820200A0AE5A48DE588B6E4BBA3E7A081);
INSERT INTO `question` VALUES ('314', '4', 'If you computed 32 bit signed integers F and G from 32 bit signed X using F = X / 2 and G = (X>>1), and you found F!=G, this implies that(201304)', 'option', '5', 0x42E698AFE4B88DE6ADA3E7A1AEE79A84EFBC8CE6ADA3E695B4E695B0E4B88DE7AEA1E698AFE5A587E695B0E8BF98E698AFE581B6E695B020282F203229E4B88E20283E3E3129E7BB93E69E9CE983BDE79BB8E5908CE38082E5BD9358E4B8BAE8B49FE695B0E79A84E697B6E58099E5B0B1E4BC9AE587BAE997AEE9A298EFBC8CE5A6822D31E4B88DE8BF87E7AEA1E689A7E8A18CE5A49AE5B091E6ACA1283E3E203129E6B0B8E8BF9CE698AF2D31E3808258E4B8BAE8B49FE581B6E695B0E697B6EFBC8CE6B2A1E69C89E997AEE9A298EFBC8C46E7AD89E4BA8E47E3808258E4B8BAE8B49FE5A587E695B0E698AF462D31E7AD89E4BA8E47E3808246203D206162732858292F32EFBC8C47203D2028582D31292F32E38082);
INSERT INTO `question` VALUES ('315', '4', ' How many rectangles you can find from 3*4 grid?(201304)', 'option', '5', 0x332A34E4B8AAE6A0BCE5AD90EFBC8C342A36E69DA1E7BABFE38082E6AF8FE4B8AAE995BFE696B9E5BDA2E983BDE698AFE794B1E4B8A4E69DA1E6A8AAE7BABFE5928CE4B8A4E69DA1E7AB96E7BABFE59BB4E68890EFBC8CE6B182E995BFE696B9E5BDA2E79A84E4B8AAE695B0E4B99FE5B0B1E698AFE6B182E98089E587BA32E69DA1E6A8AAE7BABFE5B9B6E5928C32E69DA1E7AB96E7BABFE585B1E69C89E5A49AE5B091E7A78DE98089E6B395EFBC8CE59CA8E6A8AAE7BABFE4B8ADE9808932E69DA1E79A84E98089E6B395E69C894328342C3229EFBC8CE59CA8E7AB96E7BABFE4B8ADE9808932E69DA1E79A84E98089E6B395E69C894328352C3229EFBC8CE79BB8E4B998E5BE973630E38082);
INSERT INTO `question` VALUES ('316', '4', ' One line can split a surface to 2 part, 2 line can split a surface to 4 part. Given 100 lines, no two parallel lines, no tree lines join at same point, how many parts can 100 line split?(201304)', 'option', '5', 0xE88BA5E5BD93E5898DE69C896BE69DA1E7BABFEFBC8CE5B7B2E7BB8FE58886E68890E4BA8666286B29E4B8AAE58CBAE59F9FEFBC8CE58899E5A29EE58AA0E4B880E69DA1E7BABFE4BC9AE5A29EE58AA0E5A49AE5B091E58CBAE59F9FE591A2EFBC9FE58886E589B2E4B880E4B8AAE58CBAE59F9FE8A681E4B988E698AFE4B880E69DA1E7BABFE6AEB5E5B086E4B880E4B8AAE58CBAE59F9FE58886E589B2E68890E4B8A4E4B8AAE58CBAE59F9FEFBC8CE8A681E4B988E698AFE4B880E69DA1E7BABFE6AEB5E5B086E4B880E4B8AAE58CBAE59F9FE58886E68890E4B8A4E4B8AAE58CBAE59F9FEFBC8CE5A29EE58AA0E79A84E58CBAE59F9FE5B0B1E698AFE5A29EE58AA0E79A84E7BABFE6AEB5EFBC88E68896E5B084E7BABFEFBC89E79A84E4B8AAE695B0E38082E794B1E4BA8EE6B2A1E69C89E4B889E69DA1E7BABFE4BAA4E4BA8EE4B880E782B9EFBC8CE59BA0E6ADA4E696B0E5A29EE58AA0E79A84E7BABFE4B88EE4B98BE5898D6BE69DA1E7BABFE983BDE69C89E4B880E4B8AAE4BAA4E782B9EFBC8CE59BA0E6ADA4E5B0B1E5A29EE58AA0E4BA866B2B31E69DA1E7BABFE6AEB5EFBC88E68896E5B084E7BABFEFBC89EFBC8CE4B99FE5B0B1E5A29EE58AA0E4BA866B2B31E4B8AAE58CBAE59F9FE38082E794B1E6ADA4E58FAFE5BE9766286E29203D2066286E2D3129202B206EE38082662831303029203D206628393929202B20313030203D206628393829202B203939202B20313030203D2066283129202B2032202B2033202B202E2E2E202B20313030203D2035303531E38082);
INSERT INTO `question` VALUES ('317', '4', ' Which of the following sorting algorithm(s) is(are) stable sorting?(201304)', 'option', '5', 0xE887AAE5B7B1E7BFBBE8AFBEE69CAC);
INSERT INTO `question` VALUES ('318', '4', 'Model-View-Controller(MVC) is an architectural pattern that frequently used in web applications. Which of the following statement(s) is(are) correct:(201304)', 'option', '5', '');
INSERT INTO `question` VALUES ('319', '4', 'we can recover the binary tree if given the output of(201304)', 'option', '5', 0xE5898DE5BA8FE9818DE58E86E5928CE5908EE7BBADE9818DE58E86E4B88DE883BDE681A2E5A48DE587BAE58E9FE69DA5E79A84E4BA8CE58F89E6A091E7BB93E69E84EFBC8CE59BA0E4B8BAE5AD98E59CA8E4B88DE5908CE79A84E4BA8CE58F89E6A091E6A091EFBC8CE5898DE5BA8FE9818DE58E86E5928CE5908EE7BBADE9818DE58E86E983BDE79BB8E5908CE38082E5A682EFBC9A0AE7ACACE4B880E6A3B5E4BA8CE58F89E6A0910A2020202020202020310A2020202020202F0A20202020320AE5898DE5BA8FE9818DE58E86E698AF312032EFBC8C20E5908EE5BA8FE9818DE58E86E698AF322031E380820AE58FA6E4B880E6A3B5E4BA8CE58F89E6A0910A20202020202020310A202020202020202020205C0A2020202020202020202020320AE5898DE5BA8FE9818DE58E86E698AF312032EFBC8C20E5908EE5BA8FE9818DE58E86E698AF322031E380820AE68980E4BBA542E4B88DE6ADA3E7A1AEEFBC8C44E5B0B1E69BB4E4B88DE6ADA3E7A1AEE4BA86E38082);
INSERT INTO `question` VALUES ('320', '4', 'Given a string with n characters, suppose all the characters are different from each other, how many different substrings do we have?(201304)', 'option', '5', 0xE995BFE5BAA6E4B8BA31E79A84E5AD90E4B8B2E69C896EE4B8AAEFBC8CE995BFE5BAA6E4B8BA32E79A84E5AD90E4B8B2E69C896E2D31E4B8AAEFBC8CE995BFE5BAA6E4B8BA33E79A84E5AD90E4B8B2E69C896E2D32E4B8AAEFBC8C2E2E2E20EFBC8CE995BFE5BAA6E4B8BA6EE79A84E69C8931E4B8AAEFBC8CE680BBE585B16E286E2B31292F32E38082);
INSERT INTO `question` VALUES ('321', '4', ' Given a set of N balls and one of which is defective (weighs less than others), you are allowed to weigh with a balance 3 times to find the defective. Which of the following are possible N?(201304)', 'option', '5', 0x3132E4B8AAEFBC8CE58886E68890E4B889E7BB84342C342C34EFBC8CE58588E68BBFE587BAE585B6E4B8ADE4B8A4E7BB84E7A7B0E9878FEFBC8CE88BA5E5B7A6E8BEB9E8BDBBEFBC8CE58899E59D8FE79083E59CA8E5B7A6E8BEB9EFBC8CE88BA5E58FB3E8BEB9E8BDBBE58899E59D8FE79083E59CA8E58FB3E8BEB9EFBC8CE88BA5E5B9B3E8A1A1EFBC8CE58899E59D8FE79083E59CA8E589A9E4B88BE79A84E59B9BE4B8AAE5BD93E4B8ADE38082E8BF99E6A0B7E4B880E6ACA1E7A7B0E9878FE5B0B1E5B086E79083E5878FE5B091E588B034E4B8AAE38082E5B08634E4B8AAE58886E68890E4B8A4E7BB84322C32EFBC8CE88BA5E5B7A6E8BEB9E8BDBBE58899E59D8FE79083E59CA8E5B7A6E8BEB9EFBC8CE58F8DE4B98BE59CA8E58FB3E8BEB9E38082E7ACACE4BA8CE6ACA1E7A7B0E9878FE5B086E79083E5878FE5B091E588B032E4B8AAE38082E589A9E4B88BE4B8A4E4B8AAE5868DE7A7B0E9878FE4B880E6ACA1E698BEE784B6E5B0B1E7A1AEE5AE9AE4BA86E38082E4B99FE69C89E585B6E4BB96E58FAFE8A18CE79A84E58886E7BB84E696B9E6B395E3808241E6ADA3E7A1AEE380820A3136E4B8AAEFBC8CE58886E68890E4B889E7BB84362C362C34EFBC8CE58588E7A7B0E9878FE4B8A4E7BB8436E4B8AAE79083E79A84EFBC8CE58899E59D8FE79083E8A681E4B988E59CA834E4B8AAE5BD93E4B8ADEFBC8CE8A681E4B988E59CA8E4B8A4E7BB8436E4B8AAE5BD93E4B8ADE79A84E4B880E7BB84EFBC8C34E4B8AAE79A84E794A8E4B8A4E6ACA1E58FAFE4BBA5E7A1AEE5AE9AE59D8FE79083E3808236E4B8AAE79A84E5868DE58886E68890322C322C32E4B889E7BB84EFBC8CE5908CE6A0B7E58FAFE4BBA5E794A8E4B880E6ACA1E5878FE5B091E588B0E4B8A4E4B8AAE79083EFBC8CE69C80E5908EE7A1AEE5AE9AE59D8FE79083E38082E4B99FE69C89E585B6E4BB96E58FAFE8A18CE79A84E58886E7BB84E696B9E6B395E3808242E6ADA3E7A1AEE380820A3230E4B8AAEFBC8CE58886E68890362C362C38E4B889E7BB84EFBC8CE88BA5E59CA836E4B8AAE5BD93E4B8ADEFBC8CE4B8A4E6ACA1E58FAFE4BBA5E689BEE587BAEFBC8CE88BA5E59CA838E4B8AAE5BD93E4B8ADEFBC8CE5B086E585B6E58886E68890332C332C32E4B889E7BB84EFBC8CE4B8A4E6ACA1E4B99FE58FAFE4BBA5E7A1AEE5AE9AE38082E4B99FE69C89E585B6E4BB96E58FAFE8A18CE79A84E58886E7BB84E696B9E6B395E380820A3234E4B8AAEFBC8CE58886E68890382C382C38E38082E7ACACE4B880E6ACA1E7A7B0E9878FE5878FE5B091E588B038E4B8AAEFBC8CE589A9E4B88B38E4B8AAE4B8A4E6ACA1E58FAFE4BBA5E7A1AEE5AE9AEFBC8CE4B99FE69C89E585B6E4BB96E58FAFE8A18CE79A84E58886E7BB84E696B9E6B395E380820A3238E4B8AAE697A0E6B395E4B889E6ACA1E7A1AEE5AE9AE380820AE680BBE4B98BEFBC8C33E4B8AAE79083E4BBA5E58685E4B880E6ACA1EFBC8CE58FAFE4B880E6ACA1E7A7B0E9878FE7A1AEE5AE9AE38082347E39E4B8AAE79083E58FAFE4B8A4E6ACA1E7A7B0E9878FE7A1AEE5AE9AE3808231307E3237E4B8AAE79083E58FAFE4B889E6ACA1E7A7B0E9878FE7A1AEE5AE9AE38082E5AFB9E4BA8EE4B889E6ACA1E7A7B0E9878FEFBC8CE58FAAE8A681E7ACACE4B880E6ACA1E58886E68890E79A84E4B889E7BB84EFBC8CE6AF8FE7BB84E4B88DE5A49AE4BA8E39E4B8AAE58DB3E58FAFE38082);
INSERT INTO `question` VALUES ('322', '4', 'Suppose that a Selection Sort of 80 items has completed 32 iterations of the main loop. How many items are now guaranteed to be in their final spot (never to be moved again)?(201204)', 'option', '5', 0xE88083E89991E98086E5BA8FE79A84E68385E586B5);
INSERT INTO `question` VALUES ('323', '4', 'Which Synchronization mechanism(s) is/are used to avoid race conditions among processes/threads in operating systems?(201204)', 'option', '5', '');
INSERT INTO `question` VALUES ('324', '4', ' There is a sequence of n numbers 1, 2, 3,.., n and a stack which can keep m numbers at most. Push the n numbers into the stack following the sequence and pop out randomly. Suppose n is 2 and m is 3, the output sequence may be 1, 2 or 2, 1, so we get 2 different sequences. Suppose n is 7 and m is 5, please choose the output sequences of the stack:(201204)', 'option', '5', '');
INSERT INTO `question` VALUES ('325', '4', 'What is the result of binary number 01011001 after multiplying by 0111001 and adding 1101110?(201204)', 'option', '5', '');
INSERT INTO `question` VALUES ('326', '4', 'What is output if you compile and execute the following code?(201204)\nvoid main(){\nint i = 11;\nint const *p = &i;\np++;\nprintf(“%d”, *p);\n}', 'option', '5', 0x70E68C87E5909169E5908EE79A84E59B9BE5AD97E88A82E58685E5AD98EFBC8CE4B8BAE4BBBBE6848FE580BCE38082);
INSERT INTO `question` VALUES ('327', '4', 'Which of following C++ code is correct?(201204)', 'option', '5', 0x284129E794B3E8AFB7E58685E5AD98E5908EE6B2A1E69C89E5889DE5A78BE58C96EFBC8CE8BF94E59B9EE79A84E698AFE4BBBBE6848FE580BCEFBC9B284229E8BF94E59B9E61E79A84E59CB0E59D80EFBC8CE4BD86E695B0E7BB8461E59CA8E6A088E58CBAEFBC8CE8BF94E59B9EE5908EE6A088E5B0B1E9878AE694BEE4BA86EFBC9B284329E58DB0E8B1A1E4B8AD766563746F72E698AFE59CA8E5A086E58CBAEFBC8CE58FAFE8A18CEFBC9B284429E79A84E997AEE9A298E5908C4220);
INSERT INTO `question` VALUES ('328', '4', 'Given that the 180-degree rotated image of a 5-digit number is another 5-digit number and the difference between the numbers is 78633, what is the original 5-digit number?(201204)', 'option', '5', 0x38393630312D3130393638203D203738363333);
INSERT INTO `question` VALUES ('329', '4', 'Which of the following statements are true?(201204)', 'option', '5', '');
INSERT INTO `question` VALUES ('330', '4', 'Which of the following statements are true?(201204)', 'option', '5', 0x2043E58FAAE99C80E8A68133E6ACA1E4BAA4E68DA2);
INSERT INTO `question` VALUES ('331', '4', 'Assume both x and y are integers, which one of the followings returns the minimum of the two integers?(201204)', 'option', '5', '');
INSERT INTO `question` VALUES ('332', '4', 'The Orchid Pavilion (兰亭集序) is well known as the top of “行书” in history of Chinese literature. The most fascinating sentence “Well I know it is a lie to say that life and death is the same thing, and that longevity and early death make no difference! Alas!” (“周知一死生为虚诞， 齐彭殇为妄作。“) By counting the characters of the whole content (in Chinese version), the result should be 391 (including punctuation). For these characters written to a text file, please select the possible file size without any data corrupt.(201204)', 'option', '5', 0xE4B880E888ACE6B189E5AD977574662D38E7BC96E7A081E698AF33E4B8AAE5AD97E88A82EFBC8CE4BD86E4BC9AE69C89E4B880E4BA9BE698AF34E4B8AAE5AD97E88A820A7574662D3136E4B880E888ACE6B189E5AD97E698AF32E4B8AAE5AD97E88A82EFBC8CE4BD86E4B99FE69C8934E4B8AAE5AD97E88A82EFBC8CE59BA0E6ADA4E697A0E6B395E7A1AEE5AE9A);
INSERT INTO `question` VALUES ('333', '4', 'Fill the blanks inside class definition (201204)\n    class Test  \n    {  \n    public:  \n        __ int a;  \n        __ int b;  \n    public:  \n        Test::Test(int _a, int _b): a(_a)  \n        {  \n            b = _b;  \n        }  \n    };  \n    int Test::b;  \n    int _tmain(int argc, _TCHAR * argv[])  \n    {  \n        Test t1(0, 0), t2(1, 1);  \n        t1.b = 10;  \n        t2.b = 20;  \n        printf(\"%u %u %u %u\", t1.a, t1.b, t2.a, t2.b);  \n        return 0;  \n    }  ', 'option', '5', '');
INSERT INTO `question` VALUES ('334', '4', 'A 3-order B-tree has 2047 key words, what is the maximum height of the tree?(201204)', 'option', '5', '');
INSERT INTO `question` VALUES ('335', '4', 'In C++, which of the following keyword(s) can be used on both a variable and a function?(201204)', 'option', '5', '');
INSERT INTO `question` VALUES ('336', '4', 'What is the result of the following program?(201204)\n    char* f(char* str, char ch)  \n    {  \n        char* it1 = str;  \n        char* it2 = str;  \n        while(*it2 != \'\\0\')  \n        {  \n            while(*it2 == ch)  \n            {  \n                it2++;  \n            }  \n            *it1++ = *it2++;  \n        }  \n        return str;  \n    }  \n      \n    void main(int argc, char* argv[])  \n    {  \n        char* a = new char[10];  \n        strcpy(a, \"abcdcccd\");  \n        cout<<f(a, \'c\');  \n    }  ', 'option', '5', 0xE587BDE695B0E79A84E4BD9CE794A8E698AFE68A8AE5AD97E7ACA6E4B8B2E4B8ADE789B9E5AE9AE5AD97E7ACA6E58EBBE68E89);
INSERT INTO `question` VALUES ('337', '4', 'Consider the following definition of a recursive function, power, that will perform exponentiation.\nint power(int b, int e){\nif (e == 0) return 1;\nif (e %2 == 0) return power (b * b, e / 2);\nreturn b * power(b * b, e / 2);\n}\nAsymptotically (渐进地) in terms of the exponent e, the number of calls to power that occur as a result of the call power(b, e) is(201204)', 'option', '5', 0xE587BDE695B0E79A84E4BD9CE794A8E698AFE68A8AE5AD97E7ACA6E4B8B2E4B8ADE789B9E5AE9AE5AD97E7ACA6E58EBBE68E89);
INSERT INTO `question` VALUES ('338', '4', 'Assume a full deck of cards has 52 cards, 2 black suits (spade and club) and 2 red suits (diamond and heart).If you are given a full deck, and a half deck (with 1 red suit and 1 black suit), what’s the possibility for each one getting 2 red cards if taking 2 cards?(201204)', 'option', '5', 0x20612066756C6C206465636B3A2032362A32352F2835322A3531292C20612068616C66206465636B3A2031332A31322F2832362A323529);
INSERT INTO `question` VALUES ('339', '4', 'There is a stack and a sequence of n numbers (i.e., 1, 2, 3, …, n). Push the n numbers into the stack following the sequence and pop out randomly. How many different sequences of the number we may get? Suppose n is 2, the output sequence may be 1, 2 or 2, 1, so we get 2 different sequences.(201204)', 'option', '5', 0x4220432C20E789B9E6AE8AE580BCE8AF95E587BAE69DA5E79A84EFBC8C42E58C96E7AE80E5908EE5B0B1E698AF43);
INSERT INTO `question` VALUES ('340', '4', 'Longest Increasing Subsequence (LIS) means a sequence containing some elements in another sequence by the same order, and the values of elements keeps increasing.\nFor example, LIS of (2, 1, 4, 2, 3, 7, 4, 6) is (1, 2, 3, 4, 6), and its LIS length is 5.\nConsidering an array with N elements, what is the lowest time and space complexity to get the length of LIS?(201204)', 'option', '5', 0xE8A781E3808AE7BC96E7A88BE4B98BE7BE8EE3808BE69C80E995BFE4B88AE58D87E5AD90E5BA8FE58897);
INSERT INTO `question` VALUES ('341', '4', 'Which statement(s) is(are) correct about thread and process？Select all that apply.(201309)', 'option', '5', 0xE7BABFE7A88BE58FAFE4BBA5E585B1E4BAABE4B8BBE8BF9BE7A88BE79A84E58685E5AD98E7A9BAE997B4EFBC8CE4BD86E698AFE6A088E68BA5E69C89E887AAE5B7B1E79A84E6A088E4BBA5E58F8AE5AF84E5AD98E599A8EFBC8CE5AD90E8BF9BE7A88BE4B88DE883BDE585B1E4BAABE4B8BBE8BF9BE7A88BE79A84E58685E5AD98E59CB0E59D80EFBC8CE5AD90E7BABFE7A88BE58FAFE4BBA5E8A2ABE4B8BBE7BABFE7A88BE5BDB1E5938DEFBC8CE5AD90E8BF9BE7A88BE78BACE7AB8BE4BA8EE4B8BBE8BF9BE7A88BE380820AE7BABFE7A88BE68896E8BF9BE7A88BE4BA89E5A4BAE8B584E6BA90E983BDE58FAFE4BBA5E980A0E68890E99481E38082E7BABFE7A88BE794B1E4BA8EE58FAFE4BBA5E585B1E4BAABE4B8BBE8BF9BE7A88BE79A84E58685E5AD98E59CB0E59D80EFBC8CE7AA83E4BBA5E4B8BAE58FAFE4BBA5E79BB4E68EA5E79BB8E4BA92E9809AE4BFA1E38082E8BF9BE7A88BE8A681E9809AE8BF87E7AEA1E98193E38081E4BFA1E58FB7E9878FE7AD89E69DA5E9809AE4BFA1E380820A);
INSERT INTO `question` VALUES ('342', '4', 'Which statement(s) below regarding TCP(Transmission Control Protocol) is(are) correct? Select all that apply(201309)', 'option', '5', 0x746370E698AFE4BCA0E8BE93E58D8FE8AEAEEFBC8CE4B88DE590ABE69C896970E59CB0E59D80E4BFA1E681AFEFBC8CE58FAAE69C89E7ABAFE58FA3E4BFA1E681AFE38082746370E694AFE68C81E5B9BFE692ADE3808231303234E4BBA5E4B88BE79A84E7ABAFE58FA3E58FB7E4B8BAE79FA5E5908DE7ABAFE58FA3E58FB7EFBC8CE585B6E4B8AD3231E4B8BA667470EFBC8C3233E4B8BA74656C6E6574EFBC8C3235E4B8BA736D7470EFBC8C3830E4B8BA68747470E380820A746370E68F90E4BE9BE58FAFE99DA0E79A84E4BCA0E8BE93EFBC8CE4BC9AE5A484E79086E4B8A2E58C85E38082E6ADA3E8A784E79A84E8B584E69699E983BDE8AFB4746370E4B88DE694AFE68C81E7BB84E692ADEFBC8C42E4B88DE5AFB9E38082E7BD91E4B88AE69C89E4B8AAE5B896E5AD90E8AFB46A67726F7570E58FAFE4BBA5E8AEA9746370E694AFE68C81E7BB84E692ADEFBC8CE8B28CE4BCBCE698AFE982AAE997A8E6ADAAE98193EFBC9F);
INSERT INTO `question` VALUES ('343', '4', 'Initialize integer i as 0, what\'s the value of i after the following operation? i += i > 0 ? i++ : i --;  (201309)', 'option', '5', 0x736F2065617379);
INSERT INTO `question` VALUES ('344', '4', 'Which of the follwing sequence(s) could not be a postorder tree walk result of a binary search tree?(201309)', 'option', '5', 0xE5908EE7BBADE9818DE58E86E5BA8FE58897EFBC8CE5BF85E9A1BBE4BF9DE8AF81E69C80E5908EE4B880E4B8AAE695B0E883BDE68A8AE5898DE99DA2E79A84E58886E4B8BAE4B8A4E983A8E58886EFBC8CE5B7A6E8BEB9E983BDE6AF94E5AE83E5B08FEFBC8CE58FB3E8BEB9E983BDE6AF94E5AE83E5A4A7);
INSERT INTO `question` VALUES ('345', '4', 'When a dll is loaded into memory, which part(s) can be shared between processes?(201309)', 'option', '5', 0x736F2065617379);
INSERT INTO `question` VALUES ('346', '4', 'How many times is f() called when calculating f(10)?(201309)\n1. int f(int x)  \n2. {  \n3.     if(x <= 2)  \n4.         return 1;  \n5.     return f(x - 2) + f(x - 4) + 1;  \n6. }  \n\n', 'option', '5', 0xE8AFB7E887AAE5B7B1E794BB);
INSERT INTO `question` VALUES ('347', '4', 'Asume you have an object to describe customer data:(201309)\n{\n  ID（7 digit numeric）\n  Family Name（string）\n  Account Balance（currency）\n}\nIf you have 500,000 Chinese customers records represented by instances of this object type , what set of data structures is best to get fast retrieval of customers (1) get IDs from Name and (2) get Name from ID?\n', 'option', '5', 0xE5908DE5AD97E58FAFE883BDE9878DE5A48DEFBC8CE7BC96E58FB7E4B88DE4BC9AE9878DE5A48DE38082E69FA5E689BEE5908DE5AD97E794A8E4BA8CE58F89E69FA5E689BEE6A091EFBC8CE689BEE588B0E88A82E782B9E5908EEFBC8CE4BC9AE69C89E88BA5E5B9B2E4B8AAE7BC96E58FB7EFBC8CE68980E4BBA5E6AF8FE4B8AAE88A82E782B9E5AD98E4B880E4B8AAE58D95E993BEE8A1A8E38082E5A682E69E9CE69FA5E689BEE5908DE5AD97EFBC8CE7BC96E58FB7E698AFE697A0E9878DE5A48DE79A84EFBC8CE69C893530E4B887E4B8AAEFBC8C3130303030E4B8AAE6A1B6E4B88DE5A49FE794A8E5958AEFBC8CE8A789E5BE97E794A8E695B0E7BB84E69BB4E79BB4E68EA5);
INSERT INTO `question` VALUES ('348', '4', 'Let\'s assume one type of cancer may be mis-diagnosed in the examination. 5 out of 100 people with this cancer will be diagnosed as not having it , and 1 out of 100 people without this cancer will be diagnosed as having it. We know the chance of getting this cancer is around 0.1%. One person was examined and diagnosed of having this cancer, which of the following value if the closest to the chance of is really having it?(201309)', 'option', '5', 0xE8B49DE58FB6E696AFE585ACE5BC8F);
INSERT INTO `question` VALUES ('349', '4', 'In which case(s) would you use an outer join?', 'option', '5', 0xE5A496E8BF9EE68EA5E58FAFE4BBA5E5B086E69CAAE58CB9E9858DE79A84E5AD97E6AEB5E698BEE7A4BAE587BAE69DA5E38082E4B99FE58FAFE4BBA5E698BEE7A4BA4E554C4CE5AD97E6AEB5E38082);
INSERT INTO `question` VALUES ('350', '4', 'The best time complexity of quick sort algorithm is:(201309)', 'option', '5', '');
INSERT INTO `question` VALUES ('351', '4', 'Which of the following method(s) CANNOT be used for Text-encryption(201309)', 'option', '5', 0x4D4435E698AFE4B88DE58FAFE98086E58AA0E5AF86EFBC8CE4B88DE58FAFE4BBA5E794A8E69DA5E58AA0E5AF86E69687E69CACEFBC8C444553E5928C524334E698AFE5AFB9E7A7B0E58AA0E5AF86EFBC8C525341E698AFE4B88DE5AFB9E7A7B0E58AA0E5AF86EFBC8CE983BDE58FAFE4BBA5E794A8E4BA8EE69687E69CACE58AA0E5AF86);
INSERT INTO `question` VALUES ('352', '4', 'To speed up data access , we build cache system. In one system , The L1 cache access time is 5 ns , the L2 cache access time is 50 ns and the memory access time is 400 ns. The L1 cache miss rate is 50% , the L2 cache miss rate is 10%. The average data access time of this system is:(201309)', 'option', '5', '');
INSERT INTO `question` VALUES ('353', '4', 'Which is(are) valid function pointer declaration(s) below ? Select all that apply.(201309)', 'option', '5', 0x63E698AFE8BF94E59B9EE580BCE4B8BAE587BDE695B0E68C87E99288E4B894E58F82E695B0E69C89E587BDE695B0E68C87E99288E79A84E587BDE695B0E38082);
INSERT INTO `question` VALUES ('354', '4', 'Which of the following method(s) could be used to optimize the speed of a program ?(201309)', 'option', '5', '');
INSERT INTO `question` VALUES ('355', '4', 'In the code below , if the function is designed to multiply two positive numbers which line number in the image contains the biggest functional bug(assume no overflow)? 1 1 int Fun(int A, int B){\n2 int C =0;\n3 for(int i=0;i<B;++i){\n4   C+=C;\n}\n5 return C;\n}(201309)\n', 'option', '5', 0xE5BA94E8AFA5E4B8BA432B3D41);
INSERT INTO `question` VALUES ('356', '4', 'Which of the following can be referred to as attack method(s)? Select all that apply(201309)', 'option', '5', '');
INSERT INTO `question` VALUES ('357', '4', 'A table CANNOT have one or more of the following index configurations(201309)', 'option', '5', 0xE8819AE99B86E7B4A2E5BC95E4B880E4B8AAE8A1A8E58FAAE883BDE69C89E4B880E4B8AAEFBC8CE59BA0E4B8BAE8819AE99B86E7B4A2E5BC95E698AFE5BDB1E5938DE789A9E79086E5AD98E8B4AEE59CB0E59D80E79A84);
INSERT INTO `question` VALUES ('358', '4', 'Which of the following is(are) true about providing security to database servers ? Select all that apply.(201309)', 'option', '5', '');
INSERT INTO `question` VALUES ('359', '10', '给出一个数字N，如68，定义它的逆数为86，那么经过68+86=154，154+451=605，605+506=1111这样几次操作后，可以得到回文数字1111。现在需要判断经过7次操作是否可以得到回文，如果能，输出回文，如果不能输出0。', 'program', '6', 0xE68B86E58886E59084E4B8AAE4BD8DE695B0E5B9B6E98086E5BA8FE79BB8E58AA0EFBC8CE5AFB9E5928CE695B0E588A4E696ADE59B9EE69687E380820A2020E59B9EE69687E79A84E588A4E696ADE8BE83E7AE80E58D950AEFBC88E695B0E5AD97E4B88EE98086E5BA8FE79BB8E58AA0EFBC8CE5A682E69E9CE5AFB9E5BA94E4BD8DE7BDAEE79BB8E58AA0E4B88DE4BAA7E7949FE8BF9BE4BD8DEFBC8CE982A3E4B988E7BB93E69E9CE882AFE5AE9AE698AFE59B9EE69687EFBC9BE4BAA7E7949FE8BF9BE4BD8DE79A84E69C89E58FAFE883BDE698AFE59B9EE69687EFBC8CE5A6823630352B353036EFBC890AE7BB99E587BAE4B880E7A78DE98092E5BD92E8A7A3E6B3950A0AE98092E5BD92E79A84E4BD9CE794A8E59CA8E4BA8EE68A8AE997AEE9A298E79A84E8A784E6A8A1E4B88DE696ADE7BCA9E5B091EFBC8CE79BB4E588B0E997AEE9A298E7BCA9E5B091E588B0E883BDE7AE80E58D95E59CB0E8A7A3E586B30AE997AEEFBC9AE5A682E4BD95E7BCA9E5B091E997AEE9A298E8A784E6A8A1EFBC9F0A0AE7AD94EFBC9AE9809AE8BF87E8A782E5AF9FE58FAFE4BBA5E79FA5E98193EFBC8CE4B880E4B8AAE59B9EE69687E5AD97E7ACA6E4B8B2E585B6E4B8ADE58685E983A8E4B99FE698AFE59B9EE69687E38082E68980E4BBA5EFBC8CE68891E4BBACE58FAAE99C80E8A681E4BBA5E58EBBE68E89E4B8A4E7ABAFE79A84E5AD97E7ACA6E79A84E5BDA2E5BC8FE4B880E5B182E5B182E6A380E69FA5EFBC8CE6AF8FE4B880E6ACA1E79A84E6A380E69FA5E983BDE58EBBE68E89E4BA86E4B8A4E4B8AAE5AD97E7ACA6EFBC8CE8BF99E6A0B7E5B0B1E8BEBEE588B0E4BA86E7BCA9E5B091E997AEE9A298E8A784E6A8A1E79A84E79BAEE79A84E380820A0A0AE696B0E997AEE9A298E4B88EE58E9FE997AEE9A298E69C89E79D80E79BB8E5908CE79A84E5BDA2E5BC8F0A0AE5BD93E58EBBE68E89E4B8A4E7ABAFE5AD97E7ACA6E5908EE79A84E5AD97E7ACA6E4B8B2EFBC8CE585B6E4BAA7E7949FE79A84E696B0E997AEE9A298E5908CE6A0B7E698AFE6A380E69FA5E8BF99E4B8AAE5AD97E7ACA6E4B8B2E698AFE590A6E59B9EE69687E380820A0A0AE98092E5BD92E79A84E7BB93E69D9FE99C80E8A681E7AE80E58D95E68385E699AF0A0A312E20E5AD97E7ACA6E4B8B2E995BFE5BAA6E58FAFE883BDE4BC9AE5A587E695B0E68896E581B6E695B0EFBC9A0A0A20202020E5A682E69E9CE5AD97E7ACA6E4B8B2E995BFE5BAA6E698AFE5A587E695B0EFBC8CE5AD97E7ACA6E4B8B2E4BC9AE589A9E4B88BE69C80E4B8ADE997B4E982A3E4BD8DE5AD97E7ACA6EFBC8CE4BD86E585B6E4B88DE5BDB1E5938DE59B9EE69687E38082E5BD93E6A380E69FA5E588B0E995BFE5BAA6E4B8BA31E79A84E697B6E58099E58DB3E4BBA3E8A1A8E6ADA4E5AD97E7ACA6E4B8B2E698AFE59B9EE696870A20202020E5A682E69E9CE5AD97E7ACA6E4B8B2E995BFE5BAA6E698AFE581B6E695B0EFBC8CE5BD93E4B8A4E7ABAFE79A84E5AD97E7ACA6E4B8B2E4B8A4E4B8A4E6AF94E8BE83E6A380E69FA5E5908EE4B88DE4BC9AE589A9E4B88BE5AD97E7ACA6E38082E58DB3E6A380E69FA5E588B0E995BFE5BAA6E4B8BA30E79A84E697B6E58099E58DB3E4BBA3E8A1A8E6ADA4E5AD97E7ACA6E4B8B2E698AFE59B9EE696870A0A322E20E5A682E69E9CE6A380E69FA5E588B0E4B8A4E7ABAFE4B8A4E4B8AAE5AD97E7ACA6E4B88DE79BB8E5908CE38082E58899E8AFB4E6988EE6ADA4E5AD97E7ACA6E4B8B2E4B88DE698AFE59B9EE69687EFBC8CE79BB4E68EA5E8BF94E59B9E300A0A2020202023696E636C756465203C696F73747265616D3E20200A202020207573696E67206E616D657370616365207374643B20200A20202020696E742066756E28696E74206C6F772C20696E7420686967682C2063686172202A7374722C20696E74206C656E6774682920200A202020207B20200A2020202020202020696620286C656E677468203D3D2030207C7C206C656E677468203D3D20312920200A20202020202020202020202072657475726E20202020313B20200A2020202020202020696620287374725B6C6F775D20213D207374725B686967685D2920200A20202020202020202020202072657475726E20202020303B20200A202020202020202072657475726E2066756E286C6F772B312C20686967682D312C207374722C206C656E6774682D32293B20200A202020207D20200A20202020696E74206D61696E282920200A202020207B20200A202020202020202063686172202020207374725B5D3D226161616264616161223B20200A2020202020202020696E7420202020206C656E677468203D207374726C656E28737472293B20200A20202020202020202F2FE8BF94E59B9E31E4BBA3E8A1A8E698AFEFBC8C2030E4BBA3E8A1A8E4B88DE698AF20200A2020202020202020636F7574203C3C2066756E28302C206C656E6774682D312C207374722C206C656E67746829203C3C20656E646C3B20200A202020202020202072657475726E20202020303B20200A202020207D2020);
INSERT INTO `question` VALUES ('360', '10', '规定男女名字中相同字母数最多的为“最具夫妻像”。举例来说，给出男生“li si”，在女生列表{“li li, wang fei, zhang man yu”}中匹配度最高的是“li li”。假定所有人名都是由a~z的小写字母和空格组成，男生姓名从键盘输入，女生姓名已给出，当有多名女生符合要求时，按列表序输出第一个', 'essay', '6', 0xE794B1E4BA8EE5A5B3E7949FE58897E8A1A8E5B7B2E7BB8FE7BB99E5AE9AEFBC8CE58FAFE4BBA53236E4BD8DE79A84E5AD97E6AF8DE5BBBAE7AB8B48617368E695A3E58897E8A1A8EFBC8CE7BB99E587BAE4B88DE5908CE5A5B3E7949FE5A793E5908DE79A84E695A3E58897E68385E586B5EFBC8CE5908CE6A0B7E59CB0E5AFB9E4BA8EE8BE93E585A5E79A84E794B7E7949FE5A793E5908DE4B99FE58FAFE4BBA5E6B182E695A3E58897E68385E586B5E38082E784B6E5908EE6B182E695A3E58897E8A1A8E58CB9E9858DE68385E586B5EFBC8CE58F96E9878DE59088E69C80E5A49AE79A84E8BE93E587BAE38082);
INSERT INTO `question` VALUES ('361', '10', '给出数字M，进制数N，输出进制转换后数，如M =  9 ， N = 2 ，输出1001(可用int承载可不考虑溢出)。', 'program', '6', 0xE4BB8EE4BD8EE4BD8DE588B0E9AB98E4BD8DE79A84E4B88DE696ADE58F96E6A8A1E5928CE999A4E6B395E6938DE4BD9CEFBC8CE8BF99E9878CE8A681E789B9E588ABE6B3A8E6848FE999A4E99BB6E68385E586B5E38082);
INSERT INTO `question` VALUES ('362', '10', '输入一个整数字符串，求其中最大数字和最小数字之和', 'program', '6', 0xE4B88DE794A8E68E92E5BA8F0AE4BB8EE5A4B4E689ABE68F8F0A202020696628E5B08FE4BA8EE69C80E5B08FE695B0297B0A20202020202020E69C80E5B08FE695B020EFBC9D20E5BD93E5898DE695B00A202020207D656C736520696628E5A4A7E4BA8EE69C80E5A4A7E695B0297B0A20202020202020E69C80E5A4A7E695B020EFBC9D20E5BD93E5898DE695B0200A202020207D0AE69C80E5B08F2BE69C80E5A4A7);
INSERT INTO `question` VALUES ('363', '10', '求两个非常大的正整数之和，正整数的位数不大于128位，例如123表示3位，1234表示4位数', 'program', '6', 0xE88083E89991E6BAA2E587BAE79A84E68385E586B5E58DB3E58FAF);
INSERT INTO `question` VALUES ('364', '10', '通过键盘输入一串小写字母(a~z)组成的字符串。请编写一个字符串过滤程序，若字符串中出现多个相同的字符，将非首次出现的字符过滤掉。', 'program', '6', 0x23696E636C756465203C696F73747265616D3E202020200A23696E636C756465203C636173736572743E202020200A202020200A7573696E67206E616D657370616365207374643B202020200A202020200A626F6F6C20675F666C61675B32365D3B202020200A766F696420737472696E6746696C74657228636F6E73742063686172202A70496E7075745374722C206C6F6E67206C496E7075744C656E2C2063686172202A704F757470757453747229202020200A7B202020200A20206173736572742870496E70757453747220213D204E554C4C293B202020200A2020696E742069203D20303B202020200A20206966202870496E707574537472203D3D204E554C4C207C7C206C496E7075744C656E203C3D203129202020200A20207B202020200A20202020202072657475726E3B202020200A20207D202020200A2020636F6E73742063686172202A70203D2070496E7075745374723B202020200A20207768696C65282A7020213D20275C302729202020200A20207B202020200A202020202069662028675F666C61675B282A70202D20276127295D29202020200A20202020207B202020200A202020202020202020702B2B3B202020200A20202020207D656C73657B202020200A202020202020202020704F75747075745374725B692B2B5D203D202A703B202020200A202020202020202020675F666C61675B2A70202D202761275D203D20313B202020200A202020202020202020702B2B3B202020200A20202020207D202020200A20207D202020200A2020704F75747075745374725B695D203D20275C30273B202020200A7D202020200A696E74206D61696E2829202020200A7B202020200A202020206D656D73657428675F666C61672C302C73697A656F6628675F666C616729293B202020200A202020206368617220696E7075745B5D203D20226162616361636465223B202020200A2020202063686172202A6F7574707574203D206E657720636861725B7374726C656E28696E70757429202B20315D3B202020200A20202020737472696E6746696C74657228696E7075742C7374726C656E28696E707574292C6F7574707574293B202020200A20202020636F75743C3C6F75747075743C3C656E646C3B202020200A2020202064656C657465206F75747075743B202020200A2020202072657475726E20303B202020200A7D0A);
INSERT INTO `question` VALUES ('365', '10', '通过键盘输入一串小写字母(a~z)组成的字符串。请编写一个字符串压缩程序，将字符串中连续出席的重复字母进行压缩，并输出压缩后的字符串。\n压缩规则：\n1、仅压缩连续重复出现的字符。比如字符串\"abcbc\"由于无连续重复字符，压缩后的字符串还是\"abcbc\"。\n2、压缩字段的格式为\"字符重复的次数+字符\"。例如：字符串\"xxxyyyyyyz\"压缩后就成为\"3x6yz\"。\n要求实现函数： \nvoid stringZip(const char *pInputStr, long lInputLen, char *pOutputStr);\n', 'program', '6', 0x23696E636C756465203C696F73747265616D3E202020200A23696E636C756465203C636173736572743E202020200A202020200A7573696E67206E616D657370616365207374643B202020200A202020200A766F696420737472696E675A697028636F6E73742063686172202A70496E7075745374722C206C6F6E67206C496E7075744C656E2C2063686172202A704F757470757453747229202020200A7B202020200A2020636F6E73742063686172202A70203D2070496E7075745374723B202020200A2020696E74206E756D203D20313B202020200A2020696E742069203D20303B202020200A2020702B2B3B202020200A20207768696C65282A7020213D204E554C4C29202020200A20207B202020200A2020202020207768696C65282A70203D3D202A28702D31292626202A7020213D204E554C4C29202020200A2020202020207B202020200A202020202020206E756D2B2B3B202020200A20202020202020702B2B3B202020200A2020202020207D202020200A202020202020696620286E756D203E203129202020200A2020202020207B202020200A2020202020202020202020696E742073697A65203D20303B202020200A2020202020202020202020696E742074656D70203D206E756D3B202020200A20202020202020202020207768696C65286E756D29202020202020202020202020202F2FE8AEA1E7AE97E4BD8DE695B0202020200A20202020202020202020207B202020200A2020202020202020202020202073697A652B2B3B202020200A202020202020202020202020206E756D202F3D2031303B202020200A20202020202020202020207D202020200A20202020202020202020206E756D203D20313B202020200A202020200A2020202020202020202020666F722028696E74206A203D2073697A653B206A203E20303B206A2D2D29202020200A20202020202020202020207B202020200A202020202020202020202020202020704F75747075745374725B692B6A2D315D203D202730272B2074656D702531303B202020200A20202020202020202020202020202074656D70202F3D2031303B202020200A20202020202020202020207D202020200A202020202020202020202069202B3D73697A653B202020200A2020202020202020202020704F75747075745374725B692B2B5D203D202A28702D31293B202020200A2020202020202020202020702B2B3B202020200A2020202020207D656C73657B202020200A20202020202020202020704F75747075745374725B692B2B5D203D202A28702D31293B202020200A20202020202020202020702B2B3B202020200A2020202020207D202020200A20207D202020200A2020704F75747075745374725B695D203D20275C30273B202020200A7D202020200A202020200A696E74206D61696E2829202020200A7B202020200A202020206368617220696E7075745B5D203D20226363636464656363223B202020200A2020202063686172202A6F7574707574203D206E657720636861725B7374726C656E28696E70757429202B20315D3B202020200A20202020737472696E675A697028696E7075742C7374726C656E28696E707574292C6F7574707574293B202020200A20202020636F75743C3C6F75747075743C3C656E646C3B202020200A2020202072657475726E20303B202020200A7D20200A);
INSERT INTO `question` VALUES ('366', '10', '通过键盘输入100以内正整数的加、减运算式，请编写一个程序输出运算结果字符串。\n输入字符串的格式为：“操作数1 运算符 操作数2”，“操作数”与“运算符”之间以一个空格隔开。\n补充说明：\n1、操作数为正整数，不需要考虑计算结果溢出的情况。\n2、若输入算式格式错误，输出结果为“0”。\n要求实现函数： \nvoid arithmetic(const char *pInputStr, long lInputLen, char *pOutputStr);\n【输入】 pInputStr：  输入字符串\n            lInputLen：  输入字符串长度         \n【输出】 pOutputStr： 输出字符串，空间已经开辟好，与输入字符串等长； \n【注意】只需要完成该函数功能算法，中间不需要有任何IO的输入输出\n示例 \n输入：“4 + 7”  输出：“11”\n输入：“4 - 7”  输出：“-3”\n输入：“9 ++ 7”  输出：“0” 注：格式错误\n\n', 'program', '6', 0x23696E636C756465203C696F73747265616D3E202020200A202020200A7573696E67206E616D657370616365207374643B202020200A202020200A766F69642061726974686D6574696328636F6E73742063686172202A70496E7075745374722C206C6F6E67206C496E7075744C656E2C2063686172202A704F757470757453747229202020200A7B202020200A20636F6E73742063686172202A696E707574203D2070496E7075745374723B202020200A2020202020202063686172202A6F7574707574203D20704F75747075745374723B202020200A20696E742073756D203D20303B202020200A20696E74206F70657261746F7231203D20303B202020200A20696E74206F70657261746F7232203D20303B202020200A2063686172202A74656D70203D206E657720636861725B355D3B202020200A2063686172202A6F7065203D2074656D703B202020200A207768696C65282A696E70757420213D2027202729202F2FE88EB7E5BE97E6938DE4BD9CE695B031202020200A207B202020200A202020202073756D203D2073756D2A3130202B20282A696E7075742B2B202D20273027293B202020200A207D202020200A20696E7075742B2B3B202020200A206F70657261746F7231203D2073756D3B202020200A2073756D203D20303B202020200A202020200A207768696C65282A696E70757420213D2027202729202020200A207B202020200A20202020202A74656D702B2B203D202A696E7075742B2B3B202020200A207D202020200A202020200A20696E7075742B2B3B202020200A202A74656D70203D20275C30273B202020200A202020200A20696620287374726C656E286F706529203E20312029202020200A207B202020200A20202020202A6F75747075742B2B203D202730273B202020200A20202020202A6F7574707574203D20275C30273B202020200A202020202072657475726E3B202020200A207D202020200A202020200A207768696C65282A696E70757420213D20275C302729202F2FE88EB7E5BE97E6938DE4BD9CE695B032202020200A207B202020200A202020202073756D203D2073756D2A3130202B20282A696E7075742B2B202D20273027293B202020200A207D202020200A206F70657261746F7232203D2073756D3B202020200A2073756D203D20303B202020200A202020200A2073776974636820282A6F706529202020200A207B202020200A206361736520272B273A69746F61286F70657261746F72312B6F70657261746F72322C704F75747075745374722C3130293B202020200A2020202020627265616B3B202020200A206361736520272D273A69746F61286F70657261746F72312D6F70657261746F72322C704F75747075745374722C3130293B202020200A20202020627265616B3B202020200A2064656661756C743A202020200A20202020202A6F75747075742B2B203D202730273B202020200A20202020202A6F7574707574203D20275C30273B202020200A202020202072657475726E3B202020200A207D202020200A7D202020200A202020200A696E74206D61696E2829202020200A7B202020200A202020206368617220696E7075745B5D203D202234202D2037223B202020200A2020202063686172206F75747075745B5D203D202220202020223B202020200A2020202061726974686D6574696328696E7075742C7374726C656E28696E707574292C6F7574707574293B202020200A20202020636F75743C3C6F75747075743C3C656E646C3B202020200A2020202072657475726E20303B202020200A7D202020200A);
INSERT INTO `question` VALUES ('367', '10', '输入1--50个数字，求出最小数和最大数的和', 'program', '6', 0x2F2FE8BE93E585A5E4BBA5E98097E58FB7E99A94E5BC80202020200A23696E636C7564653C737464696F2E683E202020200A23646566696E65204E203530202020200A766F696420736F727428696E7420615B5D2C696E74206E293B202020200A696E74206D61696E28766F696429202020200A7B20202020202020200A2020202063686172207374725B3130305D3B202020200A20202020696E7420615B4E5D3D7B307D3B202020200A202020206765747328737472293B2020202020202F2FE8A681E782B931EFBC9AE58AA8E68081E79A84E8BE93E585A5312D2D3530E4B8AAE695B4E695B0EFBC8CE4B88DE883BDE7A1AEE5AE9AE4B8AAE695B0EFBC8CE58FAAE883BDE794A8E5AD97E7ACA6E4B8B2E8BE93E585A5EFBC8CE784B6E5908EE58886E7A6BBE587BAE69DA5202020200A20202020696E7420693D303B202020200A20202020696E74206A3D303B202020200A20202020696E74207369676E3D313B202020200A202020207768696C65287374725B695D213D275C302729202020200A202020207B202020200A20202020202020206966287374725B695D213D272C272920202F2FE8BE93E585A5E697B6E8A681E59CA8E58D8AE8A792E8BE93E585A5202020200A20202020202020207B202020200A202020200A2020202020202020202020206966287374725B695D203D3D20272D2729202020202F2FE8A681E782B93A32EFBC9AE69C89E8B49FE695B4E695B0E79A84E8BE93E585A5202020200A2020202020202020202020207B202020200A2020202020202020202020202020202F2F20692B2B3B2020202F2FE69893E99499E782B931202020200A202020202020202020202020202020207369676E3D2D313B202020200A2020202020202020202020207D202020200A202020202020202020202020656C7365206966287374725B695D213D275C302729202F2FE4B88DE794A8656C7365E79A84E8AF9DEFBC8CE8B49FE58FB7E4B99FE4BC9AE5878FE58EBBE2809830E28099202020200A20202020202020202020207B202020200A202020202020202020202020202020615B6A5D3D615B6A5D2A3130202B207374725B695D2D2730273B202F2FE8A681E782B933EFBC9AE8BE93E585A5E79A84E58FAFE4BBA5E698AFE5A49AE4BD8DE695B0202020200A202020200A20202020202020202020207D202020200A20202020202020207D202020200A2020202020202020692B2B3B202020200A20202020202020206966287374725B695D3D3D272C27207C7C207374725B695D3D3D275C30272920202F2FE8BF99E4B8AAE588A4E696ADE698AFE59CA869E887AAE58AA0E4BBA5E5908E202020200A20202020202020207B202020200A20202020202020202020202020615B6A5D3D615B6A5D2A7369676E3B20202F2FE69893E99499E782B932202020200A202020202020202020202020207369676E3D313B2020202F2F2F2FE69893E99499E782B933202020200A202020202020202020202020206A2B2B3B202020202F2F6AE5B0B1E698AF61E695B0E7BB84E79A84E4B8AAE695B020E88C83E59BB430E588B06A2D31202020200A20202020202020207D202020200A202020200A202020200A202020207D202020200A202020200A20202020736F727428612C6A293B202020200A202020207072696E746628224D6178206E756D626572202B204D696E206E756D626572203D202564222C615B305D2B615B6A2D315D293B202020200A202020200A2020202072657475726E20303B202020200A7D202020200A766F696420736F727428696E7420615B5D2C696E74206E2920202F2FE98089E68BA9E68E92E5BA8F202020200A7B202020200A20202020696E7420692C6A3B202020200A20202020696E74206B3B202020200A20202020696E742074656D703B202020200A20202020666F7228693D303B693C6E2D313B692B2B29202020200A202020207B202020200A20202020202020206B3D693B202020200A2020202020202020666F72286A3D692B313B6A3C6E3B6A2B2B29202020200A20202020202020207B202020200A202020202020202020202020696628615B6B5D3E615B6A5D29202020200A202020202020202020202020202020206B3D6A3B202020200A20202020202020207D202020200A202020202020202069662869213D6B29202020200A20202020202020207B202020200A20202020202020202020202074656D70203D20615B6B5D3B202020200A202020202020202020202020615B6B5D203D20615B695D3B202020200A202020202020202020202020615B695D203D2074656D703B202020200A20202020202020207D202020200A202020207D202020200A20202020666F7228693D303B693C6E3B692B2B29202020200A20202020202020207072696E74662822252D3564222C615B695D293B202020200A2020202070757473282222293B202020200A7D202020200A);
INSERT INTO `question` VALUES ('368', '10', '不使用库函数，编写函数int strcmp(char   *source, char *dest)', 'program', '6', 0x696E7420737472636D702863686172202A736F757263652C63686172202A64657374290A7B0A2069662828736F75726365203D3D204E554C4C29202626202864657374203D3D204E554C4C29290A207B0A202072657475726E20303B0A207D0A207768696C6528282A736F7572636520213D20275C30272920262620282A6465737420213D20275C302729290A207B0A20206966282A736F7572636520213D202A64657374290A20207B0A20202072657475726E20313B0A20207D0A2020656C73650A20207B0A202020736F75726365202B2B3B0A20202064657374202B2B3B0A20207D0A207D0A20696628282A736F75726365203D3D20275C30272920262620282A64657374203D3D20275C302729290A207B0A202072657475726E20303B0A207D0A20656C73650A207B0A202072657475726E20313B0A207D0A7D);
INSERT INTO `question` VALUES ('369', '10', ' 写一函数int fun(char *p)判断一字符串是否为回文，是返回1，不是返回0，出错返回-1 ', 'program', '6', 0x20202020696E742066756E2863686172202A702920200A202020207B20200A202020202020202069662870203D3D204E554C4C2920200A20202020202020207B20200A20202020202020202020202072657475726E202D313B20200A20202020202020207D20200A202020202020202063686172202A70426567696E203D20703B20200A202020202020202063686172202A70456E642020203D20703B20200A20202020202020207768696C65282A70456E6420213D20275C30272920200A20202020202020207B20200A20202020202020202020202070456E64202B2B3B20200A20202020202020207D20200A202020202020202070456E64202D2D3B20200A20202020202020207768696C652870426567696E203C2070456E642920200A20202020202020207B20200A2020202020202020202020206966282A70426567696E20213D202A70456E642920200A2020202020202020202020207B20200A2020202020202020202020202020202072657475726E20303B20200A2020202020202020202020207D20200A202020202020202020202020656C736520200A2020202020202020202020207B20200A2020202020202020202020202020202070426567696E202B2B3B20200A2020202020202020202020202020202070456E642020202D2D3B20200A2020202020202020202020207D20200A20202020202020207D20200A202020202020202072657475726E20313B20200A202020207D2020);
INSERT INTO `question` VALUES ('370', '10', '写一个程序, 要求功能：求出用1，2，5这三个数不同个数组合的和为100的组合个数。如：100个1是一个组合，5个1加19个5是一个组合。。。。 请用C++语言写。（经典，必需掌握）', 'program', '6', 0xE69C80E5AEB9E69893E683B3E588B0E79A84E7AE97E6B395E698AFEFBC9A0AE8AEBE78E698AF31E79A84E4B8AAE695B0EFBC8C79E698AF32E79A84E4B8AAE695B0EFBC8C7AE698AF35E79A84E4B8AAE695B0EFBC8C6E756D626572E698AFE7BB84E59088E695B0E6B3A8E6848FE588B0303C3D783C3D313030EFBC8C303C3D793C3D3530EFBC8C303C3D7A3D3230EFBC8CE68980E4BBA5E58FAFE4BBA5E7BC96E7A88BE4B8BAEFBC9A0A0A6E756D6265723D303B0A666F722028783D303B20783C3D3130303B20782B2B290A666F722028793D303B20793C3D35303B20792B2B290A666F7220287A3D303B207A3C3D32303B207A2B2B290A6966202828782B322A792B352A7A293D3D313030290A6E756D6265722B2B3B0A636F75743C3C6E756D6265723C3C656E646C3B0A0AE4B88AE99DA2E8BF99E4B8AAE7A88BE5BA8FE4B880E585B1E8A681E5BEAAE78EAF3130302A35302A3230E6ACA1EFBC8CE69588E78E87E5AE9EE59CA8E698AFE5A4AAE4BD8EE4BA86E4BA8BE5AE9EE4B88AEFBC8CE8BF99E4B8AAE9A298E79BAEE698AFE4B880E98193E6988EE698BEE79A84E695B0E5ADA6E997AEE9A298EFBC8CE8808CE4B88DE698AFE58D95E7BAAFE79A84E7BC96E7A88BE997AEE9A298E38082E68891E79A84E8A7A3E6B395E5A682E4B88BEFBC9A0AE59BA0E4B8BA782B32792B357A3D3130300AE68980E4BBA5782B32793D3130302D357AEFBC8CE4B8947A3C3D323020783C3D31303020793C3D35300AE68980E4BBA528782B3279293C3D313030EFBC8CE4B89428782B357A29E698AFE581B6E695B00AE5AFB97AE4BD9CE5BEAAE78EAFEFBC8CE6B18278E79A84E58FAFE883BDE580BCE5A682E4B88BEFBC9A0A0A7A3D302C20783D3130302C2039382C2039362C202E2E2E20300A7A3D312C20783D39352C2039332C202E2E2E2C20310A7A3D322C20783D39302C2038382C202E2E2E2C20300A7A3D332C20783D38352C2038332C202E2E2E2C20310A7A3D342C20783D38302C2037382C202E2E2E2C20300A2E2E2E2E2E2E0A7A3D31392C20783D352C20332C20310A7A3D32302C20783D300AE59BA0E6ADA4EFBC8CE7BB84E59088E680BBE695B0E4B8BA313030E4BBA5E58685E79A84E581B6E695B02B3935E4BBA5E58685E79A84E5A587E695B02B3930E4BBA5E58685E79A84E581B6E695B02B2E2E2E2B35E4BBA5E58685E79A84E5A587E695B02B31EFBC8CE58DB3E4B8BAEFBC9A0A2835312B3438292B2834362B3433292B2834312B3338292B2833362B3333292B2833312B3238292B2832362B3233292B2832312B3138292B2831362B3133292B2831312B38292B28362B33292B310A0AE69F90E4B8AAE581B6E695B06DE4BBA5E58685E79A84E581B6E695B0E4B8AAE695B0EFBC88E58C85E68BAC30EFBC89E58FAFE4BBA5E8A1A8E7A4BAE4B8BA6D2F322B313D286D2B32292F32EFBC8CE69F90E4B8AAE5A587E695B06DE4BBA5E58685E79A84E5A587E695B0E4B8AAE695B0E4B99FE58FAFE4BBA5E8A1A8E7A4BAE4B8BA286D2B32292F32EFBC8CE68980E4BBA5EFBC8CE6B182E680BBE79A84E7BB84E59088E6ACA1E695B0E58FAFE4BBA5E7BC96E7A88BE4B8BAEFBC9A0A6E756D6265723D303B0A666F722028696E74206D3D303B6D3C3D3130303B6D2B3D35290A7B0A6E756D6265722B3D286D2B32292F323B0A7D0A636F75743C3C6E756D6265723C3C656E646C3B0AE8BF99E4B8AAE7A88BE5BA8F2CE58FAAE99C80E8A681E5BEAAE78EAF3231E6ACA12C20E4B8A4E4B8AAE58F98E9878FEFBC8CE5B0B1E58FAFE4BBA5E5BE97E588B0E7AD94E6A1882CE6AF94E4B88AE99DA2E79A84E982A3E4B8AAE7A88BE5BA8FE9AB98E69588E4BA86E8AEB8E5A49AE5808D2D2D2D2DE58FAAE698AFE59BA0E4B8BAE4BD9CE4BA86E4B880E4BA9BE7AE80E58D95E79A84E695B0E5ADA6E58886E69E900A0AE8BF99E5868DE4B880E6ACA1E8AF81E6988EE4BA86EFBC9AE8AEA1E7AE97E69CBAE7A88BE5BA8F3DE695B0E68DAEE7BB93E69E842BE7AE97E6B395EFBC8CE8808CE4B894E7AE97E6B395E698AFE7A88BE5BA8FE79A84E781B5E9AD82EFBC8CE5AFB9E4BBBBE4BD95E5B7A5E7A88BE997AEE9A298EFBC8CE5BD93E794A8E8BDAFE4BBB6E69DA5E5AE9EE78EB0E697B6EFBC8CE5BF85E9A1BBE98089E58F96E6BBA1E8B6B3E5BD93E5898DE79A84E8B584E6BA90E99990E588B6EFBC8CE794A8E688B7E99C80E6B182E99990E588B6EFBC8CE5BC80E58F91E697B6E997B4E99990E588B6E7AD89E7A78DE7A78DE99990E588B6E69DA1E4BBB6E4B88BE79A84E69C80E4BC98E7AE97E6B395E38082E8808CE7BB9DE4B88DE883BDE4B880E68BBFE588B0E6898BEFBC8CE5B0B1E7AB8BE588BBE794A8E69C80E5AEB9E69893E683B3E588B0E79A84E7AE97E6B395E7BC96E587BAE4B880E4B8AAE7A88BE5BA8FE4BA86E4BA8BE28094E28094E8BF99E4B88DE698AFE4B880E4B8AAE4B893E4B89AE79A84E7A094E58F91E4BABAE59198E79A84E8A18CE4B8BAE380820AE982A3E4B988EFBC8CE982A3E7A78DE69C80E5AEB9E69893E683B3E588B0E79A84E7AE97E6B395E5B0B1E5AE8CE585A8E6B2A1E69C89E794A8E59097EFBC9FE4B88DEFBC8CE8BF99E7A78DE7AE97E6B395E6ADA3E5A5BDE58FAFE4BBA5E794A8E69DA5E9AA8CE8AF81E696B0E7AE97E6B395E79A84E6ADA3E7A1AEE680A7EFBC8CE59CA8E8B083E8AF95E998B6E6AEB5EFBC8CE8BF99E99D9EE5B8B8E69C89E794A8E38082E59CA8E5BE88E5A49AE5A4A7E585ACE58FB8EFBC8CE4BE8BE5A682E5BEAEE8BDAFEFBC8CE983BDE98787E794A8E4BA86E8BF99E7A78DE696B9E6B395EFBC9AE59CA8E8B083E8AF95E998B6E6AEB5EFBC8CE5AFB9E4B880E4BA9BE9878DE8A681E79A84E99C80E8A681E5A5BDE79A84E7AE97E6B395E69DA5E5AE9EE78EB0E79A84E7A88BE5BA8FEFBC8CE8808CE8BF99E7A78DE5A5BDE79A84E7AE97E6B395E58F88E6AF94E8BE83E5A48DE69D82E697B6EFBC8CE5908CE697B6E794A8E5AEB9E69893E683B3E588B0E79A84E7AE97E6B395E69DA5E9AA8CE8AF81E8BF99E6AEB5E7A88BE5BA8FEFBC8CE5A682E69E9CE4B8A4E7A78DE7AE97E6B395E5BE97E587BAE79A84E7BB93E69E9CE4B88DE4B880E887B4EFBC88E8808CE69C80E5AEB9E69893E683B3E588B0E79A84E7AE97E6B395E4BF9DE8AF81E698AFE6ADA3E7A1AEE79A84EFBC89EFBC8CE982A3E4B988E8AFB4E6988EE4BC98E58C96E79A84E7AE97E6B395E587BAE4BA86E997AEE9A298EFBC8CE99C80E8A681E4BFAEE694B9E38082E58FAFE4BBA5E4B8BEE4BE8BE8A1A8E7A4BAE4B8BAEFBC9A0A2369666465662044454255470A696E742073696D706C6528293B0A23656E642069660A696E74206F7074696D697A6528293B0A2E2E2E2E2E2E0A696E20612066756E6374696F6E3A0A7B0A726573756C743D6F7074696D697A6528293B0A41535345525428726573756C743D3D73696D706C652829293B0A7D0AE8BF99E6A0B72CE59CA8E8B083E8AF95E998B6E6AEB52CE5A682E69E9CE7AE80E58D95E7AE97E6B395E5928CE4BC98E58C96E7AE97E6B395E79A84E7BB93E69E9CE4B88DE4B880E887B42CE5B0B1E4BC9AE68993E587BAE696ADE8A880E38082E5908CE697B6EFBC8CE59CA8E7A88BE5BA8FE79A84E58F91E5B883E78988E69CACEFBC8CE58DB4E4B88DE4BC9AE58C85E590ABE7ACA8E9878DE79A8473696D706C652829E587BDE695B0E38082E28094E28094E4BBBBE4BD95E5A4A7E59E8BE5B7A5E7A88BE8BDAFE4BBB6E983BDE99C80E8A681E9A284E58588E8AEBEE8AEA1E889AF);
INSERT INTO `question` VALUES ('371', '10', '一个学生的信息是：姓名，学号，性别，年龄等信息，用一个链表，把这些学生信息连在一起， 给出一个age, 在些链表中删除学生年龄等于age的学生信息。', 'program', '6', 0x23696E636C7564652022737464696F2E68220A23696E636C7564652022636F6E696F2E68220A0A0A737472756374207374757B0A63686172206E616D655B32305D3B0A63686172207365783B0A696E74206E6F3B0A696E74206167653B0A73747275637420737475202A206E6578743B0A7D2A6C696E6B6C6973743B0A73747275637420737475202A63726561746C69737428696E74206E290A7B0A696E7420693B0A2F2F68E4B8BAE5A4B4E7BB93E782B9EFBC8C70E4B8BAE5898DE4B880E7BB93E782B9EFBC8C73E4B8BAE5BD93E5898DE7BB93E782B90A73747275637420737475202A682C2A702C2A733B0A68203D202873747275637420737475202A296D616C6C6F632873697A656F66287374727563742073747529293B0A682D3E6E657874203D204E554C4C3B0A703D683B0A666F7228693D303B693C6E3B692B2B290A7B200A73203D202873747275637420737475202A296D616C6C6F632873697A656F66287374727563742073747529293B0A702D3E6E657874203D20733B0A7072696E74662822506C6561736520696E7075742074686520696E666F726D6174696F6E206F66207468652073747564656E743A206E616D6520736578206E6F20616765205C6E22293B0A7363616E6628222573202563202564202564222C732D3E6E616D652C26732D3E7365782C26732D3E6E6F2C26732D3E616765293B0A732D3E6E657874203D204E554C4C3B0A70203D20733B0A7D0A7072696E74662822437265617465207375636365737366756C2122293B0A72657475726E2868293B0A7D0A766F69642064656C6574656C6973742873747275637420737475202A732C696E742061290A7B0A73747275637420737475202A703B0A7768696C6528732D3E616765213D61290A7B0A70203D20733B0A73203D20732D3E6E6578743B0A7D0A696628733D3D4E554C4C290A7072696E74662822546865207265636F7264206973206E6F742065786973742E22293B0A656C73650A7B0A702D3E6E657874203D20732D3E6E6578743B0A7072696E7466282244656C657465207375636365737366756C2122293B0A7D0A7D0A766F696420646973706C61792873747275637420737475202A73290A7B0A73203D20732D3E6E6578743B0A7768696C652873213D4E554C4C290A7B0A7072696E7466282225732025632025642025645C6E222C732D3E6E616D652C732D3E7365782C732D3E6E6F2C732D3E616765293B0A73203D20732D3E6E6578743B0A7D0A7D0A696E74206D61696E28290A7B0A73747275637420737475202A733B0A696E74206E2C6167653B0A7072696E74662822506C6561736520696E70757420746865206C656E677468206F66207365716C6973743A5C6E22293B0A7363616E6628222564222C266E293B0A73203D2063726561746C697374286E293B0A646973706C61792873293B0A7072696E74662822506C6561736520696E70757420746865206167653A5C6E22293B0A7363616E6628222564222C26616765293B0A64656C6574656C69737428732C616765293B0A646973706C61792873293B0A72657475726E20303B0A7D);
INSERT INTO `question` VALUES ('372', '10', '实现一个函数，把一个字符串中的字符从小写转为大写。', 'program', '6', 0x23696E636C7564652022737464696F2E68220A23696E636C7564652022636F6E696F2E68220A0A0A766F6964207570706572732863686172202A732C63686172202A7573290A7B0A666F72283B2A73213D275C30273B732B2B2C75732B2B290A7B0A6966282A733E3D27612726262A733C3D277A27290A2A7573203D202A732D33323B0A656C73650A2A7573203D202A733B0A7D0A2A7573203D20275C30273B0A7D0A696E74206D61696E28290A7B0A63686172202A732C2A75733B0A636861722073735B32305D3B0A7072696E74662822506C6561736520696E707574206120737472696E673A5C6E22293B0A7363616E6628222573222C7373293B0A73203D2073733B0A75707065727328732C7573293B0A7072696E7466282254686520726573756C742069733A5C6E25735C6E222C7573293B0A676574636828293B0A7D0AE6ADA4E7B1BBE9A298E79BAEE88BA5E4B88DE8AEB0E5BE97E5878F3332E4BD8DE8AFB7E5BD93E59CBAE8B083E8AF95E4B88B);
INSERT INTO `question` VALUES ('373', '10', '随机输入一个数，判断它是不是对称数（回文数）（如3，121，12321，45254）。不能用字符串库函数 \n/***************************************************************\n1.\n函数名称：Symmetry \n功能： 判断一个数时候为回文数(121,35653) \n输入： 长整型的数 \n输出： 若为回文数返回值为1 esle 0 \n******************************************************************/', 'program', '6', 0xE696B9E6B395E4B880200A2F2A202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D200AE58A9FE883BDEFBC9A200AE588A4E696ADE5AD97E7ACA6E4B8B2E698AFE590A6E4B8BAE59B9EE69687E695B0E5AD97200AE5AE9EE78EB0EFBC9A200AE58588E5B086E5AD97E7ACA6E4B8B2E8BDACE68DA2E4B8BAE6ADA3E695B4E695B0EFBC8CE5868DE5B086E6ADA3E695B4E695B0E98086E5BA8FE7BB84E59088E4B8BAE696B0E79A84E6ADA3E695B4E695B0EFBC8CE4B8A4E695B0E79BB8E5908CE58899E4B8BAE59B9EE69687E695B0E5AD97200AE8BE93E585A5EFBC9A200A63686172202A73EFBC9AE5BE85E588A4E696ADE79A84E5AD97E7ACA6E4B8B2200AE8BE93E587BAEFBC9A200AE697A0200AE8BF94E59B9EEFBC9A200A30EFBC9AE6ADA3E7A1AEEFBC9B31EFBC9AE5BE85E588A4E696ADE79A84E5AD97E7ACA6E4B8B2E4B8BAE7A9BAEFBC9B32EFBC9AE5BE85E588A4E696ADE79A84E5AD97E7ACA6E4B8B2E4B88DE4B8BAE695B0E5AD97EFBC9B200A33EFBC9AE5AD97E7ACA6E4B8B2E4B88DE4B8BAE59B9EE69687E695B0E5AD97EFBC9B34EFBC9AE5BE85E588A4E696ADE79A84E5AD97E7ACA6E4B8B2E6BAA2E587BA200A2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D202A2F200A756E7369676E656420497353796D6D657472792863686172202A7329200A7B200A63686172202A70203D20733B200A6C6F6E67206E4E756D626572203D20303B200A6C6F6E67206E203D20303B200A6C6F6E67206E54656D70203D20303B200A0A0A2F2AE588A4E696ADE8BE93E585A5E698AFE590A6E4B8BAE7A9BA2A2F200A696620282A73203D3D205C275C5C305C2729200A72657475726E20313B200A0A0A2F2AE5B086E5AD97E7ACA6E4B8B2E8BDACE68DA2E4B8BAE6ADA3E695B4E695B02A2F200A7768696C6520282A7020213D205C275C5C305C2729200A7B200A2F2AE588A4E696ADE5AD97E7ACA6E698AFE590A6E4B8BAE695B0E5AD972A2F200A696620282A703C5C27305C27207C7C202A703E5C27395C2729200A72657475726E20323B200A0A0A2F2AE588A4E696ADE6ADA3E695B4E695B0E698AFE590A6E6BAA2E587BA2A2F200A69662028282A702D5C27305C2729203E2028343239343936373239352D286E4E756D6265722A3130292929200A72657475726E20343B200A0A6E4E756D626572203D20282A702D5C27305C2729202B20286E4E756D626572202A203130293B200A0A702B2B3B200A7D200A2F2AE5B086E695B0E5AD97E98086E5BA8FE7BB84E59088EFBC8CE79BB4E68EA5E68A84E6A5BCE4B88AE9AB98E6898BE79A84E4BBA3E7A081EFBC8CE88EABE680AAEFBC8CE591B5E591B52A2F200A6E203D206E4E756D6265723B200A7768696C65286E29200A7B200A2F2AE588A4E696ADE6ADA3E695B4E695B0E698AFE590A6E6BAA2E587BA2A2F200A69662028286E25313029203E2028343239343936373239352D286E54656D702A3130292929200A72657475726E20333B200A0A6E54656D70203D206E54656D702A3130202B206E2531303B200A6E202F3D2031303B200A7D200A0A2F2AE6AF94E8BE83E98086E5BA8FE695B0E5928CE58E9FE5BA8FE695B0E698AFE590A6E79BB8E7AD892A2F200A696620286E4E756D62657220213D206E54656D7029200A72657475726E20333B200A72657475726E20303B200A7D200A0AE696B9E6B395E4BA8C200A2F2A202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D200AE58A9FE883BDEFBC9A200AE588A4E696ADE5AD97E7ACA6E4B8B2E698AFE590A6E4B8BAE59B9EE69687E695B0E5AD97200AE5AE9EE78EB0EFBC9A200AE58588E5BE97E588B0E5AD97E7ACA6E4B8B2E79A84E995BFE5BAA6EFBC8CE5868DE4BE9DE6ACA1E6AF94E8BE83E5AD97E7ACA6E4B8B2E79A84E5AFB9E5BA94E4BD8DE5AD97E7ACA6E698AFE590A6E79BB8E5908C200AE8BE93E585A5EFBC9A200A63686172202A73EFBC9AE5BE85E588A4E696ADE79A84E5AD97E7ACA6E4B8B2200AE8BE93E587BAEFBC9A200AE697A0200AE8BF94E59B9EEFBC9A200A30EFBC9AE6ADA3E7A1AEEFBC9B31EFBC9AE5BE85E588A4E696ADE79A84E5AD97E7ACA6E4B8B2E4B8BAE7A9BAEFBC9B32EFBC9AE5BE85E588A4E696ADE79A84E5AD97E7ACA6E4B8B2E4B88DE4B8BAE695B0E5AD97EFBC9B200A33EFBC9AE5AD97E7ACA6E4B8B2E4B88DE4B8BAE59B9EE69687E695B0E5AD97200A2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D202A2F200A756E7369676E656420497353796D6D657472795F322863686172202A7329200A7B200A63686172202A70203D20733B200A696E74206E4C656E203D20303B200A696E742069203D20303B200A0A2F2AE588A4E696ADE8BE93E585A5E698AFE590A6E4B8BAE7A9BA2A2F200A696620282A73203D3D205C275C5C305C2729200A72657475726E20313B200A0A2F2AE5BE97E588B0E5AD97E7ACA6E4B8B2E995BFE5BAA62A2F200A7768696C6520282A7020213D205C275C5C305C2729200A7B200A2F2AE588A4E696ADE5AD97E7ACA6E698AFE590A6E4B8BAE695B0E5AD972A2F200A696620282A703C5C27305C27207C7C202A703E5C27395C2729200A72657475726E20323B200A0A6E4C656E2B2B3B200A702B2B3B200A7D200A0A2F2AE995BFE5BAA6E4B88DE4B8BAE5A587E695B0EFBC8CE4B88DE4B8BAE59B9EE69687E695B0E5AD972A2F200A696620286E4C656E2532203D3D203029200A72657475726E20343B200A0A2F2AE995BFE5BAA6E4B8BA31EFBC8CE58DB3E4B8BAE59B9EE69687E695B0E5AD972A2F200A696620286E4C656E203D3D203129200A72657475726E20303B200A0A2F2AE4BE9DE6ACA1E6AF94E8BE83E5AFB9E5BA94E5AD97E7ACA6E698AFE590A6E79BB8E5908C2A2F200A70203D20733B200A69203D206E4C656E2F32202D20313B200A7768696C6520286929200A7B200A696620282A28702B692920213D202A28702B6E4C656E2D692D312929200A72657475726E20333B200A0A692D2D3B200A7D200A0A72657475726E20303B200A7D200A0AE6B182327E32303030E79A84E68980E69C89E7B4A0E695B02EE69C89E8B6B3E5A49FE79A84E58685E5AD982CE8A681E6B182E5B0BDE9878FE5BFAB0AE7AD94E6A188EFBC9A0A696E742066696E6476616C75655B323030305D3D7B327D3B0A73746174696320696E742066696E643D313B0A626F6F6C2061646A75737428696E742076616C7565290A7B0A6173736572742876616C75653E3D32293B0A69662876616C75653D3D32292072657475726E20747275653B0A666F7228696E7420693D303B693C3D66696E643B692B2B290A7B0A69662876616C75652566696E6476616C75655B695D3D3D30290A72657475726E2066616C73653B0A7D0A66696E6476616C75655B66696E642B2B5D3B0A72657475726E20747275653B0A7D0A);
INSERT INTO `question` VALUES ('374', '10', '请在小于99999的正整数中找符合下列条件的数，它既是完全平方数，又有两位数字相同，如：144，676。用c语言编写（不能用数字转换成字符串）。', 'program', '6', 0x23696E636C7564653C737464696F2E683E0A23696E636C7564653C6D6174682E683E0A2F2FE587BDE695B06861766573616D656E756DE7A1AEE8AEA46E756DE698AFE590A6E6BBA1E8B6B3E69DA1E4BBB60A696E74206861766573616D656E756D28696E74206E756D290A7B0A696E7420693D302C6A3B0A6368617220615B31305D203D207B307D3B0A7768696C65286E756D3E30290A7B0A2020206A3D6E756D2531303B0A202020615B6A5D2B3D313B0A2020206E756D3D6E756D2F31303B0A7D0A7768696C6528615B695D3C3D312626693C3130290A202020692B2B3B0A69662028693C313029200A20202072657475726E20313B0A656C7365200A20202072657475726E20303B0A7D0A766F6964206D61696E28766F6964290A7B0A696E7420692C6A2C6D3B0A6D3D28696E742973717274283939393939293B0A666F7228693D313B693C6D3B692B2B290A7B0A20202020206A3D692A693B0A202020202069662028313D3D6861766573616D656E756D286A2929200A20202020207072696E746628222536645C74222C6A293B0A7D0A7D);
INSERT INTO `question` VALUES ('375', '10', '写出程序把一个链表中的接点顺序倒排', 'program', '6', 0x7479706564656620737472756374206C696E6B6E6F64650A7B0A696E7420646174613B0A737472756374206C696E6B6E6F6465202A6E6578743B0A7D6E6F64653B0A2F2FE5B086E4B880E4B8AAE993BEE8A1A8E98086E7BDAE0A6E6F6465202A72657665727365286E6F6465202A68656164290A7B0A6E6F6465202A702C2A712C2A723B0A703D686561643B0A713D702D3E6E6578743B0A7768696C652871213D4E554C4C290A7B0A723D712D3E6E6578743B0A712D3E6E6578743D703B0A703D713B0A713D723B0A7D0A0A0A686561642D3E6E6578743D4E554C4C3B0A686561643D703B0A72657475726E20686561643B0A7D);
INSERT INTO `question` VALUES ('376', '10', '写出程序删除链表中的所有接点', 'program', '6', 0x766F69642064656C5F616C6C286E6F6465202A68656164290A7B0A20206E6F6465202A703B0A20207768696C652868656164213D4E554C4C290A7B0A2020703D686561642D3E6E6578743B0A2020667265652868656164293B0A2020686561643D703B0A7D0A2020636F75743C3C22E9878AE694BEE7A9BAE997B4E68890E58A9F21223C3C656E646C3B0A7D);
INSERT INTO `question` VALUES ('377', '10', '两个字符串，s,t;把t字符串插入到s字符串中，s字符串有足够的空间存放t字符串', 'program', '6', 0x766F696420696E736572742863686172202A732C2063686172202A742C20696E742069290A7B0A63686172202A71203D20743B0A63686172202A70203D733B0A69662871203D3D204E554C4C2972657475726E3B0A7768696C65282A70213D275C3027290A7B0A702B2B3B0A7D0A7768696C65282A71213D30290A7B0A2A703D2A713B0A702B2B3B0A712B2B3B0A7D0A2A70203D20275C30273B0A7D);
INSERT INTO `question` VALUES ('378', '10', '请你分别划划OSI的七层网络结构图，和TCP/IP的五层结构图？', 'essay', '6', 0x202020204F53492F49534FE6A0B9E68DAEE695B4E4B8AAE8AEA1E7AE97E69CBAE7BD91E7BB9CE58A9FE883BDE5B086E7BD91E7BB9CE58886E4B8BAEFBC9AE789A9E79086E5B182E38081E695B0E68DAEE993BEE8B7AFE5B182E38081E7BD91E7BB9CE5B182E38081E4BCA0E8BE93E5B182E38081E4BC9AE8AF9DE5B182E38081E8A1A8E7A4BAE5B182E38081E5BA94E794A8E5B182E4B883E5B182E38082E4B99FE7A7B0E2809CE4B883E5B182E6A8A1E59E8BE2809DE380820A5443502F4950E2809CE4BA94E5B182E6A8A1E59E8BE2809DE58886E4B8BAEFBC9AE789A9E79086E5B182E38081E7BD91E7BB9CE68EA5E58FA3E5B182E38081E7BD91E7BB9CE5B182284950E5B18229E38081E4BCA0E8BE93E5B182285443502F554450E5B18229E38081E5BA94E794A8E5B182E38082);
INSERT INTO `question` VALUES ('379', '10', '请你详细的解释一下IP协议的定义，在哪个层上面，主要有什么作用？ TCP与UDP呢？', 'essay', '6', 0x2020204950E58D8FE8AEAEE698AFE7BD91E7BB9CE5B182E79A84E58D8FE8AEAEEFBC8CE5AE83E5AE9EE78EB0E4BA86E887AAE58AA8E8B7AFE794B1E58A9FE883BDEFBC8CE4B99FE5B0B1E698AFE5AFBBE5BE84E79A84E58A9FE883BDE38082544350E58D8FE8AEAEE698AFE4BCA0E8BE93E5B182E79A84E58D8FE8AEAEEFBC8CE5AE83E59091E4B88BE5B18FE894BDE4BA864950E58D8FE8AEAEE4B88DE58FAFE99DA0E4BCA0E8BE93E79A84E789B9E680A7EFBC8CE59091E4B88AE68F90E4BE9BE4B880E4B8AAE58FAFE99DA0E79A84E782B9E588B0E782B9E79A84E4BCA0E8BE93EFBC9B554450E4B99FE698AFE4BCA0E8BE93E5B182E79A84E58D8FE8AEAEEFBC8CE68F90E4BE9BE79A84E698AFE4B880E7A78DE697A0E8BF9EE68EA5E79A84E69C8DE58AA12CE4B8BBE8A681E88083E89991E588B0E5BE88E5A49AE5BA94E794A8E4B88DE99C80E8A681E58FAFE99DA0E79A84E8BF9EE68EA5EFBC8CE4BD86E99C80E8A681E5BFABE9809FE79A84E4BCA0E8BE93EFBC8CE5A682E5B180E59F9FE7BD91E4B8ADE79A84E8AEA1E7AE97E69CBAE4BCA0E8BE93E69687E4BBB6E4B880E888ACE4BDBFE794A8554450E58D8FE8AEAEE38082);
INSERT INTO `question` VALUES ('380', '10', '请问交换机和路由器分别的实现原理是什么？分别在哪个层次上面实现的？', 'essay', '6', 0x20202020E4BAA4E68DA2E69CBAE794A8E59CA8E5B180E59F9FE7BD91E4B8ADEFBC8CE4BAA4E68DA2E69CBAE9809AE8BF87E8AEB0E5BD95E5B180E59F9FE7BD91E58685E59084E88A82E782B9E69CBAE599A8E79A844D4143E59CB0E59D80E5B0B1E58FAFE4BBA5E5AE9EE78EB0E4BCA0E98092E68AA5E696872CE697A0E99C80E79C8BE68AA5E69687E4B8ADE79A844950E59CB0E59D80E38082E8B7AFE794B1E599A8E8AF86E588ABE4B88DE5908CE7BD91E7BB9CE79A84E696B9E6B395E698AFE9809AE8BF87E8AF86E588ABE4B88DE5908CE7BD91E7BB9CE79A84E7BD91E7BB9C4944E58FB7284950E59CB0E59D80E79A84E9AB98E7ABAFE983A8E5888629E8BF9BE8A18CE79A84EFBC8CE68980E4BBA5E4B8BAE4BA86E4BF9DE8AF81E8B7AFE794B1E68890E58A9FEFBC8CE6AF8FE4B8AAE7BD91E7BB9CE983BDE5BF85E9A1BBE69C89E4B880E4B8AAE594AFE4B880E79A84E7BD91E7BB9CE7BC96E58FB7E38082E8B7AFE794B1E599A8E9809AE8BF87E5AF9FE79C8BE68AA5E69687E4B8AD4950E59CB0E59D80E69DA5E586B3E5AE9AE8B7AFE5BE84EFBC8CE59091E982A3E4B8AAE5AD90E7BD9128E4B88BE4B880E8B7B329E8B7AFE794B1E38082E4B99FE5B0B1E698AFE8AFB4E4BAA4E68DA2E69CBAE5B7A5E4BD9CE59CA8E695B0E68DAEE993BEE8B7AFE5B182E79C8B4D4143E59CB0E59D80EFBC8CE8B7AFE794B1E599A8E5B7A5E4BD9CE59CA8E7BD91E99985E5B182E79C8B4950E59CB0E59D80E38082E4BD86E698AFE794B1E4BA8EE78EB0E59CA8E7BD91E7BB9CE8AEBEE5A487E79A84E58F91E5B195EFBC8CE5BE88E5A49AE8AEBEE5A487E697A2E69C89E4BAA4E68DA2E69CBAE79A84E58A9FE883BDE69C89E794B1E8B7AFE794B1E599A8E79A84E58A9FE883BD28E4BAA4E68DA2E5BC8FE8B7AFE794B1E599A829E4BDBFE5BE97E4B8A4E88085E7958CE99990E8B68AE69DA5E8B68AE6A8A1E7B38AE38082);
INSERT INTO `question` VALUES ('381', '10', '请问C++的类和C里面的struct有什么区别？', 'essay', '6', 0x20202020432B2BE79A84636C617373E585B7E69C89E695B0E68DAEE5B081E8A385E58A9FE883BDEFBC8CE585B6E58C85E590ABE5B19EE680A7E8AEBFE997AEE7BAA7E588ABE58FAFE4BBA5E4B8BA707269766174652C7075626C6963E5928C70726F746563742CE8BF98E585B7E69C89E5AE9EE78EB0E7B1BBE68EA5E58FA3E58A9FE883BDE5928CE8BE85E58AA9E58A9FE883BDE79A84E6938DE4BD9CE587BDE695B0EFBC8CE8808C737472756374E5B19EE680A7E8AEBFE997AEE69D83E99990E58FAAE69C897075626C6963EFBC8CE6B2A1E69C89E695B0E68DAEE5B081E8A385E58A9FE883BDEFBC8CE4B99FE5B0B1E6B2A1E69C89E5AE9EE78EB0E4BFA1E681AFE99A90E8978FE8BF99E4B880E99DA2E59091E5AFB9E8B1A1E79A84E6809DE683B3E79A84E69CBAE588B62C737472756374E69CACE8BAABE4B88DE590ABE69C89E6938DE4BD9CE587BDE695B0EFBC8CE58FAAE69C89E695B0E68DAEE38082);
INSERT INTO `question` VALUES ('382', '10', '请讲一讲析构函数和虚函数的用法和作用？', 'essay', '6', 0x202020E69E90E69E84E587BDE695B0E698AFE59CA8E7B1BBE5AFB9E8B1A1E6ADBBE4BAA1E697B6E794B1E7B3BBE7BB9FE887AAE58AA8E8B083E794A8EFBC8CE585B6E4BD9CE794A8E698AFE794A8E69DA5E9878AE694BEE5AFB9E8B1A1E79A84E68C87E99288E695B0E68DAEE68890E59198E68980E68C87E79A84E58AA8E68081E7A9BAE997B42CE5A682E69E9CE59CA8E69E84E980A0E587BDE695B0E4B8ADEFBC8CE4BDA0E794B3E8AFB7E4BA86E58AA8E68081E7A9BAE997B4EFBC8CE982A3E4B988E4B8BAE4BA86E981BFE5858DE5BC95E8B5B7E7A88BE5BA8FE99499E8AFAFEFBC8CE4BDA0E5BF85E9A1BBE59CA8E69E90E69E84E587BDE695B0E4B8ADE9878AE694BEE8BF99E983A8E58886E58685E5AD98E7A9BAE997B4E38082E5A682E69E9CE59FBAE7B1BBE79A84E587BDE695B0E794A87669727475616CE4BFAEE9A5B0EFBC8CE68890E4B8BAE8999AE587BDE695B0EFBC8CE58899E585B6E6B4BEE7949FE7B1BBE79BB8E5BA94E79A84E9878DE8BDBDE587BDE695B0E4BB8DE883BDE7BBA7E689BFE8AFA5E8999AE587BDE695B0E79A84E680A7E8B4A8EFBC8CE8999AE587BDE695B0E8BF9BE8A18CE58AA8E68081E88194E7BC96EFBC8CE4B99FE58DB3E585B7E69C89E5A49AE68081E680A72CE4B99FE5B0B1E698AFE6B4BEE7949FE7B1BBE58FAFE4BBA5E694B9E58F98E59FBAE7B1BBE5908CE5908DE587BDE695B0E79A84E8A18CE4B8BAEFBC8CE59CA8E99DA2E59091E5AFB9E8B1A1E4B896E7958CE4B8ADEFBC8CE5A49AE68081E698AFE69C80E5BCBAE5A4A7E79A84E69CBAE588B6EFBC8CE8999AE587BDE695B0E5B0B1E698AFE8BF99E4B880E69CBAE588B6E79A84632B2BE5AE9EE78EB0E696B9E5BC8FE38082);
INSERT INTO `question` VALUES ('383', '10', '全局变量和局部变量有什么区别？实怎么实现的？操作系统和编译器是怎么知道的？', 'essay', '6', 0x202020E585A8E5B180E58F98E9878FE698AFE695B4E4B8AAE7A88BE5BA8FE983BDE58FAFE8AEBFE997AEE79A84E58F98E9878FEFBC8CE8B081E983BDE58FAFE4BBA5E8AEBFE997AEEFBC8CE7949FE5AD98E69C9FE59CA8E695B4E4B8AAE7A88BE5BA8FE4BB8EE8BF90E8A18CE588B0E7BB93E69D9F28E59CA8E7A88BE5BA8FE7BB93E69D9FE697B6E68980E58DA0E58685E5AD98E9878AE694BE29EFBC9BE8808CE5B180E983A8E58F98E9878FE5AD98E59CA8E4BA8EE6A8A1E59D9728E5AD90E7A88BE5BA8FEFBC8CE587BDE695B029E4B8ADEFBC8CE58FAAE69C89E68980E59CA8E6A8A1E59D97E58FAFE4BBA5E8AEBFE997AEEFBC8CE585B6E4BB96E6A8A1E59D97E4B88DE58FAFE79BB4E68EA5E8AEBFE997AEEFBC8CE6A8A1E59D97E7BB93E69D9F28E587BDE695B0E8B083E794A8E5AE8CE6AF9529EFBC8CE5B180E983A8E58F98E9878FE6B688E5A4B1EFBC8CE68980E58DA0E68DAEE79A84E58685E5AD98E9878AE694BEE380820AE6938DE4BD9CE7B3BBE7BB9FE5928CE7BC96E8AF91E599A8EFBC8CE58FAFE883BDE698AFE9809AE8BF87E58685E5AD98E58886E9858DE79A84E4BD8DE7BDAEE69DA5E79FA5E98193E79A84EFBC8CE585A8E5B180E58F98E9878FE58886E9858DE59CA8E585A8E5B180E695B0E68DAEE6AEB5E5B9B6E4B894E59CA8E7A88BE5BA8FE5BC80E5A78BE8BF90E8A18CE79A84E697B6E58099E8A2ABE58AA0E8BDBD2E20E5B180E983A8E58F98E9878FE58899E58886E9858DE59CA8E5A086E6A088E9878CE99DA2E38082);
INSERT INTO `question` VALUES ('384', '4', '关于bootstrap3的说法，错误的是', 'option', '7', 0xE58FAAE69C896F70657261E4B88DE694AFE68C81E4BA86);
INSERT INTO `question` VALUES ('385', '4', '对于border-radius标签，说法错误的是', 'option', '7', 0xE591B5E591B5EFBC8C494538E6808EE4B988E4BC9AE694AFE68C81E591A2);
INSERT INTO `question` VALUES ('386', '4', '以下位于<head>间的代码片段是做什么用的\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n', 'option', '7', 0xE698AFE4B8BAE4BA86E694AFE68C81E6ADA3E5B8B8E79A84E7BB98E588B6E5928CE7BCA9E694BE);
INSERT INTO `question` VALUES ('387', '4', '下列说法正确的是', 'option', '7', 0xE9BB98E8AEA4E4B88DE5B8A6E4B88BE58892E7BABFEFBC8C686F766572E78AB6E68081E6898DE5B8A6);
INSERT INTO `question` VALUES ('388', '4', '下列不属于bootstrap3的标签是', 'option', '7', 0x626F6F747374617033E4B8ADE588A0E999A4E4BA86726F772D666C756964EFBC8CE59CA8627432E4B8ADE6898DE69C89);
INSERT INTO `question` VALUES ('389', '4', '根据栅格系统的标准用法，错误的是', 'option', '7', 0x726F77E5908EE99DA2E79A84E79BB4E68EA5E5AD90E58583E7B4A0E5BF85E9A1BBE698AFE5889720636F6C2D6D64E4B98BE7B1BB);
INSERT INTO `question` VALUES ('390', '4', '关于屏幕的尺寸标准，说法错误的是', 'option', '7', 0xE5B08FE4BA8E373638E79A84E6898BE69CBA);
INSERT INTO `question` VALUES ('391', '4', '关于嵌套列的用法，错误的是', 'option', '7', 0x726F77E5908EE58FAAE883BDE8B79FE58897);
INSERT INTO `question` VALUES ('392', '4', '关于h标签\n<h1>h1. Bootstrap heading <small>Secondary text</small></h1>以下说法正确的是', 'option', '7', '');
INSERT INTO `question` VALUES ('393', '4', '关于全局设置的说法，错误的是', 'option', '7', 0xE8AEBEE7BDAEE79A84E4B8BAE5A496E8BEB9E8B79D);
INSERT INTO `question` VALUES ('394', '4', '以下说法，错误的是', 'option', '7', '');
INSERT INTO `question` VALUES ('395', '4', '以下标签，错误的是', 'option', '7', 0xE6B2A1E69C89E59E82E79BB4E5B185E4B8ADE5AFB9E9BD90E79A84E6A087E7ADBE);
INSERT INTO `question` VALUES ('396', '4', '以下说法正确的是', 'option', '7', 0xE4B880E4BA9BE4B88DE5B8B8E794A8E79A84E794A8E6B395);
INSERT INTO `question` VALUES ('397', '4', '关于栅格系统，哪些可以用来正确的表示一列', 'option', '7', '');
INSERT INTO `question` VALUES ('398', '4', '关于栅格系统，以下说法正确的是', 'option', '7', 0xE6B3A8E6848F626F782D73697A696E67E4B8BA63737333E5B19EE680A7);
INSERT INTO `question` VALUES ('399', '4', '能在1024的windows机器上显示8列而在肾6手机上显示12列的是', 'option', '7', '');
INSERT INTO `question` VALUES ('400', '4', '哪些是正确的辅助类', 'option', '7', '');
INSERT INTO `question` VALUES ('401', '4', '哪些可以给文字加上背景', 'option', '7', '');
INSERT INTO `question` VALUES ('402', '4', '下列辅助类的说法错误的是', 'option', '7', '');
INSERT INTO `question` VALUES ('403', '4', '关于下列类的说法错误的是', 'option', '7', '');
INSERT INTO `question` VALUES ('404', '4', '有一个元素，需要在pc端显示而在手机端隐藏，需要使用的方法是', 'option', '7', '');
INSERT INTO `question` VALUES ('405', '4', '有一个元素，需要在打印时隐藏，使用的类是', 'option', '7', '');
INSERT INTO `question` VALUES ('406', '4', '对于下拉菜单，错误的是\n<div class=\"dropdown\">\n  <button class=\"btn btn-default dropdown-toggle\" type=\"button\" id=\"dropdownMenu1\" data-toggle=\"dropdown\">\n    Dropdown\n    <span class=\"caret\"></span>\n  </button>\n  <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dropdownMenu1\">\n    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Action</a></li>\n    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Another action</a></li>\n    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Something else here</a></li>\n    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">Separated link</a></li>\n  </ul>\n</div>', 'option', '7', '');
INSERT INTO `question` VALUES ('407', '4', '下列关于btn标签的说法正确的是', 'option', '7', '');
INSERT INTO `question` VALUES ('408', '4', '为了在input两侧添加额外元素，以下说法正确的是\n', 'option', '7', '');
INSERT INTO `question` VALUES ('409', '4', '如果把传输速率定义为单位时间内传送的信息量（以字节计算）多少。关于一下几种典型的数据传输速率：\n\n1.使用USB2.0闪存盘，往USB闪存盘上拷贝文件的数据传输速率\n\n2.使用100M以太网，在局域网内拷贝大文件时网络上的数据传输速率\n\n3.使用一辆卡车拉1000块单块1TB装满数据的硬盘，以100km/h的速度从上海到天津（100km）一趟所等价的数据传输宽带\n\n4.使用电脑播放MP3，电脑的pci总线到声卡的数据传输速率\n\n在通常情况下，关于这几个传输速率的排序正确的是：\n\n\n', 'option', '8', 0x55534220322E30E79A84E79086E8AEBAE4BCA0E8BE93E69E81E99990E698AF3438304D6270735B325DEFBC8CE4BD86E698AFE68C89E785A7E8BF99E4B8AAE9809FE78E87E5B0B1E6B2A1E69C89E98089E9A1B9E58FAFE98089E4BA862D2E2DEFBC8CE68980E4BBA5E78C9CE6B58BE5BA94E8AFA5E8AEA4E4B8BAE698AFE699AEE9809A55E79B98E58699E695B0E68DAEE79A84364D422F73EFBC8CE58DB334384D627073EFBC9B0A3130304DE4BBA5E5A4AAE7BD91E79A84E9809FE78E87E5B0B1E698AF3130304D627073EFBC9B0AE58DA1E8BDA6E68B89E7A1ACE79B98EFBC8C31303030783130303078382F333630303D323232324D627073EFBC8CE8BF99E4B8AAE5BA94E8AFA5E698AFE69C80E5BFABE79A84EFBC9B0A4D5033E59CA83235366B627073E7A081E78E87E4B88BE4B99FE5B9B3E59D87E58FAAE69C8931E58886E9929F324D42EFBC8CE68980E4BBA5E4B88DE4BC9AE8B685E8BF87302E334D627073EFBC8CE68980E4BBA5E4B880E5AE9AE698AFE69C80E685A2E79A84E38082);
INSERT INTO `question` VALUES ('410', '4', '#define SUB(x,y) x-y\n#define ACCESS_BEFORE(element,offset,value) *SUB(&element, offset) =value\nint main(){\nint array[10]= {1,2,3,4,5,6,7,8,9,10};\nint i;\nACCESS_BEFORE(array[5], 4, 6);\nprintf(\"array: \");\n    for (i=0; i<10; ++i){\n    printf(\"%d\", array[i]);\n}\nprintf(\"\\n\");\nreturn (0);\n}', 'option', '8', 0x676363E68F90E7A4BAE79A84E99499E8AFAFE698AFE2809CE8B58BE580BCE58FB7E79A84E5B7A6E8BEB9E6938DE4BD9CE695B0E99C80E8A681E4B880E4B8AAE5B7A6E580BCE2809DE38082E585B6E58E9FE59BA0E698AFE8B083E794A8E5AE8FE79A84E982A3E58FA5E8A2ABE9A284E5A484E79086E599A8E69BBFE68DA2E68890E4BA86EFBC9A0A2A2661727261795B355D2D34203D363B0AE794B1E4BA8EE5878FE58FB7E6AF94E8B58BE580BCE4BC98E58588E7BAA7E9AB98EFBC8CE59BA0E6ADA4E58588E5A484E79086E5878FE58FB7EFBC9BE794B1E4BA8EE5878FE58FB7E8BF94E59B9EE4B880E4B8AAE695B0E8808CE4B88DE698AFE59088E6B395E79A84E5B7A6E580BCEFBC8CE68980E4BBA5E7BC96E8AF91E68AA5E99499E38082);
INSERT INTO `question` VALUES ('411', '4', '在区间[-2, 2]里任取两个实数，它们的和>1的概率是：', 'option', '8', 0xE585B6E5AE9EE8BF99E698AFE4B880E98193E6A682E78E87E9A298EFBC8CE58588E794BBE587BA793D312D78E79A84E7BABFEFBC8CE4B88AE4BEA7E998B4E5BDB1E983A8E58886E5B0B1E698AF793E312D78EFBC8CE585B6E68980E58DA0E6AF94E4BE8BE4B8BA392F3332);
INSERT INTO `question` VALUES ('412', '4', '小组赛，每个小组有5支队伍，互相之间打单循环赛，胜一场3分，平一场1分，输一场不得分，小组前三名出线平分抽签。问一个队最少拿几分就有理论上的出线希望', 'option', '8', 0x41E5BC80E5A78BE58791E8839CE8B49FE8A1A8EFBC8CE79BB4E588B042E58791E587BAE7BB93E69E9CE5B0B14F4BE4BA86E38082);
INSERT INTO `question` VALUES ('413', '4', '用二进制来编码字符串“abcdabaa”,需要能够根据编码，解码回原来的字符串，最少需要多长的二进制字符串？', 'option', '8', 0xE6A0B9E68DAEE69D83E580BCE5BBBAE7AB8B487566666D616EE6A091EFBC8CE5BE97E588B0E69C80E4BC98E7BC96E7A081);
INSERT INTO `question` VALUES ('414', '4', '10个相同的糖果，分给三个人，每个人至少要得一个。有多少种不同分法', 'option', '8', 0xE6A682E78E87E9A298EFBC8CE5AE9EE59CA8E4B88DE4BC9AE5B0B1E7A9B7E4B8BEE590A7);
INSERT INTO `question` VALUES ('415', '4', '下列程序段，循环体执行次数是\ny=2\nwhile(y<=8)\ny=y+y;', 'option', '8', 0xE98081E58886E79A84EFBC8CE681ADE5969CE4BDA0EFBC8CE4BDA0E4B88DE698AFE799BDE797B4);
INSERT INTO `question` VALUES ('416', '4', '下面哪种机制可以用来进行进程间通信？', 'option', '8', 0xE88BB1E69687E8A681E8AEA4E5BE97);
INSERT INTO `question` VALUES ('417', '4', '下列关于编程优化的说法正确的是', 'option', '8', 0xE68E92E999A4E6B395EFBC8C414243E5A4AAE7BB9DE5AFB9EFBC8CE98089440A41E98089E9A1B9E79A84E4BC98E58C96E58FAAE883BDE99288E5AFB9E4BBA3E7A081E69CACE8BAABEFBC8CE7BAAFE7B3BBE7BB9FE8B083E794A8E4BB80E4B988E79A84E698AFE4B88DE4BC9AE680A7E883BDE68F90E58D87E79A8428E5BD93E784B6E4B99FE4B88DE4BC9AE4B88BE9998D29EFBC8C0A42E98089E9A1B9E68891E8A789E5BE97E698AFE59CA8E5B9B6E8A18CE4BC98E58C96E696B9E99DA2EFBC8CE5A5BDE79A84E7BC96E8AF91E599A8E58FAFE4BBA5E4BB8EE5BEAAE78EAFE4B8ADE58F91E68E98E5B9B6E8A18CE680A7EFBC8CE5B195E5BC80E4B98BE5908EE5B0B1E4B88DE8A18CE4BA86EFBC8C0A43E98089E9A1B9E69C89E782B9E8AFB4E4B88DE6B885E38082E6B688E999A4E695B0E68DAEE4BE9DE8B596E4B8BBE8A681E69C89E4B8A4E4B8AAE696B9E6B395EFBC8CE4B880E7A78DE698AF535341EFBC8CE58DB3E99D99E68081E58D95E8B58BE580BCEFBC8CE8BF99E698AFE9809AE8BF87E5AFB9E58F98E9878FE8BF9BE8A18CE9878DE591BDE5908DE5AE9EE78EB0E79A84EFBC8CE4B8A5E6A0BCE79A84E8AFB4E5BA94E8AFA5E58FABE2809CE5AF84E5AD98E599A8E9878DE591BDE5908DE2809DE8808CE4B88DE698AFE2809CE5AF84E5AD98E599A8E58886E9858DE2809D3BE58FA6E5A496E4B880E7A78DE698AFE8B083E68DA2E68C87E4BBA4E9A1BAE5BA8FEFBC8CE8BF99E7A78DE58FAAE8A681E4B88DE698AFE79C9FE79BB8E585B328E58699E5908EE8AFBBEFBC8C52415729E79A84E8AF9DE983BDE58FAFE4BBA5E6B688E999A4E68E89EFBC8CE4B99FE4B88DE5B19EE4BA8EE5AF84E5AD98E599A8E58886E9858DE38082E68980E4BBA5E6849FE8A789E4B88D);
INSERT INTO `question` VALUES ('418', '4', '一下程序是用来计算两个非负数之间的最大公约数：\nlong long gcd(long long x, long long y){\n   if( y==0) return 0;\n   else return gcd (y, x%y);\n}\n\n我们假设x,y中最大的那个数的长度为n，基本运算时间复杂度为O（1），那么该程序的时间复杂度为', 'option', '8', '');
INSERT INTO `question` VALUES ('419', '4', '写函数，输出前n个素数。函数原型：void print_prime(int N); 不需要考虑整数溢出问题，也不许使用大数处理算法。', 'program', '8', 0xE69C80E4BDB3E5A48DE69D82E5BAA6E4B8BA4F2831290AE4BB8EE69C80E7AE80E58D95E79A84E5BC80E5A78B0A312E20E6A0B9E68DAEE6A682E5BFB5E588A4E696AD3AE5A682E69E9CE4B880E4B8AAE6ADA3E695B4E695B0E58FAAE69C89E4B8A4E4B8AAE59BA0E5AD902C2031E5928C70EFBC8CE58899E7A7B070E4B8BAE7B4A0E695B02E0AE4BBA3E7A0813A0A626F6F6C2069735072696D6528696E74206E290A7B0A2020206966286E203C2032292072657475726E2066616C73653B0A0A202020666F7228696E742069203D20323B2069203C206E3B202B2B69290A202020202020206966286E2569203D3D2030292072657475726E2066616C73653B0A20202072657475726E20747275653B0A7D0AE697B6E997B4E5A48DE69D82E5BAA64F286E292E0A322E20E694B9E8BF9B2C20E58EBBE68E89E581B6E695B0E79A84E588A4E696AD0A0A626F6F6C2069735072696D6528696E74206E290A7B0A2020206966286E203C2032292072657475726E2066616C73653B0A2020206966286E203D3D2032292072657475726E20747275653B0A0A202020666F7228696E742069203D20333B2069203C206E3B2069202B3D2032290A202020202020206966286E2569203D3D2030292072657475726E2066616C73653B0A20202072657475726E20747275653B0A7D0AE697B6E997B4E5A48DE69D82E5BAA64F286E2F32292C20E9809FE5BAA6E68F90E9AB98E4B880E5808D2E0A332E20E8BF9BE4B880E6ADA5E5878FE5B091E588A4E696ADE79A84E88C83E59BB40AE5AE9AE790863A20E5A682E69E9C6EE4B88DE698AFE7B4A0E695B02C20E588996EE69C89E6BBA1E8B6B3313C643C3D73717274286E29E79A84E4B880E4B8AAE59BA0E5AD90642E0AE8AF81E6988E3A20E5A682E69E9C6EE4B88DE698AFE7B4A0E695B02C20E58899E794B1E5AE9AE4B9896EE69C89E4B880E4B8AAE59BA0E5AD9064E6BBA1E8B6B3313C643C6E2E0AE5A682E69E9C64E5A4A7E4BA8E73717274286E292C20E588996E2F64E698AFE6BBA1E8B6B3313C6E2F643C3D73717274286E29E79A84E4B880E4B8AAE59BA0E5AD902E0A0A626F6F6C2069735072696D6528696E74206E290A7B0A2020206966286E203C2032292072657475726E2066616C73653B0A2020206966286E203D3D2032292072657475726E20747275653B0A202020666F7228696E742069203D20333B20692A69203C3D206E3B2069202B3D2032290A202020202020206966286E2569203D3D2030292072657475726E2066616C73653B0A20202072657475726E20747275653B0A7D0AE697B6E997B4E5A48DE69D82E5BAA64F2873717274286E292F32292C20E9809FE5BAA6E68F90E9AB984F28286E2D73717274286E29292F32292E0A342E20E58994E999A4E59BA0E5AD90E4B8ADE79A84E9878DE5A48DE588A4E696AD2E0AE4BE8BE5A6823A203131253320213D203020E58FAFE4BBA5E7A1AEE5AE9A2031312528332A692920213D20302E0AE5AE9AE790863A20E5A682E69E9C6EE4B88DE698AFE7B4A0E695B02C20E588996EE69C89E6BBA1E8B6B3313C643C3D73717274286E29E79A84E4B880E4B8AA22E7B4A0E695B022E59BA0E5AD90642E0AE8AF81E6988E3A200A312E20E5A682E69E9C6EE4B88DE698AFE7B4A0E695B02C20E588996EE69C89E6BBA1E8B6B3313C643C3D73717274286E29E79A84E4B880E4B8AAE59BA0E5AD90642E0A322E20E5A682E69E9C64E698AFE7B4A0E695B02C20E58899E5AE9AE79086E5BE97E8AF812C20E7AE97E6B395E7BB88E6ADA22E0A332E20E4BBA46E3D642C20E5B9B6E8BDACE588B0E6ADA5E9AAA449312E0A0AE794B1E4BA8EE4B88DE58FAFE883BDE697A0E99990E58886E8A7A36EE79A84E59BA0E5AD902C20E59BA0E6ADA4E4B88AE8BFB0E8AF81E6988EE79A84E7AE97E6B395E69C80E7BB88E4BC9AE5819CE6ADA22E0A0A0A0A626F6F6C2069735072696D6528696E74207072696D65735B5D2C20696E74206E290A7B0A2020206966286E203C2032292072657475726E2066616C73653B0A202020666F7228696E742069203D20303B207072696D65735B695D2A7072696D65735B695D203C3D206E3B202B2B69290A202020202020206966286E257072696D65735B695D203D3D2030292072657475726E2066616C73653B0A0A20202072657475726E20747275653B0A7D0AE58187E8AEBE6EE88C83E59BB4E58685E79A84E7B4A0E695B0E4B8AAE695B0E4B8BA5049286E292C20E58899E697B6E997B4E5A48DE69D82E5BAA64F2850492873717274286E2929292E0A0AE587BDE695B05049287829E6BBA1E8B6B3E7B4A0E695B0E5AE9AE790863A206C6E2878292D332F32203C20782F5049287829203C206C6E2878292D312F322C20E5BD9378203E3D203637E697B62E0A0AE59BA0E6ADA44F2850492873717274286E292929E58FAFE4BBA5E8A1A8E7A4BAE4B8BA4F28737172742878292F286C6E2873717274287829292D332F3229292C0A0A4F28737172742878292F286C6E2873717274287829292D332F322929E4B99FE698AFE8BF99E4B8AAE7AE97E6B395E79A84E7A9BAE997B4E5A48DE69D82E5BAA62E0A0A0A352E20E69E84E980A0E7B4A0E695B0E5BA8FE588977072696D65735B695D3A20322C20332C20352C20372C202E2E2E0A0AE794B134E79A84E7AE97E6B395E68891E4BBACE79FA5E981932C20E59CA8E7B4A0E695B0E5BA8FE58897E5B7B2E7BB8FE8A2ABE69E84E980A0E79A84E68385E586B5E4B88B2C20E588A4E696AD6EE698AFE590A6E4B8BAE7B4A0E695B0E69588E78E87E5BE88E9AB983B0A0AE4BD86E698AF2C20E59CA8E69E84E980A0E7B4A0E695B0E5BA8FE58897E69CACE8BAABE79A84E697B6E580992C20E698AFE590A6E4B99FE58FAFE698AFE8BEBEE588B0E69C80E5A5BDE79A84E69588E78E87E591A23F0A0AE4BA8BE5AE9EE4B88AE8BF99E698AFE58FAFE4BBA5E79A8421202D2D20E68891E4BBACE59CA8E69E84E980A0E79A84E697B6E58099E5AE8CE585A8E58FAFE4BBA5E588A9E794A8E5B7B2E7BB8FE8A2ABE69E84E980A0E79A84E7B4A0E695B0E5BA8FE58897210A0AE58187E8AEBEE68891E4BBACE5B7B2E7BB8FE68891E7B4A0E695B0E5BA8FE588973A2070312C2070322C202E2E20706E0A0AE78EB0E59CA8E8A681E588A4E696AD706E2B31E698AFE590A6E698AFE7B4A0E695B02C20E58899E99C80E8A68128312C207371727428706E2B31295DE88C83E59BB4E58685E79A84E68980E69C89E7B4A0E695B0E5BA8FE588972C0A0AE8808CE8BF99E4B8AAE7B4A0E695B0E5BA8FE58897E698BEE784B6E5B7B2E7BB8FE4BD9CE4B8BA70312C2070322C202E2E20706EE79A84E4B880E4B8AAE5AD90E99B86E8A2ABE58C85E590ABE4BA86210A0AE4BBA3E7A0813A0A0A2F2F20E69E84E980A0E7B4A0E695B0E5BA8FE588977072696D65735B5D0A0A766F6964206D616B655072696D657328696E74207072696D65735B5D2C20696E74206E756D290A7B0A202020696E7420692C206A2C20636E743B0A2020200A2020207072696D65735B305D203D20323B0A2020207072696D65735B315D203D20333B0A2020200A202020666F722869203D20352C20636E74203D20323B20636E74203C206E756D3B2069202B3D2032290A2020207B0A20202020202020696E7420666C6167203D20747275653B0A20202020202020666F72286A203D20313B207072696D65735B6A5D2A7072696D65735B6A5D203C3D20693B202B2B6A290A202020202020207B0A202020202020202020202069662869257072696D65735B6A5D203D3D2030290A20202020202020202020207B0A202020202020202020202020202020666C6167203D2066616C73653B20627265616B3B0A20202020202020202020207D0A202020202020207D0A20202020202020696628666C616729207072696D65735B636E742B2B5D203D20693B0A2020207D0A7D0A6D616B655072696D6573E79A84E697B6E997B4E5A48DE69D82E5BAA6E6AF94E8BE83E5A48DE69D822C20E8808CE4B894E5AE83E58FAAE69C89E59CA8E5889DE5A78BE58C96E79A84E697B6E58099E6898DE8A2ABE8B083E794A8E4B880E6ACA12E0A0AE59CA8E4B880E5AE9AE79A84E5BA94E794A8E88C83E59BB4E586852C20E68891E4BBACE58FAFE4BBA5E68A8AE8BF91E4BCBCE8AEA4E4B8BA6D616B655072696D6573E99C80E8A681E5B8B8E695B0E697B6E997B42E0A0AE59CA8E5908EE99DA2E79A84E8AEA8E8AEBAE4B8AD2C20E68891E4BBACE5B086E68EA2E8AEA8E4B880E7A78DE5AFB9E8AEA1E7AE97E69CBAE8808CE8A880E69BB4E5A5BDE79A846D616B655072696D6573E696B9E6B3952E0A0A0A362E20E69BB4E5A5BDE59CB0E588A9E794A8E8AEA1E7AE97E69CBAE8B584E6BA902E2E2E0A0AE5BD93E5898DE79A84E4B8BBE6B5815043E4B8AD2C20E4B880E4B8AAE695B4E695B0E79A84E5A4A7E5B08FE4B8BA325E33322E20E5A682E69E9CE99C80E8A681E588A4E696AD325E3332E5A4A7E5B08FE79A84E695B0E698AFE590A6E4B8BAE7B4A0E695B02C0A0AE58899E58FAFE883BDE99C80E8A681E6B58BE8AF955B322C20325E31365DE88C83E59BB4E58685E79A84E68980E69C89E7B4A0E695B028325E3136203D3D207371727428325E333229292E0A0AE794B134E4B8ADE68F90E588B0E79A84E7B4A0E695B0E5AE9AE79086E68891E4BBACE58FAFE4BBA5E5A4A7E6A682E7A1AEE5AE9A5B322C20325E31365DE88C83E59BB4E58685E79A84E7B4A0E695B0E4B8AAE695B02E0A0AE794B1E4BA8E325E31362F286C6E28325E3136292D312F3229203D20363133382C20325E31362F286C6E28325E3136292D332F3229203D20363833342C0A0AE68891E4BBACE58FAFE4BBA5E5A4A7E6A682E4BCB0E8AEA1E587BA5B322C20325E31365DE88C83E59BB4E58685E79A84E7B4A0E695B0E4B8AAE695B036313338203C20504928325E313629203C20363833342E0A0AE59CA8E5AFB95B322C20325E31365DE88C83E59BB4E58685E79A84E7B4A0E695B0E8BF9BE8A18CE7BB9FE8AEA12C20E58F91E78EB0E58FAAE69C8936353432E4B8AAE7B4A0E695B03A0A0A705F363534323A2036353532312C2036353532315E32203D2034323933303031343431203C20325E33322C2028325E3332203D2034323934393637323936290A705F363534333A2036353533372C2036353533375E32203D2034323935303938333639203E20325E33322C2028325E3332203D2034323934393637323936290A0AE59CA8E5AE9EE99985E8BF90E7AE97E697B6756E7369676E6564206C6F6E672078203D20343239353039383336393BE5B086E58F91E7949FE6BAA2E587BA2C20E4B8BA3133313037332E0A0AE59CA8E7A88BE5BA8FE4B8AD2C20E68891E698AFE98787E794A8646F75626C65E7B1BBE59E8BE8AEA1E7AE97E5BE97E588B0E79A84E7BB93E69E9C2E0A0AE58886E69E90E588B0E8BF99E9878CE68891E4BBACE58FAFE4BBA5E79C8BE588B02C20E68891E4BBACE58FAAE99C80E8A681E7BC93E586B236353433E4B8AAE7B4A0E695B02C20E68891E4BBACE5B0B1E58FAFE4BBA5E98787E794A834E4B8ADE79A84E7AE97E6B3950A0AE9AB98E69588E78E87E59CB0E588A4E696AD5B322C20325E33325DE5A682E6ADA4E5BA9EE5A4A7E88C83E59BB4E58685E79A84E7B4A0E695B0210A0A28E58E9FE69CACE79A84325E3332E5A4A7E5B08FE79A84E997AEE9A298E8A784E6A8A1E78EB0E59CA8E5B7B2E7BB8FE8A2ABE5878FE5B08FE588B036353433E8A784E6A8A1E4BA8621290A0AE899BDE784B6E794A8E78EB0E59CA8E79A84E8AEA1E7AE97E69CBAE5A484E790865B322C20325E31365DE88C83E59BB4E58685E79A8436353432E4B8AAE7B4A0E695B0E5B7B2E7BB8FE6B2A1E69C89E4B880E782B9E997AEE9A2982C0A0AE899BDE784B66D616B655072696D6573E58FAAE8A681E8A2ABE8BF90E8A18CE4B880E6ACA1E5B0B1E58FAFE4BBA52C20E4BD86E698AFE68891E4BBACE8BF98E698AFE88083E89991E4B880E4B88BE698AFE590A6E8A2ABE694B9E8BF9BE79A84E58FAFE883BD3F210A0AE68891E683B3E5ADA6E8BF876A617661E79A84E4BABAE882AFE5AE9AE683B3E68A8A6D616B655072696D6573E4BD9CE4B8BAE4B880E4B8AAE99D99E68081E79A84E5889DE5A78BE58C96E5AE9EE78EB02C20E59CA8432B2BE4B8ADE4B99FE58FAFE4BBA50A0AE6A8A1E68B9F6A617661E4B8ADE99D99E68081E79A84E5889DE5A78BE58C96E79A84E7B1BBE4BCBCE5AE9EE78EB03A0A0A23646566696E65204E454C454D5328782920282873697A656F6628782929202F202873697A656F66282878295B305D2929290A0A73746174696320696E74207072696D65735B363534322B315D3B0A73746174696320737472756374205F496E6974207B205F496E697428297B6D616B655072696D6573287072696D65732C204E454C454D53287072696D6573293B7D207D205F696E69743B0A0AE5A682E6ADA42C20E5B0B1E58FAFE4BBA5E59CA8E7A88BE5BA8FE590AFE58AA8E79A84E697B6E58099E887AAE58AA8E68E89E794A86D616B655072696D6573E5889DE5A78BE58C96E7B4A0E695B0E5BA8FE588972E0A0AE4BD862C20E68891E78EB0E59CA8E79A84E683B3E6B395E698AF3A20E4B8BAE4BB80E4B988E68891E4BBACE4B88DE883BDE59CA8E7BC96E8AF91E79A84E697B6E58099E8B083E794A86D616B655072696D6573E587BDE695B0E591A23F0A0AE5AE8CE585A8E58FAFE4BBA521212120E4BBA3E7A081E5A682E4B88B3A0A0AE4BBA3E7A0813A0A0A636F6E73742073746174696320696E74207072696D65735B5D203D0A7B0A322C332C352C372C31312C31332C31372C31392C32332C32392C33312C33372C34312C34332C34372C35332C35392C36312C36372C37312C37332C37392C38332C38392C39372C3130312C3130332C0A3130372C3130392C3131332C3132372C3133312C3133372C3133392C3134392C3135312C3135372C3136332C3136372C3137332C3137392C3138312C3139312C3139332C3139372C3139392C3231312C0A3232332C3232372C3232392C3233332C3233392C3234312C3235312C3235372C3236332C3236392C3237312C3237372C3238312C3238332C3239332C3330372C3331312C3331332C3331372C3333312C0A3333372C3334372C3334392C3335332C3335392C3336372C3337332C3337392C3338332C3338392C3339372C3430312C3430392C3431392C3432312C3433312C3433332C3433392C3434332C3434392C0A3435372C3436312C3436332C3436372C3437392C3438372C3439312C3439392C3530332C3530392C3532312C3532332C3534312C3534372C3535372C3536332C3536392C3537312C3537372C3538372C0A3539332C3539392C3630312C3630372C3631332C3631372C3631392C3633312C3634312C3634332C3634372C3635332C3635392C3636312C3637332C3637372C3638332C3639312C3730312C3730392C0A3731392C3732372C3733332C3733392C3734332C3735312C3735372C3736312C3736392C3737332C3738372C3739372C3830392C3831312C3832312C3832332C3832372C3832392C3833392C3835332C0A3835372C3835392C3836332C3837372C3838312C3838332C3838372C3930372C3931312C3931392C3932392C3933372C3934312C3934372C3935332C3936372C3937312C3937372C3938332C3939312C0A2E2E2E0A36353532312C2036353533370A7D3B0AE69C89E782B9E4B88DE58FAFE6809DE8AEAEE590A72C20E58E9FE69CAC6D616B655072696D6573E99C80E8A681E88AB1E8B4B9E79A84E697B6E997B4E5A48DE69D82E5BAA6E78EB0E59CA8E79C9FE79A84E58F98E688904F283129E4BA86210A0A28E68891E8A789E5BE97E58FAB4F283029E58FAFE883BDE69BB4E59088E9808221290A0A372E20E4BA8CE58886E6B395E69FA5E689BE0A0AE78EB0E59CA8E68891E4BBACE7BC93E5AD98E4BA86E5898DE5A4A7E7BAA67371727428325E3332292F286C6E287371727428325E3332292D332F322929E4B8AAE7B4A0E695B0E58897E8A1A82C20E59CA8E588A4E696AD325E3332E7BAA7E588ABE79A840A0AE7B4A0E695B0E697B6E69C80E5A49AE4B99FE58FAAE99C80E8A6815049287371727428325E33322929E6ACA1E588A4E696AD28E58786E7A1AEE580BCE698AF36353433E6ACA1292C20E4BD86E698AFE590A6E8BF98E69C89E585B6E4BB96E79A84E696B9E5BC8FE588A4E696ADE591A23F0A0AE5BD93E7B4A0E695B0E6AF94E8BE83E5B08FE79A84E697B6E5809928E4B88DE5A4A7E4BA8E325E3136292C20E698AFE590A6E58FAFE4BBA5E79BB4E68EA5E4BB8EE7BC93E5AD98E79A84E7B4A0E695B0E58897E8A1A8E4B8ADE79BB4E68EA5E69FA5E8AFA2E5BE97E588B0E591A23F0A0AE7AD94E6A188E698AFE882AFE5AE9AE79A842120E794B1E4BA8E7072696D6573E698AFE4B880E4B8AAE69C89E5BA8FE79A84E695B0E588972C20E59BA0E6ADA4E68891E4BBACE5BD93E7B4A0E695B0E5B08FE4BA8E325E3136E697B62C20E68891E4BBACE58FAFE4BBA5E79BB4E68EA50A0AE98787E794A8E4BA8CE58886E6B395E4BB8E7072696D6573E4B8ADE69FA5E8AFA2E5BE97E588B028E5A682E69E9CE69FA5E8AFA2E5A4B1E8B4A5E58899E4B88DE698AFE7B4A0E695B0292E0A0AE4BBA3E7A0813A0A0A2F2F20E7BCBAE5B091E79A84E4BBA3E7A081E8AFB7E58F82E88083E5898DE8BEB90A0A23696E636C756465203C7374646C69622E683E0A0A73746174696320626F6F6C20636D7028636F6E737420696E74202A702C20636F6E737420696E74202A71290A7B0A20202072657475726E20282A7029202D20282A71293B0A7D0A0A626F6F6C2069735072696D6528696E74206E290A7B0A2020206966286E203C2032292072657475726E2066616C73653B0A2020206966286E203D3D2032292072657475726E20747275653B0A2020206966286E2532203D3D2030292072657475726E2066616C73653B0A0A2020206966286E203E3D203637202626206E203C3D207072696D65735B4E454C454D53287072696D6573292D315D290A2020207B0A2020202020202072657475726E204E554C4C20213D0A20202020202020202020206273656172636828266E2C207072696D65732C204E454C454D53287072696D6573292C2073697A656F66286E292C20636D70293B0A2020207D0A202020656C73650A2020207B0A20202020202020666F7228696E742069203D20313B207072696D65735B695D2A7072696D65735B695D203C3D206E3B202B2B69290A20202020202020202020206966286E257072696D65735B695D203D3D2030292072657475726E2066616C73653B0A2020202020202072657475726E20747275653B0A2020207D0A7D0AE697B6E997B4E5A48DE69D82E5BAA63A0A0A6966286E203C3D207072696D65735B4E454C454D53287072696D6573292D315D202626206E203E3D203637293A204F286C6F6732284E454C454D53287072696D6573292929203C2031333B0A6966286E203E207072696D65735B4E454C454D53287072696D6573292D315D293A204F2850492873717274286E292929203C3D204E454C454D53287072696D6573292E0A0A382E20E7B4A0E695B0E5AE9AE790862B32E58886E6B395E69FA5E689BE0A0AE59CA837E4B8AD2C20E68891E4BBACE5AFB9E5B08FE7AD89E4BA8E7072696D65735B4E454C454D53287072696D6573292D315DE79A84E695B0E98787E794A832E58886E6B395E69FA5E689BEE8BF9BE8A18CE588A4E696AD2E0A0AE68891E4BBACE4B98BE5898DE99288E5AFB9325E3332E7BC93E586B2E79A8436343533E4B8AAE7B4A0E695B0E99C80E8A681E588A4E696ADE79A84E6ACA1E695B0E4B8BA3133E6ACA1286C6F673228313032342A3829203D3D203133292E0A0AE5AFB9E4BA8EE5B08FE79A84E7B4A0E695B0E8808CE8A88028E585B6E5AE9EE5B0B1E698AF325E3136E88C83E59BB4E58FAAE58685E79A84E695B0292C203133E6ACA1E79A84E6AF94E8BE83E5B7B2E7BB8FE5AE8CE585A8E58FAFE4BBA5E68EA5E58F97E4BA862E0A0AE4B88DE8BF87E6A0B9E68DAEE7B4A0E695B0E5AE9AE790863A206C6E2878292D332F32203C20782F5049287829203C206C6E2878292D312F322C20E5BD9378203E3D203637E697B62C20E68891E4BBACE4BE9DE784B60A0AE58FAFE4BBA5E8BF9BE4B880E6ADA5E7BCA9E5B08FE5B08FE4BA8E325E3332E68385E586B5E79A84E69FA5E689BEE88C83E59BB428E78EB0E59CA8E698AF30E588B04E454C454D53287072696D6573292D31E88C83E59BB4E69FA5E689BE292E0A0AE68891E4BBACE99C80E8A681E8A7A3E586B3E997AEE9A298E698AF286E203C3D207072696D65735B4E454C454D53287072696D6573292D31293A0A0AE5A682E69E9C6EE4B8BAE7B4A0E695B02C20E982A3E4B988E5AE83E59CA8E7B4A0E695B0E5BA8FE58897E58FAFE883BDE587BAE78EB0E79A84E88C83E59BB4E59CA8E593AA3F0A0A2D2D2D2D20286E2F286C6E286E292D312F32292C206E2F286C6E286E292D332F3229292C20E58DB3E7B4A0E695B0E5AE9AE79086210A0AE4B88AE99DA2E79A84E4BBA3E7A081E4BFAEE694B9E5A682E4B88B3A0A0AE4BBA3E7A0813A0A0A2F2F20E7BCBAE5B091E79A84E4BBA3E7A081E8AFB7E58F82E88083E5898DE8BEB90A0A23696E636C756465203C7374646C69622E683E0A0A73746174696320626F6F6C20636D7028636F6E737420696E74202A702C20636F6E737420696E74202A71290A7B0A20202072657475726E20282A7029202D20282A71293B0A7D0A0A626F6F6C2069735072696D6528696E74206E290A7B0A2020206966286E203C2032292072657475726E2066616C73653B0A2020206966286E203D3D2032292072657475726E20747275653B0A2020206966286E2532203D3D2030292072657475726E2066616C73653B0A0A2020206966286E203E3D203637202626206E203C3D207072696D65735B4E454C454D53287072696D6573292D315D290A2020207B0A2020202020202072657475726E204E554C4C20213D0A20202020202020202020206273656172636828266E2C207072696D65732C204E454C454D53287072696D6573292C2073697A656F66286E292C20636D70293B0A2020207D0A202020656C73650A2020207B0A20202020202020666F7228696E742069203D20313B207072696D65735B695D2A7072696D65735B695D203C3D206E3B202B2B69290A20202020202020202020206966286E257072696D65735B695D203D3D2030292072657475726E2066616C73653B0A2020202020202072657475726E20747275653B0A2020207D0A7D0AE697B6E997B4E5A48DE69D82E5BAA63A0A0A6966286E203C3D207072696D65735B4E454C454D53287072696D6573292D315D202626206E203E3D203637293A204F286C6F67322868692D6C6F292929203C203F3F3F3B0A6966286E203E207072696D65735B4E454C454D53287072696D6573292D315D293A204F2850492873717274286E292929203C3D204E454C454D53287072696D6573292E);
INSERT INTO `question` VALUES ('420', '4', '长度为n的数组乱序存放着0至n-1. 现在只能进行0与其他数的swap 请设计并实现排序', 'program', '8', 0xE4B880E4B8AAE698AFE58FAAE883BDE4B88E3020737761702CE58FA6E4B880E4B8AAE698AFE695B0E7BB84E79A84E4B88BE6A087E5928CE580BCE698AFE4B880E4B880E5AFB9E5BA94E79A84E380820AE7ACACE4BA8CE4B8AAE5AEB9E69893E8A2ABE5BFBDE795A5E38082E68980E4BBA5E8AFBBE588B0E4B880E4B8AAE58583E7B4A0E697B6EFBC8CE5A682E69E9CE580BCE5928CE4B88BE6A087E4B88DE7AD89EFBC8CE982A3E4B988E58FAFE4BBA5E79BB4E68EA5E68A8AE8BF99E4B8AAE58583E7B4A0E79A84E580BCE694BEE588B0E6ADA3E7A1AEE4BD8DE7BDAEE4B88AE58EBBEFBC8CE79BAEE6A087E4BD8DE7BDAEE79A84E580BCE68CAAE59B9EE69DA5E38082E5BD93E784B6E8BF99E4B8AAE8BF87E7A88BE8A681E5809FE58AA9E58583E7B4A030E69DA5E5AE8CE68890E380820A0AE58187E8AEBEE8BE93E585A5E698AF20322C302C332C310A7374657020310AE9818DE58E86E695B0E7BB84EFBC8CE689BEE587BAE580BCE4B8BA30E79A84E58583E7B4A0EFBC8CE5928C6E756D5B305DE4BAA4E68DA20A302032203320310A0A7374657020320AE5A682E69E9C6E756D5B315DE4B88BE6A087E5928CE580BCE58CB9E9858DEFBC8CE88083E89991E4B88BE4B880E4B8AAEFBC8CE590A6E588990AE5B09DE8AF95E68A8A6E756D5B315DE79A84E580BCE5809FE58AA96E756D5B305DE694BEE585A5E6ADA3E7A1AEE79A84E4BD8DE7BDAE0A33203220302031202D2DE3808B202033203020322031202D2DE3808B20302033203220310A0A7374657020330AE9878DE5A48D207374657020322CE79BB4E588B0206E756D5B315DE6ADA3E7A1AEE8A2ABE694BEE7BDAEE4BA8620310A0A7374657020340A6E756D5B315DE5A484E79086E5AE8CEFBC8C7374657032E5A484E79086E4B88BE4B880E4B8AAE58583E7B4A06E756D5B325D2CE79BB4E588B0E68980E69C89E58583E7B4A0E79A84E4BD8DE7BDAEE5928CE580BCE983BDE58CB9E9858D);
INSERT INTO `question` VALUES ('421', '4', ' 给定一个原串和目标串，能对源串进行如下操作： \n1.在给定位置插入一个字符 \n2.替换任意字符 \n3.删除任意字符 \n要求写一个程序，返回最少的操作数，使得源串进行这些操作后等于目标串。源串和目标串长度都小于2000。 ', 'program', '8', 0xE59CA8E697A5E5B8B8E5BA94E794A8E4B8ADEFBC8CE69687E69CACE6AF94E8BE83E698AFE4B880E4B8AAE6AF94E8BE83E5B8B8E8A781E79A84E997AEE9A298E38082E69687E69CACE6AF94E8BE83E7AE97E6B395E4B99FE698AFE4B880E4B8AAE88081E7949FE5B8B8E8B088E79A84E8AF9DE9A298E38082200A200AE38080E38080E69687E69CACE6AF94E8BE83E79A84E6A0B8E5BF83E5B0B1E698AFE6AF94E8BE83E4B8A4E4B8AAE7BB99E5AE9AE79A84E69687E69CACEFBC88E58FAFE4BBA5E698AFE5AD97E88A82E6B581E7AD89EFBC89E4B98BE997B4E79A84E5B7AEE5BC82E38082E79BAEE5898DEFBC8CE4B8BBE6B581E79A84E6AF94E8BE83E69687E69CACE4B98BE997B4E79A84E5B7AEE5BC82E4B8BBE8A681E69C89E4B8A4E5A4A7E7B1BBE38082E4B880E7B1BBE698AFE59FBAE4BA8EE7BC96E8BE91E8B79DE7A6BBEFBC88456469742044697374616E6365EFBC89E79A84EFBC8CE4BE8BE5A6824C44E7AE97E6B395E38082E4B880E7B1BBE698AFE59FBAE4BA8EE69C80E995BFE585ACE585B1E5AD90E4B8B2E79A84EFBC884C6F6E6765737420436F6D6D6F6E2053756273657175656E6365EFBC89EFBC8CE4BE8BE5A6824E6565646C656D616E2F57756E736368E7AE97E6B395E7AD89E38082200A200AE38080E380804C44E7AE97E6B395EFBC884C6576656E73687465696E2044697374616E6365EFBC89E58F88E68890E4B8BAE7BC96E8BE91E8B79DE7A6BBE7AE97E6B395EFBC88456469742044697374616E6365EFBC89E38082E4BB96E698AFE4BBA5E5AD97E7ACA6E4B8B241E9809AE8BF87E68F92E585A5E5AD97E7ACA6E38081E588A0E999A4E5AD97E7ACA6E38081E69BBFE68DA2E5AD97E7ACA6E58F98E68890E58FA6E4B880E4B8AAE5AD97E7ACA6E4B8B242EFBC8CE982A3E4B988E6938DE4BD9CE79A84E8BF87E7A88BE79A84E6ACA1E695B0E8A1A8E7A4BAE4B8A4E4B8AAE5AD97E7ACA6E4B8B2E79A84E5B7AEE5BC82E38082200A200AE38080E38080E4BE8BE5A682EFBC9AE5AD97E7ACA6E4B8B241EFBC9A6B697474656EE5A682E4BD95E58F98E68890E5AD97E7ACA6E4B8B242EFBC9A73697474696E67E38082200A200AE38080E38080E38080E38080E7ACACE4B880E6ADA5EFBC9A6B697474656EE28094E28094E3808B73697474656EE380826BE69BBFE68DA2E6889073200A200AE38080E38080E38080E38080E7ACACE4BA8CE6ADA5EFBC9A73697474656EE28094E28094E3808B73697474696EE3808265E69BBFE68DA2E6889069200A200AE38080E38080E38080E38080E7ACACE4B889E6ADA5EFBC9A73697474696EE28094E28094E3808B73697474696E67E38082E59CA8E69CABE5B0BEE68F92E585A567200A200AE38080E38080E695856B697474656EE5928C73697474696E67E79A84E7BC96E8BE91E8B79DE7A6BBE4B8BA33200A200A200A200AE38080E38080E5AE9AE4B989E8AFB4E6988EEFBC9A200A200AE38080E380804C4428412C4229E8A1A8E7A4BAE5AD97E7ACA6E4B8B241E5928CE5AD97E7ACA6E4B8B242E79A84E7BC96E8BE91E8B79DE7A6BBE38082E5BE88E698BEE784B6EFBC8CE88BA54C4428412C42293D30E8A1A8E7A4BAE5AD97E7ACA6E4B8B241E5928CE5AD97E7ACA6E4B8B242E5AE8CE585A8E79BB8E5908C200A200AE38080E38080526576284129E8A1A8E7A4BAE58F8DE8BDACE5AD97E7ACA6E4B8B241200A200AE38080E380804C656E284129E8A1A8E7A4BAE5AD97E7ACA6E4B8B241E79A84E995BFE5BAA6200A200AE38080E38080412B42E8A1A8E7A4BAE8BF9EE68EA5E5AD97E7ACA6E4B8B241E5928CE5AD97E7ACA6E4B8B242200A200AE38080E38080200A200AE38080E38080E69C89E4B88BE99DA2E587A0E4B8AAE680A7E8B4A8EFBC9A200A200AE38080E380804C4428412C41293D30200A200AE38080E380804C4428412C2222293D4C656E284129200A200AE38080E380804C4428412C42293D4C4428422C4129200A200AE38080E3808030E289A44C4428412C4229E289A44D6178284C656E2841292C4C656E28422929200A200AE38080E380804C4428412C42293D4C44285265762841292C52657628422929200A200AE38080E380804C4428412B432C422B43293D4C4428412C4229200A200AE38080E380804C4428412B422C412B43293D4C4428422C4329200A200AE38080E380804C4428412C4229E289A44C4428412C43292B4C4428422C4329EFBC88E6B3A8EFBC9AE5838FE4B88DE5838FE2809CE4B889E8A792E5BDA2EFBC8CE4B8A4E8BEB9E4B98BE5928CE5A4A7E4BA8EE7ACACE4B889E8BEB9E2809DEFBC89200A200AE38080E380804C4428412B432C4229E289A44C4428412C42292B4C4428422C4329200A200A200A200AE38080E38080E4B8BAE4BA86E8AEB2E8A7A3E8AEA1E7AE974C4428412C4229EFBC8CE789B9E7BB99E4BA88E4BBA5E4B88BE587A0E4B8AAE5AE9AE4B989200A200AE38080E38080413D61316132E280A6E280A6614EEFBC8CE8A1A8E7A4BA41E698AFE794B161316132E280A6E280A6614EE8BF994EE4B8AAE5AD97E7ACA6E7BB84E68890EFBC8C4C656E2841293D4E200A200AE38080E38080423D62316232E280A6E280A6624DEFBC8CE8A1A8E7A4BA42E698AFE794B162316232E280A6E280A6624DE8BF994DE4B8AAE5AD97E7ACA6E7BB84E68890EFBC8C4C656E2842293D4D200A200AE38080E38080E5AE9AE4B9894C4428692C6A293D4C442861316132E280A6E280A661692C62316232E280A6E280A6626A29EFBC8CE585B6E4B8AD30E289A469E289A44EEFBC8C30E289A46AE289A44D200A200AE38080E38080E69585EFBC9AE38080E380804C44284E2C4D293D4C4428412C4229200A200AE38080E38080E38080E38080E38080E380804C4428302C30293D30200A200AE38080E38080E38080E38080E38080E380804C4428302C6A293D6A200A200AE38080E38080E38080E38080E38080E380804C4428692C30293D69200A200A200A200AE38080E38080E5AFB9E4BA8E31E289A469E289A44EEFBC8C31E289A46AE289A44DEFBC8CE69C89E585ACE5BC8FE4B880200A200AE38080E38080E88BA561693D626AEFBC8CE588994C4428692C6A293D4C4428692D312C6A2D3129200A200AE38080E38080E88BA56169E289A0626AEFBC8CE588994C4428692C6A293D4D696E284C4428692D312C6A2D31292C4C4428692D312C6A292C4C4428692C6A2D3129292B31200A200A200A200AE38080E38080E4B8BEE4BE8BE8AFB4E6988EEFBC9A413D47474154434741EFBC8C423D4741415454434147545441EFBC8CE8AEA1E7AE974C4428412C4229200A200AE38080E38080E7ACACE4B880E6ADA5EFBC9AE5889DE5A78BE58C964C44E79FA9E998B5E38080E38080200A200A200A200A4C44E7AE97E6B395E79FA9E998B5200A20202020202020204720202041202020412020205420202054202020432020204120202047202020542020205420202041200A2020202030202020312020203220202033202020342020203520202036202020372020203820202039202020313020203131200A4720202031200A4720202032200A4120202033200A5420202034200A4320202035200A4720202036200A4120202037200A200A200AE38080E38080E7ACACE4BA8CE6ADA5EFBC9AE588A9E794A8E4B88AE8BFB0E79A84E585ACE5BC8FE4B880EFBC8CE8AEA1E7AE97E7ACACE4B880E8A18C200A200A200A200A4C44E7AE97E6B395E79FA9E998B5200A20202020202020204720202041202020412020205420202054202020432020204120202047202020542020205420202041200A2020202030202020312020203220202033202020342020203520202036202020372020203820202039202020313020203131200A4720202031202020302020203120202032202020332020203420202035202020362020203720202038202020392020203130200A4720202032200A4120202033200A5420202034200A4320202035200A4720202036200A4120202037200A200A200AE38080E38080E7ACACE4B889E6ADA5EFBC8CE588A9E794A8E4B88AE8BFB0E79A84E585ACE7A4BAE4B880EFBC8CE8AEA1E7AE97E585B6E4BD99E59084E8A18C200A200A4C44E7AE97E6B395E79FA9E998B5200A20202020202020204720202041202020412020205420202054202020432020204120202047202020542020205420202041200A2020202030202020312020203220202033202020342020203520202036202020372020203820202039202020313020203131200A4720202031202020302020203120202032202020332020203420202035202020362020203720202038202020392020203130200A47202020322020203120202031202020322020203320202034202020352020203620202036202020372020203820202039200A41202020332020203220202031202020312020203220202033202020342020203520202036202020372020203820202038200A54202020342020203320202032202020322020203120202032202020332020203420202035202020362020203720202038200A43202020352020203420202033202020332020203220202032202020322020203320202034202020352020203620202037200A47202020362020203520202034202020342020203320202033202020332020203320202033202020342020203520202036200A41202020372020203620202035202020342020203420202034202020342020203320202034202020342020203520202035200A200A200AE38080E38080E588994C4428412C42293D4C4428372C3131293D35200A200A2A2F20200A23696E636C756465203C637374646C69623E20200A23696E636C756465203C63737472696E673E20200A23696E636C756465203C696F73747265616D3E20200A20200A696E74206D696E28696E7420692C20696E74206A2C20696E74206B2920200A7B20200A2020696E74206D696E203D20693B20200A20206966286A203C206D696E297B20200A202020206D696E203D206A3B20200A20207D20200A20206966286B203C206D696E297B20200A202020206D696E203D206B3B20200A20207D20200A202072657475726E206D696E3B20200A7D20200A20200A696E74206564697444697374616E63652863686172202A20737472312C20696E74206C656E312C2063686172202A20737472322C20696E74206C656E322920200A7B20200A202069662873747231203D3D204E554C4C207C7C206C656E31203C2031297B20200A2020202072657475726E206C656E323B20200A20207D20200A202069662873747232203D3D204E554C4C207C7C206C656E32203C2031297B20200A2020202072657475726E206C656E313B20200A20207D20200A2020696E74202A2A206470203D206E657720696E742A5B6C656E315D3B20200A2020666F7228696E742069203D20303B2069203C206C656E313B202B2B69297B20200A2020202064705B695D203D206E657720696E745B6C656E325D3B20200A20202020666F7228696E74206A203D20303B206A203C206C656E323B202B2B6A297B20200A20202020202064705B695D5B6A5D203D20303B20200A202020207D20200A20207D20200A2020666F7228696E742069203D20303B2069203C206C656E313B202B2B69297B20200A2020202064705B695D5B305D203D20693B20200A20207D20200A2020666F7228696E74206A203D20303B206A203C206C656E323B202B2B6A297B20200A2020202064705B305D5B6A5D203D206A3B20200A20207D20200A2020666F7228696E742069203D20313B2069203C206C656E313B202B2B69297B20200A20202020666F7228696E74206A203D20313B206A203C206C656E323B202B2B6A297B20200A202020202020696628737472315B695D203D3D20737472325B6A5D297B20200A202020202020202064705B695D5B6A5D203D2064705B692D315D5B6A2D315D3B20200A2020202020207D20200A202020202020656C73657B20200A202020202020202064705B695D5B6A5D203D206D696E2864705B692D315D5B6A2D315D2C2064705B695D5B6A2D315D2C2064705B692D315D5B6A5D29202B20313B20200A2020202020207D20200A202020207D20200A20207D20200A2020696E7420726574203D2064705B6C656E312D315D5B6C656E322D315D3B20200A2020666F7228696E742069203D20303B2069203C206C656E313B202B2B69297B20200A2020202069662864705B695D20213D204E554C4C297B20200A20202020202064656C657465205B5D2064705B695D3B20200A20202020202064705B695D203D204E554C4C3B20200A202020207D20200A20207D20200A2020696628647020213D204E554C4C297B20200A2020202064656C657465205B5D2064703B20200A202020206470203D204E554C4C3B20200A20207D20200A202072657475726E207265743B20200A7D20200A20200A696E74206D61696E28696E7420617267632C2063686172202A2A20617267762920200A7B20200A20206368617220737472315B5D203D202247474154434741223B20200A20206368617220737472325B5D203D20224741415454434147545441223B20200A2020696E74206C656E31203D207374726C656E2873747231293B20200A2020696E74206C656E32203D207374726C656E2873747232293B20200A2020696E7420726574203D206564697444697374616E636528737472312C206C656E312C20737472322C206C656E32293B20200A20207374643A3A636F75743C3C7265743C3C7374643A3A656E646C3B20200A202073797374656D2822706175736522293B20200A202072657475726E20303B20200A7D2020);
INSERT INTO `question` VALUES ('422', '4', '给出一个字符串S，找到一个最长的连续回文串。\n例如串 babcbabcbaccba 最长回文是:abcbabcba', 'program', '8', 0xE6809DE8B7AF312E20E58AA8E68081E8A784E588920A0AE8BF99E9878CE58AA8E68081E8A784E58892E79A84E6809DE8B7AFE698AF2064705B695D5B6A5D20E8A1A8E7A4BAE79A84E698AF20E4BB8E6920E588B0206A20E79A84E5AD97E4B8B2EFBC8CE698AFE590A6E698AFE59B9EE69687E4B8B2E380820A0AE58899E6A0B9E68DAEE59B9EE69687E79A84E8A784E58899E68891E4BBACE58FAFE4BBA5E79FA5E98193EFBC9A0A0AE5A682E69E9C735B695D203D3D20735B6A5D20E982A3E4B988E698AFE590A6E698AFE59B9EE69687E586B3E5AE9AE4BA8E2064705B692B315D5B206A202D20315D0A0AE5BD9320735B695D20213D20735B6A5D20E79A84E697B6E58099EFBC8C2064705B695D5B6A5D20E79BB4E68EA5E5B0B1E698AF2066616C7365E380820A0AE58AA8E68081E8A784E58892E79A84E8BF9BE8A18CE698AFE68C89E785A7E5AD97E7ACA6E4B8B2E79A84E995BFE5BAA6E4BB8E3120E588B0206EE68EA8E8BF9BE79A84E380820A0AE4BBA3E7A081E5BE88E6988EE699B0EFBC9AE7BB99E587BA6A617661E4BBA3E7A081EFBC8CE5A48DE69D82E5BAA6204F286E5E32290A0A0A0A202020207075626C696320636C617373204450536F6C7574696F6E207B20200A2020202020200A2020202020202020626F6F6C65616E5B5D5B5D2064703B20200A202020202020202020200A20202020202020207075626C696320537472696E67206C6F6E6765737450616C696E64726F6D6528537472696E6720732920200A20202020202020207B20200A202020202020202020202020696628732E6C656E6774682829203D3D20302920200A2020202020202020202020207B20200A2020202020202020202020202020202072657475726E2022223B20200A2020202020202020202020207D20200A202020202020202020202020696628732E6C656E6774682829203D3D20312920200A2020202020202020202020207B20200A2020202020202020202020202020202072657475726E20733B20200A2020202020202020202020207D20200A2020202020200A2020202020202020202020206470203D206E657720626F6F6C65616E5B732E6C656E67746828295D5B732E6C656E67746828295D3B20200A20202020202020202020202020200A202020202020202020202020696E7420692C6A3B20200A20202020202020202020202020200A202020202020202020202020666F72282069203D20303B2069203C20732E6C656E67746828293B20692B2B2920200A2020202020202020202020207B20200A20202020202020202020202020202020666F7228206A203D20303B206A203C20732E6C656E67746828293B206A2B2B2920200A202020202020202020202020202020207B20200A202020202020202020202020202020202020202069662869203E3D206A2920200A20202020202020202020202020202020202020207B20200A20202020202020202020202020202020202020202020202064705B695D5B6A5D203D20747275653B202F2FE5BD9369203D3D206A20E79A84E697B6E58099EFBC8CE58FAAE69C89E4B880E4B8AAE5AD97E7ACA6E79A84E5AD97E7ACA6E4B8B23B20E5BD932069203E206A20E8AEA4E4B8BAE698AFE7A9BAE4B8B2EFBC8CE4B99FE698AFE59B9EE6968720200A2020202020200A20202020202020202020202020202020202020207D20200A2020202020202020202020202020202020202020656C736520200A20202020202020202020202020202020202020207B20200A20202020202020202020202020202020202020202020202064705B695D5B6A5D203D2066616C73653B202F2FE585B6E4BB96E68385E586B5E983BDE5889DE5A78BE58C96E68890E4B88DE698AFE59B9EE6968720200A20202020202020202020202020202020202020207D20200A202020202020202020202020202020207D20200A2020202020202020202020207D20200A20202020202020202020202020200A202020202020202020202020696E74206B3B20200A202020202020202020202020696E74206D61784C656E203D20313B20200A202020202020202020202020696E74207266203D20302C207274203D20303B20200A202020202020202020202020666F7228206B203D20313B206B203C20732E6C656E67746828293B206B2B2B2920200A2020202020202020202020207B20200A20202020202020202020202020202020666F72282069203D20303B20206B202B2069203C20732E6C656E67746828293B20692B2B2920200A202020202020202020202020202020207B20200A20202020202020202020202020202020202020206A203D2069202B206B3B20200A2020202020202020202020202020202020202020696628732E63686172417428692920213D20732E636861724174286A2929202F2FE5AFB9E5AD97E7ACA6E4B8B220735B692E2E2E2E6A5D20E5A682E69E9C20735B695D20213D20735B6A5D20E982A3E4B988E4B88DE698AFE59B9EE6968720200A20202020202020202020202020202020202020207B20200A20202020202020202020202020202020202020202020202064705B695D5B6A5D203D2066616C73653B20200A20202020202020202020202020202020202020207D20200A2020202020202020202020202020202020202020656C736520202F2FE5A682E69E9C735B695D203D3D20735B6A5D20E59B9EE69687E680A7E8B4A8E794B120735B692B315D5B6A2D315D20E586B3E5AE9A20200A20202020202020202020202020202020202020207B20200A20202020202020202020202020202020202020202020202064705B695D5B6A5D203D2064705B692B315D5B6A2D315D3B20200A20202020202020202020202020202020202020202020202069662864705B695D5B6A5D2920200A2020202020202020202020202020202020202020202020207B20200A202020202020202020202020202020202020202020202020202020206966286B202B2031203E206D61784C656E2920200A202020202020202020202020202020202020202020202020202020207B20200A20202020202020202020202020202020202020202020202020202020202020206D61784C656E203D206B202B20313B20200A20202020202020202020202020202020202020202020202020202020202020207266203D20693B20200A20202020202020202020202020202020202020202020202020202020202020207274203D206A3B20200A202020202020202020202020202020202020202020202020202020207D20200A2020202020202020202020202020202020202020202020207D20200A20202020202020202020202020202020202020207D20200A202020202020202020202020202020207D20200A2020202020202020202020207D20200A20202020202020202020202072657475726E20732E737562737472696E672872662C2072742B31293B20200A20202020202020207D20200A202020207D20200A0A0A0A0AE6809DE8B7AF322E204B4D50E58CB9E9858D0A0AE7ACACE4BA8CE4B8AAE6809DE8B7AFE69DA5E6BA90E4BA8EE5AD97E7ACA6E4B8B2E58CB9E9858DEFBC8CE69C80E995BFE59B9EE69687E4B8B2E69C89E5A682E4B88BE680A7E8B4A8EFBC9AE380800A0AE5AFB9E4BA8EE4B8B2532C20E58187E8AEBEE5AE83E79A842052657665727365E698AF2053272C20E982A3E4B98853E79A84E69C80E995BFE59B9EE69687E4B8B2E698AF205320E5928C20532720E79A84E69C80E995BFE585ACE585B1E5AD97E4B8B2E380820A0AE4BE8BE5A6822053203D20616263646463612C20205327203D2061636464636261EFBC8C2053E5928C5327E79A84E69C80E995BFE585ACE585B1E5AD97E4B8B2E698AF206364646320E4B99FE698AF53E79A84E69C80E995BFE59B9EE69687E5AD97E4B8B2E380820A0AE5A682E69E9C53E28098E698AF20E6A8A1E5BC8FE4B8B2EFBC8CE68891E4BBACE58FAFE4BBA5E5AFB953E28099E79A84E68980E69C89E5908EE7BC80E69E9AE4B8BE2853302C2053312C2053322C20536E2920E784B6E5908EE794A8E6AF8FE4B8AAE5908EE7BC80E5928C53E58CB9E9858DEFBC8CE5AFBBE689BEE69C80E995BFE79A84E58CB9E9858DE5898DE7BC80E380820A0AE4BE8BE5A682E5BD93E5898DE69E9AE4B8BEE698AF205330203D206163646463626120E69C80E995BFE58CB9E9858DE5898DE7BC80E698AF20610A0A533120203D2063646463626120E69C80E995BFE58CB9E9858DE5898DE7BC80E698AF20636464630A0A5332203D20646463626120E69C80E995BFE58CB9E9858DE5898DE7BC80E698AF206464630A0AE5BD93E784B6E8BF99E4B8AAE8BF87E7A88BE58FAFE4BBA5E5819AE98082E5BD93E589AAE69E9DEFBC8CE5A682E69E9CE5BD93E5898DE69E9AE4B8BEE79A84E5908EE7BC80E995BFE5BAA6EFBC8CE5B08FE4BA8EE5BD93E5898DE689BEE588B0E79A84E69C80E995BFE58CB9E9858DEFBC8CE58899E79BB4E68EA5E8B7B3E8BF87E380820A0A0A4A61766120E4BBA3E7A081E5A682E4B88BEFBC9A0A0A0A202020207075626C696320636C61737320536F6C7574696F6E207B20200A20202020202020207072697661746520696E745B5D206E6578743B20200A20202020202020207072697661746520766F6964204765744E65787428537472696E67207329E380802F2F4B4D50E6B1826E657874E695B0E7BB8420200A20202020202020207B20200A202020202020202020202020696E7420692C6A3B20200A20202020202020202020202020200A20202020202020202020202069203D20303B2020200A2020202020202020202020206A203D202D313B20200A20202020202020202020202020200A2020202020202020202020206E6578745B305D203D202D313B20200A20202020202020202020202020200A2020202020202020202020207768696C65282069203C20732E6C656E67746828292920200A2020202020202020202020207B20200A20202020202020202020202020202020696628206A203D3D202D31207C7C20732E636861724174286929203D3D20732E636861724174286A292920200A202020202020202020202020202020207B20200A2020202020202020202020202020202020202020692B2B3B20200A20202020202020202020202020202020202020206A2B2B3B20200A20202020202020202020202020202020202020206E6578745B695D203D206A3B20200A202020202020202020202020202020207D20200A20202020202020202020202020202020656C736520200A202020202020202020202020202020207B20200A20202020202020202020202020202020202020206A203D206E6578745B6A5D3B20200A202020202020202020202020202020207D20200A2020202020202020202020207D20200A20202020202020207D20200A20202020202020207072697661746520696E7420636F6D7061726528537472696E67207061747465726E2C20537472696E67207329202F2FE794A84B4D50E7AE97E6B395E5819AE6B182E587BAE69C80E995BFE79A84E5898DE7BC80E58CB9E9858D20200A20202020202020207B20200A202020202020202020202020696E7420692C6A3B20200A20202020202020202020202020200A20202020202020202020202069203D20303B20200A2020202020202020202020206A203D20303B20200A20202020202020202020200A202020202020202020202020696E74206D61784C656E203D20303B20200A2020202020202020202020207768696C65282069203C20732E6C656E67746828292920200A2020202020202020202020207B20200A202020202020202020202020202020206966286A203D3D202D31207C7C207061747465726E2E636861724174286A29203D3D20732E6368617241742869292920200A202020202020202020202020202020207B20200A2020202020202020202020202020202020202020692B2B3B20200A20202020202020202020202020202020202020206A2B2B3B20200A202020202020202020202020202020207D20200A20202020202020202020202020202020656C736520200A202020202020202020202020202020207B20200A20202020202020202020202020202020202020206A203D206E6578745B6A5D3B20200A202020202020202020202020202020207D20200A20202020202020202020202020202020696628206A203E206D61784C656E2920200A202020202020202020202020202020207B20200A20202020202020202020202020202020202020206D61784C656E203D206A3B20200A202020202020202020202020202020207D20200A202020202020202020202020202020206966286A203D3D207061747465726E2E6C656E67746828292920200A202020202020202020202020202020207B20200A202020202020202020202020202020202020202072657475726E206D61784C656E3B20200A202020202020202020202020202020207D20200A2020202020202020202020207D20200A20202020202020202020202072657475726E206D61784C656E3B20200A20202020202020207D20200A202020202020202020200A20202020202020207075626C696320537472696E67206C6F6E6765737450616C696E64726F6D6528537472696E6720732920202F2F20200A20202020202020207B20200A2020202020202020202020202F2F20537461727420747970696E6720796F7572204A61766120736F6C7574696F6E2062656C6F7720200A2020202020202020202020202F2F20444F204E4F54207772697465206D61696E28292066756E6374696F6E20200A202020202020202020202020537472696E67207265766572537472696E67203D206E657720537472696E674275696C6465722873292E7265766572736528292E746F537472696E6728293B20202F2FE6B182E5BE97E588B020E8BE93E585A5737472696E6720E79A847265766572736520200A2020202020202020202020206E657874203D206E657720696E745B732E6C656E6774682829202B20315D3B20200A20202020202020202020202020200A202020202020202020202020537472696E67206D617850616C203D2022223B20200A202020202020202020202020696E74206D61784C656E203D20303B20200A202020202020202020202020696E74206C656E3B20200A202020202020202020202020666F7228696E742069203D20303B2069203C20732E6C656E67746828293B20692B2B29202F2FE69E9AE4B8BEE68980E69C89E5908EE7BC8020200A2020202020202020202020207B20200A20202020202020202020202020202020537472696E6720737566666978203D207265766572537472696E672E737562737472696E672869293B20200A202020202020202020202020202020206966287375666669782E6C656E6774682829203C206D61784C656E2920200A202020202020202020202020202020207B20200A2020202020202020202020202020202020202020627265616B3B20200A202020202020202020202020202020207D20200A202020202020202020202020202020204765744E65787428737566666978293B20200A202020202020202020202020202020206C656E203D20636F6D70617265287375666669782C2073293B20200A20202020202020202020202020202020696628206C656E203E206D61784C656E2920200A202020202020202020202020202020207B20200A20202020202020202020202020202020202020206D617850616C203D207375666669782E737562737472696E6728302C206C656E293B20200A20202020202020202020202020202020202020206D61784C656E203D206C656E3B20200A202020202020202020202020202020207D20200A2020202020202020202020202020202020200A2020202020202020202020207D20200A20202020202020202020202072657475726E206D617850616C3B20200A20202020202020202020202020200A20202020202020207D20200A202020207D20200AE8A7A3E6B395E4B889EFBC9AE68DAEE8AFB4E5A48DE69D82E5BAA6E4B8BA4F286E292CE4B88DE8BF87E795A5E5A48DE69D82EFBC8CE69C89E585B4E8B6A3E8AFB7E58F82E88083687474703A2F2F626C6F672E6373646E2E6E65742F6E63696165627570742F61727469636C652F64657461696C732F3132383832343337200A);
INSERT INTO `question` VALUES ('423', '4', '有N个鸡蛋和M个篮子，把鸡蛋放到M个篮子里，每个篮子都不能为空。另外，需要满足：任意一个小于N的正整数，都能由某几个篮子内蛋的数量相加的和得到。写出程序，使得输入一个(N,M)，输出所有可能的分配情况。', 'program', '8', 0x20E4BB8EE9A298E6848FE4B8ADE5BA94E8AFA5E58FAFE4BBA5E5BE97E587BAEFBC8CE5AFB9E4BA8E28312C312C322C3229E5928C28312C322C312C3229E8BF99E4B8A4E7A78DE7BB84E59088EFBC8CE5BA94E8AFA5E698AFE4B880E6A0B7E79A84E380820AE59BA0E8808CE5AFB9E4BA8EE8BF994DE4B8AAE7AFAEE5AD90E4B8ADE79A84E9B8A1E89B8BE695B0E9878FEFBC8CE68891E4BBACE794A8E695B0E7BB846261736B65745B4D5DE69DA5E8A1A8E7A4BAEFBC8CE68891E4BBACE68C89E785A7E99D9EE98092E5878FE9A1BAE5BA8FE8BF9BE8A18CE68E92E58897EFBC8CE58DB36261736B65745B695D203C3D206261736B65745B692B315D0A0A312EE68891E4BBACE588A9E794A8E5BD92E7BAB3E6B395E69DA5E680BBE7BB93E587BAE4B880E4B8AAE8A784E5BE8BEFBC9A0A202020E5AFB9E4BA8EE5898D6EE4B8AAE7AFAEE5AD90EFBC8CE585B6E9B8A1E89B8BE695B0E9878FE680BBE5928CE4B8BA536EEFBC8CE982A3E4B988E5AFB9E4BA8EE7ACAC6E2B31E4B8AAE7AFAEE5AD90EFBC8CE585B6E9B8A1E89B8BE695B0E9878FE5BA94E8AFA5E6BBA1E8B6B3EFBC9A0A2020206261736B65745B6E2B315D203C3D20536E202B2031EFBC8CE5A682E69E9C6261736B65745B6E2B315D203E20536E202B2031EFBC8CE982A3E4B988536E202B2031E8BF99E4B8AAE695B0E5B086E697A0E6B395E9809AE8BF87E79BB8E5BA94E79A84E7AFAEE5AD90E9B8A1E89B8BE695B0E79BB8E58AA0E69DA5E88EB7E5BE97E380820A202020E794B1E4BA8EE698AFE99D9EE98092E5878FE5BA8FE58897EFBC8CE59BA0E8808C0A2020206261736B65745B6E5D203C3D206261736B65745B6E2B315D203C3D20536E202B20310A0A200A0A322EE68891E4BBACE69DA5E8AF81E6988EE7ACA6E59088E4B88AE5BC8FE79A84E695B0E7BB84E883BDE5A49FE6BBA1E8B6B3E69DA1E4BBB6E2809CE4BBBBE6848FE4B880E4B8AAE5B08FE4BA8E4EE79A84E6ADA3E695B4E695B0EFBC8CE983BDE883BDE794B1E69F90E587A0E4B8AAE7AFAEE5AD90E58685E89B8BE79A84E695B0E9878FE79BB8E58AA0E79A84E5928CE5BE97E588B0E2809DE380820A202020E5BD934D203D2031E697B6EFBC8C6261736B65745B305D203D2031EFBC8CE5BD934D3D32E697B6EFBC8CE58F966261736B65745B315D203D2031EFBC8CE883BDE5A49FE6BBA1E8B6B3E4B88AE8BFB0E69DA1E4BBB6E380820A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020E58F966261736B65745B315D203D2032EFBC8CE4B99FE883BDE5A49FE6BBA1E8B6B3E4B88AE8BFB0E69DA1E4BBB6E380820A202020E58187E8AEBE4D203D206E2D31E697B6EFBC8CE6BBA1E8B6B3E4B88AE8BFB0E69DA1E4BBB6EFBC8CE68891E4BBACE69DA5E8AF81E6988EE5BD934D203D206EE697B6E4BAA6E6BBA1E8B6B3E380820A202020E5898D6E2D31E4B8AAE7AFAEE5AD90E79A84E9B8A1E89B8BE695B0E9878FE680BBE5928CE4B8BA536E2D31EFBC8CE6ADA4E697B6E58AA0E4B88AE7ACAC6EE4B8AAE7AFAEE5AD90EFBC8CE680BBE5928CE4B8BA536E203D20536E2D31202B206261736B65745B6E2D315DE38082E58DB3E8AF81E6988E536E202D2031EFBC8C536E202D2032EFBC8C536E202D2033EFBC8C536E202D20286261736B65745B6E2D315D202D203129E983BDE58FAFE4BBA5E794B1E69F90E587A0E4B8AAE7AFAEE5AD90E58685E89B8BE79A84E695B0E9878FE79BB8E58AA0E79A84E5928CE5BE97E588B0E38082E794B1E4BA8E6261736B65745B6E2D315D203C3D20536E2D31EFBC8CE8808CE4B894E5B08FE4BA8EE68896E88085E7AD89E4BA8E536E2D31E79A84E695B0E883BDE794B1E69F90E587A0E4B8AAE7AFAEE5AD90E58685E89B8BE79A84E695B0E9878FE79BB8E58AA0E79A84E5928CE5BE97E588B0EFBC8CE68980E4BBA5536E202D2031EFBC8C536E202D2032EFBC8C536E202D2033EFBC8C536E202D20286261736B65745B6E2D315D202D203129E4BAA6E58FAFE5BE97E588B0E380820A202020E8AF81E6AF95E380820A0A332EE5AFB9E4BA8E4EE5928C4DE79A84E580BCEFBC8CE68891E4BBACE59CA8E8BE93E585A5E5908EE58DB3E58FAFE5819AE4B880E4B8AAE588A4E696ADE380820A202020322E312020E5BD934E203C204DEFBC8CE6988EE698BEE69C89E7AFAEE5AD90E4B8BAE7A9BAEFBC8CE59BA0E8808CE4B88DE7ACA6E380820A202020322E322020E5BD934E203E3D204DE697B6EFBC8CE7ACACE4B880E4B8AAE7AFAEE5AD90E5BF85E784B6E8A681E694BE31E4B8AAE9B8A1E89B8BEFBC8CE585B6E5908EE99DA2E79A84E7AFAEE5AD90E68891E4BBACE68C89E785A76261736B65745B6E5D203C3D206261736B65745B6E2B315D203C3D20536E202B2031E58F96E69C80E5A4A7E580BCEFBC8CE4BE9DE6ACA1E4B8BA322C342C382C31362E2E2E2E2E2EEFBC8CE9B8A1E89B8BE680BBE695B0E4B8BA325E4D202D2031EFBC8CE58DB34DE4B8AAE7AFAEE5AD90E79A84E9B8A1E89B8BE695B0E9878FE69C80E5A4A7E580BCE380820A0A202020E68980E4BBA54D203C3D204E203C20325E4D0A0A200A0A342EE4BBA3E7A081E8A681E782B90A0A202020342E3120E5AFB9E4BA8EE587BDE695B00AE5A48DE588B6E4BBA3E7A0810A0A766F696420736F6C766528696E742063757272656E745F73756D2C20696E74206261736B65745F69642C20696E742063757272656E745F6E756D2C20696E742A206261736B65742C20696E74204E2C20696E74204D290A0AE5A48DE588B6E4BBA3E7A0810A0A202020E585B6E4B8AD63757272656E745F73756DE8A1A8E7A4BAE5BD93E5898DE68980E69C89E7AFAEE5AD90E9B8A1E89B8BE79A84E680BBE5928CEFBC8C0A0A2020202020202020206261736B65745F6964E8A1A8E7A4BAE5BD93E5898DE7AFAEE5AD90E79A84E5BA8FE58FB7EFBC8C0A20202020202020202063757272656E745F6E756DE8A1A8E7A4BAE5B086E8A681E694BEE588B0E5BD93E5898DE7AFAEE5AD90E58EBBE79A84E9B8A1E89B8BE695B0E9878FEFBC8C0A2020202020202020206261736B65742C204E2C204DE580BCE983BDE698AF6D61696EE587BDE695B0E4B8ADE79A84E58E9FE580BCEFBC8CE59CA8E98092E5BD92E4B8ADE8BF99E4B889E4B8AAE58F82E695B0E59FBAE69CACE6B2A1E58F98E380820A202020E5889DE5A78BE58C96E4B8BA28302C20302C20312C206261736B65742C204E2C204D29E8A1A8E7A4BAE6ADA4E697B6E68980E69C89E9B8A1E89B8BE695B0E9878FE4B8BA30EFBC8CE5B086E8A681E68A8A31E4B8AAE9B8A1E89B8BE694BEE8BF9BE7ACAC30E4B8AAE7AFAEE5AD90E9878CE99DA2E380820A0A202020342E3220E5AFB9E4BA8EE587BDE695B0736F6C7665E4B8ADE79A840AE5A48DE588B6E4BBA3E7A0810A0A20202020696620282863757272656E745F73756D202B2063757272656E745F6E756D2A284D202D206261736B65745F69642929203E204E207C7C202863757272656E745F73756D202B202863757272656E745F73756D202B2031292A2828313C3C284D202D206261736B65745F69642929202D20312929203C204E290A202020202020202072657475726E3B0A0AE5A48DE588B6E4BBA3E7A0810A0A202020202020202020E68891E4BBACE98787E794A8E79A84E698AFE6909CE7B4A2E4B8ADE79A84E589AAE69E9DE68A80E69CAFEFBC8CE58DB3E59CA8E6AF8FE6ACA1E98092E5BD92E697B6EFBC8CE9809AE8BF87E9A284E58588E588A4E696ADE69DA5E79C8BE6ADA4E8B7AFE698AFE590A6E8B5B0E5BE97E9809AE380820AE5A48DE588B6E4BBA3E7A0810A0A20202863757272656E745F73756D202B2063757272656E745F6E756D2A284D202D206261736B65745F69642929203E204E20E8A1A8E7A4BAE4B98BE5908EE79A84E68980E69C89E7AFAEE5AD90E983BDE6B7BBE58AA0E69C80E5B08FE9B8A1E89B8BE695B0E9878FEFBC8CE5A682E69E9CE8BF99E983BDE5A4A7E4BA8E4EEFBC8CE982A3E4B988E882AFE5AE9AE4B88DE7ACA6E380820A0AE5A48DE588B6E4BBA3E7A0810AE5A48DE588B6E4BBA3E7A0810A0A20202863757272656E745F73756D202B202863757272656E745F73756D202B2031292A2828313C3C284D202D206261736B65745F69642929202D20312929203C204E2020E8A1A8E7A4BAE4B98BE5908EE79A84E68980E69C89E7AFAEE5AD90E983BDE6B7BBE58AA0E79BB8E5BA94E79A84E69C80E5A4A7E580BCEFBC8CE5A682E69E9CE8BF99E983BDE5B08FE4BA8E4EEFBC8CE982A3E4B988E882AFE5AE9AE4B99FE4B88DE7ACA6E3808220202020200A0AE5A48DE588B6E4BBA3E7A0810A0A2020202020202020E585B6E4B8AD2863757272656E745F73756D202B2031292A2828313C3C284D202D206261736B65745F69642929202D20312920E58FAFE4BBA5E8BF99E6A0B7E8A7A3E9878AEFBC9A0A0A2020202020202020E58187E8AEBEE5898DE99DA2E79A84E7AFAEE5AD90E680BBE5928CE4B8BA6EEFBC8CE982A3E4B988E7B4A7E68CA8E79D80E79A84E5908EE4B880E4B8AAE7AFAEE5AD90E9878CE9B8A1E89B8BE695B0E9878FE69C80E5A4A7E580BCE4B8BA6E2B31EFBC8CE585B6E5908EE79A84E4B880E4B8AAE7AFAEE5AD90E69C80E5A4A7E580BCE4B8BA6E202B20286E202B203129202B2031203D20326E202B2032EFBC8CE8BF99E4B98BE5908EE79A84E4B880E4B8AAE7AFAEE5AD90E79A84E69C80E5A4A7E580BCE4B8BA6E202B20286E202B203129202B2028326E202B203229202B2031203D20346E202B20342E2E2E2E2E2EEFBC88E58DB3E8BF99E9878CE58F96E79A84E983BDE698AF536E202B2031EFBC890A2020202020202020E4BE9DE6ACA1E7B1BBE68EA8EFBC8CE68891E4BBACE58F91E78EB06E202B2031202B2028326E202B203229202B2028346E202B203429202B202E2E2E2E2E2E203D2028325E636F756E74202D2031292A286E202B203129EFBC8C636F756E74E8A1A8E7A4BAE79BB8E5BA94E79A84E7AFAEE5AD90E695B0E9878FE380820A0A200A0A352EE4BBA3E7A081E5A682E4B88BEFBC9A0AE5A48DE588B6E4BBA3E7A0810AE5A48DE588B6E4BBA3E7A0810A0A20312023696E636C756465203C737464696F2E683E0A20322023696E636C756465203C7374646C69622E683E0A2033200A203420766F696420736F6C766528696E742063757272656E745F73756D2C20696E74206261736B65745F69642C20696E742063757272656E745F6E756D2C20696E742A206261736B65742C20696E74204E2C20696E74204D290A2035207B0A203620202020206966202863757272656E745F73756D203D3D204E202626206261736B65745F6964203D3D204D290A203720202020207B0A2038202020202020202020696E7420693B0A2039202020202020202020666F72202869203D20303B2069203C204D3B20692B2B290A3130202020202020202020202020207072696E7466282225645C74222C206261736B65745B695D293B0A31312020202020202020207072696E746628225C6E22293B0A313220202020202020202072657475726E3B0A313320202020207D0A3134200A313520202020206966202863757272656E745F6E756D203E204E207C7C206261736B65745F6964203E3D204D290A313620202020202020202072657475726E3B0A3137200A31382020202020696620282863757272656E745F73756D202B2063757272656E745F6E756D2A284D202D206261736B65745F69642929203E204E207C7C200A31392020202020202020202863757272656E745F73756D202B202863757272656E745F73756D202B2031292A2828313C3C284D202D206261736B65745F69642929202D20312929203C204E290A323020202020202020202072657475726E3B0A3231200A32322020202020696E74206A3B0A32332020202020666F7220286A203D2063757272656E745F6E756D3B206A203C3D2063757272656E745F73756D202B20313B206A2B2B290A323420202020207B0A32352020202020202020206261736B65745B6261736B65745F69645D203D206A3B0A3236202020202020202020736F6C76652863757272656E745F73756D202B206A2C206261736B65745F6964202B20312C206A2C206261736B65742C204E2C204D293B0A323720202020207D0A3238207D0A3239200A333020696E74206D61696E28290A3331207B0A33322020202020696E74204E3B2F2F746865206E756D626572206F6620656767730A33332020202020696E74204D3B2F2F746865206E756D626572206F66206261736B6574730A333420202020207768696C6520287363616E66282225642564222C20264E2C20264D2920213D20454F46290A333520202020207B0A3336202020202020202020696620284E203C204D207C7C204E203E3D20313C3C4D207C7C204D203C3D2030290A3337202020202020202020202020207072696E7466282257726F6E672064617461215C6E22293B0A3338202020202020202020656C73650A3339202020202020202020202020207072696E7466282254686520636F6D62696E6174696F6E73206172652061732062656C6F773A5C6E22293B0A3430200A3431202020202020202020696E742A206261736B6574203D2028696E742A296D616C6C6F632873697A656F6628696E74292A4D293B0A3432202020202020202020736F6C766528302C20302C20312C206261736B65742C204E2C204D293B0A343320202020202020202066726565286261736B6574293B0A343420202020207D0A3435202020202072657475726E20303B0A3436207D);
INSERT INTO `question` VALUES ('424', '4', '题目：数组中有一个数字出现的次数超过了数组长度的一半，找出这个数字。', 'program', '8', 0xE58886E69E90EFBC9A200A20202020202020312EE9A696E58588E68891E4BBACE683B3E588B0E5A682E69E9CE698AFE4B880E4B8AAE68E92E5BA8FE5A5BDE79A84E695B0E7BB84EFBC8CE982A3E4B988E68891E4BBACE58FAAE99C80E8A681E9818DE58E86E4B880E6ACA1E695B0E7BB84EFBC8CE7BB9FE8AEA1E5A5BDE6AF8FE4B8AAE695B0E5AD97E587BAE78EB0E79A84E6ACA1E695B0EFBC8C200AE5A682E69E9CE5A4A7E4BA8EE695B0E7BB84E995BFE5BAA6E79A84E4B880E58D8AE5B0B1E8BE93E587BAE8BF99E4B8AAE695B0E5AD97E38082E68896E88085E58FAAE99C80E8A681E79BB4E68EA5E8BE93E587BA61727261795B4E2F325DE79A84E580BCE58DB3E58FAFE38082200A20202020202020322EE5A682E69E9CE698AFE69D82E4B9B1E697A0E7ABA0E79A84E695B0E68DAEE68891E4BBACE58FAFE883BDE59B9EE683B3E58588E68E92E5BA8FEFBC8CE784B6E5908EE68C8931E6938DE4BD9CE58DB3E58FAFE38082E4BD86E698AFE68E92E5BA8FE79A84E69C80E5B08FE697B6E997B4E5A48DE69D82E5BAA6EFBC88E5BFABE9809F200AE68E92E5BA8FEFBC8920204FEFBC884E2A6C6F674EEFBC89202C2020E58AA0E4B88AE9818DE58E86EFBC8CE697B6E997B4E5A48DE69D82E5BAA6E4B8BA3A204FEFBC884E2A6C6F674E2B4EEFBC89202CE5A682E69E9CE98089E68BA9E79BB4E68EA5E8BE93E587BA61727261795B4E2F325DE79A84E580BCE79A84E8AF9DEFBC8C200AE697B6E997B4E5A48DE69D82E5BAA6E7BCA9E5B08FE4B8BA20204FEFBC884E2A6C6F674EEFBC8920E38082200A20202020202020332EE5A682E69E9CE8AFB4E695B0E5AD97E58FAAE69C89302D39E79A84E8AF9DE58FAFE4BBA5E88083E89991E8AEBEE8AEA1E4B880E4B8AA48617368207461626C65EFBC8CE9818DE58E86E4B880E6ACA1E5B0B1E883BDE79FA5E98193E6AF8FE4B8AAE695B0E5AD97E587BAE78EB0E79A84E6ACA1E695B0E38082E4BD86200AE698AFE695B0E5AD97E88C83E59BB4E4B88DE79FA5EFBC8CE68980E4BBA548617368E8A1A8E4B88DE5A5BDE5889BE5BBBAE38082200A20202020202020342EE587BAE78EB0E79A84E6ACA1E695B0E8B685E8BF87E695B0E7BB84E995BFE5BAA6E79A84E4B880E58D8AEFBC8CE8A1A8E6988EE8BF99E4B8AAE695B0E5AD97E587BAE78EB0E79A84E6ACA1E695B0E6AF94E585B6E4BB96E695B0E5AD97E587BAE78EB0E79A84E6ACA1E695B0E79A84E680BBE5928CE8BF98E5A49AE38082E68980E4BBA5200AE68891E4BBACE58FAFE4BBA5E88083E89991E6AF8FE6ACA1E588A0E999A4E4B8A4E4B8AAE4B88DE5908CE79A84E695B0EFBC8CE982A3E4B988E59CA8E589A9E4B88BE79A84E695B0E4B8ADEFBC8CE587BAE78EB0E79A84E6ACA1E695B0E4BB8DE784B6E8B685E8BF87E680BBE695B0E79A84E4B880E58D8AE38082E9809AE8BF87E4B88DE696ADE9878D200AE5A48DE8BF99E4B8AAE8BF87E7A88BEFBC8CE4B88DE696ADE68E92E999A4E68E89E585B6E5AE83E79A84E695B0EFBC8CE69C80E7BB88E689BEE588B0E982A3E4B8AAE587BAE78EB0E6ACA1E695B0E8B685E8BF87E4B880E58D8AE79A84E695B0E5AD97E38082E8BF99E4B8AAE696B9E6B395EFBC8CE5858DE58EBBE4BA86E4B88AE8BFB0E6809DE8B7AF200AE4B880E38081E4BA8CE79A84E68E92E5BA8FEFBC8CE4B99FE981BFE5858DE4BA86E6809DE8B7AFE4B889E7A9BAE997B44FEFBC884EEFBC89E79A84E5BC80E99480EFBC8CE680BBE5BE97E8AFB4E69DA5EFBC8CE697B6E997B4E5A48DE69D82E5BAA6E58FAAE69C894FEFBC884EEFBC89EFBC8CE7A9BAE997B4E5A48DE69D82E5BAA6E4B8BA200A4FEFBC8831EFBC89EFBC8CE4B88DE5A4B1E4B8BAE69C80E4BDB3E696B9E6B395E38082200A20202020202020E4BE8BEFBC9AE695B0E7BB8420615B355D3D7B302C312C322C312C317D3B200A20202020202020202020202020202020202020202020202020E68891E4BBACE8A681E69FA5E689BEE79A84E695B0E5AD97E4B8BA31EFBC8CE6938DE4BD9CE6ADA5E9AAA4E4B8BAEFBC9AE9818DE58E86E695B4E4B8AAE695B0E7BB84EFBC8CE784B6E5908EE6AF8FE6ACA1E588A0E999A4E4B88DE5908CE79A84E4B8A4E4B8AAE695B0E5AD97EFBC8CE8BF87E7A88B200AE5A682E4B88BEFBC9A200A20202020202020202020202020202020202020202020302031203220312031203D3E32203120313D3E31200A2A2F20200A23696E636C756465203C637374646C69623E20200A23696E636C756465203C696F73747265616D3E20200A20200A696E74206E756D477265617465725468616E48616C6628696E74202A206172722C20696E74206C656E2920200A7B20200A2020696628617272203D3D204E554C4C207C7C206C656E203C2031297B20200A2020202072657475726E202D31303030303B20200A20207D20200A2020696E74206B6579203D20303B20200A2020696E7420636E74203D20303B20200A2020666F7228696E742069203D20303B2069203C206C656E3B202B2B69297B20200A20202020696628636E74203D3D2030297B20200A2020202020206B6579203D206172725B695D3B20200A202020202020636E74203D20313B20200A202020207D20200A20202020656C73657B20200A2020202020206966286B6579203D3D206172725B695D297B20200A2020202020202020636E742B2B3B20200A2020202020207D20200A202020202020656C73657B20200A2020202020202020636E742D2D3B20200A2020202020207D20200A202020207D20200A20207D20200A202072657475726E206B65793B20200A7D20200A20200A696E74206D61696E28696E7420617267632C2063686172202A2A20617267762920200A7B20200A2020696E74206172725B5D203D207B302C312C322C312C317D3B20200A2020696E74206C656E203D2073697A656F6628617272292F73697A656F66286172725B305D293B20200A20200A2020696E7420726573203D206E756D477265617465725468616E48616C66286172722C206C656E293B20200A20207374643A3A636F75743C3C7265733C3C7374643A3A656E646C3B20200A20200A202073797374656D2822706175736522293B20200A202072657475726E20303B20200A7D2020);
INSERT INTO `question` VALUES ('425', '4', '实现函数double Power(double base,int exponent)，求base的exponent次方。 \n不得使用库函数，同时不需要考虑大数问题。 ', 'program', '8', 0xE58886E69E90EFBC9A200AE8BF99E98193E9A298E79BAEE69C89E4BBA5E4B88BE587A0E782B9E99C80E8A681E6B3A8E6848FEFBC9A200A312E202030E79A8430E6ACA1E696B9E698AFE697A0E6848FE4B989E79A84EFBC8CE99D9EE6B395E8BE93E585A5200A322E202030E79A84E8B49FE695B0E6ACA1E696B9E79BB8E5BD93E4BA8E30E4BD9CE4B8BAE999A4E695B0EFBC8CE4B99FE698AFE697A0E6848FE4B989E79A84EFBC8CE99D9EE6B395E8BE93E585A5200A332E202062617365E5A682E69E9CE99D9E30EFBC8CE5A682E69E9CE68C87E695B06578706F6E656E74E5B08FE4BA8E30EFBC8CE58FAFE4BBA5E58588E6B18262617365E79A847C6578706F6E656E747CE6ACA1E696B9EFBC8CE784B6E5908EE5868D200AE6B182E58092E695B0200A342E2020E4BBBBE4BD95E695B0E79A8430E6ACA1E696B9E983BDE4B8BA30200A352E2020E588A4E696AD646F75626C65E7B1BBE59E8BE79A8462617365E698AFE590A6E7AD89E4BA8E30E4B88DE883BDE4BDBFE794A83D3DE58FB7E38082E59BA0E4B8BAE8AEA1E7AE97E69CBAE8A1A8E8BFB0E5B08FE6A09128E58C85E68BAC666C6F6174200AE5928C646F75626C65E59E8BE5B08FE695B029E983BDE69C89E8AFAFE5B7AEEFBC8CE4B88DE883BDE79BB4E68EA5E4BDBFE794A8E7AD89E58FB7283D3D29E588A4E696ADE4B8A4E4B8AAE5B08FE695B0E698AFE590A6E79BB8E7AD89E38082E5A682E69E9CE4B8A4200AE4B8AAE695B0E79A84E5B7AEE79A84E7BB9DE5AFB9E580BCE5BE88E5B08FEFBC8CE982A3E4B988E58FAFE4BBA5E8AEA4E4B8BAE4B8A4E4B8AA646F75626C65E7B1BBE59E8BE79A84E695B0E79BB8E7AD89E38082200A2A2F20200A23696E636C756465203C637374646C69623E20200A23696E636C756465203C696F73747265616D3E20200A20200A626F6F6C20696E76616C6964496E707574203D2066616C73653B20200A20200A626F6F6C20646F75626C65457175616C28646F75626C6520782C20646F75626C6520792920200A7B20200A2020696628282878203E2079292026262028782D79203C20302E3030303030312929207C7C20282878203C2079292026262028782D79203E202D302E3030303030312929297B20200A2020202072657475726E20747275653B20200A20207D20200A2020656C73657B20200A2020202072657475726E2066616C73653B20200A20207D20200A7D20200A20200A646F75626C6520506F77657228646F75626C6520626173652C20696E74206578706F6E656E74297B20200A2020696628646F75626C65457175616C28626173652C20302E3029202626206578706F6E656E74203C3D2030297B2F2F30E79A8430E6ACA1E696B9E4B88E30E79A84E8B49FE6ACA1E696B920E697A0E69588E8BE93E585A520200A20202020696E76616C6964496E707574203D20747275653B20200A2020202072657475726E202D312E303B20200A20207D20200A20206966286578706F6E656E74203D3D2030297B2F2FE4BBBBE4BD95E695B0E79A84E99BB6E6ACA1E696B9E983BDE4B8BA3020200A2020202072657475726E20302E303B20200A20207D20200A20202F2FE588A4E696ADE68C87E695B0E698AFE590A6E4B8BAE8B49FE695B020200A2020696E74206E65676174697665203D2066616C73653B20200A20206966286578706F6E656E74203C2030297B20200A202020206E65676174697665203D20747275653B20200A202020206578706F6E656E74203D202D6578706F6E656E743B20200A20207D20200A2020646F75626C6520726573203D20312E303B20200A2020666F7228696E742069203D20303B2069203C206578706F6E656E743B202B2B69297B20200A20202020726573203D20726573202A20626173653B20200A20207D20200A20206966286E65676174697665203D3D2074727565297B20200A2020202072657475726E20312F7265733B20200A20207D20200A2020656C73657B20200A2020202072657475726E207265733B20200A20207D20200A7D20200A20200A696E74206D61696E28696E7420617267632C2063686172202A2A20617267762920200A7B20200A2020646F75626C652062617365203D20322E303B20200A2020696E74206578706F6E656E74203D202D323B20200A20200A2020646F75626C6520726573203D20506F77657228626173652C206578706F6E656E74293B20200A20207374643A3A636F75743C3C7265733C3C7374643A3A656E646C3B20200A20200A202073797374656D2822706175736522293B20200A202072657475726E20303B20200A7D);

-- ----------------------------
-- Table structure for question_tag
-- ----------------------------
DROP TABLE IF EXISTS `question_tag`;
CREATE TABLE `question_tag` (
  `question_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`question_id`,`tag_id`),
  KEY `FKF5C2C7C1CC71388D` (`question_id`),
  KEY `FKF5C2C7C152E7AB07` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of question_tag
-- ----------------------------
INSERT INTO `question_tag` VALUES ('200', '65');
INSERT INTO `question_tag` VALUES ('200', '66');
INSERT INTO `question_tag` VALUES ('201', '65');
INSERT INTO `question_tag` VALUES ('202', '65');
INSERT INTO `question_tag` VALUES ('202', '67');
INSERT INTO `question_tag` VALUES ('203', '65');
INSERT INTO `question_tag` VALUES ('203', '68');
INSERT INTO `question_tag` VALUES ('204', '65');
INSERT INTO `question_tag` VALUES ('204', '69');
INSERT INTO `question_tag` VALUES ('205', '65');
INSERT INTO `question_tag` VALUES ('205', '70');
INSERT INTO `question_tag` VALUES ('206', '65');
INSERT INTO `question_tag` VALUES ('206', '71');
INSERT INTO `question_tag` VALUES ('207', '65');
INSERT INTO `question_tag` VALUES ('208', '65');
INSERT INTO `question_tag` VALUES ('208', '71');
INSERT INTO `question_tag` VALUES ('209', '65');
INSERT INTO `question_tag` VALUES ('210', '72');
INSERT INTO `question_tag` VALUES ('211', '65');
INSERT INTO `question_tag` VALUES ('211', '73');
INSERT INTO `question_tag` VALUES ('212', '65');
INSERT INTO `question_tag` VALUES ('212', '74');
INSERT INTO `question_tag` VALUES ('213', '65');
INSERT INTO `question_tag` VALUES ('213', '67');
INSERT INTO `question_tag` VALUES ('214', '65');
INSERT INTO `question_tag` VALUES ('214', '70');
INSERT INTO `question_tag` VALUES ('215', '65');
INSERT INTO `question_tag` VALUES ('215', '75');
INSERT INTO `question_tag` VALUES ('216', '65');
INSERT INTO `question_tag` VALUES ('216', '76');
INSERT INTO `question_tag` VALUES ('217', '65');
INSERT INTO `question_tag` VALUES ('217', '77');
INSERT INTO `question_tag` VALUES ('218', '65');
INSERT INTO `question_tag` VALUES ('218', '78');
INSERT INTO `question_tag` VALUES ('219', '65');
INSERT INTO `question_tag` VALUES ('219', '79');
INSERT INTO `question_tag` VALUES ('220', '65');
INSERT INTO `question_tag` VALUES ('220', '78');
INSERT INTO `question_tag` VALUES ('221', '65');
INSERT INTO `question_tag` VALUES ('221', '80');
INSERT INTO `question_tag` VALUES ('222', '65');
INSERT INTO `question_tag` VALUES ('222', '71');
INSERT INTO `question_tag` VALUES ('223', '65');
INSERT INTO `question_tag` VALUES ('223', '74');
INSERT INTO `question_tag` VALUES ('224', '65');
INSERT INTO `question_tag` VALUES ('224', '81');
INSERT INTO `question_tag` VALUES ('225', '65');
INSERT INTO `question_tag` VALUES ('225', '79');
INSERT INTO `question_tag` VALUES ('226', '65');
INSERT INTO `question_tag` VALUES ('227', '65');
INSERT INTO `question_tag` VALUES ('227', '82');
INSERT INTO `question_tag` VALUES ('228', '83');
INSERT INTO `question_tag` VALUES ('228', '84');
INSERT INTO `question_tag` VALUES ('229', '65');
INSERT INTO `question_tag` VALUES ('229', '85');
INSERT INTO `question_tag` VALUES ('230', '65');
INSERT INTO `question_tag` VALUES ('230', '67');
INSERT INTO `question_tag` VALUES ('231', '65');
INSERT INTO `question_tag` VALUES ('231', '86');
INSERT INTO `question_tag` VALUES ('232', '65');
INSERT INTO `question_tag` VALUES ('232', '66');
INSERT INTO `question_tag` VALUES ('233', '65');
INSERT INTO `question_tag` VALUES ('234', '65');
INSERT INTO `question_tag` VALUES ('234', '66');
INSERT INTO `question_tag` VALUES ('235', '65');
INSERT INTO `question_tag` VALUES ('235', '66');
INSERT INTO `question_tag` VALUES ('236', '65');
INSERT INTO `question_tag` VALUES ('236', '87');
INSERT INTO `question_tag` VALUES ('237', '65');
INSERT INTO `question_tag` VALUES ('237', '86');
INSERT INTO `question_tag` VALUES ('238', '65');
INSERT INTO `question_tag` VALUES ('238', '67');
INSERT INTO `question_tag` VALUES ('239', '65');
INSERT INTO `question_tag` VALUES ('239', '67');
INSERT INTO `question_tag` VALUES ('240', '65');
INSERT INTO `question_tag` VALUES ('240', '67');
INSERT INTO `question_tag` VALUES ('241', '65');
INSERT INTO `question_tag` VALUES ('241', '67');
INSERT INTO `question_tag` VALUES ('242', '65');
INSERT INTO `question_tag` VALUES ('242', '67');
INSERT INTO `question_tag` VALUES ('243', '65');
INSERT INTO `question_tag` VALUES ('243', '88');
INSERT INTO `question_tag` VALUES ('244', '65');
INSERT INTO `question_tag` VALUES ('244', '88');
INSERT INTO `question_tag` VALUES ('245', '65');
INSERT INTO `question_tag` VALUES ('245', '89');
INSERT INTO `question_tag` VALUES ('246', '65');
INSERT INTO `question_tag` VALUES ('246', '89');
INSERT INTO `question_tag` VALUES ('247', '65');
INSERT INTO `question_tag` VALUES ('247', '86');
INSERT INTO `question_tag` VALUES ('248', '90');
INSERT INTO `question_tag` VALUES ('249', '91');
INSERT INTO `question_tag` VALUES ('250', '65');
INSERT INTO `question_tag` VALUES ('250', '66');
INSERT INTO `question_tag` VALUES ('251', '65');
INSERT INTO `question_tag` VALUES ('251', '88');
INSERT INTO `question_tag` VALUES ('252', '65');
INSERT INTO `question_tag` VALUES ('252', '67');
INSERT INTO `question_tag` VALUES ('253', '65');
INSERT INTO `question_tag` VALUES ('253', '67');
INSERT INTO `question_tag` VALUES ('254', '65');
INSERT INTO `question_tag` VALUES ('254', '71');
INSERT INTO `question_tag` VALUES ('255', '65');
INSERT INTO `question_tag` VALUES ('256', '65');
INSERT INTO `question_tag` VALUES ('256', '85');
INSERT INTO `question_tag` VALUES ('257', '65');
INSERT INTO `question_tag` VALUES ('258', '65');
INSERT INTO `question_tag` VALUES ('258', '79');
INSERT INTO `question_tag` VALUES ('259', '65');
INSERT INTO `question_tag` VALUES ('259', '70');
INSERT INTO `question_tag` VALUES ('260', '65');
INSERT INTO `question_tag` VALUES ('260', '71');
INSERT INTO `question_tag` VALUES ('261', '61');
INSERT INTO `question_tag` VALUES ('261', '65');
INSERT INTO `question_tag` VALUES ('262', '65');
INSERT INTO `question_tag` VALUES ('263', '65');
INSERT INTO `question_tag` VALUES ('263', '68');
INSERT INTO `question_tag` VALUES ('264', '65');
INSERT INTO `question_tag` VALUES ('264', '79');
INSERT INTO `question_tag` VALUES ('265', '65');
INSERT INTO `question_tag` VALUES ('265', '89');
INSERT INTO `question_tag` VALUES ('266', '65');
INSERT INTO `question_tag` VALUES ('266', '92');
INSERT INTO `question_tag` VALUES ('267', '65');
INSERT INTO `question_tag` VALUES ('268', '65');
INSERT INTO `question_tag` VALUES ('269', '65');
INSERT INTO `question_tag` VALUES ('270', '65');
INSERT INTO `question_tag` VALUES ('270', '70');
INSERT INTO `question_tag` VALUES ('271', '65');
INSERT INTO `question_tag` VALUES ('271', '93');
INSERT INTO `question_tag` VALUES ('272', '65');
INSERT INTO `question_tag` VALUES ('273', '72');
INSERT INTO `question_tag` VALUES ('274', '65');
INSERT INTO `question_tag` VALUES ('275', '65');
INSERT INTO `question_tag` VALUES ('276', '65');
INSERT INTO `question_tag` VALUES ('277', '65');
INSERT INTO `question_tag` VALUES ('278', '65');
INSERT INTO `question_tag` VALUES ('279', '65');
INSERT INTO `question_tag` VALUES ('280', '65');
INSERT INTO `question_tag` VALUES ('281', '65');
INSERT INTO `question_tag` VALUES ('282', '65');
INSERT INTO `question_tag` VALUES ('283', '65');
INSERT INTO `question_tag` VALUES ('284', '65');
INSERT INTO `question_tag` VALUES ('285', '65');
INSERT INTO `question_tag` VALUES ('285', '67');
INSERT INTO `question_tag` VALUES ('286', '65');
INSERT INTO `question_tag` VALUES ('287', '65');
INSERT INTO `question_tag` VALUES ('287', '66');
INSERT INTO `question_tag` VALUES ('288', '65');
INSERT INTO `question_tag` VALUES ('304', '95');
INSERT INTO `question_tag` VALUES ('305', '95');
INSERT INTO `question_tag` VALUES ('306', '95');
INSERT INTO `question_tag` VALUES ('307', '95');
INSERT INTO `question_tag` VALUES ('308', '95');
INSERT INTO `question_tag` VALUES ('309', '95');
INSERT INTO `question_tag` VALUES ('310', '95');
INSERT INTO `question_tag` VALUES ('311', '95');
INSERT INTO `question_tag` VALUES ('312', '95');
INSERT INTO `question_tag` VALUES ('313', '95');
INSERT INTO `question_tag` VALUES ('314', '95');
INSERT INTO `question_tag` VALUES ('315', '95');
INSERT INTO `question_tag` VALUES ('316', '95');
INSERT INTO `question_tag` VALUES ('317', '95');
INSERT INTO `question_tag` VALUES ('318', '95');
INSERT INTO `question_tag` VALUES ('319', '95');
INSERT INTO `question_tag` VALUES ('320', '95');
INSERT INTO `question_tag` VALUES ('321', '95');
INSERT INTO `question_tag` VALUES ('322', '95');
INSERT INTO `question_tag` VALUES ('323', '95');
INSERT INTO `question_tag` VALUES ('324', '95');
INSERT INTO `question_tag` VALUES ('325', '95');
INSERT INTO `question_tag` VALUES ('326', '95');
INSERT INTO `question_tag` VALUES ('327', '95');
INSERT INTO `question_tag` VALUES ('328', '95');
INSERT INTO `question_tag` VALUES ('329', '95');
INSERT INTO `question_tag` VALUES ('330', '95');
INSERT INTO `question_tag` VALUES ('331', '95');
INSERT INTO `question_tag` VALUES ('332', '95');
INSERT INTO `question_tag` VALUES ('333', '95');
INSERT INTO `question_tag` VALUES ('334', '95');
INSERT INTO `question_tag` VALUES ('335', '95');
INSERT INTO `question_tag` VALUES ('336', '95');
INSERT INTO `question_tag` VALUES ('337', '95');
INSERT INTO `question_tag` VALUES ('338', '95');
INSERT INTO `question_tag` VALUES ('339', '95');
INSERT INTO `question_tag` VALUES ('340', '95');
INSERT INTO `question_tag` VALUES ('341', '95');
INSERT INTO `question_tag` VALUES ('342', '95');
INSERT INTO `question_tag` VALUES ('343', '95');
INSERT INTO `question_tag` VALUES ('344', '95');
INSERT INTO `question_tag` VALUES ('345', '95');
INSERT INTO `question_tag` VALUES ('346', '95');
INSERT INTO `question_tag` VALUES ('347', '95');
INSERT INTO `question_tag` VALUES ('348', '95');
INSERT INTO `question_tag` VALUES ('349', '95');
INSERT INTO `question_tag` VALUES ('350', '95');
INSERT INTO `question_tag` VALUES ('351', '95');
INSERT INTO `question_tag` VALUES ('352', '95');
INSERT INTO `question_tag` VALUES ('353', '95');
INSERT INTO `question_tag` VALUES ('354', '95');
INSERT INTO `question_tag` VALUES ('355', '95');
INSERT INTO `question_tag` VALUES ('356', '95');
INSERT INTO `question_tag` VALUES ('357', '95');
INSERT INTO `question_tag` VALUES ('358', '95');

-- ----------------------------
-- Table structure for quiz
-- ----------------------------
DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_info` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `quiz_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `quiz_score` int(11) DEFAULT NULL,
  `quizset_id` int(11) DEFAULT NULL,
  `quiz_attr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`quiz_id`),
  UNIQUE KEY `quiz_id` (`quiz_id`),
  UNIQUE KEY `quiz_name` (`quiz_name`),
  KEY `FK352255A31B9F87` (`quizset_id`),
  CONSTRAINT `FK352255A31B9F87` FOREIGN KEY (`quizset_id`) REFERENCES `quizset` (`quizset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of quiz
-- ----------------------------
INSERT INTO `quiz` VALUES ('1', '这是最基础的C语言测试题', 'C_Essential', '0', '1', 'paid');
INSERT INTO `quiz` VALUES ('2', 'angularjs是先进的前端mvc框架', 'angularjs', '0', '1', 'free');
INSERT INTO `quiz` VALUES ('3', '马大侠在向你招手，快来测试下吧', 'ali', '0', '1', 'free');
INSERT INTO `quiz` VALUES ('4', '企鹅的笔试题', 'Q', '0', '1', 'free');
INSERT INTO `quiz` VALUES ('5', '巨软的笔试题，相当有难度，来挑战下吧', 'macrosoft', '0', '1', 'free');
INSERT INTO `quiz` VALUES ('6', '华为的笔试题，基础但不简单', 'huawei', '0', '1', 'free');
INSERT INTO `quiz` VALUES ('7', '优秀的响应式前端框架，一次编写，多平台适用', 'bootstrap', '0', '1', 'free');
INSERT INTO `quiz` VALUES ('8', 'google，算法较难，可以开阔眼界', 'google', '0', '1', 'free');

-- ----------------------------
-- Table structure for quizset
-- ----------------------------
DROP TABLE IF EXISTS `quizset`;
CREATE TABLE `quizset` (
  `quizset_id` int(11) NOT NULL AUTO_INCREMENT,
  `remark` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `quizset_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `set_score_criterion` int(11) DEFAULT NULL,
  PRIMARY KEY (`quizset_id`),
  UNIQUE KEY `quizset_id` (`quizset_id`),
  UNIQUE KEY `quizset_name` (`quizset_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of quizset
-- ----------------------------
INSERT INTO `quizset` VALUES ('1', 'all quiz', 'all', null);

-- ----------------------------
-- Table structure for registerquestion
-- ----------------------------
DROP TABLE IF EXISTS `registerquestion`;
CREATE TABLE `registerquestion` (
  `regquestionid` int(11) NOT NULL,
  `regquestionanswer` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `regquestioncontent` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `regquestionname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`regquestionid`),
  UNIQUE KEY `regquestionid` (`regquestionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of registerquestion
-- ----------------------------
INSERT INTO `registerquestion` VALUES ('0', 'fool', '你是谁(fool)', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '说明',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'user', '登录用户');
INSERT INTO `role` VALUES ('2', 'advanceduser', '付费用户');
INSERT INTO `role` VALUES ('3', 'operator', '业务操作员');
INSERT INTO `role` VALUES ('4', 'admin', '管理员');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FKBD40D538B86D700D` (`role_id`),
  KEY `FKBD40D5381B5EAB2D` (`permission_id`),
  CONSTRAINT `FKBD40D5381B5EAB2D` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  CONSTRAINT `FKBD40D538B86D700D` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('2', '1');
INSERT INTO `role_permission` VALUES ('3', '1');
INSERT INTO `role_permission` VALUES ('4', '1');

-- ----------------------------
-- Table structure for role_quiz
-- ----------------------------
DROP TABLE IF EXISTS `role_quiz`;
CREATE TABLE `role_quiz` (
  `role_id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id` (`role_id`),
  UNIQUE KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role_quiz
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `school_id` int(8) NOT NULL AUTO_INCREMENT,
  `conuntry` varchar(50) CHARACTER SET utf8 NOT NULL,
  `location` varchar(20) CHARACTER SET utf8 NOT NULL,
  `school_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `preset` int(11) DEFAULT NULL COMMENT '是否为预设值',
  `real_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `total_person` int(11) DEFAULT '0',
  `total_score` int(11) DEFAULT '0',
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '', '', '????', '0', null, '0', '0');
INSERT INTO `school` VALUES ('2', '', '', '同济大学', '0', null, '1', '0');
INSERT INTO `school` VALUES ('3', '', '', '电子科大', '0', null, '0', '0');
INSERT INTO `school` VALUES ('4', '', '', '电子科技大学', '0', null, '1', '0');
INSERT INTO `school` VALUES ('5', '', '', '复旦大学', '0', null, '2', '0');
INSERT INTO `school` VALUES ('6', '', '', 'tongji', '0', null, '1', '0');
INSERT INTO `school` VALUES ('7', '', '', '同济', '0', null, '1', '0');
INSERT INTO `school` VALUES ('8', '', '', 'xiao0121', '0', null, '1', '0');
INSERT INTO `school` VALUES ('9', '', '', '统计大学', '0', null, '1', '0');
INSERT INTO `school` VALUES ('10', '', '', 'a', '0', null, '1', '0');
INSERT INTO `school` VALUES ('12', '', '', 'FD', '0', null, '1', '0');
INSERT INTO `school` VALUES ('13', '', '', '1', '0', null, '2', '0');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `tag_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_id` (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`),
  KEY `FK1BF9ACC71388D` (`question_id`),
  CONSTRAINT `FK1BF9ACC71388D` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('53', '113', 'service');
INSERT INTO `tag` VALUES ('54', '110', 'bind');
INSERT INTO `tag` VALUES ('55', '115', 'control');
INSERT INTO `tag` VALUES ('56', '112', 'filter');
INSERT INTO `tag` VALUES ('57', '114', 'mvc');
INSERT INTO `tag` VALUES ('58', '115', 'communication');
INSERT INTO `tag` VALUES ('59', '117', '绑定');
INSERT INTO `tag` VALUES ('60', '116', 'apply');
INSERT INTO `tag` VALUES ('61', '118', 'http');
INSERT INTO `tag` VALUES ('62', '118', '异步');
INSERT INTO `tag` VALUES ('63', '124', '指令');
INSERT INTO `tag` VALUES ('64', '127', '服务');
INSERT INTO `tag` VALUES ('65', null, '基础');
INSERT INTO `tag` VALUES ('66', null, '树');
INSERT INTO `tag` VALUES ('67', null, '排序');
INSERT INTO `tag` VALUES ('68', null, '哈夫曼');
INSERT INTO `tag` VALUES ('69', null, '链表');
INSERT INTO `tag` VALUES ('70', null, '编译');
INSERT INTO `tag` VALUES ('71', null, '程序');
INSERT INTO `tag` VALUES ('72', null, '设计模式');
INSERT INTO `tag` VALUES ('73', null, '指针');
INSERT INTO `tag` VALUES ('74', null, '概率');
INSERT INTO `tag` VALUES ('75', null, '死锁');
INSERT INTO `tag` VALUES ('76', null, 'IP');
INSERT INTO `tag` VALUES ('77', null, 'sql');
INSERT INTO `tag` VALUES ('78', null, '磁盘');
INSERT INTO `tag` VALUES ('79', null, 'ip');
INSERT INTO `tag` VALUES ('80', null, '范式');
INSERT INTO `tag` VALUES ('81', null, '操作系统');
INSERT INTO `tag` VALUES ('82', null, '哈希');
INSERT INTO `tag` VALUES ('83', null, 'javascript');
INSERT INTO `tag` VALUES ('84', null, 'js');
INSERT INTO `tag` VALUES ('85', null, 'unix');
INSERT INTO `tag` VALUES ('86', null, '图');
INSERT INTO `tag` VALUES ('87', null, '文件');
INSERT INTO `tag` VALUES ('88', null, '数据结构');
INSERT INTO `tag` VALUES ('89', null, '栈');
INSERT INTO `tag` VALUES ('90', null, '防火墙');
INSERT INTO `tag` VALUES ('91', null, '测试');
INSERT INTO `tag` VALUES ('92', null, '线程');
INSERT INTO `tag` VALUES ('93', null, '同步');
INSERT INTO `tag` VALUES ('95', null, '微软');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `real_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `salt` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user_name` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '0', 'solevial@sohu.com', '123456', '', '0', 'solevial@sohu.com', '0', '0', null);
INSERT INTO `user` VALUES ('2', '0', 'operator@uunemo.com', 'operator', ' ', '0', 'operator@uunemo.com', '0', '0', null);
INSERT INTO `user` VALUES ('3', null, '693605668@qq.com', 'fw123456', '', '2', '693605668@qq.com', '0', '0', null);
INSERT INTO `user` VALUES ('4', null, 'test@fudan.com', 'fw123456', '', '5', 'test@fudan.com', '0', '0', null);
INSERT INTO `user` VALUES ('5', null, 'test1@fudan.com', 'fw123456', '', '5', 'test1@fudan.com', '0', '0', null);
INSERT INTO `user` VALUES ('6', null, 'cue_fly@163.com', '5412qqly00', '', '4', 'cue_fly@163.com', '0', '0', null);
INSERT INTO `user` VALUES ('7', null, '122077550@qq.com', '3141592654Fluxy', '', '6', '122077550@qq.com', '0', '0', null);
INSERT INTO `user` VALUES ('8', null, '524510356@qq.com', 'admin1234', '', '7', '524510356@qq.com', '0', '0', null);
INSERT INTO `user` VALUES ('9', null, '1220384915@qq.com', 'xiao0121', '', '8', '1220384915@qq.com', '0', '0', null);
INSERT INTO `user` VALUES ('10', null, '369749427@qq.com', 'tutuxuan', '', '9', '369749427@qq.com', '0', '0', null);
INSERT INTO `user` VALUES ('11', null, 'da@d.com', '123456', '', '10', 'da@d.com', '0', '0', null);
INSERT INTO `user` VALUES ('12', null, 'ma@m.com', '439883253adba6e404e18ab4c63f18ab', '', '12', 'ma@m.com', '0', '0', '9061f3f96359b72cd3701099f0f049c4');
INSERT INTO `user` VALUES ('13', null, 'q@q.com', '10908948fa038d884ee70f92edd8e943', '', '13', 'q@q.com', '0', '0', '6ce4b3d5bd7f3b8cc6558ba5bcf5cab6');
INSERT INTO `user` VALUES ('14', null, 'a@a.com', '35f9d26230d5cfd80c645a92c1106b3f', '', '13', '', '0', '0', '5994253aa08d65686c14ca4e0c752ff0');

-- ----------------------------
-- Table structure for userquizscore
-- ----------------------------
DROP TABLE IF EXISTS `userquizscore`;
CREATE TABLE `userquizscore` (
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of userquizscore
-- ----------------------------

-- ----------------------------
-- Table structure for user_career
-- ----------------------------
DROP TABLE IF EXISTS `user_career`;
CREATE TABLE `user_career` (
  `user_id` int(11) NOT NULL,
  `honor_id` int(11) NOT NULL,
  `career_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`career_id`),
  KEY `FKDAB54E7217E17A4D` (`career_id`),
  KEY `FKDAB54E725D9833ED` (`user_id`),
  KEY `FKDAB54E7249E709C7` (`honor_id`),
  CONSTRAINT `FKDAB54E7217E17A4D` FOREIGN KEY (`career_id`) REFERENCES `career` (`career_id`),
  CONSTRAINT `FKDAB54E7249E709C7` FOREIGN KEY (`honor_id`) REFERENCES `honor` (`honor_id`),
  CONSTRAINT `FKDAB54E725D9833ED` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_career
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK143BF46AB86D700D` (`role_id`),
  KEY `FK143BF46A5D9833ED` (`user_id`),
  CONSTRAINT `FK143BF46A5D9833ED` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK143BF46AB86D700D` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('3', '1');
INSERT INTO `user_role` VALUES ('4', '1');
INSERT INTO `user_role` VALUES ('5', '1');
INSERT INTO `user_role` VALUES ('6', '1');
INSERT INTO `user_role` VALUES ('7', '1');
INSERT INTO `user_role` VALUES ('8', '1');
INSERT INTO `user_role` VALUES ('9', '1');
INSERT INTO `user_role` VALUES ('10', '1');
INSERT INTO `user_role` VALUES ('11', '1');
INSERT INTO `user_role` VALUES ('12', '1');
INSERT INTO `user_role` VALUES ('13', '1');
INSERT INTO `user_role` VALUES ('14', '1');
INSERT INTO `user_role` VALUES ('2', '3');
