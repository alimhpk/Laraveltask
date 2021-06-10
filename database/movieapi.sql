-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 12:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'comedy', '2021-06-10 06:00:55', '2021-06-10 06:00:55'),
(2, 'sci-fi', '2021-06-10 06:00:55', '2021-06-10 06:00:55'),
(3, 'action', '2021-06-10 06:01:45', '2021-06-10 06:01:45');

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
(3, '2021_06_10_055236_create_movies_table', 1),
(4, '2021_06_10_055924_create_genres_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `image`, `description`, `genre`, `status`, `created_at`, `updated_at`) VALUES
(1, 'In & Out', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT7307Tt6oeB5nzI2xh4P7X8AgFdivjuXZbqFqlzuT1dy3LOqeW', 'All of Greenleaf, Indiana is watching this year\'s telecast of the Oscars as Hollywood heartthrob and local boy made good Cameron Drake has been nominated for his first ever Best Actor Oscar for his latest movie role as a gay soldier. Cameron\'s high school English teacher Howard Brackett is overjoyed when Cameron wins the award and mentions Howard\'s contribution in his acting life. That joy turns to horror when Cameron mentions to the worldwide audience that Howard is gay, especially horrific to Howard as he is engaged to fellow teacher Emily Montgomery, a woman with self-esteem issues as she had battled weight issues most of her life before she lost seventy-five pounds for the wedding. Howard\'s life is totally disrupted as Hollywood media descends on Greenleaf in order to get Howard\'s story. The rest of Greenleaf also openly wonders if Howard is indeed gay, as he exhibits many stereotypical gay tendencies, such as being neat, and loving music, dancing, poetry and Barbra Streisand. ', 1, 0, '2021-06-10 06:05:52', '2021-06-10 06:05:56'),
(3, 'Godzilla vs. Kong', 'https://m.media-amazon.com/images/M/MV5BZWVjMmY4ODUtMmYzMC00NDdjLWE4MjMtOWUzMDBlNzczOGMwXkEyXkFqcGdeQWpnYW1i._V1_.jpg', 'Legends collide as Godzilla and Kong, the two most powerful forces of nature, clash on the big screen in a spectacular battle for the ages. As a squadron embarks on a perilous mission into fantastic uncharted terrain, unearthing clues to the Titans\' very origins and mankind\'s survival, a conspiracy threatens to wipe the creatures, both good and bad, from the face of the earth forever.', 2, 0, '2021-06-10 06:08:00', '2021-06-10 06:08:00'),
(4, 'The Unhealer', 'https://m.media-amazon.com/images/M/MV5BYzM2M2RjNTUtOWY1Ny00MWNlLThkZGEtZmQxMGNhNTkyNzE3XkEyXkFqcGdeQXVyMjI0MDA1MA@@._V1_.jpg', 'A botched faith healing bestows supernatural Shaman powers on a bullied teenager. When his lifelong tormentors pull a prank that kills someone he loves, he uses his powers for revenge and goes on a bloody rampage to settle the score.', 2, 0, '2021-06-10 06:09:25', '2021-06-10 06:09:25'),
(5, 'Awake', 'https://m.media-amazon.com/images/M/MV5BNzZlYTI0NDYtODg4YS00YjUxLTgwZjItY2NhMDE0MjQ2ZTA5XkEyXkFqcGdeQXVyNjEwNTM2Mzc@._V1_.jpg', 'After a devastating global event wipes out all electronics and eliminated people\'s ability to sleep, a former soldier may have found a solution with her daughter.', 3, 0, '2021-06-10 06:10:17', '2021-06-10 06:10:17'),
(6, 'Chasing the Thunder', 'https://m.media-amazon.com/images/M/MV5BMWMxYjg4MDgtY2QzZi00ZjJjLTgwMTYtNjRmOWI4OGY0M2Q4XkEyXkFqcGdeQXVyMDI1Mzg4MA@@._V1_FMjpg_UX1000_.jpg', 'A thrilling high seas adventure feature documentary where two marine conservation captains from Sea Shepherd go on a hundred day chase of the illegal poacher and pirate fishing vessel, the Thunder.', 3, 0, '2021-06-10 06:11:08', '2021-06-10 06:11:08'),
(7, 'Long Story Short', 'https://img.yts.mx/assets/images/movies/long_story_short_2021/medium-cover.jpg', 'Teddy wakes up the morning after his wedding to discover that every few minutes he\'s jumping forward to the next year of his life.', 1, 1, '2021-06-10 11:05:19', '2021-06-10 11:05:19');

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
-- Table structure for table `service_actions`
--

CREATE TABLE `service_actions` (
  `id` int(11) NOT NULL,
  `status` enum('enable','disable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_actions`
--

INSERT INTO `service_actions` (`id`, `status`) VALUES
(1, 'enable');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `service_actions`
--
ALTER TABLE `service_actions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_actions`
--
ALTER TABLE `service_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
