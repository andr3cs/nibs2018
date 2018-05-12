-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 12-Maio-2018 às 09:32
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nibs_2018_camara_aberta`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano_exercicio`
--

CREATE TABLE `ano_exercicio` (
  `pk` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `presenca_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ano_exercicio`
--

INSERT INTO `ano_exercicio` (`pk`, `ano`, `presenca_total`) VALUES
(1, 2013, 67),
(2, 2014, 67),
(3, 2015, 67);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolaridade`
--

CREATE TABLE `escolaridade` (
  `pk` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escolaridade`
--

INSERT INTO `escolaridade` (`pk`, `descricao`) VALUES
(1, 'Ensino Fundamental Completo'),
(2, 'Ensino Fundamental Incompleto'),
(3, 'Ensino Médio Completo'),
(4, 'Ensino Médio Incompleto'),
(5, 'Superior Completo'),
(6, 'Superior Incompleto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_civil`
--

CREATE TABLE `estado_civil` (
  `pk` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado_civil`
--

INSERT INTO `estado_civil` (`pk`, `descricao`) VALUES
(1, 'Solteiro'),
(2, 'Casado'),
(3, 'Divorciado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lei`
--

CREATE TABLE `lei` (
  `pk` int(11) NOT NULL,
  `identificador` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `descricao` text NOT NULL,
  `fk_impacto` int(11) NOT NULL,
  `fk_tema` int(11) DEFAULT NULL,
  `fk_vereador` int(11) DEFAULT NULL,
  `fk_lei_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lei`
--

INSERT INTO `lei` (`pk`, `identificador`, `data`, `descricao`, `fk_impacto`, `fk_tema`, `fk_vereador`, `fk_lei_tipo`) VALUES
(1, '005/2013', '2013-03-05', 'Institui o Poder Executivo a criar e implantar a papelaria do povo, para fornecer material escolar, livros didáticos e jogos educativos a preço de custo, para a população de baixa renda, e dá outras providências.', 2, 7, 3, 1),
(2, '006/2013', '2013-03-05', 'Autoriza o Poder Executivo Municipal a criar a escola municipal de informática e dá outras providências.', 2, 7, 3, 1),
(3, '004/2013', '2013-03-06', 'Dispõe sobre a gratuidade de passagens de transporte público aos usuários do SUS (Sistema Único de Saúde)', 2, 14, 16, 1),
(4, '031/2013', '2013-03-12', 'Autoriza o Poder Executivo a conceder auxílio financeiro a atletas, artistas e demais pessoas físicas que irão participar de eventos esportivos e/ou culturais em outras cidades e dá outras providências.', 2, 19, 3, 1),
(5, '002/2013', '2013-03-13', 'Cria o Título Municipal Empresa Amiga do Idoso, e dá outras providências.', 2, 9, 6, 1),
(6, '026/2013', '2013-03-13', 'Obriga as Escolas Públicas da Rede Municipal de Ilhéus a divulgarem o índice IDEB em suas fachadas e dá outras providências.', 2, 7, 19, 1),
(7, '021/2013', '2013-03-17', 'Institui o Programa Mãe Ilheense e dá outras providências.', 2, 3, 9, 1),
(8, '001/2013', '2013-03-18', 'Dispõe sobre a obrigatoriedade de afixação nas academias de ginástica, nos centros esportivos e estabelecimentos comerciais de nutrição esportiva e produtos correlatos à atividade física, de cartaz com advertência sobre as consequências de uso de anabolizantes e dá outras providências.', 2, 19, 3, 1),
(9, '003/2013', '2013-03-18', 'Ficam criadas áreas exclusivas para estacionamento de bicicletas na forma que menciona e dá outras providências.', 2, 5, 3, 1),
(10, '007/2013', '2013-03-18', 'Institui o serviço odontológico escolar na rede municipal de ensino.', 2, 7, 3, 1),
(11, '008/2013', '2013-03-18', 'Institui no calendário oficial de eventos do Município de Ilhéus o Dia Municipal do Ciclista a ser comemorado anualmente no dia 01 de setembro e dá outras providências.', 1, 6, 3, 1),
(12, '009/2013', '2013-03-18', 'Reconhece como entidade de utilidade pública a ASBL - Associação Sul Baiana de Canaricultores e dá outras providências.', 1, 16, 2, 1),
(13, '010/2013', '2013-03-18', 'Dispõe sobre a autorização para funcionamento de microempresas nas residências de seus titulares.', 2, 10, 8, 1),
(14, '011/2013', '2013-03-18', 'Dispõe sobre a colocação de detectores de metais em todas as entradas de shows e proibição de vendas de bebidas em garrafas e dá outras providências.', 2, 15, 8, 1),
(15, '012/2013', '2013-03-18', 'Reconhece de Utilidade Pública Ascershe - Associação Comunitária Educativa Recreativa Shekinah e dá outras providências.', 1, 16, 3, 1),
(16, '013/2013', '2013-03-18', 'Fica o Município de Ilhéus obrigado a incluir o tema História Regional e Local nos conteúdos curriculares do ensino fundamental das escolas públicas e privadas de todo o município.', 2, 7, 9, 1),
(17, '014/2013', '2013-03-18', 'Fica instituído, no âmbito do Município de Ilhéus, o programa "a mulher, sua saúde e os seus direitos" e dá outras providências.', 2, 14, 3, 1),
(18, '016/2013', '2013-03-18', 'Cria centros de assistência e conveniência da terceira idade e dá outras providências.', 2, 9, 3, 1),
(19, '017/2013', '2013-03-18', 'Reconhece de Utilidade Pública Associação Ilheense de SURF - AIS e dá outras providências.', 1, 16, 2, 1),
(20, '018/2013', '2013-03-18', 'Dispõe sobre a permanência do Estatuto da Criança e do Adolescente (ECA), Lei n. 8069 de 13 de julho de 1990 nas creches e escolas de ensino fundamental no Município de Ilhéus.', 2, 7, 14, 1),
(21, '022/2013', '2013-03-18', 'Assegura matrícula para portador de deficiência locomotora na Escola Municipal mais próxima de sua residência.', 2, 9, 3, 1),
(22, '023/2013', '2013-03-18', 'Dispõe sobre a criação de curso pré-vestibular municipal de Ilhéus e dá outras providências.', 2, 7, 3, 1),
(23, '024/2013', '2013-03-18', 'Dispõe sobre a criação do "Dia do Professor Destaque do Ano" no Município de Ilhéus e dá outras providências.', 1, 6, 3, 1),
(24, '025/2013', '2013-03-18', 'Reconhece de utilidade pública Associação de Moradores do Loteamento Parque das Mangueiras e dá outras providências.', 1, 16, 3, 1),
(25, '058/2013', '2013-03-18', 'Dispõe sobre a obrigatoriedade da colocação de placa indicativa do itinerário das linhas de ônibus, nos pontos de parada e dá outras providências.', 2, 5, 15, 1),
(26, '032/2013', '2013-03-19', 'Obriga a castração gratuita aos animais da população carente, em todo o município de Ilhéus.', 2, 14, 8, 1),
(27, '033/2013', '2013-03-20', 'Estabelece a obrigatoriedade da abertura antecipada dos estabelecimentos bancários 1 hora antes do horário pré-estabelecido e dá outras providências.', 2, 10, 3, 1),
(28, '034/2013', '2013-03-20', 'Cria no âmbito do município de Ilhéus a Exposição Estudantil das Profissões e dá outras providências.', 2, 7, 3, 1),
(29, '035/2013', '2013-03-20', 'Dispõe sobre a inclusão no calendário oficial de eventos do município de Ilhéus, o "Dia da Consciência Jovem" a ser comemorado todo último domingo de abril de cada ano, e dá outras providências.', 1, 6, 3, 1),
(30, '040/2013', '2013-03-23', 'Institui a Semana de Conscientização dos Direitos dos Animais no Município de Ilhéus, e dá outras providências. ', 1, 6, 8, 1),
(31, '038/2013', '2013-03-26', 'Autoriza o Executivo Municipal a conceder transporte para os enterros gratuitos realizados pelo serviço funerário do município de Ilhéus aos municípes de baixa renda.', 2, 3, 3, 1),
(32, '039/2013', '2013-03-26', 'Institui o bilhete da Ação Cidadã e dá outras providências.', 2, 3, 3, 1),
(33, '041/2013', '2013-03-26', 'Institui o atendimento veterinário gratuito aos animais da população carente, em todo o município de Ilhéus.', 2, 14, 8, 1),
(34, '042/2013', '2013-03-26', 'Viabilizar normas e adequar proteção e segurança de recém-nascidos e crianças internadas em hospitais e maternidades municipais e particulares e dá outras providências.', 2, 14, 3, 1),
(35, '045/2013', '2013-04-02', 'Criar o dia municipal Anti-Drogas e dá outras providências.', 1, 6, 3, 1),
(36, '046/2013', '2013-04-02', 'Institui a semana de Prevenção do diabetes e a hipertensão arterial em Ilhéus, e dá outras providências.', 1, 6, 3, 1),
(37, '027/2013', '2013-04-09', 'Institui a Semana Municipal do Capoeirista e dá outras providências.', 1, 6, 9, 1),
(38, '029/2013', '2013-04-09', 'Institui o Programa Primeiro Emprego no Município de Ilhéus.', 2, 17, 9, 1),
(39, '030/2013', '2013-04-09', 'Ficam declaradas cidades-irmãs as cidades de Ilhéus-Itabuna, no Estado da Bahia, e dá outras providências.', 1, 5, 9, 1),
(40, '037/2013', '2013-04-09', 'Institui a semana da conscientização dos Direitos dos Animais no Município de Ilhéus e dá outras providências.', 1, 6, 8, 1),
(41, '057/2013', '2013-04-30', 'Dá nome à praça Fabiano Amorim, no bairro da Conquista, na cidade de Ilhéus.', 1, 11, 11, 1),
(42, '064/2013', '2013-06-11', 'Dispõe sobre a alteração de mudança de nomes ruas, praças e logradouros públicos municipais da cidade de Ilhéus.', 1, 11, 8, 1),
(43, '066/2013', '2013-06-11', 'Institui a criação de sistema municipal de coleta móvel de sangue no município de Ilhéus, e dá outras providências.', 2, 14, 3, 1),
(44, '067/2013', '2013-06-11', 'Dispõe sobre a instalação de uma unidade de Primeiros Socorros com um(a) enfermeiro (a) em todas as escolas do município de Ilhéus e dá outras providências.', 2, 7, 3, 1),
(45, '073/2013', '2013-06-11', 'Obriga os centros de habilitação de condutores, sediados no município de Ilhéus, a adaptarem dois veículos para o aprendizado de pessoas portadoras de deficiência física e dá outras providências.', 2, 9, 8, 1),
(46, '080/2013', '2013-06-11', 'Ficam as instituições públicas de saúde do município obrigadas a informar em locais fixos e visivéis os nomes dos médicos, especialidades, dias e horários de atendimento, quantidades de fichas disponíveis e nome do coordenador/diretor responsável pelo estabelecimento, e dá outras providências.', 2, 14, 9, 1),
(47, '083/2013', '2013-06-11', 'Dispõe sobre a implantação do conselho municipal antidrogas (COMAD), no âmbito do município de Ilhéus e dá outras providências.', 2, 4, 4, 1),
(48, '084/2013', '2013-06-12', 'Fica o município de Ilhéus obrigado a fixar placas indicativas de sinalização de trânsito bilingues (Português e Inglês) nas principais vias e acessos e dá outras providências.', 2, 5, 9, 1),
(49, '089/2013', '2013-06-26', 'Dispõe sobre a obrigatoriedade da realização de testes de acuidade visual e auditiva em todos os alunos matrículados em escolas da rede pública e particular do município de Ilhéus e dá outras providências.', 2, 7, 4, 1),
(50, '090/2013', '2013-06-26', 'Dispõe sobre a expedição de receitas médicas e odontológicas digitadas e/ou datilografadas, no município de Ilhéus e dá outras providências.', 2, 14, 4, 1),
(51, '091/2013', '2013-06-26', 'Dispõe sobre a implantação do Conselho Municipal do Orçamento Participativo (CMOP), na cidade de Ilhéus e dá outras providências.', 2, 4, 4, 1),
(52, '094/2013', '2013-06-26', 'Dispõe sobre a lei nº 3.257, de 26/02/2006, que autoriza o Poder Executivo a adotar medidas para o controle da população animal urbana e rural, sobre prevenção e controle das zoonoses, bem como o controle dos animais sinantcópicos no município de Ilhéus e dá outras providências.', 2, 14, 15, 1),
(53, '163/2013', '2013-07-29', 'Dispõe sobre a campanha educativa Pró Saúde e Higiêne Bucal e parcerias público privadas para o fornecimento de conjuntos de acessórios para hihgiêne bucal aos alunos de promeiro grau da rede pública de ensino municipal.', 2, 7, 1, 1),
(54, '097/2013', '2013-08-06', 'Dispõe sobre a implantação do serviço de verificação de óbito (SVO) no âmbito do município de Ilhéus, e dá outras providências.', 2, 14, 9, 1),
(55, '098/2013', '2013-08-06', 'Fica o município de Ilhés obrigado a conceder um dia de folga ao servidor aniversariante, e dá outras providências.', 2, 1, 9, 1),
(56, '043/2013', '2013-08-07', 'Estabelece a obrigatoriedade dos estabelecimentos de saúde, disponibilizar em sua recepção um painel com os médicos disponíveis, suas qualificações e seu período de atendimento.', 2, 14, 17, 1),
(57, '044/2013', '2013-08-07', 'Cria lei que dispõe sobre a remoção de veículos automotores, que se encontram sem condições de uso e abandonados nas vias públicas do município de Ilhéus.', 2, 5, 20, 1),
(58, '047/2013', '2013-08-07', 'Reconhece de utilidade pública a associação de Frescobol, na Av. ACM, bairro do Malhado e dá outras providências.', 1, 16, 3, 1),
(59, '048/2013', '2013-08-07', 'Dispõe sobre a fiscalização e qualidade de fontes de água mineral no município de Ilhéus e dá outras providências.', 2, 23, 13, 1),
(60, '049/2013', '2013-08-07', 'Dispõe sobre a apresentação de artistas locais na abertura ou encerramento de shows musicais no Município de Ilhéus e dá outras providências.', 2, 20, 13, 1),
(61, '053/2013', '2013-08-07', 'Reconhece de Utilidade Pública a associação beneficente Juventude Sem Drogas - ABEJUSD', 1, 16, 5, 1),
(62, '054/2013', '2013-08-07', 'Reconhece de Utilidade Pública o Instituto Cabruca e dá outras providências.', 1, 16, 3, 1),
(63, '055/2013', '2013-08-07', 'Determina que os supermercados e outros estabelecimentos forneçam gratuitamente embalagens para os consumidores e dá outras providências.', 2, 10, 13, 1),
(64, '056/2013', '2013-08-07', 'Institui-se dia da Consciência Policial na cidade de Ilhéus, em Primeiro de Fevereiro.', 1, 6, 20, 1),
(65, '062/2013', '2013-08-07', 'Institui-se como matéria obrigatória, na rede de ensino pública municipal, e matéria educação nutricional.', 2, 7, 20, 1),
(66, '063/2013', '2013-08-07', 'Institui-se o dia do Blogueiro no Município de Ilhéus, sempre no dia 04 de abril.', 1, 6, 4, 1),
(67, '065/2013', '2013-08-07', 'Dá nova denominação à Avenida Ubaitaba, no bairro da Barra Zona Norte da Cidade de Ilhéus, para Avenida Radialista Antônio Bispo Neto (Tony Neto).', 1, 11, 3, 1),
(68, '068/2013', '2013-08-07', 'Institui o dia Municipal do Abuso e a Exploração Sexual contra crianças e adolescentes e dá outras providências.', 1, 6, 3, 1),
(69, '069/2013', '2013-08-07', 'Dispõe sobre a implantação do Programa Médico nas Creches do Município de Ilhéus, e dá outras providências.', 2, 7, 3, 1),
(70, '070/2013', '2013-08-07', 'Dispõe sobre a publicação em site na internet da lista de espera de consultas comuns ou especializadas, exames, cirurgias e quaisquer outros procedimento ou ações de saúde, agendados pelos cidadãos no Município de Ilhéus.', 2, 14, 8, 1),
(71, '071/2013', '2013-08-07', 'Dispõe sobre a Rede Pública Municipal de ensino, promover ações preventivas educativas sobre drogas psicoativas, ilícitas e lícitas, incluindo o uso de álcool, tabaco e automedicação.', 2, 7, 8, 1),
(72, '072/2013', '2013-08-07', 'Reconhece de Utilidade Pública a Associação ONG Casa Arte da Criança.', 1, 16, 5, 1),
(73, '074/2013', '2013-08-07', 'Dispõe sobre a criação de sala específica e preventiva para o atendimento de crianças e adolescentes vítimas do abuso sexual no município de Ilhéus e dá outras providências.', 2, 14, 3, 1),
(74, '075/2013', '2013-08-07', 'Institui, no âmbito do Município de Ilhéus, o Evento Atividade Gospel e dá outras providências.', 1, 13, 8, 1),
(75, '077/2013', '2013-08-07', 'Dispõe sobre o desenvolvimento de Programas de Prevenção à AIDS e das Doenças Sexualmente Transmissíveis, nos estabelecimentos de ensino e de atendimento no Município de Ilhéus.', 2, 7, 8, 1),
(76, '078/2013', '2013-08-07', 'Dispõe sobre a instalação de câmeras de monitoramento de segurança nas vias públicas no  âmbito do município de Ilhéus e dá outras providências.', 2, 15, 4, 1),
(77, '079/2013', '2013-08-07', 'Dá o nome da Avenida Antônio Bispo Neto (Toni Neto), denominado Av. Ubaitaba, Ilhéus-Bahia.', 1, 11, 3, 1),
(78, '082/2013', '2013-08-07', 'Dispõe sobre a obrigatoriedade do Poder Público do Município de Ilhéus, custear os exames médicos admissionais de candidatos aprovados em concurso municipal e dá outras providências.', 2, 17, 4, 1),
(79, '085/2013', '2013-08-07', 'Fica o Município de Ilhéus obrigado a conceder tratamento prioritário em processos administrativos tramitantes na Prefeitura Municipal de Ilhéus a pessoas igual ou superior a 60 (sessenta) anos.', 2, 9, 9, 1),
(80, '086/2013', '2013-08-07', 'Instituir o dia 19 de janeiro como o Dia do Turismo Municipal na Cidade de Ilhéus e dá outras providências.', 1, 6, 11, 1),
(81, '087/2013', '2013-08-07', 'Obriga a realização do Exame de Oximetria de Pulso (Teste do Coraçãozinho) em todos os recém-nascidos nos berçários dos hospitais e maternidade do Município de Ilhéus.', 2, 14, 5, 1),
(82, '092/2013', '2013-08-07', 'Dispõe sobre a escolha, mediante eleição direta de Diretores e Vice-Diretores das Escolas da Rede Municipal de Ensino do Município de Ilhéus, e dá outras providências.', 2, 7, 4, 1),
(83, '093/2013', '2013-08-07', 'Reconhece de Utilidade Pública o Projeto Todo Dia é Dia de Compartilhar - PTDC.', 1, 16, 14, 1),
(84, '095/2013', '2013-08-07', 'Institui-se a obrigatoriedade da adequação de clínicas e hospitais para que mulheres com deficiência (cadeirantes) ou com mobilidades reduzidas tenham acesso aos aparelhos que diagnosticam o câncer de mama.', 2, 9, 20, 1),
(85, '112/2013', '2013-08-13', 'Institui a carteira do portador de deficiência física e da outras providências.', 2, 9, 8, 1),
(86, '096/2013', '2013-08-19', 'Dispõe sobre a obrigatoriedade das Empresas de Transporte coletivo urbano e rural a praticarem a meia passagem aos domingos e feriados a todos os usuários, e dá outras providências.', 2, 5, 4, 1),
(87, '099/2013', '2013-08-19', 'Altera a denominação do nome da Rua Lions Internacional, no bairro Pontal, que passará a chamar-se Avenida  A, Bairro Sapetinga.', 1, 11, 8, 1),
(88, '100/2013', '2013-08-19', 'Altera a denominação do nome da Rua Osvaldo Ramos no Bairro do Pontal, que passará a chamar-se Rua 01, no Bairro Sapetinga.', 1, 11, 8, 1),
(89, '101/2013', '2013-08-19', 'Altera a denominação da Rua Domingos Guimarães no Bairro do Pontal, que passará a chamar-se Rua 02, no Bairro da Sapetinga.', 1, 11, 8, 1),
(90, '102/2013', '2013-08-19', 'Altera a denominação da Rua Felisberto Gomes dos Santos, no Bairro do Pontal, que passará a chamar-se Rua 03, Bairro Sapetinga.', 1, 11, 8, 1),
(91, '103/2013', '2013-08-19', 'Altera a denominação do nome da Rua Arthur Leite da Silveira, no bairro do Pontal, que passará a chamar-se Rua 04, Bairro Sapetinga.', 1, 11, 8, 1),
(92, '104/2013', '2013-08-19', 'Altera a denominação do nome da Rua Baltazar da Silva Lisboa, no bairro Pontal, que passará a chamar-se Rua 05, Bairro Sapetinga.', 1, 11, 8, 1),
(93, '105/2013', '2013-08-19', 'Altera a denominação do nome da Rua Pedro Ribeiro Filho, no Bairro Pontal, que passará a chamar-se Rua 06, Bairro Sapetinga.', 1, 11, 8, 1),
(94, '106/2013', '2013-08-19', 'Altera a denominação do nome da Rua Ponciano de novais Miranda, no bairro do Pontal, que passará a chamar-se Rua 07, Bairro Sapetinga.', 1, 11, 8, 1),
(95, '107/2013', '2013-08-19', 'Altera a denominação do nome da Rua Pedro Ferreira Lima, no Bairro pontal, que passará a chamar-se Rua 08, bairro Sapetinga.', 1, 11, 8, 1),
(96, '108/2013', '2013-08-19', 'Altera a denominação do nome da Rua Alcindo da Costa Dórea, no bairro Pontal, que passará a chamar-se Rua 09, bairro Sapetinga.', 1, 11, 8, 1),
(97, '110/2013', '2013-08-19', 'Altera a denominação do nome da Rua Sosígenes Costa, no bairro do Pontal, que passará a chamar-se Rua 11, bairro Sapetinga.', 1, 11, 8, 1),
(98, '111/2013', '2013-08-19', 'Altera a denominação do nome da Rua Nelson de Carvalho Moreira, no bairro Pontal, que passará a chamar-se Avenida B, bairro Sapetinga.', 1, 11, 8, 1),
(99, '036/2013', '2013-08-27', 'Dá nova redação ao Art. 4º da Lei nº 2.939, de 27 de novembro de 2001, regulamentando a concessão de gratuidade à pessoa com idade superior ou igal aos 60 anos no sistema de transporte coletivo do município de Ilhéus.', 2, 9, 20, 1),
(100, '114/2013', '2013-09-03', 'Institui o transporte escolar gratuito para estudantes da zona urbana, zona rural e da educação superior, e dá outras prôvidencias.', 2, 7, 11, 1),
(101, '115/2013', '2013-09-03', 'Institui a Política Municipal de Atenção Integral a Saúde do homem no município de Ilhéus e dá outras providências.', 2, 14, 8, 1),
(102, '116/2013', '2013-09-03', 'Institui a Semana Municipal da Saúde do Homem no município de Ilhéus e dá outras providências.', 1, 14, 8, 1),
(103, '117/2013', '2013-09-03', 'Altera o Artigo da 1ª Lei 2.860 de 16 de maio de 2000. Acrescenta dispositivo e dá outras providências.', 2, 22, 8, 1),
(104, '119/2013', '2013-09-09', 'Torna obrigatório a afixação nas academias de ginástica, nos centros esportivos e estabelecimentos comerciais de nutrição esportiva e produtos correlatos à atividade física, de carta com advertência sobre as consequências do uso de anabolizantes.', 2, 14, 5, 1),
(105, '120/2013', '2013-09-09', 'Dispõe sobre o impedimento de exercer cargos comissionados na Prefeitura Municipal de Ilhéus , pessoas enquadradas na Lei Complementar nº 135/2010 Ficha Limpa.', 2, 21, 4, 1),
(106, '123/2013', '2013-09-10', 'Altera a Lei Municipal nº 3.476, de 30 de dezembro de 2009 e dá outras providências.', 2, 22, 8, 1),
(107, '131/2013', '2013-09-10', 'Dispõe sobre a qualificação de entidades, como organizações sociais municipais e dá outras providências.', 2, 5, 8, 1),
(108, '132/2013', '2013-09-10', 'Obriga a disponibilização de "fraldário" no interior dos estabelecimentos que específica.', 2, 14, 12, 1),
(109, '124/2013', '2013-09-11', 'Institui a política de qualidade na Gestão Pública do município de Ilhéus e dá outras providências.', 2, 18, 8, 1),
(110, '127/2013', '2013-09-11', 'Estabelece os objetivos e diretrizes para a instituição do serviço de denúncia de violação dos direitos da criança e do adolescente, no âmbito do município de Ilhéus e dá outras providências.', 2, 3, 3, 1),
(111, '128/2013', '2013-09-11', 'Estabelece Diretrizes para a política municipal de incentivo ao desenvolvimento na primeira infância, e dá outras providências.', 2, 14, 3, 1),
(112, '113/2013', '2013-09-17', 'Projeto de Lei n°. 113/2013 Autoriza a abertura de crédito especial ao Orçamento Anual de 2013, na forma que indica e dá outras providências.', 2, 1, NULL, 1),
(113, '129/2013', '2013-09-17', 'Estabelece diretrizes para a política municipal sobre a utilização da língua brasileira de sinais, e dá outras providências.', 2, 9, 3, 1),
(114, '130/2013', '2013-09-17', 'Autoriza a abertura de crédito especial ao Orçamento Anual de 2013, na forma que indica e dá outras providências.', 2, 8, NULL, 1),
(115, '133/2013', '2013-09-17', 'Proíbe a cobrança de ingresso; passaporte; bilhete (ou equivalente) a acompanhante de criança, quando a realização de evento musical, cultural, artístico, circense, esportivo, de parques de diversão (e similares) de conotação infanto-juvenil, diante do município de Ilhéus, e dá outras providências.', 2, 20, 12, 1),
(116, '135/2013', '2013-09-23', 'Institui as diretrizes para o turismo religioso no município de Ilhéus e dá outras providências.', 2, 13, 20, 1),
(117, '118/2013', '2013-09-24', 'Dispõe sobre a implantação do prontuário do eletrônico do paciente, na rede pública de saúde do município de Ilhéus.', 2, 14, 5, 1),
(118, '134/2013', '2013-09-24', 'Institui a Semana Municipal de Doação de Sangue e concede benefícios ao doador voluntário regular de sangue e orgãos no âmbito do município de Ilhéus.', 2, 6, 8, 1),
(119, '137/2013', '2013-09-25', 'Reconhece como utilidade pública a Associação Desportiva de Veteranos da Av. Itabuna, localizada na Av. Itabuna - Centro.', 1, 16, 3, 1),
(120, '015/2013', '2013-10-01', 'Dispõe sobre a acessibilidade escolar para os alunos portadores de deficiência ou mobilidade reduzida, nos estabelecimentos de ensino do município de Ilhéus, e dá outras providências.', 2, 9, 3, 1),
(121, '126/2013', '2013-10-01', 'Garante o acesso das pessoas com deficiência aos espetáculos e obras culturais beneficiados por recursos da lei Municipal de incentivo à cultura, e dá outras providências.', 2, 9, 3, 1),
(122, '139/2013', '2013-10-06', 'Altera a Lei Municipal 3.639 de 20 de dezembro de 2012, e dá outras providências.', 2, 22, NULL, 1),
(123, '140/2013', '2013-10-06', 'Institui o Programa de Educação em tempo integral para os alunos da rede municipal urbana de ensino.', 2, 7, 7, 1),
(124, '141/2013', '2013-10-06', 'Reconhece de Utilidade Pública o Instituto de Reintegração Social Liberdade para Vida.', 1, 16, 20, 1),
(125, '142/2013', '2013-10-06', 'Dispõe sobre a Constituição da Comissão de Estudo, Controle e Ações Prevêntivas contra a Violência Escolar.', 2, 7, 1, 1),
(126, '144/2013', '2013-10-15', 'Dispõe sobre a obrigatoriedade das agências bancárias e estabelecimentos comerciais em manter um exemplar do Estatuto do Idoso para a livre consulta, e dá outras providências.', 2, 9, 3, 1),
(127, '145/2013', '2013-10-15', 'Institui no calendário oficial do município de Ilhéus a "Semana da Família" e dá outras providências.', 1, 6, 3, 1),
(128, '146/2013', '2013-10-15', 'Altera a redação dos artigos 2º e 3º da Lei nº3.655, de 03 de abril de 2013 e dispositivos da Lei 3.454 de 14 de novembro de 2009 na forma que indica e dá outras providências.', 2, 22, NULL, 1),
(129, '147/2013', '2013-10-15', 'Institui novas disposições sobre a política municipal dos Direitos da Criança e do Adolescente, e dá outras providências.', 2, 3, 3, 1),
(130, '148/2013', '2013-10-15', 'Altera a denminação da 2ª Travessa da Rua Nossa Senhora Aparecida, no bairro Novo Ilhéus (Iguape), passando a denominar-se Rua Espírito Santo.', 1, 11, 8, 1),
(131, '149/2013', '2013-10-15', 'Dá denominção ao Largo localizado no bairro Novo Ilhéus (Iguape), (em frente a Igreja Evangélica Redenção em Cristo), denominado Praça Redenção.', 1, 11, 8, 1),
(132, '152/2013', '2013-10-22', 'Determina a fixação da data de fabricação nos veículos das empresas concessionárias do transporte coletivo, no âmbito do município de Ilhéus.', 2, 5, 8, 1),
(133, '153/2013', '2013-10-22', 'Estabelece critérios para contratação de fornecedores na forma de Lei Ficha Limpa, visando proteger a probidade e a moralidade na administração municipal de Ilhéus e dá outras providências.', 2, 21, 8, 1),
(134, '154/2013', '2013-10-22', 'Fica denominada de Praça DR. Aristeu de Oliveira Campos, o largo em torno da Barrakitica e Clínica Médico Center e dá outras providências.', 1, 11, 4, 1),
(135, '155/2013', '2013-10-22', 'Institui a semana municipal de prevenção a diabetes, e dá outras providências.', 1, 6, 4, 1),
(136, '158/2013', '2013-10-23', 'Dispõe sobre a dispensa de parada de ônibus urbanos nos pontos de desembarque no município de Ilhéus após o horário das 22:00 horas.', 2, 5, 15, 1),
(137, '076/2013', '2013-10-29', 'Estabelece Medidas Preventivas e Orientadoras destinadas a inibir qualquer forma de violência contra professores da Rede Pública Municipal de Ensino.', 2, 7, 8, 1),
(138, '157/2013', '2013-10-29', 'Institui o Programa de Incentivo à Regularização Fiscal – REFIS 2013 – do Município de Ilhéus e  dá outras providências.', 2, 8, NULL, 1),
(139, '159/2013', '2013-10-30', 'Dispõe sobre o uso de crachá de identificação que permita a visualização de nome, fato e função dos funcionários que prestão serviços de segurança em casas noturnas, bares, restaurantes e eventos no município de Ilhéus. ', 2, 15, 15, 1),
(140, '160/2013', '2013-10-30', 'Dá nova denominação a praça Angela Sousa, situada entre os caminhos 34 e 35 do bairro Hernani Lopes de Sá, que passará denominar-se vereador José Fernandes de Araújo.', 1, 11, 14, 1),
(141, '028/2013', '2013-11-05', 'Institui a Semana Municipal da Capoeira, e dá outras providências.', 1, 6, 9, 1),
(142, '088/2013', '2013-11-05', 'Dispõe sobre a implantação de Sistema de Videomonitoramento em todas as agências lotéricas e postos dos Correios e dá outras providências.', 2, 15, 9, 1),
(143, '162/2013', '2013-11-05', 'Dispõe sobre o funcionamento de equipamentos de som automotivo nos logradouros públicos, no âmbito do município de Ilhéus.', 2, 5, 1, 1),
(144, '164/2013', '2013-11-05', 'Dispõe sobre a construção de ciclovias nas novas avenidas a serem implantadas no âmbito do município de Ilhéus, e dá outras providências.', 2, 5, 8, 1),
(145, '165/2013', '2013-11-05', 'Dispõe sobre a criação do Dia do Skate em Ilhéus e dá outras providências.', 1, 6, 3, 1),
(146, '166/2013', '2013-11-05', 'Cria Lei que dispõe sobre a proibição do ingresso ou permanência de pessoas utilizando capacete ou qualquer tipo de cobertura que oculte a face em repartições públicas e nos estabelecimentos comerciais públicos ou privados no município de Ilhéus.', 2, 15, 20, 1),
(147, '167/2013', '2013-11-05', 'Obriga a relaização do exame de emissões otoacusticas evocadas "Teste da Orelhinha", nas crianças nascidas em todos os hospitais ou maternidades da rede pública ou conveniadas no município de Ilhéus e dá outras providências.', 2, 14, 5, 1),
(148, '168/2013', '2013-11-05', 'Institui o programa IPTU Verde no município de Ilhéus.', 2, 8, 5, 1),
(149, '156/2013', '2013-11-12', 'Dispõe sobre a instituição do Conselho Municipal de Desenvolvimento Rural e Pesqueiro Sustentável- CMDRPS de Ilhéus, e dá outras providências.', 2, 2, NULL, 1),
(150, '161/2013', '2013-12-03', 'Reconhece de Utilidade Pública a Associação Palotina - Centro Social Cri ´art., e dá outras providências.', 1, 16, 18, 1),
(151, '169/2013', '2013-12-03', 'Dispõe sobre a gratuidade para oficiais de justiça e comissionários de menores nos transportes coletivos submetidos ao controle do município de Ilhéus.', 2, 5, 5, 1),
(152, '170/2013', '2013-12-03', 'Dispõe sobre a restrição do uso de telefone móvel no interior das agências bancárias e similares no município de Ilhéus, na forma que específica e da outras providências.', 2, 15, 20, 1),
(153, '171/2013', '2013-12-03', 'Institui o Programa "A Praça é Nossa - Artesanato"', 2, 10, 1, 1),
(154, '172/2013', '2013-12-03', 'Autoriza o chefe do Poder Executivo Municipal a Conceder Isenção de IPTU, imposto sobre a propriedade e territorial urbana aos imóveis locados ao município de Ilhéus, e dá outras providências.', 2, 8, 5, 1),
(155, '173/2013', '2013-12-03', 'Institui a consulta popular anual no âmbito do município de Ilhéus e estabelece normas sobre aplicação dos recursos das receitas do imposto sobre a propriedade territorial urbana -IPTU, e dá outras providências.', 2, 8, 5, 1),
(156, '174/2013', '2013-12-03', 'Institui o Plano de Prevenção da Obesidade Infantil na Rede Municipal de Educação, e dá outras prôvidencias.', 2, 7, 5, 1),
(157, '176/2013', '2013-12-10', 'Institui o Programa de Valorização de Iniciativas Culturais no Âmbito da Secretaria Municipal de Cultura.', 2, 20, 1, 1),
(158, '177/2013', '2013-12-10', 'Cria Conselhos Escolares nas unidades de ensino da Rede Municipal de Ilhéus e extingue os colegiados anteriormente denominados Colegiado Escolar e Caixa Escolar.', 2, 4, NULL, 1),
(159, '178/2013', '2013-12-10', 'Altera as alíneas 7.1 e 7.2 da Lei nº 3.477 de 30 de dezembro de 2009 e a tabela demonstrativa do anexo único da Lei nº 3.254 de 19 de setembro de 2009, que estrutura o Plano de Cargos e Salários do Poder Legislativo do Município de Ilhéus.', 2, 22, NULL, 1),
(160, '179/2013', '2013-12-11', 'Institui e inclui "o Dia do ombreiro universal" no calendário oficial do município de Ilhéus.', 1, 6, 8, 1),
(161, '150/2013', '2013-12-15', 'Altera a denominação da Rua do Meio no bairro Novo Ilhéus (Iguape), passando a denominar-se  Rua Bom Pastor.', 1, 11, 8, 1),
(162, '051/2013', '2013-12-17', 'Concede título de cidadão ilheense ao ministro Marcelo Crivela, e dá outras providências.', 1, 25, 8, 1),
(163, '052/2013', '2013-12-17', 'Concede título de cidadão ilheense ao ex-vereador Joabe Sousa Ribeiro, e dá outras providências.', 1, 25, 8, 1),
(164, '175/2013', '2013-12-17', 'Autoriza o Poder Executivo a firmar parcelamento de dívidas oriundas de contribuições devidas ao Fundo de Garantia por Tempo de Serviços; Contribuições Sociais instituídas pela Lei Complementar 110/2001; Procuradoria Geral da Fazenda Nacional de débitos relativos a dívidas oriundas de contribuições do PASEP e multas previstas no Decreto-Lei 5.452, de 1º de maio de 1943. ', 2, 21, NULL, 1),
(165, '180/2013', '2013-12-17', 'Dispõe dobre o peso a ser transportado pelo estudante em mochila ou similares.', 2, 7, 11, 1),
(166, '181/2013', '2013-12-17', 'Isntitui o Programa de Conscientização e Orientação sobre Sindrome de Down, e fixa outras providências.', 2, 9, 8, 1),
(167, '182/2013', '2013-12-17', 'Cria o Programa "Pequeno Agricultor" nas escolas, localizadas na zona rural no âmbito do município de Ilhéus.', 2, 7, 8, 1),
(168, '183/2013', '2013-12-17', 'Institui o Programa Municipal de Agricultura Urbana, que consiste no cultivo de hortaliças, frutas e outros alimentos, plantas medicinais, ornamentais e para produção de mudas, mediante o aproveitamento de terrenos dominiais ociosos do município e de terrenos particulares ociosos cedidos temporariamente por seus proprietários.', 2, 2, 8, 1),
(169, '121/2013', '2013-12-18', 'Estima a Receita e fixa a Despesa do Orçamento Anual do Município de Ilhéus para o exercício financeiro de 2014, e determina outras providências.  ', 2, 8, NULL, 1),
(170, '122/2013', '2013-12-18', 'Dispõe sobre o Plano Plurianual – PPA do Município para o período 2014/2017, na forma que indica.', 2, 22, NULL, 1),
(171, '001/2014', '2014-04-15', 'Dispõe sobre a criação e implantação dos Grêmios Estudantis nas Escolas de Ensino Fundamental da Rede Pública de Ensino do município de Ilhéus.', 2, 7, 8, 1),
(172, '002/2014', '2014-04-15', 'Dispõe sobre a Instituição do Conselho Municipal de Transparência e combate à corrupção para atuação no âmbito do controle externo da atividade pública no município de Ilhéus.', 2, 4, 8, 1),
(173, '003/2014', '2014-04-15', 'Dispõe sobre a criação do serviço social nas escolas da rede municipal de ensino fundamental e educação infantil de Ilhéus.', 2, 7, 8, 1),
(174, '004/2014', '2014-04-15', 'Dispõe sobre a instituição do IPTU Acessibilidade; no âmbito do munícipio de Ilhéus e fixa outras providências.', 2, 8, 8, 1),
(175, '005/2014', '2014-04-15', 'Dispõe sobre a instituição de Abono para pais que compareçãm em atividades escolares previstas no calendário escolar no âmbito do município de Ilhéus.', 2, 7, 8, 1),
(176, '006/2014', '2014-04-15', 'Dispõe sobre a instituição da área de segurança escolar no âmbito do município de Ilhéus.', 2, 15, 8, 1),
(177, '007/2014', '2014-04-15', 'Dispõe sobre a criação do fundo de combate e erradicação da pobreza no âmbito do município de Ilhéus.', 2, 3, 8, 1),
(178, '008/2014', '2014-04-15', 'Institui medidas para agilizar a localização de pessoas desaparecidas no âmbito do município de Ilhéus.', 2, 15, 8, 1),
(179, '009/2014', '2014-04-15', 'Institui o programa municipal de reabilitação: inclusão e reinserção social de departamento químicos e cria o fundo municipal de recuperação e reinserção social e fixa outras providências.', 2, 14, 8, 1),
(180, '010/2014', '2014-04-15', 'Dispõe sobre a padronização dos passeios públicos do município de Ilhéus.', 2, 5, 8, 1),
(181, '011/2014', '2014-04-15', 'Dispõe sobre a obrigatoriedade dos estabelecimentos comerciais; hotéis; móteis; casas noturnas e similares a anexar um aviso em local visível sobre os crimes praticados contra crianças e adolescentes e suas penas, e dá outras providências.', 2, 15, 17, 1),
(182, '012/2014', '2014-04-15', 'Torna obrigatório a informação do quadro clínico dos pacientes duas vezes ao dia pelos assistentes sociais dos hospitais que tenham a unidade de terapia intensiva (UTI), e da outras providências.', 2, 14, 17, 1),
(183, '013/2014', '2014-04-15', 'Institui a semana municipal da juventude no âmbito do município de Ilhéus e fixa outras providências.', 1, 6, 8, 1),
(184, '014/2014', '2014-04-15', 'Institui no âmbito do município de Ilhéus, adaptação de banheiros públicos e de fácil acesso para pessoas com necessidades especiais e da outras providências.', 2, 9, 14, 1),
(185, '015/2014', '2014-04-15', 'Institui no município de Ilhéus, serviços de taxi para portadores de necessidades especiais e da outras providências.', 2, 9, 14, 1),
(186, '016/2014', '2014-04-15', 'Torna-se obrigatório no município de Ilhéus, os estabelecimentos comerciais que explorem atividades de bares; restaurantes; lanchonetes; salões de eventos e congêneres, com área igual ou superior a 250 m² (duzentos e cinquenta metros quadrados), a adaptar ou construir no mínimo, um banheiro para o uso de pessoas portadoras de deficiência física, e da outras providências.', 2, 9, 3, 1),
(187, '017/2014', '2014-04-15', 'Dispõe sobre a criação do "Grupo de atendimento emergencial para animais silvestres de vida livre - GAEAS", no município de Ilhéus e da outras providências.', 2, 23, 3, 1),
(188, '018/2014', '2014-04-15', 'Institui o hospital geral do idoso no município de Ilhéus, e da outras providências.', 2, 14, 3, 1),
(189, '019/2014', '2014-04-15', 'Dispõe sobre a implantação no município de Ilhéus, o sistema de acessibilidade as praias, com a construção de rampas de acesso para cadeirantes, colocação de cadeiras anfíbias nos postos de salvamento e monitores que auxiliem os deficientes físicos e as pessoas com mobilidades reduzida no deslocamento na faixa de areia e no acesso ao mar, e da outras providências.', 2, 9, 3, 1),
(190, '020/2014', '2014-04-15', 'Reconhece de utilidade pública a Associação dos Pequenos Agricultores, Empresários e Residentes na Pretensa área atingida pela demarcação de terra indígena de Ilhéus, Uma e Buerarema, e da outras providências.', 1, 16, 4, 1),
(191, '021/2014', '2014-04-15', 'Dispõe sobre a isenção na cobrança de taxa de inscrição em concurso público no âmbito do município de Ilhéus, e da outras providências.', 2, 3, 5, 1),
(192, '022/2014', '2014-04-15', 'Institui e inclui no calendário oficial do município de Ilhéus o "Dia Municipal da Fibromialgia", a ser comemorado anualmente no dia 12 de maio.', 1, 6, 5, 1),
(193, '023/2014', '2014-04-15', 'Institui o programa de coleta de lixo seletiva nas escolas da rede municipal de ensino.', 2, 23, 5, 1),
(194, '024/2014', '2014-04-15', 'Determina que todas as consultas médicas e exames de saúde da rede pública sejam realizados no prazo máximo de 15 (quinze) dias, quando o paciente tiver idade igual ou superior a 60 (sessenta) anos de idade e da outras providências.', 2, 14, 3, 1),
(195, '025/2014', '2014-04-15', 'Institui o dia mundial de conscientização da violência contra os idosos no município de Ilhéus e da outras providências.', 1, 6, 3, 1),
(196, '026/2014', '2014-04-15', 'Institui o programa social centro dia do idoso e da outras providências. ', 2, 9, 3, 1),
(197, '027/2014', '2014-04-15', 'Dispõe dobre o estabelecimento de cotas raciais para o ingresso no serviço público municipal em cargos efetivos e comissionados, no âmbito do município de Ilhéus.', 2, 9, 8, 1),
(198, '028/2014', '2014-04-15', 'Institui no âmbito do município de Ilhéus, o "Dia do Mestiço", reconhecido como grupo étnico-racial-cultural, na forma que específica e da outras providências.', 1, 6, 4, 1),
(199, '029/2014', '2014-04-15', 'Institui o programa "Adote um Ponto de Ônibus" e determina providências conexas.', 2, 5, 1, 1),
(200, '030/2014', '2014-04-15', 'Dispõe sobre as agências e postos de serviços bancários localizados no âmbito do município de ilhéus a instalarem divisórias individuais entre os caixas e o espaço reservado para clientes que aguardam atendimento.', 2, 10, 8, 1),
(201, '031/2014', '2014-04-15', 'Dispõe sobre a política de mobilidade e acessibilidade de pessoas portadoras de deficiência em conformidade com a Lei Federal 10.098/2000 e o decreto federal 5.296/2004, e da outras providências.', 2, 9, 4, 1),
(202, '032/2014', '2014-04-15', 'Dispõe sobre a criação do memorial esportivo do município de Ilhéus e da outras providências.', 2, 19, 3, 1),
(203, '033/2014', '2014-04-15', 'Dispõe sobre a obrigatoriedade da divulgação prévia através dos principais meios de comunicação do município de Ilhéus do cardápio de merenda escolar, pelo governo municipal.', 2, 7, 1, 1),
(204, '034/2014', '2014-04-15', 'Institui sobre o programa de valorização de iniciativas culturais no âmbito da secretaria municipal de cultura, com a finalidade de apoiar prioritariamente, por meio de subsídio financeiro e suporte logístico, atividades artistico-culturais de jovens e/ou adultos de baixa renda e associações sem fins lucrativos da cidade de Ilhéus, bem como de regiões deste município, desprovidas de recursos e equipamentos culturais.', 2, 7, 1, 1),
(205, '035/2014', '2014-04-15', 'Dispõe sobre a arrecadação do imóvel abandonado e da outras providências.', 2, 8, 13, 1),
(206, '036/2014', '2014-04-15', 'Institui o sistema municipal de atendimento socio educativonas modalidades de medidas socioeducativas de liberdade assistida e de prestação de serviços à comunidade, destinado a adolescentes em conflito com a lei no município de Ilhéus.', 2, 15, 8, 1),
(207, '037/2014', '2014-04-15', 'Cria o projeto "Teatro na Escola" na rede pública de ensino do município de Ilhéus.', 2, 7, 1, 1),
(208, '038/2014', '2014-04-15', 'Dispõe sobre a obrigatoriedade da implantação de coletores de chorume em caminhões de lixo no âmbito do município de Ilhéus.', 2, 23, 1, 1),
(209, '039/2014', '2014-04-15', 'Institui no âmbito do município de Ilhéus a colocação de banheiros químicos adaptados em shows e eventos públicos ou particulares, para pessoas com necessidades especiais e da outras providências.', 2, 9, 14, 1),
(210, '040/2014', '2014-04-15', 'Da o nome da Rua L, no loteamento Santo Antônio de Pádua, do bairro Hernani-Sá, antiga Faelba, em frente ao CAIC e da outras providências.', 1, 11, 3, 1),
(211, '041/2014', '2014-04-15', 'Dispõe sobre a obrigatoriedade da instalação de coletores de chorume nos caminhões de lixo que transitam por vias do município de Ilhéus e da outras providências.', 2, 23, 4, 1),
(212, '042/2014', '2014-07-29', 'Dispõe sobre as normas do serviço de distribuição e coleta de malotes de valores e bens patrimoniais efetuados por carro forte nos estabelecimentos financeiros e correspondente: casas lotéricas; centros comerciais; supermercados e outras atividades afins e da outras providências.', 2, 15, 4, 1),
(213, '043/2014', '2014-07-29', 'Insititui no âmbito do município de Ilhéus, o projeto "Vovô Sabe Tudo", programa de aproveitamento e valorização de idosos para fins educacionais, culturais e sociais nas condições que específica e da outras providências.', 2, 9, 8, 1),
(214, '044/2014', '2014-07-29', 'Dispõe sobre a indicação de emenda orçamentária parlamentar em placas de obras públicas municipais.', 2, 5, 8, 1),
(215, '045/2014', '2014-07-29', 'Dispõe sobre a obrigatoriedade dos operadores do serviço de transporte público coletivo do município de Ilhéus, de disponibilizarem em meio de fácil acesso ao público seus comprovantes de custos com o sistema.', 2, 5, 8, 1),
(216, '046/2014', '2014-07-29', 'Dispõe sobre a obrigatoriedade de atendimento pela rede pública municipal de saúde de todo e qualquer municípe, independentemente do local em que resida, e da outras providências.', 2, 14, 8, 1),
(217, '047/2014', '2014-07-29', 'Dispõe sobre as diretrizes orçamentárias para o exercício de 2015 e da outras providências.', 2, 8, NULL, 1),
(218, '048/2014', '2014-07-29', 'Dispõe sobre a organização do sistema municipal de defesa do consumidor - Procon, o Conselho Municipal de proteção e defesa do consumidor - Condecon, e institui o fundo municipal de proteção e defesa do consumidor - FMPDC, e da outras providências.', 2, 4, 17, 1),
(219, '049/2014', '2014-07-29', 'Nomeia a quadra de areia situada no caminho 41 e 42, bairro Hernani Sá, de quadra Arnaldo da Silva Bezerra (Coco), e da outras providências.', 1, 11, 17, 1),
(220, '050/2014', '2014-07-29', 'Institui no calendário oficial de eventos do município de Ilhéus, a ser comemorado na terceira semana do mês de Abril, a semana municipal do Aleluia Ilhéus Festival, e da outras providências.', 1, 6, 3, 1),
(221, '051/2014', '2014-07-29', 'DA nova denominação as escolas nucleadas de Inema I, para escola municipal José Antonio de Brito e da outras providências.', 1, 7, 19, 1),
(222, '052/2014', '2014-07-29', 'Da nova denominação as escolas nucleadas de Inema II para escola municipal Doralice de Oliveira Braga e da outras providências.', 1, 7, 19, 1),
(223, '053/2014', '2014-07-29', 'Dispõe sobre a obrigatoriedade do profissional de psicologia e serviço social nas escolas do municípil de Ilhéus e da outras providências.', 2, 7, 3, 1),
(224, '054/2014', '2014-07-29', 'Dispõe sobre a afixação de aviso nas unidades de saúde informando o direito do Pai, da Mãe ou do responsável, de permanecer com seu filho em caso de internação hospitalar, conforme preconiza o estatuto da criança e do adolescente.', 2, 14, 5, 1),
(225, '055/2014', '2014-07-29', 'Dispõe sobre a vistoria técnica periódica em conjuntos habitacionais de baixa renda no município de Ilhéus e dá outras providências.', 2, 15, 1, 1),
(226, '056/2014', '2014-07-29', 'Dispõe dobre o estabelecimento de cotas raciais para ingresso de negros e afrodescendentes em cargos no serviço público municipal.', 2, 9, 1, 1),
(227, '057/2014', '2014-07-29', 'Revoga a Lei 3.265 de 29 de novembro de 2006, que institui plano diretor participativo do município de Ilhéus.', 2, 12, 8, 1),
(228, '058/2014', '2014-07-29', 'Institui no município de Ilhéus o uso de equipamento de proteção individual por parte dos garis e dá outras providências.', 2, 5, 4, 1),
(229, '060/2014', '2014-07-29', 'Dispõe sobre a obrigatoriedade da caracterização e segregação dos resíduos dos serviços de saúde, conhecido como lixo hospitalar, no âmbito do município de Ilhéus e dá outras providências.', 2, 23, 4, 1),
(230, '061/2014', '2014-07-29', 'Dá nova denominação à Av. Ubaitaba, a partir do referencial posto carioca, até o início da Av. Proclamação, passando a se chamar Av. Francisco Antônio Pinto Lucas, conhecido por todos como Chico Lucas e dá outras providências.', 1, 11, NULL, 1),
(231, '062/2014', '2014-07-29', 'Dispõe sobre a regulamentação e circulação dos veículos autorizados do transporte escolar e/ou educandários no território municipal.', 2, 7, 1, 1),
(232, '063/2014', '2014-07-29', 'Dispõe sobre a obrigatoriedade dos centros de longa permanência para idosos e congêneres em locais de acolhimento públicos e privados instalados nonâmbito do município de Ilhéus, ficam obrigados a instalarem sistemas de gravação por câmeras de vídeo e dá outras providências.', 2, 9, 8, 1),
(233, '064/2014', '2014-07-29', 'Dispõe sobre a nova denominação ao "Largo" que fica no final da Av. Sylvio Alves Silva (entorno do bar do mineiro, no bairro Hernane Sá) passando a ser identificado por medida de Lei, de Praça Benito Fernandez Meirinho e dá outras providências.', 1, 11, 4, 1),
(234, '065/2014', '2014-07-29', 'Altera o nome da Av. Paulo Souto para Av. Gomeira no bairro Teôtonio Vilela e dá outras providências.', 1, 11, 20, 1),
(235, '066/2014', '2014-07-29', 'Dispõe sobre a realização de coleta de amostras das águas de reservatórios das escolas, creches e unidades de saúde do município de Ilhéus para análise e dá outras providências.', 2, 24, 4, 1),
(236, '067/2014', '2014-07-29', 'Dispõe sobre a remessa de telegramas dos candidatos aprovados em concurso público do município e dá outras providências.', 2, 22, 11, 1),
(237, '068/2014', '2014-07-29', 'Altera a denominação do nome da rua Diaconisa Goes, no bairro São Francisco, que passará a chamar-se Rua Israel Nunes.', 1, 11, 2, 1),
(238, '069/2014', '2014-07-29', 'Dá denominação de Plenário Ponciano de Novais Miranda ou Plenário Manoel Carlos Amorim de Almeida ou Plenário Demonsthenes Berbet de Castro à sala das sessões da Câmara Municipal de Ilhéus.', 1, 11, 1, 1),
(239, '070/2014', '2014-07-29', 'Institui o Plano Municipal para a humanização do Parto às gestantes menores de idade no âmbito do sistema público de saúde de Ilhéus e dá outras providências.', 2, 14, 1, 1),
(240, '071/2014', '2014-07-29', 'Institui o Jornal Oficial Eletrônico do poder Legislativo do município de Ilhéus e dá outras providências.', 2, 22, 5, 1),
(241, '072/2014', '2014-07-29', 'Dispõe sobre a instalação de câmeras de monitoramento de segurança nas escolas públicas municipais e cercanias no município de Ilhéus.', 2, 15, 5, 1),
(242, '073/2014', '2014-07-29', 'Cria o Programa Empresa Amiga da Educação no âmbito do município de Ilhéus.', 2, 7, 1, 1),
(243, '074/2014', '2014-07-29', 'Cria o Programa Educacional para a conservação da água.', 2, 23, 1, 1),
(244, '075/2014', '2014-07-29', 'Cria os prêmios literários na cidade de Ilhéus e institui o valor dos mesmos.', 2, 20, 1, 1),
(245, '076/2014', '2014-07-29', 'Estima a receita e fixa a despesa do orçamento anual do município de Ilhéus para o exercício financeiro de 2015, e determina outras providências.', 2, 8, NULL, 1),
(246, '077/2014', '2014-07-29', 'Institui o programa anual para análise, avaliação, diagnósticos e recuperação das estruturas prediais em imóveis ocupados por escolas da rede pública municipal.', 2, 7, 1, 1),
(247, '078/2014', '2014-07-29', 'Dispõe sobre a criação no município de Ilhéus, o museu do chocolate e dá outras providências.', 2, 20, 3, 1),
(248, '079/2014', '2014-07-29', 'Dá nova denominação a única travessa que fica na Radialista Edvaldo Tabajara, no bairro da Tapera, passando a se chamar Travessa da Rua Radialista Evaldo Tabajara e dá outras providências.', 1, 11, 3, 1),
(249, '080/2014', '2014-07-29', 'Torna-se facultativo, no município de Ilhéus, servir em todas as repartições públicas o chocolate nativo e dá outras providências.', 2, 2, 3, 1),
(250, '081 A/2014', '2014-07-29', 'Altera a Lei nº 2.628 de 24 de novembro de 1997, que estrutura o Conselho Municipal de Educação, suprimindo o parágrafo 4º do artigo 2º  e dá outras providências ', 2, 4, 7, 1),
(251, '081/2014', '2014-07-29', 'Reconhece como utilidade pública municipal a Associação de Moradores Ambientais Mar Azul e dá outras providências.', 1, 16, 19, 1),
(252, '082/2014', '2014-07-29', 'Cria no município de Ilhéus, postos permanentes de descartes de medicamentos vencidos e dá outras providências.', 2, 14, 19, 1),
(253, '083/2014', '2014-07-29', 'Reconhece de utilidade de pública municipal a Associação Nós Seremos Vocês Amanhã e dá outras providências.', 1, 16, 19, 1),
(254, '084/2014', '2014-07-29', 'Dispõe sobre a implantação de dispositivo chamado "Boca de Lobo Inteligente" nos logradouros do município de Ilhéus e dá outras providências.', 2, 24, 13, 1),
(255, '085/2014', '2014-07-29', 'Dispõe sobre a aquisição pelo município de Ilhéus, de produtos contendo o mineral amianto e dá outras providências.', 2, 14, 1, 1),
(256, '086/2014', '2014-07-29', 'Dispõe sobre a instalação obrigatória de "Sinalização Luminosa Piscante" indicando a existência de radares nas ruas e avenidas do município de Ilhéus e dá outras providências.', 2, 5, 1, 1),
(257, '087/2014', '2014-07-29', 'Institui o código tributário e de rendas do município de Ilhéus e dá outras providências.', 2, 8, NULL, 1),
(258, '088/2014', '2014-07-29', 'Institui a Nova Planta Genérica de Valores (PGV), fixa valores unitários padrão de terrenos (VUPT) e de construções (VUPC), para efeito de avaliação de unidade imobiliaria e lançamento do imposto sobre a propriedade predial e territorial urbana (IPTU), a partir de 2015 e dá outras providências.', 2, 8, NULL, 1),
(259, '089/2014', '2014-07-29', 'Autoriza o Poder Executivo a contratar operação de crédito junto a Caixa Econômica Federal, na qualidade de Agente Financeiro a oferecer garantias e dá outras providências.', 2, 8, NULL, 1),
(260, '090/2014', '2014-07-29', 'Dispõe sobre a criação do Programa Empresa Amiga no âmbito do município de Ilhéus e dá outras providências.', 2, 10, 1, 1),
(261, '091/2014', '2014-07-29', 'Reconhece de utilidade pública a Igreja Evangélica Assembléia de Deus Campo Branco da Vitória.', 1, 16, 8, 1);
INSERT INTO `lei` (`pk`, `identificador`, `data`, `descricao`, `fk_impacto`, `fk_tema`, `fk_vereador`, `fk_lei_tipo`) VALUES
(262, '092/2014', '2014-07-29', 'Dispõe sobre a regulamentação dos veículos ciclomotores de até 50cc, conhecida como "Cinquentinha" e os procedimentos para o cadastro, registro e licenciamento no município de Ilhéus, de acordo com os artigos 24, XVII e 129 da Lei Federal nº 9.503 de 23 de setembro de 1997 (código de trânsito brasileiro) e institui taxas e dispõe sobre as atribuições da autoridade de trânsito municipal e dá outras providências.', 2, 5, 4, 1),
(263, '093/2014', '2014-07-29', 'Altera as alíneas 1.1, 5.0 e 6.0, tabela demonstrativa do anexo único da lei nº 3.254 de 19 de setembro de 2006, que estrutura o plano de cargos e salários do poder legislativo do município de Ilhéus.', 2, 22, NULL, 1),
(264, '095/2014', '2014-07-29', 'Reconhece de utilidade pública Associação do Reencontro Consigo e dá outras providências.', 1, 16, 3, 1),
(265, '096/2014', '2014-07-29', 'Reconhece de utilidade pública Atalaia Comunidade Terapêutica Centro de Recuperação e Casa de Passagem e dá outras providências.', 1, 16, 3, 1),
(266, '125/2013', '2014-09-11', 'Dispõe sobre a obrigatoriedade na concessão pelo poder executivo municipal de Kit de Higiene Bucal nas escolas públicas municipais e dá outras providências.', 2, 7, 8, 1),
(267, '1', '2015-12-31', 'Altera os Artigos 1º e 2º da Lei Complementar nº 001/2001 de 07 de junho de 2001', 2, 8, NULL, 1),
(268, '2', '2015-12-31', 'Autoriza o remanejamento de ações integrantes da LOA vigente na forma que indica e dá outras providências', 2, 8, NULL, 1),
(269, '3', '2015-12-31', 'Torna obrigatório no âmbito do município a existência de desfibrilador externo automático (DEA) nos locais onde hajam aglomerado de pessoas', 2, 14, 16, 1),
(270, '4', '2015-12-31', 'Autoriza o municipio celebrar convênios com o Ministério da Saúde para o combate a endemias de dengue', 2, 14, 16, 1),
(271, '6', '2015-12-31', 'Reconhece como Utilidade Pública Municipal a Associação Núcleo Cultural Comunitário da Tibina e Aderno (NCT) e dá outras providências', 1, 16, 19, 1),
(272, '7', '2015-12-31', 'Dispõe sobre a atuação dos nutricionistas nos estabelecimentos que forneçam alimentação pronta para o consumo humano e dá outras providências', 2, 14, 3, 1),
(273, '8', '2015-12-31', 'Altera dispositivos da Lei nº 3.723 de 26 de dezembro de 2014 que institui o Código Tributário Municipal e da Lei nº 3.724 de 26 de dezembro de 2014 que institui a planta genérica de valores e dá outras providências', 2, 8, NULL, 1),
(274, '9', '2015-12-31', 'Dispõe sobre a estrutura organizacional da Prefeitura Municipal de Ilhéus', 2, 1, NULL, 1),
(275, '10', '2015-12-31', 'Fica instituido o transporte escolar gratuito para estudante da Zona Rural e da Educação superior e dá outras providências', 2, 7, 11, 1),
(276, '11', '2015-12-31', 'Estabelece isenção fiscal aos adquirentes de unidades imobiliárias em área de interesse social para fins de habitação ou cuja transmitente seja a habitação e urbanização (URBIS) e dá outras providências', 2, 8, 8, 1),
(277, '12', '2015-12-31', 'Reconhece como Utilidade Pública Minicipal a Associação dos deficientes Físicos de Ilhéus - ADEFI - ', 1, 16, 8, 1),
(278, '13', '2015-12-31', 'Institui o Dia Municipal do Samba todo dia 2 de dezembro e dá outras providências', 1, 6, 12, 1),
(279, '14', '2015-12-31', 'Reconhece de Utilidade Pública a Igreja Filadélfia', 1, 16, 9, 1),
(280, '15', '2015-12-31', 'Institui reserva de vaga para egressos e detentos em cumprimento de pena aberta ou semi aberta nos contratos firmados com administração pública municipal nos termos que especifica e dá outras providências', 2, 17, 11, 1),
(281, '16', '2015-12-31', 'Institui grade curricular do ensino público de Ilhéus a matéria saúde bucal e dá outras providências', 2, 7, 12, 1),
(282, '17', '2015-12-31', 'Dispõe sobre a instalação de pontos de energia elétrica em locais estratégicos de paradas de ônibus e demais dependências atinentes ao transporte público municipal e dá outras providências', 2, 5, 4, 1),
(283, '18', '2015-12-31', 'Dispõe sobre as diretrizes Orçamentárias para o exercício de 2016 e dá outras providências', 2, 8, NULL, 1),
(284, '20', '2015-12-31', 'Altera o Art. 126 da Lei nº 3.723 de dezembro de 2014', 2, 1, 3, 1),
(285, '21', '2015-12-31', 'Dá nome a Unidade de Saúde do Distrito de Inema como Unidade de Saúde Ana Fontes Batista e dá outras providências', 1, 14, 19, 1),
(286, '22', '2015-12-31', 'Dispõe sobre a publicidade dos valores arrecadados com multas de trânsito em bomo a aplicação desses recursos no âmbito do município', 2, 5, 5, 1),
(287, '23', '2015-12-31', 'Dispõe sobre a criação da Semana Municipal de Prevenção ao Alccolismo no município de Ilhéus e dá outras providências', 1, 6, 5, 1),
(288, '24', '2015-12-31', 'Dispõe sobre a gratuidade para agentes penitenciários nos transportes coletivos ao controle do município de Ilhéus', 2, 5, 5, 1),
(289, '25', '2015-12-31', 'Reconhece de Utilidade Pública a Associação Cultural Amigos de Morfeu - ACAM - ', 1, 16, 5, 1),
(290, '26', '2015-12-31', 'Dispõe sobre a implantação de Programa de Assistência Odontológica aos alunos das escolas públicas de Ilhéus', 2, 14, 11, 1),
(291, '27', '2015-12-31', 'Dispõe sobre a implantação de sistema antiapagão nos semáforos no âmbito do município de Ilhéus e dá outras providências', 2, 5, 4, 1),
(292, '28', '2015-12-31', 'Dispõe sobre o estabelecimento de normas de proteção à saúde e de respeito à dignidade de obesos, gestantes e pessoas com necessidades especiais na condição de consumidores em supermercados , hipermercados, lojas de conviniências, praças de alimentação e estabelecimento assemelhados no âmbito do município de Ilhéus e dá outras providências', 2, 14, 8, 1),
(293, '29', '2015-12-31', 'Dispõe sobre a contratação de população de rua pelas empresas vencedoras de licitação pública no município de Ilhéus e dá outras providências', 2, 3, 4, 1),
(294, '30', '2015-12-31', 'Institui o reconhecimento de carater educacional e formativo da Capoeira e suas manifestações culturais e esportivas e permite a celebração de parcerias para o ensino nos estabelecimentos de ensino fundamental e médio públicos e privados', 2, 20, 11, 1),
(295, '31', '2015-12-31', 'Dispõe sobre a proibição de inauguração de obras públicas incompletas no município de Ilhéus', 2, 21, 9, 1),
(296, '32', '2015-12-31', 'Dispõe sobre a aquisição de ingressos com desconto de 50% em qualquer tipo de evento a doadores de sangue  e dá outras providências', 2, 14, 9, 1),
(297, '33', '2015-12-31', 'Reconhece de Utilidade Pública a Igreja Assembléia de Deus é Fial', 1, 16, 20, 1),
(298, '34', '2015-12-31', 'Reconhece de Utilidade Pública a Associação Cultural Tribo Bahia Unida', 1, 16, 9, 1),
(299, '35', '2015-12-31', 'Dispõe sobre loteamento urbano fechado, condomínio horizontal fechado, responsabilidade do incorporador e loteatdor, concessão de uso  e dá outras providências', 2, 5, NULL, 1),
(300, '36', '2015-12-31', 'Dispõe sobre uso e ocupação do solo no município de Ilhéus, a outorga onerosa do direito de construir,  da regularização de obras de construção executadas em desacordo com a legislação urbanística e edílica vigente e da regularização em regime especial das construções existentes antes da publicação da presente Lei na forma e nas condições que menciona', 2, 12, NULL, 1),
(301, '37', '2015-12-31', 'Dispõe sobre a proibição de cobrança de taxa de esgoto, em conjuntos habitacionais criados através de Programas dos governos federais e estadual no âmbito do município', 2, 23, 8, 1),
(302, '38', '2015-12-31', 'Institui a obrigatoriedade de cursos de capacitação para garçons, atendentes, caixas e gerentes de bares, restaurantes, hotéis, boites e outros estabelecimentos no âmbito do município de Ilhéus  e dá outras providências', 2, 26, 17, 1),
(303, '39', '2015-12-31', 'Institui no município de Ilhéus o programa "Alerta Juventude" em todas as escolas do município  e dá outras providências', 2, 7, 17, 1),
(304, '40', '2015-12-31', 'Institui o Programa de valorização dos profissionais que atuam na limpeza urbana do município de Ilhéus  e dá outras providências', 2, 23, 12, 1),
(305, '41', '2015-12-31', 'Cria o Dia da Consciência Negra em Ilhéus  e dá outras providências', 1, 6, 12, 1),
(306, '42', '2015-12-31', 'Declara a imagem da sereia na praia do Marciano da cidade de Ilhéus como patrimônio histórico e cultural', 2, 20, 12, 1),
(307, '43', '2015-12-31', 'Declara as feiras livres da cidade de Ilhéus como patrimônio cultural imaterial  e dá outras providências', 2, 20, 12, 1),
(308, '44', '2015-12-31', 'Declara a área da Praia como espaço cultural para terreiros de candomblé da cidade de Ilhéus', 2, 20, 12, 1),
(309, '45', '2015-12-31', 'Cria novo Conselho Municipal de Trânsito e Transportes da Cidade de Ilhéus - COMUTRAN -  e dá outras providências', 2, 5, NULL, 1),
(310, '46', '2015-12-31', 'Altera o dispositovo do Código Ambiental do Município de Ilhéus  e dá outras providências', 2, 23, NULL, 1),
(311, '47', '2015-12-31', 'Dispõe sobre implantação e gerenciamento do sistema de estacionamento rotativo pago - Zona Azul - de veículos nas vias e logradouros públicos do município de Ilhéus  e dá outras providências', 2, 5, NULL, 1),
(312, '48', '2015-12-31', 'Institui no calendário oficial do município de Ilhéus o Dia da Cosnciência e Atenção aos Portadores de Lúpus  e dá outras providências', 1, 6, 20, 1),
(313, '49', '2015-12-31', 'Aprova o Plano Municipal de Educação - PME - em consonância com a Lei nº 13.005/2014 que trata o Plano Nacional de Educação - PNE -  e dá outras providências', 2, 7, NULL, 1),
(314, '50', '2015-12-31', 'Cria a Lei que obriga os coletores de lixo a utilizarem máscara higiênica facial de proteção no municipio de Ilhéus  e dá outras providências', 2, 23, 12, 1),
(315, '51', '2015-12-31', 'Institui o Conselho de Povos Indígenas', 2, 9, 12, 1),
(316, '52', '2015-12-31', 'Cria Lei eu obriga os supermercados a colocar assentos em sua dependência, a disposição dos idosos, gestantes,, portadores de necessidades especiais e crianças de colo', 2, 3, 12, 1),
(317, '53', '2015-12-31', 'Altera a Laei nº 3.723 de 26 de dezembro de 2014, para acrescentar inciso do Artigo 186 suprimindo e alterando dispositivo da Tabela de Receita ', 2, 8, 8, 1),
(318, '54', '2015-12-31', 'Dispõe sobre a concessão de isenção parcial no pagamento de impostos sobre serviços de qualquer natureza - ISS- as empresas que incentivam projetos sociais e/ou ambientais no âmbito do município de Ilhéus e dá outras providências', 2, 8, 8, 1),
(319, '55', '2015-12-31', 'Altera a redação da lei Municipal nº de 22 de abril de 2015 e dá outras providências', 2, 1, NULL, 1),
(320, '56', '2015-12-31', 'Dispõe sobre a criação do Projeto Leitura Cidadã e dá outras providências', 2, 20, 3, 1),
(321, '57', '2015-12-31', 'Dispõe sobre a criação do Projeto Áreas verdes na cidade de Ilhéus e dá outras providências', 2, 23, 3, 1),
(322, '58', '2015-12-31', 'Reconhece de Utilidade Pública a Igreja Evangélica Redenção em Cristo', 1, 16, 8, 1),
(323, '59', '2015-12-31', 'Fica o Executivo Municipal responsável pela cenfecção e distribuição de cartilha informativa versando sobre a racionalização, conservação, reutilização, preservação e utilização racional de águas tratadas na rede municipal de ensino médio e dá outras providências', 2, 23, 1, 1),
(324, '60', '2015-12-31', 'Institui no município de Ilhéus a isntalação de aparelhos de ginástica e condicionamento físico adaptados às pessoas com deficiência física nas praças. Avenidas e dá outras providências', 2, 19, 14, 1),
(325, '61', '2015-12-31', 'Institui o Cadastro Municipal de Identificação de Pessoas com deficiência de qualque natureza e mobilidade reduzida no município de Ilhéus e dá outras providências', 2, 9, 14, 1),
(326, '62', '2015-12-31', 'Dispõe sobre a instalação de bicicletário nas dependências das escolas públicas no município de Ilhéus  e dá outras providências', 2, 5, 14, 1),
(327, '63', '2015-12-31', 'Institui a regulamentação no município de Ilhéus da Lei  Federal nº 12.009, do exercício das atividades dos profissionais em transporte de passageiros, mototaxistas, entregas de mercadorias e em serviços comunitários de rua e motoboy com uso de motocicleta, para dispor de regra de segurança dos serviços de transporte remunerado de mercadorias em motocicletas e motonetas e moto-frete, estabelece regras para regulação deste serviço  e dá outras providências', 2, 5, 14, 1),
(328, '64', '2015-12-31', 'Institui a disciplina de incentivo de produtividade aos agentes de combates às endemias (ACE) no município de Ilhéus', 2, 14, 14, 1),
(329, '65', '2015-12-31', 'Altera a Lei nº 2.951 de 19 de dezembro de 2001', 2, 1, NULL, 1),
(330, '66', '2015-12-31', 'Autoriza a abertura de crédito especial ao Orçamento Anual de 2015 na forma que indica  e determina providências conexas', 2, 8, NULL, 1),
(331, '67', '2015-12-31', 'Proíbe o exercício da atividade de "flanelinha"  não cadastrados no âmbito do município de Ilhéus  e dá outras providências', 2, 17, 1, 1),
(332, '68', '2015-12-31', 'Fixa o teto e os critérios para alteração do subsídio mensal dos vereadores do município de Ilhéus  e dá outras providências', 2, 22, 4, 1),
(333, '69', '2015-12-31', 'Dispõe sobre o uso de espaços públicos de publicidade para campanhas educativas, sobre atos de violência contra a mulher  e dá outras providências', 2, 15, 3, 1),
(334, '70', '2015-12-31', 'Dispõe sobre a instalação de caixas de auto atendimento bancário adaptados para o uso por pessoas com deficiência no município de Ilhéus  e dá outras providências', 2, 9, 3, 1),
(335, '71', '2015-12-31', 'Dispõe sobre o fornecimento de mernda diferenciada para estudantes diabéticos, hipoglicêmicos e celíacos no município de Ilhéus  e dá outras providências', 2, 14, 3, 1),
(336, '72', '2015-12-31', 'Fica criada o município de Ilhéus a Secretaria Municipal de Prevenção às drogas  e dá outras providências', 2, 14, 3, 1),
(337, '73', '2015-12-31', 'Estima a Receita e fixa a Despesa do Orçamento Anual do município de agosto para o exercício financeiro de 2016  e dá outras providências', 2, 8, NULL, 1),
(338, '74', '2015-12-31', 'Promove a adequação orçamentária do concórcio de transparência na gestão pública municipal - CTM- no âmbito do município, autoriza a abertura de crédito ao Orçamento Anual de 2015 na forma que indica  e dá outras providências', 2, 8, NULL, 1),
(339, '75', '2015-12-31', 'Autoriza o ingresso do município de Ilhéus no Consórcio de Tranparência na Gestão Pública Municipal - CTM -  e dá outras providências', 2, 8, NULL, 1),
(340, '76', '2015-12-31', 'Dispõe sobre o Estatuto dos Servidores do município de Ilhéus', 2, 1, NULL, 1),
(341, '77', '2015-12-31', 'Dispõe sobre a organização do Sistema Municipal de Despesas do Consumidor - SMDC - Institui a Coordenadoria  Municipal de Proteção do Consumidor - PROCON -  o Conselho Municipal de Proteção e Defesa do Consumidor - CONDECON - e institui o Fundo Municipal de Proteção e defesa do Consumidor - FMDC -  e dá outras providências', 2, 10, NULL, 1),
(342, '78', '2015-12-31', 'Reconhece de Utilidade Pública a Associação de Pessoas com Doenças Falciformes de Ilhéus - APEDFI - ', 1, 16, 15, 1),
(343, '79', '2015-12-31', 'Reconhece de Utilidade Pública a Associação de Ilheense de Remo e Desporto ', 1, 16, 8, 1),
(344, '80', '2015-12-31', 'Dispõe sobre o reconhecimento da profissão de intérprete/tradutor de LIBRAS no município de Ilhéus e dá outras providências', 2, 17, 3, 1),
(345, '81', '2015-12-31', 'Dispõe sobre a concessão de insenção do Imposto Predial e Territorial Urbano - IPTU - e dá outras providências', 2, 8, 1, 1),
(346, '82', '2015-12-31', 'Cria o Projeto "Academias de Ginástica ao Ar Livre" no município de Ilhéus e dá outras providências', 2, 19, 1, 1),
(347, '83', '2015-12-31', 'Institui no calendário do município de Ilhéus a Festa da Padrieira de Nossa Senhora de Aparecida, bairro do Malhado e dá outras providências', 1, 6, 12, 1),
(348, '84', '2015-12-31', 'Obriga a disponibilidade de "fraldário"  no interior dos estabelecimentos que especifica', 2, 10, 12, 1),
(349, '85', '2015-12-31', 'Proíbe a cobrança de ingressos, passaporte, bilhete (ou equivalente) a acompanhante de criança quando da realização de eventos musical, cultural, circense, artístico esportivo de parques de diversão de conotação infantojuvenil, diante do município de Ilhéus e dá outras providências', 2, 20, 12, 1),
(350, '86', '2015-12-31', 'Reconhece de Utilidade Pública a Associação Novo Céu de Cristãos Católicos da Diocese de Ilhéus e dá outras providências', 1, 16, 12, 1),
(351, '87', '2015-12-31', 'Reconhece de Utilidade Públiva a Associação Profissional dos Professores de Ilhéus - APPI - e dá outras providências', 1, 16, 2, 1),
(352, '88', '2015-12-31', 'Institui o Selo "Empresa Amiga da Educação" no âmbito do município de Ilhéus e dá outras providências', 2, 7, 4, 1),
(353, '89', '2015-12-31', 'Institui o Programa de Sustentabilidade Ambiantal da rede Municipal de Ensino e dá outras providências', 2, 23, 4, 1),
(354, '90', '2015-12-31', 'Cria no município de Ilhéus o "Projeto Grafitar Para Informar" e dá outras providências', 2, 12, 9, 1),
(355, '91', '2015-12-31', 'Estabelece que a Sobra Anual Orçamentária do Poder Legislativo, relativa ao ano de 2015, será destinada a título  de subsídio, à tarifa de ônibus dos estudantes do município de Ilhéus no ano de 2016', 2, 22, 1, 1),
(356, '92', '2015-12-31', 'Institui o prêmio "Professor do Ano" no âmbito do Sistema Municipal de Educação de Ilhéus e dá outras providências', 2, 7, 1, 1),
(357, '93', '2015-12-31', 'Dispõe sobre a disponibilidade do Poder Executivo apresentar Realação de Emendas Orçamentárias Parlamentares não executadas', 2, 8, 4, 1),
(358, '94', '2015-12-31', 'Dispõe sobre a venda, oferta e fornecimento a entrega e a permissão de consumo de bebidas alcoólicas, mesmo que gratuitamente aos menores de 18 anos, no município de Ilhéus e dá outras providências', 2, 10, 4, 1),
(359, '95', '2015-12-31', 'Institui o Programa de Incentivo à Regularização Fiscal (REFIS) 2015 do município de Ilhéus e dá outras providências', 2, 8, NULL, 1),
(360, '96', '2015-12-31', 'Concede beneficios direcionados para o Programa Minha Casa Minha Vida e dá outras providências', 2, 3, NULL, 1),
(361, '97', '2015-12-31', 'Dispõe sobre a criação de Cadastro Municipal da Associação do Moradores de Bairro, Vilas e Núcleos Habitacionais e afins', 2, 1, 1, 1),
(362, '98', '2015-12-31', 'Determina que seja obrigatória a realização de processo de sanitização, em toda cidade de Ilhéus, nos locais que especifica e dá outras providências', 2, 14, 1, 1),
(363, '99', '2015-12-31', 'Determina a instituição da áreas escolares de segurança nas ruas do entorno das Escolas Públicas Municipais da cidade de Ilhéus e dá outras providências', 2, 15, 5, 1),
(364, '100', '2015-12-31', 'Institui o Projeto de Lei nº 3.688/2000', 2, 1, 17, 1),
(365, '101', '2015-12-31', 'Institui a obrigatoriedade no município de Ilhéus viabilizar a cosntrução de um forno crematório e dá outras providências', 2, 14, 4, 1),
(366, '102', '2015-12-31', 'Dispõe sobre a Comemoração do "Dezembro laranja" no município de Ilhéus e dá outras providências', 2, 6, 4, 1),
(367, '103', '2015-12-31', 'Dispõe sobre a disponibilidade de colocação de assentos nas Casas Lotéricas existentes no município de Ilhéus e dá outras providências', 2, 10, 4, 1),
(368, '001', '2015-12-31', 'Reconhece de utilidade pública a Associação Cultural Esportiva, Meio Ambiente Sustentável e Cidadania - CEMAC', 1, NULL, 8, 1),
(369, '002', '2016-12-31', 'Dispõe Sobre a Obrigatoriedade De Tornar Subterrâneo Todo O Sistema De Cabeamento Instalado No Municipio De Ilhéus e dá outras providências.', 2, NULL, 4, 1),
(370, '003', '2016-12-31', 'Dispõe Sobre A Comemoração Do “Dezembro Laranja” No Municipio De Ilhéus e dá outras providências.', 1, NULL, 4, 1),
(371, '004', '2016-12-31', 'Dispõe sobre a apresentação de artistas de rua nos logradouros públicos do Municipio de Ilhéus e dá outras providencias.', 2, NULL, 2, 1),
(372, '005', '2016-12-31', 'Autoriza a doação de bem público que especifica e dá outras providências.', 2, NULL, NULL, 1),
(373, '006', '2016-12-31', 'Altera o Artigo 1º da Lei nº 3.756 de 09 de novembro de 2015.', 2, NULL, NULL, 1),
(374, '007', '2016-12-31', 'Dispõe sobre a cassação do Alvará de funcionamento ou qualquer outra licença expedida pela Prefeitura Municipal de Ilhéus às empresas que explorarem trabalho infantil e dá outras providências.', 2, NULL, 4, 1),
(375, '008', '2016-12-31', 'Institui Politícas Públicas Para A Profissionalização Da Mulher No Âmbito Do Municipio De Ilhéus e dá outras providências.', 2, NULL, 4, 1),
(376, '009', '2016-12-31', 'Reconhece de utilidade pública a Associação Beneficente e Recreativa de Ilhéus Solidaria e dá outras providências.', 1, NULL, 18, 1),
(377, '010', '2016-12-31', 'Dispõe Sobre A Disponibilização Do Auto De Infração, Da Notificação De Autuação, E Da Notificação Da Imposição De Penalidade Relativas Às Autuações Por Infração De Trânsito, Expedidos Pelo Municipio De Ilhéus Na Página Eletrônica Oficial Da Prefeitura e dá outras providências.', 2, NULL, 4, 1),
(378, '011', '2016-12-31', 'Dispõe sobre a criação do Conselho Municipal de Acompanhamento e Controle Social do Fundo de Manutenção e Desenvolvimento da Educação Básica e de Valorização dos Profissionais da Educação-Conselho do FUNDEB em cumprimento da Lei nº 11.494, de 20 de junho de 2007, Portaria nº 481, de 11 de outubro de 2013, e revoga as Leis Municipais nº 3.306, de 22 de junho de 2007 e nº 3.547, de 09 de junho de 2011, e dá outras providências.', 2, NULL, NULL, 1),
(379, '012', '2016-12-31', 'Reconhece de utilidade pública a Associação de Sustentabilidade dos Moradores de Vila Cachoeira e adjacências Rurais.', 1, NULL, 18, 1),
(380, '014', '2016-12-31', 'Reconhece de Utilidade Pública a Associação  Indígena Tupinambá do Acuípe de Cima.', 1, NULL, 12, 1),
(381, '015', '2016-12-31', 'Cria Conselho Municipal de Juventude - CMJ e dá outras providências. (REJEITADO)', 2, NULL, 3, 1),
(382, '016', '2016-12-31', 'Dispõe sobre a organização do sistema municipal de defesa do consumidor - SMDC-, institui a Coordenadoria Municipal de Proteção e Defesa do Consumidor -PROCON- o Conselho Municipal de Proteção e Defesa do Consumidor -CONDECON- e o Fundo Municipal de Proteção e Defesa de Consumidor -FMDC- e dá outras providências.', 2, NULL, 3, 1),
(383, '017', '2016-12-31', 'Ficam denominadas às ruas Xistos Gomes e a Rua Nestor Pereira no bairro do Banco da Vitória e dá outras providências.', 1, NULL, 12, 1),
(384, '018', '2016-12-31', 'Fica Denominada de Praça Feliciano de Assis no bairro do Banco da Vitória e dá outras providencias.', 1, NULL, 12, 1),
(385, '019', '2016-12-31', 'Reconhece de utilidade pública a Associação dos Moradores da Terra Prometida, CNPJ: 23.586.318/0001-00.', 1, NULL, 8, 1),
(386, '020', '2016-12-31', 'Autoriza o Poder Executivo a firmar acordo de Parcelamento de dívida com o Fundo de Garantia por Tempo de Serviço.', 2, NULL, NULL, 1),
(387, '021', '2016-12-31', 'Reconhece de utilidade pública a Associação Luta pela Terra Bom Jesus.', 1, NULL, 10, 1),
(388, '022', '2016-12-31', 'Reconhece de utilidade pública a Associação dos Trabalhadores e Trabalhadoras Força e União Sem Terra de Ilhéus.', 1, NULL, 10, 1),
(389, '023', '2016-12-31', 'Dispõe Sobre A Criação Do Programa Municipal De Saúde Veterinária Itinerante e dá outras providências.', 2, NULL, 8, 1),
(390, '024', '2016-12-31', 'Institui diretrizes para a capacitação de profissionais de Educação do Municipio de Ilhéus para o atendimento as demandas que ultrapassem currículo pedagógico formal das disciplinas e dá outras providências.', 2, NULL, 8, 1),
(391, '025', '2016-12-31', 'Dá nome a Ginásio de Esportes do distrito de Inema como GINÁSIO DE ESPORTES AZOR ANTONIO DOS SANTOS e dá outras providências.', 1, NULL, 19, 1),
(392, '026', '2016-12-31', 'Dá nome a Ginásio de Esportes do Bairro do Basílio como GINÁSIO DE ESPORTES PEDRO FARIAS e dá outras providências.', 1, NULL, 11, 1),
(393, '027', '2016-12-31', 'Dispõe sobre a criação do Programa Municipal de Combate e Prevenção ao Mosquito "Aedes Aegypti", transmissor da dengue, do zica e da chikungunya e dá outras providências.', 2, NULL, 6, 1),
(394, '029', '2016-12-31', 'Acrescenta dispositivo ao PL nº 002/2016, que altera o §2º no art. 1: do que dispõe sobre o prazo da obrigatoriedade de tornar subterrâneo todo o sistema de cabeamento instalado no município de Ilhéus e dá outras providências.', 2, NULL, 10, 1),
(395, '030', '2016-12-31', 'Estabelece a obrigatoriedade de faixa de acesso e reserva de espaço para o tráfego de motocicleta nas vias públicas de grande circulação da cidade de Ilhéus.', 2, NULL, 10, 1),
(396, '031', '2016-12-31', 'Dispõe sobre denominação de logradouro Público de Rua Sol e Mar.', 1, NULL, 2, 1),
(397, '032', '2016-12-31', 'Dispõe Sobre Feriado Municipal no dia 24 de junho, consagrado a São João.', 2, NULL, NULL, 1),
(398, '033', '2016-12-31', 'Inclui a quinta torre no topo do brasão do município de Ilhéus caracterizando em seu símbolo o título de cidade e dá outras providências.', 1, NULL, 10, 1),
(399, '034', '2016-12-31', 'Dispõe sobre o projeto piloto de pagamento por serviços ambientais para produtores rurais, autorizando o Executivo a prestar apoio financeiro aos proprietários rurais e dá outras providências.', 2, NULL, NULL, 1),
(400, '035', '2016-12-31', 'Institui a Política Municipal de Resíduos Sólidos de Ilhéus e dá outras providências.', 2, NULL, NULL, 1),
(401, '036', '2016-12-31', 'Altera a denominação do mirante do Canhão para Mirante da Fundação.', 1, NULL, 10, 1),
(402, '037', '2016-12-31', 'Cria os serviços de táxi lotação e dá outras providências.', 2, NULL, 3, 1),
(403, '038', '2016-12-31', 'Denominam-se os nomes das Ruas do Loteamento do parque das mangueiras na Av. Esperança e dá outras providências', 1, NULL, 3, 1),
(404, '039', '2016-12-31', 'Reconhece de utilidade pública a Cooperativa de Serviços Sustentáveis da Bahia - COOPESSBA, CNPJ: 10.158.416/0001-96.', 1, NULL, 8, 1),
(405, '040', '2016-12-31', 'Reconhece de Utilidade Pública a Associação Cultural e Musical Senhor Acordado-ACORDE.', 1, NULL, 8, 1),
(406, '041', '2016-12-31', 'Dá o nome de Rua ACONCHEGO à conhecida Rua Q no loteamento Santo Antônio de Pádua do Bairro Hernane Sá, e dá outras providências. ', 1, NULL, 18, 1),
(407, '042', '2016-12-31', 'Dispõe sobre as diretrizes orçamentárias para o exercício de 2017 e dá outras providências.', 2, NULL, NULL, 1),
(408, '043', '2016-12-31', 'Reconhece de Utilidade Pública a Associação Instituto de Promoção do Bem – SEMENTE.', 1, NULL, 13, 1),
(409, '044', '2016-12-31', 'Institui a obrigatoriedade de plotagem contendo o número da Licença Municipal em todos os veículos destinados ao transporte escolar no Munícipio de Ilhéus e dá outras providências. ', 2, NULL, 1, 1),
(410, '045', '2016-12-31', 'Autoriza a abertura de crédito especial ao Orçamento Anual de 2016, na forma que indica e dá outras providências.', 2, NULL, NULL, 1),
(411, '046', '2016-12-31', 'Fica Reconhecida de Utilidade Pública Municipal a IGREJA ASSEMBLÉIA DE DEUS HERÓIS DA FÉ e dá outras providências. ', 1, NULL, 14, 1),
(412, '047', '2016-12-31', 'Estima a receita e fixa a despesa do orçamento anual do município de Ilhéus para o exercício financeiro de 2017, e determina outras providências.', 2, NULL, NULL, 1),
(413, '048', '2016-12-31', 'Dispõe sobre a fixação do subsídio dos vereadores para a legislatura 2017/2020 e dá outras providências.', 2, NULL, NULL, 1),
(414, '049', '2016-12-31', 'Dispõe sobre a fixação do subsídio do prefeito, vice prefeito e secretários municipais para a legislatura 2017 - 2020 e dá outras providências.', 2, NULL, NULL, 1),
(415, '050', '2016-12-31', 'Dispõe sobre a modificação do anexo único do artigo 9º da Lei 3.254 de 19 de setembro de 2006 e dá outras providências.', 2, NULL, NULL, 1),
(416, '051', '2016-12-31', 'Modifica o anexo do art. 3º da Lei 3.225 de 11 de Abril de 2006 , e dá outras providências', 2, NULL, NULL, 1),
(417, '052', '2016-12-31', 'Reconhece de utilidade pública a Casa da Cultura Popular.', 1, NULL, 8, 1),
(418, '053', '2016-12-31', 'Cria o Programa Educacional para Conservação da Água e dá outras providências.', 2, NULL, 1, 1),
(419, '054', '2016-12-31', 'Institui o Programa Municipal de Reabilitação, Inclusão e Reinserção Social de Dependentes Químicos e Cria o Fundo Municipal de Reinserção Social e fixa outras providências.', 2, NULL, 8, 1),
(420, '055', '2016-12-31', 'Dispõe sobre a criação dos “Para jogos”da cidade de Ilhéus e dá outras providências.', 2, NULL, 8, 1),
(421, '056', '2016-12-31', 'Dispõe sobre a obrigatoriedade das Agências Bancárias disponibilizarem sanitários, bebedouros e assentos(cadeiras) para seus usuários no âmbito do Município de Ilhéus e fixa outras providências.', 2, NULL, 8, 1),
(422, '057', '2016-12-31', 'Reconhece de utilidade pública a Associação Indígena Tupinambá do Acuípe do meio Dois - AITAM e dá outras providências.', 1, NULL, 5, 1),
(423, '058', '2016-12-31', 'Reconhece de utilidade pública a Associação Instituto Marola - IMAR e dá outras providências.', 1, NULL, 18, 1),
(424, '059', '2016-12-31', 'Dispõe sobre a criação do Conselho Municipal dos Direitos das Pessoas com Deficiência e o Fundo Municipal das Pessoas com Deficiência e estabelece a Política Municipal das Pessoas com Deficiência no âmbito do Município de Ilhéus e fixa outras providências.', 2, NULL, 8, 1),
(425, '060', '2016-12-31', 'Institui o programa Escola Sustentável no Município de Ilhéus e dá outras providências.', 2, NULL, 3, 1),
(426, '061', '2016-12-31', 'Dispõe sobre praças digitais no âmbito do município de Ilhéus e dá outras providências.', 2, NULL, 4, 1),
(427, '062', '2016-12-31', 'Dispõe sobre a autorização para abertura de créditos adicionais suplementares, na forma que indica e dá outras providências.', 2, NULL, NULL, 1),
(428, '063', '2016-12-31', 'Dispõe sobre a prorrogação do prazo previsto no art. 64 Lei 3.746, de 09 de outubro de 2015, para regularização de obras de construção executadas sem a observância da legislação municipal vigente e dá outras providências.', 2, NULL, NULL, 1),
(429, '064', '2016-12-31', 'Reordena a estrutura administrativa do Município, nos setores que especifica, alterando as disposições da Lei 3.728/2015.', 2, NULL, NULL, 1),
(430, '065', '2016-12-31', 'Fica reconhecida de utilidade pública a Associação Ilheense de Xadrez.', 1, NULL, 10, 1),
(431, '066', '2016-12-31', 'Dá nome de praça Valmo e Rosa a Praça Inominada localizada entre as ruas A e B do loteamento do bairro Santo Antonio de Pádua.', 1, NULL, 17, 1),
(432, '3654', '2013-03-27', 'Institui o Regime Estatutário dos Servidores do Município.', 2, 1, NULL, 2),
(433, '3655', '2013-04-03', 'Altera a Lei nº. 3.633, de 07 de dezembro de 2012 que dispõe acerca da Estrutura Organizacional da Prefeitura Municipal de Ilhéus, cria a Secretaria Municipal de Cultura e dá outras providências.', 2, 1, NULL, 2),
(434, '3656', '2013-04-04', 'Autoriza a abertura de crédito especial ao Orçamento Anual de 2013, na forma que indica e dá outras providências.', 2, 8, NULL, 2),
(435, '3657', '2013-09-26', 'Autoriza a abertura de crédito especial ao Orçamento Anual de 2013, na forma que indicar e dá outras providências.', 2, 8, NULL, 2),
(436, '3658', '2013-09-27', 'Dispõe sobre as diretrizes orçamentárias para o exercício de 2014 e dá outras providências.', 2, 8, NULL, 2),
(437, '3659', '2013-09-27', 'Reconhece de utilidade pública a Associação de Moradores do Loteamento Parque doas Mangueiras e dá outras providências.', 1, 16, 3, 2),
(438, '3660', '2013-09-27', 'Reconhece como entidade de utilidade pública a A.S.B.L - Associação Sul Baiana de Canaricultores e dá outras providências.', 1, 16, 2, 2),
(439, '3661', '2013-09-27', 'Reconhece de utilidade pública a ASCERSHE - Associação Comunitária Educativa Recreativa Shekinah e dá outras providências.', 1, 16, 3, 2),
(440, '3662', '2013-09-27', 'Reconhece como entidade de utilidade pública a A.I.S. Associação Ilheense de Surf e dá outras providências.', 1, 16, 2, 2),
(441, '3663', '2013-10-22', 'Dispõe sobre a colocação de detectores de metais em todas as entradas de Shows e proibição de vendas de bebidas em garrafas e dá outras providências.', 2, 15, 8, 2),
(442, '3665', '2013-10-22', 'Dispõe sobre a obrigatoriedade da fixação nas academias de ginástica, nos centros esportivos e estabelecimentos comerciais de nutrição esportiva e produtos correlatos à atividade física, de carta com advertências sobre as consequências do uso de anabolizantes e dá outras providências.', 2, 14, 3, 2),
(443, '3664', '2013-10-23', 'Reconhece de utilidade pública a Associação Ilheense de Frescobol, da Av. Antônio Carlos Magalhães, no bairro do Malhado e dá outras providências.', 1, 16, 3, 2),
(444, '3666', '2013-10-23', 'Reconhece de utilidade pública a Associação Desportiva e Comunidade do Santo Antônio.', 1, 16, 8, 2),
(445, '3667', '2013-10-23', 'Reconhece de utilidade pública o Instituto Cabruca e dá outras providências.', 1, 16, 3, 2),
(446, '3668', '2013-10-23', 'Institui-se o Dia da Consciência Policial na cidade de Ilhéus em 01 de fevereiro.', 1, 6, 20, 2),
(447, '3669', '2013-10-23', 'Institui-se o Dia do Blogueiro no município de Ilhéus, sempre no dia 4 de abril.', 1, 6, 4, 2),
(448, '3670', '2013-10-23', 'Reconhece de utilidade pública a Associação Leandro Ferreira de Taekwondo e dá outras providências.', 1, 16, 3, 2),
(449, '3671', '2013-10-30', 'Institui o Programa de Incentivo à Regularização Fiscal - Refis 2013 do Município de Ilhéus e dá outras providências.', 2, 8, NULL, 2),
(450, '3672', '2013-10-31', 'Institui-se no calendário oficial de eventos do município de Ilhéus o Dia Municipal do Ciclista a ser comemorado anualmente no dia 1º de setembro.', 1, 6, NULL, 2),
(451, '3673', '2013-10-31', 'Institui no âmbito do Município de Ilhéus, o Programa A Mulher sua Saúde, e os seus Direitos, e dá outras providências.', 2, 14, NULL, 2),
(452, '3674', '2013-10-31', 'Dispõe sobre à permanência do estatuto da Criança e do Adolescente (ECA), Lei 8.069 de 13 de julho de 1990 nas Creches e Escolas de Ensino Fundamental do Município de Ilhéus, e dá outras providências.', 2, 7, NULL, 2),
(453, '3675', '2013-10-31', 'Estabelece a obrigatoriedade dos estabelecimentos de saúde, disponibilizar em sua recepção um painel com os médicos disponíveis, suas qualificações e seu período de atendimento.', 2, 14, NULL, 2),
(454, '3676', '2013-10-31', 'Reconhece de utilidade pública o Projeto Todo Dia de CompartilharPTCD.', 1, 16, NULL, 2),
(455, '3677', '2013-10-31', 'Dispõe sobre a Rede Pública Municipal de Ensino promover ações preventivas/educativas sobre drogas psicoativas ilicitas e licitas, incluindo o uso de álcool, tabaco e automedicação.', 2, 7, NULL, 2),
(456, '3678', '2013-10-31', 'Estabelece medidas preventivas e orientadoras destinadas a inibir qualquer forma de violência contra professores da Rede Pública Municipal de Ensino em Ilhéus.', 2, 7, NULL, 2),
(457, '3679', '2013-10-31', 'Fica o município de Ilhéus obrigado a conceder tratamento prioritário em processos administrativos tramitantes na prefeitura municipal de Ilhéus à pessoas com idade igual ou superior a 60 anos.', 2, 3, NULL, 2),
(458, '3680', '2013-10-31', 'Garante o acesso das pessoas com deficiência aos espetáculos e obras culturais beneficiados por recursos da Lei Municipal de incentivo a cultura e dá outras providências.', 2, 3, NULL, 2),
(459, '3681', '2013-11-27', 'Autoriza a abertura de crédito especial ao orçamento anual de 2013, na forma que indica, e dá outras providências.', 2, 8, NULL, 2),
(460, '3682', '2013-12-12', 'Reconhece de utilidade pública a Associação Beneficente Juventude Sem Drogas - ABEJUSD.', 1, 16, 5, 2),
(461, '3683', '2013-12-12', 'Isntitui o Dia Municipal do Abuso e a Exploração Sexual contra Crianças e Adolescentes e dá outras providências.', 1, 6, 3, 2),
(462, '3684', '2013-12-12', 'Reconhece de utilidade pública a ONG Associação Casa Arte da Criança. ', 1, 16, 5, 2),
(463, '3685', '2013-12-12', 'Dispõe sobre o desenvolvimento de Programas de Prevenção da AIDS e das doenças sexualmente transmissíveis, nos estabelecimentos de ensino e de atendimento no município de Ilhéus.', 2, 7, 8, 2),
(464, '3686', '2013-12-12', 'Instituir o dia 19 de janeiro como o Dia Municipal do Turismo na cidade de Ilhéus, e dá outras providências.', 1, 6, 11, 2),
(465, '3687', '2013-12-12', 'Altera a Lei Municipal nº3.639 de 20 de dezembro de 2012 e dá outras providências.', 2, 1, NULL, 2),
(466, '3688', '2013-12-12', 'Dispõe sobre nova denominação ao "largo" que fica em torno da Barrakitika/ da ex-residência do ex-prefeito Mário Pessoa e da Clínica Médico Center, passando a ser identificada, por medida de lei, de Praça Dr. Aristeu de Oliveira Campos, e dá outras providências.', 1, 11, 4, 2),
(467, '3689', '2013-12-12', 'Dispõe sobre a instituição do Conselho Municipal de Desenvolvimento Rural e Pesqueiro Sustentável - CMDRPS de Ilhéus e dá outras providências.', 2, 2, NULL, 2),
(468, '3706', '2013-12-18', 'Estima a Receita e fixa a Despesa do Orçamento Anual do Município de Ilhéus para o exercício financeiro de 2014, e determina outras providências.  ', 2, 8, NULL, 2),
(469, '3707', '2013-12-18', 'Dispõe sobre o Plano Plurianual – PPA do Município para o período 2014/2017, na forma que indica.', 2, 8, NULL, 2),
(470, '3690', '2013-12-23', 'Altera a redação dos Artigos 2º e 3º da Lei nº 3.655, de 03 de abril de 2013 e dispositivos da Lei nº 3.454 de 14 de novembro de 2009 na forma que indica e dá outras providências.', 2, 1, NULL, 2),
(471, '3691', '2013-12-23', 'Cria os Conselhos Escolares nas unidades de Ensino da Rede Municipal de Ilhéus e extingue os colegiados anteriormente denominados colegiados escolar e caixa escolar.', 2, 4, NULL, 2),
(472, '3692', '2013-12-23', 'Altera as alineas 7.1 e 7.2 da Lei nº 3.477 de 30 de dezembro de 2009 e a tabela demonstrativa do anexo único da Lei nº 3.254 de 19 de setembro de 2009, que estrutura o Plano de Cargos e Salários do Poder Legislativo do município de Ilhéus.', 2, 8, NULL, 2),
(473, '3693', '2013-12-23', 'Autoriza o poder executivo a firmar parcelamento de dívidas oriundas de contribuições devidas ao fundo de garantia por tempo de serviço: contribuições sociais instituidas pela lei complementar 110/2001: Procuradoria Geral da Fazenda Nacional de Dêbitos Relativos a Dívidas Oriundas de Contribuições do PASEP e Multas Previstas no Decreto-Lei: 5.452, de 1º de Maio de 1943.', 2, 8, NULL, 2),
(474, '3694', '2013-12-30', 'Assegura matrícula para o aluno portador de deficiência locomotora na escola municipal mais próxima de sua residência.', 2, 3, 3, 2),
(475, '3695', '2013-12-30', 'Dispõe sobre a criação do Dia do Professor Destaque do Ano, no município de Ilhéus e dá outras providências.', 1, 6, 3, 2),
(476, '3696', '2013-12-30', 'Cria Centros de Assistência e Convivência da Terceira Idade e dá outras providências.', 2, 3, 3, 2),
(477, '3697', '2013-12-30', 'Institui o Dia do Capoerista, e dá outras providências.', 1, 6, 9, 2),
(478, '3698', '2013-12-30', 'Ficam declaradas cidades irmãs as cidades de Ilhéus e Itabuna, no estado da Bahia, e dá outras providências.', 1, 6, 9, 2),
(479, '3699', '2013-12-30', 'Criar Lei que dispõe sobre a remoção de veículos automotores que encontram-se sem condições de uso e abandonados nas vias públicas do município de Ilhéus.', 2, 5, 20, 2),
(480, '3700', '2013-12-30', 'Dispõe sobre a qualidade de entidades, como organizações sociais municipais, e dá outras providências.', 2, 1, 8, 2),
(481, '3701', '2013-12-30', 'Reconhece de utilidade pública o Instituto de Reintegração Social Liberdade para Vida.', 1, 16, 20, 2),
(482, '3702', '2013-12-30', 'Dispõe sobre a constituição da comissão de estudo, controle e ações  preventivas contra a violência escolar.', 2, 7, 1, 2),
(483, '3703', '2013-12-30', 'Dispõe sobre a obrigatoridade das agências bancárias e estabelecimentos comerciais em manter um exemplar do Estatuto do Idoso para a livre consulta, e dá outras providências.', 2, 9, 3, 2),
(484, '3704', '2013-12-30', 'Determina a fixação da data de fabricação nos veículos das empresas concessionárias do transporte coletivo, no âmbito do município de Ilhéus.', 2, 5, 8, 2),
(485, '3705', '2014-01-10', 'Reconhece de utilidade pública a Associação Palotina - centro social Criart - e dá outras providências', 1, 16, 18, 2),
(486, '3708', '2014-01-20', 'Dispõe sobre a implantação do protuário eletrônico do paciente na rede pública de saúde do município e Ilhéus', 2, 14, 5, 2),
(487, '3709', '2014-04-25', 'Institui novas disposições sobre a Política Municipal dos Direitos da Criança e do Adolescente e dá outras providências. Autores: Alzimário Belmonte (Gurita); Alisson Mendonça; James Costa', 2, 3, NULL, 2),
(488, '3710', '2014-04-25', 'Dispões sobre a instalação de câmeras de monitoramento de segurança nas vias públicas no âmbito do município de Ilhéus e dá outras providências', 2, 15, 4, 2),
(489, '3711', '2014-04-25', 'Dispõe sobre a criação de curso Pré Vestibular municipal de Ilhéus e dá outras providências', 2, 7, 3, 2),
(490, '3712', '2014-04-25', 'Institui o programa "Primeiro Emprego" no município de Ilhéus', 2, 17, 9, 2),
(491, '3713', '2014-04-25', 'Institui-se como matéria obrigatória em rede de ensino público municipal a matéria Educação Nutricional', 2, 7, 20, 2),
(492, '3714', '2014-04-25', 'Dispõe sobre a implantação do programa "Médico nas Creches" do município de Ilhéus e dá outras providências', 2, 14, 3, 2),
(493, '3715', '2014-04-25', 'Institui no âmbito do município de Ilhéus o evento Atividade Gospel e dá outras providências  ', 1, 13, 8, 2),
(494, '3716', '2014-04-25', 'Institui-se a obrigatoriedade da adequação de clínicas e hospitais para que mulheres com deficiência(cadeirantes) ou com mobiliudade reduzida tenham acesso aos aparelhos que diagnosticam câncer de mama', 2, 14, 20, 2),
(495, '3717', '2014-04-25', 'Institui a praça 24 horas no âmbito do município de Ilhéus e dá outras providências', 2, 15, 8, 2),
(496, '3718', '2014-06-16', 'Autoriza o poder executivo a firmar parcelamento de dívidas oriundas de contribuições devidas ao Fundo de Garantia por Tempo de Serviço. Contribuições sociais instituidas pela lei complementar 110/2001 e dá outras providências.', 2, 8, NULL, 2),
(497, '3719', '2014-11-27', 'Autoriza o poder executivo a contratar operação de crédito junto a Caixa Econômica Federal, na qualidade de Agente Financeiro, a oferecer garantias e dá outras providências.', 2, 8, NULL, 2),
(498, '3720', '2014-12-01', 'Altera as alíneas 1.1, 5.0 e 6.0, tabela demonstrativa do anexo único da lei nº 3.254 de 19 de setembro de 2006, que estrutura o plano de cargos e salários do poder legislativo do município de Ilhéus.', 2, 8, NULL, 2),
(499, '3721', '2014-12-23', 'Dispõe sobre as diretrizes orçamentárias para o exercício de 2015 e da outras providências.', 2, 8, NULL, 2),
(500, '3722', '2014-12-23', 'Institui a Semana Municipal da Saúde do Homem no município de Ilhéus e dá outras providências.', 1, 6, 8, 2),
(501, '3723', '2014-12-26', 'Institui o código tributário e de rendas do município de Ilhéus e dá outras providências.', 2, 8, NULL, 2),
(502, '3724', '2014-12-26', 'Institui a Nova Planta Genérica de Valores (PGV), fixa valores unitários padrão de terrenos (VUPT) e de construções (VUPC), para efeito de avaliação de unidade imobiliaria e lançamento do imposto sobre a propriedade predial e territorial urbana (IPTU), a partir de 2015 e dá outras providências.', 2, 8, NULL, 2),
(503, '3725', '2014-12-30', 'Estima a receita e fixa a despesa do orçamento anual do município de Ilhéus para o exercício financeiro de 2015, e determina outras providências.', 2, 8, NULL, 2),
(504, '3727', '2015-04-10', 'Altera dispositivos da Lei nº 3.723 de 26 de dezembro de 2014 que institui o Código Tributário Municipal e da Lei nº 3.724 de 26 de dezembro de 2014 que institui a planta genérica de valores e dá outras providências', 2, 8, NULL, 2),
(505, '3728', '2015-04-22', 'Dispõe sobre a estrutura organizacional da Prefeitura Municipal de Ilhéus', 2, 1, NULL, 2),
(506, '3629', '2015-06-23', 'Aprova o Plano Municipal de Educação - PME - em consonância com a Lei nº 13.005/2014 que trata o Plano Nacional de Educação - PNE -  e dá outras providências', 2, 7, NULL, 2),
(507, '3730', '2015-07-15', 'Cria novo Conselho Municipal de Trânsito e Transportes da Cidade de Ilhéus - COMUTRAN -  e dá outras providências', 2, 5, NULL, 2),
(508, '3732', '2015-08-05', 'Altera a redação da lei Municipal nº de 22 de abril de 2015 e dá outras providências', 2, 1, NULL, 2),
(509, '3756', '2015-08-07', 'Altera os Artigos 1º e 2º da Lei Complementar nº 001/2001 de 07 de junho de 2001', 2, 1, NULL, 2),
(510, '3743', '2015-09-17', 'Dispõe sobre as diretrizes Orçamentárias para o exercício de 2016 e dá outras providências', 2, 8, NULL, 2),
(511, '3744', '2015-09-17', 'Dispõe sobre implantação e gerenciamento do sistema de estacionamento rotativo pago - Zona Azul - de veículos nas vias e logradouros públicos do município de Ilhéus  e dá outras providências', 2, 5, NULL, 2),
(512, '3751', '2015-10-03', 'Reconhece de Utilidade Pública a Igreja Assembléia de Deus é Fial', 1, 16, 20, 2),
(513, '3745', '2015-10-09', 'Dispõe sobre loteamento urbano fechado, condomínio horizontal fechado, responsabilidade do incorporador e loteatdor, concessão de uso  e dá outras providências', 2, 12, NULL, 2),
(514, '3746', '2015-10-09', 'Dispõe sobre uso e ocupação do solo no município de Ilhéus, a outorga onerosa do direito de construir,  da regularização de obras de construção executadas em desacordo com a legislação urbanística e edílica vigente e da regularização em regime especial das construções existentes antes da publicação da presente Lei na forma e nas condições que menciona', 2, 12, NULL, 2),
(515, '3747', '2015-10-13', 'Autoriza o ingresso do município de Ilhéus no Consórcio de Tranparência na Gestão Pública Municipal - CTM -  e dá outras providências', 2, 18, NULL, 2),
(516, '3748', '2015-10-13', 'Promove a adequação orçamentária do concórcio de transparência na gestão pública municipal - CTM- no âmbito do município, autoriza a abertura de crédito ao Orçamento Anual de 2015 na forma que indica  e dá outras providências', 2, 8, NULL, 2),
(517, '3749', '2015-10-13', 'Dispõe sobre a organização do Sistema Municipal de Despesas do Consumidor - SMDC - Institui a Coordenadoria  Municipal de Proteção do Consumidor - PROCON -  o Conselho Municipal de Proteção e Defesa do Consumidor - CONDECON - e institui o Fundo Municipal de Proteção e defesa do Consumidor - FMDC -  e dá outras providências', 2, 10, NULL, 2),
(518, '3750', '2015-10-13', 'Reconhece como Utilidade Pública Municipal a Associação Núcleo Cultural Comunitário da Tibina e Aderno (NCT) e dá outras providências', 1, 16, 19, 2),
(519, '3752', '2015-10-13', 'Reconhece como Utilidade Pública Minicipal a Associação dos deficientes Físicos de Ilhéus - ADEFI - ', 1, 16, 8, 2),
(520, '3753', '2015-10-13', 'Reconhece de Utilidade Pública a Igreja Filadélfia', 1, 16, 9, 2),
(521, '3754', '2015-10-13', 'Dá nome a Unidade de Saúde do Distrito de Inema como Unidade de Saúde Ana Fontes Batista e dá outras providências', 1, 11, 19, 2),
(522, '3758', '2015-11-18', 'Institui o Programa de Incentivo à Regularização Fiscal (REFIS) 2015 do município de Ilhéus e dá outras providências', 2, 8, NULL, 2),
(523, '3759', '2015-11-18', 'Concede beneficios direcionados para o Programa Minha Casa Minha Vida e dá outras providências', 2, 3, NULL, 2),
(524, '3777', '2016-03-08', 'Institui o cadastro municipal de identificação das pessoas com deficiência de qualquer natureza e mobilidade reduzida no município de Ilhéus e dá outras providências.', 2, NULL, 14, 2),
(525, '3778', '2016-03-08', 'Reconhece de utilidade pública a Associação Ilheense de Remo e Desporto.', 1, NULL, 8, 2),
(526, '3779', '2016-03-08', 'Reconhece de utilidade pública a Igreja Evangélica Redenção em Cristo.', 1, NULL, 8, 2),
(527, '3780', '2016-03-08', 'Reconhece de utilidade pública a Associação Profissional dos Professores de Ilhéus (APPI) e dá outras providências.', 1, NULL, 2, 2),
(528, '3781', '2016-03-08', 'Cria o Dia da Consciência Negra no município de Ilhéus e dá outras providências.', 2, NULL, 12, 2),
(529, '3782', '2016-03-08', 'Declara as feiras livres da cidade de Ilhéus como patrimônio histórico cultural imaterial e dá outras providências.', 2, NULL, 12, 2),
(530, '3783', '2016-03-08', 'Institui o dia municipal do Samba a ser comemorado todo dia 02 de dezembro, e dá outras providências.', 1, NULL, 12, 2),
(531, '3784', '2016-03-08', 'Declara a imagem da sereia na praia do Marciano da cidade de Ilhéus como patrimônio histórico cultural.', 2, NULL, 12, 2),
(532, '3785', '2016-03-08', 'Declara a área da praia da Sereia como espaço cultural para terreiros de candomblé da cidade de Ilhéus.', 2, NULL, 12, 2),
(533, '3786', '2016-03-08', 'Autoriza o município de Ilhéus a celebrar convênios com o Ministério da Saúde para o combate a endemia de dengue.', 2, NULL, 16, 2),
(534, '3787', '2016-03-08', 'Cria no município de Ilhéus o Projeto Grafitar para Informar e dá outras providências.', 2, NULL, 9, 2),
(535, '3788', '2016-03-11', 'Reconhece de utilidade Pública a Associação de Pessoas com doenças falciformes de Ilhéus-APEDFI. ', 1, NULL, 15, 2),
(536, '3789', '2016-04-25', 'Autoriza a doação de bem público que especifica e dá outras providências.', 2, NULL, NULL, 2),
(537, '3790', '2016-04-26', 'Autoriza o Poder Executivo a firmar acordo de Parcelamento de dívida com o Fundo de Garantia por Tempo de Serviço.', 2, NULL, NULL, 2),
(538, '3791', '2016-05-10', 'Dispõe sobre a criação do Conselho Municipal de Acompanhamento e Controle Social do Fundo de Manutenção e Desenvolvimento da Educação Básica e de Valorização dos Profissionais da Educação-Conselho do FUNDEB em cumprimento da Lei nº 11.494, de 20 de junho de 2007, Portaria nº 481, de 11 de outubro de 2013, e revoga as Leis Municipais nº 3.306, de 22 de junho de 2007 e nº 3.547, de 09 de junho de 2011, e dá outras providências.', 2, NULL, NULL, 2),
(539, '3792', '2016-05-10', 'Altera o Artigo 1º da Lei nº 3.756 de 09 de novembro de 2015.', 2, NULL, NULL, 2);
INSERT INTO `lei` (`pk`, `identificador`, `data`, `descricao`, `fk_impacto`, `fk_tema`, `fk_vereador`, `fk_lei_tipo`) VALUES
(540, '3793', '2016-05-10', 'Reconhece de utilidade pública a Associação Musical Gospel dos Levitas de Ilhéus – AMGL – CNPJ nº 21.219.231/0001-60 e dá outras providências.', 1, NULL, 4, 2),
(541, '3794', '2016-06-13', 'Reconhece de utilidade pública a Associação Beneficente e Recreativa de Ilhéus Solidaria e dá outras providências.', 1, NULL, 18, 2),
(542, '3795', '2016-06-13', 'Reconhece de utilidade pública a Associação de Sustentabilidade dos Moradores de Vila Cachoeira e adjacências Rurais.', 1, NULL, 18, 2),
(543, '3796', '2016-06-14', 'Reconhece de Utilidade Pública a Associação  Indígena Tupinambá do Acuipe de Cima.', 1, NULL, 12, 2),
(544, '3797', '2016-06-14', 'Fica Denominada de Praça Feliciano de Assis no bairro do Banco da Vitória e dá outras providencias.', 1, NULL, 12, 2),
(545, '3798', '2016-06-14', 'Reconhece de utilidade pública a Associação Luta pela Terra Bom Jesus.', 1, NULL, 10, 2),
(546, '3799', '2016-06-14', 'Reconhece de utilidade pública a Associação dos Trabalhadores e Trabalhadoras Força e União Sem Terra de Ilhéus.', 1, NULL, 10, 2),
(547, '3800', '2016-06-14', 'Institui e inclui "O dia do obreiro universal" no calendário oficial do município de Ilhéus.', 1, NULL, NULL, 2),
(548, '3801', '2016-06-14', 'Reconhece de utilidade pública a Associação Novo Céu de Cristãos Católicos da Diocese de Ilhéus.', 1, NULL, 12, 2),
(549, '3802', '2016-06-14', 'Reconhece como utilidade pública municipal a Associação de Moradores Ambientais Mar Azul (Amama) e dá outras providências.', 1, NULL, 19, 2),
(550, '3803', '2016-06-15', 'Dispõe Sobre Feriado Municipal no dia 24 de junho, consagrado a São João.', 2, NULL, NULL, 2),
(551, '3804', '2016-06-16', 'Institui a Política Municipal de Resíduos Sólidos de Ilhéus e dá outras providências.', 2, NULL, NULL, 2),
(552, '3805', '2016-07-18', 'Reconhece de utilidade pública Atalaia Comunidade Terapêutica Centro de Recuperação e Casa de Passagem e dá outras providências. ', 1, NULL, 3, 2),
(553, '3806', '2016-07-20', 'Dispõe sobre a criação e atribuições do Conselho Municipal de Turismo   COMTUR, cria o Fundo Municipal de Turismo - FUMTUR e dá outras providências.', 2, NULL, NULL, 2),
(554, '3807', '2016-07-20', 'Dispõe sobre a apresentação de artistas de rua nos logradouros públicos do Municipio de Ilhéus e dá outras providencias.', 2, NULL, 2, 2),
(555, '3808', '2016-10-05', 'Reconhece de Utilidade Pública a Associação Cultural e Musical Senhor Acordado-ACORDE.', 1, NULL, 8, 2),
(556, '3809', '2016-10-05', 'Reconhece de Utilidade Pública a Associação Instituto de Promoção do Bem – SEMENTE.', 1, NULL, 13, 2),
(557, '3810', '2016-10-31', 'Dispõe sobre as diretrizes orçamentárias para o exercício de 2017 e dá outras providências.', 2, NULL, NULL, 2),
(558, '3811', '2016-11-11', 'Autoriza a abertura de crédito especial ao Orçamento Anual de 2016, na forma que indica e dá outras providências.', 2, NULL, NULL, 2),
(559, '3812', '2016-12-21', 'Dispõe sobre a autorização para abertura de créditos adicionais suplementares, na forma que indica e dá outras providências.', 2, NULL, NULL, 2),
(560, '3813', '2016-12-28', 'Reordena a estrutura administrativa do Município, nos setores que especifica, alterando as disposições da Lei 3.728/2015.', 2, NULL, NULL, 2),
(561, '3814', '2016-12-28', 'Dispõe sobre denominação de logradouro Público de Rua Sol e Mar.', 1, NULL, 2, 2),
(562, '3815', '2016-12-28', 'Reconhece de utilidade pública a Casa da Cultura Popular.', 1, NULL, 8, 2),
(563, '3816', '2016-12-28', 'Dispõe sobre a criação de Cadastro Municipal das Associações de Moradores de Bairros, Vilas e Núcleos Habitacionais e afins.', 2, NULL, 1, 2),
(564, '3817', '2016-12-28', 'Determina que seja obrigatório a realização de processo de sanitização, em toda a Cidade de Ilhéus, nos locais que específica e dá outras providências.', 2, NULL, 1, 2),
(565, '3818', '2016-12-28', 'Dispõe sobre a disponibilidade de colocação de assentos nas casas loterias existentes no Município de Ilhéus e dá outras providências.', 2, NULL, 4, 2),
(566, '3819', '2016-12-28', 'Estabelece a obrigatoriedade de faixa de acesso e reserva de espaço para o tráfego de motocicleta nas vias públicas de grande circulação da cidade de Ilhéus.', 2, NULL, 10, 2),
(567, '3820', '2016-12-28', 'Dispõe sobre o projeto piloto de pagamento por serviços ambientais para produtores rurais, autorizando o Executivo a prestar apoio financeiro aos proprietários rurais e dá outras providências.', 2, NULL, NULL, 2),
(568, '3821', '2016-12-28', 'Dá nome a Ginásio de Esportes do distrito de Inema como GINÁSIO DE ESPORTES AZOR ANTONIO DOS SANTOS e dá outras providências.', 1, NULL, 19, 2),
(569, '3822', '2016-12-28', 'Dá nome a Ginásio de Esportes do Bairro do Basílio como GINÁSIO DE ESPORTES PEDRO FARIAS e dá outras providências.', 1, NULL, 11, 2),
(570, '3823', '2016-12-28', 'Altera a denominação do mirante do Canhão para Mirante da Fundação.', 1, NULL, 10, 2),
(571, '3824', '2016-12-28', 'Denominam-se os nomes das Ruas do Loteamento do parque das mangueiras na Av. Esperança e dá outras providências', 1, NULL, 3, 2),
(572, '3825', '2016-12-28', 'Reconhece de utilidade pública a Cooperativa de Serviços Sustentáveis da Bahia - COOPESSBA, CNPJ: 10.158.416/0001-96.', 1, NULL, 8, 2),
(573, '3826', '2016-12-28', 'Reconhece de utilidade pública a Igreja Assembléia de Deus Heróis da Fé.', 1, NULL, 14, 2),
(574, '3827', '2016-12-28', 'Institui o Programa Municipal de Reabilitação, Inclusão e Reinserção Social de Dependentes Químicos e Cria o Fundo Municipal de Reinserção Social e fixa outras providências.', 2, NULL, 8, 2),
(575, '3828', '2016-12-28', 'Dispõe sobre a criação dos “Para jogos”da cidade de Ilhéus e dá outras providências.', 2, NULL, 8, 2),
(576, '3829', '2016-12-28', 'Dispõe sobre a obrigatoriedade das Agências Bancárias disponibilizarem sanitários, bebedouros e assentos(cadeiras) para seus usuários no âmbito do Município de Ilhéus e fixa outras providências.', 2, NULL, 8, 2),
(577, '3830', '2016-12-28', 'Dispõe sobre a criação do Conselho Municipal dos Direitos das Pessoas com Deficiência e o Fundo Municipal das Pessoas com Deficiência e estabelece a Política Municipal das Pessoas com Deficiência no âmbito do Município de Ilhéus e fixa outras providências.', 2, NULL, 8, 2),
(578, '3831', '2016-12-28', 'Modifica o anexo do art. 3º da Lei 3.225 de 11 de Abril de 2006 , e dá outras providências', 2, NULL, NULL, 2),
(579, '3832', '2016-12-28', 'Cria o Programa Educacional para Conservação da Água e dá outras providências.', 2, NULL, 1, 2),
(580, '3833', '2016-12-28', 'Reconhece de utilidade pública a Associação Indígena Tupinambá do Acuípe do meio Dois - AITAM e dá outras providências.', 1, NULL, 5, 2),
(581, '3834', '2016-12-28', 'Reconhece de utilidade pública a Associação Instituto Marola - IMAR e dá outras providências.', 1, NULL, 18, 2),
(582, '3835', '2016-12-28', 'Dispõe sobre denominação de logradouro Público de Rua Sol e Mar.', 1, NULL, 17, 2),
(583, '3836', '2016-12-28', 'Institui o programa Escola Sustentável no Município de Ilhéus e dá outras providências.', 2, NULL, 3, 2),
(584, '3837', '2016-12-28', 'Cria o Dia Municipal Anti-Drogas e dá outras providências.', 1, NULL, NULL, 2),
(585, '3838', '2016-12-28', '"Dispõe sobre a expedição de receitas médicas e odontológicas digitadas e/ou datilografadas no Município de Ilhéus e dá outras providências."', 2, NULL, NULL, 2),
(586, '3839', '2016-12-28', 'Institui no calendário oficial do Município de Ilhéus “Semana da Família”, e dá outras providências.', 1, NULL, NULL, 2),
(587, '3840', '2016-12-28', 'Institui o Programa de Conscientização e Orientação sobre Síndrome de Down, e fixa outras providências.', 2, NULL, NULL, 2),
(588, '3841', '2016-12-28', 'Dá o nome da Rua L no loteamento Santo Antonio de Pádua do Bairro Hernane Sá, antiga FAELBA em frente ao CAIC e dá outras providências.', 1, NULL, NULL, 2),
(589, '3842', '2016-12-28', 'Institui no calendário de eventos do Município de Ilhéus, a ser comemorado na terceira semana do mês de abril, A Semana Municipal do Aleluia Ilhéus Festival, e dá outras providências.', 2, NULL, NULL, 2),
(590, '3843', '2016-12-28', 'Dá nova denominação as Escolas Nucleadas de Inema I para Escola Municipal José Antonio de Brito, e dá outras providências.', 1, NULL, NULL, 2),
(591, '3844', '2016-12-28', 'Dá nova denominação as Escolas Nucleadas de Inema II para Escola Municipal Doralice de Oliveira Braga, e dá outras providências.', 1, NULL, NULL, 2),
(592, '3845', '2016-12-28', 'Dispõe sobre a afixação de aviso nas unidades de saúde informando o direito do pai, da mãe ou do responsável de permanecer com seu filho em caso de internação hospitalar, conforme preconiza o Estatuto da Criança e do Adolescente.', 2, NULL, NULL, 2),
(593, '3846', '2016-12-28', 'Institui o Plano Municipal para a Humanização do Parto às Gestantes menores de idade no âmbito do sistema público de saúde de Ilhéus e dá outras providências.', 2, NULL, NULL, 2),
(594, '3847', '2016-12-28', 'Dá nova denominação a única travessa da Rua Radialista Evaldo Tabajara no bairro da Tapera, passando a se chamar travessa Radialista Evaldo Tabajara e dá outras providências.', 1, NULL, NULL, 2),
(595, '3848', '2016-12-28', 'Dispõe sobre a instalação de caixas de autoatendimento bancário adaptados para o uso por pessoas com deficiência no Município de Ilhéus e dá outras providências.', 2, NULL, NULL, 2),
(596, '3849', '2016-12-29', 'Dispõe sobre a venda, a oferta, o fornecimento, a entrega e a permissão do consumo de bebidas alcoólicas, mesmo que gratuitamente, aos menores de 18 anos no município de Ilhéus e dá outras providências.', 2, NULL, 4, 2),
(597, '3850', '2016-12-29', 'Dispõe sobre a obrigatoriedade da identificação dos veículos da frota o a serviço, bem como os imóveis próprios ou alugados dos órgãos da administração pública municipal e dá outras providências.', 2, NULL, 4, 2),
(598, '3851', '2016-12-29', 'Institui a obrigatoriedade de plotagem contendo o número da Licença Municipal em todos os veículos destinados ao transporte escolar no Município de Ilhéus e dá outras providências.', 2, NULL, 1, 2),
(599, '3852', '2016-12-29', 'Dispõe sobre o plano de prevenção a doenças do Município de Ilhéus e dá outras providências.', 2, NULL, 4, 2),
(600, '3853', '2016-12-29', 'Dá o nome de Rua ACONCHEGO à conhecida Rua Q no Loteamento Santo Antônio de Pádua do Bairro Hernane Sá, e dá outras providências.', 1, NULL, 18, 2),
(601, '3854', '2016-12-29', 'Dispõe sobre a fixação do subsídio dos vereadores para a legislatura 2017/2020 e dá outras providências.', 2, NULL, NULL, 2),
(602, '3855', '2016-12-29', 'Estima a receita e fixa a despesa do orçamento anual do município de Ilhéus para o exercício financeiro de 2017, e determina outras providências.', 2, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lei_impacto`
--

CREATE TABLE `lei_impacto` (
  `pk` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lei_impacto`
--

INSERT INTO `lei_impacto` (`pk`, `descricao`) VALUES
(1, 'Baixo Impacto'),
(2, 'Alto Impacto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lei_tema`
--

CREATE TABLE `lei_tema` (
  `pk` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lei_tema`
--

INSERT INTO `lei_tema` (`pk`, `descricao`) VALUES
(1, 'Administração'),
(2, 'Agricultura e Pesca'),
(3, 'Assistência Social'),
(4, 'Conselho de Políticas Públicas'),
(5, 'Desenvolvimento Urbano'),
(6, 'Dia Municipal'),
(7, 'Educação'),
(8, 'Fazenda'),
(9, 'Inclusão Social'),
(10, 'Indústria e Comércio'),
(11, 'Logradouro'),
(12, 'Plano Diretor e Uso do Solo'),
(13, 'Religião'),
(14, 'Saúde'),
(15, 'Segurança Pública'),
(16, 'Título de Utilidade Pública'),
(17, 'Trabalho'),
(18, 'Transparência'),
(19, 'Esporte'),
(20, 'Cultura'),
(21, 'Gabinete da Prefeitura'),
(22, 'Legislativo'),
(23, 'Meio Ambiente e Urbanismo'),
(24, 'Saneamento Básico'),
(25, 'Título de Cidadão'),
(26, 'Turismo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lei_tipo`
--

CREATE TABLE `lei_tipo` (
  `pk` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lei_tipo`
--

INSERT INTO `lei_tipo` (`pk`, `descricao`) VALUES
(1, 'Projeto de Lei'),
(2, 'Lei Aprovada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `partido`
--

CREATE TABLE `partido` (
  `pk` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `partido`
--

INSERT INTO `partido` (`pk`, `nome`) VALUES
(1, 'Partido Socialista Brasileiro - PSB'),
(2, 'Partido dos Trabalhadores - PT'),
(3, 'Partido Progressista - PP'),
(4, 'Partido Democrático Trabalhista - PDT'),
(5, 'Partido Social Cristao-PSC'),
(6, 'Partido da Mobilização Nacional - PMN'),
(7, 'Partido Republicano Brasileiro - PRB'),
(8, 'Partido do Movimento Democrático Brasileiro - PMDB'),
(9, 'Partido Comunista do Brasil - PC do B'),
(10, 'Partido Popular Socialista - PPS'),
(11, 'Partido Social Cristão - PSC'),
(12, 'Partido Social Democrático  - PSD');

-- --------------------------------------------------------

--
-- Estrutura da tabela `presenca_vereador`
--

CREATE TABLE `presenca_vereador` (
  `pk` int(11) NOT NULL,
  `qtd_presencas` int(11) NOT NULL DEFAULT '0',
  `qtd_faltas` int(11) NOT NULL DEFAULT '0',
  `fk_vereador` int(11) NOT NULL,
  `fk_ano_exercicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `presenca_vereador`
--

INSERT INTO `presenca_vereador` (`pk`, `qtd_presencas`, `qtd_faltas`, `fk_vereador`, `fk_ano_exercicio`) VALUES
(1, 41, 26, 1, 1),
(2, 51, 16, 2, 1),
(3, 60, 7, 3, 1),
(4, 57, 10, 4, 1),
(5, 63, 4, 5, 1),
(6, 53, 14, 6, 1),
(7, 51, 16, 7, 1),
(8, 65, 2, 8, 1),
(9, 66, 1, 9, 1),
(10, 64, 3, 11, 1),
(11, 58, 9, 12, 1),
(12, 63, 4, 20, 1),
(13, 58, 9, 13, 1),
(14, 60, 7, 14, 1),
(15, 58, 9, 15, 1),
(16, 51, 16, 16, 1),
(17, 62, 5, 17, 1),
(18, 62, 5, 18, 1),
(19, 41, 26, 19, 1),
(20, 37, 30, 1, 2),
(21, 46, 21, 2, 2),
(22, 63, 4, 3, 2),
(23, 55, 12, 4, 2),
(24, 57, 10, 5, 2),
(25, 37, 30, 6, 2),
(26, 50, 17, 7, 2),
(27, 65, 2, 8, 2),
(28, 59, 8, 9, 2),
(29, 59, 8, 11, 2),
(30, 43, 24, 12, 2),
(31, 58, 9, 20, 2),
(32, 51, 16, 13, 2),
(33, 53, 14, 14, 2),
(34, 36, 31, 15, 2),
(35, 47, 20, 16, 2),
(36, 55, 12, 17, 2),
(37, 57, 10, 18, 2),
(38, 56, 11, 19, 2),
(39, 38, 30, 1, 3),
(40, 45, 21, 2, 3),
(41, 55, 4, 3, 3),
(42, 52, 12, 4, 3),
(43, 54, 10, 5, 3),
(44, 45, 30, 6, 3),
(45, 39, 17, 7, 3),
(46, 59, 2, 8, 3),
(47, 59, 8, 9, 3),
(48, 46, 8, 11, 3),
(49, 28, 24, 12, 3),
(50, 59, 9, 20, 3),
(51, 54, 16, 13, 3),
(52, 43, 14, 14, 3),
(53, 39, 31, 15, 3),
(54, 41, 20, 16, 3),
(55, 49, 12, 17, 3),
(56, 51, 10, 18, 3),
(57, 54, 11, 19, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vereador`
--

CREATE TABLE `vereador` (
  `pk` int(11) NOT NULL,
  `nome` varchar(90) NOT NULL,
  `data_nascimento` date NOT NULL,
  `naturalidade` varchar(90) NOT NULL,
  `fk_estado_civil` int(11) NOT NULL,
  `fk_escolaridade` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vereador`
--

INSERT INTO `vereador` (`pk`, `nome`, `data_nascimento`, `naturalidade`, `fk_estado_civil`, `fk_escolaridade`, `foto`) VALUES
(1, 'Aldemir Santos Almeida', '1955-12-22', 'Itaquara/BA', 2, 5, NULL),
(2, 'Alisson Ramos Mendonça', '1963-12-15', 'Ilhéus/BA', 2, 6, NULL),
(3, 'Alzimário Belmonte Vieira', '1962-11-11', 'Ilhéus/BA', 2, 5, NULL),
(4, 'Cosme Araujo Santos', '1953-10-10', 'Ilhéus/BA', 2, 5, NULL),
(5, 'Fabio ferreira Menezes', '1978-03-11', 'Ilhéus/BA', 1, 3, NULL),
(6, 'Gildeon Farias dos Santos', '1966-07-11', 'Santa Maria da Vitória/BA', 1, 3, NULL),
(7, 'Gilmar Chaves Sodré', '1965-12-01', 'Ilhéus/BA', 2, 2, NULL),
(8, 'Ivo Evangelista dos Santos', '1965-11-09', 'Ilhéus/BA', 2, 6, NULL),
(9, 'James Costa', '1968-11-28', 'Ilhéus/BA', 3, 3, NULL),
(10, 'Jamil Chagouri Ocké', '1963-07-08', 'Ilhéus/BA', 2, 5, NULL),
(11, 'Jose Raimundo Lima Bomfim', '1963-10-03', 'Ilhéus/BA', 2, 2, NULL),
(12, 'Josevaldo Viana Machado', '1967-11-05', 'Ilhéus/BA', 1, 5, NULL),
(13, 'Lukas Pinheiro Paiva', '1980-04-11', 'Ilhéus/BA', 1, 3, NULL),
(14, 'Nerival Nascimento Reis', '1964-01-01', 'Ilhéus/BA', 1, 4, NULL),
(15, 'Rafael Mendonça Albuquerque Benevides', '1977-04-02', 'Ilhéus/BA', 3, 5, NULL),
(16, 'Roland Lavigne do Nascimento', '1962-04-28', 'Una/BA', 2, 5, NULL),
(17, 'Roque Eduardo Cavalcante de Matos', '1959-08-16', 'Ilhéus/BA', 2, 3, NULL),
(18, 'Tarcisio Santos da Paixão', '1973-05-10', 'Ilhéus/BA', 2, 6, NULL),
(19, 'Valmir Freitas do Nascimento', '1963-07-01', 'Itabuna/BA', 2, 1, NULL),
(20, 'Luiz Carlos dos Santos', '1975-01-08', 'Ilhéus/BA', 1, 5, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vereador_has_ano_exercicio`
--

CREATE TABLE `vereador_has_ano_exercicio` (
  `pk` int(11) NOT NULL,
  `fk_vereador` int(11) NOT NULL,
  `fk_ano_exercicio` int(11) NOT NULL,
  `fk_partido` int(11) NOT NULL,
  `num_total_votos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vereador_has_ano_exercicio`
--

INSERT INTO `vereador_has_ano_exercicio` (`pk`, `fk_vereador`, `fk_ano_exercicio`, `fk_partido`, `num_total_votos`) VALUES
(1, 1, 1, 1, 1571),
(2, 2, 1, 2, 1854),
(3, 3, 1, 3, 1856),
(4, 4, 1, 4, 1231),
(5, 5, 1, 5, 2271),
(6, 6, 1, 2, 1985),
(7, 7, 1, 3, 2039),
(8, 8, 1, 7, 1222),
(9, 9, 1, 6, 1359),
(10, 10, 1, 3, 1127),
(11, 11, 1, 8, 1164),
(12, 12, 1, 9, 1126),
(13, 13, 1, 6, 1612),
(14, 14, 1, 9, 1078),
(15, 15, 1, 3, 1216),
(16, 16, 1, 10, 1383),
(17, 17, 1, 11, 1168),
(18, 18, 1, 12, 1200),
(19, 19, 1, 2, 1889),
(20, 20, 1, 3, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ano_exercicio`
--
ALTER TABLE `ano_exercicio`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `escolaridade`
--
ALTER TABLE `escolaridade`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `lei`
--
ALTER TABLE `lei`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `idx_lei_impacto` (`fk_impacto`),
  ADD KEY `idx_lei_tema` (`fk_tema`),
  ADD KEY `idx_lei_vereador` (`fk_vereador`),
  ADD KEY `idx_lei_tipo` (`fk_lei_tipo`);

--
-- Indexes for table `lei_impacto`
--
ALTER TABLE `lei_impacto`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `lei_tema`
--
ALTER TABLE `lei_tema`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `lei_tipo`
--
ALTER TABLE `lei_tipo`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `presenca_vereador`
--
ALTER TABLE `presenca_vereador`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `idx_presenca_vereador` (`fk_vereador`),
  ADD KEY `idx_presenca_ano_exercicio` (`fk_ano_exercicio`);

--
-- Indexes for table `vereador`
--
ALTER TABLE `vereador`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `idx_vereador_estado_civil` (`fk_estado_civil`),
  ADD KEY `idx_vereador_escolaridade` (`fk_escolaridade`);

--
-- Indexes for table `vereador_has_ano_exercicio`
--
ALTER TABLE `vereador_has_ano_exercicio`
  ADD PRIMARY KEY (`pk`),
  ADD KEY `idx_vhm_vereador` (`fk_vereador`),
  ADD KEY `idx_vhm_mandato` (`fk_ano_exercicio`),
  ADD KEY `idx_vhm_partido` (`fk_partido`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ano_exercicio`
--
ALTER TABLE `ano_exercicio`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `escolaridade`
--
ALTER TABLE `escolaridade`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lei`
--
ALTER TABLE `lei`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;
--
-- AUTO_INCREMENT for table `lei_impacto`
--
ALTER TABLE `lei_impacto`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lei_tema`
--
ALTER TABLE `lei_tema`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `lei_tipo`
--
ALTER TABLE `lei_tipo`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `partido`
--
ALTER TABLE `partido`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `presenca_vereador`
--
ALTER TABLE `presenca_vereador`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `vereador`
--
ALTER TABLE `vereador`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `vereador_has_ano_exercicio`
--
ALTER TABLE `vereador_has_ano_exercicio`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `lei`
--
ALTER TABLE `lei`
  ADD CONSTRAINT `lei_ibfk_1` FOREIGN KEY (`fk_impacto`) REFERENCES `lei_impacto` (`pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lei_ibfk_2` FOREIGN KEY (`fk_tema`) REFERENCES `lei_tema` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lei_ibfk_3` FOREIGN KEY (`fk_vereador`) REFERENCES `vereador` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lei_ibfk_4` FOREIGN KEY (`fk_lei_tipo`) REFERENCES `lei_tipo` (`pk`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `presenca_vereador`
--
ALTER TABLE `presenca_vereador`
  ADD CONSTRAINT `const_presenca_vereador_ano_exercicio` FOREIGN KEY (`fk_ano_exercicio`) REFERENCES `ano_exercicio` (`pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presenca_vereador_ibfk_1` FOREIGN KEY (`fk_vereador`) REFERENCES `vereador` (`pk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vereador`
--
ALTER TABLE `vereador`
  ADD CONSTRAINT `vereador_ibfk_1` FOREIGN KEY (`fk_escolaridade`) REFERENCES `escolaridade` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vereador_ibfk_2` FOREIGN KEY (`fk_estado_civil`) REFERENCES `estado_civil` (`pk`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vereador_has_ano_exercicio`
--
ALTER TABLE `vereador_has_ano_exercicio`
  ADD CONSTRAINT `vereador_has_ano_exercicio_ibfk_1` FOREIGN KEY (`fk_vereador`) REFERENCES `vereador` (`pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vereador_has_ano_exercicio_ibfk_2` FOREIGN KEY (`fk_ano_exercicio`) REFERENCES `ano_exercicio` (`pk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vereador_has_ano_exercicio_ibfk_3` FOREIGN KEY (`fk_partido`) REFERENCES `partido` (`pk`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
