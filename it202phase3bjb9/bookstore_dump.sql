-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2022 at 03:06 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookcategories`
--

CREATE TABLE `bookcategories` (
  `bookCategoryID` int(11) NOT NULL,
  `bookCategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookcategories`
--

INSERT INTO `bookcategories` (`bookCategoryID`, `bookCategoryName`) VALUES
(1, 'horror'),
(2, 'romance'),
(3, 'sci-fi'),
(4, 'non-fiction'),
(5, 'other');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` int(11) NOT NULL,
  `bookCategoryID` int(11) NOT NULL,
  `bookCode` varchar(10) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `dateAdded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `bookCategoryID`, `bookCode`, `bookName`, `description`, `price`, `dateAdded`) VALUES
(1, 1, 'spooky', 'haunted horror', 'ahhhhhhhh', '10.99', '2022-12-08 20:47:45'),
(2, 1, 'spookier', 'haunted houses', 'scream', '20.99', '2022-12-08 20:50:12'),
(3, 1, 'spookiest', 'haunted mansion', 'bloody murder', '99.99', '2022-12-08 20:50:12'),
(4, 2, 'kiss', 'walk on beach', 'theres a beach', '9.99', '2022-12-08 20:52:46'),
(5, 2, 'hug', 'nice winter night', 'enjoy the fireplace', '1.99', '2022-12-08 20:52:46'),
(6, 2, 'spaghetti', 'romantic diner', 'they eat spaghett', '59.99', '2022-12-08 20:52:46'),
(7, 3, 'zip', 'Hitchers guide to the galaxy 1', 'the first one', '14.99', '2022-12-08 21:00:33'),
(8, 3, 'zap', 'Hitchers guide to the galaxy 2', 'the second one', '14.99', '2022-12-08 21:00:33'),
(9, 3, 'zop', 'Hitchers guide to the galaxy 3', 'the third one', '14.99', '2022-12-08 21:00:33'),
(10, 4, 'history', 'The Great war', 'ww1', '12.99', '2022-12-08 21:00:33'),
(11, 4, 'science', 'Make things explode!', 'this is chemistry', '29.99', '2022-12-08 21:00:33'),
(12, 4, 'math', 'Time to cry', 'Dont major in math', '149.99', '2022-12-08 21:00:33'),
(13, 5, 'Sports', 'Yankees', 'they win or something', '4.99', '2022-12-08 21:00:33'),
(15, 5, 'Kard', 'Keep up with kard', 'they are like rich because you buy this book', '4999.99', '2022-12-08 21:01:01'),
(16, 5, 'Philospy', 'To do your homework or not to do it', 'finish it already', '14.99', '2022-12-08 21:01:01'),
(17, 1, 'bookcode', 'book', '', '100.00', '2022-12-09 19:13:52'),
(20, 1, 'screen', 'forscree', 'forscreen', '10.10', '2022-12-09 20:40:20'),
(21, 1, '123', '$error_message =mysqli_error($curson);$error_message =mysqli_error($curson);$error_message =mysqli_error($cur$error_message =mysqli_error($curson);$error_message =mysqli_error($curson);$error_message =mysqli_error($curson);$error_message =$error_message);', 'awda', '12.00', '2022-12-09 21:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `streetAddress` varchar(60) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zipCode` varchar(10) NOT NULL,
  `reference` varchar(60) NOT NULL,
  `dateAdded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstName`, `lastName`, `emailAddress`, `streetAddress`, `city`, `state`, `zipCode`, `reference`, `dateAdded`) VALUES
(1, 'Brian', 'Bates', 'bjb9@njit.edu', '123 street', 'Newark', 'NJ', '7410', 'friend', '2022-12-09 18:44:37'),
(2, 'Jane', 'Doe', 'jd@gmail.com', '456 ave', 'NYC', 'NY', '12345', 'ad', '2022-12-09 18:46:42'),
(3, 'Joe', 'Smith', 'smith@hotmail.com', '789 blv', 'TRenton', 'NJ', '67890', 'website', '2022-12-09 18:46:42'),
(5, 'first', 'last', 'email@email.com', '654321str', 'Online', 'NJ', '14785', 'Google', '2022-12-09 19:36:26'),
(6, 'name', 'name', 'name@gmail.com', 'name', 'name', 'as', '12345', 'Google', '2022-12-09 19:37:36'),
(17, 'Brian', 'Bates', 'new@gmail.com', '12-60 George St', 'Fair Lawn', 'NJ', '07410', 'Google', '2022-12-09 20:08:39'),
(27, 'Brian', 'Bates', 'brianbates5354@gmail.com', '12-60 George St', 'Fair Lawn', 'NJ', '07410', 'Google', '2022-12-09 20:23:24'),
(37, 'Brianss', 'Batesss', 'forscreenshot@gmail.com', '12-60 George Stss', 'Fair Lawnss', 'NJ', '07410', 'Google', '2022-12-09 20:37:34'),
(38, 'Brian', 'Bates', 'waewaewa@gmail.com', '12-60 George St', 'Fair Lawn', 'NJ', '07410', 'Google', '2022-12-09 20:42:05'),
(43, 'Brian', 'Bates', 'brianbates534@gmail.com', '12-60 George St', 'Fair Lawn', 'NJ', '07410', 'Google', '2022-12-09 20:51:10'),
(44, 'Brian', 'Bates', 'brianbates54@gmail.com', '12-60 George St', 'Fair Lawn', 'NJ', '07410', 'Google', '2022-12-09 20:54:16'),
(45, 'Brian', 'Bates', 'brianbates5@gmail.com', '12-60 George St', 'Fair Lawn', 'NJ', '07410', 'Google', '2022-12-09 20:55:36'),
(46, 'Brian', 'Bates', 'brianbate5@gmail.com', '12-60 George St', 'Fair Lawn', 'NJ', '07410', 'Google', '2022-12-09 20:56:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookcategories`
--
ALTER TABLE `bookcategories`
  ADD PRIMARY KEY (`bookCategoryID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`),
  ADD UNIQUE KEY `bookCode` (`bookCode`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookcategories`
--
ALTER TABLE `bookcategories`
  MODIFY `bookCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
