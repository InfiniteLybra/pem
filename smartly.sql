-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Des 2023 pada 06.46
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartly`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_room`
--

CREATE TABLE `category_room` (
  `id` int NOT NULL,
  `category` varchar(50) NOT NULL,
  `information` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `category_room`
--

INSERT INTO `category_room` (`id`, `category`, `information`, `price`, `img`) VALUES
(1, 'Standard Room', 'Rp. 4.000.000 / One Night', '4.000.000', 'img_1.jpg'),
(2, 'Superior Room', 'Rp. 8.000.000 / One Night', '8.000.000', 'img_2.jpg'),
(3, 'Deluxe Room', 'Rp. 1.000.000 / One Night', '1.000.000', 'img_3.jpg'),
(4, 'Junior Suite Room', 'Rp. 3.000.000 / One Night', '3.000.000', 'img_1.jpg'),
(5, 'Presidential Suite Room', 'Rp. 24.000.000 / One Night', '24.000.000', 'img_2.jpg'),
(10, 'Twin Room', 'Rp. 3.000.000 / One Night', '3.000.000', 'img_3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `check_in` varchar(50) NOT NULL,
  `check_out` varchar(50) NOT NULL,
  `adults` int NOT NULL,
  `children` int NOT NULL,
  `type_room` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date_reserved` varchar(50) NOT NULL,
  `total_hari` varchar(10) NOT NULL,
  `price` varchar(50) NOT NULL,
  `room` varchar(10) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `status` enum('Submission','Booking','Success','Check In','Check Out') NOT NULL DEFAULT 'Submission',
  `date_success` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `username`, `name`, `phone`, `email`, `check_in`, `check_out`, `adults`, `children`, `type_room`, `message`, `date_reserved`, `total_hari`, `price`, `room`, `payment`, `status`, `date_success`) VALUES
(24, 'Skylark', 'Fawwaz Dzaky', '085730593481', 'superadmin@gmail.com', '19 November, 2023', '20 November, 2023', 2, 2, 'Deluxe Room', 'Berikan aku tempat yang nyaman', 'Saturday, 18-11-2023', '', '1.000.000', '1', '', 'Success', 'Tuesday, 21-11-2023'),
(26, 'Noirr', 'Fauzi Alfarizi', '085730593481', 'fauzi@gmail.com', '19 November, 2023', '20 November, 2023', 3, 4, 'Junior Suite Room', '', 'Monday, 20-11-2023', '3', '9.000.000', '2', '', 'Success', 'Tuesday, 21-11-2023'),
(27, 'Skylark', 'Fawwaz Dzaky', '085730593481', 'superadmin@gmail.com', '19 November, 2023', '20 November, 2023', 2, 2, 'Deluxe Room', 'Berikan aku tempat yang nyaman', 'Saturday, 18-11-2023', '', '1.000.000', '1', '', 'Success', 'Tuesday, 21-11-2023'),
(28, 'Noirr', 'Fauzi Alfarizi', '085730593481', 'fauzi@gmail.com', '19 November, 2023', '20 November, 2023', 3, 4, 'Junior Suite Room', '', 'Monday, 20-11-2023', '3', '9.000.000', '2', '', 'Success', 'Tuesday, 21-11-2023'),
(29, 'Fauzi', 'Fauzi ', '085730593481', 'fauzi@gmail.com', '20 November, 2023', '20 November, 2023', 1, 1, 'Junior Suite Room', '', 'Tuesday, 21-11-2023', '5', '15.000.000', '1', '', 'Success', 'Tuesday, 21-11-2023'),
(30, 'Fauzi', 'Fauzi ', '085730593481', 'fauzi@gmail.com', '20 November, 2023', '20 November, 2023', 1, 1, 'Deluxe Room', '', 'Tuesday, 21-11-2023', '10', '10.000.000', '2', '', 'Success', 'Tuesday, 21-11-2023'),
(31, 'IniFido', 'Athallah Yassar', '085730593481', 'fido@gmail.com', '21 November, 2023', '20 November, 2023', 3, 3, 'Presidential Suite Room', '', 'Monday, 20-11-2023', '1', '24.000.000', '1', '', 'Success', 'Tuesday, 21-11-2023'),
(32, 'Skylark', 'Fawwaz Dzaky', '085730593481', 'superadmin@gmail.com', '20 November, 2023', '21 November, 2023', 3, 3, 'Presidential Suite Room', '', 'Tuesday, 21-11-2023', '3', '72.000.000', '10', '', 'Success', 'Wednesday, 22-11-2023'),
(33, 'Admin', 'Administrator', '12123123123', 'administrator@gmail.com', '20 November, 2023', '21 November, 2023', 1, 1, 'Junior Suite Room', '', 'Tuesday, 21-11-2023', '9', '27.000.000', '8', '', 'Success', 'Wednesday, 22-11-2023'),
(34, 'Admin', 'Administrator', '12123123123', 'administrator@gmail.com', '20 November, 2023', '21 November, 2023', 1, 1, 'Junior Suite Room', '', 'Tuesday, 21-11-2023', '9', '27.000.000', '6', '', 'Success', 'Wednesday, 22-11-2023'),
(35, 'Admin', 'Administrator', '13212313123', 'administrator@gmail.com', '20 November, 2023', '21 November, 2023', 1, 1, 'Superior Room', '', 'Tuesday, 21-11-2023', '7', '56.000.000', '4', '', 'Success', 'Wednesday, 22-11-2023'),
(36, 'Admin', 'Administrator', '081233267151', 'administrator@gmail.com', '20 November, 2023', '21 November, 2023', 4, 4, 'Standard Room', '', 'Tuesday, 21-11-2023', '13', '52.000.000', '2', '', 'Success', 'Wednesday, 22-11-2023'),
(40, 'Skylarge', 'Fawwaz Dzaky', '081233267151', 'mfawwaz1807@gmail.com', '20 November, 2023', '21 November, 2023', 4, 3, 'Standard Room', '', 'Wednesday, 22-11-2023', '1', '4.000.000', '7', 'Wallpaper5.jpg', 'Success', 'Wednesday, 22-11-2023'),
(41, 'Marcelcool', 'Marcel Ramadhan', '081233267151', 'marcel@gmail.com', '20 November, 2023', '21 November, 2023', 3, 4, 'Presidential Suite Room', 'Saya akan datang lebih awal di Jam 7 pagi\r\n', 'Wednesday, 22-11-2023', '6', '144.000.000', '7', 'Wallpaper6.jpg', 'Success', 'Wednesday, 22-11-2023'),
(42, 'Marcelcool', 'Marcel Ramadhan', '081233267151', 'marcel@gmail.com', '20 November, 2023', '21 November, 2023', 2, 2, 'Twin Room', 'Tolong jemput ketika saya sampai karena saya membawa banyak barang, Terimakasih.', 'Wednesday, 22-11-2023', '8', '24.000.000', '8', 'Wallpaper7.jpg', 'Success', 'Wednesday, 22-11-2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE `reservation` (
  `id_reser` int NOT NULL,
  `id` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `check_in` varchar(50) NOT NULL,
  `check_out` varchar(50) NOT NULL,
  `adults` int NOT NULL,
  `children` int NOT NULL,
  `type_room` varchar(50) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date_reserved` varchar(50) NOT NULL,
  `total_hari` varchar(10) NOT NULL,
  `price` varchar(50) NOT NULL,
  `room` varchar(10) NOT NULL,
  `payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` enum('Submission','Booking','Success','Check In','Check Out') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Submission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `reservation`
--

INSERT INTO `reservation` (`id_reser`, `id`, `username`, `name`, `phone`, `email`, `check_in`, `check_out`, `adults`, `children`, `type_room`, `message`, `date_reserved`, `total_hari`, `price`, `room`, `payment`, `status`) VALUES
(1, '28', 'Iqbal', 'Iqbal Ramadhan ', '085730593481', 'iqbal@gmail.com', '20 November, 2023', '22 November, 2023', 2, 3, 'Junior Suite Room', '', 'Monday, 20-11-2023', '1', '3.000.000', '4', '', 'Check Out'),
(2, '29', 'Chika', 'Chika Sari', '085730593481', 'chika@gmail.com', '21 November, 2023', '22 November, 2023', 2, 3, 'Presidential Suite Room', '', 'Monday, 20-11-2023', '1', '24.000.000', '3', '', 'Check Out'),
(3, '30', 'Fido', 'Fido Daus', '085730593481', 'fido@gmail.com', '20 November, 2023', '20 November, 2023', 4, 4, 'Presidential Suite Room', '', 'Tuesday, 21-11-2023', '7', '168.000.000', '2', '', 'Booking'),
(25, '25_e88ad051-846b-46e9-9850-5c5a6c36ba87', 'Skylarge', 'Fawwaz Dzaky', '081233267151', 'mfawwaz1807@gmail.com', '22 November, 2023', '23 November, 2023', 1, 1, 'Presidential Suite Room', '', 'Wednesday, 22-11-2023', '2', '48.000.000', '4', 'Wallpaper3.jpg', 'Check In');

-- --------------------------------------------------------

--
-- Struktur dari tabel `room`
--

CREATE TABLE `room` (
  `id` int NOT NULL,
  `room` varchar(10) NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `room`
--

INSERT INTO `room` (`id`, `room`, `category`, `status`) VALUES
(1, '1', 'Superior Room', 'Unavailable'),
(3, '2', 'Superior Room', 'Available'),
(4, '3', 'Double Set', 'Unavailable'),
(5, '4', 'Presidential Suite Room', 'Unavailable'),
(7, '5', 'Presidential Suite Room', 'Available'),
(8, '6', 'Superior Room', 'Available'),
(10, '8', 'Twin Room', 'Available'),
(11, '7', 'Presidential Suite Room', 'Available'),
(12, '10', 'Junior Suite Room', 'Unavailable');

-- --------------------------------------------------------

--
-- Struktur dari tabel `site`
--

CREATE TABLE `site` (
  `id` int NOT NULL,
  `section_heading` text NOT NULL,
  `section_text` text NOT NULL,
  `leadership_heading` text NOT NULL,
  `leadership_name_1` text NOT NULL,
  `leadership_title_1` text NOT NULL,
  `leadership_text_1` text NOT NULL,
  `leadership_name_2` text NOT NULL,
  `leadership_title_2` text NOT NULL,
  `leadership_text_2` text NOT NULL,
  `leadership_name_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `leadership_title_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `leadership_text_3` text NOT NULL,
  `slider_heading` text NOT NULL,
  `slider_text` text NOT NULL,
  `slider_img1` text NOT NULL,
  `slider_img2` text NOT NULL,
  `slider_img3` text NOT NULL,
  `slider_img4` text NOT NULL,
  `slider_img5` text NOT NULL,
  `slider_img6` text NOT NULL,
  `slider_img7` text NOT NULL,
  `history_heading` text NOT NULL,
  `heading_1` text NOT NULL,
  `heading_tahun_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `heading_text_1` text NOT NULL,
  `heading_2` text NOT NULL,
  `heading_tahun_2` text NOT NULL,
  `heading_text_2` text NOT NULL,
  `heading_3` text NOT NULL,
  `heading_tahun_3` text NOT NULL,
  `heading_text_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `site`
--

INSERT INTO `site` (`id`, `section_heading`, `section_text`, `leadership_heading`, `leadership_name_1`, `leadership_title_1`, `leadership_text_1`, `leadership_name_2`, `leadership_title_2`, `leadership_text_2`, `leadership_name_3`, `leadership_title_3`, `leadership_text_3`, `slider_heading`, `slider_text`, `slider_img1`, `slider_img2`, `slider_img3`, `slider_img4`, `slider_img5`, `slider_img6`, `slider_img7`, `history_heading`, `heading_1`, `heading_tahun_1`, `heading_text_1`, `heading_2`, `heading_tahun_2`, `heading_text_2`, `heading_3`, `heading_tahun_3`, `heading_text_3`) VALUES
(1, 'Welcome!', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'Leadership', 'Will Peters', 'President', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.', 'Jane Williams', 'Business Manager', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.', 'Jeffrey Neddery', 'Marketing Director', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.', 'Photos ', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'slider-1.jpg', 'slider-2.jpg', 'slider-3.jpg', 'slider-4.jpg', 'slider-5.jpg', 'slider-6.jpg', 'slider-7.jpg', 'History', 'More Branches Worldwide', '2019', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'Company Full Blast', '2011', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'The Birth of the Company', '2008', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `role_id` int NOT NULL,
  `is_active` int NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `password`, `email`, `role_id`, `is_active`, `date_created`) VALUES
(7, 'Administrator', 'Admin', '$2y$10$maBVe87fZ8.KaBMSxLs2huCRGjSZAGNn0CuRAy6SzjpkgJHgAJHQq', 'administrator@gmail.com', 1, 1, 'Wednesday, 15-11-2023'),
(24, 'Fawwaz Dzaky', 'Skylark', '$2y$10$H9laTML4x3GGiE94OB6TgeUrYIVYF0jI9eJJMZ6JR3TE04nDxGGHC', 'superadmin@gmail.com', 2, 1, 'Saturday, 18-11-2023'),
(25, 'Fawwaz Dzaky', 'Skylarge', '$2y$10$G0MxB6pnIxZdRFjGrs0KR.xR.jlu3Vgq7AGE6x3ohjXZTRxaptlFC', 'mfawwaz1807@gmail.com', 2, 1, 'Sunday, 19-11-2023'),
(26, 'Fauzi Alfarizi', 'Noirr', '$2y$10$jWFpVfH0k2tAgQktTsbJzO9HCMYdXgkE55y8fWJqRSCfqLyDRKdMC', 'fauzi@gmail.com', 2, 1, 'Monday, 20-11-2023'),
(27, 'Athallah Yassar', 'IniFido', '$2y$10$vZqHwH0xE1uu9RKXUtyIh.CAPvTQ5pAZb3AJBrqjAFjq3h8nCBGra', 'fido@gmail.com', 2, 1, 'Monday, 20-11-2023'),
(28, 'Iqbal Ramadhan ', 'Iqbal', '$2y$10$YLW0giYxbR.9fXk.RFGOLOv1uVAJA32ExPQuyO8DOVmOKwEgCbdwq', 'iqbal@gmail.com', 2, 1, 'Monday, 20-11-2023'),
(29, 'Chika Sari', 'Chika', '$2y$10$VUsdSPBeIFL4eVJ0NVCn/eniooTYZ8pTUi/kRWX9x.HuhG3G0MwPO', 'chika@gmail.com', 2, 1, 'Monday, 20-11-2023'),
(30, 'Fido Daus', 'Fido', '$2y$10$JXaHWDcFP0NwwBtcvyF7WeTZZYW0jL5D0QhRh4xT3Md9y8ccXhk3.', 'fido@gmail.com', 2, 1, 'Tuesday, 21-11-2023'),
(31, 'Fauzi ', 'Fauzi', '$2y$10$Y8qOl3YhX8dn6kKV2QItFOGRNq46qbriBJs9bfxymC/sTuyuDF2OG', 'fauzi@gmail.com', 2, 1, 'Tuesday, 21-11-2023'),
(32, 'Fauzi Alfarizi', 'Noirrr', '$2y$10$iEhzUAumakbGd8NyT7WbjuaoiQ.//DOUB2Bjydk5sKtZWJxrFSBqO', 'fauzi@yahoo.com', 2, 1, 'Tuesday, 21-11-2023'),
(33, 'Dimas', 'Dimas', '$2y$10$qq3sxlEXgP7Gmxw5LOnAT.kesRwpyg9Slo9aBwOjiqeGShAwhPA0S', 'dimas@gmail.com', 2, 1, 'Tuesday, 21-11-2023'),
(34, 'Fajri ', 'Fajri', '$2y$10$/1yohywK44BMsTw08ZWyhuWI/kGHHTmW3WtxxFPNtQrcFkV7rYjTK', 'fajri@gmail.com', 2, 1, 'Tuesday, 21-11-2023'),
(35, 'Marcel Ramadhan', 'Marcelcool', '$2y$10$j5fn/Gw3T4y0.zj81cBdxuM1FVdKz4Ocw/64wLdIOz5VC5tyjBGbq', 'marcel@gmail.com', 2, 1, 'Wednesday, 22-11-2023'),
(36, 'Fawwaz Dzaky Arya', 'Softtt', '$2y$10$osmFU3JIz0zGBVx0N8jZa.wLjTrdbST.gqBni9HAu5LLUf6h6E04m', 'mfawwaz1807@gmail.com', 2, 1, 'Monday, 18-12-2023');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category_room`
--
ALTER TABLE `category_room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reser`);

--
-- Indeks untuk tabel `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category_room`
--
ALTER TABLE `category_room`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `room`
--
ALTER TABLE `room`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `site`
--
ALTER TABLE `site`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
