-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2025 at 02:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `editor`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `content`, `updatedAt`) VALUES
(1, '<h1>Title</h1>this is 1st line thik but 2nd hand<div>this is 2nd line</div><div>Rafiu</div>', '2025-11-02 19:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `label` varchar(100) DEFAULT 'Auto-save'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `content`, `updatedAt`, `label`) VALUES
(1, 'dhfsi', '2025-11-02 11:20:49', 'Auto-save'),
(2, 'dhfsi<div>dhifej</div><div><br></div>', '2025-11-02 11:20:59', 'Auto-save'),
(3, 'dhfsi<div>dhifej</div><div>my Nmae is&nbsp;</div>', '2025-11-02 11:21:05', 'Auto-save'),
(4, 'dhfsi<div>dhifej</div><div>my Nmae is rafiu</div>', '2025-11-02 11:21:08', 'Auto-save'),
(5, 'dhfsi<div>dhifej</div><div>my Nmae is rafiu<br><br></div>', '2025-11-02 11:23:44', 'Auto-save'),
(6, 'dhfsi<div>dhifej</div><div>my Nmae is rafiu<br>this is my project</div>', '2025-11-02 11:23:50', 'Auto-save'),
(7, 'dhfsi<div>dhifej</div><div>my Nmae is rafiu<br>this is my project</div><div>hdfkje</div>', '2025-11-02 11:24:12', 'Auto-save'),
(8, '<div style=\"text-align: right;\">dhfsi</div><div style=\"text-align: right;\">dhifej</div><div><div style=\"text-align: right;\">my Nmae is rafiu</div><div style=\"text-align: right;\">this is my project</div></div><div style=\"text-align: right;\">hdfkje</div>', '2025-11-02 11:28:44', 'Auto-save'),
(9, '<div style=\"text-align: center;\">dhfsi</div><div style=\"text-align: center;\">dhifej</div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div>', '2025-11-02 11:28:46', 'Auto-save'),
(10, '<div style=\"text-align: center;\"><b>dhfsi</b></div><div style=\"text-align: center;\"><b>dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div>', '2025-11-02 11:28:51', 'Auto-save'),
(11, '<div style=\"text-align: center;\"><ol><li><b>dhfsi</b></li><li><b>dhifej</b></li></ol></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div>', '2025-11-02 11:28:55', 'Auto-save'),
(12, '<div style=\"text-align: center;\"><b>dhfsi</b><br><b>dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div>', '2025-11-02 11:28:58', 'Auto-save'),
(13, '<div style=\"text-align: center;\"><b style=\"\">dhfsi</b><br><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div>', '2025-11-02 11:29:01', 'Auto-save'),
(14, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div>', '2025-11-02 11:29:20', 'Auto-save'),
(15, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table>', '2025-11-02 11:29:46', 'Auto-save'),
(16, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><br>', '2025-11-02 17:52:34', 'Auto-save'),
(17, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li><br></li></ol>', '2025-11-02 17:52:37', 'Auto-save'),
(18, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li>ball</li><li>bat</li><li><br></li></ol>', '2025-11-02 17:52:40', 'Auto-save'),
(19, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li>ball</li><li>bat</li><li>stamp</li><li><br></li></ol>', '2025-11-02 17:52:44', 'Auto-save'),
(20, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li>ball</li><li>bat</li><li>stamp</li></ol>', '2025-11-02 17:52:46', 'Auto-save'),
(21, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li>ball</li><li>bat</li><li>stamp</li><li><br></li></ol>', '2025-11-02 18:16:08', 'Auto-save'),
(22, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li>ball</li><li>bat</li><li>stamp</li></ol>', '2025-11-02 18:16:10', 'Auto-save'),
(23, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li>ball</li><li>bat</li></ol>stamp', '2025-11-02 18:16:13', 'Auto-save'),
(24, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li>ball</li><li>bat</li><li>stamp</li><li><br></li></ol>', '2025-11-02 18:16:17', 'Auto-save'),
(25, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><table><tbody><tr><td>Cell 1</td><td>Cell 2</td></tr></tbody></table><ol><li>ball</li><li>bat</li><li>stamp</li></ol><br>', '2025-11-02 18:16:18', 'Auto-save'),
(26, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><br><ol><li>ball</li><li>bat</li><li>stamp</li></ol><br>', '2025-11-02 18:16:36', 'Auto-save'),
(27, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><ol><li>ball</li><li>bat</li><li>stamp</li></ol><br>', '2025-11-02 18:16:37', 'Auto-save'),
(28, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">dfwer</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><ol><li>ball</li><li>bat</li><li>stamp</li></ol><br>', '2025-11-02 18:19:28', 'Auto-save'),
(29, '', '2025-11-02 18:28:41', 'Auto-save'),
(30, 'xcdvx', '2025-11-02 18:28:45', 'Auto-save'),
(31, '', '2025-11-02 18:28:46', 'Auto-save'),
(32, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">dfwer</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><ol><li>ball</li><li>bat</li><li>stamp</li></ol><br>', '2025-11-02 18:28:48', 'Auto-save'),
(33, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">dfwer</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><ol><li>ball</li><li>bat</li><li>stamp</li></ol><br>', '2025-11-02 18:29:25', 'Auto-save'),
(34, '', '2025-11-02 18:29:31', 'Auto-save'),
(35, '', '2025-11-02 18:29:32', 'Auto-save'),
(36, '', '2025-11-02 18:29:32', 'Auto-save'),
(37, '', '2025-11-02 18:29:33', 'Auto-save'),
(38, '', '2025-11-02 18:32:17', 'Auto-save'),
(39, 'dfh<div>fgyhtf</div><div>vgyt</div>', '2025-11-02 18:33:23', 'Auto-save'),
(40, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">dfwer</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><ol><li>ball</li><li>bat</li><li>stamp</li></ol><table class=\"styled-table\"><tbody><tr><td>Row 1, Col 1</td><td>Row 1, Col 2</td><td>Row 1, Col 3</td></tr><tr><td>Row 2, Col 1</td><td>Row 2, Col 2</td><td>Row 2, Col 3</td></tr></tbody></table><br>', '2025-11-02 18:33:29', 'Auto-save'),
(41, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">dfwer</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><ol><li>ball</li><li>bat</li><li>stamp</li></ol><table class=\"styled-table\"><tbody><tr><td>Row 1, Col 1</td><td>Row 1, Col 2</td><td>Row 1, Col 3</td></tr><tr><td>Row 2, Col 1</td><td>Row 2, Col 2</td><td>Row 2, Col 3</td></tr></tbody></table><br>', '2025-11-02 18:33:39', 'Auto-save'),
(42, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">dfwer</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><ol><li>ball</li><li>bat</li><li>stamp</li></ol><table class=\"styled-table\"><tbody><tr><td>Row 1, Col 1</td><td>Row 1, Col 2</td><td>Row 1, Col 3</td></tr><tr><td>Row 2, Col 1</td><td>Row 2, Col 2</td><td>Row 2, Col 3</td></tr></tbody></table><br>', '2025-11-02 18:33:51', 'Auto-save'),
(43, '<div style=\"text-align: center;\"><h1><b style=\"\">dhfsi</b></h1><b style=\"\">dhifej</b></div><div><div style=\"text-align: center;\">my Nmae is rafiu</div><div style=\"text-align: center;\">dfwer</div><div style=\"text-align: center;\">this is my project</div></div><div style=\"text-align: center;\">hdfkje</div><ol><li>ball</li><li>bat</li><li>stamp</li></ol><table class=\"styled-table\"><tbody><tr><td>Row 1, Col 1</td><td>Row 1, Col 2</td><td>Row 1, Col 3</td></tr><tr><td>Row 2, Col 1</td><td>Row 2, Col 2</td><td>Row 2, Col 3</td></tr></tbody></table><br><div>xdfsdcfhj</div><div>cfgfc</div><div><br></div>', '2025-11-02 18:34:03', 'Auto-save'),
(44, '', '2025-11-02 18:34:07', 'Auto-save'),
(45, 'bvhnfg', '2025-11-02 18:34:37', 'Auto-save'),
(46, 'bvhnfg', '2025-11-02 18:34:50', 'Auto-save'),
(47, 'gdtfyhg', '2025-11-02 18:37:49', 'Auto-save'),
(48, '<br>', '2025-11-02 18:37:51', 'Auto-save'),
(49, 'Abdur Rafiu', '2025-11-02 18:37:57', 'Auto-save'),
(50, '', '2025-11-02 18:38:11', 'Auto-save'),
(51, '', '2025-11-02 18:38:11', 'Auto-save'),
(52, 'this is&nbsp;', '2025-11-02 18:42:45', 'Auto-save'),
(53, 'this is 1st line<div><br></div>', '2025-11-02 18:42:49', 'Auto-save'),
(54, 'this is 1st line<div>this is&nbsp;</div>', '2025-11-02 18:42:52', 'Auto-save'),
(55, 'this is 1st line<div>this is 2nd line</div>', '2025-11-02 18:42:56', 'Auto-save'),
(56, 'this is 1st l<div>this is 2nd line</div>', '2025-11-02 18:46:04', 'Auto-save'),
(57, 'this is 1s<div>this is 2nd line</div>', '2025-11-02 18:46:05', 'Auto-save'),
(58, 'this is 1st line thik but&nbsp;<div>this is 2nd line</div>', '2025-11-02 18:46:13', 'Auto-save'),
(59, 'this is 1st line thik but 2nd&nbsp;<div>this is 2nd line</div>', '2025-11-02 18:46:14', 'Auto-save'),
(60, 'this is 1st line thik but 2nd hand<div>this is 2nd line</div>', '2025-11-02 18:46:17', 'Auto-save'),
(61, 'hy', '2025-11-02 18:52:26', 'Auto-save'),
(62, 'this is 1st line thik but 2nd hand<div>this is 2nd line</div>', '2025-11-02 18:53:06', 'Auto-save'),
(63, 'this is 1st line thik but 2nd hand<div>this is 2nd line</div><div><br></div>', '2025-11-02 19:04:51', 'Auto-save'),
(64, '<div><br></div>this is 1st line thik but 2nd hand<div>this is 2nd line</div><div><br></div>', '2025-11-02 19:31:16', 'Auto-save'),
(65, '<div><br></div><h1>this is 1st line thik but 2nd hand</h1><div>this is 2nd line</div><div><br></div>', '2025-11-02 19:31:18', 'Auto-save'),
(66, '<div><br></div>this is 1st line thik but 2nd hand<div>this is 2nd line</div><div><br></div>', '2025-11-02 19:31:21', 'Auto-save'),
(67, '<div>Title</div>this is 1st line thik but 2nd hand<div>this is 2nd line</div><div><br></div>', '2025-11-02 19:31:26', 'Auto-save'),
(68, '<h2>Title</h2>this is 1st line thik but 2nd hand<div>this is 2nd line</div><div><br></div>', '2025-11-02 19:31:37', 'Auto-save'),
(69, '<h1>Title</h1>this is 1st line thik but 2nd hand<div>this is 2nd line</div><div><br></div>', '2025-11-02 19:31:40', 'Auto-save'),
(70, '<h1>Title</h1>this is 1st line thik but 2nd hand<div>this is 2nd line</div><div>Rafiu</div>', '2025-11-02 19:32:06', 'Auto-save');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
