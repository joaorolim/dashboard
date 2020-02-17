CREATE TABLE `dashboard` (
  `os` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_garantia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `assistencia` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `data_abertura` datetime NOT NULL,
  `eticket_in` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eticket_out` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `substatus` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_tatus` datetime NOT NULL,
  `linha_produto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `modelo_troca` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nf_compra` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `data_compra` date NOT NULL,
  `valor_roduto` decimal(10,2) NOT NULL,
  `nome_cliente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`os`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


/* SHOW VARIABLES LIKE "secure_file_priv" */

LOAD DATA INFILE 'C:/wamp64/tmp/Base_de_OS_PHP.csv' 
INTO TABLE dashboard 
FIELDS TERMINATED BY ';' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;