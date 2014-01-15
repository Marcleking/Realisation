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

  DROP DATABASE IF EXISTS coureur_nordique;
  CREATE DATABASE coureur_nordique;
  USE coureur_nordique;
  grant usage on *.* to user_coureur@localhost identified by 'qweqwe';
  grant all privileges on coureur_nordique.* to user_coureur@localhost ;
  -- --------------------------------------------------------

  --
  -- Structure de la table `ancienhoraire`
  --

  CREATE TABLE IF NOT EXISTS `ancienhoraire` (
    `idAncienHoraire` int(11) NOT NULL,
    `courriel` varchar(60) NOT NULL,
    `nbHeuresTravaille` int(11) DEFAULT NULL,
    `nbHeuresAssigne` int(11) DEFAULT NULL,
    PRIMARY KEY (`idAncienHoraire`, `courriel`),
    KEY `fk_AncienHoraire_Employe1_idx` (`courriel`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  --
  -- Contenu de la table `ancienhoraire`
  --

  INSERT INTO `ancienhoraire` (`idAncienHoraire`, `courriel`, `nbHeuresTravaille`, `nbHeuresAssigne`) VALUES
  (1, 'marc', 15, 30),
  (2, 'marc', 30, 30),
  (3, 'marc', 25, 20),
  (4, 'marc', 20, 20),
  (5, 'marc', 30, 30);

  -- --------------------------------------------------------

  --
  -- Structure de la table `destinataire`
  --

  CREATE TABLE IF NOT EXISTS `destinataire` (
    `idArticleLue` int(11) NOT NULL AUTO_INCREMENT,
    `dateLecture` date NOT NULL,
    `idMessage` int(11) NOT NULL,
    `courriel` varchar(60) NOT NULL,
    PRIMARY KEY (`idArticleLue`),
    KEY `fk_ArticleLu_Article1_idx` (`idMessage`),
    KEY `fk_Destinataire_Employe1_idx` (`courriel`)
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

  --
  -- Contenu de la table `destinataire`
  --

  -- ----------------- À faire

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

  -- --------------------------------------------------------

  --
  -- Structure de la table `disponibilitesemaine`
  --

  CREATE TABLE IF NOT EXISTS `disponibilitesemaine` (
    `idDispoSemaine` int(11) NOT NULL AUTO_INCREMENT,
    `noDispoSemaine` int(11) NOT NULL,
    `annee` int(11) NOT NULL,
    `nbHeureSouhaite` int(11) NOT NULL,
    `refIdSemaineACopier` int(11) DEFAULT '-1',
    `courriel` varchar(60) NOT NULL,
    PRIMARY KEY (`idDispoSemaine`),
    KEY `fk_DisponibiliteSemaine_Employe1_idx` (`courriel`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  
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
    `nom` varchar(30) NOT NULL,
    `prenom` varchar(30) NOT NULL,
    `motDePasse` varchar(40) NOT NULL,
    `courriel` varchar(60) NOT NULL,
    `numeroCivique` varchar(10) NOT NULL,
    `rue` varchar(50) NOT NULL,
    `ville` varchar(45) NOT NULL,
    `codePostal` varchar(7) NOT NULL,
    `possesseurCle` tinyint(1) NOT NULL DEFAULT '0',
    `typeEmploye` varchar(45) NOT NULL,
    `indPriorite` int(11) NOT NULL,
    `formationVetement` tinyint(1) NOT NULL DEFAULT '0',
    `formationChaussure` tinyint(1) NOT NULL DEFAULT '0',
    `formationCaissier` tinyint(1) NOT NULL DEFAULT '0',
    `respHoraireConflit` tinyint(1) NOT NULL DEFAULT '0',
    `notifHoraire` tinyint(1) NOT NULL DEFAULT '1',
    `notifRemplacement` tinyint(1) NOT NULL DEFAULT '0',
    `lastIp` varchar(20) NOT NULL,
    `lastLogon` date NOT NULL,
    `lienReinit` varchar(40) null,
    PRIMARY KEY (`courriel`)
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

  --
  -- Contenu de la table `employe`
  --

  INSERT INTO `employe` (`nom`, `prenom`, `motDePasse`, `courriel`, `numeroCivique`, `rue`, `ville`, `codePostal`, `possesseurCle`, `typeEmploye`, `indPriorite`, `formationVetement`, `formationChaussure`, `formationCaissier`, `respHoraireConflit`, `notifHoraire`, `notifRemplacement`, `lastIp`, `lastLogon`) VALUES
  ('Larsen', 'Fuller', '1f52d30ee3e518a70df77cca06ebb1749c17ce02', 'ut@idnuncinterdum.edu', '740', 'Id Rd.', 'Castelbianco', 'C8T 2K5', 0, 'Employe', 1, 0, 0, 0, 1, 0, 1, '721.525.305.844', '520.114.441.397'),
  ('Kelly', 'Jasper', 'cec6273cc8b54eae748098fdb4652ae8feb21f48', 'dolor@nullaDonec.org', '127', ' Tempus Avenue', 'Gent', 'R9S 7X7', 0, 'Gestionnaire', 14, 0, 1, 1, 1, 0, 1, '060.360.293.212', '447.114.661.659'),
  ('Hobbs', 'Walter', 'BBA30KQG6AR', 'tempor.augue@loremeumetus.co.uk', '503', 'Leo. Ave', 'Peterhead', 'P9R 6X4', 0, 'Gestionnaire', 19, 1, 1, 0, 0, 0, 1, '739.499.421.251', '309.332.325.298'),
  ('Wilkins', 'Reuben', sha1(concat(sha1('marc'), 'mollis@ornare.ca')), 'mollis@ornare.ca', '369', 'In Avenue', 'Saltcoats', 'E9H 5A3', 0, 'Gestionnaire', 10, 0, 1, 0, 1, 0, 0, '009.199.147.283', '349.650.854.625'),
  ('Meadows', 'Vernon', 'MPX50RVW9DH', 'velit.eu.sem@urnaUttincidunt.ca', '418', 'Elementum, Chemin', 'Price', 'M7N 9L9', 0, 'Employe', 8, 0, 1, 0, 0, 0, 1, '466.547.216.098', '749.574.735.928'),
  ('Morrison', 'Benedict', 'MDV72NUE3OQ', 'et@posuerecubilia.net', '785', 'Quam Av.', 'Rance', 'R0H 1B1', 0, 'Gestionnaire', 28, 0, 1, 1, 0, 0, 1, '973.279.066.201', '749.965.451.070'),
  ('Shields', 'Garrett', 'KPI42ARF1KR', 'Mauris@vestibulum.co.uk', '887', 'Ultrices. Impasse', 'Coassolo Torinese', 'S6P 6B3', 0, 'Employe', 20, 1, 0, 0, 0, 1, 0, '733.805.959.239', '453.255.763.097'),
  ('Zimmerman', 'Henry', 'GCZ25XLY8XL', 'libero@Vivamus.co.uk', '677', 'Non Impasse', 'Longchamps', 'S3L 4N4', 0, 'Gestionnaire', 23, 1, 1, 1, 0, 1, 0, '905.764.462.955', '568.878.374.532'),
  ('Hill', 'Amos', 'EBM56SMG2AX', 'ac@justonec.com', '387', 'Quisque Avenue', 'Henis', 'B0B 5E8', 0, 'Gestionnaire', 9, 1, 1, 0, 1, 1, 0, '741.997.918.159', '209.942.023.975'),
  ('Brady', 'Edward', 'VBB71WWS8BT', 'id.erat.Etiam@lobortis.edu', '522', 'Maecenas Rue', 'Episcopia', 'G5V 8A4', 0, 'Gestionnaire', 27, 0, 1, 1, 0, 1, 0, '701.220.636.840', '766.888.212.533'),
  ('Schroeder', 'Chester', 'TBG33YEU0YK', 'lorem.tristique.aliquet@sed.co.uk', '451', 'Lorem Rd.', 'TorrejÃ³n de Ardoz', 'P3M 4H3', 0, 'Employe', 9, 1, 0, 0, 1, 1, 1, '892.828.246.473', '068.913.343.485'),
  ('Henry', 'Igor', 'FQI50XZU2CM', 'libero@atnisiCum.org', '150', ' Amet Avenue', 'Hennigsdorf', 'N4R 4H5', 0, 'Employe', 2, 0, 0, 1, 0, 1, 1, '944.961.876.095', '422.389.027.231'),
  ('Washington', 'Orlando', 'NOX33NMH1XN', 'primis@sitamet.com', '638', 'Accumsan Ave', 'Markkleeberg', 'H7X 5M0', 0, 'Employe', 10, 1, 0, 0, 1, 0, 1, '177.911.019.327', '267.530.419.318'),
  ('Gates', 'Coby', 'YNJ96IJY1QP', 'euismod.mauris.eu@velit.net', '163', 'Sem Rue', 'Pï¿½ttlingen', 'T8X 2G7', 0, 'Employe', 4, 1, 0, 0, 1, 0, 0, '848.340.172.070', '898.677.460.913'),
  ('Ramos', 'Arsenio', 'CED29KGR4CP', 'tristique@iderat.com', '47', ' Vestibulum Route', 'Meerle', 'V5N 6E3', 0, 'Employe', 3, 0, 1, 0, 1, 1, 1, '880.904.354.211', '351.521.794.340'),
  ('House', 'Cole', 'GNR60DWH2GW', 'ipsum.dolor@mattis.ca', '45', 'Elit. Avenue', 'Rothesay', 'B9N 0N9', 0, 'Gestionnaire', 4, 1, 0, 1, 0, 1, 1, '410.096.855.943', '302.321.325.430'),
  ('Cline', 'Kennan', 'ZCG86WTC2CE', 'molestie.tortor@ornareplacerat.co.uk', '737', 'Luctus Chemin', 'Pictou', 'R7L 1E7', 0, 'Employe', 1, 0, 1, 1, 1, 0, 0, '301.345.250.487', '058.317.806.768'),
  ('Cole', 'Elliott', 'DQW41XWA6XO', 'Proin.nisl@anteipsumprimis.edu', '728', 'Gravida. Impasse', 'Somma Lombardo', 'A9M 5A4', 0, 'Employe', 8, 1, 1, 0, 1, 0, 0, '905.012.198.871', '070.497.807.900'),
  ('Maynard', 'Kirk', 'NRV66RML8NG', 'sit.amet.consectetuer@non.co.uk', '215', 'Nulla Avenue', 'Haut-Ittre', 'S2P 4W5', 0, 'Employe', 3, 1, 1, 0, 1, 1, 1, '918.727.280.596', '604.494.676.199'),
  ('Noble', 'Leonard', 'JZI68KDU0WV', 'eros.nec@Curabiturconsequatlectus.co.uk', '535', 'Hendrerit. Rue', 'GÃ¶tzis', 'L3X 2Y6', 0, 'Employe', 26, 0, 0, 0, 1, 1, 1, '749.061.701.439', '684.836.492.679'),
  ('Moran', 'Thaddeus', 'QIB33EWS1OQ', 'quis.tristique@acipsumPhasellus.co.uk', '900', 'Quis Ave', 'Tontelange', 'V1C 0T3', 0, 'Gestionnaire', 15, 0, 1, 1, 0, 0, 1, '216.140.262.440', '368.365.718.549'),
  ('Cash', 'Ethan', 'NQK73RHU6PK', 'Vestibulum.accumsan@Cras.ca', '178', 'Erat Chemin', 'Assiniboia', 'S7N 4Z8', 0, 'Gestionnaire', 7, 0, 1, 0, 1, 1, 0, '307.525.472.973', '074.147.026.979'),
  ('Lowe', 'Murphy', 'LVH85OUJ9UD', 'dapibus.gravida@malesuadafames.edu', '810', 'Cum Impasse', 'Vance', 'Y7C 2L2', 0, 'Employe', 23, 0, 0, 0, 0, 0, 1, '158.255.045.617', '664.629.370.675'),
  ('Rios', 'Drake', 'OJW58LFX2VP', 'ornare.sagittis.felis@sitametultricies.co.uk', '631', 'Lobortis, Ave', 'Latisana', 'H5K 0R9', 0, 'Employe', 21, 0, 0, 1, 0, 1, 0, '597.761.454.333', '861.174.042.291'),
  ('Austin', 'Garrison', 'SRN12AMQ3JG', 'molestie.tortor@acfermentumvel.ca', '398', 'Duis Avenue', 'Santa Fiora', 'P6C 2K5', 1, 'Gestionnaire', 11, 1, 1, 1, 0, 1, 1, '420.907.439.394', '799.167.500.388'),
  ('Leon', 'Harrison', 'NPD08CKU5ET', 'quam.vel@tempusrisus.co.uk', '400', 'Montes, Route', 'Bulzi', 'C1X 5B7', 1, 'Gestionnaire', 5, 1, 1, 0, 0, 0, 1, '851.471.020.196', '896.780.087.583'),
  ('Benton', 'Chaim', 'EUJ20KKA0GZ', 'mauris.aliquam.eu@Donecluctusaliquet.edu', '674', ' Rutrum Ave', 'Dongelberg', 'K1W 1T5', 1, 'Gestionnaire', 20, 0, 0, 1, 1, 1, 1, '748.942.485.158', '420.617.251.743'),
  ('Mclaughlin', 'Kareem', 'LCT99IAO2NV', 'ullamcorper@egetmetuseu.org', '554', 'Nec, Rue', 'Grand-Reng', 'H4Y 9S5', 0, 'Gestionnaire', 9, 1, 0, 0, 1, 1, 0, '639.395.171.382', '415.551.208.808'),
  ('Glover', 'Lucius', 'YGE00ILV6YZ', 'Fusce@adlitora.net', '514', 'Non Ave', 'Palmerston North', 'T2B 7G8', 0, 'Employe', 3, 0, 1, 0, 0, 1, 1, '776.474.519.345', '126.271.482.578'),
  ('Langley', 'Stuart', 'HGH93HFV8JC', 'sit.amet@etmagnisdis.edu', '734', 'Sollicitudin Ave', 'Baden-Baden', 'X5S 8K8', 0, 'Gestionnaire', 24, 0, 1, 1, 0, 1, 1, '169.214.598.713', '386.667.802.883'),
  ('Langley', 'Erich', 'ASV56RIU9RQ', 'ridiculus.mus@Morbi.com', '259', ' Magnis Rue', 'Plancenoit', 'L9L 4B7', 0, 'Gestionnaire', 11, 1, 0, 1, 0, 1, 0, '281.928.304.755', '839.235.233.213'),
  ('Duke', 'Cooper', 'SOD06NWD0SL', 'et@aliquetmetusurna.edu', '144', 'Mi, Rd.', 'Terni', 'Y2R 7H7', 0, 'Gestionnaire', 15, 1, 0, 1, 0, 1, 0, '180.206.814.596', '265.556.780.376'),
  ('Macdonald', 'Dillon', 'AQY87JKT9PL', 'non.enim@eleifendnecmalesuada.co.uk', '856', ' Semper Chemin', 'San Fele', 'M8N 6B7', 0, 'Gestionnaire', 27, 1, 1, 0, 0, 0, 0, '268.993.065.092', '638.473.345.117'),
  ('Forbes', 'Travis', 'SFG78UUS0LC', 'felis.eget.varius@InfaucibusMorbi.com', '363', 'Elit, Chemin', 'Vancouver', 'B4J 6X2', 0, 'Employe', 21, 1, 1, 0, 0, 1, 0, '926.157.075.034', '972.034.021.534'),
  ('Schneider', 'Joel', 'KKH51VON3MH', 'blandit.mattis@tellusimperdiet.ca', '956', 'Orci. Route', 'Selkirk', 'A5V 1G9', 1, 'Gestionnaire', 27, 0, 1, 1, 0, 0, 1, '181.698.879.394', '566.607.750.520'),
  ('', '', '4e6cd23841dc0bff317b403903b4a0b47ff5ad1a', 'marc', NULL, NULL, NULL, NULL, 0, "Gestionnaire", NULL, 0, 0, 0, 0, 1, 0, NULL, NULL);
  -- --------------------------------------------------------

  --
  -- Structure de la table `fichier`
  --

  CREATE TABLE IF NOT EXISTS `fichier` (
    `noFichier` int(11) NOT NULL AUTO_INCREMENT,
    `nomFichier` varchar(100) NOT NULL,
    `description` varchar(1000) NOT NULL,
    `idDossier` int(11) NOT NULL,
    `courriel` varchar(60) NOT NULL,
    PRIMARY KEY (`noFichier`),
    KEY `fk_Fichier_Document1_idx` (`idDossier`),
    KEY `fk_Fichier_Employe1_idx` (`courriel`)
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

  --
  -- Contenu de la table `fichier`
  --

  -- ----------------A FAIRE

  -- --------------------------------------------------------

  --
  -- Structure de la table `fichierlu`
  --

  CREATE TABLE IF NOT EXISTS `fichierlu` (
    `idConnexion` int(11) NOT NULL AUTO_INCREMENT,
    `date` date NOT NULL,
    `courriel` varchar(60) NOT NULL,
    `noFichier` int(11) NOT NULL,
    PRIMARY KEY (`idConnexion`,`courriel`,`noFichier`),
    KEY `fk_FichierLu_Employe1_idx` (`courriel`),
    KEY `fk_FichierLu_Fichier1_idx` (`noFichier`)
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

  --
  -- Contenu de la table `fichierlu`
  --

  -- --------------À faire

  -- --------------------------------------------------------

  --
  -- Structure de la table `message`
  --

  CREATE TABLE IF NOT EXISTS `message` (
    `idMessage` int(11) NOT NULL AUTO_INCREMENT,
    `titre` varchar(70) NOT NULL,
    `message` varchar(1000) NOT NULL,
    `courriel` varchar(60) NOT NULL,
    `date` date NOT NULL,
    PRIMARY KEY (`idMessage`),
    KEY `fk_Article_Employe1_idx` (`courriel`)
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

  --
  -- Contenu de la table `message`
  --

  -- ---------À faire

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
    `courriel` varchar(60) NOT NULL,
    PRIMARY KEY (`idQuartTravail`),
    KEY `fk_PlageDeTravail_Employe1_idx` (`courriel`)
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

  --
  -- Contenu de la table `plagedetravail`
  --

  INSERT INTO `plagedetravail` (`idQuartTravail`, `typeTravail`, `heureDebut`, `heureFin`, `remplacement`, `courriel`) VALUES
  (1, 'Chaussure', '2013-11-25 09:30:00', '2013-11-28 16:00:00', 0, 'marc'),
  (2, 'Vetement', '2013-11-28 13:00:00', '2013-11-28 18:00:00', 0, 'marc'),
  (3, 'Caissier', '2013-11-28 10:00:00', '2013-11-28 16:00:00', 0, 'marc'),
  (4, 'Chaussure', '2013-11-28 08:00:00', '2013-11-28 15:00:00', 0, 'marc');

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
    `noTelephone` varchar(12) NOT NULL,
    `description` varchar(100) DEFAULT NULL,
    `courriel` varchar(60) NOT NULL,
    PRIMARY KEY (`noTelephone`),
    KEY `fk_Telephone_Employe1_idx` (`courriel`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  --
  -- Contenu de la table `telephone`
  --

  INSERT INTO `telephone` (`noTelephone`, `description`, `courriel`) VALUES
  ('004-844-4278', 'Cellulaire','marc'),
  ('006-181-6338', 'Cellulaire', 'marc'),
  ('051-555-4823', 'Maison','marc'),
  ('077-769-4311', 'Cellulaire', 'marc'),
  ('082-831-2444', 'Maison','marc'),
  ('093-411-8435', 'Cellulaire', 'marc'),
  ('105-166-3326', 'Maison', 'marc'),
  ('114-872-5680', 'Cellulaire', 'marc'),
  ('122-360-5870', 'Maison','marc'),
  ('122-525-1562', 'Cellulaire', 'marc'),
  ('124-702-9445', 'Cellulaire', 'marc'),
  ('126-146-7522', 'Cellulaire', 'marc'),
  ('154-802-9877', 'Cellulaire','marc'),
  ('165-833-5997', 'Cellulaire', 'marc'),
  ('169-439-6730', 'Cellulaire', 'marc'),
  ('175-026-2139', 'Cellulaire', 'marc'),
  ('175-987-3099', 'Cellulaire', 'marc');

  --
  -- Contraintes pour les tables exportées
  --

  --
  -- Contraintes pour la table `ancienhoraire`
  --
  ALTER TABLE `ancienhoraire`
    ADD CONSTRAINT `fk_AncienHoraire_Employe1` FOREIGN KEY (`courriel`) REFERENCES `employe` (`courriel`) ON DELETE CASCADE ON UPDATE NO ACTION;

  --
  -- Contraintes pour la table `destinataire`
  --
  ALTER TABLE `destinataire`
    ADD CONSTRAINT `fk_ArticleLu_Article1` FOREIGN KEY (`idMessage`) REFERENCES `message` (`idMessage`) ON DELETE CASCADE ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_Destinataire_Employe1` FOREIGN KEY (`courriel`) REFERENCES `employe` (`courriel`) ON DELETE CASCADE ON UPDATE NO ACTION;

  --
  -- Contraintes pour la table `disponibilitejours`
  --
  ALTER TABLE `disponibilitejours`
    ADD CONSTRAINT `fk_DisponibiliteJours_DisponibiliteSemaine` FOREIGN KEY (`idDispoSemaine`) REFERENCES `disponibilitesemaine` (`idDispoSemaine`) ON DELETE CASCADE ON UPDATE NO ACTION;

  --
  -- Contraintes pour la table `disponibilitesemaine`
  --
  ALTER TABLE `disponibilitesemaine`
    ADD CONSTRAINT `fk_DisponibiliteSemaine_Employe1` FOREIGN KEY (`courriel`) REFERENCES `employe` (`courriel`) ON DELETE CASCADE ON UPDATE NO ACTION;

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
    ADD CONSTRAINT `fk_Fichier_Employe1` FOREIGN KEY (`courriel`) REFERENCES `employe` (`courriel`) ON DELETE CASCADE ON UPDATE NO ACTION;

  --
  -- Contraintes pour la table `fichierlu`
  --
  ALTER TABLE `fichierlu`
    ADD CONSTRAINT `fk_FichierLu_Employe1` FOREIGN KEY (`courriel`) REFERENCES `employe` (`courriel`) ON DELETE CASCADE ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_FichierLu_Fichier1` FOREIGN KEY (`noFichier`) REFERENCES `fichier` (`noFichier`) ON DELETE CASCADE ON UPDATE NO ACTION;

  --
  -- Contraintes pour la table `message`
  --
  ALTER TABLE `message`
    ADD CONSTRAINT `fk_Article_Employe1` FOREIGN KEY (`courriel`) REFERENCES `employe` (`courriel`) ON DELETE CASCADE ON UPDATE NO ACTION;

  --
  -- Contraintes pour la table `plagedetravail`
  --
  ALTER TABLE `plagedetravail`
    ADD CONSTRAINT `fk_PlageDeTravail_Employe1` FOREIGN KEY (`courriel`) REFERENCES `employe` (`courriel`) ON DELETE CASCADE ON UPDATE NO ACTION;

  --
  -- Contraintes pour la table `telephone`
  --
  ALTER TABLE `telephone`
    ADD CONSTRAINT `fk_Telephone_Employe1` FOREIGN KEY (`courriel`) REFERENCES `employe` (`courriel`) ON DELETE CASCADE ON UPDATE NO ACTION;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



  --PROCÉDURE
  DELIMITER $$
  USE coureur_nordique $$

  DROP PROCEDURE IF EXISTS Connexion $$
  CREATE PROCEDURE Connexion (in p_courriel varchar(60), 
                              in p_mdp varchar(60),
                              in p_lastIp varchar(20),
                              in p_lastLogon date)
  BEGIN
      if exists (SELECT courriel, typeEmploye FROM employe WHERE courriel = p_courriel AND motDePasse = SHA1(concat(SHA1(p_mdp), p_courriel))) then
        UPDATE employe
          set lastIp = p_lastIp,
          lastLogon = p_lastLogon
          where courriel = p_courriel;
        
        SELECT courriel, typeEmploye 
          FROM employe 
          WHERE courriel = p_courriel 
          AND motDePasse = SHA1(concat(SHA1(p_mdp), p_courriel));
      end if;
  END
  $$

  DROP PROCEDURE IF EXISTS AjouterUtilisateur $$
  CREATE PROCEDURE AjouterUtilisateur(in p_courriel varchar(60),
                                      in p_typeEmploye varchar(45),
                                      in p_formationVetement tinyint(1),
                                      in p_formationChaussure tinyint(1),
                                      in p_formationCaissier  tinyint(1),
                                      in p_possesseurCle  tinyint(1),
                                      in p_respHoraireConflit tinyint(1))
  BEGIN
    if not exists (SELECT * from employe where courriel = p_courriel) then
      INSERT INTO employe (courriel, motDePasse, typeEmploye, formationVetement, formationCaissier, possesseurCle, respHoraireConflit) 
        VALUES (p_courriel, sha1(concat(sha1(p_courriel), p_courriel)), p_typeEmploye, p_formationVetement, p_formationChaussure, p_possesseurCle, p_respHoraireConflit);
      SELECT * FROM employe where courriel = p_courriel;
    end if;
  END

  $$

  DROP PROCEDURE IF EXISTS AjoutTelephone $$
  CREATE PROCEDURE AjoutTelephone (in p_noTelephone varchar(12),
                                    in p_description varchar(100),
                                    in p_courriel varchar(60))
  BEGIN
    if exists(Select * from employe where noEmploye = p_noEmploye) then
      INSERT INTO telephone (noTelephone, description, noEmploye)
        VALUES (p_noTelephone, p_description, p_noEmploye);
      SELECT * FROM telephone WHERE courriel = p_courriel;
    end if;
  END

  $$

  DROP PROCEDURE IF EXISTS AfficheTelephone $$
  CREATE PROCEDURE AfficheTelephone (in p_courriel varchar(60))
  BEGIN
    if exists(Select * from employe where noEmploye = p_noEmploye) then
      SELECT * FROM telephone WHERE courriel = p_courriel;
    end if;
  END

  $$

  DROP PROCEDURE IF EXISTS Utilisateur $$
  CREATE PROCEDURE Utilisateur (in p_courriel varchar(60))
      SELECT nom, prenom, courriel, numeroCivique, rue, ville, codePostal, possesseurCle, typeEmploye, indPriorite, formationVetement, formationChaussure, formationCaissier, respHoraireConflit, notifHoraire, notifRemplacement
      FROM employe 
      where courriel = p_courriel;
  $$

  DROP PROCEDURE IF EXISTS Utilisateurs $$
  CREATE PROCEDURE Utilisateurs ()
      SELECT nom, prenom, courriel, numeroCivique, rue, ville, codePostal, possesseurCle, typeEmploye, indPriorite, formationVetement, formationChaussure, formationCaissier, respHoraireConflit, notifHoraire, notifRemplacement
      FROM employe;
  $$

  DROP PROCEDURE IF EXISTS SupprimerUtilisateur $$
  CREATE PROCEDURE SupprimerUtilisateur (in p_courriel varchar(60))
  BEGIN
    if exists(Select * from employe where courriel = p_courriel) then
      Select * from employe where courriel = p_courriel;

      DELETE FROM employe
      WHERE courriel = p_courriel;
    end if;
  END

  $$

  DROP PROCEDURE IF EXISTS ModifierUtilisateurAdmin $$
  CREATE PROCEDURE ModifierUtilisateurAdmin (p_courriel varchar(60), p_nom varchar(30), 
                                        p_prenom varchar(30), p_motDePasse varchar(40),
                                        p_numeroCivique varchar(10), 
                                        p_rue varchar(50), p_ville varchar(45), 
                                        p_codePostal varchar(7), p_possesseurCle tinyint(1), 
                                        p_typeEmploye varchar(45),
                                        p_formationVetement tinyint(1), p_formationChaussure tinyint(1), 
                                        p_formationCaissier tinyint(1), p_respHoraireConflit tinyint(1))
  BEGIN
    if exists(Select * from employe where courriel = p_courriel) then
      if p_motDePasse != "" then
        UPDATE employe
        SET nom = p_nom,
            prenom = p_prenom,
            motDePasse = sha1(concat(sha1(p_motDePasse), p_courriel)),
            courriel = p_courriel,
            numeroCivique = p_numeroCivique,
            rue = p_rue,
            ville = p_ville,
            codePostal = p_codePostal,
            possesseurCle = p_possesseurCle,
            typeEmploye = p_typeEmploye,
            formationVetement = p_formationVetement,
            formationChaussure = p_formationChaussure,
            formationCaissier = p_formationCaissier,
            respHoraireConflit = p_respHoraireConflit
        WHERE courriel = p_courriel;
      else
        UPDATE employe
        SET nom = p_nom,
            prenom = p_prenom,
            courriel = p_courriel,
            numeroCivique = p_numeroCivique,
            rue = p_rue,
            ville = p_ville,
            codePostal = p_codePostal,
            possesseurCle = p_possesseurCle,
            typeEmploye = p_typeEmploye,
            formationVetement = p_formationVetement,
            formationChaussure = p_formationChaussure,
            formationCaissier = p_formationCaissier,
            respHoraireConflit = p_respHoraireConflit
        WHERE courriel = p_courriel;
      end if;

      Select * from employe where courriel = p_courriel;
    end if;
  END

  $$

  DROP PROCEDURE IF EXISTS ModifierUtilisateur $$
  CREATE PROCEDURE ModifierUtilisateur (p_courriel varchar(60), p_nom varchar(30), 
                                        p_prenom varchar(30), p_motDePasse varchar(40),
                                        p_numeroCivique varchar(10), 
                                        p_rue varchar(50), p_ville varchar(45), 
                                        p_codePostal varchar(7),
                                        p_notifHoraire tinyint(1), p_notifRemplacement tinyint(1))
  BEGIN
    if exists(Select * from employe where courriel = p_courriel) then
      if p_motDePasse != "" then
        UPDATE employe
        SET nom = p_nom,
            prenom = p_prenom,
            motDePasse = sha1(concat(sha1(p_motDePasse), p_courriel)),
            courriel = p_courriel,
            numeroCivique = p_numeroCivique,
            rue = p_rue,
            ville = p_ville,
            codePostal = p_codePostal,
            notifHoraire = p_notifHoraire,
            notifRemplacement = p_notifRemplacement
        WHERE courriel = p_courriel;

        Select * from employe where courriel = p_courriel;
      else
        UPDATE employe
        SET nom = p_nom,
            prenom = p_prenom,
            courriel = p_courriel,
            numeroCivique = p_numeroCivique,
            rue = p_rue,
            ville = p_ville,
            codePostal = p_codePostal,
            notifHoraire = p_notifHoraire,
            notifRemplacement = p_notifRemplacement
        WHERE courriel = p_courriel;

        Select * from employe where courriel = p_courriel;
      end if;
    end if;
  END

  $$

  DROP PROCEDURE IF EXISTS dispoChoisie $$
  CREATE PROCEDURE dispoChoisie(in courriel varchar(60), 

                                in noSemaine int(11), 
                                in annee int(11))
  SELECT heureDebut, heureFin, jour
  FROM disponibilitejours

  WHERE disponibilitejours.idDispoSemaine = (	SELECT idDispoSemaine FROM disponibilitesemaine
  											WHERE disponibilitesemaine.courriel = courriel

  											AND disponibilitesemaine.noDispoSemaine = noSemaine
  											AND disponibilitesemaine.annee = annee);

	$$
	
	DROP PROCEDURE IF EXISTS ajoutModifDisposSemaine $$
	CREATE PROCEDURE ajoutModifDisposSemaine(
										p_noDispoSemaine int(11), 
										p_annee int(11), 
										p_nbHeureSouhaite int(11), 
										p_courriel varchar(60))
	BEGIN
		if exists (SELECT * FROM disponibilitesemaine WHERE noDispoSemaine = p_noDispoSemaine AND courriel = p_courriel) then
			-- Mise à jour d'une disponibilité existante
			UPDATE disponibilitesemaine
			SET annee = p_annee,
				nbHeureSouhaite = p_nbHeureSouhaite
			WHERE courriel = p_courriel;
			-- Supprime les blocs d'horaire déjà réservés
			DELETE FROM disponibilitejours WHERE idDispoSemaine = 
				(SELECT idDispoSemaine FROM disponibilitesemaine WHERE noDispoSemaine = p_noDispoSemaine AND annee = p_annee AND courriel = p_courriel);
			SELECT * FROM disponibilitesemaine WHERE noDispoSemaine = p_noDispoSemaine AND annee = p_annee AND courriel = p_courriel;
		else
			INSERT INTO disponibilitesemaine (noDispoSemaine, annee, nbHeureSouhaite, courriel)
			VALUES (p_noDispoSemaine, p_annee, p_nbHeureSouhaite, p_courriel);
			SELECT * FROM disponibilitesemaine WHERE idDispoSemaine = LAST_INSERT_ID();
		end if;
		
	END
	
	$$
	
	DROP PROCEDURE IF EXISTS ajoutDisposSemainesCopie $$
	CREATE PROCEDURE ajoutDisposSemainesCopie(
										p_refIdSemaineACopier int(11),
										p_noDispoSemaine int(11),
										p_annee int(11))
	BEGIN
		if exists(	SELECT * FROM disponibilitesemaine 
					WHERE noDispoSemaine = p_noDispoSemaine 
					AND courriel = (SELECT courriel FROM disponibilitesemaine 
									WHERE idDispoSemaine = p_refIdSemaineACopier)) then
			-- Met à jour une semaine existante pour qu'elle référence une autre semaine
			UPDATE disponibilitesemaine
			SET annee = p_annee,
				nbHeureSouhaite = (SELECT nbHeureSouhaite FROM disponibilitesemaine WHERE idDispoSemaine = p_refIdSemaineACopier),
				refIdSemaineACopier = p_refIdSemaineACopier
			WHERE noDispoSemaine = p_noDispoSemaine
			AND courriel = (SELECT courriel FROM disponibilitesemaine 
							WHERE idDispoSemaine = p_refIdSemaineACopier)
			AND annee = p_annee;
			
			-- Supprime les blocs horaire de la semaine existante
			DELETE FROM disponibilitejours 
			WHERE idDispoSemaine = (SELECT idDispoSemaine FROM disponibilitesemaine 
									WHERE noDispoSemaine = p_noDispoSemaine 
									AND courriel = (SELECT courriel FROM disponibilitesemaine 
													WHERE idDispoSemaine = p_refIdSemaineACopier)
									AND annee = p_annee);
			-- Retourne la semaine modifiée										
			SELECT * FROM disponibilitesemaine 
			WHERE noDispoSemaine = p_noDispoSemaine 
			AND courriel = (SELECT courriel FROM disponibilitesemaine 
							WHERE idDispoSemaine = p_refIdSemaineACopier)
			AND annee = p_annee;
		else
			INSERT INTO disponibilitesemaine(noDispoSemaine, annee, nbHeureSouhaite, refIdSemaineACopier, courriel)
			VALUES (p_noDispoSemaine, 
					p_annee, 
					(SELECT nbHeureSouhaite FROM disponibilitesemaine WHERE idDispoSemaine = p_refIdSemaineACopier), 
					p_refIdSemaineACopier, 
					(SELECT courriel FROM disponibilitesemaine WHERE idDispoSemaine = p_refIdSemaineACopier));
			SELECT * FROM disponibilitesemaine WHERE idDispoSemaine = LAST_INSERT_ID();
		end if;
	END
	$$
	
	DROP PROCEDURE IF EXISTS ajoutDispoBloc $$
	CREATE PROCEDURE ajoutDispoBloc(
									p_jour varchar(10),
									p_heureDebut time,
									p_heureFin time,
									p_idDispoSemaine int(11))
	BEGIN
		INSERT INTO disponibilitejours (jour, heureDebut, heureFin, idDispoSemaine)
		VALUES (p_jour, p_heureDebut, p_heureFin, p_idDispoSemaine);
		SELECT * FROM disponibilitejours WHERE idDispoJours = LAST_INSERT_ID();
	END

$$

	DROP PROCEDURE IF EXISTS reinitMdp $$
	CREATE PROCEDURE reinitMdp(in p_courriel varchar(60),
                            in p_str varchar(40),
                            in p_mdp varchar(40))
	BEGIN
		Select * from employe where courriel = p_courriel and lienReinit = p_str;
  
		UPDATE employe set
			motDePasse = sha1(concat(sha1(p_mdp), courriel)),
			lienReinit = null
			where courriel = p_courriel
			and lienReinit = p_str;
	END

$$

	DROP PROCEDURE IF EXISTS demandeReinitMdp $$
	CREATE PROCEDURE demandeReinitMdp(in p_courriel varchar(60), 
                                  in p_random varchar(40))
	BEGIN
		Select * from employe where courriel = p_courriel;
		UPDATE employe set
		lienReinit = p_random
		where courriel = p_courriel;
	END
