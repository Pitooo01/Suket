-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2024 at 03:50 PM
-- Server version: 8.0.30
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `surat_keterangan_kerja`
--

CREATE TABLE `surat_keterangan_kerja` (
  `ID` bigint NOT NULL,
  `SuketKeteranganID` varchar(30) NOT NULL,
  `SEO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `NamaKarywan` varchar(40) NOT NULL,
  `Bagian` varchar(70) NOT NULL,
  `Jabatan` varchar(70) NOT NULL,
  `TempatLahir` varchar(50) NOT NULL,
  `TanggalLahir` date NOT NULL,
  `JenisKaryawanID` varchar(20) NOT NULL,
  `Awal_Kerja` varchar(40) NOT NULL,
  `Akhir_Kerja` varchar(40) NOT NULL,
  `JenisKeperluanSuratID` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_keterangan_kerja`
--

INSERT INTO `surat_keterangan_kerja` (`ID`, `SuketKeteranganID`, `SEO`, `NIK`, `NamaKarywan`, `Bagian`, `Jabatan`, `TempatLahir`, `TanggalLahir`, `JenisKaryawanID`, `Awal_Kerja`, `Akhir_Kerja`, `JenisKeperluanSuratID`, `created_at`, `updated_at`, `NA`) VALUES
(3, '021/RSAB-PKU/SDM/KET/10.2024', '5f5fdXMW95fQHMyysQ0ownBww7dfiKtI3nuzLDZmDtG8vNGXSfTVKlTYuwUC20241027224848', 'PK2009010', 'YUSRIZAL', 'IT', 'PELAKSANA', 'BINJAI', '1987-06-17', '01', '04 April 2009', 'Sekarang', 'KPS-20220400031', '2024-10-27 15:48:48', '2024-10-27 15:48:48', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `surat_keterangan_kerja`
--
ALTER TABLE `surat_keterangan_kerja`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `surat_keterangan_kerja`
--
ALTER TABLE `surat_keterangan_kerja`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
