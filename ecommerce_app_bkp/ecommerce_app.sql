-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 10, 2025 at 04:56 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_product_id_foreign` (`product_id`),
  KEY `carts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `quantity`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 2, 1, 3, '2025-02-24 07:06:29', '2025-02-25 05:33:47'),
(6, 3, 6, 3, '2025-02-25 06:27:27', '2025-02-25 06:27:27'),
(20, 2, 6, 9, '2025-03-05 04:04:39', '2025-03-05 04:04:39'),
(21, 1, 1, 9, '2025-03-05 04:05:00', '2025-03-05 04:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Men\'s fashion', '2025-02-21 02:46:10', '2025-02-21 02:46:10'),
(4, 'Women\'s fashion', '2025-02-24 23:29:03', '2025-02-24 23:29:03'),
(5, 'Kids & Toys', '2025-02-24 23:29:03', '2025-02-24 23:29:03'),
(6, 'Accessories', '2025-02-24 23:29:03', '2025-02-24 23:29:03'),
(7, 'Cosmetics', '2025-02-24 23:29:03', '2025-02-24 23:29:03'),
(8, 'Shoes', '2025-02-24 23:29:03', '2025-02-24 23:29:03'),
(9, 'Sports', '2025-02-24 23:29:03', '2025-02-27 04:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Blue', '2025-02-21 02:49:36', '2025-02-21 02:49:36'),
(3, 'Black', '2025-02-21 03:04:35', '2025-02-21 03:04:35'),
(4, 'Red', '2025-02-27 00:42:12', '2025-02-27 00:42:12'),
(5, 'Yellow', '2025-02-27 00:42:12', '2025-02-27 00:42:12'),
(6, 'Green', '2025-02-27 00:42:12', '2025-02-27 00:42:12'),
(7, 'Brown', '2025-02-27 00:42:12', '2025-02-27 00:42:12'),
(8, 'Gray', '2025-02-27 00:42:12', '2025-02-27 00:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
CREATE TABLE IF NOT EXISTS `contact_messages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_messages_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `full_name`, `email`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'test1 contact', 'te7@abc.com', 'Contact 1 Message', NULL, '2025-02-21 04:22:39', '2025-02-21 04:22:39'),
(2, 'test2 contact', 'te2@abc.com', 'Contact 2 Message', NULL, '2025-02-21 04:50:09', '2025-02-21 04:50:09'),
(3, 'test3 contact', 'te3@abc.com', 'Contact 3 Message', NULL, '2025-02-21 04:55:29', '2025-02-21 04:55:29'),
(4, 'test4 contact', 'te4@abc.com', 'Contact 4 Message', 3, '2025-02-21 05:04:31', '2025-02-21 05:04:31'),
(5, 'Test7 contact', 'te77@gmail.com', 'Contact 7 Message', NULL, '2025-03-02 23:51:36', '2025-03-02 23:51:36'),
(6, 'Test7 contact', 'te77@gmail.com', 'Contact 7 Message', NULL, '2025-03-02 23:53:06', '2025-03-02 23:53:06'),
(7, 'Test8 contact', 'te8@gmail.com', 'Contact 8 Message', 9, '2025-03-02 23:54:50', '2025-03-02 23:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '62e39ce4-1339-40a7-a23e-335e52602c45', 'database', 'default', '{\"uuid\":\"62e39ce4-1339-40a7-a23e-335e52602c45\",\"displayName\":\"App\\\\Mail\\\\OrderMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\OrderMail\\\":6:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"orderItems\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Cart\\\";s:2:\\\"id\\\";a:2:{i:0;i:18;i:1;i:19;}s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"product\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"shippingAddress\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:23:\\\"App\\\\Models\\\\OrderAddress\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:13:\\\"statusMessage\\\";s:14:\\\"Payment Failed\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"test2@gmail.com\\\";}}s:6:\\\"mailer\\\";s:3:\\\"log\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Order]. in C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:689\nStack trace:\n#0 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(110): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(63): App\\Mail\\OrderMail->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(93): App\\Mail\\OrderMail->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Mail\\OrderMail->__unserialize(Array)\n#4 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(96): unserialize(\'O:34:\"Illuminat...\')\n#5 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(63): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#18 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#26 {main}', '2025-03-05 04:06:11'),
(2, 'ad8faf60-e766-4c0c-b697-04864054741f', 'database', 'default', '{\"uuid\":\"ad8faf60-e766-4c0c-b697-04864054741f\",\"displayName\":\"App\\\\Mail\\\\OrderMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\OrderMail\\\":6:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"orderItems\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Cart\\\";s:2:\\\"id\\\";a:2:{i:0;i:18;i:1;i:19;}s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"product\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"shippingAddress\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:23:\\\"App\\\\Models\\\\OrderAddress\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:13:\\\"statusMessage\\\";s:14:\\\"Payment Failed\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:35:\\\"viral.sonagra-t@equestsolutions.net\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'ErrorException: Attempt to read property \"status\" on null in C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\storage\\framework\\views\\84f81636648b7ed00d3eb286a272f654.php:28\nStack trace:\n#0 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'C:\\\\wamp64\\\\www\\\\d...\', 28)\n#1 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\storage\\framework\\views\\84f81636648b7ed00d3eb286a272f654.php(28): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'C:\\\\wamp64\\\\www\\\\d...\', 28)\n#2 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(123): require(\'C:\\\\wamp64\\\\www\\\\d...\')\n#3 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(124): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#4 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#5 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(75): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#6 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(209): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#7 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(192): Illuminate\\View\\View->getContents()\n#8 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(161): Illuminate\\View\\View->renderContents()\n#9 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\View->render()\n#10 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView(\'emails.orders.o...\', Array)\n#11 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.orders.o...\', NULL, NULL, Array)\n#12 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.orders.o...\', Array, Object(Closure))\n#13 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#14 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#15 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#16 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#17 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#22 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#26 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#28 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#30 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#42 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#50 {main}\n\nNext Illuminate\\View\\ViewException: Attempt to read property \"status\" on null (View: C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\resources\\views\\emails\\orders\\order.blade.php) in C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\storage\\framework\\views\\84f81636648b7ed00d3eb286a272f654.php:28\nStack trace:\n#0 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(60): Illuminate\\View\\Engines\\CompilerEngine->handleViewException(Object(ErrorException), 0)\n#1 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(75): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#2 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(209): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#3 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(192): Illuminate\\View\\View->getContents()\n#4 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(161): Illuminate\\View\\View->renderContents()\n#5 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\View->render()\n#6 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView(\'emails.orders.o...\', Array)\n#7 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.orders.o...\', NULL, NULL, Array)\n#8 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.orders.o...\', Array, Object(Closure))\n#9 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#13 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#18 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#38 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#46 {main}', '2025-03-05 04:06:13');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(3, 'f612414c-f757-494c-aba4-f93b01543836', 'database', 'default', '{\"uuid\":\"f612414c-f757-494c-aba4-f93b01543836\",\"displayName\":\"App\\\\Mail\\\\OrderMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\OrderMail\\\":6:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"orderItems\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Cart\\\";s:2:\\\"id\\\";a:2:{i:0;i:20;i:1;i:21;}s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"product\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"shippingAddress\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:23:\\\"App\\\\Models\\\\OrderAddress\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:13:\\\"statusMessage\\\";s:14:\\\"Payment Failed\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:35:\\\"viral.sonagra-t@equestsolutions.net\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 'ErrorException: Attempt to read property \"status\" on null in C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\storage\\framework\\views\\84f81636648b7ed00d3eb286a272f654.php:28\nStack trace:\n#0 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'C:\\\\wamp64\\\\www\\\\d...\', 28)\n#1 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\storage\\framework\\views\\84f81636648b7ed00d3eb286a272f654.php(28): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'C:\\\\wamp64\\\\www\\\\d...\', 28)\n#2 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(123): require(\'C:\\\\wamp64\\\\www\\\\d...\')\n#3 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(124): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#4 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#5 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(75): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#6 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(209): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#7 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(192): Illuminate\\View\\View->getContents()\n#8 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(161): Illuminate\\View\\View->renderContents()\n#9 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\View->render()\n#10 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView(\'emails.orders.o...\', Array)\n#11 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.orders.o...\', NULL, NULL, Array)\n#12 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.orders.o...\', Array, Object(Closure))\n#13 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#14 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#15 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#16 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#17 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#22 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#26 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#28 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#30 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#42 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#50 {main}\n\nNext Illuminate\\View\\ViewException: Attempt to read property \"status\" on null (View: C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\resources\\views\\emails\\orders\\order.blade.php) in C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\storage\\framework\\views\\84f81636648b7ed00d3eb286a272f654.php:28\nStack trace:\n#0 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(60): Illuminate\\View\\Engines\\CompilerEngine->handleViewException(Object(ErrorException), 0)\n#1 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(75): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#2 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(209): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\wamp64\\\\www\\\\d...\', Array)\n#3 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(192): Illuminate\\View\\View->getContents()\n#4 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(161): Illuminate\\View\\View->renderContents()\n#5 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(445): Illuminate\\View\\View->render()\n#6 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(420): Illuminate\\Mail\\Mailer->renderView(\'emails.orders.o...\', Array)\n#7 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(313): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.orders.o...\', NULL, NULL, Array)\n#8 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(206): Illuminate\\Mail\\Mailer->send(\'emails.orders.o...\', Array, Object(Closure))\n#9 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(199): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#13 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#18 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#38 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\wamp64\\www\\deepesh_laravel_trainee\\git_repo\\trainee-milestones-laravel\\ecommerce_app\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#46 {main}', '2025-03-05 04:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 2),
(3, '0001_01_01_000002_create_jobs_table', 3),
(4, '2025_02_21_044350_create_personal_access_tokens_table', 4),
(5, '2025_02_21_044914_create_permission_tables', 5),
(6, '2025_02_21_052109_create_categories_table', 6),
(7, '2025_02_21_052132_create_products_table', 7),
(8, '2025_02_21_052254_create_sizes_table', 8),
(9, '2025_02_21_052312_create_colors_table', 9),
(10, '2025_02_21_052329_create_product_attributes_table', 10),
(11, '2025_02_21_052502_create_product_images_table', 11),
(12, '2025_02_21_052528_create_ratings_table', 12),
(13, '2025_02_21_052546_create_contact_messages_table', 13),
(14, '2025_02_21_052603_create_carts_table', 14),
(15, '2025_02_21_052629_create_order_statuses_table', 15),
(52, '2025_02_24_064648_create_payments_table', 16),
(65, '2025_02_21_052704_create_orders_table', 17),
(66, '2025_02_21_052646_create_order_addresses_table', 18),
(67, '2025_02_24_065913_create_order_items_table', 19),
(68, '2025_02_21_065656_create_roles_table', 20),
(69, '2025_02_21_065718_add_role_to_users_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `total_amount` decimal(10,2) NOT NULL,
  `order_status_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_status_id_foreign` (`order_status_id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_payment_id_foreign` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_amount`, `order_status_id`, `user_id`, `payment_id`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:05:33', '2025-03-06 23:05:33'),
(2, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:28:25', '2025-03-06 23:28:25'),
(3, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:29:22', '2025-03-06 23:29:22'),
(4, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:30:38', '2025-03-06 23:30:38'),
(5, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:32:17', '2025-03-06 23:32:17'),
(6, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:33:34', '2025-03-06 23:33:34'),
(7, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:34:13', '2025-03-06 23:34:13'),
(8, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:34:20', '2025-03-06 23:34:20'),
(9, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:34:51', '2025-03-06 23:34:51'),
(10, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:35:28', '2025-03-06 23:35:28'),
(11, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:35:35', '2025-03-06 23:35:35'),
(12, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:35:44', '2025-03-06 23:35:44'),
(13, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:36:01', '2025-03-06 23:36:01'),
(14, 460.00, NULL, 9, NULL, NULL, '2025-03-06 23:36:09', '2025-03-06 23:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

DROP TABLE IF EXISTS `order_addresses`;
CREATE TABLE IF NOT EXISTS `order_addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` int NOT NULL,
  `phone` bigint NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_addresses_order_id_foreign` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_addresses`
--

INSERT INTO `order_addresses` (`id`, `first_name`, `last_name`, `address_line_1`, `apartment`, `address_line_2`, `city`, `country`, `state`, `postal_code`, `phone`, `email`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 1, '2025-03-06 23:05:33', '2025-03-06 23:05:33'),
(2, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 2, '2025-03-06 23:28:25', '2025-03-06 23:28:25'),
(3, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 3, '2025-03-06 23:29:22', '2025-03-06 23:29:22'),
(4, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 4, '2025-03-06 23:30:38', '2025-03-06 23:30:38'),
(5, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 5, '2025-03-06 23:32:17', '2025-03-06 23:32:17'),
(6, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 6, '2025-03-06 23:33:34', '2025-03-06 23:33:34'),
(7, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 7, '2025-03-06 23:34:13', '2025-03-06 23:34:13'),
(8, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 8, '2025-03-06 23:34:20', '2025-03-06 23:34:20'),
(9, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 9, '2025-03-06 23:34:51', '2025-03-06 23:34:51'),
(10, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 10, '2025-03-06 23:35:28', '2025-03-06 23:35:28'),
(11, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 11, '2025-03-06 23:35:35', '2025-03-06 23:35:35'),
(12, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 12, '2025-03-06 23:35:44', '2025-03-06 23:35:44'),
(13, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 13, '2025-03-06 23:36:01', '2025-03-06 23:36:01'),
(14, 'test1_last_name', 'test2_last_name', 'Test 2 Address Line 1', NULL, 'Test 2 Address Line 2', 'Vadodara', 'India', '565', 898963, 7744112255, 'test2@gmail.com', 14, '2025-03-06 23:36:09', '2025-03-06 23:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `quantity`, `price`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 2, 205.00, 6, 1, '2025-03-06 23:05:33', '2025-03-06 23:05:33'),
(2, 1, 50.00, 1, 1, '2025-03-06 23:05:33', '2025-03-06 23:05:33'),
(3, 2, 205.00, 6, 2, '2025-03-06 23:28:25', '2025-03-06 23:28:25'),
(4, 1, 50.00, 1, 2, '2025-03-06 23:28:25', '2025-03-06 23:28:25'),
(5, 2, 205.00, 6, 3, '2025-03-06 23:29:22', '2025-03-06 23:29:22'),
(6, 1, 50.00, 1, 3, '2025-03-06 23:29:22', '2025-03-06 23:29:22'),
(7, 2, 205.00, 6, 4, '2025-03-06 23:30:38', '2025-03-06 23:30:38'),
(8, 1, 50.00, 1, 4, '2025-03-06 23:30:38', '2025-03-06 23:30:38'),
(9, 2, 205.00, 6, 5, '2025-03-06 23:32:17', '2025-03-06 23:32:17'),
(10, 1, 50.00, 1, 5, '2025-03-06 23:32:17', '2025-03-06 23:32:17'),
(11, 2, 205.00, 6, 6, '2025-03-06 23:33:34', '2025-03-06 23:33:34'),
(12, 1, 50.00, 1, 6, '2025-03-06 23:33:34', '2025-03-06 23:33:34'),
(13, 2, 205.00, 6, 7, '2025-03-06 23:34:13', '2025-03-06 23:34:13'),
(14, 1, 50.00, 1, 7, '2025-03-06 23:34:13', '2025-03-06 23:34:13'),
(15, 2, 205.00, 6, 8, '2025-03-06 23:34:20', '2025-03-06 23:34:20'),
(16, 1, 50.00, 1, 8, '2025-03-06 23:34:20', '2025-03-06 23:34:20'),
(17, 2, 205.00, 6, 9, '2025-03-06 23:34:51', '2025-03-06 23:34:51'),
(18, 1, 50.00, 1, 9, '2025-03-06 23:34:51', '2025-03-06 23:34:51'),
(19, 2, 205.00, 6, 10, '2025-03-06 23:35:28', '2025-03-06 23:35:28'),
(20, 1, 50.00, 1, 10, '2025-03-06 23:35:28', '2025-03-06 23:35:28'),
(21, 2, 205.00, 6, 11, '2025-03-06 23:35:35', '2025-03-06 23:35:35'),
(22, 1, 50.00, 1, 11, '2025-03-06 23:35:35', '2025-03-06 23:35:35'),
(23, 2, 205.00, 6, 12, '2025-03-06 23:35:44', '2025-03-06 23:35:44'),
(24, 1, 50.00, 1, 12, '2025-03-06 23:35:44', '2025-03-06 23:35:44'),
(25, 2, 205.00, 6, 13, '2025-03-06 23:36:01', '2025-03-06 23:36:01'),
(26, 1, 50.00, 1, 13, '2025-03-06 23:36:01', '2025-03-06 23:36:01'),
(27, 2, 205.00, 6, 14, '2025-03-06 23:36:09', '2025-03-06 23:36:09'),
(28, 1, 50.00, 1, 14, '2025-03-06 23:36:09', '2025-03-06 23:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
CREATE TABLE IF NOT EXISTS `order_statuses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Placed', '2025-02-23 23:31:12', '2025-02-23 23:34:08'),
(3, 'In Transit', '2025-02-23 23:34:15', '2025-02-23 23:34:15'),
(4, 'Shipped', '2025-02-23 23:35:05', '2025-02-23 23:35:05'),
(5, 'Canceled', '2025-02-23 23:35:11', '2025-02-23 23:35:11'),
(6, 'Payment Failed', '2025-02-24 09:11:18', '2025-02-24 09:11:18'),
(7, 'Refunded', '2025-02-25 07:21:22', '2025-02-25 07:21:22'),
(8, 'Completed', '2025-02-25 03:15:57', '2025-02-27 04:09:43'),
(10, 'Created', '2025-03-06 13:05:11', '2025-03-06 13:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `transaction_id`, `currency`, `amount`, `payer_name`, `payer_email`, `payment_gateway`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pi_3QzEgp2MdIz6RgJE1bDSYWnz', 'usd', 460.00, 'test1_last_name', 'test2@gmail.com', 'Stripe', 'pm_card_chargeDeclinedInsufficientFunds', 'failed', '2025-03-05 04:27:16', '2025-03-05 04:27:16'),
(2, 'pi_3QzErv2MdIz6RgJE0zMwuwP0', 'usd', 460.00, 'test1_last_name', 'test2@gmail.com', 'Stripe', 'pm_card_chargeDeclinedInsufficientFunds', 'failed', '2025-03-05 04:38:44', '2025-03-05 04:38:44'),
(3, NULL, 'usd', 0.00, 'test1_last_name', 'test2@gmail.com', 'Stripe', 'pm_card_chargeDeclinedInsufficientFunds', 'failed', '2025-03-06 05:41:08', '2025-03-06 05:41:08'),
(4, 'pi_3Qzcsk2MdIz6RgJE1KgJybJb', 'usd', 460.00, 'test1_last_name', 'test2@gmail.com', 'Stripe', 'pm_card_chargeDeclinedInsufficientFunds', 'failed', '2025-03-06 06:17:11', '2025-03-06 06:17:11'),
(5, NULL, 'usd', 0.00, 'test1_last_name', 'test2@gmail.com', 'Stripe', 'pm_card_mastercard', 'failed', '2025-03-06 06:26:22', '2025-03-06 06:26:22'),
(6, NULL, 'usd', 0.00, 'test1_last_name', 'test2@gmail.com', 'Stripe', 'pm_card_visa', 'failed', '2025-03-06 06:27:39', '2025-03-06 06:27:39'),
(7, 'pi_3QzdDN2MdIz6RgJE1Y4HiSps', 'usd', 460.00, 'test1_last_name', 'test2@gmail.com', 'Stripe', 'pm_1QzdDN2MdIz6RgJEnwbpvkPC', 'succeeded', '2025-03-06 06:38:30', '2025-03-06 06:38:30'),
(8, 'pi_3Qzd7R2MdIz6RgJE1jqYBrtY', 'usd', 460.00, 'John Doe', 'johndoe@example.com', 'Stripe', 'pm_1Qzd7R2MdIz6RgJE5CPiXX6X', 'succeeded', '2025-03-06 07:32:50', '2025-03-06 07:32:50'),
(9, 'pi_3QzdAr2MdIz6RgJE19CQoMJw', 'usd', 460.00, 'test1_last_name', 'test2@gmail.com', 'Stripe', 'pm_1QzdAr2MdIz6RgJEl3QSAvmB', 'succeeded', '2025-03-06 07:36:00', '2025-03-06 07:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(14, 'App\\Models\\User', 2, 'API Token', '8dead6d545f607bc73de1c450e7bce60e6628ea4f01235191005ffc4bc82e5f3', '[\"*\"]', '2025-03-06 04:08:03', NULL, '2025-02-24 08:34:21', '2025-03-06 04:08:03'),
(16, 'App\\Models\\User', 9, 'API Token', '14c44f445971d6310c457535f76397048b06d148954926be047de40ecf683b10', '[\"*\"]', '2025-03-06 23:36:09', NULL, '2025-02-25 05:19:12', '2025-03-06 23:36:09'),
(17, 'App\\Models\\User', 3, 'API Token', '48c1fe66776e8ebe85754664495dc1c2cf4a8e3e1e488301b0dd87b0f2a6ec2f', '[\"*\"]', '2025-03-06 01:40:33', NULL, '2025-02-25 05:20:45', '2025-03-06 01:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'Product 1 description', 50.00, 15, 2, '2025-02-21 03:11:35', '2025-03-05 03:47:05'),
(5, 'Product 2', 'Product 2 description', 100.00, 8, 2, '2025-02-25 00:45:01', '2025-02-25 00:45:01'),
(6, 'Product 3', 'Product 3 description', 205.00, 20, 4, '2025-02-25 00:46:11', '2025-03-05 03:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
CREATE TABLE IF NOT EXISTS `product_attributes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `size_id` bigint UNSIGNED DEFAULT NULL,
  `color_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_attributes_product_id_foreign` (`product_id`),
  KEY `product_attributes_size_id_foreign` (`size_id`),
  KEY `product_attributes_color_id_foreign` (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `size_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2025-02-21 03:11:35', '2025-02-21 03:11:35'),
(2, 1, NULL, 3, '2025-02-21 03:11:35', '2025-02-21 03:11:35'),
(18, 5, 3, NULL, '2025-02-25 00:45:01', '2025-02-25 00:45:01'),
(19, 5, NULL, 1, '2025-02-25 00:45:01', '2025-02-25 00:45:01'),
(20, 5, NULL, 3, '2025-02-25 00:45:01', '2025-02-25 00:45:01'),
(21, 6, 1, NULL, '2025-02-25 00:46:11', '2025-02-25 00:46:11'),
(22, 6, 3, NULL, '2025-02-25 00:46:11', '2025-02-25 00:46:11'),
(23, 6, NULL, 3, '2025-02-25 00:46:11', '2025-02-25 00:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'product_images/4RZWt1pw9l73uaooKwHDPEbz3mqDjszdAUbpemnN.jpg', 1, '2025-02-21 03:11:35', '2025-02-21 03:11:35'),
(2, 'product_images/x5eK86JKhPZUOPC76LDFjDzDGjYzIo0aufzqBS91.jpg', 1, '2025-02-21 03:11:35', '2025-02-21 03:11:35'),
(7, 'product_images/xwIOMEacmvFm1DiIyj4ccpNZIzW6htM01qFDewvN.jpg', 5, '2025-02-25 00:45:02', '2025-02-25 00:45:02'),
(8, 'product_images/N669E9u8IWim0COjSYH2CsKwIppX0OjlEyThiecX.jpg', 5, '2025-02-25 00:45:02', '2025-02-25 00:45:02'),
(12, 'product_images/EDjK2E4klSxjaQPe3BqInX7NhrYgWQtfmdvOu6bZ.jpg', 6, '2025-03-03 14:06:54', '2025-03-03 14:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating` decimal(3,1) NOT NULL DEFAULT '0.0',
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ratings_product_id_foreign` (`product_id`),
  KEY `ratings_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rating`, `review`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1.5, 'Test review', 6, 9, '2025-02-27 04:43:32', '2025-03-03 01:47:52'),
(6, 2.5, 'Test review', 1, 3, '2025-02-27 10:31:41', '2025-02-27 05:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-03-06 08:30:58', '2025-03-06 08:30:58'),
(2, 'user', '2025-03-06 08:30:58', '2025-03-06 08:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('45XuSqA0uZfTEi6eC1eSZTBRSppuUz8KRWc0a1RQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFdwMkllbWJWWXpHWk54TXpwSWtLRjBVd3FCVG1ZS2g0N21GeFFyViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740371865),
('B007nyRqNdVaPV1Ir6mM4XrU4VG2dlOqO4G75cqC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFhDQzBxYXBrQXhncENQT0FPaWg2WmRBZEg5dTdIZGw5NGx6MXBVbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740976109),
('D2TD5gv1niDyERaRbiS88mxIKkNngDtaGhx2WBO9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1ZCNnE0bFRIcTAwTjNrc1BuY1F5cXAyckVIRUUwcGZyUW45WUs1QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740631592),
('ENxydb94uuad9KGE0SenniEVdKQwtKCTPLVmktfm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamtiVGllNm9RT3V2dGhXRDNBTnRPZHVHUHZ6UGhLMENSQzdKMXlqdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740117397),
('fo46uz7kZdiyoEJ9bGuPHkEr9lJ0tdWyYnVk3xdj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1NIeWJhUTBtWUQ1TDc1SWxORHVBUlFzTVVNYzMyYXdGb0JEWmhDVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9mODMyLTExNy05OC0xMzctNDYubmdyb2stZnJlZS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741321910),
('gptO01Vxao13YZB73ZzJvo30tKXfDVdTeoGD4VOD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRk5aV2dSbm1VZXAyU1MxS0dKa24yMUNkNU10NFVGSEtuOG5RU3NYeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZXN0UGF5bWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTI6InByb2R1Y3RfbmFtZSI7czo4OiJLZXlib2FyZCI7czo4OiJxdWFudGl0eSI7czoxOiIyIjtzOjU6InByaWNlIjtzOjE6IjUiO30=', 1741092149),
('KwoMPlnbv9VTGzgLJGiyROvFrSpq51lJtybrRnfC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU5VbzhDZ2NFRjZtbmI3eE9WOUhBWmU0TGllMjJJVzFIS3FDTWdSMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZXN0UGF5cGFsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741003536),
('mitYvGo1GNUKqbDk4ZHsLv5VsG0BKVAECLFxLneg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHpzU2ZvQlRvZUlUelVwZHFVNzh4c3FUd0VyQlFjcks4Rk9lRzFjNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZXN0UGF5cGFsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741008898),
('Mju55Puw2J9nVt0KfHJ83M4yDaaxFyMCeZRpPzn5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEJ4aEhwbW1qNlZKZFlzTmg2dmhKRFFmVWRUSFNoU3NJN2dRYzNGYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZXN0UGF5bWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741170037),
('obNAtEaVcpFj0wTr8NhmYdNSXg43ixhGoqQOPVAI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUFYUU5ROGJQNlB6WjdOOUc2eEFnMFNWYXZHaFllQkhtNnRQQzB2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly84MDBiLTEyMi0xNjQtMTI3LTIwNC5uZ3Jvay1mcmVlLmFwcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741262074),
('oOLngMC6oOcsocbosmWW94khHMuNzC8QlmN34dmR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTB6RTRzNVhnU2szM1pBZ2FIdHN2UVVxVUVtYnJQMGJBMk9OZGpTdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740723063),
('Q3llC7hZmEdtmlsEXCJAAHP2sC1Ug2l4AqIdckww', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWN0S3F0TUE1bk93cWJzTzdzeDZ1VGQxUlVOQm4wTGF1c1NTa1BQVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741178470),
('TLW4r9nIs9YbH4v2SiczZHZVhpEbGGp9K5G6EpDo', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0dFZTBLVGRpdG15Und2UmJSS3dROFA2OXpiYXFOUzVITnVRekZHaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9lNjI5LTEyMi0xNzUtNjUtMjA3Lm5ncm9rLWZyZWUuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741178405),
('uyDS2gpxmtf1Dsm5r5FzwDv0krjhAw1xtvJnMdNk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFlDdzVYZ3dGcW5rOHJ1UmVmN2ZKQlBjQUlUTmdieWg3QTlyelZwQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZXN0UGF5cGFsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741004069),
('wQZGlu2AfpQ5LY1cpaREvPHwzMPZpiptpTbkIjvZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU9reEhqeWNNOWd4MUl5aEtTNElRRVFhMDhVUll6aVFXMnBLZFdkTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9lNjI5LTEyMi0xNzUtNjUtMjA3Lm5ncm9rLWZyZWUuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741178360);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 'M', '2025-02-21 02:48:08', '2025-02-21 02:48:08'),
(3, 'S', '2025-02-21 08:42:26', '2025-02-21 08:42:26'),
(4, 'L', '2025-02-27 02:51:37', '2025-02-27 02:51:37'),
(5, 'XL', '2025-02-27 02:51:37', '2025-02-27 02:51:37'),
(6, 'XXL', '2025-02-27 02:51:37', '2025-02-27 04:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Admin 1', 'admin1@test.com', NULL, '$2y$12$t4.XDfEUAV4VR6FrIRMCxO3VlDaP8Q.55FI.rblYVJmEQdqKneXRy', NULL, 1, '2025-02-21 00:50:33', '2025-02-21 00:50:33', NULL),
(3, 'Test1', 'test1@test.com', NULL, '$2y$12$DIt30s7dPlhsHzl3IuL59.9QptEwiIO6F4LtYzwgSv.w3RaAkIo0y', NULL, 2, '2025-02-21 00:50:52', '2025-02-21 00:50:52', NULL),
(9, 'Test 2', 'test2@test.com', NULL, '$2y$12$M9lEWvtKIsCh5opf0e53EOccy6DypQSPiMkT2fNxo1LteP6bRTope', NULL, 2, '2025-02-25 05:18:22', '2025-03-06 04:07:29', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD CONSTRAINT `contact_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD CONSTRAINT `order_addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
