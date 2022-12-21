-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-12-2022 a las 17:48:23
-- Versión del servidor: 5.7.39-42-log
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbns5qlif7g0mc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'LCD iphone', '2022-11-17 15:25:21'),
(2, 'LCD Samsung', '2022-11-17 15:25:38'),
(3, 'CRICOS', '2022-09-02 22:27:12'),
(4, 'VIDRIOS TRASEROS', '2022-09-03 14:21:13'),
(5, 'LOGOS', '2022-09-09 20:59:40'),
(6, 'ROLLOS DE POLARIZADOS', '2022-07-21 22:22:57'),
(7, 'AROMAS', '2022-09-02 22:24:52'),
(8, 'PARABRISA DELANTERO', '2022-09-05 14:03:33'),
(9, 'ALFOMBRAS', '2022-09-02 22:28:28'),
(10, 'LODERAS', '2022-09-02 22:28:39'),
(11, 'ESPEJOS', '2022-09-02 22:41:15'),
(12, 'LUCES ', '2022-09-02 22:41:32'),
(13, 'VOLANTES', '2022-09-02 22:41:44'),
(14, 'STICKERS', '2022-09-10 17:40:31'),
(15, 'FORROS', '2022-09-02 22:42:26'),
(16, 'TOALLAS', '2022-09-02 22:47:42'),
(17, 'FORROS VOLANTE', '2022-09-07 22:47:30'),
(18, 'FORROS DE ASIENTOS', '2022-09-10 15:11:58'),
(19, 'ESPEJOS', '2022-09-10 17:52:27'),
(20, 'LUCES', '2022-09-10 18:45:13'),
(21, 'ROMPE VIENTO', '2022-09-13 14:18:29'),
(22, 'TAPONES DE LLANTAS', '2022-09-13 15:20:52'),
(23, 'PORTA LLAVES', '2022-09-13 15:22:03'),
(24, 'CINTURON', '2022-09-13 16:00:30'),
(25, 'RESPALDOS', '2022-09-14 20:57:03'),
(26, 'ASIENTOS', '2022-09-14 20:57:11'),
(27, 'MANECILLAS', '2022-09-16 17:46:08'),
(28, 'VENTOLERAS', '2022-09-17 16:59:01'),
(29, 'VENTANILLAS', '2022-10-20 16:45:29'),
(30, 'SLIP', '2022-09-19 15:52:18'),
(31, 'COBERTOR DE PORTA PLACA', '2022-09-21 15:05:46'),
(32, 'VIDRIOS DE PUERTA', '2022-10-05 21:42:23'),
(33, 'COPAS', '2022-11-14 21:18:47'),
(34, 'VICERAS', '2022-11-14 21:49:14'),
(35, 'TITANIO', '2022-11-17 15:19:15'),
(36, 'POLARIZADOS', '2022-12-20 17:05:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'Usuario', 777777, 'usuaria@gmail.com', '7777-7777', 'San miguel ', '2000-01-01', 32, '2022-11-30 14:01:27', '2022-11-30 19:01:27'),
(2, 'wilfredo herrwra', 123546, 'prueba@gmail.com', '7967-0366', 'san miguel', '2000-01-01', 0, '0000-00-00 00:00:00', '2022-09-03 21:25:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(45, 8, 'Fw-2849', 'PARABRISA DELANTERO TOYOTA Scion XB AÑO 2008 AL 2014', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 15:02:42'),
(50, 8, 'Fw-2653', 'PARABRISA DELANTERO Nissan versa 2007 2011 4D 5D', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-09 14:54:14'),
(51, 8, 'Fw-2605', 'PARABRISA DELANTERO KIA RIO  4D 5D AÑO 2006 AL 2011', 'vistas/img/productos/default/anonymous.png', 1, 44, 80, 0, '2022-12-01 17:14:04'),
(52, 8, 'Fw-3507', 'PARABRISA DELANTERO KIA RIO AÑO 2012 AL 2014', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-11-08 22:04:13'),
(53, 8, 'Fw-3370', 'PARABRISA DELANTERO Hyundai Elantra AÑO 2011 AL 2016', 'vistas/img/productos/default/anonymous.png', 2, 45, 80, 1, '2022-10-24 14:04:40'),
(54, 8, 'Fw-2392', 'PARABRISA DELANTERO NISSAN QUEST 2012', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 14:51:34'),
(56, 8, 'Fw-3482 ', 'PARABRISA DELANTERO Hyundai Accent AÑO 2012 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 45, 85, 1, '2022-12-01 17:13:10'),
(59, 8, 'Fw-526', 'PARABRISA DELANTERO Nissan harbody Y frontier Y xterra AÑO 87 AL 2004', 'vistas/img/productos/default/anonymous.png', 2, 40, 75, 4, '2022-12-16 19:07:49'),
(61, 8, 'Fw-2344', 'PARABRISA DELANTERO NISSAN URVAN AÑO 2002 AL 2013', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:50:49'),
(64, 8, 'BT50', 'PARABRISA DELANTERO Mazda serie B', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:50:34'),
(65, 8, 'F500', 'PARABRISA DELANTERO Mitsubishi canter 2010 cabina angosta ', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-05 20:09:39'),
(67, 8, '471', 'PARABRISA DELANTERO Toyota pick up 22R AÑO 84 AL 88', 'vistas/img/productos/default/anonymous.png', 4, 40, 70, 0, '2022-11-30 18:25:03'),
(69, 8, '274', 'PARABRISA DELANTERO RN20 Toyota pick up AÑO 75 AL 79', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 14:07:28'),
(70, 8, '1360', 'PARABRISA DELANTERO Toyota pick up RN50  22R AÑO 84 AL 88 de empaque', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-11-30 18:24:38'),
(71, 8, '2062', 'PARABRISA DELANTERO Isuzu rodeo AÑO 98 AL 2004', 'vistas/img/productos/default/anonymous.png', 0, 40, 75, 0, '2022-11-29 15:06:47'),
(72, 8, '594', 'PARABRISA DELANTERO Isuzu KB90 AÑO 88 AL 2000', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-11-25 14:04:11'),
(73, 8, '1533', 'PARABRISA DELANTERO chevrolet colorado AÑO 2008 AL 2012', 'vistas/img/productos/default/anonymous.png', 2, 40, 75, 0, '2022-09-09 14:48:31'),
(74, 8, '623', 'PARABRISA DELANTERO Toyota pick up RN80 DE EMPAQUE año 89 al 95 ', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 14:13:14'),
(75, 8, '425', 'PARABRISA DELANTERO Toyota land cruiser AÑO  80', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 14:14:16'),
(78, 8, '2172', 'PARABRISA DELANTERO Toyota lite ace AÑO 92 AL 96', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:48:05'),
(79, 8, '547', 'PARABRISA DELANTERO Toyota tercel AÑO 88 AL 90', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 14:51:20'),
(80, 8, '423', 'PARABRISA DELANTERO Toyota STARLETKP60 AÑO 85 AL 89', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 14:52:33'),
(81, 8, '407', 'PARABRISA DELANTERO TOYOTA tercel AÑO 80 AL 83', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 14:54:43'),
(82, 8, 'RH200', ' PARABRISA DELANTERO Hiace techo BAJO AÑO 2005 AL 2018', 'vistas/img/productos/default/anonymous.png', 0, 45, 80, 0, '2022-12-16 18:30:02'),
(84, 8, '2625', 'PARABRISA DELANTERO Toyota rav4 AÑO 2006 AL 2012', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-09 14:47:40'),
(85, 8, '788', 'PARABRISA DELANTERO Toyota tercel AÑO 95 AL 99', 'vistas/img/productos/default/anonymous.png', 1, 44, 80, 0, '2022-11-18 20:21:44'),
(87, 8, '2899', 'PARABRISA DELANTERO Toyota corolla KE130 AÑO 2009 AL 2013', 'vistas/img/productos/default/anonymous.png', 2, 45, 80, 0, '2022-11-28 15:46:06'),
(89, 8, '2682', 'PARABRISA DELANTERO TOYOTA YARIS SEDAN AÑO 2006 AL 2011', 'vistas/img/productos/default/anonymous.png', 2, 45, 80, 0, '2022-09-09 14:46:22'),
(91, 8, '2500', 'PARABRISA DELANTERO Toyota tacoma  AÑO 2005 AL 2018', 'vistas/img/productos/default/anonymous.png', 2, 45, 80, 0, '2022-10-21 17:34:12'),
(92, 8, '2059', 'PARABRISA DELANTERO toyota corolla O PRIMZ AD 5D AÑO 98 AL 2002', 'vistas/img/productos/default/anonymous.png', 3, 43, 75, 1, '2022-11-11 14:17:20'),
(93, 8, '455', 'PARABRISA DELANTERO TOYOTA COROLLA O CAMRY AÑO 84 AL 87', 'vistas/img/productos/default/anonymous.png', 1, 35, 75, 0, '2022-12-01 19:17:52'),
(94, 8, '579', 'PARABRISA DELANTERO TOYOTA COROLLA SPORT AÑO 88 AL  91', 'vistas/img/productos/default/anonymous.png', 1, 35, 75, 0, '2022-09-22 15:17:48'),
(96, 8, '580', 'PARABRISA DELANTERO Toyota corolla AE90 AÑO 89 AL 92', 'vistas/img/productos/default/anonymous.png', 2, 44, 70, 0, '2022-12-01 19:04:00'),
(97, 8, '8003', 'PARABRISA DELANTERO Honda element AÑO 2003 AL  2008', 'vistas/img/productos/default/anonymous.png', 1, 40, 70, 0, '2022-12-05 19:46:56'),
(98, 8, '641', 'PARABRISA DELANTERO honda accord AÑO 90 AL  93', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-05 19:02:29'),
(99, 8, '709', 'PARABRISA DELANTERO Honda civic AÑO 92 AL 95', 'vistas/img/productos/default/anonymous.png', 1, 40, 70, 0, '2022-12-16 19:07:33'),
(100, 8, '3235', 'PARABRISA DELANTERO honda crz AÑO 2013 AL 2014', 'vistas/img/productos/default/anonymous.png', 1, 45, 75, 0, '2022-09-05 16:45:07'),
(101, 8, '2064', 'PARABRISA DELANTERO honda accord 4 PUERTAS AÑO 98 AL 2002', 'vistas/img/productos/default/anonymous.png', 1, 40, 70, 0, '2022-09-08 16:02:16'),
(102, 8, '2358', 'PARABRISA DELANTERO honda accord dos puertas AÑO 2003 AL 2006', 'vistas/img/productos/default/anonymous.png', 1, 40, 70, 0, '2022-09-08 16:19:42'),
(103, 8, '2161', 'PARABRISA DELANTERO Honda s2000', 'vistas/img/productos/default/anonymous.png', 2, 35, 70, 0, '2022-09-05 18:58:52'),
(104, 8, '480', 'PARABRISA DELANTERO honda accord AÑO 84 AL 87', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-09 14:42:19'),
(107, 8, '410', 'PARABRISA DELANTERO Honda civic empaque AÑO 80', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-09 14:42:35'),
(108, 8, '477', 'PARABRISA DELANTERO Honda civic 4 PUERTAS AÑO 84 AL 89', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 16:28:13'),
(109, 8, '3838', 'PARABRISA DELANTERO Toyota corolla KE140 2014 AL 2018', 'vistas/img/productos/default/anonymous.png', 3, 45, 75, 1, '2022-12-10 17:55:30'),
(110, 8, '2900', 'PARABRISA DELANTERO Toyota matrix AÑO 2009 AL 2011', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-08 16:48:53'),
(111, 8, '2314', 'PARABRISA DELANTERO Honda pilot AÑO 2003 AL 2005', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-09 14:41:22'),
(121, 8, '2395', 'PARABRISA DELANTERO Nissan quest AÑO 2013', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 14:40:30'),
(122, 8, '2710', 'PARABRISA DELANTERO Hyundai elantra año 2007 al 2010', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-05 16:21:47'),
(124, 8, '3488', 'PARABRISA DELANTERO Nissan versa AÑO 2012 AL 2018', 'vistas/img/productos/default/anonymous.png', 3, 45, 80, 2, '2022-11-08 19:38:00'),
(127, 8, '2174', 'PARABRISA DELANTERO Toyota prius AÑO 2005', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:40:57'),
(132, 8, 'FW4146', 'PARABRISA DELANTERO NISSAN FRONTIER 4D  AÑO 2016 AL 2020 NP300', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-10-08 15:48:38'),
(133, 8, 'FW3667', ' PARABRISA DELANTERO NISSAN SENTRA B17 AÑO 2013 ACT', 'vistas/img/productos/default/anonymous.png', 2, 45, 80, 0, '2022-12-05 20:03:52'),
(134, 8, 'FW686', 'PARABRISA delantero BMW 4P SERIE 318 AÑO 92 AL 95', 'vistas/img/productos/default/anonymous.png', 0, 35, 80, 1, '2022-11-07 17:18:48'),
(135, 8, '2510', 'PARABRISA DELANTERO Nissan frontier año 2005 al 2017', 'vistas/img/productos/default/anonymous.png', 3, 45, 80, 0, '2022-09-08 18:26:29'),
(138, 8, '3741', 'PARABRISA DELANTERO Subaru 2015', 'vistas/img/productos/default/anonymous.png', 1, 50, 90, 0, '2022-12-06 16:06:52'),
(139, 8, 'FW-3304', 'PARABRISA DELANTERO BMW X3 AÑO 2012', 'vistas/img/productos/default/anonymous.png', 1, 50, 90, 0, '2022-09-08 21:30:32'),
(140, 8, 'FW-3311', 'PARABRISA DELANTERO NISSAN JUKE 2013', 'vistas/img/productos/default/anonymous.png', 2, 50, 85, 0, '2022-09-09 14:38:43'),
(141, 8, 'FW-2365', 'PARABRISA DELANTERO TOYOTA LAIND CRUISER  PRADO 2000 al 2008', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-03 16:41:43'),
(142, 8, 'FW-3087', 'PARABRISA DELANTERO MAZDA 3  4 PUERTAS AÑO 2009 AL 2013', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-08 21:44:30'),
(143, 8, 'FW-3318', 'PARABRISA DELANTERO Kia sportage año 2011 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:33:30'),
(144, 8, 'FW-3395', 'PARABRISA DELANTERO MITSUBISHI OUTLANDER SPORT 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-08 18:43:48'),
(146, 8, 'FW-2584', 'PARABRISA DELANTERO HONDA CIVIC 4 PUERTAS AÑO 2006 AL 2012 ', 'vistas/img/productos/default/anonymous.png', 2, 46, 85, 0, '2022-09-29 14:13:33'),
(147, 8, 'FW-2583', 'PARABRISA DELANTERO HONDA CIVIC 2 PUERTAS AÑO 2006 AL 2012 ', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-09 14:37:35'),
(148, 8, 'FW-3829', 'PARABRISA DELANTERO KIA FORTE 4D 5D HBK AÑO 2014 al 2018', 'vistas/img/productos/default/anonymous.png', 3, 45, 80, 1, '2022-11-18 14:52:44'),
(149, 8, 'FW-3134', 'PARABRISA DELANTERO KIA FORTE  CERATO AÑO 2009 AL 2013 4D 5D Y HBK', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 1, '2022-12-03 16:27:54'),
(150, 8, 'FW-2863', 'PARABRISA DELANTERO SUBARU IMPREZA AÑO 2011', 'vistas/img/productos/default/anonymous.png', 1, 43, 80, 0, '2022-09-08 21:55:22'),
(151, 8, 'FW-2494                                           ', 'PARABRISA DELANTERO KIA SPECTRA AÑO 2004 AL 2009                                                                                                                                                                                                                                                                                                                                                                                                                      ', 'vistas/img/productos/default/anonymous.png', 2, 40, 75, 0, '2022-09-08 21:55:55'),
(152, 8, 'FW-3051', 'PARABRISA DELANTERO KIA SOUL 2009 al 2012', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-02 20:08:18'),
(153, 8, 'FW-4071', 'PARABRISA DELANTERO NISSAN MURANO AÑO 2015', 'vistas/img/productos/default/anonymous.png', 1, 55, 90, 1, '2022-11-12 17:48:31'),
(154, 8, 'FW-2776', 'PARABRISA DELANTERO SUZUKI SX4 AÑO 2002 AL 2007', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-08 21:58:41'),
(155, 8, 'FW-2610', 'PARABRISA DELANTERO SUZUKI SXL7 AÑO 2002 AL 2006', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-08 21:59:09'),
(156, 8, 'FW-2281', 'PARABRISA DELANTERO NISSAN ALTIMA AÑO 2006', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-08 22:00:28'),
(157, 8, 'FW-3898', 'PARABRISA DELANTERO NISSAN ROGUE O X TRAIL 4D HBK AÑO 2014 AL 2020', 'vistas/img/productos/default/anonymous.png', 2, 45, 80, 1, '2022-12-01 17:09:51'),
(158, 8, 'FW-2878', 'PARABRISA DELANTERO NISSAN ROGUE 4D  HBK AÑO 2008 AL 2014', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 1, '2022-12-05 18:26:46'),
(159, 8, 'FW-804', 'PARABRISA DELANTERO KIA SPORTAGE AÑO 95 AL 2004', 'vistas/img/productos/default/anonymous.png', 1, 43, 75, 1, '2022-11-11 14:00:13'),
(160, 8, 'FW-725', 'PARABRISA DELANTERO CHEVROLET GEO PRIZM AÑO 93 AL 97', 'vistas/img/productos/default/anonymous.png', 1, 43, 75, 1, '2022-11-11 14:18:18'),
(163, 8, 'FW-2880', 'PARABRISA DELANTERO TOYOTA SCION XD AÑO 2008 AL 2014', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:34:06'),
(165, 8, 'FW-3318', 'PARABRISA DELANTERO Kia sportage año 2011 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:33:30'),
(166, 8, 'FW-595', 'PARABRISA DELANTERO HONDA CIVIC 4 PUERTAS WAGON AÑO 2016', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 14:33:14'),
(170, 8, 'FW-I20', 'PARABRISA DELANTERO HYUNDAI I20 AÑO 2010', 'vistas/img/productos/default/anonymous.png', 0, 40, 75, 0, '2022-11-29 19:18:47'),
(179, 8, 'FW-H100', 'PARABRISA DELANTERO HYUNDAI H100 PEGADO AÑO 2007 AL 2020', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 1, '2022-11-07 22:49:52'),
(182, 8, 'FW-3844', 'PARABRISA DELANTERO KIA SOUL AÑO 2014 AL 2018', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-08 21:57:38'),
(183, 8, 'FW-4721', 'PARABRISA DELANTERO NISSAN ROGUE SPORT AÑO 2017 AL 2020', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-08 22:00:00'),
(185, 3, 'LKS-02-020', 'CRICOS 3M LONGKES NUMERO 16  1 UNID', 'vistas/img/productos/default/anonymous.png', 15, 1.5, 6, 0, '2022-10-21 19:29:29'),
(186, 3, 'AB-733-12 ', 'CRICO LUTU 2 UNIDADES NUMERO 12', 'vistas/img/productos/default/anonymous.png', 1, 3, 12, 0, '2022-09-06 19:32:05'),
(187, 3, 'AB-733-14', 'CRICO LUTU 2 UNID NUMERO 14', 'vistas/img/productos/default/anonymous.png', 2, 3, 12, 0, '2022-09-24 17:02:23'),
(188, 3, '8821050500867', 'CRICO MUTU 2 UNID NUMERO 16', 'vistas/img/productos/default/anonymous.png', 3, 3, 12, 0, '2022-09-23 21:59:28'),
(189, 3, 'YG018', 'CRICO SOLAMATRIX 1 UNID NUMERO 16', 'vistas/img/productos/default/anonymous.png', 4, 1.5, 6, 0, '2022-09-06 20:25:00'),
(190, 3, 'CRIC', 'CRICO MUTU 2 UNID NUMERO 20', 'vistas/img/productos/default/anonymous.png', 2, 3, 12, 0, '2022-09-06 19:52:09'),
(191, 3, '8821052600060', 'CRICO MUTU 2 UNID NUMERO 24', 'vistas/img/productos/default/anonymous.png', 1, 3, 12, 0, '2022-09-19 14:52:48'),
(192, 3, '6920180420068', 'CRICO MUTU 2 UNID NUMERO 26', 'vistas/img/productos/default/anonymous.png', 7, 3, 12, 0, '2022-09-23 21:59:14'),
(193, 3, 'CR', 'CRICO ACRACING 2 UNID NUMERO 20', 'vistas/img/productos/default/anonymous.png', 0, 3, 12, 0, '2022-11-10 21:43:29'),
(194, 3, 'ACBOS-22', 'CRICO ACRACING 2 UNID NUMERO 22', 'vistas/img/productos/default/anonymous.png', 1, 3, 12, 0, '2022-09-14 18:02:11'),
(195, 3, 'CRI', 'CRICO ACRACING 2 UNID NUMERO 16', 'vistas/img/productos/default/anonymous.png', 1, 3, 12, 0, '2022-10-05 22:43:37'),
(197, 3, 'WIP-067', 'CRICO WIPER 2 UNID NUMERO 20', 'vistas/img/productos/default/anonymous.png', 2, 3, 12, 0, '2022-09-06 23:16:20'),
(198, 3, 'LKS-02-021', 'CRICO 3 M LANGKES 1 UNID NUMERO 18', 'vistas/img/productos/default/anonymous.png', 6, 1.5, 6, 0, '2022-09-30 22:02:54'),
(199, 3, 'LKS-02-022', 'CRICO 3 M LANGKES 1 UNID NUMERO 20', 'vistas/img/productos/default/anonymous.png', 10, 1.5, 6, 0, '2022-10-07 15:12:16'),
(200, 3, 'LKS-02-023', 'CRICO 3 M LANGKES 1 UNID NUMERO 22', 'vistas/img/productos/default/anonymous.png', 9, 1.5, 6, 0, '2022-10-06 16:05:47'),
(201, 3, 'WIP-013-YU', 'ADAPTADOR DE CRICO YOUEN PLUMILLA AERODINAMICA NUMERO 26  ', 'vistas/img/productos/default/anonymous.png', 9, 2, 12, 0, '2022-09-06 20:34:34'),
(202, 3, '8821052600053', 'CRICO MUTU 2 UNID NUMERO 22', 'vistas/img/productos/default/anonymous.png', 4, 3, 12, 0, '2022-09-19 14:52:21'),
(203, 8, 'FW-413', 'PARABRISA DELANTERO NISSAN 720 4D AÑO 79 AL 87', 'vistas/img/productos/default/anonymous.png', 1, 38, 75, 0, '2022-10-21 18:04:42'),
(204, 8, 'FW-2179', 'PARABRISA DELANTERO NISSAN SENTRA B15 AÑO 2001 AL 2006', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:31:08'),
(205, 8, 'FW-801', 'PARABRISA DELANTERO NISSAN SENTRA B14 AÑO 96 AL 2000 ', 'vistas/img/productos/default/anonymous.png', 0, 40, 75, 0, '2022-12-08 21:17:03'),
(206, 8, 'FW-643', 'PARABRISA DELANTERO  MAZDA 323 AÑO 96', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 16:24:54'),
(207, 8, 'FW-2275', 'PARABRISA DELANTERO MITSUBISHI LANCER AÑO 2001 AL 2007', 'vistas/img/productos/default/anonymous.png', 2, 40, 75, 1, '2022-10-07 16:08:09'),
(208, 8, 'FW-2833', 'PARABRISA DELANTERO MITSUBISHI LANCER AÑO 2008 AL 2018', 'vistas/img/productos/default/anonymous.png', 3, 45, 80, 0, '2022-11-11 14:03:24'),
(209, 8, 'FW-510', 'PARABRISA DELANTERO NISSAN STANZA WAGON  AÑO 86 AL 89', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 16:45:14'),
(210, 8, 'FW-432', 'PARABRISA DELANTERO NISSAN STANZA 4 PUERTAS AÑO 86 AL 89', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 16:46:51'),
(211, 8, 'FW-645', 'PARABRISA DELANTERO NISSAN STANZA AÑO 90 AL 94', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 16:49:28'),
(212, 8, 'FW-2391', 'PARABRISA DELANTERO NISSAN TITAN AÑO 2004 AL 2012', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-09 14:29:39'),
(213, 8, 'FW-441', 'PARABRISA DELANTERO NISSAN SENTRA B11 CAMIONETILLA AÑO 82 AL 94', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 17:06:47'),
(214, 8, 'FW-2315', 'PARABRISA DELANTERO LAND ROVER AÑO 2003', 'vistas/img/productos/default/anonymous.png', 1, 40, 70, 0, '2022-09-09 14:29:22'),
(215, 8, 'FW-2480', 'PARABRISA DELANTERO VOLKWAGEN FOX AÑO 2006 AL 2009', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:29:03'),
(217, 8, 'FW-772', 'PARABRISA DELANTERO NISSAN PATROL AÑO 2000', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:28:52'),
(218, 8, 'FW-1200', 'PARABRISA DELANTERO NISSAN 1200 AÑO 90', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 17:21:49'),
(219, 8, 'FW-2541', 'PARABRISA DELANTERO MITSUBISHI CANTER AÑO 2006', 'vistas/img/productos/default/anonymous.png', 2, 50, 85, 0, '2022-11-10 22:49:51'),
(220, 8, 'FW-628', 'PARABRISA DELANTERO MITSUBISHI FUSO 8 TONELADAS AÑO 94 AL 96', 'vistas/img/productos/default/anonymous.png', 2, 50, 85, 0, '2022-10-25 14:51:19'),
(221, 8, 'FW-3843', 'PARABRISA DELANTERO MITSUBISHI MIRAGE 4 PUERTAS SEDAN HACKBACK AÑO 2014 AL 2019', 'vistas/img/productos/default/anonymous.png', 3, 45, 90, 1, '2022-11-03 16:35:46'),
(222, 8, 'FW-383', 'PARABRISA DELANTERO MITSUBISHI L200 AÑO 83', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 17:30:51'),
(223, 8, 'FW-567', 'PARABRISA DELANTERO MITSUBISHI FUSO AÑO 91 AL 95', 'vistas/img/productos/default/anonymous.png', 1, 50, 80, 0, '2022-09-09 14:28:02'),
(224, 8, 'FW-497', 'PARABRISA DELANTERO MITSUBISHI COLT VISTA AÑO 86 AL 90', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-07 17:36:30'),
(225, 8, 'FW-', 'TOYOTA VIGO AÑO 2006 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 13:54:45'),
(227, 8, 'FW-3841', 'PARABRISA DELANTERO MAZDA 3 SEDAN AÑO 2014 AL 2017', 'vistas/img/productos/default/anonymous.png', 1, 45, 85, 0, '2022-09-09 14:27:40'),
(228, 8, 'FW-2461', 'PARABRISA DELANTERO MAZDA 3    4 PUERTAS AÑO 2004 AL 2008', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-02 21:44:36'),
(229, 8, 'FW-2335', 'PARABRISA DELANTERO ISUZU NKR CABINA ANGOSTA AÑO 96 AL 2020', 'vistas/img/productos/default/anonymous.png', 2, 55, 90, 0, '2022-11-11 14:13:41'),
(230, 8, 'FW-1002', 'PARABRISA DELANTERO ISUZU FORDWARD GMC AÑO 85 al 94 SILVIN CUADRADO', 'vistas/img/productos/default/anonymous.png', 1, 55, 85, 0, '2022-12-02 20:20:40'),
(232, 8, 'FW-1953', 'PARABRISA DELANTERO DODGE DART AÑO 2015                                                                    ', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-12-02 21:46:16'),
(233, 8, 'FW-822', 'PARABRISA DELANTERO HONDA CIVIC AÑO 95 AL 2000 2 PUERTAS', 'vistas/img/productos/default/anonymous.png', 1, 45, 75, 0, '2022-12-06 16:00:37'),
(234, 8, 'FW-2077', 'PARABRISA DELANTERO DAEWOO NUBIRA AÑO 96 AL 2000', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 19:17:18'),
(235, 8, 'FW-1231', 'PARABRISA DELANTERO NPR PEGADO AÑO 2000 AL 2020', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-12-07 20:52:59'),
(236, 8, 'FW-675', 'PARABRISA DELANTERO ISUZU STYLUS AÑO 91 AL 93', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 19:37:25'),
(237, 8, 'FW-3137', 'PARABRISA DELANTERO KIA SORENTO AÑO 2009 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 14:24:51'),
(238, 8, 'FW-2499', 'PARABRISA DELANTERO CHEVROLET SILVERADO AÑO 2015', 'vistas/img/productos/default/anonymous.png', 1, 70, 100, 0, '2022-09-09 14:25:19'),
(239, 8, 'FW-1824', 'PARABRISA DELANTERO CHEVROLET EQUINOX AÑO 2010 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-27 16:06:34'),
(240, 8, 'FW-DMX13', 'PARABRISA DELANTERO ISUZU DMAX AÑO 2014 AL 2021', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 1, '2022-12-01 17:10:43'),
(241, 8, 'FW-2166', 'PARABRISA DELANTERO CHEVROLET COLORADO AÑO 2020', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 14:16:03'),
(242, 8, 'FW-3005', 'PARABRISA DELANTERO MITSUBISHI L200 SPORTERO AÑO 2006 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 85, 1, '2022-11-11 14:05:27'),
(243, 8, 'FW-422', 'PARABRISA DELANTERO ISUZU PUP AÑO 85', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-12-09 17:21:11'),
(244, 8, 'FW-952', 'PARABRISA DELANTERO JEEP CHEROKE  COMANCHE AÑO 86 AL 93', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 20:15:38'),
(245, 8, 'FW-711', 'PARABRISA DELANTERO MITSUBISHI MONTERO AÑO 92 AL 98', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 20:16:59'),
(246, 8, 'FW-483', 'PARABRISA DELANTERO ISUZU TROOPER AÑO 84 AL 91', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 1, '2022-11-11 14:04:18'),
(247, 8, 'FW-1662', 'PARABRISA DELANTERO JEEP COMPASS AÑO 2006 AL 2017', 'vistas/img/productos/default/anonymous.png', 3, 45, 85, 1, '2022-11-11 14:08:25'),
(248, 8, 'FW-1682', 'PARABRISA DELANTERO JEEP PATRIOT AÑO  2007 AL 2015', 'vistas/img/productos/default/anonymous.png', 2, 45, 85, 1, '2022-11-08 21:15:17'),
(249, 8, 'FW-548', 'PARABRISA DELANTERO MITSUBISHI L200 AÑO 90 AL 95', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 14:49:27'),
(250, 8, 'FW-573', 'PARABRISA DELANTERO DAEWOO RICER AÑO 95', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 20:47:33'),
(251, 8, 'FW-FINO', 'PARABRISA DELANTERO DAEWOO FINO AÑO 2000', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:15:41'),
(252, 8, 'FW-728', 'PARABRISA DELANTERO VOLKWAGEN GOLF AÑO 95 AL 98', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:13:44'),
(253, 8, 'FW-2278', 'PARABRISA DELANTERO JEEP RENEGADE AÑO 2015', 'vistas/img/productos/default/anonymous.png', 2, 50, 90, 0, '2022-11-15 17:51:18'),
(254, 8, 'FW-818', 'PARABRISA DELANTERO CHEVROLET SILVERADO AÑO 73 AL 91', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-09 14:12:59'),
(255, 8, 'FW-549', 'CHEVROLET SPRINT AÑO 86 AL 2000', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 21:25:35'),
(256, 8, 'FW-KIA', 'PARABRISA DELANTERO KIA SEPHIA  AÑO 90 AL 94', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-07 21:27:37'),
(257, 8, 'FW-618', 'PARABRISA DELANTERO GEO METRO 4 PUERTAS AÑO 82 AL 94', 'vistas/img/productos/default/anonymous.png', 2, 40, 80, 0, '2022-09-07 21:29:36'),
(259, 8, 'FW-501', 'PARABRISA DELANTERO MAZDA PICK UP AÑO 88', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:14:00'),
(260, 8, 'FW-1747', 'PARABRISA DELANTERO F150 PICK UP AÑO 2009 AL 2014', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 14:12:31'),
(263, 8, 'FW-828', 'PARABRISA DELANTERO FORD 7000 AÑO DEL 90 AL 96', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:11:55'),
(264, 8, 'FW-2154', 'PARABRISA DELANTERO FORD F150 AÑO 2016', 'vistas/img/productos/default/anonymous.png', 1, 55, 90, 0, '2022-09-09 14:11:36'),
(265, 8, 'FW-246', 'PARABRISA DELANTERO FORD COURIER AÑO 80 AL 88', 'vistas/img/productos/default/anonymous.png', 2, 40, 80, 0, '2022-09-07 22:29:59'),
(266, 8, 'FW-1417', 'PARABRISA DELANTERO FORD EXPLORER AÑO 2000 AL 2009', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-09 14:11:19'),
(267, 8, 'FW-1150', 'PARABRISA DELANTERO FORD RANGER AÑO 98 AL 2005', 'vistas/img/productos/default/anonymous.png', 2, 45, 80, 0, '2022-09-09 14:10:41'),
(276, 8, 'FW-RH200ALTO', 'PARABRISA DELANTERO HIACE RH200 TECHO ALTO AÑO 2005 AL 2018', 'vistas/img/productos/default/anonymous.png', 1, 45, 85, 0, '2022-09-09 14:09:12'),
(277, 8, 'FW-2268', 'PARABRISA DELANTERO TOYOTA CAMRRY', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-08 15:04:23'),
(278, 8, 'FW-598', 'PARABRISA DELANTERO TOYOTA PICK UP RN80 AÑO 89 AL 95', 'vistas/img/productos/default/anonymous.png', 2, 35, 70, 0, '2022-12-01 18:58:47'),
(279, 8, 'FW-3780', ' PARABRISA DELANTERO NISSAN VERSA NOTE 4PUERTAS AÑO 2014 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 45, 85, 0, '2022-09-09 14:09:40'),
(280, 8, 'FW-775', 'PARABRISA DELANTERO Hyundai sonata AÑO 95 AL 98', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-08 17:02:06'),
(281, 8, 'FW-2303', 'PARABRISA DELANTERO Hyundai tiburon AÑO 2003 AL 2004', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-08 17:03:55'),
(282, 8, 'FW-DYNA', 'PARABRISA DELANTERO TOYOTA DYNA CABINA ANCHA AÑO 2006', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 14:08:49'),
(284, 8, 'FW-779', 'PARABRISA DELANTERO CHEVROLET MONZA AÑO 98 AL 2002', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-08 18:42:48'),
(285, 8, 'FW-SPARK ', 'PARABRISA DELANTERO CHEVROLET SPARK AÑO 2011 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-08 21:20:41'),
(286, 8, 'FW-SPARK2010', 'PARABRISA DELANTERO CHEVROLET SPARK 2010', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 14:08:24'),
(287, 8, 'FW-PATHFINDER', 'PARABRISA DELANTERO NISSAN PATHFINDER AÑO 2016', 'vistas/img/productos/default/anonymous.png', 1, 55, 95, 0, '2022-09-08 21:36:15'),
(288, 8, 'FW-K', 'PARABRISA DELANTERO KIA K2700 DE EMPAQUE AÑO 2007 AL 2020', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-19 14:16:34'),
(289, 8, 'FW-K3000', 'PARABRISA DELANTERO  K3000 PEGADO', 'vistas/img/productos/default/anonymous.png', 3, 45, 75, 0, '2022-12-01 19:53:11'),
(291, 8, 'FW-DB9991', 'PARABRISA DELANTERO JEEP LIBERTY AÑO 2002 AL 2007', 'vistas/img/productos/default/anonymous.png', 0, 45, 90, 0, '2022-09-27 14:01:53'),
(293, 8, 'FW-663', 'PARABRISA DELANTERO NISSAN SENTRA 4D 5D AÑO 91 AL 95', 'vistas/img/productos/default/anonymous.png', 1, 38, 70, 0, '2022-09-09 14:00:05'),
(294, 8, 'FW-2298', 'PARABRISA DELANTERO TOYOTA COROLLA 4D 5D ALO 2004 AL 2008', 'vistas/img/productos/default/anonymous.png', 1, 44, 75, 1, '2022-12-03 16:01:21'),
(295, 8, 'FW-397', 'PARABRISA DELANTERO TOYOTA HILUX RN30 AÑO 79 AL 83', 'vistas/img/productos/default/anonymous.png', 3, 35, 70, 0, '2022-12-01 18:58:11'),
(296, 8, 'FW-2042', 'PARABRISA DELANTERO MITSUBISHI MONTERO L200 AÑO 97 AL 2005', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 14:06:04'),
(297, 8, 'FW-1397', 'PARABRISA DELANTERO FORD ESCAPE  MAZDA TRIBUTE 4D HBK AÑO 2001 AL 2012', 'vistas/img/productos/default/anonymous.png', 1, 42, 75, 1, '2022-12-16 19:03:37'),
(298, 8, 'FW-592', 'PARABRISA DELANTERO daihatsu charade 4 PUERTAS  AÑO 88 AL 92', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-09 15:42:23'),
(299, 8, 'FW-2128', 'PARABRISA DELANTERO PEUGEOT 306  4 PUERTAS SEDAN AÑO 2001 AL 2006', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 15:50:29'),
(300, 8, 'FW-581', 'PARABRISA DELANTERO MAZDA 6 AÑO 84', 'vistas/img/productos/default/anonymous.png', 1, 35, 70, 0, '2022-09-09 15:54:10'),
(301, 8, 'FW-2101', 'PARABRISA DELANTERO BMW 330 AÑO 2001 AL 2004', 'vistas/img/productos/default/anonymous.png', 1, 50, 85, 0, '2022-09-09 16:00:56'),
(303, 8, 'FW-2581', 'PARABRISA DELANTERO MITSUBISHI ECLIPSE  AÑO 2006 AL 2008', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-09 16:03:48'),
(304, 1, '7404003390367', 'PORTA PLACA NISSAN', 'vistas/img/productos/default/anonymous.png', 0, 3, 10, 0, '2022-09-26 13:51:17'),
(305, 1, '7404003390381', 'PORTA PLACA HONDA', 'vistas/img/productos/default/anonymous.png', 3, 3, 10, 0, '2022-09-21 14:58:46'),
(306, 1, '7404003390732', 'PORTA PLACA VOLKSWAGEN', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-09-09 17:03:39'),
(307, 1, '7404003390442', 'PORTA PLACA TOYOTA', 'vistas/img/productos/default/anonymous.png', 8, 3, 10, 0, '2022-09-09 17:04:51'),
(308, 1, 'ACCU052469', 'PORTA PLACA HYUNDAI', 'vistas/img/productos/default/anonymous.png', 6, 3, 10, 0, '2022-09-09 17:05:46'),
(309, 1, '7404003390350', 'PORTA PLACA MITSUBISHI', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-09-09 17:06:37'),
(310, 1, 'ACCU052152', 'PORTA PLACA BMW', 'vistas/img/productos/default/anonymous.png', 10, 3, 10, 0, '2022-09-09 17:07:18'),
(311, 1, 'TRD4X4', 'PORTA PLACA TRD 4X4', 'vistas/img/productos/default/anonymous.png', 10, 3, 10, 0, '2022-09-09 17:08:10'),
(312, 1, '7404003390398', 'PORTA PLACA MAZDA', 'vistas/img/productos/default/anonymous.png', 7, 3, 10, 0, '2022-09-21 14:59:05'),
(313, 1, '7404003390428', 'PORTA PLACA KIA', 'vistas/img/productos/default/anonymous.png', 5, 3, 10, 0, '2022-09-09 17:27:43'),
(314, 1, 'INIZIO', 'PORTA PLACA INIZIO TUNING', 'vistas/img/productos/default/anonymous.png', 8, 3, 10, 0, '2022-09-09 17:28:26'),
(315, 1, '22668-E16', 'PORTA PLACA TRD TOYOTA RACING DEVELOPMENT COLOR BLANCO', 'vistas/img/productos/default/anonymous.png', 4, 3, 10, 0, '2022-09-09 17:29:41'),
(316, 1, '22670-E16', 'PORTA PLACA TRD SPORT', 'vistas/img/productos/default/anonymous.png', 4, 3, 10, 0, '2022-09-21 15:04:26'),
(317, 1, '17154-E1', 'PORTA PLACA XT RACING SKUNK2', 'vistas/img/productos/default/anonymous.png', 3, 3, 10, 0, '2022-09-09 17:37:31'),
(318, 1, '22669-E16', 'PORTA PLACA TRD TOYOTA RACING DEVELOPMENT COLOR ROSADO', 'vistas/img/productos/default/anonymous.png', 4, 3, 10, 0, '2022-09-21 15:04:07'),
(320, 1, '17152-E1', 'PORTA PLACA XT RACING SKUNK2', 'vistas/img/productos/default/anonymous.png', 3, 3, 10, 0, '2022-09-09 17:42:05'),
(321, 1, '1101152513253', 'PORTA PLACA honda', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-20 15:28:47'),
(322, 1, '1101152513253', 'PORTA PLACA honda', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-20 15:28:47'),
(323, 1, '1101152513253', 'PORTA PLACA honda', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-20 15:28:47'),
(324, 1, '1101152513253', 'PORTA PLACA honda', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-20 15:28:47'),
(325, 1, '1101152513253', 'PORTA PLACA honda', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-20 15:28:47'),
(326, 1, '1101152513253', 'PORTA PLACA honda', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-20 15:28:47'),
(327, 1, '1101152513253', 'PORTA PLACA honda', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-20 15:28:47'),
(328, 7, '7501088401817', 'AROMATIZANTE SPRAY', 'vistas/img/productos/default/anonymous.png', 9, 1, 5, 0, '2022-09-23 14:39:39'),
(329, 7, '7501088401046', 'AROMATIZANTE GRANDE', 'vistas/img/productos/default/anonymous.png', 21, 1, 3.5, 0, '2022-09-09 19:48:53'),
(330, 7, '7501088401336', 'AROMATIZANTE 3 EN 1', 'vistas/img/productos/default/anonymous.png', 11, 1, 3.5, 0, '2022-09-10 16:08:31'),
(331, 7, '7617152732', 'AROMATIZANTE LITTLE TREE', 'vistas/img/productos/default/anonymous.png', 7, 1, 5, 1, '2022-10-07 17:06:30'),
(332, 7, '76171111110105', 'AROMATIZANTE TREE CARTON', 'vistas/img/productos/default/anonymous.png', 23, 1, 3.5, 0, '2022-09-09 20:27:41'),
(334, 5, 'LOGO', 'LOGO MEDIANO NISSAN', 'vistas/img/productos/default/anonymous.png', 4, 5, 10, 0, '2022-09-26 18:34:40'),
(337, 5, 'LOGP', 'LOGO LETRA SENTRA', 'vistas/img/productos/default/anonymous.png', 5, 5, 10, 0, '2022-09-09 21:08:31'),
(358, 18, 'ASIENTO', 'FORRO DE ASIENTO NISSAN ROGUE 2008 AL 2013 COLOR ROJO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:19:00'),
(359, 18, 'ASIENTO', 'FORRO DE ASIENTO KIA FORTE 2014 AL 2016 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:22:25'),
(360, 18, 'ASIENTO', 'FORRO DE ASIENTO TOYOTA COROLLA 2009 AL 2013 COLOR ROJO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:23:53'),
(361, 18, 'ASIENTO', 'FORRO DE ASIENTO KIA FORTE 2014 AL 2016 COLOR ROJO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:25:30'),
(362, 18, 'ASIENTO', 'FORRO DE ASIENTO TOYOTA COROLLA 2009 AL 2013 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:26:27'),
(363, 18, 'ASIENTO', 'FORRO DE ASIENTO NISSAN ROGUE 2008 AL 2013 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:29:59'),
(364, 18, 'ASIENTO', 'FORRO DE ASIENTO VIGO DC  2006 AL 2015 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:33:11'),
(365, 18, 'ASIENTO', 'FORRO DE ASIENTO  COROLLA REVO DC INTERMEDIO 2016 AL 2022 COLOR ROJO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:42:49'),
(366, 18, 'ASIENTO', 'FORRO DE ASIENTO NISSAN ROGUE 2014 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:58:30'),
(367, 18, 'ASIENTO', 'FORRO DE ASIENTO TOYOTA COROLLA CON PORTA VASO 2014 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 15:59:25'),
(368, 18, 'ASIENTO', 'FORRO DE ASIENTO TOYOTA COROLLA 2014 AL 2018 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 16:00:17'),
(369, 18, 'ASIENTO', 'FORRO DE ASIENTO NISSAN MURANO 2017 COLOR ROJO', 'vistas/img/productos/default/anonymous.png', 1, 80, 130, 0, '2022-09-10 16:07:29'),
(370, 18, 'ASIENTO UNIVERSAL', 'FORRO DE ASIENTO UNIVERSAL ', 'vistas/img/productos/default/anonymous.png', 3, 15, 30, 0, '2022-09-10 16:08:09'),
(372, 14, 'STICKER', 'STICKER DE ESTRELLA', 'vistas/img/productos/default/anonymous.png', 4, 0, 5, 0, '2022-09-10 17:41:17'),
(373, 14, 'STICKER', 'STICKER DE PULSACIONES CARDIACAS', 'vistas/img/productos/default/anonymous.png', 4, 0, 2, 0, '2022-09-10 17:42:05'),
(374, 14, 'STICKER', 'STICKER LOGO COROLLA', 'vistas/img/productos/default/anonymous.png', 2, 1, 3, 0, '2022-09-10 17:42:51'),
(375, 14, 'STICKER', 'STICKER 4X4', 'vistas/img/productos/default/anonymous.png', 1, 1, 5, 0, '2022-09-10 17:43:26'),
(376, 14, 'STICKER', 'STICKER LOGO HYUNDAI', 'vistas/img/productos/default/anonymous.png', 4, 0, 3, 0, '2022-09-10 17:45:13'),
(377, 14, 'STICKER', 'STICKER CORAZON PATITA', 'vistas/img/productos/default/anonymous.png', 4, 1, 2, 0, '2022-09-10 17:45:49'),
(378, 14, 'STICKER', 'STICKER S V', 'vistas/img/productos/default/anonymous.png', 2, 1, 5, 0, '2022-09-10 17:46:27'),
(379, 14, 'STICKER', 'STICKER GRISES BRILLANTE', 'vistas/img/productos/default/anonymous.png', 7, 1, 3, 0, '2022-09-10 17:47:09'),
(380, 14, 'STICKER', 'STICKER LETRA FRONTIER PAR', 'vistas/img/productos/default/anonymous.png', 2, 1, 5, 0, '2022-09-10 17:48:14'),
(381, 14, 'STICKER', 'STICKER LETRA HYUNDAI PAR', 'vistas/img/productos/default/anonymous.png', 1, 1, 5, 0, '2022-09-10 17:48:56'),
(382, 14, 'STICKER', 'STICKER LETRA TACOMA', 'vistas/img/productos/default/anonymous.png', 3, 0, 2, 0, '2022-09-10 17:49:32'),
(383, 14, 'STICKER', 'STICKER LETRA TOYOTA PAR', 'vistas/img/productos/default/anonymous.png', 2, 1, 3, 0, '2022-09-10 17:50:17'),
(384, 14, 'STICKER', 'STICKER CALAVERA', 'vistas/img/productos/default/anonymous.png', 6, 1, 3, 0, '2022-09-10 17:51:01'),
(385, 14, 'STICKER', 'STICKER LOGO APPLE', 'vistas/img/productos/default/anonymous.png', 5, 1, 2, 0, '2022-09-10 17:51:33'),
(386, 19, 'ESPEJITO', 'ESPEJITO REDONDO', 'vistas/img/productos/default/anonymous.png', 4, 0, 1, 0, '2022-09-10 17:53:04'),
(387, 5, '8632512002120', 'LOGO HONDA PEQUEÑO FONDO ROJO', 'vistas/img/productos/default/anonymous.png', 9, 1, 5, 0, '2022-10-03 16:29:48'),
(388, 7, 'AROMA', 'AROMATIZANTE FRASQUITO', 'vistas/img/productos/default/anonymous.png', 7, 1, 2, 0, '2022-10-03 18:41:50'),
(389, 12, '863251202491', 'LUCES LED OY AUTO', 'vistas/img/productos/default/anonymous.png', 2, 5, 12, 0, '2022-09-10 18:46:05'),
(390, 12, '863251202444', 'LUCES LED DAYTIME', 'vistas/img/productos/default/anonymous.png', 6, 5, 12, 0, '2022-09-10 18:47:52'),
(391, 21, 'ROMPE', 'ROMPE VIENTO COROLLA HILUX VIGO COLOR GRIS', 'vistas/img/productos/default/anonymous.png', 1, 0, 80, 0, '2022-09-13 14:20:04'),
(392, 22, '5678988821099', 'TAPONES DE LLANTAS', 'vistas/img/productos/default/anonymous.png', 2, 1, 5, 0, '2022-09-21 18:45:25'),
(393, 23, 'PORTA', 'PORTA LLAVE GRUESA', 'vistas/img/productos/default/anonymous.png', 4, 1, 3, 0, '2022-09-13 15:30:15'),
(394, 23, 'PORTA', 'PORTA LLAVE DELGADA', 'vistas/img/productos/default/anonymous.png', 5, 1, 3, 0, '2022-09-13 15:30:46'),
(395, 21, 'ROMPE', 'ROMPE VIENTO TOYOTA COROLLA COLOR GRIS', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:33:18'),
(396, 21, 'ROMPE', 'ROMPE VIENTO NISSAN ROGUE AÑO 2008 COLOR GRIS', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:34:16'),
(397, 21, 'ROMPE', 'ROMPE VIENTO NISSAN NP300 AÑO 2016 COLOR GRIS', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:35:19'),
(398, 21, 'ROMPE', 'ROMPE VIENTO NISSAN NP300 AÑO 2016 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:36:16'),
(399, 21, 'ROMPE', 'ROMPE VIENTO MITSUBISHI COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:36:59'),
(400, 21, 'ROMPE', 'ROMPE VIENTO TOYOTA COROLLA COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:38:14'),
(401, 21, 'ROMPE', 'ROMPE VIENTO NISSAN ROGUE AÑO 2010 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:39:16'),
(402, 21, 'ROMPE', 'ROMPR VIENTO TOYOTA COROLLA 4RUNNER COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:40:13'),
(403, 21, 'ROMPE', 'ROMPE VIENTO TOYOTA COROLLA HILUX COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:41:08'),
(404, 21, 'RV-9', 'ROMPE VIENTO COROLLA HILUX AÑO 2022 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-09-13 15:42:29'),
(405, 21, 'RV4-1', 'ROMPE VIENTO MITSUBISHI L200 AÑO 2012 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:44:56'),
(406, 21, 'ROMPE', 'ROMPE VIENTO HONDA PILOT AÑO 2010 COLOR NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:47:02'),
(407, 21, 'ROMPE', 'ROMPE VIENTO ESCAPE AÑO 2008 COLOR GRIS LINEAS NEGRAS', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-13 15:47:51'),
(408, 19, '68220422', 'ESPEJOS DE RETROVISOR BROADWAY', 'vistas/img/productos/default/anonymous.png', 2, 5, 15, 0, '2022-09-13 15:52:55'),
(409, 19, '6822042200248', 'ESPEJO DE RETROVISOR FLAT MIRROR', 'vistas/img/productos/default/anonymous.png', 2, 5, 10, 0, '2022-09-13 15:56:09'),
(410, 12, '863251202199', 'LUCES LETRA LED FLEXIBLE COB KIA', 'vistas/img/productos/default/anonymous.png', 2, 3, 7, 0, '2022-09-13 15:57:44'),
(411, 20, '863251202199', 'LUCES LETRA LED FLEXIBLE COB MITSUBISHI', 'vistas/img/productos/default/anonymous.png', 1, 3, 7, 0, '2022-09-13 15:59:06'),
(412, 20, '863251202199', 'LUCES LETRA LED FLEXIBLE COB HONDA', 'vistas/img/productos/default/anonymous.png', 1, 3, 7, 0, '2022-09-13 16:00:02'),
(413, 24, 'XQ-996', 'ENGAÑADOR DE CINTURON', 'vistas/img/productos/default/anonymous.png', 5, 1, 5, 0, '2022-09-13 16:01:10'),
(414, 20, '863251202207', 'LUCES LED LOGO MITSUBISHI', 'vistas/img/productos/default/anonymous.png', 1, 3, 7, 0, '2022-09-13 16:03:00'),
(415, 20, 'LED', 'LUCES CON LETRA LED TOYOTA', 'vistas/img/productos/default/anonymous.png', 2, 1, 7, 0, '2022-09-13 16:04:04'),
(416, 9, 'REVO', 'ALFOMBRA JUEGO TOYOTA REVO ORIGINAL', 'vistas/img/productos/default/anonymous.png', 1, 40, 65, 0, '2022-09-13 17:22:49'),
(417, 9, 'HILUX', 'ALFOMBRA JUEGO HILUX ORIGINAL', 'vistas/img/productos/default/anonymous.png', 1, 40, 65, 0, '2022-09-13 17:23:56'),
(419, 9, 'ALUMINIO', 'ALFOMBRA JUEGO DE ALUMINIO ', 'vistas/img/productos/default/anonymous.png', 1, 10, 18, 0, '2022-09-13 17:26:21'),
(484, 9, 'ACCU066232', 'ALFOMBRA JUEGO RACINGTEC', 'vistas/img/productos/default/anonymous.png', 2, 15, 25, 1, '2022-10-06 20:52:33'),
(488, 26, 'ASIENTO', 'ASIENTO NEGRO CON AMARILLO', 'vistas/img/productos/default/anonymous.png', 1, 9, 20, 0, '2022-09-14 20:58:26'),
(489, 26, 'ASIENTO', 'ASIENTO CELESTE CON NARANJA', 'vistas/img/productos/default/anonymous.png', 1, 14, 27, 0, '2022-09-14 20:59:05'),
(490, 26, 'ASIENTO', 'ASIENTO VERDE CON ROJO', 'vistas/img/productos/default/anonymous.png', 1, 14, 27, 0, '2022-09-14 20:59:43'),
(491, 9, 'ALFOMBRA', 'ALFOMBRA JUEGO MOMO ITALY', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-09-14 21:04:55'),
(492, 9, 'ALFOMBRA', 'ALFOMBRA JUEGO RAV4', 'vistas/img/productos/default/anonymous.png', 1, 27, 65, 0, '2022-09-14 21:30:17'),
(494, 9, 'ALFOMBRAS', 'ALFOMBRAS NEGRAS NORMALES', 'vistas/img/productos/default/anonymous.png', 2, 14, 35, 0, '2022-09-26 15:33:22'),
(495, 9, 'ALFOMBRA', 'ALFOMBRA SENCILLA NEGRA', 'vistas/img/productos/default/anonymous.png', 1, 9, 18, 0, '2022-09-14 21:35:22'),
(496, 9, 'ALFOMBRA', 'ALFOMBRA GRIS CON LOGO DE COROLLA', 'vistas/img/productos/default/anonymous.png', 1, 6, 16, 0, '2022-09-14 21:36:12'),
(534, 9, 'ALFOMBRA', 'ALFOMBRA JUEGO TRD', 'vistas/img/productos/default/anonymous.png', 1, 19, 35, 0, '2022-09-16 15:59:18'),
(535, 25, 'RESPALDOS', 'RESPALDO DE PELOTITAS', 'vistas/img/productos/default/anonymous.png', 3, 10, 20, 0, '2022-09-24 19:22:59'),
(536, 10, 'LODERA', 'LODERA NISSAN PAR', 'vistas/img/productos/default/anonymous.png', 1, 10, 20, 0, '2022-09-16 16:27:56'),
(537, 10, 'LODERA', 'LODERA TOYOTA COROLLA LOGO ROJO PICK UP PAR', 'vistas/img/productos/default/anonymous.png', 1, 5, 15, 0, '2022-09-16 16:38:14'),
(538, 10, 'LODERA', 'LODERA PEQUEÑA ZAPATITO PAR', 'vistas/img/productos/default/anonymous.png', 1, 5, 15, 0, '2022-09-16 16:39:09'),
(539, 10, 'LODERA', 'LODERA COROLLA LETRA PAR', 'vistas/img/productos/default/anonymous.png', 1, 5, 15, 0, '2022-09-16 16:46:51'),
(540, 10, 'LODERA', 'LODERA COROLLA CUADRADA', 'vistas/img/productos/default/anonymous.png', 1, 5, 15, 0, '2022-09-16 16:47:52'),
(541, 10, 'LODERA', 'LODERA UNIVERSAL PICK UP PAR', 'vistas/img/productos/default/anonymous.png', 2, 5, 15, 0, '2022-09-16 16:48:43'),
(542, 10, 'LODERA', 'LODERA TRD PAR', 'vistas/img/productos/default/anonymous.png', 1, 5, 15, 0, '2022-09-16 16:49:25'),
(543, 10, 'LODERA', 'LODERA TOYOTA LOGO BLANCO PAR', 'vistas/img/productos/default/anonymous.png', 1, 5, 15, 0, '2022-09-16 16:49:55'),
(547, 27, 'MANECILLA', 'MANECILLA NISSAN ROGUE AÑO 2013 JUEGO', 'vistas/img/productos/default/anonymous.png', 1, 15, 30, 0, '2022-09-16 17:59:05'),
(548, 27, 'MANECILLA', 'MANECILLA UNIVERSAL JUEGO ', 'vistas/img/productos/default/anonymous.png', 4, 15, 30, 0, '2022-09-16 17:59:33'),
(550, 4, 'FB26010', 'VIDRIO TRASERO MITSUBISHI OULANDER 3 FILAS AÑO 2014 AL 2016', 'vistas/img/productos/default/anonymous.png', 2, 50, 90, 0, '2022-09-17 15:35:05'),
(551, 4, 'FB25265', 'VIDRIO TRASERO NISSAN VERSA AÑO 2012 AL 2018', 'vistas/img/productos/default/anonymous.png', 1, 45, 85, 0, '2022-09-17 15:32:55'),
(552, 4, 'VIDRIO TRASERO', 'VIDRIO TRASERO TOYOTA COROLLA AÑO 2006', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-11-17 14:28:17'),
(554, 4, 'FB26160', 'VIDRIO TRASERO NISSAN ROGUE AÑO 2014 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-17 15:38:10'),
(555, 4, 'FB25085', 'VIDRIO TRASERO OULANDER SPORT AÑO 2011 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-17 15:40:03'),
(557, 4, 'FB22481', 'VIDRIOS TRASERO TOYOTA TACOMA AÑO 2006 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-17 15:43:54'),
(558, 4, 'FBVIGO', 'VIDRIO TRASERO TOYOTA VIGO AÑO 2006 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-17 15:45:42'),
(559, 4, 'FB24833', 'VIDRIO TRASERO KIA SPORTAGE AÑO 2011 USADO', 'vistas/img/productos/default/anonymous.png', 1, 30, 60, 0, '2022-09-17 15:48:19'),
(563, 4, 'FB9757', 'VIDRIO TRASERO FORD ESCAPE AÑO 2007 AL 2012', 'vistas/img/productos/default/anonymous.png', 0, 40, 75, 0, '2022-12-21 14:21:35'),
(564, 4, 'FB25335', 'VIDRIO TRASERO KIA RIO AÑO 2012 AL 2014', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-17 16:15:44'),
(565, 4, 'FB24240', 'VIDRIO TRASERO MAZDA 3 AÑO 2009 AL 2012', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-17 16:17:11'),
(566, 4, 'FB/EON', 'VIDRIO TRASERO HYUNDAI EON 2010 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-17 16:18:10'),
(567, 4, 'FB24068', 'VIDRIO TRASERO HONDA FIT AÑO 2009 AL 2013', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-09-17 16:19:38'),
(568, 4, 'FB3984', 'VIDRIO TRASERO SUZUKI SIDEKICK AÑO 96 AL 2000', 'vistas/img/productos/default/anonymous.png', 1, 35, 65, 0, '2022-09-17 16:21:38'),
(570, 4, 'FB23654', 'VIDRIO TRASERO SCION XD AÑO 2008 AL 2010', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-17 16:25:22'),
(574, 4, 'FB23697', 'VIDRIO TRASERO TOYOTA COROLLA AÑO 2009 AL 2013', 'vistas/img/productos/default/anonymous.png', 2, 40, 80, 0, '2022-09-17 16:37:01'),
(575, 4, 'FB26052', 'VIDRIO TRASERO TOYOTA COROLLA AÑO 2014 AL 2019', 'vistas/img/productos/default/anonymous.png', 2, 40, 80, 0, '2022-09-17 16:38:17'),
(577, 8, 'BLUEBIRD', 'PARABRISA DELANTERO BLUEBIRD', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-17 16:41:44'),
(579, 8, 'FW3748', 'PARABRISA DELANTERO TOYOTA RAV4 AÑO 2013 AL 2018', 'vistas/img/productos/default/anonymous.png', 2, 40, 80, 0, '2022-12-01 18:56:14'),
(580, 8, 'FW-', 'PARABRISA DELANTERO TOYOTA TACOMA AÑO 2010 DE VENTANILLA', 'vistas/img/productos/default/anonymous.png', 1, 60, 100, 0, '2022-09-17 16:53:34'),
(581, 28, 'FV', 'VENTOLERA NISSAN SENTRA B17 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:02:48'),
(582, 28, 'FV', 'VENTOLERA NISSAN SENTRA B17 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:03:47'),
(583, 28, 'FV', 'VENTOLERA NISSAN VERSA AÑO 2015 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:04:40'),
(584, 28, 'FV', 'VENTOLERA NISSAN VERSA AÑO 2015 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:07:06'),
(585, 28, 'FV', 'VENTOLERA COROLLA AÑO 2008 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 2, 15, 35, 0, '2022-09-17 17:08:23'),
(586, 28, 'FV', 'VENTOLERA COROLLA AÑO 2008 DERECHA', 'vistas/img/productos/default/anonymous.png', 2, 15, 35, 0, '2022-09-17 17:09:04'),
(587, 28, 'FV', 'VENTOLERA PEUGEOT AÑO 84 IZQUIERDA USADA', 'vistas/img/productos/default/anonymous.png', 1, 5, 15, 0, '2022-09-17 17:10:49'),
(588, 28, 'FV-20028', 'VENTOLERA MITSUBISHI MONTERO IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:12:49'),
(589, 28, 'FV', 'VENTOLERA TOYOTA YARIS AÑO 2001 AL 2005 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:13:39'),
(590, 28, 'FV', 'VENTOLERA HYUNDAI TIBURON AÑO 2004 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-09-17 17:15:13'),
(591, 28, 'FV-22971', 'VENTOLERA HONDA FIT AÑO 2006 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:16:36'),
(592, 28, 'FV-26050', 'VENTOLERA TOYOTA COROLLA AÑO 2014 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:19:33'),
(593, 28, 'FV-26051', 'VENTOLERA TOYOTA COROLLA AÑO 2014 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:20:35'),
(594, 28, 'FV-12203', 'VENTOLERA JEEP CHEROKY AÑO 2014 ', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:33:22'),
(595, 28, 'FV', 'VENTOLERA TERCEL AÑO 91 AL 95 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:34:07'),
(596, 28, 'FV-20526', 'VENTOLERA CHEVROLET TRACKER ', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:35:03'),
(597, 28, 'FV-22460', 'VENTOLERA NISSAN FRONTIER AÑO 2006 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:36:01'),
(598, 28, 'FV', 'VENTOLERA NISSAN VERSA AÑO 2006 AL 2011 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:36:55'),
(599, 28, 'FV', 'VNETOLERA HYUNDAI TIBURON AÑO 2000 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:38:20'),
(600, 28, 'FV-21070', 'VENTOLERA HONDA CIVIC AÑO 2001 AL 2005 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:39:50'),
(601, 28, 'FV-4701', 'VENTOLERA GEO PRIZM AÑO 92 AL 97 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:41:48'),
(602, 28, 'FV-20915', 'VENTOLERA HYUNDAI ACCENT AÑO 2001 AL 2005', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:43:25');
INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(603, 28, 'FV-20130', 'VENTOLRA HONDA CRV AÑO 96 AL 99', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:44:42'),
(604, 28, 'FV-23038', 'VENTOLERA HYUNDAI ACCENT AÑO 2007 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:45:51'),
(605, 28, 'FV-20191', 'VENTOLERA MITSUBISHI MIRAGE AÑO 99 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:46:52'),
(606, 28, 'FV', 'VENTOLERA TOYOTA LAND CRUISER AÑO 2003 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:47:58'),
(607, 28, 'FV', 'VENTOLERA FORD FIESTA AÑO 2019 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 17:48:53'),
(608, 28, 'FV-4086', 'VENTOLERA TOYOTA HILUX AÑO 88 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 18:21:33'),
(609, 28, 'FV-4085', 'VENTOLERA TOYOTA HILUX AÑO 88 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 18:22:33'),
(610, 28, 'FV', 'VENTOLERA MITSUBISHI LANCER 2010 IZQUIERDA USADA', 'vistas/img/productos/default/anonymous.png', 1, 5, 15, 0, '2022-09-17 18:23:32'),
(611, 28, 'FV', 'VENTOLERA HYUNDAI ELANTRA AÑO 2000 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 18:28:07'),
(612, 28, 'FV', 'VENTOLERA HYUNDAI ELANTRA AÑO 2000 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 18:31:39'),
(613, 28, 'FV-22698', 'VENTOLERA HONDA CIVIC IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 18:32:45'),
(614, 28, 'FV-4691', 'VENTOLERA COROLLA AÑO 94 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 18:48:40'),
(615, 28, 'FV', 'VENTOLERA COROLLA AÑO 2010 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 18:49:41'),
(616, 28, 'FV-20304', 'VENTOLERA TOYOTA COROLLA AÑO 2000 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 15, 35, 0, '2022-09-17 18:50:39'),
(617, 4, 'FB25769', 'VIDRIO TRASERO NISSAN SENTRA B17 AÑO 2013 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-09-17 18:55:05'),
(622, 8, 'FW-420', 'PARABRISA DELANTERO NISSAN UD 3 CRICOS', 'vistas/img/productos/default/anonymous.png', 1, 55, 90, 0, '2022-09-19 14:48:16'),
(623, 30, '862419602115', 'SLIP PARACHOQUE SAMURAI', 'vistas/img/productos/default/anonymous.png', 1, 10, 20, 0, '2022-09-19 15:54:01'),
(624, 20, '862419602452', 'LUCES LED HALOGENAS', 'vistas/img/productos/default/anonymous.png', 2, 25, 50, 0, '2022-09-19 16:18:04'),
(625, 1, '7404003390763', 'PORTA PLACA ISUZU', 'vistas/img/productos/default/anonymous.png', 1, 3, 10, 0, '2022-09-21 15:03:35'),
(626, 31, '2020101200022', 'COBERTOR DE PORTA PLACA', 'vistas/img/productos/default/anonymous.png', 6, 3, 12, 0, '2022-09-21 15:06:30'),
(627, 12, 'HALOGENA', 'HALOGENA NAVARRA CUADRADA MEDIANA', 'vistas/img/productos/default/anonymous.png', 1, 20, 45, 0, '2022-09-21 15:16:03'),
(628, 12, 'HALOGENA', 'HALOGENA NAVARRA CUADRADA MEDIANA', 'vistas/img/productos/default/anonymous.png', 1, 20, 45, 0, '2022-09-21 15:16:03'),
(629, 12, 'HALOGENA', 'HALOGENA NAVARRA CUADRADA MEDIANA', 'vistas/img/productos/default/anonymous.png', 1, 20, 45, 0, '2022-09-21 15:16:03'),
(635, 14, 'STICKER', 'STICKER LOGO HONDA MEDIANO', 'vistas/img/productos/default/anonymous.png', 1, 5, 12, 0, '2022-09-23 16:29:35'),
(636, 3, 'LKS-02-016', 'CRICOS MILBOS WIPER PAR NUMERO 16', 'vistas/img/productos/default/anonymous.png', 10, 1.35, 10, 0, '2022-09-23 19:46:20'),
(638, 8, 'DYNA', 'PARABRISA DELANTERO TOYOTA DYNA CABINA ANGOSTA AÑO 2004 AL 2020', 'vistas/img/productos/default/anonymous.png', 1, 38, 85, 1, '2022-12-12 15:58:10'),
(639, 8, 'FW-', 'PARABRISA DELANTERO NISSAN SENTRA 4D 5D AÑO 2007 AL 2012', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-09-27 14:47:11'),
(642, 8, 'FW-2011', 'PARABRISA DELANTERO TOYOTA RN110 TACOMA AÑO 96 AL 2005 4RUNNER AÑO 96 AL 2002 HILUX ', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-11-18 20:22:12'),
(646, 5, 'LOGO', 'LOGO LETRA HILUX', 'vistas/img/productos/default/anonymous.png', 4, 2, 10, 0, '2022-10-03 16:31:57'),
(647, 5, 'LOGO', 'LOGO LETRA VERSA', 'vistas/img/productos/default/anonymous.png', 4, 2, 10, 0, '2022-10-03 16:32:38'),
(648, 5, 'LOGO', 'LOGO LETRA CIVIC', 'vistas/img/productos/default/anonymous.png', 2, 2, 8, 0, '2022-10-03 16:33:07'),
(649, 5, 'LOGO', 'LOGO LETRA COROLLA', 'vistas/img/productos/default/anonymous.png', 2, 2, 10, 0, '2022-10-03 16:33:34'),
(650, 5, 'LOGO', 'LOGO LETRA RIO PEQUEÑO', 'vistas/img/productos/default/anonymous.png', 3, 1, 5, 0, '2022-10-03 16:34:15'),
(651, 5, 'LOGO', 'LOGO LETRA CIVIC PEQUEÑO', 'vistas/img/productos/default/anonymous.png', 1, 2, 7, 0, '2022-10-03 16:35:23'),
(652, 5, 'LOGO', 'LOGO LETRA TOYOTA MEDIANO', 'vistas/img/productos/default/anonymous.png', 1, 1, 8, 0, '2022-10-03 16:51:40'),
(653, 5, 'LOGO', 'LOGO LETRA TOYOTA PEQUEÑO', 'vistas/img/productos/default/anonymous.png', 8, 1, 5, 0, '2022-10-03 16:52:15'),
(654, 5, 'LOGO', 'LOGO LETRA HONDA', 'vistas/img/productos/default/anonymous.png', 6, 2, 8, 0, '2022-10-03 16:53:06'),
(655, 5, 'LOGO', 'LOGO COROLLA MEDIANO', 'vistas/img/productos/default/anonymous.png', 7, 3, 10, 0, '2022-10-03 16:53:37'),
(656, 5, 'LOGO', 'LOGO COROLLA PEQUEÑO', 'vistas/img/productos/default/anonymous.png', 6, 2, 7, 0, '2022-10-03 16:54:11'),
(657, 5, 'LOGO', 'LOGO COROLLA GRANDE', 'vistas/img/productos/default/anonymous.png', 9, 5, 12, 0, '2022-10-03 16:54:47'),
(658, 5, 'LOGO', 'LOGO LETRA YARIS', 'vistas/img/productos/default/anonymous.png', 2, 5, 10, 0, '2022-10-03 16:55:19'),
(659, 5, 'LOGO', 'LOGO CHEVROLET GRANDE DORADO', 'vistas/img/productos/default/anonymous.png', 2, 5, 12, 0, '2022-10-03 16:55:58'),
(660, 5, 'LOGO', 'LOGO HONDA PEQUEÑO', 'vistas/img/productos/default/anonymous.png', 4, 1, 5, 0, '2022-10-03 16:56:28'),
(661, 5, 'LOGO', 'LOGO HYUNDAI PEQUEÑO', 'vistas/img/productos/default/anonymous.png', 8, 1, 5, 0, '2022-10-03 18:20:22'),
(662, 5, 'LOGO', 'LOGO MITSUBISHI PEQUEÑO', 'vistas/img/productos/default/anonymous.png', 3, 1, 5, 0, '2022-10-03 18:21:03'),
(663, 5, 'LOGO', 'LOGO SCION MEDIANO', 'vistas/img/productos/default/anonymous.png', 11, 5, 10, 0, '2022-10-03 18:21:36'),
(664, 5, 'LOGO', 'LOGO HONDA GRANDE', 'vistas/img/productos/default/anonymous.png', 4, 5, 12, 0, '2022-10-03 18:22:05'),
(665, 5, 'LOGO', 'LOGO HYUNDAI MEDIANO', 'vistas/img/productos/default/anonymous.png', 4, 2, 10, 0, '2022-10-03 18:23:07'),
(666, 5, 'LOGO', 'LOGO KIA FONDO NEGRO MEDIANO', 'vistas/img/productos/default/anonymous.png', 1, 2, 10, 0, '2022-10-03 18:23:49'),
(667, 5, 'LOGO', 'LOGO MAZDA MEDIANO', 'vistas/img/productos/default/anonymous.png', 2, 3, 8, 0, '2022-10-03 18:24:50'),
(668, 5, 'LOGO', 'LOGO HYUNDAI GRANDE', 'vistas/img/productos/default/anonymous.png', 2, 5, 12, 0, '2022-10-03 18:25:15'),
(669, 5, 'LOGO', 'LOGO COROLLA FONDO NEGRO', 'vistas/img/productos/default/anonymous.png', 1, 2, 10, 0, '2022-10-03 18:38:57'),
(670, 5, 'LOGO', 'LOGO MITSUBISHI GRANDE', 'vistas/img/productos/default/anonymous.png', 2, 5, 12, 0, '2022-10-03 18:39:33'),
(672, 5, 'LOGO', 'LOGO HONDA FONDO ROJO', 'vistas/img/productos/default/anonymous.png', 9, 2, 5, 0, '2022-10-03 18:41:02'),
(673, 8, 'FW-4352', 'PARABRISA DELANTERO HYUNDAI ELANTRA AVANTE SEDAN AÑO 2017 AL 2018', 'vistas/img/productos/default/anonymous.png', 2, 45, 80, 1, '2022-12-05 19:58:37'),
(709, 4, 'FB26804', 'VIDRIO TRASERO HONDA CIVIC 4D 5D SEDAN AÑO 2016 AL 2017', 'vistas/img/productos/default/anonymous.png', 1, 55, 90, 0, '2022-10-06 20:13:52'),
(714, 1, 'pruebadecodigo', 'producto numero', 'vistas/img/productos/default/anonymous.png', 1, 1, 1.4, 0, '2022-10-20 14:51:32'),
(715, 32, 'FD1', 'VIDRIO DE PUERTA JEEP CHEROKEE AÑO 2014 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 16:54:57'),
(716, 32, 'FD2', 'VIDRIO DE PUERTA JEEP CHEROKEE AÑO 2014 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 16:57:30'),
(717, 32, 'FD3', 'VIDRIO DE PUERTA JEEP COMPASS AÑO 2010 AL 2015 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 16:58:19'),
(718, 32, 'FD4', 'VIDRIO DE PUERTA KIA SPORTAGE AÑO 2010 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 16:58:53'),
(719, 32, 'FD5', 'VIDRIO DE PUERTA CIVIC QP AÑO 2001 AL 2005 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 17:00:39'),
(720, 32, 'FD6', 'VIDRIO DE PUERTA CIVIC QP AÑO 2001 AL 2005 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 17:01:36'),
(721, 32, 'FD7', 'VIDRIO DE PUERTA HONDA CIVIC AÑO 90 DERECHO USADO', 'vistas/img/productos/default/anonymous.png', 1, 5, 20, 0, '2022-10-20 17:04:34'),
(722, 32, 'FD3095', 'VIDRIO DE PUERTA ED DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:05:16'),
(723, 32, 'FD8', 'VIDRIO DE PUERTA HONDA FIT R AÑO 2010 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 17:05:52'),
(724, 32, 'FD9', 'VIDRIO DE PUERTA CRV AÑO 2007 IZQUIERDO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-10-20 17:06:24'),
(725, 32, 'FD5296', 'VIDRIO DE PUERTA ISUZU RODEO AÑO 91 AL 97 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 2, 30, 45, 0, '2022-10-20 17:07:44'),
(726, 32, 'FD10', 'VIDRIO DE PUERTA ISUZU KB AÑO 90 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:08:25'),
(727, 32, 'FD11', 'VIDRIO DE PUERTA SUZUKI GRAN VITARA AÑO 97 AL 2005 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:08:59'),
(728, 32, 'FD12', 'VIDRIO DE PUERTA KIA PREGIO AÑO 2005 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:09:40'),
(729, 32, 'FD13', 'VIDRIO DE PUERTA ISUZU FORWARD AÑO 95 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:10:17'),
(730, 32, 'FD14', 'VIDRIO DE PUERTA ISUZU KB AÑO 90 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:11:08'),
(731, 32, 'FD15', 'VIDRIO DE PUERTA NISSAN ROGUE AÑO 2008 IZQUIERDO DELANTERO ', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:12:26'),
(732, 32, 'FD16', 'VIDRIO DE PUERTA NISSAN ROGUE AÑO 2008 DERECHO DELANTERO ', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:13:13'),
(733, 32, 'FD17', 'VIDRIO DE PUERTA NISSAN ROGUE AÑO 2015 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:14:12'),
(734, 32, 'FD18', 'VIDRIO DE PUERTA DODGE RAM AÑO 2010 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 17:14:59'),
(735, 32, 'FD19', 'VIDRIO DE PUERTA FORD F150 AÑO 2004 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 17:15:51'),
(736, 32, 'FD20', 'VIDRIO DE PUERTA FORD 250 350 450 550 AÑO 2000 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 17:16:27'),
(737, 32, 'FD21', 'VIDRIO DE PUERTA CHEVROLET HEE DERECHO TRASERO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 17:17:05'),
(738, 32, 'FD22', 'VIDRIO DE PUERTA FORD EXPLORER AÑO 2004 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:17:42'),
(739, 32, 'FD23', 'VIDRIO DE PUERTA FORD RANGER AÑO 98 AL 2005 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:18:17'),
(740, 32, 'FD24', 'VIDRIO DE PUERTA CHEVROLET S10 AÑO 98', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:20:51'),
(741, 32, 'FD25', 'VIDRIO DE PUERTA NISSAN SENTRA B16 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:24:47'),
(742, 32, 'FD26', 'VIDRIO DE PUERTA NISSAN VERSA AÑO 2007 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:25:31'),
(743, 32, 'FD27', 'VIDRIO DE PUERTA NISSAN SENTRA B14 AÑO 95 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:26:11'),
(744, 32, 'FD28', 'VIDRIO DE PUERTA NISSAN FRONTIER AÑO 98 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:26:59'),
(745, 32, 'FD29', 'VIDRIO DE PUERTA NISSAN HARDBODY AÑO 95 IZQUIERDO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:27:30'),
(746, 32, 'FD30', 'VIDRIO DE PUERTA NISSAN 720 AÑO 80 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:28:35'),
(747, 32, 'FD31', 'VIDRIO DE PUERTA NISSAN QUEST AÑO 93 AL 98 IZQUIERDO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 17:29:14'),
(748, 32, 'FD32', 'VIDRIO DE PUERTA NISSAN FRONTIER AÑO 98 IZQUIERDO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 17:30:28'),
(749, 32, 'FD33', 'VIDRIO DE PUERTA NISSAN ROGUE SPORT AÑO 2015 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 17:31:13'),
(750, 32, 'FD34', 'VIDRIO DE PUERTA NISSAN MURANO AÑO 2012 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 17:31:48'),
(751, 32, 'FD35', 'VIDRIO DE PUERTA NISSAN SENTRA B15 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:32:26'),
(752, 32, 'FD36', 'VIDRIO DE PUERTA NISSAN FRONTIER NAVARA AÑO 2006 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:43:23'),
(753, 32, 'FD37', 'VIDRIO DE PUERTA NISSAN FRONTIER AÑO 98 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:44:27'),
(754, 32, 'FD38', 'VIDRIO DE PUERTA TOYOTA COROLLA AÑO 2010 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 17:45:46'),
(755, 32, 'FD39', 'VIDRIO DE PUERTA SCION XD AÑO 2008 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:46:15'),
(756, 32, 'FD40', 'VIDRIO DE PUERTA TOYOTA RN80 CON VENTOLERA AÑO 90 DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 25, 50, 0, '2022-10-20 17:46:52'),
(757, 32, 'FD41', 'VIDRIO DE PUERTA TUNDRA SEQUOIA DOBLE CABINA DERECHA', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 17:47:34'),
(758, 32, 'FD42', 'VIDRIO DE PUERTA TOYOTA TACOMA AÑO 2000 IZQUIERDO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:48:28'),
(759, 32, 'FD43', 'VIDRIO DE PUERTA TOYOTA TACOMA AÑO 2000 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:49:05'),
(760, 32, 'FD44', 'VIDRIO DE PUERTA TOYOTA TACOMA AÑO 2010 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:49:46'),
(761, 32, 'FD45', 'VIDRIO DE PUERTA TOYOTA 4 RUNNER AÑO 2004 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:50:29'),
(762, 32, 'FD46', 'VIDRIO DE PUERTA TOYOTA TACOMA 2 PUERTAS AÑO 2006 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:51:15'),
(763, 32, 'FD47', 'VIDRIO DE PUERTA TOYOTA RAV4 AÑO 2015 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 17:51:57'),
(764, 32, 'FD48', 'VIDRIO DE PUERTA HILUX REVO AÑO 2020 IZQUIERDO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 17:52:49'),
(765, 32, 'FD49', 'VIDRIO DE PUERTA HILUX RN80 AÑO 90 AL 95 DERECHO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 17:53:29'),
(766, 32, 'FD50', 'VIDRIO DE PUERTA TOYOTA COROLLA AÑO 2013 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 18:28:29'),
(767, 32, 'FD51', 'VIDRIO DE PUERTA HILUX AÑO 80 AL 83 IZQUIERDO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 18:29:12'),
(768, 32, 'FD52', 'VIDRIO DE PUERTA HILUX RN50 AÑO 84 AL 88 IZQUIERDO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 18:30:12'),
(769, 32, 'FD53', 'VIDRIO DE PUERTA TOYOTA VIGO 2 PUERTAS AÑO 2007 DERECHO DELANTERO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 18:30:54'),
(770, 32, 'FD54', 'VIDRIO DE PUERTA LITE ACE AÑO 95 AL 2000 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 18:31:33'),
(771, 32, 'FD55', 'VIDRIO DE PUERTA TOYOTA COROLLA AÑO 87 AL 89 DERECHO TRASERO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 18:32:28'),
(772, 32, 'FD56', 'VIDRIO DE PUERTA TOYOTA 4 RUNNER AÑO 2008 AL 2010 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 18:46:28'),
(773, 32, 'FD57', 'VIDRIO DE PUERTA TOYOTA LAND CRUISER AÑO 2003 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 18:47:06'),
(774, 32, 'FD58', 'VIDRIO DE PUERTA HILUX REVO AÑO 2020 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 18:47:56'),
(775, 32, 'FD59', 'VIDRIO DE PUERTA TOYOTA TACOMA IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 18:48:39'),
(776, 32, 'FD60', 'VIDRIO DE PUERTA 4 RUNNER AÑO 2000 AL 2005 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 18:51:46'),
(777, 32, 'FD61', 'VIDRIO DE PUERTA TOYOTA HILUX VIGO 2 PUERTAS AÑO 2007  IZQUIERDO DELANTERO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 18:52:46'),
(778, 32, 'FD62', 'VIDRIO DE PUERTA COROLLA AÑO 88 AL 92 DERECHO USADA', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 18:53:21'),
(779, 32, 'FD63', 'VIDRIO DE PUERTA MITSUBISHI SPORTERO AÑO 2010 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 50, 0, '2022-10-20 18:54:35'),
(780, 32, 'FD64', 'VIDRIO DE PUERTA MITSUBISHI LANCER AÑO 2001 AL 2005 DERECHO DELANTERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 18:55:21'),
(781, 32, 'FD65', 'VIDRIO DE PUERTA MAZDA 3 AÑO 2010 IZQUIERDO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 50, 0, '2022-10-20 18:56:04'),
(782, 32, 'FD66', 'VIDRIO DE PUERTA TOYOTA LAND CRUISER AÑO 89 AL 99 USADA', 'vistas/img/productos/default/anonymous.png', 1, 10, 35, 0, '2022-10-20 18:57:02'),
(783, 32, 'FD67', 'VIDRIO DE PUERTA MAZDA 3 AÑO 2010 IZQUIERDO DELANTERO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 18:58:08'),
(784, 32, 'FD68', 'VIDRIO DE PUERTA MITSUBISHI LANCER AÑO 2012 IZQUIERDO DELANTERO ', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-10-20 18:59:11'),
(785, 32, 'FD69', 'VIDRIO DE PUERTA TOYOTA COROLLA AÑO 83 DERECHO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 18:59:59'),
(786, 32, 'FD70', 'VIDRIO DE PUERTA ISUZU FORWARD FTR DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 19:01:19'),
(787, 32, 'FD71', 'VIDRIO DE PUERTA MAZDA BT50 AÑO 2018 DOBLE CABINA DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 19:02:17'),
(788, 32, 'FD72', 'VIDRIO DE PUERTA MAZDA BT2000 AÑO 95 DERECHO TRASERO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-20 19:03:08'),
(789, 32, 'FD73', 'VIDRIO DE PUERTA HINO 300 FR AÑO 2000 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 19:03:48'),
(790, 32, 'FD74', 'VIDRIO DE PUERTA KIA K3000 AÑO 2005 AL 2020 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-10-20 19:05:28'),
(791, 32, 'FD75', 'VIDRIO DE PUERTA MAZDA E200 AÑO 2000 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 19:06:14'),
(792, 32, 'FD76', 'VIDRIO DE PUERTA HYUNDAI HD72 AÑO 2000 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 19:09:06'),
(794, 32, 'FD78', 'VIDRIO DE PUERTA MAZDA E2200 AÑO 2000 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 19:10:55'),
(795, 32, 'FD79', 'VIDRIO DE PUERTA HYUNDAI H100 AÑO 2000 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 19:27:58'),
(796, 32, 'FD80', 'VIDRIO DE PUERTA TOYOTA DYNA BU60 AÑO 95 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 19:28:43'),
(797, 32, 'FD81', 'VIDRIO DE PUERTA ISUZU NPR AÑO 2020 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-10-20 22:16:14'),
(798, 32, 'FD77', 'VIDRIO DE PUERTA KIA K2700 AÑO 2003 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-20 22:17:37'),
(799, 32, 'FD82', ' VIDRIO DE PUERTA MITSUBISHI NATIVA L200 AÑO 2000 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-21 13:54:40'),
(801, 32, 'FD83', 'VIDRIO DE PUERTA HYUNDAI TUCSON AÑO 2005 AL 2007 DERECHO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-21 16:48:56'),
(802, 32, 'FD84', 'VIDRIO DE PUERTA COROLLA AÑO 82 DERECHO DELANTERO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-21 16:49:52'),
(803, 32, 'FD85', 'VIDRIO DE PUERTA MITSUBISHI L200 AÑO 2000 IZQUIERDA', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-21 16:52:06'),
(804, 32, 'FD86', 'VIDRIO DE PUERTA HYUNDAI ELANTRA AÑO 2011 AL 2015 DERECHO TRASERO USADO', 'vistas/img/productos/default/anonymous.png', 1, 10, 25, 0, '2022-10-21 16:53:35'),
(805, 32, 'FD87', 'VIDRIO DE PUERTA HONDA CIVIC AÑO 92 IZQUIERDO USADO', 'vistas/img/productos/default/anonymous.png', 1, 5, 20, 0, '2022-10-21 16:55:23'),
(806, 32, 'FD88', 'VIDRIO DE PUERTA NISSAN SENTRA B14 AÑO 95 IZQUIERDO USADO', 'vistas/img/productos/default/anonymous.png', 1, 5, 20, 0, '2022-10-21 17:07:29'),
(807, 32, 'FD89', 'VIDRIO DE PUERTA HONDA CIVIC AÑO 92 DERECHO USADO', 'vistas/img/productos/default/anonymous.png', 1, 5, 20, 0, '2022-10-21 17:17:06'),
(808, 32, 'FD90', 'VIDRIO DE PUERTA NISSAN SENTRA B14 AÑO 95 DERECHO USADO', 'vistas/img/productos/default/anonymous.png', 1, 5, 20, 0, '2022-10-21 17:15:20'),
(809, 32, 'FD91', 'VIDRIO DE PUERTA HONDA CIVIC AÑO 92 IZQUIERDO TRASERO USADO', 'vistas/img/productos/default/anonymous.png', 1, 5, 20, 0, '2022-10-21 17:16:38'),
(810, 32, 'FD92', 'VIDRIO DE PUERTA HONDA CIVIC AÑO 92 DERECHO TRASERO USADO', 'vistas/img/productos/default/anonymous.png', 1, 5, 20, 0, '2022-10-21 17:18:52'),
(811, 32, 'FD93', 'VIDRIO DE PUERTA MITSUBISHI MONTERO AÑO 90 VENTANA CORREDIZA DERECHA USADA', 'vistas/img/productos/default/anonymous.png', 1, 10, 30, 0, '2022-10-21 17:29:34'),
(812, 17, 'FORRO1', 'FORRO DE VOLANTE FINO', 'vistas/img/productos/default/anonymous.png', 22, 3, 12, 0, '2022-10-21 17:45:44'),
(813, 17, 'FORRO2', 'FORRO DE VOLANTE SENCILLO', 'vistas/img/productos/default/anonymous.png', 10, 2, 9, 0, '2022-10-21 17:46:35'),
(814, 8, 'FW-2105', 'PARABRISA DELANTERO SUZUKI TRACKER VITARA AÑO 98 AL 2006', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-10-21 18:03:10'),
(815, 32, 'FD94', 'VIDRIO DE PUERTA ISUZU NPR AÑO 96 AL 2008 IZQUIERDO', 'vistas/img/productos/default/anonymous.png', 1, 30, 45, 0, '2022-10-21 19:14:02'),
(816, 8, 'FW-1', 'PARABRISA DELANTERO RENAULT KANGOO', 'vistas/img/productos/default/anonymous.png', 1, 40, 80, 0, '2022-10-22 17:55:26'),
(817, 8, 'FW-1695', 'PARABRISA DELANTERO CHEVROLET AVEO AÑO 2007 AL 2011', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-10-24 19:40:41'),
(818, 8, 'FW-4756', 'PARABRISA DELANTERO MITSUBISHI OUTLANDER 4D HBK CON SENSOR AÑO 2014 AL 2019', 'vistas/img/productos/default/anonymous.png', 0, 60, 95, 0, '2022-10-27 18:10:49'),
(819, 13, 'ACCU0700740', 'FORRO DE VOLANTE BEIGE DE CUERO', 'vistas/img/productos/default/anonymous.png', 4, 3, 12, 0, '2022-10-31 15:31:53'),
(820, 13, 'ACCU070283', 'FORRO DE VOLANTE NEGRO CON LINEAS ROJAS', 'vistas/img/productos/default/anonymous.png', 4, 4, 12, 0, '2022-10-31 15:42:37'),
(821, 13, 'ACCU070259', 'FORRO DE VOLANTE NEGRO COMPLETO', 'vistas/img/productos/default/anonymous.png', 4, 3, 10, 0, '2022-10-31 15:46:45'),
(822, 15, 'ACCU070000', 'FORRO DE VOLANTE AZUL CON NEGRO', 'vistas/img/productos/default/anonymous.png', 4, 4, 12, 0, '2022-10-31 15:53:13'),
(823, 15, 'ACCU0700172', 'FORRO DE VOLANTE CORAZONES', 'vistas/img/productos/default/anonymous.png', 4, 4, 12, 0, '2022-10-31 16:04:10'),
(824, 13, 'ACCU070121', 'FORRO DE VOLANTE PUNTOS ROJOS', 'vistas/img/productos/default/anonymous.png', 4, 3, 10, 0, '2022-10-31 16:16:10'),
(825, 15, 'ACCU070163', 'FORRO DE VOLANTE KIA', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-31 17:20:37'),
(826, 15, 'ACCU070165', 'FORRO DE VOLANTE MITSUBISHI', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-31 17:22:45'),
(827, 15, 'ACCU070162', 'FORRO DE VOLANTE HYUNDAI', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-31 17:24:47'),
(828, 15, 'ACCU070166', 'FORRO DE VOLANTE NISSAN', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-31 18:17:54'),
(829, 15, 'ACCU070161', 'FORRO DE VOLANTE HONDA', 'vistas/img/productos/default/anonymous.png', 2, 3, 10, 0, '2022-10-31 18:19:26'),
(830, 11, 'ACCU067015', 'ESPEJO PARA CARRO', 'vistas/img/productos/default/anonymous.png', 2, 6, 18, 0, '2022-10-31 19:05:39'),
(832, 2, 'BUR1', 'BURBUJA CHEVROLET SONIC AÑO 2011 AL 2013', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-04 20:51:58'),
(833, 2, 'BUR2', 'BURBUJA NISSAN ROGUE GRIS AÑO 2015 AL 2016', 'vistas/img/productos/default/anonymous.png', 2, 50, 80, 0, '2022-11-04 20:53:10'),
(834, 2, 'BUR3', 'BURBUJA NISSAN ROGUE NEGRA AÑO 2015', 'vistas/img/productos/default/anonymous.png', 1, 50, 80, 0, '2022-11-04 20:53:59'),
(835, 2, 'BUR4', 'BURBUJA NISSAN ALTIMA AÑO 2003 NEGRA', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-04 20:55:01'),
(836, 2, 'BUR5', 'BURBUJA KIA K3000 AÑO 2006 AL 2020 NEGRA', 'vistas/img/productos/default/anonymous.png', 1, 35, 50, 0, '2022-11-04 20:56:47'),
(837, 2, 'BUR6', 'BURBUJA TOYOTA YARIS AÑO 2010 4 PUERTAS NEGRA', 'vistas/img/productos/default/anonymous.png', 1, 40, 60, 0, '2022-11-04 20:58:00'),
(838, 2, 'BUR7', 'BURBUJA TOYOTA RAV4 NEGRA AÑO 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-04 21:04:00'),
(839, 2, 'BUR8', 'BURBUJA TOYOTA YARIS AÑO 2010 2 PUERTAS', 'vistas/img/productos/default/anonymous.png', 2, 25, 45, 0, '2022-11-04 21:05:01'),
(840, 2, 'BUR9', 'BURBUJA TOYOTA VIGO AÑO 98 AL 2004 4 PUERTAS', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-04 21:05:59'),
(841, 2, 'BUR10', 'BURBUJA HILUX REVO AÑO 2015 AL 2020', 'vistas/img/productos/default/anonymous.png', 4, 35, 55, 0, '2022-11-04 21:08:44'),
(842, 2, 'BUR11', 'BURBUJA JEEP COMPASS AÑO 2015 GRIS', 'vistas/img/productos/default/anonymous.png', 0, 45, 65, 0, '2022-12-15 21:04:09'),
(843, 2, 'BUR12', 'BURBUJA NISSAN SENTRA B15 AÑO 2003 AL 2006', 'vistas/img/productos/default/anonymous.png', 5, 20, 35, 0, '2022-11-04 21:15:02'),
(844, 2, 'BUR13', 'BURBUJA KIA SOUL AÑO 2010', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-04 21:15:27'),
(845, 2, 'BUR14', 'BURBUJA MAZDA 6 AÑO 2003 AL 2006', 'vistas/img/productos/default/anonymous.png', 3, 20, 35, 0, '2022-11-04 21:16:27'),
(846, 2, 'BUR15', 'BURBUJA KIA FORTE AÑO 2009 AL 2012', 'vistas/img/productos/default/anonymous.png', 7, 20, 35, 0, '2022-11-04 21:17:24'),
(847, 2, 'BUR16', 'BURBUJA HYUNDAI H100 AÑO 2006 AL 2022', 'vistas/img/productos/default/anonymous.png', 4, 20, 35, 0, '2022-11-04 21:20:48'),
(848, 2, 'BUR17', 'BURBUJA TOYOTA HIACE AÑO 2005 AL 2015', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-05 13:47:38'),
(849, 2, 'BUR18', 'BURBUJA COROLLA AÑO 2015', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 13:49:01'),
(850, 2, 'BUR19', 'BURBUJA FORD ESCAPE AÑO 2015', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-05 13:49:48'),
(851, 2, 'BUR20', 'BURBUJA TOYOTA YARIS AÑO 2016 AL 2019', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 13:50:51'),
(852, 2, 'BUR21', 'BURBUJA HONDA HRV AÑO 2014', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 13:51:37'),
(853, 2, 'BUR22', 'BURBUJA HONDA CIVIC AÑO 2009 AL 2015', 'vistas/img/productos/default/anonymous.png', 3, 20, 35, 0, '2022-11-05 13:52:18'),
(854, 2, 'BUR23', 'BURBUJA NISSAN NAVARA GRIS CON NEGRO AÑO 98', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-05 13:53:05'),
(855, 2, 'BUR24', 'BURBUJA HONDA FIT AÑO 2014 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 35, 65, 0, '2022-11-05 13:53:47'),
(856, 2, 'BUR25', 'BURBUJA H100 COLOR BLANCO AÑO 2006 AL 2020', 'vistas/img/productos/default/anonymous.png', 1, 35, 50, 0, '2022-11-05 13:54:35'),
(857, 2, 'BUR26', 'BURBUJA TACOMA AÑO 2005 AL 2022 GRIS', 'vistas/img/productos/default/anonymous.png', 1, 35, 65, 0, '2022-11-05 13:55:41'),
(858, 2, 'BUR27', 'BURBUJA NISSAN FRONTIER 2 PUERTAS AÑO 98 AL 2005', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 13:56:40'),
(859, 2, 'BUR28', 'BURBUJA TOYOTA VIGO CROMADAS AÑO 2006 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 35, 50, 0, '2022-11-05 13:57:29'),
(860, 2, 'BUR29', 'BURBUJA HILUX VIGO NEGRAS', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 13:58:11'),
(861, 2, 'BUR30', 'BURBUJA KIA RIO AÑO 2012 AL 2015', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-05 13:59:08'),
(862, 2, 'BUR31', 'BURBUJA TOYOTA HIACE AÑO 2019', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 13:59:52'),
(863, 2, 'BUR32', 'BURBUJA NISSAN VERSA AÑO 2012', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 14:00:26'),
(864, 2, 'BUR33', 'BURBUJA HYUNDAI ACCENT AÑO 2012 AL 2015', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-05 14:42:02'),
(865, 2, 'BUR34', 'BURBUJA KIA PICANTO AÑO 2005 AL 2010', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 14:43:34'),
(866, 2, 'BUR35', 'BURBUJA HYUNDAI ELANTRA AÑO 2006 AL 2011', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-11 20:32:06'),
(867, 2, 'BUR36', 'BURBUJA TOYOTA RAV4 AÑO 2006 AL 2012', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-05 14:56:18'),
(868, 2, 'BUR37', 'BURBUJA MITSUBISHI L200 AÑO 2006 AL 2012', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 14:56:56'),
(869, 2, 'BUR38', 'BURBUJA FORD ESCAPE NEGRAS AÑO 2006 AL 2012', 'vistas/img/productos/default/anonymous.png', 1, 35, 65, 0, '2022-11-05 14:57:46'),
(870, 2, 'BUR39', 'BURBUJA HONDA CIVIC AÑO 98', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-05 15:19:36'),
(871, 2, 'BUR40', 'BURBUJA TOYOTA HILUX AÑO 98 AL 2004', 'vistas/img/productos/default/anonymous.png', 2, 35, 50, 0, '2022-11-05 15:00:18'),
(872, 2, 'BUR41', 'BURBUJA TACOMA AÑO 2017 XTRA CAB GRIS', 'vistas/img/productos/default/anonymous.png', 1, 55, 75, 0, '2022-11-05 15:01:17'),
(873, 2, 'BUR42', 'BURBUJA HILUX VIGO AÑO 2006 AL 2014', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 15:02:10'),
(874, 2, 'BUR43', 'BURBUJA HILUX REVO AÑO 2018', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 15:03:01'),
(875, 2, 'BUR44', 'BURBUJA TACOMA AÑO 2006 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 15:03:53'),
(876, 2, 'BUR45', 'BURBUJA HYUNDAI H100 AÑO 2015', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 15:04:52'),
(877, 2, 'BUR46', 'BURBUJA FRONTIER AÑO 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-05 15:06:04'),
(878, 2, 'BUR47', 'BURBUJA HYUNDAI CRV AÑO 97 AL 2001', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 15:06:58'),
(879, 2, 'BUR48', 'BURBUJA YARIS 2003 AL 2007', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 15:07:39'),
(880, 2, 'BUR49', 'BURBUJA FRONTIER AÑO 98 AL 2005', 'vistas/img/productos/default/anonymous.png', 3, 35, 55, 0, '2022-11-05 15:09:58'),
(881, 2, 'BUR50', 'BURBUJA HILUX 2 PUERTAS AÑO 84 AL 88', 'vistas/img/productos/default/anonymous.png', 1, 30, 50, 0, '2022-11-05 15:11:04'),
(882, 2, 'BUR51', 'BURBUJA TOYOTA MATRIX AÑO 98 AL 2005', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 15:13:30'),
(883, 2, 'BUR52', 'BURBUJA KIA K2700 AÑO 2006 AL 2020', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-05 15:14:38'),
(884, 2, 'BUR53', 'BURBUJA 22R 2 PUERTAS', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-18 17:39:50'),
(885, 2, 'BUR54', 'BURBUJA COROLLA AÑO 2006 AL 2009', 'vistas/img/productos/default/anonymous.png', 0, 20, 35, 0, '2022-12-07 19:09:42'),
(886, 2, 'BUR55', 'BURBUJA FRONTIER 98', 'vistas/img/productos/default/anonymous.png', 2, 20, 35, 0, '2022-11-05 15:17:03'),
(887, 2, 'BUR56', 'BURBUJA ELANTRA AÑO 2012 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-11 16:14:39'),
(888, 2, 'BUR57', 'BURBUJA MAZDA 3 AÑO 2003 AL 2008', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 15:18:42'),
(889, 2, 'BUR58', 'BURBUJA TOYOTA DYNA AÑO 2015 GRIS 2 PUERTAS', 'vistas/img/productos/default/anonymous.png', 1, 35, 65, 0, '2022-11-05 15:20:14'),
(890, 2, 'BUR59', 'BURBUJA TOYOTA REVO AÑO 2021', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 15:20:54'),
(891, 2, 'BUR60', 'BURBUJA COROLLA AÑO 2006', 'vistas/img/productos/default/anonymous.png', 3, 35, 50, 0, '2022-11-05 17:15:53'),
(892, 2, 'BUR61', 'BURBUJA TOYOTA DYNA AÑO 2015 NEGRA', 'vistas/img/productos/default/anonymous.png', 1, 30, 60, 0, '2022-11-05 17:16:29'),
(893, 2, 'BUR62', 'BURBUJA HONDA PILOT AÑO 2012', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-05 17:17:15'),
(894, 2, 'BUR63', 'BURBUJA COROLLA AÑO 2014', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 17:17:54'),
(895, 2, 'BUR64', 'BURBUJA MITSUBISHI L200 AÑO 2000 DOBE CABINA', 'vistas/img/productos/default/anonymous.png', 0, 45, 65, 0, '2022-11-11 22:42:11'),
(896, 2, 'BUR65', 'BURBUJA MITSUBISHI L200 AÑO 2000 2 PUERTAS', 'vistas/img/productos/default/anonymous.png', 1, 40, 60, 0, '2022-11-05 17:19:58'),
(897, 2, 'BUR66', 'BURBUJA HONDA CIVIC AÑO 2010', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 17:20:38'),
(898, 2, 'BUR67', 'BURBUJA COROLLA AÑO 2015', 'vistas/img/productos/default/anonymous.png', 2, 25, 45, 0, '2022-11-05 17:22:04'),
(899, 2, 'BUR68', 'BURBUJA TACOMA AÑO 2005', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-05 17:34:42'),
(900, 2, 'BUR69', 'BURBUJA TACOMA XTRA CAB AÑO 2005 AL 2022 GRIS', 'vistas/img/productos/default/anonymous.png', 1, 55, 75, 0, '2022-11-05 17:35:34'),
(901, 2, 'BUR70', 'BURBUJA HONDA CIVIC AÑO 2000 AL 2003', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 17:36:15'),
(902, 2, 'BUR71', 'BURBUJA NISSAN NP300 AÑO 2018', 'vistas/img/productos/default/anonymous.png', 1, 45, 65, 0, '2022-11-05 17:36:53'),
(903, 2, 'BUR72', 'BURBUJA KIA FORTE AÑO 2009 AL 2012', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-05 17:37:44'),
(904, 2, 'BUR73', 'BURBUJA MITSUBISHI OUTLANDER 3 FILAS', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-11-05 17:38:25'),
(905, 32, 'FD95', 'VIDRIO DE PUERTA HYUNDAI H100 AÑO 2005 AL 2015 DERECHO', 'vistas/img/productos/default/anonymous.png', 1, 35, 55, 0, '2022-11-07 14:45:22'),
(906, 8, 'FW-2308', 'PARABRISA DELANTERO MAZDA 6 4D 5D HBK AÑO 2003 AL 2008', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-11-08 15:20:25'),
(907, 8, 'FW-379', 'PARABRISA DELANTERO MERCEDES BENZ TROMPUDO AÑO 77 AL 85', 'vistas/img/productos/default/anonymous.png', 0, 65, 120, 0, '2022-12-01 17:16:19'),
(908, 8, 'FW-2001', 'PARABRISA DELANTERO TOYOTA RAV4 4D HBK AÑO 2007 AL 2016', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-11-11 14:07:52'),
(909, 33, 'AC0060S5', 'COPA PARA RINES NISSAN R15', 'vistas/img/productos/default/anonymous.png', 1, 28, 58, 0, '2022-11-14 21:20:28'),
(910, 33, 'AC0060S6', 'COPA PARA RINES NISSAN R16', 'vistas/img/productos/default/anonymous.png', 0, 29.6, 60, 0, '2022-12-06 14:59:17'),
(911, 33, 'AC0032S4', 'COPA PARA RINES TOYOTA R14', 'vistas/img/productos/default/anonymous.png', 1, 26, 56, 0, '2022-11-14 21:22:31'),
(912, 33, 'AC0032S5', 'COPA PARA RINES TOYOTA R15', 'vistas/img/productos/default/anonymous.png', 1, 28, 58, 0, '2022-11-14 21:23:51'),
(913, 33, 'AC0032S6', 'COPA PARA RINES TOYOTA R16', 'vistas/img/productos/default/anonymous.png', 1, 29.6, 60, 0, '2022-11-14 21:25:05'),
(914, 34, 'ACCU080941', 'VICERA TRASERA NISSAN VERSA AÑO 2005 AL 2011', 'vistas/img/productos/default/anonymous.png', 1, 33.6, 57, 0, '2022-11-14 21:50:19'),
(915, 21, 'ACCU080900', 'ROMPE VIENTO COROLLA AÑO 94 AL 96 4 PUERTAS', 'vistas/img/productos/default/anonymous.png', 1, 32, 55, 0, '2022-11-14 21:51:33'),
(917, 8, 'FW-676', 'PARABRISA DELANTERO TOYOTA TERCEL AÑO 91 AL 94', 'vistas/img/productos/default/anonymous.png', 1, 44, 80, 0, '2022-11-18 20:20:25'),
(918, 28, 'FV-001', 'VENTOLERA NISSAN VERSA AÑO 2015 IZQUIERDO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 20, 35, 0, '2022-12-01 14:27:37'),
(919, 32, 'FD-001', 'VIDRIO DE PUERTA NISSAN VERSA AÑO 2015 IZQUIERDO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 25, 45, 0, '2022-12-01 14:30:12'),
(920, 8, 'FW-3514', 'PARABRISA DELANTERO TOYOTA YARIS 4D 2D HBK AÑO 2011 A 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-01 17:02:18'),
(921, 8, 'FW-3813', 'PARABRISA DELANTERO MITSUBISHI OUTLANDER AÑO 2015 AL 2020 3 FILAS', 'vistas/img/productos/default/anonymous.png', 2, 50, 80, 0, '2022-12-02 15:39:10'),
(922, 32, 'FD-002', 'VIDRIO DE PUERTA NISSAN ROGUE SPORT IZQUIERDO TRASERO', 'vistas/img/productos/default/anonymous.png', 1, 30, 60, 0, '2022-12-05 14:59:51'),
(923, 8, 'FW-724', 'PARABRISA DELANTERO TOYOTA COROLLA AE100 AÑO 93 AL 97', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-12-16 19:06:51'),
(924, 8, 'FW-RAV4', 'PARABRISA DELANTERO TOYOTA RAV4 AÑO 94 AL 2000', 'vistas/img/productos/default/anonymous.png', 1, 40, 75, 0, '2022-12-06 14:25:14'),
(925, 8, 'FW-3403', 'PARABRISA DELANTERO HONDA CIVIC AÑO 2012 AL 2016 2 PUERTAS', 'vistas/img/productos/default/anonymous.png', 1, 45, 75, 0, '2022-12-06 15:57:17'),
(927, 8, 'FW-ATTIVO', 'PARABRISA DELANTERO DAEWOO ATTIVO AÑO 2000 AL 2015', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-06 16:04:08'),
(928, 8, 'FW-N300', 'PARABRISA DELANTERO CHEVROLET N300 AÑO 2015 AL 2020', 'vistas/img/productos/default/anonymous.png', 1, 45, 80, 0, '2022-12-06 16:06:11'),
(929, 8, 'FW-3404', 'PARABRISA DELANTER HONDA CIVIC AÑO 2012 AL 2015 4 PUERTAS', 'vistas/img/productos/default/anonymous.png', 1, 45, 75, 0, '2022-12-20 16:51:17'),
(931, 8, 'DW-2101', 'PARABRISA DELANTERO JEEP CHEROKEE AÑO 2014 AL 2019', 'vistas/img/productos/default/anonymous.png', 0, 45, 85, 0, '2022-12-20 15:27:19'),
(932, 36, 'POL-01', 'POLARIZADO COMPLETO PAPEL NORMAL SEDAN', 'vistas/img/productos/default/anonymous.png', 100, 7, 35, 0, '2022-12-20 17:24:50'),
(933, 36, 'POL-02', 'POLARIZADO PARABRISA PAPEL NORMAL SEDAN', 'vistas/img/productos/default/anonymous.png', 100, 2, 10, 0, '2022-12-20 17:25:38'),
(934, 36, 'POL-03', 'POLARIZADO DE PUERTA PAPEL NORMAL ', 'vistas/img/productos/default/anonymous.png', 1000, 1, 5, 0, '2022-12-20 17:46:28'),
(935, 36, 'POL-04', 'POLARIZADO COMPLETO PAPEL NORMAL CAMIONETA', 'vistas/img/productos/default/anonymous.png', 100, 10, 40, 0, '2022-12-20 17:29:43'),
(938, 36, 'POL-07', 'POLARIZADO COMPLETO PAPEL AMERICANO SEDAN', 'vistas/img/productos/default/anonymous.png', 100, 10, 60, 0, '2022-12-20 17:44:06'),
(939, 36, 'POL-08', 'POLARIZADO PARABRISA PAPEL AMERICANO ', 'vistas/img/productos/default/anonymous.png', 100, 3, 20, 0, '2022-12-20 17:48:54'),
(940, 36, 'POL-09', 'POLARIZADO DE PUERTA PAPEL AMERICANO ', 'vistas/img/productos/default/anonymous.png', 100, 2, 10, 0, '2022-12-20 17:45:50'),
(942, 36, 'POL-06', 'POLARIZADO COMPLETO PAPEL AMERICANO CAMIONETA', 'vistas/img/productos/default/anonymous.png', 100, 15, 70, 0, '2022-12-20 17:50:49'),
(943, 36, 'POL-10', 'POLARIZADO COMPLETO PAPEL NANOCARBON SEDAN', 'vistas/img/productos/default/anonymous.png', 100, 30, 90, 0, '2022-12-20 17:52:20'),
(944, 36, 'POL-11', 'POLARIZADO PARABRISA PAPEL NANOCARBON ', 'vistas/img/productos/default/anonymous.png', 100, 10, 30, 0, '2022-12-20 17:53:42'),
(945, 36, 'POL-12', 'POLARIZADO DE PUERTA PAPEL NANOCARBON', 'vistas/img/productos/default/anonymous.png', 100, 5, 15, 0, '2022-12-20 17:55:20'),
(946, 36, 'POL-13', 'POLARIZADO COMPLETO PAPEL NANOCARBON CAMIONETA', 'vistas/img/productos/default/anonymous.png', 100, 35, 95, 0, '2022-12-20 17:56:53'),
(947, 36, 'POL-14', 'POLARIZADO COMPLETO PAPEL CERAMICO SEDAN', 'vistas/img/productos/default/anonymous.png', 100, 40, 130, 0, '2022-12-20 18:00:54'),
(948, 36, 'POL-15', 'POLARIZADO PARABRISA PAPEL CERAMICO', 'vistas/img/productos/default/anonymous.png', 100, 20, 40, 0, '2022-12-20 18:02:28'),
(949, 36, 'POL-16', 'POLARIZADO DE PUERTA PAPEL CERAMICO', 'vistas/img/productos/default/anonymous.png', 100, 10, 25, 0, '2022-12-20 18:03:37'),
(950, 36, 'POL-17', 'POLARIZADO COMPLETO PAPEL CERAMICO CAMIONETA', 'vistas/img/productos/default/anonymous.png', 100, 50, 140, 0, '2022-12-20 18:05:23'),
(951, 28, 'FV-002', 'VENTOLERA NISSAN VERSA NOTE AÑO 2014 IZQUIERDO DELANTERO', 'vistas/img/productos/default/anonymous.png', 1, 10, 45, 0, '2022-12-21 16:56:01'),
(952, 28, 'FV-003', 'VENTOLERA KIA RIO AÑO 2013 IZQUIERDO DELANTERO', 'vistas/img/productos/default/anonymous.png', 1, 10, 45, 0, '2022-12-21 17:05:31'),
(953, 28, 'FV-004', 'VENTOLERA KIA SOUL AÑO 2011 DERECHO DELANTERO', 'vistas/img/productos/default/anonymous.png', 1, 10, 45, 0, '2022-12-21 17:08:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5aukXMwqIMcxI6kK9oP58E0OZFrleEXO1m', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2022-11-18 12:13:41', '2022-11-18 17:13:41'),
(61, 'cristian', 'cristian', '$2a$07$asxx54ahjppf45sd87a5auG0ANJYhFUoQLsUgeNy3/hPAm6yqKy2a', 'Administrador', '', 1, '2022-12-20 11:16:22', '2022-12-20 16:16:22'),
(64, 'delmy', 'delmy', '$2a$07$asxx54ahjppf45sd87a5auf.fwRmEMk2ksEc6xWa29LUnFgcZr4mS', 'Administrador', '', 1, '2022-12-21 09:18:28', '2022-12-21 14:18:28'),
(65, 'daniel', 'daniel', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Administrador', '', 1, '2022-11-29 17:16:08', '2022-11-29 22:16:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(1, 10001, 1, 64, '[{\"id\":\"484\",\"descripcion\":\"ALFOMBRA JUEGO RACINGTEC\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"25\",\"total\":\"25\"}]', 0, 25, 25, 'Efectivo', '2022-10-06 20:52:33'),
(2, 10002, 1, 64, '[{\"id\":\"638\",\"descripcion\":\"PARABRISA DELANTERO TOYOTA DYNA CABINA ANGOSTA AÑO 2004 AL 2009\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2022-10-06 21:28:40'),
(3, 10003, 1, 64, '[{\"id\":\"207\",\"descripcion\":\"PARABRISA DELANTERO MITSUBISHI LANCER AÑO 2001 AL 2007\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-10-07 16:08:09'),
(4, 10004, 1, 64, '[{\"id\":\"331\",\"descripcion\":\"AROMATIZANTE LITTLE TREE\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"5\",\"total\":\"5\"}]', 0, 5, 5, 'Efectivo', '2022-10-07 17:06:30'),
(5, 10005, 1, 64, '[{\"id\":\"240\",\"descripcion\":\"PARABRISA DELANTERO ISUZU DMAX AÑO 2014 AL 2021\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-10-21 17:55:29'),
(6, 10006, 1, 64, '[{\"id\":\"248\",\"descripcion\":\"PARABRISA DELANTERO JEEP PATRIOT AÑO  2007 AL 2015\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2022-10-22 15:49:47'),
(7, 10007, 1, 64, '[{\"id\":\"673\",\"descripcion\":\"PARABRISA DELANTERO HYUNDAI ELANTRA AVANTE SEDAN AÑO 2017 AL 2018\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-10-22 15:57:07'),
(8, 10008, 1, 64, '[{\"id\":\"160\",\"descripcion\":\"PARABRISA DELANTERO CHEVROLET GEO PRIZM AÑO 93 AL 97\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-10-22 17:44:47'),
(9, 10009, 1, 64, '[{\"id\":\"53\",\"descripcion\":\"PARABRISA DELANTERO Hyundai Elantra AÑO 2011 AL 2016\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-10-24 14:04:40'),
(10, 10010, 1, 64, '[{\"id\":\"294\",\"descripcion\":\"PARABRISA DELANTERO TOYOTA COROLLA 4D 5D ALO 2003 AL 2008\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-10-24 15:15:38'),
(11, 10011, 1, 64, '[{\"id\":\"149\",\"descripcion\":\"PARABRISA DELANTERO KIA FORTE AÑO 2010\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"80\",\"total\":\"80\"}]', 64, 80, 144, 'Efectivo', '2022-10-25 16:05:22'),
(12, 10012, 1, 64, '[{\"id\":\"56\",\"descripcion\":\"PARABRISA DELANTERO Hyundai Accent AÑO 2012 AL 2016\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2022-10-27 15:00:48'),
(13, 10013, 1, 64, '[{\"id\":\"246\",\"descripcion\":\"PARABRISA DELANTERO ISUZU TROOPER AÑO 84 AL 88\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-10-29 16:34:56'),
(14, 10014, 1, 64, '[{\"id\":\"124\",\"descripcion\":\"PARABRISA DELANTERO Nissan versa AÑO 2012 AL 2018\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-10-31 23:06:55'),
(15, 10015, 1, 64, '[{\"id\":\"221\",\"descripcion\":\"PARABRISA DELANTERO MITSUBISHI MIRAGE 4 PUERTAS SEDAN HACKBACK AÑO 2014 AL 2019\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2022-11-03 16:35:46'),
(16, 10016, 1, 64, '[{\"id\":\"92\",\"descripcion\":\"PARABRISA DELANTERO toyota corolla AÑO 98 AL 2002\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-11-04 16:55:02'),
(17, 10017, 1, 64, '[{\"id\":\"59\",\"descripcion\":\"PARABRISA DELANTERO Nissan harbody Y frontier Y xterra AÑO 87 AL 2004\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-11-05 16:03:53'),
(18, 10018, 1, 64, '[{\"id\":\"148\",\"descripcion\":\"PARABRISA DELANTERO KIA FORTE 4D 5D HBK AÑO 2014 al 2018\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-11-05 19:45:22'),
(19, 10019, 1, 64, '[{\"id\":\"134\",\"descripcion\":\"PARABRISA delantero BMW 4P SERIE 318 AÑO 92 AL 95\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-11-07 17:18:48'),
(20, 10020, 1, 64, '[{\"id\":\"158\",\"descripcion\":\"PARABRISA DELANTERO NISSAN ROGUE 4D  HBK AÑO 2008 AL 2014\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-11-07 17:30:59'),
(21, 10021, 1, 64, '[{\"id\":\"159\",\"descripcion\":\"PARABRISA DELANTERO KIA SPORTAGE AÑO 95 AL 2004\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-11-07 19:26:47'),
(22, 10022, 1, 64, '[{\"id\":\"179\",\"descripcion\":\"PARABRISA DELANTERO HYUNDAI H100 PEGADO AÑO 2007 AL 2020\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-11-07 22:49:52'),
(23, 10023, 1, 64, '[{\"id\":\"124\",\"descripcion\":\"PARABRISA DELANTERO Nissan versa AÑO 2012 AL 2018\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-11-08 19:38:00'),
(24, 10024, 1, 64, '[{\"id\":\"242\",\"descripcion\":\"PARABRISA DELANTERO MITSUBISHI L200 SPORTERO AÑO 2008 AL 2015\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2022-11-09 14:10:56'),
(25, 10025, 1, 64, '[{\"id\":\"247\",\"descripcion\":\"PARABRISA DELANTERO JEEP COMPASS AÑO 2006 AL 2017\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2022-11-09 14:12:22'),
(26, 10026, 1, 64, '[{\"id\":\"59\",\"descripcion\":\"PARABRISA DELANTERO Nissan harbody Y frontier Y xterra AÑO 87 AL 2004\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-11-09 19:59:25'),
(27, 10027, 1, 64, '[{\"id\":\"157\",\"descripcion\":\"PARABRISA DELANTERO NISSAN ROGUE O X TRAIL 4D HBK AÑO 2014 AL 2020\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-11-12 15:29:41'),
(28, 10028, 1, 64, '[{\"id\":\"109\",\"descripcion\":\"PARABRISA DELANTERO Toyota corolla KE140 2014 AL 2018\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-11-12 15:38:29'),
(29, 10029, 1, 64, '[{\"id\":\"153\",\"descripcion\":\"PARABRISA DELANTERO NISSAN MURANO AÑO 2015\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2022-11-12 17:48:31'),
(30, 10030, 1, 64, '[{\"id\":\"297\",\"descripcion\":\"PARABRISA DELANTERO FORD ESCAPE TRIBUTE AÑO 2008 AL 2012\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2022-11-30 17:38:15'),
(31, 10031, 1, 64, '[{\"id\":\"59\",\"descripcion\":\"PARABRISA DELANTERO Nissan harbody Y frontier Y xterra AÑO 87 AL 2004\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-11-30 17:53:11'),
(32, 10032, 1, 64, '[{\"id\":\"59\",\"descripcion\":\"PARABRISA DELANTERO Nissan harbody Y frontier Y xterra AÑO 87 AL 2004\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2022-11-30 19:01:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=954;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
