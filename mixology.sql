-- MySQL dump 10.13  Distrib 5.1.56, for slackware-linux-gnu (x86_64)
--
-- Host: localhost    Database: mixology
-- ------------------------------------------------------
-- Server version	5.1.56-log

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
-- Table structure for table `drinks`
--

DROP TABLE IF EXISTS `drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `particle` varchar(100) DEFAULT NULL,
  `config` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drinks`
--

LOCK TABLES `drinks` WRITE;
/*!40000 ALTER TABLE `drinks` DISABLE KEYS */;
INSERT INTO `drinks` VALUES (1,'vodka on the rocks','proton','2*1#1*2'),(2,'vodka on the rocks (stronger)','neutrons','1*1#2*2'),(3,'vodka bitters','lambda','1*1#1*2#1*3'),(4,'extra drink vodka martini','pion','1*1#1*8'),(5,'vodka bitters with cherry','kaon','1*2#1*9'),(6,'vodka martini','D','1*4#1*8'),(7,'sangria','B','1*1#1*11'),(8,'extra dry gin and vodka martini','H atom','2*1#1*2#1*13'),(9,'Whiskey, soda and lemon','decayed pion','1*14#1*17#1*20'),(10,'rum, coke and lime','decayed Z','1*15#1*18#1*21'),(11,'Gin, tonic and lemon','decayed W','1*13#1*16#1*20'),(12,'whiskey, gin, lime','Higgs boson','1*14#1*13#1*21'),(13,'The Manhattan project','Special : mu + c + anti-s','1*14#1*4#1*9'),(14,'Old fissioned','Special : mu + v_mu + anti-s + g','1*14#1*17#1*9#1*22'),(15,'Three Mile Long Island','Special : d + e + tau + gamma + v_tau','1*2#1*13#1*15#1*19#1*18'),(16,'Cosmos','Special : g + Z + d','1*2#1*21#1*22'),(17,'mu-York Cocktail','Special : mu + Z + g','1*14#1*21#1*22'),(18,'Mai_Tau','Special : Z + tau + g','1*15#1*21#1*22'),(19,'(Surely You\'re Joking) Mr. Feynman','Special: W + t-bar','1*12#1*20');
/*!40000 ALTER TABLE `drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(5) DEFAULT NULL,
  `el_particles` varchar(20) DEFAULT NULL,
  `ing` varchar(20) DEFAULT NULL,
  `anti` int(11) DEFAULT NULL,
  `measure` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'u','up quark','ice',0,'scoop'),(2,'d','down quark','vodka',0,'shot'),(3,'s','strange quark','bitters',0,'dash'),(4,'c','charm quark','vermouth',0,'ounce'),(5,'b','bottom quark','red wine',0,'glass'),(6,'t','top quark','tea',0,'cup'),(7,'_u','anti-up quark','salt',1,''),(8,'_d','anti-down quark','olive',2,''),(9,'_s','anti-strange quark','cherry',3,''),(10,'_c','anti-charm quark','onion',4,''),(11,'_b','anti-bottom quark','orange rind',5,''),(12,'_t','anti-top quark','cream',6,''),(13,'e','electron','gin',0,'ounce'),(14,'m','muon','whiskey',0,'shot'),(15,'tau','tau','rum',0,'ounce'),(16,'v_e','electron neutrino','tonic',0,''),(17,'v_u','muon neutrino','soda',0,''),(18,'v_t','tau neutrino','coke',0,''),(19,'gamma','photon','oj',0,'ounce'),(20,'w','w','lemon juice',0,'ounce'),(21,'z','z','lime juice',0,'ounce'),(22,'g','gluon','sugar',0,'');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-04 15:24:01
