-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  5 юни 2017 в 21:31
-- Версия на сървъра: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mebeli_krasi`
--

-- --------------------------------------------------------

--
-- Структура на таблица `admin`
--

CREATE TABLE `admin` (
  `email` varchar(120) NOT NULL,
  `password` text NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `admin`
--

INSERT INTO `admin` (`email`, `password`, `first_name`, `last_name`) VALUES
('krasi@abv.bg', 'qwerty', 'Krasi', 'Djambazov');

-- --------------------------------------------------------

--
-- Структура на таблица `categories`
--

CREATE TABLE `categories` (
  `category_name` varchar(120) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `categories`
--

INSERT INTO `categories` (`category_name`, `avatar`) VALUES
('Кухни и Легла', 'img/af981a3248241710439146272930b3ddaabb1481.jpg'),
('Детски', 'img/42643ec674f06e9ee8e62ebed9498c6fca514681.jpg'),
('Спални', 'img/8a2e569c7f96b7819fd910ea4b447b5537389aa8.jpg'),
('Антрета', 'img/cbdde6869172ef12b1b1b48748824a5d8c76bba9.jpg');

-- --------------------------------------------------------

--
-- Структура на таблица `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  `folder_name` text NOT NULL,
  `avatar` text NOT NULL,
  `photos` text NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `singUpDate` date DEFAULT NULL,
  `category_name` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `gallery`
--

INSERT INTO `gallery` (`id`, `username`, `title`, `folder_name`, `avatar`, `photos`, `price`, `description`, `singUpDate`, `category_name`) VALUES
(3, 'krasi@abv.bg', 'Random Title', '86fd82362f9a7f284516db71198e7e38', 'img/gallery/86fd82362f9a7f284516db71198e7e38/586375e12234ddefaf87c557588221c4e72c5c3e.jpg', '["img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/ce44bac29a9c31b6725b887592a901ab29ad87f0.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/ce44bac29a9c31b6725b887592a901ab29ad87f025342.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/a2eb76d3e9ed2460d71fc73e24a4166c3f8aac7b.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/586375e12234ddefaf87c557588221c4e72c5c3e.jpg"]', 123, 'Random description so fking long', '2017-05-22', 'Кухни и Легла'),
(4, 'krasi@abv.bg', 'Secont Title', '43f6aa7baf712597f4e2cb86733b631e', 'img/gallery/43f6aa7baf712597f4e2cb86733b631e/c4c2ba934b6c2fc11a3dd8950eb20778b10e3f3d.jpg', '["img\\/gallery\\/43f6aa7baf712597f4e2cb86733b631e\\/c70074f5c7a5ecf8580d40c2291c0e361228321c.jpg","img\\/gallery\\/43f6aa7baf712597f4e2cb86733b631e\\/c70074f5c7a5ecf8580d40c2291c0e361228321c14943.jpg","img\\/gallery\\/43f6aa7baf712597f4e2cb86733b631e\\/7399743b5a89b61d6b8681e77888a29642402366.jpg","img\\/gallery\\/43f6aa7baf712597f4e2cb86733b631e\\/c4c2ba934b6c2fc11a3dd8950eb20778b10e3f3d.jpg"]', 231, 'Another long description for this', '2017-05-22', 'Антрета'),
(5, 'krasi@abv.bg', 'Three Name', '86fd82362f9a7f284516db71198e7e38', 'img/gallery/86fd82362f9a7f284516db71198e7e38/e78574669c4c4aecbf966c4cc632eb9b0f76334e15200.jpg', '["img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/e78574669c4c4aecbf966c4cc632eb9b0f76334e.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/e78574669c4c4aecbf966c4cc632eb9b0f76334e19858.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/e78574669c4c4aecbf966c4cc632eb9b0f76334e13155.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/e78574669c4c4aecbf966c4cc632eb9b0f76334e15200.jpg"]', 123, 'Super cool description this is what u need', '2017-05-24', 'Кухни и Легла'),
(6, 'krasi@abv.bg', 'Random Title', '86fd82362f9a7f284516db71198e7e38', 'img/gallery/86fd82362f9a7f284516db71198e7e38/1aabc61b64a763779640c3a0502e98a53cef07c315567.jpg', '["img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/1aabc61b64a763779640c3a0502e98a53cef07c3.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/1aabc61b64a763779640c3a0502e98a53cef07c38105.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/1aabc61b64a763779640c3a0502e98a53cef07c310542.jpg","img\\/gallery\\/86fd82362f9a7f284516db71198e7e38\\/1aabc61b64a763779640c3a0502e98a53cef07c315567.jpg"]', 321, 'qwertyuiopasdfghkl', '2017-05-24', 'Кухни и Легла');

-- --------------------------------------------------------

--
-- Структура на таблица `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  `folder_name` text NOT NULL,
  `avatar` text NOT NULL,
  `photos` text NOT NULL,
  `old_price` decimal(10,0) NOT NULL,
  `new_price` decimal(10,0) NOT NULL,
  `description` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `promotions`
--

INSERT INTO `promotions` (`id`, `username`, `title`, `folder_name`, `avatar`, `photos`, `old_price`, `new_price`, `description`, `created_at`) VALUES
(2, 'krasi@abv.bg', 'Promotion 1', 'ea6aeb050f871384f25fba9c869cfe21', 'img/gallery/ea6aeb050f871384f25fba9c869cfe21/413c28f9127065b8f1f2c96d577fa64acb6f4f7416548.jpg', '["img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/413c28f9127065b8f1f2c96d577fa64acb6f4f74.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/413c28f9127065b8f1f2c96d577fa64acb6f4f7422582.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/413c28f9127065b8f1f2c96d577fa64acb6f4f7413111.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/413c28f9127065b8f1f2c96d577fa64acb6f4f7416548.jpg"]', '234', '180', 'Description for promotion one', '2017-06-03'),
(3, 'krasi@abv.bg', 'Promotion 2', 'ea6aeb050f871384f25fba9c869cfe21', 'img/gallery/ea6aeb050f871384f25fba9c869cfe21/8d875274820df7f4831e16276a209616424c7f6e17168.jpg', '["img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/8d875274820df7f4831e16276a209616424c7f6e.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/8d875274820df7f4831e16276a209616424c7f6e16834.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/8d875274820df7f4831e16276a209616424c7f6e19411.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/8d875274820df7f4831e16276a209616424c7f6e17168.jpg"]', '445', '399', 'Description for promotion two', '2017-06-03'),
(4, 'krasi@abv.bg', 'Promotion 3', 'ea6aeb050f871384f25fba9c869cfe21', 'img/gallery/ea6aeb050f871384f25fba9c869cfe21/342b23b3f787caab9793e251f5a42565b1097a1821039.jpg', '["img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/342b23b3f787caab9793e251f5a42565b1097a18.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/342b23b3f787caab9793e251f5a42565b1097a187689.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/342b23b3f787caab9793e251f5a42565b1097a1814350.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/342b23b3f787caab9793e251f5a42565b1097a1821039.jpg"]', '398', '352', 'Description for promotion three', '2017-06-03'),
(5, 'krasi@abv.bg', 'Promotion 4', 'ea6aeb050f871384f25fba9c869cfe21', 'img/gallery/ea6aeb050f871384f25fba9c869cfe21/87cddbab747851a78028265fe8f35c0b7b342e1e256.jpg', '["img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/87cddbab747851a78028265fe8f35c0b7b342e1e.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/87cddbab747851a78028265fe8f35c0b7b342e1e29234.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/87cddbab747851a78028265fe8f35c0b7b342e1e2947.jpg","img\\/gallery\\/ea6aeb050f871384f25fba9c869cfe21\\/87cddbab747851a78028265fe8f35c0b7b342e1e256.jpg"]', '223', '200', 'Description for promotion four', '2017-06-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_name` (`category_name`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
