-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2024 at 09:11 AM
-- Server version: 8.0.40-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suket`
--

-- --------------------------------------------------------

--
-- Table structure for table `alasan_resign`
--

CREATE TABLE `alasan_resign` (
  `AlasanID` varchar(30) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alasan_resign`
--

INSERT INTO `alasan_resign` (`AlasanID`, `Nama`, `created_at`, `updated_at`, `NA`) VALUES
('RSG-20220400001', 'Atas Kemauan Sendiri', '2022-04-22 03:52:06', '2022-04-26 03:42:21', 'N'),
('RSG-20220400002', 'Habis Kontrak', '2022-04-22 03:52:23', '2022-04-22 03:52:23', 'N'),
('RSG-20220400003', 'Pensiun', '2022-04-22 03:52:35', '2022-04-22 03:52:35', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `auto_numbers`
--

CREATE TABLE `auto_numbers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auto_numbers`
--

INSERT INTO `auto_numbers` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, '8cfa32ac0994a8eb39e5584efe12ec40', '3', '2022-04-22 03:52:06', '2022-04-22 03:52:35'),
(2, 'd544606d1521e5d201ca8e98bdd29a97', '32', '2022-04-22 04:42:42', '2022-04-22 07:16:47'),
(6, '801892aa65e48ebc497a8f46ce81fbd1', '2', '2022-04-27 05:04:06', '2022-04-27 05:20:45'),
(7, 'c9b8907e795a61760658968558972f74', '9', '2022-05-20 04:22:10', '2022-05-31 03:08:42'),
(8, 'c1c793bdaf55fbe62b2797db1ba940d1', '19', '2022-06-20 07:48:22', '2022-06-30 01:29:52'),
(9, '5f742b0d03878b91000fe16e812a4280', '1', '2022-07-21 02:04:23', '2022-07-21 02:04:23'),
(10, '6eccbe2271c801f10619ae645ffc0a69', '12', '2022-08-01 01:36:04', '2022-08-02 04:19:16'),
(11, '493bf7dce14d2ff0623d234f15e86ba8', '11', '2022-09-05 01:18:18', '2022-09-29 03:30:20'),
(12, '3e42833777d5f6a5401c5a2e07ea2910', '18', '2022-10-04 04:31:39', '2022-10-28 07:51:27'),
(13, '8ac252246103a777489725a70f981d72', '4', '2022-11-02 04:28:39', '2022-11-29 03:12:04'),
(14, '07ccbf56a3981eb6e6fa75bdf86c1c00', '10', '2022-12-05 01:02:11', '2022-12-27 01:50:21'),
(15, '183174647ef3a35664353ae7200c9cf3', '15', '2023-01-02 01:58:43', '2023-01-31 04:57:27'),
(16, 'de7aee7f4056eed2cace542de79b6274', '1', '2023-02-22 01:29:27', '2023-02-22 01:29:27'),
(17, '28ead13bdb04a089a305845fa692724b', '3', '2023-03-04 02:34:06', '2023-03-04 02:39:00'),
(18, '4e7382ca4556de78da9075def9655704', '8', '2023-04-03 01:08:49', '2023-04-03 01:29:46'),
(19, '358e0f1a42b50db1cc748128b592da7a', '11', '2023-05-02 00:50:29', '2023-05-13 03:27:36'),
(20, '3e50c7091a25fef9221f5195decdda59', '7', '2023-06-05 01:04:27', '2023-06-26 06:43:36'),
(21, '08b77fc87984f37db63580b0c5913458', '20', '2023-07-01 01:34:59', '2023-07-25 04:51:19'),
(22, '20d5e50dab20acd2af001dc6117b137e', '47', '2023-08-03 02:03:55', '2023-08-16 02:29:16'),
(23, '176781df669298f7d8cdc2d549def2c6', '34', '2023-09-02 03:31:03', '2023-09-22 07:19:59'),
(24, '67305efa14ac0cb2785641215452146f', '16', '2023-10-02 03:13:34', '2023-10-25 07:29:25'),
(25, '3e3159ea5602c545e764d957a5118dec', '2', '2023-11-02 08:02:37', '2023-11-02 08:11:08'),
(26, '82c1519bb17c1aa267471e59a4468ffc', '10', '2023-12-04 04:19:25', '2023-12-21 01:31:45'),
(27, '5a8ac8c0897b365daac88dd13af4c392', '10', '2024-01-06 01:35:44', '2024-01-23 01:12:00'),
(28, '0b3d2d358300b086f8d496ce7642abc1', '4', '2024-02-05 01:59:06', '2024-02-26 01:23:31'),
(29, 'bfb6509c486b3a8997e5a47ffabdaa71', '8', '2024-03-01 08:59:32', '2024-03-22 06:00:42'),
(30, 'cb21bd4fcfd75e05307d23ac34487c08', '9', '2024-04-22 03:10:36', '2024-04-30 01:42:14'),
(31, '73e15ca425e686c927b5e04c070874fd', '11', '2024-05-22 04:01:53', '2024-05-28 01:39:51'),
(32, 'e7d2f23c2153ea443006237b55b2ad89', '8', '2024-06-03 07:46:20', '2024-06-27 04:40:49'),
(33, '3f845b8fa96af02266df5c43c5905128', '12', '2024-07-01 01:30:57', '2024-07-31 04:08:11'),
(34, '9f6cde094d77562b3aca3be30942f4a0', '13', '2024-08-01 04:06:21', '2024-08-31 01:44:42'),
(35, '7388736c3cd0bd67c1aaef99384e0d53', '5', '2024-09-24 01:20:10', '2024-09-24 01:25:01'),
(36, '0046522d042c31bb5050ffdde4b98159', '1', '2024-10-08 02:16:27', '2024-10-08 02:16:27'),
(37, 'b4ef00792b582fd54a844b8a14191bb2', '18', '2024-11-18 01:21:11', '2024-11-29 01:31:02'),
(38, '0cc89d1b7866ff3fa30ed7ee8ddebb33', '5', '2024-12-03 03:32:45', '2024-12-04 02:09:06'),
(39, 'a322f9806d217fb093f5307027426ad1', '2', '2024-12-06 02:39:25', '2024-12-06 02:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `BarangID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Satuan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jumlah` decimal(10,2) DEFAULT '0.00',
  `HargaBeli` decimal(20,2) NOT NULL,
  `MarkUP` decimal(10,2) DEFAULT NULL,
  `HargaJual` decimal(20,2) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_publik`
--

CREATE TABLE `ip_publik` (
  `ID` bigint NOT NULL,
  `IP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ip_publik`
--

INSERT INTO `ip_publik` (`ID`, `IP`) VALUES
(1, 'http://103.138.70.211:8081');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `ID` bigint NOT NULL,
  `NamaJabatan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`ID`, `NamaJabatan`, `created_at`, `updated_at`, `NA`) VALUES
(1, 'DIREKTUR', '2024-11-20 03:26:27', '2024-11-20 03:26:27', 'N'),
(2, 'MANAGER', '2024-11-20 03:48:58', '2024-11-20 03:48:58', 'N'),
(3, 'DOKTER SPESIALIS', '2024-11-20 03:49:32', '2024-11-20 03:49:32', 'N'),
(4, 'KABAG', '2024-11-20 03:49:40', '2024-11-20 03:49:40', 'N'),
(5, 'KANIT', '2024-11-20 03:49:46', '2024-11-20 03:49:46', 'N'),
(6, 'KARU', '2024-11-20 03:49:54', '2024-11-20 03:49:54', 'N'),
(7, 'PELAKSANA', '2024-11-20 03:49:59', '2024-11-20 03:49:59', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_karyawan`
--

CREATE TABLE `jenis_karyawan` (
  `JenisKaryawanID` bigint NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_karyawan`
--

INSERT INTO `jenis_karyawan` (`JenisKaryawanID`, `Nama`, `created_at`, `updated_at`, `NA`) VALUES
(1, 'Karyawan Tetap', '2022-04-26 04:38:41', '2022-04-26 04:38:41', 'N'),
(2, 'Karyawan Kontrak', '2022-04-26 04:39:11', '2022-04-26 04:39:11', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `keperluan_surat`
--

CREATE TABLE `keperluan_surat` (
  `KeperluanSuratID` varchar(30) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keperluan_surat`
--

INSERT INTO `keperluan_surat` (`KeperluanSuratID`, `Nama`, `created_at`, `updated_at`, `NA`) VALUES
('KPS-20220400003', 'Pengurusan Surat Ijin Praktik Perawat (SIPP)', '2022-04-22 04:43:41', '2022-04-26 03:41:59', 'N'),
('KPS-20220400004', 'Pengurusan Surat Ijin Praktik Bidan (SIPB)', '2022-04-22 04:44:06', '2022-04-22 04:44:06', 'N'),
('KPS-20220400005', 'Pengurusan Surat Ijin Praktik Penata Anestesi (SIPPA)', '2022-04-22 07:11:38', '2022-04-22 07:11:38', 'N'),
('KPS-20220400006', 'Pengurusan Surat Tanda Registrasi (STR)', '2022-04-22 07:11:50', '2022-04-22 07:11:50', 'N'),
('KPS-20220400007', 'Pengurusan Satuan Kredit Profesi (SKP) PPNI', '2022-04-22 07:12:00', '2022-04-22 07:12:00', 'N'),
('KPS-20220400008', 'Pengurusan Surat Ijin Praktik Teknisi Kardiovaskuler', '2022-04-22 07:12:11', '2022-04-22 07:12:11', 'N'),
('KPS-20220400009', 'Pengurusan Surat Tanda Registrasi (STR) Teknisi Kardiovaskuler', '2022-04-22 07:12:22', '2022-04-22 07:12:22', 'N'),
('KPS-20220400010', 'Pengurusan Surat Ijin Praktik Fisioterapi (SIPF)', '2022-04-22 07:12:33', '2022-04-22 07:12:33', 'N'),
('KPS-20220400011', 'Pengurusan Surat Tanda Registrasi (STR) Fisioterapi', '2022-04-22 07:12:43', '2022-04-22 07:12:43', 'N'),
('KPS-20220400012', 'Pengurusan Surat Ijin Praktik Okupasi Terapi (SIPOT)', '2022-04-22 07:12:54', '2022-04-22 07:12:54', 'N'),
('KPS-20220400013', 'Pengurusan Surat Tanda Registasi (STR) Okupasi Terapi', '2022-04-22 07:13:10', '2022-04-22 07:13:10', 'N'),
('KPS-20220400014', 'Pengurusan Surat Ijin Praktik Terapi Wicara (SIPTW)', '2022-04-22 07:13:20', '2022-04-22 07:13:20', 'N'),
('KPS-20220400015', 'Pengurusan Surat Izin Kerja Radiografer (SIKR)', '2022-04-22 07:13:29', '2022-04-22 07:13:29', 'N'),
('KPS-20220400016', 'Pengurusan Surat Tanda Registrasi (STR) Radiografer', '2022-04-22 07:13:40', '2022-04-22 07:13:40', 'N'),
('KPS-20220400017', 'Pengurusan Surat Ijin Praktik Ahli Teknologi Laboratorium Medik (SIP-ATLM)', '2022-04-22 07:13:53', '2022-04-22 07:13:53', 'N'),
('KPS-20220400018', 'Pengurusan Surat Tanda Registrasi (STR) Ahli Teknologi Laboratorium Medik', '2022-04-22 07:14:03', '2022-04-22 07:14:03', 'N'),
('KPS-20220400019', 'Pengurusan Surat Ijin Praktik Apoteker (SIPA)', '2022-04-22 07:14:13', '2022-04-22 07:14:13', 'N'),
('KPS-20220400020', 'Pengurusan Surat Tanda Registrasi (STR) Apoteker', '2022-04-22 07:14:25', '2022-04-22 07:14:25', 'N'),
('KPS-20220400021', 'Pengurusan Surat Ijin Praktik Tenaga Teknis Kefarmasian (SIPTTK)', '2022-04-22 07:14:35', '2022-04-22 07:14:35', 'N'),
('KPS-20220400022', 'Pengurusan Surat Tanda Registrasi (STR) Tenaga Teknis Kefarmasian', '2022-04-22 07:14:45', '2022-04-22 07:14:45', 'N'),
('KPS-20220400023', 'Pengurusan Surat Ijin Praktik Tenaga Gizi (SIPTGz)', '2022-04-22 07:14:56', '2022-04-22 07:14:56', 'N'),
('KPS-20220400024', 'Pengurusan Surat Tanda Registrasi (STR) Ahli Gizi', '2022-04-22 07:15:07', '2022-04-22 07:15:07', 'N'),
('KPS-20220400025', 'Pengurusan Surat Ijin Kerja Refraksionis Optisien (SIK-RO)', '2022-04-22 07:15:36', '2022-04-22 07:15:36', 'N'),
('KPS-20220400026', 'Pengurusan Surat Tanda Registrasi (STR) Refraksionis Optisien', '2022-04-22 07:15:49', '2022-04-22 07:15:49', 'N'),
('KPS-20220400027', 'Pengurusan Surat Ijin Praktik Perekam Medis (SIP – PM)', '2022-04-22 07:15:58', '2022-04-22 07:15:58', 'N'),
('KPS-20220400028', 'Pengurusan Surat Tanda Registrasi (STR) Rekam Medis', '2022-04-22 07:16:08', '2022-04-22 07:16:08', 'N'),
('KPS-20220400029', 'Pengurusan Surat Ijin Praktik Elektromedis (SIP-E)', '2022-04-22 07:16:18', '2022-04-22 07:16:18', 'N'),
('KPS-20220400030', 'Pengurusan Surat Tanda Registrasi (STR) Elektromedis', '2022-04-22 07:16:28', '2022-04-22 07:16:28', 'N'),
('KPS-20220400031', 'Pengurusan Domisili', '2022-04-22 07:16:37', '2022-04-22 07:16:37', 'N'),
('KPS-20220400032', 'Pembukaan Buku Rekening', '2022-04-22 07:16:47', '2022-04-22 07:16:47', 'N'),
('KPS-20241200001', 'Surat Ijin Praktek Perawat Gigi', '2024-12-06 02:39:25', '2024-12-06 02:39:25', 'N'),
('KPS-20241200002', 'Surat Izin Praktek Pelayanan Darah', '2024-12-06 02:53:49', '2024-12-06 02:53:49', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `log_kirim_pengalaman_kerja`
--

CREATE TABLE `log_kirim_pengalaman_kerja` (
  `ID` bigint NOT NULL,
  `SuketPengalamanID` varchar(30) NOT NULL,
  `NamaKaryawan` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `SEO` varchar(80) NOT NULL,
  `TanggalKirim` datetime NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_kirim_pengalaman_kerja`
--

INSERT INTO `log_kirim_pengalaman_kerja` (`ID`, `SuketPengalamanID`, `NamaKaryawan`, `Email`, `SEO`, `TanggalKirim`, `created_at`, `updated_at`) VALUES
(1, '001/RSAB-PKU/SDM/SPK/04.2022', 'YUSRIZAL', 'yusrizals020317061987@gmail.com', '', '2023-08-11 16:21:29', '2023-08-11 09:21:29', '2023-08-11 09:21:29'),
(2, '047/RSAB-PKU/SDM/SPK/08.2023', 'Yulhendri', 'yulhendriaje@gmail.com', '', '2023-08-16 09:39:56', '2023-08-16 02:39:56', '2023-08-16 02:39:56'),
(3, '001/RSAB-PKU/SDM/SPK/09.2023', 'Nadia Rahmayanti, A.Md.Farm', 'nadiarahmayanti1302@gmail.com', 'w1JEpkzzU52Fdx3g8svXEvzPXtHBtqR7EJXZ2NRvFRNmZL3VNk5i9vvtJgXR20230902103103', '2023-09-02 14:08:43', '2023-09-02 07:08:43', '2023-09-02 07:08:43'),
(4, '002/RSAB-PKU/SDM/SPK/09.2023', 'Ns. Riyon Anggriawan, S.Kep', 'riyonanggri@gmail.com', 'ZQIvme53rTMiqOzPIBHBTPBUxJUtzCvQ0bWZCQcuWhLIjwUWLMzejvS60S7u20230902104506', '2023-09-02 14:10:58', '2023-09-02 07:10:58', '2023-09-02 07:10:58'),
(7, '023/RSAB-PKU/SDM/12.2024', 'Ns. Anisa Arrasy Shiddieqy, S.Kep', 'anisa.arrasy99@gmail.com', 'EI6W4ufeEpkd9s5SVX3G41bpLTBHiGxbY62VlKZXZZtOCkH7PXONKW0itIWY20241204094614', '2024-12-10 12:39:06', '2024-12-10 05:39:06', '2024-12-10 05:39:06'),
(8, '120/RSAB-PKU/SDM/12.2024', 'dr. Meuthia Rizka Mutiara Indra', 'meuthiarizkamutiara@gmail.com', 'IP7uMJKc3PpRyiQ4mv7dSoCrBhximbMLcIQ5N8lC14iWzINif7hLeV4T2s8t20241211140745', '2024-12-11 14:33:51', '2024-12-11 07:33:51', '2024-12-11 07:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `manager_sdm`
--

CREATE TABLE `manager_sdm` (
  `ManagerID` bigint NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manager_sdm`
--

INSERT INTO `manager_sdm` (`ManagerID`, `Nama`, `Status`, `Email`, `created_at`, `updated_at`, `NA`) VALUES
(1, 'Anissa Setyoningthias, SE., MM', 'Manager SDM', 'anissa.soeroyo@awalbros.com', '2022-04-22 07:25:18', '2022-04-22 07:25:18', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2017_08_03_055212_create_auto_numbers', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` bigint UNSIGNED NOT NULL,
  `PerusahaanID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Alamat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Notelp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PenanggungJawab` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `NA` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `PerusahaanID`, `Nama`, `Alamat`, `Notelp`, `PenanggungJawab`, `created_at`, `updated_at`, `NA`) VALUES
(1, 'PRSH-20210800001', 'AWAL BROS SUDIRMAN', 'JL. JEND SUDIRMAN NO 117', '081276104447', 'BUDHI HENDRATMO', '2021-08-17 23:52:55', '2022-03-13 16:11:32', 'N'),
(2, 'PRSH-20210800002', 'EKA HOSPITAL', 'JL ARENGKA II', '081276104447', 'HENDRA', '2021-08-18 00:11:15', '2021-08-18 00:44:24', 'N'),
(3, 'PRSH-20210800005', 'AWAL BROS AYANI', 'JL. AHMAD YANI', '081276104447', 'M. RIDHO PRATAMA', '2021-08-20 01:25:39', '2021-08-20 01:25:39', 'N'),
(4, 'PRSH-20210800006', 'MENARA BRI', 'JL. JEND. SUDIRMAN', '081276104447', 'RIZAL', '2021-08-20 01:27:47', '2021-08-20 01:27:47', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` bigint NOT NULL,
  `NamaCV` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PIC` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Alamat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Notelp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `NamaCV`, `PIC`, `Jabatan`, `Alamat`, `Notelp`, `created_at`, `updated_at`, `NA`) VALUES
(1, 'CV. ANAM LINGKUNG', 'CHRIS', 'Pemilik', 'Bangkinang', '081270560283', '2021-08-27 17:00:00', '2021-08-27 17:00:00', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint NOT NULL,
  `role_id` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `na` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_id`, `nama`, `remember_token`, `updated_at`, `na`) VALUES
(1, 'admin', 'ADMINISTRATOR', 'noVJNAhgNomRH35QfSL4rloYkTTuLXqlpcPsr1H3hfrtCi84KqpFgqldto2Q', '2020-04-19 18:22:01', 'N'),
(2, 'owner', 'OWNER', 'LdsTaUjshhHjDICBiEmu32QdtWBB8DfJswJpotS3QbGJEyB2HQQ5HYCfmJre', '2020-02-26 04:33:22', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keterangan_kerja`
--

CREATE TABLE `surat_keterangan_kerja` (
  `ID` bigint NOT NULL,
  `SuketKeteranganID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SEO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamaKarywan` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bagian` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jabatan` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TempatLahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TanggalLahir` date NOT NULL,
  `JenisKaryawanID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Awal_Kerja` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Akhir_Kerja` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `awal` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `sekarang` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `JenisKeperluanSuratID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Setujui` enum('Y','N','B') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `Status` enum('0','1','2','-1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `TanggalKirim` datetime DEFAULT NULL,
  `TanggalSetujui` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_keterangan_kerja`
--

INSERT INTO `surat_keterangan_kerja` (`ID`, `SuketKeteranganID`, `SEO`, `NIK`, `NamaKarywan`, `Bagian`, `Jabatan`, `TempatLahir`, `TanggalLahir`, `JenisKaryawanID`, `Awal_Kerja`, `Akhir_Kerja`, `awal`, `akhir`, `sekarang`, `JenisKeperluanSuratID`, `created_at`, `updated_at`, `NA`, `Email`, `Setujui`, `Status`, `TanggalKirim`, `TanggalSetujui`) VALUES
(1, '143/RSAB-SDM/11.2024', 'MNS84xUzzOQ2FpbCj54qlVx1LGrVapKNXkuH8WOUfIhaRlRMtVvbC2VH0JSH20241114105703', 'PK2020104', 'Lina Ramadhani', 'Poliklinik', 'Bidan', 'Pekanbaru', '1997-02-02', '01', '01 September 2020', 'sekarang', '2020-09-01', NULL, 'Y', 'KPS-20220400004', '2024-11-14 03:57:03', '2024-11-14 03:57:03', 'N', 'ramadhanilina@gmail.com', 'Y', '2', '2024-11-14 10:57:20', '2024-11-14 14:27:40'),
(2, '002/RSAB-SDM/11.2024', 'AoBa2BnotRaWHyBr4gNr9AH2AcxOJ4fFMFi927mYezDRe61CEsy3ZI2wuHlo20241115111253', 'PK2018051', 'Andriani Natalia Simorangkir', 'Sdm', 'Kanit Sdm', 'Jambi', '1993-12-01', '01', '1 JUNI 2018', 'sekarang', '2018-06-01', NULL, 'Y', 'KPS-20220400003', '2024-11-15 04:12:53', '2024-11-15 04:12:53', 'N', 'andrianinatalia6@gmail.com', 'Y', '2', '2024-11-15 11:13:06', '2024-11-15 11:32:04'),
(3, '253/RSAB-SDM/11.2024', 'bpWk1fM4B8mo7xGEwFyb0tZCvWsr4fgCoVfTHRxZ2yM5BUQBZHIsVwtVQi9h20241122103150', 'PK2021074', 'Ardiansyah', 'Kamar Bedah', 'Perawat', 'Talontam', '1996-02-08', '01', '01 Mei 2021', 'sekarang', '2021-05-01', NULL, 'Y', 'KPS-20220400003', '2024-11-22 03:31:50', '2024-11-22 03:31:50', 'N', 'ardisyah8854@gmail.com', 'Y', '2', '2024-11-22 10:32:11', '2024-11-29 11:37:23'),
(4, '256/RSAB-SDM/11.2024', 'CopmmtTlirT4QEDY3Ex562cJ08EBrH2sMKZR9pZzNLN2Kl4NOjaIB5etajRb20241122103503', 'PKTDP24122', 'Lilis Rahmawati', 'Imc', 'Perawat', 'Air Tiris', '2000-01-02', '02', '21 September 2024', 'sekarang', '2024-09-21', NULL, 'Y', 'KPS-20220400003', '2024-11-22 03:35:03', '2024-11-22 03:35:03', 'N', 'lilisrahmawati08475@gmail.com', 'Y', '2', '2024-11-22 10:35:13', '2024-11-29 11:37:52'),
(5, '050/RSAB-SDM/12.2024', 'OrKUnYXkDUXyHn0u1q8Zpr63lKlZhm6qHnQHDeehUQ5BAF4i4PUoM2xlO9cC20241206081432', 'PK2024153', 'Afdhal Wahyudi', 'Keperawatan', 'Perawat', 'Bukittinggi', '1998-01-22', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-06 01:14:32', '2024-12-06 01:14:32', 'N', 'afdhalwahyudi22998@gmail.com', 'Y', '2', '2024-12-06 09:31:30', '2024-12-10 12:39:09'),
(6, '051/RSAB-SDM/12.2024', 'FZ0gaQdCzjiauBIxDBeZHtbNHPID5b942gygzZC1YFH1vr4XE4H3gdISYjdr20241206081800', 'PKTDP24165', 'Rudi Sasongko', 'Keperawatan', 'Perawat', 'Demak', '2001-10-03', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-06 01:18:00', '2024-12-06 01:18:00', 'N', 'rsasongko666@gmail.com', 'Y', '2', '2024-12-06 09:31:49', '2024-12-10 12:39:14'),
(7, '052/RSAB-SDM/12.2024', 'U6lt7kNnYdBqNVhzHLUejje1djF8Rlk3m3chM74o3NC9pmbiqApLTdB9ECX820241206082231', 'PK2024155', 'Widia Wati', 'Keperawatan', 'Perawat', 'Muaro Mago', '1997-04-19', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-06 01:22:31', '2024-12-06 01:22:31', 'N', 'ww4877385@gmail.com', 'Y', '2', '2024-12-06 09:32:07', '2024-12-10 12:39:24'),
(8, '053/RSAB-SDM/12.2024', 'nY47o1KMalA5aqpNw5C0C63RXAuysc4oYc3j0lJEs83HzvsArsUbuk1BZw5U20241206082418', 'PK2024158', 'Afiska Syahrani', 'Keperawatan', 'Perawat', 'Pekanbaru', '1994-03-09', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-06 01:24:18', '2024-12-06 01:24:18', 'N', 'syahraniafiska@gmail.com', 'Y', '2', '2024-12-06 09:33:48', '2024-12-10 12:40:19'),
(9, '054/RSAB-SDM/12.2024', '61DUcdJL8eYswIwKEM2YXFNAQ6wIs9lsCTSdNiINlGErsY8LrGICkTaCjz1F20241206082542', 'PKTDP24163', 'Muhammad Athif Athari Authar', 'Keperawatan', 'Perawat', 'Jakarta', '2001-06-15', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-06 01:25:42', '2024-12-06 01:25:42', 'N', 'muhammad.athif78@gmail.com', 'Y', '2', '2024-12-06 09:34:09', '2024-12-10 12:40:23'),
(10, '055/RSAB-SDM/12.2024', 'Mz7PKpfDqGWf01ELBkE4UQKMtGai0t0UJeDyQuP6AvaYSlDaLli8IdZpGVuv20241206082823', 'PKTDP24173', 'Muhammad Ravy', 'Keperawatan', 'Penata Anestesi', 'Pekanbaru', '2002-05-20', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400005', '2024-12-06 01:28:23', '2024-12-06 01:28:23', 'N', 'muhammadravy72@gmail.com', 'Y', '2', '2024-12-06 09:34:31', '2024-12-10 12:40:26'),
(11, '056/RSAB-SDM/12.2024', 'ydYdplFXEkyr8BOe2oiZethntFU313IK4nLwnh0JAwZjWo5yyiXCYNKty8wb20241206082942', 'PK2024156', 'Tiolina Juniati', 'Keperawatan', 'Perawat', 'Sialang Sakti', '1990-06-01', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-06 01:29:42', '2024-12-06 01:29:42', 'N', 'brsinuratiolina@gmail.com', 'N', '1', '2024-12-06 09:34:48', NULL),
(12, '057/RSAB-SDM/12.2024', 'vav6Ki4lCvWqDmJQevuHT2DCZYZltuqxX2fKnKT0UNxpQr7ZEI0yAtg1TpIw20241206083103', 'PKTDP24169', 'Aldo Andrian Pratama', 'Keperawatan', 'Perawat', 'Teratak Tempatih', '2000-07-12', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-06 01:31:03', '2024-12-06 01:31:03', 'N', 'yoga.ekapratama2001@gmail.com', 'Y', '2', '2024-12-06 09:35:07', '2024-12-10 12:40:32'),
(13, '058/RSAB-SDM/12.2024', '6Kf5MJhBIk92rezTBBNTv0zxcna3lnaDfJxcsUh9Od7CxRdbIz0mS5UDzArN20241206083224', 'PKTDP24171', 'M. Fikri Zalius', 'Keperawatan', 'Perawat', 'Baso', '2000-07-15', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-06 01:32:24', '2024-12-06 01:32:24', 'N', 'fikrizalius7@gmail.com', 'N', '1', '2024-12-06 09:35:25', NULL),
(14, '060/RSAB-SDM/12.2024', 'QOTiCsx5brG35TCPjKwgpU9gYIPEvyI5NJpy8D4XJFxHf0IbPbOL5jceYHMn20241206083531', 'PKTDP24175', 'Hanifah Muthmainah', 'Keperawatan', 'Penata Anestesi', 'Tanjung Ampalu', '2001-04-18', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400005', '2024-12-06 01:35:31', '2024-12-06 01:35:31', 'N', 'hanifahmt18@gmail.com', 'N', '1', '2024-12-06 09:35:42', NULL),
(15, '061/RSAB-SDM/12.2024', 'sOYe65cmY96simCsySjqM3QEL4lj7d6wYD2xER8r4icmwGAxaZCmeJ9Q3y6h20241206083656', 'PKTDP24176', 'Sindy Aulia Putri', 'Keperawatan', 'Penata Anestesi', 'Pekanbaru', '2002-06-23', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400005', '2024-12-06 01:36:56', '2024-12-06 01:36:56', 'N', 'sndyaulia23@gmail.com', 'Y', '2', '2024-12-06 09:36:01', '2024-12-10 12:40:39'),
(16, '064/RSAB-SDM/12.2024', 'RRDMemEHl3ZzGkAM09uAwq4oYHgrvMlCv47iE4BP8RI7yPh9bYI3sz0pDpFp20241206084032', 'PKTDP24162', 'Putri Mellani', 'Farmasi', 'Asisten Apoteker', 'Duri', '2003-06-25', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400021', '2024-12-06 01:40:32', '2024-12-06 01:40:32', 'N', 'revaolivia51@gmail.com', 'Y', '2', '2024-12-06 09:36:21', '2024-12-10 12:40:12'),
(17, '065/RSAB-SDM/12.2024', 'DdWHxn7vENPmVbKjO2KDZC2eJd07bFn3rIdiOrnCqD6XcvjFvOuFWylOxZK920241206084229', 'PKTDP24177', 'Suci Armadani', 'Farmasi', 'Asisten Apoteker', 'Sungai Geringging', '2003-11-07', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400021', '2024-12-06 01:42:29', '2024-12-06 01:42:29', 'N', 'suciharmadani07@gmail.com', 'Y', '2', '2024-12-06 09:36:39', '2024-12-10 12:40:07'),
(18, '066/RSAB-SDM/12.2024', 'lQn0A9bcmgCi18dswWMQvN5uc8OFMZQp1coJdgPFHkkIhZHJ9yyoHjq63Rj120241206084530', 'PKTDP24159', 'Dika Lucya Rahmi', 'Farmasi', 'Asisten Apoteker', 'Ujung Padang', '2002-07-04', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400021', '2024-12-06 01:45:30', '2024-12-06 01:45:30', 'N', 'dikalucya@gmail.com', 'Y', '2', '2024-12-06 09:37:03', '2024-12-10 12:40:03'),
(19, '067/RSAB-SDM/12.2024', 'nBihZMQdpBsBwT3k3BifaMOQwznjdORJu4qVzGIy8naqenzd8NOH5K5Ppr2y20241206084733', 'PKTDP24161', 'Wira Oktavia', 'Farmasi', 'Asisten Apoteker', 'Durian Kapeh', '2002-10-20', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400021', '2024-12-06 01:47:33', '2024-12-06 01:47:33', 'N', 'wiraoktavia106@gmail.com', 'Y', '2', '2024-12-06 09:37:21', '2024-12-10 12:39:59'),
(20, '068/RSAB-SDM/12.2024', '8AgOLnWAAr2ELqKDc4sTr8nhGp9e7PqrbZoCDoNuoOBFdN2UbXf6ZTPtmvWP20241206084912', 'PKTDP24156', 'Hazi Ratul Qudsyiah', 'Farmasi', 'Asisten Apoteker', 'Bukittinggi', '2003-06-21', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400021', '2024-12-06 01:49:12', '2024-12-06 01:49:12', 'N', 'haziratulqudsyiah@gmail.com', 'Y', '2', '2024-12-06 09:37:38', '2024-12-10 12:39:53'),
(21, '069/RSAB-SDM/12.2024', '1RypJH8xRmedmnzgOvDhCtRdN50Et6sBBMQfUZ6tMDUcup4wzYNfBmmjhHRW20241206085042', 'PKTDP24157', 'Anggun Widya Sari', 'Farmasi', 'Asisten Apoteker', 'Baso', '2001-12-22', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400021', '2024-12-06 01:50:42', '2024-12-06 01:50:42', 'N', 'anggunwidyasari2@gmail.com', 'Y', '2', '2024-12-06 09:37:58', '2024-12-10 12:39:48'),
(23, '059/RSAB-SDM/12.2024', 'wY0mWtsTWVtLhhTHuCqVm9w5pMlhc42bLAv6QQ5Zu6xv0EkY0IpyS0sw4L3b20241206095139', 'PKTDP24063', 'Dwi Christina', 'Poliklinik', 'Perawat Gigi', 'Medan', '1996-12-03', '02', NULL, NULL, '2024-05-21', NULL, 'Y', 'KPS-20241200001', '2024-12-06 02:51:39', '2024-12-06 02:51:39', 'N', 'dwichristina03@gmail.com', 'Y', '2', '2024-12-06 09:51:50', '2024-12-10 12:39:43'),
(24, '062/RSAB-SDM/12.2024', 'wmKu2Yp7Au1AwX84EE8BaIYYRWNxItk2wxBJjtOOmWypdem3Bb2yqnvX1nYH20241206095524', 'PK2024138', 'Anjas Prahesti', 'Laboratorium', 'Teknisi Layanan Darah', 'Prt. Selamat', '2000-06-18', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20241200002', '2024-12-06 02:55:24', '2024-12-06 02:55:24', 'N', 'anjasprahesti2000@gmail.com', 'Y', '2', '2024-12-06 09:56:46', '2024-12-10 12:39:38'),
(25, '063/RSAB-SDM/12.2024', 'nty0313LOObTBt6kB1khUUQ2Eo4jblnLzNKmcD8yzdRiiqHAwkau8lADsoqU20241206095638', 'PK2024137', 'Ina Andini', 'Laboratorium', 'Teknisi Layanan Darah', 'Kurawan', '2001-02-23', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20241200002', '2024-12-06 02:56:38', '2024-12-06 02:56:38', 'N', 'inaandini23@gmail.com', 'Y', '2', '2024-12-06 09:56:59', '2024-12-10 12:39:33'),
(26, '091/RSAB-SDM/12.2024', '8StJlzriIMyWhGSqNaoxheZwqUdbPXz52hK8nTZcA8PQmFqPIkrsjJIAvIA420241210101418', 'PK2023079', 'Elivia Saragih', 'Poliklinik', 'Perawat', 'Lampung Utara', '1994-12-11', '02', NULL, NULL, '2023-08-21', NULL, 'Y', 'KPS-20220400003', '2024-12-10 03:14:18', '2024-12-10 03:14:18', 'N', 'eliviasaragih11@gmail.com', 'Y', '2', '2024-12-11 08:46:29', '2024-12-11 14:33:06'),
(27, '092/RSAB-SDM/12.2024', '57sCxImmVR7cmvilQ58Uz6y1vBn22FqeUv0Vq64ZpkGB4P4v0ud0bXngcSxv20241210101619', 'PKTDP24160', 'Muhammad Zainal Arif', 'Farmasi', 'Asisten Apoteker', 'Kuala Tungkal', '2003-10-24', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400021', '2024-12-10 03:16:19', '2024-12-10 03:16:19', 'N', 'zainalarifmuhammad161@gmail.com', 'Y', '2', '2024-12-10 10:24:22', '2024-12-10 12:41:09'),
(28, '117/RSAB-SDM/12.2024', '89IurdBYDEn4PCLQXDoUpRVOXISuojgPQPVAJLvLfbV2eATSrxQDk0grpW3z20241211105437', 'PK2024156', 'Tiolina Juniati', 'Bougenville', 'Perawat', 'Sialang Sakti', '1990-06-01', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-11 03:54:37', '2024-12-11 03:54:37', 'N', 'brsinuratiolina@gmail.com', 'Y', '2', '2024-12-11 10:54:49', '2024-12-11 14:33:10'),
(29, '118/RSAB-SDM/12.2024', 'L6CEEFwez1RGquUwP8NPQdqIQGWOw7ttIJl4cWSCjyVeb4787h03nbHB9Ow420241211105841', 'PKTDP24171', 'M. Fikri Zalius', 'Lily', 'Perawat', 'Baso', '2000-07-15', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400003', '2024-12-11 03:58:41', '2024-12-11 03:58:41', 'N', 'fikrizalius7@gmail.com', 'Y', '2', '2024-12-11 14:09:15', '2024-12-11 14:33:23'),
(30, '119/RSAB-SDM/12.2024', 'dejIiiCyjSq3v1qIyaoFra106ninFBcihyRirORskztFjbJVv94Vwis9zIuy20241211110356', 'PKTDP24175', 'Hanifah Muthmainah', 'Kamar Bedah', 'Perawat', 'Tanjung Ampalu', '2001-04-18', '02', NULL, NULL, '2024-11-21', NULL, 'Y', 'KPS-20220400005', '2024-12-11 04:03:56', '2024-12-11 04:03:56', 'N', 'hanifahmt18@gmail.com', 'Y', '2', '2024-12-11 14:08:42', '2024-12-11 14:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keterangan_kerja_11-11-2024`
--

CREATE TABLE `surat_keterangan_kerja_11-11-2024` (
  `ID` bigint NOT NULL,
  `SuketKeteranganID` varchar(30) NOT NULL,
  `SEO` varchar(70) NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `NamaKarywan` varchar(40) NOT NULL,
  `Bagian` varchar(70) NOT NULL,
  `TempatLahir` varchar(50) NOT NULL,
  `TanggalLahir` date NOT NULL,
  `JenisKaryawanID` varchar(20) NOT NULL,
  `JenisKeperluanSuratID` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_pengalaman_kerja`
--

CREATE TABLE `surat_pengalaman_kerja` (
  `ID` bigint NOT NULL,
  `SuketPengalamanID` varchar(30) NOT NULL,
  `NIK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NamaKaryawan` varchar(100) NOT NULL,
  `Bagian` varchar(100) NOT NULL,
  `TempatLahir` varchar(100) NOT NULL,
  `TanggalLahir` date NOT NULL,
  `JenisKaryawanID` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TanggalMasuk` date NOT NULL,
  `TanggalKeluar` date NOT NULL,
  `JabatanAkhir` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N',
  `SEO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sudah_Kirim_Email` enum('Y','N') NOT NULL DEFAULT 'N',
  `StatusID` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `TanggalKirim` datetime DEFAULT NULL COMMENT '0=belum dikirim ke manager,1=sudah dikirim kemanager,2=sudah disetujui manager, 3=ditolak 	',
  `TanggalSetujui` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_pengalaman_kerja`
--

INSERT INTO `surat_pengalaman_kerja` (`ID`, `SuketPengalamanID`, `NIK`, `NamaKaryawan`, `Bagian`, `TempatLahir`, `TanggalLahir`, `JenisKaryawanID`, `TanggalMasuk`, `TanggalKeluar`, `JabatanAkhir`, `created_at`, `updated_at`, `NA`, `SEO`, `Email`, `Sudah_Kirim_Email`, `StatusID`, `TanggalKirim`, `TanggalSetujui`) VALUES
(1, '001/RSAB-PKU/SDM/SPK/04.2022', NULL, 'YUSRIZAL', 'IT', 'BINJAI', '1987-06-17', '1', '2009-04-01', '2022-04-27', 'IT Pelaksana', '2022-04-27 05:04:06', '2023-08-11 09:14:12', 'N', 'DF253eLTxYgYm5ElMfpFYP0WLphSIJqxIBRdBi0LiBb2dtuhvLzJqCmHNI8D', 'yusrizals020317061987@gmail.com', 'Y', '0', NULL, NULL),
(2, '002/RSAB-PKU/SDM/SPK/04.2022', NULL, 'Andriani Natalia Simorangkir, S.Psi', 'SDM', 'Jambi', '1993-12-01', '1', '2018-06-01', '2022-04-27', 'SDM', '2022-04-27 05:20:45', '2022-04-27 05:20:45', 'N', 'diqkQ8OF4adhRzwbUh3qtphVeFviJSmx9BkXDPfIiXXv26JcLAkqD4GUSgHk', '', 'N', '0', NULL, NULL),
(3, '001/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Apt. Tri Suci Hendriani, S.Farm', 'Farmasi', 'Kencana', '1989-04-23', '1', '2013-04-01', '2022-05-20', 'Apoteker', '2022-05-20 04:22:10', '2022-05-20 04:22:10', 'N', '1gp1r66FZQXylKxu2KN7pKBCu3QOC6a7pP1fHAGzjIy3CZxULcrgpIRTKFGi', '', 'N', '0', NULL, NULL),
(4, '002/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Apt. Nurul Muthmainnah, S.Farm', 'Farmasi', 'Dabo Singkep', '1994-05-11', '2', '2019-04-01', '2022-05-31', 'Apoteker', '2022-05-20 09:23:24', '2022-05-20 09:23:24', 'N', 'w3H2JVNar0gyGnHDTlbKdnkmqaokM6mEd7F2p7WwDwhwgIfi8J3vD9Bklnu2', '', 'N', '0', NULL, NULL),
(5, '003/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Ns. Lisma Wati, S.Kep', 'Keperawatan - Bougenville', 'Buana Makmur', '1996-09-28', '2', '2021-06-01', '2022-05-31', 'Perawat Pelaksana', '2022-05-20 09:25:37', '2022-05-20 09:25:37', 'N', 'sssYoozq32a7anMSwh0huEdfj0brVqxB4DSmdeHSNgh3zy0N8FkN6g30BIx0', '', 'N', '0', NULL, NULL),
(6, '004/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Reni Seprayana', 'Marketing - Admission', 'Pekanbaru', '1982-09-09', '1', '2011-01-01', '2022-05-21', 'Staf Admission', '2022-05-20 09:29:49', '2022-05-20 09:29:49', 'N', 'jXAVBMgaRbyyQ3himMbhuV8T7GUJ4kMziKqDHBM9U2tOVqveHZfhUsxmrmzQ', '', 'N', '0', NULL, NULL),
(7, '005/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Monica Dean Maulia, S.Tr.Gz.', 'Penunjang Medis - Gizi', 'Padang', '1997-07-17', '2', '2021-06-01', '2022-05-31', 'Ahli Gizi', '2022-05-20 09:32:22', '2022-05-20 09:32:22', 'N', 'i2zlktKUH0NZR4ksPsDZAIgDJsVMiMzwxKjuFsGBMTHUg3LVz7yWO0Pf8cfR', '', 'N', '0', NULL, NULL),
(8, '006/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Lovina Anugrah, A.Md', 'Keuangan', 'Pekanbaru', '1997-03-08', '2', '2019-03-01', '2022-05-20', 'Kasir', '2022-05-31 02:58:53', '2022-05-31 02:58:53', 'N', '1WBN0pWX0laLNGWXOP00XAOjPs6nDgCgi2DZTwO7shbRc1xfqKuRQ32qXy4S20220531095853', '', 'N', '0', NULL, NULL),
(9, '007/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Alfi Syukrina, Amd.KG', 'Keperawatan - Poliklinik', 'Padang', '1990-12-20', '1', '2013-07-01', '2022-05-31', 'Perawat Pelaksana', '2022-05-31 03:03:18', '2022-05-31 03:03:18', 'N', 'pS69ZNKZrY6pAk1GTJmNieo0xDtPugMHuR7cA0GISultQ9VRBPBy9SfSrQRQ20220531100318', '', 'N', '0', NULL, NULL),
(10, '008/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Ns. LAVELIA ANJELINA, S.Kep', 'Keperawatan - Orchid', 'Lubuk Tarok', '1994-07-28', '2', '2019-05-01', '2022-05-31', 'Perawat Pelaksana', '2022-05-31 03:05:48', '2022-05-31 03:05:48', 'N', 'F2LSX0s6jWlZJMlzdEKirmAyqY492atpGQZfKlHoRZpnogFSwbqqmwegFg9v20220531100548', '', 'N', '0', NULL, NULL),
(11, '009/RSAB-PKU/SDM/SPK/05.2022', NULL, 'Ofylia Tiara Santi', 'Penunjang Medis - Laboratorium', 'Rengat', '1999-02-16', '2', '2021-06-01', '2022-05-31', 'Analis Kesehatan', '2022-05-31 03:08:43', '2022-05-31 03:08:43', 'N', 'tYxmzmSYI1NOtyEAo1SWr1KAN14XRvFcHq4bq0zLbyzjTXYOlyIEy53tLR9420220531100842', '', 'N', '0', NULL, NULL),
(12, '001/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Apt. Nisi Anjalina Fitri, S.Farm', 'Farmasi', 'Pekanbaru', '1997-03-03', '2', '2021-06-01', '2022-05-31', 'Apoteker', '2022-06-20 07:48:22', '2022-06-20 07:50:31', 'N', 'nSZ6LnDn9GqAv5ZtRgNtYdaARvRT7FqfXUbGURdnygjNEgdGqRUh2dGM9cy520220620144821', '', 'N', '0', NULL, NULL),
(13, '002/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Wedi Prayoga, S.S.T', 'Laboratorium', 'Koto Baru', '1996-01-03', '2', '2020-10-12', '2022-06-20', 'Analis Kesehatan', '2022-06-21 01:19:33', '2022-06-21 01:19:33', 'N', '4V1N4wMVvDkVawpax6mqYu0bZCUZD5SHZTVqN6R6gtXN7LgaDLJ5gKud2vMT20220621081933', '', 'N', '0', NULL, NULL),
(14, '003/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Fikri Aziz, ST. Informatika', 'Laboratorium', 'Pekanbaru', '1985-09-23', '2', '2020-10-12', '2022-06-20', 'Admin Laboratorium', '2022-06-21 01:21:04', '2022-06-21 01:45:27', 'N', 'gvanxUC1dAkLeQYqhG8zJ3ucF00pYxduzo7eNcvixgdCGBOktZnhsq87pTpg20220621082104', '', 'N', '0', NULL, NULL),
(15, '004/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Indria, S.Tr.Kom', 'Laboratorium', 'Duri', '1997-06-17', '2', '2020-10-12', '2022-06-20', 'Admin Laboratorium', '2022-06-21 01:23:00', '2022-06-21 01:46:53', 'N', 'yls1tOxngMswZPc1hnfu0jG1fDMOXIzJFVUknSgBqYozeKw670fHG0T2wCIb20220621082300', '', 'N', '0', NULL, NULL),
(16, '005/RSAB-PKU/SDM/SPK/06.2022', NULL, 'SUTRIANI MULIA', 'Gizi', 'Pekanbaru', '1977-03-19', '1', '1998-07-15', '2022-06-30', 'Distribusi Gizi', '2022-06-29 08:03:37', '2022-06-29 08:03:37', 'N', 'CRxjZaEBCPi3T7ACh2Vgj3FLaJXtkqcZrXk7kMH7EumSf1ZIsL3a5xlQI82k20220629150337', '', 'N', '0', NULL, NULL),
(17, '006/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Ns. Vandra Bedri Yenra, S.Kep', 'UGD', 'Ngalau Gadang', '1991-06-01', '1', '2017-02-01', '2022-06-30', 'Perawat Pelaksana', '2022-06-29 08:05:59', '2022-07-01 04:10:20', 'N', 'y7y6KeiN5m6DmjZR1ZcFfcOrKgErKzVlC5yRGmrDWvfgUtBIJB4Glee3pGZj20220629150559', '', 'N', '0', NULL, NULL),
(18, '007/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Ns. Bella Andini, S.Kep', 'Bougenville', 'Koto Agung', '1995-10-20', '2', '2020-07-01', '2022-06-30', 'Perawat Pelaksana', '2022-06-29 08:13:51', '2022-06-29 08:13:51', 'N', 'vWyWTLn9JM2nN4iE4nMnXRE1zeniSHP1AJdYsnszbk4INLrOrI79A2yCY1RL20220629151351', '', 'N', '0', NULL, NULL),
(19, '008/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Ns. Rany Dwi Lestari', 'Rose', 'Air Emas', '1996-07-15', '2', '2020-08-01', '2022-06-30', 'Perawat Pelaksana', '2022-06-29 08:21:37', '2022-06-29 08:21:37', 'N', 'iK2qhbjfFqOWF3X3Zg5WTRQ5kR4YxR0GLnkQ70pbhcDtBZOc7pmWIiqhtT1U20220629152137', '', 'N', '0', NULL, NULL),
(20, '009/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Ns. Faridha Jayanti, S.Kep', 'Sunflower', 'Batu Hampar', '1997-01-06', '2', '2021-03-01', '2022-06-30', 'Perawat Pelaksana', '2022-06-29 08:23:46', '2022-06-29 08:23:46', 'N', 'OMznQxlfzjGFeeUtfu9VGqzwCgtj1brVAyB70i8CtpedHQLwwDY6LnHaQIh120220629152346', '', 'N', '0', NULL, NULL),
(21, '010/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Dedi Kurniawan, S.S.T', 'Laboratorium', 'Perawang', '1995-04-18', '2', '2020-07-01', '2022-06-30', 'Analis Kesehatan', '2022-06-29 08:30:50', '2022-06-29 08:30:50', 'N', 'q9nQkcuoXFnKDDkjXm3z3q9fGc8KQG2McqNOZb3UCAADfhziYalRIi31eBel20220629153050', '', 'N', '0', NULL, NULL),
(22, '011/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Irut Selpia Sihombing, A.Md.AK', 'Laboratorium', 'Selat Panjang', '1999-08-22', '2', '2021-07-01', '2022-06-30', 'Analis Kesehatan', '2022-06-29 08:32:17', '2022-06-29 08:32:17', 'N', 'YDHScsepyWNXNFP16Pev0uwPTn2tyRNKsAZwX7cvxL0BVfNgpL12g9SPfmUB20220629153217', '', 'N', '0', NULL, NULL),
(23, '012/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Eeng Nopita Sari, A.Md.Kes', 'Laboratorium', 'Pisang Berebus', '1999-10-07', '2', '2021-07-01', '2022-06-30', 'Analis Kesehatan', '2022-06-29 08:33:57', '2022-07-01 07:19:03', 'N', 'wffip7kni5KTu63Mp8gX4T186jTSHDn9llR1UiStSsoAjGVMChCanaxwMVJp20220629153357', '', 'N', '0', NULL, NULL),
(24, '013/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Sekar Lerian, A.Md.Kes', 'Laboratorium', 'Tebing Tinggi', '1998-12-19', '2', '2021-07-01', '2022-06-30', 'Laboratorium', '2022-06-29 08:36:30', '2022-06-29 08:36:30', 'N', 'VCdGrpebV25ehXRmGJVVkAuifbBPjZpxKPfF0fMntrwBTJKIYybjYvDsob8C20220629153630', '', 'N', '0', NULL, NULL),
(25, '014/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Yola Reskia Chania', 'Laboratorium', 'Pekanbaru', '1997-09-06', '2', '2021-07-01', '2022-06-30', 'Analis Kesehatan', '2022-06-29 08:37:26', '2022-06-29 08:37:26', 'N', 'n9nkuZrpkJA8MnDlrQR9xRRDUQOINzNjxz8ROUmA80EL5YTLcEtiTMJGwlxH20220629153726', '', 'N', '0', NULL, NULL),
(26, '015/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Felia Winni Dwi Husna', 'Laboratorium', 'Simpang Perak Jaya', '1999-05-27', '2', '2021-07-01', '2022-06-30', 'Analis Kesehatan', '2022-06-29 08:41:26', '2022-06-29 08:41:26', 'N', 'j3fWDTnNcmI3yO1EryN3P9kRpY2XrZ95eEmX8mj5N7zQ6hwp2aZJp8odJQ1l20220629154126', '', 'N', '0', NULL, NULL),
(27, '016/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Intan Permata Sari, S.Tr.Kes', 'Laboratorium', 'Kampung Pulau', '1997-12-25', '2', '2021-07-01', '2022-06-30', 'Analis Kesehatan', '2022-06-29 08:43:22', '2022-06-29 08:43:22', 'N', 'vYQkOEWqW6hlOw9n3uk2xjkE67lugV8751WOAas8vOH0x8kQJYxpn2E8NKFd20220629154322', '', 'N', '0', NULL, NULL),
(28, '017/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Endang Istiani, A.Md.A.K', 'Laboratorium', 'Batas', '1994-12-29', '2', '2022-01-07', '2022-06-30', 'Analis Kesehatan', '2022-06-29 08:48:01', '2022-06-29 08:48:01', 'N', 'xR4o94Y48lG6HzT2kNMArKeBrLVCAigvmwnzpVI3WT5iY8mjtyV2ZqgnZ1f920220629154800', '', 'N', '0', NULL, NULL),
(29, '018/RSAB-PKU/SDM/SPK/06.2022', NULL, 'YUSUF WARUWU', 'Maintenance', 'Gunung Sitoli', '1972-06-07', '1', '1998-09-01', '2022-06-30', 'Kepala Unit Maintenance', '2022-06-30 01:21:37', '2022-06-30 01:30:10', 'N', '77zO3ggd2ZW9tSp0QFb7qlCj8DCiRW53GWQEapthCY1q4FdctJADhXc2VcHm20220630082137', '', 'N', '0', NULL, NULL),
(30, '019/RSAB-PKU/SDM/SPK/06.2022', NULL, 'Riswanto', 'Security & Transportasi', 'Surakarta', '1972-06-22', '1', '2002-08-01', '2022-06-30', 'Kepala Unit Security & Transportasi', '2022-06-30 01:29:52', '2022-06-30 01:29:52', 'N', 'qttmlVi16SmuoZAT8BtkQ1CRFNiga0Nf4R2w3nc13Jt28WDeDX96SIzF1G8020220630082952', '', 'N', '0', NULL, NULL),
(31, '001/RSAB-PKU/SDM/SPK/07.2022', NULL, 'Apt. Ena, S.Farm', 'Farmasi', 'Tanjung Balai', '1995-05-05', '1', '2020-03-01', '2022-07-21', 'Apoteker', '2022-07-21 02:04:23', '2022-07-21 02:04:23', 'N', 'QE8oYZ1qZCZS6Qm0ppSd5mnckCbZAN424L86Twfs9ltIOz6n9zljy2kPGVPm20220721090423', '', 'N', '0', NULL, NULL),
(32, '001/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Yusuf Waruwu', 'Maintenance', 'Gunung Sitoli', '1972-06-07', '1', '1998-09-01', '2022-07-31', 'Kepala Unit Maintenance', '2022-08-01 01:36:04', '2022-08-01 01:36:04', 'N', 'fivkBTYLwIXpbXhVd4omRQYFmi3WWctF3r2lzZ6aCHNCrss0K0tOAaMCxB3z20220801083604', '', 'N', '0', NULL, NULL),
(33, '002/RSAB-PKU/SDM/SPK/08.2022', NULL, 'dr. Ahmad Fadhlan', 'Dokter Umum', 'Koto Baru', '1989-09-10', '1', '2016-06-01', '2022-07-31', 'Dokter Umum', '2022-08-01 01:40:19', '2022-08-01 01:40:19', 'N', 'QvRXm1RfSofwDGi9JWWMQhaFDresG4e4TSQAaomziOv7cM5nQ7EsMsYkONNU20220801084019', '', 'N', '0', NULL, NULL),
(34, '003/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Ns. Syafrida Hanum, S.Kep', 'Komite Keperawatan', 'Medan', '1992-08-01', '1', '2016-07-01', '2022-07-31', 'Staf Komite Keperawatan', '2022-08-01 01:42:41', '2022-08-01 01:42:41', 'N', 'QM5Gu2neU1FjawiRg6yu0thTTXp3sARknVncusxBQw0q3s5ZpZkF0gxr1eqa20220801084240', '', 'N', '0', NULL, NULL),
(35, '004/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Ns. Faishal Bagas Pamungkas, S.Kep', 'CVCU', 'Magelang', '1993-03-01', '2', '2021-08-01', '2022-07-31', 'Perawat Pelaksana', '2022-08-01 01:46:26', '2022-08-01 01:46:26', 'N', 'fzqKa7OOo3wjrdt31SgwZroaC3WyLyiGREE9li0e1wEPyP4g6KN00BW6DvEM20220801084626', '', 'N', '0', NULL, NULL),
(36, '005/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Ns. Rani Puji Lestari.AS, S.Kep', 'Rose', 'Purworejo', '1993-11-14', '2', '2019-08-01', '2022-07-31', 'Perawat Pelaksana', '2022-08-01 01:54:08', '2022-08-01 01:54:08', 'N', 'weRz1ZnsFepUxjduyRYynbEIbB1t9eGbLk9ibcc8kKC87N9gQbFAAiLwwp6I20220801085408', '', 'N', '0', NULL, NULL),
(37, '006/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Ns. Regina Daulia Putri, S.Kep', 'Lily', 'Muaro Tombang', '1994-07-08', '1', '2020-02-01', '2022-07-31', 'Perawat Pelaksana', '2022-08-01 01:59:43', '2022-08-01 01:59:43', 'N', 'iAVL68fvWndvyySzYV0tSZhcAhHm8TlOxFCwVxpzDBiOJSNcZumtcCGVL8hW20220801085943', '', 'N', '0', NULL, NULL),
(38, '007/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Ns. Lely Armanda Unduk Roha Br Purba, S.Kep', 'Tulip', 'Air Putih', '1997-09-17', '2', '2021-08-01', '2022-07-31', 'Perawat Pelaksana', '2022-08-01 02:04:49', '2022-08-01 02:04:49', 'N', 'pm5tk4H5XvqdQHz8CBeIUA0TsAmDm0agrXN45LezEn5Rdl3EPGDO06vA77nu20220801090449', '', 'N', '0', NULL, NULL),
(39, '008/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Apt. Riza Yulia Rezki, S.Farm', 'Farmasi', 'Pekanbaru', '1994-07-06', '2', '2019-08-01', '2022-07-31', 'Apoteker', '2022-08-01 02:08:12', '2022-08-01 02:08:12', 'N', 'puceIEp0irDXBNjcY61iWH1awFkoyLgbgPiOSlOx8664HbVb5rTJBHSuFNdZ20220801090812', '', 'N', '0', NULL, NULL),
(40, '009/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Hartina Yarni, A.Md.A.K', 'Laboratorium', 'Simpang Padang Bulan', '1996-11-24', '2', '2020-08-01', '2022-07-31', 'Analis Kesehatan', '2022-08-01 02:10:26', '2022-08-01 02:10:26', 'N', 'J7wfmRfNKXD0O19PHJtTT8InP4pW4QqOXXs6WefwoICJtKCHiiEgbtRK1wQV20220801091026', '', 'N', '0', NULL, NULL),
(41, '010/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Putri Ayu Hayusi, Amd.AK', 'Laboratorium', 'Kampar', '1995-08-03', '2', '2020-08-01', '2022-07-31', 'Analis Kesehatan', '2022-08-01 02:13:27', '2022-08-01 02:13:27', 'N', 'KnaoBxZaiub0mc7efSuoyVhHTN1xda4R8CG0UWnMGnowfW9k1u9nxC8lmmy320220801091327', '', 'N', '0', NULL, NULL),
(42, '011/RSAB-PKU/SDM/SPK/08.2022', NULL, 'dr. Andralia Mayang Sasati', 'Dokter Umum', 'Jakarta', '1995-08-29', '2', '2021-08-01', '2022-07-31', 'Dokter Umum', '2022-08-01 02:15:26', '2022-08-01 02:15:26', 'N', 'SgFj1HYp34YSlQONzHC4nCSIqhtPOswtSsBWVlDtmdz3ysnZ72qqZfQ71sbi20220801091526', '', 'N', '0', NULL, NULL),
(43, '012/RSAB-PKU/SDM/SPK/08.2022', NULL, 'Ela Agustina, A.Md.A.K', 'Laboratorium', 'Pekanbaru', '1995-08-20', '2', '2020-08-01', '2022-07-31', 'Analis Kesehatan', '2022-08-02 04:19:16', '2022-08-02 04:19:16', 'N', 'KCooE4trLiYgRPtA8MBHm52Wkp2xeV6pS4NFWc2x10KoZi1sW2IZtuQJLnSc20220802111916', '', 'N', '0', NULL, NULL),
(44, '001/RSAB-PKU/SDM/SPK/09.2022', NULL, 'dr. Eza Nia Pratiwi', 'Casemix', 'Tanjung Pinang', '1990-09-08', '2', '2021-07-01', '2022-08-31', 'Staf Casemix', '2022-09-05 01:18:18', '2022-09-05 01:18:18', 'N', 'bT1ZLiMWmVqjcVcmwNF23LsgJgemVXfIbHFHjKf00HOyPX4LMJsBZ2BPE8xL20220905081818', '', 'N', '0', NULL, NULL),
(45, '002/RSAB-PKU/SDM/SPK/09.2022', NULL, 'Harneti', 'Orchid', 'Pemalang', '1976-03-31', '1', '2002-01-08', '2022-08-31', 'Perawat Pelaksana', '2022-09-05 01:19:59', '2022-09-29 03:32:39', 'N', 'YLBg549l9Rh7icypwDIlwWoJQKK3Qek8z7YzsDbeEFjjNjhhM0vTtS9bSz2a20220905081959', '', 'N', '0', NULL, NULL),
(46, '003/RSAB-PKU/SDM/SPK/09.2022', NULL, 'Ns. Fani Rahma Yunita Sari, S.Kep', 'Lily', 'Lubuk ALung', '1991-07-26', '1', '2020-07-01', '2022-08-31', 'Perawat Pelaksana', '2022-09-05 01:27:22', '2022-09-05 03:55:29', 'N', '4u1I3T4KbVZ6IZcEziN2ikFuGNHvgXE7uZf25JJFHqtk57sVb8PxVm59YVpt20220905082722', '', 'N', '0', NULL, NULL),
(47, '004/RSAB-PKU/SDM/SPK/09.2022', NULL, 'Ns. Rika Marlina, S.Kep', 'Lily', 'Pekanbaru', '1995-08-14', '2', '2020-08-01', '2022-08-31', 'Perawat Pelaksana', '2022-09-05 01:29:34', '2022-09-05 01:29:34', 'N', 'AfXydrOZXgaMEasuPsU3ZDGDitT2mIp6KWAzbSY33xhf9fCipIhlaEo8SQHd20220905082934', '', 'N', '0', NULL, NULL),
(48, '005/RSAB-PKU/SDM/SPK/09.2022', NULL, 'Amira Salsabila Alamsyah, A.Md.Kep', 'UGD', 'Bukittinggi', '1999-09-23', '2', '2021-09-01', '2022-08-31', 'Perawat Pelaksana', '2022-09-05 01:31:39', '2022-09-05 01:31:39', 'N', 'zWTJvFM1r77JQWX7D2AUsmbZ1g5URAcDTNkwBMIExHkmYdGVpXA6jp54cck520220905083139', '', 'N', '0', NULL, NULL),
(49, '006/RSAB-PKU/SDM/SPK/09.2022', NULL, 'Irma Indriani Asty. W, A.Md.Kes', 'Laboratorium', 'Rumbai', '1998-04-08', '2', '2021-09-01', '2022-08-31', 'Analis Kesehatan', '2022-09-05 02:04:22', '2022-09-05 02:04:22', 'N', 'fUaH7EsxH1CS2Wl7Qp0jywC9j7d0jeMEkH7Fbffwmlj2lPElVC4Tv4AH7tcR20220905090422', '', 'N', '0', NULL, NULL),
(50, '007/RSAB-PKU/SDM/SPK/09.2022', NULL, 'Gusvianti', 'Gizi', 'Bukittinggi', '1972-08-14', '1', '1998-07-27', '2022-08-31', 'Distribusi Gizi', '2022-09-07 01:09:46', '2022-09-07 01:09:46', 'N', 'okVPcQTYHYZEE7ZmBele8KrETns32fyruMojFFtOU2793DaokX2JLJiB3oP220220907080946', '', 'N', '0', NULL, NULL),
(51, '008/RSAB-PKU/SDM/SPK/09.2022', NULL, 'dr. Manzilina Mudia', 'Dokter Umum', 'Pekanbaru', '1994-12-26', '2', '2022-07-04', '2022-09-03', 'Dokter Umum', '2022-09-08 01:12:49', '2022-09-08 01:12:49', 'N', 'XTM60iCmQffhJPWLYOGgMMAdPEdwu9liEPzst5ATEDFNp8TwmizrS57VaKfz20220908081249', '', 'N', '0', NULL, NULL),
(52, '009/RSAB-PKU/SDM/SPK/09.2022', NULL, 'Beni Fajri', 'Admission', 'Katiagan', '1991-06-06', '1', '2013-03-01', '2022-09-07', 'Admission', '2022-09-14 03:43:32', '2022-09-14 03:43:32', 'N', 'T4rN8pOU47wErIJzbxy9O6XimLdpjmMh0oA9sfg5DXV5llzas2yvWi6vrc9q20220914104332', '', 'N', '0', NULL, NULL),
(53, '010/RSAB-PKU/SDM/SPK/09.2022', NULL, 'dr. Eza Nia Pratiwi', 'Casemix', 'Tanjung Pinang', '1990-09-08', '2', '2021-07-01', '2022-09-20', 'Dokter Casemix', '2022-09-20 02:53:56', '2022-09-20 02:53:56', 'N', 'Jo3bp4oYFCBFy5f8FWogRKeqZo6odh0iqqtj4VI6ERg7Fcu7vnrGjCtSHXlq20220920095356', '', 'N', '0', NULL, NULL),
(54, '011/RSAB-PKU/SDM/SPK/09.2022', NULL, 'Ns. Dani Reovicasari, S.Kep', 'Poliklinik', 'Jember', '1993-01-28', '2', '2021-05-01', '2022-09-30', 'Perawat Pelaksana', '2022-09-29 03:30:20', '2022-09-29 03:30:20', 'N', 'lwh15CoIZt8D9d2gdm0ShJl9boBtnm1mYImt213hGutXQbGKeTeSlDH7op6820220929103020', '', 'N', '0', NULL, NULL),
(55, '001/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Ns. Rika Marlina, S.Kep', 'Lily', 'Pekanbaru', '1995-08-14', '2', '2020-08-01', '2022-09-21', 'Perawat Pelaksana', '2022-10-04 04:31:39', '2022-10-04 04:31:39', 'N', 'FcMCLQyY5ZdYnNzjXG7mODU2YsJXVRiFRfHLsZy1sOP6MkBxAqYS6DENXj5820221004113139', '', 'N', '0', NULL, NULL),
(56, '002/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Resti Gusnita, A.Md.Kep', 'Bougenville', 'Marambuang', '1993-08-08', '2', '2021-10-01', '2022-09-30', 'Perawat Pelaksana', '2022-10-04 04:33:10', '2022-10-04 04:33:10', 'N', 'YYWQs5QO6XqrXNR2qIJSwHlgw6MhnMIdYYHAban9NnWrfaNMMSK0uZrYjfiP20221004113310', '', 'N', '0', NULL, NULL),
(57, '003/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Ns, Nurpaddillah, S.Kep', 'Sunflower', 'Ranah', '1995-11-18', '2', '2020-10-01', '2022-09-30', 'Perawat Pelaksana', '2022-10-04 04:35:02', '2022-10-04 04:35:02', 'N', 'z7HU7OQ1KdyiH4X1ptVCoO2yQ5JOZL8EBiFDflgPhoZTVsrsmOHMm9vpUbBc20221004113502', '', 'N', '0', NULL, NULL),
(58, '004/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Apt. Desi Agni Mutia, S.Farm', 'Farmasi', 'Majalengka', '1992-12-05', '1', '2019-03-01', '2022-09-21', 'Apoteker', '2022-10-04 04:36:43', '2022-10-04 04:36:43', 'N', '7PNv1KHPIVTcv1HW0Uh4dp862UGHl4Y042ENSX8o1Kt7btTkbzdmhTLKY15I20221004113643', '', 'N', '0', NULL, NULL),
(59, '005/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Ardhika Shandy, Amd.Farm', 'Farmasi', 'Tembilahan', '1997-12-15', '2', '2020-09-01', '2022-09-21', 'Asisten Apoteker', '2022-10-04 04:38:14', '2022-10-04 04:38:14', 'N', 'kEfsXPx6hnSqfJ3JYOymzVjc8m09Y5OCdvkuy6QPGNzRcuR14Q2sCPDXh7GC20221004113813', '', 'N', '0', NULL, NULL),
(60, '006/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Nindy Mentari Cahyani, S.E', 'Akuntansi', 'Pekanbaru', '1997-12-23', '2', '2021-10-01', '2022-09-30', 'Staf Account Receivable', '2022-10-04 04:39:54', '2022-10-04 04:39:54', 'N', 'HVqR5QXvVSPJ6X2ktYZesmjThLGg3ESOSaW9DmbM8Ns1moMdgJABVmw6Aurj20221004113954', '', 'N', '0', NULL, NULL),
(61, '007/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Ardiansyah Ritonga', 'Laboratorium', 'Bangko Jaya', '1998-09-19', '2', '2020-10-01', '2022-09-30', 'Admin Laboratorium', '2022-10-04 04:41:04', '2022-10-04 04:41:04', 'N', 'lTgO4Of9Fsggo85csVonv6NYd6jrIAyBZ3cdaAowmvICz5VVvxlZTzjPUO4r20221004114104', '', 'N', '0', NULL, NULL),
(62, '008/RSAB-PKU/SDM/SPK/10.2022', NULL, 'dr. Rizqina Putri', 'IMC & CVCU', 'Padang', '1993-04-17', '1', '2018-08-01', '2022-09-30', 'Dokter Penanggung Jawab IMC & CVCU', '2022-10-14 01:41:40', '2022-10-14 01:48:03', 'N', 'eWYV9W8rNeTCny4X9PBoeqnVwVxmPZRhpaO85mlGMSsQzyv9LFO1KA6y2ktp20221014084140', '', 'N', '0', NULL, NULL),
(63, '009/RSAB-PKU/SDM/SPK/10.2022', NULL, 'dr. Muthia Azzira Palupi', 'Dokter Umum', 'Bukittinggi', '1996-07-18', '2', '2021-11-01', '2022-10-31', 'Dokter Umum', '2022-10-28 04:18:08', '2022-10-28 04:18:08', 'N', 'M4dUV01MtourcPRcWK2tqrImzK5MfCyaRn6PWPnvSwT35STrUdEuDgw8oYPR20221028111808', '', 'N', '0', NULL, NULL),
(64, '010/RSAB-PKU/SDM/SPK/10.2022', NULL, 'dr. Adela Widi Etania', 'Dokter Umum', 'Padang', '1997-12-04', '2', '2021-11-01', '2022-10-31', 'Dokter Umum', '2022-10-28 04:19:52', '2022-10-28 04:19:52', 'N', '4h5lzMuVm9pgQhgj0GHBmzLO8RewsYORCRfmrjWfiNfJE40HRMvna48kdBTs20221028111952', '', 'N', '0', NULL, NULL),
(65, '011/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Ns. Ruli Irawan Kurdiono, S.Kep', 'Kamar Bedah', 'Lombok Tengah', '1992-01-02', '1', '2017-01-01', '2022-10-31', 'Perawat Pelaksana', '2022-10-28 04:36:21', '2022-10-28 04:36:21', 'N', 'T93caIZvHhShMUI9g1F6LMlMXx9h2pljjiegl686uKjpayNlMTznCvYsXXL220221028113621', '', 'N', '0', NULL, NULL),
(66, '012/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Apt. Khori Yasnita, S.Farm', 'Farmasi', 'Tanjung Pinang', '1995-01-29', '1', '2020-02-01', '2022-10-31', 'Apoteker', '2022-10-28 04:37:37', '2022-10-28 04:37:37', 'N', 'SzjyQkF8SBi41NrwEOtmBN2czqzTCgCn5zNAGV3tS3ieFr6tiHXSG1E9g5rE20221028113737', '', 'N', '0', NULL, NULL),
(67, '013/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Apt. Gusty Rahma Yuni, S.Farm', 'Farmasi', 'Batusangkar', '1993-08-06', '2', '2020-11-01', '2022-10-31', 'Apoteker', '2022-10-28 04:39:21', '2022-10-28 04:39:21', 'N', 'ukLGErFCgFTfYrRxG6yxQVo0s2jBwTj34PulowfQd7y2zSDH3tsvtRv1hxkC20221028113921', '', 'N', '0', NULL, NULL),
(68, '014/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Apriko Jauwahir, S.Farm.', 'UPF', 'TJ. Balai Karimun', '1997-04-04', '1', '2020-02-01', '2022-10-31', 'Staf UPF', '2022-10-28 04:43:53', '2022-10-28 04:43:53', 'N', 'FDtNU13AuGo6wv3pvPqdusYv8zNQAJ1UcGkgdmJBWr4DVGirERSxvki7dc4T20221028114353', '', 'N', '0', NULL, NULL),
(69, '015/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Risma Yanti Arlian, S.Farm.', 'Farmasi', 'Buatan II', '1998-10-14', '2', '2021-11-01', '2022-10-31', 'Asisten Apoteker', '2022-10-28 04:54:59', '2022-10-28 04:55:45', 'N', '8USzLZ08QJLQBWfc87kvhjoEb1dpJL1DadCq5sB5kogoWvFTQBagNTGwoaI920221028115459', '', 'N', '0', NULL, NULL),
(70, '016/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Tetty Suryanti Simamora, S.Farm.', 'Farmasi', 'Medan', '1997-09-29', '2', '2021-11-01', '2022-10-31', 'Asisten Apoteker', '2022-10-28 04:57:12', '2022-10-28 04:57:12', 'N', 'p2Pm9FC5FdgXAdlAcgoNFVIObBs7u3K1ZZ4lRPMqYsjPuGaCcRa7piFcAhmw20221028115712', '', 'N', '0', NULL, NULL),
(71, '017/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Jumiati Suryani, A.Md.Gz', 'Gizi', 'Pekanbaru', '1994-05-06', '1', '2016-05-01', '2022-10-20', 'Ahli Gizi', '2022-10-28 07:49:48', '2022-10-28 07:51:47', 'N', '8lpv89wond6nETPhY3ONPlMd08eeJN9ikQqYQ9SvUH0Ab94WNMJPQEUqoEkH20221028144948', '', 'N', '0', NULL, NULL),
(72, '018/RSAB-PKU/SDM/SPK/10.2022', NULL, 'Indra Maizon', 'Gizi', 'Padang', '1982-07-03', '1', '2017-10-01', '2022-10-20', 'Pemasak', '2022-10-28 07:51:27', '2022-10-28 07:51:27', 'N', 'joQiqFYMYelmSzULD6b6wu2o1bufRM47dq8m9Anmy6jSTaiuUZ5Rf9iZIqkQ20221028145127', '', 'N', '0', NULL, NULL),
(73, '001/RSAB-PKU/SDM/SPK/11.2022', NULL, 'Farisi Al -  Ayyubi', 'Maintenance', 'Duri', '1992-10-26', '1', '2019-03-01', '2022-10-31', 'Pjs Kanit Maintenance', '2022-11-02 04:28:39', '2022-11-02 04:28:39', 'N', 'mSJX7Ie7C4IOozQ1HXCC58mKdE2KrZmnpGNhNqG8U2WB1UKIomjaivnAOLWm20221102112839', '', 'N', '0', NULL, NULL),
(74, '002/RSAB-PKU/SDM/SPK/11.2022', NULL, 'dr. Yunita Maharani Burhan', 'Dokter Umum', 'Pekanbaru', '1995-06-12', '2', '2021-08-01', '2022-10-31', 'Dokter Umum', '2022-11-02 04:29:57', '2022-11-02 04:29:57', 'N', 'SkujNvlizexyKTQLUp6M9zWX3acRBqvB9Y9ZAagWOCVvPsVcghJDpcPA06ZW20221102112956', '', 'N', '0', NULL, NULL),
(75, '003/RSAB-PKU/SDM/SPK/11.2022', NULL, 'Desi Hendriyani', 'Gizi', 'Pekanabaru', '1989-12-15', '1', '2011-08-01', '2022-10-31', 'Distribusi Gizi', '2022-11-02 04:31:15', '2022-11-02 04:31:15', 'N', 'Ho4E0qwbPd32nviIzWwEf1lhevoWwNyFgqzfi6nHO2dVQIY3lGQb40LdtmtM20221102113115', '', 'N', '0', NULL, NULL),
(76, '004/RSAB-PKU/SDM/SPK/11.2022', NULL, 'Selvi Widiawati, A.Md.Farm.', 'Farmasi', 'Concong Luar', '2000-01-10', '2', '2022-04-01', '2022-11-21', 'Asisten Apoteker', '2022-11-29 03:12:04', '2022-11-29 03:12:04', 'N', '8PqDuCMslZlWhTnoCfKqFQeDqU5US2zCxDhBZe5NU5TsSWA0gofjI5VhBGPf20221129101204', '', 'N', '0', NULL, NULL),
(77, '001/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Vivi Febriyani, Amd.Kep', 'Poliklinik', 'Pekanbaru', '1988-02-02', '1', '2011-04-01', '2022-11-13', 'Perawat Pelaksana', '2022-12-05 01:02:11', '2022-12-05 01:17:08', 'N', 'KKOwccCnpBzVsaY9rI1iUum6STcQgUZ2aB8MOVEAKAJ5tHUY22xvmgoTWPDC20221205080211', '', 'N', '0', NULL, NULL),
(78, '002/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Ns. Nadiatul Mardiah, S.Kep', 'ICU/PICU', 'Sulit Air', '1990-08-28', '1', '2020-01-01', '2022-11-21', 'Perawat Pelaksana', '2022-12-05 01:04:27', '2022-12-05 01:04:27', 'N', 'JmVQoNbJ5Y2RPv4Ag7qkfDE1X0oeFBmNCMr0qlnRPaBfKhyp9OUtLvg3Snvs20221205080427', '', 'N', '0', NULL, NULL),
(79, '003/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Ns. Angi Nur Rizki, S.Kep', 'Crysant', 'Sungai Piring', '1994-05-27', '1', '2019-08-01', '2022-11-30', 'Perawat Pelaksana', '2022-12-05 01:09:33', '2022-12-05 01:09:33', 'N', 'FLfTwFf3u2FbIdah4JaYooXKLAY51cJjy5chuKW82Fmybi22ZrdceF45du3020221205080933', '', 'N', '0', NULL, NULL),
(80, '004/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Ns. Selly Veralestari. S.Kep', 'Bougenville', 'Tanjung Pati', '1994-09-11', '2', '2020-10-01', '2022-11-30', 'Perawat Pelaksana', '2022-12-05 01:13:21', '2022-12-05 01:13:21', 'N', 'SHdmNKl1nVCerjDvH9dh7SYA7f0airSf4X7wd4aQ1or6yqJLtO02gRduITlM20221205081321', '', 'N', '0', NULL, NULL),
(81, '005/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Ivana Fitricia Iryanto, Amd.Ak', 'Laboratorium', 'Padang', '1990-04-28', '1', '2011-03-01', '2022-11-30', 'Analis Kesehatan', '2022-12-05 01:15:48', '2022-12-05 01:15:48', 'N', 'Ip1zORvDL5g74n5oO6vYVRsMEeAjdkT8ihsRmsvT5MuGy1udGTlCoq9qfA1o20221205081548', '', 'N', '0', NULL, NULL),
(82, '006/RSAB-PKU/SDM/SPK/12.2022', NULL, 'dr. Dewi Esti Diantini', 'Dokter Umum', 'Bukittinggi', '1993-10-22', '1', '2020-03-01', '2022-11-30', 'Dokter Umum', '2022-12-05 02:08:45', '2023-01-17 02:03:49', 'N', 'kx4doBoafiCKKwilGHWrY1O7tM79MpWd1M12iczmoXnoRMX1aKD4oFaX54Rz20221205090845', '', 'N', '0', NULL, NULL),
(83, '007/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Ayu Annisa', 'Laboratorium', 'Pekanbaru', '1990-07-20', '1', '2017-10-01', '2022-12-20', 'Analis', '2022-12-27 01:35:50', '2022-12-27 04:43:03', 'N', 'dpWv8Bm0ytQ5YTJO9xaeq4xMQdtRU79PK6iYlxH1GPNpiv6Sz8wtJD32wYC520221227083550', '', 'N', '0', NULL, NULL),
(84, '008/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Juni Yanti Tampubolon', 'Sunflower', 'Pekanbaru', '1997-06-01', '2', '2022-01-01', '2022-12-31', 'Perawat', '2022-12-27 01:41:33', '2022-12-27 04:46:29', 'N', 'dKDyogXhcZc7nBmMjtsH3fJcydzn293aeuEmODEoeYEYMiHUJIe9xcDsIIXm20221227084133', '', 'N', '0', NULL, NULL),
(85, '009/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Tri Juliansyah', 'Diklat', 'Tembilahan', '1992-07-31', '1', '2017-10-01', '2022-12-11', 'Staf Diklat', '2022-12-27 01:46:05', '2022-12-27 06:30:25', 'N', 'aTkEszF0BnlNhZQLLXXfKbkCnIWcb0PsizyTDxl4ii9VdJTynmPap7OTscDN20221227084605', '', 'N', '0', NULL, NULL),
(86, '010/RSAB-PKU/SDM/SPK/12.2022', NULL, 'Ayuf Rahman', 'Keuangan', 'Bukittinggi', '1996-02-10', '2', '2021-01-01', '2022-11-30', 'Kasir', '2022-12-27 01:50:21', '2022-12-27 04:39:25', 'N', 'nXRTigQngIBLU2Vwk4hnxVPds5QMZSyspJdDtohPuKa5B58g9R73d6jaXbZz20221227085021', '', 'N', '0', NULL, NULL),
(87, '001/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Rudy Eka Putra', 'Endoscopy', 'Pekanbaru', '1972-12-22', '1', '1998-12-07', '2022-12-31', 'Perawat', '2023-01-02 01:58:43', '2023-01-02 01:58:43', 'N', 'zfJfDqm9xkU9WsqEqaPGXm07PcFKvbJJwiQM7Wx3JDNhFYc93b6zDPHp6WMe20230102085843', '', 'N', '0', NULL, NULL),
(88, '002/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Nurul Amalliya', 'Poliklinik', 'Pekanbaru', '1993-04-18', '2', '2020-12-01', '2022-12-31', 'Perawat', '2023-01-02 02:29:34', '2023-01-02 02:29:34', 'N', '8cUKcLQ2WXSF2RnEz5yTTg5sLis4jm6FNsyEeUZpRVkF8jzMuOZ8GFFjHzLD20230102092934', '', 'N', '0', NULL, NULL),
(89, '003/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Amelia Puspita Sari', 'Poliklinik', 'Padang Panjang', '1995-08-07', '2', '2021-12-01', '2023-01-02', 'Perawat', '2023-01-09 03:00:57', '2023-01-09 03:00:57', 'N', '8um71z5naWZUEWvWPNt7YeWnJYwfgOfMyhKqaMSs9sgdYS3JDPQQIFYux9nM20230109100057', '', 'N', '0', NULL, NULL),
(90, '004/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Piltra', 'UGD', 'Pintu Kuari', '1994-04-08', '1', '2019-05-01', '2022-12-01', 'Perawat', '2023-01-09 04:57:15', '2023-01-09 04:57:15', 'N', 'q7BYH8dXosYSqiGFJzxCwrWvC8FkM7M66bhe1ITcb4xvZZ2AI2c2RjC4qHkd20230109115715', '', 'N', '0', NULL, NULL),
(91, '005/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Neti Mariza', 'Gardenia & VK', 'Sekeladi', '1984-09-05', '1', '2010-02-01', '2022-12-01', 'Bidan', '2023-01-09 04:58:55', '2023-01-09 04:58:55', 'N', '0v22cDh2kL1RsO1PJchmC7tL8x5kcojHeKksBeJzFinf0bQaagdJB0voCJiV20230109115855', '', 'N', '0', NULL, NULL),
(92, '006/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Mardatila', 'Kesling', 'Balai Tengah', '1998-02-19', '2', '2021-04-01', '2023-01-01', 'Staf Kesling', '2023-01-09 05:00:06', '2023-01-09 07:42:19', 'N', '1eaHd8IE82PoizdbbTJigwXSs6KY9MD3OsAXtc72maINpIQiTh8lGUz4XQka20230109120006', '', 'N', '0', NULL, NULL),
(93, '007/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Muhammad Irfan', 'Farmasi', 'Pekanbaru', '1995-03-13', '1', '2016-05-01', '2023-01-21', 'Asisten Apoteker', '2023-01-09 07:44:51', '2023-01-09 07:44:51', 'N', 'k4rGs3J5oYUBuAZ37U6CYAwjImUgT8UgPUj6c32DPgBcXJfTk41ppST8BlrH20230109144451', '', 'N', '0', NULL, NULL),
(94, '008/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Leni Herawati', 'Marketing', 'Bukittinggi', '1979-06-23', '1', '2002-11-11', '2023-01-02', 'Koordinator Marketing', '2023-01-25 03:45:06', '2023-01-25 03:45:06', 'N', 'jB84ACgsLEYZu8yauUy9JGufVPyVRsrvvSvGFX7W0Z7vmpySsNn8MVtka9lC20230125104506', '', 'N', '0', NULL, NULL),
(95, '009/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Felia Maiza Ardila', 'Chrysant', 'Abai Siat', '1995-05-05', '1', '2020-03-01', '2023-01-21', 'Perawat', '2023-01-25 04:15:34', '2023-01-31 04:48:49', 'N', '43uylGxHm9f3gMMshYf9j0htPNtSn3ziknkCAkqTRZULqTh6Y6QIOm3WrLZG20230125111533', '', 'N', '0', NULL, NULL),
(96, '010/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Heru Embun Deswara', 'IT', 'Pekanbaru', '1991-12-13', '2', '2022-02-01', '2023-01-31', 'Teknisi IT', '2023-01-25 04:25:16', '2023-01-25 04:25:16', 'N', 'm7rfZEd4jZ4l2POwyFseFmL9u8mvE9xRjzH40yImtiZGWbd0l4vWzCOCcuR320230125112516', '', 'N', '0', NULL, NULL),
(97, '011/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Reny Lisanti', 'Marketing', 'Jakarta', '1973-01-11', '1', '2006-03-01', '2023-01-31', 'Staf Marketing', '2023-01-25 04:27:27', '2023-01-25 04:27:27', 'N', '0cDOrTi9aPKCigy3ySAvxO34qeXhMHTB0kuskVyxspcCmbUPhkHte5alC4SF20230125112727', '', 'N', '0', NULL, NULL),
(98, '012/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Angga Dwi Saputra', 'UGD', 'Bangun Rejo', '1994-08-07', '2', '2022-02-01', '2023-01-31', 'Perawat', '2023-01-30 03:22:05', '2023-01-30 03:22:05', 'N', 'TLWfTwgfWvyk49YcTm919sZCKjSKTa6kjidWhetAVOwrYx8TkDCkox2i0I0S20230130102205', '', 'N', '0', NULL, NULL),
(99, '013/RSAB-PKU/SDM/SPK/01.2023', NULL, 'dr. Dyoza Ashara Suciano Cinnamon', 'Dokter Umum', 'Jakarta', '1996-01-26', '2', '2021-07-01', '2023-01-31', 'Dokter Umum', '2023-01-30 03:25:17', '2023-01-30 03:26:35', 'N', '4pMZbb2OMKfXf1Suwl3M10aX4G0ybs1q7YAXs1L0SWtRa6tBSl3twwIZ11Nl20230130102516', '', 'N', '0', NULL, NULL),
(100, '014/RSAB-PKU/SDM/SPK/01.2023', NULL, 'dr. Nabiilah Aznesia', 'Dokter Umum', 'Pekanbaru', '1995-06-08', '2', '2022-02-01', '2023-01-31', 'Dokter Umum', '2023-01-30 03:30:32', '2023-01-30 03:30:32', 'N', 'a5RhSRSgUlhIeS0akR0dT5VjKYXpd0GiFIMv5Ce4evAB1OjZC3GseiPQcOxW20230130103032', '', 'N', '0', NULL, NULL),
(101, '015/RSAB-PKU/SDM/SPK/01.2023', NULL, 'Ridha Dwifha Wilyandra', 'Keuangan', 'Dumai', '1995-06-30', '2', '2019-01-01', '2023-01-31', 'Kasir', '2023-01-31 04:57:27', '2023-01-31 04:57:27', 'N', '8mMaO5H94Hi0UPXUMB3aM8TfmwoMW1hziHzB2k6XspT7GAnv8dC1oal3h9KN20230131115727', '', 'N', '0', NULL, NULL),
(102, '001/RSAB-PKU/SDM/SPK/02.2023', NULL, 'Nani Lestari', 'Farmasi', 'Batang Buo', '1989-07-01', '1', '2013-02-01', '2023-02-21', 'Asisten Apoteker', '2023-02-22 01:29:27', '2023-03-04 02:30:32', 'N', 'HBV1kia5OKkqUE83hVem18ed1q6vARf6uKoiRA5g7MqB0YHM05kXfPuiC3Wc20230222082927', '', 'N', '0', NULL, NULL),
(103, '001/RSAB-PKU/SDM/SPK/03.2023', NULL, 'Riza Fouzia Khainingsih', 'Tulip', 'Pariaman', '1992-11-11', '1', '2017-07-01', '2023-03-01', 'Perawat', '2023-03-04 02:34:06', '2023-03-04 02:34:06', 'N', 'gutIkFgQrAYlQry7MddrfYBl2Cd44BSCt2p7QJSvYZvp7rLpQ9RZ9vGiM2bw20230304093406', '', 'N', '0', NULL, NULL),
(104, '002/RSAB-PKU/SDM/SPK/03.2023', NULL, 'Indah Putri Styarini', 'Bougenville', 'Pekanbaru', '1997-10-31', '2', '2021-03-01', '2023-03-01', 'Perawat', '2023-03-04 02:37:37', '2023-03-04 02:37:37', 'N', 'hzrmzBC5DKOEk0CG4fuMk3PaqBAU46uVSNfck0piKHWdlG6vxETSqvO92vla20230304093737', '', 'N', '0', NULL, NULL),
(105, '003/RSAB-PKU/SDM/SPK/03.2023', NULL, 'Sya\'banul Karim', 'Farmasi', 'Pekanbaru', '2000-11-23', '2', '2022-03-01', '2023-03-01', 'Asisten Apoteker', '2023-03-04 02:39:00', '2023-03-04 02:39:00', 'N', 'N2JZ8cbun1LXnO3XkO1LLvVmgVGaGuoWBTgfbxq4F7VRwFpKKEXIayow41cP20230304093900', '', 'N', '0', NULL, NULL),
(106, '001/RSAB-PKU/SDM/SPK/04.2023', NULL, 'apt. Rini Esteria, S.Farm', 'Farmasi', 'Indragiri Hilir', '1995-10-05', '1', '2020-11-02', '2023-03-31', 'Apoteker', '2023-04-03 01:08:49', '2023-04-12 07:31:15', 'N', '6sKVEcUGQOQKI5UrRjYJTFEEikvPTMzq1hDI8zujlyr0UudrNmgTVkhcKeLe20230403080849', '', 'N', '0', NULL, NULL),
(107, '002/RSAB-PKU/SDM/SPK/04.2023', NULL, 'Saidatia Aninda Hawari, A.Md.Kes', 'Radiologi', 'Pekanbaru', '2000-01-14', '2', '2021-04-01', '2023-03-31', 'Radiografer', '2023-04-03 01:11:29', '2023-04-03 01:35:13', 'N', 'RcvdL4yijrFUTVHqXFIwnhkGr0g5VMVbnTQimwmRy7rmMowWxh9MmoIomBHI20230403081129', '', 'N', '0', NULL, NULL),
(108, '003/RSAB-PKU/SDM/SPK/04.2023', NULL, 'Dini Alafi Hasanah, A.Md.Farm.', 'Farmasi', 'Pekanbaru', '2000-01-04', '2', '2022-04-01', '2023-03-31', 'Asisten Apoteker', '2023-04-03 01:14:00', '2023-04-03 01:36:05', 'N', 'EiLwB2c7AIo8h4LubP5wUVnKdVawjkehpapcrsHhHUNla3rF7hijLdLKCSqK20230403081400', '', 'N', '0', NULL, NULL),
(109, '004/RSAB-PKU/SDM/SPK/04.2023', NULL, 'Ns. Riskhita Mutiara Salshabil, S.Kep', 'Dahlia', 'Air Molek', '1998-04-12', '2', '2022-04-01', '2023-03-31', 'Perawat', '2023-04-03 01:17:15', '2023-04-03 01:37:08', 'N', 'YexsWQp55wxFL5VvfUxwpz5fO8iUY0CP9B2O4eho8YnmSTq84igUYoNISIgu20230403081715', '', 'N', '0', NULL, NULL),
(110, '005/RSAB-PKU/SDM/SPK/04.2023', NULL, 'Ns. Tri Agustina, S.Kep', 'Bougenville', 'Simp Kelayang', '1998-08-03', '2', '2022-04-01', '2023-03-31', 'Perawat', '2023-04-03 01:21:49', '2023-04-03 01:37:54', 'N', 'RzDbsUZL9XrOM4aNe5UsAyTVdm7uYc5ZKUgpgfhe47adE1wTXQtRb8BSWwfs20230403082149', '', 'N', '0', NULL, NULL),
(111, '006/RSAB-PKU/SDM/SPK/04.2023', NULL, 'Ns. Shafira Hasanah, S.Kep', 'Edelweis', 'Painan', '1998-04-07', '2', '2022-04-01', '2023-03-31', 'Perawat', '2023-04-03 01:25:00', '2023-04-03 01:38:44', 'N', 'wACu0iMjXDTBFM58eRKakzNyM52zq2czvxhYMhM3SrhNMVVcCAP2kgER85Wi20230403082500', '', 'N', '0', NULL, NULL),
(112, '007/RSAB-PKU/SDM/SPK/04.2023', NULL, 'Ns. Selvin Diana, S.Kep, M.Kep', 'Poliklinik', 'Pekanbaru', '1973-03-27', '1', '1998-03-05', '2023-03-31', 'Patient Schedule Officer', '2023-04-03 01:27:05', '2023-04-03 01:52:13', 'N', 'sFJK45qZpu8Uw4CYBdYkFP2CGKr2ArrdfKGRUnRzyOvNU8oKK5aR4LH6xZOT20230403082705', '', 'N', '0', NULL, NULL),
(113, '008/RSAB-PKU/SDM/SPK/04.2023', NULL, 'Shinta Dwi Astuti, S.E', 'Keuangan', 'Pekanbaru', '1983-09-22', '1', '2004-03-01', '2023-03-31', 'Kanit Kasir Rawat Jalan & Back Office', '2023-04-03 01:29:46', '2023-04-03 01:46:04', 'N', '9GoxAwGNkdJZj01alOJZL4lfAtS7Yc0nMxay04eSOzd6gNJVXkMb4wJYBBHD20230403082946', '', 'N', '0', NULL, NULL),
(114, '001/RSAB-PKU/SDM/SPK/05.2023', NULL, 'Atiqah Khairunnisak, S.Psi', 'Marketing', 'Bengkalis', '1993-12-07', '1', '2015-11-01', '2023-04-30', 'Staf Marketing', '2023-05-02 00:50:29', '2023-05-02 00:51:00', 'N', '6stbKI3ScSLcYF2jbPK6w53qu2TAjPdzAnsMKwraX48bxjw03EB4eOmGztH420230502075029', '', 'N', '0', NULL, NULL),
(115, '002/RSAB-PKU/SDM/SPK/05.2023', NULL, 'Fifin Frigawitri, S.K.M', 'Casemix', 'Payakumbuh', '1993-12-23', '1', '2015-04-01', '2023-04-30', 'Staf Casemix', '2023-05-02 00:53:42', '2023-05-02 00:53:42', 'N', 'N0bnnEdN5cDDwqfWm2YAOLCtImqfCWeGyLqesuLKuctMmnMgkAnxBGUEOXDC20230502075342', '', 'N', '0', NULL, NULL),
(116, '003/RSAB-PKU/SDM/SPK/05.2023', NULL, 'Ns. Netri Elinda, S.Kep', 'Hemodialisa', 'Tanjung Bungo', '1989-07-10', '1', '2014-03-01', '2023-04-30', 'Perawat', '2023-05-02 00:57:23', '2023-05-02 00:57:23', 'N', 'DlI90aZ88gKKO9ASqTv1cBw6zzBHIKMK6ET2GexMY8hvqG1gAP5U41vPj83V20230502075723', '', 'N', '0', NULL, NULL),
(117, '004/RSAB-PKU/SDM/SPK/05.2023', NULL, 'dr. Dewi Rezeki Arbi', 'Dokter Umum', 'Pekanbaru', '1993-09-17', '2', '2022-05-01', '2023-04-30', 'Dokter Umum', '2023-05-02 01:00:02', '2023-05-02 01:00:02', 'N', 'otYvjourRIFGY2ZhBcYcPalpD1Pz6dCqybUdN0o81qaZprZbual6pMdxyjJX20230502080002', '', 'N', '0', NULL, NULL),
(118, '005/RSAB-PKU/SDM/SPK/05.2023', NULL, 'Ns. Rb. Silvia Gea, S.Kep', 'Rose', 'Hili\'aro', '1998-02-23', '2', '2022-05-01', '2023-04-30', 'Perawat', '2023-05-02 01:02:02', '2023-05-02 01:02:36', 'N', 'c1sNNVFGhkC8eE6ipbGFJpmzZfujRnbuMZX0wvyyT63QZxA3M8C1NgSxi0yL20230502080202', '', 'N', '0', NULL, NULL),
(119, '006/RSAB-PKU/SDM/SPK/05.2023', NULL, 'apt. Mezi Nadila, S.Farm', 'Farmasi', 'Kinali', '1997-07-24', '2', '2021-06-01', '2023-04-30', 'Apoteker', '2023-05-02 01:05:46', '2023-05-02 01:05:46', 'N', 'odPLRHUIDIzMV1wDSpcpAtBQ7GCt4QTSsoajzTGNVxzzJpZQhoeigAgIvzUr20230502080545', '', 'N', '0', NULL, NULL),
(120, '007/RSAB-PKU/SDM/SPK/05.2023', NULL, 'dr. Mohammad Redho Fauzi', 'Dokter Umum', 'Pekanbaru', '1998-07-08', '2', '2022-05-01', '2023-04-30', 'Dokter Umum', '2023-05-02 01:08:07', '2023-05-02 01:08:07', 'N', 'GU5atUJ1lzA0MaP22yr1YXmM0WdFIcofgMXqajG2UeXi3t2WM63S5TkX8XMJ20230502080807', '', 'N', '0', NULL, NULL),
(121, '008/RSAB-PKU/SDM/SPK/05.2023', NULL, 'Addry Syafitra, A.Md.Kep.', 'Hemodialisa', 'Pulau Punjung', '1986-03-10', '2', '2022-03-01', '2023-04-30', 'Perawat', '2023-05-02 01:11:15', '2023-05-02 01:11:15', 'N', '24GYXdxIFbi8nmtzciMvZFqDIvcIwwBUxPrG7ubtrXDBFFkKDRNi0N6L5MU820230502081115', '', 'N', '0', NULL, NULL),
(122, '009/RSAB-PKU/SDM/SPK/05.2023', NULL, 'Ns. Rati Azari, S.Kep', 'Tulip', 'Pd. Kejai Tapan', '1998-04-23', '2', '2022-04-01', '2023-04-30', 'Perawat', '2023-05-02 01:13:38', '2023-05-02 01:13:38', 'N', 'dj5eeQgkYs4K2jr2VJzITrcqqy4QKuC4jnxcrqQhuzINj4PJAU5sitfyG8dB20230502081338', '', 'N', '0', NULL, NULL),
(123, '010/RSAB-PKU/SDM/SPK/05.2023', NULL, 'Muhamad Lutfi Raiz, Amd.TEM', 'Sarana Medis & Inventaris', 'Muara Enim', '1996-03-10', '2', '2022-05-01', '2023-04-30', 'Teknisi Elektromedis', '2023-05-13 03:22:57', '2023-05-13 03:24:34', 'N', 'xOKEcAAM1zPE22Ij44RD4ZqNju13wfHxou4EQ0VpbOf4VMRh53zQUp7it7m720230513102257', '', 'N', '0', NULL, NULL),
(124, '011/RSAB-PKU/SDM/SPK/05.2023', NULL, 'Ulfa Yanti, Amd.Kep', 'Bougenville', 'Simpang Sari', '1991-03-14', '1', '2013-02-01', '2023-05-01', 'Perawat', '2023-05-13 03:27:36', '2023-05-13 03:27:36', 'N', '1DqVn1GdHWXPh6x3Qusi36x8Ry4pLcCcbbmNZ2Yj37ZqLWL3NxnyoXkHadwn20230513102736', '', 'N', '0', NULL, NULL),
(125, '001/RSAB-PKU/SDM/SPK/06.2023', NULL, 'Ns. Listri Lizawati, S.Kep', 'Tulip', 'Ukui Dua', '1992-11-06', '1', '2017-01-01', '2023-05-31', 'Perawat', '2023-06-05 01:04:27', '2023-06-05 01:05:03', 'N', 'IwNgsSmmhTyYPaUGVf6rJCe8i44Yy3wkYUYdCNaL48z8NicBTQRIxI9MmTLv20230605080427', '', 'N', '0', NULL, NULL),
(126, '002/RSAB-PKU/SDM/SPK/06.2023', NULL, 'apt. Widi Mulyantari, S.Farm', 'Farmasi', 'Bagansiapiapi', '1997-06-13', '2', '2022-05-21', '2023-05-20', 'Apoteker', '2023-06-05 01:07:32', '2023-06-05 01:07:32', 'N', 'rYRNfzgVoXdmlM6fMdshZglfyu04CWRgBs6SIw7s1zOytK4VMWbnJ8B9YfZm20230605080732', '', 'N', '0', NULL, NULL),
(127, '003/RSAB-PKU/SDM/SPK/06.2023', NULL, 'Khairani, A.Md.Farm.', 'Farmasi', 'Pekanbaru', '1996-06-08', '2', '2021-06-01', '2023-05-20', 'Asisten Apoteker', '2023-06-05 01:20:46', '2023-06-05 01:20:46', 'N', 'yw0T9wa8iEJLMM5rUZJWzBNUtD5F0Ka89jxYiS0efR7qpwCRySaSEe5NalQY20230605082045', '', 'N', '0', NULL, NULL),
(128, '004/RSAB-PKU/SDM/SPK/06.2023', NULL, 'Robby Winata, A.Md.Farm.', 'Farmasi', 'Bukittinggi', '1992-06-18', '1', '2018-03-01', '2023-05-20', 'Asisten Apoteker', '2023-06-05 01:22:49', '2023-06-05 01:22:49', 'N', 'zgt9bZ6O5zzMuWdGDsLHsdV13otEvJ22vC2vAWMyn5gYaPnL0BgNpJwvtkyH20230605082248', '', 'N', '0', NULL, NULL),
(129, '005/RSAB-PKU/SDM/SPK/06.2023', NULL, 'dr. Era Nurissama', 'Pelayanan Medis', 'Jakarta', '1986-11-06', '1', '2019-10-01', '2023-05-31', 'Koordinator Pelayanan Medis', '2023-06-05 02:44:11', '2023-06-05 02:44:11', 'N', 'Xx2TCd5bBG0feuOEDjno71P1ZTuG7HCWlYgVzMCGiGdPTIosrj88RQ8JA8Dh20230605094411', '', 'N', '0', NULL, NULL),
(130, '006/RSAB-PKU/SDM/SPK/06.2023', NULL, 'Parsudi', 'Rekam Medis', 'Semarang', '1974-03-25', '1', '2003-06-01', '2023-05-31', 'Filing & Dist. Rekam Medis', '2023-06-05 02:46:09', '2023-06-05 02:46:09', 'N', '0Tx8yZcK4SDG7ll6XVdLzGs63OgxbKEpAwYEEZgOudQr5QG7ts67MwM3bRzO20230605094609', '', 'N', '0', NULL, NULL),
(131, '007/RSAB-PKU/SDM/SPK/06.2023', NULL, 'Cecillia Nova, S.Kep', 'Keuangan', 'Duri', '1991-11-19', '2', '2019-01-01', '2023-01-31', 'Income Cashier', '2023-06-26 06:43:36', '2023-06-26 06:43:36', 'N', '85pWe14bHIIuj5o3X7Hd7OjcrH3omQDWKEggGG3hQc144LYmCG2vxVxUJsPz20230626134336', '', 'N', '0', NULL, NULL),
(132, '001/RSAB-PKU/SDM/SPK/07.2023', NULL, 'dr. Rikardi Santosa', 'Dokter Umum', 'Padang', '1995-06-22', '1', '2021-02-01', '2023-06-16', 'Dokter Umum', '2023-07-01 01:34:59', '2023-07-01 01:34:59', 'N', 'YsCQPishm0b8CjNVtBT82rVdf3F7wbmCPUnpi8ceUmgpP0LCj0FJrP2zNZla20230701083459', '', 'N', '0', NULL, NULL),
(133, '002/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Ns. Salsa Destri Yolanda, S.Kep', 'Lily', 'Pekanbaru', '1996-12-10', '1', '2020-09-01', '2023-06-30', 'Perawat', '2023-07-01 01:36:50', '2023-07-01 01:36:50', 'N', 'vGx5RRtAPH2XG8gu1YSUj2lKxQYYrXB0xykYbluN5AezwJNKJfXIppk75kAp20230701083650', '', 'N', '0', NULL, NULL),
(134, '003/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Miranti', 'CSSD', 'Pelalawan', '2002-04-12', '2', '2022-11-21', '2023-06-20', 'Nurse Aid', '2023-07-01 01:40:30', '2023-07-01 01:40:30', 'N', 'RgmL3S58hCQgFudnbBCZme8EZSFz1q0v426QJQwBlZfdm14kjeuBMXlbOE1j20230701084030', '', 'N', '0', NULL, NULL),
(135, '004/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Ns. Fitriani, S.Kep', 'Bougenville', 'Air Balui', '1997-02-09', '2', '2022-06-21', '2023-06-20', 'Perawat', '2023-07-01 01:42:30', '2023-07-01 01:47:39', 'N', 'unie31M8lAlraKxdAf7wE54JTGCb8ipu2xmL0WFa86jDRPjRnt8V3dsEnq0B20230701084230', '', 'N', '0', NULL, NULL),
(136, '005/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Nadhrah Alhan, M.Si', 'TRB', 'Bukittinggi', '1991-11-21', '2', '2021-07-01', '2023-06-20', 'Embriolog', '2023-07-01 01:46:44', '2023-07-01 01:47:26', 'N', 'oFmLnKPIe2pTtXC1pCrY42WZYu9Bd4izFhmQyVesoPymVTi9T8gJWGyoyeDc20230701084644', '', 'N', '0', NULL, NULL),
(137, '006/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Ns. Lestari Lowingsky, S.Kep', 'Edelweis', 'Sitorajo', '1997-09-17', '2', '2021-07-01', '2023-06-30', 'Perawat', '2023-07-01 01:50:41', '2023-07-01 01:50:41', 'N', 'sVnIpkA8IV391zUlBVtczge0GOOsJYDrYhYNJBLAh7xUO7d5UpzKYTiixOKF20230701085041', '', 'N', '0', NULL, NULL),
(138, '007/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Febe Ferdianti Natalia, A.Md.Kes.', 'Kesling', 'Pekanbaru', '2000-12-25', '2', '2023-02-21', '2023-06-30', 'Staf Kesling', '2023-07-01 01:58:10', '2023-07-01 01:58:10', 'N', 'WaTgZZlfZtVu03uPDvSEwKETwpxOgrfzig5jB1MFdS40Az7RJ5Sl8eYFA5jG20230701085810', '', 'N', '0', NULL, NULL),
(139, '008/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Mohd. Imam Alhadi, Amd.TEM', 'Sarana Medis & Inventaris', 'Bengkalis', '1992-01-22', '1', '2018-02-01', '2023-06-30', 'Teknisi Elektromedis', '2023-07-01 01:59:51', '2023-07-01 01:59:51', 'N', 'Lg73WlpcZ8XFfr9bJuquyYJw2UBw43lW6DIJsxKvLwCNCQICDdRNBbCRi7pS20230701085951', '', 'N', '0', NULL, NULL),
(140, '009/RSAB-PKU/SDM/SPK/07.2023', NULL, 'M. Taufiq, S.T', 'Maintenance', 'Pekanbaru', '1996-09-17', '2', '2022-07-21', '2023-06-20', 'Staf Maintenance', '2023-07-01 02:01:23', '2023-07-01 02:01:23', 'N', '9MLSqgpY2rN2XYLPJWMqajLGgi7Xx6zdyvb4iE0OSmP7nJiscwmT8WinZzUq20230701090123', '', 'N', '0', NULL, NULL),
(141, '010/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Ade Riyanto, S.T', 'IT', 'Air Molek', '1995-01-12', '2', '2021-08-01', '2023-06-20', 'Teknisi IT', '2023-07-01 02:03:34', '2023-07-01 02:03:34', 'N', 'BFgL71jDorHMt9MIjC3nUtFmSoF7XFPXkMsdL8cVdcJ1tlr4SDRHgKnLAkml20230701090334', '', 'N', '0', NULL, NULL),
(142, '011/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Ns. Zihni Sharfina Darmizah, S.Kep', 'Bougenville', 'Pekanbaru', '1996-12-20', '1', '2021-05-01', '2023-07-08', 'Perawat', '2023-07-12 04:24:32', '2023-07-12 04:24:32', 'N', 'rx33LI0J9AgwHrL6pxGix5kdzoZah25aEHmIcua8LCirqqBdxHjipaGdBccx20230712112432', '', 'N', '0', NULL, NULL),
(143, '012/RSAB-PKU/SDM/SPK/07.2023', NULL, 'dr. Citra Yuriana Putri', 'Alarm Center', 'Bukittinggi', '1992-05-08', '1', '2019-11-01', '2023-07-24', 'Dokter PIC C3', '2023-07-25 04:26:35', '2023-07-25 04:26:35', 'N', 'qnElPfEetm5sCOU2CFRg7eHSNyfbEueVQvaKuTz5U70XHDo2Evhpqk92djXb20230725112635', '', 'N', '0', NULL, NULL),
(144, '013/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Eka Rahmadani, A.Md.Farm', 'Farmasi', 'Bangko Jaya', '1990-03-29', '1', '2020-09-01', '2023-07-20', 'Asisten Apoteker', '2023-07-25 04:33:34', '2023-07-25 04:33:34', 'N', 's4AU46u5ZbJbimZmqANZJDAjtGOkJS0gYthvfPmmPT84etXEkN7jYzCdxmaS20230725113334', '', 'N', '0', NULL, NULL),
(145, '014/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Dwi Esa Hutria, S.Farm', 'Farmasi', 'Payakumbuh', '1995-08-03', '1', '2018-08-01', '2023-07-20', 'Asisten Apoteker', '2023-07-25 04:35:19', '2023-07-25 04:35:19', 'N', 'cYgnM1EnL0F8VWO3tLsOAakbqiESfofTY3BVcBLnrDqITFHLbRSwE6aKwQtS20230725113519', '', 'N', '0', NULL, NULL),
(146, '015/RSAB-PKU/SDM/SPK/07.2023', NULL, 'apt. Oktaviani Firza, S.Farm', 'Farmasi', 'Padang', '1998-10-09', '2', '2022-07-21', '2023-07-20', 'Apoteker', '2023-07-25 04:37:52', '2023-07-25 04:37:52', 'N', '0fjfLiQZqXkkMdAnvn63DeolBymmSQKOQeGmDx6Ya13jhb9YLBD03c7qwCnR20230725113752', '', 'N', '0', NULL, NULL),
(147, '016/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Mifta Zur Rahmah, A.Md.Farm', 'Farmasi', 'Sungai Pinang', '1999-03-19', '1', '2021-05-01', '2023-07-20', 'Asisten Apoteker', '2023-07-25 04:40:04', '2023-07-25 04:40:04', 'N', '36sNYMDNo2PkpyrmgzgaSUs3epPRJzuA9bSt3ZoGwJp1fDH67tNq7SzjIQN920230725114004', '', 'N', '0', NULL, NULL),
(148, '017/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Fatkhul Muhlisin, A.Md.Kep', 'UGD', 'Tri Rejo Mulyo', '1993-09-25', '1', '2015-03-01', '2023-07-20', 'Perawat', '2023-07-25 04:42:28', '2023-08-09 02:55:55', 'N', 'Fy02cGqGdZAzjnqiPOKBwSBIhcKGCBMKYbckFjfqmC04qjBjEghVy9JYnjbj20230725114228', '', 'N', '0', NULL, NULL),
(149, '018/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Febrydiyanti, S.Tr.A.K', 'Laboratorium', 'Kotapinang', '1993-02-01', '1', '2019-02-01', '2023-07-20', 'Analis', '2023-07-25 04:45:31', '2023-08-02 00:59:29', 'N', 'zyWSUkKGKsnGy3f2vKLzlyW5ESOU5kIN5PUVGUeZ4gHzR9AcDYg4kG8QGScg20230725114531', '', 'N', '0', NULL, NULL),
(150, '019/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Sisca Oktavia, A.Md.AK', 'Laboratorium', 'Padang', '1986-10-27', '1', '2017-03-01', '2023-07-20', 'Analis', '2023-07-25 04:48:39', '2023-07-25 04:48:39', 'N', '2cBGT9MegeOzhICalLhRKRDA8hhRMVmzuA4M3sRH7ofU3XNwsQjSR8P0P9of20230725114839', '', 'N', '0', NULL, NULL),
(151, '020/RSAB-PKU/SDM/SPK/07.2023', NULL, 'Annisa Syafira, A.Md.Kep', 'Orchid', 'Pekanbaru', '1999-05-26', '2', '2021-08-01', '2023-07-20', 'Perawat', '2023-07-25 04:51:19', '2023-07-25 04:51:19', 'N', '9wNCSMHflt0dlq1CyJU0tO4MqeXvfHakv426L9w2YoGbBqoawCn0YSc5VF2m20230725115119', '', 'N', '0', NULL, NULL),
(152, '001/RSAB-PKU/SDM/SPK/08.2023', NULL, 'Rafi Wahyu Kurniawan, A.Md.Kep', 'Chrysant', 'Aripan', '1998-03-02', '2', '2022-07-21', '2023-07-20', 'Perawat', '2023-08-03 02:03:55', '2023-08-03 02:03:55', 'N', 'qztOs4yfAIDXsNc688lKMigVwudHaJPiyumpCnLPXp8I2F3Okw5WgpRmeeCN20230803090355', '', 'N', '0', NULL, NULL),
(153, '047/RSAB-PKU/SDM/SPK/08.2023', NULL, 'Yulhendri', 'Farmasi', 'Pekanbaru', '1973-07-23', '1', '1998-07-03', '2023-08-01', 'Porter', '2023-08-16 02:29:16', '2023-08-16 02:37:50', 'N', 'xgkfR221stIsZF2fjCcQIyVF7llYNB4ZPVOI0pYFwcnSzmpbhzvFQhG4fgwJ20230816092916', 'yulhendriaje@gmail.com', 'Y', '0', NULL, NULL),
(154, '001/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Nadia Rahmayanti, A.Md.Farm', 'UPF', 'Galanggang', '1999-02-13', '1', '2021-05-01', '2023-08-20', 'Staf UPF', '2023-09-02 03:31:03', '2023-09-02 03:32:01', 'N', 'w1JEpkzzU52Fdx3g8svXEvzPXtHBtqR7EJXZ2NRvFRNmZL3VNk5i9vvtJgXR20230902103103', 'nadiarahmayanti1302@gmail.com', 'N', '0', NULL, NULL),
(155, '002/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Ns. Riyon Anggriawan, S.Kep', 'UGD', 'Kerinci', '1994-08-15', '2', '2020-12-01', '2023-08-20', 'Perawat', '2023-09-02 03:45:06', '2023-09-02 03:49:45', 'N', 'ZQIvme53rTMiqOzPIBHBTPBUxJUtzCvQ0bWZCQcuWhLIjwUWLMzejvS60S7u20230902104506', 'riyonanggri@gmail.com', 'Y', '0', NULL, NULL),
(156, '017/RSAB-PKU/SDM/SPK/09.2023', NULL, 'dr. Ningrum Puji Lestari', 'Dokter Umum', 'Pekanbaru', '1994-05-14', '2', '2022-06-21', '2023-08-31', 'Dokter Umum', '2023-09-09 03:08:11', '2023-09-09 03:08:11', 'N', 'hUyJrTGOeG9pL16KLs4tRVx7UHSfGrpoOdGUt32Tc6egHlh0nS2yw54BuacP20230909100811', 'ningrumpujilestari@gmail.com', 'N', '0', NULL, NULL),
(157, '018/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Ns. Rosembrina, S.Kep', 'Tulip', 'Dumai', '1998-09-29', '2', '2022-08-21', '2023-08-20', 'Perawat', '2023-09-09 03:13:12', '2023-09-09 03:13:12', 'N', 'WKRwSyezEXNVHAES1nUXACyBnH8Gz5areRFAbx5V5NSMlTE36Q2OusSRqm0320230909101311', 'rosembrina@gmail.com', 'N', '0', NULL, NULL);
INSERT INTO `surat_pengalaman_kerja` (`ID`, `SuketPengalamanID`, `NIK`, `NamaKaryawan`, `Bagian`, `TempatLahir`, `TanggalLahir`, `JenisKaryawanID`, `TanggalMasuk`, `TanggalKeluar`, `JabatanAkhir`, `created_at`, `updated_at`, `NA`, `SEO`, `Email`, `Sudah_Kirim_Email`, `StatusID`, `TanggalKirim`, `TanggalSetujui`) VALUES
(158, '019/RSAB-PKU/SDM/SPK/09.2023', NULL, 'dr. Rizky Fattima', 'Dokter Umum', 'Pekanbaru', '1990-10-31', '1', '2017-11-01', '2023-08-31', 'Dokter Umum', '2023-09-09 03:15:58', '2023-09-09 03:15:58', 'N', 'oIuoFaxbbJscvbYcMEWehTxRe1U9OkHW36u8aqjqEOLv1tVEO5tazTGS4A6K20230909101558', 'rizkyfattima31@gmail.com', 'N', '0', NULL, NULL),
(159, '024/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Ns. Dewi Halim Hutasuhut, S.Kep', 'Back Office & SOD', 'Pekanbaru', '1978-02-19', '1', '2001-02-05', '2023-08-31', 'Mutu Keperawatan', '2023-09-11 01:08:44', '2023-09-11 01:08:44', 'N', 'mSNfgDGpXoUbLtP9WNEGY1uVihqK40IuDV5XWd9TEFhkAy55DJnjtjKcKUSo20230911080844', 'shahnazaqeela@gmail.com', 'N', '0', NULL, NULL),
(160, '025/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Ns. Sari Mariati Sianturi, S.Kep', 'Dahlia', 'Pekanbaru', '1992-02-17', '1', '2016-07-01', '2023-08-31', 'Perawat', '2023-09-11 01:10:29', '2023-09-11 01:10:29', 'N', 'TNag1sZdKUsUx4KAqZ6rKRPU9G1vL20Nuxlc52xBYeAaZztTZ70oYpsJl9a320230911081029', 'sari.sianturi@yahoo.com', 'N', '0', NULL, NULL),
(161, '026/RSAB-PKU/SDM/SPK/09.2023', NULL, 'apt. Lidiatil Masnun, S.Farm', 'Farmasi', 'Bagansiapiapi', '1996-05-28', '1', '2020-11-02', '2023-08-31', 'Apoteker', '2023-09-11 01:12:57', '2023-09-11 01:12:57', 'N', 'ZgciS3Z7IrXNEjWeu04QXiumsJvvywEe02XmvAKXQFd4JDaJYzkErPr1pT3a20230911081257', 'lidiatilmasnun@gmail.com', 'N', '0', NULL, NULL),
(162, '027/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Ns. Gita Nurtrya, S.Kep', 'Poliklinik', 'Pekanbaru', '1992-07-31', '1', '2016-07-01', '2023-08-31', 'Perawat MCU', '2023-09-11 01:14:50', '2023-09-11 01:14:50', 'N', 'xhAPr6tlsu7m5tdQsAjSwIQP0sGO4o1i7F0UCDiDgx5jk6R0r0SoFU7S6Ox520230911081450', 'gita.nurtria@gmail.com', 'N', '0', NULL, NULL),
(163, '028/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Elsya Aprilian, Amd.Si', 'Farmasi', 'Duri', '1995-04-18', '1', '2017-05-01', '2023-09-20', 'Asisten Apoteker', '2023-09-22 06:55:21', '2023-09-22 07:04:36', 'N', 'NqUZEXyeYe9ICm257yYUSQlFsz6NePRUCbZdRr6SsE1JMGtmUt6oFkjipeKJ20230922135521', 'elsyaaprilian.ea@gmail.com', 'N', '0', NULL, NULL),
(164, '029/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Dwi Wulan Sari, S.Farm.', 'Farmasi', 'Bulungihit', '1997-01-16', '2', '2021-10-01', '2023-09-20', 'Asisten Apoteker', '2023-09-22 06:59:20', '2023-09-29 07:38:28', 'N', 'k81qVWX0FpWqBrAgTNAold8EUYOscE0Mqvq7sykfQMTLwL9tFLKagYfFo4Hv20230922135920', 'raihanayasmina97@gmail.com', 'N', '0', NULL, NULL),
(165, '030/RSAB-PKU/SDM/SPK/09.2023', NULL, 'apt. Richa Shaudespy Pakpahan, S.Farm', 'Farmasi', 'Dumai', '1997-12-16', '1', '2021-02-01', '2023-09-20', 'Apoteker', '2023-09-22 07:01:55', '2023-09-22 07:04:16', 'N', 'VEhrMuyQTYvR6wjE4wRAV8gFBdDu6CW4j2l8uhdvQPlvsQ4mfBs9Fn4U4BP520230922140155', 'rshaudespy@gmail.com', 'N', '0', NULL, NULL),
(166, '031/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Melan Fitri, AMK', 'UGD', 'Lubuk Raya', '1986-05-05', '1', '2009-05-01', '2023-09-20', 'Perawat', '2023-09-22 07:04:04', '2023-09-22 07:04:04', 'N', 'IoohaEAeeYViwLJI8m4IPa7RQxOmagX0Yyq7Zyq6rUCnX31WZeG4mQeafuVz20230922140404', 'melanfitri86@gmail.com', 'N', '0', NULL, NULL),
(167, '032/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Khairul Abadi, S.T', 'Maintenance', 'Batam', '1993-05-16', '2', '2021-09-01', '2023-09-20', 'Staf Maintenance', '2023-09-22 07:15:48', '2023-09-22 07:15:48', 'N', 'Uw0DC8f3wnz2AwuyppNjY0mjI4UZwvGkERMv7zqUCopRtw1ve1TY1mczdwUN20230922141548', 'khairulabadi61@yahoo.com', 'N', '0', NULL, NULL),
(168, '033/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Ns. Lovy Lovita Sari, S.Tr.Kep', 'Poliklinik', 'Dusun Garut', '1997-11-13', '2', '2022-09-21', '2023-09-20', 'Perawat', '2023-09-22 07:17:41', '2023-09-27 07:33:29', 'N', 'z1hgMwzpPIfpZ80kwole1KENiyuCNGjmPBh74NqXZQsPTR5JqPT2ov3D4EuE20230922141741', 'lovylovitasari@gmail.com', 'N', '0', NULL, NULL),
(169, '034/RSAB-PKU/SDM/SPK/09.2023', NULL, 'Suci Nabil Absya', 'CSSD', 'Pekanbaru', '2001-11-02', '2', '2022-11-21', '2023-09-20', 'Nurse Aid', '2023-09-22 07:19:59', '2023-09-22 07:19:59', 'N', '6Gn38rG5uIZpWGllznVh9xY2HpqhKQ6bCDdDPZQyY7sY0WlfEQL1LTQIC0EQ20230922141959', 'sucinabilabsya002@gmail.com', 'N', '0', NULL, NULL),
(170, '001/RSAB-PKU/SDM/SPK/10.2023', NULL, 'Ns. Wulandari Efriani Putri, S.Kep', 'Sunflower', 'Payakumbuh', '1995-10-26', '1', '2020-12-01', '2023-09-30', 'Perawat', '2023-10-02 03:13:34', '2023-10-05 06:03:44', 'N', '6UDK68htK7cvHB4vlZX55GlDaOqTdVhPBG8SPJRDIifzEcEqaTeoIWaqUbSf20231002101334', 'wulandariefriani@gmail.com', 'N', '0', NULL, NULL),
(171, '007/RSAB-PKU/SDM/SPK/10.2023', NULL, 'Silvia Nopra Nasti, S.S.T', 'Laboratorium', 'Kuala Tungkal', '1997-11-26', '2', '2020-11-02', '2023-10-20', 'Analis', '2023-10-06 08:58:21', '2023-10-06 08:58:21', 'N', 'ti6CE3s2buqFGlNYtD8pie3heeBqaR5aaVnkKVS5YSc6b1dPqD02gN4Wpr8B20231006155821', 'silvianpra@gmail.com', 'N', '0', NULL, NULL),
(172, '011/RSAB-PKU/SDM/SPK/10.2023', NULL, 'Ns. Ahmad Adi Setyarto Nugroho, S.Kep', 'Chrysant', 'Pacitan', '1996-09-16', '2', '2023-02-21', '2023-06-21', 'Perawat', '2023-10-14 06:40:45', '2023-10-14 06:40:45', 'N', 'oooX4Zxm9AV6jLOMZCCxsHwAVBVNJfHGG1xmLgxaMVTV7rTLpM1CwSnvgneZ20231014134045', 'nugrohoahmad715@gmail.com', 'N', '0', NULL, NULL),
(173, '012/RSAB-PKU/SDM/SPK/10.2023', NULL, 'Desi Sartika, S.E', 'Casemix', 'Pekanbaru', '1998-11-21', '2', '2021-08-01', '2023-10-20', 'Staf Casemix', '2023-10-24 04:34:27', '2023-11-02 08:25:48', 'N', 'W8OHyg16uI4K4lMpVzJO1CW9zJhtkHGvP1QeWHI21j9ggfaPj9XQvyqgRoDZ20231024113427', 'desisartikaa15@gmail.com', 'N', '0', NULL, NULL),
(174, '016/RSAB-PKU/SDM/SPK/10.2023', NULL, 'Rizky Inaya Saputri, A.Md.Keb.', 'Poliklinik', 'Kampar', '1995-02-17', '1', '2017-10-01', '2023-09-30', 'Bidan', '2023-10-25 07:29:25', '2023-10-25 07:29:25', 'N', 'eDwGSoUh8J7IvHhBkB3NT1NV8JwveH1v2wPT1uKt9geE1XMgBwtwfM6SGWkX20231025142925', 'kiikyinaya17@gmail.com', 'N', '0', NULL, NULL),
(175, '001/RSAB-PKU/SDM/SPK/11.2023', NULL, 'Ns. Idrilya Wulan Kasih, S.Kep', 'Sunflower', 'Pauh', '1996-06-10', '1', '2020-12-01', '2023-10-31', 'Perawat', '2023-11-02 08:02:37', '2023-11-02 08:02:37', 'N', 'imukPPqjksNBfEZJO0BRXZuxswgOm7pPxovAprAec4NRPp2tTOz68P5xGatr20231102150237', 'idriliyawk@gmail.com', 'N', '0', NULL, NULL),
(176, '002/RSAB-PKU/SDM/SPK/11.2023', NULL, 'Celly Afyu Santika, S.K.M', 'Pelayanan Medis', 'Pekanbaru', '1997-03-16', '1', '2021-04-01', '2023-10-31', 'Staf Pelayanan Medis', '2023-11-02 08:11:08', '2023-11-02 08:11:08', 'N', 'trZ117oKkNfcxVto5QMt7Bzfz9oOOASI3LqUZ6qhhgZu6VWPFpi4148s8rmh20231102151108', 'cellyafyu@gmail.com', 'N', '0', NULL, NULL),
(177, '004/RSAB-PKU/SDM/SPK/12.2023', NULL, 'Nindi Rahmi Yufi, A.Md.Kes', 'Laboratorium', 'Bukittinggi', '1999-05-18', '2', '2021-12-01', '2023-11-20', 'Analis', '2023-12-04 04:20:35', '2023-12-04 04:20:35', 'N', 'hf0WFbHBZa5Dw6EhwHM1V4QRZPLsDIgHTLJGKRxSV6nh03pUitjvBnRkTXKi20231204112035', 'nindirahmiyuvi@gmail.com', 'N', '0', NULL, NULL),
(178, '005/RSAB-PKU/SDM/SPK/12.2023', NULL, 'Annita, Amd.Kep', 'Edelweis', 'Baso', '1991-09-12', '1', '2019-01-01', '2023-12-20', 'Perawat', '2023-12-21 01:11:44', '2023-12-21 01:11:44', 'N', '60ZNpL4S55kvUxi8vvZiLaPgZpSuT5CfCmUCYtlUEZvIynpehJ7GDYLFFJcd20231221081144', 'annitaamdkep@gmail.com', 'N', '0', NULL, NULL),
(179, '006/RSAB-PKU/SDM/SPK/12.2023', NULL, 'dr. Annisa Rosarizal', 'Dokter Umum', 'Payakumbuh', '1998-03-01', '2', '2022-12-21', '2023-12-03', 'Dokter Umum', '2023-12-21 01:21:10', '2023-12-21 01:21:10', 'N', 'SqQnFAppFl8TUuQSQIN6mq6rDh0uMtab6h8ZqwMbI8zaI8Lx0OCkpQwZc5g120231221082110', 'annisarsr98@gmail.com', 'N', '0', NULL, NULL),
(180, '007/RSAB-PKU/SDM/SPK/12.2023', NULL, 'Ns. Siska Erni Wandayani Laoli, S.Kep', 'Dahlia', 'Hilibodu', '1999-07-25', '2', '2022-12-21', '2023-12-20', 'Perawat', '2023-12-21 01:25:07', '2023-12-21 01:25:07', 'N', 'UXd3W2SprZT36ipinQo8TQJQIMh8rkwNZtIkkbOMzAD0M86L0vgMHhsSaVo420231221082506', 'siskalaoli25@gmail.com', 'N', '0', NULL, NULL),
(181, '008/RSAB-PKU/SDM/SPK/12.2023', NULL, 'Lolita Malik, S.Pd', 'Keuangan', 'Pekan Baru', '1996-06-22', '2', '2022-01-01', '2023-12-20', 'Kasir', '2023-12-21 01:27:42', '2023-12-21 01:27:42', 'N', '8ptLRjRc8BnRlzw9dfuBkOnKqoVOMOTg1gbG9SIpc7DXv8Dnlj5LVRovnf5B20231221082742', 'lolytamalikbatubara@yahoo.co.id', 'N', '0', NULL, NULL),
(182, '009/RSAB-PKU/SDM/SPK/12.2023', NULL, 'Jabir Muzafa, S.E.', 'Akuntansi', 'Pekanbaru', '2000-10-16', '2', '2022-12-21', '2023-12-20', 'Account Receivable', '2023-12-21 01:29:09', '2023-12-21 01:29:09', 'N', 'dAv6nswu52w4fFhkgoUu0zwa17FuuyKrSdepFrEYFKrODNpG8Pb2McL8xhGE20231221082909', 'jabir.muzafa16@gmail.com', 'N', '0', NULL, NULL),
(183, '010/RSAB-PKU/SDM/SPK/12.2023', NULL, 'Ns. Desi Astuti, S.Kep', 'Poliklinik', 'Concong Luar', '1996-11-19', '2', '2021-07-01', '2023-12-20', 'Perawat MCU', '2023-12-21 01:31:45', '2023-12-21 01:31:45', 'N', 'tNpc62g1jr3fuNyb98fogR1rpvd3Q8JPuDd46LeDVz4HAIsObCots0S3O01l20231221083145', 'desiastuti659@gmail.com', 'N', '0', NULL, NULL),
(184, '001/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Niar Sukmawati', 'SDM', 'Bandung', '1973-09-10', '1', '2010-06-01', '2024-01-02', 'Staf Kesejahteraan Karyawan', '2024-01-06 01:35:44', '2024-01-06 01:35:44', 'N', 'kIKHrMVk0j2HzbTdEjuulecjy5Y6RtSMnXKCho14qFIUsWgGcPdTU5ngAWJI20240106083544', 'nie_sukma@yahoo.co.id', 'N', '0', NULL, NULL),
(185, '002/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Ns. Netty Ami Ruhama Fortuna Sihite, S.Kep', 'Rose', 'Singaraja', '2000-02-05', '2', '2022-12-21', '2024-01-20', 'Perawat', '2024-01-23 00:56:33', '2024-01-23 00:56:33', 'N', 'd6xYFh5tbIvCP24iId5222mPOUO22vF815WZ8E6KkZSF9693tmy3qZrI3WjS20240123075633', 'nettyami2@gmail.com', 'N', '0', NULL, NULL),
(186, '003/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Ns. Septi Akhwi Fanni, S.Kep', 'Poliklinik', 'Pujud', '2000-09-19', '2', '2022-12-21', '2024-01-20', 'Perawat', '2024-01-23 00:59:01', '2024-01-23 00:59:01', 'N', 'yU2Q0Y18IcXX1qhChiG8QTIBPBZjLJmdHI3Eqibx7JIub10nC9FwDYaAWylD20240123075901', 'septiakhwif@gmail.com', 'N', '0', NULL, NULL),
(187, '004/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Sarah Nur Rohati, A.Md.Ak', 'Keuangan', 'Sari Mulya', '1998-10-02', '2', '2021-02-01', '2024-01-20', 'Kasir', '2024-01-23 01:00:50', '2024-01-23 01:00:50', 'N', 'YtdO6k18guRHjEm2m9d684B7UoZg2WbKFPCCa2L126Nh7zRTsDJtzqFNcf0O20240123080050', 'sarahnurrohati0210@gmail.com', 'N', '0', NULL, NULL),
(188, '005/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Ns. Hayyu Mufathuzzahra, S.Kep', 'Bougenville', 'Tembilahan', '1998-07-28', '2', '2022-02-01', '2024-01-20', 'Perawat', '2024-01-23 01:02:19', '2024-01-23 01:13:58', 'N', 'ANXwpZslXHdxPI9GjX0TL4gP8TKJcqa3ttdRofsKmJ19sip4gdqoeIoUzI1E20240123080219', 'mfthzzhra@gmail.com', 'N', '0', NULL, NULL),
(189, '006/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Yuti Yani, A.Md.Keb', 'Alarm Center', 'Pekanbaru', '1996-09-10', '2', '2022-02-01', '2024-01-20', 'Bidan HC', '2024-01-23 01:03:50', '2024-01-23 01:03:50', 'N', '9ehfZwqqgpJZfe6qh1u7Wr4dc3mmoFxdAYeiLiVhpU8rdwOZeWuLmFx9fPTE20240123080349', 'yutiyani969@gmail.com', 'N', '0', NULL, NULL),
(190, '007/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Ns. Nora Setia Ningsih, S.Kep', 'Bougenville', 'Suka Damai', '1997-04-29', '2', '2022-02-01', '2024-01-20', 'Perawat', '2024-01-23 01:05:07', '2024-01-24 04:34:24', 'N', 'mtfC3C24J6LIJPHxTvFymNnPWDdr60e4f5vnkEZ7KLTiQDIG1DP9B2kYftAV20240123080507', 'norasetia0497@gmail.com', 'N', '0', NULL, NULL),
(191, '008/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Endah Wahyu Lestari, A.Md', 'Akuntansi', 'Pekanbaru', '2000-08-04', '2', '2023-01-21', '2024-01-20', 'Account Receivable', '2024-01-23 01:06:25', '2024-01-23 01:06:25', 'N', '3Dcp9cpoe3OBmmHZRPCQ8bjfKh3CRtwl7ofyL8AkIyywwYAdlxmPwg7QlI8F20240123080625', 'endahwahyulestari23@gmail.com', 'N', '0', NULL, NULL),
(192, '009/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Marlina, S.E', 'Keuangan', 'Ka. Keritang', '1996-11-14', '2', '2023-01-21', '2024-01-20', 'Staf Accounting', '2024-01-23 01:08:19', '2024-01-23 01:08:19', 'N', 'C6fj0cep0plUYBoURZSSOWznmuhb1ii400w4zdY1JBMVdKAjRzKa2i8sFFMG20240123080819', 'marlina111496@gmail.com', 'N', '0', NULL, NULL),
(193, '010/RSAB-PKU/SDM/SPK/01.2024', NULL, 'Lusiana Nofita Sari, S.Tr.Keb', 'CSSD', 'Rengat', '1997-11-19', '2', '2022-02-01', '2024-01-20', 'Staf CSSD', '2024-01-23 01:12:00', '2024-01-23 01:12:00', 'N', '4oRpi4Uh6hzFoYwtBxHc4bBbgL6zv0fqzUPAm8vlQy9xZxIVaPO7JBSzpsUq20240123081200', 'lusiananofitasari1911@gmail.com', 'N', '0', NULL, NULL),
(194, '001/RSAB-PKU/SDM/SPK/02.2024', NULL, 'Timoria Rustauli', 'CSSD', 'Medan', '1974-01-21', '1', '2001-04-01', '2024-01-31', 'Nurse Aid', '2024-02-05 01:59:06', '2024-02-05 01:59:06', 'N', 'NtVTywUqj29R5vQXO0LOlASoIePCCcNFmQiMTTfu9TUr2yJl6TgiIoeZT8Z420240205085906', 'timoriarustauli@gmail.com', 'N', '0', NULL, NULL),
(195, '002/RSAB-PKU/SDM/SPK/02.2024', NULL, 'Amri Leny, AMK', 'Cathlab', 'Bukittinggi', '1974-01-06', '1', '1998-03-05', '2024-01-31', 'Perawat', '2024-02-05 02:01:36', '2024-02-05 02:01:36', 'N', 'aTvxKvNmllWbnyhQ2eCJwE3hEV6Zvm44OAbjUZWwTKkjZJnbezpg60HdHP2n20240205090136', 'lenyalen41@gmail.com', 'N', '0', NULL, NULL),
(196, '003/RSAB-PKU/SDM/SPK/02.2024', NULL, 'dr. Winda Aflita', 'Chrysant', 'Tembilahan', '1994-04-20', '1', '2019-09-01', '2024-01-31', 'Dokter Penanggung Jawab Chrysant', '2024-02-12 07:42:44', '2024-02-12 07:42:44', 'N', 'dx6C5JfKdEfN9fwcGJzj3q7fEDId5G6g2XxLWpWKwOQZQjvpIPuH2o44goqk20240212144244', 'windaaflita@gmail.com', 'N', '0', NULL, NULL),
(197, '004/RSAB-PKU/SDM/SPK/02.2024', NULL, 'Rina Zulistin, S.Kep', 'UGD', 'Bantul', '1995-03-09', '1', '2017-01-01', '2024-02-20', 'Perawat', '2024-02-26 01:23:31', '2024-02-26 01:23:31', 'N', '2fE3amdjMoSPHwjr4MYNVtzWjB276pXNxf4zjqDXjbCSwHNKPnoPS06MjUbl20240226082331', 'rinazulistin95@gmail.com', 'N', '0', NULL, NULL),
(198, '001/RSAB-PKU/SDM/SPK/03.2024', NULL, 'Reny Lisanti, S.E', 'Marketing', 'Jakarta', '1973-01-11', '2', '2023-02-01', '2024-02-29', 'Staf Marketing', '2024-03-01 08:59:32', '2024-03-01 08:59:32', 'N', '6KxjydXNwrv22eqW2iNFBSKzjvkTwVrCAywWqj41zMeJkRhlUxJEsHdHy7lZ20240301155932', 'renylisanti@yahoo.co.id', 'N', '0', NULL, NULL),
(199, '002/RSAB-PKU/SDM/SPK/03.2024', NULL, 'Wahidin', 'Marketing', 'Muara Rumba', '1974-02-07', '1', '2003-08-07', '2024-02-29', 'Admission', '2024-03-01 09:21:11', '2024-03-01 09:21:11', 'N', 'OZMmMVf7eiQ6HPU69M2hUecTJFiBetQ162omOniNs4J9p4fOGXaxfA6Z3F1D20240301162111', 'wahidin0702@gamail.com', 'N', '0', NULL, NULL),
(200, '003/RSAB-PKU/SDM/SPK/03.2024', NULL, 'Muhammad Jati', 'Gizi', 'Pematang Kayu Arang', '1974-02-02', '1', '1998-07-03', '2024-02-29', 'Demi Chef', '2024-03-01 09:22:39', '2024-03-01 09:22:39', 'N', 'MA4R2THaLuuDKt1W1DYr3iyLKiibJsLhiZnb7tjX7mg2zvnmDfBEiwmhUqOY20240301162239', 'muhammadjati3@gmail.com', 'N', '0', NULL, NULL),
(201, '004/RSAB-PKU/SDM/SPK/03.2024', NULL, 'Ns. Nora Efrita, S.Kep', 'CVCU', 'Pekanbaru', '1987-07-27', '1', '2012-06-01', '2024-03-20', 'Perawat', '2024-03-22 04:44:34', '2024-03-22 04:44:34', 'N', 'B8BnmNa5CaoW2gfVt6rUa4VFXf9yeVhHoOsbkI0PryTFn7Ccf0ZWA26K1CAy20240322114434', 'noraefrita.syafa@gmail.com', 'N', '0', NULL, NULL),
(202, '005/RSAB-PKU/SDM/SPK/03.2024', NULL, 'Sudirman, A.Md.Kep', 'Kamar Bedah', 'Lubuk Landur', '1990-06-25', '2', '2023-03-21', '2024-03-20', 'Perawat', '2024-03-22 04:46:28', '2024-03-22 04:46:28', 'N', 'HInB0Kk27eD4GjJzCkzwexdyqdGlnPMQFEBQXNaNgSef6UAfcnqUqNhZO9JR20240322114628', 'sudirmananestesi37@gmail.com', 'N', '0', NULL, NULL),
(203, '006/RSAB-PKU/SDM/SPK/03.2024', NULL, 'Ns. Suci Rahmanelly, S.Kep', 'Orchid', 'Pariaman', '1998-01-24', '2', '2022-04-01', '2024-03-20', 'Perawat', '2024-03-22 04:48:02', '2024-03-22 04:48:02', 'N', 'icQ9Bvjtu7U4kMaxXc9Arwxu8z738v8JscYjPCH0bIW3JmHUSi0yijQRziLI20240322114802', 'sucirahmanelly2401@gmail.com', 'N', '0', NULL, NULL),
(204, '007/RSAB-PKU/SDM/SPK/03.2024', NULL, 'Windi, S.E', 'Keuangan', 'Koto Cerenti', '1997-07-23', '2', '2021-04-01', '2024-03-20', 'Kasir', '2024-03-22 04:49:22', '2024-03-22 04:49:22', 'N', 'p4Lv0GPBJUiWU3hCSUs3xERLMwSj4HkbAnzvLRtqP05hfzHjI0qmASYeWImo20240322114922', 'windiantasya53@gmail.com', 'N', '0', NULL, NULL),
(205, '008/RSAB-PKU/SDM/SPK/03.2024', NULL, 'Selly Dwi Permata Sari, S.Kes., M.Kep', 'Keperawatan', 'Pekanbaru', '1997-08-26', '2', '2021-10-01', '2024-03-20', 'Assistant Group Head Keperawatan Regional', '2024-03-22 06:00:42', '2024-03-22 06:00:42', 'N', 'ykIi6jYDcATLuAnBjA11mmGGaKRSSlwGd1Pvp3ZpHZeapB3dqHUyLc7dMwbL20240322130042', 'pertamasarisel@gmail.com', 'N', '0', NULL, NULL),
(206, '001/RSAB-PKU/SDM/SPK/04.2024', NULL, 'Desmira, S.E', 'Keuangan', 'Pekanbaru', '1994-12-07', '2', '2019-04-01', '2024-04-20', 'Kasir', '2024-04-22 03:10:36', '2024-04-22 03:10:36', 'N', '10TK1Md7XIJrWm1BaiO6rC7LAjVfnlekICu1zB0XaC300ib3MyTpdKJzADwh20240422101036', 'Idesmira1@gmail.com', 'N', '0', NULL, NULL),
(207, '002/RSAB-PKU/SDM/SPK/04.2024', NULL, 'Ns. Ulfa Zakyiah, S.Kep', 'Bougenville', 'Rengat', '1997-11-25', '2', '2022-05-01', '2024-04-20', 'Perawat', '2024-04-22 03:12:15', '2024-04-22 03:12:15', 'N', 'XA2pOWaJxvAFzxHdqjWssxHWU0lh206FDp8I0dMwhp3HmCTFb8wG170jxAzx20240422101215', 'ulfazakiyah97@gmail.com', 'N', '0', NULL, NULL),
(208, '003/RSAB-PKU/SDM/SPK/04.2024', NULL, 'dr. Christin Yosanta', 'MCU', 'Pekanbaru', '1994-12-10', '1', '2021-08-01', '2024-04-20', 'Dokter MCU', '2024-04-22 03:13:24', '2024-04-22 03:13:24', 'N', '2XWOS3hPhxsLisdHSdIHjvYrh55mXAcjOL4HcASSAzUVQQFvzV3pnwThARQl20240422101324', 'christinyosanta@gmail.com', 'N', '0', NULL, NULL),
(209, '004/RSAB-PKU/SDM/SPK/04.2024', NULL, 'Febriana Ayonda, S.Sos.', 'Marketing', 'Batam', '2000-02-18', '2', '2023-04-21', '2024-04-20', 'Staf Marketing', '2024-04-22 03:15:05', '2024-04-22 03:15:05', 'N', 'HFw8IXNbmxhIfFCv2D13q9iLHd5BlmRNr6CFwcu8kvOGVvULNIgSXGOtuZfb20240422101505', 'ayondafebriana24@gmail.com', 'N', '0', NULL, NULL),
(210, '005/RSAB-PKU/SDM/SPK/04.2024', NULL, 'Indra', 'Farmasi', 'Pekanbaru', '1974-04-28', '1', '1998-07-01', '2024-04-30', 'Porter', '2024-04-29 06:31:32', '2024-04-29 06:31:32', 'N', 's5On3OInkDK6hvEnC21mYF3ZQvsfWfxfGapUDIcJOv6zZBPxs5caevT2jHZH20240429133132', 'indra.suhu31@yahoo.com', 'N', '0', NULL, NULL),
(211, '006/RSAB-PKU/SDM/SPK/04.2024', NULL, 'Jenny Hartaty Br. Hutagalung, AMK', 'Kamar Bedah', 'Pekanbaru', '1974-04-08', '1', '1998-03-05', '2024-04-30', 'Perawat', '2024-04-29 06:34:20', '2024-04-29 06:34:20', 'N', 'EunoTI2Zt0bPPK6xCgbKLttkUky1mIl0Fyu5wKezX51dCuQ3b6TIutPcufxs20240429133420', 'jennyhartati66@gmail.com', 'N', '0', NULL, NULL),
(212, '007/RSAB-PKU/SDM/SPK/04.2024', NULL, 'Ns. Desi Dwi Nanda, S.Kep', 'Poliklinik', 'XII Kampung', '1997-12-21', '1', '2021-06-01', '2024-04-30', 'Perawat', '2024-04-30 01:38:37', '2024-04-30 01:38:37', 'N', 'fipjsZNySa3CSgtS5GmnUNMpAAod11DslrIIYqCXE8nKvzBwAJ54prR8upPf20240430083837', 'desidwinanda1221@gmail.com', 'N', '0', NULL, NULL),
(213, '008/RSAB-PKU/SDM/SPK/04.2024', NULL, 'Ns. Nurmaya Indah Pratiwi, S.Kep', 'Orchid', 'Terantam', '1997-08-29', '1', '2021-03-01', '2024-04-30', 'Perawat', '2024-04-30 01:40:12', '2024-04-30 01:40:12', 'N', 'agGpXwQoBi80bGUxAoV9o8XyTQ5V4lUlgErL8CCZ93doiS6HyvXJPpKjHuDu20240430084012', 'mayapratiwi24@gmail.com', 'N', '0', NULL, NULL),
(214, '009/RSAB-PKU/SDM/SPK/04.2024', NULL, 'Hari Syatrya, AMD.RMIK', 'Rekam Medis', 'Muara Bungo', '1988-10-08', '1', '2014-02-01', '2024-04-30', 'Kanit Rekam Medis', '2024-04-30 01:42:14', '2024-04-30 01:42:14', 'N', 'a80LvXJ84nQ3nGpaUe9jkhy3W7wGbuCFE46aB6Qg76z0KUeSr390WKeP7cCI20240430084214', 'harisyatrya@gmail.com', 'N', '0', NULL, NULL),
(215, '001/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Ns. Rahmi Fahmawinda, S.Kep', 'Poliklinik', 'Duri', '1995-11-15', '1', '2021-05-01', '2024-05-20', 'Perawat', '2024-05-22 04:01:53', '2024-05-22 04:01:53', 'N', 'Sk0eRRzYRS5YuhYPdmqtVUv3vrUQf2COFUuIrlH2AvgpSnveRZvOFJz9jpfx20240522110153', 'rahmifahmawinda@gmail.com', 'N', '0', NULL, NULL),
(216, '002/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Yulia Rahmah, S.Psi', 'Akuntansi', 'Baso', '1993-03-22', '1', '2012-02-01', '2024-05-20', 'Account Receivable', '2024-05-22 04:04:35', '2024-05-22 04:04:35', 'N', 'bOQ9tQst29VEiRy2Y0Ak5CqOhnlKGx2ZU222lwWAy0foY1wiwvcYUUrh24i120240522110435', 'yuliarahmahpsikologi@gmail.com', 'N', '0', NULL, NULL),
(217, '003/RSAB-PKU/SDM/SPK/05.2024', NULL, 'apt. Veronika Yuliyani Gultom, S.Farm', 'Farmasi', 'Perdagangan', '1996-05-01', '1', '2021-05-01', '2024-05-20', 'Apoteker', '2024-05-22 04:06:05', '2024-05-22 04:06:05', 'N', 'X8HpISa5Zi7mz6gK4vAiRAHrlBEym0hwWI3mgdDB18OjALmDkKk9YhAphEHC20240522110605', 'veronikayuliyani@gmail.com', 'N', '0', NULL, NULL),
(218, '004/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Ferawati Magdalena Silaban, S.Farm', 'Farmasi', 'Simpang Bangko', '1998-03-14', '2', '2023-05-21', '2024-05-20', 'Asisten Apoteker', '2024-05-22 04:07:49', '2024-06-08 01:09:20', 'N', '62DD6IXB9hFehRjPHnNm13pYt5MkmLYuzfJOiKT3mwHPnkWpfK2pzN12nNvS20240522110749', 'ferawatimagdalenasilaban@gmail.com', 'N', '0', NULL, NULL),
(219, '005/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Hasnaturrahmadani, S.I.Kom.', 'MPP & Casemix', 'Pekanbaru', '1995-02-27', '2', '2023-05-21', '2024-05-20', 'Staf Casemix', '2024-05-22 04:09:24', '2024-05-22 04:09:24', 'N', 'VX3fZ2TBrblIgc00bJxyyWIsFCLhqvCUOh7bS1p8GBzxVGuVsqpkVXuzRj4h20240522110924', 'hsntrrhmdni3027@gmail.com', 'N', '0', NULL, NULL),
(220, '006/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Hasmilawati', 'Gizi', 'Asam Kumbang', '1976-07-04', '1', '1998-07-27', '2024-05-31', 'Asisten Pemasak', '2024-05-28 01:33:12', '2024-05-28 01:33:12', 'N', 'nMAKGDN61NUXAOoNxq4gHIZ4pm4KqbMloWM0v1McF8T2EoC6mxNAcdM5JakE20240528083311', 'hasmilawati2019@gmail.com', 'N', '0', NULL, NULL),
(221, '007/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Marliza', 'Gizi', 'Bangkinang', '1979-03-20', '1', '2002-06-12', '2024-05-31', 'Pemasak', '2024-05-28 01:34:18', '2024-05-28 01:34:18', 'N', 'C81XK46CgpTU4txbUz1Tdoor1KkiQyDCc8B64dpGU2SpG76kYdVBGI3pSAdb20240528083418', 'marlizaaa8@gmail.com', 'N', '0', NULL, NULL),
(222, '008/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Rahmat Mulia', 'Gizi', 'Pekanbaru', '1990-06-07', '1', '2012-07-01', '2024-05-31', 'Steward', '2024-05-28 01:35:44', '2024-05-28 01:35:44', 'N', '5Ix9bxozAmYfEmlfkX51moevBAxkRN2Z5kMw7D0cgQNesR7omPnY0Tw9sxMF20240528083544', 'rahmatmulia1970@gmail.com', 'N', '0', NULL, NULL),
(223, '009/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Esra Ulina Sihotang', 'Gizi', 'Jakarta', '1972-06-19', '1', '2013-02-01', '2024-05-31', 'Pengemasan Makanan', '2024-05-28 01:37:14', '2024-05-28 01:37:14', 'N', 'o6HU4MCuKvQwtR5NbUm4Dtcb1pGDJCoLqlHdVRyjyJnXe1yActmvlS1P28yd20240528083713', 'kakesra91@gmail.com', 'N', '0', NULL, NULL),
(224, '010/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Agustina Wijaya', 'Gizi', 'Pekanbaru', '1976-08-16', '1', '2017-11-01', '2024-05-31', 'Pemasak', '2024-05-28 01:38:33', '2024-05-28 01:38:33', 'N', 'hnJ0irbsvPcnTF317tkw4ryilhghdxdBrDscQQarvgSB1LuZsA0y7v3pVHPp20240528083833', 'agustnike16@gmail.com', 'N', '0', NULL, NULL),
(225, '011/RSAB-PKU/SDM/SPK/05.2024', NULL, 'Surya Hartanti', 'Gizi', 'Pematang Siantar', '1990-08-13', '1', '2019-08-01', '2024-05-31', 'Pemasak', '2024-05-28 01:39:51', '2024-05-28 01:39:51', 'N', 'bQ2A5WMIhGjhq77oTLu0jMAUfNlDpjobA0S47aHPPGz1Wfsb4mRDQkkfrfNT20240528083951', 'hartantisurya@gmail.com', 'N', '0', NULL, NULL),
(226, '001/RSAB-PKU/SDM/SPK/06.2024', NULL, 'Ns. Lysta Thiaraciwi, S.Kep', 'Poliklinik', 'Semarang', '1995-07-24', '1', '2022-03-01', '2024-05-31', 'Perawat', '2024-06-03 07:46:20', '2024-06-03 07:46:20', 'N', 'sKFA9ddy1slR4CmTXWt2GXTcUZYSgFIFTx0q5Sfgzzs4emTXQEUMlrBzxvBv20240603144620', 'thiahae@gmail.com', 'N', '0', NULL, NULL),
(227, '002/RSAB-PKU/SDM/SPK/06.2024', NULL, 'Rinto', 'Transportasi', 'Slawi Jateng', '1974-05-30', '1', '1998-08-01', '2024-05-31', 'Driver', '2024-06-05 07:45:16', '2024-06-05 07:45:16', 'N', 'bUU2EKnhB1P0Cq1ldHKNTmgh709gwYeGk50WzCoEeywomc9EYqoPsRPPELi920240605144516', 'rintothia2005@gmail.com', 'N', '0', NULL, NULL),
(228, '003/RSAB-PKU/SDM/SPK/06.2024', NULL, 'Nurul Komalasari, M.M', 'Marketing', 'Bogor', '1993-08-01', '2', '2023-07-21', '2024-06-20', 'Staf Marketing', '2024-06-24 02:15:35', '2024-06-24 02:15:35', 'N', '4qpt9deijBDKLU28fKA8yxlYHaPP17pjBL5JK5ZG8qBRk6mrNVew00TQPJmS20240624091535', 'nurulks9318@gmail.com', 'N', '0', NULL, NULL),
(229, '004/RSAB-PKU/SDM/SPK/06.2024', NULL, 'Kariyana Pascilia Sembiring, S.Tr.Gz', 'Gizi', 'Meranti', '1998-04-08', '2', '2023-07-21', '2024-06-20', 'Ahli Gizi', '2024-06-24 02:17:19', '2024-06-24 02:17:19', 'N', 'ou8ncQKUlAneDYdwT43pvjs4nNqpH1pCyeaBA9kDGwa3hYfRsg3HsO0WwEwA20240624091719', 'karinsembiring08@gmail.com', 'N', '0', NULL, NULL),
(230, '005/RSAB-PKU/SDM/SPK/06.2024', NULL, 'dr. Rieskariesha Kiswara', 'ICU/PICU', 'Pekanbaru', '1993-07-29', '1', '2019-02-01', '2024-06-20', 'Dokter Penanggung Jawab ICU/NICU & Cathlab', '2024-06-24 02:29:41', '2024-06-24 02:29:41', 'N', 'FI0onerCImiSqpa0Nw14coNU4COthKY1zdaE5VZFUNXkEn0LsfpJJTNMHip620240624092941', 'rieska.kiswara@gmail.com', 'N', '0', NULL, NULL),
(231, '006/RSAB-PKU/SDM/SPK/06.2024', NULL, 'dr. Dyoza Ashara Suciano Cinnamon', 'Dokter Umum', 'Jakarta', '1996-01-26', '2', '2023-02-14', '2024-06-20', 'Dokter Umum', '2024-06-24 02:31:04', '2024-06-24 02:31:04', 'N', 'owu4rLxE73srW6FV3cWSn9tD2OeOZLXsPh56clWhrRg5OXcpfR6XlQ8bUo3920240624093104', 'dr.dyoza@gmail.com', 'N', '0', NULL, NULL),
(232, '007/RSAB-PKU/SDM/SPK/06.2024', NULL, 'dr. Febri Hanifa F', 'Dokter Umum', 'Bukittinggi', '1993-02-18', '1', '2020-11-02', '2024-06-20', 'Dokter Umum', '2024-06-24 02:33:19', '2024-06-24 02:33:19', 'N', 'COPlDYSENi0qE8Zp5JfdohmKf9GxAgAPBNdf0faLYkgIRj7zJbGkXjsGF6SH20240624093319', 'febihf@gmail.com', 'N', '0', NULL, NULL),
(233, '008/RSAB-PKU/SDM/SPK/06.2024', NULL, 'Arina Jaya', 'Gizi', 'Sungai Manasib', '1974-03-01', '1', '1998-08-03', '2024-03-31', 'Admin Gizi', '2024-06-27 04:40:49', '2024-06-27 04:40:49', 'N', 'YrNnq0YSos82HqySKGNo4mLzwlwdO0SempsdeLFdZV2DpuBFKHsDmAbYfi6n20240627114049', 'arina_jaya@ymail.com', 'N', '0', NULL, NULL),
(234, '001/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Ns. Indah Wulan Yuli, S.Kep', 'Lily', 'Rimbo Panjang Sungai', '1997-07-17', '1', '2021-09-01', '2024-06-30', 'Perawat', '2024-07-01 01:30:57', '2024-07-01 01:30:57', 'N', 'TifkUWGf4H8sE0KZluodTJtKp4NHyW22Y02kd9vMBCTqIqQXKyCSAyH0QxiC20240701083057', 'indahwulany@gmail.com', 'N', '0', NULL, NULL),
(235, '002/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Ns. Ade Irma Pramita, S.Kep', 'Flamboyan', 'Pangkalan Baru', '1992-07-28', '1', '2020-03-01', '2024-06-30', 'Perawat', '2024-07-01 01:32:43', '2024-07-01 01:32:43', 'N', '9KQSTcZzg1wlEoBcp3RZm4GrSNE9wFGw1e3C90QgEGYXlE0VMEH1bsjRbyev20240701083243', 'ademitha0707@gmail.com', 'N', '0', NULL, NULL),
(236, '003/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Meri Silvia, AMD.PK', 'Rekam Medis', 'Pekanbaru', '1991-05-05', '1', '2015-04-01', '2024-06-30', 'Staf Rekam Medis', '2024-07-01 01:34:06', '2024-07-01 01:34:06', 'N', 'KhyeIZ2QcZXSLrOrKAPF5ybCZiEECEFK60rxip7FE8liPhUi747vE1wryyYT20240701083406', 'merisilvia24@gmail.com', 'N', '0', NULL, NULL),
(237, '004/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Ns. Mudianti Junia Sestri, S.Kep', 'Bougenville', 'Teluk Pinang', '1994-06-29', '1', '2019-08-01', '2024-06-30', 'Perawat', '2024-07-01 01:35:42', '2024-07-01 01:35:42', 'N', 'dy2vLNOTLYGQy5Z3sMjdt9KKg2m8I0ON5nlhU8441p0ailiVmXNOb1xoqEZy20240701083542', 'sestrimudiantijunia@gmail.com', 'N', '0', NULL, NULL),
(238, '005/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Devi Yusvina, A.Md', 'Mutu', 'Pekanbaru', '1974-06-29', '1', '1998-07-15', '2024-06-30', 'Sekretaris Bidang Akreditasi', '2024-07-02 01:14:51', '2024-07-02 01:20:21', 'N', 'wKf37LOcbuu9Lg1IFdGa12UeVAJ2sXeIPMcBotZrUG8MelnRoqJBK7vzjsoZ20240702081451', 'deviyusvina@gmail.com', 'N', '0', NULL, NULL),
(239, '006/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Riswanto', 'Security & Transportasi', 'Surakarta', '1972-06-22', '2', '2022-07-01', '2024-06-20', 'Kanit Security & Transportasi', '2024-07-02 02:21:53', '2024-07-02 02:21:53', 'N', 'UaaReckD3lPwYCfdYcYYV56DxoWfQv5R9uk6gL4pphgTC4wUscaEPsDqw4an20240702092153', 'iwanto1597@gmail.com', 'N', '0', NULL, NULL),
(240, '007/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Wita Putri Yulia', 'Laboratorium', 'Sungayang', '1985-07-23', '1', '2011-05-01', '2024-07-21', 'Adm Labor', '2024-07-26 04:51:39', '2024-08-08 07:47:46', 'N', 'OcE9rc5pW0Wbe2zddA12sXKT6Sj0qnYdcdGkkJjuFzjVsfuzAq9zhoNx2WIR20240726115139', 'wita.awalbros@gmail.com', 'N', '0', NULL, NULL),
(241, '008/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Liwandra, A.Md.A.K', 'Laboratorium', 'Kampar', '1997-02-25', '2', '2021-08-01', '2024-07-20', 'Analis', '2024-07-26 04:52:50', '2024-07-26 04:52:50', 'N', 'aFkIVyqlgw8FnscoNSxYNJvYhCjs4LeIVZncTvWT1MHAuvV13ykDtAUhkjNB20240726115250', 'liwandra275@gmail.com', 'N', '0', NULL, NULL),
(242, '009/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Ns. Syarfail, S.Kep', 'Sunflower', 'Pakandangan', '1998-04-29', '2', '2022-07-21', '2024-07-20', 'Perawat', '2024-07-26 04:53:59', '2024-07-26 04:53:59', 'N', 'aBH004JchesVPL3Lv3okobSmP7usY9pe9JbB0TUwdTI2VpgJgJm6pKHgjAeD20240726115359', 'syarfail04@gmail.com', 'N', '0', NULL, NULL),
(243, '010/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Yuli Asmiarti, SE', 'CSSD', 'Pekanbaru', '1992-02-08', '1', '2022-11-21', '2024-07-20', 'Nurse Aid', '2024-07-26 04:55:27', '2024-07-26 04:55:27', 'N', 'PlC77zbQhbxD97CpCExMRQwxcl67DjGgaGAxhOHetqCvAoFiUikciLpdjCBI20240726115527', 'yuliasmiartihariadi7435@gmail.com', 'N', '0', NULL, NULL),
(244, '011/RSAB-PKU/SDM/SPK/07.2024', NULL, 'dr. Gunawan Adhiguna', 'Dokter Umum', 'Pekanbaru', '1995-09-03', '1', '2020-02-01', '2024-07-22', 'Dokter Umum', '2024-07-26 07:42:04', '2024-07-26 07:42:04', 'N', 'icICv31pO3VPDvhwxRDGeJ5ui6S5F5RevGp1WMC7W7z6FJMpx0fuVwG5GBsn20240726144204', 'gunawanadhiguna@gmail.com', 'N', '0', NULL, NULL),
(245, '012/RSAB-PKU/SDM/SPK/07.2024', NULL, 'Sonia Yustisia Armadison, A.Md.Keb', 'Gardenia & VK', 'Padang', '1999-05-01', '2', '2024-02-21', '2024-07-31', 'Bidan', '2024-07-31 04:08:11', '2024-07-31 04:08:11', 'N', '829rXpKBE9I7rw8niOZy8yAZ3Evw60hV3w8GvIbtVtqNwjWgC0kvwxovCq4a20240731110811', 'soniayustisiaa01@gmail.com', 'N', '0', NULL, NULL),
(246, '001/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Putrila Tanjung, A.Md.Kep', 'Alarm Center', 'Pasar Baru', '2000-02-03', '1', '2022-02-01', '2024-07-24', 'Perawat Homecare', '2024-08-01 04:06:21', '2024-08-02 03:24:47', 'N', 'l9O2ulJMfO0HrAcvpNDwfzzj82E6IMBokIbBpdu3lYqiabacnJuzFgE8eoYo20240801110621', 'putrilatanjung@gmail.com', 'N', '0', NULL, NULL),
(247, '002/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Ns. Alhidayati, S.Kep', 'Endoscopy', 'Tj Alam', '1974-07-13', '1', '2000-06-13', '2024-07-31', 'Karu Endoscopy', '2024-08-01 04:11:41', '2024-08-01 04:11:41', 'N', 'LE38oIiNtp8vOztkmWA8h0OqqZNHcBJjcID7J6PDrgqzeXBAGIc1l7Ek4uQC20240801111141', 'alhidayatihidayah@gmail.com', 'N', '0', NULL, NULL),
(248, '003/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Joni Syafutra, AMK', 'Hemodialisa', 'Jambak', '1972-01-15', '1', '1999-06-17', '2022-01-31', 'Perawat', '2024-08-01 04:25:23', '2024-08-01 04:25:23', 'N', 'EWqFOGhIJBdXaVGNBAYnMpONMpSzwZZuiLacyaqFgrYIHZDS2vX7PCVxSrBz20240801112523', 'syafutrajoni72@gmail.com', 'N', '0', NULL, NULL),
(249, '004/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Joni Syafutra, AMK', 'Hemodialisa', 'Jambak', '1972-01-15', '2', '2022-02-01', '2024-07-31', 'Perawat', '2024-08-01 04:26:32', '2024-08-01 04:26:32', 'N', 'vtATSkPuJNPIuGh96cshunKrHbz26qenyvApnpM6eSxWSw9K73fMcbwWt2Ki20240801112632', 'syafutrajoni72@gmail.com', 'N', '0', NULL, NULL),
(250, '005/RSAB-PKU/SDM/SPK/08.2024', NULL, 'dr. Noni Rahmawati', 'Marketing', 'Sungai Rokan', '1987-04-21', '2', '2023-08-14', '2024-08-01', 'Pjs Koordinator Marketing', '2024-08-05 07:12:33', '2024-08-05 07:12:33', 'N', '0192hCKZryxdSgZtcvrxTmDmIm0OiVOXebURmbl3zUfDy4doDym02YLWDamm20240805141233', 'rahmawatinoni87@gmail.com', 'N', '0', NULL, NULL),
(251, '006/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Ns. Hayatun Nupus, S.Kep', 'CSSD', 'Bangkinang', '2000-02-02', '2', '2023-08-14', '2024-08-13', 'Staf CSSD', '2024-08-15 02:30:06', '2024-08-15 02:30:06', 'N', 'RVW1MDfO7ZeyKZUSJS7rY3vnB8aTsLvzQK72e8ZRMOtVHE3vf3R9lxkon8Qv20240815093006', 'hayatunnupus872@gmail.com', 'N', '0', NULL, NULL),
(252, '007/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Ns. Zainul Efina, S.Kep', 'CSSD', 'Pagadih', '1998-10-09', '2', '2023-08-14', '2024-08-13', 'Staf CSSD', '2024-08-15 02:31:18', '2024-08-15 02:31:18', 'N', 'aZFPGKav6H3w3W265UdNOLWjiaMABCTfMCoPa54Jr0JcPSTCdgmoObbja5S820240815093118', 'efinaz09@gmail.com', 'N', '0', NULL, NULL),
(253, '008/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Ismail', 'HK & Laundry', 'Bangko Jaya', '1989-01-17', '1', '2019-03-01', '2024-07-24', 'Staf HK & Laundry', '2024-08-16 01:55:40', '2024-08-16 01:55:40', 'N', 'BkIGzW2Mgh9BUc4uVwdTZlb8OD5xtb1G9K5scfpKpkUKbhlkIAmPWUs5BAzX20240816085540', 'ismail170189@gmail.com', 'N', '0', NULL, NULL),
(254, '009/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Dimas Pandu Winata, A.Md.Kes', 'Laboratorium', 'Pantai Raja', '1998-04-01', '2', '2021-08-01', '2024-08-20', 'Analis', '2024-08-21 07:11:03', '2024-08-21 07:11:03', 'N', 'VXsVBGXPjQoovYatUBiJ7vqBmEZi2Qe3aY92b9hVWvIEeI5GKsQakGyWFTcL20240821141103', 'dimas.pandu.winata.01@gmail.com', 'N', '0', NULL, NULL),
(255, '010/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Ns. Melia Yanti, S.Kep', 'Chrysant', 'Jakarta', '1991-07-28', '1', '2016-04-01', '2024-08-20', 'Perawat', '2024-08-21 07:12:39', '2024-08-21 07:12:39', 'N', 'HpOuKNR74noqnqC6A61KyssI94CmSOiEZ11a7a1VB8qqSp4TtDeNrPtTOuAo20240821141239', 'iaamelia28@gmail.com', 'N', '0', NULL, NULL),
(256, '011/RSAB-PKU/SDM/SPK/08.2024', NULL, 'apt. Rizky Nanda Amelia, S.Farm', 'Farmasi', 'Pekanbaru', '1996-03-02', '1', '2020-11-02', '2024-08-20', 'Apoteker', '2024-08-21 07:14:03', '2024-08-21 07:14:03', 'N', 'Y3R4ozpW29odprLCdeWg4ibQwLpmJDoO8OMT8GrJbJTCRp4J42NWhvziuM8220240821141403', 'rizkynandaameliaa@gmail.com', 'N', '0', NULL, NULL),
(257, '012/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Rita Tambusai', 'MPP & Casemix', 'Bandung', '1974-08-23', '1', '2003-06-01', '2024-08-31', 'Staf Casemix', '2024-08-31 01:43:14', '2024-08-31 01:43:14', 'N', 'SW9vkRP9u5BF0uE9QyEsq3QYMmGs4Kt8QAcMfVdvQgQ81NMbyMjSnZXH6klw20240831084314', 'ritatambusai@gmail.com', 'N', '0', NULL, NULL),
(258, '013/RSAB-PKU/SDM/SPK/08.2024', NULL, 'Maria Musaobe, AMK', 'TRB', 'Medan', '1974-08-07', '1', '2002-02-07', '2024-08-31', 'Analis Lab Andrologi', '2024-08-31 01:44:43', '2024-09-04 02:31:14', 'N', 'fyjg61hbGqiYiodonYvszeheJ7RyoKFiUHcis52dcpP8ndQLx9ssnKHn4qTf20240831084442', 'misaobemaria@gmail.com', 'N', '0', NULL, NULL),
(259, '001/RSAB-PKU/SDM/SPK/09.2024', NULL, 'Putri Rahmayanti, S.E.', 'Keuangan', 'Pekanbaru', '1996-02-08', '2', '2020-09-01', '2024-09-20', 'Kasir', '2024-09-24 01:20:10', '2024-09-24 01:20:10', 'N', 'NfZhMRaUJtmt0oDW0irSCyewQ7kZAIaV84DpEMf4Vahtk6ckSa9Yn0X0vYo420240924082010', 'putryrahmayanti8@gmail.com', 'N', '0', NULL, NULL),
(260, '002/RSAB-PKU/SDM/SPK/09.2024', NULL, 'Ns. Rizka Mailani Putri, S.Kep', 'Tulip', 'Penyasawan', '1998-03-31', '2', '2023-09-21', '2024-09-20', 'Perawat', '2024-09-24 01:21:28', '2024-09-24 01:21:28', 'N', 'p28ejyjjaZ1DYK55bYHpqDJ6Gd8o5CKlbRZXSTdDxri2dquRmp72UDrCEMaF20240924082128', 'rizkamailaniputri@gmail.com', 'N', '0', NULL, NULL),
(261, '003/RSAB-PKU/SDM/SPK/09.2024', NULL, 'apt. Lisa Kasrila, S.Farm', 'Farmasi', 'Ladang Panjang', '1998-06-05', '2', '2023-09-21', '2024-09-20', 'Apoteker', '2024-09-24 01:22:31', '2024-09-24 01:22:31', 'N', 'UbTvMTlnFed6r8UVKNIvKV6mwmffGf4ccCff3NO7bcwQiRJ30kBQKVVFqwVS20240924082231', 'lisakasrila5698@gmail.com', 'N', '0', NULL, NULL),
(262, '004/RSAB-PKU/SDM/SPK/09.2024', NULL, 'apt. Yuniken Anggia Sari, S.Farm', 'Farmasi', 'Galang', '1998-06-29', '2', '2023-09-21', '2024-09-20', 'Apoteker', '2024-09-24 01:23:36', '2024-09-24 01:23:36', 'N', 'qHTahEYVvcYLGGZcegQ8rRmUmlMFYmGUaiVFIjDPWESX74xZn9oQ0A0x0tcY20240924082336', 'nikenanggia400@gmail.com', 'N', '0', NULL, NULL),
(263, '005/RSAB-PKU/SDM/SPK/09.2024', NULL, 'Welni Putri Afrianti, A.Md.Farm.', 'Farmasi', 'Pasir Pengaraian', '1999-04-16', '1', '2021-06-01', '2024-09-20', 'Asisten Apoteker', '2024-09-24 01:25:01', '2024-09-24 01:25:01', 'N', 'CBPL7WmLIT4dBBUjhIc4r83t3AZMFRPhycjq1BuPcFotozMrWImCMtsm7JTt20240924082501', 'welniputriafrianti@gmail.com', 'N', '0', NULL, NULL),
(264, '001/RSAB-PKU/SDM/SPK/10.2024', NULL, 'Putri Aisah, A.Md.Kep.', 'Poliklinik', 'Medan', '1996-08-14', '1', '2019-12-01', '2024-09-30', 'Perawat', '2024-10-08 02:16:27', '2024-10-08 02:16:27', 'N', 'fYZ29Yddw5FCITcfO44UrJAOCKjPjKNUGlRPmZHLMwXc3lgKHqRTt8CjWe6w20241008091627', '150201016@student.umri.ac.id', 'N', '0', NULL, NULL),
(265, '010/RSAB-PKU/SDM/SPK/11.2024', NULL, 'YUSRIZAL TEST', 'IT', 'BINJAI', '1987-06-17', '1', '2009-04-09', '2024-11-19', 'PELAKSANA', '2024-11-18 01:37:51', '2024-11-18 01:37:51', 'N', 'sZDQ9RsqIe9SmQYrz6tBP1q1hoW5WiEUtoEJbcrrp7NHDHwaH28jgrZUeoMl20241118083751', NULL, 'N', '0', NULL, NULL),
(266, '011/RSAB-PKU/SDM/SPK/11.2024', NULL, 'dr. Winda Wiranti', 'Dokter Umum', 'Pekanbaru', '1995-11-20', '2', '2022-10-21', '2024-10-20', 'Dokter Umum', '2024-11-18 01:38:58', '2024-11-18 01:38:58', 'N', 'X3ceWddNx0GdHV6OVRbpFR6tfYyYqw0e0Fxqxicb4wuG1GWtkNHx0vMSRI1F20241118083858', NULL, 'N', '0', NULL, NULL),
(267, '012/RSAB-PKU/SDM/SPK/11.2024', NULL, 'Ilnur Meliza, A.Md.Farm', 'Farmasi', 'Tanjung Kandis', '2000-03-18', '2', '2022-10-21', '2024-10-20', 'Asisten Apoteker', '2024-11-18 01:40:43', '2024-11-18 01:40:43', 'N', 'TmQ4vROJOZj5vhpe64K1JuFVKfhQiyNadL5OgItUp54MS9EOt2TKu1kjJFIB20241118084043', NULL, 'N', '0', NULL, NULL),
(268, '013/RSAB-PKU/SDM/SPK/11.2024', NULL, 'Yetti Murni, AMK', 'Hemodialisa', 'Batu Sangkar', '1974-10-23', '1', '1998-12-07', '2024-10-31', 'Perawat', '2024-11-18 01:49:01', '2024-11-18 01:49:01', 'N', 'LZpjSpMmREPIHRt6tLNdgQ7qt2heWNVYE7npmglvsMw2W50qLCKSY6ZW8pfI20241118084901', NULL, 'N', '0', NULL, NULL),
(269, '014/RSAB-PKU/SDM/SPK/11.2024', NULL, 'Lukmanul Hakim, A.Md', 'Marketing', 'Pekanbaru', '1991-06-07', '1', '2015-11-01', '2024-10-31', 'Kanit Medical Hospital Relation', '2024-11-18 01:50:20', '2024-11-18 01:50:20', 'N', 'U2FJJIrFOPCDE2Ap49SkBZFD1ZGamPBPMJIgm3vIh29x82MWR7N4d9WNR5JR20241118085019', NULL, 'N', '0', NULL, NULL),
(270, '015/RSAB-PKU/SDM/SPK/11.2024', NULL, 'Nursanah, S.Kep', 'PSO', 'Jakarta', '1980-08-14', '1', '2002-02-23', '2024-10-08', 'PSO', '2024-11-18 01:51:27', '2024-11-18 01:51:27', 'N', 'AxsxiWg6nwwqyXFY72v2tjH3zYBxxG9j63JIYO1U3EGnQmjlQw5JendnmLPr20241118085127', NULL, 'N', '0', NULL, NULL),
(271, '016/RSAB-PKU/SDM/SPK/11.2024', NULL, 'Ns. Mestika, S.Kep', 'Bougenville', 'Teluk Lecah', '1991-09-29', '1', '2021-06-01', '2024-11-04', 'Perawat', '2024-11-26 02:11:59', '2024-11-26 02:11:59', 'N', 'TqtYyX5Tjb26OQHOPvQwjcPkSzePYFr0o1CSj7qCHdFrSiOzdtQ9A7hmVqAw20241126091159', NULL, 'N', '0', NULL, NULL),
(272, '017/RSAB-PKU/SDM/SPK/11.2024', NULL, 'dr. Annisa Nabila Asmahani, MARS', 'MPP & Casemix', 'Pekanbaru', '1997-03-15', '2', '2024-02-21', '2024-11-24', 'Manajemen Pelayanan Pasien', '2024-11-29 01:21:11', '2024-11-29 01:21:11', 'N', 'xoRjQyEnqMFmyFIS8YTeE0hVzmaoUHti3jaA89oFjeYIcK5xcXLKm2afPn2Q20241129082111', NULL, 'N', '0', NULL, NULL),
(273, '018/RSAB-PKU/SDM/SPK/11.2024', NULL, 'dr. Meuthia Rizka Mutiara Indra', 'Kemoterapi', 'Pekanbaru', '1996-03-03', '1', '2022-02-01', '2024-11-20', 'Pjs Dokter Penanggung Jawab Pelayanan Onkologi Terpadu', '2024-11-29 01:31:02', '2024-11-29 01:31:02', 'N', '9mSUqWuH8uPiCtEial7SJhWcrexIOJzIqYG66T4Hy0cffmI9TjhUqTyttpin20241129083102', NULL, 'N', '0', NULL, NULL),
(274, '001/RSAB-PKU/SDM/SPK/12.2024', NULL, 'Ns. Anisa Arrasy Shiddieqy, S.Kep', 'Bougenville', 'Padang', '1999-03-12', '2', '2022-11-21', '2024-11-30', 'Perawat', '2024-12-03 03:32:45', '2024-12-03 03:32:45', 'N', '5QSkS8uAjydp9LR5PXoZQITgmmO9VlvIrLUuunvgws7NXuX4puYNFcx8jP1N20241203103245', NULL, 'N', '0', NULL, NULL),
(279, '023/RSAB-PKU/SDM/12.2024', 'PK2022217', 'Ns. Anisa Arrasy Shiddieqy, S.Kep', 'Bougenville', 'Padang', '1999-03-12', '2', '2022-11-21', '2024-11-30', 'Perawat', '2024-12-04 02:46:14', '2024-12-05 08:58:42', 'N', 'EI6W4ufeEpkd9s5SVX3G41bpLTBHiGxbY62VlKZXZZtOCkH7PXONKW0itIWY20241204094614', 'anisa.arrasy99@gmail.com', 'Y', '2', '2024-12-05 15:58:37', '2024-12-10 12:39:06'),
(280, '120/RSAB-PKU/SDM/12.2024', 'PK2022029', 'dr. Meuthia Rizka Mutiara Indra', 'Kemoterapi', 'Pekanbaru', '1996-03-03', '1', '2022-02-01', '2024-11-20', 'Dokter Penanggung Jawab Pelayanan Onkologi Terpadu', '2024-12-11 07:07:45', '2024-12-11 07:08:22', 'N', 'IP7uMJKc3PpRyiQ4mv7dSoCrBhximbMLcIQ5N8lC14iWzINif7hLeV4T2s8t20241211140745', 'meuthiarizkamutiara@gmail.com', 'Y', '2', '2024-12-11 14:08:17', '2024-12-11 14:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `surat_rekomendasi_abs`
--

CREATE TABLE `surat_rekomendasi_abs` (
  `ID` bigint NOT NULL,
  `SuketRekomendasiID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SEO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamaKarywan` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bagian` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jabatan` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TempatLahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TanggalLahir` date NOT NULL,
  `JenisKaryawanID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Awal_Kerja` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Akhir_Kerja` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `awal` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `sekarang` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `JumlahPengajuan` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Setujui` enum('Y','N','B') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `Status` enum('0','1','2','-1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `TanggalKirim` datetime DEFAULT NULL,
  `TanggalSetujui` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_rekomendasi_abs`
--

INSERT INTO `surat_rekomendasi_abs` (`ID`, `SuketRekomendasiID`, `SEO`, `NIK`, `NamaKarywan`, `Bagian`, `Jabatan`, `TempatLahir`, `TanggalLahir`, `JenisKaryawanID`, `Awal_Kerja`, `Akhir_Kerja`, `awal`, `akhir`, `sekarang`, `JumlahPengajuan`, `created_at`, `updated_at`, `NA`, `Email`, `Setujui`, `Status`, `TanggalKirim`, `TanggalSetujui`) VALUES
(2, '085/RSAB-SDM/12.2024', 'PmSkAZqFwogLaMWVX7zICjylWH7iGSThQVhcN3d1OkMVSOMKxz5BPLCdSNg720241209094447', 'PK2016064', 'Sri Rahayu', 'Akuntansi', 'Account Receivable', 'Koto Patah', '1992-08-18', '01', NULL, NULL, '2016-12-01', NULL, 'Y', '40000000.00', '2024-12-09 02:44:47', '2024-12-09 02:44:47', 'N', 'srirahayu230818@gmail.com', 'Y', '2', '2024-12-09 10:58:18', '2024-12-10 12:41:03'),
(3, '113/RSAB-SDM/12.2024', 'tOkfgnjqI2OFAOSK4siSf0QoM1WU9qRwGZJ0EGjwqHTFjxlC3KWV6jSdTVNw20241211091819', 'PK2016006', 'Viega Amanda Desya', 'Rose', 'Perawat', 'Padang Mutung', '1992-01-05', '01', NULL, NULL, '2016-03-01', NULL, 'Y', '60000000.00', '2024-12-11 02:18:19', '2024-12-11 02:18:19', 'N', 'viegadesya@gmail.com', 'Y', '2', '2024-12-11 14:09:49', '2024-12-11 14:33:36'),
(4, '114/RSAB-SDM/12.2024', 'BcclAPUV8GlVVwPDx7pnjRT3uyA28KPURk9uQwLnDGKpdNZE2z3TwsYOxvMI20241211092012', 'PK2022049', 'Vicky Yunica Septiani', 'Rose', 'Perawat', 'Pangkalan', '1998-09-16', '01', NULL, NULL, '2022-02-01', NULL, 'Y', '60000000.00', '2024-12-11 02:20:12', '2024-12-11 02:20:12', 'N', 'vickyyunica@gmail.com', 'Y', '2', '2024-12-11 14:10:40', '2024-12-11 14:33:29'),
(5, '115/RSAB-SDM/12.2024', 'bT9uwEY3KhHqzhYfY9IsPK5Lua7THwtTHlPbGOq6pzyBBUnkNJFQQOTCEptb20241211092227', 'PK2024118', 'Rifka Putri Dwineti', 'Akuntansi', 'Account Receivable', 'Bukittinggi', '1993-11-20', '02', NULL, NULL, '2023-09-21', NULL, 'Y', '10000000.00', '2024-12-11 02:22:27', '2024-12-11 02:22:27', 'N', 'rifkaputridwineti2011@gmail.com', 'Y', '2', '2024-12-11 14:10:05', '2024-12-11 14:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `NA` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `NA`) VALUES
(12, 'PUTU, NS', 'putu@gmail.com', 'nurse', NULL, '$2y$10$5.lS0mYPGT6T4bpniFkgqubcJvJXiFw/p96.PNw23G2McAxAOcH7a', 'vLbgibDpzQ288Jd1eQEpDzJM1ARRwwp4UFlOuUM3poeYI3qIM0boh1HdJ6wm', '2020-02-23 03:42:15', '2021-09-07 01:33:49', 'Y'),
(13, 'Junita Mustia', 'nita@gmail.com', 'admin', NULL, '$2y$10$OHc6ZqzqeGwWneHpZ/iP/OU32IzuIrN77VPwwqIfkk.e0LBR0WXZu', 'IKwco3wExJVNnODhF0XQy7DhAiqspKwa4kKuNLBVqK0wonUkVwFifuOQ2ZEr', '2020-02-23 05:48:22', '2021-09-07 01:33:41', 'Y'),
(15, 'BUDHI HENDRATMO', 'budhi@gmail.com', 'admin', NULL, '$2y$10$MVNvtNXUjqPzYhd3IrEgxemdSUbbE6LTnkEiMNKh35Zfl/gwacYly', 'TMR3NNLmZlybveoMlTqsoPwgKIuKszof9KcSgU2IEzTOLA6JjYlTs2Vwl9FZ', '2020-02-28 20:39:07', '2020-02-28 20:45:09', 'Y'),
(17, 'M. Ridho Pratama, NS', 'ridho@gmail.com', 'nurse', NULL, '$2y$10$LoWsaDXpjzvRPXnA2NV30.I5tkyg3.//9G2IM340HFERlCTBUWK5C', 'htcbNgnCEJrDnxIdqGCdUxrQqJU9wulVpMalfjYYaecMYtUxEO8rkFn71RqE', '2020-06-29 01:56:49', '2021-09-07 01:33:45', 'Y'),
(18, 'SOLEHUDIN BIN AYUBI', 'soleh@gmail.com', 'admin', NULL, '$2y$10$zKEE.JYWf2FNMmsRBsiiH.MZ95nr2DPhc/EtrvtocYssGPtX1yK3i', 'eiXqSAPvUZn86rrSnNtTGhTTZsSqrifqGAAQ6BCLrltK2rCc343OziOBTft7', '2020-07-10 08:35:15', '2020-07-10 08:40:00', 'Y'),
(19, 'BUDHI', 'budi@gmail.com', 'admin', NULL, '$2y$10$ciwgqz5akls.TfLvjqR3bO0qTecGPUZDE/In.mHmj9p.jHY.GVa4q', '6ydEMP4Bzpmx07Dx5ZllQiHKF0R6H6gVmSBRrIN5kf0IwIdJaLvoDS8u1t5T', '2020-07-10 08:41:21', '2020-07-10 08:41:36', 'Y'),
(20, 'test', 'test@gmail.com', 'admin', NULL, '$2y$10$FU.Z4wTNpwAih4T813CJrOFLY5fsC3x5DfveNimHKVYWJk7nTBXm.', 'g63IXj3Ojo83x5a9m76buauwPUIc4b9x8ymypEmxGNTYJaFRmqXf7HXcxmya', '2020-07-12 15:15:47', '2020-07-12 15:15:59', 'Y'),
(21, 'YUSRIZAL', 'teten@gmail.com', 'admin', NULL, '$2y$10$CXn9PYJMsLXAgGrnW7gsGeNmnMIPP7vaE/FpRsO0fTj/oi362yike', 'NKBrd4O2FzD1InLt1oDKE99OkSPGmnSozE0i2IKoGlyw0WB8OVXpWjuKsgym', '2021-08-16 02:01:44', '2022-04-22 02:35:58', 'N'),
(22, 'RIKA MELYANTI', 'rika@gmail.com', 'admin', NULL, '$2y$10$GW.F5Jmabgreu1499Kg1med2ZAaRN.QiMteevnANkV7/ryQX.qcUK', 'WYrNm8e1r87A0qAH2dYOKF4UQ8ZLTNOXRFl3bQlMHluoqzrd9q74OVkiDRbl', '2021-09-07 01:37:00', '2022-04-27 05:15:13', 'Y'),
(23, 'YUSRIZAL', 'rizal@gmail.com', 'admin', NULL, '$2y$10$K47u0Ajyywoet9KZsLoeHuO2MR/RYmD0tkYz48tjqlHRyXRsUmIZ.', '7w0d8OJUiaja5ozzYjHxcsY6XcMSN7UXCUtGQe4c2eACTwMud61v5QoFf5J2', '2022-04-22 02:35:52', '2022-04-22 02:35:52', 'N'),
(24, 'LIA', 'lia@suket.com', 'admin', NULL, '$2y$10$wu1UOP0AxjVrP8ZRyeL2IO/.tSVMns/g.WlMuy3HynLwPC5p7uEPW', 'BbXE9Jh9fzuuhdjtWhl3edc4l1et50uzOdDis2niBsdS4qT480VnXE8kwJqw', '2022-04-27 04:44:31', '2022-04-27 04:44:31', 'N'),
(25, 'CHINTYA', 'chintya@suket.com', 'admin', NULL, '$2y$10$l6t79VguEWiRHUpyy3k.U.N4P3j4DFoNphcuhjkT7LgdnrWhecaqe', 'AArNJDXJX59mw5rtAg4bWPNBqNStNYImx82FSLlqTE9ETTZHKlVtvD3RxdwK', '2023-08-12 06:18:59', '2023-08-12 06:18:59', 'N'),
(26, 'NIAR', 'niar@suket.com', 'admin', NULL, '$2y$10$zZHleVSo.8j1KnJAqiFFROaH/VHsdoCfQaPzaHRQd9M1a5kwziv4i', 'C946qmifuvM1V693aHB9eQrPKgSbW9oAf7WiXIhcvuyRUTGgO0x1PYewpW2r', '2023-08-12 06:19:31', '2023-08-12 06:19:31', 'N'),
(27, 'Rizky Shaumita Hefani', 'kiki@suket.com', 'admin', NULL, '$2y$10$a9PK.z0PcP1cPfdvXo1GRuyW2If9FcJ/QGo.i.d8ri2zMH4Od/4.a', 'Y3wBQat0p38wecEk6TbefJWR7uggSrfPwrJJoA6zbIQVpgQYOj1EpNSxXDoT', '2023-08-12 06:19:53', '2024-11-19 02:46:06', 'N'),
(28, 'BU ICHA', 'icha@suket.com', 'admin', NULL, '$2y$10$nYIl4k.88Pg.Yo2TjIwQWenfnsqajilYItritBu0NpQQHi1r3lMme', 'twlxLKirCOngXm6jyjvJWpuhwqDCrAqpFpQjqYL4rDtGyXovkYPqKjQfjn7o', '2023-08-12 06:20:20', '2023-08-12 06:20:20', 'N'),
(29, 'Arum Indra Purwati', 'arum@suket.com', 'admin', NULL, '$2y$10$7Ppw/KQOBHzfTBaMJSlkV.YjrjCzkcXeOYQp8XniwE7qDubLXkEjG', 'zdQ9PgkkdhP73ot3oIBLj5CBXss6H5tdCxx0l6fIEx6JLY64jkj0YwudICtZ', '2024-11-19 02:45:45', '2024-11-19 02:45:45', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alasan_resign`
--
ALTER TABLE `alasan_resign`
  ADD PRIMARY KEY (`AlasanID`);

--
-- Indexes for table `auto_numbers`
--
ALTER TABLE `auto_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`BarangID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_publik`
--
ALTER TABLE `ip_publik`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jenis_karyawan`
--
ALTER TABLE `jenis_karyawan`
  ADD PRIMARY KEY (`JenisKaryawanID`);

--
-- Indexes for table `keperluan_surat`
--
ALTER TABLE `keperluan_surat`
  ADD PRIMARY KEY (`KeperluanSuratID`);

--
-- Indexes for table `log_kirim_pengalaman_kerja`
--
ALTER TABLE `log_kirim_pengalaman_kerja`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `manager_sdm`
--
ALTER TABLE `manager_sdm`
  ADD PRIMARY KEY (`ManagerID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`PerusahaanID`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_keterangan_kerja`
--
ALTER TABLE `surat_keterangan_kerja`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `surat_keterangan_kerja_11-11-2024`
--
ALTER TABLE `surat_keterangan_kerja_11-11-2024`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `surat_pengalaman_kerja`
--
ALTER TABLE `surat_pengalaman_kerja`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `surat_rekomendasi_abs`
--
ALTER TABLE `surat_rekomendasi_abs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_numbers`
--
ALTER TABLE `auto_numbers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_publik`
--
ALTER TABLE `ip_publik`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jenis_karyawan`
--
ALTER TABLE `jenis_karyawan`
  MODIFY `JenisKaryawanID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_kirim_pengalaman_kerja`
--
ALTER TABLE `log_kirim_pengalaman_kerja`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `manager_sdm`
--
ALTER TABLE `manager_sdm`
  MODIFY `ManagerID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surat_keterangan_kerja`
--
ALTER TABLE `surat_keterangan_kerja`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `surat_keterangan_kerja_11-11-2024`
--
ALTER TABLE `surat_keterangan_kerja_11-11-2024`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_pengalaman_kerja`
--
ALTER TABLE `surat_pengalaman_kerja`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `surat_rekomendasi_abs`
--
ALTER TABLE `surat_rekomendasi_abs`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
