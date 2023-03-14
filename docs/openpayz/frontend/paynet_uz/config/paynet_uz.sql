CREATE TABLE IF NOT EXISTS `paynetuz_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` datetime NOT NULL,
  `transact_id` varchar(255) NOT NULL,
  `op_transact_id` varchar(255) NOT NULL,
  `op_customer_id` varchar(255) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `state` tinyint(2) NOT NULL DEFAULT 0,
  `paynet_transact_timestamp` datetime NOT NULL,
  `create_timestamp` datetime NOT NULL,
  `perform_timestamp` datetime NOT NULL,
  `cancel_timestamp` datetime NOT NULL,
  `cancel_reason` varchar(255) NOT NULL DEFAULT '',
  `receivers` text DEFAULT '',
PRIMARY KEY (`id`),
KEY `date_create` (`date_create`),
UNIQUE KEY `transact_id` (`transact_id`),
UNIQUE KEY `op_transact_id` (`op_transact_id`),
KEY `op_customer_id` (`op_customer_id`),
KEY `paynet_transact_timestamp` (`paynet_transact_timestamp`),
KEY `create_timestamp` (`create_timestamp`),
KEY `perform_timestamp` (`perform_timestamp`),
KEY `cancel_timestamp` (`cancel_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;