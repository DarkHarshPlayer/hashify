-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 12:41 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hashify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, '&divide;', 2, 1, '/assests/Images/Album Art/Divide.jpg'),
(2, '&times;', 2, 1, '/assests/Images/Album Art/X.png'),
(3, 'Made In The Am (Deluxe Edition)', 1, 1, '/assests/Images/Album Art/MadeInTheAM.jpg'),
(4, 'Midnight Memories', 1, 1, '/assests/Images/Album Art/MidnightMemories.png'),
(5, 'Up All Night', 1, 1, '/assests/Images/Album Art/UpAllNight.jpg'),
(6, '5 Seconds Of Summer', 7, 1, '/assests/Images/Album Art/5SOS.png'),
(7, '13 Reasons Why', 10, 8, '/assests/Images/Album Art/13ReasonsWhy.jpg'),
(8, 'V', 9, 1, '/assests/Images/Album Art/V.jpg'),
(9, 'Red Pills Blue', 9, 1, '/assests/Images/Album Art/RedPillsBlue.jpg'),
(10, 'Illuminate', 4, 1, '/assests/Images/Album Art/Illuminate.png'),
(11, 'Memories ...Do Not Open', 11, 1, '/assests/Images/Album Art/MemoriesDoNotOpen.jpg'),
(12, 'Four', 1, 1, '/assests/Images/Album Art/Four.jpg'),
(13, 'Take Me Home', 1, 1, '/assests/Images/Album Art/TakeMeHome.jpg'),
(14, 'Purpose', 3, 1, '/assests/Images/Album Art/Purpose.jpg'),
(15, 'My World', 3, 1, '/assests/Images/Album Art/MyWorld.jpg'),
(16, 'Believe', 3, 1, '/assests/Images/Album Art/believe.jpg'),
(17, 'Under The Mistletoe', 3, 1, '/assests/Images/Album Art/under the mistletoe.jpg'),
(18, 'Nine Track Mind', 6, 1, '/assests/Images/Album Art/nine track mind.jpg'),
(19, 'Voicenotes', 6, 1, '/assests/Images/Album Art/voicenotes.jpg'),
(20, 'Encore', 15, 1, '/assests/Images/Album Art/encore.jpg'),
(21, 'Handwritten', 4, 1, '/assests/Images/Album Art/handwritten.jpg'),
(22, 'Collage', 11, 1, '/assests/Images/Album Art/Collage.jpg'),
(23, 'Beautiful (Single)', 8, 1, '/assests/Images/Album Art/Beautiful.jpg'),
(24, 'Expectation', 14, 1, '/assests/Images/Album Art/Expectation.jpg'),
(25, 'Sweetener', 13, 1, '/assests/Images/Album Art/sweetener.png'),
(26, 'Youngblood', 7, 1, '/assests/Images/Album Art/Youngblood.jpg'),
(27, 'See You Again (feat. Charlie Puth)', 16, 8, '/assests/Images/Album Art/See you again.jpg'),
(28, 'Dusk Till Dawn ', 5, 1, '/assests/Images/Album Art/Dusk Till Dawn.jpg'),
(29, 'Let Me', 5, 1, '/assests/Images/Album Art/Let Me.jpg'),
(30, 'Mind Of Mine', 5, 1, '/assests/Images/Album Art/Mind Of Mine.jpg'),
(31, 'Despacito', 17, 1, '/assests/Images/Album Art/Despacito.jpg'),
(32, 'Save Yourself', 11, 1, '/assests/Images/Album Art/Save Yourself.jpg'),
(33, 'Shawn Mendes', 4, 1, '/assests/Images/Album Art/Shawn Mendes.jpg'),
(34, 'Fifty Shades Of Grey', 12, 8, '/assests/Images/Album Art/love me like you do.jpg'),
(35, '&plus;', 2, 1, '/assests/Images/Album Art/Plus.jpg'),
(36, 'Revival', 10, 1, '/assests/Images/Album Art/revival SG.jpg'),
(37, 'Forever Young (Cover)', 1, 1, '/assests/Images/Album Art/Forever Young.jpg'),
(38, 'Alone', 18, 1, '/assests/Images/Album Art/Alone.jpg'),
(39, 'Faded', 18, 4, '/assests/Images/Album Art/Faded.jpg'),
(40, 'Legends Never Die', 18, 8, '/assests/Images/Album Art/Legends Never Die AW.jpg'),
(41, 'Darkside', 18, 1, '/assests/Images/Album Art/Darkside.jpg'),
(42, 'Camila', 8, 1, '/assests/Images/Album Art/Camila.jpg'),
(43, 'Sign Of The Times', 19, 1, '/assests/Images/Album Art/Sign Of The Times.jpg'),
(44, 'Strip That Down', 20, 1, '/assests/Images/Album Art/Strip That Down.jpg'),
(45, 'No Brainer', 21, 5, '/assests/Images/Album Art/No Brainer.jpg'),
(46, 'Millennium', 22, 1, '/assests/Images/Album Art/Millennium.jpg'),
(47, 'Exile', 23, 1, '/assests/Images/Album Art/Exile.jpeg'),
(48, 'Brother', 24, 1, '/assests/Images/Album Art/Brother.jpeg'),
(49, 'Perfect - EP', 1, 1, '/assests/Images/Album Art/Perfect EP.jpeg'),
(50, 'One Thing - EP', 1, 1, '/assests/Images/Album Art/One Thing.jpeg'),
(51, 'Grateful', 21, 1, '/assests/Images/Album Art/Grateful.jpeg'),
(52, 'Fearless', 25, 1, '/assests/Images/Album Art/Fearless.jpeg'),
(53, 'Evolve', 26, 1, '/assests/Images/Album Art/Evolve.jpeg'),
(54, 'Thank U, Next', 13, 1, '/assests/Images/Album Art/Thank U Next.jpeg'),
(55, '1989', 25, 1, '/assests/Images/Album Art/1989.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `artistImagePath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`, `artistImagePath`) VALUES
(1, 'One Direction', 'assests/Images/artist/One Direction.jpg'),
(2, 'Ed Sheeran', 'assests/Images/artist/Ed Sheeran.jpg'),
(3, 'Justin Bieber', 'assests/Images/artist/Justin Bieber.jpg'),
(4, 'Shawn Mendes', 'assests/Images/artist/Shawn Mendes.jpg'),
(5, 'Zayn', 'assests/Images/artist/ZAYN.jpg'),
(6, 'Charlie Puth', 'assests/Images/artist/Charlie Puth.jpg'),
(7, '5 Seconds Of Summer', 'assests/Images/artist/5SOS.jpg'),
(8, 'Camila Cabello', 'assests/Images/artist/Camila Cabello.jpg'),
(9, 'Maroon 5', 'assests/Images/artist/Maroon 5.jpg'),
(10, 'Selena Gomez', 'assests/Images/artist/Selena Gomez.jpg'),
(11, 'The Chainsmokers', 'assests/Images/artist/The Chainsmokers.jpg'),
(12, 'Ellie Goulding', 'assests/Images/artist/Ellie Goulding.jpg'),
(13, 'Ariana Grande', 'assests/Images/artist/Ariana Grande.jpg'),
(14, 'Bebe Rexha', 'assests/Images/artist/Bebe Rexha.jpg'),
(15, 'Dj Snake', 'assests/Images/artist/DJ Snake.jpg'),
(16, 'Wiz Khalifa', '/hashify/assests/Images/artist/Wiz Khalifa.jpg'),
(17, 'Luis Fonsi', '/hashify/assests/Images/artist/Luis Fonsi.jpg'),
(18, 'Alan Walker', '/hashify/assests/Images/artist/Alan Walker.jpg'),
(19, 'Harry Styles', '/hashify/assests/Images/artist/Harry Styles.jpg'),
(20, 'Liam Payne', '/hashify/assests/Images/artist/Liam Payne.jpg'),
(21, 'Dj Khaled', '/hashify/assests/Images/artist/Dj Khaled.jpg'),
(22, 'Backstreet Boys', '/hashify/assests/Images/artist/Backstreet Boys.jpeg'),
(23, 'Hurts', '/hashify/assests/Images/artist/Hurts.jpeg'),
(24, 'Kodaline', '/hashify/assests/Images/artist/Kodaline.jpeg'),
(25, 'Taylor Swift', '/hashify/assests/Images/artist/Taylor Swift.jpeg'),
(26, 'Imagine Dragons', '/hashify/assests/Images/artist/Imagine Dragon.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'POP'),
(2, 'Altern Rock'),
(3, 'Dance'),
(4, 'Electronic'),
(5, 'Hip-Hop'),
(6, 'POP Latino'),
(7, 'Rock'),
(8, 'Soundtrack');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `owner`, `dateCreated`) VALUES
(6, 'harsh', 'harsh123', '2018-09-05 00:00:00'),
(7, 'rock', 'harsh123', '2018-09-05 00:00:00'),
(8, 'Fav', 'harsh1234', '2018-09-05 00:00:00'),
(11, 'harsh', 'harsh', '2018-09-15 00:00:00'),
(14, 'Ed Sheeran\'s Hit', 'admin', '2018-09-27 00:00:00'),
(15, 'One Direction\'s Hit', 'admin', '2018-09-27 00:00:00'),
(16, 'Justin Bieber\'s Hit', 'admin', '2018-09-27 00:00:00'),
(18, 'Shawn Mendes\'s Hit', 'admin', '2018-09-27 00:00:00'),
(19, 'Charlie Puth\'s Hit ', 'admin', '2018-09-27 00:00:00'),
(20, 'My Other Favorite', 'admin', '2018-09-27 00:00:00'),
(21, 'top', 'anything', '2018-12-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(12, 2, 6, 0),
(13, 10, 6, 1),
(14, 11, 6, 2),
(15, 11, 6, 3),
(16, 1, 6, 4),
(17, 8, 6, 5),
(18, 6, 6, 6),
(19, 6, 6, 7),
(20, 1, 6, 8),
(21, 5, 6, 9),
(22, 5, 6, 10),
(29, 4, 8, 0),
(30, 1, 8, 1),
(37, 63, 11, 0),
(43, 1, 14, 0),
(44, 6, 14, 1),
(45, 7, 14, 2),
(46, 8, 14, 3),
(47, 3, 14, 4),
(48, 88, 14, 5),
(49, 90, 14, 6),
(50, 89, 14, 7),
(51, 2, 15, 0),
(52, 10, 15, 1),
(53, 14, 15, 2),
(54, 12, 15, 3),
(55, 11, 15, 4),
(56, 96, 15, 5),
(57, 15, 15, 6),
(58, 13, 15, 7),
(59, 123, 15, 8),
(60, 124, 15, 9),
(61, 21, 15, 10),
(62, 22, 15, 11),
(63, 23, 15, 12),
(64, 24, 15, 13),
(65, 25, 15, 14),
(66, 26, 15, 15),
(67, 33, 15, 16),
(68, 34, 15, 17),
(69, 35, 15, 18),
(70, 36, 15, 19),
(71, 37, 15, 20),
(72, 17, 15, 21),
(73, 18, 15, 22),
(74, 19, 15, 23),
(75, 20, 15, 24),
(76, 27, 15, 25),
(77, 28, 15, 26),
(78, 29, 15, 27),
(79, 30, 15, 28),
(80, 31, 15, 29),
(81, 32, 15, 30),
(82, 96, 15, 31),
(83, 51, 16, 0),
(84, 44, 16, 1),
(85, 49, 16, 2),
(87, 47, 16, 4),
(89, 57, 16, 6),
(90, 53, 16, 7),
(91, 50, 16, 8),
(92, 64, 18, 0),
(93, 86, 18, 1),
(94, 65, 18, 2),
(95, 66, 18, 3),
(96, 68, 18, 4),
(97, 68, 18, 5),
(98, 95, 18, 6),
(99, 67, 18, 7),
(100, 60, 19, 0),
(101, 62, 19, 1),
(102, 58, 19, 2),
(103, 61, 19, 3),
(104, 59, 19, 4),
(105, 94, 20, 0),
(106, 106, 20, 1),
(107, 71, 20, 2),
(108, 97, 20, 3),
(109, 80, 19, 5),
(110, 78, 20, 4),
(111, 4, 20, 5),
(112, 104, 20, 6),
(113, 81, 20, 7),
(114, 71, 20, 8),
(115, 98, 20, 9),
(116, 85, 20, 10),
(117, 77, 20, 11),
(118, 132, 20, 12),
(119, 105, 20, 13),
(120, 74, 20, 14),
(121, 5, 20, 15),
(122, 69, 20, 16),
(123, 9, 20, 17),
(124, 88, 20, 18),
(125, 150, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL,
  `lyricsPath` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`, `lyricsPath`) VALUES
(1, 'Perfect', 2, 1, 1, '4:23', '/assests/Songs/Ed Sheeran/divide/05 - Perfect.mp3', 1, 224, '/assests/Songs/Ed Sheeran/divide/05 - Perfect.txt'),
(2, 'Perfect', 1, 3, 1, '3:50', '/assests/Songs/One Direction/made in the am/03. Perfect.mp3', 1, 171, '/assests/Songs/One Direction/made in the am/03. Perfect.txt'),
(3, 'All Of The Stars', 2, 2, 1, '3:57', '/assests/Songs/Ed Sheeran/x/17 - All Of The Stars.mp3', 1, 59, '/assests/Songs/Ed Sheeran/x/17 - All Of The Stars.txt'),
(4, 'Back To You', 10, 7, 8, '3:30', '/assests/Songs/Selena Gomez/13 reasons why/Back To You - Selena Gomez .mp3', 1, 129, '/assests/Songs/Selena Gomez/13 reasons why/Back To You - Selena Gomez .txt'),
(5, 'Something Just Like This', 11, 11, 1, '4:07', '/assests/Songs/The Chainsmokers/memories do not open/05. Something Just Like This (Feat. Coldplay).mp3', 1, 61, '/assests/Songs/The Chainsmokers/memories do not open/05. Something Just Like This (Feat. Coldplay).txt'),
(6, 'Castle On The Hills', 2, 1, 1, '4:21', '/assests/Songs/Ed Sheeran/divide/02 - Castle On The Hill.mp3', 2, 75, '/assests/Songs/Ed Sheeran/divide/02 - Castle On The Hill.txt'),
(7, 'Happier', 2, 1, 1, '3:27', '/assests/Songs/Ed Sheeran/divide/07 - Happier.mp3', 3, 66, '/assests/Songs/Ed Sheeran/divide/07 - Happier.txt'),
(8, 'Thinking Out Loud', 2, 2, 1, '4:41', '/assests/Songs/Ed Sheeran/x/11 - Thinking Out Loud.mp3', 2, 69, '/assests/Songs/Ed Sheeran/x/11 - Thinking Out Loud.txt'),
(9, 'She Looks So Perfect', 7, 6, 1, '3:22', '/assests/Songs/fiveSOS/5SOS/She Looks So Perfect.mp3', 1, 66, '/assests/Songs/fiveSOS/5SOS/She Looks So Perfect.txt'),
(10, 'Drag Me Down', 1, 3, 1, '3:12', '/assests/Songs/One Direction/made in the am/02. Drag Me Down.mp3', 2, 91, '/assests/Songs/One Direction/made in the am/02. Drag Me Down.txt'),
(11, 'Infinity', 1, 3, 1, '4:09', '/assests/Songs/One Direction/made in the am/04. Infinity.mp3', 3, 63, '/assests/Songs/One Direction/made in the am/04. Infinity.txt'),
(12, 'End Of The Day', 1, 3, 1, '3:15', '/assests/Songs/One Direction/made in the am/05. End of the Day.mp3', 4, 74, '/assests/Songs/One Direction/made in the am/05. End of the Day.txt'),
(13, 'Olivia', 1, 3, 1, '2:58', '/assests/Songs/One Direction/made in the am/09. Olivia.mp3', 5, 55, '/assests/Songs/One Direction/made in the am/09. Olivia.txt'),
(14, 'History', 1, 3, 1, '3:07', '/assests/Songs/One Direction/made in the am/13. History.mp3', 6, 73, '/assests/Songs/One Direction/made in the am/13. History.txt'),
(15, 'A.M.', 1, 3, 1, '3:29', '/assests/Songs/One Direction/made in the am/17. A.M..mp3', 7, 52, '/assests/Songs/One Direction/made in the am/17. A.M..txt'),
(17, 'Steal My Girl', 1, 12, 1, '3:48', '/assests/Songs/One Direction/four/01 Steal My Girl.mp3\r\n', 1, 45, '/assests/Songs/One Direction/four/01 Steal My Girl.txt\r\n'),
(18, 'Ready To Run', 1, 12, 1, '3:16', '/assests/Songs/One Direction/four/02 Ready To Run.mp3', 2, 37, '/assests/Songs/One Direction/four/02 Ready To Run.txt'),
(19, 'Night Changes', 1, 12, 1, '3:46', '/assests/Songs/One Direction/four/07 Night Changes.mp3', 3, 32, '/assests/Songs/One Direction/four/07 Night Changes.txt'),
(20, 'No Control', 1, 12, 1, '3:19', '/assests/Songs/One Direction/four/08 No Control.mp3', 4, 43, '/assests/Songs/One Direction/four/08 No Control.txt'),
(21, 'Best Song Ever', 1, 4, 1, '3:20', '/assests/Songs/One Direction/midnight memories/01 Best Song Ever.mp3', 1, 28, '/assests/Songs/One Direction/midnight memories/01 Best Song Ever.txt'),
(22, 'Story of My Life', 1, 4, 1, '4:05', '/assests/Songs/One Direction/midnight memories/02 Story of My Life.mp3', 2, 19, '/assests/Songs/One Direction/midnight memories/02 Story of My Life.txt'),
(23, 'Diana', 1, 4, 1, '3:04', '/assests/Songs/One Direction/midnight memories/03 Diana.mp3', 3, 19, '/assests/Songs/One Direction/midnight memories/03 Diana.txt'),
(24, 'Midnight Memories', 1, 4, 1, '2:56', '/assests/Songs/One Direction/midnight memories/04 Midnight Memories.mp3', 4, 20, '/assests/Songs/One Direction/midnight memories/04 Midnight Memories.txt'),
(25, 'You & I', 1, 4, 1, '3:57', '/assests/Songs/One Direction/midnight memories/05 You & I.mp3', 5, 18, '/assests/Songs/One Direction/midnight memories/05 You & I.txt'),
(26, 'Strong', 1, 4, 1, '3:04', '/assests/Songs/One Direction/midnight memories/07 Strong.mp3', 6, 22, '/assests/Songs/One Direction/midnight memories/07 Strong.txt'),
(27, 'Live While We\'re Young', 1, 13, 1, '3:20', '/assests/Songs/One Direction/take me home/01 Live While We\'re Young.mp3', 1, 14, ''),
(28, 'Kiss You', 1, 13, 1, '3:03', '/assests/Songs/One Direction/take me home/02 Kiss You.mp3', 2, 21, '/assests/Songs/One Direction/take me home/02 Kiss You.txt'),
(29, 'Little Things', 1, 13, 1, '3:39', '/assests/Songs/One Direction/take me home/03 Little Things.mp3', 3, 12, '/assests/Songs/One Direction/take me home/03 Little Things.txt'),
(30, 'Last First Kiss', 1, 13, 1, '3:23', '/assests/Songs/One Direction/take me home/05 Last First Kiss.mp3', 4, 32, '/assests/Songs/One Direction/take me home/05 Last First Kiss.txt'),
(31, 'I Would', 1, 13, 1, '3:22', '/assests/Songs/One Direction/take me home/09 I Would.mp3', 5, 12, '/assests/Songs/One Direction/take me home/09 I Would.txt'),
(32, 'She\'s Not Afraid', 1, 13, 1, '3:10', '/assests/Songs/One Direction/take me home/14 She\'s Not Afraid.mp3', 6, 99, ''),
(33, 'What Makes You Beautiful', 1, 5, 1, '3:18', '/assests/Songs/One Direction/up all night/01. What Makes You Beautiful.mp3', 1, 17, '/assests/Songs/One Direction/up all night/01. What Makes You Beautiful.txt'),
(34, 'Gotta Be You', 1, 5, 1, '4:04', '/assests/Songs/One Direction/up all night/02. Gotta Be You.mp3', 2, 18, '/assests/Songs/One Direction/up all night/02. Gotta Be You.txt'),
(35, 'One Thing', 1, 5, 1, '3:17', '/assests/Songs/One Direction/up all night/03. One Thing.mp3', 3, 18, '/assests/Songs/One Direction/up all night/03. One Thing.txt'),
(36, 'Up All Night', 1, 5, 1, '3:14', '/assests/Songs/One Direction/up all night/05. Up All Night.mp3', 4, 21, '/assests/Songs/One Direction/up all night/05. Up All Night.txt'),
(37, 'I Want', 1, 5, 1, '2:53', '/assests/Songs/One Direction/up all night/09. I Want.mp3', 5, 6, '/assests/Songs/One Direction/up all night/09. I Want.txt'),
(44, 'Sorry', 3, 14, 1, '3:20', '/assests/Songs/Justin Bieber/Purpose/04 - Sorry.mp3', 1, 19, '/assests/Songs/Justin Bieber/Purpose/04 - Sorry.txt'),
(45, 'Love Yourself', 3, 14, 1, '3:53', '/assests/Songs/Justin Bieber/Purpose/05 - Love Yourself.mp3', 2, 25, '/assests/Songs/Justin Bieber/Purpose/05 - Love Yourself.txt'),
(46, 'Company', 3, 14, 1, '3:28', '/assests/Songs/Justin Bieber/Purpose/06 - Company.mp3', 3, 17, '/assests/Songs/Justin Bieber/Purpose/06 - Company.txt'),
(47, 'What Do You Mean', 3, 14, 1, '3:25', '/assests/Songs/Justin Bieber/Purpose/03 - What Do You Mean.mp3', 4, 30, '/assests/Songs/Justin Bieber/Purpose/03 - What Do You Mean.txt'),
(48, 'Purpose', 3, 14, 1, '3:30', '/assests/Songs/Justin Bieber/Purpose/13 - Purpose.mp3', 5, 25, '/assests/Songs/Justin Bieber/Purpose/13 - Purpose.txt'),
(49, 'Baby', 3, 15, 1, '3:34', '/assests/Songs/Justin Bieber/My World/baby_feat._ludacris.mp3', 1, 24, '/assests/Songs/Justin Bieber/My World/baby_feat._ludacris.txt'),
(50, 'Eenie Meenie', 3, 15, 1, '3:22', '/assests/Songs/Justin Bieber/My World/eenie_meenie_feat._sean_kingston.mp3', 2, 14, '/assests/Songs/Justin Bieber/My World/eenie_meenie_feat._sean_kingston.txt'),
(51, 'Love Me', 3, 15, 1, '3:13', '/assests/Songs/Justin Bieber/My World/love_me.mp3', 3, 22, '/assests/Songs/Justin Bieber/My World/love_me.txt'),
(52, 'One Less Lonely Girl', 3, 15, 1, '3:49', '/assests/Songs/Justin Bieber/My World/one_less_lonely_girl.mp3', 4, 15, '/assests/Songs/Justin Bieber/My World/one_less_lonely_girl.txt'),
(53, 'Stuck In The Moment', 3, 15, 1, '3:43', '/assests/Songs/Justin Bieber/My World/stuck_in_the_moment.mp3', 5, 17, '/assests/Songs/Justin Bieber/My World/stuck_in_the_moment.txt'),
(54, 'Boyfriend', 3, 16, 1, '2:51', '/assests/Songs/Justin Bieber/Believe/02. Boyfriend - Justin Bieber.mp3', 1, 20, '/assests/Songs/Justin Bieber/Believe/02. Boyfriend - Justin Bieber.txt'),
(55, 'As Long As You Love Me', 3, 16, 1, '2:49', '/assests/Songs/Justin Bieber/Believe/03. As Long As You Love Me.mp3', 2, 15, '/assests/Songs/Justin Bieber/Believe/03. As Long As You Love Me.txt'),
(56, 'Beauty And A Beat', 3, 16, 1, '2:48', '/assests/Songs/Justin Bieber/Believe/10. Beauty And A Beat.mp3', 3, 8, '/assests/Songs/Justin Bieber/Believe/10. Beauty And A Beat.txt'),
(57, 'Mistletoe', 3, 17, 1, '3:02', '/assests/Songs/Justin Bieber/Under The Mistletoe/02-Mistletoe.mp3', 1, 17, '/assests/Songs/Justin Bieber/Under The Mistletoe/02-Mistletoe.txt'),
(58, 'One Call Away', 6, 18, 1, '3:14', '/assests/Songs/Charlie Puth/Nine Track Mind/1-01 One Call Away.mp3', 1, 18, '/assests/Songs/Charlie Puth/Nine Track Mind/1-01 One Call Away.txt'),
(59, 'See You Again (Solo Version)', 6, 18, 1, '3:48', '/assests/Songs/Charlie Puth/Nine Track Mind/1-13 See You Again (Solo Version).mp3', 3, 11, '/assests/Songs/Charlie Puth/Nine Track Mind/1-13 See You Again (Solo Version).txt'),
(60, 'We Don\'t Talk Anymore', 6, 18, 1, '3:37', '/assests/Songs/Charlie Puth/Nine Track Mind/1-05 We Don\'t Talk Anymore.mp3', 2, 25, ''),
(61, 'Attention', 6, 19, 1, '3:28', '/assests/Songs/Charlie Puth/Voicenotes/02. Attention.mp3', 1, 16, '/assests/Songs/Charlie Puth/Voicenotes/02. Attention.txt'),
(62, 'How Long', 6, 19, 1, '3:20', '/assests/Songs/Charlie Puth/Voicenotes/04. How Long.mp3', 2, 20, '/assests/Songs/Charlie Puth/Voicenotes/04. How Long.txt'),
(63, 'Let Me Love You', 15, 20, 1, '3:25', '/assests/Songs/Dj snake/Encore/13. Let Me Love You (Feat. Justin Bieber).mp3', 1, 20, '/assests/Songs/Dj snake/Encore/13. Let Me Love You (Feat. Justin Bieber).txt'),
(64, 'There\'s Nothing Holdin\' Me Back', 4, 10, 1, '3:19', '/assests/Songs/Shawn Mendes/Illuminate/01 - There\'s Nothing Holdin\' Me Back.mp3', 1, 30, ''),
(65, 'Mercy', 4, 10, 1, '3:28', '/assests/Songs/Shawn Mendes/Illuminate/03 - Mercy.mp3', 2, 14, '/assests/Songs/Shawn Mendes/Illuminate/03 - Mercy.txt'),
(66, 'Treat You Better', 4, 10, 1, '3:08', '/assests/Songs/Shawn Mendes/Illuminate/04 - Treat You Better.mp3', 3, 17, '/assests/Songs/Shawn Mendes/Illuminate/04 - Treat You Better.txt'),
(67, 'Mercy (acoustic)', 4, 10, 1, '3:39', '/assests/Songs/Shawn Mendes/Illuminate/16 - Mercy (acoustic).mp3', 4, 9, '/assests/Songs/Shawn Mendes/Illuminate/16 - Mercy (acoustic).txt'),
(68, 'Stitches', 4, 21, 1, '3:26', '/assests/Songs/Shawn Mendes/Handwritten/02.Stitches.mp3', 1, 17, '/assests/Songs/Shawn Mendes/Handwritten/02.Stitches.txt'),
(69, 'Closer', 11, 22, 1, '4:05', '/assests/Songs/The Chainsmokers/collage/03 Closer (feat. Halsey).mp3', 1, 8, '/assests/Songs/The Chainsmokers/collage/03 Closer (feat. Halsey).txt'),
(70, 'Don\'t Let Me Down', 11, 22, 1, '3:28', '/assests/Songs/The Chainsmokers/collage/05 Don\'t Let Me Down (feat. Daya).mp3', 2, 14, ''),
(71, 'Girls Like You', 9, 9, 1, '3:35', '/assests/Songs/Maroon 5/red pills blue/09 - Girls Like You.mp3', 1, 9, '/assests/Songs/Maroon 5/red pills blue/09 - Girls Like You.txt'),
(72, 'Animals', 9, 8, 1, '3:51', '/assests/Songs/Maroon 5/v/02 Animals.mp3', 1, 7, '/assests/Songs/Maroon 5/v/02 Animals.txt'),
(73, 'Sugar', 9, 8, 1, '3:55', '/assests/Songs/Maroon 5/v/05 Sugar.mp3', 2, 18, '/assests/Songs/Maroon 5/v/05 Sugar.txt'),
(74, 'Beautiful', 8, 23, 1, '3:00', '/assests/Songs/Camila Cabello/Beautiful (Single)/Beautiful - Bazzi_ Camila .mp3', 1, 23, '/assests/Songs/Camila Cabello/Beautiful (Single)/Beautiful - Bazzi_ Camila .txt'),
(75, 'I\'m A Mess', 14, 24, 1, '3:15', '/assests/Songs/Bebe Rexha/Expectation/02 I\'m a Mess.mp3', 1, 14, ''),
(76, 'God is a woman', 13, 25, 1, '3:17', '/assests/Songs/Ariana Grande/Sweetener/05. God is a woman.mp3', 1, 11, '/assests/Songs/Ariana Grande/Sweetener/05. God is a woman.txt'),
(77, 'No tears left to cry', 13, 25, 1, '3:25', '/assests/Songs/Ariana Grande/Sweetener/10. no tears left to cry.mp3', 2, 18, '/assests/Songs/Ariana Grande/Sweetener/10. no tears left to cry.txt'),
(78, 'Youngblood', 7, 26, 1, '3:23', '/assests/Songs/fiveSOS/Youngblood/Youngblood.mp3', 1, 66, '/assests/Songs/fiveSOS/Youngblood/Youngblood.txt'),
(79, 'Don\'t Stop', 7, 6, 1, '2:49', '/assests/Songs/fiveSOS/5SOS/Don\'t Stop .mp3', 2, 62, ''),
(80, 'See You Again', 16, 27, 8, '3:50', '/assests/Songs/wiz khalifa/f&f7/07 - See You Again (Feat. Charlie Puth) - Wiz Khalifa.mp3', 1, 14, '/assests/Songs/wiz khalifa/f&f7/07 - See You Again (Feat. Charlie Puth) - Wiz Khalifa.txt'),
(81, 'Dusk Till Dawn ', 5, 28, 1, '4:27', '/assests/Songs/ZAYN/Dusk Till Dawn (Single)/01 Dusk Till Dawn (feat. Sia).mp3', 1, 16, '/assests/Songs/ZAYN/Dusk Till Dawn (Single)/01 Dusk Till Dawn (feat. Sia).txt'),
(82, 'Let Me', 5, 29, 1, '3:05', '/assests/Songs/ZAYN/Let Me/01 Let Me.m4a', 1, 58, '/assests/Songs/ZAYN/Let Me/01 Let Me.txt'),
(83, 'PILLOWTALK', 5, 30, 1, '3:22', '/assests/Songs/ZAYN/Mind of Mine/02 PILLOWTALK.mp3', 1, 15, '/assests/Songs/ZAYN/Mind of Mine/02 PILLOWTALK.txt'),
(84, 'Despacito', 17, 31, 6, '3:48', '/assests/Songs/Luis Fonsi/Despacito/Despacito.mp3', 1, 21, '/assests/Songs/Luis Fonsi/Despacito/Despacito.txt'),
(85, 'Sick Boy', 11, 32, 1, '3:13', '/assests/Songs/The Chainsmokers/sick boy/04 Sick Boy.mp3', 1, 18, '/assests/Songs/The Chainsmokers/sick boy/04 Sick Boy.txt'),
(86, 'In My Blood', 4, 33, 1, '3:31', '/assests/Songs/Shawn Mendes/Shawn Mendes/01 In My Blood.mp3', 1, 19, '/assests/Songs/Shawn Mendes/Shawn Mendes/01 In My Blood.txt'),
(87, 'Love Me Like You Do', 12, 34, 8, '4:10', '/assests/Songs/Ellie Goulding/50SOG/05 Love Me Like You Do .mp3', 1, 15, '/assests/Songs/Ellie Goulding/50SOG/05 Love Me Like You Do .txt'),
(88, 'I See Fire', 2, 2, 8, '4:58', '/assests/Songs/Ed Sheeran/x/16 - I See Fire.mp3', 3, 39, '/assests/Songs/Ed Sheeran/x/16 - I See Fire.txt'),
(89, 'The A Team', 2, 35, 1, '4:21', '/assests/Songs/Ed Sheeran/+/01 - The A Team.mp3', 1, 15, '/assests/Songs/Ed Sheeran/+/01 - The A Team.txt'),
(90, 'Lego House', 2, 35, 1, '3:03', '/assests/Songs/Ed Sheeran/+/09 - Lego House.mp3', 2, 27, '/assests/Songs/Ed Sheeran/+/09 - Lego House.txt'),
(91, 'The City', 2, 35, 1, '3:55', '/assests/Songs/Ed Sheeran/+/08 - The City.mp3', 3, 8, '/assests/Songs/Ed Sheeran/+/08 - The City.txt'),
(92, 'Kill Em with Kindness', 10, 36, 1, '3:38', '/assests/Songs/Selena Gomez/Revival/02 Kill Em with Kindness.mp3', 1, 4, '/assests/Songs/Selena Gomez/Revival/02 Kill Em with Kindness.txt'),
(93, 'Hands to Myself', 10, 36, 1, '3:20', '/assests/Songs/Selena Gomez/Revival/03 Hands to Myself.mp3', 2, 13, '/assests/Songs/Selena Gomez/Revival/03 Hands to Myself.txt'),
(94, 'Same Old Love', 10, 36, 1, '3:49', '/assests/Songs/Selena Gomez/Revival/04 Same Old Love.mp3', 3, 18, '/assests/Songs/Selena Gomez/Revival/04 Same Old Love.txt'),
(95, 'I Know What You Did Last Summer', 4, 21, 1, '3:43', '/assests/Songs/Shawn Mendes/Handwritten/I Know What You Did Last Summer.mp3', 2, 14, '/assests/Songs/Shawn Mendes/Handwritten/I Know What You Did Last Summer.txt'),
(96, 'Forever Young', 1, 37, 1, '3:25', '/assests/Songs/One Direction/forever young/Forver Young.mp3', 1, 140, '/assests/Songs/One Direction/forever young/Forver Young.txt'),
(97, 'Alone', 18, 38, 4, '3:05', '/assests/Songs/Alan Walker/Alone/Alone.mp3', 1, 19, '/assests/Songs/Alan Walker/Alone/Alone.txt'),
(98, 'Faded', 18, 39, 3, '3:32', '/assests/Songs/Alan Walker/Faded/Faded.mp3', 1, 10, '/assests/Songs/Alan Walker/Faded/Faded.txt'),
(99, 'Legends Never Die', 18, 40, 3, '2:47', '/assests/Songs/Alan Walker/Legends Never Die/Legends Never Die.mp3', 1, 15, '/assests/Songs/Alan Walker/Legends Never Die/Legends Never Die.txt'),
(100, 'Darkside', 18, 41, 1, '3:31', '/assests/Songs/Alan Walker/Darkside/Darkside.mp3', 1, 46, '/assests/Songs/Alan Walker/Darkside/Darkside.txt'),
(101, 'Havana', 8, 42, 1, '3:37', '/assests/Songs/Camila Cabello/Camila/04 Havana.mp3', 1, 10, '/assests/Songs/Camila Cabello/Camila/04 Havana.txt'),
(102, ' Never Be the Same', 8, 42, 1, '3:47', '/assests/Songs/Camila Cabello/Camila/01 Never Be the Same.mp3', 2, 9, '/assests/Songs/Camila Cabello/Camila/01 Never Be the Same.txt'),
(103, 'Sign Of The Times', 19, 43, 1, '5:40', '/assests/Songs/Harry Styles/Sign Of The Times/Sign Of The Times.mp3', 1, 22, '/assests/Songs/Harry Styles/Sign Of The Times/Sign Of The Times.txt'),
(104, 'Strip That Down', 20, 44, 1, '3:24', '/assests/Songs/Liam Payne/Strip That Down/Strip That Down .mp3', 1, 21, '/assests/Songs/Liam Payne/Strip That Down/Strip That Down .txt'),
(105, 'No Brainer', 21, 45, 5, '4:20', '/assests/Songs/Dj Khaled/No Brainer/01 No Brainer (feat. Justin Bieber, Chance the Rapper & Quavo).mp3', 1, 26, '/assests/Songs/Dj Khaled/No Brainer/01 No Brainer (feat. Justin Bieber, Chance the Rapper & Quavo).txt'),
(106, 'I Want It That Way', 22, 46, 1, '3:33', '/assests/Songs/Backstreet Boys/Millennium/02 I Want It That Way.mp3', 1, 44, '/assests/Songs/Backstreet Boys/Millennium/02 I Want It That Way.txt'),
(107, 'Larger Than Life', 22, 46, 1, '3:52', '/assests/Songs/Backstreet Boys/Millennium/01 Larger Than Life.mp3', 2, 5, '/assests/Songs/Backstreet Boys/Millennium/01 Larger Than Life.txt'),
(112, 'Show Me The Meaning Of Being Lonely', 22, 46, 1, '3:54', '/assests/Songs/Backstreet Boys/Millennium/03 Show Me The Meaning Of Being Lonely.mp3', 3, 12, '/assests/Songs/Backstreet Boys/Millennium/03 Show Me The Meaning Of Being Lonely.txt'),
(113, 'It\'s Gotta Be You', 22, 46, 1, '2:57', '/assests/Songs/Backstreet Boys/Millennium/04 It\'s Gotta Be You.mp3', 4, 2, ''),
(114, ' I Need You Tonight', 22, 46, 1, '4:23', '/assests/Songs/Backstreet Boys/Millennium/05 I Need You Tonight.mp3', 5, 4, '/assests/Songs/Backstreet Boys/Millennium/05 I Need You Tonight.txt'),
(115, 'Don\'t Want You Back', 22, 46, 1, '3:26', '/assests/Songs/Backstreet Boys/Millennium/06 Don\'t Want You Back.mp3', 6, 6, ''),
(116, 'Don\'t Wanna Lose You Now', 22, 46, 1, '3:55', '/assests/Songs/Backstreet Boys/Millennium/07 Don\'t Wanna Lose You Now.mp3', 7, 2, ''),
(117, 'The One', 22, 46, 1, '3:46', '/assests/Songs/Backstreet Boys/Millennium/08 The One.mp3', 8, 9, '/assests/Songs/Backstreet Boys/Millennium/08 The One.txt'),
(118, 'Back To Your Heart', 22, 46, 1, '4:21', '/assests/Songs/Backstreet Boys/Millennium/09 Back To Your Heart.mp3', 9, 5, '/assests/Songs/Backstreet Boys/Millennium/09 Back To Your Heart.txt'),
(119, 'Spanish Eyes', 22, 46, 1, '3:55', '/assests/Songs/Backstreet Boys/Millennium/10 Spanish Eyes.mp3', 10, 6, '/assests/Songs/Backstreet Boys/Millennium/10 Spanish Eyes.txt'),
(120, ' No One Else Comes Close', 22, 46, 1, '3:43', '/assests/Songs/Backstreet Boys/Millennium/11 No One Else Comes Close.mp3', 11, 4, '/assests/Songs/Backstreet Boys/Millennium/11 No One Else Comes Close.txt'),
(121, 'The Perfect Fan', 22, 46, 1, '4:31', '/assests/Songs/Backstreet Boys/Millennium/12 The Perfect Fan.mp3', 12, 13, '/assests/Songs/Backstreet Boys/Millennium/12 The Perfect Fan.txt'),
(122, 'Hey Angel', 1, 3, 1, '4:00', '/assests/Songs/One Direction/made in the am/01. Hey Angel.mp3', 8, 8, '/assests/Songs/One Direction/made in the am/01. Hey Angel.txt'),
(123, 'If I Could Fly', 1, 3, 1, '3:50', '/assests/Songs/One Direction/made in the am/06. If I Could Fly.mp3', 9, 18, '/assests/Songs/One Direction/made in the am/06. If I Could Fly.txt'),
(124, 'Long Way Down', 1, 3, 1, '3:12', '/assests/Songs/One Direction/made in the am/07. Long Way Down.mp3', 10, 21, '/assests/Songs/One Direction/made in the am/07. Long Way Down.txt'),
(125, ' Never Enough', 1, 3, 1, '3:33', '/assests/Songs/One Direction/made in the am/08. Never Enough.mp3', 11, 9, '/assests/Songs/One Direction/made in the am/08. Never Enough.txt'),
(126, 'What a Feeling', 1, 3, 1, '3:20', '/assests/Songs/One Direction/made in the am/10. What a Feeling.mp3', 12, 5, '/assests/Songs/One Direction/made in the am/10. What a Feeling.txt'),
(127, 'Love You Goodbye', 1, 3, 1, '3:16', '/assests/Songs/One Direction/made in the am/11. Love You Goodbye.mp3', 13, 7, '/assests/Songs/One Direction/made in the am/11. Love You Goodbye.txt'),
(128, 'I Want to Write You a Song', 1, 3, 1, '2:59', '/assests/Songs/One Direction/made in the am/12. I Want to Write You a Song.mp3', 14, 3, '/assests/Songs/One Direction/made in the am/12. I Want to Write You a Song.txt'),
(129, 'Temporary Fix', 1, 3, 1, '2:55', '/assests/Songs/One Direction/made in the am/14. Temporary Fix.mp3', 15, 8, '/assests/Songs/One Direction/made in the am/14. Temporary Fix.txt'),
(130, ' Walking in the Wind', 1, 3, 1, '3:22', '/assests/Songs/One Direction/made in the am/15. Walking in the Wind.mp3', 16, 9, '/assests/Songs/One Direction/made in the am/15. Walking in the Wind.txt'),
(131, 'Wolves', 1, 3, 1, '4:01', '/assests/Songs/One Direction/made in the am/16. Wolves.mp3', 17, 11, '/assests/Songs/One Direction/made in the am/16. Wolves.txt'),
(132, 'Brother', 24, 48, 1, '3:22', '/assests/Songs/Kodaline/Brother/01 - Brother.mp3', 1, 9, '/assests/Songs/Kodaline/Brother/01 - Brother.txt'),
(133, 'Somebody To Die For', 23, 47, 1, '4:35', '/assests/Songs/Hurts/Exile/10 Hurts - Somebody To Die For.mp3', 1, 14, '/assests/Songs/Hurts/Exile/10 Hurts - Somebody To Die For.txt'),
(134, 'Shape Of You', 2, 1, 1, '3:53', '/assests/Songs/Ed Sheeran/divide/04 - Shape Of You.mp3', 4, 4, '/assests/Songs/Ed Sheeran/divide/04 - Shape Of You.txt'),
(136, 'Perfect (Stripped)', 1, 49, 1, '3:51', '/assests/Songs/One Direction/Perfect - EP/01 Perfect (Stripped).mp3', 1, 11, '/assests/Songs/One Direction/Perfect - EP/01 Perfect (Stripped).txt'),
(137, 'Home', 1, 49, 1, '3:14', '/assests/Songs/One Direction/Perfect - EP/02 Home.mp3', 2, 7, '/assests/Songs/One Direction/Perfect - EP/02 Home.txt'),
(138, 'Perfect (Matoma Remix)', 1, 49, 1, '3:43', '/assests/Songs/One Direction/Perfect - EP/03 Perfect (Matoma Remix).mp3', 3, 12, '/assests/Songs/One Direction/Perfect - EP/03 Perfect (Matoma Remix).txt'),
(139, 'Drag Me Down - Big Payno x AFTERHRS Remix', 1, 49, 1, '3:08', '/assests/Songs/One Direction/Perfect - EP/04 Drag Me Down (feat. LunchMoney Lewis) [Big Payno x AFTERHRS Remix].mp3', 4, 41, '/assests/Songs/One Direction/Perfect - EP/04 Drag Me Down (feat. LunchMoney Lewis) [Big Payno x AFTERHRS Remix].txt'),
(140, 'One Thing', 1, 50, 1, '3:17', '/assests/Songs/One Direction/One Thing - EP/01. One Thing.mp3', 1, 6, '/assests/Songs/One Direction/One Thing - EP/01. One Thing.txt'),
(141, 'I Should Have Kissed You', 1, 50, 1, '3:33', '/assests/Songs/One Direction/One Thing - EP/02.  I Should Have Kissed You.mp3', 2, 11, '/assests/Songs/One Direction/One Thing - EP/02.  I Should Have Kissed You.txt'),
(142, 'One Thing (Acoustic)', 1, 50, 1, '3:03', '/assests/Songs/One Direction/One Thing - EP/03. One Thing Acoustic .mp3', 3, 4, '/assests/Songs/One Direction/One Thing - EP/03. One Thing Acoustic .txt'),
(143, 'Wait', 9, 9, 1, '3:10', '/assests/Songs/Maroon 5/red pills blue/03 - Wait.mp3', 2, 5, '/assests/Songs/Maroon 5/red pills blue/03 - Wait.txt'),
(144, 'I\'m The One', 21, 51, 1, '4:48', '/assests/Songs/Dj Khaled/Grateful/I\'m The One .mp3', 1, 7, ''),
(145, 'Where Are Ãœ Now', 3, 14, 1, '4:10', '/assests/Songs/Justin Bieber/Purpose/11 - Where Are +Â£ Now (feat. Skrillex & Diplo).mp3', 6, 8, '/assests/Songs/Justin Bieber/Purpose/11 - Where Are +Â£ Now (feat. Skrillex & Diplo).txt'),
(146, 'Love Story', 25, 52, 1, '3:55', '/assests/Songs/Taylor Swift/Fearless/1-09 Love Story.mp3', 1, 32, '/assests/Songs/Taylor Swift/Fearless/1-09 Love Story.txt'),
(147, 'You Belong With Me', 25, 52, 1, '3:51', '/assests/Songs/Taylor Swift/Fearless/1-12 You Belong With Me.mp3', 2, 16, '/assests/Songs/Taylor Swift/Fearless/1-12 You Belong With Me.txt'),
(150, 'Whatever It Takes', 26, 53, 7, '3:21', '/assests/Songs/Imagine Dragons/Evolve/02. Whatever It Takes.flac', 1, 3, '/assests/Songs/Imagine Dragons/Evolve/02. Whatever It Takes.txt'),
(151, 'Believer', 26, 53, 1, '3:25', '/assests/Songs/Imagine Dragons/Evolve/03. Believer.flac', 2, 1, '/assests/Songs/Imagine Dragons/Evolve/03. Believer.txt'),
(152, 'Thunder', 26, 53, 7, '3:08', '/assests/Songs/Imagine Dragons/Evolve/09. Thunder.flac', 3, 2, '/assests/Songs/Imagine Dragons/Evolve/09. Thunder.txt'),
(153, 'Thank U, Next', 13, 54, 1, '3:28', '/assests/Songs/Ariana Grande/Thank U Next/Ariana Grande - thank u, next.mp3', 1, 6, '/hashify/assests/Songs/Ariana%20Grande/Thank%20U%20Next/Ariana%20Grande%20-%20thank%20u,%20next.txt'),
(154, 'Blank Spaces', 25, 55, 1, '3:58', '/assests/Songs/Taylor Swift/1989/02 Blank Space.flac', 1, 2, '/hashify/assests/Songs/Taylor%20Swift/1989/02%20Blank%20Space.txt'),
(155, 'Style', 25, 55, 1, '3:51', '/assests/Songs/Taylor Swift/1989/03 Style.flac', 2, 2, '/hashify/assests/Songs/Taylor%20Swift/1989/03%20Style.txt'),
(156, 'Shake It Off', 25, 55, 1, '3:39', '/assests/Songs/Taylor Swift/1989/06 Shake It Off.flac', 3, 2, '/hashify/assests/Songs/Taylor%20Swift/1989/06%20Shake%20It%20Off.txt'),
(157, 'Love Story (1989 remix)', 25, 55, 1, '4:13', '/assests/Songs/Taylor Swift/1989/Love Story (1989 remix).mp3', 4, 1, '/hashify/assests/Songs/Taylor%20Swift/1989/Love%20Story%20(1989%20remix).txt');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  `lastPlayedSong` int(50) NOT NULL,
  `lastPlayedPlaylist` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`, `lastPlayedSong`, `lastPlayedPlaylist`) VALUES
(1, 'admin', 'Harsh', 'Banjare', 'Harshbanjare007@outlook.com', '0192023a7bbd73250516f069df18b500', '2018-12-13 00:00:00', 'assests/Images/Profile/default.jpg', 96, '[\"1\",\"2\",\"96\",\"4\",\"32\",\"10\",\"6\",\"12\",\"14\",\"8\",\"7\",\"78\",\"9\",\"11\",\"79\",\"5\",\"3\",\"82\",\"13\",\"15\",\"100\",\"17\",\"106\",\"20\",\"139\",\"88\",\"18\",\"146\",\"19\",\"30\",\"64\",\"47\",\"21\",\"90\",\"105\",\"48\",\"60\",\"45\",\"49\",\"74\",\"26\",\"51\",\"103\",\"104\",\"124\",\"84\",\"36\",\"28\",\"54\",\"63\",\"62\",\"24\",\"97\",\"86\",\"23\",\"22\",\"44\",\"94\",\"123\",\"77\",\"25\",\"58\",\"35\",\"34\",\"85\",\"73\",\"46\",\"53\",\"33\",\"68\",\"57\",\"66\",\"61\",\"81\",\"147\",\"89\",\"99\",\"83\",\"87\",\"55\",\"52\",\"133\",\"70\",\"50\",\"27\",\"65\",\"95\",\"75\",\"80\",\"121\",\"93\",\"31\",\"138\",\"29\",\"112\",\"76\",\"59\",\"131\",\"141\",\"136\"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
