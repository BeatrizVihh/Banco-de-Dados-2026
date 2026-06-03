-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jun-2026 às 22:54
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--
CREATE DATABASE IF NOT EXISTS `produtos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES
(3, 'enlatados'),
(4, 'laticínios'),
(5, 'açougue'),
(6, 'limpeza'),
(7, 'eletronicos'),
(8, 'hortifruti'),
(9, 'mercearia'),
(10, 'bebidas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtd` int(11) NOT NULL,
  `data` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `idcat` int(11) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `marca` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `produto`, `preco`, `qtd`, `data`, `ativo`, `idcat`, `observacao`, `marca`) VALUES
(4, 'Acém Peça', '39.99', 50, '2026-05-20', b'1', 3, 'Sem gordura', 'sadia'),
(5, 'Leite Condensado', '15.99', 80, '2026-05-20', b'1', 4, 'bem cremoso', 'piracanjuba'),
(6, 'Milho', '7.99', 80, '2026-05-20', b'1', 3, 'lavado', 'quero'),
(7, 'cloro', '8.49', 80, '2026-05-27', b'1', 6, 'sem cheiro', 'Quiboa'),
(8, 'leite fermentado', '5.49', 80, '2026-05-27', b'1', 4, 'docinho', 'Frutap'),
(9, 'salsicha', '9.80', 80, '2026-05-27', b'1', 5, 'original', 'Sadia'),
(10, 'palmito', '7.00', 80, '2026-05-27', b'1', 3, 'fresco', 'Bonduelle'),
(11, 'sabão em pó', '12.80', 80, '2026-05-27', b'1', 6, 'tira manchas', 'Omo'),
(12, 'suco de laranja', '17.50', 80, '2026-05-27', b'1', 10, '100%fruta', 'Natural one'),
(13, 'arroz', '14.50', 80, '2026-05-27', b'1', 9, '5kg', 'Namorado'),
(14, 'tomate', '7.50', 80, '2026-05-27', b'1', 8, 'o kg', 'Fazendinha'),
(16, 'farinha', '9.40', 80, '2026-05-27', b'1', 3, 'sem fermento', 'dona benta'),
(17, 'Morango', '12.40', 80, '2026-05-27', b'1', 8, 'O Kilo', 'DaFazendinha'),
(18, 'Azeitona', '9.40', 80, '2026-05-27', b'1', 3, 'sem caroço', 'Oliveira'),
(19, 'Leite', '8.25', 99, '2026-05-27', b'1', 4, 'Desnatado', 'piracanjuba');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcat` (`idcat`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idcat`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
