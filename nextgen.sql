-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2024 lúc 06:14 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nextgen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contents`
--

INSERT INTO `contents` (`id`, `page_id`, `code`, `name`, `type`, `position`, `content`, `meta`, `created_at`, `updated_at`) VALUES
(1, 1, 'BG_HOME_1', 'Hình nền phần 1', 'img', 1, '/img/banner_home.png', NULL, '2024-06-21 21:01:20', '2024-06-21 21:01:20'),
(2, 1, 'TITLE_HOME_1', 'Tiêu đề phần 1', 'text', 1, 'Tivéa healthy food drink good', NULL, '2024-06-21 21:18:13', '2024-06-21 21:18:13'),
(3, 1, 'DES_HOME_1', 'Nội dung phần 1', 'text', 1, 'Almost before we knew it, we had left the ground.Almost before we knew it, we had left the groundAlmost before we knew it, we had left the groundAlmost before we knew it, we had left the ground', NULL, '2024-06-21 21:18:13', '2024-06-21 21:18:13'),
(4, 1, 'IMG_SLIDE_HOME_1', 'Hình slide 1', 'img', 1, '/img/home_img_1.png ', NULL, '2024-06-22 05:13:57', '2024-06-22 05:13:57'),
(5, 1, 'IMG_SLIDE_HOME_2', 'Hình slide 2', 'img', 1, '/img/home_img_2.png ', NULL, '2024-06-22 05:13:57', '2024-06-22 05:13:57'),
(6, 1, 'IMG_SLIDE_HOME_3', 'Hình slide 3', 'img', 1, '/img/home_img_3.png ', NULL, '2024-06-22 05:13:57', '2024-06-22 05:13:57'),
(7, 1, 'IMG_SLIDE_HOME_4', 'Hình slide 4', 'img', 1, '/img/home_img_4.png ', NULL, '2024-06-22 05:13:57', '2024-06-22 05:13:57'),
(8, 1, 'IMG_SLIDE_HOME_5', 'Hình slide 5', 'img', 1, '/img/home_img_5.png ', NULL, '2024-06-22 05:13:57', '2024-06-22 05:13:57'),
(9, 1, 'IMG_SLIDE_HOME_6', 'Hình slide 6', 'img', 1, '/img/home_img_6.png ', NULL, '2024-06-22 05:13:57', '2024-06-22 05:13:57'),
(10, 1, 'CARD_2_IMG_1_HOME', 'Hình ảnh card 1', 'img', 2, '/img/card2_img_home_1.png', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(11, 1, 'CARD_2_IMG_2_HOME', 'Hình ảnh card 2', 'img', 2, '/img/card2_img_home_2.png', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(12, 1, 'CARD_2_IMG_3_HOME', 'Hình ảnh card 3', 'img', 2, '/img/card2_img_home_3.png', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(13, 1, 'CARD_2_TITLE_1_HOME', 'Tiêu đề card 1', 'text', 2, 'Almost before we knew it,', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(14, 1, 'CARD_2_TITLE_2_HOME', 'Tiêu đề card 2', 'text', 2, 'Almost before we knew it,', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(15, 1, 'CARD_2_TITLE_3_HOME', 'Tiêu đề card 3', 'text', 2, 'Almost before we knew it,', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(16, 1, 'CARD_2_CONTENT_1_HOME', 'Nội dung card 1', 'text', 2, 'Almost before we knew it, we had left the ground. We knew it, we had left the ground.', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(17, 1, 'CARD_2_CONTENT_2_HOME', 'Nội dung card 2', 'text', 2, 'Almost before we knew it, we had left the ground. We knew it, we had left the ground.', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(18, 1, 'CARD_2_CONTENT_3_HOME', 'Nội dung card 3', 'text', 2, 'Almost before we knew it, we had left the ground. We knew it, we had left the ground.', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(19, 1, 'BG_3_HOME', 'Hình nền phần 3', 'img', 3, '/img/bg_3_home.jpg', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(20, 1, 'BANNER_SALE_HOME', 'Banner khuyến mãi trang chủ:', 'img', 4, '/img/banner_sale.png', '', '2024-06-23 14:56:30', '2024-06-23 14:56:30'),
(21, 1, 'CONTENT_3_HOME', 'Nội dung phần 3', 'html', 3, '<h1><span style=\"color: #000000;\">Ti&ecirc;u đề</span></h1>\n<p><span style=\"font-size: 14px; color: #ced4d9;\">Almost before we knew it</span></p>\n<p><span style=\"color: #000000;\">Almost before we knew it, we had left the ground.Almost before we knew it, we had left the groundAlmost before we knew it, we had left the groundAlmost before we knew it, we had left the ground</span></p>\n<p><span style=\"color: #000000;\">Almost before we knew it, we had left the ground.Almost before we knew it, we had left the groundAlmost before we knew it, we had left the groundAlmost before we knew it, we had left the ground</span></p>', NULL, '2024-06-22 06:43:49', '2024-06-22 06:43:49'),
(22, 2, 'BANNER_1_ABOUT', 'Hình nền phần 1:', 'img', 1, '/img/banner_about_1.png', NULL, '2024-06-23 15:30:26', '2024-06-23 15:30:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `voucher_code` varchar(255) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `ship_price` int(11) DEFAULT NULL,
  `tax_price` int(11) DEFAULT NULL,
  `payment_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item` longtext DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item_toppings`
--

CREATE TABLE `order_item_toppings` (
  `id` int(11) NOT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `topping_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', 'trang-chu', NULL, '2024-06-21 20:59:15', '2024-06-21 20:59:15'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, '2024-06-21 20:59:15', '2024-06-21 20:59:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'draft',
  `meta` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sizes`
--

CREATE TABLE `product_sizes` (
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_toppings`
--

CREATE TABLE `product_toppings` (
  `product_id` int(11) NOT NULL,
  `topping_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'Logo trang web:', '/img/logo.png', 'img', '2024-06-21 11:15:49', '2024-06-21 11:15:49'),
(2, 'email', 'Email liên hệ:', 'minhlinkin@gmail.com', 'text', '2024-06-21 11:17:23', '2024-06-21 11:17:23'),
(3, 'phone', 'Số điện thoại:', '+845 590 85054', 'text', '2024-06-21 11:18:31', '2024-06-21 11:18:31'),
(4, 'website', 'Địa chỉ website:', 'www.nextgen.com', 'text', '2024-06-21 11:19:44', '2024-06-21 11:19:44'),
(5, 'facebook', 'Link facebook:', 'facebook.com', 'text', '2024-06-21 11:21:13', '2024-06-21 11:21:13'),
(6, 'zalo', 'Link zalo:', 'zalo.com', 'text', '2024-06-21 11:21:30', '2024-06-21 11:21:30'),
(7, 'instagram', 'Link instagram:', 'instagram.com', 'text', '2024-06-21 11:22:07', '2024-06-21 11:22:07'),
(8, 'youtube', 'Link youtube:', 'youtube.com', 'text', '2024-06-21 11:22:19', '2024-06-21 11:22:19'),
(9, 'bg_footer', 'Hình nền chân trang:', '/img/bg_footer.png', 'img', '2024-06-21 11:15:49', '2024-06-21 11:15:49'),
(10, 'address', 'Địa chỉ:', 'Almost before we knew it, we had left the ground.', 'text', '2024-06-22 15:50:40', '2024-06-22 15:50:40'),
(11, 'google_map', 'Bản đồ google:', '   <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4248781225897!2d106.67697321144!3d10.778734589325829!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f262e1187e9%3A0xd44a4b70126406ab!2zMjg1IEjhurttIDI4NSBDw6FjaCBN4bqhbmcgVGjDoW5nIFTDoW0sIFBoxrDhu51uZyAxMiwgUXXhuq1uIDEwLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1719072334854!5m2!1svi!2s\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'html', '2024-06-22 16:09:14', '2024-06-22 16:09:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `additional_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toppings`
--

CREATE TABLE `toppings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `additional_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `roles` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favorites`
--

CREATE TABLE `user_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount_value` int(11) DEFAULT NULL,
  `discount_max` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_item_toppings`
--
ALTER TABLE `order_item_toppings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `topping_id` (`topping_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`product_id`,`size_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `product_toppings`
--
ALTER TABLE `product_toppings`
  ADD PRIMARY KEY (`product_id`,`topping_id`),
  ADD KEY `topping_id` (`topping_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_item_toppings`
--
ALTER TABLE `order_item_toppings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `toppings`
--
ALTER TABLE `toppings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_favorites`
--
ALTER TABLE `user_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

--
-- Các ràng buộc cho bảng `order_item_toppings`
--
ALTER TABLE `order_item_toppings`
  ADD CONSTRAINT `order_item_toppings_ibfk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`),
  ADD CONSTRAINT `order_item_toppings_ibfk_2` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_sizes_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Các ràng buộc cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Các ràng buộc cho bảng `product_toppings`
--
ALTER TABLE `product_toppings`
  ADD CONSTRAINT `product_toppings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_toppings_ibfk_2` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`);

--
-- Các ràng buộc cho bảng `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD CONSTRAINT `user_favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_favorites_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD CONSTRAINT `vouchers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
