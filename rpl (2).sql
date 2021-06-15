-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 09:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `idorder` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `photografer` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL,
  `package` varchar(30) NOT NULL,
  `concept` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `price` int(10) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`idorder`, `name`, `nohp`, `address`, `photografer`, `quantity`, `package`, `concept`, `date`, `price`, `status`) VALUES
(7, 'Mahendra Zakaria', '089626144711', 'Bungur 3 perum cijerah 2', 'Photografer A', 2, 'Int Photography Package', 'Yang penting asikkk', '2021-12-30 17:59:00.000000', 75000, 'success'),
(8, 'yuni', '081224623157', 'Cijerah', 'Photografer A', 6, 'Ext photography Package', '--', '2021-06-24 08:34:00.000000', 50000, 'success'),
(9, 'yuni', '089239732323', 'Bandung Jawa Barat', 'photografer C', 10, 'Int Photography Package', 'Diomongin pas ketemu saja kak', '2021-06-30 06:30:00.000000', 75000, 'pending'),
(10, 'yuni', '087654321234', 'DIMANA AJA DEH BOLEH', 'photografer D', 8, 'Int Photography Package', 'DI KONDISIKAN SAAT BERTEMU KAK', '2021-06-15 06:58:38.754137', 75000, 'process'),
(11, '1', '081224623157', 'Cijerah Bandung Kulon', 'photografer B', 2, 'Ext photography Package', 'BEBAS AJA', '2021-06-16 17:00:00.000000', 50000, 'pending'),
(12, 'yuni', '081224623157', 'Cijerah', 'photografer C', 1, 'Ext photography Package', '1', '2021-06-16 22:30:00.000000', 50000, 'pending'),
(13, 'yuni', '081224623157', 'Cijerah', 'photografer B', 9, 'Ext photography Package', '1', '2021-06-14 18:14:00.000000', 50000, 'pending'),
(14, '1', '1', 'Cijerah', 'Photografer A', 10, 'Ext photography Package', '1', '2021-06-15 06:49:58.981110', 50000, 'process'),
(15, 'Aditya Mahendra', '081224623157', 'Cijerah', 'photografer D', 8, 'Ext photography Package', 'TEST', '2021-06-15 06:58:28.008464', 50000, 'process');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idpembayaran` int(10) NOT NULL,
  `idorder` int(10) NOT NULL,
  `via` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`idpembayaran`, `idorder`, `via`, `status`) VALUES
(1, 11, 'OVO', 'Success'),
(3, 12, 'LINKAJA', 'Success'),
(5, 8, 'DANA', 'Success'),
(7, 12, 'GOPAY', 'Success'),
(9, 13, 'LINKAJA', 'Success'),
(10, 15, 'LINKAJA', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nohp` int(20) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `email`, `nohp`, `level`) VALUES
('1', '1', '1', '1', 1, 'Member'),
('123', '123', '122', '123', 123, 'Member'),
('adit', '123', 'Aditya Mahendra', 'mahendrazaditya@gmail.com', 2147483647, 'Member'),
('admin', 'admin', 'Admin', 'admin@jones.com', 2109203920, 'Admin'),
('jj', 'adit', 'jj', 'jj', 999, 'Member'),
('mahendra', '900', 'Mahendra Zakaria', 'mahendrazaditya@gmail.com', 89, 'Member'),
('mm', '09', 'mm', 'uiuiui', 76, 'Member'),
('p1', 'p1', 'Photografer A', 'photograferA@jones.com', 897654321, 'Photografer'),
('p2', 'p2', 'Photografer B', 'photograferB@jones.com', 897765432, 'Photografer'),
('p3', 'p3', 'Photografer C', 'photograferC@jones.com', 892378232, 'Photografer'),
('p4', 'p4', 'Photografer D', 'photograferD@jones.com', 812398239, 'Photografer'),
('p5', 'p5', 'Photografer E', 'photograferE@jones.com', 822765678, 'Photografer'),
('test', 'test', 'test', 'test', 8, 'Member'),
('yuni', 'yuni', 'yuni', 'yuninurhayani@gmail.com', 89, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idorder`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idpembayaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `idorder` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `idpembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
