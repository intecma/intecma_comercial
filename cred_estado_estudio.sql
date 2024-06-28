-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 16:30:04
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
-- Estructura de tabla para la tabla `cred_estado_estudio`
--

CREATE TABLE `cred_estado_estudio` (
  `cred_esta_estu_id` int(5) NOT NULL,
  `cred_estu_id` int(5) NOT NULL,
  `cred_esta_id` int(5) NOT NULL,
  `cred_esta_estu_fecha` date NOT NULL,
  `cred_esta_estu_fecha_fin` date DEFAULT NULL,
  `carg_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cred_estado_estudio`
--

INSERT INTO `cred_estado_estudio` (`cred_esta_estu_id`, `cred_estu_id`, `cred_esta_id`, `cred_esta_estu_fecha`, `cred_esta_estu_fecha_fin`, `carg_id`) VALUES
(1, 1, 1, '2024-06-12', '2024-06-12', 0),
(2, 1, 2, '2024-06-12', '2024-06-12', 0),
(3, 1, 1, '2024-06-14', '2024-06-14', 0),
(4, 1, 2, '2024-06-14', '2024-06-17', 0),
(5, 1, 3, '2024-06-17', '2024-06-19', 0),
(6, 1, 4, '2024-06-19', '2024-06-20', 0),
(7, 1, 5, '2024-06-20', '2024-06-21', 0),
(9, 2, 1, '2024-06-12', NULL, 0),
(10, 1, 5, '2024-06-26', NULL, 0),
(11, 2, 2, '2024-06-13', NULL, 0),
(12, 4, 1, '2024-06-13', '2024-06-13', 0),
(13, 4, 1, '2024-06-13', '2024-06-13', 0),
(14, 4, 2, '2024-06-13', '2024-06-13', 0),
(15, 4, 3, '2024-06-13', '2024-06-13', 0),
(16, 2, 3, '2024-06-13', '2024-06-13', 0),
(17, 2, 4, '2024-06-13', '2024-06-13', 0),
(18, 5, 1, '2024-06-13', '2024-06-13', 0),
(19, 5, 2, '2024-06-13', '2024-06-13', 0),
(20, 6, 1, '2024-06-13', '2024-06-20', 0),
(21, 7, 1, '2024-06-19', '2024-06-19', 0),
(22, 7, 2, '2024-06-19', '2024-06-19', 0),
(23, 7, 1, '2024-06-19', '2024-06-19', 0),
(24, 7, 2, '2024-06-19', NULL, 0),
(25, 7, 3, '2024-06-19', '2024-06-19', 0),
(26, 7, 2, '2024-06-19', '2024-06-20', 0),
(27, 7, 3, '2024-06-20', '2024-06-20', 0),
(28, 7, 4, '2024-06-20', '2024-06-20', 0),
(29, 7, 3, '2024-06-20', '2024-06-20', 0),
(30, 7, 2, '2024-06-20', '2024-06-20', 0),
(31, 7, 3, '2024-06-20', '2024-06-20', 0),
(32, 7, 2, '2024-06-20', '2024-06-20', 0),
(33, 7, 3, '2024-06-20', '2024-06-20', 0),
(34, 7, 4, '2024-06-20', '2024-06-20', 0),
(35, 7, 5, '2024-06-20', NULL, 0),
(36, 6, 2, '2024-06-20', '2024-06-20', 0),
(37, 6, 3, '2024-06-20', NULL, 0),
(38, 8, 1, '2024-06-20', '2024-06-24', 0),
(39, 9, 1, '2024-06-21', NULL, 0),
(40, 10, 1, '2024-06-21', NULL, 0),
(41, 11, 1, '2024-06-21', NULL, 0),
(42, 12, 1, '2024-06-21', NULL, 0),
(43, 8, 2, '2024-06-24', NULL, 0),
(44, 8, 1, '2024-06-24', '2024-06-24', 0),
(45, 8, 1, '2024-06-24', '2024-06-24', 0),
(46, 8, 2, '2024-06-24', '2024-06-24', 0),
(47, 8, 1, '2024-06-24', '2024-06-24', 5),
(48, 8, 2, '2024-06-24', '2024-06-24', 5),
(49, 8, 1, '2024-06-24', '2024-06-24', 5),
(50, 8, 2, '2024-06-24', '2024-06-24', 5),
(51, 8, 3, '2024-06-24', '2024-06-24', 11),
(52, 8, 2, '2024-06-24', '2024-06-24', 5),
(53, 8, 3, '2024-06-24', '2024-06-24', 11),
(54, 8, 4, '2024-06-24', '2024-06-24', 4),
(55, 8, 3, '2024-06-24', '2024-06-24', 11),
(56, 8, 4, '2024-06-24', '2024-06-25', 4),
(57, 13, 1, '2024-06-25', NULL, 0),
(58, 8, 1, '2024-06-25', NULL, 5),
(59, 8, 1, '2024-06-25', '2024-06-25', 5),
(60, 8, 2, '2024-06-25', '2024-06-25', 3),
(61, 8, 3, '2024-06-25', '2024-06-25', 3),
(62, 8, 4, '2024-06-25', '2024-06-25', 4),
(63, 8, 2, '2024-06-25', '2024-06-25', 3),
(64, 8, 3, '2024-06-25', '2024-06-25', 11),
(65, 8, 2, '2024-06-25', '2024-06-25', 3),
(66, 8, 3, '2024-06-25', '2024-06-25', 11),
(67, 8, 4, '2024-06-25', '2024-06-25', 4),
(68, 8, 5, '2024-06-25', '2024-06-26', 4),
(69, 8, 2, '2024-06-26', '2024-06-26', 3),
(70, 8, 3, '2024-06-26', '2024-06-26', 11),
(71, 8, 2, '2024-06-26', '2024-06-26', 3),
(72, 8, 2, '2024-06-26', '2024-06-26', 3),
(73, 8, 2, '2024-06-26', '2024-06-26', 3),
(74, 8, 3, '2024-06-26', '2024-06-26', 11),
(75, 8, 2, '2024-06-26', '2024-06-26', 3),
(76, 8, 4, '2024-06-26', '2024-06-26', 4),
(77, 8, 3, '2024-06-26', '2024-06-26', 11),
(78, 8, 4, '2024-06-26', '2024-06-26', 4),
(79, 8, 3, '2024-06-26', '2024-06-27', 11),
(80, 8, 2, '2024-06-27', NULL, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cred_estado_estudio`
--
ALTER TABLE `cred_estado_estudio`
  ADD PRIMARY KEY (`cred_esta_estu_id`),
  ADD KEY `cred_estu_id` (`cred_estu_id`),
  ADD KEY `cred_esta_id` (`cred_esta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cred_estado_estudio`
--
ALTER TABLE `cred_estado_estudio`
  MODIFY `cred_esta_estu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cred_estado_estudio`
--
ALTER TABLE `cred_estado_estudio`
  ADD CONSTRAINT `cred_estado_estudio_ibfk_1` FOREIGN KEY (`cred_estu_id`) REFERENCES `cred_estudio` (`cred_estu_id`),
  ADD CONSTRAINT `cred_estado_estudio_ibfk_2` FOREIGN KEY (`cred_esta_id`) REFERENCES `cred_estado` (`cred_esta_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
