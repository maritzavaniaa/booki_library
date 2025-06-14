-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4307
-- Waktu pembuatan: 14 Jun 2025 pada 09.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booki_library`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `author`
--

CREATE TABLE `author` (
  `author_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `nationality` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `author`
--

INSERT INTO `author` (`author_id`, `name`, `nationality`) VALUES
(1, 'Agatha Christie', 'Inggris'),
(2, 'Ahmad Fuadi', 'Indonesia'),
(3, 'Alfialghazi', 'Indonesia'),
(4, 'Andrea Hinata', 'Indonesia'),
(5, 'Arthur Conan Doyle', 'Skotlandia'),
(6, 'Carlo Collodi', 'Italia'),
(7, 'Carol S. Dweck', 'Amerika Serikat'),
(8, 'Clarissa Goenawan', 'Singapura'),
(9, 'Dale Carnegie', 'Amerika Serikat'),
(10, 'David A. Patterson', 'Amerika Serikat'),
(11, 'Dee Lestari', 'Indonesia'),
(12, 'Donny Dhirgantoro', 'Indonesia'),
(13, 'Henry Manampiring', 'Indonesia'),
(14, 'Gilbert Strang', 'Amerika Serikat'),
(15, 'James Clear', 'Amerika Serikat'),
(16, 'Jeff Hoffer', 'Amerika Serikat'),
(17, 'Kafka Asagiri', 'Jepang'),
(18, 'Kevin Kelly', 'Amerika Serikat'),
(19, 'Leila S. Chudori', 'Indonesia'),
(20, 'Matt Haig', 'Inggris'),
(21, 'Marie Kondo', 'Jepang'),
(22, 'Mark Manson', 'Amerika Serikat'),
(23, 'Michael Negnevitsky', 'Amerika Serikat'),
(24, 'Morgan Housel', 'Amerika Serikat'),
(25, 'Neil Postman', 'Amerika Serikat'),
(26, 'Nicholas G. Carr', 'Amerika Serikat'),
(27, 'Oh Su Hyang', 'Korea Selatan'),
(28, 'Paulo Coelho', 'Brasil'),
(29, 'Pramoedya Ananta Toer', 'Indonesia'),
(30, 'Ratih Kumala', 'Indonesia'),
(31, 'Regis Machdy', 'Indonesia'),
(32, 'Sinshong', 'Indonesia'),
(33, 'Syahid Muhammad', 'Indonesia'),
(34, 'Thomas L. Griffiths', 'Amerika Serikat'),
(35, 'Thomas M. Nichols', 'Amerika Serikat'),
(36, 'William Shakespeare', 'Inggris'),
(37, 'Ziggy Zezsyazeoviennazabrizkie', 'Indonesia'),
(38, 'Alicia Lidwina', 'Indonesia'),
(39, 'Haemin Sunim', 'South Korea'),
(40, 'Nadhira Afifa', 'Indonesia'),
(41, 'Ardhi Mohamad', 'Indonesia'),
(42, 'Alvin Toffler', 'American');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` text DEFAULT NULL,
  `availability` enum('available','unavailable') NOT NULL DEFAULT 'unavailable',
  `genre_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`book_id`, `title`, `cover`, `availability`, `genre_id`, `author_id`) VALUES
(1, 'Romeo and Juliet', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//RomeoAndJuliet.jpg', 'unavailable', 1, 36),
(2, 'The Lost World', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheLostWorld.jpg', 'available', 1, 5),
(3, 'Adventures of Pinocchio', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//AdventuresOfPinocchio.jpg', 'available', 1, 6),
(4, 'The Return of Sherlock Holmes', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheReturnOfSherlockHolmes.jpg', 'unavailable', 1, 5),
(5, 'Kita Pergi Hari Ini', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//KitaPergiHariIni.jpg', 'available', 1, 37),
(6, 'Laut Bercerita', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//LautBercerita.jpg', 'available', 1, 19),
(7, 'Bumi Manusia', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//BumiManusia.jpg', 'unavailable', 1, 29),
(8, 'The Perfect World of Miwako Sumida', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//ThePerfectWorldOfMS.jpg', 'available', 1, 8),
(9, 'The Midnight Library', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheMidnightLibrary.jpg', 'available', 1, 20),
(10, 'Murder on the Orient Express', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//MurderOnTheOrientExpress.jpg', 'available', 1, 1),
(11, 'Tiga dalam Kayu', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TigaDalamKayu.jpg', 'available', 1, 37),
(12, 'Brianna dan Bottomwise', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//BriannaDanBottomwise.jpg', 'available', 1, 4),
(13, 'Aroma Karsa', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//AromaKarsa.jpg', 'unavailable', 1, 11),
(14, 'Negeri 5 Menara', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//Negeri5Menara.jpg', 'available', 1, 2),
(15, 'Gadis Kretek', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//GadisKretek.jpg', 'available', 1, 30),
(16, 'Pulang', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//Pulang.jpg', 'available', 1, 19),
(17, 'The Alchemist', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheAlchemist.jpg', 'available', 1, 28),
(18, 'Sang Pemimpi', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//SangPemimpi.jpg', 'available', 1, 4),
(19, 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//SupernovaKsatriaPuteriBintangJatuh.jpg', 'available', 1, 11),
(20, 'Supernova: Petir', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//SupenovaPetir.jpg', 'available', 1, 11),
(21, 'Supernova: Akar', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//SupernovaAkar.jpg', 'available', 1, 11),
(22, '5 cm', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//5cm.jpg', 'available', 1, 12),
(23, 'Omniscient Reader\'s Viewpoint', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//OmniscientReadersViewpoint.jpg', 'unavailable', 1, 32),
(24, 'Bungou Stray Dogs: Beast', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//BungouStrayDogsBeast.jpg', 'unavailable', 1, 17),
(25, 'Polaris Musim Dingin', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//BungouStrayDogsBeast.jpg', 'available', 1, 38),
(26, 'Filosofi Teras', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//FilosofiTeras.jpg', 'available', 3, 13),
(27, 'Mindset', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//Mindset.png', 'available', 3, 7),
(28, 'Atomic Habits', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//AtomicHabits.jpg', 'unavailable', 3, 15),
(29, 'The Psychology of Money', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//ThePsychologyOfMoney.jpg', 'available', 3, 24),
(30, 'Love for Imperfect Things', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//LoveForImperfectThings.jpg', 'unavailable', 3, 39),
(31, 'Maaf Tuhan, Aku Hampir Menyerah', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//MaafTuhanAkuHampirMenyerah.jpg', 'available', 3, 3),
(32, 'The Subtle Art of Not Giving A F*ck', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheSubtleArtNotGivingAFk.png', 'available', 3, 22),
(33, 'How to Win Friends and Influence People', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//HowWinFriendsInfluencePeople.png', 'available', 3, 9),
(34, 'The Secrets Habits to Master Your Art of Speaking', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheSecretHabitsMasterYourArtSpeaking.jpg', 'available', 3, 27),
(35, 'Almost Adulting: Self-Help Approach to Deal With Quarter Life Crisis', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//AlmostAdulting.jpg', 'available', 3, 40),
(36, 'What\'s So Wrong About Your Life', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//WhatSoWrongAboutYourLife.jpg', 'available', 3, 41),
(37, 'The Life-Changing Magic of Tidying Up', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheLifeChangingMagicTidyingUp.jpg', 'available', 3, 21),
(38, 'Loving the Wounded Soul', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//LovingWoundedSoul.jpg', 'available', 3, 31),
(39, 'Duduk Dulu Jangan Lupa Jadi Manusia', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//DudukDuluJanganLupaJadiManusia.jpg', 'available', 3, 33),
(40, 'The Things You Can See Only When You Slow Down', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheThingsYouCanSeeOnlyWhenYouSlowDown.jpg', 'available', 3, 39),
(41, 'Modern Database Management (12th Ed)', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//ModernDatabaseMgntjpg.jpg', 'available', 2, 16),
(42, 'Artificial Intelligence: A Guide to Intelligent System (2nd Ed)', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//ArtificialIntelligence.jpg', 'available', 2, 23),
(43, 'Introduction to Linear Algebra (5th Ed)', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//LinearAlgebra.jpg', 'available', 2, 14),
(44, 'The Shallows', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheShallows.png', 'available', 2, 26),
(45, 'Algorithm to Live By: The Computer Science of Human Decision', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//AlgorithmLiveBy.jpg', 'available', 2, 34),
(46, 'Computer Architecture: A Quantitive Approach', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//ComputerArchitecture.jpg', 'unavailable', 2, 10),
(47, 'The Death of Expertise', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheDeathExpertise.jpg', 'available', 2, 35),
(48, 'What Technology Wants', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//WhatTechnologyWants.jpg', 'available', 2, 18),
(49, 'Future Shock', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//FutureShock.jpg', 'available', 2, 42),
(50, 'Technopoly', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//Technopoly.jpg', 'available', 2, 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrower`
--

CREATE TABLE `borrower` (
  `borrower_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `id_number_borrower` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `borrower`
--

INSERT INTO `borrower` (`borrower_id`, `name`, `phone`, `id_number_borrower`) VALUES
(1, 'Alya Putri', '081234567890', '23/899179/TK/93808'),
(2, 'Rafi Hidayat', '082233445566', '22/397721/EK/66288'),
(3, 'Atalie Savista Arunataaaaa', '081226882099', '23/522436/TK/57668'),
(4, 'Takumi Usui', '082137350781', '351517923413123'),
(5, 'Makino Tsukushi', '08124385944', '5333359382923'),
(6, 'Rui Kanazawa', '081443789272', '43368798787007'),
(7, 'Sherlock Holmes', '087852404632', '9999991191'),
(8, 'Oppenheimer', '062993883933', '4222489993832'),
(9, 'Vista Arunata', '081226882744', '93721937361912'),
(10, 'Petra Atalie Savista', '0813323134423', '4332312314'),
(11, 'Atalie Savista Arunata', '0812321331', '02128203821');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`genre_id`, `name`) VALUES
(1, 'Fiction'),
(2, 'Technology'),
(3, 'Self Improvement');

-- --------------------------------------------------------

--
-- Struktur dari tabel `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(10) UNSIGNED NOT NULL,
  `borrower_id` int(10) UNSIGNED NOT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_status` enum('not returned','returned') DEFAULT 'not returned',
  `note` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `loan`
--

INSERT INTO `loan` (`loan_id`, `borrower_id`, `loan_date`, `due_date`, `return_status`, `note`) VALUES
(1, 1, '2025-05-01', '2025-05-08', 'returned', NULL),
(2, 2, '2025-05-05', '2025-05-15', 'not returned', NULL),
(3, 3, '2025-06-13', '2025-06-20', 'not returned', 'Minjem dulu bos, bayar nanti'),
(4, 4, '2025-06-20', '2025-06-27', 'not returned', 'Pinjam dulu, nanti kukembalikan'),
(5, 5, '2025-06-07', '2025-06-14', '', NULL),
(6, 6, '2025-06-20', '2025-06-27', 'returned', NULL),
(7, 7, '2025-06-22', '2025-06-29', 'not returned', 'Will return it soon!'),
(8, 8, '2025-06-19', '2025-06-26', 'not returned', NULL),
(9, 8, '2025-06-18', '2025-06-28', 'returned', NULL),
(10, 8, '2025-06-19', '2025-06-26', 'not returned', NULL),
(11, 9, '2025-06-29', '2025-07-09', 'returned', 'Meminjam 3 buku dan akan dikembalikan di Perpus FT'),
(12, 9, '2025-06-30', '2025-07-07', 'not returned', 'Meminjam 3 buku dan akan dikembalikan di Perpus FT'),
(14, 10, '2025-06-16', '2025-06-28', 'not returned', 'Meminjam buku dahulu'),
(15, 10, '2025-06-15', '2025-06-29', 'returned', 'Meminjam buku dahulu'),
(16, 11, '2025-06-17', '2025-07-03', 'returned', 'Meminjam 2 buku'),
(17, 11, '2025-06-18', '2025-06-30', 'not returned', 'Meminjam 2 buku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `loan_book`
--

CREATE TABLE `loan_book` (
  `loan_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `return_date` date DEFAULT NULL,
  `returned` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `loan_book`
--

INSERT INTO `loan_book` (`loan_id`, `book_id`, `return_date`, `returned`) VALUES
(1, 6, '2025-05-07', 1),
(1, 17, '2025-05-07', 1),
(2, 39, NULL, 0),
(3, 4, '2025-06-04', 1),
(4, 24, '2025-06-05', 1),
(5, 7, '2025-06-14', 0),
(6, 28, '2025-06-05', 1),
(7, 4, '2025-06-29', 0),
(8, 28, '2025-06-26', 0),
(9, 33, '2025-06-06', 1),
(10, 46, '2025-06-26', 0),
(11, 9, '2025-06-14', 1),
(12, 24, '2025-07-07', 0),
(14, 13, '2025-06-28', 0),
(15, 26, '2025-06-14', 1),
(16, 27, '2025-06-14', 1),
(17, 23, '2025-06-30', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_books_genre` (`genre_id`),
  ADD KEY `fk_books_author` (`author_id`);

--
-- Indeks untuk tabel `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`borrower_id`),
  ADD KEY `phone` (`phone`) USING BTREE;

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indeks untuk tabel `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `fk_loan_borrower` (`borrower_id`);

--
-- Indeks untuk tabel `loan_book`
--
ALTER TABLE `loan_book`
  ADD PRIMARY KEY (`loan_id`,`book_id`),
  ADD KEY `fk_loanbook_book` (`book_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `borrower`
--
ALTER TABLE `borrower`
  MODIFY `borrower_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_books_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `fk_loan_borrower` FOREIGN KEY (`borrower_id`) REFERENCES `borrower` (`borrower_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `loan_book`
--
ALTER TABLE `loan_book`
  ADD CONSTRAINT `fk_loanbook_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_loanbook_loan` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`loan_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
