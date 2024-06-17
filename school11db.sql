-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for schoolman11
CREATE DATABASE IF NOT EXISTS `schoolman11` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `schoolman11`;

-- Dumping structure for table schoolman11.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.cache: ~2 rows (approximately)
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1718553494),
	('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1718553494;', 1718553494);

-- Dumping structure for table schoolman11.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.cache_locks: ~0 rows (approximately)

-- Dumping structure for table schoolman11.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deptcode` varchar(255) NOT NULL,
  `deptname` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_DEPTCODE` (`deptcode`),
  UNIQUE KEY `UK_DEPTNAME` (`deptname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.departments: ~7 rows (approximately)
INSERT INTO `departments` (`id`, `deptcode`, `deptname`, `created_at`, `updated_at`) VALUES
	(1, 'BAN1', 'Bangla1', '2024-05-13 06:33:37', '2024-05-13 10:58:23'),
	(2, 'ENG', 'English', '2024-05-13 06:34:04', '2024-05-13 06:34:04'),
	(3, 'MTH', 'Mathematics', '2024-05-13 06:35:23', '2024-05-13 06:35:23'),
	(4, 'CHM', 'Chemistry', '2024-05-13 06:35:35', '2024-05-13 06:35:35'),
	(5, 'BIO', 'Biology', '2024-05-13 06:35:50', '2024-05-13 06:35:50'),
	(6, 'PHY', 'Physics', '2024-05-13 06:36:02', '2024-05-13 06:36:02'),
	(7, 'ICT', 'Information and Communication Technology', '2024-05-13 12:00:12', '2024-05-13 12:00:12');

-- Dumping structure for table schoolman11.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table schoolman11.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.jobs: ~0 rows (approximately)

-- Dumping structure for table schoolman11.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.job_batches: ~0 rows (approximately)

-- Dumping structure for table schoolman11.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.migrations: ~2 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '0001_01_01_000000_create_users_table', 1),
	(5, '0001_01_01_000001_create_cache_table', 1),
	(6, '0001_01_01_000002_create_jobs_table', 1),
	(7, '2024_05_13_121946_create_departments_table', 2),
	(8, '2024_05_13_170721_create_teachers_table', 3),
	(9, '2024_05_17_090508_create_studattnds_table', 4);

-- Dumping structure for table schoolman11.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table schoolman11.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.sessions: ~12 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('0rPDMcTWwlutcGtRlywIEnhChMJ6x14Uk5OfPcrg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFhZeUJDalNLOGdkTDJ2aVFNZlBaNDF4Mm5ORFBJcTRCQWkwTWhWcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hYm91dCI7fX0=', 1717782301),
	('5fgNsMXITNGuX9Kya0xiwk3TZJFrjUbf4fl7rGlD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGhBc3RUUkh4TGxhTXQ5UkpUYWphYWpvV2ljWXZNTEZ3OTkyaG93TiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fX0=', 1718553506),
	('DjRvPZVaJO6mtDytYZyF259PUuaOdTvOYUMvzGL6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNFJvaGt3bmV0SGhHajdlcENPV2o3cUVmWXN3SGdXQ0VITkFYanZ1VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717850382),
	('LfUHGqTgv8KjIoWn1B5szMild0GxqspTC9Oc2DpU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHZGaWQ0U1IydThvWXFUcWFOTGJ0VUJ3OHVNZUswVlpKM1luSHhXcSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2FkbWluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717850057),
	('luBfXVyNUejjNrP85qbgo1Lj4YfSRzEsCFFDfjlk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM3IzRU51MnNHdm1FUEs0WVpvbG9MYTU2cThVR2Z6RDdIRDk4dWtreiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2FkbWluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hYm91dD9fdG9rZW49M3IzRU51MnNHdm1FUEs0WVpvbG9MYTU2cThVR2Z6RDdIRDk4dWtreiI7fX0=', 1717761197),
	('nrXb8WLvlnZNhm84sBV4U63TvbM0bfaqoKQiPd3v', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZVNmVWVxUDVqakJYdUY1Z2pvTWRHaGJOVlN6TzBEUUhQb2JiUlZ3ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRHOGd5TElSNjR3dXZXQVI3QllxWGVlbTJESS42Y054RWpQemcyc1FYcGZDT3JkNHhaZDBabSI7fQ==', 1718463533),
	('NUbBrpUrHyQxriZSbsUA37OZmIhx3EuxPdZhUTTW', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia1hlTWZ1OTJNMEhGemhjaU5ER1JnZjZJR2tjZWlSRWVFUWtwbWtsbyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1718294434),
	('P5j4ZVgkR1aDk0rVZ7Q7ewNvTx3IwZa4K8mEd31L', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicnJ2TTJNTXJzb2Jaa0d3ajBPMjFMbHFDS2ZkY1d4SkRpb0xMbWlXOSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRHOGd5TElSNjR3dXZXQVI3QllxWGVlbTJESS42Y054RWpQemcyc1FYcGZDT3JkNHhaZDBabSI7fQ==', 1718118617),
	('R4etmNHE1MLp2kw5E8uL8nl1WkJWfYfB1lOyZr7s', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieE05ZnB0ZTdoSHBBOFFoY0VlMFdNOVNicmpVUExSSjJ3c29FelY5NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717947121),
	('vcq6jCcevsl2M8XcIL7xyj93oJTWJefXzqZL9n9I', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRUxHNGdpcjJWNkYzTllrMWxObDdkdThaWENxbU9zSWxreFc4NHVjOCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718033564),
	('wgZ1PKNoOcvUAfR3Szy3uln9dbAjio7w3ARIDaHq', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWVQ2MEdmS3FlSWlPV1l5SWJYQnVpbjZnMFNhNXZlT2duMU1aUXdWbSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1718462657),
	('Yc7LA6pd14f52igNNon3j7kjxG7JPZe0dev1yEPs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXlIem91dUZBbmdCRVhsOTdHeXdxZUExNUFYS2t6VDdtbGpTdU1EYyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2FkbWluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hYm91dCI7fX0=', 1717775938);

-- Dumping structure for table schoolman11.studattnds
CREATE TABLE IF NOT EXISTS `studattnds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `devid` varchar(255) NOT NULL,
  `teachid` varchar(255) NOT NULL,
  `studid` varchar(255) NOT NULL,
  `subcode` varchar(255) NOT NULL,
  `attndate` date NOT NULL,
  `"present` char(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.studattnds: ~15 rows (approximately)
INSERT INTO `studattnds` (`id`, `devid`, `teachid`, `studid`, `subcode`, `attndate`, `"present`, `created_at`, `updated_at`) VALUES
	(9, 'A0:A3:B3:80:1D:74', '12345', '98765456', 'EEE123456', '2024-05-31', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(10, 'A0:A3:B3:80:1D:74', '12345', '98776655', 'EEE123456', '2024-05-31', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(11, 'A0:A3:B3:80:1D:74', '12345', '99887766', 'EEE123456', '2024-05-31', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(12, 'A0:A3:B3:80:1D:74', '12345', '77889966', 'EEE123456', '2024-05-31', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(13, 'A0:A3:B3:80:1D:74', '12345', '90705060', 'EEE123456', '2024-06-01', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(14, 'A0:A3:B3:80:1D:74', '12345', '98776655', 'EEE123456', '2024-06-01', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(15, 'A0:A3:B3:80:1D:74', '12345', '99887766', 'EEE123456', '2024-06-01', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(16, 'A0:A3:B3:80:1D:74', '12345', '77889960', 'EEE123456', '2024-06-01', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(17, 'A0:A3:B3:80:1D:74', '12345', '44553322', 'EEE123456', '2024-06-01', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(18, 'A0:A3:B3:80:1D:74', '12345', '90705061', 'CSE334455', '2024-06-04', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(19, 'A0:A3:B3:80:1D:74', '12345', '98776651', 'CSE334455', '2024-06-04', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(20, 'A0:A3:B3:80:1D:74', '12345', '99887761', 'CSE334455', '2024-06-04', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(21, 'A0:A3:B3:80:1D:74', '12345', '77889960', 'CSE334455', '2024-06-04', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(22, 'A0:A3:B3:80:1D:74', '12345', '44553322', 'CSE334455', '2024-06-04', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51'),
	(23, 'A0:A3:B3:80:1D:74', '12345', '44553323', 'CSE334455', '2024-06-04', '1', '2024-06-09 15:34:51', '2024-06-09 15:34:51');

-- Dumping structure for table schoolman11.teachers
CREATE TABLE IF NOT EXISTS `teachers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deptcode` varchar(255) NOT NULL,
  `teachcode` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `mobile1` varchar(255) NOT NULL,
  `mobile2` varchar(255) NOT NULL,
  `email1` varchar(255) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `spousename` varchar(255) DEFAULT NULL,
  `smobile` varchar(255) DEFAULT NULL,
  `startdate` date NOT NULL DEFAULT current_timestamp(),
  `enddate` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_TEACHCODE` (`teachcode`),
  KEY `FK_DEPTCD` (`deptcode`),
  CONSTRAINT `FK_DEPTCD` FOREIGN KEY (`deptcode`) REFERENCES `departments` (`deptcode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.teachers: ~1 rows (approximately)
INSERT INTO `teachers` (`id`, `deptcode`, `teachcode`, `firstname`, `lastname`, `gender`, `img`, `dob`, `mobile1`, `mobile2`, `email1`, `email2`, `address1`, `address2`, `spousename`, `smobile`, `startdate`, `enddate`, `status`, `created_at`, `updated_at`) VALUES
	(3, 'ICT', '209', 'Ekramul', 'Farook', 'M', '01HYJMEV72MFBY1404JCEH8V63.png', '1968-06-14', '+8801716438701', '+8801716438709', 'ekramul.farook@yahoo.com', 'ekramul.farook@yahoo.com', 'Sylhet', 'Dhaka', 'ABC', '099990', '2020-01-01', '2024-05-16', '1', '2024-05-16 11:29:43', '2024-05-23 05:47:52'),
	(4, 'PHY', '309', 'Abdul', 'Karim', 'M', NULL, '1968-06-14', '+8801716438701', '+8801716438709', 'ekramul.farook@yahoo.com', 'ekramul.farook@yahoo.com', 'Sylhet', 'Dhaka', 'ABC', '099990', '2020-01-01', '2024-05-22', '1', '2024-05-22 10:04:50', '2024-05-22 10:04:50');

-- Dumping structure for table schoolman11.tempo
CREATE TABLE IF NOT EXISTS `tempo` (
  `datainput` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table schoolman11.tempo: ~12 rows (approximately)
INSERT INTO `tempo` (`datainput`) VALUES
	('A0:A3:B3:80:1D:74'),
	('John Cena Joe Frazer'),
	('John Cena Joe Frazer'),
	('John Cena Joe Frazer'),
	('John Cena Joe Frazer'),
	('John Cena Joe Frazer'),
	('John Cena Joe Frazer'),
	('John Cena Joe Frazer'),
	('John Cena Joe Frazer'),
	('John Cena Joe Frazer'),
	('Hello World!'),
	('New Text String');

-- Dumping structure for table schoolman11.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table schoolman11.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(2, 'admin1', 'admin1@gmail.com', 'user', NULL, '$2y$12$UOteMqossxgznAzNxgHKMezq6r1ncOV4yw99Mz7vpD6WKZQEq6rNK', NULL, '2024-05-10 08:28:39', '2024-05-10 08:28:39'),
	(3, 'admin112', 'admin112@gmail.com', 'user', NULL, '$2y$12$G8gyLIR64wuvWAR7BYqXeem2DI.6cNxEjPzg2sQXpfCOrd4xZd0Zm', NULL, '2024-06-11 09:05:02', '2024-06-11 09:05:02');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
