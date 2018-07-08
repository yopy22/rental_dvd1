-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 12:33 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dvd`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_admin`
--

CREATE TABLE `tb_m_admin` (
  `id_admin` varchar(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_admin`
--

INSERT INTO `tb_m_admin` (`id_admin`, `username`, `password`, `status`) VALUES
('adm1', 'webdevelop', '25d55ad283aa400af464c76d713c07ad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_genre`
--

CREATE TABLE `tb_m_genre` (
  `id_genre` varchar(3) NOT NULL,
  `nama_genre` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_genre`
--

INSERT INTO `tb_m_genre` (`id_genre`, `nama_genre`) VALUES
('G-1', 'ROMANTIC'),
('G-2', 'ACTION');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_member`
--

CREATE TABLE `tb_m_member` (
  `id_member` varchar(15) NOT NULL,
  `nama_member` varchar(50) DEFAULT NULL,
  `discount` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_member`
--

INSERT INTO `tb_m_member` (`id_member`, `nama_member`, `discount`) VALUES
('MEM-1', 'GOLD', 10),
('MEM-2', 'PLATINUM', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_studio`
--

CREATE TABLE `tb_m_studio` (
  `id_studio` varchar(3) NOT NULL,
  `nama_studio` varchar(30) NOT NULL,
  `asal_studio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_studio`
--

INSERT INTO `tb_m_studio` (`id_studio`, `nama_studio`, `asal_studio`) VALUES
('S-1', 'INDOMOVIE', 'INDONESIA'),
('S-2', 'UNIVERSAL', 'AMERIKA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_user`
--

CREATE TABLE `tb_m_user` (
  `id_user` varchar(15) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `id_member` varchar(20) DEFAULT NULL,
  `join_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_user`
--

INSERT INTO `tb_m_user` (`id_user`, `nama`, `email`, `password`, `telp`, `alamat`, `keterangan`, `id_member`, `join_date`) VALUES
('US-1', 'TEST', 'thetryn@Gmail.com', '25d55ad283aa400af464c76d713c07ad', '123', 'QWE', 'QWE', 'MEM-1', '2018-05-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_t_barang _keluar`
--

CREATE TABLE `tb_t_barang _keluar` (
  `id_transaksi` int(11) NOT NULL,
  `no_transaksi` varchar(10) NOT NULL,
  `id_dvd` varchar(50) NOT NULL,
  `tanggal_pinjam` datetime NOT NULL,
  `tanggal_harus_kembali` datetime NOT NULL,
  `id_admin` varchar(10) NOT NULL,
  `id_peminjam` varchar(10) NOT NULL,
  `qty_pinjam` int(3) NOT NULL,
  `kodepromo` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_t_barang_masuk`
--

CREATE TABLE `tb_t_barang_masuk` (
  `id_masuk` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `qty_masuk` int(11) NOT NULL,
  `tanggal_kembali` datetime NOT NULL,
  `denda` int(11) NOT NULL,
  `id_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_t_dvd`
--

CREATE TABLE `tb_t_dvd` (
  `id_dvd` varchar(15) NOT NULL,
  `judul_dvd` varchar(50) DEFAULT NULL,
  `sinopsis` varchar(500) DEFAULT NULL,
  `tanggal_terbit` date DEFAULT NULL,
  `id_studio` varchar(20) DEFAULT NULL,
  `stok` int(6) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `harga` int(6) DEFAULT NULL,
  `id_genre` varchar(3) NOT NULL,
  `id_admin` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_t_dvd`
--

INSERT INTO `tb_t_dvd` (`id_dvd`, `judul_dvd`, `sinopsis`, `tanggal_terbit`, `id_studio`, `stok`, `foto`, `harga`, `id_genre`, `id_admin`) VALUES
('DVD-1', 'TEST', 'sinopsis', '2018-05-16', 'S-1', 2, 'img/gallery/DVD-1.gif', 10002, 'G-1', 'adm1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_t_promo`
--

CREATE TABLE `tb_t_promo` (
  `kodepromo` varchar(50) NOT NULL,
  `nama_promo` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `tgl_promo_mulai` datetime NOT NULL,
  `tgl_promo_selesai` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_m_admin`
--
ALTER TABLE `tb_m_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_m_genre`
--
ALTER TABLE `tb_m_genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indexes for table `tb_m_member`
--
ALTER TABLE `tb_m_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tb_m_studio`
--
ALTER TABLE `tb_m_studio`
  ADD PRIMARY KEY (`id_studio`);

--
-- Indexes for table `tb_m_user`
--
ALTER TABLE `tb_m_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tb_t_barang _keluar`
--
ALTER TABLE `tb_t_barang _keluar`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_dvd` (`id_dvd`),
  ADD KEY `id_peminjam` (`id_peminjam`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `kodepromo` (`kodepromo`);

--
-- Indexes for table `tb_t_barang_masuk`
--
ALTER TABLE `tb_t_barang_masuk`
  ADD PRIMARY KEY (`id_masuk`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `tb_t_dvd`
--
ALTER TABLE `tb_t_dvd`
  ADD PRIMARY KEY (`id_dvd`),
  ADD KEY `id_genre` (`id_genre`),
  ADD KEY `id_studio` (`id_studio`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `tb_t_promo`
--
ALTER TABLE `tb_t_promo`
  ADD PRIMARY KEY (`kodepromo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_t_barang _keluar`
--
ALTER TABLE `tb_t_barang _keluar`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_t_barang_masuk`
--
ALTER TABLE `tb_t_barang_masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_m_user`
--
ALTER TABLE `tb_m_user`
  ADD CONSTRAINT `tb_m_user_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tb_m_member` (`id_member`);

--
-- Constraints for table `tb_t_barang _keluar`
--
ALTER TABLE `tb_t_barang _keluar`
  ADD CONSTRAINT `tb_t_barang _keluar_ibfk_1` FOREIGN KEY (`id_dvd`) REFERENCES `tb_t_dvd` (`id_dvd`),
  ADD CONSTRAINT `tb_t_barang _keluar_ibfk_2` FOREIGN KEY (`id_peminjam`) REFERENCES `tb_m_user` (`id_user`),
  ADD CONSTRAINT `tb_t_barang _keluar_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `tb_m_admin` (`id_admin`),
  ADD CONSTRAINT `tb_t_barang _keluar_ibfk_4` FOREIGN KEY (`kodepromo`) REFERENCES `tb_t_promo` (`kodepromo`);

--
-- Constraints for table `tb_t_barang_masuk`
--
ALTER TABLE `tb_t_barang_masuk`
  ADD CONSTRAINT `tb_t_barang_masuk_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_t_barang _keluar` (`id_transaksi`),
  ADD CONSTRAINT `tb_t_barang_masuk_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tb_m_admin` (`id_admin`);

--
-- Constraints for table `tb_t_dvd`
--
ALTER TABLE `tb_t_dvd`
  ADD CONSTRAINT `tb_t_dvd_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `tb_m_genre` (`id_genre`),
  ADD CONSTRAINT `tb_t_dvd_ibfk_2` FOREIGN KEY (`id_studio`) REFERENCES `tb_m_studio` (`id_studio`),
  ADD CONSTRAINT `tb_t_dvd_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `tb_m_admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
