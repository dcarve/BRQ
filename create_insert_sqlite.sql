
DROP TABLE IF EXISTS pais;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS projeto;
DROP TABLE IF EXISTS projeto_detalhe;


CREATE TABLE pais (
id integer primary key,
nome varchar(50) not null
);


CREATE TABLE cliente (
id integer primary key,
nome varchar(50) not null,
pais_id integer
);


CREATE TABLE projeto (
id integer primary key,
nome varchar(50) not null,
cliente_id integer,
pais_id integer
);


CREATE TABLE projeto_detalhe (
id integer primary key,
descricao varchar(150) not null,
orcamento float,
completo float,
aceito tinyint,
projeto_id integer
);


insert into cliente
values
(1, 'Company A', 5),
(2, 'Company B', 3),
(3, 'Company C', 2),
(4, 'Company D', 2),
(5, 'Company E', 4),
(6, 'Company F', 1),
(7, 'Company G', 1),
(8, 'Company H', 5),
(9, 'Company I', null);


insert into pais
values
(1, 'USA'),
(2, 'Brazil'),
(3, 'Germany'),
(4, 'Mexico'),
(5, 'South Korea');

insert into projeto
values
(1, 'Project A', 2, 3),
(2, 'Project B', 2, 3),
(3, 'Project C', 3, 2),
(4, 'Project D', 6, 1),
(5, 'Project E', 5, 4),
(6, 'Project F', 5, 4),
(7, 'Project G', 1, 5),
(8, 'Project H', 1, 5),
(9, 'Project I', 8, 5),
(10, 'Project J', 7, 1),
(11, 'Project K', 7, 1),
(12, 'Project L', 7, 1),
(13, 'Project M', 4, 2),
(14, 'Project N', 6, 1),
(15, 'Project O', 3, 2),
(16, 'Project P', 15, 2);


insert into projeto_detalhe
values
(1,'tarefa 1',37858.89,1.00,1,1),
(2,'tarefa 2',61574.86,0.57,0,1),
(3,'tarefa 3',71360.46,1.00,0,1),
(4,'tarefa 4',3411.44,0.95,1,1),
(5,'tarefa 5',90571.81,0.60,0,1),
(6,'tarefa 6',15560.88,1.00,0,1),
(7,'tarefa 7',95900.23,1.00,1,1),
(8,'tarefa 8',38667.29,0.06,1,1),
(9,'tarefa 9',19093.01,1.00,1,1),
(10,'tarefa 10',77599.29,1.00,1,1),
(11,'tarefa 11',31661.41,1.00,0,1),
(12,'tarefa 12',81300.65,1.00,1,1),
(13,'tarefa 13',78969.90,0.13,1,1),
(14,'tarefa 1',75785.56,1.00,1,2),
(15,'tarefa 2',97657.15,0.08,0,2),
(16,'tarefa 3',29581.34,0.96,1,2),
(17,'tarefa 4',59979.10,1.00,1,2),
(18,'tarefa 5',66967.58,1.00,1,2),
(19,'tarefa 6',49788.81,1.00,1,2),
(20,'tarefa 7',82631.66,0.00,0,2),
(21,'tarefa 8',59855.00,0.52,0,2),
(22,'tarefa 9',74482.39,0.00,0,2),
(23,'tarefa 10',6050.48,1.00,1,2),
(24,'tarefa 11',95371.97,1.00,1,2),
(25,'tarefa 12',68909.22,1.00,0,2),
(26,'tarefa 13',86024.26,0.65,1,2),
(27,'tarefa 14',85222.77,1.00,1,2),
(28,'tarefa 15',31666.65,1.00,0,2),
(29,'tarefa 16',33675.64,0.53,1,2),
(30,'tarefa 17',33308.00,1.00,0,2),
(31,'tarefa 18',13472.67,0.78,1,2),
(32,'tarefa 19',24917.74,1.00,1,2),
(33,'tarefa 20',16233.97,0.42,1,2),
(34,'tarefa 21',38204.13,1.00,0,2),
(35,'tarefa 22',98249.20,1.00,0,2),
(36,'tarefa 23',30140.28,1.00,0,2),
(37,'tarefa 24',33272.18,1.00,1,2),
(38,'tarefa 1',97192.53,0.48,0,3),
(39,'tarefa 2',71792.38,0.06,0,3),
(40,'tarefa 3',10487.98,0.56,0,3),
(41,'tarefa 4',9900.73,0.40,1,3),
(42,'tarefa 5',77997.43,0.29,1,3),
(43,'tarefa 6',32613.56,1.00,0,3),
(44,'tarefa 7',54114.16,1.00,1,3),
(45,'tarefa 8',55276.46,0.89,1,3),
(46,'tarefa 9',32874.50,1.00,0,3),
(47,'tarefa 10',20940.06,0.05,1,3),
(48,'tarefa 11',90072.79,1.00,0,3),
(49,'tarefa 12',31933.47,1.00,0,3),
(50,'tarefa 13',32535.58,0.01,0,3),
(51,'tarefa 14',67461.55,1.00,1,3),
(52,'tarefa 15',57775.76,1.00,0,3),
(53,'tarefa 16',34676.80,1.00,1,3),
(54,'tarefa 17',28624.50,0.79,1,3),
(55,'tarefa 18',62209.52,0.52,0,3),
(56,'tarefa 19',9749.65,0.29,0,3),
(57,'tarefa 20',95936.16,0.12,1,3),
(58,'tarefa 21',14073.89,1.00,0,3),
(59,'tarefa 22',35884.13,1.00,1,3),
(60,'tarefa 23',73944.17,1.00,1,3),
(61,'tarefa 24',8614.70,0.51,0,3),
(62,'tarefa 25',36552.16,0.70,0,3),
(63,'tarefa 26',15740.91,1.00,1,3),
(64,'tarefa 27',68544.00,1.00,1,3),
(65,'tarefa 28',27393.30,1.00,1,3),
(66,'tarefa 29',49484.72,1.00,0,3),
(67,'tarefa 30',46591.56,0.62,0,3),
(68,'tarefa 31',71137.35,1.00,0,3),
(69,'tarefa 32',50400.10,0.39,1,3),
(70,'tarefa 33',62016.22,0.00,1,3),
(71,'tarefa 34',48650.88,0.52,0,3),
(72,'tarefa 35',91481.01,0.15,1,3),
(73,'tarefa 36',96060.93,1.00,1,3),
(74,'tarefa 37',75276.82,1.00,1,3),
(75,'tarefa 38',68291.09,1.00,1,3),
(76,'tarefa 39',57882.88,1.00,0,3),
(77,'tarefa 40',27985.30,1.00,1,3),
(78,'tarefa 41',44785.32,1.00,1,3),
(79,'tarefa 42',36112.15,0.00,1,3),
(80,'tarefa 43',59004.57,1.00,1,3),
(81,'tarefa 44',9518.04,0.96,1,3),
(82,'tarefa 45',54489.16,0.55,0,3),
(83,'tarefa 46',9578.67,1.00,1,3),
(84,'tarefa 47',91107.33,0.33,1,3),
(85,'tarefa 48',67126.45,0.98,1,3),
(86,'tarefa 49',29707.69,1.00,1,3),
(87,'tarefa 50',23983.07,1.00,0,3),
(88,'tarefa 51',60171.53,0.90,0,3),
(89,'tarefa 52',13676.42,1.00,1,3),
(90,'tarefa 53',62471.05,0.62,1,3),
(91,'tarefa 54',33492.75,1.00,1,3),
(92,'tarefa 55',61979.58,1.00,1,3),
(93,'tarefa 56',42252.97,1.00,1,3),
(94,'tarefa 57',96209.87,0.47,1,3),
(95,'tarefa 58',74992.02,1.00,1,3),
(96,'tarefa 59',88644.32,0.00,0,3),
(97,'tarefa 60',31029.68,1.00,1,3),
(98,'tarefa 61',41712.33,1.00,1,3),
(99,'tarefa 62',276.51,1.00,1,3),
(100,'tarefa 63',60864.96,1.00,1,3),
(101,'tarefa 64',38644.71,1.00,0,3),
(102,'tarefa 65',4994.58,1.00,1,3),
(103,'tarefa 66',10690.93,1.00,1,3),
(104,'tarefa 67',5213.44,0.64,0,3),
(105,'tarefa 68',86684.79,1.00,0,3),
(106,'tarefa 69',22744.96,1.00,1,3),
(107,'tarefa 70',80815.02,0.33,1,3),
(108,'tarefa 71',81130.76,1.00,1,3),
(109,'tarefa 72',41686.63,0.00,0,3),
(110,'tarefa 73',61265.88,1.00,0,3),
(111,'tarefa 74',98360.41,1.00,1,3),
(112,'tarefa 75',29785.38,1.00,1,3),
(113,'tarefa 76',33081.02,0.00,1,3),
(114,'tarefa 77',8079.41,1.00,0,3),
(115,'tarefa 78',62716.65,0.00,0,3),
(116,'tarefa 79',71378.80,0.71,0,3),
(117,'tarefa 80',59160.47,1.00,1,3),
(118,'tarefa 81',71263.22,0.47,1,3),
(119,'tarefa 82',55127.35,1.00,1,3),
(120,'tarefa 83',58010.30,1.00,0,3),
(121,'tarefa 84',77441.27,1.00,1,3),
(122,'tarefa 85',77213.47,1.00,0,3),
(123,'tarefa 86',52241.77,0.00,0,3),
(124,'tarefa 87',92770.11,1.00,1,3),
(125,'tarefa 88',40316.31,1.00,1,3),
(126,'tarefa 89',97404.77,0.20,0,3),
(127,'tarefa 90',83124.87,0.60,0,3),
(128,'tarefa 91',41915.08,1.00,1,3),
(129,'tarefa 92',57946.00,1.00,1,3),
(130,'tarefa 93',33790.71,1.00,0,3),
(131,'tarefa 94',51537.09,1.00,1,3),
(132,'tarefa 95',43872.37,0.56,1,3),
(133,'tarefa 96',15449.18,1.00,0,3),
(134,'tarefa 97',35884.93,1.00,1,3),
(135,'tarefa 98',17365.89,1.00,1,3),
(136,'tarefa 99',77787.91,1.00,0,3),
(137,'tarefa 100',41778.27,1.00,1,3),
(138,'tarefa 101',91083.97,0.75,0,3),
(139,'tarefa 102',478.26,0.52,1,3),
(140,'tarefa 103',73596.24,0.59,1,3),
(141,'tarefa 104',83977.58,0.32,0,3),
(142,'tarefa 105',5041.50,1.00,1,3),
(143,'tarefa 106',43682.10,0.82,1,3),
(144,'tarefa 107',3379.33,0.72,1,3),
(145,'tarefa 108',60669.30,1.00,1,3),
(146,'tarefa 109',2020.04,0.32,0,3),
(147,'tarefa 110',10.80,0.96,1,3),
(148,'tarefa 111',25558.25,1.00,1,3),
(149,'tarefa 112',86200.58,1.00,1,3),
(150,'tarefa 113',62963.67,0.26,0,3),
(151,'tarefa 114',62549.86,1.00,1,3),
(152,'tarefa 115',79269.61,1.00,1,3),
(153,'tarefa 116',984.38,0.47,1,3),
(154,'tarefa 117',93749.81,1.00,0,3),
(155,'tarefa 118',10897.51,1.00,0,3),
(156,'tarefa 119',77030.55,0.16,0,3),
(157,'tarefa 120',77410.65,0.41,1,3),
(158,'tarefa 121',48293.80,0.06,0,3),
(159,'tarefa 122',99203.86,1.00,0,3),
(160,'tarefa 123',64716.28,0.32,1,3),
(161,'tarefa 124',50.39,1.00,1,3),
(162,'tarefa 125',68157.57,1.00,1,3),
(163,'tarefa 126',9157.77,1.00,1,3),
(164,'tarefa 127',64033.90,1.00,1,3),
(165,'tarefa 128',83483.89,1.00,1,3),
(166,'tarefa 129',20971.52,0.10,1,3),
(167,'tarefa 130',54078.95,1.00,0,3),
(168,'tarefa 131',79322.83,1.00,0,3),
(169,'tarefa 132',77040.23,1.00,0,3),
(170,'tarefa 133',32039.82,0.45,1,3),
(171,'tarefa 134',18059.66,1.00,1,3),
(172,'tarefa 135',304.76,1.00,1,3),
(173,'tarefa 136',1961.44,1.00,0,3),
(174,'tarefa 137',66216.83,0.26,0,3),
(175,'tarefa 138',97989.62,1.00,1,3),
(176,'tarefa 139',72045.47,1.00,0,3),
(177,'tarefa 140',3868.89,1.00,0,3),
(178,'tarefa 141',21263.24,0.91,0,3),
(179,'tarefa 1',50.76,0.27,1,4),
(180,'tarefa 2',407.67,0.93,0,4),
(181,'tarefa 3',210.30,1.00,0,4),
(182,'tarefa 4',189.39,0.25,1,4),
(183,'tarefa 5',20.41,1.00,1,4),
(184,'tarefa 6',32.73,0.60,0,4),
(185,'tarefa 7',65.98,0.00,0,4),
(186,'tarefa 8',5.89,0.00,1,4),
(187,'tarefa 1',42035.17,1.00,1,5),
(188,'tarefa 2',26054.19,0.45,1,5),
(189,'tarefa 3',841.18,0.58,0,5),
(190,'tarefa 4',44868.96,0.74,1,5),
(191,'tarefa 5',67882.33,1.00,0,5),
(192,'tarefa 6',74856.46,1.00,1,5),
(193,'tarefa 7',8224.92,1.00,1,5),
(194,'tarefa 8',17844.28,1.00,0,5),
(195,'tarefa 9',38594.86,1.00,1,5),
(196,'tarefa 10',18749.14,1.00,1,5),
(197,'tarefa 11',86482.27,0.51,0,5),
(198,'tarefa 12',68704.14,1.00,1,5),
(199,'tarefa 13',86760.30,0.92,1,5),
(200,'tarefa 14',77414.23,0.00,1,5),
(201,'tarefa 15',26816.60,1.00,1,5),
(202,'tarefa 16',1846.79,1.00,1,5),
(203,'tarefa 17',55276.10,1.00,1,5),
(204,'tarefa 18',83396.12,1.00,1,5),
(205,'tarefa 19',631.22,0.08,1,5),
(206,'tarefa 20',17770.40,0.70,1,5),
(207,'tarefa 21',48631.32,1.00,1,5),
(208,'tarefa 22',58487.26,0.35,1,5),
(209,'tarefa 1',47141.26,1.00,1,6),
(210,'tarefa 2',801.69,0.48,1,6),
(211,'tarefa 3',17969.81,1.00,0,6),
(212,'tarefa 4',513.73,1.00,1,6),
(213,'tarefa 5',68485.77,0.00,0,6),
(214,'tarefa 6',5891.01,1.00,1,6),
(215,'tarefa 1',39063.72,1.00,0,7),
(216,'tarefa 2',15261.90,1.00,1,7),
(217,'tarefa 3',23696.15,0.24,1,7),
(218,'tarefa 4',73100.38,1.00,0,7),
(219,'tarefa 5',72296.25,0.20,1,7),
(220,'tarefa 6',80792.48,1.00,1,7),
(221,'tarefa 7',0.00,0.13,0,7),
(222,'tarefa 8',54170.09,0.38,1,7),
(223,'tarefa 9',90254.97,0.26,1,7),
(224,'tarefa 10',75540.06,0.12,1,7),
(225,'tarefa 11',42122.23,1.00,1,7),
(226,'tarefa 1',25657.66,1.00,1,8),
(227,'tarefa 2',62834.89,1.00,1,8),
(228,'tarefa 3',40820.41,0.13,1,8),
(229,'tarefa 4',34504.78,1.00,1,8),
(230,'tarefa 5',18042.42,1.00,1,8),
(231,'tarefa 6',99160.00,0.75,0,8),
(232,'tarefa 7',82439.01,0.10,1,8),
(233,'tarefa 8',32033.91,0.02,1,8),
(234,'tarefa 9',18468.54,0.46,1,8),
(235,'tarefa 10',82847.57,0.23,1,8),
(236,'tarefa 11',68511.22,0.67,1,8),
(237,'tarefa 12',36583.18,0.48,1,8),
(238,'tarefa 13',0.00,1.00,0,8),
(239,'tarefa 14',83909.99,1.00,0,8),
(240,'tarefa 15',39611.11,1.00,0,8),
(241,'tarefa 16',78997.93,0.33,0,8),
(242,'tarefa 17',83228.47,0.82,0,8),
(243,'tarefa 18',96979.94,1.00,1,8),
(244,'tarefa 19',52237.23,1.00,1,8),
(245,'tarefa 20',58017.73,1.00,0,8),
(246,'tarefa 21',11855.93,0.46,0,8),
(247,'tarefa 22',67626.75,1.00,0,8),
(248,'tarefa 23',58072.11,0.00,1,8),
(249,'tarefa 24',52647.13,1.00,1,8),
(250,'tarefa 1',21781.96,0.92,0,9),
(251,'tarefa 2',15378.90,0.00,0,9),
(252,'tarefa 3',42727.46,1.00,0,9),
(253,'tarefa 4',26602.97,0.85,1,9),
(254,'tarefa 5',87212.63,0.42,0,9),
(255,'tarefa 6',40806.32,1.00,1,9),
(256,'tarefa 7',46038.67,0.84,1,9),
(257,'tarefa 8',65183.50,0.92,1,9),
(258,'tarefa 9',0.00,1.00,0,9),
(259,'tarefa 10',0.00,1.00,1,9),
(260,'tarefa 11',42605.67,0.29,0,9),
(261,'tarefa 12',52374.83,1.00,1,9),
(262,'tarefa 13',16663.44,1.00,0,9),
(263,'tarefa 14',19253.48,0.00,0,9),
(264,'tarefa 15',68391.16,0.68,1,9),
(265,'tarefa 1',43781.81,1.00,0,10),
(266,'tarefa 2',44420.50,0.20,1,10),
(267,'tarefa 3',9793.04,1.00,0,10),
(268,'tarefa 4',12239.19,1.00,0,10),
(269,'tarefa 5',94165.49,0.60,1,10),
(270,'tarefa 6',79511.85,1.00,0,10),
(271,'tarefa 7',80817.00,0.84,1,10),
(272,'tarefa 8',13817.04,1.00,1,10),
(273,'tarefa 9',42142.64,0.61,0,10),
(274,'tarefa 10',32053.80,0.79,1,10),
(275,'tarefa 11',45370.00,1.00,0,10),
(276,'tarefa 12',75480.39,0.62,0,10),
(277,'tarefa 13',13625.62,1.00,1,10),
(278,'tarefa 14',53402.26,0.63,1,10),
(279,'tarefa 15',14304.11,0.00,1,10),
(280,'tarefa 16',41795.10,0.00,0,10),
(281,'tarefa 17',63850.95,0.66,0,10),
(282,'tarefa 18',58480.36,1.00,1,10),
(283,'tarefa 19',98249.24,1.00,1,10),
(284,'tarefa 20',62624.40,0.86,1,10),
(285,'tarefa 21',91589.48,1.00,0,10),
(286,'tarefa 22',97336.40,0.45,1,10),
(287,'tarefa 23',72380.81,1.00,1,10),
(288,'tarefa 24',36937.74,1.00,1,10),
(289,'tarefa 25',5577.85,0.20,1,10),
(290,'tarefa 26',46703.68,0.89,1,10),
(291,'tarefa 27',9999.49,1.00,1,10),
(292,'tarefa 28',86931.54,0.21,1,10),
(293,'tarefa 29',96669.51,0.00,0,10),
(294,'tarefa 30',65404.32,1.00,0,10),
(295,'tarefa 31',17595.84,1.00,0,10),
(296,'tarefa 32',445.96,0.00,1,10),
(297,'tarefa 33',61574.33,1.00,1,10),
(298,'tarefa 34',43111.84,0.87,1,10),
(299,'tarefa 35',16770.41,1.00,1,10),
(300,'tarefa 36',77438.63,1.00,1,10),
(301,'tarefa 37',85981.90,0.00,1,10),
(302,'tarefa 38',33945.82,0.40,0,10),
(303,'tarefa 39',97349.98,0.98,0,10),
(304,'tarefa 40',31406.03,1.00,1,10),
(305,'tarefa 41',88432.42,0.46,1,10),
(306,'tarefa 42',36211.83,0.67,1,10),
(307,'tarefa 43',60431.39,0.02,1,10),
(308,'tarefa 44',14765.81,0.17,0,10),
(309,'tarefa 45',7662.12,1.00,0,10),
(310,'tarefa 46',0.00,0.85,0,10),
(311,'tarefa 1',31292.94,1.00,1,11),
(312,'tarefa 2',51608.92,1.00,0,11),
(313,'tarefa 3',8348.14,1.00,1,11),
(314,'tarefa 4',36212.79,1.00,0,11),
(315,'tarefa 5',52333.51,0.12,1,11),
(316,'tarefa 6',87492.74,1.00,1,11),
(317,'tarefa 7',95834.42,1.00,1,11),
(318,'tarefa 8',15810.83,1.00,1,11),
(319,'tarefa 9',39002.09,1.00,0,11),
(320,'tarefa 10',24220.17,0.91,0,11),
(321,'tarefa 11',19051.98,1.00,1,11),
(322,'tarefa 12',65565.97,1.00,1,11),
(323,'tarefa 13',84313.16,1.00,1,11),
(324,'tarefa 14',41633.25,0.00,1,11),
(325,'tarefa 15',89094.66,1.00,1,11),
(326,'tarefa 16',38237.68,1.00,0,11),
(327,'tarefa 17',40919.88,0.76,0,11),
(328,'tarefa 18',74285.63,1.00,1,11),
(329,'tarefa 19',16225.93,1.00,0,11),
(330,'tarefa 20',5408.03,0.49,1,11),
(331,'tarefa 21',18468.09,0.16,1,11),
(332,'tarefa 22',85986.93,1.00,1,11),
(333,'tarefa 23',70709.91,1.00,1,11),
(334,'tarefa 1',68341.07,0.30,0,12),
(335,'tarefa 2',52864.03,0.47,1,12),
(336,'tarefa 3',8372.96,0.31,1,12),
(337,'tarefa 4',64093.50,0.31,1,12),
(338,'tarefa 5',84953.75,0.00,1,12),
(339,'tarefa 6',70702.66,1.00,1,12),
(340,'tarefa 7',71588.55,0.15,1,12),
(341,'tarefa 8',70681.93,1.00,1,12),
(342,'tarefa 9',71078.79,1.00,1,12),
(343,'tarefa 10',521.40,1.00,1,12),
(344,'tarefa 11',34013.69,0.20,1,12),
(345,'tarefa 1',55042.30,1.00,0,13),
(346,'tarefa 2',34808.63,0.03,0,13),
(347,'tarefa 3',71422.93,0.73,0,13),
(348,'tarefa 4',44116.74,0.13,1,13),
(349,'tarefa 1',51024.22,0.20,0,14),
(350,'tarefa 2',72456.49,1.00,0,14),
(351,'tarefa 3',67184.57,0.00,0,14),
(352,'tarefa 4',47888.82,1.00,1,14),
(353,'tarefa 5',70038.65,0.00,1,14),
(354,'tarefa 6',64294.63,1.00,1,14),
(355,'tarefa 7',10376.13,0.90,1,14),
(356,'tarefa 8',94168.57,0.35,1,14),
(357,'tarefa 9',67244.53,0.27,1,14),
(358,'tarefa 10',61188.50,1.00,1,14),
(359,'tarefa 11',55288.81,0.17,0,14),
(360,'tarefa 12',72438.42,0.67,1,14),
(361,'tarefa 13',60160.50,0.38,1,14),
(362,'tarefa 14',90.36,0.58,1,14),
(363,'tarefa 15',72061.43,0.00,0,14),
(364,'tarefa 16',48579.84,0.00,1,14),
(365,'tarefa 17',88811.59,0.00,1,14),
(366,'tarefa 18',35670.27,1.00,1,14),
(367,'tarefa 19',76608.28,1.00,0,14),
(368,'tarefa 20',6509.02,0.00,1,14),
(369,'tarefa 1',34298.32,0.88,0,15),
(370,'tarefa 2',98822.91,0.87,0,15),
(371,'tarefa 3',77794.75,0.69,0,15),
(372,'tarefa 4',40406.03,1.00,1,15),
(373,'tarefa 5',70387.94,0.00,1,15),
(374,'tarefa 6',87052.08,1.00,1,15),
(375,'tarefa 7',40536.75,1.00,1,15),
(376,'tarefa 8',25987.17,1.00,1,15),
(377,'tarefa 9',40306.31,1.00,0,15),
(378,'tarefa 10',63931.04,1.00,1,15),
(379,'tarefa 11',48901.78,1.00,1,15),
(380,'tarefa 12',95868.28,1.00,0,15),
(381,'tarefa 13',34128.23,0.00,1,15),
(382,'tarefa 14',34316.49,1.00,0,15),
(383,'tarefa 15',88884.38,1.00,0,15),
(384,'tarefa 16',99281.15,0.94,0,15),
(385,'tarefa 17',7363.67,0.43,1,15),
(386,'tarefa 18',61488.11,0.00,1,15),
(387,'tarefa 19',87.03,1.00,0,15),
(388,'tarefa 20',87030.65,0.00,1,15),
(389,'tarefa 21',24196.17,1.00,1,15),
(390,'tarefa 22',40213.03,1.00,0,15),
(391,'tarefa 23',43960.60,0.89,1,15),
(392,'tarefa 24',35289.21,0.47,1,15),
(393,'tarefa 25',85318.74,1.00,1,15),
(394,'tarefa 26',9576.00,1.00,1,15),
(395,'tarefa 27',19937.87,0.00,1,15),
(396,'tarefa 28',84427.88,0.85,1,15),
(397,'tarefa 29',10382.69,1.00,0,15),
(398,'tarefa 30',62818.09,1.00,0,15),
(399,'tarefa 31',77406.33,1.00,1,15),
(400,'tarefa 32',41155.48,0.00,1,15),
(401,'tarefa 33',10177.09,1.00,1,15),
(402,'tarefa 34',79591.79,0.96,0,15),
(403,'tarefa 35',64164.92,1.00,0,15),
(404,'tarefa 36',62340.42,1.00,0,15),
(405,'tarefa 37',77132.22,0.16,1,15),
(406,'tarefa 38',41689.00,1.00,1,15),
(407,'tarefa 39',25998.38,0.00,1,15),
(408,'tarefa 40',42920.86,1.00,1,15),
(409,'tarefa 41',94647.86,0.43,1,15),
(410,'tarefa 42',76522.32,0.45,1,15),
(411,'tarefa 43',22628.05,1.00,0,15),
(412,'tarefa 44',33290.99,1.00,1,15),
(413,'tarefa 45',985.00,0.97,1,15),
(414,'tarefa 46',15724.13,0.00,1,15),
(415,'tarefa 47',12798.78,1.00,1,15),
(416,'tarefa 48',95391.24,1.00,1,15),
(417,'tarefa 49',41949.92,0.00,1,15),
(418,'tarefa 50',72251.11,0.14,0,15),
(419,'tarefa 51',5477.17,1.00,0,15),
(420,'tarefa 52',43480.15,1.00,0,15),
(421,'tarefa 53',85390.02,0.53,1,15),
(422,'tarefa 54',42908.87,1.00,0,15),
(423,'tarefa 55',47558.50,1.00,1,15),
(424,'tarefa 56',19937.21,0.00,0,15),
(425,'tarefa 57',32654.79,0.00,0,15),
(426,'tarefa 58',24102.84,1.00,1,15),
(427,'tarefa 59',38284.51,1.00,1,15),
(428,'tarefa 60',48231.98,0.40,1,15),
(429,'tarefa 61',18996.79,0.04,1,15),
(430,'tarefa 62',76558.34,1.00,1,15),
(431,'tarefa 63',54035.57,0.18,1,15),
(432,'tarefa 64',8746.10,0.00,1,15),
(433,'tarefa 65',90945.46,1.00,0,15),
(434,'tarefa 66',21515.46,0.51,1,15),
(435,'tarefa 67',37079.64,1.00,0,15),
(436,'tarefa 68',97916.80,0.00,1,15),
(437,'tarefa 69',17618.70,1.00,0,15),
(438,'tarefa 70',60871.09,0.24,1,15),
(439,'tarefa 71',25953.06,1.00,1,15),
(440,'tarefa 72',35853.83,1.00,0,15),
(441,'tarefa 73',11243.21,0.00,0,15),
(442,'tarefa 74',69130.99,1.00,1,15),
(443,'tarefa 75',14949.98,1.00,0,15),
(444,'tarefa 76',0.00,1.00,1,15),
(445,'tarefa 77',54112.77,0.15,0,15),
(446,'tarefa 78',7209.08,0.74,1,15),
(447,'tarefa 79',3008.05,1.00,1,15),
(448,'tarefa 80',2816.04,1.00,1,15),
(449,'tarefa 81',71648.21,0.95,1,15),
(450,'tarefa 82',500.00,1.00,0,15),
(451,'tarefa 2',500.00,0.00,1,16),
(452,'tarefa 3',500.00,0.00,1,16),
(453,'tarefa 4',500.00,0.00,1,16),
(454,'tarefa 5',500.00,0.00,1,16);
