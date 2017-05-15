<?
include_once('../include/hgdb.inc');

mysql_query("CREATE DATABASE market;");

mysql_query("CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `desc` blob NOT NULL,
  `price` int(11) NOT NULL,
  `part` int(11) NOT NULL,
  `img_url` varchar(64) NOT NULL,
  `prev_url` varchar(64) NOT NULL,
  `spec` enum('0','on') NOT NULL,
  `number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `dataadd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='товары';") or die(mysql_error());

echo "таблицы созданы";

?>