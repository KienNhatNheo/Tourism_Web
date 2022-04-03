-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 03, 2022 lúc 06:12 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tourism_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hot_tour`
--

CREATE TABLE `hot_tour` (
  `tour_id` int(11) DEFAULT NULL,
  `avg_rating` float DEFAULT NULL,
  `visitor_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_route` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_price` int(11) DEFAULT NULL,
  `tour_detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_length` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_startday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_image` char(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`tour_id`, `tour_name`, `tour_route`, `tour_price`, `tour_detail`, `tour_length`, `tour_type`, `tour_startday`, `tour_image`) VALUES
(1, 'Vượng ăn cứt', 'Hà Nội - Huế', 10000, 'Tuyệt vời vch !', '3N2Đ', 'Trong nước', '10/4/2022', 'https://thienha3d.vn/wp-content/uploads/2018/07/tranh-phong-canh-kho-doc-dep-nhat-cho-phong-khach-7.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_history`
--

CREATE TABLE `tour_history` (
  `user_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `tour_startday` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `order_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_rating`
--

CREATE TABLE `tour_rating` (
  `tour_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` char(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `password`, `fullname`, `email`, `phone`, `role`) VALUES
(1, 'demo', 'demo', 'Nguyễn Trung Kiên', 'kien190201@gmail.com', '0378864001', '1'),
(2, 'vuongngu', '123123', 'Vượng ngu ', 'fgf@gmail.com', '0123123', '2'),
(3, 'vuongngu12', '34413', 'Vượng ngu ', 'fgf@gmail.com', '0123123', '2'),
(4, 'vuongngu12', '34413', 'Vượng ngu ', 'fgf@gmail.com', '0123123', '2'),
(5, 'vuongngu12', '23423432', 'Vượng ngu ', 'fgf@gmail.com', '0123123', '2'),
(6, 'vuongngu12', '23423432', 'Vượng ngu ', 'fgf@gmail.com', '0123123', '2'),
(7, 'dem', '1', 'cá', 'grfvds@gmail.com', 'ádasdasd', '2'),
(8, 'dem', '123123', 'cá', 'grfvds@gmail.com', 'ádasdasd', '2'),
(34, 'vuongngu', '1212', '2esdada', 'hnj@gmail.com', '121212', '2'),
(35, '1', '1', '1', 'fgf@gmail.com', '1', '2'),
(36, '12', '21', '1', '121@gmail.com', '1', '2');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hot_tour`
--
ALTER TABLE `hot_tour`
  ADD KEY `tour_id` (`tour_id`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Chỉ mục cho bảng `tour_history`
--
ALTER TABLE `tour_history`
  ADD KEY `tour_id` (`tour_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tour_rating`
--
ALTER TABLE `tour_rating`
  ADD KEY `tour_id` (`tour_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hot_tour`
--
ALTER TABLE `hot_tour`
  ADD CONSTRAINT `hot_tour_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`tour_id`);

--
-- Các ràng buộc cho bảng `tour_history`
--
ALTER TABLE `tour_history`
  ADD CONSTRAINT `tour_history_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`tour_id`),
  ADD CONSTRAINT `tour_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);

--
-- Các ràng buộc cho bảng `tour_rating`
--
ALTER TABLE `tour_rating`
  ADD CONSTRAINT `tour_rating_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`tour_id`),
  ADD CONSTRAINT `tour_rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
