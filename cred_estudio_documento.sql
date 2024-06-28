-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 16:30:32
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
-- Estructura de tabla para la tabla `cred_estudio_documento`
--

CREATE TABLE `cred_estudio_documento` (
  `cred_estu_doc_id` int(5) NOT NULL,
  `cred_estu_doc_url` varchar(2500) NOT NULL,
  `cred_estu_id` int(5) NOT NULL,
  `cred_doc_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cred_estudio_documento`
--

INSERT INTO `cred_estudio_documento` (`cred_estu_doc_id`, `cred_estu_doc_url`, `cred_estu_id`, `cred_doc_id`) VALUES
(4, 'http://localhost:3000/credEstuPDFs/FORMATO_CREACION_DE_CLIENTES7.pdf', 7, 1),
(5, 'http://localhost:3000/credEstuPDFs/RUT_VIGENTE7.pdf ', 7, 2),
(6, 'http://localhost:3000/credEstuPDFs/CERTIFICADO_DE_CAMARA_Y_COMERCIO7.pdf', 7, 3),
(7, 'http://localhost:3000/credEstuPDFs/ULTIMOS_ESTADOS_FINANCIEROS7.pdf', 7, 4),
(8, 'http://localhost:3000/credEstuPDFs/ULTIMA_DECLARACION_DE_RENTA7.pdf', 7, 5),
(9, 'http://localhost:3000/credEstuPDFs/REFERENCIAS_COMERCIALES(1)7.pdf', 7, 6),
(10, 'http://localhost:3000/credEstuPDFs/REFERENCIAS_COMERCIALES(2)7.pdf', 7, 7),
(11, 'http://localhost:3000/credEstuPDFs/REFERENCIA_BANCARIA7.pdf', 7, 8),
(13, 'http://localhost:3000/credEstuPDFs/FORMATO_CREACION_DE_CLIENTES6.pdf', 6, 1),
(14, 'http://localhost:3000/credEstuPDFs/RUT_VIGENTE6.pdf', 6, 2),
(15, 'http://localhost:3000/credEstuPDFs/CERTIFICADO_DE_CAMARA_Y_COMERCIO6.pdf', 6, 3),
(16, 'http://localhost:3000/credEstuPDFs/ULTIMOS_ESTADOS_FINANCIEROS6.pdf', 6, 4),
(17, 'http://localhost:3000/credEstuPDFs/ULTIMA_DECLARACION_DE_RENTA6.pdf', 6, 5),
(18, 'http://localhost:3000/credEstuPDFs/REFERENCIAS_COMERCIALES(1)6.pdf', 6, 6),
(19, 'http://localhost:3000/credEstuPDFs/REFERENCIAS_COMERCIALES(2)6.pdf', 6, 7),
(20, 'http://localhost:3000/credEstuPDFs/REFERENCIA_BANCARIA6.pdf', 6, 8),
(22, 'http://localhost:3000/credEstuPDFs/FORMATO_CREACION_DE_CLIENTES8.pdf', 8, 1),
(23, 'http://localhost:3000/credEstuPDFs/CERTIFICADO_DE_CAMARA_Y_COMERCIO8.pdf', 8, 3),
(24, 'http://localhost:3000/credEstuPDFs/REFERENCIA_BANCARIA8.pdf', 8, 8),
(25, 'http://localhost:3000/credEstuPDFs/REFERENCIAS_COMERCIALES(1)8.pdf', 8, 6),
(26, 'http://localhost:3000/credEstuPDFs/REFERENCIAS_COMERCIALES(2)8.pdf', 8, 7),
(27, 'http://localhost:3000/credEstuPDFs/RUT_VIGENTE8.pdf', 8, 2),
(28, 'http://localhost:3000/credEstuPDFs/ULTIMA_DECLARACION_DE_RENTA8.pdf', 8, 5),
(29, 'http://localhost:3000/credEstuPDFs/ULTIMOS_ESTADOS_FINANCIEROS8.pdf', 8, 4),
(30, 'http://localhost:3000/credEstuPDFs/CERTIFICADO_DE_CAMARA_Y_COMERCIO9.pdf', 9, 3),
(31, 'http://localhost:3000/credEstuPDFs/REFERENCIAS_COMERCIALES(1)13.pdf', 13, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cred_estudio_documento`
--
ALTER TABLE `cred_estudio_documento`
  ADD PRIMARY KEY (`cred_estu_doc_id`),
  ADD KEY `cred_estu_id` (`cred_estu_id`),
  ADD KEY `cred_doc_id` (`cred_doc_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cred_estudio_documento`
--
ALTER TABLE `cred_estudio_documento`
  MODIFY `cred_estu_doc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cred_estudio_documento`
--
ALTER TABLE `cred_estudio_documento`
  ADD CONSTRAINT `cred_estudio_documento_ibfk_1` FOREIGN KEY (`cred_estu_id`) REFERENCES `cred_estudio` (`cred_estu_id`),
  ADD CONSTRAINT `cred_estudio_documento_ibfk_2` FOREIGN KEY (`cred_doc_id`) REFERENCES `cred_documento` (`cred_doc_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
