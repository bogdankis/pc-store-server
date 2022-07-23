USE `pcstore-ecommerce`;

SET foreign_key_checks = 0;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` smallint unsigned NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--
-- Data for table `country`
--

INSERT INTO `country` VALUES 
(1,'BR','Brazil'),
(2,'AS','Australia'),
(3,'DE','Germany'),
(4,'US','United States'),
(5,'AU','Austria'), --
(6,'MX','Mexico');--


--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country` (`country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` VALUES 
(1,'Acre',1),
(2,'Alagoas',1),
(3,'Amapá',1),
(4,'Amazonas',1),
(5,'Bahia',1),
(6,'Ceará',1),
(7,'Distrito Federal',1),
(8,'Espírito Santo',1),
(9,'Goiás',1),
(10,'Maranhão',1),
(11,'Mato Grosso do Sul',1),
(12,'Mato Grosso',1),
(13,'Minas Gerais',1),
(14,'Paraná',1),
(15,'Paraíba',1),
(16,'Pará',1),
(17,'Pernambuco',1),
(18,'Piaui',1),
(19,'Rio de Janeiro',1),
(20,'Rio Grande do Norte',1),
(21,'Rio Grande do Sul',1),
(22,'Rondônia',1),
(23,'Roraima',1),
(24,'Santa Catarina',1),
(25,'Sergipe',1),
(26,'São Paulo',1),
(27,'Tocantins',1),
(28,'New South Wales',2),
(29,'Queensland',2),
(30,'Tasmania',2),
(31,'Victoria,',2),
(32,'Western Australia',2),
(33,'Baden-Württemberg',3),
(34,'Bavaria',3),
(35,'Berlin',3),
(36,'Brandenburg',3),
(37,'Bremen',3),
(38,'Hamburg',3),
(39,'Hesse',3),
(40,'Lower Saxony',3),
(41,'Mecklenburg-Vorpommern',3),
(42,'North Rhine-Westphalia',3),
(43,'Rhineland-Palatinate',3),
(44,'Saarland',3),
(45,'Saxony',3),
(46,'Saxony-Anhalt',3),
(47,'Schleswig-Holstein',3),
(48,'Thuringia',3),
(49,'Alabama',4),
(50,'Alaska',4),
(51,'Arizona',4),
(52,'Arkansas',4),
(53,'California',4),
(54,'Colorado',4),
(55,'Connecticut',4),
(56,'Delaware',4),
(57,'District Of Columbia',4),
(58,'Florida',4),
(59,'Georgia',4),
(60,'Hawaii',4),
(61,'Idaho',4),
(62,'Illinois',4),
(63,'Indiana',4),
(64,'Iowa',4),
(65,'Kansas',4),
(66,'Kentucky',4),
(67,'Louisiana',4),
(68,'Maine',4),
(69,'Maryland',4),
(70,'Massachusetts',4),
(71,'Michigan',4),
(72,'Minnesota',4),
(73,'Mississippi',4),
(74,'Missouri',4),
(75,'Montana',4),
(76,'Nebraska',4),
(77,'Nevada',4),
(78,'New Hampshire',4),
(79,'New Jersey',4),
(80,'New Mexico',4),
(81,'New York',4),
(82,'North Carolina',4),
(83,'North Dakota',4),
(84,'Ohio',4),
(85,'Oklahoma',4),
(86,'Oregon',4),
(87,'Pennsylvania',4),
(88,'Rhode Island',4),
(89,'South Carolina',4),
(90,'South Dakota',4),
(91,'Tennessee',4),
(92,'Texas',4),
(93,'Utah',4),
(94,'Vermont',4),
(95,'Virginia',4),
(96,'Washington',4),
(97,'West Virginia',4),
(98,'Wisconsin',4),
(99,'Wyoming',4),
(100,'Adıyaman',5),
(101,'Burgenland',5),
(102,'Carinthia',5),
(103,'Lower Austria',5),
(104,'Salzburg',5),
(105,'Styria',5),
(106,'Tyrol',5),
(107,'Upper Austria',5),
(108,'Vienna',5),
(109,'Vorarlberg',5),
(110,'Vorarlberg',6),
(111,'Aguascalientes',6),
(112,'Baja California',6),
(113,'Baja California Sur',6),
(114,'Campeche',6),
(115,'Chiapas',6),
(116,'Chihuahua',6),
(117,'Coahuila',6),
(118,'Colima',6),
(119,'Durango',6),
(120,'Guanajuato',6),
(121,'Guerrero',6),
(122,'Hidalgo',6),
(123,'Jalisco',6),
(124,'México',6),
(125,'Mexico City',6),
(126,'Michoacán',6),
(127,'Morelos',6),
(128,'Nayarit',6),
(129,'Nuevo León',6),
(130,'Oaxaca',6),
(131,'Puebla',6),
(132,'Querétaro',6),
(133,'Quintana Roo',6),
(134,'San Luis Potosí',6),
(135,'Sinaloa',6),
(136,'Sonora',6),
(137,'Tabasco',6),
(138,'Tamaulipas',6),
(139,'Tlaxcala',6),
(140,'Veracruz',6),
(141,'Yucatán',6),
(142,'Zacatecas',6);





SET foreign_key_checks = 1;