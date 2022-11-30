-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2022 at 09:12 PM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lapa8301_db_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(128) NOT NULL,
  `nama_admin` varchar(128) NOT NULL,
  `email_admin` varchar(128) NOT NULL,
  `username_admin` varchar(128) NOT NULL,
  `password_admin` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `email_admin`, `username_admin`, `password_admin`) VALUES
(1, 'Haris Elfian', 'harisdj1996@gmail.com', 'haris', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_store` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `tarif_barang` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `id_user`, `id_kategori`, `id_store`, `nama_barang`, `tarif_barang`, `deskripsi`, `stok`, `gambar_barang`) VALUES
(24, 10, 3, 40, 'Pupuk Organik STU Plus', '150000', 'Pupuk Hebat, Biaya Hemat, Hasil Meningkat', 100, 'BRG9db7uf6hpe.png'),
(25, 10, 5, 40, 'Camera Canon 60D', '50000', 'Rental Kamera Canon Murah Hanya disini', 2, 'BRGx8wbhx8nq5.png'),
(26, 10, 5, 40, 'Rental Go Pro Murah', '40000', 'Mau Jalan Action? Rental Go Pro aja Boss', 1, 'BRGdi09zs7w5w.png'),
(27, 10, 5, 40, 'Stabilizer Camera', '60000', 'Pengen Hasil Kamera Tidak Goyang? Ayo Rental Stabilizer Sekarang juga', 2, 'BRGq8hpivusht.png'),
(28, 11, 6, 41, 'Rental Mobil Murah', '300000', 'Tersedia berbagai Type Mobil silahkan Chat saja ya', 4, 'BRG5viynagy8v.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_checkout`
--

CREATE TABLE `tb_checkout` (
  `id_checkout` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `total_harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `gambar_` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `gambar_`) VALUES
(1, 'Pakaian', 'pakaian.png'),
(2, 'Teknologi', 'teknologi.png'),
(3, 'Jasa', 'jasa.png'),
(4, 'Bangunan', 'bangunan.png'),
(5, 'Fotografi', 'fotografi.png'),
(6, 'Kendaraan', 'kendaraan.png'),
(7, 'Hiburan', 'hiburan.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_log_activity`
--

CREATE TABLE `tb_log_activity` (
  `id_log_activity` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_log_activity`
--

INSERT INTO `tb_log_activity` (`id_log_activity`, `id_user`, `tanggal`, `keterangan`) VALUES
(40, 8, '2021-02-04', 'User Menambahkan Barang'),
(41, 9, '2021-02-04', 'User Memesan Barang Sewa'),
(42, 9, '2021-02-04', 'User Memesan Barang Sewa'),
(43, 8, '2021-02-04', 'User Memesan Barang Sewa'),
(44, 8, '2021-02-04', 'User Memesan Barang Sewa'),
(45, 9, '2021-02-04', 'User Memesan Barang Sewa'),
(46, 8, '2021-02-04', 'User Menambahkan Ulasan'),
(47, 9, '2021-02-04', 'User Menambahkan Ulasan'),
(48, 8, '2021-02-05', 'User Menambahkan Barang'),
(49, 9, '2021-02-05', 'User Memesan Barang Sewa'),
(50, 9, '2021-02-05', 'User Menambah Store'),
(51, 9, '2021-02-05', 'User Menambahkan Barang'),
(52, 2, '2021-02-09', 'User Menambahkan Ulasan'),
(53, 2, '2021-02-09', 'User Mengupdate Profile'),
(54, 2, '2021-02-09', 'User Mengupdate Profile'),
(55, 2, '2021-02-09', 'User Memesan Barang Sewa'),
(56, 8, '2021-02-09', 'User Memesan Barang Sewa'),
(57, 10, '2022-11-30', 'User Menambah Store'),
(58, 10, '2022-11-30', 'User Menambahkan Barang'),
(59, 10, '2022-11-30', 'User Mengupdate Profile'),
(60, 10, '2022-11-30', 'User Menambahkan Barang'),
(61, 10, '2022-11-30', 'User Menambahkan Barang'),
(62, 10, '2022-11-30', 'User Menambahkan Barang'),
(63, 11, '2022-11-30', 'User Menambah Store'),
(64, 11, '2022-11-30', 'User Menambahkan Barang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sewa_barang`
--

CREATE TABLE `tb_sewa_barang` (
  `id_sewa_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `banyak_sewa` int(11) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `alamat_penyewa` text NOT NULL,
  `jaminan` varchar(255) NOT NULL,
  `jenis_transaksi` varchar(255) NOT NULL,
  `jenis_pengiriman` varchar(255) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int(11) NOT NULL,
  `img_slider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `img_slider`) VALUES
(1, '1669815996-Header Pupuk Organik STU Plus.png'),
(2, '1669816033-Pupuk Organik Plus STU Slide 1.jpg'),
(3, '1669816098-Pupuk Organik Plus STU Slide 4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `status`) VALUES
(1, 'Diterima'),
(2, 'Selesai'),
(3, 'Diserahkan'),
(4, 'Diajukan'),
(5, 'Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_store`
--

CREATE TABLE `tb_store` (
  `id_store` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_store` varchar(255) NOT NULL,
  `alamat_store` varchar(255) NOT NULL,
  `telp_store` varchar(20) NOT NULL,
  `wa_store` varchar(50) NOT NULL,
  `ig_store` varchar(50) NOT NULL,
  `gambar_store` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_store`
--

INSERT INTO `tb_store` (`id_store`, `id_user`, `nama_store`, `alamat_store`, `telp_store`, `wa_store`, `ig_store`, `gambar_store`) VALUES
(40, 10, 'Haris STU', 'Tegalsari, Umban Sari, Rumbai', '6282391091365', '6282391091365', 'hariselfian', 'STR_z9wmvp9a3x.png'),
(41, 11, 'Adison Rental', 'Batu Nan Limo, Koto Tangah Simalanggang', '6282391091365', '6282391091365', 'Adison Rental', 'STR_fpb6r1486y.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ulasan`
--

CREATE TABLE `tb_ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `review` text NOT NULL,
  `bintang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `alamat_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `telp_user` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `alamat_user`, `email_user`, `telp_user`, `username`, `password`) VALUES
(10, 'Haris Elfian', 'Tegal Sari', 'harisdj1996@gmail.com', '6282391091365', 'haris', 'kacopocah'),
(11, 'Adison Rental', 'adisonrental@gmail.com', 'adisonrental@gmail.com', '6282391091365', 'adisonrental', 'kacopocah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_checkout`
--
ALTER TABLE `tb_checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_log_activity`
--
ALTER TABLE `tb_log_activity`
  ADD PRIMARY KEY (`id_log_activity`);

--
-- Indexes for table `tb_sewa_barang`
--
ALTER TABLE `tb_sewa_barang`
  ADD PRIMARY KEY (`id_sewa_barang`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tb_store`
--
ALTER TABLE `tb_store`
  ADD PRIMARY KEY (`id_store`);

--
-- Indexes for table `tb_ulasan`
--
ALTER TABLE `tb_ulasan`
  ADD PRIMARY KEY (`id_ulasan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_checkout`
--
ALTER TABLE `tb_checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_log_activity`
--
ALTER TABLE `tb_log_activity`
  MODIFY `id_log_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tb_sewa_barang`
--
ALTER TABLE `tb_sewa_barang`
  MODIFY `id_sewa_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_store`
--
ALTER TABLE `tb_store`
  MODIFY `id_store` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_ulasan`
--
ALTER TABLE `tb_ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
