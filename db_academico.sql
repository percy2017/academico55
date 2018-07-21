-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-07-2018 a las 05:27:00
-- Versión del servidor: 5.6.38
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
(66, 10, 'documento_id', 'text', 'Documento Id', 1, 1, 1, 1, 1, 1, NULL, 5),
(67, 10, 'num_documento', 'text', 'Num Documento', 1, 1, 1, 1, 1, 1, NULL, 6),
(68, 10, 'telefono', 'text', 'Telefono', 0, 1, 1, 1, 1, 1, NULL, 7),
(69, 10, 'avatar', 'text', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(70, 10, 'direccion', 'text', 'Direccion', 0, 1, 1, 1, 1, 1, NULL, 9),
(71, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(72, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(73, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 12),
(74, 10, 'sexualidad_id', 'text', 'Sexualidad Id', 0, 1, 1, 1, 1, 1, NULL, 13),
(75, 10, 'habilitado', 'text', 'Habilitado', 0, 1, 1, 1, 1, 1, NULL, 14),
(76, 10, 'telefono2', 'text', 'Telefono2', 0, 1, 1, 1, 1, 1, NULL, 15),
(77, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(78, 11, 'num_mens', 'text', 'Num Mens', 0, 1, 1, 1, 1, 1, NULL, 2),
(79, 11, 'monto', 'text', 'Monto', 0, 1, 1, 1, 1, 1, NULL, 3),
(80, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(81, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(82, 11, 'fecha_inicio', 'text', 'Fecha Inicio', 0, 1, 1, 1, 1, 1, NULL, 6),
(83, 11, 'fecha_final', 'text', 'Fecha Final', 0, 1, 1, 1, 1, 1, NULL, 7),
(84, 11, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, NULL, 8),
(85, 11, 'observaciones', 'text', 'Observaciones', 0, 1, 1, 1, 1, 1, NULL, 9),
(86, 11, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 10),
(87, 11, 'fecha_pago', 'text', 'Fecha Pago', 0, 1, 1, 1, 1, 1, NULL, 11),
(88, 11, 'inscripcion_id', 'text', 'Inscripcion Id', 0, 1, 1, 1, 1, 1, NULL, 12),
(89, 11, 'recibo_id', 'text', 'Recibo Id', 0, 1, 1, 1, 1, 1, NULL, 13),
(90, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(91, 12, 'numero', 'text', 'Numero', 0, 1, 1, 1, 1, 1, NULL, 2),
(92, 12, 'concepto', 'text', 'Concepto', 0, 1, 1, 1, 1, 1, NULL, 3),
(93, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(94, 12, 'monto_numeral', 'text', 'Monto Numeral', 0, 1, 1, 1, 1, 1, NULL, 5),
(95, 12, 'monto_literal', 'text', 'Monto Literal', 0, 1, 1, 1, 1, 1, NULL, 6),
(96, 12, 'fecha', 'text', 'Fecha', 0, 1, 1, 1, 1, 1, NULL, 7),
(97, 12, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 8),
(98, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(99, 12, 'estudiante_id', 'text', 'Estudiante Id', 0, 1, 1, 1, 1, 1, NULL, 10),
(100, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(101, 13, 'fecha_insc', 'text', 'Fecha Insc', 0, 1, 1, 1, 1, 1, NULL, 2),
(102, 13, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(103, 13, 'carrera_id', 'text', 'Carrera Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(104, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(105, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(106, 13, 'fecha_inicio', 'text', 'Fecha Inicio', 0, 1, 1, 1, 1, 1, NULL, 7),
(107, 13, 'estudiante_id', 'text', 'Estudiante Id', 0, 1, 1, 1, 1, 1, NULL, 8),
(108, 13, 'horario_id', 'text', 'Horario Id', 0, 1, 1, 1, 1, 1, NULL, 9),
(109, 13, 'observaciones', 'text', 'Observaciones', 0, 1, 1, 1, 1, 1, NULL, 10),
(110, 13, 'monto', 'text', 'Monto', 0, 1, 1, 1, 1, 1, NULL, 11),
(111, 13, 'tipo_id', 'text', 'Tipo Id', 0, 1, 1, 1, 1, 1, NULL, 12),
(112, 13, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, NULL, 13),
(113, 13, 'concluido', 'text', 'Concluido', 0, 1, 1, 1, 1, 1, NULL, 14),
(114, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(115, 14, 'fecha_pago', 'text', 'Fecha Pago', 0, 1, 1, 1, 1, 1, NULL, 2),
(116, 14, 'mensualidad_id', 'text', 'Mensualidad Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(117, 14, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(118, 14, 'monto', 'text', 'Monto', 0, 1, 1, 1, 1, 1, NULL, 5),
(119, 14, 'observaciones', 'text', 'Observaciones', 0, 1, 1, 1, 1, 1, NULL, 6),
(120, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(121, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(122, 14, 'recibo_id', 'text', 'Recibo Id', 0, 1, 1, 1, 1, 1, NULL, 9),
(123, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(124, 15, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(125, 15, 'nivel_id', 'text', 'Nivel Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(126, 15, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(127, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(128, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(129, 15, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, NULL, 7),
(130, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(131, 16, 'codigo', 'text', 'Codigo', 0, 1, 1, 1, 1, 1, NULL, 2),
(132, 16, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 3),
(133, 16, 'periodo_id', 'text', 'Periodo Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(134, 16, 'horas_practicas', 'text', 'Horas Practicas', 0, 1, 1, 1, 1, 1, NULL, 5),
(135, 16, 'horas_teoricas', 'text', 'Horas Teoricas', 0, 1, 1, 1, 1, 1, NULL, 6),
(136, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(137, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(138, 16, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, NULL, 9),
(139, 16, 'horas_total', 'text', 'Horas Total', 0, 1, 1, 1, 1, 1, NULL, 10),
(140, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(141, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 2),
(142, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 3),
(143, 17, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 4),
(144, 17, 'hora_inicio', 'text', 'Hora Inicio', 0, 1, 1, 1, 1, 1, NULL, 5),
(145, 17, 'hora_fin', 'text', 'Hora Fin', 0, 1, 1, 1, 1, 1, NULL, 6),
(146, 17, 'lunes', 'text', 'Lunes', 0, 1, 1, 1, 1, 1, NULL, 7),
(147, 17, 'martes', 'text', 'Martes', 0, 1, 1, 1, 1, 1, NULL, 8),
(148, 17, 'miercoles', 'text', 'Miercoles', 0, 1, 1, 1, 1, 1, NULL, 9),
(149, 17, 'jueves', 'text', 'Jueves', 0, 1, 1, 1, 1, 1, NULL, 10),
(150, 17, 'viernes', 'text', 'Viernes', 0, 1, 1, 1, 1, 1, NULL, 11),
(151, 17, 'sabado', 'text', 'Sabado', 0, 1, 1, 1, 1, 1, NULL, 12),
(152, 17, 'habilitado', 'text', 'Habilitado', 0, 1, 1, 1, 1, 1, NULL, 13),
(153, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(154, 18, 'nombres', 'text', 'Nombres', 0, 1, 1, 1, 1, 1, NULL, 2),
(155, 18, 'apellidos', 'text', 'Apellidos', 0, 1, 1, 1, 1, 1, NULL, 3),
(156, 18, 'profesion_id', 'text', 'Profesion Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(157, 18, 'avatar', 'text', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 5),
(158, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(159, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);

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
(18, 'educadores', 'educadores', 'Educadore', 'Educadores', 'voyager-github-icon', 'App\\Educadore', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 08:22:02', '2018-07-21 08:22:02');

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
(6, 'Wilfredo', 'Santos Calles', 1, 'educadores\\May2018\\X3Ru2GaqJoiJMnHfUDmy.jpg', '2018-05-28 19:30:02', '2018-05-28 19:30:02');

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
  `habilitado` binary(1) DEFAULT NULL,
  `telefono2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombres`, `apellidos_paterno`, `apellidos_materno`, `documento_id`, `num_documento`, `telefono`, `avatar`, `direccion`, `created_at`, `updated_at`, `user_id`, `sexualidad_id`, `habilitado`, `telefono2`) VALUES
(1, 'LEANDRO', 'GUARACHI', 'SAICO', 1, '4546456 BENI', '44565656', NULL, 'C/ IPURUPURO/COCHARCAS/J. MARAZA', '2018-06-08 13:56:08', '2018-06-08 13:56:08', 1, 1, NULL, '456456456'),
(2, 'DANNY', 'CABRERA', 'ALARCON', 1, '456456456 BENI', '345654654', NULL, 'C/TTE. LUIS CESPEDES ESQ. C/HNOS. RIOJA APONTE,#', '2018-06-08 16:19:05', '2018-06-08 16:19:05', 1, 1, NULL, '456456453'),
(3, 'HUGO', 'VELEZ', 'OSINAGA', 1, '345345 BENI', '343455', NULL, 'CALLE GIL FREDO CORTEZ 3ER. LOTE', '2018-06-08 20:08:58', '2018-06-08 20:08:58', 6, 1, NULL, '345345'),
(4, 'MERY', 'BARBA', 'CHAVEZ', 1, '34534545 BENI', '345345345', NULL, 'URB. V. MILDRED/MZ-G  C./ LAS PALMAS FINAL ANTES CANAL DESAGUE,#', '2018-06-08 20:19:05', '2018-06-08 20:19:05', 6, 1, NULL, '3453453'),
(5, 'IVAN', 'ZAMBRANA', 'FERNANDEZ', 1, '234234 BENI', '234234', NULL, 'URB. TAHUICHI/MANZ. M/LOTE 13', '2018-06-08 20:42:48', '2018-06-08 20:42:48', 6, 1, NULL, '234234'),
(6, 'LUISA.E', 'SUAREZ', 'O', 1, '234234 SANTA CRUZ', '234234234', NULL, 'V.CORINA/4TA.CALLE/JARAJORECHI', '2018-06-08 20:45:15', '2018-06-08 20:45:15', 6, 2, NULL, '234234234'),
(7, 'ENRRIQUE', 'FRANCO', 'DIEZ', 1, '345345 BENI', '345345', NULL, 'URB. NUEVA TDD CALLE N? 13 E/CALLE-3 Y AV.II', '2018-06-08 22:09:27', '2018-06-08 22:09:27', 1, 1, NULL, '3453454'),
(8, 'CARMELO', 'LOPEZ', 'MORENO', 1, '4564533 COCHABAMBA', '5544656456', NULL, 'URB. LA MOPERITA PAS.PUENTE A 2 CUAD.IZQ. A 2 1/2 CUAD,#', '2018-06-11 12:45:06', '2018-06-11 12:45:06', 1, 1, NULL, '456456556'),
(9, 'rolando', 'espinoza', 'lopez', 1, '4434534 BENI', '34534534', NULL, 'Calle Matadero #989', '2018-07-17 21:58:57', '2018-07-17 21:58:57', 6, 2, NULL, '34534534');

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
  `descripcion` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imagenes_insc`
--

INSERT INTO `imagenes_insc` (`id`, `fecha`, `user_id`, `insc_id`, `ruta`, `created_at`, `updated_at`, `descripcion`) VALUES
(1, '2018-06-11 10:44:42', 1, 8, 'pete-bellis-379246-unsplash.jpg', '2018-06-11 14:44:42', '2018-06-11 14:44:42', 'Imagen de estudiante'),
(2, '2018-07-17 18:01:06', 6, 9, 'website.png', '2018-07-17 22:01:06', '2018-07-17 22:01:06', 'Certificado Notas Nivel Secuandaria');

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

--
-- Volcado de datos para la tabla `imagenes_prog`
--

INSERT INTO `imagenes_prog` (`id`, `fecha`, `user_id`, `prog_id`, `ruta`, `descripcion`, `created_at`, `updated_at`) VALUES
(4, '2018-06-11', 1, 2, 'nota.jpg', 'Escaneado de notas 1', '2018-06-11 14:34:14', '2018-06-11 14:34:14');

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
(1, '2018-06-08 09:56:08', 1, 9, '2018-06-08 13:56:08', '2018-06-08 21:54:55', '2018-01-08', 1, 1, 'Pago por Concepto de Mensualidad #1', 100, 1, 0x31, 0x31),
(2, '2018-06-08 12:19:05', 1, 9, '2018-06-08 16:19:05', '2018-06-08 16:19:05', '2018-01-08', 2, 1, 'Pago por Concepto de Mensualidad #1', 100, 1, 0x31, 0x30),
(3, '2018-06-08 00:00:00', 6, 9, '2018-06-08 20:08:58', '2018-06-08 20:15:41', '2018-01-08', 3, 1, 'Pago por Concepto de Mensualidad #1', 100, 1, 0x31, 0x30),
(4, '2018-06-08 16:19:05', 6, 9, '2018-06-08 20:19:05', '2018-06-08 20:19:05', '2018-01-08', 4, 1, 'Pago por Concepto de Mensualidad #1', 100, 1, 0x31, 0x30),
(5, '2018-06-08 16:42:48', 6, 1, '2018-06-08 20:42:48', '2018-06-08 20:42:48', '2018-02-05', 5, 2, 'Pago por Concepto de Mensualidad #1', 250, 1, 0x31, 0x30),
(6, '2018-06-08 16:45:15', 6, 1, '2018-06-08 20:45:15', '2018-06-08 20:45:15', '2018-02-05', 6, 2, 'Pago por Concepto de Mensualidad #1', 150, 2, 0x31, 0x30),
(7, '2018-06-08 18:09:27', 1, 1, '2018-06-08 22:09:27', '2018-06-08 22:09:27', '2018-02-05', 7, 2, 'Pago por Concepto de Mensualidad #1', 250, 1, 0x31, 0x30),
(8, '2018-06-11 08:45:07', 1, 6, '2018-06-11 12:45:07', '2018-06-11 14:48:08', '2018-02-05', 8, 2, 'Pago por Concepto de Mensualidad #1', 150, 1, 0x31, 0x31),
(9, '2018-07-17 17:58:57', 6, 4, '2018-07-17 21:58:57', '2018-07-17 21:58:57', '2018-07-23', 9, 3, 'Pago por Concepto de Mensualidad #1', 250, 1, 0x31, 0x30);

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
(1, 1, 100, '2018-06-08 13:56:08', '2018-06-08 13:56:08', '2018-01-08', '2018-02-08', 0x31, 'Pago por Concepto de Mensualidad #1', 1, '2018-06-08', 1, 1),
(2, 1, 100, '2018-06-08 16:19:05', '2018-06-08 16:19:05', '2018-01-08', '2018-02-08', 0x30, 'Pago por Concepto de Mensualidad #1', 1, '2018-06-08', 2, 2),
(3, 1, 100, '2018-06-08 20:08:58', '2018-06-08 20:08:58', '2018-01-08', '2018-02-08', 0x31, 'Pago por Concepto de Mensualidad #1', 6, '2018-06-08', 3, 3),
(4, 1, 100, '2018-06-08 20:19:05', '2018-06-08 20:19:05', '2018-01-08', '2018-02-08', 0x30, 'Pago por Concepto de Mensualidad #1', 6, '2018-06-08', 4, 4),
(5, 1, 250, '2018-06-08 20:42:48', '2018-06-08 20:42:48', '2018-02-05', '2018-03-05', 0x31, 'Pago por Concepto de Mensualidad #1', 6, '2018-06-08', 5, 5),
(6, 1, 150, '2018-06-08 20:45:15', '2018-06-08 20:45:15', '2018-02-05', '2018-03-05', 0x31, 'Pago por Concepto de Mensualidad #1', 6, '2018-06-08', 6, 6),
(7, 1, 250, '2018-06-08 22:09:28', '2018-06-08 22:09:28', '2018-02-05', '2018-03-05', 0x31, 'Pago por Concepto de Mensualidad #1', 1, '2018-06-08', 7, 7),
(8, 1, 150, '2018-06-11 12:45:07', '2018-06-11 12:45:07', '2018-02-05', '2018-03-05', 0x31, 'Pago por Concepto de Mensualidad #1', 1, '2018-06-11', 8, 8),
(9, 1, 250, '2018-07-17 21:58:57', '2018-07-17 21:58:57', '2018-07-23', '2018-08-23', 0x31, 'Pago por Concepto de Mensualidad #1', 6, '2018-07-17', 9, 9);

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-07-20 18:48:28', '2018-07-20 18:48:28', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 1, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.media.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2018-07-20 18:48:29', '2018-07-20 19:22:06', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 2, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 3, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 7, '2018-07-20 18:48:29', '2018-07-21 08:22:22', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 6, '2018-07-20 18:48:45', '2018-07-21 08:22:22', 'voyager.hooks', NULL),
(15, 1, 'Seguridad', '/admin/security', '_self', 'voyager-key', '#000000', NULL, 5, '2018-07-20 19:02:16', '2018-07-20 19:22:06', NULL, ''),
(16, 1, 'Inscripciónes', '/admin/inscription', '_self', 'voyager-pen', '#000000', NULL, 2, '2018-07-20 19:16:20', '2018-07-20 19:16:28', NULL, ''),
(17, 1, 'Programación', '/admin/programming', '_self', 'voyager-params', '#000000', NULL, 3, '2018-07-20 19:21:02', '2018-07-20 19:22:32', NULL, ''),
(18, 1, 'Notas', '/admin/notes', '_self', 'voyager-documentation', '#000000', NULL, 4, '2018-07-20 19:21:57', '2018-07-20 19:22:06', NULL, '');

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
(1, 1, 88, '2018-06-08 21:40:44', '2018-06-08 21:40:44', 3),
(2, 1, 79, '2018-06-08 21:40:44', '2018-06-08 21:40:44', 4),
(3, 1, 45, '2018-06-08 21:40:44', '2018-06-08 21:40:44', 1),
(4, 1, 55, '2018-06-08 21:40:44', '2018-06-08 21:40:44', 2),
(5, 2, 90, '2018-06-11 13:09:23', '2018-06-11 13:09:23', 8),
(6, 2, 80, '2018-06-11 13:09:23', '2018-06-11 13:09:23', 7),
(7, 2, 22, '2018-06-11 13:09:23', '2018-06-11 13:09:23', 6),
(8, 2, 50, '2018-06-11 13:09:23', '2018-06-11 13:09:23', 5);

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
(1, '2018-06-08 12:19:06', 2, 1, 100, 'Pago por Concepto de Mensualidad #1', '2018-06-08 16:19:06', '2018-06-08 16:19:06', 2),
(2, '2018-06-08 16:19:05', 4, 6, 100, 'Pago por Concepto de Mensualidad #1', '2018-06-08 20:19:05', '2018-06-08 20:19:05', 4);

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
(91, 'delete_educadores', 'educadores', '2018-07-21 08:22:02', '2018-07-21 08:22:02');

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
(91, 1);

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
(1, '2018-06-08 14:47:22', 1, 15, '', '2018-06-08 18:47:22', '2018-06-08 21:40:45', 1, 0x31, 1, 0x30),
(2, '2018-06-08 17:57:56', 1, 16, '', '2018-06-08 21:57:56', '2018-06-11 13:09:24', 2, 0x31, 2, 0x30);

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
(1, 1, 1, '2018-06-08 20:19:27', '2018-06-08 20:19:27'),
(2, 1, 2, '2018-06-08 20:19:32', '2018-06-08 20:19:32'),
(3, 1, 3, '2018-06-08 20:19:37', '2018-06-08 20:19:37'),
(4, 1, 4, '2018-06-08 20:19:42', '2018-06-08 20:19:42'),
(5, 2, 7, '2018-06-08 22:10:39', '2018-06-08 22:10:39'),
(6, 2, 6, '2018-06-08 22:10:44', '2018-06-08 22:10:44'),
(7, 2, 5, '2018-06-08 22:10:49', '2018-06-08 22:10:49'),
(8, 2, 8, '2018-06-11 13:01:55', '2018-06-11 13:01:55');

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
(1, '000001/2018', 'Pago por Concepto de Mensualidad #1', '2018-06-08 13:56:08', 100, '100,00 (Cien  00/100 Bolivianos)', '2018-06-08 09:56:08', 1, '2018-06-08 13:56:08', 1),
(2, '000002/2018', 'Pago por Concepto de Mensualidad #1', '2018-06-08 16:19:05', 100, '100,00 (Cien  00/100 Bolivianos)', '2018-06-08 12:19:05', 1, '2018-06-08 16:19:05', 2),
(3, '000003/2018', 'Pago por Concepto de Mensualidad #1', '2018-06-08 20:08:58', 100, '100,00 (Cien  00/100 Bolivianos)', '2018-06-08 16:08:58', 6, '2018-06-08 20:08:58', 3),
(4, '000004/2018', 'Pago por Concepto de Mensualidad #1', '2018-06-08 20:19:05', 100, '100,00 (Cien  00/100 Bolivianos)', '2018-06-08 16:19:05', 6, '2018-06-08 20:19:05', 4),
(5, '000005/2018', 'Pago por Concepto de Mensualidad #1', '2018-06-08 20:42:48', 250, '250,00 (Doscientos cincuenta  00/100 Bolivianos)', '2018-06-08 16:42:48', 6, '2018-06-08 20:42:48', 5),
(6, '000006/2018', 'Pago por Concepto de Mensualidad #1', '2018-06-08 20:45:15', 150, '150,00 (Ciento cincuenta  00/100 Bolivianos)', '2018-06-08 16:45:15', 6, '2018-06-08 20:45:15', 6),
(7, '000007/2018', 'Pago por Concepto de Mensualidad #1', '2018-06-08 22:09:28', 250, '250,00 (Doscientos cincuenta  00/100 Bolivianos)', '2018-06-08 18:09:28', 1, '2018-06-08 22:09:28', 7),
(8, '000008/2018', 'Pago por Concepto de Mensualidad #1', '2018-06-11 12:45:07', 150, '150,00 (Ciento cincuenta  00/100 Bolivianos)', '2018-06-11 08:45:07', 1, '2018-06-11 12:45:07', 8),
(9, '000009/2018', 'Pago por Concepto de Mensualidad #1', '2018-07-17 21:58:57', 250, '250,00 (Doscientos cincuenta  00/100 Bolivianos)', '2018-07-17 17:58:57', 6, '2018-07-17 21:58:57', 9);

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
(2, 'user', 'Normal User', '2018-07-20 18:48:30', '2018-07-20 18:48:30');

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
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

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
  `role_id` int(10) UNSIGNED DEFAULT NULL,
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
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$KEzi5hT.xevsy5S2.NA98.eBWFGTebLBRJFMFEzSF/PCeZIVWE3A2', 'Cd7fiTBbzJkBwpLqB0qYmizTAoQqOKyyBiD8qeXXahuuNhSfKrj6xwzZes8e', NULL, '2018-07-20 18:48:41', '2018-07-20 18:48:41'),
(2, 1, 'luis flores', 'luis..flores@gmail.com', 'users\\July2018\\NedQfDuaTZys4Zm0bVFS.jpg', '$2y$10$./SjwdYaLAY07SFCQVKiweEmdIpT9LeUU5hPEBqxPtlTggJzhh8o6', NULL, '{\"locale\":\"en\"}', '2018-07-21 01:23:55', '2018-07-21 01:23:55');

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `imagenes_insc`
--
ALTER TABLE `imagenes_insc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `imagenes_prog`
--
ALTER TABLE `imagenes_prog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `insc_estados`
--
ALTER TABLE `insc_estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensualidades`
--
ALTER TABLE `mensualidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `profesiones`
--
ALTER TABLE `profesiones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `programaciones`
--
ALTER TABLE `programaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `programacion_estudiante`
--
ALTER TABLE `programacion_estudiante`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `recibos`
--
ALTER TABLE `recibos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
