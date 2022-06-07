-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-06-2022 a las 01:10:23
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aventon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aventado`
--

DROP TABLE IF EXISTS `aventado`;
CREATE TABLE IF NOT EXISTS `aventado` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `carrera` varchar(25) NOT NULL,
  `matricula` int(11) NOT NULL,
  `numero` varchar(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aventado`
--

INSERT INTO `aventado` (`id_usuario`, `nombre`, `correo`, `password`, `carrera`, `matricula`, `numero`) VALUES
(2, 'victor', 'victor03cantu@gmail.com', '123victor', 'ing. sistemas', 2019127216, '5585531248');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aventador`
--

DROP TABLE IF EXISTS `aventador`;
CREATE TABLE IF NOT EXISTS `aventador` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `carrera` varchar(25) NOT NULL,
  `matricula` int(11) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `vehiculo` text NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aventador`
--

INSERT INTO `aventador` (`id_usuario`, `nombre`, `correo`, `edad`, `carrera`, `matricula`, `numero`, `password`, `vehiculo`) VALUES
(4, 'victor', 'victor03cantu@gmail.com', 20, 'ing. sistemas', 2019127216, '5585531248', '123victor', ''),
(5, 'uriel', 'santosbaxin@hotmail.es', 23, 'ing. sistemas', 201917683, '5563354334', '123qwe,.-', ''),
(6, 'victor', 'victor03cantu@gmail.com', 20, 'ing. sistemas', 2019127216, '5585531248', '123victor', ''),
(7, 'Dominga ', 'victor03cantu@gmail.com', 20, 'ing. sistemas', 2019127216, '5585531248', '123qwe,.-', ''),
(8, 'victor', 'victor03cantu@gmail.com', 20, 'ing. sistemas', 2019127216, '5585531248', '123victor', 'motocicleta'),
(9, 'victor', 'victor03cantu@gmail.com', 20, 'ing. sistemas', 2019127216, '5585531248', '123victor', 'motocicleta'),
(10, 'victor', 'victor03cantu@gmail.com', 20, 'ing. sistemas', 2019127216, '5585531248', '123victor', 'motocicleta'),
(11, 'mila', 'gabiiimilaaa@gmail.com', 25, 'ing. sistemas', 201917542, '5613385829', 'yoamoaluismi', 'tanquq'),
(12, 'Fabiola', 'fgarcia@tesi.edu.mx', 35, 'ISC', 4550, '5522658837', '12345', 'carro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
CREATE TABLE IF NOT EXISTS `direcciones` (
  `tienda_id` int(50) NOT NULL,
  `tienda_registro` varchar(100) NOT NULL,
  `tienda_nombre` varchar(100) NOT NULL,
  `tienda_latitud` varchar(125) NOT NULL,
  `tienda_longitud` varchar(125) NOT NULL,
  PRIMARY KEY (`tienda_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`tienda_id`, `tienda_registro`, `tienda_nombre`, `tienda_latitud`, `tienda_longitud`) VALUES
(3, 'hoy', 'Tecnológico de estudios superiores de Ixtapaluca', '19.373625', '-98.851529'),
(7, 'hoy', 'Ixtapaluca centro', '19.314687', '-98.883065');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
