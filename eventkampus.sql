-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2026 at 02:52 PM
-- Server version: 8.0.43
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventkampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `anouncement`
--

CREATE TABLE `anouncement` (
  `id` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anouncement`
--

INSERT INTO `anouncement` (`id`, `judul`, `deskripsi`, `gambar`) VALUES
(2, 'HMTI EVENT', 'Mari bergabung bersama kami', 'hmti2025.jpg'),
(5, 'HMM EVENT', 'Polibatam Fair', 'hmm2025.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenisevent` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`nim`, `nama`, `jenisevent`, `email`, `id`) VALUES
('3312511054', 'ADITYA RIZKI KURNIAWAN', 'Gebyar HMTI', 'adityarizkikurniawan950@gmail.com', 1),
('3312511055', 'haikal dermot', 'bakar bakar', 'adityarizkikurniawan950@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `event01`
--

CREATE TABLE `event01` (
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event01`
--

INSERT INTO `event01` (`judul`, `tanggal`, `foto`, `alamat`, `waktu`, `id`) VALUES
('Gebyar', '1 januari 2026', 'gebyar.jpg', 'polibatam', '20.00 sd 21.00', 1),
('Young Culture', '1 Januari 2026', 'CTF.jpg', 'Polibatam', '09.00-13.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nim` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nim`, `username`, `password`, `role`, `id`) VALUES
('00000', 'admin', '$2y$10$gvoPhh2emI0BL/AxK68MceY5ZFx/ob2I5R3Sy5ARhtT94RnzsC9fG', 'admin', 5),
('240620', 'arkk', '$2y$10$rrl0iL9MpVgbqn3zfWGGpeHlNr9CX4KugqGPKoUQ8gu9zbrUTJGOa', 'mahasiswa', 6),
('1234567', 'dohannnn', '$2y$10$C4FPXqc17ns6GxGfc8Hcke.wiU/1UzXzpzm5LM/X6eq5LmF9tHHni', 'mahasiswa', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anouncement`
--
ALTER TABLE `anouncement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event01`
--
ALTER TABLE `event01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anouncement`
--
ALTER TABLE `anouncement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event01`
--
ALTER TABLE `event01`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
