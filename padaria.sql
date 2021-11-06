-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2021 às 14:53
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `padaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ativocliente`
--

CREATE TABLE `ativocliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cpfCliente` varchar(20) CHARACTER SET utf8 NOT NULL,
  `emailCliente` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ativo` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ativocliente`
--

INSERT INTO `ativocliente` (`idCliente`, `nomeCliente`, `cpfCliente`, `emailCliente`, `ativo`) VALUES
(1, 'Tiago Oliveira Rios', '123.456.789.00', 'tisgo.rios@edu.univali.br', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tortas`
--

CREATE TABLE `tortas` (
  `idTorta` int(11) NOT NULL,
  `nomeTorta` varchar(100) CHARACTER SET utf8 NOT NULL,
  `categoriaTorta` varchar(50) CHARACTER SET utf8 NOT NULL,
  `descricaoTorta` text CHARACTER SET utf8 NOT NULL,
  `valorKilo` double(10,0) NOT NULL,
  `ativoTorta` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tortas`
--

INSERT INTO `tortas` (`idTorta`, `nomeTorta`, `categoriaTorta`, `descricaoTorta`, `valorKilo`, `ativoTorta`) VALUES
(1, 'Marta Rocha', 'Tortas', 'Massa de chocolate, branca e suspiro, recheio de pêssego, ovos moles, nata e castanha caramelada e cobertura de chantily com castanhas.', 74, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ativocliente`
--
ALTER TABLE `ativocliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `tortas`
--
ALTER TABLE `tortas`
  ADD PRIMARY KEY (`idTorta`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ativocliente`
--
ALTER TABLE `ativocliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tortas`
--
ALTER TABLE `tortas`
  MODIFY `idTorta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
