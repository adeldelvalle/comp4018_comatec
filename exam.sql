--
-- Table structure for table `Examen`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `exam_id` int NOT NULL,
  `cord_id` int NOT NULL, -- coordinator who proposed the exam
  `admin_id` int NOT NULL,
  `year` int NOT NULL,
  `problems` int NOT NULL, -- Amount of problems in the exam 
  `max_puntuaction` int NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `cord_fk` FOREIGN KEY (`cord_id`) REFERENCES `coordinator` (`cord_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

