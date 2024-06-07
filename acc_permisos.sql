-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2024 a las 15:35:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_permisos`
--

CREATE TABLE `acc_permisos` (
  `per_id` int(5) NOT NULL,
  `rol_id` int(5) NOT NULL,
  `ruta_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acc_permisos`
--

INSERT INTO `acc_permisos` (`per_id`, `rol_id`, `ruta_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(10, 2, 1),
(11, 2, 2),
(12, 2, 3),
(13, 2, 4),
(14, 2, 5),
(15, 2, 6),
(16, 1, 9),
(17, 1, 10),
(18, 1, 11),
(19, 1, 12),
(20, 1, 14),
(21, 1, 13),
(22, 1, 15),
(23, 1, 16),
(24, 1, 17),
(25, 1, 18),
(26, 1, 19),
(27, 1, 20),
(28, 1, 21);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acc_permisos`
--
ALTER TABLE `acc_permisos`
  ADD PRIMARY KEY (`per_id`),
  ADD KEY `rol_id` (`rol_id`),
  ADD KEY `ruta_id` (`ruta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acc_permisos`
--
ALTER TABLE `acc_permisos`
  MODIFY `per_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acc_permisos`
--
ALTER TABLE `acc_permisos`
  ADD CONSTRAINT `acc_permisos_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `acc_roles` (`rol_id`),
  ADD CONSTRAINT `acc_permisos_ibfk_2` FOREIGN KEY (`ruta_id`) REFERENCES `acc_rutas` (`ruta_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
