-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2024 pada 15.22
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tknoor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aset`
--

CREATE TABLE `aset` (
  `id` int(255) NOT NULL,
  `nilai` int(255) NOT NULL,
  `bulan` int(255) NOT NULL,
  `tahun` int(255) NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga_beli` int(255) NOT NULL,
  `harga_jual` int(255) NOT NULL,
  `stok` int(255) NOT NULL,
  `tgl` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id`, `nama`, `harga_beli`, `harga_jual`, `stok`, `tgl`) VALUES
(791, '8994214984947', 'DIPLOMAT MILD 16', 18495, 20345, 10, 1671869119),
(793, '8998898830125', 'KUKUBIMA UNGU', 5000, 5500, 8, 1671871460),
(794, '8886008101053', 'AQUA 600 ML', 2500, 2750, 9, 1671871625),
(796, '8996001600398', 'KK', 90, 99, 90, 1671878256),
(797, '8996001600399', 'BABI', 90, 99, 90, 1671878991),
(798, '8999909001947', '23423423', 43535, 31513, 13513513, 1671879242),
(799, '8886022830243', 'FGHFGRH', 546345, 563563, 453453, 1671879259),
(800, '8996129800640', 'DFGH', 546345, 445465, 55555553, 1671879273),
(801, '8886008101091', 'DFGDFG', 5245, 45654, 54246, 1671879283),
(802, '8998989110129', 'SURYA 12', 476765, 524442, 19, 1674265944),
(803, '8999168211460', 'ESSE POP BANANA', 57658, 63424, 1, 1674265958),
(804, '8993989311668', 'CLASS MILD 1 SLOP', 250000, 275000, 10, 1674358428),
(805, '8992696523067', 'MILO', 4500, 4950, 6, 1674358699);

-- --------------------------------------------------------

--
-- Struktur dari tabel `campas`
--

CREATE TABLE `campas` (
  `id` int(255) NOT NULL,
  `namaCampas` varchar(255) NOT NULL,
  `alamatCampas` varchar(255) DEFAULT NULL,
  `teleponCampas` varchar(255) DEFAULT NULL,
  `rekeningCampas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `campas`
--

INSERT INTO `campas` (`id`, `namaCampas`, `alamatCampas`, `teleponCampas`, `rekeningCampas`) VALUES
(12, 'null', '-', '-', '-'),
(15, '-', '-', '-', '-'),
(16, 'PT. KALIMAS KHARISMA', 'KABUPATEN HST, DESA MANDINGIN SUNGAI TABUK', '-', '-'),
(18, 'PT. NIAGA SINAR JAYA', 'KABUPATEN TABALONG, DESA MURUNG PUDAK', '085105886631', '-'),
(19, 'PT. SUMBER SEHAT MAKMUR', 'KOTA BANJARBARU', '-', '-'),
(20, 'PT. YALKUT', 'KABUPATEN TABALONG, MURUNG PUDAK', '-', '-'),
(21, 'CCOD TABALONG', 'JL. LIMAU MANIS RT.07 PG2', '05262031244', '-'),
(22, 'AMSIL', '-', '-', '-'),
(23, 'TOKO RAHMAT (ROKOK)', 'PASAR TANJUNG', '083150922758', '-'),
(24, 'PASAR TANJUNG', '-', '-', '-'),
(25, 'pt jaya makmur', 'banjar', '0', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(255) NOT NULL,
  `user_log` varchar(255) NOT NULL,
  `aktivitas_log` varchar(255) NOT NULL,
  `waktu_log` varchar(255) NOT NULL,
  `ket_log` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `user_log`, `aktivitas_log`, `waktu_log`, `ket_log`) VALUES
(11, 'Rusadi', 'Ganti Password', '2023-01-03', 'time: 17:32:15'),
(12, 'Rusadi', 'Edit Profile', '2023-01-03', 'time: 17:44:19'),
(13, 'Rusadi', 'Edit Profile', '2023-01-03', 'time: 17:45:08'),
(14, 'Rusadi', 'Edit Profile', '2023-01-03', 'time: 17:45:39'),
(15, 'Rusadi', 'Ganti Password', '2023-01-03', 'time: 17:47:16'),
(16, 'Rusadi', 'Ganti Password', '2023-01-03', 'time: 18:03:14'),
(17, 'Maidi', 'Menyetor', '2023-01-03', '(1rbu: 0 lbr), (2rbu: 22 lbr), (5rbu: 12 lbr), (10rbu: 1 lbr), (20rbu: 3 lbr), (50rbu: 12 lbr), (100rbu: 2 lbr), time: 22:30:51'),
(18, 'Maidi', 'Menyetor', '2023-01-04', '(1rbu: 0 lbr), (2rbu: 20 lbr), (5rbu: 4 lbr), (10rbu: 0 lbr), (20rbu: 0 lbr), (50rbu: 8 lbr), (100rbu: 4 lbr), time: 22:52:12'),
(19, 'Maidi', 'Menyetor', '2023-01-05', '(1rbu: 1 lbr), (2rbu: 18 lbr), (5rbu: 5 lbr), (10rbu: 0 lbr), (20rbu: 1 lbr), (50rbu: 9 lbr), (100rbu: 2 lbr), time: 22:31:49'),
(20, 'Maidi', 'Menyetor', '2023-01-06', '(1rbu: 4 lbr), (2rbu: 22 lbr), (5rbu: 12 lbr), (10rbu: 9 lbr), (20rbu: 1 lbr), (50rbu: 7 lbr), (100rbu: 3 lbr), time: 22:40:26'),
(21, 'Maidi', 'Menyetor', '2023-01-07', '(1rbu: 0 lbr), (2rbu: 27 lbr), (5rbu: 8 lbr), (10rbu: 3 lbr), (20rbu: 0 lbr), (50rbu: 3 lbr), (100rbu: 5 lbr), time: 22:43:45'),
(22, 'Maidi', 'Menyetor', '2023-01-08', '(1rbu: 1 lbr), (2rbu: 26 lbr), (5rbu: 12 lbr), (10rbu: 10 lbr), (20rbu: 1 lbr), (50rbu: 5 lbr), (100rbu: 4 lbr), time: 22:15:48'),
(23, 'Maidi', 'Menyetor', '2023-01-09', '(1rbu: 1 lbr), (2rbu: 28 lbr), (5rbu: 14 lbr), (10rbu: 7 lbr), (20rbu: 1 lbr), (50rbu: 6 lbr), (100rbu: 3 lbr), time: 22:58:12'),
(24, 'Maidi', 'Menyetor', '2023-01-10', '(1rbu: 0 lbr), (2rbu: 27 lbr), (5rbu: 34 lbr), (10rbu: 5 lbr), (20rbu: 11 lbr), (50rbu: 0 lbr), (100rbu: 3 lbr), time: 22:14:05'),
(25, 'Maidi', 'Menyetor', '2023-01-11', '(1rbu: 6 lbr), (2rbu: 26 lbr), (5rbu: 27 lbr), (10rbu: 9 lbr), (20rbu: 0 lbr), (50rbu: 15 lbr), (100rbu: 1 lbr), time: 23:09:30'),
(26, 'Maidi', 'Menyetor', '2023-01-12', '(1rbu: 1 lbr), (2rbu: 32 lbr), (5rbu: 23 lbr), (10rbu: 2 lbr), (20rbu: 6 lbr), (50rbu: 10 lbr), (100rbu: 3 lbr), time: 22:48:56'),
(27, 'Maidi', 'Menyetor', '2023-01-13', '(1rbu: 1 lbr), (2rbu: 29 lbr), (5rbu: 31 lbr), (10rbu: 3 lbr), (20rbu: 2 lbr), (50rbu: 4 lbr), (100rbu: 1 lbr), time: 23:16:05'),
(28, 'Rusadi', 'Menyetor', '2023-01-13', '(1rbu: 3 lbr), (2rbu: 29 lbr), (5rbu: 31 lbr), (10rbu: 8 lbr), (20rbu: 2 lbr), (50rbu: 4 lbr), (100rbu: 1 lbr), time: 23:24:43'),
(29, 'Maidi', 'Menyetor', '2023-01-14', '(1rbu: 2 lbr), (2rbu: 34 lbr), (5rbu: 14 lbr), (10rbu: 4 lbr), (20rbu: 2 lbr), (50rbu: 3 lbr), (100rbu: 5 lbr), time: 23:02:30'),
(30, 'Maidi', 'Menyetor', '2023-01-15', '(1rbu: 0 lbr), (2rbu: 21 lbr), (5rbu: 6 lbr), (10rbu: 1 lbr), (20rbu: 3 lbr), (50rbu: 9 lbr), (100rbu: 2 lbr), time: 22:27:22'),
(31, 'Maidi', 'Menyetor', '2023-01-16', '(1rbu: 9 lbr), (2rbu: 31 lbr), (5rbu: 5 lbr), (10rbu: 4 lbr), (20rbu: 0 lbr), (50rbu: 9 lbr), (100rbu: 3 lbr), time: 22:07:20'),
(32, 'Maidi', 'Menyetor', '2023-01-17', '(1rbu: 2 lbr), (2rbu: 31 lbr), (5rbu: 9 lbr), (10rbu: 13 lbr), (20rbu: 1 lbr), (50rbu: 6 lbr), (100rbu: 3 lbr), time: 22:38:22'),
(33, 'Maidi', 'Menyetor', '2023-01-18', '(1rbu: 1 lbr), (2rbu: 33 lbr), (5rbu: 13 lbr), (10rbu: 10 lbr), (20rbu: 1 lbr), (50rbu: 9 lbr), (100rbu: 6 lbr), time: 22:44:37'),
(34, 'Maidi', 'Menyetor', '2023-01-19', '(1rbu: 6 lbr), (2rbu: 27 lbr), (5rbu: 20 lbr), (10rbu: 16 lbr), (20rbu: 3 lbr), (50rbu: 4 lbr), (100rbu: 3 lbr), time: 22:13:54'),
(35, 'Maidi', 'Menyetor', '2023-01-20', '(1rbu: 1 lbr), (2rbu: 23 lbr), (5rbu: 15 lbr), (10rbu: 15 lbr), (20rbu: 2 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 22:57:16'),
(36, 'Maidi', 'Menyetor', '2023-01-21', '(1rbu: 2 lbr), (2rbu: 8 lbr), (5rbu: 13 lbr), (10rbu: 16 lbr), (20rbu: 7 lbr), (50rbu: 6 lbr), (100rbu: 0 lbr), time: 22:22:25'),
(37, 'Maidi', 'Menyetor', '2023-01-22', '(1rbu: 2 lbr), (2rbu: 28 lbr), (5rbu: 12 lbr), (10rbu: 13 lbr), (20rbu: 4 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 22:58:30'),
(38, 'Maidi', 'Menyetor', '2023-01-23', '(1rbu: 0 lbr), (2rbu: 22 lbr), (5rbu: 30 lbr), (10rbu: 20 lbr), (20rbu: 3 lbr), (50rbu: 3 lbr), (100rbu: 3 lbr), time: 22:18:21'),
(39, 'Maidi', 'Menyetor', '2023-01-24', '(1rbu: 6 lbr), (2rbu: 29 lbr), (5rbu: 14 lbr), (10rbu: 8 lbr), (20rbu: 1 lbr), (50rbu: 2 lbr), (100rbu: 5 lbr), time: 22:31:59'),
(40, 'Maidi', 'Menyetor', '2023-01-25', '(1rbu: 3 lbr), (2rbu: 19 lbr), (5rbu: 11 lbr), (10rbu: 5 lbr), (20rbu: 2 lbr), (50rbu: 9 lbr), (100rbu: 2 lbr), time: 23:24:01'),
(41, 'Maidi', 'Menyetor', '2023-01-26', '(1rbu: 0 lbr), (2rbu: 31 lbr), (5rbu: 12 lbr), (10rbu: 15 lbr), (20rbu: 3 lbr), (50rbu: 7 lbr), (100rbu: 5 lbr), time: 23:21:43'),
(42, 'Maidi', 'Menyetor', '2023-01-27', '(1rbu: 1 lbr), (2rbu: 14 lbr), (5rbu: 15 lbr), (10rbu: 7 lbr), (20rbu: 2 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 22:55:26'),
(43, 'Maidi', 'Menyetor', '2023-01-28', '(1rbu: 1 lbr), (2rbu: 11 lbr), (5rbu: 17 lbr), (10rbu: 10 lbr), (20rbu: 4 lbr), (50rbu: 11 lbr), (100rbu: 6 lbr), time: 22:12:47'),
(44, 'Maidi', 'Menyetor', '2023-01-29', '(1rbu: 2 lbr), (2rbu: 14 lbr), (5rbu: 6 lbr), (10rbu: 0 lbr), (20rbu: 0 lbr), (50rbu: 19 lbr), (100rbu: 1 lbr), time: 23:05:28'),
(45, 'Maidi', 'Menyetor', '2023-01-30', '(1rbu: 5 lbr), (2rbu: 28 lbr), (5rbu: 34 lbr), (10rbu: 12 lbr), (20rbu: 2 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 22:57:10'),
(46, 'Maidi', 'Menyetor', '2023-01-31', '(1rbu: 2 lbr), (2rbu: 23 lbr), (5rbu: 11 lbr), (10rbu: 12 lbr), (20rbu: 3 lbr), (50rbu: 9 lbr), (100rbu: 3 lbr), time: 23:15:18'),
(47, 'Maidi', 'Menyetor', '2023-02-01', '(1rbu: 1 lbr), (2rbu: 22 lbr), (5rbu: 6 lbr), (10rbu: 3 lbr), (20rbu: 1 lbr), (50rbu: 19 lbr), (100rbu: 1 lbr), time: 22:51:19'),
(48, 'Maidi', 'Menyetor', '2023-02-02', '(1rbu: 4 lbr), (2rbu: 37 lbr), (5rbu: 9 lbr), (10rbu: 8 lbr), (20rbu: 2 lbr), (50rbu: 7 lbr), (100rbu: 4 lbr), time: 23:17:53'),
(49, 'Maidi', 'Menyetor', '2023-02-03', '(1rbu: 0 lbr), (2rbu: 14 lbr), (5rbu: 15 lbr), (10rbu: 11 lbr), (20rbu: 4 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 22:28:41'),
(50, 'Maidi', 'Menyetor', '2023-02-04', '(1rbu: 1 lbr), (2rbu: 24 lbr), (5rbu: 11 lbr), (10rbu: 12 lbr), (20rbu: 2 lbr), (50rbu: 3 lbr), (100rbu: 6 lbr), time: 22:28:53'),
(51, 'Maidi', 'Menyetor', '2023-02-05', '(1rbu: 3 lbr), (2rbu: 30 lbr), (5rbu: 18 lbr), (10rbu: 3 lbr), (20rbu: 1 lbr), (50rbu: 1 lbr), (100rbu: 4 lbr), time: 22:13:05'),
(52, 'Maidi', 'Menyetor', '2023-02-06', '(1rbu: 4 lbr), (2rbu: 21 lbr), (5rbu: 3 lbr), (10rbu: 2 lbr), (20rbu: 0 lbr), (50rbu: 4 lbr), (100rbu: 8 lbr), time: 22:47:06'),
(53, 'Maidi', 'Menyetor', '2023-02-07', '(1rbu: 4 lbr), (2rbu: 14 lbr), (5rbu: 21 lbr), (10rbu: 10 lbr), (20rbu: 1 lbr), (50rbu: 6 lbr), (100rbu: 2 lbr), time: 22:44:23'),
(54, 'Maidi', 'Menyetor', '2023-02-08', '(1rbu: 5 lbr), (2rbu: 30 lbr), (5rbu: 13 lbr), (10rbu: 7 lbr), (20rbu: 0 lbr), (50rbu: 11 lbr), (100rbu: 1 lbr), time: 22:44:06'),
(55, 'Maidi', 'Menyetor', '2023-02-08', '(1rbu: 5 lbr), (2rbu: 30 lbr), (5rbu: 13 lbr), (10rbu: 7 lbr), (20rbu: 0 lbr), (50rbu: 11 lbr), (100rbu: 1 lbr), time: 22:44:16'),
(56, 'Maidi', 'Menyetor', '2023-02-09', '(1rbu: 1 lbr), (2rbu: 14 lbr), (5rbu: 3 lbr), (10rbu: 1 lbr), (20rbu: 1 lbr), (50rbu: 12 lbr), (100rbu: 4 lbr), time: 23:22:04'),
(57, 'Maidi', 'Menyetor', '2023-02-10', '(1rbu: 1 lbr), (2rbu: 23 lbr), (5rbu: 10 lbr), (10rbu: 2 lbr), (20rbu: 2 lbr), (50rbu: 11 lbr), (100rbu: 4 lbr), time: 22:32:45'),
(58, 'Maidi', 'Menyetor', '2023-02-11', '(1rbu: 2 lbr), (2rbu: 15 lbr), (5rbu: 0 lbr), (10rbu: 4 lbr), (20rbu: 5 lbr), (50rbu: 12 lbr), (100rbu: 3 lbr), time: 23:16:50'),
(59, 'Maidi', 'Menyetor', '2023-02-12', '(1rbu: 23 lbr), (2rbu: 16 lbr), (5rbu: 1 lbr), (10rbu: 0 lbr), (20rbu: 0 lbr), (50rbu: 12 lbr), (100rbu: 6 lbr), time: 22:32:12'),
(60, 'Maidi', 'Menyetor', '2023-02-13', '(1rbu: 10 lbr), (2rbu: 28 lbr), (5rbu: 21 lbr), (10rbu: 0 lbr), (20rbu: 0 lbr), (50rbu: 18 lbr), (100rbu: 2 lbr), time: 23:01:56'),
(61, 'Maidi', 'Menyetor', '2023-02-14', '(1rbu: 11 lbr), (2rbu: 22 lbr), (5rbu: 18 lbr), (10rbu: 4 lbr), (20rbu: 3 lbr), (50rbu: 7 lbr), (100rbu: 2 lbr), time: 23:37:52'),
(62, 'Maidi', 'Menyetor', '2023-02-15', '(1rbu: 3 lbr), (2rbu: 20 lbr), (5rbu: 14 lbr), (10rbu: 5 lbr), (20rbu: 2 lbr), (50rbu: 7 lbr), (100rbu: 6 lbr), time: 23:11:32'),
(63, 'Maidi', 'Menyetor', '2023-02-16', '(1rbu: 0 lbr), (2rbu: 10 lbr), (5rbu: 7 lbr), (10rbu: 1 lbr), (20rbu: 0 lbr), (50rbu: 15 lbr), (100rbu: 2 lbr), time: 23:26:31'),
(64, 'Maidi', 'Menyetor', '2023-02-17', '(1rbu: 2 lbr), (2rbu: 33 lbr), (5rbu: 1 lbr), (10rbu: 0 lbr), (20rbu: 0 lbr), (50rbu: 3 lbr), (100rbu: 4 lbr), time: 22:40:18'),
(65, 'Maidi', 'Menyetor', '2023-02-18', '(1rbu: 0 lbr), (2rbu: 48 lbr), (5rbu: 10 lbr), (10rbu: 5 lbr), (20rbu: 1 lbr), (50rbu: 3 lbr), (100rbu: 2 lbr), time: 22:25:00'),
(66, 'Maidi', 'Menyetor', '2023-02-19', '(1rbu: 3 lbr), (2rbu: 19 lbr), (5rbu: 28 lbr), (10rbu: 8 lbr), (20rbu: 5 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 22:22:59'),
(67, 'Maidi', 'Menyetor', '2023-02-20', '(1rbu: 0 lbr), (2rbu: 15 lbr), (5rbu: 26 lbr), (10rbu: 12 lbr), (20rbu: 6 lbr), (50rbu: 3 lbr), (100rbu: 1 lbr), time: 22:41:46'),
(68, 'Maidi', 'Menyetor', '2023-02-21', '(1rbu: 3 lbr), (2rbu: 32 lbr), (5rbu: 16 lbr), (10rbu: 5 lbr), (20rbu: 0 lbr), (50rbu: 7 lbr), (100rbu: 2 lbr), time: 23:28:26'),
(69, 'Maidi', 'Menyetor', '2023-02-22', '(1rbu: 2 lbr), (2rbu: 28 lbr), (5rbu: 23 lbr), (10rbu: 14 lbr), (20rbu: 8 lbr), (50rbu: 6 lbr), (100rbu: 2 lbr), time: 22:09:18'),
(70, 'Maidi', 'Menyetor', '2023-02-23', '(1rbu: 2 lbr), (2rbu: 10 lbr), (5rbu: 20 lbr), (10rbu: 15 lbr), (20rbu: 8 lbr), (50rbu: 6 lbr), (100rbu: 2 lbr), time: 23:20:50'),
(71, 'Maidi', 'Menyetor', '2023-02-24', '(1rbu: 0 lbr), (2rbu: 28 lbr), (5rbu: 3 lbr), (10rbu: 1 lbr), (20rbu: 1 lbr), (50rbu: 2 lbr), (100rbu: 6 lbr), time: 22:34:27'),
(72, 'Maidi', 'Menyetor', '2023-02-25', '(1rbu: 2 lbr), (2rbu: 35 lbr), (5rbu: 10 lbr), (10rbu: 2 lbr), (20rbu: 1 lbr), (50rbu: 14 lbr), (100rbu: 1 lbr), time: 23:31:11'),
(73, 'Maidi', 'Menyetor', '2023-02-26', '(1rbu: 3 lbr), (2rbu: 23 lbr), (5rbu: 0 lbr), (10rbu: 0 lbr), (20rbu: 0 lbr), (50rbu: 6 lbr), (100rbu: 5 lbr), time: 22:40:21'),
(74, 'Maidi', 'Menyetor', '2023-02-27', '(1rbu: 1 lbr), (2rbu: 32 lbr), (5rbu: 27 lbr), (10rbu: 13 lbr), (20rbu: 2 lbr), (50rbu: 15 lbr), (100rbu: 1 lbr), time: 22:44:51'),
(75, 'Maidi', 'Menyetor', '2023-02-28', '(1rbu: 0 lbr), (2rbu: 16 lbr), (5rbu: 23 lbr), (10rbu: 15 lbr), (20rbu: 4 lbr), (50rbu: 6 lbr), (100rbu: 4 lbr), time: 22:50:40'),
(76, 'Maidi', 'Menyetor', '2023-03-01', '(1rbu: 0 lbr), (2rbu: 16 lbr), (5rbu: 18 lbr), (10rbu: 2 lbr), (20rbu: 3 lbr), (50rbu: 9 lbr), (100rbu: 1 lbr), time: 22:38:53'),
(77, 'Maidi', 'Menyetor', '2023-03-02', '(1rbu: 1 lbr), (2rbu: 4 lbr), (5rbu: 9 lbr), (10rbu: 2 lbr), (20rbu: 0 lbr), (50rbu: 9 lbr), (100rbu: 4 lbr), time: 22:20:42'),
(78, 'Maidi', 'Menyetor', '2023-03-03', '(1rbu: 0 lbr), (2rbu: 41 lbr), (5rbu: 21 lbr), (10rbu: 11 lbr), (20rbu: 2 lbr), (50rbu: 9 lbr), (100rbu: 2 lbr), time: 22:46:31'),
(79, 'Maidi', 'Menyetor', '2023-03-04', '(1rbu: 0 lbr), (2rbu: 8 lbr), (5rbu: 8 lbr), (10rbu: 4 lbr), (20rbu: 1 lbr), (50rbu: 8 lbr), (100rbu: 4 lbr), time: 22:40:44'),
(80, 'Maidi', 'Menyetor', '2023-03-05', '(1rbu: 2 lbr), (2rbu: 17 lbr), (5rbu: 9 lbr), (10rbu: 10 lbr), (20rbu: 2 lbr), (50rbu: 12 lbr), (100rbu: 4 lbr), time: 22:25:29'),
(81, 'Maidi', 'Menyetor', '2023-03-06', '(1rbu: 1 lbr), (2rbu: 14 lbr), (5rbu: 19 lbr), (10rbu: 14 lbr), (20rbu: 4 lbr), (50rbu: 3 lbr), (100rbu: 4 lbr), time: 23:08:27'),
(82, 'Maidi', 'Menyetor', '2023-03-07', '(1rbu: 0 lbr), (2rbu: 23 lbr), (5rbu: 5 lbr), (10rbu: 3 lbr), (20rbu: 2 lbr), (50rbu: 6 lbr), (100rbu: 6 lbr), time: 22:49:49'),
(83, 'Maidi', 'Menyetor', '2023-03-08', '(1rbu: 0 lbr), (2rbu: 19 lbr), (5rbu: 8 lbr), (10rbu: 1 lbr), (20rbu: 0 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 23:02:00'),
(84, 'Maidi', 'Menyetor', '2023-03-10', '(1rbu: 11 lbr), (2rbu: 32 lbr), (5rbu: 16 lbr), (10rbu: 9 lbr), (20rbu: 5 lbr), (50rbu: 8 lbr), (100rbu: 0 lbr), time: 23:12:25'),
(85, 'Maidi', 'Menyetor', '2023-03-11', '(1rbu: 0 lbr), (2rbu: 20 lbr), (5rbu: 21 lbr), (10rbu: 11 lbr), (20rbu: 6 lbr), (50rbu: 1 lbr), (100rbu: 5 lbr), time: 22:32:13'),
(86, 'Maidi', 'Menyetor', '2023-03-12', '(1rbu: 2 lbr), (2rbu: 22 lbr), (5rbu: 11 lbr), (10rbu: 18 lbr), (20rbu: 2 lbr), (50rbu: 9 lbr), (100rbu: 2 lbr), time: 22:48:24'),
(87, 'Maidi', 'Menyetor', '2023-03-14', '(1rbu: 0 lbr), (2rbu: 37 lbr), (5rbu: 18 lbr), (10rbu: 10 lbr), (20rbu: 3 lbr), (50rbu: 4 lbr), (100rbu: 2 lbr), time: 22:28:35'),
(88, 'Maidi', 'Menyetor', '2023-03-15', '(1rbu: 1 lbr), (2rbu: 19 lbr), (5rbu: 16 lbr), (10rbu: 12 lbr), (20rbu: 1 lbr), (50rbu: 10 lbr), (100rbu: 2 lbr), time: 22:51:00'),
(89, 'Maidi', 'Menyetor', '2023-03-16', '(1rbu: 1 lbr), (2rbu: 13 lbr), (5rbu: 14 lbr), (10rbu: 2 lbr), (20rbu: 0 lbr), (50rbu: 9 lbr), (100rbu: 0 lbr), time: 22:41:49'),
(90, 'Maidi', 'Menyetor', '2023-03-17', '(1rbu: 2 lbr), (2rbu: 27 lbr), (5rbu: 25 lbr), (10rbu: 15 lbr), (20rbu: 7 lbr), (50rbu: 9 lbr), (100rbu: 1 lbr), time: 23:07:10'),
(91, 'Maidi', 'Menyetor', '2023-03-18', '(1rbu: 0 lbr), (2rbu: 17 lbr), (5rbu: 18 lbr), (10rbu: 10 lbr), (20rbu: 6 lbr), (50rbu: 12 lbr), (100rbu: 2 lbr), time: 22:57:05'),
(92, 'Maidi', 'Menyetor', '2023-03-19', '(1rbu: 0 lbr), (2rbu: 10 lbr), (5rbu: 1 lbr), (10rbu: 1 lbr), (20rbu: 2 lbr), (50rbu: 10 lbr), (100rbu: 4 lbr), time: 23:54:18'),
(93, 'Maidi', 'Menyetor', '2023-03-20', '(1rbu: 0 lbr), (2rbu: 12 lbr), (5rbu: 11 lbr), (10rbu: 3 lbr), (20rbu: 2 lbr), (50rbu: 12 lbr), (100rbu: 2 lbr), time: 22:28:05'),
(94, 'Maidi', 'Menyetor', '2023-03-21', '(1rbu: 1 lbr), (2rbu: 17 lbr), (5rbu: 31 lbr), (10rbu: 17 lbr), (20rbu: 3 lbr), (50rbu: 6 lbr), (100rbu: 3 lbr), time: 23:00:49'),
(95, 'Maidi', 'Menyetor', '2023-03-22', '(1rbu: 0 lbr), (2rbu: 17 lbr), (5rbu: 27 lbr), (10rbu: 7 lbr), (20rbu: 0 lbr), (50rbu: 8 lbr), (100rbu: 3 lbr), time: 22:18:09'),
(96, 'Maidi', 'Menyetor', '2023-03-23', '(1rbu: 4 lbr), (2rbu: 20 lbr), (5rbu: 21 lbr), (10rbu: 13 lbr), (20rbu: 3 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 23:11:50'),
(97, 'Maidi', 'Menyetor', '2023-03-24', '(1rbu: 0 lbr), (2rbu: 13 lbr), (5rbu: 15 lbr), (10rbu: 5 lbr), (20rbu: 0 lbr), (50rbu: 5 lbr), (100rbu: 1 lbr), time: 23:26:13'),
(98, 'Maidi', 'Menyetor', '2023-03-25', '(1rbu: 1 lbr), (2rbu: 5 lbr), (5rbu: 13 lbr), (10rbu: 8 lbr), (20rbu: 1 lbr), (50rbu: 8 lbr), (100rbu: 1 lbr), time: 23:46:31'),
(99, 'Maidi', 'Menyetor', '2023-03-26', '(1rbu: 1 lbr), (2rbu: 31 lbr), (5rbu: 25 lbr), (10rbu: 14 lbr), (20rbu: 4 lbr), (50rbu: 1 lbr), (100rbu: 3 lbr), time: 23:48:55'),
(100, 'Maidi', 'Menyetor', '2023-03-27', '(1rbu: 0 lbr), (2rbu: 26 lbr), (5rbu: 13 lbr), (10rbu: 8 lbr), (20rbu: 1 lbr), (50rbu: 2 lbr), (100rbu: 3 lbr), time: 23:10:27'),
(101, 'Maidi', 'Menyetor', '2023-03-28', '(1rbu: 2 lbr), (2rbu: 31 lbr), (5rbu: 12 lbr), (10rbu: 13 lbr), (20rbu: 0 lbr), (50rbu: 5 lbr), (100rbu: 2 lbr), time: 22:42:34'),
(102, 'Maidi', 'Menyetor', '2023-03-29', '(1rbu: 0 lbr), (2rbu: 28 lbr), (5rbu: 18 lbr), (10rbu: 19 lbr), (20rbu: 1 lbr), (50rbu: 2 lbr), (100rbu: 2 lbr), time: 23:54:21'),
(103, 'Maidi', 'Menyetor', '2023-03-30', '(1rbu: 8 lbr), (2rbu: 24 lbr), (5rbu: 9 lbr), (10rbu: 11 lbr), (20rbu: 3 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 22:55:26'),
(104, 'Maidi', 'Menyetor', '2023-03-31', '(1rbu: 1 lbr), (2rbu: 22 lbr), (5rbu: 6 lbr), (10rbu: 4 lbr), (20rbu: 1 lbr), (50rbu: 4 lbr), (100rbu: 4 lbr), time: 23:44:28'),
(105, 'Maidi', 'Menyetor', '2023-04-01', '(1rbu: 7 lbr), (2rbu: 19 lbr), (5rbu: 14 lbr), (10rbu: 5 lbr), (20rbu: 0 lbr), (50rbu: 4 lbr), (100rbu: 2 lbr), time: 23:40:23'),
(106, 'Maidi', 'Menyetor', '2023-04-02', '(1rbu: 1 lbr), (2rbu: 20 lbr), (5rbu: 23 lbr), (10rbu: 8 lbr), (20rbu: 3 lbr), (50rbu: 9 lbr), (100rbu: 0 lbr), time: 23:38:11'),
(107, 'Maidi', 'Menyetor', '2023-04-03', '(1rbu: 3 lbr), (2rbu: 18 lbr), (5rbu: 12 lbr), (10rbu: 1 lbr), (20rbu: 0 lbr), (50rbu: 10 lbr), (100rbu: 0 lbr), time: 23:31:25'),
(108, 'Maidi', 'Menyetor', '2023-04-04', '(1rbu: 0 lbr), (2rbu: 22 lbr), (5rbu: 15 lbr), (10rbu: 4 lbr), (20rbu: 1 lbr), (50rbu: 4 lbr), (100rbu: 1 lbr), time: 23:12:25'),
(109, 'Maidi', 'Menyetor', '2023-04-05', '(1rbu: 3 lbr), (2rbu: 24 lbr), (5rbu: 20 lbr), (10rbu: 9 lbr), (20rbu: 2 lbr), (50rbu: 10 lbr), (100rbu: 1 lbr), time: 23:56:41'),
(110, 'Maidi', 'Menyetor', '2023-04-06', '(1rbu: 1 lbr), (2rbu: 28 lbr), (5rbu: 20 lbr), (10rbu: 17 lbr), (20rbu: 3 lbr), (50rbu: 8 lbr), (100rbu: 2 lbr), time: 23:45:51'),
(111, 'Maidi', 'Menyetor', '2023-04-07', '(1rbu: 2 lbr), (2rbu: 23 lbr), (5rbu: 16 lbr), (10rbu: 12 lbr), (20rbu: 1 lbr), (50rbu: 11 lbr), (100rbu: 0 lbr), time: 23:58:37'),
(112, 'Maidi', 'Menyetor', '2023-04-09', '(1rbu: 0 lbr), (2rbu: 18 lbr), (5rbu: 22 lbr), (10rbu: 15 lbr), (20rbu: 3 lbr), (50rbu: 8 lbr), (100rbu: 3 lbr), time: 23:42:08'),
(113, 'Maidi', 'Menyetor', '2023-04-10', '(1rbu: 0 lbr), (2rbu: 11 lbr), (5rbu: 11 lbr), (10rbu: 4 lbr), (20rbu: 0 lbr), (50rbu: 11 lbr), (100rbu: 0 lbr), time: 23:29:24'),
(114, 'Maidi', 'Menyetor', '2023-04-11', '(1rbu: 1 lbr), (2rbu: 26 lbr), (5rbu: 17 lbr), (10rbu: 8 lbr), (20rbu: 2 lbr), (50rbu: 2 lbr), (100rbu: 1 lbr), time: 23:27:04'),
(115, 'Maidi', 'Menyetor', '2023-04-12', '(1rbu: 0 lbr), (2rbu: 11 lbr), (5rbu: 18 lbr), (10rbu: 29 lbr), (20rbu: 6 lbr), (50rbu: 3 lbr), (100rbu: 5 lbr), time: 23:58:50'),
(116, 'Maidi', 'Menyetor', '2023-04-13', '(1rbu: 0 lbr), (2rbu: 13 lbr), (5rbu: 13 lbr), (10rbu: 4 lbr), (20rbu: 1 lbr), (50rbu: 7 lbr), (100rbu: 1 lbr), time: 22:37:59'),
(117, 'Maidi', 'Menyetor', '2023-04-14', '(1rbu: 1 lbr), (2rbu: 20 lbr), (5rbu: 16 lbr), (10rbu: 5 lbr), (20rbu: 6 lbr), (50rbu: 4 lbr), (100rbu: 0 lbr), time: 23:12:42'),
(118, 'Maidi', 'Menyetor', '2023-04-15', '(1rbu: 0 lbr), (2rbu: 24 lbr), (5rbu: 12 lbr), (10rbu: 2 lbr), (20rbu: 2 lbr), (50rbu: 6 lbr), (100rbu: 4 lbr), time: 23:41:42'),
(119, 'Maidi', 'Menyetor', '2023-04-16', '(1rbu: 11 lbr), (2rbu: 22 lbr), (5rbu: 23 lbr), (10rbu: 14 lbr), (20rbu: 5 lbr), (50rbu: 2 lbr), (100rbu: 1 lbr), time: 23:19:14'),
(120, 'Maidi', 'Menyetor', '2023-04-17', '(1rbu: 2 lbr), (2rbu: 16 lbr), (5rbu: 12 lbr), (10rbu: 3 lbr), (20rbu: 4 lbr), (50rbu: 6 lbr), (100rbu: 0 lbr), time: 23:57:31'),
(121, 'Maidi', 'Menyetor', '2023-04-18', '(1rbu: 0 lbr), (2rbu: 12 lbr), (5rbu: 18 lbr), (10rbu: 10 lbr), (20rbu: 2 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 23:59:10'),
(122, 'Maidi', 'Menyetor', '2023-04-20', '(1rbu: 0 lbr), (2rbu: 39 lbr), (5rbu: 25 lbr), (10rbu: 8 lbr), (20rbu: 3 lbr), (50rbu: 9 lbr), (100rbu: 3 lbr), time: 23:37:50'),
(123, 'Maidi', 'Menyetor', '2023-04-21', '(1rbu: 0 lbr), (2rbu: 1 lbr), (5rbu: 8 lbr), (10rbu: 6 lbr), (20rbu: 2 lbr), (50rbu: 18 lbr), (100rbu: 5 lbr), time: 23:29:15'),
(124, 'Maidi', 'Menyetor', '2023-04-22', '(1rbu: 1 lbr), (2rbu: 24 lbr), (5rbu: 11 lbr), (10rbu: 10 lbr), (20rbu: 1 lbr), (50rbu: 6 lbr), (100rbu: 4 lbr), time: 22:47:13'),
(125, 'Maidi', 'Menyetor', '2023-04-23', '(1rbu: 4 lbr), (2rbu: 15 lbr), (5rbu: 19 lbr), (10rbu: 15 lbr), (20rbu: 1 lbr), (50rbu: 15 lbr), (100rbu: 8 lbr), time: 23:05:39'),
(126, 'Maidi', 'Menyetor', '2023-04-24', '(1rbu: 0 lbr), (2rbu: 9 lbr), (5rbu: 25 lbr), (10rbu: 12 lbr), (20rbu: 2 lbr), (50rbu: 12 lbr), (100rbu: 3 lbr), time: 22:46:12'),
(127, 'Maidi', 'Menyetor', '2023-04-25', '(1rbu: 1 lbr), (2rbu: 35 lbr), (5rbu: 33 lbr), (10rbu: 21 lbr), (20rbu: 8 lbr), (50rbu: 4 lbr), (100rbu: 1 lbr), time: 22:22:41'),
(128, 'Maidi', 'Menyetor', '2023-04-26', '(1rbu: 1 lbr), (2rbu: 10 lbr), (5rbu: 11 lbr), (10rbu: 11 lbr), (20rbu: 4 lbr), (50rbu: 9 lbr), (100rbu: 0 lbr), time: 22:52:11'),
(129, 'Maidi', 'Menyetor', '2023-04-27', '(1rbu: 1 lbr), (2rbu: 36 lbr), (5rbu: 14 lbr), (10rbu: 11 lbr), (20rbu: 0 lbr), (50rbu: 5 lbr), (100rbu: 4 lbr), time: 23:25:19'),
(130, 'Maidi', 'Menyetor', '2023-04-28', '(1rbu: 2 lbr), (2rbu: 27 lbr), (5rbu: 21 lbr), (10rbu: 6 lbr), (20rbu: 3 lbr), (50rbu: 8 lbr), (100rbu: 2 lbr), time: 22:42:10'),
(131, 'Maidi', 'Menyetor', '2023-04-29', '(1rbu: 2 lbr), (2rbu: 25 lbr), (5rbu: 14 lbr), (10rbu: 8 lbr), (20rbu: 4 lbr), (50rbu: 11 lbr), (100rbu: 3 lbr), time: 23:08:33'),
(132, 'Maidi', 'Menyetor', '2023-04-30', '(1rbu: 4 lbr), (2rbu: 21 lbr), (5rbu: 17 lbr), (10rbu: 10 lbr), (20rbu: 1 lbr), (50rbu: 7 lbr), (100rbu: 2 lbr), time: 22:33:42'),
(133, 'Maidi', 'Menyetor', '2023-05-01', '(1rbu: 6 lbr), (2rbu: 21 lbr), (5rbu: 26 lbr), (10rbu: 25 lbr), (20rbu: 7 lbr), (50rbu: 10 lbr), (100rbu: 1 lbr), time: 23:41:27'),
(134, 'Maidi', 'Menyetor', '2023-05-02', '(1rbu: 0 lbr), (2rbu: 14 lbr), (5rbu: 25 lbr), (10rbu: 12 lbr), (20rbu: 9 lbr), (50rbu: 3 lbr), (100rbu: 4 lbr), time: 21:59:59'),
(135, 'Maidi', 'Menyetor', '2023-05-03', '(1rbu: 1 lbr), (2rbu: 18 lbr), (5rbu: 11 lbr), (10rbu: 5 lbr), (20rbu: 1 lbr), (50rbu: 9 lbr), (100rbu: 2 lbr), time: 22:29:37'),
(136, 'Maidi', 'Menyetor', '2023-05-04', '(1rbu: 0 lbr), (2rbu: 9 lbr), (5rbu: 14 lbr), (10rbu: 11 lbr), (20rbu: 8 lbr), (50rbu: 5 lbr), (100rbu: 2 lbr), time: 22:55:40'),
(137, 'Maidi', 'Menyetor', '2023-05-05', '(1rbu: 3 lbr), (2rbu: 19 lbr), (5rbu: 15 lbr), (10rbu: 7 lbr), (20rbu: 2 lbr), (50rbu: 8 lbr), (100rbu: 1 lbr), time: 23:35:01'),
(138, 'Maidi', 'Menyetor', '2023-05-06', '(1rbu: 0 lbr), (2rbu: 7 lbr), (5rbu: 16 lbr), (10rbu: 15 lbr), (20rbu: 3 lbr), (50rbu: 6 lbr), (100rbu: 2 lbr), time: 23:17:59'),
(139, 'Maidi', 'Menyetor', '2023-05-07', '(1rbu: 0 lbr), (2rbu: 3 lbr), (5rbu: 21 lbr), (10rbu: 11 lbr), (20rbu: 2 lbr), (50rbu: 10 lbr), (100rbu: 0 lbr), time: 22:14:51'),
(140, 'Maidi', 'Menyetor', '2023-05-08', '(1rbu: 0 lbr), (2rbu: 4 lbr), (5rbu: 12 lbr), (10rbu: 4 lbr), (20rbu: 0 lbr), (50rbu: 9 lbr), (100rbu: 1 lbr), time: 23:45:00'),
(141, 'Maidi', 'Menyetor', '2023-05-09', '(1rbu: 3 lbr), (2rbu: 18 lbr), (5rbu: 18 lbr), (10rbu: 15 lbr), (20rbu: 2 lbr), (50rbu: 2 lbr), (100rbu: 4 lbr), time: 22:26:07'),
(142, 'Maidi', 'Menyetor', '2023-05-10', '(1rbu: 0 lbr), (2rbu: 22 lbr), (5rbu: 17 lbr), (10rbu: 13 lbr), (20rbu: 4 lbr), (50rbu: 2 lbr), (100rbu: 3 lbr), time: 22:42:45'),
(143, 'Maidi', 'Menyetor', '2023-05-11', '(1rbu: 4 lbr), (2rbu: 37 lbr), (5rbu: 24 lbr), (10rbu: 20 lbr), (20rbu: 3 lbr), (50rbu: 3 lbr), (100rbu: 5 lbr), time: 23:38:19'),
(144, 'Maidi', 'Menyetor', '2023-05-12', '(1rbu: 2 lbr), (2rbu: 15 lbr), (5rbu: 10 lbr), (10rbu: 7 lbr), (20rbu: 1 lbr), (50rbu: 10 lbr), (100rbu: 2 lbr), time: 22:39:45'),
(145, 'Maidi', 'Menyetor', '2023-05-13', '(1rbu: 3 lbr), (2rbu: 10 lbr), (5rbu: 18 lbr), (10rbu: 6 lbr), (20rbu: 1 lbr), (50rbu: 5 lbr), (100rbu: 5 lbr), time: 22:38:21'),
(146, 'Maidi', 'Menyetor', '2023-05-14', '(1rbu: 0 lbr), (2rbu: 6 lbr), (5rbu: 10 lbr), (10rbu: 13 lbr), (20rbu: 1 lbr), (50rbu: 4 lbr), (100rbu: 6 lbr), time: 22:41:34'),
(147, 'Maidi', 'Menyetor', '2023-05-15', '(1rbu: 2 lbr), (2rbu: 16 lbr), (5rbu: 17 lbr), (10rbu: 10 lbr), (20rbu: 3 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 23:26:18'),
(148, 'Maidi', 'Menyetor', '2023-05-16', '(1rbu: 1 lbr), (2rbu: 24 lbr), (5rbu: 1 lbr), (10rbu: 0 lbr), (20rbu: 0 lbr), (50rbu: 7 lbr), (100rbu: 4 lbr), time: 22:19:37'),
(149, 'Maidi', 'Menyetor', '2023-05-17', '(1rbu: 1 lbr), (2rbu: 25 lbr), (5rbu: 20 lbr), (10rbu: 6 lbr), (20rbu: 3 lbr), (50rbu: 8 lbr), (100rbu: 2 lbr), time: 23:52:33'),
(150, 'Maidi', 'Menyetor', '2023-05-18', '(1rbu: 2 lbr), (2rbu: 34 lbr), (5rbu: 16 lbr), (10rbu: 7 lbr), (20rbu: 9 lbr), (50rbu: 3 lbr), (100rbu: 3 lbr), time: 23:32:15'),
(151, 'Maidi', 'Menyetor', '2023-05-19', '(1rbu: 0 lbr), (2rbu: 20 lbr), (5rbu: 16 lbr), (10rbu: 7 lbr), (20rbu: 0 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 22:46:50'),
(152, 'Maidi', 'Menyetor', '2023-05-20', '(1rbu: 4 lbr), (2rbu: 8 lbr), (5rbu: 16 lbr), (10rbu: 13 lbr), (20rbu: 2 lbr), (50rbu: 9 lbr), (100rbu: 2 lbr), time: 23:28:02'),
(153, 'Maidi', 'Menyetor', '2023-05-21', '(1rbu: 0 lbr), (2rbu: 7 lbr), (5rbu: 16 lbr), (10rbu: 1 lbr), (20rbu: 0 lbr), (50rbu: 9 lbr), (100rbu: 4 lbr), time: 23:22:25'),
(154, 'Maidi', 'Menyetor', '2023-05-22', '(1rbu: 2 lbr), (2rbu: 40 lbr), (5rbu: 13 lbr), (10rbu: 9 lbr), (20rbu: 2 lbr), (50rbu: 4 lbr), (100rbu: 2 lbr), time: 22:45:50'),
(155, 'Maidi', 'Menyetor', '2023-05-23', '(1rbu: 2 lbr), (2rbu: 19 lbr), (5rbu: 22 lbr), (10rbu: 11 lbr), (20rbu: 6 lbr), (50rbu: 2 lbr), (100rbu: 1 lbr), time: 22:05:48'),
(156, 'Maidi', 'Menyetor', '2023-05-24', '(1rbu: 0 lbr), (2rbu: 13 lbr), (5rbu: 10 lbr), (10rbu: 7 lbr), (20rbu: 2 lbr), (50rbu: 6 lbr), (100rbu: 3 lbr), time: 22:10:06'),
(157, 'Maidi', 'Menyetor', '2023-05-25', '(1rbu: 0 lbr), (2rbu: 12 lbr), (5rbu: 13 lbr), (10rbu: 13 lbr), (20rbu: 2 lbr), (50rbu: 3 lbr), (100rbu: 1 lbr), time: 23:13:15'),
(158, 'Maidi', 'Menyetor', '2023-05-26', '(1rbu: 4 lbr), (2rbu: 25 lbr), (5rbu: 14 lbr), (10rbu: 8 lbr), (20rbu: 2 lbr), (50rbu: 9 lbr), (100rbu: 2 lbr), time: 22:28:00'),
(159, 'Maidi', 'Menyetor', '2023-05-27', '(1rbu: 1 lbr), (2rbu: 17 lbr), (5rbu: 10 lbr), (10rbu: 15 lbr), (20rbu: 1 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 23:05:50'),
(160, 'Maidi', 'Menyetor', '2023-05-29', '(1rbu: 1 lbr), (2rbu: 6 lbr), (5rbu: 13 lbr), (10rbu: 6 lbr), (20rbu: 3 lbr), (50rbu: 5 lbr), (100rbu: 4 lbr), time: 22:01:41'),
(161, 'Maidi', 'Menyetor', '2023-05-30', '(1rbu: 0 lbr), (2rbu: 32 lbr), (5rbu: 21 lbr), (10rbu: 10 lbr), (20rbu: 5 lbr), (50rbu: 1 lbr), (100rbu: 1 lbr), time: 22:55:25'),
(162, 'Maidi', 'Menyetor', '2023-05-31', '(1rbu: 3 lbr), (2rbu: 38 lbr), (5rbu: 7 lbr), (10rbu: 10 lbr), (20rbu: 4 lbr), (50rbu: 1 lbr), (100rbu: 3 lbr), time: 23:12:23'),
(163, 'Maidi', 'Menyetor', '2023-06-01', '(1rbu: 9 lbr), (2rbu: 34 lbr), (5rbu: 22 lbr), (10rbu: 1 lbr), (20rbu: 0 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 23:43:11'),
(164, 'Maidi', 'Menyetor', '2023-06-02', '(1rbu: 2 lbr), (2rbu: 25 lbr), (5rbu: 9 lbr), (10rbu: 7 lbr), (20rbu: 0 lbr), (50rbu: 7 lbr), (100rbu: 1 lbr), time: 22:15:07'),
(165, 'Maidi', 'Menyetor', '2023-06-03', '(1rbu: 6 lbr), (2rbu: 18 lbr), (5rbu: 9 lbr), (10rbu: 6 lbr), (20rbu: 1 lbr), (50rbu: 2 lbr), (100rbu: 2 lbr), time: 22:28:34'),
(166, 'Maidi', 'Menyetor', '2023-06-04', '(1rbu: 5 lbr), (2rbu: 35 lbr), (5rbu: 13 lbr), (10rbu: 6 lbr), (20rbu: 0 lbr), (50rbu: 3 lbr), (100rbu: 1 lbr), time: 22:26:41'),
(167, 'Maidi', 'Menyetor', '2023-06-05', '(1rbu: 3 lbr), (2rbu: 26 lbr), (5rbu: 26 lbr), (10rbu: 12 lbr), (20rbu: 1 lbr), (50rbu: 1 lbr), (100rbu: 4 lbr), time: 23:39:19'),
(168, 'Maidi', 'Menyetor', '2023-06-06', '(1rbu: 2 lbr), (2rbu: 24 lbr), (5rbu: 15 lbr), (10rbu: 9 lbr), (20rbu: 3 lbr), (50rbu: 4 lbr), (100rbu: 3 lbr), time: 22:42:33'),
(169, 'Maidi', 'Menyetor', '2023-06-07', '(1rbu: 0 lbr), (2rbu: 19 lbr), (5rbu: 14 lbr), (10rbu: 7 lbr), (20rbu: 2 lbr), (50rbu: 11 lbr), (100rbu: 1 lbr), time: 23:30:27'),
(170, 'Maidi', 'Menyetor', '2023-06-08', '(1rbu: 1 lbr), (2rbu: 23 lbr), (5rbu: 12 lbr), (10rbu: 9 lbr), (20rbu: 3 lbr), (50rbu: 2 lbr), (100rbu: 1 lbr), time: 22:02:57'),
(171, 'Maidi', 'Menyetor', '2023-06-09', '(1rbu: 1 lbr), (2rbu: 24 lbr), (5rbu: 9 lbr), (10rbu: 7 lbr), (20rbu: 2 lbr), (50rbu: 2 lbr), (100rbu: 2 lbr), time: 22:59:06'),
(172, 'Maidi', 'Menyetor', '2023-06-10', '(1rbu: 0 lbr), (2rbu: 29 lbr), (5rbu: 15 lbr), (10rbu: 12 lbr), (20rbu: 4 lbr), (50rbu: 3 lbr), (100rbu: 1 lbr), time: 23:32:41'),
(173, 'Maidi', 'Menyetor', '2023-06-11', '(1rbu: 1 lbr), (2rbu: 15 lbr), (5rbu: 15 lbr), (10rbu: 6 lbr), (20rbu: 2 lbr), (50rbu: 7 lbr), (100rbu: 2 lbr), time: 23:37:26'),
(174, 'Maidi', 'Menyetor', '2023-06-13', '(1rbu: 3 lbr), (2rbu: 11 lbr), (5rbu: 14 lbr), (10rbu: 12 lbr), (20rbu: 6 lbr), (50rbu: 8 lbr), (100rbu: 2 lbr), time: 22:05:32'),
(175, 'Maidi', 'Menyetor', '2023-06-14', '(1rbu: 12 lbr), (2rbu: 19 lbr), (5rbu: 16 lbr), (10rbu: 3 lbr), (20rbu: 0 lbr), (50rbu: 7 lbr), (100rbu: 4 lbr), time: 22:15:47'),
(176, 'Maidi', 'Menyetor', '2023-06-15', '(1rbu: 6 lbr), (2rbu: 22 lbr), (5rbu: 13 lbr), (10rbu: 3 lbr), (20rbu: 0 lbr), (50rbu: 1 lbr), (100rbu: 5 lbr), time: 22:19:44'),
(177, 'Maidi', 'Menyetor', '2023-06-17', '(1rbu: 9 lbr), (2rbu: 56 lbr), (5rbu: 15 lbr), (10rbu: 12 lbr), (20rbu: 3 lbr), (50rbu: 7 lbr), (100rbu: 5 lbr), time: 22:22:01'),
(178, 'Maidi', 'Menyetor', '2023-06-18', '(1rbu: 3 lbr), (2rbu: 41 lbr), (5rbu: 12 lbr), (10rbu: 9 lbr), (20rbu: 1 lbr), (50rbu: 1 lbr), (100rbu: 3 lbr), time: 23:52:40'),
(179, 'Maidi', 'Menyetor', '2023-06-19', '(1rbu: 1 lbr), (2rbu: 13 lbr), (5rbu: 14 lbr), (10rbu: 6 lbr), (20rbu: 5 lbr), (50rbu: 3 lbr), (100rbu: 2 lbr), time: 23:17:02'),
(180, 'Maidi', 'Menyetor', '2023-06-20', '(1rbu: 1 lbr), (2rbu: 33 lbr), (5rbu: 22 lbr), (10rbu: 15 lbr), (20rbu: 9 lbr), (50rbu: 4 lbr), (100rbu: 0 lbr), time: 22:52:17'),
(181, 'Maidi', 'Menyetor', '2023-06-21', '(1rbu: 1 lbr), (2rbu: 23 lbr), (5rbu: 9 lbr), (10rbu: 2 lbr), (20rbu: 1 lbr), (50rbu: 6 lbr), (100rbu: 2 lbr), time: 22:38:44'),
(182, 'Maidi', 'Menyetor', '2023-06-22', '(1rbu: 5 lbr), (2rbu: 34 lbr), (5rbu: 10 lbr), (10rbu: 1 lbr), (20rbu: 0 lbr), (50rbu: 11 lbr), (100rbu: 2 lbr), time: 23:24:28'),
(183, 'Maidi', 'Menyetor', '2023-06-23', '(1rbu: 2 lbr), (2rbu: 31 lbr), (5rbu: 28 lbr), (10rbu: 8 lbr), (20rbu: 0 lbr), (50rbu: 10 lbr), (100rbu: 2 lbr), time: 23:38:10'),
(184, 'Maidi', 'Menyetor', '2023-06-24', '(1rbu: 3 lbr), (2rbu: 11 lbr), (5rbu: 27 lbr), (10rbu: 13 lbr), (20rbu: 0 lbr), (50rbu: 3 lbr), (100rbu: 8 lbr), time: 23:29:40'),
(185, 'Maidi', 'Menyetor', '2023-06-25', '(1rbu: 3 lbr), (2rbu: 5 lbr), (5rbu: 28 lbr), (10rbu: 20 lbr), (20rbu: 3 lbr), (50rbu: 10 lbr), (100rbu: 2 lbr), time: 23:18:34'),
(186, 'Maidi', 'Menyetor', '2023-06-26', '(1rbu: 1 lbr), (2rbu: 25 lbr), (5rbu: 22 lbr), (10rbu: 12 lbr), (20rbu: 2 lbr), (50rbu: 13 lbr), (100rbu: 1 lbr), time: 22:52:58'),
(187, 'Maidi', 'Menyetor', '2023-06-27', '(1rbu: 1 lbr), (2rbu: 29 lbr), (5rbu: 30 lbr), (10rbu: 18 lbr), (20rbu: 2 lbr), (50rbu: 8 lbr), (100rbu: 0 lbr), time: 22:58:42'),
(188, 'Maidi', 'Menyetor', '2023-06-28', '(1rbu: 0 lbr), (2rbu: 13 lbr), (5rbu: 14 lbr), (10rbu: 9 lbr), (20rbu: 3 lbr), (50rbu: 19 lbr), (100rbu: 2 lbr), time: 23:20:57'),
(189, 'Maidi', 'Menyetor', '2023-07-01', '(1rbu: 2 lbr), (2rbu: 26 lbr), (5rbu: 11 lbr), (10rbu: 6 lbr), (20rbu: 8 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 23:23:17'),
(190, 'Maidi', 'Menyetor', '2023-07-02', '(1rbu: 2 lbr), (2rbu: 12 lbr), (5rbu: 16 lbr), (10rbu: 4 lbr), (20rbu: 5 lbr), (50rbu: 5 lbr), (100rbu: 5 lbr), time: 23:38:39'),
(191, 'Maidi', 'Menyetor', '2023-07-04', '(1rbu: 2 lbr), (2rbu: 23 lbr), (5rbu: 23 lbr), (10rbu: 13 lbr), (20rbu: 5 lbr), (50rbu: 11 lbr), (100rbu: 1 lbr), time: 22:51:47'),
(192, 'Maidi', 'Menyetor', '2023-07-06', '(1rbu: 10 lbr), (2rbu: 27 lbr), (5rbu: 18 lbr), (10rbu: 11 lbr), (20rbu: 4 lbr), (50rbu: 1 lbr), (100rbu: 4 lbr), time: 23:22:06'),
(193, 'Maidi', 'Menyetor', '2023-07-07', '(1rbu: 2 lbr), (2rbu: 7 lbr), (5rbu: 16 lbr), (10rbu: 9 lbr), (20rbu: 2 lbr), (50rbu: 8 lbr), (100rbu: 2 lbr), time: 22:23:22'),
(194, 'Maidi', 'Menyetor', '2023-07-07', '(1rbu: 2 lbr), (2rbu: 7 lbr), (5rbu: 16 lbr), (10rbu: 9 lbr), (20rbu: 2 lbr), (50rbu: 8 lbr), (100rbu: 2 lbr), time: 22:37:09'),
(195, 'Maidi', 'Menyetor', '2023-07-08', '(1rbu: 0 lbr), (2rbu: 25 lbr), (5rbu: 12 lbr), (10rbu: 16 lbr), (20rbu: 3 lbr), (50rbu: 3 lbr), (100rbu: 1 lbr), time: 22:29:42'),
(196, 'Maidi', 'Menyetor', '2023-07-09', '(1rbu: 1 lbr), (2rbu: 30 lbr), (5rbu: 17 lbr), (10rbu: 1 lbr), (20rbu: 1 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 23:07:21'),
(197, 'Maidi', 'Menyetor', '2023-07-10', '(1rbu: 2 lbr), (2rbu: 35 lbr), (5rbu: 15 lbr), (10rbu: 5 lbr), (20rbu: 1 lbr), (50rbu: 8 lbr), (100rbu: 2 lbr), time: 22:16:15'),
(198, 'Maidi', 'Menyetor', '2023-07-11', '(1rbu: 0 lbr), (2rbu: 36 lbr), (5rbu: 23 lbr), (10rbu: 10 lbr), (20rbu: 3 lbr), (50rbu: 7 lbr), (100rbu: 1 lbr), time: 22:20:29'),
(199, 'Maidi', 'Menyetor', '2023-07-12', '(1rbu: 0 lbr), (2rbu: 55 lbr), (5rbu: 18 lbr), (10rbu: 10 lbr), (20rbu: 6 lbr), (50rbu: 3 lbr), (100rbu: 1 lbr), time: 22:50:20'),
(200, 'Maidi', 'Menyetor', '2023-07-13', '(1rbu: 1 lbr), (2rbu: 23 lbr), (5rbu: 15 lbr), (10rbu: 8 lbr), (20rbu: 1 lbr), (50rbu: 3 lbr), (100rbu: 4 lbr), time: 23:44:26'),
(201, 'Maidi', 'Menyetor', '2023-07-14', '(1rbu: 3 lbr), (2rbu: 20 lbr), (5rbu: 13 lbr), (10rbu: 3 lbr), (20rbu: 0 lbr), (50rbu: 5 lbr), (100rbu: 2 lbr), time: 23:41:20'),
(202, 'Maidi', 'Menyetor', '2023-07-15', '(1rbu: 4 lbr), (2rbu: 30 lbr), (5rbu: 4 lbr), (10rbu: 2 lbr), (20rbu: 0 lbr), (50rbu: 3 lbr), (100rbu: 3 lbr), time: 23:41:49'),
(203, 'Maidi', 'Menyetor', '2023-07-17', '(1rbu: 0 lbr), (2rbu: 21 lbr), (5rbu: 7 lbr), (10rbu: 0 lbr), (20rbu: 0 lbr), (50rbu: 4 lbr), (100rbu: 3 lbr), time: 23:30:15'),
(204, 'Maidi', 'Menyetor', '2023-07-18', '(1rbu: 6 lbr), (2rbu: 33 lbr), (5rbu: 11 lbr), (10rbu: 8 lbr), (20rbu: 2 lbr), (50rbu: 6 lbr), (100rbu: 3 lbr), time: 23:38:07'),
(205, 'Maidi', 'Menyetor', '2023-07-19', '(1rbu: 0 lbr), (2rbu: 18 lbr), (5rbu: 13 lbr), (10rbu: 7 lbr), (20rbu: 0 lbr), (50rbu: 5 lbr), (100rbu: 1 lbr), time: 22:38:32'),
(206, 'Maidi', 'Menyetor', '2023-07-20', '(1rbu: 3 lbr), (2rbu: 9 lbr), (5rbu: 5 lbr), (10rbu: 2 lbr), (20rbu: 2 lbr), (50rbu: 7 lbr), (100rbu: 2 lbr), time: 23:49:20'),
(207, 'Maidi', 'Menyetor', '2023-07-21', '(1rbu: 0 lbr), (2rbu: 13 lbr), (5rbu: 18 lbr), (10rbu: 8 lbr), (20rbu: 1 lbr), (50rbu: 11 lbr), (100rbu: 0 lbr), time: 23:55:43'),
(208, 'Maidi', 'Menyetor', '2023-07-22', '(1rbu: 0 lbr), (2rbu: 12 lbr), (5rbu: 9 lbr), (10rbu: 9 lbr), (20rbu: 2 lbr), (50rbu: 2 lbr), (100rbu: 4 lbr), time: 22:52:44'),
(209, 'Maidi', 'Menyetor', '2023-07-23', '(1rbu: 0 lbr), (2rbu: 21 lbr), (5rbu: 17 lbr), (10rbu: 12 lbr), (20rbu: 1 lbr), (50rbu: 6 lbr), (100rbu: 2 lbr), time: 23:34:26'),
(210, 'Maidi', 'Menyetor', '2023-07-24', '(1rbu: 2 lbr), (2rbu: 26 lbr), (5rbu: 15 lbr), (10rbu: 6 lbr), (20rbu: 5 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 23:34:40'),
(211, 'Maidi', 'Menyetor', '2023-07-25', '(1rbu: 0 lbr), (2rbu: 14 lbr), (5rbu: 23 lbr), (10rbu: 9 lbr), (20rbu: 8 lbr), (50rbu: 5 lbr), (100rbu: 5 lbr), time: 23:45:46'),
(212, 'Maidi', 'Menyetor', '2023-07-26', '(1rbu: 1 lbr), (2rbu: 20 lbr), (5rbu: 9 lbr), (10rbu: 2 lbr), (20rbu: 4 lbr), (50rbu: 7 lbr), (100rbu: 3 lbr), time: 23:31:44'),
(213, 'Maidi', 'Menyetor', '2023-07-28', '(1rbu: 1 lbr), (2rbu: 9 lbr), (5rbu: 16 lbr), (10rbu: 3 lbr), (20rbu: 0 lbr), (50rbu: 4 lbr), (100rbu: 4 lbr), time: 22:29:31'),
(214, 'Maidi', 'Menyetor', '2023-07-31', '(1rbu: 0 lbr), (2rbu: 27 lbr), (5rbu: 21 lbr), (10rbu: 5 lbr), (20rbu: 0 lbr), (50rbu: 4 lbr), (100rbu: 1 lbr), time: 22:33:43'),
(215, 'Maidi', 'Menyetor', '2023-08-01', '(1rbu: 3 lbr), (2rbu: 34 lbr), (5rbu: 30 lbr), (10rbu: 1 lbr), (20rbu: 1 lbr), (50rbu: 5 lbr), (100rbu: 1 lbr), time: 23:51:47'),
(216, 'Maidi', 'Menyetor', '2023-08-03', '(1rbu: 1 lbr), (2rbu: 28 lbr), (5rbu: 12 lbr), (10rbu: 5 lbr), (20rbu: 1 lbr), (50rbu: 2 lbr), (100rbu: 5 lbr), time: 23:40:32'),
(217, 'Maidi', 'Menyetor', '2023-08-04', '(1rbu: 3 lbr), (2rbu: 9 lbr), (5rbu: 20 lbr), (10rbu: 10 lbr), (20rbu: 3 lbr), (50rbu: 15 lbr), (100rbu: 0 lbr), time: 23:56:33'),
(218, 'Maidi', 'Menyetor', '2023-08-05', '(1rbu: 3 lbr), (2rbu: 47 lbr), (5rbu: 13 lbr), (10rbu: 11 lbr), (20rbu: 4 lbr), (50rbu: 3 lbr), (100rbu: 0 lbr), time: 23:18:13'),
(219, 'Maidi', 'Menyetor', '2023-08-08', '(1rbu: 2 lbr), (2rbu: 31 lbr), (5rbu: 6 lbr), (10rbu: 5 lbr), (20rbu: 2 lbr), (50rbu: 1 lbr), (100rbu: 7 lbr), time: 23:17:01'),
(220, 'Maidi', 'Menyetor', '2023-08-09', '(1rbu: 1 lbr), (2rbu: 22 lbr), (5rbu: 22 lbr), (10rbu: 12 lbr), (20rbu: 2 lbr), (50rbu: 4 lbr), (100rbu: 1 lbr), time: 22:39:23'),
(221, 'Maidi', 'Menyetor', '2023-08-10', '(1rbu: 1 lbr), (2rbu: 18 lbr), (5rbu: 17 lbr), (10rbu: 11 lbr), (20rbu: 2 lbr), (50rbu: 5 lbr), (100rbu: 2 lbr), time: 22:44:45'),
(222, 'Maidi', 'Menyetor', '2023-08-11', '(1rbu: 0 lbr), (2rbu: 18 lbr), (5rbu: 11 lbr), (10rbu: 5 lbr), (20rbu: 3 lbr), (50rbu: 7 lbr), (100rbu: 0 lbr), time: 22:53:56'),
(223, 'Maidi', 'Menyetor', '2023-08-12', '(1rbu: 3 lbr), (2rbu: 21 lbr), (5rbu: 14 lbr), (10rbu: 6 lbr), (20rbu: 1 lbr), (50rbu: 7 lbr), (100rbu: 1 lbr), time: 22:36:12'),
(224, 'Maidi', 'Menyetor', '2023-08-14', '(1rbu: 2 lbr), (2rbu: 11 lbr), (5rbu: 16 lbr), (10rbu: 4 lbr), (20rbu: 3 lbr), (50rbu: 12 lbr), (100rbu: 0 lbr), time: 23:12:13'),
(225, 'Maidi', 'Menyetor', '2023-08-15', '(1rbu: 1 lbr), (2rbu: 22 lbr), (5rbu: 27 lbr), (10rbu: 11 lbr), (20rbu: 3 lbr), (50rbu: 0 lbr), (100rbu: 9 lbr), time: 22:19:24'),
(226, 'Maidi', 'Menyetor', '2023-08-16', '(1rbu: 1 lbr), (2rbu: 26 lbr), (5rbu: 17 lbr), (10rbu: 4 lbr), (20rbu: 1 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 22:56:00'),
(227, 'Maidi', 'Menyetor', '2023-08-17', '(1rbu: 7 lbr), (2rbu: 52 lbr), (5rbu: 21 lbr), (10rbu: 17 lbr), (20rbu: 6 lbr), (50rbu: 3 lbr), (100rbu: 0 lbr), time: 22:57:57'),
(228, 'Maidi', 'Menyetor', '2023-08-20', '(1rbu: 3 lbr), (2rbu: 37 lbr), (5rbu: 28 lbr), (10rbu: 22 lbr), (20rbu: 3 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 22:49:37'),
(229, 'Maidi', 'Menyetor', '2023-08-22', '(1rbu: 3 lbr), (2rbu: 36 lbr), (5rbu: 23 lbr), (10rbu: 5 lbr), (20rbu: 0 lbr), (50rbu: 3 lbr), (100rbu: 3 lbr), time: 23:05:33'),
(230, 'Maidi', 'Menyetor', '2023-08-23', '(1rbu: 0 lbr), (2rbu: 20 lbr), (5rbu: 12 lbr), (10rbu: 5 lbr), (20rbu: 6 lbr), (50rbu: 4 lbr), (100rbu: 6 lbr), time: 22:58:00'),
(231, 'Maidi', 'Menyetor', '2023-08-25', '(1rbu: 4 lbr), (2rbu: 17 lbr), (5rbu: 14 lbr), (10rbu: 9 lbr), (20rbu: 6 lbr), (50rbu: 4 lbr), (100rbu: 2 lbr), time: 22:49:01'),
(232, 'Maidi', 'Menyetor', '2023-08-28', '(1rbu: 1 lbr), (2rbu: 32 lbr), (5rbu: 25 lbr), (10rbu: 6 lbr), (20rbu: 2 lbr), (50rbu: 3 lbr), (100rbu: 3 lbr), time: 23:10:03'),
(233, 'Maidi', 'Menyetor', '2023-08-31', '(1rbu: 2 lbr), (2rbu: 27 lbr), (5rbu: 10 lbr), (10rbu: 8 lbr), (20rbu: 4 lbr), (50rbu: 10 lbr), (100rbu: 4 lbr), time: 22:30:27'),
(234, 'Maidi', 'Menyetor', '2023-09-01', '(1rbu: 6 lbr), (2rbu: 23 lbr), (5rbu: 13 lbr), (10rbu: 9 lbr), (20rbu: 5 lbr), (50rbu: 3 lbr), (100rbu: 2 lbr), time: 22:46:46'),
(235, 'Maidi', 'Menyetor', '2023-09-02', '(1rbu: 1 lbr), (2rbu: 11 lbr), (5rbu: 11 lbr), (10rbu: 4 lbr), (20rbu: 5 lbr), (50rbu: 2 lbr), (100rbu: 3 lbr), time: 22:40:20'),
(236, 'Maidi', 'Menyetor', '2023-09-03', '(1rbu: 6 lbr), (2rbu: 25 lbr), (5rbu: 15 lbr), (10rbu: 11 lbr), (20rbu: 5 lbr), (50rbu: 4 lbr), (100rbu: 2 lbr), time: 23:11:48'),
(237, 'Maidi', 'Menyetor', '2023-09-04', '(1rbu: 0 lbr), (2rbu: 20 lbr), (5rbu: 16 lbr), (10rbu: 10 lbr), (20rbu: 5 lbr), (50rbu: 5 lbr), (100rbu: 1 lbr), time: 23:32:26'),
(238, 'Maidi', 'Menyetor', '2023-09-05', '(1rbu: 0 lbr), (2rbu: 27 lbr), (5rbu: 8 lbr), (10rbu: 2 lbr), (20rbu: 1 lbr), (50rbu: 0 lbr), (100rbu: 3 lbr), time: 22:28:24'),
(239, 'Maidi', 'Menyetor', '2023-09-07', '(1rbu: 2 lbr), (2rbu: 23 lbr), (5rbu: 21 lbr), (10rbu: 5 lbr), (20rbu: 1 lbr), (50rbu: 5 lbr), (100rbu: 2 lbr), time: 23:44:32'),
(240, 'Maidi', 'Menyetor', '2023-09-10', '(1rbu: 3 lbr), (2rbu: 26 lbr), (5rbu: 26 lbr), (10rbu: 8 lbr), (20rbu: 6 lbr), (50rbu: 9 lbr), (100rbu: 0 lbr), time: 22:35:21'),
(241, 'Maidi', 'Menyetor', '2023-09-11', '(1rbu: 3 lbr), (2rbu: 24 lbr), (5rbu: 19 lbr), (10rbu: 6 lbr), (20rbu: 0 lbr), (50rbu: 2 lbr), (100rbu: 2 lbr), time: 22:46:22'),
(242, 'Maidi', 'Menyetor', '2023-09-13', '(1rbu: 0 lbr), (2rbu: 17 lbr), (5rbu: 22 lbr), (10rbu: 13 lbr), (20rbu: 4 lbr), (50rbu: 6 lbr), (100rbu: 3 lbr), time: 22:45:08'),
(243, 'Maidi', 'Menyetor', '2023-09-14', '(1rbu: 1 lbr), (2rbu: 17 lbr), (5rbu: 20 lbr), (10rbu: 9 lbr), (20rbu: 2 lbr), (50rbu: 1 lbr), (100rbu: 2 lbr), time: 23:39:38'),
(244, 'Maidi', 'Menyetor', '2023-09-15', '(1rbu: 2 lbr), (2rbu: 26 lbr), (5rbu: 7 lbr), (10rbu: 2 lbr), (20rbu: 0 lbr), (50rbu: 8 lbr), (100rbu: 2 lbr), time: 23:41:38'),
(245, 'Maidi', 'Menyetor', '2023-09-21', '(1rbu: 6 lbr), (2rbu: 10 lbr), (5rbu: 23 lbr), (10rbu: 9 lbr), (20rbu: 1 lbr), (50rbu: 4 lbr), (100rbu: 0 lbr), time: 22:43:52'),
(246, 'Maidi', 'Menyetor', '2023-09-23', '(1rbu: 0 lbr), (2rbu: 21 lbr), (5rbu: 22 lbr), (10rbu: 7 lbr), (20rbu: 1 lbr), (50rbu: 6 lbr), (100rbu: 3 lbr), time: 23:23:13'),
(247, 'Maidi', 'Menyetor', '2023-09-26', '(1rbu: 0 lbr), (2rbu: 42 lbr), (5rbu: 17 lbr), (10rbu: 10 lbr), (20rbu: 4 lbr), (50rbu: 7 lbr), (100rbu: 2 lbr), time: 22:45:04'),
(248, 'Maidi', 'Menyetor', '2023-09-27', '(1rbu: 0 lbr), (2rbu: 13 lbr), (5rbu: 13 lbr), (10rbu: 3 lbr), (20rbu: 1 lbr), (50rbu: 4 lbr), (100rbu: 2 lbr), time: 22:44:44'),
(249, 'Maidi', 'Menyetor', '2023-09-28', '(1rbu: 1 lbr), (2rbu: 15 lbr), (5rbu: 21 lbr), (10rbu: 15 lbr), (20rbu: 5 lbr), (50rbu: 4 lbr), (100rbu: 2 lbr), time: 22:29:16'),
(250, 'Maidi', 'Menyetor', '2023-09-30', '(1rbu: 2 lbr), (2rbu: 24 lbr), (5rbu: 18 lbr), (10rbu: 12 lbr), (20rbu: 1 lbr), (50rbu: 14 lbr), (100rbu: 0 lbr), time: 22:54:22'),
(251, 'Maidi', 'Menyetor', '2023-10-01', '(1rbu: 2 lbr), (2rbu: 24 lbr), (5rbu: 12 lbr), (10rbu: 9 lbr), (20rbu: 0 lbr), (50rbu: 6 lbr), (100rbu: 0 lbr), time: 23:24:26'),
(252, 'Maidi', 'Menyetor', '2023-10-04', '(1rbu: 2 lbr), (2rbu: 30 lbr), (5rbu: 12 lbr), (10rbu: 1 lbr), (20rbu: 1 lbr), (50rbu: 11 lbr), (100rbu: 4 lbr), time: 23:32:32'),
(253, 'Maidi', 'Menyetor', '2023-10-07', '(1rbu: 2 lbr), (2rbu: 15 lbr), (5rbu: 31 lbr), (10rbu: 5 lbr), (20rbu: 1 lbr), (50rbu: 13 lbr), (100rbu: 2 lbr), time: 23:34:25'),
(254, 'Maidi', 'Menyetor', '2023-10-10', '(1rbu: 4 lbr), (2rbu: 22 lbr), (5rbu: 49 lbr), (10rbu: 31 lbr), (20rbu: 3 lbr), (50rbu: 4 lbr), (100rbu: 4 lbr), time: 23:50:37'),
(255, 'Maidi', 'Menyetor', '2023-10-11', '(1rbu: 10 lbr), (2rbu: 22 lbr), (5rbu: 15 lbr), (10rbu: 8 lbr), (20rbu: 6 lbr), (50rbu: 4 lbr), (100rbu: 0 lbr), time: 22:46:14'),
(256, 'Maidi', 'Menyetor', '2023-10-15', '(1rbu: 4 lbr), (2rbu: 30 lbr), (5rbu: 33 lbr), (10rbu: 9 lbr), (20rbu: 5 lbr), (50rbu: 11 lbr), (100rbu: 7 lbr), time: 22:40:49'),
(257, 'Maidi', 'Menyetor', '2023-10-17', '(1rbu: 5 lbr), (2rbu: 34 lbr), (5rbu: 6 lbr), (10rbu: 5 lbr), (20rbu: 0 lbr), (50rbu: 8 lbr), (100rbu: 3 lbr), time: 23:04:47'),
(258, 'Maidi', 'Menyetor', '2023-10-19', '(1rbu: 2 lbr), (2rbu: 31 lbr), (5rbu: 15 lbr), (10rbu: 3 lbr), (20rbu: 0 lbr), (50rbu: 5 lbr), (100rbu: 3 lbr), time: 23:44:34'),
(259, 'Maidi', 'Menyetor', '2023-10-21', '(1rbu: 0 lbr), (2rbu: 27 lbr), (5rbu: 10 lbr), (10rbu: 15 lbr), (20rbu: 0 lbr), (50rbu: 4 lbr), (100rbu: 3 lbr), time: 23:28:34'),
(260, 'Maidi', 'Menyetor', '2023-10-23', '(1rbu: 1 lbr), (2rbu: 22 lbr), (5rbu: 20 lbr), (10rbu: 13 lbr), (20rbu: 2 lbr), (50rbu: 5 lbr), (100rbu: 2 lbr), time: 22:16:42'),
(261, 'Maidi', 'Menyetor', '2023-10-26', '(1rbu: 9 lbr), (2rbu: 35 lbr), (5rbu: 20 lbr), (10rbu: 17 lbr), (20rbu: 2 lbr), (50rbu: 6 lbr), (100rbu: 4 lbr), time: 23:26:24'),
(262, 'Maidi', 'Menyetor', '2023-11-01', '(1rbu: 10 lbr), (2rbu: 23 lbr), (5rbu: 11 lbr), (10rbu: 0 lbr), (20rbu: 1 lbr), (50rbu: 10 lbr), (100rbu: 1 lbr), time: 22:46:49'),
(263, 'Maidi', 'Menyetor', '2023-11-04', '(1rbu: 7 lbr), (2rbu: 23 lbr), (5rbu: 10 lbr), (10rbu: 4 lbr), (20rbu: 0 lbr), (50rbu: 4 lbr), (100rbu: 4 lbr), time: 23:50:41'),
(264, 'Maidi', 'Menyetor', '2023-11-06', '(1rbu: 13 lbr), (2rbu: 23 lbr), (5rbu: 11 lbr), (10rbu: 4 lbr), (20rbu: 0 lbr), (50rbu: 2 lbr), (100rbu: 3 lbr), time: 22:34:36'),
(265, 'Maidi', 'Menyetor', '2023-11-09', '(1rbu: 3 lbr), (2rbu: 55 lbr), (5rbu: 8 lbr), (10rbu: 6 lbr), (20rbu: 1 lbr), (50rbu: 2 lbr), (100rbu: 1 lbr), time: 22:13:55'),
(266, 'Maidi', 'Menyetor', '2023-11-11', '(1rbu: 1 lbr), (2rbu: 19 lbr), (5rbu: 7 lbr), (10rbu: 3 lbr), (20rbu: 1 lbr), (50rbu: 8 lbr), (100rbu: 3 lbr), time: 23:38:18'),
(267, 'Maidi', 'Menyetor', '2023-11-12', '(1rbu: 0 lbr), (2rbu: 19 lbr), (5rbu: 7 lbr), (10rbu: 3 lbr), (20rbu: 1 lbr), (50rbu: 9 lbr), (100rbu: 0 lbr), time: 22:44:18'),
(268, 'Maidi', 'Menyetor', '2023-11-14', '(1rbu: 4 lbr), (2rbu: 51 lbr), (5rbu: 12 lbr), (10rbu: 5 lbr), (20rbu: 3 lbr), (50rbu: 7 lbr), (100rbu: 4 lbr), time: 22:48:07'),
(269, 'Maidi', 'Menyetor', '2023-11-17', '(1rbu: 2 lbr), (2rbu: 37 lbr), (5rbu: 17 lbr), (10rbu: 10 lbr), (20rbu: 2 lbr), (50rbu: 4 lbr), (100rbu: 3 lbr), time: 22:32:19'),
(270, 'Maidi', 'Menyetor', '2023-11-20', '(1rbu: 1 lbr), (2rbu: 25 lbr), (5rbu: 20 lbr), (10rbu: 4 lbr), (20rbu: 1 lbr), (50rbu: 11 lbr), (100rbu: 0 lbr), time: 22:30:55'),
(271, 'Maidi', 'Menyetor', '2023-11-22', '(1rbu: 5 lbr), (2rbu: 28 lbr), (5rbu: 25 lbr), (10rbu: 5 lbr), (20rbu: 1 lbr), (50rbu: 4 lbr), (100rbu: 2 lbr), time: 22:50:26'),
(272, 'Maidi', 'Menyetor', '2023-11-26', '(1rbu: 0 lbr), (2rbu: 3 lbr), (5rbu: 27 lbr), (10rbu: 4 lbr), (20rbu: 1 lbr), (50rbu: 14 lbr), (100rbu: 4 lbr), time: 23:01:06'),
(273, 'Maidi', 'Menyetor', '2023-11-29', '(1rbu: 2 lbr), (2rbu: 2 lbr), (5rbu: 26 lbr), (10rbu: 13 lbr), (20rbu: 7 lbr), (50rbu: 6 lbr), (100rbu: 1 lbr), time: 22:31:06'),
(274, 'Maidi', 'Menyetor', '2023-12-06', '(1rbu: 3 lbr), (2rbu: 65 lbr), (5rbu: 14 lbr), (10rbu: 8 lbr), (20rbu: 4 lbr), (50rbu: 6 lbr), (100rbu: 5 lbr), time: 23:39:50'),
(275, 'Maidi', 'Menyetor', '2023-12-12', '(1rbu: 1 lbr), (2rbu: 28 lbr), (5rbu: 11 lbr), (10rbu: 2 lbr), (20rbu: 0 lbr), (50rbu: 14 lbr), (100rbu: 2 lbr), time: 23:29:35'),
(276, 'Maidi', 'Menyetor', '2023-12-18', '(1rbu: 0 lbr), (2rbu: 18 lbr), (5rbu: 23 lbr), (10rbu: 10 lbr), (20rbu: 0 lbr), (50rbu: 14 lbr), (100rbu: 7 lbr), time: 22:08:16'),
(277, 'Maidi', 'Menyetor', '2023-12-23', '(1rbu: 0 lbr), (2rbu: 20 lbr), (5rbu: 21 lbr), (10rbu: 19 lbr), (20rbu: 7 lbr), (50rbu: 11 lbr), (100rbu: 2 lbr), time: 23:07:36'),
(278, 'Maidi', 'Menyetor', '2023-12-29', '(1rbu: 0 lbr), (2rbu: 8 lbr), (5rbu: 2 lbr), (10rbu: 7 lbr), (20rbu: 0 lbr), (50rbu: 14 lbr), (100rbu: 5 lbr), time: 22:19:41'),
(279, 'Maidi', 'Menyetor', '2024-01-04', '(1rbu: 4 lbr), (2rbu: 24 lbr), (5rbu: 36 lbr), (10rbu: 16 lbr), (20rbu: 2 lbr), (50rbu: 10 lbr), (100rbu: 3 lbr), time: 23:40:20'),
(280, 'Maidi', 'Menyetor', '2024-01-09', '(1rbu: 3 lbr), (2rbu: 30 lbr), (5rbu: 14 lbr), (10rbu: 6 lbr), (20rbu: 0 lbr), (50rbu: 15 lbr), (100rbu: 4 lbr), time: 23:08:15'),
(281, 'Maidi', 'Menyetor', '2024-01-23', '(1rbu: 3 lbr), (2rbu: 43 lbr), (5rbu: 18 lbr), (10rbu: 5 lbr), (20rbu: 7 lbr), (50rbu: 5 lbr), (100rbu: 9 lbr), time: 23:00:49'),
(282, 'Maidi', 'Menyetor', '2024-02-10', '(1rbu: 4 lbr), (2rbu: 50 lbr), (5rbu: 18 lbr), (10rbu: 3 lbr), (20rbu: 1 lbr), (50rbu: 7 lbr), (100rbu: 8 lbr), time: 23:26:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `omset`
--

CREATE TABLE `omset` (
  `id` int(255) NOT NULL,
  `nama_penyetor` varchar(255) NOT NULL,
  `nilai_omset` int(255) NOT NULL,
  `jumlah_kembalian` int(1) NOT NULL,
  `tanggal_stor` date NOT NULL,
  `waktu_stor` int(255) DEFAULT NULL,
  `bulan` varchar(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `omset`
--

INSERT INTO `omset` (`id`, `nama_penyetor`, `nilai_omset`, `jumlah_kembalian`, `tanggal_stor`, `waktu_stor`, `bulan`, `tahun`, `keterangan`) VALUES
(1, 'JANGAN DIHAPUS', 0, 0, '1945-08-17', 0, '32024', 0, NULL),
(68, 'Rusadi', 1012000, 1, '2022-09-01', 0, '092022', 2022, NULL),
(69, 'Rusadi', 945000, 1, '2022-09-02', 0, '092022', 2022, NULL),
(70, 'Rusadi', 1272000, 1, '2022-09-03', 0, '092022', 2022, NULL),
(71, 'Rusadi', 1334000, 1, '2022-09-04', 0, '092022', 2022, NULL),
(72, 'Rusadi', 944000, 1, '2022-09-05', NULL, '092022', 2022, NULL),
(73, 'Rusadi', 1092000, 1, '2022-09-06', NULL, '092022', 2022, NULL),
(74, 'Rusadi', 1351000, 1, '2022-09-07', NULL, '092022', 2022, NULL),
(75, 'Rusadi', 1003000, 1, '2022-09-08', NULL, '092022', 2022, NULL),
(76, 'Rusadi', 1153000, 2, '2022-09-09', NULL, '092022', 2022, NULL),
(77, 'Rusadi', 1612000, 1, '2022-09-10', NULL, '092022', 2022, NULL),
(78, 'Otomatis', 0, 0, '2022-09-11', NULL, '092022', 2022, 'Acara tahlilan 100 hari Abah'),
(79, 'Rusadi', 836000, 1, '2022-09-12', NULL, '092022', 2022, NULL),
(80, 'Rusadi', 652000, 1, '2022-09-13', NULL, '092022', 2022, NULL),
(81, 'Rusadi', 1030000, 1, '2022-09-14', NULL, '092022', 2022, NULL),
(82, 'Rusadi', 981000, 1, '2022-09-15', NULL, '092022', 2022, NULL),
(83, 'Rusadi', 1126000, 1, '2022-09-16', NULL, '092022', 2022, NULL),
(84, 'Rusadi', 1043000, 1, '2022-09-17', NULL, '092022', 2022, NULL),
(85, 'Rusadi', 1116000, 1, '2022-09-18', NULL, '092022', 2022, NULL),
(89, 'Rusadi', 1009000, 1, '2022-09-19', 1663596810, '092022', 2022, NULL),
(93, 'Maidi', 1018000, 1, '2022-09-20', 1663683404, '092022', 2022, NULL),
(94, 'Maidi', 1067000, 1, '2022-09-21', 1663769211, '092022', 2022, NULL),
(95, 'Maidi', 1073000, 1, '2022-09-22', 1663855989, '092022', 2022, NULL),
(96, 'Maidi', 916000, 1, '2022-09-23', 1663943362, '092022', 2022, NULL),
(97, 'Maidi', 915000, 1, '2022-09-24', 1664028753, '092022', 2022, NULL),
(98, 'Maidi', 1388000, 1, '2022-09-25', 1664115756, '092022', 2022, NULL),
(99, 'Maidi', 937000, 1, '2022-09-26', 1664201074, '092022', 2022, NULL),
(100, 'Maidi', 713000, 1, '2022-09-27', 1664288258, '092022', 2022, NULL),
(101, 'Rusadi', 947000, 1, '2022-08-01', NULL, '082022', 2022, NULL),
(102, 'Rusadi', 1029000, 1, '2022-08-02', NULL, '082022', 2022, NULL),
(103, 'Rusadi', 1193000, 1, '2022-08-03', NULL, '082022', 2022, NULL),
(104, 'Rusadi', 1031000, 1, '2022-08-04', NULL, '082022', 2022, NULL),
(105, 'Rusadi', 1280000, 1, '2022-08-05', NULL, '082022', 2022, NULL),
(106, 'Rusadi', 1587000, 1, '2022-08-06', NULL, '082022', 2022, NULL),
(107, 'Rusadi', 1493000, 1, '2022-08-07', NULL, '082022', 2022, NULL),
(108, 'Rusadi', 986000, 1, '2022-08-08', NULL, '082022', 2022, NULL),
(109, 'Rusadi', 1273000, 2, '2022-08-09', NULL, '082022', 2022, NULL),
(110, 'Rusadi', 1106000, 1, '2022-08-10', NULL, '082022', 2022, NULL),
(111, 'Rusadi', 920000, 1, '2022-08-11', NULL, '082022', 2022, NULL),
(112, 'Rusadi', 1371000, 1, '2022-08-12', NULL, '082022', 2022, NULL),
(113, 'Rusadi', 1347000, 1, '2022-08-13', NULL, '082022', 2022, NULL),
(114, 'Rusadi', 1161000, 1, '2022-08-14', NULL, '082022', 2022, NULL),
(115, 'Rusadi', 1340000, 1, '2022-08-15', NULL, '082022', 2022, NULL),
(116, 'Rusadi', 1114000, 1, '2022-08-16', NULL, '082022', 2022, NULL),
(117, 'Rusadi', 1464000, 1, '2022-08-17', NULL, '082022', 2022, NULL),
(118, 'Rusadi', 939000, 1, '2022-08-18', NULL, '082022', 2022, NULL),
(119, 'Rusadi', 1018000, 1, '2022-08-19', NULL, '082022', 2022, NULL),
(120, 'Rusadi', 1467000, 1, '2022-08-20', NULL, '082022', 2022, NULL),
(121, 'Rusadi', 915000, 1, '2022-08-21', NULL, '082022', 2022, NULL),
(122, 'Rusadi', 1164000, 1, '2022-08-22', NULL, '082022', 2022, NULL),
(123, 'Rusadi', 1004000, 1, '2022-08-23', NULL, '082022', 2022, NULL),
(124, 'Rusadi', 1209000, 1, '2022-08-24', NULL, '082022', 2022, NULL),
(125, 'Rusadi', 855000, 1, '2022-08-25', NULL, '082022', 2022, NULL),
(126, 'Rusadi', 1860000, 2, '2022-08-26', NULL, '082022', 2022, NULL),
(127, 'Rusadi', 1051000, 1, '2022-08-27', NULL, '082022', 2022, NULL),
(128, 'Rusadi', 611000, 1, '2022-08-28', 1670029011, '082022', 2022, ' acara pengantinan nadia '),
(129, 'Rusadi', 1223000, 1, '2022-08-29', NULL, '082022', 2022, NULL),
(130, 'Rusadi', 1187000, 1, '2022-08-30', NULL, '082022', 2022, NULL),
(131, 'Rusadi', 970000, 1, '2022-08-31', NULL, '082022', 2022, NULL),
(132, 'Rusadi', 1194000, 2, '2022-07-01', NULL, '072022', 2022, NULL),
(133, 'Rusadi', 1102000, 1, '2022-07-02', NULL, '072022', 2022, NULL),
(134, 'Rusadi', 1475000, 1, '2022-07-03', NULL, '072022', 2022, NULL),
(135, 'Rusadi', 1107000, 1, '2022-07-04', NULL, '072022', 2022, NULL),
(136, 'Rusadi', 1710000, 2, '2022-07-05', NULL, '072022', 2022, NULL),
(137, 'Rusadi', 1346000, 1, '2022-07-06', NULL, '072022', 2022, NULL),
(138, 'Rusadi', 1110000, 1, '2022-07-07', NULL, '072022', 2022, NULL),
(139, 'Rusadi', 1154000, 1, '2022-07-08', NULL, '072022', 2022, NULL),
(140, 'Rusadi', 1537000, 1, '2022-07-09', NULL, '072022', 2022, NULL),
(141, 'Rusadi', 829000, 1, '2022-07-10', NULL, '072022', 2022, 'hari raya idul adha'),
(142, 'Rusadi', 819000, 1, '2022-07-11', NULL, '072022', 2022, NULL),
(143, 'Rusadi', 1302000, 1, '2022-07-12', NULL, '072022', 2022, NULL),
(144, 'Rusadi', 1047000, 1, '2022-07-13', NULL, '072022', 2022, NULL),
(145, 'Rusadi', 1484000, 1, '2022-07-14', NULL, '072022', 2022, NULL),
(146, 'Rusadi', 827000, 1, '2022-07-15', NULL, '072022', 2022, 'acara akad nikah keluarga'),
(147, 'Rusadi', 1058000, 1, '2022-07-16', NULL, '072022', 2022, NULL),
(148, 'Rusadi', 1096000, 1, '2022-07-17', NULL, '072022', 2022, NULL),
(149, 'Rusadi', 975000, 1, '2022-07-18', NULL, '072022', 2022, NULL),
(150, 'Rusadi', 1877000, 2, '2022-07-19', NULL, '072022', 2022, NULL),
(151, 'Rusadi', 1526000, 2, '2022-07-20', NULL, '072022', 2022, NULL),
(152, 'Rusadi', 747000, 1, '2022-07-21', NULL, '072022', 2022, NULL),
(153, 'Rusadi', 996000, 1, '2022-07-22', NULL, '072022', 2022, NULL),
(154, 'Rusadi', 1288000, 2, '2022-07-23', NULL, '072022', 2022, NULL),
(155, 'Rusadi', 1335000, 2, '2022-07-24', NULL, '072022', 2022, NULL),
(156, 'Rusadi', 1064000, 1, '2022-07-25', NULL, '072022', 2022, NULL),
(157, 'Rusadi', 1121000, 1, '2022-07-26', NULL, '072022', 2022, NULL),
(158, 'Rusadi', 1085000, 1, '2022-07-27', NULL, '072022', 2022, NULL),
(159, 'Rusadi', 1014000, 1, '2022-07-28', NULL, '072022', 2022, NULL),
(160, 'Rusadi', 1600000, 1, '2022-07-29', NULL, '072022', 2022, NULL),
(161, 'Rusadi', 1768000, 1, '2022-07-30', NULL, '072022', 2022, NULL),
(162, 'Rusadi', 1366000, 1, '2022-07-31', NULL, '072022', 2022, NULL),
(163, 'Rusadi', 810000, 1, '2022-06-13', NULL, '062022', 2022, NULL),
(164, 'Rusadi', 1303000, 2, '2022-06-14', NULL, '062022', 2022, NULL),
(165, 'Rusadi', 1638000, 2, '2022-06-15', NULL, '062022', 2022, NULL),
(166, 'Rusadi', 944000, 1, '2022-06-16', NULL, '062022', 2022, NULL),
(167, 'Rusadi', 817000, 1, '2022-06-17', NULL, '062022', 2022, NULL),
(168, 'Rusadi', 1469000, 1, '2022-06-18', NULL, '062022', 2022, NULL),
(169, 'Rusadi', 1719000, 2, '2022-06-19', NULL, '062022', 2022, NULL),
(170, 'Rusadi', 890000, 1, '2022-06-20', NULL, '062022', 2022, NULL),
(171, 'Rusadi', 951000, 1, '2022-06-21', NULL, '062022', 2022, NULL),
(172, 'Rusadi', 866000, 1, '2022-06-22', NULL, '062022', 2022, NULL),
(173, 'Rusadi', 909000, 1, '2022-06-23', NULL, '062022', 2022, NULL),
(174, 'Rusadi', 661000, 1, '2022-06-24', NULL, '062022', 2022, NULL),
(175, 'Rusadi', 923000, 2, '2022-06-25', NULL, '062022', 2022, NULL),
(176, 'Rusadi', 645000, 1, '2022-06-26', NULL, '062022', 2022, NULL),
(177, 'Rusadi', 601000, 1, '2022-06-27', NULL, '062022', 2022, NULL),
(178, 'Rusadi', 986000, 1, '2022-06-28', NULL, '062022', 2022, NULL),
(179, 'Rusadi', 1269000, 1, '2022-06-29', NULL, '062022', 2022, NULL),
(180, 'Rusadi', 895000, 1, '2022-06-30', NULL, '062022', 2022, NULL),
(181, 'Maidi', 1244000, 1, '2022-09-28', 1664374441, '092022', 2022, NULL),
(183, 'Maidi', 995000, 1, '2022-09-29', 1664462178, '092022', 2022, NULL),
(184, 'Maidi', 1205000, 1, '2022-09-30', 1664546803, '092022', 2022, NULL),
(185, 'Maidi', 1321000, 1, '2022-10-01', 1664633650, '102022', 2022, NULL),
(186, 'Maidi', 1108000, 1, '2022-10-02', 1664719645, '102022', 2022, ''),
(187, 'Maidi', 899000, 1, '2022-10-03', 1664807659, '102022', 2022, NULL),
(188, 'Maidi', 989000, 1, '2022-10-04', 1664895817, '102022', 2022, NULL),
(189, 'Maidi', 1822000, 1, '2022-10-05', 1664979783, '102022', 2022, NULL),
(190, 'Maidi', 983000, 1, '2022-10-06', 1665065562, '102022', 2022, NULL),
(191, 'Maidi', 1348000, 1, '2022-10-07', 1665154896, '102022', 2022, NULL),
(192, 'Maidi', 733000, 1, '2022-10-08', 1665239125, '102022', 2022, NULL),
(193, 'Rusadi', 950000, 1, '2022-10-09', 1665324598, '102022', 2022, NULL),
(194, 'Maidi', 1354000, 1, '2022-10-10', 1665411806, '102022', 2022, NULL),
(195, 'Maidi', 1062000, 1, '2022-10-11', 1665499011, '102022', 2022, NULL),
(196, 'Maidi', 1200000, 1, '2022-10-12', 1665585437, '102022', 2022, NULL),
(197, 'Maidi', 914000, 1, '2022-10-13', 1665674274, '102022', 2022, NULL),
(198, 'Rusadi', 1423000, 1, '2022-10-14', 1665758950, '102022', 2022, NULL),
(199, 'Rusadi', 1132000, 1, '2022-10-15', 1665843323, '102022', 2022, NULL),
(200, 'Maidi', 1098000, 1, '2022-10-16', 1665929520, '102022', 2022, NULL),
(201, 'Maidi', 1070000, 1, '2022-10-17', 1666016336, '102022', 2022, NULL),
(202, 'Rusadi', 1323000, 1, '2022-10-18', 1666105070, '102022', 2022, NULL),
(203, 'Maidi', 1129000, 1, '2022-10-19', 1666188552, '102022', 2022, NULL),
(204, 'Maidi', 953000, 1, '2022-10-20', 1666276632, '102022', 2022, NULL),
(205, 'Rusadi', 974000, 1, '2022-10-21', 1666361418, '102022', 2022, NULL),
(206, 'Maidi', 962000, 1, '2022-10-22', 1666451771, '102022', 2022, NULL),
(207, 'Maidi', 1334000, 1, '2022-10-23', 1666536305, '102022', 2022, NULL),
(208, 'Maidi', 1178000, 1, '2022-10-24', 1666624409, '102022', 2022, NULL),
(209, 'Maidi', 1057000, 1, '2022-10-25', 1666707528, '102022', 2022, NULL),
(210, 'Maidi', 732000, 1, '2022-10-26', 1666794988, '102022', 2022, NULL),
(211, 'Maidi', 893000, 1, '2022-10-27', 1666881164, '102022', 2022, NULL),
(212, 'Maidi', 974000, 1, '2022-10-28', 1666968286, '102022', 2022, NULL),
(213, 'Maidi', 934000, 1, '2022-10-29', 1667056353, '102022', 2022, NULL),
(214, 'Maidi', 1134000, 1, '2022-10-30', 1667140425, '102022', 2022, NULL),
(215, 'Rusadi', 1071000, 1, '2022-10-31', 1667227265, '102022', 2022, NULL),
(216, 'Rusadi', 1161000, 1, '2022-11-01', 1667316241, '112022', 2022, NULL),
(217, 'Maidi', 1064000, 1, '2022-11-02', 1667400718, '112022', 2022, NULL),
(218, 'Maidi', 1148000, 1, '2022-11-03', 1667486399, '112022', 2022, NULL),
(219, 'Rusadi', 1019000, 1, '2022-11-04', 1667573210, '112022', 2022, NULL),
(223, 'Maidi', 1107000, 1, '2022-11-05', 1667660574, '112022', 2022, NULL),
(224, 'Rusadi', 1143000, 1, '2022-11-06', 1667745101, '112022', 2022, NULL),
(225, 'Maidi', 996000, 1, '2022-11-07', 1667836097, '112022', 2022, NULL),
(228, 'Maidi', 842000, 1, '2022-11-08', 1667917324, '112022', 2022, NULL),
(229, 'Maidi', 879000, 1, '2022-11-09', 1668004406, '112022', 2022, NULL),
(230, 'Maidi', 1070000, 1, '2022-11-10', 1668090758, '112022', 2022, NULL),
(231, 'Maidi', 617000, 1, '2022-11-11', 1668177859, '112022', 2022, NULL),
(232, 'Maidi', 840000, 1, '2022-11-12', 1668265740, '112022', 2022, NULL),
(233, 'Maidi', 904000, 1, '2022-11-13', 1668351151, '112022', 2022, NULL),
(234, 'Maidi', 906000, 1, '2022-11-14', 1668436883, '112022', 2022, NULL),
(235, 'Rusadi', 737000, 1, '2022-11-15', 1668521610, '112022', 2022, NULL),
(236, 'Maidi', 1066000, 1, '2022-11-16', 1668608093, '112022', 2022, NULL),
(237, 'Maidi', 1097000, 1, '2022-11-17', 1668694903, '112022', 2022, NULL),
(238, 'Maidi', 1216000, 1, '2022-11-18', 1668781567, '112022', 2022, NULL),
(239, 'Rusadi', 973000, 1, '2022-11-19', 1668866443, '112022', 2022, NULL),
(240, 'Maidi', 803000, 1, '2022-11-21', 1669039824, '112022', 2022, ''),
(244, 'Otomatis', 0, 1, '2022-11-20', 1669109807, '112022', 2022, 'acara pernikahan tetangga (awai)'),
(248, 'Maidi', 1313000, 1, '2022-11-22', 1669127228, '112022', 2022, ''),
(249, 'Maidi', 836000, 1, '2022-11-23', 1669212040, '112022', 2022, NULL),
(250, 'Maidi', 907000, 1, '2022-11-24', 1669302401, '112022', 2022, NULL),
(251, 'Maidi', 1297000, 1, '2022-11-25', 1669385331, '112022', 2022, NULL),
(252, 'Rusadi', 1224000, 1, '2022-11-26', 1669472880, '112022', 2022, ''),
(253, 'Maidi', 857000, 1, '2022-11-27', 1669559048, '112022', 2022, NULL),
(254, 'Maidi', 916000, 1, '2022-11-28', 1669645772, '112022', 2022, NULL),
(255, 'Rusadi', 1119000, 1, '2022-11-29', 1669732942, '112022', 2022, NULL),
(256, 'Maidi', 1481000, 1, '2022-11-30', 1669819471, '112022', 2022, NULL),
(257, 'Maidi', 966000, 1, '2022-12-01', 1669905742, '122022', 2022, NULL),
(258, 'Maidi', 1118000, 1, '2022-12-02', 1669992158, '122022', 2022, NULL),
(259, 'Maidi', 1087000, 1, '2022-12-03', 1670076929, '122022', 2022, NULL),
(260, 'Maidi', 1165000, 1, '2022-12-04', 1670163189, '122022', 2022, NULL),
(261, 'Maidi', 1165000, 1, '2022-12-05', 1670252087, '122022', 2022, NULL),
(262, 'Maidi', 960000, 1, '2022-12-06', 1670337320, '122022', 2022, NULL),
(263, 'Maidi', 1207000, 1, '2022-12-07', 1670423279, '122022', 2022, NULL),
(264, 'Maidi', 1088000, 1, '2022-12-08', 1670508704, '122022', 2022, NULL),
(265, 'Maidi', 690000, 1, '2022-12-09', 1670595457, '122022', 2022, NULL),
(266, 'Maidi', 835000, 1, '2022-12-10', 1670684814, '122022', 2022, NULL),
(267, 'Maidi', 704000, 1, '2022-12-11', 1670799319, '122022', 2022, NULL),
(269, 'Maidi', 850000, 1, '2022-12-12', 1670855695, '122022', 2022, NULL),
(271, 'Maidi', 1054000, 1, '2022-12-13', 1670944122, '122022', 2022, NULL),
(272, 'Maidi', 959000, 1, '2022-12-14', 1671027575, '122022', 2022, NULL),
(273, 'Maidi', 1095000, 1, '2022-12-15', 1671113446, '122022', 2022, NULL),
(274, 'Maidi', 741000, 1, '2022-12-16', 1671201938, '122022', 2022, NULL),
(275, 'Maidi', 941000, 1, '2022-12-17', 1671288098, '122022', 2022, NULL),
(276, 'Maidi', 1174000, 1, '2022-12-18', 1671372989, '122022', 2022, NULL),
(277, 'Maidi', 910000, 1, '2022-12-19', 1671462195, '122022', 2022, NULL),
(278, 'Maidi', 996000, 1, '2022-12-20', 1671547192, '122022', 2022, NULL),
(279, 'Maidi', 1098000, 1, '2022-12-21', 1671635366, '122022', 2022, NULL),
(280, 'Maidi', 1034000, 1, '2022-12-22', 1671722291, '122022', 2022, NULL),
(281, 'Rusadi', 1358000, 1, '2022-12-23', 1671808505, '122022', 2022, NULL),
(282, 'Rusadi', 952000, 1, '2022-12-24', 1671805754, '122022', 2022, NULL),
(283, 'Rusadi', 1292000, 1, '2022-12-25', 1680012909, '122022', 2022, NULL),
(293, 'Maidi', 915000, 1, '2022-12-26', 1672064735, '122022', 2022, 'oke'),
(294, 'Maidi', 1352000, 1, '2022-12-27', 1672153257, '122022', 2022, ''),
(295, 'Maidi', 1066000, 1, '2022-12-28', 1672237975, '122022', 2022, NULL),
(296, 'Maidi', 1379000, 1, '2022-12-29', 1672323210, '122022', 2022, NULL),
(297, 'Maidi', 1557000, 1, '2022-12-30', 1672498752, '122022', 2022, ''),
(298, 'Maidi', 1352000, 1, '2022-12-31', 1672499562, '122022', 2022, ''),
(299, 'Maidi', 1300000, 1, '2023-01-01', 1672584098, '012023', 2023, NULL),
(300, 'Maidi', 784000, 1, '2023-01-02', 1672667468, '012023', 2023, NULL),
(311, 'Maidi', 974000, 1, '2023-01-03', 1672756251, '012023', 2023, NULL),
(312, 'Maidi', 860000, 1, '2023-01-04', 1672843932, '012023', 2023, NULL),
(313, 'Maidi', 732000, 1, '2023-01-05', 1672929109, '012023', 2023, NULL),
(314, 'Maidi', 868000, 1, '2023-01-06', 1673016026, '012023', 2023, ''),
(315, 'Maidi', 774000, 1, '2023-01-07', 1673102625, '012023', 2023, NULL),
(316, 'Maidi', 883000, 1, '2023-01-08', 1673187348, '012023', 2023, NULL),
(317, 'Maidi', 817000, 1, '2023-01-09', 1673276292, '012023', 2023, NULL),
(318, 'Maidi', 794000, 1, '2023-01-10', 1673360045, '012023', 2023, NULL),
(319, 'Maidi', 1133000, 1, '2023-01-11', 1673449770, '012023', 2023, NULL),
(320, 'Maidi', 1120000, 1, '2023-01-12', 1673534936, '012023', 2023, NULL),
(322, 'Maidi', 636000, 1, '2023-01-13', 1673623483, '012023', 2023, ''),
(323, 'Maidi', 870000, 1, '2023-01-14', 1673708550, '012023', 2023, NULL),
(324, 'Maidi', 792000, 1, '2023-01-15', 1673792842, '012023', 2023, NULL),
(325, 'Maidi', 886000, 1, '2023-01-16', 1673878040, '012023', 2023, NULL),
(326, 'Maidi', 859000, 1, '2023-01-17', 1673966302, '012023', 2023, NULL),
(327, 'Maidi', 1302000, 1, '2023-01-18', 1674053077, '012023', 2023, NULL),
(328, 'Maidi', 880000, 1, '2023-01-19', 1674137634, '012023', 2023, NULL),
(329, 'Maidi', 862000, 1, '2023-01-20', 1674226636, '012023', 2023, NULL),
(330, 'Maidi', 683000, 1, '2023-01-21', 1674310945, '012023', 2023, NULL),
(331, 'Maidi', 928000, 1, '2023-01-22', 1674399510, '012023', 2023, 'awalny laba pendapatan : 878000, tpi ada 50k keselip, jadi totalnya 928000. by.rusadi'),
(333, 'Maidi', 904000, 1, '2023-01-23', 1674483501, '012023', 2023, NULL),
(334, 'Maidi', 834000, 1, '2023-01-24', 1674570719, '012023', 2023, NULL),
(335, 'Maidi', 836000, 1, '2023-01-25', 1674660241, '012023', 2023, NULL),
(336, 'Maidi', 1182000, 1, '2023-01-26', 1674746503, '012023', 2023, NULL),
(337, 'Maidi', 764000, 1, '2023-01-27', 1674831326, '012023', 2023, NULL),
(338, 'Maidi', 1438000, 1, '2023-01-28', 1674915167, '012023', 2023, NULL),
(339, 'Maidi', 1110000, 1, '2023-01-29', 1675004728, '012023', 2023, NULL),
(340, 'Maidi', 791000, 1, '2023-01-30', 1675090630, '012023', 2023, NULL),
(341, 'Maidi', 1033000, 1, '2023-01-31', 1675178118, '012023', 2023, NULL),
(342, 'Maidi', 1175000, 1, '2023-02-01', 1675263079, '022023', 2023, NULL),
(343, 'Maidi', 993000, 1, '2023-02-02', 1675351073, '022023', 2023, NULL),
(344, 'Maidi', 843000, 1, '2023-02-03', 1675434521, '022023', 2023, NULL),
(345, 'Maidi', 1014000, 1, '2023-02-04', 1675520933, '022023', 2023, NULL),
(346, 'Maidi', 653000, 1, '2023-02-05', 1675606385, '022023', 2023, NULL),
(347, 'Maidi', 1081000, 1, '2023-02-06', 1675694826, '022023', 2023, NULL),
(348, 'Maidi', 757000, 1, '2023-02-07', 1675781063, '022023', 2023, NULL),
(349, 'Maidi', 850000, 1, '2023-02-08', 1675867446, '022023', 2023, NULL),
(351, 'Maidi', 1074000, 1, '2023-02-09', 1675956124, '022023', 2023, NULL),
(352, 'Maidi', 1107000, 1, '2023-02-10', 1676039565, '022023', 2023, NULL),
(353, 'Maidi', 1072000, 1, '2023-02-11', 1676128610, '022023', 2023, NULL),
(354, 'Maidi', 1260000, 1, '2023-02-12', 1676212332, '022023', 2023, NULL),
(355, 'Maidi', 872000, 1, '2023-02-13', 1676300516, '022023', 2023, '50rbu kelebihan 8 lembar , nilai_omset awalnya -&gt; 1271000 diganti menjadi -&gt; 872000'),
(356, 'Maidi', 795000, 1, '2023-02-14', 1676389072, '022023', 2023, NULL),
(357, 'Maidi', 1153000, 1, '2023-02-15', 1676473892, '022023', 2023, NULL),
(358, 'Maidi', 1015000, 1, '2023-02-16', 1676561191, '022023', 2023, NULL),
(359, 'Maidi', 623000, 1, '2023-02-17', 1676644818, '022023', 2023, NULL),
(360, 'Maidi', 566000, 1, '2023-02-18', 1676730300, '022023', 2023, NULL),
(361, 'Maidi', 761000, 1, '2023-02-19', 1676816579, '022023', 2023, NULL),
(362, 'Maidi', 650000, 1, '2023-02-20', 1676904106, '022023', 2023, NULL),
(363, 'Maidi', 747000, 1, '2023-02-21', 1676993306, '022023', 2023, NULL),
(364, 'Maidi', 973000, 1, '2023-02-22', 1677074958, '022023', 2023, NULL),
(365, 'Maidi', 932000, 1, '2023-02-23', 1677165650, '022023', 2023, NULL),
(366, 'Maidi', 801000, 1, '2023-02-24', 1677249267, '022023', 2023, NULL),
(367, 'Maidi', 962000, 1, '2023-02-25', 1677339071, '022023', 2023, NULL),
(368, 'Maidi', 849000, 1, '2023-02-26', 1677422421, '022023', 2023, NULL),
(369, 'Maidi', 1220000, 1, '2023-02-27', 1677509091, '022023', 2023, NULL),
(370, 'Maidi', 1077000, 1, '2023-02-28', 1677595840, '022023', 2023, NULL),
(371, 'Maidi', 752000, 1, '2023-03-01', 1677681533, '032023', 2023, NULL),
(372, 'Maidi', 924000, 1, '2023-03-02', 1677766842, '032023', 2023, NULL),
(373, 'Maidi', 987000, 1, '2023-03-03', 1677854791, '032023', 2023, NULL),
(374, 'Maidi', 916000, 1, '2023-03-04', 1677940844, '032023', 2023, NULL),
(375, 'Maidi', 1221000, 1, '2023-03-05', 1678026329, '032023', 2023, NULL),
(376, 'Maidi', 894000, 1, '2023-03-06', 1678115307, '032023', 2023, NULL),
(377, 'Maidi', 1041000, 1, '2023-03-07', 1678200589, '032023', 2023, NULL),
(378, 'Maidi', 488000, 1, '2023-03-08', 1678287720, '032023', 2023, NULL),
(380, 'Admin', 0, 0, '2023-03-09', 1678401197, '032023', 2023, 'Maidi kd buka toko'),
(381, 'Maidi', 745000, 1, '2023-03-10', 1678461145, '032023', 2023, NULL),
(382, 'Maidi', 925000, 1, '2023-03-11', 1678545133, '032023', 2023, NULL),
(383, 'Maidi', 971000, 1, '2023-03-12', 1678632504, '032023', 2023, NULL),
(384, 'Maidi', 743000, 1, '2023-03-13', 1678749159, '032023', 2023, 'Kd mau di input jar'),
(385, 'Maidi', 724000, 1, '2023-03-14', 1678804115, '032023', 2023, NULL),
(386, 'Maidi', 959000, 1, '2023-03-15', 1678891860, '032023', 2023, NULL),
(387, 'Maidi', 567000, 1, '2023-03-16', 1678977709, '032023', 2023, NULL),
(388, 'Maidi', 1021000, 1, '2023-03-17', 1679065630, '032023', 2023, NULL),
(389, 'Maidi', 1144000, 1, '2023-03-18', 1679151425, '032023', 2023, NULL),
(390, 'Maidi', 975000, 1, '2023-03-19', 1679241258, '032023', 2023, NULL),
(391, 'Maidi', 949000, 1, '2023-03-20', 1679322485, '032023', 2023, NULL),
(392, 'Maidi', 1020000, 1, '2023-03-21', 1679410849, '032023', 2023, NULL),
(393, 'Maidi', 939000, 1, '2023-03-22', 1679494689, '032023', 2023, NULL),
(394, 'Maidi', 739000, 1, '2023-03-23', 1679584310, '032023', 2023, NULL),
(395, 'Maidi', 501000, 1, '2023-03-24', 1679671573, '032023', 2023, NULL),
(396, 'Maidi', 676000, 1, '2023-03-25', 1679759191, '032023', 2023, NULL),
(397, 'Maidi', 758000, 1, '2023-03-26', 1679845735, '032023', 2023, NULL),
(398, 'Maidi', 617000, 1, '2023-03-27', 1679929827, '032023', 2023, NULL),
(399, 'Maidi', 704000, 1, '2023-03-28', 1680014554, '032023', 2023, NULL),
(400, 'Maidi', 656000, 1, '2023-03-29', 1680105261, '032023', 2023, NULL),
(401, 'Maidi', 671000, 1, '2023-03-30', 1680188126, '032023', 2023, NULL),
(402, 'Maidi', 735000, 1, '2023-03-31', 1680277468, '032023', 2023, NULL),
(403, 'Maidi', 565000, 1, '2023-04-01', 1680363623, '042023', 2023, NULL),
(404, 'Maidi', 746000, 1, '2023-04-02', 1680449891, '042023', 2023, NULL),
(405, 'Maidi', 609000, 1, '2023-04-03', 1680535885, '042023', 2023, NULL),
(406, 'Maidi', 479000, 1, '2023-04-04', 1680621145, '042023', 2023, NULL),
(407, 'Maidi', 881000, 1, '2023-04-05', 1680710201, '042023', 2023, NULL),
(408, 'Maidi', 987000, 1, '2023-04-06', 1680795951, '042023', 2023, NULL),
(409, 'Maidi', 818000, 1, '2023-04-07', 1680883117, '042023', 2023, NULL),
(410, 'Maidi', 599000, 1, '2023-04-08', 1681043640, '042023', 2023, 'Maidi lupa stor uang kasir'),
(411, 'Maidi', 1056000, 1, '2023-04-09', 1681054928, '042023', 2023, NULL),
(412, 'Maidi', 667000, 1, '2023-04-10', 1681140564, '042023', 2023, NULL),
(413, 'Maidi', 458000, 1, '2023-04-11', 1681226824, '042023', 2023, NULL),
(414, 'Maidi', 1172000, 1, '2023-04-12', 1681315130, '042023', 2023, NULL),
(415, 'Maidi', 601000, 1, '2023-04-13', 1681396679, '042023', 2023, NULL),
(416, 'Maidi', 491000, 1, '2023-04-14', 1681485162, '042023', 2023, NULL),
(417, 'Maidi', 868000, 1, '2023-04-15', 1681573302, '042023', 2023, NULL),
(418, 'Maidi', 610000, 1, '2023-04-16', 1681658354, '042023', 2023, NULL),
(419, 'Maidi', 504000, 1, '2023-04-17', 1681747051, '042023', 2023, NULL),
(420, 'Maidi', 804000, 1, '2023-04-18', 1681833550, '042023', 2023, NULL),
(421, 'Maidi', 887000, 1, '2023-04-19', 1681954231, '042023', 2023, 'maidi hanyar ma stor'),
(422, 'Maidi', 1093000, 1, '2023-04-20', 1682005070, '042023', 2023, NULL),
(423, 'Maidi', 1542000, 1, '2023-04-21', 1682090955, '042023', 2023, NULL),
(424, 'Maidi', 924000, 1, '2023-04-22', 1682174833, '042023', 2023, NULL),
(425, 'Maidi', 1849000, 1, '2023-04-23', 1682262339, '042023', 2023, NULL),
(426, 'Maidi', 1203000, 1, '2023-04-24', 1682347572, '042023', 2023, NULL),
(427, 'Maidi', 906000, 1, '2023-04-25', 1682432561, '042023', 2023, NULL),
(428, 'Maidi', 716000, 1, '2023-04-26', 1682520731, '042023', 2023, NULL),
(429, 'Maidi', 903000, 1, '2023-04-27', 1682609119, '042023', 2023, NULL),
(430, 'Maidi', 881000, 1, '2023-04-28', 1682692930, '042023', 2023, NULL),
(431, 'Maidi', 1132000, 1, '2023-04-29', 1682780913, '042023', 2023, NULL),
(432, 'Maidi', 801000, 1, '2023-04-30', 1682865222, '042023', 2023, NULL),
(433, 'Maidi', 1168000, 1, '2023-05-01', 1682955687, '052023', 2023, NULL),
(434, 'Maidi', 1003000, 1, '2023-05-02', 1683035999, '052023', 2023, NULL),
(435, 'Maidi', 812000, 1, '2023-05-03', 1683124177, '052023', 2023, NULL),
(436, 'Maidi', 808000, 1, '2023-05-04', 1683212140, '052023', 2023, NULL),
(437, 'Maidi', 726000, 1, '2023-05-05', 1683300901, '052023', 2023, NULL),
(438, 'Maidi', 804000, 1, '2023-05-06', 1683386279, '052023', 2023, NULL),
(439, 'Maidi', 761000, 1, '2023-05-07', 1683468891, '052023', 2023, NULL),
(440, 'Maidi', 658000, 1, '2023-05-08', 1683560700, '052023', 2023, NULL),
(441, 'Maidi', 819000, 1, '2023-05-09', 1683642367, '052023', 2023, NULL),
(442, 'Maidi', 739000, 1, '2023-05-10', 1683729765, '052023', 2023, NULL),
(443, 'Maidi', 1108000, 1, '2023-05-11', 1683819499, '052023', 2023, NULL),
(444, 'Maidi', 872000, 1, '2023-05-12', 1683902385, '052023', 2023, NULL),
(445, 'Maidi', 943000, 1, '2023-05-13', 1683988701, '052023', 2023, NULL),
(446, 'Maidi', 1012000, 1, '2023-05-14', 1684075294, '052023', 2023, NULL),
(447, 'Maidi', 829000, 1, '2023-05-15', 1684164378, '052023', 2023, NULL),
(448, 'Maidi', 804000, 1, '2023-05-16', 1684246777, '052023', 2023, NULL),
(449, 'Maidi', 871000, 1, '2023-05-17', 1684338753, '052023', 2023, NULL),
(450, 'Maidi', 850000, 1, '2023-05-18', 1684423935, '052023', 2023, NULL),
(451, 'Maidi', 590000, 1, '2023-05-19', 1684507610, '052023', 2023, NULL),
(452, 'Maidi', 920000, 1, '2023-05-20', 1684596482, '052023', 2023, NULL),
(453, 'Maidi', 954000, 1, '2023-05-21', 1684682545, '052023', 2023, NULL),
(454, 'Maidi', 677000, 1, '2023-05-22', 1684766750, '052023', 2023, NULL),
(455, 'Maidi', 580000, 1, '2023-05-23', 1684850748, '052023', 2023, NULL),
(456, 'Maidi', 786000, 1, '2023-05-24', 1684937406, '052023', 2023, NULL),
(457, 'Maidi', 509000, 1, '2023-05-25', 1685027595, '052023', 2023, NULL),
(458, 'Maidi', 894000, 1, '2023-05-26', 1685111280, '052023', 2023, NULL),
(459, 'Maidi', 655000, 1, '2023-05-27', 1685199950, '052023', 2023, NULL),
(460, 'Maidi', 0, 0, '2023-05-28', 1685314460, '052023', 2023, 'acara akikah anak nadia'),
(461, 'Maidi', 848000, 1, '2023-05-29', 1685368901, '052023', 2023, NULL),
(462, 'Maidi', 519000, 1, '2023-05-30', 1685458525, '052023', 2023, NULL),
(463, 'Maidi', 644000, 1, '2023-05-31', 1685545943, '052023', 2023, NULL),
(464, 'Maidi', 597000, 1, '2023-06-01', 1685634191, '062023', 2023, NULL),
(465, 'Maidi', 617000, 1, '2023-06-02', 1685715307, '062023', 2023, NULL),
(466, 'Maidi', 467000, 1, '2023-06-03', 1685802514, '062023', 2023, NULL),
(467, 'Maidi', 450000, 1, '2023-06-04', 1685888801, '062023', 2023, NULL),
(468, 'Maidi', 775000, 1, '2023-06-05', 1685979559, '062023', 2023, NULL),
(469, 'Maidi', 775000, 1, '2023-06-06', 1686062553, '062023', 2023, NULL),
(470, 'Maidi', 868000, 1, '2023-06-07', 1686151827, '062023', 2023, NULL),
(471, 'Maidi', 457000, 1, '2023-06-08', 1686232977, '062023', 2023, NULL),
(472, 'Maidi', 504000, 1, '2023-06-09', 1686322746, '062023', 2023, NULL),
(473, 'Maidi', 583000, 1, '2023-06-10', 1686411161, '062023', 2023, NULL),
(474, 'Maidi', 756000, 1, '2023-06-11', 1686497846, '062023', 2023, NULL),
(475, 'Maidi', 657000, 1, '2023-06-12', 1686613496, '062023', 2023, ''),
(476, 'Maidi', 935000, 1, '2023-06-13', 1686665132, '062023', 2023, NULL),
(477, 'Maidi', 910000, 1, '2023-06-14', 1686752147, '062023', 2023, NULL),
(478, 'Maidi', 695000, 1, '2023-06-15', 1686838784, '062023', 2023, NULL),
(479, 'Maidi', 1226000, 1, '2023-06-17', 1687011721, '062023', 2023, NULL),
(480, 'Maidi', 605000, 1, '2023-06-18', 1687103560, '062023', 2023, NULL),
(481, 'Maidi', 607000, 1, '2023-06-19', 1687187822, '062023', 2023, NULL),
(482, 'Maidi', 707000, 1, '2023-06-20', 1687272737, '062023', 2023, NULL),
(483, 'Maidi', 632000, 1, '2023-06-21', 1687358324, '062023', 2023, NULL),
(484, 'Maidi', 883000, 1, '2023-06-22', 1687447468, '062023', 2023, NULL),
(485, 'Maidi', 984000, 1, '2023-06-23', 1687534690, '062023', 2023, NULL),
(486, 'Maidi', 1240000, 1, '2023-06-24', 1687620580, '062023', 2023, NULL),
(487, 'Maidi', 1113000, 1, '2023-06-25', 1687706314, '062023', 2023, NULL),
(488, 'Maidi', 1071000, 1, '2023-06-26', 1687791178, '062023', 2023, NULL),
(489, 'Maidi', 829000, 1, '2023-06-27', 1687877922, '062023', 2023, NULL),
(490, 'Maidi', 1396000, 1, '2023-06-28', 1687965657, '062023', 2023, NULL),
(491, 'Maidi', 0, 0, '2023-06-29', 1688074467, '062023', 2023, 'hari raya idul adha'),
(492, 'Maidi', 729000, 1, '2023-07-01', 1688224997, '072023', 2023, NULL),
(493, 'Maidi', 996000, 1, '2023-07-02', 1688312319, '072023', 2023, NULL),
(494, 'Maidi', 1043000, 1, '2023-07-04', 1688482307, '072023', 2023, NULL),
(495, 'Maidi', 794000, 1, '2023-07-06', 1688656926, '072023', 2023, NULL),
(496, 'Maidi', 0, 0, '2023-06-30', 1488739358, '062023', 2023, 'kasirnya lagi kulir bagawi'),
(498, 'Admin', 0, 0, '2023-07-03', 1488739941, '072023', 2023, 'kasirnya cacat, tidak di stor nya'),
(499, 'Admin', 0, 0, '2023-07-05', 1488739953, '072023', 2023, 'kasirnya cacat, tidak setornya'),
(500, 'Maidi', 826000, 1, '2023-07-07', 1688740629, '072023', 2023, NULL),
(501, 'Maidi', 580000, 1, '2023-07-08', 1688826582, '072023', 2023, NULL),
(502, 'Maidi', 726000, 1, '2023-07-09', 1688915241, '072023', 2023, NULL),
(503, 'Maidi', 817000, 1, '2023-07-10', 1688998575, '072023', 2023, NULL),
(504, 'Maidi', 797000, 1, '2023-07-11', 1689085229, '072023', 2023, NULL),
(505, 'Maidi', 670000, 1, '2023-07-12', 1689173420, '072023', 2023, NULL),
(506, 'Maidi', 772000, 1, '2023-07-13', 1689263066, '072023', 2023, NULL),
(507, 'Maidi', 588000, 1, '2023-07-14', 1689349280, '072023', 2023, NULL),
(508, 'Maidi', 554000, 1, '2023-07-15', 1689435709, '072023', 2023, NULL),
(509, 'Maidi', 577000, 1, '2023-07-17', 1689607815, '072023', 2023, NULL),
(510, 'Maidi', 847000, 1, '2023-07-18', 1689694687, '072023', 2023, NULL),
(511, 'Maidi', 521000, 1, '2023-07-19', 1689777512, '072023', 2023, NULL),
(512, 'Maidi', 656000, 1, '2023-07-20', 1689868160, '072023', 2023, NULL),
(513, 'Maidi', 766000, 1, '2023-07-21', 1689954943, '072023', 2023, NULL),
(514, 'Maidi', 699000, 1, '2023-07-22', 1690037564, '072023', 2023, NULL),
(515, 'Maidi', 767000, 1, '2023-07-23', 1690126466, '072023', 2023, NULL),
(516, 'Maidi', 839000, 1, '2023-07-24', 1690212880, '072023', 2023, NULL),
(517, 'Maidi', 1143000, 1, '2023-07-25', 1690299946, '072023', 2023, NULL),
(518, 'Maidi', 836000, 1, '2023-07-26', 1690385504, '072023', 2023, NULL),
(519, 'Maidi', 729000, 1, '2023-07-28', 1690554571, '072023', 2023, NULL),
(520, 'Maidi', 509000, 1, '2023-07-31', 1690814023, '072023', 2023, NULL),
(521, 'Maidi', 601000, 1, '2023-08-01', 1690905107, '082023', 2023, NULL),
(522, 'Maidi', 787000, 1, '2023-08-03', 1691077232, '082023', 2023, NULL),
(523, 'Maidi', 1031000, 1, '2023-08-04', 1691164593, '082023', 2023, NULL),
(524, 'Maidi', 502000, 1, '2023-08-05', 1691248693, '082023', 2023, NULL),
(525, 'Maidi', 934000, 1, '2023-08-08', 1691507821, '082023', 2023, NULL),
(526, 'Maidi', 615000, 1, '2023-08-09', 1691591963, '082023', 2023, NULL),
(527, 'Maidi', 722000, 1, '2023-08-10', 1691678685, '082023', 2023, NULL),
(528, 'Maidi', 551000, 1, '2023-08-11', 1691765636, '082023', 2023, NULL),
(529, 'Maidi', 645000, 1, '2023-08-12', 1691850972, '082023', 2023, NULL),
(530, 'Maidi', 804000, 1, '2023-08-14', 1692025933, '082023', 2023, NULL),
(531, 'Maidi', 1250000, 1, '2023-08-15', 1692109164, '082023', 2023, NULL),
(532, 'Maidi', 748000, 1, '2023-08-16', 1692197760, '082023', 2023, NULL),
(533, 'Maidi', 656000, 1, '2023-08-17', 1692284277, '082023', 2023, NULL),
(534, 'Maidi', 1047000, 1, '2023-08-20', 1692542977, '082023', 2023, NULL),
(535, 'Admin', 330000, 1, '2023-08-21', 1692665559, '082023', 2023, 'server error'),
(536, 'Maidi', 690000, 1, '2023-08-22', 1692716733, '082023', 2023, NULL),
(537, 'Maidi', 1070000, 1, '2023-08-23', 1692802680, '082023', 2023, NULL),
(538, 'Maidi', 718000, 1, '2023-08-25', 1692974941, '082023', 2023, NULL),
(539, 'Maidi', 740000, 1, '2023-08-28', 1693235403, '082023', 2023, NULL),
(540, 'Maidi', 1166000, 1, '2023-08-31', 1693492227, '082023', 2023, NULL),
(541, 'Maidi', 657000, 1, '2023-09-01', 1693579606, '092023', 2023, NULL),
(542, 'Maidi', 618000, 1, '2023-09-02', 1693665620, '092023', 2023, NULL),
(543, 'Maidi', 741000, 1, '2023-09-03', 1693753908, '092023', 2023, NULL),
(544, 'Maidi', 670000, 1, '2023-09-04', 1693841546, '092023', 2023, NULL),
(545, 'Maidi', 434000, 1, '2023-09-05', 1693924104, '092023', 2023, NULL),
(546, 'Maidi', 673000, 1, '2023-09-07', 1694101472, '092023', 2023, NULL),
(547, 'Maidi', 835000, 1, '2023-09-10', 1694356521, '092023', 2023, NULL),
(548, 'Maidi', 506000, 1, '2023-09-11', 1694443582, '092023', 2023, NULL),
(549, 'Maidi', 954000, 1, '2023-09-13', 1694616308, '092023', 2023, NULL),
(550, 'Maidi', 515000, 1, '2023-09-14', 1694705978, '092023', 2023, NULL),
(551, 'Maidi', 709000, 1, '2023-09-15', 1694792498, '092023', 2023, NULL),
(552, 'Maidi', 451000, 1, '2023-09-21', 1695307432, '092023', 2023, NULL),
(553, 'Maidi', 842000, 1, '2023-09-23', 1695482593, '092023', 2023, NULL),
(554, 'Maidi', 899000, 1, '2023-09-26', 1695739504, '092023', 2023, NULL),
(555, 'Maidi', 541000, 1, '2023-09-27', 1695825884, '092023', 2023, NULL),
(556, 'Maidi', 786000, 1, '2023-09-28', 1695911356, '092023', 2023, NULL),
(557, 'Maidi', 980000, 1, '2023-09-30', 1696085662, '092023', 2023, NULL),
(558, 'Maidi', 500000, 1, '2023-10-01', 1696173866, '102023', 2023, ''),
(559, 'Maidi', 1102000, 1, '2023-10-04', 1696433552, '102023', 2023, NULL),
(560, 'Maidi', 1107000, 1, '2023-10-07', 1696692865, '102023', 2023, NULL),
(561, 'Maidi', 1263000, 1, '2023-10-10', 1696953037, '102023', 2023, NULL),
(562, 'Maidi', 529000, 1, '2023-10-11', 1697035574, '102023', 2023, NULL),
(563, 'Maidi', 1669000, 1, '2023-10-15', 1697380849, '102023', 2023, NULL),
(564, 'Maidi', 853000, 1, '2023-10-17', 1697555087, '102023', 2023, NULL),
(565, 'Maidi', 719000, 1, '2023-10-19', 1697730274, '102023', 2023, NULL),
(566, 'Maidi', 754000, 1, '2023-10-21', 1697902114, '102023', 2023, NULL),
(567, 'Maidi', 765000, 1, '2023-10-23', 1698070602, '102023', 2023, NULL),
(568, 'Maidi', 1089000, 1, '2023-10-26', 1698333984, '102023', 2023, NULL),
(569, 'Admin', 1413000, 1, '2023-10-29', 1698752455, '102023', 2023, ''),
(571, 'Admin', 542000, 1, '2023-10-31', 1698752717, '102023', 2023, NULL),
(572, 'Maidi', 731000, 1, '2023-11-01', 1698850009, '112023', 2023, NULL),
(573, 'Maidi', 743000, 1, '2023-11-04', 1699113041, '112023', 2023, NULL),
(574, 'Maidi', 554000, 1, '2023-11-06', 1699281276, '112023', 2023, NULL),
(575, 'Maidi', 433000, 1, '2023-11-09', 1699539235, '112023', 2023, NULL),
(576, 'Maidi', 824000, 1, '2023-11-11', 1699717098, '112023', 2023, NULL),
(577, 'Maidi', 573000, 1, '2023-11-12', 1699800258, '112023', 2023, NULL),
(578, 'Maidi', 1026000, 1, '2023-11-14', 1699973287, '112023', 2023, NULL),
(579, 'Maidi', 801000, 1, '2023-11-17', 1700231539, '112023', 2023, NULL),
(580, 'Maidi', 761000, 1, '2023-11-20', 1700490655, '112023', 2023, NULL),
(581, 'Maidi', 656000, 1, '2023-11-22', 1700664626, '112023', 2023, NULL),
(582, 'Maidi', 1301000, 1, '2023-11-26', 1701010866, '112023', 2023, NULL),
(583, 'Maidi', 806000, 1, '2023-11-29', 1701268266, '112023', 2023, NULL),
(584, 'Maidi', 1163000, 1, '2023-12-06', 1701877190, '122023', 2023, NULL),
(585, 'Maidi', 1032000, 1, '2023-12-12', 1702394975, '122023', 2023, NULL),
(586, 'Maidi', 1651000, 1, '2023-12-18', 1702908496, '122023', 2023, NULL),
(587, 'Maidi', 1225000, 1, '2023-12-23', 1703344056, '122023', 2023, NULL),
(588, 'Maidi', 1296000, 1, '2023-12-29', 1703859581, '122023', 2023, NULL),
(589, 'Maidi', 1232000, 1, '2024-01-04', 1704382820, '012024', 2024, NULL),
(590, 'Maidi', 1343000, 1, '2024-01-09', 1704812895, '012024', 2024, NULL),
(591, 'Maidi', 1519000, 1, '2024-01-23', 1706022049, '012024', 2024, NULL),
(592, 'Maidi', 1394000, 1, '2024-02-10', 1707578815, '022024', 2024, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(255) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `total_harga` int(255) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_barang`, `qty`, `total_harga`, `tgl`) VALUES
(14, '123', 2, 3000, '2014-10-20'),
(15, '456', 2, 10000, '2014-10-20'),
(16, '123', 2, 3000, '2014-10-19'),
(17, '1', 1, 3000, '2022-05-01'),
(18, '2', 10, 60000, '2022-06-17'),
(19, '4', 1, 20000, '2022-06-17'),
(20, '2', 1, 6000, '2022-06-17'),
(21, '2', 5, 30000, '2022-06-25'),
(22, '4', 1, 20000, '2022-06-25'),
(23, '1', 3, 9000, '2022-06-28'),
(24, '8994214984947', 2, 40690, '2022-12-24'),
(25, '8998898830125', 2, 11000, '2022-12-24'),
(26, '8886008101053', 3, 8250, '2022-12-24'),
(27, '8996001600399', 19, 1881, '2022-12-24'),
(28, '8886008101053', 4, 11000, '2022-12-24'),
(29, '8998898830125', 1, 5500, '2022-12-24'),
(30, '8999909001947', 3, 94539, '2022-12-24'),
(31, '8886022830243', 1, 563563, '2022-12-24'),
(32, '8996129800640', 2, 890930, '2022-12-24'),
(33, '8886008101091', 2, 91308, '2022-12-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `penyetor` varchar(50) NOT NULL,
  `tgl_jual` date NOT NULL,
  `tgl_setor` date NOT NULL,
  `total_jual` int(100) NOT NULL,
  `total_setor` int(100) NOT NULL,
  `selisih` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `setor`
--

INSERT INTO `setor` (`id`, `penyetor`, `tgl_jual`, `tgl_setor`, `total_jual`, `total_setor`, `selisih`) VALUES
(2, 'admin', '2014-10-20', '2014-10-23', 13000, 10000, -3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE `tagihan` (
  `id` int(255) NOT NULL,
  `dari_tagihan` varchar(255) NOT NULL,
  `total_tagihan` int(255) NOT NULL,
  `tanggal_tagihan` date NOT NULL,
  `bulan` int(255) NOT NULL,
  `tahun` int(225) NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id`, `dari_tagihan`, `total_tagihan`, `tanggal_tagihan`, `bulan`, `tahun`, `time`) VALUES
(39, 'Rokok pin dan x bold', 232000, '2023-03-01', 32023, 2023, 1677855158),
(40, 'Roko surya', 511000, '2023-03-03', 32023, 2023, 1677855200),
(41, 'Amsil', 1171000, '2023-03-04', 32023, 2023, 1677917587),
(42, 'Rokok irah dan kopi adul', 836000, '2023-03-05', 32023, 2023, 1677994345),
(43, 'Plastik', 10000, '2023-03-05', 32023, 2023, 1677994403),
(44, 'Rokok clasmild', 398000, '2023-03-07', 32023, 2023, 1678166822),
(45, 'Mie sedap', 160982, '2023-03-07', 32023, 2023, 1678166892),
(46, 'Yakult', 28050, '2023-03-04', 32023, 2023, 1678166914),
(47, 'Rokok pin', 125000, '2023-03-07', 32023, 2023, 1678169917),
(48, 'Unilever', 223493, '2023-03-07', 32023, 2023, 1678200200),
(50, 'Rokok on', 180000, '2023-03-08', 32023, 2023, 1678284800),
(51, 'Rokok red bol', 351000, '2023-03-10', 32023, 2023, 1678450324),
(52, 'Wismilak', 133470, '2023-03-10', 32023, 2023, 1678450384),
(53, 'Rokok L.A', 224900, '2023-03-10', 32023, 2023, 1678450414),
(54, 'Geryy garuda', 134867, '2023-03-10', 32023, 2023, 1678450513),
(55, 'Cleo', 109200, '2023-03-10', 32023, 2023, 1678450532),
(56, 'Le mineral', 481500, '2023-03-14', 32023, 2023, 1678755242),
(57, 'Miee sedap', 413007, '2023-03-15', 32023, 2023, 1678846437),
(58, 'Es krim', 419016, '2023-03-14', 32023, 2023, 1678846479),
(59, 'Unilever', 377918, '2023-03-14', 32023, 2023, 1678846516),
(60, 'Indomarco', 265900, '2023-03-15', 32023, 2023, 1678846545),
(61, 'Kisprai', 310941, '2023-03-15', 32023, 2023, 1678846565),
(62, 'Tissu paseo', 239760, '2023-03-16', 32023, 2023, 1678977865),
(63, 'Kopi abc', 204328, '2023-03-16', 32023, 2023, 1678977895),
(64, 'Rokok samporna', 801750, '2023-03-16', 32023, 2023, 1678977965),
(65, 'Gerry', 171429, '2023-03-17', 32023, 2023, 1679104985),
(66, 'Yakult', 37400, '2023-03-18', 32023, 2023, 1679105006),
(67, 'Sprite', 119000, '2023-03-18', 32023, 2023, 1679105792),
(68, 'Nabati', 282924, '2023-03-18', 32023, 2023, 1679119441),
(69, 'Toko adul', 228000, '2023-03-19', 32023, 2023, 1679290972),
(70, 'Toko dalam pasar', 345000, '2023-03-19', 32023, 2023, 1679291001),
(71, 'Nestle/dancow', 392978, '2023-03-20', 32023, 2023, 1679291071),
(72, 'L.A', 94000, '2023-03-22', 32023, 2023, 1679581607),
(73, 'Surya', 533500, '2023-03-23', 32023, 2023, 1679581641),
(74, 'Esse change', 395400, '2023-03-23', 32023, 2023, 1679581677),
(75, 'Clas mild', 398000, '2023-03-20', 32023, 2023, 1679581741),
(76, 'Mie sedap', 335111, '2023-03-21', 32023, 2023, 1679581906),
(77, 'Nabati', 140643, '2023-03-20', 32023, 2023, 1679582260),
(78, 'Jesscool nano nano', 93296, '2023-03-23', 32023, 2023, 1679582540),
(79, 'Garam', 158000, '2023-03-22', 32023, 2023, 1679582689),
(80, 'Antangin', 75519, '2023-03-24', 32023, 2023, 1680248199),
(81, 'Le mineral ', 807500, '2023-03-26', 32023, 2023, 1680248247),
(83, 'Es krim ', 193806, '2023-03-27', 32023, 2023, 1680248360),
(85, 'Unilever', 209353, '2023-03-27', 32023, 2023, 1680248439),
(86, 'Mie sedaap', 232366, '2023-03-28', 32023, 2023, 1680248474),
(87, 'Aqua', 250000, '2023-03-28', 32023, 2023, 1680248492),
(88, 'Indomarco', 382690, '2023-03-29', 32023, 2023, 1680248527),
(89, 'Cosson baby,sendal jepit,lampu', 415000, '2023-03-31', 32023, 2023, 1680248636),
(90, 'Samporna', 673400, '2023-03-30', 32023, 2023, 1680248668),
(91, 'Kerupuk makroni', 102000, '2023-03-31', 32023, 2023, 1680248719),
(92, 'Kerupuk 2 pak', 15750, '2023-03-31', 32023, 2023, 1680248754),
(93, 'L.A', 219000, '2023-03-31', 32023, 2023, 1680248808),
(94, 'Kecap dan sarden abc', 358150, '2023-03-31', 32023, 2023, 1680248834),
(96, 'Dancow/nestle', 464959, '2023-04-01', 42023, 2023, 1681139236),
(97, 'Yakult', 28050, '2023-04-10', 42023, 2023, 1681139355),
(98, 'Clas mild', 398000, '2023-04-02', 42023, 2023, 1681139458),
(99, 'Pin', 125000, '2023-04-02', 42023, 2023, 1681139493),
(100, 'Cleo', 84000, '2023-04-03', 42023, 2023, 1681139556),
(101, 'Miee sedaap', 229740, '2023-04-04', 42023, 2023, 1681139611),
(102, 'Samporna', 202000, '2023-04-05', 42023, 2023, 1681139675),
(103, 'Antangin', 47925, '2023-04-06', 42023, 2023, 1681139762),
(104, 'Le mineral', 320000, '2023-04-08', 42023, 2023, 1681139808),
(105, 'Sprite', 119000, '2023-04-08', 42023, 2023, 1681139866),
(106, 'Es krim', 358505, '2023-04-08', 42023, 2023, 1681139955),
(107, 'Kerupuk bawang', 85000, '2023-04-08', 42023, 2023, 1681140068),
(108, 'Sensodyne', 363969, '2023-04-11', 42023, 2023, 1681961481),
(109, 'Mie sedaap', 178316, '2023-04-11', 42023, 2023, 1681961540),
(110, 'Red bol', 65000, '2023-04-11', 42023, 2023, 1681961575),
(111, 'Indomarco', 258900, '2023-04-12', 42023, 2023, 1681961664),
(112, 'L.A', 58000, '2023-04-12', 42023, 2023, 1681961734),
(113, 'Sprite', 105000, '2023-04-14', 42023, 2023, 1681961771),
(114, 'Chitato', 444000, '2023-04-14', 42023, 2023, 1681961808),
(115, 'Dancow', 273174, '2023-04-15', 42023, 2023, 1681961838),
(116, 'Clasmild', 418000, '2023-04-15', 42023, 2023, 1681961880),
(117, 'Mie sedap', 131013, '2023-04-17', 42023, 2023, 1681961957),
(118, 'Unilever', 496995, '2023-04-19', 42023, 2023, 1681962018),
(119, 'Amplang', 135000, '2023-04-19', 42023, 2023, 1681962110),
(120, 'Yakult', 28050, '2023-04-20', 42023, 2023, 1681962139),
(121, 'Toko irah/ rahmat', 1380000, '2023-04-23', 42023, 2023, 1682587584),
(122, 'Cleo', 220000, '2023-04-25', 42023, 2023, 1682587856),
(123, 'Indomarco', 601587, '2023-04-26', 42023, 2023, 1682587898),
(124, 'Cleo', 100000, '2023-04-27', 42023, 2023, 1682587997),
(125, 'Lasegar/nui greentea', 252501, '2023-04-27', 42023, 2023, 1682588030),
(126, 'Kerupuk acil', 141000, '2023-04-29', 42023, 2023, 1682781681),
(127, 'Toko adul', 621000, '2023-04-29', 42023, 2023, 1682781714),
(128, 'Aqua toko mirza', 472000, '2023-04-29', 42023, 2023, 1682781742),
(129, 'Gilet dan lem cina', 150000, '2023-04-29', 42023, 2023, 1682781821),
(130, 'Gerry', 246221, '2023-04-28', 42023, 2023, 1682781889),
(131, 'Wismilak', 136170, '2023-04-28', 42023, 2023, 1682781913),
(132, 'Clasmild', 418000, '2023-04-29', 42023, 2023, 1682781938),
(133, 'Sprite', 53000, '2023-04-28', 42023, 2023, 1682781960),
(134, 'Dancow/nestle', 185405, '2023-04-29', 52023, 2023, 1683301307),
(135, 'Miee sedaap wings', 222676, '2023-04-30', 52023, 2023, 1683301388),
(138, 'Toko adul', 761000, '2023-04-28', 52023, 2023, 1683301571),
(139, 'Rokok batik', 420000, '2023-04-28', 52023, 2023, 1683301603),
(144, 'Toko irah', 999000, '2023-04-28', 52023, 2023, 1683301990),
(145, 'Esse change', 294400, '2023-05-03', 52023, 2023, 1683302026),
(146, 'Kerupuk makroni bawang pedas', 116000, '2023-05-04', 52023, 2023, 1683302072),
(148, 'Red bol', 351000, '2023-05-04', 52023, 2023, 1683302268),
(149, 'Indomie ', 1076375, '2023-05-04', 52023, 2023, 1683302329),
(150, 'Gerry', 263267, '2023-05-04', 52023, 2023, 1683302384),
(151, 'Wismilak/deflomat', 331470, '2023-05-05', 52023, 2023, 1683302426),
(152, 'Sprite', 185000, '2023-05-05', 52023, 2023, 1683302456),
(153, 'Mie sedap', 284393, '2023-05-23', 52023, 2023, 1685320331),
(154, 'Mie sedap', 310425, '2023-05-09', 52023, 2023, 1685320350),
(155, 'Mie sedap', 192580, '2023-05-16', 52023, 2023, 1685320370),
(156, 'Indo marco', 377003, '2023-05-24', 52023, 2023, 1685320397),
(157, 'Indomarco', 538350, '2023-05-10', 52023, 2023, 1685320522),
(158, 'Gerry', 185290, '2023-05-22', 52023, 2023, 1685320608),
(159, 'Unilever', 268804, '2023-05-16', 52023, 2023, 1685320660),
(161, 'Eskirm walss', 916584, '2023-05-05', 52023, 2023, 1685320723),
(162, 'Unilever', 279707, '2023-05-02', 52023, 2023, 1685320774),
(163, 'Amsil', 2171000, '2023-05-01', 52023, 2023, 1685320821),
(164, 'Nabati', 221204, '2023-05-08', 52023, 2023, 1685320863),
(165, 'Le mineral', 1077500, '2023-05-06', 52023, 2023, 1685320893),
(166, 'Adem aari', 329079, '2023-05-09', 52023, 2023, 1685320918),
(167, 'Madu tj', 47552, '2023-05-17', 52023, 2023, 1685320956),
(168, 'Cleo', 136000, '2023-05-08', 52023, 2023, 1685321062),
(169, 'Cleo', 100000, '2023-05-10', 52023, 2023, 1685321119),
(170, 'Cleo', 110000, '2023-05-17', 52023, 2023, 1685321144),
(171, 'Clasmild', 627000, '2023-05-23', 52023, 2023, 1685321169),
(172, 'Clasmild', 610500, '2023-05-10', 52023, 2023, 1685321202),
(173, 'Coklat tieka', 65000, '2023-05-23', 52023, 2023, 1685321257),
(174, 'Kerupuk', 115500, '2023-05-26', 52023, 2023, 1685321290),
(175, 'Win clik', 137400, '2023-05-29', 52023, 2023, 1685321470),
(176, 'Samporna', 603000, '2023-05-18', 52023, 2023, 1685321489),
(177, 'Wismilak kretek', 272000, '2023-05-20', 52023, 2023, 1685321509),
(178, 'Kacang sambal', 97600, '2023-05-26', 52023, 2023, 1685321535),
(180, 'Red bol', 298000, '2023-05-24', 52023, 2023, 1685321598),
(181, 'Surya', 536000, '2023-05-12', 52023, 2023, 1685321619),
(182, 'Yakult', 28050, '2023-05-06', 52023, 2023, 1685321653),
(183, 'Yakult', 2850, '2023-05-20', 52023, 2023, 1685321683),
(184, 'Kerupuk makroni', 114000, '2023-05-29', 52023, 2023, 1685321715),
(185, 'L.A', 1040700, '2023-05-24', 52023, 2023, 1685321738),
(186, 'Yakult', 46750, '2023-05-27', 52023, 2023, 1685321772),
(187, 'Sprite', 171000, '2023-06-03', 62023, 2023, 1687849037),
(188, 'Sprite', 105000, '2023-06-17', 62023, 2023, 1687849070),
(189, 'Mie sedap', 279547, '2023-06-13', 62023, 2023, 1687849100),
(190, 'Mie sedap', 202704, '2023-06-26', 62023, 2023, 1687849125),
(191, 'Mie sedap', 199826, '2023-06-20', 62023, 2023, 1687849160),
(192, 'Mie sedap', 227299, '2023-06-06', 62023, 2023, 1687849237),
(193, 'Mie sedap', 257000, '2023-05-30', 62023, 2023, 1687849285),
(194, 'Le mineral', 93000, '2023-05-29', 62023, 2023, 1687849340),
(195, 'Le mineral', 628000, '2023-06-04', 62023, 2023, 1687849395),
(196, 'Le mineral', 262000, '2023-06-18', 62023, 2023, 1687849469),
(197, 'Nabati', 195000, '2023-06-05', 62023, 2023, 1687849522),
(198, 'Fres care', 130882, '2023-06-08', 62023, 2023, 1687849578),
(199, 'Madu tj', 39627, '2023-06-08', 62023, 2023, 1687849621),
(200, 'ABC kecap', 110247, '2023-05-31', 62023, 2023, 1687849663),
(201, 'Indomarco', 393171, '2023-06-21', 62023, 2023, 1687849719),
(202, 'Lasegar', 258310, '2023-04-28', 62023, 2023, 1687849802),
(203, 'Es krim', 583375, '2023-06-06', 62023, 2023, 1687850083),
(204, 'Unilever', 518073, '2023-06-13', 62023, 2023, 1687850106),
(205, 'Unilever', 150839, '2023-06-27', 62023, 2023, 1687850129),
(206, 'Gerry', 178634, '2023-06-15', 62023, 2023, 1687850181),
(207, 'Clas mild', 467500, '2023-06-23', 62023, 2023, 1687850561),
(208, 'Clasmild', 418000, '2023-06-23', 62023, 2023, 1687850612),
(209, 'Clasmild', 209000, '2023-06-22', 62023, 2023, 1687850732);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Admin', 'admin@admin.com', 'man-with-inscription-admin-icon-outline-style-vector-30713429.jpg', '$2y$10$I5GPS/x6gSqSf9a0/WHzp.AWh/UtEuDUbAi2xfGNECDSTToGCl9Bq', 1, 1, 1),
(79, 'Maidi', 'maidi@tk.noor', '316446228_208362058289672_5113884138656863540_n.jpeg', '$2y$10$pJYdwC/C23/2T3ohrA0K0esWqZomsdPdeNEyw0/cqLx4lp1l9jiEu', 209, 1, 1663564209),
(80, 'Rusadi', 'rusadi@tk.noor', '779033231.jpeg', '$2y$10$domAdEkt7Q876RjGp1M/SuJl0dfItvXjxsNlkUfstZclqg8Dt7XVu', 210, 1, 1663564230),
(81, 'Harun', 'harun@tk.noor', 'default.jpg', '$2y$10$3vtem0riLB5b61tTepDuk.iq6edEWR0zSglrbtAQ.qcsY.qMXUk5.', 2, 1, 1672177665);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(175, 209, 59),
(177, 209, 2),
(185, 210, 59),
(187, 210, 61),
(188, 0, 61),
(189, 0, 60),
(190, 0, 59),
(191, 210, 60),
(192, 210, 2),
(193, 1, 62),
(194, 210, 63),
(197, 210, 64),
(199, 1, 63),
(202, 1, 61),
(210, 1, 66),
(211, 1, 60),
(212, 209, 66);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `icon`, `name`, `aktif`) VALUES
(1, 'Administrator', 'fa fa-cogs', 'Administrator', 1),
(2, 'Profile', 'mdi mdi-account-settings-variant', 'Profile', 1),
(3, 'Menu', 'mdi mdi-folder-multiple', 'Setting Menu', 1),
(59, 'OmsetSatu', 'mdi mdi-flower', 'Stor Kasir', 0),
(60, 'OmsetDua', 'mdi mdi-flower', 'Omset Per Blan', 0),
(64, 'Campas', 'mdi mdi-flower', 'Campas', 0),
(65, 'Barang', 'mdi mdi-flower', 'Barang', 0),
(66, 'Tagihan', 'mdi mdi-flower', 'Tagihan', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(209, 'Kasir'),
(210, 'Manajer'),
(213, 'Barang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icons` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icons`, `is_active`) VALUES
(1, 1, 'Home', 'Administrator', 'mdi mdi-home', 1),
(2, 2, 'My Profile', 'profile', 'mdi mdi-account', 1),
(3, 2, 'Edit Profile', 'profile/edit', 'mdi mdi-account-settings-variant', 0),
(4, 3, 'Menu', 'menu', 'mdi mdi-folder-multiple', 1),
(5, 3, 'Submenu', 'menu/submenu', 'mdi mdi-menu', 1),
(7, 1, 'Hak Akses', 'Administrator/role', 'mdi mdi-access-point-network', 1),
(8, 2, 'Change Password', 'profile/changepassword', 'mdi mdi-key', 0),
(20, 1, 'Users', 'Administrator/users', 'mdi mdi-account-multiple', 1),
(69, 59, 'Stor Kasir', 'OmsetSatu', 'mdi mdi-cash-usd', 1),
(74, 64, 'Campas', 'Campas', 'mdi mdi-dumbbell ', 1),
(75, 64, 'Tagihan', 'campas/tagihan', 'mdi mdi-cash-100 ', 1),
(76, 60, 'Manager', 'omsetDua/data', 'mdi mdi-flower', 1),
(77, 65, 'Barang', 'barang', 'mdi mdi-flower', 1),
(78, 66, 'Tagihan', 'tagihan', 'mdi mdi-cash', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `campas`
--
ALTER TABLE `campas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `omset`
--
ALTER TABLE `omset`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aset`
--
ALTER TABLE `aset`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=806;

--
-- AUTO_INCREMENT untuk tabel `campas`
--
ALTER TABLE `campas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT untuk tabel `omset`
--
ALTER TABLE `omset`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
