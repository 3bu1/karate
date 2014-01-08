-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2013 at 07:14 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ksbka`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE IF NOT EXISTS `aboutus` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`title`, `content`) VALUES
('ksk <b>sports</b>', 'ksk sports');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`title`, `content`) VALUES
('<p style="margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">The martial arts movies of the 1960s and 1970s served to greatly increase the popularity of martial arts around the world, and in English the word<i>karate</i>&nbsp;began to be used in a generic way to refer to all striking-based&nbsp;<a href="http://en.wikipedia.org/wiki/Oriental" title="Oriental" class="mw-redirect" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none;">Oriental</a>&nbsp;martial arts.<sup id="cite_ref-10" class="reference" style="line-height: 1em; unicode-bidi: -webkit-isolate;"><a href="http://en.wikipedia.org/wiki/Karate#cite_note-10" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; white-space: nowrap; background-position: initial initial; background-repeat: initial initial;">[10]</a></sup>&nbsp;Karate schools began appearing across the world, catering to those with casual interest as well as those seeking a deeper study of the art.The martial arts movies of the 1960s and 1970s served to greatly increase the popularity of martial arts around the world, and in English the word<i>karate</i>&nbsp;began to be used in a generic way to refer to all striking-based&nbsp;<a href="http://en.wikipedia.org/wiki/Oriental" title="Oriental" class="mw-redirect" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none;">Oriental</a>&nbsp;martial arts.<sup id="cite_ref-10" class="reference" style="line-height: 1em; unicode-bidi: -webkit-isolate;"><a href="http://en.wikipedia.org/wiki/Karate#cite_note-10" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; white-space: nowrap; background-position: initial initial; background-repeat: initial initial;">[10]</a></sup>&nbsp;Karate schools began appearing across the world, catering to those with casual interest as well as those seeking a deeper study of the art.The martial arts movies of the 1960s and 1970s served to greatly increase the popularity of martial arts around the world, and in English the word<i>karate</i>&nbsp;began to be used in a generic way to refer to all striking-based&nbsp;<a href="http://en.wikipedia.org/wiki/Oriental" title="Oriental" class="mw-redirect" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none;">Oriental</a>&nbsp;martial arts.<sup id="cite_ref-10" class="reference" style="line-height: 1em; unicode-bidi: -webkit-isolate;"><a href="http://en.wikipedia.org/wiki/Karate#cite_note-10" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; white-space: nowrap; background-position: initial initial; background-repeat: initial initial;">[10]</a></sup>&nbsp;Karate schools began appearing across the world, catering to those with casual interest as well as those seeking a deeper study of the art.The martial arts movies of the 1960s and 1970s served to greatly increase the popularity of martial arts around the world, and in English the word<i>karate</i>&nbsp;began to be used in a generic way to refer to all striking-based&nbsp;<a href="http://en.wikipedia.org/wiki/Oriental" title="Oriental" class="mw-redirect" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none;">Oriental</a>&nbsp;martial arts.<sup id="cite_ref-10" class="reference" style="line-height: 1em; unicode-bidi: -webkit-isolate;"><a href="http://en.wikipedia.org/wiki/Karate#cite_note-10" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; white-space: nowrap; background-position: initial initial; background-repeat: initial initial;">[10]</a></sup>&nbsp;Karate schools began appearing across the world, catering to those with casual interest as well as those seeking a deeper study of the art.</p>', 'wordkarate began to be used in a generic way to refer to all striking-based Orie');

-- --------------------------------------------------------

--
-- Table structure for table `corporatetrainnig`
--

CREATE TABLE IF NOT EXISTS `corporatetrainnig` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagetext`
--

CREATE TABLE IF NOT EXISTS `imagetext` (
  `imginfo` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imagetext`
--

INSERT INTO `imagetext` (`imginfo`) VALUES
(''),
(''),
(''),
(''),
('sounterstrike sounterstrike sounterstrike sounterstrikesounterstrike sounterstrike sounterstrike sounterstrike sounterstrike sounterstrike sounterstrike'),
('submit'),
('uouadxc');

-- --------------------------------------------------------

--
-- Table structure for table `instructordetails`
--

CREATE TABLE IF NOT EXISTS `instructordetails` (
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `mail` longtext COLLATE utf8mb4_unicode_ci,
  `Password` longtext COLLATE utf8mb4_unicode_ci,
  `phonenumber` longtext COLLATE utf8mb4_unicode_ci,
  `Address` longtext COLLATE utf8mb4_unicode_ci,
  `City` longtext COLLATE utf8mb4_unicode_ci,
  `State` longtext COLLATE utf8mb4_unicode_ci,
  `Sex` longtext COLLATE utf8mb4_unicode_ci,
  `Belt` longtext COLLATE utf8mb4_unicode_ci,
  `Art` longtext COLLATE utf8mb4_unicode_ci,
  `InstructorAchievement` longtext COLLATE utf8mb4_unicode_ci,
  `Aboutinstructor` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructordetails`
--

INSERT INTO `instructordetails` (`name`, `mail`, `Password`, `phonenumber`, `Address`, `City`, `State`, `Sex`, `Belt`, `Art`, `InstructorAchievement`, `Aboutinstructor`) VALUES
('SHIVANI', 'shivani@gmail.com', 'ljjlas', '', 'plot no 62,champapet', 'hyderabad', 'ap', 'male', 'Black Don 2', 'Karate     ', 'state level bronze medal', ''),
('kanka raju', 'kankakarate@gmail.com', '123456', '9346127174', 'plot no 62,champapet', 'hyderabad', 'ap', 'male', 'Black Don 2', 'Karate', 'international champion', 'good coach');

-- --------------------------------------------------------

--
-- Table structure for table `karate`
--

CREATE TABLE IF NOT EXISTS `karate` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kungfu`
--

CREATE TABLE IF NOT EXISTS `kungfu` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE IF NOT EXISTS `map` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`title`, `content`) VALUES
('<span style="font-family: sans-serif; font-size: 13px; line-height: 19.1875px; background-color: rgb(255, 255, 255);">The martial arts movies of the 1960s and 1970s served to greatly increase the popularity of martial arts around the world, and in English the word</span><i style="font-family: sans-serif; font-size: 13px; line-height: 19.1875px; background-color: rgb(255, 255, 255);">karate</i><span style="font-family: sans-serif; font-size: 13px; line-height: 19.1875px; background-color: rgb(255, 255, 255);">&nbsp;began to be used in a generic way to refer to all striking-based&nbsp;</span><a href="http://en.wikipedia.org/wiki/Oriental" title="Oriental" class="mw-redirect" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 13px; line-height: 19.1875px;">Oriental</a><span style="font-family: sans-serif; font-size: 13px; line-height: 19.1875px; background-color: rgb(255, 255, 255);">&nbsp;martial arts.</span><sup id="cite_ref-10" class="reference" style="line-height: 1em; unicode-bidi: -webkit-isolate; font-family: sans-serif; background-color: rgb(255, 255, 255);"><a href="http://en.wikipedia.org/wiki/Karate#cite_note-10" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; white-space: nowrap; background-position: initial initial; background-repeat: initial initial;">[10]</a></sup><span style="font-family: sans-serif; font-size: 13px; line-height: 19.1875px; background-color: rgb(255, 255, 255);">&nbsp;Karate schools began appearing across the world, catering to those with casual interest as well as those seeking a deeper study of the art.</span>', 'Karate schools began appearing across the world, catering to those with casual i'),
('<span style="font-family: sans-serif; font-size: 13px; line-height: 19.1875px; background-color: rgb(255, 255, 255);">Karate schools began appearing across the world, catering to those with casual interest as well as those seeking a deeper study of the art.</span><span style="font-family: sans-serif; font-size: 13px; line-height: 19.1875px; background-color: rgb(255, 255, 255);">Karate schools began appearing across the world, catering to those with casual interest as well as those seeking a deeper study of the art.</span><span style="font-family: sans-serif; font-size: 13px; line-height: 19.1875px; background-color: rgb(255, 255, 255);">Karate schools began appearing across the world, catering to those with casual interest as well as those seeking a deeper study of the art.</span>', 'Karate '),
('this is a great movement in my life 2 make such a site.this is a great movement in my life 2 make such a site.this is a great movement in my life 2 make such a site.this is a great movement in my life 2 make such a site.this is a great movement in my life 2 make such a site.this is a great movement in my life 2 make such a site.this is a great movement in my life 2 make such a site.this is a great movement in my life 2 make such a site.this is a great movement in my life 2 make such a site.', 'about ksk ');

-- --------------------------------------------------------

--
-- Table structure for table `orphans`
--

CREATE TABLE IF NOT EXISTS `orphans` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personaltrainnig`
--

CREATE TABLE IF NOT EXISTS `personaltrainnig` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physicalfitness`
--

CREATE TABLE IF NOT EXISTS `physicalfitness` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE IF NOT EXISTS `programs` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`title`, `content`) VALUES
('<span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;in the 2015 European Games: The WKF President Antonio Espinós, in his&nbsp;</span><b style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">...</b><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);"></span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;1 - Jakarta: The Premier League event was a great success, with an e</span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;in the 2015 European Games: The WKF President Antonio Espinós, in his&nbsp;</span><b style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">...</b><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);"></span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;1 - Jakarta: The Premier League event was a great success, with an e</span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;in the 2015 European Games: The WKF President Antonio Espinós, in his&nbsp;</span><b style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">...</b><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);"></span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;1 - Jakarta: The Premier League event was a great success, with an e</span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;in the 2015 European Games: The WKF President Antonio Espinós, in his&nbsp;</span><b style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">...</b><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);"></span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;1 - Jakarta: The Premier League event was a great success, with an e</span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;in the 2015 European Games: The WKF President Antonio Espinós, in his&nbsp;</span><b style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">...</b><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);"></span><span style="font-weight: bold; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">Karate</span><span style="color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px; background-color: rgb(255, 255, 255);">&nbsp;1 - Jakarta: The Premier League event was a great success, with an e</span>', 'Karate ');

-- --------------------------------------------------------

--
-- Table structure for table `schoolclasses`
--

CREATE TABLE IF NOT EXISTS `schoolclasses` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `summercamps`
--

CREATE TABLE IF NOT EXISTS `summercamps` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taekwondo`
--

CREATE TABLE IF NOT EXISTS `taekwondo` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taekwondo`
--

INSERT INTO `taekwondo` (`title`, `content`) VALUES
('kjkluasc ioubhoAS oiuhoias&nbsp;', 'taikwondow');

-- --------------------------------------------------------

--
-- Table structure for table `testimage`
--

CREATE TABLE IF NOT EXISTS `testimage` (
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `imageinfo` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimage`
--

INSERT INTO `testimage` (`image`, `imageinfo`) VALUES
('1_1997815807.jpg', 'sounterstrike sounterstrike sounterstrike sounterstrikesounterstrike sounterstrike sounterstrike sounterstrike sounterstrike sounterstrike sounterstrike'),
('modern-war-wallpaper-download-1_1244254030.jpg', 'uouadxc'),
('smoke-over-skull-background_1624090087.jpg', 'skull');

-- --------------------------------------------------------

--
-- Table structure for table `thaichi`
--

CREATE TABLE IF NOT EXISTS `thaichi` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thaichi`
--

INSERT INTO `thaichi` (`title`, `content`) VALUES
('Karate in the 2015 European Games: The WKF President Antonio Espinós, in his ... Karate 1 - Jakarta: The Premier League event was a great success, with an e.Karate in the 2015 European Games: The WKF President Antonio Espinós, in his ... Karate 1 - Jakarta: The Premier League event was a great success, with an e.', 'wkf');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE IF NOT EXISTS `timetable` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weaponart`
--

CREATE TABLE IF NOT EXISTS `weaponart` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yogickarate`
--

CREATE TABLE IF NOT EXISTS `yogickarate` (
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
