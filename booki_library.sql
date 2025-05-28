-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2025 at 04:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `nationality` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
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
-- Table structure for table `books`
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
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `cover`, `availability`, `genre_id`, `author_id`) VALUES
(1, 'Romeo and Juliet', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//RomeoAndJuliet.jpg', 'available', 1, 36),
(2, 'The Lost World', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheLostWorld.jpg', 'available', 1, 5),
(3, 'Adventures of Pinocchio', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//AdventuresOfPinocchio.jpg', 'available', 1, 6),
(4, 'The Return of Sherlock Holmes', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheReturnOfSherlockHolmes.jpg', 'available', 1, 5),
(5, 'Kita Pergi Hari Ini', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//KitaPergiHariIni.jpg', 'available', 1, 37),
(6, 'Laut Bercerita', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//LautBercerita.jpg', 'available', 1, 19),
(7, 'Bumi Manusia', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//BumiManusia.jpg', 'available', 1, 29),
(8, 'The Perfect World of Miwako Sumida', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//ThePerfectWorldOfMS.jpg', 'available', 1, 8),
(9, 'The Midnight Library', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheMidnightLibrary.jpg', 'available', 1, 20),
(10, 'Murder on the Orient Express', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//MurderOnTheOrientExpress.jpg', 'available', 1, 1),
(11, 'Tiga dalam Kayu', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TigaDalamKayu.jpg', 'available', 1, 37),
(12, 'Brianna dan Bottomwise', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//BriannaDanBottomwise.jpg', 'available', 1, 4),
(13, 'Aroma Karsa', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//AromaKarsa.jpg', 'available', 1, 11),
(14, 'Negeri 5 Menara', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//Negeri5Menara.jpg', 'available', 1, 2),
(15, 'Gadis Kretek', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//GadisKretek.jpg', 'available', 1, 30),
(16, 'Pulang', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//Pulang.jpg', 'available', 1, 19),
(17, 'The Alchemist', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheAlchemist.jpg', 'available', 1, 28),
(18, 'Sang Pemimpi', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//SangPemimpi.jpg', 'available', 1, 4),
(19, 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//SupernovaKsatriaPuteriBintangJatuh.jpg', 'available', 1, 11),
(20, 'Supernova: Petir', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//SupenovaPetir.jpg', 'available', 1, 11),
(21, 'Supernova: Akar', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//SupernovaAkar.jpg', 'available', 1, 11),
(22, '5 cm', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//5cm.jpg', 'available', 1, 12),
(23, 'Omniscient Reader\'s Viewpoint', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//OmniscientReadersViewpoint.jpg', 'available', 1, 32),
(24, 'Bungou Stray Dogs: Beast', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//BungouStrayDogsBeast.jpg', 'available', 1, 17),
(25, 'Polaris Musim Dingin', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//BungouStrayDogsBeast.jpg', 'available', 1, 38),
(26, 'Filosofi Teras', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//FilosofiTeras.jpg', 'available', 3, 13),
(27, 'Mindset', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//Mindset.png', 'available', 3, 7),
(28, 'Atomic Habits', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//AtomicHabits.jpg', 'available', 3, 15),
(29, 'The Psychology of Money', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//ThePsychologyOfMoney.jpg', 'available', 3, 24),
(30, 'Love for Imperfect Things', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//LoveForImperfectThings.jpg', 'available', 3, 39),
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
(46, 'Computer Architecture: A Quantitive Approach', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//ComputerArchitecture.jpg', 'available', 2, 10),
(47, 'The Death of Expertise', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//TheDeathExpertise.jpg', 'available', 2, 35),
(48, 'What Technology Wants', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//WhatTechnologyWants.jpg', 'available', 2, 18),
(49, 'Future Shock', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//FutureShock.jpg', 'available', 2, 42),
(50, 'Technopoly', 'https://velbtboswdhgpqjriinc.supabase.co/storage/v1/object/public/booki.library//Technopoly.jpg', 'available', 2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `borrower_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `id_number_borrower` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`borrower_id`, `name`, `phone`, `id_number_borrower`) VALUES
(1, 'Alya Putri', '081234567890', '23/899179/TK/93808'),
(2, 'Rafi Hidayat', '082233445566', '22/397721/EK/66288');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`) VALUES
(1, 'Fiction'),
(2, 'Technology'),
(3, 'Self Improvement');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
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
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `borrower_id`, `loan_date`, `due_date`, `return_status`, `note`) VALUES
(1, 1, '2025-05-01', '2025-05-08', 'returned', NULL),
(2, 2, '2025-05-05', '2025-05-15', 'not returned', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_book`
--

CREATE TABLE `loan_book` (
  `loan_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `return_date` date DEFAULT NULL,
  `returned` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_book`
--

INSERT INTO `loan_book` (`loan_id`, `book_id`, `return_date`, `returned`) VALUES
(1, 6, '2025-05-07', 1),
(1, 17, '2025-05-07', 1),
(2, 39, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_books_genre` (`genre_id`),
  ADD KEY `fk_books_author` (`author_id`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`borrower_id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `fk_loan_borrower` (`borrower_id`);

--
-- Indexes for table `loan_book`
--
ALTER TABLE `loan_book`
  ADD PRIMARY KEY (`loan_id`,`book_id`),
  ADD KEY `fk_loanbook_book` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `borrower`
--
ALTER TABLE `borrower`
  MODIFY `borrower_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_books_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `fk_loan_borrower` FOREIGN KEY (`borrower_id`) REFERENCES `borrower` (`borrower_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loan_book`
--
ALTER TABLE `loan_book`
  ADD CONSTRAINT `fk_loanbook_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_loanbook_loan` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`loan_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
