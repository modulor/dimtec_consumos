-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2016 a las 12:47:32
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dimtec_consumos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `clientes_k` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `usuarios_k` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_cpcode`
--

DROP TABLE IF EXISTS `clientes_cpcode`;
CREATE TABLE IF NOT EXISTS `clientes_cpcode` (
  `clientes_cpcode_k` int(11) NOT NULL,
  `clientes_k` int(11) NOT NULL,
  `cpcode` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuarios_k` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(40) COLLATE utf8_bin NOT NULL,
  `token` text COLLATE utf8_bin NOT NULL,
  `activo` varchar(1) COLLATE utf8_bin NOT NULL,
  `usuarios_niveles_k` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuarios_k`, `email`, `password`, `token`, `activo`, `usuarios_niveles_k`) VALUES
(1, 'modulor@hotmail.es', '10470c3b4b1fed12c3baac014be15fac67c6e815', '', 'Y', 0),
(2, 'email@email.com', 'password', 'token', 'Y', 10),
(3, 'email@email.com', 'password', 'token', 'Y', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_niveles`
--

DROP TABLE IF EXISTS `usuarios_niveles`;
CREATE TABLE IF NOT EXISTS `usuarios_niveles` (
  `usuarios_niveles_k` int(11) NOT NULL,
  `nombre_nivel` varchar(100) COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`clientes_k`);

--
-- Indices de la tabla `clientes_cpcode`
--
ALTER TABLE `clientes_cpcode`
  ADD PRIMARY KEY (`clientes_cpcode_k`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarios_k`);

--
-- Indices de la tabla `usuarios_niveles`
--
ALTER TABLE `usuarios_niveles`
  ADD PRIMARY KEY (`usuarios_niveles_k`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `clientes_k` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clientes_cpcode`
--
ALTER TABLE `clientes_cpcode`
  MODIFY `clientes_cpcode_k` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarios_k` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios_niveles`
--
ALTER TABLE `usuarios_niveles`
  MODIFY `usuarios_niveles_k` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
