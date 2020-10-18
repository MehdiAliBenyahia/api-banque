-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  Dim 18 oct. 2020 à 20:23
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `banque`
--

-- --------------------------------------------------------

--
-- Structure de la table `cb`
--

DROP TABLE IF EXISTS `cb`;
CREATE TABLE IF NOT EXISTS `cb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(16) NOT NULL,
  `expiration` date NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `code` varchar(4) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `compte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fond` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `actif` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `user_id`, `fond`, `type`, `actif`) VALUES
(1, 1, '12', 'courant', 1);

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `montant` varchar(64) NOT NULL,
  `valide` tinyint(1) NOT NULL,
  `moyen_paiement` varchar(64) NOT NULL,
  `compte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `secret_api_key` varchar(32) NOT NULL,
  `role` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `mail`, `password`, `secret_api_key`, `role`) VALUES
(1, 'ali', 'mehdi', 'ali.mehdi@gmail.com', 'hgfgbgf', '', 'null'),
(2, 'alivh', 'mehdi', 'ali.mehdi@gmail.com', 'hgfgbgf', '', 'null'),
(7, 'eeerth\'hr', 'eee', 'eee', 'eee', '', 'null'),
(4, 'lucas4', 'beriot', 'lucas.beriot@gmail.com', 'hgfgbgf', '', 'null'),
(6, 'eee', 'eee', 'eee', 'eee', '', 'null');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
