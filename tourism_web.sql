-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 26, 2022 lúc 10:08 AM
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
(1, 'Tour 1', 'Hà Nội - Huế', 1000000000, 'Nó thuộc giống chó Chihuahua nên rất nhỏ. Nhìn nó chỉ như một con mèo trưởng thành mà thôi. Bộ lâu của nó màu vàng nâu giống như màu lông bò. Những sợi lông ngắn tũn bám chặt vào làn da của nó.', '3N2Đ', 'Trong nước', '10/4/2022', 'https://thienha3d.vn/wp-content/uploads/2018/07/tranh-phong-canh-kho-doc-dep-nhat-cho-phong-khach-7.jpg', 0, 3.09091),
(3, 'Tour 2', 'Phenikaa-Bắc Giang', 99999, 'let\'s go', '10N9Đ', 'Ngoài hành tinh', '10/4/2022', 'https://cdn.chanhtuoi.com/uploads/2021/07/dak-buh-lmao-la-gi-1.jpg.webp', 0, 0),
(4, 'Tour 3', 'HN-HP', 12, 'qeqwe wqeqw ', '3N2Đ', 'Trong nước', '10/4/2022', 'https://photocross.net/wp-content/uploads/2020/03/anh-chan-dung.jpg', 0, 0),
(12, 'Tour 4', 'Hà Nội - Đà Nẵng', 2000000, 'đây sẽ là 1 điểm đến lí thú ', '3N2Đ', 'Trong nước', '3/6/2022', 'https://cdn3.ivivu.com/2020/11/lich-trinh-du-lich-ninh-binh-ivivu-1.jpg', 0, 0),
(18, 'Tour 8', 'Hà Nội - Đà Nẵng', 2000000, 'đây sẽ là 1 điểm đến lí thú ', '3N2Đ', 'Trong nước', '3/6/2022', 'https://cdn3.ivivu.com/2020/11/lich-trinh-du-lich-ninh-binh-ivivu-1.jpg', 0, 0),
(19, 'Tour 9', 'Hà Nội - Đà Nẵng', 2000000, 'đây sẽ là 1 điểm đến lí thú ', '3N2Đ', 'Trong nước', '3/6/2022', 'https://cdn3.ivivu.com/2020/11/lich-trinh-du-lich-ninh-binh-ivivu-1.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_comment`
--

CREATE TABLE `tour_comment` (
  `tour_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `user_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `feedback` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
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
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_enable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `password`, `fullname`, `email`, `phone`, `role`, `user_enable`) VALUES
(1, 'demo', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nguyễn Trung Kiên', 'kien19@gmail.com', '0378864001', '1', 1),
(42, 'user4', '1b6453892473a467d07372d45eb05abc2031647a', 'Phạm Việt Linh', 'hnj@gmail.com', '0123123', '2', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contributor`
--
ALTER TABLE `contributor`
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Chỉ mục cho bảng `tour_comment`
--
ALTER TABLE `tour_comment`
  ADD KEY `tour_id` (`tour_id`),
  ADD KEY `user_id` (`user_id`);

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
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tour_id` (`tour_id`);

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contributor`
--
ALTER TABLE `contributor`
  ADD CONSTRAINT `contributor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);

--
-- Các ràng buộc cho bảng `tour_comment`
--
ALTER TABLE `tour_comment`
  ADD CONSTRAINT `tour_comment_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`tour_id`),
  ADD CONSTRAINT `tour_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);

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
  ADD CONSTRAINT `tour_rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`),
  ADD CONSTRAINT `tour_rating_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`tour_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
