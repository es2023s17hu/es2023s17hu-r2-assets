-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2022 at 09:46 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `popfest`
--

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE `concerts` (
  `id` bigint UNSIGNED NOT NULL,
  `location_id` bigint UNSIGNED NOT NULL,
  `artist` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`id`, `location_id`, `artist`, `start`, `end`) VALUES
(1, 1, 'Opus', '2022-05-30 15:00:00', '2022-05-30 17:00:00'),
(2, 3, 'Margaret Island', '2022-05-30 17:00:00', '2022-05-30 19:00:00'),
(3, 2, 'Essemm', '2022-05-31 15:00:00', '2022-05-31 17:00:00'),
(4, 3, 'Foo Fighters', '2022-05-31 17:00:00', '2022-05-31 19:00:00'),
(5, 2, 'Sparks', '2022-05-31 13:00:00', '2022-05-31 15:00:00'),
(6, 1, 'Altin Gün', '2022-05-31 19:00:00', '2022-05-31 20:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`) VALUES
(1, 'Alexander Palace Garden'),
(2, 'Carmelita Monastery'),
(3, 'Castle Main Square');

-- --------------------------------------------------------

--
-- Table structure for table `location_rows`
--

CREATE TABLE `location_rows` (
  `id` bigint UNSIGNED NOT NULL,
  `location_id` bigint UNSIGNED NOT NULL,
  `row` tinyint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_rows`
--

INSERT INTO `location_rows` (`id`, `location_id`, `row`, `name`, `seats`) VALUES
(1, 1, 1, 'Stalls 1', 49),
(2, 1, 2, 'Stalls 2', 50),
(3, 1, 3, 'Stalls 3', 49),
(4, 1, 4, 'Stalls 4', 50),
(5, 1, 5, 'Stalls 5', 49),
(6, 1, 6, 'Stalls 6', 50),
(7, 1, 7, 'Stalls 7', 49),
(8, 1, 8, 'Stalls 8', 50),
(9, 1, 9, 'Stalls 9', 49),
(10, 1, 10, 'Stalls 10', 50),
(11, 1, 11, 'Stalls 11', 49),
(12, 1, 12, 'Stalls 12', 50),
(13, 1, 13, 'Stalls 13', 49),
(14, 1, 14, 'Stalls 14', 50),
(15, 1, 15, 'Stalls 15', 49),
(16, 1, 16, 'Stalls 16', 50),
(17, 1, 17, 'Stalls 17', 49),
(18, 1, 18, 'Stalls 18', 50),
(19, 1, 19, 'Stalls 19', 49),
(20, 1, 20, 'Stalls 20', 50),
(21, 2, 1, 'Terrace 1', 23),
(22, 2, 2, 'Terrace 2', 24),
(23, 2, 3, 'Terrace 3', 23),
(24, 2, 4, 'Terrace 4', 24),
(25, 2, 5, 'Terrace 5', 23),
(26, 2, 6, 'Terrace 6', 24),
(27, 2, 7, 'Terrace 7', 23),
(28, 2, 8, 'Terrace 8', 24),
(29, 2, 9, 'Terrace 9', 23),
(30, 2, 10, 'Terrace 10', 24),
(31, 2, 11, 'Terrace 11', 23),
(32, 2, 12, 'Terrace 12', 24),
(33, 2, 13, 'Terrace 13', 23),
(34, 2, 14, 'Terrace 14', 24),
(35, 3, 1, '1', 44),
(36, 3, 2, '2', 42),
(37, 3, 3, '3', 44),
(38, 3, 4, '4', 42),
(39, 3, 5, '5', 44),
(40, 3, 6, '6', 42),
(41, 3, 7, '7', 44),
(42, 3, 8, '8', 42);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_04_01_175011_create_locations_table', 1),
(2, '2022_04_01_175017_create_concerts_table', 1),
(3, '2022_04_01_175122_create_location_rows_table', 1),
(4, '2022_04_01_175730_create_reservations_table', 1),
(5, '2022_04_01_175925_create_tickets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `concert_id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `concert_id`, `name`, `address`, `city`, `zip`, `country`, `created_at`) VALUES
(1, 1, 'Daniel Maierhofer', 'Astrid-Angerer-Weg 2c', 'Groß-Siegharts', '1070', 'Austria', '2022-04-01 19:45:30'),
(2, 3, 'Ralph Sattler', 'Julian-Brunner-Gasse 55b', 'Korneuburg', '7000', 'Austria', '2022-04-01 19:45:30'),
(3, 2, 'Ralph Sattler', 'Julian-Brunner-Gasse 55b', 'Korneuburg', '7000', 'Austria', '2022-04-01 19:45:30'),
(4, 1, 'Ardith Schowalter', '6618 McLaughlin Ports', 'Kertzmannburgh', '63685', 'Oman', '2022-04-01 19:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `reservation_id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `row` tinyint UNSIGNED NOT NULL,
  `seat` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `reservation_id`, `code`, `row`, `seat`) VALUES
(1, 1, 'ZFKESP6UDA', 2, 15),
(2, 1, '58H16ULB4Q', 2, 16),
(3, 2, 'QM20XYRODA', 5, 4),
(4, 2, '1UBJVOQZY0', 5, 5),
(5, 2, 'Q12GYJ6NK7', 5, 6),
(6, 3, 'A94YD3FOWU', 1, 1),
(7, 4, 'VUSJNZ2QM4', 3, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `concerts_location_id_foreign` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_rows`
--
ALTER TABLE `location_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_rows_location_id_foreign` (`location_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_concert_id_foreign` (`concert_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_reservation_id_foreign` (`reservation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location_rows`
--
ALTER TABLE `location_rows`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `concerts`
--
ALTER TABLE `concerts`
  ADD CONSTRAINT `concerts_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `location_rows`
--
ALTER TABLE `location_rows`
  ADD CONSTRAINT `location_rows_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_concert_id_foreign` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
