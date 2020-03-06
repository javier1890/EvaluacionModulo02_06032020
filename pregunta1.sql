-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2020 a las 16:44:44
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `automotora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int(10) NOT NULL,
  `nombreEmpleado` varchar(20) NOT NULL,
  `fechaIngreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `nombreEmpleado`, `fechaIngreso`) VALUES
(1, 'mecanico', '2016-09-25'),
(2, 'electricista', '2017-10-23'),
(3, 'mecanico', '2010-05-20'),
(4, 'pintor', '2018-10-25'),
(5, 'mecanico', '2010-05-25'),
(6, 'auxiliar', '2017-10-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestacion_servicio`
--

CREATE TABLE `prestacion_servicio` (
  `idPrestacionServicio` int(10) NOT NULL,
  `idServicio` int(10) NOT NULL,
  `idempleado` int(10) NOT NULL,
  `idVehiculo` int(10) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `idServicio` int(10) NOT NULL,
  `nombreServicio` varchar(20) NOT NULL,
  `valorServicio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`idServicio`, `nombreServicio`, `valorServicio`) VALUES
(1, 'revision tecnica', 30000),
(2, 'cambio de aceite', 10000),
(3, 'cambio de neumaticos', 36000),
(4, 'mantencion basica', 50000),
(5, 'desabolladura', 200000),
(6, 'alineamiento de moto', 60000),
(8, 'cambio de repuestos', 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `idVehiculo` varchar(10) NOT NULL,
  `marcaVehiculo` varchar(20) NOT NULL,
  `modeloVehiculo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`idVehiculo`, `marcaVehiculo`, `modeloVehiculo`) VALUES
('1JOOJP', 'Toyota', 'RAV4 sedan'),
('22WKJW', 'Honda', 'Blue3'),
('4JWKJW', 'Ferrari', 'coupe 234X'),
('9IWZZZ', 'Chevrolet', 'Corsa'),
('9JWRJ0', 'Nissan', 'sedan deltrax 34'),
('OJTKJU', 'Mitsubishi', 'Tucson 4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `prestacion_servicio`
--
ALTER TABLE `prestacion_servicio`
  ADD PRIMARY KEY (`idPrestacionServicio`),
  ADD KEY `idServicio` (`idServicio`),
  ADD KEY `idempleado` (`idempleado`),
  ADD KEY `idVehiculo` (`idVehiculo`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`idServicio`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`idVehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idEmpleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `idServicio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
