-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 24 2022 г., 13:45
-- Версия сервера: 8.0.17
-- Версия PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `echo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `notice_theme` varchar(100) NOT NULL,
  `notice_text` varchar(300) NOT NULL,
  `notice_status` int(11) NOT NULL,
  `notice_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_token` varchar(50) NOT NULL,
  `payment_amount` int(11) NOT NULL DEFAULT '0',
  `payment_status` int(11) NOT NULL DEFAULT '1',
  `payment_time` int(11) NOT NULL,
  `payment_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_token`, `payment_amount`, `payment_status`, `payment_time`, `payment_created`, `user_id`) VALUES
(1, '6346dfe6829ad', 19, 1, 1665592822, '2022-10-12 15:40:22', 1046),
(2, '6346dfeae4d9d', 67, 1, 1665592826, '2022-10-12 15:40:26', 1046),
(3, '6346e0bf478ae', 76, 1, 1665593039, '2022-10-12 15:43:59', 1046),
(4, '6346e0c200ad4', 62, 1, 1665593042, '2022-10-12 15:44:02', 1046),
(5, '6346e0c3ac081', 90, 1, 1665593043, '2022-10-12 15:44:03', 1046),
(6, '6346e0c4cec86', 39, 1, 1665593044, '2022-10-12 15:44:04', 1046),
(7, '6346e0c7c7fb3', 56, 1, 1665593047, '2022-10-12 15:44:07', 1046),
(8, '6346e784079a6', 82, 1, 1665594772, '2022-10-12 16:12:52', 1046),
(9, '6346e785aabcd', 13, 1, 1665594773, '2022-10-12 16:12:53', 1046),
(10, '6346e786f41f5', 91, 1, 1665594774, '2022-10-12 16:12:55', 1046),
(11, '6346e7885ed61', 24, 1, 1665594776, '2022-10-12 16:12:56', 1046),
(12, '6346e789bfa7c', 13, 1, 1665594777, '2022-10-12 16:12:57', 1046),
(13, '6346e78b2702c', 61, 1, 1665594779, '2022-10-12 16:12:59', 1046),
(14, '6346e78c817b5', 57, 1, 1665594780, '2022-10-12 16:13:00', 1046),
(15, '6346e78e196ee', 77, 1, 1665594782, '2022-10-12 16:13:02', 1046),
(16, '6346e78f6aea5', 33, 1, 1665594783, '2022-10-12 16:13:03', 1046),
(17, '6346e79111475', 87, 1, 1665594785, '2022-10-12 16:13:05', 1046),
(18, '6346e7922d5ee', 58, 1, 1665594786, '2022-10-12 16:13:06', 1046),
(19, '6346e79570d83', 72, 1, 1665594789, '2022-10-12 16:13:09', 1046),
(20, '6346e799c6a83', 37, 1, 1665594793, '2022-10-12 16:13:13', 1046),
(21, '6346e8ecf0b87', 39, 1, 1665595132, '2022-10-12 16:18:52', 1046),
(22, '634708fc2c48f', 36, 1, 1665603340, '2022-10-12 18:35:40', 1046),
(23, '63470b95c3605', 72, 1, 1665604005, '2022-10-12 18:46:45', 1046),
(24, '63470b976df8e', 29, 1, 1665604007, '2022-10-12 18:46:47', 1046),
(25, '63470b999b2c1', 22, 1, 1665604009, '2022-10-12 18:46:49', 1046),
(26, '63470c83be182', 23, 1, 1665604243, '2022-10-12 18:50:43', 1046),
(27, '63470ca4b9cf1', 63, 1, 1665604276, '2022-10-12 18:51:16', 1046),
(28, '63470ca74b169', 50, 1, 1665604279, '2022-10-12 18:51:19', 1046),
(29, '63470ca8c97de', 91, 1, 1665604280, '2022-10-12 18:51:20', 1046),
(30, '63470caaebbce', 33, 1, 1665604282, '2022-10-12 18:51:22', 1046),
(31, '63470cac499bd', 66, 1, 1665604284, '2022-10-12 18:51:24', 1046),
(32, '63470cae17029', 55, 1, 1665604286, '2022-10-12 18:51:26', 1046),
(33, '63470caf7e568', 95, 1, 1665604287, '2022-10-12 18:51:27', 1046),
(34, '634863682b1e4', 88, 1, 1665692024, '2022-10-13 19:13:44', 1046),
(35, '6348636a32964', 40, 1, 1665692026, '2022-10-13 19:13:46', 1046),
(36, '6348636c0c329', 51, 1, 1665692028, '2022-10-13 19:13:48', 1046),
(37, '6348636d98532', 25, 1, 1665692029, '2022-10-13 19:13:49', 1046),
(38, '6348636fe5fa3', 70, 1, 1665692031, '2022-10-13 19:13:51', 1046),
(39, '6348637256c14', 91, 1, 1665692034, '2022-10-13 19:13:54', 1046),
(40, '6348637484e5c', 50, 1, 1665692036, '2022-10-13 19:13:56', 1046),
(41, '63486e4ea88de', 81, 1, 1665694814, '2022-10-13 20:00:14', 1046),
(42, '63486e5917a05', 44, 1, 1665694825, '2022-10-13 20:00:25', 1046),
(43, '63486e5a73336', 60, 1, 1665694826, '2022-10-13 20:00:26', 1046),
(44, '63486e5c7f718', 26, 1, 1665694828, '2022-10-13 20:00:28', 1046),
(45, '63486e5de1f73', 68, 1, 1665694829, '2022-10-13 20:00:29', 1046),
(46, '63486e5faf164', 52, 1, 1665694831, '2022-10-13 20:00:31', 1046),
(47, '634aa57d701e6', 38, 1, 1665840013, '2022-10-15 12:20:13', 1046),
(48, '634aff76a7b87', 83, 1, 1665863046, '2022-10-15 18:44:06', 1046),
(49, '634aff78458ae', 43, 1, 1665863048, '2022-10-15 18:44:08', 1046),
(50, '634aff8311e95', 32, 1, 1665863059, '2022-10-15 18:44:19', 1046),
(51, '634aff890aeaf', 56, 1, 1665863065, '2022-10-15 18:44:25', 1046),
(52, '634aff8e1d47b', 40, 1, 1665863070, '2022-10-15 18:44:30', 1046),
(53, '634aff99b3b8d', 79, 1, 1665863081, '2022-10-15 18:44:41', 1046),
(54, '634affc724312', 55, 1, 1665863127, '2022-10-15 18:45:27', 1046),
(55, '634b0010d0931', 91, 1, 1665863200, '2022-10-15 18:46:40', 1046),
(56, '634b0012f2253', 71, 1, 1665863202, '2022-10-15 18:46:42', 1046),
(57, '634b0060163fa', 84, 1, 1665863280, '2022-10-15 18:48:00', 1046),
(58, '6355b476a935b', 94, 1, 1666564742, '2022-10-23 21:39:02', 1046),
(59, '6356818e7c612', 67, 1, 1666617246, '2022-10-24 12:14:06', 1046);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_title` varchar(20) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_sold` int(11) NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_microtime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`product_id`, `product_token`, `product_title`, `product_description`, `product_price`, `product_type`, `product_sold`, `product_status`, `product_microtime`) VALUES
(1, '62fa873abcedb', '10 sms', '10 sms 1 coin', 1, 'text', 153, 1, ''),
(2, '62fa873ea1761', '50 sms', '50 sms 5 coin', 5, 'text', 24, 1, ''),
(3, '62fa8741c8f28', '70 sms', '70 sms 7 coin', 7, 'text', 194, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `question_text` varchar(252) NOT NULL,
  `question_answer` text NOT NULL,
  `question_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `question`
--

INSERT INTO `question` (`question_id`, `question_text`, `question_answer`, `question_status`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(5, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(7, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(8, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(9, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(11, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(12, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(13, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(14, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(15, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(16, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(17, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(19, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(21, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(22, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(23, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(24, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(25, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(26, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(27, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(28, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(29, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(31, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(32, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(33, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(34, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(35, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(36, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(37, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(38, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(39, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(41, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(42, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(43, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(44, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(45, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(46, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1);
INSERT INTO `question` (`question_id`, `question_text`, `question_answer`, `question_status`) VALUES
(47, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(48, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(49, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(50, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(51, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(52, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(53, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(54, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(55, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(56, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(57, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(58, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(59, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(60, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(61, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(62, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(63, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(64, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(65, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(66, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(67, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(68, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(69, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(70, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(71, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(72, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(73, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(74, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(75, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(76, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(77, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(78, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(79, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(80, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(81, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(82, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(83, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(84, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(85, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(86, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(87, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(88, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(89, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(91, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(92, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1);
INSERT INTO `question` (`question_id`, `question_text`, `question_answer`, `question_status`) VALUES
(93, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(94, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(96, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(97, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(98, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1),
(100, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici', 'Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Dolore voluptatibus, quibusdam eveniet necessitatibus tenetur. Eum dolore, provident doloribus possimus tempora accusantium corporis, illo, itaque ullam, dignissimos tempore. Beatae cupiditate consequuntur deleniti suscipit accusamus eius cum provident dignissimos voluptate deserunt reprehenderit, ad omnis assumenda consectetur, asperiores totam, harum fugit sunt expedita. Quod sunt hic asperiores amet quisquam obcaecati maiores voluptatem, laboriosam quis praesentium dolorum eius ipsam perspiciatis vitae nisi facilis, at expedita consequatur. Ea sunt impedit facilis aut nobis est alias nesciunt cum dicta maiores recusandae enim fugiat accusantium sint rerum, iure natus quos adipisci labore nostrum incidunt quis excepturi iusto.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `rule`
--

CREATE TABLE `rule` (
  `rule_id` int(11) NOT NULL,
  `rule_text` varchar(252) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rule`
--

INSERT INTO `rule` (`rule_id`, `rule_text`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(5, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(7, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(8, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(9, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(11, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(12, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(13, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(14, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(15, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(16, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(17, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(19, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(21, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(22, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(23, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(24, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(25, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(26, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(27, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(28, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(29, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(31, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(32, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(33, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(34, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(35, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(36, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(37, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(38, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(39, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(41, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(42, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(43, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(44, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(45, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(46, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(47, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(48, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(49, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(50, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(51, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(52, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(53, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(54, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(55, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(56, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(57, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(58, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(59, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(60, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(61, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(62, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(63, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(64, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(65, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(66, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(67, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(68, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(69, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(70, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(71, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(72, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(73, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(74, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(75, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(76, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(77, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(78, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(79, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(80, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(81, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(82, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(83, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(84, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(85, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(86, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(87, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(88, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(89, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(91, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(92, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(93, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(94, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(96, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(97, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(98, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici'),
(100, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae sit iure perspiciatis commodi, dicta. Molestias, nobis quas explicabo nisi, blanditiis earum error eligendi maiores iste id asperiores eaque officia consectetur at animi nihil quae perspici');

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_type` varchar(60) NOT NULL,
  `service_price` int(11) NOT NULL,
  `service_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_type`, `service_price`, `service_created`, `product_id`, `user_id`) VALUES
(1, '70 sms', 'text', 7, '2022-09-18 13:42:37', 3, 5),
(2, '10 sms', 'text', 1, '2022-09-18 15:48:04', 1, 6),
(3, '10 sms', 'text', 1, '2022-09-18 15:48:33', 1, 7),
(4, '10 sms', 'text', 1, '2022-09-18 15:49:50', 1, 8),
(5, '10 sms', 'text', 1, '2022-09-18 18:31:44', 1, 12),
(6, '10 sms', 'text', 1, '2022-09-18 19:21:36', 1, 1005),
(7, '10 sms', 'text', 1, '2022-09-18 19:25:08', 1, 1007),
(8, '10 sms', 'text', 1, '2022-09-18 19:29:40', 1, 1010),
(9, '10 sms', 'text', 1, '2022-09-18 19:33:45', 1, 1012),
(10, '10 sms', 'text', 1, '2022-09-18 19:38:08', 1, 1013),
(11, '70 sms', 'text', 7, '2022-09-18 19:53:52', 3, 1013),
(12, '10 sms', 'text', 1, '2022-09-19 17:13:27', 1, 1014),
(13, '50 sms', 'text', 5, '2022-09-19 17:13:31', 2, 1014),
(14, '70 sms', 'text', 7, '2022-09-19 17:13:44', 3, 1014),
(15, '70 sms', 'text', 7, '2022-09-19 17:14:01', 3, 1014),
(16, '10 sms', 'text', 1, '2022-09-19 17:24:03', 1, 1015),
(17, '10 sms', 'text', 1, '2022-09-19 17:24:29', 1, 1016),
(18, '10 sms', 'text', 1, '2022-09-19 23:52:26', 1, 1017),
(19, '10 sms', 'text', 1, '2022-09-20 00:00:31', 1, 1022),
(20, '10 sms', 'text', 1, '2022-09-20 00:42:22', 1, 1024),
(21, '70 sms', 'text', 7, '2022-09-20 00:42:29', 3, 1024),
(22, '10 sms', 'text', 1, '2022-09-20 00:42:37', 1, 1024),
(23, '10 sms', 'text', 1, '2022-09-20 00:42:41', 1, 1024),
(24, '10 sms', 'text', 1, '2022-09-20 00:42:43', 1, 1024),
(25, '10 sms', 'text', 1, '2022-09-20 00:49:36', 1, 1027),
(26, '10 sms', 'text', 1, '2022-09-20 13:30:18', 1, 1030),
(27, '70 sms', 'text', 7, '2022-09-20 13:33:01', 3, 1030),
(28, '10 sms', 'text', 1, '2022-09-20 15:42:22', 1, 1030),
(29, '10 sms', 'text', 1, '2022-09-20 15:42:24', 1, 1030),
(30, '10 sms', 'text', 1, '2022-09-20 15:42:28', 1, 1030),
(31, '70 sms', 'text', 7, '2022-09-20 15:43:23', 3, 1031),
(32, '70 sms', 'text', 7, '2022-09-20 15:43:24', 3, 1031),
(33, '70 sms', 'text', 7, '2022-09-20 17:34:42', 3, 1030),
(34, '10 sms', 'text', 1, '2022-09-20 20:44:37', 1, 1032),
(35, '10 sms', 'text', 1, '2022-09-20 20:44:56', 1, 1032),
(36, '10 sms', 'text', 1, '2022-09-20 20:45:42', 1, 1032),
(37, '10 sms', 'text', 1, '2022-09-20 20:45:50', 1, 1032),
(38, '10 sms', 'text', 1, '2022-09-20 20:45:53', 1, 1032),
(39, '10 sms', 'text', 1, '2022-09-20 20:45:57', 1, 1032),
(40, '10 sms', 'text', 1, '2022-09-20 20:46:04', 1, 1032),
(41, '10 sms', 'text', 1, '2022-09-20 20:46:26', 1, 1032),
(42, '10 sms', 'text', 1, '2022-09-20 20:46:36', 1, 1032),
(43, '10 sms', 'text', 1, '2022-09-20 20:47:06', 1, 1032),
(44, '10 sms', 'text', 1, '2022-09-20 20:47:15', 1, 1032),
(45, '10 sms', 'text', 1, '2022-09-20 20:47:21', 1, 1032),
(46, '10 sms', 'text', 1, '2022-09-20 20:47:23', 1, 1032),
(47, '10 sms', 'text', 1, '2022-09-20 20:47:24', 1, 1032),
(48, '10 sms', 'text', 1, '2022-09-20 20:47:26', 1, 1032),
(49, '10 sms', 'text', 1, '2022-09-20 20:47:55', 1, 1032),
(50, '10 sms', 'text', 1, '2022-09-20 20:48:07', 1, 1032),
(51, '10 sms', 'text', 1, '2022-09-20 20:48:36', 1, 1032),
(52, '10 sms', 'text', 1, '2022-09-20 20:48:40', 1, 1032),
(53, '10 sms', 'text', 1, '2022-09-20 20:48:42', 1, 1032),
(54, '10 sms', 'text', 1, '2022-09-20 20:48:44', 1, 1032),
(55, '10 sms', 'text', 1, '2022-09-20 20:48:46', 1, 1032),
(56, '10 sms', 'text', 1, '2022-09-20 20:48:48', 1, 1032),
(57, '10 sms', 'text', 1, '2022-09-20 20:48:49', 1, 1032),
(58, '10 sms', 'text', 1, '2022-09-20 20:48:52', 1, 1032),
(59, '10 sms', 'text', 1, '2022-09-20 20:48:53', 1, 1032),
(60, '10 sms', 'text', 1, '2022-09-20 20:48:55', 1, 1032),
(61, '70 sms', 'text', 7, '2022-09-20 21:19:02', 3, 1043),
(62, '10 sms', 'text', 1, '2022-09-20 21:19:10', 1, 1043),
(63, '70 sms', 'text', 7, '2022-09-20 21:19:33', 3, 1043),
(64, '70 sms', 'text', 7, '2022-09-20 21:19:34', 3, 1043),
(65, '70 sms', 'text', 7, '2022-09-20 21:19:54', 3, 1044),
(66, '70 sms', 'text', 7, '2022-09-20 21:19:59', 3, 1044),
(67, '70 sms', 'text', 7, '2022-09-20 21:20:07', 3, 1044),
(68, '70 sms', 'text', 7, '2022-09-20 21:20:50', 3, 1045),
(69, '70 sms', 'text', 7, '2022-09-20 21:21:17', 3, 1046),
(70, '70 sms', 'text', 7, '2022-09-20 21:21:19', 3, 1046),
(71, '70 sms', 'text', 7, '2022-09-20 21:21:20', 3, 1046),
(72, '70 sms', 'text', 7, '2022-09-20 21:21:22', 3, 1046),
(73, '70 sms', 'text', 7, '2022-09-20 21:21:23', 3, 1046),
(74, '70 sms', 'text', 7, '2022-09-20 21:21:25', 3, 1046),
(75, '70 sms', 'text', 7, '2022-09-20 21:21:27', 3, 1046),
(76, '70 sms', 'text', 7, '2022-09-20 21:21:28', 3, 1046),
(77, '70 sms', 'text', 7, '2022-09-20 21:21:30', 3, 1046),
(78, '70 sms', 'text', 7, '2022-09-20 21:21:31', 3, 1046),
(79, '70 sms', 'text', 7, '2022-09-20 21:21:32', 3, 1046),
(80, '70 sms', 'text', 7, '2022-09-20 21:21:35', 3, 1046),
(81, '70 sms', 'text', 7, '2022-09-20 21:21:36', 3, 1046),
(82, '70 sms', 'text', 7, '2022-09-20 21:21:38', 3, 1046),
(83, '10 sms', 'text', 1, '2022-09-20 21:22:59', 1, 1046),
(84, '10 sms', 'text', 1, '2022-09-20 21:23:02', 1, 1046),
(85, '10 sms', 'text', 1, '2022-09-20 21:41:58', 1, 1046),
(86, '10 sms', 'text', 1, '2022-09-26 00:10:18', 1, 1046),
(87, '10 sms', 'text', 1, '2022-09-26 00:10:23', 1, 1046),
(88, '10 sms', 'text', 1, '2022-09-26 00:10:25', 1, 1046),
(89, '10 sms', 'text', 1, '2022-09-26 00:10:27', 1, 1046),
(90, '10 sms', 'text', 1, '2022-09-26 00:10:28', 1, 1046),
(91, '10 sms', 'text', 1, '2022-09-26 00:10:30', 1, 1046),
(92, '10 sms', 'text', 1, '2022-09-26 16:04:40', 1, 1046),
(93, '10 sms', 'text', 1, '2022-09-26 16:10:27', 1, 1071),
(94, '10 sms', 'text', 1, '2022-09-26 16:11:00', 1, 1046),
(95, '10 sms', 'text', 1, '2022-09-26 16:11:04', 1, 1046),
(96, '10 sms', 'text', 1, '2022-10-12 15:19:18', 1, 1076),
(97, '70 sms', 'text', 7, '2022-10-12 18:26:09', 3, 1046),
(98, '70 sms', 'text', 7, '2022-10-12 18:26:10', 3, 1046),
(99, '70 sms', 'text', 7, '2022-10-12 18:26:12', 3, 1046),
(100, '70 sms', 'text', 7, '2022-10-13 20:01:02', 3, 1046),
(101, '70 sms', 'text', 7, '2022-10-15 12:18:56', 3, 1046),
(102, '70 sms', 'text', 7, '2022-10-15 18:43:06', 3, 1046),
(103, '70 sms', 'text', 7, '2022-10-15 18:43:08', 3, 1046),
(104, '70 sms', 'text', 7, '2022-10-15 18:43:10', 3, 1046),
(105, '70 sms', 'text', 7, '2022-10-15 18:43:12', 3, 1046),
(106, '70 sms', 'text', 7, '2022-10-15 18:43:14', 3, 1046),
(107, '70 sms', 'text', 7, '2022-10-15 18:43:15', 3, 1046),
(108, '70 sms', 'text', 7, '2022-10-15 18:43:18', 3, 1046),
(109, '70 sms', 'text', 7, '2022-10-15 18:43:22', 3, 1046),
(110, '70 sms', 'text', 7, '2022-10-15 18:43:23', 3, 1046),
(111, '70 sms', 'text', 7, '2022-10-15 18:43:25', 3, 1046),
(112, '70 sms', 'text', 7, '2022-10-15 18:43:27', 3, 1046),
(113, '70 sms', 'text', 7, '2022-10-15 18:43:48', 3, 1046),
(114, '70 sms', 'text', 7, '2022-10-15 18:43:50', 3, 1046),
(115, '70 sms', 'text', 7, '2022-10-15 18:43:51', 3, 1046),
(116, '70 sms', 'text', 7, '2022-10-15 18:43:55', 3, 1046),
(117, '70 sms', 'text', 7, '2022-10-15 18:43:57', 3, 1046),
(118, '70 sms', 'text', 7, '2022-10-15 18:43:59', 3, 1046),
(119, '70 sms', 'text', 7, '2022-10-15 18:44:01', 3, 1046),
(120, '70 sms', 'text', 7, '2022-10-15 18:44:16', 3, 1046),
(121, '10 sms', 'text', 1, '2022-10-15 18:44:46', 1, 1046),
(122, '10 sms', 'text', 1, '2022-10-15 18:45:20', 1, 1046),
(123, '10 sms', 'text', 1, '2022-10-23 21:45:30', 1, 1046),
(124, '10 sms', 'text', 1, '2022-10-24 13:23:51', 1, 1046),
(125, '10 sms', 'text', 1, '2022-10-24 13:24:02', 1, 1046),
(126, '10 sms', 'text', 1, '2022-10-24 13:24:10', 1, 1046),
(127, '10 sms', 'text', 1, '2022-10-24 13:24:19', 1, 1046),
(128, '10 sms', 'text', 1, '2022-10-24 13:24:21', 1, 1046),
(129, '10 sms', 'text', 1, '2022-10-24 13:24:23', 1, 1046),
(130, '70 sms', 'text', 7, '2022-10-24 13:24:29', 3, 1046),
(131, '70 sms', 'text', 7, '2022-10-24 13:24:37', 3, 1046);

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_description` varchar(100) NOT NULL,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `setting_type` varchar(50) NOT NULL,
  `setting_microtime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_description`, `setting_key`, `setting_value`, `setting_type`, `setting_microtime`) VALUES
(1, 'channel caller', 'channel_call', '0', 'dynamic', '1666617500.5665'),
(2, 'tunnell caller', 'tunnel_call', '0', 'dynamic', '1666559147.0177'),
(4, 'payment status', 'payment_status', '1', 'dynamic', '1663710113.0579'),
(7, 'card number', 'card_number', '4098584464799640', 'static', '1663710113.0579'),
(8, 'textbelt count', 'textbelt_count', '0', 'dynamic', '1663710113.0579'),
(9, 'user count', 'user_count', '0', 'dynamic', '1663710113.0579');

-- --------------------------------------------------------

--
-- Структура таблицы `textbelt_caller`
--

CREATE TABLE `textbelt_caller` (
  `caller_id` int(11) NOT NULL,
  `caller_channel` varchar(50) NOT NULL,
  `caller_data` varchar(50) NOT NULL,
  `caller_type` varchar(50) NOT NULL,
  `caller_time` varchar(50) NOT NULL,
  `caller_microtime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `textbelt_caller`
--

INSERT INTO `textbelt_caller` (`caller_id`, `caller_channel`, `caller_data`, `caller_type`, `caller_time`, `caller_microtime`) VALUES
(1, 'KisSD', '0', 'channel', '0.13', '1666572148.0541'),
(2, 'IPFHT', '1', 'channel', '0.32', '1666572148.5363'),
(3, 'u5UjW', '1', 'channel', '0.26', '1666572148.9545'),
(4, '4Y0VS', '1', 'channel', '0.40', '1666572149.4651'),
(5, 'XCVE2', '1', 'channel', '0.38', '1666572149.9084'),
(6, 'EU3ji', '1', 'channel', '0.32', '1666572165.4264'),
(7, 'CVHGD', '1', 'channel', '0.46', '1666572166.0614'),
(8, 'dSVfR', '1', 'channel', '0.52', '1666572166.7608'),
(9, 'V1I1e', '1', 'channel', '0.29', '1666572167.2461'),
(10, 'MIQGR', '1', 'channel', '0.47', '1666572360.6071'),
(11, 'KisSD', '1', 'channel', '0.61', '1666617422.5495'),
(12, 'IPFHT', '1', 'channel', '0.37', '1666617423.1119'),
(13, 'u5UjW', '1', 'channel', '0.44', '1666617423.7346'),
(14, '4Y0VS', '1', 'channel', '0.57', '1666617424.3911'),
(15, 'XCVE2', '1', 'channel', '0.50', '1666617425.0241'),
(16, 'EU3ji', '0', 'channel', '0.14', '1666617446.4534'),
(17, 'MIQGR', '0', 'channel', '0.16', '1666617461.8438'),
(18, 'IPFHT', '0', 'channel', '0.14', '1666617462.1712'),
(19, '4Y0VS', '0', 'channel', '0.15', '1666617462.4557'),
(20, 'CVHGD', '0', 'channel', '0.10', '1666617462.6776'),
(21, 'EU3ji', '0', 'channel', '0.21', '1666617493.2834'),
(22, 'MIQGR', '0', 'channel', '0.12', '1666617493.601'),
(23, 'KisSD', '0', 'channel', '0.18', '1666617493.9512'),
(24, 'IPFHT', '0', 'channel', '0.07', '1666617494.1667'),
(25, 'u5UjW', '0', 'channel', '0.11', '1666617494.3886'),
(26, '4Y0VS', '0', 'channel', '0.10', '1666617494.666'),
(27, 'XCVE2', '0', 'channel', '0.11', '1666617494.875'),
(28, 'CVHGD', '0', 'channel', '0.13', '1666617495.1412'),
(29, 'dSVfR', '0', 'channel', '0.12', '1666617495.3853'),
(30, 'V1I1e', '0', 'channel', '0.15', '1666617495.6515');

-- --------------------------------------------------------

--
-- Структура таблицы `textbelt_channel`
--

CREATE TABLE `textbelt_channel` (
  `channel_id` int(11) NOT NULL,
  `channel_token` varchar(50) NOT NULL,
  `channel_recipient` varchar(50) NOT NULL,
  `channel_text` varchar(170) NOT NULL,
  `channel_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `textbelt_channel`
--

INSERT INTO `textbelt_channel` (`channel_id`, `channel_token`, `channel_recipient`, `channel_text`, `channel_created`, `user_id`) VALUES
(3407, 'CVHGD', '+994504171699', 'Wake up Neo... Matrix has you...', '2022-10-24 13:36:46', 1046),
(3408, 'dSVfR', '+994504171699', 'Wake up Neo... Matrix has you...', '2022-10-24 13:36:48', 1046),
(3409, 'V1I1e', '+994504171699', 'Wake up Neo... Matrix has you...', '2022-10-24 13:36:49', 1046),
(3410, 'EU3ji', '+994504171699', 'Wake up Neo... Matrix has you...', '2022-10-24 13:36:49', 1046),
(3411, 'MIQGR', '+994504171699', 'Wake up Neo... Matrix has you...', '2022-10-24 13:36:50', 1046),
(3412, 'KisSD', '+994502526176', 'Wake up Neo... Matrix has you...', '2022-10-24 13:36:53', 1046),
(3413, 'IPFHT', '+994518882121', 'Wake up Neo... Matrix has you...', '2022-10-24 13:36:55', 1046),
(3414, 'u5UjW', '+994509052823', 'Wake up Neo... Matrix has you...', '2022-10-24 13:36:59', 1046),
(3415, '4Y0VS', '+994508371279', 'Wake up Neo... Matrix has you...', '2022-10-24 13:37:04', 1046),
(3416, 'XCVE2', '+994502494150', 'Wake up Neo... Matrix has you...', '2022-10-24 13:37:07', 1046);

-- --------------------------------------------------------

--
-- Структура таблицы `textbelt_sms`
--

CREATE TABLE `textbelt_sms` (
  `sms_id` int(11) NOT NULL,
  `sms_channel` varchar(50) NOT NULL,
  `sms_recipient` varchar(50) NOT NULL,
  `sms_text` varchar(170) NOT NULL,
  `sms_status` int(11) NOT NULL DEFAULT '1',
  `sms_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `textId` varchar(60) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `textbelt_sms`
--

INSERT INTO `textbelt_sms` (`sms_id`, `sms_channel`, `sms_recipient`, `sms_text`, `sms_status`, `sms_created`, `textId`, `user_id`) VALUES
(7, 'EU3ji', '+994519186754', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:20', '6421454', 1046),
(8, 'EU3ji', '+994514223421', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:20', '7274660', 1046),
(9, 'MIQGR', '+994502627637', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:22', '1354955', 1046),
(10, 'MIQGR', '+994505823626', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:22', '6356018', 1046),
(11, 'KisSD', '+994504651696', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:22', '6227432', 1046),
(12, 'KisSD', '+994508249586', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:22', '8195536', 1046),
(13, 'IPFHT', '+994504803043', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:23', '8018094', 1046),
(14, 'IPFHT', '+994519107356', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:23', '4173835', 1046),
(15, 'u5UjW', '+994507111136', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:24', '5446136', 1046),
(16, 'u5UjW', '+994508641699', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:24', '8502169', 1046),
(17, '4Y0VS', '+994519486028', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:24', '6169696', 1046),
(18, '4Y0VS', '+994507927164', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:24', '6065396', 1046),
(19, 'XCVE2', '+994506481239', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:25', '4271471', 1046),
(20, 'XCVE2', '+994518813942', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:25', '9493517', 1046),
(21, 'CVHGD', '+994518013074', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:26', '3602693', 1046),
(22, 'CVHGD', '+994517891393', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:26', '2971939', 1046),
(23, 'dSVfR', '+994509012026', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:27', '1404307', 1046),
(24, 'dSVfR', '+994519321973', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:27', '7619649', 1046),
(25, 'V1I1e', '+994513441476', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:28', '4414418', 1046),
(26, 'V1I1e', '+994518079463', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 18:41:28', '3789104', 1046),
(27, 'KisSD', '+994507226661', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 18:36:48', '6798588', 1046),
(28, 'IPFHT', '+994513567924', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 18:36:48', '6114785', 1046),
(29, 'u5UjW', '+994513642053', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 18:36:49', '8819544', 1046),
(30, '4Y0VS', '+994513642053', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 18:36:50', '4390720', 1046),
(31, 'XCVE2', '+994513642053', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 18:36:50', '1151949', 1046),
(32, 'a7b90', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:35', '92921205', 1046),
(33, 'a7b90', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:52', '54579957', 1046),
(34, 'a7b90', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:36', '89279610', 1046),
(35, 'a7b90', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:54', '87949640', 1046),
(36, 'a7b90', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:42', '90637897', 1046),
(37, 'a7b90', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:55', '73420103', 1046),
(38, 'a7b90', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:43', '19506903', 1046),
(39, 'a7b90', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:57', '17986295', 1046),
(40, '6b1da', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:35', '31897274', 1046),
(41, 'a7b90', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:33:01', '22967122', 1046),
(42, '6b1da', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:37', '74024837', 1046),
(43, '6b1da', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:53', '73080559', 1046),
(44, '6b1da', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:42', '10280023', 1046),
(45, '6b1da', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:54', '15062339', 1046),
(46, '6b1da', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:44', '58282280', 1046),
(47, '6b1da', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:56', '59922896', 1046),
(48, '456b2', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:36', '50470175', 1046),
(49, '6b1da', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:57', '53990748', 1046),
(50, '456b2', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:37', '65478731', 1046),
(51, '6b1da', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:33:02', '92292550', 1046),
(52, '456b2', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:43', '31815882', 1046),
(53, '456b2', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:54', '15400168', 1046),
(54, '456b2', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:44', '58513596', 1046),
(55, '456b2', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:55', '50338973', 1046),
(56, '20ccb', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:35', '65648712', 1046),
(57, '456b2', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:56', '66932628', 1046),
(58, '20ccb', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:36', '60171385', 1046),
(59, '456b2', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:57', '41598002', 1046),
(60, '20ccb', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:42', '12932652', 1046),
(61, '20ccb', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:52', '78566874', 1046),
(62, '20ccb', '+994502983331', 'Wake up Neo... Matrix has you...', 1, '2022-10-12 21:11:43', '93447491', 1046),
(63, '20ccb', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:54', '65735214', 1046),
(64, '20ccb', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:55', '26322345', 1046),
(65, '20ccb', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:56', '75121262', 1046),
(66, '20ccb', '+994516319125', 'Wake up Neo... Matrix has you...', 1, '2022-10-15 17:32:59', '15571719', 1046),
(67, 'EU3ji', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:30', '5010887', 1046),
(68, 'EU3ji', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:30', '8443198', 1046),
(69, 'MIQGR', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:32', '9645559', 1046),
(70, 'MIQGR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:32', '6211884', 1046),
(71, 'KisSD', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:33', '1041051', 1046),
(72, 'KisSD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:33', '5052163', 1046),
(73, 'IPFHT', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:34', '4849071', 1046),
(74, 'IPFHT', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:34', '2867060', 1046),
(75, 'u5UjW', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:35', '7156473', 1046),
(76, 'u5UjW', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:35', '1002210', 1046),
(77, '4Y0VS', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:36', '3974829', 1046),
(78, '4Y0VS', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:36', '9311670', 1046),
(79, 'XCVE2', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:37', '1655844', 1046),
(80, 'XCVE2', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:37', '2882939', 1046),
(81, 'CVHGD', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:39', '2689987', 1046),
(82, 'CVHGD', '+994506776213', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:39', '8595832', 1046),
(83, 'CVHGD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:39', '2431531', 1046),
(84, 'dSVfR', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:40', '5380180', 1046),
(85, 'dSVfR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:40', '3084143', 1046),
(86, 'V1I1e', '+994509133027', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:41', '9520379', 1046),
(87, 'V1I1e', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:41', '4716804', 1046),
(88, 'EU3ji', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:04', '15756941', 1046),
(89, 'EU3ji', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:08', '85272899', 1046),
(90, 'EU3ji', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:11', '73450106', 1046),
(91, 'EU3ji', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:14', '36512296', 1046),
(92, 'MIQGR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:05', '39336827', 1046),
(93, 'MIQGR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:08', '27270273', 1046),
(94, 'MIQGR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:11', '95199535', 1046),
(95, 'KisSD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:01', '95328904', 1046),
(96, 'KisSD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:05', '67113957', 1046),
(97, 'KisSD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:09', '12520524', 1046),
(98, 'KisSD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:12', '36543532', 1046),
(99, 'IPFHT', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:02', '93390175', 1046),
(100, 'IPFHT', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:06', '96987769', 1046),
(101, 'IPFHT', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:09', '44971005', 1046),
(102, 'IPFHT', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:12', '21407143', 1046),
(103, 'u5UjW', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:02', '91705500', 1046),
(104, 'u5UjW', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:06', '53728656', 1046),
(105, 'u5UjW', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:09', '43827708', 1046),
(106, 'u5UjW', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:12', '85821963', 1046),
(107, '4Y0VS', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:02', '12479651', 1046),
(108, '4Y0VS', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:06', '10334053', 1046),
(109, '4Y0VS', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:09', '58029689', 1046),
(110, '4Y0VS', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:12', '21352835', 1046),
(111, 'XCVE2', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:03', '16297762', 1046),
(112, 'XCVE2', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:07', '21275912', 1046),
(113, 'XCVE2', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:10', '44167983', 1046),
(114, 'XCVE2', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:13', '58263290', 1046),
(115, 'CVHGD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:03', '15074939', 1046),
(116, 'CVHGD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:07', '62987167', 1046),
(117, 'CVHGD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:10', '27398154', 1046),
(118, 'CVHGD', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:13', '51316815', 1046),
(119, 'dSVfR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:00', '88931232', 1046),
(120, 'dSVfR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:03', '56672511', 1046),
(121, 'dSVfR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:07', '55187902', 1046),
(122, 'dSVfR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:11', '40100660', 1046),
(123, 'dSVfR', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:14', '36308947', 1046),
(124, 'V1I1e', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:00', '56809305', 1046),
(125, 'V1I1e', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:04', '23980777', 1046),
(126, 'V1I1e', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:08', '68794417', 1046),
(127, 'V1I1e', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:11', '82465792', 1046),
(128, 'V1I1e', '+994513089917', 'Wake up Neo... Matrix has you...', 1, '2022-10-23 21:04:14', '68056767', 1046),
(130, 'IPFHT', '+994518899744', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:42:28', '4254893', 1046),
(131, 'u5UjW', '+994512772995', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:42:28', '1021201', 1046),
(132, '4Y0VS', '+994512772995', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:42:29', '3432461', 1046),
(133, 'XCVE2', '+994512772995', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:42:29', '6868916', 1046),
(134, 'EU3ji', '+994512772995', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:42:45', '8905905', 1046),
(135, 'CVHGD', '+994512772995', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:42:45', '2286097', 1046),
(136, 'dSVfR', '+994512772995', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:42:46', '9946148', 1046),
(137, 'V1I1e', '+994512772995', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:42:46', '5845997', 1046),
(138, 'MIQGR', '+994504538284', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 00:46:00', '4165198', 1046),
(139, 'KisSD', '+994507895380', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 13:17:01', '8311581', 1046),
(140, 'IPFHT', '+994507895380', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 13:17:02', '7671758', 1046),
(141, 'u5UjW', '+994512838554', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 13:17:03', '8967969', 1046),
(142, '4Y0VS', '+994508257499', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 13:17:03', '9227677', 1046),
(143, 'XCVE2', '+994508257499', 'Wake up Neo... Matrix has you...', 1, '2022-10-24 13:17:04', '6554070', 1046);

-- --------------------------------------------------------

--
-- Структура таблицы `textbelt_token`
--

CREATE TABLE `textbelt_token` (
  `token_id` int(11) NOT NULL,
  `token_code` varchar(200) NOT NULL,
  `token_call` int(11) NOT NULL DEFAULT '0',
  `token_type` varchar(50) NOT NULL,
  `token_quota` int(50) NOT NULL,
  `token_status` int(11) NOT NULL DEFAULT '1',
  `token_microtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `textbelt_token`
--

INSERT INTO `textbelt_token` (`token_id`, `token_code`, `token_call`, `token_type`, `token_quota`, `token_status`, `token_microtime`, `token_created`) VALUES
(5, 'TGgY6ldzXRwuwl0Sj4uAp5srlYM1tUWBI5higGvxRlMd79D680XENGP6G56EU3ji', 1, 'channel', 9982, 1, '1666618609.9852', '2022-10-15 18:24:43'),
(6, 'kYY2E9Wpw7rGkVFCC1jIhAkdKfMG6YHSwzRBFfZpisOEGdKZd3k9Kqmg25jMIQGR', 1, 'channel', 9982, 1, '1666618610.7936', '2022-10-15 18:24:43'),
(7, 'RbNWROWWH4TyIFVxGSlgHIr8kdzQEcoahyOV3wakqp2VlcNJetU8oHA0LuiKisSD', 1, 'channel', 9982, 1, '1666618613.4268', '2022-10-15 18:24:43'),
(8, 'dnjDC1gt8wrrkIY4oyif28b5NDkgmrJBjPwPTPG6nWUtCGj496gHm1kJGENIPFHT', 1, 'channel', 9982, 1, '1666618615.9192', '2022-10-15 18:24:43'),
(9, 'bO8Ox9Om1yGCN8VDVpd5WoeIJmD7FMVWfJECOVW57poHYJyaeJuHJ7q0Yg0u5UjW', 1, 'channel', 9982, 1, '1666618619.44', '2022-10-15 18:24:43'),
(10, 'vVsYwYpk1ExjYgGPgjsehTE549P7PMwT7N9iELodnF0LCBwi5vSNkaafjv74Y0VS', 1, 'channel', 9982, 1, '1666618624.2292', '2022-10-15 18:24:43'),
(11, 'R7Mw180Xzir0esMKiplEGTlGFTRaTBEnfVHN3lE4lj5RttGY9t3mocg2mvhXCVE2', 1, 'channel', 9982, 1, '1666618627.2126', '2022-10-15 18:24:43'),
(12, 'Y1xFPX0zi90WTgXUYOSqW9VGhuPeTPfVUbXfZAj3XTmS5VM4HY3pMXDG6w6CVHGD', 1, 'channel', 9983, 1, '1666618606.1439', '2022-10-15 18:24:43'),
(13, 'B6YfGXOKuMWCye7XkPhqAhKTGyRnDlQH0B2AZALRfNXMeGybeE6Py2wBkSpdSVfR', 1, 'channel', 9983, 1, '1666618608.6075', '2022-10-15 18:24:43'),
(14, 'AQ74Az9hAmxHq4sgdjQlVYNpybDfteSV4Y1YdHz6thhFpq3zUjOjlo7yciNV1I1e', 1, 'channel', 9983, 1, '1666618609.3471', '2022-10-15 18:24:43');

-- --------------------------------------------------------

--
-- Структура таблицы `textbelt_tunnel`
--

CREATE TABLE `textbelt_tunnel` (
  `tunnel_id` int(11) NOT NULL,
  `tunnel_channel` varchar(50) NOT NULL,
  `tunnel_recipient` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tunnel_text` varchar(170) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tunnel_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `channel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `textbelt_user`
--

CREATE TABLE `textbelt_user` (
  `textbelt_id` int(11) NOT NULL,
  `textbelt_token` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `textbelt_quota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `textbelt_user`
--

INSERT INTO `textbelt_user` (`textbelt_id`, `textbelt_token`, `textbelt_quota`) VALUES
(4, '632a2ec320ba6632a2ec320ba8', 60);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_token` varchar(100) NOT NULL,
  `user_coin` float NOT NULL,
  `user_level` int(11) NOT NULL DEFAULT '1',
  `user_ip` varchar(100) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT '0',
  `user_time` int(11) NOT NULL,
  `user_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `user_token`, `user_coin`, `user_level`, `user_ip`, `user_status`, `user_time`, `user_updated`, `user_created`) VALUES
(1046, '632a2ec320ba6632a2ec320ba8', 290, 99, '77.466.705.376', 1, 0, '2022-10-24 13:24:37', '2022-10-24 12:14:06');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Индексы таблицы `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_token` (`payment_token`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_token` (`product_token`);

--
-- Индексы таблицы `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `question_text` (`question_text`);

--
-- Индексы таблицы `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `rule_text` (`rule_text`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `service_name` (`service_name`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `textbelt_caller`
--
ALTER TABLE `textbelt_caller`
  ADD PRIMARY KEY (`caller_id`);

--
-- Индексы таблицы `textbelt_channel`
--
ALTER TABLE `textbelt_channel`
  ADD PRIMARY KEY (`channel_id`);

--
-- Индексы таблицы `textbelt_sms`
--
ALTER TABLE `textbelt_sms`
  ADD PRIMARY KEY (`sms_id`),
  ADD KEY `sms_channel` (`sms_channel`),
  ADD KEY `sms_recipient` (`sms_recipient`);

--
-- Индексы таблицы `textbelt_token`
--
ALTER TABLE `textbelt_token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `token_code` (`token_code`);

--
-- Индексы таблицы `textbelt_tunnel`
--
ALTER TABLE `textbelt_tunnel`
  ADD PRIMARY KEY (`tunnel_id`),
  ADD KEY `channel_recipient` (`tunnel_recipient`);

--
-- Индексы таблицы `textbelt_user`
--
ALTER TABLE `textbelt_user`
  ADD PRIMARY KEY (`textbelt_id`),
  ADD KEY `textbelt_token` (`textbelt_token`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_token` (`user_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `rule`
--
ALTER TABLE `rule`
  MODIFY `rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT для таблицы `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `textbelt_caller`
--
ALTER TABLE `textbelt_caller`
  MODIFY `caller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `textbelt_channel`
--
ALTER TABLE `textbelt_channel`
  MODIFY `channel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3417;

--
-- AUTO_INCREMENT для таблицы `textbelt_sms`
--
ALTER TABLE `textbelt_sms`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT для таблицы `textbelt_token`
--
ALTER TABLE `textbelt_token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `textbelt_tunnel`
--
ALTER TABLE `textbelt_tunnel`
  MODIFY `tunnel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=672;

--
-- AUTO_INCREMENT для таблицы `textbelt_user`
--
ALTER TABLE `textbelt_user`
  MODIFY `textbelt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1078;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
