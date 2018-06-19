-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2018 at 01:18 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET hp8 COLLATE hp8_bin NOT NULL,
  `image` varchar(1000) CHARACTER SET hp8 COLLATE hp8_bin NOT NULL,
  `songs` text CHARACTER SET hp8 COLLATE hp8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `image`, `songs`) VALUES
(4, 'Adelle - 19', 'docs/adelle/adelle-cover.jpg', '[{\"name\":\"Adelle - Crazy for you\",\"url\":\"docs\\/adelle\\/Crazy for you.mp3\"},{\"name\":\"Adelle - First love\",\"url\":\"docs\\/adelle\\/First love.mp3\"},{\"name\":\"Adelle - Melt my heart to stone\",\"url\":\"docs\\/adelle\\/Melt my heart to stone.mp3\"},{\"name\":\"Adelle - Right as rain\",\"url\":\"docs\\/adelle\\/Right as rain.mp3\"}]'),
(5, 'Avicii - Hits', 'docs/avicii/avicii-cover.jpg', '[{\"name\":\"Avicii - Gonna love ya\",\"url\":\"docs\\/avicii\\/Gonna love ya.mp3\"},{\"name\":\"Avicii - Hey brother\",\"url\":\"docs\\/avicii\\/Hey brother.mp3\"},{\"name\":\"Avicii - Levels\",\"url\":\"docs\\/avicii\\/Levels.mp3\"},{\"name\":\"Avicii - Wake me up\",\"url\":\"docs\\/avicii\\/Wake me up.mp3\"}]'),
(6, 'Bruno mars - 24k magic', 'docs/bruno mars/bruno mars-cover.jpg', '[{\"name\":\"Bruno mars - 24k magic\",\"url\":\"docs\\/bruno mars\\/24k magic.mp3\"},{\"name\":\"Bruno mars - Chunky\",\"url\":\"docs\\/bruno mars\\/Chunky.mp3\"},{\"name\":\"Bruno mars - Perm\",\"url\":\"docs\\/bruno mars\\/Perm.mp3\"},{\"name\":\"Bruno mars - Thats what i like\",\"url\":\"docs\\/bruno mars\\/Thats what i like.mp3\"}]'),
(7, 'Coldplay - A head full of dreams', 'docs/coldplay/coldplay-cover.jpg', '[{\"name\":\"Coldplay - A head full of dreams\",\"url\":\"docs\\/coldplay\\/A head full of dreams.mp3\"},{\"name\":\"Coldplay - Adventure of a liftime\",\"url\":\"docs\\/coldplay\\/Adventure of a liftime.mp3\"},{\"name\":\"Coldplay - Hymn for the weekend\",\"url\":\"docs\\/coldplay\\/Hymn for the weekend.mp3\"},{\"name\":\"Coldplay - Miracles\",\"url\":\"docs\\/coldplay\\/Miracles.mp3\"}]'),
(8, 'Passenger - All the little lights', 'docs/passenger/passenger-cover.jpg', '[{\"name\":\"Passenger - All the little lights\",\"url\":\"docs\\/adelle\\/All the little lights.mp3\"},{\"name\":\"Passenger - Circles\",\"url\":\"docs\\/adelle\\/Circles.mp3\"},{\"name\":\"Passenger - Let her go\",\"url\":\"docs\\/adelle\\/Let her go.mp3\"},{\"name\":\"Passenger - Staring at the stars\",\"url\":\"docs\\/adelle\\/Staring at the stars.mp3\"}]'),
(9, 'Sia - Everyday is christmas', 'docs/sia/sia-cover.jpg', '[{\"name\":\"Sia - Candy cane lane\",\"url\":\"docs\\/sia\\/Candy cane lane.mp3\"},{\"name\":\"Sia - Everyday is christmas\",\"url\":\"docs\\/sia\\/Everyday is christmas.mp3\"},{\"name\":\"Sia - Santa`s coming for us\",\"url\":\"docs\\/sia\\/Santa`s coming for us.mp3\"},{\"name\":\"Sia - Underneath the mistletoe\",\"url\":\"docs\\/sia\\/Underneath the mistletoe.mp3\"}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
