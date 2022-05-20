--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `team_id` int NOT NULL UNIQUE,
  `year` int NOT NULL,
  `participant_id` int NOT NULL,
  `participant2_id` int NOT NULL,
  `participant3_id` int NOT NULL,
  `cord_id` int NOT NULL,
  PRIMARY KEY (`team_id`,`year`),
  KEY `cord_id` (`cord_id`),
  CONSTRAINT `cord` FOREIGN KEY (`cord_id`) REFERENCES `cord_id` (`cord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
