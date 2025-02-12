-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 05:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `math`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(1, 1, 'login', 'User logged in.', '2025-02-02 04:57:01'),
(2, 1, 'logout', 'User logged out.', '2025-02-02 04:57:57'),
(3, 1, 'login', 'User logged in.', '2025-02-02 04:58:02'),
(4, 1, 'logout', 'User logged out.', '2025-02-02 05:00:44'),
(5, 1, 'login', 'User logged in.', '2025-02-02 05:00:51'),
(6, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 05:02:08'),
(7, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 05:02:10'),
(8, 1, 'login', 'User logged in.', '2025-02-02 09:16:34'),
(9, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 09:17:22'),
(10, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 09:17:46'),
(11, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 10:40:10'),
(12, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 10:47:09'),
(13, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 10:50:35'),
(14, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 11:02:32'),
(15, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 11:24:50'),
(16, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 11:33:23'),
(17, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 12:28:33'),
(18, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 12:29:14'),
(19, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 12:29:26'),
(20, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 13:41:35'),
(21, 1, 'activity_log', 'User visited activity log view.', '2025-02-02 13:41:41'),
(22, 1, 'activity_log', 'User visited activity log view.', '2025-02-03 06:06:58'),
(23, 1, 'login', 'User logged in.', '2025-02-04 06:27:49'),
(24, 1, 'login', 'User logged in.', '2025-02-05 11:08:45'),
(25, 1, 'login', 'User logged in.', '2025-02-06 01:49:27'),
(26, 1, 'login', 'User logged in.', '2025-02-06 04:13:20'),
(27, 1, 'login', 'User logged in.', '2025-02-06 10:59:47'),
(28, 1, 'login', 'User logged in.', '2025-02-07 10:02:49'),
(29, 1, 'activity_log', 'User visited activity log view.', '2025-02-07 11:38:51'),
(30, 1, 'logout', 'User logged out.', '2025-02-07 12:01:52'),
(31, 1, 'login', 'User logged in.', '2025-02-08 07:58:31'),
(32, 1, 'logout', 'User logged out.', '2025-02-08 07:59:34'),
(33, 1, 'login', 'User logged in.', '2025-02-08 08:01:44'),
(34, 1, 'logout', 'User logged out.', '2025-02-08 08:01:49'),
(35, 3, 'login', 'User logged in.', '2025-02-08 08:26:59'),
(36, 3, 'login', 'User logged in.', '2025-02-08 08:30:13'),
(37, 3, 'logout', 'User logged out.', '2025-02-08 08:41:38'),
(38, 1, 'login', 'User logged in.', '2025-02-08 08:41:43'),
(39, 1, 'login', 'User logged in.', '2025-02-08 11:11:27'),
(40, 1, 'logout', 'User logged out.', '2025-02-08 11:30:53'),
(41, 1, 'login', 'User logged in.', '2025-02-08 11:30:58'),
(42, 1, 'login', 'User logged in.', '2025-02-09 04:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `id_user` int(255) NOT NULL,
  `hasil` varchar(1000) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kategori` enum('Persegi','Persegi Panjang','Segitiga','Jajar Genjang','Trapesium','Layang-layang','Belah Ketupat','Lingkaran','Kubus','Balok','Tabung','Kerucut','Bola','Limit','Turunan','','','') NOT NULL,
  `status` enum('aktif','deleted','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `id_user`, `hasil`, `waktu`, `kategori`, `status`) VALUES
(68, 1, 'Sisi: 100 cm → Luas: 10000 cm², Keliling: 400 cm', '2025-02-07 10:22:57', 'Persegi', 'aktif'),
(69, 1, 'Panjang: 12 cm, Lebar: 4 cm → Luas: 48 cm², Keliling: 32 cm', '2025-02-07 10:23:12', 'Persegi Panjang', 'aktif'),
(70, 1, 'Alas: 4 cm, Tinggi: 6 cm, Sisi Miring: 7 cm → Luas: 12 cm², Keliling: 17 cm', '2025-02-07 10:23:35', 'Segitiga', 'aktif'),
(71, 1, 'Alas: 4 cm, Tinggi: 5 cm, Sisi Miring: 8 cm → Luas: 20 cm², Keliling: 24 cm', '2025-02-07 10:24:38', 'Jajar Genjang', 'aktif'),
(72, 1, 'Sisi a: 6 cm, Sisi b: 6 cm, Tinggi: 8 cm → Luas: 48 cm², Keliling: 28 cm', '2025-02-07 10:25:49', 'Trapesium', 'aktif'),
(73, 1, 'Diagonal 1: 7 cm, Diagonal 2: 4 cm, Sisi 1: 4 cm, Sisi 2: 7 cm → Luas: 14 cm², Keliling: 22 cm', '2025-02-07 10:27:16', 'Layang-layang', 'aktif'),
(74, 1, 'Diagonal 1: 5 cm, Diagonal 2: 5 cm, Sisi: 4 cm → Luas: 12.5 cm², Keliling: 16 cm', '2025-02-07 10:28:33', 'Belah Ketupat', 'aktif'),
(75, 1, 'Jari-jari: 8 cm → Luas: 201.06 cm², Keliling: 50.27 cm', '2025-02-07 10:29:48', 'Lingkaran', 'aktif'),
(76, 1, 'Sisi: 7 cm → Volume: 343 cm³, Luas Permukaan: 294 cm²', '2025-02-07 10:30:07', 'Kubus', 'aktif'),
(77, 1, 'Panjang: 6 cm, Lebar: 5 cm, Tinggi: 8 cm → Volume: 240 cm³, Luas Permukaan: 236 cm²', '2025-02-07 10:32:34', 'Balok', 'aktif'),
(78, 1, 'Jari-jari: 8 cm, Tinggi: 9 cm → Luas Permukaan: 854.51 cm², Volume: 1,809.56 cm³', '2025-02-07 10:33:11', 'Tabung', 'aktif'),
(79, 1, 'Jari-jari: 6 cm, Tinggi: 4 cm, Garis Pelukis: 8 cm → Volume: 150.80 cm³, Luas Permukaan: 263.89 cm²', '2025-02-07 10:33:40', 'Kerucut', 'aktif'),
(80, 1, 'Jari-jari: 7 cm → Volume: 1,436.76 cm³, Luas Permukaan: 615.75 cm²', '2025-02-07 10:34:25', 'Bola', 'aktif'),
(81, 1, 'Limit dari f(x) = x^2 + 7 saat x mendekati 1 adalah 8.00', '2025-02-07 10:35:11', 'Limit', 'aktif'),
(82, 2, 'f(x) = 2x^1 → f\'(x) = 2x^0', '2025-02-09 04:40:59', 'Turunan', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `history_edit`
--

CREATE TABLE `history_edit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_edit`
--

INSERT INTO `history_edit` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(1, 1, 'Update Logo and Website name', 'User updated Logo/Website Name.', '2025-02-02 12:58:50'),
(2, 1, 'Update Logo and Website name', 'User updated Logo/Website Name.', '2025-02-07 11:52:59'),
(3, 1, 'Update Logo and Website name', 'User updated Logo/Website Name.', '2025-02-07 11:53:15'),
(4, 1, 'Update Logo and Website name', 'User updated Logo/Website Name.', '2025-02-07 11:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `logo`) VALUES
(1, 'Innalilahi aliyah', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `jumlah`, `total_harga`) VALUES
(8, 1, 1, '50000.00'),
(9, 1, 100, '5000000.00'),
(10, 1, 1, '50000.00'),
(11, 1, 12, '0.00'),
(12, 1, 12, '0.00'),
(13, 1, 2, '100000.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_asli` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `pw` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` enum('aktif','deleted','','') NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `nama_asli`, `level`, `pw`, `foto`, `alamat`, `status`, `updated_by`, `updated_at`) VALUES
(1, 'admin', '1@gmail.com', 'oso', 2, 'c4ca4238a0b923820dcc509a6f75849b', 'ivan.png', '', 'aktif', 1, '2025-02-09 04:32:36'),
(2, 'duck ivan', 'lanzhanstan@gmail.com', 'Jessycha', 2, '202cb962ac59075b964b07152d234b70', 'shore.jpg', '393 Broadway', 'aktif', 0, '2025-02-09 04:26:35'),
(3, 'Ivantill', 'Ivantill@gmail.com', 'Ivantill', 1, 'c4ca4238a0b923820dcc509a6f75849b', 'ivan.png', '', 'aktif', 0, '2025-02-09 04:26:09'),
(4, 'a', '1@gmail.com', 'Jessycha', 4, 'c4ca4238a0b923820dcc509a6f75849b', 'Screenshot 2024-10-11 201208.png', '', 'aktif', 0, '2025-02-09 04:25:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `history_edit`
--
ALTER TABLE `history_edit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `history_edit`
--
ALTER TABLE `history_edit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
