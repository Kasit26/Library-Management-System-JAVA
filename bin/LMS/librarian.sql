-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 19, 2016 at 07:40 PM
-- Server version: 5.5.16
-- PHP Version: 5.4.0beta2-dev

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE IF NOT EXISTS `librarian` (
`id` int(5) NOT NULL AUTO_INCREMENT,
  `studentid`varchar(100) NOT NULL ,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id` , `studentid`, `name`, `password`, `course`, `stream`, `contact`) VALUES
(1, '001', 'Asit', 'asit', 'B.tech', 'CSE', '9998328238'),
(4, '002', 'Lipu', 'lipu', 'B.tech', 'CSE', '93823932823'),
(6, '002', 'Suj', 'suj', 'B.tech', 'MECH',  '92393282323');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;