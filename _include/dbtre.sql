-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14-Fev-2017 às 17:57
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtre`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `especie`
--

CREATE TABLE `especie` (
  `idEspecie` int(11) NOT NULL,
  `nomeCientifico` varchar(400) NOT NULL,
  `nomePopular` varchar(400) DEFAULT NULL,
  `nativa` varchar(10) DEFAULT NULL,
  `classeSucessional` varchar(15) DEFAULT NULL,
  `zoocorica` varchar(10) DEFAULT NULL,
  `ameacada` varchar(10) DEFAULT NULL,
  `habito` varchar(10) DEFAULT NULL,
  `tolerancia` varchar(10) DEFAULT NULL,
  `tabelaReferente` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `especie`
--

INSERT INTO `especie` (`idEspecie`, `nomeCientifico`, `nomePopular`, `nativa`, `classeSucessional`, `zoocorica`, `ameacada`, `habito`, `tolerancia`, `tabelaReferente`) VALUES
(1, 'Aegiphila integrifolia (Aegiphila sellowiana)', 'Tamanqueiro', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(2, 'Albizia niopoides (Albizia haslerii)', 'Farinha-seca', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(3, 'Alibertia edulis', 'Goiaba-preta', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(4, 'Aloysia virgata', 'Licheira', 'Sim', 'Pioneira', 'Não', 'Não', 'Arbusto', 'Média', '1'),
(5, 'Anadenanthera colubrina (Anadenanthera macrocarpa)', 'Angico branco', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(6, 'Anadenanthera peregrina (Anadenanthera falcata)', 'Angico do cerrado', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(7, 'Annona cacans', 'Araticum cagão', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '1'),
(8, 'Annona coriacea', 'Marolo, Araticum', 'Sim', 'Pioneira', 'Sim', 'Não', 'Arbusto', 'Baixa', '1'),
(9, 'Aspidosperma cylindrocarpon', 'Peroba poca', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(10, 'Aspidosperma subincanum', 'Guatambu-vermelho', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(11, 'Astronium graveolens', 'Guaritá', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(12, 'Bauhinia holophylla', 'Pata-de-vaca-do-cerrado', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(13, 'Bauhinia longifolia', 'Pata-de-vaca-do-campo', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(14, 'Bauhinia pentandra', '', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(15, 'Bougainvillea glabra', 'Primavera-arbórea', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(16, 'Cariniana estrellensis', 'Jequitibá branco', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '1'),
(17, 'Casearia decandra', 'Cafezeiro-do-mato', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(18, 'Casearia gossypiosperma', 'Espeteiro', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(19, 'Casearia paranaensis', '', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(20, 'Casearia sylvestris', 'Guaçatonga', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(21, 'Cecropia pachystachya (Cecropia catarinensis)', 'Embaúba', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(22, 'Ceiba speciosa (Chorisia speciosa)', 'Paineira', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(23, 'Celtis iguanaea', 'Espora de galo', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(24, 'Chomelia obtusa', '', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '1'),
(25, 'Chrysophyllum marginatum', 'Aguaí', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(26, 'Copaifera langsdorffii', 'Copaíba', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(27, 'Cordia ecalyculata', 'Café-de-bugre, Claraíba', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '1'),
(28, 'Cordia trichotoma', 'Louro-pardo', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(29, 'Croton urucurana', 'Sangra-d´água', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Alta', '1'),
(30, 'Cupania vernalis', 'Camboatã, Arco-de-peneira', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(31, 'Cybistax antisyphilitica', 'Ipê-flor-verde, Caroba', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(32, 'Diatenopteryx sorbifolia', 'Maria preta', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(33, 'Duguetia lanceolata', 'Pindaíba', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(34, 'Enterolobium contortisiliquum', 'Tamboril, Timburi', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(35, 'Erythroxylum pelleterianum', 'Eritroxilum', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '1'),
(36, 'Eugenia ligustrina', 'Eugenia', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(37, 'Eugenia myrcianthes (Hexachlamys edulis)', 'Azedinha', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '1'),
(38, 'Ficus eximia (Ficus glabra)', 'Figueira-lisa', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(39, 'Ficus guaranitica', 'Figueira branca', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(40, 'Galipea jasminiflora (Galipea multiflora)', 'Guamixinga', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(41, 'Genipa americana', 'Jenipapo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '1'),
(42, 'Guarea guidonia (Guarea trichilioides)', 'Marinheiro, Cedrão', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(43, 'Guarea kunthiana (Guarea pohlii)', 'Canjambo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(44, 'Guazuma ulmifolia', 'Mutambo, Fruta-de-macaco', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '1'),
(45, 'Handroanthus impetiginosus (Tabebuia impetiginosa)', 'Ipê-roxo, Ipê-rosa', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(46, 'Handroanthus ochraceus (Tabebuia ochracea)', 'Ipê-do-campo', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(47, 'Handroanthus serratifolius (Tabebuia serratifolia)', 'Ipê-amarelo', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(48, 'Holocalyx balansae', 'Alecrim-de-campinas', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(49, 'Hymenaea courbaril', 'Jatobá, Jatobá-miúdo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '1'),
(50, 'Inga vera (Inga uruguensis)', 'Inga-banana', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '1'),
(51, 'Jacaranda micrantha', 'Caroba-miúda', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(52, 'Jacaratia spinosa (Jacaratia dodecaphylla)', 'Jacaratiá', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(53, 'Lacistema hasslerianum', 'Espeteiro-do-campo, Coari', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(54, 'Leptolobium elegans (Acosmium subelegans)', 'Amendoim-falso', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '1'),
(55, 'Luehea divaricata', 'Açoita-cavalo', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(56, 'Machaerium acutifolium', 'Jacarandá-do-campo', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(57, 'Machaerium brasiliense', 'Pau-sangue', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(58, 'Machaerium paraguariense', 'Cateretê', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Alta', '1'),
(59, 'Machaerium villosum', 'Jacaranda paulista', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '1'),
(60, 'Maclura tinctoria (Chlorophora tinctoria)', 'Taiúva', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(61, 'Manihot pilosa', '', 'Sim', 'Não Pioneira', 'Sim', 'Sim', 'Árvore', 'Média', '1'),
(62, 'Maytenus floribunda', '', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(63, 'Maytenus truncata (Maytenus ilicifolia)', 'Espinheira-santa', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Baixa', '1'),
(64, 'Myracrodruon urundeuva (Astronium urundeuva)', 'Aroeira-verdadeira', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '1'),
(65, 'Myrsine coriacea (Rapanea ferruginea)', 'Capororoca', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(66, 'Myrsine umbellata (Rapanea umbellata)', 'Capororoca-branca', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(67, 'Nectandra cissiflora', 'Canela-de-cheiro', 'Sim', 'Não Pioneira', 'Sim', 'Sim', 'Árvore', 'Média', '1'),
(68, 'Nectandra megapotamica', 'Canelinha, Canela-louro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(69, 'Ocotea pulchella', 'Canela-preta, Nhumirim', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '1'),
(70, 'Ouratea castaneifolia', 'Folha-de-castanha', 'Não', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(71, 'Piper amalago', '', 'Sim', 'Não Pioneira', 'Sim', 'Sim', 'Árvore', 'Média', '1'),
(72, 'Pouteria gardneri', 'Macaranduba vermelha', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(73, 'Prockia crucis', 'Cuiteleiro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Baixa', '1'),
(74, 'Protium heptaphyllum', 'Almecegueira', 'Sim', 'Pioneira', 'Sim', 'Sim', 'Árvore', 'Alta', '1'),
(75, 'Pseudobombax grandiflorum', 'Embiruçu', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(76, 'Psidium sartorianum', '', 'Sim', 'Não Pioneira', 'Sim', 'Sim', 'Árvore', 'Média', '1'),
(77, 'Psychotria carthagenensis', 'Erva-de-gralha', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(78, 'Qualea parviflora', 'Pau-terra-mirim', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(79, 'Randia armata', 'Fruta-de-cachorro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(80, 'Rhamnidium elaeocarpum', 'Saguaraji-amarelo, Café-ziroro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(81, 'Sapium glandulosum', 'Pau-de-leite', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '1'),
(82, 'Savia dictyocarpa (Securinega guaraiuva)', 'Guaraiuva', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(83, 'Sebastiania brasiliensis', 'Tajuvinha, Branquilho', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Alta', '1'),
(84, 'Senegalia polyphylla (Acacia polyphylla)', 'Monjoleiro', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(85, 'Sorocea bonplandii', 'Chincho', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '1'),
(86, 'Styrax ferrugineus', 'Limoeiro-do-mato', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '1'),
(87, 'Sweetia fruticosa', 'Sucupira amarela', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '1'),
(88, 'Tapirira guianensis', 'Peito-de-pombo,Copiúva', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(89, 'Trema micrantha', 'Candiúba, Pau-pólvora', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(90, 'Trichilia casaretti', 'Catiguá', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(91, 'Trichilia catigua', 'Catiguá', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(92, 'Trichilia claussenii', 'Quebra machado, Catiguá-vermelho', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(93, 'Trichilia pallida (Trichilia weddellii)', 'Baga-de-morcego', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(94, 'Virola sebifera', 'Ucuuba', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(95, 'Zanthoxylum monogynum (Zanthoxylum pohlianum)', 'Mamica-laranja', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(96, 'Zanthoxylum petiolare (Zanthoxylum tenuifolium)', 'Maminha', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(97, 'Zanthoxylum rhoifolium', 'Mamica de porca, Laranjeira-brava', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '1'),
(98, 'Zeyheria tuberculosa', 'Ipê-felpudo, Ipê-tabaco', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '1'),
(101, 'Actinostemon concolor', 'Leitinho', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Arbusto', 'Média', '2'),
(102, 'Actinostemon klotzschii (Actinostemon communis)', 'Laranjeira-brava', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '2'),
(103, 'Aegiphila integrifolia (Aegiphila sellowiana)', 'Tamanqueiro', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(105, 'Albizia niopoides (Albizia haslerii)', 'Farinha-seca', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(106, 'Alibertia edulis', 'Goiaba-preta', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(108, 'Allophylus edulis', 'Chal-chal, Fruta-de-faraó', 'Não', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(109, 'Aloysia virgata', 'Licheira', 'Sim', 'Pioneira', 'Não', 'Não', 'Arbusto', 'Média', '2'),
(110, 'Anadenanthera colubrina (Anadenanthera macrocarpa)', 'Angico branco', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(111, 'Anadenanthera peregrina (Anadenanthera falcata)', 'Angico do cerrado', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '2'),
(113, 'Annona cacans', 'Araticum cagão', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(114, 'Annona coriacea', 'Marolo, Araticum', 'Sim', 'Pioneira', 'Sim', 'Não', 'Arbusto', 'Baixa', '2'),
(116, 'Apuleia leiocarpa', 'Garapa', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '2'),
(118, 'Aspidosperma cylindrocarpon', 'Peroba poca', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(121, 'Aspidosperma subincanum', 'Guatambu-vermelho', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '2'),
(123, 'Astronium graveolens', 'Guaritá', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '2'),
(125, 'Bauhinia holophylla', 'Pata-de-vaca-do-cerrado', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '2'),
(126, 'Bauhinia longifolia', 'Pata-de-vaca-do-campo', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '2'),
(127, 'Bauhinia pentandra', ' ', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '2'),
(130, 'Blepharocalyx salicifolius', 'Cambuí, Murta', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(131, 'Bowdichia virgilioides', 'Sucupira preta', 'Sim', 'Pioneira', 'Não', 'Sim', 'Árvore', 'Baixa', '2'),
(137, 'Calyptranthes concinna', 'Guamirim-facho', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(138, 'Campomanesia guazumifolia', 'Sete-capotes, Araçá-do-mato', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(139, 'Campomanesia xanthocarpa', 'Guabiroba', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(140, 'Cariniana estrellensis', 'Jequitibá branco', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(141, 'Casearia aculeata', ' ', 'Sim', '', 'Sim', 'Não', 'Árvore', 'Baixa', '2'),
(142, 'Casearia decandra', 'Cafezeiro-do-mato', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(143, 'Casearia gossypiosperma', 'Espeteiro', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(144, 'Casearia rupestris', ' ', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(145, 'Casearia sylvestris', 'Guaçatonga', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(146, 'Cecropia pachystachya (Cecropia catarinensis)', 'Embaúba', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(147, 'Cedrela fissilis', 'Cedro rosa, Cedrinho', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '2'),
(148, 'Ceiba speciosa (Chorisia speciosa)', 'Paineira', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(149, 'Celtis iguanaea', 'Espora de galo', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(151, 'Centrolobium tomentosum', 'Araribá rosa', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(152, 'Chomelia obtusa', ' ', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '2'),
(155, 'Chrysophyllum gonocarpum', 'Guatambu-de-sapo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(157, 'Coccoloba mollis', 'Folha-de-bolo', 'Não', '', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(158, 'Colubrina glandulosa (Colubrina rufa)', 'Saguaraji-vermelho', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(159, 'Connarus suberosus', 'Cabelo-de-negro', 'Sim', 'Pioneira', 'Sim', 'Não', 'Arbusto', 'Baixa', '2'),
(160, 'Copaifera langsdorffii', 'Copaíba', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(162, 'Cordia ecalyculata', 'Café-de-bugre, Claraíba', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(163, 'Cordia sellowiana', 'Chá-de-bugre, Louro-mole', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '2'),
(164, 'Cordia trichotoma', 'Louro-pardo', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '2'),
(165, 'Coussarea hydrangeifolia', 'Falsa-quina', 'Sim', '', 'Sim', 'Não', 'Arbusto', 'Baixa', '2'),
(168, 'Croton urucurana', 'Sangra-d´água', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Alta', '2'),
(169, 'Cupania vernalis', 'Camboatã, Arco-de-peneira', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(170, 'Dendropanax cuneatus (Dendropanax cuneatum)', 'Maria mole', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(171, 'Diatenopteryx sorbifolia', 'Maria preta', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(176, 'Duguetia lanceolata', 'Pindaíba', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(177, 'Endlicheria paniculata', 'Canela-peluda, Canela-frade', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(178, 'Enterolobium contortisiliquum', 'Tamboril, Timburi', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(181, 'Erythroxylum pelleterianum', 'Eritroxilum', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '2'),
(184, 'Eugenia florida (Eugenia gardneriana)', 'Guamirim pitanga', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(186, 'Eugenia involucrata', 'Cereja-do-rio-grande', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(187, 'Eugenia myrcianthes (Hexachlamys edulis)', 'Azedinha', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(188, 'Eugenia speciosa', 'Laranjinha-do-mato', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(189, 'Eugenia uniflora', 'Pitanga', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '2'),
(190, 'Ficus guaranitica', 'Figueira branca', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(191, 'Ficus insipida', 'Figueira-do-brejo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(192, 'Genipa americana', 'Jenipapo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(193, 'Gochnatia barrosoae', 'Gochnatia', 'Sim', '', 'Não', 'Não', 'Arbusto', 'Baixa', '2'),
(195, 'Guapira opposita', 'Flor de perola', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(196, 'Guarea guidonia (Guarea trichilioides)', 'Marinheiro, Cedrão', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(197, 'Guazuma ulmifolia', 'Mutambo, Fruta-de-macaco', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '2'),
(200, 'Handroanthus impetiginosus (Tabebuia impetiginosa)', 'Ipê-roxo, Ipê-rosa', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Baixa', '2'),
(201, 'Handroanthus ochraceus (Tabebuia ochracea)', 'Ipê-do-campo', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(205, 'Holocalyx balansae', 'Alecrim-de-campinas', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(206, 'Hymenaea courbaril', 'Jatobá, Jatobá-miúdo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '2'),
(208, 'Inga edulis', 'Inga-cipó, Ingá-de-metro', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(209, 'Inga marginata', 'Ingá-feijão', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(210, 'Inga striata', 'Ingá', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(212, 'Jacaratia spinosa (Jacaratia dodecaphylla)', 'Jacaratiá', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(213, 'Lacistema hasslerianum', 'Espeteiro-do-campo, Coari', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(215, 'Lafoensia pacari', 'Dedaleira', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '2'),
(218, 'Luehea divaricata', 'Açoita-cavalo', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(221, 'Machaerium aculeatum', 'Pau-de angu, Bico-de-rola', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(222, 'Machaerium acutifolium', 'Jacarandá-do-campo', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(223, 'Machaerium brasiliense', 'Pau-sangue', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(224, 'Machaerium hirtum (Machaerium angustifolium)', 'Jacaranda-bico-de-pato', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(225, 'Machaerium nyctitans', 'Bico-de-pato', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Alta', '2'),
(226, 'Machaerium paraguariense', 'Cateretê', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Alta', '2'),
(228, 'Machaerium vestitum', 'Sapuvussu', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(229, 'Maclura tinctoria (Chlorophora tinctoria)', 'Taiúva', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(231, 'Manihot pilosa', ' ', 'Sim', 'Não Pioneira', 'Sim', 'Sim', 'Árvore', 'Média', '2'),
(234, 'Maytenus aquifolia', 'Espinheira-santa-amarela', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(235, 'Maytenus floribunda', ' ', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(236, 'Metrodorea nigra (Metrodorea pubescens)', 'Chupa-ferro', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(239, 'Mollinedia widgrenii (Mollinedia chrysorrachys)', 'Capixim', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', '', '2'),
(240, 'Myracrodruon urundeuva (Astronium urundeuva)', 'Aroeira-verdadeira', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '2'),
(243, 'Myrciaria floribunda (Myrciaria ciliolata)', 'Cambuí', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(244, 'Myroxylon peruiferum', 'Cabreúva', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '2'),
(245, 'Myrsine coriacea (Rapanea ferruginea)', 'Capororoca', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(246, 'Myrsine lancifolia (Rapanea lancifolia)', 'Capororoca-do-brejo', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(247, 'Myrsine umbellata (Rapanea umbellata)', 'Capororoca-branca', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(248, 'Nectandra cissiflora', 'Canela-de-cheiro', 'Sim', 'Não Pioneira', 'Sim', 'Sim', 'Árvore', 'Média', '2'),
(249, 'Nectandra lanceolata', 'Canela-do-brejo, Canela-amarela', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(250, 'Nectandra megapotamica', 'Canelinha, Canela-louro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(251, 'Ocotea corymbosa', 'Canela-corvo, Canela-do-cerrado', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '2'),
(252, 'Ocotea diospyrifolia', 'Canela caqui, Canela-louro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(253, 'Ocotea elegans', 'Canela-sassafrás-do-campo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(254, 'Ocotea pulchella', 'Canela-preta, Nhumirim', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '2'),
(257, 'Ouratea castaneifolia', 'Folha-de-castanha', 'Não', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(258, 'Parapiptadenia rigida', 'Angico da mata', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(259, 'Peltophorum dubium', 'Embira puita, Canafístula', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(264, 'Piptadenia gonoacantha', 'Pau-jacaré', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(267, 'Pouteria gardneri', 'Macaranduba vermelha', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(268, 'Prockia crucis', 'Cuiteleiro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Baixa', '2'),
(269, 'Protium heptaphyllum', 'Almecegueira', 'Sim', 'Pioneira', 'Sim', 'Sim', 'Árvore', 'Alta', '2'),
(270, 'Prunus myrtifolia (Prunus sellowii)', 'Pessegueiro bravo', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(271, 'Psidium sartorianum', ' ', 'Sim', 'Não Pioneira', 'Sim', 'Sim', 'Árvore', 'Média', '2'),
(272, 'Psychotria carthagenensis', 'Erva-de-gralha', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(278, 'Qualea parviflora', 'Pau-terra-mirim', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(279, 'Randia armata', 'Fruta-de-cachorro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(280, 'Rhamnidium elaeocarpum', 'Saguaraji-amarelo, Café-ziroro', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(283, 'Sapium glandulosum', 'Pau-de-leite', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '2'),
(284, 'Savia dictyocarpa (Securinega guaraiuva)', 'Guaraiuva', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(286, 'Schinus terebinthifolius', 'Aroeira-mansa, Aroeirinha', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(287, 'Sebastiania brasiliensis', 'Tajuvinha, Branquilho', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Alta', '2'),
(288, 'Sebastiania serrata', ' ', '', 'Não Pioneira', 'Não', 'Não', 'Arbusto', 'Média', '2'),
(289, 'Senegalia polyphylla (Acacia polyphylla)', 'Monjoleiro', 'Sim', 'Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(294, 'Solanum paniculatum', 'Jurubeba', 'Sim', 'Pioneira', 'Sim', 'Não', 'Arbusto', 'Média', '2'),
(295, 'Sorocea bonplandii', 'Chincho', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Alta', '2'),
(298, 'Styrax ferrugineus', 'Limoeiro-do-mato', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '2'),
(299, 'Sweetia fruticosa', 'Sucupira amarela', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(300, 'Syagrus romanzoffiana', 'Jerivá, Palmeira-jerivá', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(304, 'Tapirira guianensis', 'Peito-de-pombo,Copiúva', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(307, 'Terminalia triflora', 'Amarelinho, Capitãozinho', 'Sim', 'Não Pioneira', 'Não', 'Não', 'Árvore', 'Média', '2'),
(309, 'Trema micrantha', 'Candiúba, Pau-pólvora', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(310, 'Trichilia casaretti', 'Catiguá', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(311, 'Trichilia catigua', 'Catiguá', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(312, 'Trichilia claussenii', 'Quebra machado, Catiguá-vermelho', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(313, 'Trichilia elegans', 'Catiguazinho', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(314, 'Trichilia pallida (Trichilia weddellii)', 'Baga-de-morcego', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(318, 'Vitex cymosa', 'Tarumã-da-várzea', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(319, 'Vitex megapotamica (Vitex montevidensis)', 'Taruma', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Baixa', '2'),
(323, 'Zanthoxylum petiolare (Zanthoxylum tenuifolium)', 'Maminha', 'Sim', 'Não Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(324, 'Zanthoxylum rhoifolium', 'Mamica de porca, Laranjeira-brava', 'Sim', 'Pioneira', 'Sim', 'Não', 'Árvore', 'Média', '2'),
(326, 'Zeyheria tuberculosa', 'Ipê-felpudo, Ipê-tabaco', 'Sim', 'Não Pioneira', 'Não', 'Sim', 'Árvore', 'Média', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--

CREATE TABLE `projeto` (
  `idprojeto` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `datacriacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `projeto`
--

INSERT INTO `projeto` (`idprojeto`, `idusuario`, `datacriacao`) VALUES
(2, 2, '2016-08-16 19:59:45'),
(3, 2, '2016-08-16 22:11:52'),
(4, 2, '2016-08-16 22:12:39'),
(5, 2, '2016-08-17 14:38:12'),
(6, 2, '2016-08-17 14:40:15'),
(7, 2, '2016-08-17 14:40:40'),
(8, 2, '2016-08-17 14:41:21'),
(9, 2, '2016-08-17 14:47:12'),
(10, 2, '2016-08-17 15:30:37'),
(11, 2, '2016-08-17 19:22:47'),
(12, 2, '2016-08-17 19:37:40'),
(13, 2, '2016-08-17 19:46:39'),
(14, 2, '2016-08-17 20:26:47'),
(15, 2, '2016-08-17 21:33:50'),
(16, 2, '2016-08-17 21:35:28'),
(17, 2, '2016-08-17 22:30:35'),
(18, 2, '2016-08-17 22:47:09'),
(19, 2, '2016-08-17 22:47:25'),
(20, 2, '2016-08-18 21:37:54'),
(21, 2, '2016-08-19 18:59:34'),
(22, 2, '2016-08-19 18:59:57'),
(23, 2, '2016-08-19 19:24:15'),
(24, 2, '2016-08-19 19:27:19'),
(25, 2, '2016-08-19 19:38:01'),
(26, 2, '2016-08-19 20:17:53'),
(27, 2, '2016-08-19 20:25:57'),
(28, 2, '2016-08-19 21:20:09'),
(29, 2, '2016-08-19 21:20:51'),
(30, 2, '2016-08-24 14:08:50'),
(31, 2, '2016-08-24 16:13:52'),
(32, 2, '2016-08-24 16:24:16'),
(33, 2, '2016-08-24 19:57:36'),
(34, 2, '2016-08-25 20:36:34'),
(35, 2, '2016-10-24 13:23:05'),
(36, 2, '2016-10-24 20:11:03'),
(37, 2, '2016-11-23 13:41:21'),
(38, 2, '2016-11-23 18:15:59'),
(39, 2, '2016-11-24 13:00:42'),
(40, 2, '2017-02-01 12:12:26'),
(41, 2, '2017-02-01 13:04:27'),
(42, 2, '2017-02-10 16:35:00'),
(43, 2, '2017-02-13 14:06:18'),
(44, 2, '2017-02-13 19:19:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetomudas`
--

CREATE TABLE `projetomudas` (
  `idprojetomudas` int(11) NOT NULL,
  `idprojeto` int(11) NOT NULL,
  `idespecie` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `projetomudas`
--

INSERT INTO `projetomudas` (`idprojetomudas`, `idprojeto`, `idespecie`, `quantidade`) VALUES
(1, 2, 3, 4),
(2, 2, 6, 3),
(3, 2, 8, 2),
(4, 2, 9, 1),
(5, 3, 2, 1),
(6, 3, 3, 2),
(7, 3, 4, 3),
(8, 3, 5, 3),
(9, 4, 3, 4),
(10, 4, 4, 1),
(11, 4, 5, 3),
(12, 4, 6, 3),
(13, 4, 8, 5),
(14, 5, 2, 4),
(15, 5, 3, 2),
(16, 5, 4, 4),
(17, 5, 5, 5),
(18, 5, 6, 2),
(19, 5, 7, 1),
(20, 6, 1, 3),
(21, 6, 2, 1),
(22, 6, 4, 3),
(23, 7, 1, 3),
(24, 7, 2, 1),
(25, 7, 5, 4),
(26, 8, 1, 3),
(27, 8, 2, 1),
(28, 8, 4, 1),
(29, 8, 5, 4),
(30, 9, 1, 1),
(31, 9, 2, 3),
(32, 9, 5, 4),
(33, 9, 8, 7),
(34, 10, 1, 2),
(35, 10, 2, 4),
(36, 10, 3, 3),
(37, 10, 4, 6),
(38, 10, 5, 2),
(39, 10, 6, 3),
(40, 10, 7, 5),
(41, 10, 8, 1),
(42, 10, 9, 6),
(43, 10, 10, 3),
(44, 10, 11, 2),
(45, 10, 12, 2),
(46, 10, 13, 3),
(47, 10, 14, 8),
(48, 10, 15, 5),
(49, 10, 16, 2),
(50, 10, 17, 6),
(51, 10, 20, 7),
(52, 11, 1, 3),
(53, 11, 2, 1),
(54, 11, 3, 4),
(55, 11, 5, 1),
(56, 11, 6, 2),
(57, 11, 8, 1),
(58, 11, 9, 1),
(59, 12, 1, 1),
(60, 12, 2, 2),
(61, 12, 3, 1),
(62, 12, 4, 1),
(63, 12, 5, 2),
(64, 13, 1, 3),
(65, 13, 2, 1),
(66, 13, 3, 1),
(67, 13, 4, 1),
(68, 13, 5, 2),
(69, 14, 1, 1),
(70, 14, 2, 3),
(71, 14, 3, 2),
(72, 14, 4, 1),
(73, 14, 5, 1),
(74, 14, 6, 1),
(75, 14, 7, 5),
(76, 14, 8, 1),
(77, 14, 9, 5),
(78, 15, 1, 1),
(79, 15, 2, 1),
(80, 15, 3, 1),
(81, 15, 4, 1),
(82, 15, 5, 1),
(83, 15, 6, 1),
(84, 15, 7, 1),
(85, 16, 1, 1),
(86, 16, 2, 1),
(87, 16, 6, 1),
(88, 16, 7, 1),
(89, 16, 8, 1),
(90, 16, 16, 1),
(91, 17, 1, 3),
(92, 17, 2, 1),
(93, 17, 3, 1),
(94, 17, 6, 1),
(95, 17, 7, 1),
(96, 18, 1, 1),
(97, 19, 2, 1),
(98, 19, 6, 1),
(99, 20, 1, 3),
(100, 20, 2, 1),
(101, 20, 3, 2),
(102, 20, 4, 4),
(103, 20, 5, 3),
(104, 20, 6, 16),
(105, 20, 7, 3),
(106, 20, 8, 4),
(107, 20, 9, 4),
(108, 20, 10, 1),
(109, 20, 11, 1),
(110, 20, 12, 6),
(111, 22, 1, 5),
(112, 22, 2, 2),
(113, 22, 3, 3),
(114, 22, 4, 2),
(115, 22, 5, 2),
(116, 22, 6, 3),
(117, 22, 7, 3),
(118, 22, 8, 3),
(119, 22, 9, 3),
(120, 22, 10, 1),
(121, 22, 11, 1),
(122, 22, 12, 1),
(123, 22, 13, 1),
(124, 22, 14, 4),
(125, 22, 15, 3),
(126, 22, 16, 1),
(127, 23, 1, 4),
(128, 23, 2, 6),
(129, 23, 3, 4),
(130, 23, 4, 4),
(131, 23, 5, 2),
(132, 23, 6, 2),
(133, 23, 7, 3),
(134, 23, 8, 3),
(135, 23, 9, 3),
(136, 23, 10, 3),
(137, 23, 11, 1),
(138, 23, 12, 1),
(139, 23, 13, 1),
(140, 23, 14, 1),
(141, 23, 15, 4),
(142, 23, 16, 3),
(143, 23, 17, 1),
(144, 24, 1, 3),
(145, 24, 2, 2),
(146, 24, 3, 2),
(147, 24, 4, 1),
(148, 24, 5, 1),
(149, 24, 6, 4),
(150, 24, 7, 1),
(151, 24, 8, 3),
(152, 25, 1, 5),
(153, 25, 2, 2),
(154, 25, 3, 3),
(155, 25, 4, 2),
(156, 25, 5, 1),
(157, 25, 6, 4),
(158, 25, 7, 1),
(159, 25, 10, 3),
(160, 25, 11, 1),
(161, 25, 12, 4),
(162, 26, 1, 2),
(163, 26, 2, 4),
(164, 26, 3, 2),
(165, 26, 4, 5),
(166, 26, 6, 4),
(167, 26, 7, 1),
(168, 26, 8, 1),
(169, 26, 9, 1),
(170, 26, 10, 1),
(171, 26, 11, 1),
(172, 26, 12, 2),
(173, 26, 13, 2),
(174, 26, 14, 5),
(175, 29, 1, 4),
(176, 29, 2, 1),
(177, 29, 3, 2),
(178, 29, 4, 1),
(179, 29, 5, 2),
(180, 29, 6, 3),
(181, 29, 7, 2),
(182, 29, 8, 1),
(183, 29, 9, 2),
(184, 29, 10, 1),
(185, 29, 11, 1),
(186, 29, 14, 1),
(187, 29, 15, 2),
(188, 29, 16, 3),
(189, 30, 1, 2),
(190, 30, 2, 2),
(191, 30, 3, 1),
(192, 30, 4, 1),
(193, 30, 5, 1),
(194, 30, 6, 1),
(195, 31, 4, 3),
(196, 31, 5, 1),
(197, 31, 6, 1),
(198, 31, 7, 1),
(199, 31, 8, 1),
(200, 31, 9, 1),
(201, 32, 1, 3),
(202, 32, 2, 3),
(203, 32, 3, 2),
(204, 32, 4, 1),
(205, 32, 5, 3),
(206, 32, 6, 2),
(207, 32, 7, 2),
(208, 32, 8, 1),
(209, 32, 9, 1),
(210, 32, 10, 4),
(211, 33, 1, 3),
(212, 33, 2, 1),
(213, 33, 3, 3),
(214, 33, 4, 3),
(215, 33, 5, 5),
(216, 33, 6, 3),
(217, 33, 7, 3),
(218, 33, 8, 2),
(219, 34, 1, 2),
(220, 34, 2, 1),
(221, 34, 3, 1),
(222, 34, 4, 1),
(223, 34, 5, 1),
(224, 35, 1, 4),
(225, 35, 2, 1),
(226, 35, 3, 2),
(227, 35, 4, 2),
(228, 35, 5, 1),
(229, 35, 6, 2),
(230, 35, 7, 1),
(231, 35, 8, 2),
(232, 36, 1, 1),
(233, 36, 2, 1),
(234, 36, 3, 1),
(235, 36, 4, 1),
(236, 36, 5, 1),
(237, 36, 6, 1),
(238, 36, 7, 1),
(239, 36, 8, 1),
(240, 36, 9, 1),
(241, 37, 1, 1),
(242, 37, 2, 2),
(243, 37, 3, 2),
(244, 37, 4, 2),
(245, 37, 5, 1),
(246, 37, 7, 1),
(247, 37, 8, 1),
(248, 37, 9, 4),
(249, 38, 1, 1),
(250, 38, 2, 1),
(251, 38, 3, 1),
(252, 38, 4, 1),
(253, 38, 5, 2),
(254, 38, 6, 2),
(255, 39, 1, 1),
(256, 39, 2, 1),
(257, 39, 3, 1),
(258, 39, 4, 1),
(259, 40, 1, 1),
(260, 40, 2, 1),
(261, 40, 3, 1),
(262, 40, 4, 1),
(263, 41, 1, 4),
(264, 41, 2, 3),
(265, 41, 3, 2),
(266, 41, 4, 1),
(267, 41, 6, 1),
(268, 41, 7, 1),
(269, 41, 10, 1),
(270, 41, 11, 3),
(271, 41, 12, 4),
(272, 42, 1, 1),
(273, 42, 2, 1),
(274, 42, 3, 1),
(275, 42, 4, 1),
(276, 42, 5, 1),
(277, 42, 6, 2),
(278, 42, 7, 1),
(279, 43, 1, 1),
(280, 43, 2, 1),
(281, 43, 3, 1),
(282, 43, 4, 1),
(283, 43, 5, 1),
(284, 44, 1, 1),
(285, 44, 2, 4),
(286, 44, 3, 1),
(287, 44, 4, 4),
(288, 44, 6, 1),
(289, 44, 10, 2),
(290, 44, 11, 3),
(291, 44, 21, 1),
(292, 44, 22, 3),
(293, 44, 30, 3),
(294, 44, 32, 2),
(295, 44, 33, 1),
(296, 44, 35, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idtipousuario` int(11) NOT NULL,
  `tipousuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipousuario`
--

INSERT INTO `tipousuario` (`idtipousuario`, `tipousuario`) VALUES
(1, 'admin'),
(2, 'visitante');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `login` varchar(200) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `tipousuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `login`, `senha`, `tipousuario`) VALUES
(1, 'admin', 'admintesteteste', 1),
(2, 'visitante', 'guest', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`idEspecie`);

--
-- Indexes for table `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`idprojeto`);

--
-- Indexes for table `projetomudas`
--
ALTER TABLE `projetomudas`
  ADD PRIMARY KEY (`idprojetomudas`);

--
-- Indexes for table `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idtipousuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `especie`
--
ALTER TABLE `especie`
  MODIFY `idEspecie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT for table `projeto`
--
ALTER TABLE `projeto`
  MODIFY `idprojeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `projetomudas`
--
ALTER TABLE `projetomudas`
  MODIFY `idprojetomudas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
