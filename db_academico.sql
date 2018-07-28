-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-07-2018 a las 01:16:04
-- Versión del servidor: 5.6.38
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `db_academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo_id` int(11) DEFAULT NULL,
  `horas_practicas` int(11) DEFAULT NULL,
  `horas_teoricas` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `horas_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `codigo`, `nombre`, `periodo_id`, `horas_practicas`, `horas_teoricas`, `created_at`, `updated_at`, `descripcion`, `horas_total`) VALUES
(1, 'PRG1-101', 'Programación de Sistemas I', 1, 0, 0, '2018-05-15 15:47:25', '2018-05-24 01:20:11', NULL, 0),
(2, 'HSM-102', 'Historia de Sociedades del Mundo', 1, 0, 0, '2018-05-15 15:48:11', '2018-05-24 00:43:36', NULL, 0),
(3, 'TPG-102', 'Taller de Programación 1', 1, 0, 0, '2018-05-15 15:49:19', '2018-05-24 00:43:28', NULL, 0),
(5, 'INT-104', 'Ingles Técnico', 1, 0, 0, '2018-05-15 19:00:58', '2018-05-24 00:42:44', NULL, 0),
(6, 'MAT-100', 'Matemática Comercial', 1, 0, 0, '2018-05-24 00:31:15', '2018-05-24 00:42:35', NULL, 0),
(7, 'IDO-100', 'Idioma Originario', 1, 0, 0, '2018-05-24 00:32:08', '2018-05-24 00:42:25', NULL, 0),
(8, 'IGC-100', 'Ingles Comercial', 1, 0, 0, '2018-05-24 00:32:43', '2018-05-24 00:42:17', NULL, 0),
(9, 'LEG-100', 'Legislacion DOc. Mercantiles y Derecho Laboral', 1, 0, 0, '2018-05-24 00:34:15', '2018-05-24 00:42:09', NULL, 0),
(10, 'RYC-100', 'Redacción y Correspondencia I', 1, 0, 0, '2018-05-24 00:35:01', '2018-05-24 00:42:02', NULL, 0),
(11, 'INA-103', 'Informática Aplicada', 1, 0, 0, '2018-05-24 01:02:45', '2018-05-24 01:02:45', NULL, 0),
(12, 'DBD1-2014', 'Base de Datos I', 1, 0, 0, '2018-05-24 01:05:16', '2018-05-24 01:05:16', NULL, 0),
(13, 'EST-208', 'Estadistica', 1, 0, 0, '2018-05-24 01:07:46', '2018-05-24 01:07:46', NULL, 0),
(14, 'TSO-105', 'Taller de Sistemas Operativos', 1, 0, 0, '2018-05-24 01:08:23', '2018-05-24 01:08:23', NULL, 0),
(15, 'CAP-001', 'Curso practico de Laravel 5.6', 1, 0, 0, '2018-05-31 22:31:28', '2018-05-31 22:31:28', 'Curso practico de laravel 5.6 - Crea tu primer Proyecto Web, con las herremientas de Voyager, Bootstrap, Ajax.', 0),
(16, 'CAP-900', 'Curso de Python 3.0', 3, 0, 0, '2018-06-05 22:04:30', '2018-06-05 22:04:30', 'Curso de Capacitación en Programación.', 0),
(17, 'CAP-005', 'Ley Tributaria', 3, 0, 0, '2018-06-08 16:26:05', '2018-06-08 16:26:05', 'Capacitación al personal del Municipio Trinitario', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `nivel_id`, `user_id`, `created_at`, `updated_at`, `descripcion`) VALUES
(1, 'Sistemas Informaticos', 1, NULL, '1970-01-01 00:00:01', '2018-05-24 01:04:03', NULL),
(2, 'Secretariado Administrativo', 1, NULL, '1970-01-01 00:00:02', '2018-05-15 15:52:23', NULL),
(3, 'Operador de Computadoras', 1, NULL, '1970-01-01 00:00:03', '2018-06-06 20:54:00', NULL),
(4, 'Dactilografía Computarizada', 1, NULL, '1970-01-01 00:00:04', '2018-06-06 20:53:43', NULL),
(5, 'Mantenimiento de Computadoras', 1, NULL, '1970-01-01 00:00:05', '2018-06-06 20:53:30', NULL),
(6, 'Capacitación', 3, NULL, '2018-05-31 22:28:53', '2018-06-06 20:52:10', 'Cursos, Capacitaciones,  Talleres'),
(7, 'Taller', 3, NULL, '2018-06-08 13:25:05', '2018-06-08 13:28:26', 'Taller practico'),
(8, 'Seminario', 3, NULL, '2018-06-08 13:28:13', '2018-06-08 13:28:13', 'Seminario o Conferencia.'),
(9, 'Curso', 3, NULL, '2018-06-08 13:51:51', '2018-06-08 16:21:03', 'Cursos Específicos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras_asignaturas`
--

CREATE TABLE `carreras_asignaturas` (
  `id` int(10) UNSIGNED NOT NULL,
  `carrera_id` int(11) DEFAULT NULL,
  `asignatura_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carreras_asignaturas`
--

INSERT INTO `carreras_asignaturas` (`id`, `carrera_id`, `asignatura_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 2, 6, NULL, NULL),
(5, 2, 7, NULL, NULL),
(6, 2, 8, NULL, NULL),
(7, 2, 9, NULL, NULL),
(8, 2, 10, NULL, NULL),
(9, 1, 5, NULL, NULL),
(11, 1, 3, NULL, NULL),
(12, 1, 11, NULL, NULL),
(13, 1, 12, NULL, NULL),
(14, 1, 13, NULL, NULL),
(15, 1, 14, NULL, NULL),
(20, 9, 15, NULL, NULL),
(22, 6, 17, NULL, NULL),
(23, 9, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(57, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 8, 'key', 'text', 'Key', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 8, 'table_name', 'text', 'Table Name', 0, 1, 1, 1, 1, 1, NULL, 3),
(60, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(61, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(62, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(63, 10, 'nombres', 'text', 'Nombres', 1, 1, 1, 1, 1, 1, NULL, 2),
(64, 10, 'apellidos_paterno', 'text', 'Apellidos Paterno', 1, 1, 1, 1, 1, 1, NULL, 3),
(65, 10, 'apellidos_materno', 'text', 'Apellidos Materno', 1, 1, 1, 1, 1, 1, NULL, 4),
(66, 10, 'documento_id', 'text', 'Documento Id', 1, 0, 1, 1, 1, 1, NULL, 5),
(67, 10, 'num_documento', 'text', 'Num Documento', 1, 1, 1, 1, 1, 1, NULL, 6),
(68, 10, 'telefono', 'text', 'Telefono', 0, 1, 1, 1, 1, 1, NULL, 7),
(69, 10, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(70, 10, 'direccion', 'text_area', 'Direccion', 0, 0, 1, 1, 1, 1, NULL, 9),
(71, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 10),
(72, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(73, 10, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, NULL, 12),
(74, 10, 'sexualidad_id', 'text', 'Sexualidad Id', 0, 0, 0, 0, 0, 0, NULL, 13),
(75, 10, 'habilitado', 'checkbox', 'Habilitado', 0, 0, 0, 0, 0, 0, NULL, 14),
(76, 10, 'telefono2', 'text', 'Telefono2', 0, 0, 1, 1, 1, 1, NULL, 15),
(77, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(78, 11, 'num_mens', 'text', 'Num Mens', 0, 1, 1, 1, 1, 1, NULL, 2),
(79, 11, 'monto', 'text', 'Monto', 0, 1, 1, 1, 1, 1, NULL, 3),
(80, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(81, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(82, 11, 'fecha_inicio', 'text', 'Fecha Inicio', 0, 1, 1, 1, 1, 1, NULL, 6),
(83, 11, 'fecha_final', 'text', 'Fecha Final', 0, 1, 1, 1, 1, 1, NULL, 7),
(84, 11, 'estado', 'checkbox', 'Estado', 0, 0, 0, 0, 0, 0, NULL, 8),
(85, 11, 'observaciones', 'text_area', 'Observaciones', 0, 0, 1, 1, 1, 1, NULL, 9),
(86, 11, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, NULL, 10),
(87, 11, 'fecha_pago', 'text', 'Fecha Pago', 0, 1, 1, 1, 1, 1, NULL, 11),
(88, 11, 'inscripcion_id', 'text', 'Inscripcion Id', 0, 0, 0, 0, 0, 0, NULL, 12),
(89, 11, 'recibo_id', 'text', 'Recibo Id', 0, 0, 1, 1, 1, 1, NULL, 13),
(90, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(91, 12, 'numero', 'text', 'Numero', 0, 1, 1, 0, 0, 0, NULL, 2),
(92, 12, 'concepto', 'text_area', 'Concepto', 0, 1, 1, 1, 1, 1, NULL, 3),
(93, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(94, 12, 'monto_numeral', 'text', 'Monto Numeral', 0, 1, 1, 1, 1, 1, NULL, 5),
(95, 12, 'monto_literal', 'text', 'Monto Literal', 0, 0, 1, 1, 0, 0, NULL, 6),
(96, 12, 'fecha', 'text', 'Fecha', 0, 1, 1, 1, 1, 1, NULL, 7),
(97, 12, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, NULL, 8),
(98, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 9),
(99, 12, 'estudiante_id', 'text', 'Estudiante Id', 0, 0, 0, 0, 0, 0, NULL, 10),
(100, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(101, 13, 'fecha_insc', 'text', 'Fecha Insc', 0, 1, 1, 1, 1, 1, NULL, 2),
(102, 13, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, NULL, 3),
(103, 13, 'carrera_id', 'text', 'Carrera Id', 0, 0, 1, 1, 1, 1, NULL, 4),
(104, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 5),
(105, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(106, 13, 'fecha_inicio', 'text', 'Fecha Inicio', 0, 1, 1, 1, 1, 1, NULL, 7),
(107, 13, 'estudiante_id', 'text', 'Estudiante Id', 0, 0, 1, 1, 1, 1, NULL, 8),
(108, 13, 'horario_id', 'text', 'Horario Id', 0, 0, 1, 1, 1, 1, NULL, 9),
(109, 13, 'observaciones', 'text_area', 'Observaciones', 0, 0, 1, 1, 1, 1, NULL, 10),
(110, 13, 'monto', 'text', 'Monto', 0, 1, 1, 1, 1, 1, NULL, 11),
(111, 13, 'tipo_id', 'text', 'Tipo Id', 0, 0, 1, 1, 1, 1, NULL, 12),
(112, 13, 'estado', 'checkbox', 'Estado', 0, 0, 0, 0, 0, 0, NULL, 13),
(113, 13, 'concluido', 'checkbox', 'Concluido', 0, 0, 1, 1, 1, 1, NULL, 14),
(114, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(115, 14, 'fecha_pago', 'text', 'Fecha Pago', 0, 1, 1, 1, 1, 1, NULL, 2),
(116, 14, 'mensualidad_id', 'text', 'Mensualidad Id', 0, 0, 1, 1, 1, 1, NULL, 3),
(117, 14, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, NULL, 4),
(118, 14, 'monto', 'text', 'Monto', 0, 1, 1, 1, 1, 1, NULL, 5),
(119, 14, 'observaciones', 'text_area', 'Observaciones', 0, 0, 1, 1, 1, 1, NULL, 6),
(120, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 7),
(121, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(122, 14, 'recibo_id', 'text', 'Recibo Id', 0, 0, 1, 1, 1, 1, NULL, 9),
(123, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(124, 15, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(125, 15, 'nivel_id', 'text', 'Nivel Id', 0, 0, 1, 1, 1, 1, NULL, 3),
(126, 15, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, NULL, 4),
(127, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 5),
(128, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(129, 15, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, NULL, 7),
(130, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(131, 16, 'codigo', 'text', 'Codigo', 0, 1, 1, 1, 1, 1, NULL, 2),
(132, 16, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 3),
(133, 16, 'periodo_id', 'text', 'Periodo Id', 0, 0, 1, 1, 1, 1, NULL, 4),
(134, 16, 'horas_practicas', 'text', 'Horas Practicas', 0, 1, 1, 1, 1, 1, NULL, 5),
(135, 16, 'horas_teoricas', 'text', 'Horas Teoricas', 0, 1, 1, 1, 1, 1, NULL, 6),
(136, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 7),
(137, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(138, 16, 'descripcion', 'text_area', 'Descripcion', 0, 0, 1, 1, 1, 1, NULL, 9),
(139, 16, 'horas_total', 'text', 'Horas Total', 0, 1, 1, 1, 1, 1, NULL, 10),
(140, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(141, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 2),
(142, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 3),
(143, 17, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 4),
(144, 17, 'hora_inicio', 'text', 'Hora Inicio', 0, 1, 1, 1, 1, 1, NULL, 5),
(145, 17, 'hora_fin', 'text', 'Hora Fin', 0, 1, 1, 1, 1, 1, NULL, 6),
(146, 17, 'lunes', 'checkbox', 'Lunes', 0, 0, 1, 1, 1, 1, NULL, 7),
(147, 17, 'martes', 'checkbox', 'Martes', 0, 0, 1, 1, 1, 1, NULL, 8),
(148, 17, 'miercoles', 'checkbox', 'Miercoles', 0, 0, 1, 1, 1, 1, NULL, 9),
(149, 17, 'jueves', 'checkbox', 'Jueves', 0, 0, 1, 1, 1, 1, NULL, 10),
(150, 17, 'viernes', 'checkbox', 'Viernes', 0, 0, 1, 1, 1, 1, NULL, 11),
(151, 17, 'sabado', 'checkbox', 'Sabado', 0, 0, 1, 1, 1, 1, NULL, 12),
(152, 17, 'habilitado', 'checkbox', 'Habilitado', 0, 0, 1, 1, 1, 1, NULL, 13),
(153, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(154, 18, 'nombres', 'text', 'Nombres', 0, 1, 1, 1, 1, 1, NULL, 2),
(155, 18, 'apellidos', 'text', 'Apellidos', 0, 1, 1, 1, 1, 1, NULL, 3),
(156, 18, 'profesion_id', 'text', 'Profesion Id', 0, 0, 1, 1, 1, 1, NULL, 4),
(157, 18, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 5),
(158, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(159, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(160, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(161, 19, 'fecha', 'text', 'Fecha', 0, 1, 1, 1, 1, 1, NULL, 2),
(162, 19, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(163, 19, 'asignatura_id', 'text', 'Asignatura Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(164, 19, 'observacion', 'text', 'Observacion', 0, 1, 1, 1, 1, 1, NULL, 5),
(165, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(166, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(167, 19, 'educador_id', 'text', 'Educador Id', 0, 1, 1, 1, 1, 1, NULL, 8),
(168, 19, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, NULL, 9),
(169, 19, 'horario_id', 'text', 'Horario Id', 0, 1, 1, 1, 1, 1, NULL, 10),
(170, 19, 'nota_estado', 'text', 'Nota Estado', 0, 1, 1, 1, 1, 1, NULL, 11),
(171, 10, 'estudiante_belongsto_sexualidade_relationship', 'relationship', 'sexualidades', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sexualidade\",\"table\":\"sexualidades\",\"type\":\"belongsTo\",\"column\":\"sexualidad_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(172, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(173, 20, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(174, 20, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(175, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(176, 10, 'estudiante_belongsto_documento_relationship', 'relationship', 'documentos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Documento\",\"table\":\"documentos\",\"type\":\"belongsTo\",\"column\":\"documento_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(177, 11, 'mensualidade_belongsto_recibo_relationship', 'relationship', 'recibos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Recibo\",\"table\":\"recibos\",\"type\":\"belongsTo\",\"column\":\"recibo_id\",\"key\":\"id\",\"label\":\"numero\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(178, 13, 'inscripcione_belongsto_estudiante_relationship', 'relationship', 'estudiantes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Estudiante\",\"table\":\"estudiantes\",\"type\":\"belongsTo\",\"column\":\"estudiante_id\",\"key\":\"id\",\"label\":\"num_documento\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(179, 13, 'inscripcione_belongsto_horario_relationship', 'relationship', 'horarios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Horario\",\"table\":\"horarios\",\"type\":\"belongsTo\",\"column\":\"horario_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(180, 13, 'inscripcione_belongsto_carrera_relationship', 'relationship', 'carreras', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Carrera\",\"table\":\"carreras\",\"type\":\"belongsTo\",\"column\":\"carrera_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(181, 14, 'pago_belongsto_mensualidade_relationship', 'relationship', 'mensualidades', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Mensualidade\",\"table\":\"mensualidades\",\"type\":\"belongsTo\",\"column\":\"mensualidad_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(182, 14, 'pago_belongsto_recibo_relationship', 'relationship', 'recibos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Recibo\",\"table\":\"recibos\",\"type\":\"belongsTo\",\"column\":\"recibo_id\",\"key\":\"id\",\"label\":\"numero\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(183, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(184, 22, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
(185, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(186, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(187, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(188, 23, 'programacion_id', 'text', 'Programacion Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(189, 23, 'nota', 'text', 'Nota', 0, 1, 1, 1, 1, 1, NULL, 3),
(190, 23, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(191, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(192, 23, 'insc_id', 'text', 'Insc Id', 0, 0, 0, 0, 0, 0, NULL, 6),
(193, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(194, 24, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(195, 24, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(196, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(197, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(198, 25, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(199, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(200, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(201, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(202, 26, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
(203, 26, 'descripcion', 'text_area', 'Descripcion', 0, 0, 1, 1, 1, 1, NULL, 3),
(204, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(205, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(206, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(207, 27, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(208, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(209, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(210, 15, 'carrera_belongsto_nivele_relationship', 'relationship', 'niveles', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Nivele\",\"table\":\"niveles\",\"type\":\"belongsTo\",\"column\":\"nivel_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(211, 16, 'asignatura_belongsto_periodo_relationship', 'relationship', 'periodos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Periodo\",\"table\":\"periodos\",\"type\":\"belongsTo\",\"column\":\"periodo_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(212, 15, 'carrera_belongstomany_asignatura_relationship', 'relationship', 'asignaturas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Asignatura\",\"table\":\"asignaturas\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"carreras_asignaturas\",\"pivot\":\"1\",\"taggable\":null}', 9),
(213, 18, 'educadore_belongsto_profesione_relationship', 'relationship', 'profesiones', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Profesione\",\"table\":\"profesiones\",\"type\":\"belongsTo\",\"column\":\"profesion_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(214, 13, 'inscripcione_belongsto_tipo_relationship', 'relationship', 'tipos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Tipo\",\"table\":\"tipos\",\"type\":\"belongsTo\",\"column\":\"tipo_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"asignaturas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-07-20 18:48:26', '2018-07-20 18:48:26'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-20 18:48:26', '2018-07-20 18:48:26'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-20 18:48:26', '2018-07-20 18:48:26'),
(8, 'permissions', 'permissions', 'Permission', 'Permissions', NULL, 'App\\Permission', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-20 19:36:37', '2018-07-20 19:36:37'),
(10, 'estudiantes', 'estudiantes', 'Estudiante', 'Estudiantes', 'voyager-group', 'App\\Estudiante', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 07:43:12', '2018-07-21 07:44:10'),
(11, 'mensualidades', 'mensualidades', 'Mensualidade', 'Mensualidades', 'voyager-logbook', 'App\\Mensualidade', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 07:52:51', '2018-07-21 07:52:51'),
(12, 'recibos', 'recibos', 'Recibo', 'Recibos', 'voyager-receipt', 'App\\Recibo', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 07:57:12', '2018-07-21 07:58:05'),
(13, 'inscripciones', 'inscripciones', 'Inscripcione', 'Inscripciones', 'voyager-puzzle', 'App\\Inscripcione', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 08:02:08', '2018-07-21 08:02:08'),
(14, 'pagos', 'pagos', 'Pago', 'Pagos', 'voyager-credit-cards', 'App\\Pago', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 08:04:52', '2018-07-21 08:04:52'),
(15, 'carreras', 'carreras', 'Carrera', 'Carreras', 'voyager-study', 'App\\Carrera', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 08:11:51', '2018-07-21 08:11:51'),
(16, 'asignaturas', 'asignaturas', 'Asignatura', 'Asignaturas', 'voyager-wallet', 'App\\Asignatura', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 08:13:50', '2018-07-21 08:13:50'),
(17, 'horarios', 'horarios', 'Horario', 'Horarios', 'voyager-calendar', 'App\\Horario', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 08:15:31', '2018-07-21 08:15:31'),
(18, 'educadores', 'educadores', 'Educadore', 'Educadores', 'voyager-github-icon', 'App\\Educadore', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 08:22:02', '2018-07-21 08:22:02'),
(19, 'programaciones', 'programaciones', 'Programacione', 'Programaciones', NULL, 'App\\Programacione', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-24 12:15:00', '2018-07-24 12:15:00'),
(20, 'documentos', 'documentos', 'Documento', 'Documentos', NULL, 'App\\Documento', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-24 20:55:29', '2018-07-24 20:55:29'),
(22, 'niveles', 'niveles', 'Nivele', 'Niveles', NULL, 'App\\Nivele', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-24 21:42:55', '2018-07-24 21:42:55'),
(23, 'notas', 'notas', 'Nota', 'Notas', NULL, 'App\\Nota', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-24 21:43:55', '2018-07-24 21:43:55'),
(24, 'periodos', 'periodos', 'Periodo', 'Periodos', NULL, 'App\\Periodo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-24 21:45:18', '2018-07-24 21:45:18'),
(25, 'profesiones', 'profesiones', 'Profesione', 'Profesiones', NULL, 'App\\Profesione', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-24 21:46:10', '2018-07-24 21:46:10'),
(26, 'sexualidades', 'sexualidades', 'Sexualidade', 'Sexualidades', NULL, 'App\\Sexualidade', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-24 21:46:59', '2018-07-24 21:46:59'),
(27, 'tipos', 'tipos', 'Tipo', 'Tipos', NULL, 'App\\Tipo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-24 21:47:38', '2018-07-24 21:47:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Carnet de Identidad', '2018-05-15 01:42:54', '2018-05-15 01:42:54'),
(2, 'Certificado de Nacimiento', '2018-05-15 01:43:06', '2018-05-15 01:43:06'),
(3, 'Libreta de Servicio Militar', '2018-05-15 01:43:21', '2018-05-15 01:43:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educadores`
--

CREATE TABLE `educadores` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profesion_id` int(11) DEFAULT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `educadores`
--

INSERT INTO `educadores` (`id`, `nombres`, `apellidos`, `profesion_id`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Abel', 'Salvatierra Mendez', 1, 'educadores\\May2018\\P9KiuIsNEGBOT5r7vgEi.jpg', '2018-05-17 03:22:00', '2018-05-23 20:06:49'),
(2, 'Jose Luis', 'Lopez Orellana', 3, 'educadores\\May2018\\asuI4nGNzuYIhH5zKW7s.jpg', '2018-05-23 20:04:00', '2018-05-23 22:29:03'),
(3, 'Alvaro', 'Guzman Sanabria', 1, 'educadores\\May2018\\YdTutrst1N7rOHE2sNiW.jpg', '2018-05-24 01:16:34', '2018-05-24 01:16:34'),
(4, 'Alejandra', 'Caballero Lopez', 3, 'educadores\\May2018\\rIBZPISPFg2Wt80i95d9.jpg', '2018-05-28 05:40:19', '2018-05-28 05:40:19'),
(5, 'Penelope', 'Landivar Cuellar', 3, 'educadores\\May2018\\vu3tg2UOobL70JDmWc5V.jpg', '2018-05-28 05:42:55', '2018-05-28 05:42:55'),
(6, 'Wilfredo', 'Santos Calles', 1, 'educadores\\July2018\\b2tXRNnJMrrOr3jZy7Z4.jpg', '2018-05-28 19:30:02', '2018-07-27 13:27:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos_paterno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos_materno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `documento_id` int(11) NOT NULL,
  `num_documento` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sexualidad_id` int(11) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '1',
  `telefono2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombres`, `apellidos_paterno`, `apellidos_materno`, `documento_id`, `num_documento`, `telefono`, `avatar`, `direccion`, `created_at`, `updated_at`, `user_id`, `sexualidad_id`, `habilitado`, `telefono2`) VALUES
(11, 'marco', 'flores', 'perez', 1, '234234 BENI', '234234', NULL, 'Calle', '2018-07-24 02:32:49', '2018-07-24 02:32:49', 1, 1, 1, '234234'),
(12, 'maria', 'cruz', 'lopez', 1, '234234 BENI', '234234', 'estudiantes\\July2018\\Ay4nTu79yYdxVzD6TW7s.jpg', 'Calle', '2018-07-24 02:58:00', '2018-07-24 21:14:33', 1, 1, 1, '234'),
(13, 'luis miguel', 'correa', 'soliz', 1, '34543 BENI', '345345', 'estudiantes\\July2018\\9nsTOorpg86WY9o3d6Rz.jpg', 'calle', '2018-07-24 03:52:00', '2018-07-24 21:11:59', 1, 1, 1, '34534534'),
(14, 'rolando', 'suarez', 'rodrigues', 1, '345345 BENI', '345345', 'estudiantes\\July2018\\2s1FW3qqJxMXK0PhpFnn.jpg', 'calle', '2018-07-24 03:55:00', '2018-07-24 20:59:46', 1, 1, 1, '345345'),
(15, 'cesar', 'lopez', 'suarez', 1, '234234 BENI', '234234', NULL, 'Calle', '2018-07-25 13:06:28', '2018-07-25 13:06:28', 1, 1, 1, '234234'),
(16, 'Margarita', 'Viruez', 'soliz', 1, '324323430 BENI', '233334', NULL, 'Calle', '2018-07-25 13:16:42', '2018-07-25 13:16:42', 1, 1, 1, '323234'),
(17, 'Aldo', 'pepenoli', 'binto', 1, '2342332 BENI', '234234', NULL, 'Calle', '2018-07-25 18:59:49', '2018-07-25 18:59:49', 1, 1, 1, NULL),
(18, 'Dania', 'Sanches', 'molina', 1, '345345 BENI', '345345', NULL, 'Calle', '2018-07-25 20:33:55', '2018-07-25 20:33:55', 1, 1, 1, '3345345'),
(19, 'Tatiana', 'Cuellar', 'Mendez', 1, '234234 BENI', '234234', NULL, 'Calle', '2018-07-25 20:38:27', '2018-07-25 20:38:27', 1, 2, 1, NULL),
(20, 'jary', 'barvery', 'jordan', 1, '234234 BENI', '234234234', NULL, 'calle', '2018-07-25 21:03:00', '2018-07-27 13:58:32', 1, 1, 1, NULL),
(21, 'Kery', 'Teran', 'gonzales', 1, '234234 BENI', '234234', NULL, 'Calle', '2018-07-27 14:09:44', '2018-07-27 14:09:44', 1, 1, 1, NULL),
(22, 'Yesica', 'Paniagua', 'cordoba', 1, '234234 BENI', '234234', NULL, 'Calle', '2018-07-27 14:53:33', '2018-07-27 14:53:33', 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `lunes` binary(1) DEFAULT NULL,
  `martes` binary(1) DEFAULT NULL,
  `miercoles` binary(1) DEFAULT NULL,
  `jueves` binary(1) DEFAULT NULL,
  `viernes` binary(1) DEFAULT NULL,
  `sabado` binary(1) DEFAULT NULL,
  `habilitado` binary(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `created_at`, `updated_at`, `nombre`, `hora_inicio`, `hora_fin`, `lunes`, `martes`, `miercoles`, `jueves`, `viernes`, `sabado`, `habilitado`) VALUES
(1, '2018-05-14 22:08:00', '2018-06-08 13:30:33', 'Mañana - Sala 1', '08:59:00', '10:00:00', 0x31, 0x31, 0x31, 0x31, 0x31, 0x30, 0x31),
(2, '2018-05-14 22:09:00', '2018-06-08 13:31:06', 'Mañana - Sala 1', '10:00:00', '00:00:00', 0x31, 0x31, 0x31, 0x31, 0x31, 0x30, 0x31),
(3, '2018-05-16 20:38:00', '2018-06-08 13:32:01', 'Tarde - Sala 1', '14:00:00', '16:00:00', 0x31, 0x31, 0x31, 0x31, 0x31, 0x30, 0x31),
(4, '2018-05-24 02:03:00', '2018-06-08 13:32:26', 'Tarde - Sala 1', '16:00:00', '18:00:00', 0x31, 0x31, 0x31, 0x31, 0x31, 0x30, 0x31),
(5, '2018-05-27 01:54:00', '2018-06-08 13:32:50', 'Noche - Sala 1', '19:00:00', '20:00:00', 0x31, 0x31, 0x31, 0x31, 0x31, 0x30, 0x31),
(6, '2018-05-31 22:33:00', '2018-06-08 13:33:05', 'Noche - Sala 1', '20:00:00', '22:00:00', 0x31, 0x31, 0x31, 0x31, 0x31, 0x30, 0x31),
(7, '2018-06-08 13:37:00', '2018-06-08 13:41:00', 'Mañana - Sala 2', '08:00:00', '10:00:00', 0x31, 0x31, 0x31, 0x31, 0x31, 0x30, 0x30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_insc`
--

CREATE TABLE `imagenes_insc` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `insc_id` int(11) DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_prog`
--

CREATE TABLE `imagenes_prog` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `prog_id` int(11) DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci,
  `descripcion` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_insc` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `carrera_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `estudiante_id` int(11) DEFAULT NULL,
  `horario_id` int(11) DEFAULT NULL,
  `observaciones` text COLLATE utf8_unicode_ci,
  `monto` double DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `estado` binary(1) DEFAULT '1',
  `concluido` binary(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id`, `fecha_insc`, `user_id`, `carrera_id`, `created_at`, `updated_at`, `fecha_inicio`, `estudiante_id`, `horario_id`, `observaciones`, `monto`, `tipo_id`, `estado`, `concluido`) VALUES
(11, '2018-07-23 22:32:49', 1, 1, '2018-07-24 02:32:49', '2018-07-24 02:32:49', '2018-07-23', 11, 1, 'pago parcial por concepto de mensualidad #1', 250, 1, 0x31, 0x30),
(12, '2018-07-23 22:58:02', 1, 1, '2018-07-24 02:58:02', '2018-07-24 03:51:40', '2018-07-23', 12, 1, 'pago parcial por concepto de mensualidad #1', 250, 1, 0x31, 0x30),
(13, '2018-07-23 23:52:41', 1, 1, '2018-07-24 03:52:41', '2018-07-24 03:52:41', '2018-07-23', 13, 1, 'pago por concepto de mensualidad #', 200, 1, 0x31, 0x30),
(14, '2018-07-23 23:55:13', 1, 1, '2018-07-24 03:55:13', '2018-07-24 03:55:13', '2018-07-23', 14, 1, 'pago por concepto de mensualidad #', 200, 1, 0x31, 0x30),
(15, '2018-07-25 09:06:28', 1, 1, '2018-07-25 13:06:28', '2018-07-25 13:14:09', '2018-07-30', 15, 1, 'pago por concepto de mensualidad #1', 150, 1, 0x31, 0x30),
(16, '2018-07-25 09:16:42', 1, 1, '2018-07-25 13:16:42', '2018-07-25 13:16:42', '2018-07-25', 16, 1, 'pago por concepto de mensualidad #1', 250, 1, 0x31, 0x30),
(17, '2018-07-25 14:59:50', 1, 2, '2018-07-25 18:59:50', '2018-07-25 18:59:50', '2018-07-30', 17, 1, 'pago por concepto de mensualidad #1', 200, 1, 0x31, 0x30),
(18, '2018-07-25 16:33:55', 1, 2, '2018-07-25 20:33:55', '2018-07-25 20:33:55', '2018-07-30', 18, 5, 'pago por concepto de mensualidad #1', 100, 2, 0x31, 0x30),
(19, '2018-07-25 16:38:27', 1, 2, '2018-07-25 20:38:27', '2018-07-25 20:38:27', '2018-07-25', 19, 1, 'pago por concepto de mensualidad #1', 200, 1, 0x31, 0x30),
(20, '2018-07-25 17:03:19', 1, 6, '2018-07-25 21:03:19', '2018-07-25 21:03:19', '2018-07-30', 20, 1, 'pago completo por concepto del curso.', 500, 1, 0x31, 0x30),
(21, '2018-07-27 10:09:44', 1, 3, '2018-07-27 14:09:44', '2018-07-27 14:47:19', '2018-07-30', 21, 3, 'pago por concepto de mensualidad #1', 150, 2, 0x31, 0x30),
(22, '2018-07-27 10:53:33', 1, 3, '2018-07-27 14:53:33', '2018-07-27 14:53:33', '2018-07-30', 22, 4, 'pago parcial por concepto de mensualidad #1', 100, 2, 0x31, 0x30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insc_estados`
--

CREATE TABLE `insc_estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `insc_id` int(11) DEFAULT NULL,
  `observacion` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensualidades`
--

CREATE TABLE `mensualidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_mens` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `estado` binary(1) DEFAULT NULL,
  `observaciones` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `inscripcion_id` int(11) DEFAULT NULL,
  `recibo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensualidades`
--

INSERT INTO `mensualidades` (`id`, `num_mens`, `monto`, `created_at`, `updated_at`, `fecha_inicio`, `fecha_final`, `estado`, `observaciones`, `user_id`, `fecha_pago`, `inscripcion_id`, `recibo_id`) VALUES
(14, 1, 200, '2018-07-24 02:32:49', '2018-07-24 02:32:49', '2018-07-23', '2018-08-23', 0x30, 'pago parcial por concepto de mensualidad #1', 1, '2018-07-23', 11, 15),
(15, 1, 100, '2018-07-24 02:58:02', '2018-07-24 02:58:02', '2018-07-23', '2018-08-23', 0x31, 'pago parcial por concepto de mensualidad #1', 1, '2018-07-23', 12, 16),
(16, 1, 200, '2018-07-24 03:52:42', '2018-07-24 03:52:42', '2018-07-23', '2018-08-23', 0x31, 'pago por concepto de mensualidad #', 1, '2018-07-23', 13, 17),
(17, 1, 200, '2018-07-24 03:55:13', '2018-07-24 03:55:13', '2018-07-23', '2018-08-23', 0x31, 'pago por concepto de mensualidad #', 1, '2018-07-23', 14, 18),
(18, 1, 150, '2018-07-25 13:06:29', '2018-07-25 13:06:29', '2018-07-30', '2018-08-30', 0x31, 'pago por concepto de mensualidad #1', 1, '2018-07-25', 15, 19),
(19, 1, 250, '2018-07-25 13:16:42', '2018-07-25 13:16:42', '2018-07-25', '2018-08-25', 0x31, 'pago por concepto de mensualidad #1', 1, '2018-07-25', 16, 20),
(20, 1, 200, '2018-07-25 18:59:50', '2018-07-25 18:59:50', '2018-07-30', '2018-08-30', 0x31, 'pago por concepto de mensualidad #1', 1, '2018-07-25', 17, 21),
(21, 2, 250, '2018-07-25 20:23:32', '2018-07-25 20:23:32', '2018-08-23', '2018-09-23', 0x31, 'pago por concepto de mensualidad #2', 1, '2018-07-25', 11, 22),
(22, 2, 250, '2018-07-25 20:25:38', '2018-07-25 20:25:38', '2018-08-23', '2018-09-23', 0x31, 'pago por concepto de mensualidad #2', 1, '2018-07-25', 12, 23),
(23, 2, 150, '2018-07-25 20:29:02', '2018-07-25 20:29:50', '2018-08-30', '2018-09-30', 0x31, 'Pago Final de la segunda Mensualidad.', 1, '2018-07-25', 15, 25),
(24, 2, 200, '2018-07-25 20:31:25', '2018-07-25 20:31:25', '2018-08-23', '2018-09-23', 0x31, 'pago por concepto de mensualidad #2', 1, '2018-07-25', 14, 26),
(25, 1, 100, '2018-07-25 20:33:56', '2018-07-25 20:33:56', '2018-07-30', '2018-08-30', 0x31, 'pago por concepto de mensualidad #1', 1, '2018-07-25', 18, 27),
(26, 1, 200, '2018-07-25 20:38:27', '2018-07-25 20:38:27', '2018-07-25', '2018-08-25', 0x31, 'pago por concepto de mensualidad #1', 1, '2018-07-25', 19, 28),
(27, 2, 200, '2018-07-25 20:38:53', '2018-07-25 20:38:53', '2018-08-25', '2018-09-25', 0x31, 'pago por concepto de mensualidad #2', 1, '2018-07-25', 19, 29),
(28, 2, 200, '2018-07-25 20:42:49', '2018-07-25 20:42:49', '2018-08-23', '2018-09-23', 0x31, 'pago por concepto de mensualidad #2', 1, '2018-07-25', 13, 30),
(29, 1, 500, '2018-07-25 21:03:19', '2018-07-25 21:03:19', '2018-07-30', '2018-08-30', 0x31, 'pago completo por concepto del curso.', 1, '2018-07-25', 20, 31),
(30, 1, 150, '2018-07-27 14:09:45', '2018-07-27 14:09:45', '2018-07-30', '2018-08-30', 0x31, 'pago por concepto de mensualidad #1', 1, '2018-07-27', 21, 32),
(31, 1, 250, '2018-07-27 14:53:33', '2018-07-27 14:53:33', '2018-07-30', '2018-08-30', 0x30, 'pago parcial por concepto de mensualidad #1', 1, '2018-07-27', 22, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-07-20 18:48:28', '2018-07-20 18:48:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 1, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.media.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2018-07-20 18:48:29', '2018-07-27 12:35:49', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 2, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 3, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 7, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 6, '2018-07-20 18:48:45', '2018-07-21 08:22:22', 'voyager.hooks', NULL),
(15, 1, 'Seguridad', '', '_self', 'voyager-key', '#000000', NULL, 4, '2018-07-20 19:02:16', '2018-07-27 12:46:13', NULL, ''),
(16, 1, 'Inscripciónes', '', '_self', 'voyager-pen', '#000000', NULL, 1, '2018-07-20 19:16:20', '2018-07-27 12:35:49', NULL, ''),
(17, 1, 'Programación', '', '_self', 'voyager-params', '#000000', NULL, 2, '2018-07-20 19:21:02', '2018-07-27 12:35:49', NULL, ''),
(18, 1, 'Notas', '/admin/notes', '_self', 'voyager-documentation', '#000000', NULL, 3, '2018-07-20 19:21:57', '2018-07-27 12:35:49', NULL, ''),
(19, 1, 'Control', '', '_self', NULL, '#000000', 16, 1, '2018-07-27 12:22:56', '2018-07-27 15:28:02', 'control_index', 'null'),
(20, 1, 'Mensualidades', '', '_self', NULL, '#000000', 16, 3, '2018-07-27 12:25:36', '2018-07-27 14:29:05', 'voyager.mensualidades.index', NULL),
(21, 1, 'Pagos', '', '_self', NULL, '#000000', 16, 5, '2018-07-27 12:26:07', '2018-07-27 14:29:05', 'voyager.pagos.index', NULL),
(22, 1, 'Recibos', '', '_self', NULL, '#000000', 16, 4, '2018-07-27 12:28:15', '2018-07-27 14:29:05', 'voyager.recibos.index', NULL),
(23, 1, 'Inscripciones', '', '_self', NULL, '#000000', 18, 3, '2018-07-27 12:29:57', '2018-07-27 13:44:19', 'voyager.inscripciones.index', 'null'),
(24, 1, 'Carreras', '', '_self', NULL, '#000000', 17, 2, '2018-07-27 12:33:39', '2018-07-27 12:35:52', 'voyager.carreras.index', NULL),
(25, 1, 'Asignaturas', '', '_self', NULL, '#000000', 17, 3, '2018-07-27 12:34:02', '2018-07-27 12:35:55', 'voyager.asignaturas.index', NULL),
(26, 1, 'Horarios', '', '_self', NULL, '#000000', 17, 4, '2018-07-27 12:34:23', '2018-07-27 12:35:59', 'voyager.horarios.index', NULL),
(27, 1, 'Registros', '', '_self', NULL, '#000000', 17, 1, '2018-07-27 12:35:15', '2018-07-27 14:49:15', 'prog_index', 'null'),
(28, 1, 'Registros', '', '_self', NULL, '#000000', 18, 1, '2018-07-27 12:37:22', '2018-07-27 14:58:08', 'notas_index', 'null'),
(29, 1, 'Educadores', '', '_self', NULL, '#000000', 18, 2, '2018-07-27 12:39:30', '2018-07-27 12:39:43', 'voyager.educadores.index', NULL),
(30, 1, 'Usuarios', '', '_self', NULL, '#000000', 15, 1, '2018-07-27 12:45:15', '2018-07-27 12:46:01', 'voyager.users.index', NULL),
(31, 1, 'Roles', '', '_self', NULL, '#000000', 15, 2, '2018-07-27 12:45:30', '2018-07-27 12:46:06', 'voyager.roles.index', NULL),
(32, 1, 'Permisos', '', '_self', NULL, '#000000', 15, 3, '2018-07-27 12:45:49', '2018-07-27 12:46:08', 'voyager.permissions.index', NULL),
(33, 1, 'Estudiantes', '', '_self', NULL, '#000000', 16, 2, '2018-07-27 13:38:36', '2018-07-27 14:29:02', 'voyager.estudiantes.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Técnico Medio', '2018-05-14 21:29:01', '2018-05-14 21:29:01'),
(2, 'Técnico Superior', '2018-05-14 21:29:31', '2018-05-14 21:29:31'),
(3, 'Otros', '2018-05-14 21:29:00', '2018-06-08 13:27:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(10) UNSIGNED NOT NULL,
  `programacion_id` int(11) DEFAULT NULL,
  `nota` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `insc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `programacion_id`, `nota`, `created_at`, `updated_at`, `insc_id`) VALUES
(5, 7, 88, '2018-07-27 14:59:57', '2018-07-27 14:59:57', 22),
(6, 7, 56, '2018-07-27 14:59:57', '2018-07-27 14:59:57', 13),
(7, 7, 66, '2018-07-27 14:59:57', '2018-07-27 14:59:57', 17),
(8, 7, 99, '2018-07-27 14:59:57', '2018-07-27 14:59:57', 14),
(9, 7, 55, '2018-07-27 14:59:57', '2018-07-27 14:59:57', 18),
(10, 7, 79, '2018-07-27 14:59:57', '2018-07-27 14:59:57', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `mensualidad_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `observaciones` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recibo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `fecha_pago`, `mensualidad_id`, `user_id`, `monto`, `observaciones`, `created_at`, `updated_at`, `recibo_id`) VALUES
(6, '2018-07-23 22:32:49', 14, 1, 200, 'pago parcial por concepto de mensualidad #1', '2018-07-24 02:32:49', '2018-07-24 02:32:49', 15),
(7, '2018-07-25 16:29:02', 23, 1, 100, 'pago parcial por concepto de mensualidad #2', '2018-07-25 20:29:02', '2018-07-25 20:29:02', 24),
(8, '2018-07-25 16:29:50', 23, 1, 50, 'Pago Final de la segunda Mensualidad.', '2018-07-25 20:29:50', '2018-07-25 20:29:50', 25),
(9, '2018-07-27 10:53:33', 31, 1, 250, 'pago parcial por concepto de mensualidad #1', '2018-07-27 14:53:33', '2018-07-27 14:53:33', 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Primer Año', '2018-05-15 15:39:58', '2018-05-15 15:39:58'),
(2, 'Segundo Año', '2018-05-15 15:40:09', '2018-05-15 15:40:09'),
(3, 'Temporal', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(2, 'browse_bread', NULL, '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(3, 'browse_database', NULL, '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(4, 'browse_media', NULL, '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(5, 'browse_compass', NULL, '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(6, 'browse_menus', 'menus', '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(7, 'read_menus', 'menus', '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(8, 'edit_menus', 'menus', '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(9, 'add_menus', 'menus', '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(10, 'delete_menus', 'menus', '2018-07-20 18:48:30', '2018-07-20 18:48:30'),
(11, 'browse_roles', 'roles', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(12, 'read_roles', 'roles', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(13, 'edit_roles', 'roles', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(14, 'add_roles', 'roles', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(15, 'delete_roles', 'roles', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(16, 'browse_users', 'users', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(17, 'read_users', 'users', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(18, 'edit_users', 'users', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(19, 'add_users', 'users', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(20, 'delete_users', 'users', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(21, 'browse_settings', 'settings', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(22, 'read_settings', 'settings', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(23, 'edit_settings', 'settings', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(24, 'add_settings', 'settings', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(25, 'delete_settings', 'settings', '2018-07-20 18:48:31', '2018-07-20 18:48:31'),
(41, 'browse_hooks', NULL, '2018-07-20 18:48:45', '2018-07-20 18:48:45'),
(42, 'browse_permissions', 'permissions', '2018-07-20 19:36:37', '2018-07-20 19:36:37'),
(43, 'read_permissions', 'permissions', '2018-07-20 19:36:37', '2018-07-20 19:36:37'),
(44, 'edit_permissions', 'permissions', '2018-07-20 19:36:37', '2018-07-20 19:36:37'),
(45, 'add_permissions', 'permissions', '2018-07-20 19:36:37', '2018-07-20 19:36:37'),
(46, 'delete_permissions', 'permissions', '2018-07-20 19:36:37', '2018-07-20 19:36:37'),
(47, 'browse_estudiantes', 'estudiantes', '2018-07-21 07:43:12', '2018-07-21 07:43:12'),
(48, 'read_estudiantes', 'estudiantes', '2018-07-21 07:43:12', '2018-07-21 07:43:12'),
(49, 'edit_estudiantes', 'estudiantes', '2018-07-21 07:43:12', '2018-07-21 07:43:12'),
(50, 'add_estudiantes', 'estudiantes', '2018-07-21 07:43:12', '2018-07-21 07:43:12'),
(51, 'delete_estudiantes', 'estudiantes', '2018-07-21 07:43:12', '2018-07-21 07:43:12'),
(52, 'browse_mensualidades', 'mensualidades', '2018-07-21 07:52:51', '2018-07-21 07:52:51'),
(53, 'read_mensualidades', 'mensualidades', '2018-07-21 07:52:51', '2018-07-21 07:52:51'),
(54, 'edit_mensualidades', 'mensualidades', '2018-07-21 07:52:51', '2018-07-21 07:52:51'),
(55, 'add_mensualidades', 'mensualidades', '2018-07-21 07:52:51', '2018-07-21 07:52:51'),
(56, 'delete_mensualidades', 'mensualidades', '2018-07-21 07:52:51', '2018-07-21 07:52:51'),
(57, 'browse_recibos', 'recibos', '2018-07-21 07:57:12', '2018-07-21 07:57:12'),
(58, 'read_recibos', 'recibos', '2018-07-21 07:57:12', '2018-07-21 07:57:12'),
(59, 'edit_recibos', 'recibos', '2018-07-21 07:57:12', '2018-07-21 07:57:12'),
(60, 'add_recibos', 'recibos', '2018-07-21 07:57:12', '2018-07-21 07:57:12'),
(61, 'delete_recibos', 'recibos', '2018-07-21 07:57:12', '2018-07-21 07:57:12'),
(62, 'browse_inscripciones', 'inscripciones', '2018-07-21 08:02:09', '2018-07-21 08:02:09'),
(63, 'read_inscripciones', 'inscripciones', '2018-07-21 08:02:09', '2018-07-21 08:02:09'),
(64, 'edit_inscripciones', 'inscripciones', '2018-07-21 08:02:09', '2018-07-21 08:02:09'),
(65, 'add_inscripciones', 'inscripciones', '2018-07-21 08:02:09', '2018-07-21 08:02:09'),
(66, 'delete_inscripciones', 'inscripciones', '2018-07-21 08:02:09', '2018-07-21 08:02:09'),
(67, 'browse_pagos', 'pagos', '2018-07-21 08:04:52', '2018-07-21 08:04:52'),
(68, 'read_pagos', 'pagos', '2018-07-21 08:04:52', '2018-07-21 08:04:52'),
(69, 'edit_pagos', 'pagos', '2018-07-21 08:04:52', '2018-07-21 08:04:52'),
(70, 'add_pagos', 'pagos', '2018-07-21 08:04:52', '2018-07-21 08:04:52'),
(71, 'delete_pagos', 'pagos', '2018-07-21 08:04:52', '2018-07-21 08:04:52'),
(72, 'browse_carreras', 'carreras', '2018-07-21 08:11:51', '2018-07-21 08:11:51'),
(73, 'read_carreras', 'carreras', '2018-07-21 08:11:51', '2018-07-21 08:11:51'),
(74, 'edit_carreras', 'carreras', '2018-07-21 08:11:51', '2018-07-21 08:11:51'),
(75, 'add_carreras', 'carreras', '2018-07-21 08:11:51', '2018-07-21 08:11:51'),
(76, 'delete_carreras', 'carreras', '2018-07-21 08:11:51', '2018-07-21 08:11:51'),
(77, 'browse_asignaturas', 'asignaturas', '2018-07-21 08:13:50', '2018-07-21 08:13:50'),
(78, 'read_asignaturas', 'asignaturas', '2018-07-21 08:13:50', '2018-07-21 08:13:50'),
(79, 'edit_asignaturas', 'asignaturas', '2018-07-21 08:13:50', '2018-07-21 08:13:50'),
(80, 'add_asignaturas', 'asignaturas', '2018-07-21 08:13:50', '2018-07-21 08:13:50'),
(81, 'delete_asignaturas', 'asignaturas', '2018-07-21 08:13:50', '2018-07-21 08:13:50'),
(82, 'browse_horarios', 'horarios', '2018-07-21 08:15:31', '2018-07-21 08:15:31'),
(83, 'read_horarios', 'horarios', '2018-07-21 08:15:31', '2018-07-21 08:15:31'),
(84, 'edit_horarios', 'horarios', '2018-07-21 08:15:31', '2018-07-21 08:15:31'),
(85, 'add_horarios', 'horarios', '2018-07-21 08:15:31', '2018-07-21 08:15:31'),
(86, 'delete_horarios', 'horarios', '2018-07-21 08:15:31', '2018-07-21 08:15:31'),
(87, 'browse_educadores', 'educadores', '2018-07-21 08:22:02', '2018-07-21 08:22:02'),
(88, 'read_educadores', 'educadores', '2018-07-21 08:22:02', '2018-07-21 08:22:02'),
(89, 'edit_educadores', 'educadores', '2018-07-21 08:22:02', '2018-07-21 08:22:02'),
(90, 'add_educadores', 'educadores', '2018-07-21 08:22:02', '2018-07-21 08:22:02'),
(91, 'delete_educadores', 'educadores', '2018-07-21 08:22:02', '2018-07-21 08:22:02'),
(92, 'browse_programaciones', 'programaciones', '2018-07-24 12:15:01', '2018-07-24 12:15:01'),
(93, 'read_programaciones', 'programaciones', '2018-07-24 12:15:01', '2018-07-24 12:15:01'),
(94, 'edit_programaciones', 'programaciones', '2018-07-24 12:15:01', '2018-07-24 12:15:01'),
(95, 'add_programaciones', 'programaciones', '2018-07-24 12:15:01', '2018-07-24 12:15:01'),
(96, 'delete_programaciones', 'programaciones', '2018-07-24 12:15:01', '2018-07-24 12:15:01'),
(97, 'browse_documentos', 'documentos', '2018-07-24 20:55:29', '2018-07-24 20:55:29'),
(98, 'read_documentos', 'documentos', '2018-07-24 20:55:29', '2018-07-24 20:55:29'),
(99, 'edit_documentos', 'documentos', '2018-07-24 20:55:29', '2018-07-24 20:55:29'),
(100, 'add_documentos', 'documentos', '2018-07-24 20:55:29', '2018-07-24 20:55:29'),
(101, 'delete_documentos', 'documentos', '2018-07-24 20:55:29', '2018-07-24 20:55:29'),
(102, 'browse_niveles', 'niveles', '2018-07-24 21:42:56', '2018-07-24 21:42:56'),
(103, 'read_niveles', 'niveles', '2018-07-24 21:42:56', '2018-07-24 21:42:56'),
(104, 'edit_niveles', 'niveles', '2018-07-24 21:42:56', '2018-07-24 21:42:56'),
(105, 'add_niveles', 'niveles', '2018-07-24 21:42:56', '2018-07-24 21:42:56'),
(106, 'delete_niveles', 'niveles', '2018-07-24 21:42:56', '2018-07-24 21:42:56'),
(107, 'browse_notas', 'notas', '2018-07-24 21:43:55', '2018-07-24 21:43:55'),
(108, 'read_notas', 'notas', '2018-07-24 21:43:55', '2018-07-24 21:43:55'),
(109, 'edit_notas', 'notas', '2018-07-24 21:43:55', '2018-07-24 21:43:55'),
(110, 'add_notas', 'notas', '2018-07-24 21:43:55', '2018-07-24 21:43:55'),
(111, 'delete_notas', 'notas', '2018-07-24 21:43:55', '2018-07-24 21:43:55'),
(112, 'browse_periodos', 'periodos', '2018-07-24 21:45:18', '2018-07-24 21:45:18'),
(113, 'read_periodos', 'periodos', '2018-07-24 21:45:18', '2018-07-24 21:45:18'),
(114, 'edit_periodos', 'periodos', '2018-07-24 21:45:18', '2018-07-24 21:45:18'),
(115, 'add_periodos', 'periodos', '2018-07-24 21:45:18', '2018-07-24 21:45:18'),
(116, 'delete_periodos', 'periodos', '2018-07-24 21:45:18', '2018-07-24 21:45:18'),
(117, 'browse_profesiones', 'profesiones', '2018-07-24 21:46:10', '2018-07-24 21:46:10'),
(118, 'read_profesiones', 'profesiones', '2018-07-24 21:46:10', '2018-07-24 21:46:10'),
(119, 'edit_profesiones', 'profesiones', '2018-07-24 21:46:10', '2018-07-24 21:46:10'),
(120, 'add_profesiones', 'profesiones', '2018-07-24 21:46:10', '2018-07-24 21:46:10'),
(121, 'delete_profesiones', 'profesiones', '2018-07-24 21:46:10', '2018-07-24 21:46:10'),
(122, 'browse_sexualidades', 'sexualidades', '2018-07-24 21:46:59', '2018-07-24 21:46:59'),
(123, 'read_sexualidades', 'sexualidades', '2018-07-24 21:46:59', '2018-07-24 21:46:59'),
(124, 'edit_sexualidades', 'sexualidades', '2018-07-24 21:46:59', '2018-07-24 21:46:59'),
(125, 'add_sexualidades', 'sexualidades', '2018-07-24 21:46:59', '2018-07-24 21:46:59'),
(126, 'delete_sexualidades', 'sexualidades', '2018-07-24 21:46:59', '2018-07-24 21:46:59'),
(127, 'browse_tipos', 'tipos', '2018-07-24 21:47:38', '2018-07-24 21:47:38'),
(128, 'read_tipos', 'tipos', '2018-07-24 21:47:38', '2018-07-24 21:47:38'),
(129, 'edit_tipos', 'tipos', '2018-07-24 21:47:38', '2018-07-24 21:47:38'),
(130, 'add_tipos', 'tipos', '2018-07-24 21:47:38', '2018-07-24 21:47:38'),
(131, 'delete_tipos', 'tipos', '2018-07-24 21:47:38', '2018-07-24 21:47:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesiones`
--

CREATE TABLE `profesiones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `profesiones`
--

INSERT INTO `profesiones` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Ingeniero de Sistemas', '2018-05-17 03:20:53', '2018-05-17 03:20:53'),
(2, 'Licenciado en Derecho', '2018-05-17 03:21:12', '2018-05-17 03:21:12'),
(3, 'Licenciado en Pedagogía', '2018-05-17 03:21:00', '2018-05-17 03:21:49'),
(4, 'Contador Publico', '2018-06-08 13:09:38', '2018-06-08 13:09:38'),
(5, 'Auditor', '2018-06-08 13:10:22', '2018-06-08 13:10:22'),
(6, 'Lic. en Enfermeria', '2018-06-08 13:10:44', '2018-06-08 13:10:44'),
(7, 'Comunicador Social', '2018-06-08 13:11:01', '2018-06-08 13:11:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programaciones`
--

CREATE TABLE `programaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `asignatura_id` int(11) DEFAULT NULL,
  `observacion` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `educador_id` int(11) DEFAULT NULL,
  `estado` binary(1) DEFAULT '1',
  `horario_id` int(11) DEFAULT NULL,
  `nota_estado` binary(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `programaciones`
--

INSERT INTO `programaciones` (`id`, `fecha`, `user_id`, `asignatura_id`, `observacion`, `created_at`, `updated_at`, `educador_id`, `estado`, `horario_id`, `nota_estado`) VALUES
(7, '2018-07-27 10:41:57', 1, 14, NULL, '2018-07-27 14:41:57', '2018-07-27 14:59:57', 5, 0x31, 5, 0x30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion_estudiante`
--

CREATE TABLE `programacion_estudiante` (
  `id` int(10) UNSIGNED NOT NULL,
  `programacion_id` int(11) DEFAULT NULL,
  `inscripciones_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `programacion_estudiante`
--

INSERT INTO `programacion_estudiante` (`id`, `programacion_id`, `inscripciones_id`, `created_at`, `updated_at`) VALUES
(13, 7, 13, '2018-07-27 14:44:11', '2018-07-27 14:44:11'),
(14, 7, 17, '2018-07-27 14:49:50', '2018-07-27 14:49:50'),
(15, 7, 16, '2018-07-27 14:52:13', '2018-07-27 14:52:13'),
(16, 7, 22, '2018-07-27 14:58:45', '2018-07-27 14:58:45'),
(17, 7, 14, '2018-07-27 14:59:00', '2018-07-27 14:59:00'),
(18, 7, 18, '2018-07-27 14:59:10', '2018-07-27 14:59:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibos`
--

CREATE TABLE `recibos` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concepto` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `monto_numeral` double DEFAULT NULL,
  `monto_literal` text COLLATE utf8_unicode_ci,
  `fecha` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `estudiante_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `recibos`
--

INSERT INTO `recibos` (`id`, `numero`, `concepto`, `updated_at`, `monto_numeral`, `monto_literal`, `fecha`, `user_id`, `created_at`, `estudiante_id`) VALUES
(15, '000001/2018', 'pago parcial por concepto de mensualidad #1', '2018-07-24 02:32:49', 200, '200,00 (Doscientos  00/100 Bolivianos)', '2018-07-23 22:32:49', 1, '2018-07-24 02:32:49', 11),
(16, '000002/2018', 'pago parcial por concepto de mensualidad #1', '2018-07-24 02:58:02', 100, '100,00 (Cien  00/100 Bolivianos)', '2018-07-23 22:58:02', 1, '2018-07-24 02:58:02', 12),
(17, '000003/2018', 'pago por concepto de mensualidad #', '2018-07-24 03:52:41', 200, '200,00 (Doscientos  00/100 Bolivianos)', '2018-07-23 23:52:41', 1, '2018-07-24 03:52:41', 13),
(18, '000004/2018', 'pago por concepto de mensualidad #', '2018-07-24 03:55:13', 200, '200,00 (Doscientos  00/100 Bolivianos)', '2018-07-23 23:55:13', 1, '2018-07-24 03:55:13', 14),
(19, '000005/2018', 'pago por concepto de mensualidad #1', '2018-07-25 13:06:29', 150, '150,00 (Ciento cincuenta  00/100 Bolivianos)', '2018-07-25 09:06:28', 1, '2018-07-25 13:06:29', 15),
(20, '000006/2018', 'pago por concepto de mensualidad #1', '2018-07-25 13:16:42', 250, '250,00 (Doscientos cincuenta  00/100 Bolivianos)', '2018-07-25 09:16:42', 1, '2018-07-25 13:16:42', 16),
(21, '000007/2018', 'pago por concepto de mensualidad #1', '2018-07-25 18:59:50', 200, '200,00 (Doscientos  00/100 Bolivianos)', '2018-07-25 14:59:50', 1, '2018-07-25 18:59:50', 17),
(22, '000008/2018', 'pago por concepto de mensualidad #2', '2018-07-25 20:23:32', 250, '250,00 (Doscientos cincuenta  00/100 Bolivianos)', '2018-07-25 16:23:32', 1, '2018-07-25 20:23:32', 11),
(23, '000009/2018', 'pago por concepto de mensualidad #2', '2018-07-25 20:25:38', 250, '250,00 (Doscientos cincuenta  00/100 Bolivianos)', '2018-07-25 16:25:38', 1, '2018-07-25 20:25:38', 12),
(24, '000010/2018', 'pago parcial por concepto de mensualidad #2', '2018-07-25 20:29:02', 100, '100,00 (Cien  00/100 Bolivianos)', '2018-07-25 16:29:02', 1, '2018-07-25 20:29:02', 15),
(25, '000011/2018', 'Pago Final de la segunda Mensualidad.', '2018-07-25 20:29:50', 50, '50,00 (Cincuenta  00/100 Bolivianos)', '2018-07-25 16:29:50', 1, '2018-07-25 20:29:50', 15),
(26, '000012/2018', 'pago por concepto de mensualidad #2', '2018-07-25 20:31:25', 200, '200,00 (Doscientos  00/100 Bolivianos)', '2018-07-25 16:31:25', 1, '2018-07-25 20:31:25', 14),
(27, '000013/2018', 'pago por concepto de mensualidad #1', '2018-07-25 20:33:55', 100, '100,00 (Cien  00/100 Bolivianos)', '2018-07-25 16:33:55', 1, '2018-07-25 20:33:55', 18),
(28, '000014/2018', 'pago por concepto de mensualidad #1', '2018-07-25 20:38:27', 200, '200,00 (Doscientos  00/100 Bolivianos)', '2018-07-25 16:38:27', 1, '2018-07-25 20:38:27', 19),
(29, '000015/2018', 'pago por concepto de mensualidad #2', '2018-07-25 20:38:53', 200, '200,00 (Doscientos  00/100 Bolivianos)', '2018-07-25 16:38:53', 1, '2018-07-25 20:38:53', 19),
(30, '000016/2018', 'pago por concepto de mensualidad #2', '2018-07-25 20:42:49', 200, '200,00 (Doscientos  00/100 Bolivianos)', '2018-07-25 16:42:49', 1, '2018-07-25 20:42:49', 13),
(31, '000017/2018', 'pago completo por concepto del curso.', '2018-07-25 21:03:19', 500, '500,00 (Quinientos  00/100 Bolivianos)', '2018-07-25 17:03:19', 1, '2018-07-25 21:03:19', 20),
(32, '000018/2018', 'pago por concepto de mensualidad #1', '2018-07-27 14:09:45', 150, '150,00 (Ciento cincuenta  00/100 Bolivianos)', '2018-07-27 10:09:45', 1, '2018-07-27 14:09:45', 21),
(33, '000019/2018', 'pago parcial por concepto de mensualidad #1', '2018-07-27 14:53:33', 250, '250,00 (Doscientos cincuenta  00/100 Bolivianos)', '2018-07-27 10:53:33', 1, '2018-07-27 14:53:33', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-07-20 18:48:29', '2018-07-20 18:48:29'),
(2, 'default', 'default', '2018-07-20 18:48:30', '2018-07-20 18:48:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'WebAcedemico v1.0', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Sistema Web Académico, para la administración de las inscripciones, Notas y Programaciones de los estudiantes del Instituto CET-BENI', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\July2018\\NVVVyzgqxhaLhMb14lIZ.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'CET - BENI', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Sistema Académico v10', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'admin.concepto_recibo1', 'concepto_recibo1', 'pago por concepto de mensualidad #', NULL, 'text', 6, 'Admin'),
(12, 'admin.paginacion', 'paginacion', '6', NULL, 'text', 7, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexualidades`
--

CREATE TABLE `sexualidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sexualidades`
--

INSERT INTO `sexualidades` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Hombre', NULL, '2018-05-14 22:38:10', '2018-05-14 22:38:10'),
(2, 'Mujer', NULL, '2018-05-14 22:38:16', '2018-05-14 22:38:16'),
(3, 'Homosexual', NULL, '2018-05-14 22:38:26', '2018-05-14 22:38:26'),
(4, 'Lesbiana', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Normal', '2018-05-17 20:02:23', '2018-05-17 20:02:23'),
(2, 'Convenio', '2018-05-17 20:02:32', '2018-05-17 20:02:32'),
(3, 'Promoción', '2018-05-17 20:02:43', '2018-05-17 20:02:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-07-20 18:48:43', '2018-07-20 18:48:43'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-07-20 18:48:44', '2018-07-20 18:48:44'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-07-20 18:48:44', '2018-07-20 18:48:44'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-07-20 18:48:44', '2018-07-20 18:48:44'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-07-20 18:48:44', '2018-07-20 18:48:44'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-07-20 18:48:44', '2018-07-20 18:48:44'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-07-20 18:48:44', '2018-07-20 18:48:44'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-07-20 18:48:44', '2018-07-20 18:48:44'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-07-20 18:48:44', '2018-07-20 18:48:44'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-07-20 18:48:44', '2018-07-20 18:48:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT '2',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$KEzi5hT.xevsy5S2.NA98.eBWFGTebLBRJFMFEzSF/PCeZIVWE3A2', 'rDzIVojP6VDAT2cQuF2qH9padggvCuuLjV6cnQtEdMEcDosb0C1Dp2ruHQiV', NULL, '2018-07-20 18:48:41', '2018-07-20 18:48:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras_asignaturas`
--
ALTER TABLE `carreras_asignaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `educadores`
--
ALTER TABLE `educadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes_insc`
--
ALTER TABLE `imagenes_insc`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes_prog`
--
ALTER TABLE `imagenes_prog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insc_estados`
--
ALTER TABLE `insc_estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensualidades`
--
ALTER TABLE `mensualidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `profesiones`
--
ALTER TABLE `profesiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `programaciones`
--
ALTER TABLE `programaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `programacion_estudiante`
--
ALTER TABLE `programacion_estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `sexualidades`
--
ALTER TABLE `sexualidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `carreras_asignaturas`
--
ALTER TABLE `carreras_asignaturas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `educadores`
--
ALTER TABLE `educadores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `imagenes_insc`
--
ALTER TABLE `imagenes_insc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `imagenes_prog`
--
ALTER TABLE `imagenes_prog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `insc_estados`
--
ALTER TABLE `insc_estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `mensualidades`
--
ALTER TABLE `mensualidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `profesiones`
--
ALTER TABLE `profesiones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `programaciones`
--
ALTER TABLE `programaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `programacion_estudiante`
--
ALTER TABLE `programacion_estudiante`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `recibos`
--
ALTER TABLE `recibos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `sexualidades`
--
ALTER TABLE `sexualidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
