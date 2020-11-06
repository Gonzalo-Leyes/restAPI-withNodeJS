-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2020 a las 23:53:56
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restodelilah`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payments_method_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status_id`, `created_at`, `payments_method_id`) VALUES
(9, 2, 1, '2020-10-27 15:22:46', 1),
(10, 1, 1, '2020-10-27 15:23:14', 2),
(11, 1, 1, '2020-10-27 15:25:31', 2),
(12, 2, 1, '2020-10-27 15:25:38', 1),
(13, 2, 1, '2020-10-27 15:28:46', 1),
(14, 2, 1, '2020-10-27 15:33:19', 1),
(15, 1, 1, '2020-10-27 15:34:20', 2),
(16, 1, 1, '2020-10-27 15:35:00', 2),
(17, 1, 1, '2020-10-27 15:35:25', 2),
(18, 1, 1, '2020-10-27 16:12:01', 2),
(19, 1, 1, '2020-10-27 16:13:34', 2),
(20, 1, 1, '2020-10-27 16:13:49', 1),
(21, 1, 1, '2020-10-27 16:15:06', 1),
(22, 1, 1, '2020-10-27 16:15:26', 1),
(23, 1, 1, '2020-10-27 16:15:34', 1),
(24, 1, 1, '2020-10-27 16:41:55', 1),
(25, 1, 1, '2020-10-27 16:44:37', 1),
(26, 1, 1, '2020-10-27 16:45:43', 1),
(27, 1, 1, '2020-10-27 16:55:52', 1),
(28, 1, 1, '2020-10-27 16:57:41', 1),
(29, 1, 1, '2020-10-27 18:04:38', 1),
(30, 1, 1, '2020-10-27 18:05:06', 1),
(31, 1, 1, '2020-10-27 18:05:27', 1),
(32, 1, 1, '2020-10-27 20:37:14', 1),
(33, 1, 1, '2020-10-27 20:38:48', 1),
(34, 1, 1, '2020-10-27 20:39:14', 1),
(35, 1, 1, '2020-10-27 20:41:05', 1),
(36, 1, 1, '2020-10-27 20:41:24', 1),
(37, 1, 1, '2020-10-27 20:42:48', 1),
(38, 1, 1, '2020-10-27 20:45:10', 1),
(39, 1, 1, '2020-10-27 20:48:33', 1),
(40, 1, 1, '2020-10-27 20:49:48', 1),
(41, 1, 1, '2020-10-27 20:56:57', 1),
(42, 1, 1, '2020-10-27 21:55:49', 1),
(43, 1, 1, '2020-10-27 22:05:27', 1),
(44, 1, 1, '2020-10-27 22:09:08', 1),
(45, 1, 1, '2020-10-27 22:39:07', 1),
(46, 1, 1, '2020-10-27 22:42:13', 1),
(47, 1, 1, '2020-10-27 22:42:21', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`) VALUES
(1, 11, 1),
(2, 11, 1),
(3, 12, 2),
(4, 12, 2),
(5, 13, 2),
(6, 13, 2),
(7, 14, 2),
(8, 14, 2),
(9, 15, 3),
(10, 15, 2),
(11, 16, 2),
(12, 16, 2),
(13, 17, 2),
(14, 17, 2),
(15, 18, 2),
(16, 18, 2),
(17, 19, 2),
(18, 19, 2),
(19, 20, 2),
(20, 20, 2),
(21, 21, 2),
(22, 21, 2),
(23, 21, 1),
(24, 22, 2),
(25, 22, 2),
(26, 23, 2),
(27, 23, 2),
(28, 24, 2),
(29, 24, 2),
(30, 25, 2),
(31, 25, 3),
(32, 26, 3),
(33, 26, 2),
(34, 27, 2),
(35, 27, 2),
(36, 28, 2),
(37, 28, 2),
(38, 29, 2),
(39, 30, 2),
(40, 31, 2),
(41, 31, 2),
(42, 32, 2),
(43, 32, 2),
(44, 33, 1),
(45, 33, 1),
(46, 34, 1),
(47, 34, 1),
(48, 35, 1),
(49, 36, 1),
(50, 36, 1),
(51, 38, 1),
(52, 38, 1),
(53, 39, 1),
(54, 39, 1),
(55, 40, 1),
(56, 40, 1),
(57, 41, 1),
(58, 42, 1),
(59, 43, 1),
(60, 44, 1),
(61, 45, 1),
(62, 46, 1),
(63, 47, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_status`
--

CREATE TABLE `orders_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orders_status`
--

INSERT INTO `orders_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Confirmed'),
(3, 'Preparing'),
(4, 'Being delivered'),
(5, 'Delivered'),
(6, 'Canceled');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`) VALUES
(1, 'Cash'),
(2, 'Credit/Debit Card');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price_discount` float DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `price_discount`, `active`) VALUES
(1, 'hamburguesa doble con cheddar', 480, 'https://mcdonalds.co.nz/sites/mcdonalds.co.nz/files/Double%20Cheeseburger%20700x487.png', 0, 1),
(2, 'papas fritas con cheddar bacon y verdeo', 330, 'https://locosxlaparrilla.com/wp-content/uploads/2015/02/Receta-recetas-locos-x-la-parrilla-locosxlaparrilla-receta-papas-fritas-cheddar-verdeo-panceta-papas-fritas-cheddar-verde.png', 270, 1),
(3, 'pancho con papas fritas', 260, 'https://images-gmi-pmc.edge-generalmills.com/03dba6be-540b-41f6-adea-8be7ab899ef8.jpg', 0, 1),
(4, 'chocotorta', 210, 'https://postres.online/wp-content/uploads/2018/08/chocotorta-argentina-receta-compressor-1200x632.jpg', 0, 1),
(5, 'capeletis con salsa fileto', 240, 'https://www.multipasta.com.ar/wp-content/uploads/2014/09/sorrentinos.jpg', 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `username`, `role_id`) VALUES
(1, 'Gonzalo Leyes', 'fakemail@hotmail.com', '1150504040', 'Fake Street 123', '12345', 'GonzaloLeyes', 1),
(2, 'Pepe', 'anothermail@yahoo.com', '1122334455', 'grove street 000', 'abcde', 'Pepe01', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`) VALUES
(1, 'Administrador'),
(2, 'User');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `payments_method_id` (`payments_method_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `orders_status` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payments_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `orders_products`
--
ALTER TABLE `orders_products`
  ADD CONSTRAINT `orders_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
