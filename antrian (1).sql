-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 09:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antrian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'default.png',
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `nama`, `gambar`, `status`) VALUES
(1, 'admin@admin.com', 'admin123', 'Petugas RS.depok', 'default.png	', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `antrian`
--

CREATE TABLE `antrian` (
  `id_antrian` int(11) NOT NULL,
  `tgl_antrian` date NOT NULL,
  `no_antrian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `antrian`
--

INSERT INTO `antrian` (`id_antrian`, `tgl_antrian`, `no_antrian`) VALUES
(1, '2022-07-11', '1'),
(2, '2022-07-12', '1'),
(3, '2022-07-12', '2'),
(4, '2022-07-12', '3'),
(5, '2022-07-12', '4'),
(6, '2022-07-12', '5'),
(7, '2022-07-12', '6'),
(8, '2022-07-12', '7'),
(9, '2022-07-12', '8'),
(10, '2022-07-12', '9'),
(11, '2022-07-14', '1'),
(12, '2022-07-16', '1'),
(13, '2022-07-17', '1');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_pasien`
--

CREATE TABLE `antrian_pasien` (
  `id_antrian_pasien` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_antrian` int(11) NOT NULL,
  `no_antrian_pasien` int(11) NOT NULL,
  `tgl_antrian_pasien` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `antrian_pasien`
--

INSERT INTO `antrian_pasien` (`id_antrian_pasien`, `id_jadwal`, `id_pasien`, `id_antrian`, `no_antrian_pasien`, `tgl_antrian_pasien`) VALUES
(1, 3, 7, 0, 1, '2022-07-17');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `nama_jadwal` varchar(100) NOT NULL,
  `kode_jadwal` varchar(50) NOT NULL,
  `jadwal` varchar(100) NOT NULL,
  `jumlah_maksimal` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `nama_jadwal`, `kode_jadwal`, `jadwal`, `jumlah_maksimal`) VALUES
(1, 'Spesialis Kandungan', 'SK', '11.00-13.00', '10'),
(2, 'Spesialis Bedah', 'SB', '08.00-09.00', '10'),
(3, 'Spesialis Anak', 'SA', '09.00-11.00', '10'),
(4, 'Spesialis Gigi', 'SG', '09.00-12.00', '10');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `no_identitas` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `no_identitas`, `nama`, `jenis_kelamin`, `tgl_lahir`, `alamat`, `no_telp`, `username`, `password`) VALUES
(5, '123155233825', 'Faris upangga', 'Laki-Laki', '2022-06-28', 'PANAM', '081275200142', 'faris', 'faris17'),
(7, '123155233825', 'Faris upangga', 'Laki-Laki', '2022-06-29', 'Panam', '081275200142', 'faris', 'c73f227db1b523334ea3aef35bf06af8'),
(8, '123155233825', 'Faris upangga', 'Laki-laki', '2022-07-05', 'Duri', '085240720495', 'faris', '400017c773c9045e6259353e6df5834c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`id_antrian`);

--
-- Indexes for table `antrian_pasien`
--
ALTER TABLE `antrian_pasien`
  ADD PRIMARY KEY (`id_antrian_pasien`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `antrian`
--
ALTER TABLE `antrian`
  MODIFY `id_antrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `antrian_pasien`
--
ALTER TABLE `antrian_pasien`
  MODIFY `id_antrian_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `antrian_pasien`
--
ALTER TABLE `antrian_pasien`
  ADD CONSTRAINT `id_jadwal` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`),
  ADD CONSTRAINT `id_pasien` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
