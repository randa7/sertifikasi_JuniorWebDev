-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 06:37 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afh_bpptik`
--
CREATE DATABASE IF NOT EXISTS `afh_bpptik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `afh_bpptik`;

-- --------------------------------------------------------

--
-- Table structure for table `afh_databuku`
--

CREATE TABLE `afh_databuku` (
  `kode_buku` varchar(25) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(150) NOT NULL,
  `penerbit` varchar(200) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `afh_databuku`
--

INSERT INTO `afh_databuku` (`kode_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `harga`) VALUES
('1A2B', 'Cara membuat web part 4', 'Yoyy', 'Ase', 2013, 2500),
('1A2E', 'Kaskus Yuk', 'Kas', 'Kus', 2016, 3000),
('1A2F', 'Cara Membuat Robot', 'Naruto', 'Uzumaki', 2016, 40000),
('1A2X', 'Cara membenarkan Handphone', 'Andrean', 'Cecep', 2011, 5000),
('1A3B', 'Laravel Introduction', 'Asakusa', 'Elang', 2021, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `afh_pemesanan`
--

CREATE TABLE `afh_pemesanan` (
  `kode_pesanan` int(11) NOT NULL,
  `tgl_pemesan` text NOT NULL,
  `email_pemesan` varchar(250) NOT NULL,
  `kode_buku` varchar(250) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `kode_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `afh_pemesanan`
--

INSERT INTO `afh_pemesanan` (`kode_pesanan`, `tgl_pemesan`, `email_pemesan`, `kode_buku`, `jumlah_pesanan`, `keterangan`, `kode_bayar`) VALUES
(1, '1970-01-01', 'anggafantiya@gmail.com', '1A2B', 20, 'belum bayar', 1),
(2, '1970-01-01', 'Kirito@gmail.com', '1A2E', 10, 'belum bayar', 1),
(3, '1970-01-01', 'uzumaki@gmail.com', '1A2F', 20, 'belum bayar', 1),
(4, '1970-01-01', 'Andre@gmail.com', '1A2Z', 15, 'belum bayar', 1),
(5, '1970-01-01', 'ahad@gmail.com', '1A2G', 12, 'belum bayar', 1),
(6, '1970-01-01', 'Kagawa@gmail.com', '1A2G', 10, 'belum bayar', 1),
(7, '1970-01-01', 'dadang@gmail.com', '1A2Z', 11, 'belum bayar', 1),
(8, '1970-01-01', 'as@gmail.com', '1A2F', 11, 'belum bayar', 1),
(9, '1970-01-01', 'tes@tes.cco', '1A2B', 2, 'belum bayar', 1),
(10, '1970-01-01', 'tes@tes.cco', '1A2B', 2, 'belum bayar', 1),
(11, '1970-01-01', 'kiki@gmail.com', '1A2G', 20, 'belum bayar', 1),
(12, '1970-01-01', 'kiki@gmail.com', '1A2G', 20, 'belum bayar', 1),
(13, '1970-01-01', 'tesaja@gmail.com', '1A2E', 25, 'belum bayar', 1),
(14, '1970-01-01', 'anggafantiya@gmail.com', '1A2G', 20, 'belum bayar', 1),
(15, '1970-01-01', 'admin@arsip.com', '1A2B', 1, 'belum bayar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `afh_user`
--

CREATE TABLE `afh_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `afh_user`
--

INSERT INTO `afh_user` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `afh_databuku`
--
ALTER TABLE `afh_databuku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `afh_pemesanan`
--
ALTER TABLE `afh_pemesanan`
  ADD PRIMARY KEY (`kode_pesanan`);

--
-- Indexes for table `afh_user`
--
ALTER TABLE `afh_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `afh_pemesanan`
--
ALTER TABLE `afh_pemesanan`
  MODIFY `kode_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `afh_user`
--
ALTER TABLE `afh_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `arsip_surat`
--
CREATE DATABASE IF NOT EXISTS `arsip_surat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `arsip_surat`;

-- --------------------------------------------------------

--
-- Table structure for table `distribusi_model`
--

CREATE TABLE `distribusi_model` (
  `iddistribusi` int(10) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar_model`
--

CREATE TABLE `surat_keluar_model` (
  `idsuratkeluar` int(10) NOT NULL,
  `nomor_surat` varchar(50) NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `lampiran` varchar(50) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `file_surat` varchar(50) DEFAULT NULL,
  `bagian` varchar(30) NOT NULL,
  `tanggalsurat` date NOT NULL,
  `tanggalsuratkeluar` date NOT NULL,
  `iduser` int(10) NOT NULL,
  `iddistribusi` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk_model`
--

CREATE TABLE `surat_masuk_model` (
  `idsuratmasuk` int(10) NOT NULL,
  `nomor_surat` varchar(50) NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `lampiran` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `file_surat` varchar(50) DEFAULT NULL,
  `bagian` varchar(30) NOT NULL,
  `tanggalsurat` date NOT NULL,
  `tanggalsuratmasuk` date NOT NULL,
  `iduser` int(10) NOT NULL,
  `iddistribusi` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_model`
--

CREATE TABLE `user_model` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` enum('superadmin','admin','user','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distribusi_model`
--
ALTER TABLE `distribusi_model`
  ADD PRIMARY KEY (`iddistribusi`);

--
-- Indexes for table `surat_keluar_model`
--
ALTER TABLE `surat_keluar_model`
  ADD PRIMARY KEY (`idsuratkeluar`),
  ADD UNIQUE KEY `iduser` (`iduser`,`iddistribusi`);

--
-- Indexes for table `surat_masuk_model`
--
ALTER TABLE `surat_masuk_model`
  ADD PRIMARY KEY (`idsuratmasuk`),
  ADD UNIQUE KEY `iduser` (`iduser`,`iddistribusi`);

--
-- Indexes for table `user_model`
--
ALTER TABLE `user_model`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distribusi_model`
--
ALTER TABLE `distribusi_model`
  MODIFY `iddistribusi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_keluar_model`
--
ALTER TABLE `surat_keluar_model`
  MODIFY `idsuratkeluar` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_masuk_model`
--
ALTER TABLE `surat_masuk_model`
  MODIFY `idsuratmasuk` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_model`
--
ALTER TABLE `user_model`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Database: `bantu`
--
CREATE DATABASE IF NOT EXISTS `bantu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bantu`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id_home` int(10) UNSIGNED NOT NULL,
  `kata_sambutan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepala_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kepemilikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akreditasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npsn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_sekolah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan_desa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepala-sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keterangan_ortu`
--

CREATE TABLE `keterangan_ortu` (
  `id_org_tua` int(10) UNSIGNED NOT NULL,
  `nama_lengkap_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir_ayah` date NOT NULL,
  `agama_ayah` enum('Islam','Kristen Protestan','Khatolik','Hindu','Budha','Khonghucu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kewarganegaraan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suku_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_ayah` enum('SMP Sederajat','SMA Sederajat','D1','D2','D3','D4','S1','S2','S3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan/bulan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_ayah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir_ibu` date NOT NULL,
  `agama_ibu` enum('Islam','Kristen Protestan','Khatolik','Hindu','Budha','Khonghucu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kewarganegaraan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suku_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_ibu` enum('SMP Sederajat','SMA Sederajat','D1','D2','D3','D4','S1','S2','S3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan_bulan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_ibu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keterangan_siswa`
--

CREATE TABLE `keterangan_siswa` (
  `id_ket_siswa` int(10) UNSIGNED NOT NULL,
  `nomor_induk_siswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_pendaftaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verifikasi` enum('Terverfikasi','Belum Terverfikasi') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` enum('Islam','Kristen Protestan','Khatolik','Hindu','Budha','Khonghucu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kewarganegaraan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anak_ke` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari_brp_saudara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_siswa` enum('Kandung','Yatim','Piatu','Yatim Piatu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_beasiswa` enum('Siswa Berprestasi','Anak Miskin','Pendidikan','Unggulan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyelenggara/sumber/pemberi_beasiswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `tahun_capres` enum('2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lomba` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `juara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_lomba` enum('Sains','Seni','Olahraga','Teknologi') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat_lomba` enum('Sekolah','Kecamatan','Provinsi','Nasional','Internasional') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_tinggal` enum('Bersama Orang Tua','Saudara/Wali','Asrama','Kost','Panti Asuhan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jarak_ke_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alat_transportasi_ke_sekolah` enum('Jalan Kaki','Kendaraan Pribadi','Kendaraan Umum','Jemputan','Becak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `golongan_darah` enum('A','B','AB','O','-') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinggi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lulusan_dari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lulus` date NOT NULL,
  `no_sttb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kesenian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olahraga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organisasi/lainnya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan_pindah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `di_kelas` enum('X-1','X-2','X-3','X-4','XI IPA 1','XI IPA 2','XI IPA 3','XI IPA 4','XI IPA 5','XI IPA 6','XII IPA 1','XII IPA 2','XII IPA 3','XII IPA 4','XII IPA 5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_diterima` date NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan_desa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kab_kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` enum('Sumatera Utara') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keterangan_wali`
--

CREATE TABLE `keterangan_wali` (
  `id_wali` int(10) UNSIGNED NOT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hubungan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_wali` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon_rumah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_25_165153_create_keterangan_siswa_table', 1),
(5, '2021_02_25_165202_create_keterangan_ortu_table', 1),
(6, '2021_02_25_165211_create_keterangan_wali_table', 1),
(7, '2021_02_25_165319_create_home_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('tata_usaha','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `password`, `role`, `alamat`, `no_hp`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$gKK3uxJk4oXi8uWmdkRawenOFYFSmt5ZJ1ehwx2oTXsu6coURFGCC', 'admin', 'Jl. Penguin raya 3', '08126565400');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id_home`);

--
-- Indexes for table `keterangan_ortu`
--
ALTER TABLE `keterangan_ortu`
  ADD PRIMARY KEY (`id_org_tua`);

--
-- Indexes for table `keterangan_siswa`
--
ALTER TABLE `keterangan_siswa`
  ADD PRIMARY KEY (`id_ket_siswa`),
  ADD UNIQUE KEY `keterangan_siswa_nomor_induk_siswa_unique` (`nomor_induk_siswa`);

--
-- Indexes for table `keterangan_wali`
--
ALTER TABLE `keterangan_wali`
  ADD PRIMARY KEY (`id_wali`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id_home` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keterangan_ortu`
--
ALTER TABLE `keterangan_ortu`
  MODIFY `id_org_tua` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keterangan_siswa`
--
ALTER TABLE `keterangan_siswa`
  MODIFY `id_ket_siswa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keterangan_wali`
--
ALTER TABLE `keterangan_wali`
  MODIFY `id_wali` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(2) UNSIGNED NOT NULL,
  `nama` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `email`, `password`) VALUES
(1, 'Admin', 'admin@admin.admin', '123456'),
(2, 'bbbb', 'bbb@bbb.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama`) VALUES
(1, 'Berita'),
(2, 'Artikel'),
(3, 'Blog'),
(4, 'pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `idkomentar` int(11) NOT NULL,
  `idpost` int(11) NOT NULL,
  `idpenulis` int(11) NOT NULL,
  `isi` text NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`idkomentar`, `idpost`, `idpenulis`, `isi`, `tgl_update`) VALUES
(1, 126, 2, 'good', '2020-10-25'),
(2, 126, 2, 'nice', '2020-10-25'),
(8, 126, 3, 'MANTAPP', '0000-00-00'),
(23, 96, 2, 'haaa', '2020-10-25'),
(24, 96, 2, 'sss', '2020-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `idpenulis` int(11) NOT NULL,
  `nama` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `alamat` text NOT NULL,
  `kota` text NOT NULL,
  `no_telp` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`idpenulis`, `nama`, `password`, `email`, `alamat`, `kota`, `no_telp`) VALUES
(1, 'admin', 'c0e024d9200b5705bc4804722636378a', '', '', '', '0'),
(2, 'abe randa', 'abe1234', 'abe@gmail.com', 'jl.warman hasmy', 'Pekanbaru', '08527654332'),
(3, 'randa', 'randa123', 'randa@gmail', 'jl.kaka', 'semarang', '0874721'),
(4, 'randa', 'fabc41f363b542ba9b63be9659d597a0', 'randa22@gmail.com', 'jl.jalan', 'semarang', '088882922020'),
(0, 'sultan', 'randa', 'sultan@gmail.com', 'semarang', 'semarang', '0856272192412');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `idpost` int(11) NOT NULL,
  `idpenulis` int(11) NOT NULL,
  `judul` text NOT NULL,
  `file_gambar` text NOT NULL,
  `isi_post` text NOT NULL,
  `tgl_insert` date NOT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `tgl_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`idpost`, `idpenulis`, `judul`, `file_gambar`, `isi_post`, `tgl_insert`, `idkategori`, `tgl_update`) VALUES
(96, 2, 'Post Terbaru', 'https://image.freepik.com/free-photo/top-view-person-writing-laptop-with-copy-space_23-2148708035.jpg', '', '2020-10-25', 4, '2020-10-25'),
(97, 2, 'dark', 'https://img.freepik.com/free-photo/flat-lay-desk-elements-arrangement-with-copy-space_23-2148708015.jpg?size=626&ext=jpg', 'lorem ipsum\r\n', '2020-10-25', 3, '2020-10-25'),
(101, 2, 'LOREM', 'https://image.freepik.com/free-photo/grapes-strawberries-pineapple-kiwi-apricot-banana-whole-pineapple_23-2147968680.jpg', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque facilis, mollitia cumque harum perferendis repellat sunt eum tempora tempore expedita officia vitae sit voluptatem iste natus praesentium quas? Ipsam, dicta.', '2020-10-25', 2, '2020-10-25'),
(102, 2, 'Post Halloween', 'https://image.freepik.com/free-vector/happy-halloween-background-template-darkness-with-pumpkin_1150-25662.jpg\r\n', 'Hmm\r\n', '2020-10-25', 1, '2020-10-25'),
(123, 2, 'Halooo', 'https://image.freepik.com/free-photo/top-view-person-writing-laptop-with-copy-space_23-2148708035.jpg', 'halaman 1', '0000-00-00', 2, '0000-00-00'),
(125, 2, 'Percobaan 1', 'https://img.freepik.com/free-photo/top-view-delicious-exotic-fruits-with-copy-space_23-2148498179.jpg?size=626&ext=jpg&ga=GA1.2.1980697664.1603610270', 'Percobaan\r\n', '2020-10-25', 2, '2020-10-25'),
(126, 2, 'Halaman Terbaru', 'https://image.freepik.com/free-psd/floral-background-with-golden-nature_1361-2727.jpg', 'hahaha\r\n', '2020-10-25', 2, '2020-10-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pertanyaan_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments__answers`
--

CREATE TABLE `comments__answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments__questions`
--

CREATE TABLE `comments__questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_dislike_answers`
--

CREATE TABLE `like_dislike_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_dislike_questions`
--

CREATE TABLE `like_dislike_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_21_100534_create_questions_table', 1),
(5, '2020_11_21_100556_create_answers_table', 1),
(6, '2020_11_21_100823_create_profiles_table', 1),
(7, '2020_11_21_100946_add_fk_to_questions', 1),
(8, '2020_11_21_101004_add_fk_to_answers', 1),
(9, '2020_11_21_101207_create_like_dislike_questions_table', 1),
(10, '2020_11_21_101241_create_like_dislike_answers_table', 1),
(11, '2020_11_21_101433_create_comments_answers_table', 1),
(12, '2020_11_21_101447_create_comments_questions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jawaban_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `judul`, `isi`, `created_at`, `updated_at`, `profile_id`, `jawaban_id`) VALUES
(1, 'pertanyaan 1', 'apakah gajah berkaki 2 ?', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_profile_id_foreign` (`profile_id`),
  ADD KEY `answers_pertanyaan_id_foreign` (`pertanyaan_id`);

--
-- Indexes for table `comments__answers`
--
ALTER TABLE `comments__answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments__answers_profile_id_foreign` (`profile_id`),
  ADD KEY `comments__answers_jawaban_id_foreign` (`jawaban_id`);

--
-- Indexes for table `comments__questions`
--
ALTER TABLE `comments__questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments__questions_profile_id_foreign` (`profile_id`),
  ADD KEY `comments__questions_pertanyaan_id_foreign` (`pertanyaan_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_dislike_answers`
--
ALTER TABLE `like_dislike_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_dislike_answers_profile_id_foreign` (`profile_id`),
  ADD KEY `like_dislike_answers_jawaban_id_foreign` (`jawaban_id`);

--
-- Indexes for table `like_dislike_questions`
--
ALTER TABLE `like_dislike_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_dislike_questions_profile_id_foreign` (`profile_id`),
  ADD KEY `like_dislike_questions_pertanyaan_id_foreign` (`pertanyaan_id`);

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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_profile_id_foreign` (`profile_id`),
  ADD KEY `questions_jawaban_id_foreign` (`jawaban_id`);

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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments__answers`
--
ALTER TABLE `comments__answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments__questions`
--
ALTER TABLE `comments__questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_dislike_answers`
--
ALTER TABLE `like_dislike_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_dislike_questions`
--
ALTER TABLE `like_dislike_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_pertanyaan_id_foreign` FOREIGN KEY (`pertanyaan_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `answers_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `comments__answers`
--
ALTER TABLE `comments__answers`
  ADD CONSTRAINT `comments__answers_jawaban_id_foreign` FOREIGN KEY (`jawaban_id`) REFERENCES `answers` (`id`),
  ADD CONSTRAINT `comments__answers_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `comments__questions`
--
ALTER TABLE `comments__questions`
  ADD CONSTRAINT `comments__questions_pertanyaan_id_foreign` FOREIGN KEY (`pertanyaan_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `comments__questions_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `like_dislike_answers`
--
ALTER TABLE `like_dislike_answers`
  ADD CONSTRAINT `like_dislike_answers_jawaban_id_foreign` FOREIGN KEY (`jawaban_id`) REFERENCES `answers` (`id`),
  ADD CONSTRAINT `like_dislike_answers_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `like_dislike_questions`
--
ALTER TABLE `like_dislike_questions`
  ADD CONSTRAINT `like_dislike_questions_pertanyaan_id_foreign` FOREIGN KEY (`pertanyaan_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `like_dislike_questions_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_jawaban_id_foreign` FOREIGN KEY (`jawaban_id`) REFERENCES `answers` (`id`),
  ADD CONSTRAINT `questions_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);
--
-- Database: `db_surat`
--
CREATE DATABASE IF NOT EXISTS `db_surat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_surat`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(10) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username_admin`, `password`, `gambar`) VALUES
(1, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin.jpg'),
(2, 'admin2', 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', 'admin2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bagian`
--

CREATE TABLE `tb_bagian` (
  `id_bagian` int(11) NOT NULL,
  `nama_bagian` varchar(120) NOT NULL,
  `username_admin_bagian` varchar(50) NOT NULL,
  `password_bagian` varchar(50) NOT NULL,
  `nama_lengkap` varchar(70) NOT NULL,
  `tanggal_lahir_bagian` date NOT NULL,
  `alamat` text NOT NULL,
  `no_hp_bagian` varchar(12) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bagian`
--

INSERT INTO `tb_bagian` (`id_bagian`, `nama_bagian`, `username_admin_bagian`, `password_bagian`, `nama_lengkap`, `tanggal_lahir_bagian`, `alamat`, `no_hp_bagian`, `gambar`) VALUES
(1, 'WALIKOTA', 'walikota', 'daaf9486f7039e0087f268db4215998bfb6185cb', 'walikota', '2017-05-25', 'samarinda', '081222222222', 'walikota.jpg'),
(2, 'WAKIL WALIKOTA', 'wawali', '61e1322f11261e3c4c9c8631f86bc70237c5ee42', 'wawali', '2017-11-04', 'samarinda', '081222222222', 'wawali.jpg'),
(3, 'SEKDA', 'sekda', 'ba09b363755a11c5a46f1be9a8dd6e579a1c75b7', 'SEKDA', '2017-11-10', 'Samarinda', '081299101309', 'sekda.jpg'),
(4, 'PLH.SEKDA', 'plh sekda', 'ce26252389e1562bdd0a4094270b2cfb2d16f6be', 'plh sekda', '2017-11-10', 'Samarinda', '087731311111', 'plh sekda.jpg'),
(5, 'ASS.I', 'ass i', '972a3c20bb3d97797348df57ec7d81185de5ce17', 'ass i', '2017-11-10', 'samarinda', '322222222222', 'ass i.jpg'),
(6, 'PLT.ASS.I', 'plt ass i', '4182b75e1a82d3e2d1751e9d903eefad6a80d212', 'plt ass i', '2017-11-03', 'samarinda', '233333333333', 'plt ass i.jpg'),
(7, 'PLT.ASS.II', 'plt ass ii', '3f17afaf0a4238fdd1ddc0c3a88686fb96f5c68c', 'plt ass ii', '2017-11-10', 'bpp', '344444444444', 'plt ass ii.jpg'),
(8, 'ASS.III', 'ass iii', 'fed0054dcfee81465402afa25f65e9f66cb697af', 'ass iii', '2017-11-01', 'bpp', '222222222222', 'ass iii.png'),
(9, 'UMUM', 'umum', 'b617726c7f45ecb196ef74881089fa17d90d7276', 'umum', '2017-11-17', 'smd', '333333333333', 'umum.jpg'),
(10, 'TU', 'tu', 'a3da4c6307d230e1f1c8ad62e00d05ff1f1f5b52', 'tu', '2017-11-10', 'badak', '24224242', 'tu.png'),
(11, 'KESRA', 'kesra', '983a6611e9d0f6e5601896247285eb2858ff46bd', 'kesra', '2017-11-17', 'bpp', '098979989999', 'kesra.png'),
(12, 'ADM.PEMB', 'adm pemb', '263bca10cf6fe2407537f3da354c2a5bd41f0046', 'adm pemb', '2017-11-07', 'samarinda', '089836323711', 'adm pemb.jpg'),
(13, 'ORTAL', 'ortal', '1e760e356d62c56a70893e1d3843c1c89b4a2212', 'ortal', '2017-11-13', 'samarinda', '081299101309', 'ortal.jpg'),
(14, 'PEM-OTDA', 'pem-otda', '278f69af54d64f658a430ecc6e060a9c936cba75', 'pem-otda', '2017-11-13', 'samarinda', '081222222222', 'pem-otda.jpg'),
(15, 'EKONOMI & SDA', 'ekonomi', 'edbc608bc611081ad29a586f1a328fc553a83cb5', 'ekonomi', '2017-11-15', 'samarinda', '081299101309', 'ekonomi.jpg'),
(16, 'HUKUM', 'hukum', 'ab86e34c8b761c9e534f9c020f83cb927c1ad673', 'hukum', '2017-11-15', 'Balikpapan', '081222222222', 'hukum.png'),
(17, 'BKPPD', 'bkppd', '50818d7e0331a1dec698c35c32af22556f90fb1a', 'bkppd', '2017-12-01', 'samarinda', '081299101309', 'bkppd.png'),
(18, 'PROTOKOL', 'protokol', 'a50492e61cab897b02e491d340de4083cb74f537', 'protokol', '2017-12-01', 'samarinda', '081242424223', 'protokol.png'),
(19, 'HUMAS', 'humas', 'b4c4048e1c66effb3ac466b6f33df58c0e93672c', 'humas', '2017-12-01', 'samarinda', '081344444444', 'humas.png'),
(20, 'INFRASTRUKTUR', 'infrastruktur', 'cc48a8c41985da07efc915fea8fc0ac3bec7f0e9', 'infrastruktur', '2017-12-01', 'smd', '083455253225', 'infrastruktur.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_suratkeluar`
--

CREATE TABLE `tb_suratkeluar` (
  `id_suratkeluar` int(11) NOT NULL,
  `tanggalkeluar_suratkeluar` datetime NOT NULL,
  `kode_suratkeluar` varchar(10) NOT NULL,
  `nomor_suratkeluar` varchar(45) NOT NULL,
  `nama_bagian` varchar(70) NOT NULL,
  `tanggalsurat_suratkeluar` date NOT NULL,
  `kepada_suratkeluar` varchar(255) NOT NULL,
  `perihal_suratkeluar` text NOT NULL,
  `file_suratkeluar` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suratkeluar`
--

INSERT INTO `tb_suratkeluar` (`id_suratkeluar`, `tanggalkeluar_suratkeluar`, `kode_suratkeluar`, `nomor_suratkeluar`, `nama_bagian`, `tanggalsurat_suratkeluar`, `kepada_suratkeluar`, `perihal_suratkeluar`, `file_suratkeluar`, `operator`, `tanggal_entry`) VALUES
(27, '2017-11-15 11:15:00', '411', '3451/WALIKOTA/2017', 'WALIKOTA', '2017-11-15', 'Masyarakat', 'Himbauan Gotong Royong', '2017-3451.pdf', 'admin', '2017-11-18 01:25:31'),
(29, '2017-11-15 08:20:00', '851', '3453/TU/2017', 'TU', '2017-11-15', 'Kepala Bagian Tata Usaha', 'Cuti Tahunan ', '2017-3453.pdf', 'admin', '2017-11-18 02:39:32'),
(30, '2017-11-14 13:25:00', '915.1', '3454/ADM.PEMB/2017', 'ADM.PEMB', '2017-11-15', 'Walikota', 'Daftar Usulan Proyek', '2017-3454.pdf', 'admin', '2017-11-14 23:29:41'),
(31, '2017-11-17 08:30:00', '125.4', '3455/PEM-OTDA/2017', 'PEM-OTDA', '2017-11-16', 'Camat Samarida Seberang', 'Pemekaran Wilayah', '2017-3455.pdf', 'admin', '2017-11-16 02:30:02'),
(35, '2017-11-17 08:30:00', '821.1', '3452/TU/2017', 'TU', '2017-11-16', 'Kepala Bagian Lingkup Pemkot Samarinda', 'Pengangkatan Jabatan Pegawai Negeri ', '2017-3452.pdf', 'admin', '2017-11-16 17:35:35'),
(88, '2017-11-17 08:45:00', '476.4', '3456/KESRA/2017', 'KESRA', '2017-11-17', 'Lurah SE-KOTA SAMARINDA', 'Peninjauan Kampung KB', '2017-3456.pdf', 'admin', '2017-11-17 02:58:51'),
(90, '2017-11-18 08:30:00', '376', '3458/ASSIII/2017', 'ASS.III', '2017-11-18', 'Kontraktor Bangunan', 'Penindakan Bangunan tanpa surat izin mendirikan bangunan', '2017-3458.pdf', 'admin', '2017-11-18 03:19:54'),
(91, '2017-11-30 01:00:00', '454', '3457/ORTAL/2017', 'ORTAL', '2017-11-30', 'Lurah SE-KOTA SAMARINDA', 'Pelatihan Kelembagaan Desa', '2017-3457.pdf', 'admin', '2017-11-30 00:01:06'),
(92, '2017-12-06 08:17:00', '342', '3459/TU/2017', 'TU', '2017-12-06', 'CAMAT SE-KOTA SAMARINDA', 'pilgub', '2017-3459.pdf', 'admin', '2017-12-06 07:19:29'),
(93, '2021-01-21 17:12:25', '', '3460', 'WALIKOTA', '2021-01-21', '', '', '2021-3460.pdf', '', '2021-01-21 17:12:25'),
(94, '2021-01-21 17:12:29', '', '3461', 'WALIKOTA', '2021-01-21', '', '', '2021-3461.pdf', '', '2021-01-21 17:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `tb_suratmasuk`
--

CREATE TABLE `tb_suratmasuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `tanggalmasuk_suratmasuk` datetime NOT NULL DEFAULT current_timestamp(),
  `kode_suratmasuk` varchar(10) NOT NULL,
  `nomorurut_suratmasuk` varchar(7) NOT NULL,
  `nomor_suratmasuk` varchar(25) NOT NULL,
  `tanggalsurat_suratmasuk` date NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `kepada_suratmasuk` varchar(255) NOT NULL,
  `perihal_suratmasuk` text NOT NULL,
  `file_suratmasuk` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp(),
  `disposisi1` varchar(50) NOT NULL,
  `tanggal_disposisi1` datetime NOT NULL DEFAULT current_timestamp(),
  `disposisi2` varchar(50) NOT NULL,
  `tanggal_disposisi2` varchar(25) NOT NULL,
  `disposisi3` varchar(50) NOT NULL,
  `tanggal_disposisi3` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suratmasuk`
--

INSERT INTO `tb_suratmasuk` (`id_suratmasuk`, `tanggalmasuk_suratmasuk`, `kode_suratmasuk`, `nomorurut_suratmasuk`, `nomor_suratmasuk`, `tanggalsurat_suratmasuk`, `pengirim`, `kepada_suratmasuk`, `perihal_suratmasuk`, `file_suratmasuk`, `operator`, `tanggal_entry`, `disposisi1`, `tanggal_disposisi1`, `disposisi2`, `tanggal_disposisi2`, `disposisi3`, `tanggal_disposisi3`) VALUES
(2, '2017-09-20 13:00:00', '900', '4518', '050/588/300.01', '2017-09-20', 'BAPPEDA KOTA SAMARINDA', 'Sekretaris Daerah', 'Penyampaian Usulan Bantuan Keuangan Pada APBD Prov.Kaltim Tahun 2018\r\n', '2017-4518.pdf', 'admin', '2017-11-18 03:30:06', 'SEKDA', '2017-09-20 14:30:00', 'PLT.ASS.II', '2017-09-28 09:00:00', 'ADM.PEMB', '2017-09-29 10:00:00'),
(3, '2017-09-20 14:00:00', '010', '4519', '036/B/HMJELEKTRO/IX/2017', '2017-09-18', 'FORUM KOMUNIKASI HIMPUNAN MAHASISWA ELEKTRO INDONESIA WILAYAH XIII KALIMANTAN', 'UMUM', 'Permohonan\r\n', '2017-4519.pdf', 'admin2', '2017-11-14 23:43:44', 'UMUM', '2017-09-22 11:00:00', '', '1970-01-01 07:00:00', 'UMUM', '2017-09-22 11:05:00'),
(5, '2017-09-21 15:10:00', '660', '4520', '660.2/1539/100.14', '2017-09-19', 'DINAS LINGKUNGAN HIDUP KOTA SAMARINDA', 'Sekretaris Daerah', 'Penting', '2017-4520.pdf', 'admin2', '2017-11-14 23:58:01', 'SEKDA', '2017-09-21 23:00:00', 'PLT.ASS.II', '2017-09-24 21:00:00', 'EKONOMI & SDA', '2017-09-25 09:00:00'),
(6, '2017-09-26 10:00:00', '061', '4521', '061/4382/SJ', '2017-09-20', 'MENDAGRI RI', 'Organisasi', 'Surat Edaran Tentang Mekanisme Layanan Administrasi Kemendagri\r\n', '2017-4521.pdf', 'admin', '2017-12-02 21:44:11', 'ASS.III', '2017-09-26 15:00:00', '', '1970-01-01 07:00:00', 'ORTAL', '2017-09-27 11:30:00'),
(7, '2017-09-25 14:00:00', '503', '4522', '503/744/100.26', '2017-09-25', 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA SAMARINDA', 'PLH SEKDA', 'Tindak Lanjut Permohonan Penghapusan Denda Retribusi IMB PT.Borneo Inti Graha\r\n', '2017-4522.pdf', 'admin', '2017-12-06 00:32:23', 'PLH.SEKDA', '2017-09-26 10:00:00', '', '1970-01-01 07:00:00', 'HUKUM', '2017-09-27 15:00:00'),
(8, '2017-12-06 08:12:00', '454', '4523 ', '4121/wawali/2017', '2017-12-06', 'pdam', 'wawali', 'air', '2017-4523.pdf', 'admin', '2017-12-06 07:15:07', 'WAKIL WALIKOTA', '2017-12-14 08:14:00', 'ADM.PEMB', '2017-12-12 08:14:00', 'PEM-OTDA', '2017-12-13 08:15:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username_admin` (`username_admin`);

--
-- Indexes for table `tb_bagian`
--
ALTER TABLE `tb_bagian`
  ADD PRIMARY KEY (`id_bagian`),
  ADD UNIQUE KEY `username_admin_bagian` (`username_admin_bagian`);

--
-- Indexes for table `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD PRIMARY KEY (`id_suratkeluar`),
  ADD UNIQUE KEY `nomor_suratkeluar` (`nomor_suratkeluar`);

--
-- Indexes for table `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  ADD PRIMARY KEY (`id_suratmasuk`),
  ADD UNIQUE KEY `nomorurut_suratmasuk` (`nomorurut_suratmasuk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_bagian`
--
ALTER TABLE `tb_bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  MODIFY `id_suratkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `final_project`
--
CREATE DATABASE IF NOT EXISTS `final_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `final_project`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `idkomentar` bigint(20) UNSIGNED NOT NULL,
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_04_084324_admin', 1),
(5, '2020_10_04_084627_kategori', 1),
(6, '2020_10_04_084712_penulis', 1),
(7, '2020_10_04_084834_post', 1),
(8, '2020_10_08_131138_tambah_nama_di_user', 1),
(9, '2020_10_08_133329_hapus_kolom_di_user', 1),
(10, '2020_10_22_124805_tambah_tampilan_di_post', 1),
(11, '2020_10_23_084344_buat_tabel_komentar', 1),
(12, '2020_10_23_090954_default_nol_tampilan', 1),
(13, '2020_10_25_134007_buat_foreign_key_kateogri_di_post', 1),
(14, '2020_11_28_103231_tambah_user_id_di_admin', 1),
(15, '2020_11_28_103252_tambah_user_id_di_penulis', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`idpenulis`, `alamat`, `kota`, `no_telp`, `user_id`) VALUES
(1, 'randa', 'randa', '124253', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idkategori` bigint(20) UNSIGNED NOT NULL,
  `isipost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `tampilan` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ramm', 'ramm@gmail.com', NULL, '$2y$10$241V6QHwXivv7tw7XBjAcO5oFfbk5wHoSxfyz0aXcvy4zIpQF3PWm', NULL, '2020-11-28 03:35:29', '2020-11-28 03:35:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`idkomentar`);

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
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`idpenulis`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `post_idkategori_foreign` (`idkategori`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `idkomentar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `idpenulis` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_idkategori_foreign` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE;
--
-- Database: `kokeru`
--
CREATE DATABASE IF NOT EXISTS `kokeru` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kokeru`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_28_144708_create_permission_tables', 1),
(5, '2020_12_11_032234_create_ruang_table', 1),
(6, '2020_12_12_044213_create_pivot_table', 1),
(7, '2020_12_12_091307_create_task_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pivot`
--

CREATE TABLE `pivot` (
  `idpenugasan` bigint(20) UNSIGNED NOT NULL,
  `idruang` bigint(20) UNSIGNED NOT NULL,
  `idcs` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_penugasan` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-12-16 08:51:46', '2020-12-16 08:51:46'),
(2, 'cleaner', 'web', '2020-12-16 08:51:47', '2020-12-16 08:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'R001', 'Ruang CEO', '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(2, 'R002', 'Ruang CTO', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(3, 'R003', 'Ruang Sekretaris', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(4, 'R004', 'Ruang Manager Cabang', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(5, 'R005', 'Cafetaria', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(6, 'R006', 'Ruang Tamu', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(7, 'R007', 'Ruang Tamu VIP', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(8, 'R008', 'Ruang Santai', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(9, 'R009', 'Kamar Mandi 1', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(10, 'R010', 'Kamar Mandi 2', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(11, 'R011', 'Perpustakaan', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(12, 'R012', 'Laboratorium 1', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(13, 'R013', 'Laboratorium 2', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(14, 'R014', 'Kantor Management', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(15, 'R015', 'Kantor Developer', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(16, 'R016', 'Kantor Desain Grafis', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(17, 'R017', 'Gudang', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(18, 'R018', 'Lobby', '2020-12-16 08:51:49', '2020-12-16 08:51:49'),
(19, 'R019', 'Ruang Tunggu', '2020-12-16 08:51:49', '2020-12-16 08:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_ruang` bigint(20) UNSIGNED NOT NULL,
  `id_cs` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `id_ruang`, `id_cs`, `tanggal`, `status`, `bukti1`, `bukti2`, `bukti3`, `bukti4`, `bukti5`) VALUES
(1, 3, 3, '2020-12-16', 'BERSIH', 'public/bukti1/ks4INldGXo4lflPCcEzgi6DmNQvVPPLovbIG7Y7y.jpeg', 'public/bukti2/hpoOew54mQiMeA0AkSrmlJHrchZQxcbcJkTn8RDf.jpeg', 'public/bukti3/4f3v62l79lkNogMPmcEv9zDSLQ1jk7aJM3CFXwRd.jpeg', 'public/bukti4/Hj2buBynNbSDuVIg5xIlAtIdNvtRaM2aYGWxeoD8.jpeg', 'public/bukti5/uKmYxtAG7wzm5J9mTBT56TAuitqAJFUA6v5SfLNo.jpeg'),
(2, 4, 4, '2020-12-16', 'KOTOR', NULL, NULL, NULL, NULL, NULL),
(3, 5, 5, '2020-12-16', 'KOTOR', NULL, NULL, NULL, NULL, NULL),
(4, 6, 6, '2020-12-16', 'KOTOR', NULL, NULL, NULL, NULL, NULL),
(5, 7, 7, '2020-12-16', 'KOTOR', NULL, NULL, NULL, NULL, NULL),
(6, 8, 8, '2020-12-16', 'KOTOR', NULL, NULL, NULL, NULL, NULL),
(7, 9, 9, '2020-12-16', 'KOTOR', NULL, NULL, NULL, NULL, NULL),
(8, 10, 10, '2020-12-16', 'KOTOR', NULL, NULL, NULL, NULL, NULL),
(9, 11, 11, '2020-12-16', 'KOTOR', NULL, NULL, NULL, NULL, NULL),
(11, 1, 2, '2020-12-20', 'KOTOR', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Kokeru', 'admin@kokeru.com', NULL, '$2y$10$TgcD9kUGY7wLpe/ZTciMnOEipcFZ39uaYDzo5Uyhi8FJ9ircWJ84O', NULL, '2020-12-16 08:51:47', '2020-12-16 08:51:47'),
(2, 'Ahmad Sakur', 'ahmadsakur@kokeru.com', NULL, '$2y$10$cMeu8HmtdGW17CidIuzbMe8/94l.1Rpt19YIJ0LY3S/y0hKi9ZVS6', NULL, '2020-12-16 08:51:47', '2020-12-16 08:51:47'),
(3, 'Abe Randa Putra', 'aberanda@kokeru.com', NULL, '$2y$10$TczFKGC7aea/m2ymWKqMpeDVX.LM4kSsspuoq1uyrpqXyynJud.k.', NULL, '2020-12-16 08:51:47', '2020-12-16 08:51:47'),
(4, 'Hilmi Yogantama', 'hilmiyoga@kokeru.com', NULL, '$2y$10$ubhlBVHutyhOGrRaA5DReOa8aGsqwrdXgU2SIxxqp.ccXrtibEKC.', NULL, '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(5, 'Putrisya Novatiara Sonia', 'putrisya@kokeru.com', NULL, '$2y$10$ql/BmD0E7RyoC0L535Bs7eku310fV65emcjhV3JqFUSdBk2lZGyFe', NULL, '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(6, 'Akbar Falih', 'akbarfalih@kokeru.com', NULL, '$2y$10$TPfMtil9eE7Wx8xp6S14dOUnxz8J66a0B33DDS6AlonLWP3AaYKG2', NULL, '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(7, 'Dimas Andhika', 'dimasandhika@kokeru.com', NULL, '$2y$10$6QR3cWoq4lpXZIfANqKQS.lB/lbI4ID2q.F8fzoNoYItVDdVoUQNu', NULL, '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(8, 'Akhmad Fadlil Khakim', 'akhmadfadlil@kokeru.com', NULL, '$2y$10$G6z6GnmmW9O1epJ5/r0pe.ALzi8ubNRybvAc9t.f853WZS2LoeUMu', NULL, '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(9, 'Erwin Fariskayana Rizki', 'erwinfaris@kokeru.com', NULL, '$2y$10$XCh82PspqTwCnD.NQ2Uzy.UYNFGfoIIjV8IydSZLTAs/sHCrk/i2K', NULL, '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(10, 'Rizki Cahya Pradana', 'rizkicp@kokeru.com', NULL, '$2y$10$G57DyDMxyjRFLI8v516JhejNjTsQVIh4BOphyCdFbZY8mk1TVnODC', NULL, '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(11, 'Muhammad Syafiq Alatas', 'syafiqalatas@kokeru.com', NULL, '$2y$10$ado5935VSL.QJvG6LjGbwe8h18ZoiBEWtlE4O24XBB.sBTxdI0OC6', NULL, '2020-12-16 08:51:48', '2020-12-16 08:51:48'),
(13, 'randa', 'randa@kokeru.com', NULL, '$2y$10$9NU0zBAKS2VPnUmA85bJPuLvNUuuH4Ttx21sfW6tHPYv6pQZA4hyG', NULL, '2021-01-27 04:02:00', '2021-01-27 04:02:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pivot`
--
ALTER TABLE `pivot`
  ADD PRIMARY KEY (`idpenugasan`),
  ADD KEY `pivot_idruang_foreign` (`idruang`),
  ADD KEY `pivot_idcs_foreign` (`idcs`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id_ruang_foreign` (`id_ruang`),
  ADD KEY `task_id_cs_foreign` (`id_cs`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pivot`
--
ALTER TABLE `pivot`
  MODIFY `idpenugasan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pivot`
--
ALTER TABLE `pivot`
  ADD CONSTRAINT `pivot_idcs_foreign` FOREIGN KEY (`idcs`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pivot_idruang_foreign` FOREIGN KEY (`idruang`) REFERENCES `ruang` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_id_cs_foreign` FOREIGN KEY (`id_cs`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `task_id_ruang_foreign` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id`);
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `bukti`
--

CREATE TABLE `bukti` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_laporan` bigint(20) UNSIGNED NOT NULL,
  `bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_ruang` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `id_ruang`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 90, 19, '2020-12-12 06:25:28', '2020-12-12 06:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_12_101913_buat_tabel_ruang', 1),
(5, '2020_11_12_102544_buat_tabel_laporan', 1),
(6, '2020_11_12_102854_buat_tabel_bukti', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `user_id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 2, 'Ruang A1', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(2, 2, 'Ruang A2', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(3, 2, 'Ruang A3', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(4, 2, 'Ruang A4', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(5, 2, 'Ruang A5', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(6, 2, 'Ruang A6', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(7, 3, 'Ruang A7', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(8, 3, 'Ruang A8', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(9, 3, 'Ruang A9', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(10, 3, 'Ruang A10', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(11, 3, 'Ruang A11', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(12, 4, 'Ruang A12', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(13, 4, 'Ruang A13', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(14, 4, 'Ruang A14', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(15, 4, 'Ruang A15', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(16, 4, 'Ruang A16', '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(17, 5, 'Ruang A17', '2020-12-12 06:14:57', '2020-12-12 06:14:58'),
(18, 5, 'Ruang A18', '2020-12-12 06:14:57', '2020-12-12 06:14:58'),
(19, 5, 'Ruang A19', '2020-12-12 06:14:57', '2020-12-12 06:14:58'),
(20, 5, 'Ruang A20', '2020-12-12 06:14:57', '2020-12-12 06:14:58'),
(21, 5, 'Ruang B1', '2020-12-12 06:14:57', '2020-12-12 06:14:58'),
(22, 6, 'Ruang B2', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(23, 6, 'Ruang B3', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(24, 6, 'Ruang B4', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(25, 6, 'Ruang B5', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(26, 6, 'Ruang B6', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(27, 7, 'Ruang B7', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(28, 7, 'Ruang B8', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(29, 7, 'Ruang B9', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(30, 7, 'Ruang B10', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(31, 7, 'Ruang B11', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(32, 8, 'Ruang B12', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(33, 8, 'Ruang B13', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(34, 8, 'Ruang B14', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(35, 8, 'Ruang B15', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(36, 8, 'Ruang B16', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(37, 9, 'Ruang B17', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(38, 9, 'Ruang B18', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(39, 9, 'Ruang B19', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(40, 9, 'Ruang B20', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(41, 9, 'Ruang C1', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(42, 10, 'Ruang C2', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(43, 10, 'Ruang C3', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(44, 10, 'Ruang C4', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(45, 10, 'Ruang C5', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(46, 10, 'Ruang C6', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(47, 11, 'Ruang C7', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(48, 11, 'Ruang C8', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(49, 11, 'Ruang C9', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(50, 11, 'Ruang C10', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(51, 11, 'Ruang C11', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(52, 12, 'Ruang C12', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(53, 12, 'Ruang C13', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(54, 12, 'Ruang C14', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(55, 12, 'Ruang C15', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(56, 12, 'Ruang C16', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(57, 13, 'Ruang C17', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(58, 13, 'Ruang C18', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(59, 13, 'Ruang C19', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(60, 13, 'Ruang C20', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(61, 13, 'Ruang D1', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(62, 14, 'Ruang D2', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(63, 14, 'Ruang D3', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(64, 14, 'Ruang D4', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(65, 14, 'Ruang D5', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(66, 14, 'Ruang D6', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(67, 15, 'Ruang D7', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(68, 15, 'Ruang D8', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(69, 15, 'Ruang D9', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(70, 15, 'Ruang D10', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(71, 15, 'Ruang D11', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(72, 16, 'Ruang D12', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(73, 16, 'Ruang D13', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(74, 16, 'Ruang D14', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(75, 16, 'Ruang D15', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(76, 16, 'Ruang D16', '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(77, 17, 'Ruang D17', '2020-12-12 06:14:58', '2020-12-12 06:14:59'),
(78, 17, 'Ruang D18', '2020-12-12 06:14:58', '2020-12-12 06:14:59'),
(79, 17, 'Ruang D19', '2020-12-12 06:14:58', '2020-12-12 06:14:59'),
(80, 17, 'Ruang D20', '2020-12-12 06:14:58', '2020-12-12 06:14:59'),
(81, 17, 'Ruang E1', '2020-12-12 06:14:58', '2020-12-12 06:14:59'),
(82, 18, 'Ruang E2', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(83, 18, 'Ruang E3', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(84, 18, 'Ruang E4', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(85, 18, 'Ruang E5', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(86, 18, 'Ruang E6', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(87, NULL, 'Ruang E7', '2020-12-12 06:14:59', '2020-12-12 06:17:13'),
(88, NULL, 'Ruang E8', '2020-12-12 06:14:59', '2020-12-12 06:17:13'),
(89, NULL, 'Ruang E9', '2020-12-12 06:14:59', '2020-12-12 06:17:13'),
(90, 19, 'Ruang E10', '2020-12-12 06:14:59', '2020-12-12 06:24:47'),
(91, NULL, 'Ruang E11', '2020-12-12 06:14:59', '2020-12-12 06:17:13'),
(92, NULL, 'Ruang E12', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(93, NULL, 'Ruang E13', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(94, NULL, 'Ruang E14', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(95, NULL, 'Ruang E15', '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(96, 20, 'Ruang F1', '2020-12-12 06:14:59', '2020-12-12 06:23:34'),
(97, 20, 'Ruang F2', '2020-12-12 06:14:59', '2020-12-12 06:23:34'),
(98, 20, 'Ruang F3', '2020-12-12 06:14:59', '2020-12-12 06:23:34'),
(99, 20, 'Ruang F4', '2020-12-12 06:14:59', '2020-12-12 06:23:34'),
(100, 20, 'Ruang F5', '2020-12-12 06:14:59', '2020-12-12 06:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_akun` enum('manager','cs') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cs',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `email_verified_at`, `password`, `tipe_akun`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Padma Novitasari S.Sos', 'manager@kokeru.id', NULL, '$2y$10$/1rqRUCuUtbPWiPDPGfsKe7Iz8w7OTdWE1yLJl9TA8qrha9OEy1CK', 'manager', NULL, '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(2, 'Ida Lidya Haryanti S.H.', 'kayla.nasyiah@utama.name', NULL, '$2y$10$F3XD2iS4GCgsMvvcbrC68e5tF4U35X0ywMeMGYUHUc7yn7EvcCzom', 'cs', NULL, '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(3, 'Salman Kusumo', 'vanesa.sihotang@gmail.co.id', NULL, '$2y$10$ndSvd9qJQNkInkRe.hXKbudS3uJ9bMIFY3mp56wXA3UZfUbKWkHnG', 'cs', NULL, '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(4, 'Jamil Embuh Rajasa', 'samsul46@gmail.com', NULL, '$2y$10$PNCKoZRmvxMCVzRotW9f6eHghlAHeI60E2suuYQyyyJngxofc5mim', 'cs', NULL, '2020-12-12 06:14:57', '2020-12-12 06:14:57'),
(5, 'Cemani Narpati S.T.', 'arahmawati@yahoo.com', NULL, '$2y$10$sc/HrAp9PB8MICw4yylgcuJYHPmGkhwoLAsEJmMn9NGDr.RwLR/16', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(6, 'Tiara Karimah Novitasari', 'rahmawati.karen@habibi.in', NULL, '$2y$10$GRi/CC.IaUY3ZE7nV/Pu6.bnWSwMmPWuoZPc//dT4vTd9akFHSn92', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(7, 'Argono Aris Siregar', 'fnajmudin@natsir.in', NULL, '$2y$10$KybPcSLOVMozpM6OfVAcau5ndjdXMCpmfI5Mswy3Tcu4943Ir5BmS', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(8, 'Wirda Hasanah', 'egunarto@yahoo.com', NULL, '$2y$10$haTHPS4PHYunAjE8GMT5quyQ2hXt4kCWh4/K6D9tpEkB8YPYElTPu', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(9, 'Bakijan Nyana Sinaga', 'silvia.najmudin@yahoo.com', NULL, '$2y$10$UG3HXjSj.lDzv.69LNztPOftBatl7OY7.FmMDR/kt9U3oD3jTu2vG', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(10, 'Cengkir Putu Megantara S.Farm', 'rahmi11@utami.sch.id', NULL, '$2y$10$5are7GzbV5zq/31AjR9uuehiOuoUV97PVWLivDz80URnATqsfehQC', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(11, 'Nabila Devi Pertiwi', 'mnuraini@laksmiwati.org', NULL, '$2y$10$6GSINO7EPaE31BVsUBntceVJoDF444MXmjHw10aOJSMgzsuati59y', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(12, 'Garan Hutapea', 'dadi45@rahimah.web.id', NULL, '$2y$10$0LhI9VXr23Rnng4JHBqT0OeZSVRAE1xOzy9ePE8rvUYSLpB4TM8Ny', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(13, 'Ira Siti Mulyani', 'husamah@yahoo.com', NULL, '$2y$10$Hh4mZarYOcXrEf3Ffuks7ODlK2Dre7XXB9vPiysucMcDNm4fW9732', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(14, 'Luis Jailani', 'swacana@farida.info', NULL, '$2y$10$SVhyJkNXmBGnRrxbfCAsFOLre2Ql8lL4VEpa5MZujAK.SNsIgK6xG', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(15, 'Ciaobella Pertiwi', 'tutami@yahoo.co.id', NULL, '$2y$10$I.FCA2hZt986qLPQvnGHH.NnDaAZOKSl7Pn2cy51KljUyKB625q3e', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(16, 'Gandi Gamanto Sihombing', 'yessi.agustina@yahoo.com', NULL, '$2y$10$6thPgjMiAlu5df4qcmUlieN1344xoroxjUzipw4Ju9Z30gDbXIfmG', 'cs', NULL, '2020-12-12 06:14:58', '2020-12-12 06:14:58'),
(17, 'Najwa Salimah Hassanah', 'rahmat74@utama.go.id', NULL, '$2y$10$UU4x.48NMhqi5plebui0i.qFg5zt88Af1zNqnrQndu9g93DnAcGVe', 'cs', NULL, '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(18, 'Opan Adinata Saptono', 'eman.permata@yahoo.com', NULL, '$2y$10$RdxdSeeS9OB0RFFnLEh6SOM42xXCoGPCpzQk.d6Q.bxW0DIUKryAm', 'cs', NULL, '2020-12-12 06:14:59', '2020-12-12 06:14:59'),
(19, 'Kawaca Mustofa S.Pt', 'melinda.pratama@yahoo.com', NULL, '$2y$10$faAAbFeKljd9p4nsRX.ZPeLJ2bNEwww0U7/zXWZGUxkEnHRuPJOFG', 'cs', NULL, '2020-12-12 06:14:59', '2020-12-12 06:24:47'),
(20, 'randa', 'randa@gmail.com', NULL, '$2y$10$DLMm0i4JHuj2x48RPKqGSeEPM53bxPG1a/yAvjGKgWVM4FmbWiW1m', 'cs', NULL, '2020-12-12 06:23:34', '2020-12-12 06:23:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bukti`
--
ALTER TABLE `bukti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bukti_id_laporan_foreign` (`id_laporan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_id_ruang_foreign` (`id_ruang`),
  ADD KEY `laporan_user_id_foreign` (`user_id`);

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
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bukti`
--
ALTER TABLE `bukti`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bukti`
--
ALTER TABLE `bukti`
  ADD CONSTRAINT `bukti_id_laporan_foreign` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_id_ruang_foreign` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `laporan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `myblog`
--
CREATE DATABASE IF NOT EXISTS `myblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myblog`;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(10) NOT NULL,
  `nama_kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama_kategori`) VALUES
(0, 'rumah makan'),
(1, 'kolam renang'),
(2, 'makan makan');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `idkomentar` int(11) NOT NULL,
  `idpost` int(11) NOT NULL,
  `idpenulis` int(10) NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `idpenulis` int(10) NOT NULL,
  `nama_penulis` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `kota` int(11) NOT NULL,
  `email` text NOT NULL,
  `no_telp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`idpenulis`, `nama_penulis`, `password`, `alamat`, `kota`, `email`, `no_telp`) VALUES
(1, 'arif', '123455hi', 'jabjcbsdbichsbjb', 1234, 'icha@gmaisl', '089077269386'),
(2, 'ivan', 'kasidihbdis', 'andsiuada', 1232, 'adsfssr', '1232343253634'),
(8, 'ichauwu', '123456', 'lallal', 4, 'njnaosndao@', '097896745635'),
(12, 'icha', '12324235', 'afsafadxafsdfwe', 123124, 'adsafsdfsdf', '12324325436');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `idpost` int(11) NOT NULL,
  `judul` text NOT NULL,
  `idkategori` int(11) NOT NULL,
  `isi` longtext NOT NULL,
  `file_gambar` text NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `idpenulis` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`idpost`, `judul`, `idkategori`, `isi`, `file_gambar`, `tgl_insert`, `tgl_update`, `idpenulis`) VALUES
(1, 'Trinity', 0, 'Salah satu dari 10 travel blogger keren di Indonesia adalah pria kelahiran Semarang bernama Arief Rahman. Ia adalah pemiliki blog backpackstory.me yang di dalamnya terdapat segudang cerita perjalanan yang dituangkan secara ringan, lucu, akrab dan cerdas.\r\n\r\nSetelah sebelumnya mencoba berbagai profesi demi menyadari panggilan harinya untuk menjadi traveler dan penulis, kini ia tidak lagi tanggung-tanggung untuk menjalaninya. Berbagai penghargaan pun telah ia kantongi. Seperti penghargaan Indonesia’s Best Travel Blog of the Year 2014, bukan hanya sebagai penulis blog, ia juga berhasil menerbitkan beberapa buku yang berupa kumpulan cerpen. Bisa dibilang Arief Rahman diberkahi kepekaan emosi dan kemampuan unik untuk melihat sisi lain dari dunia, sehingga tulisannya pun kaya warna dan terasa hidup. Ulasannya juga sering menjadi rujukan bagi traveler lain yang ingin memulai perjalanan wisatanya, pengurusan visa, hingga mencari cinta.', 'https://www.travelingajadulu.com/wp-content/uploads/2020/03/Wira-Nurmasyah-1536x986.png', '2020-10-21 16:51:28', '2020-10-21 16:51:28', 12),
(2, 'hayolo', 1, 'Pria kelahiran 1989 ini terkenal dengan kisah perjalanannya yang seru, Wira Nurmansyah juga sering menampilkan foto-foto keren hasil dari potretnya selama traveling di blog miliknya. Biasanya, ia lebih sering berkeliling ke kota-kota dan tempat indah sendirian saja tanpa ditemani oleh siapa pun.\r\n\r\nPria yang kerap disapa Wira ini sempat bercerita tentang alasannya mulai ngeblog pada 2008. Yaitu karena ia ingin mengabadikan setiap proses perjalannya dengan tujuan “pamer” sekaligus mengedukasi traveler lain agar punya kesadaran dan tanggung jawab dengan perjalanan yang telah mereka lakukan.', 'https://www.travelingajadulu.com/wp-content/uploads/2020/03/Pergi-Dulu-1536x1135.png', '2020-10-21 16:51:28', '2020-10-21 17:06:59', 2),
(3, 'Keragaman Budaya Daerah Adalah Kekayaan Budaya Nasional', 2, 'Apakah keragaman budaya bisa menjadi kekayaan budaya? Ya. Keragaman budaya daerah adalah kekayaan budaya nasional. Keragaman sosial budaya dan adat istiadat di wilayah Indonesia menjadi kebudayaan nasional yang berlandaskan Undang-Undang Dasar 1945.\r\n\r\nSebagai pelajar, generasi muda dan anggota masyarakat hendaknya mengembangkan keragaman sosial budaya menjadi kebudayaan nasional dengan landasan dan arah tujuannya yang dituangkan dalam penjelasan pasal 32 UUD 45 yang berbunyi:\r\n“Kebudayaan bangsa ialah kebudayaan yang timbul sebagai buah usaha budinya rakyat Indonesia seluruhnya. Kebudayaan-kebudayaan lama dan asli yang terdapat sebagai puncakpuncak kebudayaan di daerah-daerah di seluruh Indonesia, terhitung sebagai kebudayaan bangsa. Usaha kebudayaan harus menuju ke arah kemajuan adab, budaya dan persatuan dengan tidak menolakbahan-bahan baru dari kebudayaan asing yang dapat memperkembangkan atau memperkaya kebudayaan bangsa sendiri serta mempertinggi derajat kemanusiaan bangsa Indonesia”.\r\n\r\nKebudayaan nasional adalah suatu kebudayaan yang mampu memberi makna bagi kehidupan berbangsa dan berkepribadian, akan dapat dibanggakan sebagai identitas nasional.\r\n\r\nBaca Juga: Perilaku yang Sesuai Terhadap Keberagaman Budaya di Indonesia\r\n\r\nBangsa Indonesia adalah masyarakat yang terdiri dari beranekaragam suku bangsa yang memiliki adat istiadat yang berbeda-beda. Di Indonesia ini terdapat 656 suku bangsa dengan bahasa lokal 300 macam.\r\n\r\nKeanekaragaman tersebut merupakan kekayaan milik Bangsa Indonesia yang harus kita jaga dan lestarikan sehingga mampu memberikan warna ketentraman dan kedamaian bagi rakyat Indonesia agar ke depan tidak banyak menimbulkan persoalan yang mengancam disintegrasi bangsa.', 'https://indomaritim.id/wp-content/uploads/2020/10/Keberagaman-Adat-Kebudayaan-di-Indonesia.jpg', '2020-10-22 03:14:53', '2020-10-23 03:14:53', 1),
(5, 'lalalla', 0, 'dvuavsdyfafdae ibauhvsuydasdn hvaugDari dulu cita-cita saya ke Bolivia karena pengin ke Salar de Uyuni, ladang garam terbesar di dunia. Kalau sudah baca buku The Naked Traveler: 1 Year Round-the-World Trip, pada 2013 saya udah pernah segitu dekatnya dengan Bolivia, eh...vduyasvdha ', 'https://images.bisnis-cdn.com/posts/2020/10/20/1307369/antarafoto-penyaluran-blt-dana-desa-180520-yn-6-1.jpg', '2020-10-21 11:30:22', '2020-10-23 11:30:22', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`idkomentar`),
  ADD KEY `idpost` (`idpost`,`idpenulis`),
  ADD KEY `idpenulis` (`idpenulis`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`idpenulis`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `idkategori` (`idkategori`),
  ADD KEY `idpenulis` (`idpenulis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `idkomentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `idpenulis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`idpost`) REFERENCES `post` (`idpost`),
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`idpenulis`) REFERENCES `penulis` (`idpenulis`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`idpenulis`) REFERENCES `penulis` (`idpenulis`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sertifikasi\",\"table\":\"registrants\"},{\"db\":\"sertifikasi\",\"table\":\"events\"},{\"db\":\"sertifikasi\",\"table\":\"roles\"},{\"db\":\"sertifikasi\",\"table\":\"users\"},{\"db\":\"pkl\",\"table\":\"model_has_permissions\"},{\"db\":\"pkl\",\"table\":\"surat_masuk\"},{\"db\":\"afh_bpptik\",\"table\":\"afh_pemesanan\"},{\"db\":\"afh_bpptik\",\"table\":\"afh_user\"},{\"db\":\"afh_bpptik\",\"table\":\"afh_databuku\"},{\"db\":\"pkl\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-09-25 04:32:58', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":194}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pkl`
--
CREATE DATABASE IF NOT EXISTS `pkl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pkl`;

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id`, `nama_bagian`, `created_at`, `updated_at`) VALUES
(1, 'Tata Usaha', NULL, NULL),
(2, 'Kesiswaan', NULL, NULL),
(3, 'Kurikulum', NULL, NULL),
(4, 'Sarana dan Gudang', NULL, NULL),
(5, 'Hubungan Masyarakat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengirim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`id`, `pengirim`, `penerima`, `created_at`, `updated_at`) VALUES
(1, 'Admin Bagian Tata Usaha', 'Admin Bagian HUMAS', NULL, NULL),
(2, 'Admin Bagian Tata Usaha', 'User', NULL, NULL),
(3, 'Admin Bagian Tata Usaha', 'Admin Bagian HUMAS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_16_144434_create_permission_tables', 1),
(5, '2021_01_27_102052_create_bagian_table', 1),
(6, '2021_01_27_142708_create_surat_keluar_table', 1),
(7, '2021_01_27_142737_create_surat_masuk_table', 1),
(8, '2021_02_04_132931_create_disposisi_table', 1),
(9, '2021_02_04_135657_foreign_key_surat_masuk', 1),
(10, '2021_02_04_140101_foreign_key_surat_keluar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2021-07-01 04:10:18', '2021-07-01 04:10:18'),
(2, 'user', 'web', '2021-07-01 04:10:18', '2021-07-01 04:10:18'),
(3, 'admin', 'web', '2021-07-01 04:10:18', '2021-07-01 04:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `idsuratkeluar` bigint(20) UNSIGNED NOT NULL,
  `idbagian` bigint(20) UNSIGNED NOT NULL,
  `iduser` bigint(20) UNSIGNED NOT NULL,
  `iddisposisi` bigint(20) UNSIGNED DEFAULT NULL,
  `nomor_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lampiran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengirim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggalsurat` date NOT NULL,
  `tanggalsuratkeluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`idsuratkeluar`, `idbagian`, `iduser`, `iddisposisi`, `nomor_surat`, `perihal`, `lampiran`, `pengirim`, `kepada`, `file_surat`, `tanggalsurat`, `tanggalsuratkeluar`) VALUES
(1, 1, 4, NULL, '1/2/3', 'Surat Permohonan', '-', 'Admin Bagian Tata Usaha', 'Bupati Kuantan Singigi', 'public/suratkeluar/f9W6zE57fV77qNfOlLBbxUNYaXTNilbPvbBR2TM8.pdf', '2021-07-12', '2021-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `idsuratmasuk` bigint(20) UNSIGNED NOT NULL,
  `idbagian` bigint(20) UNSIGNED NOT NULL,
  `iduser` bigint(20) UNSIGNED NOT NULL,
  `iddisposisi` bigint(20) UNSIGNED DEFAULT NULL,
  `nomor_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lampiran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengirim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggalsurat` date NOT NULL,
  `tanggalsuratmasuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`idsuratmasuk`, `idbagian`, `iduser`, `iddisposisi`, `nomor_surat`, `perihal`, `lampiran`, `pengirim`, `file_surat`, `tanggalsurat`, `tanggalsuratmasuk`) VALUES
(2, 1, 4, NULL, '01/B/SMKN-02/I', 'Surat Rekomendasi', '-', 'DInas Pariwisata', 'public/suratmasuk/hNed6hKgOgvmFRrJFVhkEkHEm9TuwAmaIGLtwDim.jpg', '2021-07-12', '2021-07-12'),
(3, 1, 4, NULL, '1/11', 'Surat tanpa File', '-', 'Randa Siagian', NULL, '2021-07-13', '2021-07-13'),
(4, 3, 8, 1, '01/A/SMKN-02', 'Surat Undangan', '-', 'DInas Pendidikan', 'public/suratmasuk/ZZF6B78zkThZFYgfsbTwgXOji16p7KubDnygodPw.pdf', '2021-07-12', '2021-07-12'),
(5, 1, 4, NULL, '01/A/SMKN-02/10', 'Surat undangan', '-', 'testing', 'public/suratmasuk/YGN3kLbDjKHKoYdDHzpp3CN7oeZIdfntQQ2N58fR.pdf', '2021-07-13', '2021-07-13'),
(6, 1, 2, 2, '01/B/SMKN-02/I', 'Surat Rekomendasi', '-', 'DInas Pariwisata', 'public/suratmasuk/hNed6hKgOgvmFRrJFVhkEkHEm9TuwAmaIGLtwDim.jpg', '2021-07-12', '2021-07-13'),
(7, 1, 8, 3, '01/B/SMKN-02/I', 'Surat Rekomendasi', '-', 'DInas Pariwisata', 'public/suratmasuk/hNed6hKgOgvmFRrJFVhkEkHEm9TuwAmaIGLtwDim.jpg', '2021-07-12', '2021-07-13'),
(8, 1, 3, NULL, '213', 'ws', 'sad', 'dsadsa', NULL, '2021-09-23', '2021-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@arsip.com', NULL, NULL, '$2y$10$c3WYMm9tsp1b2W5695qe3un2Yga9AuoQXsorl80Vfgoc1qE70n176', NULL, '2021-07-01 04:10:19', '2021-07-12 18:14:53'),
(2, 'User', 'user@arsip.com', 'public/profile/uhlfktTG90RtoUUimtYRKd1xs5iXNI4IszlNvpku.png', NULL, '$2y$10$uQfZTbPCK2s9VUNTf9o/Q.1t1ntzV8eQQ5hekXMs0nT6cUFh75iGS', NULL, '2021-07-01 04:10:19', '2021-07-12 09:49:03'),
(3, 'Admin Bagian Sarana', 'sarana@arsip.com', NULL, NULL, '$2y$10$Qe7qvghTJBT.TUmKiAQukevWNPGcw0rwV7RmHgxpEgYxa6zkLOlxy', NULL, '2021-07-01 04:10:19', '2021-09-23 00:45:46'),
(4, 'Admin Bagian Tata Usaha', 'tatausaha@arsip.com', 'public/profile/45EkvFomLcrTqBPTomyS9GyZCt4HpT7yrWgV3nd7.jpg', NULL, '$2y$10$ZCIth0XCnBa411XVCKEATuDwSVY0tI4NQZ5dYB1ndgRIzaR0nO6Uy', NULL, '2021-07-01 04:10:19', '2021-07-12 18:25:38'),
(5, 'Admin Bagian Gudang', 'gudang@arsip.com', NULL, NULL, '$2y$10$HTbwj2ZAPRtIWzXPnfFXluqB7R5pqWDp0b6k6s2KORvYMWl8OAU0W', NULL, '2021-07-01 04:10:19', '2021-07-01 04:10:19'),
(6, 'Admin Bagian Kesiswaan', 'kesiswaan@arsip.com', NULL, NULL, '$2y$10$lMqjMzB3UQm/.HeYzGFmv.jPOCSG8ghdpJ1S8yRpOz87wvqBk4.im', NULL, '2021-07-01 04:10:19', '2021-07-01 04:10:19'),
(7, 'Admin Bagian Kurikulum', 'kurikulum@arsip.com', NULL, NULL, '$2y$10$4dEco.oBWK6gpvQEEh1TrOU.8nKLo0AN.mdUM/RRoBQ00Jbzb83ZG', NULL, '2021-07-01 04:10:20', '2021-07-01 04:10:20'),
(8, 'Admin Bagian HUMAS', 'humas@arsip.com', NULL, NULL, '$2y$10$jIn4QMCOAyWpCZmsso59UuLTSxKd9sRME24T.GmmorEmDKPJfEKSy', NULL, '2021-07-01 04:10:20', '2021-07-12 18:22:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`idsuratkeluar`),
  ADD KEY `surat_keluar_idbagian_foreign` (`idbagian`),
  ADD KEY `surat_keluar_iduser_foreign` (`iduser`),
  ADD KEY `surat_keluar_iddisposisi_foreign` (`iddisposisi`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`idsuratmasuk`),
  ADD KEY `surat_masuk_idbagian_foreign` (`idbagian`),
  ADD KEY `surat_masuk_iduser_foreign` (`iduser`),
  ADD KEY `surat_masuk_iddisposisi_foreign` (`iddisposisi`);

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
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `idsuratkeluar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `idsuratmasuk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD CONSTRAINT `surat_keluar_idbagian_foreign` FOREIGN KEY (`idbagian`) REFERENCES `bagian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_keluar_iddisposisi_foreign` FOREIGN KEY (`iddisposisi`) REFERENCES `disposisi` (`id`),
  ADD CONSTRAINT `surat_keluar_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD CONSTRAINT `surat_masuk_idbagian_foreign` FOREIGN KEY (`idbagian`) REFERENCES `bagian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_masuk_iddisposisi_foreign` FOREIGN KEY (`iddisposisi`) REFERENCES `disposisi` (`id`),
  ADD CONSTRAINT `surat_masuk_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `sanberfinal`
--
CREATE DATABASE IF NOT EXISTS `sanberfinal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sanberfinal`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `user_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama`) VALUES
(1, 'horor'),
(2, 'romance\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `idkomentar` bigint(20) UNSIGNED NOT NULL,
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_29_043228_create_admin_table', 1),
(5, '2020_11_29_043358_create_penulis_table', 1),
(6, '2020_11_29_043634_create_kategori_table', 1),
(7, '2020_11_29_043746_create_post_table', 1),
(8, '2020_11_29_044025_create_komentar_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`idpenulis`, `alamat`, `kota`, `no_telp`, `user_id`) VALUES
(1, 'tembalang', 'semarang', '2195211', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idkategori` bigint(20) UNSIGNED NOT NULL,
  `isipost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `tampilan` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`idpost`, `judul`, `idkategori`, `isipost`, `file_gambar`, `tgl_insert`, `tgl_update`, `idpenulis`, `tampilan`) VALUES
(1, 'Dandi', 1, 'Dandi adalah Zombie', 'public/post/hkH4yJKsQCklrwpp9FIfSwo1dg926f89BCJMx1m4.jpeg', '2020-11-29 07:22:23', '2020-11-29 15:40:38', 1, 0),
(2, 'Khuldara', 1, 'There are structures in the town of Kuldhara that date back to the 13th century, but no one has lived there since 1825, when all its residents seemingly vanished into thin air.\r\n\r\nAccording to local lore, 1,000 villagers completely abandoned their home overnight, without a trace. No one knows why they left, where they went, or even saw them leave.\r\n\r\nTheories as to why they left range from poisoned wells to a greedy ruler levying high taxes to a dwindling water supply, though none of those explain why the inhabitants left so suddenly.\r\n\r\nYou might be wondering why no one has tried to resettle the town — that\'s where the legend comes in. It\'s said that the village chief cursed the land: apparently, anyone who tries to live there will die.\r\n\r\nThe Indian Paranormal Society spent a night there, and reported \"Disembodied whispers, screams, noises are common at dark hours. Many of our members have witnessed apparitions, heard footsteps, experienced unusual touch and so on,\" according to Gulf News.', 'public/post/UvNnARJ6b1nSalKP27kumhMZwEUoomYMQdxAJ6By.jpeg', '2020-11-29 13:09:40', '2020-11-29 15:40:27', 1, 0),
(3, 'Dandi Season 2', 2, 'Seperti biasanya, di hari Valentine selalu diwarnai dengan bunga mawar dan cokelat. Kali ini seorang pria datang terburu-buru di tengah hujan demi kekasihnya tercinta.\r\n\r\nTahu bahwa ia terlambat dan hujan keburu turun, iapun meminta maaf pada kekasihnya yang terlihat cemberut. Hari itu mereka berencana makan malam berdua, persis seperti yang diinginkan si wanita di film-film yang ditontonnya.\r\n\r\nWanita itu lupa, bahwa romantisme bukan sekedar meniru adegan di film saja, yang terkadang justru tidak nyata. Ia juga lupa, bahwa sebenarnya romantis itu datang dari berbagai cara, seperti yang dibawa oleh kekasihnya.\r\n\r\n\"Aku membawakanmu bunga ini,\" sodor si pria. Ia tetap membisu dan memasang wajah tak suka.\r\n\r\nAkhirnya ia menerima 12 tangkai mawar yang masih basah karena tersiram air hujan. Iapun kaget, \"kenapa ada satu mawar plastik di sini? kamu nggak rela ngasih aku bunga mawar?\" kemarahannya memuncak lagi.\r\n\r\nMasih dengan sabar, si pria menjawabnya, \"aku memang sengaja membawa 11 mawar segar dan setangkai mawar plastik. Bagiku, aku akan mencintaimu hingga si mawar plastik itu mati...\"\r\n\r\nMerasa bersalah karena ledakan kemarahannya, si wanita menangis berurai air mata dan memeluk kekasihnya. \"Maafkan aku, aku sudah berpikiran jelek padamu...\"\r\n\r\n11 tangkai bunga mawar segar itu memang cantik seperti di film yang dilihatnya, tetapi setangkai mawar plastik yang dibawa kekasihnya itu melambangkan cinta yang abadi dan tak pernah mati.', 'public/post/3WMj82SND1Ry80Ceq1lODeliNTTqj6GRqxgMz9J2.jpeg', '2020-11-29 15:53:43', '2020-11-29 15:55:34', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'penulis', 'penulis@gmail.com', NULL, '$2y$10$w43eke0VaQYDgqECtPWTu.Q143Dm/0M2WdLVHEFe2LwSHDMpG/Iv6', NULL, '2020-11-28 23:27:08', '2020-11-28 23:27:08'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$s.KnTGCkkuo1hIAWEoFwNOqaQZFpBcbhV2Z.NXk0bB4GZUH0zDxzO', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`idkomentar`);

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
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`idpenulis`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `post_idkategori_foreign` (`idkategori`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `idkomentar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `idpenulis` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_idkategori_foreign` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE;
--
-- Database: `sertifikasi`
--
CREATE DATABASE IF NOT EXISTS `sertifikasi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sertifikasi`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `informasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `nama`, `tanggal`, `informasi`) VALUES
(1, 'Workshop Web', '2021-09-25', 'Dilaksanakan Online via MsTeams'),
(2, 'Webinar Data Scientist', '2021-09-29', 'Dilaksanakan Online via MsTeams'),
(3, 'Webinar Data Engineer', '2021-10-07', 'Dilaksanakan Online via MsTeams');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_24_044231_create_permission_tables', 1),
(6, '2021_09_25_020653_events', 1),
(7, '2021_09_25_020741_registrants', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrants`
--

CREATE TABLE `registrants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idevent` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggallahir` date NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registrants`
--

INSERT INTO `registrants` (`id`, `idevent`, `nama`, `email`, `tanggallahir`, `alamat`) VALUES
(1, 1, 'randa', 'randa@gmail.com', '2021-09-01', 'gondang'),
(2, 1, 'Randa', 'aberandaputra02@gmail.com', '2021-09-08', 'Jl. Godang timur V'),
(3, 3, 'Randa Siagian', 'randa@arsip.com', '2021-09-02', 'Jl. Godang timur V');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-09-24 21:21:57', '2021-09-24 21:21:57'),
(2, 'user', 'web', '2021-09-24 21:21:57', '2021-09-24 21:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$UIYnsnkAgXQwm05PvFxMj.A6H5rkQfMVKs68D9ikj3KNiqe7ZnLEK', NULL, '2021-09-24 21:21:58', '2021-09-24 21:37:17'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$EUayHf2YL/ojDn4aW24FDuC26Q7uporZYB7403bNwymvwo7pBKA4O', NULL, '2021-09-24 21:21:58', '2021-09-24 21:21:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `registrants`
--
ALTER TABLE `registrants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrants_idevent_foreign` (`idevent`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrants`
--
ALTER TABLE `registrants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registrants`
--
ALTER TABLE `registrants`
  ADD CONSTRAINT `registrants_idevent_foreign` FOREIGN KEY (`idevent`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Database: `suratapp`
--
CREATE DATABASE IF NOT EXISTS `suratapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `suratapp`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `web2app`
--
CREATE DATABASE IF NOT EXISTS `web2app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web2app`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama`) VALUES
(1, 'Horor'),
(2, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `idkomentar` bigint(20) UNSIGNED NOT NULL,
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`idkomentar`, `idpost`, `idpenulis`, `isi`, `tgl_update`) VALUES
(1, 1, 1, 'mantap banget', '2020-12-24 18:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_29_043228_create_admin_table', 1),
(5, '2020_11_29_043358_create_penulis_table', 1),
(6, '2020_11_29_043634_create_kategori_table', 1),
(7, '2020_11_29_043746_create_post_table', 1),
(8, '2020_11_29_044025_create_komentar_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`idpenulis`, `alamat`, `kota`, `no_telp`, `user_id`) VALUES
(1, 'alamat penulis', 'kota penulis', '0888888888', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idkategori` bigint(20) UNSIGNED NOT NULL,
  `isipost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_insert` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `idpenulis` bigint(20) UNSIGNED NOT NULL,
  `tampilan` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`idpost`, `judul`, `idkategori`, `isipost`, `file_gambar`, `tgl_insert`, `tgl_update`, `idpenulis`, `tampilan`) VALUES
(1, 'Romeo & Juliet', 2, 'Romeo dan Juliet adalah tragedi karya William Shakespeare yang ditulis pada awal kariernya. Tragedi ini mengisahkan sepasang mempelai muda yang saling jatuh cinta, namun terhalang karena kedua keluarga mereka saling bermusuhan. Romeo dan Juliet merupakan salah satu karya Shakespeare yang paling terkenal, dan juga merupakan salah satu karyanya yang paling sering dipentaskan selain Hamlet dan Macbeth.\r\n\r\nRomeo dan Juliet awalnya merupakan roman tragik pada zaman kuno. Cerita Romeo dan Juliet dibuat berdasarkan cerita di Italia, yang diubah menjadi sajak dalam The Tragical History of Romeus and Juliet oleh Arthur Brooke tahun 1562, dan diceritakan kembali dalam bentuk prosa pada Palace of Pleasure karya William Painter tahun 1582. Shakespeare meminjam ide dari keduanya, tetapi lebih mengembangkan karakter pendukung, terutama Mercutio dan Paris, untuk memperluas jalan cerita. Ditulis antara tahun 1591 hingga 1595, Romeo dan Julia pertama kali dipentaskan tahun 1597.\r\nShakespeare menggunakan struktur dramatik. Efek seperti perubahan antara komedi dan tragedi menjadi ketegangan yang memuncak, perluasan karakter kecil, dan penggunaan sub-plot untuk membubuhi cerita, telah dipuji sebagai salah satu tanda awal bakat dramatik Shakespeare. Drama ini berasal dari berbagai bentuk puisi dan karakter, yang kadang-kadang mengubah jalur pengembangan karakter. Contohnya Romeo yang semakin mahir dalam menyusun soneta selama cerita berlangsung .\r\n\r\nRomeo dan Juliet telah berkali-kali dipentaskan dalam bentuk drama, film, musikal dan opera. Selama Restorasi Inggris, drama ini dihidupkan kembali dan direvisi oleh William Davenant. David Garrick juga mengubah beberapa bagian, dan adaptasi opera oleh Georg Benda menghilangkan banyak aksi dan menambah akhir yang bahagia. Penampilan pada abad ke-19, seperti oleh Charlotte Cushman, menggunakan naskah asli Romeo dan Julia, dan lebih fokus pada realisme yang lebih besar. Pada abad ke-20, Romeo dan Julia telah diadaptasi kedalam berbagai versi seperti film Romeo and Juliet tahun 1936. Di Indonesia sendiri, terjemahan ke dalam bahasa Indonesianya yang berjudul Romeo dan Juliet dilakukan oleh Trisno Sumardjo.\r\n\r\nJuliet memasuki usia 17 tahun, orang tuanya pun mengadakan pesta ulang tahun buat puteri mereka pada hari jadinya, sekaligus juga memperkenalkan Juliet dan Valiant Paris, pemuda pilihan orang tuanya. Ayah Juliet adalah pemimpin dalam keluarga Capulets yang mempunyai permusuhan yang sudah turun menurun pada keluarga Mountage. Romeo, pemuda dari keluarga Mountage baru saja putus cinta karena di tinggal kekasihnya menikah dengan pria lain. Pada malam pesta dikediaman Capulets, Romeo yang lewat depan Puri kediaman Capulets secara tiba-tiba tertarik untuk masuk secara diam-diam ke dalam Puri kediaman Capulets untuk mengetahui keramaian yang ada di dalamnya.\r\n\r\nDisanalah Romeo menemukan perasaan cintanya kembali ketika terpesona melihat Juliet di pesta ulang tahunnya dan secara kebetulan mereka dapat berkenalan yang mempunyai kesan didalam hati masing-masing. Sejak pertemuan itu Romeo dan Juliet menjadi pasangan kekasih dimana cinta mereka dirahasiakan dari kedua belah pihak keluarga mereka masing-masing hingga pada suatu hari terjadi peristiwa yang melibatkan Romeo dan salah satu keluarga keluarga Capulets yang menyebabkan kematian Mercutio, sahabat dari keluarga Mountage karena bertarung dengan Tybalt dari keluarga Capulets. Kematian sahabatnya membuat Romeo menjadi gelap mata dan balas membunuh Tybalt.\r\n\r\nPerbuatan Romeo membuat dia dihukum tidak boleh lagi kembali dari Verona untuk selama-lamanya, sehingga terpisah dari kekasihnya Juliet. Dilain pihak, orang tua Juliet tidak bisa menolak lamaran dari Valiant Paris untuk menikahi Juliet. Sehingga mereka memaksa Juliet untuk menikah secepatnya dengan pilihan orang tuanya. Juliet bersedih akan keputusan itu dan ia berusaha menghubungi Romeo melalui guru dari Romeo sendiri akan rencana pernikahannya dengan Valiant Paris. Untuk mencegah pernikahan yang akan dilangsungkan dalam dua hari, maka sang guru menggunakan ramuan obat tidur untuk membuat Juliet mati suri selama 2 hari sehingga keluarga Juliet tidak bisa menikahkan dia. Sang guru juga berusaha menghubungi Romeo akan rencana itu tapi surat yang berisikan rencana Juliet tidak sampai pada Romeo.\r\n\r\nDan ketika Romeo kembali ke kota dan menemukan sang kekasihnya telah meninggal maka ia mendatangi tempat Juliet di pemakaman melihat Juliet telah mati maka Romeo pun membunuh dirinya disamping jasad kekasihnya dengan membawa perasaan sedih mendalam. Ketika pengaruh obat tidur itu hilang, Juliet tersadar tapi ketika melihat Romeo yang ada disampingnya telah mati membuat Juliet menyusul Romeo dengan mengakhiri hidupnya juga. Sebuah akhir dari tragedi cinta diantara permusuhan dua keluarga besar Capulets dan Mountage. Cerita romeo dan juliet pun menjadi kisah abadi sepanjang masa sehingga romeo dan juliet pantas dijadaikan icon romantis yang mengharu biru .', 'public/post/rl6bwbbN3RTEXck5ysudkgDbjoza92JbRAuRZzSz.jpeg', '2020-12-24 16:57:40', '2020-12-24 16:57:40', 1, 0),
(2, 'Horor', 1, 'Romeo dan Juliet adalah tragedi karya William Shakespeare yang ditulis pada awal kariernya. Tragedi ini mengisahkan sepasang mempelai muda yang saling jatuh cinta, namun terhalang karena kedua keluarga mereka saling bermusuhan. Romeo dan Juliet merupakan salah satu karya Shakespeare yang paling terkenal, dan juga merupakan salah satu karyanya yang paling sering dipentaskan selain Hamlet dan Macbeth.\r\n\r\nRomeo dan Juliet awalnya merupakan roman tragik pada zaman kuno. Cerita Romeo dan Juliet dibuat berdasarkan cerita di Italia, yang diubah menjadi sajak dalam The Tragical History of Romeus and Juliet oleh Arthur Brooke tahun 1562, dan diceritakan kembali dalam bentuk prosa pada Palace of Pleasure karya William Painter tahun 1582. Shakespeare meminjam ide dari keduanya, tetapi lebih mengembangkan karakter pendukung, terutama Mercutio dan Paris, untuk memperluas jalan cerita. Ditulis antara tahun 1591 hingga 1595, Romeo dan Julia pertama kali dipentaskan tahun 1597.\r\nShakespeare menggunakan struktur dramatik. Efek seperti perubahan antara komedi dan tragedi menjadi ketegangan yang memuncak, perluasan karakter kecil, dan penggunaan sub-plot untuk membubuhi cerita, telah dipuji sebagai salah satu tanda awal bakat dramatik Shakespeare. Drama ini berasal dari berbagai bentuk puisi dan karakter, yang kadang-kadang mengubah jalur pengembangan karakter. Contohnya Romeo yang semakin mahir dalam menyusun soneta selama cerita berlangsung .\r\n\r\nRomeo dan Juliet telah berkali-kali dipentaskan dalam bentuk drama, film, musikal dan opera. Selama Restorasi Inggris, drama ini dihidupkan kembali dan direvisi oleh William Davenant. David Garrick juga mengubah beberapa bagian, dan adaptasi opera oleh Georg Benda menghilangkan banyak aksi dan menambah akhir yang bahagia. Penampilan pada abad ke-19, seperti oleh Charlotte Cushman, menggunakan naskah asli Romeo dan Julia, dan lebih fokus pada realisme yang lebih besar. Pada abad ke-20, Romeo dan Julia telah diadaptasi kedalam berbagai versi seperti film Romeo and Juliet tahun 1936. Di Indonesia sendiri, terjemahan ke dalam bahasa Indonesianya yang berjudul Romeo dan Juliet dilakukan oleh Trisno Sumardjo.\r\n\r\nJuliet memasuki usia 17 tahun, orang tuanya pun mengadakan pesta ulang tahun buat puteri mereka pada hari jadinya, sekaligus juga memperkenalkan Juliet dan Valiant Paris, pemuda pilihan orang tuanya. Ayah Juliet adalah pemimpin dalam keluarga Capulets yang mempunyai permusuhan yang sudah turun menurun pada keluarga Mountage. Romeo, pemuda dari keluarga Mountage baru saja putus cinta karena di tinggal kekasihnya menikah dengan pria lain. Pada malam pesta dikediaman Capulets, Romeo yang lewat depan Puri kediaman Capulets secara tiba-tiba tertarik untuk masuk secara diam-diam ke dalam Puri kediaman Capulets untuk mengetahui keramaian yang ada di dalamnya.\r\n\r\nDisanalah Romeo menemukan perasaan cintanya kembali ketika terpesona melihat Juliet di pesta ulang tahunnya dan secara kebetulan mereka dapat berkenalan yang mempunyai kesan didalam hati masing-masing. Sejak pertemuan itu Romeo dan Juliet menjadi pasangan kekasih dimana cinta mereka dirahasiakan dari kedua belah pihak keluarga mereka masing-masing hingga pada suatu hari terjadi peristiwa yang melibatkan Romeo dan salah satu keluarga keluarga Capulets yang menyebabkan kematian Mercutio, sahabat dari keluarga Mountage karena bertarung dengan Tybalt dari keluarga Capulets. Kematian sahabatnya membuat Romeo menjadi gelap mata dan balas membunuh Tybalt.\r\n\r\nPerbuatan Romeo membuat dia dihukum tidak boleh lagi kembali dari Verona untuk selama-lamanya, sehingga terpisah dari kekasihnya Juliet. Dilain pihak, orang tua Juliet tidak bisa menolak lamaran dari Valiant Paris untuk menikahi Juliet. Sehingga mereka memaksa Juliet untuk menikah secepatnya dengan pilihan orang tuanya. Juliet bersedih akan keputusan itu dan ia berusaha menghubungi Romeo melalui guru dari Romeo sendiri akan rencana pernikahannya dengan Valiant Paris. Untuk mencegah pernikahan yang akan dilangsungkan dalam dua hari, maka sang guru menggunakan ramuan obat tidur untuk membuat Juliet mati suri selama 2 hari sehingga keluarga Juliet tidak bisa menikahkan dia. Sang guru juga berusaha menghubungi Romeo akan rencana itu tapi surat yang berisikan rencana Juliet tidak sampai pada Romeo.\r\n\r\nDan ketika Romeo kembali ke kota dan menemukan sang kekasihnya telah meninggal maka ia mendatangi tempat Juliet di pemakaman melihat Juliet telah mati maka Romeo pun membunuh dirinya disamping jasad kekasihnya dengan membawa perasaan sedih mendalam. Ketika pengaruh obat tidur itu hilang, Juliet tersadar tapi ketika melihat Romeo yang ada disampingnya telah mati membuat Juliet menyusul Romeo dengan mengakhiri hidupnya juga. Sebuah akhir dari tragedi cinta diantara permusuhan dua keluarga besar Capulets dan Mountage. Cerita romeo dan juliet pun menjadi kisah abadi sepanjang masa sehingga romeo dan juliet pantas dijadaikan icon romantis yang mengharu biru .', 'public/post/fjD3WHebhFRN0sN9ahq5UYe9Sp8Q3VVjto287T36.jpeg', '2020-12-24 18:38:27', '2020-12-24 18:38:27', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$h4Fup/F4aGj0XUcqE7aeduwtxBDAJMxyF1WId9mjCegMJRnREKAwi', NULL, '2020-12-24 09:13:42', '2020-12-24 09:13:42'),
(2, 'Penulis', 'penulis@gmail.com', NULL, '$2y$10$fHW9JQC7DD9ALqNLNH6zZeNBOvJ56rFuFGlvii/E1Q938NplafbDq', NULL, '2020-12-24 09:13:42', '2020-12-24 10:34:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`idkomentar`);

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
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`idpenulis`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `post_idkategori_foreign` (`idkategori`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `idkomentar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `idpenulis` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_idkategori_foreign` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
