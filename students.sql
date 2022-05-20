--
-- Table structure for table `Estudiante`
--

USE comateq;
UNLOCK TABLES;
DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `lastname` VARCHAR(50) NOT NULL,
  `birth_date` date NOT NULL, -- Day born
  `grade` int NOT NULL, -- Grade 
  `school` VARCHAR(100) NOT NULL,  -- Name of School
  `gender` enum('M','F', 'N-B', 'O') NOT NULL, -- Male, Female, Non-binary, Other 
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;




/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;