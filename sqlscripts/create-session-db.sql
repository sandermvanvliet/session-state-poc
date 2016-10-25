CREATE DATABASE IF NOT EXISTS `sessionstate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sessionstate`;

CREATE TABLE `sessions` (
  `sessionid` char(36) NOT NULL,
  `size` int(11) NOT NULL,
  `value` blob,
  `expirydate` datetime DEFAULT NULL,
  `lifetime` time DEFAULT NULL,
  `isslidingexpiry` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sessionid`);

GRANT ALL PRIVILEGES ON `sessionstate`.`sessions` TO 'sessionStateUser'@'%' IDENTIFIED BY 'aaabbb';
