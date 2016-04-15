-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 14-Abr-2016 às 21:33
-- Versão do servidor: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consumo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estimativa`
--

CREATE TABLE `estimativa` (
  `id` int(11) NOT NULL,
  `aparelho` varchar(150) DEFAULT NULL,
  `uso_mes` tinyint(4) DEFAULT NULL,
  `uso_dia` varchar(10) DEFAULT NULL,
  `mensal_kwh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estimativa`
--

INSERT INTO `estimativa` (`id`, `aparelho`, `uso_mes`, `uso_dia`, `mensal_kwh`) VALUES
(1, 'APARELHO DE BLU RAY', 8, '2h', '0,192'),
(2, 'APARELHO DE DVD', 8, '2h', '0,24'),
(3, 'APARELHO DE SOM 3 EM 1', 20, '3h', '6,6'),
(4, 'AQUECEDOR DE AMBIENTE', 15, '8h', '193,44'),
(5, 'AQUECEDOR DE MAMADEIRA', 30, '15min', '0,75'),
(6, 'AQUECEDOR DE MARMITA', 20, '30min', '0,6'),
(7, 'AR CONDICIONADO TIPO JANELA MENOR OU IGUAL A 9,000 BTU', 30, '8h', '128,8'),
(8, 'AR CONDICIONADO TIPO JANELA DE 9,001 A 14,000 BTU', 30, '8h', '181,6'),
(9, 'AR CONDICIONADO TIPO JANELA MAIOR QUE 14,000 BTU', 30, '8h', '374'),
(10, 'AR CONDICIONADO TIPO SPLIT MENOR OU IGUAL A 10,000 BTU', 30, '8h', '142,288'),
(11, 'AR CONDICIONADO TIPO SPLIT DE 10,001 A 15,000 BTU', 30, '8h', '193,76'),
(12, 'AR CONDICIONADO TIPO SPLIT DE 15,001 A 20,000 BTU', 30, '8h', '293,68'),
(13, 'AR CONDICIONADO TIPO SPLIT DE 20,001 A 30,000 BTU', 30, '8h', '439,2'),
(14, 'AR CONDICIONADO TIPO SPLIT MAIOR QUE 30,000 BTU', 30, '8h', '679,2'),
(15, 'ASPIRADOR DE PÓ', 30, '20min', '7,17'),
(16, 'BATEDEIRA', 8, '20min', '0,4'),
(17, 'BOILER ELÉTRICO DE 200L', 30, '24h', '346,75'),
(18, 'BOMBA D\'ÁGUA 1/2 CV', 30, '30min', '7,2'),
(19, 'BOMBA D\'ÁGUA 1/3 CV', 30, '30min', '6,15'),
(20, 'CAFETEIRA ELÉTRICA', 30, '1h', '65,65'),
(21, 'CAFETEIRA EXPRESSO', 30, '1h', '23,82'),
(22, 'CHALEIRA ELÉTRICA', 30, '1h', '28,23'),
(23, 'CHURRASQUEIRA ELÉTRICA', 5, '4h', '76'),
(24, 'CHUVEIRO ELÉTRICO - 4500 W', 30, '32min', '72'),
(25, 'CHUVEIRO ELÉTRICO - 5500 W', 30, '32min', '88'),
(26, 'COMPUTADOR', 30, '8h', '15,12'),
(27, 'ENCERADEIRA', 2, '2h', '1,8'),
(28, 'ESPREMEDOR DE FRUTAS', 20, '10min', '0,187'),
(29, 'EXAUSTOR FOGÃO', 30, '2h', '9,96'),
(30, 'FAX MODEM EM STAND BY', 30, '24h', '2,16'),
(31, 'FERRO ELÉTRICO AUTOMÁTICO A SECO - 1050W', 12, '1h', '2,4'),
(32, 'FERRO ELÉTRICO AUTOMÁTICO A VAPOR - 1200W', 12, '1h', '7,2'),
(33, 'FOGÃO ELÉTRICO - COOK TOP (POR QUEIMADOR)', 30, '1h', '68,55'),
(34, 'FORNO ELÉTRICO', 30, '1h', '15'),
(35, 'FORNO MICRO-ONDAS - 25L', 30, '20min', '13,98'),
(36, 'FREEZER VERTICAL/HORIZONTAL', 30, '24h', '47,55'),
(37, 'FREEZER VERTICAL FROST FREE', 30, '24h', '54'),
(38, 'FRIGOBAR', 30, '24h', '18,9'),
(39, 'FRITADEIRA ELÉTRICA', 15, '30min', '6,81'),
(40, 'FURADEIRA', 4, '1h', '0,944'),
(41, 'GELADEIRA 1 PORTA', 30, '24h', '25,2'),
(42, 'GELADEIRA 1 PORTA FROST FREE', 30, '24h', '39,6'),
(43, 'GELADEIRA 2 PORTAS', 30, '24h', '48,24'),
(44, 'GELADEIRA 2 PORTAS FROST FREE', 30, '24h', '56,88'),
(45, 'GRILL', 10, '30min', '3,205'),
(46, 'HOME THEATER - 350 W', 8, '2h', '5,6'),
(47, 'IMPRESSORA', 30, '1h', '0,45'),
(48, 'LÂMPADA FLUORESCENTE COMPACTA - 11W', 30, '5h', '1,65'),
(49, 'LÂMPADA FLUORESCENTE COMPACTA - 15W', 30, '5h', '2,25'),
(50, 'LÂMPADA FLUORESCENTE COMPACTA - 23W', 30, '5h', '3,45'),
(51, 'LÂMPADA INCANDESCENTE - 40W', 30, '5h', '6'),
(52, 'LÂMPADA INCANDESCENTE - 60W', 30, '5h', '9'),
(53, 'LÂMPADA INCANDESCENTE - 100W', 30, '5h', '15'),
(54, 'LAVADORA DE LOUÇAS', 30, '40min', '30,86'),
(55, 'LAVADORA DE ROUPAS', 12, '1h', '17,64'),
(56, 'LIQUIDIFICADOR', 15, '15min', '806'),
(57, 'MÁQUINA DE COSTURA', 10, '3h', '3'),
(58, 'MODEM DE INTERNET', 30, '8h', '1,92'),
(59, 'MONITOR', 30, '8h', '13,2'),
(60, 'MONITOR LCD', 30, '8h', '8,16'),
(61, 'MULTIPROCESSADOR', 20, '1h', '8,56'),
(62, 'NEBULIZADOR', 16, '2,5h', '1,68'),
(63, 'NOTEBOOK', 30, '8h', '4,8'),
(64, 'PANELA ELÉTRICA', 20, '1h', '22'),
(65, 'PRANCHA (CHAPINHA', 20, '30min', '0,33'),
(66, 'PROJETOR', 20, '1h', '4,78'),
(67, 'RÁDIO ELÉTRICO PEQUENO', 30, '10h', '1,5'),
(68, 'RÁDIO RELÓGIO', 30, '24h', '3,6'),
(69, 'ROTEADOR', 30, '8h', '1,44'),
(70, 'SANDUICHEIRA', 30, '10min', '3,348'),
(71, 'SCANNER', 30, '1h', '0,27'),
(72, 'SECADOR DE CABELO - 1000W', 30, '10min', '52,15'),
(73, 'SECADORA DE ROUPA', 8, '1h', '14,92'),
(74, 'TANQUINHO', 12, '1h', '0,84'),
(75, 'TELEFONE SEM FIO', 30, '24h', '2,16'),
(76, 'TORNEIRA ELÉTRICA - 3250W', 30, '30min', '48,75'),
(77, 'TORRADEIRA', 30, '10min', '4'),
(78, 'TV EM CORES - 14" (TUBO)', 30, '5h', '6,3'),
(79, 'TV EM CORES - 29" (TUBO)', 30, '5h', '15,15'),
(80, 'TV EM CORES - 32" (LCD)', 30, '5h', '14,25'),
(81, 'TV EM CORES - 40" (LED)', 30, '5h', '12,45'),
(82, 'TV EM CORES - 42" (LCD)', 30, '5h', '30,45'),
(83, 'TV PORTÁTIL', 30, '5h', '7,05'),
(84, 'VENTILADOR DE MESA', 30, '8h', '17,28'),
(85, 'VENTILADOR DE TETO', 30, '8h', '17,52'),
(86, 'VIDEOGAME', 15, '4h', '1,44'),
(87, 'Teste', 8, '2h', '190');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estimativa`
--
ALTER TABLE `estimativa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estimativa`
--
ALTER TABLE `estimativa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
