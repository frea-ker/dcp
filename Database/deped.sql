-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2023 at 10:03 AM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deped`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int NOT NULL,
  `district_name` varchar(155) NOT NULL,
  `c_id` varchar(50) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`, `c_id`, `time_stamp`) VALUES
(1, 'Alaminos', 'alaminos', '2023-09-04 01:59:50'),
(2, 'Bay', 'bay', '2023-09-04 01:59:57'),
(3, 'Calauan', 'calauan', '2023-09-04 01:59:59'),
(4, 'Cavinti', 'cavinti', '2023-09-04 02:00:03'),
(5, 'Famy', 'famy', '2023-09-04 02:00:07'),
(6, 'Kalayaan', 'kalayaan', '2023-09-04 02:00:11'),
(7, 'Liliw', 'liliw', '2023-09-04 02:00:15'),
(8, 'Los Banos', 'los banos', '2023-09-04 02:00:19'),
(9, 'Luisiana', 'luisiana', '2023-09-04 02:00:25'),
(10, 'Lumban', 'lumban', '2023-09-04 02:00:28'),
(11, 'Mabitac', 'mabitac', '2023-09-04 02:00:31'),
(12, 'Magdalena', 'magdalena', '2023-09-04 02:00:36'),
(13, 'Majayjay', 'majayjay', '2023-09-04 02:00:41'),
(14, 'Nagcarlan', 'nagcarlan', '2023-09-04 02:00:44'),
(15, 'Paete', 'paete', '2023-09-04 02:00:46'),
(16, 'Pagsanjan', 'pagsanjan', '2023-09-04 02:00:59'),
(17, 'Pakil', 'pakil', '2023-09-04 02:01:03'),
(18, 'Pangil', 'pangil', '2023-09-04 02:01:07'),
(19, 'Pila', 'pila', '2023-09-04 02:01:11'),
(20, 'Rizal', 'rizal', '2023-09-04 02:01:14'),
(21, 'Santa Cruz', 'santa cruz', '2023-09-04 02:01:18'),
(22, 'Santa Maria', 'santa maria', '2023-09-04 02:01:23'),
(23, 'Siniloan', 'siniloan', '2023-09-04 02:01:27'),
(24, 'Victoria', 'victoria', '2023-09-04 02:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `electric_source`
--

CREATE TABLE `electric_source` (
  `id` int NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `district` varchar(80) NOT NULL,
  `school_name` varchar(80) NOT NULL,
  `gridSupply` varchar(10) NOT NULL,
  `solarPower` varchar(10) NOT NULL,
  `generator` varchar(10) NOT NULL,
  `hydroPower` varchar(10) NOT NULL,
  `otherOffGrid` varchar(200) NOT NULL,
  `averageMonthlyBill` varchar(200) NOT NULL,
  `mooeFund` varchar(10) NOT NULL,
  `lguFund` varchar(10) NOT NULL,
  `otherGovernment` varchar(10) NOT NULL,
  `privateDonation` varchar(10) NOT NULL,
  `schoolFund` varchar(10) NOT NULL,
  `otherFund` varchar(200) NOT NULL,
  `electricRemarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `electric_source`
--

INSERT INTO `electric_source` (`id`, `user_id`, `district`, `school_name`, `gridSupply`, `solarPower`, `generator`, `hydroPower`, `otherOffGrid`, `averageMonthlyBill`, `mooeFund`, `lguFund`, `otherGovernment`, `privateDonation`, `schoolFund`, `otherFund`, `electricRemarks`) VALUES
(2, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'yes', 'true', 'true', '', '25', '2000', 'true', '', '', '', '', '', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `isprovider`
--

CREATE TABLE `isprovider` (
  `id` int NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `district` varchar(80) NOT NULL,
  `school_name` varchar(80) NOT NULL,
  `p_name` varchar(80) NOT NULL,
  `mbps` varchar(80) NOT NULL,
  `monthly` varchar(80) NOT NULL,
  `location` varchar(80) NOT NULL,
  `publicWifi` varchar(10) NOT NULL,
  `internetWifi` varchar(10) NOT NULL,
  `broadband` varchar(10) NOT NULL,
  `dsl` varchar(10) NOT NULL,
  `fiber` varchar(10) NOT NULL,
  `satelite` varchar(10) NOT NULL,
  `cable` varchar(10) NOT NULL,
  `ptop` varchar(10) NOT NULL,
  `mobileData` varchar(10) NOT NULL,
  `wifiConnect` varchar(10) NOT NULL,
  `wiredConnect` varchar(10) NOT NULL,
  `speedDownload` varchar(10) NOT NULL,
  `speedUpload` varchar(10) NOT NULL,
  `instructionalRoom` varchar(10) NOT NULL,
  `principalOffice` varchar(10) NOT NULL,
  `facultyRoom` varchar(10) NOT NULL,
  `library` varchar(10) NOT NULL,
  `teacher` varchar(10) NOT NULL,
  `learner` varchar(10) NOT NULL,
  `nonTeaching` varchar(10) NOT NULL,
  `internetForClassroom` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dictFund` varchar(10) NOT NULL,
  `lguFund` varchar(10) NOT NULL,
  `schoolMooeFund` varchar(10) NOT NULL,
  `specialEducFund` varchar(10) NOT NULL,
  `ptaFund` varchar(10) NOT NULL,
  `otherFund` varchar(200) NOT NULL,
  `internetDuration` varchar(100) NOT NULL,
  `internetRemarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `isprovider`
--

INSERT INTO `isprovider` (`id`, `user_id`, `district`, `school_name`, `p_name`, `mbps`, `monthly`, `location`, `publicWifi`, `internetWifi`, `broadband`, `dsl`, `fiber`, `satelite`, `cable`, `ptop`, `mobileData`, `wifiConnect`, `wiredConnect`, `speedDownload`, `speedUpload`, `instructionalRoom`, `principalOffice`, `facultyRoom`, `library`, `teacher`, `learner`, `nonTeaching`, `internetForClassroom`, `dictFund`, `lguFund`, `schoolMooeFund`, `specialEducFund`, `ptaFund`, `otherFund`, `internetDuration`, `internetRemarks`) VALUES
(1, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'a', '23', '23', 'asd', 'true', '', '', '', '', '', '', '', '', 'true', '', '12', '123', 'true', '', '', '', 'true', '', '', 'yes', 'true', '', '', '', '', '', '23', 'asdas'),
(2, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'e\"', '25', '24', 'qwe', 'true', '', '', '', '', '', '', '', '', 'true', '', '25', '25', 'true', '', '', '', '', '', '', 'no', 'true', '', '', '', '', '', '123', 'qweqwe');

-- --------------------------------------------------------

--
-- Table structure for table `manage_package`
--

CREATE TABLE `manage_package` (
  `id` int NOT NULL,
  `Item` varchar(90) NOT NULL,
  `Quantity` varchar(90) NOT NULL,
  `Unit` varchar(120) NOT NULL,
  `Unit_price` varchar(120) NOT NULL,
  `Amount` varchar(120) NOT NULL,
  `Package` varchar(120) NOT NULL,
  `cat_id` varchar(120) NOT NULL,
  `pck_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_package`
--

INSERT INTO `manage_package` (`id`, `Item`, `Quantity`, `Unit`, `Unit_price`, `Amount`, `Package`, `cat_id`, `pck_status`) VALUES
(1, 'HOST PC,ACER VERITON M490G, brand new; -Microprocessor: Intel Core i5, 2.56GHz, 8MB smart ', '1', 'set', '31,127.20', '31,127.20', 'Batch 7', '1', ''),
(2, 'LCD MONITOR,ACER V193 18\", brand new', '6', 'unit', '5,042.96', '30,257.76', 'Batch 7', '1', ''),
(3, 'KEYBOARD & MOUSE, ACER PR1101U - keyboard, ACER MS 1200.085 Mouse, brand new;', '6', 'set', '586.56', '3,519.36', 'Batch 7', '1', ''),
(4, 'ACCESS TERMINAL, NCOMPUTING U170 (Config. 2)', '6', 'unit', '2,426.32', '14,557.92', 'Batch 7', '1', ''),
(5, 'UNINTERRUPTIBLE POWER SUPPLY (UPS), EMERSON LIEBERT PS500-PH, brand new;', '1', 'unit', '1,731.60', '1,731.60', 'Batch 7', '1', ''),
(6, 'INTERACTIE WHITEBOARD, PROMETHEAN ACTIVEBOARD ABV 587 PRO', '1', 'unit', '56,631.12', '56,631.12', 'Batch 7', '1', ''),
(7, '3-IN-1 INKJET PRINTER, BROTHER DCP-J125', '1', 'unit', '3,529.76', '3,529.76', 'Batch 7', '1', ''),
(8, 'PROJECTOR, ACER X1261P, brand new;', '1', 'unit', '23,233.60', '23,233.60', 'Batch 7', '1', ''),
(9, 'MOUSE, ACER brand newl Interface: USB for mouse (same brand as Host PC)', '10', 'unit', '193.44', '1,934.40', 'Batch 7', '1', ''),
(10, '10-PORT FOR USB HUB, Hi Speed, brand new;', '1', 'unit', '608.40', '608.40', 'Batch 7', '1', ''),
(11, 'FACE TO FACE LECTURE & HANDS ON TRAINING', '1', 'lot', '1,659.84', '1,659.84', 'Batch 7', '1', ''),
(12, 'HOST PC, branded new, HP  COMPAQ PRO 6300 SFF, Intel core i5 3570, 3.40 GHz', '8', 'unit', '', '', 'Batch 13', '2', ''),
(13, 'DESKTOP Virutalization/Acces Terminals/Thin Client, NCOMPUTING M300 3-in-1', '42', 'unit', '', '', 'Batch 13', '2', ''),
(14, 'LED MONITOR, 18.5\" Wide Screen, HP LV1911 18.5\"', '42', 'unit', '', '', 'Batch 13', '2', ''),
(15, 'KEYBOARD AND MOUSE, HP, USB keyboard', '42', 'unit', '', '', 'Batch 13', '2', ''),
(16, 'UNINTERRUPTIBLE POWER SUPPLY (UPS) EMERSON LIEBERT PSA 1000VA (PSA1000MT3-2300), 600 WATTS', '8', 'unit', '', '', 'Batch 13', '2', ''),
(17, 'WIRELESS BROADBAND ROUTER, TP-LINK TL-WR740N, 150Mbps data transfer rate', '1', 'unit', '', '', 'Batch 13', '2', ''),
(18, 'NETWORK PRINTER, LEXMARK MS510DN, 10Base-T/100 Base-T interface', '1', 'unit', '', '', 'Batch 13', '2', ''),
(19, 'SWITCH, 24 ports, TP-LINK TL-sg1024D, includes CAT 6 UTP pre cut cable(factory crimped on ', '1', 'unit', '', '', 'Batch 13', '2', ''),
(20, 'Host PC, Configuration 2, Acer Veriton M4620G, Microprocessor: 3.30 GHz, 6MB, L3 cache', '1', 'unit', '28,887.04', '28,887.04', 'Batch 14', '3', ''),
(21, 'Desktop Virtualization, Configuration 2, NCOMPUTING U170', '6', 'unit', '1,904.4', '11,425.44', 'Batch 14', '3', ''),
(22, 'LED Monitor, 18.5\" Wide Screen, ACER V193HQL, VGA cord, power cord, 500 watts', '6', 'unit', '4,186', '25,116.00', 'Batch 14', '3', ''),
(23, 'Keyboard and Mouse, ACER USB Keyboard and Mouse', '6', 'unit', '445.12', '2,670.72', 'Batch 14', '3', ''),
(24, 'Uninterruptible Power Supply (UPS), Emerson Liebert PSP500MT3-230U', '1', 'unit', '2,024.88', '2,024.88', 'Batch 14', '3', ''),
(25, 'Projector, with Document Camera (not built-in, ACER x1240 DLP and Aver Vision 310AF Docume', '1', 'unit', '40,206.40', '40,206.40', 'Batch 14', '3', ''),
(26, 'Interactive Whiteboard, Promethean Activeboard 578 PRO, Windows XP, Win Multipoint Server.', '1', 'unit', '45,500.00', '45,500.00', 'Batch 14', '3', ''),
(27, '3-in-1 Inkjet Printer, Canon Pixma MP237, Up to Resolution: 4800 x 1200 (Interchangeable)', '1', 'unit', '3,992.56', '3,992.56', 'Batch 14', '3', ''),
(28, 'Host PC, branded and brand new, HP Compaq Pro 6300', '1', 'unit', '31,720.00', '31,720.00', 'Batch 16', '4', ''),
(29, 'DESKTOP VIRTUALIZATION/ACCESS TERMINALS/THIN CLIENT, branded and brand new, NCOMPUTING M30', '6', 'unit', '4,160.00', '24,960.00', 'Batch 16', '4', ''),
(30, 'LED MONITOR, 18.5 wide screen, branded, brand new, HP V192', '6', 'unit', '4,160.00', '24,960.00', 'Batch 16', '4', ''),
(31, 'Keyboard and Mouse, branded and brand new, HP', '6', 'unit', '829.92', '4,979.52', 'Batch 16', '4', ''),
(32, '3 in 1 Inkjet Printer, branded and brand new, HP K209g', '1', 'unit', '4,680.00', '4,680.00', 'Batch 16', '4', ''),
(33, 'Projector, branded and brand new, InFocus IN100', '2', 'unit', '16,640.00', '33,280.00', 'Batch 16', '4', ''),
(34, 'Laptop, branded and brand new, HP 242 Notebook PC', '1', 'unit', '26,000.00', '26,000.00', 'Batch 16', '4', ''),
(35, 'Multimedia Speakers, 2.1, branded and brand new, MICROLAB M290', '1', 'unit', '2,080.00', '2,080.00', 'Batch 16', '4', ''),
(36, 'Uninterruptible Power Supply (UPS), branded and brand new, LIEBERT PSA 1000VA', '1', 'unit', '8,320.00', '8,320.00', 'Batch 16', '4', ''),
(37, 'Networking Peripherals (UTP CAT 6 & RJ45), brand new, Generic', '1', 'unit', '4,160.00', '4,160.00', 'Batch 16', '4', ''),
(38, 'Automatic Voltage Regulator (AVR), branded and brand new, STAVOL SVC-1000VA', '1', 'unit', '2,961.92', '2,961.92', 'Batch 16', '4', ''),
(39, 'Acer Veriton M4620G Intel Core i5-3570(3.4GHz), 4.0 GB DDR3 500 GB (Partitioned 10%-40%-40', '1', 'unit', '', '', 'Batch 19', '5', ''),
(40, 'NComputing M300 (1PC. Large Client & 2Pcs. small Client) w/ Power Cord, Adapter, CD Driver', '6', 'unit', '', '', 'Batch 19', '5', ''),
(41, 'Tenda S108 8Port 10/100 Switch w/ Adapter', '1', 'unit', '', '', 'Batch 19', '5', ''),
(42, 'Acer V19HQL 18.5\" LED Monitor w/Power Cord, Video Cable, & Complete Accessories', '6', 'unit', '', '', 'Batch 19', '5', ''),
(43, 'Acer USB Keyboard & ACER USB Mouse W/Pad', '7', 'unit', '', '', 'Batch 19', '5', ''),
(44, 'Canon Pixma MP237 Printer w/ Bundled Inks, USB Cable, CD Driver, Power Cord, & Extra Black', '1', 'unit', '', '', 'Batch 19', '5', ''),
(45, 'Host PC, Branded New, ASUS BM1AD1 INTEL i5-4570 3.20GHZ, 4GB DDR3 1600MHZ,500 GB SATA 7200', '8', 'unit', '', '', 'Batch 20', '6', ''),
(46, 'Desktop Virtualization/Access Terminals/Thin Client using shared computing, Branded, Brand', '42', 'unit', '', '', 'Batch 20', '6', ''),
(47, 'USB HUB 4 PORT', '8', 'unit', '', '', 'Batch 20', '6', ''),
(48, 'LCT Monitor, 18\'5\" wide screen, Branded, Brand New ASUS VS197DE', '50', 'unit', '', '', 'Batch 20', '6', ''),
(49, 'Keyboard, Mouse and Mouse Pad, Branded, Brand New, ASUS', '50', 'unit', '', '', 'Batch 20', '6', ''),
(50, 'Printer, Inkjet 3-in-1,Branded,Brand New, CANON MP237 (with extra 1 PG-810-BK and 1CL-811-', '1', 'unit', '', '', 'Batch 20', '6', ''),
(51, 'Switch, 8-Port 10/100/1000,Branded,Brand New, TP LINK TL-SG1008D', '1', 'unit', '', '', 'Batch 20', '6', ''),
(52, 'Switch, 8-Port 10/100/1000, Branded,Brand New, TP LINK TL-SF1008D', '7', 'unit', '', '', 'Batch 20', '6', ''),
(53, 'Uninterruptible Power Supply (UPS), Branded, Brand New, PHEONIX MA-1200', '8', 'unit', '', '', 'Batch 20', '6', ''),
(54, 'Automatic Voltage Regulator (AVR), Branded, Brand New, HI-TECH 1000W', '7', 'unit', '', '', 'Batch 20', '6', ''),
(55, 'CAT6 UTP - 4 Meters', '17', 'pcs', '', '', 'Batch 20', '6', ''),
(56, 'CAT6 UTP - 6 Meters', '16', 'pcs', '', '', 'Batch 20', '6', ''),
(57, 'CAT6 UTP - 8 Meters', '16', 'pcs', '', '', 'Batch 20', '6', ''),
(58, 'CAT6 UTP - 1 Meters', '8', 'pcs', '', '', 'Batch 20', '6', ''),
(59, 'Extension Cord, PANTHER PSP1102', '2', 'unit', '', '', 'Batch 20', '6', ''),
(60, 'Mouldings', '1', 'lot', '', '', 'Batch 20', '6', ''),
(61, 'Face to Face Lecture & Hands on Training', '1', 'lot', '', '', 'Batch 20', '6', ''),
(62, 'Hand Book Manual', '1', 'pc', '', '', 'Batch 20', '6', ''),
(63, 'Recovery Disk', '1', 'set', '', '', 'Batch 20', '6', ''),
(64, 'Pixpro Ishow X1500 Projector', '2', 'pcs', '', '', 'Batch 24', '7', ''),
(65, 'Pixpro Soundblaster818 Multimedia Speaker', '1', 'pcs', '', '', 'Batch 24', '7', ''),
(66, 'Pixpro SVC 1500VA - AVR', '1', 'pcs', '', '', 'Batch 24', '7', ''),
(67, 'Share FL300 Thin Client', '6', 'pcs', '', '', 'Batch 24', '7', ''),
(68, 'TP Link TP - SG1008+', '1', 'pcs', '', '', 'Batch 24', '7', ''),
(69, 'Tripod Projector Screen', '1', 'pcs', '', '', 'Batch 24', '7', ''),
(70, 'Wall Mount Projector Screen', '1', 'pcs', '', '', 'Batch 24', '7', ''),
(71, '1 SET INK(BLACK & COLORED)', '1', 'pc', '', '', 'Batch 24', '7', ''),
(72, '6-GANG EXTENSION', '2', 'pcs', '', '', 'Batch 24', '7', ''),
(73, 'CANON PIXMA MP237 PRINTER', '1', 'PC', '', '', 'Batch 24', '7', ''),
(74, 'HASEE DOK-K2321U KEYBOARD', '7', 'PCS', '', '', 'Batch 24', '7', ''),
(75, 'HASEE H2391G41F TOUCH ENABLE MONITOR', '1', 'PCS', '', '', 'Batch 24', '7', ''),
(76, 'HASEE HEH41 LAPTOP', '1', 'PC', '', '', 'Batch 24', '7', ''),
(77, 'HASEE HFMPB02 HOST PC', '1', 'PC', '', '', 'Batch 24', '7', ''),
(78, 'HASEE HFMPB02 LED MONITOR', '6', 'PCS', '', '', 'Batch 24', '7', ''),
(79, 'HASEE LAPTOP BAG', '1', 'PC', '', '', 'Batch 24', '7', ''),
(80, 'HASEE MU639E MOUSE', '7', 'PCS', '', '', 'Batch 24', '7', ''),
(81, 'NETWORKING PERIPHERALS', '1', 'PC', '', '', 'Batch 24', '7', ''),
(82, 'PIXPRO 1000VA - UPS', '1', 'PC', '', '', 'Batch 24', '7', ''),
(83, 'HOST PC, BRANDED, BRAND NEW, HP COMPAQ PRO 6300 SFF, INTEL CORE I5 3570, 3.46GHZ', '8', 'UNIT', '', '', 'Batch 25', '8', ''),
(84, 'DESKTOP VIRTUALIZATION/ACCESS TERMINALS/THIN CLIENT, USING SHARED COMPUTING, BRANDED, NCOM', '42', 'UNITS', '', '', 'Batch 25', '8', ''),
(85, 'LED MONITOR, 18.5\" WIDE SCREEN, HP V192', '42', 'UNITS', '', '', 'Batch 25', '8', ''),
(86, 'KEYBOARD AND MOUSE, BRANDED, BRAND NEW, HP', '42', 'UNITS', '', '', 'Batch 25', '8', ''),
(87, '3-IN-1 INKJET PRINTERS, BRANDEDM BRAND NEW, HP K209G', '1', 'UNIT', '', '', 'Batch 25', '8', ''),
(88, 'SWITCH, 8 PORTS, BRANDED, BRAND NEW, TP-LINK TL-SG1024', '1', 'UNIT', '', '', 'Batch 25', '8', ''),
(89, 'UNINTERUPTIBLE POWER SUPPLY (UPS), BRANDED, BRAND NEW EMERSON LIEBERT PSA 1000VA', '8', 'UNITS', '', '', 'Batch 25', '8', ''),
(90, 'NETWORKING PERIPHERALS, (UTP CAT 6 AND RJ 45, BRAND NEW, GENERIC)', '1', 'UNIT', '', '', 'Batch 25', '8', ''),
(91, 'AUTOMATIC VOLTAGE REGULATOR (AVR), BRANDED, BRAND NEW, STAVOL SVC-1000VA', '7', 'UNIT', '', '', 'Batch 25', '8', ''),
(92, 'FACE TO FACE LECTURE AND HANDS ON TRAINING FOR HOST PC', '1', 'UNIT', '', '', 'Batch 25', '8', ''),
(97, 'HOST PC/ MONITOR / KEYBOARD / MOUSE/MOUSEPAD', '1', 'UNIT', '30,450.00', '', 'Batch 26', '9', ''),
(98, 'DESKTOP VIRTUALIZATION / ACCESS TERMINAL', '6', 'UNITS', '2,175.00', '', 'Batch 26', '9', ''),
(99, 'LED MONITOR, 18.5\" WIDESCREEN', '6', 'UNITS', '3,505.00', '', 'Batch 26', '9', ''),
(100, 'KEYBOARD AND MOUSE', '6', 'SETS', '410.00', '', 'Batch 26', '9', ''),
(101, '3-IN-1 INKJET PRINTER', '1', 'UNIT', '2,645.00', '', 'Batch 26', '9', ''),
(102, 'PROJECTOR WITH ACCESSORIES', '2 ', 'UNIT', '14,125.00', '', 'Batch 26', '9', ''),
(103, 'LAPTOP', '1', 'UNIT', '22,100.00', '', 'Batch 26', '9', ''),
(104, 'MULTIMEDIA SPEAKERS', '1', 'UNIT', '1,250.00', '', 'Batch 26', '9', ''),
(105, 'UNINTERRUPTIBLE POWER SUPPLY (UPS)', '1', 'UNIT', '4,575.00', '', 'Batch 26', '9', ''),
(106, 'ATUOMATIC VOLTAGE REGULATOR (AVR)', '1', 'UNIT', '3,040.00', '', 'Batch 26', '9', ''),
(107, 'NETWORKING PERIPHERALS', '1', 'UNIT', '1,755.00', '', 'Batch 26', '9', ''),
(108, 'HOST PC/ MONITOR / KEYBOARD / MOUSE/MOUSEPAD', '8', 'units', '24,050.00', '', 'Batch 27', '10', ''),
(109, 'DESKTOP VIRTUALIZATION / ACCESS TERMINAL / THIN CLIENTS', '42', 'UNITS', '2,175.00', '', 'Batch 27', '10', ''),
(110, 'LED MONITOR, 18.5\" WIDESCREEN', '42', 'UNITS', '3,455.00', '', 'Batch 27', '10', ''),
(111, 'KEYBOARD AND MOUSE', '42', 'SETS', '415.00', '', 'Batch 27', '10', ''),
(112, '3-IN-1 INKJET PRINTER', '1', 'UIT', '2,645.00', '', 'Batch 27', '10', ''),
(113, 'SWITCH', '1', 'UNIT', '3,150.00', '', 'Batch 27', '10', ''),
(114, 'UNINTERRUPTIBLE POWER SUPPLY (UPS)', '8', 'UNITS', '4,570.00', '', 'Batch 27', '10', ''),
(115, 'ATUOMATIC VOLTAGE REGULATOR (AVR)', '7', 'UNITS', '3,050.00', '', 'Batch 27', '10', ''),
(116, 'NETWORKING PERIPHERALS', '1', 'UNIT', '7,350.00', '', 'Batch 27', '10', ''),
(117, 'HOST PC ACER VERITON M2GG B350', '3', 'UNITS', '', '267,329.16', 'Batch 35', '11', ''),
(118, 'HOST PC MONITOR, ACER 9200HQL', '3', 'UNITS', '', '227,749.22', 'Batch 35', '11', ''),
(119, 'THIN CLIENT, SHARE THINCLIENT FL300', '42', 'UNITS', '', '', 'Batch 35', '11', ''),
(120, 'ACER MONITOR FOR THIN CLIENTS : ACER V20G6HQL', '42', 'UNITS', '', '', 'Batch 35', '11', ''),
(121, 'KEYBOARD/MOUSE/HEADSET', '42', 'UNITS', '', '', 'Batch 35', '11', ''),
(122, 'LAPTOP ACER TRAVELMATE TMP243-G2-MG', '2', 'UNITS', '', '61,276.14', 'Batch 35', '11', ''),
(123, 'LAPTOP MOUSE, BAG, COOLER', '2', 'UNITS', '', '34,027.57', 'Batch 35', '11', ''),
(124, 'ACER PROJECTOR XX1223H', '2', 'UNITS', '', '', 'Batch 35', '11', ''),
(125, 'PROJECTOR SCREEN', '2', 'UNITS', '', '', 'Batch 35', '11', ''),
(126, 'PROJECTOR MOUNTING BRACKET', '2', 'UNITS', '', '', 'Batch 35', '11', ''),
(127, 'AVR: SUPREMO SSR-1000SV', '7', 'UNITS', '', '17,805.27', 'Batch 35', '11', ''),
(128, 'SOURCE SUPRESSOR', '14', 'UNITS', '', '', 'Batch 35', '11', ''),
(129, 'UPS: ABRELEX CG1200', '4', 'UNITS', '', '', 'Batch 35', '11', ''),
(130, 'SWITCH - TP LINK 16 PORTS', '3', 'UNITS', '', '', 'Batch 35', '11', ''),
(131, 'SWITCH - TP LINK 8 PORTS', '1', 'UNIT', '', '', 'Batch 35', '11', ''),
(132, 'SPEAKER', '1', 'UNIT', '', '', 'Batch 35', '11', ''),
(133, 'ASUS EXTERNAL SLIM DVD-RW SDRW-08D29-U LITE ODD', '1', 'UNIT', '', '', 'Batch 35', '11', ''),
(134, 'HP DESKJET GT3610 PRINTER', '1', 'UNIT', '', '', 'Batch 35', '11', ''),
(135, 'EXTRA INKS (B,M,Y,C)', '1', 'UNIT', '', '', 'Batch 35', '11', ''),
(136, 'NETWORK CABLES', '7', 'UNITS', '', '', 'Batch 35', '11', ''),
(137, 'PLASTIC MOULDINGS', '6', 'UNITS', '', '', 'Batch 35', '11', ''),
(138, 'HOST PC SERVER ACER W/KEYBOARD AND MOUSE', '3', 'UNITS', '', '', 'Batch 36', '12', ''),
(139, 'HOST PC MONITOR; ACER S200HQL', '3', 'UNITS', '', '', 'Batch 36', '12', ''),
(140, 'THIN CLIENT SHARE THINCLIENT FL300', '42', 'UNITS', '', '', 'Batch 36', '12', ''),
(141, 'ACER MONITOR FOR THIN CLIENTS; ACER V206HQL', '42', 'UNITS', '', '', 'Batch 36', '12', ''),
(142, 'KEYBOARD/MOUSE/HEADSET', '42', 'UNITS', '', '', 'Batch 36', '12', ''),
(143, 'LAPTOP ACER TRAVELMATE TMP249-G2-MG', '2', 'UNITS', '', '', 'Batch 36', '12', ''),
(144, 'LAPTOP MOUSE, BAG COOLER', '2', 'UNITS', '', '', 'Batch 36', '12', ''),
(145, 'ACER PROJECTOR X1223H', '2', 'UNITS', '', '', 'Batch 36', '12', ''),
(146, 'PROJECTOR SCREEN', '2', 'UNITS', '', '', 'Batch 36', '12', ''),
(147, 'PROJECTOR MOUNTING BRACKET', '2', 'UNITS', '', '', 'Batch 36', '12', ''),
(148, 'AVR: SUPREMO SSR-1000SV', '7', 'UNITS', '', '', 'Batch 36', '12', ''),
(149, 'SURGE SUPRESSOR', '14', 'UNITS', '', '', 'Batch 36', '12', ''),
(150, 'UPS ABRELEX GR1200', '3', 'UNITS', '', '', 'Batch 36', '12', ''),
(151, 'SWITCH-TP LIK 16 PORTS', '3', 'UNITS', '', '', 'Batch 36', '12', ''),
(152, 'SWITCH-TP LINK 5 PORTS', '1', 'UNIT', '', '', 'Batch 36', '12', ''),
(153, 'SPEAKER', '1', 'UNIT', '', '', 'Batch 36', '12', ''),
(154, 'ASUS EXTERNAL SLIM DVD-RW SDRW-06D2S-U-UTE ODD', '1', 'UNIT', '', '', 'Batch 36', '12', ''),
(155, 'HP DESKJET GT5810 PRINTER', '1', 'UNIT', '', '', 'Batch 36', '12', ''),
(156, 'EXTRA (B,NM,Y,C)', '1', 'UNIT', '', '', 'Batch 36', '12', ''),
(157, 'NETWORK CABLES', '7', 'UNITS', '', '', 'Batch 36', '12', ''),
(158, 'PLASTIC MOULDINGS', '5', 'UNITS', '', '', 'Batch 36', '12', ''),
(159, 'ACER VERITON X4640G SMALL FORM', '7', 'UNITS', '', '', 'Batch 37', '13', ''),
(160, 'ACER V196HQL MONITOR 18\" LCD/LED BACKLIT', '42', 'UNITS', '', '', 'Batch 37', '13', ''),
(161, 'HEADPHONES WITH MICROPHONE', '42', 'UNITS', '', '', 'Batch 37', '13', ''),
(162, 'ACER USB KEYBOARD AND ACER USB MOUSE', '42', 'UNITS', '', '', 'Batch 37', '13', ''),
(163, 'NCOMPUTING M300', '42', 'UNITS', '', '', 'Batch 37', '13', ''),
(164, 'D-LINK DGS-1016D', '4', 'UNITS', '', '', 'Batch 37', '13', ''),
(165, 'EAST LINE INTERACTIVE UPS EA285', '7', 'UNITS', '', '', 'Batch 37', '13', ''),
(166, 'EAST AC STABILIZER ZTY-2KVA 2KVA 1400W', '7', 'UNITS', '', '', 'Batch 37', '13', ''),
(167, 'PDU. POWER EXTENSION', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(168, 'BROTHER DCP-T300 INCL. STANDARD SET OF INK (INITIAL) AND ONE ADDITIONAL SET', '1', 'UNIT', '', '', 'Batch 37', '13', ''),
(169, 'ACER TRAVEL MATE TMP248-M', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(170, 'LAPTOP BAG WITH SLING', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(171, 'LAPTOP COOLER', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(172, 'OPTICAL MOUSE', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(173, 'EPSON EB-X04 LCD PROJECTOR', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(174, 'LASER POINTER', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(175, 'VGA CABLE', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(176, 'FUTURE TS-70', '2', 'UNITS', '', '', 'Batch 37', '13', ''),
(177, 'CREATIVE T3300', '1', 'UNIT', '', '', 'Batch 37', '13', ''),
(178, 'LITEON EBAU108', '1', 'UNIT', '', '', 'Batch 37', '13', ''),
(179, 'DELL VOSTRO 3900 DESKTOP COMPUTER', '51', 'UNIT', '', '', 'Batch 38', '14', ''),
(180, 'DELL E1916HV 18.5\" WLED MONITOR', '51', 'UNIT', '', '', 'Batch 38', '14', ''),
(181, 'EPSON EB-X04 LCD PROJECTOR', '1', 'UNIT', '', '', 'Batch 38', '14', ''),
(182, 'MEKI TR-AV-70 70\"X70\" TRIPOD PROJECTION SCREEN', '1', 'UNIT', '', '', 'Batch 38', '14', ''),
(183, 'F&D A180X AUDIO SPEAKERS', '1', 'UNIT', '', '', 'Batch 38', '14', ''),
(184, 'APC BACK-UPS BX1100LI-MS UNINTERRUPTIBLE POWER SUPPLY(UPS)', '51', 'UNITS', '', '', 'Batch 38', '14', ''),
(185, 'D-LINK DGS-1016D 16-PORT GIGABIT UNMANAGED NETWORKING SWITCH', '4', 'UNITS', '', '', 'Batch 38', '14', ''),
(186, 'EPSON L360 MULTIFUNCTION 3-IN-1 INKJET PRINTER', '1', 'UNIT', '', '', 'Batch 38', '14', ''),
(187, 'ADDITIONAL SET OF INKS CARTRIDGES', '1', 'UNIT', '', '', 'Batch 38', '14', ''),
(188, 'GENIUS MOUSEPEN i608x 6\" X 8\" GRAPHICS TABLET(ONLY FOR 176 SCHOOLS)', '26', 'UNITS', '', '', 'Batch 38', '14', ''),
(189, 'LAPTOP ACER TRAVELMATE TMP249-G2-MG', '1', 'UNIT', '', '', 'Batch 40', '15', ''),
(190, 'LAPTOP ACER MOUSE', '1', 'UNIT', '', '', 'Batch 40', '15', ''),
(191, 'LAPTOP BAG', '1', 'UNIT', '', '', 'Batch 40', '15', ''),
(192, 'LAPTOP COOLER', '1', 'UNIT', '', '', 'Batch 40', '15', ''),
(193, 'INTERACTIVE PROJECTOR; ACER S1286GH W/ SMART TOUCH KIT', '1', 'UNIT', '', '', 'Batch 40', '15', ''),
(194, 'MOUNTING BRACKET', '1', 'UNIT', '', '', 'Batch 40', '15', ''),
(195, 'SPEAKER FUKUDA FHT200I', '1', 'UNIT', '', '', 'Batch 40', '15', ''),
(196, 'HOST MINI PC - ACER VERITON X4650G', '12', 'UNITS', '', '', 'Batch 42', '16', ''),
(197, 'LAPTOP - ACER TRAVELMATE TMP249-G2MG', '2', 'UNITS', '', '', 'Batch 42', '16', ''),
(198, 'UPS - ABRELEX GR1200', '12', 'UNITS', '', '', 'Batch 42', '16', ''),
(199, 'TELEVISION - KTC LED TV - 50\" LED', '2', 'UNITS', '', '', 'Batch 42', '16', ''),
(200, 'WIRLESS ROUTER - D LINK DIR-842', '1', 'UNIT', '', '', 'Batch 42', '16', ''),
(201, 'MINI PC MONITOR', '12', 'UNITS', '', '', 'Batch 42', '16', ''),
(202, 'MINI PC KBD/MOUSE', '12', 'UNITS', '', '', 'Batch 42', '16', ''),
(203, 'LAPTOP BAG', '2', 'UNITS', '', '', 'Batch 42', '16', ''),
(204, 'LAPTOP COOLER', '2', 'UNITS', '', '', 'Batch 42', '16', ''),
(215, 'HOST PC, ACER VERITON M4620G, INTEL CORE I5 3570, 3.40GHz', '8', 'UNITS', '26,072.80', '208,582.40', 'Batch 18', '17', ''),
(216, 'DEKSTOP VIRTUALIZATION/ACCESS TERMINALS/THIN CLIENT, NCOMPUTING M300 3-IN-1, LAN CABLE', '42', 'UNITS', '2,787.20', '117,062.40', 'Batch 18', '17', ''),
(217, 'LED MONITOR, 18.5\" WIDE SCREEN, ACER VHQ193HQL, VGA, POWER CORD', '42', 'UNITS', '3,493.36', '146,721.12', 'Batch 18', '17', ''),
(218, 'KEYBOARD & MOUSE, ACER USB', '42', 'UNITS', '457,60', '19,219.20', 'Batch 18', '17', ''),
(219, '3-IN-1 INKJET PRINTERS, CANON PIXMA MP237 4800 1200 RESOULUTION', '1', 'UNIT', '2,662.40', '2,662.40', 'Batch 18', '17', ''),
(220, 'SWITCH, 8 PORTS, TEND 8-PORT GIGABIT, 220V', '1', 'UNIT', '4,099.68', '4,099.68', 'Batch 18', '17', ''),
(221, 'UNINTERRUPTIBLE POWER SUPPLY(UPS, APC BR900GI, 500 WATTS', '8', 'UNITS', '6,120.40', '48,963.20', 'Batch 18', '17', ''),
(222, 'NETWORK PERIPHERALS (UTP CAT 6 & RJ45)', '1', 'UNIT', '7,220.72', '7,220.72', 'Batch 18', '17', ''),
(223, 'AUTOMATIC VOLTAGE REGULATOR (AVR), STAVOL SVC-1000,230V,50/60Hz', '7', 'UNIT', '3,322.80', '23,259.60', 'Batch 18', '17', ''),
(224, 'COBY NBPC1958 HOST LAPTOP', '1', 'UNIT', '27,892.05', '27,892.05', 'BATCH 2019-02', '18', ''),
(225, 'COBY NBPC1958 LAPTOP', '50', 'UNITS', '27,892.05', '1,394,602.50', 'BATCH 2019-02', '18', ''),
(226, 'TP-LINK ARCHER C9 WIRELESS ROUTER', '1', 'UNIT', '2,115.19', '2,115.19', 'BATCH 2019-02', '18', ''),
(227, 'PIXPRO CHARGING CART', '2', 'UNITS', '20,999.82', '41,999.64', 'BATCH 2019-02', '18', ''),
(228, 'COBY STV5578 SMART TV', '1', 'UNIT', '25,037.85', '25,037.85', 'BATCH 2019-02', '18', ''),
(229, 'PIXMA T5370 PRINTER', '1', 'UNIT', '7,512.90', '7,512.90', 'BATCH 2019-02', '18', ''),
(230, 'LAPTOP - MULTIGRADE', '1', 'UNIT', '22,100.00', '22,100.00', 'BATCH 28', '19', ''),
(231, 'PROJECTOR WITH ACCESSORIES ES', '1', 'UNIT', '15,650.00', '15,650.00', 'BATCH 28', '19', ''),
(232, 'MULTIMEDIA SPEAKERS', '1', 'UNIT', '1,275.00', '1,275.00', 'BATCH 28', '19', ''),
(233, 'COBY NPBC1078 2-IN-1 TABLET PC', '50', 'UNITS', '11,763.11', '588,155.50', 'BATCH 2019-03', '20', ''),
(234, 'COBY NBPC1958 LAPTOP', '1', 'UNIT', '27,892.05', '27,892.05', 'BATCH 2019-03', '20', ''),
(235, 'TP-LINK ARCHER C9 WIRELESS ROUTER', '1', 'UNIT', '2,115.19', '2,115.19', 'BATCH 2019-03', '20', ''),
(236, 'PIXPRO CHARGING CART', '2', 'UNITS', '20,999.82', '41,999.64', 'BATCH 2019-03', '20', ''),
(237, 'DESKTOP PERSONAL COMPUTER, ACER VERITON M275, 2.93GHz ', '11', 'UNITS', '29,886.48', '328,751.28', 'Batch 9', '21', ''),
(238, 'UNINTERRUPTIBLE POWER SUPPLY NEW BRAND: EMERSON-LIEBERT MODEL: PS500-PH', '11', 'UNITS', '1,669.20', '18,361.20', 'Batch 9', '21', ''),
(239, 'WIRELESS BROADBAND ROUTER: D-LINK BRAND: DIR-600 MODEL:2.4 FREQUENCY', '1', 'SET', '1,861.60', '1,861.60', 'Batch 9', '21', ''),
(240, 'PRINTER, INKJET, 3-IN-1, BRAND: BROTHER DPC-195C', '1', 'UNIT', '2,922.40', '2,922.40', 'Batch 9', '21', ''),
(241, 'TRAINING ON BASIC SOFTWARE AND HARDWARE INSTALLATION', '1', 'LOT', '639.60', '639.60', 'Batch 9', '21', ''),
(242, 'ACER TRAVELMATE P214-52 LAPTOP', '1', 'UNIT', '25,846.00', '25,846.00', 'Batch 2020 Multimedia Package', '22', ''),
(243, 'SAMSUNG UAA55TU7000GXXP, 55 INCHES LED SMART TV', '1', 'UNIT', '24,123.00', '24,123.00', 'Batch 2020 Multimedia Package', '22', ''),
(244, 'MAONO AU-C01 LAPEL SPEAKER', '1', 'UNIT', '2,498.00', '2,498.00', 'Batch 2020 Multimedia Package', '22', ''),
(245, 'Laptop-Coby NBPC2165', '4', '1', '0', '0', 'BATCH 2021 4 UNIT', '23', ''),
(246, 'HDD', '4', '1', '0', '0', 'BATCH 2021 4 UNIT', '23', ''),
(247, 'Headset', '4', '1', '0', '0', 'BATCH 2021 4 UNIT', '23', ''),
(248, 'Mouse', '4', '1', '0', '0', 'BATCH 2021 4 UNIT', '23', ''),
(249, 'Laptop Bag', '4', '1', '0', '0', 'BATCH 2021 4 UNIT', '23', ''),
(250, 'Mousepad', '4', '1', '0', '0', 'BATCH 2021 4 UNIT', '23', ''),
(251, 'USB 64 GB', '1', '1', '0', '0', 'BATCH 2021 4 UNIT', '23', ''),
(252, 'Laptop-Coby', '1', '1', '0', '0', 'Batch 2021 1 Package', '24', ''),
(253, 'HDD', '1', '1', '0', '0', 'Batch 2021 1 Package', '24', ''),
(254, 'Headset', '1', '1', '0', '0', 'Batch 2021 1 Package', '24', ''),
(255, 'Mouse', '1', '1', '0', '0', 'Batch 2021 1 Package', '24', ''),
(256, 'Laptop Bag', '1', '1', '0', '0', 'Batch 2021 1 Package', '24', ''),
(257, 'Mousepad', '1', '1', '0', '0', 'Batch 2021 1 Package', '24', ''),
(258, 'USB 64 GB', '1', '1', '0', '0', 'Batch 2021 1 Package', '24', ''),
(259, 'Laptop Coby', '11', '1', '0', '0', 'Batch 2021 - 11 Package', '25', ''),
(260, 'HDD', '11', '1', '0', '0', 'Batch 2021 - 11 Package', '25', ''),
(261, 'Headset', '11', '1', '0', '0', 'Batch 2021 - 11 Package', '25', ''),
(262, 'Mouse', '11', '1', '0', '0', 'Batch 2021 - 11 Package', '25', ''),
(263, 'Laptop Bag', '11', '1', '0', '0', 'Batch 2021 - 11 Package', '25', ''),
(264, 'Mousepad', '11', '1', '0', '0', 'Batch 2021 - 11 Package', '25', ''),
(265, 'USB 64 GB', '1', '1', '0', '0', 'Batch 2021 - 11 Package', '25', ''),
(266, 'Laptop Coby', '5', '1', '0', '0', 'Batch 2021 - 5 Package', '26', ''),
(267, 'HDD', '5', '1', '0', '0', 'Batch 2021 - 5 Package', '26', ''),
(268, 'Headset', '5', '1', '0', '0', 'Batch 2021 - 5 Package', '26', ''),
(270, 'Mouse', '5', '1', '0', '0', 'Batch 2021 - 5 Package', '26', ''),
(271, 'Laptop Bag', '5', '1', '0', '0', 'Batch 2021 - 5 Package', '26', ''),
(273, 'Mousepad', '5', '1', '0', '0', 'Batch 2021 - 5 Package', '26', ''),
(274, 'USB 64 GB', '1', '1', '0', '0', 'Batch 2021 - 5 Package', '26', ''),
(275, 'Laptop Coby', '22', '1', '0', '0', 'Batch 2021 - 22 Package', '27', ''),
(276, 'HDD', '22', '1', '0', '0', 'Batch 2021 - 22 Package', '27', ''),
(277, 'Headset', '22', '1', '0', '0', 'Batch 2021 - 22 Package', '27', ''),
(278, 'Mouse', '22', '1', '0', '0', 'Batch 2021 - 22 Package', '27', ''),
(279, 'Laptop Bag', '22', '1', '0', '0', 'Batch 2021 - 22 Package', '27', ''),
(280, 'Mousepad', '22', '1', '0', '0', 'Batch 2021 - 22 Package', '27', ''),
(281, 'USB 64 GB', '1', '1', '0', '0', 'Batch 2021 - 22 Package', '27', ''),
(282, 'Canon TS5370 3 in 1 Multifunction Inkjet Printer', '1', '1', '7512.90', '7512.90', 'Batch 2019 - 01', '28', ''),
(283, 'Coby CD-128 Headset', '50', '1', '0', '0', 'Batch 2019 - 01', '28', ''),
(284, 'Coby NBPC1078 2 in 1 Tablet PC with Minibag', '50', '1', '11763.11', '588155.50', 'Batch 2019 - 01', '28', ''),
(285, 'Coby NBPC1958 Laptop with Laptop Bag and Headset', '1', '1', '27892.05', '27892.05', 'Batch 2019 - 01', '28', ''),
(286, 'Coby SM364AG Wireless Mouse and Mouse Pad', '51', '1', '0', '0', 'Batch 2019 - 01', '28', ''),
(287, 'Coby SM364AG Wireless Mouse and Mouse Pad', '51', '1', '0', '0', 'Batch 2019 - 01', '28', ''),
(288, 'Coby STV5578-Television with Wall Mount and HDMI', '1', '1', '25037.85', '25037.85', 'Batch 2019 - 01', '28', ''),
(289, 'PixPro Charging/Storage Cart', '2', '1', '20999.82', '41999.84', 'Batch 2019 - 01', '28', ''),
(290, 'Wireless Router TP-Link Archer C9', '1', '1', '2115.19', '2115.19', 'Batch 2019 - 01', '28', ''),
(291, 'ACER EV-X13 DLP PROJECTOR W/CARRYING CASE, VGA CABLE, POWER CORD, REMOTE CONTROL, LASER PO', '1', 'UNIT', '', '', 'Batch 19', '5', ''),
(292, 'ACER EV-X13 DLP PROJECTOR W/CARRYING CASE, VGA CABLE, POWER CORD, REMOTE CONTROL, LASER PO', '1', 'UNIT', '', '', 'Batch 19', '5', ''),
(293, 'ACER TRAVELMATE P643-M-33124G50Mtkk INTEL CORE I3-3120M(2.5GHZ),4.0G DDR3 DIMM, 500.0 GB H', '1', 'UNIT', '', '', 'Batch 19', '5', ''),
(294, 'CREATIVE INSPIRE T3130 MULTIMEDIA SPEAKER WITH SUBWOOFER', '1', 'UNIT', '', '', 'Batch 19', '5', ''),
(295, 'APC BX100CT-MS UPS WITH POWER ADAPTER', '1', 'UNIT', '', '', 'Batch 19', '5', ''),
(296, '8 METER UTP CAT6 24AWG 4PAIRS WITH RJ45 FACTORY CRIMPED ON BOTH ENDS', '2', 'PCS', '', '', 'Batch 19', '5', ''),
(297, '6 METER UTP CAT6 24AWG 4PAIRS WITH RJ45 FACTORY CRIMPED ON BOTH ENDS', '2', 'PCS', '', '', 'Batch 19', '5', ''),
(298, '4 METER UTP CAT6 24AWG 4PAIRS WITH RJ45 FACTORY CRIMPED ON BOTH ENDS', '2', 'PCS', '', '', 'Batch 19', '5', ''),
(299, 'TUX AND SCREW', '1', 'SET', '', '', 'Batch 19', '5', ''),
(300, 'PLASTIC MOULDING 1x5 PCS.(2.4METER/PC.)', '1', 'SET', '', '', 'Batch 19', '5', ''),
(301, 'RUBBER MOULDING 1x5METER', '1', 'SET', '', '', 'Batch 19', '5', ''),
(302, 'STAYOL SVC 1000 AVR - WITH 2PCS. X 3 METERS UNIVERSAL 4OUTLET POWER EXTENSION CORD(16AWG, ', '1', 'UNIT', '', '', 'Batch 19', '5', ''),
(315, 'ACER VERITON M4660G INTEL CORE I5 8400 2.8GHZ PROCESSOR, 8GB DDR4 MEMORY,1TB SATA HDD (par', '41', 'UNITS', '46,180.00', '1,893,380.00', 'ICT Track', '29', ''),
(316, 'ACER V206HQL 19.5\" MONITOR W/ POWER CORD', '41', 'UNITS', '', '', 'ICT Track', '29', ''),
(317, 'ACER 3W USB POWERED SPEAKERS', '41', 'PAIRS', '', '', 'ICT Track', '29', ''),
(318, 'DOLBY GOODNESS GS-233 HEADSET', '41', 'UNITS', '', '', 'ICT Track', '29', ''),
(319, 'DVD RECORDABLE DISC (for recovery) 9pcs./Set with CD Pocket', '1', 'SET', '', '', 'ICT Track', '29', ''),
(320, 'TP LINK ARCHER C9 AC1900 WIRELESS ROUTER ', '1', 'UNIT', '3,230.00', '3,230.00', 'ICT Track', '29', ''),
(321, 'SECURE 500W AVR', '21', 'UNITS', '480.00', '10,080.00', 'ICT Track', '29', ''),
(322, 'BROTHER DCP-T510W MULTIFUNCTION 3-IN-1 PRINTER WITH BUNDLED INKS & USB PRINTER CABLE', '1', 'UNIT', '10,000.00', '10,000.00', 'ICT Track', '29', ''),
(323, 'LG55UU640C SMART TV', '1', 'UNIT', '31,600.00', '31,600.00', 'ICT Track', '29', ''),
(324, 'Laptop, Hewlett Packard HP240 G5', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(325, '2 in 1 Tablet PC, Hewlett Packard, HPx2 210 G2', '7', '7', '0', '0', 'Batch 34 (Solar)', '31', ''),
(326, 'Wireless Router, TP-Link-TL-WR840N', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(327, 'Photovoltaic Modules, Ningbo Osda Solar Co. Ltd, ODA 120-18-MD ', '3', '3', '0', '0', 'Batch 34 (Solar)', '31', ''),
(328, 'Mounting Structure, for 3 PV, 4 meters Pole with Base Plate and Anchor Bolts in concrete p', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(329, 'Charge Controller/Inverter, Stand -Alone Inverter w/ Charge Controller Leonics Company Ltd', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(330, 'Energy Storage Battery: 3 pcs Jiangsu Oliter Energy Technology Co., LTD (LPC 100-12 GEL Ba', '3', '3', '0', '0', 'Batch 34 (Solar)', '31', ''),
(331, 'Battery Box', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(332, 'Battery Interconnection Cable-AWG', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(333, 'Terminal lugs-8mm2 x 8mm stud', '8', '8', '0', '0', 'Batch 34 (Solar)', '31', ''),
(334, '15mm Shrinkable Tube-Red, Local', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(335, '15mm Shrinkable Tube, Black Local', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(336, 'PV wires Combiner, 3-1 MC4 Combiner', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(337, '2 meters 8mm2, Stranded, Double insulation, XLPE Cable-PV to Inverter', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(338, 'PV to Controller/Inverter Cable-MC4 Connector', '2', '2', '0', '0', 'Batch 34 (Solar)', '31', ''),
(339, '2 meters 8mm2, stranded, 2 core, double insolation, XLPE Cable', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(340, '5 meters #14 AWG Stranded, Flat Cord-for Load Distribution Panel', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(341, 'Load Distribution Panel', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(342, 'LED Lamps: 2 sets x 7W, WOOJONG-A60-7W', '2', '2', '0', '0', 'Batch 34 (Solar)', '31', ''),
(343, 'E27 Lighting Socket', '2', '2', '0', '0', 'Batch 34 (Solar)', '31', ''),
(345, 'AC Plug', '2', '2', '0', '0', 'Batch 34 (Solar)', '31', ''),
(346, '4mm x 15mm Philips Head Screw, (Load Distribution Panel)', '2', '2', '0', '0', 'Batch 34 (Solar)', '31', ''),
(347, '14mm, Insulated Staple Wire', '50', '50', '0', '0', 'Batch 34 (Solar)', '31', ''),
(348, '10 meters Ground Wire #12 AWG, Stranded, single core, insulated cable, THHN-Green Color Ca', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(349, 'Ground Wire Connector-6mm2 x 8mm stud Terminal Lug', '2', '2', '0', '0', 'Batch 34 (Solar)', '31', ''),
(350, 'Ground Rod-5/8\" o with Clamp', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(351, 'Wire Fixations-4mm x 150mm Cable Ties (Black)', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(352, 'Wire Fixations-4mm x 300mm Cable Ties (Black)', '1', '1', '0', '0', 'Batch 34 (Solar)', '31', ''),
(353, 'Wire Fixations-1/2\" Cable PVC Clamp with Concrete Nail', '20', '20', '0', '0', 'Batch 34 (Solar)', '31', ''),
(354, 'Acer One 10 D7 2-in-1 Tablet', '50', '50', '0', '0', 'E-TEXTBOOK', '32', ''),
(355, 'Acer Optical Wireless Mouse with Pad', '50', '50', '0', '0', 'E-TEXTBOOK', '32', ''),
(356, 'Dolby Goodness GS-233 Headset', '50', '50', '0', '0', 'E-TEXTBOOK', '32', ''),
(357, 'Carrying Bag', '50', '50', '0', '0', 'E-TEXTBOOK', '32', ''),
(358, 'Charging/Storage Cart', '2', '2', '0', '0', 'E-TEXTBOOK', '32', ''),
(359, 'TP Link Archer C9 AC1900 Wireless Router', '1', '1', '0', '0', 'E-TEXTBOOK', '32', ''),
(360, 'Acer Travelmate P2410-G2-M Laptop', '1', '1', '0', '0', 'E-TEXTBOOK', '32', ''),
(361, 'External 8x DVD Writer SATA', '1', '1', '0', '0', 'E-TEXTBOOK', '32', ''),
(362, 'Acer Optical Wireless Mouse with Pad', '1', '1', '0', '0', 'E-TEXTBOOK', '32', ''),
(363, 'Dolby Goodness GS-233 Headset', '1', '1', '0', '0', 'E-TEXTBOOK', '32', ''),
(364, 'Carrying Bag', '1', '1', '0', '0', 'E-TEXTBOOK', '32', ''),
(365, 'DVD Recordable Disc (For Recovery) with CD Packet', '10', '10', '0', '0', 'E-TEXTBOOK', '32', ''),
(366, 'aaa', '2', 'pc', '5666', ' 5566', '2024', '34', ''),
(367, 't', '1', 'lot', '45', '55554', '2024', '34', '');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `cat_id` int NOT NULL,
  `Package` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `pck_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`cat_id`, `Package`, `date`, `pck_status`) VALUES
(1, 'Batch 7', '2022-09-20 09:38:37', ''),
(2, 'Batch 13', '2022-09-20 09:52:06', ''),
(3, 'Batch 14', '2022-09-20 10:01:54', ''),
(4, 'Batch 16', '2022-09-20 10:18:54', ''),
(5, 'Batch 19', '2022-09-20 15:53:28', ''),
(6, 'Batch 20', '2022-09-23 11:10:01', ''),
(7, 'Batch 24', '2022-09-23 11:23:55', ''),
(8, 'Batch 25', '2022-09-23 11:29:59', ''),
(9, 'Batch 26', '2022-10-07 22:10:52', ''),
(10, 'Batch 27', '2022-10-07 22:18:54', ''),
(11, 'Batch 35', '2022-10-07 22:24:14', ''),
(12, 'Batch 36', '2022-10-07 22:34:03', ''),
(13, 'Batch 37', '2022-10-07 22:45:04', ''),
(14, 'Batch 38', '2022-10-07 22:45:19', ''),
(15, 'Batch 40', '2022-10-07 22:55:05', ''),
(16, 'Batch 42', '2022-10-07 23:00:33', ''),
(17, 'Batch 18', '2022-12-15 11:26:15', ''),
(18, 'Batch 2019-02', '2022-12-15 11:26:19', ''),
(19, 'BATCH 28', '2022-12-15 11:26:21', ''),
(20, 'Batch 2019-03', '2022-12-15 11:39:30', ''),
(21, 'Batch 9', '2022-12-15 16:31:27', ''),
(22, 'Batch 2020 Multimedia Package', '2022-12-15 17:02:48', ''),
(23, 'BATCH 2021 4 UNIT', '2022-12-16 19:46:02', ''),
(24, 'Batch 2021 1 Package', '2022-12-16 20:14:02', ''),
(25, 'Batch 2021 - 11 Package', '2022-12-16 20:20:26', ''),
(26, 'Batch 2021 - 5 Package', '2022-12-16 20:24:31', ''),
(27, 'Batch 2021 - 22 Package', '2022-12-16 20:27:50', ''),
(28, 'Batch 2019 - 01', '2022-12-16 20:35:14', ''),
(29, 'ICT Track', '2023-04-04 15:05:33', ''),
(31, 'Batch 34 (Solar)', '2023-04-11 16:30:53', ''),
(32, 'E-TEXTBOOK', '2023-04-13 15:33:47', ''),
(33, 'sample A', '2023-07-10 18:09:11', ''),
(34, '2024', '2023-08-18 11:36:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `ID_school` int NOT NULL,
  `id` int DEFAULT NULL,
  `school_name` varchar(150) DEFAULT NULL,
  `scl_level` varchar(20) NOT NULL,
  `c_id` varchar(50) DEFAULT NULL,
  `school_id` varchar(50) DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`ID_school`, `id`, `school_name`, `scl_level`, `c_id`, `school_id`, `time_stamp`) VALUES
(1, 1, 'Alaminos CS', 'elem', 'alaminos', '108188', '2023-10-25 05:39:29'),
(2, 2, 'De Mesa ES', 'elem', 'alaminos', '108189', '2023-10-25 05:40:52'),
(3, 3, 'Del Carmen ES', 'elem', 'alaminos', '108190', '2023-10-24 16:00:00'),
(4, 4, 'Palma ES', 'elem', 'alaminos', '108191', '2023-10-25 05:39:29'),
(5, 5, 'San Agustin ES', 'elem', 'alaminos', '108192', '2023-10-25 05:39:29'),
(6, 6, 'San Andres ES', 'elem', 'alaminos', '108193', '2023-10-25 05:39:29'),
(7, 7, 'San Benito ES', 'elem', 'alaminos', '108194', '2023-10-25 05:39:29'),
(8, 8, 'San Ildefonso ES', 'elem', 'alaminos', '108195', '2023-10-25 05:39:29'),
(9, 9, 'San Juan ES', 'elem', 'alaminos', '108196', '2023-10-25 05:39:29'),
(10, 10, 'San Miguel ES', 'elem', 'alaminos', '108197', '2023-10-25 05:39:29'),
(11, 11, 'San Roque ES', 'elem', 'alaminos', '108198', '2023-10-25 05:39:29'),
(12, 12, 'Santa Rosa ES', 'elem', 'alaminos', '108199', '2023-10-25 05:39:29'),
(13, 13, 'Alaminos Integrated National High School(JHS)', 'integrated', 'alaminos', '301265', '2023-10-25 05:39:29'),
(14, 14, 'Alaminos Integrated National High School(SHS)', 'integrated', 'alaminos', '301265', '2023-10-25 05:39:29'),
(15, 15, 'Buenaventura E. Fundialan Memorial Integrated National High School\r\n(JHS)', 'integrated', 'alaminos', '307924', '2023-10-25 05:39:29'),
(16, 16, 'Buenaventura E. Fundialan Memorial Integrated National High School\r\n(SHS)', 'integrated', 'alaminos', '307924', '2023-10-25 05:39:29'),
(17, 17, 'Ibayiw Integrated National High School\r\n(JHS)', 'integrated', 'alaminos', '301242', '2023-10-25 05:39:29'),
(18, 18, 'Ibayiw Integrated National High School\r\n(SHS)', 'integrated', 'alaminos', '301242', '2023-10-25 05:39:29'),
(19, 19, 'Bay CS', 'elem', 'bay', '108200\r\n', '2023-10-25 05:39:29'),
(20, 20, 'Bitin Elementary School', 'elem', 'bay', '108201', '2023-10-25 05:39:29'),
(21, 21, 'Calo ES', 'elem', 'bay', '108202', '2023-10-25 05:39:29'),
(22, 22, 'Maitim ES', 'elem', 'bay', '108203', '2023-10-25 05:39:29'),
(23, 23, 'Masaya ES', 'elem', 'bay', '108204', '2023-10-25 05:39:29'),
(24, 24, 'Paciano Rizal ES', 'elem', 'bay', '108205', '2023-10-25 05:39:29'),
(25, 25, 'Puypuy ES', 'elem', 'bay', '108206', '2023-10-25 05:39:29'),
(26, 26, 'San Antonio ES', 'elem', 'bay', '108207', '2023-10-25 05:39:29'),
(27, 27, 'San Isidro ES', 'elem', 'bay', '108208', '2023-10-25 05:39:29'),
(28, 28, 'Sta. Cruz Elementary School', 'elem', 'bay', '108209', '2023-10-25 05:39:29'),
(29, 29, 'Sto Domingo ES', 'elem', 'bay', '108210', '2023-10-25 05:39:29'),
(30, 30, 'Tagumpay ES', 'elem', 'bay', '108211', '2023-10-25 05:39:29'),
(31, 31, 'Tranca ES', 'elem', 'bay', '108212', '2023-10-25 05:39:29'),
(32, 32, 'Kabaritan ES', 'elem', 'bay', '164502', '2023-10-25 05:39:29'),
(33, 33, 'Bitin Integrated National High School\r\n(JHS)', 'integrated', 'bay', '301231', '2023-10-25 05:39:29'),
(34, 34, 'Bitin Integrated National High School\r\n(SHS', 'integrated', 'bay', '301231', '2023-10-25 05:39:29'),
(35, 35, 'Laguna Science Integrated National High School\r\n(JHS)', 'integrated', 'bay', '307930', '2023-10-25 05:39:29'),
(36, 36, 'Laguna Science Integrated National High School\r\n(SHS)', 'integrated', 'bay', '307930', '2023-10-25 05:39:29'),
(37, 37, 'Masaya Integrated National High School\r\n(JHS)', 'integrated', 'bay', '301251', '2023-10-25 05:39:29'),
(38, 38, 'Masaya Integrated National High School\r\n(SHS)', 'integrated', 'bay', '301251', '2023-10-25 05:39:29'),
(39, 39, 'Nicolas L. Galvez Memorial Integrated National High School(JHS)', 'integrated', 'bay', '301262', '2023-10-25 05:39:29'),
(40, 40, 'Nicolas L. Galvez Memorial Integrated National High School\r\n(SHS)', 'integrated', 'bay', '301262', '2023-10-25 05:39:29'),
(41, 41, 'Antonio Chipeco MS', 'elem', 'calauan', '108252', '2023-10-25 05:39:29'),
(42, 42, 'Balayhangin ES', 'elem', 'calauan', '108253', '2023-10-25 05:39:29'),
(43, 43, 'Bangyas ES', 'elem', 'calauan', '108254', '2023-10-25 05:39:29'),
(44, 44, 'Calauan CES', 'elem', 'calauan', '108255', '2023-10-25 05:39:29'),
(45, 45, 'Dayap ES', 'elem', 'calauan', '108256', '2023-10-25 05:39:29'),
(46, 46, 'Imok ES\r\n', 'elem', 'calauan', '108257', '2023-10-25 05:39:29'),
(47, 47, 'Lamot ES\r\n', 'elem', 'calauan', '108258', '2023-10-25 05:39:29'),
(48, 48, 'Lamot ES - Annex\r\n', 'elem', 'calauan', '108259', '2023-10-25 05:39:29'),
(49, 49, 'Limao ES\r\n', 'elem', 'calauan', '108260', '2023-10-25 05:39:29'),
(50, 50, 'Mabacan ES\r\n', 'elem', 'calauan', '108261', '2023-10-25 05:39:29'),
(51, 51, 'Masiit ES\r\n', 'elem', 'calauan', '108262', '2023-10-25 05:39:29'),
(52, 52, 'Paliparan ES\r\n', 'elem', 'calauan', '108263', '2023-10-25 05:39:29'),
(53, 53, 'Perez ES\r\n', 'elem', 'calauan', '108264', '2023-10-25 05:39:29'),
(54, 54, 'Prinza ES\r\n', 'elem', 'calauan', '108265', '2023-10-25 05:39:29'),
(55, 55, 'San Isidro ES\r\n', 'elem', 'calauan', '108266', '2023-10-25 05:39:29'),
(56, 56, 'Santo Tomas ES\r\n', 'elem', 'calauan', '108267', '2023-10-25 05:39:29'),
(57, 57, 'T.C. Dator MES (Pulong Dayap ES)\r\n', 'elem', 'calauan', '108268', '2023-10-25 05:39:29'),
(58, 58, 'Tamlong ES\r\n', 'elem', 'calauan', '108269', '2023-10-25 05:39:29'),
(59, 59, 'Mahabang Parang ES\r\n', 'elem', 'calauan', '164525', '2023-10-25 05:39:29'),
(60, 60, 'DAYAP E.S - ANNEX\r\n', 'elem', 'calauan', '164529', '2023-10-25 05:14:11'),
(61, 61, 'Makativille ES\r\n', 'elem', 'calauan', '164530', '2023-10-25 05:14:11'),
(62, 62, 'Dayap NHS\r\n', 'jhs', 'calauan', '301238', '2023-10-25 05:14:11'),
(63, 63, 'Dayap NHS (Mabacan Annex)\r\n', 'jhs', 'calauan', '307917\r\n', '2023-10-25 05:14:11'),
(64, 64, 'Dayap National Integrated High School\r\n(JHS)', 'integrated', 'calauan', '307927', '2023-10-25 05:14:11'),
(65, 65, 'Dayap National Integrated High School(SHS)', 'integrated', 'calauan', '307927\r\n', '2023-10-25 05:14:11'),
(66, 66, 'Sto. Tomas Integrated High School\r\n', 'integrated', 'calauan', '342359\r\n', '2023-10-25 05:14:11'),
(67, 67, 'Sto. Tomas Integrated High School\r\n', 'integrated', 'calauan', '342359\r\n', '2023-10-25 05:14:11'),
(68, 68, 'Bukal ES', 'elem', 'cavinti', '108270', '2023-10-25 05:14:11'),
(69, 69, 'Bulajo ES', 'elem', 'cavinti', '108271', '2023-10-25 05:14:11'),
(70, 70, 'Burol ES', 'elem', 'cavinti', '108272', '2023-10-25 05:14:11'),
(71, 71, 'Calminue ES', 'elem', 'cavinti', '108273', '2023-10-25 05:14:11'),
(72, 72, 'Cansuso ES', 'elem', 'cavinti', '108274', '2023-10-25 05:14:11'),
(73, 73, 'Cavinti ES', 'elem', 'cavinti', '108275', '2023-10-25 05:14:11'),
(74, 74, 'Inao-Awan ES', 'elem', 'cavinti', '108276', '2023-10-25 05:14:11'),
(75, 75, 'Layug ES', 'elem', 'cavinti', '108277', '2023-10-25 05:14:11'),
(76, 76, 'Lumot ES', 'elem', 'cavinti', '108278', '2023-10-25 05:14:11'),
(77, 77, 'Paowin ES', 'elem', 'cavinti', '108279', '2023-10-25 05:14:11'),
(78, 78, 'Sumucab ES', 'elem', 'cavinti', '108280', '2023-10-25 05:14:11'),
(79, 79, 'Talaongan East ES', 'elem', 'cavinti', '108281', '2023-10-25 05:14:11'),
(80, 80, 'Talaongan West ES', 'elem', 'cavinti', '108282', '2023-10-25 05:14:11'),
(81, 81, 'Sisilmin ES', 'elem', 'cavinti', '164508', '2023-10-25 05:14:11'),
(82, 82, 'Layasin ES', 'elem', 'cavinti', '164517', '2023-10-25 05:14:11'),
(83, 83, 'Udia ES', 'elem', 'cavinti', '164523', '2023-10-25 05:14:11'),
(84, 84, 'Bukal NHS\r\n', 'jhs', 'cavinti', '301233\r\n', '2023-10-25 05:14:11'),
(85, 85, 'Lumot NHS\r\n', 'jhs', 'cavinti', '301248\r\n', '2023-10-25 05:14:11'),
(86, 86, 'Cavinti Integrated National High School\r\n(JHS)', 'integrated', 'cavinti', '307911\r\n', '2023-10-25 05:14:11'),
(87, 87, 'Cavinti Integrated National High School\r\n(SHS)', 'integrated', 'cavinti', '307911\r\n', '2023-10-25 05:14:11'),
(88, 88, 'Calminue Integrated National High School\r\n(JHS)', 'integrated', 'cavinti', '307926', '2023-10-25 05:14:11'),
(89, 89, 'Calminue Integrated National High School\r\n(SHS)', 'integrated', 'cavinti', '307926\r\n', '2023-10-25 05:14:11'),
(90, 90, 'Famy Elementary School\r\n', 'elem', 'famy', '108284\r\n', '2023-10-25 05:14:11'),
(91, 91, 'Mayatba ES\r\n', 'elem', 'famy', '108287\r\n', '2023-10-25 05:14:11'),
(92, 92, 'Minayutan ES\r\n', 'elem', 'famy', '108288\r\n', '2023-10-25 05:14:11'),
(93, 93, 'Sahur-Ulan Elementary School\r\n', 'elem', 'famy', '108292\r\n', '2023-10-25 05:14:11'),
(94, 94, 'Famy National Integrated High School\r\n(JHS)', 'integrated', 'famy', '301240', '2023-10-25 05:14:11'),
(95, 95, 'Famy National Integrated High School\r\n(SHS)', 'integrated', 'famy', '301240\r\n', '2023-10-25 05:14:11'),
(96, 96, 'Longos Elementary School\r\n', 'elem', 'kalayaan', '108327\r\n', '2023-10-25 05:14:11'),
(97, 97, 'San Antonio ES\r\n', 'elem', 'kalayaan', '108331\r\n', '2023-10-25 05:14:11'),
(98, 98, 'San Juan CS (Kalayaan)\r\n', 'elem', 'kalayaan', '108332\r\n', '2023-10-25 05:14:11'),
(99, 99, 'Sitio Kalayaan ES\r\n', 'elem', 'kalayaan', '108334\r\n', '2023-10-25 05:14:11'),
(100, 100, 'Sitio Lunao ES\r\n', 'elem', 'kalayaan', '108335\r\n', '2023-10-25 05:14:11'),
(101, 101, 'SITIO MAGALOLON ES\r\n', 'elem', 'kalayaan', '108336\r\n', '2023-10-25 05:14:11'),
(102, 102, 'Sitio Pulot/Bay ES\r\n', 'elem', 'kalayaan', '164519\r\n', '2023-10-25 05:14:11'),
(103, 103, 'Calumpang ES\r\n', 'elem', 'liliw', '108294\r\n', '2023-10-25 05:14:11'),
(104, 104, 'Daniw ES\r\n', 'elem', 'liliw', '108295\r\n', '2023-10-25 05:14:11'),
(105, 105, 'FRANCISCO S. BROSAS MEMORIAL ELEMENTARY SCHOOL\r\n', 'elem', 'liliw', '108296\r\n', '2023-10-25 05:14:11'),
(106, 106, 'Liliw CES\r\n', 'elem', 'liliw', '108297\r\n', '2023-10-25 05:14:11'),
(107, 107, 'Mojon ES', 'elem', 'liliw', '108298\r\n', '2023-10-25 05:14:11'),
(108, 108, 'Novaliches ES\r\n', 'elem', 'liliw', '108299\r\n', '2023-10-25 05:14:11'),
(109, 109, 'Pag-asa Elementary School\r\n', 'elem', 'liliw', '108300\r\n', '2023-10-25 05:14:11'),
(110, 110, 'Taykin ES\r\n', 'elem', 'liliw', '108301\r\n', '2023-10-25 05:14:11'),
(111, 111, 'Liliw NHS\r\n', 'jhs', 'liliw', '301244\r\n', '2023-10-25 05:14:11'),
(112, 112, 'Liliw Senior High School\r\n', 'standA', 'liliw', '304846\r\n', '2023-10-25 05:14:11'),
(113, 113, 'Barangay Longos Senior High School\r\n', 'standA', 'kalayaan', '342343\r\n', '2023-10-25 05:14:11'),
(114, 114, 'Bagong Silang ES\r\n', 'elem', 'los_banos', '108302\r\n', '2023-10-25 05:14:11'),
(115, 115, 'Bambang Elementary School\r\n', 'elem', 'los_banos', '108303\r\n', '2023-10-25 05:14:11'),
(116, 116, 'Bayog ES\r\n', 'elem', 'los_banos', '108304', '2023-10-25 05:14:11'),
(117, 117, 'Bernaldo N. Calara ES\r\n', 'elem', 'los_banos', '108305', '2023-10-25 05:14:11'),
(118, 118, 'Lalakay Elementary School\r\n', 'elem', 'los_banos', '108306', '2023-10-25 05:14:11'),
(119, 119, 'Lopez ES', 'elem', 'los_banos', '108307', '2023-10-25 05:14:11'),
(120, 120, 'Los Banos Central Elementary School\r\n', 'elem', 'los_banos', '108308', '2023-10-25 05:14:11'),
(121, 121, 'Maahas ES\r\n', 'elem', 'los_banos', '108309', '2023-10-25 05:14:11'),
(122, 122, 'Malinta ES\r\n', 'elem', 'los_banos', '108310', '2023-10-25 05:14:11'),
(123, 123, 'Mayondon Elementary School\r\n', 'elem', 'los_banos', '108311', '2023-10-25 05:14:11'),
(124, 124, 'P. Rizal ES (Putho ES)\r\n', 'elem', 'los_banos', '108312', '2023-10-25 05:14:11'),
(125, 125, 'San Antonio Elementary School\r\n', 'elem', 'los_banos', '108313', '2023-10-25 05:14:11'),
(126, 126, 'Tadlac Elementary School\r\n', 'elem', 'los_banos', '108314', '2023-10-25 05:14:11'),
(127, 127, 'Los Baños NHSl - Poblacion\r\n', 'jhs', 'los_banos', '301246', '2023-10-25 05:14:11'),
(128, 128, 'Los Banos NHS (Batong Malake)\r\n', 'jhs', 'los_banos', '301247', '2023-10-25 05:14:11'),
(129, 129, 'Mayondon NHS (LBIHS)', 'jhs', 'los_banos', '307936', '2023-10-25 05:14:11'),
(130, 130, 'B.N. Calara Integrated National High School\r\n', 'integrated', 'los_banos', '342353\r\n', '2023-10-25 05:14:11'),
(131, 131, 'B.N. Calara Integrated National High School\r\n', 'integrated', 'los_banos', '342353\r\n', '2023-10-25 05:14:11'),
(132, 132, 'Tuntungin-Putho Integrated National High School\r\n(JHS)', 'integrated', 'los_banos', '307933\r\n', '2023-10-25 05:14:11'),
(133, 133, 'Tuntungin-Putho Integrated National High School\r\n(SHS)', 'integrated', 'los_banos', '307933\r\n', '2023-10-25 05:14:11'),
(134, 134, 'Los Baños Senior High School\r\n', 'standA', 'los_banos', '342349\r\n', '2023-10-25 05:14:11'),
(135, 135, 'Los Baños - Bambang Senior High School Stand Alone\r\n', 'standA', 'los_banos', '342350\r\n', '2023-10-25 05:14:11'),
(136, 136, 'Los Baños - Bayog Senior High School Stand Alone\r\n', 'standA', 'los_banos', '342352\r\n', '2023-10-25 05:14:11'),
(137, 137, 'Los Baños - Lalakay Senior High School Stand Alone\r\n', 'standA', 'los_banos', '342351\r\n', '2023-10-25 05:14:11'),
(138, 138, 'Bonifacio Elementary School', 'elem', 'luisiana', '108315', '2023-10-25 05:14:11'),
(139, 139, 'Dela Paz-San Pablo ES\r\n', 'elem', 'luisiana', '108316\r\n', '2023-10-25 05:14:11'),
(140, 140, 'Luisiana CES\r\n', 'elem', 'luisiana', '108317\r\n', '2023-10-25 05:14:11'),
(141, 141, 'San Antonio ES\r\n', 'elem', 'luisiana', '108318\r\n', '2023-10-25 05:14:11'),
(142, 142, 'San Buenaventura ES\r\n', 'elem', 'luisiana', '108319\r\n', '2023-10-25 05:14:11'),
(143, 143, 'San Isidro Elementary School\r\n', 'elem', 'luisiana', '108320\r\n', '2023-10-25 05:14:11'),
(144, 144, 'San Salvador ES\r\n', 'elem', 'luisiana', '108321\r\n', '2023-10-25 05:14:11'),
(145, 145, 'Sto. Domingo ES\r\n', 'elem', 'luisiana', '108322\r\n', '2023-10-25 05:14:11'),
(146, 146, 'San Rafael-San Roque ES\r\n', 'elem', 'luisiana', '164509\r\n', '2023-10-25 05:14:11'),
(147, 147, 'San Buenaventura Integrated National High School(JHS)', 'integrated', 'luisiana', '301263\r\n', '2023-10-25 05:14:11'),
(148, 148, 'San Buenaventura Integrated National High School(SHS)', 'integrated', 'luisiana', '301263\r\n', '2023-10-25 05:14:11'),
(149, 149, 'Luisiana Integrated National High School\r\n(JHS)', 'integrated', 'luisiana', '307935\r\n', '2023-10-25 05:14:11'),
(150, 150, 'Luisiana Integrated National High School\r\n(SHS)', 'integrated', 'luisiana', '307935\r\n', '2023-10-25 05:14:11'),
(151, 151, 'Balubad Elementary School\r\n', 'elem', 'lumban', '108323\r\n', '2023-10-25 05:14:11'),
(152, 152, 'Caliraya ES\r\n', 'elem', 'lumban', '108324\r\n', '2023-10-25 05:14:11'),
(153, 153, 'Concepcion (G. Tabia ES)\r\n', 'elem', 'lumban', '108325\r\n', '2023-10-25 05:14:11'),
(154, 154, 'Lewin Elementary School\r\n', 'elem', 'lumban', '108326\r\n', '2023-10-25 05:14:11'),
(155, 155, 'Lumban CES\r\n', 'elem', 'lumban', '108328\r\n', '2023-10-25 05:14:11'),
(156, 156, 'Maytalang I ES\r\n', 'elem', 'lumban', '108329', '2023-10-25 05:14:11'),
(157, 157, 'Maytalang II ES\r\n', 'elem', 'lumban', '108330\r\n', '2023-10-25 05:14:11'),
(158, 158, 'Santo Niño ES\r\n', 'elem', 'lumban', '108333\r\n', '2023-10-25 05:14:11'),
(159, 159, 'Wawa ES\r\n', 'elem', 'lumban', '108337\r\n', '2023-10-25 05:14:11'),
(160, 160, 'Lumban NHS\r\n', 'jhs', 'lumban', '301279\r\n', '2023-10-25 05:14:11'),
(161, 161, 'Lumban Senior High School\r\n', 'standA', 'lumban', '302159\r\n', '2023-10-25 05:14:11'),
(162, 162, 'E.W. De Vela ES\r\n', 'elem', 'mabitac', '108283\r\n', '2023-10-25 05:14:11'),
(163, 163, 'Mabitac ES\r\n', 'elem', 'mabitac', '108285\r\n', '2023-10-25 05:14:11'),
(164, 164, 'Matalatala ES\r\n', 'elem', 'mabitac', '108286\r\n', '2023-10-25 05:14:11'),
(165, 165, 'Nanguma ES\r\n', 'elem', 'mabitac', '108289\r\n', '2023-10-25 05:14:11'),
(166, 166, 'Numero ES\r\n', 'elem', 'mabitac', '108290\r\n', '2023-10-25 05:14:11'),
(167, 167, 'Paagahan ES\r\n', 'elem', 'mabitac', '108291\r\n', '2023-10-25 05:14:11'),
(168, 168, 'Eugenia Games Olarte Reyes Elem. Sch.\r\n', 'elem', 'mabitac', '108293\r\n', '2023-10-25 05:14:11'),
(169, 169, 'San Miguel ES\r\n', 'elem', 'mabitac', '164504\r\n', '2023-10-25 05:14:11'),
(170, 170, 'Mabitac Integrated National High School\r\n(JHS)', 'integrated', 'mabitac', '301249', '2023-10-25 05:14:11'),
(171, 171, 'Mabitac Integrated National High School\r\n(SHS)', 'integrated', 'mabitac', '301249\r\n', '2023-10-25 05:14:11'),
(172, 172, 'Matalatala Integrated National High School\r\n(JHS)', 'integrated', 'mabitac', '307928', '2023-10-25 05:14:11'),
(173, 173, 'Matalatala Integrated National High School\r\n(SHS)', 'integrated', 'mabitac', '307928\r\n', '2023-10-25 05:14:11'),
(174, 174, 'Paagahan Integrated National High School\r\n(JHS)', 'integrated', 'mabitac', '301255\r\n', '2023-10-25 05:14:11'),
(175, 175, 'Paagahan Integrated National High School\r\n(SHS)', 'integrated', 'mabitac', '301255\r\n', '2023-10-25 05:14:11'),
(176, 176, 'Balanac Elementary School\r\n', 'elem', 'magdalena', '108338\r\n', '2023-10-25 05:14:11'),
(177, 177, 'Buenavista-Cigaras ES\r\n', 'elem', 'magdalena', '108339\r\n', '2023-10-25 05:14:11'),
(178, 178, 'Bungkol ES\r\n', 'elem', 'magdalena', '108340\r\n', '2023-10-25 05:14:11'),
(179, 179, 'Ananias Laico Memorial Elementary School\r\n', 'elem', 'magdalena', '108341\r\n', '2023-10-25 05:14:11'),
(180, 180, 'Maravilla Elementary School\r\n', 'elem', 'magdalena', '108342\r\n', '2023-10-25 05:14:11'),
(181, 181, 'Ricardo A. Pronove ES\r\n', 'elem', 'magdalena', '108343\r\n', '2023-10-25 05:14:11'),
(182, 182, 'Buenavista Integrated National High School\r\n(JHS)', 'integrated', 'magdalena', '301232\r\n', '2023-10-25 05:14:11'),
(183, 183, 'Buenavista Integrated National High School\r\n(SHS)', 'integrated', 'magdalena', '301232\r\n', '2023-10-25 05:14:11'),
(184, 184, 'Magdalena Integrated National High School\r\n(JHS)', 'integrated', 'magdalena', '307937\r\n', '2023-10-25 05:14:11'),
(185, 185, 'Magdalena Integrated National High School\r\n(SHS)', 'integrated', 'magdalena', '307937\r\n', '2023-10-25 05:14:11'),
(186, 186, 'Bakia-Botocan ES\r\n', 'elem', 'majayjay', '108344\r\n', '2023-10-25 05:14:11'),
(187, 187, 'Bukal ES\r\n', 'elem', 'majayjay', '108345\r\n', '2023-10-25 05:14:11'),
(188, 188, 'Gagalot-Taytay ES\r\n', 'elem', 'majayjay', '108346\r\n', '2023-10-25 05:14:11'),
(189, 189, 'GAGALOT-TAYTAY ELEM. (ANNEX)\r\n', 'elem', 'majayjay', '108347\r\n', '2023-10-25 05:14:11'),
(190, 190, 'Majayjay Elementary School\r\n', 'elem', 'majayjay', '108348\r\n', '2023-10-25 05:14:11'),
(191, 191, 'Santa Catalina Elementary School\r\n', 'elem', 'majayjay', '108349\r\n', '2023-10-25 05:14:11'),
(192, 192, 'Suba ES\r\n', 'elem', 'majayjay', '108350\r\n', '2023-10-25 05:14:11'),
(193, 193, 'Suba ES - Munting Kawayan\r\n', 'elem', 'majayjay', '164531\r\n', '2023-10-25 05:14:11'),
(194, 194, 'Suba NHS (Gagalot Annex)\r\n', 'jhs', 'majayjay', '307938', '2023-10-25 05:14:11'),
(195, 195, 'Suba NHS\r\n', 'jhs', 'majayjay', '301275', '2023-10-25 05:14:11'),
(196, 196, 'Sta. Catalina NHS Ext. (Bakia-Botocan )\r\n', 'jhs', 'majayjay', '307922', '2023-10-25 05:14:11'),
(197, 197, 'Sta. Catalina Integrated National High School\r\n(JHS)', 'integrated', 'majayjay', '301268', '2023-10-25 05:14:11'),
(198, 198, 'Sta. Catalina Integrated National High School\r\n(SHS)', 'integrated', 'majayjay', '301268\r\n', '2023-10-25 05:14:11'),
(199, 199, 'Abo-Bukal Elementary School\r\n', 'elem', 'nagcarlan', '108351\r\n', '2023-10-25 05:14:11'),
(200, 200, 'Alumbrado ES\r\n', 'elem', 'nagcarlan', '108352\r\n', '2023-10-25 05:14:11'),
(201, 201, 'Banilad ES\r\n', 'elem', 'nagcarlan', '108354\r\n', '2023-10-25 05:14:11'),
(202, 202, 'Banka-Banka Elementary School\r\n', 'elem', 'nagcarlan', '108355\r\n', '2023-10-25 05:14:11'),
(203, 203, 'Bunga Elementary School\r\n', 'elem', 'nagcarlan', '108356\r\n', '2023-10-25 05:14:11'),
(204, 204, 'Crisanto Guysayko MES\r\n', 'elem', 'nagcarlan', '108357\r\n', '2023-10-25 05:14:11'),
(205, 205, 'Kabubuhayan ES\r\n', 'elem', 'nagcarlan', '108358\r\n', '2023-10-25 05:14:11'),
(206, 206, 'Labangan ES\r\n', 'elem', 'nagcarlan', '108359\r\n', '2023-10-25 05:14:11'),
(207, 207, 'Lazaan-Malinao ES\r\n', 'elem', 'nagcarlan', '108360\r\n', '2023-10-25 05:14:11'),
(208, 208, 'Manaol ES\r\n', 'elem', 'nagcarlan', '108361\r\n', '2023-10-25 05:14:11'),
(209, 209, 'PLARIDEL ELEMENTARY SCHOOL\r\n', 'elem', 'nagcarlan', '108362\r\n', '2023-10-25 05:14:11'),
(210, 210, 'San Francisco Elementary School\r\n', 'elem', 'nagcarlan', '108365\r\n', '2023-10-25 05:14:11'),
(211, 211, 'Santa Lucia ES\r\n', 'elem', 'nagcarlan', '108366\r\n', '2023-10-25 05:14:11'),
(212, 212, 'Silangan Napapatid ES\r\n', 'elem', 'nagcarlan', '108367\r\n', '2023-10-25 05:14:11'),
(213, 213, 'Sinipian ES\r\n', 'elem', 'nagcarlan', '108368\r\n', '2023-10-25 05:14:11'),
(214, 214, 'Talangan ES\r\n', 'elem', 'nagcarlan', '108369\r\n', '2023-10-25 05:14:11'),
(215, 215, 'Taytay-Malaya ES\r\n', 'elem', 'nagcarlan', '108370\r\n', '2023-10-25 05:14:11'),
(216, 216, 'Wakat ES\r\n', 'elem', 'nagcarlan', '108371\r\n', '2023-10-25 05:14:11'),
(217, 217, 'YUKOS ELEMENTARY SCHOOL\r\n', 'elem', 'nagcarlan', '108372\r\n', '2023-10-25 05:14:11'),
(218, 218, 'Yukos ES - Annex\r\n', 'elem', 'nagcarlan', '108373\r\n', '2023-10-25 05:14:11'),
(219, 219, 'Calumpang NHS\r\n', 'jhs', 'nagcarlan', '301236\r\n', '2023-10-25 05:14:11'),
(220, 220, 'Lowland Integrated National High School\r\n(JHS)', 'integrated', 'nagcarlan', '301237\r\n', '2023-10-25 05:14:11'),
(221, 221, 'Lowland Integrated National High School\r\n(SHS)', 'integrated', 'nagcarlan', '301237\r\n', '2023-10-25 05:14:11'),
(222, 222, 'Plaridel Integrated National High School\r\n(JHS)', 'integrated', 'nagcarlan', '301258\r\n', '2023-10-25 05:14:11'),
(223, 223, 'Plaridel Integrated National High School\r\n(SHS)', 'integrated', 'nagcarlan', '301258\r\n', '2023-10-25 05:14:11'),
(224, 224, 'Talangan Integrated National High School\r\n(JHS)', 'integrated', 'nagcarlan', '301276', '2023-10-25 05:14:11'),
(225, 225, 'Talangan Integrated National High School\r\n(SHS)', 'integrated', 'nagcarlan', '301276\r\n', '2023-10-25 05:14:11'),
(226, 226, 'Upland Integrated National High School\r\n(JHS)', 'integrated', 'nagcarlan', '301278\r\n', '2023-10-25 05:14:11'),
(227, 227, 'Upland Integrated National High School\r\n(SHS)', 'integrated', 'nagcarlan', '301278\r\n', '2023-10-25 05:14:11'),
(228, 228, 'Nagcarlan Senior High School\r\n', 'standA', 'nagcarlan', '342347\r\n', '2023-10-25 05:14:11'),
(229, 229, 'Ibaba ES\r\n', 'elem', 'paete', '108374', '2023-10-25 05:14:11'),
(230, 230, 'Paete CS\r\n', 'elem', 'paete', '108375\r\n', '2023-10-25 05:14:11'),
(231, 231, 'Papatahan ES\r\n', 'elem', 'paete', '108376\r\n', '2023-10-25 05:14:11'),
(232, 232, 'Quinale Elementary School\r\n', 'elem', 'paete', '108377\r\n', '2023-10-25 05:14:11'),
(233, 233, 'Tubog ES\r\n', 'elem', 'paete', '164505\r\n', '2023-10-25 05:14:11'),
(234, 234, 'Poten & Eliseo M. Quesada Memo. NHS\r\n', 'jhs', 'paete', '307913\r\n', '2023-10-25 05:14:11'),
(235, 235, 'Poten & Eliseo M. Quesada MNHS - Papatahan Annex\r\n', 'jhs', 'paete', '307925\r\n', '2023-10-25 05:14:11'),
(236, 236, 'Luis C. Obial Senior High School\r\n', 'standA', 'paete', '342357', '2023-10-25 05:14:11'),
(237, 237, 'Stand Alone SHS No. 21 Papatahan\r\n', 'standA', 'paete', '342363\r\n', '2023-10-25 05:14:11'),
(238, 238, 'Dingin Elementary School\r\n', 'elem', 'pagsanjan', '102178\r\n', '2023-10-25 05:14:11'),
(239, 239, 'Anibong Elementary School\r\n', 'elem', 'pagsanjan', '108378\r\n', '2023-10-25 05:14:11'),
(240, 240, 'Dr. Augusto E. Hocson Elem. School\r\n', 'elem', 'pagsanjan', '108379\r\n', '2023-10-25 05:14:11'),
(241, 241, 'Caesar Z. Lanuza ES\r\n', 'elem', 'pagsanjan', '108380\r\n', '2023-10-25 05:14:11'),
(242, 242, 'Jose A. Gallardo, Sr. ES (Magdapio ES)\r\n', 'elem', 'pagsanjan', '108381\r\n', '2023-10-25 05:14:11'),
(243, 243, 'M. Z. Lanuza ES\r\n', 'elem', 'pagsanjan', '108382\r\n', '2023-10-25 05:14:11'),
(244, 244, 'Maulawin Elementary School\r\n', 'elem', 'pagsanjan', '108383\r\n', '2023-10-25 05:14:11'),
(245, 245, 'FRANCISCO BENITEZ MEMORIAL SCHOOL\r\n', 'elem', 'pagsanjan', '108384\r\n', '2023-10-25 05:14:11'),
(246, 246, 'PINAGSANJAN ES\r\n', 'elem', 'pagsanjan', '108385\r\n', '2023-10-25 05:14:11'),
(247, 247, 'San Isidro ES\r\n', 'elem', 'pagsanjan', '108387\r\n', '2023-10-25 05:14:11'),
(248, 248, 'Sampaloc ES\r\n', 'elem', 'pagsanjan', '108386\r\n', '2023-10-25 05:14:11'),
(249, 249, 'Unson Elementary School\r\n', 'elem', 'pagsanjan', '108388\r\n', '2023-10-25 05:14:11'),
(250, 250, 'Unson NHS', 'jhs', 'pagsanjan', '301277\r\n', '2023-10-25 05:14:11'),
(251, 251, 'Pagsanjan Integrated High School\r\n(JHS)', 'integrated', 'pagsanjan', '301253\r\n', '2023-10-25 05:14:11'),
(252, 252, 'Pagsanjan Integrated High School\r\n(SHS)', 'integrated', 'pagsanjan', '301253\r\n', '2023-10-25 05:14:11'),
(253, 253, 'Pagsanjan Stand Alone Senior High School\r\n', 'standA', 'pagsanjan', '342345', '2023-10-25 05:14:11'),
(254, 254, 'Banilan ES\r\n', 'elem', 'pakil', '108390', '2023-10-25 05:14:11'),
(255, 255, 'Matikiw ES\r\n', 'elem', 'pakil', '108391\r\n', '2023-10-25 05:14:11'),
(256, 256, 'Casa Real ES\r\n', 'elem', 'pakil', '108392\r\n', '2023-10-25 05:14:11'),
(257, 257, 'Casinsin ES\r\n', 'elem', 'pakil', '108393\r\n', '2023-10-25 05:14:11'),
(258, 258, 'Cornelio C. Dalena ES\r\n', 'elem', 'pakil', '108394\r\n', '2023-10-25 05:14:11'),
(259, 259, 'Kabulusan ES\r\n', 'elem', 'pakil', '108398\r\n', '2023-10-25 05:14:11'),
(260, 260, 'Maulawin ES\r\n', 'elem', 'pakil', '108400\r\n', '2023-10-25 05:14:11'),
(261, 261, 'Pakil ES\r\n', 'elem', 'pakil', '108401\r\n', '2023-10-25 05:14:11'),
(262, 262, 'Saray ES\r\n', 'elem', 'pakil', '108403\r\n', '2023-10-25 05:14:11'),
(263, 263, 'Kabulusan Integrated National High School\r\n(JHS)', 'integrated', 'pakil', '301243\r\n', '2023-10-25 05:14:11'),
(264, 264, 'Kabulusan Integrated National High School\r\n(SHS)', 'integrated', 'pakil', '301243\r\n', '2023-10-25 05:14:11'),
(265, 265, 'Victor O. De Gui, Jr. MES (Balian Bo. School)\r\n', 'elem', 'pangil', '108389', '2023-10-25 05:14:11'),
(266, 266, 'Dambo ES\r\n', 'elem', 'pangil', '108395\r\n', '2023-10-25 05:14:11'),
(267, 267, 'Galalan Elementary Sschool\r\n', 'elem', 'pangil', '108396\r\n', '2023-10-25 05:14:11'),
(268, 268, 'J. Fernandez Y Zoril (Asufre)\r\n', 'elem', 'pangil', '108397\r\n', '2023-10-25 05:14:11'),
(269, 269, 'Pangil ES\r\n', 'elem', 'pangil', '108402\r\n', '2023-10-25 05:14:11'),
(270, 270, 'Sulib ES\r\n', 'elem', 'pangil', '108404\r\n', '2023-10-25 05:14:11'),
(271, 271, 'Gisgis Elementary School\r\n', 'elem', 'pangil', '164501\r\n', '2023-10-25 05:14:11'),
(272, 272, 'DAMBO NHS\r\n', 'jhs', 'pangil', '307910', '2023-10-25 05:14:11'),
(273, 273, 'Balian Integrated National High School\r\n(JHS)', 'integrated', 'pangil', '301226\r\n', '2023-10-25 05:14:11'),
(274, 274, 'Balian Integrated National High School\r\n(SHS)', 'integrated', 'pangil', '301226\r\n', '2023-10-25 05:14:11'),
(275, 275, 'Galalan Integrated National High School\r\n(JHS)', 'integrated', 'pangil', '307918\r\n', '2023-10-25 05:14:11'),
(276, 276, 'Galalan Integrated National High School\r\n(SHS)', 'integrated', 'pangil', '307918\r\n', '2023-10-25 05:14:11'),
(277, 277, 'Aplaya ES\r\n', 'elem', 'pila', '108405\r\n', '2023-10-25 05:14:11'),
(278, 278, 'Concepcion-Mojon E/S\r\n', 'elem', 'pila', '108406', '2023-10-25 05:14:11'),
(279, 279, 'Labuin ES\r\n', 'elem', 'pila', '1084067', '2023-10-25 05:14:11'),
(280, 280, 'Linga ES\r\n', 'elem', 'pila', '108408', '2023-10-25 05:14:11'),
(281, 281, 'Masico ES\r\n', 'elem', 'pila', '108409', '2023-10-25 05:14:11'),
(282, 282, 'Pansol ES\r\n', 'elem', 'pila', '108410', '2023-10-25 05:14:11'),
(283, 283, 'Pila ES\r\n', 'elem', 'pila', '108411', '2023-10-25 05:14:11'),
(284, 284, 'Pinagbayanan ES\r\n', 'elem', 'pila', '108412', '2023-10-25 05:14:11'),
(285, 285, 'Pook ES\r\n', 'elem', 'pila', '108413', '2023-10-25 05:14:11'),
(286, 286, 'San Antonio ES\r\n', 'elem', 'pila', '108414', '2023-10-25 05:14:11'),
(287, 287, 'San Miguel ES\r\n', 'elem', 'pila', '108415', '2023-10-25 05:14:11'),
(288, 288, 'Tubuan ES\r\n', 'elem', 'pila', '108416\r\n', '2023-10-25 05:14:11'),
(289, 289, 'Linga NHS', 'jhs', 'pila', '301245', '2023-10-25 05:14:11'),
(290, 290, 'Masico NHS\r\n', 'jhs', 'pila', '301252\r\n', '2023-10-25 05:14:11'),
(291, 291, 'Don Manuel Rivera Memo. INHS\r\n(JHS)', 'integrated', 'pila', '307905', '2023-10-25 05:14:11'),
(292, 292, 'Don Manuel Rivera Memo. INHS\r\n(SHS)', 'integrated', 'pila', '307905\r\n', '2023-10-25 05:14:11'),
(293, 293, 'Pila Senior High School\r\n', 'standA', 'pila', '342358\r\n', '2023-10-25 05:14:11'),
(294, 294, 'Pakil Senior High School', 'standA', 'pakil', '342344\r\n', '2023-10-25 05:14:11'),
(295, 295, 'Antipolo Sulsuguin ES', 'elem', 'rizal', '108353\r\n', '2023-10-25 05:14:11'),
(296, 296, 'Pook ES\r\n', 'elem', 'rizal', '108363\r\n', '2023-10-25 05:14:11'),
(297, 297, 'Rizal ES\r\n', 'elem', 'rizal', '108364\r\n', '2023-10-25 05:14:11'),
(298, 298, 'Cristobal S. Conducto Memorial Integrated National High School\r\n(JHS)', 'integrated', 'rizal', '307903\r\n', '2023-10-25 05:14:11'),
(299, 299, 'Cristobal S. Conducto Memorial Integrated National High School\r\n(SHS)', 'integrated', 'rizal', '307903\r\n', '2023-10-25 05:14:11'),
(300, 300, 'Bagumbayan ES\r\n', 'elem', 'sta_cruz', '108436', '2023-10-25 05:14:11'),
(301, 301, 'Bubukal ES\r\n', 'elem', 'sta_cruz', '108437\r\n', '2023-10-25 05:14:11'),
(302, 302, 'Callos(Escolapia)ES', 'elem', 'sta_cruz', '108438\r\n', '2023-10-25 05:14:11'),
(303, 303, 'Duhat ES', 'elem', 'sta_cruz', '108439\r\n', '2023-10-25 05:14:11'),
(304, 304, 'Gatid ES', 'elem', 'sta_cruz', '108440\r\n', '2023-10-25 05:14:11'),
(305, 305, 'Oogong ES', 'elem', 'sta_cruz', '108441\r\n', '2023-10-25 05:14:11'),
(306, 306, 'Pagsawitan ES', 'elem', 'sta_cruz', '108442\r\n', '2023-10-25 05:14:11'),
(307, 307, 'Palasan ES', 'elem', 'sta_cruz', '108443\r\n', '2023-10-25 05:14:11'),
(308, 308, 'Patimbao ES', 'elem', 'sta_cruz', '108444\r\n', '2023-10-25 05:14:11'),
(309, 309, 'San Jose ES', 'elem', 'sta_cruz', '108445\r\n', '2023-10-25 05:14:11'),
(310, 310, 'Santa Cruz CES', 'elem', 'sta_cruz', '108446\r\n', '2023-10-25 05:14:11'),
(311, 311, 'Santisima Cruz', 'elem', 'sta_cruz', '108447\r\n', '2023-10-25 05:14:11'),
(312, 312, 'Santo Angel Central ES', 'elem', 'sta_cruz', '108448\r\n', '2023-10-25 05:14:11'),
(313, 313, 'Santo Angel Sur ES\r\n', 'elem', 'sta_cruz', '108449\r\n', '2023-10-25 05:14:11'),
(314, 314, 'Silangan ES\r\n', 'elem', 'sta_cruz', '108450\r\n', '2023-10-25 05:14:11'),
(315, 315, 'Sto. Angel Norte E/S\r\n', 'elem', 'sta_cruz', '108451\r\n', '2023-10-25 05:14:11'),
(316, 316, 'Bubukal ES - Annex (SAN JUAN ES)\r\n', 'elem', 'sta_cruz', '164524\r\n', '2023-10-25 05:14:11'),
(317, 317, 'Pedro Guevara MNHS\r\n', 'jhs', 'sta_cruz', '301257\r\n', '2023-10-25 05:14:11'),
(318, 318, 'Gov. Felicisimo T. San Luis Integrated Senior High School\r\n(JHS)', 'integrated', 'sta_cruz', '307906', '2023-10-25 05:14:11'),
(319, 319, 'Gov. Felicisimo T. San Luis Integrated Senior High School\r\n(SHS)', 'integrated', 'sta_cruz', '307906\r\n', '2023-10-25 05:14:11'),
(320, 320, 'Santa Cruz Integrated National High School\r\n(JHS)', 'integrated', 'sta_cruz', '342362', '2023-10-25 05:14:11'),
(321, 321, 'Santa Cruz Integrated National High School\r\n(SHS)', 'integrated', 'sta_cruz', '342362\r\n', '2023-10-25 05:14:11'),
(322, 322, 'Laguna Senior High School\r\n', 'standA', 'sta_cruz', '342346', '2023-10-25 05:14:11'),
(323, 323, 'Adia ES\r\n', 'elem', 'santa_maria', '108452\r\n', '2023-10-25 05:14:11'),
(324, 324, 'Bagong Pook ES\r\n', 'elem', 'santa_maria', '108453\r\n', '2023-10-25 05:14:11'),
(325, 325, 'Bagumbayan ES\r\n', 'elem', 'santa_maria', '108454\r\n', '2023-10-25 05:14:11'),
(326, 326, 'Cabooan ES\r\n', 'elem', 'santa_maria', '108455\r\n', '2023-10-25 05:14:11'),
(327, 327, 'Calangay Elementary School\r\n', 'elem', 'santa_maria', '108456\r\n', '2023-10-25 05:14:11'),
(328, 328, 'Cambuja-Bubucal ES\r\n', 'elem', 'santa_maria', '108457\r\n', '2023-10-25 05:14:11'),
(329, 329, 'Coralan ES\r\n', 'elem', 'santa_maria', '108458\r\n', '2023-10-25 05:14:11'),
(330, 330, 'Cueva ES\r\n', 'elem', 'santa_maria', '108459\r\n', '2023-10-25 05:14:11'),
(331, 331, 'J. Santiago ES\r\n', 'elem', 'santa_maria', '108460\r\n', '2023-10-25 05:14:11'),
(332, 332, 'Matalinting ES\r\n', 'elem', 'santa_maria', '108461\r\n', '2023-10-25 05:14:11'),
(333, 333, 'Paang Bundok ES\r\n', 'elem', 'santa_maria', '108462\r\n', '2023-10-25 05:14:11'),
(334, 334, 'Pao-O ES Main\r\n', 'elem', 'santa_maria', '108463\r\n', '2023-10-25 05:14:11'),
(335, 335, 'PARANG NG BUHO ELEM. SCHOOL\r\n', 'elem', 'santa_maria', '108464\r\n', '2023-10-25 05:14:11'),
(336, 336, 'Pulong Mindanao ES\r\n', 'elem', 'santa_maria', '108465\r\n', '2023-10-25 05:14:11'),
(337, 337, 'Santa Maria ES\r\n', 'elem', 'santa_maria', '108466\r\n', '2023-10-25 05:14:11'),
(338, 338, 'Talangka ES\r\n', 'elem', 'santa_maria', '108467\r\n', '2023-10-25 05:14:11'),
(339, 339, 'Tungkod ES\r\n', 'elem', 'santa_maria', '108468\r\n', '2023-10-25 05:14:11'),
(340, 340, 'Laurel ES\r\n', 'elem', 'santa_maria', '164506\r\n', '2023-10-25 05:14:11'),
(341, 341, 'New Little Baguio ES\r\n', 'elem', 'santa_maria', '164507\r\n', '2023-10-25 05:14:11'),
(342, 342, 'Macasipac ES\r\n', 'elem', 'santa_maria', '164521\r\n', '2023-10-25 05:14:11'),
(343, 343, 'Pao-o ES Annex\r\n', 'elem', 'santa_maria', '164522\r\n', '2023-10-25 05:14:11'),
(344, 344, 'Calangay Integrated High School\r\n(JHS)', 'integrated', 'santa_maria', '307940', '2023-10-25 05:14:11'),
(345, 345, 'Calangay Integrated High School\r\n(SHS)', 'integrated', 'santa_maria', '307940', '2023-10-25 05:14:11'),
(346, 346, 'Gaudencio Octavio Integrated National High School\r\n(JHS)', 'integrated', 'santa_maria', '301270\r\n', '2023-10-25 05:14:11'),
(347, 347, 'Gaudencio Octavio Integrated National High School\r\n(SHS)', 'integrated', 'santa_maria', '301270\r\n', '2023-10-25 05:14:11'),
(348, 348, 'J. Santiago Integrated High School\r\n(JHS)', 'integrated', 'santa_maria', '301271\r\n', '2023-10-25 05:14:11'),
(349, 349, 'J. Santiago Integrated High School\r\n(SHS)', 'integrated', 'santa_maria', '301271\r\n', '2023-10-25 05:14:11'),
(350, 350, 'Sta. Maria Integrated High School\r\n(JHS)', 'integrated', 'santa_maria', '301269\r\n', '2023-10-25 05:14:11'),
(351, 351, 'Sta. Maria Integrated High School\r\n(SHS', 'integrated', 'santa_maria', '301269\r\n', '2023-10-25 05:14:11'),
(352, 352, 'Antonio Adricula Sr. Memorial Elementary School\r\n', 'elem', 'siniloan', '108486', '2023-10-25 05:14:11'),
(353, 353, 'Angela Ong Javier MES\r\n', 'elem', 'siniloan', '108487\r\n', '2023-10-25 05:14:11'),
(354, 354, 'Buhay ES\r\n', 'elem', 'siniloan', '108488\r\n', '2023-10-25 05:14:11'),
(355, 355, 'Halayhayin ES\r\n', 'elem', 'siniloan', '108489\r\n', '2023-10-25 05:14:11'),
(356, 356, 'Kapatalan ES', 'elem', 'siniloan', '108490\r\n', '2023-10-25 05:14:11'),
(357, 357, 'Francisco K. Redor Sr. MES\r\n', 'elem', 'siniloan', '108491\r\n', '2023-10-25 05:14:11'),
(358, 358, 'Magsaysay ES\r\n', 'elem', 'siniloan', '108492\r\n', '2023-10-25 05:14:11'),
(359, 359, 'Palanas ES (Llavac)\r\n', 'elem', 'siniloan', '108493', '2023-10-25 05:14:11'),
(360, 360, 'SINILOAN ELEMENTARY SCHOOL\r\n', 'elem', 'siniloan', '108494\r\n', '2023-10-25 05:14:11'),
(361, 361, 'Gov. Felicisimo T. San Luis National Agro-Industrial Integrated High School\r\n(JHS)', 'integrated', 'siniloan', '301274', '2023-10-25 05:14:11'),
(362, 362, 'Gov. Felicisimo T. San Luis National Agro-Industrial Integrated High School\r\n(SHS)', 'integrated', 'siniloan', '301274\r\n', '2023-10-25 05:14:11'),
(363, 363, 'Siniloan Integrated National High School(JHS)', 'integrated', 'siniloan', '301273\r\n', '2023-10-25 05:14:11'),
(364, 364, 'Siniloan Integrated National High School\r\n(SHS)', 'integrated', 'siniloan', '301273\r\n', '2023-10-25 05:14:11'),
(365, 365, 'Banca-Banca ES\r\n', 'elem', 'victoria', '108495', '2023-10-25 05:14:11'),
(366, 366, 'G. Herradura ES (Nanhaya ES)\r\n', 'elem', 'victoria', '108496', '2023-10-25 05:14:11'),
(367, 367, 'Masapang ES\r\n', 'elem', 'victoria', '108497\r\n', '2023-10-25 05:14:11'),
(368, 368, 'Pagalangan ES\r\n', 'elem', 'victoria', '108498\r\n', '2023-10-25 05:14:11'),
(369, 369, 'San Benito ES\r\n', 'elem', 'victoria', '108499\r\n', '2023-10-25 05:14:11'),
(370, 370, 'San Francisco ES\r\n', 'elem', 'victoria', '108500', '2023-10-25 05:14:11'),
(371, 371, 'T. Daguinsin ES (San Roque ES)\r\n', 'elem', 'victoria', '108501\r\n', '2023-10-25 05:14:11'),
(372, 372, 'Victoria ES\r\n', 'elem', 'victoria', '108502\r\n', '2023-10-25 05:14:11'),
(373, 373, 'Daniw ES Banca-Banca Ext.\r\n', 'elem', 'victoria', '164515\r\n', '2023-10-25 05:14:11'),
(374, 374, 'San Felix ES\r\n', 'elem', 'victoria', '164520\r\n', '2023-10-25 05:14:11'),
(375, 375, 'San Roque NHS\r\n', 'jhs', 'victoria', '307912', '2023-10-25 05:14:11'),
(376, 376, 'Nanhaya NHS (San Francisco NHS - Nanhaya Ext.)\r\n', 'jhs', 'victoria', '307929', '2023-10-25 05:14:11'),
(377, 377, 'San Benito NHS\r\n', 'jhs', 'victoria', '301250', '2023-10-25 05:14:11'),
(378, 378, 'Banca-Banca Integrated National High School\r\n(JHS)', 'integrated', 'victoria', '301228', '2023-10-25 05:14:11'),
(379, 379, 'Banca-Banca Integrated National High School\r\n(SHS)', 'integrated', 'victoria', '301228', '2023-10-25 05:14:11'),
(380, 380, 'Masapang Integrated National High School\r\n(JHS)', 'integrated', 'victoria', '301250', '2023-10-25 05:14:11'),
(381, 381, 'Masapang Integrated National High School\r\n(SHS)', 'integrated', 'victoria', '301250', '2023-10-25 05:14:11'),
(382, 382, 'San Francisco Integrated National High School\r\n(JHS)', 'integrated', 'victoria', '301264', '2023-10-25 05:14:11'),
(383, 383, 'San Francisco Integrated National High School\r\n(SHS)', 'integrated', 'victoria', '301264', '2023-10-25 05:14:11'),
(384, 384, 'Victoria Senior High School\r\n', 'standA', 'victoria', '342348', '2023-10-25 05:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblpackages`
--

CREATE TABLE `tblpackages` (
  `id` int NOT NULL,
  `user_id` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `district` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `school_name` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item` varchar(155) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unit` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unit_price` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Amount` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `functional` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `repair` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rRepair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `condemn` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cCondemn` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `stolen` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Remarks` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Pnumber` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pck_no` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fname` text COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_received` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpackages`
--

INSERT INTO `tblpackages` (`id`, `user_id`, `district`, `school_name`, `item`, `quantity`, `unit`, `unit_price`, `Amount`, `functional`, `repair`, `rRepair`, `condemn`, `cCondemn`, `stolen`, `Remarks`, `Pnumber`, `pck_no`, `fname`, `name`, `Status`, `date_received`) VALUES
(1, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'HOST PC,ACER VERITON M490G, brand new; -Microprocessor: Intel Core i5, 2.56GHz, 8MB smart ', '1', 'set', '31,127.20', '31,127.20', '01', '0', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(2, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'LCD MONITOR,ACER V193 18', '6', 'unit', '5,042.96', '30,257.76', '4', '2', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(3, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'KEYBOARD & MOUSE, ACER PR1101U - keyboard, ACER MS 1200.085 Mouse, brand new;', '6', 'set', '586.56', '3,519.36', '6', '0', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(4, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'ACCESS TERMINAL, NCOMPUTING U170 (Config. 2)', '6', 'unit', '2,426.32', '14,557.92', '0', '0', 'n', '0', 'n', '6', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(5, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'UNINTERRUPTIBLE POWER SUPPLY (UPS), EMERSON LIEBERT PS500-PH, brand new;', '1', 'unit', '1,731.60', '1,731.60', '1', '0', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(6, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'INTERACTIE WHITEBOARD, PROMETHEAN ACTIVEBOARD ABV 587 PRO', '1', 'unit', '56,631.12', '56,631.12', '1', '0', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(7, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', '3-IN-1 INKJET PRINTER, BROTHER DCP-J125', '1', 'unit', '3,529.76', '3,529.76', '1', '0', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(8, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'PROJECTOR, ACER X1261P, brand new;', '1', 'unit', '23,233.60', '23,233.60', '1', '0', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(9, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'MOUSE, ACER brand newl Interface: USB for mouse (same brand as Host PC)', '10', 'unit', '193.44', '1,934.40', '0', '2', 'n', '0', 'n', '8', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(10, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', '10-PORT FOR USB HUB, Hi Speed, brand new;', '1', 'unit', '608.40', '608.40', '1', '0', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023'),
(11, '2', 'Santa Cruz', 'Santa Cruz Central Elementary School', 'FACE TO FACE LECTURE & HANDS ON TRAINING', '1', 'lot', '1,659.84', '1,659.84', '1', '0', 'n', '0', 'n', '0', '', NULL, 'Batch 7', '', 'LOGO CHOICES.pdf', '', 'October 02, 2023');

-- --------------------------------------------------------

--
-- Table structure for table `tblschools`
--

CREATE TABLE `tblschools` (
  `id` int NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `firstName` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `lastName` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `school` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `school_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clientImage` mediumblob NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstName`, `lastName`, `username`, `email`, `contact`, `password`, `district`, `school`, `school_id`, `clientImage`, `role`) VALUES
(1, 'ICTSU', 'ICTSU', 'ictsu.deped', 'itservices.depedlaguna@deped.gov.ph', '09753056303', 'Itservicesunit2023', 'division', 'division', '123456', '', 'admin'),
(2, 'ICTSU', 'ICTSU', 'bon.flores', 'bonete1009@gmail.com', '09123456789', 'admin', 'Santa Cruz', 'Santa Cruz Central Elementary School', '123456798', '', 'user'),
(3, 'Bon Kennette', 'Flores', 'bonete1009@gmail.com', 'bonete1009@gmail.com', '09123456789', 'admin', '', '', '108446', '', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electric_source`
--
ALTER TABLE `electric_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isprovider`
--
ALTER TABLE `isprovider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_package`
--
ALTER TABLE `manage_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`ID_school`);

--
-- Indexes for table `tblpackages`
--
ALTER TABLE `tblpackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschools`
--
ALTER TABLE `tblschools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `electric_source`
--
ALTER TABLE `electric_source`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `isprovider`
--
ALTER TABLE `isprovider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manage_package`
--
ALTER TABLE `manage_package`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `ID_school` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT for table `tblpackages`
--
ALTER TABLE `tblpackages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblschools`
--
ALTER TABLE `tblschools`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
