-- MySQL dump 10.13  Distrib 8.0.33, for Linux (aarch64)
--
-- Host: localhost    Database: vip
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('090ca6e7-689c-440a-80c2-05ec38a7f2ce','58615302e0037bc3db1da671471c4b47bf45eeeb9f32238461c065e31b85f9d5','2023-07-31 02:44:17.172','20230731024326_migrate',NULL,NULL,'2023-07-31 02:44:17.152',1),('0bd96661-86be-480b-bb0a-59589370c880','170408b62be1df1844d1bddac3c3af4cf790ef9f4f480c20f357dccfd5eddab2','2023-08-08 09:46:53.170','20230808094653_migrate',NULL,NULL,'2023-08-08 09:46:53.144',1),('1abc8626-2b0e-4e9f-bf54-5fe17507cc7a','d7ae0e12170234a5ae571ca85d4da4b019cd90f2e5227858549e2d28c4199728','2023-07-31 02:44:17.096','20230727064553_migrate',NULL,NULL,'2023-07-31 02:44:17.065',1),('27168f06-af48-4758-a6a4-0a14da410e6a','b66d843ab8abe318e6bb1bd5581c2aa31c1912344d44b05ffa1cd2553de1bd70','2023-07-31 02:44:17.015','20230623174950_init',NULL,NULL,'2023-07-31 02:44:16.997',1),('2a782d9e-29c2-4bbd-8afc-508fdd5ec51e','2551b83751deab57586d40b332d04d049fe2f9fa5766846d527a0fb085635d45','2023-07-31 02:44:17.109','20230728030946_migrate',NULL,NULL,'2023-07-31 02:44:17.098',1),('62a1914a-c285-47ec-af97-ac04355b9b0a','f579e8c7d7b414a67f294a548a4a9272b8434eefa57ba675b37e7c0fee354220','2023-07-31 02:44:17.130','20230729115453_migrate',NULL,NULL,'2023-07-31 02:44:17.111',1),('6c97c47c-9c87-41a2-a785-a52c3af75a0d','ac611351e9fd7c902bcc4923f433335eea3f2f84579ee882dd699ef706d6bde7','2023-08-01 16:07:20.267','20230801160720_migrate',NULL,NULL,'2023-08-01 16:07:20.224',1),('72b3cabe-9775-4269-9158-55e390b5aaf9','c7972e8ecba30b3408c09b7129936d00dcefada53b3fd58716e37fef6a5e57a4','2023-07-31 02:44:17.028','20230623183654_migrate',NULL,NULL,'2023-07-31 02:44:17.017',1),('9bca4807-93a4-49c3-8cbd-2adc84a9c5a4','5dceec0d61a8391f693584cb3d6b492edb3ac9e369495a4cae7e2681b3747128','2023-07-31 08:12:57.098','20230731081257_migrate',NULL,NULL,'2023-07-31 08:12:57.049',1),('bfd8c4b5-004c-46ca-b62d-2b6d8fc82246','7e3e5950f66c5ba9d6b6de68e6dbab651a51b05be97ff9b8517396d1d6dd0855','2023-07-31 02:44:17.064','20230711071304_migrate',NULL,NULL,'2023-07-31 02:44:17.031',1),('c8e4b35a-ea9e-444a-a979-c308792ee6b9','c8771a2805a0ac6616dd09f9f8f48316951e784aeee6785d8dd6efea8c2ef4d8','2023-07-31 02:44:17.150','20230729115838_migrate',NULL,NULL,'2023-07-31 02:44:17.132',1),('de56f928-5b09-4f74-9507-4ac2cd69fb53','e84ea84a682eb8682248ae214f54ff31ff73153de19397e8d9f574173660636c','2023-08-08 09:53:15.572','20230808095315_migrate',NULL,NULL,'2023-08-08 09:53:15.553',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PENDING','SUCCESS','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_userId_key` (`userId`),
  CONSTRAINT `emails_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES ('1533b5ab-5adf-4e42-9822-dd1b1f72af99','015b8708-0ba4-4fdc-86dd-66756c7f63bc','SUCCESS',NULL,'2023-08-08 09:52:20.770','2023-08-08 09:52:23.736'),('21755d7a-3f39-4f58-a660-56dce3aef228','8d249a26-c549-45e2-bed6-28f8434805d5','SUCCESS',NULL,'2023-08-04 15:25:52.612','2023-08-04 15:25:55.824'),('8b5f7538-e2ea-43c8-819c-47f9e2951b9f','29109088-4d5d-4fe7-8c14-3cff4a4ea4b5','SUCCESS',NULL,'2023-08-03 10:36:13.951','2023-08-03 10:36:18.135'),('d7746fa5-e834-479b-9daf-721615973723','74601603-cc49-4388-8df5-917db84cb490','SUCCESS',NULL,'2023-08-05 08:12:26.861','2023-08-05 08:12:29.993');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isCheckin` tinyint(1) NOT NULL DEFAULT '0',
  `role` enum('USER','ADMIN') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generation` int NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_key` (`email`),
  UNIQUE KEY `users_phoneNumber_key` (`phoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0094b4fd-214f-4872-845e-8304fb7e50ad','admin@gmail.com','$2b$12$2yYByllfhCGL9kPAMNyQoOgdB3hFlew1aM328EQz0nhPtUGZWoE4a',0,'ADMIN','2023-08-07 09:58:10.159','2023-08-07 09:58:10.159','Dang Duc Duy',16,'0398291282'),('015b8708-0ba4-4fdc-86dd-66756c7f63bc','mynamebvh12@gmail.com',NULL,0,'USER','2023-08-08 09:52:20.734','2023-08-08 09:52:20.734','Bui Viet Hoang',14,'0934287482'),('29109088-4d5d-4fe7-8c14-3cff4a4ea4b5','soaicaduy0209@gmail.com',NULL,0,'USER','2023-08-03 10:36:13.907','2023-08-03 10:36:13.907','Dang Duc Duy',16,'0393736374'),('74601603-cc49-4388-8df5-917db84cb490','ducduy0209.work@gmail.com',NULL,0,'USER','2023-08-05 08:12:26.824','2023-08-05 08:12:26.824','Dang Duc Duy',15,'0816269002'),('8d249a26-c549-45e2-bed6-28f8434805d5','soaicaduy2002@gmail.com',NULL,0,'USER','2023-08-04 15:25:52.578','2023-08-04 15:25:52.578','Dau Duc Hung',14,'0943680866');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-11 14:26:31
