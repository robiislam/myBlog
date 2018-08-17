-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2018 at 05:29 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `ad_id` int(11) NOT NULL,
  `ad_img` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`ad_id`, `ad_img`) VALUES
(1, 'Untitled.png'),
(2, 'Untitled1.png');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `as_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sub_text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `post_page` int(11) DEFAULT NULL,
  `logo` text,
  `banner` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`as_id`, `name`, `sub_text`, `title`, `email`, `post_page`, `logo`, `banner`, `facebook`, `twitter`, `youtube`, `google`) VALUES
(3, 'myBlog', 'Best Blog Site in Bangladesh', 'myBlog | Best Blog Site ', 'myblog@mail.com', 5, 'logo.png', 'banner.jpg', 'http://facebook.com/robiulislam.13', 'http://twitter.com/', 'http://youtube.com/', 'http://plus.google.com/'),
(4, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `com_body` text,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `name`, `com_body`, `time`, `post_id`, `status`) VALUES
(37, 'robi', 'Best Post Ever', '2018-08-13 17:26:44', 17, 1),
(38, 'Robi', 'This Is an Inspiring Post', '2018-08-17 08:36:19', 37, 1),
(39, 'Robi', 'Nice Post', '2018-08-17 08:39:06', 42, 1),
(40, 'Robi', 'Best Post ever', '2018-08-17 08:39:48', 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` text,
  `body` text,
  `catagory_id` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tags` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `body`, `catagory_id`, `image`, `author`, `date`, `tags`) VALUES
(33, 'This is a test post 1', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 13, 'img6.jpg', 'Robi', '2018-08-17 08:27:38', 'test 1'),
(34, 'This is a test post 2', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 12, 'img7.jpg', 'Robi', '2018-08-17 08:27:57', 'test 2'),
(35, 'This is a test post 3', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 12, 'img8.jpg', 'Robi', '2018-08-17 08:28:14', 'test 3'),
(36, 'This is a test post 4', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 15, 'img3.jpg', 'Robi', '2018-08-17 08:28:34', 'test 4'),
(37, 'This is a test post 5', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 17, 'img5.jpg', 'Robi', '2018-08-17 08:28:55', 'test 5'),
(38, 'This is a test post 6', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 14, 'img2.jpg', 'Robi', '2018-08-17 08:29:22', 'test 6'),
(39, 'This is a test post 7', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 10, 'img1.jpg', 'Robi', '2018-08-17 08:29:39', 'test 7'),
(40, 'This is a test post 8', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 16, 'img9.jpg', 'Robi', '2018-08-17 08:29:58', 'test 8'),
(41, 'This is a test post 9', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 13, 'pexels-photo-122107.jpeg', 'Robi', '2018-08-17 08:30:24', 'test 9'),
(42, 'This is a test post 10', 'Morbi id nunc vitae magna aliquam molestie. In mattis malesuada luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ultrices, orci mollis convallis aliquet, ex justo venenatis odio, nec lobortis diam ante ut ante. Morbi sollicitudin nibh quis lorem viverra, sed finibus sapien tincidunt. Morbi faucibus varius est, a aliquet mauris ultricies eget. Sed feugiat blandit magna eget rhoncus. Proin a feugiat velit. Maecenas malesuada ultrices nisi at faucibus. Pellentesque venenatis lobortis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent eu velit eu nunc varius rhoncus eu sed ligula. Vivamus at interdum enim. Donec sollicitudin quam non velit suscipit, eu volutpat tellus rhoncus. Duis volutpat volutpat ligula ut eleifend. Proin ullamcorper vestibulum odio, et dignissim sapien egestas vel. Donec eu mauris orci. Quisque et tempor neque.\r\n\r\nCras ut libero dignissim, elementum nibh vel, ullamcorper nulla. Sed tortor purus, aliquam eget eros tempor, dapibus ornare lacus. Sed fermentum nibh nec risus rutrum, facilisis dictum ante venenatis. Ut blandit efficitur quam. Integer eget nisi nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In turpis dolor, porttitor eu nunc non, ultrices mattis nisi. Vestibulum ut iaculis nisl, at posuere tellus. Nulla congue vestibulum sapien eu iaculis. Phasellus ac augue magna. Mauris fermentum quis velit eu suscipit. Mauris quis magna sed diam sodales ultrices. Etiam in pulvinar purus. In et gravida nibh. Ut volutpat justo id velit egestas bibendum id et eros. Pellentesque vitae convallis sapien.\r\n\r\nSed sed iaculis odio. Cras id ipsum vitae diam rhoncus semper nec porttitor magna. Nam libero est, venenatis id congue in, convallis ut est. Sed dictum tellus magna, ac fringilla justo congue efficitur. Etiam a nunc dui. Suspendisse aliquam sollicitudin fermentum. Sed dapibus lacinia ipsum congue auctor. Sed vitae leo risus. Sed sit amet ipsum justo. Pellentesque aliquam at sem eget maximus. Ut hendrerit gravida magna non consectetur. Aliquam lacinia elementum orci eu bibendum. Quisque a diam nec libero gravida suscipit a non turpis. Mauris sit amet ligula mollis, sollicitudin mauris consectetur, malesuada nibh.\r\n\r\nUt a ultrices nunc, quis bibendum erat. Nulla sodales lacus sit amet libero posuere, et volutpat nisl elementum. Fusce sed scelerisque libero. Sed ut eros placerat, imperdiet nibh a, sodales risus. Nam a urna a neque ullamcorper vehicula. Curabitur maximus nisi mattis rhoncus semper. Suspendisse vel nisi ipsum. Mauris laoreet pulvinar vehicula. Fusce tempus, ex in auctor consectetur, dui nulla maximus sem, vel gravida nisl purus cursus neque. Praesent ornare mi sed diam tincidunt tincidunt. Etiam semper volutpat maximus. Sed neque justo, tempor vitae sem non, porttitor finibus nisl. Phasellus scelerisque nibh et metus vestibulum tempus. Duis hendrerit sit amet augue sit amet sagittis.', 11, '10000880.jpg', 'Robi', '2018-08-17 08:31:10', 'test 10');

-- --------------------------------------------------------

--
-- Table structure for table `post_catagory`
--

CREATE TABLE `post_catagory` (
  `catagory_id` int(11) NOT NULL,
  `catagory_name` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_catagory`
--

INSERT INTO `post_catagory` (`catagory_id`, `catagory_name`, `status`) VALUES
(10, 'Crime', 0),
(11, 'Bangladesh', 1),
(12, 'Education', 1),
(13, 'History', 1),
(14, 'Technology', 1),
(15, 'Media', 1),
(16, 'Sports', 1),
(17, 'Others', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0=not, 1=ok'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `pass`, `status`) VALUES
(11, 'Robi', 'robi@robi', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(12, 'banned', 'banned@banned', '81dc9bdb52d04dc20036dbd8313ed055', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_catagory`
--
ALTER TABLE `post_catagory`
  ADD PRIMARY KEY (`catagory_id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `post_catagory`
--
ALTER TABLE `post_catagory`
  MODIFY `catagory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
