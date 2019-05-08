-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2019 a las 18:54:03
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `market`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(1) NOT NULL,
  `nombre_u` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellidos_u` varchar(50) COLLATE utf8_bin NOT NULL,
  `nick` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_ingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre_u`, `apellidos_u`, `nick`, `email`, `telefono`, `fecha_ingreso`, `password`) VALUES
(15, 'JHSC', 'HJHHGC', 'KHKSJH', 'KHCKSCH', 6899, '2019-05-08 15:04:14', '47bc8ca555c9a5f9e311d55657f2b696'),
(16, 'JUAN', 'BENAVIDES', 'JDAKD', 'HAHAHAG', 56789, '2019-05-08 15:46:19', '14e1b600b1fd579f47433b88e8d85291'),
(17, 'HELP', 'HELMY', 'JGJS', 'AJGA', 789, '2019-05-08 15:48:38', '3f286f16ae824f0247fab59f20533ec2'),
(18, 'JD', 'E', 'WW', 'QU', 12, '2019-05-08 15:49:30', '5b637a813c96606689c3d56cf4304d1e'),
(19, 'E', 'A', 'EA', 'WW', 33, '2019-05-08 15:51:32', 'QAZ'),
(20, 'WE', 'WE', 'UI', 'SDS', 12667, '2019-05-08 15:56:24', 'AREPON'),
(21, 'TY', 'RT', 'HYO', 'DESG', 56789, '2019-05-08 15:57:51', 'LOK');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
