-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23-Ago-2016 às 02:45
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.23

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
  `classeSucessional` varchar(10) DEFAULT NULL,
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
(1, 'Aegiphila integrifolia (Aegiphila sellowiana)', 'Tamanqueiro', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(2, 'Albizia niopoides (Albizia haslerii)', 'Farinha-seca', 'S', 'P', 'N', 'N', 'Ar', 'M', '1'),
(3, 'Alibertia edulis', 'Goiaba-preta', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(4, 'Aloysia virgata', 'Licheira', 'S', 'P', 'N', 'N', 'At', 'M', '1'),
(5, 'Anadenanthera colubrina (Anadenanthera macrocarpa)', 'Angico branco', 'S', 'P', 'N', 'N', 'Ar', 'M', '1'),
(6, 'Anadenanthera peregrina (Anadenanthera falcata)', 'Angico do cerrado', 'S', 'P', 'N', 'N', 'Ar', 'B', '1'),
(7, 'Annona cacans', 'Araticum cagão', 'S', 'P', 'S', 'N', 'Ar', 'A', '1'),
(8, 'Annona coriacea', 'Marolo, Araticum', 'S', 'P', 'S', 'N', 'At', 'B', '1'),
(9, 'Aspidosperma cylindrocarpon', 'Peroba poca', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(10, 'Aspidosperma subincanum', 'Guatambu-vermelho', 'S', 'NP', 'N', 'N', 'Ar', 'B', '1'),
(11, 'Astronium graveolens', 'Guaritá', 'S', 'NP', 'N', 'N', 'Ar', 'B', '1'),
(12, 'Bauhinia holophylla', 'Pata-de-vaca-do-cerrado', 'S', 'P', 'N', 'N', 'Ar', 'B', '1'),
(13, 'Bauhinia longifolia', 'Pata-de-vaca-do-campo', 'S', 'P', 'N', 'N', 'Ar', 'B', '1'),
(14, 'Bauhinia pentandra', '', 'S', 'P', 'N', 'N', 'Ar', 'B', '1'),
(15, 'Bougainvillea glabra', 'Primavera-arbórea', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(16, 'Cariniana estrellensis', 'Jequitibá branco', 'S', 'NP', 'S', 'N', 'Ar', 'A', '1'),
(17, 'Casearia decandra', 'Cafezeiro-do-mato', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(18, 'Casearia gossypiosperma', 'Espeteiro', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(19, 'Casearia paranaensis', '', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(20, 'Casearia sylvestris', 'Guaçatonga', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(21, 'Cecropia pachystachya (Cecropia catarinensis)', 'Embaúba', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(22, 'Ceiba speciosa (Chorisia speciosa)', 'Paineira', 'S', 'P', 'N', 'N', 'Ar', 'M', '1'),
(23, 'Celtis iguanaea', 'Espora de galo', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(24, 'Chomelia obtusa', '', 'S', 'NP', 'S', 'N', 'At', 'M', '1'),
(25, 'Chrysophyllum marginatum', 'Aguaí', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(26, 'Copaifera langsdorffii', 'Copaíba', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(27, 'Cordia ecalyculata', 'Café-de-bugre, Claraíba', 'S', 'P', 'S', 'N', 'Ar', 'A', '1'),
(28, 'Cordia trichotoma', 'Louro-pardo', 'S', 'P', 'N', 'N', 'Ar', 'B', '1'),
(29, 'Croton urucurana', 'Sangra-d´água', 'S', 'P', 'N', 'N', 'Ar', 'A', '1'),
(30, 'Cupania vernalis', 'Camboatã, Arco-de-peneira', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(31, 'Cybistax antisyphilitica', 'Ipê-flor-verde, Caroba', 'S', 'P', 'N', 'N', 'Ar', 'B', '1'),
(32, 'Diatenopteryx sorbifolia', 'Maria preta', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(33, 'Duguetia lanceolata', 'Pindaíba', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(34, 'Enterolobium contortisiliquum', 'Tamboril, Timburi', 'S', 'P', 'N', 'N', 'Ar', 'M', '1'),
(35, 'Erythroxylum pelleterianum', 'Eritroxilum', 'S', 'NP', 'S', 'N', 'At', 'M', '1'),
(36, 'Eugenia ligustrina', 'Eugenia', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(37, 'Eugenia myrcianthes (Hexachlamys edulis)', 'Azedinha', 'S', 'NP', 'S', 'N', 'Ar', 'A', '1'),
(38, 'Ficus eximia (Ficus glabra)', 'Figueira-lisa', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(39, 'Ficus guaranitica', 'Figueira branca', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(40, 'Galipea jasminiflora (Galipea multiflora)', 'Guamixinga', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(41, 'Genipa americana', 'Jenipapo', 'S', 'NP', 'S', 'N', 'Ar', 'A', '1'),
(42, 'Guarea guidonia (Guarea trichilioides)', 'Marinheiro, Cedrão', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(43, 'Guarea kunthiana (Guarea pohlii)', 'Canjambo', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(44, 'Guazuma ulmifolia', 'Mutambo, Fruta-de-macaco', 'S', 'P', 'S', 'N', 'Ar', 'B', '1'),
(45, 'Handroanthus impetiginosus (Tabebuia impetiginosa)', 'Ipê-roxo, Ipê-rosa', 'S', 'NP', 'N', 'N', 'Ar', 'B', '1'),
(46, 'Handroanthus ochraceus (Tabebuia ochracea)', 'Ipê-do-campo', 'S', 'P', 'N', 'N', 'Ar', 'M', '1'),
(47, 'Handroanthus serratifolius (Tabebuia serratifolia)', 'Ipê-amarelo', 'S', 'P', 'N', 'N', 'Ar', 'M', '1'),
(48, 'Holocalyx balansae', 'Alecrim-de-campinas', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(49, 'Hymenaea courbaril', 'Jatobá, Jatobá-miúdo', 'S', 'NP', 'S', 'N', 'Ar', 'B', '1'),
(50, 'Inga vera (Inga uruguensis)', 'Inga-banana', 'S', 'P', 'S', 'N', 'Ar', 'A', '1'),
(51, 'Jacaranda micrantha', 'Caroba-miúda', 'S', 'P', 'N', 'N', 'Ar', 'M', '1'),
(52, 'Jacaratia spinosa (Jacaratia dodecaphylla)', 'Jacaratiá', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(53, 'Lacistema hasslerianum', 'Espeteiro-do-campo, Coari', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(54, 'Leptolobium elegans (Acosmium subelegans)', 'Amendoim-falso', 'S', 'P', 'N', 'N', 'Ar', 'B', '1'),
(55, 'Luehea divaricata', 'Açoita-cavalo', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(56, 'Machaerium acutifolium', 'Jacarandá-do-campo', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(57, 'Machaerium brasiliense', 'Pau-sangue', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(58, 'Machaerium paraguariense', 'Cateretê', 'S', 'NP', 'N', 'N', 'Ar', 'A', '1'),
(59, 'Machaerium villosum', 'Jacaranda paulista', 'S', 'NP', 'N', 'S', 'Ar', 'M', '1'),
(60, 'Maclura tinctoria (Chlorophora tinctoria)', 'Taiúva', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(61, 'Manihot pilosa', '', 'S', 'NP', 'S', 'S', 'Ar', 'M', '1'),
(62, 'Maytenus floribunda', '', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(63, 'Maytenus truncata (Maytenus ilicifolia)', 'Espinheira-santa', 'S', 'NP', 'S', 'N', 'At', 'B', '1'),
(64, 'Myracrodruon urundeuva (Astronium urundeuva)', 'Aroeira-verdadeira', 'S', 'NP', 'N', 'S', 'Ar', 'M', '1'),
(65, 'Myrsine coriacea (Rapanea ferruginea)', 'Capororoca', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(66, 'Myrsine umbellata (Rapanea umbellata)', 'Capororoca-branca', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(67, 'Nectandra cissiflora', 'Canela-de-cheiro', 'S', 'NP', 'S', 'S', 'Ar', 'M', '1'),
(68, 'Nectandra megapotamica', 'Canelinha, Canela-louro', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(69, 'Ocotea pulchella', 'Canela-preta, Nhumirim', 'S', 'NP', 'S', 'N', 'Ar', 'B', '1'),
(70, 'Ouratea castaneifolia', 'Folha-de-castanha', 'N', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(71, 'Piper amalago', '', 'S', 'NP', 'S', 'S', 'Ar', 'M', '1'),
(72, 'Pouteria gardneri', 'Macaranduba vermelha', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(73, 'Prockia crucis', 'Cuiteleiro', 'S', 'NP', 'S', 'N', 'At', 'B', '1'),
(74, 'Protium heptaphyllum', 'Almecegueira', 'S', 'P', 'S', 'S', 'Ar', 'A', '1'),
(75, 'Pseudobombax grandiflorum', 'Embiruçu', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(76, 'Psidium sartorianum', '', 'S', 'NP', 'S', 'S', 'Ar', 'M', '1'),
(77, 'Psychotria carthagenensis', 'Erva-de-gralha', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(78, 'Qualea parviflora', 'Pau-terra-mirim', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(79, 'Randia armata', 'Fruta-de-cachorro', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(80, 'Rhamnidium elaeocarpum', 'Saguaraji-amarelo, Café-ziroro', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(81, 'Sapium glandulosum', 'Pau-de-leite', 'S', 'NP', 'S', 'N', 'At', 'M', '1'),
(82, 'Savia dictyocarpa (Securinega guaraiuva)', 'Guaraiuva', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(83, 'Sebastiania brasiliensis', 'Tajuvinha, Branquilho', 'S', 'P', 'N', 'N', 'Ar', 'A', '1'),
(84, 'Senegalia polyphylla (Acacia polyphylla)', 'Monjoleiro', 'S', 'P', 'N', 'N', 'Ar', 'M', '1'),
(85, 'Sorocea bonplandii', 'Chincho', 'S', 'NP', 'S', 'N', 'Ar', 'A', '1'),
(86, 'Styrax ferrugineus', 'Limoeiro-do-mato', 'S', 'NP', 'S', 'N', 'Ar', 'B', '1'),
(87, 'Sweetia fruticosa', 'Sucupira amarela', 'S', 'NP', 'N', 'N', 'Ar', 'M', '1'),
(88, 'Tapirira guianensis', 'Peito-de-pombo,Copiúva', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(89, 'Trema micrantha', 'Candiúba, Pau-pólvora', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(90, 'Trichilia casaretti', 'Catiguá', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(91, 'Trichilia catigua', 'Catiguá', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(92, 'Trichilia claussenii', 'Quebra machado, Catiguá-vermelho', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(93, 'Trichilia pallida (Trichilia weddellii)', 'Baga-de-morcego', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(94, 'Virola sebifera', 'Ucuuba', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(95, 'Zanthoxylum monogynum (Zanthoxylum pohlianum)', 'Mamica-laranja', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(96, 'Zanthoxylum petiolare (Zanthoxylum tenuifolium)', 'Maminha', 'S', 'NP', 'S', 'N', 'Ar', 'M', '1'),
(97, 'Zanthoxylum rhoifolium', 'Mamica de porca, Laranjeira-brava', 'S', 'P', 'S', 'N', 'Ar', 'M', '1'),
(98, 'Zeyheria tuberculosa', 'Ipê-felpudo, Ipê-tabaco', 'S', 'NP', 'N', 'S', 'Ar', 'M', '1'),
(101, 'Actinostemon concolor', 'Leitinho', 'S', 'NP', 'N', 'N', 'At', 'M', '2'),
(102, 'Actinostemon klotzschii (Actinostemon communis)', 'Laranjeira-brava', 'S', 'NP', 'S', 'N', 'At', 'M', '2'),
(103, 'Aegiphila integrifolia (Aegiphila sellowiana)', 'Tamanqueiro', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(105, 'Albizia niopoides (Albizia haslerii)', 'Farinha-seca', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(106, 'Alibertia edulis', 'Goiaba-preta', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(108, 'Allophylus edulis', 'Chal-chal, Fruta-de-faraó', 'N', 'P', 'S', 'N', 'Ar', 'M', '2'),
(109, 'Aloysia virgata', 'Licheira', 'S', 'P', 'N', 'N', 'At', 'M', '2'),
(110, 'Anadenanthera colubrina (Anadenanthera macrocarpa)', 'Angico branco', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(111, 'Anadenanthera peregrina (Anadenanthera falcata)', 'Angico do cerrado', 'S', 'P', 'N', 'N', 'Ar', 'B', '2'),
(113, 'Annona cacans', 'Araticum cagão', 'S', 'P', 'S', 'N', 'Ar', 'A', '2'),
(114, 'Annona coriacea', 'Marolo, Araticum', 'S', 'P', 'S', 'N', 'At', 'B', '2'),
(116, 'Apuleia leiocarpa', 'Garapa', 'S', 'NP', 'N', 'S', 'Ar', 'M', '2'),
(118, 'Aspidosperma cylindrocarpon', 'Peroba poca', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(121, 'Aspidosperma subincanum', 'Guatambu-vermelho', 'S', 'NP', 'N', 'N', 'Ar', 'B', '2'),
(123, 'Astronium graveolens', 'Guaritá', 'S', 'NP', 'N', 'N', 'Ar', 'B', '2'),
(125, 'Bauhinia holophylla', 'Pata-de-vaca-do-cerrado', 'S', 'P', 'N', 'N', 'Ar', 'B', '2'),
(126, 'Bauhinia longifolia', 'Pata-de-vaca-do-campo', 'S', 'P', 'N', 'N', 'Ar', 'B', '2'),
(127, 'Bauhinia pentandra', ' ', 'S', 'P', 'N', 'N', 'Ar', 'B', '2'),
(130, 'Blepharocalyx salicifolius', 'Cambuí, Murta', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(131, 'Bowdichia virgilioides', 'Sucupira preta', 'S', 'P', 'N', 'S', 'Ar', 'B', '2'),
(137, 'Calyptranthes concinna', 'Guamirim-facho', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(138, 'Campomanesia guazumifolia', 'Sete-capotes, Araçá-do-mato', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(139, 'Campomanesia xanthocarpa', 'Guabiroba', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(140, 'Cariniana estrellensis', 'Jequitibá branco', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(141, 'Casearia aculeata', ' ', 'S', '', 'S', 'N', 'Ar', 'B', '2'),
(142, 'Casearia decandra', 'Cafezeiro-do-mato', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(143, 'Casearia gossypiosperma', 'Espeteiro', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(144, 'Casearia rupestris', ' ', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(145, 'Casearia sylvestris', 'Guaçatonga', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(146, 'Cecropia pachystachya (Cecropia catarinensis)', 'Embaúba', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(147, 'Cedrela fissilis', 'Cedro rosa, Cedrinho', 'S', 'NP', 'N', 'S', 'Ar', 'M', '2'),
(148, 'Ceiba speciosa (Chorisia speciosa)', 'Paineira', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(149, 'Celtis iguanaea', 'Espora de galo', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(151, 'Centrolobium tomentosum', 'Araribá rosa', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(152, 'Chomelia obtusa', ' ', 'S', 'NP', 'S', 'N', 'At', 'M', '2'),
(155, 'Chrysophyllum gonocarpum', 'Guatambu-de-sapo', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(157, 'Coccoloba mollis', 'Folha-de-bolo', 'N', '', 'S', 'N', 'Ar', 'M', '2'),
(158, 'Colubrina glandulosa (Colubrina rufa)', 'Saguaraji-vermelho', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(159, 'Connarus suberosus', 'Cabelo-de-negro', 'S', 'P', 'S', 'N', 'At', 'B', '2'),
(160, 'Copaifera langsdorffii', 'Copaíba', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(162, 'Cordia ecalyculata', 'Café-de-bugre, Claraíba', 'S', 'P', 'S', 'N', 'Ar', 'A', '2'),
(163, 'Cordia sellowiana', 'Chá-de-bugre, Louro-mole', 'S', 'P', 'S', 'N', 'Ar', 'B', '2'),
(164, 'Cordia trichotoma', 'Louro-pardo', 'S', 'P', 'N', 'N', 'Ar', 'B', '2'),
(165, 'Coussarea hydrangeifolia', 'Falsa-quina', 'S', '', 'S', 'N', 'At', 'B', '2'),
(168, 'Croton urucurana', 'Sangra-d´água', 'S', 'P', 'N', 'N', 'Ar', 'A', '2'),
(169, 'Cupania vernalis', 'Camboatã, Arco-de-peneira', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(170, 'Dendropanax cuneatus (Dendropanax cuneatum)', 'Maria mole', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(171, 'Diatenopteryx sorbifolia', 'Maria preta', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(176, 'Duguetia lanceolata', 'Pindaíba', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(177, 'Endlicheria paniculata', 'Canela-peluda, Canela-frade', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(178, 'Enterolobium contortisiliquum', 'Tamboril, Timburi', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(181, 'Erythroxylum pelleterianum', 'Eritroxilum', 'S', 'NP', 'S', 'N', 'At', 'M', '2'),
(184, 'Eugenia florida (Eugenia gardneriana)', 'Guamirim pitanga', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(186, 'Eugenia involucrata', 'Cereja-do-rio-grande', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(187, 'Eugenia myrcianthes (Hexachlamys edulis)', 'Azedinha', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(188, 'Eugenia speciosa', 'Laranjinha-do-mato', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(189, 'Eugenia uniflora', 'Pitanga', 'S', 'NP', 'S', 'N', 'At', 'M', '2'),
(190, 'Ficus guaranitica', 'Figueira branca', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(191, 'Ficus insipida', 'Figueira-do-brejo', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(192, 'Genipa americana', 'Jenipapo', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(193, 'Gochnatia barrosoae', 'Gochnatia', 'S', '', 'N', 'N', 'At', 'B', '2'),
(195, 'Guapira opposita', 'Flor de perola', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(196, 'Guarea guidonia (Guarea trichilioides)', 'Marinheiro, Cedrão', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(197, 'Guazuma ulmifolia', 'Mutambo, Fruta-de-macaco', 'S', 'P', 'S', 'N', 'Ar', 'B', '2'),
(200, 'Handroanthus impetiginosus (Tabebuia impetiginosa)', 'Ipê-roxo, Ipê-rosa', 'S', 'NP', 'N', 'N', 'Ar', 'B', '2'),
(201, 'Handroanthus ochraceus (Tabebuia ochracea)', 'Ipê-do-campo', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(205, 'Holocalyx balansae', 'Alecrim-de-campinas', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(206, 'Hymenaea courbaril', 'Jatobá, Jatobá-miúdo', 'S', 'NP', 'S', 'N', 'Ar', 'B', '2'),
(208, 'Inga edulis', 'Inga-cipó, Ingá-de-metro', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(209, 'Inga marginata', 'Ingá-feijão', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(210, 'Inga striata', 'Ingá', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(212, 'Jacaratia spinosa (Jacaratia dodecaphylla)', 'Jacaratiá', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(213, 'Lacistema hasslerianum', 'Espeteiro-do-campo, Coari', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(215, 'Lafoensia pacari', 'Dedaleira', 'S', 'NP', 'N', 'S', 'Ar', 'M', '2'),
(218, 'Luehea divaricata', 'Açoita-cavalo', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(221, 'Machaerium aculeatum', 'Pau-de angu, Bico-de-rola', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(222, 'Machaerium acutifolium', 'Jacarandá-do-campo', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(223, 'Machaerium brasiliense', 'Pau-sangue', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(224, 'Machaerium hirtum (Machaerium angustifolium)', 'Jacaranda-bico-de-pato', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(225, 'Machaerium nyctitans', 'Bico-de-pato', 'S', 'NP', 'N', 'N', 'Ar', 'A', '2'),
(226, 'Machaerium paraguariense', 'Cateretê', 'S', 'NP', 'N', 'N', 'Ar', 'A', '2'),
(228, 'Machaerium vestitum', 'Sapuvussu', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(229, 'Maclura tinctoria (Chlorophora tinctoria)', 'Taiúva', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(231, 'Manihot pilosa', ' ', 'S', 'NP', 'S', 'S', 'Ar', 'M', '2'),
(234, 'Maytenus aquifolia', 'Espinheira-santa-amarela', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(235, 'Maytenus floribunda', ' ', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(236, 'Metrodorea nigra (Metrodorea pubescens)', 'Chupa-ferro', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(239, 'Mollinedia widgrenii (Mollinedia chrysorrachys)', 'Capixim', 'S', 'NP', 'S', 'N', 'At', '', '2'),
(240, 'Myracrodruon urundeuva (Astronium urundeuva)', 'Aroeira-verdadeira', 'S', 'NP', 'N', 'S', 'Ar', 'M', '2'),
(243, 'Myrciaria floribunda (Myrciaria ciliolata)', 'Cambuí', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(244, 'Myroxylon peruiferum', 'Cabreúva', 'S', 'NP', 'N', 'S', 'Ar', 'M', '2'),
(245, 'Myrsine coriacea (Rapanea ferruginea)', 'Capororoca', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(246, 'Myrsine lancifolia (Rapanea lancifolia)', 'Capororoca-do-brejo', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(247, 'Myrsine umbellata (Rapanea umbellata)', 'Capororoca-branca', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(248, 'Nectandra cissiflora', 'Canela-de-cheiro', 'S', 'NP', 'S', 'S', 'Ar', 'M', '2'),
(249, 'Nectandra lanceolata', 'Canela-do-brejo, Canela-amarela', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(250, 'Nectandra megapotamica', 'Canelinha, Canela-louro', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(251, 'Ocotea corymbosa', 'Canela-corvo, Canela-do-cerrado', 'S', 'NP', 'S', 'N', 'Ar', 'B', '2'),
(252, 'Ocotea diospyrifolia', 'Canela caqui, Canela-louro', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(253, 'Ocotea elegans', 'Canela-sassafrás-do-campo', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(254, 'Ocotea pulchella', 'Canela-preta, Nhumirim', 'S', 'NP', 'S', 'N', 'Ar', 'B', '2'),
(257, 'Ouratea castaneifolia', 'Folha-de-castanha', 'N', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(258, 'Parapiptadenia rigida', 'Angico da mata', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(259, 'Peltophorum dubium', 'Embira puita, Canafístula', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(264, 'Piptadenia gonoacantha', 'Pau-jacaré', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(267, 'Pouteria gardneri', 'Macaranduba vermelha', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(268, 'Prockia crucis', 'Cuiteleiro', 'S', 'NP', 'S', 'N', 'At', 'B', '2'),
(269, 'Protium heptaphyllum', 'Almecegueira', 'S', 'P', 'S', 'S', 'Ar', 'A', '2'),
(270, 'Prunus myrtifolia (Prunus sellowii)', 'Pessegueiro bravo', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(271, 'Psidium sartorianum', ' ', 'S', 'NP', 'S', 'S', 'Ar', 'M', '2'),
(272, 'Psychotria carthagenensis', 'Erva-de-gralha', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(278, 'Qualea parviflora', 'Pau-terra-mirim', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(279, 'Randia armata', 'Fruta-de-cachorro', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(280, 'Rhamnidium elaeocarpum', 'Saguaraji-amarelo, Café-ziroro', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(283, 'Sapium glandulosum', 'Pau-de-leite', 'S', 'NP', 'S', 'N', 'At', 'M', '2'),
(284, 'Savia dictyocarpa (Securinega guaraiuva)', 'Guaraiuva', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(286, 'Schinus terebinthifolius', 'Aroeira-mansa, Aroeirinha', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(287, 'Sebastiania brasiliensis', 'Tajuvinha, Branquilho', 'S', 'P', 'N', 'N', 'Ar', 'A', '2'),
(288, 'Sebastiania serrata', ' ', '', 'NP', 'N', 'N', 'At', 'M', '2'),
(289, 'Senegalia polyphylla (Acacia polyphylla)', 'Monjoleiro', 'S', 'P', 'N', 'N', 'Ar', 'M', '2'),
(294, 'Solanum paniculatum', 'Jurubeba', 'S', 'P', 'S', 'N', 'At', 'M', '2'),
(295, 'Sorocea bonplandii', 'Chincho', 'S', 'NP', 'S', 'N', 'Ar', 'A', '2'),
(298, 'Styrax ferrugineus', 'Limoeiro-do-mato', 'S', 'NP', 'S', 'N', 'Ar', 'B', '2'),
(299, 'Sweetia fruticosa', 'Sucupira amarela', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(300, 'Syagrus romanzoffiana', 'Jerivá, Palmeira-jerivá', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(304, 'Tapirira guianensis', 'Peito-de-pombo,Copiúva', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(307, 'Terminalia triflora', 'Amarelinho, Capitãozinho', 'S', 'NP', 'N', 'N', 'Ar', 'M', '2'),
(309, 'Trema micrantha', 'Candiúba, Pau-pólvora', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(310, 'Trichilia casaretti', 'Catiguá', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(311, 'Trichilia catigua', 'Catiguá', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(312, 'Trichilia claussenii', 'Quebra machado, Catiguá-vermelho', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(313, 'Trichilia elegans', 'Catiguazinho', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(314, 'Trichilia pallida (Trichilia weddellii)', 'Baga-de-morcego', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(318, 'Vitex cymosa', 'Tarumã-da-várzea', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(319, 'Vitex megapotamica (Vitex montevidensis)', 'Taruma', 'S', 'P', 'S', 'N', 'Ar', 'B', '2'),
(323, 'Zanthoxylum petiolare (Zanthoxylum tenuifolium)', 'Maminha', 'S', 'NP', 'S', 'N', 'Ar', 'M', '2'),
(324, 'Zanthoxylum rhoifolium', 'Mamica de porca, Laranjeira-brava', 'S', 'P', 'S', 'N', 'Ar', 'M', '2'),
(326, 'Zeyheria tuberculosa', 'Ipê-felpudo, Ipê-tabaco', 'S', 'NP', 'N', 'S', 'Ar', 'M', '2');

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
(30, 2, '2016-08-20 19:59:23'),
(31, 2, '2016-08-20 20:01:06'),
(32, 2, '2016-08-20 20:45:52'),
(33, 2, '2016-08-20 23:22:43'),
(34, 2, '2016-08-20 23:25:29'),
(35, 2, '2016-08-21 00:41:19'),
(36, 2, '2016-08-21 00:41:44'),
(37, 2, '2016-08-23 00:07:49'),
(38, 2, '2016-08-23 01:40:09'),
(39, 2, '2016-08-23 02:19:09'),
(40, 2, '2016-08-23 02:22:03'),
(41, 2, '2016-08-23 02:22:14'),
(42, 2, '2016-08-23 02:31:54'),
(43, 2, '2016-08-23 02:35:05');

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
(190, 30, 2, 1),
(191, 31, 1, 2),
(192, 31, 2, 2),
(193, 31, 3, 25),
(194, 31, 4, 35),
(195, 31, 5, 3),
(196, 33, 1, 3),
(197, 33, 2, 3),
(198, 33, 3, 3),
(199, 33, 4, 2),
(200, 33, 5, 3),
(201, 33, 6, 4),
(202, 34, 1, 102),
(203, 34, 2, 1),
(204, 36, 1, 4),
(205, 36, 2, 1),
(206, 36, 3, 3),
(207, 36, 4, 1),
(208, 36, 5, 1),
(209, 36, 6, 1),
(210, 36, 7, 4),
(211, 36, 8, 1),
(212, 36, 9, 9),
(213, 36, 10, 5),
(214, 36, 11, 4),
(215, 36, 12, 15),
(216, 37, 1, 8),
(217, 37, 2, 5),
(218, 37, 3, 6),
(219, 37, 4, 11),
(220, 37, 5, 3),
(221, 37, 6, 4),
(222, 37, 8, 4),
(223, 37, 9, 4),
(224, 38, 1, 3),
(225, 38, 2, 1),
(226, 38, 3, 2),
(227, 38, 4, 3),
(228, 38, 5, 3),
(229, 38, 6, 4),
(230, 38, 7, 2),
(231, 38, 8, 3),
(232, 38, 9, 2),
(233, 38, 10, 2),
(234, 38, 11, 2),
(235, 39, 1, 4),
(236, 39, 2, 3),
(237, 39, 3, 2),
(238, 39, 4, 1),
(239, 40, 1, 3),
(240, 40, 2, 2),
(241, 41, 1, 4),
(242, 41, 2, 1),
(243, 42, 1, 4),
(244, 43, 1, 3),
(245, 43, 2, 3);

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
(1, 'admin', 'admin', 1),
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
  MODIFY `idprojeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `projetomudas`
--
ALTER TABLE `projetomudas`
  MODIFY `idprojetomudas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
