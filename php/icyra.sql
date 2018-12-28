-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2018 a las 04:09:59
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `icyra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_contacto`
--

CREATE TABLE `form_contacto` (
  `id_comentario` int(5) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `telefono` int(15) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  `comentarios` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `form_contacto`
--

INSERT INTO `form_contacto` (`id_comentario`, `nombre`, `telefono`, `mail`, `comentarios`) VALUES
(1, 'gabe', 1568892446, 'gabe@cruz.com', ''),
(2, 'cas', 1568892446, 'cas@cruz.com', ''),
(3, 'cas', 1568892446, 'cas@cruz.com', ''),
(4, 'pipo', 1569698787, 'pipo@cruz.com', 'pipo quiere probar php'),
(5, 'casuleta', 1567894981, 'casu@reloko.com', 'olakeonda'),
(6, 'pipa', 156161, 'pipa@lixis.com', 'hola soy pipa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `form_contacto`
--
ALTER TABLE `form_contacto`
  ADD PRIMARY KEY (`id_comentario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `form_contacto`
--
ALTER TABLE `form_contacto`
  MODIFY `id_comentario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
