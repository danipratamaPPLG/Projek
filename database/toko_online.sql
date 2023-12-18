-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 07:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--
CREATE DATABASE IF NOT EXISTS `toko_online` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko_online`;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(2, 'Baju Wanita'),
(3, 'Jam Tangan'),
(4, 'Sabuk'),
(5, 'Jaket'),
(6, 'Topi'),
(8, 'Sepatu'),
(9, 'Kacamata'),
(11, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(4, 2, 'Hoodie', 120000, 'lZrgN4DUQksRaRN6dJVi.jpg', '&quot;Raih kenyamanan dan gaya dengan koleksi hoodie wanita terbaru kami. Hoodie ini tidak hanya memberikan kehangatan yang menyenangkan, tetapi juga menghadirkan sentuhan modis yang tak terbantahkan. Didesain dengan detail yang cermat, hoodie kami hadir dalam berbagai warna dan motif yang trendi, sesuai untuk melengkapi gaya santaimu sehari-hari. Material berkualitas tinggi memberikan nuansa lembut dan nyaman, membuatnya menjadi pilihan sempurna untuk berbagai kesempatan. Kenali kenyamanan dan keindahan dalam setiap momen dengan hoodie wanita kami yang tak hanya menutupi tubuhmu, tetapi juga merayakan gayamu yang unik.&quot;\r\n\r\n\r\n\r\n\r\n\r\n', 'tersedia'),
(5, 3, 'Rolex', 10000000, 'IezPoidWJDhBZUgfEUAm.jpg', 'Dengan bahan berkualitas tinggi dan desain yang timeless, koleksi jam tangan Rolex menjadi pilihan utama bagi mereka yang menghargai keindahan, presisi, dan warisan. Ikoni seperti Rolex Submariner dan Rolex Datejust menggambarkan kecanggihan dalam desain dan fungsionalitas, sementara Rolex Day-Date menjadi manifestasi kelas dan keunggulan.', 'tersedia'),
(6, 5, 'Jaket Kulit', 400000, '8UmeXSMsnVrZjr6Tdv81.jpg', 'Didesain dengan detail yang cermat, jaket kulit kami tidak hanya memberikan perlindungan dari cuaca, tetapi juga memberikan sentuhan modis yang tak terbantahkan. Material kulit berkualitas tinggi yang kami gunakan memberikan nuansa kemewahan dan kenyamanan, membuat setiap jaket kulit menjadi investasi gaya yang tak terlupakan.', 'tersedia'),
(7, 11, 'Laptop Acer Aspire 5 Ryzen 5500u ', 9000000, 'LgA8Gv9zYYmENeuO1ta4.jpg', '\r\nAcer Aspire 5 dengan prosesor Ryzen 5 5500U menawarkan kombinasi kuat antara kinerja yang tangguh dan desain yang stylish. Ditenagai oleh prosesor AMD Ryzen 5 5500U yang canggih, laptop ini mampu menghadirkan kinerja yang responsif dan efisien, cocok untuk multitasking sehari-hari dan tugas produktifitas.', 'tersedia'),
(8, 8, 'Sepatu Jordan', 1000000, 'N31WttLVpL3h1GAvhqLJ.jpg', 'Sepatu Jordan telah menjadi ikon dalam dunia streetwear dan olahraga, merepresentasikan gaya, prestasi, dan warisan olahraga. Didesain dengan keahlian tinggi dan estetika yang mengagumkan, sepatu Jordan menjadi pilihan favorit bagi pecinta sneaker di seluruh dunia.', 'tersedia'),
(9, 6, 'Topi Anak Sma', 12000, 'ee5j6Gvsc5Y4BElUMQrK.jpg', 'Topi untuk anak SMA tidak hanya berfungsi sebagai aksesori gaya, tetapi juga sebagai bagian dari identitas dan ekspresi pribadi. ', 'tersedia'),
(10, 11, 'Macbook Air M1', 12999999, 'kkYY7YWj5JolBJcmsnPy.jpg', '\r\nMacBook Air dengan chip M1 adalah pencapaian luar biasa dalam dunia komputasi. Dengan transisi ke arsitektur chip khusus Apple, MacBook Air M1 menghadirkan kombinasi kinerja, efisiensi daya, dan kecepatan yang luar biasa.\r\n\r\nProsesor M1, yang dirancang khusus oleh Apple, memungkinkan MacBook Air untuk memberikan kinerja komputasi tingkat tinggi tanpa mengorbankan daya tahan baterai. Dengan teknologi 5nm, chip M1 memiliki delapan inti CPU yang dapat menangani berbagai tugas dengan mudah, dari multitasking hingga pengolahan grafis yang intensif.', 'tersedia'),
(11, 4, 'Sabuk Pramuka', 20000, 'maD5Kw8B5WjpVgsdKKjv.jpg', '\r\nSabuk Pramuka adalah simbol dari semangat kepanduan, petualangan, dan pengembangan diri yang melekat pada gerakan kepramukaan. Sabuk ini bukan hanya sebagai aksesori, tetapi juga memegang makna mendalam dalam perjalanan seorang pramuka. ', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$iriCNrMwr/QdGKZZNU0Um.sv.DsC1qaqnVE7XxhVdfWRkekYgHYii');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
