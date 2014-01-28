-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2014 at 10:36 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gyarunity`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tags` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `id_member`, `date`, `title`, `text`, `caption`, `tags`) VALUES
(1, 1, '2008-04-02', 'Title one', 'Quod opera consulta cogitabatur astute, ut hoc insidiarum genere Galli periret avunculus, ne eum ut praepotens acueret in fiduciam exitiosa coeptantem. verum navata est opera diligens hocque dilato Eusebius praepositus cubiculi missus est Cabillona aurum secum perferens, quo per turbulentos seditionum concitores occultius distributo et tumor consenuit militum et salus est in tuto locata praefecti. deinde cibo abunde perlato castra die praedicto sunt mota.', 'image_one.jpg', 'nailart, rokku'),
(2, 2, '2014-01-07', 'Meow', 'Lalala \r\n\r\nQuod opera consulta cogitabatur astute, ut hoc insidiarum genere Galli periret avunculus, ne eum ut praepotens acueret in fiduciam exitiosa coeptantem. verum navata est opera diligens hocque dilato Eusebius praepositus cubiculi missus est Cabillona aurum secum perferens, quo per turbulentos seditionum concitores occultius distributo et tumor consenuit militum et salus est in tuto locata praefecti. deinde cibo abunde perlato castra die praedicto sunt mota.\r\n\r\n<img src="http://tokyofashion.com/wp-content/uploads/2012/11/A2398-Kuro-Gyaru-Black-Diamond-Yukahime.jpg" width="200"/>\r\n\r\nQuod opera consulta cogitabatur astute, ut hoc insidiarum genere Galli periret avunculus, ne eum ut praepotens acueret in fiduciam exitiosa coeptantem. verum navata est opera diligens hocque dilato Eusebius praepositus cubiculi missus est Cabillona aurum secum perferens, quo per turbulentos seditionum concitores occultius distributo et tumor consenuit militum et salus est in tuto locata praefecti. deinde cibo abunde perlato castra die praedicto sunt mota.', 'image_two.jpg', 'life, selfie');

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE IF NOT EXISTS `description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `welcome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`id`, `welcome`, `message`) VALUES
(1, 'Bienvenue sur notre site', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed massa magna, volutpat id justo et, mollis congue lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras molestie libero in dolor dapibus fringilla. ');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_link`
--

CREATE TABLE IF NOT EXISTS `gallery_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `gallery_link`
--

INSERT INTO `gallery_link` (`id`, `gallery_id`, `image_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 10),
(11, 4, 11),
(12, 4, 12),
(13, 4, 13);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`) VALUES
(1, '0.jpg'),
(2, '1.jpg'),
(3, '2.jpg'),
(4, '3.jpg'),
(5, '4.jpg'),
(6, '5.jpg'),
(7, '6.jpg'),
(8, '7.jpg'),
(9, '8.jpg'),
(10, '9.jpg'),
(11, '10.jpg'),
(12, '11.jpg'),
(13, '12.jpg'),
(14, '13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `makeovers`
--

CREATE TABLE IF NOT EXISTS `makeovers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) NOT NULL,
  `before` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `after` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `id_gallery` int(11) NOT NULL,
  `id_member_changed` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `makeovers`
--

INSERT INTO `makeovers` (`id`, `id_member`, `before`, `after`, `text`, `id_gallery`, `id_member_changed`) VALUES
(1, 1, 'b_one.jpg', 'a_one.jpg', '\r\n	\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', 3, 2),
(2, 2, 'a_one.jpg', 'b_one.jpg', 'lol', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('M','N') COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `psswd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_gallery` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `social` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `love` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `astro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `type`, `mail`, `psswd`, `pseudo`, `status`, `id_gallery`, `description`, `presentation`, `img`, `social`, `date`, `love`, `hate`, `style`, `astro`) VALUES
(1, 'M', '', '', 'Galily KS', 'This is the status', 1, 'This is a short text ', 'I love bamboo', 'member_one.jpg', 'Twitter:Galily*Facebook:Gali*Tumblr:KS', '2010-01-19', 'me', 'me', 'rokku', 'virgin'),
(2, 'N', '', '', 'Rikki', 'This is another status', 2, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mattis porta tempus. Donec condimentum, ligula ac viverra lobortis, orci augue ultricies nisl, vitae lacinia ligula nisl id risus. Fusce iaculis rhoncus viverra. In id ipsum egestas, aliquet sapien in, hendrerit dolor. Donec malesuada elit bibendum erat tempus hendrerit. Duis rutrum lorem ut lobortis ullamcorper. Integer interdum orci dui, in dictum magna sollicitudin et. Sed nisl leo, posuere non risus vitae, dapibus posuere diam. Aliquam tristique commodo orci eu hendrerit. In viverra pharetra magna, in viverra metus ultrices id. In nec velit id lorem egestas tempus. Donec sollicitudin sed mauris nec suscipit. Aenean malesuada tempus sem quis rutrum.\r\n\r\nPellentesque sit amet magna sed ante pellentesque rhoncus eget in quam. Phasellus ut erat tempor, vulputate lorem at, laoreet nunc. Ut eu purus vel felis faucibus facilisis. Nunc imperdiet luctus dui, in malesuada augue viverra vitae. Nam quis tellus tempus, tristique sapien nec, hendrerit tellus. Sed viverra, ante quis venenatis lacinia, nisi massa pretium elit, sed dictum justo felis ut arcu. Duis fringilla elementum justo non dictum. Curabitur id orci sit amet justo congue faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc non libero eget urna congue pretium vitae in libero. Mauris non euismod sapien, luctus consectetur purus. Phasellus condimentum sagittis mi, vel mattis dui iaculis ut. Proin lectus leo, dapibus non arcu a, porttitor dictum dui.\r\n\r\nMauris rutrum placerat magna, a euismod est egestas sit amet. Quisque sit amet tincidunt orci, eu blandit mi. Quisque pellentesque cursus euismod. Ut iaculis auctor tellus suscipit condimentum. Fusce a dui diam. Morbi eu eleifend arcu. Aenean risus ante, pellentesque ut lacinia eget, venenatis vel risus. Ut eget blandit enim, et interdum tortor. Cras rutrum nulla a ante blandit rhoncus. Sed id varius sem. Nunc ut metus ut erat accumsan adipiscing. Suspendisse ut eros eleifend, sollicitudin metus nec, accumsan lorem. ', 'This is me', 'member_two.jpg', 'Twitter:Kestion*Google:Kestion', '2014-01-05', 'cats', 'beef', 'romantic', 'pisces');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `label`, `img`) VALUES
(1, 'members', 'members.jpg'),
(2, 'newcomers', 'newcomers.jpg'),
(3, 'makeovers', 'makeovers.jpg'),
(4, 'events', 'events.jpg'),
(5, 'articles', 'articles.jpg'),
(6, 'meetups', 'meetups.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
