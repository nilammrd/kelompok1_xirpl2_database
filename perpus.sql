-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 07:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `No_buku` int(20) DEFAULT NULL,
  `Judul_buku` text DEFAULT NULL,
  `Stok` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`No_buku`, `Judul_buku`, `Stok`) VALUES
(8912, 'Malin Kundang', 'DIPINJAM'),
(8913, 'Timun Mas', 'DIPINJAM'),
(8914, 'Bawang Merah Bawang Putih', 'DIPINJAM'),
(8915, 'Tangkuban Perahu', 'DIPINJAM'),
(8916, 'Rorojongrang', 'DIPINJAM'),
(8917, 'Kisah di Hari Minggu', 'DIPINJAM'),
(8918, 'Kisah NT di Sekolah', 'DIPINJAM'),
(8919, 'Jangan Mencintai Teman Sekelas', 'DIPINJAM'),
(8920, 'Kantin saksi NT', 'DIPINJAM'),
(8921, 'Cinta SMK Berlalu', 'DIPINJAM'),
(8922, 'Sosmed Bukan Tempat Aman', 'ADA'),
(8923, 'Jogja Istimewa', 'ADA');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `No_kartu` int(20) DEFAULT NULL,
  `No_buku` int(20) DEFAULT NULL,
  `Tgl_peminjaman` date DEFAULT NULL,
  `Tgl_pengembalian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`No_kartu`, `No_buku`, `Tgl_peminjaman`, `Tgl_pengembalian`) VALUES
(1234, 8912, '2023-05-30', '2023-06-06'),
(1235, 8913, '2023-06-01', '2023-06-08'),
(1236, 8914, '2023-06-02', '2023-06-10'),
(1237, 8915, '2023-06-03', '2023-06-12'),
(1238, 8916, '2023-06-04', '2023-06-14'),
(1239, 8917, '2023-09-11', '2023-11-01'),
(1240, 8918, '2023-09-01', '0000-00-00'),
(1241, 8919, '2023-10-07', '2023-11-05'),
(1242, 8920, '2023-10-01', '2023-11-15'),
(1243, 8921, '2023-11-02', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `No_kartu` int(20) DEFAULT NULL,
  `Nama` text DEFAULT NULL,
  `No_hp` char(20) DEFAULT NULL,
  `Alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`No_kartu`, `Nama`, `No_hp`, `Alamat`) VALUES
(1234, 'Yuta', '088267812345', 'Jl.Harapan 2 No.05'),
(1235, 'Moci', '081245789567', 'Jl.Nusa Bangsa 1 No.07'),
(1236, 'Lala', '081234789465', 'Jl.Terang Bangsa No.13'),
(1237, 'Suci', '081567123654', 'Jl.Bumi Hijau No.20'),
(1238, 'Dona', '081987456432', 'Jl.Pajang Timur No.08'),
(1239, 'Jojo', '089768776545', 'Jl. Ajah dulu No.09'),
(1240, 'Mandachan', '087656648387', 'Jl. Merdeka'),
(1241, 'Bowo', '089387665214', 'Jl.Sukabumi'),
(1242, 'Haikal', '0872179487321', 'Jl.Mangga No.11'),
(1243, 'Pramudya', '0899876675368', 'Jl.Padang Madura');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
