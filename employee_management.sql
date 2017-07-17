-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2017 at 02:28 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` double NOT NULL,
  `team` varchar(50) NOT NULL,
  `doj` date NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `salary`, `team`, `doj`, `email`) VALUES
(0101, 'suriyan', 15000, 'dolphin_ntrust', '2017-06-01', 'suriyan.s@kggroup.com'),
(0102, 'brighty', 20000, 'DBL', '2017-07-02', 'brighty.m@kggroup.com'),
(0103, 'hemanth', 50000, 'Lollipop', '2017-07-03', 'hemath.h@kggroup.com'),
(0104, 'prakash', 70000, 'SoloLearn', '2017-07-04', 'praksh.l@kggroup.com'),
(0105, 'krishna', 7000, 'kotlin', '2017-07-05', 'krishna@kggroup.com'),
(0106, 'deepika', 40000, 'Heroku', '2017-07-01', 'deepika.m@kggroup.com'),
(0107, 'ramya', 9000, 'Jacklin', '2017-07-02', 'ramya.a@kggroup.com'),
(0108, 'raja', 90000, 'Bride', '2017-07-01', 'raja.r@kggroup.com'),
(0109, 'manisha', 8000, 'Ubuntu', '2017-07-03', 'manisha.m@kggroup.com'),
(0110, 'manoj', 60000, 'DBL', '2017-07-02', 'manoj.m@kggroup.com');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `teamid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `teamid`) VALUES
(301, 'dolphin', 201),
(302, 'DBL_ntrust', 202),
(303, 'Android', 203),
(304, 'Java', 204),
(305, 'Android', 205),
(306, 'Robotics', 206),
(307, 'Jacklin_main', 207),
(308, 'Bride_main', 208),
(309, 'Ubuntu_main', 209),
(310, 'DBL_ntrust', 202);

-- --------------------------------------------------------

--
-- Table structure for table `projectemployee`
--

CREATE TABLE `projectemployee` (
  `s.no` int(11) NOT NULL,
  `employeeid` int(4) UNSIGNED NOT NULL,
  `projectid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectemployee`
--

INSERT INTO `projectemployee` (`s.no`, `employeeid`, `projectid`) VALUES
(1, 101, 301),
(2, 102, 302),
(3, 103, 303),
(4, 104, 304),
(5, 105, 305),
(6, 106, 306),
(7, 107, 307),
(8, 108, 308),
(9, 109, 309),
(10, 110, 310);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`) VALUES
(201, 'dolphin_ntrust'),
(202, 'DBL'),
(203, 'Lollipop'),
(204, 'SoloLearn'),
(205, 'kotlin'),
(206, 'Heroku'),
(207, 'Jacklin'),
(208, 'Bride'),
(209, 'Ubuntu'),
(210, 'DBL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_project_team` (`teamid`);

--
-- Indexes for table `projectemployee`
--
ALTER TABLE `projectemployee`
  ADD PRIMARY KEY (`s.no`),
  ADD KEY `FK__employee` (`employeeid`),
  ADD KEY `FK_projectemployee_project` (`projectid`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT for table `projectemployee`
--
ALTER TABLE `projectemployee`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_project_team` FOREIGN KEY (`teamid`) REFERENCES `team` (`id`);

--
-- Constraints for table `projectemployee`
--
ALTER TABLE `projectemployee`
  ADD CONSTRAINT `FK__employee` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FK_projectemployee_project` FOREIGN KEY (`projectid`) REFERENCES `project` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
