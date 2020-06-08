-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2015 at 06:07 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `dict`
--

CREATE TABLE IF NOT EXISTS `dict` (
`id` int(11) NOT NULL,
  `english` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vietnamese` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `dict`
--

INSERT INTO `dict` (`id`, `english`, `vietnamese`) VALUES
(1, 'Cloudy', 'có mây'),
(2, 'Fog', 'sương mù'),
(3, 'Partly Cloudy', 'nhiều mây'),
(4, 'Rain', 'mưa'),
(5, 'AM Showers', 'Sáng mưa rào'),
(6, 'PM Showers', 'Chiều mưa rào'),
(7, 'Mostly Sunny', 'nắng ráo'),
(8, 'Sunny', 'nắng'),
(9, 'Mostly Clear', 'quang đãng'),
(10, 'Light Rain', 'mưa nhỏ'),
(11, 'AM Clouds/PM Sun', 'sáng mây chiều nắng'),
(12, 'Showers', 'Mưa rào'),
(13, 'mostly sunny', 'Phần lớn là nắng'),
(14, 'mostly cloudy', 'Chủ yếu là mây'),
(15, 'AM Thunderstorms', 'Ngày có dông'),
(16, 'AM Light Rain', 'sáng mưa nhỏ'),
(17, 'PM Light Rain', 'chiều mưa nhỏ');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `provinceid` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `alias` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`provinceid`, `name`, `type`, `alias`) VALUES
('01', 'Hà Nội', 'Thành Phố', 'ha_noi'),
('02', 'Hà Giang', 'Tỉnh', 'ha_giang'),
('04', 'Cao Bằng', 'Tỉnh', 'cao_bang'),
('06', 'Bắc Kạn', 'Tỉnh', 'bac_kan'),
('08', 'Tuyên Quang', 'Tỉnh', 'tuyen_quang'),
('10', 'Lào Cai', 'Tỉnh', 'lao_cai'),
('11', 'Điện Biên', 'Tỉnh', 'dien_bien'),
('12', 'Lai Châu', 'Tỉnh', 'lai_chau'),
('14', 'Sơn La', 'Tỉnh', 'son_la'),
('15', 'Yên Bái', 'Tỉnh', 'yen_bai'),
('17', 'Hòa Bình', 'Tỉnh', 'hoa_binh'),
('19', 'Thái Nguyên', 'Tỉnh', 'thai_nguyen'),
('20', 'Lạng Sơn', 'Tỉnh', 'lang_son'),
('22', 'Quảng Ninh', 'Tỉnh', 'quang_ninh'),
('24', 'Bắc Giang', 'Tỉnh', 'bac_giang'),
('25', 'Phú Thọ', 'Tỉnh', 'phu_tho'),
('26', 'Vĩnh Phúc', 'Tỉnh', 'vinh_phuc'),
('27', 'Bắc Ninh', 'Tỉnh', 'bac_ninh'),
('30', 'Hải Dương', 'Tỉnh', 'hai_duong'),
('31', 'Hải Phòng', 'Thành Phố', 'hai_phong'),
('33', 'Hưng Yên', 'Tỉnh', 'hung_yen'),
('34', 'Thái Bình', 'Tỉnh', 'thai_binh'),
('35', 'Hà Nam', 'Tỉnh', 'ha_nam'),
('36', 'Nam Định', 'Tỉnh', 'nam_dinh'),
('37', 'Ninh Bình', 'Tỉnh', 'ninh_binh'),
('38', 'Thanh Hóa', 'Tỉnh', 'thanh_hoa'),
('40', 'Nghệ An', 'Tỉnh', 'nghe_an'),
('42', 'Hà Tĩnh', 'Tỉnh', 'ha_tinh'),
('44', 'Quảng Bình', 'Tỉnh', 'quang_binh'),
('45', 'Quảng Trị', 'Tỉnh', 'quang_tri'),
('46', 'Thừa Thiên Huế', 'Tỉnh', 'thua_thien_hue'),
('48', 'Đà Nẵng', 'Thành Phố', 'da_nang'),
('49', 'Quảng Nam', 'Tỉnh', 'quang_nam'),
('51', 'Quảng Ngãi', 'Tỉnh', 'quang_ngai'),
('52', 'Bình Định', 'Tỉnh', 'binh_dinh'),
('54', 'Phú Yên', 'Tỉnh', 'phu_yen'),
('56', 'Khánh Hòa', 'Tỉnh', 'khanh_hoa'),
('58', 'Ninh Thuận', 'Tỉnh', 'ninh_thuan'),
('60', 'Bình Thuận', 'Tỉnh', 'binh_thuan'),
('62', 'Kon Tum', 'Tỉnh', 'kon_tum'),
('64', 'Gia Lai', 'Tỉnh', 'gia_lai'),
('66', 'Đắk Lắk', 'Tỉnh', 'dak_lak'),
('67', 'Đắk Nông', 'Tỉnh', 'dak_nong'),
('68', 'Lâm Đồng', 'Tỉnh', 'lam_dong'),
('70', 'Bình Phước', 'Tỉnh', 'binh_phuoc'),
('72', 'Tây Ninh', 'Tỉnh', 'tay_ninh'),
('74', 'Bình Dương', 'Tỉnh', 'binh_duong'),
('75', 'Đồng Nai', 'Tỉnh', 'dong_nai'),
('77', 'Vũng Tàu', 'Tỉnh', 'vung_tau'),
('79', 'Hồ Chí Minh', 'Thành Phố', 'ho_chi_minh'),
('80', 'Long An', 'Tỉnh', 'long_an'),
('82', 'Tiền Giang', 'Tỉnh', 'tien_giang'),
('83', 'Bến Tre', 'Tỉnh', 'ben_tre'),
('84', 'Trà Vinh', 'Tỉnh', 'tra_vinh'),
('86', 'Vĩnh Long', 'Tỉnh', 'vinh_long'),
('87', 'Đồng Tháp', 'Tỉnh', 'dong_thap'),
('89', 'An Giang', 'Tỉnh', 'an_giang'),
('91', 'Kiên Giang', 'Tỉnh', 'kien_giang'),
('92', 'Cần Thơ', 'Thành Phố', 'can_tho'),
('93', 'Hậu Giang', 'Tỉnh', 'hau_giang'),
('94', 'Sóc Trăng', 'Tỉnh', 'soc_trang'),
('95', 'Bạc Liêu', 'Tỉnh', 'bac_lieu'),
('96', 'Cà Mau', 'Tỉnh', 'ca_mau');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE IF NOT EXISTS `weather` (
`id` int(11) NOT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temperature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weather` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=316 ;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `place`, `ngay`, `temperature`, `weather`, `status`) VALUES
(1, 'ha_noi', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'nhiều mây', ''),
(2, 'ha_noi', '24-12-2015', 'từ 17 độ C đến 27 độ C', 'có mây', ''),
(3, 'ha_noi', '25-12-2015', 'từ 16 độ C đến 18 độ C', 'mưa', ''),
(4, 'ha_noi', '26-12-2015', 'từ 16 độ C đến 17 độ C', 'có mây', ''),
(5, 'ha_noi', '27-12-2015', 'từ 16 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(6, 'ha_giang', '23-12-2015', 'từ 13 độ C đến 28 độ C', 'nắng ráo', ''),
(7, 'ha_giang', '24-12-2015', 'từ 17 độ C đến 30 độ C', 'nắng ráo', ''),
(8, 'ha_giang', '25-12-2015', 'từ 16 độ C đến 21 độ C', 'mưa nhỏ', ''),
(9, 'ha_giang', '26-12-2015', 'từ 16 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(10, 'ha_giang', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(11, 'cao_bang', '23-12-2015', 'từ 19 độ C đến 25 độ C', 'nhiều mây', ''),
(12, 'cao_bang', '24-12-2015', 'từ 14 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(13, 'cao_bang', '25-12-2015', 'từ 13 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(14, 'cao_bang', '26-12-2015', 'từ 13 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(15, 'cao_bang', '27-12-2015', 'từ 13 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(16, 'bac_kan', '23-12-2015', 'từ 21 độ C đến 26 độ C', 'có mây', ''),
(17, 'bac_kan', '24-12-2015', 'từ 17 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(18, 'bac_kan', '25-12-2015', 'từ 15 độ C đến 18 độ C', 'mưa', ''),
(19, 'bac_kan', '26-12-2015', 'từ 15 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(20, 'bac_kan', '27-12-2015', 'từ 15 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(21, 'tuyen_quang', '23-12-2015', 'từ 20 độ C đến 26 độ C', 'nhiều mây', ''),
(22, 'tuyen_quang', '24-12-2015', 'từ 17 độ C đến 27 độ C', 'sáng mây chiều nắng', ''),
(23, 'tuyen_quang', '25-12-2015', 'từ 15 độ C đến 18 độ C', 'mưa', ''),
(24, 'tuyen_quang', '26-12-2015', 'từ 16 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(25, 'tuyen_quang', '27-12-2015', 'từ 16 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(26, 'lao_cai', '23-12-2015', 'từ 13 độ C đến 28 độ C', 'nắng ráo', ''),
(27, 'lao_cai', '24-12-2015', 'từ 17 độ C đến 30 độ C', 'nắng ráo', ''),
(28, 'lao_cai', '25-12-2015', 'từ 16 độ C đến 21 độ C', 'mưa nhỏ', ''),
(29, 'lao_cai', '26-12-2015', 'từ 16 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(30, 'lao_cai', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(31, 'dien_bien', '23-12-2015', 'từ 13 độ C đến 28 độ C', 'nắng ráo', ''),
(32, 'dien_bien', '24-12-2015', 'từ 17 độ C đến 30 độ C', 'nắng ráo', ''),
(33, 'dien_bien', '25-12-2015', 'từ 16 độ C đến 21 độ C', 'mưa nhỏ', ''),
(34, 'dien_bien', '26-12-2015', 'từ 16 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(35, 'dien_bien', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(36, 'lai_chau', '23-12-2015', 'từ 13 độ C đến 28 độ C', 'nắng ráo', ''),
(37, 'lai_chau', '24-12-2015', 'từ 17 độ C đến 30 độ C', 'nắng ráo', ''),
(38, 'lai_chau', '25-12-2015', 'từ 16 độ C đến 21 độ C', 'mưa nhỏ', ''),
(39, 'lai_chau', '26-12-2015', 'từ 16 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(40, 'lai_chau', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(41, 'son_la', '23-12-2015', 'từ 13 độ C đến 28 độ C', 'nắng ráo', ''),
(42, 'son_la', '24-12-2015', 'từ 17 độ C đến 30 độ C', 'nắng ráo', ''),
(43, 'son_la', '25-12-2015', 'từ 16 độ C đến 21 độ C', 'mưa nhỏ', ''),
(44, 'son_la', '26-12-2015', 'từ 16 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(45, 'son_la', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(46, 'yen_bai', '23-12-2015', 'từ 5 độ C đến 9 độ C', 'có mây', ''),
(47, 'yen_bai', '24-12-2015', 'từ -1 độ C đến 9 độ C', 'Chủ yếu là mây', ''),
(48, 'yen_bai', '25-12-2015', 'từ 1 độ C đến 10 độ C', 'nắng ráo', ''),
(49, 'yen_bai', '26-12-2015', 'từ -2 độ C đến 11 độ C', 'nắng ráo', ''),
(50, 'yen_bai', '27-12-2015', 'từ -3 độ C đến 6 độ C', 'nắng ráo', ''),
(51, 'hoa_binh', '23-12-2015', 'từ 7 độ C đến 10 độ C', 'Chủ yếu là mây', ''),
(52, 'hoa_binh', '24-12-2015', 'từ 4 độ C đến 9 độ C', 'Sáng mưa rào', ''),
(53, 'hoa_binh', '25-12-2015', 'từ 1 độ C đến 11 độ C', 'nhiều mây', ''),
(54, 'hoa_binh', '26-12-2015', 'từ 2 độ C đến 13 độ C', 'nắng ráo', ''),
(55, 'hoa_binh', '27-12-2015', 'từ 2 độ C đến 12 độ C', 'nhiều mây', ''),
(56, 'thai_nguyen', '23-12-2015', 'từ 21 độ C đến 26 độ C', 'có mây', ''),
(57, 'thai_nguyen', '24-12-2015', 'từ 17 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(58, 'thai_nguyen', '25-12-2015', 'từ 15 độ C đến 18 độ C', 'mưa', ''),
(59, 'thai_nguyen', '26-12-2015', 'từ 15 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(60, 'thai_nguyen', '27-12-2015', 'từ 15 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(61, 'lang_son', '23-12-2015', 'từ 20 độ C đến 24 độ C', 'có mây', ''),
(62, 'lang_son', '24-12-2015', 'từ 13 độ C đến 25 độ C', 'Sáng mưa rào', ''),
(63, 'lang_son', '25-12-2015', 'từ 12 độ C đến 14 độ C', 'mưa', ''),
(64, 'lang_son', '26-12-2015', 'từ 12 độ C đến 14 độ C', 'Sáng mưa rào', ''),
(65, 'lang_son', '27-12-2015', 'từ 12 độ C đến 15 độ C', 'mưa nhỏ', ''),
(66, 'quang_ninh', '23-12-2015', 'từ 21 độ C đến 27 độ C', 'sáng mây chiều nắng', ''),
(67, 'quang_ninh', '24-12-2015', 'từ 22 độ C đến 28 độ C', 'nắng ráo', ''),
(68, 'quang_ninh', '25-12-2015', 'từ 18 độ C đến 26 độ C', 'Sáng mưa rào', ''),
(69, 'quang_ninh', '26-12-2015', 'từ 19 độ C đến 25 độ C', 'nhiều mây', ''),
(70, 'quang_ninh', '27-12-2015', 'từ 19 độ C đến 26 độ C', 'nhiều mây', ''),
(71, 'bac_giang', '23-12-2015', 'từ 21 độ C đến 26 độ C', 'có mây', ''),
(72, 'bac_giang', '24-12-2015', 'từ 16 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(73, 'bac_giang', '25-12-2015', 'từ 15 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(74, 'bac_giang', '26-12-2015', 'từ 15 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(75, 'bac_giang', '27-12-2015', 'từ 15 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(76, 'phu_tho', '23-12-2015', 'từ 20 độ C đến 26 độ C', 'nhiều mây', ''),
(77, 'phu_tho', '24-12-2015', 'từ 17 độ C đến 27 độ C', 'sáng mây chiều nắng', ''),
(78, 'phu_tho', '25-12-2015', 'từ 15 độ C đến 18 độ C', 'mưa', ''),
(79, 'phu_tho', '26-12-2015', 'từ 16 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(80, 'phu_tho', '27-12-2015', 'từ 16 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(81, 'vinh_phuc', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'nhiều mây', ''),
(82, 'vinh_phuc', '24-12-2015', 'từ 17 độ C đến 27 độ C', 'có mây', ''),
(83, 'vinh_phuc', '25-12-2015', 'từ 16 độ C đến 18 độ C', 'mưa', ''),
(84, 'vinh_phuc', '26-12-2015', 'từ 16 độ C đến 17 độ C', 'có mây', ''),
(85, 'vinh_phuc', '27-12-2015', 'từ 16 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(86, 'bac_ninh', '23-12-2015', 'từ 21 độ C đến 26 độ C', 'có mây', ''),
(87, 'bac_ninh', '24-12-2015', 'từ 16 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(88, 'bac_ninh', '25-12-2015', 'từ 15 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(89, 'bac_ninh', '26-12-2015', 'từ 15 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(90, 'bac_ninh', '27-12-2015', 'từ 15 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(91, 'hai_duong', '23-12-2015', 'từ 20 độ C đến 25 độ C', 'sáng mây chiều nắng', ''),
(92, 'hai_duong', '24-12-2015', 'từ 15 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(93, 'hai_duong', '25-12-2015', 'từ 14 độ C đến 17 độ C', 'sáng mưa nhỏ', ''),
(94, 'hai_duong', '26-12-2015', 'từ 15 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(95, 'hai_duong', '27-12-2015', 'từ 14 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(96, 'hai_phong', '23-12-2015', 'từ 21 độ C đến 26 độ C', 'có mây', ''),
(97, 'hai_phong', '24-12-2015', 'từ 16 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(98, 'hai_phong', '25-12-2015', 'từ 14 độ C đến 17 độ C', 'Sáng mưa rào', ''),
(99, 'hai_phong', '26-12-2015', 'từ 15 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(100, 'hai_phong', '27-12-2015', 'từ 14 độ C đến 18 độ C', 'sáng mưa nhỏ', ''),
(101, 'hung_yen', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'sáng mây chiều nắng', ''),
(102, 'hung_yen', '24-12-2015', 'từ 16 độ C đến 28 độ C', 'có mây', ''),
(103, 'hung_yen', '25-12-2015', 'từ 15 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(104, 'hung_yen', '26-12-2015', 'từ 16 độ C đến 18 độ C', 'có mây', ''),
(105, 'hung_yen', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'có mây', ''),
(106, 'thai_binh', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'sáng mây chiều nắng', ''),
(107, 'thai_binh', '24-12-2015', 'từ 16 độ C đến 28 độ C', 'có mây', ''),
(108, 'thai_binh', '25-12-2015', 'từ 15 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(109, 'thai_binh', '26-12-2015', 'từ 16 độ C đến 18 độ C', 'có mây', ''),
(110, 'thai_binh', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'có mây', ''),
(111, 'ha_nam', '23-12-2015', 'từ 3 độ C đến 8 độ C', 'nhiều mây', ''),
(112, 'ha_nam', '24-12-2015', 'từ -1 độ C đến 9 độ C', 'nhiều mây', ''),
(113, 'ha_nam', '25-12-2015', 'từ 1 độ C đến 13 độ C', 'nắng ráo', ''),
(114, 'ha_nam', '26-12-2015', 'từ -1 độ C đến 14 độ C', 'nắng ráo', ''),
(115, 'ha_nam', '27-12-2015', 'từ -2 độ C đến 8 độ C', 'nắng ráo', ''),
(116, 'nam_dinh', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'sáng mây chiều nắng', ''),
(117, 'nam_dinh', '24-12-2015', 'từ 16 độ C đến 28 độ C', 'có mây', ''),
(118, 'nam_dinh', '25-12-2015', 'từ 15 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(119, 'nam_dinh', '26-12-2015', 'từ 16 độ C đến 18 độ C', 'có mây', ''),
(120, 'nam_dinh', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'có mây', ''),
(121, 'ninh_binh', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'sáng mây chiều nắng', ''),
(122, 'ninh_binh', '24-12-2015', 'từ 16 độ C đến 28 độ C', 'có mây', ''),
(123, 'ninh_binh', '25-12-2015', 'từ 15 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(124, 'ninh_binh', '26-12-2015', 'từ 16 độ C đến 18 độ C', 'có mây', ''),
(125, 'ninh_binh', '27-12-2015', 'từ 15 độ C đến 19 độ C', 'có mây', ''),
(126, 'thanh_hoa', '23-12-2015', 'từ 19 độ C đến 28 độ C', 'nhiều mây', ''),
(127, 'thanh_hoa', '24-12-2015', 'từ 18 độ C đến 28 độ C', 'sáng mây chiều nắng', ''),
(128, 'thanh_hoa', '25-12-2015', 'từ 15 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(129, 'thanh_hoa', '26-12-2015', 'từ 16 độ C đến 19 độ C', 'có mây', ''),
(130, 'thanh_hoa', '27-12-2015', 'từ 16 độ C đến 19 độ C', 'Sáng mưa rào', ''),
(131, 'nghe_an', '23-12-2015', 'từ 19 độ C đến 27 độ C', 'nhiều mây', ''),
(132, 'nghe_an', '24-12-2015', 'từ 22 độ C đến 28 độ C', 'nắng ráo', ''),
(133, 'nghe_an', '25-12-2015', 'từ 16 độ C đến 23 độ C', 'sáng mưa nhỏ', ''),
(134, 'nghe_an', '26-12-2015', 'từ 17 độ C đến 21 độ C', 'Sáng mưa rào', ''),
(135, 'nghe_an', '27-12-2015', 'từ 17 độ C đến 22 độ C', 'có mây', ''),
(136, 'ha_tinh', '23-12-2015', 'từ 19 độ C đến 27 độ C', 'nhiều mây', ''),
(137, 'ha_tinh', '24-12-2015', 'từ 22 độ C đến 28 độ C', 'nắng ráo', ''),
(138, 'ha_tinh', '25-12-2015', 'từ 16 độ C đến 23 độ C', 'sáng mưa nhỏ', ''),
(139, 'ha_tinh', '26-12-2015', 'từ 17 độ C đến 21 độ C', 'Sáng mưa rào', ''),
(140, 'ha_tinh', '27-12-2015', 'từ 17 độ C đến 22 độ C', 'có mây', ''),
(141, 'quang_binh', '23-12-2015', 'từ 21 độ C đến 27 độ C', 'sáng mây chiều nắng', ''),
(142, 'quang_binh', '24-12-2015', 'từ 22 độ C đến 28 độ C', 'nắng ráo', ''),
(143, 'quang_binh', '25-12-2015', 'từ 18 độ C đến 26 độ C', 'Sáng mưa rào', ''),
(144, 'quang_binh', '26-12-2015', 'từ 19 độ C đến 25 độ C', 'nhiều mây', ''),
(145, 'quang_binh', '27-12-2015', 'từ 19 độ C đến 26 độ C', 'nhiều mây', ''),
(146, 'quang_tri', '23-12-2015', 'từ 20 độ C đến 29 độ C', 'nhiều mây', ''),
(147, 'quang_tri', '24-12-2015', 'từ 21 độ C đến 31 độ C', 'nắng ráo', ''),
(148, 'quang_tri', '25-12-2015', 'từ 19 độ C đến 28 độ C', 'nhiều mây', ''),
(149, 'quang_tri', '26-12-2015', 'từ 19 độ C đến 28 độ C', 'nhiều mây', ''),
(150, 'quang_tri', '27-12-2015', 'từ 20 độ C đến 27 độ C', 'nhiều mây', ''),
(151, 'thua_thien_hue', '23-12-2015', 'từ 20 độ C đến 29 độ C', 'nhiều mây', ''),
(152, 'thua_thien_hue', '24-12-2015', 'từ 21 độ C đến 31 độ C', 'nắng ráo', ''),
(153, 'thua_thien_hue', '25-12-2015', 'từ 19 độ C đến 28 độ C', 'nhiều mây', ''),
(154, 'thua_thien_hue', '26-12-2015', 'từ 19 độ C đến 28 độ C', 'nhiều mây', ''),
(155, 'thua_thien_hue', '27-12-2015', 'từ 20 độ C đến 27 độ C', 'nhiều mây', ''),
(156, 'da_nang', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'nhiều mây', ''),
(157, 'da_nang', '24-12-2015', 'từ 21 độ C đến 29 độ C', 'nhiều mây', ''),
(158, 'da_nang', '25-12-2015', 'từ 21 độ C đến 28 độ C', 'nắng ráo', ''),
(159, 'da_nang', '26-12-2015', 'từ 19 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(160, 'da_nang', '27-12-2015', 'từ 21 độ C đến 27 độ C', 'nhiều mây', ''),
(161, 'quang_nam', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'nhiều mây', ''),
(162, 'quang_nam', '24-12-2015', 'từ 21 độ C đến 29 độ C', 'nhiều mây', ''),
(163, 'quang_nam', '25-12-2015', 'từ 21 độ C đến 28 độ C', 'nắng ráo', ''),
(164, 'quang_nam', '26-12-2015', 'từ 19 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(165, 'quang_nam', '27-12-2015', 'từ 21 độ C đến 27 độ C', 'nhiều mây', ''),
(166, 'quang_ngai', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'nhiều mây', ''),
(167, 'quang_ngai', '24-12-2015', 'từ 21 độ C đến 29 độ C', 'nhiều mây', ''),
(168, 'quang_ngai', '25-12-2015', 'từ 21 độ C đến 28 độ C', 'nắng ráo', ''),
(169, 'quang_ngai', '26-12-2015', 'từ 19 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(170, 'quang_ngai', '27-12-2015', 'từ 21 độ C đến 27 độ C', 'nhiều mây', ''),
(171, 'binh_dinh', '23-12-2015', 'từ 22 độ C đến 29 độ C', 'Sáng mưa rào', ''),
(172, 'binh_dinh', '24-12-2015', 'từ 20 độ C đến 30 độ C', 'nắng ráo', ''),
(173, 'binh_dinh', '25-12-2015', 'từ 21 độ C đến 29 độ C', 'nhiều mây', ''),
(174, 'binh_dinh', '26-12-2015', 'từ 20 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(175, 'binh_dinh', '27-12-2015', 'từ 21 độ C đến 28 độ C', 'Sáng mưa rào', ''),
(176, 'phu_yen', '23-12-2015', 'từ 23 độ C đến 28 độ C', 'Sáng mưa rào', ''),
(177, 'phu_yen', '24-12-2015', 'từ 22 độ C đến 28 độ C', 'Sáng mưa rào', ''),
(178, 'phu_yen', '25-12-2015', 'từ 23 độ C đến 28 độ C', 'nhiều mây', ''),
(179, 'phu_yen', '26-12-2015', 'từ 23 độ C đến 28 độ C', 'Sáng mưa rào', ''),
(180, 'phu_yen', '27-12-2015', 'từ 23 độ C đến 28 độ C', 'sáng mưa nhỏ', ''),
(181, 'khanh_hoa', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'Sáng mưa rào', ''),
(182, 'khanh_hoa', '24-12-2015', 'từ 22 độ C đến 30 độ C', 'nhiều mây', ''),
(183, 'khanh_hoa', '25-12-2015', 'từ 24 độ C đến 29 độ C', 'nhiều mây', ''),
(184, 'khanh_hoa', '26-12-2015', 'từ 23 độ C đến 29 độ C', 'nhiều mây', ''),
(185, 'khanh_hoa', '27-12-2015', 'từ 23 độ C đến 29 độ C', 'Sáng mưa rào', ''),
(186, 'ninh_thuan', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'Sáng mưa rào', ''),
(187, 'ninh_thuan', '24-12-2015', 'từ 22 độ C đến 30 độ C', 'nhiều mây', ''),
(188, 'ninh_thuan', '25-12-2015', 'từ 24 độ C đến 29 độ C', 'nhiều mây', ''),
(189, 'ninh_thuan', '26-12-2015', 'từ 23 độ C đến 29 độ C', 'nhiều mây', ''),
(190, 'ninh_thuan', '27-12-2015', 'từ 23 độ C đến 29 độ C', 'Sáng mưa rào', ''),
(191, 'binh_thuan', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'nắng ráo', ''),
(192, 'binh_thuan', '24-12-2015', 'từ 22 độ C đến 29 độ C', 'nắng ráo', ''),
(193, 'binh_thuan', '25-12-2015', 'từ 23 độ C đến 31 độ C', 'nắng ráo', ''),
(194, 'binh_thuan', '26-12-2015', 'từ 22 độ C đến 31 độ C', 'nắng ráo', ''),
(195, 'binh_thuan', '27-12-2015', 'từ 23 độ C đến 32 độ C', 'nắng ráo', ''),
(196, 'kon_tum', '23-12-2015', 'từ 22 độ C đến 29 độ C', 'Sáng mưa rào', ''),
(197, 'kon_tum', '24-12-2015', 'từ 20 độ C đến 30 độ C', 'nắng ráo', ''),
(198, 'kon_tum', '25-12-2015', 'từ 21 độ C đến 29 độ C', 'nhiều mây', ''),
(199, 'kon_tum', '26-12-2015', 'từ 20 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(200, 'kon_tum', '27-12-2015', 'từ 21 độ C đến 28 độ C', 'Sáng mưa rào', ''),
(201, 'gia_lai', '23-12-2015', 'từ 22 độ C đến 29 độ C', 'Sáng mưa rào', ''),
(202, 'gia_lai', '24-12-2015', 'từ 20 độ C đến 30 độ C', 'nắng ráo', ''),
(203, 'gia_lai', '25-12-2015', 'từ 21 độ C đến 29 độ C', 'nhiều mây', ''),
(204, 'gia_lai', '26-12-2015', 'từ 20 độ C đến 27 độ C', 'Sáng mưa rào', ''),
(205, 'gia_lai', '27-12-2015', 'từ 21 độ C đến 28 độ C', 'Sáng mưa rào', ''),
(206, 'dak_lak', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'Sáng mưa rào', ''),
(207, 'dak_lak', '24-12-2015', 'từ 22 độ C đến 30 độ C', 'nhiều mây', ''),
(208, 'dak_lak', '25-12-2015', 'từ 24 độ C đến 29 độ C', 'nhiều mây', ''),
(209, 'dak_lak', '26-12-2015', 'từ 23 độ C đến 29 độ C', 'nhiều mây', ''),
(210, 'dak_lak', '27-12-2015', 'từ 23 độ C đến 29 độ C', 'Sáng mưa rào', ''),
(211, 'dak_nong', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'nắng ráo', ''),
(212, 'dak_nong', '24-12-2015', 'từ 22 độ C đến 29 độ C', 'nắng ráo', ''),
(213, 'dak_nong', '25-12-2015', 'từ 23 độ C đến 31 độ C', 'nắng ráo', ''),
(214, 'dak_nong', '26-12-2015', 'từ 22 độ C đến 31 độ C', 'nắng ráo', ''),
(215, 'dak_nong', '27-12-2015', 'từ 23 độ C đến 32 độ C', 'nắng ráo', ''),
(216, 'lam_dong', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'nắng ráo', ''),
(217, 'lam_dong', '24-12-2015', 'từ 22 độ C đến 29 độ C', 'nắng ráo', ''),
(218, 'lam_dong', '25-12-2015', 'từ 23 độ C đến 31 độ C', 'nắng ráo', ''),
(219, 'lam_dong', '26-12-2015', 'từ 22 độ C đến 31 độ C', 'nắng ráo', ''),
(220, 'lam_dong', '27-12-2015', 'từ 23 độ C đến 32 độ C', 'nắng ráo', ''),
(221, 'binh_phuoc', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'nhiều mây', ''),
(222, 'binh_phuoc', '24-12-2015', 'từ 24 độ C đến 31 độ C', 'nắng ráo', ''),
(223, 'binh_phuoc', '25-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(224, 'binh_phuoc', '26-12-2015', 'từ 23 độ C đến 32 độ C', 'nắng ráo', ''),
(225, 'binh_phuoc', '27-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(226, 'tay_ninh', '23-12-2015', 'từ 24 độ C đến 34 độ C', 'nhiều mây', ''),
(227, 'tay_ninh', '24-12-2015', 'từ 23 độ C đến 35 độ C', 'nhiều mây', ''),
(228, 'tay_ninh', '25-12-2015', 'từ 23 độ C đến 36 độ C', 'nắng ráo', ''),
(229, 'tay_ninh', '26-12-2015', 'từ 23 độ C đến 36 độ C', 'nắng ráo', ''),
(230, 'tay_ninh', '27-12-2015', 'từ 23 độ C đến 36 độ C', 'nắng ráo', ''),
(231, 'binh_duong', '23-12-2015', 'từ 23 độ C đến 34 độ C', 'nhiều mây', ''),
(232, 'binh_duong', '24-12-2015', 'từ 23 độ C đến 35 độ C', 'nhiều mây', ''),
(233, 'binh_duong', '25-12-2015', 'từ 23 độ C đến 35 độ C', 'nắng ráo', ''),
(234, 'binh_duong', '26-12-2015', 'từ 23 độ C đến 35 độ C', 'nắng ráo', ''),
(235, 'binh_duong', '27-12-2015', 'từ 23 độ C đến 36 độ C', 'nắng ráo', ''),
(236, 'dong_nai', '23-12-2015', 'từ 23 độ C đến 34 độ C', 'nhiều mây', ''),
(237, 'dong_nai', '24-12-2015', 'từ 23 độ C đến 35 độ C', 'nhiều mây', ''),
(238, 'dong_nai', '25-12-2015', 'từ 23 độ C đến 35 độ C', 'nắng ráo', ''),
(239, 'dong_nai', '26-12-2015', 'từ 23 độ C đến 35 độ C', 'nắng ráo', ''),
(240, 'dong_nai', '27-12-2015', 'từ 23 độ C đến 36 độ C', 'nắng ráo', ''),
(241, 'vung_tau', '23-12-2015', 'từ 22 độ C đến 31 độ C', 'nắng ráo', ''),
(242, 'vung_tau', '24-12-2015', 'từ 22 độ C đến 30 độ C', 'nhiều mây', ''),
(243, 'vung_tau', '25-12-2015', 'từ 23 độ C đến 31 độ C', 'nắng ráo', ''),
(244, 'vung_tau', '26-12-2015', 'từ 22 độ C đến 31 độ C', 'nắng ráo', ''),
(245, 'vung_tau', '27-12-2015', 'từ 22 độ C đến 31 độ C', 'nắng ráo', ''),
(246, 'ho_chi_minh', '23-12-2015', 'từ 21 độ C đến 28 độ C', 'nhiều mây', ''),
(247, 'ho_chi_minh', '24-12-2015', 'từ 17 độ C đến 27 độ C', 'có mây', ''),
(248, 'ho_chi_minh', '25-12-2015', 'từ 16 độ C đến 18 độ C', 'mưa', ''),
(249, 'ho_chi_minh', '26-12-2015', 'từ 16 độ C đến 17 độ C', 'có mây', ''),
(250, 'ho_chi_minh', '27-12-2015', 'từ 16 độ C đến 18 độ C', 'Sáng mưa rào', ''),
(251, 'long_an', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'nhiều mây', ''),
(252, 'long_an', '24-12-2015', 'từ 24 độ C đến 31 độ C', 'nắng ráo', ''),
(253, 'long_an', '25-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(254, 'long_an', '26-12-2015', 'từ 23 độ C đến 32 độ C', 'nắng ráo', ''),
(255, 'long_an', '27-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(256, 'tien_giang', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'nhiều mây', ''),
(257, 'tien_giang', '24-12-2015', 'từ 24 độ C đến 31 độ C', 'nắng ráo', ''),
(258, 'tien_giang', '25-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(259, 'tien_giang', '26-12-2015', 'từ 23 độ C đến 32 độ C', 'nắng ráo', ''),
(260, 'tien_giang', '27-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(261, 'ben_tre', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'nhiều mây', ''),
(262, 'ben_tre', '24-12-2015', 'từ 24 độ C đến 31 độ C', 'nắng ráo', ''),
(263, 'ben_tre', '25-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(264, 'ben_tre', '26-12-2015', 'từ 23 độ C đến 32 độ C', 'nắng ráo', ''),
(265, 'ben_tre', '27-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(266, 'tra_vinh', '23-12-2015', 'từ 24 độ C đến 30 độ C', 'nhiều mây', ''),
(267, 'tra_vinh', '24-12-2015', 'từ 24 độ C đến 31 độ C', 'nắng ráo', ''),
(268, 'tra_vinh', '25-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(269, 'tra_vinh', '26-12-2015', 'từ 23 độ C đến 32 độ C', 'nắng ráo', ''),
(270, 'tra_vinh', '27-12-2015', 'từ 24 độ C đến 32 độ C', 'nắng ráo', ''),
(271, 'vinh_long', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(272, 'vinh_long', '24-12-2015', 'từ 23 độ C đến 32 độ C', 'nhiều mây', ''),
(273, 'vinh_long', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(274, 'vinh_long', '26-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(275, 'vinh_long', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(276, 'dong_thap', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(277, 'dong_thap', '24-12-2015', 'từ 23 độ C đến 32 độ C', 'nhiều mây', ''),
(278, 'dong_thap', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(279, 'dong_thap', '26-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(280, 'dong_thap', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(281, 'an_giang', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(282, 'an_giang', '24-12-2015', 'từ 23 độ C đến 32 độ C', 'nhiều mây', ''),
(283, 'an_giang', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(284, 'an_giang', '26-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(285, 'an_giang', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(286, 'kien_giang', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(287, 'kien_giang', '24-12-2015', 'từ 23 độ C đến 32 độ C', 'nhiều mây', ''),
(288, 'kien_giang', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(289, 'kien_giang', '26-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(290, 'kien_giang', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(291, 'can_tho', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(292, 'can_tho', '24-12-2015', 'từ 23 độ C đến 32 độ C', 'nhiều mây', ''),
(293, 'can_tho', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(294, 'can_tho', '26-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(295, 'can_tho', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(296, 'hau_giang', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(297, 'hau_giang', '24-12-2015', 'từ 23 độ C đến 32 độ C', 'nhiều mây', ''),
(298, 'hau_giang', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(299, 'hau_giang', '26-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(300, 'hau_giang', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(301, 'soc_trang', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(302, 'soc_trang', '24-12-2015', 'từ 23 độ C đến 32 độ C', 'nhiều mây', ''),
(303, 'soc_trang', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(304, 'soc_trang', '26-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(305, 'soc_trang', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(306, 'bac_lieu', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(307, 'bac_lieu', '24-12-2015', 'từ 24 độ C đến 32 độ C', 'nhiều mây', ''),
(308, 'bac_lieu', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(309, 'bac_lieu', '26-12-2015', 'từ 24 độ C đến 32 độ C', 'nhiều mây', ''),
(310, 'bac_lieu', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(311, 'ca_mau', '23-12-2015', 'từ 24 độ C đến 31 độ C', 'Ngày có dông', ''),
(312, 'ca_mau', '24-12-2015', 'từ 24 độ C đến 32 độ C', 'nhiều mây', ''),
(313, 'ca_mau', '25-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', ''),
(314, 'ca_mau', '26-12-2015', 'từ 24 độ C đến 32 độ C', 'nhiều mây', ''),
(315, 'ca_mau', '27-12-2015', 'từ 24 độ C đến 33 độ C', 'nắng ráo', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dict`
--
ALTER TABLE `dict`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
 ADD PRIMARY KEY (`provinceid`);

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dict`
--
ALTER TABLE `dict`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=316;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
