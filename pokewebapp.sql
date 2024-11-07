-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-11-2024 a las 00:05:17
-- Versión del servidor: 8.0.39-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3-4ubuntu2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokewebapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pokedek`
--

CREATE TABLE `Pokedek` (
  `id` int NOT NULL,
  `id_usuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Pokedek`
--

INSERT INTO `Pokedek` (`id`, `id_usuario`) VALUES
(197, 247),
(198, 248),
(201, 252),
(202, 253);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pokedek_pokemon`
--

CREATE TABLE `Pokedek_pokemon` (
  `id` int NOT NULL,
  `id_pokedek` int DEFAULT NULL,
  `id_pokemon` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Pokedek_pokemon`
--

INSERT INTO `Pokedek_pokemon` (`id`, `id_pokedek`, `id_pokemon`) VALUES
(306, 202, 306);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pokemon`
--

CREATE TABLE `Pokemon` (
  `id` int NOT NULL,
  `img_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `especie` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  `altura` decimal(10,0) NOT NULL,
  `baxp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Pokemon`
--

INSERT INTO `Pokemon` (`id`, `img_id`, `especie`, `nombre`, `peso`, `altura`, `baxp`) VALUES
(1, '4', 'charmander', 'charmander', '85', '6', 62),
(2, '10', 'caterpie', 'caterpie', '29', '3', 39),
(3, '11', 'metapod', 'metapod', '99', '7', 72),
(4, '18', 'pidgeot', 'pidgeot', '395', '15', 216),
(5, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(6, '4', 'charmander', 'charmander', '85', '6', 62),
(7, '6', 'charizard', 'charizard', '905', '17', 267),
(8, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(9, '4', 'charmander', 'charmander', '85', '6', 62),
(10, '11', 'metapod', 'metapod', '99', '7', 72),
(11, '12', 'butterfree', 'butterfree', '320', '11', 198),
(12, '13', 'weedle', 'weedle', '32', '3', 39),
(13, '9', 'blastoise', 'blastoise', '855', '16', 265),
(14, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(15, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(16, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(17, '7', 'squirtle', 'squirtle', '90', '5', 63),
(18, '10', 'caterpie', 'caterpie', '29', '3', 39),
(19, '25', 'pikachu', 'pikachu', '60', '4', 112),
(20, '33', 'nidorino', 'nidorino', '195', '9', 128),
(21, '15', 'beedrill', 'beedrill', '295', '10', 178),
(22, '38', 'ninetales', 'ninetales', '199', '11', 177),
(23, '54', 'psyduck', 'psyduck', '196', '8', 64),
(24, '59', 'arcanine', 'arcanine', '1000', '19', 194),
(25, '52', 'meowth', 'meowth', '42', '4', 58),
(26, '8', 'wartortle', 'wartortle', '225', '10', 142),
(27, '26', 'raichu', 'raichu', '300', '8', 243),
(28, '58', 'growlithe', 'growlithe', '190', '7', 70),
(29, '68', 'machamp', 'machamp', '1000', '16', 253),
(30, '66', 'machop', 'machop', '195', '8', 61),
(31, '7', 'squirtle', 'squirtle', '90', '5', 63),
(32, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(33, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(34, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(35, '151', 'mew', 'mew', '40', '4', 300),
(36, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(37, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(38, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(39, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(40, '141', 'kabutops', 'kabutops', '405', '13', 173),
(41, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(42, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(43, '7', 'squirtle', 'squirtle', '90', '5', 63),
(44, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(45, '151', 'mew', 'mew', '40', '4', 300),
(46, '10', 'caterpie', 'caterpie', '29', '3', 39),
(47, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(48, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(49, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(50, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(51, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(52, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(53, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(54, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(55, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(56, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(57, '146', 'moltres', 'moltres', '600', '20', 290),
(58, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(59, '13', 'weedle', 'weedle', '32', '3', 39),
(60, '49', 'venomoth', 'venomoth', '125', '15', 158),
(61, '21', 'spearow', 'spearow', '20', '3', 52),
(62, '10', 'caterpie', 'caterpie', '29', '3', 39),
(63, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(64, '14', 'kakuna', 'kakuna', '100', '6', 72),
(65, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(66, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(67, '4', 'charmander', 'charmander', '85', '6', 62),
(68, '6', 'charizard', 'charizard', '905', '17', 267),
(69, '10', 'caterpie', 'caterpie', '29', '3', 39),
(70, '11', 'metapod', 'metapod', '99', '7', 72),
(71, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(72, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(73, '26', 'raichu', 'raichu', '300', '8', 243),
(74, '4', 'charmander', 'charmander', '85', '6', 62),
(75, '14', 'kakuna', 'kakuna', '100', '6', 72),
(76, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(77, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(78, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(79, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(80, '14', 'kakuna', 'kakuna', '100', '6', 72),
(81, '4', 'charmander', 'charmander', '85', '6', 62),
(82, '13', 'weedle', 'weedle', '32', '3', 39),
(83, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(84, '11', 'metapod', 'metapod', '99', '7', 72),
(85, '10', 'caterpie', 'caterpie', '29', '3', 39),
(86, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(87, '33', 'nidorino', 'nidorino', '195', '9', 128),
(88, '13', 'weedle', 'weedle', '32', '3', 39),
(89, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(90, '8', 'wartortle', 'wartortle', '225', '10', 142),
(91, '17', 'pidgeotto', 'pidgeotto', '300', '11', 122),
(92, '10', 'caterpie', 'caterpie', '29', '3', 39),
(93, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(94, '1|whoami', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(95, '14', 'kakuna', 'kakuna', '100', '6', 72),
(96, '9', 'blastoise', 'blastoise', '855', '16', 265),
(97, '10', 'caterpie', 'caterpie', '29', '3', 39),
(98, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(99, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(100, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(101, '129', 'magikarp', 'magikarp', '100', '9', 40),
(102, '20', 'raticate', 'raticate', '185', '7', 145),
(103, '6', 'charizard', 'charizard', '905', '17', 267),
(104, '6', 'charizard', 'charizard', '905', '17', 267),
(105, '92', 'gastly', 'gastly', '1', '13', 62),
(106, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(107, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(108, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(109, '6', 'charizard', 'charizard', '905', '17', 267),
(110, '9', 'blastoise', 'blastoise', '855', '16', 265),
(111, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(112, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(113, '13', 'weedle', 'weedle', '32', '3', 39),
(114, '25', 'pikachu', 'pikachu', '60', '4', 112),
(115, '13', 'weedle', 'weedle', '32', '3', 39),
(116, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(117, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(118, '69', 'bellsprout', 'bellsprout', '40', '7', 60),
(119, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(120, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(121, '41', 'zubat', 'zubat', '75', '8', 49),
(122, '38', 'ninetales', 'ninetales', '199', '11', 177),
(123, '12', 'butterfree', 'butterfree', '320', '11', 198),
(124, '13', 'weedle', 'weedle', '32', '3', 39),
(125, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(126, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(127, '13', 'weedle', 'weedle', '32', '3', 39),
(128, '10', 'caterpie', 'caterpie', '29', '3', 39),
(129, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(130, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(131, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(132, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(133, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(134, '11', 'metapod', 'metapod', '99', '7', 72),
(135, '14', 'kakuna', 'kakuna', '100', '6', 72),
(136, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(137, '14', 'kakuna', 'kakuna', '100', '6', 72),
(138, '4', 'charmander', 'charmander', '85', '6', 62),
(139, '12', 'kakuna', 'kakuna', '320', '11', 198),
(140, '10', 'caterpie', 'caterpie', '29', '3', 39),
(141, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(142, '1', '', '', '0', '0', 0),
(143, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(144, '150', 'mewtwo', 'mewtwo', '1000', '20', 340),
(145, '151', 'mew', 'mew', '40', '4', 300),
(146, '149', 'dragonite', 'dragonite', '1000', '22', 300),
(147, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(148, '78', 'rapidash', 'rapidash', '950', '17', 175),
(149, '148', 'dragonair', 'dragonair', '165', '40', 147),
(150, '147', 'dratini', 'dratini', '33', '18', 60),
(151, '146', 'moltres', 'moltres', '600', '20', 290),
(152, '145', 'zapdos', 'zapdos', '526', '16', 290),
(153, '144', 'articuno', 'articuno', '554', '17', 290),
(154, '143', 'snorlax', 'snorlax', '1000', '21', 189),
(155, '12', 'kabuto', 'kabuto', '320', '11', 198),
(156, '1', 'ninetales', 'ninetales', '69', '7', 64),
(157, '142', 'aerodactyl', 'aerodactyl', '590', '18', 180),
(158, '141', 'kabutops', 'kabutops', '405', '13', 173),
(159, '140', 'kabuto', 'kabuto', '115', '5', 71),
(160, '139', 'omastar', 'omastar', '350', '10', 173),
(161, '138', 'omanyte', 'omanyte', '75', '4', 71),
(162, '138', 'omanyte', 'omanyte', '75', '4', 71),
(163, '122', 'mr-mime', 'mr-mime', '545', '13', 161),
(164, '7', 'ninetales', 'ninetales', '69', '7', 64),
(165, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(166, '136', 'flareon', 'flareon', '250', '9', 184),
(167, '138', 'omanyte', 'omanyte', '75', '4', 71),
(168, '38', 'ninetales', 'ninetales', '199', '11', 177),
(169, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(170, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(171, '22', 'fearow', 'fearow', '380', '12', 155),
(172, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(173, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(174, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(175, '14', 'kakuna', 'kakuna', '100', '6', 72),
(176, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(177, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(178, '19', 'rattata', 'rattata', '35', '3', 51),
(179, '', '', '', '0', '0', 0),
(180, '4', 'charizard', 'charizard', '85', '6', 62),
(181, '', '', '', '0', '0', 0),
(182, '144', 'articuno', 'articuno', '554', '17', 290),
(183, '4', 'charmander', 'charmander', '85', '6', 62),
(184, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(185, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(186, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(187, '15', 'beedrill', 'beedrill', '295', '10', 178),
(188, '8', 'wartortle', 'wartortle', '225', '10', 142),
(189, '48', 'venonat', 'venonat', '300', '10', 61),
(190, '48', 'venonat', 'venonat', '300', '10', 61),
(191, '34', 'nidoking', 'nidoking', '620', '14', 253),
(192, '8', 'wartortle', 'wartortle', '225', '10', 142),
(193, '46', 'paras', 'paras', '54', '3', 57),
(194, '54', 'psyduck', 'psyduck', '196', '8', 64),
(195, '150', 'mewtwo', 'mewtwo', '1000', '20', 340),
(196, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(197, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(198, '144', 'articuno', 'articuno', '554', '17', 290),
(199, '58', 'growlithe', 'growlithe', '190', '7', 70),
(200, '23', 'ekans', 'ekans', '69', '20', 58),
(201, '7', 'squirtle', 'squirtle', '90', '5', 63),
(202, '13', 'weedle', 'weedle', '32', '3', 39),
(203, '16', 'pidgey', 'pidgey', '18', '3', 50),
(204, '9', 'blastoise', 'blastoise', '855', '16', 265),
(205, '24', 'arbok', 'arbok', '650', '35', 157),
(206, '47', 'parasect', 'parasect', '295', '10', 142),
(207, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(208, '10', 'caterpie', 'caterpie', '29', '3', 39),
(209, '10', 'caterpie', 'caterpie', '29', '3', 39),
(210, '14', 'kakuna', 'kakuna', '100', '6', 72),
(211, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(212, '9', 'blastoise', 'blastoise', '855', '16', 265),
(213, '8', 'wartortle', 'wartortle', '225', '10', 142),
(214, '22', 'fearow', 'fearow', '380', '12', 155),
(215, '7', 'squirtle', 'squirtle', '90', '5', 63),
(216, '24', 'arbok', 'arbok', '650', '35', 157),
(217, '13', 'weedle', 'weedle', '32', '3', 39),
(218, '20', 'raticate', 'raticate', '185', '7', 145),
(219, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(220, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(221, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(222, '10', 'caterpie', 'caterpie', '29', '3', 39),
(223, '17', 'pidgeotto', 'pidgeotto', '300', '11', 122),
(224, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(225, '25', 'pikachu', 'pikachu', '60', '4', 112),
(226, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(227, '111', 'rhyhorn', 'rhyhorn', '1000', '10', 69),
(228, '18', 'pidgeot', 'pidgeot', '395', '15', 216),
(229, '4', 'charmander', 'charmander', '85', '6', 62),
(230, '13', 'weedle', 'weedle', '32', '3', 39),
(231, '6', 'charizard', 'charizard', '905', '17', 267),
(232, '38', 'ninetales', 'ninetales', '199', '11', 177),
(233, '6', 'charizard', 'charizard', '905', '17', 267),
(234, '45', 'vileplume', 'vileplume', '186', '12', 245),
(235, '39', 'jigglypuff', 'jigglypuff', '55', '5', 95),
(236, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(237, '46', 'paras', 'paras', '54', '3', 57),
(238, '14', 'kakuna', 'kakuna', '100', '6', 72),
(239, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(240, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(241, '14', 'kakuna', 'kakuna', '100', '6', 72),
(242, '16', 'pidgey', 'pidgey', '18', '3', 50),
(243, '4', 'charmander', 'charmander', '85', '6', 62),
(244, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(245, '13', 'weedle', 'weedle', '32', '3', 39),
(246, '151', 'mew', 'mew', '40', '4', 300),
(247, '150', 'mewtwo', 'mewtwo', '1000', '20', 340),
(248, '10', 'caterpie', 'caterpie', '29', '3', 39),
(249, '132', 'ditto', 'ditto', '40', '3', 101),
(250, '52', 'meowth', 'meowth', '42', '4', 58),
(251, '4', 'charmander', 'charmander', '85', '6', 62),
(252, '6', 'charizard', 'charizard', '905', '17', 267),
(253, '8', 'wartortle', 'wartortle', '225', '10', 142),
(254, '8', 'wartortle', 'wartortle', '225', '10', 142),
(255, '9', 'blastoise', 'blastoise', '855', '16', 265),
(256, '144', 'articuno', 'articuno', '554', '17', 290),
(257, '6', 'charizard', 'charizard', '905', '17', 267),
(258, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(259, '14', 'kakuna', 'kakuna', '100', '6', 72),
(260, '7', 'squirtle', 'squirtle', '90', '5', 63),
(261, '25', 'pikachu', 'pikachu', '60', '4', 112),
(262, '26', 'raichu', 'raichu', '300', '8', 243),
(263, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(264, '10', 'caterpie', 'caterpie', '29', '3', 39),
(265, '10', 'caterpie', 'caterpie', '29', '3', 39),
(266, '6', 'charizard', 'charizard', '905', '17', 267),
(267, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(268, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(269, '13', 'weedle', 'weedle', '32', '3', 39),
(270, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(271, '4', 'charmander', 'charmander', '85', '6', 62),
(272, '11', 'metapod', 'metapod', '99', '7', 72),
(273, '45', 'vileplume', 'vileplume', '186', '12', 245),
(274, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(275, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(276, '151', 'mew', 'mew', '40', '4', 300),
(277, '6', 'charizard', 'charizard', '905', '17', 267),
(278, '4', 'charmander', 'charmander', '85', '6', 62),
(279, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(280, '13', 'weedle', 'weedle', '32', '3', 39),
(281, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(282, '2', 'ivysaur', 'ivysaur', '130', '10', 142),
(283, '3', 'venusaur', 'venusaur', '1000', '20', 263),
(284, '4', 'charmander', 'charmander', '85', '6', 62),
(285, '5', 'charmeleon', 'charmeleon', '190', '11', 142),
(286, '6', 'charizard', 'charizard', '905', '17', 267),
(287, '7', 'squirtle', 'squirtle', '90', '5', 63),
(288, '13', 'weedle', 'weedle', '32', '3', 39),
(289, '11', 'metapod', 'metapod', '99', '7', 72),
(290, '14', 'kakuna', 'kakuna', '100', '6', 72),
(291, '13', 'weedle', 'weedle', '32', '3', 39),
(292, '14', 'kakuna', 'kakuna', '100', '6', 72),
(293, '16', 'pidgey', 'pidgey', '18', '3', 50),
(294, '4', 'charmander', 'charmander', '85', '6', 62),
(295, '4', 'charmander', 'charmander', '85', '6', 62),
(296, '6', 'charizard', 'charizard', '905', '17', 267),
(297, '1', 'bulbasaur', 'bulbasaur', '69', '7', 64),
(298, '10', 'caterpie', 'caterpie', '29', '3', 39),
(306, '6', 'charizard', 'charizard', '905', '17', 267);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int NOT NULL,
  `nombre` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pokeballs` int NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`id`, `nombre`, `correo`, `contrasena`, `pokeballs`, `fecha_creacion`) VALUES
(247, 'mmora', 'marc.mora.m@gmail.com', '$2y$10$BihYjTKqItk1jpk5pchCl.6aorz7JFbFMgTQMSWY6smxtjFityzs.', 30, '2024-10-30 03:03:34'),
(248, 'mmora1', 'm@mmora.es', '$2y$10$D172TQw7axPkxgQEBusfF.sKSiL6n7dG.HArV.wFIrg/AzkohGf5e', 30, '2024-10-30 03:57:04'),
(252, 'Pepito', 'pepito@mail.com', '$2y$10$EXeWt2.UTuGafx/yT5Gm9.o9/HBwXk8n8t0C0g68/xg4rSbm0JYxe', 28, '2024-11-06 05:23:44'),
(253, '1234', 'hola123@email.com', '$2y$10$dk/H9eyalz.PmASM8q4Rm.di3PiXqG3parJOL1HFaf9juhNO9Y0je', 26, '2024-11-06 05:24:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Pokedek`
--
ALTER TABLE `Pokedek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `Pokedek_pokemon`
--
ALTER TABLE `Pokedek_pokemon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pokedek` (`id_pokedek`),
  ADD KEY `id_pokemon` (`id_pokemon`);

--
-- Indices de la tabla `Pokemon`
--
ALTER TABLE `Pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Pokedek`
--
ALTER TABLE `Pokedek`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT de la tabla `Pokedek_pokemon`
--
ALTER TABLE `Pokedek_pokemon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT de la tabla `Pokemon`
--
ALTER TABLE `Pokemon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Pokedek`
--
ALTER TABLE `Pokedek`
  ADD CONSTRAINT `Pokedek_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `Pokedek_pokemon`
--
ALTER TABLE `Pokedek_pokemon`
  ADD CONSTRAINT `Pokedek_pokemon_ibfk_1` FOREIGN KEY (`id_pokedek`) REFERENCES `Pokedek` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Pokedek_pokemon_ibfk_2` FOREIGN KEY (`id_pokemon`) REFERENCES `Pokemon` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
