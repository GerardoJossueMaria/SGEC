-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 10.200.9.178
-- Tiempo de generación: 02-06-2022 a las 23:41:00
-- Versión del servidor: 10.5.16-MariaDB-1:10.5.16+maria~stretch-log
-- Versión de PHP: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgec1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id` varchar(220) NOT NULL,
  `ubicacion` varchar(220) NOT NULL,
  `informacion` varchar(220) NOT NULL,
  `aforo` int(100) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `imagen` varchar(80) NOT NULL DEFAULT '''libs/img/upload/aulaDefecto.jpeg'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`id`, `ubicacion`, `informacion`, `aforo`, `habilitado`, `fechaInicio`, `fechaFin`, `imagen`) VALUES
('Aula polivalente', 'Al lado de cafetería', 'Pizarra pequeña, ordenador, proyector, altavoces y sillas', 100, 0, '0000-00-00', '0000-00-00', 'libs/img/upload/IMG-6104.jpg'),
('El bosque', 'Pabellón 1, planta 2ª', 'Mesa, sillas y sofá', 15, 1, '0000-00-00', '0000-00-00', 'libs/img/upload/IMG-6108.jpg'),
('Espacio Erasmus', 'Pabellón 1, planta 2ª', 'Mesas y sillas', 10, 1, '0000-00-00', '0000-00-00', 'libs/img/upload/IMG-6093.jpg'),
('Sala de reuniones (112)', 'Pabellón 1, planta 1ª', 'Pizarra digital , mesas y sillas', 16, 1, '0000-00-00', '0000-00-00', 'libs/img/upload/IMG-6095.jpg'),
('Sala de reuniones (301)', 'Pabellón 3, planta 2ª', 'Mesas y sillas', 5, 1, '0000-00-00', '0000-00-00', 'libs/img/upload/IMG-6102.jpg'),
('Sala de reuniones (311)', 'Pabellón 3, planta 1ª', 'Mesas y sillas', 5, 1, '0000-00-00', '0000-00-00', 'libs/img/upload/IMG-6100.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `valor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `valor`) VALUES
(1, 'Máximo de días siguientes para reservar', '14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`) VALUES
(9, 'Dpto. Actividades Extraescolares'),
(6, 'Dpto. Actividades Físicas'),
(1, 'Dpto. Administración y Gestión'),
(2, 'Dpto. Agrario'),
(8, 'Dpto. Comercio y Marketing'),
(5, 'Dpto. Fol'),
(3, 'Dpto. Informatica'),
(4, 'Dpto. Inglés'),
(7, 'Dpto. Servicios Culturales y a la Comunidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diasnodisponiblesporaula`
--

CREATE TABLE `diasnodisponiblesporaula` (
  `id` int(11) UNSIGNED NOT NULL,
  `idAula` varchar(220) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `diasnodisponiblesporaula`
--

INSERT INTO `diasnodisponiblesporaula` (`id`, `idAula`, `motivo`, `fechaInicio`, `fechaFinal`) VALUES
(4, 'Aula polivalente', 'Reforma', '2022-05-30', '2022-05-31'),
(5, 'Sala de reuniones (112)', 'Mejora', '2022-06-02', '2022-06-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `festivos`
--

CREATE TABLE `festivos` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `festivos`
--

INSERT INTO `festivos` (`id`, `Nombre`, `fechaInicio`, `fechaFinal`) VALUES
(9, 'semana santa', '2022-05-28', '2022-05-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(6) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `departamento` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `nombre`, `departamento`) VALUES
(2, 'DAM 2', 'Dpto. Informatica'),
(3, 'DAW 1', 'Dpto. Informatica'),
(4, 'DAM 1', 'Dpto. Informatica'),
(26, 'DAW 2', 'Dpto. Informatica'),
(27, 'AYF 1', 'Dpto. Administración y Gestión'),
(28, 'AYF 2', 'Dpto. Administración y Gestión'),
(29, 'SMR 1', 'Dpto. Informatica'),
(30, 'SMR 2', 'Dpto. Informatica'),
(31, 'AF', 'Dpto. Actividades Físicas'),
(32, 'TEAS 1', 'Dpto. Actividades Físicas'),
(33, 'TEAS 2', 'Dpto. Actividades Físicas'),
(35, 'AC 2', 'Dpto. Comercio y Marketing'),
(36, 'GVEC 1', 'Dpto. Administración y Gestión'),
(37, 'GVEC 2', 'Dpto. Administración y Gestión'),
(38, 'JyF', 'Dpto. Agrario'),
(39, 'JyF 2', 'Dpto. Agrario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `idAula` varchar(220) NOT NULL,
  `idUsuario` int(11) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `grupo` varchar(255) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `hora` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `idAula`, `idUsuario`, `fecha`, `grupo`, `motivo`, `hora`, `fecha_creacion`) VALUES
(317, 'Espacio Erasmus', 1, '2022-05-24', 'DAM 1', 'charla', '10:30AM - 11:30AM', '2022-05-24 14:37:41'),
(318, 'Aula polivalente', 1, '2022-06-01', 'DAM 1', 'examem', '09:30AM - 10:30AM', '2022-05-25 13:03:48'),
(319, 'Aula polivalente', 1, '2022-05-31', 'DAM 1', 'Charla', '08:30AM - 09:30AM', '2022-05-27 13:39:24'),
(322, 'Sala de reuniones (301)', 501, '2022-05-31', 'DAW 2', 'charla', '10:30AM - 11:30AM', '2022-05-30 18:12:26'),
(323, 'Espacio Erasmus', 525, '2022-05-24', 'DAW 1', 'Examen', '09:30', '2022-05-31 13:38:17'),
(324, 'Espacio Erasmus', 525, '2022-05-25', 'DAW 1', 'Examen', '09:30', '2022-05-31 13:38:32'),
(325, 'Espacio Erasmus', 525, '2022-05-26', 'DAW 1', 'Examen', '09:30', '2022-05-31 13:38:38'),
(326, 'El bosque', 523, '2022-05-16', 'DAW 1', 'examen', '9:30', '2022-05-31 13:59:51'),
(327, 'El bosque', 523, '2022-05-17', 'DAW 1', 'examen', '9:30', '2022-05-31 14:00:01'),
(328, 'El bosque', 523, '2022-05-10', 'DAW 1', 'examen', '9:30', '2022-05-31 14:00:08'),
(329, 'El bosque', 523, '2022-05-05', 'DAW 1', 'examen', '9:30', '2022-05-31 14:00:26'),
(331, 'El bosque', 200, '2022-05-31', 'JyF', 'Examen', '09:30AM - 10:30AM', '2022-05-31 16:41:24'),
(332, 'Aula polivalente', 1, '2022-06-01', 'AC 2', 'www', '10:30AM - 11:30AM', '2022-06-01 12:09:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idDepartamento` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`id`, `idDepartamento`, `nombre`) VALUES
(1, 5, 'Intervención Sociocomunitaria'),
(2, 1, 'Organización y Gestión Comercial'),
(3, 2, 'Procesos de Producción Agraria'),
(4, 3, 'Informática'),
(5, 4, 'Inglés'),
(6, 6, 'Educación Física'),
(7, 1, 'Procesos de Gestión Administrativa'),
(8, 7, 'Procedimientos Sanitarios y Asistenciales'),
(9, 3, 'Sistemas y Aplicaciones Informáticas'),
(10, 5, 'Formación y Orientación Laboral'),
(11, 7, 'Servicios a la Comunidad'),
(12, 8, 'Procesos comerciales'),
(13, 9, 'Música');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `idAula` varchar(220) NOT NULL,
  `idUsuario` int(11) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `grupo` varchar(255) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `hora` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(6) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `crud_roles` tinyint(1) NOT NULL,
  `crud_usuarios` tinyint(1) NOT NULL,
  `crud_aulas` tinyint(1) NOT NULL,
  `crud_reservas` tinyint(1) NOT NULL,
  `crud_grupos` tinyint(1) NOT NULL,
  `crud_festivos` tinyint(1) NOT NULL,
  `estadisticas` tinyint(1) NOT NULL,
  `crud_configuracion` tinyint(1) NOT NULL,
  `crud_dias` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `crud_roles`, `crud_usuarios`, `crud_aulas`, `crud_reservas`, `crud_grupos`, `crud_festivos`, `estadisticas`, `crud_configuracion`, `crud_dias`) VALUES
(1, 'super-admin', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Profesor', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'profesor-tecnico', 0, 0, 0, 1, 0, 0, 0, 0, 0),
(4, 'gestor', 0, 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `primerApellido` varchar(50) NOT NULL,
  `segundoApellido` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `departamento` varchar(250) NOT NULL,
  `contra` varchar(150) NOT NULL,
  `confirmacion` tinyint(1) NOT NULL,
  `rol` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `primerApellido`, `segundoApellido`, `usuario`, `departamento`, `contra`, `confirmacion`, `rol`) VALUES
(1, 'Maria', 'mariagarcia.daw@ciudadescolarfp.es', 'García', 'Valero', 'Maria', 'Dpto. Informatica', 'Maria123456+', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `diasnodisponiblesporaula`
--
ALTER TABLE `diasnodisponiblesporaula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_disponible_aula` (`idAula`);

--
-- Indices de la tabla `festivos`
--
ALTER TABLE `festivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `fk_depart` (`departamento`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `fk_id_departamento` (`idDepartamento`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_reserva_aula` (`idAula`),
  ADD KEY `id_reserva_usuario` (`idUsuario`),
  ADD KEY `fk_grupos` (`grupo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `fk_id_rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `diasnodisponiblesporaula`
--
ALTER TABLE `diasnodisponiblesporaula`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `festivos`
--
ALTER TABLE `festivos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `diasnodisponiblesporaula`
--
ALTER TABLE `diasnodisponiblesporaula`
  ADD CONSTRAINT `id_disponible_aula` FOREIGN KEY (`idAula`) REFERENCES `aulas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `fk_depart` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD CONSTRAINT `fk_id_departamento` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk_grupos` FOREIGN KEY (`grupo`) REFERENCES `grupos` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_reserva_aula` FOREIGN KEY (`idAula`) REFERENCES `aulas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_reserva_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_id_rol` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
