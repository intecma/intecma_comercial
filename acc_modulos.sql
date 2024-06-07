-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2024 a las 15:35:00
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
-- Estructura de tabla para la tabla `acc_modulos`
--

CREATE TABLE `acc_modulos` (
  `mod_id` int(5) NOT NULL,
  `mod_nombre` varchar(100) NOT NULL,
  `mod_id_padre` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acc_modulos`
--

INSERT INTO `acc_modulos` (`mod_id`, `mod_nombre`, `mod_id_padre`) VALUES
(1, 'PQRS', NULL),
(2, 'Planes Acción Pqrs', 1),
(3, 'CLIENTES', NULL),
(4, 'Pqrs', 1),
(5, 'Cliente', 3),
(6, 'ADMINISTRADOR', NULL),
(7, 'Usuarios', 6),
(8, 'Roles', 6),
(9, 'Módulos', 6),
(10, 'Componentes', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acc_modulos`
--
ALTER TABLE `acc_modulos`
  ADD PRIMARY KEY (`mod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acc_modulos`
--
ALTER TABLE `acc_modulos`
  MODIFY `mod_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
