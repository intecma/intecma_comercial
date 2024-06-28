-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 16:30:45
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
-- Estructura de tabla para la tabla `cred_tipo`
--

CREATE TABLE `cred_tipo` (
  `cred_tipo_id` int(5) NOT NULL,
  `cred_tipo_nombre` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cred_tipo`
--

INSERT INTO `cred_tipo` (`cred_tipo_id`, `cred_tipo_nombre`) VALUES
(1, 'AMPLIACION CUPO Y PLAZO DE PAGO'),
(2, 'AMPLIACION DE CUPO'),
(3, 'AMPLIACION DE PLAZO'),
(4, 'AMPLIACION DE PLAZO Y CUPO'),
(5, 'AUMENTO DE CUPO'),
(6, 'CLIENTE NUEVO PENDIENTE FORMATO CLIENTE PARA CARPETA'),
(7, 'CUPO DE CREDITO'),
(8, 'ESTUDIO DE CREDITO'),
(9, 'REVALIDACION DE PLAZO Y CUPO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cred_tipo`
--
ALTER TABLE `cred_tipo`
  ADD PRIMARY KEY (`cred_tipo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cred_tipo`
--
ALTER TABLE `cred_tipo`
  MODIFY `cred_tipo_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
