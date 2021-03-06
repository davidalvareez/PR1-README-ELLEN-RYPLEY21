-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2021 a las 22:23:04
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_restaurante`
--
  CREATE DATABASE db_restaurante;
-- --------------------------------------------------------
  USE db_restaurante;
--
-- Estructura de tabla para la tabla `tbl_empleado`
--

CREATE TABLE `tbl_empleado` (
  `id_emp` int(11) NOT NULL,
  `nombre_emp` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido_emp` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email_emp` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pass_emp` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo_emp` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_empleado`
--

INSERT INTO `tbl_empleado` (`id_emp`, `nombre_emp`, `apellido_emp`, `email_emp`, `pass_emp`, `tipo_emp`) VALUES
(1, 'TestNombre', 'TestApellido', 'test.test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Mantenimiento'),
(2, 'David', 'Alvarez', 'david@david.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Camarero'),
(3, 'Raul', 'Santacruz', 'raul@raul.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Camarero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado`
--

CREATE TABLE `tbl_estado` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_estado`
--

INSERT INTO `tbl_estado` (`id_estado`, `nombre_estado`) VALUES
(1, 'Libre'),
(2, 'Ocupado'),
(3, 'Mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_incidencia`
--

CREATE TABLE `tbl_incidencia` (
  `id_incidencia` int(11) NOT NULL,
  `data_incidencia` date DEFAULT NULL,
  `hora_incidencia` time DEFAULT NULL,
  `desc_incidencia` varchar(120) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_incidencia`
--

INSERT INTO `tbl_incidencia` (`id_incidencia`, `data_incidencia`, `hora_incidencia`, `desc_incidencia`, `id_mesa`) VALUES
(1, '2021-11-08', '17:27:35', 'Mesa con una silla rota 2', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mesa`
--

CREATE TABLE `tbl_mesa` (
  `id_mesa` int(11) NOT NULL,
  `capacidad` int(2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_sala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_mesa`
--

INSERT INTO `tbl_mesa` (`id_mesa`, `capacidad`, `estado`, `id_sala`) VALUES
(1, 2, 'Libre', 1),
(2, 2, 'Libre', 1),
(3, 2, 'Libre', 1),
(4, 2, 'Libre', 1),
(5, 2, 'Libre', 1),
(6, 4, 'Libre', 2),
(7, 4, 'Libre', 2),
(8, 4, 'Libre', 2),
(9, 4, 'Libre', 2),
(10, 4, 'Libre', 2),
(11, 6, 'Libre', 3),
(12, 6, 'Libre', 3),
(13, 6, 'Libre', 3),
(14, 6, 'Libre', 3),
(15, 6, 'Libre', 3),
(16, 8, 'Libre', 4),
(17, 8, 'Libre', 4),
(18, 8, 'Libre', 4),
(19, 8, 'Libre', 4),
(20, 8, 'Libre', 4),
(21, 10, 'Libre', 5),
(22, 10, 'Libre', 5),
(23, 10, 'Libre', 5),
(24, 10, 'Libre', 5),
(25, 10, 'Libre', 5),
(26, 100, 'Libre', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reserva`
--

CREATE TABLE `tbl_reserva` (
  `id_reserva` int(11) NOT NULL,
  `data_reserva` date DEFAULT NULL,
  `hora_reserva` time DEFAULT NULL,
  `hora_fi_reserva` time DEFAULT NULL,
  `id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_reserva`
--

INSERT INTO `tbl_reserva` (`id_reserva`, `data_reserva`, `hora_reserva`, `hora_fi_reserva`, `id_mesa`) VALUES
(7, '2021-11-07', '18:42:18', '18:03:13', 1),
(8, '2021-11-07', '18:42:23', '15:39:51', 2),
(9, '2021-11-08', '16:00:24', '16:00:38', 6),
(12, '2021-11-08', '19:36:09', '19:36:31', 26),
(13, '2021-11-09', '18:03:04', '18:03:13', 1),
(14, '2021-11-09', '21:51:23', '21:51:41', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_sala`
--

CREATE TABLE `tbl_sala` (
  `id_sala` int(11) NOT NULL,
  `nom_sala` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_sala`
--

INSERT INTO `tbl_sala` (`id_sala`, `nom_sala`) VALUES
(1, 'Sala 2'),
(2, 'Sala 4'),
(3, 'Sala 6'),
(4, 'Sala 8'),
(5, 'Sala 10'),
(6, 'Reservado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  ADD PRIMARY KEY (`id_emp`);

--
-- Indices de la tabla `tbl_estado`
--
ALTER TABLE `tbl_estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `tbl_incidencia`
--
ALTER TABLE `tbl_incidencia`
  ADD PRIMARY KEY (`id_incidencia`),
  ADD KEY `id_mesa` (`id_mesa`);

--
-- Indices de la tabla `tbl_mesa`
--
ALTER TABLE `tbl_mesa`
  ADD PRIMARY KEY (`id_mesa`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_mesa` (`id_mesa`);

--
-- Indices de la tabla `tbl_sala`
--
ALTER TABLE `tbl_sala`
  ADD PRIMARY KEY (`id_sala`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  MODIFY `id_emp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_estado`
--
ALTER TABLE `tbl_estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_incidencia`
--
ALTER TABLE `tbl_incidencia`
  MODIFY `id_incidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_mesa`
--
ALTER TABLE `tbl_mesa`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_sala`
--
ALTER TABLE `tbl_sala`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_incidencia`
--
ALTER TABLE `tbl_incidencia`
  ADD CONSTRAINT `tbl_incidencia_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `tbl_mesa` (`id_mesa`);

--
-- Filtros para la tabla `tbl_mesa`
--
ALTER TABLE `tbl_mesa`
  ADD CONSTRAINT `tbl_mesa_ibfk_1` FOREIGN KEY (`id_sala`) REFERENCES `tbl_sala` (`id_sala`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD CONSTRAINT `tbl_reserva_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `tbl_mesa` (`id_mesa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
