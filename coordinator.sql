--
-- Structure for the coordinator table. 
--

USE comateq;
UNLOCK TABLES;
DROP TABLE IF EXISTS `coordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordinator` (
  `cord_id` int NOT NULL,
  `college_id` int NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `lastname` VARCHAR(50) NOT NULL,
  `gender` enum('M','F', 'N-B', 'O') NOT NULL, -- Male, Female, Non-Binary, Other 
  `cellphone` VARCHAR(30) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cord_id`),
  KEY `college_id` (`college_id`),
  CONSTRAINT `cord_constraint` FOREIGN KEY (`college_id`) REFERENCES `university` (`college_id`) -- Contraint para la llave foránea de que universidad representa el coord
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;