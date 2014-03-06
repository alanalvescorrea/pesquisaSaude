-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.24-log
-- Versão do PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `pesquisasaude`
--
CREATE DATABASE `pesquisasaude` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `pesquisasaude`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE IF NOT EXISTS `servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_servico` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `setor` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `andar` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `responsavel` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ramal` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `referencia` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `obs` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=156 ;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome_servico`, `setor`, `andar`, `responsavel`, `ramal`, `referencia`, `obs`) VALUES
(11, 'Ecodoppler', 'Agendamento de exames', 'Térreo', 'Mel, Luana e Sandra', '302', 'Ao lado da odonto', ''),
(12, 'Ecografia transvaginal', 'Agendamento de Exames', 'Térreo', 'Mel, Luana e Sandra', '302', 'Ao lado da odonto', ''),
(13, 'Rx em geral (qualquer radiografia, exeto odontologica)', 'Agendamento de Exames', 'térreo', 'Mel, Luana e Sandra', '302', 'Ao lado da odonto', ''),
(14, 'Tomografia (agendamento)', 'Agendamento de exames', 'térreo', 'Mel, Luana e Sandra', '302', 'Ao lado da odonto', ''),
(15, 'Exames de laboratorio (agendamento laboratorial)', 'Agendamento de exames', 'térreo', 'Mel, Sandra e Luana', '302', 'Ao lado da odonto', ''),
(16, 'Fisioterapia (agendamento)', 'Agendamento de Exames', 'térreo', 'Mel, Sandra e Luana', '302', 'Ao lado da odonto', ''),
(17, 'Endoscopia (agendamento)', 'Agendamento de exames', 'térreo', 'Mel, Sandra e Luana', '302', 'Ao lado da odonto', ''),
(18, 'Densitometria ossea', 'Agendamento de exames', 'térreo', 'Mel, Sandra e Luana', '302', 'Ao lado da odonto', ''),
(19, 'Colonoscopia (agendamento)', 'Agendamento de exames', 'térreo', 'Luana, Mel e Sandra', '302', 'ao lado da odonto', ''),
(20, 'Tuberculose (diagnostico, tratamento e medicamento)', 'Sala 10', 'térreo', 'Márcia Gamba', '305', 'Corredor contrario a farmacia municipal', ''),
(21, 'HIV e AIDS (diagnostico, tratamento e medicacao)', 'Sala 10', 'Térreo', 'Márcia Gamba', '305', 'Corredor contrario a farmácia municipal', ''),
(22, 'Si­filis/VDRLs (diagnostico, tratamento)', 'Sala 10', 'Térreo', 'Márcia Gamba', '305', 'Corredor contrario a farmacia municipal', ''),
(23, 'Testes rapidos (HIV, AIDS, Sifilis/VDRLs, Hepatite B, Hepatite C)', 'Sala 10', 'Térreo', 'Márcia Gamba', '305', 'Corredor contrario a farmacia municipal', ''),
(24, 'Cafe com gestantes', 'Sala 10', 'Térreo', 'Márcia Gamba', '305', 'Corredor contrario a farmacia municipal', ''),
(25, 'SCNES, SIA, SIAB, FPO, BPA, Modulo transmissor, MAC, PAB (faturamento)', 'Coordenação administrativa', 'térreo', 'Alan', '302 ou 333', 'Sala do Márcio (coordenador do posto central)', ''),
(26, 'SCNES (Cadastro de estabelecimentos, clinicas e profissionais de saude)', 'Coordenção administrativa', 'Térreo', 'Alan', '302 ou 333', 'Sala do Márcio (coordenador administrativo do posto central)', ''),
(27, 'Anticoncepcional oral', 'Sala das enfermeiras/Epidemio', '1', 'Ediane, Tailete, Zoraida', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(28, 'Anticoncepcional injetavel', 'Sala das enfermeitas/Epidemio', '1', 'Tailete, Zoraida e Ediane', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(29, 'DIU (Dispositivo Intra Uterino)', 'Sala das enfermeiras/Epidemio', '1', 'Ediane, Zoraida e Tailete', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(30, 'Vasectomia', 'Sala das enfermeiras/Epidemio', '1', 'Tailete, Ediane e Zoraida', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(31, 'Laqueadura', 'Sala das enfermeiras/Epidemio', '1', 'Tailete, Zoraida e Ediane', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(32, 'Coleta citopatologico do colo do utero (exame)', 'Sala das enfermeiras/Epidemio', '1', 'Tailete, Zoraida e Ediane', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(33, 'Pre-natal, prenatal, pre natal', 'Sala das enfermeiras/Epidemio', '1', 'Tailete, Zoraida e Ediane', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(34, 'Teste do pezinho', 'Sala das enfermeiras/Epidemio', '1', 'Tailete, Zoraida e Ediane', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(35, 'Bolsas Colostomia e Urostomia', 'Sala das enfermeiras/Epidemio', '1', 'Ediane, Tailete e Zoraida', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(36, 'SISPRENATAL (sis prenatal)', 'Sala das enfermeiras/Epidemio', '1', 'Tailete, Zoraida e Ediane', '327', 'Em frente a assessoria da Secretaria de Saúde', ''),
(37, 'Cateterismo', 'Marcação Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado do Eletrocardiograma', ''),
(38, 'Ecocardio com doppler', 'Marcação Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado Eletrocardiograma', ''),
(39, 'Ecocardio fetal', 'Marcação Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado do eletrocardiograma', ''),
(40, 'Teste ergometrico (teste de esforco, teste esteira)', 'Marcação Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado do eletrocardiograma', ''),
(41, 'Audiometria', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado do eletrocardiograma', ''),
(42, 'Cintilografia ossea', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado do eletrocardiograma', ''),
(43, 'Cintilografia renal', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado do eletrocardiograma', ''),
(44, 'Cintilografia do miocardio', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado do eletrocardiograma', ''),
(45, 'Cintilografia de tireoide', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'Ao lado do eletrocardiograma', ''),
(46, 'Mamografia', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(47, 'Eletroneuromiografia', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(48, 'Ressonancia', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(49, 'Histerossalpingografia', 'Marcação para Porto Alegre', '1', 'Fernanda, Rosi, Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(50, 'Ecografia transvaginal com doppler', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda, Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(51, 'Ecografia morfologica', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda, Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(52, 'Vectoeletronistagmografia ', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa, Fernanda', '325', 'ao lado do eletrocardiograma', ''),
(53, 'Gasometria', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa, Fernanda', '325', 'ao lado do eletrocardiograma', ''),
(54, 'Polissonografia', 'Marcação para Porto Alegre', '1', 'Marcação para Porto Alegre', '325', 'ao lado do eletrocardiograma', ''),
(55, 'Videolaringoscopia ', 'Marcação para Porto Alegre', '1', 'Fernanda, Vanessa, Rosi', '325', 'ao lado do eletrocardiograma', ''),
(56, 'BERA (Potencial Evocado Auditivo do Tronco Encefalico)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda, Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(57, 'Ecodoppler das arterias renais', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda, Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(58, 'Urografia excretora', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa, Fernanda', '325', 'ao lado do eletrocardiograma', ''),
(59, 'Campimetria (Campo de visao)', 'Marcação para Porto Alegre', '1', 'Fernanda, Rosi, Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(60, 'Papilografia', 'Marcação para Porto Alegre', '1', 'Vanessa, Rosi, Fernanda', '325', 'ao lado do eletrocardiograma', ''),
(61, 'Topografia corneana', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda, Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(62, 'Ecografia Ocular', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda, Vanessa', '325', 'ao lado do eletrocardiograma', ''),
(63, 'Cirurgia ambulatorial', 'Hospital São Vicente de Paulo (Osório)', 'Hospital São Vicente de Paulo (Osório)', 'Selair', '3663 3377', 'em frente a recepção', ''),
(64, 'Ecografia mamaria', 'Agendamento de Exames', 'térreo', 'Mel, Sandra e Luana', '302', 'ao lado da odonto', ''),
(65, 'Ecografia abdominal total', 'Agendamento de exames', 'Térreo', 'Mel, Luana e Sandra', '302', 'ao lado da odonto', ''),
(66, 'Ecografia abdominal superior', 'Agendamento de exames', 'Térreo', 'Luana, Sandra e Mel', '302', 'ao lado da odonto', ''),
(67, 'Ecografia vias urinarias', 'Agendamento de exames', 'Térreo', 'Mel, Sandra e Luana', '302', 'ao lado da odonto', ''),
(68, 'Ecografia pelvica', 'Agendamento de exames', 'Térreo', 'Mel, Luana e Sandra', '302', 'ao lado da odonto', ''),
(69, 'Ecografia vias biliares', 'Agendamento de exames', 'Térreo', 'Luana, Sandra e Mel', '302', 'ao lado da odonto', ''),
(70, 'Ecografia da prostata (prostatica)', 'Agendamento de exames', 'Térreo', 'Luana, Mel e Sandra', '302', 'ao lado da odonto', ''),
(71, 'Ecografia de figado', 'Agendamento de exames', 'térreo', 'Luana, Sandra e Mel', '302', 'ao lado da odonto', ''),
(72, 'Fisioterapia domiciliar', 'Secretaria de Saúde', '1', 'Nara Raquel ou Alessandra', '322', 'Ir na recepção da secretaria (agendamento de transporte)', ''),
(73, 'Teste da orelhinha (bebê de 0 a 30 dias)', 'Fonoaudiologia', 'térreo', 'Celina', '306 (triagem) ou 331 (recepção consultas)', 'consultorio em frente a triagem clinica)', ''),
(74, 'Teste da linguinha (30 dias a 6 meses)', 'fonoaudiologia', 'térreo', 'Alessandra Stenzel Petrucci e Ana Paula de Carvalho Sudbrack', '306 (triagem clínica) ou 331 (recepção de consultas)', 'consultorio em frente a triagem cli­nica)', ''),
(75, 'Solicitacao de fraldas (apenas para adultos)', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmacia do estado', ''),
(76, 'Oxigenio domiciliar', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmarcia do estado', ''),
(77, 'Proteses e orteses', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmacia do estado', ''),
(78, 'Cadeira de rodas (emprestimos e doacoes)', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmacia do estado', ''),
(79, 'Muletas (emprestimos e doacoes)', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmacia do estado', ''),
(80, 'Andador', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmacia do estado', ''),
(82, 'Passe livre municipal (pessoas com deficiencia)', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmacia do estado', ''),
(83, 'Carteira intermunicipal e Insterestadual (passe livre)', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmacia do estado', ''),
(84, 'Cardiologista infantil', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(85, 'Cirurgia plastica (adulto e pediatrico)', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa, Fernanda', '325', 'ao lado do DTI', ''),
(86, 'Cirurgia aparelho digestivo', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa, Fernanda', '325', 'ao lado do DTI', ''),
(87, 'Cirurgia geral (adulto e pediatrico)', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa, Fernanda', '325', 'ao lado do DTI', ''),
(88, 'Cirurgia obesidade morbida (reducao de estomago)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda, Vanessa', '325', 'ao lado do DTI', ''),
(89, 'Cirurgia toraxica (adulto e pediatrico)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(90, 'Cirurgia Vascular (doenca arterial)', 'Marcação para Porto Alegre', '1', 'Vanessa, Rosi, Fernanda', '325', 'ao lado do DTI', ''),
(91, 'Cirurgia vascular (varizes)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(92, 'Doenca do trabalho', 'Marcação para Porto Alegre', '1', 'Fernanda, Vanessa e Rosi', '325', 'ao lado do DTI', ''),
(93, 'Endocrinologia ', 'Marcação para Porto Alegre', '1', 'Fernanda, Rosi, e Vanessa', '325', 'ao lado do DTI', ''),
(94, 'Estomatologista', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(95, 'Genetica', 'Marcação para Porto Alegre', '1', 'Fernanda, Rosi e Vanessa', '325', 'ao lado do DTI', ''),
(96, 'Histeroscopia', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa e Fernanda', '325', 'ao lado do DTI', ''),
(97, 'Laparoscopia', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(98, 'Ginecologista (cirurgico)', 'Marcação para Portl Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(99, 'Infertilidade (Ginecologista)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(100, 'Ginecologista Mama', 'Marcação para Porto Alegre', '1', 'rosi', '325', 'ao lado do DTI', ''),
(101, 'Hematologista', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(102, 'Imunologista (imunologia)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(103, 'Infectologista', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa e Fernanda', '325', 'ao lado do DTI', ''),
(104, 'Medicina Interna', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(105, 'Nefrologista', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa e Fernanda', '325', 'ao lado do DTI', ''),
(106, 'Neurologista (epilepsia) ', 'Marcação para Porto Alegre', '1', 'Rosi, Vanessa e Fernanda', '325', 'ao lado do DTI', ''),
(107, 'Neurologista (cirurgia, neurocirurgiao)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(108, 'Reabilitacao Visual', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(109, 'Oncologista (oncologia)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(110, 'Radioterapia', 'Marcação para Porto Alegre', '1', 'Fernanda, Vanessa e Rosi', '325', 'ao lado do DTI', ''),
(111, 'Quimioterapia', 'Marcação para Porto Alegre', '1', 'Vanessa, Rosi, Fernanda', '325', 'ao lado do DTI', ''),
(112, 'Cirurgia gastro intestinal', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(113, 'Pre-natal de alto risco (prenatal, pre natal)', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(114, 'Proctologista', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(115, 'Reumatologista', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(116, 'Urologista', 'Marcação para Porto Alegre', '1', 'Rosi, Fernanda e Vanessa', '325', 'ao lado do DTI', ''),
(118, 'Periodontia', 'Odontologia', 'térreo', 'Recepção da odontolgia', '332', 'ao lado do agendamento de exames', ''),
(119, 'Cirurgia e traumatologia buco-maxilo-facial', 'Odontologia', 'térreo', 'Recepção odontologia', '332', 'ao lado do agendamento de exames', ''),
(120, 'Endodontia', 'Odontologia', '1', 'Recepção odontologia', '332', 'ao lado do agendamento de exames', ''),
(121, 'Protese dentaria', 'Odontologia', 'térreo', 'recepção odontologia', '332', 'ao lado da marcação de exames', ''),
(122, 'Odontopediatria', 'Odontologia', 'térro', 'Recepção odontologia', '332', 'ao lado do agendamento de exames', ''),
(123, 'Eletroencefalograma (EEG)', 'Recepção de consultas', 'térreo', 'Auxiliar administrativo', '330 ou 331', 'Consultórios clí­nicos', ''),
(124, 'Eletrocardiograma (ECG)', 'Recepção de consultas', 'térreo', 'Auxiliar administrativo', '330 ou 331', 'Consultórios clínicos', ''),
(125, 'Rx panoramico (apenas particular/radiografia odontologica)', 'Odontologia', 'térreo', 'Recepção odontologia', '332', 'ao lado do agendamento de exames', ''),
(126, 'Rx Periapical (radiografia odontologica)', 'Odontologia', 'térreo', 'recepção da odonto', '332', 'ao lado do agendamento de exames', ''),
(127, 'Rx Bitewing, Bite wing, Bite-wing (radiografia odontologica)', 'Odontologia', 'térreo', 'Recepção Odonto', '332', 'ao lado do agendamento de exames', ''),
(128, 'Rx oclusal (radiografia odontologica)', 'Odontologia', 'térreo', 'recepção odonto', '332', 'ao lado do agendamento de exames', ''),
(130, 'Oculos (doacao)', 'Serviço Social', '1', 'Denise Colombo', '317', 'em frente a farmácia do estado', ''),
(131, 'Limpeza de terrenos baldios, sujos e com mato alto', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(132, 'Esgoto a ceu aberto', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(133, 'Aves e animais perimetro urbano', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(134, 'Animais de grande porte soltos nas vias publicas (rua)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(135, 'Irregularidade no comercio de alimentos e estabelecimentos de interesse a saude', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(136, 'Denuncia e reclamacoes (terrenos baldios)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(137, 'Denuncia e reclamacoes (esgoto ceu aberto)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(138, 'Denuncia e reclamacoes (criacao aves e animais no perimetro urbano)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(139, 'Denuncia e reclamacoes (comercio de alimentos, clinicas, escolas, academias)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(140, 'Aplicacao de inseticida (pulgas e carrapatos)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(141, 'Aplicacao de inseticida FOG (mosquitos)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(142, 'Recolhimento de caes/cachorros (apenas doentes ou agressivos)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(143, 'Fornecimento de anticoncepcional para cadelas e gatas', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(144, 'Aplicacao de veneno (ratos)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(145, 'Distribuicao de BTI (mosquito/borrachudo)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(146, 'Fiscalizacao (comercio de alimentos e empresas em geral)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(147, 'Visitas (controle do mosquito da dengue)', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(148, 'Fornecimento de alvara sanitario atualizado', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(149, 'Licenca sanitaria', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(150, 'Orientações sobre amostras de agua para consumo humano', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(151, 'Fornecimento de hipoclorito de sodio', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(152, 'Relatorios de medicamentos controlados das drogarias', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(153, 'Abertura de processo para solicitacao de receituario B e C', 'Vigilância Sanitária', '1', 'Solange, Michele ou Anne', '315 ou 316', 'ao lado do refeitório', ''),
(154, 'Agendamento de exames de laboratorio em geral (sangue/hemograma, urina/EQU, fezes)', 'Marcação de exames', 'térreo', 'Sandra, Mel e Luana', '302', 'ao lado da odonto', ''),
(155, 'Agendamento de transporte para Porto Alegre (carro, van, microonibus)', 'Agendamento de transporte', '1', 'Silvana', '318 ou 319', 'anexo a secretaria de saúde', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
