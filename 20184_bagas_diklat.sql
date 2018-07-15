-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2018 at 06:20 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `20184_bagas_diklat`
--
CREATE DATABASE IF NOT EXISTS `20184_bagas_diklat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `20184_bagas_diklat`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `kode_admin` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `telepon` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `gambar` text COLLATE latin1_general_ci NOT NULL,
  `status` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT 'Administrator',
  PRIMARY KEY (`kode_admin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`kode_admin`, `username`, `password`, `telepon`, `email`, `gambar`, `status`) VALUES
('ADM01', 'kabid', 'kabid', '0856521667', 'kabid@gmail.com', 'avatar1.jpg', 'Kabid Rendiklat'),
('ADM02', 'administrator', 'administrator', '021987662', 'administrator@yahoo.com', 'login.png', 'Administrator'),
('ADM03', 'admin', 'admin', '021872611', 'admin@gmail.com', '32867877_39c9b53b-889e-480d-9360-dbca076257fa_2048_0.jpg', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `hits` int(8) NOT NULL,
  `online` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id`, `ip`, `tanggal`, `hits`, `online`) VALUES
(1, '::1', '2018-04-24', 5, '1524582385'),
(2, '::1', '2018-04-25', 20, '1524669868'),
(3, '::1', '2018-04-26', 14, '1524707613'),
(4, '::1', '2018-04-27', 22, '1524843571');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE IF NOT EXISTS `tb_jadwal` (
  `kd_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `kd_periode` varchar(10) NOT NULL,
  `kd_kursus` varchar(6) NOT NULL,
  `kd_kursus_dibuka` varchar(10) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `waktu` varchar(13) NOT NULL,
  `pertemuan_ke` varchar(7) NOT NULL,
  `jumlah` varchar(7) NOT NULL,
  `dari` varchar(3) NOT NULL,
  `mata_pelajaran` varchar(30) NOT NULL,
  `tema` varchar(30) NOT NULL,
  `guru` varchar(30) NOT NULL,
  `tempat` varchar(8) NOT NULL,
  `modul` text NOT NULL,
  PRIMARY KEY (`kd_jadwal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`kd_jadwal`, `kd_periode`, `kd_kursus`, `kd_kursus_dibuka`, `hari`, `waktu`, `pertemuan_ke`, `jumlah`, `dari`, `mata_pelajaran`, `tema`, `guru`, `tempat`, `modul`) VALUES
(1, 'P180400002', 'KDK002', 'D180400011', 'Jumat ', '07.15 - 08.45', '5 - 6', '30 -31', '78', 'Menyimak', 'Listening', 'Guruh', 'Kelas', ''),
(2, 'P180400002', 'KDK002', 'D180400011', 'Kamis', '13.15 - 14.45', '7 - 8', '19 - 20', '12', 'Percakapan', 'Conversation', 'Guruh', 'Lapangan', ''),
(3, 'P180400002', 'KDK002', 'D180400011', 'Kamis', '10.45 - 12.15', '3 - 4', '23 -24', '98', 'Membaca', 'Reading session', 'Guruh', 'Kelas', ''),
(4, 'P180400002', 'KDK002', 'D180400011', 'Kamis', '08.55 - 10.25', '5 - 6', '26 - 27', '125', 'Menulis', 'Writing session', 'Guruh', 'Kelas', ''),
(5, 'P180400001', 'KDK002', 'D180400005', 'Selasa', '07.15 - 08.45', '1 - 2', '15 - 16', '125', 'Percakapan', 'Penjelasan kultur daerah', 'Pa dosen 1', 'Kelas', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kabadan`
--

CREATE TABLE IF NOT EXISTS `tb_kabadan` (
  `kd_kabadan` varchar(10) NOT NULL,
  `nama_kabadan` varchar(25) NOT NULL,
  `pangkat` varchar(20) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kabadan`
--

INSERT INTO `tb_kabadan` (`kd_kabadan`, `nama_kabadan`, `pangkat`, `gambar`) VALUES
('KBD01', 'fakuy', 'kolonel', 'bagaskoro.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kursus`
--

CREATE TABLE IF NOT EXISTS `tb_kursus` (
  `kd_kursus` varchar(6) NOT NULL,
  `nama_kursus` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`kd_kursus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kursus`
--

INSERT INTO `tb_kursus` (`kd_kursus`, `nama_kursus`, `keterangan`, `gambar`) VALUES
('KDK001', 'Bahasa Indonesia', '', 'Indonesia.png'),
('KDK002', 'Bahasa Inggris', '', 'Inggris.jpg'),
('KDK003', 'Bahasa Arab', '', 'Arab.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kursus_dibuka`
--

CREATE TABLE IF NOT EXISTS `tb_kursus_dibuka` (
  `kd_kursus_dibuka` varchar(10) NOT NULL,
  `kd_kursus` varchar(6) NOT NULL,
  `kd_periode` varchar(10) NOT NULL,
  `nama_subkursus` varchar(50) NOT NULL,
  `gelombang` varchar(1) NOT NULL,
  `tingkat` varchar(12) NOT NULL,
  `sifat` varchar(12) NOT NULL,
  `bulan` varchar(2) NOT NULL,
  `jampel` varchar(3) NOT NULL,
  `siswa` varchar(3) NOT NULL,
  `kelas` varchar(1) NOT NULL,
  `ujian_masuk` date NOT NULL,
  `buka` date NOT NULL,
  `ujian_tengah` date NOT NULL,
  `ujian_akhir` date NOT NULL,
  `tutup` date NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`kd_kursus_dibuka`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kursus_dibuka`
--

INSERT INTO `tb_kursus_dibuka` (`kd_kursus_dibuka`, `kd_kursus`, `kd_periode`, `nama_subkursus`, `gelombang`, `tingkat`, `sifat`, `bulan`, `jampel`, `siswa`, `kelas`, `ujian_masuk`, `buka`, `ujian_tengah`, `ujian_akhir`, `tutup`, `keterangan`) VALUES
('D180400001', 'KDK001', 'P180400001', 'Khusus anggota TNI', '1', 'Beginner', 'Intensif', '3', '218', '20', '2', '2017-01-05', '2017-01-16', '2017-02-13', '2017-03-06', '2017-03-27', ''),
('D180400002', 'KDK001', 'P180400001', 'Khusus PNS Kemhan', '3', 'Intermediate', 'Intensif', '3', '310', '36', '3', '2017-08-10', '2017-08-21', '2017-09-18', '2017-10-16', '2017-10-25', ''),
('D180400003', 'KDK001', 'P180400001', 'Gabungan Kemhan TNI', '4', 'Advanced', 'Intensif', '3', '218', '24', '2', '2017-10-02', '2017-10-09', '2017-11-01', '2017-12-04', '2017-12-18', ''),
('D180400004', 'KDK002', 'P180400001', 'Khusus anggota pbb', '1', 'Elementary', 'Intensif', '3', '218', '80', '5', '2017-02-06', '2017-02-13', '2017-03-15', '2017-04-03', '2017-04-10', ''),
('D180400005', 'KDK002', 'P180400001', 'Penyelenggaraan perjalanan dinas', '2', 'Intermediate', 'Intensif', '4', '310', '24', '2', '2017-04-03', '2017-04-10', '2017-05-01', '2017-05-29', '2017-05-08', ''),
('D180400006', 'KDK002', 'P180400001', 'Penyelenggaraan perjalanan dinas ke 2', '2', 'Advanced', 'Intensif', '4', '310', '20', '2', '2017-06-05', '2017-06-12', '2017-07-03', '2017-07-24', '2017-08-01', ''),
('D180400007', 'KDK001', 'P180400002', 'Khusus PNS Kemhan', '1', 'Beginner', 'Intensif', '3', '218', '18', '2', '2018-01-05', '2018-01-15', '2018-02-01', '2018-03-12', '2018-03-19', ''),
('D180400008', 'KDK001', 'P180400002', 'Khusus anggota TNI', '2', 'Intermediate', 'Intensif', '3', '310', '20', '2', '2018-04-02', '2018-04-09', '2018-05-07', '2018-05-28', '2018-06-04', ''),
('D180400009', 'KDK001', 'P180400002', 'Gabungan Kemhan TNI', '3', 'Advanced', 'Intensif', '3', '310', '24', '2', '2018-07-02', '2018-07-09', '2018-08-01', '2018-09-03', '2018-09-17', ''),
('D180400010', 'KDK002', 'P180400002', 'Khusus anggota pbb', '1', 'Elementary', 'Intensif', '4', '310', '80', '5', '2018-03-05', '2018-03-12', '2018-04-23', '2018-05-28', '2018-06-04', ''),
('D180400011', 'KDK002', 'P180400002', 'Penyelenggaraan perjalanan dinas ke 3', '2', 'Intermediate', 'Intensif', '4', '310', '24', '2', '2018-06-04', '2018-06-11', '2018-07-02', '2018-08-06', '2018-09-10', ''),
('D180400012', 'KDK002', 'P180400002', 'Penyelenggaraan perjalanan dinas ke 4', '4', 'Advanced', 'Intensif', '4', '310', '20', '2', '2018-09-03', '2018-09-10', '2018-10-29', '2018-11-26', '2018-12-03', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE IF NOT EXISTS `tb_nilai` (
  `kd_nilai` varchar(10) NOT NULL,
  `kd_pendaftaran` varchar(10) NOT NULL,
  `kd_periode` varchar(10) NOT NULL,
  `kd_kursus` varchar(6) NOT NULL,
  `kd_kursus_dibuka` varchar(10) NOT NULL,
  `nrp` varchar(15) NOT NULL,
  `keterangan` varchar(11) NOT NULL,
  PRIMARY KEY (`kd_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`kd_nilai`, `kd_pendaftaran`, `kd_periode`, `kd_kursus`, `kd_kursus_dibuka`, `nrp`, `keterangan`) VALUES
('N180400007', 'R180400001', 'P180400001', 'KDK002', 'D180400004', '1410512045', 'Tengah'),
('N180400008', 'R180400001', 'P180400001', 'KDK002', 'D180400004', '1410512045', 'Akhir'),
('N180400010', 'R180400003', 'P180400001', 'KDK001', 'D180400002', '1410512044', 'Tengah'),
('N180400011', 'R180400003', 'P180400001', 'KDK001', 'D180400002', '1410512044', 'Akhir'),
('N180400012', 'R180400004', 'P180400002', 'KDK001', 'D180400008', '1410512044', 'Tengah'),
('N180400013', 'R180400004', 'P180400002', 'KDK001', 'D180400008', '1410512044', 'Akhir'),
('N180400014', 'R180400006', 'P180400001', 'KDK001', 'D180400012', '1410512047', 'Tengah'),
('N180400015', 'R180400009', 'P180400002', 'KDK002', 'D180400011', '1410512047', 'Ujian Masuk'),
('N180400016', 'R180400002', 'P180400002', 'KDK002', 'D180400012', '1410512044', 'Ujian Masuk'),
('N180400017', 'R180400001', 'P180400002', 'KDK002', 'D180400011', '1410512045', 'Ujian Masuk');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_detail`
--

CREATE TABLE IF NOT EXISTS `tb_nilai_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_nilai` varchar(10) NOT NULL,
  `materi` varchar(30) NOT NULL,
  `murni` int(6) NOT NULL,
  `harga` int(6) NOT NULL,
  `prestasi` int(6) NOT NULL,
  `bobot` int(6) NOT NULL,
  `prestasi_akhir` int(6) NOT NULL,
  `jumlah_nilai_prestasi_akhir` int(7) NOT NULL,
  `nilai_prestasi_akhir` int(6) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tb_nilai_detail`
--

INSERT INTO `tb_nilai_detail` (`id`, `kd_nilai`, `materi`, `murni`, `harga`, `prestasi`, `bobot`, `prestasi_akhir`, `jumlah_nilai_prestasi_akhir`, `nilai_prestasi_akhir`, `keterangan`) VALUES
(1, 'N180400001', '12', 12, 21, 252, 12, 3024, 0, 0, '12'),
(2, 'N180400009', '1', 2, 3, 6, 5, 30, 0, 0, '6'),
(3, 'N180400009', '1', 2, 3, 6, 5, 30, 0, 0, '6'),
(4, 'N180400006', '7', 8, 9, 72, 11, 792, 0, 0, '12'),
(5, 'N180400006', '7', 8, 9, 72, 11, 792, 0, 0, '12'),
(6, 'N180400013', '', 0, 0, 0, 0, 0, 0, 0, ''),
(7, 'N180400015', 'Membaca', 12, 10, 120, 10, 1200, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftaran`
--

CREATE TABLE IF NOT EXISTS `tb_pendaftaran` (
  `kd_pendaftaran` varchar(10) NOT NULL,
  `kd_periode` varchar(10) NOT NULL,
  `kd_kursus` varchar(6) NOT NULL,
  `kd_kursus_dibuka` varchar(10) NOT NULL,
  `nrp` varchar(15) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `status` varchar(14) NOT NULL,
  PRIMARY KEY (`kd_pendaftaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pendaftaran`
--

INSERT INTO `tb_pendaftaran` (`kd_pendaftaran`, `kd_periode`, `kd_kursus`, `kd_kursus_dibuka`, `nrp`, `tanggal_daftar`, `status`) VALUES
('R180400001', 'P180400002', 'KDK002', 'D180400011', '1410512045', '2017-04-11', 'Proses'),
('R180400002', 'P180400002', 'KDK002', 'D180400012', '1410512044', '2018-04-19', 'Diterima'),
('R180400003', 'P180400001', 'KDK001', 'D180400011', '1410512044', '2017-02-14', 'Diterima'),
('R180400004', 'P180400002', 'KDK001', 'D180400011', '1410512045', '2018-04-16', 'Diterima'),
('R180400005', 'P180400001', 'KDK001', 'D180400002', '1410512046', '2018-04-16', 'Proses'),
('R180400006', 'P180400001', 'KDK001', 'D180400012', '1410512047', '2018-04-16', 'Diterima'),
('R180400007', 'P180400001', 'KDK002', 'D180400010', '1410512046', '2018-04-16', 'Tidak Diterima'),
('R180400008', 'P180400002', 'KDK001', 'D180400007', '1410512046', '2018-04-16', 'Tidak Diterima'),
('R180400009', 'P180400002', 'KDK002', 'D180400011', '1410512047', '2018-04-19', 'Diterima'),
('R180400010', 'P180400001', 'KDK001', 'D180400001', '1410512043', '2018-04-19', 'Proses'),
('R180400011', 'P180400002', 'KDK001', 'D180400007', '1410512047', '2018-04-27', 'Proses');

-- --------------------------------------------------------

--
-- Table structure for table `tb_periode`
--

CREATE TABLE IF NOT EXISTS `tb_periode` (
  `kd_periode` varchar(10) NOT NULL,
  `nama_periode` varchar(30) NOT NULL,
  `status` varchar(11) NOT NULL,
  PRIMARY KEY (`kd_periode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_periode`
--

INSERT INTO `tb_periode` (`kd_periode`, `nama_periode`, `status`) VALUES
('P180400001', 'Tahun ajaran 2017', 'Tidak Aktif'),
('P180400002', 'Tahun ajaran 2018', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peserta`
--

CREATE TABLE IF NOT EXISTS `tb_peserta` (
  `nrp` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pangkat` varchar(20) NOT NULL,
  `korps` varchar(20) NOT NULL,
  `golongan` varchar(7) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(15) NOT NULL,
  `agama` varchar(7) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `kesatuan` varchar(20) NOT NULL,
  `alamat_kantor` text NOT NULL,
  `telepon_kantor` varchar(15) NOT NULL,
  `kota_kabupaten` varchar(20) NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `nama_pasangan` varchar(30) NOT NULL,
  `alamat_rumah` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `pendidikan_umum` varchar(20) NOT NULL,
  `fakultas` varchar(20) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `nama_sekolah` varchar(20) NOT NULL,
  `pendidikan_militer` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `gambar` text NOT NULL,
  `status` varchar(11) NOT NULL,
  PRIMARY KEY (`nrp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_peserta`
--

INSERT INTO `tb_peserta` (`nrp`, `nama`, `pangkat`, `korps`, `golongan`, `tempat_lahir`, `tanggal_lahir`, `agama`, `jabatan`, `kesatuan`, `alamat_kantor`, `telepon_kantor`, `kota_kabupaten`, `provinsi`, `jenis_kelamin`, `nama_pasangan`, `alamat_rumah`, `telepon`, `pendidikan_umum`, `fakultas`, `jurusan`, `nama_sekolah`, `pendidikan_militer`, `password`, `username`, `gambar`, `status`) VALUES
('1210512022', 'Nina', 'Letnan', 'Administrasi', '', 'Surabaya', '1994-11-15', 'Hindu', 'staf ahli', 'Sahli Kasad', 'Cilangkap jaya', '021989987', 'Jakarta', 'Dki Jakarta', 'Perempuan', 'Nope', 'Jl wetan ', '02500387', '', '', '', 'Sman 1 Surabaya', 'Taruni Akmil', '', 'Nina', 'avatar-mini3.jpg', 'Aktif'),
('1210512027', 'Peserta 2', '', '', 'III B', 'Yogyakarta', '1994-02-8', 'Katolik', 'Sekretaris', 'Kohanudnas', 'Halim PK', '021938379', 'Jakarta', 'Dki Jakarta', 'Perempuan', 'Nope', 'Jalan margasatwa pos II', '0211222', 'Sarjana Akuntansi', 'Ekonomi bisnis', 'Manajemen bisnis', 'Universitas Telkom', '', 'peserta2', 'peserta2', 'Tulips.jpg', 'Tidak Aktif'),
('1410512044', 'Ahmad Ramdani', '', '', 'III B', 'Depok', '1996-10-17', 'Islam', 'staf ahli', 'Saber', 'Pondok Labu', '0212000221', 'Jakarta', 'Dki Jakarta', 'Laki-Laki', 'Nope', 'Magonda raya', '021220023', 'Sarjana komputer', 'Ilmu Komputer', 'Sistem informasi', 'UPNVJ', '', 'dani', 'dani', 'Jellyfish.jpg', 'Aktif'),
('1410512045', 'Andharu Bagaskoro', 'Letnan', 'Comp', '', 'Jakarta', '1996-08-21', 'Islam', 'staf ahli', 'Disbang', 'Cilangkap jaya', '021211212000', 'Jakarta', 'Dki Jakarta', 'Laki-Laki', 'Nope', 'Jl kelurahan', '08123456789', 'Sarjana komputer', 'Komputer', 'Sistem informasi', 'UPNVJ', 'Perwira karier', 'andharu', 'andharu', 'index.png', 'Aktif'),
('1410512046', 'M Lutfi', 'Letnan', 'Elektro', '', 'Jakarta', '1996-01-8', 'Islam', 'staf elektro', 'Setum', 'Sentul barat', '022979991', 'Bogor', 'Jawa Barat', 'Laki-Laki', 'Nope', 'Parung serab, bogor', '085211823', '', '', '', '', 'Akmil XXIX', 'lutfi', 'lutfi', 'avatar-mini2.jpg', 'Aktif'),
('1410512047', 'Riyan Setiawan', '', '', 'III C', 'Jakarta', '1993-07-14', 'Islam', 'Kepala divisi pertahanan', 'Balitbang AL', 'jl pondok labu', '021872218', 'Jakarta', 'Dki Jakarta', 'Laki-Laki', 'Lianda', 'Citayam Raya', '082137717', 'Sarjana komputer', 'Komputer', 'Sistem informasi', 'UPNVJ', '', 'r', 'r', 'avatar-mini4.jpg', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sertifikat`
--

CREATE TABLE IF NOT EXISTS `tb_sertifikat` (
  `kd_sertifikat` varchar(10) NOT NULL,
  `kd_pendaftaran` varchar(10) NOT NULL,
  `kd_periode` varchar(10) NOT NULL,
  `kd_kursus` varchar(6) NOT NULL,
  `kd_kursus_dibuka` varchar(10) NOT NULL,
  `kd_kabadan` varchar(10) NOT NULL,
  `nrp` varchar(15) NOT NULL,
  `gambar` text NOT NULL,
  `status` varchar(8) NOT NULL,
  `tanggal_pembuatan` date NOT NULL,
  PRIMARY KEY (`kd_sertifikat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sertifikat`
--

INSERT INTO `tb_sertifikat` (`kd_sertifikat`, `kd_pendaftaran`, `kd_periode`, `kd_kursus`, `kd_kursus_dibuka`, `kd_kabadan`, `nrp`, `gambar`, `status`, `tanggal_pembuatan`) VALUES
('S180400001', 'R180400003', 'P180400001', 'KDK001', 'D180400002', '', '1410512044', 'avatar.jpg', 'Proses', '2018-04-13'),
('S180400003', 'R180400002', 'P180400002', 'KDK002', 'D180400012', 'KBD01', '1410512044', 'avatar.jpg', 'Diterima', '2018-04-16'),
('S180400005', 'R180400009', 'P180400002', 'KDK002', 'D180400011', 'KBD01', '1410512047', 'avatar.jpg', 'Diterima', '2018-04-16'),
('S180400006', 'R180400001', 'P180400002', 'KDK002', 'D180400011', 'KBD01', '1410512045', 'avatar.jpg', 'Diterima', '2018-04-19');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
