-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 16:30:24
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
-- Estructura de tabla para la tabla `cred_estudio`
--

CREATE TABLE `cred_estudio` (
  `cred_estu_id` int(5) NOT NULL,
  `cred_fecha_creacion` date NOT NULL,
  `cli_id` int(5) NOT NULL,
  `cred_tipo_id` int(5) NOT NULL,
  `cred_obser_comercial` text NOT NULL,
  `cred_cliente_desde` varchar(100) NOT NULL,
  `cred_cupo_actual` varchar(9) NOT NULL,
  `cred_descuento_otorgado` varchar(500) NOT NULL,
  `cred_obser_dirComercial` text DEFAULT NULL,
  `cred_obser_contabilidad` text DEFAULT NULL,
  `cred_plazo_aprobado` int(3) DEFAULT NULL,
  `cred_cupo_aprobado` varchar(100) DEFAULT NULL,
  `cred_obser_gerencia` text DEFAULT NULL,
  `usu_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cred_estudio`
--

INSERT INTO `cred_estudio` (`cred_estu_id`, `cred_fecha_creacion`, `cli_id`, `cred_tipo_id`, `cred_obser_comercial`, `cred_cliente_desde`, `cred_cupo_actual`, `cred_descuento_otorgado`, `cred_obser_dirComercial`, `cred_obser_contabilidad`, `cred_plazo_aprobado`, `cred_cupo_aprobado`, `cred_obser_gerencia`, `usu_id`) VALUES
(1, '2024-06-12', 56, 4, 'Se observa un observador', '22-junio-2024', '20000000', '0', 'Todo en orden', 'Se observa contabilidad', 90, '10000000', 'Se observa gerencia', 1),
(2, '2024-06-12', 80, 9, 'Se observa un observador 2', 'marzo-2017', '60000000', '8% en menos de 90 dias', 'Todo en orden', 'Se observa contabilidad 2', 90, '60000000', 'Se observa gerencia 2', 1),
(4, '2024-06-13', 126, 7, 'Observacion comercial 3', 'julio-2020', '0', '0', 'Todo en orden', 'Observacion contabilidad 3', 0, '50000000', 'Observacion Gerencia 3', 1),
(5, '2024-06-13', 256, 2, 'Observacion comercial 4', 'nov-2022', '0', '0', 'Todo en orden', 'Observacion contabilidad 4', 35, '10000000', 'Observacion Gerencia 4', 1),
(6, '2024-06-13', 472, 1, 'Observacion comercial 5', 'oct-2022', '0', '0', 'Todo en orden', 'Observacion contabilidad 5', 40, '8000000', 'Observacion Gerencia 5', 1),
(7, '2024-06-19', 236, 2, 'Se necesita una ampliacion de cupo para la proxima venta', 'sep-2015', '30000000', '5% antes de 90 días', 'Todo en orden', 'Observación contabilidad 4 si funciona', 60, '25000000', 'Observación Gerencia por fin', 1),
(8, '2024-06-20', 187, 6, 'Observacion equipo comercial cuando ya esta acabando esto pero todavia falta', 'ene-2022', '0', 'Ninguno', 'Todo en orden', 'Observación contabilidad funcionando', NULL, '', '', 1),
(9, '2024-06-21', 365, 7, 'Comprobacion de usuario', 'nov-2022', '0', 'Ninguno', NULL, NULL, NULL, NULL, NULL, 1),
(10, '2024-06-21', 383, 3, 'Plazo necesita ser ampliado', 'dic-2019', '50000000', 'Ninguno', NULL, NULL, NULL, NULL, NULL, 1),
(11, '2024-06-21', 267, 5, 'Pruebas', 'jun-2018', '90000000', '30% antes de 15 dias', NULL, '', 0, '', '', 1),
(12, '2024-06-21', 57, 7, 'Pruebas', 'ene-2022', '20000000', '5% antes de 90 días', NULL, '', 0, '', '', 1),
(13, '2024-06-25', 30, 6, 'observacion', 'sep-2015', '0', 'Ninguno', NULL, NULL, NULL, NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cred_estudio`
--
ALTER TABLE `cred_estudio`
  ADD PRIMARY KEY (`cred_estu_id`),
  ADD KEY `cli_id` (`cli_id`),
  ADD KEY `cred_tipo_id` (`cred_tipo_id`),
  ADD KEY `fk_cred_estu_usu` (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cred_estudio`
--
ALTER TABLE `cred_estudio`
  MODIFY `cred_estu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cred_estudio`
--
ALTER TABLE `cred_estudio`
  ADD CONSTRAINT `cred_estudio_ibfk_1` FOREIGN KEY (`cli_id`) REFERENCES `cliente` (`cli_id`),
  ADD CONSTRAINT `cred_estudio_ibfk_2` FOREIGN KEY (`cred_tipo_id`) REFERENCES `cred_tipo` (`cred_tipo_id`),
  ADD CONSTRAINT `fk_cred_estu_usu` FOREIGN KEY (`usu_id`) REFERENCES `usuarios` (`usu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
