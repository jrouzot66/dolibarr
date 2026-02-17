--
-- Table structure for table `llx_workshop`
--

CREATE TABLE `llx_workshop` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `workshop_date` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `volunteers` text,
  `welcomed_persons` int(11) DEFAULT NULL,
  `first_time_persons` int(11) DEFAULT NULL,
  `phone_repairs` text,
  `computer_repairs` text,
  `digital_help` text,
  `other_repairs` text,
  `advice_diag` text,
  `sales_count` int(11) DEFAULT NULL,
  `partnership` varchar(255) DEFAULT NULL,
  `donations_count` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_modification` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
