-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2021 a las 03:54:53
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aeropueto_db_2021_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_cliente` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_cliente`, `Nombre`, `Edad`, `Telefono`, `Correo`) VALUES
(1, 'Luis Fernando', 23, '3183761654', 'ceballosl519@gmail.com'),
(2, 'Carlos ', 19, '548498455', 'carlosl519@gmail.com'),
(3, 'Pepito Perez', 22, '123456789', 'Pepito@gmail.com'),
(4, 'Manuel', 20, '987654321', 'Manuel@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `Id_Destino` int(11) NOT NULL,
  `nAeropuerto` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `codCiudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `destino`
--

INSERT INTO `destino` (`Id_Destino`, `nAeropuerto`, `Ciudad`, `codCiudad`) VALUES
(1, 'Manila', 'Manizales', '123'),
(2, 'Tabogo', 'Bogota', '456'),
(3, 'caleño', 'Cali', '147'),
(4, 'NeiraYork', 'Neira', '159');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerario`
--

CREATE TABLE `itinerario` (
  `Id_Itinerario` int(11) NOT NULL,
  `Hora` time NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `itinerario`
--

INSERT INTO `itinerario` (`Id_Itinerario`, `Hora`, `Fecha`) VALUES
(1, '10:00:00', '2021-02-01'),
(2, '11:00:00', '2021-03-01'),
(3, '07:00:00', '2021-03-01'),
(4, '09:00:00', '2021-03-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origen`
--

CREATE TABLE `origen` (
  `Id_Origen` int(11) NOT NULL,
  `nAeropuerto` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `codCiudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `origen`
--

INSERT INTO `origen` (`Id_Origen`, `nAeropuerto`, `Ciudad`, `codCiudad`) VALUES
(1, 'Manila', 'Manizales', '123'),
(2, 'Tabogo', 'Bogota', '456'),
(3, 'caleño', 'Cali', '147'),
(4, 'NeiraYork', 'Neira', '159');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasaje`
--

CREATE TABLE `pasaje` (
  `Id_Pasaje` int(11) NOT NULL,
  `Clase` varchar(50) NOT NULL,
  `Asiento` varchar(50) NOT NULL,
  `Valor` varchar(20) NOT NULL,
  `Cliente_id_Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasaje`
--

INSERT INTO `pasaje` (`Id_Pasaje`, `Clase`, `Asiento`, `Valor`, `Cliente_id_Cliente`) VALUES
(1, 'clase económica', '1', '200000', 1),
(2, 'clase ejecutiva', '10', '300000', 2),
(3, 'Primera clase', '20', '500000', 3),
(4, 'clase intermedia', '30', '280000', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `Id_Vuelo` int(11) NOT NULL,
  `Capacidad` int(11) NOT NULL,
  `modeloAvion` varchar(50) NOT NULL,
  `numeroVuelo` varchar(50) NOT NULL,
  `Itinerario_id_Itinerario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`Id_Vuelo`, `Capacidad`, `modeloAvion`, `numeroVuelo`, `Itinerario_id_Itinerario`) VALUES
(1, 100, 'Boeing 737 MAX-7', '1', 1),
(2, 100, 'Airbus A320neo', '2', 2),
(3, 100, 'Boeing 737 MAX-8', '3', 3),
(4, 100, 'Boeing 737 MAX-9', '4', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`Id_Destino`);

--
-- Indices de la tabla `itinerario`
--
ALTER TABLE `itinerario`
  ADD PRIMARY KEY (`Id_Itinerario`);

--
-- Indices de la tabla `origen`
--
ALTER TABLE `origen`
  ADD PRIMARY KEY (`Id_Origen`);

--
-- Indices de la tabla `pasaje`
--
ALTER TABLE `pasaje`
  ADD PRIMARY KEY (`Id_Pasaje`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`Id_Vuelo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `destino`
--
ALTER TABLE `destino`
  MODIFY `Id_Destino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `itinerario`
--
ALTER TABLE `itinerario`
  MODIFY `Id_Itinerario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `origen`
--
ALTER TABLE `origen`
  MODIFY `Id_Origen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pasaje`
--
ALTER TABLE `pasaje`
  MODIFY `Id_Pasaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  MODIFY `Id_Vuelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
