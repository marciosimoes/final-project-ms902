-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 28/06/2021 às 15:46
-- Versão do servidor: 5.7.34-0ubuntu0.18.04.1
-- Versão do PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `freedbtech_projmsbk`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `citacoes`
--

CREATE TABLE `citacoes` (
  `noticia_id` varchar(40) NOT NULL,
  `empresa_id` varchar(10) NOT NULL,
  `n_citacoes` int(11) DEFAULT NULL,
  `relevancia` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE `empresas` (
  `nome_acao` varchar(10) NOT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `classificacao` varchar(20) DEFAULT NULL,
  `setor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `empresas`
--

INSERT INTO `empresas` (`nome_acao`, `empresa`, `classificacao`, `setor`) VALUES
('AALR3', 'ALLIAR', 'Small Cap', 'Saúde'),
('ABCB4', 'ABC BRASIL', 'Small Cap', 'Financeiro'),
('ABEV3', 'AMBEV S/A', 'Mega Cap', 'Consumo não Cíclico'),
('AERI3', 'AERIS', 'Mid Cap', 'Bens Industriais'),
('AESB3', 'AES BRASIL', 'Mid Cap', 'Utilidade Pública'),
('AFLT3', 'AFLUENTE T', 'Micro Cap', 'Utilidade Pública'),
('AGRO3', 'BRASILAGRO', 'Small Cap', 'Consumo não Cíclico'),
('AHEB3', 'SPTURIS', 'Micro Cap', 'Consumo Cíclico'),
('AHEB5', 'SPTURIS', 'Micro Cap', 'Consumo Cíclico'),
('AHEB6', 'SPTURIS', 'Micro Cap', 'Consumo Cíclico'),
('ALLD3', 'ALLIED', 'Small Cap', 'Consumo Cíclico'),
('ALPA3', 'ALPARGATAS', 'Big Cap', 'Consumo Cíclico'),
('ALPA4', 'ALPARGATAS', 'Big Cap', 'Consumo Cíclico'),
('ALPK3', 'ESTAPAR', 'Small Cap', 'Bens Industriais'),
('ALSC3', 'ALIANSCE', 'Mid Cap', 'Financeiro'),
('ALSO3', 'ALIANSCSONAE', 'Mid Cap', 'Financeiro'),
('ALUP11', 'ALUPAR', 'Mid Cap', 'Utilidade Pública'),
('ALUP3', 'ALUPAR', 'Mid Cap', 'Utilidade Pública'),
('ALUP4', 'ALUPAR', 'Mid Cap', 'Utilidade Pública'),
('AMAR3', 'LOJAS MARISA', 'Small Cap', 'Consumo Cíclico'),
('AMBP3', 'AMBIPAR', 'Small Cap', 'Utilidade Pública'),
('ANIM3', 'ANIMA', 'Mid Cap', 'Consumo Cíclico'),
('APER3', 'ALPER S.A.', 'Micro Cap', 'Financeiro'),
('APTI3', 'ALIPERTI', 'Nano Cap', 'Consumo não Cíclico'),
('APTI4', 'ALIPERTI', 'Nano Cap', 'Consumo não Cíclico'),
('ARZZ3', 'AREZZO CO', 'Mid Cap', 'Consumo Cíclico'),
('ASAI3', 'ASSAI', 'Mid Cap', 'Consumo não Cíclico'),
('ATOM3', 'ATOMPAR', 'Nano Cap', 'Outros'),
('AURA33', 'AURA 360', '-', 'Materiais Básicos'),
('AVLL3', 'ALPHAVILLE', 'Micro Cap', 'Consumo Cíclico'),
('AZEV3', 'AZEVEDO', 'Nano Cap', 'Bens Industriais'),
('AZEV4', 'AZEVEDO', 'Nano Cap', 'Bens Industriais'),
('AZUL4', 'AZUL', 'Mid Cap', 'Bens Industriais'),
('B3SA3', 'B3', 'Big Cap', 'Financeiro'),
('BAHI3', 'BAHEMA', 'Nano Cap', 'Consumo Cíclico'),
('BALM3', 'BAUMER', 'Nano Cap', 'Saúde'),
('BALM4', 'BAUMER', 'Nano Cap', 'Saúde'),
('BAUH3', 'EXCELSIOR', 'Micro Cap', 'Consumo não Cíclico'),
('BAUH4', 'EXCELSIOR', 'Micro Cap', 'Consumo não Cíclico'),
('BAZA3', 'AMAZONIA', 'Small Cap', 'Financeiro'),
('BBAS3', 'BRASIL', 'Big Cap', 'Financeiro'),
('BBDC3', 'BRADESCO', 'Mega Cap', 'Financeiro'),
('BBDC4', 'BRADESCO', 'Mega Cap', 'Financeiro'),
('BBML3', 'BBMLOGISTICA', '-', 'Bens Industriais'),
('BBRK3', 'BR BROKERS', 'Nano Cap', 'Financeiro'),
('BBSE3', 'BBSEGURIDADE', 'Big Cap', 'Financeiro'),
('BDLL3', 'BARDELLA', 'Nano Cap', 'Bens Industriais'),
('BDLL4', 'BARDELLA', 'Nano Cap', 'Bens Industriais'),
('BEEF3', 'MINERVA', 'Mid Cap', 'Consumo não Cíclico'),
('BEES3', 'BANESTES', 'Small Cap', 'Financeiro'),
('BEES4', 'BANESTES', 'Small Cap', 'Financeiro'),
('BGIP3', 'BANESE', 'Micro Cap', 'Financeiro'),
('BGIP4', 'BANESE', 'Micro Cap', 'Financeiro'),
('BIDI11', 'BANCO INTER', 'Big Cap', 'Financeiro'),
('BIDI3', 'BANCO INTER', 'Big Cap', 'Financeiro'),
('BIDI4', 'BANCO INTER', 'Big Cap', 'Financeiro'),
('BIOM3', 'BIOMM', 'Small Cap', 'Saúde'),
('BKBR3', 'BK BRASIL', 'Small Cap', 'Consumo Cíclico'),
('BMEB3', 'MERC BRASIL', 'Small Cap', 'Financeiro'),
('BMEB4', 'MERC BRASIL', 'Small Cap', 'Financeiro'),
('BMGB4', 'BANCO BMG', 'Micro Cap', 'Financeiro'),
('BMIN3', 'MERC INVEST', 'Nano Cap', 'Financeiro'),
('BMIN4', 'MERC INVEST', 'Nano Cap', 'Financeiro'),
('BMKS3', 'BIC MONARK', 'Nano Cap', 'Consumo Cíclico'),
('BMOB3', 'BEMOBI TECH', 'Small Cap', 'Tecnologia da Informação'),
('BNBR3', 'NORD BRASIL', 'Mid Cap', 'Financeiro'),
('BOAS3', 'BOA VISTA', 'Mid Cap', 'Financeiro'),
('BOBR3', 'BOMBRIL', 'Micro Cap', 'Consumo não Cíclico'),
('BOBR4', 'BOMBRIL', 'Micro Cap', 'Consumo não Cíclico'),
('BPAC11', 'BTGP BANCO', 'Mega Cap', 'Financeiro'),
('BPAC3', 'BTGP BANCO', 'Mega Cap', 'Financeiro'),
('BPAC5', 'BTGP BANCO', 'Mega Cap', 'Financeiro'),
('BPAN4', 'BANCO PAN', 'Mid Cap', 'Financeiro'),
('BPAR3', 'BANPARA', 'Small Cap', 'Financeiro'),
('BPHA3', 'BR PHARMA', 'Nano Cap', 'Saúde'),
('BRAP3', 'BRADESPAR', 'Mid Cap', 'Materiais Básicos'),
('BRAP4', 'BRADESPAR', 'Mid Cap', 'Materiais Básicos'),
('BRDT3', 'PETROBRAS BR', 'Big Cap', 'Petróleo, Gás, Biocombustíveis'),
('BRFS3', 'BRF SA', 'Mid Cap', 'Consumo não Cíclico'),
('BRGE11', 'ALFA CONSORC', 'Micro Cap', 'Financeiro'),
('BRGE12', 'ALFA CONSORC', 'Micro Cap', 'Financeiro'),
('BRGE3', 'ALFA CONSORC', 'Micro Cap', 'Financeiro'),
('BRGE5', 'ALFA CONSORC', 'Micro Cap', 'Financeiro'),
('BRGE6', 'ALFA CONSORC', 'Micro Cap', 'Financeiro'),
('BRGE7', 'ALFA CONSORC', 'Micro Cap', 'Financeiro'),
('BRGE8', 'ALFA CONSORC', 'Micro Cap', 'Financeiro'),
('BRIV3', 'ALFA INVEST', 'Micro Cap', 'Financeiro'),
('BRIV4', 'ALFA INVEST', 'Micro Cap', 'Financeiro'),
('BRKM3', 'BRASKEM', 'Big Cap', 'Materiais Básicos'),
('BRKM5', 'BRASKEM', 'Big Cap', 'Materiais Básicos'),
('BRKM6', 'BRASKEM', 'Big Cap', 'Materiais Básicos'),
('BRML3', 'BR MALLS PAR', 'Mid Cap', 'Financeiro'),
('BRPR3', 'BR PROPERT', 'Small Cap', 'Financeiro'),
('BRQB3', 'BRQ', '-', 'Tecnologia da Informação'),
('BRSR3', 'BANRISUL', 'Mid Cap', 'Financeiro'),
('BRSR5', 'BANRISUL', 'Mid Cap', 'Financeiro'),
('BRSR6', 'BANRISUL', 'Mid Cap', 'Financeiro'),
('BSLI3', 'BRB BANCO', 'Mid Cap', 'Financeiro'),
('BSLI4', 'BRB BANCO', 'Mid Cap', 'Financeiro'),
('BTOW3', 'B2W DIGITAL', 'Big Cap', 'Consumo Cíclico'),
('BTTL3', 'EMBPAR S/A', 'Micro Cap', 'Bens Industriais'),
('CALI3', 'CONST A LIND', 'Nano Cap', 'Consumo Cíclico'),
('CALI4', 'CONST A LIND', 'Nano Cap', 'Consumo Cíclico'),
('CAMB3', 'CAMBUCI', 'Micro Cap', 'Consumo Cíclico'),
('CAML3', 'CAMIL', 'Small Cap', 'Consumo não Cíclico'),
('CARD3', 'CSU CARDSYST', 'Micro Cap', 'Financeiro'),
('CASH3', 'MELIUZ', 'Mid Cap', 'Tecnologia da Informação'),
('CASN3', 'CASAN', 'Mid Cap', 'Utilidade Pública'),
('CASN4', 'CASAN', 'Mid Cap', 'Utilidade Pública'),
('CATA3', 'IND CATAGUAS', '-', 'Consumo Cíclico'),
('CATA4', 'IND CATAGUAS', '-', 'Consumo Cíclico'),
('CBEE3', 'AMPLA ENERG', 'Small Cap', 'Utilidade Pública'),
('CCPR3', 'CYRE COM-CCP', 'Small Cap', 'Financeiro'),
('CCRO3', 'CCR SA', 'Big Cap', 'Bens Industriais'),
('CCXC3', 'CCX CARVAO', 'Nano Cap', 'Financeiro'),
('CEAB3', 'CEA MODAS', 'Small Cap', 'Consumo Cíclico'),
('CEBR3', 'CEB', 'Small Cap', 'Utilidade Pública'),
('CEBR5', 'CEB', 'Small Cap', 'Utilidade Pública'),
('CEBR6', 'CEB', 'Small Cap', 'Utilidade Pública'),
('CEDO3', 'CEDRO', 'Nano Cap', 'Consumo Cíclico'),
('CEDO4', 'CEDRO', 'Nano Cap', 'Consumo Cíclico'),
('CEEB3', 'COELBA', 'Mid Cap', 'Utilidade Pública'),
('CEEB5', 'COELBA', 'Mid Cap', 'Utilidade Pública'),
('CEEB6', 'COELBA', 'Mid Cap', 'Utilidade Pública'),
('CEED3', 'CEEE-D', 'Micro Cap', 'Utilidade Pública'),
('CEED4', 'CEEE-D', 'Micro Cap', 'Utilidade Pública'),
('CEGR3', 'CEG', 'Mid Cap', 'Utilidade Pública'),
('CEPE3', 'CELPE', 'Mid Cap', 'Utilidade Pública'),
('CEPE5', 'CELPE', 'Mid Cap', 'Utilidade Pública'),
('CEPE6', 'CELPE', 'Mid Cap', 'Utilidade Pública'),
('CESP3', 'CESP', 'Mid Cap', 'Utilidade Pública'),
('CESP5', 'CESP', 'Mid Cap', 'Utilidade Pública'),
('CESP6', 'CESP', 'Mid Cap', 'Utilidade Pública'),
('CGAS3', 'COMGAS', 'Mid Cap', 'Utilidade Pública'),
('CGAS5', 'COMGAS', 'Mid Cap', 'Utilidade Pública'),
('CGRA3', 'GRAZZIOTIN', 'Micro Cap', 'Consumo Cíclico'),
('CGRA4', 'GRAZZIOTIN', 'Micro Cap', 'Consumo Cíclico'),
('CIEL3', 'CIELO', 'Mid Cap', 'Financeiro'),
('CLSC3', 'CELESC', 'Small Cap', 'Utilidade Pública'),
('CLSC4', 'CELESC', 'Small Cap', 'Utilidade Pública'),
('CMIG3', 'CEMIG', 'Mid Cap', 'Utilidade Pública'),
('CMIG4', 'CEMIG', 'Mid Cap', 'Utilidade Pública'),
('CMIN3', 'CSNMINERACAO', 'Big Cap', 'Materiais Básicos'),
('CMSA3', 'CIMS', '-', 'Outros'),
('CMSA4', 'CIMS', '-', 'Outros'),
('CNSY3', 'CINESYSTEM', '-', 'Comunicações'),
('COCE3', 'COELCE', 'Small Cap', 'Utilidade Pública'),
('COCE5', 'COELCE', 'Small Cap', 'Utilidade Pública'),
('COCE6', 'COELCE', 'Small Cap', 'Utilidade Pública'),
('COGN3', 'COGNA ON', 'Mid Cap', 'Consumo Cíclico'),
('CORR3', 'COR RIBEIRO', 'Nano Cap', 'Financeiro'),
('CORR4', 'COR RIBEIRO', 'Nano Cap', 'Financeiro'),
('CPFE3', 'CPFL ENERGIA', 'Big Cap', 'Utilidade Pública'),
('CPLE11', 'COPEL', 'Big Cap', 'Utilidade Pública'),
('CPLE3', 'COPEL', 'Big Cap', 'Utilidade Pública'),
('CPLE5', 'COPEL', 'Big Cap', 'Utilidade Pública'),
('CPLE6', 'COPEL', 'Big Cap', 'Utilidade Pública'),
('CRDE3', 'CR2', 'Nano Cap', 'Consumo Cíclico'),
('CRFB3', 'CARREFOUR BR', 'Big Cap', 'Consumo não Cíclico'),
('CRIV3', 'ALFA FINANC', 'Micro Cap', 'Financeiro'),
('CRIV4', 'ALFA FINANC', 'Micro Cap', 'Financeiro'),
('CRPG3', 'CRISTAL', 'Small Cap', 'Materiais Básicos'),
('CRPG5', 'CRISTAL', 'Small Cap', 'Materiais Básicos'),
('CRPG6', 'CRISTAL', 'Small Cap', 'Materiais Básicos'),
('CSAB3', 'SEG AL BAHIA', 'Micro Cap', 'Financeiro'),
('CSAB4', 'SEG AL BAHIA', 'Micro Cap', 'Financeiro'),
('CSAN3', 'COSAN', 'Big Cap', 'Petróleo, Gás, Biocombustíveis'),
('CSED3', 'CRUZEIRO EDU', 'Mid Cap', 'Consumo Cíclico'),
('CSMG3', 'COPASA', 'Mid Cap', 'Utilidade Pública'),
('CSNA3', 'SID NACIONAL', 'Big Cap', 'Materiais Básicos'),
('CSRN3', 'COSERN', 'Small Cap', 'Utilidade Pública'),
('CSRN5', 'COSERN', 'Small Cap', 'Utilidade Pública'),
('CSRN6', 'COSERN', 'Small Cap', 'Utilidade Pública'),
('CTCA3', 'CTC S.A.', '-', 'Consumo não Cíclico'),
('CTKA3', 'KARSTEN', 'Nano Cap', 'Consumo Cíclico'),
('CTKA4', 'KARSTEN', 'Nano Cap', 'Consumo Cíclico'),
('CTNM3', 'COTEMINAS', 'Micro Cap', 'Consumo Cíclico'),
('CTNM4', 'COTEMINAS', 'Micro Cap', 'Consumo Cíclico'),
('CTSA3', 'SANTANENSE', 'Micro Cap', 'Consumo Cíclico'),
('CTSA4', 'SANTANENSE', 'Micro Cap', 'Consumo Cíclico'),
('CURY3', 'CURY S/A', 'Small Cap', 'Consumo Cíclico'),
('CVCB3', 'CVC BRASIL', 'Mid Cap', 'Consumo Cíclico'),
('CXSE3', 'CAIXA SEGURI', 'Big Cap', 'Financeiro'),
('CYRE3', 'CYRELA REALT', 'Mid Cap', 'Consumo Cíclico'),
('DASA3', 'DASA', 'Big Cap', 'Saúde'),
('DIRR3', 'DIRECIONAL', 'Small Cap', 'Consumo Cíclico'),
('DMMO3', 'DOMMO', 'Micro Cap', 'Petróleo, Gás, Biocombustíveis'),
('DMVF3', 'D1000VFARMA', 'Micro Cap', 'Saúde'),
('DOHL3', 'DOHLER', 'Small Cap', 'Consumo Cíclico'),
('DOHL4', 'DOHLER', 'Small Cap', 'Consumo Cíclico'),
('DTCY3', 'DTCOM-DIRECT', 'Nano Cap', 'Bens Industriais'),
('DTCY4', 'DTCOM-DIRECT', 'Nano Cap', 'Bens Industriais'),
('DTEX3', 'DURATEX', 'Mid Cap', 'Materiais Básicos'),
('EALT3', 'ACO ALTONA', 'Micro Cap', 'Bens Industriais'),
('EALT4', 'ACO ALTONA', 'Micro Cap', 'Bens Industriais'),
('ECOR3', 'ECORODOVIAS', 'Mid Cap', 'Bens Industriais'),
('ECPR3', 'ENCORPAR', 'Nano Cap', 'Consumo Cíclico'),
('ECPR4', 'ENCORPAR', 'Nano Cap', 'Consumo Cíclico'),
('EEEL3', 'CEEE-GT', 'Mid Cap', 'Utilidade Pública'),
('EEEL4', 'CEEE-GT', 'Mid Cap', 'Utilidade Pública'),
('EGIE3', 'ENGIE BRASIL', 'Big Cap', 'Utilidade Pública'),
('EKTR3', 'ELEKTRO', 'Mid Cap', 'Utilidade Pública'),
('EKTR4', 'ELEKTRO', 'Mid Cap', 'Utilidade Pública'),
('ELEK3', 'ELEKEIROZ', 'Micro Cap', 'Materiais Básicos'),
('ELEK4', 'ELEKEIROZ', 'Micro Cap', 'Materiais Básicos'),
('ELET3', 'ELETROBRAS', 'Big Cap', 'Utilidade Pública'),
('ELET5', 'ELETROBRAS', 'Big Cap', 'Utilidade Pública'),
('ELET6', 'ELETROBRAS', 'Big Cap', 'Utilidade Pública'),
('ELMD3', 'ELETROMIDIA', 'Small Cap', 'Comunicações'),
('EMAE3', 'EMAE', 'Small Cap', 'Utilidade Pública'),
('EMAE4', 'EMAE', 'Small Cap', 'Utilidade Pública'),
('EMBR3', 'EMBRAER', 'Mid Cap', 'Bens Industriais'),
('ENAT3', 'ENAUTA PART', 'Small Cap', 'Petróleo, Gás, Biocombustíveis'),
('ENBR3', 'ENERGIAS BR', 'Mid Cap', 'Utilidade Pública'),
('ENEV3', 'ENEVA', 'Mid Cap', 'Utilidade Pública'),
('ENGI11', 'ENERGISA', 'Mid Cap', 'Utilidade Pública'),
('ENGI3', 'ENERGISA', 'Mid Cap', 'Utilidade Pública'),
('ENGI4', 'ENERGISA', 'Mid Cap', 'Utilidade Pública'),
('ENJU3', 'ENJOEI', 'Small Cap', 'Tecnologia da Informação'),
('ENMT3', 'ENERGISA MT', 'Mid Cap', 'Utilidade Pública'),
('ENMT4', 'ENERGISA MT', 'Mid Cap', 'Utilidade Pública'),
('EQPA3', 'EQTL PARA', 'Mid Cap', 'Utilidade Pública'),
('EQPA5', 'EQTL PARA', 'Mid Cap', 'Utilidade Pública'),
('EQPA6', 'EQTL PARA', 'Mid Cap', 'Utilidade Pública'),
('EQPA7', 'EQTL PARA', 'Mid Cap', 'Utilidade Pública'),
('EQTL3', 'EQUATORIAL', 'Big Cap', 'Utilidade Pública'),
('ESPA3', 'ESPACOLASER', 'Small Cap', 'Consumo Cíclico'),
('ESTR3', 'ESTRELA', 'Nano Cap', 'Consumo Cíclico'),
('ESTR4', 'ESTRELA', 'Nano Cap', 'Consumo Cíclico'),
('ETER3', 'ETERNIT', 'Small Cap', 'Bens Industriais'),
('EUCA3', 'EUCATEX', 'Small Cap', 'Materiais Básicos'),
('EUCA4', 'EUCATEX', 'Small Cap', 'Materiais Básicos'),
('EVEN3', 'EVEN', 'Small Cap', 'Consumo Cíclico'),
('EZTC3', 'EZTEC', 'Mid Cap', 'Consumo Cíclico'),
('FESA3', 'FERBASA', 'Small Cap', 'Materiais Básicos'),
('FESA4', 'FERBASA', 'Small Cap', 'Materiais Básicos'),
('FHER3', 'FER HERINGER', 'Small Cap', 'Materiais Básicos'),
('FIGE3', 'INVEST BEMGE', 'Nano Cap', 'Outros'),
('FIGE4', 'INVEST BEMGE', 'Nano Cap', 'Outros'),
('FLEX3', 'FLEX S/A', '-', 'Bens Industriais'),
('FLRY3', 'FLEURY', 'Mid Cap', 'Saúde'),
('FNCN3', 'FINANSINOS', '-', 'Financeiro'),
('FRAS3', 'FRAS-LE', 'Small Cap', 'Bens Industriais'),
('FRIO3', 'METALFRIO', 'Micro Cap', 'Bens Industriais'),
('FRTA3', 'POMIFRUTAS', 'Nano Cap', 'Consumo não Cíclico'),
('GEPA3', 'GER PARANAP', 'Small Cap', 'Utilidade Pública'),
('GEPA4', 'GER PARANAP', 'Small Cap', 'Utilidade Pública'),
('GFSA3', 'GAFISA', 'Small Cap', 'Consumo Cíclico'),
('GGBR3', 'GERDAU', 'Big Cap', 'Materiais Básicos'),
('GGBR4', 'GERDAU', 'Big Cap', 'Materiais Básicos'),
('GMAT3', 'GRUPO MATEUS', 'Mid Cap', 'Consumo não Cíclico'),
('GNDI3', 'INTERMEDICA', 'Big Cap', 'Saúde'),
('GOAU3', 'GERDAU MET', 'Mid Cap', 'Materiais Básicos'),
('GOAU4', 'GERDAU MET', 'Mid Cap', 'Materiais Básicos'),
('GOLL4', 'GOL', 'Mid Cap', 'Bens Industriais'),
('GPAR3', 'CELGPAR', 'Small Cap', 'Utilidade Pública'),
('GPCP3', 'DEXXOS PAR', 'Small Cap', 'Materiais Básicos'),
('GPCP4', 'DEXXOS PAR', 'Small Cap', 'Materiais Básicos'),
('GPIV33', 'GP INVEST', '-', 'Financeiro'),
('GRND3', 'GRENDENE', 'Mid Cap', 'Consumo Cíclico'),
('GSHP3', 'GENERALSHOPP', 'Nano Cap', 'Financeiro'),
('GUAR3', 'GUARARAPES', 'Mid Cap', 'Consumo Cíclico'),
('HAGA3', 'HAGA S/A', 'Nano Cap', 'Bens Industriais'),
('HAGA4', 'HAGA S/A', 'Nano Cap', 'Bens Industriais'),
('HAPV3', 'HAPVIDA', 'Big Cap', 'Saúde'),
('HBOR3', 'HELBOR', 'Small Cap', 'Consumo Cíclico'),
('HBRE3', 'HBR REALTY', 'Small Cap', 'Financeiro'),
('HBSA3', 'HIDROVIAS', 'Small Cap', 'Bens Industriais'),
('HBTS3', 'HABITASUL', 'Nano Cap', 'Financeiro'),
('HBTS5', 'HABITASUL', 'Nano Cap', 'Financeiro'),
('HBTS6', 'HABITASUL', 'Nano Cap', 'Financeiro'),
('HCBR3', 'BR HOME', '-', 'Consumo Cíclico'),
('HETA3', 'HERCULES', 'Nano Cap', 'Consumo Cíclico'),
('HETA4', 'HERCULES', 'Nano Cap', 'Consumo Cíclico'),
('HGTX3', 'CIA HERING', 'Mid Cap', 'Consumo Cíclico'),
('HOOT3', 'HOTEIS OTHON', 'Nano Cap', 'Consumo Cíclico'),
('HOOT4', 'HOTEIS OTHON', 'Nano Cap', 'Consumo Cíclico'),
('HYPE3', 'HYPERA', 'Mid Cap', 'Saúde'),
('IGBR3', 'IGB S/A', 'Nano Cap', 'Financeiro'),
('IGSN3', 'IGUA SA', '-', 'Utilidade Pública'),
('IGTA3', 'IGUATEMI', 'Mid Cap', 'Financeiro'),
('INEP3', 'INEPAR', 'Micro Cap', 'Bens Industriais'),
('INEP4', 'INEPAR', 'Micro Cap', 'Bens Industriais'),
('INNT3', 'INTER SA', '-', 'Consumo Cíclico'),
('INTB3', 'INTELBRAS', 'Mid Cap', 'Tecnologia da Informação'),
('IRBR3', 'IRBBRASIL RE', 'Mid Cap', 'Financeiro'),
('ITEC3', 'ITAUTEC', 'Micro Cap', 'Tecnologia da Informação'),
('ITSA3', 'ITAUSA', 'Big Cap', 'Financeiro'),
('ITSA4', 'ITAUSA', 'Big Cap', 'Financeiro'),
('ITUB3', 'ITAUUNIBANCO', 'Mega Cap', 'Financeiro'),
('ITUB4', 'ITAUUNIBANCO', 'Mega Cap', 'Financeiro'),
('JALL3', 'JALLESMACHAD', 'Small Cap', 'Consumo não Cíclico'),
('JBDU3', 'J B DUARTE', 'Nano Cap', 'Outros'),
('JBDU4', 'J B DUARTE', 'Nano Cap', 'Outros'),
('JBSS3', 'JBS', 'Big Cap', 'Consumo não Cíclico'),
('JFEN3', 'JOAO FORTES', 'Micro Cap', 'Consumo Cíclico'),
('JHSF3', 'JHSF PART', 'Mid Cap', 'Consumo Cíclico'),
('JOPA3', 'JOSAPAR', 'Micro Cap', 'Consumo não Cíclico'),
('JOPA4', 'JOSAPAR', 'Micro Cap', 'Consumo não Cíclico'),
('JPSA3', 'JEREISSATI', 'Small Cap', 'Financeiro'),
('KEPL3', 'KEPLER WEBER', 'Small Cap', 'Bens Industriais'),
('KLBN11', 'KLABIN S/A', 'Big Cap', 'Materiais Básicos'),
('KLBN3', 'KLABIN S/A', 'Big Cap', 'Materiais Básicos'),
('KLBN4', 'KLABIN S/A', 'Big Cap', 'Materiais Básicos'),
('LAME3', 'LOJAS AMERIC', 'Big Cap', 'Consumo Cíclico'),
('LAME4', 'LOJAS AMERIC', 'Big Cap', 'Consumo Cíclico'),
('LAVV3', 'LAVVI', 'Small Cap', 'Consumo Cíclico'),
('LCAM3', 'LOCAMERICA', 'Mid Cap', 'Consumo Cíclico'),
('LEVE3', 'METAL LEVE', 'Small Cap', 'Consumo Cíclico'),
('LHER3', 'LOJAS HERING', 'Nano Cap', 'Financeiro'),
('LHER4', 'LOJAS HERING', 'Nano Cap', 'Financeiro'),
('LIGT3', 'LIGHT S/A', 'Mid Cap', 'Utilidade Pública'),
('LINX3', 'LINX', 'Mid Cap', 'Tecnologia da Informação'),
('LIPR3', 'ELETROPAR', 'Micro Cap', 'Utilidade Pública'),
('LJQQ3', 'QUERO-QUERO', 'Small Cap', 'Consumo Cíclico'),
('LMED3', 'LIFEMED', '-', 'Saúde'),
('LOGG3', 'LOG COM PROP', 'Small Cap', 'Financeiro'),
('LOGN3', 'LOG-IN', 'Small Cap', 'Bens Industriais'),
('LPSB3', 'LOPES BRASIL', 'Micro Cap', 'Financeiro'),
('LREN3', 'LOJAS RENNER', 'Big Cap', 'Consumo Cíclico'),
('LUPA3', 'LUPATECH', 'Micro Cap', 'Petróleo, Gás, Biocombustíveis'),
('LUXM3', 'TREVISA', 'Micro Cap', 'Bens Industriais'),
('LUXM4', 'TREVISA', 'Micro Cap', 'Bens Industriais'),
('LWSA3', 'LOCAWEB', 'Mid Cap', 'Tecnologia da Informação'),
('MAPT3', 'CEMEPE', 'Nano Cap', 'Outros'),
('MAPT4', 'CEMEPE', 'Nano Cap', 'Outros'),
('MBLY3', 'MOBLY', 'Small Cap', 'Tecnologia da Informação'),
('MDIA3', 'M.DIASBRANCO', 'Mid Cap', 'Consumo não Cíclico'),
('MDNE3', 'MOURA DUBEUX', 'Micro Cap', 'Consumo Cíclico'),
('MEAL3', 'IMC S/A', 'Small Cap', 'Consumo Cíclico'),
('MELK3', 'MELNICK', 'Small Cap', 'Consumo Cíclico'),
('MERC3', 'MERC FINANC', 'Micro Cap', 'Financeiro'),
('MERC4', 'MERC FINANC', 'Micro Cap', 'Financeiro'),
('MGEL3', 'MANGELS INDL', 'Nano Cap', 'Materiais Básicos'),
('MGEL4', 'MANGELS INDL', 'Nano Cap', 'Materiais Básicos'),
('MGLU3', 'MAGAZ LUIZA', 'Mega Cap', 'Consumo Cíclico'),
('MILS3', 'MILLS', 'Small Cap', 'Bens Industriais'),
('MMAQ3', 'MINASMAQUINA', 'Nano Cap', 'Bens Industriais'),
('MMAQ4', 'MINASMAQUINA', 'Nano Cap', 'Bens Industriais'),
('MMXM3', 'MMX MINER', 'Nano Cap', 'Materiais Básicos'),
('MNDL3', 'MUNDIAL', 'Nano Cap', 'Consumo Cíclico'),
('MNPR3', 'MINUPAR', 'Nano Cap', 'Consumo não Cíclico'),
('MOAR3', 'MONT ARANHA', 'Small Cap', 'Financeiro'),
('MOSI3', 'MOSAICO', 'Small Cap', 'Tecnologia da Informação'),
('MOVI3', 'MOVIDA', 'Mid Cap', 'Consumo Cíclico'),
('MPLU3', 'MULTIPLUS', 'Small Cap', 'Consumo Cíclico'),
('MRFG3', 'MARFRIG', 'Mid Cap', 'Consumo não Cíclico'),
('MRVE3', 'MRV', 'Mid Cap', 'Consumo Cíclico'),
('MSPA3', 'MELHOR SP', 'Micro Cap', 'Materiais Básicos'),
('MSPA4', 'MELHOR SP', 'Micro Cap', 'Materiais Básicos'),
('MSRO3', 'MAESTROLOC', '-', 'Consumo Cíclico'),
('MTIG3', 'METAL IGUACU', 'Nano Cap', 'Materiais Básicos'),
('MTIG4', 'METAL IGUACU', 'Nano Cap', 'Materiais Básicos'),
('MTRE3', 'MITRE REALTY', 'Small Cap', 'Consumo Cíclico'),
('MTSA3', 'METISA', 'Micro Cap', 'Bens Industriais'),
('MTSA4', 'METISA', 'Micro Cap', 'Bens Industriais'),
('MULT3', 'MULTIPLAN', 'Mid Cap', 'Financeiro'),
('MWET3', 'WETZEL S/A', 'Nano Cap', 'Bens Industriais'),
('MWET4', 'WETZEL S/A', 'Nano Cap', 'Bens Industriais'),
('MYPK3', 'IOCHP-MAXION', 'Small Cap', 'Consumo Cíclico'),
('NAFG3', 'NADIR FIGUEI', 'Micro Cap', 'Consumo Cíclico'),
('NAFG4', 'NADIR FIGUEI', 'Micro Cap', 'Consumo Cíclico'),
('NEMO3', 'SUZANO HOLD', '-', 'Materiais Básicos'),
('NEMO5', 'SUZANO HOLD', '-', 'Materiais Básicos'),
('NEMO6', 'SUZANO HOLD', '-', 'Materiais Básicos'),
('NEOE3', 'NEOENERGIA', 'Mid Cap', 'Utilidade Pública'),
('NGRD3', 'NEOGRID', 'Small Cap', 'Tecnologia da Informação'),
('NORD3', 'NORDON MET', 'Nano Cap', 'Bens Industriais'),
('NRTQ3', 'NORTCQUIMICA', '-', 'Saúde'),
('NTCO3', 'GRUPO NATURA', 'Big Cap', 'Consumo não Cíclico'),
('ODER3', 'ODERICH', 'Micro Cap', 'Consumo não Cíclico'),
('ODER4', 'ODERICH', 'Micro Cap', 'Consumo não Cíclico'),
('ODPV3', 'ODONTOPREV', 'Mid Cap', 'Saúde'),
('OFSA3', 'OUROFINO S/A', 'Small Cap', 'Saúde'),
('OIBR3', 'OI', 'Mid Cap', 'Comunicações'),
('OIBR4', 'OI', 'Mid Cap', 'Comunicações'),
('OMGE3', 'OMEGA GER', 'Mid Cap', 'Utilidade Pública'),
('OPCT3', 'OCEANPACT', 'Small Cap', 'Petróleo, Gás, Biocombustíveis'),
('ORVR3', 'ORIZON', 'Small Cap', 'Utilidade Pública'),
('OSXB3', 'OSX BRASIL', 'Nano Cap', 'Petróleo, Gás, Biocombustíveis'),
('PACF3', 'PACIFIC RDSL', '-', 'Saúde'),
('PARD3', 'IHPARDINI', 'Small Cap', 'Saúde'),
('PATI3', 'PANATLANTICA', 'Small Cap', 'Materiais Básicos'),
('PATI4', 'PANATLANTICA', 'Small Cap', 'Materiais Básicos'),
('PCAR3', 'P.ACUCAR-CBD', 'Mid Cap', 'Consumo não Cíclico'),
('PDGR3', 'PDG REALT', 'Micro Cap', 'Consumo Cíclico'),
('PDTC3', 'PADTEC', 'Micro Cap', 'Financeiro'),
('PEAB3', 'PAR AL BAHIA', 'Micro Cap', 'Financeiro'),
('PEAB4', 'PAR AL BAHIA', 'Micro Cap', 'Financeiro'),
('PETR3', 'PETROBRAS', 'Mega Cap', 'Petróleo, Gás, Biocombustíveis'),
('PETR4', 'PETROBRAS', 'Mega Cap', 'Petróleo, Gás, Biocombustíveis'),
('PETZ3', 'PETZ', 'Mid Cap', 'Consumo Cíclico'),
('PFRM3', 'PROFARMA', 'Micro Cap', 'Saúde'),
('PGMN3', 'PAGUE MENOS', 'Mid Cap', 'Saúde'),
('PINE3', 'PINE', 'Micro Cap', 'Financeiro'),
('PINE4', 'PINE', 'Micro Cap', 'Financeiro'),
('PLAS3', 'PLASCAR PART', 'Micro Cap', 'Consumo Cíclico'),
('PLPL3', 'PLANOEPLANO', 'Small Cap', 'Consumo Cíclico'),
('PMAM3', 'PARANAPANEMA', 'Micro Cap', 'Materiais Básicos'),
('PNVL3', 'DIMED', 'Small Cap', 'Saúde'),
('PNVL4', 'DIMED', 'Small Cap', 'Saúde'),
('POMO3', 'MARCOPOLO', 'Small Cap', 'Bens Industriais'),
('POMO4', 'MARCOPOLO', 'Small Cap', 'Bens Industriais'),
('POSI3', 'POSITIVO TEC', 'Small Cap', 'Tecnologia da Informação'),
('POWE3', 'FOCUS ON', 'Small Cap', 'Utilidade Pública'),
('PPAR3', 'POLPAR', 'Nano Cap', 'Outros'),
('PPLA11', 'PPLA', 'Nano Cap', 'Financeiro'),
('PRIO3', 'PETRORIO', 'Mid Cap', 'Petróleo, Gás, Biocombustíveis'),
('PRNR3', 'PRINER', 'Micro Cap', 'Bens Industriais'),
('PSSA3', 'PORTO SEGURO', 'Mid Cap', 'Financeiro'),
('PTBL3', 'PORTOBELLO', 'Small Cap', 'Bens Industriais'),
('PTCA11', 'PRATICA', '-', 'Bens Industriais'),
('PTCA3', 'PRATICA', '-', 'Bens Industriais'),
('PTNT3', 'PETTENATI', 'Micro Cap', 'Consumo Cíclico'),
('PTNT4', 'PETTENATI', 'Micro Cap', 'Consumo Cíclico'),
('QUAL3', 'QUALICORP', 'Mid Cap', 'Saúde'),
('QUSW3', 'QUALITY SOFT', '-', 'Tecnologia da Informação'),
('RADL3', 'RAIADROGASIL', 'Big Cap', 'Saúde'),
('RAIL3', 'RUMO S.A.', 'Big Cap', 'Bens Industriais'),
('RANI3', 'IRANI', 'Small Cap', 'Materiais Básicos'),
('RAPT3', 'RANDON PART', 'Small Cap', 'Bens Industriais'),
('RAPT4', 'RANDON PART', 'Small Cap', 'Bens Industriais'),
('RCSL3', 'RECRUSUL', 'Micro Cap', 'Bens Industriais'),
('RCSL4', 'RECRUSUL', 'Micro Cap', 'Bens Industriais'),
('RDNI3', 'RNI', 'Micro Cap', 'Consumo Cíclico'),
('RDOR3', 'REDE D OR', 'Mega Cap', 'Saúde'),
('REDE3', 'REDE ENERGIA', 'Mid Cap', 'Utilidade Pública'),
('RENT3', 'LOCALIZA', 'Big Cap', 'Consumo Cíclico'),
('RLOG3', 'COSAN LOG', 'Mid Cap', 'Bens Industriais'),
('RNEW11', 'RENOVA', 'Micro Cap', 'Utilidade Pública'),
('RNEW3', 'RENOVA', 'Micro Cap', 'Utilidade Pública'),
('RNEW4', 'RENOVA', 'Micro Cap', 'Utilidade Pública'),
('ROMI3', 'INDS ROMI', 'Small Cap', 'Bens Industriais'),
('RPAD3', 'ALFA HOLDING', 'Micro Cap', 'Financeiro'),
('RPAD5', 'ALFA HOLDING', 'Micro Cap', 'Financeiro'),
('RPAD6', 'ALFA HOLDING', 'Micro Cap', 'Financeiro'),
('RPMG3', 'PET MANGUINH', 'Micro Cap', 'Petróleo, Gás, Biocombustíveis'),
('RRRP3', '3R PETROLEUM', 'Mid Cap', 'Petróleo, Gás, Biocombustíveis'),
('RSID3', 'ROSSI RESID', 'Nano Cap', 'Consumo Cíclico'),
('RSUL3', 'RIOSULENSE', 'Nano Cap', 'Bens Industriais'),
('RSUL4', 'RIOSULENSE', 'Nano Cap', 'Bens Industriais'),
('SANB11', 'SANTANDER BR', 'Mega Cap', 'Financeiro'),
('SANB3', 'SANTANDER BR', 'Mega Cap', 'Financeiro'),
('SANB4', 'SANTANDER BR', 'Mega Cap', 'Financeiro'),
('SAPR11', 'SANEPAR', 'Mid Cap', 'Utilidade Pública'),
('SAPR3', 'SANEPAR', 'Mid Cap', 'Utilidade Pública'),
('SBFG3', 'GRUPO SBF', 'Mid Cap', 'Consumo Cíclico'),
('SBSP3', 'SABESP', 'Big Cap', 'Utilidade Pública'),
('SCAR3', 'SAO CARLOS', 'Small Cap', 'Financeiro'),
('SEDU3', 'SOMOS EDUCA', 'Mid Cap', 'Consumo Cíclico'),
('SEER3', 'SER EDUCA', 'Small Cap', 'Consumo Cíclico'),
('SEQL3', 'SEQUOIA LOG', 'Small Cap', 'Bens Industriais'),
('SGPS3', 'SPRINGS', 'Micro Cap', 'Consumo Cíclico'),
('SHOW3', 'TIME FOR FUN', 'Micro Cap', 'Consumo Cíclico'),
('SHUL3', 'SCHULZ', 'Small Cap', 'Bens Industriais'),
('SHUL4', 'SCHULZ', 'Small Cap', 'Bens Industriais'),
('SIMH3', 'SIMPAR', 'Mid Cap', 'Financeiro'),
('SLCE3', 'SLC AGRICOLA', 'Mid Cap', 'Consumo não Cíclico'),
('SLED3', 'SARAIVA LIVR', 'Nano Cap', 'Consumo Cíclico'),
('SLED4', 'SARAIVA LIVR', 'Nano Cap', 'Consumo Cíclico'),
('SMFT3', 'SMART FIT', '-', 'Consumo Cíclico'),
('SMLS3', 'SMILES', 'Small Cap', 'Consumo Cíclico'),
('SMTO3', 'SAO MARTINHO', 'Mid Cap', 'Consumo não Cíclico'),
('SNSY3', 'SANSUY', 'Nano Cap', 'Materiais Básicos'),
('SNSY5', 'SANSUY', 'Nano Cap', 'Materiais Básicos'),
('SNSY6', 'SANSUY', 'Nano Cap', 'Materiais Básicos'),
('SOMA3', 'GRUPO SOMA', 'Mid Cap', 'Consumo Cíclico'),
('SOND3', 'SONDOTECNICA', 'Nano Cap', 'Bens Industriais'),
('SOND5', 'SONDOTECNICA', 'Nano Cap', 'Bens Industriais'),
('SOND6', 'SONDOTECNICA', 'Nano Cap', 'Bens Industriais'),
('SPRI3', 'SPRINGER', 'Nano Cap', 'Financeiro'),
('SPRI5', 'SPRINGER', 'Nano Cap', 'Financeiro'),
('SPRI6', 'SPRINGER', 'Nano Cap', 'Financeiro'),
('SQIA3', 'SINQIA', 'Small Cap', 'Tecnologia da Informação'),
('STBP3', 'SANTOS BRP', 'Mid Cap', 'Bens Industriais'),
('STKF3', 'STATKRAFT', '-', 'Utilidade Pública'),
('STTR3', 'STARA', '-', 'Bens Industriais'),
('SULA11', 'SUL AMERICA', 'Mid Cap', 'Financeiro'),
('SULA3', 'SUL AMERICA', 'Mid Cap', 'Financeiro'),
('SULA4', 'SUL AMERICA', 'Mid Cap', 'Financeiro'),
('SUZB3', 'SUZANO S.A.', 'Big Cap', 'Materiais Básicos'),
('TAEE11', 'TAESA', 'Mid Cap', 'Utilidade Pública'),
('TAEE3', 'TAESA', 'Mid Cap', 'Utilidade Pública'),
('TAEE4', 'TAESA', 'Mid Cap', 'Utilidade Pública'),
('TASA3', 'TAURUS ARMAS', 'Small Cap', 'Bens Industriais'),
('TASA4', 'TAURUS ARMAS', 'Small Cap', 'Bens Industriais'),
('TCNO3', 'TECNOSOLO', 'Nano Cap', 'Bens Industriais'),
('TCNO4', 'TECNOSOLO', 'Nano Cap', 'Bens Industriais'),
('TCSA3', 'TECNISA', 'Micro Cap', 'Consumo Cíclico'),
('TECN3', 'TECHNOS', 'Nano Cap', 'Consumo Cíclico'),
('TEKA3', 'TEKA', 'Nano Cap', 'Consumo Cíclico'),
('TEKA4', 'TEKA', 'Nano Cap', 'Consumo Cíclico'),
('TELB3', 'TELEBRAS', 'Small Cap', 'Comunicações'),
('TELB4', 'TELEBRAS', 'Small Cap', 'Comunicações'),
('TEND3', 'TENDA', 'Small Cap', 'Consumo Cíclico'),
('TESA3', 'TERRA SANTA', 'Small Cap', 'Consumo não Cíclico'),
('TFCO4', 'TRACK FIELD', 'Small Cap', 'Consumo Cíclico'),
('TGMA3', 'TEGMA', 'Small Cap', 'Bens Industriais'),
('TIMS3', 'TIM', 'Big Cap', 'Comunicações'),
('TKNO3', 'TEKNO', 'Micro Cap', 'Materiais Básicos'),
('TKNO4', 'TEKNO', 'Micro Cap', 'Materiais Básicos'),
('TOTS3', 'TOTVS', 'Mid Cap', 'Tecnologia da Informação'),
('TOYB3', 'TECTOY', 'Nano Cap', 'Consumo Cíclico'),
('TOYB4', 'TECTOY', 'Nano Cap', 'Consumo Cíclico'),
('TPIS3', 'TRIUNFO PART', 'Micro Cap', 'Bens Industriais'),
('TRIS3', 'TRISUL', 'Small Cap', 'Consumo Cíclico'),
('TRPL3', 'TRAN PAULIST', 'Mid Cap', 'Utilidade Pública'),
('TRPL4', 'TRAN PAULIST', 'Mid Cap', 'Utilidade Pública'),
('TRPN3', 'TARPON INV', 'Nano Cap', 'Financeiro'),
('TUPY3', 'TUPY', 'Small Cap', 'Bens Industriais'),
('UCAS3', 'UNICASA', 'Micro Cap', 'Consumo Cíclico'),
('UGPA3', 'ULTRAPAR', 'Mid Cap', 'Petróleo, Gás, Biocombustíveis'),
('UNIP3', 'UNIPAR', 'Mid Cap', 'Materiais Básicos'),
('UNIP5', 'UNIPAR', 'Mid Cap', 'Materiais Básicos'),
('UNIP6', 'UNIPAR', 'Mid Cap', 'Materiais Básicos'),
('USIM3', 'USIMINAS', 'Mid Cap', 'Materiais Básicos'),
('USIM5', 'USIMINAS', 'Mid Cap', 'Materiais Básicos'),
('USIM6', 'USIMINAS', 'Mid Cap', 'Materiais Básicos'),
('VALE3', 'VALE', 'Mega Cap', 'Materiais Básicos'),
('VAMO3', 'VAMOS', 'Mid Cap', 'Consumo Cíclico'),
('VIVA3', 'VIVARA S.A.', 'Mid Cap', 'Consumo Cíclico'),
('VIVR3', 'VIVER', 'Micro Cap', 'Consumo Cíclico'),
('VIVT3', 'TELEF BRASIL', 'Big Cap', 'Comunicações'),
('VLID3', 'VALID', 'Micro Cap', 'Bens Industriais'),
('VSPT3', 'FER C ATLANT', 'Micro Cap', 'Bens Industriais'),
('VSPT4', 'FER C ATLANT', 'Micro Cap', 'Bens Industriais'),
('VULC3', 'VULCABRAS', 'Small Cap', 'Consumo Cíclico'),
('VVAR3', 'VIAVAREJO', 'Mid Cap', 'Consumo Cíclico'),
('WEGE3', 'WEG', 'Mega Cap', 'Bens Industriais'),
('WEST3', 'WESTWING', 'Micro Cap', 'Tecnologia da Informação'),
('WHRL3', 'WHIRLPOOL', 'Mid Cap', 'Consumo Cíclico'),
('WHRL4', 'WHIRLPOOL', 'Mid Cap', 'Consumo Cíclico'),
('WIZS3', 'WIZ S.A.', 'Small Cap', 'Financeiro'),
('WLMM3', 'WLM IND COM', 'Small Cap', 'Bens Industriais'),
('WLMM4', 'WLM IND COM', 'Small Cap', 'Bens Industriais'),
('WSON33', 'WILSON SONS', '-', 'Bens Industriais'),
('YDUQ3', 'YDUQS PART', 'Mid Cap', 'Consumo Cíclico');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `info` text,
  `valor` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` varchar(32) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `summary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `news` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fonte` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinonimos`
--

CREATE TABLE `sinonimos` (
  `empresa_id` varchar(10) NOT NULL,
  `substituicao` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `sinonimos`
--

INSERT INTO `sinonimos` (`empresa_id`, `substituicao`) VALUES
('AZUL4', 'A Azul'),
('BBAS3', 'Banco do Brasil, BB'),
('BPAC11', 'BTG, BTG Pactual'),
('GOLL4', 'A Gol'),
('MNDL3', 'A Mundial'),
('VAMO3', 'A Vamos, Grupo Vamos');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `citacoes`
--
ALTER TABLE `citacoes`
  ADD PRIMARY KEY (`noticia_id`,`empresa_id`),
  ADD KEY `fk_noticias_has_empresas_empresas1` (`empresa_id`);

--
-- Índices de tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`nome_acao`);

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sinonimos`
--
ALTER TABLE `sinonimos`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `citacoes`
--
ALTER TABLE `citacoes`
  ADD CONSTRAINT `fk_noticias_has_empresas_empresas1` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`nome_acao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_noticias_has_empresas_noticias` FOREIGN KEY (`noticia_id`) REFERENCES `noticias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `sinonimos`
--
ALTER TABLE `sinonimos`
  ADD CONSTRAINT `fk_sinonimos_empresas1` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`nome_acao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
