-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2019 a las 06:05:13
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
  `item` bigint(20) UNSIGNED NOT NULL,
  `codprod` varchar(8) COLLATE utf8_bin NOT NULL,
  `nomprod` varchar(60) COLLATE utf8_bin NOT NULL,
  `cantprod` smallint(6) DEFAULT '0',
  `pcosto` double DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`item`, `codprod`, `nomprod`, `cantprod`, `pcosto`, `imagen`) VALUES
(8, '10230015', 'VARILLA CORRUGADA 11 MM X 6 M DIACO', 50, 12920, ''),
(9, '10230016', 'CHIPA 1/4 DIACO', 200, 2750, ''),
(13, '10230020', 'TEJA AJONIT AJOVER N 10 CRISTAL 3.05 M', 20, 49266, ''),
(24, '10230031', 'TEJA MARCOLITA TIPO ZINC N 8 GERFOR 2.44 M', 9, 25827, ''),
(25, '10230032', 'ALAMBRE CENTELSA N 14 X 100 M', 6, 73000, ''),
(26, '222222', 'PAPA MAMNA', 4, 450000, 'erer.jpg'),
(28, '5555', 'FRFR', 5, 53333, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(30) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(30) COLLATE utf8_bin NOT NULL,
  `ident` int(12) NOT NULL,
  `gender` varchar(1) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `photo` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `firstname`, `lastname`, `ident`, `gender`, `email`, `password`, `photo`) VALUES
(6, 'Peter', 'McDonald', 0, '', 'peter@gmail.com', '$2y$10$HiZIR8WgxNdF617V2eve5uN4C.xnwbfJQrGX7u/c9d1', NULL),
(123, 'wwwwr', 'eeeee', 654554, '', 'rrr@2', '$2y$10$MBlko2REy8z6RoFFdstjIeVaSGWWZZDldZd0dxAHmHc', 'images/rtu.jpg'),
(131, 'bbtb', 'bgbgb', 8765, '', 'deded@keed', '$2y$10$bEAUj59wtnlHpCdgqRMrJO23HXlqvXLyY5XTJSOCAbw', 'photos/'),
(132, 'dwdwd', 'rfrvv', 87654, '', 'fff@ad', '$2y$10$ecV/Q3AfWLuXpvLU/kiMfOUfeuazRhbr4UnkA4MBmW2', 'photos/'),
(133, 'hyhyh', 'hyhyh', 7654, '', 'efe@crv', '$2y$10$wQiH9a9duXckXtbK2QzRN.vYPrM/q2kYCmtipiw1QHW', 'images/'),
(134, 'ededed', 'deded', 543223, '', 'eer@2', '$2y$10$q2FU0QMjy1AO4LJ2UB2Hhu2vGYm/ZTjw3jxrDNSbjmS', 'images/erer.jpg'),
(135, 'ggtg', 'gtgtg', 5555, '', 'grgrg@ded', '$2y$10$Wi/5hapehQC.YJ/xlks.M.nYIWLySGnpynMbyJHBN.S', 'images/erer.jpg'),
(136, 'frfrfr', 'frfrf', 65434, '', 'r@er', '$2y$10$xcBCBPPiv5ea9sHQTPlBXOVkIKvQFekzl36Bh9ZdsfG', 'images/erer.jpg'),
(137, 'dfff', 'frfrf', 4555, '', 'ffrf@qww', '$2y$10$EmfFlOwFzYKwEGPxGaEKh.hiGUVEoFI9e5xNeP80Qcg', 'images/erer.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`item`),
  ADD UNIQUE KEY `codprod` (`codprod`),
  ADD UNIQUE KEY `nomprod` (`nomprod`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `item` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
