-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Jul-2020 às 16:53
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cod_cliente` int(10) NOT NULL,
  `nome_cliente` varchar(50) NOT NULL,
  `num_cc` int(9) NOT NULL,
  `data_nasc` varchar(10) NOT NULL,
  `num_tel` int(9) NOT NULL,
  `morada` varchar(100) NOT NULL,
  `cod_postal` varchar(10) NOT NULL,
  `num_cartao` int(20) NOT NULL,
  `atividade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cod_cliente`, `nome_cliente`, `num_cc`, `data_nasc`, `num_tel`, `morada`, `cod_postal`, `num_cartao`, `atividade`) VALUES
(1, 'Joao Correia', 123456789, '16/04/2001', 926239575, 'Rua comandante carvalho araujo \nN 115A', '2670-540', 123456789, 'Cliente at'),
(2, 'Quim', 123456780, '01/01/1042', 969696966, 'embaixo da ponte', '0000-000', 476544950, 'Cliente At'),
(3, 'andre gomes', 852147963, '26/02/2000', 967306476, 'rua dona amalia', '1700-264', 65314045, 'Cliente at');

-- --------------------------------------------------------

--
-- Estrutura da tabela `detalhe_venda`
--

CREATE TABLE `detalhe_venda` (
  `cod_venda` int(10) NOT NULL,
  `cod_stock` int(10) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `preco_venda` int(100) NOT NULL,
  `iva` int(10) NOT NULL,
  `quantidade` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `detalhe_venda`
--

INSERT INTO `detalhe_venda` (`cod_venda`, `cod_stock`, `categoria`, `preco_venda`, `iva`, `quantidade`) VALUES
(1, 1, 'T-shirt', 10, 23, 3),
(1, 1, 'T-shirt', 10, 23, 2),
(2, 1, 'T-shirt', 10, 23, 2),
(3, 1, 'T-shirt', 10, 23, 5),
(4, 1, 'T-shirt', 10, 23, 2),
(5, 2, 'SweatShirt', 10, 23, 1),
(5, 2, 'SweatShirt', 10, 23, 1),
(6, 2, 'SweatShirt', 10, 23, 3),
(7, 1, 'T-shirt', 10, 23, 2),
(7, 1, 'T-shirt', 10, 23, 2),
(7, 1, 'T-shirt', 10, 23, 69),
(7, 2, 'SweatShirt', 10, 23, 69),
(7, 2, 'SweatShirt', 10, 23, 69),
(8, 1, 'T-shirt', 10, 23, 2),
(8, 1, 'T-shirt', 10, 23, 1),
(9, 2, 'SweatShirt', 10, 23, 1),
(9, 2, 'SweatShirt', 10, 23, 2),
(9, 1, 'T-shirt', 10, 23, 7),
(10, 1, 'T-shirt', 10, 23, 7),
(11, 2, 'SweatShirt', 10, 23, 1),
(1, 1, 'T-shirt', 10, 23, 3),
(1, 1, 'T-shirt', 10, 23, 2),
(2, 1, 'T-shirt', 10, 23, 2),
(3, 1, 'T-shirt', 10, 23, 5),
(4, 1, 'T-shirt', 10, 23, 2),
(5, 2, 'SweatShirt', 10, 23, 1),
(5, 2, 'SweatShirt', 10, 23, 1),
(6, 2, 'SweatShirt', 10, 23, 3),
(7, 1, 'T-shirt', 10, 23, 2),
(7, 1, 'T-shirt', 10, 23, 2),
(7, 1, 'T-shirt', 10, 23, 69),
(7, 2, 'SweatShirt', 10, 23, 69),
(7, 2, 'SweatShirt', 10, 23, 69),
(8, 1, 'T-shirt', 10, 23, 2),
(8, 1, 'T-shirt', 10, 23, 1),
(9, 2, 'SweatShirt', 10, 23, 1),
(9, 2, 'SweatShirt', 10, 23, 2),
(9, 1, 'T-shirt', 10, 23, 7),
(10, 1, 'T-shirt', 10, 23, 7),
(11, 2, 'SweatShirt', 10, 23, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `cod_funcionario` int(10) NOT NULL,
  `nome_funcionario` varchar(40) NOT NULL,
  `nif_funcionario` int(9) NOT NULL,
  `telefone_funcionario` int(9) NOT NULL,
  `data_nasc_funcionario` varchar(20) NOT NULL,
  `morada_funcionario` varchar(20) NOT NULL,
  `cod_postal_func` varchar(10) NOT NULL,
  `atividade_funcionario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`cod_funcionario`, `nome_funcionario`, `nif_funcionario`, `telefone_funcionario`, `data_nasc_funcionario`, `morada_funcionario`, `cod_postal_func`, `atividade_funcionario`) VALUES
(1, 'Tiago Almeida', 987654321, 965487854, '16/04/1999', 'rua da calçada de li', '1234-567', 'Funcionári'),
(2, 'joao correia', 154123568, 926239575, '16/04/2001', 'rua da rua\nnum 3\n2 d', '1111-111', 'Funcionári'),
(3, 'manel ', 215487965, 912458796, '20/05/2000', 'rua dos ruas\nnum 34\n', '1245-878', 'Funcionári'),
(4, 'martim', 236547895, 935469874, '11/02/1999', 'rua dos marrecos\nnum', '1548-789', 'Funcionári'),
(5, 'Luis Matos', 287459632, 965487859, '02/02/2002', 'rua dos ruassos\nnum ', '2222-222', 'Funcionário ativo'),
(6, 'jose manel', 965874125, 963254154, '22/06/1999', 'rua de lisboa\nnum 23', '1234-567', 'Funcionário ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `nome` varchar(30) NOT NULL,
  `nif` int(9) NOT NULL,
  `cod_funcionario` int(30) NOT NULL,
  `cod_acesso` int(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`nome`, `nif`, `cod_funcionario`, `cod_acesso`, `password`, `admin`) VALUES
('joao correia', 154123568, 2, 123, 'correia', 'Colaborador'),
('manel ', 215487965, 3, 456, '123456', 'Colaborador'),
('Luis Matos', 287459632, 5, 678, 'correia', 'Administrador'),
('jose manel', 965874125, 6, 789, 'teste234', 'Colaborador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stock`
--

CREATE TABLE `stock` (
  `cod_stock` int(10) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `unidades` int(100) NOT NULL,
  `preco_venda` int(10) NOT NULL,
  `preco_forn` int(10) NOT NULL,
  `iva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `stock`
--

INSERT INTO `stock` (`cod_stock`, `descricao`, `categoria`, `unidades`, `preco_venda`, `preco_forn`, `iva`) VALUES
(1, 'camisola preta com logo fade', 'T-shirt', 81, 10, 5, 23),
(2, 'camisola de mangas compridas preta com capuz e logo em branco', 'SweatShirt', 83, 10, 5, 23);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `cod_venda` int(10) NOT NULL,
  `cod_cliente` int(10) NOT NULL,
  `cod_funcionario` int(10) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(10) NOT NULL,
  `valor_final` varchar(100) NOT NULL,
  `nif` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`cod_venda`, `cod_cliente`, `cod_funcionario`, `data`, `hora`, `valor_final`, `nif`) VALUES
(1, 1, 1, '04/05/2020', '22:54', '20,00', 123456789),
(2, 1, 1, '04/05/2020', '23:09', '20,00', 123456789),
(3, 0, 1, '04/05/2020', '23:10', '50,00', 254697878),
(4, 1, 6, '22/06/2020', '16:41', '20,00', 123456789),
(5, 1, 1, '22/06/2020', '16:59', '20,00', 123456789),
(6, 0, 0, '22/06/2020', '17:17', '30,00', 0),
(7, 2, 3, '23/06/2020', '17:39', '2 070,00', 0),
(8, 0, 1, '23/06/2020', '17:45', '30,00', 125487489),
(9, 0, 5, '25/06/2020', '18:54', '70,00', 0),
(10, 1, 1, '25/06/2020', '18:56', '70,00', 123456789),
(11, 0, 1, '30/06/2020', '13:05', '10', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`cod_funcionario`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`nif`);

--
-- Índices para tabela `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`cod_stock`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`cod_venda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
