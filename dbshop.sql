-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2018 lúc 05:05 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bill_total` int(11) NOT NULL,
  `bill_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bill_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bill_datetime` date NOT NULL,
  `bill_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bill_accept` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bill_id`, `user_id`, `bill_total`, `bill_payment`, `bill_address`, `bill_datetime`, `bill_code`, `bill_accept`) VALUES
(-1156582520, 8, 75, 'Payment by card', 'nhon hau', '2018-12-17', '', 1),
(-1156116551, 8, 75, 'Payment by card', 'nhon hau', '2018-12-17', '', 1),
(-1155492886, 8, 75, 'Payment by card', 'quy nh&#417;n', '2018-12-17', '', 1),
(-1155242799, 1, 75, 'Payment by card', 'nhon hau', '2018-12-17', '', 1),
(-1155087460, 1, 75, 'Payment by card', 'nhon hau', '2018-12-17', '', 1),
(-1154772749, 8, 75, 'Payment by card', 'nhon hau', '2018-12-17', '', 1),
(-1154639306, 8, 131, 'Payment by card', 'nhon hau', '2018-12-17', '', 1),
(-1154028548, 8, 56, 'Payment by card', 'nhon hau', '2018-12-17', '', 1),
(-1153853677, 8, 75, 'Payment by card', 'nhon hau', '2018-12-17', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_detail_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bill_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`bill_detail_id`, `bill_id`, `product_id`, `bill_price`, `quantity`) VALUES
(25, -1156582520, 1, 75, 1),
(26, -1156116551, 1, 75, 1),
(27, -1155492886, 1, 75, 1),
(28, -1155242799, 1, 75, 1),
(29, -1155087460, 1, 75, 1),
(30, -1154772749, 1, 75, 1),
(31, -1154639306, 1, 75, 1),
(32, -1154639306, 2, 56, 1),
(33, -1154028548, 2, 56, 1),
(34, -1153853677, 1, 75, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_sex`) VALUES
('mclothes', 'Clothes', 'men'),
('mja_co', 'Jackets & Coats', 'men'),
('mjeans', 'Jeans', 'men'),
('mshirts', 'Shirts', 'men'),
('wclothes', 'Clothes', 'women'),
('wdresses', 'Dresses', 'women'),
('wjeans', 'Jeans', 'women'),
('wmaccessori', 'Accessories', 'men'),
('wshorts', 'Shorts', 'women'),
('wskirts', 'Skirts', 'women');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_overview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_more` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_sale`, `product_image`, `product_image2`, `product_image3`, `product_description`, `product_overview`, `product_more`) VALUES
(2, 'mjeans', 'Slim Jeans', 56, 54, 'images/img_sanpham/hmgoeppro.jpg', 'images/img_sanpham/hmgoeppro1.jpg', 'images/img_sanpham/hmgoeppro2.jpg', '5-pocket jeans in washed stretch denim with a zip fly and button and slim legs.', 'Cotton 98%; Elastane 2%', 'Machine wash at 40°'),
(3, 'mclothes', 'Padded jacket', 74, 0, 'images/img_sanpham/anh1.jpg', 'images/img_sanpham/anh2.jpg', 'images/img_sanpham/anh3.jpg', 'Short, padded jacket in woven fabric with a lined drawstring hood and a zip down the front. Flap side pockets with a button, one inner pocket with a hook and loop fastener, and elasticated ribbing at the cuffs and hem. Polyester filling. Lined.', 'SIZE Long sleeve  COMPOSITION Polyamide 100%Lining: Polyester 100%Padding: Polyester 100% ART. NO.0706388001', 'SIZE\r\nLong sleeve\r\nCOMPOSITION\r\nPolyamide 100%\r\nLining: Polyester 100%\r\nPadding: Polyester 100%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°\r\nDESCRIPTION\r\nBlack\r\nsolid colour\r\nCONCEPT\r\nL.O.G.G.\r\nART.NO.\r\n0706388001\r\nPrice in store and online can be different.'),
(5, 'mclothes', 'Pile-lined hooded jacket', 54, 0, 'images/img_sanpham/a1.jpg', 'images/img_sanpham/a2.jpg', 'images/img_sanpham/a3.jpg', 'Jacket in sweatshirt fabric with a pile-lined, drawstring hood, zip down the front, side pockets and ribbing at the cuffs and hem. Pile lining.\r\n\r\n', 'SIZE Long sleeve  COMPOSITION Cotton 60%; Polyester 40%Hood lining: Polyester 100% ART. NO.0690707005\r\n', 'SIZE\r\nLong sleeve\r\nCOMPOSITION\r\nCotton 60%; Polyester 40%\r\nHood lining: Polyester 100%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°'),
(6, 'mclothes', 'Hooded bomber jacket\r\n', 249, 0, 'images/img_sanpham/b1.jpg', 'images/img_sanpham/b2.jpg', 'images/img_sanpham/b3.jpg', 'MOSCHINO [TV] H&M. Lightly padded bomber jacket in print-patterned satin with a zip down the front, stand-up collar with press-studs and padded hood with a peak\r\n', 'SIZE Sleeve: Length: 69.0 cm (Size L) Shoulder: Width: 60.0 cm (Size L) Back: Length: 66.0 cm (Size L) Long sleeve ', 'SIZE\r\nSleeve: Length: 69.0 cm (Size L)\r\nShoulder: Width: 60.0 cm (Size L)\r\nBack: Length: 66.0 cm (Size L)\r\nLong sleeve\r\nSTYLE\r\nBomber jacket'),
(7, 'mclothes', 'Wool-blend Coat', 179, 0, 'images/img_sanpham/c1.jpg', 'images/img_sanpham/c2.jpg', 'images/img_sanpham/c3.jpg', 'Coat in a felted wool blend with narrow notch lapels, a decorative buttonhole and buttons down the front', 'SIZE Sleeve: Length: 67.0 cm (Size 52) Back: Length: 94.25 cm (Size 52) Long sleeve  COMPOSITION Lining: ', 'SIZE\r\nSleeve: Length: 67.0 cm (Size 52)\r\nBack: Length: 94.25 cm (Size 52)\r\nLong sleeve\r\nCOMPOSITION\r\nLining: Polyester 100%\r\nWool 53%; Polyester 43%; Polyamide 2%; Viscose 1%; Acrylic 1%'),
(8, 'mclothes', 'Appliquéd joggers\r\n', 119, 0, 'images/img_sanpham/d1.jpg', 'images/img_sanpham/d2.jpg', '', 'MOSCHINO [TV] H&M. Joggers in lightweight organic cotton sweatshirt fabric with an elasticated drawstring waist, pockets in the side seams and a back pocket. Appliqué on one leg and ribbed hems.\r\n\r\n\r\n\r\n', 'SIZE Inside leg: Length: 75.0 cm (Size L) Long  COMPOSITION Cotton 100% ART. NO.0691328002\r\n', 'SIZE\r\nInside leg: Length: 75.0 cm (Size L)\r\nLong\r\nSTYLE\r\nJoggers\r\nCOMPOSITION\r\nCotton 100%'),
(9, 'mclothes', 'Appliquéd joggers\r\n', 179, 0, 'images/img_sanpham/e1.jpg', 'images/img_sanpham/e2.jpg', 'images/img_sanpham/e3.jpg', 'MOSCHINO [TV] H&M. Joggers in sturdy jersey with a sheen, with raised embroidery in beads, sequins and glittery threads depicting a chain around the hips. Elasticated drawstring waist, zipped pockets in the side seams and ribbed hems. ', 'SIZE Inside leg: Length: 78.0 cm (Size L)  COMPOSITION Polyester 100%Elastic rib: Cotton 99%; Elastane 1% ART. NO.0690876001\r\n', 'SIZE\r\nInside leg: Length: 78.0 cm (Size L)\r\nSTYLE\r\nJoggers\r\nCOMPOSITION\r\nPolyester 100%\r\nElastic rib: Cotton 99%; Elastane 1%'),
(10, 'mclothes', '5-pack woven boxer shorts\r\n', 54, 0, 'images/img_sanpham/g1.jpg', 'images/img_sanpham/g2.jpg', 'images/img_sanpham/g3.jpg', 'Boxer shorts in a cotton weave with an elasticated waist, long legs and button fly.\r\n\r\n', 'COMPOSITION Cotton 100% ART. NO.0697920007\r\n', 'COMPOSITION\r\nCotton 100%\r\nCARE INSTRUCTIONS\r\nMachine wash at 60°\r\nDESCRIPTION\r\nDark grey/Black/White\r\nchecked'),
(11, 'mclothes', 'Wool-blend coat\r\n', 399, 0, 'images/img_sanpham/f1.jpg', 'images/img_sanpham/f2.jpg', 'images/img_sanpham/f3.jpg', 'Coat in sturdy twill made from a wool blend with notch lapels and buttons down the front and at the cuffs. Open chest pocket, three inner pockets and a single back vent. Satin lining.\r\n\r\n', 'SIZE Back: Length: 106.0 cm (Size 52) Shoulder: Width: 47.0 cm (Size 52) Sleeve: Length: 67.1 cm (Size 52) Long Long sleeve  COMPOSITION Lining: Viscose 100%Wool 61%; Polyester 19%; Polyamide 16%; Other fibres 4% ART. NO.0675925001\r\n', 'SIZE\r\nBack: Length: 106.0 cm (Size 52)\r\nShoulder: Width: 47.0 cm (Size 52)\r\nSleeve: Length: 67.1 cm (Size 52)\r\nLong\r\nLong sleeve\r\nCOMPOSITION\r\nLining: Viscose 100%\r\nWool 61%; Polyester 19%; Polyamide 16%; Other fibres 4%'),
(12, 'mclothes', 'Embroidered joggers\r\n', 119, 0, 'images/img_sanpham/h1.jpg', 'images/img_sanpham/h2.jpg', 'images/img_sanpham/h3.jpg', 'MOSCHINO [TV] H&M. Joggers in lightweight organic cotton sweatshirt fabric with an elasticated drawstring waist, pockets in the side seams and a back pocket. Embroidered text motif on one leg and ribbed hems.\r\n\r\n', 'SIZE Inside leg: Length: 75.0 cm (Size L)  COMPOSITION Cotton 100% ART. NO.0718073001\r\n', 'SIZE\r\nInside leg: Length: 75.0 cm (Size L)\r\nSTYLE\r\nJoggers\r\nCOMPOSITION\r\nCotton 100%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°'),
(13, 'mclothes', 'Skinny Fit Biker Jeans\r\n', 64, 0, 'images/img_sanpham/j1.jpg', 'images/img_sanpham/j2.jpg', 'images/img_sanpham/j3.jpg', '5-pocket jeans in washed stretch denim with a regular waist, button fly and skinny legs with quilted sections on the knees.\r\n\r\n', 'FIT Skinny fit  COMPOSITION Cotton 98%; Elastane 2% ART. NO.0720810001\r\n', 'FIT\r\nSkinny fit\r\nCOMPOSITION\r\nCotton 98%; Elastane 2%\r\nCARE INSTRUCTIONS\r\nMachine wash at 30°'),
(14, 'mjeans', 'Slim Low Joggers\r\n', 74, 0, 'images/img_sanpham/a11.jpg', 'images/img_sanpham/a12.jpg', 'images/img_sanpham/a13.jpg', 'Low-rise joggers in washed stretch denim with hard-worn details, side pockets and welt back pockets. Low crotch and tapered legs with gathered side seams and a zip at the hems.\r\n\r\n', 'SIZE Low waist  COMPOSITION Cotton 98%; Elastane 2% ART. NO.0384263013\r\n', 'SIZE\r\nLow waist\r\nCOMPOSITION\r\nCotton 98%; Elastane 2%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°\r\nDESCRIPTION\r\nDenim blue'),
(15, 'mjeans', 'Skinny Jeans\r\n', 34, 0, 'images/img_sanpham/b11.jpg', 'images/img_sanpham/b12.jpg', 'images/img_sanpham/b13.jpg', '5-pocket low-rise jeans in washed stretch denim with a button fly and skinny legs.\r\n\r\nSIZE Low waist  FIT Super skinny fit  COMPOSITION Cotton 99%;', 'SIZE Low waist  FIT Super skinny fit  COMPOSITION Cotton 99%; Elastane 1% ART. NO.0397068012\r\n', 'SIZE\r\nLow waist\r\nFIT\r\nSuper skinny fit\r\nCOMPOSITION\r\nCotton 99%; Elastane 1%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°'),
(16, 'mjeans', 'Tech Stretch Skinny Jeans\r\n', 94, 0, 'images/img_sanpham/c11.jpg', 'images/img_sanpham/c12.jpg', 'images/img_sanpham/c13.jpg', 'PREMIUM QUALITY. 5-pocket denim jeans with ultra-flexible stretch that keeps them in shape while providing full movement and optimum comfort. Regular waist, zip fly and button, and skinny legs.\r\n\r\n', 'SIZE Regular waist  FIT Super skinny fit  COMPOSITION Cotton 93%; Elastomultiester 5%; Elastane 2% ART. NO.0540768009\r\n', 'SIZE\r\nRegular waist\r\nFIT\r\nSuper skinny fit\r\nCOMPOSITION\r\nCotton 93%; Elastomultiester 5%; Elastane 2%\r\nCARE INSTRUCTIONS\r\nMachine wash at 30°'),
(17, 'mjeans', 'Slim Jeans\r\n', 74, 0, 'images/img_sanpham/d11.jpg', 'images/img_sanpham/d12.jpg', 'images/img_sanpham/d13.jpg', '5-pocket jeans in washed stretch denim with a regular waist, button fly and slim legs.\r\n\r\n', 'FIT Slim fit  COMPOSITION Cotton 98%; Elastane 2% ART. NO.0632756001\r\n', 'FIT\r\nSlim fit\r\nCOMPOSITION\r\nCotton 98%; Elastane 2%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°'),
(18, 'mjeans', 'Super Skinny Jeans\r\n', 34, 0, 'images/img_sanpham/e11.jpg', 'images/img_sanpham/e12.jpg', 'images/img_sanpham/e13.jpg', '5-pocket jeans in stretch denim with a regular waist, zip fly and skinny legs.\r\n\r\n', 'SIZE Regular waist  FIT Skinny fit  COMPOSITION Cotton 81%; Polyester 18%; Elastane 1% ART. NO.0581178008\r\n', 'SIZE\r\nRegular waist\r\nFIT\r\nSkinny fit\r\nCOMPOSITION\r\nCotton 81%; Polyester 18%; Elastane 1%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°'),
(19, 'mjeans', 'Biker jeans\r\n', 64, 0, 'images/img_sanpham/g11.jpg', 'images/img_sanpham/g12.jpg', '', '5-pocket jeans in washed stretch denim with a regular waist, button fly and skinny legs with quilted sections on the knees.\r\n\r\n', 'SIZE Regular waist  FIT Super skinny fit  COMPOSITION Pocket lining: Polyester 65%; Cotton 35%Cotton 98%; Elastane 2% ART. NO.0458428037\r\n', 'SIZE\r\nRegular waist\r\nFIT\r\nSuper skinny fit\r\nCOMPOSITION\r\nPocket lining: Polyester 65%; Cotton 35%\r\nCotton 98%; Elastane 2%\r\nCARE INSTRUCTIONS\r\nMachine wash at 30°'),
(20, 'mjeans', 'Skinny Jeans\r\n', 34, 0, 'images/img_sanpham/h11.jpg', 'images/img_sanpham/h12.jpg', '', '5-pocket low-rise jeans in washed stretch denim with a button fly and skinny legs.\r\n\r\n', 'SIZE Low waist  FIT Super skinny fit  COMPOSITION Pocket: Cotton 100%Cotton 99%; Elastane 1% ART. NO.0397068032\r\n', 'SIZE\r\nLow waist\r\nFIT\r\nSuper skinny fit\r\nCOMPOSITION\r\nPocket: Cotton 100%\r\nCotton 99%; Elastane 1%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°'),
(21, 'mjeans', 'Biker jeans\r\n', 64, 0, 'images/img_sanpham/j11.jpg', 'images/img_sanpham/j12.jpg', 'images/img_sanpham/j13.jpg', '5-pocket jeans in washed stretch denim with a regular waist, button fly and skinny legs with quilted sections on the knees.\r\n\r\n', 'SIZE Regular waist  FIT Super skinny fit  COMPOSITION Cotton 98%; Elastane 2% ART. NO.0458428010\r\n', 'SIZE\r\nRegular waist\r\nFIT\r\nSuper skinny fit\r\nCOMPOSITION\r\nCotton 98%; Elastane 2%\r\nCARE INSTRUCTIONS\r\nMachine wash at 30°'),
(22, 'mjeans', 'Super Skinny Jeans\r\n', 74, 0, 'images/img_sanpham/k11.jpg', 'images/img_sanpham/k12.jpg', 'images/img_sanpham/k13.jpg', '5-pocket, skinny-fit, low rise jeans in stretch denim with hard-worn details, a zip fly and super-skinny legs.\r\n\r\n', 'SIZE Low waist  FIT Super skinny fit  COMPOSITION Cotton 98%; Elastane 2% ART. NO.0636265001\r\n', 'SIZE\r\nLow waist\r\nFIT\r\nSuper skinny fit\r\nCOMPOSITION\r\nCotton 98%; Elastane 2%\r\nCARE INSTRUCTIONS\r\nMachine wash at 40°'),
(23, 'mjeans', 'Biker jeans\r\n', 64, 0, 'images/img_sanpham/y11.jpg', 'images/img_sanpham/y12.jpg', 'images/img_sanpham/y13.jpg', '5-pocket jeans in washed stretch denim with a regular waist, button fly and skinny legs with quilted sections on the knees.\r\n\r\n', 'SIZE Regular waist  FIT Super skinny fit  COMPOSITION Cotton 99%; Elastane 1% ART. NO.0458428032\r\n', 'SIZE\r\nRegular waist\r\nFIT\r\nSuper skinny fit\r\nCOMPOSITION\r\nCotton 99%; Elastane 1%\r\nCARE INSTRUCTIONS\r\nMachine wash at 30°');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(21) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `email`, `password`, `role`) VALUES
(1, 'Cu Le Sinh', '0984902137', 'cusinh2606@gmail.com', 'az0562242171', 0),
(2, 'Bui Nguyen Nhat Quang', '098112345', 'nhatquang@gmai.com', '123456', NULL),
(3, 'Nguyen Van Lanh', '0984902111', 'hmvanlanh1234@gmail.com', 'lanhcute', NULL),
(4, 'Nguyễn tấn được', '0984902113', 'duocchua@gmail.com', 'nutterools', NULL),
(5, 'Lê Ng?c Sang', '0984902130', 'ngocsang@gmail.com', 'nhoemnhieu', 0),
(6, 'Nguy?n v?n tí', '0984902112', 'eqwae@gmail.com', '12345678', 0),
(7, 'nguyen ngoc ngan', '0982302137', 'nagato26061@gmail.com', '0982302137', 0),
(8, 'sinh admin', '090511508', 'cusinh26@gmail.com', 'az0562242171', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_detail_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `bill_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
