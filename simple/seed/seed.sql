CREATE SCHEMA `[[SH_SCHEMA]]`;
GRANT ALL PRIVILEGES ON `[[SH_SCHEMA]]`.* TO '[[SH_SCHEMA_USER]]'@'%' IDENTIFIED BY '[[SH_SCHEMA_PASS]]';
FLUSH PRIVILEGES;

-- Adminer 4.8.1 MySQL 8.3.0 dump
use [[SH_SCHEMA]];

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET @SERVER_DOMAIN = '[[SH_WEBURL]]';

SET @maxReservationDate = CONCAT('31-12-', YEAR(NOW())); -- DD-MM-YYYY
SET @maxReservationDateYYYYMMDD = CONCAT(YEAR(NOW()), '-12-31 00:00:00'); -- DD-MM-YYYY


DROP TABLE IF EXISTS `ps_access`;
CREATE TABLE `ps_access` (
  `id_profile` int unsigned NOT NULL,
  `id_tab` int unsigned NOT NULL,
  `view` int NOT NULL,
  `add` int NOT NULL,
  `edit` int NOT NULL,
  `delete` int NOT NULL,
  PRIMARY KEY (`id_profile`,`id_tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_access` (`id_profile`, `id_tab`, `view`, `add`, `edit`, `delete`) VALUES
(1,	0,	1,	1,	1,	1),
(1,	1,	1,	1,	1,	1),
(1,	4,	1,	1,	1,	1),
(1,	6,	1,	1,	1,	1),
(1,	8,	1,	1,	1,	1),
(1,	9,	1,	1,	1,	1),
(1,	10,	1,	1,	1,	1),
(1,	12,	1,	1,	1,	1),
(1,	13,	1,	1,	1,	1),
(1,	14,	1,	1,	1,	1),
(1,	17,	1,	1,	1,	1),
(1,	18,	1,	1,	1,	1),
(1,	19,	1,	1,	1,	1),
(1,	20,	1,	1,	1,	1),
(1,	21,	1,	1,	1,	1),
(1,	23,	1,	1,	1,	1),
(1,	24,	1,	1,	1,	1),
(1,	25,	1,	1,	1,	1),
(1,	26,	1,	1,	1,	1),
(1,	28,	1,	1,	1,	1),
(1,	29,	1,	1,	1,	1),
(1,	30,	1,	1,	1,	1),
(1,	31,	1,	1,	1,	1),
(1,	32,	1,	1,	1,	1),
(1,	34,	1,	1,	1,	1),
(1,	35,	1,	1,	1,	1),
(1,	38,	1,	1,	1,	1),
(1,	39,	1,	1,	1,	1),
(1,	40,	1,	1,	1,	1),
(1,	41,	1,	1,	1,	1),
(1,	42,	1,	1,	1,	1),
(1,	43,	1,	1,	1,	1),
(1,	44,	1,	1,	1,	1),
(1,	45,	1,	1,	1,	1),
(1,	47,	1,	1,	1,	1),
(1,	48,	1,	1,	1,	1),
(1,	51,	1,	1,	1,	1),
(1,	52,	1,	1,	1,	1),
(1,	53,	1,	1,	1,	1),
(1,	54,	1,	1,	1,	1),
(1,	55,	1,	1,	1,	1),
(1,	56,	1,	1,	1,	1),
(1,	58,	1,	1,	1,	1),
(1,	59,	1,	1,	1,	1),
(1,	60,	1,	1,	1,	1),
(1,	61,	1,	1,	1,	1),
(1,	62,	1,	1,	1,	1),
(1,	63,	1,	1,	1,	1),
(1,	65,	1,	1,	1,	1),
(1,	66,	1,	1,	1,	1),
(1,	67,	1,	1,	1,	1),
(1,	68,	1,	1,	1,	1),
(1,	69,	1,	1,	1,	1),
(1,	71,	1,	1,	1,	1),
(1,	72,	1,	1,	1,	1),
(1,	73,	1,	1,	1,	1),
(1,	74,	1,	1,	1,	1),
(1,	77,	1,	1,	1,	1),
(1,	78,	1,	1,	1,	1),
(1,	79,	1,	1,	1,	1),
(1,	80,	1,	1,	1,	1),
(1,	81,	1,	1,	1,	1),
(1,	84,	1,	1,	1,	1),
(1,	85,	1,	1,	1,	1),
(1,	86,	1,	1,	1,	1),
(1,	87,	1,	1,	1,	1),
(1,	88,	1,	1,	1,	1),
(1,	89,	1,	1,	1,	1),
(1,	90,	1,	1,	1,	1),
(1,	91,	1,	1,	1,	1),
(1,	92,	1,	1,	1,	1),
(1,	93,	1,	1,	1,	1),
(1,	94,	1,	1,	1,	1),
(1,	95,	1,	1,	1,	1),
(1,	96,	1,	1,	1,	1),
(1,	97,	1,	1,	1,	1),
(1,	98,	1,	1,	1,	1),
(1,	99,	1,	1,	1,	1),
(1,	100,	1,	1,	1,	1),
(1,	101,	1,	1,	1,	1),
(1,	102,	1,	1,	1,	1),
(1,	103,	1,	1,	1,	1),
(2,	0,	1,	1,	1,	1),
(2,	1,	0,	0,	0,	0),
(2,	2,	0,	0,	0,	0),
(2,	3,	0,	0,	0,	0),
(2,	4,	0,	0,	0,	0),
(2,	5,	0,	0,	0,	0),
(2,	6,	0,	0,	0,	0),
(2,	7,	0,	0,	0,	0),
(2,	8,	1,	1,	1,	1),
(2,	9,	1,	1,	1,	1),
(2,	10,	1,	1,	1,	1),
(2,	11,	0,	0,	0,	0),
(2,	12,	1,	0,	1,	0),
(2,	13,	0,	0,	0,	0),
(2,	14,	0,	0,	0,	0),
(2,	15,	0,	0,	0,	0),
(2,	16,	0,	0,	0,	0),
(2,	17,	0,	0,	0,	0),
(2,	18,	1,	1,	1,	1),
(2,	19,	1,	1,	1,	1),
(2,	20,	0,	0,	0,	0),
(2,	21,	0,	0,	0,	0),
(2,	22,	1,	1,	1,	1),
(2,	23,	1,	1,	1,	1),
(2,	24,	1,	1,	1,	1),
(2,	25,	1,	1,	1,	1),
(2,	26,	0,	0,	0,	0),
(2,	27,	1,	1,	1,	1),
(2,	28,	1,	1,	1,	1),
(2,	29,	0,	0,	0,	0),
(2,	30,	0,	0,	0,	0),
(2,	31,	0,	0,	0,	0),
(2,	32,	0,	0,	0,	0),
(2,	33,	0,	0,	0,	0),
(2,	34,	0,	0,	0,	0),
(2,	35,	0,	0,	0,	0),
(2,	36,	0,	0,	0,	0),
(2,	37,	0,	0,	0,	0),
(2,	38,	0,	0,	0,	0),
(2,	39,	0,	0,	0,	0),
(2,	40,	0,	0,	0,	0),
(2,	41,	0,	0,	0,	0),
(2,	42,	0,	0,	0,	0),
(2,	43,	0,	0,	0,	0),
(2,	44,	0,	0,	0,	0),
(2,	45,	0,	0,	0,	0),
(2,	46,	1,	0,	1,	0),
(2,	47,	0,	0,	0,	0),
(2,	48,	0,	0,	0,	0),
(2,	49,	0,	0,	0,	0),
(2,	50,	0,	0,	0,	0),
(2,	51,	0,	0,	0,	0),
(2,	52,	0,	0,	0,	0),
(2,	53,	0,	0,	0,	0),
(2,	54,	0,	0,	0,	0),
(2,	55,	0,	0,	0,	0),
(2,	56,	0,	0,	0,	0),
(2,	57,	0,	0,	0,	0),
(2,	58,	0,	0,	0,	0),
(2,	59,	0,	0,	0,	0),
(2,	60,	0,	0,	0,	0),
(2,	61,	0,	0,	0,	0),
(2,	62,	0,	0,	0,	0),
(2,	63,	0,	0,	0,	0),
(2,	64,	0,	0,	0,	0),
(2,	65,	0,	0,	0,	0),
(2,	66,	0,	0,	0,	0),
(2,	67,	0,	0,	0,	0),
(2,	68,	0,	0,	0,	0),
(2,	69,	0,	0,	0,	0),
(2,	70,	0,	0,	0,	0),
(2,	71,	0,	0,	0,	0),
(2,	72,	0,	0,	0,	0),
(2,	73,	0,	0,	0,	0),
(2,	74,	0,	0,	0,	0),
(2,	75,	0,	0,	0,	0),
(2,	76,	0,	0,	0,	0),
(2,	77,	0,	0,	0,	0),
(2,	78,	0,	0,	0,	0),
(2,	79,	1,	1,	1,	1),
(2,	80,	1,	1,	1,	1),
(2,	81,	1,	1,	1,	1),
(2,	82,	0,	0,	0,	0),
(2,	83,	0,	0,	0,	0),
(2,	84,	1,	1,	1,	1),
(2,	85,	0,	0,	0,	0),
(2,	86,	0,	0,	0,	0),
(2,	87,	0,	0,	0,	0),
(2,	88,	0,	0,	0,	0),
(2,	89,	0,	0,	0,	0),
(2,	90,	0,	0,	0,	0),
(2,	91,	0,	0,	0,	0),
(2,	92,	0,	0,	0,	0),
(2,	93,	0,	0,	0,	0),
(2,	94,	0,	0,	0,	0),
(2,	95,	0,	0,	0,	0),
(2,	96,	0,	0,	0,	0),
(2,	97,	0,	0,	0,	0),
(2,	98,	0,	0,	0,	0),
(2,	99,	0,	0,	0,	0),
(2,	100,	0,	0,	0,	0),
(2,	101,	0,	0,	0,	0),
(2,	102,	0,	0,	0,	0),
(2,	103,	0,	0,	0,	0),
(3,	0,	1,	1,	1,	1),
(3,	1,	0,	0,	0,	0),
(3,	2,	0,	0,	0,	0),
(3,	3,	0,	0,	0,	0),
(3,	4,	1,	0,	0,	0),
(3,	5,	0,	0,	0,	0),
(3,	6,	0,	0,	0,	0),
(3,	7,	0,	0,	0,	0),
(3,	8,	1,	1,	1,	1),
(3,	9,	0,	0,	0,	0),
(3,	10,	0,	0,	0,	0),
(3,	11,	0,	0,	0,	0),
(3,	12,	0,	0,	0,	0),
(3,	13,	1,	0,	0,	0),
(3,	14,	1,	0,	0,	0),
(3,	15,	0,	0,	0,	0),
(3,	16,	0,	0,	0,	0),
(3,	17,	0,	0,	0,	0),
(3,	18,	0,	0,	0,	0),
(3,	19,	1,	1,	1,	1),
(3,	20,	0,	0,	0,	0),
(3,	21,	0,	0,	0,	0),
(3,	22,	0,	0,	0,	0),
(3,	23,	0,	0,	0,	0),
(3,	24,	0,	0,	0,	0),
(3,	25,	0,	0,	0,	0),
(3,	26,	0,	0,	0,	0),
(3,	27,	0,	0,	0,	0),
(3,	28,	0,	0,	0,	0),
(3,	29,	0,	0,	0,	0),
(3,	30,	0,	0,	0,	0),
(3,	31,	0,	0,	0,	0),
(3,	32,	0,	0,	0,	0),
(3,	33,	0,	0,	0,	0),
(3,	34,	0,	0,	0,	0),
(3,	35,	0,	0,	0,	0),
(3,	36,	0,	0,	0,	0),
(3,	37,	0,	0,	0,	0),
(3,	38,	0,	0,	0,	0),
(3,	39,	0,	0,	0,	0),
(3,	40,	0,	0,	0,	0),
(3,	41,	0,	0,	0,	0),
(3,	42,	0,	0,	0,	0),
(3,	43,	0,	0,	0,	0),
(3,	44,	0,	0,	0,	0),
(3,	45,	1,	1,	1,	1),
(3,	46,	0,	0,	0,	0),
(3,	47,	0,	0,	0,	0),
(3,	48,	0,	0,	0,	0),
(3,	49,	0,	0,	0,	0),
(3,	50,	0,	0,	0,	0),
(3,	51,	0,	0,	0,	0),
(3,	52,	0,	0,	0,	0),
(3,	53,	0,	0,	0,	0),
(3,	54,	0,	0,	0,	0),
(3,	55,	1,	1,	1,	1),
(3,	56,	0,	0,	0,	0),
(3,	57,	0,	0,	0,	0),
(3,	58,	0,	0,	0,	0),
(3,	59,	0,	0,	0,	0),
(3,	60,	0,	0,	0,	0),
(3,	61,	0,	0,	0,	0),
(3,	62,	0,	0,	0,	0),
(3,	63,	0,	0,	0,	0),
(3,	64,	0,	0,	0,	0),
(3,	65,	0,	0,	0,	0),
(3,	66,	0,	0,	0,	0),
(3,	67,	0,	0,	0,	0),
(3,	68,	0,	0,	0,	0),
(3,	69,	0,	0,	0,	0),
(3,	70,	0,	0,	0,	0),
(3,	71,	0,	0,	0,	0),
(3,	72,	0,	0,	0,	0),
(3,	73,	0,	0,	0,	0),
(3,	74,	0,	0,	0,	0),
(3,	75,	0,	0,	0,	0),
(3,	76,	0,	0,	0,	0),
(3,	77,	0,	0,	0,	0),
(3,	78,	0,	0,	0,	0),
(3,	79,	0,	0,	0,	0),
(3,	80,	0,	0,	0,	0),
(3,	81,	0,	0,	0,	0),
(3,	82,	0,	0,	0,	0),
(3,	83,	0,	0,	0,	0),
(3,	84,	0,	0,	0,	0),
(3,	85,	0,	0,	0,	0),
(3,	86,	0,	0,	0,	0),
(3,	87,	0,	0,	0,	0),
(3,	88,	0,	0,	0,	0),
(3,	89,	0,	0,	0,	0),
(3,	90,	0,	0,	0,	0),
(3,	91,	0,	0,	0,	0),
(3,	92,	0,	0,	0,	0),
(3,	93,	0,	0,	0,	0),
(3,	94,	0,	0,	0,	0),
(3,	95,	0,	0,	0,	0),
(3,	96,	0,	0,	0,	0),
(3,	97,	0,	0,	0,	0),
(3,	98,	0,	0,	0,	0),
(3,	99,	0,	0,	0,	0),
(3,	100,	0,	0,	0,	0),
(3,	101,	0,	0,	0,	0),
(3,	102,	0,	0,	0,	0),
(3,	103,	0,	0,	0,	0),
(4,	0,	1,	1,	1,	1),
(4,	1,	0,	0,	0,	0),
(4,	2,	0,	0,	0,	0),
(4,	3,	0,	0,	0,	0),
(4,	4,	1,	0,	0,	0),
(4,	5,	0,	0,	0,	0),
(4,	6,	0,	0,	0,	0),
(4,	7,	0,	0,	0,	0),
(4,	8,	1,	1,	1,	1),
(4,	9,	1,	1,	1,	1),
(4,	10,	1,	1,	1,	1),
(4,	11,	0,	0,	0,	0),
(4,	12,	1,	0,	1,	0),
(4,	13,	0,	0,	0,	0),
(4,	14,	0,	0,	0,	0),
(4,	15,	0,	0,	0,	0),
(4,	16,	0,	0,	0,	0),
(4,	17,	1,	1,	1,	1),
(4,	18,	1,	0,	0,	0),
(4,	19,	1,	1,	1,	1),
(4,	20,	0,	0,	0,	0),
(4,	21,	0,	0,	0,	0),
(4,	22,	1,	1,	1,	1),
(4,	23,	1,	1,	1,	1),
(4,	24,	1,	1,	1,	1),
(4,	25,	0,	0,	0,	0),
(4,	26,	1,	1,	1,	1),
(4,	27,	1,	1,	1,	1),
(4,	28,	1,	1,	1,	1),
(4,	29,	1,	1,	1,	1),
(4,	30,	1,	1,	1,	1),
(4,	31,	0,	0,	0,	0),
(4,	32,	0,	0,	0,	0),
(4,	33,	0,	0,	0,	0),
(4,	34,	0,	0,	0,	0),
(4,	35,	0,	0,	0,	0),
(4,	36,	0,	0,	0,	0),
(4,	37,	0,	0,	0,	0),
(4,	38,	0,	0,	0,	0),
(4,	39,	0,	0,	0,	0),
(4,	40,	0,	0,	0,	0),
(4,	41,	0,	0,	0,	0),
(4,	42,	0,	0,	0,	0),
(4,	43,	0,	0,	0,	0),
(4,	44,	0,	0,	0,	0),
(4,	45,	0,	0,	0,	0),
(4,	46,	1,	0,	1,	0),
(4,	47,	0,	0,	0,	0),
(4,	48,	0,	0,	0,	0),
(4,	49,	0,	0,	0,	0),
(4,	50,	0,	0,	0,	0),
(4,	51,	0,	0,	0,	0),
(4,	52,	0,	0,	0,	0),
(4,	53,	0,	0,	0,	0),
(4,	54,	0,	0,	0,	0),
(4,	55,	0,	0,	0,	0),
(4,	56,	0,	0,	0,	0),
(4,	57,	0,	0,	0,	0),
(4,	58,	0,	0,	0,	0),
(4,	59,	0,	0,	0,	0),
(4,	60,	0,	0,	0,	0),
(4,	61,	0,	0,	0,	0),
(4,	62,	0,	0,	0,	0),
(4,	63,	0,	0,	0,	0),
(4,	64,	0,	0,	0,	0),
(4,	65,	0,	0,	0,	0),
(4,	66,	0,	0,	0,	0),
(4,	67,	0,	0,	0,	0),
(4,	68,	0,	0,	0,	0),
(4,	69,	1,	1,	1,	1),
(4,	70,	0,	0,	0,	0),
(4,	71,	0,	0,	0,	0),
(4,	72,	0,	0,	0,	0),
(4,	73,	0,	0,	0,	0),
(4,	74,	0,	0,	0,	0),
(4,	75,	0,	0,	0,	0),
(4,	76,	1,	1,	1,	1),
(4,	77,	0,	0,	0,	0),
(4,	78,	1,	1,	1,	1),
(4,	79,	0,	0,	0,	0),
(4,	80,	0,	0,	0,	0),
(4,	81,	0,	0,	0,	0),
(4,	82,	0,	0,	0,	0),
(4,	83,	0,	0,	0,	0),
(4,	84,	0,	0,	0,	0),
(4,	85,	0,	0,	0,	0),
(4,	86,	0,	0,	0,	0),
(4,	87,	0,	0,	0,	0),
(4,	88,	0,	0,	0,	0),
(4,	89,	0,	0,	0,	0),
(4,	90,	0,	0,	0,	0),
(4,	91,	0,	0,	0,	0),
(4,	92,	0,	0,	0,	0),
(4,	93,	0,	0,	0,	0),
(4,	94,	0,	0,	0,	0),
(4,	95,	0,	0,	0,	0),
(4,	96,	0,	0,	0,	0),
(4,	97,	0,	0,	0,	0),
(4,	98,	0,	0,	0,	0),
(4,	99,	0,	0,	0,	0),
(4,	100,	0,	0,	0,	0),
(4,	101,	0,	0,	0,	0),
(4,	102,	0,	0,	0,	0),
(4,	103,	0,	0,	0,	0);

DROP TABLE IF EXISTS `ps_accessory`;
CREATE TABLE `ps_accessory` (
  `id_product_1` int unsigned NOT NULL,
  `id_product_2` int unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_address`;
CREATE TABLE `ps_address` (
  `id_address` int unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int unsigned NOT NULL,
  `id_state` int unsigned DEFAULT NULL,
  `id_customer` int unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int unsigned NOT NULL DEFAULT '0',
  `id_supplier` int unsigned NOT NULL DEFAULT '0',
  `id_warehouse` int unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `auto_generated` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_address_format`;
CREATE TABLE `ps_address_format` (
  `id_country` int unsigned NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_address_format` (`id_country`, `format`) VALUES
(1,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(2,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(3,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(4,	'firstname lastname\ncompany\naddress1\naddress2\ncity State:name postcode\nCountry:name\nphone\nphone_mobile'),
(5,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(6,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(7,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(8,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(9,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(10,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(11,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(12,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(13,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(14,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(15,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(16,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(17,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\ncity\npostcode\nCountry:name\nphone\nphone_mobile'),
(18,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(19,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(20,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(21,	'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone\nphone_mobile'),
(22,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(23,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(24,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(25,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(26,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(27,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(28,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(29,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(30,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(31,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(32,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(33,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(34,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(35,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(36,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(37,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(38,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(39,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(40,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(41,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(42,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(43,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(44,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(45,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(46,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(47,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(48,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(49,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(50,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(51,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(52,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(53,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(54,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(55,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(56,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(57,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(58,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(59,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(60,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(61,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(62,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(63,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(64,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(65,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(66,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(67,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(68,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(69,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(70,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(71,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(72,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(73,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(74,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(75,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(76,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(77,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(78,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(79,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(80,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(81,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(82,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(83,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(84,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(85,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(86,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(87,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(88,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(89,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(90,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(91,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(92,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(93,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(94,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(95,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(96,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(97,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(98,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(99,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(100,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(101,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(102,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(103,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(104,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(105,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(106,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(107,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(108,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(109,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(110,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(111,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(112,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(113,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(114,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(115,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(116,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(117,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(118,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(119,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(120,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(121,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(122,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(123,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(124,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(125,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(126,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(127,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(128,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(129,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(130,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(131,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(132,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(133,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(134,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(135,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(136,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(137,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(138,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(139,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(140,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(141,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(142,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(143,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(144,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(145,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(146,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(147,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(148,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(149,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(150,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(151,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(152,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(153,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(154,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(155,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(156,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(157,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(158,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(159,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(160,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(161,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(162,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(163,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(164,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(165,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(166,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(167,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(168,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(169,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(170,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(171,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(172,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(173,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(174,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(175,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(176,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(177,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(178,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(179,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(180,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(181,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(182,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(183,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(184,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(185,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(186,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(187,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(188,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(189,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(190,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(191,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(192,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(193,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(194,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(195,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(196,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(197,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(198,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(199,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(200,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(201,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(202,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(203,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(204,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(205,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(206,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(207,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(208,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(209,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(210,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(211,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(212,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(213,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(214,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(215,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(216,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(217,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(218,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(219,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(220,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(221,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(222,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(223,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(224,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(225,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(226,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(227,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(228,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(229,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(230,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(231,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(232,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(233,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(234,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(235,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(236,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(237,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(238,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(239,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(240,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(241,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(242,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(243,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(244,	'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile');

DROP TABLE IF EXISTS `ps_alias`;
CREATE TABLE `ps_alias` (
  `id_alias` int unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_alias` (`id_alias`, `alias`, `search`, `active`) VALUES
(1,	'bloose',	'blouse',	1),
(2,	'blues',	'blouse',	1);

DROP TABLE IF EXISTS `ps_attachment`;
CREATE TABLE `ps_attachment` (
  `id_attachment` int unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `file_size` bigint unsigned NOT NULL DEFAULT '0',
  `mime` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_attachment_lang`;
CREATE TABLE `ps_attachment_lang` (
  `id_attachment` int unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_attribute`;
CREATE TABLE `ps_attribute` (
  `id_attribute` int unsigned NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_attribute_group`;
CREATE TABLE `ps_attribute_group` (
  `id_attribute_group` int unsigned NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  `group_type` enum('select','radio','color') NOT NULL DEFAULT 'select',
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_attribute_group_lang`;
CREATE TABLE `ps_attribute_group_lang` (
  `id_attribute_group` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_attribute_group_shop`;
CREATE TABLE `ps_attribute_group_shop` (
  `id_attribute_group` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_attribute_impact`;
CREATE TABLE `ps_attribute_impact` (
  `id_attribute_impact` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_attribute` int unsigned NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_attribute_lang`;
CREATE TABLE `ps_attribute_lang` (
  `id_attribute` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_attribute_shop`;
CREATE TABLE `ps_attribute_shop` (
  `id_attribute` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_carrier`;
CREATE TABLE `ps_carrier` (
  `id_carrier` int unsigned NOT NULL AUTO_INCREMENT,
  `id_reference` int unsigned NOT NULL,
  `id_tax_rules_group` int unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int NOT NULL DEFAULT '0',
  `position` int unsigned NOT NULL DEFAULT '0',
  `max_width` int DEFAULT '0',
  `max_height` int DEFAULT '0',
  `max_depth` int DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `reference` (`id_reference`,`deleted`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_carrier_group`;
CREATE TABLE `ps_carrier_group` (
  `id_carrier` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_carrier_lang`;
CREATE TABLE `ps_carrier_lang` (
  `id_carrier` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `delay` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_carrier_shop`;
CREATE TABLE `ps_carrier_shop` (
  `id_carrier` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_carrier_tax_rules_group_shop`;
CREATE TABLE `ps_carrier_tax_rules_group_shop` (
  `id_carrier` int unsigned NOT NULL,
  `id_tax_rules_group` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_carrier_zone`;
CREATE TABLE `ps_carrier_zone` (
  `id_carrier` int unsigned NOT NULL,
  `id_zone` int unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart`;
CREATE TABLE `ps_cart` (
  `id_cart` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_carrier` int unsigned NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_address_delivery` int unsigned NOT NULL,
  `id_address_invoice` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_guest` int unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint unsigned NOT NULL DEFAULT '1',
  `gift` tinyint unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint unsigned NOT NULL DEFAULT '0',
  `is_advance_payment` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop_2` (`id_shop`,`date_upd`),
  KEY `id_shop` (`id_shop`,`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cart` (`id_cart`, `id_shop_group`, `id_shop`, `id_carrier`, `delivery_option`, `id_lang`, `id_address_delivery`, `id_address_invoice`, `id_currency`, `id_customer`, `id_guest`, `secure_key`, `recyclable`, `gift`, `gift_message`, `mobile_theme`, `allow_seperated_package`, `is_advance_payment`, `date_add`, `date_upd`) VALUES
(1,	0,	1,	0,	'',	1,	0,	0,	3,	0,	1,	'',	0,	0,	'',	0,	0,	0,	'2024-05-18 23:27:30',	'2024-05-18 23:27:30');

DROP TABLE IF EXISTS `ps_cart_cart_rule`;
CREATE TABLE `ps_cart_cart_rule` (
  `id_cart` int unsigned NOT NULL,
  `id_cart_rule` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart`,`id_cart_rule`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_product`;
CREATE TABLE `ps_cart_product` (
  `id_cart` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_address_delivery` int unsigned NOT NULL DEFAULT '0',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_product_attribute` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_cart`,`id_product`,`id_product_attribute`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_cart_order` (`id_cart`,`date_add`,`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_rule`;
CREATE TABLE `ps_cart_rule` (
  `id_cart_rule` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int unsigned NOT NULL DEFAULT '0',
  `priority` int unsigned NOT NULL DEFAULT '1',
  `partial_use` tinyint unsigned NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int unsigned NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `group_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `product_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `shop_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint unsigned NOT NULL DEFAULT '0',
  `reduction_currency` int unsigned NOT NULL DEFAULT '0',
  `reduction_product` int NOT NULL DEFAULT '0',
  `gift_product` int unsigned NOT NULL DEFAULT '0',
  `gift_product_attribute` int unsigned NOT NULL DEFAULT '0',
  `highlight` tinyint unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart_rule`),
  KEY `id_customer` (`id_customer`,`active`,`date_to`),
  KEY `group_restriction` (`group_restriction`,`active`,`date_to`),
  KEY `id_customer_2` (`id_customer`,`active`,`highlight`,`date_to`),
  KEY `group_restriction_2` (`group_restriction`,`active`,`highlight`,`date_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cart_rule` (`id_cart_rule`, `id_customer`, `date_from`, `date_to`, `description`, `quantity`, `quantity_per_user`, `priority`, `partial_use`, `code`, `minimum_amount`, `minimum_amount_tax`, `minimum_amount_currency`, `minimum_amount_shipping`, `country_restriction`, `carrier_restriction`, `group_restriction`, `cart_rule_restriction`, `product_restriction`, `shop_restriction`, `free_shipping`, `reduction_percent`, `reduction_amount`, `reduction_tax`, `reduction_currency`, `reduction_product`, `gift_product`, `gift_product_attribute`, `highlight`, `active`, `date_add`, `date_upd`) VALUES
(1,	0,	'2022-11-22 18:00:00',	'2022-12-22 18:00:00',	'',	95,	10,	1,	1,	'',	99999.00,	0,	3,	0,	0,	0,	0,	0,	0,	0,	0,	100.00,	0.00,	0,	3,	0,	0,	0,	0,	1,	'2022-11-22 18:30:47',	'2022-12-05 21:59:56');

DROP TABLE IF EXISTS `ps_cart_rule_carrier`;
CREATE TABLE `ps_cart_rule_carrier` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_carrier` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_rule_combination`;
CREATE TABLE `ps_cart_rule_combination` (
  `id_cart_rule_1` int unsigned NOT NULL,
  `id_cart_rule_2` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`),
  KEY `id_cart_rule_1` (`id_cart_rule_1`),
  KEY `id_cart_rule_2` (`id_cart_rule_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_rule_country`;
CREATE TABLE `ps_cart_rule_country` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_country` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_rule_group`;
CREATE TABLE `ps_cart_rule_group` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_rule_lang`;
CREATE TABLE `ps_cart_rule_lang` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cart_rule_lang` (`id_cart_rule`, `id_lang`, `name`) VALUES
(1,	1,	'100% Discount'),
(1,	2,	'100% Discount');

DROP TABLE IF EXISTS `ps_cart_rule_product_rule`;
CREATE TABLE `ps_cart_rule_product_rule` (
  `id_product_rule` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product_rule_group` int unsigned NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL,
  PRIMARY KEY (`id_product_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_rule_product_rule_group`;
CREATE TABLE `ps_cart_rule_product_rule_group` (
  `id_product_rule_group` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cart_rule` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_rule_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_rule_product_rule_value`;
CREATE TABLE `ps_cart_rule_product_rule_value` (
  `id_product_rule` int unsigned NOT NULL,
  `id_item` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_rule`,`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cart_rule_shop`;
CREATE TABLE `ps_cart_rule_shop` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_category`;
CREATE TABLE `ps_category` (
  `id_category` int unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int unsigned NOT NULL,
  `id_shop_default` int unsigned NOT NULL DEFAULT '1',
  `level_depth` tinyint unsigned NOT NULL DEFAULT '0',
  `nleft` int unsigned NOT NULL DEFAULT '0',
  `nright` int unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  KEY `level_depth` (`level_depth`),
  KEY `nright` (`nright`),
  KEY `activenleft` (`active`,`nleft`),
  KEY `activenright` (`active`,`nright`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_category` (`id_category`, `id_parent`, `id_shop_default`, `level_depth`, `nleft`, `nright`, `active`, `date_add`, `date_upd`, `position`, `is_root_category`) VALUES
(1,	0,	1,	0,	1,	20,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0,	0),
(2,	1,	1,	1,	2,	19,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0,	1),
(11,	2,	1,	2,	3,	10,	1,	'2021-05-05 21:31:07',	'2021-05-05 21:31:07',	0,	0),
(12,	11,	1,	3,	4,	9,	1,	'2021-05-05 21:31:07',	'2021-05-05 21:31:07',	0,	0),
(13,	12,	1,	4,	5,	8,	1,	'2021-05-05 21:31:07',	'2021-05-05 21:31:07',	0,	0),
(14,	13,	1,	5,	6,	7,	1,	'2021-05-05 21:31:07',	'2021-05-05 21:31:07',	0,	0),
(15,	2,	1,	2,	11,	18,	1,	'2022-05-28 09:57:24',	'2022-05-28 09:57:24',	0,	0),
(16,	15,	1,	3,	12,	17,	1,	'2022-05-28 09:57:24',	'2022-05-28 09:57:24',	0,	0),
(17,	16,	1,	4,	13,	16,	1,	'2022-05-28 09:57:24',	'2022-05-28 09:57:24',	0,	0),
(18,	17,	1,	5,	14,	15,	1,	'2022-05-28 09:57:24',	'2022-05-28 09:57:24',	0,	0);

DROP TABLE IF EXISTS `ps_category_group`;
CREATE TABLE `ps_category_group` (
  `id_category` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_category_group` (`id_category`, `id_group`) VALUES
(1,	1),
(1,	2),
(1,	3),
(2,	1),
(2,	2),
(2,	3),
(11,	1),
(11,	2),
(11,	3),
(12,	1),
(12,	2),
(12,	3),
(13,	1),
(13,	2),
(13,	3),
(14,	1),
(14,	2),
(14,	3),
(15,	1),
(15,	2),
(15,	3),
(16,	1),
(16,	2),
(16,	3),
(17,	1),
(17,	2),
(17,	3),
(18,	1),
(18,	2),
(18,	3);

DROP TABLE IF EXISTS `ps_category_lang`;
CREATE TABLE `ps_category_lang` (
  `id_category` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_category_lang` (`id_category`, `id_shop`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1,	1,	1,	'Root',	'',	'root',	'',	'',	''),
(1,	1,	2,	'Root',	'',	'root',	'',	'',	''),
(2,	1,	1,	'Home',	'',	'home',	'',	'',	''),
(2,	1,	2,	'Domů',	'',	'domu',	'',	'',	''),
(11,	1,	1,	'United Kingdom',	'Hotel Branch Category',	'united-kingdom',	'',	'',	''),
(11,	1,	2,	'United Kingdom',	'Hotel Branch Category',	'united-kingdom',	'',	'',	''),
(12,	1,	1,	'Brighton',	'Hotel Branch Category',	'brighton',	'',	'',	''),
(12,	1,	2,	'Brighton',	'Hotel Branch Category',	'brighton',	'',	'',	''),
(13,	1,	1,	'Brighton',	'Hotel Branch Category',	'brighton',	'',	'',	''),
(13,	1,	2,	'Brighton',	'Hotel Branch Category',	'brighton',	'',	'',	''),
(14,	1,	1,	'Three Foxes Lounge',	'Hotel Branch Category',	'three-foxes-lounge',	'',	'',	''),
(14,	1,	2,	'The Hotel Prime',	'Hotel Branch Category',	'the-hotel-prime',	'',	'',	''),
(15,	1,	1,	'Czech Republic',	'Hotel Branch Category',	'czech-republic',	'',	'',	''),
(15,	1,	2,	'Czech Republic',	'Hotel Branch Category',	'czech-republic',	'',	'',	''),
(16,	1,	1,	'Brno',	'Hotel Branch Category',	'brno',	'',	'',	''),
(16,	1,	2,	'Brno',	'Hotel Branch Category',	'brno',	'',	'',	''),
(17,	1,	1,	'Brno',	'Hotel Branch Category',	'brno',	'',	'',	''),
(17,	1,	2,	'Brno',	'Hotel Branch Category',	'brno',	'',	'',	''),
(18,	1,	1,	'test',	'Hotel Branch Category',	'test',	'',	'',	''),
(18,	1,	2,	'test',	'Hotel Branch Category',	'test',	'',	'',	'');

DROP TABLE IF EXISTS `ps_category_product`;
CREATE TABLE `ps_category_product` (
  `id_category` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_product`),
  KEY `id_product` (`id_product`),
  KEY `id_category` (`id_category`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_category_product` (`id_category`, `id_product`, `position`) VALUES
(2,	1,	0),
(2,	2,	1),
(2,	3,	2),
(2,	4,	3),
(11,	2,	0),
(11,	3,	1),
(11,	1,	2),
(11,	4,	3),
(12,	2,	0),
(12,	3,	1),
(12,	1,	2),
(12,	4,	3),
(13,	2,	0),
(13,	3,	1),
(13,	1,	2),
(13,	4,	3),
(14,	2,	0),
(14,	3,	1),
(14,	1,	2),
(14,	4,	3);

DROP TABLE IF EXISTS `ps_category_shop`;
CREATE TABLE `ps_category_shop` (
  `id_category` int NOT NULL,
  `id_shop` int NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_category_shop` (`id_category`, `id_shop`, `position`) VALUES
(1,	1,	0),
(2,	1,	0),
(11,	1,	0),
(12,	1,	0),
(13,	1,	0),
(14,	1,	0),
(15,	1,	1),
(16,	1,	0),
(17,	1,	0),
(18,	1,	0);

DROP TABLE IF EXISTS `ps_cms`;
CREATE TABLE `ps_cms` (
  `id_cms` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int unsigned NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `indexation` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cms` (`id_cms`, `id_cms_category`, `position`, `active`, `indexation`) VALUES
(1,	1,	0,	1,	0),
(2,	1,	1,	1,	0),
(3,	1,	2,	1,	0),
(4,	1,	3,	1,	0),
(5,	1,	4,	1,	0),
(6,	1,	5,	1,	0);

DROP TABLE IF EXISTS `ps_cms_category`;
CREATE TABLE `ps_cms_category` (
  `id_cms_category` int unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int unsigned NOT NULL,
  `level_depth` tinyint unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cms_category` (`id_cms_category`, `id_parent`, `level_depth`, `active`, `date_add`, `date_upd`, `position`) VALUES
(1,	0,	1,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0);

DROP TABLE IF EXISTS `ps_cms_category_lang`;
CREATE TABLE `ps_cms_category_lang` (
  `id_cms_category` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cms_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cms_category_lang` (`id_cms_category`, `id_lang`, `id_shop`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1,	1,	1,	'Home',	'',	'home',	'',	'',	''),
(1,	2,	1,	'Domů',	'',	'domu',	'',	'',	'');

DROP TABLE IF EXISTS `ps_cms_category_shop`;
CREATE TABLE `ps_cms_category_shop` (
  `id_cms_category` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_cms_category`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cms_category_shop` (`id_cms_category`, `id_shop`) VALUES
(1,	1);

DROP TABLE IF EXISTS `ps_cms_lang`;
CREATE TABLE `ps_cms_lang` (
  `id_cms` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cms_lang` (`id_cms`, `id_lang`, `id_shop`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(1,	1,	1,	'Policies',	'Our policies of hotel bookings',	'conditions, policy, guidelines, protocol, rule',	'<h2>Policies</h2>\n<h3>Our policies for booking</h3>\n<p>1. When you make a Booking, you accept the applicable policies as displayed in the booking process. You\'ll find each Service Provider\'s cancellation policy and any other policies (e.g. age requirements, security/damage deposits, additional supplements for group Bookings, extra beds, breakfast, pets, cards accepted, etc.) on our Platform, on the Service Provider information pages, during the booking process, in the fine print, and/or in the confirmation email or ticket (if applicable).</p>\n<p>2. If you cancel a Booking or don’t show up, any cancellation/no-show fee or refund will depend on the Service Provider’s cancellation/no-show policy.</p>\n<p>3. Some Bookings can’t be canceled for free, while others can only be canceled for free before a deadline.</p>\n<p>4. If you book a Travel Experience by paying in advance (including all price components and/or a damage deposit if applicable), the Service Provider may cancel the Booking without notice if they can\'t collect the balance on the date specified. If they do, any non-refundable payment you’ve made will only be refunded at their discretion. It\'s your responsibility to make sure the payment goes through on time, that your bank, debit card, or credit card details are correct, and that there\'s enough money available in your account.</p>\n<p>5. If you think you won’t arrive on time, contact your Service Provider and tell them when they can expect you so they don\'t cancel your Booking. If you’re late, we are not liable for the consequences (e.g. the cancellation of your Booking or any fees the Service Provider may charge).</p>\n<p>6. As the person making the Booking, you are responsible for the actions and behavior (in relation to the Travel Experience) of everyone in the group. You’re also responsible for obtaining their permission before providing us with their personal data.</p>',	'policies'),
(1,	2,	1,	'Policies',	'Our policies of hotel bookings',	'conditions, policy, guidelines, protocol, rule',	'<h2>Policies</h2>\n<h3>Our policies for booking</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim tortor at auctor urna nunc id cursus metus aliquam. Ut enim blandit volutpat maecenas volutpat blandit. Odio ut enim blandit volutpat maecenas volutpat. Hendrerit dolor magna eget est lorem ipsum dolor sit amet. Senectus et netus et malesuada fames ac. Posuere urna nec tincidunt praesent semper feugiat nibh sed. Eu consequat ac felis donec et. Viverra nibh cras pulvinar mattis nunc. Augue mauris augue neque gravida. Risus at ultrices mi tempus imperdiet nulla malesuada. Nibh cras pulvinar mattis nunc sed blandit. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in.</p>\n<p>Feugiat nibh sed pulvinar proin. Vestibulum sed arcu non odio euismod lacinia at quis risus. Turpis tincidunt id aliquet risus feugiat in. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Posuere morbi leo urna molestie at elementum eu facilisis. Id eu nisl nunc mi. Aliquet risus feugiat in ante metus dictum at. Sed turpis tincidunt id aliquet risus. Ac orci phasellus egestas tellus rutrum. Non diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Leo vel orci porta non pulvinar. Dictumst quisque sagittis purus sit amet. Scelerisque viverra mauris in aliquam sem fringilla ut morbi tincidunt. Egestas diam in arcu cursus euismod quis. Vestibulum morbi blandit cursus risus at ultrices.</p>',	'policies'),
(2,	1,	1,	'Legal Notice',	'Legal notice',	'notice, legal, credits',	'<h2>Legal</h2>\n<div id=\"tcs_s3\">\n<p id=\"nov2021_terms_all_privacy_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A9. Privacy and cookies</strong></p>\n</div>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. If you book an accommodation, flight, or attraction, read our <a href=\"https://secure.booking.com/content/privacy.html?label=gen173nr-1FCAEoggI46AdIM1gEaDqIAQGYAQW4ARfIAQzYAQHoAQH4AQuIAgGoAgO4Ar-R85sGwAIB0gIkNWQ4NzE4NmYtOWQ4My00NmI2LTlmM2UtM2MzOWRmM2MzYTQ32AIG4AIB&amp;sid=dab9a4f2920a75c726c39c5d464e0291\" class=\"bui-link bui-link--primary font-normal\">Privacy and Cookie Notice</a> for more info on privacy, cookies, and how we might contact you and process personal data</p>\n<p>2. If you book ground transport, read the <a href=\"https://www.rentalcars.com/en/privacy\" class=\"bui-link bui-link--primary font-normal\">Rentalcars.com Privacy Statement</a>, <a href=\"https://cars.booking.com/PrivacyPolicy.do\" class=\"ui-link bui-link--primary font-normal\">Cars.booking.com Privacy Statement</a>, or <a href=\"https://taxi.booking.com/information/privacy\" class=\"bui-link bui-link--primary font-normal\">Taxi.booking.com Privacy Statement</a> to find out how we process your personal data.</p>\n</div>\n<p id=\"nov2021_terms_all_accessibility_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A10. Accessibility requests</strong></p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. If you have any accessibility requests:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">about our Platform and/or services, contact our Customer Service team</li>\n<li class=\"bui-list__item\">about your Travel Experience (wheelchair access, walk-in baths, etc.), contact your Service Provider or the airport, train station, etc.</li>\n</ul></div>\n<p id=\"nov2021_terms_all_insurance_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A11. Insurance</strong></p>\n<p class=\"bui-text bui-text--variant-body_1\">1. If you bought insurance through our Platform, refer to the policy document(s) for the terms and for further info. These Terms do not apply to insurance.</p>\n<p id=\"nov2021_terms_all_genius_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A12. Genius</strong></p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. The Genius rate is a discounted rate offered by participating Service Providers for certain products/services.</p>\n<p>2. Genius rates are for members of the Booking.com Genius program. There are no membership fees, and it’s easy to become a member – just create an Account. Membership and rates are non-transferable. Membership is linked to a specific Account. Membership can also be linked to specific campaigns or incentives.</p>\n<p>3. There are different “Genius Levels” based on how many Accommodation Bookings you’ve made in a given period. Each level provides different travel rewards.</p>\n<p>4. We may change any feature of the Genius program, including the membership levels and the way the program is structured.</p>\n</div>\n<p id=\"nov2021_terms_all_rewards_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A13. Rewards, Credits, &amp; Wallet</strong></p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. We may issue Rewards to you—at our sole discretion and subject to—(a) the terms here in A13 and (b) any Individual Reward Criteria that apply. If we make a clerical error (i) in calculating your Rewards or (ii) in converting currencies related to your Rewards, we can always change or correct any balances shown.</p>\n<p>2. <b>How to get Rewards.</b> You might, for example, get a Reward by booking at a participating hotel or by making a certain number of Bookings in a given time period. When a Reward is available, we’ll explain what the specific conditions are and how to use it.</p>\n<p>3. <b>Where to find your Rewards.</b> Once you’ve received one or more Rewards, you’ll find a “Rewards and Wallet” link in your Booking.com Account menu. Under the “Rewards” tab, you’ll see all the Rewards you’ve earned, what actions (if any) still need to be taken to obtain the Reward(s), and any other terms and conditions.</p>\n<p>4. <b>Types of Rewards.</b> Rewards give you (a) Credits in your Wallet or (b) something different (e.g. a Credit Card Cashback or a coupon). We’ll explain each Reward at the appropriate time.</p>\n<p>5. <b>How to get Credits.</b> Credits are usually issued as a result of getting a Reward. But we may issue Credits for other reasons, for example, if your Travel Experience didn’t live up to our usual high standards.</p>\n<p>6. <b>Where to find your Credits.</b> Once you’ve received some Credits, you’ll find a “Rewards and Wallet” link in your Booking.com Account menu. Under the “Wallet” tab, you’ll see your total Credits balance (split into Travel Credits and Cash Credits if you have both kinds). You’ll see when Credits were received or spent, and when they’ll expire. If you have Cash Credits, you’ll also see a link to cash them out.</p>\n<p>7. <b>Types of Credits.</b> Travel Credits can <b>only</b> be spent on certain Travel Experiences. We’ll show you which Travel Experiences you can pay for with Travel Credits (which specific accommodations, attractions, car rentals, etc.). Cash Credits can be cashed out to your Payment Method (click “Withdraw Cash Credit”), or spent on any Travel Experience that you can pay for with Travel Credits.</p>\n</div>\n<p id=\"nov2021_terms_all_rewards_subheading_2\" class=\"bui-text bui-text--variant-headline_3\">Rewards</p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>8. To receive any type of Rewards, you must, when qualifying for and using the Credits:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">have an Account with us</li>\n<li class=\"bui-list__item\">be at least 18 years old</li>\n<li class=\"bui-list__item\">meet the Individual Reward Criteria</li>\n<li class=\"bui-list__item\">not violate the Rewards &amp; Wallet Terms, and</li>\n<li class=\"bui-list__item\">have a valid credit card to qualify for Credit Card Cashback Rewards.</li>\n</ul><p>9. When a Reward is available, the Individual Reward Criteria will explain how (and if) you qualify for it. There may be:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">time-sensitive restrictions (e.g. offers with expiration dates)</li>\n<li class=\"bui-list__item\">platform restrictions (e.g. promotional codes that can only be used in our app)</li>\n<li class=\"bui-list__item\">property restrictions (e.g. offers that can only be used with specific Service Providers)</li>\n<li class=\"bui-list__item\">a minimum spend (e.g. a Reward that you’ll only earn when you spend at least a certain amount on a Booking)</li>\n<li class=\"bui-list__item\">a maximum Reward value (for either monetary or non-monetary Rewards).</li>\n</ul><p>10. Rewards can’t be sold, encumbered, or transferred in any way to a third party. In the event of an Account holder’s death, their Account will be closed and their Rewards (if any) will be canceled.</p>\n</div>\n<p id=\"nov2021_terms_all_rewards_subheading_3\" class=\"bui-text bui-text--variant-headline_3\">Credits</p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>11. You can put either Cash Credits or Travel Credits toward the cost of an eligible Travel Experience on a participating Platform (e.g. www.booking.com or a Group Company website).</p>\n<p>12. If that Travel Experience costs less than you have in Credits, your unused Credits will remain available in your Wallet.</p>\n<p>13. If that Travel Experience costs more than you have in Credits, you must make up the rest of the cost in time, using another accepted Payment Method, or your purchase will be canceled and your Credits returned to your Wallet.</p>\n<p>14. If you have various Credits with more than one expiration date, the Credits with the earliest expiration date will be used first.</p>\n<p>15. If you cancel a Travel Experience that you’ve paid for (in part or in full) with Credits, the Service Provider’s cancellation policy will determine whether or not your money and/or Credits are refunded. Our Customer Service team will be able to refund any Credits that you may be entitled to.</p>\n<p>16. You can cash out Cash Credits (but not Travel Credits) to a Payment Method.</p>\n<p>17. Your Wallet’s default currency is determined by your location, residency, or another currency we may elect. If you get any Credits or Credit Card Cashbacks in another currency, we’ll convert them to your default currency, or another currency we may elect, using our Currency Conversion Rate.</p>\n<p>18. If a Reward was issued because you booked a Travel Experience, any associated Credits that haven’t been used will be deleted from your Wallet if that Travel Experience is canceled.</p>\n<p>19. We reserve the right to cancel any Reward that was obtained by fraud.</p>\n<p>20. If you didn’t receive a Reward that you should have, contact our Customer Service team no more than 12 months after you did what you believe qualified you for it. Please provide any supporting documentation you have. If you don’t do this within 12 months, you won’t be able to claim the Reward.</p>\n<p>21. All Credits have an expiration date, which you’ll find in the “Credits” section of your Wallet.</p>\n</div>\n<p id=\"nov2021_terms_all_rewards_subheading_4\" class=\"bui-text bui-text--variant-headline_3\">Wallet</p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>22. All data, including personal data, will be processed in accordance with our privacy policy and applicable data protection laws and regulations. It will be shared with Group Companies or Service Providers as required by the Wallet program. Lost, stolen, or expired Rewards will not be replaced.</p>\n<p>23. Your obligations:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">You’re responsible for making sure that all information is (and stays) correct, complete, and up to date</li>\n<li class=\"bui-list__item\">If we ask you for proof of ID, please provide it within 30 days</li>\n<li class=\"bui-list__item\">You’re responsible for keeping your Wallet sign-in details safe and secure.</li>\n</ul><p>24. If you don’t adhere to the rules in this section, we may automatically suspend or cancel your Wallet.</p>\n<p>25. You may not use your Wallet or Rewards in any way that is misleading, unfair, or harmful.</p>\n<p>26. We may set off/settle any or all of your Credits against any claim we (or a Group Company) have against you. We may do this at any time, and without advance notice.</p>\n<p>27. We may change, suspend, or end any aspect of the Wallet, Rewards, and Credits. In particular, we might change:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">these Rewards &amp; Wallet terms</li>\n<li class=\"bui-list__item\">which users we allow to have a Wallet</li>\n<li class=\"bui-list__item\">which Rewards or Credits we provide</li>\n<li class=\"bui-list__item\">the expiration dates of any Rewards or Credits</li>\n<li class=\"bui-list__item\">any Individual Reward Criteria.</li>\n</ul><p>28. We’ll make reasonable efforts to give you prior notice if we make any changes or stop providing Wallets altogether.</p>\n<p>29. If we stop providing Wallets, all Credits and Rewards that haven’t expired will be valid for another 12 months.</p>\n</div>\n<div id=\"tcs_s10\">\n<p id=\"nov2021_terms_all_ipr_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A14. Intellectual property rights</strong></p>\n</div>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. Unless otherwise stated, all rights in our Platform (technology, content, trademarks, look and feel, etc.) are owned by Booking.com (or its licensors), and by using our Platform, you agree to do so for its intended purpose only and to respect the conditions set out below in paragraphs A14.2 and A14.3.</p>\n<p>2. You’re not allowed to monitor, copy, scrape/crawl, download, reproduce, or otherwise use anything on our Platform for any commercial purpose without written permission of Booking.com or its licensors.</p>\n<p>3. We keep a close eye on every visit to our Platform, and we’ll block anyone (and any automated system) we suspect of:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">conducting an unreasonable amount of searches</li>\n<li class=\"bui-list__item\">using any device or software to gather prices or other information</li>\n<li class=\"bui-list__item\">doing anything that places undue stress on our Platform.</li>\n</ul><p>4. By uploading any picture to our Platform (e.g. for a review), you’re confirming that it complies with <a href=\"https://secure.booking.com/reviews_guidelines.html?label=gen173nr-1FCAEoggI46AdIM1gEaDqIAQGYAQW4ARfIAQzYAQHoAQH4AQuIAgGoAgO4Ar-R85sGwAIB0gIkNWQ4NzE4NmYtOWQ4My00NmI2LTlmM2UtM2MzOWRmM2MzYTQ32AIG4AIB&amp;sid=dab9a4f2920a75c726c39c5d464e0291\" class=\"bui-link bui-link--primary font-normal\">our criteria</a> and that:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">it’s truthful (e.g. you haven’t altered the picture or uploaded one of a different property)</li>\n<li class=\"bui-list__item\">it doesn’t contain any viruses</li>\n<li class=\"bui-list__item\">you’re allowed to share it with us</li>\n<li class=\"bui-list__item\">we’re allowed to use it on our platform and in relation to further commercial purposes (including in a promotional context), everywhere, forever. (If you let us know we can no longer use it, we’ll consider any such reasonable request)</li>\n<li class=\"bui-list__item\">it doesn’t infringe the privacy rights of other people</li>\n<li class=\"bui-list__item\">you accept full responsibility for any legal claims against Booking.com related to it.</li>\n</ul><p>5. Just to be clear, we’re not responsible or liable for any picture uploaded to our Platform, and we’re allowed to remove any picture at our discretion (e.g. if a picture does not meet the above criteria).</p>\n</div>',	'legal-notice'),
(2,	2,	1,	'Právní ustanovení',	'Právní ustanovení',	'Právní, ustanovení, credits',	'<h2>Legal</h2>\n<h3>Credits</h3>\n<p>Concept and production:</p>\n<p>This Online store was created using <a href=\"http://www.prestashop.com\">Prestashop Shopping Cart Software</a>,check out PrestaShop\'s <a href=\"http://www.prestashop.com/blog/en/\">ecommerce blog</a> for news and advices about selling online and running your ecommerce website.</p>',	'legal-notice'),
(3,	1,	1,	'Terms and conditions of use',	'Our terms and conditions of use',	'conditions, terms, use, sell',	'<h1 class=\"page-heading\">Terms and conditions of use</h1>\n<div id=\"tcs_s0\">\n<p id=\"nov2021_terms_all_definitions_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A1. Definitions</strong></p>\n</div>\n<p class=\"bui-text bui-text--variant-body_1\">1. Some of the words you’ll see have very specific meanings, so check out the “<a href=\"https://www.booking.com/content/terms.html?label=gen173nr-1FCAEoggI46AdIM1gEaDqIAQGYAQW4ARfIAQzYAQHoAQH4AQuIAgGoAgO4Ar-R85sGwAIB0gIkNWQ4NzE4NmYtOWQ4My00NmI2LTlmM2UtM2MzOWRmM2MzYTQ32AIG4AIB&amp;sid=dab9a4f2920a75c726c39c5d464e0291&amp;tmpl=docs%2Fterms-and-conditions%E2%8C%A9=en-us&amp;soz=1&amp;lang_click=other&amp;cdl=cs&amp;lang_changed=1#nov2021_terms_dictionary_heading\">CzechitasDAHackathon-dictionary</a>” at the end of these Terms.</p>\n<p id=\"nov2021_terms_all_about_terms_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A2. About these terms</strong></p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. When you complete your Booking, you accept these Terms and any other ones that you’re provided with during the booking process.</p>\n<p>2. If anything in these Terms is (or becomes) invalid or unenforceable:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">it will still be enforced to the fullest extent permitted by law</li>\n<li class=\"bui-list__item\">you will still be bound by everything else in the Terms.</li>\n</ul><p>3. These Terms are laid out like this:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">Section A: General terms for all types of Travel Experiences.</li>\n<li class=\"bui-list__item\">Sections B to F: Specific terms for just one type of Travel Experience:\n<ul class=\"bui-list bui-list--unordered list-style-circle mt-4\"><li class=\"bui-list__item\">Section B: Accommodations</li>\n<li class=\"bui-list__item\">Section C: Attractions</li>\n<li class=\"bui-list__item\">Section D: Car rentals</li>\n<li class=\"bui-list__item\">Section E: Flights</li>\n<li class=\"bui-list__item\">Section F: Private and public transportation</li>\n</ul></li>\n<li class=\"bui-list__item\">If there’s any discrepancy between general and specific terms, the specific terms will apply.</li>\n</ul><p>4. The English version of these Terms is the original. If there’s any dispute about the Terms or any discrepancy between the Terms in English and another language, the Terms as they appear in English will apply. (You can change the language at the top of this page.)</p>\n</div>\n<div id=\"tcs_s12\">\n<p id=\"nov2021_terms_all_about_booking_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A3. About Booking.com</strong></p>\n</div>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. When you book an accommodation, flight, or attraction, <a href=\"https://secure.booking.com/content/legal.html?label=gen173nr-1FCAEoggI46AdIM1gEaDqIAQGYAQW4ARfIAQzYAQHoAQH4AQuIAgGoAgO4Ar-R85sGwAIB0gIkNWQ4NzE4NmYtOWQ4My00NmI2LTlmM2UtM2MzOWRmM2MzYTQ32AIG4AIB&amp;sid=dab9a4f2920a75c726c39c5d464e0291\" class=\"bui-link bui-link--primary font-normal\">Booking.com B.V.</a> provides and is responsible for the Platform, but not the Travel Experience itself (see A4.4 below).</p>\n<p>2. When you book a rental car or private or public transportation, Booking.com Transport Limited provides and is responsible for the Platform, but not the Travel Experience itself (see A4.4 below).</p>\n<p>3. We work with companies that provide local support services (e.g. Customer Support or account management). They don’t:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">control or manage our Platform</li>\n<li class=\"bui-list__item\">have their own Platform</li>\n<li class=\"bui-list__item\">have any legal or contractual relationship with you</li>\n<li class=\"bui-list__item\">provide Travel Experiences</li>\n<li class=\"bui-list__item\">represent us, enter into contracts, or accept legal documents in our name</li>\n<li class=\"bui-list__item\">operate as our “process or service agents.”</li>\n</ul></div>\n<div id=\"tcs_s1\">\n<p id=\"nov2021_terms_all_platform_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A4. Our Platform</strong></p>\n</div>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. We take reasonable care in providing our Platform, but we can’t guarantee that everything on it is accurate (we get information from the Service Providers). To the extent permitted by law, we can’t be held responsible for any errors, any interruptions, or any missing bits of information, though we will do everything we can to correct/fix them as soon as we can.</p>\n<p>2. Our Platform is not a recommendation or endorsement of any Service Provider or its products, services, facilities, vehicles, etc.</p>\n<p>3. We’re not a party to the terms between you and the Service Provider. The Service Provider is solely responsible for the Travel Experience.</p>\n<p>4. To make a Booking, you may need to create an Account. Make sure all your info (including payment and contact details) is correct and up to date, or you might not be able to access your Travel Experience(s). You’re responsible for anything that happens with your Account, so don’t let anyone else use it and keep your username and password secret.</p>\n<p>5. We’ll show you the offers that are available to you, in (what we think is) the right language for you. You can change to another language whenever you like.</p>\n<p>6. Unless otherwise indicated, you need to be at least 16 to use the Platform.</p>\n</div>\n<p id=\"nov2021_terms_all_values_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A5. Our values</strong></p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. You will:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">abide by <a href=\"https://www.booking.com/trust-and-safety/values.html?label=gen173nr-1FCAEoggI46AdIM1gEaDqIAQGYAQW4ARfIAQzYAQHoAQH4AQuIAgGoAgO4Ar-R85sGwAIB0gIkNWQ4NzE4NmYtOWQ4My00NmI2LTlmM2UtM2MzOWRmM2MzYTQ32AIG4AIB&amp;sid=dab9a4f2920a75c726c39c5d464e0291\" class=\"bui-link bui-link--primary font-normal\">Our values</a></li>\n<li class=\"bui-list__item\">comply with all applicable laws</li>\n<li class=\"bui-list__item\">cooperate with any anti-fraud/anti-money laundering checks we need to carry out</li>\n<li class=\"bui-list__item\">not use the Platform to cause a nuisance or make fake Bookings</li>\n<li class=\"bui-list__item\">use the Travel Experience and/or Platform for their intended purpose</li>\n<li class=\"bui-list__item\">not cause any nuisance or damage, and not behave inappropriately to the Service Provider’s personnel (or anyone else, for that matter).</li>\n</ul></div>\n<p id=\"nov2021_terms_all_prices_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A6. Prices</strong></p>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. When you make a Booking, you agree to pay the cost of the Travel Experience, including any taxes and charges that may apply.</p>\n<p>2. Some of the prices you see may have been rounded to the nearest whole number. The price you pay will be based on the original, “non-rounded” price (although the actual difference will be tiny anyway).</p>\n<p>3. Obvious errors and misprints are not binding. For example, if you book a premium car or a night in a luxury suite that was mistakenly offered for $1, we may simply cancel that Booking and refund anything you’ve paid.</p>\n<p>4. A crossed-out price indicates the price of a like-for-like Booking without the price reduction applied (“like-for-like” means same dates, same policies, same quality of accommodation/vehicle/class of travel, etc.).</p>\n</div>\n<div id=\"tcs_s5\">\n<p id=\"nov2021_terms_all_payment_subheading\" class=\"bui-text bui-text--variant-headline_3\"><strong>A7. Payment</strong></p>\n</div>\n<div class=\"bui-text bui-text--variant-body_1\">\n<p>1. For some products/services, the Service Provider will require an Upfront Payment and/or a payment taken during your Travel Experience.</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\"><b>If we organize your payment,</b> we (or in some cases our affiliate in the country your payment originates from) will be responsible for managing your payment and ensuring the completion of your transaction with our Service Provider. In this case, your payment constitutes final settlement of the “due and payable” price.</li>\n<li class=\"bui-list__item\"><b>If the Service Provider charges you,</b> this will usually be in person at the start of your Travel Experience, but it could also be (for example) that your credit card is charged when you book, or that you pay when you check out of your Accommodation. This depends on the Upfront Payment policy of the Service Provider as communicated to you in the booking process.</li>\n</ul><p>2. If the Service Provider requires an Upfront Payment, it may be taken or pre-authorized when you make your Booking, and it may be non-refundable. Before you book, check the Service Provider’s Upfront Payments policy (available during the booking process), which we don’t influence and aren’t responsible for.</p>\n<p>3. If you know of or suspect any fraud or unauthorized use of your Payment Method, contact your payment provider, who may cover any resulting charges, possibly for a fee.</p>\n<p>4. If the currency selected on the Platform isn\'t the same as the Service Provider\'s currency, we may:</p>\n<ul class=\"bui-list bui-list--unordered ml-4\"><li class=\"bui-list__item\">show prices in your own currency</li>\n<li class=\"bui-list__item\">offer you the Pay In Your Own Currency option.</li>\n</ul><p>You’ll see our Currency Conversion Rate during check-out, in the Booking details of your Account, or (if you don’t have an Account) in the email we send you. If we charge you fees in connection with any such services, you’ll find the fee expressed as a percentage over European Central Bank rates. Your card issuer may charge you a foreign transaction fee.</p>\n<p>5. We’ll store your Payment Method details for future transactions after collecting your consent.</p>\n</div>',	'terms-and-conditions-of-use'),
(3,	2,	1,	'Terms and conditions of use',	'Our terms and conditions of use',	'conditions, terms, use, sell',	'<h1 class=\"page-heading\">Terms and conditions of use</h1>\n<h3 class=\"page-subheading\">Rule 1</h3>\n<p class=\"bottom-indent\">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<h3 class=\"page-subheading\">Rule 2</h3>\n<p class=\"bottom-indent\">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>\n<h3 class=\"page-subheading\">Rule 3</h3>\n<p class=\"bottom-indent\">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>',	'terms-and-conditions-of-use'),
(4,	1,	1,	'About us',	'Learn more about us',	'about us, informations',	'<h1 class=\"page-heading bottom-indent\">About us</h1>\n<div class=\"row\">\n<div class=\"col-xs-12 col-sm-4\">\n<div class=\"cms-block\">\n<h3 class=\"page-subheading\">Our company</h3>\n<p><strong class=\"dark\">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\n<ul class=\"list-1\">\n<li><em class=\"icon-ok\"></em>Top quality products</li>\n<li><em class=\"icon-ok\"></em>Best customer service</li>\n<li><em class=\"icon-ok\"></em>30-days money back guarantee</li>\n</ul>\n</div>\n</div>\n<div class=\"col-xs-12 col-sm-4\">\n<div class=\"cms-box\">\n<h3 class=\"page-subheading\">Our team</h3>\n<img title=\"cms-img\" src=\"../img/cms/cms-img.jpg\" alt=\"cms-img\" width=\"370\" height=\"192\" />\n<p><strong class=\"dark\">Lorem set sint occaecat cupidatat non </strong></p>\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\n</div>\n</div>\n<div class=\"col-xs-12 col-sm-4\">\n<div class=\"cms-box\">\n<h3 class=\"page-subheading\">Testimonials</h3>\n<div class=\"testimonials\">\n<div class=\"inner\"><span class=\"before\">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class=\"after\">”</span></div>\n</div>\n<p><strong class=\"dark\">Lorem ipsum dolor sit</strong></p>\n<div class=\"testimonials\">\n<div class=\"inner\"><span class=\"before\">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class=\"after\">”</span></div>\n</div>\n<p><strong class=\"dark\">Ipsum dolor sit</strong></p>\n</div>\n</div>\n</div>',	'about-us'),
(4,	2,	1,	'About us',	'Learn more about us',	'about us, informations',	'<h1 class=\"page-heading bottom-indent\">About us</h1>\n<div class=\"row\">\n<div class=\"col-xs-12 col-sm-4\">\n<div class=\"cms-block\">\n<h3 class=\"page-subheading\">Our company</h3>\n<p><strong class=\"dark\">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\n<ul class=\"list-1\">\n<li><em class=\"icon-ok\"></em>Top quality products</li>\n<li><em class=\"icon-ok\"></em>Best customer service</li>\n<li><em class=\"icon-ok\"></em>30-days money back guarantee</li>\n</ul>\n</div>\n</div>\n<div class=\"col-xs-12 col-sm-4\">\n<div class=\"cms-box\">\n<h3 class=\"page-subheading\">Our team</h3>\n<img title=\"cms-img\" src=\"../img/cms/cms-img.jpg\" alt=\"cms-img\" width=\"370\" height=\"192\" />\n<p><strong class=\"dark\">Lorem set sint occaecat cupidatat non </strong></p>\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\n</div>\n</div>\n<div class=\"col-xs-12 col-sm-4\">\n<div class=\"cms-box\">\n<h3 class=\"page-subheading\">Testimonials</h3>\n<div class=\"testimonials\">\n<div class=\"inner\"><span class=\"before\">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class=\"after\">”</span></div>\n</div>\n<p><strong class=\"dark\">Lorem ipsum dolor sit</strong></p>\n<div class=\"testimonials\">\n<div class=\"inner\"><span class=\"before\">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class=\"after\">”</span></div>\n</div>\n<p><strong class=\"dark\">Ipsum dolor sit</strong></p>\n</div>\n</div>\n</div>',	'about-us'),
(5,	1,	1,	'Secure payment',	'Our secure payment method',	'secure payment, ssl, visa, mastercard, paypal',	'<h2>Secure payment</h2>\n<p class=\"bui-text\"><span>B1. Price and payment</span></p><p></p>\n<p class=\"bui-text\"><span>1. See “Prices” (A6) and “Payment” (A7) above.</span></p><p></p>\n<p class=\"bui-text\" id=\"nov2021_terms_accommodations_amendments_subheading\"><span>B2. Amendments, cancellations, and refunds</span></p><p></p>\n<p class=\"bui-text\"><span>1. See “Policies” (A8) above.</span></p><p></p>',	'secure-payment'),
(5,	2,	1,	'Secure payment',	'Our secure payment method',	'secure payment, ssl, visa, mastercard, paypal',	'<h2>Secure payment</h2>\n<h3>Our secure payment</h3>\n<p>With SSL</p>\n<h3>Using Visa/Mastercard/Paypal</h3>\n<p>About this service</p>',	'secure-payment'),
(6,	1,	1,	'GDPR regulations',	'',	'',	'<p><strong><span>Privacy Statement</span></strong></p>\n<p><span>20 Aug 2022</span></p>\n<p><span>First things first – your privacy is important to us. That might be the kind of thing all these notices say, but we mean it. You place your trust in us by using Three Foxes Lounge services and we value that trust. That means we’re committed to protecting and safeguarding any personal data you give us. We act in our customers’ best interest and we are transparent about the processing of your personal data.</span></p>\n<p><span>This document describes how we use and process your personal data, provided in a readable and transparent manner. It also tells you what rights you can exercise in relation to your personal data and how you can contact us. Please also read our Cookie Statement, which tells you how Three Foxes Lounge uses cookies and other similar tracking technologies.</span></p>\n<p><span>If you’ve used us before, you know that Three Foxes Lounge offers online travel-related services through our own websites and mobile apps, as well as other online platforms such as partners’ websites and social media. We’d like to point out that all the information you are about to read, generally applies to not one, not two, but all of these platforms.</span></p>\n<p><span>In fact, this single privacy statement applies to any kind of customer information we collect through all of the above platforms or by any other means connected to these platforms (such as when you contact our customer service team by email).</span></p>\n<p><span>If you are one of our business partners, make sure to also check out our <a href=\"localhost:8888\"><strong><span>Privacy Statement for Business Partners</span></strong></a> to understand how personal data is further processed as part of the business relationship.</span></p>\n<p><span>We might amend the Privacy Statement from time to time, so we recommend you visit this page occasionally to make sure you know where you stand. If we make any updates to the Privacy Statement that will impact you significantly, we’ll notify you about the changes before any new activities begin.</span></p>\n<p><strong><span>Terms we use in this Privacy Statement</span></strong></p>\n<p><span>\'Trip\' means the various different travel products and services that can be ordered, acquired, purchased, bought, paid, rented, provided, reserved, combined, or consummated by you from the Trip Provider.</span></p>\n<p><span>\'Trip Provider\' means the provider of accommodation (e.g. hotel, motel, apartment, bed &amp; breakfast, landlord), attractions (e.g. (theme) parks, museums, sightseeing tours), transportation provider (e.g. car rentals, cruises, rail, airport rides, coach tours, transfers), tour operators, travel insurances and any other travel or related product or service as from time to time available for Trip Reservation on the platform.</span></p>\n<p><span>\'Trip Service\' means the online purchase, order, (facilitated) payment or reservation service as offered or enabled by Three Foxes Lounge in respect of various products and services as from time to time made available by Trip Providers on the platform.</span></p>\n<p><span>\'Trip Reservation\' means the order, purchase, payment, booking or reservation of a Trip.</span></p>\n<p><strong><span>What kind of personal data does Three Foxes Lounge collect?</span></strong></p>\n<p><span>We can’t help you book the perfect Trip without information, so when you use our services there are certain things we ask for. This is typically routine information – your name, preferred contact details, the names of the people travelling with you and your payment information. You might also decide to submit additional information related to your upcoming Trip (for example, your anticipated arrival time).</span></p>\n<p><span>In addition to this, we also collect information from the computer, phone, tablet or other device you use to access our services. This includes the IP address, the browser you’re using and your language settings. There are also situations in which we receive information about you from others or when we automatically collect other information.</span></p>\n<p><span>This is the general overview but if you’d like to know more about the information we collect, we go into more detail below.</span></p>\n<p><span><a href=\"https://www.booking.com/content/privacy.en-gb.html?aid=318615;label=New_English_EN_CZ_27034543345-76AjxRsmvmiuN*eqQKVtmQS217289320507:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-55482331735:lp9062899:li:dec:dm;ws=&amp;gclid=CjwKCAiApvebBhAvEiwAe7mHSPonW__KYMfzHWk_eYfE9R0rSgri_oEh_67VKl42eRPNYHWOXaFW8BoCF7IQAvD_BwE#personal-data-collected-type\"><strong><span>Read more about the personal data we collect</span></strong></a></span></p>\n<p><strong><span>Why does Three Foxes Lounge collect and use your personal data?</span></strong></p>\n<p><span>The main reason we ask you for personal details is to help you organise your online Trip Reservations and ensure you get the best service possible.</span></p>\n<p><span>We also use your personal data to contact you about the latest deals, special offers and other products or services we think you might be interested in. There are other uses, too. If you’d like to find out what they are, read on for a more detailed explanation.</span></p>\n<p><span><a href=\"https://www.booking.com/content/privacy.en-gb.html?aid=318615;label=New_English_EN_CZ_27034543345-76AjxRsmvmiuN*eqQKVtmQS217289320507:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-55482331735:lp9062899:li:dec:dm;ws=&amp;gclid=CjwKCAiApvebBhAvEiwAe7mHSPonW__KYMfzHWk_eYfE9R0rSgri_oEh_67VKl42eRPNYHWOXaFW8BoCF7IQAvD_BwE#personal-data-collected-why\"><strong><span>Read more about why Three Foxes Lounge collects your data</span></strong></a></span></p>\n<p><strong><span>How does Three Foxes Lounge share your data with third parties?</span></strong></p>\n<p><span>There are different parties integrated into Three Foxes Lounge’s services, in various ways and for various reasons. The primary reason we share your data is to supply the Trip Provider with the relevant information to complete your Trip Reservation.</span></p>\n<p><span>We also involve other parties to provide you with the Three Foxes Lounge services. This includes, for example, financial institutions, advertisers, subsidiaries of the Three Foxes Lounge corporate group and the other companies that form the Booking Holdings Inc. corporate group. Or, in some cases, if we’re required to by law, we might share your data with governmental or other authorities</span></p>\n<p><span>Below, we go into more detail about how the information you share with us is used and exchanged with these parties.</span></p>\n<p> </p>',	'gdpr-regulations'),
(6,	2,	1,	'GDPR regulations',	'',	'',	'',	'gdpr-regulations');

DROP TABLE IF EXISTS `ps_cms_role`;
CREATE TABLE `ps_cms_role` (
  `id_cms_role` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_cms` int unsigned NOT NULL,
  PRIMARY KEY (`id_cms_role`,`id_cms`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cms_role_lang`;
CREATE TABLE `ps_cms_role_lang` (
  `id_cms_role` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_cms_role`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_cms_shop`;
CREATE TABLE `ps_cms_shop` (
  `id_cms` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_cms_shop` (`id_cms`, `id_shop`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(6,	1);

DROP TABLE IF EXISTS `ps_compare`;
CREATE TABLE `ps_compare` (
  `id_compare` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int unsigned NOT NULL,
  PRIMARY KEY (`id_compare`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_compare_product`;
CREATE TABLE `ps_compare_product` (
  `id_compare` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_compare`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_configuration`;
CREATE TABLE `ps_configuration` (
  `id_configuration` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned DEFAULT NULL,
  `id_shop` int unsigned DEFAULT NULL,
  `name` varchar(254) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_configuration` (`id_configuration`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1,	NULL,	NULL,	'PS_LANG_DEFAULT',	'1',	'2021-05-04 13:11:27',	'2021-05-04 13:11:27'),
(2,	NULL,	NULL,	'PS_VERSION_DB',	'1.6.1.23',	'2021-05-04 13:11:27',	'2021-05-04 13:11:27'),
(3,	NULL,	NULL,	'PS_INSTALL_VERSION',	'1.6.1.23',	'2021-05-04 13:11:27',	'2021-05-04 13:11:27'),
(4,	NULL,	NULL,	'PS_SEARCH_INDEXATION',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(5,	NULL,	NULL,	'PS_ONE_PHONE_AT_LEAST',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(6,	NULL,	NULL,	'PS_CARRIER_DEFAULT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(7,	NULL,	NULL,	'PS_GROUP_FEATURE_ACTIVE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(8,	NULL,	NULL,	'PS_CURRENCY_DEFAULT',	'3',	'0000-00-00 00:00:00',	'2021-05-05 21:30:01'),
(9,	NULL,	NULL,	'PS_COUNTRY_DEFAULT',	'17',	'0000-00-00 00:00:00',	'2021-05-05 21:27:36'),
(10,	NULL,	NULL,	'PS_REWRITING_SETTINGS',	'1',	'0000-00-00 00:00:00',	'2022-11-23 13:44:23'),
(11,	NULL,	NULL,	'PS_ORDER_OUT_OF_STOCK',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(12,	NULL,	NULL,	'PS_LAST_QTIES',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(13,	NULL,	NULL,	'PS_CART_REDIRECT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(14,	NULL,	NULL,	'PS_CONDITIONS',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(15,	NULL,	NULL,	'PS_RECYCLABLE_PACK',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(16,	NULL,	NULL,	'PS_GIFT_WRAPPING',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(17,	NULL,	NULL,	'PS_GIFT_WRAPPING_PRICE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(18,	NULL,	NULL,	'PS_STOCK_MANAGEMENT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(19,	NULL,	NULL,	'PS_NAVIGATION_PIPE',	'>',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(20,	NULL,	NULL,	'PS_PRODUCTS_PER_PAGE',	'12',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(21,	NULL,	NULL,	'PS_PURCHASE_MINIMUM',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(22,	NULL,	NULL,	'PS_PRODUCTS_ORDER_WAY',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(23,	NULL,	NULL,	'PS_PRODUCTS_ORDER_BY',	'4',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(24,	NULL,	NULL,	'PS_DISPLAY_QTIES',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(25,	NULL,	NULL,	'PS_SHIPPING_HANDLING',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(26,	NULL,	NULL,	'PS_SHIPPING_FREE_PRICE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(27,	NULL,	NULL,	'PS_SHIPPING_FREE_WEIGHT',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(28,	NULL,	NULL,	'PS_SHIPPING_METHOD',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(29,	NULL,	NULL,	'PS_TAX',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(30,	NULL,	NULL,	'PS_SHOP_ENABLE',	'1',	'0000-00-00 00:00:00',	'2023-11-30 17:05:16'),
(31,	NULL,	NULL,	'PS_NB_DAYS_NEW_PRODUCT',	'20',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(32,	NULL,	NULL,	'PS_SSL_ENABLED',	'1',	'0000-00-00 00:00:00',	'2024-05-23 23:12:42'),
(33,	NULL,	NULL,	'PS_WEIGHT_UNIT',	'kg',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(34,	NULL,	NULL,	'PS_BLOCK_CART_AJAX',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(35,	NULL,	NULL,	'PS_ORDER_RETURN',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(36,	NULL,	NULL,	'PS_ORDER_RETURN_NB_DAYS',	'14',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(37,	NULL,	NULL,	'PS_MAIL_TYPE',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(38,	NULL,	NULL,	'PS_PRODUCT_PICTURE_MAX_SIZE',	'8388608',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(39,	NULL,	NULL,	'PS_PRODUCT_PICTURE_WIDTH',	'64',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(40,	NULL,	NULL,	'PS_PRODUCT_PICTURE_HEIGHT',	'64',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(41,	NULL,	NULL,	'PS_INVOICE_PREFIX',	'#IN',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(42,	NULL,	NULL,	'PS_INVCE_INVOICE_ADDR_RULES',	'{\"avoid\":[]}',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(43,	NULL,	NULL,	'PS_INVCE_DELIVERY_ADDR_RULES',	'{\"avoid\":[]}',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(44,	NULL,	NULL,	'PS_DELIVERY_PREFIX',	'#DE',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(45,	NULL,	NULL,	'PS_DELIVERY_NUMBER',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(46,	NULL,	NULL,	'PS_RETURN_PREFIX',	'#RE',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(47,	NULL,	NULL,	'PS_INVOICE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(48,	NULL,	NULL,	'PS_PASSWD_TIME_BACK',	'360',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(49,	NULL,	NULL,	'PS_PASSWD_TIME_FRONT',	'30',	'0000-00-00 00:00:00',	'2022-11-23 09:28:48'),
(50,	NULL,	NULL,	'PS_DISP_UNAVAILABLE_ATTR',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(51,	NULL,	NULL,	'PS_SEARCH_MINWORDLEN',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(52,	NULL,	NULL,	'PS_SEARCH_BLACKLIST',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(53,	NULL,	NULL,	'PS_SEARCH_WEIGHT_PNAME',	'6',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(54,	NULL,	NULL,	'PS_SEARCH_WEIGHT_REF',	'10',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(55,	NULL,	NULL,	'PS_SEARCH_WEIGHT_SHORTDESC',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(56,	NULL,	NULL,	'PS_SEARCH_WEIGHT_DESC',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(57,	NULL,	NULL,	'PS_SEARCH_WEIGHT_CNAME',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(58,	NULL,	NULL,	'PS_SEARCH_WEIGHT_MNAME',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(59,	NULL,	NULL,	'PS_SEARCH_WEIGHT_TAG',	'4',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(60,	NULL,	NULL,	'PS_SEARCH_WEIGHT_ATTRIBUTE',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(61,	NULL,	NULL,	'PS_SEARCH_WEIGHT_FEATURE',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(62,	NULL,	NULL,	'PS_SEARCH_AJAX',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(63,	NULL,	NULL,	'PS_TIMEZONE',	'Europe/Prague',	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(64,	NULL,	NULL,	'PS_THEME_V11',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(65,	NULL,	NULL,	'PRESTASTORE_LIVE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(66,	NULL,	NULL,	'PS_TIN_ACTIVE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(67,	NULL,	NULL,	'PS_SHOW_ALL_MODULES',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(68,	NULL,	NULL,	'PS_BACKUP_ALL',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(69,	NULL,	NULL,	'PS_1_3_UPDATE_DATE',	'2011-12-27 10:20:42',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(70,	NULL,	NULL,	'PS_PRICE_ROUND_MODE',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(71,	NULL,	NULL,	'PS_1_3_2_UPDATE_DATE',	'2011-12-27 10:20:42',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(72,	NULL,	NULL,	'PS_CONDITIONS_CMS_ID',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(73,	NULL,	NULL,	'TRACKING_DIRECT_TRAFFIC',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(74,	NULL,	NULL,	'PS_META_KEYWORDS',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(75,	NULL,	NULL,	'PS_DISPLAY_JQZOOM',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(76,	NULL,	NULL,	'PS_VOLUME_UNIT',	'cl',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(77,	NULL,	NULL,	'PS_CIPHER_ALGORITHM',	'0',	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(78,	NULL,	NULL,	'PS_ATTRIBUTE_CATEGORY_DISPLAY',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(79,	NULL,	NULL,	'PS_CUSTOMER_SERVICE_FILE_UPLOAD',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(80,	NULL,	NULL,	'PS_CUSTOMER_SERVICE_SIGNATURE',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(81,	NULL,	NULL,	'PS_BLOCK_BESTSELLERS_DISPLAY',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(82,	NULL,	NULL,	'PS_BLOCK_NEWPRODUCTS_DISPLAY',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(83,	NULL,	NULL,	'PS_BLOCK_SPECIALS_DISPLAY',	'1',	'0000-00-00 00:00:00',	'2022-11-23 09:03:11'),
(84,	NULL,	NULL,	'PS_STOCK_MVT_REASON_DEFAULT',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(85,	NULL,	NULL,	'PS_COMPARATOR_MAX_ITEM',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(86,	NULL,	NULL,	'PS_ORDER_PROCESS_TYPE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(87,	NULL,	NULL,	'PS_SPECIFIC_PRICE_PRIORITIES',	'id_shop;id_currency;id_country;id_group',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(88,	NULL,	NULL,	'PS_TAX_DISPLAY',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(89,	NULL,	NULL,	'PS_SMARTY_FORCE_COMPILE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(90,	NULL,	NULL,	'PS_DISTANCE_UNIT',	'km',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(91,	NULL,	NULL,	'PS_STORES_DISPLAY_CMS',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(92,	NULL,	NULL,	'PS_STORES_DISPLAY_FOOTER',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(93,	NULL,	NULL,	'PS_STORES_SIMPLIFIED',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(94,	NULL,	NULL,	'SHOP_LOGO_WIDTH',	'64',	'0000-00-00 00:00:00',	'2021-05-05 22:57:20'),
(95,	NULL,	NULL,	'SHOP_LOGO_HEIGHT',	'64',	'0000-00-00 00:00:00',	'2021-05-05 22:57:20'),
(96,	NULL,	NULL,	'EDITORIAL_IMAGE_WIDTH',	'530',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(97,	NULL,	NULL,	'EDITORIAL_IMAGE_HEIGHT',	'228',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(98,	NULL,	NULL,	'PS_STATSDATA_CUSTOMER_PAGESVIEWS',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(99,	NULL,	NULL,	'PS_STATSDATA_PAGESVIEWS',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(100,	NULL,	NULL,	'PS_STATSDATA_PLUGINS',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(101,	NULL,	NULL,	'PS_GEOLOCATION_ENABLED',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(102,	NULL,	NULL,	'PS_ALLOWED_COUNTRIES',	'AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(103,	NULL,	NULL,	'PS_GEOLOCATION_BEHAVIOR',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(104,	NULL,	NULL,	'PS_LOCALE_LANGUAGE',	'en',	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(105,	NULL,	NULL,	'PS_LOCALE_COUNTRY',	'cz',	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(106,	NULL,	NULL,	'PS_ATTACHMENT_MAXIMUM_SIZE',	'8',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(107,	NULL,	NULL,	'PS_SMARTY_CACHE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(108,	NULL,	NULL,	'PS_DIMENSION_UNIT',	'cm',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(109,	NULL,	NULL,	'PS_GUEST_CHECKOUT_ENABLED',	'1',	'0000-00-00 00:00:00',	'2021-05-08 13:40:05'),
(110,	NULL,	NULL,	'PS_ORDER_CONF_MAIL_TO_CUSTOMER',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(111,	NULL,	NULL,	'PS_ORDER_CONF_MAIL_TO_SUPERADMIN',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(112,	NULL,	NULL,	'PS_ORDER_CONF_MAIL_TO_HOTEL_MANAGER',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(113,	NULL,	NULL,	'PS_ORDER_CONF_MAIL_TO_EMPLOYEE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(114,	NULL,	NULL,	'PS_DISPLAY_SUPPLIERS',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(115,	NULL,	NULL,	'PS_DISPLAY_BEST_SELLERS',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(116,	NULL,	NULL,	'PS_CATALOG_MODE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(117,	NULL,	NULL,	'PS_GEOLOCATION_WHITELIST',	'127;209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;91.240.109;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(118,	NULL,	NULL,	'PS_LOGS_BY_EMAIL',	'5',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(119,	NULL,	NULL,	'PS_COOKIE_CHECKIP',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(120,	NULL,	NULL,	'PS_STORES_CENTER_LAT',	'25.948969',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(121,	NULL,	NULL,	'PS_STORES_CENTER_LONG',	'-80.226439',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(122,	NULL,	NULL,	'PS_USE_ECOTAX',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(123,	NULL,	NULL,	'PS_CANONICAL_REDIRECT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(124,	NULL,	NULL,	'PS_IMG_UPDATE_TIME',	'1716067678',	'0000-00-00 00:00:00',	'2024-05-18 23:27:58'),
(125,	NULL,	NULL,	'PS_BACKUP_DROP_TABLE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(126,	NULL,	NULL,	'PS_OS_CHEQUE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(127,	NULL,	NULL,	'PS_OS_PAYMENT',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(128,	NULL,	NULL,	'PS_OS_PREPARATION',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(129,	NULL,	NULL,	'PS_OS_CANCELED',	'4',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(130,	NULL,	NULL,	'PS_OS_REFUND',	'5',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(131,	NULL,	NULL,	'PS_OS_ERROR',	'6',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(132,	NULL,	NULL,	'PS_OS_OUTOFSTOCK',	'7',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(133,	NULL,	NULL,	'PS_OS_BANKWIRE',	'8',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(134,	NULL,	NULL,	'PS_OS_PAYPAL',	'9',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(135,	NULL,	NULL,	'PS_OS_WS_PAYMENT',	'10',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(136,	NULL,	NULL,	'PS_OS_OUTOFSTOCK_PAID',	'7',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(137,	NULL,	NULL,	'PS_OS_OUTOFSTOCK_UNPAID',	'11',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(138,	NULL,	NULL,	'PS_OS_AWAITING_REMOTE_PAYMENT',	'12',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(139,	NULL,	NULL,	'PS_OS_AWAITING_PARTIAL_PAYMENT',	'13',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(140,	NULL,	NULL,	'PS_OS_PARTIAL_PAYMENT',	'14',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(141,	NULL,	NULL,	'PS_LEGACY_IMAGES',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(142,	NULL,	NULL,	'PS_IMAGE_QUALITY',	'png',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(143,	NULL,	NULL,	'PS_PNG_QUALITY',	'7',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(144,	NULL,	NULL,	'PS_JPEG_QUALITY',	'90',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(145,	NULL,	NULL,	'PS_COOKIE_LIFETIME_FO',	'480',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(146,	NULL,	NULL,	'PS_COOKIE_LIFETIME_BO',	'480',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(147,	NULL,	NULL,	'PS_RESTRICT_DELIVERED_COUNTRIES',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(148,	NULL,	NULL,	'PS_SHOW_NEW_ORDERS',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(149,	NULL,	NULL,	'PS_SHOW_NEW_CUSTOMERS',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(150,	NULL,	NULL,	'PS_SHOW_NEW_MESSAGES',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(151,	NULL,	NULL,	'PS_FEATURE_FEATURE_ACTIVE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(152,	NULL,	NULL,	'PS_COMBINATION_FEATURE_ACTIVE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(153,	NULL,	NULL,	'PS_SPECIFIC_PRICE_FEATURE_ACTIVE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(154,	NULL,	NULL,	'PS_SCENE_FEATURE_ACTIVE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(155,	NULL,	NULL,	'PS_VIRTUAL_PROD_FEATURE_ACTIVE',	'1',	'0000-00-00 00:00:00',	'2021-05-04 13:11:34'),
(156,	NULL,	NULL,	'PS_CUSTOMIZATION_FEATURE_ACTIVE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(157,	NULL,	NULL,	'PS_CART_RULE_FEATURE_ACTIVE',	'1',	'0000-00-00 00:00:00',	'2022-11-22 18:30:47'),
(158,	NULL,	NULL,	'PS_PACK_FEATURE_ACTIVE',	NULL,	'0000-00-00 00:00:00',	'2024-05-17 23:50:56'),
(159,	NULL,	NULL,	'PS_ALIAS_FEATURE_ACTIVE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(160,	NULL,	NULL,	'PS_TAX_ADDRESS_TYPE',	'id_address_delivery',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(161,	NULL,	NULL,	'PS_SHOP_DEFAULT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(162,	NULL,	NULL,	'PS_CARRIER_DEFAULT_SORT',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(163,	NULL,	NULL,	'PS_STOCK_MVT_INC_REASON_DEFAULT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(164,	NULL,	NULL,	'PS_STOCK_MVT_DEC_REASON_DEFAULT',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(165,	NULL,	NULL,	'PS_ADVANCED_STOCK_MANAGEMENT',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(166,	NULL,	NULL,	'PS_ADMINREFRESH_NOTIFICATION',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(167,	NULL,	NULL,	'PS_STOCK_MVT_TRANSFER_TO',	'7',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(168,	NULL,	NULL,	'PS_STOCK_MVT_TRANSFER_FROM',	'6',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(169,	NULL,	NULL,	'PS_CARRIER_DEFAULT_ORDER',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(170,	NULL,	NULL,	'PS_STOCK_MVT_SUPPLY_ORDER',	'8',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(171,	NULL,	NULL,	'PS_STOCK_CUSTOMER_ORDER_REASON',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(172,	NULL,	NULL,	'PS_UNIDENTIFIED_GROUP',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(173,	NULL,	NULL,	'PS_GUEST_GROUP',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(174,	NULL,	NULL,	'PS_CUSTOMER_GROUP',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(175,	NULL,	NULL,	'PS_SMARTY_CONSOLE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(176,	NULL,	NULL,	'PS_INVOICE_MODEL',	'invoice',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(177,	NULL,	NULL,	'PS_LIMIT_UPLOAD_IMAGE_VALUE',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(178,	NULL,	NULL,	'PS_LIMIT_UPLOAD_FILE_VALUE',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(179,	NULL,	NULL,	'MB_PAY_TO_EMAIL',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(180,	NULL,	NULL,	'MB_SECRET_WORD',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(181,	NULL,	NULL,	'MB_HIDE_LOGIN',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(182,	NULL,	NULL,	'MB_ID_LOGO',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(183,	NULL,	NULL,	'MB_ID_LOGO_WALLET',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(184,	NULL,	NULL,	'MB_PARAMETERS',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(185,	NULL,	NULL,	'MB_PARAMETERS_2',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(186,	NULL,	NULL,	'MB_DISPLAY_MODE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(187,	NULL,	NULL,	'MB_CANCEL_URL',	'http://www.yoursite.com',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(188,	NULL,	NULL,	'MB_LOCAL_METHODS',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(189,	NULL,	NULL,	'MB_INTER_METHODS',	'5',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(190,	NULL,	NULL,	'BANK_WIRE_CURRENCIES',	'2,1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(191,	NULL,	NULL,	'CHEQUE_CURRENCIES',	'2,1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(192,	NULL,	NULL,	'PRODUCTS_VIEWED_NBR',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(193,	NULL,	NULL,	'BLOCK_CATEG_DHTML',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(194,	NULL,	NULL,	'BLOCK_CATEG_MAX_DEPTH',	'4',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(195,	NULL,	NULL,	'MANUFACTURER_DISPLAY_FORM',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(196,	NULL,	NULL,	'MANUFACTURER_DISPLAY_TEXT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(197,	NULL,	NULL,	'MANUFACTURER_DISPLAY_TEXT_NB',	'5',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(198,	NULL,	NULL,	'NEW_PRODUCTS_NBR',	'8',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(199,	NULL,	NULL,	'PS_TOKEN_ENABLE',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(200,	NULL,	NULL,	'PS_STATS_RENDER',	'graphnvd3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(201,	NULL,	NULL,	'PS_STATS_OLD_CONNECT_AUTO_CLEAN',	'never',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(202,	NULL,	NULL,	'PS_STATS_GRID_RENDER',	'gridhtml',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(203,	NULL,	NULL,	'BLOCKTAGS_NBR',	'10',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(204,	NULL,	NULL,	'CHECKUP_DESCRIPTIONS_LT',	'100',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(205,	NULL,	NULL,	'CHECKUP_DESCRIPTIONS_GT',	'400',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(206,	NULL,	NULL,	'CHECKUP_IMAGES_LT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(207,	NULL,	NULL,	'CHECKUP_IMAGES_GT',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(208,	NULL,	NULL,	'CHECKUP_SALES_LT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(209,	NULL,	NULL,	'CHECKUP_SALES_GT',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(210,	NULL,	NULL,	'CHECKUP_STOCK_LT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(211,	NULL,	NULL,	'CHECKUP_STOCK_GT',	'3',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(212,	NULL,	NULL,	'FOOTER_CMS',	'0_3|0_4',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(213,	NULL,	NULL,	'FOOTER_BLOCK_ACTIVATION',	'0_3|0_4',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(214,	NULL,	NULL,	'FOOTER_POWEREDBY',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(215,	NULL,	NULL,	'BLOCKADVERT_LINK',	'https://qloapps.com/',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(216,	NULL,	NULL,	'BLOCKSTORE_IMG',	'store.jpg',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(217,	NULL,	NULL,	'BLOCKADVERT_IMG_EXT',	'jpg',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(218,	NULL,	NULL,	'MOD_BLOCKTOPMENU_ITEMS',	'CAT3,CAT8,CAT5,LNK1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(219,	NULL,	NULL,	'MOD_BLOCKTOPMENU_SEARCH',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(220,	NULL,	NULL,	'BLOCKSOCIAL_FACEBOOK',	'https://www.facebook.com/qloapps',	'0000-00-00 00:00:00',	'2021-05-04 13:11:40'),
(221,	NULL,	NULL,	'BLOCKSOCIAL_TWITTER',	'https://twitter.com/qloapps',	'0000-00-00 00:00:00',	'2021-05-04 13:11:40'),
(222,	NULL,	NULL,	'BLOCKCONTACTINFOS_COMPANY',	'My Company',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(223,	NULL,	NULL,	'BLOCKCONTACTINFOS_ADDRESS',	'42 Puffin street\n12345 Puffinville\nFrance',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(224,	NULL,	NULL,	'BLOCKCONTACTINFOS_PHONE',	'0123-456-789',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(225,	NULL,	NULL,	'BLOCKCONTACTINFOS_EMAIL',	'sales@yourcompany.com',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(226,	NULL,	NULL,	'BLOCKCONTACT_TELNUMBER',	'0123-456-789',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(227,	NULL,	NULL,	'BLOCKCONTACT_EMAIL',	'sales@yourcompany.com',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(228,	NULL,	NULL,	'SUPPLIER_DISPLAY_TEXT',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(229,	NULL,	NULL,	'SUPPLIER_DISPLAY_TEXT_NB',	'5',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(230,	NULL,	NULL,	'SUPPLIER_DISPLAY_FORM',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(231,	NULL,	NULL,	'BLOCK_CATEG_NBR_COLUMN_FOOTER',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(232,	NULL,	NULL,	'UPGRADER_BACKUPDB_FILENAME',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(233,	NULL,	NULL,	'UPGRADER_BACKUPFILES_FILENAME',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(234,	NULL,	NULL,	'BLOCKREINSURANCE_NBBLOCKS',	'5',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(235,	NULL,	NULL,	'HOMESLIDER_WIDTH',	'535',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(236,	NULL,	NULL,	'HOMESLIDER_SPEED',	'1300',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(237,	NULL,	NULL,	'HOMESLIDER_PAUSE',	'7700',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(238,	NULL,	NULL,	'HOMESLIDER_LOOP',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(239,	NULL,	NULL,	'PS_BASE_DISTANCE_UNIT',	'm',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(240,	NULL,	NULL,	'PS_SHOP_DOMAIN',	@SERVER_DOMAIN,	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(241,	NULL,	NULL,	'PS_SHOP_DOMAIN_SSL',	@SERVER_DOMAIN,	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(242,	NULL,	NULL,	'PS_SHOP_NAME',	'Czechitas DA Hackathon',	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(243,	NULL,	NULL,	'PS_SHOP_EMAIL',	'robin.weiss@czechitas.cz',	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(244,	NULL,	NULL,	'PS_MAIL_METHOD',	'3',	'0000-00-00 00:00:00',	'2024-05-18 22:25:18'),
(245,	NULL,	NULL,	'PS_SHOP_ACTIVITY',	'20',	'0000-00-00 00:00:00',	'2021-05-04 13:11:30'),
(246,	NULL,	NULL,	'PS_LOGO',	'czechitas-da-hackathon-logo-1716064042.jpg',	'0000-00-00 00:00:00',	'2024-05-18 22:27:22'),
(247,	NULL,	NULL,	'PS_FAVICON',	'favicon.ico',	'0000-00-00 00:00:00',	'2024-05-18 22:27:22'),
(248,	NULL,	NULL,	'PS_STORES_ICON',	'logo_stores.gif',	'0000-00-00 00:00:00',	'2021-05-04 13:11:40'),
(249,	NULL,	NULL,	'PS_ROOT_CATEGORY',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(250,	NULL,	NULL,	'PS_HOME_CATEGORY',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(251,	NULL,	NULL,	'PS_CONFIGURATION_AGREMENT',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(252,	NULL,	NULL,	'PS_MAIL_SERVER',	'smtp.',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(253,	NULL,	NULL,	'PS_MAIL_USER',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(254,	NULL,	NULL,	'PS_MAIL_PASSWD',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(255,	NULL,	NULL,	'PS_MAIL_SMTP_ENCRYPTION',	'off',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(256,	NULL,	NULL,	'PS_MAIL_SMTP_PORT',	'25',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(257,	NULL,	NULL,	'PS_MAIL_COLOR',	'#db3484',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(258,	NULL,	NULL,	'NW_SALT',	'Pdqpfu8JT1EGLKkS',	'0000-00-00 00:00:00',	'2021-05-04 13:11:40'),
(259,	NULL,	NULL,	'PS_PAYMENT_LOGO_CMS_ID',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(260,	NULL,	NULL,	'HOME_FEATURED_NBR',	'8',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(261,	NULL,	NULL,	'SEK_MIN_OCCURENCES',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(262,	NULL,	NULL,	'SEK_FILTER_KW',	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(263,	NULL,	NULL,	'PS_ALLOW_MOBILE_DEVICE',	'1',	'0000-00-00 00:00:00',	'2021-05-16 19:49:03'),
(264,	NULL,	NULL,	'PS_CUSTOMER_CREATION_EMAIL',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(265,	NULL,	NULL,	'PS_SMARTY_CONSOLE_KEY',	'SMARTY_DEBUG',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(266,	NULL,	NULL,	'PS_DASHBOARD_USE_PUSH',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(267,	NULL,	NULL,	'PS_ATTRIBUTE_ANCHOR_SEPARATOR',	'-',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(268,	NULL,	NULL,	'CONF_AVERAGE_PRODUCT_MARGIN',	'40',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(269,	NULL,	NULL,	'PS_DASHBOARD_SIMULATION',	'0',	'0000-00-00 00:00:00',	'2021-05-08 14:10:26'),
(270,	NULL,	NULL,	'PS_QUICK_VIEW',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(271,	NULL,	NULL,	'PS_USE_HTMLPURIFIER',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(272,	NULL,	NULL,	'PS_SMARTY_CACHING_TYPE',	'filesystem',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(273,	NULL,	NULL,	'PS_SMARTY_CLEAR_CACHE',	'everytime',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(274,	NULL,	NULL,	'PS_DETECT_LANG',	'0',	'0000-00-00 00:00:00',	'2021-05-16 19:52:38'),
(275,	NULL,	NULL,	'PS_DETECT_COUNTRY',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(276,	NULL,	NULL,	'PS_ROUND_TYPE',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(277,	NULL,	NULL,	'PS_PRICE_DISPLAY_PRECISION',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(278,	NULL,	NULL,	'PS_LOG_EMAILS',	'0',	'0000-00-00 00:00:00',	'2024-05-18 22:25:18'),
(279,	NULL,	NULL,	'PS_CUSTOMER_NWSL',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(280,	NULL,	NULL,	'PS_CUSTOMER_OPTIN',	'1',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(281,	NULL,	NULL,	'PS_PACK_STOCK_TYPE',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(282,	NULL,	NULL,	'PS_LOG_MODULE_PERFS_MODULO',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(283,	NULL,	NULL,	'PS_DISALLOW_HISTORY_REORDERING',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(284,	NULL,	NULL,	'PS_DISPLAY_PRODUCT_WEIGHT',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(285,	NULL,	NULL,	'PS_PRODUCT_WEIGHT_PRECISION',	'2',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(286,	NULL,	NULL,	'PS_ADVANCED_PAYMENT_API',	'0',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(287,	NULL,	NULL,	'WK_HOTEL_LOCATION_ENABLE',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(288,	NULL,	NULL,	'WK_HOTEL_NAME_ENABLE',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(289,	NULL,	NULL,	'WK_ROOM_LEFT_WARNING_NUMBER',	'10',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(290,	NULL,	NULL,	'WK_HTL_ESTABLISHMENT_YEAR',	'2021',	'2021-05-04 13:11:40',	'2021-05-05 21:21:30'),
(291,	NULL,	NULL,	'WK_HOTEL_GLOBAL_ADDRESS',	'The hackathon boulevard 666, Brighton, UK',	'2021-05-04 13:11:40',	'2021-05-05 21:21:30'),
(292,	NULL,	NULL,	'WK_HOTEL_GLOBAL_CONTACT_NUMBER',	'0987654321',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(293,	NULL,	NULL,	'WK_HOTEL_GLOBAL_CONTACT_EMAIL',	'robin.weiss6@gmail.com',	'2021-05-04 13:11:40',	'2021-05-05 21:21:30'),
(294,	NULL,	NULL,	'WK_TITLE_HEADER_BLOCK',	'Four Lessons Hotel Greshon Palace',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(295,	NULL,	NULL,	'WK_CONTENT_HEADER_BLOCK',	'Tofu helvetica leggings tattooed. Skateboard blue bottle green juice,\n        brooklyn cardigan kitsch fap narwhal organic flexitarian.',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(296,	NULL,	NULL,	'WK_HOTEL_HEADER_IMAGE',	'hotel_header_image.jpg',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(297,	NULL,	NULL,	'WK_ALLOW_ADVANCED_PAYMENT',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(298,	NULL,	NULL,	'WK_ADVANCED_PAYMENT_GLOBAL_MIN_AMOUNT',	'10',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(299,	NULL,	NULL,	'WK_ADVANCED_PAYMENT_INC_TAX',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(300,	NULL,	NULL,	'MAX_GLOBAL_BOOKING_DATE',	@maxReservationDate,	'2021-05-04 13:11:40',	'2024-05-23 23:12:13'),
(301,	NULL,	NULL,	'HTL_FEATURE_PRICING_PRIORITY',	'specific_date;special_day;date_range',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(302,	NULL,	NULL,	'WK_GOOGLE_ACTIVE_MAP',	'0',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(303,	NULL,	NULL,	'WK_MAP_HOTEL_ACTIVE_ONLY',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(304,	NULL,	NULL,	'PS_LOGO_MAIL',	'logo_mail.jpg',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(305,	NULL,	NULL,	'PS_LOGO_INVOICE',	'logo_invoice.jpg',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(306,	NULL,	NULL,	'WK_HTL_CHAIN_NAME',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(307,	NULL,	NULL,	'WK_HTL_TAG_LINE',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(308,	NULL,	NULL,	'WK_HTL_SHORT_DESC',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(309,	NULL,	NULL,	'BLOCKSOCIAL_RSS',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(310,	NULL,	NULL,	'BLOCKSOCIAL_YOUTUBE',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(311,	NULL,	NULL,	'BLOCKSOCIAL_GOOGLE_PLUS',	'https://plus.google.com/110221570427070809661',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(312,	NULL,	NULL,	'BLOCKSOCIAL_PINTEREST',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(313,	NULL,	NULL,	'BLOCKSOCIAL_VIMEO',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(314,	NULL,	NULL,	'BLOCKSOCIAL_INSTAGRAM',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(315,	NULL,	NULL,	'SHOW_RATTING_FILTER',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(316,	NULL,	NULL,	'SHOW_AMENITIES_FILTER',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(317,	NULL,	NULL,	'SHOW_PRICE_FILTER',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(318,	NULL,	NULL,	'HOTEL_INTERIOR_BLOCK_NAV_LINK',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(319,	NULL,	NULL,	'HOTEL_INTERIOR_HEADING',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(320,	NULL,	NULL,	'HOTEL_INTERIOR_DESCRIPTION',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(321,	NULL,	NULL,	'HOTEL_AMENITIES_BLOCK_NAV_LINK',	'1',	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(322,	NULL,	NULL,	'HOTEL_AMENITIES_HEADING',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(323,	NULL,	NULL,	'HOTEL_AMENITIES_DESCRIPTION',	NULL,	'2021-05-04 13:11:40',	'2021-05-04 13:11:40'),
(324,	NULL,	NULL,	'HOTEL_ROOM_BLOCK_NAV_LINK',	'1',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(325,	NULL,	NULL,	'HOTEL_ROOM_DISPLAY_HEADING',	NULL,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(326,	NULL,	NULL,	'HOTEL_ROOM_DISPLAY_DESCRIPTION',	NULL,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(327,	NULL,	NULL,	'HOTEL_TESIMONIAL_BLOCK_NAV_LINK',	'1',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(328,	NULL,	NULL,	'HOTEL_TESIMONIAL_BLOCK_HEADING',	NULL,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(329,	NULL,	NULL,	'HOTEL_TESIMONIAL_BLOCK_CONTENT',	NULL,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(330,	NULL,	NULL,	'CONF_BANKWIRE_FIXED',	'0.2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(331,	NULL,	NULL,	'CONF_BANKWIRE_VAR',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(332,	NULL,	NULL,	'CONF_BANKWIRE_FIXED_FOREIGN',	'0.2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(333,	NULL,	NULL,	'CONF_BANKWIRE_VAR_FOREIGN',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(334,	NULL,	NULL,	'CONF_CHEQUE_FIXED',	'0.2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(335,	NULL,	NULL,	'CONF_CHEQUE_VAR',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(336,	NULL,	NULL,	'CONF_CHEQUE_FIXED_FOREIGN',	'0.2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(337,	NULL,	NULL,	'CONF_CHEQUE_VAR_FOREIGN',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(338,	NULL,	NULL,	'CONF_PAYPAL_FIXED',	'0.2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(339,	NULL,	NULL,	'CONF_PAYPAL_VAR',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(340,	NULL,	NULL,	'CONF_PAYPAL_FIXED_FOREIGN',	'0.2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(341,	NULL,	NULL,	'CONF_PAYPAL_VAR_FOREIGN',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(342,	NULL,	NULL,	'PAYPAL_SANDBOX',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(343,	NULL,	NULL,	'PAYPAL_HEADER',	NULL,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(344,	NULL,	NULL,	'PAYPAL_BUSINESS',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(345,	NULL,	NULL,	'PAYPAL_BUSINESS_ACCOUNT',	'paypal@prestashop.com',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(346,	NULL,	NULL,	'PAYPAL_API_USER',	NULL,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(347,	NULL,	NULL,	'PAYPAL_API_PASSWORD',	NULL,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(348,	NULL,	NULL,	'PAYPAL_API_SIGNATURE',	NULL,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(349,	NULL,	NULL,	'PAYPAL_EXPRESS_CHECKOUT',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(350,	NULL,	NULL,	'PAYPAL_CAPTURE',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(351,	NULL,	NULL,	'PAYPAL_PAYMENT_METHOD',	'1',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(352,	NULL,	NULL,	'PAYPAL_NEW',	'1',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(353,	NULL,	NULL,	'PAYPAL_DEBUG_MODE',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(354,	NULL,	NULL,	'PAYPAL_SHIPPING_COST',	'20',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(355,	NULL,	NULL,	'PAYPAL_VERSION',	'1.0.2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(356,	NULL,	NULL,	'PAYPAL_COUNTRY_DEFAULT',	'16',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(357,	NULL,	NULL,	'PAYPAL_USE_3D_SECURE',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(358,	NULL,	NULL,	'PAYPAL_EXPRESS_CHECKOUT_SHORTCUT',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(359,	NULL,	NULL,	'VZERO_ENABLED',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(360,	NULL,	NULL,	'PAYPAL_BRAINTREE_ENABLED',	'0',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(361,	NULL,	NULL,	'PAYPAL_OS_AUTHORIZATION',	'15',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(362,	NULL,	NULL,	'PAYPAL_BT_OS_AUTHORIZATION',	'16',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(363,	NULL,	NULL,	'PAYPAL_BRAINTREE_OS_AWAITING',	'17',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(364,	NULL,	NULL,	'PRODUCT_COMMENTS_MINIMAL_TIME',	'30',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(365,	NULL,	NULL,	'PRODUCT_COMMENTS_ALLOW_GUESTS',	'1',	'2021-05-04 13:11:41',	'2021-05-08 14:11:02'),
(366,	NULL,	NULL,	'PRODUCT_COMMENTS_MODERATE',	'1',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(367,	NULL,	NULL,	'WK_SHOW_FOOTER_NAVIGATION_BLOCK',	'1',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(368,	NULL,	NULL,	'DASHACTIVITY_CART_ACTIVE',	'30',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(369,	NULL,	NULL,	'DASHACTIVITY_CART_ABANDONED_MIN',	'24',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(370,	NULL,	NULL,	'DASHACTIVITY_CART_ABANDONED_MAX',	'48',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(371,	NULL,	NULL,	'DASHACTIVITY_VISITOR_ONLINE',	'30',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(372,	NULL,	NULL,	'PS_DASHGOALS_CURRENT_YEAR',	'2021',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(373,	NULL,	NULL,	'DASHPRODUCT_NBR_SHOW_LAST_ORDER',	'10',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(374,	NULL,	NULL,	'DASHPRODUCT_NBR_SHOW_BEST_SELLER',	'10',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(375,	NULL,	NULL,	'DASHPRODUCT_NBR_SHOW_MOST_VIEWED',	'10',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(376,	NULL,	NULL,	'DASHPRODUCT_NBR_SHOW_TOP_SEARCH',	'10',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(377,	NULL,	NULL,	'PS_BLOCK_CART_XSELL_LIMIT',	'12',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(378,	NULL,	NULL,	'PS_BLOCK_CART_SHOW_CROSSSELLING',	'1',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(379,	NULL,	NULL,	'PS_WEBSERVICE',	'1',	'2021-05-05 21:02:06',	'2021-05-05 21:02:06'),
(380,	NULL,	NULL,	'PS_WEBSERVICE_CGI_HOST',	'1',	'2021-05-05 21:02:06',	'2021-05-05 21:02:06'),
(381,	NULL,	NULL,	'PS_API_KEY',	NULL,	'2021-05-05 21:21:30',	'2024-05-17 23:54:16'),
(382,	NULL,	NULL,	'NW_CONFIRMATION_EMAIL',	'1',	'2021-05-05 23:14:51',	'2021-05-05 23:14:51'),
(383,	NULL,	NULL,	'NW_VERIFICATION_EMAIL',	'1',	'2021-05-05 23:14:51',	'2021-05-05 23:14:51'),
(384,	NULL,	NULL,	'NW_VOUCHER_CODE',	NULL,	'2021-05-05 23:14:51',	'2021-05-05 23:14:51'),
(385,	NULL,	NULL,	'BANK_WIRE_DETAILS',	'Account number: 1122334455/0123 (Neposílejte sem žádné prachy :-) )',	'2021-05-08 13:46:03',	'2021-05-08 13:47:30'),
(386,	NULL,	NULL,	'BANK_WIRE_OWNER',	'Martin Fox',	'2021-05-08 13:46:03',	'2021-05-08 13:46:03'),
(387,	NULL,	NULL,	'BANK_WIRE_ADDRESS',	'Czechitas-Ostrava crescent 78, Brighton BR457LI',	'2021-05-08 13:46:03',	'2021-05-08 13:46:03'),
(388,	NULL,	NULL,	'CHEQUE_NAME',	'Martin Fox',	'2021-05-08 13:55:14',	'2021-05-08 13:55:14'),
(389,	NULL,	NULL,	'CHEQUE_ADDRESS',	'The hackathon boulevard 666, Brighton',	'2021-05-08 13:55:14',	'2021-05-08 13:55:14'),
(390,	NULL,	NULL,	'PS_SHOW_TYPE_MODULES_1',	'allModules',	'2021-05-09 14:05:54',	'2021-05-09 14:05:54'),
(391,	NULL,	NULL,	'PS_SHOW_INSTALLED_MODULES_1',	'installed',	'2021-05-09 14:05:54',	'2022-11-23 09:03:29'),
(392,	NULL,	NULL,	'PS_SHOW_ENABLED_MODULES_1',	'enabledDisabled',	'2021-05-09 14:05:54',	'2022-11-22 14:44:30'),
(393,	NULL,	NULL,	'PS_SHOW_CAT_MODULES_1',	NULL,	'2021-05-09 14:08:04',	'2024-05-18 23:06:30'),
(394,	NULL,	NULL,	'PS_REGISTRATION_PROCESS_TYPE',	'0',	'2021-05-22 11:23:32',	'2021-05-22 11:23:32'),
(395,	NULL,	NULL,	'PS_CART_FOLLOWING',	'0',	'2021-05-22 11:23:32',	'2021-05-22 11:23:32'),
(396,	NULL,	NULL,	'PS_B2B_ENABLE',	'0',	'2021-05-22 11:23:32',	'2021-05-22 11:23:32'),
(397,	NULL,	NULL,	'PS_CUSTOMER_ADDRESS_CREATION',	'1',	'2021-05-22 11:23:32',	'2021-05-22 11:23:32'),
(398,	NULL,	NULL,	'submitDashConfig',	'1',	'2021-05-22 19:52:54',	'2021-05-22 19:52:54'),
(399,	NULL,	NULL,	'PS_REFERRERS_CACHE_LIKE',	' \'2021-04-22 00:00:00\' AND \'2021-05-22 23:59:59\' ',	'2021-05-22 19:55:08',	'2022-05-28 09:53:19'),
(400,	NULL,	NULL,	'PS_REFERRERS_CACHE_DATE',	'2022-05-28 09:53:19',	'2021-05-22 19:55:08',	'2022-05-28 09:53:19'),
(401,	NULL,	NULL,	'PS_MAINTENANCE_IP',	NULL,	'2021-11-25 12:27:34',	'2023-11-30 17:05:16'),
(402,	NULL,	NULL,	'PS_MAIL_EMAIL_MESSAGE',	'1',	'2022-05-20 10:19:04',	'2022-05-20 10:19:04'),
(403,	NULL,	NULL,	'PS_MAIL_DOMAIN',	NULL,	'2022-05-20 10:19:04',	'2024-05-18 22:25:18'),
(404,	NULL,	NULL,	'WK_ORDER_REFUND_ALLOWED',	'0',	'2022-11-22 14:07:39',	'2022-11-22 14:30:39'),
(405,	NULL,	NULL,	'WK_GLOBAL_REFUND_POLICY_CMS',	'3',	'2022-11-22 14:07:39',	'2022-11-22 14:07:39'),
(406,	NULL,	NULL,	'BLOCKSPECIALS_NB_CACHES',	'20',	'2022-11-23 09:03:05',	'2022-11-23 09:03:05'),
(407,	NULL,	NULL,	'BLOCKSPECIALS_SPECIALS_NBR',	'5',	'2022-11-23 09:03:05',	'2022-11-23 09:03:05'),
(408,	NULL,	NULL,	'PS_ALLOW_ACCENTED_CHARS_URL',	'0',	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(409,	NULL,	NULL,	'PS_HTACCESS_DISABLE_MULTIVIEWS',	'0',	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(410,	NULL,	NULL,	'PS_HTACCESS_DISABLE_MODSEC',	'0',	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(411,	NULL,	NULL,	'PS_ROUTE_product_rule',	NULL,	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(412,	NULL,	NULL,	'PS_ROUTE_category_rule',	NULL,	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(413,	NULL,	NULL,	'PS_ROUTE_layered_rule',	NULL,	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(414,	NULL,	NULL,	'PS_ROUTE_supplier_rule',	NULL,	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(415,	NULL,	NULL,	'PS_ROUTE_manufacturer_rule',	NULL,	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(416,	NULL,	NULL,	'PS_ROUTE_cms_rule',	NULL,	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(417,	NULL,	NULL,	'PS_ROUTE_cms_category_rule',	NULL,	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(418,	NULL,	NULL,	'PS_ROUTE_module',	'module/{module}{/:controller}',	'2022-11-23 13:44:23',	'2022-11-23 13:44:23'),
(419,	NULL,	NULL,	'PS_SSL_ENABLED_EVERYWHERE',	'1',	'2024-05-23 23:12:42',	'2024-05-23 23:12:46'),
(420,	NULL,	NULL,	'PS_ALLOW_HTML_IFRAME',	'0',	'2024-05-23 23:12:42',	'2024-05-23 23:12:42');

DROP TABLE IF EXISTS `ps_configuration_kpi`;
CREATE TABLE `ps_configuration_kpi` (
  `id_configuration_kpi` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned DEFAULT NULL,
  `id_shop` int unsigned DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration_kpi`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_configuration_kpi` (`id_configuration_kpi`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1,	NULL,	NULL,	'DASHGOALS_TRAFFIC_01_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(2,	NULL,	NULL,	'DASHGOALS_CONVERSION_01_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(3,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_01_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(4,	NULL,	NULL,	'DASHGOALS_TRAFFIC_02_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(5,	NULL,	NULL,	'DASHGOALS_CONVERSION_02_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(6,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_02_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(7,	NULL,	NULL,	'DASHGOALS_TRAFFIC_03_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(8,	NULL,	NULL,	'DASHGOALS_CONVERSION_03_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(9,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_03_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(10,	NULL,	NULL,	'DASHGOALS_TRAFFIC_04_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(11,	NULL,	NULL,	'DASHGOALS_CONVERSION_04_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(12,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_04_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(13,	NULL,	NULL,	'DASHGOALS_TRAFFIC_05_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(14,	NULL,	NULL,	'DASHGOALS_CONVERSION_05_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(15,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_05_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(16,	NULL,	NULL,	'DASHGOALS_TRAFFIC_06_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(17,	NULL,	NULL,	'DASHGOALS_CONVERSION_06_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(18,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_06_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(19,	NULL,	NULL,	'DASHGOALS_TRAFFIC_07_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(20,	NULL,	NULL,	'DASHGOALS_CONVERSION_07_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(21,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_07_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(22,	NULL,	NULL,	'DASHGOALS_TRAFFIC_08_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(23,	NULL,	NULL,	'DASHGOALS_CONVERSION_08_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(24,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_08_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(25,	NULL,	NULL,	'DASHGOALS_TRAFFIC_09_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(26,	NULL,	NULL,	'DASHGOALS_CONVERSION_09_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(27,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_09_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(28,	NULL,	NULL,	'DASHGOALS_TRAFFIC_10_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(29,	NULL,	NULL,	'DASHGOALS_CONVERSION_10_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(30,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_10_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(31,	NULL,	NULL,	'DASHGOALS_TRAFFIC_11_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(32,	NULL,	NULL,	'DASHGOALS_CONVERSION_11_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(33,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_11_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(34,	NULL,	NULL,	'DASHGOALS_TRAFFIC_12_2021',	'600',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(35,	NULL,	NULL,	'DASHGOALS_CONVERSION_12_2021',	'2',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(36,	NULL,	NULL,	'DASHGOALS_AVG_CART_VALUE_12_2021',	'80',	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(37,	NULL,	NULL,	'UPDATE_MODULES',	'0',	'2021-05-05 20:54:35',	'2021-05-05 20:54:35'),
(38,	NULL,	NULL,	'INSTALLED_MODULES',	'48',	'2024-05-18 22:48:11',	'2024-05-18 22:48:11'),
(39,	NULL,	NULL,	'DISABLED_MODULES',	'0',	'2024-05-18 22:48:11',	'2024-05-18 22:48:11'),
(40,	NULL,	NULL,	'INSTALLED_MODULES_EXPIRE',	'1716065411',	'2024-05-18 22:48:11',	'2024-05-18 22:48:11'),
(41,	NULL,	NULL,	'DISABLED_MODULES_EXPIRE',	'1716065411',	'2024-05-18 22:48:11',	'2024-05-18 22:48:11'),
(42,	NULL,	NULL,	'UPDATE_MODULES_EXPIRE',	'1716065411',	'2024-05-18 22:48:11',	'2024-05-18 22:48:11');

DROP TABLE IF EXISTS `ps_configuration_kpi_lang`;
CREATE TABLE `ps_configuration_kpi_lang` (
  `id_configuration_kpi` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration_kpi`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_configuration_lang`;
CREATE TABLE `ps_configuration_lang` (
  `id_configuration` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_configuration_lang` (`id_configuration`, `id_lang`, `value`, `date_upd`) VALUES
(41,	1,	'#IN',	NULL),
(41,	2,	'#FA',	NULL),
(44,	1,	'#DE',	NULL),
(44,	2,	'#DE',	NULL),
(46,	1,	'#RE',	NULL),
(46,	2,	'#RE',	NULL),
(52,	1,	'a|about|above|after|again|against|all|am|an|and|any|are|aren|as|at|be|because|been|before|being|below|between|both|but|by|can|cannot|could|couldn|did|didn|do|does|doesn|doing|don|down|during|each|few|for|from|further|had|hadn|has|hasn|have|haven|having|he|ll|her|here|hers|herself|him|himself|his|how|ve|if|in|into|is|isn|it|its|itself|let|me|more|most|mustn|my|myself|no|nor|not|of|off|on|once|only|or|other|ought|our|ours|ourselves|out|over|own|same|shan|she|should|shouldn|so|some|such|than|that|the|their|theirs|them|themselves|then|there|these|they|re|this|those|through|to|too|under|until|up|very|was|wasn|we|were|weren|what|when|where|which|while|who|whom|why|with|won|would|wouldn|you|your|yours|yourself|yourselves',	NULL),
(52,	2,	'a|about|above|after|again|against|all|am|an|and|any|are|aren|as|at|be|because|been|before|being|below|between|both|but|by|can|cannot|could|couldn|did|didn|do|does|doesn|doing|don|down|during|each|few|for|from|further|had|hadn|has|hasn|have|haven|having|he|ll|her|here|hers|herself|him|himself|his|how|ve|if|in|into|is|isn|it|its|itself|let|me|more|most|mustn|my|myself|no|nor|not|of|off|on|once|only|or|other|ought|our|ours|ourselves|out|over|own|same|shan|she|should|shouldn|so|some|such|than|that|the|their|theirs|them|themselves|then|there|these|they|re|this|those|through|to|too|under|until|up|very|was|wasn|we|were|weren|what|when|where|which|while|who|whom|why|with|won|would|wouldn|you|your|yours|yourself|yourselves',	NULL),
(74,	1,	'0',	NULL),
(74,	2,	'0',	NULL),
(80,	1,	'Dear Customer,\r\n\r\nRegards,\r\nCustomer service',	NULL),
(80,	2,	'Dear Customer,\r\n\r\nRegards,\r\nCustomer service',	NULL),
(306,	1,	'Three foxes lounge',	'2021-05-05 21:21:30'),
(306,	2,	'Three foxes lounge',	'2021-05-05 21:21:30'),
(307,	1,	'Come to visit place braided with mysteries of three foxes.',	'2021-05-05 21:21:30'),
(307,	2,	'Come to visit place braided with mysteries of three foxes.',	'2021-05-05 21:21:30'),
(308,	1,	'True hunting season starts with us',	'2021-05-08 14:25:35'),
(308,	2,	'aaaa',	'2021-05-05 21:21:30'),
(319,	1,	'Interior',	'2021-05-04 13:11:40'),
(319,	2,	'Interior',	'2021-05-04 13:11:40'),
(320,	1,	'Check out some of our photos ;-) Nice, hm? What are you waiting for? Book it...you know you want it, right?',	'2021-05-05 22:38:16'),
(320,	2,	'Check out some of our photos ;-) Nice, hm? What are you waiting for? Book it...you know you want it, right?',	'2021-05-05 22:38:16'),
(322,	1,	'Amenities',	'2021-05-04 13:11:40'),
(322,	2,	'Amenities',	'2021-05-04 13:11:40'),
(323,	1,	'We know our customer kind of have a sweet tooth. Here are some extras we offer!',	'2021-05-05 22:39:18'),
(323,	2,	'We know our customer kind of have a sweet tooth. Here are some extras we offer!',	'2021-05-05 22:39:18'),
(325,	1,	'Our Rooms',	'2021-05-04 13:11:41'),
(325,	2,	'Our Rooms',	'2021-05-04 13:11:41'),
(326,	1,	'Just book it!',	'2021-05-05 22:40:03'),
(326,	2,	'Just book it!',	'2021-05-05 22:40:03'),
(328,	1,	'What our Guest say?',	'2021-05-04 13:11:41'),
(328,	2,	'What our Guest say?',	'2021-05-04 13:11:41'),
(329,	1,	'Take a break and read what our most welcomed guest said about Three foxes lounge.',	'2021-05-08 14:04:48'),
(329,	2,	'Take a break and read what our most welcomed guest said about Three foxes lounge.',	'2021-05-08 14:04:48');

DROP TABLE IF EXISTS `ps_connections`;
CREATE TABLE `ps_connections` (
  `id_connections` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_guest` int unsigned NOT NULL,
  `id_page` int unsigned NOT NULL,
  `ip_address` bigint DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_connections_page`;
CREATE TABLE `ps_connections_page` (
  `id_connections` int unsigned NOT NULL,
  `id_page` int unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_connections_source`;
CREATE TABLE `ps_connections_source` (
  `id_connections_source` int unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_contact`;
CREATE TABLE `ps_contact` (
  `id_contact` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_contact` (`id_contact`, `email`, `customer_service`, `position`) VALUES
(1,	'robin.weiss@czechitas.cz',	1,	0),
(2,	'robin.weiss@czechitas.cz',	1,	0);

DROP TABLE IF EXISTS `ps_contact_lang`;
CREATE TABLE `ps_contact_lang` (
  `id_contact` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_contact`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_contact_lang` (`id_contact`, `id_lang`, `name`, `description`) VALUES
(1,	1,	'Webmaster',	'If a technical problem occurs on this website'),
(1,	2,	'Webmaster',	'If a technical problem occurs on this website'),
(2,	1,	'Customer service',	'For any question about a product, an order'),
(2,	2,	'Customer service',	'For any question about a product, an order');

DROP TABLE IF EXISTS `ps_contact_shop`;
CREATE TABLE `ps_contact_shop` (
  `id_contact` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_contact`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_contact_shop` (`id_contact`, `id_shop`) VALUES
(1,	1),
(2,	1);

DROP TABLE IF EXISTS `ps_country`;
CREATE TABLE `ps_country` (
  `id_country` int unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_country` (`id_country`, `id_zone`, `id_currency`, `iso_code`, `call_prefix`, `active`, `contains_states`, `need_identification_number`, `need_zip_code`, `zip_code_format`, `display_tax_label`) VALUES
(1,	1,	0,	'DE',	49,	0,	0,	0,	1,	'NNNNN',	1),
(2,	1,	0,	'AT',	43,	0,	0,	0,	1,	'NNNN',	1),
(3,	1,	0,	'BE',	32,	0,	0,	0,	1,	'NNNN',	1),
(4,	2,	0,	'CA',	1,	0,	1,	0,	1,	'LNL NLN',	0),
(5,	3,	0,	'CN',	86,	0,	0,	0,	1,	'NNNNNN',	1),
(6,	1,	0,	'ES',	34,	0,	0,	1,	1,	'NNNNN',	1),
(7,	1,	0,	'FI',	358,	0,	0,	0,	1,	'NNNNN',	1),
(8,	1,	0,	'FR',	33,	0,	0,	0,	1,	'NNNNN',	1),
(9,	1,	0,	'GR',	30,	0,	0,	0,	1,	'NNNNN',	1),
(10,	1,	0,	'IT',	39,	0,	1,	0,	1,	'NNNNN',	1),
(11,	3,	0,	'JP',	81,	0,	1,	0,	1,	'NNN-NNNN',	1),
(12,	1,	0,	'LU',	352,	0,	0,	0,	1,	'NNNN',	1),
(13,	1,	0,	'NL',	31,	0,	0,	0,	1,	'NNNN LL',	1),
(14,	1,	0,	'PL',	48,	0,	0,	0,	1,	'NN-NNN',	1),
(15,	1,	0,	'PT',	351,	0,	0,	0,	1,	'NNNN-NNN',	1),
(16,	1,	0,	'CZ',	420,	1,	0,	0,	1,	'NNN NN',	1),
(17,	1,	0,	'GB',	44,	1,	0,	0,	1,	'',	1),
(18,	1,	0,	'SE',	46,	0,	0,	0,	1,	'NNN NN',	1),
(19,	7,	0,	'CH',	41,	0,	0,	0,	1,	'NNNN',	1),
(20,	1,	0,	'DK',	45,	0,	0,	0,	1,	'NNNN',	1),
(21,	2,	0,	'US',	1,	0,	1,	0,	1,	'NNNNN',	0),
(22,	3,	0,	'HK',	852,	0,	0,	0,	0,	'',	1),
(23,	7,	0,	'NO',	47,	0,	0,	0,	1,	'NNNN',	1),
(24,	5,	0,	'AU',	61,	0,	0,	0,	1,	'NNNN',	1),
(25,	3,	0,	'SG',	65,	0,	0,	0,	1,	'NNNNNN',	1),
(26,	1,	0,	'IE',	353,	0,	0,	0,	0,	'',	1),
(27,	5,	0,	'NZ',	64,	0,	0,	0,	1,	'NNNN',	1),
(28,	3,	0,	'KR',	82,	0,	0,	0,	1,	'NNNNN',	1),
(29,	3,	0,	'IL',	972,	0,	0,	0,	1,	'NNNNNNN',	1),
(30,	4,	0,	'ZA',	27,	0,	0,	0,	1,	'NNNN',	1),
(31,	4,	0,	'NG',	234,	0,	0,	0,	1,	'',	1),
(32,	4,	0,	'CI',	225,	0,	0,	0,	1,	'',	1),
(33,	4,	0,	'TG',	228,	0,	0,	0,	1,	'',	1),
(34,	6,	0,	'BO',	591,	0,	0,	0,	1,	'',	1),
(35,	4,	0,	'MU',	230,	0,	0,	0,	1,	'',	1),
(36,	1,	0,	'RO',	40,	0,	0,	0,	1,	'NNNNNN',	1),
(37,	1,	0,	'SK',	421,	0,	0,	0,	1,	'NNN NN',	1),
(38,	4,	0,	'DZ',	213,	0,	0,	0,	1,	'NNNNN',	1),
(39,	2,	0,	'AS',	0,	0,	0,	0,	1,	'',	1),
(40,	7,	0,	'AD',	376,	0,	0,	0,	1,	'CNNN',	1),
(41,	4,	0,	'AO',	244,	0,	0,	0,	0,	'',	1),
(42,	8,	0,	'AI',	0,	0,	0,	0,	1,	'',	1),
(43,	2,	0,	'AG',	0,	0,	0,	0,	1,	'',	1),
(44,	6,	0,	'AR',	54,	0,	1,	0,	1,	'LNNNNLLL',	1),
(45,	3,	0,	'AM',	374,	0,	0,	0,	1,	'NNNN',	1),
(46,	8,	0,	'AW',	297,	0,	0,	0,	1,	'',	1),
(47,	3,	0,	'AZ',	994,	0,	0,	0,	1,	'CNNNN',	1),
(48,	2,	0,	'BS',	0,	0,	0,	0,	1,	'',	1),
(49,	3,	0,	'BH',	973,	0,	0,	0,	1,	'',	1),
(50,	3,	0,	'BD',	880,	0,	0,	0,	1,	'NNNN',	1),
(51,	2,	0,	'BB',	0,	0,	0,	0,	1,	'CNNNNN',	1),
(52,	7,	0,	'BY',	0,	0,	0,	0,	1,	'NNNNNN',	1),
(53,	8,	0,	'BZ',	501,	0,	0,	0,	0,	'',	1),
(54,	4,	0,	'BJ',	229,	0,	0,	0,	0,	'',	1),
(55,	2,	0,	'BM',	0,	0,	0,	0,	1,	'',	1),
(56,	3,	0,	'BT',	975,	0,	0,	0,	1,	'',	1),
(57,	4,	0,	'BW',	267,	0,	0,	0,	1,	'',	1),
(58,	6,	0,	'BR',	55,	0,	0,	0,	1,	'NNNNN-NNN',	1),
(59,	3,	0,	'BN',	673,	0,	0,	0,	1,	'LLNNNN',	1),
(60,	4,	0,	'BF',	226,	0,	0,	0,	1,	'',	1),
(61,	3,	0,	'MM',	95,	0,	0,	0,	1,	'',	1),
(62,	4,	0,	'BI',	257,	0,	0,	0,	1,	'',	1),
(63,	3,	0,	'KH',	855,	0,	0,	0,	1,	'NNNNN',	1),
(64,	4,	0,	'CM',	237,	0,	0,	0,	1,	'',	1),
(65,	4,	0,	'CV',	238,	0,	0,	0,	1,	'NNNN',	1),
(66,	4,	0,	'CF',	236,	0,	0,	0,	1,	'',	1),
(67,	4,	0,	'TD',	235,	0,	0,	0,	1,	'',	1),
(68,	6,	0,	'CL',	56,	0,	0,	0,	1,	'NNN-NNNN',	1),
(69,	6,	0,	'CO',	57,	0,	0,	0,	1,	'NNNNNN',	1),
(70,	4,	0,	'KM',	269,	0,	0,	0,	1,	'',	1),
(71,	4,	0,	'CD',	242,	0,	0,	0,	1,	'',	1),
(72,	4,	0,	'CG',	243,	0,	0,	0,	1,	'',	1),
(73,	8,	0,	'CR',	506,	0,	0,	0,	1,	'NNNNN',	1),
(74,	7,	0,	'HR',	385,	0,	0,	0,	1,	'NNNNN',	1),
(75,	8,	0,	'CU',	53,	0,	0,	0,	1,	'',	1),
(76,	1,	0,	'CY',	357,	0,	0,	0,	1,	'NNNN',	1),
(77,	4,	0,	'DJ',	253,	0,	0,	0,	1,	'',	1),
(78,	8,	0,	'DM',	0,	0,	0,	0,	1,	'',	1),
(79,	8,	0,	'DO',	0,	0,	0,	0,	1,	'',	1),
(80,	3,	0,	'TL',	670,	0,	0,	0,	1,	'',	1),
(81,	6,	0,	'EC',	593,	0,	0,	0,	1,	'CNNNNNN',	1),
(82,	4,	0,	'EG',	20,	0,	0,	0,	1,	'NNNNN',	1),
(83,	8,	0,	'SV',	503,	0,	0,	0,	1,	'',	1),
(84,	4,	0,	'GQ',	240,	0,	0,	0,	1,	'',	1),
(85,	4,	0,	'ER',	291,	0,	0,	0,	1,	'',	1),
(86,	1,	0,	'EE',	372,	0,	0,	0,	1,	'NNNNN',	1),
(87,	4,	0,	'ET',	251,	0,	0,	0,	1,	'',	1),
(88,	8,	0,	'FK',	0,	0,	0,	0,	1,	'LLLL NLL',	1),
(89,	7,	0,	'FO',	298,	0,	0,	0,	1,	'',	1),
(90,	5,	0,	'FJ',	679,	0,	0,	0,	1,	'',	1),
(91,	4,	0,	'GA',	241,	0,	0,	0,	1,	'',	1),
(92,	4,	0,	'GM',	220,	0,	0,	0,	1,	'',	1),
(93,	3,	0,	'GE',	995,	0,	0,	0,	1,	'NNNN',	1),
(94,	4,	0,	'GH',	233,	0,	0,	0,	1,	'',	1),
(95,	8,	0,	'GD',	0,	0,	0,	0,	1,	'',	1),
(96,	7,	0,	'GL',	299,	0,	0,	0,	1,	'',	1),
(97,	7,	0,	'GI',	350,	0,	0,	0,	1,	'',	1),
(98,	8,	0,	'GP',	590,	0,	0,	0,	1,	'',	1),
(99,	5,	0,	'GU',	0,	0,	0,	0,	1,	'',	1),
(100,	8,	0,	'GT',	502,	0,	0,	0,	1,	'',	1),
(101,	7,	0,	'GG',	0,	0,	0,	0,	1,	'LLN NLL',	1),
(102,	4,	0,	'GN',	224,	0,	0,	0,	1,	'',	1),
(103,	4,	0,	'GW',	245,	0,	0,	0,	1,	'',	1),
(104,	6,	0,	'GY',	592,	0,	0,	0,	1,	'',	1),
(105,	8,	0,	'HT',	509,	0,	0,	0,	1,	'',	1),
(106,	5,	0,	'HM',	0,	0,	0,	0,	1,	'',	1),
(107,	7,	0,	'VA',	379,	0,	0,	0,	1,	'NNNNN',	1),
(108,	8,	0,	'HN',	504,	0,	0,	0,	1,	'',	1),
(109,	7,	0,	'IS',	354,	0,	0,	0,	1,	'NNN',	1),
(110,	3,	0,	'IN',	91,	0,	0,	0,	1,	'NNN NNN',	1),
(111,	3,	0,	'ID',	62,	0,	1,	0,	1,	'NNNNN',	1),
(112,	3,	0,	'IR',	98,	0,	0,	0,	1,	'NNNNN-NNNNN',	1),
(113,	3,	0,	'IQ',	964,	0,	0,	0,	1,	'NNNNN',	1),
(114,	7,	0,	'IM',	0,	0,	0,	0,	1,	'CN NLL',	1),
(115,	8,	0,	'JM',	0,	0,	0,	0,	1,	'',	1),
(116,	7,	0,	'JE',	0,	0,	0,	0,	1,	'CN NLL',	1),
(117,	3,	0,	'JO',	962,	0,	0,	0,	1,	'',	1),
(118,	3,	0,	'KZ',	7,	0,	0,	0,	1,	'NNNNNN',	1),
(119,	4,	0,	'KE',	254,	0,	0,	0,	1,	'',	1),
(120,	5,	0,	'KI',	686,	0,	0,	0,	1,	'',	1),
(121,	3,	0,	'KP',	850,	0,	0,	0,	1,	'',	1),
(122,	3,	0,	'KW',	965,	0,	0,	0,	1,	'',	1),
(123,	3,	0,	'KG',	996,	0,	0,	0,	1,	'',	1),
(124,	3,	0,	'LA',	856,	0,	0,	0,	1,	'',	1),
(125,	1,	0,	'LV',	371,	0,	0,	0,	1,	'C-NNNN',	1),
(126,	3,	0,	'LB',	961,	0,	0,	0,	1,	'',	1),
(127,	4,	0,	'LS',	266,	0,	0,	0,	1,	'',	1),
(128,	4,	0,	'LR',	231,	0,	0,	0,	1,	'',	1),
(129,	4,	0,	'LY',	218,	0,	0,	0,	1,	'',	1),
(130,	1,	0,	'LI',	423,	0,	0,	0,	1,	'NNNN',	1),
(131,	1,	0,	'LT',	370,	0,	0,	0,	1,	'NNNNN',	1),
(132,	3,	0,	'MO',	853,	0,	0,	0,	0,	'',	1),
(133,	7,	0,	'MK',	389,	0,	0,	0,	1,	'',	1),
(134,	4,	0,	'MG',	261,	0,	0,	0,	1,	'',	1),
(135,	4,	0,	'MW',	265,	0,	0,	0,	1,	'',	1),
(136,	3,	0,	'MY',	60,	0,	0,	0,	1,	'NNNNN',	1),
(137,	3,	0,	'MV',	960,	0,	0,	0,	1,	'',	1),
(138,	4,	0,	'ML',	223,	0,	0,	0,	1,	'',	1),
(139,	1,	0,	'MT',	356,	0,	0,	0,	1,	'LLL NNNN',	1),
(140,	5,	0,	'MH',	692,	0,	0,	0,	1,	'',	1),
(141,	8,	0,	'MQ',	596,	0,	0,	0,	1,	'',	1),
(142,	4,	0,	'MR',	222,	0,	0,	0,	1,	'',	1),
(143,	1,	0,	'HU',	36,	0,	0,	0,	1,	'NNNN',	1),
(144,	4,	0,	'YT',	262,	0,	0,	0,	1,	'',	1),
(145,	2,	0,	'MX',	52,	0,	1,	1,	1,	'NNNNN',	1),
(146,	5,	0,	'FM',	691,	0,	0,	0,	1,	'',	1),
(147,	7,	0,	'MD',	373,	0,	0,	0,	1,	'C-NNNN',	1),
(148,	7,	0,	'MC',	377,	0,	0,	0,	1,	'980NN',	1),
(149,	3,	0,	'MN',	976,	0,	0,	0,	1,	'',	1),
(150,	7,	0,	'ME',	382,	0,	0,	0,	1,	'NNNNN',	1),
(151,	8,	0,	'MS',	0,	0,	0,	0,	1,	'',	1),
(152,	4,	0,	'MA',	212,	0,	0,	0,	1,	'NNNNN',	1),
(153,	4,	0,	'MZ',	258,	0,	0,	0,	1,	'',	1),
(154,	4,	0,	'NA',	264,	0,	0,	0,	1,	'',	1),
(155,	5,	0,	'NR',	674,	0,	0,	0,	1,	'',	1),
(156,	3,	0,	'NP',	977,	0,	0,	0,	1,	'',	1),
(157,	8,	0,	'AN',	599,	0,	0,	0,	1,	'',	1),
(158,	5,	0,	'NC',	687,	0,	0,	0,	1,	'',	1),
(159,	8,	0,	'NI',	505,	0,	0,	0,	1,	'NNNNNN',	1),
(160,	4,	0,	'NE',	227,	0,	0,	0,	1,	'',	1),
(161,	5,	0,	'NU',	683,	0,	0,	0,	1,	'',	1),
(162,	5,	0,	'NF',	0,	0,	0,	0,	1,	'',	1),
(163,	5,	0,	'MP',	0,	0,	0,	0,	1,	'',	1),
(164,	3,	0,	'OM',	968,	0,	0,	0,	1,	'',	1),
(165,	3,	0,	'PK',	92,	0,	0,	0,	1,	'',	1),
(166,	5,	0,	'PW',	680,	0,	0,	0,	1,	'',	1),
(167,	3,	0,	'PS',	0,	0,	0,	0,	1,	'',	1),
(168,	8,	0,	'PA',	507,	0,	0,	0,	1,	'NNNNNN',	1),
(169,	5,	0,	'PG',	675,	0,	0,	0,	1,	'',	1),
(170,	6,	0,	'PY',	595,	0,	0,	0,	1,	'',	1),
(171,	6,	0,	'PE',	51,	0,	0,	0,	1,	'',	1),
(172,	3,	0,	'PH',	63,	0,	0,	0,	1,	'NNNN',	1),
(173,	5,	0,	'PN',	0,	0,	0,	0,	1,	'LLLL NLL',	1),
(174,	8,	0,	'PR',	0,	0,	0,	0,	1,	'NNNNN',	1),
(175,	3,	0,	'QA',	974,	0,	0,	0,	1,	'',	1),
(176,	4,	0,	'RE',	262,	0,	0,	0,	1,	'',	1),
(177,	7,	0,	'RU',	7,	0,	0,	0,	1,	'NNNNNN',	1),
(178,	4,	0,	'RW',	250,	0,	0,	0,	1,	'',	1),
(179,	8,	0,	'BL',	0,	0,	0,	0,	1,	'',	1),
(180,	8,	0,	'KN',	0,	0,	0,	0,	1,	'',	1),
(181,	8,	0,	'LC',	0,	0,	0,	0,	1,	'',	1),
(182,	8,	0,	'MF',	0,	0,	0,	0,	1,	'',	1),
(183,	8,	0,	'PM',	508,	0,	0,	0,	1,	'',	1),
(184,	8,	0,	'VC',	0,	0,	0,	0,	1,	'',	1),
(185,	5,	0,	'WS',	685,	0,	0,	0,	1,	'',	1),
(186,	7,	0,	'SM',	378,	0,	0,	0,	1,	'NNNNN',	1),
(187,	4,	0,	'ST',	239,	0,	0,	0,	1,	'',	1),
(188,	3,	0,	'SA',	966,	0,	0,	0,	1,	'',	1),
(189,	4,	0,	'SN',	221,	0,	0,	0,	1,	'',	1),
(190,	7,	0,	'RS',	381,	0,	0,	0,	1,	'NNNNN',	1),
(191,	4,	0,	'SC',	248,	0,	0,	0,	1,	'',	1),
(192,	4,	0,	'SL',	232,	0,	0,	0,	1,	'',	1),
(193,	1,	0,	'SI',	386,	0,	0,	0,	1,	'C-NNNN',	1),
(194,	5,	0,	'SB',	677,	0,	0,	0,	1,	'',	1),
(195,	4,	0,	'SO',	252,	0,	0,	0,	1,	'',	1),
(196,	8,	0,	'GS',	0,	0,	0,	0,	1,	'LLLL NLL',	1),
(197,	3,	0,	'LK',	94,	0,	0,	0,	1,	'NNNNN',	1),
(198,	4,	0,	'SD',	249,	0,	0,	0,	1,	'',	1),
(199,	8,	0,	'SR',	597,	0,	0,	0,	1,	'',	1),
(200,	7,	0,	'SJ',	0,	0,	0,	0,	1,	'',	1),
(201,	4,	0,	'SZ',	268,	0,	0,	0,	1,	'',	1),
(202,	3,	0,	'SY',	963,	0,	0,	0,	1,	'',	1),
(203,	3,	0,	'TW',	886,	0,	0,	0,	1,	'NNNNN',	1),
(204,	3,	0,	'TJ',	992,	0,	0,	0,	1,	'',	1),
(205,	4,	0,	'TZ',	255,	0,	0,	0,	1,	'',	1),
(206,	3,	0,	'TH',	66,	0,	0,	0,	1,	'NNNNN',	1),
(207,	5,	0,	'TK',	690,	0,	0,	0,	1,	'',	1),
(208,	5,	0,	'TO',	676,	0,	0,	0,	1,	'',	1),
(209,	6,	0,	'TT',	0,	0,	0,	0,	1,	'',	1),
(210,	4,	0,	'TN',	216,	0,	0,	0,	1,	'',	1),
(211,	7,	0,	'TR',	90,	0,	0,	0,	1,	'NNNNN',	1),
(212,	3,	0,	'TM',	993,	0,	0,	0,	1,	'',	1),
(213,	8,	0,	'TC',	0,	0,	0,	0,	1,	'LLLL NLL',	1),
(214,	5,	0,	'TV',	688,	0,	0,	0,	1,	'',	1),
(215,	4,	0,	'UG',	256,	0,	0,	0,	1,	'',	1),
(216,	1,	0,	'UA',	380,	0,	0,	0,	1,	'NNNNN',	1),
(217,	3,	0,	'AE',	971,	0,	0,	0,	1,	'',	1),
(218,	6,	0,	'UY',	598,	0,	0,	0,	1,	'',	1),
(219,	3,	0,	'UZ',	998,	0,	0,	0,	1,	'',	1),
(220,	5,	0,	'VU',	678,	0,	0,	0,	1,	'',	1),
(221,	6,	0,	'VE',	58,	0,	0,	0,	1,	'',	1),
(222,	3,	0,	'VN',	84,	0,	0,	0,	1,	'NNNNNN',	1),
(223,	2,	0,	'VG',	0,	0,	0,	0,	1,	'CNNNN',	1),
(224,	2,	0,	'VI',	0,	0,	0,	0,	1,	'',	1),
(225,	5,	0,	'WF',	681,	0,	0,	0,	1,	'',	1),
(226,	4,	0,	'EH',	0,	0,	0,	0,	1,	'',	1),
(227,	3,	0,	'YE',	967,	0,	0,	0,	1,	'',	1),
(228,	4,	0,	'ZM',	260,	0,	0,	0,	1,	'',	1),
(229,	4,	0,	'ZW',	263,	0,	0,	0,	1,	'',	1),
(230,	7,	0,	'AL',	355,	0,	0,	0,	1,	'NNNN',	1),
(231,	3,	0,	'AF',	93,	0,	0,	0,	1,	'NNNN',	1),
(232,	5,	0,	'AQ',	0,	0,	0,	0,	1,	'',	1),
(233,	1,	0,	'BA',	387,	0,	0,	0,	1,	'',	1),
(234,	5,	0,	'BV',	0,	0,	0,	0,	1,	'',	1),
(235,	5,	0,	'IO',	0,	0,	0,	0,	1,	'LLLL NLL',	1),
(236,	1,	0,	'BG',	359,	0,	0,	0,	1,	'NNNN',	1),
(237,	8,	0,	'KY',	0,	0,	0,	0,	1,	'',	1),
(238,	3,	0,	'CX',	0,	0,	0,	0,	1,	'',	1),
(239,	3,	0,	'CC',	0,	0,	0,	0,	1,	'',	1),
(240,	5,	0,	'CK',	682,	0,	0,	0,	1,	'',	1),
(241,	6,	0,	'GF',	594,	0,	0,	0,	1,	'',	1),
(242,	5,	0,	'PF',	689,	0,	0,	0,	1,	'',	1),
(243,	5,	0,	'TF',	0,	0,	0,	0,	1,	'',	1),
(244,	7,	0,	'AX',	0,	0,	0,	0,	1,	'NNNNN',	1);

DROP TABLE IF EXISTS `ps_country_lang`;
CREATE TABLE `ps_country_lang` (
  `id_country` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_country`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_country_lang` (`id_country`, `id_lang`, `name`) VALUES
(1,	1,	'Germany'),
(1,	2,	'Germany'),
(2,	1,	'Austria'),
(2,	2,	'Austria'),
(3,	1,	'Belgium'),
(3,	2,	'Belgium'),
(4,	1,	'Canada'),
(4,	2,	'Canada'),
(5,	1,	'China'),
(5,	2,	'China'),
(6,	1,	'Spain'),
(6,	2,	'Spain'),
(7,	1,	'Finland'),
(7,	2,	'Finland'),
(8,	1,	'France'),
(8,	2,	'France'),
(9,	1,	'Greece'),
(9,	2,	'Greece'),
(10,	1,	'Italy'),
(10,	2,	'Italy'),
(11,	1,	'Japan'),
(11,	2,	'Japan'),
(12,	1,	'Luxemburg'),
(12,	2,	'Luxemburg'),
(13,	1,	'Netherlands'),
(13,	2,	'Netherlands'),
(14,	1,	'Poland'),
(14,	2,	'Poland'),
(15,	1,	'Portugal'),
(15,	2,	'Portugal'),
(16,	1,	'Czech Republic'),
(16,	2,	'Czech Republic'),
(17,	1,	'United Kingdom'),
(17,	2,	'United Kingdom'),
(18,	1,	'Sweden'),
(18,	2,	'Sweden'),
(19,	1,	'Switzerland'),
(19,	2,	'Switzerland'),
(20,	1,	'Denmark'),
(20,	2,	'Denmark'),
(21,	1,	'United States'),
(21,	2,	'United States'),
(22,	1,	'HongKong'),
(22,	2,	'HongKong'),
(23,	1,	'Norway'),
(23,	2,	'Norway'),
(24,	1,	'Australia'),
(24,	2,	'Australia'),
(25,	1,	'Singapore'),
(25,	2,	'Singapore'),
(26,	1,	'Ireland'),
(26,	2,	'Ireland'),
(27,	1,	'New Zealand'),
(27,	2,	'New Zealand'),
(28,	1,	'South Korea'),
(28,	2,	'South Korea'),
(29,	1,	'Israel'),
(29,	2,	'Israel'),
(30,	1,	'South Africa'),
(30,	2,	'South Africa'),
(31,	1,	'Nigeria'),
(31,	2,	'Nigeria'),
(32,	1,	'Ivory Coast'),
(32,	2,	'Ivory Coast'),
(33,	1,	'Togo'),
(33,	2,	'Togo'),
(34,	1,	'Bolivia'),
(34,	2,	'Bolivia'),
(35,	1,	'Mauritius'),
(35,	2,	'Mauritius'),
(36,	1,	'Romania'),
(36,	2,	'Romania'),
(37,	1,	'Slovakia'),
(37,	2,	'Slovakia'),
(38,	1,	'Algeria'),
(38,	2,	'Algeria'),
(39,	1,	'American Samoa'),
(39,	2,	'American Samoa'),
(40,	1,	'Andorra'),
(40,	2,	'Andorra'),
(41,	1,	'Angola'),
(41,	2,	'Angola'),
(42,	1,	'Anguilla'),
(42,	2,	'Anguilla'),
(43,	1,	'Antigua and Barbuda'),
(43,	2,	'Antigua and Barbuda'),
(44,	1,	'Argentina'),
(44,	2,	'Argentina'),
(45,	1,	'Armenia'),
(45,	2,	'Armenia'),
(46,	1,	'Aruba'),
(46,	2,	'Aruba'),
(47,	1,	'Azerbaijan'),
(47,	2,	'Azerbaijan'),
(48,	1,	'Bahamas'),
(48,	2,	'Bahamas'),
(49,	1,	'Bahrain'),
(49,	2,	'Bahrain'),
(50,	1,	'Bangladesh'),
(50,	2,	'Bangladesh'),
(51,	1,	'Barbados'),
(51,	2,	'Barbados'),
(52,	1,	'Belarus'),
(52,	2,	'Belarus'),
(53,	1,	'Belize'),
(53,	2,	'Belize'),
(54,	1,	'Benin'),
(54,	2,	'Benin'),
(55,	1,	'Bermuda'),
(55,	2,	'Bermuda'),
(56,	1,	'Bhutan'),
(56,	2,	'Bhutan'),
(57,	1,	'Botswana'),
(57,	2,	'Botswana'),
(58,	1,	'Brazil'),
(58,	2,	'Brazil'),
(59,	1,	'Brunei'),
(59,	2,	'Brunei'),
(60,	1,	'Burkina Faso'),
(60,	2,	'Burkina Faso'),
(61,	1,	'Burma (Myanmar)'),
(61,	2,	'Burma (Myanmar)'),
(62,	1,	'Burundi'),
(62,	2,	'Burundi'),
(63,	1,	'Cambodia'),
(63,	2,	'Cambodia'),
(64,	1,	'Cameroon'),
(64,	2,	'Cameroon'),
(65,	1,	'Cape Verde'),
(65,	2,	'Cape Verde'),
(66,	1,	'Central African Republic'),
(66,	2,	'Central African Republic'),
(67,	1,	'Chad'),
(67,	2,	'Chad'),
(68,	1,	'Chile'),
(68,	2,	'Chile'),
(69,	1,	'Colombia'),
(69,	2,	'Colombia'),
(70,	1,	'Comoros'),
(70,	2,	'Comoros'),
(71,	1,	'Congo, Dem. Republic'),
(71,	2,	'Congo, Dem. Republic'),
(72,	1,	'Congo, Republic'),
(72,	2,	'Congo, Republic'),
(73,	1,	'Costa Rica'),
(73,	2,	'Costa Rica'),
(74,	1,	'Croatia'),
(74,	2,	'Croatia'),
(75,	1,	'Cuba'),
(75,	2,	'Cuba'),
(76,	1,	'Cyprus'),
(76,	2,	'Cyprus'),
(77,	1,	'Djibouti'),
(77,	2,	'Djibouti'),
(78,	1,	'Dominica'),
(78,	2,	'Dominica'),
(79,	1,	'Dominican Republic'),
(79,	2,	'Dominican Republic'),
(80,	1,	'East Timor'),
(80,	2,	'East Timor'),
(81,	1,	'Ecuador'),
(81,	2,	'Ecuador'),
(82,	1,	'Egypt'),
(82,	2,	'Egypt'),
(83,	1,	'El Salvador'),
(83,	2,	'El Salvador'),
(84,	1,	'Equatorial Guinea'),
(84,	2,	'Equatorial Guinea'),
(85,	1,	'Eritrea'),
(85,	2,	'Eritrea'),
(86,	1,	'Estonia'),
(86,	2,	'Estonia'),
(87,	1,	'Ethiopia'),
(87,	2,	'Ethiopia'),
(88,	1,	'Falkland Islands'),
(88,	2,	'Falkland Islands'),
(89,	1,	'Faroe Islands'),
(89,	2,	'Faroe Islands'),
(90,	1,	'Fiji'),
(90,	2,	'Fiji'),
(91,	1,	'Gabon'),
(91,	2,	'Gabon'),
(92,	1,	'Gambia'),
(92,	2,	'Gambia'),
(93,	1,	'Georgia'),
(93,	2,	'Georgia'),
(94,	1,	'Ghana'),
(94,	2,	'Ghana'),
(95,	1,	'Grenada'),
(95,	2,	'Grenada'),
(96,	1,	'Greenland'),
(96,	2,	'Greenland'),
(97,	1,	'Gibraltar'),
(97,	2,	'Gibraltar'),
(98,	1,	'Guadeloupe'),
(98,	2,	'Guadeloupe'),
(99,	1,	'Guam'),
(99,	2,	'Guam'),
(100,	1,	'Guatemala'),
(100,	2,	'Guatemala'),
(101,	1,	'Guernsey'),
(101,	2,	'Guernsey'),
(102,	1,	'Guinea'),
(102,	2,	'Guinea'),
(103,	1,	'Guinea-Bissau'),
(103,	2,	'Guinea-Bissau'),
(104,	1,	'Guyana'),
(104,	2,	'Guyana'),
(105,	1,	'Haiti'),
(105,	2,	'Haiti'),
(106,	1,	'Heard Island and McDonald Islands'),
(106,	2,	'Heard Island and McDonald Islands'),
(107,	1,	'Vatican City State'),
(107,	2,	'Vatican City State'),
(108,	1,	'Honduras'),
(108,	2,	'Honduras'),
(109,	1,	'Iceland'),
(109,	2,	'Iceland'),
(110,	1,	'India'),
(110,	2,	'India'),
(111,	1,	'Indonesia'),
(111,	2,	'Indonesia'),
(112,	1,	'Iran'),
(112,	2,	'Iran'),
(113,	1,	'Iraq'),
(113,	2,	'Iraq'),
(114,	1,	'Man Island'),
(114,	2,	'Man Island'),
(115,	1,	'Jamaica'),
(115,	2,	'Jamaica'),
(116,	1,	'Jersey'),
(116,	2,	'Jersey'),
(117,	1,	'Jordan'),
(117,	2,	'Jordan'),
(118,	1,	'Kazakhstan'),
(118,	2,	'Kazakhstan'),
(119,	1,	'Kenya'),
(119,	2,	'Kenya'),
(120,	1,	'Kiribati'),
(120,	2,	'Kiribati'),
(121,	1,	'Korea, Dem. Republic of'),
(121,	2,	'Korea, Dem. Republic of'),
(122,	1,	'Kuwait'),
(122,	2,	'Kuwait'),
(123,	1,	'Kyrgyzstan'),
(123,	2,	'Kyrgyzstan'),
(124,	1,	'Laos'),
(124,	2,	'Laos'),
(125,	1,	'Latvia'),
(125,	2,	'Latvia'),
(126,	1,	'Lebanon'),
(126,	2,	'Lebanon'),
(127,	1,	'Lesotho'),
(127,	2,	'Lesotho'),
(128,	1,	'Liberia'),
(128,	2,	'Liberia'),
(129,	1,	'Libya'),
(129,	2,	'Libya'),
(130,	1,	'Liechtenstein'),
(130,	2,	'Liechtenstein'),
(131,	1,	'Lithuania'),
(131,	2,	'Lithuania'),
(132,	1,	'Macau'),
(132,	2,	'Macau'),
(133,	1,	'Macedonia'),
(133,	2,	'Macedonia'),
(134,	1,	'Madagascar'),
(134,	2,	'Madagascar'),
(135,	1,	'Malawi'),
(135,	2,	'Malawi'),
(136,	1,	'Malaysia'),
(136,	2,	'Malaysia'),
(137,	1,	'Maldives'),
(137,	2,	'Maldives'),
(138,	1,	'Mali'),
(138,	2,	'Mali'),
(139,	1,	'Malta'),
(139,	2,	'Malta'),
(140,	1,	'Marshall Islands'),
(140,	2,	'Marshall Islands'),
(141,	1,	'Martinique'),
(141,	2,	'Martinique'),
(142,	1,	'Mauritania'),
(142,	2,	'Mauritania'),
(143,	1,	'Hungary'),
(143,	2,	'Hungary'),
(144,	1,	'Mayotte'),
(144,	2,	'Mayotte'),
(145,	1,	'Mexico'),
(145,	2,	'Mexico'),
(146,	1,	'Micronesia'),
(146,	2,	'Micronesia'),
(147,	1,	'Moldova'),
(147,	2,	'Moldova'),
(148,	1,	'Monaco'),
(148,	2,	'Monaco'),
(149,	1,	'Mongolia'),
(149,	2,	'Mongolia'),
(150,	1,	'Montenegro'),
(150,	2,	'Montenegro'),
(151,	1,	'Montserrat'),
(151,	2,	'Montserrat'),
(152,	1,	'Morocco'),
(152,	2,	'Morocco'),
(153,	1,	'Mozambique'),
(153,	2,	'Mozambique'),
(154,	1,	'Namibia'),
(154,	2,	'Namibia'),
(155,	1,	'Nauru'),
(155,	2,	'Nauru'),
(156,	1,	'Nepal'),
(156,	2,	'Nepal'),
(157,	1,	'Netherlands Antilles'),
(157,	2,	'Netherlands Antilles'),
(158,	1,	'New Caledonia'),
(158,	2,	'New Caledonia'),
(159,	1,	'Nicaragua'),
(159,	2,	'Nicaragua'),
(160,	1,	'Niger'),
(160,	2,	'Niger'),
(161,	1,	'Niue'),
(161,	2,	'Niue'),
(162,	1,	'Norfolk Island'),
(162,	2,	'Norfolk Island'),
(163,	1,	'Northern Mariana Islands'),
(163,	2,	'Northern Mariana Islands'),
(164,	1,	'Oman'),
(164,	2,	'Oman'),
(165,	1,	'Pakistan'),
(165,	2,	'Pakistan'),
(166,	1,	'Palau'),
(166,	2,	'Palau'),
(167,	1,	'Palestinian Territories'),
(167,	2,	'Palestinian Territories'),
(168,	1,	'Panama'),
(168,	2,	'Panama'),
(169,	1,	'Papua New Guinea'),
(169,	2,	'Papua New Guinea'),
(170,	1,	'Paraguay'),
(170,	2,	'Paraguay'),
(171,	1,	'Peru'),
(171,	2,	'Peru'),
(172,	1,	'Philippines'),
(172,	2,	'Philippines'),
(173,	1,	'Pitcairn'),
(173,	2,	'Pitcairn'),
(174,	1,	'Puerto Rico'),
(174,	2,	'Puerto Rico'),
(175,	1,	'Qatar'),
(175,	2,	'Qatar'),
(176,	1,	'Reunion Island'),
(176,	2,	'Reunion Island'),
(177,	1,	'Russian Federation'),
(177,	2,	'Russian Federation'),
(178,	1,	'Rwanda'),
(178,	2,	'Rwanda'),
(179,	1,	'Saint Barthelemy'),
(179,	2,	'Saint Barthelemy'),
(180,	1,	'Saint Kitts and Nevis'),
(180,	2,	'Saint Kitts and Nevis'),
(181,	1,	'Saint Lucia'),
(181,	2,	'Saint Lucia'),
(182,	1,	'Saint Martin'),
(182,	2,	'Saint Martin'),
(183,	1,	'Saint Pierre and Miquelon'),
(183,	2,	'Saint Pierre and Miquelon'),
(184,	1,	'Saint Vincent and the Grenadines'),
(184,	2,	'Saint Vincent and the Grenadines'),
(185,	1,	'Samoa'),
(185,	2,	'Samoa'),
(186,	1,	'San Marino'),
(186,	2,	'San Marino'),
(187,	1,	'São Tomé and Príncipe'),
(187,	2,	'São Tomé and Príncipe'),
(188,	1,	'Saudi Arabia'),
(188,	2,	'Saudi Arabia'),
(189,	1,	'Senegal'),
(189,	2,	'Senegal'),
(190,	1,	'Serbia'),
(190,	2,	'Serbia'),
(191,	1,	'Seychelles'),
(191,	2,	'Seychelles'),
(192,	1,	'Sierra Leone'),
(192,	2,	'Sierra Leone'),
(193,	1,	'Slovenia'),
(193,	2,	'Slovenia'),
(194,	1,	'Solomon Islands'),
(194,	2,	'Solomon Islands'),
(195,	1,	'Somalia'),
(195,	2,	'Somalia'),
(196,	1,	'South Georgia and the South Sandwich Islands'),
(196,	2,	'South Georgia and the South Sandwich Islands'),
(197,	1,	'Sri Lanka'),
(197,	2,	'Sri Lanka'),
(198,	1,	'Sudan'),
(198,	2,	'Sudan'),
(199,	1,	'Suriname'),
(199,	2,	'Suriname'),
(200,	1,	'Svalbard and Jan Mayen'),
(200,	2,	'Svalbard and Jan Mayen'),
(201,	1,	'Swaziland'),
(201,	2,	'Swaziland'),
(202,	1,	'Syria'),
(202,	2,	'Syria'),
(203,	1,	'Taiwan'),
(203,	2,	'Taiwan'),
(204,	1,	'Tajikistan'),
(204,	2,	'Tajikistan'),
(205,	1,	'Tanzania'),
(205,	2,	'Tanzania'),
(206,	1,	'Thailand'),
(206,	2,	'Thailand'),
(207,	1,	'Tokelau'),
(207,	2,	'Tokelau'),
(208,	1,	'Tonga'),
(208,	2,	'Tonga'),
(209,	1,	'Trinidad and Tobago'),
(209,	2,	'Trinidad and Tobago'),
(210,	1,	'Tunisia'),
(210,	2,	'Tunisia'),
(211,	1,	'Turkey'),
(211,	2,	'Turkey'),
(212,	1,	'Turkmenistan'),
(212,	2,	'Turkmenistan'),
(213,	1,	'Turks and Caicos Islands'),
(213,	2,	'Turks and Caicos Islands'),
(214,	1,	'Tuvalu'),
(214,	2,	'Tuvalu'),
(215,	1,	'Uganda'),
(215,	2,	'Uganda'),
(216,	1,	'Ukraine'),
(216,	2,	'Ukraine'),
(217,	1,	'United Arab Emirates'),
(217,	2,	'United Arab Emirates'),
(218,	1,	'Uruguay'),
(218,	2,	'Uruguay'),
(219,	1,	'Uzbekistan'),
(219,	2,	'Uzbekistan'),
(220,	1,	'Vanuatu'),
(220,	2,	'Vanuatu'),
(221,	1,	'Venezuela'),
(221,	2,	'Venezuela'),
(222,	1,	'Vietnam'),
(222,	2,	'Vietnam'),
(223,	1,	'Virgin Islands (British)'),
(223,	2,	'Virgin Islands (British)'),
(224,	1,	'Virgin Islands (U.S.)'),
(224,	2,	'Virgin Islands (U.S.)'),
(225,	1,	'Wallis and Futuna'),
(225,	2,	'Wallis and Futuna'),
(226,	1,	'Western Sahara'),
(226,	2,	'Western Sahara'),
(227,	1,	'Yemen'),
(227,	2,	'Yemen'),
(228,	1,	'Zambia'),
(228,	2,	'Zambia'),
(229,	1,	'Zimbabwe'),
(229,	2,	'Zimbabwe'),
(230,	1,	'Albania'),
(230,	2,	'Albania'),
(231,	1,	'Afghanistan'),
(231,	2,	'Afghanistan'),
(232,	1,	'Antarctica'),
(232,	2,	'Antarctica'),
(233,	1,	'Bosnia and Herzegovina'),
(233,	2,	'Bosnia and Herzegovina'),
(234,	1,	'Bouvet Island'),
(234,	2,	'Bouvet Island'),
(235,	1,	'British Indian Ocean Territory'),
(235,	2,	'British Indian Ocean Territory'),
(236,	1,	'Bulgaria'),
(236,	2,	'Bulgaria'),
(237,	1,	'Cayman Islands'),
(237,	2,	'Cayman Islands'),
(238,	1,	'Christmas Island'),
(238,	2,	'Christmas Island'),
(239,	1,	'Cocos (Keeling) Islands'),
(239,	2,	'Cocos (Keeling) Islands'),
(240,	1,	'Cook Islands'),
(240,	2,	'Cook Islands'),
(241,	1,	'French Guiana'),
(241,	2,	'French Guiana'),
(242,	1,	'French Polynesia'),
(242,	2,	'French Polynesia'),
(243,	1,	'French Southern Territories'),
(243,	2,	'French Southern Territories'),
(244,	1,	'Åland Islands'),
(244,	2,	'Åland Islands');

DROP TABLE IF EXISTS `ps_country_shop`;
CREATE TABLE `ps_country_shop` (
  `id_country` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_country`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_country_shop` (`id_country`, `id_shop`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(6,	1),
(7,	1),
(8,	1),
(9,	1),
(10,	1),
(11,	1),
(12,	1),
(13,	1),
(14,	1),
(15,	1),
(16,	1),
(17,	1),
(18,	1),
(19,	1),
(20,	1),
(21,	1),
(22,	1),
(23,	1),
(24,	1),
(25,	1),
(26,	1),
(27,	1),
(28,	1),
(29,	1),
(30,	1),
(31,	1),
(32,	1),
(33,	1),
(34,	1),
(35,	1),
(36,	1),
(37,	1),
(38,	1),
(39,	1),
(40,	1),
(41,	1),
(42,	1),
(43,	1),
(44,	1),
(45,	1),
(46,	1),
(47,	1),
(48,	1),
(49,	1),
(50,	1),
(51,	1),
(52,	1),
(53,	1),
(54,	1),
(55,	1),
(56,	1),
(57,	1),
(58,	1),
(59,	1),
(60,	1),
(61,	1),
(62,	1),
(63,	1),
(64,	1),
(65,	1),
(66,	1),
(67,	1),
(68,	1),
(69,	1),
(70,	1),
(71,	1),
(72,	1),
(73,	1),
(74,	1),
(75,	1),
(76,	1),
(77,	1),
(78,	1),
(79,	1),
(80,	1),
(81,	1),
(82,	1),
(83,	1),
(84,	1),
(85,	1),
(86,	1),
(87,	1),
(88,	1),
(89,	1),
(90,	1),
(91,	1),
(92,	1),
(93,	1),
(94,	1),
(95,	1),
(96,	1),
(97,	1),
(98,	1),
(99,	1),
(100,	1),
(101,	1),
(102,	1),
(103,	1),
(104,	1),
(105,	1),
(106,	1),
(107,	1),
(108,	1),
(109,	1),
(110,	1),
(111,	1),
(112,	1),
(113,	1),
(114,	1),
(115,	1),
(116,	1),
(117,	1),
(118,	1),
(119,	1),
(120,	1),
(121,	1),
(122,	1),
(123,	1),
(124,	1),
(125,	1),
(126,	1),
(127,	1),
(128,	1),
(129,	1),
(130,	1),
(131,	1),
(132,	1),
(133,	1),
(134,	1),
(135,	1),
(136,	1),
(137,	1),
(138,	1),
(139,	1),
(140,	1),
(141,	1),
(142,	1),
(143,	1),
(144,	1),
(145,	1),
(146,	1),
(147,	1),
(148,	1),
(149,	1),
(150,	1),
(151,	1),
(152,	1),
(153,	1),
(154,	1),
(155,	1),
(156,	1),
(157,	1),
(158,	1),
(159,	1),
(160,	1),
(161,	1),
(162,	1),
(163,	1),
(164,	1),
(165,	1),
(166,	1),
(167,	1),
(168,	1),
(169,	1),
(170,	1),
(171,	1),
(172,	1),
(173,	1),
(174,	1),
(175,	1),
(176,	1),
(177,	1),
(178,	1),
(179,	1),
(180,	1),
(181,	1),
(182,	1),
(183,	1),
(184,	1),
(185,	1),
(186,	1),
(187,	1),
(188,	1),
(189,	1),
(190,	1),
(191,	1),
(192,	1),
(193,	1),
(194,	1),
(195,	1),
(196,	1),
(197,	1),
(198,	1),
(199,	1),
(200,	1),
(201,	1),
(202,	1),
(203,	1),
(204,	1),
(205,	1),
(206,	1),
(207,	1),
(208,	1),
(209,	1),
(210,	1),
(211,	1),
(212,	1),
(213,	1),
(214,	1),
(215,	1),
(216,	1),
(217,	1),
(218,	1),
(219,	1),
(220,	1),
(221,	1),
(222,	1),
(223,	1),
(224,	1),
(225,	1),
(226,	1),
(227,	1),
(228,	1),
(229,	1),
(230,	1),
(231,	1),
(232,	1),
(233,	1),
(234,	1),
(235,	1),
(236,	1),
(237,	1),
(238,	1),
(239,	1),
(240,	1),
(241,	1),
(242,	1),
(243,	1),
(244,	1);

DROP TABLE IF EXISTS `ps_currency`;
CREATE TABLE `ps_currency` (
  `id_currency` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint unsigned NOT NULL DEFAULT '0',
  `format` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_currency` (`id_currency`, `name`, `iso_code`, `iso_code_num`, `sign`, `blank`, `format`, `decimals`, `conversion_rate`, `deleted`, `active`) VALUES
(1,	'Česká koruna',	'CZK',	'203',	'Kč',	1,	2,	1,	25.850169,	1,	1),
(2,	'Euro',	'EUR',	'978',	'€',	1,	2,	1,	1.000000,	1,	1),
(3,	'Pounds',	'gbp',	'826',	'£',	1,	1,	1,	1.000000,	0,	1);

DROP TABLE IF EXISTS `ps_currency_shop`;
CREATE TABLE `ps_currency_shop` (
  `id_currency` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL,
  PRIMARY KEY (`id_currency`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_currency_shop` (`id_currency`, `id_shop`, `conversion_rate`) VALUES
(1,	1,	25.850169),
(2,	1,	1.000000),
(3,	1,	1.000000);

DROP TABLE IF EXISTS `ps_customer`;
CREATE TABLE `ps_customer` (
  `id_customer` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_gender` int unsigned NOT NULL,
  `id_default_group` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned DEFAULT NULL,
  `id_risk` int unsigned NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint unsigned NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint unsigned NOT NULL DEFAULT '0',
  `max_payment_days` int unsigned NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`,`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_customer_group`;
CREATE TABLE `ps_customer_group` (
  `id_customer` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_customer_message`;
CREATE TABLE `ps_customer_message` (
  `id_customer_message` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer_thread` int DEFAULT NULL,
  `id_employee` int unsigned DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `private` tinyint NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customer_message`),
  KEY `id_customer_thread` (`id_customer_thread`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_customer_message_sync_imap`;
CREATE TABLE `ps_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL,
  KEY `md5_header_index` (`md5_header`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_customer_thread`;
CREATE TABLE `ps_customer_thread` (
  `id_customer_thread` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `id_contact` int unsigned NOT NULL,
  `id_customer` int unsigned DEFAULT NULL,
  `id_order` int unsigned DEFAULT NULL,
  `id_product` int unsigned DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_thread`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`),
  KEY `id_contact` (`id_contact`),
  KEY `id_customer` (`id_customer`),
  KEY `id_order` (`id_order`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_customization`;
CREATE TABLE `ps_customization` (
  `id_customization` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int unsigned NOT NULL DEFAULT '0',
  `id_address_delivery` int unsigned NOT NULL DEFAULT '0',
  `id_cart` int unsigned NOT NULL,
  `id_product` int NOT NULL,
  `quantity` int NOT NULL,
  `quantity_refunded` int NOT NULL DEFAULT '0',
  `quantity_returned` int NOT NULL DEFAULT '0',
  `in_cart` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_cart_product` (`id_cart`,`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_customization_field`;
CREATE TABLE `ps_customization_field` (
  `id_customization_field` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_customization_field_lang`;
CREATE TABLE `ps_customization_field_lang` (
  `id_customization_field` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_customized_data`;
CREATE TABLE `ps_customized_data` (
  `id_customization` int unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_date_range`;
CREATE TABLE `ps_date_range` (
  `id_date_range` int unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_delivery`;
CREATE TABLE `ps_delivery` (
  `id_delivery` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned DEFAULT NULL,
  `id_shop_group` int unsigned DEFAULT NULL,
  `id_carrier` int unsigned NOT NULL,
  `id_range_price` int unsigned DEFAULT NULL,
  `id_range_weight` int unsigned DEFAULT NULL,
  `id_zone` int unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_employee`;
CREATE TABLE `ps_employee` (
  `id_employee` int unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `stats_compare_from` date DEFAULT NULL,
  `stats_compare_to` date DEFAULT NULL,
  `stats_compare_option` int unsigned NOT NULL DEFAULT '1',
  `preselect_date_range` varchar(32) DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_css` varchar(64) DEFAULT NULL,
  `default_tab` int unsigned NOT NULL DEFAULT '0',
  `bo_width` int unsigned NOT NULL DEFAULT '0',
  `bo_menu` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `optin` tinyint unsigned NOT NULL DEFAULT '1',
  `id_last_order` int unsigned NOT NULL DEFAULT '0',
  `id_last_customer_message` int unsigned NOT NULL DEFAULT '0',
  `id_last_customer` int unsigned NOT NULL DEFAULT '0',
  `last_connection_date` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_employee` (`id_employee`, `id_profile`, `id_lang`, `lastname`, `firstname`, `email`, `passwd`, `last_passwd_gen`, `stats_date_from`, `stats_date_to`, `stats_compare_from`, `stats_compare_to`, `stats_compare_option`, `preselect_date_range`, `bo_color`, `bo_theme`, `bo_css`, `default_tab`, `bo_width`, `bo_menu`, `active`, `optin`, `id_last_order`, `id_last_customer_message`, `id_last_customer`, `last_connection_date`) VALUES
(1,	1,	1,	'Olda',	'Klima',	'testEmail@test.com',	'365c67e6cff38dd43263e0f0f30ae8c4',	'2022-10-11 08:41:32',	'2023-01-01',	'2023-12-31',	'0000-00-00',	'0000-00-00',	1,	'day',	'',	'default',	'admin-theme.css',	1,	0,	0,	1,	1,	555,	218,	725,	'2024-05-23'),
(2,	1,	1,	'Foo',	'Bar',	'testEmail2@test.com',	'365c67e6cff38dd43263e0f0f30ae8c4',	'2022-05-21 09:34:25',	'2021-04-22',	'2021-05-22',	'0000-00-00',	'0000-00-00',	1,	'',	'',	'default',	'admin-theme.css',	1,	0,	1,	1,	1,	0,	150,	629,	'2023-06-03');

DROP TABLE IF EXISTS `ps_employee_shop`;
CREATE TABLE `ps_employee_shop` (
  `id_employee` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_employee`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_employee_shop` (`id_employee`, `id_shop`) VALUES
(1,	1),
(2,	1);

DROP TABLE IF EXISTS `ps_feature`;
CREATE TABLE `ps_feature` (
  `id_feature` int unsigned NOT NULL AUTO_INCREMENT,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_feature` (`id_feature`, `position`) VALUES
(1,	0),
(2,	1),
(3,	2),
(4,	3),
(5,	4);

DROP TABLE IF EXISTS `ps_feature_lang`;
CREATE TABLE `ps_feature_lang` (
  `id_feature` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
(3,	1,	'Breakfast to the room'),
(1,	1,	'Extra bed'),
(2,	1,	'Pets'),
(4,	1,	'Valley view'),
(5,	1,	'Wellness'),
(3,	2,	'Breakfast to the room'),
(1,	2,	'Extra bed'),
(2,	2,	'Pets'),
(4,	2,	'Valley view'),
(5,	2,	'Wellness');

DROP TABLE IF EXISTS `ps_feature_product`;
CREATE TABLE `ps_feature_product` (
  `id_feature` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_feature_value` int unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_feature_product` (`id_feature`, `id_product`, `id_feature_value`) VALUES
(1,	1,	1),
(1,	2,	1),
(1,	3,	1),
(1,	4,	1),
(2,	1,	2),
(2,	2,	2),
(2,	3,	2),
(2,	4,	2),
(3,	2,	3),
(3,	3,	3),
(3,	4,	3),
(4,	3,	4),
(4,	4,	4),
(5,	4,	5);

DROP TABLE IF EXISTS `ps_feature_shop`;
CREATE TABLE `ps_feature_shop` (
  `id_feature` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_feature_shop` (`id_feature`, `id_shop`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1);

DROP TABLE IF EXISTS `ps_feature_value`;
CREATE TABLE `ps_feature_value` (
  `id_feature_value` int unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int unsigned NOT NULL,
  `custom` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_feature_value` (`id_feature_value`, `id_feature`, `custom`) VALUES
(1,	1,	0),
(2,	2,	0),
(3,	3,	0),
(4,	4,	0),
(5,	5,	0);

DROP TABLE IF EXISTS `ps_feature_value_lang`;
CREATE TABLE `ps_feature_value_lang` (
  `id_feature_value` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES
(1,	1,	'1.jpg'),
(1,	2,	'1.jpg'),
(2,	1,	'2.jpg'),
(2,	2,	'2.jpg'),
(3,	1,	'3.jpg'),
(3,	2,	'3.jpg'),
(4,	1,	'4.jpg'),
(4,	2,	'4.jpg'),
(5,	1,	'5.jpg'),
(5,	2,	'5.jpg');

DROP TABLE IF EXISTS `ps_gender`;
CREATE TABLE `ps_gender` (
  `id_gender` int NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_gender` (`id_gender`, `type`) VALUES
(1,	0),
(2,	1);

DROP TABLE IF EXISTS `ps_gender_lang`;
CREATE TABLE `ps_gender_lang` (
  `id_gender` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_gender`,`id_lang`),
  KEY `id_gender` (`id_gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_gender_lang` (`id_gender`, `id_lang`, `name`) VALUES
(1,	1,	'Mr.'),
(1,	2,	'Pan'),
(2,	1,	'Mrs.'),
(2,	2,	'Paní');

DROP TABLE IF EXISTS `ps_group`;
CREATE TABLE `ps_group` (
  `id_group` int unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint NOT NULL DEFAULT '0',
  `show_prices` tinyint unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_group` (`id_group`, `reduction`, `price_display_method`, `show_prices`, `date_add`, `date_upd`) VALUES
(1,	0.00,	0,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29'),
(2,	0.00,	0,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29'),
(3,	0.00,	0,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29');

DROP TABLE IF EXISTS `ps_group_lang`;
CREATE TABLE `ps_group_lang` (
  `id_group` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_group_lang` (`id_group`, `id_lang`, `name`) VALUES
(1,	1,	'Visitor'),
(1,	2,	'Visitor'),
(2,	1,	'Guest'),
(2,	2,	'Guest'),
(3,	1,	'Customer'),
(3,	2,	'Customer');

DROP TABLE IF EXISTS `ps_group_reduction`;
CREATE TABLE `ps_group_reduction` (
  `id_group_reduction` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int unsigned NOT NULL,
  `id_category` int unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_group_reduction`),
  UNIQUE KEY `id_group` (`id_group`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_group_shop`;
CREATE TABLE `ps_group_shop` (
  `id_group` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_group_shop` (`id_group`, `id_shop`) VALUES
(1,	1),
(2,	1),
(3,	1);

DROP TABLE IF EXISTS `ps_guest`;
CREATE TABLE `ps_guest` (
  `id_guest` int unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int unsigned DEFAULT NULL,
  `id_web_browser` int unsigned DEFAULT NULL,
  `id_customer` int unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint unsigned DEFAULT NULL,
  `screen_resolution_y` smallint unsigned DEFAULT NULL,
  `screen_color` tinyint unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_guest` (`id_guest`, `id_operating_system`, `id_web_browser`, `id_customer`, `javascript`, `screen_resolution_x`, `screen_resolution_y`, `screen_color`, `sun_java`, `adobe_flash`, `adobe_director`, `apple_quicktime`, `real_player`, `windows_media`, `accept_language`, `mobile_theme`) VALUES
(1,	6,	11,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	'cs',	0);

DROP TABLE IF EXISTS `ps_hook`;
CREATE TABLE `ps_hook` (
  `id_hook` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_hook` (`id_hook`, `name`, `title`, `description`, `position`, `live_edit`) VALUES
(1,	'displayPayment',	'Payment',	'This hook displays new elements on the payment page',	1,	1),
(2,	'actionValidateOrder',	'New orders',	'',	1,	0),
(3,	'displayMaintenance',	'Maintenance Page',	'This hook displays new elements on the maintenance page',	1,	0),
(4,	'actionPaymentConfirmation',	'Payment confirmation',	'This hook displays new elements after the payment is validated',	1,	0),
(5,	'displayPaymentReturn',	'Payment return',	'',	1,	0),
(6,	'actionUpdateQuantity',	'Quantity update',	'Quantity is updated only when a customer effectively places their order',	1,	0),
(7,	'displayRightColumn',	'Right column blocks',	'This hook displays new elements in the right-hand column',	1,	1),
(8,	'displayLeftColumn',	'Left column blocks',	'This hook displays new elements in the left-hand column',	1,	1),
(9,	'displayHome',	'Homepage content',	'This hook displays new elements on the homepage',	1,	1),
(10,	'Header',	'Pages html head section',	'This hook adds additional elements in the head section of your pages (head section of html)',	1,	0),
(11,	'actionCartSave',	'Cart creation and update',	'This hook is displayed when a product is added to the cart or if the cart\'s content is modified',	1,	0),
(12,	'actionAuthentication',	'Successful customer authentication',	'This hook is displayed after a customer successfully signs in',	1,	0),
(13,	'actionProductAdd',	'Product creation',	'This hook is displayed after a product is created',	1,	0),
(14,	'actionProductUpdate',	'Product update',	'This hook is displayed after a product has been updated',	1,	0),
(15,	'displayTop',	'Top of pages',	'This hook displays additional elements at the top of your pages',	1,	0),
(16,	'displayRightColumnProduct',	'New elements on the product page (right column)',	'This hook displays new elements in the right-hand column of the product page',	1,	0),
(17,	'actionProductDelete',	'Product deletion',	'This hook is called when a product is deleted',	1,	0),
(18,	'displayFooterProduct',	'Product footer',	'This hook adds new blocks under the product\'s description',	1,	1),
(19,	'displayInvoice',	'Invoice',	'This hook displays new blocks on the invoice (order)',	1,	0),
(20,	'actionOrderStatusUpdate',	'Order status update - Event',	'This hook launches modules when the status of an order changes.',	1,	0),
(21,	'displayAdminOrder',	'Display new elements in the Back Office, tab AdminOrder',	'This hook launches modules when the AdminOrder tab is displayed in the Back Office',	1,	0),
(22,	'displayAdminOrderTabOrder',	'Display new elements in Back Office, AdminOrder, panel Order',	'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel tabs',	1,	0),
(23,	'displayAdminOrderTabShip',	'Display new elements in Back Office, AdminOrder, panel Shipping',	'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel tabs',	1,	0),
(24,	'displayAdminOrderContentOrder',	'Display new elements in Back Office, AdminOrder, panel Order',	'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel content',	1,	0),
(25,	'displayAdminOrderContentShip',	'Display new elements in Back Office, AdminOrder, panel Shipping',	'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel content',	1,	0),
(26,	'displayFooter',	'Footer',	'This hook displays new blocks in the footer',	1,	0),
(27,	'displayPDFInvoice',	'PDF Invoice',	'This hook allows you to display additional information on PDF invoices',	1,	0),
(28,	'displayInvoiceLegalFreeText',	'PDF Invoice - Legal Free Text',	'This hook allows you to modify the legal free text on PDF invoices',	1,	0),
(29,	'displayAdminCustomers',	'Display new elements in the Back Office, tab AdminCustomers',	'This hook launches modules when the AdminCustomers tab is displayed in the Back Office',	1,	0),
(30,	'displayOrderConfirmation',	'Order confirmation page',	'This hook is called within an order\'s confirmation page',	1,	0),
(31,	'actionCustomerAccountAdd',	'Successful customer account creation',	'This hook is called when a new customer creates an account successfully',	1,	0),
(32,	'displayCustomerAccount',	'Customer account displayed in Front Office',	'This hook displays new elements on the customer account page',	1,	0),
(33,	'displayCustomerIdentityForm',	'Customer identity form displayed in Front Office',	'This hook displays new elements on the form to update a customer identity',	1,	0),
(34,	'actionOrderSlipAdd',	'Order slip creation',	'This hook is called when a new credit slip is added regarding client order',	1,	0),
(35,	'displayProductTab',	'Tabs on product page',	'This hook is called on the product page\'s tab',	1,	0),
(36,	'displayProductTabContent',	'Tabs content on the product page',	'This hook is called on the product page\'s tab',	1,	0),
(37,	'displayShoppingCartFooter',	'Shopping cart footer',	'This hook displays some specific information on the shopping cart\'s page',	1,	0),
(38,	'displayCustomerAccountForm',	'Customer account creation form',	'This hook displays some information on the form to create a customer account',	1,	0),
(39,	'displayAdminStatsModules',	'Stats - Modules',	'',	1,	0),
(40,	'displayAdminStatsGraphEngine',	'Graph engines',	'',	1,	0),
(41,	'actionOrderReturn',	'Returned product',	'This hook is displayed when a customer returns a product ',	1,	0),
(42,	'displayProductButtons',	'Product page actions',	'This hook adds new action buttons on the product page',	1,	0),
(43,	'displayBackOfficeHome',	'Administration panel homepage',	'This hook is displayed on the admin panel\'s homepage',	1,	0),
(44,	'displayAdminStatsGridEngine',	'Grid engines',	'',	1,	0),
(45,	'actionWatermark',	'Watermark',	'',	1,	0),
(46,	'actionProductCancel',	'Product cancelled',	'This hook is called when you cancel a product in an order',	1,	0),
(47,	'displayLeftColumnProduct',	'New elements on the product page (left column)',	'This hook displays new elements in the left-hand column of the product page',	1,	0),
(48,	'actionProductOutOfStock',	'Out-of-stock product',	'This hook displays new action buttons if a product is out of stock',	1,	0),
(49,	'actionProductAttributeUpdate',	'Product attribute update',	'This hook is displayed when a product\'s attribute is updated',	1,	0),
(50,	'displayCarrierList',	'Extra carrier (module mode)',	'',	1,	0),
(51,	'displayShoppingCart',	'Shopping cart - Additional button',	'This hook displays new action buttons within the shopping cart',	1,	0),
(52,	'actionSearch',	'Search',	'',	1,	0),
(53,	'displayBeforePayment',	'Redirect during the order process',	'This hook redirects the user to the module instead of displaying payment modules',	1,	0),
(54,	'actionCarrierUpdate',	'Carrier Update',	'This hook is called when a carrier is updated',	1,	0),
(55,	'actionOrderStatusPostUpdate',	'Post update of order status',	'',	1,	0),
(56,	'displayCustomerAccountFormTop',	'Block above the form for create an account',	'This hook is displayed above the customer\'s account creation form',	1,	0),
(57,	'displayBackOfficeHeader',	'Administration panel header',	'This hook is displayed in the header of the admin panel',	1,	0),
(58,	'displayBackOfficeTop',	'Administration panel hover the tabs',	'This hook is displayed on the roll hover of the tabs within the admin panel',	1,	0),
(59,	'displayBackOfficeFooter',	'Administration panel footer',	'This hook is displayed within the admin panel\'s footer',	1,	0),
(60,	'actionProductAttributeDelete',	'Product attribute deletion',	'This hook is displayed when a product\'s attribute is deleted',	1,	0),
(61,	'actionCarrierProcess',	'Carrier process',	'',	1,	0),
(62,	'actionOrderDetail',	'Order detail',	'This hook is used to set the follow-up in Smarty when an order\'s detail is called',	1,	0),
(63,	'displayBeforeCarrier',	'Before carriers list',	'This hook is displayed before the carrier list in Front Office',	1,	0),
(64,	'displayOrderDetail',	'Order detail',	'This hook is displayed within the order\'s details in Front Office',	1,	0),
(65,	'actionPaymentCCAdd',	'Payment CC added',	'',	1,	0),
(66,	'displayProductComparison',	'Extra product comparison',	'',	1,	0),
(67,	'actionCategoryAdd',	'Category creation',	'This hook is displayed when a category is created',	1,	0),
(68,	'actionCategoryUpdate',	'Category modification',	'This hook is displayed when a category is modified',	1,	0),
(69,	'actionCategoryDelete',	'Category deletion',	'This hook is displayed when a category is deleted',	1,	0),
(70,	'actionBeforeAuthentication',	'Before authentication',	'This hook is displayed before the customer\'s authentication',	1,	0),
(71,	'displayPaymentTop',	'Top of payment page',	'This hook is displayed at the top of the payment page',	1,	0),
(72,	'actionHtaccessCreate',	'After htaccess creation',	'This hook is displayed after the htaccess creation',	1,	0),
(73,	'actionAdminMetaSave',	'After saving the configuration in AdminMeta',	'This hook is displayed after saving the configuration in AdminMeta',	1,	0),
(74,	'displayAttributeGroupForm',	'Add fields to the form \'attribute group\'',	'This hook adds fields to the form \'attribute group\'',	1,	0),
(75,	'actionAttributeGroupSave',	'Saving an attribute group',	'This hook is called while saving an attributes group',	1,	0),
(76,	'actionAttributeGroupDelete',	'Deleting attribute group',	'This hook is called while deleting an attributes  group',	1,	0),
(77,	'displayFeatureForm',	'Add fields to the form \'feature\'',	'This hook adds fields to the form \'feature\'',	1,	0),
(78,	'actionFeatureSave',	'Saving attributes\' features',	'This hook is called while saving an attributes features',	1,	0),
(79,	'actionFeatureDelete',	'Deleting attributes\' features',	'This hook is called while deleting an attributes features',	1,	0),
(80,	'actionProductSave',	'Saving products',	'This hook is called while saving products',	1,	0),
(81,	'actionProductListOverride',	'Assign a products list to a category',	'This hook assigns a products list to a category',	1,	0),
(82,	'displayAttributeGroupPostProcess',	'On post-process in admin attribute group',	'This hook is called on post-process in admin attribute group',	1,	0),
(83,	'displayFeaturePostProcess',	'On post-process in admin feature',	'This hook is called on post-process in admin feature',	1,	0),
(84,	'displayFeatureValueForm',	'Add fields to the form \'feature value\'',	'This hook adds fields to the form \'feature value\'',	1,	0),
(85,	'displayFeatureValuePostProcess',	'On post-process in admin feature value',	'This hook is called on post-process in admin feature value',	1,	0),
(86,	'actionFeatureValueDelete',	'Deleting attributes\' features\' values',	'This hook is called while deleting an attributes features value',	1,	0),
(87,	'actionFeatureValueSave',	'Saving an attributes features value',	'This hook is called while saving an attributes features value',	1,	0),
(88,	'displayAttributeForm',	'Add fields to the form \'attribute value\'',	'This hook adds fields to the form \'attribute value\'',	1,	0),
(89,	'actionAttributePostProcess',	'On post-process in admin feature value',	'This hook is called on post-process in admin feature value',	1,	0),
(90,	'actionAttributeDelete',	'Deleting an attributes features value',	'This hook is called while deleting an attributes features value',	1,	0),
(91,	'actionAttributeSave',	'Saving an attributes features value',	'This hook is called while saving an attributes features value',	1,	0),
(92,	'actionTaxManager',	'Tax Manager Factory',	'',	1,	0),
(93,	'displayMyAccountBlock',	'My account block',	'This hook displays extra information within the \'my account\' block\"',	1,	0),
(94,	'actionModuleInstallBefore',	'actionModuleInstallBefore',	'',	1,	0),
(95,	'actionModuleInstallAfter',	'actionModuleInstallAfter',	'',	1,	0),
(96,	'displayHomeTab',	'Home Page Tabs',	'This hook displays new elements on the homepage tabs',	1,	1),
(97,	'displayHomeTabContent',	'Home Page Tabs Content',	'This hook displays new elements on the homepage tabs content',	1,	1),
(98,	'displayTopColumn',	'Top column blocks',	'This hook displays new elements in the top of columns',	1,	1),
(99,	'displayBackOfficeCategory',	'Display new elements in the Back Office, tab AdminCategories',	'This hook launches modules when the AdminCategories tab is displayed in the Back Office',	1,	0),
(100,	'displayProductListFunctionalButtons',	'Display new elements in the Front Office, products list',	'This hook launches modules when the products list is displayed in the Front Office',	1,	0),
(101,	'displayNav',	'Navigation',	'',	1,	1),
(102,	'displayOverrideTemplate',	'Change the default template of current controller',	'',	1,	0),
(103,	'actionAdminLoginControllerSetMedia',	'Set media on admin login page header',	'This hook is called after adding media to admin login page header',	1,	0),
(104,	'actionOrderEdited',	'Order edited',	'This hook is called when an order is edited.',	1,	0),
(105,	'actionEmailAddBeforeContent',	'Add extra content before mail content',	'This hook is called just before fetching mail template',	1,	0),
(106,	'actionEmailAddAfterContent',	'Add extra content after mail content',	'This hook is called just after fetching mail template',	1,	0),
(107,	'displayCartExtraProductActions',	'Extra buttons in shopping cart',	'This hook adds extra buttons to the product lines, in the shopping cart',	1,	0),
(108,	'displayAfterHookTop',	'displayAfterHookTop',	'',	1,	1),
(109,	'actionOrderHistoryAddAfter',	'actionOrderHistoryAddAfter',	'',	0,	0),
(110,	'actionObjectProductDeleteBefore',	'actionObjectProductDeleteBefore',	'',	0,	0),
(111,	'displayAfterDefautlFooterHook',	'displayAfterDefautlFooterHook',	'',	1,	1),
(112,	'addWebserviceResources',	'addWebserviceResources',	'',	0,	0),
(113,	'actionObjectLanguageAddAfter',	'actionObjectLanguageAddAfter',	'',	0,	0),
(114,	'actionAdminControllerSetMedia',	'actionAdminControllerSetMedia',	'',	0,	0),
(115,	'displayAdminProductsExtra',	'displayAdminProductsExtra',	'',	1,	1),
(116,	'actionObjectProfileAddAfter',	'actionObjectProfileAddAfter',	'',	0,	0),
(117,	'actionObjectProfileDeleteBefore',	'actionObjectProfileDeleteBefore',	'',	0,	0),
(118,	'actionObjectGroupDeleteBefore',	'actionObjectGroupDeleteBefore',	'',	0,	0),
(119,	'actionFrontControllerSetMedia',	'actionFrontControllerSetMedia',	'',	0,	0),
(120,	'displayAfterHeaderHotelDesc',	'displayAfterHeaderHotelDesc',	'',	1,	1),
(121,	'displayAddModuleSettingLink',	'displayAddModuleSettingLink',	'',	1,	1),
(122,	'displayFooterNotificationHook',	'displayFooterNotificationHook',	'',	1,	1),
(123,	'registerGDPRConsent',	'registerGDPRConsent',	'',	0,	0),
(124,	'actionExportGDPRData',	'actionExportGDPRData',	'',	0,	0),
(125,	'actionDeleteGDPRCustomer',	'actionDeleteGDPRCustomer',	'',	0,	0),
(126,	'addOtherModuleSetting',	'addOtherModuleSetting',	'',	0,	0),
(127,	'displayFooterExploreSectionHook',	'displayFooterExploreSectionHook',	'',	1,	1),
(128,	'displayPaymentEU',	'displayPaymentEU',	'',	1,	1),
(129,	'displayMobileHeader',	'displayMobileHeader',	'',	1,	1),
(130,	'displayMobileShoppingCartTop',	'displayMobileShoppingCartTop',	'',	1,	1),
(131,	'displayMobileAddToCartTop',	'displayMobileAddToCartTop',	'',	1,	1),
(132,	'actionPSCleanerGetModulesTables',	'actionPSCleanerGetModulesTables',	'',	0,	0),
(134,	'actionModuleRegisterHookAfter',	'actionModuleRegisterHookAfter',	'',	0,	0),
(135,	'actionModuleUnRegisterHookAfter',	'actionModuleUnRegisterHookAfter',	'',	0,	0),
(136,	'displayFooterMostLeftBlock',	'displayFooterMostLeftBlock',	'',	1,	1),
(137,	'displayProductListReviews',	'displayProductListReviews',	'',	1,	1),
(138,	'displayFooterPaymentInfo',	'displayFooterPaymentInfo',	'',	1,	1),
(139,	'displayDefaultNavigationHook',	'displayDefaultNavigationHook',	'',	1,	1),
(140,	'displayNavigationHook',	'displayNavigationHook',	'',	1,	1),
(141,	'dashboardZoneOne',	'dashboardZoneOne',	'',	0,	0),
(142,	'dashboardData',	'dashboardData',	'',	0,	0),
(143,	'actionObjectOrderAddAfter',	'actionObjectOrderAddAfter',	'',	0,	0),
(144,	'actionObjectCustomerAddAfter',	'actionObjectCustomerAddAfter',	'',	0,	0),
(145,	'actionObjectCustomerMessageAddAfter',	'actionObjectCustomerMessageAddAfter',	'',	0,	0),
(146,	'actionObjectCustomerThreadAddAfter',	'actionObjectCustomerThreadAddAfter',	'',	0,	0),
(147,	'actionObjectOrderReturnAddAfter',	'actionObjectOrderReturnAddAfter',	'',	0,	0),
(148,	'dashboardZoneTwo',	'dashboardZoneTwo',	'',	0,	0),
(149,	'actionCartListOverride',	'actionCartListOverride',	'',	0,	0),
(150,	'displayExternalNavigationHook',	'displayExternalNavigationHook',	'',	1,	1);

DROP TABLE IF EXISTS `ps_hook_alias`;
CREATE TABLE `ps_hook_alias` (
  `id_hook_alias` int unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_hook_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_hook_alias` (`id_hook_alias`, `alias`, `name`) VALUES
(1,	'payment',	'displayPayment'),
(2,	'newOrder',	'actionValidateOrder'),
(3,	'paymentConfirm',	'actionPaymentConfirmation'),
(4,	'paymentReturn',	'displayPaymentReturn'),
(5,	'updateQuantity',	'actionUpdateQuantity'),
(6,	'rightColumn',	'displayRightColumn'),
(7,	'leftColumn',	'displayLeftColumn'),
(8,	'home',	'displayHome'),
(9,	'displayHeader',	'Header'),
(10,	'cart',	'actionCartSave'),
(11,	'authentication',	'actionAuthentication'),
(12,	'addproduct',	'actionProductAdd'),
(13,	'updateproduct',	'actionProductUpdate'),
(14,	'top',	'displayTop'),
(15,	'extraRight',	'displayRightColumnProduct'),
(16,	'deleteproduct',	'actionProductDelete'),
(17,	'productfooter',	'displayFooterProduct'),
(18,	'invoice',	'displayInvoice'),
(19,	'updateOrderStatus',	'actionOrderStatusUpdate'),
(20,	'adminOrder',	'displayAdminOrder'),
(21,	'footer',	'displayFooter'),
(22,	'PDFInvoice',	'displayPDFInvoice'),
(23,	'adminCustomers',	'displayAdminCustomers'),
(24,	'orderConfirmation',	'displayOrderConfirmation'),
(25,	'createAccount',	'actionCustomerAccountAdd'),
(26,	'customerAccount',	'displayCustomerAccount'),
(27,	'orderSlip',	'actionOrderSlipAdd'),
(28,	'productTab',	'displayProductTab'),
(29,	'productTabContent',	'displayProductTabContent'),
(30,	'shoppingCart',	'displayShoppingCartFooter'),
(31,	'createAccountForm',	'displayCustomerAccountForm'),
(32,	'AdminStatsModules',	'displayAdminStatsModules'),
(33,	'GraphEngine',	'displayAdminStatsGraphEngine'),
(34,	'orderReturn',	'actionOrderReturn'),
(35,	'productActions',	'displayProductButtons'),
(36,	'backOfficeHome',	'displayBackOfficeHome'),
(37,	'GridEngine',	'displayAdminStatsGridEngine'),
(38,	'watermark',	'actionWatermark'),
(39,	'cancelProduct',	'actionProductCancel'),
(40,	'extraLeft',	'displayLeftColumnProduct'),
(41,	'productOutOfStock',	'actionProductOutOfStock'),
(42,	'updateProductAttribute',	'actionProductAttributeUpdate'),
(43,	'extraCarrier',	'displayCarrierList'),
(44,	'shoppingCartExtra',	'displayShoppingCart'),
(45,	'search',	'actionSearch'),
(46,	'backBeforePayment',	'displayBeforePayment'),
(47,	'updateCarrier',	'actionCarrierUpdate'),
(48,	'postUpdateOrderStatus',	'actionOrderStatusPostUpdate'),
(49,	'createAccountTop',	'displayCustomerAccountFormTop'),
(50,	'backOfficeHeader',	'displayBackOfficeHeader'),
(51,	'backOfficeTop',	'displayBackOfficeTop'),
(52,	'backOfficeFooter',	'displayBackOfficeFooter'),
(53,	'deleteProductAttribute',	'actionProductAttributeDelete'),
(54,	'processCarrier',	'actionCarrierProcess'),
(55,	'orderDetail',	'actionOrderDetail'),
(56,	'beforeCarrier',	'displayBeforeCarrier'),
(57,	'orderDetailDisplayed',	'displayOrderDetail'),
(58,	'paymentCCAdded',	'actionPaymentCCAdd'),
(59,	'extraProductComparison',	'displayProductComparison'),
(60,	'categoryAddition',	'actionCategoryAdd'),
(61,	'categoryUpdate',	'actionCategoryUpdate'),
(62,	'categoryDeletion',	'actionCategoryDelete'),
(63,	'beforeAuthentication',	'actionBeforeAuthentication'),
(64,	'paymentTop',	'displayPaymentTop'),
(65,	'afterCreateHtaccess',	'actionHtaccessCreate'),
(66,	'afterSaveAdminMeta',	'actionAdminMetaSave'),
(67,	'attributeGroupForm',	'displayAttributeGroupForm'),
(68,	'afterSaveAttributeGroup',	'actionAttributeGroupSave'),
(69,	'afterDeleteAttributeGroup',	'actionAttributeGroupDelete'),
(70,	'featureForm',	'displayFeatureForm'),
(71,	'afterSaveFeature',	'actionFeatureSave'),
(72,	'afterDeleteFeature',	'actionFeatureDelete'),
(73,	'afterSaveProduct',	'actionProductSave'),
(74,	'productListAssign',	'actionProductListOverride'),
(75,	'postProcessAttributeGroup',	'displayAttributeGroupPostProcess'),
(76,	'postProcessFeature',	'displayFeaturePostProcess'),
(77,	'featureValueForm',	'displayFeatureValueForm'),
(78,	'postProcessFeatureValue',	'displayFeatureValuePostProcess'),
(79,	'afterDeleteFeatureValue',	'actionFeatureValueDelete'),
(80,	'afterSaveFeatureValue',	'actionFeatureValueSave'),
(81,	'attributeForm',	'displayAttributeForm'),
(82,	'postProcessAttribute',	'actionAttributePostProcess'),
(83,	'afterDeleteAttribute',	'actionAttributeDelete'),
(84,	'afterSaveAttribute',	'actionAttributeSave'),
(85,	'taxManager',	'actionTaxManager'),
(86,	'myAccountBlock',	'displayMyAccountBlock');

DROP TABLE IF EXISTS `ps_hook_module`;
CREATE TABLE `ps_hook_module` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_hook` int unsigned NOT NULL,
  `position` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`),
  KEY `position` (`id_shop`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_hook_module` (`id_module`, `id_shop`, `id_hook`, `position`) VALUES
(1,	1,	2,	1),
(1,	1,	10,	1),
(1,	1,	14,	1),
(1,	1,	15,	1),
(1,	1,	26,	1),
(1,	1,	55,	1),
(1,	1,	57,	1),
(1,	1,	80,	1),
(1,	1,	108,	1),
(1,	1,	109,	1),
(1,	1,	110,	1),
(1,	1,	111,	1),
(1,	1,	112,	1),
(1,	1,	113,	1),
(1,	1,	114,	1),
(1,	1,	115,	1),
(1,	1,	116,	1),
(1,	1,	117,	1),
(1,	1,	118,	1),
(2,	1,	8,	1),
(2,	1,	119,	1),
(2,	1,	120,	1),
(2,	1,	121,	1),
(3,	1,	26,	1),
(3,	1,	31,	1),
(3,	1,	122,	1),
(3,	1,	123,	1),
(3,	1,	124,	1),
(3,	1,	125,	1),
(5,	1,	126,	1),
(6,	1,	9,	1),
(6,	1,	127,	1),
(8,	1,	17,	1),
(10,	1,	1,	1),
(10,	1,	5,	1),
(10,	1,	128,	1),
(12,	1,	18,	1),
(12,	1,	21,	1),
(12,	1,	27,	1),
(12,	1,	30,	1),
(12,	1,	46,	1),
(12,	1,	51,	1),
(12,	1,	53,	1),
(12,	1,	129,	1),
(12,	1,	130,	1),
(12,	1,	131,	1),
(12,	1,	132,	1),
(13,	1,	134,	1),
(13,	1,	135,	1),
(14,	1,	136,	1),
(16,	1,	16,	1),
(16,	1,	35,	1),
(16,	1,	36,	1),
(16,	1,	66,	1),
(16,	1,	137,	1),
(19,	1,	138,	1),
(22,	1,	139,	1),
(22,	1,	140,	1),
(23,	1,	141,	1),
(23,	1,	142,	1),
(23,	1,	143,	1),
(23,	1,	144,	1),
(23,	1,	145,	1),
(23,	1,	146,	1),
(23,	1,	147,	1),
(24,	1,	148,	1),
(26,	1,	52,	1),
(27,	1,	40,	1),
(28,	1,	12,	1),
(29,	1,	39,	1),
(47,	1,	149,	1),
(48,	1,	150,	1),
(2,	1,	10,	2),
(2,	1,	108,	2),
(4,	1,	122,	2),
(5,	1,	8,	2),
(6,	1,	113,	2),
(6,	1,	121,	2),
(7,	1,	9,	2),
(7,	1,	127,	2),
(8,	1,	80,	2),
(11,	1,	1,	2),
(11,	1,	5,	2),
(11,	1,	128,	2),
(12,	1,	55,	2),
(12,	1,	57,	2),
(15,	1,	136,	2),
(20,	1,	138,	2),
(22,	1,	15,	2),
(23,	1,	114,	2),
(24,	1,	142,	2),
(25,	1,	148,	2),
(26,	1,	143,	2),
(28,	1,	31,	2),
(30,	1,	39,	2),
(3,	1,	10,	3),
(7,	1,	113,	3),
(7,	1,	121,	3),
(8,	1,	9,	3),
(8,	1,	127,	3),
(12,	1,	1,	3),
(12,	1,	5,	3),
(12,	1,	128,	3),
(13,	1,	8,	3),
(17,	1,	26,	3),
(19,	1,	136,	3),
(24,	1,	55,	3),
(24,	1,	114,	3),
(25,	1,	142,	3),
(26,	1,	148,	3),
(31,	1,	39,	3),
(32,	1,	15,	3),
(4,	1,	10,	4),
(8,	1,	113,	4),
(8,	1,	121,	4),
(9,	1,	9,	4),
(9,	1,	127,	4),
(18,	1,	26,	4),
(25,	1,	114,	4),
(26,	1,	142,	4),
(32,	1,	39,	4),
(41,	1,	15,	4),
(5,	1,	10,	5),
(9,	1,	113,	5),
(9,	1,	121,	5),
(21,	1,	26,	5),
(27,	1,	114,	5),
(33,	1,	39,	5),
(47,	1,	15,	5),
(12,	1,	10,	6),
(20,	1,	121,	6),
(22,	1,	26,	6),
(22,	1,	113,	6),
(34,	1,	39,	6),
(48,	1,	15,	6),
(13,	1,	10,	7),
(22,	1,	121,	7),
(28,	1,	26,	7),
(35,	1,	39,	7),
(14,	1,	10,	8),
(36,	1,	39,	8),
(15,	1,	10,	9),
(37,	1,	39,	9),
(16,	1,	10,	10),
(38,	1,	39,	10),
(39,	1,	39,	11),
(47,	1,	10,	11),
(40,	1,	39,	12),
(48,	1,	10,	12),
(41,	1,	39,	13),
(42,	1,	39,	14),
(43,	1,	39,	15),
(44,	1,	39,	16),
(45,	1,	39,	17),
(46,	1,	39,	18);

DROP TABLE IF EXISTS `ps_hook_module_exceptions`;
CREATE TABLE `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_module` int unsigned NOT NULL,
  `id_hook` int unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_hook_module_exceptions` (`id_hook_module_exceptions`, `id_shop`, `id_module`, `id_hook`, `file_name`) VALUES
(1,	1,	13,	8,	'category');

DROP TABLE IF EXISTS `ps_htl_access`;
CREATE TABLE `ps_htl_access` (
  `id_profile` int unsigned NOT NULL,
  `id_hotel` int unsigned NOT NULL,
  `access` int NOT NULL,
  PRIMARY KEY (`id_profile`,`id_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_access` (`id_profile`, `id_hotel`, `access`) VALUES
(1,	1,	1),
(1,	2,	1),
(2,	1,	0),
(2,	2,	0),
(3,	1,	0),
(3,	2,	0),
(4,	1,	0),
(4,	2,	0);

DROP TABLE IF EXISTS `ps_htl_advance_payment`;
CREATE TABLE `ps_htl_advance_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `payment_type` tinyint NOT NULL,
  `value` decimal(20,6) NOT NULL,
  `id_currency` int NOT NULL,
  `tax_include` tinyint NOT NULL,
  `calculate_from` tinyint NOT NULL,
  `active` tinyint NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_advance_payment` (`id`, `id_product`, `payment_type`, `value`, `id_currency`, `tax_include`, `calculate_from`, `active`, `date_add`, `date_upd`) VALUES
(1,	1,	0,	0.000000,	0,	0,	0,	0,	'2021-05-04 13:11:35',	'2024-05-17 23:21:07'),
(2,	2,	0,	0.000000,	0,	0,	0,	0,	'2021-05-04 13:11:37',	'2024-05-17 23:48:25'),
(3,	3,	0,	0.000000,	0,	0,	0,	0,	'2021-05-04 13:11:38',	'2024-05-17 23:49:39'),
(4,	4,	0,	0.000000,	0,	0,	0,	0,	'2021-05-04 13:11:40',	'2024-05-17 23:50:56');

DROP TABLE IF EXISTS `ps_htl_booking_demands`;
CREATE TABLE `ps_htl_booking_demands` (
  `id_booking_demand` int NOT NULL AUTO_INCREMENT,
  `id_htl_booking` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price_calc_method` int unsigned DEFAULT '0',
  `id_tax_rules_group` int unsigned DEFAULT '0',
  `tax_computation_method` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_booking_demand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_booking_demands_tax`;
CREATE TABLE `ps_htl_booking_demands_tax` (
  `id_booking_demand` int NOT NULL AUTO_INCREMENT,
  `id_tax` int NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_booking_demand`,`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_booking_detail`;
CREATE TABLE `ps_htl_booking_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_order` int NOT NULL,
  `id_order_detail` int NOT NULL,
  `id_cart` int NOT NULL,
  `id_room` int NOT NULL,
  `id_hotel` int NOT NULL,
  `id_customer` int NOT NULL,
  `booking_type` tinyint NOT NULL,
  `id_status` int NOT NULL,
  `comment` text NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `total_price_tax_excl` decimal(20,6) NOT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL,
  `total_paid_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `is_back_order` tinyint NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `room_type_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(12) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `check_in_time` varchar(32) DEFAULT NULL,
  `check_out_time` varchar(32) DEFAULT NULL,
  `room_num` varchar(225) DEFAULT NULL,
  `adult` smallint NOT NULL DEFAULT '0',
  `children` smallint NOT NULL DEFAULT '0',
  `is_refunded` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_branch_features`;
CREATE TABLE `ps_htl_branch_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_hotel` int unsigned NOT NULL,
  `feature_id` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_branch_info`;
CREATE TABLE `ps_htl_branch_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_category` int unsigned NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `check_in` varchar(255) DEFAULT NULL,
  `check_out` varchar(255) DEFAULT NULL,
  `rating` int unsigned NOT NULL,
  `city` varchar(64) NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned NOT NULL,
  `zipcode` varchar(12) NOT NULL,
  `address` text,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `map_formated_address` text NOT NULL,
  `map_input_text` text NOT NULL,
  `active_refund` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_branch_info` (`id`, `id_category`, `phone`, `email`, `check_in`, `check_out`, `rating`, `city`, `state_id`, `country_id`, `zipcode`, `address`, `active`, `latitude`, `longitude`, `map_formated_address`, `map_input_text`, `active_refund`, `date_add`, `date_upd`) VALUES
(1,	14,	'0987654321',	'robin.weiss6@gmail.com',	'12:00',	'11:00',	4,	'Brighton',	0,	17,	'BR457HL',	'The hackathon boulevard 666, Brighton, UK',	1,	0.00000000,	0.00000000,	'',	'',	1,	'2021-05-04 13:11:34',	'2022-11-22 14:38:03'),
(2,	18,	'123421341234',	'yrysjzjkhgcgpczcym@nthrw.com',	'04:00',	'16:00',	1,	'Brno',	0,	16,	'63900',	'asdasd',	0,	0.00000000,	0.00000000,	'',	'',	0,	'2022-05-28 09:57:24',	'2022-05-28 10:07:55');

DROP TABLE IF EXISTS `ps_htl_branch_info_lang`;
CREATE TABLE `ps_htl_branch_info_lang` (
  `id` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `policies` text,
  PRIMARY KEY (`id`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_branch_info_lang` (`id`, `id_lang`, `hotel_name`, `short_description`, `description`, `policies`) VALUES
(1,	1,	'Three Foxes Lounge',	'<p>Nice place to stay</p>',	'<p>Nice place to stay</p>',	'<p>sadasdasdasdsad</p>'),
(1,	2,	'Three Foxes Lounge',	'<p>Nice place to stay</p>',	'<p>Nice place to stay</p>',	'<p>sadasdasdasdsad</p>'),
(2,	1,	'test',	'',	'',	''),
(2,	2,	'test',	'',	'',	'');

DROP TABLE IF EXISTS `ps_htl_branch_refund_rules`;
CREATE TABLE `ps_htl_branch_refund_rules` (
  `id_hotel_refund_rule` int NOT NULL AUTO_INCREMENT,
  `id_refund_rule` int unsigned NOT NULL,
  `id_hotel` int unsigned NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_hotel_refund_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_cart_booking_data`;
CREATE TABLE `ps_htl_cart_booking_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cart` int NOT NULL,
  `id_guest` int NOT NULL,
  `id_order` int NOT NULL,
  `id_customer` int NOT NULL,
  `id_currency` int NOT NULL,
  `id_product` int NOT NULL,
  `id_room` int NOT NULL,
  `id_hotel` int NOT NULL,
  `quantity` int NOT NULL,
  `booking_type` tinyint NOT NULL,
  `comment` text NOT NULL,
  `is_back_order` tinyint NOT NULL,
  `extra_demands` text NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `is_refunded` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_custom_navigation_link`;
CREATE TABLE `ps_htl_custom_navigation_link` (
  `id_navigation_link` int NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `is_custom_link` tinyint(1) NOT NULL,
  `id_cms` int NOT NULL DEFAULT '0',
  `position` int unsigned NOT NULL DEFAULT '0',
  `show_at_navigation` tinyint(1) NOT NULL DEFAULT '0',
  `show_at_footer` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_navigation_link`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `ps_htl_custom_navigation_link` (`id_navigation_link`, `link`, `is_custom_link`, `id_cms`, `position`, `show_at_navigation`, `show_at_footer`, `active`, `date_add`, `date_upd`) VALUES
(1,	'index',	0,	0,	0,	1,	0,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(2,	'/#hotelInteriorBlock',	1,	0,	1,	1,	0,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(3,	'/#hotelAmenitiesBlock',	1,	0,	2,	1,	0,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(4,	'/#hotelRoomsBlock',	1,	0,	3,	1,	0,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(5,	'/#hotelTestimonialBlock',	1,	0,	4,	1,	0,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(6,	'',	0,	1,	5,	0,	1,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(7,	'',	0,	2,	6,	1,	1,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(8,	'',	0,	3,	7,	0,	1,	1,	'2021-05-04 13:11:41',	'2022-11-22 14:32:01'),
(9,	'',	0,	4,	8,	1,	1,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(10,	'',	0,	5,	9,	0,	1,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(11,	'contact',	0,	0,	10,	1,	0,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(12,	'',	0,	6,	11,	0,	1,	1,	'2022-11-23 09:39:44',	'2022-11-23 09:39:44');

DROP TABLE IF EXISTS `ps_htl_custom_navigation_link_lang`;
CREATE TABLE `ps_htl_custom_navigation_link_lang` (
  `id_navigation_link` int NOT NULL,
  `id_lang` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_navigation_link`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_custom_navigation_link_lang` (`id_navigation_link`, `id_lang`, `name`) VALUES
(1,	1,	'Home'),
(1,	2,	'Home'),
(2,	1,	'Interior'),
(2,	2,	'Interior'),
(3,	1,	'Amenities'),
(3,	2,	'Amenities'),
(4,	1,	'Rooms'),
(4,	2,	'Rooms'),
(5,	1,	'Testimonials'),
(5,	2,	'Testimonials'),
(6,	1,	''),
(6,	2,	''),
(7,	1,	''),
(7,	2,	''),
(8,	1,	''),
(8,	2,	''),
(9,	1,	''),
(9,	2,	''),
(10,	1,	''),
(10,	2,	''),
(11,	1,	'Contact'),
(11,	2,	'Contact'),
(12,	1,	''),
(12,	2,	'');

DROP TABLE IF EXISTS `ps_htl_features`;
CREATE TABLE `ps_htl_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_feature_id` int unsigned NOT NULL,
  `position` int unsigned NOT NULL,
  `active` int NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_features_block_data`;
CREATE TABLE `ps_htl_features_block_data` (
  `id_features_block` int NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `position` int NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_features_block`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_features_block_data` (`id_features_block`, `active`, `position`, `date_add`, `date_upd`) VALUES
(1,	1,	0,	'2021-05-04 13:11:40',	'2021-05-05 22:41:09'),
(2,	1,	1,	'2021-05-04 13:11:40',	'2021-05-05 22:41:18'),
(3,	1,	2,	'2021-05-04 13:11:40',	'2021-05-05 22:41:28'),
(4,	1,	3,	'2021-05-04 13:11:40',	'2021-05-05 22:41:38');

DROP TABLE IF EXISTS `ps_htl_features_block_data_lang`;
CREATE TABLE `ps_htl_features_block_data_lang` (
  `id_features_block` int NOT NULL,
  `id_lang` int NOT NULL,
  `feature_title` text NOT NULL,
  `feature_description` text NOT NULL,
  PRIMARY KEY (`id_features_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_features_block_data_lang` (`id_features_block`, `id_lang`, `feature_title`, `feature_description`) VALUES
(1,	1,	'Luxurious Rooms',	'We are proud to welcome you in most luxurious rooms in Brighton area on The hackathon boulevard 666. You won\'t anything better on this exact address. Except...'),
(1,	2,	'luxurious Rooms',	'We are proud to welcome you in most luxurious rooms in Brighton area on The hackathon boulevard 666. You won\'t anything better on this exact address. Except...'),
(2,	1,	'From the campfire to your table',	'Our Michellin *** chefs exclusively cook all meals outside on a campfire with goods found just in place. Nothing gets imported, our chefs are trained hunters and pickers.'),
(2,	2,	'World class cheffs',	'Our Michellin *** chefs exclusively cook all meals outside on a campfire with goods found just in place. Nothing gets imported, our chefs are trained hunters and pickers.'),
(3,	1,	'Cosy pub',	'It is popular for super rich people to visit pubs that are styled like for poor people, but serve really expensive food. It is good for pictures and stuff...'),
(3,	2,	'Restaurants',	'It is popular for super rich people to visit pubs that are styled like for poor people, but serve really expensive food. It is good for pictures and stuff...'),
(4,	1,	'Sauna&Whirpool',	'We know, that sauna or whirlpool is part of your living room anyway, but we received some European subsidies to build it, so why not after all...'),
(4,	2,	'Gym & Spa',	'We know, that sauna or whirlpool is part of your living room anyway, but we received some European subsidies to build it, so why not after all...');

DROP TABLE IF EXISTS `ps_htl_features_lang`;
CREATE TABLE `ps_htl_features_lang` (
  `id` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_footer_payment_block_info`;
CREATE TABLE `ps_htl_footer_payment_block_info` (
  `id_payment_block` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_payment_block`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_footer_payment_block_info` (`id_payment_block`, `name`, `active`, `position`, `date_add`, `date_upd`) VALUES
(1,	'Visa',	1,	0,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(2,	'American Express',	1,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(3,	'MasterCard',	1,	2,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(4,	'Paypal',	1,	3,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41');

DROP TABLE IF EXISTS `ps_htl_image`;
CREATE TABLE `ps_htl_image` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_hotel` int unsigned NOT NULL,
  `hotel_image_id` varchar(32) NOT NULL,
  `cover` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_image` (`id`, `id_hotel`, `hotel_image_id`, `cover`) VALUES
(1,	1,	'ctcgifra',	1);

DROP TABLE IF EXISTS `ps_htl_interior_image`;
CREATE TABLE `ps_htl_interior_image` (
  `id_interior_image` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `display_name` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `position` int NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_interior_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_interior_image` (`id_interior_image`, `name`, `display_name`, `active`, `position`, `date_add`, `date_upd`) VALUES
(13,	'6647d2e9f0e85',	'',	1,	0,	'2021-05-05 22:33:45',	'2024-05-17 23:58:02'),
(14,	'60930136bd625',	'',	1,	1,	'2021-05-05 22:33:58',	'2021-05-05 22:33:58'),
(15,	'6093014b17e9d',	'',	1,	2,	'2021-05-05 22:34:19',	'2021-05-05 22:34:19'),
(16,	'60930153a36e5',	'',	1,	3,	'2021-05-05 22:34:27',	'2021-05-05 22:34:27'),
(17,	'6093015f808a1',	'',	1,	4,	'2021-05-05 22:34:39',	'2021-05-05 22:34:39'),
(18,	'6093016ea7f74',	'',	1,	5,	'2021-05-05 22:34:54',	'2021-05-05 22:34:54'),
(19,	'60930178ac4d7',	'',	1,	6,	'2021-05-05 22:35:04',	'2021-05-05 22:35:04'),
(20,	'60930186b6a49',	'',	1,	7,	'2021-05-05 22:35:19',	'2021-05-05 22:35:19'),
(21,	'609301aae4683',	'',	1,	8,	'2021-05-05 22:35:55',	'2021-05-05 22:35:55'),
(22,	'609301b5a6987',	'',	1,	9,	'2021-05-05 22:36:05',	'2021-05-05 22:36:05');

DROP TABLE IF EXISTS `ps_htl_order_refund_rules`;
CREATE TABLE `ps_htl_order_refund_rules` (
  `id_refund_rule` int NOT NULL AUTO_INCREMENT,
  `payment_type` int unsigned NOT NULL,
  `deduction_value_full_pay` decimal(20,6) NOT NULL,
  `deduction_value_adv_pay` decimal(20,6) NOT NULL,
  `days` decimal(35,0) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_refund_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_order_refund_rules_lang`;
CREATE TABLE `ps_htl_order_refund_rules_lang` (
  `id_refund_rule` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_refund_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_order_restrict_date`;
CREATE TABLE `ps_htl_order_restrict_date` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_hotel` int NOT NULL,
  `max_order_date` datetime NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_order_restrict_date` (`id`, `id_hotel`, `max_order_date`, `date_add`, `date_upd`) VALUES
(1,	1,	@maxReservationDateYYYYMMDD,	'2021-05-08 14:30:18',	'2024-05-23 23:12:07');

DROP TABLE IF EXISTS `ps_htl_order_status`;
CREATE TABLE `ps_htl_order_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_order_status` (`id`, `status`) VALUES
(1,	'Alloted'),
(2,	'Checked In'),
(3,	'Checked Out');

DROP TABLE IF EXISTS `ps_htl_room_allotment_type`;
CREATE TABLE `ps_htl_room_allotment_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_room_allotment_type` (`id`, `type`) VALUES
(1,	'Random Allotment'),
(2,	'Manual Allotment');

DROP TABLE IF EXISTS `ps_htl_room_block_data`;
CREATE TABLE `ps_htl_room_block_data` (
  `id_room_block` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `active` tinyint NOT NULL,
  `position` int NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_room_block`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_room_block_data` (`id_room_block`, `id_product`, `active`, `position`, `date_add`, `date_upd`) VALUES
(1,	2,	1,	1,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(2,	3,	1,	2,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(3,	1,	1,	0,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41'),
(4,	4,	1,	3,	'2021-05-04 13:11:41',	'2021-05-04 13:11:41');

DROP TABLE IF EXISTS `ps_htl_room_disable_dates`;
CREATE TABLE `ps_htl_room_disable_dates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_room_type` int NOT NULL,
  `id_room` int NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `reason` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_room_information`;
CREATE TABLE `ps_htl_room_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_hotel` int NOT NULL,
  `room_num` varchar(225) NOT NULL,
  `id_status` int NOT NULL,
  `floor` text NOT NULL,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_room_information` (`id`, `id_product`, `id_hotel`, `room_num`, `id_status`, `floor`, `comment`, `date_add`, `date_upd`) VALUES
(1,	1,	1,	'A-101',	1,	'first',	'',	'2021-05-04 13:11:35',	'2021-05-22 17:45:01'),
(2,	1,	1,	'A-102',	1,	'first',	'',	'2021-05-04 13:11:35',	'2021-05-22 17:45:01'),
(3,	1,	1,	'A-103',	1,	'first',	'',	'2021-05-04 13:11:35',	'2021-05-22 17:45:01'),
(4,	1,	1,	'A-104',	1,	'first',	'',	'2021-05-04 13:11:35',	'2021-05-22 17:45:01'),
(5,	1,	1,	'A-105',	1,	'first',	'',	'2021-05-04 13:11:35',	'2021-05-22 17:45:01'),
(6,	2,	1,	'A-101',	1,	'first',	'',	'2021-05-04 13:11:37',	'2021-05-22 17:46:50'),
(7,	2,	1,	'A-102',	1,	'first',	'',	'2021-05-04 13:11:37',	'2021-05-22 17:46:50'),
(8,	2,	1,	'A-103',	1,	'first',	'',	'2021-05-04 13:11:37',	'2021-05-22 17:46:50'),
(9,	2,	1,	'A-104',	1,	'first',	'',	'2021-05-04 13:11:37',	'2021-05-22 17:46:50'),
(10,	2,	1,	'A-105',	1,	'first',	'',	'2021-05-04 13:11:37',	'2021-05-22 17:46:50'),
(11,	3,	1,	'A-101',	1,	'first',	'',	'2021-05-04 13:11:38',	'2021-05-22 17:47:45'),
(12,	3,	1,	'A-102',	1,	'first',	'',	'2021-05-04 13:11:38',	'2021-05-22 17:47:45'),
(13,	3,	1,	'A-103',	1,	'first',	'',	'2021-05-04 13:11:38',	'2021-05-22 17:47:45'),
(14,	3,	1,	'A-104',	1,	'first',	'',	'2021-05-04 13:11:38',	'2021-05-22 17:47:45'),
(15,	3,	1,	'A-105',	1,	'first',	'',	'2021-05-04 13:11:38',	'2021-05-22 17:47:45'),
(16,	4,	1,	'A-101',	1,	'first',	'',	'2021-05-04 13:11:40',	'2021-05-22 17:48:48'),
(17,	4,	1,	'A-102',	1,	'first',	'',	'2021-05-04 13:11:40',	'2021-05-22 17:48:48'),
(18,	4,	1,	'A-103',	1,	'first',	'',	'2021-05-04 13:11:40',	'2021-05-22 17:48:48'),
(19,	4,	1,	'A-104',	1,	'first',	'',	'2021-05-04 13:11:40',	'2021-05-22 17:48:48'),
(20,	4,	1,	'A-105',	1,	'first',	'',	'2021-05-04 13:11:40',	'2021-05-22 17:48:48'),
(21,	1,	1,	'A-106',	1,	'second',	'',	'2021-05-08 13:31:27',	'2021-05-22 17:45:01'),
(22,	1,	1,	'A-107',	1,	'second',	'',	'2021-05-08 13:31:27',	'2021-05-22 17:45:01'),
(23,	1,	1,	'A-108',	1,	'second',	'',	'2021-05-08 13:31:27',	'2021-05-22 17:45:01'),
(24,	1,	1,	'A-109',	1,	'second',	'',	'2021-05-08 13:31:27',	'2021-05-22 17:45:01'),
(25,	1,	1,	'A-110',	1,	'second',	'',	'2021-05-08 13:31:27',	'2021-05-22 17:45:01'),
(26,	1,	1,	'A-111',	1,	'second',	'',	'2021-05-08 13:31:27',	'2021-05-22 17:45:01'),
(27,	2,	1,	'A-105',	1,	'second',	'',	'2021-05-08 13:32:14',	'2021-05-22 17:46:50'),
(28,	2,	1,	'A-107',	1,	'second',	'',	'2021-05-08 13:32:14',	'2021-05-22 17:46:50'),
(29,	2,	1,	'A-108',	1,	'second',	'',	'2021-05-08 13:32:14',	'2021-05-22 17:46:50'),
(30,	2,	1,	'A-109',	1,	'second',	'',	'2021-05-08 13:32:14',	'2021-05-22 17:46:50'),
(31,	2,	1,	'A-110',	1,	'second',	'',	'2021-05-08 13:32:14',	'2021-05-22 17:46:50'),
(32,	2,	1,	'A-110',	1,	'second',	'',	'2021-05-08 13:32:14',	'2021-05-22 17:46:50'),
(33,	3,	1,	'A-106',	1,	'second',	'',	'2021-05-08 13:32:56',	'2021-05-22 17:47:45'),
(34,	3,	1,	'A-107',	1,	'second',	'',	'2021-05-08 13:32:56',	'2021-05-22 17:47:45'),
(35,	3,	1,	'A-108',	1,	'second',	'',	'2021-05-08 13:32:56',	'2021-05-22 17:47:45'),
(36,	3,	1,	'A-109',	1,	'second',	'',	'2021-05-08 13:32:56',	'2021-05-22 17:47:45'),
(37,	3,	1,	'A-110',	1,	'second',	'',	'2021-05-08 13:32:56',	'2021-05-22 17:47:45'),
(38,	3,	1,	'A-111',	1,	'second',	'',	'2021-05-08 13:32:56',	'2021-05-22 17:47:45'),
(39,	4,	1,	'A-106',	1,	'second',	'',	'2021-05-08 13:33:47',	'2021-05-22 17:48:48'),
(40,	4,	1,	'A-107',	1,	'second',	'',	'2021-05-08 13:33:47',	'2021-05-22 17:48:48'),
(41,	4,	1,	'A-108',	1,	'second',	'',	'2021-05-08 13:33:47',	'2021-05-22 17:48:48'),
(42,	4,	1,	'A-109',	1,	'second',	'',	'2021-05-08 13:33:47',	'2021-05-22 17:48:48'),
(43,	4,	1,	'A-110',	1,	'second',	'',	'2021-05-08 13:33:47',	'2021-05-22 17:48:48'),
(44,	4,	1,	'A-111',	1,	'second',	'',	'2021-05-08 13:33:47',	'2021-05-22 17:48:48'),
(45,	4,	1,	'A-112',	1,	'second',	'',	'2021-05-08 13:33:47',	'2021-05-22 17:48:48'),
(46,	1,	1,	'B-101',	1,	'third',	'',	'2021-05-22 10:05:54',	'2021-05-22 17:45:01'),
(47,	1,	1,	'B-102',	1,	'third',	'',	'2021-05-22 10:05:54',	'2021-05-22 17:45:01'),
(48,	1,	1,	'B-103',	1,	'third',	'',	'2021-05-22 10:05:54',	'2021-05-22 17:45:01'),
(49,	1,	1,	'B-104',	1,	'third',	'',	'2021-05-22 10:05:54',	'2021-05-22 17:45:01'),
(50,	1,	1,	'B-105',	1,	'third',	'',	'2021-05-22 10:05:54',	'2021-05-22 17:45:01'),
(51,	1,	1,	'B-106',	1,	'third',	'',	'2021-05-22 10:05:54',	'2021-05-22 17:45:01'),
(52,	1,	1,	'B-107',	1,	'third',	'',	'2021-05-22 10:05:54',	'2021-05-22 17:45:01'),
(53,	2,	1,	'B-101',	1,	'third',	'',	'2021-05-22 10:06:46',	'2021-05-22 17:46:50'),
(54,	2,	1,	'B-102',	1,	'third',	'',	'2021-05-22 10:06:46',	'2021-05-22 17:46:50'),
(55,	2,	1,	'B-103',	1,	'third',	'',	'2021-05-22 10:06:46',	'2021-05-22 17:46:50'),
(56,	2,	1,	'B-104',	1,	'third',	'',	'2021-05-22 10:06:46',	'2021-05-22 17:46:50'),
(57,	2,	1,	'B-105',	1,	'third',	'',	'2021-05-22 10:06:46',	'2021-05-22 17:46:50'),
(58,	2,	1,	'B-106',	1,	'third',	'',	'2021-05-22 10:06:46',	'2021-05-22 17:46:50'),
(59,	2,	1,	'B-107',	1,	'third',	'',	'2021-05-22 10:06:46',	'2021-05-22 17:46:50'),
(60,	2,	1,	'B-108',	1,	'third',	'',	'2021-05-22 10:06:46',	'2021-05-22 17:46:50'),
(61,	3,	1,	'B-101',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(62,	3,	1,	'B-102',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(63,	3,	1,	'B-103',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(64,	3,	1,	'B-104',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(65,	3,	1,	'B-105',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(66,	3,	1,	'B-106',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(67,	3,	1,	'B-107',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(68,	3,	1,	'B-108',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(69,	3,	1,	'B-109',	1,	'third',	'',	'2021-05-22 10:07:22',	'2021-05-22 17:47:45'),
(70,	4,	1,	'B-101',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(71,	4,	1,	'B-102',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(72,	4,	1,	'B-103',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(73,	4,	1,	'B-104',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(74,	4,	1,	'B-105',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(75,	4,	1,	'B-106',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(76,	4,	1,	'B-107',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(77,	4,	1,	'B-108',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(78,	4,	1,	'B-109',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(79,	4,	1,	'B-110',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(80,	4,	1,	'B-111',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(81,	4,	1,	'B-112',	1,	'third',	'',	'2021-05-22 10:08:10',	'2021-05-22 17:48:48'),
(82,	3,	1,	'c-101',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(83,	3,	1,	'c-102',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(84,	3,	1,	'c-103',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(85,	3,	1,	'c-104',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(86,	3,	1,	'c-105',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(87,	3,	1,	'c-106',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(88,	3,	1,	'c-107',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(89,	3,	1,	'c-108',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(90,	3,	1,	'c-109',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(91,	3,	1,	'c-110',	1,	'fourth',	'',	'2021-05-22 13:11:24',	'2021-05-22 17:47:45'),
(92,	4,	1,	'c-101',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(93,	4,	1,	'c-102',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(94,	4,	1,	'c-103',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(95,	4,	1,	'c-104',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(96,	4,	1,	'c-105',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(97,	4,	1,	'c-106',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(98,	4,	1,	'c-107',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(99,	4,	1,	'c-108',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(100,	4,	1,	'c-109',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(101,	4,	1,	'c-110',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(102,	4,	1,	'c-111',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(103,	4,	1,	'c-112',	1,	'fourth',	'',	'2021-05-22 13:12:32',	'2021-05-22 17:48:48'),
(104,	1,	1,	'c-101',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(105,	1,	1,	'c-102',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(106,	1,	1,	'c-103',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(107,	1,	1,	'c-104',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(108,	1,	1,	'c-105',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(109,	1,	1,	'c-106',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(110,	1,	1,	'c-107',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(111,	1,	1,	'c-108',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(112,	1,	1,	'c-109',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(113,	1,	1,	'c-110',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(114,	1,	1,	'c-111',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(115,	1,	1,	'c-112',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(116,	1,	1,	'c-113',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(117,	1,	1,	'c-114',	1,	'fourth',	'',	'2021-05-22 13:14:00',	'2021-05-22 17:45:01'),
(118,	2,	1,	'c-101',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(119,	2,	1,	'c-102',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(120,	2,	1,	'c-103',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(121,	2,	1,	'c-104',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(122,	2,	1,	'c-105',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(123,	2,	1,	'c-106',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(124,	2,	1,	'c-107',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(125,	2,	1,	'c-108',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(126,	2,	1,	'c-109',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(127,	2,	1,	'c-110',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(128,	2,	1,	'c-111',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(129,	2,	1,	'c-112',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(130,	2,	1,	'c-113',	1,	'fourth',	'',	'2021-05-22 13:15:01',	'2021-05-22 17:46:50'),
(131,	1,	1,	'd-101',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(132,	1,	1,	'd-102',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(133,	1,	1,	'd-103',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(134,	1,	1,	'd-104',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(135,	1,	1,	'd-105',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(136,	1,	1,	'd-106',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(137,	1,	1,	'd-107',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(138,	1,	1,	'd-108',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(139,	1,	1,	'd-109',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(140,	1,	1,	'd-110',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(141,	1,	1,	'd-111',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(142,	1,	1,	'd-112',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(143,	1,	1,	'd-113',	1,	'first',	'',	'2021-05-22 14:31:42',	'2021-05-22 17:45:01'),
(144,	2,	1,	'd-101',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(145,	2,	1,	'd-102',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(146,	2,	1,	'd-103',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(147,	2,	1,	'd-104',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(148,	2,	1,	'd-105',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(149,	2,	1,	'd-106',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(150,	2,	1,	'd-107',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(151,	2,	1,	'd-108',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(152,	2,	1,	'd-109',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(153,	2,	1,	'd-110',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(154,	2,	1,	'd-111',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(155,	2,	1,	'd-112',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(156,	2,	1,	'd-113',	1,	'fourth',	'',	'2021-05-22 14:32:38',	'2021-05-22 17:46:50'),
(157,	4,	1,	'd-101',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(158,	4,	1,	'd-102',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(159,	4,	1,	'd-103',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(160,	4,	1,	'd-104',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(161,	4,	1,	'd-105',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(162,	4,	1,	'd-106',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(163,	4,	1,	'd-107',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(164,	4,	1,	'd-108',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(165,	4,	1,	'd-109',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(166,	4,	1,	'd-110',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(167,	4,	1,	'd-111',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(168,	4,	1,	'd-112',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(169,	4,	1,	'd-113',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(170,	4,	1,	'd-114',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(171,	4,	1,	'd-115',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(172,	4,	1,	'd-116',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(173,	4,	1,	'd-117',	1,	'fourth',	'',	'2021-05-22 14:33:56',	'2021-05-22 17:48:48'),
(174,	1,	1,	'e-101',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(175,	1,	1,	'e-102',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(176,	1,	1,	'e-103',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(177,	1,	1,	'e-104',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(178,	1,	1,	'e-105',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(179,	1,	1,	'e-106',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(180,	1,	1,	'e-107',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(181,	1,	1,	'e-108',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(182,	1,	1,	'e-109',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(183,	1,	1,	'e-111',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(184,	1,	1,	'e-112',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(185,	1,	1,	'e-113',	1,	'first',	'',	'2021-05-22 17:45:01',	'2021-05-22 17:45:01'),
(186,	2,	1,	'e-101',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(187,	2,	1,	'e-111',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(188,	2,	1,	'e-112',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(189,	2,	1,	'e-113',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(190,	2,	1,	'e-114',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(191,	2,	1,	'e-102',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(192,	2,	1,	'e-103',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(193,	2,	1,	'e-104',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(194,	2,	1,	'e-105',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(195,	2,	1,	'e-106',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(196,	2,	1,	'e-107',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(197,	2,	1,	'e-108',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(198,	2,	1,	'e-109',	1,	'first',	'',	'2021-05-22 17:46:50',	'2021-05-22 17:46:50'),
(199,	3,	1,	'd-101',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(200,	3,	1,	'd-102',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(201,	3,	1,	'd-103',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(202,	3,	1,	'd-104',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(203,	3,	1,	'd-105',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(204,	3,	1,	'd-106',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(205,	3,	1,	'd-107',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(206,	3,	1,	'd-108',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(207,	3,	1,	'd-109',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(208,	3,	1,	'd-110',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(209,	3,	1,	'd-111',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(210,	3,	1,	'd-112',	1,	'first',	'',	'2021-05-22 17:47:45',	'2021-05-22 17:47:45'),
(211,	4,	1,	'e-101',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(212,	4,	1,	'e-102',	1,	'firstfirst',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(213,	4,	1,	'e-103',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(214,	4,	1,	'e-104',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(215,	4,	1,	'e-105',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(216,	4,	1,	'e-106',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(217,	4,	1,	'e-107',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(218,	4,	1,	'e-108',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(219,	4,	1,	'e-109',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(220,	4,	1,	'e-110',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(221,	4,	1,	'e-111',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(222,	4,	1,	'e-112',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(223,	4,	1,	'e-113',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48'),
(224,	4,	1,	'e-114',	1,	'first',	'',	'2021-05-22 17:48:48',	'2021-05-22 17:48:48');

DROP TABLE IF EXISTS `ps_htl_room_status`;
CREATE TABLE `ps_htl_room_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_room_status` (`id`, `status`) VALUES
(1,	'Active'),
(2,	'Inactive'),
(3,	'temporarily Inactive');

DROP TABLE IF EXISTS `ps_htl_room_type`;
CREATE TABLE `ps_htl_room_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_hotel` int NOT NULL,
  `adult` smallint NOT NULL,
  `children` smallint NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_room_type` (`id`, `id_product`, `id_hotel`, `adult`, `children`, `date_add`, `date_upd`) VALUES
(1,	1,	1,	2,	0,	'2021-05-04 13:11:35',	'2021-05-08 13:36:07'),
(2,	2,	1,	4,	2,	'2021-05-04 13:11:37',	'2021-05-08 13:36:30'),
(3,	3,	1,	5,	1,	'2021-05-04 13:11:38',	'2021-05-08 13:37:13'),
(4,	4,	1,	6,	2,	'2021-05-04 13:11:40',	'2021-05-08 13:37:37');

DROP TABLE IF EXISTS `ps_htl_room_type_demand`;
CREATE TABLE `ps_htl_room_type_demand` (
  `id_room_type_demand` int NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_global_demand` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_room_type_demand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_room_type_demand` (`id_room_type_demand`, `id_product`, `id_global_demand`, `date_add`, `date_upd`) VALUES
(147,	1,	1,	'2024-05-17 23:21:07',	'2024-05-17 23:21:07'),
(148,	1,	2,	'2024-05-17 23:21:07',	'2024-05-17 23:21:07'),
(149,	2,	1,	'2024-05-17 23:48:25',	'2024-05-17 23:48:25'),
(150,	2,	2,	'2024-05-17 23:48:25',	'2024-05-17 23:48:25'),
(151,	2,	3,	'2024-05-17 23:48:25',	'2024-05-17 23:48:25'),
(152,	3,	1,	'2024-05-17 23:49:39',	'2024-05-17 23:49:39'),
(153,	3,	2,	'2024-05-17 23:49:39',	'2024-05-17 23:49:39'),
(154,	3,	3,	'2024-05-17 23:49:39',	'2024-05-17 23:49:39'),
(155,	3,	4,	'2024-05-17 23:49:39',	'2024-05-17 23:49:39'),
(156,	4,	1,	'2024-05-17 23:50:56',	'2024-05-17 23:50:56'),
(157,	4,	2,	'2024-05-17 23:50:56',	'2024-05-17 23:50:56'),
(158,	4,	3,	'2024-05-17 23:50:56',	'2024-05-17 23:50:56'),
(159,	4,	4,	'2024-05-17 23:50:56',	'2024-05-17 23:50:56'),
(160,	4,	5,	'2024-05-17 23:50:56',	'2024-05-17 23:50:56');

DROP TABLE IF EXISTS `ps_htl_room_type_demand_price`;
CREATE TABLE `ps_htl_room_type_demand_price` (
  `id_room_type_demand_price` int NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_global_demand` int unsigned NOT NULL,
  `id_option` int unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_room_type_demand_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_room_type_feature_pricing`;
CREATE TABLE `ps_htl_room_type_feature_pricing` (
  `id_feature_price` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `is_special_days_exists` tinyint(1) NOT NULL,
  `date_selection_type` tinyint(1) NOT NULL,
  `special_days` text,
  `impact_way` tinyint(1) NOT NULL,
  `impact_type` tinyint(1) NOT NULL,
  `impact_value` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_feature_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_room_type_feature_pricing_group`;
CREATE TABLE `ps_htl_room_type_feature_pricing_group` (
  `id_feature_price` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_feature_price`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_room_type_feature_pricing_lang`;
CREATE TABLE `ps_htl_room_type_feature_pricing_lang` (
  `id_feature_price` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `feature_price_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_feature_price`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_room_type_global_demand`;
CREATE TABLE `ps_htl_room_type_global_demand` (
  `id_global_demand` int NOT NULL AUTO_INCREMENT,
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_tax_rules_group` int unsigned NOT NULL DEFAULT '0',
  `price_calc_method` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_global_demand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_room_type_global_demand` (`id_global_demand`, `price`, `id_tax_rules_group`, `price_calc_method`, `date_add`, `date_upd`) VALUES
(1,	50.000000,	0,	1,	'2021-05-08 13:26:25',	'2021-05-08 14:32:13'),
(2,	25.000000,	4,	1,	'2021-05-08 13:26:57',	'2021-05-08 14:31:56'),
(3,	20.000000,	4,	1,	'2021-05-08 13:27:25',	'2021-05-08 13:53:35'),
(4,	100.000000,	1,	0,	'2021-05-08 13:27:47',	'2021-05-08 13:27:47'),
(5,	200.000000,	4,	1,	'2021-05-08 13:28:52',	'2021-05-08 13:53:39');

DROP TABLE IF EXISTS `ps_htl_room_type_global_demand_advance_option`;
CREATE TABLE `ps_htl_room_type_global_demand_advance_option` (
  `id_option` int NOT NULL AUTO_INCREMENT,
  `id_global_demand` int NOT NULL,
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_room_type_global_demand_advance_option_lang`;
CREATE TABLE `ps_htl_room_type_global_demand_advance_option_lang` (
  `id_option` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_option`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_htl_room_type_global_demand_lang`;
CREATE TABLE `ps_htl_room_type_global_demand_lang` (
  `id_global_demand` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_global_demand`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_room_type_global_demand_lang` (`id_global_demand`, `id_lang`, `name`) VALUES
(1,	1,	'Extra bed'),
(1,	2,	'Extra bed'),
(2,	1,	'Pets'),
(2,	2,	'Pets'),
(3,	1,	'Breakfast to the room'),
(3,	2,	'Breakfast to the room'),
(4,	1,	'Valley view'),
(4,	2,	'Valley view'),
(5,	1,	'Wellness'),
(5,	2,	'Wellness');

DROP TABLE IF EXISTS `ps_htl_testimonials_block_data`;
CREATE TABLE `ps_htl_testimonials_block_data` (
  `id_testimonial_block` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_testimonial_block`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_testimonials_block_data` (`id_testimonial_block`, `name`, `designation`, `active`, `position`, `date_add`, `date_upd`) VALUES
(5,	'Foo Bar',	'Manual tester',	1,	0,	'2022-11-23 10:23:49',	'2024-05-17 23:56:58'),
(6,	'Test Boss',	'Velkej šéf',	1,	1,	'2022-11-23 12:33:58',	'2024-05-17 23:56:19');

DROP TABLE IF EXISTS `ps_htl_testimonials_block_data_lang`;
CREATE TABLE `ps_htl_testimonials_block_data_lang` (
  `id_testimonial_block` int NOT NULL,
  `id_lang` int NOT NULL,
  `testimonial_content` text NOT NULL,
  PRIMARY KEY (`id_testimonial_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_htl_testimonials_block_data_lang` (`id_testimonial_block`, `id_lang`, `testimonial_content`) VALUES
(5,	1,	'Jooo, dobrej shooting jsem po DA potřeboval.'),
(5,	2,	'Jooo, dobrej shooting jsem po DA potřeboval.'),
(6,	1,	'Důležité je vědět, kde to najdeš'),
(6,	2,	'Důležité je vědět, kde to najdeš');

DROP TABLE IF EXISTS `ps_image`;
CREATE TABLE `ps_image` (
  `id_image` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `cover` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `id_product_cover` (`id_product`,`cover`),
  UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  KEY `image_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_image` (`id_image`, `id_product`, `position`, `cover`) VALUES
(39,	1,	5,	NULL),
(40,	1,	6,	NULL),
(41,	1,	7,	NULL),
(42,	1,	8,	1),
(43,	2,	5,	NULL),
(44,	2,	6,	NULL),
(45,	2,	7,	NULL),
(46,	2,	8,	1),
(47,	3,	5,	NULL),
(48,	3,	6,	NULL),
(49,	3,	7,	NULL),
(50,	3,	8,	1),
(51,	4,	6,	1),
(52,	4,	7,	NULL),
(53,	4,	8,	NULL),
(54,	4,	9,	NULL),
(55,	4,	10,	NULL);

DROP TABLE IF EXISTS `ps_image_lang`;
CREATE TABLE `ps_image_lang` (
  `id_image` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_image_lang` (`id_image`, `id_lang`, `legend`) VALUES
(39,	1,	''),
(39,	2,	''),
(40,	1,	''),
(40,	2,	''),
(41,	1,	''),
(41,	2,	''),
(42,	1,	''),
(42,	2,	''),
(43,	1,	''),
(43,	2,	''),
(44,	1,	''),
(44,	2,	''),
(45,	1,	''),
(45,	2,	''),
(46,	1,	''),
(46,	2,	''),
(47,	1,	''),
(47,	2,	''),
(48,	1,	''),
(48,	2,	''),
(49,	1,	''),
(49,	2,	''),
(50,	1,	''),
(50,	2,	''),
(51,	1,	''),
(51,	2,	''),
(52,	1,	''),
(52,	2,	''),
(53,	1,	''),
(53,	2,	''),
(54,	1,	''),
(54,	2,	''),
(55,	1,	''),
(55,	2,	'');

DROP TABLE IF EXISTS `ps_image_shop`;
CREATE TABLE `ps_image_shop` (
  `id_product` int unsigned NOT NULL,
  `id_image` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `cover` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`cover`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_image_shop` (`id_product`, `id_image`, `id_shop`, `cover`) VALUES
(1,	39,	1,	NULL),
(1,	40,	1,	NULL),
(1,	41,	1,	NULL),
(1,	42,	1,	1),
(2,	43,	1,	NULL),
(2,	44,	1,	NULL),
(2,	45,	1,	NULL),
(2,	46,	1,	1),
(3,	47,	1,	NULL),
(3,	48,	1,	NULL),
(3,	49,	1,	NULL),
(3,	50,	1,	1),
(4,	52,	1,	NULL),
(4,	53,	1,	NULL),
(4,	54,	1,	NULL),
(4,	55,	1,	NULL),
(4,	51,	1,	1);

DROP TABLE IF EXISTS `ps_image_type`;
CREATE TABLE `ps_image_type` (
  `id_image_type` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `width` int unsigned NOT NULL,
  `height` int unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_image_type` (`id_image_type`, `name`, `width`, `height`, `products`, `categories`, `manufacturers`, `suppliers`, `scenes`, `stores`) VALUES
(1,	'cart_default',	80,	80,	1,	0,	0,	0,	0,	0),
(2,	'small_default',	98,	98,	1,	0,	1,	1,	0,	0),
(3,	'medium_default',	125,	125,	1,	1,	1,	1,	0,	1),
(4,	'home_default',	250,	250,	1,	0,	0,	0,	0,	0),
(5,	'large_default',	458,	458,	1,	0,	1,	1,	0,	0),
(6,	'thickbox_default',	800,	800,	1,	0,	0,	0,	0,	0),
(7,	'category_default',	870,	217,	0,	1,	0,	0,	0,	0),
(8,	'scene_default',	870,	270,	0,	0,	0,	0,	1,	0),
(9,	'm_scene_default',	161,	58,	0,	0,	0,	0,	1,	0);

DROP TABLE IF EXISTS `ps_import_match`;
CREATE TABLE `ps_import_match` (
  `id_import_match` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int NOT NULL,
  PRIMARY KEY (`id_import_match`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_lang`;
CREATE TABLE `ps_lang` (
  `id_lang` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `date_format_lite` char(32) NOT NULL DEFAULT 'Y-m-d',
  `date_format_full` char(32) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_lang` (`id_lang`, `name`, `active`, `iso_code`, `language_code`, `date_format_lite`, `date_format_full`, `is_rtl`) VALUES
(1,	'English (English)',	1,	'en',	'en-us',	'm/d/Y',	'm/d/Y H:i:s',	0),
(2,	'Čeština (Czech)',	1,	'cs',	'cs-cz',	'Y-m-d',	'Y-m-d H:i:s',	0);

DROP TABLE IF EXISTS `ps_lang_shop`;
CREATE TABLE `ps_lang_shop` (
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_lang_shop` (`id_lang`, `id_shop`) VALUES
(1,	1),
(2,	1);

DROP TABLE IF EXISTS `ps_log`;
CREATE TABLE `ps_log` (
  `id_log` int unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(1) NOT NULL,
  `error_code` int DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int unsigned DEFAULT NULL,
  `id_employee` int unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_log` (`id_log`, `severity`, `error_code`, `message`, `object_type`, `object_id`, `id_employee`, `date_add`, `date_upd`) VALUES
(1,	1,	0,	'Back Office connection from 10.244.0.1',	'',	0,	1,	'2024-05-23 23:08:45',	'2024-05-23 23:08:45');

DROP TABLE IF EXISTS `ps_mail`;
CREATE TABLE `ps_mail` (
  `id_mail` int unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(126) NOT NULL,
  `template` varchar(62) NOT NULL,
  `subject` varchar(254) NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mail`),
  KEY `recipient` (`recipient`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_manufacturer`;
CREATE TABLE `ps_manufacturer` (
  `id_manufacturer` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_manufacturer_lang`;
CREATE TABLE `ps_manufacturer_lang` (
  `id_manufacturer` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_manufacturer_shop`;
CREATE TABLE `ps_manufacturer_shop` (
  `id_manufacturer` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_memcached_servers`;
CREATE TABLE `ps_memcached_servers` (
  `id_memcached_server` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(254) NOT NULL,
  `port` int unsigned NOT NULL,
  `weight` int unsigned NOT NULL,
  PRIMARY KEY (`id_memcached_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_message`;
CREATE TABLE `ps_message` (
  `id_message` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int unsigned DEFAULT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_employee` int unsigned DEFAULT NULL,
  `id_order` int unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_message_readed`;
CREATE TABLE `ps_message_readed` (
  `id_message` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_meta`;
CREATE TABLE `ps_meta` (
  `id_meta` int unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  `configurable` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_meta`),
  UNIQUE KEY `page` (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_meta` (`id_meta`, `page`, `configurable`) VALUES
(1,	'pagenotfound',	1),
(2,	'best-sales',	1),
(3,	'contact',	1),
(4,	'index',	1),
(5,	'manufacturer',	1),
(6,	'new-products',	1),
(7,	'password',	1),
(8,	'prices-drop',	1),
(9,	'sitemap',	1),
(10,	'supplier',	1),
(11,	'address',	1),
(12,	'addresses',	1),
(13,	'authentication',	1),
(14,	'cart',	1),
(15,	'discount',	1),
(16,	'history',	1),
(17,	'identity',	1),
(18,	'my-account',	1),
(19,	'order-follow',	1),
(20,	'order-slip',	1),
(21,	'order',	1),
(22,	'search',	1),
(23,	'stores',	1),
(24,	'order-opc',	1),
(25,	'guest-tracking',	1),
(26,	'order-confirmation',	1),
(27,	'product',	0),
(28,	'category',	0),
(29,	'cms',	0),
(30,	'module-cheque-payment',	0),
(31,	'module-cheque-validation',	0),
(32,	'module-bankwire-validation',	0),
(33,	'module-bankwire-payment',	0),
(34,	'module-cashondelivery-validation',	0),
(35,	'products-comparison',	1),
(36,	'module-blocknewsletter-verification',	1);

DROP TABLE IF EXISTS `ps_meta_lang`;
CREATE TABLE `ps_meta_lang` (
  `id_meta` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL,
  PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_meta_lang` (`id_meta`, `id_shop`, `id_lang`, `title`, `description`, `keywords`, `url_rewrite`) VALUES
(1,	1,	1,	'404 error',	'This page cannot be found',	'',	'page-not-found'),
(1,	1,	2,	'404 error',	'This page cannot be found',	'',	'page-not-found'),
(2,	1,	1,	'Best sales',	'Our best sales',	'',	'best-sales'),
(2,	1,	2,	'Nejprodávanější',	'Our best sales',	'',	'Nejprodavanejsi'),
(3,	1,	1,	'Contact us',	'Use our form to contact us',	'',	'contact-us'),
(3,	1,	2,	'Napište nám',	'Use our form to contact us',	'',	'napiste-nam'),
(4,	1,	1,	'',	'Website powered by Webkul',	'',	''),
(4,	1,	2,	'',	'Website powered by Webkul™',	'',	''),
(5,	1,	1,	'Manufacturers',	'Manufacturers list',	'',	'manufacturers'),
(5,	1,	2,	'Výrobci',	'Manufacturers list',	'',	'vyrobci'),
(6,	1,	1,	'New products',	'Our new products',	'',	'new-products'),
(6,	1,	2,	'Novinky',	'Our new products',	'',	'novinky'),
(7,	1,	1,	'Forgot your password',	'Enter the e-mail address you use to sign in to receive an e-mail with a new password',	'',	'password-recovery'),
(7,	1,	2,	'Zapomenuté heslo',	'Enter the e-mail address you use to sign in to receive an e-mail with a new password',	'',	'password-recovery'),
(8,	1,	1,	'Prices drop',	'Our special products',	'',	'prices-drop'),
(8,	1,	2,	'Slevy',	'Our special products',	'',	'slevy'),
(9,	1,	1,	'Sitemap',	'Lost ? Find what your are looking for',	'',	'sitemap'),
(9,	1,	2,	'Mapa stránek',	'Lost ? Find what your are looking for',	'',	'mapa-stranek'),
(10,	1,	1,	'Suppliers',	'Suppliers list',	'',	'supplier'),
(10,	1,	2,	'Dodavatelé',	'Suppliers list',	'',	'dodavatele'),
(11,	1,	1,	'Address',	'',	'',	'address'),
(11,	1,	2,	'Adresa',	'',	'',	'adresa'),
(12,	1,	1,	'Addresses',	'',	'',	'addresses'),
(12,	1,	2,	'Adresy',	'',	'',	'adresy'),
(13,	1,	1,	'Login',	'',	'',	'login'),
(13,	1,	2,	'Login',	'',	'',	'login'),
(14,	1,	1,	'Cart',	'',	'',	'cart'),
(14,	1,	2,	'Košík',	'',	'',	'kosik'),
(15,	1,	1,	'Discount',	'',	'',	'discount'),
(15,	1,	2,	'Sleva',	'',	'',	'sleva'),
(16,	1,	1,	'Order history',	'',	'',	'order-history'),
(16,	1,	2,	'Historie objednávek',	'',	'',	'historie-objednavek'),
(17,	1,	1,	'Identity',	'',	'',	'identity'),
(17,	1,	2,	'Identity',	'',	'',	'identity'),
(18,	1,	1,	'My account',	'',	'',	'my-account'),
(18,	1,	2,	'Můj účet',	'',	'',	'muj-ucet'),
(19,	1,	1,	'Order follow',	'',	'',	'order-follow'),
(19,	1,	2,	'Order follow',	'',	'',	'order-follow'),
(20,	1,	1,	'Credit slip',	'',	'',	'credit-slip'),
(20,	1,	2,	'Dobropis',	'',	'',	'dobropis'),
(21,	1,	1,	'Order',	'',	'',	'order'),
(21,	1,	2,	'Objednávka',	'',	'',	'objednavka'),
(22,	1,	1,	'Search',	'',	'',	'search'),
(22,	1,	2,	'Vyhledávání',	'',	'',	'vyhledavani'),
(23,	1,	1,	'Stores',	'',	'',	'stores'),
(23,	1,	2,	'Prodejny',	'',	'',	'prodejny'),
(24,	1,	1,	'Order',	'',	'',	'quick-order'),
(24,	1,	2,	'Objednávka',	'',	'',	'objednavka'),
(25,	1,	1,	'Guest tracking',	'',	'',	'guest-tracking'),
(25,	1,	2,	'Sledování objednávky návštěvníka',	'',	'',	'sledovani-objednavky-navstevnika'),
(26,	1,	1,	'Order confirmation',	'',	'',	'order-confirmation'),
(26,	1,	2,	'Potvrzení objednávky',	'',	'',	'potvrzeni-objednavky'),
(35,	1,	1,	'Products Comparison',	'',	'',	'products-comparison'),
(35,	1,	2,	'Porovnání produktů',	'',	'',	'porovnani-produktu'),
(36,	1,	1,	'',	'',	'',	''),
(36,	1,	2,	'',	'',	'',	'');

DROP TABLE IF EXISTS `ps_module`;
CREATE TABLE `ps_module` (
  `id_module` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_module` (`id_module`, `name`, `active`, `version`) VALUES
(1,	'hotelreservationsystem',	1,	'1.4.2'),
(2,	'wkroomsearchblock',	1,	'1.1.1'),
(3,	'blocknewsletter',	1,	'2.2.1'),
(4,	'blocksocial',	1,	'1.2.0'),
(5,	'wkhotelfilterblock',	1,	'1.0.3'),
(6,	'wkabouthotelblock',	1,	'1.1.6'),
(7,	'wkhotelfeaturesblock',	1,	'2.0.4'),
(8,	'wkhotelroom',	1,	'1.1.6'),
(9,	'wktestimonialblock',	1,	'1.1.4'),
(10,	'bankwire',	1,	'1.1.3'),
(11,	'cheque',	1,	'2.6.4'),
(12,	'paypal',	1,	'1.0.2'),
(13,	'blockmyaccount',	1,	'1.4.1'),
(14,	'blocklanguages',	1,	'1.5.0'),
(15,	'blockcurrencies',	1,	'0.4.0'),
(16,	'productcomments',	1,	'3.6.0'),
(17,	'wkfooterlangcurrencyblock',	1,	'1.0.1'),
(18,	'wkfooterpaymentinfoblockcontainer',	1,	'1.0.1'),
(19,	'wkfooteraboutblock',	1,	'1.0.2'),
(20,	'wkfooterpaymentblock',	1,	'1.1.3'),
(21,	'wkfooternotificationblock',	1,	'1.0.1'),
(22,	'blocknavigationmenu',	1,	'1.1.0'),
(23,	'dashactivity',	1,	'1.0.0'),
(24,	'dashtrends',	1,	'1.0.0'),
(25,	'dashgoals',	1,	'1.0.0'),
(26,	'dashproducts',	1,	'1.0.0'),
(27,	'graphnvd3',	1,	'1.5.1'),
(28,	'statsdata',	1,	'1.6.2'),
(29,	'statsvisits',	1,	'1.6.1'),
(30,	'statsorigin',	1,	'1.4.1'),
(31,	'statslive',	1,	'1.3.1'),
(32,	'sekeywords',	1,	'1.4.1'),
(33,	'statssales',	1,	'1.3.1'),
(34,	'statspersonalinfos',	1,	'1.4.1'),
(35,	'statsforecast',	1,	'1.4.2'),
(36,	'statsbestcategories',	1,	'1.5.2'),
(37,	'statsproduct',	1,	'1.5.2'),
(38,	'statscheckup',	1,	'1.5.1'),
(39,	'statscatalog',	1,	'1.4.1'),
(40,	'statsbestproducts',	1,	'1.5.2'),
(41,	'pagesnotfound',	1,	'1.5.1'),
(42,	'statsnewsletter',	1,	'1.4.2'),
(43,	'statsregistrations',	1,	'1.4.1'),
(44,	'statsbestvouchers',	1,	'1.5.1'),
(45,	'statsbestcustomers',	1,	'1.5.1'),
(46,	'statsequipment',	1,	'1.3.1'),
(47,	'blockcart',	1,	'1.6.3'),
(48,	'blockuserinfo',	1,	'0.4.0');

DROP TABLE IF EXISTS `ps_module_access`;
CREATE TABLE `ps_module_access` (
  `id_profile` int unsigned NOT NULL,
  `id_module` int unsigned NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `configure` tinyint(1) NOT NULL DEFAULT '0',
  `uninstall` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_profile`,`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_module_access` (`id_profile`, `id_module`, `view`, `configure`, `uninstall`) VALUES
(2,	1,	1,	1,	1),
(2,	2,	1,	1,	1),
(2,	3,	1,	1,	1),
(2,	4,	1,	1,	1),
(2,	5,	1,	1,	1),
(2,	6,	1,	1,	1),
(2,	7,	1,	1,	1),
(2,	8,	1,	1,	1),
(2,	9,	1,	1,	1),
(2,	10,	1,	1,	1),
(2,	11,	1,	1,	1),
(2,	12,	1,	1,	1),
(2,	13,	1,	1,	1),
(2,	14,	1,	1,	1),
(2,	15,	1,	1,	1),
(2,	16,	1,	1,	1),
(2,	17,	1,	1,	1),
(2,	18,	1,	1,	1),
(2,	19,	1,	1,	1),
(2,	20,	1,	1,	1),
(2,	21,	1,	1,	1),
(2,	22,	1,	1,	1),
(2,	23,	1,	1,	1),
(2,	24,	1,	1,	1),
(2,	25,	1,	1,	1),
(2,	26,	1,	1,	1),
(2,	27,	1,	1,	1),
(2,	28,	1,	1,	1),
(2,	29,	1,	1,	1),
(2,	30,	1,	1,	1),
(2,	31,	1,	1,	1),
(2,	32,	1,	1,	1),
(2,	33,	1,	1,	1),
(2,	34,	1,	1,	1),
(2,	35,	1,	1,	1),
(2,	36,	1,	1,	1),
(2,	37,	1,	1,	1),
(2,	38,	1,	1,	1),
(2,	39,	1,	1,	1),
(2,	40,	1,	1,	1),
(2,	41,	1,	1,	1),
(2,	42,	1,	1,	1),
(2,	43,	1,	1,	1),
(2,	44,	1,	1,	1),
(2,	45,	1,	1,	1),
(2,	46,	1,	1,	1),
(2,	47,	1,	1,	1),
(2,	48,	1,	1,	1),
(3,	1,	1,	0,	0),
(3,	2,	1,	0,	0),
(3,	3,	1,	0,	0),
(3,	4,	1,	0,	0),
(3,	5,	1,	0,	0),
(3,	6,	1,	0,	0),
(3,	7,	1,	0,	0),
(3,	8,	1,	0,	0),
(3,	9,	1,	0,	0),
(3,	10,	1,	0,	0),
(3,	11,	1,	0,	0),
(3,	12,	1,	0,	0),
(3,	13,	1,	0,	0),
(3,	14,	1,	0,	0),
(3,	15,	1,	0,	0),
(3,	16,	1,	0,	0),
(3,	17,	1,	0,	0),
(3,	18,	1,	0,	0),
(3,	19,	1,	0,	0),
(3,	20,	1,	0,	0),
(3,	21,	1,	0,	0),
(3,	22,	1,	0,	0),
(3,	23,	1,	0,	0),
(3,	24,	1,	0,	0),
(3,	25,	1,	0,	0),
(3,	26,	1,	0,	0),
(3,	27,	1,	0,	0),
(3,	28,	1,	0,	0),
(3,	29,	1,	0,	0),
(3,	30,	1,	0,	0),
(3,	31,	1,	0,	0),
(3,	32,	1,	0,	0),
(3,	33,	1,	0,	0),
(3,	34,	1,	0,	0),
(3,	35,	1,	0,	0),
(3,	36,	1,	0,	0),
(3,	37,	1,	0,	0),
(3,	38,	1,	0,	0),
(3,	39,	1,	0,	0),
(3,	40,	1,	0,	0),
(3,	41,	1,	0,	0),
(3,	42,	1,	0,	0),
(3,	43,	1,	0,	0),
(3,	44,	1,	0,	0),
(3,	45,	1,	0,	0),
(3,	46,	1,	0,	0),
(3,	47,	1,	0,	0),
(3,	48,	1,	0,	0),
(4,	1,	1,	1,	1),
(4,	2,	1,	1,	1),
(4,	3,	1,	1,	1),
(4,	4,	1,	1,	1),
(4,	5,	1,	1,	1),
(4,	6,	1,	1,	1),
(4,	7,	1,	1,	1),
(4,	8,	1,	1,	1),
(4,	9,	1,	1,	1),
(4,	10,	1,	1,	1),
(4,	11,	1,	1,	1),
(4,	12,	1,	1,	1),
(4,	13,	1,	1,	1),
(4,	14,	1,	1,	1),
(4,	15,	1,	1,	1),
(4,	16,	1,	1,	1),
(4,	17,	1,	1,	1),
(4,	18,	1,	1,	1),
(4,	19,	1,	1,	1),
(4,	20,	1,	1,	1),
(4,	21,	1,	1,	1),
(4,	22,	1,	1,	1),
(4,	23,	1,	1,	1),
(4,	24,	1,	1,	1),
(4,	25,	1,	1,	1),
(4,	26,	1,	1,	1),
(4,	27,	1,	1,	1),
(4,	28,	1,	1,	1),
(4,	29,	1,	1,	1),
(4,	30,	1,	1,	1),
(4,	31,	1,	1,	1),
(4,	32,	1,	1,	1),
(4,	33,	1,	1,	1),
(4,	34,	1,	1,	1),
(4,	35,	1,	1,	1),
(4,	36,	1,	1,	1),
(4,	37,	1,	1,	1),
(4,	38,	1,	1,	1),
(4,	39,	1,	1,	1),
(4,	40,	1,	1,	1),
(4,	41,	1,	1,	1),
(4,	42,	1,	1,	1),
(4,	43,	1,	1,	1),
(4,	44,	1,	1,	1),
(4,	45,	1,	1,	1),
(4,	46,	1,	1,	1),
(4,	47,	1,	1,	1),
(4,	48,	1,	1,	1);

DROP TABLE IF EXISTS `ps_module_country`;
CREATE TABLE `ps_module_country` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_country` int unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_module_country` (`id_module`, `id_shop`, `id_country`) VALUES
(10,	1,	16),
(10,	1,	17),
(11,	1,	16),
(11,	1,	17),
(12,	1,	16),
(12,	1,	17);

DROP TABLE IF EXISTS `ps_module_currency`;
CREATE TABLE `ps_module_currency` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_currency` int NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_module_currency` (`id_module`, `id_shop`, `id_currency`) VALUES
(10,	1,	3),
(11,	1,	3),
(12,	1,	3);

DROP TABLE IF EXISTS `ps_module_group`;
CREATE TABLE `ps_module_group` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_module_group` (`id_module`, `id_shop`, `id_group`) VALUES
(1,	1,	1),
(1,	1,	2),
(1,	1,	3),
(2,	1,	1),
(2,	1,	2),
(2,	1,	3),
(3,	1,	1),
(3,	1,	2),
(3,	1,	3),
(4,	1,	1),
(4,	1,	2),
(4,	1,	3),
(5,	1,	1),
(5,	1,	2),
(5,	1,	3),
(6,	1,	1),
(6,	1,	2),
(6,	1,	3),
(7,	1,	1),
(7,	1,	2),
(7,	1,	3),
(8,	1,	1),
(8,	1,	2),
(8,	1,	3),
(9,	1,	1),
(9,	1,	2),
(9,	1,	3),
(10,	1,	1),
(10,	1,	2),
(10,	1,	3),
(11,	1,	1),
(11,	1,	2),
(11,	1,	3),
(12,	1,	1),
(12,	1,	2),
(12,	1,	3),
(13,	1,	1),
(13,	1,	2),
(13,	1,	3),
(14,	1,	1),
(14,	1,	2),
(14,	1,	3),
(15,	1,	1),
(15,	1,	2),
(15,	1,	3),
(16,	1,	1),
(16,	1,	2),
(16,	1,	3),
(17,	1,	1),
(17,	1,	2),
(17,	1,	3),
(18,	1,	1),
(18,	1,	2),
(18,	1,	3),
(19,	1,	1),
(19,	1,	2),
(19,	1,	3),
(20,	1,	1),
(20,	1,	2),
(20,	1,	3),
(21,	1,	1),
(21,	1,	2),
(21,	1,	3),
(22,	1,	1),
(22,	1,	2),
(22,	1,	3),
(23,	1,	1),
(23,	1,	2),
(23,	1,	3),
(24,	1,	1),
(24,	1,	2),
(24,	1,	3),
(25,	1,	1),
(25,	1,	2),
(25,	1,	3),
(26,	1,	1),
(26,	1,	2),
(26,	1,	3),
(27,	1,	1),
(27,	1,	2),
(27,	1,	3),
(28,	1,	1),
(28,	1,	2),
(28,	1,	3),
(29,	1,	1),
(29,	1,	2),
(29,	1,	3),
(30,	1,	1),
(30,	1,	2),
(30,	1,	3),
(31,	1,	1),
(31,	1,	2),
(31,	1,	3),
(32,	1,	1),
(32,	1,	2),
(32,	1,	3),
(33,	1,	1),
(33,	1,	2),
(33,	1,	3),
(34,	1,	1),
(34,	1,	2),
(34,	1,	3),
(35,	1,	1),
(35,	1,	2),
(35,	1,	3),
(36,	1,	1),
(36,	1,	2),
(36,	1,	3),
(37,	1,	1),
(37,	1,	2),
(37,	1,	3),
(38,	1,	1),
(38,	1,	2),
(38,	1,	3),
(39,	1,	1),
(39,	1,	2),
(39,	1,	3),
(40,	1,	1),
(40,	1,	2),
(40,	1,	3),
(41,	1,	1),
(41,	1,	2),
(41,	1,	3),
(42,	1,	1),
(42,	1,	2),
(42,	1,	3),
(43,	1,	1),
(43,	1,	2),
(43,	1,	3),
(44,	1,	1),
(44,	1,	2),
(44,	1,	3),
(45,	1,	1),
(45,	1,	2),
(45,	1,	3),
(46,	1,	1),
(46,	1,	2),
(46,	1,	3),
(47,	1,	1),
(47,	1,	2),
(47,	1,	3),
(48,	1,	1),
(48,	1,	2),
(48,	1,	3);

DROP TABLE IF EXISTS `ps_module_preference`;
CREATE TABLE `ps_module_preference` (
  `id_module_preference` int NOT NULL AUTO_INCREMENT,
  `id_employee` int NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_module_shop`;
CREATE TABLE `ps_module_shop` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `enable_device` tinyint(1) NOT NULL DEFAULT '7',
  PRIMARY KEY (`id_module`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_module_shop` (`id_module`, `id_shop`, `enable_device`) VALUES
(1,	1,	7),
(2,	1,	7),
(3,	1,	3),
(4,	1,	7),
(5,	1,	7),
(6,	1,	7),
(7,	1,	7),
(8,	1,	7),
(9,	1,	7),
(10,	1,	7),
(11,	1,	7),
(12,	1,	7),
(13,	1,	7),
(14,	1,	7),
(15,	1,	7),
(16,	1,	7),
(17,	1,	7),
(18,	1,	7),
(19,	1,	7),
(20,	1,	7),
(21,	1,	3),
(22,	1,	7),
(23,	1,	7),
(24,	1,	7),
(25,	1,	7),
(26,	1,	7),
(27,	1,	7),
(28,	1,	7),
(29,	1,	7),
(30,	1,	7),
(31,	1,	7),
(32,	1,	7),
(33,	1,	7),
(34,	1,	7),
(35,	1,	7),
(36,	1,	7),
(37,	1,	7),
(38,	1,	7),
(39,	1,	7),
(40,	1,	7),
(41,	1,	7),
(42,	1,	3),
(43,	1,	7),
(44,	1,	7),
(45,	1,	7),
(46,	1,	7),
(47,	1,	7),
(48,	1,	7);

DROP TABLE IF EXISTS `ps_modules_perfs`;
CREATE TABLE `ps_modules_perfs` (
  `id_modules_perfs` int unsigned NOT NULL AUTO_INCREMENT,
  `session` int unsigned NOT NULL,
  `module` varchar(62) NOT NULL,
  `method` varchar(126) NOT NULL,
  `time_start` double unsigned NOT NULL,
  `time_end` double unsigned NOT NULL,
  `memory_start` int unsigned NOT NULL,
  `memory_end` int unsigned NOT NULL,
  PRIMARY KEY (`id_modules_perfs`),
  KEY `session` (`session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_newsletter`;
CREATE TABLE `ps_newsletter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_newsletter` (`id`, `id_shop`, `id_shop_group`, `email`, `newsletter_date_add`, `ip_registration_newsletter`, `http_referer`, `active`) VALUES
(1,	1,	1,	'robin.weiss@seznam.cz',	'2021-05-05 20:23:09',	'2a02:8308:d18e:',	NULL,	1),
(4,	1,	1,	'master@czechitas-app.loc',	'2021-05-22 08:52:04',	'213.192.4.142',	'',	0),
(6,	1,	1,	'basovapeta@gmail.com',	'2021-05-22 09:14:52',	'213.192.4.142',	'',	1),
(8,	1,	1,	'mia.chmurciakova@gmail.com',	'2021-05-22 09:21:07',	'85.93.116.87',	NULL,	0),
(9,	1,	1,	'my-design@seznam.cz',	'2021-05-22 09:21:30',	'78.108.156.138',	NULL,	1),
(10,	1,	1,	't.pavlikova149@gmail.com',	'2021-05-22 09:25:23',	'85.93.116.87',	NULL,	0),
(11,	1,	1,	'jkl@gmail.com',	'2021-05-22 09:52:48',	'185.137.125.1',	'',	0),
(12,	1,	1,	'testik@test.cz',	'2021-05-22 12:04:15',	'78.108.156.138',	'',	0),
(13,	1,	1,	'magda.jaros1123+1@gmail.com',	'2021-05-22 12:25:01',	'193.165.97.233',	NULL,	0),
(14,	1,	1,	'magda.jaros1123@gmail.com',	'2021-05-22 12:30:48',	'193.165.97.233',	NULL,	0),
(16,	1,	1,	'katkachceslevu@gmail.com',	'2021-05-22 13:34:59',	'85.93.116.88',	NULL,	1),
(17,	1,	1,	'test.da.hackhaton@gmail.com',	'2021-05-22 14:44:57',	'185.205.59.11',	'',	0),
(18,	1,	1,	'ewyc7@post.cz',	'2021-05-22 14:45:31',	'185.137.125.1',	NULL,	1),
(19,	1,	1,	'evaholzova@gmail.com',	'2021-05-22 14:47:42',	'185.137.125.1',	NULL,	1),
(20,	1,	1,	'nonexisting@email.com',	'2021-05-22 16:37:12',	'185.156.38.120',	'',	0),
(21,	1,	1,	'rampasova.zdenka@gmail.com',	'2021-05-22 16:56:21',	'85.160.42.227',	NULL,	1),
(22,	1,	1,	'dsfasdfasdf@seznam.cz',	'2021-05-22 17:07:11',	'2a00:1028:83ac:',	NULL,	0),
(23,	1,	1,	'mujemail+randomText@gmail.com',	'2021-05-22 17:11:10',	'2a00:1028:83ac:',	NULL,	0),
(24,	1,	1,	'mujemail+{randomText}@gmail.com',	'2021-05-22 17:12:17',	'2a00:1028:83ac:',	NULL,	0),
(25,	1,	1,	'mujemail+97012@gmail.com',	'2021-05-22 17:19:24',	'2a00:1028:83ac:',	NULL,	0),
(26,	1,	1,	'mujemail+51964@gmail.com',	'2021-05-22 17:19:32',	'2a00:1028:83ac:',	NULL,	0),
(27,	1,	1,	'thorek11@gmail.com',	'2021-05-22 17:26:23',	'93.99.190.249',	NULL,	1),
(29,	1,	1,	'apapapa@sdag.d',	'2021-05-22 18:53:00',	'193.244.33.243',	NULL,	0),
(31,	1,	1,	'dskmk@gmail.com',	'2021-05-22 19:19:37',	'46.135.43.31',	NULL,	0),
(32,	1,	1,	't.pavlikova@protonmail.com',	'2021-05-22 19:20:44',	'85.93.116.87',	NULL,	0),
(33,	1,	1,	'mksdmk@gmail.com',	'2021-05-22 19:21:03',	'46.135.43.31',	NULL,	0),
(34,	1,	1,	'marcela.hrubanova@gmail.com',	'2021-05-22 19:22:46',	'185.5.69.189',	'',	0),
(35,	1,	1,	'0@0.com',	'2021-05-22 19:23:02',	'85.93.116.87',	'',	0),
(36,	1,	1,	'mujemail+98812@gmail.com',	'2021-05-22 19:25:20',	'2a00:1028:83ac:',	NULL,	0),
(37,	1,	1,	'marcela.hrubanova@seznam.cz',	'2021-05-22 19:25:38',	'185.5.69.189',	'',	0),
(38,	1,	1,	'marcela.hrubanova@siemens.com',	'2021-05-22 19:28:32',	'185.5.69.189',	NULL,	1),
(39,	1,	1,	'Master_V@gmail.com',	'2021-05-22 19:49:57',	'46.135.43.31',	NULL,	0),
(40,	1,	1,	'valentinanekrasova@seznam.cz',	'2021-05-22 19:54:12',	'46.135.43.31',	NULL,	0),
(41,	1,	1,	'pepapig@gmail.com',	'2021-05-22 19:55:45',	'46.135.43.31',	NULL,	0),
(42,	1,	1,	'julie.blokovana@test.cz',	'2021-05-25 16:35:33',	'86.49.56.238',	NULL,	0),
(43,	1,	1,	'gabfilipov+test2@gmail.com',	'2021-05-25 16:39:40',	'86.49.56.238',	NULL,	1),
(44,	1,	1,	'smajlik123@gmail.com',	'2021-05-28 06:15:34',	'94.112.155.237',	'',	0),
(45,	1,	1,	'wiewiorka@seznam.cz',	'2021-05-28 19:00:58',	'2a00:1028:83ac:',	'',	1),
(46,	1,	1,	'kaja.nowakova@gmail.com',	'2021-05-28 19:01:46',	'2a00:1028:83ac:',	'',	1),
(47,	1,	1,	'magda.jaros1123+3@gmail.com',	'2021-05-28 19:02:10',	'193.165.97.233',	NULL,	0),
(48,	1,	1,	'20210531terapola2@gmail.com',	'2021-05-31 22:16:58',	'2a00:1028:83ae:',	NULL,	0),
(51,	1,	1,	'ahoj@ahoj.sk',	'2021-11-20 14:19:37',	'94.198.41.212',	NULL,	0),
(52,	1,	1,	'admin@czechitas-app.loc',	'2021-11-20 14:38:56',	'62.44.1.203',	NULL,	0),
(53,	1,	1,	'petulepetrikova@seznam.cz',	'2021-11-20 15:11:33',	'62.44.1.203',	NULL,	1),
(54,	1,	1,	'raduseb@gmail.com',	'2021-11-20 17:37:43',	'62.44.1.203',	NULL,	0),
(55,	1,	1,	'ditete123@rodic.com',	'2021-11-20 17:40:12',	'62.44.1.203',	NULL,	0),
(56,	1,	1,	'hokus.pokus.fokus@seznam.cz',	'2021-11-20 17:51:55',	'62.44.1.203',	NULL,	0),
(57,	1,	1,	'qwert@qwwert.com',	'2021-11-20 18:07:43',	'165.1.187.141',	'',	0),
(58,	1,	1,	'andreavavrikova83@gmail.com',	'2021-11-20 18:24:34',	'62.44.1.203',	NULL,	0),
(59,	1,	1,	'jarda.carda@gmail.com',	'2021-11-20 18:39:24',	'62.44.1.203',	NULL,	0),
(62,	1,	1,	'hana.spackova84@gmail.com',	'2021-11-27 08:59:52',	'90.182.112.136',	NULL,	0),
(63,	1,	1,	'hackathon@email.cz',	'2021-11-27 16:16:28',	'89.102.255.168',	NULL,	0),
(64,	1,	1,	'pumpova+6@gmail.com',	'2021-11-27 18:27:49',	'2a02:8308:6001:',	'',	0),
(65,	1,	1,	'katka.ticha88@gmail.com',	'2021-12-02 11:50:31',	'213.155.225.177',	NULL,	0),
(66,	1,	1,	'alwthenbzffoiuaivi@kvhrs.com',	'2021-12-03 19:15:53',	'94.113.103.94',	NULL,	0),
(67,	1,	1,	'ohlwjexjbuaytfpsaa@kvhrs.com',	'2022-05-28 13:16:39',	'62.44.1.203',	NULL,	0),
(68,	1,	1,	'kostrhun.j@gmail.com',	'2022-05-28 13:40:15',	'62.44.1.203',	NULL,	0),
(69,	1,	1,	'baditky.ivana@gmail.com',	'2022-05-28 13:44:33',	'62.44.1.203',	'',	0),
(71,	1,	1,	'bartavoj@gmail.com',	'2022-05-28 14:41:38',	'62.44.1.203',	NULL,	0),
(72,	1,	1,	'banditky.nove@gmail.com',	'2022-05-28 14:43:51',	'62.44.1.203',	'',	0),
(73,	1,	1,	'Deset@deset.cz',	'2022-05-28 16:14:54',	'62.44.1.203',	'',	0),
(74,	1,	1,	'a@a.a',	'2022-05-28 16:15:13',	'62.44.1.203',	'',	0),
(75,	1,	1,	'olala@salala.cz',	'2022-05-28 16:18:11',	'62.44.1.203',	'',	0),
(76,	1,	1,	'tester@test.cz',	'2022-05-28 16:29:34',	'46.135.86.45',	NULL,	0),
(77,	1,	1,	'oii@hma.com',	'2022-06-03 14:06:40',	'193.165.97.187',	NULL,	0),
(78,	1,	1,	'iyxvzwdxdrowjagtla@bvhrs.com',	'2022-06-05 11:39:20',	'213.220.227.50',	NULL,	0),
(83,	1,	1,	'vojok74039@kuvasin.com',	'2022-11-26 11:11:57',	'213.175.39.66',	NULL,	1),
(84,	1,	1,	'zuza.benackova@gmail.com',	'2022-11-26 13:37:08',	'213.175.39.66',	NULL,	0),
(85,	1,	1,	'ddwtvgpgetjxchjuyk@tmmwj.com',	'2022-11-26 13:38:03',	'213.175.39.66',	NULL,	1),
(87,	1,	1,	'nedig23294@probdd.com',	'2022-11-26 16:33:40',	'213.175.39.66',	NULL,	0),
(88,	1,	1,	'matesarova@gmail.com',	'2022-11-26 16:49:06',	'213.175.39.66',	NULL,	0),
(90,	1,	1,	'matesarova1@gmail.com',	'2022-11-26 17:15:40',	'213.175.39.66',	NULL,	0),
(91,	1,	1,	'xng20695@cdfaq.com',	'2022-11-26 17:46:01',	'213.175.39.66',	NULL,	1),
(92,	1,	1,	'Jana123@centrum.cz',	'2022-11-26 17:56:46',	'213.175.39.66',	NULL,	0),
(93,	1,	1,	'gejak63634@rubeshi.com',	'2022-11-26 18:06:56',	'213.175.39.66',	NULL,	0),
(94,	1,	1,	'Jana123@c.cz',	'2022-11-26 18:07:48',	'213.175.39.66',	NULL,	0),
(95,	1,	1,	'nenitu@gmil.com',	'2022-11-26 19:40:06',	'213.175.39.66',	NULL,	1),
(96,	1,	1,	'emanenwlwerzzbjdec@tmmwj.net',	'2022-12-06 19:24:37',	'78.102.201.228',	'https://www.google.com/',	0),
(97,	1,	1,	'klara@seznam.cz',	'2023-06-03 08:43:03',	'213.175.39.66',	NULL,	0),
(98,	1,	1,	'ase@seznam.cz',	'2023-06-03 08:59:11',	'213.175.39.66',	NULL,	0),
(100,	1,	1,	'sindelarova-eva@seznam.cz',	'2023-06-03 09:06:54',	'213.175.39.66',	NULL,	0),
(102,	1,	1,	'wysxvbijawgsvrunot@bbitf.com',	'2023-06-03 14:14:26',	'213.175.39.66',	NULL,	1),
(104,	1,	1,	'ja.jedlickova@gmail.com',	'2023-06-03 15:31:14',	'213.175.39.66',	NULL,	0),
(105,	1,	1,	'1@1.1',	'2023-06-03 16:09:47',	'213.175.39.66',	NULL,	0),
(106,	1,	1,	'da-app.parent-maria@czechitas.cz',	'2023-06-03 16:32:28',	'213.175.39.66',	NULL,	0),
(107,	1,	1,	'vitali.savluk@gmail.com',	'2023-06-03 16:56:13',	'213.175.39.66',	'',	0),
(108,	1,	1,	'lenka.haarbrandt@gmail.com',	'2023-06-03 17:37:04',	'213.175.39.66',	NULL,	0),
(109,	1,	1,	'iryna.khimina@gmail.com',	'2023-06-03 18:14:51',	'213.175.39.66',	'',	0);

DROP TABLE IF EXISTS `ps_operating_system`;
CREATE TABLE `ps_operating_system` (
  `id_operating_system` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_operating_system` (`id_operating_system`, `name`) VALUES
(1,	'Windows XP'),
(2,	'Windows Vista'),
(3,	'Windows 7'),
(4,	'Windows 8'),
(5,	'MacOsX'),
(6,	'Linux'),
(7,	'Android');

DROP TABLE IF EXISTS `ps_order_carrier`;
CREATE TABLE `ps_order_carrier` (
  `id_order_carrier` int NOT NULL AUTO_INCREMENT,
  `id_order` int unsigned NOT NULL,
  `id_carrier` int unsigned NOT NULL,
  `id_order_invoice` int unsigned DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_carrier`),
  KEY `id_order` (`id_order`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_order_invoice` (`id_order_invoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_cart_rule`;
CREATE TABLE `ps_order_cart_rule` (
  `id_order_cart_rule` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int unsigned NOT NULL,
  `id_cart_rule` int unsigned NOT NULL,
  `id_order_invoice` int unsigned DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_cart_rule`),
  KEY `id_order` (`id_order`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_detail`;
CREATE TABLE `ps_order_detail` (
  `id_order_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int unsigned NOT NULL,
  `id_order_invoice` int DEFAULT NULL,
  `id_warehouse` int unsigned DEFAULT '0',
  `id_shop` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `product_attribute_id` int unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int NOT NULL DEFAULT '0',
  `product_quantity_refunded` int unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `id_tax_rules_group` int unsigned DEFAULT '0',
  `tax_computation_method` tinyint unsigned NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_detail_tax`;
CREATE TABLE `ps_order_detail_tax` (
  `id_order_detail` int NOT NULL,
  `id_tax` int NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  KEY `id_order_detail` (`id_order_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_history`;
CREATE TABLE `ps_order_history` (
  `id_order_history` int unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  `id_order_state` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_invoice`;
CREATE TABLE `ps_order_invoice` (
  `id_order_invoice` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int NOT NULL,
  `number` int NOT NULL,
  `delivery_number` int NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_tax_computation_method` int unsigned NOT NULL,
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shop_address` text,
  `invoice_address` text,
  `delivery_address` text,
  `note` text,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_invoice`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_order_invoice` (`id_order_invoice`, `id_order`, `number`, `delivery_number`, `delivery_date`, `total_discount_tax_excl`, `total_discount_tax_incl`, `total_paid_tax_excl`, `total_paid_tax_incl`, `total_products`, `total_products_wt`, `total_shipping_tax_excl`, `total_shipping_tax_incl`, `shipping_tax_computation_method`, `total_wrapping_tax_excl`, `total_wrapping_tax_incl`, `shop_address`, `invoice_address`, `delivery_address`, `note`, `date_add`) VALUES
(1,	577,	1,	0,	NULL,	165000.000000,	199650.000000,	0.000000,	0.000000,	165000.000000,	199650.000000,	0.000000,	0.000000,	0,	0.000000,	0.000000,	'Czechitas DA Hackathon',	'',	'',	'',	'2022-11-26 12:49:30'),
(2,	583,	2,	0,	NULL,	395500.000000,	478555.000000,	0.000000,	0.000000,	395500.000000,	478555.000000,	0.000000,	0.000000,	0,	0.000000,	0.000000,	'Czechitas DA Hackathon',	'',	'',	'',	'2022-11-26 13:37:22'),
(3,	618,	3,	0,	NULL,	162000.000000,	196020.000000,	0.000000,	0.000000,	162000.000000,	196020.000000,	0.000000,	0.000000,	0,	0.000000,	0.000000,	'Czechitas DA Hackathon',	'',	'',	'',	'2022-11-26 15:59:33'),
(4,	674,	4,	0,	NULL,	174000.000000,	210540.000000,	0.000000,	0.000000,	174000.000000,	210540.000000,	0.000000,	0.000000,	0,	0.000000,	0.000000,	'Czechitas DA Hackathon',	'',	'',	'',	'2022-12-05 21:59:57');

DROP TABLE IF EXISTS `ps_order_invoice_payment`;
CREATE TABLE `ps_order_invoice_payment` (
  `id_order_invoice` int unsigned NOT NULL,
  `id_order_payment` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  KEY `order_payment` (`id_order_payment`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_invoice_tax`;
CREATE TABLE `ps_order_invoice_tax` (
  `id_order_invoice` int NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000',
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_message`;
CREATE TABLE `ps_order_message` (
  `id_order_message` int unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_message_lang`;
CREATE TABLE `ps_order_message_lang` (
  `id_order_message` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_payment`;
CREATE TABLE `ps_order_payment` (
  `id_order_payment` int NOT NULL AUTO_INCREMENT,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_payment`),
  KEY `order_reference` (`order_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_order_payment` (`id_order_payment`, `order_reference`, `id_currency`, `amount`, `payment_method`, `conversion_rate`, `transaction_id`, `card_number`, `card_brand`, `card_expiration`, `card_holder`, `date_add`) VALUES
(1,	'GFMUTRVOA',	3,	0.00,	'Objednávka zdarma',	1.000000,	'',	'',	'',	'',	'',	'2022-11-26 12:49:29'),
(2,	'IQZCWOFJN',	3,	0.00,	'Free order',	1.000000,	'',	'',	'',	'',	'',	'2022-11-26 13:37:20'),
(3,	'YGEAYDQMO',	3,	0.00,	'Free order',	1.000000,	'',	'',	'',	'',	'',	'2022-11-26 15:59:32'),
(4,	'TZIONALKW',	3,	0.00,	'Free order',	1.000000,	'',	'',	'',	'',	'',	'2022-12-05 21:59:56');

DROP TABLE IF EXISTS `ps_order_return`;
CREATE TABLE `ps_order_return` (
  `id_order_return` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  `state` int unsigned NOT NULL DEFAULT '1',
  `id_transaction` varchar(100) NOT NULL DEFAULT '',
  `payment_mode` varchar(255) NOT NULL DEFAULT '',
  `refunded_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `question` text NOT NULL,
  `by_admin` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_return_detail`;
CREATE TABLE `ps_order_return_detail` (
  `id_order_return_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order_return` int unsigned NOT NULL,
  `id_htl_booking` int NOT NULL,
  `refunded_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_order_detail` int unsigned NOT NULL DEFAULT '0',
  `id_customization` int unsigned NOT NULL DEFAULT '0',
  `product_quantity` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return_detail`),
  KEY `id_htl_booking` (`id_htl_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_return_state`;
CREATE TABLE `ps_order_return_state` (
  `id_order_return_state` int unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  `send_email_to_customer` tinyint unsigned NOT NULL DEFAULT '0',
  `send_email_to_superadmin` tinyint unsigned NOT NULL DEFAULT '0',
  `send_email_to_employee` tinyint unsigned NOT NULL DEFAULT '0',
  `send_email_to_hotelier` tinyint unsigned NOT NULL DEFAULT '0',
  `denied` tinyint unsigned NOT NULL DEFAULT '0',
  `refunded` tinyint unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_order_return_state` (`id_order_return_state`, `color`, `send_email_to_customer`, `send_email_to_superadmin`, `send_email_to_employee`, `send_email_to_hotelier`, `denied`, `refunded`, `module_name`) VALUES
(1,	'#4169E1',	1,	1,	1,	1,	0,	0,	''),
(2,	'#32CD32',	1,	1,	1,	1,	0,	0,	''),
(3,	'#DC143C',	1,	1,	1,	1,	1,	0,	''),
(4,	'#108510',	1,	1,	1,	1,	0,	1,	'');

DROP TABLE IF EXISTS `ps_order_return_state_lang`;
CREATE TABLE `ps_order_return_state_lang` (
  `id_order_return_state` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `customer_template` varchar(64) NOT NULL,
  `admin_template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_return_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_order_return_state_lang` (`id_order_return_state`, `id_lang`, `name`, `customer_template`, `admin_template`) VALUES
(1,	1,	'Waiting for confirmation',	'order_refund_waiting_customer',	'order_refund_waiting_admin'),
(1,	2,	'Waiting for confirmation',	'order_refund_waiting_customer',	'order_refund_waiting_admin'),
(2,	1,	'Request received',	'order_refund_received_customer',	'order_refund_received_admin'),
(2,	2,	'Request received',	'order_refund_received_customer',	'order_refund_received_admin'),
(3,	1,	'Refund denied',	'order_refund_denied_customer',	'order_refund_denied_admin'),
(3,	2,	'Refund denied',	'order_refund_denied_customer',	'order_refund_denied_admin'),
(4,	1,	'Refund completed',	'order_refund_completed_customer',	'order_refund_completed_admin'),
(4,	2,	'Refund completed',	'order_refund_completed_customer',	'order_refund_completed_admin');

DROP TABLE IF EXISTS `ps_order_slip`;
CREATE TABLE `ps_order_slip` (
  `id_order_slip` int unsigned NOT NULL AUTO_INCREMENT,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  `total_products_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_products_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_incl` decimal(20,6) DEFAULT NULL,
  `shipping_cost` tinyint unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `order_slip_type` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_slip_detail`;
CREATE TABLE `ps_order_slip_detail` (
  `id_order_slip` int unsigned NOT NULL,
  `id_order_detail` int unsigned NOT NULL,
  `id_htl_booking` int unsigned NOT NULL,
  `product_quantity` int unsigned NOT NULL DEFAULT '0',
  `unit_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `unit_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `amount_tax_excl` decimal(20,6) DEFAULT NULL,
  `amount_tax_incl` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`id_order_slip`,`id_htl_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_slip_detail_tax`;
CREATE TABLE `ps_order_slip_detail_tax` (
  `id_order_slip_detail` int unsigned NOT NULL,
  `id_tax` int unsigned NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  KEY `id_order_slip_detail` (`id_order_slip_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_order_state`;
CREATE TABLE `ps_order_state` (
  `id_order_state` int unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint unsigned DEFAULT '0',
  `send_email` tinyint unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint unsigned NOT NULL,
  `hidden` tinyint unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint unsigned NOT NULL DEFAULT '0',
  `shipped` tinyint unsigned NOT NULL DEFAULT '0',
  `paid` tinyint unsigned NOT NULL DEFAULT '0',
  `pdf_invoice` tinyint unsigned NOT NULL DEFAULT '0',
  `pdf_delivery` tinyint unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`),
  KEY `module_name` (`module_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_order_state` (`id_order_state`, `invoice`, `send_email`, `module_name`, `color`, `unremovable`, `hidden`, `logable`, `delivery`, `shipped`, `paid`, `pdf_invoice`, `pdf_delivery`, `deleted`) VALUES
(1,	0,	1,	'cheque',	'#4169E1',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(2,	1,	1,	'',	'#32CD32',	1,	0,	1,	0,	0,	1,	1,	0,	0),
(3,	1,	1,	'',	'#FF8C00',	1,	0,	1,	1,	0,	1,	0,	0,	0),
(4,	0,	1,	'',	'#DC143C',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(5,	1,	1,	'',	'#ec2e15',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(6,	0,	1,	'',	'#8f0621',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(7,	1,	1,	'',	'#FF69B4',	1,	0,	0,	0,	0,	1,	0,	0,	0),
(8,	0,	1,	'bankwire',	'#4169E1',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(9,	0,	0,	'',	'#4169E1',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(10,	1,	1,	'',	'#32CD32',	1,	0,	1,	0,	0,	1,	0,	0,	0),
(11,	0,	1,	'',	'#FF69B4',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(12,	0,	0,	'',	'#4169E1',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(13,	0,	0,	'',	'#4169E1',	1,	0,	0,	0,	0,	0,	0,	0,	0),
(14,	1,	0,	'',	'#9dffa9',	1,	0,	1,	0,	0,	0,	0,	0,	0),
(15,	1,	0,	'',	'#DDEEFF',	0,	0,	1,	0,	0,	0,	0,	0,	0),
(16,	1,	0,	'',	'#4169E1',	0,	0,	1,	0,	0,	0,	0,	0,	0),
(17,	0,	0,	'',	'#4169E1',	0,	0,	1,	0,	0,	0,	0,	0,	0);

DROP TABLE IF EXISTS `ps_order_state_lang`;
CREATE TABLE `ps_order_state_lang` (
  `id_order_state` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_order_state_lang` (`id_order_state`, `id_lang`, `name`, `template`) VALUES
(1,	1,	'Awaiting check payment',	'cheque'),
(1,	2,	'Čeká se na platbu šekem',	'cheque'),
(2,	1,	'Payment accepted',	'payment'),
(2,	2,	'Platba byla přijata',	'payment'),
(3,	1,	'Processing in progress',	'preparation'),
(3,	2,	'Probíhá příprava',	'preparation'),
(4,	1,	'Canceled',	'order_canceled'),
(4,	2,	'Zrušeno',	'order_canceled'),
(5,	1,	'Refunded',	'refund'),
(5,	2,	'Vracení produktů',	'refund'),
(6,	1,	'Payment error',	'payment_error'),
(6,	2,	'Chyba platby',	'payment_error'),
(7,	1,	'On backorder (paid)',	'outofstock'),
(7,	2,	'On backorder (paid)',	'outofstock'),
(8,	1,	'Awaiting bank wire payment',	'bankwire'),
(8,	2,	'Awaiting bank wire payment',	'bankwire'),
(9,	1,	'Awaiting PayPal payment',	''),
(9,	2,	'Awaiting PayPal payment',	''),
(10,	1,	'Remote payment accepted',	'payment'),
(10,	2,	'Remote payment accepted',	'payment'),
(11,	1,	'On backorder (not paid)',	'outofstock'),
(11,	2,	'On backorder (not paid)',	'outofstock'),
(12,	1,	'Awaiting remote payment',	''),
(12,	2,	'Awaiting remote payment',	''),
(13,	1,	'Awaiting partial payment',	''),
(13,	2,	'Awaiting partial payment',	''),
(14,	1,	'Partial payment accepted',	''),
(14,	2,	'Partial payment accepted',	''),
(15,	1,	'Authorization accepted from PayPal',	''),
(15,	2,	'Authorization accepted from PayPal',	''),
(16,	1,	'Authorization accepted from Braintree',	''),
(16,	2,	'Authorization accepted from Braintree',	''),
(17,	1,	'Awaiting for Braintree payment',	''),
(17,	2,	'Awaiting for Braintree payment',	'');

DROP TABLE IF EXISTS `ps_orders`;
CREATE TABLE `ps_orders` (
  `id_order` int unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_carrier` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_cart` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_address_delivery` int unsigned NOT NULL,
  `id_address_invoice` int unsigned NOT NULL,
  `current_state` int unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint unsigned NOT NULL DEFAULT '0',
  `gift` tinyint unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(64) DEFAULT NULL,
  `total_discounts` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_real` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `round_mode` tinyint(1) NOT NULL DEFAULT '2',
  `round_type` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_number` int unsigned NOT NULL DEFAULT '0',
  `delivery_number` int unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `valid` int unsigned NOT NULL DEFAULT '0',
  `is_advance_payment` tinyint(1) NOT NULL DEFAULT '0',
  `advance_paid_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `reference` (`reference`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `current_state` (`current_state`),
  KEY `id_shop` (`id_shop`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_pack`;
CREATE TABLE `ps_pack` (
  `id_product_pack` int unsigned NOT NULL,
  `id_product_item` int unsigned NOT NULL,
  `id_product_attribute_item` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`,`id_product_attribute_item`),
  KEY `product_item` (`id_product_item`,`id_product_attribute_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_page`;
CREATE TABLE `ps_page` (
  `id_page` int unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int unsigned NOT NULL,
  `id_object` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_page` (`id_page`, `id_page_type`, `id_object`) VALUES
(1,	1,	NULL),
(2,	2,	NULL),
(3,	3,	NULL),
(4,	4,	1),
(5,	5,	14),
(6,	6,	NULL),
(7,	7,	NULL),
(8,	8,	NULL),
(9,	4,	4),
(10,	9,	NULL),
(11,	10,	NULL),
(12,	11,	NULL),
(13,	12,	NULL),
(14,	13,	NULL),
(15,	14,	NULL),
(16,	15,	NULL),
(17,	4,	3),
(18,	4,	2),
(19,	16,	NULL),
(20,	17,	NULL),
(21,	5,	31),
(22,	5,	32),
(23,	5,	30),
(24,	5,	37),
(25,	18,	NULL),
(26,	19,	NULL),
(27,	20,	NULL),
(28,	4,	0),
(29,	21,	NULL),
(30,	22,	NULL);

DROP TABLE IF EXISTS `ps_page_type`;
CREATE TABLE `ps_page_type` (
  `id_page_type` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_page_type` (`id_page_type`, `name`) VALUES
(21,	''),
(18,	'address'),
(7,	'authentication'),
(5,	'category'),
(19,	'checkroomavailabilityajaxprocess'),
(6,	'cms'),
(16,	'contact'),
(22,	'default'),
(12,	'guesttracking'),
(11,	'history'),
(14,	'identity'),
(1,	'index'),
(10,	'myaccount'),
(3,	'orderconfirmation'),
(8,	'orderopc'),
(17,	'orderslip'),
(2,	'pagenotfound'),
(15,	'password'),
(13,	'payment'),
(4,	'product'),
(20,	'sitemap'),
(9,	'verification');

DROP TABLE IF EXISTS `ps_page_viewed`;
CREATE TABLE `ps_page_viewed` (
  `id_page` int unsigned NOT NULL,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_date_range` int unsigned NOT NULL,
  `counter` int unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_pagenotfound`;
CREATE TABLE `ps_pagenotfound` (
  `id_pagenotfound` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_paypal_braintree`;
CREATE TABLE `ps_paypal_braintree` (
  `id_paypal_braintree` int NOT NULL AUTO_INCREMENT,
  `id_cart` int NOT NULL,
  `nonce_payment_token` varchar(255) NOT NULL,
  `client_token` text NOT NULL,
  `transaction` varchar(255) DEFAULT NULL,
  `datas` varchar(255) DEFAULT NULL,
  `id_order` int DEFAULT NULL,
  PRIMARY KEY (`id_paypal_braintree`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_paypal_capture`;
CREATE TABLE `ps_paypal_capture` (
  `id_paypal_capture` int NOT NULL AUTO_INCREMENT,
  `id_order` int NOT NULL,
  `capture_amount` float NOT NULL,
  `result` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_paypal_capture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_paypal_customer`;
CREATE TABLE `ps_paypal_customer` (
  `id_paypal_customer` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int unsigned NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id_paypal_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_paypal_login_user`;
CREATE TABLE `ps_paypal_login_user` (
  `id_paypal_login_user` int NOT NULL AUTO_INCREMENT,
  `id_customer` int NOT NULL,
  `token_type` varchar(255) NOT NULL,
  `expires_in` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  `id_token` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `verified_account` varchar(255) NOT NULL,
  `zoneinfo` varchar(255) NOT NULL,
  `age_range` varchar(255) NOT NULL,
  PRIMARY KEY (`id_paypal_login_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_paypal_order`;
CREATE TABLE `ps_paypal_order` (
  `id_order` int unsigned NOT NULL,
  `id_transaction` varchar(255) NOT NULL,
  `id_invoice` varchar(255) DEFAULT NULL,
  `currency` varchar(10) NOT NULL,
  `total_paid` varchar(50) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `capture` int NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `payment_method` int unsigned NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_paypal_plus_pui`;
CREATE TABLE `ps_paypal_plus_pui` (
  `id_paypal_plus_pui` int NOT NULL AUTO_INCREMENT,
  `id_order` int NOT NULL,
  `pui_informations` text NOT NULL,
  PRIMARY KEY (`id_paypal_plus_pui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product`;
CREATE TABLE `ps_product` (
  `id_product` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int unsigned DEFAULT NULL,
  `id_manufacturer` int unsigned DEFAULT NULL,
  `id_category_default` int unsigned DEFAULT NULL,
  `id_shop_default` int unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int unsigned NOT NULL,
  `on_sale` tinyint unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int NOT NULL DEFAULT '0',
  `minimal_quantity` int unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint NOT NULL DEFAULT '0',
  `uploadable_files` tinyint NOT NULL DEFAULT '0',
  `text_fields` tinyint NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `pack_stock_type` int unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`,`id_product`),
  KEY `id_category_default` (`id_category_default`),
  KEY `indexed` (`indexed`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product` (`id_product`, `id_supplier`, `id_manufacturer`, `id_category_default`, `id_shop_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ean13`, `upc`, `ecotax`, `quantity`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `reference`, `supplier_reference`, `location`, `width`, `height`, `depth`, `weight`, `out_of_stock`, `quantity_discount`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_is_pack`, `cache_has_attachments`, `is_virtual`, `cache_default_attribute`, `date_add`, `date_upd`, `advanced_stock_management`, `pack_stock_type`) VALUES
(1,	0,	0,	2,	1,	5,	1,	0,	'',	'',	0.000000,	0,	1,	1000.000000,	0.000000,	'',	0.000000,	0.00,	'',	'',	'',	0.000000,	0.000000,	0.000000,	0.000000,	2,	0,	0,	0,	0,	1,	'404',	0,	1,	'0000-00-00',	'new',	1,	1,	'both',	0,	0,	1,	0,	'2021-05-04 13:11:34',	'2024-05-17 23:21:07',	0,	3),
(2,	0,	0,	2,	1,	2,	0,	0,	'',	'',	0.000000,	0,	1,	1500.000000,	0.000000,	'',	0.000000,	0.00,	'',	'',	'',	0.000000,	0.000000,	0.000000,	0.000000,	2,	0,	0,	0,	0,	1,	'404',	0,	1,	'0000-00-00',	'new',	1,	1,	'both',	0,	0,	1,	0,	'2021-05-04 13:11:35',	'2024-05-17 23:48:25',	0,	3),
(3,	0,	0,	2,	1,	5,	0,	0,	'',	'',	0.000000,	0,	1,	2000.000000,	0.000000,	'',	0.000000,	0.00,	'',	'',	'',	0.000000,	0.000000,	0.000000,	0.000000,	2,	0,	0,	0,	0,	1,	'404',	0,	1,	'0000-00-00',	'new',	1,	1,	'both',	0,	0,	1,	0,	'2021-05-04 13:11:37',	'2024-05-17 23:49:39',	0,	3),
(4,	0,	0,	2,	1,	5,	0,	0,	'',	'',	0.000000,	0,	1,	2500.000000,	0.000000,	'',	0.000000,	0.00,	'',	'',	'',	0.000000,	0.000000,	0.000000,	0.000000,	2,	0,	0,	0,	0,	1,	'404',	0,	1,	'0000-00-00',	'new',	1,	1,	'both',	0,	0,	1,	0,	'2021-05-04 13:11:38',	'2024-05-17 23:50:56',	0,	3);

DROP TABLE IF EXISTS `ps_product_attachment`;
CREATE TABLE `ps_product_attachment` (
  `id_product` int unsigned NOT NULL,
  `id_attachment` int unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_attribute`;
CREATE TABLE `ps_product_attribute` (
  `id_product_attribute` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint unsigned DEFAULT NULL,
  `minimal_quantity` int unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id_product_attribute`),
  UNIQUE KEY `product_default` (`id_product`,`default_on`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_attribute_combination`;
CREATE TABLE `ps_product_attribute_combination` (
  `id_attribute` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_attribute_image`;
CREATE TABLE `ps_product_attribute_image` (
  `id_product_attribute` int unsigned NOT NULL,
  `id_image` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_attribute_shop`;
CREATE TABLE `ps_product_attribute_shop` (
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint unsigned DEFAULT NULL,
  `minimal_quantity` int unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id_product_attribute`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`default_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_carrier`;
CREATE TABLE `ps_product_carrier` (
  `id_product` int unsigned NOT NULL,
  `id_carrier_reference` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_comment`;
CREATE TABLE `ps_product_comment` (
  `id_product_comment` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_guest` int unsigned DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `content` text NOT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  `grade` float unsigned NOT NULL,
  `validate` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_product_comment`),
  KEY `id_product` (`id_product`),
  KEY `id_customer` (`id_customer`),
  KEY `id_guest` (`id_guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_comment` (`id_product_comment`, `id_product`, `id_customer`, `id_guest`, `title`, `content`, `customer_name`, `grade`, `validate`, `deleted`, `date_add`) VALUES
(1,	1,	2,	0,	'Perfect place to stay',	'Just lovely',	'Robin Weiss',	4,	1,	0,	'2021-05-08 14:09:59'),
(3,	1,	0,	51,	'Never ever',	'Expensive and just not as good as I expected',	'Dorota Máchalová',	1,	1,	0,	'2021-05-08 14:12:25'),
(4,	2,	0,	51,	'Looking forward to get there again',	'I am in love with this place',	'Rytmus',	3,	1,	0,	'2021-05-08 14:13:47'),
(5,	3,	0,	51,	'No russian channels on TV',	'Nice place, but I missed Becherovka and Russian TV',	'Milos and Jirka',	2,	1,	0,	'2021-05-08 14:15:16'),
(6,	4,	0,	51,	'The best holiday of my life',	'Even though it was super expensive, I enjoyed every second of this stay',	'Maria Falter',	5,	1,	0,	'2021-05-08 14:17:08'),
(7,	2,	0,	281,	'xdhxdshn',	'sxfhnxfnxfn',	'xdfhnxf',	3,	0,	0,	'2021-05-22 08:59:48'),
(8,	4,	0,	281,	'srbhsr',	'sbhsbhs',	'sbhsrbhs',	3,	0,	0,	'2021-05-22 09:01:41'),
(9,	4,	8,	0,	'vsdfgsdg',	'gsgasg',	'Martina Buganova',	2,	0,	0,	'2021-05-22 09:11:23'),
(10,	3,	8,	0,	'gggggg',	'rrrrrrrrrrrrrrrrrrrrrrrrrrrtfgc',	'Martina Buganova',	3,	0,	0,	'2021-05-22 09:13:41'),
(11,	1,	0,	344,	'vydvy',	'vdavada',	'asfsa',	3,	0,	0,	'2021-05-22 09:23:29'),
(12,	1,	47,	0,	'John Doe',	'Never more!',	'Michal Dobias',	1,	0,	0,	'2021-05-22 12:51:13'),
(13,	1,	0,	2106,	'super',	'slo to ale strasne drahy',	'holena',	5,	0,	0,	'2021-05-22 18:03:08'),
(14,	1,	0,	2106,	'super',	'drahy',	'holena',	3,	0,	0,	'2021-05-22 18:10:37'),
(15,	2,	268,	0,	'xfujf',	'fjuxrfthjfxrtjhthdth',	'Wewe asws',	3,	0,	0,	'2021-05-22 18:51:52'),
(16,	1,	149,	0,	'Fox',	'Fox everywhere. It is funny',	'Holky Všechny',	3,	0,	0,	'2021-05-22 19:07:18'),
(17,	1,	0,	2144,	'Božena',	'Hele super',	'Božena',	3,	0,	0,	'2021-05-22 19:45:56'),
(18,	1,	0,	2713,	'Oh my god!',	'This is holy place...',	'Jesus Christ',	5,	0,	0,	'2021-05-23 13:03:02'),
(19,	1,	108,	0,	'Jelena Lesní',	'K zamyšlení!',	'Veronika Čermáková',	3,	0,	0,	'2021-05-25 12:27:59'),
(20,	3,	0,	251,	'Bla bla',	'Něco o tomto pokoji bych ráda napsala.',	'El',	5,	0,	0,	'2021-05-27 09:06:24'),
(21,	4,	357,	0,	'test',	'review',	'test test',	3,	0,	0,	'2021-06-02 16:51:57'),
(22,	4,	69,	0,	'Awesome',	'nice view',	'Karel Franta',	4,	0,	0,	'2021-06-02 19:45:51'),
(23,	3,	377,	0,	'Nic moc',	'Strašné. Ani se mi nepodařilo potvrdit objednávku. Třeba to bude zajímavé, ale jak to mám ověřit? ',	'Tupý Tupoun',	1,	0,	0,	'2021-11-15 23:11:03'),
(24,	3,	0,	4579,	'Výtečné',	'Ani se mi nechce věřit, jak toto ubytování bylo skvělé. Jen škoda, že nebylo dotažené do konce. ',	'František',	1,	0,	0,	'2021-11-15 23:13:01'),
(25,	3,	0,	4580,	'Perfektní',	'Perfektní služby. Hlavně jsem byl odvařen z podávaných sušenek. Jen škoda, že jich bylo tak moc, že se nedaly ani sníst a tak jsem se nedostal ani na konec krabice. Třeba na to ještě příjdu jak všechny sušenky spořádat a dostat se na dno krabice, kde na mě bude číhat nějaké překvapení. \r\n\r\nJeště, že mám MC, jinak bych si je nemohl dopřát.',	'Papež',	5,	0,	0,	'2021-11-15 23:17:03'),
(26,	4,	0,	4670,	'Test',	'TEst',	'Test',	3,	0,	0,	'2021-11-20 08:59:11'),
(27,	1,	406,	0,	'Pěkná recenze',	'Píšu recenzi',	'Barunka Havlová',	5,	0,	0,	'2021-11-20 16:31:06'),
(28,	2,	452,	0,	'Pisu',	'Píšu recenzi',	'Test Testovičan',	1,	0,	0,	'2021-11-20 16:43:23'),
(29,	3,	0,	5094,	'ne',	'ano',	'anone',	3,	0,	0,	'2021-11-20 16:44:50'),
(30,	4,	459,	0,	'stay',	'zťzrťzetet',	'rgtrgrt ',	5,	0,	0,	'2021-11-20 18:27:29'),
(31,	1,	488,	0,	'No guitar',	'There is guitear on room pictures but none was available after arrival, we had to sing Sweet home Alabama acapella :(',	'V M',	1,	0,	0,	'2021-11-27 18:44:54'),
(32,	2,	628,	0,	'Astonishing view',	'Really breathtaking place!',	'Zuzana Šrámková',	3,	0,	0,	'2022-05-28 13:36:24'),
(33,	4,	660,	0,	'test',	'test',	'Lucie Mičulková',	5,	0,	0,	'2022-05-28 16:10:00'),
(34,	3,	653,	0,	'ejekekeke',	'agananmashznjash',	'Franta Novák',	5,	0,	0,	'2022-05-28 16:21:16'),
(35,	1,	0,	11257,	'pěkné',	'velmi pěkný pokoj, dobré služby',	'Karel Nový',	3,	0,	0,	'2022-05-28 16:49:11'),
(36,	3,	0,	11220,	'Pěkné místo ale kruté',	'Byla tam kožka králíka a bylo mi z toho smutno',	'Eva',	3,	0,	0,	'2022-05-28 17:07:00'),
(37,	4,	619,	0,	'pokus',	'pokus',	'Slunečná Lady',	3,	0,	0,	'2022-05-28 17:07:52'),
(38,	3,	619,	0,	'nová revie',	'pokus',	'Slunečná Lady',	5,	0,	0,	'2022-05-28 17:09:29'),
(39,	3,	619,	0,	'gi',	'gu',	'Slunečná Lady',	3,	0,	0,	'2022-05-28 17:10:57'),
(40,	2,	0,	11309,	'franta',	'spalo se blbe ',	'omacka',	3,	0,	0,	'2022-05-28 18:26:34'),
(41,	1,	0,	11310,	'aa',	'\'aaa',	'aa',	3,	0,	0,	'2022-05-28 19:10:11'),
(42,	4,	0,	11684,	'Beautiful experience',	'Love this place!',	'Bella',	5,	0,	0,	'2022-06-03 17:30:03'),
(43,	4,	0,	15406,	'Nice stay',	'Everything was fine, but very expensive.',	'Zuzana',	3,	0,	0,	'2022-11-26 09:50:16'),
(44,	2,	737,	0,	'Pecka',	'Nic moc',	'Dali Nama',	1,	0,	0,	'2022-11-26 12:06:23'),
(45,	2,	737,	0,	'jdjdjdjd',	'Nic moc',	'Dali Nama',	5,	0,	0,	'2022-11-26 12:07:26'),
(46,	2,	0,	15411,	'Ahoj',	'Ahoj',	'Ahoj',	5,	0,	0,	'2022-11-26 12:14:15'),
(47,	2,	765,	0,	'scmnvbhjsdhdkj',	'sdjkbchjsdhfkdb vckjw',	'Taťka Ševčíková',	5,	0,	0,	'2022-11-26 14:07:27'),
(48,	1,	767,	0,	'd',	'g',	'Kateřina Bulová',	1,	0,	0,	'2022-11-26 16:29:30'),
(49,	1,	0,	15566,	'sda',	'dva',	'dsadsa',	1,	0,	0,	'2022-11-26 17:18:37'),
(50,	1,	0,	15807,	'znovu nikdy',	'děs běs',	'zlatý bludišták',	1,	0,	0,	'2022-11-26 17:19:05'),
(51,	1,	818,	0,	'nmfnsd',	',fmcdskc',	'Dcsd sdsd',	1,	0,	0,	'2022-11-26 17:19:26'),
(52,	3,	818,	0,	'dfrg',	'fdgdg',	'Dcsd sdsd',	3,	0,	0,	'2022-11-26 17:20:29'),
(53,	1,	832,	0,	'kkjhdjhjdsfjds',	'ksfhjjdsfjfshjdfj',	'Z b',	3,	0,	0,	'2022-11-26 17:53:24'),
(54,	3,	745,	0,	'Complete satisfaction',	'It was marvellous ! ',	'Martina Tesařová',	5,	0,	0,	'2022-11-26 18:33:59'),
(55,	1,	0,	16078,	'Heiress',	'I booked this lounge for my chihuahuas weding. They were very sattisfied:)',	'Paris Hilton',	5,	0,	0,	'2022-11-28 20:46:53'),
(56,	2,	0,	21779,	'Revju',	'10 of 9 hobbits suggest this accomodation',	'Sauron',	5,	0,	0,	'2023-06-03 09:00:32'),
(57,	1,	0,	21737,	'...',	'blbost',	'....',	1,	0,	0,	'2023-06-03 09:04:40'),
(58,	4,	0,	21750,	'okay',	'not bad',	'Tereza',	2,	0,	0,	'2023-06-03 10:18:00'),
(59,	1,	0,	21830,	'Mr',	'Very good',	'Me',	3,	0,	0,	'2023-06-03 10:45:23'),
(60,	1,	0,	21829,	'Test',	'Test text',	'Lorem Ipsum',	5,	0,	0,	'2023-06-03 11:48:52'),
(61,	2,	930,	0,	'Alert',	'ncadkjveiar',	'Veronika Růžičková',	3,	0,	0,	'2023-06-03 16:45:43'),
(62,	3,	0,	22189,	'Bbgcg',	'Tftfzfuvuvz',	'Masa',	2,	0,	0,	'2023-06-03 17:04:10'),
(63,	1,	892,	0,	'dgrfdg',	'dfgdfh',	'Markéta Lihotzká',	3,	0,	0,	'2023-06-03 17:05:41'),
(64,	3,	0,	22189,	'Halo',	'Jsjshsbsbsbsh',	'Marek',	2,	0,	0,	'2023-06-03 17:06:27'),
(65,	2,	0,	22310,	'asdasfsa',	'super truper',	'asdsadas',	5,	0,	0,	'2023-06-03 19:05:59');

DROP TABLE IF EXISTS `ps_product_comment_criterion`;
CREATE TABLE `ps_product_comment_criterion` (
  `id_product_comment_criterion` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product_comment_criterion_type` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_comment_criterion` (`id_product_comment_criterion`, `id_product_comment_criterion_type`, `active`) VALUES
(1,	1,	1);

DROP TABLE IF EXISTS `ps_product_comment_criterion_category`;
CREATE TABLE `ps_product_comment_criterion_category` (
  `id_product_comment_criterion` int unsigned NOT NULL,
  `id_category` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`,`id_category`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_comment_criterion_lang`;
CREATE TABLE `ps_product_comment_criterion_lang` (
  `id_product_comment_criterion` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_comment_criterion_lang` (`id_product_comment_criterion`, `id_lang`, `name`) VALUES
(1,	1,	'Quality'),
(1,	2,	'Quality');

DROP TABLE IF EXISTS `ps_product_comment_criterion_product`;
CREATE TABLE `ps_product_comment_criterion_product` (
  `id_product` int unsigned NOT NULL,
  `id_product_comment_criterion` int unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_product_comment_criterion`),
  KEY `id_product_comment_criterion` (`id_product_comment_criterion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_comment_grade`;
CREATE TABLE `ps_product_comment_grade` (
  `id_product_comment` int unsigned NOT NULL,
  `id_product_comment_criterion` int unsigned NOT NULL,
  `grade` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_product_comment_criterion`),
  KEY `id_product_comment_criterion` (`id_product_comment_criterion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_comment_grade` (`id_product_comment`, `id_product_comment_criterion`, `grade`) VALUES
(1,	1,	4),
(3,	1,	1),
(4,	1,	3),
(5,	1,	2),
(6,	1,	5),
(7,	1,	3),
(8,	1,	3),
(9,	1,	2),
(10,	1,	3),
(11,	1,	3),
(12,	1,	1),
(13,	1,	5),
(14,	1,	3),
(15,	1,	3),
(16,	1,	3),
(17,	1,	3),
(18,	1,	5),
(19,	1,	3),
(20,	1,	5),
(21,	1,	3),
(22,	1,	4),
(23,	1,	1),
(24,	1,	1),
(25,	1,	5),
(26,	1,	3),
(27,	1,	5),
(28,	1,	1),
(29,	1,	3),
(30,	1,	5),
(31,	1,	1),
(32,	1,	3),
(33,	1,	5),
(34,	1,	5),
(35,	1,	3),
(36,	1,	3),
(37,	1,	3),
(38,	1,	5),
(39,	1,	3),
(40,	1,	3),
(41,	1,	3),
(42,	1,	5),
(43,	1,	3),
(44,	1,	1),
(45,	1,	5),
(46,	1,	5),
(47,	1,	5),
(48,	1,	1),
(49,	1,	1),
(50,	1,	1),
(51,	1,	1),
(52,	1,	3),
(53,	1,	3),
(54,	1,	5),
(55,	1,	5),
(56,	1,	5),
(57,	1,	1),
(58,	1,	2),
(59,	1,	3),
(60,	1,	5),
(61,	1,	3),
(62,	1,	2),
(63,	1,	3),
(64,	1,	2),
(65,	1,	5);

DROP TABLE IF EXISTS `ps_product_comment_report`;
CREATE TABLE `ps_product_comment_report` (
  `id_product_comment` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_comment_report` (`id_product_comment`, `id_customer`) VALUES
(1,	108),
(1,	660),
(3,	10),
(3,	108),
(3,	625),
(4,	452),
(4,	488),
(4,	737),
(4,	988),
(5,	168),
(5,	767),
(6,	47),
(6,	69),
(6,	874),
(6,	1049);

DROP TABLE IF EXISTS `ps_product_comment_usefulness`;
CREATE TABLE `ps_product_comment_usefulness` (
  `id_product_comment` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `usefulness` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_comment_usefulness` (`id_product_comment`, `id_customer`, `usefulness`) VALUES
(1,	8,	1),
(1,	10,	1),
(1,	103,	1),
(1,	108,	0),
(1,	481,	1),
(1,	488,	1),
(1,	625,	0),
(1,	628,	1),
(1,	660,	1),
(1,	745,	0),
(1,	767,	0),
(3,	8,	1),
(3,	10,	0),
(3,	103,	0),
(3,	108,	1),
(3,	149,	1),
(3,	481,	1),
(3,	488,	1),
(3,	520,	1),
(3,	625,	1),
(3,	628,	0),
(3,	629,	1),
(3,	660,	1),
(3,	745,	0),
(3,	767,	1),
(3,	892,	1),
(3,	1044,	1),
(4,	16,	0),
(4,	20,	0),
(4,	47,	1),
(4,	95,	0),
(4,	108,	1),
(4,	239,	1),
(4,	268,	1),
(4,	452,	1),
(4,	478,	1),
(4,	488,	0),
(4,	491,	1),
(4,	628,	1),
(4,	660,	0),
(4,	687,	1),
(4,	737,	0),
(4,	812,	1),
(4,	901,	1),
(4,	988,	0),
(5,	69,	0),
(5,	168,	1),
(5,	377,	1),
(5,	478,	0),
(5,	619,	1),
(5,	745,	1),
(5,	767,	0),
(5,	786,	1),
(5,	878,	1),
(6,	47,	0),
(6,	52,	1),
(6,	69,	0),
(6,	94,	1),
(6,	152,	0),
(6,	423,	1),
(6,	478,	1),
(6,	767,	1),
(6,	786,	1),
(6,	874,	1),
(6,	1049,	0);

DROP TABLE IF EXISTS `ps_product_country_tax`;
CREATE TABLE `ps_product_country_tax` (
  `id_product` int NOT NULL,
  `id_country` int NOT NULL,
  `id_tax` int NOT NULL,
  PRIMARY KEY (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_download`;
CREATE TABLE `ps_product_download` (
  `id_product_download` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int unsigned DEFAULT NULL,
  `nb_downloadable` int unsigned DEFAULT '1',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_download`),
  UNIQUE KEY `id_product` (`id_product`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_group_reduction_cache`;
CREATE TABLE `ps_product_group_reduction_cache` (
  `id_product` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_lang`;
CREATE TABLE `ps_product_lang` (
  `id_product` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_lang` (`id_product`, `id_shop`, `id_lang`, `description`, `description_short`, `link_rewrite`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `available_now`, `available_later`) VALUES
(1,	1,	1,	'<p>Lovely and cosy budget cabin is here for you!</p>',	'<p>No money, but still want funny?</p>',	'super-delux-rooms',	'',	'',	'',	'Budget cabin',	'',	''),
(1,	1,	2,	'<p>Lovely and cosy budget cabin is here for you!</p>',	'<p>No money, but still want funny?</p>',	'super-delux-rooms',	'',	'',	'',	'Budget cabin',	'',	''),
(2,	1,	1,	'<p>Pay more, get less!</p>',	'<p>Just about same quality as budget cabin, but for more money...</p>',	'super-delux-rooms',	'',	'',	'',	'Deluxe apartments',	'',	''),
(2,	1,	2,	'<p>Pay more, get less!</p>',	'<p>Just about same quality as budget cabin, but for more money...</p>',	'super-delux-rooms',	'',	'',	'',	'Deluxe apartments',	'',	''),
(3,	1,	1,	'<p>Deers, foxes, rabbits and hobbitses...your precious place for peacefull mind.</p>',	'<p>Just you, nature and...our staff of course ;-)</p>',	'super-delux-rooms',	'',	'',	'',	'Full nature experience',	'',	''),
(3,	1,	2,	'<p>Deers, foxes, rabbits and hobbitses...your precious place for peacefull mind.</p>',	'<p>Just you, nature and...our staff of course ;-)</p>',	'super-delux-rooms',	'',	'',	'',	'Full nature experience',	'',	''),
(4,	1,	1,	'<p>Most expensive rooms are here for you...you won\'t enjoy it more for that money, but it looks better on your pictures!</p>',	'<p>Do you like to make your facebook friends jealous?</p>',	'super-delux-rooms',	'',	'',	'',	'Luxury in the woods',	'',	''),
(4,	1,	2,	'<p>Most expensive rooms are here for you...you won\'t enjoy it more for that money, but it looks better on your pictures</p>',	'<p>Do you like to make your facebook friends jealous?</p>',	'super-delux-rooms',	'',	'',	'',	'Luxury in the woods',	'',	'');

DROP TABLE IF EXISTS `ps_product_sale`;
CREATE TABLE `ps_product_sale` (
  `id_product` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `quantity` (`quantity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_sale` (`id_product`, `quantity`, `sale_nbr`, `date_upd`) VALUES
(1,	125,	3,	'2022-12-05'),
(2,	166,	2,	'2022-11-26'),
(3,	70,	2,	'2022-11-26'),
(4,	153,	3,	'2022-12-05');

DROP TABLE IF EXISTS `ps_product_shop`;
CREATE TABLE `ps_product_shop` (
  `id_product` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `id_category_default` int unsigned DEFAULT NULL,
  `id_tax_rules_group` int unsigned NOT NULL,
  `on_sale` tinyint unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint NOT NULL DEFAULT '0',
  `uploadable_files` tinyint NOT NULL DEFAULT '0',
  `text_fields` tinyint NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `pack_stock_type` int unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_product`,`id_shop`),
  KEY `id_category_default` (`id_category_default`),
  KEY `date_add` (`date_add`,`active`,`visibility`),
  KEY `indexed` (`indexed`,`active`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_product_shop` (`id_product`, `id_shop`, `id_category_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ecotax`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_default_attribute`, `advanced_stock_management`, `date_add`, `date_upd`, `pack_stock_type`) VALUES
(1,	1,	2,	5,	1,	0,	0.000000,	1,	1000.000000,	0.000000,	'',	0.000000,	0.00,	0,	0,	0,	1,	'404',	0,	1,	'0000-00-00',	'new',	1,	1,	'both',	0,	0,	'2021-05-04 13:11:34',	'2024-05-17 23:21:07',	3),
(2,	1,	2,	2,	0,	0,	0.000000,	1,	1500.000000,	0.000000,	'',	0.000000,	0.00,	0,	0,	0,	1,	'404',	0,	1,	'0000-00-00',	'new',	1,	1,	'both',	0,	0,	'2021-05-04 13:11:35',	'2024-05-17 23:48:25',	3),
(3,	1,	2,	5,	0,	0,	0.000000,	1,	2000.000000,	0.000000,	'',	0.000000,	0.00,	0,	0,	0,	1,	'404',	0,	1,	'0000-00-00',	'new',	1,	1,	'both',	0,	0,	'2021-05-04 13:11:37',	'2024-05-17 23:49:39',	3),
(4,	1,	2,	5,	0,	0,	0.000000,	1,	2500.000000,	0.000000,	'',	0.000000,	0.00,	0,	0,	0,	1,	'404',	0,	1,	'0000-00-00',	'new',	1,	1,	'both',	0,	0,	'2021-05-04 13:11:38',	'2024-05-17 23:50:56',	3);

DROP TABLE IF EXISTS `ps_product_supplier`;
CREATE TABLE `ps_product_supplier` (
  `id_product_supplier` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL DEFAULT '0',
  `id_supplier` int unsigned NOT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_supplier`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`),
  KEY `id_supplier` (`id_supplier`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_product_tag`;
CREATE TABLE `ps_product_tag` (
  `id_product` int unsigned NOT NULL,
  `id_tag` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`),
  KEY `id_lang` (`id_lang`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_profile`;
CREATE TABLE `ps_profile` (
  `id_profile` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_profile` (`id_profile`) VALUES
(1),
(2),
(3),
(4);

DROP TABLE IF EXISTS `ps_profile_lang`;
CREATE TABLE `ps_profile_lang` (
  `id_lang` int unsigned NOT NULL,
  `id_profile` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_profile_lang` (`id_lang`, `id_profile`, `name`) VALUES
(1,	1,	'SuperAdmin'),
(2,	1,	'SuperAdmin'),
(1,	2,	'Logistician'),
(2,	2,	'Logistician'),
(1,	3,	'Translator'),
(2,	3,	'Translator'),
(1,	4,	'Salesman'),
(2,	4,	'Salesman');

DROP TABLE IF EXISTS `ps_quick_access`;
CREATE TABLE `ps_quick_access` (
  `id_quick_access` int unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_quick_access` (`id_quick_access`, `new_window`, `link`) VALUES
(1,	0,	'index.php?controller=AdminProducts&addproduct'),
(2,	0,	'index.php?controller=AdminCartRules&addcart_rule');

DROP TABLE IF EXISTS `ps_quick_access_lang`;
CREATE TABLE `ps_quick_access_lang` (
  `id_quick_access` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_quick_access_lang` (`id_quick_access`, `id_lang`, `name`) VALUES
(1,	1,	'New product'),
(1,	2,	'Nový produkt'),
(2,	1,	'New voucher'),
(2,	2,	'Nový slevový kupón');

DROP TABLE IF EXISTS `ps_range_price`;
CREATE TABLE `ps_range_price` (
  `id_range_price` int unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_range_weight`;
CREATE TABLE `ps_range_weight` (
  `id_range_weight` int unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_referrer`;
CREATE TABLE `ps_referrer` (
  `id_referrer` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_referrer_cache`;
CREATE TABLE `ps_referrer_cache` (
  `id_connections_source` int unsigned NOT NULL,
  `id_referrer` int unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_referrer_shop`;
CREATE TABLE `ps_referrer_shop` (
  `id_referrer` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `cache_visitors` int DEFAULT NULL,
  `cache_visits` int DEFAULT NULL,
  `cache_pages` int DEFAULT NULL,
  `cache_registrations` int DEFAULT NULL,
  `cache_orders` int DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`id_referrer`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_request_sql`;
CREATE TABLE `ps_request_sql` (
  `id_request_sql` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id_request_sql`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_required_field`;
CREATE TABLE `ps_required_field` (
  `id_required_field` int NOT NULL AUTO_INCREMENT,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_required_field`),
  KEY `object_name` (`object_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_risk`;
CREATE TABLE `ps_risk` (
  `id_risk` int unsigned NOT NULL AUTO_INCREMENT,
  `percent` tinyint NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_risk` (`id_risk`, `percent`, `color`) VALUES
(1,	0,	'#32CD32'),
(2,	35,	'#FF8C00'),
(3,	75,	'#DC143C'),
(4,	100,	'#ec2e15');

DROP TABLE IF EXISTS `ps_risk_lang`;
CREATE TABLE `ps_risk_lang` (
  `id_risk` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_risk`,`id_lang`),
  KEY `id_risk` (`id_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_risk_lang` (`id_risk`, `id_lang`, `name`) VALUES
(1,	1,	'None'),
(1,	2,	'Žádné'),
(2,	1,	'Low'),
(2,	2,	'Nízká'),
(3,	1,	'Medium'),
(3,	2,	'Střední'),
(4,	1,	'High'),
(4,	2,	'Vysoká');

DROP TABLE IF EXISTS `ps_scene`;
CREATE TABLE `ps_scene` (
  `id_scene` int unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_scene_category`;
CREATE TABLE `ps_scene_category` (
  `id_scene` int unsigned NOT NULL,
  `id_category` int unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_scene_lang`;
CREATE TABLE `ps_scene_lang` (
  `id_scene` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_scene_products`;
CREATE TABLE `ps_scene_products` (
  `id_scene` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `x_axis` int NOT NULL,
  `y_axis` int NOT NULL,
  `zone_width` int NOT NULL,
  `zone_height` int NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_scene_shop`;
CREATE TABLE `ps_scene_shop` (
  `id_scene` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_search_engine`;
CREATE TABLE `ps_search_engine` (
  `id_search_engine` int unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_search_index`;
CREATE TABLE `ps_search_index` (
  `id_product` int unsigned NOT NULL,
  `id_word` int unsigned NOT NULL,
  `weight` smallint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`),
  KEY `id_product` (`id_product`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_search_word`;
CREATE TABLE `ps_search_word` (
  `id_word` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_sekeyword`;
CREATE TABLE `ps_sekeyword` (
  `id_sekeyword` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_shop`;
CREATE TABLE `ps_shop` (
  `id_shop` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `id_category` int unsigned NOT NULL DEFAULT '1',
  `id_theme` int unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`,`deleted`),
  KEY `id_category` (`id_category`),
  KEY `id_theme` (`id_theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_shop` (`id_shop`, `id_shop_group`, `name`, `id_category`, `id_theme`, `active`, `deleted`) VALUES
(1,	1,	'Czechitas DA Hackathon',	2,	1,	1,	0);

DROP TABLE IF EXISTS `ps_shop_group`;
CREATE TABLE `ps_shop_group` (
  `id_shop_group` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop_group`),
  KEY `deleted` (`deleted`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_shop_group` (`id_shop_group`, `name`, `share_customer`, `share_order`, `share_stock`, `active`, `deleted`) VALUES
(1,	'Default',	0,	0,	0,	1,	0);

DROP TABLE IF EXISTS `ps_shop_url`;
CREATE TABLE `ps_shop_url` (
  `id_shop_url` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop_url`),
  UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  KEY `id_shop` (`id_shop`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_shop_url` (`id_shop_url`, `id_shop`, `domain`, `domain_ssl`, `physical_uri`, `virtual_uri`, `main`, `active`) VALUES
(1,	1,	@SERVER_DOMAIN,	@SERVER_DOMAIN,	'/',	'',	1,	1);

DROP TABLE IF EXISTS `ps_smarty_cache`;
CREATE TABLE `ps_smarty_cache` (
  `id_smarty_cache` char(40) NOT NULL,
  `name` char(40) NOT NULL,
  `cache_id` varchar(254) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id_smarty_cache`),
  KEY `name` (`name`),
  KEY `cache_id` (`cache_id`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_smarty_last_flush`;
CREATE TABLE `ps_smarty_last_flush` (
  `type` enum('compile','template') NOT NULL,
  `last_flush` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_smarty_last_flush` (`type`, `last_flush`) VALUES
('compile',	'2022-11-22 14:11:47'),
('template',	'2024-05-18 21:27:58');

DROP TABLE IF EXISTS `ps_smarty_lazy_cache`;
CREATE TABLE `ps_smarty_lazy_cache` (
  `template_hash` varchar(32) NOT NULL DEFAULT '',
  `cache_id` varchar(255) NOT NULL DEFAULT '',
  `compile_id` varchar(32) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_hash`,`cache_id`,`compile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_specific_price`;
CREATE TABLE `ps_specific_price` (
  `id_specific_price` int unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int unsigned NOT NULL,
  `id_cart` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_country` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price`),
  UNIQUE KEY `id_product_2` (`id_product`,`id_product_attribute`,`id_customer`,`id_cart`,`from`,`to`,`id_shop`,`id_shop_group`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`id_specific_price_rule`),
  KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  KEY `from_quantity` (`from_quantity`),
  KEY `id_specific_price_rule` (`id_specific_price_rule`),
  KEY `id_cart` (`id_cart`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_shop` (`id_shop`),
  KEY `id_customer` (`id_customer`),
  KEY `from` (`from`),
  KEY `to` (`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_specific_price` (`id_specific_price`, `id_specific_price_rule`, `id_cart`, `id_product`, `id_shop`, `id_shop_group`, `id_currency`, `id_country`, `id_group`, `id_customer`, `id_product_attribute`, `price`, `from_quantity`, `reduction`, `reduction_tax`, `reduction_type`, `from`, `to`) VALUES
(1,	0,	0,	2,	0,	0,	0,	0,	3,	0,	0,	-1.000000,	1,	500.000000,	1,	'amount',	'2021-05-08 00:00:00',	'2021-11-25 00:00:00');

DROP TABLE IF EXISTS `ps_specific_price_priority`;
CREATE TABLE `ps_specific_price_priority` (
  `id_specific_price_priority` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `priority` varchar(80) NOT NULL,
  PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  UNIQUE KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_specific_price_priority` (`id_specific_price_priority`, `id_product`, `priority`) VALUES
(1,	1,	'id_shop;id_currency;id_country;id_group'),
(3,	2,	'id_shop;id_currency;id_country;id_group'),
(4,	3,	'id_shop;id_currency;id_country;id_group'),
(8,	4,	'id_shop;id_currency;id_country;id_group');

DROP TABLE IF EXISTS `ps_specific_price_rule`;
CREATE TABLE `ps_specific_price_rule` (
  `id_specific_price_rule` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_currency` int unsigned NOT NULL,
  `id_country` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  `from_quantity` mediumint unsigned NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price_rule`),
  KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_specific_price_rule_condition`;
CREATE TABLE `ps_specific_price_rule_condition` (
  `id_specific_price_rule_condition` int unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule_condition_group` int unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition`),
  KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_specific_price_rule_condition_group`;
CREATE TABLE `ps_specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int unsigned NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_state`;
CREATE TABLE `ps_state` (
  `id_state` int unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int unsigned NOT NULL,
  `id_zone` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `name` (`name`),
  KEY `id_zone` (`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_state` (`id_state`, `id_country`, `id_zone`, `name`, `iso_code`, `tax_behavior`, `active`) VALUES
(1,	21,	2,	'Alabama',	'AL',	0,	1),
(2,	21,	2,	'Alaska',	'AK',	0,	1),
(3,	21,	2,	'Arizona',	'AZ',	0,	1),
(4,	21,	2,	'Arkansas',	'AR',	0,	1),
(5,	21,	2,	'California',	'CA',	0,	1),
(6,	21,	2,	'Colorado',	'CO',	0,	1),
(7,	21,	2,	'Connecticut',	'CT',	0,	1),
(8,	21,	2,	'Delaware',	'DE',	0,	1),
(9,	21,	2,	'Florida',	'FL',	0,	1),
(10,	21,	2,	'Georgia',	'GA',	0,	1),
(11,	21,	2,	'Hawaii',	'HI',	0,	1),
(12,	21,	2,	'Idaho',	'ID',	0,	1),
(13,	21,	2,	'Illinois',	'IL',	0,	1),
(14,	21,	2,	'Indiana',	'IN',	0,	1),
(15,	21,	2,	'Iowa',	'IA',	0,	1),
(16,	21,	2,	'Kansas',	'KS',	0,	1),
(17,	21,	2,	'Kentucky',	'KY',	0,	1),
(18,	21,	2,	'Louisiana',	'LA',	0,	1),
(19,	21,	2,	'Maine',	'ME',	0,	1),
(20,	21,	2,	'Maryland',	'MD',	0,	1),
(21,	21,	2,	'Massachusetts',	'MA',	0,	1),
(22,	21,	2,	'Michigan',	'MI',	0,	1),
(23,	21,	2,	'Minnesota',	'MN',	0,	1),
(24,	21,	2,	'Mississippi',	'MS',	0,	1),
(25,	21,	2,	'Missouri',	'MO',	0,	1),
(26,	21,	2,	'Montana',	'MT',	0,	1),
(27,	21,	2,	'Nebraska',	'NE',	0,	1),
(28,	21,	2,	'Nevada',	'NV',	0,	1),
(29,	21,	2,	'New Hampshire',	'NH',	0,	1),
(30,	21,	2,	'New Jersey',	'NJ',	0,	1),
(31,	21,	2,	'New Mexico',	'NM',	0,	1),
(32,	21,	2,	'New York',	'NY',	0,	1),
(33,	21,	2,	'North Carolina',	'NC',	0,	1),
(34,	21,	2,	'North Dakota',	'ND',	0,	1),
(35,	21,	2,	'Ohio',	'OH',	0,	1),
(36,	21,	2,	'Oklahoma',	'OK',	0,	1),
(37,	21,	2,	'Oregon',	'OR',	0,	1),
(38,	21,	2,	'Pennsylvania',	'PA',	0,	1),
(39,	21,	2,	'Rhode Island',	'RI',	0,	1),
(40,	21,	2,	'South Carolina',	'SC',	0,	1),
(41,	21,	2,	'South Dakota',	'SD',	0,	1),
(42,	21,	2,	'Tennessee',	'TN',	0,	1),
(43,	21,	2,	'Texas',	'TX',	0,	1),
(44,	21,	2,	'Utah',	'UT',	0,	1),
(45,	21,	2,	'Vermont',	'VT',	0,	1),
(46,	21,	2,	'Virginia',	'VA',	0,	1),
(47,	21,	2,	'Washington',	'WA',	0,	1),
(48,	21,	2,	'West Virginia',	'WV',	0,	1),
(49,	21,	2,	'Wisconsin',	'WI',	0,	1),
(50,	21,	2,	'Wyoming',	'WY',	0,	1),
(51,	21,	2,	'Puerto Rico',	'PR',	0,	1),
(52,	21,	2,	'US Virgin Islands',	'VI',	0,	1),
(53,	21,	2,	'District of Columbia',	'DC',	0,	1),
(54,	145,	2,	'Aguascalientes',	'AGS',	0,	1),
(55,	145,	2,	'Baja California',	'BCN',	0,	1),
(56,	145,	2,	'Baja California Sur',	'BCS',	0,	1),
(57,	145,	2,	'Campeche',	'CAM',	0,	1),
(58,	145,	2,	'Chiapas',	'CHP',	0,	1),
(59,	145,	2,	'Chihuahua',	'CHH',	0,	1),
(60,	145,	2,	'Coahuila',	'COA',	0,	1),
(61,	145,	2,	'Colima',	'COL',	0,	1),
(62,	145,	2,	'Distrito Federal',	'DIF',	0,	1),
(63,	145,	2,	'Durango',	'DUR',	0,	1),
(64,	145,	2,	'Guanajuato',	'GUA',	0,	1),
(65,	145,	2,	'Guerrero',	'GRO',	0,	1),
(66,	145,	2,	'Hidalgo',	'HID',	0,	1),
(67,	145,	2,	'Jalisco',	'JAL',	0,	1),
(68,	145,	2,	'Estado de México',	'MEX',	0,	1),
(69,	145,	2,	'Michoacán',	'MIC',	0,	1),
(70,	145,	2,	'Morelos',	'MOR',	0,	1),
(71,	145,	2,	'Nayarit',	'NAY',	0,	1),
(72,	145,	2,	'Nuevo León',	'NLE',	0,	1),
(73,	145,	2,	'Oaxaca',	'OAX',	0,	1),
(74,	145,	2,	'Puebla',	'PUE',	0,	1),
(75,	145,	2,	'Querétaro',	'QUE',	0,	1),
(76,	145,	2,	'Quintana Roo',	'ROO',	0,	1),
(77,	145,	2,	'San Luis Potosí',	'SLP',	0,	1),
(78,	145,	2,	'Sinaloa',	'SIN',	0,	1),
(79,	145,	2,	'Sonora',	'SON',	0,	1),
(80,	145,	2,	'Tabasco',	'TAB',	0,	1),
(81,	145,	2,	'Tamaulipas',	'TAM',	0,	1),
(82,	145,	2,	'Tlaxcala',	'TLA',	0,	1),
(83,	145,	2,	'Veracruz',	'VER',	0,	1),
(84,	145,	2,	'Yucatán',	'YUC',	0,	1),
(85,	145,	2,	'Zacatecas',	'ZAC',	0,	1),
(86,	4,	2,	'Ontario',	'ON',	0,	1),
(87,	4,	2,	'Quebec',	'QC',	0,	1),
(88,	4,	2,	'British Columbia',	'BC',	0,	1),
(89,	4,	2,	'Alberta',	'AB',	0,	1),
(90,	4,	2,	'Manitoba',	'MB',	0,	1),
(91,	4,	2,	'Saskatchewan',	'SK',	0,	1),
(92,	4,	2,	'Nova Scotia',	'NS',	0,	1),
(93,	4,	2,	'New Brunswick',	'NB',	0,	1),
(94,	4,	2,	'Newfoundland and Labrador',	'NL',	0,	1),
(95,	4,	2,	'Prince Edward Island',	'PE',	0,	1),
(96,	4,	2,	'Northwest Territories',	'NT',	0,	1),
(97,	4,	2,	'Yukon',	'YT',	0,	1),
(98,	4,	2,	'Nunavut',	'NU',	0,	1),
(99,	44,	6,	'Buenos Aires',	'B',	0,	1),
(100,	44,	6,	'Catamarca',	'K',	0,	1),
(101,	44,	6,	'Chaco',	'H',	0,	1),
(102,	44,	6,	'Chubut',	'U',	0,	1),
(103,	44,	6,	'Ciudad de Buenos Aires',	'C',	0,	1),
(104,	44,	6,	'Córdoba',	'X',	0,	1),
(105,	44,	6,	'Corrientes',	'W',	0,	1),
(106,	44,	6,	'Entre Ríos',	'E',	0,	1),
(107,	44,	6,	'Formosa',	'P',	0,	1),
(108,	44,	6,	'Jujuy',	'Y',	0,	1),
(109,	44,	6,	'La Pampa',	'L',	0,	1),
(110,	44,	6,	'La Rioja',	'F',	0,	1),
(111,	44,	6,	'Mendoza',	'M',	0,	1),
(112,	44,	6,	'Misiones',	'N',	0,	1),
(113,	44,	6,	'Neuquén',	'Q',	0,	1),
(114,	44,	6,	'Río Negro',	'R',	0,	1),
(115,	44,	6,	'Salta',	'A',	0,	1),
(116,	44,	6,	'San Juan',	'J',	0,	1),
(117,	44,	6,	'San Luis',	'D',	0,	1),
(118,	44,	6,	'Santa Cruz',	'Z',	0,	1),
(119,	44,	6,	'Santa Fe',	'S',	0,	1),
(120,	44,	6,	'Santiago del Estero',	'G',	0,	1),
(121,	44,	6,	'Tierra del Fuego',	'V',	0,	1),
(122,	44,	6,	'Tucumán',	'T',	0,	1),
(123,	10,	1,	'Agrigento',	'AG',	0,	1),
(124,	10,	1,	'Alessandria',	'AL',	0,	1),
(125,	10,	1,	'Ancona',	'AN',	0,	1),
(126,	10,	1,	'Aosta',	'AO',	0,	1),
(127,	10,	1,	'Arezzo',	'AR',	0,	1),
(128,	10,	1,	'Ascoli Piceno',	'AP',	0,	1),
(129,	10,	1,	'Asti',	'AT',	0,	1),
(130,	10,	1,	'Avellino',	'AV',	0,	1),
(131,	10,	1,	'Bari',	'BA',	0,	1),
(132,	10,	1,	'Barletta-Andria-Trani',	'BT',	0,	1),
(133,	10,	1,	'Belluno',	'BL',	0,	1),
(134,	10,	1,	'Benevento',	'BN',	0,	1),
(135,	10,	1,	'Bergamo',	'BG',	0,	1),
(136,	10,	1,	'Biella',	'BI',	0,	1),
(137,	10,	1,	'Bologna',	'BO',	0,	1),
(138,	10,	1,	'Bolzano',	'BZ',	0,	1),
(139,	10,	1,	'Brescia',	'BS',	0,	1),
(140,	10,	1,	'Brindisi',	'BR',	0,	1),
(141,	10,	1,	'Cagliari',	'CA',	0,	1),
(142,	10,	1,	'Caltanissetta',	'CL',	0,	1),
(143,	10,	1,	'Campobasso',	'CB',	0,	1),
(144,	10,	1,	'Carbonia-Iglesias',	'CI',	0,	1),
(145,	10,	1,	'Caserta',	'CE',	0,	1),
(146,	10,	1,	'Catania',	'CT',	0,	1),
(147,	10,	1,	'Catanzaro',	'CZ',	0,	1),
(148,	10,	1,	'Chieti',	'CH',	0,	1),
(149,	10,	1,	'Como',	'CO',	0,	1),
(150,	10,	1,	'Cosenza',	'CS',	0,	1),
(151,	10,	1,	'Cremona',	'CR',	0,	1),
(152,	10,	1,	'Crotone',	'KR',	0,	1),
(153,	10,	1,	'Cuneo',	'CN',	0,	1),
(154,	10,	1,	'Enna',	'EN',	0,	1),
(155,	10,	1,	'Fermo',	'FM',	0,	1),
(156,	10,	1,	'Ferrara',	'FE',	0,	1),
(157,	10,	1,	'Firenze',	'FI',	0,	1),
(158,	10,	1,	'Foggia',	'FG',	0,	1),
(159,	10,	1,	'Forlì-Cesena',	'FC',	0,	1),
(160,	10,	1,	'Frosinone',	'FR',	0,	1),
(161,	10,	1,	'Genova',	'GE',	0,	1),
(162,	10,	1,	'Gorizia',	'GO',	0,	1),
(163,	10,	1,	'Grosseto',	'GR',	0,	1),
(164,	10,	1,	'Imperia',	'IM',	0,	1),
(165,	10,	1,	'Isernia',	'IS',	0,	1),
(166,	10,	1,	'L\'Aquila',	'AQ',	0,	1),
(167,	10,	1,	'La Spezia',	'SP',	0,	1),
(168,	10,	1,	'Latina',	'LT',	0,	1),
(169,	10,	1,	'Lecce',	'LE',	0,	1),
(170,	10,	1,	'Lecco',	'LC',	0,	1),
(171,	10,	1,	'Livorno',	'LI',	0,	1),
(172,	10,	1,	'Lodi',	'LO',	0,	1),
(173,	10,	1,	'Lucca',	'LU',	0,	1),
(174,	10,	1,	'Macerata',	'MC',	0,	1),
(175,	10,	1,	'Mantova',	'MN',	0,	1),
(176,	10,	1,	'Massa',	'MS',	0,	1),
(177,	10,	1,	'Matera',	'MT',	0,	1),
(178,	10,	1,	'Medio Campidano',	'VS',	0,	1),
(179,	10,	1,	'Messina',	'ME',	0,	1),
(180,	10,	1,	'Milano',	'MI',	0,	1),
(181,	10,	1,	'Modena',	'MO',	0,	1),
(182,	10,	1,	'Monza e della Brianza',	'MB',	0,	1),
(183,	10,	1,	'Napoli',	'NA',	0,	1),
(184,	10,	1,	'Novara',	'NO',	0,	1),
(185,	10,	1,	'Nuoro',	'NU',	0,	1),
(186,	10,	1,	'Ogliastra',	'OG',	0,	1),
(187,	10,	1,	'Olbia-Tempio',	'OT',	0,	1),
(188,	10,	1,	'Oristano',	'OR',	0,	1),
(189,	10,	1,	'Padova',	'PD',	0,	1),
(190,	10,	1,	'Palermo',	'PA',	0,	1),
(191,	10,	1,	'Parma',	'PR',	0,	1),
(192,	10,	1,	'Pavia',	'PV',	0,	1),
(193,	10,	1,	'Perugia',	'PG',	0,	1),
(194,	10,	1,	'Pesaro-Urbino',	'PU',	0,	1),
(195,	10,	1,	'Pescara',	'PE',	0,	1),
(196,	10,	1,	'Piacenza',	'PC',	0,	1),
(197,	10,	1,	'Pisa',	'PI',	0,	1),
(198,	10,	1,	'Pistoia',	'PT',	0,	1),
(199,	10,	1,	'Pordenone',	'PN',	0,	1),
(200,	10,	1,	'Potenza',	'PZ',	0,	1),
(201,	10,	1,	'Prato',	'PO',	0,	1),
(202,	10,	1,	'Ragusa',	'RG',	0,	1),
(203,	10,	1,	'Ravenna',	'RA',	0,	1),
(204,	10,	1,	'Reggio Calabria',	'RC',	0,	1),
(205,	10,	1,	'Reggio Emilia',	'RE',	0,	1),
(206,	10,	1,	'Rieti',	'RI',	0,	1),
(207,	10,	1,	'Rimini',	'RN',	0,	1),
(208,	10,	1,	'Roma',	'RM',	0,	1),
(209,	10,	1,	'Rovigo',	'RO',	0,	1),
(210,	10,	1,	'Salerno',	'SA',	0,	1),
(211,	10,	1,	'Sassari',	'SS',	0,	1),
(212,	10,	1,	'Savona',	'SV',	0,	1),
(213,	10,	1,	'Siena',	'SI',	0,	1),
(214,	10,	1,	'Siracusa',	'SR',	0,	1),
(215,	10,	1,	'Sondrio',	'SO',	0,	1),
(216,	10,	1,	'Taranto',	'TA',	0,	1),
(217,	10,	1,	'Teramo',	'TE',	0,	1),
(218,	10,	1,	'Terni',	'TR',	0,	1),
(219,	10,	1,	'Torino',	'TO',	0,	1),
(220,	10,	1,	'Trapani',	'TP',	0,	1),
(221,	10,	1,	'Trento',	'TN',	0,	1),
(222,	10,	1,	'Treviso',	'TV',	0,	1),
(223,	10,	1,	'Trieste',	'TS',	0,	1),
(224,	10,	1,	'Udine',	'UD',	0,	1),
(225,	10,	1,	'Varese',	'VA',	0,	1),
(226,	10,	1,	'Venezia',	'VE',	0,	1),
(227,	10,	1,	'Verbano-Cusio-Ossola',	'VB',	0,	1),
(228,	10,	1,	'Vercelli',	'VC',	0,	1),
(229,	10,	1,	'Verona',	'VR',	0,	1),
(230,	10,	1,	'Vibo Valentia',	'VV',	0,	1),
(231,	10,	1,	'Vicenza',	'VI',	0,	1),
(232,	10,	1,	'Viterbo',	'VT',	0,	1),
(233,	111,	3,	'Aceh',	'AC',	0,	1),
(234,	111,	3,	'Bali',	'BA',	0,	1),
(235,	111,	3,	'Bangka',	'BB',	0,	1),
(236,	111,	3,	'Banten',	'BT',	0,	1),
(237,	111,	3,	'Bengkulu',	'BE',	0,	1),
(238,	111,	3,	'Central Java',	'JT',	0,	1),
(239,	111,	3,	'Central Kalimantan',	'KT',	0,	1),
(240,	111,	3,	'Central Sulawesi',	'ST',	0,	1),
(241,	111,	3,	'Coat of arms of East Java',	'JI',	0,	1),
(242,	111,	3,	'East kalimantan',	'KI',	0,	1),
(243,	111,	3,	'East Nusa Tenggara',	'NT',	0,	1),
(244,	111,	3,	'Lambang propinsi',	'GO',	0,	1),
(245,	111,	3,	'Jakarta',	'JK',	0,	1),
(246,	111,	3,	'Jambi',	'JA',	0,	1),
(247,	111,	3,	'Lampung',	'LA',	0,	1),
(248,	111,	3,	'Maluku',	'MA',	0,	1),
(249,	111,	3,	'North Maluku',	'MU',	0,	1),
(250,	111,	3,	'North Sulawesi',	'SA',	0,	1),
(251,	111,	3,	'North Sumatra',	'SU',	0,	1),
(252,	111,	3,	'Papua',	'PA',	0,	1),
(253,	111,	3,	'Riau',	'RI',	0,	1),
(254,	111,	3,	'Lambang Riau',	'KR',	0,	1),
(255,	111,	3,	'Southeast Sulawesi',	'SG',	0,	1),
(256,	111,	3,	'South Kalimantan',	'KS',	0,	1),
(257,	111,	3,	'South Sulawesi',	'SN',	0,	1),
(258,	111,	3,	'South Sumatra',	'SS',	0,	1),
(259,	111,	3,	'West Java',	'JB',	0,	1),
(260,	111,	3,	'West Kalimantan',	'KB',	0,	1),
(261,	111,	3,	'West Nusa Tenggara',	'NB',	0,	1),
(262,	111,	3,	'Lambang Provinsi Papua Barat',	'PB',	0,	1),
(263,	111,	3,	'West Sulawesi',	'SR',	0,	1),
(264,	111,	3,	'West Sumatra',	'SB',	0,	1),
(265,	111,	3,	'Yogyakarta',	'YO',	0,	1),
(266,	11,	3,	'Aichi',	'23',	0,	1),
(267,	11,	3,	'Akita',	'05',	0,	1),
(268,	11,	3,	'Aomori',	'02',	0,	1),
(269,	11,	3,	'Chiba',	'12',	0,	1),
(270,	11,	3,	'Ehime',	'38',	0,	1),
(271,	11,	3,	'Fukui',	'18',	0,	1),
(272,	11,	3,	'Fukuoka',	'40',	0,	1),
(273,	11,	3,	'Fukushima',	'07',	0,	1),
(274,	11,	3,	'Gifu',	'21',	0,	1),
(275,	11,	3,	'Gunma',	'10',	0,	1),
(276,	11,	3,	'Hiroshima',	'34',	0,	1),
(277,	11,	3,	'Hokkaido',	'01',	0,	1),
(278,	11,	3,	'Hyogo',	'28',	0,	1),
(279,	11,	3,	'Ibaraki',	'08',	0,	1),
(280,	11,	3,	'Ishikawa',	'17',	0,	1),
(281,	11,	3,	'Iwate',	'03',	0,	1),
(282,	11,	3,	'Kagawa',	'37',	0,	1),
(283,	11,	3,	'Kagoshima',	'46',	0,	1),
(284,	11,	3,	'Kanagawa',	'14',	0,	1),
(285,	11,	3,	'Kochi',	'39',	0,	1),
(286,	11,	3,	'Kumamoto',	'43',	0,	1),
(287,	11,	3,	'Kyoto',	'26',	0,	1),
(288,	11,	3,	'Mie',	'24',	0,	1),
(289,	11,	3,	'Miyagi',	'04',	0,	1),
(290,	11,	3,	'Miyazaki',	'45',	0,	1),
(291,	11,	3,	'Nagano',	'20',	0,	1),
(292,	11,	3,	'Nagasaki',	'42',	0,	1),
(293,	11,	3,	'Nara',	'29',	0,	1),
(294,	11,	3,	'Niigata',	'15',	0,	1),
(295,	11,	3,	'Oita',	'44',	0,	1),
(296,	11,	3,	'Okayama',	'33',	0,	1),
(297,	11,	3,	'Okinawa',	'47',	0,	1),
(298,	11,	3,	'Osaka',	'27',	0,	1),
(299,	11,	3,	'Saga',	'41',	0,	1),
(300,	11,	3,	'Saitama',	'11',	0,	1),
(301,	11,	3,	'Shiga',	'25',	0,	1),
(302,	11,	3,	'Shimane',	'32',	0,	1),
(303,	11,	3,	'Shizuoka',	'22',	0,	1),
(304,	11,	3,	'Tochigi',	'09',	0,	1),
(305,	11,	3,	'Tokushima',	'36',	0,	1),
(306,	11,	3,	'Tokyo',	'13',	0,	1),
(307,	11,	3,	'Tottori',	'31',	0,	1),
(308,	11,	3,	'Toyama',	'16',	0,	1),
(309,	11,	3,	'Wakayama',	'30',	0,	1),
(310,	11,	3,	'Yamagata',	'06',	0,	1),
(311,	11,	3,	'Yamaguchi',	'35',	0,	1),
(312,	11,	3,	'Yamanashi',	'19',	0,	1);

DROP TABLE IF EXISTS `ps_stock`;
CREATE TABLE `ps_stock` (
  `id_stock` int unsigned NOT NULL AUTO_INCREMENT,
  `id_warehouse` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int unsigned NOT NULL,
  `usable_quantity` int unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_stock`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_stock_available`;
CREATE TABLE `ps_stock_available` (
  `id_stock_available` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `id_shop_group` int unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_available`),
  UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_stock_available` (`id_stock_available`, `id_product`, `id_product_attribute`, `id_shop`, `id_shop_group`, `quantity`, `depends_on_stock`, `out_of_stock`) VALUES
(1,	1,	0,	1,	0,	999999999,	0,	1),
(2,	2,	0,	1,	0,	999999999,	0,	1),
(3,	3,	0,	1,	0,	999999999,	0,	1),
(4,	4,	0,	1,	0,	999999999,	0,	1);

DROP TABLE IF EXISTS `ps_stock_mvt`;
CREATE TABLE `ps_stock_mvt` (
  `id_stock_mvt` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_stock` int unsigned NOT NULL,
  `id_order` int unsigned DEFAULT NULL,
  `id_supply_order` int unsigned DEFAULT NULL,
  `id_stock_mvt_reason` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `physical_quantity` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_stock_mvt`),
  KEY `id_stock` (`id_stock`),
  KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_stock_mvt_reason`;
CREATE TABLE `ps_stock_mvt_reason` (
  `id_stock_mvt_reason` int unsigned NOT NULL AUTO_INCREMENT,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_mvt_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_stock_mvt_reason` (`id_stock_mvt_reason`, `sign`, `date_add`, `date_upd`, `deleted`) VALUES
(1,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0),
(2,	-1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0),
(3,	-1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0),
(4,	-1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0),
(5,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0),
(6,	-1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0),
(7,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0),
(8,	1,	'2021-05-04 13:11:29',	'2021-05-04 13:11:29',	0);

DROP TABLE IF EXISTS `ps_stock_mvt_reason_lang`;
CREATE TABLE `ps_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_stock_mvt_reason_lang` (`id_stock_mvt_reason`, `id_lang`, `name`) VALUES
(1,	1,	'Increase'),
(1,	2,	'Zvýšení'),
(2,	1,	'Decrease'),
(2,	2,	'Snížení'),
(3,	1,	'Customer Order'),
(3,	2,	'Customer Order'),
(4,	1,	'Regulation following an inventory of stock'),
(4,	2,	'Regulation following an inventory of stock'),
(5,	1,	'Regulation following an inventory of stock'),
(5,	2,	'Regulation following an inventory of stock'),
(6,	1,	'Transfer to another warehouse'),
(6,	2,	'Transfer to another warehouse'),
(7,	1,	'Transfer from another warehouse'),
(7,	2,	'Transfer from another warehouse'),
(8,	1,	'Supply Order'),
(8,	2,	'Objednávky dodavatelům');

DROP TABLE IF EXISTS `ps_store`;
CREATE TABLE `ps_store` (
  `id_store` int unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int unsigned NOT NULL,
  `id_state` int unsigned DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_store_shop`;
CREATE TABLE `ps_store_shop` (
  `id_store` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_store`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_supplier`;
CREATE TABLE `ps_supplier` (
  `id_supplier` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_supplier_lang`;
CREATE TABLE `ps_supplier_lang` (
  `id_supplier` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_supplier_shop`;
CREATE TABLE `ps_supplier_shop` (
  `id_supplier` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_supplier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_supply_order`;
CREATE TABLE `ps_supply_order` (
  `id_supply_order` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int unsigned NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_warehouse` int unsigned NOT NULL,
  `id_supply_order_state` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_ref_currency` int unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_supply_order`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_supply_order_detail`;
CREATE TABLE `ps_supply_order_detail` (
  `id_supply_order_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `supplier_reference` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int unsigned NOT NULL,
  `quantity_received` int unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_supply_order_detail`),
  KEY `id_supply_order` (`id_supply_order`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_supply_order_history`;
CREATE TABLE `ps_supply_order_history` (
  `id_supply_order_history` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_state` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_history`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_supply_order_receipt_history`;
CREATE TABLE `ps_supply_order_receipt_history` (
  `id_supply_order_receipt_history` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order_detail` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_supply_order_state` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_receipt_history`),
  KEY `id_supply_order_detail` (`id_supply_order_detail`),
  KEY `id_supply_order_state` (`id_supply_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_supply_order_state`;
CREATE TABLE `ps_supply_order_state` (
  `id_supply_order_state` int unsigned NOT NULL AUTO_INCREMENT,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_supply_order_state` (`id_supply_order_state`, `delivery_note`, `editable`, `receipt_state`, `pending_receipt`, `enclosed`, `color`) VALUES
(1,	0,	1,	0,	0,	0,	'#faab00'),
(2,	1,	0,	0,	0,	0,	'#273cff'),
(3,	0,	0,	0,	1,	0,	'#ff37f5'),
(4,	0,	0,	1,	1,	0,	'#ff3e33'),
(5,	0,	0,	1,	0,	1,	'#00d60c'),
(6,	0,	0,	0,	0,	1,	'#666666');

DROP TABLE IF EXISTS `ps_supply_order_state_lang`;
CREATE TABLE `ps_supply_order_state_lang` (
  `id_supply_order_state` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_supply_order_state_lang` (`id_supply_order_state`, `id_lang`, `name`) VALUES
(1,	1,	'1 - Creation in progress'),
(1,	2,	'1 - Creation in progress'),
(2,	1,	'2 - Order validated'),
(2,	2,	'2 - Order validated'),
(3,	1,	'3 - Pending receipt'),
(3,	2,	'3 - Pending receipt'),
(4,	1,	'4 - Order received in part'),
(4,	2,	'4 - Order received in part'),
(5,	1,	'5 - Order received completely'),
(5,	2,	'5 - Order received completely'),
(6,	1,	'6 - Order canceled'),
(6,	2,	'6 - Order canceled');

DROP TABLE IF EXISTS `ps_tab`;
CREATE TABLE `ps_tab` (
  `id_tab` int unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hide_host_mode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_tab` (`id_tab`, `id_parent`, `class_name`, `module`, `position`, `active`, `hide_host_mode`) VALUES
(1,	0,	'AdminDashboard',	NULL,	0,	1,	0),
(2,	-1,	'AdminCms',	NULL,	0,	1,	0),
(3,	-1,	'AdminCmsCategories',	NULL,	1,	1,	0),
(4,	-1,	'AdminSearch',	NULL,	2,	1,	0),
(5,	-1,	'AdminLogin',	NULL,	3,	1,	0),
(6,	-1,	'AdminShop',	NULL,	4,	1,	0),
(7,	-1,	'AdminShopUrl',	NULL,	5,	1,	0),
(8,	0,	'AdminCatalog',	NULL,	1,	1,	0),
(9,	0,	'AdminParentOrders',	NULL,	2,	1,	0),
(10,	0,	'AdminParentCustomer',	NULL,	3,	1,	0),
(11,	0,	'AdminPriceRule',	NULL,	4,	1,	0),
(12,	0,	'AdminParentModules',	NULL,	6,	1,	0),
(13,	0,	'AdminParentLocalization',	NULL,	7,	1,	0),
(14,	0,	'AdminParentPreferences',	NULL,	8,	1,	0),
(15,	0,	'AdminTools',	NULL,	9,	1,	0),
(16,	0,	'AdminAdmin',	NULL,	10,	1,	0),
(17,	0,	'AdminParentStats',	NULL,	11,	1,	0),
(18,	0,	'AdminStock',	NULL,	12,	1,	0),
(19,	8,	'AdminProducts',	NULL,	0,	1,	0),
(20,	8,	'AdminFeatures',	NULL,	1,	1,	0),
(21,	8,	'AdminTags',	NULL,	2,	1,	0),
(22,	9,	'AdminOrders',	NULL,	0,	1,	0),
(23,	9,	'AdminInvoices',	NULL,	1,	1,	0),
(24,	9,	'AdminSlip',	NULL,	2,	1,	0),
(25,	9,	'AdminStatuses',	NULL,	3,	1,	0),
(26,	9,	'AdminOrderMessage',	NULL,	4,	1,	0),
(27,	10,	'AdminCustomers',	NULL,	0,	1,	0),
(28,	10,	'AdminAddresses',	NULL,	1,	1,	0),
(29,	10,	'AdminGroups',	NULL,	2,	1,	0),
(30,	10,	'AdminCarts',	NULL,	3,	1,	0),
(31,	10,	'AdminCustomerThreads',	NULL,	4,	1,	0),
(32,	10,	'AdminContacts',	NULL,	5,	1,	0),
(33,	10,	'AdminGenders',	NULL,	6,	1,	0),
(34,	10,	'AdminOutstanding',	'',	7,	0,	0),
(35,	11,	'AdminCartRules',	NULL,	0,	1,	0),
(36,	11,	'AdminSpecificPriceRule',	NULL,	1,	1,	0),
(37,	13,	'AdminLocalization',	NULL,	0,	1,	0),
(38,	13,	'AdminLanguages',	NULL,	1,	1,	0),
(39,	13,	'AdminZones',	NULL,	2,	1,	0),
(40,	13,	'AdminCountries',	NULL,	3,	1,	0),
(41,	13,	'AdminStates',	NULL,	4,	1,	0),
(42,	13,	'AdminCurrencies',	NULL,	5,	1,	0),
(43,	13,	'AdminTaxes',	NULL,	6,	1,	0),
(44,	13,	'AdminTaxRulesGroup',	NULL,	7,	1,	0),
(45,	13,	'AdminTranslations',	NULL,	8,	1,	0),
(46,	12,	'AdminModules',	NULL,	0,	1,	0),
(47,	12,	'AdminModulesPositions',	NULL,	1,	1,	0),
(48,	12,	'AdminPayment',	NULL,	2,	1,	0),
(49,	14,	'AdminPreferences',	NULL,	0,	1,	0),
(50,	14,	'AdminOrderPreferences',	NULL,	1,	1,	0),
(51,	14,	'AdminPPreferences',	NULL,	2,	1,	0),
(52,	14,	'AdminCustomerPreferences',	NULL,	3,	1,	0),
(53,	14,	'AdminThemes',	NULL,	4,	1,	0),
(54,	14,	'AdminMeta',	NULL,	5,	1,	0),
(55,	14,	'AdminCmsContent',	NULL,	6,	1,	0),
(56,	14,	'AdminImages',	NULL,	7,	1,	0),
(57,	14,	'AdminStores',	NULL,	8,	1,	0),
(58,	14,	'AdminSearchConf',	NULL,	9,	1,	0),
(59,	14,	'AdminMaintenance',	NULL,	10,	1,	0),
(60,	14,	'AdminGeolocation',	NULL,	11,	1,	0),
(61,	15,	'AdminInformation',	NULL,	0,	1,	0),
(62,	15,	'AdminPerformance',	NULL,	1,	1,	0),
(63,	15,	'AdminEmails',	NULL,	2,	1,	0),
(64,	15,	'AdminShopGroup',	NULL,	3,	0,	0),
(65,	15,	'AdminImport',	NULL,	4,	1,	0),
(66,	15,	'AdminBackup',	NULL,	5,	1,	0),
(67,	15,	'AdminRequestSql',	NULL,	6,	1,	0),
(68,	15,	'AdminLogs',	NULL,	7,	1,	0),
(69,	15,	'AdminWebservice',	NULL,	8,	1,	0),
(70,	16,	'AdminAdminPreferences',	NULL,	0,	1,	0),
(71,	16,	'AdminQuickAccesses',	NULL,	1,	1,	0),
(72,	16,	'AdminEmployees',	NULL,	2,	1,	0),
(73,	16,	'AdminProfiles',	NULL,	3,	1,	0),
(74,	16,	'AdminAccess',	NULL,	4,	1,	0),
(75,	16,	'AdminTabs',	NULL,	5,	1,	0),
(76,	17,	'AdminStats',	NULL,	0,	1,	0),
(77,	17,	'AdminSearchEngines',	NULL,	1,	1,	0),
(78,	17,	'AdminReferrers',	NULL,	2,	1,	0),
(79,	18,	'AdminWarehouses',	NULL,	0,	1,	0),
(80,	18,	'AdminStockManagement',	NULL,	1,	1,	0),
(81,	18,	'AdminStockMvt',	NULL,	2,	1,	0),
(82,	18,	'AdminStockInstantState',	NULL,	3,	1,	0),
(83,	18,	'AdminStockCover',	NULL,	4,	1,	0),
(84,	18,	'AdminStockConfiguration',	NULL,	5,	1,	0),
(85,	0,	'AdminHotelReservationSystemManagement',	'hotelreservationsystem',	5,	1,	0),
(86,	85,	'AdminHotelRoomsBooking',	'hotelreservationsystem',	1,	1,	0),
(87,	85,	'AdminHotelConfigurationSetting',	'hotelreservationsystem',	2,	1,	0),
(88,	85,	'AdminAddHotel',	'hotelreservationsystem',	3,	1,	0),
(89,	85,	'AdminHotelFeatures',	'hotelreservationsystem',	4,	1,	0),
(90,	85,	'AdminOrderRefundRules',	'hotelreservationsystem',	5,	1,	0),
(91,	85,	'AdminOrderRefundRequests',	'hotelreservationsystem',	6,	1,	0),
(92,	-1,	'AdminOrderRestrictSettings',	'hotelreservationsystem',	6,	1,	0),
(93,	-1,	'AdminHotelGeneralSettings',	'hotelreservationsystem',	7,	1,	0),
(94,	-1,	'AdminHotelFeaturePricesSettings',	'hotelreservationsystem',	8,	1,	0),
(95,	-1,	'AdminRoomTypeGlobalDemand',	'hotelreservationsystem',	9,	1,	0),
(96,	-1,	'AdminAssignHotelFeatures',	'hotelreservationsystem',	10,	1,	0),
(97,	-1,	'AdminAboutHotelBlockSetting',	'wkabouthotelblock',	11,	1,	0),
(98,	-1,	'AdminFeaturesModuleSetting',	'wkhotelfeaturesblock',	12,	1,	0),
(99,	-1,	'AdminHotelRoomModuleSetting',	'wkhotelroom',	13,	1,	0),
(100,	-1,	'AdminTestimonialsModuleSetting',	'wktestimonialblock',	14,	1,	0),
(101,	-1,	'AdminFooterPaymentBlockSetting',	'wkfooterpaymentblock',	15,	1,	0),
(102,	-1,	'AdminCustomNavigationLinkSetting',	'blocknavigationmenu',	16,	1,	0),
(103,	-1,	'AdminDashgoals',	'dashgoals',	17,	1,	0);

DROP TABLE IF EXISTS `ps_tab_lang`;
CREATE TABLE `ps_tab_lang` (
  `id_tab` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_tab_lang` (`id_tab`, `id_lang`, `name`) VALUES
(1,	1,	'Dashboard'),
(1,	2,	'Nástěnka'),
(2,	1,	'CMS Pages'),
(2,	2,	'Stránky CMS'),
(3,	1,	'CMS Categories'),
(3,	2,	'CMS kategorie'),
(4,	1,	'Search'),
(4,	2,	'Vyhledávání'),
(5,	1,	'Login'),
(5,	2,	'Login'),
(6,	1,	'Shops'),
(6,	2,	'Obchody'),
(7,	1,	'Shop URLs'),
(7,	2,	'Odkazy'),
(8,	1,	'Catalog'),
(8,	2,	'Katalog'),
(9,	1,	'Orders'),
(9,	2,	'Objednávky'),
(10,	1,	'Customers'),
(10,	2,	'Zákazníci'),
(11,	1,	'Manage Discounts'),
(11,	2,	'Pravidla cen'),
(12,	1,	'Modules and Services'),
(12,	2,	'Moduly a Služby'),
(13,	1,	'Localization'),
(13,	2,	'Lokalizace'),
(14,	1,	'Preferences'),
(14,	2,	'Konfigurace'),
(15,	1,	'Advanced Parameters'),
(15,	2,	'Nástroje'),
(16,	1,	'Administration'),
(16,	2,	'Administrace'),
(17,	1,	'Stats'),
(17,	2,	'Statistiky'),
(18,	1,	'Stock'),
(18,	2,	'Zásoby'),
(19,	1,	'Manage Room Types'),
(19,	2,	'Produkty'),
(20,	1,	'Features'),
(20,	2,	'Vlastnosti produktů'),
(21,	1,	'Tags'),
(21,	2,	'Štítky'),
(22,	1,	'Orders'),
(22,	2,	'Objednávky'),
(23,	1,	'Invoices'),
(23,	2,	'Faktury'),
(24,	1,	'Credit Slips'),
(24,	2,	'Dobropisy'),
(25,	1,	'Statuses'),
(25,	2,	'Stavy objednávek'),
(26,	1,	'Order Messages'),
(26,	2,	'Zprávy k objednávkám'),
(27,	1,	'Customers'),
(27,	2,	'Zákazníci'),
(28,	1,	'Addresses'),
(28,	2,	'Adresy'),
(29,	1,	'Groups'),
(29,	2,	'Skupiny zákazníků'),
(30,	1,	'Booking Carts'),
(30,	2,	'Nákupní košíky'),
(31,	1,	'Customer Service'),
(31,	2,	'Zákaznický servis'),
(32,	1,	'Contacts'),
(32,	2,	'Kontakty na zaměstnance'),
(33,	1,	'Titles'),
(33,	2,	'Oslovení skupiny'),
(34,	1,	'Outstanding'),
(34,	2,	'Outstanding'),
(35,	1,	'Cart Rules'),
(35,	2,	'Pravidla pro košík'),
(36,	1,	'Catalog Price Rules'),
(36,	2,	'Pravidla pro katalog'),
(37,	1,	'Localization'),
(37,	2,	'Lokalizace'),
(38,	1,	'Languages'),
(38,	2,	'Jazyky'),
(39,	1,	'Zones'),
(39,	2,	'Zóny'),
(40,	1,	'Countries'),
(40,	2,	'Země'),
(41,	1,	'States'),
(41,	2,	'Státy'),
(42,	1,	'Currencies'),
(42,	2,	'Měny'),
(43,	1,	'Taxes'),
(43,	2,	'DPH'),
(44,	1,	'Tax Rules'),
(44,	2,	'Daňová pravidla'),
(45,	1,	'Translations'),
(45,	2,	'Překlady'),
(46,	1,	'Modules and Services'),
(46,	2,	'Moduly a Služby'),
(47,	1,	'Positions'),
(47,	2,	'Pozice modulů'),
(48,	1,	'Payment'),
(48,	2,	'Platba'),
(49,	1,	'General'),
(49,	2,	'Hlavní'),
(50,	1,	'Orders'),
(50,	2,	'Objednávky'),
(51,	1,	'Room Types'),
(51,	2,	'Produkty'),
(52,	1,	'Customers'),
(52,	2,	'Zákazníci'),
(53,	1,	'Themes'),
(53,	2,	'Šablony'),
(54,	1,	'SEO & URLs'),
(54,	2,	'SEO a URLs'),
(55,	1,	'CMS'),
(55,	2,	'CMS'),
(56,	1,	'Images'),
(56,	2,	'Obrázky'),
(57,	1,	'Store Contacts'),
(57,	2,	'Kontakty na prodejny'),
(58,	1,	'Search'),
(58,	2,	'Vyhledávání'),
(59,	1,	'Maintenance'),
(59,	2,	'Údržba obchodu'),
(60,	1,	'Geolocation'),
(60,	2,	'Geolokace'),
(61,	1,	'Configuration Information'),
(61,	2,	'Informace o konfiguraci'),
(62,	1,	'Performance'),
(62,	2,	'Výkon'),
(63,	1,	'E-mail'),
(63,	2,	'E-maily'),
(64,	1,	'Multistore'),
(64,	2,	'Obchody Multistore'),
(65,	1,	'CSV Import'),
(65,	2,	'Import'),
(66,	1,	'DB Backup'),
(66,	2,	'Záloha DB'),
(67,	1,	'SQL Manager'),
(67,	2,	'SQL manažer'),
(68,	1,	'Logs'),
(68,	2,	'Logy'),
(69,	1,	'Webservice'),
(69,	2,	'Webservice'),
(70,	1,	'Preferences'),
(70,	2,	'Konfigurace'),
(71,	1,	'Quick Access'),
(71,	2,	'Rychlý přístup'),
(72,	1,	'Employees'),
(72,	2,	'Zaměstnanci'),
(73,	1,	'Profiles'),
(73,	2,	'Profily'),
(74,	1,	'Permissions'),
(74,	2,	'Oprávnění přístupu'),
(75,	1,	'Menus'),
(75,	2,	'Menus'),
(76,	1,	'Stats'),
(76,	2,	'Statistiky'),
(77,	1,	'Search Engines'),
(77,	2,	'Vyhledávače'),
(78,	1,	'Referrers'),
(78,	2,	'Odkud přišli'),
(79,	1,	'Warehouses'),
(79,	2,	'Sklady'),
(80,	1,	'Stock Management'),
(80,	2,	'Řízení zásob'),
(81,	1,	'Stock Movement'),
(81,	2,	'Skladové pohyby'),
(82,	1,	'Instant Stock Status'),
(82,	2,	'Okamžitý stav zásob'),
(83,	1,	'Stock Coverage'),
(83,	2,	'Stav zásob'),
(84,	1,	'Configuration'),
(84,	2,	'Konfigurace'),
(85,	1,	'Hotel Reservation System'),
(85,	2,	'Hotel Reservation System'),
(86,	1,	'Book Now'),
(86,	2,	'Book Now'),
(87,	1,	'Settings'),
(87,	2,	'Settings'),
(88,	1,	'Manage Hotel'),
(88,	2,	'Manage Hotel'),
(89,	1,	'Manage Hotel Features'),
(89,	2,	'Manage Hotel Features'),
(90,	1,	'Manage Order Refund Rules'),
(90,	2,	'Manage Order Refund Rules'),
(91,	1,	'Manage Order Refund Requests'),
(91,	2,	'Manage Order Refund Requests'),
(92,	1,	'order restrict configuration'),
(92,	2,	'order restrict configuration'),
(93,	1,	'Hotel General configuration'),
(93,	2,	'Hotel General configuration'),
(94,	1,	'feature pricing configuration'),
(94,	2,	'feature pricing configuration'),
(95,	1,	'Additional demand configuration'),
(95,	2,	'Additional demand configuration'),
(96,	1,	'Assign Hotel Features'),
(96,	2,	'Assign Hotel Features'),
(97,	1,	'Hotel Description Configuration'),
(97,	2,	'Hotel Description Configuration'),
(98,	1,	'Hotel Amenities Configurations'),
(98,	2,	'Hotel Amenities Configurations'),
(99,	1,	'Manage Hotel Rooms Display'),
(99,	2,	'Manage Hotel Rooms Display'),
(100,	1,	'Testimonial configuration'),
(100,	2,	'Testimonial configuration'),
(101,	1,	'Manage Footer Payment Block'),
(101,	2,	'Manage Footer Payment Block'),
(102,	1,	'Manage Custom Navigation Links'),
(102,	2,	'Manage Custom Navigation Links'),
(103,	1,	'Dashgoals'),
(103,	2,	'Dashgoals');

DROP TABLE IF EXISTS `ps_tab_module_preference`;
CREATE TABLE `ps_tab_module_preference` (
  `id_tab_module_preference` int NOT NULL AUTO_INCREMENT,
  `id_employee` int NOT NULL,
  `id_tab` int NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tab_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_tag`;
CREATE TABLE `ps_tag` (
  `id_tag` int unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_tag_count`;
CREATE TABLE `ps_tag_count` (
  `id_group` int unsigned NOT NULL DEFAULT '0',
  `id_tag` int unsigned NOT NULL DEFAULT '0',
  `id_lang` int unsigned NOT NULL DEFAULT '0',
  `id_shop` int unsigned NOT NULL DEFAULT '0',
  `counter` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_tag`),
  KEY `id_group` (`id_group`,`id_lang`,`id_shop`,`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_tax`;
CREATE TABLE `ps_tax` (
  `id_tax` int unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_tax` (`id_tax`, `rate`, `active`, `deleted`) VALUES
(1,	21.000,	1,	0),
(2,	15.000,	1,	0),
(3,	20.000,	1,	0),
(4,	21.000,	1,	0),
(5,	20.000,	1,	0),
(6,	19.000,	1,	0),
(7,	19.000,	1,	0),
(8,	25.000,	1,	0),
(9,	20.000,	1,	0),
(10,	21.000,	1,	0),
(11,	24.000,	1,	0),
(12,	20.000,	1,	0),
(13,	20.000,	1,	0),
(14,	23.000,	1,	0),
(15,	25.000,	1,	0),
(16,	27.000,	1,	0),
(17,	23.000,	1,	0),
(18,	22.000,	1,	0),
(19,	21.000,	1,	0),
(20,	17.000,	1,	0),
(21,	21.000,	1,	0),
(22,	18.000,	1,	0),
(23,	21.000,	1,	0),
(24,	23.000,	1,	0),
(25,	23.000,	1,	0),
(26,	20.000,	1,	0),
(27,	25.000,	1,	0),
(28,	22.000,	1,	0),
(29,	20.000,	1,	0);

DROP TABLE IF EXISTS `ps_tax_lang`;
CREATE TABLE `ps_tax_lang` (
  `id_tax` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tax`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_tax_lang` (`id_tax`, `id_lang`, `name`) VALUES
(1,	1,	'DPH CZ 21%'),
(1,	2,	'DPH CZ 21%'),
(2,	1,	'DPH CZ 15%'),
(2,	2,	'DPH CZ 15%'),
(3,	1,	'USt. AT 20%'),
(3,	2,	'USt. AT 20%'),
(4,	1,	'TVA BE 21%'),
(4,	2,	'TVA BE 21%'),
(5,	1,	'ДДС BG 20%'),
(5,	2,	'ДДС BG 20%'),
(6,	1,	'ΦΠΑ CY 19%'),
(6,	2,	'ΦΠΑ CY 19%'),
(7,	1,	'MwSt. DE 19%'),
(7,	2,	'MwSt. DE 19%'),
(8,	1,	'moms DK 25%'),
(8,	2,	'moms DK 25%'),
(9,	1,	'km EE 20%'),
(9,	2,	'km EE 20%'),
(10,	1,	'IVA ES 21%'),
(10,	2,	'IVA ES 21%'),
(11,	1,	'ALV FI 24%'),
(11,	2,	'ALV FI 24%'),
(12,	1,	'TVA FR 20%'),
(12,	2,	'TVA FR 20%'),
(13,	1,	'VAT UK 20%'),
(13,	2,	'VAT UK 20%'),
(14,	1,	'ΦΠΑ GR 23%'),
(14,	2,	'ΦΠΑ GR 23%'),
(15,	1,	'Croatia PDV 25%'),
(15,	2,	'Croatia PDV 25%'),
(16,	1,	'ÁFA HU 27%'),
(16,	2,	'ÁFA HU 27%'),
(17,	1,	'VAT IE 23%'),
(17,	2,	'VAT IE 23%'),
(18,	1,	'IVA IT 22%'),
(18,	2,	'IVA IT 22%'),
(19,	1,	'PVM LT 21%'),
(19,	2,	'PVM LT 21%'),
(20,	1,	'TVA LU 17%'),
(20,	2,	'TVA LU 17%'),
(21,	1,	'PVN LV 21%'),
(21,	2,	'PVN LV 21%'),
(22,	1,	'VAT MT 18%'),
(22,	2,	'VAT MT 18%'),
(23,	1,	'BTW NL 21%'),
(23,	2,	'BTW NL 21%'),
(24,	1,	'PTU PL 23%'),
(24,	2,	'PTU PL 23%'),
(25,	1,	'IVA PT 23%'),
(25,	2,	'IVA PT 23%'),
(26,	1,	'TVA RO 20%'),
(26,	2,	'TVA RO 20%'),
(27,	1,	'Moms SE 25%'),
(27,	2,	'Moms SE 25%'),
(28,	1,	'DDV SI 22%'),
(28,	2,	'DDV SI 22%'),
(29,	1,	'DPH SK 20%'),
(29,	2,	'DPH SK 20%');

DROP TABLE IF EXISTS `ps_tax_rule`;
CREATE TABLE `ps_tax_rule` (
  `id_tax_rule` int NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int NOT NULL,
  `id_country` int NOT NULL,
  `id_state` int NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int NOT NULL,
  `behavior` int NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tax_rule`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_tax` (`id_tax`),
  KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_tax_rule` (`id_tax_rule`, `id_tax_rules_group`, `id_country`, `id_state`, `zipcode_from`, `zipcode_to`, `id_tax`, `behavior`, `description`) VALUES
(1,	1,	3,	0,	'0',	'0',	1,	0,	''),
(2,	1,	236,	0,	'0',	'0',	1,	0,	''),
(3,	1,	16,	0,	'0',	'0',	1,	0,	''),
(4,	1,	20,	0,	'0',	'0',	1,	0,	''),
(5,	1,	1,	0,	'0',	'0',	1,	0,	''),
(6,	1,	86,	0,	'0',	'0',	1,	0,	''),
(7,	1,	9,	0,	'0',	'0',	1,	0,	''),
(8,	1,	6,	0,	'0',	'0',	1,	0,	''),
(9,	1,	8,	0,	'0',	'0',	1,	0,	''),
(10,	1,	26,	0,	'0',	'0',	1,	0,	''),
(11,	1,	10,	0,	'0',	'0',	1,	0,	''),
(12,	1,	76,	0,	'0',	'0',	1,	0,	''),
(13,	1,	125,	0,	'0',	'0',	1,	0,	''),
(14,	1,	131,	0,	'0',	'0',	1,	0,	''),
(15,	1,	12,	0,	'0',	'0',	1,	0,	''),
(16,	1,	143,	0,	'0',	'0',	1,	0,	''),
(17,	1,	139,	0,	'0',	'0',	1,	0,	''),
(18,	1,	13,	0,	'0',	'0',	1,	0,	''),
(19,	1,	2,	0,	'0',	'0',	1,	0,	''),
(20,	1,	14,	0,	'0',	'0',	1,	0,	''),
(21,	1,	15,	0,	'0',	'0',	1,	0,	''),
(22,	1,	36,	0,	'0',	'0',	1,	0,	''),
(23,	1,	193,	0,	'0',	'0',	1,	0,	''),
(24,	1,	37,	0,	'0',	'0',	1,	0,	''),
(25,	1,	7,	0,	'0',	'0',	1,	0,	''),
(26,	1,	18,	0,	'0',	'0',	1,	0,	''),
(27,	2,	3,	0,	'0',	'0',	2,	0,	''),
(28,	2,	236,	0,	'0',	'0',	2,	0,	''),
(29,	2,	16,	0,	'0',	'0',	2,	0,	''),
(30,	2,	20,	0,	'0',	'0',	2,	0,	''),
(31,	2,	1,	0,	'0',	'0',	2,	0,	''),
(32,	2,	86,	0,	'0',	'0',	2,	0,	''),
(33,	2,	9,	0,	'0',	'0',	2,	0,	''),
(34,	2,	6,	0,	'0',	'0',	2,	0,	''),
(35,	2,	8,	0,	'0',	'0',	2,	0,	''),
(36,	2,	26,	0,	'0',	'0',	2,	0,	''),
(37,	2,	10,	0,	'0',	'0',	2,	0,	''),
(38,	2,	76,	0,	'0',	'0',	2,	0,	''),
(39,	2,	125,	0,	'0',	'0',	2,	0,	''),
(40,	2,	131,	0,	'0',	'0',	2,	0,	''),
(41,	2,	12,	0,	'0',	'0',	2,	0,	''),
(42,	2,	143,	0,	'0',	'0',	2,	0,	''),
(43,	2,	139,	0,	'0',	'0',	2,	0,	''),
(44,	2,	13,	0,	'0',	'0',	2,	0,	''),
(45,	2,	2,	0,	'0',	'0',	2,	0,	''),
(46,	2,	14,	0,	'0',	'0',	2,	0,	''),
(47,	2,	15,	0,	'0',	'0',	2,	0,	''),
(48,	2,	36,	0,	'0',	'0',	2,	0,	''),
(49,	2,	193,	0,	'0',	'0',	2,	0,	''),
(50,	2,	37,	0,	'0',	'0',	2,	0,	''),
(51,	2,	7,	0,	'0',	'0',	2,	0,	''),
(52,	2,	18,	0,	'0',	'0',	2,	0,	''),
(53,	3,	16,	0,	'0',	'0',	1,	0,	''),
(54,	3,	2,	0,	'0',	'0',	3,	0,	''),
(55,	3,	3,	0,	'0',	'0',	4,	0,	''),
(56,	3,	236,	0,	'0',	'0',	5,	0,	''),
(57,	3,	76,	0,	'0',	'0',	6,	0,	''),
(58,	3,	1,	0,	'0',	'0',	7,	0,	''),
(59,	3,	20,	0,	'0',	'0',	8,	0,	''),
(60,	3,	86,	0,	'0',	'0',	9,	0,	''),
(61,	3,	6,	0,	'0',	'0',	10,	0,	''),
(62,	3,	7,	0,	'0',	'0',	11,	0,	''),
(63,	3,	8,	0,	'0',	'0',	12,	0,	''),
(64,	3,	17,	0,	'0',	'0',	13,	0,	''),
(65,	3,	9,	0,	'0',	'0',	14,	0,	''),
(66,	3,	74,	0,	'0',	'0',	15,	0,	''),
(67,	3,	143,	0,	'0',	'0',	16,	0,	''),
(68,	3,	26,	0,	'0',	'0',	17,	0,	''),
(69,	3,	10,	0,	'0',	'0',	18,	0,	''),
(70,	3,	131,	0,	'0',	'0',	19,	0,	''),
(71,	3,	12,	0,	'0',	'0',	20,	0,	''),
(72,	3,	125,	0,	'0',	'0',	21,	0,	''),
(73,	3,	139,	0,	'0',	'0',	22,	0,	''),
(74,	3,	13,	0,	'0',	'0',	23,	0,	''),
(75,	3,	14,	0,	'0',	'0',	24,	0,	''),
(76,	3,	15,	0,	'0',	'0',	25,	0,	''),
(77,	3,	36,	0,	'0',	'0',	26,	0,	''),
(78,	3,	18,	0,	'0',	'0',	27,	0,	''),
(79,	3,	193,	0,	'0',	'0',	28,	0,	''),
(80,	3,	37,	0,	'0',	'0',	29,	0,	''),
(325,	5,	17,	0,	'0',	'0',	13,	0,	'');

DROP TABLE IF EXISTS `ps_tax_rules_group`;
CREATE TABLE `ps_tax_rules_group` (
  `id_tax_rules_group` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` int NOT NULL,
  `deleted` tinyint unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_tax_rules_group` (`id_tax_rules_group`, `name`, `active`, `deleted`, `date_add`, `date_upd`) VALUES
(1,	'CZ Standardní sazba (21%)',	1,	0,	'2021-05-04 13:11:30',	'2021-05-04 13:11:30'),
(2,	'CZ Snížená sazba (15%)',	1,	0,	'2021-05-04 13:11:30',	'2021-05-04 13:11:30'),
(3,	'EU Sazba pro Virtuální produkty',	1,	0,	'2021-05-04 13:11:30',	'2021-05-04 13:11:30'),
(5,	'Hackathon',	1,	0,	'2023-05-15 08:54:56',	'2023-05-15 08:55:21');

DROP TABLE IF EXISTS `ps_tax_rules_group_shop`;
CREATE TABLE `ps_tax_rules_group_shop` (
  `id_tax_rules_group` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_tax_rules_group_shop` (`id_tax_rules_group`, `id_shop`) VALUES
(1,	1),
(2,	1),
(3,	1),
(5,	1);

DROP TABLE IF EXISTS `ps_theme`;
CREATE TABLE `ps_theme` (
  `id_theme` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `directory` varchar(64) NOT NULL,
  `responsive` tinyint(1) NOT NULL DEFAULT '0',
  `default_left_column` tinyint(1) NOT NULL DEFAULT '0',
  `default_right_column` tinyint(1) NOT NULL DEFAULT '0',
  `product_per_page` int unsigned NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_theme` (`id_theme`, `name`, `directory`, `responsive`, `default_left_column`, `default_right_column`, `product_per_page`) VALUES
(1,	'hotel-reservation-theme',	'hotel-reservation-theme',	1,	1,	0,	12);

DROP TABLE IF EXISTS `ps_theme_meta`;
CREATE TABLE `ps_theme_meta` (
  `id_theme_meta` int NOT NULL AUTO_INCREMENT,
  `id_theme` int NOT NULL,
  `id_meta` int unsigned NOT NULL,
  `left_column` tinyint(1) NOT NULL DEFAULT '1',
  `right_column` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_theme_meta`),
  UNIQUE KEY `id_theme_2` (`id_theme`,`id_meta`),
  KEY `id_theme` (`id_theme`),
  KEY `id_meta` (`id_meta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_theme_meta` (`id_theme_meta`, `id_theme`, `id_meta`, `left_column`, `right_column`) VALUES
(1,	1,	1,	0,	0),
(2,	1,	2,	1,	0),
(3,	1,	3,	0,	0),
(4,	1,	4,	0,	0),
(5,	1,	5,	1,	0),
(6,	1,	6,	1,	0),
(7,	1,	7,	0,	0),
(8,	1,	8,	1,	0),
(9,	1,	9,	1,	0),
(10,	1,	10,	0,	0),
(11,	1,	11,	0,	0),
(12,	1,	12,	0,	0),
(13,	1,	13,	0,	0),
(14,	1,	14,	0,	0),
(15,	1,	15,	0,	0),
(16,	1,	16,	0,	0),
(17,	1,	17,	0,	0),
(18,	1,	18,	0,	0),
(19,	1,	19,	0,	0),
(20,	1,	20,	0,	0),
(21,	1,	21,	0,	0),
(22,	1,	22,	1,	0),
(23,	1,	23,	0,	0),
(24,	1,	24,	0,	0),
(25,	1,	25,	0,	0),
(26,	1,	26,	0,	0),
(27,	1,	28,	1,	0),
(28,	1,	29,	0,	0),
(29,	1,	27,	0,	0),
(30,	1,	30,	0,	0),
(31,	1,	31,	0,	0),
(32,	1,	32,	0,	0),
(33,	1,	33,	0,	0),
(34,	1,	34,	0,	0),
(35,	1,	36,	1,	0);

DROP TABLE IF EXISTS `ps_theme_specific`;
CREATE TABLE `ps_theme_specific` (
  `id_theme` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `entity` int unsigned NOT NULL,
  `id_object` int unsigned NOT NULL,
  PRIMARY KEY (`id_theme`,`id_shop`,`entity`,`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_timezone`;
CREATE TABLE `ps_timezone` (
  `id_timezone` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_timezone` (`id_timezone`, `name`) VALUES
(1,	'Africa/Abidjan'),
(2,	'Africa/Accra'),
(3,	'Africa/Addis_Ababa'),
(4,	'Africa/Algiers'),
(5,	'Africa/Asmara'),
(6,	'Africa/Asmera'),
(7,	'Africa/Bamako'),
(8,	'Africa/Bangui'),
(9,	'Africa/Banjul'),
(10,	'Africa/Bissau'),
(11,	'Africa/Blantyre'),
(12,	'Africa/Brazzaville'),
(13,	'Africa/Bujumbura'),
(14,	'Africa/Cairo'),
(15,	'Africa/Casablanca'),
(16,	'Africa/Ceuta'),
(17,	'Africa/Conakry'),
(18,	'Africa/Dakar'),
(19,	'Africa/Dar_es_Salaam'),
(20,	'Africa/Djibouti'),
(21,	'Africa/Douala'),
(22,	'Africa/El_Aaiun'),
(23,	'Africa/Freetown'),
(24,	'Africa/Gaborone'),
(25,	'Africa/Harare'),
(26,	'Africa/Johannesburg'),
(27,	'Africa/Kampala'),
(28,	'Africa/Khartoum'),
(29,	'Africa/Kigali'),
(30,	'Africa/Kinshasa'),
(31,	'Africa/Lagos'),
(32,	'Africa/Libreville'),
(33,	'Africa/Lome'),
(34,	'Africa/Luanda'),
(35,	'Africa/Lubumbashi'),
(36,	'Africa/Lusaka'),
(37,	'Africa/Malabo'),
(38,	'Africa/Maputo'),
(39,	'Africa/Maseru'),
(40,	'Africa/Mbabane'),
(41,	'Africa/Mogadishu'),
(42,	'Africa/Monrovia'),
(43,	'Africa/Nairobi'),
(44,	'Africa/Ndjamena'),
(45,	'Africa/Niamey'),
(46,	'Africa/Nouakchott'),
(47,	'Africa/Ouagadougou'),
(48,	'Africa/Porto-Novo'),
(49,	'Africa/Sao_Tome'),
(50,	'Africa/Timbuktu'),
(51,	'Africa/Tripoli'),
(52,	'Africa/Tunis'),
(53,	'Africa/Windhoek'),
(54,	'America/Adak'),
(55,	'America/Anchorage '),
(56,	'America/Anguilla'),
(57,	'America/Antigua'),
(58,	'America/Araguaina'),
(59,	'America/Argentina/Buenos_Aires'),
(60,	'America/Argentina/Catamarca'),
(61,	'America/Argentina/ComodRivadavia'),
(62,	'America/Argentina/Cordoba'),
(63,	'America/Argentina/Jujuy'),
(64,	'America/Argentina/La_Rioja'),
(65,	'America/Argentina/Mendoza'),
(66,	'America/Argentina/Rio_Gallegos'),
(67,	'America/Argentina/Salta'),
(68,	'America/Argentina/San_Juan'),
(69,	'America/Argentina/San_Luis'),
(70,	'America/Argentina/Tucuman'),
(71,	'America/Argentina/Ushuaia'),
(72,	'America/Aruba'),
(73,	'America/Asuncion'),
(74,	'America/Atikokan'),
(75,	'America/Atka'),
(76,	'America/Bahia'),
(77,	'America/Barbados'),
(78,	'America/Belem'),
(79,	'America/Belize'),
(80,	'America/Blanc-Sablon'),
(81,	'America/Boa_Vista'),
(82,	'America/Bogota'),
(83,	'America/Boise'),
(84,	'America/Buenos_Aires'),
(85,	'America/Cambridge_Bay'),
(86,	'America/Campo_Grande'),
(87,	'America/Cancun'),
(88,	'America/Caracas'),
(89,	'America/Catamarca'),
(90,	'America/Cayenne'),
(91,	'America/Cayman'),
(92,	'America/Chicago'),
(93,	'America/Chihuahua'),
(94,	'America/Coral_Harbour'),
(95,	'America/Cordoba'),
(96,	'America/Costa_Rica'),
(97,	'America/Cuiaba'),
(98,	'America/Curacao'),
(99,	'America/Danmarkshavn'),
(100,	'America/Dawson'),
(101,	'America/Dawson_Creek'),
(102,	'America/Denver'),
(103,	'America/Detroit'),
(104,	'America/Dominica'),
(105,	'America/Edmonton'),
(106,	'America/Eirunepe'),
(107,	'America/El_Salvador'),
(108,	'America/Ensenada'),
(109,	'America/Fort_Wayne'),
(110,	'America/Fortaleza'),
(111,	'America/Glace_Bay'),
(112,	'America/Godthab'),
(113,	'America/Goose_Bay'),
(114,	'America/Grand_Turk'),
(115,	'America/Grenada'),
(116,	'America/Guadeloupe'),
(117,	'America/Guatemala'),
(118,	'America/Guayaquil'),
(119,	'America/Guyana'),
(120,	'America/Halifax'),
(121,	'America/Havana'),
(122,	'America/Hermosillo'),
(123,	'America/Indiana/Indianapolis'),
(124,	'America/Indiana/Knox'),
(125,	'America/Indiana/Marengo'),
(126,	'America/Indiana/Petersburg'),
(127,	'America/Indiana/Tell_City'),
(128,	'America/Indiana/Vevay'),
(129,	'America/Indiana/Vincennes'),
(130,	'America/Indiana/Winamac'),
(131,	'America/Indianapolis'),
(132,	'America/Inuvik'),
(133,	'America/Iqaluit'),
(134,	'America/Jamaica'),
(135,	'America/Jujuy'),
(136,	'America/Juneau'),
(137,	'America/Kentucky/Louisville'),
(138,	'America/Kentucky/Monticello'),
(139,	'America/Knox_IN'),
(140,	'America/La_Paz'),
(141,	'America/Lima'),
(142,	'America/Los_Angeles'),
(143,	'America/Louisville'),
(144,	'America/Maceio'),
(145,	'America/Managua'),
(146,	'America/Manaus'),
(147,	'America/Marigot'),
(148,	'America/Martinique'),
(149,	'America/Mazatlan'),
(150,	'America/Mendoza'),
(151,	'America/Menominee'),
(152,	'America/Merida'),
(153,	'America/Mexico_City'),
(154,	'America/Miquelon'),
(155,	'America/Moncton'),
(156,	'America/Monterrey'),
(157,	'America/Montevideo'),
(158,	'America/Montreal'),
(159,	'America/Montserrat'),
(160,	'America/Nassau'),
(161,	'America/New_York'),
(162,	'America/Nipigon'),
(163,	'America/Nome'),
(164,	'America/Noronha'),
(165,	'America/North_Dakota/Center'),
(166,	'America/North_Dakota/New_Salem'),
(167,	'America/Panama'),
(168,	'America/Pangnirtung'),
(169,	'America/Paramaribo'),
(170,	'America/Phoenix'),
(171,	'America/Port-au-Prince'),
(172,	'America/Port_of_Spain'),
(173,	'America/Porto_Acre'),
(174,	'America/Porto_Velho'),
(175,	'America/Puerto_Rico'),
(176,	'America/Rainy_River'),
(177,	'America/Rankin_Inlet'),
(178,	'America/Recife'),
(179,	'America/Regina'),
(180,	'America/Resolute'),
(181,	'America/Rio_Branco'),
(182,	'America/Rosario'),
(183,	'America/Santarem'),
(184,	'America/Santiago'),
(185,	'America/Santo_Domingo'),
(186,	'America/Sao_Paulo'),
(187,	'America/Scoresbysund'),
(188,	'America/Shiprock'),
(189,	'America/St_Barthelemy'),
(190,	'America/St_Johns'),
(191,	'America/St_Kitts'),
(192,	'America/St_Lucia'),
(193,	'America/St_Thomas'),
(194,	'America/St_Vincent'),
(195,	'America/Swift_Current'),
(196,	'America/Tegucigalpa'),
(197,	'America/Thule'),
(198,	'America/Thunder_Bay'),
(199,	'America/Tijuana'),
(200,	'America/Toronto'),
(201,	'America/Tortola'),
(202,	'America/Vancouver'),
(203,	'America/Virgin'),
(204,	'America/Whitehorse'),
(205,	'America/Winnipeg'),
(206,	'America/Yakutat'),
(207,	'America/Yellowknife'),
(208,	'Antarctica/Casey'),
(209,	'Antarctica/Davis'),
(210,	'Antarctica/DumontDUrville'),
(211,	'Antarctica/Mawson'),
(212,	'Antarctica/McMurdo'),
(213,	'Antarctica/Palmer'),
(214,	'Antarctica/Rothera'),
(215,	'Antarctica/South_Pole'),
(216,	'Antarctica/Syowa'),
(217,	'Antarctica/Vostok'),
(218,	'Arctic/Longyearbyen'),
(219,	'Asia/Aden'),
(220,	'Asia/Almaty'),
(221,	'Asia/Amman'),
(222,	'Asia/Anadyr'),
(223,	'Asia/Aqtau'),
(224,	'Asia/Aqtobe'),
(225,	'Asia/Ashgabat'),
(226,	'Asia/Ashkhabad'),
(227,	'Asia/Baghdad'),
(228,	'Asia/Bahrain'),
(229,	'Asia/Baku'),
(230,	'Asia/Bangkok'),
(231,	'Asia/Beirut'),
(232,	'Asia/Bishkek'),
(233,	'Asia/Brunei'),
(234,	'Asia/Calcutta'),
(235,	'Asia/Choibalsan'),
(236,	'Asia/Chongqing'),
(237,	'Asia/Chungking'),
(238,	'Asia/Colombo'),
(239,	'Asia/Dacca'),
(240,	'Asia/Damascus'),
(241,	'Asia/Dhaka'),
(242,	'Asia/Dili'),
(243,	'Asia/Dubai'),
(244,	'Asia/Dushanbe'),
(245,	'Asia/Gaza'),
(246,	'Asia/Harbin'),
(247,	'Asia/Ho_Chi_Minh'),
(248,	'Asia/Hong_Kong'),
(249,	'Asia/Hovd'),
(250,	'Asia/Irkutsk'),
(251,	'Asia/Istanbul'),
(252,	'Asia/Jakarta'),
(253,	'Asia/Jayapura'),
(254,	'Asia/Jerusalem'),
(255,	'Asia/Kabul'),
(256,	'Asia/Kamchatka'),
(257,	'Asia/Karachi'),
(258,	'Asia/Kashgar'),
(259,	'Asia/Kathmandu'),
(260,	'Asia/Katmandu'),
(261,	'Asia/Kolkata'),
(262,	'Asia/Krasnoyarsk'),
(263,	'Asia/Kuala_Lumpur'),
(264,	'Asia/Kuching'),
(265,	'Asia/Kuwait'),
(266,	'Asia/Macao'),
(267,	'Asia/Macau'),
(268,	'Asia/Magadan'),
(269,	'Asia/Makassar'),
(270,	'Asia/Manila'),
(271,	'Asia/Muscat'),
(272,	'Asia/Nicosia'),
(273,	'Asia/Novosibirsk'),
(274,	'Asia/Omsk'),
(275,	'Asia/Oral'),
(276,	'Asia/Phnom_Penh'),
(277,	'Asia/Pontianak'),
(278,	'Asia/Pyongyang'),
(279,	'Asia/Qatar'),
(280,	'Asia/Qyzylorda'),
(281,	'Asia/Rangoon'),
(282,	'Asia/Riyadh'),
(283,	'Asia/Saigon'),
(284,	'Asia/Sakhalin'),
(285,	'Asia/Samarkand'),
(286,	'Asia/Seoul'),
(287,	'Asia/Shanghai'),
(288,	'Asia/Singapore'),
(289,	'Asia/Taipei'),
(290,	'Asia/Tashkent'),
(291,	'Asia/Tbilisi'),
(292,	'Asia/Tehran'),
(293,	'Asia/Tel_Aviv'),
(294,	'Asia/Thimbu'),
(295,	'Asia/Thimphu'),
(296,	'Asia/Tokyo'),
(297,	'Asia/Ujung_Pandang'),
(298,	'Asia/Ulaanbaatar'),
(299,	'Asia/Ulan_Bator'),
(300,	'Asia/Urumqi'),
(301,	'Asia/Vientiane'),
(302,	'Asia/Vladivostok'),
(303,	'Asia/Yakutsk'),
(304,	'Asia/Yekaterinburg'),
(305,	'Asia/Yerevan'),
(306,	'Atlantic/Azores'),
(307,	'Atlantic/Bermuda'),
(308,	'Atlantic/Canary'),
(309,	'Atlantic/Cape_Verde'),
(310,	'Atlantic/Faeroe'),
(311,	'Atlantic/Faroe'),
(312,	'Atlantic/Jan_Mayen'),
(313,	'Atlantic/Madeira'),
(314,	'Atlantic/Reykjavik'),
(315,	'Atlantic/South_Georgia'),
(316,	'Atlantic/St_Helena'),
(317,	'Atlantic/Stanley'),
(318,	'Australia/ACT'),
(319,	'Australia/Adelaide'),
(320,	'Australia/Brisbane'),
(321,	'Australia/Broken_Hill'),
(322,	'Australia/Canberra'),
(323,	'Australia/Currie'),
(324,	'Australia/Darwin'),
(325,	'Australia/Eucla'),
(326,	'Australia/Hobart'),
(327,	'Australia/LHI'),
(328,	'Australia/Lindeman'),
(329,	'Australia/Lord_Howe'),
(330,	'Australia/Melbourne'),
(331,	'Australia/North'),
(332,	'Australia/NSW'),
(333,	'Australia/Perth'),
(334,	'Australia/Queensland'),
(335,	'Australia/South'),
(336,	'Australia/Sydney'),
(337,	'Australia/Tasmania'),
(338,	'Australia/Victoria'),
(339,	'Australia/West'),
(340,	'Australia/Yancowinna'),
(341,	'Europe/Amsterdam'),
(342,	'Europe/Andorra'),
(343,	'Europe/Athens'),
(344,	'Europe/Belfast'),
(345,	'Europe/Belgrade'),
(346,	'Europe/Berlin'),
(347,	'Europe/Bratislava'),
(348,	'Europe/Brussels'),
(349,	'Europe/Bucharest'),
(350,	'Europe/Budapest'),
(351,	'Europe/Chisinau'),
(352,	'Europe/Copenhagen'),
(353,	'Europe/Dublin'),
(354,	'Europe/Gibraltar'),
(355,	'Europe/Guernsey'),
(356,	'Europe/Helsinki'),
(357,	'Europe/Isle_of_Man'),
(358,	'Europe/Istanbul'),
(359,	'Europe/Jersey'),
(360,	'Europe/Kaliningrad'),
(361,	'Europe/Kiev'),
(362,	'Europe/Lisbon'),
(363,	'Europe/Ljubljana'),
(364,	'Europe/London'),
(365,	'Europe/Luxembourg'),
(366,	'Europe/Madrid'),
(367,	'Europe/Malta'),
(368,	'Europe/Mariehamn'),
(369,	'Europe/Minsk'),
(370,	'Europe/Monaco'),
(371,	'Europe/Moscow'),
(372,	'Europe/Nicosia'),
(373,	'Europe/Oslo'),
(374,	'Europe/Paris'),
(375,	'Europe/Podgorica'),
(376,	'Europe/Prague'),
(377,	'Europe/Riga'),
(378,	'Europe/Rome'),
(379,	'Europe/Samara'),
(380,	'Europe/San_Marino'),
(381,	'Europe/Sarajevo'),
(382,	'Europe/Simferopol'),
(383,	'Europe/Skopje'),
(384,	'Europe/Sofia'),
(385,	'Europe/Stockholm'),
(386,	'Europe/Tallinn'),
(387,	'Europe/Tirane'),
(388,	'Europe/Tiraspol'),
(389,	'Europe/Uzhgorod'),
(390,	'Europe/Vaduz'),
(391,	'Europe/Vatican'),
(392,	'Europe/Vienna'),
(393,	'Europe/Vilnius'),
(394,	'Europe/Volgograd'),
(395,	'Europe/Warsaw'),
(396,	'Europe/Zagreb'),
(397,	'Europe/Zaporozhye'),
(398,	'Europe/Zurich'),
(399,	'Indian/Antananarivo'),
(400,	'Indian/Chagos'),
(401,	'Indian/Christmas'),
(402,	'Indian/Cocos'),
(403,	'Indian/Comoro'),
(404,	'Indian/Kerguelen'),
(405,	'Indian/Mahe'),
(406,	'Indian/Maldives'),
(407,	'Indian/Mauritius'),
(408,	'Indian/Mayotte'),
(409,	'Indian/Reunion'),
(410,	'Pacific/Apia'),
(411,	'Pacific/Auckland'),
(412,	'Pacific/Chatham'),
(413,	'Pacific/Easter'),
(414,	'Pacific/Efate'),
(415,	'Pacific/Enderbury'),
(416,	'Pacific/Fakaofo'),
(417,	'Pacific/Fiji'),
(418,	'Pacific/Funafuti'),
(419,	'Pacific/Galapagos'),
(420,	'Pacific/Gambier'),
(421,	'Pacific/Guadalcanal'),
(422,	'Pacific/Guam'),
(423,	'Pacific/Honolulu'),
(424,	'Pacific/Johnston'),
(425,	'Pacific/Kiritimati'),
(426,	'Pacific/Kosrae'),
(427,	'Pacific/Kwajalein'),
(428,	'Pacific/Majuro'),
(429,	'Pacific/Marquesas'),
(430,	'Pacific/Midway'),
(431,	'Pacific/Nauru'),
(432,	'Pacific/Niue'),
(433,	'Pacific/Norfolk'),
(434,	'Pacific/Noumea'),
(435,	'Pacific/Pago_Pago'),
(436,	'Pacific/Palau'),
(437,	'Pacific/Pitcairn'),
(438,	'Pacific/Ponape'),
(439,	'Pacific/Port_Moresby'),
(440,	'Pacific/Rarotonga'),
(441,	'Pacific/Saipan'),
(442,	'Pacific/Samoa'),
(443,	'Pacific/Tahiti'),
(444,	'Pacific/Tarawa'),
(445,	'Pacific/Tongatapu'),
(446,	'Pacific/Truk'),
(447,	'Pacific/Wake'),
(448,	'Pacific/Wallis'),
(449,	'Pacific/Yap'),
(450,	'Brazil/Acre'),
(451,	'Brazil/DeNoronha'),
(452,	'Brazil/East'),
(453,	'Brazil/West'),
(454,	'Canada/Atlantic'),
(455,	'Canada/Central'),
(456,	'Canada/East-Saskatchewan'),
(457,	'Canada/Eastern'),
(458,	'Canada/Mountain'),
(459,	'Canada/Newfoundland'),
(460,	'Canada/Pacific'),
(461,	'Canada/Saskatchewan'),
(462,	'Canada/Yukon'),
(463,	'CET'),
(464,	'Chile/Continental'),
(465,	'Chile/EasterIsland'),
(466,	'CST6CDT'),
(467,	'Cuba'),
(468,	'EET'),
(469,	'Egypt'),
(470,	'Eire'),
(471,	'EST'),
(472,	'EST5EDT'),
(473,	'Etc/GMT'),
(474,	'Etc/GMT+0'),
(475,	'Etc/GMT+1'),
(476,	'Etc/GMT+10'),
(477,	'Etc/GMT+11'),
(478,	'Etc/GMT+12'),
(479,	'Etc/GMT+2'),
(480,	'Etc/GMT+3'),
(481,	'Etc/GMT+4'),
(482,	'Etc/GMT+5'),
(483,	'Etc/GMT+6'),
(484,	'Etc/GMT+7'),
(485,	'Etc/GMT+8'),
(486,	'Etc/GMT+9'),
(487,	'Etc/GMT-0'),
(488,	'Etc/GMT-1'),
(489,	'Etc/GMT-10'),
(490,	'Etc/GMT-11'),
(491,	'Etc/GMT-12'),
(492,	'Etc/GMT-13'),
(493,	'Etc/GMT-14'),
(494,	'Etc/GMT-2'),
(495,	'Etc/GMT-3'),
(496,	'Etc/GMT-4'),
(497,	'Etc/GMT-5'),
(498,	'Etc/GMT-6'),
(499,	'Etc/GMT-7'),
(500,	'Etc/GMT-8'),
(501,	'Etc/GMT-9'),
(502,	'Etc/GMT0'),
(503,	'Etc/Greenwich'),
(504,	'Etc/UCT'),
(505,	'Etc/Universal'),
(506,	'Etc/UTC'),
(507,	'Etc/Zulu'),
(508,	'Factory'),
(509,	'GB'),
(510,	'GB-Eire'),
(511,	'GMT'),
(512,	'GMT+0'),
(513,	'GMT-0'),
(514,	'GMT0'),
(515,	'Greenwich'),
(516,	'Hongkong'),
(517,	'HST'),
(518,	'Iceland'),
(519,	'Iran'),
(520,	'Israel'),
(521,	'Jamaica'),
(522,	'Japan'),
(523,	'Kwajalein'),
(524,	'Libya'),
(525,	'MET'),
(526,	'Mexico/BajaNorte'),
(527,	'Mexico/BajaSur'),
(528,	'Mexico/General'),
(529,	'MST'),
(530,	'MST7MDT'),
(531,	'Navajo'),
(532,	'NZ'),
(533,	'NZ-CHAT'),
(534,	'Poland'),
(535,	'Portugal'),
(536,	'PRC'),
(537,	'PST8PDT'),
(538,	'ROC'),
(539,	'ROK'),
(540,	'Singapore'),
(541,	'Turkey'),
(542,	'UCT'),
(543,	'Universal'),
(544,	'US/Alaska'),
(545,	'US/Aleutian'),
(546,	'US/Arizona'),
(547,	'US/Central'),
(548,	'US/East-Indiana'),
(549,	'US/Eastern'),
(550,	'US/Hawaii'),
(551,	'US/Indiana-Starke'),
(552,	'US/Michigan'),
(553,	'US/Mountain'),
(554,	'US/Pacific'),
(555,	'US/Pacific-New'),
(556,	'US/Samoa'),
(557,	'UTC'),
(558,	'W-SU'),
(559,	'WET'),
(560,	'Zulu');

DROP TABLE IF EXISTS `ps_warehouse`;
CREATE TABLE `ps_warehouse` (
  `id_warehouse` int unsigned NOT NULL AUTO_INCREMENT,
  `id_currency` int unsigned NOT NULL,
  `id_address` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_warehouse_carrier`;
CREATE TABLE `ps_warehouse_carrier` (
  `id_carrier` int unsigned NOT NULL,
  `id_warehouse` int unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_carrier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_carrier` (`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_warehouse_product_location`;
CREATE TABLE `ps_warehouse_product_location` (
  `id_warehouse_product_location` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `id_warehouse` int unsigned NOT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_warehouse_product_location`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_warehouse_shop`;
CREATE TABLE `ps_warehouse_shop` (
  `id_shop` int unsigned NOT NULL,
  `id_warehouse` int unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_shop`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_web_browser`;
CREATE TABLE `ps_web_browser` (
  `id_web_browser` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_web_browser` (`id_web_browser`, `name`) VALUES
(1,	'Safari'),
(2,	'Safari iPad'),
(3,	'Firefox'),
(4,	'Opera'),
(5,	'IE 6'),
(6,	'IE 7'),
(7,	'IE 8'),
(8,	'IE 9'),
(9,	'IE 10'),
(10,	'IE 11'),
(11,	'Chrome');

DROP TABLE IF EXISTS `ps_webservice_account`;
CREATE TABLE `ps_webservice_account` (
  `id_webservice_account` int NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint NOT NULL,
  PRIMARY KEY (`id_webservice_account`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_webservice_account_shop`;
CREATE TABLE `ps_webservice_account_shop` (
  `id_webservice_account` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_webservice_account`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_webservice_permission`;
CREATE TABLE `ps_webservice_permission` (
  `id_webservice_permission` int NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int NOT NULL,
  PRIMARY KEY (`id_webservice_permission`),
  UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  KEY `resource` (`resource`),
  KEY `method` (`method`),
  KEY `id_webservice_account` (`id_webservice_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ps_zone`;
CREATE TABLE `ps_zone` (
  `id_zone` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_zone` (`id_zone`, `name`, `active`) VALUES
(1,	'Europe',	1),
(2,	'North America',	1),
(3,	'Asia',	1),
(4,	'Africa',	1),
(5,	'Oceania',	1),
(6,	'South America',	1),
(7,	'Europe (non-EU)',	1),
(8,	'Central America/Antilla',	1);

DROP TABLE IF EXISTS `ps_zone_shop`;
CREATE TABLE `ps_zone_shop` (
  `id_zone` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_zone`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ps_zone_shop` (`id_zone`, `id_shop`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(6,	1),
(7,	1),
(8,	1);

-- 2024-05-23 21:13:48


INSERT INTO `ps_module` VALUES (49,'mymodule',1,'1.0.0');
INSERT INTO ps_module_shop (id_module, id_shop, enable_device) VALUES (49, 1, 7);
