-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 05:15 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dw_kependudukan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_agama`
--

CREATE TABLE `dim_tabel_agama` (
  `id_dim_tabel_agama` int(11) NOT NULL,
  `dim_tabel_agama_nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_agama`
--

INSERT INTO `dim_tabel_agama` (`id_dim_tabel_agama`, `dim_tabel_agama_nama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Hindu');

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_identitas`
--

CREATE TABLE `dim_tabel_identitas` (
  `id_dim_tabel_identitas` int(11) NOT NULL,
  `dim_tabel_identitas_nama` varchar(45) DEFAULT NULL,
  `dim_tabel_identitas_jk` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_identitas`
--

INSERT INTO `dim_tabel_identitas` (`id_dim_tabel_identitas`, `dim_tabel_identitas_nama`, `dim_tabel_identitas_jk`) VALUES
(1, 'Ragil Manggalaning Y', 'L'),
(2, 'Muh. Bekti Satrio', 'L'),
(3, 'Imas Kotamar', 'L'),
(4, 'Margi Utomo', 'L'),
(5, 'Irsan Yudianto', 'L'),
(6, 'Artono Dwi Ramadhan', 'L'),
(7, 'Ahmad Khairun Arsyad', 'L'),
(8, 'Muh. Agus Priyogo', 'L'),
(9, 'Sitti Herina Agustanty', 'P'),
(10, 'Mamta Culkari P', 'P'),
(11, 'Priska Khusnul Khotimah', 'P'),
(12, 'Yayan Asmani Ose', 'P'),
(13, 'Nina Sularida', 'P'),
(14, 'Friska Rahayu', 'P'),
(15, 'Sitti Aisyah', 'P'),
(16, 'Nur Auliyah', 'P'),
(17, 'Dwi Auliyah Priandini', 'P'),
(18, 'Devintyo Darmawan Kadang', 'L'),
(19, 'Dwi Susanto', 'L'),
(20, 'Paulus Djuang', 'L'),
(21, 'Sumatriyono', 'L'),
(22, 'Nita Karolina', 'L'),
(23, 'Widi Nugrahaeni', 'P'),
(24, 'Putu Putra Satu', 'L'),
(25, 'Kadek Edi Sutrawan', 'L'),
(26, 'Iloh Susanti', 'P'),
(27, 'Ketut Gede', 'L'),
(28, 'Wayan Ariani', 'P'),
(29, 'Alba Purnama', 'L'),
(30, 'Moh. La Andi Rais', 'L'),
(31, 'Muazarin Ashar', 'L'),
(32, 'Andika Budianto', 'L'),
(33, 'Nanang Saputra', 'L'),
(34, 'Ayu Windiarti', 'P'),
(35, 'Reza Parahita Hapsari', 'P'),
(36, 'Pratiwi', 'P'),
(37, 'Tiwi Saranani', 'P'),
(38, 'Iksan Sinatra', 'L'),
(39, 'Iksan Jayadi', 'L'),
(40, 'Boncu Cendana', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_status_pekerjaan`
--

CREATE TABLE `dim_tabel_status_pekerjaan` (
  `id_dim_tabel_status_pekerjaan` int(11) NOT NULL,
  `dim_tabel_status_pekerjaan_ket` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_status_pekerjaan`
--

INSERT INTO `dim_tabel_status_pekerjaan` (`id_dim_tabel_status_pekerjaan`, `dim_tabel_status_pekerjaan_ket`) VALUES
(1, 'PNS'),
(2, 'Wiraswasta'),
(3, 'Buruh'),
(4, 'Pengangguran');

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_status_pend_akhir`
--

CREATE TABLE `dim_tabel_status_pend_akhir` (
  `id_dim_tabel_status_pend_akhir` int(11) NOT NULL,
  `dim_tabel_status_pend_akhir_tingkat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_status_pend_akhir`
--

INSERT INTO `dim_tabel_status_pend_akhir` (`id_dim_tabel_status_pend_akhir`, `dim_tabel_status_pend_akhir_tingkat`) VALUES
(1, 'SD'),
(2, 'SMP/SLTP'),
(3, 'SMA/SLTA'),
(4, 'S1'),
(5, 'S2'),
(6, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_status_pernikahan`
--

CREATE TABLE `dim_tabel_status_pernikahan` (
  `id_dim_tabel_status_pernikahan` int(11) NOT NULL,
  `dim_tabel_status_pernikahan_ket` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_status_pernikahan`
--

INSERT INTO `dim_tabel_status_pernikahan` (`id_dim_tabel_status_pernikahan`, `dim_tabel_status_pernikahan_ket`) VALUES
(1, 'Menikah'),
(2, 'Bercerai/Meninggal'),
(3, 'Belum Menikah');

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_tanggal`
--

CREATE TABLE `dim_tabel_tanggal` (
  `id_dim_tabel_tanggal` int(11) NOT NULL,
  `dim_tabel_tanggal_tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_tanggal`
--

INSERT INTO `dim_tabel_tanggal` (`id_dim_tabel_tanggal`, `dim_tabel_tanggal_tanggal`) VALUES
(1, '2013-01-01'),
(2, '2014-01-01'),
(3, '2015-01-01'),
(4, '2016-01-01'),
(5, '2017-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `fakta_kependudukan`
--

CREATE TABLE `fakta_kependudukan` (
  `id_fakta_kependudukan` int(11) NOT NULL,
  `id_dim_tabel_identitas` int(11) NOT NULL,
  `id_dim_tabel_agama` int(11) NOT NULL,
  `id_dim_tabel_status_pend_akhir` int(11) NOT NULL,
  `id_dim_tabel_status_pekerjaan` int(11) NOT NULL,
  `id_dim_tabel_status_pernikahan` int(11) NOT NULL,
  `id_dim_tabel_tanggal` int(11) NOT NULL,
  `fakta_kependudukan_jumlah_pendapatan_perbulan` int(11) DEFAULT NULL,
  `fakta_kependudukan_jumlah_pengeluaran_perbulan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakta_kependudukan`
--

INSERT INTO `fakta_kependudukan` (`id_fakta_kependudukan`, `id_dim_tabel_identitas`, `id_dim_tabel_agama`, `id_dim_tabel_status_pend_akhir`, `id_dim_tabel_status_pekerjaan`, `id_dim_tabel_status_pernikahan`, `id_dim_tabel_tanggal`, `fakta_kependudukan_jumlah_pendapatan_perbulan`, `fakta_kependudukan_jumlah_pengeluaran_perbulan`) VALUES
(1, 1, 1, 4, 2, 1, 5, 5000000, 2000000),
(2, 2, 1, 3, 3, 1, 4, 3000000, 2000000),
(3, 3, 1, 4, 1, 1, 3, 3000000, 2000000),
(4, 4, 1, 3, 3, 1, 2, 2000000, 1000000),
(5, 5, 1, 3, 4, 3, 1, 500000, 200000),
(6, 6, 1, 5, 1, 1, 1, 3000000, 2000000),
(7, 7, 1, 5, 1, 1, 2, 3000000, 1500000),
(8, 8, 1, 4, 2, 3, 3, 4000000, 2500000),
(9, 9, 1, 4, 2, 1, 4, 5000000, 2000000),
(10, 10, 1, 4, 2, 1, 5, 3500000, 2000000),
(11, 11, 1, 5, 1, 1, 1, 3000000, 2000000),
(12, 12, 1, 3, 2, 3, 2, 3000000, 2500000),
(13, 13, 2, 6, 2, 1, 3, 4000000, 2500000),
(14, 14, 1, 4, 4, 3, 4, 500000, 500000),
(15, 15, 1, 1, 3, 3, 5, 700000, 500000),
(16, 16, 1, 6, 2, 3, 1, 10000000, 5000000),
(17, 17, 2, 2, 4, 1, 2, 500000, 200000),
(18, 18, 2, 4, 1, 2, 3, 2000000, 1500000),
(19, 19, 3, 4, 1, 2, 4, 5000000, 2000000),
(20, 20, 2, 1, 3, 3, 5, 800000, 500000),
(21, 21, 3, 1, 3, 3, 1, 5000000, 2000000),
(22, 22, 2, 4, 4, 1, 2, 600000, 200000),
(23, 23, 2, 4, 1, 2, 3, 4000000, 2500000),
(24, 24, 3, 3, 3, 2, 4, 500000, 500000),
(25, 25, 3, 4, 2, 3, 5, 3500000, 2000000),
(26, 26, 2, 2, 3, 3, 1, 900000, 700000),
(27, 27, 3, 5, 1, 2, 2, 7000000, 2500000),
(28, 28, 3, 4, 1, 2, 2, 4000000, 2500000),
(29, 29, 1, 4, 4, 3, 4, 500000, 300000),
(30, 30, 1, 3, 4, 2, 5, 700000, 500000),
(36, 31, 1, 4, 1, 1, 1, 10000000, 5000000),
(37, 32, 2, 6, 2, 1, 2, 20000000, 10000000),
(38, 33, 1, 3, 4, 2, 3, 500000, 500000),
(39, 34, 1, 2, 2, 3, 4, 900000, 800000),
(40, 35, 2, 4, 1, 2, 5, 6000000, 5000000),
(41, 36, 1, 4, 2, 1, 1, 2000000, 2000000),
(42, 37, 2, 5, 1, 2, 2, 8000000, 500000),
(43, 38, 1, 3, 4, 3, 3, 1000000, 1000000),
(44, 39, 1, 4, 1, 1, 4, 3000000, 2500000),
(45, 40, 1, 1, 3, 2, 5, 700000, 700000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_tabel_agama`
--
ALTER TABLE `dim_tabel_agama`
  ADD PRIMARY KEY (`id_dim_tabel_agama`);

--
-- Indexes for table `dim_tabel_identitas`
--
ALTER TABLE `dim_tabel_identitas`
  ADD PRIMARY KEY (`id_dim_tabel_identitas`);

--
-- Indexes for table `dim_tabel_status_pekerjaan`
--
ALTER TABLE `dim_tabel_status_pekerjaan`
  ADD PRIMARY KEY (`id_dim_tabel_status_pekerjaan`);

--
-- Indexes for table `dim_tabel_status_pend_akhir`
--
ALTER TABLE `dim_tabel_status_pend_akhir`
  ADD PRIMARY KEY (`id_dim_tabel_status_pend_akhir`);

--
-- Indexes for table `dim_tabel_status_pernikahan`
--
ALTER TABLE `dim_tabel_status_pernikahan`
  ADD PRIMARY KEY (`id_dim_tabel_status_pernikahan`);

--
-- Indexes for table `dim_tabel_tanggal`
--
ALTER TABLE `dim_tabel_tanggal`
  ADD PRIMARY KEY (`id_dim_tabel_tanggal`);

--
-- Indexes for table `fakta_kependudukan`
--
ALTER TABLE `fakta_kependudukan`
  ADD PRIMARY KEY (`id_fakta_kependudukan`,`id_dim_tabel_identitas`,`id_dim_tabel_agama`,`id_dim_tabel_status_pend_akhir`,`id_dim_tabel_status_pekerjaan`,`id_dim_tabel_status_pernikahan`,`id_dim_tabel_tanggal`),
  ADD KEY `fk_fakta_kependudukan_dim_tabel_identitas_idx` (`id_dim_tabel_identitas`),
  ADD KEY `fk_fakta_kependudukan_dim_tabel_agama1_idx` (`id_dim_tabel_agama`),
  ADD KEY `fk_fakta_kependudukan_dim_tabel_status_pend_akhir1_idx` (`id_dim_tabel_status_pend_akhir`),
  ADD KEY `fk_fakta_kependudukan_dim_tabel_status_pekerjaan1_idx` (`id_dim_tabel_status_pekerjaan`),
  ADD KEY `fk_fakta_kependudukan_dim_tabel_status_pernikahan1_idx` (`id_dim_tabel_status_pernikahan`),
  ADD KEY `fk_fakta_kependudukan_dim_tabel_tanggal1_idx` (`id_dim_tabel_tanggal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_tabel_agama`
--
ALTER TABLE `dim_tabel_agama`
  MODIFY `id_dim_tabel_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dim_tabel_identitas`
--
ALTER TABLE `dim_tabel_identitas`
  MODIFY `id_dim_tabel_identitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `dim_tabel_status_pekerjaan`
--
ALTER TABLE `dim_tabel_status_pekerjaan`
  MODIFY `id_dim_tabel_status_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dim_tabel_status_pend_akhir`
--
ALTER TABLE `dim_tabel_status_pend_akhir`
  MODIFY `id_dim_tabel_status_pend_akhir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dim_tabel_status_pernikahan`
--
ALTER TABLE `dim_tabel_status_pernikahan`
  MODIFY `id_dim_tabel_status_pernikahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dim_tabel_tanggal`
--
ALTER TABLE `dim_tabel_tanggal`
  MODIFY `id_dim_tabel_tanggal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fakta_kependudukan`
--
ALTER TABLE `fakta_kependudukan`
  MODIFY `id_fakta_kependudukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fakta_kependudukan`
--
ALTER TABLE `fakta_kependudukan`
  ADD CONSTRAINT `fk_fakta_kependudukan_dim_tabel_agama1` FOREIGN KEY (`id_dim_tabel_agama`) REFERENCES `dim_tabel_agama` (`id_dim_tabel_agama`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_kependudukan_dim_tabel_identitas` FOREIGN KEY (`id_dim_tabel_identitas`) REFERENCES `dim_tabel_identitas` (`id_dim_tabel_identitas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_kependudukan_dim_tabel_status_pekerjaan1` FOREIGN KEY (`id_dim_tabel_status_pekerjaan`) REFERENCES `dim_tabel_status_pekerjaan` (`id_dim_tabel_status_pekerjaan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_kependudukan_dim_tabel_status_pend_akhir1` FOREIGN KEY (`id_dim_tabel_status_pend_akhir`) REFERENCES `dim_tabel_status_pend_akhir` (`id_dim_tabel_status_pend_akhir`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_kependudukan_dim_tabel_status_pernikahan1` FOREIGN KEY (`id_dim_tabel_status_pernikahan`) REFERENCES `dim_tabel_status_pernikahan` (`id_dim_tabel_status_pernikahan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_kependudukan_dim_tabel_tanggal1` FOREIGN KEY (`id_dim_tabel_tanggal`) REFERENCES `dim_tabel_tanggal` (`id_dim_tabel_tanggal`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
