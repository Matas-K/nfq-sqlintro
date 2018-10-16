SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `comments` (
  `commentId` int(11) UNSIGNED NOT NULL,
  `text` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `newsId` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `comments` (`commentId`, `text`, `date`, `newsId`) VALUES
(1, 'Komentaras #1 ir jos tekstas.', '2018-10-16 10:23:01', 22),
(2, 'Komentaras #2 ir jos tekstas.', '2018-10-16 10:23:02', 22),
(3, 'Komentaras #3 ir jos tekstas.', '2018-10-16 10:23:03', 22),
(4, 'Komentaras #4 ir jos tekstas.', '2018-10-16 10:23:04', 22),
(5, 'Komentaras #5 ir jos tekstas.', '2018-10-16 10:23:05', 22),
(6, 'Komentaras #6 ir jos tekstas.', '2018-10-16 10:25:01', 23),
(7, 'Komentaras #7 ir jos tekstas.', '2018-10-16 10:25:02', 23),
(8, 'Komentaras #8 ir jos tekstas.', '2018-10-16 10:25:03', 23),
(9, 'Komentaras #9 ir jos tekstas.', '2018-10-16 10:25:04', 23),
(10, 'Komentaras #10 ir jos tekstas.', '2018-10-16 10:25:05', 23),
(11, 'Komentaras #11 ir jos tekstas.', '2018-10-16 10:27:01', 24),
(12, 'Komentaras #12 ir jos tekstas.', '2018-10-16 10:27:02', 24),
(13, 'Komentaras #13 ir jos tekstas.', '2018-10-16 10:27:03', 24),
(14, 'Komentaras #14 ir jos tekstas.', '2018-10-16 10:27:04', 24),
(15, 'Komentaras #15 ir jos tekstas.', '2018-10-16 10:27:05', 24),
(16, 'Komentaras #16 ir jos tekstas.', '2018-10-16 10:29:01', 25),
(17, 'Komentaras #17 ir jos tekstas.', '2018-10-16 10:29:02', 25),
(18, 'Komentaras #18 ir jos tekstas.', '2018-10-16 10:29:03', 25),
(19, 'Komentaras #19 ir jos tekstas.', '2018-10-16 10:29:04', 25),
(20, 'Komentaras #20 ir jos tekstas.', '2018-10-16 10:29:05', 25),
(21, 'Komentaras #21 ir jos tekstas.', '2018-10-16 10:31:01', 26),
(22, 'Komentaras #22 ir jos tekstas.', '2018-10-16 10:31:02', 26),
(23, 'Komentaras #23 ir jos tekstas.', '2018-10-16 10:31:03', 26),
(24, 'Komentaras #24 ir jos tekstas.', '2018-10-16 10:31:04', 26),
(25, 'Komentaras #25 ir jos tekstas.', '2018-10-16 10:31:05', 26),
(26, 'Komentaras #26 ir jos tekstas.', '2018-10-16 10:33:01', 27),
(27, 'Komentaras #27 ir jos tekstas.', '2018-10-16 10:33:02', 27),
(28, 'Komentaras #28 ir jos tekstas.', '2018-10-16 10:33:03', 27),
(29, 'Komentaras #29 ir jos tekstas.', '2018-10-16 10:33:04', 27),
(30, 'Komentaras #30 ir jos tekstas.', '2018-10-16 10:33:05', 27),
(31, 'Komentaras #31 ir jos tekstas.', '2018-10-16 10:35:01', 28),
(32, 'Komentaras #32 ir jos tekstas.', '2018-10-16 10:35:02', 28),
(33, 'Komentaras #33 ir jos tekstas.', '2018-10-16 10:35:03', 28),
(34, 'Komentaras #34 ir jos tekstas.', '2018-10-16 10:35:04', 28),
(35, 'Komentaras #35 ir jos tekstas.', '2018-10-16 10:35:05', 28),
(36, 'Komentaras #36 ir jos tekstas.', '2018-10-16 10:37:01', 29),
(37, 'Komentaras #37 ir jos tekstas.', '2018-10-16 10:37:02', 29),
(38, 'Komentaras #38 ir jos tekstas.', '2018-10-16 10:37:03', 29),
(39, 'Komentaras #39 ir jos tekstas.', '2018-10-16 10:37:04', 29),
(40, 'Komentaras #40 ir jos tekstas.', '2018-10-16 10:37:05', 29),
(41, 'Komentaras #41 ir jos tekstas.', '2018-10-16 10:39:01', 30),
(42, 'Komentaras #42 ir jos tekstas.', '2018-10-16 10:39:02', 30),
(43, 'Komentaras #43 ir jos tekstas.', '2018-10-16 10:39:03', 30),
(44, 'Komentaras #44 ir jos tekstas.', '2018-10-16 10:39:04', 30),
(45, 'Komentaras #45 ir jos tekstas.', '2018-10-16 10:39:05', 30);

CREATE TABLE `news` (
  `newsId` int(11) UNSIGNED NOT NULL,
  `text` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `news` (`newsId`, `text`, `date`) VALUES
(1, 'Naujiena Nr.: 1 ir kažkoks jos tekstas.', '2018-10-16 09:01:10'),
(2, 'Naujiena Nr.: 2 ir kažkoks jos tekstas.', '2018-10-16 09:02:10'),
(3, 'Naujiena Nr.: 3 ir kažkoks jos tekstas.', '2018-10-16 09:03:10'),
(4, 'Naujiena Nr.: 4 ir kažkoks jos tekstas.', '2018-10-16 09:04:10'),
(5, 'Naujiena Nr.: 5 ir kažkoks jos tekstas.', '2018-10-16 09:05:10'),
(6, 'Naujiena Nr.: 6 ir kažkoks jos tekstas.', '2018-10-16 09:06:10'),
(7, 'Naujiena Nr.: 7 ir kažkoks jos tekstas.', '2018-10-16 09:07:10'),
(8, 'Naujiena Nr.: 8 ir kažkoks jos tekstas.', '2018-10-16 09:08:10'),
(9, 'Naujiena Nr.: 9 ir kažkoks jos tekstas.', '2018-10-16 09:09:10'),
(10, 'Naujiena Nr.: 10 ir kažkoks jos tekstas.', '2018-10-16 09:10:10'),
(11, 'Naujiena Nr.: 11 ir kažkoks jos tekstas.', '2018-10-16 09:11:10'),
(12, 'Naujiena Nr.: 12 ir kažkoks jos tekstas.', '2018-10-16 09:12:10'),
(13, 'Naujiena Nr.: 13 ir kažkoks jos tekstas.', '2018-10-16 09:13:10'),
(14, 'Naujiena Nr.: 14 ir kažkoks jos tekstas.', '2018-10-16 09:14:10'),
(15, 'Naujiena Nr.: 15 ir kažkoks jos tekstas.', '2018-10-16 09:15:10'),
(16, 'Naujiena Nr.: 16 ir kažkoks jos tekstas.', '2018-10-16 09:16:10'),
(17, 'Naujiena Nr.: 17 ir kažkoks jos tekstas.', '2018-10-16 09:17:10'),
(18, 'Naujiena Nr.: 18 ir kažkoks jos tekstas.', '2018-10-16 09:18:10'),
(19, 'Naujiena Nr.: 19 ir kažkoks jos tekstas.', '2018-10-16 09:19:10'),
(20, 'Naujiena Nr.: 20 ir kažkoks jos tekstas.', '2018-10-16 09:20:10'),
(21, 'Naujiena Nr.: 21 ir kažkoks jos tekstas.', '2018-10-16 09:21:10'),
(22, 'Naujiena Nr.: 22 ir kažkoks jos tekstas.', '2018-10-16 09:22:10'),
(23, 'Naujiena Nr.: 23 ir kažkoks jos tekstas.', '2018-10-16 09:24:10'),
(24, 'Naujiena Nr.: 24 ir kažkoks jos tekstas.', '2018-10-16 09:26:10'),
(25, 'Naujiena Nr.: 25 ir kažkoks jos tekstas.', '2018-10-16 09:28:10'),
(26, 'Naujiena Nr.: 26 ir kažkoks jos tekstas.', '2018-10-16 09:30:10'),
(27, 'Naujiena Nr.: 27 ir kažkoks jos tekstas.', '2018-10-16 09:32:10'),
(28, 'Naujiena Nr.: 28 ir kažkoks jos tekstas.', '2018-10-16 09:34:10'),
(29, 'Naujiena Nr.: 29 ir kažkoks jos tekstas.', '2018-10-16 09:36:10'),
(30, 'Naujiena Nr.: 30 ir kažkoks jos tekstas.', '2018-10-16 09:38:10');

ALTER TABLE `comments` ADD PRIMARY KEY (`commentId`), ADD KEY `newsId` (`newsId`);
ALTER TABLE `news` ADD PRIMARY KEY (`newsId`);

ALTER TABLE `comments` MODIFY `commentId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `news`MODIFY `newsId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
