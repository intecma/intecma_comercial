-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 16:29:48
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
-- Estructura de tabla para la tabla `cred_estado`
--

CREATE TABLE `cred_estado` (
  `cred_esta_id` int(5) NOT NULL,
  `cred_esta_nombre` varchar(200) NOT NULL,
  `area_emp_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cred_estado`
--

INSERT INTO `cred_estado` (`cred_esta_id`, `cred_esta_nombre`, `area_emp_id`) VALUES
(1, 'Solicitando', 3),
(2, 'Verificación Contabilidad', 5),
(3, 'Aprobación Gerencia', 1),
(4, 'Aprobado', 1),
(5, 'Denegado', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cred_estado`
--
ALTER TABLE `cred_estado`
  ADD PRIMARY KEY (`cred_esta_id`),
  ADD KEY `fk_esta_area` (`area_emp_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cred_estado`
--
ALTER TABLE `cred_estado`
  MODIFY `cred_esta_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cred_estado`
--
ALTER TABLE `cred_estado`
  ADD CONSTRAINT `fk_esta_area` FOREIGN KEY (`area_emp_id`) REFERENCES `area_empresa` (`area_emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
