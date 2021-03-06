--  Logs table will hold the logs of the request(s) received by the server.
CREATE TABLE `logs` (
 `id` int(11) NOT NULL,
 `uri` varchar(255) NOT NULL,
 `method` varchar(6) NOT NULL,
 `params` text,
 `api_key` varchar(40) NOT NULL,
 `ip_address` varchar(45) NOT NULL,
 `time` int(11) NOT NULL,
 `rtime` float DEFAULT NULL,
 `authorized` varchar(1) NOT NULL,
 `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;