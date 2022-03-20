-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2022 at 02:17 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nobi_backend_engineer_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `amount_available` decimal(10,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `user_id`, `amount_available`, `created_at`, `updated_at`) VALUES
(1, 1, '0.00674223', '2022-03-07 02:57:13', '2022-03-07 02:57:13'),
(2, 2, '1.00000000', '2022-03-07 02:57:13', '2022-03-07 02:57:13'),
(3, 1, '0.00000001', '2022-03-07 02:57:13', '2022-03-07 02:57:13'),
(4, 1, '21.00000000', '2022-03-07 02:57:13', '2022-03-07 02:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '7230d3c1-a5e6-4c4f-a279-901a03f979e1', 'database', 'default', '{\"uuid\":\"7230d3c1-a5e6-4c4f-a279-901a03f979e1\",\"displayName\":\"App\\\\Jobs\\\\PriceImportJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\PriceImportJob\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\PriceImportJob\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Class \'App\\Jobs\\PriceImport\' not found in D:\\Ganbatte\\example-app\\app\\Jobs\\PriceImportJob.php:35\nStack trace:\n#0 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\PriceImportJob->handle()\n#1 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\PriceImportJob))\n#7 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\PriceImportJob))\n#8 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\PriceImportJob), false)\n#10 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\PriceImportJob))\n#11 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\PriceImportJob))\n#12 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\PriceImportJob))\n#14 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(329): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\Ganbatte\\example-app\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2022-03-19 11:00:42'),
(2, '35fdb186-3eac-4e07-90a5-46f770f2bad8', 'database', 'default', '{\"uuid\":\"35fdb186-3eac-4e07-90a5-46f770f2bad8\",\"displayName\":\"App\\\\Jobs\\\\PriceImportJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\PriceImportJob\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\PriceImportJob\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Maatwebsite\\Excel\\Exceptions\\NoTypeDetectedException: No ReaderType or WriterType could be detected. Make sure you either pass a valid extension to the filename or pass an explicit type. in D:\\Ganbatte\\example-app\\vendor\\maatwebsite\\excel\\src\\Helpers\\FileTypeDetector.php:31\nStack trace:\n#0 D:\\Ganbatte\\example-app\\vendor\\maatwebsite\\excel\\src\\Excel.php(145): Maatwebsite\\Excel\\Helpers\\FileTypeDetector::detect(NULL, NULL)\n#1 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Maatwebsite\\Excel\\Excel->import(Object(App\\Imports\\PriceImport), NULL)\n#2 D:\\Ganbatte\\example-app\\app\\Jobs\\PriceImportJob.php(35): Illuminate\\Support\\Facades\\Facade::__callStatic(\'import\', Array)\n#3 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\PriceImportJob->handle()\n#4 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\PriceImportJob))\n#10 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\PriceImportJob))\n#11 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\PriceImportJob), false)\n#13 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\PriceImportJob))\n#14 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\PriceImportJob))\n#15 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\PriceImportJob))\n#17 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(329): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#29 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Ganbatte\\example-app\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2022-03-19 11:01:38'),
(3, 'bba8072f-296f-4168-a7cb-a8e2809f8966', 'database', 'default', '{\"uuid\":\"bba8072f-296f-4168-a7cb-a8e2809f8966\",\"displayName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"command\":\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":21:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:23:\\\"App\\\\Imports\\\\PriceImport\\\":0:{}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":14:{s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:112:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-5qpoDmYKmAgdEN20VCSZcx9nEvQjcypx.tmp\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:5;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:2;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:1:{i:0;s:1802:\\\"O:37:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\\":12:{s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000import\\\";O:23:\\\"App\\\\Imports\\\\PriceImport\\\":0:{}s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000reader\\\";O:24:\\\"Maatwebsite\\\\Excel\\\\Reader\\\":5:{s:14:\\\"\\u0000*\\u0000spreadsheet\\\";N;s:15:\\\"\\u0000*\\u0000sheetImports\\\";a:0:{}s:14:\\\"\\u0000*\\u0000currentFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:112:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-5qpoDmYKmAgdEN20VCSZcx9nEvQjcypx.tmp\\\";}s:23:\\\"\\u0000*\\u0000temporaryFileFactory\\\";O:44:\\\"Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\\":2:{s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryPath\\\";s:61:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\/cache\\/laravel-excel\\\";s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryDisk\\\";N;}s:9:\\\"\\u0000*\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":14:{s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;}}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}}\\\";}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: Maatwebsite\\Excel\\Jobs\\ReadChunk has been attempted too many times or run too long. The job may have previously timed out. in D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:750\nStack trace:\n#0 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(504): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(418): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(329): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#12 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 D:\\Ganbatte\\example-app\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2022-03-19 11:56:23'),
(4, '0abb505c-dc77-4e01-9797-9eef65b4c64f', 'database', 'default', '{\"uuid\":\"0abb505c-dc77-4e01-9797-9eef65b4c64f\",\"displayName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"command\":\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":21:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:23:\\\"App\\\\Imports\\\\PriceImport\\\":0:{}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":14:{s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:112:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-IRhMCXRk9BUIxUjslFSKPTuYijl7pxza.tmp\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:5;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:2;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:1:{i:0;s:1802:\\\"O:37:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\\":12:{s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000import\\\";O:23:\\\"App\\\\Imports\\\\PriceImport\\\":0:{}s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000reader\\\";O:24:\\\"Maatwebsite\\\\Excel\\\\Reader\\\":5:{s:14:\\\"\\u0000*\\u0000spreadsheet\\\";N;s:15:\\\"\\u0000*\\u0000sheetImports\\\";a:0:{}s:14:\\\"\\u0000*\\u0000currentFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:112:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-IRhMCXRk9BUIxUjslFSKPTuYijl7pxza.tmp\\\";}s:23:\\\"\\u0000*\\u0000temporaryFileFactory\\\";O:44:\\\"Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\\":2:{s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryPath\\\";s:61:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\/cache\\/laravel-excel\\\";s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryDisk\\\";N;}s:9:\\\"\\u0000*\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":14:{s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;}}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}}\\\";}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: Maatwebsite\\Excel\\Jobs\\ReadChunk has been attempted too many times or run too long. The job may have previously timed out. in D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:750\nStack trace:\n#0 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(504): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(418): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(329): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#12 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 D:\\Ganbatte\\example-app\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2022-03-19 11:56:31'),
(5, '334fb03d-baf2-46cb-819a-93e9aeae0b0e', 'database', 'default', '{\"uuid\":\"334fb03d-baf2-46cb-819a-93e9aeae0b0e\",\"displayName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"command\":\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":21:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:23:\\\"App\\\\Imports\\\\PriceImport\\\":0:{}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":14:{s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:112:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-pP3Q5Uo5kmwHejueCfIdyktOzbLRK1Tb.tmp\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:5;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:2;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:1:{i:0;s:1802:\\\"O:37:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\\":12:{s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000import\\\";O:23:\\\"App\\\\Imports\\\\PriceImport\\\":0:{}s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000reader\\\";O:24:\\\"Maatwebsite\\\\Excel\\\\Reader\\\":5:{s:14:\\\"\\u0000*\\u0000spreadsheet\\\";N;s:15:\\\"\\u0000*\\u0000sheetImports\\\";a:0:{}s:14:\\\"\\u0000*\\u0000currentFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:112:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-pP3Q5Uo5kmwHejueCfIdyktOzbLRK1Tb.tmp\\\";}s:23:\\\"\\u0000*\\u0000temporaryFileFactory\\\";O:44:\\\"Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\\":2:{s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryPath\\\";s:61:\\\"D:\\\\Ganbatte\\\\example-app\\\\storage\\\\framework\\/cache\\/laravel-excel\\\";s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryDisk\\\";N;}s:9:\\\"\\u0000*\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":14:{s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;}}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}}\\\";}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: Maatwebsite\\Excel\\Jobs\\ReadChunk has been attempted too many times or run too long. The job may have previously timed out. in D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:750\nStack trace:\n#0 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(504): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(418): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(329): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#12 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 D:\\Ganbatte\\example-app\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 D:\\Ganbatte\\example-app\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 D:\\Ganbatte\\example-app\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2022-03-19 11:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_03_19_153833_create_transaction_table', 1),
(5, '2022_03_19_154223_create_balance_table', 1),
(6, '2022_03_19_165320_create_price_table', 1),
(7, '2022_03_19_175145_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` int(11) NOT NULL,
  `record_time` datetime NOT NULL,
  `usd` double NOT NULL,
  `idr` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`, `ticker`, `coin_id`, `code`, `exchange`, `invalid`, `record_time`, `usd`, `idr`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-10 00:00:00', 3367.905387, 44990164.11, '2017-08-10 00:00:00', '2017-08-10 00:00:00'),
(2, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-11 00:00:00', 3562.587663, 47588155.35, '2017-08-11 00:00:00', '2017-08-11 00:00:00'),
(3, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-12 00:00:00', 3800.140625, 50761328.43, '2017-08-12 00:00:00', '2017-08-12 00:00:00'),
(4, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-13 00:00:00', 4023.254522, 53737604.84, '2017-08-13 00:00:00', '2017-08-13 00:00:00'),
(5, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-14 00:00:00', 4175.695291, 55733005.05, '2017-08-14 00:00:00', '2017-08-14 00:00:00'),
(6, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-15 00:00:00', 4149.308759, 55432690.37, '2017-08-15 00:00:00', '2017-08-15 00:00:00'),
(7, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-16 00:00:00', 4262.558791, 39538784.92, '2017-08-16 00:00:00', '2017-08-16 00:00:00'),
(8, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-17 00:00:00', 4286.917435, 39764731.63, '2017-08-17 00:00:00', '2017-08-17 00:00:00'),
(9, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-18 00:00:00', 4097.685802, 54747131.16, '2017-08-18 00:00:00', '2017-08-18 00:00:00'),
(10, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-19 00:00:00', 4115.211988, 54981289.77, '2017-08-19 00:00:00', '2017-08-19 00:00:00'),
(11, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-20 00:00:00', 4001.228632, 53462416.37, '2017-08-20 00:00:00', '2017-08-20 00:00:00'),
(12, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-21 00:00:00', 3935.229933, 52531136.79, '2017-08-21 00:00:00', '2017-08-21 00:00:00'),
(13, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-22 00:00:00', 4008.416685, 53486592.49, '2017-08-22 00:00:00', '2017-08-22 00:00:00'),
(14, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-23 00:00:00', 4069.080239, 54318505.24, '2017-08-23 00:00:00', '2017-08-23 00:00:00'),
(15, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-24 00:00:00', 4167.289177, 55616992.51, '2017-08-24 00:00:00', '2017-08-24 00:00:00'),
(16, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-25 00:00:00', 4199.892032, 56046721.51, '2017-08-25 00:00:00', '2017-08-25 00:00:00'),
(17, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-26 00:00:00', 4123.513371, 55001595.08, '2017-08-26 00:00:00', '2017-08-26 00:00:00'),
(18, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-27 00:00:00', 4116.468739, 54769236.31, '2017-08-27 00:00:00', '2017-08-27 00:00:00'),
(19, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-28 00:00:00', 4216.242773, 56063108.96, '2017-08-28 00:00:00', '2017-08-28 00:00:00'),
(20, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-29 00:00:00', 4394.063436, 58590486.25, '2017-08-29 00:00:00', '2017-08-29 00:00:00'),
(21, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-30 00:00:00', 4553.806527, 60762239.49, '2017-08-30 00:00:00', '2017-08-30 00:00:00'),
(22, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-31 00:00:00', 4702.938163, 62742074.42, '2017-08-31 00:00:00', '2017-08-31 00:00:00'),
(23, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-01 00:00:00', 4863.193049, 64836069.73, '2017-09-01 00:00:00', '2017-09-01 00:00:00'),
(24, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-02 00:00:00', 4556.597777, 60816953.6, '2017-09-02 00:00:00', '2017-09-02 00:00:00'),
(25, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-03 00:00:00', 4632.462331, 61829518.52, '2017-09-03 00:00:00', '2017-09-03 00:00:00'),
(26, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-04 00:00:00', 4317.185188, 57650292.75, '2017-09-04 00:00:00', '2017-09-04 00:00:00'),
(27, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-05 00:00:00', 4447.875592, 59344634.1, '2017-09-05 00:00:00', '2017-09-05 00:00:00'),
(28, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-06 00:00:00', 4592.250278, 61228086.72, '2017-09-06 00:00:00', '2017-09-06 00:00:00'),
(29, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-07 00:00:00', 4584.820275, 61044080.14, '2017-09-07 00:00:00', '2017-09-07 00:00:00'),
(30, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-08 00:00:00', 4285.207939, 56697088.39, '2017-09-08 00:00:00', '2017-09-08 00:00:00'),
(31, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-09 00:00:00', 4245.607341, 56031776.65, '2017-09-09 00:00:00', '2017-09-09 00:00:00'),
(32, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-10 00:00:00', 4132.664642, 54586500.25, '2017-09-10 00:00:00', '2017-09-10 00:00:00'),
(33, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-11 00:00:00', 4164.976212, 54918848.46, '2017-09-11 00:00:00', '2017-09-11 00:00:00'),
(34, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-12 00:00:00', 4130.956285, 54489833.25, '2017-09-12 00:00:00', '2017-09-12 00:00:00'),
(35, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-13 00:00:00', 3883.652001, 51263194.11, '2017-09-13 00:00:00', '2017-09-13 00:00:00'),
(36, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-14 00:00:00', 3100.668155, 41049593.99, '2017-09-14 00:00:00', '2017-09-14 00:00:00'),
(37, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-15 00:00:00', 3587.943122, 47524079.32, '2017-09-15 00:00:00', '2017-09-15 00:00:00'),
(38, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-16 00:00:00', 3606.275197, 47750493.39, '2017-09-16 00:00:00', '2017-09-16 00:00:00'),
(39, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-17 00:00:00', 3553.432316, 47048034.42, '2017-09-17 00:00:00', '2017-09-17 00:00:00'),
(40, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-18 00:00:00', 4012.285825, 53162059.93, '2017-09-18 00:00:00', '2017-09-18 00:00:00'),
(41, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-19 00:00:00', 3898.934732, 51729992.16, '2017-09-19 00:00:00', '2017-09-19 00:00:00'),
(42, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-20 00:00:00', 3858.020951, 51213394.54, '2017-09-20 00:00:00', '2017-09-20 00:00:00'),
(43, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-21 00:00:00', 3628.058588, 48264993.7, '2017-09-21 00:00:00', '2017-09-21 00:00:00'),
(44, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-22 00:00:00', 3622.183039, 48234130.4, '2017-09-22 00:00:00', '2017-09-22 00:00:00'),
(45, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-23 00:00:00', 3763.411406, 50075055.66, '2017-09-23 00:00:00', '2017-09-23 00:00:00'),
(46, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-24 00:00:00', 3672.30508, 48907723.5, '2017-09-24 00:00:00', '2017-09-24 00:00:00'),
(47, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-25 00:00:00', 3866.705153, 51540396.02, '2017-09-25 00:00:00', '2017-09-25 00:00:00'),
(48, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-26 00:00:00', 3852.935205, 51473335.97, '2017-09-26 00:00:00', '2017-09-26 00:00:00'),
(49, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-27 00:00:00', 4134.212415, 55467396.67, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
(50, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-28 00:00:00', 4134.884951, 55746784.52, '2017-09-28 00:00:00', '2017-09-28 00:00:00'),
(51, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-29 00:00:00', 4130.415246, 55674818.03, '2017-09-29 00:00:00', '2017-09-29 00:00:00'),
(52, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-30 00:00:00', 4297.79117, 57908206.71, '2017-09-30 00:00:00', '2017-09-30 00:00:00'),
(53, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-01 00:00:00', 4347.578735, 58684308.23, '2017-10-01 00:00:00', '2017-10-01 00:00:00'),
(54, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-02 00:00:00', 4383.325497, 59285732.68, '2017-10-02 00:00:00', '2017-10-02 00:00:00'),
(55, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-03 00:00:00', 4319.069212, 58480158.08, '2017-10-03 00:00:00', '2017-10-03 00:00:00'),
(56, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-04 00:00:00', 4231.464187, 57118844.59, '2017-10-04 00:00:00', '2017-10-04 00:00:00'),
(57, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-05 00:00:00', 4290.380404, 57768955.15, '2017-10-05 00:00:00', '2017-10-05 00:00:00'),
(58, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-06 00:00:00', 4347.54724, 58686410.85, '2017-10-06 00:00:00', '2017-10-06 00:00:00'),
(59, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-07 00:00:00', 4405.016201, 59496159.01, '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(60, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-08 00:00:00', 4562.321931, 61589967.35, '2017-10-08 00:00:00', '2017-10-08 00:00:00'),
(61, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-09 00:00:00', 4758.72165, 64252210.52, '2017-10-09 00:00:00', '2017-10-09 00:00:00'),
(62, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-10 00:00:00', 4769.477347, 64439265.98, '2017-10-10 00:00:00', '2017-10-10 00:00:00'),
(63, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-11 00:00:00', 4807.925895, 64968399.22, '2017-10-11 00:00:00', '2017-10-11 00:00:00'),
(64, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-12 00:00:00', 5331.619302, 72013937.63, '2017-10-12 00:00:00', '2017-10-12 00:00:00'),
(65, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-13 00:00:00', 5610.493162, 75742514.26, '2017-10-13 00:00:00', '2017-10-13 00:00:00'),
(66, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-14 00:00:00', 5679.216222, 76655924.07, '2017-10-14 00:00:00', '2017-10-14 00:00:00'),
(67, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-15 00:00:00', 5684.047104, 76733618.1, '2017-10-15 00:00:00', '2017-10-15 00:00:00'),
(68, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-16 00:00:00', 5728.932751, 77268601.32, '2017-10-16 00:00:00', '2017-10-16 00:00:00'),
(69, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-17 00:00:00', 5643.859077, 76186982.51, '2017-10-17 00:00:00', '2017-10-17 00:00:00'),
(70, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-18 00:00:00', 5592.782224, 75557071.28, '2017-10-18 00:00:00', '2017-10-18 00:00:00'),
(71, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-19 00:00:00', 5696.380141, 76968045.66, '2017-10-19 00:00:00', '2017-10-19 00:00:00'),
(72, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-20 00:00:00', 5952.771359, 80431346.72, '2017-10-20 00:00:00', '2017-10-20 00:00:00'),
(73, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-21 00:00:00', 6043.966731, 81663540.29, '2017-10-21 00:00:00', '2017-10-21 00:00:00'),
(74, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-22 00:00:00', 6003.464019, 81116284.65, '2017-10-22 00:00:00', '2017-10-22 00:00:00'),
(75, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-23 00:00:00', 5959.983041, 80622161, '2017-10-23 00:00:00', '2017-10-23 00:00:00'),
(76, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-24 00:00:00', 5550.081585, 75044022.4, '2017-10-24 00:00:00', '2017-10-24 00:00:00'),
(77, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-25 00:00:00', 5704.874807, 77308165.98, '2017-10-25 00:00:00', '2017-10-25 00:00:00'),
(78, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-26 00:00:00', 5883.053184, 79751139.89, '2017-10-26 00:00:00', '2017-10-26 00:00:00'),
(79, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-27 00:00:00', 5775.516665, 78399250.7, '2017-10-27 00:00:00', '2017-10-27 00:00:00'),
(80, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-28 00:00:00', 5734.307454, 77839859.83, '2017-10-28 00:00:00', '2017-10-28 00:00:00'),
(81, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-29 00:00:00', 6123.549771, 83123595.96, '2017-10-29 00:00:00', '2017-10-29 00:00:00'),
(82, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-30 00:00:00', 6104.388709, 82741408, '2017-10-30 00:00:00', '2017-10-30 00:00:00'),
(83, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-31 00:00:00', 6368.651641, 86239483.11, '2017-10-31 00:00:00', '2017-10-31 00:00:00'),
(84, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-01 00:00:00', 6714.788987, 90994881.33, '2017-11-01 00:00:00', '2017-11-01 00:00:00'),
(85, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-02 00:00:00', 7059.793861, 95548991.86, '2017-11-02 00:00:00', '2017-11-02 00:00:00'),
(86, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-03 00:00:00', 7234.738382, 97649048.85, '2017-11-03 00:00:00', '2017-11-03 00:00:00'),
(87, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-04 00:00:00', 7390.535227, 99751877.3, '2017-11-04 00:00:00', '2017-11-04 00:00:00'),
(88, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-05 00:00:00', 7416.267951, 100104142.4, '2017-11-05 00:00:00', '2017-11-05 00:00:00'),
(89, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-06 00:00:00', 7103.046081, 95999420.21, '2017-11-06 00:00:00', '2017-11-06 00:00:00'),
(90, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-07 00:00:00', 7166.741372, 96813693.95, '2017-11-07 00:00:00', '2017-11-07 00:00:00'),
(91, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-08 00:00:00', 7461.824435, 100804870.9, '2017-11-08 00:00:00', '2017-11-08 00:00:00'),
(92, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-09 00:00:00', 7186.292775, 97080204.34, '2017-11-09 00:00:00', '2017-11-09 00:00:00'),
(93, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-10 00:00:00', 6656.839694, 90027854.77, '2017-11-10 00:00:00', '2017-11-10 00:00:00'),
(94, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-11 00:00:00', 6365.397852, 86086362.27, '2017-11-11 00:00:00', '2017-11-11 00:00:00'),
(95, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-12 00:00:00', 5866.513129, 79343299.72, '2017-11-12 00:00:00', '2017-11-12 00:00:00'),
(96, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-13 00:00:00', 6423.091402, 86932774.22, '2017-11-13 00:00:00', '2017-11-13 00:00:00'),
(97, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-14 00:00:00', 6652.21678, 90031634.38, '2017-11-14 00:00:00', '2017-11-14 00:00:00'),
(98, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-15 00:00:00', 7297.668836, 98686959.83, '2017-11-15 00:00:00', '2017-11-15 00:00:00'),
(99, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-16 00:00:00', 7814.944404, 105705563.6, '2017-11-16 00:00:00', '2017-11-16 00:00:00'),
(100, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-17 00:00:00', 7783.542465, 105219847.3, '2017-11-17 00:00:00', '2017-11-17 00:00:00'),
(101, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-18 00:00:00', 7827.631469, 105815853.4, '2017-11-18 00:00:00', '2017-11-18 00:00:00'),
(102, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-19 00:00:00', 8011.14743, 108302008.2, '2017-11-19 00:00:00', '2017-11-19 00:00:00'),
(103, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-20 00:00:00', 8220.509966, 111150173.3, '2017-11-20 00:00:00', '2017-11-20 00:00:00'),
(104, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-21 00:00:00', 8114.13368, 109811587.7, '2017-11-21 00:00:00', '2017-11-21 00:00:00'),
(105, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-22 00:00:00', 8257.123895, 111675222.8, '2017-11-22 00:00:00', '2017-11-22 00:00:00'),
(106, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-23 00:00:00', 8117.664348, 109670535.1, '2017-11-23 00:00:00', '2017-11-23 00:00:00'),
(107, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-24 00:00:00', 8278.128436, 111726594.7, '2017-11-24 00:00:00', '2017-11-24 00:00:00'),
(108, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-25 00:00:00', 8743.159378, 118006922.8, '2017-11-25 00:00:00', '2017-11-25 00:00:00'),
(109, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-26 00:00:00', 9342.988641, 125881764.7, '2017-11-26 00:00:00', '2017-11-26 00:00:00'),
(110, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-27 00:00:00', 9831.40293, 132400533.6, '2017-11-27 00:00:00', '2017-11-27 00:00:00'),
(111, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-28 00:00:00', 10257.06742, 138552528.5, '2017-11-28 00:00:00', '2017-11-28 00:00:00'),
(112, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-29 00:00:00', 9875.892308, 133384788, '2017-11-29 00:00:00', '2017-11-29 00:00:00'),
(113, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-30 00:00:00', 10406.18772, 140713509.9, '2017-11-30 00:00:00', '2017-11-30 00:00:00'),
(114, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-01 00:00:00', 10995.72355, 148674276.5, '2017-12-01 00:00:00', '2017-12-01 00:00:00'),
(115, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-02 00:00:00', 11162.54503, 150929886.4, '2017-12-02 00:00:00', '2017-12-02 00:00:00'),
(116, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-03 00:00:00', 11256.70183, 152195485.4, '2017-12-03 00:00:00', '2017-12-03 00:00:00'),
(117, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-04 00:00:00', 11634.98496, 157329428.8, '2017-12-04 00:00:00', '2017-12-04 00:00:00'),
(118, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-05 00:00:00', 12174.25374, 164560603.9, '2017-12-05 00:00:00', '2017-12-05 00:00:00'),
(119, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-06 00:00:00', 13876.47358, 187741226.3, '2017-12-06 00:00:00', '2017-12-06 00:00:00'),
(120, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-07 00:00:00', 18491.18155, 250505731.4, '2017-12-07 00:00:00', '2017-12-07 00:00:00'),
(121, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-08 00:00:00', 16908.00495, 229007226.3, '2017-12-08 00:00:00', '2017-12-08 00:00:00'),
(122, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-09 00:00:00', 15266.42639, 206773180.7, '2017-12-09 00:00:00', '2017-12-09 00:00:00'),
(123, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-10 00:00:00', 15808.5099, 214115326.7, '2017-12-10 00:00:00', '2017-12-10 00:00:00'),
(124, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-11 00:00:00', 17106.50515, 231738540.4, '2017-12-11 00:00:00', '2017-12-11 00:00:00'),
(125, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-12 00:00:00', 17249.92021, 233783200.1, '2017-12-12 00:00:00', '2017-12-12 00:00:00'),
(126, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-13 00:00:00', 16525.04449, 224225155.5, '2017-12-13 00:00:00', '2017-12-13 00:00:00'),
(127, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-14 00:00:00', 16865.36166, 228744472.6, '2017-12-14 00:00:00', '2017-12-14 00:00:00'),
(128, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-15 00:00:00', 17978.63056, 243807753.1, '2017-12-15 00:00:00', '2017-12-15 00:00:00'),
(129, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-16 00:00:00', 19665.39493, 266681922, '2017-12-16 00:00:00', '2017-12-16 00:00:00'),
(130, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-17 00:00:00', 19423.58015, 263402677.9, '2017-12-17 00:00:00', '2017-12-17 00:00:00'),
(131, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-18 00:00:00', 19188.05396, 260155702.7, '2017-12-18 00:00:00', '2017-12-18 00:00:00'),
(132, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-19 00:00:00', 18174.18676, 246784700.6, '2017-12-19 00:00:00', '2017-12-19 00:00:00'),
(133, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-20 00:00:00', 17059.88835, 231625601.8, '2017-12-20 00:00:00', '2017-12-20 00:00:00'),
(134, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-21 00:00:00', 16355.23823, 221793395.2, '2017-12-21 00:00:00', '2017-12-21 00:00:00'),
(135, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-22 00:00:00', 14084.82493, 190941569.7, '2017-12-22 00:00:00', '2017-12-22 00:00:00'),
(136, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-23 00:00:00', 15241.91647, 206636725.3, '2017-12-23 00:00:00', '2017-12-23 00:00:00'),
(137, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-24 00:00:00', 14451.11455, 195915716.6, '2017-12-24 00:00:00', '2017-12-24 00:00:00'),
(138, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-25 00:00:00', 14302.75371, 193861460.4, '2017-12-25 00:00:00', '2017-12-25 00:00:00'),
(139, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-26 00:00:00', 16616.68206, 225277378, '2017-12-26 00:00:00', '2017-12-26 00:00:00'),
(140, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-27 00:00:00', 16373.08108, 222006052.3, '2017-12-27 00:00:00', '2017-12-27 00:00:00'),
(141, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-28 00:00:00', 15067.8995, 204280053.1, '2017-12-28 00:00:00', '2017-12-28 00:00:00'),
(142, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-29 00:00:00', 15096.55944, 204668768.2, '2017-12-29 00:00:00', '2017-12-29 00:00:00'),
(143, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-30 00:00:00', 13620.36187, 184652192.2, '2017-12-30 00:00:00', '2017-12-30 00:00:00'),
(144, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-31 00:00:00', 14839.59079, 201171470.2, '2017-12-31 00:00:00', '2017-12-31 00:00:00'),
(145, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-01 00:00:00', 14093.60683, 191157892.1, '2018-01-01 00:00:00', '2018-01-01 00:00:00'),
(146, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-02 00:00:00', 15321.93285, 207302485.2, '2018-01-02 00:00:00', '2018-01-02 00:00:00'),
(147, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-03 00:00:00', 15583.88554, 210169175.9, '2018-01-03 00:00:00', '2018-01-03 00:00:00'),
(148, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-04 00:00:00', 15976.36519, 214684508.2, '2018-01-04 00:00:00', '2018-01-04 00:00:00'),
(149, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-05 00:00:00', 18336.92298, 246300904.6, '2018-01-05 00:00:00', '2018-01-05 00:00:00'),
(150, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-06 00:00:00', 18343.66249, 246542442.1, '2018-01-06 00:00:00', '2018-01-06 00:00:00'),
(151, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-07 00:00:00', 17039.87391, 228890347.1, '2018-01-07 00:00:00', '2018-01-07 00:00:00'),
(152, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-08 00:00:00', 15900.36502, 213724197.2, '2018-01-08 00:00:00', '2018-01-08 00:00:00'),
(153, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-09 00:00:00', 15604.72341, 209917817.3, '2018-01-09 00:00:00', '2018-01-09 00:00:00'),
(154, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-10 00:00:00', 15509.27013, 208610497, '2018-01-10 00:00:00', '2018-01-10 00:00:00'),
(155, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-11 00:00:00', 14050.56961, 188730022.4, '2018-01-11 00:00:00', '2018-01-11 00:00:00'),
(156, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-12 00:00:00', 14759.29463, 197902913.3, '2018-01-12 00:00:00', '2018-01-12 00:00:00'),
(157, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-13 00:00:00', 15193.3149, 203722559.6, '2018-01-13 00:00:00', '2018-01-13 00:00:00'),
(158, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-14 00:00:00', 14476.58897, 194126675.3, '2018-01-14 00:00:00', '2018-01-14 00:00:00'),
(159, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-15 00:00:00', 14411.99771, 193145230, '2018-01-15 00:00:00', '2018-01-15 00:00:00'),
(160, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-16 00:00:00', 11723.91352, 157137925.4, '2018-01-16 00:00:00', '2018-01-16 00:00:00'),
(161, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-17 00:00:00', 11415.39284, 153105500.5, '2018-01-17 00:00:00', '2018-01-17 00:00:00'),
(162, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-18 00:00:00', 11569.42499, 155113562.9, '2018-01-18 00:00:00', '2018-01-18 00:00:00'),
(163, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-19 00:00:00', 11758.46933, 157151529.1, '2018-01-19 00:00:00', '2018-01-19 00:00:00'),
(164, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-20 00:00:00', 13260.27119, 177551016.6, '2018-01-20 00:00:00', '2018-01-20 00:00:00'),
(165, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-21 00:00:00', 11703.50486, 156424733.2, '2018-01-21 00:00:00', '2018-01-21 00:00:00'),
(166, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-22 00:00:00', 10991.59501, 147162415.2, '2018-01-22 00:00:00', '2018-01-22 00:00:00'),
(167, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-23 00:00:00', 10894.00091, 145681459.6, '2018-01-23 00:00:00', '2018-01-23 00:00:00'),
(168, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-24 00:00:00', 11277.11597, 150991530.1, '2018-01-24 00:00:00', '2018-01-24 00:00:00'),
(169, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-25 00:00:00', 11225.25446, 150162443, '2018-01-25 00:00:00', '2018-01-25 00:00:00'),
(170, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-26 00:00:00', 11044.90724, 147557731.4, '2018-01-26 00:00:00', '2018-01-26 00:00:00'),
(171, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-27 00:00:00', 11456.21351, 153052700.2, '2018-01-27 00:00:00', '2018-01-27 00:00:00'),
(172, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-28 00:00:00', 11665.69693, 155254871.9, '2018-01-28 00:00:00', '2018-01-28 00:00:00'),
(173, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-29 00:00:00', 11157.66389, 148923597, '2018-01-29 00:00:00', '2018-01-29 00:00:00'),
(174, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-30 00:05:19', 11095.21069, 147985739.2, '2018-01-30 00:05:00', '2018-01-30 00:05:00'),
(175, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-31 00:00:00', 9989.689777, 133944349.8, '2018-01-31 00:00:00', '2018-01-31 00:00:00'),
(176, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-01 00:00:00', 10114.49509, 135467261.8, '2018-02-01 00:00:00', '2018-02-01 00:00:00'),
(177, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-02 00:00:00', 9070.555449, 121649703.2, '2018-02-02 00:00:00', '2018-02-02 00:00:00'),
(178, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-03 00:00:00', 8830.16351, 118571518, '2018-02-03 00:00:00', '2018-02-03 00:00:00'),
(179, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-04 00:00:00', 8994.914866, 121000390.3, '2018-02-04 00:00:00', '2018-02-04 00:00:00'),
(180, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-05 00:00:00', 8315.517491, 111850639.9, '2018-02-05 00:00:00', '2018-02-05 00:00:00'),
(181, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-06 00:00:00', 6852.052701, 92492589.95, '2018-02-06 00:00:00', '2018-02-06 00:00:00'),
(182, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-07 00:00:00', 7711.220329, 104350519.9, '2018-02-07 00:00:00', '2018-02-07 00:00:00'),
(183, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-08 00:05:28', 7611.610278, 103183832.9, '2018-02-08 00:05:00', '2018-02-08 00:05:00'),
(184, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-09 00:00:00', 8208.572084, 111548622.3, '2018-02-09 00:00:00', '2018-02-09 00:00:00'),
(185, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-10 00:00:00', 8650.71675, 117896541.2, '2018-02-10 00:00:00', '2018-02-10 00:00:00'),
(186, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-11 00:00:00', 8574.677638, 116878360, '2018-02-11 00:00:00', '2018-02-11 00:00:00'),
(187, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-12 00:00:00', 8168.63778, 111262292.3, '2018-02-12 00:00:00', '2018-02-12 00:00:00'),
(188, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-13 00:00:00', 8911.398574, 121509541.1, '2018-02-13 00:00:00', '2018-02-13 00:00:00'),
(189, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-14 00:00:00', 8518.269076, 116231384.8, '2018-02-14 00:00:00', '2018-02-14 00:00:00'),
(190, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-15 00:00:00', 9428.025607, 128512238.8, '2018-02-15 00:00:00', '2018-02-15 00:00:00'),
(191, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-16 00:00:00', 10112.58014, 137327629.4, '2018-02-16 00:00:00', '2018-02-16 00:00:00'),
(192, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-17 00:00:00', 10155.27706, 137531259.9, '2018-02-17 00:00:00', '2018-02-17 00:00:00'),
(193, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-18 00:00:00', 11006.64769, 149050711.6, '2018-02-18 00:00:00', '2018-02-18 00:00:00'),
(194, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-19 00:00:00', 10523.42931, 142513541.4, '2018-02-19 00:00:00', '2018-02-19 00:00:00'),
(195, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-20 00:00:00', 11103.09004, 150502440.9, '2018-02-20 00:00:00', '2018-02-20 00:00:00'),
(196, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-21 00:00:00', 11502.37705, 156365410.3, '2018-02-21 00:00:00', '2018-02-21 00:00:00'),
(197, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-22 00:00:00', 9973.59212, 136218129.4, '2018-02-22 00:00:00', '2018-02-22 00:00:00'),
(198, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-23 00:00:00', 10032.86311, 137027645.5, '2018-02-23 00:00:00', '2018-02-23 00:00:00'),
(199, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-24 00:00:00', 10301.88361, 140592008.5, '2018-02-24 00:00:00', '2018-02-24 00:00:00'),
(200, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-25 00:00:00', 9742.62819, 132959730.2, '2018-02-25 00:00:00', '2018-02-25 00:00:00'),
(201, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-26 00:00:00', 9699.517182, 132377851.4, '2018-02-26 00:00:00', '2018-02-26 00:00:00'),
(202, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-27 00:00:00', 10355.57813, 141264381.6, '2018-02-27 00:00:00', '2018-02-27 00:00:00'),
(203, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-28 00:00:00', 10709.38843, 146383688.7, '2018-02-28 00:00:00', '2018-02-28 00:00:00'),
(204, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-03-01 00:00:00', 10346.66493, 141992387.6, '2018-03-01 00:00:00', '2018-03-01 00:00:00'),
(205, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-10 00:00:00', 3367.905387, 44990164.11, '2017-08-10 00:00:00', '2017-08-10 00:00:00'),
(206, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-11 00:00:00', 3562.587663, 47588155.35, '2017-08-11 00:00:00', '2017-08-11 00:00:00'),
(207, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-12 00:00:00', 3800.140625, 50761328.43, '2017-08-12 00:00:00', '2017-08-12 00:00:00'),
(208, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-13 00:00:00', 4023.254522, 53737604.84, '2017-08-13 00:00:00', '2017-08-13 00:00:00'),
(209, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-14 00:00:00', 4175.695291, 55733005.05, '2017-08-14 00:00:00', '2017-08-14 00:00:00'),
(210, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-15 00:00:00', 4149.308759, 55432690.37, '2017-08-15 00:00:00', '2017-08-15 00:00:00'),
(211, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-16 00:00:00', 4262.558791, 39538784.92, '2017-08-16 00:00:00', '2017-08-16 00:00:00'),
(212, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-17 00:00:00', 4286.917435, 39764731.63, '2017-08-17 00:00:00', '2017-08-17 00:00:00'),
(213, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-18 00:00:00', 4097.685802, 54747131.16, '2017-08-18 00:00:00', '2017-08-18 00:00:00'),
(214, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-19 00:00:00', 4115.211988, 54981289.77, '2017-08-19 00:00:00', '2017-08-19 00:00:00'),
(215, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-20 00:00:00', 4001.228632, 53462416.37, '2017-08-20 00:00:00', '2017-08-20 00:00:00'),
(216, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-21 00:00:00', 3935.229933, 52531136.79, '2017-08-21 00:00:00', '2017-08-21 00:00:00'),
(217, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-22 00:00:00', 4008.416685, 53486592.49, '2017-08-22 00:00:00', '2017-08-22 00:00:00'),
(218, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-23 00:00:00', 4069.080239, 54318505.24, '2017-08-23 00:00:00', '2017-08-23 00:00:00'),
(219, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-24 00:00:00', 4167.289177, 55616992.51, '2017-08-24 00:00:00', '2017-08-24 00:00:00'),
(220, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-25 00:00:00', 4199.892032, 56046721.51, '2017-08-25 00:00:00', '2017-08-25 00:00:00'),
(221, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-26 00:00:00', 4123.513371, 55001595.08, '2017-08-26 00:00:00', '2017-08-26 00:00:00'),
(222, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-27 00:00:00', 4116.468739, 54769236.31, '2017-08-27 00:00:00', '2017-08-27 00:00:00'),
(223, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-28 00:00:00', 4216.242773, 56063108.96, '2017-08-28 00:00:00', '2017-08-28 00:00:00'),
(224, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-29 00:00:00', 4394.063436, 58590486.25, '2017-08-29 00:00:00', '2017-08-29 00:00:00'),
(225, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-30 00:00:00', 4553.806527, 60762239.49, '2017-08-30 00:00:00', '2017-08-30 00:00:00'),
(226, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-08-31 00:00:00', 4702.938163, 62742074.42, '2017-08-31 00:00:00', '2017-08-31 00:00:00'),
(227, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-01 00:00:00', 4863.193049, 64836069.73, '2017-09-01 00:00:00', '2017-09-01 00:00:00'),
(228, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-02 00:00:00', 4556.597777, 60816953.6, '2017-09-02 00:00:00', '2017-09-02 00:00:00'),
(229, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-03 00:00:00', 4632.462331, 61829518.52, '2017-09-03 00:00:00', '2017-09-03 00:00:00'),
(230, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-04 00:00:00', 4317.185188, 57650292.75, '2017-09-04 00:00:00', '2017-09-04 00:00:00'),
(231, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-05 00:00:00', 4447.875592, 59344634.1, '2017-09-05 00:00:00', '2017-09-05 00:00:00'),
(232, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-06 00:00:00', 4592.250278, 61228086.72, '2017-09-06 00:00:00', '2017-09-06 00:00:00'),
(233, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-07 00:00:00', 4584.820275, 61044080.14, '2017-09-07 00:00:00', '2017-09-07 00:00:00'),
(234, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-08 00:00:00', 4285.207939, 56697088.39, '2017-09-08 00:00:00', '2017-09-08 00:00:00'),
(235, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-09 00:00:00', 4245.607341, 56031776.65, '2017-09-09 00:00:00', '2017-09-09 00:00:00'),
(236, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-10 00:00:00', 4132.664642, 54586500.25, '2017-09-10 00:00:00', '2017-09-10 00:00:00'),
(237, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-11 00:00:00', 4164.976212, 54918848.46, '2017-09-11 00:00:00', '2017-09-11 00:00:00'),
(238, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-12 00:00:00', 4130.956285, 54489833.25, '2017-09-12 00:00:00', '2017-09-12 00:00:00'),
(239, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-13 00:00:00', 3883.652001, 51263194.11, '2017-09-13 00:00:00', '2017-09-13 00:00:00'),
(240, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-14 00:00:00', 3100.668155, 41049593.99, '2017-09-14 00:00:00', '2017-09-14 00:00:00'),
(241, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-15 00:00:00', 3587.943122, 47524079.32, '2017-09-15 00:00:00', '2017-09-15 00:00:00'),
(242, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-16 00:00:00', 3606.275197, 47750493.39, '2017-09-16 00:00:00', '2017-09-16 00:00:00'),
(243, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-17 00:00:00', 3553.432316, 47048034.42, '2017-09-17 00:00:00', '2017-09-17 00:00:00'),
(244, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-18 00:00:00', 4012.285825, 53162059.93, '2017-09-18 00:00:00', '2017-09-18 00:00:00'),
(245, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-19 00:00:00', 3898.934732, 51729992.16, '2017-09-19 00:00:00', '2017-09-19 00:00:00'),
(246, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-20 00:00:00', 3858.020951, 51213394.54, '2017-09-20 00:00:00', '2017-09-20 00:00:00'),
(247, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-21 00:00:00', 3628.058588, 48264993.7, '2017-09-21 00:00:00', '2017-09-21 00:00:00'),
(248, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-22 00:00:00', 3622.183039, 48234130.4, '2017-09-22 00:00:00', '2017-09-22 00:00:00'),
(249, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-23 00:00:00', 3763.411406, 50075055.66, '2017-09-23 00:00:00', '2017-09-23 00:00:00'),
(250, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-24 00:00:00', 3672.30508, 48907723.5, '2017-09-24 00:00:00', '2017-09-24 00:00:00'),
(251, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-25 00:00:00', 3866.705153, 51540396.02, '2017-09-25 00:00:00', '2017-09-25 00:00:00'),
(252, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-26 00:00:00', 3852.935205, 51473335.97, '2017-09-26 00:00:00', '2017-09-26 00:00:00'),
(253, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-27 00:00:00', 4134.212415, 55467396.67, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
(254, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-28 00:00:00', 4134.884951, 55746784.52, '2017-09-28 00:00:00', '2017-09-28 00:00:00'),
(255, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-29 00:00:00', 4130.415246, 55674818.03, '2017-09-29 00:00:00', '2017-09-29 00:00:00'),
(256, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-09-30 00:00:00', 4297.79117, 57908206.71, '2017-09-30 00:00:00', '2017-09-30 00:00:00'),
(257, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-01 00:00:00', 4347.578735, 58684308.23, '2017-10-01 00:00:00', '2017-10-01 00:00:00'),
(258, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-02 00:00:00', 4383.325497, 59285732.68, '2017-10-02 00:00:00', '2017-10-02 00:00:00'),
(259, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-03 00:00:00', 4319.069212, 58480158.08, '2017-10-03 00:00:00', '2017-10-03 00:00:00'),
(260, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-04 00:00:00', 4231.464187, 57118844.59, '2017-10-04 00:00:00', '2017-10-04 00:00:00'),
(261, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-05 00:00:00', 4290.380404, 57768955.15, '2017-10-05 00:00:00', '2017-10-05 00:00:00'),
(262, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-06 00:00:00', 4347.54724, 58686410.85, '2017-10-06 00:00:00', '2017-10-06 00:00:00'),
(263, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-07 00:00:00', 4405.016201, 59496159.01, '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(264, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-08 00:00:00', 4562.321931, 61589967.35, '2017-10-08 00:00:00', '2017-10-08 00:00:00'),
(265, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-09 00:00:00', 4758.72165, 64252210.52, '2017-10-09 00:00:00', '2017-10-09 00:00:00'),
(266, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-10 00:00:00', 4769.477347, 64439265.98, '2017-10-10 00:00:00', '2017-10-10 00:00:00'),
(267, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-11 00:00:00', 4807.925895, 64968399.22, '2017-10-11 00:00:00', '2017-10-11 00:00:00'),
(268, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-12 00:00:00', 5331.619302, 72013937.63, '2017-10-12 00:00:00', '2017-10-12 00:00:00'),
(269, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-13 00:00:00', 5610.493162, 75742514.26, '2017-10-13 00:00:00', '2017-10-13 00:00:00'),
(270, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-14 00:00:00', 5679.216222, 76655924.07, '2017-10-14 00:00:00', '2017-10-14 00:00:00'),
(271, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-15 00:00:00', 5684.047104, 76733618.1, '2017-10-15 00:00:00', '2017-10-15 00:00:00'),
(272, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-16 00:00:00', 5728.932751, 77268601.32, '2017-10-16 00:00:00', '2017-10-16 00:00:00'),
(273, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-17 00:00:00', 5643.859077, 76186982.51, '2017-10-17 00:00:00', '2017-10-17 00:00:00'),
(274, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-18 00:00:00', 5592.782224, 75557071.28, '2017-10-18 00:00:00', '2017-10-18 00:00:00'),
(275, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-19 00:00:00', 5696.380141, 76968045.66, '2017-10-19 00:00:00', '2017-10-19 00:00:00'),
(276, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-20 00:00:00', 5952.771359, 80431346.72, '2017-10-20 00:00:00', '2017-10-20 00:00:00'),
(277, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-21 00:00:00', 6043.966731, 81663540.29, '2017-10-21 00:00:00', '2017-10-21 00:00:00'),
(278, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-22 00:00:00', 6003.464019, 81116284.65, '2017-10-22 00:00:00', '2017-10-22 00:00:00'),
(279, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-23 00:00:00', 5959.983041, 80622161, '2017-10-23 00:00:00', '2017-10-23 00:00:00'),
(280, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-24 00:00:00', 5550.081585, 75044022.4, '2017-10-24 00:00:00', '2017-10-24 00:00:00'),
(281, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-25 00:00:00', 5704.874807, 77308165.98, '2017-10-25 00:00:00', '2017-10-25 00:00:00'),
(282, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-26 00:00:00', 5883.053184, 79751139.89, '2017-10-26 00:00:00', '2017-10-26 00:00:00'),
(283, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-27 00:00:00', 5775.516665, 78399250.7, '2017-10-27 00:00:00', '2017-10-27 00:00:00'),
(284, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-28 00:00:00', 5734.307454, 77839859.83, '2017-10-28 00:00:00', '2017-10-28 00:00:00'),
(285, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-29 00:00:00', 6123.549771, 83123595.96, '2017-10-29 00:00:00', '2017-10-29 00:00:00'),
(286, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-30 00:00:00', 6104.388709, 82741408, '2017-10-30 00:00:00', '2017-10-30 00:00:00'),
(287, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-10-31 00:00:00', 6368.651641, 86239483.11, '2017-10-31 00:00:00', '2017-10-31 00:00:00'),
(288, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-01 00:00:00', 6714.788987, 90994881.33, '2017-11-01 00:00:00', '2017-11-01 00:00:00'),
(289, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-02 00:00:00', 7059.793861, 95548991.86, '2017-11-02 00:00:00', '2017-11-02 00:00:00'),
(290, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-03 00:00:00', 7234.738382, 97649048.85, '2017-11-03 00:00:00', '2017-11-03 00:00:00'),
(291, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-04 00:00:00', 7390.535227, 99751877.3, '2017-11-04 00:00:00', '2017-11-04 00:00:00'),
(292, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-05 00:00:00', 7416.267951, 100104142.4, '2017-11-05 00:00:00', '2017-11-05 00:00:00'),
(293, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-06 00:00:00', 7103.046081, 95999420.21, '2017-11-06 00:00:00', '2017-11-06 00:00:00'),
(294, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-07 00:00:00', 7166.741372, 96813693.95, '2017-11-07 00:00:00', '2017-11-07 00:00:00'),
(295, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-08 00:00:00', 7461.824435, 100804870.9, '2017-11-08 00:00:00', '2017-11-08 00:00:00'),
(296, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-09 00:00:00', 7186.292775, 97080204.34, '2017-11-09 00:00:00', '2017-11-09 00:00:00'),
(297, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-10 00:00:00', 6656.839694, 90027854.77, '2017-11-10 00:00:00', '2017-11-10 00:00:00'),
(298, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-11 00:00:00', 6365.397852, 86086362.27, '2017-11-11 00:00:00', '2017-11-11 00:00:00'),
(299, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-12 00:00:00', 5866.513129, 79343299.72, '2017-11-12 00:00:00', '2017-11-12 00:00:00'),
(300, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-13 00:00:00', 6423.091402, 86932774.22, '2017-11-13 00:00:00', '2017-11-13 00:00:00'),
(301, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-14 00:00:00', 6652.21678, 90031634.38, '2017-11-14 00:00:00', '2017-11-14 00:00:00'),
(302, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-15 00:00:00', 7297.668836, 98686959.83, '2017-11-15 00:00:00', '2017-11-15 00:00:00'),
(303, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-16 00:00:00', 7814.944404, 105705563.6, '2017-11-16 00:00:00', '2017-11-16 00:00:00'),
(304, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-17 00:00:00', 7783.542465, 105219847.3, '2017-11-17 00:00:00', '2017-11-17 00:00:00'),
(305, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-18 00:00:00', 7827.631469, 105815853.4, '2017-11-18 00:00:00', '2017-11-18 00:00:00'),
(306, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-19 00:00:00', 8011.14743, 108302008.2, '2017-11-19 00:00:00', '2017-11-19 00:00:00'),
(307, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-20 00:00:00', 8220.509966, 111150173.3, '2017-11-20 00:00:00', '2017-11-20 00:00:00'),
(308, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-21 00:00:00', 8114.13368, 109811587.7, '2017-11-21 00:00:00', '2017-11-21 00:00:00'),
(309, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-22 00:00:00', 8257.123895, 111675222.8, '2017-11-22 00:00:00', '2017-11-22 00:00:00'),
(310, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-23 00:00:00', 8117.664348, 109670535.1, '2017-11-23 00:00:00', '2017-11-23 00:00:00'),
(311, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-24 00:00:00', 8278.128436, 111726594.7, '2017-11-24 00:00:00', '2017-11-24 00:00:00'),
(312, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-25 00:00:00', 8743.159378, 118006922.8, '2017-11-25 00:00:00', '2017-11-25 00:00:00'),
(313, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-26 00:00:00', 9342.988641, 125881764.7, '2017-11-26 00:00:00', '2017-11-26 00:00:00'),
(314, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-27 00:00:00', 9831.40293, 132400533.6, '2017-11-27 00:00:00', '2017-11-27 00:00:00'),
(315, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-28 00:00:00', 10257.06742, 138552528.5, '2017-11-28 00:00:00', '2017-11-28 00:00:00'),
(316, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-29 00:00:00', 9875.892308, 133384788, '2017-11-29 00:00:00', '2017-11-29 00:00:00'),
(317, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-11-30 00:00:00', 10406.18772, 140713509.9, '2017-11-30 00:00:00', '2017-11-30 00:00:00'),
(318, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-01 00:00:00', 10995.72355, 148674276.5, '2017-12-01 00:00:00', '2017-12-01 00:00:00'),
(319, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-02 00:00:00', 11162.54503, 150929886.4, '2017-12-02 00:00:00', '2017-12-02 00:00:00'),
(320, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-03 00:00:00', 11256.70183, 152195485.4, '2017-12-03 00:00:00', '2017-12-03 00:00:00'),
(321, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-04 00:00:00', 11634.98496, 157329428.8, '2017-12-04 00:00:00', '2017-12-04 00:00:00'),
(322, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-05 00:00:00', 12174.25374, 164560603.9, '2017-12-05 00:00:00', '2017-12-05 00:00:00'),
(323, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-06 00:00:00', 13876.47358, 187741226.3, '2017-12-06 00:00:00', '2017-12-06 00:00:00'),
(324, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-07 00:00:00', 18491.18155, 250505731.4, '2017-12-07 00:00:00', '2017-12-07 00:00:00'),
(325, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-08 00:00:00', 16908.00495, 229007226.3, '2017-12-08 00:00:00', '2017-12-08 00:00:00'),
(326, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-09 00:00:00', 15266.42639, 206773180.7, '2017-12-09 00:00:00', '2017-12-09 00:00:00'),
(327, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-10 00:00:00', 15808.5099, 214115326.7, '2017-12-10 00:00:00', '2017-12-10 00:00:00'),
(328, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-11 00:00:00', 17106.50515, 231738540.4, '2017-12-11 00:00:00', '2017-12-11 00:00:00'),
(329, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-12 00:00:00', 17249.92021, 233783200.1, '2017-12-12 00:00:00', '2017-12-12 00:00:00'),
(330, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-13 00:00:00', 16525.04449, 224225155.5, '2017-12-13 00:00:00', '2017-12-13 00:00:00'),
(331, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-14 00:00:00', 16865.36166, 228744472.6, '2017-12-14 00:00:00', '2017-12-14 00:00:00'),
(332, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-15 00:00:00', 17978.63056, 243807753.1, '2017-12-15 00:00:00', '2017-12-15 00:00:00'),
(333, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-16 00:00:00', 19665.39493, 266681922, '2017-12-16 00:00:00', '2017-12-16 00:00:00'),
(334, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-17 00:00:00', 19423.58015, 263402677.9, '2017-12-17 00:00:00', '2017-12-17 00:00:00'),
(335, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-18 00:00:00', 19188.05396, 260155702.7, '2017-12-18 00:00:00', '2017-12-18 00:00:00'),
(336, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-19 00:00:00', 18174.18676, 246784700.6, '2017-12-19 00:00:00', '2017-12-19 00:00:00'),
(337, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-20 00:00:00', 17059.88835, 231625601.8, '2017-12-20 00:00:00', '2017-12-20 00:00:00'),
(338, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-21 00:00:00', 16355.23823, 221793395.2, '2017-12-21 00:00:00', '2017-12-21 00:00:00'),
(339, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-22 00:00:00', 14084.82493, 190941569.7, '2017-12-22 00:00:00', '2017-12-22 00:00:00'),
(340, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-23 00:00:00', 15241.91647, 206636725.3, '2017-12-23 00:00:00', '2017-12-23 00:00:00'),
(341, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-24 00:00:00', 14451.11455, 195915716.6, '2017-12-24 00:00:00', '2017-12-24 00:00:00'),
(342, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-25 00:00:00', 14302.75371, 193861460.4, '2017-12-25 00:00:00', '2017-12-25 00:00:00'),
(343, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-26 00:00:00', 16616.68206, 225277378, '2017-12-26 00:00:00', '2017-12-26 00:00:00'),
(344, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-27 00:00:00', 16373.08108, 222006052.3, '2017-12-27 00:00:00', '2017-12-27 00:00:00'),
(345, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-28 00:00:00', 15067.8995, 204280053.1, '2017-12-28 00:00:00', '2017-12-28 00:00:00'),
(346, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-29 00:00:00', 15096.55944, 204668768.2, '2017-12-29 00:00:00', '2017-12-29 00:00:00'),
(347, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-30 00:00:00', 13620.36187, 184652192.2, '2017-12-30 00:00:00', '2017-12-30 00:00:00');
INSERT INTO `price` (`id`, `name`, `ticker`, `coin_id`, `code`, `exchange`, `invalid`, `record_time`, `usd`, `idr`, `created_at`, `updated_at`) VALUES
(348, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2017-12-31 00:00:00', 14839.59079, 201171470.2, '2017-12-31 00:00:00', '2017-12-31 00:00:00'),
(349, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-01 00:00:00', 14093.60683, 191157892.1, '2018-01-01 00:00:00', '2018-01-01 00:00:00'),
(350, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-02 00:00:00', 15321.93285, 207302485.2, '2018-01-02 00:00:00', '2018-01-02 00:00:00'),
(351, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-03 00:00:00', 15583.88554, 210169175.9, '2018-01-03 00:00:00', '2018-01-03 00:00:00'),
(352, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-04 00:00:00', 15976.36519, 214684508.2, '2018-01-04 00:00:00', '2018-01-04 00:00:00'),
(353, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-05 00:00:00', 18336.92298, 246300904.6, '2018-01-05 00:00:00', '2018-01-05 00:00:00'),
(354, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-06 00:00:00', 18343.66249, 246542442.1, '2018-01-06 00:00:00', '2018-01-06 00:00:00'),
(355, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-07 00:00:00', 17039.87391, 228890347.1, '2018-01-07 00:00:00', '2018-01-07 00:00:00'),
(356, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-08 00:00:00', 15900.36502, 213724197.2, '2018-01-08 00:00:00', '2018-01-08 00:00:00'),
(357, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-09 00:00:00', 15604.72341, 209917817.3, '2018-01-09 00:00:00', '2018-01-09 00:00:00'),
(358, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-10 00:00:00', 15509.27013, 208610497, '2018-01-10 00:00:00', '2018-01-10 00:00:00'),
(359, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-11 00:00:00', 14050.56961, 188730022.4, '2018-01-11 00:00:00', '2018-01-11 00:00:00'),
(360, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-12 00:00:00', 14759.29463, 197902913.3, '2018-01-12 00:00:00', '2018-01-12 00:00:00'),
(361, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-13 00:00:00', 15193.3149, 203722559.6, '2018-01-13 00:00:00', '2018-01-13 00:00:00'),
(362, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-14 00:00:00', 14476.58897, 194126675.3, '2018-01-14 00:00:00', '2018-01-14 00:00:00'),
(363, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-15 00:00:00', 14411.99771, 193145230, '2018-01-15 00:00:00', '2018-01-15 00:00:00'),
(364, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-16 00:00:00', 11723.91352, 157137925.4, '2018-01-16 00:00:00', '2018-01-16 00:00:00'),
(365, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-17 00:00:00', 11415.39284, 153105500.5, '2018-01-17 00:00:00', '2018-01-17 00:00:00'),
(366, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-18 00:00:00', 11569.42499, 155113562.9, '2018-01-18 00:00:00', '2018-01-18 00:00:00'),
(367, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-19 00:00:00', 11758.46933, 157151529.1, '2018-01-19 00:00:00', '2018-01-19 00:00:00'),
(368, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-20 00:00:00', 13260.27119, 177551016.6, '2018-01-20 00:00:00', '2018-01-20 00:00:00'),
(369, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-21 00:00:00', 11703.50486, 156424733.2, '2018-01-21 00:00:00', '2018-01-21 00:00:00'),
(370, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-22 00:00:00', 10991.59501, 147162415.2, '2018-01-22 00:00:00', '2018-01-22 00:00:00'),
(371, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-23 00:00:00', 10894.00091, 145681459.6, '2018-01-23 00:00:00', '2018-01-23 00:00:00'),
(372, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-24 00:00:00', 11277.11597, 150991530.1, '2018-01-24 00:00:00', '2018-01-24 00:00:00'),
(373, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-25 00:00:00', 11225.25446, 150162443, '2018-01-25 00:00:00', '2018-01-25 00:00:00'),
(374, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-26 00:00:00', 11044.90724, 147557731.4, '2018-01-26 00:00:00', '2018-01-26 00:00:00'),
(375, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-27 00:00:00', 11456.21351, 153052700.2, '2018-01-27 00:00:00', '2018-01-27 00:00:00'),
(376, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-28 00:00:00', 11665.69693, 155254871.9, '2018-01-28 00:00:00', '2018-01-28 00:00:00'),
(377, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-29 00:00:00', 11157.66389, 148923597, '2018-01-29 00:00:00', '2018-01-29 00:00:00'),
(378, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-30 00:05:19', 11095.21069, 147985739.2, '2018-01-30 00:05:00', '2018-01-30 00:05:00'),
(379, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-01-31 00:00:00', 9989.689777, 133944349.8, '2018-01-31 00:00:00', '2018-01-31 00:00:00'),
(380, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-01 00:00:00', 10114.49509, 135467261.8, '2018-02-01 00:00:00', '2018-02-01 00:00:00'),
(381, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-02 00:00:00', 9070.555449, 121649703.2, '2018-02-02 00:00:00', '2018-02-02 00:00:00'),
(382, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-03 00:00:00', 8830.16351, 118571518, '2018-02-03 00:00:00', '2018-02-03 00:00:00'),
(383, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-04 00:00:00', 8994.914866, 121000390.3, '2018-02-04 00:00:00', '2018-02-04 00:00:00'),
(384, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-05 00:00:00', 8315.517491, 111850639.9, '2018-02-05 00:00:00', '2018-02-05 00:00:00'),
(385, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-06 00:00:00', 6852.052701, 92492589.95, '2018-02-06 00:00:00', '2018-02-06 00:00:00'),
(386, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-07 00:00:00', 7711.220329, 104350519.9, '2018-02-07 00:00:00', '2018-02-07 00:00:00'),
(387, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-08 00:05:28', 7611.610278, 103183832.9, '2018-02-08 00:05:00', '2018-02-08 00:05:00'),
(388, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-09 00:00:00', 8208.572084, 111548622.3, '2018-02-09 00:00:00', '2018-02-09 00:00:00'),
(389, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-10 00:00:00', 8650.71675, 117896541.2, '2018-02-10 00:00:00', '2018-02-10 00:00:00'),
(390, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-11 00:00:00', 8574.677638, 116878360, '2018-02-11 00:00:00', '2018-02-11 00:00:00'),
(391, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-12 00:00:00', 8168.63778, 111262292.3, '2018-02-12 00:00:00', '2018-02-12 00:00:00'),
(392, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-13 00:00:00', 8911.398574, 121509541.1, '2018-02-13 00:00:00', '2018-02-13 00:00:00'),
(393, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-14 00:00:00', 8518.269076, 116231384.8, '2018-02-14 00:00:00', '2018-02-14 00:00:00'),
(394, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-15 00:00:00', 9428.025607, 128512238.8, '2018-02-15 00:00:00', '2018-02-15 00:00:00'),
(395, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-16 00:00:00', 10112.58014, 137327629.4, '2018-02-16 00:00:00', '2018-02-16 00:00:00'),
(396, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-17 00:00:00', 10155.27706, 137531259.9, '2018-02-17 00:00:00', '2018-02-17 00:00:00'),
(397, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-18 00:00:00', 11006.64769, 149050711.6, '2018-02-18 00:00:00', '2018-02-18 00:00:00'),
(398, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-19 00:00:00', 10523.42931, 142513541.4, '2018-02-19 00:00:00', '2018-02-19 00:00:00'),
(399, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-20 00:00:00', 11103.09004, 150502440.9, '2018-02-20 00:00:00', '2018-02-20 00:00:00'),
(400, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-21 00:00:00', 11502.37705, 156365410.3, '2018-02-21 00:00:00', '2018-02-21 00:00:00'),
(401, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-22 00:00:00', 9973.59212, 136218129.4, '2018-02-22 00:00:00', '2018-02-22 00:00:00'),
(402, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-23 00:00:00', 10032.86311, 137027645.5, '2018-02-23 00:00:00', '2018-02-23 00:00:00'),
(403, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-24 00:00:00', 10301.88361, 140592008.5, '2018-02-24 00:00:00', '2018-02-24 00:00:00'),
(404, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-25 00:00:00', 9742.62819, 132959730.2, '2018-02-25 00:00:00', '2018-02-25 00:00:00'),
(405, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-26 00:00:00', 9699.517182, 132377851.4, '2018-02-26 00:00:00', '2018-02-26 00:00:00'),
(406, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-27 00:00:00', 10355.57813, 141264381.6, '2018-02-27 00:00:00', '2018-02-27 00:00:00'),
(407, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-02-28 00:00:00', 10709.38843, 146383688.7, '2018-02-28 00:00:00', '2018-02-28 00:00:00'),
(408, 'Bitcoin', 'BTC', 5, 'bitcoin', 'gecko', 0, '2018-03-01 00:00:00', 10346.66493, 141992387.6, '2018-03-01 00:00:00', '2018-03-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `amount` decimal(10,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `trx_id`, `user_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'a', 1, '0.01000000', '2022-03-07 02:55:44', '2022-03-07 02:55:44'),
(2, 'B', 1, '0.02000000', '2022-03-07 02:55:44', '2022-03-07 02:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sigit Prasetyo Noprianto', 'noprisigit@gmail.com', NULL, '$2y$10$kYFM7O2JJiapPzcBbhqMe.uW7Atq/URVVkR1VHWySIBhlmkD0rocy', NULL, '2022-03-19 10:54:52', '2022-03-19 10:54:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balance_user_id_index` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_trx_id_unique` (`trx_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
