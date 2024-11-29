-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2024 at 12:50 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atlantica`
--

-- --------------------------------------------------------

--
-- Table structure for table `especialidades`
--

CREATE TABLE `especialidades` (
  `id_especialidade` int NOT NULL,
  `icone` varchar(100) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `especialidades`
--

INSERT INTO `especialidades` (`id_especialidade`, `icone`, `titulo`, `descricao`) VALUES
(1, 'bx bx-hard-hat', 'Engenharia Mecânica', 'Formado pela faculdade de Engenharia com experiência em projetos complexos e inovadores.'),
(2, 'bx-palette', 'Carpintaria', 'Especialista em construção de móveis sob medida, com mais de 10 anos de experiência.\r\nvou escrevendo aqui apenas algumas coisa para ter certeza que vai alterar para os usuarios  comuns. muito obrigado.\r\n'),
(3, 'bx-bar-chart-alt', 'Designer', 'Designer gráfico e de produtos, responsável pela criação de soluções visuais inovadoras.');

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_produto` int NOT NULL,
  `preco_produto` decimal(10,2) NOT NULL,
  `quantidade_produto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_usuario`, `id_produto`, `preco_produto`, `quantidade_produto`) VALUES
(79, 8, 1, '543322.00', 2),
(81, 8, 3, '300.00', 1),
(82, 8, 4, '120.00', 1),
(83, 8, 5, '1203.00', 2),
(84, 8, 15, '380.00', 1),
(87, 8, 12, '588.00', 1),
(92, 7, 2, '200.00', 2),
(93, 1, 1, '300000.00', 1),
(94, 1, 2, '200.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `nomeproduto` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`id_produto`, `imagem`, `nomeproduto`, `preco`, `descricao`) VALUES
(1, 'at4.png', 'Rede Pet ', '899.00', 'Uma rede apaixonante. Construída de uma estrutura sólida de madeira certificada, e uma elegante superfície de dormir, permite um cochilo confortável. A almofada de ultra-camursa tbm é reversível,  hopoalergênica e resistente a manchas.\r\nOs peludos nos dão tanto, porque não retribuir o favor, dando a eles o lugar perfeito para relaxar.\r\n\r\nTamanho 85cm X 85cm x25cm\r\n\r\nDisponível em diversas cores.'),
(2, 'img5.jpg', 'Rede Pet II', '699.00', 'A rede Pet ll da Atlântica design oferece um local confortável e elegante para seu amigo peludo relaxar. \r\nEssa rede da Atlântica tem um design minimalista e muito elegante de camas para animais de estimação,  criado com estrutura sólida em madeira , um colchão confortável e uma capa de almofada removível e lavável.  A ideia é de inclusão do seu peludo no ambiente.  Foi criada para cães e gatos de pequeno e médio porte. \r\n\r\nTamanho: 85 cmx 63 cm x 25 cm .\r\n\r\nDisponível em diversas cores.'),
(3, 'at2.png', 'Prateleiras para gatos', '599.00', 'Adicione estilo a sua casa e encante seu gato com estas Prateleiras de madeira lindamente projetadas e moldadas a vapor. Elas apresentam um design elegante, moderno e super funcional. Uma almofada macia e personalizavel que seu gato vai adorar. \r\nUm móvel resistente,  pode suportar até 20kg, tornando-as perfeitas até  para os maiores gatos. Elas fornecem um local confortável e elevado para seu gato relaxar e observar os arredores.'),
(4, 'at5.png', 'Toca Luxo', '1649.00', 'A Toca Luxo da Atlântica design,  agradou tanto os fãs de pets quanto os de design. A inspiração veio da ideia de que os cães e gatos são animais de Toca e gostam de uma sensação de cercamento.  Sentimos que os acessórios para cães e gatos não devem se parecer com móveis de pessoas em miniaturas, mas devem responder às preferências dos nossos peludos.\r\nA Toca é feita de compensado de bétula, com opção de folheado. A almofada é removível,  lavável e, finalmente substituível.  Esta é realmente uma peça icônica!'),
(5, 'at8.png', 'Cama Super Luxo ', '1099.00', 'Essa linha de móveis Super luxo para animais de estimação da Atlântica design,  é tão exagerada que parece pertencer a um museu.\r\nModernas e minimalistas,  são peças para quem pode comprar o melhor para seu animais de estimação. \r\nAs peças são feitas com materiais de alta qualidade, moldadas artesanalmente , e a maioria em quantidades de edição limitadas. As curvas em madeira nobre, combinadas com microfibras a prova de animais de estimação,  dão a essas peças um visual clássico que também é funcional.'),
(6, 'at12.png', 'Berço para adultos ', '5990.00', 'Este Assento de cesta da Atlântica design,  é um verdadeiro Berço para Adultos. Sua construção foi pensada para que vc se deite de uma forma bem descontraída, como quando era um bebê.  Estrutura construída de madeira certificada, o que dá uma sofisticação,  e estofado muito confortável,  removível e lavável.  \r\n\r\nMedidas: 1500mm diâmetro \r\nAltura: 700mm\r\nPeso: 12 kg'),
(7, 'at8.png', 'produto 7', '133.00', ''),
(8, 'at9.png', 'produto 8', '187.00', ''),
(9, 'at10.png', 'produto 9', '1876.00', ''),
(10, 'at11.png', 'produto 10', '332.00', ''),
(11, 'at12.png', 'produto 11', '542.00', ''),
(12, 'at13.png', 'produto 12', '588.00', ''),
(15, 'imghome.png', 'aaaaa', '380.00', 'qualquer descrição apenas para ver se esta tudo certo....');

-- --------------------------------------------------------

--
-- Table structure for table `tipouser`
--

CREATE TABLE `tipouser` (
  `id` int NOT NULL,
  `desc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tipouser`
--

INSERT INTO `tipouser` (`id`, `desc`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `dtnasc` date NOT NULL,
  `tipoUser` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `CPF`, `nome`, `email`, `senha`, `dtnasc`, `tipoUser`) VALUES
(1, '12312312311', 'Gian Franco', 'nicolasfranco@gmail.com', 'Gian123', '1970-02-15', 1),
(2, '12312322212', 'matheus Ferreira', 'matheusrimoldi@gmail.com', '12345', '2006-11-13', 1),
(3, '12394293288', 'Matheus Rimoldi', 'murilo@gmail.com', '123456', '2000-02-12', 2),
(4, '46727951870', 'matheus ferreira rimoldi', 'matheus001@gmail.com', 'matheus123', '2006-11-13', 2),
(5, '51633829855', 'Nicolas Henrique', 'nichenr@gmail.com', 'nic123', '2006-08-07', 2),
(6, '55566677789', 'jessica medeiros', 'jessicamed@gmail.com', 'jes123', '1990-09-12', 2),
(7, '123456789', 'Laelson Mota da Silva', 'laelson.mota@gmail.com', '1234', '1966-12-12', 2),
(8, '33876777828', 'Alice Amaro belanguiall', 'alice@gmail.com', 'alice123', '1986-05-30', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id_especialidade`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_produto_2` (`id_produto`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- Indexes for table `tipouser`
--
ALTER TABLE `tipouser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `CPF_2` (`CPF`) USING BTREE,
  ADD KEY `FK_usuario_tipouser` (`tipoUser`),
  ADD KEY `tipoUser` (`tipoUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id_especialidade` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tipouser`
--
ALTER TABLE `tipouser`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_pedidos_produtos` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`) ON DELETE CASCADE;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_usuario_tipouser` FOREIGN KEY (`tipoUser`) REFERENCES `tipouser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
