-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 22 2021 г., 14:45
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cms_coding`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Limbajul PHP'),
(2, 'Limbajul HTML'),
(3, 'Stiluri CSS'),
(4, 'Limbajul JavaScript'),
(5, 'Adobe Photoshop'),
(9, 'Corel DRAW');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `comment_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Neaprobat',
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `comment_name`, `comment_email`, `body`, `status`, `post_id`) VALUES
(3, 'Cristina', 'briceag.cristina1@gmail.com', 'Nice post:)', 'Aprobat', 40),
(4, 'Cristina', 'briceag.cristina1@gmail.com', 'Nice post:)', 'Dezaprobat', 40),
(5, 'Cristina', 'briceag.cristina1@gmail.com', 'Nice post:)', 'Dezaprobat', 40),
(6, 'Cristina', 'briceag.cristina1@gmail.com', 'Nice post:)', 'Dezaprobat', 40),
(7, 'Костя', 'info@artshark.ru', 'i love you', 'Aprobat', 40);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `post_category` varchar(225) CHARACTER SET utf8 NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_author` varchar(255) CHARACTER SET utf8 NOT NULL,
  `post_content` text CHARACTER SET utf8 NOT NULL,
  `post_date` varchar(255) CHARACTER SET utf8 NOT NULL,
  `post_image` text CHARACTER SET utf8 NOT NULL,
  `post_comment_count` int(255) NOT NULL,
  `post_views` int(255) NOT NULL,
  `post_tags` text CHARACTER SET utf8 NOT NULL,
  `post_status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'draft',
  `post_track` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_category`, `post_category_id`, `post_author`, `post_content`, `post_date`, `post_image`, `post_comment_count`, `post_views`, `post_tags`, `post_status`, `post_track`) VALUES
(39, 'Server web local', 'Limbajul PHP', 1, 'Bounegru Cristina', '\0P\0e\0n\0t\0r\0u\0 \0a\0 \0p\0u\0t\0e\0a\0 \0r\0u\0l\0a\0 \0s\0c\0e\0n\0a\0r\0i\0i\0 \0p\0h\0p\0(\0s\0c\0r\0i\0p\0t\0u\0r\0i\0)\0 \0a\0v\0e\0m\0 \0n\0e\0v\0o\0i\0e\0 \0s\0 \0p\0r\0o\0g\0r\0a\0m\0m\0 \0c\0a\0l\0c\0u\0l\0a\0t\0o\0r\0u\0l\0 \0?\0n\0 \0c\0a\0l\0i\0t\0a\0t\0e\0 \0d\0e\0 \0s\0e\0r\0v\0e\0r\0 \0W\0e\0b\0,\0 \0s\0e\0r\0v\0e\0r\0 \0d\0e\0 \0a\0p\0l\0i\0c\0a\0i\0i\0 \0P\0H\0P\0 \0i\0 \0n\0u\0 \0?\0n\0 \0u\0l\0t\0i\0m\0u\0l\0 \0r\0?\0n\0d\0 \0s\0e\0r\0v\0e\0r\0 \0d\0e\0 \0B\0D\0 \0M\0y\0S\0Q\0L\0.\0 \0A\0c\0e\0s\0t\0e\0 \0c\0o\0m\0p\0o\0n\0e\0n\0t\0e\0 \0s\0o\0f\0t\0w\0a\0r\0e\0 \0d\0e\0 \0b\0a\0z\0 \0n\0e\0c\0e\0s\0a\0r\0e\0 \0(\0M\0y\0S\0Q\0L\0,\0 \0A\0p\0a\0c\0h\0e\0 \0i\0 \0P\0H\0P\0)\0 \0s\0u\0n\0t\0 \0g\0r\0a\0t\0u\0i\0t\0e\0 \0(\0d\0i\0n\0 \0c\0a\0t\0e\0g\0o\0r\0i\0a\0 \0\"\0o\0p\0e\0n\0 \0s\0o\0u\0r\0c\0e\0\"\0)\0 \0i\0 \0p\0o\0t\0 \0f\0i\0 \0d\0e\0s\0c\0r\0c\0a\0t\0e\0 \0d\0e\0 \0p\0e\0 \0s\0i\0t\0e\0-\0u\0l\0 \0o\0f\0i\0c\0i\0a\0l\0 \0a\0l\0 \0p\0r\0o\0d\0d\0u\0c\0t\0o\0r\0u\0l\0u\0i\0.\0 \0D\0u\0p\0 \0i\0n\0s\0t\0a\0l\0a\0r\0e\0a\0 \0f\0i\0e\0c\0r\0u\0i\0a\0 \0d\0i\0n\0 \0a\0c\0e\0s\0t\0e\0 \0a\0p\0l\0i\0c\0a\0i\0i\0 \0a\0p\0a\0r\0e\0 \0n\0e\0c\0e\0s\0i\0t\0a\0t\0e\0a\0 \0c\0o\0n\0f\0i\0g\0u\0r\0r\0i\0i\0 \0l\0o\0r\0,\0 \0c\0a\0r\0e\0 \0u\0n\0e\0o\0r\0i\0 \0e\0s\0t\0e\0 \0d\0i\0f\0i\0c\0i\0l\0 \0p\0e\0n\0t\0r\0u\0 \0?\0n\0c\0e\0p\0t\0o\0r\0i\0.\0 \0P\0e\0n\0t\0r\0u\0 \0a\0 \0e\0v\0i\0t\0a\0 \0p\0r\0o\0b\0l\0e\0m\0e\0l\0e\0 \0c\0o\0n\0f\0i\0g\0u\0r\0r\0i\0i\0,\0 \0p\0u\0t\0e\0m\0 \0i\0n\0s\0t\0a\0l\0a\0 \0u\0n\0 \0p\0a\0c\0h\0e\0t\0 \0c\0o\0m\0p\0l\0e\0t\0 \0c\0e\0 \0c\0o\0n\0i\0n\0e\0 \0A\0p\0a\0c\0h\0e\0 \0+\0 \0P\0H\0P\0 \0+\0 \0M\0y\0S\0Q\0L\0 \0+\0 \0P\0H\0P\0M\0y\0A\0d\0m\0i\0n\0 \0c\0a\0r\0e\0 \0s\0e\0 \0n\0u\0m\0e\0t\0e\0 \0X\0A\0M\0P\0P\0 \0(\0P\0H\0P\0T\0r\0i\0a\0d\0,\0 \0E\0a\0s\0y\0P\0h\0p\0,\0 \0B\0a\0s\0e\0,\0 \0W\0a\0m\0p\0S\0e\0r\0v\0e\0r\0,\0 \0D\0e\0n\0v\0e\0r\0,\0 \0.\0.\0.\0)\0.\0 \0A\0p\0l\0i\0c\0a\0i\0a\0 \0P\0H\0P\0M\0y\0A\0d\0m\0i\0n\0 \0i\0n\0c\0l\0u\0s\0 \0?\0n\0 \0p\0a\0c\0h\0e\0t\0u\0l\0 \0X\0A\0M\0P\0P\0 \0p\0e\0r\0m\0i\0t\0e\0 \0a\0d\0m\0i\0n\0i\0s\0t\0r\0a\0r\0e\0a\0 \0c\0o\0m\0o\0d\0 \0a\0 \0B\0D\0 \0M\0y\0S\0Q\0L\0.\0 \0?\0n\0a\0i\0n\0t\0e\0 \0d\0e\0 \0a\0 \0r\0u\0l\0a\0 \0s\0c\0r\0i\0p\0t\0u\0r\0i\0 \0P\0H\0P\0 \0v\0o\0m\0 \0l\0a\0n\0s\0a\0 \0a\0p\0l\0i\0c\0a\0i\0a\0 \0X\0A\0M\0P\0P\0 \0i\0 \0a\0n\0u\0m\0e\0 \0d\0i\0n\0 \0S\0t\0a\0r\0t\0/\0A\0l\0l\0 \0P\0r\0o\0g\0r\0a\0m\0s\0/\0A\0p\0a\0c\0h\0e\0 \0F\0r\0i\0e\0n\0d\0s\0/\0X\0A\0M\0P\0P\0/\0X\0A\0M\0P\0P\0 \0C\0o\0n\0t\0r\0o\0l\0 \0P\0a\0n\0e\0l\0,\0 \0d\0u\0p\0 \0c\0a\0r\0e\0 \0s\0e\0 \0v\0a\0 \0l\0a\0n\0s\0a\0 \0p\0a\0n\0o\0u\0l\0 \0d\0e\0 \0c\0o\0n\0t\0r\0o\0l\0 \0a\0l\0 \0a\0p\0l\0i\0c\0a\0i\0e\0i\0 \0X\0A\0M\0P\0P\0(\0v\0e\0z\0i\0 \0i\0m\0a\0g\0i\0n\0e\0a\0)\0.\0\r\0\n\0\r\0\n\0\r\0\n\0P\0e\0n\0t\0r\0u\0 \0a\0 \0l\0a\0n\0s\0a\0 \0s\0e\0r\0v\0e\0r\0u\0l\0 \0A\0p\0a\0c\0h\0e\0 \0a\0c\0i\0o\0n\0m\0 \0b\0u\0t\0o\0n\0u\0l\0 \0s\0t\0a\0r\0t\0 \0l\0a\0 \0m\0o\0d\0u\0l\0u\0l\0 \0A\0p\0a\0c\0h\0e\0 \0i\0 \0r\0e\0s\0p\0e\0c\0t\0i\0v\0 \0d\0a\0c\0 \0l\0u\0c\0r\0m\0 \0c\0u\0 \0B\0D\0 \0a\0c\0i\0o\0n\0m\0 \0b\0u\0t\0o\0n\0u\0l\0 \0s\0t\0a\0r\0t\0 \0l\0a\0 \0l\0a\0 \0m\0o\0d\0u\0l\0u\0l\0 \0M\0y\0S\0q\0l\0.\0 \0 \0P\0e\0n\0t\0r\0u\0 \0a\0 \0?\0n\0c\0h\0i\0d\0e\0 \0s\0e\0r\0v\0e\0r\0e\0l\0e\0 \0d\0e\0s\0c\0h\0i\0s\0e\0 \0v\0o\0m\0 \0a\0c\0i\0o\0n\0a\0 \0r\0e\0s\0p\0e\0c\0t\0i\0v\0 \0p\0e\0 \0b\0u\0t\0o\0a\0n\0e\0l\0e\0 \0s\0t\0o\0p\0 \0i\0a\0r\0 \0p\0e\0n\0t\0r\0u\0 \0a\0 \0?\0n\0c\0h\0i\0d\0e\0 \0a\0p\0l\0i\0c\0a\0i\0a\0 \0X\0A\0M\0P\0P\0 \0v\0o\0m\0 \0a\0c\0i\0o\0n\0a\0 \0e\0x\0i\0t\0.\0\r\0\n\0\r\0\n\0P\0e\0n\0t\0r\0u\0 \0a\0 \0v\0e\0r\0i\0f\0i\0c\0a\0 \0d\0a\0c\0 \0f\0u\0n\0c\0i\0o\0n\0e\0a\0z\0 \0a\0p\0l\0i\0c\0a\0i\0i\0l\0e\0 \0i\0n\0s\0t\0a\0l\0a\0t\0e\0,\0 \0v\0o\0m\0 \0l\0a\0n\0s\0a\0 \0b\0r\0o\0w\0s\0e\0r\0u\0l\0 \0i\0a\0r\0 \0?\0n\0 \0c\0?\0m\0p\0u\0l\0 \0d\0e\0 \0a\0d\0r\0e\0s\0e\0 \0s\0c\0r\0i\0e\0m\0:\0\r\0\n\0h\0t\0t\0p\0:\0/\0/\0l\0o\0c\0a\0l\0h\0o\0s\0t\0/\0x\0a\0m\0p\0p\0 \0?\0n\0 \0l\0o\0c\0 \0d\0e\0 \0l\0o\0c\0a\0l\0h\0o\0s\0t\0 \0s\0e\0 \0p\0o\0a\0t\0e\0 \0d\0e\0 \0s\0c\0r\0i\0s\0 \0i\0 \0I\0P\0 \0c\0a\0l\0c\0u\0l\0a\0t\0o\0r\0u\0l\0u\0i\0 \0s\0a\0u\0 \01\02\07\0.\00\0.\00\0.\01\0 \0.\0P\0e\0n\0t\0r\0u\0 \0a\0 \0r\0u\0l\0a\0 \0s\0c\0r\0i\0p\0t\0u\0r\0i\0l\0e\0 \0e\0l\0e\0 \0t\0r\0e\0b\0u\0i\0e\0s\0c\0 \0s\0a\0l\0v\0a\0t\0e\0(\0c\0o\0p\0i\0a\0t\0e\0)\0 \0?\0n\0 \0C\0:\0x\0a\0m\0p\0p\0h\0t\0d\0o\0c\0s\0.', 'Wednesday 17 February 2021', '../images/photo-1.jpg', 0, 0, 'php, xampp, BD', 'published', ''),
(40, 'Structura unui document html', 'Limbajul HTML', 2, 'Bounegru Cristina', '\0U\0n\0 \0s\0i\0t\0e\0 \0e\0s\0t\0e\0 \0f\0o\0r\0m\0a\0t\0 \0d\0i\0n\0 \0m\0a\0i\0 \0m\0u\0l\0t\0e\0 \0p\0a\0g\0i\0n\0i\0 \0i\0n\0t\0e\0r\0c\0o\0n\0e\0c\0t\0a\0t\0e\0.\0\r\0\n\0G\0a\0n\0d\0e\0s\0t\0e\0-\0t\0e\0 \0l\0a\0 \0u\0n\0 \0s\0i\0t\0e\0 \0c\0a\0 \0l\0a\0 \0o\0 \0c\0a\0r\0t\0e\0.\0 \0O\0 \0c\0a\0r\0t\0e\0 \0n\0u\0 \0p\0o\0a\0t\0e\0 \0c\0o\0n\0t\0i\0n\0e\0 \0o\0 \0s\0i\0n\0g\0u\0r\0a\0 \0p\0a\0g\0i\0n\0a\0.\0 \0M\0a\0i\0 \0m\0u\0l\0t\0e\0 \0p\0a\0g\0i\0n\0i\0 \0l\0i\0p\0i\0t\0e\0 \0i\0n\0t\0r\0e\0 \0e\0l\0e\0 \0f\0o\0r\0m\0e\0a\0z\0a\0 \0o\0 \0c\0a\0r\0t\0e\0.\0 \0A\0s\0t\0a\0 \0i\0n\0s\0e\0a\0m\0n\0a\0 \0c\0a\0 \0s\0i\0 \0u\0n\0 \0s\0i\0t\0e\0 \0t\0r\0e\0b\0u\0i\0e\0 \0s\0a\0 \0c\0o\0n\0t\0i\0n\0a\0 \0m\0a\0i\0 \0m\0u\0l\0t\0e\0 \0p\0a\0g\0i\0n\0i\0 \0c\0a\0r\0e\0 \0v\0o\0r\0 \0f\0i\0 \0\"\0l\0i\0p\0i\0t\0e\0\"\0 \0i\0n\0t\0r\0e\0 \0e\0l\0e\0 \0c\0u\0 \0a\0j\0u\0t\0o\0r\0u\0l\0 \0u\0n\0o\0r\0 \0l\0e\0g\0a\0t\0u\0r\0i\0 \0(\0a\0 \0h\0r\0e\0f\0)\0.\0 \0M\0a\0i\0 \0m\0u\0l\0t\0e\0 \0d\0e\0s\0p\0r\0e\0 \0l\0e\0g\0a\0t\0u\0r\0i\0 \0t\0e\0 \0v\0o\0i\0 \0i\0n\0v\0a\0t\0a\0 \0p\0e\0 \0p\0a\0r\0c\0u\0r\0s\0u\0l\0 \0a\0c\0e\0s\0t\0u\0i\0 \0t\0u\0t\0o\0r\0i\0a\0l\0.\0\r\0\n\0P\0a\0g\0i\0n\0i\0l\0e\0 \0u\0n\0u\0i\0 \0s\0i\0t\0e\0 \0s\0e\0 \0m\0a\0i\0 \0n\0u\0m\0e\0s\0c\0 \0s\0i\0 \0d\0o\0c\0u\0m\0e\0n\0t\0e\0 \0H\0T\0M\0L\0.\0\r\0\n\0\r\0\n\0 \0\r\0\n\0\r\0\n\0A\0c\0u\0m\0 \0c\0a\0 \0t\0e\0-\0a\0m\0 \0l\0a\0m\0u\0r\0i\0t\0 \0c\0u\0m\0 \0s\0t\0a\0 \0t\0r\0e\0a\0b\0a\0 \0c\0u\0 \0u\0n\0 \0s\0i\0t\0e\0,\0 \0t\0e\0 \0v\0o\0i\0 \0i\0n\0v\0a\0t\0a\0 \0c\0a\0r\0e\0 \0e\0s\0t\0e\0 \0s\0t\0r\0u\0c\0t\0u\0r\0a\0 \0u\0n\0u\0i\0 \0d\0o\0c\0u\0m\0e\0n\0t\0 \0H\0T\0M\0L\0.\0\r\0\n\0\r\0\n\0U\0n\0 \0d\0o\0c\0u\0m\0e\0n\0t\0 \0H\0T\0M\0L\0 \0e\0s\0t\0e\0 \0f\0o\0r\0m\0a\0t\0 \0d\0i\0n\0 \0m\0a\0i\0 \0m\0u\0l\0t\0e\0 \0e\0t\0i\0c\0h\0e\0t\0e\0 \0(\0t\0a\0g\0u\0r\0i\0)\0.\0\r\0\n\0\r\0\n\0E\0t\0i\0c\0h\0e\0t\0e\0l\0e\0 \0s\0u\0n\0t\0 \0d\0e\0 \0d\0o\0u\0a\0 \0t\0i\0p\0u\0r\0i\0:\0\r\0\n\0-\0p\0e\0r\0e\0c\0h\0e\0 \0:\0 \0<\0h\0t\0m\0l\0>\0 \0<\0/\0h\0t\0m\0l\0>\0;\0 \0<\0h\0e\0a\0d\0>\0 \0<\0/\0h\0e\0a\0d\0>\0;\0 \0<\0b\0o\0d\0y\0>\0 \0<\0/\0b\0o\0d\0y\0>\0;\0 \0e\0t\0c\0.\0\r\0\n\0-\0s\0i\0n\0g\0u\0l\0a\0r\0e\0:\0 \0<\0b\0r\0>\0;\0 \0<\0h\0r\0>\0;\0 \0e\0t\0c\0.\0\r\0\n\0A\0c\0u\0m\0 \0s\0a\0 \0e\0x\0p\0l\0i\0c\0a\0m\0 \0f\0i\0e\0c\0a\0r\0e\0 \0e\0t\0i\0c\0h\0e\0t\0a\0:\0\r\0\n\0\r\0\n\0<\0h\0t\0m\0l\0>\0 \0-\0 \0c\0u\0 \0a\0c\0e\0a\0s\0t\0a\0 \0e\0t\0i\0c\0h\0e\0t\0a\0 \0i\0n\0c\0e\0p\0e\0 \0o\0r\0i\0c\0e\0 \0d\0o\0c\0u\0m\0e\0n\0t\0 \0H\0T\0M\0L\0\r\0\n\0P\0r\0i\0n\0 \0f\0o\0l\0o\0s\0i\0r\0e\0a\0 \0a\0c\0e\0s\0t\0e\0i\0 \0e\0t\0h\0i\0c\0h\0e\0t\0e\0,\0 \0i\0i\0 \0s\0p\0u\0n\0e\0m\0 \0b\0r\0o\0w\0s\0e\0r\0-\0u\0l\0u\0i\0 \0c\0a\0 \0e\0s\0t\0e\0 \0v\0o\0r\0b\0a\0 \0d\0e\0 \0u\0n\0 \0f\0i\0s\0i\0e\0r\0 \0H\0T\0M\0L\0 \0p\0e\0n\0t\0r\0u\0 \0a\0 \0i\0l\0 \0p\0u\0t\0e\0a\0 \0a\0f\0i\0s\0a\0.\0\r\0\n\0<\0/\0h\0t\0m\0l\0>\0 \0-\0 \0a\0c\0e\0a\0s\0t\0a\0 \0e\0s\0t\0e\0 \0e\0t\0i\0c\0h\0e\0t\0a\0 \0d\0e\0 \0i\0n\0c\0h\0e\0i\0e\0r\0e\0.\0\r\0\n\0\r\0\n\0<\0h\0e\0a\0d\0>\0 \0-\0 \0i\0n\0t\0r\0e\0 \0a\0c\0e\0s\0t\0e\0 \0e\0t\0i\0c\0h\0e\0t\0e\0 \0s\0e\0 \0a\0f\0l\0a\0 \0e\0t\0i\0c\0h\0e\0t\0a\0 \0<\0t\0i\0t\0l\0e\0>\0<\0s\0t\0y\0l\0e\0>\0 \0s\0i\0 \0a\0l\0t\0e\0 \0e\0t\0i\0c\0h\0e\0t\0e\0 \0s\0p\0e\0c\0i\0f\0i\0c\0e\0 \0a\0c\0e\0s\0t\0u\0i\0 \0t\0a\0g\0\r\0\n\0<\0/\0h\0e\0a\0d\0>\0 \0-\0 \0a\0c\0e\0a\0s\0t\0a\0 \0e\0s\0t\0e\0 \0e\0t\0i\0c\0h\0e\0t\0a\0 \0d\0e\0 \0i\0n\0c\0h\0e\0i\0e\0r\0e\0.\0\r\0\n\0\r\0\n\0<\0t\0i\0t\0l\0e\0>\0 \0-\0 \0i\0n\0t\0r\0e\0 \0a\0c\0e\0a\0s\0t\0a\0 \0e\0t\0i\0c\0h\0e\0t\0a\0 \0s\0e\0 \0p\0u\0n\0e\0 \0t\0i\0t\0l\0u\0l\0 \0d\0o\0c\0u\0m\0e\0n\0t\0u\0l\0u\0i\0 \0c\0a\0r\0e\0 \0v\0a\0 \0a\0p\0a\0r\0e\0a\0 \0i\0n\0 \0b\0a\0r\0a\0 \0d\0e\0 \0t\0i\0t\0l\0u\0.\0\r\0\n\0<\0/\0t\0i\0t\0l\0e\0>\0 \0-\0 \0a\0c\0e\0a\0s\0t\0a\0 \0e\0s\0t\0e\0 \0e\0t\0i\0c\0h\0e\0t\0a\0 \0d\0e\0 \0i\0n\0c\0h\0e\0i\0e\0r\0e\0.\0\r\0\n\0\r\0\n\0<\0b\0o\0d\0y\0>\0 \0-\0 \0t\0o\0t\0 \0c\0e\0 \0v\0e\0i\0 \0s\0c\0r\0i\0e\0 \0i\0n\0t\0r\0e\0 \0a\0c\0e\0s\0t\0a\0 \0e\0t\0i\0c\0h\0e\0t\0a\0,\0 \0v\0a\0 \0f\0i\0 \0a\0f\0i\0s\0a\0t\0 \0i\0n\0 \0b\0r\0o\0w\0s\0e\0r\0\r\0\n\0<\0/\0b\0o\0d\0y\0>\0 \0-\0 \0a\0c\0e\0a\0s\0t\0a\0 \0e\0s\0t\0e\0 \0e\0t\0i\0c\0h\0e\0t\0a\0 \0d\0e\0 \0i\0n\0c\0h\0e\0i\0e\0r\0e\0.\0\r\0\n\0\r\0\n\0\r\0\n\0P\0e\0n\0t\0r\0u\0 \0a\0 \0i\0n\0t\0e\0l\0e\0g\0e\0 \0m\0a\0i\0 \0b\0i\0n\0e\0,\0 \0g\0a\0n\0d\0e\0s\0t\0e\0-\0t\0e\0 \0l\0a\0 \0d\0o\0c\0u\0m\0e\0n\0t\0u\0l\0 \0H\0T\0M\0L\0 \0c\0a\0 \0l\0a\0 \0o\0 \0p\0a\0g\0i\0n\0a\0 \0d\0i\0n\0t\0r\0-\0o\0 \0c\0a\0r\0t\0e\0.', 'Wednesday 17 February 2021', '../images/photo-3.jpg', 0, 0, 'html, body, doc, marcaj', 'publicat', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `profile_pic` text CHARACTER SET utf8 NOT NULL,
  `is_active` varchar(2) NOT NULL DEFAULT 'Da',
  `post_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Profesor'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
