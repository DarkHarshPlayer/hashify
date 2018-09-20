-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2018 at 05:16 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

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
(3, 'Made In The Am', 1, 1, '/assests/Images/Album Art/MadeInTheAM.jpg'),
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
(40, 'Legends Never Die', 18, 8, '/assests/Images/Album Art/legends Never Die AW.jpg'),
(41, 'Darkside', 18, 1, '/assests/Images/Album Art/Darkside.jpg'),
(42, 'Camila', 8, 1, '/assests/Images/Album Art/Camila.jpg'),
(43, 'Sign Of The Times', 19, 1, '/assests/Images/Album Art/Sign Of The Times.jpg'),
(44, 'Strip That Down', 20, 1, '/assests/Images/Album Art/Strip That Down.jpg'),
(45, 'No Brainer', 21, 5, '/assests/Images/Album Art/No Brainer.jpg');

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
(21, 'Dj Khaled', '/hashify/assests/Images/artist/Dj Khaled.jpg');

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
(9, 'admin playlist', 'admin', '2018-09-09 00:00:00'),
(10, 'harsh', 'admin', '2018-09-13 00:00:00'),
(11, 'harsh', 'harsh', '2018-09-15 00:00:00'),
(12, 'do', 'admin', '2018-09-20 00:00:00');

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
(31, 12, 9, 0),
(32, 4, 9, 1),
(33, 15, 10, 0),
(34, 10, 10, 1),
(35, 74, 10, 2),
(36, 36, 10, 3),
(37, 63, 11, 0),
(38, 68, 9, 2),
(39, 96, 9, 3),
(40, 22, 12, 0),
(41, 63, 12, 1);

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
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Perfect', 2, 1, 1, '4:23', '/assests/Songs/Ed Sheeran/divide/05 - Perfect.mp3', 1, 81),
(2, 'Perfect', 1, 3, 1, '3:50', '/assests/Songs/One Direction/made in the am/03. Perfect.mp3', 1, 115),
(3, 'All Of The Stars', 2, 2, 1, '3:57', '/assests/Songs/Ed Sheeran/x/17 - All Of The Stars.mp3', 1, 51),
(4, 'Back To You', 10, 7, 8, '3:30', '/assests/Songs/Selena Gomez/13 reasons why/Back To You - Selena Gomez .mp3', 1, 98),
(5, 'Something Just Like This', 11, 11, 1, '4:07', '/assests/Songs/The Chainsmokers/memories do not open/05. Something Just Like This (Feat. Coldplay).mp3', 1, 54),
(6, 'Castle On The Hills', 2, 1, 1, '4:21', '/assests/Songs/Ed Sheeran/divide/02 - Castle On The Hill.mp3', 2, 65),
(7, 'Happier', 2, 1, 1, '3:27', '/assests/Songs/Ed Sheeran/divide/07 - Happier.mp3', 3, 57),
(8, 'Thinking Out Loud', 2, 2, 1, '4:41', '/assests/Songs/Ed Sheeran/x/11 - Thinking Out Loud.mp3', 2, 55),
(9, 'She Looks So Perfect', 7, 6, 1, '3:22', '/assests/Songs/fiveSOS/5SOS/She Looks So Perfect.mp3', 1, 43),
(10, 'Drag Me Down', 1, 3, 1, '3:12', '/assests/Songs/One Direction/made in the am/02. Drag Me Down.mp3', 2, 60),
(11, 'Infinity', 1, 3, 1, '4:09', '/assests/Songs/One Direction/made in the am/04. Infinity.mp3', 3, 46),
(12, 'End Of The Day', 1, 3, 1, '3:15', '/assests/Songs/One Direction/made in the am/05. End of the Day.mp3', 4, 47),
(13, 'Olivia', 1, 3, 1, '2:58', '/assests/Songs/One Direction/made in the am/09. Olivia.mp3', 5, 39),
(14, 'History', 1, 3, 1, '3:07', '/assests/Songs/One Direction/made in the am/13. History.mp3', 6, 57),
(15, 'A.M.', 1, 3, 1, '3:29', '/assests/Songs/One Direction/made in the am/17. A.M..mp3', 7, 37),
(17, 'Steal My Girl', 1, 12, 1, '3:48', '/assests/Songs/One Direction/four/01 Steal My Girl.mp3\r\n', 1, 34),
(18, 'Ready To Run', 1, 12, 1, '3:16', '/assests/Songs/One Direction/four/02 Ready To Run.mp3', 2, 23),
(19, 'Night Changes', 1, 12, 1, '3:46', '/assests/Songs/One Direction/four/07 Night Changes.mp3', 3, 21),
(20, 'No Control', 1, 12, 1, '3:19', '/assests/Songs/One Direction/four/08 No Control.mp3', 4, 31),
(21, 'Best Song Ever', 1, 4, 1, '3:20', '/assests/Songs/One Direction/midnight memories/01 Best Song Ever.mp3', 1, 18),
(22, 'Story of My Life', 1, 4, 1, '4:05', '/assests/Songs/One Direction/midnight memories/02 Story of My Life.mp3', 2, 9),
(23, 'Diana', 1, 4, 1, '3:04', '/assests/Songs/One Direction/midnight memories/03 Diana.mp3', 3, 10),
(24, 'Midnight Memories', 1, 4, 1, '2:56', '/assests/Songs/One Direction/midnight memories/04 Midnight Memories.mp3', 4, 10),
(25, 'You & I', 1, 4, 1, '3:57', '/assests/Songs/One Direction/midnight memories/05 You & I.mp3', 5, 10),
(26, 'Strong', 1, 4, 1, '3:04', '/assests/Songs/One Direction/midnight memories/07 Strong.mp3', 6, 12),
(27, 'Live While We\'re Young', 1, 13, 1, '3:20', '/assests/Songs/One Direction/take me home/01 Live While We\'re Young.mp3', 1, 5),
(28, 'Kiss You', 1, 13, 1, '3:03', '/assests/Songs/One Direction/take me home/02 Kiss You.mp3', 2, 10),
(29, 'Little Things', 1, 13, 1, '3:39', '/assests/Songs/One Direction/take me home/03 Little Things.mp3', 3, 5),
(30, 'Last First Kiss', 1, 13, 1, '3:23', '/assests/Songs/One Direction/take me home/05 Last First Kiss.mp3', 4, 16),
(31, 'I Would', 1, 13, 1, '3:22', '/assests/Songs/One Direction/take me home/09 I Would.mp3', 5, 3),
(32, 'She\'s Not Afraid', 1, 13, 1, '3:10', '/assests/Songs/One Direction/take me home/14 She\'s Not Afraid.mp3', 6, 7),
(33, 'What Makes You Beautiful', 1, 5, 1, '3:18', '/assests/Songs/One Direction/up all night/01. What Makes You Beautiful.mp3', 1, 11),
(34, 'Gotta Be You', 1, 5, 1, '4:04', '/assests/Songs/One Direction/up all night/02. Gotta Be You.mp3', 2, 8),
(35, 'One Thing', 1, 5, 1, '3:17', '/assests/Songs/One Direction/up all night/03. One Thing.mp3', 3, 8),
(36, 'Up All Night', 1, 5, 1, '3:14', '/assests/Songs/One Direction/up all night/05. Up All Night.mp3', 4, 10),
(37, 'I Want', 1, 5, 1, '2:53', '/assests/Songs/One Direction/up all night/09. I Want.mp3', 5, 1),
(44, 'Sorry', 3, 14, 1, '3:20', '/assests/Songs/Justin Bieber/Purpose/04 - Sorry.mp3', 1, 12),
(45, 'Love Yourself', 3, 14, 1, '3:53', '/assests/Songs/Justin Bieber/Purpose/05 - Love Yourself.mp3', 2, 14),
(46, 'Company', 3, 14, 1, '3:28', '/assests/Songs/Justin Bieber/Purpose/06 - Company.mp3', 3, 11),
(47, 'What Do You Mean', 3, 14, 1, '3:25', '/assests/Songs/Justin Bieber/Purpose/03 - What Do You Mean.mp3', 4, 13),
(48, 'Purpose', 3, 14, 1, '3:30', '/assests/Songs/Justin Bieber/Purpose/13 - Purpose.mp3', 5, 18),
(49, 'Baby', 3, 15, 1, '3:34', '/assests/Songs/Justin Bieber/My World/baby_feat._ludacris.mp3', 1, 13),
(50, 'Eenie Meenie', 3, 15, 1, '3:22', '/assests/Songs/Justin Bieber/My World/eenie_meenie_feat._sean_kingston.mp3', 2, 9),
(51, 'Love Me', 3, 15, 1, '3:13', '/assests/Songs/Justin Bieber/My World/love_me.mp3', 3, 9),
(52, 'One Less Lonely Girl', 3, 15, 1, '3:49', '/assests/Songs/Justin Bieber/My World/one_less_lonely_girl.mp3', 4, 11),
(53, 'Stuck In The Moment', 3, 15, 1, '3:43', '/assests/Songs/Justin Bieber/My World/stuck_in_the_moment.mp3', 5, 7),
(54, 'Boyfriend', 3, 16, 1, '2:51', '/assests/Songs/Justin Bieber/Believe/02. Boyfriend - Justin Bieber.mp3', 1, 14),
(55, 'As Long As You Love Me', 3, 16, 1, '2:49', '/assests/Songs/Justin Bieber/Believe/03. As Long As You Love Me.mp3', 2, 10),
(56, 'Beauty And A Beat', 3, 16, 1, '2:48', '/assests/Songs/Justin Bieber/Believe/10. Beauty And A Beat.mp3', 3, 3),
(57, 'Mistletoe', 3, 17, 1, '3:02', '/assests/Songs/Justin Bieber/Under The Mistletoe/02-Mistletoe.mp3', 1, 12),
(58, 'One Call Away', 6, 18, 1, '3:14', '/assests/Songs/Charlie Puth/Nine Track Mind/1-01 One Call Away.mp3', 1, 15),
(59, 'See You Again (Solo Version)', 6, 18, 1, '3:48', '/assests/Songs/Charlie Puth/Nine Track Mind/1-13 See You Again (Solo Version).mp3', 3, 7),
(60, 'We Don\'t Talk Anymore', 6, 18, 1, '3:37', '/assests/Songs/Charlie Puth/Nine Track Mind/1-05 We Don\'t Talk Anymore.mp3', 2, 18),
(61, 'Attention', 6, 19, 1, '3:28', '/assests/Songs/Charlie Puth/Voicenotes/02. Attention.mp3', 1, 9),
(62, 'How Long', 6, 19, 1, '3:20', '/assests/Songs/Charlie Puth/Voicenotes/04. How Long.mp3', 2, 15),
(63, 'Let Me Love You', 15, 20, 1, '3:25', '/assests/Songs/Dj snake/Encore/13. Let Me Love You (Feat. Justin Bieber).mp3', 1, 12),
(64, 'There\'s Nothing Holdin\' Me Back', 4, 10, 1, '3:19', '/assests/Songs/Shawn Mendes/Illuminate/01 - There\'s Nothing Holdin\' Me Back.mp3', 1, 21),
(65, 'Mercy', 4, 10, 1, '3:28', '/assests/Songs/Shawn Mendes/Illuminate/03 - Mercy.mp3', 2, 11),
(66, 'Treat You Better', 4, 10, 1, '3:08', '/assests/Songs/Shawn Mendes/Illuminate/04 - Treat You Better.mp3', 3, 9),
(67, 'Mercy (acoustic)', 4, 10, 1, '3:39', '/assests/Songs/Shawn Mendes/Illuminate/16 - Mercy (acoustic).mp3', 4, 4),
(68, 'Stitches', 4, 21, 1, '3:26', '/assests/Songs/Shawn Mendes/Handwritten/02.Stitches.mp3', 1, 8),
(69, 'Closer', 11, 22, 1, '4:05', '/assests/Songs/The Chainsmokers/collage/03 Closer (feat. Halsey).mp3', 1, 3),
(70, 'Don\'t Let Me Down', 11, 22, 1, '3:28', '/assests/Songs/The Chainsmokers/collage/05 Don\'t Let Me Down (feat. Daya).mp3', 2, 6),
(71, 'Girls Like You', 9, 9, 1, '3:35', '/assests/Songs/Maroon 5/red pills blue/09 - Girls Like You.mp3', 1, 6),
(72, 'Animals', 9, 8, 1, '3:51', '/assests/Songs/Maroon 5/v/02 Animals.mp3', 1, 1),
(73, 'Sugar', 9, 8, 1, '3:55', '/assests/Songs/Maroon 5/v/05 Sugar.mp3', 2, 13),
(74, 'Beautiful', 8, 23, 1, '3:00', '/assests/Songs/Camila Cabello/Beautiful (Single)/Beautiful - Bazzi_ Camila .mp3', 1, 9),
(75, 'I\'m A Mess', 14, 24, 1, '3:15', '/assests/Songs/Bebe Rexha/Expectation/02 I\'m a Mess.mp3', 1, 7),
(76, 'God is a woman', 13, 25, 1, '3:17', '/assests/Songs/Ariana Grande/Sweetener/05. God is a woman.mp3', 1, 4),
(77, 'No tears left to cry', 13, 25, 1, '3:25', '/assests/Songs/Ariana Grande/Sweetener/10. no tears left to cry.mp3', 2, 5),
(78, 'Youngblood', 7, 26, 1, '3:23', '/assests/Songs/fiveSOS/Youngblood/Youngblood.mp3', 1, 9),
(79, 'Don\'t Stop', 7, 6, 1, '2:49', '/assests/Songs/fiveSOS/5SOS/Don\'t Stop .mp3', 2, 11),
(80, 'See You Again', 16, 27, 8, '3:50', '/assests/Songs/wiz khalifa/f&f7/07 - See You Again (Feat. Charlie Puth) - Wiz Khalifa.mp3', 1, 6),
(81, 'Dusk Till Dawn ', 5, 28, 1, '4:27', '/assests/Songs/ZAYN/Dusk Till Dawn (Single)/01 Dusk Till Dawn (feat. Sia).mp3', 1, 13),
(82, 'Let Me', 5, 29, 1, '3:05', '/assests/Songs/ZAYN/Let Me/01 Let Me.m4a', 1, 6),
(83, 'PILLOWTALK', 5, 30, 1, '3:22', '/assests/Songs/ZAYN/Mind of Mine/02 PILLOWTALK.mp3', 1, 13),
(84, 'Despacito', 17, 31, 6, '3:48', '/assests/Songs/Luis Fonsi/Despacito/Despacito.mp3', 1, 13),
(85, 'Sick Boy', 11, 32, 1, '3:13', '/assests/Songs/The Chainsmokers/sick boy/04 Sick Boy.mp3', 1, 14),
(86, 'In My Blood', 4, 33, 1, '3:31', '/assests/Songs/Shawn Mendes/Shawn Mendes/01 In My Blood.mp3', 1, 12),
(87, 'Love Me Like You Do', 12, 34, 8, '4:10', '/assests/Songs/Ellie Goulding/50SOG/05 Love Me Like You Do .mp3', 1, 11),
(88, 'I See Fire', 2, 2, 8, '4:58', '/assests/Songs/Ed Sheeran/x/16 - I See Fire.mp3', 3, 22),
(89, 'The A Team', 2, 35, 1, '4:21', '/assests/Songs/Ed Sheeran/+/01 - The A Team.mp3', 1, 13),
(90, 'Lego House', 2, 35, 1, '3:03', '/assests/Songs/Ed Sheeran/+/09 - Lego House.mp3', 2, 15),
(91, 'The City', 2, 35, 1, '3:55', '/assests/Songs/Ed Sheeran/+/08 - The City.mp3', 3, 7),
(92, 'Kill Em with Kindness', 10, 36, 1, '3:38', '/assests/Songs/Selena Gomez/Revival/02 Kill Em with Kindness.mp3', 1, 4),
(93, 'Hands to Myself', 10, 36, 1, '3:20', '/assests/Songs/Selena Gomez/Revival/03 Hands to Myself.mp3', 2, 5),
(94, 'Same Old Love', 10, 36, 1, '3:49', '/assests/Songs/Selena Gomez/Revival/04 Same Old Love.mp3', 3, 11),
(95, 'I Know What You Did Last Summer', 4, 21, 1, '3:43', '/assests/Songs/Shawn Mendes/Handwritten/I Know What You Did Last Summer.mp3', 2, 5),
(96, 'Forever Young', 1, 37, 1, '3:25', '/assests/Songs/One Direction/forever young/Forver Young.mp3', 1, 35),
(97, 'Alone', 18, 38, 4, '3:05', '/assests/Songs/Alan Walker/Alone/Alone.mp3', 1, 13),
(98, 'Faded', 18, 39, 3, '3:32', '/assests/Songs/Alan Walker/Faded/Faded.mp3', 1, 6),
(99, 'Legends Never Die', 18, 40, 3, '2:47', '/assests/Songs/Alan Walker/Legends Never Die/Legends Never Die.mp3', 1, 9),
(100, 'Darkside', 18, 41, 1, '3:31', '/assests/Songs/Alan Walker/Darkside/Darkside.mp3', 1, 32),
(101, 'Havana', 8, 42, 1, '3:37', '/assests/Songs/Camila Cabello/Camila/04 Havana.mp3', 1, 7),
(102, ' Never Be the Same', 8, 42, 1, '3:47', '/assests/Songs/Camila Cabello/Camila/01 Never Be the Same.mp3', 2, 5),
(103, 'Sign Of The Times', 19, 43, 1, '5:40', '/assests/Songs/Harry Styles/Sign Of The Times/Sign Of The Times.mp3', 1, 13),
(104, 'Strip That Down', 20, 44, 1, '3:24', '/assests/Songs/Liam Payne/Strip That Down/Strip That Down .mp3', 1, 10),
(105, 'No Brainer', 21, 45, 5, '4:20', '/assests/Songs/Dj Khaled/No Brainer/01 No Brainer (feat. Justin Bieber, Chance the Rapper & Quavo).mp3', 1, 15);

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
(1, 'admin', 'Harsh', 'Banjare', 'Harshbanjare007@outlook.com', '0192023a7bbd73250516f069df18b500', '2018-09-06 00:00:00', 'assests/Images/Profile/default.jpg', 11, '[\"105\",\"11\"]'),
(12, 'harsh', 'Tony', 'Stark', 'Harshbanjare007.2@gmail.com', '998e0cd8d2a332a1661674768a9b43b0', '2018-08-16 00:00:00', 'assests/Images/Profile/default.jpg', 51, '[\"49\",\"50\",\"51\",\"52\",\"53\"]'),
(13, 'Harshisme', 'Harsh', 'Banjare', 'Harshbanjare007@gmail.com', '998e0cd8d2a332a1661674768a9b43b0', '2018-08-17 00:00:00', 'assests/Images/Profile/default.jpg', 0, ''),
(14, 'harsh123s', 'Harsh', 'Banjare', 'Anything1@l0real.net', '998e0cd8d2a332a1661674768a9b43b0', '2018-08-27 00:00:00', 'assests/Images/Profile/default.jpg', 0, ''),
(15, 'harsh123', 'Harsh', 'Banjare', 'Anything@l0real.net', '998e0cd8d2a332a1661674768a9b43b0', '2018-08-28 00:00:00', 'assests/Images/Profile/default.jpg', 59, '[\"59\",\"92\",\"75\",\"6\",\"5\",\"7\",\"85\",\"79\",\"54\",\"69\",\"47\",\"60\",\"102\",\"103\",\"77\",\"99\",\"95\",\"31\",\"81\",\"3\",\"48\",\"26\",\"62\",\"23\",\"37\",\"8\",\"93\",\"36\",\"34\",\"76\",\"104\",\"97\",\"87\",\"66\",\"65\",\"44\",\"89\",\"11\",\"53\",\"55\",\"98\",\"2\",\"33\",\"24\",\"57\",\"13\",\"63\",\"27\",\"25\",\"56\",\"50\",\"61\",\"20\",\"22\",\"10\",\"67\",\"19\",\"32\",\"73\",\"49\",\"14\",\"88\",\"91\",\"70\",\"100\",\"58\",\"83\",\"80\",\"72\",\"51\",\"4\",\"90\",\"15\",\"64\",\"30\",\"46\",\"18\",\"17\",\"21\",\"84\",\"101\",\"9\",\"82\",\"105\",\"28\",\"29\",\"52\",\"12\",\"78\",\"86\"]'),
(16, 'harsh234', 'Harsh', 'Banjare', 'Hhhh@gmail.com', '998e0cd8d2a332a1661674768a9b43b0', '2018-09-05 00:00:00', 'assests/Images/Profile/default.jpg', 0, ''),
(17, 'harsh123456', 'Harsh', 'Banjare', 'Harsh@nothing.com', '998e0cd8d2a332a1661674768a9b43b0', '2018-09-05 00:00:00', 'assests/Images/Profile/default.jpg', 0, ''),
(18, 'harsh1234', 'Harsh', 'Banjare', 'Anything@l0real.com', '998e0cd8d2a332a1661674768a9b43b0', '2018-09-05 00:00:00', 'assests/Images/Profile/default.jpg', 0, ''),
(20, 'samWilson123', 'Sam', 'Wilson', 'Infinity007@gmail.com', '998e0cd8d2a332a1661674768a9b43b0', '2018-09-14 00:00:00', 'assests/Images/Profile/default.jpg', 0, ''),
(21, 'kar98', 'Kar', 'Sniper', 'Kar98@gmail.com', '5fda04f7871ddee065c51c26494f2f06', '2018-09-15 00:00:00', 'assests/Images/Profile/default.jpg', 0, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
