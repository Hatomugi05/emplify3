-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2018 a las 18:57:30
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bwirejobs_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_academic_qualification`
--

CREATE TABLE IF NOT EXISTS `tbl_academic_qualification` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  `transcript` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_alerts`
--

CREATE TABLE IF NOT EXISTS `tbl_alerts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Volcado de datos para la tabla `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '1123', 'You have been registered successfully', 'success'),
(2, '4568', 'Unknown error occurred while performing your request', 'danger'),
(3, '0927', 'Email address is already registered', 'warning'),
(4, '0346', 'Invalid email or password', 'danger'),
(5, '9837', 'Your profile have been updated successfully', 'success'),
(6, '9564', 'Password updated successfully', 'success'),
(9, '2305', 'Professional qualification was added successfully', 'success'),
(11, '0521', 'Qualification was deleted successfully', 'success'),
(13, '9367', 'language have been added', 'success'),
(14, '0591', 'Language was deleted successfully', 'success'),
(15, '8763', 'Language have been updated', 'success'),
(16, '6734', 'Professional qualification was updated', 'success'),
(17, '9843', 'Your job advertise have been posted successfully', 'success'),
(18, '1964', 'Training / Workshop have been added successfully', 'success'),
(20, '9210', 'working experience have been added', 'success'),
(22, '9215', 'working experience updated successfully', 'success'),
(24, '0593', 'working experience was deleted', 'success'),
(26, '9522', 'Training / workshop record have been deleted', 'success'),
(28, '2303', 'Academic qualification have been added successfully', 'success'),
(30, '1521', 'Academic qualification was deleted', 'success'),
(32, '3214', 'Academic qualification have been updated', 'success'),
(34, '2380', 'Referee was added successfully', 'success'),
(36, '7642', 'Referee information have been updated', 'success'),
(38, '0173', 'Job Ad have been deleted', 'success'),
(40, '0369', 'Job Ad has been updated successfully', 'success'),
(42, '2974', 'An error occurred while sending your message', 'danger'),
(43, '5634', 'Your message was sent successfully', 'success'),
(44, '3091', 'You have successfully changed your password', 'success'),
(45, '3591', 'An error occurred while updating your password', 'danger'),
(46, '2290', 'Your certificate size must be less or equal to <strong>1MB</strong>', 'warning'),
(47, '2490', 'Your transcript size must be less or equal to <strong>1MB</strong>', 'warning'),
(48, '5790', 'Training information was updated', 'success'),
(50, '3478', 'Your image size must be less or equal to <strong>1MB</strong>', 'warning'),
(51, '6789', 'Attachment was added successfully', 'success'),
(53, '6784', 'Attachment was deleted successfully', 'success'),
(55, '7764', 'Attachment was updated successfully', 'success'),
(57, '9517', 'Referee have been deleted', 'success');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Agricultura y Agronegocios\n'),
(2, 'Asistencia sanitaria y farmaceutica\n'),
(3, 'CEO y Gerencia General\n'),
(4, 'Comercios y servicios\n'),
(5, 'Comunidad y Social\n'),
(6, 'Contabilidad\n'),
(7, 'Creativo y Dise&#241;o'),
(8, 'Educacion y entrenamiento'),
(9, 'Estrategia y Consultoria'),
(10, 'Fabricacion'),
(11, 'Informatica y Telecomunicaciones'),
(12, 'Ingenieria y construccion'),
(13, 'Investigacion, Ciencia y Biotecnologia'),
(14, 'Legal\n'),
(15, 'Marketing, Medios y Marca\n'),
(16, 'Mineria y Recursos Naturales'),
(17, 'Proyectos y Administracion'),
(18, 'Recursos humanos y administracion'),
(19, 'Revision de cuentas'),
(20, 'Seguridad\n'),
(21, 'Servicios bancarios y financieros\n'),
(22, 'Transporte y Logistica'),
(23, 'Turismo y viajes\n'),
(24, 'Otros\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_countries`
--

CREATE TABLE IF NOT EXISTS `tbl_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=246 ;

--
-- Volcado de datos para la tabla `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People''s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People''s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_experience`
--

CREATE TABLE IF NOT EXISTS `tbl_experience` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `supervisor_phone` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duties` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_jobs`
--

CREATE TABLE IF NOT EXISTS `tbl_jobs` (
  `job_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `closing_date` varchar(255) NOT NULL,
  `enc_id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`enc_id`),
  UNIQUE KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_job_applications`
--

CREATE TABLE IF NOT EXISTS `tbl_job_applications` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_language`
--

CREATE TABLE IF NOT EXISTS `tbl_language` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `speak` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `writing` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_other_attachments`
--

CREATE TABLE IF NOT EXISTS `tbl_other_attachments` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `attachment` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_professional_qualification`
--

CREATE TABLE IF NOT EXISTS `tbl_professional_qualification` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_referees`
--

CREATE TABLE IF NOT EXISTS `tbl_referees` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(255) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_mail` varchar(255) NOT NULL,
  `ref_title` varchar(255) NOT NULL,
  `ref_phone` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tokens`
--

CREATE TABLE IF NOT EXISTS `tbl_tokens` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_training`
--

CREATE TABLE IF NOT EXISTS `tbl_training` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member_no` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `bdate` varchar(255) NOT NULL DEFAULT '-',
  `bmonth` varchar(255) NOT NULL DEFAULT '-',
  `byear` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL DEFAULT '-',
  `title` varchar(255) NOT NULL DEFAULT 'Your professional',
  `city` varchar(255) NOT NULL DEFAULT '-',
  `street` varchar(255) NOT NULL DEFAULT '-',
  `zip` varchar(255) NOT NULL DEFAULT '-',
  `country` varchar(255) NOT NULL DEFAULT '-',
  `phone` varchar(255) NOT NULL DEFAULT '-',
  `about` longtext,
  `avatar` longblob,
  `services` longtext,
  `expertise` longtext,
  `people` varchar(255) NOT NULL DEFAULT '-',
  `last_login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  PRIMARY KEY (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`) VALUES
('Platea21', '', '-', '-', '-', '-', 'platea21@gmail.com', '-', 'Web', 'Tacna', 'Tacna', 'Tacna 01', 'Peru', '+51948445199', '', 0x89504e470d0a1a0a0000000d49484452000002bf000002c008060000009a6d1afa00000a3769434350735247422049454336313936362d322e310000789c9d96775453d91687cfbd37bd5092108a94d06b685202480dbd48912e2a3109104ac090002236445470445191a6083228e080a34391b1228a850151b1eb041944d47170141b964964ad19dfbc79efcd9bdf1ff77e6b9fbdcfdd67ef7dd6ba0090fc8305c24c5809800ca15814e1e7c5888d8b676007010cf000036c00e070b3b34216f8460299027cd88c6c9913f817bdba0e20f9fb2ad33f8cc100ff9f94b95922310050988ce7f2f8d95c1917c9383d579c25b74fc998b6344dce304ace22598232569373f22c5b7cf699650f39f332843c19cb73cee265f0e4dc27e38d3912be8c91601917e708f8b932be26638374498640c66fe4b1197c4e36002892dc2ee67353646c2d63922832822de37900e048c95ff0d22f58cccf13cb0fc5cecc5a2e1224a78819265c53868d93138be1cfcf4de78bc5cc300e378d23e231d89919591ce1720066cffc5914796d19b2223bd8383938306d2d6dbe28d47f5dfc9b92f776965e847fee19441ff8c3f6577e990d00b0a665b5d9fa876d6915005deb0150bbfd87cd602f008ab2be750e7d711eba7c5e52c4e22c672babdcdc5c4b019f6b292fe8effa9f0e7f435f7ccf52beddefe56178f39338927431435e376e667aa644c4c8cee270f90ce69f87f81f07fe751e1611fc24be882f944544cba64c204c96b55bc813880599428640f89f9af80fc3fea4d9b99689daf811d0965802a5211a407e1e00282a1120097b642bd0ef7d0bc64703f9cd8bd199989dfbcf82fe7d57b84cfec816247f8e63474432b81251ceec9afc5a02342000454003ea401be80313c004b6c011b8000fe0030241288804716031e0821490014420171480b5a0189482ad6027a80675a0113483367018748163e03438072e81cb6004dc0152300e9e8029f00acc40108485c810155287742043c81cb28558901be403054311501c940825434248021540eba052a81caa86eaa166e85be828741aba000d43b7a0516812fa157a07233009a6c15ab0116c05b3604f38088e8417c1c9f032381f2e82b7c09570037c10ee844fc397e011580a3f81a7118010113aa28b301116c24642917824091121ab9012a4026940da901ea41fb98a4891a7c85b1406454531504c940bca1f1585e2a296a156a136a3aa5107509da83ed455d4286a0af5114d466ba2cdd1cee800742c3a199d8b2e4657a09bd01de8b3e811f438fa150683a1638c318e187f4c1c2615b302b319b31bd38e398519c68c61a6b158ac3ad61ceb8a0dc572b0626c31b60a7b107b127b053b8e7d8323e27470b6385f5c3c4e882bc455e05a702770577013b819bc12de10ef8c0fc5f3f0cbf165f8467c0f7e083f8e9f2128138c09ae8448422a612da192d046384bb84b78412412f5884ec470a280b88658493c443c4f1c25be255148662436298124216d21ed279d22dd22bd2093c946640f723c594cde426e269f21df27bf51a02a582a0428f014562bd428742a5c5178a688573454f4545cac98af58a178447148f1a9125ec94889adc4515aa554a37454e986d2b43255d9463954394379b3728bf205e547142cc588e243e1518a28fb286728635484aa4f6553b9d475d446ea59ea380d4333a605d05269a5b46f6883b429158a8a9d4ab44a9e4a8dca7115291da11bd103e8e9f432fa61fa75fa3b552d554f55beea26d536d52baaafd5e6a879a8f1d54ad4dad546d4dea933d47dd4d3d4b7a977a9dfd340699869846be46aecd138abf1740e6d8ecb1cee9c923987e7dcd68435cd3423345768eed31cd09cd6d2d6f2d3cad2aad23aa3f5549baeeda19daabd43fb84f6a40e55c74d47a0b343e7a4ce63860ac39391cea864f431a6743575fd7525baf5ba83ba337ac67a517a857aed7af7f409fa2cfd24fd1dfabdfa53063a0621060506ad06b70df1862cc314c35d86fd86af8d8c8d628c361875193d3256330e30ce376e35be6b423671375966d26072cd1463ca324d33dd6d7ad90c36b3374b31ab311b3287cd1dcc05e6bbcd872dd0164e16428b068b1b4c12d39399c36c658e5ad22d832d0b2dbb2c9f591958c55b6db3eab7fa686d6f9d6edd687dc7866213685368d363f3abad992dd7b6c6f6da5cf25cdfb9abe776cf7d6e676ec7b7db6377d39e6a1f62bfc1bed7fe8383a383c8a1cd61d2d1c031d1b1d6f1068bc60a636d669d77423b7939ad763ae6f4d6d9c159ec7cd8f91717a64b9a4b8bcba379c6f3f8f31ae78db9eab9725ceb5da56e0cb744b7bd6e52775d778e7b83fb030f7d0f9e4793c784a7a967aae741cf675ed65e22af0eafd76c67f64af6296fc4dbcfbbc47bd087e213e553ed73df57cf37d9b7d577cacfde6f85df297fb47f90ff36ff1b015a01dc80e680a940c7c095817d41a4a00541d5410f82cd8245c13d21704860c8f690bbf30de70be7778582d080d0eda1f7c28cc396857d1f8e090f0baf097f1861135110d1bf80ba60c9829605af22bd22cb22ef44994449a27aa315a313a29ba35fc778c794c74863ad6257c65e8ad38813c475c763e3a3e39be2a717fa2cdcb9703cc13ea138e1fa22e345798b2e2cd6589cbef8f812c5259c254712d18931892d89ef39a19c06cef4d280a5b54ba7b86cee2eee139e076f076f92efca2fe74f24b92695273d4a764dde9e3c99e29e5291f254c016540b9ea7faa7d6a5be4e0b4ddb9ff6293d26bd3d0397919871544811a609fb32b533f33287b3ccb38ab3a4cb9c97ed5c36250a12356543d98bb2bbc534d9cfd480c444b25e329ae3965393f326373af7489e729e306f60b9d9f24dcb27f27df3bf5e815ac15dd15ba05bb0b66074a5e7cafa55d0aaa5ab7a57ebaf2e5a3dbec66fcd81b584b5696b7f28b42e2c2f7cb92e665d4f9156d19aa2b1f57eeb5b8b158a45c53736b86ca8db88da28d838b869eea6aa4d1f4b7825174bad4b2b4adf6fe66ebef895cd57955f7dda92b465b0cca16ccf56cc56e1d6ebdbdcb71d28572ecf2f1fdb1eb2bd73076347c98e973b97ecbc50615751b78bb04bb24b5a195cd95d6550b5b5ea7d754af5488d574d7bad66eda6dad7bb79bbafecf1d8d356a755575af76eaf60efcd7abfface06a3868a7d987d39fb1e364637f67fcdfabab949a3a9b4e9c37ee17ee98188037dcd8ecdcd2d9a2d65ad70aba475f260c2c1cbdf787fd3ddc66cab6fa7b7971e028724871e7f9bf8edf5c341877b8fb08eb47d67f85d6d07b5a3a413ea5cde39d595d225ed8eeb1e3e1a78b4b7c7a5a7e37bcbeff71fd33d56735ce578d909c289a2139f4ee69f9c3e9575eae9e9e4d363bd4b7aef9c893d73ad2fbc6ff06cd0d9f3e77ccf9de9f7ec3f79def5fcb10bce178e5e645decbae470a973c07ea0e307fb1f3a061d063b871c87ba2f3b5dee199e377ce28afb95d357bdaf9ebb1670edd2c8fc91e1eb51d76fde48b821bdc9bbf9e856faade7b7736ecfdc5973177db7e49ed2bd8afb9af71b7e34fdb15dea203d3eea3d3af060c1833b63dcb1273f65fff47ebce821f961c584ce44f323db47c7267d272f3f5ef878fc49d69399a7c53f2bff5cfbcce4d977bf78fc3230153b35fe5cf4fcd3af9b5fa8bfd8ffd2ee65ef74d8f4fd5719af665e97bc517f73e02deb6dffbb98771333b9efb1ef2b3f987ee8f918f4f1eea78c4f9f7e03f784f3fb8f70662a000000097048597300002e2300002e230178a53f760000200049444154789cecdd077c1445ff06f0dfec952447084920c4d042571104912010413d48b9dd4d14147b41517cff1644b0204817b1a0a820f68aa8afaf582097409048114151448a02d27b6f421202b9fdcf2ca0889494bb9b2bcff7f319f672492e8f422ecf6d6667ac86611000007897c25d74d145d6c8c8486bd5aa5595a8a828c5e3f158f973aeb5a4c4c6dfcb2c16cb61833176548cc3870f7bf8c77876ecd871b4b8b8f86842428267e6cc99a5fc73f0240d00e04556d901000002457a7a7a35a288ea76bb115f5aca6279418d65cc136b18e2c8aaf1e21a4bc4e2f88756e1c3210663c78e278d487154555d39f5f179db358fd6bf9e7923fe7a9fc361338f8989497fddc71f83743dbb98df14a3500cc33876e45fb7f0d87d4611cfb49f1ff78923efca7b78d63dfcb84f513cfb4a4b4bc5d8cbc7ee828282a35efd1f06001084507e0120a4a5a4a438121313eb1886529797d7245e686bf2bb13f8388f17c99abc44f2b78df37871ac69b747da8f7d16a3e33d9553887fccb17b4fdcf0afc8e323f6588653dfcdfe71e4ff7de6d16211470b2fda961365dbc38bf41e7edcc6c70efedfcc07e38376f2776de3ff7fb61bc6d1cdc5c5c51b7849dee5dbff24000079507e0120a8399dce1a0e87a3112f6f0d7831acc7efaacd4b6dbde3b7eb252626d5101f274ae3a9e5f5ef37a5945a7f1367a26b1c1ff4cfff66e5f8ff1f2b391cd1e26cb338a3bc89bf6303ff7fb981ff7fdb288e1e8fb1a1b494d67cf38d7bbdc7e329f5ff7f020040e5a1fc024040139363d3d2d2926c365b635e701bf352d68897317e24311af1b2564d7cdcc9bd56ce09da90e2e0ff179bf263d3bfcf7a1f3b9b2cce88abaa5ea2eb59eb0c83ade2f7af22f2ace67f37ab4a4b4bd66cdebc79cd92254b4aa4a60700380b945f000808a2e476e9d2a5aec512d18c97ac6686615cc42b57335eb42ee4ef3ea9e0a2d90600bb28c7fcefa3e9b1378f9d39b65aed949cdce088ae67afe62f527e330c5aca3fee77c338fa1b7fc1b2c2ed761f961b1b0000e5170024e8d8b16355ae252fbcad79716ac5efbae878c9ad7ae26324cdaf85ca1357ee5dc0ff062fe07f85ddc41d623a0557aaeb59ab0d832de3f72f26f22c2a292959989f9fbf416a5a00083b28bf00e053624e6e5454546bc3505a2b0ab5e477b5ae562d4e4c59f8d76a0810d22c279d2dee2afefaedf64831bf781791b1c83068217fff2fa5a5258b78215ee9e164070680d084f20b005ea3699a58bbeb125e6cdaf19273192f33ed1d8ee864f13e9cc88533a8c1ff7574e1ff3eba8837c4d40955d50ff252fc137f733e91e787c24236bfa060ca36c939012044a0fc024085f1b22b5659682f8a2e638c175ecbc564ce0705a894683eae3c36147238c4bfb5ec758c19f30d837ee08578fe860d1b16e2c23a00a808945f00281371419acbe5ba9017dc4e44c61544ac13bf5d0b6774c11ff8bfb3fafccffafc78a39841919cdca050d7b3e7f377cde16578f6f6eddbe72f58b0a050724c00080228bf00705a627bdeb434ed629bcde864184a4755d579e135378720acb8000140eca6e73c3614b1335e89a665ffc85f98cdf67868cec183fbe6ce9933e74fd9210120f0a0fc02c05fd2d3d3ebd9edf6745e26d278d9edccefaa2e8a2eceee4210b0f37fa797f37faf978bb588ab558b3bcacbf07c5e86a7f332fccde1c3877ec4f6ce0020a0fc0284314dd3621863e2cc591a2f095decf6c8a6b233017889f5a4323ccce188dea7eb5905bc08cf308ca3f9797979ab6407040039507e01c24c666676738bc5c8e6a55765cc7219fdf53c80d3bb10d262f9bff16e8a22d61eb68925d6d6f2fbf20c83dc4545070bb862d90101c03f507e0142dcf1e5c7aee04557e3c72cab951aa0e80288ef03ba8f31bacfe1883ea4eb5933888c2985852c07cbaa018436945f8010c40b6f0291258b3143e3a5379d8e2d1d0500a75785bf20cc16c3e1208f5863d8300c3791678adbedfe45763800f02e945f8010d1a54b76ed8808eaca981816b1328305677801ca4dec3cd89631d6967f0b0de34578352fc2937811fe322f2fef078fc763c80e08009583f20b10c45455adaf28d66e44c6b59191ac1d61cb60006f6bc48bf063bc083fa6aada265e86bfe04578526e6eee5c5e844b65870380f243f90508322e97abaec562bb89dfbc8117dfd6c7eec5195e00df6375f81fbdf96bccdeaaaaefe045f84b5e843fe645780ece0803040f945f8020909696563d2222aa3bbf79132fbe9713cef002c856938f7bf9b7e2bdbc086fd4b4ac4f8e1ea54fa64d9bb248763000383b945f800095999959c56ab55ecd7fb8dec48bafb868cd2e3b13009c565d3135c266a3c7743d7b9961181f97961ef964ead4a96b650703807f43f90508208aa2b0cc4cfd0a45317a58adf66b09ab3400049b8b78111e69b3458ce445782e91e77d5e863f73bbdd076407038063507e010280d85698ffb0eca1aa7a0f22acc30b10ec78e1158754fe923695317a59d3b23fe777bd37756ace2ccc0f06900be5174092d4d4d4a8b8b8b8aebce8de69b7477626345e8050e5e005f87631f80bdcb59a96f5fe912387dfcfcfcfdf203b18403842f905f033b1bdb0d54aff898bab7e0b995bae02401869c0181bc65ff00ed5f5ec6f0c83dedcb163ebd70b162c38223b1840b840f905f003b1c5b06128ddf90fbd7b79f1bd5c761e00904efca6278d314a4b4c4cdaca8bf03b2525c56fe16c3080efa1fc02f890cbe56a6cb158ef65ccd283ff90ab213b0f0004a4243e9eb4db23fb6b5a768ec763bc316d9a3bdfc3c90e06108a507e01bc4ce1548e88dd6fb1d83208737901a06cacfc45f235160bbb46cc0dd6f5ecd74b4b8fbc9d9797b7477630805082f20be0254ea7333a2a2a5aacd8d09bbfd944761e00086a0df87896bf801ea269d91f969696bc3c75ead4e5b243018402945f804ad2753d99883de07044df4db8800d00bc4bac14f11fabd57eafae67bb4b4b8d97a74d73cfc07269001587f20b5041bcf4a61a86d247512c5d0dc3b0c8ce0300214d4c9fd22d16a6abaabe943fffbcbc77efde8973e7ce2d921d0c20d8a0fc029483d8814d55558ddfea7f7cf1fa138bd90300f84b73fefcf3565c5c75b18bdcd803078c5767cf9eb2577628806081f20b5006292929b68484f36e5155fd51fe6633d9790000b89a7c8c8889618fe97ad61b478e948c99366dda16d9a100021dca2fc05964666656b1586cf72426263dccdfac273b0f00c0695425628fd86c110fea7af6048fe7e8e8dcdcdc15b24301042a945f80d3703a9db10e47f44356abfd41fe6675d9790000ca20828fbb15c5da9397e02f78097e9a97e085b24301041a945f8093b85cae788bc5f6302fbea2f456939d0700a002c4c571d7f2127cadae674d263246e4e4e4fc243b1440a040f905e0d2d2d2aa474444f5e1c557acd11b233b0f008077b06c31745dec1c7774786e6eee02d989006443f985b0e6743a6b381cd1fd78f1bd9fcc7973000021495714abae69d9b944a523dc6ef77cd981006441f985b0d4a953565c4c0c7bf4f8f48668d9790000fc813152892caaae674df5784a07624e308423945f082b2929298e8484f37a8ba581f89b71b2f30000c8c13215c59aa969d99f9796960cc2d6c9104e507e212cb468d1c25eb76efdbb13139306f2376bc9ce0300100818a3eb6cb688aeba9efd5e69e991e17979791b656702f035945f08690a9799a9dd9c9cdc60187fb3a1ec3c000081e6f8f6ec775b2cb65b79091e6f18a5cfb8ddee9db27301f80aca2f842c55cdce70b9f4e718a38b656701000802917cf465cc720f2fc1cf6ddfbef5c5050b1614ca0e05e06d28bf10723233b39b5badc6f38ac23265670100084262e59b118989e7ddabaa5983a64e757fe8e1648702f016945f08194e67d6790e070db3d994bb0d8314d9790000821baba328f49eaaea0faa6a76bfdcdcc933652702f006945f087aa9a9a9517171d5fb391ce60a0e550dde7c0100c06b5af312fcada6657fc598e7f19c9c9c95b203015406ca2f042d455198cba5dfcc8bef28fe665dd9790000421963740d7fe6d5753debb5030768c8ecd953f6cace04501128bf10945caeec96aaaa8fe5373bcace02001046786f600fc6c4d08dbc050fc8cdcd7d17f38121d8a0fc4250113bb355ad4ac3ad56e53ec33030af1700408e0422e52d974befc54bf0833939393fc80e04505628bf1014c47abd2e9776774c0c7b8abf998079bd0000f2314629fc197abeae67bf7ff87051ffe9d3a76f979d09e05c507e21e0699ad64e55f571fce6a5b2b30000c069f5888888eaaa6959438b8a0e8d2b2828382a3b10c099a0fc42c0723a9db15151d1a318b3dccbdf64b2f30000c05955638c8d7138aadce17265df9b9737f947d981004e07e5170292a665dfe870448fe137cf939d050000ca83b5b25ad93c4dcb1a4fe419e876bb0fc84e047032945f0828e9e9590ded767a9531ecce060010acc405c9fc79fc01224b574dcbeee3764ffe5c76268013507e2120a4a4a4d81212ceeb67b7b341fc4d87ec3c0000e015b519a3ffe97a760e91e7819c9c9cf5b20301a0fc8274baaeb7a95933e91dfe0479b1ec2c0000e0133a917295a6653d9997e77e056b03834c28bf208dd3e98c7438a28730667994c8b0c8ce0300003e55455c10a7aafa75aaaaf6cccdcd5d213b108427945f904255b3dbf3e2fb2ebf7901d6ec0500082ba98a62fd45d3b206e7e5b9c7783c9e52d98120bca0fc825fa5a6a646c5c5c50fb75894bed8a10d00206c4531c69e5755bdbbcbe5ba2b2f2f6f99ec40103e507ec16f5caeac8e7171d5dfe1379be06c2f0000706dad56fb425dcf1e515878f0196c8e01fe80f20b3e776c6e6f9511160beb47d8ac0200004e6218869d1f46381cd159baaedf969393b3527626086d28bfe053191959adf813da047eb3b9ec2c000010d0da1229bf685af6e3797939af7a3c1efc8a107c02e5177c4251144b66a6f6a8ddae0ce7afea6db2f300004050703046635555d7333232ee9a366dda16d98120f4a0fc82d7699ad6883f717dc06fa6626e2f0000544086cd16b144d3b2ef73bb27ff577618082d28bfe055aa9ad553512c63f8cdaab2b3000040508b678c3ed5f5acab0b0b0fdd575050b04f7620080d28bfe0154ea733d6e1887e4351d8f5b2b3000040286137f19f2f1d5caeac9bf3f2a67c2f3b0d043f945fa834fe84d4813f317dcc6f26cbce0200002129d96a5566eb7af6d0dcdc9c51d818032a03e5172a4c5cd4a6aafa13fc0969a861607b620000f09de33f6746a8aae6ecd225fbb66fbe99bc597626084e28bf5021fc89a7367f02124b985d858bda0000c07fd8559191b448d7f53b7338d96920f8a0fc42b9a96a961619c9dee74f40356467010080b0c47ffe2853743d6bac61781e75bbdd87650782e081f20b6526a639b85cda70456103646701000020620f1259dae9bade3d272767bdec34101c507ea14cd2d2d2125555fb44fcba4976160000801318a31422e567972bebd6bcbc295365e781c087f20be7c45f51778a8888fa94df4c929d050000e034aa5b2c2c57d3b246e4e5b987633508381b945f3823455198aaea8f3266791aab3900941f634c7c1f99478bc5620e71fbe4b7f9b7197f5be1b715f328de56947fbfefd8e72aa7f9dc531f5b39c7fb4ebcff9f8f2588fb4ee438f5734fbc4f6413b779b920d12f4a4b3d74f4e8513a7cb8988f123e0e536161211d3a74c81c070f1ea4fdfb0ff0b19f4a4a4a24ff8d4088e3ff54d96055d53a689a76b3dbedde293b100426945f38adf4f4f46ac7b728be3a5c5773888b8ba3d4d40eb26384a513c5eb6c05ed4409fb774963677ddfb1c73db9585afe553c4f573afffdb9ff2e87a7be4f1ce16fc5c5c5b467cf1edab56b371fbbccb16ddb36dab2652b6dddbad57c1f40e5b12efc7b76a1cb95750336c580d341f9857fc9ccccbcc0668bfc8adf3c5f761699ce3b2f91eebdb797ec180021233232926ad5aa658ed3292a2aa2cd9b37d3a64d9b68fdfa0db46edd3a7388b20c503eac8ed5ca66ea7a76ef9c9cc9afcb4e038105e517fe4155b3b2ad56bb58bf3746761600082f515151d4b87163739c4c4c99f8e38f55b472e54a7efc831fffa003070e484a09c1c2300c1b3fbca669d92d376c58fbd092254b30ef064c28bf603a3ebf77203f0ce76fe277b5001030aa55ab466dda5c6a8e13366edc48bffdf61b2d5bf63b2d5ebc9876efc6d961383dc6e83fc9c90d5a389d59d715144cd9263b0fc887f20be4743aa3555513f37bbbc9ce0200501675ebd63547464686f9f6962d5be8d75f7fa5850b179947318502e024a90e072d5055b55b6e6eee02d961402e94df30a7695a2387235accef6d2e3b0b0040459d984bec72b9ccd527962d5b463ffcf023cd9b370f7386e138564751ac735435eb3fb9b953de979d06e441f90d632e57d655168be5737e335e761600006fb15aadd4b2654b73f4ea750f2d5fbe9ce6cefd9ebeff7e1eedd8b143763c902b4251d87b9a96d53c2fcffd9847acd9076107e5374cf157be3d2d1626ae80c5bf01000869175c7081397af6bc8b56af5e43df7df71dcd9c39cb5c6a0dc21363ac9faa6a4d9c4ee72d0505050765e701ff42f109330ac7bfe19fe5af7c1f919d0500c0df1a356a688edb6ebb95162d5a44336614d0bc79f3e9c89123b2a381dfb16c87a3ca1c97cb959d9797b751761af01f94df3072fcc2b689e21b5e7616000099c4a624ad5bb73687d8854e9c09fee69b19b47af56ad9d1c0af582b8bc5f683aaaa57e342b8f081f21b26f82bdbbafc15ee64f18d2e3b0b004020898e8e265dd7cc21d6139e32650acd99f39d79e11c84852445b1ce54d5ac1eb9b953fe273b0cf81eca6f18c8ccccbad46ab54de137936467010008644d9a34a6be7d1fa61e3deea0dcdc3ccacb9b8a0d35c2834351d867ba9e3d202767f228d961c0b7507e439caa666758ad4cbc92ad2a3b0b0040b0888f8fa75b6fbd85aebfbebb3925e2ebaf27d3860d1b64c702df7b9a17e0e4dcdc9cfb3d1e4fa9ec30e01b28bf214cfc0a87bf927d8bf0f70c00502176bb9dd2d3d3282dad8bb954daa79f7e4aebd6ad971d0b7ceb5e55d5925252526e5ab06041a1ec30e07d2845214ad3b206f3e23b4c760e008050c018a3d4d40ed4a143fbe325f8bfbc04af931d0b7c8665d7ac9934c3e97466151414604dbc1083f21b62f837aad5e1a8f22a7fa2ee253b0b0040a8395182c5101b67e04c70e8e27fd5edf8cfd3b9e9e959aefcfc296b64e701ef41f90d212929290efe4af5537e334b7616008050270a70fbf6edccb582274efc9876efc636caa18735b5db699eaaaa3a96420b1d28bf21c2e572c5f3e2eb16af5465670100081762bd60311fb853a78ef4e5975fd1175f7c49454545b2638177d554146b81cb95d5352f6fca37b2c340e5a1fc8600fe8a34c962b14ee3375bc8ce0200108e222222e8c61b6fa0cccc0cf32cf0f4e9df506929160b0821d156abe2d675fde69c9c9c49b2c340e5a0fc06b9f4f4ac8676bb753abfd9507616008070171b1b4bf7df7f1f699a4aafbefa1a2d5fbe5c7624f012c330ec8c593ed3b4ec7bdceec9efcace031587f21bc43233b39bdbed4c9cf1ad253b0b0000fcad7efdfaf4dc73cfd0d4a9d3e8830f3ea443870ec98e045ec00bb0c218bda36959f16ef794d1b2f340c5a0fc06294dd3da59ad1637bf192f3b0b0000fc9b5819c2e5ca342f8a7bebadb769f6ec39b2238197f0bfdbe779018ee30578a0ec2c507e28bf4148d7f534c62c5ff09bd1b2b30000c0d989a9108f3efa887961dcd8b1afd28e1d3b6447022fe0057880a665c7e7e599bbc17964e781b243f90d32bcf8eabcf84e12738f6467010080b26bd5aa158d1bf70abdfdf63b949f3f5d761cf002c6e83f2e97ee5014e52e6c871c3c507e8308efbdd788c9f6bcf8da6467010080f28b8a8aa2071f7c80dab56b4763c78ea3bd7bf7ca8e0495c40bf0edaaaad99c4ee7ed0505054765e7817343f90d12bcf85e4fa44ce4c5177f670000412e25a50d8d1b3796c68f1f6fee1407c18edd1415156d4b4949b979c182054764a781b343910a02625d41c62c1ff2e26b919d050000bc2326a62af5efff387dfbed4c5e825fa3e2e262d991a01218a3eb6ad64cb2b668d1e286254b9694c8ce036786f21be05435ab87c56279472caf223b0b000078df55575d494d9a34a6a79f7e86366edc283b0e54022fc0d724273798a469da756eb7fbb0ec3c707a28bf014cd7f5bb15457993175f263b0b0000f84e9d3a7568cc9817cc33c00505dfca8e0395a3135926a7a6a65e3377ee5cec751d80507e039438e32b8a2fbf89e20b001006c416c90f3fdc879a35bb90de78e32d3a72045347831563941e1717ff85a669d7e00c70e041f90d40bcf8deaa284c6c9d88e20b001066323232a84993263472e4d3b463c74ed971a0c258266396cf5bb468712de600071694df00235675b0582cef63aa030040f86ad8b021bdf0c2685e8047d1f2e5cb65c7818ad39393eb7fe2743a6fc032688103e53780a86a56375e7c3fc6aa0e00002076861b356a24bdf2ca38faf65bcc030e5eac9bc3113d9117e05b50800303ca6f80103bb7f1e2fb298a2f00009c60b55aa96fdf3e54b76e6d9a306122f19f11b22341c55cef7054295114e50e6c852c1fca6f0070b9b232ad5673cb62ecdc060000ffd2bd7b77aa53a72ebdf0c28b74f830ae9f0a4eec5655d58ff002dc93f75fbc8a9108e557325e7c3b5a2c4c145fbbec2c000010b8dab76f4723460ca3e1c39fa283070fca8e031573a7cba51fe0c73eb2838433945f893232b25ad96c6c32bfe9909d05000002df85175e48cf3c338a060f1e427bf6ec911d072a80317a48d7b3f7e5e44c1e2a3b4bb842f995242323bb092fbe53f9cd58d959000020782427d7a3e79e7b96060d1a4c5bb76e951d072a66082fc07b79017e5976907084f22b81a669756c36cb747e335176160000083e89893579017e86860c194a6bd6ac951d072ae6254dcbdeeb764ffe5076907083f2eb674ea7b386c3119dcf6f26cbce020000c1ebd852684f9b678057aefc43761ca800b1a195aa66edcbcd9d325976967082f2eb479aa6c5f0e29bc76f5e283b0b0000043f87c341c3870fa3279f1c4cab56ad921d07ca492c6fca0bf067aa9a9d999b3b79a6ec3ce102e5d74f5ab468614f4e6ef039bfd94676160000081d55aa5431578118387010ad59b346761c28bf0845a1af5daeec4e7979937f951d261ca0fcfa81c25fd6a9aafe36bf99263b0b0000849ee8e8687aeaa9e166015ebb16738083508cc542b9e9e9e9edf3f3f337c80e13ea507efdc0e5d246f1c36db273000040e8aa5ab5aa5980070c1848ebd7a33f05a15a767b645ea74e5997cf9e3d65afec30a10ce5d7c7743dfb7ec6d8e3b273000040e88b8989a1112386d3238f3c463b76ec901d07caaf594c0cfbdae974a617141414cb0e13aa507e7d48d3b2bb2a0a7b057bb1030080bfc4c5c5d1f0e143e9b1c7fad381030764c781f2ebe870447fa428caf51e4e76985084f2eb23baaea732a64ce4c557919d050000c24beddab569f0e027cd39c0870f1f961d07caef5a55d5c7f0e343b2838422945f1fe0c5b7299122d6ec8b929d050000c2d3f9e79f4ffdfb3f464f3df534959696ca8e03e5d75bd7b3d7e7e44c7e5176905083f2eb652e972bde62b14ee137e36567010080f0d6a64d1bbafffefbe89557c6ca8e0215c0187b5ed3b2ff70bb274f919d2594a0fc7a514a4a8a2d31f1bccff93fd7a6b2b30000000869695d68f3e6cd3469d217b2a3403989a9938cd1c71919591da74d9bb248769e5081f2eb45bcf8bec68bef55b2730000009cecf6db6fa3f5ebd7d34f3ffd2c3b0a945fb4cdc626abaa7a596e6eee56d9614201caaf97e87af6a3bcf8f6949d030000e0548aa2d0238ff4a37efd1e35cf0243d0a9cb98f5eb9494942b172c5850283b4cb043f9f5025dd7afe64f2dcfcace0100007026621be44183069a05f8d0a143b2e340393146298989491f6209b4ca43f9ada48c8cac56369b3291df64b2b30000009c8d58024d9c011e31e229427f0a4ad7ba5cda087e1c283b483043f9ad044dd3126c36cb57fc6615d959000000caa24d9b4be9861baea74f3ef9547614a800c6d8004dcb5eec764ffeafec2cc10ae5b7829c4ea7d5e1a822fee125cbce020000501e37de78032d59b294962e5d2a3b0a540063f48eaaaabfe7e6e62e969d2518a1fc5690c311fd023f6065070000083a272e807be8a18768ff7e6c811c84aa288af5cbb4b4b4b6d3a74fdf2d3b4cb041f9ad0055cdeaa128acb7ec1c0000001555bd7a3cf5e9f3100d1b36427614a898861111919f3a9d4e574141c151d9618209ca6f39a9aa9ac25f6dbd2e3b0700004065891de0ba76bd86befcf22bd951a042581787235aac36d54f76926082f25b0e4e67d6790e87456c9113213b0b00008037880d30162f5e42ab57af961d052aa6afa6652f74bb274f941d2458a0fc96d1b10bdca2c5056e756467010000f016abd54a7dfaf4a6871fee47478fe2b7e7c188317a2b23236b19b6402e1b94df327238aa8ce2874eb273000000785bfdfaf5cde5cf264efc587614a898289b8dfd2f3d3dbd4d7e7efe7ed961021dca6f19685a7657c6d823b273000000f84af7eed7d1bc79f368cd9ab5b2a340c534b6d922df5714a59bc7e3316487096428bfe7e072b91a5b2cb6f764e7000000f0258bc562aefe20a63f949696ca8e0315c0185de37269e2e2b7d1b2b3043294dfb3484d4d8d8a8b8bff1fbf594d76160000005f6bd0a0015d7f7d77ecfe16c414457946d7f51f73727266cbce12a8507ecf2236367e1c7f1dd54a760e0000007f11e577f6ecd9b479f316d951a0020cc3b0f00afc495a5a5aebe9d3a76f979d2710a1fc9e81a665dfc518bb4b760e0000007f12ab3ff4ea750f0d19324c7614a8b85a1111919f288a92e6f1783087e51428bfa7919999dd9c7fef8f939d0300004086d6ad5b53fbf6ed68debcf9b2a34085b1ab5c2e6d30bf314476924083f27b8a63f37cab7fc26f46c9ce02000020cb3df7dc4d0b17fe42870f1f961d052a48519427354d2b70bbddb36467092428bfa7888d8d7f811f9acbce010000205342428239ff77c2848f6447810a320c43614cf9282d2dadd5f4e9d377cbce1328507e4fa2aa59dd1485fd9fec1c00000081a05bb7ae347dfa37b46ddb36d951a0c2589d8888a8771445e98af57f8f41f93dcee572d5b5586c6fc9ce0100001028c4c56fb7dd760b3dfffc0bb2a340e55cadaafa7dfcf8aaec208100e597cc393116fe8f6222bf192f3b0b00004020e9d8b1234d9af405767e0b7ea355559d939b9bbb587610d9507e494c77d007f14347d939000000020d638c6ebffd761a3a144b9f05b94845b17e92c22d58b0a050761899c2befc6a9ad68eff6378d230300d060000e0742ebdb435356fde9c962e5d6c21a6db00002000494441542a3b0a544eb3c4c4a4e7f8f101d941640aebf29b999959c56ab54f38b61b0a0000009cc91d77dc4e8f3efa98ec185079f76b9a36d9ed76e7cb0e224b58975f8bc53e9a1f1acbce01000010e82eb8e07c6adb36857efc7181ec2850498c59de73b95c2df2f2f2f6c8ce2243d8965f5dd75d8c29ff919d0302d7dab5eb68d0a0c154ad5a2c1f3154a3460d73ddcb84841a94989848b1b1b1b2230200f89558f717e53724d4b258ac62e5879b640791212ccb6f5a5a5a75b1e69dec1c10d88a8b8b69d1a25fcff8fe8888084a4a4aa25ab5c4a8658eba75eb50bd7af5c8e170f8312900807f9c7ffef9d4a245735ab204737f831fbb51d7f5293939391fcb4ee26f61597e2322225fe38724d93920b8892d3fd7ad5b678e538933c4f5ead5e565b82ed5af5f9f1a366c60de166b66020004b3ebaebb0ee5376428e3344d9bed76bb37c94ee24f61f7935855b36e5514d65d760e086d3b77ee34c7cf3f2ffceb3e517c45216ed0a021356ad4909a34696cde8e88b04b4c0a00503ead5b5fc29fc31ad1ead5ab654781ca8b63ccf2aea22819e1b4fb5b58955f55559314c5fa8aec1c109e8e1e3d6a2e122fc68c1933ccfb2c168b79465814e1c68d1b53d3a64d78216e60de0f0010a8ba77bf969e79e639d931c03bd2783feac58f6fc80ee22f61557e79f115d31de264e70038a1b4b4f4afa913d3a77f63de67b7dbcd222caeac6edab4293f5e40d5ab63f34100081ceddbb737af79d8ba75abec28e015ca73e9e9e979f9f9f91b6427f187b029bf9a967d236374b5ec1c00e752525242bffdf69b394ea85933812ebcb019356b76a139929393cd5d97000064501485745da3b7de7a5b7614f08e18bb3d429cf975c90ee20f61517e354d4b60cc82e90e10b476ecd8c9c72c9a356b96f976952a557819bec02cc2175dd4dc9c2e818be900c09fba74e94c13267c64ae8c03a18065aa6a568fdcdc29efcb4ee26b61f1d39217df71fc90203b0780b71c3a74887efae9677308919191bc043733b71f15cb103569d2c43c330300e02b624947a7f32acacdcd931d05bc4451d8988c8c8cfc69d3a66d919dc59742befcf25731ddf85fe6f5b27300f89238f322569638b1ba445454947956b8458b16d4b2e5c5d4b06143946100f0bacccc0c94dfd0126bb3d9c5f551213d4d34a4cbafcbe58ab7586cafcace01e06f454545ff28c3e20ccd45175d649e156ed5aaa5b9a20400406589e71231ed6ae5ca3f644701af61d9baaedf1cca9b5f8474f95514ebf3fc709eec1c00b2151616d282050bcc21c4c5c5d12597b43a3e2ea16ad5aa494e0800c12a3d3d1de537e4282fa5a5a54d9b3e7dfa6ed9497c2164cbafa669573066b94b760e8040b477ef5e2a28f8d61c62d508312d4214e1d6ad5b9b17d2e1e2390028ab4e9d3a9aab3e885d2f216424d8ed916221e79eb283f84248fe846bd1a2853d39b9c16bb273000403c330cc9d9ac4f8fcf349e6c57362aeb0d8c5498c5ab56ac98e0800014c5c63d0aedd65346bd66cd951c08b186377e9bafe414e4e4ec8fdc58664f9e5c5f7717eb850760e8060242e9e3b798a44cd9a35a96ddb143eda9a7386715618004e25567d40f90d45caeb2d5ab468b564c99212d949bc29e47e8af157294df95fd600d9390042c58e1d3b2827c76d0e7156589c0d6ed3a60da5a4b4a1d8d858d9f1002000b46ad58aaa558ba1fdfb0fc88e02de75e1f1138a236407f1a6902abf8aa230974b1fcf1845cace02108ac459e1efbf9f670e3157b84993c6bc04a798a351a386b2e30180246229c5f6ed3bd0d4a953654701ef1b909191fde9b4699343e6aac6902abfaaaadeca0f9d65e700080762aeb0b8c25b8c89133fa6ead5ab9b6783c568d9b2154544d8654704003fead4e97294dfd01469b5d26bfc054e9ac7e3316487f1869029bfe9e9e9d5ecf6c8d1b2730084abddbb77f31f7cd3cc11111141975eda9adab76f679e1516db31034068136b8963ea4368628c3abb5cfa0dfce6a7b2b37843c8945f9b2d62283fd4949d0300c85cf2e8c4f40871819cd8654e14e176edda614d61801025a63e880b63a74fff467614f001c68ce79d4e674e4141c141d9592a2b24ca6f666676739b4d7950fc1a160002cbd1a347ffda6d6efcf8d7e9c20b2fa40e1ddaf132dc9e12121264c703002f122f70517e4315abe370448b0505827e51819028bf562bbdcc8baf45760e00383b8fc743cb962d33c75b6fbd438d1b37368b70870e1da876eddab2e301402589edd3ed763b959484d4ca58f0b7be1919d9ef05fbc56f415f7e5535abbba230a7ec1c00507eab56ad32c7871f7e44c9c9f5e88a2b3a51a74e575062226630010423517cc526393ffffcb3ec28e01b11369b31861f75d9412a23a8cb6f4a4a8a2331310917b9018480f5eb379825588cf3cf3fdfbc72fcf2cb2fa7f8f878d9d100a01cc4c5ae28bfa18c693a97c3c94e5251415d7e79f17d821feac9ce0100deb562c50a73bcfdf6bbe659a42bafbc8217e154731b5500086ca2fc42a853c6689a36dded761f969da42282b6fcaaaa5a5f51ac8fc8ce0100be232e625dbc78b139de78e34d4a4ded405dba7431b7590680c054ab562daa51a33aeddab55b7614f09dc6bc00f7e1c7676507a988a02dbf8a6219c50fd8c90d204c88e5d30a0abe354752521275eeec34478d1a356447038053b46871317dfbedb7b263800f31c69ed034ed5db7dbbd537696f20acaf2abebfa65bcfede283b0700c8b175eb56fae8a389f4f1c79fd02597b4a28c8c74baecb2cbcc754601403eb1b637ca6fc8abc6bbd8307ebc4f7690f20abaf2cb7fb83155d55f909d0300e4134ba79d5843586caf9c9999618ed8d858d9d100c25ab36617ca8e007ec03b592f4dd3c6b9ddeedf6467298fa02bbf9999da75fc902a3b07000416b1bdf2c4891fd37ffffb19a5a6a692aabaf003184012313549bc08ddb76f9fec28e043628f05c694e728c8963e0baaf2cb5f5d44288ae519d939002070891de566cd9a658e060d1af0e70d175d79e555141161971d0d20ac88179f628b7308758cd7b3ecce6ef7e419b293945550955f22cb03fc8f86b25300407058bb762d8d1b379ede7fff43f34cb0ae6b141717273b16405868dab429ca6f98608c5e5014a5b547cc450b0241537ed3d2d2aa4744440d949d030082cfc18307e9b3cffe475f7ef995b966f0d5575f6dee280700bed3a44913d911c07f5aba5c7a0f7e7c577690b2089af21b1111d99f1f70ca06002aecc89123347dfa37e6100bf18b122c568b0000ef6bdcb891ec08e0478cd150a7d3f971414141b1ec2ce71214e5b74b97ecda9191ec7ed9390020749c582542cc0bbef6da6ed4b1e3e5582a0dc08b1c0e87b9e1c5962d5b644701ffa8eb70448b65cf5e941de45c82a2fc46461a83f96b0aec6b0a005e27e6058f1efd82b966b028c14ee75564b506c5532340c0ab5f3f19e537bc888d2fde76bbdd076407399b807f86cfc8c86e62b3b1bb64e70080d0267e408f1d3b8e3ef9e453ead6adabb97186dd8e1522002a2339391917bd85971a8c59faf2e350d941ce26e0cbafcd660c2762019f130042c3ae5dbbe8cd37df322f90bbe69aabcd5522a2a2f08b27808aa85fbfbeec08e07f7d354d7b3590b73d0ee852999191d5ca666337c8ce0100e1472ccefffefb1fd0e79f4fa2abafce36074a3040f9d4a953477604f0bfaa8c599ee0c7beb2839c4940975fab958de407263b0700842fb14c9ad8396eca941c733a84aeebd83003a08c6ad54a322f240d92e55fc17bfecfe5728dc9cbcbdb283bc8e9046cf9e53f6052195354d93900008403070e986782bffe7a3275ef7e1d65666690cd66931d0b20a0898b476bd64ca06ddbb6cb8e02fe15a928b641fcd84b7690d309d8f26b18ca608673be001060f6eedd6bce099e34e90bbafefaee949e9e86d52100ce2229a916ca6f18e21dee0e5dd747e6e4e4ac979de55401f98cadaad9ed1585d265e700003893ddbb77d36bafbd6e96e05b6eb989aebaea2afe648f57ec00a74a4cac293b02c8612752c4dcdfffc80e72aa802cbfbcf80e919d0100a02c76ecd84163c6bc6c6e9d7cc71d77509b3697ca8e0410506ad644f90d6377a6a7a73f9d9f9fbf41769093055cf9d534ad1d63960cd9390000ca63ddbaf5346cd8706ad9f262baf3ce1ed4a811b6760510507ec39add668b14677fff4f769093055cf9e5c577b0ec0c000015f5ebaf8be9e187fb51a74e9de8f6db6fc50f7e087bf1f1f1b22380448cd19d2e97ebe9405af921a0caafcb95ddd6622197ec1c000095611806cd9a358bbefffe7bd234956eb8e17a8a8e8e961d0b408af8f838d91140ae088bc5d69f1fef971de484802abf168b3118cbfa0240a83872e4087df5d5d7f4cd3733e8e69b6f328bb058f314209ce0cc2f703d354d1be576bb37c90e22044cf93dbe9b9b263b070080b7898d32c4f26853a74ea37beee949ad5ab5921d09c06fc4ce88624d6cf16210c2560491d28f1f1f961d440898f2cbbf2f1e939d0100c097366cd84083060da1cb2e6b4b3d7bde45494949b22301f845d5aa5569cf9e3db26380448cb1bbd3d2d29e9a3e7dfa6ed95902a2fca6a767358c8850ae17f3e4000042dd0f3ffc480b17fe425dbb5e63ee16171919293b12804f55ad1a8df20bd1767ba498f73b5c76908028bf361b3dc28baf45760e00007f11bf02feecb3ff99f381efb8e376723aaf921d09c067a2a3abca8e00018031f6604a4acae8050b1614cacc21bdfc666666d6b45aed3d64e7000090419c0d1b33e625733ef07df7fd87ead7af2f3b1280d74545e1b71b60aa51b3e6793df971accc10d2cbafc5627b881fa264e7000090e9f7df7fa73e7dfa5256966eae0c212e120208159191f8f70cc730c6faa5a4a4bcbe60c1026957404a2dbf9aa6c53066b94f6606008040515a5a6a2e8d3667ce7774f7dd3de9f2cb53654702f00a9cf9859324272626dec88f136405907ce657e9c5ff88959b010020b0ecdebd9b9e7df6399a3efd12baf7de7ba9562dac0a01c1cd66b3cb8e0001853daa28ca471e8f47ca4a07d2caafd3e9b43a1cd10fcafafa0000814eac08f1c0030fd2f5d777a76bafed66ae950a108cac565cd30e27632d5455edc26f4c97f1d5a595dfc8c82a5df9a19eacaf0f00100cc4aa1013277e4c3367cee445f8016adefc22d99100cacd6a957e8911041c26aef90aaff2ab28e67f34000094c1e6cd5be889270650666606dd79670f72381cb223019419b6f5867f63aaaeeb4d73727256fafb2b4b29bfaaaaa6288a1557720000949358126dc1829fcc65d1dab66d2b3b0e4099783c1ed91120f030feb2a8373f3ee0ef2f2ca5fcf2e2db47c6d705000805e282b8112346d2e5975f4ef7de7b0fc5c6e2ba61086ca5a528bf705a7774ea943568f6ec297bfdf945fd5e7e3332326ad96c11ddfdfd75010042cd77df7d478b162d329745ebdcd9293b0ec01995961e951d010253744c0cbb9b1f9ff7e717f57bf9b55aed625f675cb20c00e005070f1ea4975e7a9966ce9c45bd7b3f40090909b22301fccbd1a3a5b22340e07ac0e9748e292828f0db2b24bf965ffe1f17e97044f7f2e7d704000807e20cf0030ff4a69e3defa2f4f434d97100fee1f0e162d9112070d573381c57f3e3247f7d41bf96dfc8c82ad7f1430d7f7e4d0080705158584863c78ea3efbf9f470f3ef80055af1e2f3b1280a9a808e517cecc3094ffa3502dbf8ac2fee3cfaf0700108e7efef96773738c7beeb99b9cceab64c701a0e2e222d911208031469dfdb9ec99dfcaafaaaa176379330000ff107381c78c7989e6cd9b4ff7dfff7f581102a42a2a42f9857351eee57ff4f3c757f25bf965cc82b3be00007e367ffe7cfaedb7dfcc7581535371fe01e43870e04fd91120f0f5e0cf514fce9d3bd7e7af94fc527e9d4e67b4c3117d8b3fbe160000fcd3810307e899679ea38e1d2fa7fbefbf8faa54a9223b128419f16f10e01ce26363ab8ba5703ff4f517f24bf975381ca2f8c6f8e36b0100c0e9cd99f31d2d5fbe82faf67d989a37bf48761c0813a5a5a574e8d021d931200830466296406894dfe3f338000040b29d3b77d2800103e9da6bbbd1adb7de42168b457624087138eb0be5d0dee5ca6e999737f9575f7e119f975ffe1fd1963fb75ee2ebaf030000656318067dfef924736de0471ee947b56bd7961d0942d89e3d7b64478020c23ba3d80fe27e5f7e0d9f975f45a13b7dfd350000a0fc56ad5a4d7dfa3c6c6e8f9c9191213b0e84a85dbb76c98e00c1e5e6d4d4d4477c79e19b4fcb2f0f1f151757fd265f7e0d0000a8b8e2e2c3346edc78fae9a785e6c61831315565478210b36bd76ed91120b8c456ab167f0d3f7ee2ab2fe0d3f21b1717d7951faaf9f26b000040e58925d156ac5841fdfa3d4c2d5bb6941d074208cefc4279290a13b30682b3fc12314c79000008127bf7eea5418386d0f5d777a79b6fbe89ff005264478210b06ddb36d91120f8744e4f4faf979f9fbfc1170feeb3f2abeb7a32efee9d7df5f80000e07de262b8fffef7335ab6ec377af4d17e141f1f2f3b1204b92d5bb6ca8e00c147b1db23efe0c711be78701f9ef9557af03f98ef1e1f00007c65e9d2a5d4bbf743f4f0c30fd3a597b6961d0782d8d6ad28bf50213d144579cae3f118de7e609f945f1e96a9aa7e872f1e1b0000fc63fffe03346cd870734de0db6ebb15d320a0dcc4549aa2229fef560ba1a96166a67e053fcef4f603fba4fc1e0fdbc0178f0d0000fe73624de065cb96d1a38f3e4a09093564478220b261c346d9112088f1d7dbe244ea4c6f3fae4fca2f6374b32f1e170000e4f8fdf7e5f4d0437da84f9f87a86ddb14d9712048ac5fbf5e7604086edd525353eff3f69abf5e2fbf2d5ab4b0272737b8cedb8f0b000072fdf9e79f3462c45374dd75d7621a049409ca2f54524c6c6c758d1f3ff7e6837abdfc262727bbf821cedb8f0b000081414c83f8e38f3fe8b1c71ea5989818d9712080a1fc821788d904815d7e89144c7900000871bffeba981e7ae8617ae289c7a969d3a6b2e340002a2d2da5b56bd7c98e01418e31523b75ca8a9b3d7bca5e6f3da657cb6fc78e1dab56ab1697e5cdc7040080c02476eeeadf7f00dd73cfdde47265ca8e0301469cf52d2929911d03825f44743475e3c777bcf5805e2dbf3131e676c651de7c4c0000085c478e1ca1f1e35f33b746beefbeff23bbdd2e3b120408313506c01b148589590581597e19336ec2be160000e167c68c025abb762d0d18f004252626ca8e030160e54a945ff09a2b3332326a4d9b366d8b371ecc6be557d3b404c62c5dbcf5780000105cd6ac594b7dfaf4a57efdfa529b3697ca8e0392fdf6dbefb22340e8502c16fb0dfc38c61b0fe6c533bf966bbcfb780000106c0e1e3c48c3878fa0db6fbfcd5c120dc2d381030768d3a64db26340085114269e5002abfc326674c39407000010bbc27df0c187e63488debd7b534404e601879b65cb7e931d01424f7b555593727373b756f681bc527e9d4e67acc311edf4c66301004068983d7b0e6ddab4999e7c7220b6450e33623b6c002f53882c626185f1957d20af945f87c3219637c34b7b0000f887356bd6d0c30ff7a50103fa53b366cd64c7013ff9e59745b22340083a3ef52130ca2f8f83895d0000705afbf7efa7810307d1bdf7f6a2cccc0cd971c0c7f6ecd9431b366c901d03425327a7d359a3a0a06057651ea4d2e59787887638a2d32bfb38000010ba8e1e3d4aafbe3adedcf1ab57afbbc962b1c88e043eb26811cefa82cf582323ab5c4d955cf3b7d2e5d7e170a8848d2d0000a00c72737369e3c60dd4bf7f7f8a89a92a3b0ef8c0c285bfc88e0021ecf8d407b9e517531e0000a03c962c594afdfa3d4243860ca63a756acb8e035e545a5a4a3ffdf4b3ec1810da3aa7a7a757cbcfcfdf5fd107a854f94d4949b1252626610217000094cbb66ddbe891471ea5279ee84f2d5b5e2c3b0e788958e2ecd0a143b2634068b373a27b7e56d107a854f9ad5933a9133f54abcc6300004078122569c890a174df7dff47e9e969b2e38017fcf0c30fb2234058507492557e890c1d1b5b00004045895f938f1d3b8eb66cd94277dc713b31869f29c16cfefcf9b223407870298a62f1783ca515f9e44a955ffe24a555e6f3010000844993be300b70bf7efdb0235c905ab16205edd8b153760c080f3554556dc78f732bf2c9152ebf9999991758adf62615fd7c00008093cd9b379ffaf77f82060f7e92e2e2e264c781729a33a7423d04a082cca90ffe2dbf168b4dafe8e70200009cceaa55aba86fdf4778011e440d1ad4979c06caca300c9a3b17e517fc4af4d0272af2899598f6c0507e0100c0eb76edda458f3fde9ffaf77f9c5ab7be44761c2883a54b979a7f6f007ed45c55d5fab9b9b9ebcafb89152abf9d3a65c5c5c4b0d48a7c2e0000c0b9141515d1f0e123e8a1877ad355575d293b0e9cc38c1905b223401862cc2a4ec48e2befe755a8fc464753978a7e2e000040598895205e7c710ceddbb78fba76bd46761c3883e2e2629a3bf77bd931200c31666492bfca2f630c0b320200805fbcfbee7bb47bf71eead9f34e2c85168044f1150518c0ffd8152d5ab4b02f59b2a4a43c9f55d1b3b728bf0000e0375f7ffdb57906b84f9fde64b5e2178f81242f6faaec0810bea2ebd5abd79e1f6795e793cafd0ce272b91a5b2cb6fae5fd3c000080ca98356b16eddfbf8f060c7882a2a2a264c7016eedda75e6fabe00b230661127647d5b7e15c58ab3be000020c5a245bff2f2fb240d1f3e94aa56ad2a3b4ed8cbcbcb931d0140f4d227cbf30915f8dd11e6fb0200803c622de0279e18404f3d358262636365c7095b870e1da26fbf9d293b06c0a52e972b9ebf10db53d64f2857f9753a9d568723da59fe5c000000deb37efd0673373851806bd4a8213b4e58cacf9f8e0bdd20105814c526bae9e765fd847295dfc8c8e8147ea856de5400c1a861c306f4c823fd883185148591c56231af34176f5b2ce2be6383a86c579f1b86c75cbaa9b4d4431e4fe9f1dba57fdd278e1e8f878e1c39c2470995941ca1a3478ff271c4bc5d525262be2dde7ff8f06173881f3c276e1715fd7dbbb0b0f0af213e1e20146ddebc851e7ffc091a3972049d77de79b2e38415f15c35654a8eec180026c60c312bc137e597ff9cef52ee4400412a222282ead6ad2b3b46a589f27ba2088b5f5316161699b7fffcf34f3a70e0001d3c78d01ce2f6fefde2ed3ff9fb8ebd2dca364020dbb1638759809f7a6a78487cbf060bb1bcd9ce9d3b65c700388e752ecf479773ceafd1a9ac67b9002030d86c36aa56ad9a39caebc0813f69efdebdb46fdf5ef3b877ef3e73b9a963b7f7d2ae5dbbf9d849c5c5877d901ca06cf6ecd9434f3c3190468c184e0d1ad4979c263c4c9af485ec0800276ba4695a1db7dbbda92c1f5ce6f29b9292624b4c4c6a5ff15c00106c6262aa9a2339b9de593f4e9c39deb56b975986c5d920717be7ce5db47dfb76dab66d9b594e007c69fffefd3460c0401a366c28356dda44769c90f6f3cf0b69f5ead5b26300fc0363ac133f7c5c968f2d73f94d48486ac30f552a1a0a0042577474b439ead7af7fdaf78bf9caa2086fddbad52cc3dbb61dbb2de66c8afbc5fc4180ca122fc2060d1a6c9e014601f69dfffef733d911004e43f17ef9650c531e00a062ec76bb391ff3747332c5bc625182376dda648ecd9b37f3e366dab87103a65340b989f9ec83070f310b7093268d65c709394b962ca1df7fff5d760c80d3b9a2ac1f588ef2cbcafca000006525b6aa15d32a4e9d5a611886799678ddba75e62e52ebd7af37c7d6addb70a618ce4a5cd879e20c300ab0774d98305176048033393f2d2d2d71faf4e9dbcff581652abf8aa2585455ef50f95c0000652396954b4a4a3247fbf67f5f6e70f870092fc36be88f3f56999b1d88b9871b376e4221867f4001f6be850b17e2ac2f043266b74775a4322c7956a6f29b9eaeb522acef0b00012022c24e175c7081394e38b910af58b182ff805e6e2e8105e10d05d8bb70d61702ddb129ba5e2abf8a429d2a9d0800c0474e2ec45959ba799f58614294e0e5cb979b47718618eb16879f130558ac03dcb8310a7045cd99f39df99b1680406618659ba25ba6f2cb18c3940700082af1f1f1949adac11c82587162e5ca3f68f1e2c5b474e9525e8a5760f7bb30210af0934f0ea691239fa2468d1aca8e1374c48bc60f3ffc50760c8073628c9a6b9a16e376bb0f9cede3ca587ee932efc402009043ac38d1bcf945e610441916f317972c596a0e315d426c310da1491460b10ac4a8514f53bd7ad809ae3cdcee5c7379428020a030c6c4d2bc0567fba07396df2e5db26b4746129e290020a48832dcb2654b7308454545f4ebaf8bcd8b7ac422fe98331c7ac496dd4f3e39889e796614d5aa95243b4e5010bb3c7efae97f65c7002833c360eda8b2e5d76e372ec3fabe0010eaa2a2a2a85dbbcbcc2188b586172efc998f45e654094c91080d625bee81039fa4679f1d45356bd6941d27e04d9830c1dc3c0420589465b6c239cb2fa63c004038aa53a7b639b2b3b3a9b8b8987ef9e517fae18705b460c102f30c22042fb1fdf6c081c7ce0057af1e2f3b4ec01217b84d9b962f3b064039316f945ff3f4310040d88a8c8c34d71a1643ac272ce60afff8e302fafefb79e6461c107cc4dfdba04183cc39c0d5aa6125cf53894d665e7ffd0df3081064123333331b4c9d3a75ed993ee0ace5d7e9745a1d8ee84bbd9f0b002038298a42175d749139eebcb3877976ecbbefe69a63fb765c14144cc4e62862158851a346527474b4ec38012537378f56ac58293b064085288a4d9cb8ad58f98d8a8a6ac10f55bc1d0a00205488b563c5e8d1e30e7329b5b9734511fe8e76ecd8293b1a9481d83e7bc890a1f4d45323cc79df40b47bf71efaf0c309b26300541863e6d4874fcef4feb3965ffec96dbd9e08002044356ddac41ce28cf0b265cb68e6cc59e6e60062992d085ce245cbc8914fd3d0a143c86a2dd30aa021ed8d37dea0c2c242d931002a8c313a6b7f3dc777b9728937c30000848b1353237af5ba877ef8e1475e8467d24f3ffd8cb584039458e6eeb9e79ea7fefd1f37a7b6842b317d67debcf9b2630054d6c5fcfbd8e2f1784efb847b8ef26bb4c2326700001567b3d9e8f2cb53cd21d64c2d2828a0fcfce9b471e346d9d1e014a2f48d1d3b8e1e7aa8b7ec2852ecdbb78f5e7bed75d93100bca14a5a9ad6941f7f3fdd3bcf587e8f5fec76b1cf62010084999898aa74cd35579b63f9f2e566099e33670e15171f961d0d8efbe69b19e6c56f3d7bde253b8adf8d1fff1a96f1839061b31962f642f9ca6f4444c4f9fc80d9ff00003e70c1051798e39e7beea6d9b3679b57d7af5973c68b93c18fbefaea6baa5ab52a5d7f7d77d951fc46fc4602d31d20b430517e3f3edd7bce587e19b362be2f00808f891506323232ccf1db6fbfd3942939bc84ccc3dc60c9264cf8886540e4ad000020004944415417e06872b95cb2a3f8dcd6ad5be9f5d7df941d03c0db5a9de91d672cbf8ac2507e0100fca859b30bcdb167cf1e9a3a759a39c476bc20c76bafbd4155aa4453a74e1d6547f119b169cb0b2fbc48454545b2a30078d9997bec592e7813732570b11b0080bfc5c7c7d3cd37df64feda5d5c7d2f7e0dbf7af56ad9b1c28ed8dd6ccc9897a85ab5186ad9b2a5ec383e21ce7063330b0851d5d3d3d3ebe5e7e76f38f51da72dbf8aa23055d5cf78ba1800007c4fac397be595579863f1e225f4e5975f9acba581ff1c3d7a94468e1c656e83dca85143d971bc4a6cd1fdf9e79364c700f019bbdd2ecefe96adfc666464d4e187385f87020080b2b9f8e216e6d8b061237df5d557e6061a478e1c911d2b2c8829016217b8e79f7f9692929264c7f18a1d3b769867b501429b22762afefad47b4f5b7e19b335f3791e000028b77af5ea52efde0fd2adb7de425f7ef9154d9d3a154ba5f9c1fefdfb69f0e021bc003f47b1b1b1b2e3548a78d1346ad4b374f0e041d951007ccc386d9f3dc39c5ff1c198ef0b0010a8c4bc60b116ad98172c5688983c790ab651f6b16ddbb69b6780c5140887c3213b4e858d1bf72aad5ab54a760c009f330c76d1e9ee3fc39c5f3aed070300406011ebd18a8be3c4c6196eb79bbefe7a32eddf8f8d0a7c45acc53c72e4d3346cd850734e76b0993c793215147c2b3b06805f3046e79f6e9be3337ce7324c7b00000822e24c64f7eedd292b2b8b7272dce69408ecd6e51be2e2c3d1a35fa0c71f7f8cff700d9edf922e5ab488de7df77dd93100fc294255d546fcf88f254dfe557e8faff480f20b001084222323e9baebae254d53cda910629934ccedf4beb973bfa7b7de7a9b7af5ba47769432d9b871a339cf179ba740b8310c45cc66387bf975b95cb5f9a19abf42010080f7899de36eb8e17acacad2cd022ca643141616ca8e1552c45ceb1a356a50b76e5d6547392b71b1deb06123f0f70f61cabce8edcb93ef39ddb4079cf505000811623a8498132c4ab058d35514362c91e63defbdf73e55af5e9daeb8a293ec28a775f870098d183192b66fdf2e3b0a80148cfd7b2aef69caaf82f20b001062c4857177ded9c32cc11f7ffc09cd9851606e6d0b95f7d24b2f535c5c9cb90e732011531c9e79e6195ab16285ec280012fd7bb9b37f955fde909bf8270c0000f89bf835bd5827b86bd76be8c30f3fa2f9f3e7cb8e14f48eed02f7342f9aa3a84183fa92d3fc6decd871d81110805863713d1b7fb16f9cb8e774d31e1af9311100004850b76e5d1a38f009fafdf7dfe9edb7dfa1952bff901d29a889f9b4c3860d3737c14848a8213b0ebdf3cebbe6d97d00a0e8ccccccf3f871eb893b4e577e1bfb2f0f0000c874e18517d20b2f8ca6993367d2071f4ca05dbb76c98e14b476efdefdd736c855aa549196434c6b11173902c05fc489ddd397df9494145b626252b2df2301008054575e792575e8d0c15c1f585c18575c5c2c3b5250124b8a3df5d4d33462c430299b604c9af4057df2c9a77effba0081cd224eec7e77e2ad7f7c67d6a85123f9d4fb0000203cd8ed767379b48c8c74faf0c309f4cd3733c8308c737f22fcc3d2a54be9e5975fa17efdfafaf5eb8ae5ecde7fff03bf7e4d8060a028ec1f537a4f29ba564c7900000873b1b1b1e64571999999f4e69b6fd28a152bcffd49f00f3367cea29a3513e9b6db6ef1cbd713677c517c01cec4f847bffd47f9b558182e7603000053d3a64d68f4e8e7cd0ba744b1dab76f9fec4841e5b3cf3ea3c4c49a949e9ee6d3aff3bffffdcf5cb90300ce849db9fc1a86d13898f629070000dfebdcd949eddbb7332fa4cac971638bdc72183ffe357379b9d6ad2ff1c9e37ff0c187e61c6d0038ab334f7be0bdb7a17fb300004030103bc5dd7d774f4a4f4f370bddb265cb64470a0ac7369a78969e7d56ac01dcc06b8f2be662bff6daeb949737d56b8f0910c2e25c2e577c5e5ede1ef1c6a917b7d593100800008244bd7a7579997bda9c0af1de7befd1fefd0764470a78454545346cd8087ae185e7cdad902b4b6caaf1e28b6368ce9cefcefdc100709cad2effe374e597d59590060000828c980a71d9656dcd5fbb4f9b968f5521ce41ac012c0ab038031c151555e1c73974e8103dfdf4285abc788917d301843e8bc5233aeeafe2f65fe5372525c591989854f997a400001016a2a3a3e9fefbef338bf0abafbe46ebd6ad931d29a0ad5dbb9697dfe769f0e027495194727ffece9dbb68e8d061b461c3061fa403086d1e0ffb6b76c35fe537212101677d0100a0dc2eb8e0027ae9a517cd0d32c4060b252525b22305ac9f7ffe99de7cf32dfacf7fee2dd7e7ad5ab58a468c18497bf6ecf1513280d0a6287fcf6eb0fe7da782f9be00005021168b85aebbee5a4a4ded40afbe3a9e7efd75b1ec4801cbedcea5ba75eb92a6a965faf8d9b3e7989b66e0450540c51906fdbbfc1a865217ab9c01004065242525d1534f8da0e9d3bfa177df7d8f0e1e3c283b52407aebadb7a956ad5a74c925adcef831621ef5471f4da4cf3efb9f1f93018426de71ff5d7e4fbe130000a032d2d2ba50dbb629bce4bd43b366cd921d27e08825d09e7df6397af1c5d166093e95b8b0edf9e75f30a749008057fcbbfcf2d798fc4e9cfa050000efa856ad1a3df2485fead831d5bc206eefdebdb22305145170c53c5eb1049a5847f90471e1e0c891a368dbb66d12d301849cda0ae7e14e5eeaacb6b438000010b22ebbec326adebcb9791678c68c19b2e304944d9b36d1e8d12fd0a0414f92d861554c1779e38d37e9f0e1c3b2a301841a7be7ce9d13f871fb49e597254a8b03000021ad4a952ad4a74f6fbafcf20e346edc7873dd5b3866c1829fccf59277edda8d2922003e64b3d944d73db9fc524d59610000203cb469d386c68f1f47efbcf32ee5e74f971d27604c9af485ec0800214f5114f344aff5f81b4c5575945f0000f03931bff5c1071fa00e1d3ad0d8b1e370161800fcc23014b3eb9ae5b773e7cef1fc60939a080000c2caa597b6a6575f1d6bce71fdf6db99b2e3004088638c4e3ef31b89b3be0000e077622e70dfbe0f53fbf6edcdcd31f6efdf2f3b12008428c330fe2ebf160b2e7603000079dab76f47cd9a5d6816e079f3e6cb8e0300218831f6f7b48713a7810100006411eb020f18f00415147c6b4e85282c2c941d090042cbdf677e898c9ad8e00200000281d37915356f7e11bdf8e2185ab6ec37d9710020749c5c7ea986c420000000ff50b3664d7afae991f4c5175fd2c4891fd3d1a34765470280e0575dfc717cda038b959b050000e09f1445a1ebaebb965ab7be84468f7e91366edc283b120004b738f187597e0d836219663d000040006ad8b021bdf4d28bf4de7bef534e8e5b761c00085e55f98b6acbf133bf462ce6fc020040a0b2dbed74efbdbde8e28b2fa6575e194b070f1e941d0900820fcbc8c8a8767cce2f8b939b050000e0dcc492688d1b37a2e79f1f4dbfffbe5c761c000832a5a5d6d813ab3de0cc2f000004858484047ae699513461c247f4f9e79364c701802062b5969e28bfb8e00d00008287b818ee8e3b6ea7a64d9bd098312f53515191ec48001004f873c789f24b28bf00001074c4b6c8b56bd7a191239fa62d5bb6c88e030001cee361b156a7d3697538a2a36587010000a8887af5ead28b2f8e36e701fffcf342d9710020b0c58933bfa2f862c22f000004ad2a55aad0e0c183e8edb7dfa129537264c7018000c51855b5da6c3687ec200000009525e601f7ea750f2525259925d8e3f1c88e04000186311665e54f1628bf00001032b2b2744a4c4c34a741141717cb8e030081c561b5582c51b2530000007853dbb629346ad4481a3a7418eddf7f40761c00081c0e31e717677e010020e4346edc98860d1b468f3fde9f0e1f3e2c3b0e000400c330a2aca5a5cc61b1c88e020000e01d5bb76e35577df8e9a79f68f1e22574e4c811d99100204030460eaba2304c7b000080a075e0c0015ab66c192d5ab498162e5c48dbb66d931d09000217a63d00004070d9b163072d5fbe8217dedff8584aebd76f901d09008207ca2f000004ae3d7bf6d0ba75eb68f5ea35b472e51fb462c50adabb77afec580010b4589495318f9d48919d040000c2d8eeddbb69d3a64db479f3163e36f3c2bb9ed6af5f87951a00c0db22acbcf85a65a7000080d0545a5a4afbf6ede3633f2fb2fbccdb3b77eea25dbb76f1e34edab163273feea0e262acc60000be67186411c5176b3d000080b9235a515111151616f1325ac46f17f351c8df2e346f1f3b16991b4788a5c3c410f79ff85871fce7fdc558620c00028d28bf1e0ba63d000084065138fffcf34f3a78f0201f87f8f893bf7d900e1d3a640e715bdc276e1f7bff41b3d48a81a20a00a18e315e7e3d1e6651d07d010002d6d1a347cd0bbfc4855e7bf7ee3b7edc6bce871553094ebe0fdbf902009c99619055acf38b39bf000012959494d0f6eddbcdcd19c41ab5624eac980f7b6cecc2ea0600005e72fcccaf61e105587616008090275634d8b061236ddcb8818f4d7c6ce485779b7956170000fcc262150d58760a008050222e1c13e576f5ead5b466cd1a5ab56a35ad5dbbd69c570b00005261b5070080ca12178ffdfefb725abe7cb9795cb9720596ee0200f8fff6ee043eaaea60fff8b977924042440404b75afb5adff66f6bab55dbb75abb50593233891b0a6add77abb675695d6addb52222ee6b155c71034966c98223821bc61d516b1145ad4000d9b3cedcf33f67926842f66466ce9d99dff7e375ee64993c2499c93367ce3dd79d72722cc5740a004827fa00b4254b9688b7df7e47bcf3cebbf1d15d29a5e95800805ed023bf31d32100c0edf4f261afbdb648bcfaeaabe2bdf716b32c1800a4a7983ee02dca016f00d0919eceb070e14bf14d8ff4eab3950100d29794aafcaae2cba33900b4d0d317de7bef3d5155f5bc78e5955744535393e948008004b12c1165da030088e679bc91c80b62f6ecd9e2bffffdca741c004012c4477e05e5174016d3737783c190983bb794f5760120c3595673f98d9a0e0200a9a6d7e29d37ef79f1d8638f537a01207b30f20b20fbe8d51aeebbef3eb17cf9e7a6a30000524ac672f4dc0756fa05900d366fde2c1e7cf021515535cf7414008011963ee04d36aa1dd3490020a9162d5a246ebffd4eb161c306d3510000e634e55896aca3fc02c8547a1587193366c60f68030064372945ad9ef35b6b3a080024c39a356bc475d7dd20962e5d6a3a0a00c01d28bf0032d3c71fff475c7bed7562ddba75a6a300005cc2b2445d8ee3d875b66d3a0a0024ceabafbe2aa64e9d261a1b1b4d470100b84bad5eed81915f001963fefc17c5f4e9b78a588c551c01001dd4e6388ea8f5784ce7008081abacac1277dc71a790ea593d00005b537f1fea727272627542d07e01a4b7850b5fa2f802007aa2477e9d5a0f43bf00d2d85b6fbd25a64dbb85e20b00e8567ca9b32fbffc72f377bffb3dd35900a05f962f5f2efef9cf29f1f57c0100e88e65599b73162f5edce8f797e883de0a4c070280bed8b87193b8e69aeb445d5d9de92800803420a55c9fd3b2bf5e507e01a4113dc561ca942962d5aa55a6a31893939323f2f2f2e29b6ddb424f61d39796c5593b3ba37f67a474442ce688a6a6a6f8ab057a393cbd32885ba6cc6cb3cd3662c890216a4f0ac7d15b2c9eb735abdedc92154847b6fd6df9d5abc0ef64320c00f4c533cf3c23de7df73dd331926ed8b061629f7df6167beeb9a7d865975dc4c89123d436325e707521d225ce719cf8c77e5b8a2c41ff6daff95bf36d696c7d92909b9b1b7fd2a0bf77fa8c80faa4289f7df69978ebad77c4871f7e28366edc98d29cdb6fbfbd983a758aa8ad6d5e855467d4d96ddb5239f5939ddcf8939e0d1b36889a9a1a9575b9f8cf7ffe13bffcf8e38f59e20fe8817abc6c37f20b0069419fbdedb1c79e301d23a9ce3aeb4cf1bbdffd365e6c070d1a142f3c5bd3a54dbf0f89b1e38e3bc637fd44e3e0830f8e8fb2eaf23b63c64cf1eaabafa52c477d7dbdd876db6dbbfd18fd7ebdedb1c71e2aebefe35380060f1e24de78e34d75df784c7cf1c597294a0ba497582ca7b5fccaf57aa40000dc4e8f7666f2492cf448efcc990fc5477429b6e6b44e27292c2c147ff9cb9fc50517d862e2c4a34cc7ea941e1dde76dba1f1fd030f3c205e880381809833e739c3c900f7696adabc2e5e7ea5b4d6f312198074f0c413b3c4175f7c613a4652ecbdf7dee2b2cb2e89bf244ff1758ffcfcfcf8e5c30fcf14f7dd77bf78e9a5970c27eadea851db8b638e395aecbcf3cef1b5af017c6bd3a64d1be2e557155fa63d0070bd2fbffcaf983d7b8ee918493176ec583171e2e162f0e0c1a6a3a00bdb6d374c9c7df699ae2fbf9afe3dfaed6f7f139fc73c6bd693a6e3006eb1b9bababa8939bf00d2c6bdf7de97b1ebf99e7bee1f59a5210de8d51866cd7a5c4c9e7c8ce9283dd2af1e4c9a749478f6d9d9f169340064bcefc6cbafe3c8b5fa485200702b7d20cf3befbc633a4652e803dbf4c1554c75480f0d0d8de2c73ffeb178fffdf74d47e9913e50f2faebaf15175df437d3510017b0d6eaffc7cbaf6dcb551cf006c0adf48a073366cc301d2369f4fcccbe145f7db0df962d5bbe1929d6cb7535aff39b135f128b11e4cee9e5ccf4ef927ef5a0f552d3df2fbdb66e6fbf6fc3876f179fa292acf2ab47975b97ad6b5d83585fea4de7d6d7f5ef4b6f7f6776df7df7f8ca20997a9028d00735fa7ff1f21b8b5935ea7e0100aef4f2cbaf88e5cb3f371d2329be3da941f75a8bcb6baf2d120b162c8caff3ba72e5caf888b15e1a4b9722ca4dcf74c1d54f14f488a85e1a6cd0a0c1f1b575478f1e2d7efffb3162a79d768cafa3dc939ffef4a72d6bf026f68413cb962d13c5c587b4cbab375d5e75665d78f57c5e3dfff880037e29264c98f0cd494ebab3efbe3f13afbf5e9dd0ac40fa91f1b322c5cbafc7c3c82f00f77aeaa9a74d47489a3df6f87e8fc545af35fbe4934f8bd2d2d214a5ca5c6d47511b1a1ad45b36c64f16b164c912118944c40e3bec206ebae9c6f80a0fdd8daceacfd5cba06ddab429e9795b47acf5bcddd65379eb273e1f7ef891f8d7bf1e12656573e3ff1e4f17a358fa9581dffffef7945f643d7557fab6fc46a3d15539397966130140275e7ffdf5f819b732d577beb34bb723bfbaf4e892b370e1c214a6ca5eba545e72c965e2f2cb2f133bedd4fd894f77d965e7f8cfc6343d52acd7861e3e7c78971fa37fcf806c6759d6b7d31e2a2b2bd77abd7efd7a19931f00b84a268ffa6afff33fbb77fb7e3da277c30dff644a430a7df9e597e2e28b2f15f7de7b8fc8cfef7ce9393d323c62c4881427eb9a3ee3e11fff785697af22f4662a0790e9a46c33edc1719c98df5fb246ed8e369a0a00daf8e8a38fc4bffffdb1e91849f5ddefeedaedfbf5093d28bea9b76edd3ad1d8d8d065f9d525531f48f6d24b2fa73859e73efef8dff1e931fa0c819d699de79ca94b0502bde1386da63d687a1e8465517e01b8472010341d21e9b6ddb6f3b2d26afefc175394045bfbf4d34fe367ddeb8a9b467ebff8e24b515050d0e5fb75e9d507c6517e91cd2c2bf6edb487e637c81a0e7a03e0167ae4cd2da36ac95458d8f57c5f7d50d5dab56b5398066dad5cb9aadbf78f18d1f51cdb54d3af0ee803dbbaa24baf2ec7b5b5b5294c05b84b6363ced623bfd6572c0d09c02d2a2a2ab3e2e57e3d1ad715bd8c993e000b662c5dba54fd7f7c97efdf76db6d5317a617ba3b518a5e2eadbb9161200bc41c6773fbf2abee175f98cb0300dfd22b1c545656998e91747a1ea62ef85d1da4a497b8dab469738a53a1951e75d7cb8b7535a2dadd131713f42b05dd955f3de717c85e7245241289cffb6933f22b3fe7ac4000dc409fc678f5ead5a663249d7eccd545bfbbf7eb1358c08cc6c626557ea35d965fb79d8e5a17f5aee827588306b9abac03a9657d33c8db76ceef17ccf905e00691c80ba623a4841e89eb696a47364cfd70ab86867a2165d74f4e7273dd5526bb3b98cdb2ec6ee7040359a063f98d46ed2f78450480690d0d8d62d1a245a663a444f3e971bb7f3f47e79ba39f787437329f93e3aea5f1bb7ba2a45fd8f578f8238fec25a5ec587e1da75ebdb1f3f50c012055de7df75d515fdf603a464ae897a26537ed57bfbfbbf285e48a46bb1f75efe9b4d4a9d6d3141a8fc75d798154b22cf979ebfe37e5b7b2b27283df5fb251ed0e35920a0094b7df7edb748414eb66e8b757ef47f2c81e47e6dda4bb27523aab9efa00642b29ed8e23bf2df43b7e94da3800f0ad0f3ffcc8748414735781c2b7ba2b9300d28b65395d95dff8416f945f0046e8f9ad9f7df699e91800800cd3d0d0d055f9b596a53a0c00b45ab16205ab1b0000126dcbf3cf3f5fd37aa55df9751cb9d4b679090e80192b5670363300406249293e7154c96dbdbef59cdf4f529c0700beb16eddd7a623a4dce0c183bb3c8b5b41417e8ad30040e6b12cb9b4edf59cf6ef74d43bddb56e2180ecb16edd7ad31152ca7162e2a28bfedaedc7c4622c7506000321a5e8bafcd6d5d52d2b2828d48fb4ac870220e5366fde623a424ae9f58c972e5ddaf307020006a2ddcc8676e5371289d4fbfd25ff55bbdf4969240010fa0978ade90800800cd3edb48766fa032cca2f8094ababab331d010090611a1b1bbb2fbf525a4b2d4bfc2e759100a059636393e9080080cc523f6fdebc2fdbbea143f955c5970968008c884629bf0080845ae6286ddfd0c9c8aff8d065a72b0790259a9aa2a62300dfb0e27f0c39c53190e63edcfa0d1dca6f53935c929747fb05907a9cdd0d00904852ca0fb67e5b87f23b6f5ef033afd7af0fb92e48492a0068b1d52b538051b6ed6919fded9cfaa39ac23400fac75ab2f55b3a945f3d2fc2ef2ff948edfe2c259900a00565026e62db7ac9fbaecb2faf5400ee67594ecf23bfcdf410b145f9059052fa8c67805b0c1a94a70a30e51748635129e5c75bbfb1d3f2eb386289cd39de00a41803bf7093c183f385c7e3e9f2fd2ccd07b89bfa9bf24930186cd8faed5d8cfc8a0e43c400906c4c7b809b1416168adcdcdc2edfdfd0509fc23400facab26487f9be5aa7e557caa82abf5ddfe101203928bf708f912347743bf2cb190901b7b33a1dccedb4fc5654547ceaf5fab7a8dd2149cd04006d30f00b37d965975dba7dffd75faf4b511200fda1fea6bcdfd9dbbb98f3ebc4fcfe92f7d4ee2f939a0a000097da7df7ffe9f6fd1b376e4c511200fd6159cedb9dbdbdab39bf9afe04ca2f0020ebe8e90e3befbc73b71fb37cf9f214a501d00f9b42a1d0d2ceded14df9d56d99251f0000d9e7a0837ed5edfb1b1b1bc58a152b539406403fbce77471e6a4ee467edf49521800005c4b175fbfdf27f2f2f2bafc98dada5ab161c3fa14a602d01752ca4ea73c685d965f75c77ebfa0a0502f62c8b20f00808c3772e448f1b39ffd4c9c7cf28962c890ee8ff7d6a73efee28b2f53940c40df597d2fbf9148a4dee72bf9d0b2c44f92130a00d093c183078bfcfcfcf8a6f7070d1a2472723cf1f567f5e9772d4b6fa653a6075d583d1e5b7dff724561e110317cf8703162c408b1ebaebbaacbe1f1efe7d0a1435b4e6bdcbda6a646b179f3e614a406d03fb1be975fcdb2f490b145f9058014d87df7dde32fb9efbfff7ef151485d741b1a1ae2a7d1d52700b154cbd55b73e96dded72cda6f8f5abf5ffa40b6de94dbee44a35131776e698292014882c6cf3fffbcd3135c68dd96df9621e313121c0800d0428fe04e9e3c591c71c461a2a9a9293ebadb56414181a164e88a3eb9454545a5e91800ba243f58bc78716357efedb6fcc662b2dae36144010092411f50f5d8638fc447785b4725e16e7575f5e295575e8d1ff006c0b55eefee9ddd96df86862d6f151414eae6dcf521af00803e1b3bf66071de79e79a8e813e8a4422e29e7bee351d034037a4b41675f7fe6ecb6fcb416fef5a96d83fb1b100207bedb0c30ee2c4139951964ef448efbffef590f8e4934f4c4701d0a3d86bddbdb78739bff183ded40d58945f004890fbef67e4305de89359e829290f3cf02f515535cf741c003ddb100e873feaee037a2cbf7ae858ddef796d0e0012e017bff8797c89acc2c242d351b095868646b5d50b7d5228bde4d93befbc239e7d76b678efbdc5a6a301e8bdd7bb3ab35bab1ecb6ff3d03107610040221c79e491bd2ebe7a7933fd72bb5eea4caff3ab97e8d22b0de8e5cff4725b7a731c19ff38744f7f8fa474d4f7d2898fe646a34d62cb965ab169d326f1f5d75f8bd5ab57c72fd7ad5b2fd6af5f2fd6ac59633a3280fee976beafd663f90d87c3cbbc5eff6ab5bb7d4222014096d2cb9aedbaeb777afcb8fafafa78295bb870a1a8acac8a97b48d1b378a1e06330020eb398eec76beafd663f9550fb6d2ef2fd12dda9f90540090a5f419c5f45abe7a14b72b7ae431180c89279f7c3285c9002023c8fafa2d031ff98ddf9294af599645f9058001d0676dd36bfb7667d9b24f28be00d03f4b2391488f73967a557e1d472c60ed750018985d76d9397e428bae6cd9b2454c9b363d8589002093c805bdf9a85e955fdb765e17c253a776bb7ead0e00d0ad5d77dd35be6c56573c9e9cf8dc5e0040df496925aefc0683c1869679bfbf1d482800c8663beeb863b7ef7fe5955752940400328f94d1c495dfe61b940b2ccbfa6dbf130140961b32a4a0dbf7af5cb93245490020e37c1e0a853eebcd07f6bafc0ad1bba1640040e7f48913baa2d7a15db972550ad300404679b1b71fd8ebf25b53b3e2d5d1a3776c54bbdd1faa0c00e8544141d723bffac40b9b376f4a611a00c8244eaf07697b5d7eababab6bfdfee23784b00ee85f2800c86efa24175dd1676babadad4b611a00c828892fbfcde2531f28bf00d00f39395d3fe4ea690ffab4c500803e5b1108043eeeed07f7a9fcc662f2798fc7bab8ef9900009e6e164cd7e5578ffe0200fa463d7c46faf2f17d2abf0d0d5b5e2a282864bd5f00e887eed6f8d51cc749511200c824b2aa2f1fdda7f21b8944ea7dbe9285eaf17b5cdf420100ba2bbf7ae4576f00803e91d16863f2ca6fcbd7505fc0a2fc020000c0b40f2a2a2abeeacb27f4b9fc3a8e55d5cdb4350000002025a4ecdb9407adcfe5b7a222f09ed7ebd72bb18feeebe702000000896325bffc3a8e237dbe927996258eedebe70200000009d2108b35f6facc6eadfa31e7578bcffba5fc020000c09457cbcbcbb7f4f593fa557ef55175b9b983f461c9ddafdb030000002481e3c88afe7c5ebfcaaf3eaaceef2f794bedeedb9fcf0700000006c271ac407f3eaf9fd31ee2f417a4fc02000020a5a4149f959797bedf9fcf1d40f97554f9b5afe8ffe703000000fd21fb35eaabf5bbfc8642a137bd5eff0ab5bb637f6f03000000e82bc711c1fe7e6ebfcbaf5ef2ccef2fd15ff8d4fede0600a015c70f03402f6db66de785fe7ef240e6fc2a8e2a34e973650000200049444154bf36e5170006c8b22c61db146000e88994625e30186ce8efe70fa8fc46a3d1aa9c9cbc7ab53b7820b7030090223737cf740800703d29fb3fdf571b50f9d50b0bfbfd257ad8b96820b70300d9cee3f1889c9c01be18070099cf1122161ac80d24e091d6992d844df9058001d0e577f0605e4403801ebc1a0a85560ce406065c7ea594732d4bdca3763d03bd2d00c85679797962e4c811a6630080ab398e7c76a0b731e0f21b0c0657fbfdc50b84b07e37d0db02806ca50f781b3972a4e91800e05acd0706eb19070393a00966966ee1945f0018801ffef007a62300806b398eac0e0603cb077a3b0929bf4d4d0d73727307dda676ed44dc1e0064a3ef7def7ba62300806b4929073ceaab25a4fc5654547ce5f797bcaa760f4cc4ed0140361a3e7cb8e90800e05ab19835e0f9be5a22d7d5d16d9cf20b00fdb465cb16f1a31fed29962cf9c0741400701529c57b1515a5ff49c46d25b0fc3acf5a96e766a9d20100fa6ec89021e2cc33cf14e79e7b9ee92800e032035fe5a155c2ca6f201058de32f5e19789ba4d00c836858585629f7df6116fbffdb6e92800e01a96256725eab6127a3a2129c5e39645f90580fed26bfd9e7cf289e2e69bd789cf3efbcc741c007083370281c0c789bab18496df58acf1a99c9cbc5b127dbb00904d76db6d3771d555578ad9b3678bb9734b4dc70100a31c473e9ec8db4b68492d2f2faff1fb8be709614d48e4ed0240b6193e7c3b3179f26471eaa9a788a79f7e465455cd134d4d8d62ddbaf522168b998e8724d167fad3a7baee8f8282826edffffdefef2ede7ffffd1e6fa7bebe5e70fc0e5c443de4353e99c81b4cc208ad6ee7945f0018a8c2c221f1cb238f9c284a4a8ae3a5243f3f5f44a351f1f5d75fc78b705d5d5d7c6b6a6aa214bbc0860d1bc4238f3cdaefcfdf65975dc4b46953e33febbecac9e9fa4f7a6e6eae38e49092f8d61d5da08f38e2c8f8ef13e006ea79d87cbda46e226f33e1e557ddf19fdb76dbed6ad56ef74f410100bd3668d0a0f8a6e9d1415d52745182bb2c5dba7440e557abadad15db6cb34d821235b36d3bbe9a484feaeafa5eba816492523e91e8db4c78f95db870e1269fafa4ccb2c4a444df36000000b246437dfd96842d71d62a2907a6a996feb86559945f000000f48b9422148944d627fa7693527e57af5e191e3d7ac71ab53b2a19b70f000080cc6659cecc64dc6e52ca6f75757593df5ff298dafd4b326e1f000000196d95124ac60d27713d5ee721216cca2f000000faea313d989a8c1b4e5af90d04028bfdfe9237d4ee7ec9fa1a000000c83cd1a8782859b79dec33b1cd10945f000000f49294a2babcbcb4e733b2f45352cbefc68df2f1a143ada96a777032bf0e00000032854cdaa8af96d4f2bb6041d93a9faf642e6bfe020000a017eaebeab624fcc4166d257bda831eba7e88f20b0000809ec939c958dbb7ada497dff2f24095d7ebff54ed7e2fd95f0b000000e92b1613f727fb6b24bdfc3a8ad75b7c9f6d5b3724fb6b010000206d7d5451119c9fec2f92f4f2ab394ed383b69d7795dacd4bc5d703000040dab9c7711c99ec2f9292f25b5e5e5ee3f717cf16c29a9c8aaf07000080b452bb71a37c38155f2825e5b799bc9bf20b0000804e3ca957094bc5174a59f90d04020bfcfe92256af747a9fa9a00000070bf584cdc93aaaf95c2915fbdec99bcd7b2acdb52f935010000e06a6f86c3a5afa7ea8ba5b4fcd6d56d79a4a0a050affa3024955f170000006ee5a46cd4574b69f9d58b16fb7cc50f5b9675562abf2e0000005c69edaa55ab1e4fe5174c69f9d562b1a6db7272f228bf000000b8afbababa36955f30e5e5b7bcbcfc23bfbf24ac768b52fdb5010000e01a4df5f5e2ce547fd194975f4dcad874cbf2507e010000b2967c66debcb2ffa6faab1a29bfe170b8caebf57fa076f734f1f501000060562c664d37f1758d945f7dea3a9faff856cbb2ee35f1f501000060d4aba95cdeac2d23e557aba959f9e8e8d13b5eaf764798ca0000a9a49ef89b8e00002ee11819f5d58c955f7d649fdf5f729fdabdc454060048a568342af2f2f24cc70000d33eafadad9d6dea8b1b2bbf5a6dadbcada0c0fa8bda1d6c320700a4422c16331d0100dc605a2412899afae246cb6f2452b6d2ef2f99a976cf3099030052a1aeae5e6cb3cd36a6630080496ba3d1c6074c06305a7eb558ac696a4e4ede69524adb74160048a6cd9b378951a3b6371d03008c517defcef2f2f22d2633182fbfe17078a9df5ff28cda3dca74160048a6cd9b8d3ede0380695beaeab6dc6e3a84f1f2ab45a3724a4e8e45f90590d13efffc73f1939fec653a060018221f8c44226b4ca77045f92d2f2f7bd3ef2fa952bb634d6701806459bd7ab5e90800604a932abf379b0ea1b9a2fc6ab1989ce2f158945f0019eb8b2fbe10f5f5f562f06016b801906de493814060b9e9149a6bca6f385c36cfef2fd167faf8b9e92c00900cfffdef57a2a1a181f20b20dbc868d4bad1748856ae29bf9ae3c8ab6ddb0a98ce0100c9f0d5575f896db7ddd6740c00482929c5b3e5e5a5ef9bced1ca55e5b7bc3c18f27afd6fa8ddfd4c67018064d00578a79d76321d030052455a9673b5e9106db9aafc3a8e23fd7eff5542d865a6b30040322c5ebc98f20b209bcc0e04028b4d8768cb55e5570b854241afd7ffa6daddd774160048b4e79e2b15071c7000677a0390156231718de90c5b735df9d5a3bf3e5fc95596254a4d67018044fbf2cb2fc5860d1b28bf00b2809c1d0e97bd6b3ac5d65c577eb5703810f07afd6fa9dd9f99ce02008976d34d53c59429378a418306998e020049138b59ae9aebdbca95e5578ffe7abdc557d9b635d774160048b465cb3e15efbfbf44ecbb2fcfef01642629c59c70b8d475a3be9a2bcbaf565e1e2c2b2af2575b96d8df74160048b42bafbc4a9495f1fc1e4046d22b3c5c613a44575c5b7ef5e86f5151f1a51e8f55653a0b0024c3d9679f23eebaeb0ed3310020a1a4148f0783ee5ae1a12dd7965f4d9ff5cde72b79deb2c4ef4d67018044d3a73b3ee490c3c4cc990f8961c386998e030089101522e6da515fcdd5e557b32ce732216cca2f808ce4388e38eeb813c4d9679f257ef5ab03590502405a9352de1f0c063f319da33bae2fbf81406091cf57f29c6589434d67018064b9ebaebbc5b3cfce16175e78bef8e10f7f28eaeaea447e7ebee95800d017b552c65cb7aeefd65c5f7e35c769fa7b4e4e5e897a36619bce0200c9b26ad52a71d1457f8befffe4273f11e3c61d2c76df7d77316ad4a87819d66cdb1683070f16b9b9b926a322894c2e81979b9b16b5002ea57adaeda1506885e91c3d498bdff27038bcc4ef2f794ced1e673a0b00a4c27befbd17df345d78f5748821438688edb71fa9f687aaad501416168aa143878abcbc3c9193e3111e8f471f6802432ccb12ebd6ad1bd06dd8b6255e7c7141fcb64c8846a3ea77294734353519f9fa486beb1d273ac57488de488bf2ab45a38d57e4e4e41da57659151e4056d1f382f559e1f4f6d5575f998e83245abaf41371db6db79b8e01f4c7947038fcb5e910bd9136e5b7bcbcfc53bfbf583d2258179ace020000806f7cb16edddae9a643f456da945f6de34671fdd0a1e224b53bc27416000000e857a7e4a52fbffc729de91cbd9556e577c182b2753e5ff1559665dd663a0b325f4dcd6a3173e6c3a6636495b56bd79a8e0000e89b37cacb838f990ed11769557eb59a9a95f78c1ebdc3394258ff6b3a0b329b2e62cf3cf3ace9180000b89873813e2bafe9147d9176e5b7bababac9eff7ff5595dfe74c67010000c856528a39c1606081e91c7d9576e5570b040273fdfe92f96af7b786a3000000641dcbb29a9a9ae4df4ce7e88fb42cbf5a342a2fccc9b1aad5ae99c510010000b294e3c8bb2a2a4aff633a477fa46df92d2f2f7bd3ef2f7e5075df534c67010000c8226b366d9257990ed15f695b7e35299d4b2ccb7384da1d663a0b0000403690525caa57e0329da3bfd2bafc0683c1d57ebfff0a21ec5b4d67010000c8026f84c3817f990e3110695d7eb5dadadabb0a0a869c2a84b597e92c000000994ccad8b98e3ee77a1a4bfbf21b8944a25e6fc979b62d5e309d0500002083cd080683af990e3150695f7eb550a874becf57f2a4658949a6b300000064a00d0d0d75179b0e910819517e9bc52e14c2e3573b434c27010000c82452ca2babaaaa5699ce910819537e83c1e0977e7fc9d56af746d359000000328594e2bdbaba2d7798ce912819537eb555ab56dc327af40e7fe0e0370000808490aafc9ea98fb1321d245132aafc5657573779bd2567d8b6785970e6370000800151c5f7de50a8f455d3391229a3caafa67f403e5fc9bd9625ce349d050000208dadacabdb7c89e910899671e557d33fa88282c243d5ee0ea6b3000000a42329c59f2391c87ad339122d23cbaffe41f97c257fb12cf184e92c000000e947960783654f9a4e910c19597eb560b07496df5f7c8210d604d359000000d2486d63a3f8a3e910c992b1e557d33fb8bc3cf19e60ed5f000080debaaab2b26c99e910c992d1e557ffe0fcfe92cbd4ee74d359000000dc4e4a515d57b7799ae91cc994d1e5570b8502b71715f9275a96f895e92c0000006e6559569310b15332694ddfce647cf97514bfdf7f8a10f63bea6abee93c0000006e24a5bc2610082c369d23d932befc6aea07f9b1df5f7285da9d623a0b0000800bbdbb6ad58a7f9a0e910a59517eb5502830cdebf54f54bb3f379d050000c045a252c64ed267ca351d2415b2a6fc3a8e132b2a2a3ad9e3c97d535d1d643a0f0000804bdc180c06df361d2255b2a6fc6ae1707889cf577cb56559d799ce020000609e5c2ca5738de914a99455e5570b8783377abd3e9f10d601a6b300000098a25777686c94c75754041b4c6749a5ac2bbf2dd31f4ef07872f5f07ea1e93ce8c8e3f18831637e673a46af45222f88582cd6afcf2d2c2c14bffce5ff89afbe5a21962c5992e064d96da79d7612ab56adeaf0bba47f5e524afd586028d9c08c1d7bb0e908035655356f409faf1f237ef0831f889d77de294189cc19e8f722d5f2f2f2e28f779dddaf860d1b26d6ae5d6b2819fa433d0e5e5e5151f68ee91ca99675e5570b87c34b7dbee20bd4339e7b4d674147b3663d216cdb8a3fc8ba5d6363a39834699238f5d4d3faf5f98f3df6887af091a2aeae569c77de9fc49a35fce14894030f3c401c7ffc71eddea60bef79e79d2b0e3bec88b42bbffbefbf9f38e59453d2bef0e9effbe4c993c59ffef467b179f3e67eddc6638f3daafe2fc59021e97df2ce868606b1df7efb8a1b6eb8d174945e2b2c1c2266ce9c117f02a9fe867ef3767dbf9a32e526b170e14b06d3a18f1686c3c1a9a643989095e557533ff0fbbd5e5f891096cf74167cabac6caee9087da20bfae8d1a3c4e38f3f268e39e6d83e7dee69a79daa4abead3621b6d9661b71efbdf788238e38324949b3cb71c7fd4178bd451ddeaebfdf9a7ed271e28927ab271d75a98ed66f454545695f7c35fd33d86ebb61f1573cfa33ea79fdf5d7899c9c1c316890fb9f1cf764d0a04162cf3df714a3468d12353535a6e3f468871d761053a736af18dab6f8b63af3cc33447e7e81a8acac4c7534f4dda668b4f104fd6ab8e92026646df9553f7039664cf1a90505e23d75757bd379907ec5b7ad6db629148f3efab0f8c31f8eeff5e7b4163124d671c71d1b2fbe7a4a49570ad41dffa1871e14279d943e05f8cd37df8c8ffe668268342a56ae5cd9a7cfd145f1baebae15bbeffe3ff1f29b29f4bf6bfdfaf5a663f4a8b5f86ebbedb65d7eccd0a143c50927e8575ba42ac055a90b873e9352fcb9bcbcfc53d3394cc99c47907e8844ca56fa7c2567a827b0b34d67c9667aeede29a79cdce1ed4d4d4d221673ef4bd339399e767f84f51f8599331f520ffe27194c95ddfef0075d7cbded8aaf7e69bdb3223c6448819831e34171e28927a9025c9fca98fdf2d147ff56bf5f0f8b49938e52d73a8eba0d941ec8d345ac952ea8d168320685a4b8f4d2cbc4d2a59ff4e9b3ce39e76cf1fdefef1e9fefdb4acf3d6d6a4adfb3b04ae988d34e3b3d3e7dcacd3a2bbe6da73dd4d7d78bc18307c7f79b0bf0f1ba5c89aa2a0ab01ba99fcd73c160e983a6739894d5e55753bf00737cbee207d59db863fb424afce31f7f8f3f60b6a5ffa84d9a7474fc01d6adf483fddd77df193fc8a3d5f0e1c3c5830ffe4b9c7cf229069365275d7c7dbe8ec577ce9ce7c4534f3d1dbf3e7bf633223737f79bf7eb11e019339a9fb0e83fe06ef6c9279fc4b7b9734b9372bfb8ecb24bc47efbb51f593efae86312fe757461d24f6cfb62d4a8edc5de7befddaef8ead1d2f3cefbb3d8b46953a223a64c7fbe17a9367af4e84e8bef9a356bd4e3dca9f1eb7abeefaf7e75a0c8cfcf8f5fff76049802ec422b63b1c6334c87302debcbaf168b359d979393a7973efba1e92cd9481790b6fef39fa5e2820b2e7475f1d574b1bae28aabc455575dd1ae008f1c39423cf0c07de2d4534f37982ebb1c7bec319d16dfe79e2bfda6f86a871f3e5195e167db8dd8ebdfbfd6117bb717602d5965a9a66675bbebfac0343dfaeb06faa1a0ed3421fd73bae5965bc5ba75eb0ca6ca7c7a2ef2cd37dfd461aa43dbe2abdd76dbedf1cbb605587f8e2ec07a747bdebce753171add51f724e7f8f2f272f74f304f32caafa27e11b68c1f5f7c745e9ebd4815aef43f8a22cd7df4d147ae2fbead962d5bd6a100ebd11cfd4743cf612e2e3ec470c2cc77cc3147abefb3bfdd91ffbaf8ea11d2279f7cb2c3c7eb951e3a2fc033c4f1c79f103f021feea65f196a6870ff139574a647dba74d9bdaa1f8ae5ebdba5df16dd555013ef1c413e2fb1460f3d4dfd529c16080a17841f9fd865ee7ceeff75f24847dabe92c482f5d15e04d9b368b7df6d947bcfd76d69c3132e58e3e7a7297c577d6ac8ec5b755e705385f3cfcf04c0a30b2def6dbebe27b738f23be5bd305583ff6e902dc3a07b8b9009f181fbd7ffe790ab03972514dcdcacb4da7700bca6f1ba150e876afd73f56edfa4d67417a692dc0d75e7b757cd9322d3797bb5732e9e25b5252dc61aa43696959b7c5b7555705f8914766c657ed70fb41484032e8e27bcb2d9d17df934eeaf958865b6fbd2d5e80f53adbdf16e0a1ea734f8cef53808dd8a81ece8ea9aeae76f704f314e2af731bcdcb9f8d39a9a0a0f05d7535fd17d4444a7dfdf5d7a623648dc9932775597c9f786256af6f4717e0e79e9bddee402afd92ed238f3c2c8e3b8e028cecd25c7ca7c5cb6a5bfaac6dbd29beada64fbf35be7ac80107745680a52ac09104a6464f54b539b3b2b26c99e91c6e42f9dd4a241259e3f7fb8f13c2d6abaf277e3d210003a28bef2187940cb8f8b63af4d0c33b14603d02dcba6e330518d960e4c8915d165f7d4298bed207246a9d15607d4c873e1d3252e2a150a8ec09d321dc86f2db89402010f1f98aafb12ceb1fa6b300f8963e95f4d6c577cb962da2ac2cd0afe2dbaab302ac478075013ef6d8e35cbf1c153010baf84e9f9eb8e2dbaab9005baa00ffb2dd1ce0934f3e293e07f8851728c049f64134da78aee9106e44f9ed42381cbccaebf5ff52ed8e359d058010471d75a42aa91d477c0381a078fcf1810f6ce8023c77ee9c764b6ae902ac4f854c0146a61a3162842abeb774527cbf1e50f16d75cb2dd3e353207ef9cbf605f89453f4c980a42ac0f307fc35d0a9cd52c68ed4ab59990ee24694df2e388acfe73bd6b2ecb7d433d75d4ce701b25973f13db443f10d0643aa9c3e9eb0af73c82187755a801f7ffc5171cc317fa00023a3e8e27bdb6dd33b9c64481fbfa0cf7c9828d3a64d17e79f6fa902fc7f5b15e0e6724d014e3cc791a78742c10f4ce7702bca6f3782c1e0eaa2a2e2491e8f7851f0bd028c38eaa889f1e2bbcd361d8befa38f3e96f0afd75901d67fb029c0c8245d155f7de290649ca27ddab45bc40517fc253e02dc7a1aedd602ace700cf9fff62c2bf6616bb9379bedda3d0f5201c2e7bc5eb2dfeab6d5bd34c6701b2cd9147eae27b5887e21b0a25a7f8b6a200239375577c8f3ffec4a47ddd9b6fd605b87904b86d013ef5d453e273805f7c91023c50eafb582d44ec02d339dc8ef2db0be5e5c1e95eafff40b57b84e92c40b6d0c5f7b0c33a2fbe8f3c92bce2db4a17e0d2d2e7e26b96b6a20023dd0d1f3edc48f16d75f3cdd3c485175e20feefff7ed1ae009f769a5e4a4daa02bc20e91932d85acb728e0c04829ca5a70794df5ed0ebfffa7cbe932dcbde4b08eb7f4de70132ddc4894774517cc32929bead4a4a0ea5002363e8e27bfbedb776527cd7a7a4f8b69a3af5e62e0af0a9f129100b162c4c59960ca2bf75c7078381e5a683a403ca6f2f0583c18d454545877b3cb9afaaabdb98ce0364aac30f3f5c6ded8baf5ece2c1c2e57c5f7d194e7e9ba003f268e3efa18118d46539e09e8abedb6dbaed3e2bb7efdfaf829bd534d17e08b2eba50fce2173fdfaa009f16dfa700f78d6abe5706836521d339d205e5b70fc2e1f0129fafe404f53770b6e92c4026d2c577e2c4c3bf3945b4a68b6f28542e1e7ef81163b974012e2b9bdbee6d83070f124f3cf1380518aea78bef1d77dcd669f13deeb8d417df5637dd34b543011e36acb900eb61cc850b5f32962d9da86fd59c7038788de91ce984f2db47c160e91c9faff86a4e800124961eededacf8ea11df871f7ed860b266c5c587745a8067cd7a5c4c9e4c01863b75557c376cd860b4f8b6d205f8af7fbd48fcfce7fbb72bc0a79fae478075017ed96c40f75bb271e3ba13f4f44cd341d209e5b71f9a4f80e1db5b08abc47416b84bdb3384a1f70e3becd0f83cdfce8aefcc99e68b6fabce0ab0fe83ad0bf0a449478b582c662819d0d1b061c354f1bd5d15dff633f574f1d5a7ee768b29536e127ffbdb5fc5fefbefd7a6000f5305f8f4f83e05b84beb62b1a643172e5cb8c974907443f9ed879613601c67599ed7d4d5ff673a0fdc61dab4a9f11322b4d22fdba167baf8ea951db62ebee5e515ae2abeadba2ac04f3ef9040518aea1e7cfde75d71dedee57da860d1b5d557c5bdd78e3944e0bf019679c115f06eda59728c06d5996e5c462f2e87038bcd474967444f9ed277d009cdfef3f54087b91ba3acc741e98f5e8a30fc7ffd8b495939323de7efb6d4389cc3bfae8c9e2e0830f166d8e13eb60fbedb78f1f69bef51f68bd8ac2af7f7d507c73a3d5ab57c7b3b7d55c8067a9023c99023c00fad593f3cfff8bb0ed6f7f7176dc71c7766b2eebfd3ffef16cb17cb9bb0e6c5fbd7a8d78f0c18792fa35f4590ef5e988db7e7f3aa3ef435bdfafb4c6c60695f18164c51bb0d6e2db4a3fae9e79e619f17d0af0b7a494978442a515a673a42bcaef000402818f55013ec6b23c01f58b68f7fc19c844baf01414e4b77b9b5e33f3ce3bef3294c83c7d26a75ffffad7ed0a4b57b6dbaee373473de2938e060dcaa3000fc00107fc327ec6af51a34675fb71fa1596ef7ce73bf1cd4d1a1b1be34f8ccaca0249b9fdfff7ff7e282ebef862317cf876fdbe8dad9fb4a583d602ac5f4d7bf9e5574cc77183c743a1c04da643a433caef00a9021cf6fb4bce57bbd34d6741eacd99f36c7c84b72d5d7cafb8e22af1e9a79f1a4a65de6ebbedd6abe29b8974017eeaa959e2a8a328c07da57f6f7a2abe6e969797274e3ae9c4a495dfd1a347b75b02309bb41d01cee602acfaff6b75759b4fe100b781a1fc264020507aabcf57fc03cbb2ce329dc5ed4a4a8ac5dab56bdbad99baf541623ffef18fc4af7e7560aaa3f5891e81b8f8e2bf75783bc5b7d9ecd973e22f5d672b5d8228c07d376fdebcf8749974b662c58aa4ddf6a245af8bdcdcdca4ddbedbe957845a47805f79e555d371524efdb33f8bc51a0f894422f5a6b3a43bca6f82d4d56d39afa0a0f0fb6a77ace92c6eb5c71e7b88638f3d265e0cdad20f646dcbb07e29f3820bce4f75bc01a3f87eeb830f3e5425e6d86f7e8efa67ac377d7288bdf6fa71bb9ff7c68d1be3cb30bdf9e69ba6e226c4881123c56ebb7df79beb14e0be6b6c6c524f9a2e54f7a3cbdbfd8eb43e66e8df9fe68f6b8c5fd6d7bbab03e839c8975efaf7a4ddbe9ec77be8a187abaf71c937afacb4deb7f452615b5bb3668debe645f7d5befbee1bff39b7feec75013eebac33e307c1bdfa6a5615e08dea61a4b8bcbcbcc674904c40f94d10f54c2c3a6edcb823f3f206ebd763f6349dc76df4411a575ef90f515050d0e3c76e3d8d201d507cdb5bb56a55fcf2aaabaefee66d871c5222264d3aaa5da9d1ab3ae8d1be871e9a99f28cc9b0f52a10bab43dfdf49362e2c4a3f42a318652a50f7dd205bd6dbd1a819ea73a7dfab46f0a902e81d75c73ad58b2e40313318d695d4b5affdb5be9e90077df7d67878fddb4699338e9a45352962d993a5b05e2ecb3cf147a1de0575f7dcd6cb814d02b3b48199b5c5e1e78df74964c917e2dc3c52a2b2b378c1b575c9c9767e97b63fa1d5590449b376f567fb032f324001f7ffcb1b8e38ebb28beddd0c5f7a8a38eeab09c59454555c6145f4d2f83b6f5a990f5cbd44f3ffd9438f2480a30124bbf6272f7dd77759807ac8bef31c7fcc150aac4d3cba0e96966fbedb7ef5605f8ecf8a8f76baf2d329c30b9d4e3c69f83c140d8748e4c42f94db0cacab2655eaff7708f27f77975a7ccebf933b2c78c1933d483d5591d0a802e076da742d4d6d6a6cd1ab9fadfb26cd9328a6f37f43c6f5d7cdb2eb4af8b6f65a52ebec95d16ca047d2ae4ad0b705e5eae78e699a7180146c2e8e27bcf3d995f7c5bfdf39f378a4b2eb958ecbbefcfda9d094e2f79a7657001be33182cbbdd74884c43f94d825028f492cf5772bcfadbf784badafd628c5964fefc17e3eb346e7dc0863e3b565bfaa54c7dcacb74505757673a82ab1517178bc993277518f19d37eff9a4af876a52670558ffde53809108cdc5f7ee0ec557bfc29689c5b7d50d37fc333edff9673fdba7dd08b02ec07abc64d1a2cc2ac0eadf54160e07fe643a4726a2fc26493058faa42ac0bba8bf7de9d1e25244cf596b9db7d64a1781b6cb62ad5cb99252990174f13dfae8f6c5578feaebe2fbc003ff32982c3574019e3b774ebbdf6d0a30064a17df7befbd3b7e1c455bfa49a53ec834d35d7ffd0de2b2cb2e8d17e0d6570c75013ee71c5d801df1faebd58613268a5c5453b372b27a9ce068d924a0fc26912ac037fbfd25bbaaddf34c670152a9b8d8dfa1f8ea2734fae0b66c28bead0e39e4b04e0bf0b3cf3e2d0e3f7c62da4cef813bb48ef876567c274f3ec650aad4bbeebaeb3b2dc0e79e7b8eb8fdf63b32a1002f5545beb8bababad674904c45f94db25028f097a222ff4e9625269ace02a44273f19ddc61c4f7f9e79f17f7df9f3dc5b755670558af68327bf6331460f49abe3f7535e29b4dc5b7952ec07ffffba5629f7d32ae00d7c4624d45e17078b5e920998cf29b648e3266cc98e30a0a0a47abab07875a8a3d000017724944415499ce032493dfefebb4f846221171df7d0f184c6616051803a1ef4ff7dd774f87e2abef5bd9587c5b5d7bad2ec097c547805b8f2549f302bcc571a27e557c979a0e92e928bf29a0cfc6f2eb5f171f3274a8f592600d6064289fcfdb65f1bdf7defb0d2673075d809f7b6e76bb331a5280d1135d783b2bbe7a1ad1a449471b4ae51ed75e7b9df8c73f2e177beffdd30e05f8b6dbee10d5d5e951802dcb8ac562cea45028941e81d31ce53745162c285b376edcb8a2bcbcc1ba007fc7741e209174f13de698a3e373125b3517df1728be6d1c76d81162ce9c673b1460fd36fd3e0a30da1a326488b8fffe7b3b2dbefacc816876f5d5d7745a80cf3b2f7d0ab0e3c8d343a1b2a0e91cd982f29b429595959f4f9830615c4e4ede02c14930b0155d820e3cf000d3313a78f9e557ba7dbfd75bd449f1ad132fbc305f15dffb921d2fade872ab4bae1eed6d7b26435d8629c07da37fef74c14967ddddb774f17de081fb28bebdd47d01be5d15e0370c27ec9abacb5f180c963e683a4736a1fca6587979f94713261417e5e458117575688f9f80ac72e18517988ed08e2e62e79d77aeb8f3cebbc482050b3bbc5f9fae58cff36d5b7cf51fe7f9f3e78b7beeb9379551d386fe9eea690e9d15e0471f7d589c72caa9a2bebec16042f7d3c5f080030e886fe94aff1e9c73ce1fc52db74cef303775e4c89162ead4299d14df7a8a6f377401bee28a7f889ffef427ed0af0e9a79f260a0a0ac48b2f2e309cb053d7e995a14c87c836945f03cacbcbdef4fbfdc542d8e5ea6abee93c6e93ad235ffa60a8b60744b985fe2372d451477628bffaed871f7e58fc8f4a2b5d7cf588efdd77df93ea9869a5ab02ac9f449c78e289ae78e2e0a6fba13e57c8d671da7edfd295be0f4d9c38b143f9fdf39fcf1323468c68f7b6fa7a5d7c27a5325e5abaeaaaabc595575e217ef2135d809b7f4776d8610771fef97f7163f9bd331028fdbbe910d928fd1f3dd254201058e0f5161f69dbd67322cb7f0efaa416bbecb24b7c5f9f0063ddbaaf0d274a0d7d36265d30da9e05ccad56ac58d1e16d4d4d4d62fdfaf5df94dfe611df1729bebda47ff6471c7164fca417ada3547a9e7467dfeb5488c562ed7e1fdd74a29975ebd68b418332f36cf19dfdbcf5a97af7da6baf6f9e0c37343488238fa4f8f6d695575ed5a100af5dbbd670aaf6d45dedb17038c039000cc9ead2659a9edceef7fb4f10c27e5464f16990cf39e7bcf87cc7cd9bb788b7de7a4b9581d9a623a5c4638f3d1e1f51d5eb74bab500ebd1b6afbf5e2baebbee864edfffd7bf5e2c66cc78305e949e7d76767c43efe9b3bcdd78e394f8fcd53df6d823fe3b5159596524cb7df7dd1f9fc2a29f94ad5ebd464c9dea9e5762f513add34f3f53dc75d71daebdaff495be6fad5dbb263eed616b7a2478975d7616bff9cd6fc4db6fbf2366cf9e6320617ad36782d3abcf4c98303efefdec6cda9641819a9a1527399ce6d118caaf618140e071bfbf444f98bcdb741653f488933e15ac1e41d4235fd9442f7fa5ffdd6e7a89b92d5d34bafb996cd8b021fef27d7e7e7ed6fdec1265d1a2d7e39b1b7effdd7c3f5cb76e9d38e9a453e2a3a16ebdbff44577f7ad9a9a1a71cf3df789871f7ed4953f8b74d0d8d82866ce7c583cfdf433f17dfdaaa24b44d6ad5b7b5475757593e920d98cf2eb028140e93d7ebf3f4f08fb56d3594ccad607f974ff77eb2292eeff063770cbf7d02d393aa3e7bd661337ff2cd285cbbe870ba3d1c692975f7ed93d738ab214e5d7250281c06d3e5f719e65593799ce02000012ead50d1bd6f9162e5cb8c57410507e5d25182c9beaf797e8235fae379d0500000c9c94a2baa9a9be4815df4da6b3a019e5d7650281d21b54011ea476af309d0500000cc8db9b36c9f10b16546e301d04dfa2fcba902ac057aa02acd7f5b9c474160000d077528af71a1bebc62e5850b5ce7416b447f9752955802f550558ff7c2e329d050000f4c9fbb158e3d8aaaa2a772d308c38caaf8ba902fc579fafb8c9b2ac4b4d67010000bd21dfa9addd32361289ac319d049da3fcba5c30587699df5fa2d703640e300000eef6662c161da78a6f769caa344d517ed3809e03ecf315375a96759de92c0000a053af6fdc28272c5810668eafcb517ed344305876bdcf57d2605962aae92c0000a09d97a58c79172c086e341d043da3fca69160b0f466bfdfdf94ed67820300c045166cd8b0cecf3abee983f29b665ace04576fdbf6dd524adb741e0000b29594a2b2a666c561d5d5d5ae3a8f32ba47f94d43c160d97d3e5fc906dbb61e510538d7741e0000b28d2abecf7cfef9a7c72e5ebcb8d17416f40de5374d0583a54f1615156ff078ac67d4d521a6f30000902d54f1bd3f1c0e9ce5384ecc7416f41de5378d85c365e57ebf7fbc1076405d1d663a0f000059e026557cffa68aaf341d04fd43f94d738140e065afd7fb1bdbcea9505777309d0700804ca5faee25a150d93f4de7c0c0507e334028147aafa8a8e820dbceadb22cb19be93c00006412cbb21ce52c557cef339d050347f9cd10e17078e9f8f1e30fcccdcd0baabbe9dea6f3000090211aa48c1d1b0c069e351d048941f9cd201515155ff97cbedf5896adeea0d6c1a6f3000090e6be16c229d1530c4d0741e2507e334c3018dcb8d75e7bf9befbddddfea50af01f4ce70100204d2d6f6a92451515810f4d074162517e33905e73d0b6ede3bd5eff97eaeac5a6f30000905ee43b8e13f356548456984e82c4a3fc66a89625582ef17a8bbff078ecdb391b1c0000bd21e749e91c110a85369a4e82e4a0fc66b850a8ec2e9faf6485658947d5d502d3790000702f3973d5aa95a755575737994e82e4a1fc668160b0748ed7ebfdad6de7cc555777349d07000017ba3c140a5ec7c92b321fe5374b8442a1eaa2a2a25f783c39a52c850600c037ea54df3d21142a7bda7410a406e5378b84c3e12fc68c1973507e7ee1e396258a4de70100c0b05542388784428145a683207528bf592612896cb66dfb50afd77f93ba7abee93c0000982117abad3810082c379d04a945f9cd42fa1c8deae202bfdfffb16579ee94527a4c6702002055a414a18d1bd74f5eb870e126d359907a94df2ca69eedde5b5454fcb1c7633da5ae8e349d0700806493524e098783973a8e13339d0566507eb35c385cf682d7ebdddfb63d7338100e0090c16a1d479e1a0a953d613a08cca2fc42af04f1d9fefbef7fe0e8d13b3ca00af0d1a6f300009048528acfa25179584545d93ba6b3c03cca2fe2aaabab6b6ddb3ed6ebf5bf6359d60d9c110e009019e40b75755b8e8a44226b4c27813b507ef18d9685bda7f8fdfeb785b067a9fde1a6330100d05f52cae9aaf85ea48a6fd47416b807e5171d0402812a9fcff773cbb29f611e3000200de9f9bd678442658f9a0e02f7a1fca253c160f093030f3cf08061c386df6159d6c9a6f30000d01b528a7fc76262627979d9fba6b3c09d28bfe8d2cb2fbf5ca72e4ef1fb4b5e529777aa2ddf70240000baf3d4c68deb4e65fd5e7487f28b1e0502a50f151595bce5f18867d4d5ef9bce0300405b9665354919bb301008dc663a0bdc8ff28b5e09874bdf1d376edc7e7979831e540f33879bce03004033f965342a2785c381574c27417aa0fca2d72a2b2b37d8b63d71c204df9f3d1efb462965aee94c0080ac5621a5735c381c5c6d3a08d207e5177dd2b21cda2d7ebf7fa110b63e4b0ed320000029a5a739a8bf4797aad27b73cbdf25a0d728bfe8974020f0c641071df4b3a143b7bbdbb2c4b1a6f30000b2c652296347078381374c07417aa2fca2df5a8ea6fd83cf5752a90af01d6a7f1bd3990000994b4af19810b1b383c1e046d35990be28bf18b060b0f4e1a2a2a2573c9e5c3d0d623fd37900001967932abee7e8bf37a68320fd517e9110e17078e95e7bed75e077bfbbdb75425817a83759a633010032c2ebb158d3b1faef8ce920c80c945f24cce2c58b1bd5c5455e6f49d0b6c50cb5ff5dc391000069cab2ac9894f2dadadacdd7462291a8e93cc81c945f245c28543a7fdcb8713fcdcd1d7c9b6589e34de70100a41bf9b194cef181406091e924c83c945f24855e13585d9ce0f7fb4b85b0ef51fb234d670200a485bb56ad5a7951757575ade920c84c945f24957ad6feacd7eb7dc5b63dfacc70134ce70100b8d68a584c9e1c0e97959b0e82cc46f945d28542a115b66dab0eec3d5d087b8a7ad350d39900006e22673534d49f535555b5d67412643eca2f52a2e50c3cf78e1b372e9c9737e85e46810100ca0af517e2ac402030d77410640fca2f52aab2b2f2737551e4f5169f68dbd634b5bf9de94c000023666cdc28cf5fb020b0ce74106417ca2f8c0885ca6678bdde0adbceb95b5d3dc4741e0040ca7c1e8bc93398db0b5328bf3046cf05561787fa7c25932d4bdca6f6b7379d0900903c528a7b8488fd2d1ce6f4c43087f20be382c1d25963c68c995750507893ba7aa2e93c008084fb2016936786c3650b4d070128bf70854824b2465d9c545454fcb06d5b775b96f881e94c008001ab53dbf5cb977f3aa5e52ca08071945fb84a385cf682cfe7fba9109e4bd4d58bd536c874260040bf54c5624d6787c3e1a5a683006d517ee13ac160b0415d5ce9f57a9fb06dcfdd4258bf339d0900d06b358e232f0885ca1e351d04e80ce517ae150a85fe6ddbf6ef8b8afcc75996d027c7186d3a1300a07396653952cafb63b1a64bc3e1f0d7a6f3005da1fcc2d55a4e8ef1f0b871e3e6e6e50dfe87da3f4ff07b0b002e235f89c5a2e78642a1b74c27017a4289405aa8acacdca02e2ef0f97cffb22cfb5621ac834d6702008815528a8bc3e1e0232d831580eb517e915682c1e007ea62accf5732d1b2c4cd6a7f57d39900200b458590d3a574ae518fcbacd98bb442f9455a0a064b9fd97ffffd43a346ed70b1655917aa37e59bce0400d9404a51198dca3f5754947d683a0bd01f945fa4adeaeaea5a75f18f71e3c63d909737e83a21ac3f98ce0400196c892abe7f0d064b43a683000341f945daabacacfc5c5d1ce7f57a6fb3ed1c3d15e220d399002083d4a8ed8adadacd0f442291a8e930c040517e913142a150b5baf8b5dfef3f54085b2f8db687e94c0090c6ead5365dcad80dcceb4526a1fc22e3040281e7f6da6bafd0aebbee76b665597f576f1a613a1300a411a9fe7bacb1b1e1b29657d6808c42f945466a3987fcf471e3c63d949737581f10f767b5151a8e0500ae26a5080911fb7b30187cdb7416205928bfc8682deb035f3e76ecd83b060dcabf54ed9fa1b64186630180aba8d2fb92e3c84bc3e1b285a6b300c946f94556a8aaaa5aa52efee4f7fba709615f6959d6f1524adb742e0030ec5d219cbf07838180e92040aa507e91550281c0727571525151d154dbcebdc6b2c461a6330180014b55e9bd22140acd7214d3618054a2fc222b85c3e125eae2709fcfb78f109e7fa8127ca8e94c0090024b1d475e575fbfe551962d43b6a2fc22abb51cd4711825184086a3f4022d28bf80f8b6048f1f5fbc776eaeb85c08eb70d3990060e0e4c7525ad7d5d56d7e9cd20b34a3fc026d545494bda32e8ef07abd3fb1ac9ccb2d4b1ca1ae5ba67301401f7de838f2faf2f2e0138ee3c44c8701dc84f20b7422140abda72e8ef4fbfdff2b847d91da3f4eb0441a00979352bc6659ce8dea31ac9403d980ce517e816e0402818fd5c569e3c78fbf223737ef2f42587a9de06d4ce70280f664b9e358aaf496ce379d04703bca2fd00b1515155fa98b8bc68d1b776d4ecea0b36cdbfa93babe83e95c00b29765598e94ce534d4de2c696295b007a81f20bf441cb19e3fe3966cc98e9f9f9438e577f7c7409ded3742e005965a394f2c168b4f1b6f2f2f24f4d8701d20de517e887482452af2eeeb36dfbfea2a2a2b196e539575df7090e8e03903c9fa8d27b8710ce83c16070a3e93040baa2fc0203e0388e5417957ad307c749699d6b59d689ea7aa1d9640032c87cf568736b28142a63e50660e028bf4082b41c1c77ee9831632ecfcf1f72aa2ac167abebdf339d0b405aaa53dbaca626791bf37981c4a2fc0209168944d6ab8ba9b66d4f2b2af24fb02c7196ba5ea4368fe16800dcef2329e5bd9b3689990b1694ad331d06c844945f20495ad6d80ce96ddcb871bbe6e50d3e4ded9fa2b61dcd2603e0324d528ab996e5dc1d0a855e68994e05204928bf400a5456567eae2e2edf7ffffdaf1e356ac743d4fe99b66dfd5e4afec601596cb9da1ea8ad950f4422652b4d8701b205e51748a1eaeaea2675f18cde264c98f03d8f27f7c49603e476359b0c408ae8956266c762f2a18a8a6084b3b001a947f9050c69599ff30adbb6af1a3fde37c6e3b14e52d70f57db60c3d10024deeb6a7ba8b676f3ac96e302001842f9050c6b19f999a7b73163c60c2b28289c2c843c5108eb1786a301189855eabefc482c169d110e8797980e03a019e51770919611a17bf4e6f57a7f60599e632ccb3a465dffbee168007a679394628ee3c8271a1ab6cc53f7e9a8e94000daa3fc022e150a85fead2eaed05b5151c9cf6d5b1ead8af024c16a1180db340a21cba5b49ea8a959515a5d5d5d6b3a1080ae517e8134100e97eaf982afdbb67de1f8f1bedfd9b6d04558cf0f1e663a1b90a5f499d6164a299f709ce833e170f86bd38100f40ee51748232da7368dcf0fde6bafbdceda75d7ef1d6c59e230755d2f9fb6bdd97440c6d3ebf1bea0ee73736a6be5732c4f06a427ca2f90a6162f5edc285a4ea23166cc98b30a0a0a7e2d847d84685e316207b3e9808cd1a80aaf7ec2f96c6363dddcaaaaaab5a603011818ca2f90015a0eaa89e8cdb6ed73bd5eefaf54113e545df7ab6d0fb3e980b4b3416d158e23cbeaebb704589a0cc82c945f20c3b42c9db6a0653bdfeff7ffaf2ac2ba04fbd47690da724de6035cea1329659965c9b255ab562d6c39210d800c44f905325c2010f8585d4cd39b5e47383fbf7082658962757d82da869b4d0718a35f2d79456d412963816030f881e940005283f20b649196976f67e9cdb66dcff8f1fe7d3d1e314e5d1fabb6ff535b9ed180405249f544d09a27845325a58ca8c2bbd1742200a947f905b254cbca11afb76cd78e1933a6303fbff0d7aa208cb52c4b17e23dcd2604064c1f9cf6bc2aba6a8b558642a1cf4c0702601ee517405c2412d92c5a568fd0d70f3eb864e7bc3ca9d7143e48084b9562f143a301819e7dad9ebcbd24a558685972be2abb6fb73cc903806f507e01746adebcd2ffaa8b475b3631664cf10e0505f2d7525a075996f55bf5a61fa9cd321811a85145778165390b9b9aac055555c1f75a0ef804802e517e01f44acb82fe4fb56c62ecd8b1237273071f68dbd62f45f37ce1fdd456683022329b2eb5faa0b4d7d4eea26834fa526565e5bf55d795a68301482f945f00fdd2b2d87f69cb26f4017413264cf891bafcb9baf60bd15c88f5bc61db604ca4afd56a5ba4b7584cbe66dbceeb1ca006201128bf0012a2656ee57b2ddb03fa6de3c68ddb362767f03e9625f716c25297e267a279ee308f3d68437ea97e3fde513bef4829de6d6a926f5556962d339d0a4066e20f1080a4a9acacd467ca9adfb2c58d193366704141c18fd5ae2ac4f63eea526f7a84785b13199152fac4114b55d97dd771c4bbaae8be138dd6bf5d5555b5ca743000d983f20b20a5229148bdba78a3658bb36ddb2a2a2ada59c44bb0bda76589ffa7f65541b674291e66282afa4f97dcffa8ed7db57d2884f341346a7ff0dfff7efaf1e2c58b1b0d670390e528bf008c6b3968e9cb96adb2edfbc68f1fbf536e6eee0fa5b4beafaeeeae8af1f7f5bebe54d70b0cc445337d009afe79e9915cb5599fa81fe352cb723eaaa9a9f90fa70706e056945f00ae565151f195bad05ba4eddbf568f1d8b1637754c55895615b97e1ef4929765597bba832a636eb3beac3f28d84ce0cbadcea153ebe54dfd7cfd5f7f57329e5176a7f992ab84bebeaea96b58ce203405aa1fc02484b2da3c5adc578c1d6efd7e578dcb871dbab4b55843dbba8abba0cefd0bcc951525aa3f4be2a75a3457695647d60e26a55626b2c4bd688e682ab364bed3b7a6de72fd5f7f6f3d5ab57ff97d15b009988f20b2023b594e39a96edadee3ed6e7f30d551f3fcae3f1e822bc9de358c32c4b6f7abeb1dc5615437d395c5daa2d7e609e2ecb056d367d3d5527fcd073666bbfdd649d2af21b54d6f56a7fbd2ab5eb55767529d5dbf4755bbd5dac9332bababede53337f7e7035673d0390cd28bf00b25ecbfab17a5bda9fcfd7a3ccfbeebb6ffe36db6c53909f9f3f381af5e4e7e4c4725501d58fb139eafd762c66dbaa9ce6783c32c771f45b9cd6f58fa3b1981555d7158f6359d1a87e9be3e438eaf3631e4fac4e95d6fafc7ca7361c0e6fa1b802c0c0fc7fb46cb4f97ee3f6c80000000049454e44ae426082, '', '', '1-10', '09-09-2018 07:09 PM [EAT +03:00]', 'employer', 'https://platea21.blogspot.com/', '0e0ce2c32f1b101a0647eb616399272e', 'CM999999999');
INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`) VALUES
('Gorchor', 'Platea21', 'Male', '01', '01', '2018', 'gorchor@gmail.com', '-', 'Ing. InformÃ¡tica Y Sistemas', 'Tacna', 'Tacna', 'Tacn 01', 'Peru', '+51 948445199', '', NULL, NULL, NULL, '-', '09-09-2018 06:09 PM [EAT +03:00]', 'employee', '-', '0e0ce2c32f1b101a0647eb616399272e', 'EM333333333');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
