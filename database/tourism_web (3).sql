-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2022 lúc 06:16 AM
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
-- Cấu trúc bảng cho bảng `contributor`
--

CREATE TABLE `contributor` (
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contributor`
--

INSERT INTO `contributor` (`user_id`, `content`, `content_time`) VALUES
(38, '123123', '08/04/2022'),
(38, 'linh đẹp trai\r\n', '08/04/2022'),
(38, 'ôi ôi ôi', '22/04/2022');

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
  `tour_image` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_display` int(1) NOT NULL,
  `tour_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`tour_id`, `tour_name`, `tour_route`, `tour_price`, `tour_detail`, `tour_length`, `tour_type`, `tour_startday`, `tour_image`, `tour_display`, `tour_rate`) VALUES
(1, 'Tour 1', 'Hà Nội - Huế', 1000000000, 'Nó thuộc giống chó Chihuahua nên rất nhỏ. Nhìn nó chỉ như một con mèo trưởng thành mà thôi. Bộ lâu của nó màu vàng nâu giống như màu lông bò. Những sợi lông ngắn tũn bám chặt vào làn da của nó.', '3N2Đ', 'Trong nước', '10/4/2022', 'https://thienha3d.vn/wp-content/uploads/2018/07/tranh-phong-canh-kho-doc-dep-nhat-cho-phong-khach-7.jpg', 1, 0),
(3, 'Tour 2', 'Phenikaa-Bắc Giang', 99999, 'let\'s go', '10N9Đ', 'Ngoài hành tinh', '10/4/2022', 'https://cdn.chanhtuoi.com/uploads/2021/07/dak-buh-lmao-la-gi-1.jpg.webp', 0, 0),
(4, 'Tour 3', 'HN-HP', 12, 'qeqwe wqeqw ', '3N2Đ', 'Trong nước', '10/4/2022', 'https://photocross.net/wp-content/uploads/2020/03/anh-chan-dung.jpg', 1, 0),
(12, 'Tour 4', 'Hà Nội - Đà Nẵng', 2000000, 'đây sẽ là 1 điểm đến lí thú ', '3N2Đ', 'Trong nước', '3/6/2022', 'https://cdn3.ivivu.com/2020/11/lich-trinh-du-lich-ninh-binh-ivivu-1.jpg', 1, 0),
(18, 'Tour 8', 'Hà Nội - Đà Nẵng', 2000000, 'đây sẽ là 1 điểm đến lí thú ', '3N2Đ', 'Trong nước', '3/6/2022', 'https://cdn3.ivivu.com/2020/11/lich-trinh-du-lich-ninh-binh-ivivu-1.jpg', 1, 0),
(19, 'Tour 9', 'Hà Nội - Đà Nẵng', 2000000, 'đây sẽ là 1 điểm đến lí thú ', '3N2Đ', 'Trong nước', '3/6/2022', 'https://cdn3.ivivu.com/2020/11/lich-trinh-du-lich-ninh-binh-ivivu-1.jpg', 1, 0);

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

--
-- Đang đổ dữ liệu cho bảng `tour_history`
--

INSERT INTO `tour_history` (`user_id`, `tour_id`, `tour_startday`, `order_time`) VALUES
(3, 1, '', '04/04/2022'),
(2, 1, '', '04/04/2022'),
(2, 1, '', '04/04/2022'),
(2, 1, '', '04/04/2022'),
(2, 1, '', '04/04/2022'),
(2, 1, '', '04/04/2022'),
(2, 1, '10.4.2022', '04/04/2022'),
(2, 1, '10.4.2022', '04/04/2022'),
(2, 1, '10.4.2022', '05/04/2022'),
(2, 1, '10.4.2022', '05/04/2022'),
(2, 1, '10.4.2022', '05/04/2022'),
(2, 1, '10/4/2022', '05/04/2022'),
(2, 1, '10/4/2022', '05/04/2022'),
(2, 1, '10/4/2022', '05/04/2022'),
(2, 1, '10/4/2022', '05/04/2022'),
(2, 1, '10/4/2022', '05/04/2022'),
(2, 1, '10/4/2022', '05/04/2022'),
(2, 1, '10/4/2022', '05/04/2022'),
(1, 3, '10/4/2022', '05/04/2022'),
(1, 1, '10/4/2022', '05/04/2022'),
(1, 3, '10/4/2022', '05/04/2022'),
(1, 3, '10/4/2022', '05/04/2022'),
(35, 1, '10/4/2022', '06/04/2022'),
(38, 1, '10/4/2022', '07/04/2022'),
(38, 3, '10/4/2022', '07/04/2022'),
(38, 3, '10/4/2022', '08/04/2022'),
(38, 3, '10/4/2022', '08/04/2022'),
(38, 3, '10/4/2022', '08/04/2022'),
(38, 3, '10/4/2022', '08/04/2022'),
(38, 3, '10/4/2022', '08/04/2022'),
(38, 1, '10/4/2022', '09/04/2022'),
(1, 1, '10/4/2022', '14/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022'),
(38, 4, '10/4/2022', '22/04/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_rating`
--

CREATE TABLE `tour_rating` (
  `tour_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour_rating`
--

INSERT INTO `tour_rating` (`tour_id`, `user_id`, `username`, `comment`) VALUES
(1, 2, '', 'rất là thiểu năng !'),
(3, 1, 'demo', 'cscsc'),
(3, 1, 'demo', 'cscsc'),
(3, 1, 'demo', 'vl thật đấy'),
(3, 1, 'demo', 'vkcnfkenfcekw'),
(1, 35, '1', 'èdfds'),
(1, 37, '1', 'èdfds'),
(1, 35, '1', 'demo trông chán vch'),
(1, 37, '1', 'demo trông chán vch'),
(3, 35, '1', 'Linh ngu'),
(3, 37, '1', 'Linh ngu'),
(3, 35, '1', 'Linh ngu'),
(3, 37, '1', 'Linh ngu'),
(3, 38, 'kien123', 'Kiên đẹp trai'),
(3, 38, 'kien123', 'Linh ngu'),
(3, 38, 'kien123', 'èwefewfe'),
(4, 38, 'kien123', 'hay thật đấy'),
(4, 38, 'kien123', 'Sang béo'),
(4, 38, 'kien123', ''),
(1, 38, 'kien123', 'Sang béo');

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
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_enable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `password`, `fullname`, `email`, `phone`, `role`, `user_enable`) VALUES
(1, 'demo', 'demo', 'Nguyễn Trung Kiên', 'kien19@gmail.com', '0378864001', '1', 1),
(2, 'vuongngu', '123123', 'Vượng ngu ', 'fgf@gmail.com', '0123123', '2', 1),
(3, 'vuongngu12', '34413', 'Vượng ngu ', 'fgf@gmail.com', '0123123', '2', 1),
(35, '1', '1', '1', 'fgf@gmail.com', '1', '2', 1),
(36, '12', '21', '1', '121@gmail.com', '1', '2', 1),
(37, '2', '1', '1', '123@gmail.com', '1', '2', 1),
(38, 'kien123', '1234', 'Vượng ăn buồi 2 lần', 'fw@gmail.com', 'qưe', '2', 1),
(39, 'demo1', '123', '123', '123@gmail.com', '123', '2', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contributor`
--
ALTER TABLE `contributor`
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contributor`
--
ALTER TABLE `contributor`
  ADD CONSTRAINT `contributor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);

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
