-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 01:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batch_2022_dhwani`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'suspendisse potenti cras in purus eu magna', '2022-02-15 18:03:19', '2022-02-15 12:33:19', NULL),
(2, 5, 3, 'id luctus nec molestie sed', '2022-02-15 18:03:19', '2022-02-15 12:33:19', NULL),
(3, 4, 2, 'dolor sit amet consectetuer adipiscing', '2022-02-15 18:03:19', '2022-02-15 12:33:19', NULL),
(4, 5, 1, 'viverra eget', '2022-02-15 18:03:19', '2022-02-15 12:33:19', NULL),
(5, 1, 3, 'vulputate luctus cum sociis natoque penatibus et', '2022-02-15 18:03:19', '2022-02-15 12:33:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_description` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `views` int(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `short_description`, `description`, `views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'access', 'non mattis pulvinar nulla', 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', 2, '2022-02-15 17:52:57', '2022-02-15 12:22:57', NULL),
(2, 2, 'open system', 'sed sagittis nam congue', 'eget eleifend luctus ultricies eu nibh quisque id justo sit amet', 2, '2022-02-15 17:52:57', '2022-02-15 12:22:57', NULL),
(3, 1, 'pricing structure', 'erat fermentum justo', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', 1, '2022-02-15 17:52:57', '2022-02-15 12:22:57', NULL),
(4, 3, 'empowering', 'nunc nisl duis bibendum', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', 2, '2022-02-15 17:52:57', '2022-02-15 12:22:57', NULL),
(5, 1, 'interactive', 'pellentesque volutpat dui', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 1, '2022-02-15 17:52:57', '2022-02-15 12:38:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `age`, `gender`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hestia', 'Oggers', 34, 'female', '2022-02-15 17:45:23', '2022-02-15 12:42:34', NULL),
(2, 'Pauly', 'Chittie', 30, 'female', '2022-02-15 17:45:23', '2022-02-15 12:15:23', NULL),
(3, 'Ira', 'Rorke', 43, 'female', '2022-02-15 17:45:23', '2022-02-15 12:15:23', NULL),
(6, 'Syd', 'Downage', 23, 'male', '2022-02-15 18:17:24', '2022-02-15 12:47:24', NULL),
(7, 'Lorna', 'Gunston', 45, 'female', '2022-02-15 18:18:23', '2022-02-15 12:48:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
