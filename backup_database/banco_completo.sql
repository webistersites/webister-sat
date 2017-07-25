-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: pde_andorinha
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bkp_produtos`
--

DROP TABLE IF EXISTS `bkp_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bkp_produtos` (
  `id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` char(255) CHARACTER SET utf8 NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `price` decimal(25,2) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT 'no_image.png',
  `tax` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cost` decimal(25,2) DEFAULT NULL,
  `tax_method` tinyint(1) DEFAULT '1',
  `quantity` decimal(15,2) DEFAULT '0.00',
  `barcode_symbology` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'code39',
  `type` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'standard',
  `details` text CHARACTER SET utf8,
  `alert_quantity` decimal(10,2) DEFAULT '0.00',
  `cozinha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bkp_produtos`
--

LOCK TABLES `bkp_produtos` WRITE;
/*!40000 ALTER TABLE `bkp_produtos` DISABLE KEYS */;
INSERT INTO `bkp_produtos` VALUES (1,'0001','Hamburquer',2,2.00,'99ba81363ddbfe5a92c93023e1fd550a.jpg','0',4.00,0,53.00,'code39','standard','Hamburguer com P?o de Hamburguer, queijo, carne, presunto e salada',5.00,1),(2,'0002','Mixto Quente',2,1.00,'3ba18844e23b27e8224f8fa6b1752208.jpg','0',3.00,0,8.00,'code39','standard','',5.00,1),(3,'0003','Cahorro Quente',2,2.00,'573bc5101fabefd864960416b1752899.jpg','0',3.00,0,4.00,'code39','standard','',5.00,1),(4,'0004','Bolo de Chocolate',2,2.00,'8ad58758122f3a886e859def53da6a6a.jpg','0',3.00,0,7.00,'code39','standard','',5.00,0),(5,'0005','Coxinha de Frango',2,2.00,'d3115abf501ce492bdf449f72f185fb1.jpg','0',3.00,0,9.00,'code39','standard','',5.00,0),(6,'0006','Empada',2,2.00,'76fed631b7861010869172aa83d78e0a.jpg','0',3.00,0,19.00,'code39','standard','',5.00,0),(7,'0007','Monteiro Lopes',2,2.00,'3274477f5b7d3ef257c4562c56ef387e.jpg','0',3.00,0,10.00,'code39','standard','',5.00,0),(8,'0008','Risole de Carne',2,2.00,'32a3ac97716a9dc68812aecbaf11840a.jpg','0',4.00,0,4.00,'code39','standard','',5.00,0),(9,'0009','Coxinha de Caranguejo',2,4.00,'8bd5b89b645b1bc2d4d08816b5ad3d0b.jpg','0',6.00,0,6.00,'code39','standard','',5.00,0),(10,'0010','Coxinha de Camar?o',2,4.00,'272825062f261b126f1996ed099b4b87.jpg','0',6.00,0,7.00,'code39','standard','',5.00,0),(11,'0011','Sonho',2,2.00,'1f56837339171226e7e33eb0c5e8eae0.jpg','0',3.00,0,7.00,'code39','standard','',5.00,0),(12,'0012','Lasanha',2,6.00,'fd1c25461a5fbb0597c68bb78100c6ec.jpg','0',9.00,0,10.00,'code39','standard','',5.00,0),(13,'0013','Torta de Chocolate',2,3.00,'11fcdf61a2d8c2d6b7c3e9c0a6996a54.jpg','0',6.00,0,10.00,'code39','standard','',5.00,0),(14,'0014','Fanta Laranja Lata',1,2.00,'f0ed23add960528f5da95d8fb2a8a106.jpg','0',4.00,0,10.00,'code39','standard','',5.00,0),(15,'0015','Coca-Cola Lata',1,2.00,'d1ae8344e2fdfc3fcd80a96bb1f00240.jpg','0',4.00,0,7.00,'code39','standard','',5.00,0),(16,'0016','?gua Mineral',1,2.00,'91b3bcff369f45e167c3544bad752912.jpg','0',3.00,0,9.00,'code39','standard','',5.00,0),(17,'0017','Suco de Laranja',1,4.00,'f4cab501731cb47389a6c1a9a54cf736.jpg','0',6.00,0,5.00,'code39','standard','',5.00,0),(18,'01','Combo M',2,10.99,'no_image.png','5',8.71,0,0.00,'code39','combo','',0.00,0),(19,'02','Batata M',2,7.99,'no_image.png','0',4.72,0,0.00,'code39','standard','',0.00,0),(20,'03','Cobertura Cheddar',2,1.00,'no_image.png','0',0.27,0,0.00,'code39','standard','',0.00,0),(21,'012','Pizza Calabresa',3,24.00,'no_image.png','0',12.00,1,10.00,'code39','standard','',1.00,1),(22,'20','Pizza Mussarela',3,26.00,'no_image.png','0',13.00,1,10.00,'code39','standard','',0.00,1),(23,'027','1/2 Pizza Mussarela',3,26.00,'no_image.png','0',6.00,0,11.00,'code39','standard','',0.00,1),(24,'01777','1/2 Calabresa',3,21.00,'no_image.png','0',6.00,0,9.00,'code39','standard','',0.00,1);
/*!40000 ALTER TABLE `bkp_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixa01`
--

DROP TABLE IF EXISTS `caixa01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixa01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_abertura` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `data_fechamento` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `valor_inicial` decimal(10,2) NOT NULL,
  `valor_final` decimal(10,2) NOT NULL,
  `status` varchar(45) CHARACTER SET utf8 NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa01`
--

LOCK TABLES `caixa01` WRITE;
/*!40000 ALTER TABLE `caixa01` DISABLE KEYS */;
INSERT INTO `caixa01` VALUES (1,'0000-00-00 00:00','0000-00-00 00:00',0.00,0.00,'Fechado',1),(19,'2017-02-15 14:55','2017-02-15 14:55',100.00,100.00,'Fechado',1),(20,'2017-02-15 19:08','2017-02-15 23:26',120.00,280.00,'Fechado',1),(21,'2017-02-17 22:09','2017-02-17 22:20',100.00,156.30,'Fechado',1),(22,'2017-02-17 23:12','2017-02-22 19:29',100.00,100.00,'Fechado',1),(23,'2017-02-22 20:05','2017-03-08 01:21',120.00,377.20,'Fechado',1),(24,'2017-03-08 17:13','2017-03-19 16:08',120.00,774.10,'Fechado',1),(25,'2017-03-19 16:13','2017-03-19 17:18',100.00,182.30,'Fechado',1),(26,'2017-03-20 12:32','2017-03-27 18:15',500.00,662.70,'Fechado',1),(27,'2017-03-27 22:57','2017-04-11 11:46',500.00,876.30,'Fechado',1),(28,'2017-04-11 14:13','2017-04-11 15:06',150.00,178.00,'Fechado',1),(29,'2017-04-11 15:07','2017-04-11 15:37',500.00,500.00,'Fechado',1),(30,'2017-04-11 15:37','2017-04-11 16:33',500.00,514.80,'Fechado',1),(31,'2017-04-11 16:34','2017-04-24 16:00',30.00,1274.00,'Fechado',1),(32,'2017-04-24 16:04','2017-04-25 21:58',120.00,678.70,'Fechado',1),(33,'2017-04-25 22:00','2017-04-25 22:19',50.00,171.95,'Fechado',17),(34,'2017-04-25 22:22','2017-04-25 22:39',20.00,91.49,'Fechado',17),(35,'2017-04-25 22:40','2017-04-25 22:45',50.00,139.90,'Fechado',17),(36,'2017-04-25 22:47','2017-04-26 00:35',50.00,171.38,'Fechado',17),(37,'2017-04-26 10:22','2017-04-26 12:14',0.00,71.97,'Fechado',17),(38,'2017-04-26 16:00','2017-04-26 16:08',30.00,30.00,'Fechado',17),(39,'2017-04-26 16:13','2017-04-27 00:34',30.00,796.14,'Fechado',17),(40,'2017-04-27 01:17','2017-04-27 01:19',0.00,0.00,'Fechado',17),(41,'2017-04-27 20:56','2017-04-28 16:01',400.00,874.35,'Fechado',17),(42,'2017-04-28 16:07','2017-04-29 00:21',135.00,1438.37,'Fechado',17),(43,'2017-04-29 07:57','2017-04-29 15:55',53.00,768.84,'Fechado',17),(44,'2017-04-29 15:58','2017-04-29 16:03',35.00,35.00,'Fechado',17),(45,'2017-04-29 16:08','2017-04-30 00:01',35.00,1590.22,'Fechado',17),(46,'2017-04-30 06:53','2017-04-30 08:26',35.00,35.00,'Fechado',17),(47,'2017-04-30 08:27','2017-04-30 15:46',2.00,3.50,'Fechado',17),(48,'2017-04-30 16:01','2017-05-01 01:00',37.00,893.04,'Fechado',17),(49,'2017-05-01 15:34','2017-05-01 15:44',0.00,6.97,'Fechado',17),(50,'2017-05-01 16:34','2017-05-02 00:03',30.00,1197.44,'Fechado',17),(51,'2017-05-02 16:05','2017-05-03 00:14',30.00,464.83,'Fechado',17),(52,'2017-05-03 16:10','2017-05-03 23:36',35.00,336.57,'Fechado',17),(53,'2017-05-03 23:38','2017-05-03 23:38',30.00,30.00,'Fechado',17),(54,'2017-05-03 23:52','2017-05-04 00:06',52.00,793.93,'Fechado',17),(55,'2017-05-04 07:12','2017-05-05 00:32',58.00,806.75,'Fechado',17),(56,'2017-05-05 16:12','2017-05-12 02:03',30.00,1022.98,'Fechado',17),(57,'2017-05-12 02:03','2017-05-22 13:23',120.00,139.99,'Fechado',17),(58,'2017-06-05 16:55','2017-06-16 00:25',120.00,120.00,'Fechado',1),(59,'2017-06-16 00:26','2017-06-16 00:26',100.00,100.00,'Fechado',1),(60,'2017-06-16 11:43','2017-06-22 01:07',120.00,120.00,'Fechado',1),(61,'2017-06-22 10:40','2017-06-22 10:40',110.00,110.00,'Fechado',1),(62,'2017-06-23 16:51','-',120.00,0.00,'Aberto',1);
/*!40000 ALTER TABLE `caixa01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixa02`
--

DROP TABLE IF EXISTS `caixa02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixa02` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_abertura` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `data_fechamento` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `valor_inicial` decimal(10,2) NOT NULL,
  `valor_final` decimal(10,2) NOT NULL,
  `status` varchar(45) CHARACTER SET utf8 NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa02`
--

LOCK TABLES `caixa02` WRITE;
/*!40000 ALTER TABLE `caixa02` DISABLE KEYS */;
INSERT INTO `caixa02` VALUES (1,'0000-00-00 00:00','000-00-00 00:00',0.00,0.00,'Fechado',3),(2,'2017-01-25 00:49','000-00-00 00:00',0.00,0.00,'Fechado',2),(3,'2017-05-22 13:20','000-00-00 00:00',120.00,0.00,'Fechado',1),(4,'2017-06-16 00:22','000-00-00 00:00',100.00,0.00,'Fechado',0);
/*!40000 ALTER TABLE `caixa02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(45) NOT NULL,
  `permissao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'admin',1),(2,'Gerente',1),(3,'Operadora',0),(4,'Garçom',0),(5,'Motoboy',0);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Pizzas'),(2,'Esfihas'),(3,'Salgados'),(4,'Beirutes'),(5,'Porcoes'),(6,'Bebidas'),(7,'Pasteis'),(8,'Lanches'),(9,'Doces'),(10,'Sorvetes'),(11,'Balas');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 NOT NULL,
  `cf1` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cf2` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `celular` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `taxa_de_entrega` decimal(10,2) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `endereco` varchar(125) CHARACTER SET utf8 DEFAULT NULL,
  `bairro` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cep` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `delivery` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Cliente Padrão','123','','1122222222','',3.00,'','Rua teste','Teste','01112-234',''),(3,'Junior','188','','1122625640','',2.00,'','Rua doutor valentim bouças','Jardim Tremembé','0',''),(6,'Felipe','54','','123123123','',3.00,'','Rua planalto','jardim palmares','12345-678',''),(7,'Patricia','199','','22222222','',4.00,'','Rua generica','Vila zilda','02323-040',''),(8,'Godofredo','167','','24360912','',4.00,'','Rua tenente amador','Vila Cachoeira','12345060',''),(9,'Carol','120','','213123123','',2.00,'','Rua Lucas Alaman','Jardim Tremembe','123123123',''),(10,'teste','1','','12123123','',0.00,'','teste','','123123123','');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contato` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) DEFAULT NULL,
  `FONE` varchar(15) NOT NULL,
  `CELULAR` varchar(15) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contatos` (
  `id` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `telefone` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (1,'Diogo Cezar','xgordo@gmail.com','(43) 3523-2956'),(2,'Mario Sergio','padariajoia@gmail.com','(43) 9915-7944'),(3,'JoÃ£o da Silva','joao@gmail.com','(41) 3453-9876'),(4,'Junior','teste','1231231'),(5,'Felipe','teste12','1241414'),(6,'outro gato','outro@teste','7783894');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpf_nota`
--

DROP TABLE IF EXISTS `cpf_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpf_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `origem` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpf_nota`
--

LOCK TABLES `cpf_nota` WRITE;
/*!40000 ALTER TABLE `cpf_nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpf_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechamentos`
--

DROP TABLE IF EXISTS `fechamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fechamentos` (
  `id` int(11) NOT NULL DEFAULT '0',
  `id_caixa` int(11) DEFAULT NULL,
  `data_abertura` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `data_fechamento` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `valor_inicial` decimal(10,2) NOT NULL,
  `valor_final` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechamentos`
--

LOCK TABLES `fechamentos` WRITE;
/*!40000 ALTER TABLE `fechamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pagamento`
--

DROP TABLE IF EXISTS `forma_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forma_pagamento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pagamento`
--

LOCK TABLES `forma_pagamento` WRITE;
/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;
INSERT INTO `forma_pagamento` VALUES (1,'Dinheiro','money icon','din_vendaDAO.php'),(2,'Cartao de Debito','payment icon','vendaDAO.php'),(3,'Cartao de Credito','credit card alternative icon','vendaDAO.php'),(4,'Dinheiro + Debito','',''),(5,'Dinheiro + Credito','','');
/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacao_caixa01`
--

DROP TABLE IF EXISTS `movimentacao_caixa01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimentacao_caixa01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(10,2) NOT NULL,
  `tipo_movimentacao` varchar(2) NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacao_caixa01`
--

LOCK TABLES `movimentacao_caixa01` WRITE;
/*!40000 ALTER TABLE `movimentacao_caixa01` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimentacao_caixa01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nome_nota`
--

DROP TABLE IF EXISTS `nome_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nome_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nome_nota`
--

LOCK TABLES `nome_nota` WRITE;
/*!40000 ALTER TABLE `nome_nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `nome_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pde_fato_vendas`
--

DROP TABLE IF EXISTS `pde_fato_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pde_fato_vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_venda` varchar(60) NOT NULL,
  `origem_venda` varchar(60) NOT NULL,
  `num_nota_fiscal` int(11) NOT NULL,
  `valor_nota_fiscal` decimal(10,2) DEFAULT NULL,
  `id_forma_pagamento` int(11) NOT NULL,
  `id_abertura` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=689 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pde_fato_vendas`
--

LOCK TABLES `pde_fato_vendas` WRITE;
/*!40000 ALTER TABLE `pde_fato_vendas` DISABLE KEYS */;
INSERT INTO `pde_fato_vendas` VALUES (1,'2017-02-10 03:49','Caixa 01',1,0.00,3,2,'A',0),(43,'2017-02-15 21:43','Delivery',2,0.00,3,20,'C',0),(44,'2017-02-15 21:43','Delivery',3,28.00,2,20,'A',0),(45,'2017-02-15 21:44','Delivery',4,30.00,3,20,'A',0),(46,'2017-02-15 21:44','Delivery',5,30.00,2,20,'A',0),(47,'2017-02-15 22:43','Delivery',6,3.30,3,20,'A',0),(48,'2017-02-15 22:45','Delivery',7,30.00,3,20,'A',0),(49,'2017-02-17 22:13','Delivery',8,28.30,3,21,'A',0),(50,'2017-02-17 22:20','Delivery',9,28.00,2,21,'A',0),(51,'2017-02-23 18:47','Caixa 01',10,15.00,1,23,'A',0),(52,'2017-03-01 18:48','Caixa 01',11,0.00,3,23,'A',0),(53,'2017-03-06 22:00','Delivery',12,26.00,1,23,'A',0),(54,'2017-03-06 22:28','Delivery',13,3.30,1,23,'A',0),(55,'2017-03-07 00:54','Delivery',14,4.80,3,23,'A',0),(56,'2017-03-07 01:22','Delivery',15,54.00,2,23,'A',0),(57,'2017-03-07 01:27','Delivery',16,26.00,2,23,'A',0),(58,'2017-03-07 18:29','Delivery',17,3.30,1,23,'A',0),(59,'2017-03-07 22:36','Delivery',18,14.80,1,23,'A',0),(60,'2017-03-07 22:41','Delivery',19,8.30,4,23,'A',0),(61,'2017-03-08 01:11','Caixa 01',20,0.00,1,23,'A',0),(62,'2017-03-08 01:13','Caixa 01',21,0.00,1,23,'A',0),(63,'2017-03-08 01:17','Caixa 01',22,29.30,1,23,'A',0),(64,'2017-03-08 01:18','Caixa 01',23,11.30,2,23,'A',0),(65,'2017-03-08 01:19','Caixa 01',24,10.00,5,23,'A',0),(66,'2017-03-14 17:27','Mesa 1',25,32.00,1,24,'A',0),(67,'2017-03-14 18:01','Mesa 1',26,28.00,2,24,'A',0),(68,'2017-03-14 18:26','Mesa 18',27,11.30,1,24,'A',0),(69,'2017-03-14 23:25','Caixa 01',28,12.80,1,24,'A',0),(70,'2017-03-14 23:26','Mesa 6',29,38.00,2,24,'A',0),(71,'2017-03-16 22:48','Caixa 01',30,11.30,2,24,'A',0),(72,'2017-03-16 22:49','Caixa 01',31,28.00,1,24,'A',0),(73,'2017-03-16 23:46','Caixa 01',32,24.00,1,24,'A',0),(74,'2017-03-16 23:48','Caixa 01',33,24.00,1,24,'A',0),(75,'2017-03-16 23:57','Caixa 01',34,28.00,1,24,'A',0),(76,'2017-03-16 23:59','Caixa 01',35,24.00,1,24,'A',0),(77,'2017-03-17 00:01','Caixa 01',36,24.00,1,24,'A',0),(78,'2017-03-17 00:02','Caixa 01',37,24.00,1,24,'A',0),(79,'2017-03-17 00:02','Caixa 01',38,25.00,2,24,'A',0),(80,'2017-03-17 00:07','Caixa 01',39,24.00,3,24,'A',0),(81,'2017-03-17 00:07','Caixa 01',40,24.00,1,24,'A',0),(82,'2017-03-17 00:11','Delivery',41,31.00,1,24,'A',0),(83,'2017-03-17 00:16','Mesa 2',42,28.00,1,24,'A',0),(84,'2017-03-17 00:16','Mesa 2',43,24.00,2,24,'C',0),(85,'2017-03-17 00:26','Mesa 1',44,24.00,3,24,'A',0),(86,'2017-03-17 00:31','Mesa 1',45,1.50,2,24,'C',0),(87,'2017-03-18 14:43','Caixa 01',46,13.80,1,24,'A',0),(88,'2017-03-18 14:44','Mesa 2',47,2.80,1,24,'C',0),(89,'2017-03-19 16:14','Caixa 01',48,3.80,1,25,'A',0),(90,'2017-03-19 17:01','Delivery',49,27.00,2,25,'A',0),(91,'2017-03-19 17:02','Delivery',50,26.00,3,25,'A',0),(92,'2017-03-20 13:00','Delivery',51,26.00,2,26,'A',0),(93,'2017-03-20 22:03','Delivery',52,28.00,3,26,'A',0),(94,'2017-03-22 18:06','Delivery',53,26.90,1,26,'A',0),(95,'2017-03-22 18:06','Delivery',54,26.00,3,26,'A',0),(96,'2017-03-25 17:23','Delivery',55,26.00,1,26,'A',3),(97,'2017-03-25 17:27','Caixa 01',56,2.80,3,26,'A',0),(98,'2017-03-25 17:28','Mesa 4',57,2.80,2,26,'A',0),(99,'2017-04-02 18:13','Mesa 4',58,24.00,1,27,'A',0),(100,'2017-04-02 18:33','Caixa 01',59,9.30,2,27,'A',0),(101,'2017-04-03 23:58','Caixa 01',60,9.50,1,27,'A',0),(102,'2017-04-04 00:02','Caixa 01',61,46.00,1,27,'A',0),(103,'2017-04-05 01:31','Caixa 01',62,33.00,1,27,'A',0),(104,'2017-04-06 22:14','Delivery',63,16.80,2,27,'A',8),(105,'2017-04-07 21:22','Caixa 01',64,15.30,2,27,'A',0),(106,'2017-04-07 21:24','Caixa 01',65,15.00,3,27,'A',0),(107,'2017-04-07 21:25','Caixa 01',66,22.50,2,27,'A',0),(108,'2017-04-07 21:29','Mesa 4',67,9.30,2,27,'A',0),(109,'2017-04-07 21:47','Caixa 01',68,9.50,2,27,'A',0),(110,'2017-04-07 21:48','Mesa 4',69,10.00,2,27,'A',0),(111,'2017-04-08 19:43','Caixa 01',70,4.00,3,27,'A',0),(112,'2017-04-11 03:36','Mesa 2',71,27.00,1,27,'A',0),(113,'2017-04-11 03:36','Mesa 1',72,25.00,2,27,'A',0),(114,'2017-04-11 14:16','Mesa 1',73,28.00,1,28,'A',0),(115,'2017-04-11 15:39','Caixa 01',74,10.50,1,30,'A',0),(116,'2017-04-11 16:24','Mesa 3',75,4.30,1,30,'A',0),(117,'2017-04-12 20:05','Caixa 01',76,2.80,2,31,'A',0),(118,'2017-04-12 21:25','Caixa 01',77,2.80,2,31,'A',0),(119,'2017-04-12 21:29','Caixa 01',78,24.00,3,31,'A',0),(120,'2017-04-12 21:37','Caixa 01',79,10.50,2,31,'A',0),(121,'2017-04-12 21:37','Caixa 01',80,8.00,1,31,'A',0),(122,'2017-04-12 21:38','Delivery',81,3.30,1,31,'A',3),(123,'2017-04-13 00:11','Delivery',82,4.50,3,31,'A',3),(124,'2017-04-13 00:44','Delivery',83,3.50,2,31,'A',3),(125,'2017-04-13 00:45','Delivery',84,25.90,3,31,'A',3),(126,'2017-04-13 00:50','Delivery',85,5.30,2,31,'A',7),(127,'2017-04-13 01:27','Delivery',86,60.00,1,31,'A',8),(128,'2017-04-13 02:19','Caixa 01',87,1.30,2,31,'A',0),(129,'2017-04-17 15:11','Delivery',88,27.90,2,31,'A',8),(130,'2017-04-17 15:49','Mesa 15',89,20.00,1,31,'A',0),(131,'2017-04-18 00:52','Delivery',90,30.00,2,31,'A',3),(132,'2017-04-18 00:53','Delivery',91,30.00,2,31,'A',3),(133,'2017-04-19 18:40','Caixa 01',92,1.30,2,31,'A',0),(134,'2017-04-19 18:45','Caixa 01',93,1.30,2,31,'A',0),(135,'2017-04-19 18:48','Caixa 01',94,24.00,1,31,'A',0),(136,'2017-04-19 19:06','Caixa 01',95,25.00,1,31,'A',0),(137,'2017-04-19 22:54','Mesa 3',96,9.30,2,31,'A',0),(138,'2017-04-19 22:55','Caixa 01',97,43.00,2,31,'A',0),(139,'2017-04-19 22:58','Caixa 01',98,33.90,3,31,'A',0),(140,'2017-04-20 02:25','Caixa 01',99,138.00,2,31,'A',0),(141,'2017-04-20 02:33','Caixa 01',100,24.00,2,31,'A',0),(142,'2017-04-20 04:36','Caixa 01',101,1.30,2,31,'A',0),(143,'2017-04-20 04:38','Caixa 01',102,9.50,1,31,'A',0),(144,'2017-04-20 04:41','Caixa 01',103,1.30,3,31,'A',0),(145,'2017-04-20 04:41','Caixa 01',104,2.00,2,31,'A',0),(146,'2017-04-20 04:53','Caixa 01',105,12.50,3,31,'A',0),(147,'2017-04-20 16:03','Caixa 01',106,25.00,2,31,'A',0),(148,'2017-04-20 16:20','Caixa 01',107,25.00,2,31,'A',0),(149,'2017-04-20 16:21','Caixa 01',108,6.30,1,31,'A',0),(150,'2017-04-20 16:38','Caixa 01',109,29.00,3,31,'A',0),(151,'2017-04-20 16:41','Caixa 01',110,29.00,3,31,'A',0),(152,'2017-04-20 17:05','Caixa 01',111,24.00,3,31,'A',0),(153,'2017-04-20 17:10','Caixa 01',112,2.00,2,31,'A',0),(154,'2017-04-20 17:11','Caixa 01',113,1.30,2,31,'A',0),(155,'2017-04-20 17:13','Caixa 01',114,3.50,2,31,'A',0),(156,'2017-04-20 17:16','Caixa 01',115,9.30,2,31,'A',0),(157,'2017-04-20 17:18','Caixa 01',116,7.50,1,31,'A',0),(158,'2017-04-20 17:18','Caixa 01',117,1.30,3,31,'A',0),(159,'2017-04-20 17:19','Caixa 01',118,1.30,2,31,'A',0),(160,'2017-04-20 17:20','Caixa 01',119,2.00,3,31,'A',0),(161,'2017-04-20 17:22','Caixa 01',120,24.00,3,31,'A',0),(162,'2017-04-20 17:29','Caixa 01',121,1.30,2,31,'A',0),(163,'2017-04-20 17:46','Caixa 01',122,28.00,3,31,'A',0),(164,'2017-04-20 17:56','Caixa 01',123,25.00,3,31,'A',0),(165,'2017-04-20 18:09','Caixa 01',124,24.00,3,31,'A',0),(166,'2017-04-20 18:20','Caixa 01',125,25.00,1,31,'A',0),(167,'2017-04-20 18:33','Caixa 01',126,25.00,1,31,'C',0),(168,'2017-04-21 20:50','Caixa 01',127,33.20,1,31,'A',0),(169,'2017-04-24 15:43','Caixa 01',128,29.50,2,31,'A',0),(170,'2017-04-24 15:44','Delivery',129,3.30,3,31,'A',3),(171,'2017-04-24 17:32','Mesa 2',130,28.00,2,32,'A',0),(172,'2017-04-24 17:48','Caixa 01',131,56.10,2,32,'C',0),(173,'2017-04-24 17:49','Caixa 01',132,1.30,3,32,'A',0),(174,'2017-04-24 17:55','Caixa 01',133,8.30,1,32,'A',0),(175,'2017-04-24 22:08','Delivery',134,27.00,2,32,'A',3),(176,'2017-04-25 02:17','Caixa 01',135,87.90,2,32,'A',0),(177,'2017-04-25 02:18','Caixa 01',136,117.50,1,32,'A',0),(178,'2017-04-25 07:25','Delivery',137,33.50,2,32,'A',1),(179,'2017-04-25 07:27','Delivery',138,36.00,2,32,'A',3),(180,'2017-04-25 07:30','Delivery',139,37.00,3,32,'A',6),(181,'2017-04-25 07:36','Caixa 01',140,28.00,3,32,'A',0),(182,'2017-04-25 09:30','Caixa 01',141,60.00,2,32,'A',0),(183,'2017-04-25 22:05','Mesa 1',142,24.00,2,33,'A',0),(184,'2017-04-25 22:07','Caixa 01',143,26.00,2,33,'A',0),(185,'2017-04-25 22:09','Caixa 01',144,19.99,2,33,'A',0),(186,'2017-04-25 22:09','Mesa 1',145,36.00,2,33,'A',0),(187,'2017-04-25 22:15','Mesa 15',146,2.00,1,33,'A',0),(188,'2017-04-25 22:16','Mesa 15',147,4.99,2,33,'A',0),(189,'2017-04-25 22:31','Mesa 2',148,15.50,2,34,'A',0),(190,'2017-04-25 22:31','Caixa 01',149,26.99,2,34,'C',0),(191,'2017-04-25 22:36','Mesa 2',150,26.50,2,34,'A',0),(192,'2017-04-25 22:45','Caixa 01',151,20.98,1,35,'A',0),(193,'2017-04-25 22:45','Caixa 01',152,4.99,2,35,'A',0),(194,'2017-04-25 22:45','Caixa 01',153,59.97,3,35,'A',0),(195,'2017-04-25 22:53','Mesa 3',154,59.48,3,36,'A',0),(196,'2017-04-25 22:56','Mesa 3',155,5.50,2,36,'A',0),(197,'2017-04-25 22:58','Mesa 3',156,35.99,2,36,'A',0),(198,'2017-04-25 22:59','Mesa 3',157,0.99,1,36,'A',0),(199,'2017-04-25 23:04','Caixa 01',158,0.99,2,36,'A',0),(200,'2017-04-25 23:05','Caixa 01',159,8.99,2,36,'A',0),(201,'2017-04-26 10:36','Mesa 1',160,23.99,2,37,'A',0),(202,'2017-04-26 11:01','Mesa 1',161,19.99,2,37,'A',0),(203,'2017-04-26 11:02','Caixa 01',162,12.99,2,37,'A',0),(204,'2017-04-26 11:08','Caixa 01',163,3.50,1,37,'A',0),(205,'2017-04-26 16:23','Caixa 01',164,9.50,1,39,'A',0),(206,'2017-04-26 16:27','Caixa 01',165,4.00,1,39,'A',0),(207,'2017-04-26 16:38','Caixa 01',166,9.50,2,39,'A',0),(208,'2017-04-26 16:53','Caixa 01',167,2.49,1,39,'A',0),(209,'2017-04-26 17:10','Mesa 1',168,11.00,1,39,'A',0),(210,'2017-04-26 17:13','Caixa 01',169,5.50,1,39,'A',0),(211,'2017-04-26 17:17','Mesa 3',170,6.99,2,39,'A',0),(212,'2017-04-26 17:32','Mesa 2',171,10.50,1,39,'A',0),(213,'2017-04-26 17:33','Caixa 01',172,0.99,1,39,'A',0),(214,'2017-04-26 17:37','Caixa 01',173,0.99,1,39,'A',0),(215,'2017-04-26 17:40','Caixa 01',174,2.99,1,39,'A',0),(216,'2017-04-26 17:55','Mesa 6',175,6.49,2,39,'A',0),(217,'2017-04-26 18:06','Mesa 5',176,12.00,1,39,'A',0),(218,'2017-04-26 18:08','Caixa 01',177,0.99,1,39,'A',0),(219,'2017-04-26 18:30','Caixa 01',178,23.49,2,39,'A',0),(220,'2017-04-26 18:37','Mesa 2',179,NULL,1,39,'A',0),(221,'2017-04-26 18:38','Mesa 3',180,4.00,1,39,'A',0),(222,'2017-04-26 18:38','Mesa 4',181,15.00,1,39,'A',0),(223,'2017-04-26 18:51','Caixa 01',182,11.50,1,39,'C',0),(224,'2017-04-26 18:52','Caixa 01',183,11.50,1,39,'A',0),(225,'2017-04-26 18:57','Mesa 1',184,3.50,2,39,'A',0),(226,'2017-04-26 19:02','Caixa 01',185,1.50,3,39,'A',0),(227,'2017-04-26 19:03','Mesa 2',186,0.99,2,39,'A',0),(228,'2017-04-26 19:06','Caixa 01',187,0.99,1,39,'A',0),(229,'2017-04-26 19:18','Caixa 01',188,2.99,1,39,'A',0),(230,'2017-04-26 19:24','Caixa 01',189,13.48,1,39,'A',0),(231,'2017-04-26 19:54','Caixa 01',190,2.99,3,39,'A',0),(232,'2017-04-26 20:04','Mesa 2',191,2.99,1,39,'A',0),(233,'2017-04-26 20:11','Mesa 2',192,19.99,1,39,'A',0),(234,'2017-04-26 20:30','Mesa 3',193,3.99,1,39,'A',0),(235,'2017-04-26 20:34','Caixa 01',194,2.49,2,39,'A',0),(236,'2017-04-26 20:35','Caixa 01',195,2.49,2,39,'A',0),(237,'2017-04-26 20:38','Caixa 01',196,2.49,2,39,'A',0),(238,'2017-04-26 20:53','Caixa 01',197,5.50,2,39,'A',0),(239,'2017-04-26 20:56','Caixa 01',198,1.50,2,39,'A',0),(240,'2017-04-26 21:06','Mesa 1',199,9.99,1,39,'A',0),(241,'2017-04-26 21:49','Caixa 01',200,7.99,1,39,'A',0),(242,'2017-04-26 22:18','Mesa 1',201,16.50,1,39,'A',0),(243,'2017-04-26 22:19','Mesa 3',202,23.48,1,39,'A',0),(244,'2017-04-26 22:22','Mesa 10',203,12.49,1,39,'A',0),(245,'2017-04-26 22:24','Mesa 1',204,39.98,3,39,'A',0),(246,'2017-04-26 22:31','Mesa 1',205,19.99,1,39,'A',0),(247,'2017-04-26 22:44','Caixa 01',206,NULL,1,39,'A',0),(248,'2017-04-27 20:57','Mesa 1',207,51.99,2,41,'A',0),(249,'2017-04-27 20:58','Mesa 3',208,NULL,2,41,'A',0),(250,'2017-04-27 21:12','Mesa 2',209,12.99,1,41,'A',0),(251,'2017-04-27 21:13','Caixa 01',210,26.00,1,41,'A',0),(252,'2017-04-27 21:34','Caixa 01',211,3.49,2,41,'A',0),(253,'2017-04-27 21:38','Caixa 01',212,51.50,1,41,'A',0),(254,'2017-04-27 21:41','Caixa 01',213,19.99,1,41,'A',0),(255,'2017-04-27 22:09','Caixa 01',214,8.60,2,41,'A',0),(256,'2017-04-27 22:10','Caixa 01',215,8.60,3,41,'A',0),(257,'2017-04-27 22:11','Mesa 2',216,4.50,1,41,'A',0),(258,'2017-04-27 22:22','Mesa 2',217,4.50,2,41,'A',0),(259,'2017-04-27 22:24','Mesa 2',218,28.00,2,41,'A',0),(260,'2017-04-27 22:38','Mesa 1',219,4.99,1,41,'A',0),(261,'2017-04-27 22:48','Mesa 2',220,3.49,1,41,'A',0),(262,'2017-04-27 22:53','Mesa 2',221,7.99,2,41,'A',0),(263,'2017-04-27 23:10','Mesa 2',222,0.99,2,41,'A',0),(264,'2017-04-27 23:11','Mesa 2',223,2.99,1,41,'A',0),(265,'2017-04-28 16:08','Caixa 01',224,2.99,1,42,'A',0),(266,'2017-04-28 16:21','Caixa 01',225,8.49,1,42,'A',0),(267,'2017-04-28 16:25','Caixa 01',226,3.00,2,42,'A',0),(268,'2017-04-28 16:48','Caixa 01',227,0.99,1,42,'A',0),(269,'2017-04-28 17:00','Caixa 01',228,4.99,1,42,'A',0),(270,'2017-04-28 17:05','Mesa 2',229,8.49,1,42,'A',0),(271,'2017-04-28 17:16','Mesa 1',230,2.00,2,42,'A',0),(272,'2017-04-28 17:32','Caixa 01',231,10.59,2,42,'A',0),(273,'2017-04-28 17:38','Caixa 01',232,0.99,1,42,'A',0),(274,'2017-04-28 17:43','Caixa 01',233,0.99,1,42,'A',0),(275,'2017-04-28 17:46','Caixa 01',234,5.49,2,42,'A',0),(276,'2017-04-28 17:52','Caixa 01',235,2.99,2,42,'A',0),(277,'2017-04-28 18:14','Caixa 01',236,16.49,2,42,'A',0),(278,'2017-04-28 18:20','Caixa 01',237,8.49,1,42,'A',0),(279,'2017-04-28 18:25','Caixa 01',238,0.99,1,42,'A',0),(280,'2017-04-28 18:31','Mesa 2',239,7.50,1,42,'A',0),(281,'2017-04-28 18:38','Caixa 01',240,6.99,2,42,'A',0),(282,'2017-04-28 18:41','Caixa 01',241,6.00,1,42,'A',0),(283,'2017-04-28 18:43','Mesa 1',242,8.49,1,42,'A',0),(284,'2017-04-28 18:49','Mesa 4',243,3.00,1,42,'A',0),(285,'2017-04-28 18:50','Caixa 01',244,0.99,1,42,'A',0),(286,'2017-04-28 18:50','Caixa 01',245,0.99,1,42,'A',0),(287,'2017-04-28 18:57','Mesa 3',246,3.00,1,42,'A',0),(288,'2017-04-28 18:59','Caixa 01',247,11.49,1,42,'A',0),(289,'2017-04-28 19:09','Caixa 01',248,1.50,1,42,'A',0),(290,'2017-04-28 19:13','Caixa 01',249,15.09,2,42,'A',0),(291,'2017-04-28 19:14','Mesa 4',250,7.50,2,42,'A',0),(292,'2017-04-28 19:15','Mesa 2',251,7.49,1,42,'A',0),(293,'2017-04-28 19:21','Mesa 2',252,16.09,2,42,'A',0),(294,'2017-04-28 19:22','Caixa 01',253,4.49,1,42,'A',0),(295,'2017-04-28 19:24','Mesa 2',254,3.00,2,42,'A',0),(296,'2017-04-28 19:29','Caixa 01',255,0.99,1,42,'A',0),(297,'2017-04-28 19:31','Caixa 01',256,0.99,1,42,'A',0),(298,'2017-04-28 19:33','Caixa 01',257,2.99,1,42,'A',0),(299,'2017-04-28 19:44','Caixa 01',258,27.50,1,42,'A',0),(300,'2017-04-28 19:46','Caixa 01',259,0.99,1,42,'A',0),(301,'2017-04-28 19:47','Caixa 01',260,4.00,1,42,'A',0),(302,'2017-04-28 19:49','Caixa 01',261,8.00,1,42,'A',0),(303,'2017-04-28 19:50','Caixa 01',262,4.99,2,42,'A',0),(304,'2017-04-28 19:52','Caixa 01',263,7.99,2,42,'A',0),(305,'2017-04-28 20:09','Mesa 3',264,7.50,1,42,'A',0),(306,'2017-04-28 20:09','Mesa 4',265,4.50,1,42,'A',0),(307,'2017-04-28 20:18','Caixa 01',266,11.49,1,42,'A',0),(308,'2017-04-28 20:23','Caixa 01',267,5.49,1,42,'A',0),(309,'2017-04-28 20:26','Mesa 1',268,27.49,2,42,'A',0),(310,'2017-04-28 20:28','Caixa 01',269,2.49,3,42,'A',0),(311,'2017-04-28 20:30','Caixa 01',270,5.49,1,42,'A',0),(312,'2017-04-28 20:39','Mesa 2',271,5.49,1,42,'A',0),(313,'2017-04-28 20:39','Caixa 01',272,2.99,2,42,'A',0),(314,'2017-04-28 20:42','Mesa 5',273,15.99,1,42,'A',0),(315,'2017-04-28 20:43','Caixa 01',274,10.59,2,42,'A',0),(316,'2017-04-28 20:44','Mesa 1',275,4.50,1,42,'A',0),(317,'2017-04-28 20:48','Mesa 4',276,3.99,1,42,'A',0),(318,'2017-04-28 20:51','Caixa 01',277,0.99,1,42,'A',0),(319,'2017-04-28 20:52','Mesa 1',278,12.00,1,42,'A',0),(320,'2017-04-28 20:52','Mesa 1',279,3.99,1,42,'A',0),(321,'2017-04-28 20:58','Caixa 01',280,0.99,2,42,'A',0),(322,'2017-04-28 21:04','Caixa 01',281,0.99,3,42,'A',0),(323,'2017-04-28 21:07','Caixa 01',282,2.99,1,42,'A',0),(324,'2017-04-28 21:11','Caixa 01',283,15.09,2,42,'A',0),(325,'2017-04-28 21:16','Caixa 01',284,0.99,2,42,'A',0),(326,'2017-04-28 21:17','Caixa 01',285,0.99,2,42,'A',0),(327,'2017-04-28 21:17','Caixa 01',286,0.99,2,42,'A',0),(328,'2017-04-28 21:19','Caixa 01',287,0.99,2,42,'A',0),(329,'2017-04-28 21:20','Caixa 01',288,0.99,2,42,'A',0),(330,'2017-04-28 21:36','Caixa 01',289,0.99,1,42,'A',0),(331,'2017-04-28 21:47','Caixa 01',290,0.99,1,42,'A',0),(332,'2017-04-28 21:49','Mesa 1',291,32.00,1,42,'A',0),(333,'2017-04-28 21:55','Mesa 2',292,55.98,2,42,'A',0),(334,'2017-04-28 21:58','Mesa 1',293,6.99,2,42,'A',0),(335,'2017-04-28 22:08','Mesa 3',294,5.99,3,42,'A',0),(336,'2017-04-28 22:19','Caixa 01',295,5.99,2,42,'A',0),(337,'2017-04-28 22:30','Caixa 01',296,0.99,1,42,'A',0),(338,'2017-04-28 22:41','Caixa 01',297,0.99,3,42,'A',0),(339,'2017-04-28 22:42','Caixa 01',298,0.99,1,42,'A',0),(340,'2017-04-28 22:50','Caixa 01',299,9.99,2,42,'A',0),(341,'2017-04-29 07:59','Caixa 01',300,1.50,1,43,'A',0),(342,'2017-04-29 08:02','Caixa 01',301,1.50,1,43,'A',0),(343,'2017-04-29 08:41','Caixa 01',302,3.50,1,43,'A',0),(344,'2017-04-29 08:51','Caixa 01',303,2.99,1,43,'A',0),(345,'2017-04-29 08:53','Caixa 01',304,3.50,1,43,'A',0),(346,'2017-04-29 09:02','Caixa 01',305,2.00,1,43,'A',0),(347,'2017-04-29 09:06','Caixa 01',306,1.50,1,43,'A',0),(348,'2017-04-29 09:10','Caixa 01',307,1.50,1,43,'A',0),(349,'2017-04-29 09:14','Caixa 01',308,2.00,1,43,'A',0),(350,'2017-04-29 09:29','Caixa 01',309,1.50,1,43,'A',0),(351,'2017-04-29 09:48','Caixa 01',310,1.50,1,43,'A',0),(352,'2017-04-29 09:56','Caixa 01',311,1.50,1,43,'A',0),(353,'2017-04-29 10:00','Caixa 01',312,1.50,2,43,'A',0),(354,'2017-04-29 10:03','Caixa 01',313,26.00,1,43,'A',0),(355,'2017-04-29 10:04','Caixa 01',314,3.50,1,43,'A',0),(356,'2017-04-29 10:06','Caixa 01',315,3.50,1,43,'A',0),(357,'2017-04-29 10:08','Caixa 01',316,1.50,1,43,'A',0),(358,'2017-04-29 10:13','Caixa 01',317,1.50,1,43,'A',0),(359,'2017-04-29 10:14','Caixa 01',318,119.94,1,43,'A',0),(360,'2017-04-29 10:43','Caixa 01',319,1.50,1,43,'A',0),(361,'2017-04-29 10:44','Caixa 01',320,3.50,1,43,'A',0),(362,'2017-04-29 10:48','Caixa 01',321,8.50,2,43,'A',0),(363,'2017-04-29 10:58','Caixa 01',322,10.50,2,43,'A',0),(364,'2017-04-29 11:20','Caixa 01',323,1.50,1,43,'A',0),(365,'2017-04-29 11:21','Caixa 01',324,16.00,1,43,'A',0),(366,'2017-04-29 11:22','Caixa 01',325,8.00,1,43,'A',0),(367,'2017-04-29 11:22','Caixa 01',326,NULL,1,43,'A',0),(368,'2017-04-29 11:43','Caixa 01',327,10.00,2,43,'A',0),(369,'2017-04-29 11:46','Caixa 01',328,5.50,2,43,'A',0),(370,'2017-04-29 11:48','Caixa 01',329,2.00,1,43,'A',0),(371,'2017-04-29 11:54','Caixa 01',330,3.00,1,43,'A',0),(372,'2017-04-29 12:16','Caixa 01',331,5.50,1,43,'A',0),(373,'2017-04-29 12:22','Caixa 01',332,10.00,1,43,'A',0),(374,'2017-04-29 12:36','Caixa 01',333,1.50,1,43,'A',0),(375,'2017-04-29 12:41','Caixa 01',334,3.00,1,43,'A',0),(376,'2017-04-29 13:10','Caixa 01',335,1.50,2,43,'A',0),(377,'2017-04-29 13:11','Caixa 01',336,NULL,3,43,'A',0),(378,'2017-04-29 13:12','Caixa 01',337,1.50,1,43,'A',0),(379,'2017-04-29 13:31','Caixa 01',338,1.50,2,43,'A',0),(380,'2017-04-29 13:31','Caixa 01',339,NULL,2,43,'A',0),(381,'2017-04-29 13:59','Caixa 01',340,6.00,1,43,'A',0),(382,'2017-04-29 14:00','Caixa 01',341,6.00,1,43,'A',0),(383,'2017-04-29 14:00','Caixa 01',342,6.00,1,43,'A',0),(384,'2017-04-29 15:47','Caixa 01',343,14.00,1,43,'A',0),(385,'2017-04-29 16:14','Caixa 01',344,5.00,1,45,'A',0),(386,'2017-04-29 16:42','Mesa 2',345,8.00,1,45,'A',0),(387,'2017-04-29 16:55','Mesa 1',346,0.99,1,45,'A',0),(388,'2017-04-29 16:58','Mesa 3',347,2.49,1,45,'A',0),(389,'2017-04-29 17:05','Mesa 2',348,8.00,2,45,'A',0),(390,'2017-04-29 17:06','Mesa 4',349,4.99,1,45,'A',0),(391,'2017-04-29 17:32','Caixa 01',350,2.49,1,45,'A',0),(392,'2017-04-29 17:34','Caixa 01',351,0.99,1,45,'A',0),(393,'2017-04-29 17:42','Mesa 1',352,12.49,2,45,'A',0),(394,'2017-04-29 17:50','Caixa 01',353,21.99,1,45,'A',0),(395,'2017-04-29 17:53','Caixa 01',354,12.00,1,45,'A',0),(396,'2017-04-29 17:57','Caixa 01',355,2.49,1,45,'A',0),(397,'2017-04-29 18:04','Caixa 01',356,3.50,2,45,'A',0),(398,'2017-04-29 18:15','Caixa 01',357,11.49,1,45,'A',0),(399,'2017-04-29 18:26','Caixa 01',358,2.99,1,45,'A',0),(400,'2017-04-29 18:34','Caixa 01',359,4.99,2,45,'A',0),(401,'2017-04-29 18:46','Mesa 1',360,8.99,1,45,'A',0),(402,'2017-04-29 18:52','Caixa 01',361,9.49,2,45,'A',0),(403,'2017-04-29 18:53','Caixa 01',362,50.00,1,45,'A',0),(404,'2017-04-29 18:55','Mesa 5',363,14.99,2,45,'A',0),(405,'2017-04-29 18:56','Caixa 01',364,0.99,2,45,'A',0),(406,'2017-04-29 18:59','Caixa 01',365,8.00,2,45,'A',0),(407,'2017-04-29 19:02','Caixa 01',366,0.99,2,45,'A',0),(408,'2017-04-29 19:07','Caixa 01',367,98.48,3,45,'A',0),(409,'2017-04-29 19:15','Caixa 01',368,0.99,1,45,'A',0),(410,'2017-04-29 19:19','Caixa 01',369,0.99,1,45,'A',0),(411,'2017-04-29 19:39','Caixa 01',370,48.97,4,45,'A',0),(412,'2017-04-29 19:40','Caixa 01',371,0.99,1,45,'A',0),(413,'2017-04-29 19:42','Caixa 01',372,0.99,1,45,'A',0),(414,'2017-04-29 19:45','Mesa 1',373,15.99,2,45,'A',0),(415,'2017-04-29 19:47','Caixa 01',374,7.49,1,45,'A',0),(416,'2017-04-29 19:51','Caixa 01',375,17.09,2,45,'A',0),(417,'2017-04-29 19:54','Mesa 1',376,10.99,2,45,'A',0),(418,'2017-04-29 19:58','Mesa 1',377,31.00,2,45,'A',0),(419,'2017-04-29 20:01','Caixa 01',378,2.00,1,45,'A',0),(420,'2017-04-29 20:05','Mesa 5',379,12.99,2,45,'A',0),(421,'2017-04-29 20:13','Caixa 01',380,0.99,1,45,'A',0),(422,'2017-04-29 20:23','Caixa 01',381,5.50,2,45,'A',0),(423,'2017-04-29 20:26','Mesa 7',382,39.99,1,45,'A',0),(424,'2017-04-29 20:30','Mesa 7',383,22.59,2,45,'A',0),(425,'2017-04-29 20:32','Caixa 01',384,20.98,2,45,'A',0),(426,'2017-04-29 20:38','Caixa 01',385,2.99,3,45,'A',0),(427,'2017-04-29 21:05','Caixa 01',386,0.99,1,45,'A',0),(428,'2017-04-29 21:20','Caixa 01',387,0.99,1,45,'A',0),(429,'2017-04-29 21:31','Caixa 01',388,0.99,1,45,'A',0),(430,'2017-04-29 21:51','Caixa 01',389,11.59,2,45,'A',0),(431,'2017-04-29 21:56','Caixa 01',390,0.99,1,45,'A',0),(432,'2017-04-29 22:12','Caixa 01',391,15.00,3,45,'A',0),(433,'2017-04-29 22:17','Caixa 01',392,4.49,2,45,'A',0),(434,'2017-04-29 22:20','Caixa 01',393,13.49,2,45,'A',0),(435,'2017-04-29 22:26','Mesa 12',394,26.49,2,45,'A',0),(436,'2017-04-29 22:34','Caixa 01',395,7.49,2,45,'A',0),(437,'2017-04-29 22:48','Caixa 01',396,0.99,1,45,'A',0),(438,'2017-04-29 22:48','Caixa 01',397,0.99,1,45,'A',0),(439,'2017-04-29 22:52','Caixa 01',398,18.49,2,45,'A',0),(440,'2017-04-29 22:54','Caixa 01',399,39.98,3,45,'A',0),(441,'2017-04-29 23:00','Caixa 01',400,5.49,2,45,'A',0),(442,'2017-04-29 23:06','Mesa 8',401,27.50,1,45,'A',0),(443,'2017-04-29 23:08','Caixa 01',402,0.99,2,45,'A',0),(444,'2017-04-29 23:14','Caixa 01',403,5.50,2,45,'A',0),(445,'2017-04-29 23:14','Caixa 01',404,2.99,1,45,'A',0),(446,'2017-04-29 23:15','Caixa 01',405,19.99,2,45,'A',0),(447,'2017-04-29 23:17','Caixa 01',406,2.99,2,45,'A',0),(448,'2017-04-29 23:19','Caixa 01',407,5.49,2,45,'A',0),(449,'2017-04-30 08:46','Caixa 01',408,1.50,1,47,'A',0),(450,'2017-04-30 16:05','Mesa 1',409,NULL,1,48,'A',0),(451,'2017-04-30 16:46','Mesa 1',410,10.50,1,48,'A',0),(452,'2017-04-30 16:55','Caixa 01',411,11.60,2,48,'A',0),(453,'2017-04-30 17:15','Mesa 1',412,12.00,2,48,'A',0),(454,'2017-04-30 17:26','Mesa 4',413,10.49,2,48,'A',0),(455,'2017-04-30 18:10','Caixa 01',414,0.99,2,48,'A',0),(456,'2017-04-30 18:15','Caixa 01',415,0.99,3,48,'A',0),(457,'2017-04-30 18:29','Mesa 4',416,6.00,1,48,'A',0),(458,'2017-04-30 18:36','Caixa 01',417,5.49,2,48,'A',0),(459,'2017-04-30 18:48','Caixa 01',418,5.49,2,48,'A',0),(460,'2017-04-30 19:00','Mesa 5',419,4.50,2,48,'A',0),(461,'2017-04-30 19:06','Caixa 01',420,19.99,1,48,'A',0),(462,'2017-04-30 19:08','Caixa 01',421,0.99,1,48,'A',0),(463,'2017-04-30 19:08','Caixa 01',421,0.99,1,48,'A',0),(464,'2017-04-30 19:14','Mesa 4',422,13.99,2,48,'A',0),(465,'2017-04-30 19:36','Mesa 4',423,11.00,2,48,'A',0),(466,'2017-04-30 19:39','Caixa 01',424,0.99,2,48,'A',0),(467,'2017-04-30 19:52','Caixa 01',425,32.50,2,48,'A',0),(468,'2017-04-30 19:59','Caixa 01',426,6.49,2,48,'A',0),(469,'2017-04-30 20:15','Caixa 01',427,26.00,2,48,'A',0),(470,'2017-04-30 20:16','Mesa 2',428,3.00,1,48,'A',0),(471,'2017-04-30 20:25','Mesa 1',429,17.50,2,48,'A',0),(472,'2017-04-30 20:45','Caixa 01',430,6.49,2,48,'A',0),(473,'2017-04-30 21:02','Mesa 2',431,7.50,1,48,'A',0),(474,'2017-04-30 21:11','Mesa 2',432,9.99,2,48,'A',0),(475,'2017-04-30 21:12','Caixa 01',433,0.99,2,48,'A',0),(476,'2017-04-30 21:16','Mesa 1',434,17.49,3,48,'A',0),(477,'2017-04-30 21:25','Mesa 2',435,7.50,1,48,'A',0),(478,'2017-04-30 21:34','Caixa 01',436,2.99,3,48,'A',0),(479,'2017-04-30 21:51','Caixa 01',437,9.49,2,48,'A',0),(480,'2017-04-30 21:56','Caixa 01',438,19.99,3,48,'A',0),(481,'2017-04-30 21:57','Caixa 01',439,19.99,1,48,'A',0),(482,'2017-04-30 22:02','Mesa 1',440,34.99,2,48,'A',0),(483,'2017-04-30 22:18','Caixa 01',441,4.99,2,48,'A',0),(484,'2017-04-30 22:26','Mesa 2',442,6.99,1,48,'A',0),(485,'2017-04-30 22:27','Mesa 5',443,58.00,2,48,'A',0),(486,'2017-04-30 22:35','Caixa 01',444,12.99,1,48,'A',0),(487,'2017-04-30 22:42','Caixa 01',445,11.49,2,48,'A',0),(488,'2017-04-30 22:44','Mesa 9',446,15.59,2,48,'A',0),(489,'2017-05-01 15:42','Caixa 01',447,4.99,2,49,'A',0),(490,'2017-05-01 16:37','Caixa 01',448,17.00,1,50,'A',0),(491,'2017-05-01 17:02','Mesa 4',449,6.00,1,50,'A',0),(492,'2017-05-01 17:09','Caixa 01',450,8.99,2,50,'A',0),(493,'2017-05-01 17:11','Mesa 2',451,13.48,3,50,'A',0),(494,'2017-05-01 17:16','Caixa 01',452,0.99,1,50,'A',0),(495,'2017-05-01 17:27','Caixa 01',453,1.50,1,50,'A',0),(496,'2017-05-01 17:28','Caixa 01',454,1.50,1,50,'A',0),(497,'2017-05-01 17:37','Caixa 01',455,12.50,2,50,'A',0),(498,'2017-05-01 17:38','Caixa 01',456,2.49,1,50,'A',0),(499,'2017-05-01 17:40','Caixa 01',457,1.50,1,50,'A',0),(500,'2017-05-01 17:42','Caixa 01',458,0.99,1,50,'A',0),(501,'2017-05-01 17:43','Caixa 01',459,6.00,1,50,'A',0),(502,'2017-05-01 17:48','Caixa 01',460,0.99,1,50,'A',0),(503,'2017-05-01 17:57','Caixa 01',461,23.99,1,50,'A',0),(504,'2017-05-01 18:15','Caixa 01',462,3.00,1,50,'A',0),(505,'2017-05-01 18:17','Caixa 01',463,7.99,2,50,'A',0),(506,'2017-05-01 18:19','Mesa 4',464,4.50,1,50,'A',0),(507,'2017-05-01 18:19','Mesa 4',465,1.50,1,50,'A',0),(508,'2017-05-01 18:49','Caixa 01',466,0.99,1,50,'A',0),(509,'2017-05-01 18:52','Caixa 01',467,2.99,1,50,'A',0),(510,'2017-05-01 19:11','Caixa 01',468,38.08,2,50,'A',0),(511,'2017-05-01 19:18','Caixa 01',469,4.49,1,50,'A',0),(512,'2017-05-01 19:21','Mesa 2',470,11.50,1,50,'A',0),(513,'2017-05-01 19:30','Caixa 01',471,14.49,2,50,'A',0),(514,'2017-05-01 19:41','Caixa 01',472,1.50,1,50,'A',0),(515,'2017-05-01 19:52','Mesa 3',473,3.99,2,50,'A',0),(516,'2017-05-01 19:54','Caixa 01',474,2.99,1,50,'A',0),(517,'2017-05-01 20:09','Caixa 01',475,0.99,1,50,'A',0),(518,'2017-05-01 20:15','Caixa 01',476,9.49,1,50,'A',0),(519,'2017-05-01 20:16','Mesa 2',477,26.00,1,50,'A',0),(520,'2017-05-01 20:17','Mesa 1',478,21.00,2,50,'A',0),(521,'2017-05-01 20:20','Caixa 01',479,6.49,3,50,'A',0),(522,'2017-05-01 20:24','Caixa 01',480,19.99,1,50,'A',0),(523,'2017-05-01 20:24','Mesa 4',481,34.50,2,50,'A',0),(524,'2017-05-01 20:30','Caixa 01',482,0.99,1,50,'A',0),(525,'2017-05-01 20:31','Caixa 01',483,0.99,1,50,'A',0),(526,'2017-05-01 20:37','Caixa 01',484,5.49,3,50,'A',0),(527,'2017-05-01 20:38','Mesa 2',485,10.50,1,50,'A',0),(528,'2017-05-01 20:41','Caixa 01',486,10.09,2,50,'A',0),(529,'2017-05-01 20:46','Caixa 01',487,6.99,2,50,'A',0),(530,'2017-05-01 20:48','Caixa 01',488,65.98,2,50,'A',0),(531,'2017-05-01 20:50','Caixa 01',489,2.49,2,50,'A',0),(532,'2017-05-01 20:52','Caixa 01',490,1.50,1,50,'A',0),(533,'2017-05-01 20:53','Caixa 01',491,4.00,2,50,'A',0),(534,'2017-05-01 20:56','Caixa 01',492,22.99,2,50,'A',0),(535,'2017-05-01 21:05','Mesa 1',493,12.00,1,50,'A',0),(536,'2017-05-01 21:16','Caixa 01',494,4.50,1,50,'A',0),(537,'2017-05-01 21:29','Caixa 01',495,24.00,1,50,'A',0),(538,'2017-05-01 21:30','Caixa 01',496,27.99,2,50,'A',0),(539,'2017-05-01 21:32','Mesa 5',497,19.50,1,50,'A',0),(540,'2017-05-01 21:35','Mesa 1',498,8.99,2,50,'A',0),(541,'2017-05-01 22:05','Caixa 01',499,25.50,2,50,'A',0),(542,'2017-05-01 22:24','Caixa 01',500,5.10,2,50,'A',0),(543,'2017-05-01 22:24','Caixa 01',501,NULL,2,50,'A',0),(544,'2017-05-01 22:38','Caixa 01',502,7.99,2,50,'A',0),(545,'2017-05-01 22:42','Caixa 01',503,6.99,3,50,'A',0),(546,'2017-05-02 16:16','Mesa 3',504,3.00,2,51,'A',0),(547,'2017-05-02 16:49','Caixa 01',505,0.99,1,51,'A',0),(548,'2017-05-02 17:24','Mesa 2',506,5.50,1,51,'A',0),(549,'2017-05-02 17:52','Mesa 1',507,23.99,1,51,'A',0),(550,'2017-05-02 18:01','Caixa 01',508,2.99,1,51,'A',0),(551,'2017-05-02 18:29','Mesa 1',509,6.50,1,51,'A',0),(552,'2017-05-02 18:50','Caixa 01',510,2.99,1,51,'A',0),(553,'2017-05-02 18:51','Mesa 1',511,3.99,1,51,'A',0),(554,'2017-05-02 19:09','Caixa 01',512,0.99,2,51,'A',0),(555,'2017-05-02 19:12','Mesa 3',513,7.50,1,51,'A',0),(556,'2017-05-02 19:21','Mesa 1',514,5.99,2,51,'A',0),(557,'2017-05-02 19:29','Mesa 1',515,9.50,1,51,'A',0),(558,'2017-05-02 20:02','Mesa 2',516,8.50,1,51,'A',0),(559,'2017-05-02 20:08','Caixa 01',517,8.00,2,51,'A',0),(560,'2017-05-02 20:10','Mesa 5',518,15.09,2,51,'A',0),(561,'2017-05-02 20:25','Mesa 1',519,11.00,1,51,'A',0),(562,'2017-05-02 20:41','Caixa 01',520,7.49,2,51,'A',0),(563,'2017-05-02 21:09','Mesa 4',521,8.00,3,51,'A',0),(564,'2017-05-02 21:14','Caixa 01',522,2.99,1,51,'A',0),(565,'2017-05-02 21:18','Mesa 1',523,8.00,1,51,'A',0),(566,'2017-05-02 21:24','Mesa 3',524,11.00,2,51,'A',0),(567,'2017-05-02 21:42','Caixa 01',525,4.99,1,51,'A',0),(568,'2017-05-02 22:00','Mesa 1',526,3.00,2,51,'A',0),(569,'2017-05-02 22:10','Mesa 3',527,9.49,2,51,'A',0),(570,'2017-05-02 22:18','Mesa 2',528,2.49,1,51,'A',0),(571,'2017-05-02 23:33','Caixa 01',529,2.99,2,51,'A',0),(572,'2017-05-02 23:50','Mesa 1',530,18.49,2,51,'A',0),(573,'2017-05-03 17:09','Caixa 01',531,2.49,2,52,'A',0),(574,'2017-05-03 17:24','Caixa 01',532,1.50,1,52,'A',0),(575,'2017-05-03 17:54','Mesa 1',533,9.49,2,52,'A',0),(576,'2017-05-03 18:09','Mesa 2',534,3.00,2,52,'A',0),(577,'2017-05-03 18:17','Caixa 01',535,4.50,1,52,'A',0),(578,'2017-05-03 19:04','Caixa 01',536,9.49,2,52,'A',0),(579,'2017-05-03 19:29','Caixa 01',537,2.99,1,52,'A',0),(580,'2017-05-03 19:34','Caixa 01',538,12.49,3,52,'A',0),(581,'2017-05-03 20:04','Mesa 11',539,5.50,1,52,'A',0),(582,'2017-05-03 20:07','Caixa 01',540,8.49,1,52,'A',0),(583,'2017-05-03 20:30','Mesa 2',541,2.49,2,52,'A',0),(584,'2017-05-03 20:41','Mesa 3',542,5.00,1,52,'A',0),(585,'2017-05-03 20:48','Mesa 1',543,5.49,1,52,'A',0),(586,'2017-05-03 21:02','Mesa 3',544,6.00,1,52,'A',0),(587,'2017-05-03 21:21','Caixa 01',545,2.00,1,52,'A',0),(588,'2017-05-03 21:25','Caixa 01',546,14.49,1,52,'A',0),(589,'2017-05-03 21:29','Caixa 01',547,3.49,1,52,'A',0),(590,'2017-05-03 21:30','Mesa 1',548,3.49,1,52,'A',0),(591,'2017-05-03 22:16','Caixa 01',549,3.50,1,52,'A',0),(592,'2017-05-03 22:18','Caixa 01',550,0.99,2,52,'A',0),(593,'2017-05-03 22:56','Caixa 01',551,2.99,1,52,'A',0),(594,'2017-05-03 23:18','Caixa 01',552,0.99,1,52,'A',0),(595,'2017-05-03 23:22','Caixa 01',553,5.49,1,52,'A',0),(596,'2017-05-03 23:28','Caixa 01',554,2.50,1,52,'A',0),(597,'2017-05-04 00:06','Caixa 01',555,137.98,3,54,'A',0),(598,'2017-05-04 08:06','Caixa 01',556,18.50,4,55,'A',0),(599,'2017-05-04 08:10','Caixa 01',557,24.50,1,55,'A',0),(600,'2017-05-04 08:13','Caixa 01',558,3.00,1,55,'A',0),(601,'2017-05-04 08:14','Caixa 01',559,4.00,1,55,'A',0),(602,'2017-05-04 08:19','Caixa 01',560,25.00,1,55,'A',0),(603,'2017-05-04 08:23','Caixa 01',561,4.00,1,55,'A',0),(604,'2017-05-04 16:08','Caixa 01',562,6.00,1,55,'A',0),(605,'2017-05-04 16:15','Mesa 2',563,11.50,1,55,'A',0),(606,'2017-05-04 16:47','Caixa 01',564,3.49,2,55,'A',0),(607,'2017-05-04 16:53','Caixa 01',565,7.49,2,55,'A',0),(608,'2017-05-04 17:33','Caixa 01',566,8.00,2,55,'A',0),(609,'2017-05-04 17:46','Caixa 01',567,0.99,1,55,'A',0),(610,'2017-05-04 17:53','Mesa 2',568,3.00,1,55,'A',0),(611,'2017-05-04 17:54','Mesa 3',569,3.00,2,55,'A',0),(612,'2017-05-04 17:54','Caixa 01',570,0.99,2,55,'A',0),(613,'2017-05-04 17:55','Caixa 01',571,0.99,3,55,'A',0),(614,'2017-05-04 17:55','Caixa 01',572,0.99,2,55,'A',0),(615,'2017-05-04 17:58','Mesa 1',573,21.49,2,55,'A',0),(616,'2017-05-04 18:09','Mesa 1',574,26.00,2,55,'A',0),(617,'2017-05-04 18:51','Mesa 2',575,40.00,1,55,'A',0),(618,'2017-05-04 18:56','Mesa 1',576,3.00,2,55,'A',0),(619,'2017-05-04 19:10','Mesa 2',577,8.00,2,55,'A',0),(620,'2017-05-04 19:17','Caixa 01',578,0.99,2,55,'A',0),(621,'2017-05-04 19:35','Caixa 01',579,3.00,2,55,'A',0),(622,'2017-05-04 19:36','Mesa 2',580,3.00,2,55,'A',0),(623,'2017-05-04 19:44','Caixa 01',581,0.99,1,55,'A',0),(624,'2017-05-04 19:49','Mesa 6',582,11.49,2,55,'A',0),(625,'2017-05-04 19:51','Mesa 4',583,4.49,2,55,'A',0),(626,'2017-05-04 19:57','Mesa 1',584,15.49,2,55,'A',0),(627,'2017-05-04 20:12','Mesa 3',585,4.49,1,55,'A',0),(628,'2017-05-04 20:42','Caixa 01',586,14.49,2,55,'A',0),(629,'2017-05-04 21:05','Caixa 01',587,0.99,1,55,'A',0),(630,'2017-05-04 21:07','Mesa 6',588,5.99,2,55,'A',0),(631,'2017-05-04 21:12','Mesa 1',589,9.49,2,55,'A',0),(632,'2017-05-04 21:12','Mesa 3',590,6.99,2,55,'A',0),(633,'2017-05-04 21:12','Mesa 2',591,3.00,2,55,'A',0),(634,'2017-05-04 21:13','Mesa 7',592,12.00,2,55,'A',0),(635,'2017-05-04 21:30','Caixa 01',593,2.99,1,55,'A',0),(636,'2017-05-04 22:36','Mesa 4',594,10.99,1,55,'A',0),(637,'2017-05-04 22:50','Mesa 1',595,6.99,2,55,'A',0),(638,'2017-05-04 22:50','Mesa 2',596,9.00,2,55,'A',0),(639,'2017-05-04 23:06','Caixa 01',597,2.99,1,55,'A',0),(640,'2017-05-04 23:09','Mesa 3',598,15.48,2,55,'A',0),(641,'2017-05-05 16:23','Caixa 01',599,0.99,2,56,'A',0),(642,'2017-05-05 16:23','Caixa 01',600,0.99,2,56,'A',0),(643,'2017-05-05 16:23','Caixa 01',601,19.99,2,56,'A',0),(644,'2017-05-06 07:56','Caixa 01',602,14.00,1,56,'A',0),(645,'2017-05-06 07:57','Caixa 01',603,4.00,1,56,'A',0),(646,'2017-05-09 00:01','Caixa 01',604,0.99,2,56,'A',0),(647,'2017-05-09 00:03','Caixa 01',605,19.99,2,56,'A',0),(648,'2017-05-09 00:09','Caixa 01',606,24.00,3,56,'A',0),(649,'2017-05-09 00:09','Caixa 01',607,24.00,2,56,'A',0),(650,'2017-05-09 00:10','Caixa 01',608,24.00,2,56,'A',0),(651,'2017-05-09 00:11','Caixa 01',609,24.00,2,56,'A',0),(652,'2017-05-09 00:12','Caixa 01',610,26.00,3,56,'A',0),(653,'2017-05-09 00:23','Caixa 01',611,19.99,2,56,'A',0),(654,'2017-05-09 00:25','Caixa 01',612,19.99,2,56,'A',0),(655,'2017-05-09 00:25','Caixa 01',613,26.00,2,56,'A',0),(656,'2017-05-09 00:27','Caixa 01',614,26.00,3,56,'A',0),(657,'2017-05-09 00:28','Caixa 01',615,0.99,2,56,'A',0),(658,'2017-05-09 00:28','Caixa 01',616,26.00,3,56,'A',0),(659,'2017-05-09 00:29','Caixa 01',617,24.00,2,56,'A',0),(660,'2017-05-09 00:30','Caixa 01',618,26.00,3,56,'A',0),(661,'2017-05-09 00:31','Caixa 01',619,26.00,2,56,'A',0),(662,'2017-05-09 00:32','Caixa 01',620,26.00,3,56,'A',0),(663,'2017-05-09 00:32','Caixa 01',621,24.00,2,56,'A',0),(664,'2017-05-09 00:34','Caixa 01',622,26.00,3,56,'A',0),(665,'2017-05-09 00:35','Caixa 01',623,26.00,2,56,'A',0),(666,'2017-05-09 00:36','Caixa 01',624,26.00,3,56,'A',0),(667,'2017-05-09 00:36','Caixa 01',625,26.00,3,56,'A',0),(668,'2017-05-09 00:37','Caixa 01',626,1.50,2,56,'A',0),(669,'2017-05-09 00:37','Caixa 01',627,26.00,3,56,'A',0),(670,'2017-05-09 00:38','Caixa 01',628,26.00,2,56,'A',0),(671,'2017-05-09 00:38','Caixa 01',629,26.00,3,56,'A',0),(672,'2017-05-09 00:39','Caixa 01',630,26.00,2,56,'A',0),(673,'2017-05-09 00:40','Caixa 01',631,26.00,3,56,'A',0),(674,'2017-05-10 17:46','Caixa 01',632,6.00,1,56,'C',0),(675,'2017-05-10 18:02','Mesa 1',633,9.00,1,56,'C',0),(676,'2017-05-11 00:54','Caixa 01',634,21.99,2,56,'A',0),(677,'2017-05-12 01:02','Caixa 01',635,0.99,2,56,'A',0),(678,'2017-05-12 01:06','Caixa 01',636,4.99,1,56,'A',0),(679,'2017-05-12 01:09','Caixa 01',637,23.99,3,56,'A',0),(680,'2017-05-12 01:12','Caixa 01',638,26.00,2,56,'A',0),(681,'2017-05-12 01:17','Caixa 01',639,19.99,2,56,'A',0),(682,'2017-05-12 01:18','Caixa 01',640,19.99,3,56,'A',0),(683,'2017-05-12 01:18','Caixa 01',641,22.49,2,56,'A',0),(684,'2017-05-12 01:30','Caixa 01',642,0.99,1,56,'A',0),(685,'2017-05-12 01:34','Caixa 01',643,24.00,2,56,'A',0),(686,'2017-05-12 01:55','Mesa 2',644,19.99,2,56,'A',0),(687,'2017-05-12 01:59','Mesa 2',645,24.00,2,56,'A',0),(688,'2017-05-12 02:04','Caixa 01',646,19.99,2,57,'A',0);
/*!40000 ALTER TABLE `pde_fato_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pde_fato_vendas_produtos`
--

DROP TABLE IF EXISTS `pde_fato_vendas_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pde_fato_vendas_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_nota_fiscal` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1483 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pde_fato_vendas_produtos`
--

LOCK TABLES `pde_fato_vendas_produtos` WRITE;
/*!40000 ALTER TABLE `pde_fato_vendas_produtos` DISABLE KEYS */;
INSERT INTO `pde_fato_vendas_produtos` VALUES (1,1,1,1,''),(56,2,530,1,''),(57,2,5,1,''),(58,3,532,1,''),(59,3,2,1,''),(60,4,530,1,''),(61,4,9,1,''),(62,5,530,1,''),(63,5,9,1,''),(64,6,530,1,''),(65,6,47,10,''),(66,7,530,1,''),(67,7,12,1,''),(68,8,530,1,''),(69,8,5,1,''),(70,8,47,1,''),(71,9,532,1,''),(72,9,2,1,''),(73,10,631,1,''),(74,12,530,1,''),(75,12,2,1,''),(76,13,530,1,''),(77,13,47,10,''),(78,14,530,1,''),(79,14,47,21,''),(80,14,50,10,''),(81,14,84,1,''),(82,15,530,1,''),(83,15,1,1,''),(84,15,2,1,''),(85,16,530,1,''),(86,16,2,1,''),(87,17,530,1,''),(88,17,47,5,''),(89,18,530,1,''),(90,18,47,7,''),(91,18,48,1,''),(92,18,75,1,''),(93,19,530,1,''),(94,19,47,8,''),(95,19,77,1,''),(96,22,47,2,''),(97,22,1,1,''),(98,23,47,8,''),(99,23,75,1,''),(100,24,72,1,''),(101,24,77,1,''),(102,25,2,1,''),(103,25,76,1,''),(104,26,634,1,''),(105,27,47,9,''),(106,27,75,1,''),(107,28,47,12,''),(108,28,48,6,''),(109,28,75,5,''),(110,29,1,1,''),(111,29,75,1,''),(112,30,47,3,''),(113,30,75,1,''),(114,31,1,2,''),(115,32,2,1,''),(116,33,6,1,''),(117,34,1,1,''),(118,35,2,1,''),(119,36,6,1,''),(120,37,2,1,''),(121,38,5,1,''),(122,39,2,1,''),(123,40,2,2,''),(124,41,531,1,''),(125,41,1,1,''),(126,42,1,1,''),(127,43,2,1,''),(128,44,6,1,''),(129,45,48,7,''),(130,46,47,7,''),(131,46,63,1,''),(132,46,75,1,''),(133,47,47,1,''),(134,47,48,3,''),(135,48,47,11,''),(136,48,63,6,''),(137,49,530,1,''),(138,49,3,1,''),(139,50,530,1,''),(140,50,2,1,''),(141,51,530,1,''),(142,51,2,1,''),(143,52,532,1,''),(144,52,6,1,''),(145,53,531,1,''),(146,53,518,1,''),(147,54,530,1,''),(148,54,2,1,''),(149,55,530,1,''),(150,55,647,1,''),(151,56,47,10,''),(152,56,50,2,''),(153,57,47,6,''),(154,57,48,4,''),(155,58,2,1,''),(156,59,47,7,''),(157,59,76,1,''),(158,60,48,6,''),(159,60,76,1,''),(160,61,16,1,''),(161,61,75,1,''),(162,62,5,1,''),(163,62,76,1,''),(164,63,532,1,''),(165,63,47,10,''),(166,63,50,3,''),(167,63,75,1,''),(168,64,47,5,''),(169,64,82,1,''),(170,64,75,1,''),(171,65,75,1,''),(172,65,72,1,''),(173,66,68,1,''),(174,66,63,1,''),(175,67,47,4,''),(176,67,76,1,''),(177,68,48,5,''),(178,68,76,2,''),(179,69,75,3,''),(180,70,649,1,''),(181,70,650,1,''),(182,71,4,2,''),(183,72,3,1,''),(184,73,1,1,''),(185,74,63,1,''),(186,74,76,1,''),(187,75,47,1,''),(188,75,48,1,''),(189,75,49,1,''),(190,76,47,5,''),(191,76,48,1,''),(192,77,47,1,''),(193,77,48,1,''),(194,78,6,1,''),(195,79,63,1,''),(196,79,76,1,''),(197,80,64,1,''),(198,80,77,1,''),(199,81,530,1,''),(200,81,47,3,''),(201,82,530,1,''),(202,82,63,1,''),(203,83,530,1,''),(204,83,48,4,''),(205,84,530,1,''),(206,84,518,1,''),(207,85,532,1,''),(208,85,47,8,''),(209,86,532,1,''),(210,86,650,1,''),(211,86,651,1,''),(212,87,47,4,''),(213,88,532,1,''),(214,88,518,1,''),(215,89,68,5,''),(216,90,530,1,''),(217,90,1,1,''),(218,91,530,1,''),(219,91,1,1,''),(220,92,47,5,''),(221,93,47,4,''),(222,94,2,1,''),(223,95,3,1,''),(224,96,47,6,''),(225,96,76,1,''),(226,97,1,1,''),(227,97,72,1,''),(228,97,75,1,''),(229,98,518,1,''),(230,98,75,1,''),(231,99,1,4,''),(232,99,634,1,''),(233,99,6,1,''),(234,99,7,1,''),(235,99,652,1,''),(236,100,2,1,''),(237,101,47,13,''),(238,102,48,6,''),(239,102,76,1,''),(240,103,47,4,''),(241,104,52,5,''),(242,105,63,1,''),(243,105,75,1,''),(244,106,3,1,''),(245,107,5,1,''),(246,108,47,5,''),(247,108,77,1,''),(248,109,2,1,''),(249,109,77,1,''),(250,110,2,1,''),(251,110,77,1,''),(252,111,2,1,''),(253,112,52,5,''),(254,113,47,4,''),(255,114,51,1,''),(256,114,49,3,''),(257,115,47,4,''),(258,115,76,1,''),(259,116,63,1,''),(260,116,77,1,''),(261,117,47,1,''),(262,118,47,1,''),(263,119,51,1,''),(264,120,2,1,''),(265,121,47,3,''),(266,122,1,1,''),(267,123,5,1,''),(268,124,6,1,''),(269,125,5,1,''),(270,126,5,1,''),(271,127,518,1,''),(272,127,47,1,''),(273,127,76,1,''),(274,128,1,1,''),(275,128,48,1,''),(276,129,530,1,''),(277,129,47,6,''),(278,130,68,1,''),(279,130,76,1,''),(280,131,64,1,''),(281,131,63,1,''),(282,131,68,1,''),(283,131,69,1,''),(284,131,75,1,''),(285,131,47,8,''),(286,131,47,6,''),(287,132,47,4,''),(288,133,63,4,''),(289,133,64,3,''),(290,133,47,3,''),(291,133,48,1,''),(292,134,530,1,''),(293,134,5,1,''),(294,135,656,1,''),(295,135,657,1,''),(296,135,658,1,''),(297,136,63,1,''),(298,136,64,1,''),(299,136,76,1,''),(300,136,75,1,''),(301,136,69,1,''),(302,136,68,1,''),(303,136,2,1,''),(304,136,1,1,''),(305,136,81,1,''),(306,137,531,1,''),(307,137,63,2,''),(308,137,1,1,''),(309,138,530,1,''),(310,138,75,1,''),(311,138,2,1,''),(312,139,531,1,''),(313,139,75,1,''),(314,139,2,1,''),(315,140,664,1,''),(316,141,666,1,''),(317,141,667,1,''),(318,142,192,1,''),(319,143,193,1,''),(320,144,2,1,''),(321,145,194,1,''),(322,145,68,1,''),(323,146,22,4,''),(324,147,21,4,''),(325,147,56,1,''),(326,148,52,1,''),(327,148,36,1,''),(328,149,2,1,''),(329,149,40,1,''),(330,149,41,1,''),(331,149,56,1,''),(332,150,6,1,''),(333,150,26,2,''),(334,151,21,5,''),(335,151,1,1,''),(336,152,21,1,''),(337,152,22,1,''),(338,152,25,1,''),(339,153,1,1,''),(340,153,2,1,''),(341,153,3,1,''),(342,154,2,1,''),(343,154,22,1,''),(344,154,42,1,''),(345,154,47,1,''),(346,154,53,1,''),(347,155,56,1,''),(348,155,36,2,''),(349,156,22,1,''),(350,156,52,1,''),(351,156,46,1,''),(352,157,21,2,''),(353,158,21,5,''),(354,159,36,1,''),(355,159,37,1,''),(356,159,38,1,''),(357,159,40,1,''),(358,159,21,2,''),(359,159,22,2,''),(360,160,56,3,''),(361,160,2,1,''),(362,161,1,1,''),(363,162,21,1,''),(364,162,22,1,''),(365,162,68,1,''),(366,163,198,2,''),(367,164,36,14,''),(368,164,72,1,''),(369,164,74,1,''),(370,165,36,4,''),(371,165,73,1,''),(372,166,100,1,''),(373,166,73,1,''),(374,167,21,5,''),(375,167,36,1,''),(376,168,103,1,''),(377,168,67,3,''),(378,168,36,2,''),(379,169,99,2,''),(380,170,21,3,''),(381,170,22,2,''),(382,170,71,1,''),(383,171,103,1,''),(384,171,73,2,''),(385,172,21,10,''),(386,173,21,25,''),(387,174,21,30,''),(388,174,22,6,''),(389,175,21,3,''),(390,175,81,1,''),(391,175,67,1,''),(392,176,88,1,''),(393,176,65,2,''),(394,176,61,2,''),(395,177,21,10,''),(396,178,48,1,''),(397,178,200,2,''),(398,180,88,1,''),(399,181,201,1,''),(400,182,36,12,''),(401,182,68,1,''),(402,183,36,12,''),(403,183,68,1,''),(404,184,200,1,''),(405,185,36,13,''),(406,186,21,3,''),(407,187,21,5,''),(408,188,21,10,''),(409,188,22,10,''),(410,189,21,15,''),(411,189,37,17,''),(412,189,68,1,''),(413,189,21,1,''),(414,190,21,20,''),(415,190,22,5,''),(416,191,21,3,''),(417,191,22,1,''),(418,192,202,1,''),(419,193,21,3,''),(420,193,42,1,''),(421,193,67,1,''),(422,194,21,4,''),(423,194,36,6,''),(424,195,21,4,''),(425,195,36,6,''),(426,196,21,4,''),(427,196,36,6,''),(428,197,36,2,''),(429,197,71,1,''),(430,198,36,3,''),(431,199,200,1,''),(432,199,21,5,''),(433,199,22,5,''),(434,199,67,3,''),(435,199,105,1,''),(436,200,21,5,''),(437,200,22,5,''),(438,200,29,3,''),(439,200,30,2,''),(440,201,37,4,''),(441,201,68,1,''),(442,201,45,1,''),(443,202,21,2,''),(444,202,22,2,''),(445,202,26,1,''),(446,202,41,1,''),(447,202,68,1,''),(448,202,21,2,''),(449,202,41,2,''),(450,202,81,1,''),(451,203,36,2,''),(452,203,21,7,''),(453,203,68,1,''),(454,204,1,1,''),(455,204,2,1,''),(456,205,2,3,''),(457,207,1,1,''),(458,207,61,10,''),(459,207,20,1,''),(460,209,21,3,''),(461,209,24,2,''),(462,209,68,1,''),(463,210,209,1,''),(464,211,32,3,''),(465,211,21,3,''),(466,212,191,2,''),(467,212,36,2,''),(468,213,1,1,''),(469,214,26,4,''),(470,214,23,2,''),(471,214,34,2,''),(472,214,41,2,''),(473,215,26,4,''),(474,215,23,1,''),(475,215,34,2,''),(476,215,41,2,''),(477,216,36,1,''),(478,216,37,1,''),(479,216,38,1,''),(480,217,36,1,''),(481,217,40,1,''),(482,217,41,1,''),(483,218,210,1,''),(484,219,21,6,''),(485,219,76,2,''),(486,220,33,20,''),(487,220,21,10,''),(488,221,21,7,''),(489,221,33,3,''),(490,221,26,1,''),(491,221,23,2,''),(492,222,21,14,''),(493,223,21,10,''),(494,223,22,6,''),(495,224,21,2,''),(496,224,23,2,''),(497,225,21,10,''),(498,225,42,4,''),(499,225,204,1,''),(500,226,38,2,''),(501,226,37,2,''),(502,227,21,4,''),(503,228,21,10,''),(504,228,76,1,''),(505,229,21,2,''),(506,229,45,1,''),(507,229,73,1,''),(508,230,23,2,''),(509,231,22,2,''),(510,231,21,2,''),(511,231,32,2,''),(512,231,29,1,''),(513,231,34,1,''),(514,232,21,10,''),(515,233,21,20,''),(516,234,22,10,''),(517,234,21,10,''),(518,234,29,2,''),(519,235,21,2,''),(520,235,22,4,''),(521,236,21,2,''),(522,236,22,2,''),(523,236,33,2,''),(524,236,42,2,''),(525,236,203,2,''),(526,236,74,1,''),(527,237,21,10,''),(528,237,41,10,''),(529,237,205,1,''),(530,238,21,10,''),(531,239,36,4,''),(532,239,74,1,''),(533,240,21,6,''),(534,240,22,3,''),(535,240,29,3,''),(536,240,36,2,''),(537,241,74,1,''),(538,242,21,4,''),(539,242,41,2,''),(540,242,74,1,''),(541,243,67,2,''),(542,243,36,7,''),(543,244,21,30,''),(544,245,21,30,''),(545,246,36,7,''),(546,246,67,2,''),(547,247,21,10,''),(548,247,22,5,''),(549,247,69,1,''),(550,248,40,3,''),(551,249,21,2,''),(552,249,24,2,''),(553,249,27,2,''),(554,249,30,3,''),(555,249,32,3,''),(556,249,36,5,''),(557,249,41,4,''),(558,249,67,1,''),(559,250,36,3,''),(560,250,74,1,''),(561,251,21,3,''),(562,251,26,2,''),(563,251,30,1,''),(564,251,67,1,''),(565,252,21,1,''),(566,252,22,1,''),(567,252,29,2,''),(568,252,23,2,''),(569,252,34,2,''),(570,252,31,1,''),(571,252,199,2,''),(572,253,21,6,''),(573,253,24,2,''),(574,253,36,2,''),(575,254,36,2,''),(576,254,67,1,''),(577,255,21,20,''),(578,256,21,14,''),(579,257,21,6,''),(580,257,24,2,''),(581,258,36,1,''),(582,258,211,1,''),(583,259,21,10,''),(584,260,76,1,''),(585,261,82,2,''),(586,261,76,1,''),(587,262,21,4,''),(588,262,22,4,''),(589,262,23,2,''),(590,263,21,3,''),(591,263,22,3,''),(592,263,23,2,''),(593,263,42,1,''),(594,263,41,1,''),(595,264,41,3,''),(596,264,74,1,''),(597,265,42,1,''),(598,265,41,4,''),(599,265,36,1,''),(600,266,21,8,''),(601,266,22,2,''),(602,266,26,2,''),(603,266,23,1,''),(604,266,44,1,''),(605,267,21,3,''),(606,267,32,2,''),(607,267,22,1,''),(608,268,202,1,''),(609,268,41,3,''),(610,268,74,1,''),(611,269,21,10,''),(612,269,36,4,''),(613,270,21,3,''),(614,270,22,2,''),(615,270,30,1,''),(616,271,21,1,''),(617,271,32,1,''),(618,271,22,1,''),(619,272,21,8,''),(620,272,22,1,''),(621,273,28,2,''),(622,273,30,2,''),(623,273,21,4,''),(624,273,41,1,''),(625,273,57,1,''),(626,273,61,1,''),(627,273,197,1,''),(628,274,21,3,''),(629,274,29,2,''),(630,274,27,2,''),(631,274,22,2,''),(632,274,31,1,''),(633,275,36,1,''),(634,275,42,1,''),(635,275,38,1,''),(636,276,21,3,''),(637,276,39,1,''),(638,276,67,1,''),(639,277,21,6,''),(640,278,44,1,''),(641,278,65,1,''),(642,278,87,1,''),(643,279,21,2,''),(644,279,36,1,''),(645,279,67,1,''),(646,280,21,13,''),(647,281,21,40,''),(648,282,21,10,''),(649,282,22,10,''),(650,283,29,2,''),(651,283,31,1,''),(652,283,21,2,''),(653,283,22,3,''),(654,283,30,1,''),(655,283,23,1,''),(656,283,27,1,''),(657,284,21,30,''),(658,285,21,30,''),(659,286,21,5,''),(660,287,21,40,''),(661,288,21,40,''),(662,289,21,15,''),(663,290,21,15,''),(664,291,212,1,''),(665,291,65,2,''),(666,292,207,2,''),(667,292,49,1,''),(668,292,48,1,''),(669,292,71,2,''),(670,292,105,1,''),(671,293,21,10,''),(672,293,74,1,''),(673,294,21,7,''),(674,294,23,1,''),(675,294,42,1,''),(676,294,41,1,''),(677,295,198,2,''),(678,295,21,5,''),(679,295,41,2,''),(680,296,21,10,''),(681,297,21,6,''),(682,298,21,10,''),(683,299,21,8,''),(684,299,22,1,''),(685,299,23,1,''),(686,299,30,1,''),(687,299,29,1,''),(688,300,219,1,''),(689,300,36,14,''),(690,301,36,5,''),(691,302,79,2,''),(692,302,36,4,''),(693,303,21,60,''),(694,303,22,30,''),(695,304,36,6,''),(696,304,79,3,''),(697,305,79,1,''),(698,306,36,6,''),(699,307,36,14,''),(700,308,79,1,''),(701,309,36,2,''),(702,310,36,4,''),(703,311,36,7,''),(704,312,36,3,''),(705,313,9,1,''),(706,314,36,2,''),(707,314,79,1,''),(708,315,36,1,''),(709,315,79,1,''),(710,316,36,6,''),(711,317,36,1,''),(712,318,46,1,''),(713,318,47,1,''),(714,318,48,1,''),(715,318,49,1,''),(716,318,50,1,''),(717,318,51,1,''),(718,319,41,1,''),(719,320,36,1,''),(720,320,79,1,''),(721,321,41,3,''),(722,321,38,2,''),(723,321,42,1,''),(724,321,76,1,''),(725,322,40,5,''),(726,322,38,4,''),(727,322,41,9,''),(728,322,205,1,''),(729,323,36,6,''),(730,324,81,1,''),(731,324,83,1,''),(732,324,84,1,''),(733,324,85,1,''),(734,325,55,1,''),(735,325,56,1,''),(736,327,208,2,''),(737,327,36,2,''),(738,328,36,3,''),(739,328,37,1,''),(740,328,73,1,''),(741,329,79,1,''),(742,330,36,2,''),(743,330,67,1,''),(744,331,36,2,''),(745,331,71,1,''),(746,332,36,6,''),(747,332,69,1,''),(748,333,36,5,''),(749,334,38,3,''),(750,334,67,1,''),(751,335,36,6,''),(752,337,36,8,''),(753,338,36,10,''),(754,340,36,5,''),(755,340,42,5,''),(756,340,38,5,''),(757,340,37,5,''),(758,341,36,5,''),(759,341,37,5,''),(760,341,38,5,''),(761,341,42,5,''),(762,342,36,5,''),(763,342,37,5,''),(764,342,38,5,''),(765,342,42,5,''),(766,343,52,1,''),(767,344,83,1,''),(768,344,91,1,''),(769,345,89,1,''),(770,346,21,3,''),(771,347,21,12,''),(772,347,67,2,''),(773,348,22,1,''),(774,348,25,4,''),(775,348,71,1,''),(776,349,21,4,''),(777,349,70,1,''),(778,350,21,23,''),(779,350,41,3,''),(780,351,21,10,''),(781,352,21,4,''),(782,352,30,4,''),(783,352,41,1,''),(784,352,74,1,''),(785,352,107,1,''),(786,353,21,10,''),(787,353,30,4,''),(788,353,32,2,''),(789,353,23,2,''),(790,353,31,2,''),(791,353,26,2,''),(792,353,204,1,''),(793,353,30,2,''),(794,354,103,1,''),(795,354,71,1,''),(796,355,21,4,''),(797,355,36,4,''),(798,356,24,2,''),(799,356,41,4,''),(800,357,21,10,''),(801,357,22,10,''),(802,357,69,1,''),(803,358,21,10,''),(804,358,22,2,''),(805,359,21,20,''),(806,359,22,5,''),(807,359,23,2,''),(808,360,21,2,''),(809,360,24,1,''),(810,360,79,1,''),(811,360,197,1,''),(812,360,222,1,''),(813,361,22,3,''),(814,361,21,3,''),(815,361,204,1,''),(816,362,191,1,''),(817,363,21,10,''),(818,363,33,2,''),(819,363,78,1,''),(820,363,71,1,''),(821,363,41,2,''),(822,364,21,12,''),(823,365,102,1,''),(824,366,21,13,''),(825,367,12,1,''),(826,367,16,1,''),(827,367,2,1,''),(828,367,1,1,''),(829,367,204,1,''),(830,368,21,10,''),(831,369,21,15,''),(832,370,21,40,''),(833,370,1,1,''),(834,370,2,1,''),(835,370,42,10,''),(836,370,204,1,''),(837,371,21,12,''),(838,372,21,70,''),(839,373,21,5,''),(840,373,22,3,''),(841,373,100,1,''),(842,373,74,2,''),(843,374,21,15,''),(844,374,204,1,''),(845,375,21,6,''),(846,375,22,5,''),(847,375,32,3,''),(848,375,29,2,''),(849,375,23,3,''),(850,375,34,1,''),(851,375,75,1,''),(852,376,21,8,''),(853,376,222,1,''),(854,376,77,1,''),(855,377,100,3,''),(856,377,52,1,''),(857,377,74,1,''),(858,377,71,1,''),(859,378,22,2,''),(860,379,21,3,''),(861,379,23,3,''),(862,379,207,2,''),(863,380,21,15,''),(864,381,36,6,''),(865,381,57,1,''),(866,382,46,1,''),(867,382,99,1,''),(868,382,32,2,''),(869,382,24,2,''),(870,382,207,2,''),(871,383,22,3,''),(872,383,33,3,''),(873,383,34,3,''),(874,383,198,3,''),(875,383,21,1,''),(876,383,31,1,''),(877,383,60,1,''),(878,383,197,2,''),(879,383,61,1,''),(880,384,21,15,''),(881,384,1,1,''),(882,385,21,15,''),(883,385,22,15,''),(884,386,21,6,''),(885,387,21,6,''),(886,388,21,15,''),(887,389,21,4,''),(888,389,23,2,''),(889,389,34,1,''),(890,389,74,1,''),(891,390,21,20,''),(892,391,224,1,''),(893,392,21,5,''),(894,392,22,2,''),(895,392,36,2,''),(896,393,21,6,''),(897,393,22,3,''),(898,393,23,2,''),(899,393,69,1,''),(900,394,1,1,''),(901,394,204,1,''),(902,395,22,2,''),(903,395,21,4,''),(904,395,75,2,''),(905,396,21,50,''),(906,397,21,50,''),(907,398,21,5,''),(908,398,22,4,''),(909,398,31,3,''),(910,398,29,2,''),(911,398,30,1,''),(912,398,71,1,''),(913,398,71,1,''),(914,399,1,1,''),(915,399,2,1,''),(916,400,22,2,''),(917,400,21,2,''),(918,400,29,2,''),(919,401,9,1,''),(920,401,36,5,''),(921,402,21,6,''),(922,403,36,4,''),(923,403,70,1,''),(924,404,22,2,''),(925,404,21,4,''),(926,405,225,1,''),(927,406,21,3,''),(928,406,22,1,''),(929,407,21,2,''),(930,407,22,2,''),(931,407,29,2,''),(932,408,36,1,''),(933,410,36,1,''),(934,410,37,3,''),(935,410,41,4,''),(936,410,74,1,''),(937,411,88,1,''),(938,411,96,1,''),(939,411,22,4,''),(940,411,27,1,''),(941,411,25,2,''),(942,412,22,10,''),(943,412,36,6,''),(944,412,69,1,''),(945,413,21,3,''),(946,413,41,3,''),(947,413,87,1,''),(948,413,71,1,''),(949,414,21,10,''),(950,415,21,10,''),(951,416,22,1,''),(952,416,30,1,''),(953,416,41,2,''),(954,417,21,5,''),(955,417,22,4,''),(956,417,31,4,''),(957,418,21,20,''),(958,418,41,3,''),(959,418,36,2,''),(960,418,38,2,''),(961,419,41,3,''),(962,419,37,2,''),(963,419,67,1,''),(964,420,1,1,''),(965,421,21,10,''),(966,422,21,2,''),(967,422,22,2,''),(968,422,31,3,''),(969,422,33,2,''),(970,422,74,1,''),(971,423,36,5,''),(972,423,41,4,''),(973,423,38,3,''),(974,423,204,1,''),(975,424,21,10,''),(976,425,227,1,''),(977,425,204,1,''),(978,426,198,2,''),(979,426,21,4,''),(980,426,22,4,''),(981,427,228,1,''),(982,428,41,2,''),(983,428,36,4,''),(984,429,22,2,''),(985,429,23,2,''),(986,429,24,4,''),(987,429,30,1,''),(988,429,29,1,''),(989,429,77,3,''),(990,430,21,4,''),(991,430,22,2,''),(992,430,200,1,''),(993,431,36,4,''),(994,431,74,1,''),(995,432,36,4,''),(996,432,21,6,''),(997,432,67,1,''),(998,432,74,1,''),(999,433,21,6,''),(1000,434,21,1,''),(1001,434,22,1,''),(1002,434,104,1,''),(1003,434,72,1,''),(1004,435,36,5,''),(1005,435,74,1,''),(1006,436,21,15,''),(1007,436,22,4,''),(1008,437,21,8,''),(1009,437,22,4,''),(1010,437,29,1,''),(1011,437,76,2,''),(1012,438,229,1,''),(1013,439,49,1,''),(1014,440,208,1,''),(1015,440,49,1,''),(1016,440,74,1,''),(1017,441,21,8,''),(1018,441,22,8,''),(1019,441,24,8,''),(1020,442,21,6,''),(1021,442,74,1,''),(1022,443,198,10,''),(1023,443,22,1,''),(1024,443,31,1,''),(1025,443,191,1,''),(1026,444,22,3,''),(1027,444,21,3,''),(1028,444,23,3,''),(1029,444,204,1,''),(1030,444,41,2,''),(1031,445,22,10,''),(1032,445,21,10,''),(1033,445,78,1,''),(1034,445,108,1,''),(1035,446,21,1,''),(1036,446,27,2,''),(1037,446,22,2,''),(1038,446,23,2,''),(1039,446,75,1,''),(1040,446,222,1,''),(1041,447,21,3,''),(1042,447,22,1,''),(1043,447,23,1,''),(1044,448,74,1,''),(1045,448,82,2,''),(1046,448,22,1,''),(1047,448,30,1,''),(1048,448,31,1,''),(1049,449,36,4,''),(1050,449,60,3,''),(1051,449,197,3,''),(1052,450,21,8,''),(1053,450,22,2,''),(1054,450,23,2,''),(1055,450,31,3,''),(1056,450,36,1,''),(1057,451,82,1,''),(1058,451,88,1,''),(1059,451,22,1,''),(1060,451,21,2,''),(1061,451,67,2,''),(1062,451,21,3,''),(1063,452,21,10,''),(1064,453,36,10,''),(1065,454,36,10,''),(1066,455,36,2,''),(1067,455,45,2,''),(1068,455,74,1,''),(1069,456,21,27,''),(1070,456,36,2,''),(1071,457,36,1,''),(1072,458,21,15,''),(1073,459,74,1,''),(1074,460,21,10,''),(1075,461,231,1,''),(1076,461,65,1,''),(1077,462,67,1,''),(1078,462,36,2,''),(1079,463,21,7,''),(1080,463,198,2,''),(1081,463,203,1,''),(1082,464,41,4,''),(1083,464,67,1,''),(1084,464,36,8,''),(1085,465,36,6,''),(1086,466,21,20,''),(1087,467,21,15,''),(1088,467,22,4,''),(1089,468,51,1,''),(1090,468,21,2,''),(1091,468,29,1,''),(1092,468,32,1,''),(1093,468,33,1,''),(1094,468,27,1,''),(1095,468,200,1,''),(1096,468,199,1,''),(1097,469,21,3,''),(1098,469,198,2,''),(1099,470,207,1,''),(1100,470,36,3,''),(1101,471,21,10,''),(1102,471,200,5,''),(1103,471,68,1,''),(1104,472,36,10,''),(1105,473,36,3,''),(1106,473,67,2,''),(1107,473,21,15,''),(1108,474,22,5,''),(1109,474,21,5,''),(1110,475,21,30,''),(1111,476,21,9,''),(1112,476,69,1,''),(1113,477,233,1,''),(1114,477,208,2,''),(1115,477,105,1,''),(1116,478,36,1,''),(1117,478,86,1,''),(1118,478,103,1,''),(1119,478,74,1,''),(1120,478,36,1,''),(1121,479,21,10,''),(1122,479,71,2,''),(1123,479,41,2,''),(1124,480,235,1,''),(1125,481,20,1,''),(1126,481,204,1,''),(1127,482,21,10,''),(1128,483,21,6,''),(1129,484,21,5,''),(1130,484,30,4,''),(1131,484,22,3,''),(1132,485,36,8,''),(1133,485,45,2,''),(1134,485,71,1,''),(1135,486,21,2,''),(1136,486,22,2,''),(1137,486,23,2,''),(1138,486,27,2,''),(1139,486,31,2,''),(1140,487,21,6,''),(1141,487,22,2,''),(1142,487,23,2,''),(1143,487,35,2,''),(1144,488,1,1,''),(1145,488,2,1,''),(1146,488,236,1,''),(1147,489,21,6,''),(1148,489,36,4,''),(1149,490,36,16,''),(1150,491,82,1,''),(1151,492,21,2,''),(1152,492,22,2,''),(1153,492,26,2,''),(1154,492,31,2,''),(1155,492,32,2,''),(1156,492,69,1,''),(1157,492,65,1,''),(1158,493,89,1,''),(1159,493,63,1,''),(1160,494,75,4,''),(1161,495,237,1,''),(1162,496,51,1,''),(1163,496,204,1,''),(1164,496,36,1,''),(1165,497,36,4,''),(1166,497,74,1,''),(1167,497,104,1,''),(1168,498,21,10,''),(1169,498,204,1,''),(1170,498,41,2,''),(1171,499,89,1,''),(1172,499,81,1,''),(1173,499,91,2,''),(1174,499,83,1,''),(1175,499,69,1,''),(1176,500,29,8,''),(1177,500,27,8,''),(1178,502,21,10,''),(1179,502,22,10,''),(1180,502,31,5,''),(1181,502,217,10,''),(1182,503,21,2,''),(1183,503,31,2,''),(1184,503,23,2,''),(1185,503,36,2,''),(1186,504,36,16,''),(1187,504,67,2,''),(1188,505,21,6,''),(1189,506,36,4,''),(1190,506,71,1,''),(1191,507,239,1,''),(1192,507,71,1,''),(1193,508,21,14,''),(1194,508,22,1,''),(1195,509,45,2,''),(1196,509,41,2,''),(1197,510,21,6,''),(1198,510,22,1,''),(1199,511,21,5,''),(1200,511,67,1,''),(1201,511,36,1,''),(1202,512,21,8,''),(1203,513,36,6,''),(1204,513,74,1,''),(1205,514,21,2,''),(1206,514,41,1,''),(1207,514,22,2,''),(1208,514,67,1,''),(1209,515,36,1,''),(1210,515,74,1,''),(1211,515,105,1,''),(1212,516,198,1,''),(1213,516,36,2,''),(1214,516,222,1,''),(1215,517,83,1,''),(1216,517,82,1,''),(1217,518,21,6,''),(1218,518,22,4,''),(1219,518,26,4,''),(1220,518,25,3,''),(1221,518,27,2,''),(1222,518,31,1,''),(1223,518,30,1,''),(1224,519,36,2,''),(1225,519,67,1,''),(1226,519,103,1,''),(1227,520,21,15,''),(1228,520,204,1,''),(1229,521,22,2,''),(1230,521,34,3,''),(1231,521,222,1,''),(1232,522,21,20,''),(1233,522,22,5,''),(1234,523,36,6,''),(1235,523,204,1,''),(1236,524,103,1,''),(1237,524,67,1,''),(1238,524,36,2,''),(1239,525,21,2,''),(1240,525,23,1,''),(1241,525,22,1,''),(1242,526,67,2,''),(1243,526,36,8,''),(1244,527,21,20,''),(1245,527,69,1,''),(1246,528,21,4,''),(1247,528,36,1,''),(1248,529,21,8,''),(1249,529,22,4,''),(1250,530,21,20,''),(1251,530,208,2,''),(1252,530,69,1,''),(1253,531,21,10,''),(1254,531,36,9,''),(1255,532,36,3,''),(1256,533,21,3,''),(1257,533,29,2,''),(1258,533,78,1,''),(1259,534,36,3,''),(1260,534,67,1,''),(1261,535,98,1,''),(1262,536,21,2,''),(1263,536,22,3,''),(1264,536,23,2,''),(1265,536,25,2,''),(1266,536,31,3,''),(1267,537,21,8,''),(1268,537,22,8,''),(1269,538,21,5,''),(1270,538,41,5,''),(1271,538,68,1,''),(1272,539,36,6,''),(1273,539,70,2,''),(1274,540,21,5,''),(1275,540,34,1,''),(1276,540,26,1,''),(1277,540,31,1,''),(1278,541,21,3,''),(1279,541,67,1,''),(1280,542,36,5,''),(1281,542,222,1,''),(1282,543,21,5,''),(1283,543,22,1,''),(1284,543,73,1,''),(1285,544,36,3,''),(1286,544,197,1,''),(1287,544,60,1,''),(1288,545,22,5,''),(1289,546,21,10,''),(1290,546,22,5,''),(1291,546,31,2,''),(1292,546,208,1,''),(1293,547,21,5,''),(1294,547,29,2,''),(1295,548,21,3,''),(1296,548,28,1,''),(1297,549,200,2,''),(1298,550,21,5,''),(1299,551,21,6,''),(1300,551,25,2,''),(1301,552,21,20,''),(1302,553,21,3,''),(1303,553,25,1,''),(1304,553,32,2,''),(1305,554,31,2,''),(1306,555,5,12,''),(1307,555,6,5,''),(1308,555,2,4,''),(1309,555,3,3,''),(1310,555,7,1,''),(1311,555,4,7,''),(1312,556,36,1,''),(1313,556,79,8,''),(1314,556,45,1,''),(1315,556,68,1,''),(1316,557,36,1,''),(1317,557,79,11,''),(1318,557,74,1,''),(1319,557,68,1,''),(1320,557,45,1,''),(1321,558,36,2,''),(1322,558,42,9,''),(1323,559,55,3,''),(1324,560,36,1,''),(1325,560,69,1,''),(1326,560,68,1,''),(1327,560,45,1,''),(1328,561,36,1,''),(1329,561,73,1,''),(1330,562,82,1,''),(1331,562,22,1,''),(1332,563,36,8,''),(1333,563,69,1,''),(1334,563,67,1,''),(1335,564,21,2,''),(1336,564,31,1,''),(1337,565,21,8,''),(1338,565,204,1,''),(1339,566,82,1,''),(1340,566,83,1,''),(1341,567,21,10,''),(1342,568,36,5,''),(1343,568,67,2,''),(1344,569,36,4,''),(1345,569,67,1,''),(1346,570,21,3,''),(1347,571,21,30,''),(1348,572,21,30,''),(1349,573,21,10,''),(1350,573,45,1,''),(1351,573,70,2,''),(1352,573,204,1,''),(1353,573,36,2,''),(1354,573,200,1,''),(1355,574,245,1,''),(1356,575,246,1,''),(1357,575,61,1,''),(1358,575,58,1,''),(1359,575,71,1,''),(1360,576,36,7,''),(1361,576,67,3,''),(1362,577,41,1,''),(1363,577,45,1,''),(1364,577,67,1,''),(1365,578,21,5,''),(1366,579,41,6,''),(1367,579,67,3,''),(1368,580,36,6,''),(1369,580,67,4,''),(1370,581,21,5,''),(1371,582,22,3,''),(1372,582,27,3,''),(1373,582,21,4,''),(1374,582,74,1,''),(1375,583,21,2,''),(1376,583,22,2,''),(1377,583,67,1,''),(1378,584,21,4,''),(1379,584,25,4,''),(1380,584,65,1,''),(1381,584,62,1,''),(1382,584,61,1,''),(1383,584,197,1,''),(1384,585,22,2,''),(1385,585,21,3,''),(1386,585,67,1,''),(1387,586,21,35,''),(1388,586,25,2,''),(1389,586,67,1,''),(1390,586,68,1,''),(1391,587,21,10,''),(1392,588,21,3,''),(1393,588,22,3,''),(1394,588,41,1,''),(1395,588,41,1,''),(1396,589,21,2,''),(1397,589,33,2,''),(1398,589,74,1,''),(1399,590,21,2,''),(1400,590,23,1,''),(1401,590,76,1,''),(1402,591,36,3,''),(1403,591,67,1,''),(1404,592,36,2,''),(1405,592,67,1,''),(1406,592,220,1,''),(1407,592,101,1,''),(1408,593,21,10,''),(1409,593,22,5,''),(1410,594,21,20,''),(1411,594,68,1,''),(1412,595,21,2,''),(1413,595,23,1,''),(1414,595,71,1,''),(1415,596,32,2,''),(1416,596,29,2,''),(1417,596,61,1,''),(1418,597,21,20,''),(1419,597,22,5,''),(1420,598,21,4,''),(1421,598,30,2,''),(1422,598,71,1,''),(1423,598,61,2,''),(1424,598,30,2,''),(1425,598,21,1,''),(1426,598,197,2,''),(1427,599,21,1,''),(1428,600,21,3,''),(1429,601,1,2,''),(1430,602,52,1,''),(1431,603,55,12,''),(1432,604,21,10,''),(1433,605,2,1,''),(1434,606,5,1,''),(1435,607,5,1,''),(1436,608,6,1,''),(1437,609,6,1,''),(1438,610,8,1,''),(1439,611,2,1,''),(1440,612,1,1,''),(1441,613,9,1,''),(1442,614,7,1,''),(1443,615,21,6,''),(1444,616,9,1,''),(1445,617,5,1,''),(1446,618,9,1,''),(1447,619,7,1,''),(1448,620,10,1,''),(1449,621,5,1,''),(1450,622,9,1,''),(1451,623,7,1,''),(1452,624,9,1,''),(1453,625,8,1,''),(1454,626,36,6,''),(1455,627,9,1,''),(1456,628,9,1,''),(1457,629,11,1,''),(1458,630,8,1,''),(1459,631,8,1,''),(1460,632,22,1,''),(1461,632,55,1,''),(1462,633,22,1,''),(1463,633,23,1,''),(1464,633,27,1,''),(1465,633,26,1,''),(1466,634,231,1,''),(1467,634,22,1,''),(1468,635,21,1,''),(1469,636,21,10,''),(1470,636,56,1,''),(1471,637,1,1,''),(1472,637,56,1,''),(1473,638,7,1,''),(1474,639,1,1,''),(1475,640,3,1,''),(1476,641,3,1,''),(1477,641,73,1,''),(1478,642,21,10,''),(1479,643,5,1,''),(1480,644,2,1,''),(1481,645,5,1,''),(1482,646,231,1,'');
/*!40000 ALTER TABLE `pde_fato_vendas_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pde_movimentacao`
--

DROP TABLE IF EXISTS `pde_movimentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pde_movimentacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_movimentacao` varchar(2) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `origem` varchar(45) NOT NULL,
  `id_forma_pagamento` int(11) NOT NULL,
  `num_nota_fiscal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=916 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pde_movimentacao`
--

LOCK TABLES `pde_movimentacao` WRITE;
/*!40000 ALTER TABLE `pde_movimentacao` DISABLE KEYS */;
INSERT INTO `pde_movimentacao` VALUES (1,'E',28.00,'Caixa 01',3,1),(46,'E',27.00,'Delivery',3,2),(47,'E',28.00,'Delivery',2,3),(48,'E',30.00,'Delivery',3,4),(49,'E',30.00,'Delivery',2,5),(50,'E',15.00,'Delivery',3,6),(51,'E',30.00,'Delivery',3,7),(52,'E',28.30,'Delivery',3,8),(53,'E',28.00,'Delivery',2,9),(54,'E',15.00,'Caixa 01',1,10),(55,'E',30.00,'Delivery',1,12),(56,'S',30.00,'Delivery',1,12),(57,'E',20.00,'Delivery',1,13),(58,'S',20.00,'Delivery',1,13),(59,'E',54.00,'Delivery',2,15),(60,'E',26.00,'Delivery',2,16),(61,'E',30.00,'Delivery',1,18),(62,'S',7.40,'Delivery',1,18),(63,'E',10.00,'Delivery',1,19),(64,'E',7.40,'Delivery',2,19),(65,'E',31.00,'Caixa 01',1,20),(66,'S',0.40,'Caixa 01',1,20),(67,'E',31.00,'Caixa 01',1,21),(68,'S',0.40,'Caixa 01',1,21),(69,'E',31.00,'Caixa 01',1,22),(70,'S',0.40,'Caixa 01',1,22),(71,'E',20.40,'Caixa 01',2,23),(72,'E',5.00,'Caixa 01',1,24),(73,'E',5.00,'Caixa 01',3,24),(74,'E',40.00,'Mesa 1',1,25),(75,'S',8.00,'Mesa 1',1,25),(76,'E',28.00,'Mesa 1',2,26),(77,'E',50.00,'Mesa 18',1,27),(78,'S',28.30,'Mesa 18',1,27),(79,'E',80.00,'Caixa 01',1,28),(80,'S',5.40,'Caixa 01',1,28),(81,'E',38.00,'Mesa 6',2,29),(82,'E',13.90,'Caixa 01',2,30),(83,'E',60.00,'Caixa 01',1,31),(84,'S',4.00,'Caixa 01',1,31),(85,'E',30.00,'Caixa 01',1,32),(86,'S',6.00,'Caixa 01',1,32),(87,'E',30.00,'Caixa 01',1,33),(88,'S',6.00,'Caixa 01',1,33),(89,'E',30.00,'Caixa 01',1,34),(90,'S',2.00,'Caixa 01',1,34),(91,'E',25.00,'Caixa 01',1,35),(92,'S',1.00,'Caixa 01',1,35),(93,'E',50.00,'Caixa 01',1,36),(94,'S',26.00,'Caixa 01',1,36),(95,'E',50.00,'Caixa 01',1,37),(96,'S',26.00,'Caixa 01',1,37),(97,'E',25.00,'Caixa 01',2,38),(98,'E',24.00,'Caixa 01',3,39),(99,'E',50.00,'Caixa 01',1,40),(100,'S',2.00,'Caixa 01',1,40),(101,'E',40.00,'Delivery',1,41),(102,'S',9.00,'Delivery',1,41),(103,'E',50.00,'Mesa 2',1,42),(104,'S',22.00,'Mesa 2',1,42),(105,'E',24.00,'Mesa 2',2,43),(106,'E',24.00,'Mesa 1',3,44),(107,'E',10.50,'Mesa 1',2,45),(108,'E',50.00,'Caixa 01',1,46),(109,'S',28.40,'Caixa 01',1,46),(110,'E',6.00,'Mesa 2',1,47),(111,'S',0.20,'Mesa 2',1,47),(112,'E',50.00,'Caixa 01',1,48),(113,'S',20.70,'Caixa 01',1,48),(114,'E',27.00,'Delivery',2,49),(115,'E',26.00,'Delivery',3,50),(116,'E',26.00,'Delivery',2,51),(117,'E',28.00,'Delivery',3,52),(118,'E',30.00,'Delivery',1,53),(119,'S',3.10,'Delivery',1,53),(120,'E',26.00,'Delivery',3,54),(121,'E',30.00,'Delivery',1,55),(122,'S',4.00,'Delivery',1,55),(123,'E',16.00,'Caixa 01',3,56),(124,'E',13.80,'Mesa 4',2,57),(125,'E',40.00,'Mesa 4',1,58),(126,'S',16.00,'Mesa 4',1,58),(127,'E',17.10,'Caixa 01',2,59),(128,'E',20.00,'Caixa 01',1,60),(129,'S',3.00,'Caixa 01',1,60),(130,'E',50.00,'Caixa 01',1,61),(131,'S',4.00,'Caixa 01',1,61),(132,'E',40.00,'Caixa 01',1,62),(133,'S',7.00,'Caixa 01',1,62),(134,'E',31.50,'Delivery',2,63),(135,'E',20.50,'Caixa 01',2,64),(136,'E',15.00,'Caixa 01',3,65),(137,'E',22.50,'Caixa 01',2,66),(138,'E',13.20,'Mesa 4',2,67),(139,'E',23.50,'Caixa 01',2,68),(140,'E',30.00,'Mesa 4',2,69),(141,'E',4.00,'Caixa 01',3,70),(142,'E',60.00,'Mesa 2',1,71),(143,'S',6.00,'Mesa 2',1,71),(144,'E',25.00,'Mesa 1',2,72),(145,'E',50.00,'Mesa 1',1,73),(146,'S',22.00,'Mesa 1',1,73),(147,'E',15.00,'Caixa 01',1,74),(148,'S',4.50,'Caixa 01',1,74),(149,'E',10.00,'Mesa 3',1,75),(150,'S',5.70,'Mesa 3',1,75),(151,'E',8.00,'Caixa 01',2,76),(152,'E',2.80,'Caixa 01',2,77),(153,'E',24.00,'Caixa 01',3,78),(154,'E',10.50,'Caixa 01',2,79),(155,'E',10.00,'Caixa 01',1,80),(156,'S',2.00,'Caixa 01',1,80),(157,'E',10.00,'Delivery',1,81),(158,'S',4.10,'Delivery',1,81),(159,'E',4.50,'Delivery',3,82),(160,'E',8.00,'Delivery',2,83),(161,'E',25.90,'Delivery',3,84),(162,'E',14.40,'Delivery',2,85),(163,'E',100.00,'Delivery',1,86),(164,'S',40.00,'Delivery',1,86),(165,'E',5.20,'Caixa 01',2,87),(166,'E',27.90,'Delivery',2,88),(167,'E',100.00,'Mesa 15',1,89),(168,'E',30.00,'Delivery',2,90),(169,'E',30.00,'Delivery',2,91),(170,'E',6.50,'Caixa 01',2,92),(171,'E',5.20,'Caixa 01',2,93),(172,'E',30.00,'Caixa 01',1,94),(173,'S',6.00,'Caixa 01',1,94),(174,'E',50.00,'Caixa 01',1,95),(175,'S',25.00,'Caixa 01',1,95),(176,'E',15.80,'Mesa 3',2,96),(177,'E',43.00,'Caixa 01',2,97),(178,'E',33.90,'Caixa 01',3,98),(179,'E',222.00,'Caixa 01',2,99),(180,'E',24.00,'Caixa 01',2,100),(181,'E',16.90,'Caixa 01',2,101),(182,'E',20.00,'Caixa 01',1,102),(183,'S',3.00,'Caixa 01',1,102),(184,'E',5.20,'Caixa 01',3,103),(185,'E',10.00,'Caixa 01',2,104),(186,'E',12.50,'Caixa 01',3,105),(187,'E',25.00,'Caixa 01',2,106),(188,'E',25.00,'Caixa 01',2,107),(189,'E',15.00,'Caixa 01',1,108),(190,'S',3.50,'Caixa 01',1,108),(191,'E',29.00,'Caixa 01',3,109),(192,'E',29.00,'Caixa 01',3,110),(193,'E',24.00,'Caixa 01',3,111),(194,'E',10.00,'Caixa 01',2,112),(195,'E',5.20,'Caixa 01',2,113),(196,'E',6.50,'Caixa 01',2,114),(197,'E',13.20,'Caixa 01',2,115),(198,'E',10.00,'Caixa 01',1,116),(199,'S',2.50,'Caixa 01',1,116),(200,'E',1.30,'Caixa 01',3,117),(201,'E',1.30,'Caixa 01',2,118),(202,'E',2.00,'Caixa 01',3,119),(203,'E',24.00,'Caixa 01',3,120),(204,'E',3.90,'Caixa 01',2,121),(205,'E',28.00,'Caixa 01',3,122),(206,'E',25.00,'Caixa 01',3,123),(207,'E',24.00,'Caixa 01',3,124),(208,'E',50.00,'Caixa 01',1,125),(209,'S',25.00,'Caixa 01',1,125),(210,'E',30.00,'Caixa 01',1,126),(211,'S',5.00,'Caixa 01',1,126),(212,'E',40.00,'Caixa 01',1,127),(213,'S',6.80,'Caixa 01',1,127),(214,'E',29.50,'Caixa 01',2,128),(215,'E',9.80,'Delivery',3,129),(216,'E',28.00,'Mesa 2',2,130),(217,'E',71.70,'Caixa 01',2,131),(218,'E',5.20,'Caixa 01',3,132),(219,'E',50.00,'Caixa 01',1,133),(220,'S',25.60,'Caixa 01',1,133),(221,'E',27.00,'Delivery',2,134),(222,'E',87.90,'Caixa 01',2,135),(223,'E',120.00,'Caixa 01',1,136),(224,'S',2.50,'Caixa 01',1,136),(225,'E',36.00,'Delivery',2,137),(226,'E',36.00,'Delivery',2,138),(227,'E',37.00,'Delivery',3,139),(228,'E',28.00,'Caixa 01',3,140),(229,'E',60.00,'Caixa 01',2,141),(230,'E',24.00,'Mesa 1',2,142),(231,'E',26.00,'Caixa 01',2,143),(232,'E',19.99,'Caixa 01',2,144),(233,'E',36.00,'Mesa 1',2,145),(234,'E',10.00,'Mesa 15',1,146),(235,'S',2.00,'Mesa 15',1,146),(236,'E',7.96,'Mesa 15',2,147),(237,'E',15.50,'Mesa 2',2,148),(238,'E',26.99,'Caixa 01',2,149),(239,'E',29.00,'Mesa 2',2,150),(240,'E',50.00,'Caixa 01',1,151),(241,'S',25.06,'Caixa 01',1,151),(242,'E',4.99,'Caixa 01',2,152),(243,'E',59.97,'Caixa 01',3,153),(244,'E',59.48,'Mesa 3',3,154),(245,'E',7.00,'Mesa 3',2,155),(246,'E',35.99,'Mesa 3',2,156),(247,'E',1.98,'Mesa 3',1,157),(248,'E',4.95,'Caixa 01',2,158),(249,'E',11.98,'Caixa 01',2,159),(250,'E',31.99,'Mesa 1',2,160),(251,'E',19.99,'Mesa 1',2,161),(252,'E',12.99,'Caixa 01',2,162),(253,'E',10.00,'Caixa 01',1,163),(254,'S',3.00,'Caixa 01',1,163),(255,'E',29.00,'Caixa 01',1,164),(256,'E',8.50,'Caixa 01',1,165),(257,'E',9.50,'Caixa 01',2,166),(258,'E',6.45,'Caixa 01',1,167),(259,'E',15.50,'Mesa 1',1,168),(260,'E',11.00,'Caixa 01',1,169),(261,'E',10.97,'Mesa 3',2,170),(262,'E',1300.00,'Mesa 2',1,171),(263,'S',1287.00,'Mesa 2',1,171),(264,'E',10.00,'Caixa 01',1,172),(265,'S',0.10,'Caixa 01',1,172),(266,'E',24.75,'Caixa 01',1,173),(267,'E',41.70,'Caixa 01',1,174),(268,'E',8.47,'Mesa 6',2,175),(269,'E',20.00,'Mesa 5',1,176),(270,'E',12.50,'Caixa 01',1,177),(271,'S',2.60,'Caixa 01',1,177),(272,'E',26.99,'Caixa 01',2,178),(273,'E',0.00,'Mesa 2',1,179),(274,'E',4.00,'Mesa 3',1,180),(275,'E',15.00,'Mesa 4',1,181),(276,'E',28.00,'Caixa 01',1,182),(277,'E',28.00,'Caixa 01',1,183),(278,'E',3.50,'Mesa 1',2,184),(279,'E',19.50,'Caixa 01',3,185),(280,'E',2.97,'Mesa 2',2,186),(281,'E',5.00,'Caixa 01',1,187),(282,'S',0.05,'Caixa 01',1,187),(283,'E',29.90,'Caixa 01',1,188),(284,'E',51.34,'Caixa 01',1,189),(285,'E',29.80,'Caixa 01',3,190),(286,'E',20.00,'Mesa 2',1,191),(287,'S',15.03,'Mesa 2',1,191),(288,'E',50.00,'Mesa 2',1,192),(289,'S',30.01,'Mesa 2',1,192),(290,'E',6.00,'Mesa 3',1,193),(291,'S',0.03,'Mesa 3',1,193),(292,'E',12.96,'Caixa 01',2,194),(293,'E',12.96,'Caixa 01',2,195),(294,'E',12.96,'Caixa 01',2,196),(295,'E',7.00,'Caixa 01',2,197),(296,'E',4.50,'Caixa 01',2,198),(297,'E',52.00,'Mesa 1',1,199),(298,'S',27.05,'Mesa 1',1,199),(299,'E',100.00,'Caixa 01',1,200),(300,'S',72.55,'Caixa 01',1,200),(301,'E',21.00,'Mesa 1',1,201),(302,'E',30.00,'Mesa 3',1,202),(303,'S',1.04,'Mesa 3',1,202),(304,'E',50.00,'Mesa 10',1,203),(305,'S',30.07,'Mesa 10',1,203),(306,'E',39.98,'Mesa 1',3,204),(307,'E',60.00,'Mesa 1',1,205),(308,'S',0.03,'Mesa 1',1,205),(309,'E',10.50,'Caixa 01',1,206),(310,'S',10.50,'Caixa 01',1,206),(311,'E',87.99,'Mesa 1',2,207),(312,'E',50.00,'Mesa 2',1,209),(313,'S',33.03,'Mesa 2',1,209),(314,'E',50.00,'Caixa 01',1,210),(315,'S',24.00,'Caixa 01',1,210),(316,'E',10.47,'Caixa 01',2,211),(317,'E',105.00,'Caixa 01',1,212),(318,'S',2.00,'Caixa 01',1,212),(319,'E',50.00,'Caixa 01',1,213),(320,'S',30.01,'Caixa 01',1,213),(321,'E',22.20,'Caixa 01',2,214),(322,'E',20.20,'Caixa 01',3,215),(323,'E',10.00,'Mesa 2',1,216),(324,'S',5.50,'Mesa 2',1,216),(325,'E',4.50,'Mesa 2',2,217),(326,'E',28.00,'Mesa 2',2,218),(327,'E',14.00,'Mesa 1',1,219),(328,'S',0.06,'Mesa 1',1,219),(329,'E',60.00,'Mesa 2',1,220),(330,'S',0.10,'Mesa 2',1,220),(331,'E',20.93,'Mesa 2',2,221),(332,'E',13.86,'Mesa 2',2,222),(333,'E',25.00,'Mesa 2',1,223),(334,'S',3.10,'Mesa 2',1,223),(335,'E',5.98,'Caixa 01',1,224),(336,'E',22.00,'Caixa 01',1,225),(337,'S',0.10,'Caixa 01',1,225),(338,'E',6.00,'Caixa 01',2,226),(339,'E',3.96,'Caixa 01',1,227),(340,'E',20.00,'Caixa 01',1,228),(341,'S',6.10,'Caixa 01',1,228),(342,'E',10.00,'Mesa 2',1,229),(343,'S',0.52,'Mesa 2',1,229),(344,'E',4.00,'Mesa 1',2,230),(345,'E',16.08,'Caixa 01',2,231),(346,'E',10.00,'Caixa 01',1,232),(347,'S',0.10,'Caixa 01',1,232),(348,'E',20.00,'Caixa 01',1,233),(349,'S',0.20,'Caixa 01',1,233),(350,'E',34.90,'Caixa 01',2,234),(351,'E',9.98,'Caixa 01',2,235),(352,'E',26.98,'Caixa 01',2,236),(353,'E',30.90,'Caixa 01',1,237),(354,'E',10.00,'Caixa 01',1,238),(355,'S',0.10,'Caixa 01',1,238),(356,'E',12.00,'Mesa 2',1,239),(357,'E',22.44,'Caixa 01',2,240),(358,'E',50.00,'Caixa 01',1,241),(359,'S',44.00,'Caixa 01',1,241),(360,'E',20.00,'Mesa 1',1,242),(361,'S',7.04,'Mesa 1',1,242),(362,'E',15.00,'Mesa 4',1,243),(363,'S',1.50,'Mesa 4',1,243),(364,'E',30.00,'Caixa 01',1,244),(365,'S',0.30,'Caixa 01',1,244),(366,'E',29.70,'Caixa 01',1,245),(367,'E',13.50,'Mesa 3',1,246),(368,'E',50.00,'Caixa 01',1,247),(369,'S',21.60,'Caixa 01',1,247),(370,'E',20.00,'Caixa 01',1,248),(371,'S',15.50,'Caixa 01',1,248),(372,'E',41.18,'Caixa 01',2,249),(373,'E',10.50,'Mesa 4',2,250),(374,'E',11.97,'Mesa 2',1,251),(375,'E',26.69,'Mesa 2',2,252),(376,'E',50.00,'Caixa 01',1,253),(377,'S',37.06,'Caixa 01',1,253),(378,'E',4.50,'Mesa 2',2,254),(379,'E',50.00,'Caixa 01',1,255),(380,'S',30.20,'Caixa 01',1,255),(381,'E',13.86,'Caixa 01',1,256),(382,'E',9.94,'Caixa 01',1,257),(383,'E',27.50,'Caixa 01',1,258),(384,'E',50.00,'Caixa 01',1,259),(385,'S',40.10,'Caixa 01',1,259),(386,'E',4.00,'Caixa 01',1,260),(387,'E',12.00,'Caixa 01',1,261),(388,'E',15.96,'Caixa 01',2,262),(389,'E',15.97,'Caixa 01',2,263),(390,'E',10.50,'Mesa 3',1,264),(391,'E',9.00,'Mesa 4',1,265),(392,'E',25.00,'Caixa 01',1,266),(393,'S',2.08,'Caixa 01',1,266),(394,'E',10.00,'Caixa 01',1,267),(395,'S',0.03,'Caixa 01',1,267),(396,'E',30.49,'Mesa 1',2,268),(397,'E',15.90,'Caixa 01',3,269),(398,'E',9.47,'Caixa 01',1,270),(399,'E',5.49,'Mesa 2',1,271),(400,'E',9.92,'Caixa 01',2,272),(401,'E',23.96,'Mesa 5',1,273),(402,'E',19.67,'Caixa 01',2,274),(403,'E',4.50,'Mesa 1',1,275),(404,'E',6.00,'Mesa 4',1,276),(405,'S',0.03,'Mesa 4',1,276),(406,'E',5.94,'Caixa 01',1,277),(407,'E',12.00,'Mesa 1',1,278),(408,'E',5.00,'Mesa 1',1,279),(409,'S',0.02,'Mesa 1',1,279),(410,'E',12.87,'Caixa 01',2,280),(411,'E',39.60,'Caixa 01',3,281),(412,'E',40.00,'Caixa 01',1,282),(413,'S',10.10,'Caixa 01',1,282),(414,'E',22.58,'Caixa 01',2,283),(415,'E',29.70,'Caixa 01',2,284),(416,'E',29.70,'Caixa 01',2,285),(417,'E',4.95,'Caixa 01',2,286),(418,'E',39.60,'Caixa 01',2,287),(419,'E',39.60,'Caixa 01',2,288),(420,'E',14.85,'Caixa 01',1,289),(421,'E',14.85,'Caixa 01',1,290),(422,'E',100.00,'Mesa 1',1,291),(423,'S',64.00,'Mesa 1',1,291),(424,'E',69.98,'Mesa 2',2,292),(425,'E',15.90,'Mesa 1',2,293),(426,'E',11.93,'Mesa 3',3,294),(427,'E',14.95,'Caixa 01',2,295),(428,'E',50.00,'Caixa 01',1,296),(429,'S',40.10,'Caixa 01',1,296),(430,'E',5.94,'Caixa 01',3,297),(431,'E',10.00,'Caixa 01',1,298),(432,'S',0.10,'Caixa 01',1,298),(433,'E',16.92,'Caixa 01',2,299),(434,'E',50.00,'Caixa 01',1,300),(435,'S',29.00,'Caixa 01',1,300),(436,'E',10.00,'Caixa 01',1,301),(437,'S',2.50,'Caixa 01',1,301),(438,'E',10.00,'Caixa 01',1,302),(439,'E',150.00,'Caixa 01',1,303),(440,'S',30.60,'Caixa 01',1,303),(441,'E',16.00,'Caixa 01',1,304),(442,'S',1.00,'Caixa 01',1,304),(443,'E',2.00,'Caixa 01',1,305),(444,'E',20.00,'Caixa 01',1,306),(445,'S',11.00,'Caixa 01',1,306),(446,'E',21.00,'Caixa 01',1,307),(447,'E',2.00,'Caixa 01',1,308),(448,'E',20.00,'Caixa 01',1,309),(449,'S',17.00,'Caixa 01',1,309),(450,'E',20.00,'Caixa 01',1,310),(451,'S',14.00,'Caixa 01',1,310),(452,'E',12.00,'Caixa 01',1,311),(453,'S',1.50,'Caixa 01',1,311),(454,'E',4.50,'Caixa 01',2,312),(455,'E',100.00,'Caixa 01',1,313),(456,'S',74.00,'Caixa 01',1,313),(457,'E',10.00,'Caixa 01',1,314),(458,'S',5.00,'Caixa 01',1,314),(459,'E',5.00,'Caixa 01',1,315),(460,'S',1.50,'Caixa 01',1,315),(461,'E',100.00,'Caixa 01',1,316),(462,'S',91.00,'Caixa 01',1,316),(463,'E',10.00,'Caixa 01',1,317),(464,'S',8.50,'Caixa 01',1,317),(465,'E',150.00,'Caixa 01',1,318),(466,'S',30.06,'Caixa 01',1,318),(467,'E',5.00,'Caixa 01',1,319),(468,'S',3.50,'Caixa 01',1,319),(469,'E',20.00,'Caixa 01',1,320),(470,'S',16.50,'Caixa 01',1,320),(471,'E',13.00,'Caixa 01',2,321),(472,'E',33.00,'Caixa 01',2,322),(473,'E',9.00,'Caixa 01',1,323),(474,'E',16.00,'Caixa 01',1,324),(475,'E',8.00,'Caixa 01',1,325),(476,'E',8.00,'Caixa 01',1,326),(477,'E',20.00,'Caixa 01',2,327),(478,'E',8.50,'Caixa 01',2,328),(479,'E',5.00,'Caixa 01',1,329),(480,'S',3.00,'Caixa 01',1,329),(481,'E',50.00,'Caixa 01',1,330),(482,'S',45.50,'Caixa 01',1,330),(483,'E',50.00,'Caixa 01',1,331),(484,'S',43.00,'Caixa 01',1,331),(485,'E',20.00,'Caixa 01',1,332),(486,'S',2.50,'Caixa 01',1,332),(487,'E',10.00,'Caixa 01',1,333),(488,'S',2.50,'Caixa 01',1,333),(489,'E',10.00,'Caixa 01',1,334),(490,'S',4.00,'Caixa 01',1,334),(491,'E',9.00,'Caixa 01',2,335),(492,'E',50.00,'Caixa 01',1,337),(493,'S',38.00,'Caixa 01',1,337),(494,'E',15.00,'Caixa 01',2,338),(495,'E',15.00,'Caixa 01',2,339),(496,'E',40.00,'Caixa 01',1,340),(497,'S',10.00,'Caixa 01',1,340),(498,'E',40.00,'Caixa 01',1,341),(499,'S',10.00,'Caixa 01',1,341),(500,'E',40.00,'Caixa 01',1,342),(501,'S',10.00,'Caixa 01',1,342),(502,'E',50.00,'Caixa 01',1,343),(503,'S',36.00,'Caixa 01',1,343),(504,'E',50.00,'Caixa 01',1,344),(505,'S',45.00,'Caixa 01',1,344),(506,'E',8.00,'Mesa 2',1,345),(507,'E',4.00,'Mesa 1',1,346),(508,'S',1.03,'Mesa 1',1,346),(509,'E',20.00,'Mesa 3',1,347),(510,'S',5.12,'Mesa 3',1,347),(511,'E',14.00,'Mesa 2',2,348),(512,'E',7.96,'Mesa 4',1,349),(513,'E',57.25,'Caixa 01',1,350),(514,'S',29.98,'Caixa 01',1,350),(515,'E',9.90,'Caixa 01',1,351),(516,'E',22.96,'Mesa 1',2,352),(517,'E',50.40,'Caixa 01',1,353),(518,'E',20.00,'Caixa 01',1,354),(519,'S',8.00,'Caixa 01',1,354),(520,'E',20.00,'Caixa 01',1,355),(521,'S',10.04,'Caixa 01',1,355),(522,'E',10.00,'Caixa 01',2,356),(523,'E',50.00,'Caixa 01',1,357),(524,'S',11.60,'Caixa 01',1,357),(525,'E',13.90,'Caixa 01',1,358),(526,'E',33.80,'Caixa 01',2,359),(527,'E',10.00,'Mesa 1',1,360),(528,'S',0.02,'Mesa 1',1,360),(529,'E',15.47,'Caixa 01',2,361),(530,'E',50.00,'Caixa 01',1,362),(531,'E',27.90,'Mesa 5',2,363),(532,'E',11.88,'Caixa 01',2,364),(533,'E',8.00,'Caixa 01',2,365),(534,'E',12.87,'Caixa 01',2,366),(535,'E',98.48,'Caixa 01',3,367),(536,'E',10.00,'Caixa 01',1,368),(537,'S',0.10,'Caixa 01',1,368),(538,'E',15.00,'Caixa 01',1,369),(539,'S',0.15,'Caixa 01',1,369),(540,'E',50.00,'Caixa 01',1,370),(541,'E',51.08,'Caixa 01',2,370),(542,'E',11.88,'Caixa 01',1,371),(543,'E',70.00,'Caixa 01',1,372),(544,'S',0.70,'Caixa 01',1,372),(545,'E',29.95,'Mesa 1',2,373),(546,'E',50.00,'Caixa 01',1,374),(547,'S',28.65,'Caixa 01',1,374),(548,'E',41.54,'Caixa 01',2,375),(549,'E',17.92,'Mesa 1',2,376),(550,'E',45.00,'Mesa 1',2,377),(551,'E',5.00,'Caixa 01',1,378),(552,'S',1.00,'Caixa 01',1,378),(553,'E',28.97,'Mesa 5',2,379),(554,'E',20.00,'Caixa 01',1,380),(555,'S',5.15,'Caixa 01',1,380),(556,'E',13.00,'Caixa 01',2,381),(557,'E',54.49,'Mesa 7',1,382),(558,'E',44.29,'Mesa 7',2,383),(559,'E',34.84,'Caixa 01',2,384),(560,'E',44.85,'Caixa 01',3,385),(561,'E',5.94,'Caixa 01',1,386),(562,'E',10.00,'Caixa 01',1,387),(563,'S',4.06,'Caixa 01',1,387),(564,'E',50.00,'Caixa 01',1,388),(565,'S',35.15,'Caixa 01',1,388),(566,'E',16.56,'Caixa 01',2,389),(567,'E',19.80,'Caixa 01',1,390),(568,'E',15.00,'Caixa 01',3,391),(569,'E',11.95,'Caixa 01',2,392),(570,'E',24.44,'Caixa 01',2,393),(571,'E',26.49,'Mesa 12',2,394),(572,'E',16.96,'Caixa 01',2,395),(573,'E',50.00,'Caixa 01',1,396),(574,'S',0.50,'Caixa 01',1,396),(575,'E',50.00,'Caixa 01',1,397),(576,'S',0.50,'Caixa 01',1,397),(577,'E',35.95,'Caixa 01',2,398),(578,'E',39.98,'Caixa 01',3,399),(579,'E',10.98,'Caixa 01',2,400),(580,'E',50.00,'Mesa 8',1,401),(581,'S',16.50,'Mesa 8',1,401),(582,'E',5.94,'Caixa 01',2,402),(583,'E',10.00,'Caixa 01',2,403),(584,'E',10.00,'Caixa 01',1,404),(585,'S',2.04,'Caixa 01',1,404),(586,'E',19.99,'Caixa 01',2,405),(587,'E',4.97,'Caixa 01',2,406),(588,'E',10.98,'Caixa 01',2,407),(589,'E',50.00,'Caixa 01',1,408),(590,'S',48.50,'Caixa 01',1,408),(591,'E',50.00,'Mesa 1',1,410),(592,'S',32.00,'Mesa 1',1,410),(593,'E',19.60,'Caixa 01',2,411),(594,'E',37.50,'Mesa 1',2,412),(595,'E',15.47,'Mesa 4',2,413),(596,'E',9.90,'Caixa 01',2,414),(597,'E',9.90,'Caixa 01',3,415),(598,'E',20.00,'Mesa 4',1,416),(599,'S',12.50,'Mesa 4',1,416),(600,'E',22.95,'Caixa 01',2,417),(601,'E',30.30,'Caixa 01',2,418),(602,'E',9.00,'Mesa 5',2,419),(603,'E',20.00,'Caixa 01',1,420),(604,'S',0.01,'Caixa 01',1,420),(605,'E',20.00,'Caixa 01',1,421),(606,'S',10.10,'Caixa 01',1,421),(607,'E',20.00,'Caixa 01',1,421),(608,'S',10.10,'Caixa 01',1,421),(609,'E',24.48,'Mesa 4',2,422),(610,'E',24.50,'Mesa 4',2,423),(611,'E',9.90,'Caixa 01',2,424),(612,'E',32.50,'Caixa 01',2,425),(613,'E',18.96,'Caixa 01',2,426),(614,'E',26.00,'Caixa 01',2,427),(615,'E',20.00,'Mesa 2',1,428),(616,'S',11.00,'Mesa 2',1,428),(617,'E',40.50,'Mesa 1',2,429),(618,'E',11.46,'Caixa 01',2,430),(619,'E',50.00,'Mesa 2',1,431),(620,'S',38.00,'Mesa 2',1,431),(621,'E',19.44,'Mesa 2',2,432),(622,'E',5.94,'Caixa 01',2,433),(623,'E',17.49,'Mesa 1',3,434),(624,'E',20.00,'Mesa 2',1,435),(625,'S',6.50,'Mesa 2',1,435),(626,'E',22.85,'Caixa 01',3,436),(627,'E',26.42,'Caixa 01',2,437),(628,'E',19.99,'Caixa 01',3,438),(629,'E',20.00,'Caixa 01',1,439),(630,'S',0.01,'Caixa 01',1,439),(631,'E',34.99,'Mesa 1',2,440),(632,'E',39.92,'Caixa 01',2,441),(633,'E',50.00,'Mesa 2',1,442),(634,'S',38.06,'Mesa 2',1,442),(635,'E',89.50,'Mesa 5',2,443),(636,'E',30.00,'Caixa 01',1,444),(637,'S',5.53,'Caixa 01',1,444),(638,'E',38.40,'Caixa 01',2,445),(639,'E',22.19,'Mesa 9',2,446),(640,'E',6.97,'Caixa 01',2,447),(641,'E',51.00,'Caixa 01',1,448),(642,'S',30.00,'Caixa 01',1,448),(643,'E',20.00,'Mesa 4',1,449),(644,'S',0.50,'Mesa 4',1,449),(645,'E',24.92,'Caixa 01',2,450),(646,'E',17.95,'Mesa 2',3,451),(647,'E',20.00,'Caixa 01',1,452),(648,'S',10.10,'Caixa 01',1,452),(649,'E',20.00,'Caixa 01',1,453),(650,'S',5.00,'Caixa 01',1,453),(651,'E',20.00,'Caixa 01',1,454),(652,'S',5.00,'Caixa 01',1,454),(653,'E',19.00,'Caixa 01',2,455),(654,'E',29.73,'Caixa 01',1,456),(655,'E',10.00,'Caixa 01',1,457),(656,'S',8.50,'Caixa 01',1,457),(657,'E',15.00,'Caixa 01',1,458),(658,'S',0.15,'Caixa 01',1,458),(659,'E',7.00,'Caixa 01',1,459),(660,'S',1.00,'Caixa 01',1,459),(661,'E',10.00,'Caixa 01',1,460),(662,'S',0.10,'Caixa 01',1,460),(663,'E',40.00,'Caixa 01',1,461),(664,'S',16.01,'Caixa 01',1,461),(665,'E',20.50,'Caixa 01',1,462),(666,'S',16.00,'Caixa 01',1,462),(667,'E',17.43,'Caixa 01',2,463),(668,'E',20.00,'Mesa 4',1,464),(669,'S',0.50,'Mesa 4',1,464),(670,'E',10.00,'Mesa 4',1,465),(671,'S',1.00,'Mesa 4',1,465),(672,'E',20.00,'Caixa 01',1,466),(673,'S',0.20,'Caixa 01',1,466),(674,'E',50.00,'Caixa 01',1,467),(675,'S',27.15,'Caixa 01',1,467),(676,'E',39.07,'Caixa 01',2,468),(677,'E',50.00,'Caixa 01',1,469),(678,'S',40.03,'Caixa 01',1,469),(679,'E',20.00,'Mesa 2',1,470),(680,'S',5.50,'Mesa 2',1,470),(681,'E',37.40,'Caixa 01',2,471),(682,'E',50.00,'Caixa 01',1,472),(683,'S',35.00,'Caixa 01',1,472),(684,'E',22.35,'Mesa 3',2,473),(685,'E',20.00,'Caixa 01',1,474),(686,'S',5.05,'Caixa 01',1,474),(687,'E',30.00,'Caixa 01',1,475),(688,'S',0.30,'Caixa 01',1,475),(689,'E',50.00,'Caixa 01',1,476),(690,'S',32.59,'Caixa 01',1,476),(691,'E',40.00,'Mesa 2',1,477),(692,'S',5.00,'Mesa 2',1,477),(693,'E',21.00,'Mesa 1',2,478),(694,'E',20.90,'Caixa 01',3,479),(695,'E',50.00,'Caixa 01',1,480),(696,'S',30.01,'Caixa 01',1,480),(697,'E',34.50,'Mesa 4',2,481),(698,'E',20.00,'Caixa 01',1,482),(699,'S',10.10,'Caixa 01',1,482),(700,'E',6.00,'Caixa 01',1,483),(701,'S',0.06,'Caixa 01',1,483),(702,'E',20.95,'Caixa 01',3,484),(703,'E',50.00,'Mesa 2',1,485),(704,'S',24.00,'Mesa 2',1,485),(705,'E',20.18,'Caixa 01',2,486),(706,'E',17.94,'Caixa 01',2,487),(707,'E',65.98,'Caixa 01',2,488),(708,'E',11.94,'Caixa 01',2,489),(709,'E',50.00,'Caixa 01',1,490),(710,'S',26.00,'Caixa 01',1,490),(711,'E',4.00,'Caixa 01',2,491),(712,'E',33.48,'Caixa 01',2,492),(713,'E',12.00,'Mesa 1',1,493),(714,'E',18.00,'Caixa 01',1,494),(715,'E',50.00,'Caixa 01',1,495),(716,'S',26.00,'Caixa 01',1,495),(717,'E',27.99,'Caixa 01',2,496),(718,'E',25.00,'Mesa 5',1,497),(719,'S',1.00,'Mesa 5',1,497),(720,'E',19.40,'Mesa 1',2,498),(721,'E',26.50,'Caixa 01',2,499),(722,'E',40.80,'Caixa 01',2,500),(723,'E',67.40,'Caixa 01',2,502),(724,'E',13.98,'Caixa 01',3,503),(725,'E',27.00,'Mesa 3',2,504),(726,'E',10.00,'Caixa 01',1,505),(727,'S',4.06,'Caixa 01',1,505),(728,'E',20.00,'Mesa 2',1,506),(729,'S',10.00,'Mesa 2',1,506),(730,'E',30.00,'Mesa 1',1,507),(731,'S',6.01,'Mesa 1',1,507),(732,'E',20.00,'Caixa 01',1,508),(733,'S',4.14,'Caixa 01',1,508),(734,'E',50.00,'Mesa 1',1,509),(735,'S',37.00,'Mesa 1',1,509),(736,'E',10.00,'Caixa 01',1,510),(737,'S',2.06,'Caixa 01',1,510),(738,'E',20.00,'Mesa 1',1,511),(739,'S',12.05,'Mesa 1',1,511),(740,'E',7.92,'Caixa 01',2,512),(741,'E',20.00,'Mesa 3',1,513),(742,'S',5.00,'Mesa 3',1,513),(743,'E',8.98,'Mesa 1',2,514),(744,'E',50.00,'Mesa 1',1,515),(745,'S',40.50,'Mesa 1',1,515),(746,'E',50.00,'Mesa 2',1,516),(747,'S',40.00,'Mesa 2',1,516),(748,'E',8.00,'Caixa 01',2,517),(749,'E',40.14,'Mesa 5',2,518),(750,'E',50.00,'Mesa 1',1,519),(751,'S',37.50,'Mesa 1',1,519),(752,'E',21.35,'Caixa 01',2,520),(753,'E',15.00,'Mesa 4',3,521),(754,'E',30.00,'Caixa 01',1,522),(755,'S',0.20,'Caixa 01',1,522),(756,'E',20.00,'Mesa 1',1,523),(757,'S',4.50,'Mesa 1',1,523),(758,'E',12.50,'Mesa 3',2,524),(759,'E',6.00,'Caixa 01',1,525),(760,'S',0.02,'Caixa 01',1,525),(761,'E',15.00,'Mesa 1',2,526),(762,'E',28.30,'Mesa 3',2,527),(763,'E',6.00,'Mesa 2',1,528),(764,'S',0.54,'Mesa 2',1,528),(765,'E',15.92,'Caixa 01',2,529),(766,'E',46.30,'Mesa 1',2,530),(767,'E',23.40,'Caixa 01',2,531),(768,'E',50.00,'Caixa 01',1,532),(769,'S',45.50,'Caixa 01',1,532),(770,'E',13.97,'Mesa 1',2,533),(771,'E',6.00,'Mesa 2',2,534),(772,'E',5.00,'Caixa 01',1,535),(773,'S',0.50,'Caixa 01',1,535),(774,'E',23.48,'Caixa 01',2,536),(775,'E',50.00,'Caixa 01',1,537),(776,'S',26.08,'Caixa 01',1,537),(777,'E',22.45,'Caixa 01',3,538),(778,'E',20.00,'Mesa 11',1,539),(779,'S',3.00,'Mesa 11',1,539),(780,'E',13.00,'Caixa 01',1,540),(781,'S',0.55,'Caixa 01',1,540),(782,'E',4.47,'Mesa 2',2,541),(783,'E',20.00,'Mesa 3',1,542),(784,'S',9.00,'Mesa 3',1,542),(785,'E',10.00,'Mesa 1',1,543),(786,'S',0.55,'Mesa 1',1,543),(787,'E',20.00,'Mesa 3',1,544),(788,'S',11.00,'Mesa 3',1,544),(789,'E',20.00,'Caixa 01',1,545),(790,'S',10.00,'Caixa 01',1,545),(791,'E',34.00,'Caixa 01',1,546),(792,'S',0.10,'Caixa 01',1,546),(793,'E',20.00,'Caixa 01',1,547),(794,'S',10.05,'Caixa 01',1,547),(795,'E',10.00,'Mesa 1',1,548),(796,'S',4.53,'Mesa 1',1,548),(797,'E',7.00,'Caixa 01',1,549),(798,'E',4.95,'Caixa 01',2,550),(799,'E',10.00,'Caixa 01',1,551),(800,'S',0.06,'Caixa 01',1,551),(801,'E',20.00,'Caixa 01',1,552),(802,'S',0.20,'Caixa 01',1,552),(803,'E',10.00,'Caixa 01',1,553),(804,'S',0.03,'Caixa 01',1,553),(805,'E',5.00,'Caixa 01',1,554),(806,'E',741.93,'Caixa 01',3,555),(807,'E',32.50,'Caixa 01',2,556),(808,'E',44.50,'Caixa 01',1,557),(809,'E',50.00,'Caixa 01',1,558),(810,'S',33.50,'Caixa 01',1,558),(811,'E',50.00,'Caixa 01',1,559),(812,'S',38.00,'Caixa 01',1,559),(813,'E',25.00,'Caixa 01',1,560),(814,'E',4.00,'Caixa 01',1,561),(815,'E',6.00,'Caixa 01',1,562),(816,'E',52.00,'Mesa 2',1,563),(817,'S',30.00,'Mesa 2',1,563),(818,'E',4.48,'Caixa 01',2,564),(819,'E',14.42,'Caixa 01',2,565),(820,'E',8.00,'Caixa 01',2,566),(821,'E',10.00,'Caixa 01',1,567),(822,'S',0.10,'Caixa 01',1,567),(823,'E',50.00,'Mesa 2',1,568),(824,'S',39.50,'Mesa 2',1,568),(825,'E',7.50,'Mesa 3',2,569),(826,'E',2.97,'Caixa 01',2,570),(827,'E',29.70,'Caixa 01',3,571),(828,'E',29.70,'Caixa 01',2,572),(829,'E',35.90,'Mesa 1',2,573),(830,'E',26.00,'Mesa 1',2,574),(831,'E',50.00,'Mesa 2',1,575),(832,'S',10.00,'Mesa 2',1,575),(833,'E',15.00,'Mesa 1',2,576),(834,'E',8.00,'Mesa 2',2,577),(835,'E',4.95,'Caixa 01',2,578),(836,'E',13.50,'Caixa 01',2,579),(837,'E',15.00,'Mesa 2',2,580),(838,'E',5.00,'Caixa 01',1,581),(839,'S',0.05,'Caixa 01',1,581),(840,'E',23.46,'Mesa 6',2,582),(841,'E',7.48,'Mesa 4',2,583),(842,'E',24.46,'Mesa 1',2,584),(843,'E',50.00,'Mesa 3',1,585),(844,'S',41.53,'Mesa 3',1,585),(845,'E',50.15,'Caixa 01',2,586),(846,'E',20.00,'Caixa 01',1,587),(847,'S',10.10,'Caixa 01',1,587),(848,'E',11.97,'Mesa 6',2,588),(849,'E',12.98,'Mesa 1',2,589),(850,'E',7.98,'Mesa 3',2,590),(851,'E',6.00,'Mesa 2',2,591),(852,'E',13.50,'Mesa 7',2,592),(853,'E',20.00,'Caixa 01',1,593),(854,'S',0.10,'Caixa 01',1,593),(855,'E',50.00,'Mesa 4',1,594),(856,'S',20.20,'Mesa 4',1,594),(857,'E',7.98,'Mesa 1',2,595),(858,'E',14.00,'Mesa 2',2,596),(859,'E',30.00,'Caixa 01',1,597),(860,'S',0.20,'Caixa 01',1,597),(861,'E',27.95,'Mesa 3',2,598),(862,'E',0.99,'Caixa 01',2,599),(863,'E',2.97,'Caixa 01',2,600),(864,'E',39.98,'Caixa 01',2,601),(865,'E',50.00,'Caixa 01',1,602),(866,'S',36.00,'Caixa 01',1,602),(867,'E',500.00,'Caixa 01',1,603),(868,'S',452.00,'Caixa 01',1,603),(869,'E',9.90,'Caixa 01',2,604),(870,'E',19.99,'Caixa 01',2,605),(871,'E',24.00,'Caixa 01',3,606),(872,'E',24.00,'Caixa 01',2,607),(873,'E',24.00,'Caixa 01',2,608),(874,'E',24.00,'Caixa 01',2,609),(875,'E',26.00,'Caixa 01',3,610),(876,'E',19.99,'Caixa 01',2,611),(877,'E',19.99,'Caixa 01',2,612),(878,'E',26.00,'Caixa 01',2,613),(879,'E',26.00,'Caixa 01',3,614),(880,'E',5.94,'Caixa 01',2,615),(881,'E',26.00,'Caixa 01',3,616),(882,'E',24.00,'Caixa 01',2,617),(883,'E',26.00,'Caixa 01',3,618),(884,'E',26.00,'Caixa 01',2,619),(885,'E',26.00,'Caixa 01',3,620),(886,'E',24.00,'Caixa 01',2,621),(887,'E',26.00,'Caixa 01',3,622),(888,'E',26.00,'Caixa 01',2,623),(889,'E',26.00,'Caixa 01',3,624),(890,'E',26.00,'Caixa 01',3,625),(891,'E',9.00,'Caixa 01',2,626),(892,'E',26.00,'Caixa 01',3,627),(893,'E',26.00,'Caixa 01',2,628),(894,'E',26.00,'Caixa 01',3,629),(895,'E',26.00,'Caixa 01',2,630),(896,'E',26.00,'Caixa 01',3,631),(897,'E',10.00,'Caixa 01',1,632),(898,'S',4.00,'Caixa 01',1,632),(899,'E',10.00,'Mesa 1',1,633),(900,'S',1.00,'Mesa 1',1,633),(901,'E',21.99,'Caixa 01',2,634),(902,'E',0.99,'Caixa 01',2,635),(903,'E',15.00,'Caixa 01',1,636),(904,'S',1.10,'Caixa 01',1,636),(905,'E',23.99,'Caixa 01',3,637),(906,'E',26.00,'Caixa 01',2,638),(907,'E',19.99,'Caixa 01',2,639),(908,'E',19.99,'Caixa 01',3,640),(909,'E',22.49,'Caixa 01',2,641),(910,'E',10.00,'Caixa 01',1,642),(911,'S',0.10,'Caixa 01',1,642),(912,'E',24.00,'Caixa 01',2,643),(913,'E',19.99,'Mesa 2',2,644),(914,'E',24.00,'Mesa 2',2,645),(915,'E',19.99,'Caixa 01',2,646);
/*!40000 ALTER TABLE `pde_movimentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa1`
--

DROP TABLE IF EXISTS `pedido_aux_mesa1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa1`
--

LOCK TABLES `pedido_aux_mesa1` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa10`
--

DROP TABLE IF EXISTS `pedido_aux_mesa10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa10`
--

LOCK TABLES `pedido_aux_mesa10` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa11`
--

DROP TABLE IF EXISTS `pedido_aux_mesa11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa11`
--

LOCK TABLES `pedido_aux_mesa11` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa12`
--

DROP TABLE IF EXISTS `pedido_aux_mesa12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa12`
--

LOCK TABLES `pedido_aux_mesa12` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa13`
--

DROP TABLE IF EXISTS `pedido_aux_mesa13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa13`
--

LOCK TABLES `pedido_aux_mesa13` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa13` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa14`
--

DROP TABLE IF EXISTS `pedido_aux_mesa14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa14` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa14`
--

LOCK TABLES `pedido_aux_mesa14` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa14` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa15`
--

DROP TABLE IF EXISTS `pedido_aux_mesa15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa15`
--

LOCK TABLES `pedido_aux_mesa15` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa15` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa16`
--

DROP TABLE IF EXISTS `pedido_aux_mesa16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa16`
--

LOCK TABLES `pedido_aux_mesa16` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa16` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa17`
--

DROP TABLE IF EXISTS `pedido_aux_mesa17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa17`
--

LOCK TABLES `pedido_aux_mesa17` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa17` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa18`
--

DROP TABLE IF EXISTS `pedido_aux_mesa18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa18`
--

LOCK TABLES `pedido_aux_mesa18` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa18` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa19`
--

DROP TABLE IF EXISTS `pedido_aux_mesa19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa19` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa19`
--

LOCK TABLES `pedido_aux_mesa19` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa19` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa2`
--

DROP TABLE IF EXISTS `pedido_aux_mesa2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa2`
--

LOCK TABLES `pedido_aux_mesa2` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa20`
--

DROP TABLE IF EXISTS `pedido_aux_mesa20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa20`
--

LOCK TABLES `pedido_aux_mesa20` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa20` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa3`
--

DROP TABLE IF EXISTS `pedido_aux_mesa3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa3`
--

LOCK TABLES `pedido_aux_mesa3` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa4`
--

DROP TABLE IF EXISTS `pedido_aux_mesa4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa4`
--

LOCK TABLES `pedido_aux_mesa4` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa5`
--

DROP TABLE IF EXISTS `pedido_aux_mesa5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa5`
--

LOCK TABLES `pedido_aux_mesa5` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa6`
--

DROP TABLE IF EXISTS `pedido_aux_mesa6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa6`
--

LOCK TABLES `pedido_aux_mesa6` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa7`
--

DROP TABLE IF EXISTS `pedido_aux_mesa7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa7`
--

LOCK TABLES `pedido_aux_mesa7` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa8`
--

DROP TABLE IF EXISTS `pedido_aux_mesa8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa8`
--

LOCK TABLES `pedido_aux_mesa8` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_aux_mesa9`
--

DROP TABLE IF EXISTS `pedido_aux_mesa9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_aux_mesa9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_aux_mesa9`
--

LOCK TABLES `pedido_aux_mesa9` WRITE;
/*!40000 ALTER TABLE `pedido_aux_mesa9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_aux_mesa9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_balcao`
--

DROP TABLE IF EXISTS `pedido_balcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_balcao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `impresso` int(11) DEFAULT NULL,
  `senha` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_balcao`
--

LOCK TABLES `pedido_balcao` WRITE;
/*!40000 ALTER TABLE `pedido_balcao` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_balcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_balcao2`
--

DROP TABLE IF EXISTS `pedido_balcao2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_balcao2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `impresso` int(11) DEFAULT NULL,
  `senha` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_balcao2`
--

LOCK TABLES `pedido_balcao2` WRITE;
/*!40000 ALTER TABLE `pedido_balcao2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_balcao2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_delivery`
--

DROP TABLE IF EXISTS `pedido_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_motoboy` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_delivery`
--

LOCK TABLES `pedido_delivery` WRITE;
/*!40000 ALTER TABLE `pedido_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa1`
--

DROP TABLE IF EXISTS `pedido_mesa1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) CHARACTER SET utf8 NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa1`
--

LOCK TABLES `pedido_mesa1` WRITE;
/*!40000 ALTER TABLE `pedido_mesa1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa10`
--

DROP TABLE IF EXISTS `pedido_mesa10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) CHARACTER SET utf8 NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa10`
--

LOCK TABLES `pedido_mesa10` WRITE;
/*!40000 ALTER TABLE `pedido_mesa10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa11`
--

DROP TABLE IF EXISTS `pedido_mesa11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa11`
--

LOCK TABLES `pedido_mesa11` WRITE;
/*!40000 ALTER TABLE `pedido_mesa11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa12`
--

DROP TABLE IF EXISTS `pedido_mesa12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa12`
--

LOCK TABLES `pedido_mesa12` WRITE;
/*!40000 ALTER TABLE `pedido_mesa12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa13`
--

DROP TABLE IF EXISTS `pedido_mesa13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) CHARACTER SET utf8 NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa13`
--

LOCK TABLES `pedido_mesa13` WRITE;
/*!40000 ALTER TABLE `pedido_mesa13` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa14`
--

DROP TABLE IF EXISTS `pedido_mesa14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa14` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa14`
--

LOCK TABLES `pedido_mesa14` WRITE;
/*!40000 ALTER TABLE `pedido_mesa14` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa15`
--

DROP TABLE IF EXISTS `pedido_mesa15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa15`
--

LOCK TABLES `pedido_mesa15` WRITE;
/*!40000 ALTER TABLE `pedido_mesa15` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa16`
--

DROP TABLE IF EXISTS `pedido_mesa16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) CHARACTER SET utf8 NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa16`
--

LOCK TABLES `pedido_mesa16` WRITE;
/*!40000 ALTER TABLE `pedido_mesa16` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa17`
--

DROP TABLE IF EXISTS `pedido_mesa17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa17`
--

LOCK TABLES `pedido_mesa17` WRITE;
/*!40000 ALTER TABLE `pedido_mesa17` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa18`
--

DROP TABLE IF EXISTS `pedido_mesa18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa18`
--

LOCK TABLES `pedido_mesa18` WRITE;
/*!40000 ALTER TABLE `pedido_mesa18` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa19`
--

DROP TABLE IF EXISTS `pedido_mesa19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa19` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa19`
--

LOCK TABLES `pedido_mesa19` WRITE;
/*!40000 ALTER TABLE `pedido_mesa19` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa2`
--

DROP TABLE IF EXISTS `pedido_mesa2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa2`
--

LOCK TABLES `pedido_mesa2` WRITE;
/*!40000 ALTER TABLE `pedido_mesa2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa20`
--

DROP TABLE IF EXISTS `pedido_mesa20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa20`
--

LOCK TABLES `pedido_mesa20` WRITE;
/*!40000 ALTER TABLE `pedido_mesa20` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa3`
--

DROP TABLE IF EXISTS `pedido_mesa3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa3`
--

LOCK TABLES `pedido_mesa3` WRITE;
/*!40000 ALTER TABLE `pedido_mesa3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa4`
--

DROP TABLE IF EXISTS `pedido_mesa4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa4`
--

LOCK TABLES `pedido_mesa4` WRITE;
/*!40000 ALTER TABLE `pedido_mesa4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa5`
--

DROP TABLE IF EXISTS `pedido_mesa5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa5`
--

LOCK TABLES `pedido_mesa5` WRITE;
/*!40000 ALTER TABLE `pedido_mesa5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa6`
--

DROP TABLE IF EXISTS `pedido_mesa6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa6`
--

LOCK TABLES `pedido_mesa6` WRITE;
/*!40000 ALTER TABLE `pedido_mesa6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa7`
--

DROP TABLE IF EXISTS `pedido_mesa7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) CHARACTER SET utf8 NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa7`
--

LOCK TABLES `pedido_mesa7` WRITE;
/*!40000 ALTER TABLE `pedido_mesa7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa8`
--

DROP TABLE IF EXISTS `pedido_mesa8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa8`
--

LOCK TABLES `pedido_mesa8` WRITE;
/*!40000 ALTER TABLE `pedido_mesa8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_mesa9`
--

DROP TABLE IF EXISTS `pedido_mesa9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_mesa9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) CHARACTER SET utf8 NOT NULL,
  `id_garcom` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_mesa9`
--

LOCK TABLES `pedido_mesa9` WRITE;
/*!40000 ALTER TABLE `pedido_mesa9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_mesa9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_suspensos`
--

DROP TABLE IF EXISTS `produtos_suspensos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_suspensos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_suspensao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `id_motoboy` int(11) DEFAULT NULL,
  `impresso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_suspensos`
--

LOCK TABLES `produtos_suspensos` WRITE;
/*!40000 ALTER TABLE `produtos_suspensos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_suspensos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sabores_pizza`
--

DROP TABLE IF EXISTS `sabores_pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sabores_pizza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sabor1` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sabor2` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sabor3` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sabores_pizza`
--

LOCK TABLES `sabores_pizza` WRITE;
/*!40000 ALTER TABLE `sabores_pizza` DISABLE KEYS */;
INSERT INTO `sabores_pizza` VALUES (1,'PIZZA MUSSARELA','PIZZA CALABRESA',''),(2,'PIZZA DOIS QUEIJOS','PIZZA MILHO VERDE',''),(3,'ATUM','CALABRESA',''),(4,'MUSSARELA','ATUM','4 QUEIJOS');
/*!40000 ALTER TABLE `sabores_pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senhas`
--

DROP TABLE IF EXISTS `senhas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `senhas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senha` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senhas`
--

LOCK TABLES `senhas` WRITE;
/*!40000 ALTER TABLE `senhas` DISABLE KEYS */;
INSERT INTO `senhas` VALUES (2,'31038784');
/*!40000 ALTER TABLE `senhas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senhas_painel`
--

DROP TABLE IF EXISTS `senhas_painel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `senhas_painel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_abertura` int(11) NOT NULL,
  `senha` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senhas_painel`
--

LOCK TABLES `senhas_painel` WRITE;
/*!40000 ALTER TABLE `senhas_painel` DISABLE KEYS */;
INSERT INTO `senhas_painel` VALUES (1,56,0);
/*!40000 ALTER TABLE `senhas_painel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_auxiliar_venda`
--

DROP TABLE IF EXISTS `tabela_auxiliar_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_auxiliar_venda` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `total` int(100) NOT NULL,
  `pago` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_auxiliar_venda`
--

LOCK TABLES `tabela_auxiliar_venda` WRITE;
/*!40000 ALTER TABLE `tabela_auxiliar_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabela_auxiliar_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tec_mesas`
--

DROP TABLE IF EXISTS `tec_mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tec_mesas` (
  `id` int(11) NOT NULL DEFAULT '0',
  `mesa` varchar(45) CHARACTER SET utf8 NOT NULL,
  `estado` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tec_mesas`
--

LOCK TABLES `tec_mesas` WRITE;
/*!40000 ALTER TABLE `tec_mesas` DISABLE KEYS */;
INSERT INTO `tec_mesas` VALUES (1,'Mesa 01','free'),(2,'Mesa 02','free'),(3,'Mesa 03','free'),(4,'Mesa 04','free'),(5,'Mesa 05','free'),(6,'Mesa 06','free'),(7,'Mesa 07','free'),(8,'Mesa 08','free'),(9,'Mesa 09','free'),(10,'Mesa 10','free'),(11,'Mesa 11','free'),(12,'Mesa 12','free'),(13,'Mesa 13','free'),(14,'Mesa 14','free'),(15,'Mesa 15','free'),(16,'Mesa 16','free'),(17,'Mesa 17','free'),(18,'Mesa 18','free'),(19,'Mesa 19','free'),(20,'Mesa 20','free'),(21,'Mesa 21','free'),(22,'Mesa 22','free'),(23,'Mesa 23','free'),(24,'Mesa 24','free'),(25,'Mesa 25','free'),(26,'Mesa 26','free'),(27,'Mesa 27','free');
/*!40000 ALTER TABLE `tec_mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tec_pedido_mesa`
--

DROP TABLE IF EXISTS `tec_pedido_mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tec_pedido_mesa` (
  `id` int(11) NOT NULL DEFAULT '0',
  `id_produto` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `impresso` int(11) NOT NULL,
  `cozinha` int(11) DEFAULT NULL,
  `foi_pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tec_pedido_mesa`
--

LOCK TABLES `tec_pedido_mesa` WRITE;
/*!40000 ALTER TABLE `tec_pedido_mesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tec_pedido_mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tec_products`
--

DROP TABLE IF EXISTS `tec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tec_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(10) NOT NULL,
  `name` varchar(65) CHARACTER SET utf8 NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `price` decimal(25,2) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT 'no_image.png',
  `tax` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cost` decimal(25,2) DEFAULT NULL,
  `tax_method` tinyint(1) DEFAULT '1',
  `quantity` int(11) DEFAULT '0',
  `barcode_symbology` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'code39',
  `type` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'standard',
  `details` text CHARACTER SET utf8,
  `alert_quantity` decimal(10,2) DEFAULT '0.00',
  `cozinha` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=539 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tec_products`
--

LOCK TABLES `tec_products` WRITE;
/*!40000 ALTER TABLE `tec_products` DISABLE KEYS */;
INSERT INTO `tec_products` VALUES (1,125,'PIZZA MUSSARELA',1,0.00,'pmussarela.jpg','0',19.99,0,5,'','0','',2.00,1),(2,126,'PIZZA CALABRESA',1,0.00,'pcalabresa.jpg','0',19.99,0,5,'','0','',2.00,1),(3,127,'PIZZA CATUPIRY',1,0.00,'p3queijos.jpg','0',19.99,0,5,'','0','',2.00,1),(4,128,'PIZZA MARGUERITA',1,0.00,'pmarguerita.jpg','0',24.00,0,5,'','0','',2.00,1),(5,129,'PIZZA ESCAROLA',1,0.00,'pescarola.jpg','0',24.00,0,5,'','0','',2.00,1),(6,130,'PIZZA DOIS QUEIJOS',1,0.00,'pmussarela.jpg','0',24.00,0,5,'','0','',2.00,1),(7,131,'PIZZA PORTUGUESA',1,0.00,'pportuguesa.jpg','0',26.00,0,5,'','0','',2.00,1),(8,132,'PIZZA BAIANA',1,0.00,'pbaiana.jpg','0',26.00,0,5,'','0','',2.00,1),(9,133,'PIZZA TOSCANA',1,0.00,'ptoscana.jpg','0',26.00,0,5,'','0','',2.00,1),(10,134,'PIZZA MILHO',1,0.00,'pmilho.jpg','0',26.00,0,5,'','0','',2.00,1),(11,135,'PIZZA PALMITO',1,0.00,'ppalmito.jpg','0',26.00,0,5,'','0','',2.00,1),(12,136,'PIZZA TRES QUEIJOS',1,0.00,'p3queijos.jpg','0',26.00,0,5,'','0','',2.00,1),(13,137,'PIZZA ESPANHOLA',1,0.00,'pespanhola.jpg','0',26.00,0,5,'','0','',2.00,1),(14,138,'PIZZA CATOLES',1,0.00,'baconqueijo.jpg','0',26.00,0,5,'','0','',2.00,1),(15,139,'PIZZA ATUM',1,0.00,'patum.jpg','0',26.00,0,5,'','0','',2.00,1),(16,140,'PIZZA FRANGO C/ CATUPIRY',1,0.00,'pfrangocatupiry.jpg','0',26.00,0,5,'','0','',2.00,1),(17,141,'PIZZA JARDINEIRA',1,0.00,'pjardineira.jpg','0',28.00,0,5,'','0','',2.00,1),(18,142,'PIZZA MODA DA CASA',1,0.00,'pmoda.jpg','0',28.00,0,5,'','0','',2.00,1),(19,143,'PIZZA BRASILEIRA',1,0.00,'patum.jpg','0',28.00,0,5,'','0','',2.00,1),(20,144,'PIZZA QUATRO QUEIJOS',1,0.00,'p4queijos.jpg','0',28.00,0,5,'','0','',2.00,1),(21,201,'ESFIHA CARNE',2,0.00,'carne.jpg','0',0.99,0,5,'','0','',2.00,1),(22,202,'ESFIHA QUEIJO',2,0.00,'queijo.jpg','0',2.00,0,5,'','0','',2.00,1),(23,203,'ESFIHA CALABRESA',2,0.00,'calabresa.jpg','0',2.00,0,5,'','0','',2.00,1),(24,204,'ESFIHA FRANGO',2,0.00,'frangorequeijao.jpg','0',2.00,0,5,'','0','',2.00,1),(25,205,'ESFIHA CATUPIRY',2,0.00,'atum.jpg','0',2.00,0,5,'','0','',2.00,1),(26,206,'ESFIHA BAURU',2,0.00,'bauru.jpg','0',2.50,0,5,'','0','',2.00,1),(27,207,'ESFIHA PALMITO',2,0.00,'palmito.jpg','0',2.50,0,5,'','0','',2.00,1),(28,208,'ESFIHA MILHO',2,0.00,'frangorequeijao.jpg','0',2.50,0,5,'','0','',2.00,1),(30,210,'ESFIHA BACON',2,0.00,'baconqueijo.jpg','0',2.50,0,5,'','0','',2.00,1),(31,211,'ESFIHA FRANGO C/ CATUPIRY',2,0.00,'frangorequeijao.jpg','0',2.50,0,5,'','0','',2.00,1),(32,212,'ESFIHA ATUM',2,0.00,'atum.jpg','0',2.50,0,5,'','0','',2.00,1),(33,213,'ESFIHA DOIS QUEIJOS',2,0.00,'queijo.jpg','0',2.50,0,5,'','0','',2.00,1),(34,214,'ESFIHA PIZZA',2,0.00,'bauru.jpg','0',2.50,0,1,'','1','',2.00,1),(35,300,'OPCIONAL',2,0.00,'no_image.png','0',2.00,0,5,'','0','',2.00,1),(36,315,'ESFIHA DE CARNE',3,0.00,'esfiha-fechada.jpg','0',1.50,0,5,'','0','',2.00,0),(37,316,'SALGADO DE FRANGO C/ CATUPIRY',3,0.00,'esfiha-fechada.jpg','0',1.50,0,5,'','0','',2.00,0),(38,317,'SALGADO DE PRESUNTO QUEIJO',3,0.00,'esfiha-fechada.jpg','0',1.50,0,5,'','0','',2.00,0),(39,318,'SALGADO CALABRESA CATUPIRY',3,0.00,'esfiha-fechada.jpg','0',1.50,0,5,'','0','',2.00,0),(40,319,'ENROLADOS',3,0.00,'risole.jpg','0',1.50,0,5,'','0','',2.00,0),(41,320,'COXINHA',3,0.00,'coxinhafrango.jpg','0',1.50,0,5,'','0','',2.00,0),(42,321,'KIBE ',3,0.00,'kibe.jpg','0',1.50,0,5,'','0','',2.00,0),(45,324,'TORTA',3,0.00,'torta-salgada.jpg','0',5.00,0,5,'','0','',2.00,0),(46,454,'BEIRUTE ATUM',4,0.00,'bfrango.jpg','0',19.99,0,5,'','0','',2.00,1),(47,455,'BEIRUTE FRANGO',4,0.00,'bcalabresacatupiry.jpg','0',19.99,0,5,'','0','',2.00,1),(48,456,'BEIRUTE CALABRESA',4,0.00,'bmoda.jpg','0',19.99,0,5,'','0','',2.00,1),(49,457,'BEIRUTE A MODA',4,0.00,'bfrango.jpg','0',19.99,0,5,'','0','',2.00,1),(50,458,'BEIRUTE CALABRESA C/ CATUPIRY',4,0.00,'bcalabresa.jpg','0',19.99,0,5,'','0','',2.00,1),(51,459,'BEIRUTE FRANGO C/ CATUPIRY',4,0.00,'bcalabresacatupiry.jpg','0',19.99,0,5,'','0','',2.00,1),(52,579,'BATATA',5,0.00,'porcaofritas.jpg','0',14.00,0,5,'','0','',2.00,1),(53,580,'CALABRESA',5,0.00,'porcaocalabresa.jpg','0',16.00,0,5,'','0','',2.00,1),(54,581,'MISTA',5,0.00,'porcaomista.jpg','0',4.00,0,5,'','0','',2.00,1),(55,667,'SUCO ACAI',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(56,668,' SUCO ACEROLA',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(57,669,' SUCO ABACAXI',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(58,670,' SUCO ABACAXI ACEROLA',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(59,671,' SUCO MANGA',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(60,672,' SUCO MORANGO',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(61,673,' SUCO MARACUJA',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(62,674,' SUCO GOIABA',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(63,675,' SUCO CAJU',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(64,676,' SUCO LIMAO',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(65,676,' SUCO LARANJA',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(66,677,' SUCO COCO',6,0.00,'suconatural.jpg','0',4.00,0,5,'','0','',2.00,0),(67,677,'SUCO MAQUINA',6,0.00,'sucopequeno.jpg','0',1.50,0,5,'','0','',2.00,0),(68,678,'COCA 2L',6,0.00,'coca2.jpg','0',10.00,0,5,'','0','',2.00,0),(69,679,'REFRIGERANTE 2L',6,0.00,'refri2.jpg','0',8.50,0,5,'','0','',2.00,0),(70,680,'GUARAVITON',6,0.00,'guaraviton.jpg','0',4.00,0,5,'','0','',2.00,0),(71,681,'SUCO DELL VALLE',6,0.00,'dellvalelata.jpg','0',4.00,0,5,'','0','',2.00,0),(72,682,'AGUA',6,0.00,'agua.jpg','0',2.50,0,5,'','0','',2.00,0),(73,683,'DOLINHO',6,0.00,'minidolly.jpg','0',2.50,0,5,'','0','',2.00,0),(74,684,'REFRIGERANTE 600ML',6,0.00,'minirefri.jpg','0',6.00,0,5,'','0','',2.00,0),(75,685,'SKOL LATA',6,0.00,'skollata.jpg','0',4.50,0,5,'','0','',2.00,0),(76,686,'ITAIPAVA LATA',6,0.00,'itaipavalata.jpg','0',4.00,0,5,'','0','',2.00,0),(77,687,'SKOL LATAO',6,0.00,'lata550.jpg','0',6.50,0,5,'','0','',2.00,0),(78,688,'ITAIPAVA LATAO',6,0.00,'lata550.jpg','0',6.00,0,5,'','0','',2.00,0),(79,689,'CAFE',6,0.00,'cafe.jpg','0',2.00,0,5,'','0','',2.00,0),(80,690,'NESCAU',6,0.00,'no_image.png','0',2.50,0,5,'','0','',2.00,0),(81,745,'PASTEL CARNE',7,0.00,'pastel.jpg','0',4.00,0,5,'','0','',2.00,1),(82,746,'PASTEL QUEIJO',7,0.00,'pastel.jpg','0',4.00,0,5,'','0','',3.00,1),(83,747,'PASTEL CALABRESA',7,0.00,'pastel.jpg','0',4.00,0,5,'','0','',4.00,1),(84,748,'PASTEL ATUM',7,0.00,'pastel.jpg','0',4.00,0,5,'','0','',5.00,1),(85,749,'PASTEL PALMITO',7,0.00,'pastel.jpg','0',4.00,0,5,'','0','',6.00,1),(86,750,'PASTEL BAURU',7,0.00,'pastel.jpg','0',4.00,0,5,'','0','',7.00,1),(87,751,'PASTEL PIZZA',7,0.00,'pastel.jpg','0',4.00,0,5,'','0','',8.00,1),(88,752,'PASTEL FRANGO C/ CATUPIRY',7,0.00,'pastel.jpg','0',4.00,0,5,'','0','',9.00,1),(89,753,'PASTEL ESPECIAL',7,0.00,'pastel.jpg','0',8.00,0,5,'','0','',9.00,1),(90,754,'OPCIONAL CARNE',7,0.00,'no_image.png','0',1.00,0,5,'','0','',9.00,1),(91,755,'OPCIONAL QUEIJO',7,0.00,'no_image.png','0',1.00,0,5,'','0','',10.00,1),(92,756,'OPCIONAL CALABRESA',7,0.00,'no_image.png','0',1.00,0,5,'','0','',11.00,1),(93,757,'OPCIONAL ATUM',7,0.00,'no_image.png','0',1.00,0,5,'','0','',12.00,1),(94,758,'OPCIONAL PALMITO',7,0.00,'no_image.png','0',1.00,0,5,'','0','',13.00,1),(95,759,'OPCIONAL BAURU',7,0.00,'no_image.png','0',1.00,0,5,'','0','',14.00,1),(96,760,'OPCIONAL PIZZA',7,0.00,'no_image.png','0',1.00,0,5,'','0','',15.00,1),(97,761,'OPCIONAL FRAN. C/ CATUP.',7,0.00,'no_image.png','0',1.00,0,5,'','0','',16.00,1),(98,860,'MISTO QUENTE',8,0.00,'no_image.png','0',4.50,0,5,'','0','',6.00,1),(99,861,'X-BURGUER',8,0.00,'no_image.png','0',5.50,0,5,'','0','',6.00,1),(100,862,'X-SALADA',8,0.00,'no_image.png','0',7.00,0,5,'','0','',6.00,1),(101,863,'AMERICANO',8,0.00,'no_image.png','0',7.00,0,5,'','0','',6.00,1),(102,864,'X-EGG',8,0.00,'no_image.png','0',8.00,0,5,'','0','',6.00,1),(103,865,'X-BACON',8,0.00,'no_image.png','0',8.00,0,5,'','0','',6.00,1),(104,866,'X-TUDO',8,0.00,'no_image.png','0',12.00,0,5,'','0','',6.00,1),(105,901,'HALLS',9,0.00,'halls.jpg','0',2.00,0,5,'','0','',2.00,0),(106,902,'TRIDENTI',9,0.00,'tridente.jpg','0',2.50,0,5,'','0','',2.00,0),(107,903,'COCADA',9,0.00,'no_image.png','0',1.50,0,5,'','0','',2.00,0),(109,9999,'MUSSARELA',98,0.00,'pmussarela.jpg','0',19.99,0,5,'','0','',2.00,1),(110,9999,'CALABRESA',98,0.00,'pcalabresa.jpg','0',19.99,0,5,'','0','',2.00,1),(111,9999,'CATUPIRY',98,0.00,'p3queijos.jpg','0',19.99,0,5,'','0','',2.00,1),(112,9999,'MARGUERITA',98,0.00,'pmarguerita.jpg','0',24.00,0,5,'','0','',2.00,1),(113,9999,'ESCAROLA',98,0.00,'pescarola.jpg','0',24.00,0,5,'','0','',2.00,1),(114,9999,'DOIS QUEIJOS',98,0.00,'pmussarela.jpg','0',24.00,0,5,'','0','',2.00,1),(115,9999,'PORTUGUESA',98,0.00,'pportuguesa.jpg','0',26.00,0,5,'','0','',2.00,1),(116,9999,'BAIANA',98,0.00,'pbaiana.jpg','0',26.00,0,5,'','0','',2.00,1),(117,9999,'TOSCANA',98,0.00,'ptoscana.jpg','0',26.00,0,5,'','0','',2.00,1),(118,9999,'MILHO',98,0.00,'pmilho.jpg','0',26.00,0,5,'','0','',2.00,1),(119,9999,'PALMITO',98,0.00,'ppalmito.jpg','0',26.00,0,5,'','0','',2.00,1),(120,9999,'TRES QUEIJOS',98,0.00,'p3queijos.jpg','0',26.00,0,5,'','0','',2.00,1),(121,9999,'ESPANHOLA',98,0.00,'pespanhola.jpg','0',26.00,0,5,'','0','',2.00,1),(122,9999,'CATOLES',98,0.00,'baconqueijo.jpg','0',26.00,0,5,'','0','',2.00,1),(123,9999,'ATUM',98,0.00,'ppatum.jpg','0',26.00,0,5,'','0','',2.00,1),(124,9999,'FRANGO C/ CATUPIRY',98,0.00,'pfrangocatupiry.jpg','0',26.00,0,5,'','0','',2.00,1),(125,9999,'JARDINEIRA',98,0.00,'pjardineira.jpg','0',28.00,0,5,'','0','',2.00,1),(126,9999,'MODA DA CASA',98,0.00,'pmoda.jpg','0',28.00,0,5,'','0','',2.00,1),(127,9999,'BRASILEIRA',98,0.00,'ppatum.jpg','0',28.00,0,5,'','0','',2.00,1),(128,9999,'QUATRO QUEIJOS',98,0.00,'p4queijos.jpg','0',28.00,0,5,'','0','',2.00,1),(129,9999,'MUSSARELA',99,0.00,'pmussarela.jpg','0',19.99,0,5,'','0','',2.00,1),(130,9999,'CALABRESA',99,0.00,'pcalabresa.jpg','0',19.99,0,5,'','0','',2.00,1),(131,9999,'CATUPIRY',99,0.00,'p3queijos.jpg','0',19.99,0,5,'','0','',2.00,1),(132,9999,'MARGUERITA',99,0.00,'pmarguerita.jpg','0',24.00,0,5,'','0','',2.00,1),(133,9999,'ESCAROLA',99,0.00,'pescarola.jpg','0',24.00,0,5,'','0','',2.00,1),(134,9999,'DOIS QUEIJOS',99,0.00,'pmussarela.jpg','0',24.00,0,5,'','0','',2.00,1),(135,9999,'PORTUGUESA',99,0.00,'pportuguesa.jpg','0',26.00,0,5,'','0','',2.00,1),(136,9999,'BAIANA',99,0.00,'pbaiana.jpg','0',26.00,0,5,'','0','',2.00,1),(137,9999,'TOSCANA',99,0.00,'ptoscana.jpg','0',26.00,0,5,'','0','',2.00,1),(138,9999,'MILHO',99,0.00,'pmilho.jpg','0',26.00,0,5,'','0','',2.00,1),(139,9999,'PALMITO',99,0.00,'ppalmito.jpg','0',26.00,0,5,'','0','',2.00,1),(140,9999,'TRES QUEIJOS',99,0.00,'p3queijos.jpg','0',26.00,0,5,'','0','',2.00,1),(141,9999,'ESPANHOLA',99,0.00,'pespanhola.jpg','0',26.00,0,5,'','0','',2.00,1),(142,9999,'CATOLES',99,0.00,'baconqueijo.jpg','0',26.00,0,5,'','0','',2.00,1),(143,9999,'ATUM',99,0.00,'ppatum.jpg','0',26.00,0,5,'','0','',2.00,1),(144,9999,'FRANGO C/ CATUPIRY',99,0.00,'pfrangocatupiry.jpg','0',26.00,0,5,'','0','',2.00,1),(145,9999,'JARDINEIRA',99,0.00,'pjardineira.jpg','0',28.00,0,5,'','0','',2.00,1),(146,9999,'MODA DA CASA',99,0.00,'pmoda.jpg','0',28.00,0,5,'','0','',2.00,1),(147,9999,'BRASILEIRA',99,0.00,'ppatum.jpg','0',28.00,0,5,'','0','',2.00,1),(148,9999,'QUATRO QUEIJOS',99,0.00,'p4queijos.jpg','0',28.00,0,5,'','0','',2.00,1),(149,9998,'BROTO MUSSARELA',99,0.00,'pmussarela.jpg','0',15.00,0,5,'','0','',2.00,1),(150,9998,'BROTO CALABRESA',99,0.00,'pcalabresa.jpg','0',15.00,0,5,'','0','',2.00,1),(151,9998,'BROTO CATUPIRY',99,0.00,'p3queijos.jpg','0',15.00,0,5,'','0','',2.00,1),(152,9998,'BROTO MARGUERITA',99,0.00,'pmarguerita.jpg','0',15.00,0,5,'','0','',2.00,1),(153,9998,'BROTO ESCAROLA',99,0.00,'pescarola.jpg','0',15.00,0,5,'','0','',2.00,1),(154,9998,'BROTO DOIS QUEIJOS',99,0.00,'pmussarela.jpg','0',15.00,0,5,'','0','',2.00,1),(155,9998,'BROTO PORTUGUESA',99,0.00,'pportuguesa.jpg','0',15.00,0,5,'','0','',2.00,1),(156,9998,'BROTO BAIANA',99,0.00,'pbaiana.jpg','0',15.00,0,5,'','0','',2.00,1),(157,9998,'BROTO TOSCANA',99,0.00,'ptoscana.jpg','0',15.00,0,5,'','0','',2.00,1),(158,9998,'BROTO MILHO',99,0.00,'pmilho.jpg','0',15.00,0,5,'','0','',2.00,1),(159,9998,'BROTO PALMITO',99,0.00,'ppalmito.jpg','0',15.00,0,5,'','0','',2.00,1),(160,9998,'BROTO TRES QUEIJOS',99,0.00,'p3queijos.jpg','0',15.00,0,5,'','0','',2.00,1),(161,9998,'BROTO ESPANHOLA',99,0.00,'pespanhola.jpg','0',15.00,0,5,'','0','',2.00,1),(162,9998,'BROTO CATOLES',99,0.00,'baconqueijo.jpg','0',15.00,0,5,'','0','',2.00,1),(163,9998,'BROTO ATUM',99,0.00,'ppatum.jpg','0',15.00,0,5,'','0','',2.00,1),(164,9998,'BROTO FRANGO C/ CATUPIRY',99,0.00,'pfrangocatupiry.jpg','0',15.00,0,5,'','0','',2.00,1),(165,9998,'BROTO JARDINEIRA',99,0.00,'pjardineira.jpg','0',15.00,0,5,'','0','',2.00,1),(166,9998,'BROTO MODA DA CASA',99,0.00,'pmoda.jpg','0',15.00,0,5,'','0','',2.00,1),(167,9998,'BROTO BRASILEIRA',99,0.00,'ppatum.jpg','0',15.00,0,5,'','0','',2.00,1),(168,9998,'BROTO QUATRO QUEIJOS',99,0.00,'p4queijos.jpg','0',15.00,0,5,'','0','',2.00,1),(169,145,'BROTO MUSSARELA',1,0.00,'pmussarela.jpg','0',15.00,0,5,'','0','',2.00,1),(170,146,'BROTO CALABRESA',1,0.00,'pcalabresa.jpg','0',15.00,0,5,'','0','',2.00,1),(171,147,'BROTO CATUPIRY',1,0.00,'p3queijos.jpg','0',15.00,0,5,'','0','',2.00,1),(172,148,'BROTO MARGUERITA',1,0.00,'pmarguerita.jpg','0',15.00,0,5,'','0','',2.00,1),(173,149,'BROTO ESCAROLA',1,0.00,'pescarola.jpg','0',15.00,0,5,'','0','',2.00,1),(174,150,'BROTO DOIS QUEIJOS',1,0.00,'pmussarela.jpg','0',15.00,0,5,'','0','',2.00,1),(175,151,'BROTO PORTUGUESA',1,0.00,'pportuguesa.jpg','0',15.00,0,5,'','0','',2.00,1),(176,152,'BROTO BAIANA',1,0.00,'pbaiana.jpg','0',15.00,0,5,'','0','',2.00,1),(177,153,'BROTO TOSCANA',1,0.00,'ptoscana.jpg','0',15.00,0,5,'','0','',2.00,1),(178,154,'BROTO MILHO',1,0.00,'pmilho.jpg','0',15.00,0,5,'','0','',2.00,1),(179,155,'BROTO PALMITO',1,0.00,'ppalmito.jpg','0',15.00,0,5,'','0','',2.00,1),(180,156,'BROTO TRES QUEIJOS',1,0.00,'p3queijos.jpg','0',15.00,0,5,'','0','',2.00,1),(181,157,'BROTO ESPANHOLA',1,0.00,'pespanhola.jpg','0',15.00,0,5,'','0','',2.00,1),(182,158,'BROTO CATOLES',1,0.00,'baconqueijo.jpg','0',15.00,0,5,'','0','',2.00,1),(183,159,'BROTO ATUM',1,0.00,'patum.jpg','0',15.00,0,5,'','0','',2.00,1),(184,160,'BROTO FRANGO C/ CATUPIRY',1,0.00,'pfrangocatupiry.jpg','0',15.00,0,5,'','0','',2.00,1),(185,161,'BROTO JARDINEIRA',1,0.00,'pjardineira.jpg','0',15.00,0,5,'','0','',2.00,1),(186,162,'BROTO MODA DA CASA',1,0.00,'pmoda.jpg','0',15.00,0,5,'','0','',2.00,1),(187,163,'BROTO BRASILEIRA',1,0.00,'patum.jpg','0',15.00,0,5,'','0','',2.00,1),(188,164,'BROTO QUATRO QUEIJOS',1,0.00,'p4queijos.jpg','0',15.00,0,5,'','0','',2.00,1),(189,0,'1/2-BROTO MUSSARELA/BROTO CALABRESA I',100,0.00,'no_image.png','0',15.00,0,10,'','','',5.00,1),(190,0,'1/2-MUSSARELA/CALABRESA I',100,0.00,'no_image.png','0',19.99,0,10,'','','',5.00,1),(191,301,'PROMOCAO ( 1 )',2,0.00,'combo1.jpg','0',50.00,0,5,'','0','',5.00,1),(192,0,'1/2 MUSSARELA 1/2 MARGUERITA',100,0.00,'no_image.png','0',24.00,0,10,'','','',5.00,1),(193,0,'1/3-MUSSARELA/CALABRESA I/ATUM',101,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(194,0,'1/2 MUSSARELA 1/2 ATUM',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(195,0,'1/2 MUSSARELA 1/2 PORTUGUESA',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(197,692,'COM LEITE',6,0.00,'no_image.png','0',0.50,0,0,'','0','',5.00,0),(198,302,'ESFIHA BRIGADEIRO',2,0.00,'no_image.png','0',3.50,0,0,'','0','',5.00,1),(199,303,'ESFIHA DOCE DE LEITE',2,0.00,'no_image.png','0',3.50,0,0,'','0','',5.00,1),(200,304,'ESFIHA CHOCOLATE',2,0.00,'no_image.png','0',3.50,0,0,'','0','',5.00,1),(201,0,'1/2 BROTO CALABRESA 1/2 BROTO MUSSARELA',100,0.00,'no_image.png','0',15.00,0,10,'','','',5.00,1),(202,0,'1/2 MUSSARELA 1/2 CALABRESA',100,0.00,'no_image.png','0',19.99,0,10,'','','',5.00,1),(203,305,'ROMEU & JULIETA',2,0.00,'no_image.png','0',3.50,0,0,'','0','',5.00,1),(204,693,'DOLLY 2L',6,0.00,'no_image.png','0',6.50,0,0,'','0','',5.00,0),(207,695,'SKOL GARRAFA',6,0.00,'no_image.png','0',10.00,0,-7,'','0','',5.00,0),(208,696,'ITAIPAVA GARRAFA',6,0.00,'no_image.png','0',9.00,0,-2,'','0','',5.00,0),(209,0,'1/2-CALABRESA/FRANGO C/ CATUPIRY',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(210,0,'1/2 PORTUGUESA 1/2 JARDINEIRA',100,0.00,'no_image.png','0',28.00,0,10,'','','',5.00,1),(211,0,'1/2-PORTUGUESA/CALABRESA',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(212,0,'1/2 FRANGO C/ CATUPIRY 1/2 QUATRO QUEIJOS',100,0.00,'no_image.png','0',28.00,0,10,'','','',5.00,1),(215,308,'ESFIHA X CARNE',2,0.00,'no_image.png','0',1.50,0,0,'','0','',5.00,1),(216,309,'ESFIHA X ATUM',2,0.00,'no_image.png','0',3.00,0,0,'','1','',5.00,1),(217,310,'ESFIHA X CALABRESA',2,0.00,'no_image.png','0',2.50,0,-10,'','1','',5.00,1),(218,311,'ESFIHA X FRANGO',2,0.00,'no_image.png','0',2.50,0,0,'','1','',5.00,1),(220,867,'OPICIONAL QUEIJO',8,0.00,'no_image.png','0',2.00,0,0,'','0','',5.00,1),(221,868,'OPICIONAL OVO',8,0.00,'no_image.png','0',2.00,0,0,'','0','',5.00,0),(222,697,'COCA KS',6,0.00,'no_image.png','0',3.50,0,0,'','0','',5.00,0),(223,869,'ADICINAL SALADA',8,0.00,'no_image.png','0',1.00,0,0,'','0','',5.00,1),(224,0,'1/2-BROTO CALABRESA/BROTO DOIS QUEIJOS',100,0.00,'no_image.png','0',15.00,0,10,'','','',5.00,1),(225,0,'1/2-CALABRESA/MUSSARELA',100,0.00,'no_image.png','0',19.99,0,10,'','','',5.00,1),(226,0,'1/2 PALMITO 1/2 FRANGO C/ CATUPIRY',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(227,0,'1/2-MILHO/MARGUERITA',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(228,0,'1/2-TOSCANA/PORTUGUESA',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(229,999,'FORNEIRO',99,0.00,'no_image.png','0',25.00,0,5,'','0','',2.00,0),(230,0,'1/2-PORTUGUESA sem ovo /CALABRESA',100,0.00,'no_image.png','0',19.99,0,10,'','','',5.00,1),(231,0,'1/2-MUSSARELA/CALABRESA',100,0.00,'no_image.png','0',19.99,0,10,'','','',5.00,1),(232,0,'1/2 MODA DA CASA 1/2 CALABRESA',100,0.00,'no_image.png','0',28.00,0,10,'','','',5.00,1),(233,0,'1/2 BROTO MUSSARELA 1/2 BROTO CALABRESA',100,0.00,'no_image.png','0',15.00,0,10,'','','',5.00,1),(234,0,'1/2-CALABRESA/PORTUGUESA',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(235,0,'1/3-MUSSARELA/CALABRESA/CATUPIRY',101,0.00,'no_image.png','0',19.99,0,10,'','','',5.00,1),(236,0,'1/2-MUSSARELA/MILHO',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(237,0,'1/2-CALABRESA/MARGUERITA',100,0.00,'no_image.png','0',24.00,0,10,'','','',5.00,1),(238,0,'1/2-CALABRESA/queijo',100,0.00,'no_image.png','0',19.99,0,10,'','','',5.00,1),(239,0,'1/2 CALABRESA 1/2 MUSSARELA',100,0.00,'no_image.png','0',19.99,0,10,'','','',5.00,1),(240,0,'1/3-ESCAROLA/queijo/baicon',101,0.00,'no_image.png','0',24.00,0,10,'','','',5.00,1),(241,0,'1/3-ESCAROLA/baicon/queijo',101,0.00,'no_image.png','0',24.00,0,10,'','','',5.00,1),(242,312,'ESFIHA CALAB. CATUPIRY',2,0.00,'no_image.png','0',3.00,0,0,'','0','',5.00,1),(243,313,'ESFIHA CARNE.CATUPIRYC',2,0.00,'no_image.png','0',1.50,0,0,'','0','',5.00,1),(244,325,'FOGASSA CARNE',3,0.00,'no_image.png','0',3.00,0,0,'','0','',5.00,1),(245,0,'1/2 MUSSARELA 1/2 PALMITO',100,0.00,'no_image.png','0',26.00,0,10,'','','',5.00,1),(246,0,'1/2 JARDINEIRA 1/2 BAIANA',100,0.00,'no_image.png','0',28.00,0,10,'','','',5.00,1),(529,999,'Taxa de entrega',102,0.00,'no_image.png','0',1.00,0,-1,'code39','0',NULL,1.00,0),(530,999,'Taxa de entrega',102,0.00,'no_image.png','0',2.00,0,-1,'code39','0',NULL,1.00,0),(531,999,'Taxa de entrega',102,0.00,'no_image.png','0',3.00,0,-1,'code39','0',NULL,1.00,0),(532,999,'Taxa de entrega',102,0.00,'no_image.png','0',4.00,0,-1,'code39','0',NULL,1.00,0),(533,999,'Taxa de entrega',102,0.00,'no_image.png','0',5.00,0,-1,'code39','0',NULL,1.00,0),(534,999,'Taxa de entrega',102,0.00,'no_image.png','0',6.00,0,-1,'code39','0',NULL,1.00,0),(535,999,'Taxa de entrega',102,0.00,'no_image.png','0',7.00,0,-1,'code39','0',NULL,1.00,0),(536,999,'Taxa de entrega',102,0.00,'no_image.png','0',8.00,0,-1,'code39','0',NULL,1.00,0),(538,999,'Taxa de entrega',102,0.00,'no_image.png','0',0.00,0,-1,'code39','0',NULL,1.00,0);
/*!40000 ALTER TABLE `tec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `avatar` varchar(150) NOT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Junior Nascimento','jjunior','ejwkh24','images/boy.png',1,1),(12,'Operadora 1 ','operadora','12345678','images/girl.png',2,0),(14,'Celso','motoboy','12345678','images/boy.png',5,1),(15,'Joaquim','','','images/boy.png',5,1),(16,'-','','','',5,1),(17,'Gerente ','admin','ponto634','images/boy.png',2,1),(18,'Operador 2 ','caixa2','caixa2','images/boy.png',2,1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valores_nota`
--

DROP TABLE IF EXISTS `valores_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valores_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `troco` varchar(45) NOT NULL,
  `forma_pagamento` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valores_nota`
--

LOCK TABLES `valores_nota` WRITE;
/*!40000 ALTER TABLE `valores_nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `valores_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_balcao_hist`
--

DROP TABLE IF EXISTS `venda_balcao_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda_balcao_hist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `obs` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `data_venda` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `forma_pagamento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_dinheiro` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_balcao_hist`
--

LOCK TABLES `venda_balcao_hist` WRITE;
/*!40000 ALTER TABLE `venda_balcao_hist` DISABLE KEYS */;
INSERT INTO `venda_balcao_hist` VALUES (1,1,1,1,'','2017-01-16 15:22','Cartão de Débito',NULL),(2,1,15,1,'','2017-01-16 15:22','Cartão de Débito',NULL),(3,1,5,1,'','2017-01-16 19:28','Dinheiro',NULL),(4,1,17,1,'','2017-01-16 19:28','Dinheiro',NULL),(5,2,3,1,'','2017-01-16 19:59','Dinheiro',NULL),(6,2,4,1,'','2017-01-16 19:59','Dinheiro',NULL),(7,3,5,2,'','2017-01-16 22:45','',NULL),(8,4,12,1,'','2017-01-16 22:47','',NULL),(9,5,10,1,'','2017-01-16 22:48','Cartão de Crédito',NULL),(10,6,1,2,'','2017-01-21 17:26','Dinheiro   Crédito',NULL),(11,7,5,4,'','2017-01-21 17:31','Dinheiro / Débito',NULL),(12,8,5,3,'','2017-01-22 18:36','Dinheiro',NULL),(13,9,8,7,'','2017-01-22 18:47','Dinheiro',NULL),(14,10,1,10,'','2017-01-23 18:41','Dinheiro',NULL),(15,11,2,1,'','2017-01-23 19:21','Dinheiro',NULL),(16,12,5,1,'','2017-01-23 19:22','Dinheiro',NULL);
/*!40000 ALTER TABLE `venda_balcao_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_history`
--

DROP TABLE IF EXISTS `vendas_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(10) NOT NULL,
  `Produto` varchar(65) CHARACTER SET utf8 NOT NULL,
  `quantidade` int(11) NOT NULL,
  `Preço` decimal(25,2) DEFAULT NULL,
  `Total` decimal(35,2) DEFAULT NULL,
  `obs` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `id_produto` int(11) NOT NULL DEFAULT '0',
  `num_nota_fiscal` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_history`
--

LOCK TABLES `vendas_history` WRITE;
/*!40000 ALTER TABLE `vendas_history` DISABLE KEYS */;
INSERT INTO `vendas_history` VALUES (1,1,'ESFIHA CARNE',1,0.99,0.99,'',1,1,NULL),(2,575,'AMERICANA',1,31.00,31.00,'31.00',99,311,NULL),(3,580,'BRASILEIRA',1,30.00,30.00,'',99,316,NULL);
/*!40000 ALTER TABLE `vendas_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_motoboys`
--

DROP TABLE IF EXISTS `vendas_motoboys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_motoboys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_motoboy` int(11) NOT NULL,
  `entregas` int(11) NOT NULL,
  `total_taxas` decimal(10,2) DEFAULT NULL,
  `id_abertura` int(11) NOT NULL,
  `horario` varchar(45) DEFAULT NULL,
  `pago` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_motoboys`
--

LOCK TABLES `vendas_motoboys` WRITE;
/*!40000 ALTER TABLE `vendas_motoboys` DISABLE KEYS */;
INSERT INTO `vendas_motoboys` VALUES (1,14,1,2.00,20,'2017-02-15 21:43',1),(2,14,1,4.00,20,'2017-02-15 21:43',1),(3,15,1,2.00,20,'2017-02-15 21:44',1),(4,15,1,2.00,20,'2017-02-15 21:44',1),(5,15,1,2.00,20,'2017-02-15 22:45',1),(6,15,1,2.00,21,'2017-02-17 22:13',1),(7,14,1,4.00,21,'2017-02-17 22:20',1),(8,0,1,2.00,23,'2017-03-06 22:28',0),(9,0,1,2.00,23,'2017-03-07 00:54',0),(10,0,1,2.00,23,'2017-03-07 01:22',0),(11,0,1,2.00,23,'2017-03-07 01:27',0),(12,0,1,2.00,23,'2017-03-07 18:29',0),(13,15,1,2.00,23,'2017-03-07 22:36',0),(14,0,1,2.00,23,'2017-03-07 22:41',0),(15,15,1,3.00,24,'2017-03-17 00:11',0),(16,14,1,2.00,26,'2017-03-20 13:00',0),(17,14,1,4.00,26,'2017-03-20 22:03',0),(18,0,1,3.00,26,'2017-03-22 18:06',0),(19,0,1,2.00,26,'2017-03-22 18:06',0),(20,15,1,2.00,26,'2017-03-25 17:23',0),(21,14,1,4.00,27,'2017-04-06 22:14',0),(22,15,1,2.00,31,'2017-04-12 21:38',0),(23,0,1,2.00,31,'2017-04-13 00:11',0),(24,15,1,2.00,31,'2017-04-13 00:44',0),(25,15,1,2.00,31,'2017-04-13 00:45',0),(26,14,1,4.00,31,'2017-04-13 00:50',0),(27,14,1,4.00,31,'2017-04-13 01:27',0),(28,14,1,4.00,31,'2017-04-17 15:11',0),(29,0,1,2.00,31,'2017-04-18 00:52',0),(30,15,1,2.00,31,'2017-04-18 00:53',0),(31,14,1,2.00,31,'2017-04-24 15:44',0),(32,14,1,2.00,32,'2017-04-24 22:08',0),(33,16,1,3.00,32,'2017-04-25 07:25',0),(34,16,1,2.00,32,'2017-04-25 07:27',0),(35,16,1,3.00,32,'2017-04-25 07:30',0);
/*!40000 ALTER TABLE `vendas_motoboys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_suspensas`
--

DROP TABLE IF EXISTS `vendas_suspensas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_suspensas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_suspensao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_suspensao` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_suspensas`
--

LOCK TABLES `vendas_suspensas` WRITE;
/*!40000 ALTER TABLE `vendas_suspensas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas_suspensas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-24 10:05:26
