--- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-10-2023 a las 16:08:43
-- Versión del servidor: 10.5.20-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_botellones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `botellonx_botellones`
--

CREATE TABLE `botellonx_botellones` (
  `Id_Compra` int(11) NOT NULL,
  `Cantidad` int(20) DEFAULT NULL,
  `Total_lts` int(20) DEFAULT NULL,
  `Fecha_Hora` varchar(45) DEFAULT NULL,
  `Cedula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `botellonx_botellones`
--

INSERT INTO `botellonx_botellones` (`Id_Compra`, `Cantidad`, `Total_lts`, `Fecha_Hora`, `Cedula`) VALUES
(1, 1, 1, '19-10-2023 16:04', 29836427),
(2, 3, 100, '18-10-2023 18:22', 30642010),
(3, 11, 40, '18-10-2023 14:22', 33333333),
(4, 2, 12, '18-10-2023 18:11', 22222222);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `botellonx_botellones`
--
ALTER TABLE `botellonx_botellones`
  ADD PRIMARY KEY (`Id_Compra`),
  ADD KEY `Cedula` (`Cedula`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `botellonx_botellones`
--
ALTER TABLE `botellonx_botellones`
  MODIFY `Id_Compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `botellonx_botellones`
--
ALTER TABLE `botellonx_botellones`
  ADD CONSTRAINT `fk_botellonX_Botellones_botellonX_Usuarios` FOREIGN KEY (`Cedula`) REFERENCES `botellonx_clientes` (`Cedula`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
