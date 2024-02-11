-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 04:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fulltask`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `idTim` int(11) NOT NULL,
  `idAnggotaTim` int(11) NOT NULL,
  `namaAnggota` varchar(255) NOT NULL,
  `peranAnggota` varchar(255) NOT NULL,
  `kontakAnggota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`idTim`, `idAnggotaTim`, `namaAnggota`, `peranAnggota`, `kontakAnggota`) VALUES
(1111, 1, 'Khalilan Dirgantara', 'Designer', 'khalilandir@gmail.co'),
(1111, 2, 'Greena Zaldua', 'Quality Assurance', 'greenaazal@gmail.com'),
(1111, 3, 'Jiro Hardana', 'Head of Marketing', 'jjirooharda@gmail.co'),
(1121, 4, 'Jayanara Kalingga', 'Arsitek', '087865432'),
(1121, 5, 'Gara Samudra', 'Teknisi Keamanan', '086592649'),
(1121, 6, 'Franciso J', 'Ahli Lingkungan', 'ffrancis@gmail.com'),
(1131, 7, 'Ananda Karunia Putri', 'Arsitek', 'akarunia@gmail.com'),
(1131, 8, 'M.Iqbal Anandra', 'Manager Proyek', 'miqbaal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `idJadwal` int(11) NOT NULL,
  `IDProyek` int(11) NOT NULL,
  `idTugas` int(11) NOT NULL,
  `waktuMulai` date NOT NULL,
  `waktuSelesai` date NOT NULL,
  `idStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`idJadwal`, `IDProyek`, `idTugas`, `waktuMulai`, `waktuSelesai`, `idStatus`) VALUES
(2004, 1111, 2221, '2024-02-01', '2024-03-13', 4),
(2005, 1111, 2222, '2023-12-27', '2023-12-31', 4),
(2006, 1112, 2223, '2023-12-20', '2024-09-20', 2),
(2007, 1112, 2224, '2023-12-05', '2023-12-26', 2),
(2008, 1112, 2225, '2023-12-28', '2023-12-31', 2),
(2009, 1113, 2226, '2025-09-20', '2030-09-20', 2),
(2010, 1113, 2227, '2023-12-20', '2030-09-20', 2),
(2011, 1113, 2228, '2023-12-31', '2027-12-24', 2),
(2013, 1111, 2221, '2023-12-17', '2023-12-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE `proyek` (
  `IDProyek` int(11) NOT NULL,
  `namaProyek` varchar(100) NOT NULL,
  `tujuanProyek` varchar(100) NOT NULL,
  `tenggatWaktu` date NOT NULL,
  `Anggaran` double NOT NULL,
  `idStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`IDProyek`, `namaProyek`, `tujuanProyek`, `tenggatWaktu`, `Anggaran`, `idStatus`) VALUES
(1111, 'Membuat Aplikasi Manajemen Keuangan Fara\'s Company', 'Aplikasi ini bertujuan untuk membantu Fara\'s Company dalam mengelola keuangan perusahaan dengan lebi', '2024-09-20', 200000, 4),
(1112, 'Membangun jembatan di Desa Sukamaju', '\r\nTujuan dari proyek membangun jembatan di Desa Sukamaju adalah untuk meningkatkan aksesibilitas dan', '2023-12-31', 598000, 2),
(1113, 'Membangun kemabli istana negara', '\r\nProyek membangun kembali Istana Negara memiliki tujuan utama dalam pelestarian warisan sejarah dan', '2030-03-27', 1000000000, 2),
(1114, 'Membangun sekolah', 'Membangun sekolah untuk warga di Desa Garuda Maju', '2026-12-10', 45000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `IDNamaAnggota` int(10) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`IDNamaAnggota`, `Nama`, `Username`, `Password`) VALUES
(1, 'Ananda Karunia', 'Anan', 'anan152'),
(2, 'M. Iqbal Anandra', 'Iqbal', 'iqbal234'),
(3, 'Maressia Anggel', 'Mares', 'mares456'),
(4, 'Bianka Zahirra', 'Bianka', 'bian115'),
(5, 'Ayu Fibri', 'Ayu', 'ayu013');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Nama` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`Nama`, `Username`, `Password`) VALUES
('Ananda Karunia', 'Anan', 'anan152'),
('M. Iqbal Anandra', 'Iqbal', 'iqbal234'),
('Sadewa A', 'Sadewa', 'sadewa123'),
('Sadewa', 'Sadewaa', 'sadewa123'),
('Macici', 'Macici', 'macici123'),
('Macici Ganteng', 'Macici', 'macici567'),
('Gara Cakep', 'Garaa', 'gara123'),
('Chen Jelek', 'Chen', 'chen123'),
('GUE CAPEK DEMI ALLAH', 'Cape', 'cape123'),
('Waliid', 'Waliid', 'waliid123'),
('Anka', 'Anka', 'anka456'),
('Danka U', 'Danka', 'danka156'),
('Sandaria', 'Sandaria', 'sandaria123'),
('Bianka', 'biw', 'biw123'),
('Ananda Ka', 'Ananda', 'anan123'),
('', '', ''),
('', '', ''),
('', '', ''),
('admin', 'adm', '1'),
('Jihan Karunia', 'Jihan', 'jihan123'),
('Sandi A', 'Sandi', '1'),
('Haechan Fardhurahman', 'Haechan', 'haechan123');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `idStatus` int(11) NOT NULL,
  `jenisStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`idStatus`, `jenisStatus`) VALUES
(1, 'Selesai'),
(2, 'Berjalan'),
(3, 'Ditunda'),
(4, 'Belum Dimulai');

-- --------------------------------------------------------

--
-- Table structure for table `tim`
--

CREATE TABLE `tim` (
  `idTim` int(11) NOT NULL,
  `namaTim` varchar(255) NOT NULL,
  `deskripsiTim` varchar(255) NOT NULL,
  `idProyek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tim`
--

INSERT INTO `tim` (`idTim`, `namaTim`, `deskripsiTim`, `idProyek`) VALUES
(1111, 'Tim Good Mania', 'Membantu Fara\'s Company', 1111),
(1121, 'Tim Yaudalah', 'Tim ini berperan untuk membangun jembatan di Desa Sukamaju ', 1112),
(1131, 'Kelompok 7C', 'Membangun kembali Istana Negara', 1113),
(11119, 'Tim Power Rangers', 'Membangun Sekolah', 1114);

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `idTugas` int(11) NOT NULL,
  `deskripsiTugas` varchar(255) NOT NULL,
  `waktuMulai` date NOT NULL,
  `waktuSelesai` date NOT NULL,
  `idAnggotaTim` int(11) NOT NULL,
  `idStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`idTugas`, `deskripsiTugas`, `waktuMulai`, `waktuSelesai`, `idAnggotaTim`, `idStatus`) VALUES
(2221, 'Bertanggung jawab untuk merancang antarmuka pengguna (UI/UX) yang menarik dan fungsional, memahami kebutuhan pengguna, menghasilkan prototipe aplikasi, dan berkolaborasi dengan tim pengembangan untuk mengimplementasikan desain yang telah dibuat agar menci', '2024-02-01', '2024-03-06', 1, 4),
(2222, 'Memainkan peran penting dalam memastikan kualitas aplikasi dengan merencanakan strategi pengujian, melakukan pengujian menyeluruh untuk mengidentifikasi bug dan masalah, mendokumentasikan temuan pengujian, serta memastikan kesesuaian aplikasi dengan stand', '2024-08-15', '2024-09-30', 2, 4),
(2223, ' Bertugas merumuskan strategi pemasaran yang efektif, mengelola kampanye pemasaran online dan offline, menganalisis kinerja pemasaran, dan berkolaborasi dengan tim penjualan untuk memastikan pesan pemasaran sesuai dengan kebutuhan pelanggan dan menjangkau', '2024-01-01', '2024-03-13', 3, 4),
(2224, 'Arsitek bertugas untuk merancang desain teknis jembatan yang memperhitungkan aspek struktural dan estetika yang dibutuhkan', '2023-12-01', '2024-01-10', 4, 2),
(2225, 'Teknisi Keamanan bertanggung jawab dalam menetapkan strategi keamanan jembatan guna meminimalkan risiko kecelakaan dan kerusakan serta memastikan kepatuhan terhadap standar keamanan yang berlaku', '2024-04-17', '2024-09-20', 5, 2),
(2226, 'Mengevaluasi dampak lingkungan selama dan setelah konstruksi jembatan, serta merancang langkah-langkah untuk melestarikan lingkungan alami sekitar jembatan yang meminimalkan dampak negatif terhadap ekosistem sekitar.', '2023-12-20', '2024-09-20', 6, 2),
(2227, 'Arsitek bertanggung jawab merancang dan mengawasi aspek desain teknis bangunan istana dengan memperhatikan nilai sejarah, keindahan, dan fungsionalitasnya.', '2030-02-08', '2031-03-20', 7, 2),
(2228, 'Project Manager memiliki peran utama dalam mengelola keseluruhan proyek, termasuk perencanaan, pengawasan, dan koordinasi tim serta sumber daya yang terlibat, sambil memastikan proyek berjalan sesuai jadwal dan anggaran. ', '2031-02-12', '2031-09-20', 8, 4),
(10008, 'Makan', '2023-12-17', '2023-12-17', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`idAnggotaTim`),
  ADD KEY `anggota_ibfk_1` (`idTim`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idJadwal`),
  ADD KEY `jadwal_ibfk_1` (`IDProyek`),
  ADD KEY `jadwal_ibfk_2` (`idStatus`),
  ADD KEY `jadwal_ibfk_3` (`idTugas`);

--
-- Indexes for table `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`IDProyek`),
  ADD KEY `proyek_ibfk_1` (`idStatus`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`IDNamaAnggota`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indexes for table `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`idTim`),
  ADD KEY `idProyek` (`idProyek`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`idTugas`),
  ADD KEY `idAnggotaTim` (`idAnggotaTim`),
  ADD KEY `tugas_ibfk_2` (`idStatus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `idAnggotaTim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11257;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idJadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2014;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `IDNamaAnggota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tim`
--
ALTER TABLE `tim`
  MODIFY `idTim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11120;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `idTugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11123;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`idTim`) REFERENCES `tim` (`idTim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`IDProyek`) REFERENCES `proyek` (`IDProyek`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`idTugas`) REFERENCES `tugas` (`idTugas`) ON DELETE CASCADE;

--
-- Constraints for table `proyek`
--
ALTER TABLE `proyek`
  ADD CONSTRAINT `proyek_ibfk_1` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`) ON DELETE CASCADE;

--
-- Constraints for table `tim`
--
ALTER TABLE `tim`
  ADD CONSTRAINT `tim_ibfk_1` FOREIGN KEY (`idProyek`) REFERENCES `proyek` (`IDProyek`) ON DELETE CASCADE;

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_ibfk_1` FOREIGN KEY (`idAnggotaTim`) REFERENCES `anggota` (`idAnggotaTim`) ON DELETE CASCADE,
  ADD CONSTRAINT `tugas_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
