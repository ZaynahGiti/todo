-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 9, 2016 at 02:07 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11




--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int not null,
  `item` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `due_date` date NOT NULL,
  PRIMARY KEY (`id`)
  foreign key (category_id) references category(id));
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;


CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11)  NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;
--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, ‘personal’),
(2, ‘work’),
(3, ’study’, );

