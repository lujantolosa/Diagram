-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-04-2023 a las 18:26:24
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educación`
--

DROP TABLE IF EXISTS `educación`;
CREATE TABLE IF NOT EXISTS `educación` (
  `id` int NOT NULL,
  `actual` tinyint DEFAULT NULL,
  `fecha de inicio` date DEFAULT NULL,
  `fecha final` date DEFAULT NULL,
  `institución` varchar(45) DEFAULT NULL,
  `Persona_id` int NOT NULL,
  `cursos` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`Persona_id`),
  KEY `fk_Educación_Persona1_idx` (`Persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hard & soft skills`
--

DROP TABLE IF EXISTS `hard & soft skills`;
CREATE TABLE IF NOT EXISTS `hard & soft skills` (
  `id` int NOT NULL,
  `denominación` varchar(200) DEFAULT NULL,
  `nivel` varchar(200) DEFAULT NULL,
  `Persona_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Hard & Soft skills_Persona1_idx` (`Persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `id` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `fecha de nacimiento` date DEFAULT NULL,
  `domicilio` varchar(45) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `sobre_mi` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
CREATE TABLE IF NOT EXISTS `proyectos` (
  `id` int NOT NULL,
  `actual` tinyint DEFAULT NULL,
  `fecha de inicio` date DEFAULT NULL,
  `fecha de fin` date DEFAULT NULL,
  `descripción` varchar(200) DEFAULT NULL,
  `Persona_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_proyectos_Persona1_idx` (`Persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo`
--

DROP TABLE IF EXISTS `trabajo`;
CREATE TABLE IF NOT EXISTS `trabajo` (
  `id` int NOT NULL,
  `actual` tinyint DEFAULT NULL,
  `fecha de inicio` date DEFAULT NULL,
  `fecha de fin` date DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `descripción` varchar(200) DEFAULT NULL,
  `Otros trabajos` varchar(200) DEFAULT NULL,
  `Persona_id` int NOT NULL,
  PRIMARY KEY (`id`,`Persona_id`),
  KEY `fk_Trabajo_Persona_idx` (`Persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educación`
--
ALTER TABLE `educación`
  ADD CONSTRAINT `fk_Educación_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `hard & soft skills`
--
ALTER TABLE `hard & soft skills`
  ADD CONSTRAINT `fk_Hard & Soft skills_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_proyectos_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `trabajo`
--
ALTER TABLE `trabajo`
  ADD CONSTRAINT `fk_Trabajo_Persona` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
