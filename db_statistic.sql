-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2025 pada 14.24
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `address_customer`
--

CREATE TABLE `address_customer` (
  `address_costumer` int(11) NOT NULL,
  `state_address` varchar(45) DEFAULT NULL,
  `city_address` varchar(45) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `country_address` enum('indonesia','japan','singapore','malaysia','china','philipine','australia','...') DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `address_customer`
--

INSERT INTO `address_customer` (`address_costumer`, `state_address`, `city_address`, `postal_code`, `country_address`, `customerID`) VALUES
(1, 'State A', 'City A', '12345', 'indonesia', 1),
(2, 'State B', 'City B', '23456', 'japan', 2),
(3, 'State C', 'City C', '34567', 'singapore', 3),
(4, 'State D', 'City D', '45678', 'malaysia', 4),
(5, 'State E', 'City E', '56789', 'china', 5),
(6, 'State F', 'City F', '67890', 'philipine', 6),
(7, 'State G', 'City G', '78901', 'australia', 7),
(8, 'State H', 'City H', '89012', 'indonesia', 8),
(9, 'State I', 'City I', '90123', 'japan', 9),
(10, 'State J', 'City J', '01234', 'singapore', 10),
(11, 'State K', 'City K', '12345', 'malaysia', 11),
(12, 'State L', 'City L', '23456', 'china', 12),
(13, 'State M', 'City M', '34567', 'philipine', 13),
(14, 'State N', 'City N', '45678', 'australia', 14),
(15, 'State O', 'City O', '56789', 'indonesia', 15),
(16, 'State P', 'City P', '67890', 'japan', 16),
(17, 'State Q', 'City Q', '78901', 'singapore', 17),
(18, 'State R', 'City R', '89012', 'malaysia', 18),
(19, 'State S', 'City S', '90123', 'china', 19),
(20, 'State T', 'City T', '01234', 'philipine', 20),
(21, 'State U', 'City U', '12345', 'australia', 21),
(22, 'State V', 'City V', '23456', 'indonesia', 22),
(23, 'State W', 'City W', '34567', 'japan', 23),
(24, 'State X', 'City X', '45678', 'singapore', 24),
(25, 'State Y', 'City Y', '56789', 'malaysia', 25),
(26, 'State A', 'City A', '12345', 'indonesia', 1),
(27, 'State B', 'City B', '23456', 'japan', 2),
(28, 'State C', 'City C', '34567', 'singapore', 3),
(29, 'State D', 'City D', '45678', 'malaysia', 4),
(30, 'State E', 'City E', '56789', 'china', 5),
(31, 'State F', 'City F', '67890', 'philipine', 6),
(32, 'State G', 'City G', '78901', 'australia', 7),
(33, 'State H', 'City H', '89012', 'indonesia', 8),
(34, 'State I', 'City I', '90123', 'japan', 9),
(35, 'State J', 'City J', '01234', 'singapore', 10),
(36, 'State K', 'City K', '12345', 'malaysia', 11),
(37, 'State L', 'City L', '23456', 'china', 12),
(38, 'State M', 'City M', '34567', 'philipine', 13),
(39, 'State N', 'City N', '45678', 'australia', 14),
(40, 'State O', 'City O', '56789', 'indonesia', 15),
(41, 'State P', 'City P', '67890', 'japan', 16),
(42, 'State Q', 'City Q', '78901', 'singapore', 17),
(43, 'State R', ' City R', '89012', 'malaysia', 18),
(44, 'State S', 'City S', '90123', 'china', 19),
(45, 'State T', 'City T', '01234', 'philipine', 20),
(46, 'State U', 'City U', '12345', 'australia', 21),
(47, 'State V', 'City V', '23456', 'indonesia', 22),
(48, 'State W', 'City W', '34567', 'japan', 23),
(49, 'State X', 'City X', '45678', 'singapore', 24),
(50, 'State Y', 'City Y', '56789', 'malaysia', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `bookID` int(11) NOT NULL,
  `title_book` varchar(45) DEFAULT NULL,
  `authors_book` varchar(45) DEFAULT NULL,
  `genre_book` enum('horor','fantasy','history','technology','biology','animal','...') DEFAULT NULL,
  `stock_book` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `isbn` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `sinopsis_book` longtext DEFAULT NULL,
  `transaksiID` int(11) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`bookID`, `title_book`, `authors_book`, `genre_book`, `stock_book`, `price`, `isbn`, `publisher`, `sinopsis_book`, `transaksiID`, `customerID`) VALUES
(8, 'Book Title 1', 'Author 1', 'fantasy', 10, 19.99, '1234567890', 'Publisher A', 'A thrilling adventure.', NULL, NULL),
(9, 'Book Title 2', 'Author 2', 'horor', 20, 29.99, '2345678901', 'Publisher B', 'A chilling horror story.', NULL, NULL),
(10, 'Book Title 3', 'Author 3', 'history', 30, 39.99, '3456789012', 'Publisher C', 'A historical account.', NULL, NULL),
(11, 'Book Title 4', 'Author 4', 'technology', 40, 49.99, '4567890123', 'Publisher D', 'A tech-savvy book.', NULL, NULL),
(12, 'Book Title 5', 'Author 5', 'biology', 50, 59.99, '5678901234', 'Publisher E', 'A book about biology.', NULL, NULL),
(13, 'Book Title 6', 'Author 6', 'animal', 60, 69.99, '6789012345', 'Publisher F', 'A book about animals.', NULL, NULL),
(14, 'Book Title 7', 'Author 7', 'fantasy', 70, 79.99, '7890123456', 'Publisher G', 'A fantasy book.', NULL, NULL),
(15, 'Book Title 8', 'Author 8', 'horor', 80, 89.99, '8901234567', 'Publisher H', 'A horror book.', NULL, NULL),
(16, 'Book Title 9', 'Author 9', 'history', 90, 99.99, '9012345678', 'Publisher I', 'A historical book.', NULL, NULL),
(17, 'Book Title 10', 'Author 10', 'technology', 100, 109.99, '0123456789', 'Publisher J', 'A tech book.', NULL, NULL),
(18, 'Book Title 11', 'Author 11', 'biology', 110, 119.99, '1234567890', 'Publisher K', 'A biology book.', NULL, NULL),
(19, 'Book Title 12', 'Author 12', 'animal', 120, 129.99, '2345678901', 'Publisher L', 'An animal book.', NULL, NULL),
(20, 'Book Title 13', 'Author 13', 'fantasy', 130, 139.99, '3456789012', 'Publisher M', 'A fantasy book.', NULL, NULL),
(21, 'Book Title 14', 'Author 14', 'horor', 140, 149.99, '4567890123', 'Publisher N', 'A horror book.', NULL, NULL),
(22, 'Book Title 15', 'Author 15', 'history', 150, 159.99, '5678901234', 'Publisher O', 'A historical book.', NULL, NULL),
(23, 'Book Title 16', 'Author 16', 'technology', 160, 169.99, '6789012345', 'Publisher P', 'A tech book.', NULL, NULL),
(24, 'Book Title 17', 'Author 17', 'biology', 170, 179.99, '7890123456', 'Publisher Q', 'A biology book.', NULL, NULL),
(25, 'Book Title 18', 'Author 18', 'animal', 180, 189.99, '8901234567', 'Publisher R', 'An animal book.', NULL, NULL),
(26, 'Book Title 19', 'Author 19', 'fantasy', 190, 199.99, '9012345678', 'Publisher S', 'A fantasy book.', NULL, NULL),
(27, 'Book Title 20', 'Author 20', 'horor', 200, 209.99, '0123456789', 'Publisher T', 'A horror book.', NULL, NULL),
(28, 'Book Title 21', 'Author 21', 'history', 210, 219.99, '1234567890', 'Publisher U', 'A historical book.', NULL, NULL),
(29, 'Book Title 22', 'Author 22', 'technology', 220, 229.99, '2345678901', 'Publisher V', 'A tech book.', NULL, NULL),
(30, 'Book Title 23', 'Author 23', 'biology', 230, 239.99, '3456789012', 'Publisher W', 'A biology book.', NULL, NULL),
(31, 'Book Title 24', 'Author 24', 'animal', 240, 249.99, '4567890123', 'Publisher X', 'An animal book.', NULL, NULL),
(32, 'Book Title 25', 'Author 25', 'fantasy', 250, 259.99, '5678901234', 'Publisher Y', 'A fantasy book.', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `username-customer` int(11) NOT NULL,
  `contact-customer` varchar(45) DEFAULT NULL,
  `email-customer` varchar(45) DEFAULT NULL,
  `address-costumer` int(11) DEFAULT NULL,
  `rekomendasiID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customerID`, `username-customer`, `contact-customer`, `email-customer`, `address-costumer`, `rekomendasiID`) VALUES
(1, 101, '33243456', 'cusmer1@example.com', NULL, NULL),
(2, 102, '23456890', 'ustr1@example.com', NULL, NULL),
(3, 103, '12347890', '2123stom1@example.com', NULL, NULL),
(4, 104, '14567890', 'tm3211@example.com', NULL, NULL),
(5, 105, '34214567', 'mer121@example.com', NULL, NULL),
(6, 106, '43456890', '32strsfa1@example.com', NULL, NULL),
(7, 107, '22347890', '1ctom1wqw@example.com', NULL, NULL),
(8, 108, '44567890', '21ctm1sa@example.com', NULL, NULL),
(9, 109, '38874567', 'eqwctomerdwag1@example.com', NULL, NULL),
(10, 110, '23450090', 'vrscstr1dwa@example.com', NULL, NULL),
(11, 111, '32145890', 'e3q2o231m1@example.com', NULL, NULL),
(12, 112, '31267890', '31um144@example.com', NULL, NULL),
(13, 113, '34123567', 'gtrustomer31241@example.com', NULL, NULL),
(14, 114, '24532890', 'htjustr1fesxf@example.com', NULL, NULL),
(15, 115, '13234790', 'njmutomrewg1@example.com', NULL, NULL),
(16, 116, '14568990', 'klhcutm1grwer@example.com', NULL, NULL),
(17, 117, '78734567', 'loicstomerqqe1@example.com', NULL, NULL),
(18, 118, '79456890', 'ipustr1ee3q@example.com', NULL, NULL),
(19, 119, '96347890', 'uyrstom879781@example.com', NULL, NULL),
(20, 120, '87567890', 'tuiftcutm1htf@example.com', NULL, NULL),
(21, 121, '30004567', 'fewecomefesdr1@example.com', NULL, NULL),
(22, 122, '83456890', 'e3qwcustrads1@example.com', NULL, NULL),
(23, 123, '72347890', 'ewqfctodasm1@example.com', NULL, NULL),
(24, 124, '89567890', 'rtwcutfersm1@edawdxample.com', NULL, NULL),
(25, 125, '34567000', 'fewjwcuomdwweer1@example.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_order`
--

CREATE TABLE `customer_order` (
  `customerID` int(11) NOT NULL DEFAULT 0,
  `Customer Name` varchar(91) DEFAULT NULL,
  `Payment Method` enum('cash','transfer bank','virtual bank','e-wallet') DEFAULT NULL,
  `Total Orders` bigint(21) NOT NULL,
  `Total Order Amount` decimal(32,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employe`
--

CREATE TABLE `employe` (
  `employeID` int(11) NOT NULL,
  `name_employee` varchar(45) DEFAULT NULL,
  `contact_employee` varchar(45) DEFAULT NULL,
  `bookID` int(11) DEFAULT NULL,
  `email_employee` varchar(45) DEFAULT NULL,
  `role_employee` enum('admin','logistik','administrasi') DEFAULT NULL,
  `stock_UpdateID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `employe`
--

INSERT INTO `employe` (`employeID`, `name_employee`, `contact_employee`, `bookID`, `email_employee`, `role_employee`, `stock_UpdateID`) VALUES
(1, 'John Doe', '987-654-3210', 1, 'employe1@example.com', 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_transaction`
--

CREATE TABLE `employee_transaction` (
  `employeID` int(11) NOT NULL DEFAULT 0,
  `Employee Name` varchar(91) DEFAULT NULL,
  `Total Transactions` bigint(21) NOT NULL,
  `Total Amount` decimal(32,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre_statistics`
--

CREATE TABLE `genre_statistics` (
  `genre_book` enum('horor','fantasy','history','technology','biology','animal','...') DEFAULT NULL,
  `Total Books` bigint(21) NOT NULL,
  `Total Stock` decimal(32,0) DEFAULT NULL,
  `Total Sales` decimal(32,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `name-customer`
--

CREATE TABLE `name-customer` (
  `username-customerID` int(11) NOT NULL,
  `first-name-customer` varchar(45) DEFAULT NULL,
  `last-name-customer` varchar(45) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `name-customer`
--

INSERT INTO `name-customer` (`username-customerID`, `first-name-customer`, `last-name-customer`, `customerID`) VALUES
(101, 'John', 'C', 1),
(102, 'John', 'Smith', 2),
(103, 'Sarah', 'Davis', 3),
(104, 'Emily', 'Stomer', 4),
(105, 'Taylor', 'Custom', 5),
(106, 'Fist', 'Cuomer', 6),
(107, 'William', 'Ctomer', 7),
(108, 'Wlan', 'Tomer', 8),
(109, 'Fir', 'Tom', 9),
(110, 'Olive', 'Oil', 10),
(111, 'Wiliam', 'Taylor', 11),
(112, 'Liam', 'Black', 12),
(113, 'Tom', 'Custom', 13),
(114, 'Bean', 'Hill', 14),
(115, 'Thomas', 'Ctomer', 15),
(116, 'Lewis', 'Stomer', 16),
(117, 'Aca', 'Custom', 17),
(118, 'Ava', 'Cuomer', 18),
(119, 'Scot', 'Ctomer', 19),
(120, 'Ethan', 'stomer', 20),
(121, 'Mia', 'Custom', 21),
(122, 'Allen', 'Cuomerso', 22),
(123, 'Clark', 'Ctomer', 23),
(124, 'Young', 'Stomer', 24),
(125, 'Allan', 'Wake', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `name_customer`
--

CREATE TABLE `name_customer` (
  `username_customerID` int(11) NOT NULL,
  `first_name_customer` varchar(45) DEFAULT NULL,
  `last_name_customer` varchar(45) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `name_customer`
--

INSERT INTO `name_customer` (`username_customerID`, `first_name_customer`, `last_name_customer`, `customerID`) VALUES
(101, 'John', 'C', 1),
(102, 'John', 'Smith', 2),
(103, 'Sarah', 'Davis', 3),
(104, 'Emily', 'Stomer', 4),
(105, 'Taylor', 'Custom', 5),
(106, 'Fist', 'Cuomer', 6),
(107, 'William', 'Ctomer', 7),
(108, 'Wlan', 'Tomer', 8),
(109, 'Fir', 'Tom', 9),
(110, 'Olive', 'Oil', 10),
(111, 'Wiliam', 'Taylor', 11),
(112, 'Liam', 'Black', 12),
(113, 'Tom', 'Custom', 13),
(114, 'Bean', 'Hill', 14),
(115, 'Thomas', 'Ctomer', 15),
(116, 'Lewis', 'Stomer', 16),
(117, 'Aca', 'Custom', 17),
(118, 'Ava', 'Cuomer', 18),
(119, 'Scot', 'Ctomer', 19),
(120, 'Ethan', 'stomer', 20),
(121, 'Mia', 'Custom', 21),
(122, 'Allen', 'Cuomerso', 22),
(123, 'Clark', 'Ctomer', 23),
(124, 'Young', 'Stomer', 24),
(125, 'Allan', 'Wake', 25),
(126, 'John', 'C', 1),
(127, 'John', 'Smith', 2),
(128, 'Sarah', 'Davis', 3),
(129, 'Emily', 'Stomer', 4),
(130, 'Taylor', 'Custom', 5),
(131, 'Fist', 'Cuomer', 6),
(132, 'William', 'Ctomer', 7),
(133, 'Wlan', 'Tomer', 8),
(134, 'Fir', 'Tom', 9),
(135, 'Olive', 'Oil', 10),
(136, 'Wiliam', 'Taylor', 11),
(137, 'Liam', 'Black', 12),
(138, 'Tom', 'Custom', 13),
(139, 'Bean', 'Hill', 14),
(140, 'Thomas', 'Ctomer', 15),
(141, 'Lewis', 'Stomer', 16),
(142, 'Aca', 'Custom', 17),
(143, 'Ava', 'Cuomer', 18),
(144, 'Scot', 'Ctomer', 19),
(145, 'Ethan', 'stomer', 20),
(146, 'Mia', 'Custom', 21),
(147, 'Allen', 'Cuomerso', 22),
(148, 'Clark', 'Ctomer', 23),
(149, 'Young', 'Stomer', 24),
(150, 'Allan', 'Wake', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `name_employee`
--

CREATE TABLE `name_employee` (
  `name_employeeID` int(11) NOT NULL,
  `first_name_employee` varchar(45) DEFAULT NULL,
  `last_name_employee` varchar(45) DEFAULT NULL,
  `username_employee` varchar(45) DEFAULT NULL,
  `employeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `name_employee`
--

INSERT INTO `name_employee` (`name_employeeID`, `first_name_employee`, `last_name_employee`, `username_employee`, `employeID`) VALUES
(1, 'John', 'Doe', 'johndoe', 1),
(2, 'Jane', 'Smith', 'janesmith', 2),
(3, 'Alice', 'Johnson', 'alicejohnson', 3),
(4, 'Bob', 'Brown', 'bobbrown', 4),
(5, 'Charlie', 'Davis', 'charliedavis', 5),
(6, 'David', 'Wilson', 'davidwilson', 6),
(7, 'Eve', 'Moore', 'evemoore', 7),
(8, 'Frank', 'Taylor', 'franktaylor', 8),
(9, 'Grace', 'Anderson', 'graceanderson', 9),
(10, 'Henry', 'Martinez', 'henrymartinez', 10),
(11, 'Ivy', 'Hernandez', 'ivyhernandez', 11),
(12, 'Jack', 'Young', 'jackyoung', 12),
(13, 'Kelly', 'King', 'kellyking', 13),
(14, 'Liam', 'Wright', 'liamwright', 14),
(15, 'Mia', 'Lopez', 'mialopez', 15),
(16, 'Noah', 'Hill', 'noahhill', 16),
(17, 'Olivia', 'Scott', 'oliviascott', 17),
(18, 'Peter', 'Green', 'petergreen', 18),
(19, 'Quinn', 'Adams', 'quinnadams', 19),
(20, 'Ryan', 'Baker', 'ryanbaker', 20),
(21, 'Sara', 'Perez', 'saraperez', 21),
(22, 'Tom', 'Evans', 'tomevans', 22),
(23, 'Uma', 'Collins', 'umacollins', 23),
(24, 'Vince', 'Reed', 'vincereed', 24),
(25, 'Wendy', 'Morris', 'wendymorris', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `orderID` int(11) NOT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `TotalOrderAmount` decimal(10,2) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `transaksiID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`orderID`, `OrderDate`, `TotalOrderAmount`, `customerID`, `transaksiID`) VALUES
(1, '2025-01-08 14:58:59', 100.00, 1, 1),
(2, '2025-01-08 14:58:59', 40.00, 2, 2),
(3, '2025-01-08 14:58:59', 30.00, 3, 3),
(4, '2025-01-08 14:58:59', 20.00, 4, 4),
(5, '2025-01-08 14:58:59', 100.00, 5, 5),
(6, '2025-01-08 14:58:59', 80.00, 6, 6),
(7, '2025-01-08 14:58:59', 90.00, 7, 7),
(8, '2025-01-08 14:58:59', 20.00, 8, 8),
(9, '2025-01-08 14:58:59', 100.00, 9, 9),
(10, '2025-01-08 14:58:59', 40.00, 10, 10),
(11, '2025-01-08 14:58:59', 30.00, 11, 11),
(12, '2025-01-08 14:58:59', 20.00, 12, 12),
(13, '2025-01-08 14:58:59', 100.00, 13, 13),
(14, '2025-01-08 14:58:59', 40.00, 14, 14),
(15, '2025-01-08 14:58:59', 30.00, 15, 15),
(16, '2025-01-08 14:58:59', 20.00, 16, 16),
(17, '2025-01-08 14:58:59', 100.00, 17, 17),
(18, '2025-01-08 14:58:59', 40.00, 18, 18),
(19, '2025-01-08 14:58:59', 30.00, 19, 19),
(20, '2025-01-08 14:58:59', 20.00, 20, 20),
(21, '2025-01-08 14:58:59', 100.00, 21, 21),
(22, '2025-01-08 14:58:59', 40.00, 22, 22),
(23, '2025-01-08 14:58:59', 30.00, 23, 23),
(24, '2025-01-08 14:58:59', 20.00, 24, 24),
(25, '2025-01-08 14:58:59', 100.00, 25, 25),
(26, '2025-01-08 15:54:57', 100.00, 1, 1),
(27, '2025-01-08 15:54:57', 40.00, 2, 2),
(28, '2025-01-08 15:54:57', 30.00, 3, 3),
(29, '2025-01-08 15:54:57', 20.00, 4, 4),
(30, '2025-01-08 15:54:57', 100.00, 5, 5),
(31, '2025-01-08 15:54:57', 80.00, 6, 6),
(32, '2025-01-08 15:54:57', 90.00, 7, 7),
(33, '2025-01-08 15:54:57', 20.00, 8, 8),
(34, '2025-01-08 15:54:57', 100.00, 9, 9),
(35, '2025-01-08 15:54:57', 40.00, 10, 10),
(36, '2025-01-08 15:54:57', 30.00, 11, 11),
(37, '2025-01-08 15:54:57', 20.00, 12, 12),
(38, '2025-01-08 15:54:57', 100.00, 13, 13),
(39, '2025-01-08 15:54:57', 40.00, 14, 14),
(40, '2025-01-08 15:54:57', 30.00, 15, 15),
(41, '2025-01-08 15:54:57', 20.00, 16, 16),
(42, '2025-01-08 15:54:57', 100.00, 17, 17),
(43, '2025-01-08 15:54:57', 40.00, 18, 18),
(44, '2025-01-08 15:54:57', 30.00, 19, 19),
(45, '2025-01-08 15:54:57', 20.00, 20, 20),
(46, '2025-01-08 15:54:57', 100.00, 21, 21),
(47, '2025-01-08 15:54:57', 40.00, 22, 22),
(48, '2025-01-08 15:54:57', 30.00, 23, 23),
(49, '2025-01-08 15:54:57', 20.00, 24, 24),
(50, '2025-01-08 15:54:57', 100.00, 25, 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `rekomendasiID` int(11) NOT NULL,
  `bookID` int(11) DEFAULT NULL,
  `genre_book` varchar(45) DEFAULT NULL,
  `title_book` varchar(45) DEFAULT NULL,
  `authors_book` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `rekomendasi`
--

INSERT INTO `rekomendasi` (`rekomendasiID`, `bookID`, `genre_book`, `title_book`, `authors_book`) VALUES
(1, 1, 'fantasy', 'Book Title 1', 'Author 1'),
(2, 2, 'horor', 'Book Title 2', 'Author 2'),
(3, 3, 'history', 'Book Title 3', 'Author 3'),
(4, 4, 'technology', 'Book Title 4', 'Author 4'),
(5, 5, 'biology', 'Book Title 5', 'Author 5'),
(6, 6, 'animal', 'Book Title 6', 'Author 6'),
(7, 7, 'fantasy', 'Book Title 7', 'Author 7'),
(8, 8, 'horor', 'Book Title 8', 'Author 8'),
(9, 9, 'history', 'Book Title 9', 'Author 9'),
(10, 10, 'technology', 'Book Title 10', 'Author 10'),
(11, 11, 'biology', 'Book Title 11', 'Author 11'),
(12, 12, 'animal', 'Book Title 12', 'Author 12'),
(13, 13, 'fantasy', 'Book Title 13', 'Author 13'),
(14, 14, 'horor ', 'Book Title 14', 'Author 14'),
(15, 15, 'history', 'Book Title 15', 'Author 15'),
(16, 16, 'technology', 'Book Title 16', 'Author 16'),
(17, 17, 'biology', 'Book Title 17', 'Author 17'),
(18, 18, 'animal', 'Book Title 18', 'Author 18'),
(19, 19, 'fantasy', 'Book Title 19', 'Author 19'),
(20, 20, 'horor', 'Book Title 20', 'Author 20'),
(21, 21, 'history', 'Book Title 21', 'Author 21'),
(22, 22, 'technology', 'Book Title 22', 'Author 22'),
(23, 23, 'biology', 'Book Title 23', 'Author 23'),
(24, 24, 'animal', 'Book Title 24', 'Author 24'),
(25, 25, 'fantasy', 'Book Title 25', 'Author 25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_transaksi`
--

CREATE TABLE `sales_transaksi` (
  `transaksiID` int(11) NOT NULL,
  `transaksiDate` datetime DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `payment_methode` enum('cash','transfer bank','virtual bank','e-wallet') DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `employeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `sales_transaksi`
--

INSERT INTO `sales_transaksi` (`transaksiID`, `transaksiDate`, `totalAmount`, `payment_methode`, `orderID`, `employeID`) VALUES
(1, '2025-01-08 15:54:57', 100.00, 'cash', 1, 1),
(2, '2025-01-08 15:54:57', 40.00, 'cash', 2, 1),
(3, '2025-01-08 15:54:57', 30.00, 'e-wallet', 3, 1),
(4, '2025-01-08 15:54:57', 20.00, 'e-wallet', 4, 1),
(5, '2025-01-08 15:54:57', 100.00, 'e-wallet', 5, 1),
(6, '2025-01-08 15:54:57', 80.00, 'transfer bank', 6, 1),
(7, '2025-01-08 15:54:57', 90.00, 'transfer bank', 7, 1),
(8, '2025-01-08 15:54:57', 20.00, 'cash', 8, 1),
(9, '2025-01-08 15:54:57', 100.00, 'cash', 9, 1),
(10, '2025-01-08 15:54:57', 40.00, 'transfer bank', 10, 1),
(11, '2025-01-08 15:54:57', 30.00, 'transfer bank', 11, 1),
(12, '2025-01-08 15:54:57', 20.00, 'virtual bank', 12, 1),
(13, '2025-01-08 15:54:57', 100.00, 'cash', 13, 1),
(14, '2025-01-08 15:54:57', 40.00, 'virtual bank', 14, 1),
(15, '2025-01-08 15:54:57', 30.00, 'cash', 15, 1),
(16, '2025-01-08 15:54:57', 20.00, 'e-wallet', 16, 1),
(17, '2025-01-08 15:54:57', 100.00, 'cash', 17, 1),
(18, '2025-01-08 15:54:57', 40.00, 'virtual bank', 18, 1),
(19, '2025-01-08 15:54:57', 30.00, 'cash', 19, 1),
(20, '2025-01-08 15:54:57', 20.00, 'virtual bank', 20, 1),
(21, '2025-01-08 15:54:57', 100.00, 'cash', 21, 1),
(22, '2025-01-08 15:54:57', 40.00, 'virtual bank', 22, 1),
(23, '2025-01-08 15:54:57', 30.00, 'cash', 23, 1),
(24, '2025-01-08 15:54:57', 20.00, 'virtual bank', 24, 1),
(25, '2025-01-08 15:54:57', 100.00, 'cash', 25, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_trend_last_week`
--

CREATE TABLE `sales_trend_last_week` (
  `Tanggal` date NOT NULL,
  `Total Transaksi` int(11) NOT NULL,
  `Total Penjualan` decimal(10,2) NOT NULL,
  `Rata-rata Penjualan` decimal(10,2) NOT NULL,
  `Pertumbuhan (%)` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shipment`
--

CREATE TABLE `shipment` (
  `shipmentID` int(11) NOT NULL,
  `shipment-date` datetime DEFAULT NULL,
  `delivery-method` enum('pick up','delivery') DEFAULT NULL,
  `shipment-addressID` int(11) DEFAULT NULL,
  `status-shipment` enum('shipped','pending','delivered','canceled') DEFAULT NULL,
  `trackingNumber-shipment` varchar(45) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `shipment`
--

INSERT INTO `shipment` (`shipmentID`, `shipment-date`, `delivery-method`, `shipment-addressID`, `status-shipment`, `trackingNumber-shipment`, `orderID`) VALUES
(1, '2025-01-08 14:53:51', 'delivery', 1, 'shipped', 'TRACK123', 1),
(2, '2025-01-08 14:53:51', 'delivery', 2, 'pending', 'TRACK124', 2),
(3, '2025-01-08 14:53:51', 'pick up', 3, 'delivered', 'TRACK125', 3),
(4, '2025-01-08 14:53:51', 'delivery', 4, 'canceled', 'TRACK126', 4),
(5, '2025-01-08 14:53:51', 'delivery', 5, 'shipped', 'TRACK127', 5),
(6, '2025-01-08 14:53:51', 'delivery', 6, 'pending', 'TRACK128', 6),
(7, '2025-01-08 14:53:51', 'pick up', 7, 'delivered', 'TRACK129', 7),
(8, '2025-01-08 14:53:51', 'delivery', 8, 'canceled', 'TRACK130', 8),
(9, '2025-01-08 14:53:51', 'delivery', 9, 'shipped', 'TRACK131', 9),
(10, '2025-01-08 14:53:51', 'delivery', 10, 'pending', 'TRACK132', 10),
(11, '2025-01-08 14:53:51', 'pick up', 11, 'delivered', 'TRACK133', 11),
(12, '2025-01-08 14:53:51', 'delivery', 12, 'canceled', 'TRACK134', 12),
(13, '2025-01-08 14:53:51', 'delivery', 13, 'shipped', 'TRACK135', 13),
(14, '2025-01-08 14:53:51', 'delivery', 14, 'pending', 'TRACK136', 14),
(15, '2025-01-08 14:53:51', 'pick up', 15, 'delivered', 'TRACK137', 15),
(16, '2025-01-08 14:53:51', 'delivery', 16, 'canceled', 'TRACK138', 16),
(17, '2025-01-08 14:53:51', 'delivery', 17, 'shipped', 'TRACK139', 17),
(18, '2025-01-08 14:53:51', 'delivery', 18, 'pending', 'TRACK140', 18),
(19, '2025-01-08 14:53:51', 'pick up', 19, 'delivered', 'TRACK141', 19),
(20, '2025-01-08 14:53:51', 'delivery', 20, 'canceled', 'TRACK142', 20),
(21, '2025-01-08 14:53:51', 'delivery', 21, 'shipped', 'TRACK143', 21),
(22, '2025-01-08 14:53:51', 'delivery', 22, 'pending', 'TRACK144', 22),
(23, '2025-01-08 14:53:51', 'pick up', 23, 'delivered', 'TRACK145', 23),
(24, '2025-01-08 14:53:51', 'delivery', 24, 'canceled', 'TRACK146', 24),
(25, '2025-01-08 14:53:51', 'delivery', 25, 'shipped', 'TRACK147', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shipment_address`
--

CREATE TABLE `shipment_address` (
  `shipment_addressID` int(11) NOT NULL,
  `shipment_address_city` varchar(45) DEFAULT NULL,
  `shipment_address_country` varchar(45) DEFAULT NULL,
  `shipment_address_state` varchar(45) DEFAULT NULL,
  `shipment_address_postal_code` varchar(45) DEFAULT NULL,
  `shipmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `shipment_address`
--

INSERT INTO `shipment_address` (`shipment_addressID`, `shipment_address_city`, `shipment_address_country`, `shipment_address_state`, `shipment_address_postal_code`, `shipmentID`) VALUES
(1, 'City A', 'indonesia', 'State A', '12345', 1),
(2, 'City B', 'japan', 'State B', '23456', 2),
(3, 'City C', 'singapore', 'State C', '34567', 3),
(4, 'City D', 'malaysia', 'State D', '45678', 4),
(5, 'City E', 'china', 'State E', '56789', 5),
(6, 'City F', 'philipine', 'State F', '67890', 6),
(7, 'City G', 'australia', 'State G', '78901', 7),
(8, 'City H', 'indonesia', 'State H', '89012', 8),
(9, 'City I', 'japan', 'State I', '90123', 9),
(10, 'City J', 'singapore', 'State J', '01234', 10),
(11, 'City K', 'malaysia', 'State K', '12345', 11),
(12, 'City L', 'china', 'State L', '23456', 12),
(13, 'City M', 'philipine', 'State M', '34567', 13),
(14, 'City N', 'australia', 'State N', '45678', 14),
(15, 'City O', 'indonesia', 'State O', '56789', 15),
(16, 'City P', 'japan', 'State P', '67890', 16),
(17, 'City Q', 'singapore', 'State Q', '78901', 17),
(18, 'City R', 'malaysia', 'State R', '89012', 18),
(19, 'City S', 'china', 'State S', '90123', 19),
(20, 'City T', 'philipine', 'State T', '01234', 20),
(21, 'City U', 'australia', 'State U', '12345', 21),
(22, 'City V', 'indonesia', 'State V', '23456', 22),
(23, 'City W', 'japan', 'State W', '34567', 23),
(24, 'City X', 'singapore', 'State X', '45678', 24),
(25, 'City Y', 'malaysia', 'State Y', '56789', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_update`
--

CREATE TABLE `stock_update` (
  `stock_UpdateID` int(11) NOT NULL,
  `bookID` int(11) NOT NULL,
  `stockDate` datetime DEFAULT NULL,
  `quantityStock` int(11) DEFAULT NULL,
  `reasonStock` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `stock_update`
--

INSERT INTO `stock_update` (`stock_UpdateID`, `bookID`, `stockDate`, `quantityStock`, `reasonStock`) VALUES
(1, 1, '2025-01-08 14:58:38', 50, 'Initial Stock'),
(2, 1, '2025-01-08 14:58:38', 10, 'Stock Update');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `address_customer`
--
ALTER TABLE `address_customer`
  ADD PRIMARY KEY (`address_costumer`),
  ADD KEY `fk_Address_Customer_Customer2_idx` (`customerID`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`),
  ADD KEY `fk_Books_1_idx` (`customerID`),
  ADD KEY `fk_Books_2_idx` (`transaksiID`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `email-customer_UNIQUE` (`email-customer`),
  ADD KEY `fk_Customer_1` (`rekomendasiID`);

--
-- Indeks untuk tabel `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`employeID`),
  ADD UNIQUE KEY `contact_employee` (`contact_employee`),
  ADD UNIQUE KEY `email_employee` (`email_employee`),
  ADD KEY `fk_Employe_1_idx` (`bookID`),
  ADD KEY `fk_Employe_2` (`stock_UpdateID`);

--
-- Indeks untuk tabel `name-customer`
--
ALTER TABLE `name-customer`
  ADD PRIMARY KEY (`username-customerID`),
  ADD KEY `fk_Name-Customer_Customer2` (`customerID`);

--
-- Indeks untuk tabel `name_customer`
--
ALTER TABLE `name_customer`
  ADD PRIMARY KEY (`username_customerID`),
  ADD KEY `fk_Name_Customer_Customer2` (`customerID`);

--
-- Indeks untuk tabel `name_employee`
--
ALTER TABLE `name_employee`
  ADD PRIMARY KEY (`name_employeeID`),
  ADD KEY `fk_Name_Employee_Employe1_idx` (`employeID`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `fk_Order_Customer1_idx` (`customerID`),
  ADD KEY `fk_Order_Sales_Transaksi1_idx` (`transaksiID`);

--
-- Indeks untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`rekomendasiID`),
  ADD KEY `fk_Rekomendasi_1_idx` (`bookID`);

--
-- Indeks untuk tabel `sales_transaksi`
--
ALTER TABLE `sales_transaksi`
  ADD PRIMARY KEY (`transaksiID`),
  ADD KEY `fk_Sales_Transaksi_Employe1_idx` (`employeID`),
  ADD KEY `fk_Sales_Transaksi_1_idx` (`orderID`);

--
-- Indeks untuk tabel `sales_trend_last_week`
--
ALTER TABLE `sales_trend_last_week`
  ADD PRIMARY KEY (`Tanggal`);

--
-- Indeks untuk tabel `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`shipmentID`),
  ADD UNIQUE KEY `trackingNumber-shipment` (`trackingNumber-shipment`),
  ADD KEY `fk_Shipment_Order1_idx` (`orderID`);

--
-- Indeks untuk tabel `shipment_address`
--
ALTER TABLE `shipment_address`
  ADD PRIMARY KEY (`shipment_addressID`),
  ADD KEY `fk_Shipment_Address_Shipment1_idx` (`shipmentID`);

--
-- Indeks untuk tabel `stock_update`
--
ALTER TABLE `stock_update`
  ADD PRIMARY KEY (`stock_UpdateID`),
  ADD KEY `fk_Stock_Update_1_idx` (`bookID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `address_customer`
--
ALTER TABLE `address_customer`
  MODIFY `address_costumer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT untuk tabel `employe`
--
ALTER TABLE `employe`
  MODIFY `employeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `name-customer`
--
ALTER TABLE `name-customer`
  MODIFY `username-customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT untuk tabel `name_customer`
--
ALTER TABLE `name_customer`
  MODIFY `username_customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `name_employee`
--
ALTER TABLE `name_employee`
  MODIFY `name_employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `rekomendasiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `sales_transaksi`
--
ALTER TABLE `sales_transaksi`
  MODIFY `transaksiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `shipment`
--
ALTER TABLE `shipment`
  MODIFY `shipmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `shipment_address`
--
ALTER TABLE `shipment_address`
  MODIFY `shipment_addressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `stock_update`
--
ALTER TABLE `stock_update`
  MODIFY `stock_UpdateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `address_customer`
--
ALTER TABLE `address_customer`
  ADD CONSTRAINT `fk_Address_Customer_Customer2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_Books_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Books_2` FOREIGN KEY (`transaksiID`) REFERENCES `sales_transaksi` (`transaksiID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk_Customer_1` FOREIGN KEY (`rekomendasiID`) REFERENCES `rekomendasi` (`rekomendasiID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `fk_Employe_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Employe_2` FOREIGN KEY (`stock_UpdateID`) REFERENCES `stock_update` (`stock_UpdateID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `name-customer`
--
ALTER TABLE `name-customer`
  ADD CONSTRAINT `fk_Name-Customer_Customer2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `name_customer`
--
ALTER TABLE `name_customer`
  ADD CONSTRAINT `fk_Name_Customer_Customer2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `name_employee`
--
ALTER TABLE `name_employee`
  ADD CONSTRAINT `fk_Name_Employee_Employe1` FOREIGN KEY (`employeID`) REFERENCES `employe` (`employeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_Order_Customer1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Order_Sales_Transaksi1` FOREIGN KEY (`transaksiID`) REFERENCES `sales_transaksi` (`transaksiID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD CONSTRAINT `fk_Rekomendasi_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `sales_transaksi`
--
ALTER TABLE `sales_transaksi`
  ADD CONSTRAINT `fk_Sales_Transaksi_1` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Sales_Transaksi_Employe1` FOREIGN KEY (`employeID`) REFERENCES `employe` (`employeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `fk_Shipment_Order1` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `shipment_address`
--
ALTER TABLE `shipment_address`
  ADD CONSTRAINT `fk_Shipment_Address_Shipment1` FOREIGN KEY (`shipmentID`) REFERENCES `shipment` (`shipmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `stock_update`
--
ALTER TABLE `stock_update`
  ADD CONSTRAINT `fk_Stock_Update_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
