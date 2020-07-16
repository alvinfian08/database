-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2020 at 02:29 PM
-- Server version: 10.3.23-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wargaido_kejaksaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` text NOT NULL,
  `barang_datang` datetime NOT NULL,
  `barang_expired` datetime NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `ruangan` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id`, `nama_barang`, `keterangan`, `gambar`, `barang_datang`, `barang_expired`, `kategori`, `ruangan`) VALUES
(1, 'Kursi Gamng', 'Ini Kursi Gaming terbaru 2020', 'kursi_gaming.jpeg', '2020-06-08 00:59:48', '2020-06-30 00:59:48', 'Kursi', '3'),
(2, 'Kursi Gamng', 'Ini Kursi Gaming terbaru 2020', 'kursi_gaming.jpg', '2020-06-08 00:59:48', '2020-06-30 00:59:48', 'Kursi', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventori`
--

CREATE TABLE `tb_inventori` (
  `id` int(11) NOT NULL,
  `satker` varchar(25) NOT NULL,
  `kode_barang` varchar(25) NOT NULL,
  `nup` varchar(25) NOT NULL,
  `no_kib` varchar(25) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `no_register` varchar(25) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `th_peroleh` varchar(10) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `penguasaan` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `ruangan` varchar(50) NOT NULL,
  `foto` text NOT NULL,
  `nama_upb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_inventori`
--

INSERT INTO `tb_inventori` (`id`, `satker`, `kode_barang`, `nup`, `no_kib`, `kondisi`, `merk`, `no_register`, `nama_barang`, `th_peroleh`, `jumlah_barang`, `penguasaan`, `keterangan`, `ruangan`, `foto`, `nama_upb`) VALUES
(2, 'Kejaksaan Cilacap', 'K0009', '', '32874923', 'baik', 'Kursi', '238742389473', 'Kursi', '2020', 4, 'Milik Sendiri', ' dsfsdf', '2', 'IMG_20200623_062535.jpg', 'Kejaksaan'),
(4, '11', '01', '12', 'fhf', 'baik', 'Kursi', '', 'asbak', '2020', 15, 'Bukan Milik Sendiri ', ' mantap gan akhirnya jadi', 'Lantai 12 Ruang Mawar', '4123.png', 'asbakjhjgj'),
(5, '1', '1', '1', '1', 'baik', 'Kursi', '1', '1', '1', 1, 'Milik Sendiri', ' eror maning hmm', '2', 'BACKGROUND.png', '1'),
(6, 'iya', '121230', '1', '56', 'baik', 'pulpen', '123', 'pulpen', '2020', 25, 'Bukan Milik Sendiri ', ' uy', '5', 'amikom.png', 'pp');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `kategori`) VALUES
(2, 'Kursi'),
(3, 'sampurna'),
(4, 'pulpen');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lantai`
--

CREATE TABLE `tb_lantai` (
  `id` int(11) NOT NULL,
  `lantai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lantai`
--

INSERT INTO `tb_lantai` (`id`, `lantai`) VALUES
(12, 12),
(15, 0),
(16, 3),
(17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruangan`
--

CREATE TABLE `tb_ruangan` (
  `id` int(11) NOT NULL,
  `ruangan` varchar(50) NOT NULL,
  `lantai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ruangan`
--

INSERT INTO `tb_ruangan` (`id`, `ruangan`, `lantai`) VALUES
(2, 'Mawar', '12'),
(3, 'anjrut', '3'),
(4, 'loncat', '3'),
(5, 'melati', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_inventori`
--
ALTER TABLE `tb_inventori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lantai`
--
ALTER TABLE `tb_lantai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_inventori`
--
ALTER TABLE `tb_inventori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_lantai`
--
ALTER TABLE `tb_lantai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
