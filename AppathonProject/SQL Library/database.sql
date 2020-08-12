-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ehospital
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `cure`
--

DROP TABLE IF EXISTS `cure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cure` (
  `id` int NOT NULL,
  `cure` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `patient` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `drug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cure`
--

LOCK TABLES `cure` WRITE;
/*!40000 ALTER TABLE `cure` DISABLE KEYS */;
INSERT INTO `cure` VALUES (1,'Patient has been introduced to Hydrochloroquine without any remarkable progress. Still in the ICU','Jim Dol','Nick James','Remains Unstable','Hydrochloroquine'),(2,'Patient has been introduced to Hydrochloroquine. Already showing great signs of recovery. Still in the ICU','Jim Dol','Apostolos Dimitriou','Remains Unstable','Hydrochloroquine'),(3,'Patient has been introduced to Hydrochloroquine without any remarkable progress. Still in the ICU','George Dimopoulos','Manolis Manolopoulos','Remains Unstable','Hydrochloroquine'),(4,'Patient too severe to even be introduced to Hydrochloroquine. Trying instead with Remdesivir. No progress yet, still in the ICU','Jim Dol','John Lucas','Remains Unstable','Remdesivir'),(5,'Patient has exited the ICU. Still on medication with a Lopinavir and Ritonavir cocktail.','Konstantinos Mavros','Jason Antonoglou','Stable','Lopinavir/Ritonavir'),(6,'Patient is in no need of entering an ICU yet. Condition is worsening slightly but still on good levels. ','Anna Dima','Evangelos Dokas','Remains Unstable','No drug'),(7,'Patient has been introduced to Hydrochloroquine without good progress. Still in the ICU but situation is now improving.','Christina Termizoglou','Apostolos Dimitriou','Stable','Hydrochloroquine'),(8,'Patient has been introduced to Dapagliflozin with good progress. Still in the ICU','Jim Dol','Konstantinos Mavros','Stable','Dapagliflozin'),(9,'Patient has been receiving Favipiravir without any  progress. Still in the ICU','Dimitris Panagiotou','George Avramis','Remains Unstable','Favipiravir'),(10,'Patient has received Hydrochloroquine early on to prevent a bad situation. Not in the ICU, small oxygen supply','Athanasios Nikou','Niki Masoura','Remains Unstable','Hydrochloroquine');
/*!40000 ALTER TABLE `cure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `situation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'nickjjg@gmail.com','Nick','James','6946755088','COVID infected'),(2,'whatever@gmail.com','John','Lucas','6945310885','COVID infected'),(3,'jj2w@gmail.com','Manolis','Manolopoulos','6945673425','COVID infected'),(4,'iason223@gmail.com','Jason','Antonoglou','6941944708','COVID infected'),(5,'whawhaarmy@gmail.com','Apostolos','Dimitriou','6923115976','COVID infected'),(6,'tost24@gmail.com','Mary','Nikolopoulou','6954338901','COVID infected'),(7,'georgeaaaa@gmail.com','George','Avramis','6943234210','COVID infected'),(8,'vaggpoliti@gmail.com','Evangelos','Ntokas','6945223987','COVID infected'),(9,'nikima@gmail.com','Niki','Masoura','6944377192','COVID infected'),(10,'konscee@gmail.com','Konstantina','Filou','6980456611','COVID infected');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jimdologlou@gmail.com','Jim','Cardiologist','Dol','6946753425'),(2,'georgedim@gmail.com','George','Doctor','Dimopoulos','6946517425'),(3,'johnn@gmail.com','John','Doctor','Nickolopoulos','6956946578'),(4,'nick455@gmail.com','Nick','Nurse','Pantos','6945235673'),(5,'tgmv421@gmail.com','Athanasios','Medical Support','Nikou','6954373891'),(6,'gdgddrg454@gmail.com','Konstantinos','Doctor','Mavros','6925405683'),(7,'dimppop@gmail.com','Dimitris','Nurse','Panagiotou','6984318921'),(8,'christinagg@gmail.com','Christina','Cardiologist','Termizoglou','6945221867'),(9,'annad2@gmail.com','Anna','Cardiologist','Dima','6957834521');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-12 23:46:11
