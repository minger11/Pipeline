-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2015 at 08:23 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Pipe`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ActiveLeads`
--
CREATE TABLE IF NOT EXISTS `ActiveLeads` (
`leadNo` int(11)
,`leadDate` timestamp
,`leadComment` mediumtext
,`clientContact` varchar(30)
,`clientName` varchar(30)
,`clientSurname` varchar(30)
,`partnerNo` int(11)
,`departmentNo` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `AllSaleStages`
--
CREATE TABLE IF NOT EXISTS `AllSaleStages` (
`leadNo` int(11)
,`clientName` varchar(30)
,`clientSurname` varchar(30)
,`saleNo` int(11)
,`productNo` int(11)
,`productName` varchar(30)
,`value` int(11)
,`commission` int(11)
,`stageNo` int(11)
,`stageName` varchar(30)
,`stageDate` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `Currents`
--
CREATE TABLE IF NOT EXISTS `Currents` (
`saleNo` int(11)
,`stageNo` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `CurrentSaleStages`
--
CREATE TABLE IF NOT EXISTS `CurrentSaleStages` (
`leadNo` int(11)
,`clientName` varchar(30)
,`clientSurname` varchar(30)
,`saleNo` int(11)
,`productNo` int(11)
,`productName` varchar(30)
,`value` int(11)
,`commission` int(11)
,`stageNo` int(11)
,`stageName` varchar(30)
,`stageDate` date
);
-- --------------------------------------------------------

--
-- Table structure for table `dataface__modules`
--

CREATE TABLE IF NOT EXISTS `dataface__modules` (
  `module_name` varchar(255) NOT NULL,
  `module_version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dataface__mtimes`
--

CREATE TABLE IF NOT EXISTS `dataface__mtimes` (
  `name` varchar(255) NOT NULL,
  `mtime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataface__mtimes`
--

INSERT INTO `dataface__mtimes` (`name`, `mtime`) VALUES
('ActiveLeads', 1432405252),
('AllSaleStages', 1432351919),
('Currents', 1432351920),
('CurrentSaleStages', 1432351919),
('dataface__modules', 1432351920),
('dataface__mtimes', 1432352119),
('dataface__preferences', 1432352423),
('dataface__record_mtimes', 1432352423),
('dataface__version', 1432351920),
('Department', 1432358717),
('Lead', 1432353668),
('Partner', 1432405243),
('Pipeline', 1432351920),
('Product', 1432351920),
('Sale', 1432405277),
('SaleStage', 1432405368),
('Stage', 1432351920),
('Summary', 1432351920);

-- --------------------------------------------------------

--
-- Table structure for table `dataface__preferences`
--

CREATE TABLE IF NOT EXISTS `dataface__preferences` (
`pref_id` int(11) unsigned NOT NULL,
  `username` varchar(64) NOT NULL,
  `table` varchar(128) NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dataface__record_mtimes`
--

CREATE TABLE IF NOT EXISTS `dataface__record_mtimes` (
  `recordhash` varchar(32) NOT NULL,
  `recordid` varchar(255) NOT NULL,
  `mtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataface__record_mtimes`
--

INSERT INTO `dataface__record_mtimes` (`recordhash`, `recordid`, `mtime`) VALUES
('0039fcee62c9c88fe518e155ee99491d', 'Partner?partnerNo=298', 1432361790),
('0844c770baa3edcc70310f46b17a6c34', 'Partner?partnerNo=299', 1432362768),
('0eaa4c4d811b1b1004840078ab7b60d2', 'Partner?partnerNo=297', 1432360761),
('1cd28a4787a4b4fc859df0f6762fd1c0', 'Partner?partnerNo=303', 1432364248),
('1d4f9bca868ecdd3b64649242ce28d98', 'Partner?partnerNo=301', 1432363551),
('20c17b9328a9578fdd20ef0e92fbe80d', 'Partner?partnerNo=300', 1432363349),
('24a73889832b17071434d6904c77fe7d', 'Lead?leadNo=1643', 1432353668),
('3e196ea78ff842467d7a59872b062697', 'Partner?partnerNo=302', 1432364080),
('4d3c98be66c1ae20119f86ecf0f149d9', 'Partner?partnerNo=307', 1432366660),
('556236278c4722d85082a149d0b8c9fe', 'Department?departmentNo=145', 1432354089),
('6dcea9702a496c0281bcfd87ae870a3b', 'ActiveLeads?leadNo=1645', 1432360163),
('7a5a6f585d9404c5d820b3faa718a4a0', 'Partner?partnerNo=308', 1432405243),
('7ea89b815f0f475ae1169d705a6d5da9', 'Partner?partnerNo=306', 1432366370),
('a1a137e135a39e3c1f39cbca97989486', 'Partner?partnerNo=304', 1432366062),
('d4ef70170bf12695e230fe72907128e4', 'Department?departmentNo=146', 1432358718),
('dc16be3a5ef4666b7fc7ba082b7b65e7', 'Partner?partnerNo=295', 1432354103),
('f56c610c2578aaa95b69aaef96fb1e94', 'Partner?partnerNo=296', 1432358695),
('f831f0433ec8f2f644809adbf7fb9ade', 'ActiveLeads?leadNo=', 1432405252);

-- --------------------------------------------------------

--
-- Table structure for table `dataface__version`
--

CREATE TABLE IF NOT EXISTS `dataface__version` (
  `version` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataface__version`
--

INSERT INTO `dataface__version` (`version`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE IF NOT EXISTS `Department` (
`departmentNo` int(11) NOT NULL,
  `departmentName` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`departmentNo`, `departmentName`) VALUES
(48, 'Belconnen'),
(56, 'CFP'),
(45, 'Crookwell'),
(58, 'Dickson'),
(44, 'Fyshwick'),
(85, 'Innovators'),
(46, 'Jamison'),
(113, 'Kingston'),
(67, 'Kippax'),
(65, 'Manuka'),
(50, 'Mobile'),
(70, 'RSC'),
(142, 'RSP'),
(143, 'University'),
(146, 'UNIVERSITY OF SOUTHERN QUEENSL'),
(144, 'USQ'),
(141, 'WA'),
(77, 'Weston'),
(54, 'Woden');

-- --------------------------------------------------------

--
-- Table structure for table `Lead`
--

CREATE TABLE IF NOT EXISTS `Lead` (
`leadNo` int(11) NOT NULL,
  `leadDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `leadComment` mediumtext NOT NULL,
  `clientContact` varchar(30) NOT NULL,
  `clientName` varchar(30) NOT NULL,
  `clientSurname` varchar(30) NOT NULL,
  `partnerNo` int(11) DEFAULT NULL,
  `departmentNo` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1659 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lead`
--

INSERT INTO `Lead` (`leadNo`, `leadDate`, `leadComment`, `clientContact`, `clientName`, `clientSurname`, `partnerNo`, `departmentNo`) VALUES
(622, '2010-01-08 21:11:36', 'Mr Bokay would like to discuss finances with you ASAP.', '408945653', 'Kobi', 'Bokay', 201, 44),
(623, '2010-01-29 18:03:11', 'Derek is quite keen to chat with you.', 'DerekManson58@email.com', 'Derek', 'Manson', 49, 58),
(1026, '2009-10-10 20:40:51', 'Mr Shaw would like to discuss finances with you ASAP.', '427607551', 'Mystery', 'Shaw', NULL, 48),
(1027, '2010-01-23 20:03:57', 'Seanna is quite keen to chat with you.', '415184520', 'Seanna', 'Stanford', 50, 46),
(1028, '2010-02-17 18:55:08', 'Mr Parker would like to discuss finances with you ASAP.', '443789529', 'Michael', 'Parker', NULL, 56),
(1029, '2010-02-24 14:50:57', 'Robert is quite keen to chat with you.', '434515307', 'Robert', 'Fox', 51, 44),
(1030, '2009-10-07 17:59:52', 'Mr New would like to discuss finances with you ASAP.', 'WarwickNew48@email.com', 'Warwick', 'New', 52, 48),
(1232, '2010-02-08 18:57:43', 'Mr Gosling would like to discuss finances with you ASAP.', 'BrianGosling48@email.com', 'Brian', 'Gosling', 53, 48),
(1235, '2010-03-01 16:57:48', 'Mark is quite keen to chat with you.', 'MarkHarradine50@email.com', 'Mark', 'Harradine', 54, 50),
(1236, '2010-03-09 22:37:29', 'Mr Coombe would like to discuss finances with you ASAP.', '417700545', 'David', 'Coombe', NULL, 56),
(1237, '2010-03-07 20:51:39', 'Catrina is quite keen to chat with you.', '416036464', 'Catrina', 'Frazier', NULL, 56),
(1238, '2010-03-09 21:08:43', 'Mr Cullen would like to discuss finances with you ASAP.', '438654652', 'Jenny', 'Cullen', 184, 58),
(1241, '2010-03-18 15:42:24', 'Andrew is quite keen to chat with you.', '438667692', 'Andrew', 'Smith', 55, 44),
(1242, '2010-03-22 13:29:03', 'Mr Pillig would like to discuss finances with you ASAP.', '412508606', 'Rob', 'Pillig', NULL, 56),
(1243, '2010-02-24 16:03:16', 'Debbie is quite keen to chat with you.', '421577081', 'Debbie', 'Rogan', NULL, 56),
(1244, '2010-03-30 16:32:44', 'Mr Narayan would like to discuss finances with you ASAP.', 'PradeepNarayan56@email.com', 'Pradeep', 'Narayan', NULL, 56),
(1245, '2010-03-25 20:55:58', 'Derek is quite keen to chat with you.', 'DerekMilligan56@email.com', 'Derek', 'Milligan', NULL, 56),
(1246, '2010-03-29 21:07:22', 'Mr Muscat would like to discuss finances with you ASAP.', 'Muscat@email.com', 'Mystery', 'Muscat', NULL, NULL),
(1247, '2010-02-17 21:42:42', 'Jonathon is quite keen to chat with you.', '408944968', 'Jonathon', 'Medwin', 56, 44),
(1249, '2009-03-25 18:18:51', 'Rob  is quite keen to chat with you.', '424276592', 'Rob ', 'Hayes', 57, 44),
(1250, '2009-03-20 13:04:52', 'Mr Webber would like to discuss finances with you ASAP.', '443837342', 'Mystery', 'Webber', NULL, NULL),
(1251, '2009-05-05 19:28:45', 'Mystery is quite keen to chat with you.', 'Le Leu@email.com', 'Mystery', 'Le Leu', NULL, NULL),
(1252, '2009-06-03 18:57:36', 'Mr Bourke would like to discuss finances with you ASAP.', '442077827', 'Daniel', 'Bourke', 58, 54),
(1253, '2009-05-30 20:40:54', 'Mystery is quite keen to chat with you.', 'Paudel@email.com', 'Mystery', 'Paudel', NULL, NULL),
(1254, '2009-06-01 16:05:49', 'Mr Solomko would like to discuss finances with you ASAP.', '456349609', 'Matthew', 'Solomko', NULL, 56),
(1255, '2009-06-22 17:09:13', 'Tony is quite keen to chat with you.', 'TonyMcGrath54@email.com', 'Tony', 'McGrath', 58, 54),
(1256, '2009-06-12 15:44:04', 'Mr Quilty would like to discuss finances with you ASAP.', '420919008', 'Billy', 'Quilty', 184, 58),
(1257, '2009-06-06 14:46:39', 'Doug is quite keen to chat with you.', '435498007', 'Doug', 'Allan', 185, 44),
(1258, '2009-06-18 14:13:09', 'Mr Spears would like to discuss finances with you ASAP.', 'JennaSpears58@email.com', 'Jenna', 'Spears', 186, 58),
(1259, '2009-05-14 20:39:12', 'Elizabeth  is quite keen to chat with you.', '416215178', 'Elizabeth ', 'Mountain', 187, 58),
(1260, '2009-06-13 15:37:36', 'Mr Hobbs would like to discuss finances with you ASAP.', '415123649', 'Trevor', 'Hobbs', 188, 44),
(1262, '2009-06-20 13:41:46', 'Mr Banks would like to discuss finances with you ASAP.', 'AlanBanks48@email.com', 'Alan', 'Banks', 190, 48),
(1463, '2009-06-28 20:35:19', 'Mohammad is quite keen to chat with you.', 'MohammadAshari65@email.com', 'Mohammad', 'Ashari', 191, 65),
(1464, '2009-07-04 18:01:25', 'Mr Villinger would like to discuss finances with you ASAP.', '426383104', 'Stef', 'Villinger', 192, 58),
(1465, '2009-05-21 13:27:50', 'Alistair is quite keen to chat with you.', 'AlistairWilson67@email.com', 'Alistair', 'Wilson', 193, 67),
(1466, '2009-06-14 14:33:08', 'Mr Perakovic would like to discuss finances with you ASAP.', 'Jo Perakovic44@email.com', 'Jo ', 'Perakovic', 51, 44),
(1467, '2009-07-02 17:38:54', 'Joy is quite keen to chat with you.', '456338309', 'Joy', 'Devassy', 195, 48),
(1468, '2009-07-13 20:19:29', 'Mr Gardner would like to discuss finances with you ASAP.', '421097792', 'William', 'Gardner', 196, 70),
(1471, '2009-06-30 21:27:32', 'Mystery is quite keen to chat with you.', 'Wade@email.com', 'Mystery', 'Wade', NULL, NULL),
(1472, '2009-06-23 15:24:14', 'Mr Shailer would like to discuss finances with you ASAP.', '443866031', 'Conrad', 'Shailer', 200, 48),
(1474, '2009-07-22 14:30:48', 'Mr Wallace would like to discuss finances with you ASAP.', '433912232', 'Gavin', 'Wallace', 188, 44),
(1475, '2009-07-24 18:56:58', 'Paul is quite keen to chat with you.', '434851214', 'Paul', 'Beresford', 203, 77),
(1477, '2009-07-27 13:38:10', 'Doug is quite keen to chat with you.', '448203404', 'Doug', 'Oliver', 195, 48),
(1478, '2009-08-01 17:39:40', 'Mr Webb would like to discuss finances with you ASAP.', '401602536', 'Rowan', 'Webb', 191, 65),
(1479, '2009-07-14 14:23:55', 'Helen is quite keen to chat with you.', '442796868', 'Helen', 'Dunn', 239, 65),
(1480, '2009-07-31 18:57:01', 'Mr Stevenson would like to discuss finances with you ASAP.', '418810955', 'Catherine', 'Stevenson', 208, 48),
(1482, '2009-07-21 20:52:40', 'Mr Privett would like to discuss finances with you ASAP.', '429586396', 'Brian', 'Privett', 185, 44),
(1483, '2009-08-11 15:54:38', 'Sue is quite keen to chat with you.', 'SueThompson85@email.com', 'Sue', 'Thompson', 211, 85),
(1484, '2009-08-20 16:25:26', 'Mr Nadimi would like to discuss finances with you ASAP.', 'Nadimi44@email.com', 'Mystery', 'Nadimi', 51, 44),
(1485, '2009-08-25 14:58:29', 'Mystery is quite keen to chat with you.', '452326263', 'Mystery', 'Flynn', NULL, NULL),
(1486, '2009-08-25 20:03:51', 'Mr Dickinson would like to discuss finances with you ASAP.', '407559284', 'Wendy', 'Dickinson', 214, 46),
(1487, '2009-08-20 19:09:30', 'Carrie is quite keen to chat with you.', '452154050', 'Carrie', 'Jarman', 214, 46),
(1488, '2009-08-30 16:45:08', 'Mr Backhouse would like to discuss finances with you ASAP.', '413026807', 'James', 'Backhouse', 50, 46),
(1490, '2009-07-23 17:48:42', 'Mr Sutherland would like to discuss finances with you ASAP.', 'Sutherland58@email.com', 'Mystery', 'Sutherland', NULL, 58),
(1492, '2009-08-11 18:30:02', 'Mr Galvin would like to discuss finances with you ASAP.', 'MatthewGalvin44@email.com', 'Matthew', 'Galvin', 220, 44),
(1494, '2009-08-27 17:58:04', 'Mr Rucinski would like to discuss finances with you ASAP.', '450694499', 'Stan', 'Rucinski', 222, 65),
(1495, '2009-09-02 14:31:27', 'Wayne is quite keen to chat with you.', '434104355', 'Wayne', 'Humphries', 50, 46),
(1496, '2009-08-06 18:58:18', 'Mr Ettlin would like to discuss finances with you ASAP.', '454385783', 'Beat', 'Ettlin', 191, 65),
(1497, '2009-07-24 19:31:12', 'Vanessa is quite keen to chat with you.', '402639466', 'Vanessa', 'Kreibig', NULL, 56),
(1499, '2009-08-02 17:17:46', 'Anthony is quite keen to chat with you.', '401380946', 'Anthony', 'Wood', 50, 46),
(1500, '2009-09-02 19:13:02', 'Mr Hutchinson would like to discuss finances with you ASAP.', '441223125', 'Ben', 'Hutchinson', 214, 46),
(1501, '2009-08-19 21:23:56', 'Mystery is quite keen to chat with you.', 'Cobley67@email.com', 'Mystery', 'Cobley', NULL, 67),
(1502, '2009-08-23 16:45:18', 'Mr Buckmaster would like to discuss finances with you ASAP.', '443717294', 'David', 'Buckmaster', 51, 44),
(1503, '2009-08-04 21:37:16', 'Mita is quite keen to chat with you.', '456730555', 'Mita', 'Pota', 231, 48),
(1504, '2009-05-14 15:06:33', 'Mr Edwards would like to discuss finances with you ASAP.', '405142132', 'Edward', 'Edwards', 233, 54),
(1506, '2009-09-03 18:34:13', 'Mr Amador would like to discuss finances with you ASAP.', 'MariaAmador54@email.com', 'Maria', 'Amador', 233, 54),
(1507, '2009-08-23 16:45:08', 'Jo is quite keen to chat with you.', 'JoAuzmendi46@email.com', 'Jo', 'Auzmendi', 50, 46),
(1508, '2009-08-29 18:54:17', 'Mr Lee-Foster would like to discuss finances with you ASAP.', 'IdaLee-Foster44@email.com', 'Ida', 'Lee-Foster', 57, 44),
(1509, '2009-09-21 14:13:53', 'Arthur is quite keen to chat with you.', 'ArthurUtting46@email.com', 'Arthur', 'Utting', 236, 46),
(1513, '2009-09-22 17:01:44', 'Brenden is quite keen to chat with you.', '447598405', 'Brenden', 'Mooney', 50, 46),
(1514, '2009-09-27 18:45:56', 'Mr Martinez would like to discuss finances with you ASAP.', 'EdMartinez113@email.com', 'Ed', 'Martinez', 239, 113),
(1515, '2009-09-15 13:23:52', 'Marjorie is quite keen to chat with you.', '415284042', 'Marjorie', 'McGovern', 240, 67),
(1516, '2009-10-07 19:00:13', 'Mr Ramaneshwaran would like to discuss finances with you ASAP.', '439363574', 'Daniel', 'Ramaneshwaran', 214, 46),
(1517, '2009-10-15 16:49:47', 'Jeff is quite keen to chat with you.', '419095779', 'Jeff', 'Seagrove', 214, 46),
(1518, '2009-09-21 19:33:22', 'Mr Hogan would like to discuss finances with you ASAP.', '402150072', 'Neryl', 'Hogan', 243, 67),
(1519, '2009-10-13 13:45:21', 'David is quite keen to chat with you.', 'DavidMeale44@email.com', 'David', 'Meale', 188, 44),
(1521, '2009-10-08 15:22:04', 'Mystery is quite keen to chat with you.', '452946994', 'Mystery', 'Chan', 288, 67),
(1522, '2009-10-17 20:08:06', 'Mr Rowland would like to discuss finances with you ASAP.', '449353477', 'David', 'Rowland', 188, 44),
(1523, '2009-10-25 21:36:48', 'Selvarajah is quite keen to chat with you.', '416878343', 'Selvarajah', 'Dhevarajah', 246, 44),
(1524, '2009-10-28 20:52:32', 'Mr Thistleton would like to discuss finances with you ASAP.', 'Jack Thistleton48@email.com', 'Jack ', 'Thistleton', 247, 48),
(1525, '2009-08-16 16:06:10', 'Robert is quite keen to chat with you.', '438743862', 'Robert', 'Hawke', NULL, 48),
(1527, '2009-10-05 17:50:50', 'PJ is quite keen to chat with you.', 'PJMcGrath67@email.com', 'PJ', 'McGrath', 288, 67),
(1528, '2009-10-19 13:37:21', 'Mr Van Dyke would like to discuss finances with you ASAP.', 'JosephVan Dyke44@email.com', 'Joseph', 'Van Dyke', 249, 44),
(1529, '2009-11-01 21:18:36', 'Adrian is quite keen to chat with you.', 'AdrianHanratty44@email.com', 'Adrian', 'Hanratty', 51, 44),
(1530, '2009-10-16 13:08:37', 'Mr McGowan would like to discuss finances with you ASAP.', '431665400', 'Hugh', 'McGowan', 247, 67),
(1531, '2009-10-27 19:50:23', 'Jo is quite keen to chat with you.', 'JoHarrop46@email.com', 'Jo', 'Harrop', 214, 46),
(1532, '2009-10-30 19:42:32', 'Mr Cordy would like to discuss finances with you ASAP.', 'JamesCordy44@email.com', 'James', 'Cordy', 249, 44),
(1533, '2009-11-09 17:53:55', 'Gordon is quite keen to chat with you.', '411330257', 'Gordon', 'Todd', NULL, 56),
(1534, '2009-09-11 19:27:39', 'Mr Raymond would like to discuss finances with you ASAP.', '406490693', 'Steve', 'Raymond', 255, 70),
(1535, '2009-11-06 22:49:05', 'Brett is quite keen to chat with you.', 'BrettSmith67@email.com', 'Brett', 'Smith', 247, 67),
(1537, '2009-11-10 17:01:52', 'Michael is quite keen to chat with you.', 'MichaelBetts44@email.com', 'Michael', 'Betts', 249, 44),
(1538, '2009-11-15 17:34:13', 'Mr Skellen would like to discuss finances with you ASAP.', 'RichardSkellen44@email.com', 'Richard', 'Skellen', 57, 44),
(1540, '2009-11-16 18:15:45', 'Mr Hall-Villiers would like to discuss finances with you ASAP.', '406484307', 'Andrew', 'Hall-Villiers', 188, 44),
(1541, '2009-11-30 22:43:16', 'Nikolaus is quite keen to chat with you.', 'NikolausFominas48@email.com', 'Nikolaus', 'Fominas', 261, 48),
(1546, '2009-12-10 15:38:03', 'Mr D''Ambrosio would like to discuss finances with you ASAP.', 'FabiolaD''Ambrosio50@email.com', 'Fabiola', 'D''Ambrosio', 263, 50),
(1548, '2009-12-09 14:31:19', 'Mr Woodley would like to discuss finances with you ASAP.', 'BrittaWoodley50@email.com', 'Britta', 'Woodley', 264, 50),
(1551, '2009-12-23 17:38:06', 'Rebecca is quite keen to chat with you.', '436678792', 'Rebecca', 'Jenkins', 249, 44),
(1552, '2009-12-07 15:33:29', 'Mr Morris would like to discuss finances with you ASAP.', '413851465', 'Athol', 'Morris', 267, 141),
(1556, '2009-12-08 16:44:50', 'Mr Bennetts would like to discuss finances with you ASAP.', 'TrevorBennetts48@email.com', 'Trevor', 'Bennetts', 271, 48),
(1558, '2009-12-09 19:16:52', 'Mr Stevens would like to discuss finances with you ASAP.', 'IanStevens44@email.com', 'Ian', 'Stevens', 56, 44),
(1560, '2009-12-04 16:41:46', 'Mr Moore would like to discuss finances with you ASAP.', 'RobertMoore44@email.com', 'Robert', 'Moore', 57, 44),
(1561, '2010-01-05 19:25:28', 'Veli is quite keen to chat with you.', 'VeliKovaleinen48@email.com', 'Veli', 'Kovaleinen', 271, 48),
(1562, '2010-01-04 15:12:34', 'Mr Evans would like to discuss finances with you ASAP.', 'BernardEvans56@email.com', 'Bernard', 'Evans', NULL, 56),
(1563, '2010-01-12 14:24:18', 'Paula is quite keen to chat with you.', '425044049', 'Paula', 'Leskinen', 233, 56),
(1564, '2010-01-15 14:19:23', 'Mr Gair would like to discuss finances with you ASAP.', '421784058', 'Scott', 'Gair', 249, 44),
(1565, '2010-01-14 21:40:13', 'Matt is quite keen to chat with you.', 'MattCarton67@email.com', 'Matt', 'Carton', 288, 67),
(1566, '2009-12-25 14:13:22', 'Mr Peacock would like to discuss finances with you ASAP.', '451982023', 'Miriam', 'Peacock', 275, 70),
(1567, '2009-11-27 14:29:25', 'David is quite keen to chat with you.', 'DavidSeddon48@email.com', 'David', 'Seddon', 53, 48),
(1569, '2010-01-03 17:47:35', 'Graham is quite keen to chat with you.', 'GrahamWells48@email.com', 'Graham', 'Wells', 53, 48),
(1570, '2010-01-18 20:33:44', 'Mr Patafta would like to discuss finances with you ASAP.', 'ZekPatafta56@email.com', 'Zek', 'Patafta', 233, 56),
(1571, '2010-01-18 19:57:50', 'Bo is quite keen to chat with you.', '443309831', 'Bo', 'Long', 233, 56),
(1572, '2010-01-16 17:30:51', 'Mr Greig would like to discuss finances with you ASAP.', 'ElizabethGreig50@email.com', 'Elizabeth', 'Greig', 264, 50),
(1573, '2010-01-30 20:29:20', 'Dean is quite keen to chat with you.', 'DeanPartridge65@email.com', 'Dean', 'Partridge', 191, 65),
(1575, '2010-01-20 21:15:51', 'Carol is quite keen to chat with you.', 'CarolDivall56@email.com', 'Carol', 'Divall', NULL, 56),
(1576, '2010-01-28 17:10:53', 'Mr O''Leary would like to discuss finances with you ASAP.', 'AnthonyO''Leary44@email.com', 'Anthony', 'O''Leary', 56, 44),
(1577, '2010-01-19 22:50:05', 'Geoff is quite keen to chat with you.', '412382463', 'Geoff', 'Hutchins', 52, 48),
(1578, '2010-02-03 22:01:04', 'Mr Victory would like to discuss finances with you ASAP.', '410266064', 'Neil', 'Victory', 52, 48),
(1581, '2010-01-30 14:31:38', 'Patricia is quite keen to chat with you.', '430478243', 'Patricia', 'Fox', 288, 67),
(1583, '2010-01-29 14:34:59', 'Ida is quite keen to chat with you.', '440949211', 'Ida', 'Major', 53, 48),
(1586, '2010-02-03 15:01:01', 'Mr Idnurm would like to discuss finances with you ASAP.', '403769613', 'Prillie', 'Idnurm', 291, 46),
(1587, '2010-02-02 16:55:08', 'Ross is quite keen to chat with you.', 'RossBowden56@email.com', 'Ross', 'Bowden', NULL, 56),
(1589, '2010-02-11 20:17:53', 'Carmel is quite keen to chat with you.', '408169097', 'Carmel', 'Hannah', NULL, 56),
(1591, '2010-02-05 22:40:08', 'David is quite keen to chat with you.', '431492954', 'David', 'Oliver', NULL, 56),
(1592, '2010-02-17 16:43:21', 'Mr Lawrentin would like to discuss finances with you ASAP.', '418499355', 'Nicholas', 'Lawrentin', 214, 46),
(1594, '2010-01-22 14:04:26', 'Mr Snell would like to discuss finances with you ASAP.', '412717637', 'Leonard', 'Snell', NULL, 56),
(1595, '2010-02-15 17:02:45', 'Dmitar is quite keen to chat with you.', '423983663', 'Dmitar', 'Butrovski', 264, 50),
(1596, '2010-02-05 20:10:05', 'Mr Kennett would like to discuss finances with you ASAP.', '436942239', 'Heather', 'Kennett', 50, 46),
(1597, '2010-02-21 14:17:48', 'Pat is quite keen to chat with you.', '415538070', 'Pat', 'Ryan', 288, 67),
(1598, '2010-02-15 17:32:10', 'Mr Mathews would like to discuss finances with you ASAP.', 'PaulMathews56@email.com', 'Paul', 'Mathews', NULL, 56),
(1599, '2010-01-20 21:52:10', 'Mystery is quite keen to chat with you.', 'Dixon67@email.com', 'Mystery', 'Dixon', NULL, 67),
(1600, '2010-02-14 18:05:23', 'Mr Cotterill would like to discuss finances with you ASAP.', '406276671', 'Pat', 'Cotterill', 233, 56),
(1601, '2010-02-20 15:05:53', 'Wayne is quite keen to chat with you.', 'WayneGreenwood56@email.com', 'Wayne', 'Greenwood', NULL, 56),
(1603, '2010-02-11 21:36:14', 'Greg is quite keen to chat with you.', 'GregCameron67@email.com', 'Greg', 'Cameron', 288, 67),
(1604, '2010-02-15 21:35:14', 'Mr Friend would like to discuss finances with you ASAP.', '448154239', 'Bev', 'Friend', 288, 67),
(1605, '2010-02-14 17:02:01', 'Paul is quite keen to chat with you.', '451462858', 'Paul', 'Evans', NULL, 56),
(1607, '2010-02-11 15:46:06', 'Gordon is quite keen to chat with you.', 'GordonSteward48@email.com', 'Gordon', 'Steward', 290, 48),
(1608, '2010-02-28 16:52:06', 'Mr Parkinson would like to discuss finances with you ASAP.', 'JamieParkinson46@email.com', 'Jamie', 'Parkinson', 291, 46),
(1609, '2010-02-15 18:53:10', 'Mark is quite keen to chat with you.', '405005703', 'Mark', 'Parkinson', 291, 46),
(1610, '2010-03-07 19:28:18', 'Mr Rattur would like to discuss finances with you ASAP.', '431768591', 'John', 'Rattur', NULL, 56),
(1611, '2010-03-03 15:53:36', 'Jack  is quite keen to chat with you.', '405857379', 'Jack ', 'Ryan', NULL, NULL),
(1612, '2010-02-27 19:24:49', 'Mr Leslie would like to discuss finances with you ASAP.', 'ChrisLeslie46@email.com', 'Chris', 'Leslie', 291, 46),
(1613, '2010-02-20 17:48:36', 'John is quite keen to chat with you.', 'JohnLove46@email.com', 'John', 'Love', 214, 46),
(1616, '2010-03-04 19:23:49', 'Mr Whitely would like to discuss finances with you ASAP.', '404574461', 'John', 'Whitely', NULL, 56),
(1617, '2010-02-17 17:29:36', 'Max is quite keen to chat with you.', 'MaxHeath48@email.com', 'Max', 'Heath', 53, 48),
(1619, '2010-03-03 16:22:11', 'Rod is quite keen to chat with you.', 'RodHoran56@email.com', 'Rod', 'Horan', NULL, 56),
(1620, '2010-03-10 14:47:29', 'Mr Shaw would like to discuss finances with you ASAP.', '411804880', 'Judith', 'Shaw', NULL, 56),
(1621, '2010-02-26 19:47:34', 'Bruce is quite keen to chat with you.', '429901428', 'Bruce', 'Mills', NULL, 56),
(1622, '2010-03-07 17:28:18', 'Mr Townsend would like to discuss finances with you ASAP.', '405337372', 'Jill', 'Townsend', NULL, 56),
(1623, '2010-03-18 19:42:24', 'Paul is quite keen to chat with you.', '424690305', 'Paul', 'Pringle', NULL, 56),
(1644, '2015-05-23 05:25:35', 'SRECKO WANTS TO CHAT', '0403524409', 'SRECKO', 'HOWARD', 296, 146),
(1645, '2015-05-23 05:26:28', 'HELLO MATT WANTS TO DISCUSS FINANCE', 'MATT@ERMAIL.COM', 'MATT', 'INGERSOLE', 296, 146),
(1646, '2015-05-23 05:47:42', 'WOULD LIKE TO DISCUSS AN INHERITANCE WITH YOU', '5556667895', 'MICHAEL', 'JONES', 296, 146),
(1647, '2015-05-23 05:48:15', 'HE JUST WANTS TO MAKE YOU SMILE', 'SMILE@EMAIL.COM', 'SMILEY', 'ANDERSON', 296, 146),
(1648, '2015-05-23 05:59:37', 'SPEAK TO JOHN', '04051587896', 'JOHN', 'MIKEL', 297, 146),
(1649, '2015-05-23 06:16:36', 'HE WANTS TO CHAT', '0458789645', 'PETER', 'MAN', 298, 146),
(1650, '2015-05-23 06:32:53', 'CHAT WITH HIM', 'MATT@EMAIL.COM', 'PAUL', 'MONSTER', 299, 146),
(1651, '2015-05-23 06:42:35', 'TALK TO JOSH', 'JOSH@EMAIL.COM', 'JOSH', 'PYKE', 300, 146),
(1658, '2015-05-23 18:20:52', 'CALL HER', '0402514789', 'LISA', 'SIMPSON', 308, 146);

-- --------------------------------------------------------

--
-- Table structure for table `Partner`
--

CREATE TABLE IF NOT EXISTS `Partner` (
`partnerNo` int(11) NOT NULL,
  `partnerName` varchar(30) NOT NULL,
  `partnerSurname` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Partner`
--

INSERT INTO `Partner` (`partnerNo`, `partnerName`, `partnerSurname`) VALUES
(211, 'Abraham', 'Tang'),
(50, 'Adam', 'Hemsworth'),
(267, 'Alex', 'Lowther'),
(58, 'Amit', 'Gupta'),
(263, 'Amy', 'Beattie'),
(291, 'Andrew', 'McFadzean'),
(190, 'Angeline', 'Kalina'),
(249, 'Angus', 'Hewitt'),
(193, 'Beverley', 'O''Brien'),
(239, 'Bill', 'Barnett'),
(261, 'Carly', 'Harper'),
(271, 'Carmel', 'Gioffre'),
(268, 'Chris', 'Davy'),
(54, 'Chris', 'Gauci'),
(301, 'CURLY', 'ROGERS'),
(201, 'Danielle', 'Keir'),
(57, 'Dorothy', 'Fisher'),
(200, 'Geoff', 'McDade'),
(292, 'Helen', 'Jones'),
(246, 'Helen', 'Parkes'),
(297, 'HOGAN', 'HILLS'),
(51, 'Holly', 'Peck'),
(185, 'Jenna', 'Brandon'),
(53, 'Jenny', 'Summers'),
(184, 'Jo', 'Kavouris'),
(243, 'Julie', 'Vanags'),
(186, 'Kurt', 'Pollard'),
(290, 'Larissa', 'Davis'),
(187, 'Leanne', 'Fraser'),
(214, 'Libby', 'Bryan'),
(231, 'Lily', 'Velevska'),
(237, 'Lucila', 'Gulle'),
(255, 'Luke', 'Freeman'),
(208, 'Marcella', 'Anderson'),
(302, 'MARGE ', 'SIMPSON'),
(275, 'Melissa', 'Martin'),
(188, 'Melissa', 'Millard'),
(49, 'Michelle', 'Milner'),
(264, 'Mike', 'Dunbar'),
(191, 'Mousumi', 'Gautam'),
(306, 'MR ', 'SMITHERS'),
(222, 'Naomi', 'Sheehan'),
(220, 'Narelle', 'Sevil'),
(192, 'Natasha', 'Roache'),
(247, 'Nathan', 'Merritt'),
(195, 'Niki', 'Manchanda'),
(203, 'Patricia', 'Winne'),
(300, 'PETER', 'MANNY'),
(233, 'Raj', 'Bhatia'),
(299, 'ROGER', 'HARRIET'),
(265, 'Rosie', 'Dale'),
(55, 'Sam', 'Covel'),
(298, 'SAM', 'HOGA'),
(296, 'SAM', 'SMITH'),
(240, 'Samantha', 'Taylor'),
(294, 'Sarah', 'Selam'),
(52, 'Shirley', 'Good'),
(308, 'SMILEY', 'PITT'),
(307, 'SMILEY', 'ROGERS'),
(288, 'Steve ', 'Finlay'),
(56, 'Terry', 'Kinnane'),
(304, 'TWIGGY', 'FROST'),
(196, 'Vera', 'Santana'),
(236, 'Vinka', 'Bodrozic');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Pipeline`
--
CREATE TABLE IF NOT EXISTS `Pipeline` (
`leadNo` int(11)
,`clientName` varchar(30)
,`clientSurname` varchar(30)
,`saleNo` int(11)
,`productNo` int(11)
,`productName` varchar(30)
,`value` int(11)
,`commission` int(11)
,`stageNo` int(11)
,`stageName` varchar(30)
,`Proposal_Date` date
,`Application_Date` date
,`Complete_Date` date
);
-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE IF NOT EXISTS `Product` (
`productNo` int(11) NOT NULL,
  `productName` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`productNo`, `productName`) VALUES
(1, 'Insurance'),
(2, 'Investment');

-- --------------------------------------------------------

--
-- Table structure for table `Sale`
--

CREATE TABLE IF NOT EXISTS `Sale` (
`saleNo` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `commission` int(11) NOT NULL,
  `productNo` int(11) NOT NULL,
  `leadNo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sale`
--

INSERT INTO `Sale` (`saleNo`, `value`, `commission`, `productNo`, `leadNo`) VALUES
(1, 131000, 1572, 2, 1260),
(2, 200, 4, 2, 1477),
(3, 100000, 2000, 2, 1494),
(4, 1234, 1234, 1, 1494),
(5, 2100, 2100, 1, 1518),
(6, 225000, 2250, 2, 1518),
(7, 12000, 166, 2, 1594),
(8, 14692, 188, 2, 1605),
(9, 300, 300, 1, 1254),
(10, 340, 340, 1, 1467),
(11, 20000, 364, 2, 1468),
(12, 21000, 382, 2, 1249),
(13, 400, 400, 1, 1480),
(14, 492, 492, 1, 1528),
(15, 500, 500, 1, 1468),
(16, 50000, 500, 2, 1558),
(17, 540, 540, 1, 1484),
(18, 57000, 599, 2, 1474),
(19, 636, 636, 1, 1253),
(20, 694, 694, 1, 1573),
(21, 720, 720, 1, 1488),
(22, 40000, 728, 2, 1257),
(23, 60000, 750, 2, 1578),
(24, 78000, 780, 2, 1027),
(25, 792, 792, 1, 1485),
(26, 792, 792, 1, 1252),
(27, 800, 800, 1, 1027),
(28, 804, 804, 1, 1519),
(29, 816, 816, 1, 1258),
(30, 840, 840, 1, 1471),
(31, 852, 852, 1, 1463),
(32, 864, 864, 1, 1524),
(33, 864, 864, 1, 1540),
(34, 876, 876, 1, 1521),
(35, 111000, 910, 2, 1472),
(36, 912, 912, 1, 1595),
(37, 962, 962, 1, 1464),
(38, 979, 979, 1, 1496),
(39, 984, 984, 1, 1522),
(40, 984, 984, 1, 1551),
(41, 25000, 1000, 2, 1552),
(42, 88000, 1003, 2, 1563),
(43, 1008, 1008, 1, 1531),
(44, 1020, 1020, 1, 1591),
(45, 70000, 1029, 2, 1465),
(46, 1044, 1044, 1, 1500),
(47, 1092, 1092, 1, 1538),
(48, 1104, 1104, 1, 1516),
(49, 1116, 1116, 1, 1514),
(50, 1152, 1152, 1, 1527),
(51, 60000, 1152, 2, 1617),
(52, 1176, 1176, 1, 1611),
(53, 79000, 1193, 2, 1608),
(54, 1200, 1200, 1, 1509),
(55, 1200, 1200, 1, 1592),
(56, 1224, 1224, 1, 1478),
(57, 89000, 1228, 2, 1245),
(58, 250000, 1250, 2, 1028),
(59, 139000, 1251, 2, 1562),
(60, 68000, 1278, 2, 1246),
(61, 1296, 1296, 1, 1486),
(62, 50000, 1300, 2, 1250),
(63, 100000, 1300, 2, 1578),
(64, 163000, 1337, 2, 1621),
(65, 1332, 1332, 1, 1517),
(66, 163000, 1337, 2, 1621),
(67, 1344, 1344, 1, 1564),
(68, 53000, 1346, 2, 1561),
(69, 150000, 1350, 2, 1570),
(70, 113000, 1356, 2, 1513),
(71, 1380, 1380, 1, 622),
(72, 1380, 1380, 1, 1256),
(73, 1392, 1392, 1, 1496),
(74, 40000, 1400, 2, 1467),
(75, 1404, 1404, 1, 1548),
(76, 103000, 1421, 2, 1607),
(77, 1440, 1440, 1, 1483),
(78, 80000, 1440, 2, 1601),
(79, 1500, 1500, 1, 1474),
(80, 50000, 1500, 2, 1502),
(81, 150000, 1500, 2, 1525),
(82, 184000, 1509, 2, 1575),
(83, 150000, 1515, 2, 1586),
(84, 85000, 1522, 2, 1244),
(85, 60000, 1530, 2, 1497),
(86, 187000, 1533, 2, 1575),
(87, 105000, 1554, 2, 1237),
(88, 1560, 1560, 1, 1475),
(89, 1560, 1560, 1, 1492),
(90, 1560, 1560, 1, 1572),
(91, 123000, 1562, 2, 1598),
(92, 1572, 1572, 1, 1534),
(93, 70000, 1589, 2, 1503),
(94, 116000, 1601, 2, 1612),
(95, 1634, 1634, 1, 1523),
(96, 144000, 1642, 2, 1620),
(98, 120000, 1656, 2, 1594),
(99, 191000, 1662, 2, 1232),
(100, 191000, 1662, 2, 1232),
(101, 370000, 1702, 2, 1504),
(102, 216000, 1750, 2, 1571),
(103, 157000, 1743, 2, 1530),
(104, 139212, 1754, 2, 1236),
(105, 137000, 1754, 2, 1605),
(106, 140000, 1764, 2, 1477),
(107, 120000, 1764, 2, 1507),
(108, 1764, 1764, 1, 1487),
(109, 71000, 1789, 2, 1241),
(110, 142000, 1789, 2, 1566),
(111, 60000, 1800, 2, 1480),
(112, 1800, 1800, 1, 1495),
(113, 137000, 1795, 2, 1541),
(114, 1812, 1812, 1, 1537),
(115, 1812, 1812, 1, 1565),
(116, 267500, 1873, 2, 1581),
(117, 28000, 1876, 2, 1558),
(118, 1884, 1884, 1, 1029),
(119, 1890, 1890, 1, 1479),
(120, 150000, 1890, 2, 1515),
(122, 140000, 1890, 2, 1583),
(123, 110578, 1902, 2, 1490),
(124, 120000, 1932, 2, 1259),
(125, 1980, 1980, 1, 1532),
(126, 105000, 1985, 2, 1589),
(127, 110000, 1980, 2, 1601),
(128, 166000, 1992, 2, 1556),
(129, 100000, 2000, 2, 1255),
(130, 137000, 2000, 2, 1508),
(131, 285000, 1995, 2, 1560),
(132, 250000, 2000, 2, 1576),
(133, 2076, 2076, 1, 1535),
(134, 137702, 2079, 2, 1619),
(135, 170000, 2108, 2, 1242),
(136, 120000, 2100, 2, 1604),
(137, 141000, 2129, 2, 1609),
(138, 107000, 2140, 2, 1482),
(139, 2140, 2140, 1, 1558),
(140, 173000, 2180, 2, 1616),
(141, 175000, 2205, 2, 1587),
(142, 184000, 2208, 2, 1026),
(143, 188000, 2218, 2, 1622),
(144, 2244, 2244, 1, 1506),
(145, 2280, 2280, 1, 623),
(146, 120000, 2304, 2, 1617),
(147, 100000, 2330, 2, 1569),
(148, 95000, 2347, 2, 1610),
(149, 2356, 2356, 1, 1027),
(150, 2400, 2400, 1, 1529),
(151, 210000, 2478, 2, 1622),
(152, 170000, 2499, 2, 1501),
(153, 2500, 2500, 1, 1235),
(154, 260000, 2574, 2, 1603),
(155, 185000, 2609, 2, 1238),
(156, 210000, 2646, 2, 1600),
(157, 180000, 2700, 2, 1599),
(158, 224000, 2710, 2, 1243),
(159, 260000, 2756, 2, 1541),
(160, 230000, 2760, 2, 1556),
(161, 313885, 2762, 2, 1613),
(162, 320000, 3008, 2, 1030),
(163, 3000, 3000, 1, 1466),
(164, 300000, 3000, 2, 1499),
(165, 3156, 3156, 1, 1251),
(166, 3324, 3324, 1, 1597),
(167, 3400, 3400, 1, 1028),
(168, 270000, 3429, 2, 1577),
(169, 200000, 3500, 2, 1604),
(170, 3600, 3600, 1, 1546),
(171, 380000, 3800, 2, 1567),
(172, 320000, 4000, 2, 1623),
(173, 336000, 4234, 2, 1596),
(174, 4320, 4320, 1, 1533),
(175, 4404, 4404, 1, 1247),
(176, 5400, 5400, 1, 1260),
(177, 5500, 5500, 1, 1262),
(178, 6000, 6000, 1, 1578),
(182, 185000, 2000, 2, 1645),
(183, 5000, 5000, 1, 1644),
(184, 50000, 1000, 2, 1648),
(185, 20000, 500, 2, 1650),
(186, 10000, 200, 2, 1651),
(192, 1100, 1100, 1, 1658);

--
-- Triggers `Sale`
--
DELIMITER //
CREATE TRIGGER `newSale` AFTER INSERT ON `Sale`
 FOR EACH ROW INSERT INTO SaleStage
 	VALUES (NEW.saleNo, 1,NOT NULL)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `SaleStage`
--

CREATE TABLE IF NOT EXISTS `SaleStage` (
  `saleNo` int(11) NOT NULL,
  `stageNo` int(11) NOT NULL,
  `stageDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SaleStage`
--

INSERT INTO `SaleStage` (`saleNo`, `stageNo`, `stageDate`) VALUES
(1, 1, '2009-07-01 18:39:33'),
(1, 2, '2009-07-15 16:19:30'),
(1, 3, '2009-07-29 18:38:51'),
(2, 1, '2010-02-18 16:34:18'),
(2, 2, '2010-03-01 17:45:42'),
(2, 3, '2010-03-15 19:18:44'),
(3, 1, '2009-08-27 14:26:48'),
(3, 4, '2009-09-02 17:45:56'),
(4, 1, '2009-08-27 21:11:47'),
(4, 2, '2009-09-02 17:46:02'),
(4, 3, '2009-09-10 16:20:39'),
(5, 1, '2009-10-01 14:14:50'),
(5, 2, '2009-10-23 19:43:55'),
(5, 3, '2009-11-13 21:13:35'),
(6, 1, '2009-10-01 14:32:58'),
(6, 4, '2009-10-23 14:02:04'),
(7, 1, '2010-02-04 15:43:12'),
(7, 2, '2010-03-03 20:08:01'),
(7, 3, '2010-03-15 14:45:07'),
(8, 1, '2010-02-19 14:39:01'),
(8, 2, '2010-03-12 20:29:07'),
(9, 1, '2009-06-05 13:42:00'),
(9, 4, '2009-06-22 15:57:03'),
(10, 1, '2009-07-06 15:09:15'),
(10, 4, '2009-07-27 19:40:20'),
(11, 1, '2009-07-15 20:25:18'),
(11, 2, '2009-07-29 15:34:57'),
(11, 3, '2009-08-05 14:09:05'),
(12, 1, '2009-04-08 18:45:43'),
(12, 2, '2009-04-08 21:09:47'),
(12, 3, '2009-08-22 13:40:55'),
(13, 1, '2009-07-31 19:57:34'),
(13, 2, '2009-08-14 18:12:39'),
(13, 3, '2009-09-14 19:03:44'),
(14, 1, '2009-10-30 18:35:00'),
(14, 2, '2009-11-05 15:32:25'),
(14, 3, '2009-11-06 18:48:52'),
(15, 1, '2009-07-15 15:34:13'),
(15, 2, '2009-07-29 13:51:35'),
(15, 3, '2009-07-30 17:45:55'),
(16, 1, '2009-12-23 17:46:46'),
(16, 2, '2010-01-13 20:03:36'),
(16, 3, '2010-01-25 22:15:32'),
(17, 1, '2009-08-26 20:04:54'),
(17, 2, '2009-08-26 14:41:23'),
(17, 3, '2009-10-29 15:47:14'),
(18, 1, '2009-07-23 15:47:26'),
(18, 2, '2009-08-07 19:05:08'),
(18, 3, '2009-09-14 19:39:03'),
(19, 1, '2009-06-15 17:14:08'),
(19, 2, '2009-06-15 18:15:07'),
(19, 3, '2009-06-25 21:06:40'),
(20, 1, '2010-02-03 17:28:49'),
(20, 2, '2010-02-04 21:42:38'),
(20, 3, '2010-02-09 21:23:56'),
(21, 1, '2009-08-31 17:04:03'),
(21, 2, '2009-08-31 15:02:26'),
(21, 3, '2009-08-31 13:48:18'),
(22, 1, '2009-06-24 18:46:49'),
(22, 2, '2009-07-02 15:00:31'),
(22, 3, '2009-08-03 14:01:34'),
(23, 1, '2010-02-03 21:28:31'),
(23, 2, '2010-02-18 17:36:32'),
(23, 3, '2010-03-12 22:02:33'),
(24, 1, '2010-01-29 22:09:31'),
(24, 2, '2010-02-23 15:54:59'),
(24, 3, '2010-03-15 18:13:17'),
(25, 1, '2009-08-26 19:34:02'),
(25, 2, '2009-08-26 13:37:55'),
(25, 3, '2009-09-21 21:03:32'),
(26, 1, '2009-06-09 17:53:44'),
(26, 2, '2009-06-09 20:02:12'),
(26, 3, '2009-06-19 17:31:24'),
(27, 1, '2010-01-29 14:39:23'),
(27, 2, '2010-02-23 20:49:34'),
(27, 3, '2010-03-15 20:31:01'),
(28, 1, '2009-10-23 15:53:54'),
(28, 2, '2009-10-23 16:26:55'),
(28, 3, '2009-10-26 20:58:14'),
(29, 1, '2009-06-24 19:40:22'),
(29, 2, '2009-07-02 17:14:17'),
(29, 3, '2009-07-14 15:49:11'),
(30, 1, '2009-07-06 14:34:13'),
(30, 2, '2009-08-04 18:20:47'),
(30, 3, '2009-08-24 17:49:00'),
(31, 1, '2009-07-16 19:26:39'),
(31, 2, '2009-07-17 18:39:42'),
(31, 3, '2009-07-29 19:29:32'),
(32, 1, '2009-10-29 15:32:21'),
(32, 2, '2009-10-29 20:12:16'),
(32, 3, '2009-11-03 17:32:20'),
(33, 1, '2009-12-02 18:39:54'),
(33, 2, '2009-12-02 17:54:08'),
(33, 3, '2009-12-07 14:38:11'),
(34, 1, '2009-10-26 20:43:44'),
(34, 2, '2009-10-26 20:49:17'),
(34, 3, '2009-10-27 14:44:00'),
(35, 1, '2009-07-06 20:59:50'),
(35, 2, '2009-08-04 14:46:20'),
(35, 3, '2009-08-11 19:44:22'),
(36, 1, '2010-03-03 17:51:12'),
(36, 4, '2010-03-03 18:20:17'),
(37, 1, '2009-07-20 16:04:51'),
(37, 2, '2009-07-20 19:53:47'),
(37, 3, '2009-09-09 21:16:47'),
(38, 1, '2009-08-19 20:17:27'),
(38, 4, '2009-09-03 15:08:50'),
(39, 1, '2009-10-28 20:31:00'),
(39, 2, '2009-10-28 14:03:59'),
(39, 3, '2009-12-09 20:42:53'),
(40, 1, '2009-12-29 17:48:45'),
(40, 2, '2010-01-06 18:01:41'),
(40, 3, '2010-01-07 16:23:27'),
(41, 1, '2009-12-23 22:14:05'),
(41, 2, '2010-01-07 20:35:39'),
(41, 3, '2010-01-21 17:12:11'),
(42, 1, '2010-01-12 17:46:13'),
(42, 2, '2010-01-19 16:25:20'),
(42, 3, '2010-01-25 20:42:29'),
(43, 1, '2009-11-13 18:38:05'),
(43, 2, '2009-11-13 15:39:20'),
(43, 3, '2009-11-18 22:09:16'),
(44, 1, '2009-07-31 21:07:34'),
(44, 2, '2009-08-11 17:16:21'),
(44, 3, '2009-08-12 16:25:47'),
(45, 1, '2009-06-01 19:25:23'),
(45, 2, '2009-07-23 17:53:16'),
(45, 3, '2009-08-14 17:54:20'),
(46, 1, '2009-09-08 17:33:05'),
(46, 2, '2009-09-08 14:46:33'),
(46, 3, '2009-09-09 20:03:34'),
(47, 1, '2009-11-25 16:36:45'),
(47, 4, '2009-12-02 21:35:57'),
(48, 1, '2009-10-16 16:21:45'),
(48, 2, '2009-10-19 16:21:12'),
(48, 3, '2009-10-27 18:02:34'),
(49, 1, '2009-10-14 14:14:37'),
(49, 4, '2009-10-14 16:09:02'),
(50, 1, '2009-06-22 20:26:24'),
(50, 2, '2009-06-22 16:46:36'),
(50, 3, '2009-06-26 13:38:46'),
(51, 1, '2010-03-04 20:54:24'),
(51, 2, '2010-03-19 21:00:05'),
(52, 1, '2010-03-17 17:09:21'),
(52, 2, '2010-03-17 14:17:24'),
(52, 3, '2010-03-20 16:47:50'),
(53, 1, '2010-03-01 17:31:50'),
(53, 4, '2010-03-15 18:54:57'),
(54, 1, '2009-09-22 20:58:12'),
(54, 2, '2009-09-25 16:17:15'),
(54, 3, '2009-09-30 21:05:31'),
(55, 1, '2010-03-01 19:27:01'),
(55, 2, '2010-03-01 19:33:28'),
(55, 3, '2010-03-02 18:57:00'),
(56, 1, '2009-08-05 19:23:29'),
(56, 2, '2009-08-12 20:36:25'),
(56, 3, '2009-08-21 18:03:30'),
(57, 1, '2010-03-31 17:06:19'),
(58, 1, '2010-02-26 15:23:07'),
(58, 2, '2010-02-26 16:56:12'),
(58, 3, '2010-03-29 14:26:41'),
(59, 1, '2010-01-11 16:22:18'),
(59, 2, '2010-01-18 17:16:39'),
(59, 3, '2010-01-25 16:22:31'),
(60, 1, '2010-03-31 15:54:04'),
(61, 1, '2009-08-31 16:40:28'),
(61, 2, '2009-08-31 19:37:30'),
(61, 3, '2009-10-27 20:20:52'),
(62, 1, '2009-03-25 18:20:05'),
(62, 2, '2009-04-08 18:23:26'),
(62, 3, '2009-08-06 19:10:40'),
(63, 1, '2010-02-03 18:53:31'),
(63, 2, '2010-02-18 15:02:00'),
(63, 3, '2010-03-29 16:36:40'),
(64, 1, '2010-03-11 20:57:26'),
(64, 2, '2010-03-25 17:26:29'),
(64, 3, '2010-03-31 20:24:49'),
(65, 1, '2009-10-19 20:36:11'),
(65, 2, '2009-10-19 20:45:41'),
(65, 3, '2009-10-20 19:15:55'),
(66, 1, '2010-03-11 15:00:48'),
(66, 4, '2010-03-25 15:32:01'),
(67, 1, '2010-01-19 22:04:16'),
(67, 2, '2010-01-19 19:31:34'),
(67, 3, '2010-01-21 16:48:44'),
(68, 1, '2010-01-12 20:07:55'),
(68, 4, '2010-01-18 20:36:06'),
(69, 1, '2010-01-18 16:00:24'),
(69, 2, '2010-01-29 19:15:47'),
(69, 3, '2010-02-04 15:51:53'),
(70, 1, '2009-09-29 16:00:15'),
(70, 2, '2009-10-06 16:00:11'),
(70, 3, '2009-10-19 20:37:40'),
(71, 1, '2010-01-20 19:40:49'),
(71, 4, '2010-01-20 21:20:16'),
(72, 1, '2009-06-17 17:17:19'),
(72, 2, '2009-07-01 19:34:24'),
(72, 3, '2009-07-07 20:53:54'),
(73, 1, '2009-08-19 15:59:50'),
(73, 2, '2009-09-03 16:23:01'),
(73, 3, '2009-09-11 16:20:39'),
(74, 1, '2009-07-06 17:11:21'),
(74, 2, '2009-07-27 18:25:00'),
(74, 3, '2009-07-31 15:05:26'),
(75, 1, '2009-12-15 18:41:57'),
(75, 2, '2009-12-17 18:54:01'),
(75, 3, '2009-12-21 15:29:39'),
(76, 1, '2010-02-25 20:04:39'),
(76, 2, '2010-03-15 19:08:27'),
(76, 3, '2010-03-23 20:53:42'),
(77, 1, '2009-08-17 16:34:30'),
(77, 2, '2009-08-24 16:58:03'),
(77, 3, '2009-08-27 15:18:20'),
(78, 1, '2010-02-24 15:29:48'),
(78, 2, '2010-03-10 21:35:10'),
(78, 3, '2010-03-15 17:34:30'),
(79, 1, '2009-07-23 18:58:20'),
(79, 4, '2009-08-07 20:29:47'),
(80, 1, '2009-08-26 17:45:45'),
(80, 2, '2009-09-10 20:06:44'),
(80, 3, '2009-09-23 17:53:43'),
(81, 1, '2009-08-28 16:18:15'),
(81, 2, '2009-10-30 15:30:25'),
(81, 3, '2009-11-30 20:55:11'),
(82, 1, '2010-01-21 16:57:29'),
(82, 4, '2010-02-05 19:18:04'),
(83, 1, '2010-02-12 18:16:11'),
(83, 2, '2010-02-24 19:58:26'),
(83, 3, '2010-03-01 15:26:09'),
(84, 1, '2010-03-31 21:03:40'),
(85, 1, '2009-08-10 18:28:28'),
(85, 2, '2009-09-03 18:00:12'),
(85, 3, '2009-09-11 21:14:43'),
(86, 1, '2010-01-21 17:24:37'),
(86, 2, '2010-02-05 21:59:12'),
(86, 3, '2010-02-11 22:00:21'),
(87, 1, '2010-03-16 18:39:40'),
(87, 2, '2010-03-31 21:12:35'),
(88, 1, '2009-08-07 17:05:24'),
(88, 2, '2009-08-07 16:16:58'),
(88, 3, '2009-08-12 18:20:14'),
(89, 1, '2009-08-14 16:38:39'),
(89, 2, '2009-09-01 15:36:57'),
(89, 3, '2009-09-02 14:52:32'),
(90, 1, '2010-01-27 17:30:29'),
(90, 2, '2010-02-03 17:31:01'),
(90, 3, '2010-03-15 17:35:05'),
(91, 1, '2010-02-19 15:42:19'),
(91, 2, '2010-03-05 16:39:35'),
(91, 3, '2010-03-11 16:21:47'),
(92, 1, '2009-09-29 14:49:44'),
(92, 2, '2009-11-24 20:03:32'),
(92, 3, '2009-11-27 22:07:12'),
(93, 1, '2009-08-04 19:31:19'),
(93, 4, '2009-09-14 15:02:08'),
(94, 1, '2010-03-05 20:26:58'),
(94, 2, '2010-03-18 19:03:21'),
(94, 3, '2010-03-25 20:50:27'),
(95, 1, '2009-10-28 18:58:22'),
(95, 2, '2009-10-28 14:47:37'),
(95, 3, '2009-11-24 21:02:19'),
(96, 1, '2010-03-11 16:53:47'),
(96, 2, '2010-03-25 18:41:43'),
(96, 3, '2010-03-31 20:43:18'),
(98, 1, '2010-02-04 17:37:31'),
(98, 2, '2010-03-03 16:03:09'),
(98, 3, '2010-03-09 17:24:31'),
(99, 1, '2010-02-26 21:21:12'),
(99, 2, '2010-03-15 21:03:21'),
(100, 1, '2010-02-26 20:02:46'),
(100, 2, '2010-03-15 14:07:44'),
(101, 1, '2009-05-18 15:21:14'),
(101, 2, '2009-09-15 19:53:11'),
(101, 3, '2009-09-30 19:16:21'),
(102, 1, '2010-01-18 15:43:45'),
(102, 2, '2010-02-01 21:31:19'),
(102, 3, '2010-02-04 20:54:04'),
(103, 1, '2009-10-28 20:21:23'),
(103, 2, '2009-11-12 21:56:38'),
(103, 3, '2009-12-22 17:23:25'),
(104, 1, '2010-03-16 14:00:59'),
(104, 2, '2010-03-31 15:28:02'),
(105, 1, '2010-02-19 21:24:02'),
(105, 2, '2010-03-12 19:00:52'),
(105, 3, '2010-03-19 14:56:35'),
(106, 1, '2010-02-18 15:47:51'),
(106, 2, '2010-03-01 19:19:40'),
(106, 3, '2010-03-10 19:58:49'),
(107, 1, '2009-09-04 14:01:57'),
(107, 2, '2009-09-23 20:31:16'),
(107, 3, '2009-10-07 14:54:56'),
(108, 1, '2009-08-31 16:05:25'),
(108, 2, '2009-08-31 20:39:47'),
(108, 3, '2009-09-08 15:24:20'),
(109, 1, '2010-03-24 13:49:13'),
(110, 1, '2010-01-11 16:55:49'),
(110, 2, '2010-01-21 19:35:57'),
(110, 3, '2010-02-15 20:45:15'),
(111, 1, '2009-07-31 16:26:46'),
(111, 2, '2009-08-14 17:43:03'),
(111, 3, '2009-09-14 15:57:22'),
(112, 1, '2009-09-02 20:19:53'),
(112, 4, '2009-09-02 13:42:56'),
(113, 1, '2009-12-01 18:16:00'),
(113, 2, '2009-12-14 19:39:33'),
(114, 1, '2009-11-25 20:01:30'),
(114, 2, '2009-12-02 18:13:25'),
(115, 1, '2010-01-20 19:04:33'),
(115, 2, '2010-01-20 19:11:04'),
(115, 3, '2010-02-09 15:00:54'),
(116, 1, '2010-02-09 21:44:23'),
(116, 4, '2010-02-19 20:54:56'),
(117, 1, '2009-12-23 20:40:59'),
(117, 2, '2010-01-13 21:03:37'),
(117, 3, '2010-01-21 20:25:11'),
(118, 1, '2010-02-24 16:44:09'),
(118, 2, '2010-03-10 20:47:17'),
(119, 1, '2009-07-30 13:57:30'),
(119, 4, '2009-08-13 13:57:02'),
(120, 1, '2009-10-02 19:04:52'),
(120, 2, '2009-10-16 15:36:52'),
(120, 3, '2009-10-20 17:52:13'),
(122, 1, '2010-02-08 15:18:40'),
(122, 2, '2010-02-22 19:20:01'),
(122, 3, '2010-03-01 18:30:19'),
(123, 1, '2009-07-30 15:04:02'),
(123, 2, '2009-09-01 15:34:59'),
(123, 3, '2009-10-31 14:53:15'),
(124, 1, '2009-05-28 14:09:14'),
(124, 2, '2009-07-13 16:13:58'),
(124, 3, '2009-07-15 20:45:00'),
(125, 1, '2009-11-11 17:09:41'),
(125, 2, '2009-11-18 22:13:12'),
(125, 3, '2009-12-04 21:57:26'),
(126, 1, '2010-02-16 21:48:52'),
(126, 2, '2010-02-26 18:21:25'),
(126, 3, '2010-03-08 18:44:50'),
(127, 1, '2010-02-24 16:49:23'),
(127, 4, '2010-03-10 21:55:37'),
(128, 1, '2009-12-23 20:02:09'),
(128, 4, '2010-01-13 14:55:42'),
(129, 1, '2009-10-20 13:41:57'),
(129, 2, '2009-11-02 17:15:28'),
(129, 3, '2009-11-06 19:38:33'),
(130, 1, '2009-09-08 20:43:34'),
(130, 2, '2009-09-24 19:06:10'),
(130, 3, '2009-10-01 16:06:10'),
(131, 1, '2009-12-10 20:04:40'),
(131, 2, '2010-01-14 15:13:43'),
(131, 3, '2010-01-20 21:56:59'),
(132, 1, '2010-02-03 15:13:31'),
(132, 2, '2010-02-10 17:39:15'),
(132, 3, '2010-02-25 18:01:58'),
(133, 1, '2009-11-23 22:10:57'),
(133, 2, '2009-11-30 19:04:11'),
(133, 3, '2009-12-03 18:01:16'),
(134, 1, '2010-03-11 15:28:44'),
(134, 2, '2010-03-24 19:27:24'),
(134, 3, '2010-03-30 16:02:01'),
(135, 1, '2010-03-26 18:00:07'),
(136, 1, '2010-02-23 20:16:16'),
(136, 4, '2010-03-11 19:46:21'),
(137, 1, '2010-03-01 16:04:43'),
(137, 2, '2010-03-15 15:02:08'),
(137, 3, '2010-03-23 21:05:02'),
(138, 1, '2009-08-06 19:28:01'),
(138, 2, '2009-08-21 18:57:40'),
(138, 3, '2009-09-01 15:29:35'),
(139, 1, '2009-12-23 17:08:07'),
(139, 4, '2010-01-13 16:48:40'),
(140, 1, '2010-03-05 14:46:04'),
(140, 2, '2010-03-19 14:43:23'),
(140, 3, '2010-03-25 19:48:30'),
(141, 1, '2010-02-12 21:41:40'),
(141, 4, '2010-02-25 19:13:46'),
(142, 1, '2009-10-23 18:08:43'),
(142, 2, '2010-02-19 18:56:22'),
(142, 3, '2010-03-03 22:07:55'),
(143, 1, '2010-03-17 15:44:33'),
(144, 1, '2009-09-18 17:28:47'),
(144, 2, '2009-09-18 13:36:16'),
(144, 3, '2009-09-21 16:21:17'),
(145, 1, '2010-02-05 20:34:25'),
(145, 2, '2010-02-17 15:34:49'),
(145, 3, '2010-03-10 19:27:26'),
(146, 1, '2010-03-04 21:32:34'),
(146, 2, '2010-03-19 20:29:31'),
(146, 3, '2010-03-25 15:15:25'),
(147, 1, '2010-01-12 14:56:47'),
(147, 2, '2010-01-29 17:34:37'),
(147, 3, '2010-02-11 18:54:27'),
(148, 1, '2010-03-15 14:12:28'),
(148, 2, '2010-03-16 18:50:52'),
(148, 3, '2010-03-25 20:37:15'),
(149, 1, '2010-01-29 17:43:59'),
(149, 2, '2010-02-23 17:44:49'),
(149, 3, '2010-03-09 17:11:39'),
(150, 1, '2009-11-11 18:09:02'),
(150, 2, '2009-11-11 20:40:21'),
(150, 3, '2009-11-19 18:29:33'),
(151, 1, '2010-03-17 17:07:39'),
(152, 1, '2009-08-21 14:23:01'),
(152, 2, '2009-09-10 15:08:24'),
(152, 3, '2009-09-30 15:03:21'),
(153, 1, '2010-03-18 14:24:41'),
(153, 2, '2010-03-26 20:16:47'),
(154, 1, '2010-02-23 20:55:26'),
(154, 2, '2010-03-11 15:49:20'),
(154, 3, '2010-03-22 20:39:39'),
(155, 1, '2010-03-18 14:10:33'),
(156, 1, '2010-02-15 18:35:37'),
(156, 2, '2010-03-09 18:30:12'),
(156, 3, '2010-03-15 14:30:24'),
(157, 1, '2010-02-05 20:01:38'),
(157, 2, '2010-03-05 17:20:32'),
(157, 3, '2010-03-20 19:52:04'),
(158, 1, '2010-03-09 18:22:22'),
(159, 1, '2009-12-01 18:21:59'),
(159, 2, '2009-12-14 20:12:20'),
(159, 3, '2009-12-24 21:34:06'),
(160, 1, '2009-12-23 16:11:09'),
(160, 2, '2010-01-13 16:22:36'),
(160, 3, '2010-01-21 19:17:05'),
(161, 1, '2010-03-01 22:04:59'),
(161, 2, '2010-03-18 14:10:35'),
(161, 3, '2010-03-25 20:23:00'),
(162, 1, '2009-10-08 13:45:57'),
(162, 2, '2010-03-10 20:12:03'),
(163, 1, '2009-07-01 19:36:37'),
(163, 2, '2009-07-24 16:34:57'),
(163, 3, '2009-08-31 13:52:45'),
(164, 1, '2009-08-17 18:37:15'),
(164, 2, '2009-09-07 18:07:48'),
(164, 3, '2009-10-02 17:20:38'),
(165, 1, '2009-05-05 19:06:31'),
(165, 2, '2009-05-08 18:36:39'),
(165, 3, '2009-06-29 18:04:41'),
(166, 1, '2010-03-04 15:25:23'),
(166, 2, '2010-03-04 16:40:52'),
(166, 3, '2010-03-08 17:04:42'),
(167, 1, '2010-02-26 18:37:54'),
(167, 2, '2010-02-26 18:42:45'),
(167, 3, '2010-03-08 20:49:23'),
(168, 1, '2010-02-02 18:58:15'),
(168, 2, '2010-02-16 18:37:13'),
(168, 3, '2010-02-24 22:02:13'),
(169, 1, '2010-02-23 17:10:10'),
(169, 2, '2010-03-11 17:13:26'),
(169, 3, '2010-03-18 16:54:37'),
(170, 1, '2009-12-16 14:51:53'),
(170, 2, '2009-12-16 17:54:24'),
(170, 3, '2009-12-22 17:23:28'),
(171, 1, '2009-12-03 19:22:29'),
(171, 2, '2010-01-21 20:27:59'),
(171, 3, '2010-01-25 21:01:36'),
(172, 1, '2010-03-22 15:08:00'),
(173, 1, '2010-02-18 18:15:19'),
(173, 2, '2010-03-04 14:39:53'),
(173, 3, '2010-03-09 19:05:33'),
(174, 1, '2009-11-24 16:04:25'),
(174, 2, '2009-11-24 17:02:51'),
(174, 3, '2009-12-22 20:08:04'),
(175, 1, '2010-02-25 20:40:01'),
(176, 1, '2009-07-01 19:43:45'),
(176, 2, '2009-07-15 15:47:03'),
(176, 3, '2009-09-02 15:03:24'),
(177, 1, '2009-07-03 17:17:14'),
(177, 2, '2009-07-17 19:22:47'),
(177, 3, '2009-07-30 15:39:52'),
(178, 1, '2010-02-03 15:03:26'),
(178, 2, '2010-02-18 16:32:45'),
(178, 3, '2010-02-25 21:19:30'),
(182, 1, '2015-05-23 06:28:33'),
(182, 2, '2015-05-23 06:28:46'),
(182, 3, '2015-05-23 06:29:22'),
(183, 1, '2015-05-23 06:30:40'),
(183, 2, '2015-05-23 06:31:22'),
(184, 1, '2015-05-23 06:31:03'),
(185, 1, '2015-05-23 06:34:03'),
(185, 2, '2015-05-23 06:34:45'),
(186, 1, '2015-05-23 06:43:12'),
(192, 1, '2015-05-23 18:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `Stage`
--

CREATE TABLE IF NOT EXISTS `Stage` (
`stageNo` int(11) NOT NULL,
  `stageName` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Stage`
--

INSERT INTO `Stage` (`stageNo`, `stageName`) VALUES
(1, 'Proposal'),
(2, 'Application'),
(3, 'Complete'),
(4, 'Declined');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Summary`
--
CREATE TABLE IF NOT EXISTS `Summary` (
`stageNo` int(11)
,`stageName` varchar(30)
,`Product1` decimal(32,0)
,`Product2` decimal(32,0)
,`Commission` decimal(33,0)
);
-- --------------------------------------------------------

--
-- Structure for view `ActiveLeads`
--
DROP TABLE IF EXISTS `ActiveLeads`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ActiveLeads` AS select `l`.`leadNo` AS `leadNo`,`l`.`leadDate` AS `leadDate`,`l`.`leadComment` AS `leadComment`,`l`.`clientContact` AS `clientContact`,`l`.`clientName` AS `clientName`,`l`.`clientSurname` AS `clientSurname`,`l`.`partnerNo` AS `partnerNo`,`l`.`departmentNo` AS `departmentNo` from `Lead` `l` where (not(`l`.`leadNo` in (select `Sale`.`leadNo` from `Sale`)));

-- --------------------------------------------------------

--
-- Structure for view `AllSaleStages`
--
DROP TABLE IF EXISTS `AllSaleStages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AllSaleStages` AS select `Lead`.`leadNo` AS `leadNo`,`Lead`.`clientName` AS `clientName`,`Lead`.`clientSurname` AS `clientSurname`,`SaleStage`.`saleNo` AS `saleNo`,`Sale`.`productNo` AS `productNo`,`Product`.`productName` AS `productName`,`Sale`.`value` AS `value`,`Sale`.`commission` AS `commission`,`SaleStage`.`stageNo` AS `stageNo`,`Stage`.`stageName` AS `stageName`,cast(`SaleStage`.`stageDate` as date) AS `stageDate` from ((((`Sale` join `Lead`) join `Product`) join `Stage`) join `SaleStage`) where ((`Sale`.`productNo` = `Product`.`productNo`) and (`Sale`.`leadNo` = `Lead`.`leadNo`) and (`Sale`.`saleNo` = `SaleStage`.`saleNo`) and (`SaleStage`.`stageNo` = `Stage`.`stageNo`)) order by cast(`SaleStage`.`stageDate` as date) desc;

-- --------------------------------------------------------

--
-- Structure for view `Currents`
--
DROP TABLE IF EXISTS `Currents`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Currents` AS select `SaleStage`.`saleNo` AS `saleNo`,max(`SaleStage`.`stageNo`) AS `stageNo` from `SaleStage` group by `SaleStage`.`saleNo`;

-- --------------------------------------------------------

--
-- Structure for view `CurrentSaleStages`
--
DROP TABLE IF EXISTS `CurrentSaleStages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `CurrentSaleStages` AS select `a`.`leadNo` AS `leadNo`,`a`.`clientName` AS `clientName`,`a`.`clientSurname` AS `clientSurname`,`a`.`saleNo` AS `saleNo`,`a`.`productNo` AS `productNo`,`a`.`productName` AS `productName`,`a`.`value` AS `value`,`a`.`commission` AS `commission`,`a`.`stageNo` AS `stageNo`,`a`.`stageName` AS `stageName`,`a`.`stageDate` AS `stageDate` from (`AllSaleStages` `a` join `Currents` `c` on(((`c`.`saleNo` = `a`.`saleNo`) and (`c`.`stageNo` = `a`.`stageNo`)))) order by `a`.`stageDate` desc;

-- --------------------------------------------------------

--
-- Structure for view `Pipeline`
--
DROP TABLE IF EXISTS `Pipeline`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Pipeline` AS select `a`.`leadNo` AS `leadNo`,`a`.`clientName` AS `clientName`,`a`.`clientSurname` AS `clientSurname`,`a`.`saleNo` AS `saleNo`,`a`.`productNo` AS `productNo`,`a`.`productName` AS `productName`,`a`.`value` AS `value`,`a`.`commission` AS `commission`,`a`.`stageNo` AS `stageNo`,`a`.`stageName` AS `stageName`,`b`.`stageDate` AS `Proposal_Date`,`c`.`stageDate` AS `Application_Date`,`d`.`stageDate` AS `Complete_Date` from (((`CurrentSaleStages` `a` left join `AllSaleStages` `b` on(((`a`.`saleNo` = `b`.`saleNo`) and (`b`.`stageNo` = '1')))) left join `AllSaleStages` `c` on(((`c`.`saleNo` = `a`.`saleNo`) and (`c`.`stageNo` = '2')))) left join `AllSaleStages` `d` on(((`d`.`saleNo` = `a`.`saleNo`) and (`d`.`stageNo` = '3')))) order by (case when (`a`.`stageNo` = '1') then '1' when (`a`.`stageNo` = '2') then '2' when (`a`.`stageNo` = '3') then '3' else `a`.`stageNo` end),`d`.`stageDate` desc,`c`.`stageDate` desc,`b`.`stageDate` desc;

-- --------------------------------------------------------

--
-- Structure for view `Summary`
--
DROP TABLE IF EXISTS `Summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Summary` AS select `x`.`stageNo` AS `stageNo`,`x`.`stageName` AS `stageName`,sum(`a`.`value`) AS `Product1`,sum(`b`.`value`) AS `Product2`,(sum(`a`.`commission`) + sum(`b`.`commission`)) AS `Commission` from ((`CurrentSaleStages` `x` left join `CurrentSaleStages` `a` on(((`x`.`saleNo` = `a`.`saleNo`) and (`a`.`productNo` = 1)))) left join `CurrentSaleStages` `b` on(((`x`.`saleNo` = `b`.`saleNo`) and (`b`.`productNo` = 2)))) group by `x`.`stageNo` order by `x`.`stageNo`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataface__modules`
--
ALTER TABLE `dataface__modules`
 ADD PRIMARY KEY (`module_name`);

--
-- Indexes for table `dataface__mtimes`
--
ALTER TABLE `dataface__mtimes`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
 ADD PRIMARY KEY (`pref_id`), ADD KEY `username` (`username`), ADD KEY `table` (`table`), ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `dataface__record_mtimes`
--
ALTER TABLE `dataface__record_mtimes`
 ADD PRIMARY KEY (`recordhash`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
 ADD PRIMARY KEY (`departmentNo`), ADD UNIQUE KEY `departmentNo` (`departmentNo`), ADD UNIQUE KEY `departmentName` (`departmentName`);

--
-- Indexes for table `Lead`
--
ALTER TABLE `Lead`
 ADD PRIMARY KEY (`leadNo`), ADD UNIQUE KEY `bestContact` (`clientContact`), ADD KEY `departmentNo` (`departmentNo`), ADD KEY `partnerNo` (`partnerNo`);

--
-- Indexes for table `Partner`
--
ALTER TABLE `Partner`
 ADD PRIMARY KEY (`partnerNo`), ADD UNIQUE KEY `partnerNo` (`partnerNo`), ADD UNIQUE KEY `partnerFullName` (`partnerName`,`partnerSurname`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
 ADD PRIMARY KEY (`productNo`);

--
-- Indexes for table `Sale`
--
ALTER TABLE `Sale`
 ADD PRIMARY KEY (`saleNo`), ADD KEY `productNo` (`productNo`), ADD KEY `leadNo` (`leadNo`);

--
-- Indexes for table `SaleStage`
--
ALTER TABLE `SaleStage`
 ADD PRIMARY KEY (`saleNo`,`stageNo`), ADD KEY `stageNo` (`stageNo`);

--
-- Indexes for table `Stage`
--
ALTER TABLE `Stage`
 ADD PRIMARY KEY (`stageNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
MODIFY `pref_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
MODIFY `departmentNo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `Lead`
--
ALTER TABLE `Lead`
MODIFY `leadNo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1659;
--
-- AUTO_INCREMENT for table `Partner`
--
ALTER TABLE `Partner`
MODIFY `partnerNo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=309;
--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
MODIFY `productNo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Sale`
--
ALTER TABLE `Sale`
MODIFY `saleNo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `Stage`
--
ALTER TABLE `Stage`
MODIFY `stageNo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Lead`
--
ALTER TABLE `Lead`
ADD CONSTRAINT `Lead_ibfk_1` FOREIGN KEY (`partnerNo`) REFERENCES `Partner` (`partnerNo`),
ADD CONSTRAINT `Lead_ibfk_2` FOREIGN KEY (`departmentNo`) REFERENCES `Department` (`departmentNo`);

--
-- Constraints for table `Sale`
--
ALTER TABLE `Sale`
ADD CONSTRAINT `Sale_ibfk_1` FOREIGN KEY (`productNo`) REFERENCES `Product` (`productNo`) ON UPDATE CASCADE,
ADD CONSTRAINT `Sale_ibfk_2` FOREIGN KEY (`leadNo`) REFERENCES `Lead` (`leadNo`);

--
-- Constraints for table `SaleStage`
--
ALTER TABLE `SaleStage`
ADD CONSTRAINT `SaleStage_ibfk_3` FOREIGN KEY (`saleNo`) REFERENCES `Sale` (`saleNo`) ON DELETE CASCADE,
ADD CONSTRAINT `SaleStage_ibfk_4` FOREIGN KEY (`stageNo`) REFERENCES `Stage` (`stageNo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
