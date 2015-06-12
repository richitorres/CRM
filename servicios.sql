-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2015 a las 15:50:59
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `servicios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
`ID_Categoria` int(100) NOT NULL,
  `Categoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`ID_Categoria`, `Categoria`) VALUES
(1, 'restaurantes'),
(2, 'Hogar y Electronica'),
(3, 'Artesania y Regalos'),
(4, 'Optica'),
(5, 'Ropa y articulos deportivos'),
(6, 'Ropa y articulos para caballero'),
(7, 'Ropa y articulos para dama'),
(8, 'Zapateria'),
(9, 'Joyeria y relojeria'),
(10, 'Esteticas'),
(11, 'Salud y bienestar'),
(12, 'Entretenimiento y diversion'),
(13, 'Librerias'),
(14, 'Especialidades'),
(15, 'Servicios'),
(16, 'Foot Court'),
(17, 'Cafes'),
(18, 'Helados y sorvetes'),
(19, 'Tiendas Departamentales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE IF NOT EXISTS `comercio` (
`ID_comercio` int(100) NOT NULL,
  `Nom_comercio` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `ID_categoria` int(100) NOT NULL,
  `Direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ID_usuario` int(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`ID_comercio`, `Nom_comercio`, `ID_categoria`, `Direccion`, `Telefono`, `ID_usuario`) VALUES
(1, 'muebles Dico', 2, 'local #215', '99999999', 1),
(2, 'Radio Shark', 2, '#149', '999999999', 1),
(3, 'Arte Egipcio', 3, '#32', '99999', 1),
(4, 'Blue koala', 3, '#122', '099999', 1),
(5, 'Devlyn', 4, '#89', '54554', 1),
(6, 'Optica Espadas', 4, '#645', '45545656', 1),
(7, 'Alexa', 8, '#567', '9898', 1),
(8, 'Flexi', 5, '#503', '122121', 1),
(9, 'Big Ben', 9, '#106', '566565', 1),
(10, 'CitiZen', 9, '#674', '982389', 1),
(11, 'Alejandro Cano', 10, '#409', '8999877', 1),
(12, 'Winnie PuH', 10, '#931', '565656', 1),
(13, 'Clinica Dental', 11, '#672', '99992332', 1),
(14, 'Scrub Store', 11, '#9765', '4554554', 1),
(15, 'Gamers', 12, '#100', '99999999', 1),
(16, 'Cinemex', 12, '#101', '999999', 1),
(17, 'Scarlett Book Store', 13, '#200', '9999999', 1),
(18, 'Dante ', 13, '#300', '009998', 1),
(19, 'Huacho martin', 14, '#600', '9999923', 1),
(20, 'Foto Shop', 14, '#650', '989989889', 1),
(21, 'Bancomer ', 15, '#800', '9988988', 1),
(22, 'Banamex', 15, '#182', '99999563', 1),
(23, 'Burger King', 16, '#981', '09909090', 1),
(24, 'KFC', 16, '#431', '9923332', 1),
(25, 'The italian Coffee Company', 17, '#812', '898989', 1),
(26, 'Segafredo', 17, '#091', '1243434', 1),
(27, 'nestle', 18, '#973', '323223', 1),
(28, 'nutrisa', 18, '#4545', '999349', 1),
(29, 'Restaurante Califormia', 1, '#4545', '89767665', 1),
(30, 'Italianis', 1, '#783', '8989856', 1),
(31, 'SEARS', 19, '#564', '#776', 1),
(32, 'SANBORNS', 19, '#565', '99923', 1),
(33, 'CARUSO', 7, '#454', '8899889', 1),
(34, 'GLAMOUR', 7, '#1221', '888787', 1),
(35, 'LACOSTE', 6, '#112', '766767', 1),
(36, 'Rams Cotton', 6, '#555', '998898', 1),
(37, 'Martin', 5, '#7674', '99978', 1),
(38, 'Mundo deportivo', 5, '#452', '9889893', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE IF NOT EXISTS `encargado` (
`ID_Encargado` int(100) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_P` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_M` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Edad` int(100) NOT NULL,
  `Id_login` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `encargado`
--

INSERT INTO `encargado` (`ID_Encargado`, `Nombre`, `Apellido_P`, `Apellido_M`, `Edad`, `Id_login`) VALUES
(1, 'pablitos', 'Kanul', 'Medina', 34, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gustos`
--

CREATE TABLE IF NOT EXISTS `gustos` (
`ID_gusto` int(100) NOT NULL,
  `Gustos` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `gustos`
--

INSERT INTO `gustos` (`ID_gusto`, `Gustos`) VALUES
(1, 'comida rapida'),
(2, 'videojuegos'),
(3, 'electronica'),
(4, 'musica'),
(5, 'peliculas'),
(6, 'Ropa'),
(7, 'calzado'),
(8, 'mascotas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gustosxusuarios`
--

CREATE TABLE IF NOT EXISTS `gustosxusuarios` (
`ID` int(100) NOT NULL,
  `ID_Usuarios` int(100) NOT NULL,
  `ID_Gustos` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`ID_login` int(100) NOT NULL,
  `User` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `Password` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`ID_login`, `User`, `Password`) VALUES
(1, 'root', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE IF NOT EXISTS `promociones` (
`ID_promocion` int(100) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Fin` date NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ID_comercio` int(100) NOT NULL,
  `imagen` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`ID_promocion`, `Fecha_Inicio`, `Fecha_Fin`, `Descripcion`, `ID_comercio`, `imagen`) VALUES
(1, '2015-05-20', '2015-05-30', 'Balones de futbol', 8, 'http://www.futbolconbotas.com/images/balon-nike-futbol-sala-2014-1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`ID_User` int(100) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Sexo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Edad` int(11) NOT NULL,
  `Fecha_nacimiento` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_registro` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_User`, `Nombre`, `Telefono`, `Email`, `Sexo`, `Edad`, `Fecha_nacimiento`, `Fecha_registro`) VALUES
(1, 'jeen kevin', '999999', 'prueba@hotmail.com', 'masculino', 21, '11/09/93', '20/05/15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
 ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
 ADD PRIMARY KEY (`ID_comercio`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
 ADD PRIMARY KEY (`ID_Encargado`);

--
-- Indices de la tabla `gustos`
--
ALTER TABLE `gustos`
 ADD PRIMARY KEY (`ID_gusto`);

--
-- Indices de la tabla `gustosxusuarios`
--
ALTER TABLE `gustosxusuarios`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`ID_login`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
 ADD PRIMARY KEY (`ID_promocion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
MODIFY `ID_Categoria` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
MODIFY `ID_comercio` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `encargado`
--
ALTER TABLE `encargado`
MODIFY `ID_Encargado` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `gustos`
--
ALTER TABLE `gustos`
MODIFY `ID_gusto` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `gustosxusuarios`
--
ALTER TABLE `gustosxusuarios`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
MODIFY `ID_login` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
MODIFY `ID_promocion` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `ID_User` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
