-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2024 a las 15:35:39
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
-- Estructura de tabla para la tabla `acc_rutas`
--

CREATE TABLE `acc_rutas` (
  `ruta_id` int(5) NOT NULL,
  `ruta_nombre` varchar(1000) NOT NULL,
  `ruta_descripcion` varchar(5000) NOT NULL,
  `mod_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acc_rutas`
--

INSERT INTO `acc_rutas` (`ruta_id`, `ruta_nombre`, `ruta_descripcion`, `mod_id`) VALUES
(1, 'Pqrs', 'Permite al usuario ver el listado de las PQRS creadas y filtrarlas', 4),
(2, 'AgregarPqrs', 'Permite al usuario crear nuevas PQRS', 4),
(3, 'ModificarPqrs', 'Permite al usuario modificar las PQRS ya existentes', 4),
(4, 'PlanAccionPqrs', 'Permite al usuario acceder al listado de planes de mejora que tiene cada PQRS', 2),
(5, 'AgregarPlanAccionPqrs', 'Permite al usuario crear nuevos planes de acción a las PQRS', 2),
(6, 'ModificarPlanAccionPqrs', 'Permite al usuario modificar planes de acción ya existentes en la pqrs', 2),
(7, 'Clientes', 'Permite al usuario acceder al listado de clientes creados y filtrarlos', 5),
(8, 'AgregarClientes', 'Permite al usuario crear nuevo clientes en la base de datos', 5),
(9, 'ModificarClientes', 'Permite al usuario modificar la información de los clientes ya existentes', 5),
(10, 'Usuarios', 'Permite al usuario acceder al listado de usuarios y ver su información', 7),
(11, 'AgregarUsuarios', 'Permite al usuario crear nuevos Usuarios en el sistema y asignarle un rol', 7),
(12, 'ModificarUsuarios', 'Permite al usuario modificar información de los usuarios ya existentes incluido su rol', 7),
(13, 'Roles', 'Permite al usuario acceder al listado de roles existentes en la base de datos.', 8),
(14, 'AgregarRoles', 'Permite al usuario agregar nuevos roles pero no puede asignar permisos', 8),
(15, 'ModificarRoles', 'Permite al usuario modificar los roles y asignar los permisos hasta que parte de la aplicación pueden acceder.', 8),
(16, 'Modulos', 'Permite al usuario acceder al listado de módulos de la aplicación.', 9),
(17, 'AgregarModulos', 'Permite al usuario crear módulos que tenga la aplicación y aun no estén registrados', 9),
(18, 'ModificarModulos', 'Permite al usuario modificar los nombres de los módulos ya existentes.', 9),
(19, 'Componentes', 'Permite al usuario acceder al listado de los componentes que tiene cada modulo.', 10),
(20, 'AgregarComponentes', 'Permite al usuario agregar componentes a los módulos registrados en el sistema.', 10),
(21, 'ModificarComponentes', 'Permite a usuario modificar el nombre de los componentes y añadir rutas de la aplicación que pertenezcan al Componente del modulo.', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acc_rutas`
--
ALTER TABLE `acc_rutas`
  ADD PRIMARY KEY (`ruta_id`),
  ADD KEY `mod_id` (`mod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acc_rutas`
--
ALTER TABLE `acc_rutas`
  MODIFY `ruta_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acc_rutas`
--
ALTER TABLE `acc_rutas`
  ADD CONSTRAINT `acc_rutas_ibfk_1` FOREIGN KEY (`mod_id`) REFERENCES `acc_modulos` (`mod_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
