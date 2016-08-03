-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-08-2016 a las 22:39:49
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `git_proyects`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE IF NOT EXISTS `paises` (
`id_pais` int(10) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `siglas`, `pais`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AQ', 'Antarctica'),
(7, 'AG', 'Antigua and Barbuda'),
(8, 'AR', 'Argentina'),
(9, 'AM', 'Armenia'),
(10, 'AU', 'Australia'),
(11, 'AT', 'Austria'),
(12, 'BS', 'Bahamas'),
(13, 'BD', 'Bangladesh'),
(14, 'BB', 'Barbados'),
(15, 'BE', 'Belgium'),
(16, 'BM', 'Bermuda'),
(17, 'BO', 'Bolivia'),
(18, 'BA', 'Bosnia and Herzegowina'),
(19, 'BW', 'Botswana'),
(20, 'BR', 'Brasil'),
(21, 'BG', 'Bulgaria'),
(22, 'BF', 'Burkina Faso'),
(23, 'KH', 'Cambodia'),
(24, 'CM', 'Cameroon'),
(25, 'CA', 'Canada'),
(26, 'CL', 'Chile'),
(27, 'CN', 'China'),
(28, 'CO', 'Colombia'),
(29, 'CG', 'Congo'),
(30, 'CR', 'Costa Rica'),
(31, 'HR', 'Croatia (Hrvatska)'),
(32, 'CU', 'Cuba'),
(33, 'CY', 'Cyprus'),
(34, 'CZ', 'Czech Republic'),
(35, 'DK', 'Denmark'),
(36, 'DO', 'República Dominicana'),
(37, 'EC', 'Ecuador'),
(38, 'EG', 'Egypt'),
(39, 'SV', 'El Salvador'),
(40, 'FK', 'Islas Malvinas'),
(41, 'FO', 'Faroe Islands'),
(42, 'FJ', 'Fiji'),
(43, 'FI', 'Finland'),
(44, 'FR', 'France'),
(45, 'GE', 'Georgia'),
(46, 'DE', 'Germany'),
(47, 'GH', 'Ghana'),
(48, 'GR', 'Greece'),
(49, 'GL', 'Greenland'),
(50, 'GU', 'Guam'),
(51, 'GT', 'Guatemala'),
(52, 'GN', 'Guinea'),
(53, 'HT', 'Haiti'),
(54, 'HN', 'Honduras'),
(55, 'HK', 'Hong Kong'),
(56, 'HU', 'Hungary'),
(57, 'IS', 'Iceland'),
(58, 'IN', 'India'),
(59, 'ID', 'Indonesia'),
(60, 'IR', 'Iran'),
(61, 'IQ', 'Iraq'),
(62, 'IE', 'Ireland'),
(63, 'IL', 'Israel'),
(64, 'IT', 'Italy'),
(65, 'JM', 'Jamaica'),
(66, 'JP', 'Japan'),
(67, 'JO', 'Jordan'),
(68, 'KR', 'Korea'),
(69, 'KW', 'Kuwait'),
(70, 'LV', 'Latvia'),
(71, 'LB', 'Lebanon'),
(72, 'LI', 'Liechtenstein'),
(73, 'LT', 'Lithuania'),
(74, 'LU', 'Luxembourg'),
(75, 'MY', 'Malaysia'),
(76, 'MV', 'Maldives'),
(77, 'MX', 'Mexico'),
(78, 'MC', 'Monaco'),
(79, 'MN', 'Mongolia'),
(80, 'MA', 'Morocco'),
(81, 'NP', 'Nepal'),
(82, 'NL', 'Netherlands'),
(83, 'NZ', 'New Zealand'),
(84, 'NI', 'Nicaragua'),
(85, 'NE', 'Niger'),
(86, 'NG', 'Nigeria'),
(87, 'NO', 'Norway'),
(88, 'PA', 'Panamá'),
(89, 'PY', 'Paraguay'),
(90, 'PE', 'Perú'),
(91, 'PH', 'Philippines'),
(92, 'PL', 'Poland'),
(93, 'PT', 'Portugal'),
(94, 'PR', 'Puerto Rico'),
(95, 'QA', 'Qatar'),
(96, 'RO', 'Romania'),
(97, 'RU', 'Russian Federation'),
(98, 'SA', 'Saudi Arabia'),
(99, 'SN', 'Senegal'),
(100, 'SG', 'Singapore'),
(101, 'ZA', 'South Africa'),
(102, 'ES', 'España'),
(103, 'SE', 'Sweden'),
(104, 'CH', 'Switzerland'),
(105, 'TW', 'Taiwan'),
(106, 'TH', 'Thailand'),
(107, 'TR', 'Turkey'),
(108, 'UG', 'Uganda'),
(109, 'UA', 'Ukraine'),
(110, 'AE', 'United Arab Emirates'),
(111, 'GB', 'United Kingdom'),
(112, 'US', 'Estados Unidos'),
(113, 'UY', 'Uruguay'),
(114, 'VE', 'Venezuela'),
(115, 'VG', 'Virgin Islands'),
(116, 'YE', 'Yemen'),
(117, 'YU', 'Yugoslavia'),
(118, 'ZW', 'Zimbabwe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
 ADD PRIMARY KEY (`id_pais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
MODIFY `id_pais` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
