-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 16:29:30
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
-- Estructura de tabla para la tabla `cred_documento`
--

CREATE TABLE `cred_documento` (
  `cred_doc_id` int(3) NOT NULL,
  `cred_doc_nombre` varchar(500) NOT NULL,
  `cred_doc_descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cred_documento`
--

INSERT INTO `cred_documento` (`cred_doc_id`, `cred_doc_nombre`, `cred_doc_descripcion`) VALUES
(1, 'FORMATO CREACION DE CLIENTES', 'DILIGENCIADO Y FIRMADO POR EL REPRESENTANTE LEGAL'),
(2, 'RUT VIGENTE', ''),
(3, 'CERTIFICADO DE CAMARA Y COMERCIO', 'CON FECHA DE EXPEDICION NO MAYOR A 30 DIAS'),
(4, 'ULTIMOS ESTADOS FINANCIEROS', 'FIRMADOS POR EL CONTADOR Y/O REVISOR FISCAL.'),
(5, 'ULTIMA DECLARACION DE RENTA', ''),
(6, 'REFERENCIAS COMERCIALES(1)', 'POR ESCRITO NO MAYOR A 30 DIAS.'),
(7, 'REFERENCIAS COMERCIALES(2)', 'POR ESCRITO NO MAYOR A 30 DIAS.'),
(8, 'REFERENCIA BANCARIA', 'POR ESCRITO NO MAYOR A 30 DIAS.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cred_documento`
--
ALTER TABLE `cred_documento`
  ADD PRIMARY KEY (`cred_doc_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cred_documento`
--
ALTER TABLE `cred_documento`
  MODIFY `cred_doc_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
