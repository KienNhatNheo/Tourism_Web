-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 29, 2022 lúc 04:28 PM
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
  `tour_name` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_route` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_price` int(11) DEFAULT NULL,
  `tour_detail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
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
(19, 'Tour 9', 'Hà Nội - Đà Nẵng', 2000000, 'đây sẽ là 1 điểm đến lí thú ', '3N2Đ', 'Trong nước', '3/6/2022', 'https://cdn3.ivivu.com/2020/11/lich-trinh-du-lich-ninh-binh-ivivu-1.jpg', 0, 0),
(20, 'Tham quan miền Bắc', 'Hà Nội - Hạ Long - Mù Cang Chải - Tú Lệ Yên Bái', 5790000, '- Phương tiện vận chuyển:\r\n\r\nVé máy bay khứ hồi TP.HCM – HÀ NỘI – TP.HCM (Vietjet Air, Jetstar Pacific, Bamboo Airways, 7 kg hành lý xách tay/ 1 khách/ 1 lượt bay)\r\n\r\nXe tham quan (xe 16 chỗ, 29 chỗ, 35 chỗ, 45 chỗ) tùy theo số lượng khách thực tế trên chuyến đi.\r\n\r\n- Khách sạn lưu trú và vé tham quan theo chương trình:\r\n\r\nKhách sạn 2*, 3* đầy đủ tiện nghi 2 khách người lớn/ phòng. Nếu lẻ người thứ 3, đóng phụ phí phòng đơn hoặc ngủ ghép phòng 3 khách\r\n\r\n- Ăn uống theo chương trình:\r\n\r\nĂn sáng t', '4N3D', 'Trong nước', 'Hằng ngày', 'https://vietnamtourism.net.vn/frontend/images/event/chao-he.png', 1, 4.375),
(21, 'Tour du lịch Quy Nhơn', 'Hà Nội - Quy Nhơn', 5990000, 'Xe ôt ô du lịch đón tiễn sân bay Nội Bài và tham quan theo chương trình\r\nKhách sạn 3 sao tại Quy Nhơn (Yến Vy 04): 02 khách / phòng (Nếu lẻ nam hoặc nữ nghỉ phòng 3)\r\nVé máy bay khứ hồi Hà Nội – Quy Nhơn – Hà Nội \r\nCác bữa ăn theo chương trình: 06 bữa chính mức ăn 130.000 vnd/suất\r\nVé vào cửa một lần các điểm tham quan theo chương trình\r\nTham quan đảo Kỳ Co bằng đường bộ\r\nHướng dẫn viên đón tiễn sân bay Nội Bài và tham quan theo chương trình\r\nNước uống trên xe 01 chai/người/ngày\r\nBảo hiểm du lịc', '3N2D', 'Trong nước', 'Hằng ngày', 'https://vietnamtourism.net.vn/public/media/images/quy-nhon_phu-yen/chia-se-kinh-nghiem-review-khu-du-lich-ham-ho-quy-nhon.jpg', 1, 4),
(22, 'Du lịch Sài Gòn và Miền Tây', 'Cần Thơ -  Cồn Sơn - Sóc Trăng - Bạc Liêu - Cà Mau - Châu Đốc', 4990000, 'Phương tiện vận chuyển : Máy bay, xe du lịch đời mới, đưa đón theo chương trình tour.  Vé Tàu: Tàu tham quan Chợ nổi Cái Răng, dịch vụ Cồn Sơn.  Khách sạn: Tiêu chuẩn 3 Sao (2 khách/phòng, ở 3 khách nếu lẻ Nam hoặc nữ).  Ăn uống: 03 buổi sáng tại khách sạn và 07 buổi ăn chính.  Vé vào cổng các khu du lịch có trong chương trình.  Hướng dẫn viên : nhiệt tình lịch sự & năng động, phục vụ ân cần, chu đáo.  Phục vụ: Nước uống và Khăn ướt (02 chai + 02 khăn/ ngày).  Bảo hiểm du lịch trong nước trọn to', '4N3D', 'Trong nước', 'Hằng Ngày', 'https://vietnamtourism.net.vn/public/media/images/du-lich-sai-gon-mien-tay/mui-ca-mau.jpg', 1, 0),
(23, 'Du lịch Hồ Chí Minh', 'Hà Nội - Hồ Chí Minh', 1480000, 'Sáng 8h30: Quý khách đến tham quan Bảo tàng chiến tích chiến tranh.  Chùa Bà Thiên Hậu: hay còn được gọi là chùa Bà Chợ Lớn là một trong những ngôi chùa có lịch sử lâu đời nhất của người Hoa ở Thành phố Hồ Chí Minh. Bên cạnh giá trị về nghệ thuật kiến trúc, điêu khắc, hiện vật cổ, nơi đây còn có một giá trị khác, đó không chỉ là nơi đáp ứng nhu cầu tín ngưỡng mà còn là nơi qui tụ và tương trợ lẫn nhau của bà con người Việt gốc Hoa.  Những khu vực Chợ Lớn - Chợ Bình Tây - trung tâm trao đổi mua bán của cộng đồng người Việt và người Hoa tại Sài Gòn. Nơi đây còn bảo tồn nguyên vẹn giá trị kiến trúc của người Hoa từ hàng trăm năm trước.\r\nBuổi chiều, tham quan Dinh Thống Nhất, nơi trước đây là tổng hành dinh của Mỹ đặt tại miền Nam Việt Nam. Bên cạnh đó, quý khách sẽ được chiêm ngưỡng nhà thờ Đức Bà và Bưu điện Trung tâm Thành phố, cả hai đều là những công trình kiến trúc độc đáo theo lối Gothic cổ.\r\n\r\nQuý khách còn được đi ngang qua Uỷ Ban Nhân Dân Thành Phố nằm ngay trung tâm quận 1.', '1N1D', 'Trong nước', '2/6/2022', 'https://vietnamtourism.net.vn/public/media/images/Tp.%20ho%20chi%20minh/bg(1).jpg', 1, 0),
(24, 'Du lịch Đà Nẵng Hội An Huế', 'Đà Nẵng - Hội An - Huế - Động Phong Nha', 5500000, '- Vé máy bay khứ hồi. - Xe vận chuyển tốt đời mới phục vụ theo chương trình.  (Xe16c Ford 2010-2013 / Xe 30, 35 chỗ County 2009-2013, Samco 2014, Aero Town 2010-2013 / Xe 45 chỗ Univer Noble, Hi Class )  - Ngủ 2-3 khách/phòng khách sạn tiện nghi 3 sao Đà Nẵng + 4 sao Huế. (Khách sạn 3*: Bamboo Green, Luxury - Khách sạn 4*: Park View, Mondial... )  - Ăn các bữa theo tour: 03 bữa sáng buffet + 07 bữa chính tiêu chuẩn 120.000 VNĐ/suất.  - Vé các điểm tham quan.  - Ca Huế trên sông Hương.  - Thuyền Động Phong Nha  - Hướng dẫn viên tiếng Việt phục vụ tận tình.  - Phục vụ 02 chai 0.5l/khách /ngày.  - Bảo hiểm du lịch: 20.000.000 VNĐ/vụ', '4N3D', 'Trong nước', 'Hằng Ngày', 'https://vietnamtourism.net.vn/upload/files/2014/da%20nang-hue-vung%20chua/da%20nang%20da%20sua/at_tour-du-lich-da-nang--ngu-hanh-son--hoi-an--ba-na--hue-4-ngay-3-dem.jpg', 1, 0),
(25, 'Du lịch Nha Trang Đà Lạt', 'Hà Nội - Nha Trang - Đà Lạt', 3650000, 'NGÀY 01 : HÀ NỘI / TP. HỒ CHÍ MINH - NHA TRANG- VINPEARL LAND (ĂN CHIỀU) NGÀY 02: KHÁM PHÁ NHA TRANG – 4 ĐẢO(ĂN BA BỮA) NGÀY 03 : NHA TRANG – ĐÀ LẠT (ĂN BA BỮA) NGÀY 04 : ĐÀ LẠT – CÁC THẮNG CẢNH (ĂN BA BỮA) NGÀY 05 : ĐÀ LẠT – HÀ NỘI / TP.HỒ CHÍ MINH (ĂN SÁNG) - Xe đời mới có máy lạnh, đưa đón khách đi theo chương trình trong tour. - Xe đón khách từ sân bay Cam Ranh đi Nha Trang và đưa từ Đà Lạt đi sân bay Liên Khương. - Khách sạn 1 phòng 2-3 khách - Ăn uống gồm 3 bữa trong ngày. Nếu khách tự túc ăn, giá tour sẽ được trừ: 800.000đ. - Hướng dẫn viên thuyết minh phục vụ đoàn suốt tuyến. - Vé vào cửa các thắng cảnh. - Bảo hiểm du lịch theo qui định bảo hiểm Việt Nam với mức tối đa là 20.000.000đ/trường hợp.', '5N4D', 'Trong nước', 'Hằng ngày', 'https://vietnamtourism.net.vn/upload/tour/2/2/2/1/a/2221a7aba0ff93781fea9b38b576c265.jpg', 1, 0),
(26, 'Du lịch Miền Tây', 'Cần Thơ - Bến Ninh Kiều - Chợ Cái Răng', 1798000, 'Buổi sáng, Xe và Hướng dẫn viên  công ty chúng tôi đón Quý khách tại Chợ Bến  Thành, Quý khách lên xe bắt đầu chuyến hành trình du lịch Cần Thơ. Theo quốc lộ 1A, về miền tây, qua cầu treo Mỹ Thuận, du khách có dịp ngắm cây cầu dây văng đầu tiên, hiện đại nhất Đồng Bằng Sông Cửu Long, được khởi công xây dựng năm 1997 và hoàn thành năm 2000. Qua cầu Cần Thơ xuống vườn du lịch Mỹ Khánh, du khách đi xe ngựa dạo chơi trong một không gian xanh của những vườn mận, xoài, chôm chôm, mít, sầu riêng…Nghe đờn ca tài tử cải lương Nam Bộ. Tham gia làm bánh tráng, nấu rượu đế, thưởng thức những món ngon rất dân dã như cá lóc nướng ống tre, chuột quay lu, lẩu đồng quê. Buổi chiều, đoàn tham quan nhà cổ Bình Thủy, được xây dựng từ năm 1870, kiến trúc tiêu biểu của Nam Bộ, nhà có năm gian hai chái, sườn nhà bằng gỗ được chạm khắc tinh tế, điêu luyện, có vườn lan và cây xương rồng 40 tuổi, còn gọi là “Kim Lăng Trụ”, cao 8 thước, được xác lập kỷ lục cao nhất Việt Nam. Buổi tối, xe đưa đoàn đi bến Ninh Kiề', '2N1D', 'Trong nước', 'Thứ 7 hàng tuần', 'https://vietnamtourism.net.vn/upload/tour/2/7/8/6/a/2786a2b7c999236da26d5e1ff56479c8.jpg', 1, 0),
(27, 'Du lịch Nha Trang Đà Lạt', 'Hồ Chí Minh - Sài Gòn - Nha Trang - Đà Lạt', 6490000, 'Ngày 1: Buổi sáng, xe và HDV sẽ đón quý khách tại Chợ Bến Thành khởi hành đi Nha Trang, bắt đầu chuyến tham quan Du lịch Nha Trang Đà Lạt. Đến Phan Thiết (tỉnh Bình Thuận), Quý khách tham quan một thoáng thành phố và các thắng cảnh Bãi đá Ông Địa, Rặng dừa Hàm Tiến, Bến thuyền Mũi Né. Dừng chân Bãi biển Cà Ná (tỉnh Ninh Thuận), Quý khách đón gió biển, chụp ảnh, quay phim lưu niệm nơi có phong cảnh núi kề bên biển, đẹp nổi tiếng của miền Trung. Buổi chiều, đoàn vào Nha Trang theo con đường mới ven biển Sông Lô – Hòn Rớ, qua đèo Cù Huân ngắm cảnh biển chiều trên vịnh Nha Trang. Đến Nha Trang (tỉnh Khánh Hòa) về khách sạn, Quý khách nhận phòng.   Buổi tối, xe đưa Quý khách đi dạo phố biển về đêm, qua chợ đêm Nha Trang, công viên Phù Đổng, Cà phê Bốn Mùa, khu hải sản Tháp Bà… Nghỉ đêm tại Nha Trang.  NGÀY 02 : NHA TRANG – CÁC THẮNG CẢNH (ĂN SÁNG, TRƯA) Buổi sáng, đoàn đi Dốc Lết, Quý khách tắm biển, thưởng thức các món hải sản của ngư dân địa phương đánh bắt. Buổi chiều, xe đưa đoàn đi chợ', '5N4D', 'Trong nước', 'Hằng Ngày', 'https://vietnamtourism.net.vn/public/media/images/nha-trang-da-lat/nha_trang/bien-nha-trang.jpg', 1, 0),
(28, 'Chùa Hà Nội', 'Hà Nội - Các chùa tại Hà Nội', 750000, 'Hà Nội nơi hội tụ ngàn năm văn hiến - trái tim của cả nước - niềm tin và hy vọng. Thủ đô Hà Nội xuất hiện trong lịch sử dân tộc Việt Nam vào năm 1010 với tên gọi Thăng Long mang ý nghĩa “Rồng bay lên” tượng trưng cho khí thế vươn lên của dân tộc, mở đầu cho một giai đoạn phát triển của đất nước. Với gần 1000 năm tuổi, Hà Nội có rất nhiều chùa chiền và thắng cảnh cổ kính thiêng liêng. Hà Nội cũng là mảnh đất anh dũng, hào hùng đã trải qua hai cuộc kháng chiến trường kỳ, gian khổ chống Pháp và chống Mỹ. Chính vì thế mà Hà Nội cũng là một thành phố có vẻ đẹp kiến trúc cổ điển kiểu Pháp, hiện đại kiểu Mỹ. Hãy lắng nghe và ngắm nhìn Hà Nộitrong chương trình thăm quan vòng quanh Hà Nội, quý khách sẽ tham quan: Đền Ngọc Sơn; Phố Cổ Hà Nội; Chợ Đồng Xuân; Lăng Bác Hồ; Nhà Sàn Chủ Tịch Hồ Chí Minh; Chùa Một Cột; Chùa Trấn Quốc; Làng gốm Bát Tràng; Văn miếu Quốc Tử Giám.', '1N1D', 'Trong nước', 'Hằng Ngày', 'https://vietnamtourism.net.vn/upload/files/2014/ha%20noi%20ha%20long/Gioi-thieu-doi-net-ve-lich-su-chua-mot-cot-ha-noi-01.jpg', 1, 0),
(29, 'Du lịch Kiên Giang Phú Quốc', 'Hà Nội - Phú Quốc', 6990000, 'NGÀY 01: HÀ NỘI- PHÚ QUỐC - THAM QUAN PHÍA ĐÔNG ĐẢO (ĂN TRƯA, TỐI) -Buổi sáng: HDV Vietnam tourism đón Quý khách tại  sân bay Nội Bài, làm thủ tục đáp chuyến bay đi Du lịch Phú Quốc. -Buổi trưa: Quý khách có mặt tại sân bay Phú Quốc, HDV đón đoàn về khách sạn nhận phòng nghỉ ngơi. Quý khách tự do tắm biển. -Buổi tối: 18h30 Quý khách ăn tối tại nhà hàng với món ăn đặc sản của Phú Quốc món Còi biên mai, là thớ thịt nằm giữa hai vỏ sò, ốc. Còi được chế biến thành nhiều món nướng, xào, lẩu… Nhưng ngon nhất là món nướng, giữ được độ dai, giòn và có vị thơm. NGÀY 02: KHÁM PHÁ PHÚ QUỐC (ĂN BA BỮA) -Buổi sáng: Quý khách ăn sáng tại khách sạn khách sạn, tự do tắm biển. Sau đó đưa Quý khách tham quan. Cơ sở nuôi cấy ngọc trai của Úc – Ngắm các sản phẩm ngọc trai chính hiệu được nuôi cấy tại Phú Quốc. Tìm hiểu chó xoáy lưng Phú Quốc; tham quan cơ sở sản xuất Rượu sim - loại rượu vang làm từ trái sim rừng chín.Gặp gỡ và trò chuyện với người đầu tiên chế biến ra rượu sim sơn tại cơ sở sản xuất rượu', '4N3D', 'Trong nước', 'Hằng Ngày', 'https://vietnamtourism.net.vn/public/media/images/phu-quoc/du-lich-phu-quoc2.jpg', 1, 0),
(30, 'Du lịch Đà Nẵng Quang Ngãi', 'Hà Nội - Đà Nẵng - Đảo Sơn Lý Quang Ngãi', 5490000, 'NGÀY 01: ĐÓN KHÁCH – SƠN TRÀ – MỸ KHÊ – SUNWHEEL Buổi sáng: Chúng tôi đón quý khách tại  Đà Nẵng, Để bắt đầu chuyến du lịch Đà nẵng đảo Lý Sơn, xe đưa đi ăn đặc sản nổi tiếng của Đà Nẵng “Bánh tráng thịt heo 2 đầu da & Mỳ Quảng”.  Buổi chiều: Lên Bán Đảo Sơn Trà mục kích phố biển Đà Nẵng trên cao, viếng Linh Ứng Tự – nơi có tượngPhật Bà 67m cao nhất Việt Nam và tắm biển Mỹ Khê Đà Nẵng. Buổi Tối: Chúng tôi đưa quý khách đi ăn tối ở nhà hàng. Sau đi đi trải nghiệm cảm giác với Vòng quay Mặt trời SUN WHEEL –Top 10 vòng quay cao nhất Thế Giới, chiêm ngưởng vẻ đẹp Đà Thành về đêm rực rỡ ánh đèn. (Vé Sun Wheel tự túc). Sau đó trở về nghỉ tối tại khách sạn 3* của Đà Nẵng.  NGÀY 02: BẢO TÀNG ĐÀ NẴNG – QUÃNG NGÃI Buổi sáng: Sau khi ăn sáng, du khách đi tham quan Bảo Tàng Đà Nẵng – Nơi trưng bày các kỷ vật phản ảnh đời sống văn hóa, lịch sử và con người Xứ Quảng. Chụp hình lưu niệm Trung tâm hành chính, sau đó ăn trưa ở nhà hàng. Buổi chiều: Khởi hành đi Quãng Ngãi. Viếng thăm công trình điêu kh', '4N3D', 'Trong nước', 'Hằng Ngày', 'https://vietnamtourism.net.vn/upload/tourimage/d/4/f/b/5/d4fb5bf7c722f19b50c99390abdadf73.jpg', 1, 0),
(31, 'Du lịch Thái Lan', 'Hồ Chí Minh - Campuchia - Thái Lan', 7990000, 'NGÀY 01: TP.HỒ CHÍ MINH – PHNOM PENH ( ĂN SÁNG/TRƯA/TỐI ) NGÀY 02: PHNOMPENH - SIEM RIEP (ĂN SÁNG/TRƯA/TỐI) NGÀY 03: POIPET – PATTAYA – WAT SAMAN (ĂN sÁNG/TRƯA/TỐI) NGÀY 04: PATTAYA – BANGKOK - SHOPPING (ĂN SÁNG/TRƯA/TỐI) NGÀY 05: WAT TRAIMIT –WAT YAN NAWA - POIPET (ĂN SÁNG/TRƯA/TỐI) NGÀY 06: POIPET– TP.HỒ CHÍ MINH Khách sạn 3  sao (Phòng đôi/phòng ba).  GIÁ TOUR BAO GỒM: Xe vận chuyển đời mới, máy lạnh đưa đón tham quan theo chương trình. Xe đưa đón, vé vào cửa các điểm tham quan và ăn uống theo chương trình. Hướng dẫn viên phục vụ suốt tuyến. Bảo hiểm du lịch với mức bồi thường tối đa 10,000 USD/ khách Ăn sáng buffet.  GIÁ TOUR KHÔNG BAO GỒM: Hộ Chiếu (còn giá trị ít nhất 6 tháng). Chi phí cá nhân, điện thoại, giặt ủi, nước uống trong phòng Khách sạn, lệ phí máy ảnh + camera. Visa Cam (khách Việt kiều & quốc tịch nước ngoài): 35 USD/ khách. (Miễn visa cho người mang hộ chiếu VN) Lệ phí VISA tái nhập VIỆTNAM (khách Việt kiều, Nước ngoài):  70 USD/khách. Không bao gồm thuế V.A.T Không ', '6N5D', 'Quốc tế', 'Chủ Nhật hàng tuần', 'https://vietnamtourism.net.vn/media/images/menu/thai-lan.jpg', 1, 0),
(32, 'Du lịch Châu Âu', 'Hà Nội - Pháp - Thụy Sỹ - Ý - Vatican', 57900000, 'NGÀY 01:   HÀ NỘI  – PARIS     (ĂN NGHỈ TRÊN MÁY BAY) NGÀY 02:   PARIS  CITY TOUR       (ĂN TRƯA, TỐI) NGÀY 3 :    PARIS  CITY TOUR               (ĂN 3 BỮA) NGÀY 4:    PARIS – DIJON - GENEVA           (ĂN 3 BỮA) NGÀY 5 :   GENEVA – MILAN       (ĂN 3 BỮA) NGÀY 6 :  MILAN – PISA - FLORENCE        (ĂN 3 BỮA) NGÀY 7:   FLORENCE - ROME        (ĂN 3 BỮA) NGÀY 8 :   ROME           (ĂN 3 BỮA) NGÀY 9 :   ROME  - VIỆT NAM         (ĂN SÁNG, TRƯA) NGÀY 10 :    VIỆT NAM  (QUÝ KHÁCH NGHỈ VÀ ĂN TRÊN MÁY BAY)  GIÁ TRÊN BAO GỒM: Khách sạn tiêu chuẩn  04  sao Châu Âu, 2 khách/phòng (trường hợp lẻ người bố trí ngủ phòng 3 ) Các bữa ăn theo chương trình tour Visa nhập cảnh Châu Âu, Phí dịch thuật, công chứng các tài liệu trình ĐSQ xin cấp Visa Phương tiện vận chuyển: Ô tô điều hoà đời mới Vé máy bay chặng Hanoi – Paris // Rome – Hanoi (Hàng không: Turkey Airline, hành lý 30 kg ký gửi + 7 kg xách tay) Lệ phí sân bay + phụ phí xăng dầu HDV suốt tuyến từ Việt Nam phục vụ tận tình, chuyên nghiệp Bảo hiểm du l', '10N9D', 'Quốc tế', 'Ngày 15 hàng tháng', 'https://vietnamtourism.net.vn/public/media/images/menu/chau-au.jpg', 1, 0),
(33, 'Du lịch Hàn Quốc', '63 tỉnh - SEOUL - Đảo Nami - Everland', 9990000, 'NGÀY 01: VIỆT NAM – SEOUL HÀN QUỐC ( ĂN: TRƯA, TỐI) NGÀY 02:  SEOUL – CÔNG VIÊN EVERLAND ( ĂN:SÁNG, TRƯA, TỐI) NGÀY 3: SEOUL – THÁP NAMSAN ( ĂN:SÁNG, TRƯA, TỐI) NGÀY 4: SEOUL HÀN QUỐC - VIỆT NAM (ĂN SÁNG)  GIÁ TOUR TRỌN GÓI BAO GỒM: Vé máy bay khứ hồi theo đoàn  (Hàng không Vietjet Air, T’Way) Visa Hàn Quốc, phí dịch thuật hồ sơ sang tiếng Anh Thuế an ninh, xăng dầu hàng không và phí phi trường (~ 4.500.000VNĐ) Khách sạn 4 sao : 2 khách/ phòng, lẻ ghép 3 Các bữa ăn theo chương trình và phí vào cổng tham quan theo chương trình Xe đưa đón tham quan theo chương trình. Quà tặng: Nón du lịch. Hướng dẫn viên Tiếng Việt theo chương trình Phí bảo hiểm tai nạn du lịch quốc tế (mức bồi thường cao nhất 50.000 USD/vụ/khách).  KHÔNG BAO GỒM: Hộ chiếu phải còn hạn trên 06 tháng tính từ ngày kết thúc chuyến đi Các chi phí cá nhân,hành lý quá cước, điện thoại, giặt ủi, tham quan ngoài chương trình Tiền bồi dưỡng cho hướng dẫn viên và tài xế địa phương: 960.000 VNĐ/khách (~ 40USD/ khách) Phí visa nhập ', '4N3D', 'Quốc tế', 'Thứ 2 hàng tuần', 'https://vietnamtourism.net.vn/public/media/images/menu/han-quoc.jpg', 1, 0),
(34, 'Du lịch Singapore Malaysia', 'Hà Nội - Hồ Chí Minh - Singapore - Malaysia', 8990000, ' NGÀY 1: TP.HÀ NỘI/TP.HỒ CHÍ MINH –  SINGAPORE - JOHOR BAHRU (ĂN TỐI) NGÀY 02: MALACCA - KUALA LUMPUR ( ĂN: SÁNG, TRƯA, TỐI) NGÀY 03: KUALA LUMPUR – ĐỘNG BATU – GENTING - THÁP ĐÔI PETRONAS ( ĂN: SÁNG, TRƯA, TỐI) NGÀY 04: KUALA LUMPUR – TP.HÀ NỘI/TP.HỒ CHÍ MINH (ĂN SÁNG)  GIÁ TOUR BAO GỒM: Vé máy bay khứ hồi Hà Nội - Singapore và Kuala Lumpur - Hà Nội (Vietjet Air, Airasia,…bao gồm 7kg xách tay). Phí an ninh sân bay, bảo hiểm hàng không thuế phi trường 2 nước. Xe máy lạnh vận chuyển theo lịch trình tại Singapore và Malaysia Vé tham quan các điểm theo chương trình. Khách sạn 4****  2 khách/phòng (trường hợp lẻ ghép phòng 3) Phục vụ nước suối suốt hành trình tour. Các bữa ăn theo chương trình chất lượng cao, hợp khẩu vị người Việt Trưởng đoàn và HDV địa phương phục vụ theo chương trình. Bảo hiểm Covid & Bảo hiểm du lịch gói Việt Nam. Quà tặng: Nón du lịch.  KHÔNG BAO GỒM: Hộ chiếu thời hạn còn đủ 6 tháng tính từ ngày về. Xác nhận tiêm ngừa Vaccine Covid-19 đã tiêm đủ 2 mũi trở lên ( Ngo', '4N3D', 'Quốc tế', '5/6/2022', 'https://vietnamtourism.net.vn/public/media/images/menu/du-lich-sing%20620x283.jpg', 1, 0),
(35, 'Du lịch Nhật Bản', 'Hà Nội - Nagoya - Nara - Osaka - Kyoto - Núi Phú Sĩ - Tokyo', 33990000, 'NGÀY 01: HANOI – OSAKA NGÀY 02: OSAKA – NARA - OSAKA NGÀY 03: OSAKA – KYOTO – HAMAMATSU NGÀY 04: HAMAMATSU – HAKONE NGÀY 05: HAKONE – TOKYO NGÀY 06: TOKYO – HANOI  GIÁ TOUR GHÉP ĐOÀN: - 33.990.000 VNĐ/KHÁCH  GIÁ TOUR BAO GỒM: Visa nhập cảnh Nhật Bản (Theo quy định hướng dẫn kèm theo). Vé máy bay quốc tế + phụ phí an ninh hàng không, lệ phí sân bay quốc tế hai nước. Hà Nội - Nagoya // Tokyo - Hà Nội hoặc chiều ngược lại. Khách sạn 3 sao tiêu chuẩn quốc tế (phòng 2 người, lẻ nam - nữ ngủ phòng 3). Các bữa ăn theo chương trình với ẩm thực Nhật Bản tại khách sạn hoặc nhà hàng. Xe ô tô du lịch máy lạnh đời mới tại Nhật Bản và Việt Nam. Bảo hiểm du lịch. Hướng dẫn viên tiếng Việt nhiệt tình - chu đáo - trung thực suốt tuyến từ Việt Nam và Hướng dẫn viên tại địa phương. Vé thắng cảnh (vào cửa 1 lần).   GIÁ TOUR KHÔNG BAO GỒM: Hộ chiếu phổ thông còn hạn 06 tháng tính đến ngày đi. Chi phí cá nhân, đồ uống, hành lý quá cước, tiền điện thoại, giặt là Tiền Tip lái xe và Hướng dẫn viên Nhật Bản + V', '6N5D', 'Quốc tế', '21/6/2022', 'https://vietnamtourism.net.vn/public/media/images/menu/Bali-%20Indo.jpg', 1, 0),
(36, 'Du lịch Đà Nẵng Hội An Huế', 'Hồ Chí Minh - Đà Nẵng - Bà Nà - Sơn Trà - Hội An - Huế', 4990000, 'NGÀY 01: BÁN ĐẢO SƠN TRÀ – BÀ NÀ (ĂN TRƯA,TỐI)\r\nNGÀY 02: NGŨ HÀNH SƠN – HỘI AN (ĂN BA BỮA)\r\nNGÀY 03: ĐÀ NẴNG – ĐÈO HẢI VÂN – CỐ ĐÔ HUẾ (ĂN BA BỮA)\r\nNGÀY 04: HUẾ VÀ KẾT THÚC CHUYẾN DU LỊCH (ĂN SÁNG)\r\n\r\nGIÁ TOUR BAO GỒM :\r\n1. Xe đời mới phục vụ đoàn suốt chương trình.\r\n2. Ngủ 2 người/01phòng khách sạn tiện nghi 3*, 4* trung tâm thành phố (trường hợp lẻ nam, lẻ  nữ ngủ phòng 3)\r\n3. Vé máy bay khứ hồi\r\n4. Phí tham quan tất cả các điểm du lịch.\r\n5. Hướng dẫn viên Tiếng Việt kinh nghiệm, tận tình phục vụ suốt tuyến.\r\n6. Nước suối 2 chai 0,5l/khách/ngày.\r\n7. Bảo hiểm du lịch: 10.000.000đ/vụ\r\n8. Phí điều hành, tổ chức.\r\n\r\nGIÁ TOUR KHÔNG BAO GỒM:\r\n1. Chi phí thức ăn, nước uống cá nhân tự gọi trong các bữa ăn.\r\n2. Vé Cáp treo  Bà Nà: 750.000đ/khách.\r\n3. Phụ thu khách nước ngoài 1.000.000đ/ khách.', '4N3D', 'Trong nước', 'Thứ 4, 7 hàng tuần', 'https://vietnamtourism.net.vn/public/media/images/menu/da-nang.jpg', 1, 0),
(38, 'Du lịch Hạ Long', 'Hà Nội - Hạ Long', 6468000, 'Ngày 01: Hà Nội – Hạ Long (ăn trưa, ăn tối) Ngày 02: Hạ Long – Hà nội: (ăn sáng, ăn trưa)  Giá tour trọn gói: Cabin category	Double/twin  Giá tour bao gồm: •Tiệc cocktail đón khách • Lệ phí vào cửa và thăm quan • Chương trình tham quan • Cabin sang trọng có điều hòa, phòng tắm riêng, nóng lạnh, vòi hoa sen, bồn tắm đứng. • Các bữa ăn theo chương trình: 03 bữa trên tàu (01 bữa trưa và 01 bữa tối theo phong cách Việt Nam, 01 bữa sáng theo phong cách quốc tế), 01 bữa trưa tại nhà hàng • Hướng dẫn viên nói tiếng Anh trên tàu • Bảo hiểm du lịch trên tàu • Thuế và phí phục vụ  Giá tour không bao gồm: • Vé máy bay, xe vận chuyển, khách sạn  • Đồ uống theo yêu cầu • Dich vụ  Massage, thẩm mỹ, kayak,đò chèo tay, lặn biển, ca múa nhạc dân tộc • Các chi phí cá nhân • Tất cả các dịch vụ không đươc liệt kê trong phần “Dịch vụ bao gồm”', '2N1D', 'Trong nước', '14/6/2022', 'https://vietnamtourism.net.vn/upload/tour/d/c/d/c/3/dcdc338594181121e5b9e27e2197dc17.jpg', 1, 0),
(39, 'Du lịch Ban Mê Thuật', 'Hồ Chí Minh - Ban Mê Thuật - PLAYKU', 5560000, 'NGÀY 01: TP.HCM - BAN MÊ THUỘT (ĂN TỐI) NGÀY 02: BAN MÊ THUỘT - PLEIKU (ĂN BA BỮA) NGÀY 03: PLEIKU - BAN MÊ THUỘT (ĂN BA BỮA) NGÀY 04: BAN MÊ THUỘT - TP.HCM (ĂN BA BỮA)  GIÁ TOUR BAO GỒM: - Xe thăm quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) suốt chương trình. - Khách sạn: tương đương 03 sao hoặc khách sạn tư nhân. Tiêu chuẩn phòng 2 - 3 người lớn. - Buôn Mê thuột : Bạch Mã, Dakruco,…tương đương3*)  - TP.Pleiku : Hoàng Anh –Pleiku (tương đương 4*)  - Ăn theo chương trình: 03 bữa sáng + 03 bữa trưa + 03 bữa tối. - Hướng dẫn viên tiếng Việt. - Vé tham quan theo chương trình. - Bảo hiểm du lịch với mức bồi thường cao nhất 50.000.000đ/vụ. - Nước suối: 01 chai 0,5L/ ngày/ khách.  GIÁ TOUR KHÔNG BAO GỒM: - Chi phí cá nhân… - Chi phí tham quan ngoài chương trình. - Chi phí cưỡi voi tại Bản Đôn.   GIÁ TOUR DÀNH CHO TRẺ EM: - Trẻ em dưới 5 tuổi: Được miễn phí vé dịch vụ (ăn chung, ngủ chung với cha mẹ) Hai người lớn chỉ được kèm 1 trẻ em dưới 5 tuổi, em thứ hai trở lên phải mua ½ vé. - Tr', '4N3D', 'Trong nước', '29/6/2022', 'https://vietnamtourism.net.vn/upload/tour/6/3/6/6/7/6366749ad07163862d70108d111742cf.jpg', 1, 0),
(40, 'Du lịch Hà Nội Hạ Long Sapa', 'Đà Nẵng - Hà Nội - Lạng Sơn - Ninh Bình - Vinh', 5390000, 'NGÀY 01: HÀ NỘI - BẮC NINH - ĐỒNG ĐĂNG - TP. LẠNG SƠN  NGÀY 02: TP. LẠNG SƠN - CHI LĂNG - BẮC GIANG - HÀ NAM - NINH BÌNH  NGÀY 03: NINH BÌNH - ĐẢO LAN CHÂU - VINH  NGÀY 04: VINH - THANH HÓA - HÀ NỘI Ăn sáng tại khách sạn, Quý khách tự do đến giờ trả phòng. Xe đưa Quý khách khởi hành về Hà Nội, dừng ăn trưa tại nhà hàng địa phương. Đến Hà Nội, chương trình kết thúc tại điểm đón ban đầu.', '4N3D', 'Trong nước', '3/6/2022', 'https://images.baodantoc.vn/uploads/2021/Th%C3%A1ng%206/Ngay%2020/vinh-16240967369661608835259.jpg', 1, 0);

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

--
-- Đang đổ dữ liệu cho bảng `tour_comment`
--

INSERT INTO `tour_comment` (`tour_id`, `user_id`, `username`, `comment`) VALUES
(28, 42, 'user4', 'Rất thú vị');

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
(42, 20, 'Hằng ngày', '28/05/2022'),
(42, 21, 'Hằng ngày', '28/05/2022'),
(42, 20, 'Hằng ngày', '28/05/2022');

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

--
-- Đang đổ dữ liệu cho bảng `tour_rating`
--

INSERT INTO `tour_rating` (`user_id`, `tour_id`, `rating`, `feedback`) VALUES
(42, 20, 3.75, 'Cũng tàm tạm'),
(42, 21, 4, 'Khá tốt'),
(42, 20, 5, 'Rất tốt');

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
(42, 'user4', '356a192b7913b04c54574d18c28d46e6395428ab', 'Phan Việt Linh', 'Viper@gmail.com', '0123456789', '2', 1);

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
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
