-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 29, 2022 at 03:11 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ashebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `idcategory` int(50) NOT NULL AUTO_INCREMENT,
  `namecategory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idcategory`, `namecategory`) VALUES
(116, 'Tiểu thuyết'),
(126, 'Ngôn tình'),
(136, 'Tản văn'),
(146, 'Tác phẩm kinh điển');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

DROP TABLE IF EXISTS `galery`;
CREATE TABLE IF NOT EXISTS `galery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail_sub` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id`, `product_id`, `thumbnail_sub`) VALUES
(1, 200, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_1233.jpg'),
(2, 201, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_1236.jpg'),
(3, 202, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_240307.jpg'),
(4, 203, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2199.jpg'),
(5, 204, 'https://cdn0.fahasa.com/media/catalog/product/u/n/untitled-2_44.jpg'),
(6, 205, 'https://cdn0.fahasa.com/media/catalog/product/b/i/biamem.jpg'),
(7, 206, 'https://cdn0.fahasa.com/media/catalog/product/9/9/999lathu-taibbb1_2.jpg'),
(8, 207, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8934974178378.jpg'),
(9, 208, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_181813.jpg'),
(10, 209, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935230009474_1.jpg'),
(11, 210, 'https://cdn0.fahasa.com/media/catalog/product/c/o/co-mot-ngay-bo-me-se-gia-di.jpg'),
(12, 211, 'https://cdn0.fahasa.com/media/catalog/product/m/_/m_nh-ng_i-xu_ng-k_-t_n-th_ng-trong-l_ngbia-1.jpg'),
(13, 212, 'https://cdn0.fahasa.com/media/catalog/product/1/3/139990755_1302883240068333_3844579474690419303_n.jpg'),
(14, 213, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_219045.jpg'),
(15, 214, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935325004438.jpg'),
(16, 215, 'https://cdn0.fahasa.com/media/catalog/product/b/_/b_a-1_tam-biet-toi-cua-nhieu-nam-ve-truoc.jpg'),
(17, 216, 'https://cdn0.fahasa.com/media/catalog/product/b/i/bia-1_the-gioy-am-tham-yeu-em.jpg'),
(18, 217, 'https://cdn0.fahasa.com/media/catalog/product/c/u/cu-khoc-cu-tan-vo-va-tuong-thanh-bia-1-01.jpg'),
(19, 218, 'https://cdn0.fahasa.com/media/catalog/product/6/0/600bia-toi-thich-ban-than-no-luc-hon-pr-05.jpg'),
(20, 219, 'https://cdn0.fahasa.com/media/catalog/product/1/9/191ad89ed52f760cae09191072385879.jpg'),
(21, 220, 'https://cdn0.fahasa.com/media/catalog/product/b/i/bia-mem_tqtp5.jpg'),
(22, 221, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_38340.jpg'),
(23, 222, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_41937.jpg'),
(24, 223, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8936186541377.jpg'),
(25, 224, 'https://cdn0.fahasa.com/media/catalog/product/2/d/2d_81a3bd42598d4926934ae5c20a015663_master.jpg'),
(26, 225, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_77.jpg'),
(27, 226, 'https://cdn0.fahasa.com/media/catalog/product/b/_/b_a---ng_i-l_-bi_n-r_ng-k_-l_-m_t-tr_i.jpg'),
(28, 227, 'https://cdn0.fahasa.com/media/catalog/product/g/i/gionamhieulongtoi.jpg'),
(29, 228, 'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_dapanthoigian.jpg'),
(39, 229, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935212353144.jpg'),
(40, 230, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_235266_1.jpg'),
(41, 231, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_40337.jpg'),
(42, 232, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_33679.jpg'),
(43, 233, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2215.jpg'),
(44, 234, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244872002.jpg'),
(45, 235, 'https://cdn0.fahasa.com/media/catalog/product/h/o/hop_sach_tay_du_ky_tai_ban_2018_1_2020_05_26_15_19_09.jpg'),
(46, 236, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_40336.jpg'),
(47, 237, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_48045.jpg'),
(48, 238, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_223376.jpg'),
(49, 239, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935095627356.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productid` int(50) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(50) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idcategory` int(50) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `product_name`, `price`, `thumbnail`, `idcategory`) VALUES
(1, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ', 76000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_1233.jpg', 116),
(2, 'Tôi là Bêtô', 80000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_1236.jpg', 116),
(3, 'Rừng Nauy', 99000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_240307.jpg', 116),
(4, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 96000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2199.jpg', 116),
(5, 'Làm Bạn Với Bầu Trời', 65000, 'https://cdn0.fahasa.com/media/catalog/product/u/n/untitled-2_44.jpg', 116),
(6, 'Con Chim Xanh Biếc Bay Về', 112000, 'https://cdn0.fahasa.com/media/catalog/product/b/i/biamem.jpg', 116),
(7, '999 Lá Thư Gửi Cho Chính Mình', 76000, 'https://cdn0.fahasa.com/media/catalog/product/9/9/999lathu-taibbb1_2.jpg', 116),
(8, 'Có Hai Con Mèo Ngồi Bên Cửa Số', 417600, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8934974178378.jpg', 116),
(9, 'Chuyện Con Mèo Và Con Chuột Bạn Thân Của Nó', 29000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_181813.jpg', 116),
(10, 'Không gia đình', 122670, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935230009474_1.jpg', 116),
(11, 'Có Một Ngày, Bố Mẹ Sẽ Già Đi', 53000, 'https://cdn0.fahasa.com/media/catalog/product/c/o/co-mot-ngay-bo-me-se-gia-di.jpg', 126),
(12, 'Mình Ngồi Xuống Kể Tổn Thương Trong Lòng', 86130, 'https://cdn0.fahasa.com/media/catalog/product/m/_/m_nh-ng_i-xu_ng-k_-t_n-th_ng-trong-l_ngbia-1.jpg', 126),
(13, 'Chúng Ta Rồi Sẽ Hạnh Phúc, Theo Những Cách Khác Nhau', 53000, 'https://cdn0.fahasa.com/media/catalog/product/1/3/139990755_1302883240068333_3844579474690419303_n.jpg', 126),
(14, 'Gửi Bạn, Người Đã Kiệt Sức Vì Những Chịu Đựng Âm Thầm', 91000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_219045.jpg', 126),
(15, 'Mình Phải Sống Như Biển Rộng Sông Dài', 94830, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935325004438.jpg', 126),
(16, 'Tạm Biệt Tôi Của Nhiều Năm Về Trước', 82650, 'https://cdn0.fahasa.com/media/catalog/product/b/_/b_a-1_tam-biet-toi-cua-nhieu-nam-ve-truoc.jpg', 126),
(17, 'Thế Giới Này Âm Thầm Yêu Em', 122000, 'https://cdn0.fahasa.com/media/catalog/product/b/i/bia-1_the-gioy-am-tham-yeu-em.jpg', 126),
(18, 'Cứ Khóc, Cứ Tan Vỡ Và Trưởng Thành', 74000, 'https://cdn0.fahasa.com/media/catalog/product/c/u/cu-khoc-cu-tan-vo-va-tuong-thanh-bia-1-01.jpg', 126),
(19, 'Tôi Thích Bản Thân Nỗ Lực Hơn', 86000, 'https://cdn0.fahasa.com/media/catalog/product/6/0/600bia-toi-thich-ban-than-no-luc-hon-pr-05.jpg', 126),
(20, 'Bình Thản Đối Diện, Nhẹ Nhàng Bước Qua', 94000, 'https://cdn0.fahasa.com/media/catalog/product/1/9/191ad89ed52f760cae09191072385879.jpg', 126),
(21, 'Thiên Quan Tứ Phúc', 116000, 'https://cdn0.fahasa.com/media/catalog/product/b/i/bia-mem_tqtp5.jpg', 136),
(22, 'All In Love - Ngập Tràn Yêu Thương', 119000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_38340.jpg', 136),
(23, 'Từng Có Người Yêu Tôi Như Sinh Mệnh', 122000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_41937.jpg', 136),
(24, 'Bảy Năm Vẫn Ngoảnh Về Phương Bắc (Bộ 3 Tập: 3,4,5)', 365000, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8936186541377.jpg', 136),
(25, 'Động Phòng Hoa Chúc Cách Vách', 112000, 'https://cdn0.fahasa.com/media/catalog/product/2/d/2d_81a3bd42598d4926934ae5c20a015663_master.jpg', 136),
(26, 'Em Là Vì Sao Trong Mắt Anh', 121000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_77.jpg', 136),
(27, 'Người Là Biển Rộng, Kẻ Là Mặt Trời', 141000, 'https://cdn0.fahasa.com/media/catalog/product/b/_/b_a---ng_i-l_-bi_n-r_ng-k_-l_-m_t-tr_i.jpg', 136),
(28, 'Gió Nam Hiểu Lòng Tôi', 236000, 'https://cdn0.fahasa.com/media/catalog/product/g/i/gionamhieulongtoi.jpg', 136),
(29, 'Đáp Án Của Thời Gian', 113000, 'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_dapanthoigian.jpg', 136),
(39, 'Uống Nhầm Một Ánh Mắt, Cơn Say Theo Cả Đời', 245000, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935212353144.jpg', 136),
(40, 'Hai Vạn Dặm Dưới Đáy Biển', 67000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_235266_1.jpg', 146),
(41, 'Tam Quốc Diễn Nghĩa', 370000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_40337.jpg', 146),
(42, 'Thần Thoại Hy Lạp', 209000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_33679.jpg', 146),
(43, 'Suối Nguồn', 275000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2215.jpg', 146),
(44, 'Đất Rừng Phương Nam', 237000, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244872002.jpg', 146),
(45, 'Hộp Sách: Tây Du Ký (Tái Bản 2018)', 399000, 'https://cdn0.fahasa.com/media/catalog/product/h/o/hop_sach_tay_du_ky_tai_ban_2018_1_2020_05_26_15_19_09.jpg', 146),
(46, 'Heidi', 228000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_40336.jpg', 146),
(47, 'Đồi Gió Hú', 93000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_48045.jpg', 146),
(48, 'Alice Ở Xứ Sở Diệu Kỳ', 142000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_223376.jpg', 146),
(49, 'Phù Thủy Xứ Oz', 83000, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935095627356.jpg', 146);

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

DROP TABLE IF EXISTS `user_form`;
CREATE TABLE IF NOT EXISTS `user_form` (
  `id` int(225) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `birthday` varchar(18) NOT NULL,
  `role` varchar(25) DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `email`, `password`, `phone`, `birthday`, `role`) VALUES
(17, '030236200107@st.buh.edu.vn', '222222', '0123-456-789', '2022-10-20', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
