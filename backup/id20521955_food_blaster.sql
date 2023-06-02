-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2023 at 05:16 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20521955_food_blaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `message_body` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `easyshoping`
--

CREATE TABLE `easyshoping` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friend_req`
--

CREATE TABLE `friend_req` (
  `req_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `friend_req`
--

INSERT INTO `friend_req` (`req_id`, `sender_id`, `receiver_id`, `status`) VALUES
(36, 79, 77, 0),
(37, 86, 83, 0),
(40, 79, 86, 0);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `content`, `status`, `user_id`, `sender_id`, `date`) VALUES
(29, 'Sent a Friend Request', 1, 77, 79, '2023-04-11'),
(30, 'Sent a Friend Request', 1, 83, 86, '2023-05-25'),
(31, 'Sent a Friend Request', 1, 86, 89, '2023-05-26'),
(33, 'Sent a Friend Request', 1, 86, 79, '2023-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `caption` longtext DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `img_location` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `caption`, `location`, `img_location`, `status`, `user_id`, `post_date`) VALUES
(49, 'Burger Lover ', '', 'posts/Burger Lover .jpg', 1, 76, '2023-04-08'),
(50, 'chilling vibe', '', 'posts/chilling vibe.jpg', 1, 77, '2023-04-08'),
(51, 'tolo tokooo', '', 'posts/tolo tokooo.jpg', 1, 86, '2023-05-25'),
(52, 'tolo tokooo', '', 'posts/tolo tokooo.jpg', 1, 86, '2023-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `img_location` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profile_id`, `img_location`, `designation`, `description`, `status`, `DOB`, `user_id`, `location`) VALUES
(26, 'profile_pictures/shehaniperera45@gmail.com.jpg', 'Student', 'I Love Foods', 1, '1995-04-03', 76, NULL),
(27, 'profile_pictures/rubisilva34@gmail.com.jpg', 'student', 'I loved food', 1, '1996-04-18', 77, NULL),
(28, 'profile_pictures/amishafernando@gmail.com.jpg', 'cooker', 'I would like to eat food', 1, '1996-04-08', 78, NULL),
(29, 'profile_pictures/john@gmail.com.jpg', 'SE', 'Love FOods', 1, '1888-08-08', 79, NULL),
(30, 'profile_pictures/Oshanasinda384@gmail.com.jpg', 'doctor', 'I loved foodnuts', 1, '1997.03.12', 83, NULL),
(31, 'profile_pictures/dayanadesilva@gmail.com.jpg', 'love the life you live,love the life you ❤ love', 'follow your dreams', 1, '1994.08.23', 86, NULL),
(32, 'profile_pictures/amasha12@gmail.com.jpg', 'lawyer', 'never give up', 1, '1996.12.02', 88, NULL),
(33, 'profile_pictures/shavee12@gmail.com.jpg', 'nurse', 'alone', 1, '1996.12.02', 89, NULL),
(34, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(35, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(36, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(37, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(38, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(39, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(40, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(41, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(42, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(43, 'profile_pictures/ashmilaK@yahoo.com.jpg', 'Engineer', 'I love food', 1, '1992.03.08', 95, NULL),
(44, 'profile_pictures/disariamanda@gmail.com.jpg', '', '', 1, '1992.03.08', 96, 'Talpe'),
(45, 'profile_pictures/disariamanda@gmail.com.jpg', '', '', 1, '1992.03.08', 96, 'Talpe'),
(46, 'profile_pictures/disariamanda@gmail.com.jpg', 'S\nEngineer ', 'I love food', 1, '1992.03.08', 96, NULL),
(47, 'profile_pictures/disariamanda@gmail.com.jpg', 'S\nEngineer ', 'I love food', 1, '1992.03.08', 96, NULL),
(48, 'profile_pictures/disariamanda@gmail.com.jpg', 'S\nEngineer ', 'I love food', 1, '1992.03.08', 96, NULL),
(49, 'profile_pictures/disariamanda@gmail.com.jpg', 'S\nEngineer ', 'I love food', 1, '1992.03.08', 96, NULL),
(50, 'profile_pictures/disariamanda@gmail.com.jpg', 'S\nEngineer ', 'I love food', 1, '1992.03.08', 96, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `story_id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `img_location` varchar(255) NOT NULL,
  `story_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`story_id`, `caption`, `img_location`, `story_date`, `user_id`) VALUES
(31, 'Sunday funday###', 'story/Sunday funday###.jpg', '2023-04-08 18:23:50', 77),
(32, 'tollo toko', 'story/tollo toko.jpg', '2023-05-25 18:29:44', 86);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_catergory_id` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `email`, `password`, `status`, `user_catergory_id`, `date`) VALUES
(76, 'Shehani', 'Perera', 'shehaniperera45@gmail.com', 'shehani1234', 1, 1, '2023-04-08'),
(77, 'rubi', 'desilva', 'rubisilva34@gmail.com', 'newDm45#', 1, 1, '2023-04-08'),
(78, 'amisha', 'Fernando', 'amishafernando@gmail.com', 'amisha123', 1, 2, '2023-04-08'),
(79, 'John', 'Doe', 'john@gmail.com', '1234', 1, 1, '2023-04-11'),
(80, 'pablo', 'escobar', 'pablo@gmail.com', 'newDm45#', 1, 1, '2023-04-11'),
(81, 'deepa', 'shyamali', 'deepashyamali99@gmail.com', 'abc@123', 1, 1, '2023-04-13'),
(82, 'Ashmila', 'Shehani', 'ashmila@gmail.com', 'abc@123', 1, 3, '2023-04-13'),
(83, 'oshan', 'asinda', 'Oshanasinda384@gmail.com', 'oshan123', 1, 2, '2023-05-25'),
(84, 'Mahesha', 'Aparnavi', 'maheshaaparnavi@gmail.com', 'Admin1234', 1, 2, '2023-05-25'),
(85, 'Amavi', 'Thathsarani', 'amavithathsarani@gmail.com', 'Admin', 1, 3, '2023-05-25'),
(86, 'dayana', 'desilva', 'dayanadesilva@gmail.com', 'd123', 1, 1, '2023-05-25'),
(87, 'malith', 'promoshzn', 'maithppp2@gmail.com', 'xpc@123', 1, 1, '2023-05-26'),
(88, 'amasha', 'suweth', 'amasha12@gmail.com', 'b123', 1, 1, '2023-05-26'),
(89, 'jinel', 'shavee', 'shavee12@gmail.com', 'c123', 1, 1, '2023-05-26'),
(90, 'Mahi', 'Mudalige', 'mahiiimudalige@gmail.com', 'Admin', 1, 3, '2023-05-27'),
(91, 'aas', 'aasd', 'amahh@gmail.com', 'Ama', 1, 3, '2023-05-27'),
(92, 'aaaas', 'asf', 'asf@gmail.com', 'ama', 1, 2, '2023-05-27'),
(93, 'Rupa', 'Manamperi', 'rupa@gmail.com', 'word', 1, 3, '2023-05-27'),
(94, 'aaasd', 'asdd', 'amsd@gmail.com', 'admin123', 1, 3, '2023-05-27'),
(95, 'Ashmila', 'Shehani', 'ashmilaK@yahoo.com', 'a1111', 1, 1, '2023-05-27'),
(96, 'Disari', 'Amanda', 'disariamanda@gmail.com', 'a123', 1, 1, '2023-05-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `easyshoping`
--
ALTER TABLE `easyshoping`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `friend_req`
--
ALTER TABLE `friend_req`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `userfk` (`sender_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`story_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `easyshoping`
--
ALTER TABLE `easyshoping`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `friend_req`
--
ALTER TABLE `friend_req`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `story_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `userfk` FOREIGN KEY (`sender_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `story`
--
ALTER TABLE `story`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
