--
-- Struct Definition: admin
--

USE comateq;
DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `name` text NOT NULL,
  `gender` enum('M','F', 'N-B', 'O') NOT NULL, -- Male, Female, Non-binary and Other 
  `lastname` text NOT NULL, -- One last name is enough because we have admin ids. 
  `email` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `admin` WRITE;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
