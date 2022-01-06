-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2021 at 08:29 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhom09`
--

-- --------------------------------------------------------

--
-- Table structure for table `mannufactures`
--

DROP TABLE IF EXISTS `mannufactures`;
CREATE TABLE IF NOT EXISTS `mannufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mannufactures`
--

INSERT INTO `mannufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Oppo'),
(3, 'Samsung'),
(4, 'Xiaomi'),
(5, 'Đồng Hồ'),
(6, 'LapTop'),
(7, 'Loa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripttion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `descripttion`, `feature`, `created_at`) VALUES
(12, 'Điện thoại OPPO A74 5G', 2, 1, 7990000, 'oppo-a74-5g-bac-1-org.jpg', 'OPPO A74 5G mẫu điện thoại có kết nối 5G với mức giá tốt của OPPO. Máy có thiết kế tinh tế, màn hình 90 Hz mượt mà và cụm camera làm đẹp AI sẽ là những điểm nhấn “đáng tiền” trên mẫu điện thoại này.', 0, '2021-11-17 06:19:06'),
(3, 'Điện thoại OPPO Reno6 Z 5G', 2, 1, 9490000, 'oppo-reno6-z-5g-bac-1-org.jpg', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua', 1, '2021-10-22 01:52:23'),
(2, 'Điện thoại OPPO Reno6 Pro 5G', 2, 1, 18490000, 'oppo-reno6-pro-5g-xanh-duong-1.jpg', 'OPPO Reno6 Pro 5G - một sản phẩm thuộc dòng Reno6 của OPPO, thỏa mãn những gì người tiêu dùng đã trông đợi với cấu hình khủng cùng hệ thống camera cực ấn tượng và ngoại hình bắt mắt, thật hào hứng mong chờ để được trải nghiệm.', 0, '2021-11-10 06:13:56'),
(4, 'Điện thoại OPPO Find X3 Pro 5G', 2, 1, 23990000, 'oppo-find-x3-pro-xanh-1-org.jpg', 'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android.', 1, '2021-11-09 06:13:56'),
(5, 'Điện thoại Xiaomi 11 Lite 5G NE', 4, 1, 9490000, 'xiaomi-11-lite-5g-ne-1-1.jpg', 'Xiaomi 11 Lite 5G NE một phiên bản có ngoại hình rất giống với Mi 11 Lite được ra mắt trước đây. Chiếc smartphone này của Xiaomi mang trong mình một hiệu năng ổn định, thiết kế sang trọng và màn hình lớn đáp ứng tốt các tác vụ hằng ngày của bạn một cách dễ dàng', 1, '2021-10-22 01:52:23'),
(6, 'Điện thoại iPhone 12 64GB ', 1, 1, 20490000, 'iphone-12-den-1-1-org.jpg', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB', 1, '2021-10-22 11:40:34'),
(33, 'Loa Bluetooth Mozard X21', 7, 3, 495000, 'bluetooth-mozard-x21-1-1.jpg', 'Loa Bluetooth Mozard X21 có dạng hình tròn, chi tiết tinh tế cho cảm giác sang trọng, cao cấp. Tích hợp dây treo đồng màu cho phép bạn treo móc, mang theo tiện lợi khi đi du lịch, công tác hoặc đơn giản là di chuyển giữa các phòng trong nhà.', 1, '2021-12-23 07:52:08'),
(8, 'Laptop Apple MacBook Air M1 2020 16GB/512GB/7-core GPU (Z12A00050)', 6, 2, 39490000, 'apple-macbook-air-m1-2020-z12a00050-1-org.jpg', 'Laptop Apple MacBook Air M1 2020 (Z12A00050) mang nét thanh lịch sang trọng với thiết kế kim loại nguyên khối cùng hiệu năng vượt trội nhờ chip M1 độc quyền của “nhà Táo” sẽ mang đến cho bạn những trải nghiệm riêng biệt mà chỉ dòng máy MacBook mới có được', 1, '2021-10-22 11:47:33'),
(9, 'Apple Watch S6 40mm viền nhôm dây cao su', 5, 1, 9592000, 'apple-watch-s6-40mm-vien-nhom-day-cao-su-xanh-cont-1-org.jpg', 'Apple Watch S6 mang đến những nâng cấp hữu ích để hỗ trợ người dùng một cách tối ưu nhất. Nổi bật trong số đó là chip xử lý S6 cải thiện hiệu năng, hệ điều hành watchOS 7 với nhiều tính năng mới hứa hẹn sẽ mang đến những trải nghiệm tốt hơn, thú vị hơn', 1, '2021-10-22 11:48:56'),
(10, 'Loa vi tính Microlab B26', 7, 3, 254000, 'vi-tinh-microlab-b26-den-2-1.jpg', 'Loa vi tính Microlab B26 có 2 chiếc loa nhỏ trọng lượng chỉ 0.5 kg, chất liệu nhựa tốt, màu đen trơn bóng đẹp, rất tiện lợi khi mang đi và đặt ở bất kỳ nơi nào bạn muốn. Sản phẩm vận hành liên tục nhờ nguồn điện trực tiếp, không lo hết pin trong quá trình sử dụng', 1, '2021-10-22 11:50:25'),
(11, 'Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22 ', 7, 3, 4990000, 'airpods-pro-wireless-charge-apple-mwp22-ava-1-org.jpg', 'irPods Pro với thiết kế gọn gàng, đẹp và tinh tế, tai nghe được thiết kế theo dạng In-ear thay vì Earbuds như AirPods 2, cho phép chống ồn tốt hơn, khó rớt khi đeo và đặc biệt là êm tai hơn', 1, '2021-10-22 11:52:21'),
(13, 'Điện thoại OPPO Reno5 Marvel', 2, 1, 9690000, 'oppo-reno5-marvel-1-1-org.jpg', 'OPPO cho ra mắt một phiên bản giới hạn mới OPPO Reno5 Marvel, về hiệu năng cấu hình bên trong máy hoàn toàn tương tự so với Reno5, nhưng về kiểu dáng bên ngoài máy có phần khác biệt với thiết kế tùy chỉnh với mặt lưng có logo Marvel, logo Avengers hoàn toàn mới lạ.', 0, '2021-11-03 06:21:17'),
(14, 'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB', 3, 1, 21990000, 'samsung-galaxy-s21-ultra-bac-1-org.jpg', 'Sự đẳng cấp được Samsung gửi gắm thông qua chiếc smartphone Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.', 1, '2021-11-17 06:23:15'),
(15, 'Điện thoại Samsung Galaxy S21+ 5G 128GB', 3, 1, 17990000, 'samsung-galaxy-s21-plus-tim-1-org.jpg\r\n', 'Ẩn đằng sau thiết kế tuyệt tác của siêu phẩm Galaxy S21+ 5G là cả một kỳ quan công nghệ, mà ở đó bạn có thể trải nghiệm hiệu năng mạnh mẽ nhất, những công nghệ tiên phong, dẫn đầu trào lưu với cụm camera đỉnh cao đến từ Samsung.', 1, '2021-11-03 06:25:07'),
(16, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB) ', 3, 1, 13490000, 'samsung-galaxy-s20-fan-edition-xanh-duong-1-org.jpg', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 1, '2021-11-08 06:26:12'),
(17, 'Điện thoại Samsung Galaxy A51 (6GB/128GB) ', 3, 1, 7490000, 'samsung-galaxy-a51-xanh-ngoc-1-org.jpg\r\n', 'Theo Strategy Analytics, Galaxy A51 là Smartphone Android Bán Chạy Nhất Thế Giới Quý 1/2020, máy sở hữu cụm 4 camera, bao gồm camera macro chụp cận cảnh lần đầu xuất hiện trên smartphone Samsung, màn hình tràn viền vô cực cùng mặt lưng họa tiết kim cương nổi bật.', 1, '2021-11-09 06:27:45'),
(18, 'Điện thoại iPhone 13 Pro Max 128GB', 1, 1, 33990000, 'iphone-13.jpg', 'iPhone 13 Pro Max 128GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.\r\n', 1, '2021-12-14 07:11:20'),
(19, 'Điện thoại iPhone 12 Pro Max 128GB\r\n', 1, 1, 32990000, 'iphone-12-.jpg', 'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', 1, '2021-12-21 07:11:20'),
(20, 'Điện thoại iPhone 11 64GB', 1, 1, 18990000, 'iphone-11-.jpg', 'Tháng 09/2019, Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', 1, '2021-12-07 07:17:34'),
(21, 'Điện thoại iPhone XR 64GB', 1, 1, 14490000, 'iphone-xr-.jpg', 'Là chiếc điện thoại iPhone có mức giá dễ chịu, phù hợp với nhiều khách hàng hơn, iPhone Xr vẫn được ưu ái trang bị chip Apple A12 mạnh mẽ, màn hình tai thỏ cùng khả năng kháng nước kháng bụi', 1, '2021-12-22 07:17:34'),
(22, 'Điện thoại iPhone SE 64GB (2020)', 1, 1, 13490000, 'iphone-se-64gb-2020-hop-moi-trang-1-1-org.jpg', 'iPhone SE 2020 đã bất ngờ ra mắt với thiết kế 4.7 inch nhỏ gọn, chip A13 Bionic mạnh mẽ như trên iPhone 11 và đặc biệt sở hữu mức giá tốt chưa từng có.', 1, '2021-12-08 07:20:54'),
(23, 'Laptop Asus TUF Gaming FX506HCB i5 11400H/8GB/512GB/4GB RTX3050/144Hz/Win11 (HN1138W)', 6, 2, 24190000, 'asus-tuf-gaming-fx506hcb-i5-hn1138w-1.jpg', 'Laptop Asus TUF Gaming FX506HCB i5 (HN1138W) không chỉ mang trong mình bộ CPU Intel Core i5 thế hệ 11 mạnh mẽ mà còn sở hữu ngoại hình ấn tượng, cho bạn thỏa sức sáng tạo đồ họa cũng như chiến game cực đã.', 1, '2021-12-08 07:29:32'),
(24, 'Laptop HP 15s fq2559TU i5 1135G7/8GB/512GB/Win10 (46M27PA)', 6, 2, 17990000, 'hp-15s-fq2559tu-i5-46m27pa-1-org.jpg', 'Laptop HP 15s fq2559TU i5 (46M27PA) sở hữu ngoại hình thanh lịch và vi xử lý Intel thế hệ 11 hiện đại, kết hợp công nghệ màn hình cao cấp cho hiệu năng ổn định và chất lượng hình ảnh tuyệt vời.', 1, '2021-12-15 07:32:53'),
(25, 'Laptop Asus VivoBook A515EA OLED i5 1135G7/8GB/512GB/Win11 (L12032W) ', 6, 2, 19690000, 'asus-vivobook-a515ea-oled-i5-l12032w-1.jpg', 'Laptop Asus VivoBook A515EA OLED i5 (L12032W) hiệu năng vượt trội đến từ bộ vi xử lý Intel Gen 11 được bao bọc bởi lớp vỏ ngoài sang trọng, hiện đại, phục vụ tốt cho việc học tập, làm việc văn phòng hay xem phim, nghe nhạc giải trí hàng ngày.', 1, '2021-12-09 07:32:53'),
(26, 'Apple Watch S6 40mm viền nhôm dây silicone', 5, 5, 10191000, 'apple-watch.jpg', 'Apple Watch S6 mang đến những nâng cấp hữu ích để hỗ trợ người dùng một cách tối ưu nhất. Nổi bật trong số đó là chip xử lý S6 cải thiện hiệu năng, hệ điều hành watchOS 7 với nhiều tính năng mới hứa hẹn sẽ mang đến những trải nghiệm tốt hơn, thú vị hơn.', 1, '2021-12-15 06:53:04'),
(27, 'Oppo Watch 41mm dây silicone hồng', 5, 5, 4312000, 'oppo-watch-41mm.jpg', 'Đồng hồ thông minh Oppo Watch màu hồng phiên bản 41mm trang bị màn hình AMOLED 1.6 inch cùng độ phân giải là 320 x 360 pixels, mật độ điểm ảnh 326ppi cho chất lượng hiển thị cực kì sắc nét. Dây đeo làm từ silicone với thiết kế mang lại cảm giác vô cùng mềm mại, không bị đau khi đeo lâu. ', 1, '2021-12-11 06:55:54'),
(28, 'Vòng đeo tay thông minh Mi Band 6 ', 5, 5, 990000, 'mi-band-6-note-2.', 'Vòng đeo tay thông minh Mi Band 6 là phiên bản đáng mong đợi của nhà Xiaomi với thiết kế màn hình tràn viền cho bạn góc nhìn tốt hơn. Mặt kính cường lực chống trầy xước tốt cùng dây đeo cao su với thiết kế ôm trọn cổ tay, không thấm nước khi đeo, mang lại cho bạn cảm giác dễ chịu cả ngày dài.', 1, '2021-12-12 06:55:54'),
(29, 'Đồng hồ thông minh Garmin Venu SQ Music dây silicone vàng', 5, 5, 6190000, 'garmin-venu-sq-music-day-silicone-note.jpg', 'Đồng hồ thông minh Garmin Venu SQ Music với kiểu dáng thời thượng, thiết kế sang trọng đầy hiện đại, phù hợp với mọi lứa tuổi và giới tính, từ sinh viên đến nhân viên văn phòng. Nhờ có viền nhôm nhẹ nhưng chịu lực tốt, công nghệ màn hình LCD hiện đại và lớp kính cường lực chắc chắn, bền bỉ. Bên cạnh đó, dây đeo làm từ chất liệu silicone nhẹ nhàng, có độ đàn hồi cao giúp đem lại cho bạn sự thoải mái hoạt động cả ngày khi đeo mẫu đồng hồ này trên tay.', 1, '2021-12-30 07:07:49'),
(35, 'Điện thoại Xiaomi 11 Lite 5G NE', 4, 1, 8990000, 'xiaomi-11-lite-5g-ne-1-1.jpg', 'Xiaomi 11 Lite 5G NE một phiên bản có ngoại hình rất giống với Mi 11 Lite được ra mắt trước đây. Chiếc smartphone này của Xiaomi mang trong mình một hiệu năng ổn định, thiết kế sang trọng và màn hình lớn đáp ứng tốt các tác vụ hằng ngày của bạn một cách dễ dàng.', 1, '2021-12-10 08:59:34'),
(36, 'Điện thoại Xiaomi Redmi Note 10S 8GB ', 4, 1, 6490000, 'xiaomi-redmi-note-10s-xanh-duong-1-org.jpg', 'Bên cạnh Redmi Note 10, Xiaomi còn giới thiệu thêm phiên bản Redmi Note 10S với điểm nhấn chính là cụm camera 64 MP, màn hình AMOLED sắc nét, hiệu năng mạnh mẽ nhưng lại có mức giá rẻ đến bất ngờ.', 1, '2021-12-10 08:59:34'),
(32, 'Loa Bluetooth Sony SRS-XB13', 7, 3, 1290000, 'bluetooth-sony-srs-xb13-1-1-org.jpg', 'Thiết kế loa Bluetooth Sony đơn giản, gọn nhẹ chỉ 0.4 kg, đi kèm dây treo cho bạn dễ dàng đeo vào cổ tay của mình hoặc treo móc vào balo mang theo khi đi chơi, du lịch, đi học,... Chất liệu vỏ nhựa có thêm lớp UV coating cho độ bền cao, chống trầy xước, làm sạch nhẹ nhàng', 1, '2021-12-16 07:13:13'),
(34, 'Điện thoại Xiaomi 11T 5G 256GB', 4, 1, 11390000, 'iaomi-11t-xam.jpg', 'Xiaomi 11T 5G sở hữu màn hình AMOLED, viên pin siêu khủng cùng camera độ phân giải 108 MP, chiếc smartphone này của Xiaomi sẽ đáp ứng mọi nhu cầu sử dụng của bạn, từ giải trí đến làm việc đều vô cùng mượt mà.', 1, '2021-12-14 08:57:45'),
(37, 'Điện thoại Xiaomi Redmi 9C (3GB/64GB)', 4, 1, 2990000, '1200-c3m-black-org.jpg', 'Xiaomi Redmi 9C (3GB/64GB), smartphone nổi bật trong phân khúc điện thoại giá rẻ với thiết kế tinh tế sang trọng, hiệu năng mạnh mẽ Helio G35 mới, viên pin dung lượng khủng, cùng bộ 3 AI camera bắt trọn mọi khoảnh khắc.', 1, '2021-12-09 09:02:16'),
(38, 'Điện thoại Xiaomi Redmi Note 9 ', 4, 1, 4490000, 'xiaomi-redmi-note-9-trang-1-org.jpg', 'Xiaomi Redmi Note 9 là mẫu smartphone tầm trung, cân bằng giữa các yếu tố thiết kế, camera và hiệu năng, đáp ứng mượt mà hầu hết các nhu cầu từ cơ bản đến nâng cao của người dùng.', 1, '2021-12-17 09:02:16'),
(39, 'Laptop Asus ROG Zephyrus G14 Alan Walker GA401QEC R9 5900HS/16GB 1TB/4GB RTX3050Ti/120Hz/Túi/Win10 (K2064T) ', 6, 2, 44990000, 'asus-rog-zephyrus.jpg', 'Cùng bạn đối đầu mọi thách thức trên chiến trường ảo nhờ bộ vi xử lý mạnh mẽ AMD và phong cách thiết kế độc đáo, khẳng định chất tôi riêng của siêu phẩm độc nhất vô nhị Asus ROG Zephyrus Gaming G14 Alan Walker (K2064T), hứa hẹn sẽ mang đến những trải nghiệm tuyệt hảo khó quên cho người dùng. Nếu là một fan của Alan Walker thì đây chính là sản phẩm bạn không thể bỏ lỡ.', 1, '2021-12-21 11:28:18'),
(40, 'Laptop Asus TUF Gaming FX506HCB i5 11400H/8GB/512GB/4GB RTX3050/144Hz/Win11 (HN1138W)', 6, 2, 24990000, 'asus-tuf-gaming-fx506hcb-i5-hn1138w-1.jpg', 'Laptop Asus TUF Gaming FX506HCB i5 (HN1138W) không chỉ mang trong mình bộ CPU Intel Core i5 thế hệ 11 mạnh mẽ mà còn sở hữu ngoại hình ấn tượng, cho bạn thỏa sức sáng tạo đồ họa cũng như chiến game cực đã.', 1, '2021-12-22 11:28:18'),
(41, 'Laptop MSI Modern 14 B11MOU i7 1195G7/8GB/512GB/Túi/Chuột/Win10 (847VN)', 6, 2, 21990000, 'msi-modern-14-b11mou-i7-847vn-1.jpg', 'MSI Modern 14 B11MOU i7 (847VN) là một chiếc laptop học tập - văn phòng ở mức giá tầm trung nhưng sở hữu sức mạnh hiệu năng vượt trội đến từ con chip Intel thế hệ 11 hiện đại cùng vẻ ngoài sang trọng, cao cấp, hứa hẹn đáp ứng tốt cho công việc cũng như giải trí hoàn hảo.', 1, '2021-12-22 11:32:13'),
(42, 'Laptop Lenovo Yoga Slim 7 14ITL05 i5 1135G7/8GB/512GB/Win10 (82A300DPVN)', 6, 2, 21990000, 'lenovo-yoga-slim-7-14itl05-i5-82a300dpvn-1', 'Laptop Lenovo Yoga Slim 7 14ITL05 i5 (82A300DPVN) mang trên mình bộ vi xử lý Core i5 thế hệ 11 từ nhà Intel cung cấp một hiệu năng mạnh mẽ xứng đáng là sự lựa chọn hàng đầu của các bạn học sinh, sinh viên và dân văn phòng đang cần tìm chiếc laptop chuyên dụng để làm việc.', 1, '2021-12-03 11:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Loa'),
(4, 'Tai nghe'),
(5, 'Đồng hồ');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'them'),
(3, 'quynhnhu');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Role` int(11) NOT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `User_Name`, `User_Password`, `Role`) VALUES
(1, 'admin', '250cf8b51c773f3f8dc8b4be867a9a02', 1),
(2, 'user1', '250cf8b51c773f3f8dc8b4be867a9a02', 2),
(3, 'Them', '250cf8b51c773f3f8dc8b4be867a9a02', 3),
(4, 'Quynhnhu', '250cf8b51c773f3f8dc8b4be867a9a02', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
