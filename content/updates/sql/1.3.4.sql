CREATE TABLE IF NOT EXISTS `discounts` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(64) NOT NULL,
  `percent` DOUBLE DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;