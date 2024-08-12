-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `year_published` int DEFAULT NULL,
  `isbn` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isbn_UNIQUE` (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Classical Mythology','Mark P. O. Morford',2002,'195153448',2),(2,'Clara Callan','Richard Bruce Wright',2001,'2005018',21),(3,'Decision in Normandy','Carlo D\'Este',1991,'60973129',32),(4,'The Mummies of Urumchi','E. J. W. Barber',1999,'393045218',52),(5,'The Kitchen God\'s Wife','Amy Tan',1991,'399135782',42),(6,'PLEADING GUILTY','Scott Turow',1993,'671870432',42),(7,'Where You\'ll Find Me: And Other Stories','Ann Beattie',2002,'074322678X',92),(8,'Nights Below Station Street','David Adams Richards',1988,'771074670',78),(9,'The Middle Stories','Sheila Heti',2004,'887841740',51),(10,'Jane Doe','R. J. Kaiser',1999,'1552041778',2),(11,'The Witchfinder (Amos Walker Mystery Series)','Loren D. Estleman',1998,'1567407781',3),(12,'Goodbye to the Buttermilk Sky','Julia Oliver',1994,'1881320189',40),(13,'The Testament','John Grisham',1999,'440234743',90),(14,'Beloved (Plume Contemporary Fiction)','Toni Morrison',1994,'452264464',57),(15,'Tell Me This Isn\'t Happening','Robynn Clairday',1999,'439095026',61),(16,'Flood : Mississippi 1927','Kathleen Duey',1998,'689821166',24),(17,'Wild Animus','Rich Shapero',2004,'971880107',86),(18,'Airframe','Michael Crichton',1997,'345402871',56),(19,'Timeline','MICHAEL CRICHTON',2000,'345417623',44),(20,'OUT OF THE SILENT PLANET','C.S. Lewis',1996,'684823802',63),(21,'Prague : A Novel','ARTHUR PHILLIPS',2003,'375759778',17),(22,'Chocolate Jesus','Stephan Jaramillo',1998,'425163091',59),(23,'Wie Barney es sieht.','Mordecai Richler',2002,'3404921038',72),(24,'Sturmzeit. Roman.','Charlotte Link',1991,'3442410665',56),(25,'Tage der Unschuld.','Richard North Patterson',2000,'3442446937',22),(26,'Lying Awake','Mark Salzman',2000,'375406328',25),(27,'To Kill a Mockingbird','Harper Lee',1988,'446310786',19),(28,'Seabiscuit: An American Legend','LAURA HILLENBRAND',2002,'449005615',13),(29,'Pigs in Heaven','Barbara Kingsolver',1993,'60168013',92),(30,'Miss Zukas and the Raven\'s Dance','Jo Dereske',1996,'038078243X',32),(31,'Pride and Prejudice','Jane Austen',1983,'055321215X',8),(32,'Downtown','Anne Rivers Siddons',1995,'61099686',34),(33,'Icebound','Dean R. Koontz',2000,'553582909',23),(34,'I\'ll Be Seeing You','Mary Higgins Clark',1994,'671888587',16),(35,'From the Corner of His Eye','Dean Koontz',2001,'553582747',84),(36,'Isle of Dogs','Patricia Cornwell',2002,'425182908',79),(37,'Purity in Death','J.D. Robb',2002,'042518630X',99),(38,'Proxies','Laura J. Mixon',1999,'812523873',78),(39,'The Street Lawyer','JOHN GRISHAM',1999,'440225701',39),(40,'Love, Medicine and Miracles','M.D. Bernie S. Siegel',1988,'60914068',91),(41,'All the King\'s Men','Robert Penn Warren',1982,'156047624',30),(42,'Pacific Northwest','Hans Johannes Hoefer',1985,'245542957',89),(43,'A Soldier of the Great War','Mark Helprin',1992,'380715899',14),(44,'Getting Well Again','O. Carol Simonton Md',1992,'553280333',40),(45,'Northwest Wines and Wineries','Chuck Hill',1993,'961769947',28),(46,'An Atmosphere of Eternity: Stories of India','David Iglehart',2002,'964778319',52),(47,'LONESOME DOVE','Larry McMurtry',1986,'671623249',3),(48,'Haveli (Laurel Leaf Books)','SUZANNE FISHER STAPLES',1995,'679865691',96),(49,'Lieux dits','Michel Tournier',2002,'2070423204',51),(50,'The yawning heights','Aleksandr Zinoviev',1980,'394743741',26),(51,'Breathing Lessons','Anne Tyler',1994,'042511774X',78),(52,'The Joy Luck Club','Amy Tan',1994,'804106304',91),(53,'Heart of Darkness (Wordsworth Collection)','Joseph Conrad',1998,'1853262404',33),(54,'The Angel Is Near','Deepak Chopra',2000,'312970242',97),(55,'The Accidental Virgin','Valerie Frankel',2003,'60938412',2),(56,'The Tao of Pooh','Benjamin Hoff',1983,'140067477',5),(57,'Seabiscuit','LAURA HILLENBRAND',2003,'345465083',37),(58,'The Prince','Niccolo Machiavelli',1952,'451625889',43),(59,'Starship Troopers','Robert A. Heinlein',1987,'441783589',94),(60,'Black Beauty (Illustrated Classics)','Anna Sewell',1995,'1569871213',60),(61,'Anil\'s Ghost','MICHAEL ONDAATJE',2000,'375410538',17),(62,'Prescription for Terror','Sandra Levy Ceren',1999,'966986105',60),(63,'Turning Thirty','Mike Gayle',2000,'340767936',40),(64,'Decipher','Stel Pavlou',2002,'743403843',0),(65,'Standing Firm: A Vice-Presidential Memoir','Dan Quayle',1994,'60177586',2),(66,'Daybreakers Louis Lamour Collection','Louis Lamour',1981,'553062042',83),(67,'The Catcher in the Rye','J.D. Salinger',1991,'316769487',96),(68,'Pretend You Don\'t See Her','Mary Higgins Clark',1998,'671867156',1),(69,'Fast Women','Jennifer Crusie',2001,'312252617',96),(70,'Female Intelligence','Jane Heller',2001,'312261594',27),(71,'Pasquale\'s Nose: Idle Days in an Italian Town','Michael Rips',2002,'316748641',74),(80,'NUTUK','Mustafa Kemal Atatürk',1927,'1951534468',100);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-12 11:46:58
