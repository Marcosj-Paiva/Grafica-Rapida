-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/08/2025 às 15:02
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `grafica_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `usuario_id`, `telefone`, `endereco`, `cep`, `cidade`, `uf`) VALUES
(6, 6, '(33)333333333', ' Av principal', '29050-320', 'Vitória', 'ES'),
(11, 11, '(33)988884444', 'Rua teste', '29500000', 'Alegre', 'ES'),
(12, 12, '(33)988888888', 'Rua teste', '29500000', 'Alegre', 'ES');

-- --------------------------------------------------------

--
-- Estrutura para tabela `encomendas`
--

CREATE TABLE `encomendas` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `data_encomenda` timestamp NOT NULL DEFAULT current_timestamp(),
  `valor_total` decimal(10,2) NOT NULL,
  `status` enum('em_aberto','pago','concluido','cancelado') NOT NULL DEFAULT 'em_aberto',
  `data_vencimento_boleto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `encomendas`
--

INSERT INTO `encomendas` (`id`, `cliente_id`, `data_encomenda`, `valor_total`, `status`, `data_vencimento_boleto`) VALUES
(7, 6, '2025-08-16 04:25:24', 150.00, 'em_aberto', '2025-08-21'),
(8, 6, '2025-08-16 04:25:24', 25.50, 'pago', '2025-08-21'),
(9, 6, '2025-08-16 04:25:24', 300.00, 'cancelado', '2025-08-21'),
(10, 6, '2025-08-18 07:15:31', 35.00, 'em_aberto', NULL),
(11, 6, '2025-08-18 07:35:46', 0.50, 'em_aberto', NULL),
(12, 6, '2025-08-18 08:19:28', 80.00, 'em_aberto', NULL),
(13, 6, '2025-08-18 08:25:51', 115.00, 'em_aberto', NULL),
(14, 6, '2025-08-18 08:43:16', 80.00, 'pago', NULL),
(15, 6, '2025-08-21 08:42:15', 80.00, 'em_aberto', NULL),
(16, 6, '2025-08-21 08:51:08', 80.00, 'pago', NULL),
(18, 6, '2025-08-21 17:22:34', 35.00, 'em_aberto', NULL),
(19, 6, '2025-08-21 17:25:59', 35.00, 'em_aberto', NULL),
(20, 6, '2025-08-21 17:26:49', 160.00, 'em_aberto', NULL),
(21, 6, '2025-08-21 17:31:16', 80.00, 'em_aberto', NULL),
(22, 6, '2025-08-21 17:33:39', 80.00, 'em_aberto', NULL),
(23, 6, '2025-08-21 17:34:53', 35.00, 'em_aberto', NULL),
(24, 6, '2025-08-21 17:36:03', 35.00, 'em_aberto', NULL),
(25, 6, '2025-08-21 17:39:54', 35.00, 'cancelado', NULL),
(26, 6, '2025-08-21 19:55:03', 400.00, 'concluido', NULL),
(27, 11, '2025-08-22 00:36:55', 35.00, 'em_aberto', NULL),
(28, 11, '2025-08-22 00:52:20', 35.00, 'pago', NULL),
(29, 11, '2025-08-22 01:16:14', 525.00, 'em_aberto', NULL),
(30, 6, '2025-08-22 04:03:50', 35.00, 'em_aberto', NULL),
(31, 11, '2025-08-22 04:04:58', 35.00, 'concluido', NULL),
(32, 11, '2025-08-22 04:05:11', 675.00, 'pago', NULL),
(33, 11, '2025-08-22 05:06:21', 232.00, 'pago', NULL),
(34, 11, '2025-08-22 05:54:34', 35.00, 'pago', NULL),
(35, 11, '2025-08-22 06:55:42', 35.00, 'concluido', NULL),
(36, 12, '2025-08-22 06:57:21', 35.00, 'em_aberto', NULL),
(37, 11, '2025-08-22 07:06:02', 0.00, 'em_aberto', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_encomenda`
--

CREATE TABLE `itens_encomenda` (
  `id` int(11) NOT NULL,
  `encomenda_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_unitario` decimal(10,2) NOT NULL,
  `atributos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`atributos`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itens_encomenda`
--

INSERT INTO `itens_encomenda` (`id`, `encomenda_id`, `servico_id`, `quantidade`, `valor_unitario`, `atributos`) VALUES
(3, 7, 1, 3, 0.50, '{\"cor\":\"Preto\",\"papel\":\"Sulfite A4\"}'),
(4, 7, 2, 1, 80.00, '{\"tamanho\":\"1x2m\",\"acabamento\":\"fosco\"}'),
(5, 8, 3, 1, 35.00, '{\"cor\":\"Branca\",\"estampa\":\"Logo\"}'),
(6, 9, 2, 2, 80.00, '{\"tamanho\":\"2x3m\",\"acabamento\":\"brilho\"}'),
(7, 9, 4, 5, 45.00, '{\"tipo\":\"Fosco\",\"arte\":\"frente e verso\"}'),
(8, 10, 3, 1, 35.00, '[]'),
(9, 11, 1, 1, 0.50, '{\"tipo_papel\":\"sulfite_75g\",\"tipo_impressao\":\"pb\"}'),
(10, 12, 2, 1, 80.00, '{\"material\":\"lona_fosca\"}'),
(11, 13, 2, 1, 80.00, '{\"material\":\"lona_fosca\"}'),
(12, 13, 3, 1, 35.00, '[]'),
(13, 14, 2, 1, 80.00, '{\"material\":\"lona_fosca\"}'),
(14, 15, 2, 1, 80.00, '{\"material\":\"lona_fosca\"}'),
(15, 16, 2, 1, 80.00, '{\"material\":\"lona_fosca\"}'),
(18, 18, 3, 1, 35.00, '[]'),
(19, 19, 3, 1, 35.00, '[]'),
(20, 20, 2, 2, 80.00, '{\"material\":\"lona_fosca\"}'),
(21, 21, 2, 1, 80.00, '{\"material\":\"lona_fosca\"}'),
(22, 22, 2, 1, 80.00, '{\"material\":\"lona_fosca\"}'),
(23, 23, 3, 1, 35.00, '[]'),
(24, 24, 3, 1, 35.00, '[]'),
(25, 25, 3, 1, 35.00, '[]'),
(26, 26, 2, 5, 80.00, '{\"material\":\"lona_fosca\"}'),
(27, 27, 3, 1, 35.00, '[]'),
(28, 28, 3, 1, 35.00, '[]'),
(29, 29, 3, 15, 35.00, '[]'),
(30, 30, 3, 1, 35.00, '[]'),
(31, 31, 3, 1, 35.00, '[]'),
(32, 32, 4, 15, 45.00, '[]'),
(34, 34, 3, 1, 35.00, '[]'),
(35, 35, 3, 1, 35.00, '[]'),
(36, 36, 3, 1, 35.00, '[]'),
(37, 37, 2, 1, 0.00, '[]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco_base` decimal(10,2) NOT NULL,
  `imagem_url` varchar(255) DEFAULT NULL,
  `tipo_servico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `descricao`, `preco_base`, `imagem_url`, `tipo_servico`) VALUES
(1, 'Impressão A4', 'Impressões de alta qualidade em papel A4.', 0.50, '/grafica_web/assets/img/impressao_a4.jpg', 'reproducao'),
(2, 'Banner em Lona', 'Banners resistentes para eventos e divulgação.', 20.00, '/grafica_web/assets/img/banner.jpg', 'Banner'),
(3, 'Caneca Personalizada', 'Canecas de cerâmica com sua arte ou foto.', 35.00, '/grafica_web/assets/img/caneca.jpg', 'caneca'),
(4, 'Cartão de Visita (100 un.)', 'Cartões de visita com acabamento profissional.', 45.00, '/grafica_web/assets/img/cartao_visita.jpg', 'cartao');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('cliente','admin') NOT NULL DEFAULT 'cliente',
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`, `senha`, `tipo`, `data_cadastro`) VALUES
(1, 'Administrador', 'admin@grafica.com', '000.000.000-01', '*01A6717B58FF5C7EAFFF6CB7C96F7428EA65FE4C', 'admin', '2025-08-13 17:33:35'),
(5, 'Admin Padrão', 'adminpadrao@email.com', '000.000.000-03', '1234', 'admin', '2025-08-14 02:16:36'),
(6, 'Marcos', 'marcos@email', '000.000.000-04', '$2y$10$heh8tJgsHuh0CvFj0NFjFulYga7ib4QVWDoNjN8UTTNuF4opK4mtW', 'admin', '2025-08-15 16:50:16'),
(11, 'let', 'let@email', '657.154.879-78', '$2y$10$IaMGzp0kWWpxz/pRZCbarO8grwdAijt.8so5.6uPQ.YsLpQWf16n6', 'cliente', '2025-08-21 19:36:30'),
(12, 'joao', 'joao@email', '123.654.789-59', '$2y$10$AfHGIj.bzg.sI9tw8klL3uYB7wwQ.5L30TO53UZKFPjdRWDuQDtrO', 'cliente', '2025-08-22 01:57:05');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `encomendas`
--
ALTER TABLE `encomendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices de tabela `itens_encomenda`
--
ALTER TABLE `itens_encomenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `encomenda_id` (`encomenda_id`),
  ADD KEY `servico_id` (`servico_id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `encomendas`
--
ALTER TABLE `encomendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `itens_encomenda`
--
ALTER TABLE `itens_encomenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Restrições para tabelas `encomendas`
--
ALTER TABLE `encomendas`
  ADD CONSTRAINT `encomendas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Restrições para tabelas `itens_encomenda`
--
ALTER TABLE `itens_encomenda`
  ADD CONSTRAINT `itens_encomenda_ibfk_1` FOREIGN KEY (`encomenda_id`) REFERENCES `encomendas` (`id`),
  ADD CONSTRAINT `itens_encomenda_ibfk_2` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
