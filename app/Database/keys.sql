-- The table Keys will be used for storing the API key
CREATE TABLE `keys` (
 `id` int(11) NOT NULL,
 `key` varchar(40) NOT NULL,
 `level` int(2) NOT NULL,
 `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
 `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
 `ip_addresses` text,
 `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;