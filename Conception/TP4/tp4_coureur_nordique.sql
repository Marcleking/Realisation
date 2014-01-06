-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 12 Décembre 2013 à 09:22
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `tp3_coureur_nordique`
--

-- --------------------------------------------------------

--
-- Structure de la table `ancienhoraire`
--

CREATE TABLE IF NOT EXISTS `ancienhoraire` (
  `idAncienHoraire` int(11) NOT NULL,
  `noEmploye` int(11) NOT NULL,
  `nbHeuresTravaille` int(11) DEFAULT NULL,
  `nbHeuresAssigne` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAncienHoraire`,`noEmploye`),
  KEY `fk_AncienHoraire_Employe1_idx` (`noEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ancienhoraire`
--

INSERT INTO `ancienhoraire` (`idAncienHoraire`, `noEmploye`, `nbHeuresTravaille`, `nbHeuresAssigne`) VALUES
(1, 1, 15, 30),
(1, 2, 30, 30),
(1, 3, 25, 20),
(2, 1, 20, 20),
(2, 2, 30, 30);

-- --------------------------------------------------------

--
-- Structure de la table `destinataire`
--

CREATE TABLE IF NOT EXISTS `destinataire` (
  `idArticleLue` int(11) NOT NULL AUTO_INCREMENT,
  `dateLecture` date NOT NULL,
  `idMessage` int(11) NOT NULL,
  `noEmploye` int(11) NOT NULL,
  PRIMARY KEY (`idArticleLue`),
  KEY `fk_ArticleLu_Article1_idx` (`idMessage`),
  KEY `fk_Destinataire_Employe1_idx` (`noEmploye`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `destinataire`
--

INSERT INTO `destinataire` (`idArticleLue`, `dateLecture`, `idMessage`, `noEmploye`) VALUES
(1, '2014-08-10', 88, 35),
(2, '2013-12-29', 2, 32),
(3, '2013-04-19', 26, 25),
(4, '2014-11-02', 65, 19),
(5, '2014-03-26', 95, 28),
(6, '2014-05-09', 92, 18),
(7, '2013-08-23', 43, 16),
(8, '2014-09-21', 56, 15),
(9, '2013-09-01', 97, 12),
(10, '2013-11-23', 13, 10),
(11, '2014-08-29', 24, 11),
(12, '2013-02-02', 96, 20),
(13, '2013-03-14', 41, 17),
(14, '2014-09-23', 74, 19),
(15, '2014-04-02', 87, 16),
(16, '2013-05-14', 28, 26),
(17, '2013-07-10', 45, 11),
(18, '2013-02-05', 65, 25),
(19, '2013-05-15', 100, 11),
(20, '2013-05-19', 24, 33),
(21, '2013-04-26', 8, 6),
(22, '2014-06-07', 45, 18),
(23, '2014-10-07', 59, 1),
(24, '2013-03-07', 91, 20),
(25, '2013-07-31', 35, 1),
(26, '2013-04-18', 83, 21),
(27, '2012-12-16', 33, 28),
(28, '2013-06-21', 13, 26),
(29, '2013-06-17', 26, 31),
(30, '2013-11-17', 26, 5),
(31, '2013-08-22', 32, 19),
(32, '2013-02-16', 86, 27),
(33, '2012-12-21', 83, 18),
(34, '2014-05-16', 46, 29),
(35, '2013-07-10', 80, 25),
(36, '2013-05-30', 75, 31),
(37, '2013-08-19', 84, 7),
(38, '2014-08-31', 37, 15),
(39, '2014-03-03', 20, 10),
(40, '2013-09-19', 98, 19),
(41, '2013-06-23', 30, 29),
(42, '2013-03-02', 12, 22),
(43, '2013-01-26', 59, 9),
(44, '2013-02-23', 35, 30),
(45, '2013-08-03', 11, 21),
(46, '2014-04-09', 96, 15),
(47, '2014-09-18', 13, 29),
(48, '2013-06-13', 18, 34),
(49, '2013-05-20', 31, 22),
(50, '2014-11-09', 76, 4),
(51, '2012-12-02', 32, 18),
(52, '2014-11-11', 97, 6),
(53, '2013-09-02', 70, 12),
(54, '2013-02-04', 58, 32),
(55, '2014-04-13', 61, 20),
(56, '2014-10-27', 44, 32),
(57, '2013-11-04', 36, 20),
(58, '2013-07-24', 52, 33),
(59, '2014-07-14', 79, 31),
(60, '2014-03-21', 77, 32),
(61, '2014-08-15', 46, 26),
(62, '2013-04-12', 30, 21),
(63, '2014-07-29', 54, 17),
(64, '2013-05-14', 53, 30),
(65, '2013-08-01', 10, 11),
(66, '2013-06-08', 95, 15),
(67, '2013-01-14', 79, 32),
(68, '2013-07-29', 58, 17),
(69, '2013-11-28', 25, 6),
(70, '2013-12-23', 38, 30),
(71, '2013-12-15', 70, 29),
(72, '2014-06-09', 76, 2),
(73, '2012-12-02', 36, 10),
(74, '2013-02-04', 99, 5),
(75, '2013-10-16', 13, 27),
(76, '2013-12-28', 3, 21),
(77, '2014-09-28', 48, 12),
(78, '2013-09-27', 17, 1),
(79, '2013-09-04', 80, 25),
(80, '2013-05-23', 86, 32),
(81, '2014-06-15', 99, 28),
(82, '2014-03-18', 31, 27),
(83, '2013-03-06', 71, 31),
(84, '2013-02-23', 26, 34),
(85, '2013-08-29', 3, 23),
(86, '2014-06-09', 81, 26),
(87, '2013-08-29', 45, 20),
(88, '2014-08-04', 78, 29),
(89, '2013-10-09', 83, 27),
(90, '2013-12-18', 95, 34),
(91, '2014-07-22', 52, 35),
(92, '2013-10-21', 54, 35),
(93, '2014-10-11', 30, 25),
(94, '2014-11-26', 1, 4),
(95, '2014-06-10', 40, 30),
(96, '2014-06-12', 99, 14),
(97, '2013-04-15', 65, 11),
(98, '2014-05-18', 15, 13),
(99, '2013-09-23', 17, 15),
(100, '2014-03-08', 31, 7);

-- --------------------------------------------------------

--
-- Structure de la table `disponibilitejours`
--

CREATE TABLE IF NOT EXISTS `disponibilitejours` (
  `idDispoJours` int(11) NOT NULL AUTO_INCREMENT,
  `jour` varchar(10) NOT NULL,
  `heureDebut` time DEFAULT NULL,
  `heureFin` time DEFAULT NULL,
  `idDispoSemaine` int(11) NOT NULL,
  PRIMARY KEY (`idDispoJours`),
  KEY `fk_DisponibiliteJours_DisponibiliteSemaine_idx` (`idDispoSemaine`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `disponibilitejours`
--

INSERT INTO `disponibilitejours` (`idDispoJours`, `jour`, `heureDebut`, `heureFin`, `idDispoSemaine`) VALUES
(1, 'lundi', '09:00:00', '12:00:00', 1),
(2, 'mardi', '13:00:00', '18:00:00', 1),
(3, 'Mercredi', '09:00:00', '16:00:00', 2),
(4, 'Jeudi', '09:00:00', '16:00:00', 2),
(5, 'Vendredi', '09:00:00', '16:00:00', 2),
(6, 'Samedi', '09:00:00', '16:00:00', 2),
(7, 'Dimanche', '09:00:00', '16:00:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `disponibilitesemaine`
--

CREATE TABLE IF NOT EXISTS `disponibilitesemaine` (
  `idDispoSemaine` int(11) NOT NULL,
  `noDispoSemaine` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `nbHeureSouhaite` int(11) NOT NULL,
  `refIdSemaineACopier` int(11) DEFAULT '-1',
  `noEmploye` int(11) NOT NULL,
  PRIMARY KEY (`idDispoSemaine`,`noEmploye`),
  KEY `fk_DisponibiliteSemaine_Employe1_idx` (`noEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `disponibilitesemaine`
--

INSERT INTO `disponibilitesemaine` (`idDispoSemaine`, `noDispoSemaine`, `annee`, `nbHeureSouhaite`, `refIdSemaineACopier`, `noEmploye`) VALUES
(1, 1, 2013, 21, -1, 1),
(2, 2, 2013, 43, -1, 2),
(3, 2, 2013, 44, -1, 3),
(4, 2, 2013, 41, -1, 4),
(5, 2, 2013, 19, -1, 5),
(6, 3, 2013, 23, -1, 6),
(7, 4, 2013, 40, -1, 7),
(8, 4, 2013, 20, -1, 8),
(9, 4, 2013, 35, -1, 9),
(10, 4, 2013, 17, -1, 10),
(11, 4, 2013, 43, -1, 11),
(12, 4, 2013, 26, -1, 12),
(13, 5, 2013, 42, -1, 13),
(14, 5, 2013, 38, -1, 14),
(15, 6, 2013, 37, -1, 15),
(16, 6, 2013, 20, -1, 16),
(17, 6, 2013, 45, -1, 17),
(18, 6, 2013, 16, -1, 18),
(19, 9, 2013, 25, -1, 19),
(20, 10, 2013, 42, -1, 20),
(21, 11, 2013, 33, -1, 21),
(22, 12, 2013, 31, -1, 22),
(23, 13, 2013, 43, -1, 23),
(24, 13, 2013, 17, -1, 24),
(25, 15, 2013, 29, -1, 25),
(26, 15, 2013, 21, -1, 26),
(27, 15, 2013, 31, -1, 27),
(28, 15, 2013, 34, -1, 28),
(29, 15, 2013, 31, -1, 29),
(30, 24, 2013, 28, -1, 30),
(31, 24, 2013, 23, -1, 31),
(32, 25, 2013, 22, -1, 32),
(33, 26, 2013, 35, -1, 33),
(34, 27, 2013, 21, -1, 34),
(35, 28, 2013, 21, -1, 35),
(36, 29, 2013, 29, 1, 1),
(37, 30, 2013, 22, -1, 2),
(38, 52, 2013, 37, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `idDossier` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `DossierParent` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDossier`),
  KEY `fk_Document_Document1_idx` (`DossierParent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `document`
--

INSERT INTO `document` (`idDossier`, `nom`, `DossierParent`) VALUES
(1, '/', NULL),
(2, 'documents', 1),
(3, 'documentsImportant', 2),
(4, 'documentsRepresentant', 2),
(5, 'documentsEquipementHivers', 3),
(6, 'documentsEquipementete', 3);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `noEmploye` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `motDePasse` varchar(30) NOT NULL,
  `courriel` varchar(60) NOT NULL,
  `numeroCivique` varchar(10) DEFAULT NULL,
  `rue` varchar(50) DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `codePostal` varchar(7) DEFAULT NULL,
  `possesseurCle` tinyint(1) NOT NULL DEFAULT '0',
  `typeEmploye` varchar(45) DEFAULT NULL,
  `indPriorite` int(11) DEFAULT NULL,
  `nbHeureMinTravail` int(11) DEFAULT NULL,
  `nbHeureMaxTravail` int(11) DEFAULT NULL,
  `formationVetement` tinyint(1) NOT NULL DEFAULT '0',
  `formationChaussure` tinyint(1) NOT NULL DEFAULT '0',
  `formationCaissier` tinyint(1) NOT NULL DEFAULT '0',
  `respHoraireConflit` tinyint(1) NOT NULL DEFAULT '0',
  `notifHoraire` tinyint(1) NOT NULL DEFAULT '1',
  `notifRemplacement` tinyint(1) NOT NULL DEFAULT '0',
  `lastIp` varchar(20) DEFAULT NULL,
  `lastLogon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`noEmploye`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`noEmploye`, `nom`, `prenom`, `motDePasse`, `courriel`, `numeroCivique`, `rue`, `ville`, `codePostal`, `possesseurCle`, `typeEmploye`, `indPriorite`, `nbHeureMinTravail`, `nbHeureMaxTravail`, `formationVetement`, `formationChaussure`, `formationCaissier`, `respHoraireConflit`, `notifHoraire`, `notifRemplacement`, `lastIp`, `lastLogon`) VALUES
(1, 'Larsen', 'Fuller', 'PFT79YVL6OY', 'ut@idnuncinterdum.edu', '740', 'Id Rd.', 'Castelbianco', 'C8T 2K5', 0, 'Employe', 1, 29, 45, 0, 0, 0, 1, 0, 1, '721.525.305.844', '520.114.441.397'),
(2, 'Kelly', 'Jasper', 'DTC48QHI0XO', 'dolor@nullaDonec.org', '127', ' Tempus Avenue', 'Gent', 'R9S 7X7', 0, 'Gestionnaire', 14, 39, 43, 0, 1, 1, 1, 0, 1, '060.360.293.212', '447.114.661.659'),
(3, 'Hobbs', 'Walter', 'BBA30KQG6AR', 'tempor.augue@loremeumetus.co.uk', '503', 'Leo. Ave', 'Peterhead', 'P9R 6X4', 0, 'Gestionnaire', 19, 13, 28, 1, 1, 0, 0, 0, 1, '739.499.421.251', '309.332.325.298'),
(4, 'Wilkins', 'Reuben', 'VYT31YNS0XT', 'mollis@ornare.ca', '369', 'In Avenue', 'Saltcoats', 'E9H 5A3', 0, 'Employe', 10, 10, 10, 0, 1, 0, 1, 0, 0, '009.199.147.283', '349.650.854.625'),
(5, 'Meadows', 'Vernon', 'MPX50RVW9DH', 'velit.eu.sem@urnaUttincidunt.ca', '418', 'Elementum, Chemin', 'Price', 'M7N 9L9', 0, 'Employe', 8, 14, 23, 0, 1, 0, 0, 0, 1, '466.547.216.098', '749.574.735.928'),
(6, 'Morrison', 'Benedict', 'MDV72NUE3OQ', 'et@posuerecubilia.net', '785', 'Quam Av.', 'Rance', 'R0H 1B1', 0, 'Gestionnaire', 28, 40, 45, 0, 1, 1, 0, 0, 1, '973.279.066.201', '749.965.451.070'),
(7, 'Shields', 'Garrett', 'KPI42ARF1KR', 'Mauris@vestibulum.co.uk', '887', 'Ultrices. Impasse', 'Coassolo Torinese', 'S6P 6B3', 0, 'Employe', 20, 16, 28, 1, 0, 0, 0, 1, 0, '733.805.959.239', '453.255.763.097'),
(8, 'Zimmerman', 'Henry', 'GCZ25XLY8XL', 'libero@Vivamus.co.uk', '677', 'Non Impasse', 'Longchamps', 'S3L 4N4', 0, 'Gestionnaire', 23, 36, 35, 1, 1, 1, 0, 1, 0, '905.764.462.955', '568.878.374.532'),
(9, 'Hill', 'Amos', 'EBM56SMG2AX', 'ac@justonec.com', '387', 'Quisque Avenue', 'Henis', 'B0B 5E8', 0, 'Gestionnaire', 9, 10, 39, 1, 1, 0, 1, 1, 0, '741.997.918.159', '209.942.023.975'),
(10, 'Brady', 'Edward', 'VBB71WWS8BT', 'id.erat.Etiam@lobortis.edu', '522', 'Maecenas Rue', 'Episcopia', 'G5V 8A4', 0, 'Gestionnaire', 27, 7, 13, 0, 1, 1, 0, 1, 0, '701.220.636.840', '766.888.212.533'),
(11, 'Schroeder', 'Chester', 'TBG33YEU0YK', 'lorem.tristique.aliquet@sed.co.uk', '451', 'Lorem Rd.', 'TorrejÃ³n de Ardoz', 'P3M 4H3', 0, 'Employe', 9, 12, 20, 1, 0, 0, 1, 1, 1, '892.828.246.473', '068.913.343.485'),
(12, 'Henry', 'Igor', 'FQI50XZU2CM', 'libero@atnisiCum.org', '150', ' Amet Avenue', 'Hennigsdorf', 'N4R 4H5', 0, 'Employe', 2, 19, 25, 0, 0, 1, 0, 1, 1, '944.961.876.095', '422.389.027.231'),
(13, 'Washington', 'Orlando', 'NOX33NMH1XN', 'primis@sitamet.com', '638', 'Accumsan Ave', 'Markkleeberg', 'H7X 5M0', 0, 'Employe', 10, 43, 45, 1, 0, 0, 1, 0, 1, '177.911.019.327', '267.530.419.318'),
(14, 'Gates', 'Coby', 'YNJ96IJY1QP', 'euismod.mauris.eu@velit.net', '163', 'Sem Rue', 'Pï¿½ttlingen', 'T8X 2G7', 0, 'Employe', 4, 20, 30, 1, 0, 0, 1, 0, 0, '848.340.172.070', '898.677.460.913'),
(15, 'Ramos', 'Arsenio', 'CED29KGR4CP', 'tristique@iderat.com', '47', ' Vestibulum Route', 'Meerle', 'V5N 6E3', 0, 'Employe', 3, 29, 39, 0, 1, 0, 1, 1, 1, '880.904.354.211', '351.521.794.340'),
(16, 'House', 'Cole', 'GNR60DWH2GW', 'ipsum.dolor@mattis.ca', '45', 'Elit. Avenue', 'Rothesay', 'B9N 0N9', 0, 'Gestionnaire', 4, 23, 45, 1, 0, 1, 0, 1, 1, '410.096.855.943', '302.321.325.430'),
(17, 'Cline', 'Kennan', 'ZCG86WTC2CE', 'molestie.tortor@ornareplacerat.co.uk', '737', 'Luctus Chemin', 'Pictou', 'R7L 1E7', 0, 'Employe', 1, 10, 15, 0, 1, 1, 1, 0, 0, '301.345.250.487', '058.317.806.768'),
(18, 'Cole', 'Elliott', 'DQW41XWA6XO', 'Proin.nisl@anteipsumprimis.edu', '728', 'Gravida. Impasse', 'Somma Lombardo', 'A9M 5A4', 0, 'Employe', 8, 15, 30, 1, 1, 0, 1, 0, 0, '905.012.198.871', '070.497.807.900'),
(19, 'Maynard', 'Kirk', 'NRV66RML8NG', 'sit.amet.consectetuer@non.co.uk', '215', 'Nulla Avenue', 'Haut-Ittre', 'S2P 4W5', 0, 'Employe', 3, 14, 25, 1, 1, 0, 1, 1, 1, '918.727.280.596', '604.494.676.199'),
(20, 'Noble', 'Leonard', 'JZI68KDU0WV', 'eros.nec@Curabiturconsequatlectus.co.uk', '535', 'Hendrerit. Rue', 'GÃ¶tzis', 'L3X 2Y6', 0, 'Employe', 26, 35, 41, 0, 0, 0, 1, 1, 1, '749.061.701.439', '684.836.492.679'),
(21, 'Moran', 'Thaddeus', 'QIB33EWS1OQ', 'quis.tristique@acipsumPhasellus.co.uk', '900', 'Quis Ave', 'Tontelange', 'V1C 0T3', 0, 'Gestionnaire', 15, 9, 34, 0, 1, 1, 0, 0, 1, '216.140.262.440', '368.365.718.549'),
(22, 'Cash', 'Ethan', 'NQK73RHU6PK', 'Vestibulum.accumsan@Cras.ca', '178', 'Erat Chemin', 'Assiniboia', 'S7N 4Z8', 0, 'Gestionnaire', 7, 15, 26, 0, 1, 0, 1, 1, 0, '307.525.472.973', '074.147.026.979'),
(23, 'Lowe', 'Murphy', 'LVH85OUJ9UD', 'dapibus.gravida@malesuadafames.edu', '810', 'Cum Impasse', 'Vance', 'Y7C 2L2', 0, 'Employe', 23, 24, 30, 0, 0, 0, 0, 0, 1, '158.255.045.617', '664.629.370.675'),
(24, 'Rios', 'Drake', 'OJW58LFX2VP', 'ornare.sagittis.felis@sitametultricies.co.uk', '631', 'Lobortis, Ave', 'Latisana', 'H5K 0R9', 0, 'Employe', 21, 41, 44, 0, 0, 1, 0, 1, 0, '597.761.454.333', '861.174.042.291'),
(25, 'Austin', 'Garrison', 'SRN12AMQ3JG', 'molestie.tortor@acfermentumvel.ca', '398', 'Duis Avenue', 'Santa Fiora', 'P6C 2K5', 1, 'Gestionnaire', 11, 37, 40, 1, 1, 1, 0, 1, 1, '420.907.439.394', '799.167.500.388'),
(26, 'Leon', 'Harrison', 'NPD08CKU5ET', 'quam.vel@tempusrisus.co.uk', '400', 'Montes, Route', 'Bulzi', 'C1X 5B7', 1, 'Gestionnaire', 5, 30, 32, 1, 1, 0, 0, 0, 1, '851.471.020.196', '896.780.087.583'),
(27, 'Benton', 'Chaim', 'EUJ20KKA0GZ', 'mauris.aliquam.eu@Donecluctusaliquet.edu', '674', ' Rutrum Ave', 'Dongelberg', 'K1W 1T5', 1, 'Gestionnaire', 20, 13, 23, 0, 0, 1, 1, 1, 1, '748.942.485.158', '420.617.251.743'),
(28, 'Mclaughlin', 'Kareem', 'LCT99IAO2NV', 'ullamcorper@egetmetuseu.org', '554', 'Nec, Rue', 'Grand-Reng', 'H4Y 9S5', 0, 'Gestionnaire', 9, 10, 22, 1, 0, 0, 1, 1, 0, '639.395.171.382', '415.551.208.808'),
(29, 'Glover', 'Lucius', 'YGE00ILV6YZ', 'Fusce@adlitora.net', '514', 'Non Ave', 'Palmerston North', 'T2B 7G8', 0, 'Employe', 3, 27, 32, 0, 1, 0, 0, 1, 1, '776.474.519.345', '126.271.482.578'),
(30, 'Langley', 'Stuart', 'HGH93HFV8JC', 'sit.amet@etmagnisdis.edu', '734', 'Sollicitudin Ave', 'Baden-Baden', 'X5S 8K8', 0, 'Gestionnaire', 24, 5, 30, 0, 1, 1, 0, 1, 1, '169.214.598.713', '386.667.802.883'),
(31, 'Langley', 'Erich', 'ASV56RIU9RQ', 'ridiculus.mus@Morbi.com', '259', ' Magnis Rue', 'Plancenoit', 'L9L 4B7', 0, 'Gestionnaire', 11, 6, 43, 1, 0, 1, 0, 1, 0, '281.928.304.755', '839.235.233.213'),
(32, 'Duke', 'Cooper', 'SOD06NWD0SL', 'et@aliquetmetusurna.edu', '144', 'Mi, Rd.', 'Terni', 'Y2R 7H7', 0, 'Gestionnaire', 15, 10, 17, 1, 0, 1, 0, 1, 0, '180.206.814.596', '265.556.780.376'),
(33, 'Macdonald', 'Dillon', 'AQY87JKT9PL', 'non.enim@eleifendnecmalesuada.co.uk', '856', ' Semper Chemin', 'San Fele', 'M8N 6B7', 0, 'Gestionnaire', 27, 10, 29, 1, 1, 0, 0, 0, 0, '268.993.065.092', '638.473.345.117'),
(34, 'Forbes', 'Travis', 'SFG78UUS0LC', 'felis.eget.varius@InfaucibusMorbi.com', '363', 'Elit, Chemin', 'Vancouver', 'B4J 6X2', 0, 'Employe', 21, 18, 28, 1, 1, 0, 0, 1, 0, '926.157.075.034', '972.034.021.534'),
(35, 'Schneider', 'Joel', 'KKH51VON3MH', 'blandit.mattis@tellusimperdiet.ca', '956', 'Orci. Route', 'Selkirk', 'A5V 1G9', 1, 'Gestionnaire', 27, 15, 19, 0, 1, 1, 0, 0, 1, '181.698.879.394', '566.607.750.520');

-- --------------------------------------------------------

--
-- Structure de la table `fichier`
--

CREATE TABLE IF NOT EXISTS `fichier` (
  `noFichier` int(11) NOT NULL AUTO_INCREMENT,
  `nomFichier` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `idDossier` int(11) NOT NULL,
  `Employe_noEmploye` int(11) NOT NULL,
  PRIMARY KEY (`noFichier`),
  KEY `fk_Fichier_Document1_idx` (`idDossier`),
  KEY `fk_Fichier_Employe1_idx` (`Employe_noEmploye`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `fichier`
--

INSERT INTO `fichier` (`noFichier`, `nomFichier`, `description`, `idDossier`, `Employe_noEmploye`) VALUES
(1, 'Aliquam.pdf', 'Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus', 5, 3),
(2, 'auctor.pdf', 'Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec', 4, 4),
(3, 'nec.pdf', 'Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat', 4, 3),
(4, 'tempor.pdf', 'mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus,', 5, 3),
(5, 'sit.pdf', 'est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede,', 4, 1),
(6, 'risus.pdf', 'dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan', 3, 2),
(7, 'iaculis.pdf', 'nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas', 3, 1),
(8, 'risus.pdf', 'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim', 5, 2),
(9, 'sed.pdf', 'dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula.', 4, 3),
(10, 'arcu.docx', 'risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum', 5, 4),
(11, 'consectetuer.docx', 'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,', 3, 2),
(12, 'sed.docx', 'metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse', 5, 4),
(13, 'eu.docx', 'gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi', 5, 2),
(14, 'Morbi.docx', 'molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec', 4, 3),
(15, 'vulputate.docx', 'Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus', 3, 1),
(16, 'feugiat.docx', 'est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', 3, 2),
(17, 'quis.docx', 'a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper', 4, 1),
(18, 'ut.xls', 'sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus', 4, 4),
(19, 'volutpat.xls', 'nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet,', 3, 4),
(20, 'elit.xls', 'In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec', 3, 3),
(21, 'eget.xls', 'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante,', 5, 2),
(22, 'odio.xls', 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci,', 5, 2),
(23, 'purus.xls', 'hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet', 3, 2),
(24, 'Duis.xls', 'sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis', 5, 1),
(25, 'suscipit.xls', 'iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros', 5, 2),
(26, 'luctus.xls', 'bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis', 5, 2),
(27, 'auctor.xls', 'placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc', 5, 1),
(28, 'tortor.xls', 'mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id,', 4, 3),
(29, 'aliquet.xls', 'consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus.', 3, 4),
(30, 'consectetuer.xls', 'porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum', 4, 2),
(31, 'et.xls', 'Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis', 5, 4),
(32, 'accumsan.pdf', 'adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus', 4, 1),
(33, 'Donec.pdf', 'dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla', 3, 3),
(34, 'tortor.pdf', 'placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per', 3, 4),
(35, 'imperdiet.pdf', 'Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis', 3, 3),
(36, 'amet.pdf', 'ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam,', 5, 3),
(37, 'Mauris.pdf', 'ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin', 5, 2),
(38, 'eros.pdf', 'vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam', 3, 2),
(39, 'Proin.pdf', 'a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing', 4, 1),
(40, 'a.pdf', 'nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', 3, 2),
(41, 'condimentum.pdf', 'nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi', 5, 1),
(42, 'In.pdf', 'at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu', 3, 4),
(43, 'a.pdf', 'vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet', 5, 3),
(44, 'massa.pdf', 'Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae,', 4, 1),
(45, 'lacinia.pdf', 'ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo', 5, 3),
(46, 'congue.pdf', 'vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula', 4, 4),
(47, 'dui.pdf', 'ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque', 5, 3),
(48, 'ipsum.pdf', 'ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit,', 3, 2),
(49, 'ultricies.pdf', 'vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.', 5, 1),
(50, 'sociis.pdf', 'elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod', 5, 4),
(51, 'dolor.pdf', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede,', 5, 2),
(52, 'laoreet.pdf', 'Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at', 4, 3),
(53, 'quis.pdf', 'ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc', 4, 3),
(54, 'a.pdf', 'ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed', 3, 3),
(55, 'id.pdf', 'Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum', 3, 4),
(56, 'egestas.pdf', 'Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl.', 5, 3),
(57, 'nec.pdf', 'Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec', 5, 3),
(58, 'vestibulum.pdf', 'lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem.', 5, 1),
(59, 'enim.pdf', 'adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum', 3, 2),
(60, 'sed.pdf', 'tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse', 3, 4),
(61, 'condimentum.pdf', 'sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at', 3, 3),
(62, 'sociis.pdf', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus.', 3, 3),
(63, 'Integer.pdf', 'vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc', 5, 2),
(64, 'ut.pdf', 'Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque', 3, 2),
(65, 'Duis.pdf', 'mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy', 5, 4),
(66, 'posuere.pdf', 'lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet', 5, 2),
(67, 'Sed.pdf', 'nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer', 3, 2),
(68, 'magnis.pdf', 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras', 5, 1),
(69, 'Vivamus.pdf', 'nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 4, 4),
(70, 'nibh.pdf', 'lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc', 5, 4),
(71, 'Nunc.pdf', 'felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec', 4, 2),
(72, 'iaculis.pdf', 'Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique', 5, 4),
(73, 'Aenean.pdf', 'mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in', 3, 2),
(74, 'mus.pdf', 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate', 5, 4),
(75, 'dictum.pdf', 'quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis', 5, 1),
(76, 'est.pdf', 'sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis', 5, 4),
(77, 'Nullam.pdf', 'ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit', 3, 1),
(78, 'In.pdf', 'malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim', 5, 2),
(79, 'Nunc.pdf', 'lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,', 3, 1),
(80, 'ac.pdf', 'cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.', 5, 2),
(81, 'tellus.pdf', 'odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci.', 3, 4),
(82, 'luctus.pdf', 'Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam', 3, 3),
(83, 'sit.pdf', 'Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus', 4, 1),
(84, 'sed.pdf', 'Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem,', 4, 3),
(85, 'posuere.pdf', 'venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem,', 4, 2),
(86, 'tristique.pdf', 'arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut', 4, 4),
(87, 'sagittis.pdf', 'non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget', 4, 3),
(88, 'Integer.pdf', 'ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit', 5, 1),
(89, 'Phasellus.pdf', 'lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam', 5, 2),
(90, 'Sed.pdf', 'at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque', 5, 3),
(91, 'nec', 'nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,', 4, 1),
(92, 'malesuada.pdf', 'odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio', 4, 1),
(93, 'mollis.pdf', 'pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec', 3, 3),
(94, 'eu.pdf', 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque', 3, 4),
(95, 'Proin.pdf', 'Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla', 4, 3),
(96, 'elit.pdf', 'at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque', 4, 1),
(97, 'Quisque.pdf', 'at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et', 4, 1),
(98, 'elit.pdf', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent', 3, 2),
(99, 'sapien.pdf', 'velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum', 5, 1),
(100, 'consequat.pdf', 'Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum.', 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fichierlu`
--

CREATE TABLE IF NOT EXISTS `fichierlu` (
  `idConnexion` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `noEmploye` int(11) NOT NULL,
  `noFichier` int(11) NOT NULL,
  PRIMARY KEY (`idConnexion`,`noEmploye`,`noFichier`),
  KEY `fk_FichierLu_Employe1_idx` (`noEmploye`),
  KEY `fk_FichierLu_Fichier1_idx` (`noFichier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `fichierlu`
--

INSERT INTO `fichierlu` (`idConnexion`, `date`, `noEmploye`, `noFichier`) VALUES
(1, '2012-12-08', 2, 22),
(2, '2014-03-08', 28, 77),
(3, '2013-03-31', 12, 1),
(4, '2014-07-01', 4, 35),
(5, '2013-08-09', 35, 37),
(6, '2013-11-10', 27, 80),
(7, '2013-01-19', 32, 93),
(8, '2013-06-05', 2, 76),
(9, '2014-03-09', 17, 5),
(10, '2013-03-02', 23, 39),
(11, '2013-09-18', 19, 74),
(12, '2013-03-03', 1, 96),
(13, '2014-08-29', 23, 4),
(14, '2014-04-20', 26, 86),
(15, '2013-08-21', 16, 9),
(16, '2013-05-25', 26, 48),
(17, '2013-02-12', 11, 53),
(18, '2014-09-19', 9, 65),
(19, '2013-10-19', 19, 34),
(20, '2013-04-21', 35, 52),
(21, '2014-08-17', 25, 75),
(22, '2014-09-24', 11, 60),
(23, '2012-11-30', 24, 34),
(24, '2013-01-15', 13, 15),
(25, '2014-05-30', 14, 100),
(26, '2013-07-20', 19, 92),
(27, '2013-12-27', 26, 56),
(28, '2013-09-12', 31, 36),
(29, '2014-10-26', 21, 61),
(30, '2014-08-07', 8, 3),
(31, '2013-01-30', 25, 95),
(32, '2013-12-29', 18, 1),
(33, '2012-12-30', 17, 74),
(34, '2013-12-03', 23, 99),
(35, '2012-12-23', 3, 64),
(36, '2014-02-14', 18, 78),
(37, '2013-09-11', 14, 81),
(38, '2013-03-14', 13, 5),
(39, '2014-08-19', 6, 72),
(40, '2014-07-21', 7, 53),
(41, '2013-11-16', 25, 72),
(42, '2013-07-18', 16, 44),
(43, '2014-07-20', 10, 32),
(44, '2013-09-27', 28, 87),
(45, '2014-11-19', 33, 100),
(46, '2013-09-29', 32, 62),
(47, '2014-08-02', 33, 39),
(48, '2014-06-09', 22, 41),
(49, '2014-05-31', 5, 26),
(50, '2014-11-26', 14, 21),
(51, '2014-05-05', 32, 90),
(52, '2013-05-04', 35, 27),
(53, '2013-05-24', 25, 34),
(54, '2014-01-16', 11, 86),
(55, '2013-03-30', 2, 50),
(56, '2014-02-14', 14, 77),
(57, '2014-01-12', 8, 83),
(58, '2014-07-13', 7, 49),
(59, '2013-05-18', 5, 99),
(60, '2014-04-11', 13, 6),
(61, '2014-01-08', 35, 24),
(62, '2014-04-24', 24, 93),
(63, '2013-03-08', 22, 28),
(64, '2014-06-23', 12, 75),
(65, '2013-02-08', 19, 72),
(66, '2014-08-03', 34, 43),
(67, '2014-03-14', 22, 93),
(68, '2013-08-23', 25, 32),
(69, '2013-11-01', 10, 100),
(70, '2013-08-24', 6, 32),
(71, '2013-02-10', 18, 55),
(72, '2014-08-08', 3, 70),
(73, '2013-12-20', 14, 28),
(74, '2014-08-17', 7, 51),
(75, '2013-03-12', 10, 53),
(76, '2013-10-26', 20, 24),
(77, '2014-09-08', 27, 23),
(78, '2013-08-15', 6, 38),
(79, '2013-03-23', 18, 49),
(80, '2013-09-27', 5, 3),
(81, '2013-04-22', 8, 8),
(82, '2013-03-08', 16, 82),
(83, '2013-03-22', 35, 14),
(84, '2013-12-21', 5, 27),
(85, '2013-06-12', 5, 31),
(86, '2014-01-28', 21, 62),
(87, '2014-03-08', 31, 67),
(88, '2013-02-26', 11, 24),
(89, '2014-08-16', 33, 50),
(90, '2013-06-29', 26, 20),
(91, '2013-07-21', 1, 30),
(92, '2014-10-05', 16, 77),
(93, '2013-10-11', 19, 59),
(94, '2014-08-22', 5, 2),
(95, '2014-03-07', 3, 27),
(96, '2013-03-10', 2, 28),
(97, '2013-08-26', 12, 50),
(98, '2013-11-26', 4, 34),
(99, '2013-06-16', 23, 24),
(100, '2013-07-14', 21, 77);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `idMessage` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(70) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `noEmploye` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idMessage`),
  KEY `fk_Article_Employe1_idx` (`noEmploye`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `message`
--

INSERT INTO `message` (`idMessage`, `titre`, `message`, `noEmploye`, `date`) VALUES
(1, 'Duis elementum, dui quis accumsan convallis, ante lectus', 'aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae', 19, '2013-04-10'),
(2, 'placerat,', 'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis', 7, '2014-06-07'),
(3, 'Aliquam nec enim. Nunc ut', 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed,', 24, '2014-10-23'),
(4, 'eget varius ultrices, mauris ipsum porta elit, a feugiat', 'dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc ', 23, '2014-10-09'),
(5, 'mattis', 'dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus', 35, '2013-04-24'),
(6, 'molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh.', 'metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et', 1, '2013-07-29'),
(7, 'id magna et ipsum cursus vestibulum. Mauris magna. Duis', 'Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', 25, '2013-08-17'),
(8, 'arcu', 'nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed ', 28, '2014-02-12'),
(9, 'lorem. Donec', 'ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus ped', 28, '2014-05-18'),
(10, 'Praesent eu dui. Cum sociis natoque', 'lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis', 1, '2013-06-19'),
(11, 'diam lorem, auctor', 'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, ar', 20, '2013-07-23'),
(12, 'eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Null', 'quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravid', 22, '2013-01-06'),
(13, 'mattis ornare, lectus ante dictum mi, ac mattis velit', 'montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum', 31, '2013-11-06'),
(14, 'et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim', 'vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagitti', 25, '2014-01-19'),
(15, 'vestibulum nec, euismod in, dolor. Fusce feugiat.', 'nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non', 29, '2013-02-09'),
(16, 'nec, cursus a, enim.', 'consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero.', 15, '2013-06-19'),
(17, 'lacus. Mauris non dui nec', 'Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliq', 8, '2014-04-06'),
(18, 'diam. Sed diam lorem,', 'libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. ', 16, '2014-07-28'),
(19, 'facilisis vitae, orci. Phasellus dapibus quam', 'semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat', 14, '2012-12-08'),
(20, 'convallis erat, eget', 'vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu.', 17, '2013-04-22'),
(21, 'tellus lorem eu metus. In', 'sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus', 15, '2014-06-14'),
(22, 'dui, semper et,', 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec', 11, '2013-09-25'),
(23, 'Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum', 'Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat.', 23, '2013-09-14'),
(24, 'nec orci. Donec nibh. Quisque nonummy ipsum non', 'velit in aliquet', 10, '2014-10-18'),
(25, 'faucibus. Morbi vehicula. Pellentesque tincidunt', 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla', 1, '2013-12-17'),
(26, 'Nunc sed orci lobortis augue scelerisque mollis. Phasellus', 'varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', 7, '2013-10-13'),
(27, 'ornare,', 'ante, iaculis nec, eleifend non,', 33, '2014-01-05'),
(28, 'elit fermentum risus, at fringilla', 'hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan', 20, '2013-07-01'),
(29, 'arcu. Sed et libero. Proin mi.', 'metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum.', 26, '2013-05-02'),
(30, 'porta elit, a feugiat tellus', 'Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scele', 19, '2013-10-07'),
(31, 'malesuada', 'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis l', 24, '2013-04-22'),
(32, 'gravida. Praesent eu nulla at sem molestie sodales. Mauris', 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', 23, '2014-08-07'),
(33, 'nunc sed libero. Proin sed turpis nec mauris blandit mattis.', 'sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo', 4, '2013-06-11'),
(34, 'diam. Sed diam lorem, auctor', 'fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin ', 13, '2012-12-08'),
(35, 'natoque penatibus et magnis dis', 'Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin', 15, '2014-02-24'),
(36, 'at', 'ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 2, '2013-04-26'),
(37, 'Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere', 'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium ali', 13, '2014-03-26'),
(38, 'orci sem eget massa. Suspendisse eleifend.', 'risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed', 31, '2014-04-29'),
(39, 'augue id', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus', 4, '2013-12-10'),
(40, 'amet lorem semper auctor. Mauris vel', 'scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet,', 34, '2013-04-06'),
(41, 'Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem', 'ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', 3, '2013-11-25'),
(42, 'sit amet lorem semper auctor. Mauris vel turpis.', 'erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra', 2, '2013-08-13'),
(43, 'scelerisque dui. Suspendisse ac metus vitae velit egestas', 'Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras ', 12, '2014-02-13'),
(44, 'Nunc mauris elit, dictum', 'elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a', 16, '2013-07-04'),
(45, 'convallis convallis dolor. Quisque tincidunt pede ac', 'Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.', 26, '2013-01-28'),
(46, 'arcu. Sed eu nibh vulputate mauris sagittis placerat.', 'eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. I', 34, '2014-06-09'),
(47, 'massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt', 'Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat ', 7, '2014-08-23'),
(48, 'neque sed sem egestas blandit. Nam nulla magna, malesuada', 'mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo', 29, '2014-06-27'),
(49, 'hymenaeos. Mauris ut quam vel', 'erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor', 31, '2013-01-18'),
(50, 'In scelerisque scelerisque dui. Suspendisse ac metus vitae velit', 'mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.', 22, '2013-09-30'),
(51, 'mollis vitae, posuere at, velit. Cras', 'Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna', 10, '2013-03-12'),
(52, 'a ultricies adipiscing, enim', 'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. ', 3, '2013-06-01'),
(53, 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis', 'ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit', 13, '2012-12-03'),
(54, 'vehicula aliquet libero.', 'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus,', 34, '2014-05-19'),
(55, 'a', 'cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum', 17, '2013-09-06'),
(56, 'nec luctus', 'augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In', 5, '2014-09-25'),
(57, 'est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh', 'vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit', 30, '2013-12-22'),
(58, 'eu metus. In lorem. Donec elementum, lorem', 'faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse', 6, '2013-07-01'),
(59, 'augue ac ipsum. Phasellus vitae mauris sit amet lorem', 'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida.', 26, '2014-11-08'),
(60, 'lorem semper auctor. Mauris vel turpis. Aliquam adipiscing', 'enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac', 30, '2013-04-21'),
(61, 'et libero.', 'auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada ', 20, '2014-04-10'),
(62, 'nisi magna sed dui.', 'magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non', 23, '2014-01-16'),
(63, 'Mauris vestibulum,', 'turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis', 32, '2014-09-09'),
(64, 'fermentum arcu.', 'morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum.', 24, '2014-11-16'),
(65, 'vitae velit egestas lacinia. Sed congue, elit sed consequat', 'Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliqua', 24, '2014-11-11'),
(66, 'dolor dapibus gravida. Aliquam tincidunt, nunc ac', 'vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Pha', 30, '2014-06-23');
INSERT INTO `message` (`idMessage`, `titre`, `message`, `noEmploye`, `date`) VALUES
(67, 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasell', 'commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringill', 8, '2014-08-04'),
(68, 'Ut tincidunt vehicula risus.', 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus', 23, '2013-11-26'),
(69, 'natoque penatibus et magnis', 'dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque', 8, '2013-09-20'),
(70, 'enim mi tempor lorem, eget mollis lectus pede et risus.', 'non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices.', 29, '2013-05-28'),
(71, 'egestas nunc', 'Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod', 27, '2014-02-22'),
(72, 'in, hendrerit consectetuer,', 'non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio.', 13, '2013-04-04'),
(73, 'ornare, elit elit fermentum risus, at', 'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer', 16, '2014-09-01'),
(74, 'vel pede blandit congue. In', 'diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae', 7, '2014-02-09'),
(75, 'tellus. Aenean', 'Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus', 7, '2013-01-15'),
(76, 'semper.', 'rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi', 29, '2014-04-27'),
(77, 'ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,', 'sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', 21, '2014-09-12'),
(78, 'mus. Donec', 'pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc.', 28, '2014-02-22'),
(79, 'sodales at, velit. Pellentesque ultricies dignissim', 'velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum', 25, '2013-02-10'),
(80, 'ac', 'aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.', 12, '2013-12-08'),
(81, 'augue eu tellus. Phasellus elit pede, malesuada', 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', 29, '2013-09-23'),
(82, 'rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida', 'pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliqu', 1, '2014-06-06'),
(83, 'ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,', 'eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus.', 14, '2014-07-20'),
(84, 'neque. Sed eget', 'velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo', 1, '2014-08-24'),
(85, 'dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare,', 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan', 24, '2014-07-02'),
(86, 'magna', 'Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpi', 35, '2014-05-05'),
(87, 'massa. Integer', 'Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci.', 21, '2014-09-12'),
(88, 'sed tortor. Integer aliquam adipiscing', 'pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies', 3, '2013-12-04'),
(89, 'Aliquam ultrices', 'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ul', 7, '2013-12-14'),
(90, 'nibh dolor, nonummy ac,', 'lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh', 13, '2014-03-20'),
(91, 'enim, sit amet ornare lectus', 'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit', 26, '2013-08-01'),
(92, 'fringilla cursus purus. Nullam scelerisque neque sed sem egestas bland', 'ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit', 13, '2013-09-05'),
(93, 'accumsan interdum', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque,', 1, '2014-01-26'),
(94, 'elit,', 'amet lorem semper auctor.', 19, '2013-02-16'),
(95, 'Quisque', 'tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,', 2, '2013-02-15'),
(96, 'luctus sit amet, faucibus ut, nulla. Cras eu', 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lore', 32, '2012-12-06'),
(97, 'et, magna. Praesent interdum', 'ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo', 14, '2014-06-21'),
(98, 'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. S', 'eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus', 12, '2013-03-14'),
(99, 'pharetra nibh. Aliquam ornare, libero at auctor', 'cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum', 3, '2013-10-15'),
(100, 'eu, ligula. Aenean euismod', 'Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit.', 15, '2013-04-19');

-- --------------------------------------------------------

--
-- Structure de la table `plagedetravail`
--

CREATE TABLE IF NOT EXISTS `plagedetravail` (
  `idQuartTravail` int(11) NOT NULL AUTO_INCREMENT,
  `typeTravail` enum('Chaussure','Vetement','Caissier','') NOT NULL,
  `heureDebut` datetime NOT NULL,
  `heureFin` datetime NOT NULL,
  `remplacement` tinyint(1) NOT NULL DEFAULT '0',
  `noEmploye` int(11) NOT NULL,
  PRIMARY KEY (`idQuartTravail`),
  KEY `fk_PlageDeTravail_Employe1_idx` (`noEmploye`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `plagedetravail`
--

INSERT INTO `plagedetravail` (`idQuartTravail`, `typeTravail`, `heureDebut`, `heureFin`, `remplacement`, `noEmploye`) VALUES
(1, 'Chaussure', '2013-11-25 09:30:00', '2013-11-28 16:00:00', 0, 1),
(2, 'Vetement', '2013-11-28 13:00:00', '2013-11-28 18:00:00', 0, 2),
(3, 'Caissier', '2013-11-28 10:00:00', '2013-11-28 16:00:00', 0, 3),
(4, 'Chaussure', '2013-11-28 08:00:00', '2013-11-28 15:00:00', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

CREATE TABLE IF NOT EXISTS `ressource` (
  `idBlocRessource` int(11) NOT NULL AUTO_INCREMENT,
  `dateDuJour` date NOT NULL,
  `heureDebut` time NOT NULL,
  `heureFin` time NOT NULL,
  `nbEmpChaussures` int(11) NOT NULL,
  `nbEmpVetements` int(11) NOT NULL,
  `nbEmpCaissier` int(11) NOT NULL,
  PRIMARY KEY (`idBlocRessource`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `ressource`
--

INSERT INTO `ressource` (`idBlocRessource`, `dateDuJour`, `heureDebut`, `heureFin`, `nbEmpChaussures`, `nbEmpVetements`, `nbEmpCaissier`) VALUES
(1, '2012-11-19', '14:00:00', '18:00:00', 1, 7, 9),
(2, '2012-11-20', '11:00:00', '17:00:00', 10, 3, 7),
(3, '2012-11-18', '09:30:00', '16:00:00', 10, 7, 8),
(4, '2012-11-21', '09:00:00', '12:00:00', 10, 4, 2),
(5, '2012-11-22', '10:00:00', '17:00:00', 2, 4, 2),
(6, '2012-11-23', '17:00:00', '20:00:00', 6, 3, 2),
(7, '2012-11-24', '14:00:00', '20:00:00', 5, 6, 10),
(8, '2012-11-24', '10:00:00', '14:00:00', 7, 6, 3),
(9, '2012-11-23', '10:00:00', '17:00:00', 9, 7, 10),
(10, '2012-11-22', '17:00:00', '20:00:00', 9, 9, 10),
(11, '2012-11-21', '12:00:00', '18:00:00', 6, 9, 6),
(12, '2012-11-19', '10:00:00', '14:00:00', 5, 9, 9);

-- --------------------------------------------------------

--
-- Structure de la table `telephone`
--

CREATE TABLE IF NOT EXISTS `telephone` (
  `noTelphone` varchar(12) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `noEmploye` int(11) NOT NULL,
  PRIMARY KEY (`noTelphone`),
  KEY `fk_Telephone_Employe1_idx` (`noEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `telephone`
--

INSERT INTO `telephone` (`noTelphone`, `description`, `noEmploye`) VALUES
('004-844-4278', 'Cellulaire', 1),
('006-181-6338', 'Cellulaire', 26),
('051-555-4823', 'Maison', 4),
('077-769-4311', 'Cellulaire', 34),
('082-831-2444', 'Maison', 3),
('093-411-8435', 'Cellulaire', 26),
('105-166-3326', 'Maison', 33),
('114-872-5680', 'Cellulaire', 13),
('122-360-5870', 'Maison', 1),
('122-525-1562', 'Cellulaire', 22),
('124-702-9445', 'Cellulaire', 19),
('126-146-7522', 'Cellulaire', 23),
('154-802-9877', 'Cellulaire', 3),
('165-833-5997', 'Cellulaire', 30),
('169-439-6730', 'Cellulaire', 24),
('175-026-2139', 'Cellulaire', 21),
('175-987-3099', 'Cellulaire', 29),
('176-866-5165', 'Maison', 26),
('177-154-4532', 'Maison', 26),
('178-506-0458', 'Maison', 25),
('191-974-9986', 'Maison', 27),
('207-997-9117', 'Cellulaire', 3),
('211-311-1657', 'Maison', 7),
('215-232-1171', 'Maison', 33),
('215-793-4249', 'Cellulaire', 28),
('216-999-8617', 'Cellulaire', 26),
('218-518-2218', 'Cellulaire', 21),
('227-260-2500', 'Cellulaire', 31),
('237-991-3623', 'Maison', 13),
('246-692-9451', 'Maison', 22),
('258-457-4305', 'Cellulaire', 8),
('269-988-9485', 'Cellulaire', 7),
('283-990-7877', 'Cellulaire', 8),
('301-492-4273', 'Maison', 10),
('316-534-0356', 'Cellulaire', 15),
('335-914-3863', 'Maison', 21),
('340-106-9021', 'Maison', 30),
('341-118-9733', 'Maison', 19),
('344-534-7539', 'Cellulaire', 4),
('361-362-2800', 'Maison', 21),
('381-573-4919', 'Maison', 1),
('387-324-4891', 'Maison', 33),
('401-896-9200', 'Cellulaire', 6),
('411-746-4050', 'Maison', 11),
('415-519-7531', 'Maison', 34),
('426-896-4119', 'Cellulaire', 10),
('434-162-1416', 'Maison', 14),
('439-248-2294', 'Cellulaire', 1),
('441-761-5561', 'Maison', 21),
('457-053-3341', 'Maison', 14),
('481-808-8472', 'Maison', 8),
('484-554-9750', 'Cellulaire', 25),
('509-603-7779', 'Maison', 9),
('521-203-5947', 'Cellulaire', 20),
('546-166-3309', 'Cellulaire', 7),
('548-275-5861', 'Cellulaire', 9),
('556-907-6977', 'Maison', 19),
('561-280-5605', 'Maison', 1),
('605-533-6515', 'Cellulaire', 7),
('609-315-9957', 'Maison', 30),
('617-888-9726', 'Maison', 34),
('649-029-8963', 'Maison', 14),
('653-019-0293', 'Maison', 6),
('663-664-2230', 'Cellulaire', 21),
('675-077-7279', 'Cellulaire', 24),
('684-230-4428', 'Cellulaire', 32),
('691-931-3901', 'Cellulaire', 19),
('695-578-4559', 'Cellulaire', 31),
('698-022-7518', 'Cellulaire', 33),
('698-049-6977', 'Maison', 25),
('708-732-3684', 'Maison', 20),
('710-796-1179', 'Cellulaire', 22),
('712-103-7777', 'Cellulaire', 34),
('721-711-5090', 'Cellulaire', 21),
('723-723-3675', 'Cellulaire', 14),
('728-458-8764', 'Maison', 9),
('729-832-6868', 'Maison', 25),
('730-512-4285', 'Maison', 14),
('731-957-8637', 'Cellulaire', 27),
('735-005-9272', 'Maison', 34),
('748-434-1634', 'Maison', 11),
('790-291-0134', 'Maison', 12),
('807-681-5898', 'Maison', 11),
('808-491-3221', 'Maison', 15),
('812-014-5865', 'Maison', 2),
('817-108-8546', 'Maison', 34),
('849-624-2693', 'Maison', 4),
('870-241-9910', 'Cellulaire', 19),
('874-823-8929', 'Maison', 22),
('884-065-8242', 'Cellulaire', 25),
('892-379-2797', 'Maison', 17),
('895-525-1700', 'Maison', 28),
('901-575-9577', 'Maison', 29),
('917-276-2007', 'Cellulaire', 6),
('946-996-5292', 'Cellulaire', 22),
('947-176-4567', 'Maison', 12),
('952-469-1027', 'Maison', 9),
('955-651-8267', 'Cellulaire', 32),
('977-027-1487', 'Cellulaire', 29),
('997-436-4804', 'Cellulaire', 19);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `ancienhoraire`
--
ALTER TABLE `ancienhoraire`
  ADD CONSTRAINT `fk_AncienHoraire_Employe1` FOREIGN KEY (`noEmploye`) REFERENCES `employe` (`noEmploye`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `destinataire`
--
ALTER TABLE `destinataire`
  ADD CONSTRAINT `fk_ArticleLu_Article1` FOREIGN KEY (`idMessage`) REFERENCES `message` (`idMessage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Destinataire_Employe1` FOREIGN KEY (`noEmploye`) REFERENCES `employe` (`noEmploye`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `disponibilitejours`
--
ALTER TABLE `disponibilitejours`
  ADD CONSTRAINT `fk_DisponibiliteJours_DisponibiliteSemaine` FOREIGN KEY (`idDispoSemaine`) REFERENCES `disponibilitesemaine` (`idDispoSemaine`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `disponibilitesemaine`
--
ALTER TABLE `disponibilitesemaine`
  ADD CONSTRAINT `fk_DisponibiliteSemaine_Employe1` FOREIGN KEY (`noEmploye`) REFERENCES `employe` (`noEmploye`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `fk_Document_Document1` FOREIGN KEY (`DossierParent`) REFERENCES `document` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `fichier`
--
ALTER TABLE `fichier`
  ADD CONSTRAINT `fk_Fichier_Document1` FOREIGN KEY (`idDossier`) REFERENCES `document` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fichier_Employe1` FOREIGN KEY (`Employe_noEmploye`) REFERENCES `employe` (`noEmploye`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `fichierlu`
--
ALTER TABLE `fichierlu`
  ADD CONSTRAINT `fk_FichierLu_Employe1` FOREIGN KEY (`noEmploye`) REFERENCES `employe` (`noEmploye`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_FichierLu_Fichier1` FOREIGN KEY (`noFichier`) REFERENCES `fichier` (`noFichier`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_Article_Employe1` FOREIGN KEY (`noEmploye`) REFERENCES `employe` (`noEmploye`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `plagedetravail`
--
ALTER TABLE `plagedetravail`
  ADD CONSTRAINT `fk_PlageDeTravail_Employe1` FOREIGN KEY (`noEmploye`) REFERENCES `employe` (`noEmploye`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `telephone`
--
ALTER TABLE `telephone`
  ADD CONSTRAINT `fk_Telephone_Employe1` FOREIGN KEY (`noEmploye`) REFERENCES `employe` (`noEmploye`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
