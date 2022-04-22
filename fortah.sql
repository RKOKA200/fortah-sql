-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 11:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fortah`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `topic_id` int(222) NOT NULL,
  `type` int(222) NOT NULL,
  `user_type` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `title`, `topic_id`, `type`, `user_type`) VALUES
(2, 'tedtyy', 5, 1, 2),
(6, 'blob1.mp3', 4, 2, 1),
(7, 'asdasdasdasd', 4, 1, 2),
(9, 'blob1.mp32.mp3', 4, 2, 1),
(11, 'asdasdasd', 4, 1, 2),
(12, 'asasd', 4, 1, 1),
(13, 'dsfdsfsdf', 4, 1, 2),
(14, 'blob1.mp32.mp33.mp3', 4, 2, 1),
(15, 'Hey man, good question! It is always depended on your goals but, imo full body training is a bit non-specific in a sense that in a workout you are not targeting anything specifically, and considering the different types of', 5, 1, 1),
(16, 'blob1.mp32.mp33.mp34.mp3', 5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `cover` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`id`, `title`, `cover`) VALUES
(2, 'Test', 'image3.jpg'),
(3, 'Test 2', 'image1.jpg'),
(5, 'Training', 'training.png'),
(6, 'Nutrition', 'nutrition.png'),
(7, 'Equipments', 'equipments.png'),
(8, 'Others', 'other.png'),
(9, 'Rei Koka', 'Thumbnail (10).png');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `image` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `title`, `image`) VALUES
(11, 'Introduction and Purpose of this application', 'Category1.png'),
(12, 'Stimulus and Recovery', 'Category2.png'),
(13, 'Exercise Selection Principles', 'Category3.png'),
(14, 'Muscle Physiology', 'Category4.png'),
(15, 'Strength & Resistance Profiles', 'Category5.png');

-- --------------------------------------------------------

--
-- Table structure for table `education_videos`
--

CREATE TABLE `education_videos` (
  `id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `video_src` varchar(222) NOT NULL,
  `education_id` int(222) NOT NULL,
  `thumbnail` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education_videos`
--

INSERT INTO `education_videos` (`id`, `title`, `video_src`, `education_id`, `thumbnail`) VALUES
(9, 'Introduction and Purpose of this Curriculum', 'Episode 1 - Intro2.mp4', 11, 'Thumbnail .png'),
(10, 'The importance of science in resistance training', 'Episode 2 - The importance of science in resistance training.mp4', 11, 'Thumbnail (2).png'),
(11, 'Setting Goals', 'Episode 3 - Setting goals.mp4', 11, 'Thumbnail (3).png'),
(12, 'What causes muscles to grow', 'Episode 4 - What causes muscles to grow.mp4', 12, 'Thumbnail (4).png'),
(13, 'Directed Adaptation', 'Episode 5 - Directed Adaptation.mp4', 12, 'Thumbnail (5).png'),
(14, 'Volume Landmarks', 'Episode 6 - Volume Landmarks.mp4', 12, 'Thumbnail (6).png'),
(15, 'Nutrition', 'Episode 7 - Nutrition.mp4', 12, 'Thumbnail (7).png'),
(16, 'Sleep Optimization ', 'Episode 8 - Sleep Optimisation.mp4', 12, 'Thumbnail (8).png'),
(17, 'Fatigue Management', 'Episode 9 - Fatigue Management.mp4', 12, 'Thumbnail (9).png'),
(18, 'The importance of Anatomy in Resistance Training', 'Episode 10 - The importance of anatomy in resistance training.mp4', 13, 'Thumbnail 1.png'),
(19, 'Alignment, Stability and Profiles', 'Episode 11 - Alignment, Stability and Profiles.mp4', 13, 'Thumbnail (11).png'),
(20, 'Setup, Stabilize, Initiate', 'Episode 12- Setup, Stabilize, Initiate.mp4', 13, 'Thumbnail (12).png'),
(21, 'Muscle Physiology', 'Episode 13 - Muscle Physiology.mp4', 14, 'Thumbnail (13).png'),
(22, 'Length-Tension Relationship', 'Episode 14 - Length-Tension relationship.mp4', 14, 'Thumbnail (14).png'),
(23, 'Force-Velocity Relationship', 'Episode 15 - Force-Velocity Relationship.mp4', 14, 'Thumbnail (15).png'),
(24, 'Mechanical Tension', 'Episode 16 - Mechanical Tension.mp4', 14, 'Thumbnail (16).png'),
(25, 'Torque', 'Episode 17 - Torque.mp4', 15, 'Thumbnail (17).png'),
(28, 'Single Joint - Strength Profiles', 'Episode 18 - Single Joints Strength Profiles1.mp4', 15, 'Thumbnail 2.png'),
(29, 'Single Joint - Resistance Profiles', 'Episode 19 - Single Joints Resistance Profiles1.mp4', 15, 'Thumbnail 3.png'),
(30, 'Multi Joint - Strength Profiles Pressing Movements', 'Episode 21 - Multi Joint Pressing Movements Resistance Profiles.mp4', 15, 'Thumbnail (20).png'),
(31, 'Multi Joint - Resistance Profiles Pressing Movements', 'Episode 21 - Multi Joint Pressing Movements Resistance Profiles1.mp4', 15, 'Thumbnail (21).png'),
(32, 'Multi Joint - Strength Profiles Pulling Movements', 'Episode 22 - Multi Joint Pulling Movements Strength Profile.mp4', 15, 'Thumbnail (22).png'),
(33, 'How machines work', 'Episode 23 - How Machines work.mp4', 15, 'Thumbnail (24).png');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `reply_tytpe` int(222) NOT NULL,
  `comment_id` int(222) NOT NULL,
  `user_id` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `title`, `reply_tytpe`, `comment_id`, `user_id`) VALUES
(2, 'Admin Reply', 1, 4, 1),
(3, 'Rei', 1, 1, 1),
(4, 'sdsdsdssdsd', 1, 3, 1),
(5, 'blob1.mp32.mp33.mp34.mp35.mp3', 2, 4, 1),
(6, 'blob1.mp32.mp33.mp34.mp35.mp36.mp3', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `description` varchar(222) NOT NULL,
  `image` varchar(222) DEFAULT NULL,
  `user_id` int(222) NOT NULL,
  `disc_id` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `description`, `image`, `user_id`, `disc_id`) VALUES
(4, 'Topic 2', 'asdasd', 'image31.jpg', 2, 2),
(5, 'Topic 3', 'asdasdasdasd', 'image5.jpg', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `token` varchar(222) NOT NULL,
  `type` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`, `token`, `type`) VALUES
(2, 'john@gmail.com', 'John Doe', '$2y$10$rK.CZLXwlj/PBkIZ91sDSu0bR6H5HCVl5sYFSzNl1gmoFpeNGKh1C', '25d3d18ca793c840a1e7747be70dd319', 2),
(3, 'admin@gmail.com', 'Admin', '$2y$10$UAYNMy//ishNMcoYxbnXpujhGmrYWfC/vMK0H.EIo8znN2uR7ne9y', 'f68bbee142300f2be7a109ef24cb935e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_comments`
--

CREATE TABLE `video_comments` (
  `id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `type` int(222) NOT NULL,
  `video_id` int(222) NOT NULL,
  `user_type` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_comments`
--

INSERT INTO `video_comments` (`id`, `title`, `type`, `video_id`, `user_type`) VALUES
(1, 'asdasd', 1, 9, 2),
(2, 'test comment for this video', 1, 9, 2),
(3, '34234234', 1, 9, 2),
(4, 'asdasdasdasd', 1, 9, 2),
(5, 'asdasdasd', 1, 11, 2),
(6, 'asdasdasd', 1, 10, 2),
(7, 'dasdasd', 1, 10, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_videos`
--
ALTER TABLE `education_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_comments`
--
ALTER TABLE `video_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `education_videos`
--
ALTER TABLE `education_videos`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video_comments`
--
ALTER TABLE `video_comments`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
